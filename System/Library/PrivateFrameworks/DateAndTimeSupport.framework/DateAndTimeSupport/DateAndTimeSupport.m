id DTResolveCity(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [MEMORY[0x277CBEBB0] timeZoneWithName:v1];
    if (v2)
    {
      v3 = [MEMORY[0x277CEC588] sharedManager];
      v4 = [v3 citiesWithTimeZone:v2];
    }

    else
    {
      v6 = [v1 rangeOfString:{@", "}];
      v7 = [MEMORY[0x277CEC588] sharedManager];
      v3 = v7;
      if (v6 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v5 = [v7 cityForClassicIdentifier:v1];

        v8 = 0;
LABEL_16:

        goto LABEL_17;
      }

      v4 = [v7 citiesMatchingName:v1 localized:0];
    }

    v8 = v4;

    if (v8 && [v8 count])
    {
      v5 = [v8 objectAtIndex:0];
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [MEMORY[0x277CEC588] sharedManager];
    v5 = [v2 bestCityForLegacyCity:v1];
LABEL_17:

    goto LABEL_18;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [objc_alloc(MEMORY[0x277CEC580]) initWithProperties:v1];
  }

  else
  {
    v5 = 0;
  }

LABEL_18:

  return v5;
}

void type metadata accessor for Name()
{
  if (!qword_27EEA0D58)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27EEA0D58);
    }
  }
}

id sub_248678B98()
{
  type metadata accessor for FindDateAndTimeSupportClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27EEA0EA8 = result;
  return result;
}

uint64_t sub_248678BF8(uint64_t a1, id *a2)
{
  result = sub_24868789C();
  *a2 = 0;
  return result;
}

uint64_t sub_248678C70(uint64_t a1, id *a2)
{
  v3 = sub_2486878AC();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_248678CF0@<X0>(uint64_t *a1@<X8>)
{
  sub_2486878BC();
  v2 = sub_24868788C();

  *a1 = v2;
  return result;
}

uint64_t sub_248678D34@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_24868788C();

  *a2 = v5;
  return result;
}

uint64_t sub_248678D7C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_2486878BC();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_248678DA8(uint64_t a1)
{
  v2 = sub_248679068(&qword_27EEA0D78);
  v3 = sub_248679068(&qword_27EEA0D80);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_248678EA8()
{
  v1 = *v0;
  v2 = sub_2486878BC();
  v3 = MEMORY[0x24C1D4C30](v2);

  return v3;
}

uint64_t sub_248678EE4()
{
  v1 = *v0;
  sub_2486878BC();
  sub_2486878EC();
}

uint64_t sub_248678F38()
{
  v1 = *v0;
  sub_2486878BC();
  sub_248687B9C();
  sub_2486878EC();
  v2 = sub_248687BAC();

  return v2;
}

uint64_t sub_248678FAC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_2486878BC();
  v6 = v5;
  if (v4 == sub_2486878BC() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_248687B3C();
  }

  return v9 & 1;
}

uint64_t sub_248679068(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Name();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_2486790AC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_2486791EC();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2486790DC(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = sub_2486791EC();
  if (v2 != (result & 1))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState);
    sub_2486877AC();
  }

  return result;
}

id sub_2486791EC()
{
  swift_getKeyPath();
  sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState);
  sub_2486877BC();

  if (sub_2486835F8())
  {
    if (qword_27EEA0D40 != -1)
    {
      swift_once();
    }

    v0 = qword_27EEA0EC8;
    v1 = sub_24868788C();
    LODWORD(v0) = [v0 BOOLForKey_];

    return (v0 ^ 1);
  }

  else
  {
    if (qword_27EEA0D40 != -1)
    {
      swift_once();
    }

    v3 = qword_27EEA0EC8;
    v4 = sub_24868788C();
    v5 = [v3 BOOLForKey_];

    return v5;
  }
}

id sub_248679374@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_2486791EC();
  *a2 = result & 1;
  return result;
}

uint64_t type metadata accessor for DateAndTimeSettingsState()
{
  result = qword_27EEA0DE0;
  if (!qword_27EEA0DE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2486793F4(char a1)
{
  v1 = a1 & 1;
  result = sub_2486791EC();
  if ((result & 1) != v1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState);
    sub_2486877AC();
  }

  return result;
}

void sub_248679500(uint64_t a1, char a2)
{
  v4 = sub_2486835F8() ^ 1 | a2;
  v5 = sub_2486835F8();
  swift_getKeyPath();
  v13 = a1;
  sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState);
  sub_2486877AC();

  if (qword_27EEA0D40 != -1)
  {
    swift_once();
  }

  v6 = v5 | a2 ^ 1;
  v7 = qword_27EEA0EC8;
  if (v4)
  {
    v8 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
  }

  else
  {
    LOBYTE(v13) = 1;
    v8 = MEMORY[0x277D839B0];
  }

  v16 = v8;
  sub_24868737C(&v13);
  sub_248685B58(&v13, &qword_27EEA0E00, &qword_248688810);
  if (v6)
  {
    v9 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
  }

  else
  {
    LOBYTE(v13) = 1;
    v9 = MEMORY[0x277D839B0];
  }

  v16 = v9;
  sub_24868737C(&v13);
  sub_248685B58(&v13, &qword_27EEA0E00, &qword_248688810);
  [v7 synchronize];
  v10 = CFNotificationCenterGetDarwinNotifyCenter();
  v11 = sub_24868788C();
  CFNotificationCenterPostNotification(v10, v11, 0, 0, 1u);

  v12 = sub_24868788C();
  CFNotificationCenterPostNotification(v10, v12, 0, 0, 1u);
}

id (*sub_2486797A0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 8) = v1;
  *(a1 + 16) = sub_2486791EC() & 1;
  return sub_2486797EC;
}

id sub_2486797EC(uint64_t a1, char a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  result = sub_2486791EC();
  if (a2)
  {
    if (((v5 ^ result) & 1) == 0)
    {
      return result;
    }
  }

  else if (((v5 ^ result) & 1) == 0)
  {
    return result;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  *a1 = v4;
  sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState);
  sub_2486877AC();
}

void sub_2486799A4(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState);
  sub_2486877BC();

  if (qword_27EEA0D48 != -1)
  {
    swift_once();
  }

  v4 = qword_27EEA0ED0;
  v5 = sub_24868788C();
  LOBYTE(v4) = [v4 BOOLForKey_];

  *a2 = v4 ^ 1;
}

uint64_t sub_248679AE0()
{
  swift_getKeyPath();
  sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState);
  sub_2486877BC();

  if (qword_27EEA0D48 != -1)
  {
    swift_once();
  }

  v0 = qword_27EEA0ED0;
  v1 = sub_24868788C();
  LODWORD(v0) = [v0 BOOLForKey_];

  return v0 ^ 1;
}

id sub_248679C10(char a1)
{
  if (qword_27EEA0D48 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = qword_27EEA0ED0;
  v5 = MEMORY[0x277D839B0];
  v4[0] = (a1 & 1) == 0;
  sub_24868737C(v4);
  sub_248685B58(v4, &qword_27EEA0E00, &qword_248688810);
  return [v1 synchronize];
}

void (*sub_248679CE0(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 8) = v1;
  swift_getKeyPath();
  *(v4 + 16) = OBJC_IVAR____TtC18DateAndTimeSupport24DateAndTimeSettingsState___observationRegistrar;
  *v4 = v1;
  *(v4 + 24) = sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState);
  sub_2486877BC();

  if (qword_27EEA0D48 != -1)
  {
    swift_once();
  }

  v5 = qword_27EEA0ED0;
  v6 = sub_24868788C();
  LOBYTE(v5) = [v5 BOOLForKey_];

  *(v4 + 32) = v5 ^ 1;
  return sub_248679E48;
}

void sub_248679E48(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  swift_getKeyPath();
  v4 = v1[2];
  v3 = v1[3];
  *v1 = v1[1];
  sub_2486877AC();

  free(v1);
}

void sub_248679F10(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState);
  sub_2486877BC();

  if (qword_27EEA0D48 != -1)
  {
    swift_once();
  }

  v4 = qword_27EEA0ED0;
  v5 = sub_24868788C();
  LOBYTE(v4) = [v4 BOOLForKey_];

  *a2 = v4 ^ 1;
}

uint64_t sub_24867A04C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState);
  sub_2486877AC();
}

uint64_t sub_24867A108()
{
  swift_getKeyPath();
  sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState);
  sub_2486877BC();

  if (qword_27EEA0D48 != -1)
  {
    swift_once();
  }

  v0 = qword_27EEA0ED0;
  v1 = sub_24868788C();
  LODWORD(v0) = [v0 BOOLForKey_];

  return v0 ^ 1;
}

uint64_t sub_24867A238()
{
  swift_getKeyPath();
  sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState);
  sub_2486877AC();
}

id sub_24867A2F0(char a1)
{
  if (qword_27EEA0D48 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = qword_27EEA0ED0;
  v5 = MEMORY[0x277D839B0];
  v4[0] = (a1 & 1) == 0;
  sub_24868737C(v4);
  sub_248685B58(v4, &qword_27EEA0E00, &qword_248688810);
  return [v1 synchronize];
}

void (*sub_24867A3C0(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 8) = v1;
  swift_getKeyPath();
  *(v4 + 16) = OBJC_IVAR____TtC18DateAndTimeSupport24DateAndTimeSettingsState___observationRegistrar;
  *v4 = v1;
  *(v4 + 24) = sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState);
  sub_2486877BC();

  if (qword_27EEA0D48 != -1)
  {
    swift_once();
  }

  v5 = qword_27EEA0ED0;
  v6 = sub_24868788C();
  LOBYTE(v5) = [v5 BOOLForKey_];

  *(v4 + 32) = v5 ^ 1;
  return sub_24867A528;
}

void sub_24867A528(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  swift_getKeyPath();
  v4 = v1[2];
  v3 = v1[3];
  *v1 = v1[1];
  sub_2486877AC();

  free(v1);
}

uint64_t sub_24867A5F0@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState);
  sub_2486877BC();

  result = TMIsAutomaticTimeZoneEnabled();
  *a2 = result != 0;
  return result;
}

uint64_t sub_24867A6A0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState);
  sub_2486877AC();
}

BOOL sub_24867A770()
{
  swift_getKeyPath();
  sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState);
  sub_2486877BC();

  return TMIsAutomaticTimeZoneEnabled() != 0;
}

uint64_t sub_24867A814()
{
  swift_getKeyPath();
  sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState);
  sub_2486877AC();
}

id sub_24867A8E0(uint64_t a1, char a2)
{
  v4 = sub_24868770C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v22 = a1;
  sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState);
  sub_2486877AC();

  TMSetAutomaticTimeZoneEnabled();
  if (a2)
  {
    return TMSetAutomaticTimeEnabled();
  }

  v9 = sub_24867C2BC();
  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = v9;
  v12 = v10;
  v13 = sub_24868788C();
  v14 = DTResolveCity(v13);

  if (!v14)
  {

    goto LABEL_9;
  }

  result = [v14 name];
  if (result)
  {
    v15 = result;
    sub_2486878BC();
    v21[3] = v16;

    result = [v14 timeZone];
    if (result)
    {
      v17 = result;
      v18 = sub_2486878BC();
      v21[1] = v19;
      v21[2] = v18;

      KeyPath = swift_getKeyPath();
      v21[0] = v21;
      MEMORY[0x28223BE20](KeyPath);
      v21[-2] = v11;
      v21[-1] = v12;
      v22 = a1;
      sub_2486877AC();

      sub_2486878DC();
      tzlink();

      [objc_opt_self() resetSystemTimeZone];

LABEL_9:
      sub_2486876FC();
      return sub_24867BF20(v7);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24867ABC0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState);
  sub_2486877BC();

  swift_beginAccess();
  v4 = *(v3 + 32);
  *a2 = *(v3 + 24);
  a2[1] = v4;
}

void (*sub_24867AC9C(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 8) = v1;
  swift_getKeyPath();
  *(v4 + 16) = OBJC_IVAR____TtC18DateAndTimeSupport24DateAndTimeSettingsState___observationRegistrar;
  *v4 = v1;
  *(v4 + 24) = sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState);
  sub_2486877BC();

  *(v4 + 32) = TMIsAutomaticTimeZoneEnabled() != 0;
  return sub_24867AD98;
}

void sub_24867AD98(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 32);
  swift_getKeyPath();
  v5 = v1[2];
  v4 = v1[3];
  *v1 = v1[1];
  sub_2486877AC();

  free(v1);
}

uint64_t sub_24867AE68@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState);
  sub_2486877BC();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_24867AF38()
{
  swift_getKeyPath();
  sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState);
  sub_2486877BC();

  return *(v0 + 16);
}

uint64_t sub_24867AFD8(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState);
    sub_2486877AC();
  }

  return result;
}

uint64_t sub_24867B0E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState);
  sub_2486877BC();

  *a2 = *(v3 + 17);
  return result;
}

uint64_t sub_24867B1B8()
{
  swift_getKeyPath();
  sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState);
  sub_2486877BC();

  return *(v0 + 17);
}

uint64_t sub_24867B258(uint64_t result)
{
  if (*(v1 + 17) == (result & 1))
  {
    *(v1 + 17) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState);
    sub_2486877AC();
  }

  return result;
}

uint64_t sub_24867B368@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState);
  sub_2486877BC();

  *a2 = *(v3 + 18);
  return result;
}

uint64_t sub_24867B438()
{
  swift_getKeyPath();
  sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState);
  sub_2486877BC();

  return *(v0 + 18);
}

uint64_t sub_24867B4D8(uint64_t result)
{
  if (*(v1 + 18) == (result & 1))
  {
    *(v1 + 18) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState);
    sub_2486877AC();
  }

  return result;
}

uint64_t sub_24867B5E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState);
  sub_2486877BC();

  *a2 = *(v3 + 19);
  return result;
}

uint64_t sub_24867B6B8()
{
  swift_getKeyPath();
  sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState);
  sub_2486877BC();

  return *(v0 + 19);
}

uint64_t sub_24867B758(uint64_t result)
{
  if (*(v1 + 19) == (result & 1))
  {
    *(v1 + 19) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState);
    sub_2486877AC();
  }

  return result;
}

id sub_24867B870()
{
  v0 = objc_opt_self();
  result = [v0 locationServicesEnabled];
  if (result)
  {
    v2 = sub_24868788C();
    v3 = [v0 authorizationStatusForBundlePath_];

    return (v3 == 3);
  }

  return result;
}

uint64_t sub_24867B940()
{
  swift_getKeyPath();
  v4 = v0;
  sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState);
  sub_2486877BC();

  swift_beginAccess();
  v2 = *(v0 + 24);
  v1 = *(v4 + 32);

  return v2;
}

uint64_t sub_24867BA04(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24) == a1 && *(v2 + 32) == a2;
  if (v5 || (v6 = *(v2 + 32), (sub_248687B3C() & 1) != 0))
  {
    *(v2 + 24) = a1;
    *(v2 + 32) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState);
    sub_2486877AC();
  }
}

uint64_t sub_24867BB58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a1 + 32);
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
}

void (*sub_24867BBC4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC18DateAndTimeSupport24DateAndTimeSettingsState___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState);
  sub_2486877BC();

  *v4 = v1;
  swift_getKeyPath();
  sub_2486877DC();

  v4[7] = sub_24867B8F0();
  return sub_24867BCFC;
}

uint64_t sub_24867BD08(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState);
  sub_2486877BC();

  return sub_2486876EC();
}

uint64_t sub_24867BDB0(uint64_t a1, uint64_t *a2)
{
  v4 = sub_24868770C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  v9 = *a2;
  return sub_24867BF20(v7);
}

uint64_t sub_24867BE7C()
{
  swift_getKeyPath();
  sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState);
  sub_2486877BC();

  return sub_2486876EC();
}

uint64_t sub_24867BF20(uint64_t a1)
{
  swift_getKeyPath();
  sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState);
  sub_2486877BC();

  if (!TMIsAutomaticTimeZoneEnabled())
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2486877AC();
  }

  v3 = sub_24868770C();
  return (*(*(v3 - 8) + 8))(a1, v3);
}

void (*sub_24867C094(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 8) = v1;
  v6 = sub_24868770C();
  v5[2] = v6;
  v7 = *(v6 - 8);
  v5[3] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v7 + 64));
    v9 = malloc(v8);
  }

  v5[5] = v9;
  swift_getKeyPath();
  *v5 = v1;
  sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState);
  sub_2486877BC();

  sub_2486876EC();
  return sub_24867C208;
}

void sub_24867C208(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[3];
    v7 = v2[1];
    (*(v6 + 16))(*(*a1 + 32), v4, v5);
    sub_24867BF20(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v8 = v2[1];
    sub_24867BF20(*(*a1 + 40));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_24867C2BC()
{
  swift_getKeyPath();
  sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState);
  sub_2486877BC();

  if (qword_27EEA0D50 != -1)
  {
    swift_once();
  }

  v0 = qword_27EEA0ED8;
  v1 = sub_24868788C();
  v2 = [v0 stringForKey_];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_2486878BC();

  return v3;
}

uint64_t sub_24867C3F8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState);
  sub_2486877AC();
}

id sub_24867C4C4(uint64_t a1, uint64_t a2)
{
  if (qword_27EEA0D50 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v3 = qword_27EEA0ED8;
  if (a2)
  {
    v4 = MEMORY[0x277D837D0];
    v5 = a2;
  }

  else
  {
    a1 = 0;
    v5 = 0;
    v4 = 0;
    v8[2] = 0;
  }

  v8[0] = a1;
  v8[1] = v5;
  v9 = v4;

  sub_24868737C(v8);
  sub_248685B58(v8, &qword_27EEA0E00, &qword_248688810);
  v9 = MEMORY[0x277D839B0];
  LOBYTE(v8[0]) = 1;
  sub_24868737C(v8);
  sub_248685B58(v8, &qword_27EEA0E00, &qword_248688810);
  return [v3 synchronize];
}

uint64_t (*sub_24867C608(uint64_t a1))(void *a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_24867C65C;
}

uint64_t sub_24867C65C(void *a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = a1[3];
    swift_getKeyPath();
    *a1 = v5;
    sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState);
    sub_2486877BC();

    v6 = *(v5 + 40);
    v7 = *(v5 + 48);

    sub_2486826AC(v6, v7);
  }

  return result;
}

uint64_t sub_24867C740@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState);
  sub_2486877BC();

  swift_beginAccess();
  v4 = *(v3 + 48);
  *a2 = *(v3 + 40);
  a2[1] = v4;
}

uint64_t keypath_set_42Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  return a5(v7, v6);
}

uint64_t sub_24867C860()
{
  swift_getKeyPath();
  v4 = v0;
  sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState);
  sub_2486877BC();

  swift_beginAccess();
  v2 = *(v0 + 40);
  v1 = *(v4 + 48);

  return v2;
}

uint64_t sub_24867C924(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 40) == a1 && *(v2 + 48) == a2;
  if (v5 || (v6 = *(v2 + 48), (sub_248687B3C() & 1) != 0))
  {
    *(v2 + 40) = a1;
    *(v2 + 48) = a2;

    swift_getKeyPath();
    sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState);
    sub_2486877BC();

    v7 = *(v2 + 40);
    v8 = *(v2 + 48);

    sub_2486826AC(v7, v8);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState);
    sub_2486877AC();
  }
}

uint64_t sub_24867CB0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a1 + 48);
  *(a1 + 40) = a2;
  *(a1 + 48) = a3;

  swift_getKeyPath();
  sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState);
  sub_2486877BC();

  v7 = *(a1 + 40);
  v8 = *(a1 + 48);

  sub_2486826AC(v7, v8);
}

void (*sub_24867CC08(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC18DateAndTimeSupport24DateAndTimeSettingsState___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState);
  sub_2486877BC();

  *v4 = v1;
  swift_getKeyPath();
  sub_2486877DC();

  v4[7] = sub_24867C608(v4);
  return sub_24867CD40;
}

uint64_t (*sub_24867CD4C(uint64_t a1))(void *a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_24867CDA0;
}

uint64_t sub_24867CDA0(void *a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = a1[3];
    swift_getKeyPath();
    *a1 = v5;
    sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState);
    sub_2486877BC();

    if ((*(v5 + 56) & 1) == 0)
    {
      v6 = a1[3];
      sub_24867DA44(MEMORY[0x277D84F90]);
      return sub_24867C924(0, 0xE000000000000000);
    }
  }

  return result;
}

uint64_t sub_24867CE68@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState);
  sub_2486877BC();

  result = swift_beginAccess();
  *a2 = *(v3 + 56);
  return result;
}

uint64_t sub_24867CF4C()
{
  swift_getKeyPath();
  sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState);
  sub_2486877BC();

  swift_beginAccess();
  return *(v0 + 56);
}

uint64_t sub_24867D000(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  swift_beginAccess();
  if (*(v2 + 56) == v3)
  {
    *(v2 + 56) = v3;
    swift_getKeyPath();
    sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState);
    sub_2486877BC();

    if ((*(v2 + 56) & 1) == 0)
    {
      sub_24867DA44(MEMORY[0x277D84F90]);
      return sub_24867C924(0, 0xE000000000000000);
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState);
    sub_2486877AC();
  }

  return result;
}

uint64_t sub_24867D1B8(uint64_t a1, char a2)
{
  swift_beginAccess();
  *(a1 + 56) = a2;
  swift_getKeyPath();
  sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState);
  sub_2486877BC();

  if ((*(a1 + 56) & 1) == 0)
  {
    sub_24867DA44(MEMORY[0x277D84F90]);
    return sub_24867C924(0, 0xE000000000000000);
  }

  return result;
}

void (*sub_24867D29C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC18DateAndTimeSupport24DateAndTimeSettingsState___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState);
  sub_2486877BC();

  *v4 = v1;
  swift_getKeyPath();
  sub_2486877DC();

  v4[7] = sub_24867CD4C(v4);
  return sub_24867D3D4;
}

uint64_t sub_24867D434@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState);
  sub_2486877BC();

  result = swift_beginAccess();
  *a2 = *(v3 + 57);
  return result;
}

uint64_t sub_24867D518()
{
  swift_getKeyPath();
  sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState);
  sub_2486877BC();

  swift_beginAccess();
  return *(v0 + 57);
}

uint64_t sub_24867D5CC(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 57) == v2)
  {
    *(v1 + 57) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState);
    sub_2486877AC();
  }

  return result;
}

void (*sub_24867D6F0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC18DateAndTimeSupport24DateAndTimeSettingsState___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState);
  sub_2486877BC();

  *v4 = v1;
  swift_getKeyPath();
  sub_2486877DC();

  v4[7] = sub_24867D3E0();
  return sub_24867D828;
}

void sub_24867D834(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  v2 = v1[5];
  v3 = v1[6];
  *v1 = v1[4];
  swift_getKeyPath();
  sub_2486877CC();

  free(v1);
}

uint64_t sub_24867D8C8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState);
  sub_2486877BC();

  *a2 = *(v3 + 64);
}

uint64_t sub_24867D974(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_24867DA44(v4);
}

uint64_t sub_24867D9A0()
{
  swift_getKeyPath();
  sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState);
  sub_2486877BC();

  v1 = *(v0 + 64);
}

uint64_t sub_24867DA44(uint64_t a1)
{
  if (sub_2486834D8(*(v1 + 64), a1))
  {
    *(v1 + 64) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState);
    sub_2486877AC();
  }
}

uint64_t DateAndTimeSettingsState.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  DateAndTimeSettingsState.init()();
  return v3;
}

void DateAndTimeSettingsState.init()()
{
  v1 = v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0D98, &unk_248688680);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v140 = &v126 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v145 = (&v126 - v8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v126 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v143 = &v126 - v13;
  MEMORY[0x28223BE20](v12);
  v151 = (&v126 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0DA0, &qword_248688890);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = (&v126 - v18);
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0DA8, &unk_248688690);
  v20 = *(v159 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v159);
  v156 = &v126 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = v23;
  MEMORY[0x28223BE20](v22);
  v158 = &v126 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0DB0, &qword_2486888A0);
  v138 = *(v25 - 8);
  v26 = *(v138 + 64);
  v27 = MEMORY[0x28223BE20](v25);
  v135 = &v126 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = v28;
  MEMORY[0x28223BE20](v27);
  v137 = &v126 - v29;
  *(v1 + 16) = TMIsTimeZoneConfirmed() != 0;
  v30 = [objc_opt_self() sharedConnection];
  if (!v30)
  {
    __break(1u);
    goto LABEL_32;
  }

  v31 = v30;
  v32 = [v30 isAutomaticDateAndTimeEnforced];

  *(v1 + 17) = v32;
  *(v1 + 18) = 0;
  v33 = MobileGestalt_get_current_device();
  if (!v33)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    return;
  }

  v34 = v33;
  v136 = v11;
  v132 = v2;
  gpsCapability = MobileGestalt_get_gpsCapability();

  *(v1 + 20) = gpsCapability;
  v1[5] = 0;
  v1[6] = 0xE000000000000000;
  *(v1 + 28) = 0;
  v36 = MEMORY[0x277D84F90];
  v1[8] = MEMORY[0x277D84F90];
  sub_2486877EC();
  v1[3] = sub_248683DD0();
  v1[4] = v37;
  *v19 = 1;
  (*(v16 + 104))(v19, *MEMORY[0x277D85768], v15);
  v38 = v137;
  v39 = v158;
  sub_2486879CC();
  (*(v16 + 8))(v19, v15);
  v40 = *(v138 + 16);
  v130 = v25;
  v129 = v138 + 16;
  v128 = v40;
  v40(v1 + OBJC_IVAR____TtC18DateAndTimeSupport24DateAndTimeSettingsState_reloadStream, v38, v25);
  v41 = *(v20 + 16);
  v42 = v159;
  v41(v1 + OBJC_IVAR____TtC18DateAndTimeSupport24DateAndTimeSettingsState_reloadStreamContinuation, v39, v159);
  v43 = v156;
  v149 = v41;
  v150 = v20 + 16;
  v41(v156, v39, v42);
  v44 = *(v20 + 80);
  v139 = ~v44;
  v45 = swift_allocObject();
  v131 = v20;
  v46 = *(v20 + 32);
  v148 = v20 + 32;
  v147 = v46;
  v46((v45 + ((v44 + 16) & ~v44)), v43, v42);
  v47 = objc_allocWithZone(MEMORY[0x277D7B970]);
  aBlock[4] = sub_2486847B4;
  aBlock[5] = v45;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_248682A8C;
  aBlock[3] = &block_descriptor;
  v48 = _Block_copy(aBlock);

  v49 = [v47 initWithClient:0 handler:v48];
  _Block_release(v48);
  *(v1 + OBJC_IVAR____TtC18DateAndTimeSupport24DateAndTimeSettingsState_wifiMonitor) = v49;
  *(v1 + 19) = [v49 state] != 1;
  v50 = [objc_allocWithZone(MEMORY[0x277D0ECC0]) initWithCurrentLocale];
  v133 = v1;
  *(v1 + OBJC_IVAR____TtC18DateAndTimeSupport24DateAndTimeSettingsState_regionStore) = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0DD8, &qword_2486886A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_248688430;
  v52 = *MEMORY[0x277CBE620];
  *(inited + 32) = *MEMORY[0x277CBE620];
  v142 = (inited + 32);
  v53 = *MEMORY[0x277D25CA0];
  v126 = inited;
  *(inited + 40) = v53;
  v154 = sub_24868799C();
  v54 = sub_2486879BC();
  v55 = *(v54 - 8);
  v56 = *(v55 + 56);
  v55 += 56;
  v153 = v56;
  v155 = v44;
  v57 = (v44 + 40) & ~v44;
  v146 = (v55 - 8);
  v152 = v55;
  v141 = (v55 - 48);
  v127 = v50;
  v58 = v52;
  v59 = v53;
  v60 = 0;
  v61 = 0;
  v160 = v54;
  do
  {
    v62 = v60;
    v63 = v142[v61];
    v64 = v151;
    v153(v151, 1, 1, v160);
    v65 = v156;
    v66 = v159;
    v149(v156, v158, v159);
    v67 = v63;
    v68 = sub_24868798C();
    v69 = swift_allocObject();
    *(v69 + 2) = v68;
    *(v69 + 3) = MEMORY[0x277D85700];
    *(v69 + 4) = v67;
    v147(&v69[v57], v65, v66);
    v70 = v64;
    v71 = v160;
    v72 = v143;
    sub_248685BB8(v70, v143, &qword_27EEA0D98, &unk_248688680);
    v144 = *v146;
    LODWORD(v68) = v144(v72, 1, v71);

    if (v68 == 1)
    {
      sub_248685B58(v72, &qword_27EEA0D98, &unk_248688680);
    }

    else
    {
      sub_2486879AC();
      (*v141)(v72, v71);
    }

    v73 = *(v69 + 2);
    v74 = *(v69 + 3);
    swift_unknownObjectRetain();

    if (v73)
    {
      swift_getObjectType();
      v75 = sub_24868794C();
      v77 = v76;
      swift_unknownObjectRelease();
    }

    else
    {
      v75 = 0;
      v77 = 0;
    }

    sub_248685B58(v151, &qword_27EEA0D98, &unk_248688680);
    v78 = swift_allocObject();
    *(v78 + 16) = &unk_2486886B8;
    *(v78 + 24) = v69;
    if (v77 | v75)
    {
      v165[4] = 0;
      v165[5] = 0;
      v165[6] = v75;
      v165[7] = v77;
    }

    v79 = swift_task_create();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = sub_248682DFC(0, v36[2] + 1, 1, v36);
    }

    v81 = v36[2];
    v80 = v36[3];
    if (v81 >= v80 >> 1)
    {
      v36 = sub_248682DFC((v80 > 1), v81 + 1, 1, v36);
    }

    v36[2] = v81 + 1;
    v36[v81 + 4] = v79;
    v60 = 1;
    v61 = 1;
  }

  while ((v62 & 1) == 0);
  if (!*MEMORY[0x277D025F8])
  {
    goto LABEL_33;
  }

  v142 = v165;

  v82 = sub_2486878BC();
  v83 = 0;
  v84 = 0;
  v165[0] = v82;
  v165[1] = v85;
  v165[2] = 0xD000000000000021;
  v165[3] = 0x8000000248688B10;
  v139 &= v155 + 48;
  v86 = &qword_27EEA0D98;
  v87 = &unk_248688680;
  v88 = v139;
  do
  {
    v151 = v36;
    LODWORD(v143) = v83;
    v89 = &v142[2 * v84];
    v91 = *v89;
    v90 = v89[1];
    v92 = v87;
    v93 = v86;
    v94 = v145;
    v153(v145, 1, 1, v71);
    v95 = v156;
    v96 = v159;
    v149(v156, v158, v159);

    v97 = sub_24868798C();
    v98 = swift_allocObject();
    *(v98 + 2) = v97;
    *(v98 + 3) = MEMORY[0x277D85700];
    *(v98 + 4) = v91;
    *(v98 + 5) = v90;
    v99 = v95;
    v71 = v160;
    v147(&v98[v88], v99, v96);
    v100 = v94;
    v86 = v93;
    v87 = v92;
    v101 = v140;
    sub_248685BB8(v100, v140, v86, v92);
    LODWORD(v97) = v144(v101, 1, v71);

    if (v97 == 1)
    {
      sub_248685B58(v101, v86, v92);
    }

    else
    {
      sub_2486879AC();
      (*v141)(v101, v71);
    }

    v102 = *(v98 + 2);
    v103 = *(v98 + 3);
    swift_unknownObjectRetain();

    v36 = v151;
    if (v102)
    {
      swift_getObjectType();
      v104 = sub_24868794C();
      v106 = v105;
      swift_unknownObjectRelease();
    }

    else
    {
      v104 = 0;
      v106 = 0;
    }

    sub_248685B58(v145, v86, v87);
    v107 = swift_allocObject();
    *(v107 + 16) = &unk_2486886D0;
    *(v107 + 24) = v98;
    if (v106 | v104)
    {
      v162 = 0;
      v161 = 0;
      v163 = v104;
      v164 = v106;
    }

    v108 = swift_task_create();
    v110 = v36[2];
    v109 = v36[3];
    if (v110 >= v109 >> 1)
    {
      v111 = v108;
      v36 = sub_248682DFC((v109 > 1), v110 + 1, 1, v36);
      v108 = v111;
    }

    v36[2] = v110 + 1;
    v36[v110 + 4] = v108;
    v83 = 1;
    v84 = 1;
  }

  while ((v143 & 1) == 0);
  swift_arrayDestroy();
  v133[9] = v36;
  v112 = v136;
  v113 = v153;
  (v153)();
  v114 = swift_allocObject();
  swift_weakInit();

  v115 = sub_24868798C();
  v116 = swift_allocObject();
  v116[2] = v115;
  v116[3] = MEMORY[0x277D85700];
  v116[4] = v114;

  sub_24867F538(0, 0, v112, &unk_2486886E8, v116);

  v113(v112, 1, 1, v71);
  v117 = swift_allocObject();
  swift_weakInit();

  v118 = v135;
  v119 = v137;
  v120 = v130;
  v128(v135, v137, v130);

  v121 = sub_24868798C();
  v122 = v138;
  v123 = (*(v138 + 80) + 40) & ~*(v138 + 80);
  v124 = (v134 + v123 + 7) & 0xFFFFFFFFFFFFFFF8;
  v125 = swift_allocObject();
  *(v125 + 2) = v121;
  *(v125 + 3) = MEMORY[0x277D85700];
  *(v125 + 4) = v117;
  (*(v122 + 32))(&v125[v123], v118, v120);
  *&v125[v124] = v132;

  sub_24867F538(0, 0, v136, &unk_2486886F8, v125);

  (*(v131 + 8))(v158, v159);
  (*(v122 + 8))(v119, v120);
}

uint64_t sub_24867ECA4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0E30, &qword_248688840);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - v3;
  sub_24868799C();
  sub_24868798C();
  sub_24868794C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2486879EC();
  (*(v1 + 8))(v4, v0);
}

uint64_t sub_24867EDE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0E30, &qword_248688840);
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v8 = *(v7 + 64) + 15;
  v5[7] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0E60, &qword_248688868) - 8) + 64) + 15;
  v5[8] = swift_task_alloc();
  v10 = sub_248687A9C();
  v5[9] = v10;
  v11 = *(v10 - 8);
  v5[10] = v11;
  v12 = *(v11 + 64) + 15;
  v5[11] = swift_task_alloc();
  v5[12] = sub_24868799C();
  v5[13] = sub_24868798C();
  v14 = sub_24868794C();
  v5[14] = v14;
  v5[15] = v13;

  return MEMORY[0x2822009F8](sub_24867EF80, v14, v13);
}

uint64_t sub_24867EF80()
{
  v1 = v0[11];
  v2 = v0[3];
  v3 = [objc_opt_self() defaultCenter];
  sub_248687AAC();

  sub_248687A8C();
  v4 = v0[12];
  v0[16] = sub_24868798C();
  v5 = sub_248685DA4(&qword_27EEA0E68, MEMORY[0x277CC9D68]);
  v6 = *(MEMORY[0x277D856D0] + 4);
  v7 = swift_task_alloc();
  v0[17] = v7;
  *v7 = v0;
  v7[1] = sub_24867F0B8;
  v8 = v0[11];
  v9 = v0[8];
  v10 = v0[9];

  return MEMORY[0x282200308](v9, v10, v5);
}

uint64_t sub_24867F0B8()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;
  *(*v1 + 144) = v0;

  v5 = *(v2 + 128);
  if (v0)
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = sub_24868794C();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v9 = sub_24867F4AC;
  }

  else
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = sub_24868794C();
      v8 = v10;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v9 = sub_24867F250;
  }

  return MEMORY[0x2822009F8](v9, v6, v8);
}

uint64_t sub_24867F250()
{
  v1 = v0[16];

  v2 = v0[14];
  v3 = v0[15];

  return MEMORY[0x2822009F8](sub_24867F2B4, v2, v3);
}

uint64_t sub_24867F2B4()
{
  v1 = v0[8];
  v2 = sub_2486876BC();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[13];
    v4 = v0[7];
    (*(v0[10] + 8))(v0[11], v0[9]);

    v5 = v0[1];

    return v5();
  }

  else
  {
    v8 = v0[6];
    v7 = v0[7];
    v9 = v0[4];
    v10 = v0[5];
    sub_2486879EC();
    (*(v8 + 8))(v7, v10);
    sub_248685B58(v1, &qword_27EEA0E60, &qword_248688868);
    v11 = v0[12];
    v0[16] = sub_24868798C();
    v12 = sub_248685DA4(&qword_27EEA0E68, MEMORY[0x277CC9D68]);
    v13 = *(MEMORY[0x277D856D0] + 4);
    v14 = swift_task_alloc();
    v0[17] = v14;
    *v14 = v0;
    v14[1] = sub_24867F0B8;
    v15 = v0[11];
    v16 = v0[8];
    v17 = v0[9];

    return MEMORY[0x282200308](v16, v17, v12);
  }
}

uint64_t sub_24867F4AC()
{
  *(v0 + 16) = *(v0 + 144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0E70, &qword_248688870);
  v1 = MEMORY[0x277D84A98];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x277D84AC0];

  return MEMORY[0x2821FECA8](v2, v1, v3);
}

uint64_t sub_24867F538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0D98, &unk_248688680);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_248685BB8(a3, v27 - v11, &qword_27EEA0D98, &unk_248688680);
  v13 = sub_2486879BC();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_248685B58(v12, &qword_27EEA0D98, &unk_248688680);
  }

  else
  {
    sub_2486879AC();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_24868794C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_2486878DC() + 32;
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

      sub_248685B58(a3, &qword_27EEA0D98, &unk_248688680);

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

  sub_248685B58(a3, &qword_27EEA0D98, &unk_248688680);
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

uint64_t sub_24867F838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0E30, &qword_248688840);
  v6[5] = v7;
  v8 = *(v7 - 8);
  v6[6] = v8;
  v9 = *(v8 + 64) + 15;
  v6[7] = swift_task_alloc();
  v10 = sub_24868787C();
  v6[8] = v10;
  v11 = *(v10 - 8);
  v6[9] = v11;
  v12 = *(v11 + 64) + 15;
  v6[10] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0DB0, &qword_2486888A0);
  v6[11] = v13;
  v14 = *(v13 - 8);
  v6[12] = v14;
  v15 = *(v14 + 64) + 15;
  v6[13] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0E08, &qword_248688818);
  v6[14] = v16;
  v17 = *(v16 - 8);
  v6[15] = v17;
  v18 = *(v17 + 64) + 15;
  v6[16] = swift_task_alloc();
  v6[17] = sub_24868799C();
  v6[18] = sub_24868798C();
  v20 = sub_24868794C();
  v6[19] = v20;
  v6[20] = v19;

  return MEMORY[0x2822009F8](sub_24867FA6C, v20, v19);
}

uint64_t sub_24867FA6C()
{
  v29 = v0;
  if (qword_27EEA0D38 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_24868784C();
  v0[21] = __swift_project_value_buffer(v2, qword_27EEA0EB0);

  v3 = sub_24868782C();
  v4 = sub_248687A5C();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[2];
    v5 = v0[3];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v28 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_248682F30(v6, v5, &v28);
    _os_log_impl(&dword_248677000, v3, v4, "Entering loop for Darwin notification '%{public}s'", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x24C1D53D0](v8, -1, -1);
    MEMORY[0x24C1D53D0](v7, -1, -1);
  }

  v9 = v0[13];
  v11 = v0[9];
  v10 = v0[10];
  v12 = v0[8];
  v14 = v0[2];
  v13 = v0[3];
  sub_248685D5C(0, &qword_27EEA0E38, 0x277D85C78);
  (*(v11 + 104))(v10, *MEMORY[0x277D851B8], v12);
  v15 = sub_248687A7C();
  (*(v11 + 8))(v10, v12);
  sub_248685FD4(v14, v13, v15, v9);
  v16 = v0[16];
  v18 = v0[12];
  v17 = v0[13];
  v19 = v0[11];

  sub_248687A1C();
  (*(v18 + 8))(v17, v19);
  v20 = v0[17];
  v21 = sub_24868798C();
  v0[22] = v21;
  v22 = *(MEMORY[0x277D85798] + 4);
  v23 = swift_task_alloc();
  v0[23] = v23;
  *v23 = v0;
  v23[1] = sub_24867FFC8;
  v24 = v0[16];
  v25 = v0[14];
  v26 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v0 + 24, v21, v26, v25);
}

uint64_t sub_24867FFC8()
{
  v1 = *v0;
  v2 = *(*v0 + 184);
  v3 = *(*v0 + 176);
  v7 = *v0;

  v4 = *(v1 + 160);
  v5 = *(v1 + 152);

  return MEMORY[0x2822009F8](sub_24868010C, v5, v4);
}

uint64_t sub_24868010C()
{
  v28 = v0;
  if (*(v0 + 192) == 1)
  {
    v1 = *(v0 + 144);
    (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));

    v2 = *(v0 + 168);
    v3 = *(v0 + 24);

    v4 = sub_24868782C();
    v5 = sub_248687A5C();

    if (os_log_type_enabled(v4, v5))
    {
      v7 = *(v0 + 16);
      v6 = *(v0 + 24);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v27 = v9;
      *v8 = 136446210;
      *(v8 + 4) = sub_248682F30(v7, v6, &v27);
      _os_log_impl(&dword_248677000, v4, v5, "Exited loop for Darwin notification '%{public}s'", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x24C1D53D0](v9, -1, -1);
      MEMORY[0x24C1D53D0](v8, -1, -1);
    }

    v10 = *(v0 + 128);
    v11 = *(v0 + 104);
    v12 = *(v0 + 80);
    v13 = *(v0 + 56);

    v14 = *(v0 + 8);

    return v14();
  }

  else
  {
    v17 = *(v0 + 48);
    v16 = *(v0 + 56);
    v18 = *(v0 + 32);
    v19 = *(v0 + 40);
    sub_2486879EC();
    (*(v17 + 8))(v16, v19);
    v20 = *(v0 + 136);
    v21 = sub_24868798C();
    *(v0 + 176) = v21;
    v22 = *(MEMORY[0x277D85798] + 4);
    v23 = swift_task_alloc();
    *(v0 + 184) = v23;
    *v23 = v0;
    v23[1] = sub_24867FFC8;
    v24 = *(v0 + 128);
    v25 = *(v0 + 112);
    v26 = MEMORY[0x277D85700];

    return MEMORY[0x2822003E8](v0 + 192, v21, v26, v25);
  }
}

uint64_t sub_248680370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v5 = sub_24868770C();
  v4[9] = v5;
  v6 = *(v5 - 8);
  v4[10] = v6;
  v7 = *(v6 + 64) + 15;
  v4[11] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0E18, &qword_248688828) - 8) + 64) + 15;
  v4[12] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0E20, &qword_248688830);
  v4[13] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v4[14] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0E28, &qword_248688838);
  v4[15] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v4[16] = swift_task_alloc();
  v4[17] = sub_24868799C();
  v4[18] = sub_24868798C();
  v14 = sub_24868794C();
  v4[19] = v14;
  v4[20] = v13;

  return MEMORY[0x2822009F8](sub_248680518, v14, v13);
}

uint64_t sub_248680518()
{
  v1 = v0[16];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[8];
  sub_248687B4C();
  *(v2 + *(v3 + 36)) = xmmword_248688440;
  v5 = v2 + *(v3 + 40);
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 1;
  sub_24868780C();
  sub_248685B58(v2, &qword_27EEA0E20, &qword_248688830);
  swift_beginAccess();
  v0[21] = 0;
  v6 = v0[17];
  v0[22] = sub_24868798C();
  v7 = *(MEMORY[0x277CEF6D8] + 4);
  v8 = swift_task_alloc();
  v0[23] = v8;
  *v8 = v0;
  v8[1] = sub_248680640;
  v9 = v0[15];
  v10 = v0[16];
  v11 = v0[12];

  return MEMORY[0x282141BF0](v11, v9);
}

uint64_t sub_248680640()
{
  v1 = *v0;
  v2 = *(*v0 + 184);
  v3 = *(*v0 + 176);
  v9 = *v0;

  if (v3)
  {
    v4 = *(v1 + 176);
    swift_getObjectType();
    v5 = sub_24868794C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  return MEMORY[0x2822009F8](sub_24868077C, v5, v7);
}

uint64_t sub_24868077C()
{
  v1 = v0[22];

  v2 = v0[19];
  v3 = v0[20];

  return MEMORY[0x2822009F8](sub_2486807E0, v2, v3);
}

uint64_t sub_2486807E0()
{
  v1 = v0[12];
  v2 = sub_248687AFC();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[18];
    sub_248685B58(v0[16], &qword_27EEA0E28, &qword_248688838);

LABEL_8:
    if (qword_27EEA0D38 != -1)
    {
      swift_once();
    }

    v9 = sub_24868784C();
    __swift_project_value_buffer(v9, qword_27EEA0EB0);
    v10 = sub_24868782C();
    v11 = sub_248687A5C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_248677000, v10, v11, "Exiting loop for timer sequence.", v12, 2u);
      MEMORY[0x24C1D53D0](v12, -1, -1);
    }

    v13 = v0[16];
    v14 = v0[14];
    v16 = v0[11];
    v15 = v0[12];

    v17 = v0[1];

    return v17();
  }

  v4 = v0[8];
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v8 = v0[18];
    sub_248685B58(v0[16], &qword_27EEA0E28, &qword_248688838);
    goto LABEL_7;
  }

  v6 = Strong;
  if (sub_248687A4C())
  {
    v7 = v0[18];
    sub_248685B58(v0[16], &qword_27EEA0E28, &qword_248688838);

LABEL_7:

    sub_248685B58(v0[12], &qword_27EEA0E18, &qword_248688828);
    goto LABEL_8;
  }

  swift_getKeyPath();
  v0[5] = v6;
  sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState);
  sub_2486877BC();

  if (TMIsAutomaticTimeZoneEnabled())
  {

    v19 = v0[21];
  }

  else
  {
    v20 = v0[11];
    sub_2486876EC();
    swift_getKeyPath();
    v0[6] = v6;
    sub_2486877BC();

    if (TMIsAutomaticTimeZoneEnabled())
    {

      v19 = v0[21];
    }

    else
    {
      v19 = v0[21];
      v21 = v0[11];
      swift_getKeyPath();
      *(swift_task_alloc() + 16) = v21;
      v0[7] = v6;
      sub_2486877AC();
    }

    (*(v0[10] + 8))(v0[11], v0[9]);
  }

  sub_248685B58(v0[12], &qword_27EEA0E18, &qword_248688828);
  v0[21] = v19;
  v22 = v0[17];
  v0[22] = sub_24868798C();
  v23 = *(MEMORY[0x277CEF6D8] + 4);
  v24 = swift_task_alloc();
  v0[23] = v24;
  *v24 = v0;
  v24[1] = sub_248680640;
  v25 = v0[15];
  v26 = v0[16];
  v27 = v0[12];

  return MEMORY[0x282141BF0](v27, v25);
}

uint64_t sub_248680C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[51] = a5;
  v6[52] = a6;
  v6[50] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0E08, &qword_248688818);
  v6[53] = v7;
  v8 = *(v7 - 8);
  v6[54] = v8;
  v9 = *(v8 + 64) + 15;
  v6[55] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0E10, &qword_248688820);
  v6[56] = v10;
  v11 = *(v10 - 8);
  v6[57] = v11;
  v12 = *(v11 + 64) + 15;
  v6[58] = swift_task_alloc();
  v6[59] = sub_24868799C();
  v6[60] = sub_24868798C();
  v14 = sub_24868794C();
  v6[61] = v14;
  v6[62] = v13;

  return MEMORY[0x2822009F8](sub_248680DA4, v14, v13);
}

uint64_t sub_248680DA4()
{
  v1 = v0[50];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (*(Strong + 16) == 1)
    {
      *(Strong + 16) = 1;
    }

    else
    {
      v3 = Strong;
      swift_getKeyPath();
      v4 = swift_task_alloc();
      *(v4 + 16) = v3;
      *(v4 + 24) = 1;
      v0[46] = v3;
      sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState);
      sub_2486877AC();
    }
  }

  v5 = v0[50];
  swift_beginAccess();
  v6 = swift_weakLoadStrong();
  if (v6)
  {
    if (*(v6 + 16))
    {
      v7 = v6;
      swift_getKeyPath();
      v8 = swift_task_alloc();
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      v0[49] = v7;
      sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState);
      sub_2486877AC();
    }

    else
    {
      *(v6 + 16) = 0;
    }
  }

  v0[63] = 0;
  v9 = v0[50];
  swift_beginAccess();
  v10 = swift_weakLoadStrong();
  v0[64] = v10;
  if (!v10)
  {
    v0[66] = 0x8000000248688D20;
    v20 = v0[55];
    v22 = v0[50];
    v21 = v0[51];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0DB0, &qword_2486888A0);
    sub_248687A1C();
    swift_beginAccess();
    v0[67] = 0;
    v23 = v0[59];
    v24 = sub_24868798C();
    v0[68] = v24;
    v25 = *(MEMORY[0x277D85798] + 4);
    v26 = swift_task_alloc();
    v0[69] = v26;
    *v26 = v0;
    v26[1] = sub_248681594;
    v27 = v0[55];
    v14 = v0[53];
    v13 = MEMORY[0x277D85700];
    v11 = v0 + 577;
    v12 = v24;

    return MEMORY[0x2822003E8](v11, v12, v13, v14);
  }

  v11 = [objc_opt_self() sharedInstance];
  v0[65] = v11;
  if (!v11)
  {
    __break(1u);
    return MEMORY[0x2822003E8](v11, v12, v13, v14);
  }

  v15 = v11;
  v17 = v0[57];
  v16 = v0[58];
  v18 = v0[56];
  v0[2] = v0;
  v0[7] = v0 + 72;
  v0[3] = sub_248681288;
  swift_continuation_init();
  v0[25] = v18;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 22);
  sub_24868795C();
  (*(v17 + 32))(boxed_opaque_existential_0, v16, v18);
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_248681D74;
  v0[21] = &block_descriptor_142;
  [v15 isUpdateWaitingWithCompletion_];
  (*(v17 + 8))(boxed_opaque_existential_0, v18);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_248681288()
{
  v1 = *(*v0 + 496);
  v2 = *(*v0 + 488);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_248681390, v2, v1);
}

uint64_t sub_248681390()
{
  v1 = *(v0 + 512);
  v2 = *(v0 + 576);
  if (v2 == *(v1 + 18))
  {
    *(v1 + 18) = v2;

    v3 = *(v0 + 504);
  }

  else
  {
    v3 = *(v0 + 504);
    swift_getKeyPath();
    v4 = swift_task_alloc();
    *(v4 + 16) = v1;
    *(v4 + 24) = v2;
    *(v0 + 376) = v1;
    sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState);
    sub_2486877AC();
  }

  *(v0 + 528) = 0x8000000248688D20;
  v5 = *(v0 + 440);
  v7 = *(v0 + 400);
  v6 = *(v0 + 408);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0DB0, &qword_2486888A0);
  sub_248687A1C();
  swift_beginAccess();
  *(v0 + 536) = v3;
  v8 = *(v0 + 472);
  v9 = sub_24868798C();
  *(v0 + 544) = v9;
  v10 = *(MEMORY[0x277D85798] + 4);
  v11 = swift_task_alloc();
  *(v0 + 552) = v11;
  *v11 = v0;
  v11[1] = sub_248681594;
  v12 = *(v0 + 440);
  v13 = *(v0 + 424);
  v14 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v0 + 577, v9, v14, v13);
}

uint64_t sub_248681594()
{
  v1 = *v0;
  v2 = *(*v0 + 552);
  v3 = *(*v0 + 544);
  v7 = *v0;

  v4 = *(v1 + 496);
  v5 = *(v1 + 488);

  return MEMORY[0x2822009F8](sub_2486816D8, v5, v4);
}

uint64_t sub_2486816D8()
{
  if (*(v0 + 577) == 1 || (v1 = *(v0 + 400), Strong = swift_weakLoadStrong(), (*(v0 + 560) = Strong) == 0))
  {
    v4 = *(v0 + 480);
    (*(*(v0 + 432) + 8))(*(v0 + 440), *(v0 + 424));
    goto LABEL_6;
  }

  if (sub_248687A4C())
  {
    v3 = *(v0 + 480);
    (*(*(v0 + 432) + 8))(*(v0 + 440), *(v0 + 424));

LABEL_6:

    if (qword_27EEA0D38 != -1)
    {
      swift_once();
    }

    v5 = sub_24868784C();
    __swift_project_value_buffer(v5, qword_27EEA0EB0);
    v6 = sub_24868782C();
    v7 = sub_248687A5C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_248677000, v6, v7, "Exiting loop for update stream.", v8, 2u);
      MEMORY[0x24C1D53D0](v8, -1, -1);
    }

    v9 = *(v0 + 464);
    v10 = *(v0 + 440);

    v11 = *(v0 + 8);

    return v11();
  }

  v13 = [objc_opt_self() sharedInstance];
  *(v0 + 568) = v13;
  if (v13)
  {
    v14 = v13;
    v15 = *(v0 + 528);
    v17 = *(v0 + 456);
    v16 = *(v0 + 464);
    v18 = *(v0 + 448);
    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 578;
    *(v0 + 88) = sub_248681A28;
    swift_continuation_init();
    *(v0 + 264) = v18;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 240));
    sub_24868795C();
    (*(v17 + 32))(boxed_opaque_existential_0, v16, v18);
    *(v0 + 208) = MEMORY[0x277D85DD0];
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_248681D74;
    *(v0 + 232) = &block_descriptor_147;
    [v14 isUpdateWaitingWithCompletion_];
    (*(v17 + 8))(boxed_opaque_existential_0, v18);
    v13 = (v0 + 80);
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](v13);
}

uint64_t sub_248681A28()
{
  v1 = *(*v0 + 496);
  v2 = *(*v0 + 488);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_248681B30, v2, v1);
}

uint64_t sub_248681B30()
{
  v1 = *(v0 + 560);
  v2 = *(v0 + 578);

  if (*(v1 + 16) == 1)
  {
    *(v1 + 16) = 1;
    v3 = *(v0 + 536);
  }

  else
  {
    v4 = *(v0 + 560);
    v3 = *(v0 + 536);
    swift_getKeyPath();
    v5 = swift_task_alloc();
    *(v5 + 16) = v4;
    *(v5 + 24) = 1;
    *(v0 + 384) = v4;
    sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState);
    sub_2486877AC();
  }

  v6 = *(v0 + 560);
  v7 = *(v0 + 416);
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_task_alloc();
  *(v9 + 16) = v8;
  *(v9 + 24) = v2;
  *(v9 + 32) = v7;
  sub_24868786C();
  sub_24868785C();

  *(v0 + 536) = v3;
  v10 = *(v0 + 472);
  v11 = sub_24868798C();
  *(v0 + 544) = v11;
  v12 = *(MEMORY[0x277D85798] + 4);
  v13 = swift_task_alloc();
  *(v0 + 552) = v13;
  *v13 = v0;
  v13[1] = sub_248681594;
  v14 = *(v0 + 440);
  v15 = *(v0 + 424);
  v16 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v0 + 577, v11, v16, v15);
}

uint64_t sub_248681D74(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0E10, &qword_248688820);
  return sub_24868796C();
}

id sub_248681DD0(uint64_t a1, char a2)
{
  sub_24868799C();
  sub_24868798C();
  sub_24868794C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
  }

  v4 = Strong;
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v6 = result;
    v7 = [result isAutomaticDateAndTimeEnforced];

    if (v7 == v4[17])
    {
      v4[17] = v7;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState);
      sub_2486877AC();
    }

    v9 = [*&v4[OBJC_IVAR____TtC18DateAndTimeSupport24DateAndTimeSettingsState_wifiMonitor] state];
    if ((v4[19] ^ (v9 != 1)))
    {
      v10 = swift_getKeyPath();
      MEMORY[0x28223BE20](v10);
      sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState);
      sub_2486877AC();
    }

    else
    {
      v4[19] = v9 != 1;
    }

    swift_getKeyPath();
    sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState);
    sub_2486877AC();

    if (v4[18] == (a2 & 1))
    {
      v4[18] = a2 & 1;
    }

    else
    {
      v11 = swift_getKeyPath();
      MEMORY[0x28223BE20](v11);
      sub_2486877AC();
    }

    v12 = sub_248683DD0();
    sub_24867BA04(v12, v13);
    if (v4[16])
    {
      v14 = swift_getKeyPath();
      MEMORY[0x28223BE20](v14);
      sub_2486877AC();
    }

    v4[16] = 0;
  }

  __break(1u);
  return result;
}

char *DateAndTimeSettingsState.deinit()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0DA8, &unk_248688690);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v23 - v5;
  v7 = *(v1 + 9);
  v8 = *(v7 + 16);
  if (v8)
  {
    v24 = v2;

    v9 = 32;
    do
    {
      v10 = *(v7 + v9);

      sub_248687A3C();

      v9 += 8;
      --v8;
    }

    while (v8);

    v2 = v24;
  }

  v11 = OBJC_IVAR____TtC18DateAndTimeSupport24DateAndTimeSettingsState_reloadStreamContinuation;
  (*(v3 + 16))(v6, &v1[OBJC_IVAR____TtC18DateAndTimeSupport24DateAndTimeSettingsState_reloadStreamContinuation], v2);
  sub_248687A0C();
  v12 = *(v3 + 8);
  v12(v6, v2);
  v13 = OBJC_IVAR____TtC18DateAndTimeSupport24DateAndTimeSettingsState_wifiMonitor;
  [*&v1[OBJC_IVAR____TtC18DateAndTimeSupport24DateAndTimeSettingsState_wifiMonitor] stopMonitoring];
  [*&v1[v13] setHandler_];
  v14 = *(v1 + 4);

  v15 = *(v1 + 6);

  v16 = *(v1 + 8);

  v17 = *(v1 + 9);

  v18 = OBJC_IVAR____TtC18DateAndTimeSupport24DateAndTimeSettingsState_reloadStream;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0DB0, &qword_2486888A0);
  (*(*(v19 - 8) + 8))(&v1[v18], v19);
  v12(&v1[v11], v2);

  v20 = OBJC_IVAR____TtC18DateAndTimeSupport24DateAndTimeSettingsState___observationRegistrar;
  v21 = sub_2486877FC();
  (*(*(v21 - 8) + 8))(&v1[v20], v21);
  return v1;
}

uint64_t DateAndTimeSettingsState.__deallocating_deinit()
{
  DateAndTimeSettingsState.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

id sub_2486825A0(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = a1[4];
  v4 = a1[5];
  swift_getKeyPath();
  sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState);
  sub_2486877AC();

  sub_2486878DC();
  tzlink();

  return [objc_opt_self() resetSystemTimeZone];
}

void sub_2486826AC(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v3 = [objc_opt_self() sharedManager];
    if (v3)
    {
      v4 = v3;
      v5 = sub_24868788C();
      v6 = [v4 citiesMatchingName_];

      if (v6)
      {
        v7 = MEMORY[0x277D84F70];
        v8 = sub_24868793C();

        v9 = *(v8 + 16);
        if (!v9)
        {
          v12 = MEMORY[0x277D84F90];
          goto LABEL_29;
        }

        v10 = 0;
        v11 = v8 + 32;
        v35 = v9 - 1;
        v12 = MEMORY[0x277D84F90];
        v36 = v8 + 32;
        v39 = v8;
        while (1)
        {
          v37 = v12;
          v13 = v11 + 32 * v10;
          v14 = v10;
          while (1)
          {
            if (v14 >= *(v8 + 16))
            {
              __break(1u);
              goto LABEL_32;
            }

            sub_2486859CC(v13, v42);
            sub_24868799C();
            sub_24868798C();
            sub_24868794C();
            if ((swift_task_isCurrentExecutor() & 1) == 0)
            {
              swift_task_reportUnexpectedExecutor();
            }

            sub_2486859CC(v42, v41);
            sub_248685D5C(0, &qword_27EEA0E78, 0x277CEC580);
            if (swift_dynamicCast())
            {
              break;
            }

LABEL_10:
            ++v14;
            __swift_destroy_boxed_opaque_existential_0(v42);
            v13 += 32;
            if (v9 == v14)
            {
              goto LABEL_29;
            }
          }

          v15 = [v40 displayNameIncludingCountry_];
          if (!v15)
          {

            goto LABEL_10;
          }

          v16 = v15;
          v17 = sub_2486878BC();
          v19 = v18;

          v20 = [v40 timeZone];
          if (!v20)
          {

            goto LABEL_10;
          }

          v38 = v17;
          v21 = v9;
          v22 = v7;
          v23 = v20;
          v24 = sub_2486878BC();
          v26 = v25;

          v27 = [v40 classicIdentifier];
          if (!v27)
          {
            break;
          }

          v28 = v27;
          v29 = sub_2486878BC();
          v34 = v30;

          __swift_destroy_boxed_opaque_existential_0(v42);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v37 = sub_248682CDC(0, *(v12 + 16) + 1, 1, v12);
          }

          v32 = *(v37 + 2);
          v31 = *(v37 + 3);
          if (v32 >= v31 >> 1)
          {
            v37 = sub_248682CDC((v31 > 1), v32 + 1, 1, v37);
          }

          v10 = v14 + 1;
          *(v37 + 2) = v32 + 1;
          v33 = &v37[48 * v32];
          *(v33 + 4) = v38;
          *(v33 + 5) = v19;
          *(v33 + 6) = v24;
          *(v33 + 7) = v26;
          *(v33 + 8) = v29;
          *(v33 + 9) = v34;
          v11 = v36;
          v12 = v37;
          v7 = v22;
          v9 = v21;
          v8 = v39;
          if (v35 == v14)
          {
LABEL_29:

            sub_24867DA44(v12);
            return;
          }
        }

        v7 = v22;
        v9 = v21;
        v8 = v39;
        goto LABEL_10;
      }
    }

    else
    {
LABEL_32:
      __break(1u);
    }

    __break(1u);
  }
}

uint64_t sub_248682A8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v6(a2, a3);
}

uint64_t sub_248682AEC(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_248682BE4;

  return v7(a1);
}

uint64_t sub_248682BE4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

char *sub_248682CDC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0E80, &qword_248688888);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_248682DFC(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0E50, &qword_248688858);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0E58, &qword_248688860);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_248682F30(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_248682FFC(v11, 0, 0, 1, a1, a2);
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
    sub_2486859CC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_248682FFC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_248683108(a5, a6);
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
    result = sub_248687AEC();
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

uint64_t sub_248683108(uint64_t a1, unint64_t a2)
{
  v4 = sub_248683154(a1, a2);
  sub_248683284(&unk_285B1D218);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_248683154(uint64_t a1, unint64_t a2)
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

  v6 = sub_248683370(v5, 0);
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

  result = sub_248687AEC();
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
        v10 = sub_24868790C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_248683370(v10, 0);
        result = sub_248687ACC();
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

uint64_t sub_248683284(uint64_t result)
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

  result = sub_2486833E4(result, v12, 1, v3);
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

void *sub_248683370(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0E48, &qword_248688850);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2486833E4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0E48, &qword_248688850);
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

uint64_t sub_2486834D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    for (i = 0; ; i += 48)
    {
      v4 = *(a1 + i + 48);
      v5 = *(a1 + i + 56);
      v6 = *(a1 + i + 64);
      v7 = *(a1 + i + 72);
      v8 = *(a2 + i + 48);
      v9 = *(a2 + i + 56);
      v10 = *(a2 + i + 64);
      v11 = *(a2 + i + 72);
      v12 = *(a1 + i + 32) == *(a2 + i + 32) && *(a1 + i + 40) == *(a2 + i + 40);
      if (!v12 && (sub_248687B3C() & 1) == 0)
      {
        break;
      }

      v13 = v4 == v8 && v5 == v9;
      if (!v13 && (sub_248687B3C() & 1) == 0)
      {
        break;
      }

      v14 = v6 == v10 && v7 == v11;
      if (!v14 && (sub_248687B3C() & 1) == 0)
      {
        break;
      }

      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_2486835F8()
{
  v0 = sub_24868773C();
  v1 = *(v0 - 8);
  v2 = v1[8];
  v3 = (MEMORY[0x28223BE20])();
  v34 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v32 - v6;
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v32 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - v11;
  v13 = sub_24868775C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v37 = &v32 - v19;
  if (qword_27EEA0D40 != -1)
  {
    swift_once();
  }

  v33 = v7;
  v20 = qword_27EEA0EC8;
  v21 = sub_24868788C();
  v22 = [v20 stringForKey_];

  if (v22)
  {
    sub_2486878BC();

    sub_24868771C();
  }

  else
  {
    sub_24868772C();
  }

  v23 = *(v14 + 32);
  v36 = v13;
  v23(v37, v18, v13);
  sub_24868774C();
  v24 = *MEMORY[0x277CC9768];
  v32 = v1[13];
  v32(v10, v24, v0);
  sub_248685DA4(&qword_27EEA0E88, MEMORY[0x277CC9778]);
  sub_24868792C();
  sub_24868792C();
  v35 = v14;
  if (v40 == v38 && v41 == v39)
  {
    v25 = 1;
  }

  else
  {
    v25 = sub_248687B3C();
  }

  v26 = v1[1];
  v26(v10, v0);
  v26(v12, v0);

  if (v25)
  {
    (*(v35 + 8))(v37, v36);
    v27 = 1;
  }

  else
  {
    v28 = v33;
    sub_24868774C();
    v29 = v34;
    v32(v34, *MEMORY[0x277CC9770], v0);
    sub_24868792C();
    sub_24868792C();
    if (v40 == v38 && v41 == v39)
    {
      v27 = 1;
    }

    else
    {
      v27 = sub_248687B3C();
    }

    v30 = v36;
    v26(v29, v0);
    v26(v28, v0);
    (*(v35 + 8))(v37, v30);
  }

  return v27 & 1;
}

uint64_t sub_248683D04()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 57) = v2;
  return result;
}

uint64_t sub_248683D5C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_24867DA44(v4);
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

id sub_248683DD0()
{
  v0 = sub_24868779C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v72 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v72 - v9;
  [objc_opt_self() resetSystemTimeZone];
  sub_24868778C();
  v11 = TMIsAutomaticTimeZoneEnabled();
  if (qword_27EEA0D50 != -1)
  {
    swift_once();
  }

  v12 = qword_27EEA0ED8;
  v13 = sub_24868788C();
  v14 = [v12 objectForKey_];

  if (v14)
  {
    sub_248687ABC();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v78, 0, sizeof(v78));
  }

  sub_248685BB8(v78, &v76, &qword_27EEA0E00, &qword_248688810);
  if (v77)
  {
    sub_248685C20(&v76, &v74);
    sub_24868799C();
    sub_24868798C();
    sub_24868794C();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    __swift_project_boxed_opaque_existential_0(&v74, v75);
    v15 = sub_248687B2C();
    v16 = DTResolveCity(v15);
    swift_unknownObjectRelease();
    sub_248685B58(v78, &qword_27EEA0E00, &qword_248688810);

    __swift_destroy_boxed_opaque_existential_0(&v74);
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  else
  {
    sub_248685B58(v78, &qword_27EEA0E00, &qword_248688810);
    v16 = 0;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  result = [objc_opt_self() sharedManager];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v18 = result;
  v19 = sub_24868777C();
  v20 = [v18 defaultCityForTimeZone_];

  if (!v20 || (v21 = [v20 name], v20, !v21))
  {
LABEL_18:
    v73 = v5;
    if (!v16)
    {
LABEL_27:
      if (qword_27EEA0D38 != -1)
      {
        swift_once();
      }

      v34 = sub_24868784C();
      __swift_project_value_buffer(v34, qword_27EEA0EB0);
      (*(v1 + 16))(v8, v10, v0);
      v35 = sub_24868782C();
      v36 = sub_248687A6C();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        *&v78[0] = v38;
        *v37 = 141558275;
        *(v37 + 4) = 1752392040;
        *(v37 + 12) = 2081;
        v39 = sub_24868776C();
        v40 = v8;
        v41 = v16;
        v42 = v1;
        v44 = v43;
        (*(v42 + 8))(v40, v0);
        v45 = sub_248682F30(v39, v44, v78);
        v1 = v42;
        v16 = v41;

        *(v37 + 14) = v45;
        _os_log_impl(&dword_248677000, v35, v36, "Failed to find a city matching the current time zone identifier %{private,mask.hash}s", v37, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v38);
        MEMORY[0x24C1D53D0](v38, -1, -1);
        MEMORY[0x24C1D53D0](v37, -1, -1);
      }

      else
      {

        (*(v1 + 8))(v8, v0);
      }

      v5 = v73;
      v46 = sub_24868776C();
      goto LABEL_37;
    }

    v26 = v16;
    v27 = [v26 timeZone];
    if (v27)
    {
      v28 = v27;
      v29 = sub_2486878BC();
      v31 = v30;

      v32 = sub_24868776C();
      if (v31)
      {
        if (v29 == v32 && v31 == v33)
        {

LABEL_50:
          v69 = [v26 name];
          if (v69)
          {
            v70 = v69;
            v22 = sub_2486878BC();
            v24 = v71;
          }

          else
          {

            v22 = 0;
            v24 = 0xE000000000000000;
          }

          v5 = v73;
          goto LABEL_38;
        }

        v68 = sub_248687B3C();

        if (v68)
        {
          goto LABEL_50;
        }

        goto LABEL_26;
      }
    }

    else
    {
      sub_24868776C();
    }

LABEL_26:

    goto LABEL_27;
  }

  v73 = v16;
  v22 = sub_2486878BC();
  v24 = v23;

  if (sub_24868776C() == 0x6168532F61697341 && v25 == 0xED0000696168676ELL)
  {
  }

  else
  {
    v48 = sub_248687B3C();

    if ((v48 & 1) == 0)
    {
      v16 = v73;
      goto LABEL_38;
    }
  }

  v16 = v73;
  if (qword_27EEA0D30 != -1)
  {
    swift_once();
  }

  v46 = sub_2486876CC();
LABEL_37:
  v22 = v46;
  v24 = v47;
LABEL_38:
  v49 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v49 = v22 & 0xFFFFFFFFFFFFLL;
  }

  if (v49)
  {
    (*(v1 + 8))(v10, v0);
  }

  else
  {

    if (qword_27EEA0D38 != -1)
    {
      swift_once();
    }

    v50 = sub_24868784C();
    __swift_project_value_buffer(v50, qword_27EEA0EB0);
    (*(v1 + 16))(v5, v10, v0);
    v51 = sub_24868782C();
    v52 = sub_248687A6C();
    v53 = v0;
    if (os_log_type_enabled(v51, v52))
    {
      v54 = swift_slowAlloc();
      v73 = v0;
      v55 = v54;
      v56 = v5;
      v57 = swift_slowAlloc();
      *&v78[0] = v57;
      *v55 = 141558275;
      *(v55 + 4) = 1752392040;
      *(v55 + 12) = 2081;
      v58 = sub_24868776C();
      v72 = v10;
      v59 = v16;
      v60 = v58;
      v61 = v1;
      v63 = v62;
      v64 = *(v61 + 8);
      v64(v56, v73);
      v65 = v60;
      v16 = v59;
      v10 = v72;
      v66 = sub_248682F30(v65, v63, v78);

      *(v55 + 14) = v66;
      _os_log_impl(&dword_248677000, v51, v52, "Failed to find a city matching the current time zone identifier (empty name) %{private,mask.hash}s", v55, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v57);
      MEMORY[0x24C1D53D0](v57, -1, -1);
      v67 = v55;
      v53 = v73;
      MEMORY[0x24C1D53D0](v67, -1, -1);
    }

    else
    {

      v64 = *(v1 + 8);
      v64(v5, v0);
    }

    v22 = sub_24868776C();

    v64(v10, v53);
  }

  return v22;
}

uint64_t sub_248684720()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0DA8, &unk_248688690);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2486847B4()
{
  v0 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0DA8, &unk_248688690) - 8) + 80);

  return sub_24867ECA4();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_248684858()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0DA8, &unk_248688690);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_248684930(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0DA8, &unk_248688690) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_248684A34;

  return sub_24867EDE8(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_248684A34()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_248684B28(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_248685E48;

  return sub_248682AEC(a1, v5);
}

uint64_t sub_248684BE0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0DA8, &unk_248688690);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_248684CB8(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0DA8, &unk_248688690) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_248685E48;

  return sub_24867F838(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_248684DC8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_248684E00()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_248684E40(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_248685E48;

  return sub_248680370(a1, v4, v5, v6);
}

uint64_t sub_248684EF4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0DB0, &qword_2486888A0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_248684FD8(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0DB0, &qword_2486888A0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_248685E48;

  return sub_248680C34(a1, v7, v8, v9, v1 + v6, v10);
}

uint64_t sub_248685118@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_24867C2BC();
  *a2 = result;
  a2[1] = v5;
  return result;
}

void sub_24868516C()
{
  sub_2486858C0(319, &qword_27EEA0DF0, MEMORY[0x277D857B8]);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_2486858C0(319, &qword_27EEA0DF8, MEMORY[0x277D85788]);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      v4 = sub_2486877FC();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_2486858C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D84F78] + 8);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_2486859CC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

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

uint64_t sub_248685B1C()
{
  v1 = *(v0 + 16);
  TMSetAutomaticTimeEnabled();
  sub_2486876DC();
  return TMSetManualTime();
}

uint64_t sub_248685B58(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_248685BB8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *sub_248685C20(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_248685C30()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_248685C68(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_248684A34;

  return sub_248682AEC(a1, v5);
}

uint64_t sub_248685D20()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 64);
  *(v1 + 64) = *(v0 + 24);
}

uint64_t sub_248685D5C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_248685DA4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_248685EF8()
{
  v0 = sub_24868784C();
  __swift_allocate_value_buffer(v0, qword_27EEA0EB0);
  __swift_project_value_buffer(v0, qword_27EEA0EB0);
  return sub_24868783C();
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

uint64_t sub_248685FD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, NSObject *a3@<X2>, uint64_t a4@<X8>)
{
  v45 = a1;
  v46 = a3;
  v44 = a4;
  v56 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0DA0, &qword_248688890);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (&v42 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0E90, &qword_248688898);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v14 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v42 - v16;
  v43 = v15;
  v18 = *(v15 + 48);
  *v9 = 1;
  (*(v6 + 104))(v9, *MEMORY[0x277D85768], v5);
  sub_2486879CC();
  (*(v6 + 8))(v9, v5);
  out_token = 0;
  sub_248686618(v17, v14);
  v19 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v20 = swift_allocObject();
  v21 = v20 + v19;
  v22 = v45;
  sub_2486867C4(v14, v21);
  v53 = sub_248686834;
  v54 = v20;
  aBlock = MEMORY[0x277D85DD0];
  v50 = 1107296256;
  v51 = sub_2486868B0;
  v52 = &block_descriptor_0;
  v23 = _Block_copy(&aBlock);

  v24 = sub_2486878DC();
  v25 = notify_register_dispatch((v24 + 32), &out_token, v46, v23);

  _Block_release(v23);
  if (v25)
  {
    aBlock = 0;
    v50 = 0xE000000000000000;
    sub_248687ADC();

    aBlock = 0xD00000000000001ELL;
    v50 = 0x8000000248688E10;
    v47 = v22;
    v48 = a2;

    v26 = sub_2486878CC();
    MEMORY[0x24C1D4C10](v26);

    MEMORY[0x24C1D4C10](0x746C75736572202CLL, 0xE900000000000020);
    LODWORD(v47) = v25;
    v27 = sub_248687B1C();
    MEMORY[0x24C1D4C10](v27);

    v28 = aBlock;
    v29 = v50;
    sub_24868691C();
    swift_allocError();
    *v30 = v28;
    v30[1] = v29;
    swift_willThrow();
    result = sub_248686970(v17);
  }

  else
  {
    sub_248686618(v17, v14);
    v32 = v43;
    v33 = *(v43 + 48);
    v34 = out_token;
    v35 = swift_allocObject();
    *(v35 + 16) = v34;
    *(v35 + 24) = v22;
    *(v35 + 32) = a2;

    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0DA8, &unk_248688690);
    sub_2486879DC();
    v37 = *(*(v36 - 8) + 8);
    v37(&v14[v33], v36);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0DB0, &qword_2486888A0);
    v39 = *(v38 - 8);
    (*(v39 + 8))(v14, v38);
    sub_2486867C4(v17, v14);
    v40 = *(v32 + 48);
    (*(v39 + 32))(v44, v14, v38);
    result = (v37)(&v14[v40], v36);
  }

  v41 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_248686510()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0E30, &qword_248688840);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - v3;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0E90, &qword_248688898) + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0DA8, &unk_248688690);
  sub_2486879FC();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_248686618(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0E90, &qword_248688898);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_248686688()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0E90, &qword_248688898) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0DB0, &qword_2486888A0);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v1[14];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0DA8, &unk_248688690);
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2486867C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0E90, &qword_248688898);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_248686834()
{
  v0 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0E90, &qword_248688898) - 8) + 80);

  return sub_248686510();
}

uint64_t sub_2486868B0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24868691C()
{
  result = qword_27EEA0E98;
  if (!qword_27EEA0E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA0E98);
  }

  return result;
}

uint64_t sub_248686970(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0E90, &qword_248688898);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2486869D8(int a1, int token)
{
  v2 = notify_cancel(token);
  if (v2)
  {
    v3 = v2;
    if (qword_27EEA0D38 != -1)
    {
      swift_once();
    }

    v4 = sub_24868784C();
    __swift_project_value_buffer(v4, qword_27EEA0EB0);

    oslog = sub_24868782C();
    v5 = sub_248687A6C();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v12 = v7;
      *v6 = 136446466;

      v8 = sub_2486878CC();
      v10 = sub_248682F30(v8, v9, &v12);

      *(v6 + 4) = v10;
      *(v6 + 12) = 1026;
      *(v6 + 14) = v3;
      _os_log_impl(&dword_248677000, oslog, v5, "Failed to cancel stream for %{public}s, result %{public}u", v6, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x24C1D53D0](v7, -1, -1);
      MEMORY[0x24C1D53D0](v6, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_248686B90()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_248686BC8(int a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  sub_2486869D8(a1, *(v1 + 16));
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_248686BF0(uint64_t a1, int a2)
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

uint64_t sub_248686C38(uint64_t result, int a2, int a3)
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

uint64_t TimeZonePayload.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t TimeZonePayload.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t TimeZonePayload.timeZone.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t TimeZonePayload.timeZone.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t TimeZonePayload.classicIdentifier.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t TimeZonePayload.classicIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t static TimeZonePayload.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_248687B3C() & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_248687B3C() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return sub_248687B3C();
}

uint64_t TimeZonePayload.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_2486878EC();
  sub_2486878EC();

  return sub_2486878EC();
}

uint64_t TimeZonePayload.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_248687B9C();
  sub_2486878EC();
  sub_2486878EC();
  sub_2486878EC();
  return sub_248687BAC();
}

uint64_t sub_248687004()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_248687B9C();
  sub_2486878EC();
  sub_2486878EC();
  sub_2486878EC();
  return sub_248687BAC();
}

uint64_t sub_248687088()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_2486878EC();
  sub_2486878EC();

  return sub_2486878EC();
}

uint64_t sub_2486870F4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_248687B9C();
  sub_2486878EC();
  sub_2486878EC();
  sub_2486878EC();
  return sub_248687BAC();
}

unint64_t sub_248687178()
{
  result = qword_27EEA0EA0;
  if (!qword_27EEA0EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA0EA0);
  }

  return result;
}

uint64_t sub_2486871CC(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_248687B3C() & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_248687B3C() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return sub_248687B3C();
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_2486872D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_248687320(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_24868737C(uint64_t a1)
{
  sub_24868764C(a1, v10);
  v2 = v11;
  if (v11)
  {
    v3 = __swift_project_boxed_opaque_existential_0(v10, v11);
    v4 = *(v2 - 8);
    v5 = *(v4 + 64);
    MEMORY[0x28223BE20](v3);
    v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v4 + 16))(v7);
    v8 = sub_248687B2C();
    (*(v4 + 8))(v7, v2);
    __swift_destroy_boxed_opaque_existential_0(v10);
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_24868788C();
  [v1 setObject:v8 forKey:v9];
  swift_unknownObjectRelease();
}

void sub_2486874DC()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_24868788C();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    qword_27EEA0EC8 = v2;
  }

  else
  {
    __break(1u);
  }
}

void sub_248687554()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_24868788C();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    qword_27EEA0ED0 = v2;
  }

  else
  {
    __break(1u);
  }
}

void sub_2486875D4()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_24868788C();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    qword_27EEA0ED8 = v2;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24868764C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0E00, &qword_248688810);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}