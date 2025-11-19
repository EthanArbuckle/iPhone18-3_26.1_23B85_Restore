uint64_t sub_25124F9C8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25124F9D8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25124F9E8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25124FA20()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25124FADC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_25124FB2C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 24);
}

uint64_t sub_25124FB7C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 32);
}

id sub_25124FBCC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  *a2 = v4;

  return v4;
}

uint64_t sub_25124FC28@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 64);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_25124FC78(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 64) = v3;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_25124FCE0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 128);
}

uint64_t sub_25124FD38()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25124FD70()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25124FDA8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25124FDFC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25124FE3C()
{
  v1 = *(v0 + 24);

  if (*(v0 + 40))
  {
    v2 = *(v0 + 48);
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_25124FE8C()
{
  v1 = v0[3];

  if (v0[4])
  {
    v2 = v0[5];
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

const char *AAFeatures.feature.getter()
{
  if (*v0)
  {
    return "PauseMediaOnSleep";
  }

  else
  {
    return "ChargingReminders";
  }
}

HeadphoneProxFeatureService::AAFeatures_optional __swiftcall AAFeatures.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2512667AC();

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

uint64_t sub_25124FFAC(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = "ChargingReminders";
  }

  else
  {
    v2 = &unk_251267520;
  }

  v3 = v2 | 0x8000000000000000;
  if (*a2)
  {
    v4 = "ChargingReminders";
  }

  else
  {
    v4 = &unk_251267520;
  }

  if (v3 == (v4 | 0x8000000000000000))
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_2512667CC();
  }

  return v5 & 1;
}

uint64_t sub_251250050()
{
  v1 = *v0;
  sub_2512667FC();
  sub_2512665FC();

  return sub_25126680C();
}

uint64_t sub_2512500C8()
{
  *v0;
  sub_2512665FC();
}

uint64_t sub_25125012C()
{
  v1 = *v0;
  sub_2512667FC();
  sub_2512665FC();

  return sub_25126680C();
}

uint64_t sub_2512501A0@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2512667AC();

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

void sub_251250200(void *a1@<X8>)
{
  if (*v1)
  {
    v2 = "ChargingReminders";
  }

  else
  {
    v2 = &unk_251267520;
  }

  *a1 = 0xD000000000000011;
  a1[1] = v2 | 0x8000000000000000;
}

const char *sub_25125024C()
{
  if (*v0)
  {
    return "PauseMediaOnSleep";
  }

  else
  {
    return "ChargingReminders";
  }
}

uint64_t TranslateFeatures.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_2512667AC();

  *a1 = v2 != 0;
  return result;
}

unint64_t sub_251250314()
{
  result = qword_27F427A60;
  if (!qword_27F427A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F427A60);
  }

  return result;
}

unint64_t sub_251250374()
{
  result = qword_27F427A68;
  if (!qword_27F427A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F427A68);
  }

  return result;
}

uint64_t sub_2512503C8()
{
  sub_2512667FC();
  sub_2512665FC();
  return sub_25126680C();
}

uint64_t sub_25125043C()
{
  sub_2512667FC();
  sub_2512665FC();
  return sub_25126680C();
}

uint64_t sub_251250490@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2512667AC();

  *a2 = v5 != 0;
  return result;
}

uint64_t getEnumTagSinglePayload for AAFeatures(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AAFeatures(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for TranslateFeatures(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for TranslateFeatures(_WORD *result, int a2, int a3)
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

void sub_2512507B4(uint64_t a1, unint64_t *a2)
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

_DWORD *sub_251250824@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

Swift::Bool __swiftcall HeadphoneProxFeatureManager.shouldShowPauseMediaOnSleepCard(deviceAddress:)(Swift::String_optional deviceAddress)
{
  v2 = v1;
  object = deviceAddress.value._object;
  countAndFlagsBits = deviceAddress.value._countAndFlagsBits;
  if (!deviceAddress.value._object)
  {
    goto LABEL_21;
  }

  v5 = sub_2512665DC();
  v7 = v6;
  swift_beginAccess();
  v8 = *(v1 + 24);
  if (!*(v8 + 16))
  {
LABEL_20:

LABEL_21:
    if (qword_2814AEED8 != -1)
    {
      swift_once();
    }

    v43 = sub_25126654C();
    __swift_project_value_buffer(v43, qword_2814AF200);

    v44 = sub_25126652C();
    v45 = sub_2512666EC();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v76 = v47;
      *v46 = 136315394;
      if (object)
      {
        v48 = object;
      }

      else
      {
        countAndFlagsBits = 4999502;
        v48 = 0xE300000000000000;
      }

      v49 = sub_251251A44(countAndFlagsBits, v48, &v76);

      *(v46 + 4) = v49;
      *(v46 + 12) = 2080;
      swift_beginAccess();
      v50 = *(v2 + 24);
      sub_251252064();

      v51 = sub_25126659C();
      v53 = v52;

      v54 = sub_251251A44(v51, v53, &v76);

      *(v46 + 14) = v54;
      _os_log_impl(&dword_25124E000, v44, v45, "HeadphoneProxFeatureService: shouldShowPauseMediaOnSleepCard: Invalid Device, Return false address: %s %s", v46, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25306F360](v47, -1, -1);
      MEMORY[0x25306F360](v46, -1, -1);
    }

    return 0;
  }

  v9 = *(v2 + 24);

  v10 = sub_2512520B0(v5, v7);
  if ((v11 & 1) == 0)
  {

    goto LABEL_20;
  }

  v12 = *(*(v8 + 56) + 8 * v10);

  v74 = &type metadata for AAFeatures;
  v13 = sub_251252128();
  v75 = v13;
  LOBYTE(v73[0]) = 1;
  v14 = sub_25126640C();
  __swift_destroy_boxed_opaque_existential_1Tm(v73);
  if ((v14 & 1) == 0 || [v12 sleepDetectionCapability] != 2)
  {

    if (qword_2814AEED8 != -1)
    {
      swift_once();
    }

    v56 = sub_25126654C();
    __swift_project_value_buffer(v56, qword_2814AF200);
    v57 = v12;

    v58 = sub_25126652C();
    v59 = sub_2512666EC();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v76 = v61;
      *v60 = 67109634;
      v74 = &type metadata for AAFeatures;
      v75 = v13;
      LOBYTE(v73[0]) = 1;
      v62 = sub_25126640C();
      __swift_destroy_boxed_opaque_existential_1Tm(v73);
      *(v60 + 4) = v62 & 1;
      *(v60 + 8) = 1024;
      *(v60 + 10) = [v57 sleepDetectionCapability] == 2;

      *(v60 + 14) = 2080;
      v63 = *(v2 + 24);
      sub_251252064();

      v64 = sub_25126659C();
      v66 = v65;

      v67 = sub_251251A44(v64, v66, &v76);

      *(v60 + 16) = v67;
      _os_log_impl(&dword_25124E000, v58, v59, "HeadphoneProxFeatureService: shouldShowPauseMediaOnSleepCard: Feature is enabled ? %{BOOL}d, device supports sleepDetection? %{BOOL}d, Return false %s", v60, 0x18u);
      __swift_destroy_boxed_opaque_existential_1Tm(v61);
      MEMORY[0x25306F360](v61, -1, -1);
      MEMORY[0x25306F360](v60, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  v15 = sub_25125A8E4(v5, v7);
  v72 = [v15 pauseMediaOnSleepVersion];
  v16 = [*(v2 + 72) pauseMediaOnSleepVersion];
  if (qword_2814AEED8 != -1)
  {
    swift_once();
  }

  v17 = sub_25126654C();
  __swift_project_value_buffer(v17, qword_2814AF200);

  v18 = v15;

  v19 = sub_25126652C();
  v20 = sub_2512666EC();

  v70 = v20;
  v71 = v18;
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v73[0] = v69;
    *v21 = 136315906;
    *(v21 + 4) = sub_251251A44(v5, v7, v73);
    *(v21 + 12) = 2080;
    if (v72 >= v16)
    {
      v22 = 20302;
    }

    else
    {
      v22 = 5457241;
    }

    if (v72 >= v16)
    {
      v23 = 0xE200000000000000;
    }

    else
    {
      v23 = 0xE300000000000000;
    }

    v24 = sub_251251A44(v22, v23, v73);

    *(v21 + 14) = v24;
    *(v21 + 22) = 2080;
    v76 = [v18 pauseMediaOnSleepVersion];
    sub_2512521C8();
    v25 = sub_25126673C();
    v27 = v16;
    v28 = sub_251251A44(v25, v26, v73);

    *(v21 + 24) = v28;
    v16 = v27;
    *(v21 + 32) = 2080;
    v76 = [*(v2 + 72) pauseMediaOnSleepVersion];
    v29 = sub_25126673C();
    v31 = sub_251251A44(v29, v30, v73);

    *(v21 + 34) = v31;
    _os_log_impl(&dword_25124E000, v19, v70, "HeadphoneProxFeatureService: [%s] shouldShowPauseMediaOnSleepCard: %s, Current Version: %s, Target Version: %s", v21, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x25306F360](v69, -1, -1);
    MEMORY[0x25306F360](v21, -1, -1);
  }

  v32 = sub_2512665AC();
  CFPreferencesAppSynchronize(v32);

  v33 = sub_2512665AC();
  v34 = sub_2512665AC();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v33, v34, 0);

  if (AppBooleanValue)
  {

    v36 = sub_25126652C();
    v37 = sub_2512666EC();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = v16;
      v40 = swift_slowAlloc();
      v73[0] = v40;
      *v38 = 136315138;
      v41 = sub_251251A44(v5, v7, v73);

      *(v38 + 4) = v41;
      _os_log_impl(&dword_25124E000, v36, v37, "HeadphoneProxFeatureService: [%s] shouldShowPauseMediaOnSleepCard: Force Show!", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      v42 = v40;
      v16 = v39;
      MEMORY[0x25306F360](v42, -1, -1);
      MEMORY[0x25306F360](v38, -1, -1);
    }

    else
    {
    }
  }

  else
  {
  }

  return v72 < v16 || AppBooleanValue != 0;
}

Swift::Void __swiftcall HeadphoneProxFeatureManager.setPauseMediaOnSleepConfig(deviceAddress:enabled:)(Swift::String_optional deviceAddress, Swift::Bool enabled)
{
  v3 = v2;
  object = deviceAddress.value._object;
  countAndFlagsBits = deviceAddress.value._countAndFlagsBits;
  if (!deviceAddress.value._object)
  {
    goto LABEL_17;
  }

  v7 = sub_2512665DC();
  v9 = v8;
  swift_beginAccess();
  v10 = *(v2 + 24);
  if (!*(v10 + 16))
  {
LABEL_16:

LABEL_17:
    if (qword_2814AEED8 != -1)
    {
      swift_once();
    }

    v24 = sub_25126654C();
    __swift_project_value_buffer(v24, qword_2814AF200);

    v25 = sub_25126652C();
    v26 = sub_2512666EC();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v42[0] = v28;
      *v27 = 136315394;
      swift_beginAccess();
      v29 = *(v3 + 24);
      sub_251252064();

      v30 = sub_25126659C();
      v32 = v31;

      v33 = sub_251251A44(v30, v32, v42);

      *(v27 + 4) = v33;
      *(v27 + 12) = 2080;
      if (object)
      {
        v34 = countAndFlagsBits;
      }

      else
      {
        v34 = 4999502;
      }

      if (object)
      {
        v35 = object;
      }

      else
      {
        v35 = 0xE300000000000000;
      }

      v36 = sub_251251A44(v34, v35, v42);

      *(v27 + 14) = v36;
      _os_log_impl(&dword_25124E000, v25, v26, "HeadphoneProxFeatureService: setPauseMediaOnSleepConfig: Invalid Device, Return %s %s", v27, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25306F360](v28, -1, -1);
      MEMORY[0x25306F360](v27, -1, -1);
    }

    return;
  }

  v11 = *(v3 + 24);

  v12 = sub_2512520B0(v7, v9);
  if ((v13 & 1) == 0)
  {

    goto LABEL_16;
  }

  v14 = *(*(v10 + 56) + 8 * v12);

  if (qword_2814AEED8 != -1)
  {
    swift_once();
  }

  v15 = sub_25126654C();
  __swift_project_value_buffer(v15, qword_2814AF200);

  v16 = sub_25126652C();
  v17 = sub_2512666EC();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v41[0] = v19;
    *v18 = 136315394;
    v20 = sub_251251A44(v7, v9, v41);

    *(v18 + 4) = v20;
    *(v18 + 12) = 2080;
    if (enabled)
    {
      v21 = 0x64656C62616E45;
    }

    else
    {
      v21 = 0x64656C6261736944;
    }

    if (enabled)
    {
      v22 = 0xE700000000000000;
    }

    else
    {
      v22 = 0xE800000000000000;
    }

    v23 = sub_251251A44(v21, v22, v41);

    *(v18 + 14) = v23;
    _os_log_impl(&dword_25124E000, v16, v17, "HeadphoneProxFeatureService: [%s] setPauseMediaOnSleepConfig: %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25306F360](v19, -1, -1);
    MEMORY[0x25306F360](v18, -1, -1);

    if (!enabled)
    {
      goto LABEL_14;
    }
  }

  else
  {

    if (!enabled)
    {
LABEL_14:

      return;
    }
  }

  v37 = [objc_allocWithZone(MEMORY[0x277CEF808]) init];
  [v37 setEnableSleepDetection_];
  swift_beginAccess();
  v38 = *(v3 + 40);
  v39 = [v14 identifier];
  if (!v39)
  {
    sub_2512665BC();
    v39 = sub_2512665AC();
  }

  v41[4] = sub_251251668;
  v41[5] = 0;
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 1107296256;
  v41[2] = sub_251251908;
  v41[3] = &block_descriptor;
  v40 = _Block_copy(v41);
  [v38 sendDeviceConfig:v37 identifier:v39 completion:v40];
  _Block_release(v40);
}

void sub_251251668(NSObject *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_2814AEED8 != -1)
    {
      swift_once();
    }

    v3 = sub_25126654C();
    __swift_project_value_buffer(v3, qword_2814AF200);
    v4 = a1;
    v5 = sub_25126652C();
    v6 = sub_2512666DC();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v18 = v8;
      *v7 = 136315138;
      v9 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F427A90, &qword_2512671B8);
      v10 = sub_2512665CC();
      v12 = sub_251251A44(v10, v11, &v18);

      *(v7 + 4) = v12;
      _os_log_impl(&dword_25124E000, v5, v6, "HeadphoneProxFeatureService:  Failed to update AAD Device Config for Pause Media on Sleep, Error: %s ", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x25306F360](v8, -1, -1);
      MEMORY[0x25306F360](v7, -1, -1);

      return;
    }

    v16 = a1;
  }

  else
  {
    if (qword_2814AEED8 != -1)
    {
      swift_once();
    }

    v13 = sub_25126654C();
    __swift_project_value_buffer(v13, qword_2814AF200);
    oslog = sub_25126652C();
    v14 = sub_2512666EC();
    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_25124E000, oslog, v14, "HeadphoneProxFeatureService: Successfully Updated AAD Device Config for Pause Media on Sleep", v15, 2u);
      MEMORY[0x25306F360](v15, -1, -1);
    }

    v16 = oslog;
  }
}

void sub_251251908(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_251251974(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_2512519E8(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_251251A44(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_251251A44(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_251251B10(v11, 0, 0, 1, a1, a2);
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
    sub_251252334(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_251251B10(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_251251C1C(a5, a6);
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
    result = sub_25126676C();
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

uint64_t sub_251251C1C(uint64_t a1, unint64_t a2)
{
  v4 = sub_251251C68(a1, a2);
  sub_251251D98(&unk_28634E308);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_251251C68(uint64_t a1, unint64_t a2)
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

  v6 = sub_25125D588(v5, 0);
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

  result = sub_25126676C();
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
        v10 = sub_25126664C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_25125D588(v10, 0);
        result = sub_25126675C();
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

uint64_t sub_251251D98(uint64_t result)
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

  result = sub_251251E84(result, v12, 1, v3);
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

char *sub_251251E84(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F427A98, &qword_2512671C0);
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

_BYTE **sub_251251F78(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void *sub_251251F88(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_251251FFC@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_251252064()
{
  result = qword_27F427A80;
  if (!qword_27F427A80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F427A80);
  }

  return result;
}

unint64_t sub_2512520B0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2512667FC();
  sub_2512665FC();
  v6 = sub_25126680C();

  return sub_25125227C(a1, a2, v6);
}

unint64_t sub_251252128()
{
  result = qword_2814AEEE0;
  if (!qword_2814AEEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814AEEE0);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_2512521C8()
{
  result = qword_27F427A88;
  if (!qword_27F427A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F427A88);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
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

unint64_t sub_25125227C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_2512667CC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_251252334(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

Swift::Bool __swiftcall HeadphoneProxFeatureManager.shouldShowLiveTranslationCard(deviceAddress:)(Swift::String_optional deviceAddress)
{
  v2 = v1;
  object = deviceAddress.value._object;
  countAndFlagsBits = deviceAddress.value._countAndFlagsBits;
  if (!deviceAddress.value._object)
  {
    goto LABEL_11;
  }

  v5 = sub_2512665DC();
  v7 = v6;
  swift_beginAccess();
  v8 = *(v1 + 24);
  if (!*(v8 + 16))
  {
LABEL_10:

LABEL_11:
    if (qword_2814AEED8 != -1)
    {
      swift_once();
    }

    v20 = sub_25126654C();
    __swift_project_value_buffer(v20, qword_2814AF200);

    v21 = sub_25126652C();
    v22 = sub_2512666EC();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v79 = v24;
      *v23 = 136315394;
      if (object)
      {
        v25 = object;
      }

      else
      {
        countAndFlagsBits = 4999502;
        v25 = 0xE300000000000000;
      }

      v26 = sub_251251A44(countAndFlagsBits, v25, &v79);

      *(v23 + 4) = v26;
      *(v23 + 12) = 2080;
      swift_beginAccess();
      v27 = *(v2 + 24);
      sub_251252064();

      v28 = sub_25126659C();
      v30 = v29;

      v31 = sub_251251A44(v28, v30, &v79);

      *(v23 + 14) = v31;
      _os_log_impl(&dword_25124E000, v21, v22, "HeadphoneProxFeatureService: shouldShowHeadGesturesCard: Invalid Device, Return false address: %s %s", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25306F360](v24, -1, -1);
      MEMORY[0x25306F360](v23, -1, -1);
    }

    goto LABEL_18;
  }

  v9 = *(v2 + 24);

  v10 = sub_2512520B0(v5, v7);
  if ((v11 & 1) == 0)
  {

    goto LABEL_10;
  }

  v12 = *(*(v8 + 56) + 8 * v10);

  v77 = &type metadata for TranslateFeatures;
  v13 = sub_251252D24();
  v78 = v13;
  v14 = sub_25126640C();
  __swift_destroy_boxed_opaque_existential_1Tm(v76);
  if ((v14 & 1) == 0 || [v12 personalTranslatorCapability] != 2)
  {

    if (qword_2814AEED8 != -1)
    {
      swift_once();
    }

    v32 = sub_25126654C();
    __swift_project_value_buffer(v32, qword_2814AF200);
    v21 = v12;
    v33 = sub_25126652C();
    v34 = sub_2512666EC();

    if (!os_log_type_enabled(v33, v34))
    {

      goto LABEL_19;
    }

    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v79 = v36;
    *v35 = 136315394;
    v77 = &type metadata for TranslateFeatures;
    v78 = v13;
    v37 = sub_25126640C();
    __swift_destroy_boxed_opaque_existential_1Tm(v76);
    if (v37)
    {
      v38 = 5457241;
    }

    else
    {
      v38 = 20302;
    }

    if (v37)
    {
      v39 = 0xE300000000000000;
    }

    else
    {
      v39 = 0xE200000000000000;
    }

    v40 = sub_251251A44(v38, v39, &v79);

    *(v35 + 4) = v40;
    *(v35 + 12) = 2080;
    v41 = [v21 personalTranslatorCapability];
    v42 = v41 == 2;
    if (v41 == 2)
    {
      v43 = 5457241;
    }

    else
    {
      v43 = 20302;
    }

    if (v42)
    {
      v44 = 0xE300000000000000;
    }

    else
    {
      v44 = 0xE200000000000000;
    }

    v45 = sub_251251A44(v43, v44, &v79);

    *(v35 + 14) = v45;
    _os_log_impl(&dword_25124E000, v33, v34, "HeadphoneProxFeatureService: shouldShowLiveTranslationCard: Feature Enabled:  %s, Device Supported: %s", v35, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25306F360](v36, -1, -1);
    MEMORY[0x25306F360](v35, -1, -1);

LABEL_18:
LABEL_19:
    LOBYTE(v17) = 0;
    return v17;
  }

  v15 = sub_25125A8E4(v5, v7);
  v16 = [v15 personalTranslatorVersion];
  if (v16 >= [*(v2 + 72) personalTranslatorVersion])
  {
    LODWORD(v19) = 0;
  }

  else
  {
    v17 = MobileGestalt_get_current_device();
    if (!v17)
    {
      __break(1u);
      return v17;
    }

    v18 = v17;
    LODWORD(v19) = MobileGestalt_get_deviceSupportsPersonalTranslator();
  }

  if (qword_2814AEED8 != -1)
  {
    swift_once();
  }

  v46 = sub_25126654C();
  __swift_project_value_buffer(v46, qword_2814AF200);

  v47 = v15;

  v48 = sub_25126652C();
  v49 = sub_2512666EC();

  v75 = v47;
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v76[0] = v73;
    *v50 = 136315906;
    *(v50 + 4) = sub_251251A44(v5, v7, v76);
    *(v50 + 12) = 2080;
    if (v19)
    {
      v51 = 5457241;
    }

    else
    {
      v51 = 20302;
    }

    if (v19)
    {
      v52 = 0xE300000000000000;
    }

    else
    {
      v52 = 0xE200000000000000;
    }

    v74 = v19;
    v19 = sub_251251A44(v51, v52, v76);

    *(v50 + 14) = v19;
    *(v50 + 22) = 2080;
    v79 = [v47 personalTranslatorVersion];
    sub_2512521C8();
    v53 = sub_25126673C();
    v55 = sub_251251A44(v53, v54, v76);

    *(v50 + 24) = v55;
    *(v50 + 32) = 2080;
    v79 = [*(v2 + 72) personalTranslatorVersion];
    LOBYTE(v19) = v74;
    v56 = sub_25126673C();
    v58 = sub_251251A44(v56, v57, v76);

    *(v50 + 34) = v58;
    _os_log_impl(&dword_25124E000, v48, v49, "HeadphoneProxFeatureService: [%s] shouldShowLiveTranslationCard: %s, Current Version: %s, Target Version: %s", v50, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x25306F360](v73, -1, -1);
    MEMORY[0x25306F360](v50, -1, -1);
  }

  if ((sub_251252D78() & 1) == 0)
  {

    v19 = sub_25126652C();
    v59 = sub_2512666EC();

    if (os_log_type_enabled(v19, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v76[0] = v61;
      *v60 = 136315138;
      *(v60 + 4) = sub_251251A44(v5, v7, v76);
      _os_log_impl(&dword_25124E000, v19, v59, "HeadphoneProxFeatureService: [%s] shouldShowLiveTranslationCard: No Apple Intelligence Prerequisite Not Met!", v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v61);
      MEMORY[0x25306F360](v61, -1, -1);
      MEMORY[0x25306F360](v60, -1, -1);
    }

    LOBYTE(v19) = 0;
  }

  v62 = sub_2512665AC();
  CFPreferencesAppSynchronize(v62);

  v63 = sub_2512665AC();
  v64 = sub_2512665AC();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v63, v64, 0);

  if (AppBooleanValue)
  {

    v66 = sub_25126652C();
    v67 = sub_2512666EC();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = v19;
      v19 = swift_slowAlloc();
      v76[0] = v19;
      *v68 = 136315138;
      v70 = sub_251251A44(v5, v7, v76);

      *(v68 + 4) = v70;
      _os_log_impl(&dword_25124E000, v66, v67, "HeadphoneProxFeatureService: [%s] shouldShowLiveTranslationCard: Force Show!", v68, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      v71 = v19;
      LOBYTE(v19) = v69;
      MEMORY[0x25306F360](v71, -1, -1);
      MEMORY[0x25306F360](v68, -1, -1);
    }

    else
    {
    }
  }

  else
  {
  }

  if (AppBooleanValue)
  {
    LOBYTE(v17) = 1;
  }

  else
  {
    LOBYTE(v17) = v19;
  }

  return v17;
}

unint64_t sub_251252D24()
{
  result = qword_27F427AA0;
  if (!qword_27F427AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F427AA0);
  }

  return result;
}

uint64_t sub_251252D78()
{
  sub_2512664FC();
  v0 = MEMORY[0x25306EB60]();
  v1 = sub_2512664DC();

  if (v1)
  {
    v2 = 1;
  }

  else
  {
    sub_25126651C();
    v2 = sub_25126650C();
  }

  if (qword_2814AEED8 != -1)
  {
    swift_once();
  }

  v3 = sub_25126654C();
  __swift_project_value_buffer(v3, qword_2814AF200);
  v4 = sub_25126652C();
  v5 = sub_2512666EC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109376;
    v7 = MEMORY[0x25306EB60]();
    v8 = sub_2512664DC();

    *(v6 + 4) = v8 & 1;
    *(v6 + 8) = 1024;
    sub_25126651C();
    *(v6 + 10) = sub_25126650C() & 1;
    _os_log_impl(&dword_25124E000, v4, v5, "HeadphoneProxFeatureService: isAppleIntelligencePrerequisiteMet %{BOOL}d %{BOOL}d", v6, 0xEu);
    MEMORY[0x25306F360](v6, -1, -1);
  }

  return v2 & 1;
}

Swift::Bool __swiftcall HeadphoneProxFeatureManager.shouldShowTrackWorkoutCard(deviceAddress:)(Swift::String_optional deviceAddress)
{
  v2 = v1;
  object = deviceAddress.value._object;
  countAndFlagsBits = deviceAddress.value._countAndFlagsBits;
  if (!deviceAddress.value._object)
  {
    goto LABEL_9;
  }

  v5 = sub_2512665DC();
  v7 = v6;
  swift_beginAccess();
  v8 = *(v1 + 24);
  if (!*(v8 + 16) || (v9 = *(v2 + 24), , v10 = sub_2512520B0(v5, v7), v12 = v11, , (v12 & 1) == 0))
  {

LABEL_9:
    if (qword_2814AEED8 != -1)
    {
      swift_once();
    }

    v17 = sub_25126654C();
    __swift_project_value_buffer(v17, qword_2814AF200);

    v18 = sub_25126652C();
    v19 = sub_2512666EC();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v40 = v21;
      *v20 = 136315650;
      *(v20 + 4) = sub_251251A44(0xD00000000000002ALL, 0x80000002512676F0, &v40);
      *(v20 + 12) = 2080;
      if (object)
      {
        v22 = object;
      }

      else
      {
        countAndFlagsBits = 4999502;
        v22 = 0xE300000000000000;
      }

      v23 = sub_251251A44(countAndFlagsBits, v22, &v40);

      *(v20 + 14) = v23;
      *(v20 + 22) = 2080;
      swift_beginAccess();
      v24 = *(v2 + 24);
      sub_251252064();

      v25 = sub_25126659C();
      v27 = v26;

      v28 = sub_251251A44(v25, v27, &v40);

      *(v20 + 24) = v28;
      _os_log_impl(&dword_25124E000, v18, v19, "HeadphoneProxFeatureService: %s: Invalid Device, Return false address: %s %s", v20, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x25306F360](v21, -1, -1);
      MEMORY[0x25306F360](v20, -1, -1);
    }

    return 0;
  }

  v13 = *(*(v8 + 56) + 8 * v10);

  if ([v13 respondsToSelector_])
  {
    if ([v13 respondsToSelector_])
    {
      v14 = [v13 coreBluetoothDevice];
      if (v14)
      {
        v15 = v14;
        [v14 productID];

        LODWORD(v15) = [v13 heartRateMonitorCapability];
        return v15 == 2;
      }
    }
  }

  if (qword_2814AEED8 != -1)
  {
    swift_once();
  }

  v29 = sub_25126654C();
  __swift_project_value_buffer(v29, qword_2814AF200);

  v30 = sub_25126652C();
  v31 = sub_2512666EC();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v39[0] = v33;
    *v32 = 136315394;
    *(v32 + 4) = sub_251251A44(0xD00000000000002ALL, 0x80000002512676F0, v39);
    *(v32 + 12) = 2080;
    v34 = *(v2 + 24);
    sub_251252064();

    v35 = sub_25126659C();
    v37 = v36;

    v38 = sub_251251A44(v35, v37, v39);

    *(v32 + 14) = v38;
    _os_log_impl(&dword_25124E000, v30, v31, "HeadphoneProxFeatureService: %s: device does not support track workout, Return false %s", v32, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25306F360](v33, -1, -1);
    MEMORY[0x25306F360](v32, -1, -1);
  }

  return 0;
}

Swift::Bool __swiftcall HeadphoneProxFeatureManager.shouldShowHeadGesturesCard(deviceAddress:)(Swift::String_optional deviceAddress)
{
  v2 = v1;
  object = deviceAddress.value._object;
  countAndFlagsBits = deviceAddress.value._countAndFlagsBits;
  if (!deviceAddress.value._object)
  {
    goto LABEL_20;
  }

  v5 = sub_2512665DC();
  v7 = v6;
  swift_beginAccess();
  v8 = *(v1 + 24);
  if (!*(v8 + 16))
  {
LABEL_19:

LABEL_20:
    if (qword_2814AEED8 != -1)
    {
      swift_once();
    }

    v38 = sub_25126654C();
    __swift_project_value_buffer(v38, qword_2814AF200);

    v39 = sub_25126652C();
    v40 = sub_2512666EC();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v67 = v42;
      *v41 = 136315394;
      if (object)
      {
        v43 = object;
      }

      else
      {
        countAndFlagsBits = 4999502;
        v43 = 0xE300000000000000;
      }

      v44 = sub_251251A44(countAndFlagsBits, v43, &v67);

      *(v41 + 4) = v44;
      *(v41 + 12) = 2080;
      swift_beginAccess();
      v45 = *(v2 + 24);
      sub_251252064();

      v46 = sub_25126659C();
      v48 = v47;

      v49 = sub_251251A44(v46, v48, &v67);

      *(v41 + 14) = v49;
      _os_log_impl(&dword_25124E000, v39, v40, "HeadphoneProxFeatureService: shouldShowHeadGesturesCard: Invalid Device, Return false address: %s %s", v41, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25306F360](v42, -1, -1);
      MEMORY[0x25306F360](v41, -1, -1);
    }

    return 0;
  }

  v9 = *(v2 + 24);

  v10 = sub_2512520B0(v5, v7);
  if ((v11 & 1) == 0)
  {

    goto LABEL_19;
  }

  v12 = *(*(v8 + 56) + 8 * v10);

  if ([v12 bobbleCapability] != 2)
  {

    if (qword_2814AEED8 != -1)
    {
      swift_once();
    }

    v51 = sub_25126654C();
    __swift_project_value_buffer(v51, qword_2814AF200);

    v52 = sub_25126652C();
    v53 = sub_2512666EC();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v66[0] = v55;
      *v54 = 136315138;
      v56 = *(v2 + 24);
      sub_251252064();

      v57 = sub_25126659C();
      v59 = v58;

      v60 = sub_251251A44(v57, v59, v66);

      *(v54 + 4) = v60;
      _os_log_impl(&dword_25124E000, v52, v53, "HeadphoneProxFeatureService: shouldShowHeadGesturesCard: device does not support head gesture, Return false %s", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v55);
      MEMORY[0x25306F360](v55, -1, -1);
      MEMORY[0x25306F360](v54, -1, -1);
    }

    return 0;
  }

  v13 = sub_25125A8E4(v5, v7);
  v65 = [v13 headGesturesVersion];
  v14 = [*(v2 + 72) headGesturesVersion];
  if (qword_2814AEED8 != -1)
  {
    swift_once();
  }

  v15 = sub_25126654C();
  __swift_project_value_buffer(v15, qword_2814AF200);

  v16 = v13;

  v17 = sub_25126652C();
  v18 = sub_2512666EC();

  v64 = v14;
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v63 = v12;
    v62 = swift_slowAlloc();
    v66[0] = v62;
    *v19 = 136315906;
    *(v19 + 4) = sub_251251A44(v5, v7, v66);
    *(v19 + 12) = 2080;
    if (v65 >= v14)
    {
      v20 = 20302;
    }

    else
    {
      v20 = 5457241;
    }

    if (v65 >= v14)
    {
      v21 = 0xE200000000000000;
    }

    else
    {
      v21 = 0xE300000000000000;
    }

    v22 = sub_251251A44(v20, v21, v66);

    *(v19 + 14) = v22;
    *(v19 + 22) = 2080;
    v67 = [v16 headGesturesVersion];
    sub_2512521C8();
    v23 = sub_25126673C();
    v25 = sub_251251A44(v23, v24, v66);

    *(v19 + 24) = v25;
    *(v19 + 32) = 2080;
    v67 = [*(v2 + 72) headGesturesVersion];
    v26 = sub_25126673C();
    v28 = sub_251251A44(v26, v27, v66);

    *(v19 + 34) = v28;
    _os_log_impl(&dword_25124E000, v17, v18, "HeadphoneProxFeatureService: [%s] shouldShowHeadGesturesCard: %s, Current Version: %s, Target Version: %s", v19, 0x2Au);
    swift_arrayDestroy();
    v12 = v63;
    MEMORY[0x25306F360](v62, -1, -1);
    MEMORY[0x25306F360](v19, -1, -1);
  }

  v29 = sub_2512665AC();
  CFPreferencesAppSynchronize(v29);

  v30 = sub_2512665AC();
  v31 = sub_2512665AC();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v30, v31, 0);

  if (AppBooleanValue)
  {

    v33 = sub_25126652C();
    v34 = sub_2512666EC();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v66[0] = v36;
      *v35 = 136315138;
      v37 = sub_251251A44(v5, v7, v66);

      *(v35 + 4) = v37;
      _os_log_impl(&dword_25124E000, v33, v34, "HeadphoneProxFeatureService: [%s] shouldShowHeadGesturesCard: Force Show!", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v36);
      MEMORY[0x25306F360](v36, -1, -1);
      MEMORY[0x25306F360](v35, -1, -1);
    }

    else
    {
    }
  }

  else
  {
  }

  return v65 < v64 || AppBooleanValue != 0;
}

Swift::Void __swiftcall HeadphoneProxFeatureManager.setHeadGesturesConfig(deviceAddress:enabled:)(Swift::String_optional deviceAddress, Swift::Bool enabled)
{
  v3 = v2;
  object = deviceAddress.value._object;
  countAndFlagsBits = deviceAddress.value._countAndFlagsBits;
  if (!deviceAddress.value._object)
  {
    goto LABEL_17;
  }

  v7 = sub_2512665DC();
  v9 = v8;
  swift_beginAccess();
  v10 = *(v2 + 24);
  if (!*(v10 + 16))
  {
LABEL_16:

LABEL_17:
    if (qword_2814AEED8 != -1)
    {
      swift_once();
    }

    v24 = sub_25126654C();
    __swift_project_value_buffer(v24, qword_2814AF200);

    v25 = sub_25126652C();
    v26 = sub_2512666EC();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v42[0] = v28;
      *v27 = 136315394;
      swift_beginAccess();
      v29 = *(v3 + 24);
      sub_251252064();

      v30 = sub_25126659C();
      v32 = v31;

      v33 = sub_251251A44(v30, v32, v42);

      *(v27 + 4) = v33;
      *(v27 + 12) = 2080;
      if (object)
      {
        v34 = countAndFlagsBits;
      }

      else
      {
        v34 = 4999502;
      }

      if (object)
      {
        v35 = object;
      }

      else
      {
        v35 = 0xE300000000000000;
      }

      v36 = sub_251251A44(v34, v35, v42);

      *(v27 + 14) = v36;
      _os_log_impl(&dword_25124E000, v25, v26, "HeadphoneProxFeatureService: setHeadGesturesConfig: Invalid Device, Return %s %s", v27, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25306F360](v28, -1, -1);
      MEMORY[0x25306F360](v27, -1, -1);
    }

    return;
  }

  v11 = *(v3 + 24);

  v12 = sub_2512520B0(v7, v9);
  if ((v13 & 1) == 0)
  {

    goto LABEL_16;
  }

  v14 = *(*(v10 + 56) + 8 * v12);

  if (qword_2814AEED8 != -1)
  {
    swift_once();
  }

  v15 = sub_25126654C();
  __swift_project_value_buffer(v15, qword_2814AF200);

  v16 = sub_25126652C();
  v17 = sub_2512666EC();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v41[0] = v19;
    *v18 = 136315394;
    v20 = sub_251251A44(v7, v9, v41);

    *(v18 + 4) = v20;
    *(v18 + 12) = 2080;
    if (enabled)
    {
      v21 = 0x64656C62616E45;
    }

    else
    {
      v21 = 0x64656C6261736944;
    }

    if (enabled)
    {
      v22 = 0xE700000000000000;
    }

    else
    {
      v22 = 0xE800000000000000;
    }

    v23 = sub_251251A44(v21, v22, v41);

    *(v18 + 14) = v23;
    _os_log_impl(&dword_25124E000, v16, v17, "HeadphoneProxFeatureService: [%s] setHeadGesturesConfig: %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25306F360](v19, -1, -1);
    MEMORY[0x25306F360](v18, -1, -1);

    if (!enabled)
    {
      goto LABEL_14;
    }
  }

  else
  {

    if (!enabled)
    {
LABEL_14:

      return;
    }
  }

  v37 = [objc_allocWithZone(MEMORY[0x277CEF808]) init];
  [v37 setHeadGestureToggle_];
  swift_beginAccess();
  v38 = *(v3 + 40);
  v39 = [v14 identifier];
  if (!v39)
  {
    sub_2512665BC();
    v39 = sub_2512665AC();
  }

  v41[4] = sub_251254158;
  v41[5] = 0;
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 1107296256;
  v41[2] = sub_251251908;
  v41[3] = &block_descriptor_0;
  v40 = _Block_copy(v41);
  [v38 sendDeviceConfig:v37 identifier:v39 completion:v40];
  _Block_release(v40);
}

void sub_251254158(NSObject *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_2814AEED8 != -1)
    {
      swift_once();
    }

    v3 = sub_25126654C();
    __swift_project_value_buffer(v3, qword_2814AF200);
    v4 = a1;
    v5 = sub_25126652C();
    v6 = sub_2512666DC();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v18 = v8;
      *v7 = 136315138;
      v9 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F427A90, &qword_2512671B8);
      v10 = sub_2512665CC();
      v12 = sub_251251A44(v10, v11, &v18);

      *(v7 + 4) = v12;
      _os_log_impl(&dword_25124E000, v5, v6, "HeadphoneProxFeatureService:  Failed to update AAD Device Config for Bobble, Error: %s ", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x25306F360](v8, -1, -1);
      MEMORY[0x25306F360](v7, -1, -1);

      return;
    }

    v16 = a1;
  }

  else
  {
    if (qword_2814AEED8 != -1)
    {
      swift_once();
    }

    v13 = sub_25126654C();
    __swift_project_value_buffer(v13, qword_2814AF200);
    oslog = sub_25126652C();
    v14 = sub_2512666EC();
    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_25124E000, oslog, v14, "HeadphoneProxFeatureService: Successfully Updated AAD Device Config for Bobble", v15, 2u);
      MEMORY[0x25306F360](v15, -1, -1);
    }

    v16 = oslog;
  }
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_251254410()
{
  [v0 whatsNewVersion];
  v1 = sub_2512667BC();
  v23 = 0x654E207374616857;
  v24 = 0xEB00000000203A77;
  MEMORY[0x25306ECA0](v1);

  [v0 voiceQualityVersion];
  v2 = sub_2512667BC();
  MEMORY[0x25306ECA0](v2);

  MEMORY[0x25306ECA0](0xD000000000000011, 0x8000000251267740);

  [v0 headGesturesVersion];
  v3 = sub_2512667BC();
  MEMORY[0x25306ECA0](v3);

  MEMORY[0x25306ECA0](0xD000000000000011, 0x8000000251267760);

  [v0 personalTranslatorVersion];
  v4 = sub_2512667BC();
  MEMORY[0x25306ECA0](v4);

  MEMORY[0x25306ECA0](0xD000000000000014, 0x8000000251267780);

  [v0 heartRateVersion];
  v5 = sub_2512667BC();
  strcpy(v22, ", Heart Rate: ");
  HIBYTE(v22[1]) = -18;
  MEMORY[0x25306ECA0](v5);

  MEMORY[0x25306ECA0](v22[0], v22[1]);

  [v0 pauseMediaOnSleepVersion];
  v6 = sub_2512667BC();
  MEMORY[0x25306ECA0](v6);

  MEMORY[0x25306ECA0](0xD000000000000018, 0x80000002512677A0);

  [v0 hearingAssistVersion];
  v7 = sub_2512667BC();
  strcpy(v22, ", Yodel: ");
  WORD1(v22[1]) = 0;
  HIDWORD(v22[1]) = -385875968;
  MEMORY[0x25306ECA0](v7);

  MEMORY[0x25306ECA0](v22[0], v22[1]);

  if (qword_2814AEED8 != -1)
  {
    swift_once();
  }

  v8 = sub_25126654C();
  __swift_project_value_buffer(v8, qword_2814AF200);
  v10 = v23;
  v9 = v24;
  v11 = v0;

  v12 = sub_25126652C();
  v13 = sub_2512666EC();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v22[0] = v15;
    *v14 = 136315394;
    v16 = [v11 bluetoothAddress];
    v17 = sub_2512665BC();
    v19 = v18;

    v20 = sub_251251A44(v17, v19, v22);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    v21 = sub_251251A44(v10, v9, v22);

    *(v14 + 14) = v21;
    _os_log_impl(&dword_25124E000, v12, v13, "HeadphoneProxFeatureService: [%s] printProxCardInfo: %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25306F360](v15, -1, -1);
    MEMORY[0x25306F360](v14, -1, -1);
  }

  else
  {
  }
}

void *sub_2512548E0()
{
  [v0 setHeadGesturesVersion_];
  [v0 setPersonalTranslatorVersion_];
  [v0 setVoiceQualityVersion_];
  [v0 setWhatsNewVersion_];
  [v0 setHeartRateVersion_];
  [v0 setHearingAssistVersion_];
  [v0 setPauseMediaOnSleepVersion_];
  [v0 setUsbAudioVersion_];
  [v0 setChargingRemindersVersion_];
  [v0 setNewChargingStatusVersion_];
  [v0 setRemoteCameraControlVersion_];
  return v0;
}

id AudioAccessoryDevice.cbDevice.getter()
{
  if (![v0 respondsToSelector_])
  {
    return 0;
  }

  if (([v0 respondsToSelector_] & 1) == 0)
  {
    return 0;
  }

  result = [v0 coreBluetoothDevice];
  if (!result)
  {
    return 0;
  }

  return result;
}

uint64_t sub_251254A44()
{
  v0 = sub_25126654C();
  __swift_allocate_value_buffer(v0, qword_2814AF200);
  __swift_project_value_buffer(v0, qword_2814AF200);
  return sub_25126653C();
}

uint64_t sub_251254AC4(void *a1)
{
  sub_25126642C();
  sub_251254BE0();
  v3 = sub_25126672C();
  v5 = v4;

  swift_beginAccess();
  v6 = a1;
  v7 = *(v1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + 16);
  *(v1 + 16) = 0x8000000000000000;
  sub_25125DBE8(v6, v3, v5, isUniquelyReferenced_nonNull_native, &qword_27F427AF8, &qword_2512674E0);

  *(v1 + 16) = v10;
  return swift_endAccess();
}

unint64_t sub_251254BE0()
{
  result = qword_27F427AA8;
  if (!qword_27F427AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F427AA8);
  }

  return result;
}

uint64_t sub_251254C34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_25125DBE8(a1, a2, a3, isUniquelyReferenced_nonNull_native, &qword_27F427AF8, &qword_2512674E0);

    *v3 = v18;
  }

  else
  {
    v11 = *v3;
    v12 = sub_2512520B0(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v19 = *v4;
      if (!v15)
      {
        sub_25125E898(&qword_27F427AF8, &qword_2512674E0);
        v16 = v19;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      result = sub_25125D968(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

void sub_251254D64(void *a1)
{
  v2 = v1;
  v51 = sub_25126642C();
  v52 = v4;
  v47 = 58;
  v48 = 0xE100000000000000;
  sub_251254BE0();
  v5 = sub_25126672C();
  v7 = v6;

  swift_beginAccess();
  if (*(v2[2] + 16))
  {
    v8 = v2[2];

    sub_2512520B0(v5, v7);
    v10 = v9;

    v11 = v10 ^ 1;
  }

  else
  {

    v11 = 1;
  }

  v47 = sub_25126642C();
  v48 = v12;
  v49 = 45;
  v50 = 0xE100000000000000;
  v13 = sub_25126672C();
  v15 = v14;

  swift_beginAccess();
  v16 = a1;
  v17 = v2[2];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v46 = v2[2];
  v2[2] = 0x8000000000000000;
  sub_25125DBE8(v16, v13, v15, isUniquelyReferenced_nonNull_native, &qword_27F427AF8, &qword_2512674E0);

  v2[2] = v46;
  swift_endAccess();
  if (qword_2814AEED8 != -1)
  {
    swift_once();
  }

  v19 = sub_25126654C();
  __swift_project_value_buffer(v19, qword_2814AF200);

  v20 = sub_25126652C();
  v21 = sub_2512666EC();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v47 = v23;
    *v22 = 136315394;
    v24 = v2[2];
    sub_25126644C();

    v25 = sub_25126659C();
    v45 = v16;
    v26 = v11;
    v28 = v27;

    v29 = sub_251251A44(v25, v28, &v47);

    *(v22 + 4) = v29;
    *(v22 + 12) = 2080;
    swift_beginAccess();
    v30 = v2[3];
    sub_25125FBF4(0, &qword_27F427A80, 0x277CEF828);

    v31 = sub_25126659C();
    v33 = v32;

    v34 = sub_251251A44(v31, v33, &v47);

    *(v22 + 14) = v34;
    v11 = v26;
    v16 = v45;
    _os_log_impl(&dword_25124E000, v20, v21, "HeadphoneProxFeatureService: addTopLevelEntry headphones:%s devices:%s", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25306F360](v23, -1, -1);
    MEMORY[0x25306F360](v22, -1, -1);
  }

  sub_25126641C();
  v35 = sub_25126649C();

  if (v35)
  {
    if (v11)
    {
      v47 = sub_25126642C();
      v48 = v36;
      v49 = 45;
      v50 = 0xE100000000000000;
      v37 = sub_25126672C();
      v39 = v38;

      LOBYTE(v37) = HeadphoneProxFeatureManager._shouldShowWhatsNewCard(deviceAddress:headphoneDevice:)(v37, v39, v16);

      if (v37)
      {
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v40 = v2[8];
          ObjectType = swift_getObjectType();
          (*(v40 + 8))(v35, &unk_28634E330, ObjectType, v40);
          swift_unknownObjectRelease();
        }

        v42 = sub_25126652C();
        v43 = sub_2512666EC();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          *v44 = 0;
          _os_log_impl(&dword_25124E000, v42, v43, "HeadphoneProxFeatureService: addTopLevelEntry trigger whats new card ", v44, 2u);
          MEMORY[0x25306F360](v44, -1, -1);
        }
      }
    }
  }
}

unint64_t HeadphoneProxFeatureManager.HeadphoneProxFeature.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 5)
  {
    v7 = 0xD000000000000011;
    v8 = 0x676E696772616863;
    if (v1 != 10)
    {
      v8 = 0x6F436172656D6163;
    }

    if (v1 != 9)
    {
      v7 = v8;
    }

    v9 = 0x6C65646F79;
    v10 = 0xD000000000000010;
    if (v1 != 7)
    {
      v10 = 0xD000000000000012;
    }

    if (v1 != 6)
    {
      v9 = v10;
    }

    if (*v0 <= 8u)
    {
      return v9;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x77654E7374616877;
    v3 = 0xD000000000000014;
    v4 = 0xD000000000000010;
    if (v1 != 4)
    {
      v4 = 0xD000000000000011;
    }

    if (v1 != 3)
    {
      v3 = v4;
    }

    v5 = 0x7473654764616568;
    if (v1 != 1)
    {
      v5 = 0x6E6172546576696CLL;
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
}

uint64_t sub_2512554C4()
{
  sub_25126642C();
  sub_251254BE0();
  v0 = sub_25126672C();
  v2 = v1;

  swift_beginAccess();
  sub_251254C34(0, v0, v2);
  return swift_endAccess();
}

uint64_t sub_2512555B0(uint64_t a1, uint64_t a2, void *a3, void (*a4)(id))
{
  v5 = a3;

  a4(v5);
}

HeadphoneProxFeatureService::HeadphoneProxFeatureManager::HeadphoneProxFeature_optional __swiftcall HeadphoneProxFeatureManager.HeadphoneProxFeature.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2512667AC();

  v5 = 12;
  if (v3 < 0xC)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_251255670(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = HeadphoneProxFeatureManager.HeadphoneProxFeature.rawValue.getter();
  v4 = v3;
  if (v2 == HeadphoneProxFeatureManager.HeadphoneProxFeature.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_2512667CC();
  }

  return v7 & 1;
}

uint64_t sub_25125570C()
{
  v1 = *v0;
  sub_2512667FC();
  HeadphoneProxFeatureManager.HeadphoneProxFeature.rawValue.getter();
  sub_2512665FC();

  return sub_25126680C();
}

uint64_t sub_251255774()
{
  v2 = *v0;
  HeadphoneProxFeatureManager.HeadphoneProxFeature.rawValue.getter();
  sub_2512665FC();
}

uint64_t sub_2512557D8()
{
  v1 = *v0;
  sub_2512667FC();
  HeadphoneProxFeatureManager.HeadphoneProxFeature.rawValue.getter();
  sub_2512665FC();

  return sub_25126680C();
}

unint64_t sub_251255848@<X0>(unint64_t *a1@<X8>)
{
  result = HeadphoneProxFeatureManager.HeadphoneProxFeature.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_251255870()
{
  type metadata accessor for HeadphoneProxFeatureManager();
  swift_allocObject();
  result = sub_2512564CC();
  qword_2814AF178 = result;
  return result;
}

uint64_t static HeadphoneProxFeatureManager.shared.getter()
{
  if (qword_2814AF170 != -1)
  {
    swift_once();
  }
}

uint64_t sub_251255908(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
}

uint64_t sub_251255968()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t sub_2512559A0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;
}

uint64_t sub_251255A00()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
}

uint64_t sub_251255A38(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;
}

uint64_t sub_251255A98()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
}

void sub_251255AD0(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
  v5 = v2;
}

id sub_251255B28()
{
  swift_beginAccess();
  v1 = *(v0 + 40);

  return v1;
}

uint64_t sub_251255B6C()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 64);
  return result;
}

uint64_t sub_251255BA8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 64) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_251255C08(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 64);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_251255C9C;
}

void sub_251255C9C(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + 64) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_251255D20@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 96);
  v5 = *(v3 + 104);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_25125F518;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_25124F9C8(v4);
}

uint64_t sub_251255DB4(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_25125F4E0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 96);
  v9 = *(v7 + 104);
  *(v7 + 96) = v6;
  *(v7 + 104) = v5;
  sub_25124F9C8(v3);
  return sub_25124F9D8(v8);
}

uint64_t sub_251255E70()
{
  swift_beginAccess();
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  sub_25124F9C8(v1);
  return v1;
}

uint64_t sub_251255EC0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 96);
  v6 = *(v2 + 104);
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return sub_25124F9D8(v5);
}

uint64_t sub_251255F64@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 112);
  v5 = *(v3 + 120);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_25125FD34;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_25124F9C8(v4);
}

uint64_t sub_251255FF8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_25125FCB4;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 112);
  v9 = *(v7 + 120);
  *(v7 + 112) = v6;
  *(v7 + 120) = v5;
  sub_25124F9C8(v3);
  return sub_25124F9D8(v8);
}

uint64_t sub_2512560B4()
{
  swift_beginAccess();
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  sub_25124F9C8(v1);
  return v1;
}

uint64_t sub_251256104(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 112);
  v6 = *(v2 + 120);
  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return sub_25124F9D8(v5);
}

uint64_t sub_2512561A8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 128);
  *(v3 + 128) = v2;
}

uint64_t sub_251256208()
{
  swift_beginAccess();
  v1 = *(v0 + 128);
}

uint64_t sub_251256240(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 128);
  *(v1 + 128) = a1;
}

uint64_t sub_2512562D8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = v3[17];
  v5 = v3[18];
  v6 = v3[19];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  return sub_25125DB18(v4);
}

uint64_t sub_25125632C(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a2;
  swift_beginAccess();
  v6 = v5[17];
  v7 = v5[18];
  v8 = v5[19];
  v5[17] = v2;
  v5[18] = v3;
  v5[19] = v4;
  sub_25125DB18(v2);
  return sub_25125DB58(v6);
}

uint64_t sub_2512563B8()
{
  swift_beginAccess();
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[19];
  sub_25125DB18(v1);
  return v1;
}

uint64_t sub_25125641C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v7 = v3[17];
  v8 = v3[18];
  v9 = v3[19];
  v3[17] = a1;
  v3[18] = a2;
  v3[19] = a3;
  return sub_25125DB58(v7);
}

uint64_t sub_2512564CC()
{
  v1 = v0;
  v2 = MEMORY[0x277D84F98];
  *(v0 + 16) = MEMORY[0x277D84F98];
  *(v0 + 24) = v2;
  *(v0 + 32) = v2;
  *(v0 + 40) = [objc_allocWithZone(MEMORY[0x277CEF810]) init];
  *(v0 + 48) = [objc_allocWithZone(MEMORY[0x277CEF7F0]) init];
  *(v0 + 64) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 80) = -1;
  *(v0 + 88) = [objc_allocWithZone(MEMORY[0x277D12B98]) init];
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0u;
  if (qword_2814AEED8 != -1)
  {
    swift_once();
  }

  v3 = sub_25126654C();
  __swift_project_value_buffer(v3, qword_2814AF200);
  v4 = sub_25126652C();
  v5 = sub_2512666EC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_25124E000, v4, v5, "HeadphoneProxFeatureService: Init", v6, 2u);
    MEMORY[0x25306F360](v6, -1, -1);
  }

  v7 = objc_allocWithZone(MEMORY[0x277CEF818]);
  v8 = sub_2512665AC();
  v9 = [v7 initWithBluetoothAddress_];

  v10 = sub_2512548E0();
  *(v1 + 72) = v10;
  sub_251256EEC();
  HeadphoneProxFeatureManager.configHearingModeClient()();
  swift_beginAccess();
  if (*(v1 + 80) == -1)
  {
    sub_25125FBF4(0, &qword_2814AEED0, 0x277D85C78);
    v11 = sub_25126670C();
    v12 = swift_allocObject();
    swift_weakInit();
    v25 = sub_25125FC3C;
    v26 = v12;
    aBlock = MEMORY[0x277D85DD0];
    v22 = 1107296256;
    v23 = sub_251256C68;
    v24 = &block_descriptor_131;
    v13 = _Block_copy(&aBlock);

    swift_beginAccess();
    notify_register_dispatch("com.apple.AudioAccessory.daemonStarted", (v1 + 80), v11, v13);
    swift_endAccess();
    _Block_release(v13);
  }

  v14 = *(v1 + 48);
  v25 = sub_251256CBC;
  v26 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = sub_251256CC8;
  v24 = &block_descriptor_124;
  v15 = _Block_copy(&aBlock);
  v16 = v14;
  [v16 setInterruptionHandler_];
  _Block_release(v15);

  v17 = *(v1 + 48);
  v25 = sub_251256D0C;
  v26 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = sub_251256CC8;
  v24 = &block_descriptor_127;
  v18 = _Block_copy(&aBlock);
  v19 = v17;
  [v19 setInvalidationHandler_];
  _Block_release(v18);

  return v1;
}

Swift::Void __swiftcall HeadphoneProxFeatureManager.configHearingModeClient()()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D12B98]) init];
  v2 = *(v0 + 88);
  *(v0 + 88) = v1;
  v3 = v1;

  v19 = sub_25125B76C;
  v20 = 0;
  v15 = MEMORY[0x277D85DD0];
  v16 = 1107296256;
  v17 = sub_251256CC8;
  v18 = &block_descriptor_1;
  v4 = _Block_copy(&v15);
  [v3 setInterruptionHandler_];
  _Block_release(v4);

  v5 = *(v0 + 88);
  v19 = sub_25125B77C;
  v20 = 0;
  v15 = MEMORY[0x277D85DD0];
  v16 = 1107296256;
  v17 = sub_251256CC8;
  v18 = &block_descriptor_4;
  v6 = _Block_copy(&v15);
  v7 = v5;
  [v7 setInvalidationHandler_];
  _Block_release(v6);

  v8 = *(v0 + 88);
  v9 = swift_allocObject();
  swift_weakInit();
  v19 = sub_25125DBB0;
  v20 = v9;
  v15 = MEMORY[0x277D85DD0];
  v16 = 1107296256;
  v17 = sub_25125FD38;
  v18 = &block_descriptor_7;
  v10 = _Block_copy(&v15);
  v11 = v8;

  [v11 setDeviceRecordChangedHandler_];
  _Block_release(v10);

  v12 = *(v0 + 88);
  v19 = sub_25125BBE4;
  v20 = 0;
  v15 = MEMORY[0x277D85DD0];
  v16 = 1107296256;
  v17 = sub_251251908;
  v18 = &block_descriptor_10;
  v13 = _Block_copy(&v15);
  v14 = v12;
  [v14 activateWithCompletion_];
  _Block_release(v13);
}

uint64_t sub_251256B54()
{
  if (qword_2814AEED8 != -1)
  {
    swift_once();
  }

  v0 = sub_25126654C();
  __swift_project_value_buffer(v0, qword_2814AF200);
  v1 = sub_25126652C();
  v2 = sub_2512666EC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_25124E000, v1, v2, "HeadphoneProxFeatureService: audioaccessoryd started", v3, 2u);
    MEMORY[0x25306F360](v3, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_251256E08();
  }

  return result;
}

uint64_t sub_251256C68(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_251256CC8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_251256D18(const char *a1)
{
  if (qword_2814AEED8 != -1)
  {
    swift_once();
  }

  v2 = sub_25126654C();
  __swift_project_value_buffer(v2, qword_2814AF200);
  oslog = sub_25126652C();
  v3 = sub_2512666EC();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_25124E000, oslog, v3, a1, v4, 2u);
    MEMORY[0x25306F360](v4, -1, -1);
  }
}

void sub_251256E08()
{
  v1 = MEMORY[0x277D84F90];
  v2 = sub_25125F3E4(MEMORY[0x277D84F90], &qword_27F427AE8, &qword_2512674C8);
  swift_beginAccess();
  v3 = *(v0 + 24);
  *(v0 + 24) = v2;

  v4 = sub_25125F3E4(v1, &qword_27F427AF0, &unk_2512674D0);
  swift_beginAccess();
  v5 = *(v0 + 32);
  *(v0 + 32) = v4;

  [*(v0 + 88) invalidate];
  swift_beginAccess();
  [*(v0 + 40) invalidate];
  sub_251256EEC();
  HeadphoneProxFeatureManager.configHearingModeClient()();
}

void sub_251256EEC()
{
  v1 = v0;
  sub_25126648C();
  v2 = sub_25126647C();

  sub_25126645C();

  v3 = [objc_allocWithZone(MEMORY[0x277CEF810]) init];
  swift_beginAccess();
  v4 = *(v1 + 40);
  *(v1 + 40) = v3;
  v5 = v3;

  v6 = swift_allocObject();
  swift_weakInit();
  v28 = sub_25125E7D0;
  v29 = v6;
  aBlock = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_251256CC8;
  v27 = &block_descriptor_90;
  v7 = _Block_copy(&aBlock);

  [v5 setInterruptionHandler_];
  _Block_release(v7);

  v8 = *(v1 + 40);
  v9 = swift_allocObject();
  swift_weakInit();
  v28 = sub_25125E7F4;
  v29 = v9;
  aBlock = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_251256CC8;
  v27 = &block_descriptor_94;
  v10 = _Block_copy(&aBlock);
  v11 = v8;

  [v11 setInvalidationHandler_];
  _Block_release(v10);

  v12 = *(v1 + 40);
  v28 = sub_25125E818;
  v29 = v1;
  aBlock = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_25125FD38;
  v27 = &block_descriptor_97;
  v13 = _Block_copy(&aBlock);

  v14 = v12;

  [v14 setDeviceFoundHandler_];
  _Block_release(v13);

  v27 = &type metadata for AAFeatures;
  v28 = sub_251252128();
  LOBYTE(aBlock) = 0;
  LOBYTE(v13) = sub_25126640C();
  __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
  if (v13)
  {
    v15 = *(v1 + 40);
    v28 = sub_25125E828;
    v29 = v1;
    aBlock = MEMORY[0x277D85DD0];
    v25 = 1107296256;
    v26 = sub_25125FD38;
    v27 = &block_descriptor_106;
    v16 = _Block_copy(&aBlock);

    v17 = v15;

    [v17 setDeviceBatteryInfoUpdatedHandler_];
    _Block_release(v16);
  }

  v18 = *(v1 + 40);
  v28 = sub_25125E820;
  v29 = v1;
  aBlock = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_25125FD38;
  v27 = &block_descriptor_100;
  v19 = _Block_copy(&aBlock);

  v20 = v18;

  [v20 setDeviceLostHandler_];
  _Block_release(v19);

  v21 = *(v1 + 40);
  v28 = sub_251258614;
  v29 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_251251908;
  v27 = &block_descriptor_103;
  v22 = _Block_copy(&aBlock);
  v23 = v21;
  [v23 activateWithCompletion_];
  _Block_release(v22);
}

uint64_t sub_251257368(uint64_t a1, const char *a2)
{
  if (qword_2814AEED8 != -1)
  {
    swift_once();
  }

  v3 = sub_25126654C();
  __swift_project_value_buffer(v3, qword_2814AF200);
  v4 = sub_25126652C();
  v5 = sub_2512666EC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_25124E000, v4, v5, a2, v6, 2u);
    MEMORY[0x25306F360](v6, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = sub_25125F3E4(MEMORY[0x277D84F90], &qword_27F427AE8, &qword_2512674C8);
    swift_beginAccess();
    v10 = *(v8 + 24);
    *(v8 + 24) = v9;
  }

  return result;
}

void sub_2512574C4(void *a1, void *a2)
{
  v4 = 0x2796B2000uLL;
  v5 = [a1 bluetoothAddress];
  if (!v5)
  {
    if (qword_2814AEED8 != -1)
    {
      swift_once();
    }

    v13 = sub_25126654C();
    __swift_project_value_buffer(v13, qword_2814AF200);
    oslog = sub_25126652C();
    v14 = sub_2512666DC();
    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_25124E000, oslog, v14, "HeadphoneProxFeatureService: AADevice has no address", v15, 2u);
      MEMORY[0x25306F360](v15, -1, -1);
    }

    return;
  }

  v6 = v5;
  sub_2512665BC();

  v7 = sub_2512665DC();
  v9 = v8;

  swift_beginAccess();
  if (*(a2[3] + 16))
  {
    v10 = a2[3];

    sub_2512520B0(v7, v9);
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v16 = a2[3];
  if (!*(v16 + 16))
  {
    goto LABEL_16;
  }

  v17 = a2[3];

  v18 = sub_2512520B0(v7, v9);
  if ((v19 & 1) == 0)
  {

LABEL_16:
    [a1 bobbleCapability];
    v22 = 0;
    goto LABEL_17;
  }

  v20 = *(*(v16 + 56) + 8 * v18);

  v21 = [v20 bobbleCapability];

  v22 = v21 == [a1 bobbleCapability];
LABEL_17:
  swift_beginAccess();
  v23 = a1;
  v24 = a2[3];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v119 = a2[3];
  a2[3] = 0x8000000000000000;
  sub_25125DBE8(v23, v7, v9, isUniquelyReferenced_nonNull_native, &qword_27F427AE8, &qword_2512674C8);

  a2[3] = v119;
  swift_endAccess();
  if (v12 & v22)
  {
    goto LABEL_70;
  }

  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_70;
  }

  swift_unknownObjectRelease();
  if (qword_2814AEED8 != -1)
  {
    swift_once();
  }

  v26 = sub_25126654C();
  __swift_project_value_buffer(v26, qword_2814AF200);

  v27 = sub_25126652C();
  v28 = sub_2512666EC();

  if (os_log_type_enabled(v27, v28))
  {
    osloga = v23;
    v29 = swift_slowAlloc();
    v115 = swift_slowAlloc();
    v118[0] = v115;
    *v29 = 136315650;
    v30 = (v12 & 1) == 0;
    v31 = 20302;
    if (v12)
    {
      v32 = 20302;
    }

    else
    {
      v32 = 5457241;
    }

    v33 = 0xE200000000000000;
    if (v30)
    {
      v34 = 0xE300000000000000;
    }

    else
    {
      v34 = 0xE200000000000000;
    }

    v35 = sub_251251A44(v32, v34, v118);

    *(v29 + 4) = v35;
    *(v29 + 12) = 2080;
    if (v22)
    {
      v36 = 20302;
    }

    else
    {
      v36 = 5457241;
    }

    if (v22)
    {
      v37 = 0xE200000000000000;
    }

    else
    {
      v37 = 0xE300000000000000;
    }

    v38 = sub_251251A44(v36, v37, v118);

    *(v29 + 14) = v38;
    *(v29 + 22) = 2080;
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      v33 = 0xE300000000000000;
      v31 = 5457241;
    }

    v39 = sub_251251A44(v31, v33, v118);

    *(v29 + 24) = v39;
    _os_log_impl(&dword_25124E000, v27, v28, "HeadphoneProxFeatureService: Device Found: First Time of Connection: %s, Capability Ready: %s, Delegate Set: %s", v29, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x25306F360](v115, -1, -1);
    MEMORY[0x25306F360](v29, -1, -1);

    v23 = osloga;
    v4 = 0x2796B2000;
  }

  else
  {
  }

  v40 = sub_25126652C();
  v41 = sub_2512666EC();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v118[0] = v43;
    *v42 = 136315394;
    swift_beginAccess();
    v44 = a2[2];
    sub_25126644C();

    v45 = sub_25126659C();
    v46 = v4;
    v48 = v47;

    v49 = sub_251251A44(v45, v48, v118);
    v4 = v46;

    *(v42 + 4) = v49;
    *(v42 + 12) = 2080;
    v50 = a2[3];
    sub_25125FBF4(0, &qword_27F427A80, 0x277CEF828);

    v51 = sub_25126659C();
    v53 = v52;

    v54 = sub_251251A44(v51, v53, v118);

    *(v42 + 14) = v54;
    _os_log_impl(&dword_25124E000, v40, v41, "HeadphoneProxFeatureService: Device Found: First Time of Connection: headphones:%s devices:%s", v42, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25306F360](v43, -1, -1);
    MEMORY[0x25306F360](v42, -1, -1);
  }

  sub_25126648C();
  v55 = sub_25126647C();
  v56 = [v23 *(v4 + 1928)];
  if (v56)
  {
    v57 = v56;
    v58 = sub_2512665BC();
    v60 = v59;

    v118[0] = v58;
    v118[1] = v60;
    v113 = sub_251254BE0();
    v114 = v113;
    v111 = MEMORY[0x277D837D0];
    v112 = v113;
    v61 = sub_25126672C();
    v63 = v62;
  }

  else
  {
    v61 = 0;
    v63 = 0xE000000000000000;
  }

  v64 = sub_25126646C();

  if (*(v64 + 16))
  {
    v65 = sub_2512520B0(v61, v63);
    v67 = v66;

    if (v67)
    {
      v68 = *(*(v64 + 56) + 8 * v65);
      v69 = v68;

      goto LABEL_48;
    }
  }

  else
  {
  }

  v68 = 0;
LABEL_48:
  v70 = [v23 *(v4 + 1928)];
  if (v70)
  {
    v71 = v70;
    v72 = sub_2512665BC();
    v74 = v73;
  }

  else
  {
    v72 = 0;
    v74 = 0;
  }

  v75 = HeadphoneProxFeatureManager._shouldShowWhatsNewCard(deviceAddress:headphoneDevice:)(v72, v74, v68);

  if (v75)
  {
    v76 = sub_2512644F4(0, 1, 1, MEMORY[0x277D84F90]);
    v78 = *(v76 + 2);
    v77 = *(v76 + 3);
    if (v78 >= v77 >> 1)
    {
      v76 = sub_2512644F4((v77 > 1), v78 + 1, 1, v76);
    }

    *(v76 + 2) = v78 + 1;
    v79 = &v76[16 * v78];
    *(v79 + 4) = 0x77654E7374616877;
    *(v79 + 5) = 0xE800000000000000;
  }

  else
  {
    v76 = MEMORY[0x277D84F90];
  }

  v80 = [v23 *(v4 + 1928)];
  if (v80)
  {
    v81 = v80;
    v82 = sub_2512665BC();
    v84 = v83;
  }

  else
  {
    v82 = 0;
    v84 = 0;
  }

  v85.value._countAndFlagsBits = v82;
  v85.value._object = v84;
  v86 = HeadphoneProxFeatureManager.shouldShowUSBLosslessAudio(deviceAddress:)(v85);

  if (v86)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v76 = sub_2512644F4(0, *(v76 + 2) + 1, 1, v76);
    }

    v88 = *(v76 + 2);
    v87 = *(v76 + 3);
    if (v88 >= v87 >> 1)
    {
      v76 = sub_2512644F4((v87 > 1), v88 + 1, 1, v76);
    }

    *(v76 + 2) = v88 + 1;
    v89 = &v76[16 * v88];
    *(v89 + 4) = 0xD000000000000010;
    *(v89 + 5) = 0x80000002512675E0;
  }

  else if (!*(v76 + 2))
  {
LABEL_68:

    goto LABEL_69;
  }

  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_68;
  }

  v90 = a2[8];
  ObjectType = swift_getObjectType();
  (*(v90 + 8))(v23, v76, ObjectType, v90);

  swift_unknownObjectRelease();
LABEL_69:

LABEL_70:
  v118[3] = &type metadata for AAFeatures;
  v118[4] = sub_251252128();
  LOBYTE(v118[0]) = 0;
  v92 = sub_25126640C();
  __swift_destroy_boxed_opaque_existential_1Tm(v118);
  if ((v92 & 1) == 0)
  {
LABEL_84:
    swift_beginAccess();
    v108 = a2[14];
    if (v108)
    {
      v109 = a2[15];

      v108(v23);
      sub_25124F9D8(v108);
    }

    swift_beginAccess();
    if (a2[16])
    {
      v110 = a2[16];

      sub_25125CE68(v23);
    }

    return;
  }

  v93 = [v23 batteryInfo];
  if (v93)
  {
    v94 = v93;
    if (qword_2814AEED8 != -1)
    {
      swift_once();
    }

    v95 = sub_25126654C();
    __swift_project_value_buffer(v95, qword_2814AF200);
    v96 = v94;
    v97 = sub_25126652C();
    v98 = sub_2512666EC();

    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      *v99 = 138412290;
      *(v99 + 4) = v96;
      *v100 = v94;
      v101 = v96;
      _os_log_impl(&dword_25124E000, v97, v98, "HeadphoneProxFeatureService: battery info: %@", v99, 0xCu);
      sub_25125E830(v100);
      MEMORY[0x25306F360](v100, -1, -1);
      MEMORY[0x25306F360](v99, -1, -1);
    }

    swift_beginAccess();
    v102 = a2[12];
    if (v102)
    {
      v103 = a2[13];

      v102(v96);

      sub_25124F9D8(v102);
    }

    else
    {
    }

    goto LABEL_84;
  }

  if (qword_2814AEED8 != -1)
  {
    swift_once();
  }

  v104 = sub_25126654C();
  __swift_project_value_buffer(v104, qword_2814AF200);
  v105 = sub_25126652C();
  v106 = sub_2512666DC();
  if (os_log_type_enabled(v105, v106))
  {
    v107 = swift_slowAlloc();
    *v107 = 0;
    _os_log_impl(&dword_25124E000, v105, v106, "HeadphoneProxFeatureService: Device has no battery info", v107, 2u);
    MEMORY[0x25306F360](v107, -1, -1);
  }
}

uint64_t sub_25125811C(void *a1, uint64_t a2)
{
  if (qword_2814AEED8 != -1)
  {
    swift_once();
  }

  v4 = sub_25126654C();
  __swift_project_value_buffer(v4, qword_2814AF200);
  v5 = a1;
  v6 = sub_25126652C();
  v7 = sub_2512666EC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&dword_25124E000, v6, v7, "HeadphoneProxFeatureService: deviceBatteryInfoUpdatedHandler battery info: %@", v8, 0xCu);
    sub_25125E830(v9);
    MEMORY[0x25306F360](v9, -1, -1);
    MEMORY[0x25306F360](v8, -1, -1);
  }

  result = swift_beginAccess();
  v12 = *(a2 + 96);
  if (v12)
  {
    v13 = *(a2 + 104);

    v12(v5);
    return sub_25124F9D8(v12);
  }

  return result;
}

void sub_251258298(void *a1, uint64_t *a2)
{
  if (qword_2814AEED8 != -1)
  {
    swift_once();
  }

  v4 = sub_25126654C();
  __swift_project_value_buffer(v4, qword_2814AF200);
  v5 = a1;
  v6 = sub_25126652C();
  v7 = sub_2512666EC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v34 = v9;
    *v8 = 136315138;
    v10 = [v5 description];
    v11 = sub_2512665BC();
    v13 = v12;

    v14 = sub_251251A44(v11, v13, &v34);

    *(v8 + 4) = v14;
    _os_log_impl(&dword_25124E000, v6, v7, "HeadphoneProxFeatureService: Device Lost: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x25306F360](v9, -1, -1);
    MEMORY[0x25306F360](v8, -1, -1);
  }

  v15 = [v5 bluetoothAddress];
  if (v15)
  {
    v16 = v15;
    v17 = sub_2512665BC();
    v19 = v18;

    swift_beginAccess();
    v20 = a2[17];
    if (v20)
    {
      v22 = a2[18];
      v21 = a2[19];
      sub_25125DB18(a2[17]);

      sub_25125DB58(v20);
      if (v17 == v22 && v21 == v19)
      {

LABEL_16:
        v29 = a2[17];
        v30 = a2[18];
        v31 = a2[19];
        a2[17] = 0;
        a2[18] = 0;
        a2[19] = 0;
        sub_25125DB58(v29);
        goto LABEL_17;
      }

      v28 = sub_2512667CC();

      if (v28)
      {
        goto LABEL_16;
      }
    }

LABEL_17:
    swift_beginAccess();
    v32 = sub_25125D624(v17, v19);
    swift_endAccess();

    return;
  }

  v23 = v5;
  oslog = sub_25126652C();
  v24 = sub_2512666DC();

  if (os_log_type_enabled(oslog, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v25 = 138412290;
    *(v25 + 4) = v23;
    *v26 = v23;
    v27 = v23;
    _os_log_impl(&dword_25124E000, oslog, v24, "HeadphoneProxFeatureService: aad has no address %@", v25, 0xCu);
    sub_25125E830(v26);
    MEMORY[0x25306F360](v26, -1, -1);
    MEMORY[0x25306F360](v25, -1, -1);
  }
}

void sub_251258614(void *a1)
{
  if (qword_2814AEED8 != -1)
  {
    swift_once();
  }

  v2 = sub_25126654C();
  __swift_project_value_buffer(v2, qword_2814AF200);
  v3 = a1;
  oslog = sub_25126652C();
  v4 = sub_2512666EC();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    if (a1)
    {
      v7 = 0x64656C696146;
    }

    else
    {
      v7 = 0x6564656563637553;
    }

    if (a1)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = 0xE900000000000064;
    }

    v9 = sub_251251A44(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_25124E000, oslog, v4, "HeadphoneProxFeatureService: Device Manager Activation %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x25306F360](v6, -1, -1);
    MEMORY[0x25306F360](v5, -1, -1);
  }
}

void sub_2512587A4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    if (qword_2814AEED8 != -1)
    {
      swift_once();
    }

    v25 = sub_25126654C();
    __swift_project_value_buffer(v25, qword_2814AF200);
    oslog = sub_25126652C();
    v26 = sub_2512666EC();
    if (os_log_type_enabled(oslog, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_25124E000, oslog, v26, "HeadphoneProxFeatureService: setProxCardShowedFeatures: Invalid Device, Return", v27, 2u);
      MEMORY[0x25306F360](v27, -1, -1);
    }

LABEL_19:

    return;
  }

  v4 = v3;
  v5 = a3;
  v8 = *(a3 + 16);
  v9 = qword_2814AEED8;

  if (!v8)
  {
    if (v9 != -1)
    {
      swift_once();
    }

    v28 = sub_25126654C();
    __swift_project_value_buffer(v28, qword_2814AF200);

    oslog = sub_25126652C();
    v29 = sub_2512666EC();

    if (os_log_type_enabled(oslog, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      aBlock[0] = v31;
      *v30 = 136315138;
      v32 = sub_251251A44(a1, a2, aBlock);

      *(v30 + 4) = v32;
      _os_log_impl(&dword_25124E000, oslog, v29, "HeadphoneProxFeatureService: [%s] setProxCardShowedFeatures: Showed Feature Empty, Return", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x25306F360](v31, -1, -1);
      MEMORY[0x25306F360](v30, -1, -1);

      return;
    }

    goto LABEL_19;
  }

  if (v9 != -1)
  {
LABEL_23:
    swift_once();
  }

  v10 = sub_25126654C();
  __swift_project_value_buffer(v10, qword_2814AF200);

  v11 = sub_25126652C();
  v12 = sub_2512666EC();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    osloga = swift_slowAlloc();
    aBlock[0] = osloga;
    *v13 = 136315394;
    *(v13 + 4) = sub_251251A44(a1, a2, aBlock);
    *(v13 + 12) = 2080;
    v14 = MEMORY[0x25306ED40](v5, &type metadata for HeadphoneProxFeatureManager.HeadphoneProxFeature);
    v16 = sub_251251A44(v14, v15, aBlock);

    *(v13 + 14) = v16;
    _os_log_impl(&dword_25124E000, v11, v12, "HeadphoneProxFeatureService: [%s] setProxCardShowedFeatures: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25306F360](osloga, -1, -1);
    MEMORY[0x25306F360](v13, -1, -1);
  }

  v17 = objc_allocWithZone(MEMORY[0x277CEF818]);
  v18 = sub_2512665AC();
  v19 = [v17 initWithBluetoothAddress_];

  [v19 setHeadGesturesVersion_];
  [v19 setPersonalTranslatorVersion_];
  [v19 setVoiceQualityVersion_];
  [v19 setWhatsNewVersion_];
  [v19 setHeartRateVersion_];
  [v19 setHearingAssistVersion_];
  [v19 setPauseMediaOnSleepVersion_];
  [v19 setUsbAudioVersion_];
  v20 = 0;
  v21 = v5 + 32;
  do
  {
    v5 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    LOBYTE(aBlock[0]) = *(v21 + v20);
    sub_251258D3C(aBlock, a1, a2, v19, v4);
    ++v20;
  }

  while (v5 != v8);
  v22 = *(v4 + 48);
  v23 = swift_allocObject();
  *(v23 + 16) = a1;
  *(v23 + 24) = a2;
  aBlock[4] = sub_25125DBB8;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_251251908;
  aBlock[3] = &block_descriptor_16;
  v24 = _Block_copy(aBlock);

  [v22 modifyAAProxCardsInfo:v19 completion:v24];
  _Block_release(v24);
}

id sub_251258D3C(_BYTE *a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5)
{
  v9 = *a1;
  if (v9 > 5)
  {
    if (*a1 > 8u)
    {
      if (v9 == 9)
      {
        if (qword_2814AEED8 != -1)
        {
          swift_once();
        }

        v97 = sub_25126654C();
        __swift_project_value_buffer(v97, qword_2814AF200);

        v98 = a4;

        v99 = sub_25126652C();
        v100 = sub_2512666EC();

        v14 = a5;
        if (os_log_type_enabled(v99, v100))
        {
          v101 = swift_slowAlloc();
          v102 = swift_slowAlloc();
          v156 = v102;
          *v101 = 136315650;
          *(v101 + 4) = sub_251251A44(a2, a3, &v156);
          *(v101 + 12) = 2080;
          v17 = &selRef_chargingRemindersVersion;
          [v98 chargingRemindersVersion];
          sub_2512521C8();
          v103 = sub_25126673C();
          v105 = sub_251251A44(v103, v104, &v156);

          *(v101 + 14) = v105;
          *(v101 + 22) = 2080;
          [*(v14 + 72) chargingRemindersVersion];
          v106 = sub_25126673C();
          v108 = sub_251251A44(v106, v107, &v156);

          *(v101 + 24) = v108;
          _os_log_impl(&dword_25124E000, v99, v100, "HeadphoneProxFeatureService: [%s] setProxCardShowedFeatures: ChargingReminders: %s -> %s", v101, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x25306F360](v102, -1, -1);
          MEMORY[0x25306F360](v101, -1, -1);

          v24 = &selRef_setChargingRemindersVersion_;
        }

        else
        {

          v24 = &selRef_setChargingRemindersVersion_;
          v17 = &selRef_chargingRemindersVersion;
        }
      }

      else if (v9 == 10)
      {
        if (qword_2814AEED8 != -1)
        {
          swift_once();
        }

        v49 = sub_25126654C();
        __swift_project_value_buffer(v49, qword_2814AF200);

        v50 = a4;

        v51 = sub_25126652C();
        v52 = sub_2512666EC();

        v14 = a5;
        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          v156 = v54;
          *v53 = 136315650;
          *(v53 + 4) = sub_251251A44(a2, a3, &v156);
          *(v53 + 12) = 2080;
          v17 = &selRef_newChargingStatusVersion;
          [v50 newChargingStatusVersion];
          sub_2512521C8();
          v55 = sub_25126673C();
          v57 = sub_251251A44(v55, v56, &v156);

          *(v53 + 14) = v57;
          *(v53 + 22) = 2080;
          [*(v14 + 72) newChargingStatusVersion];
          v58 = sub_25126673C();
          v60 = sub_251251A44(v58, v59, &v156);

          *(v53 + 24) = v60;
          _os_log_impl(&dword_25124E000, v51, v52, "HeadphoneProxFeatureService: [%s] setProxCardShowedFeatures: ChargingStatus: %s -> %s", v53, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x25306F360](v54, -1, -1);
          MEMORY[0x25306F360](v53, -1, -1);

          v24 = &selRef_setNewChargingStatusVersion_;
        }

        else
        {

          v24 = &selRef_setNewChargingStatusVersion_;
          v17 = &selRef_newChargingStatusVersion;
        }
      }

      else
      {
        if (qword_2814AEED8 != -1)
        {
          swift_once();
        }

        v142 = sub_25126654C();
        __swift_project_value_buffer(v142, qword_2814AF200);

        v143 = a4;

        v144 = sub_25126652C();
        v145 = sub_2512666EC();

        v14 = a5;
        if (os_log_type_enabled(v144, v145))
        {
          v146 = swift_slowAlloc();
          v147 = swift_slowAlloc();
          v156 = v147;
          *v146 = 136315650;
          *(v146 + 4) = sub_251251A44(a2, a3, &v156);
          *(v146 + 12) = 2080;
          v17 = &selRef_remoteCameraControlVersion;
          [v143 remoteCameraControlVersion];
          sub_2512521C8();
          v148 = sub_25126673C();
          v150 = sub_251251A44(v148, v149, &v156);

          *(v146 + 14) = v150;
          *(v146 + 22) = 2080;
          [*(v14 + 72) remoteCameraControlVersion];
          v151 = sub_25126673C();
          v153 = sub_251251A44(v151, v152, &v156);

          *(v146 + 24) = v153;
          _os_log_impl(&dword_25124E000, v144, v145, "HeadphoneProxFeatureService: [%s] setProxCardShowedFeatures: CameraControls: %s -> %s", v146, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x25306F360](v147, -1, -1);
          MEMORY[0x25306F360](v146, -1, -1);

          v24 = &selRef_setRemoteCameraControlVersion_;
        }

        else
        {

          v24 = &selRef_setRemoteCameraControlVersion_;
          v17 = &selRef_remoteCameraControlVersion;
        }
      }
    }

    else if (v9 == 6)
    {
      if (qword_2814AEED8 != -1)
      {
        swift_once();
      }

      v73 = sub_25126654C();
      __swift_project_value_buffer(v73, qword_2814AF200);

      v74 = a4;

      v75 = sub_25126652C();
      v76 = sub_2512666EC();

      v14 = a5;
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        v156 = v78;
        *v77 = 136315650;
        *(v77 + 4) = sub_251251A44(a2, a3, &v156);
        *(v77 + 12) = 2080;
        v17 = &selRef_hearingAssistVersion;
        [v74 hearingAssistVersion];
        sub_2512521C8();
        v79 = sub_25126673C();
        v81 = sub_251251A44(v79, v80, &v156);

        *(v77 + 14) = v81;
        *(v77 + 22) = 2080;
        [*(v14 + 72) hearingAssistVersion];
        v82 = sub_25126673C();
        v84 = sub_251251A44(v82, v83, &v156);

        *(v77 + 24) = v84;
        _os_log_impl(&dword_25124E000, v75, v76, "HeadphoneProxFeatureService: [%s] setProxCardShowedFeatures: Yodel: %s -> %s", v77, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x25306F360](v78, -1, -1);
        MEMORY[0x25306F360](v77, -1, -1);

        v24 = &selRef_setHearingAssistVersion_;
      }

      else
      {

        v24 = &selRef_setHearingAssistVersion_;
        v17 = &selRef_hearingAssistVersion;
      }
    }

    else
    {
      if (v9 != 7)
      {
        if (qword_2814AEED8 != -1)
        {
          swift_once();
        }

        v122 = sub_25126654C();
        __swift_project_value_buffer(v122, qword_2814AF200);

        v123 = a4;

        v111 = sub_25126652C();
        v112 = sub_2512666EC();

        v14 = a5;
        if (os_log_type_enabled(v111, v112))
        {
          v113 = swift_slowAlloc();
          v114 = swift_slowAlloc();
          v156 = v114;
          *v113 = 136315650;
          *(v113 + 4) = sub_251251A44(a2, a3, &v156);
          *(v113 + 12) = 2080;
          v17 = &selRef_personalTranslatorVersion;
          [v123 personalTranslatorVersion];
          sub_2512521C8();
          v124 = sub_25126673C();
          v126 = sub_251251A44(v124, v125, &v156);

          *(v113 + 14) = v126;
          *(v113 + 22) = 2080;
          [*(v14 + 72) personalTranslatorVersion];
          v127 = sub_25126673C();
          v129 = sub_251251A44(v127, v128, &v156);

          *(v113 + 24) = v129;
          v121 = "HeadphoneProxFeatureService: [%s] setProxCardShowedFeatures: PersonalTranslator: %s -> %s";
          goto LABEL_52;
        }

LABEL_61:

        v24 = &selRef_setPersonalTranslatorVersion_;
        v17 = &selRef_personalTranslatorVersion;
        return [a4 *v24];
      }

      if (qword_2814AEED8 != -1)
      {
        swift_once();
      }

      v25 = sub_25126654C();
      __swift_project_value_buffer(v25, qword_2814AF200);

      v26 = a4;

      v27 = sub_25126652C();
      v28 = sub_2512666EC();

      v14 = a5;
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v156 = v30;
        *v29 = 136315650;
        *(v29 + 4) = sub_251251A44(a2, a3, &v156);
        *(v29 + 12) = 2080;
        v17 = &selRef_usbAudioVersion;
        [v26 usbAudioVersion];
        sub_2512521C8();
        v31 = sub_25126673C();
        v33 = sub_251251A44(v31, v32, &v156);

        *(v29 + 14) = v33;
        *(v29 + 22) = 2080;
        [*(v14 + 72) usbAudioVersion];
        v34 = sub_25126673C();
        v36 = sub_251251A44(v34, v35, &v156);

        *(v29 + 24) = v36;
        _os_log_impl(&dword_25124E000, v27, v28, "HeadphoneProxFeatureService: [%s] setProxCardShowedFeatures: UsbLosslessAudio: %s -> %s", v29, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x25306F360](v30, -1, -1);
        MEMORY[0x25306F360](v29, -1, -1);

        v24 = &selRef_setUsbAudioVersion_;
      }

      else
      {

        v24 = &selRef_setUsbAudioVersion_;
        v17 = &selRef_usbAudioVersion;
      }
    }
  }

  else if (*a1 > 2u)
  {
    if (v9 == 3)
    {
      if (qword_2814AEED8 != -1)
      {
        swift_once();
      }

      v85 = sub_25126654C();
      __swift_project_value_buffer(v85, qword_2814AF200);

      v86 = a4;

      v87 = sub_25126652C();
      v88 = sub_2512666EC();

      v14 = a5;
      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        v156 = v90;
        *v89 = 136315650;
        *(v89 + 4) = sub_251251A44(a2, a3, &v156);
        *(v89 + 12) = 2080;
        v17 = &selRef_voiceQualityVersion;
        [v86 voiceQualityVersion];
        sub_2512521C8();
        v91 = sub_25126673C();
        v93 = sub_251251A44(v91, v92, &v156);

        *(v89 + 14) = v93;
        *(v89 + 22) = 2080;
        [*(v14 + 72) voiceQualityVersion];
        v94 = sub_25126673C();
        v96 = sub_251251A44(v94, v95, &v156);

        *(v89 + 24) = v96;
        _os_log_impl(&dword_25124E000, v87, v88, "HeadphoneProxFeatureService: [%s] setProxCardShowedFeatures: Voice Quality: %s -> %s", v89, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x25306F360](v90, -1, -1);
        MEMORY[0x25306F360](v89, -1, -1);

        v24 = &selRef_setVoiceQualityVersion_;
      }

      else
      {

        v24 = &selRef_setVoiceQualityVersion_;
        v17 = &selRef_voiceQualityVersion;
      }
    }

    else if (v9 == 4)
    {
      if (qword_2814AEED8 != -1)
      {
        swift_once();
      }

      v37 = sub_25126654C();
      __swift_project_value_buffer(v37, qword_2814AF200);

      v38 = a4;

      v39 = sub_25126652C();
      v40 = sub_2512666EC();

      v14 = a5;
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v156 = v42;
        *v41 = 136315650;
        *(v41 + 4) = sub_251251A44(a2, a3, &v156);
        *(v41 + 12) = 2080;
        v17 = &selRef_heartRateVersion;
        [v38 heartRateVersion];
        sub_2512521C8();
        v43 = sub_25126673C();
        v45 = sub_251251A44(v43, v44, &v156);

        *(v41 + 14) = v45;
        *(v41 + 22) = 2080;
        [*(v14 + 72) heartRateVersion];
        v46 = sub_25126673C();
        v48 = sub_251251A44(v46, v47, &v156);

        *(v41 + 24) = v48;
        _os_log_impl(&dword_25124E000, v39, v40, "HeadphoneProxFeatureService: [%s] setProxCardShowedFeatures: heartRateMonitor: %s -> %s", v41, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x25306F360](v42, -1, -1);
        MEMORY[0x25306F360](v41, -1, -1);

        v24 = &selRef_setHeartRateVersion_;
      }

      else
      {

        v24 = &selRef_setHeartRateVersion_;
        v17 = &selRef_heartRateVersion;
      }
    }

    else
    {
      if (qword_2814AEED8 != -1)
      {
        swift_once();
      }

      v130 = sub_25126654C();
      __swift_project_value_buffer(v130, qword_2814AF200);

      v131 = a4;

      v132 = sub_25126652C();
      v133 = sub_2512666EC();

      v14 = a5;
      if (os_log_type_enabled(v132, v133))
      {
        v134 = swift_slowAlloc();
        v135 = swift_slowAlloc();
        v156 = v135;
        *v134 = 136315650;
        *(v134 + 4) = sub_251251A44(a2, a3, &v156);
        *(v134 + 12) = 2080;
        v17 = &selRef_pauseMediaOnSleepVersion;
        [v131 pauseMediaOnSleepVersion];
        sub_2512521C8();
        v136 = sub_25126673C();
        v138 = sub_251251A44(v136, v137, &v156);

        *(v134 + 14) = v138;
        *(v134 + 22) = 2080;
        [*(v14 + 72) pauseMediaOnSleepVersion];
        v139 = sub_25126673C();
        v141 = sub_251251A44(v139, v140, &v156);

        *(v134 + 24) = v141;
        _os_log_impl(&dword_25124E000, v132, v133, "HeadphoneProxFeatureService: [%s] setProxCardShowedFeatures: pauseMediaOnSleep: %s -> %s", v134, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x25306F360](v135, -1, -1);
        MEMORY[0x25306F360](v134, -1, -1);

        v24 = &selRef_setPauseMediaOnSleepVersion_;
      }

      else
      {

        v24 = &selRef_setPauseMediaOnSleepVersion_;
        v17 = &selRef_pauseMediaOnSleepVersion;
      }
    }
  }

  else
  {
    if (*a1)
    {
      if (v9 == 1)
      {
        if (qword_2814AEED8 != -1)
        {
          swift_once();
        }

        v10 = sub_25126654C();
        __swift_project_value_buffer(v10, qword_2814AF200);

        v11 = a4;

        v12 = sub_25126652C();
        v13 = sub_2512666EC();

        v14 = a5;
        if (os_log_type_enabled(v12, v13))
        {
          v15 = swift_slowAlloc();
          v16 = swift_slowAlloc();
          v156 = v16;
          *v15 = 136315650;
          *(v15 + 4) = sub_251251A44(a2, a3, &v156);
          *(v15 + 12) = 2080;
          v17 = &selRef_headGesturesVersion;
          [v11 headGesturesVersion];
          sub_2512521C8();
          v18 = sub_25126673C();
          v20 = sub_251251A44(v18, v19, &v156);

          *(v15 + 14) = v20;
          *(v15 + 22) = 2080;
          [*(v14 + 72) headGesturesVersion];
          v21 = sub_25126673C();
          v23 = sub_251251A44(v21, v22, &v156);

          *(v15 + 24) = v23;
          _os_log_impl(&dword_25124E000, v12, v13, "HeadphoneProxFeatureService: [%s] setProxCardShowedFeatures: Head Gestures: %s -> %s", v15, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x25306F360](v16, -1, -1);
          MEMORY[0x25306F360](v15, -1, -1);

          v24 = &selRef_setHeadGesturesVersion_;
        }

        else
        {

          v24 = &selRef_setHeadGesturesVersion_;
          v17 = &selRef_headGesturesVersion;
        }

        return [a4 *v24];
      }

      if (qword_2814AEED8 != -1)
      {
        swift_once();
      }

      v109 = sub_25126654C();
      __swift_project_value_buffer(v109, qword_2814AF200);

      v110 = a4;

      v111 = sub_25126652C();
      v112 = sub_2512666EC();

      v14 = a5;
      if (os_log_type_enabled(v111, v112))
      {
        v113 = swift_slowAlloc();
        v114 = swift_slowAlloc();
        v156 = v114;
        *v113 = 136315650;
        *(v113 + 4) = sub_251251A44(a2, a3, &v156);
        *(v113 + 12) = 2080;
        v17 = &selRef_personalTranslatorVersion;
        [v110 personalTranslatorVersion];
        sub_2512521C8();
        v115 = sub_25126673C();
        v117 = sub_251251A44(v115, v116, &v156);

        *(v113 + 14) = v117;
        *(v113 + 22) = 2080;
        [*(v14 + 72) personalTranslatorVersion];
        v118 = sub_25126673C();
        v120 = sub_251251A44(v118, v119, &v156);

        *(v113 + 24) = v120;
        v121 = "HeadphoneProxFeatureService: [%s] setProxCardShowedFeatures: Live Translation: %s -> %s";
LABEL_52:
        _os_log_impl(&dword_25124E000, v111, v112, v121, v113, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x25306F360](v114, -1, -1);
        MEMORY[0x25306F360](v113, -1, -1);

        v24 = &selRef_setPersonalTranslatorVersion_;
        return [a4 *v24];
      }

      goto LABEL_61;
    }

    if (qword_2814AEED8 != -1)
    {
      swift_once();
    }

    v61 = sub_25126654C();
    __swift_project_value_buffer(v61, qword_2814AF200);

    v62 = a4;

    v63 = sub_25126652C();
    v64 = sub_2512666EC();

    v14 = a5;
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v156 = v66;
      *v65 = 136315650;
      *(v65 + 4) = sub_251251A44(a2, a3, &v156);
      *(v65 + 12) = 2080;
      v17 = &selRef_whatsNewVersion;
      [v62 whatsNewVersion];
      sub_2512521C8();
      v67 = sub_25126673C();
      v69 = sub_251251A44(v67, v68, &v156);

      *(v65 + 14) = v69;
      *(v65 + 22) = 2080;
      [*(v14 + 72) whatsNewVersion];
      v70 = sub_25126673C();
      v72 = sub_251251A44(v70, v71, &v156);

      *(v65 + 24) = v72;
      _os_log_impl(&dword_25124E000, v63, v64, "HeadphoneProxFeatureService: [%s] setProxCardShowedFeatures: Whats New: %s -> %s", v65, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x25306F360](v66, -1, -1);
      MEMORY[0x25306F360](v65, -1, -1);

      v24 = &selRef_setWhatsNewVersion_;
    }

    else
    {

      v24 = &selRef_setWhatsNewVersion_;
      v17 = &selRef_whatsNewVersion;
    }
  }

  return [a4 *v24];
}

void sub_25125A600(void *a1, uint64_t a2, unint64_t a3)
{
  if (a1)
  {
    if (qword_2814AEED8 != -1)
    {
      swift_once();
    }

    v6 = sub_25126654C();
    __swift_project_value_buffer(v6, qword_2814AF200);

    v7 = a1;
    oslog = sub_25126652C();
    v8 = sub_2512666DC();

    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v20 = v10;
      *v9 = 136315394;
      *(v9 + 4) = sub_251251A44(a2, a3, &v20);
      *(v9 + 12) = 2080;
      swift_getErrorValue();
      v11 = sub_2512667EC();
      v13 = sub_251251A44(v11, v12, &v20);

      *(v9 + 14) = v13;
      _os_log_impl(&dword_25124E000, oslog, v8, "HeadphoneProxFeatureService: [%s] setProxCardShowedFeatures: Failed: %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25306F360](v10, -1, -1);
      v14 = v9;
LABEL_10:
      MEMORY[0x25306F360](v14, -1, -1);

      return;
    }
  }

  else
  {
    if (qword_2814AEED8 != -1)
    {
      swift_once();
    }

    v15 = sub_25126654C();
    __swift_project_value_buffer(v15, qword_2814AF200);

    oslog = sub_25126652C();
    v16 = sub_2512666EC();

    if (os_log_type_enabled(oslog, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v20 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_251251A44(a2, a3, &v20);
      _os_log_impl(&dword_25124E000, oslog, v16, "HeadphoneProxFeatureService: [%s] setProxCardShowedFeatures: Succeeded", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x25306F360](v18, -1, -1);
      v14 = v17;
      goto LABEL_10;
    }
  }
}

id sub_25125A8E4(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v35 = sub_25126657C();
  v6 = *(v35 - 8);
  v7 = *(v6 + 64);
  v8 = (MEMORY[0x28223BE20])();
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v34 - v11;
  v13 = swift_allocObject();
  v14 = objc_allocWithZone(MEMORY[0x277CEF818]);
  v15 = sub_2512665AC();
  v16 = [v14 initWithBluetoothAddress_];

  v17 = sub_2512548E0();
  *(v13 + 16) = v17;
  v36 = v13 + 16;
  v18 = dispatch_group_create();
  dispatch_group_enter(v18);
  v19 = *(v3 + 48);
  v20 = sub_2512665AC();
  v21 = swift_allocObject();
  v34 = a1;
  v21[2] = a1;
  v21[3] = a2;
  v21[4] = v13;
  v21[5] = v18;
  aBlock[4] = sub_25125FC44;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25125B1F4;
  aBlock[3] = &block_descriptor_140;
  v22 = _Block_copy(aBlock);

  v37 = v13;

  v23 = v18;

  [v19 fetchAAProxCardsInfoForDeviceWithAddress:v20 completion:v22];
  _Block_release(v22);

  sub_25126656C();
  sub_25126658C();
  v24 = *(v6 + 8);
  v25 = v35;
  v24(v10, v35);
  sub_2512666FC();
  v24(v12, v25);
  if ((sub_25126655C() & 1) == 0)
  {
    goto LABEL_7;
  }

  if (qword_2814AEED8 != -1)
  {
    swift_once();
  }

  v26 = sub_25126654C();
  __swift_project_value_buffer(v26, qword_2814AF200);

  v27 = sub_25126652C();
  v28 = sub_2512666EC();

  if (!os_log_type_enabled(v27, v28))
  {

LABEL_7:
    goto LABEL_8;
  }

  v29 = swift_slowAlloc();
  v30 = v23;
  v31 = swift_slowAlloc();
  aBlock[0] = v31;
  *v29 = 136315138;
  *(v29 + 4) = sub_251251A44(v34, a2, aBlock);
  _os_log_impl(&dword_25124E000, v27, v28, "HeadphoneProxFeatureService: [%s] getProxCardInfoForDevice: Timed Out", v29, 0xCu);
  __swift_destroy_boxed_opaque_existential_1Tm(v31);
  MEMORY[0x25306F360](v31, -1, -1);
  MEMORY[0x25306F360](v29, -1, -1);

LABEL_8:
  swift_beginAccess();
  v32 = *(v37 + 16);

  return v32;
}

void sub_25125ACE8(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, NSObject *a6)
{
  if (a2)
  {
    if (qword_2814AEED8 != -1)
    {
      swift_once();
    }

    v10 = sub_25126654C();
    __swift_project_value_buffer(v10, qword_2814AF200);

    v11 = sub_25126652C();
    v12 = sub_2512666EC();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v34[0] = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_251251A44(a3, a4, v34);
      _os_log_impl(&dword_25124E000, v11, v12, "HeadphoneProxFeatureService: [%s] getProxCardInfoForDevice: Failed, Go with Target Info", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x25306F360](v14, -1, -1);
      MEMORY[0x25306F360](v13, -1, -1);
    }

    v15 = objc_allocWithZone(MEMORY[0x277CEF818]);
    v16 = sub_2512665AC();
    v17 = [v15 initWithBluetoothAddress_];

    v18 = sub_2512548E0();
LABEL_7:
    swift_beginAccess();
    v19 = *(a5 + 16);
    *(a5 + 16) = v18;
    goto LABEL_14;
  }

  if (!a1)
  {
    if (qword_2814AEED8 != -1)
    {
      swift_once();
    }

    v27 = sub_25126654C();
    __swift_project_value_buffer(v27, qword_2814AF200);

    v28 = sub_25126652C();
    v29 = sub_2512666EC();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v34[0] = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_251251A44(a3, a4, v34);
      _os_log_impl(&dword_25124E000, v28, v29, "HeadphoneProxFeatureService: [%s] getProxCardInfoForDevice: Prox Card Info NOT Existing, Go with Default Info", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x25306F360](v31, -1, -1);
      MEMORY[0x25306F360](v30, -1, -1);
    }

    v32 = objc_allocWithZone(MEMORY[0x277CEF818]);
    v33 = sub_2512665AC();
    v18 = [v32 initWithBluetoothAddress_];

    [v18 setHeadGesturesVersion_];
    [v18 setPersonalTranslatorVersion_];
    [v18 setVoiceQualityVersion_];
    [v18 setWhatsNewVersion_];
    [v18 setHeartRateVersion_];
    [v18 setHearingAssistVersion_];
    [v18 setPauseMediaOnSleepVersion_];
    [v18 setUsbAudioVersion_];
    goto LABEL_7;
  }

  if (qword_2814AEED8 != -1)
  {
    swift_once();
  }

  v21 = sub_25126654C();
  __swift_project_value_buffer(v21, qword_2814AF200);

  v22 = sub_25126652C();
  v23 = sub_2512666EC();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v34[0] = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_251251A44(a3, a4, v34);
    _os_log_impl(&dword_25124E000, v22, v23, "HeadphoneProxFeatureService: [%s] getProxCardInfoForDevice: Prox Card Info Retrieved", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    MEMORY[0x25306F360](v25, -1, -1);
    MEMORY[0x25306F360](v24, -1, -1);
  }

  swift_beginAccess();
  v19 = *(a5 + 16);
  *(a5 + 16) = a1;
  v18 = a1;
LABEL_14:

  v26 = v18;
  sub_251254410();

  dispatch_group_leave(a6);
}

void sub_25125B1F4(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

id sub_25125B280(uint64_t a1, unint64_t a2, char *a3)
{
  v4 = v3;
  v7 = *a3;
  if (!a2)
  {
    goto LABEL_10;
  }

  v8 = sub_2512665DC();
  v10 = v9;
  swift_beginAccess();
  v11 = *(v3 + 32);
  if (!*(v11 + 16))
  {
    goto LABEL_8;
  }

  v12 = *(v4 + 32);

  v13 = sub_2512520B0(v8, v10);
  if ((v14 & 1) == 0)
  {

LABEL_8:

    goto LABEL_10;
  }

  v15 = *(*(v11 + 56) + 8 * v13);

  swift_beginAccess();
  v16 = *(v4 + 24);
  if (*(v16 + 16))
  {
    v17 = *(v4 + 24);

    v18 = sub_2512520B0(v8, v10);
    v20 = v19;

    if (v20)
    {
      v21 = *(*(v16 + 56) + 8 * v18);

      return v21;
    }
  }

LABEL_10:
  if (qword_2814AEED8 != -1)
  {
    swift_once();
  }

  v23 = sub_25126654C();
  __swift_project_value_buffer(v23, qword_2814AF200);

  v24 = sub_25126652C();
  v25 = sub_2512666DC();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v44 = v27;
    *v26 = 136315906;
    v28 = HeadphoneProxFeatureManager.HeadphoneProxFeature.rawValue.getter();
    v30 = sub_251251A44(v28, v29, &v44);

    *(v26 + 4) = v30;
    *(v26 + 12) = 2080;
    if (a2)
    {
      v31 = a1;
    }

    else
    {
      v31 = 4999502;
    }

    if (a2)
    {
      v32 = a2;
    }

    else
    {
      v32 = 0xE300000000000000;
    }

    v33 = sub_251251A44(v31, v32, &v44);

    *(v26 + 14) = v33;
    *(v26 + 22) = 2080;
    swift_beginAccess();
    v34 = *(v4 + 24);
    sub_25125FBF4(0, &qword_27F427A80, 0x277CEF828);

    v35 = sub_25126659C();
    v37 = v36;

    v38 = sub_251251A44(v35, v37, &v44);

    *(v26 + 24) = v38;
    *(v26 + 32) = 2080;
    swift_beginAccess();
    v39 = *(v4 + 32);
    sub_25125FBF4(0, &qword_27F427AB0, 0x277D12B88);

    v40 = sub_25126659C();
    v42 = v41;

    v43 = sub_251251A44(v40, v42, &v44);

    *(v26 + 34) = v43;
    _os_log_impl(&dword_25124E000, v24, v25, "HeadphoneProxFeatureService: hearingRecordWithDevice: %s %s %s %s", v26, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x25306F360](v27, -1, -1);
    MEMORY[0x25306F360](v26, -1, -1);
  }

  return 0;
}

uint64_t HeadphoneProxFeatureManager.deinit()
{
  swift_beginAccess();
  [*(v0 + 40) invalidate];
  [*(v0 + 48) invalidate];
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  sub_25125DBC0(v0 + 56);
  v4 = *(v0 + 104);
  sub_25124F9D8(*(v0 + 96));
  v5 = *(v0 + 120);
  sub_25124F9D8(*(v0 + 112));
  v6 = *(v0 + 128);

  v7 = *(v0 + 144);
  v8 = *(v0 + 152);
  sub_25125DB58(*(v0 + 136));
  return v0;
}

uint64_t HeadphoneProxFeatureManager.__deallocating_deinit()
{
  HeadphoneProxFeatureManager.deinit();

  return MEMORY[0x2821FE8D8](v0, 160, 7);
}

void sub_25125B78C(uint64_t a1, const char *a2)
{
  if (qword_2814AEED8 != -1)
  {
    swift_once();
  }

  v4 = sub_25126654C();
  __swift_project_value_buffer(v4, qword_2814AF200);
  oslog = sub_25126652C();
  v5 = sub_2512666DC();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v9 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_251251A44(0xD000000000000019, 0x8000000251267A80, &v9);
    *(v6 + 12) = 2048;
    *(v6 + 14) = a1;
    _os_log_impl(&dword_25124E000, oslog, v5, a2, v6, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x25306F360](v7, -1, -1);
    MEMORY[0x25306F360](v6, -1, -1);
  }
}

void sub_25125B8EC(void *a1)
{
  v2 = [a1 bluetoothAddress];
  sub_2512665BC();

  v3 = sub_2512665DC();
  v5 = v4;

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    swift_beginAccess();
    v8 = a1;
    v9 = *(v7 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v7 + 32);
    *(v7 + 32) = 0x8000000000000000;
    sub_25125DBE8(v8, v3, v5, isUniquelyReferenced_nonNull_native, &qword_27F427AF0, &unk_2512674D0);

    *(v7 + 32) = v19;
    swift_endAccess();
  }

  else
  {
  }

  if (qword_2814AEED8 != -1)
  {
    swift_once();
  }

  v11 = sub_25126654C();
  __swift_project_value_buffer(v11, qword_2814AF200);
  v12 = a1;
  v13 = sub_25126652C();
  v14 = sub_2512666EC();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v20 = v17;
    *v15 = 136315650;
    *(v15 + 4) = sub_251251A44(0xD000000000000019, 0x8000000251267A80, &v20);
    *(v15 + 12) = 2048;
    *(v15 + 14) = 428;
    *(v15 + 22) = 2112;
    *(v15 + 24) = v12;
    *v16 = v12;
    v18 = v12;
    _os_log_impl(&dword_25124E000, v13, v14, "HeadphoneProxFeatureManager: %s: %ld record received %@", v15, 0x20u);
    sub_25125E830(v16);
    MEMORY[0x25306F360](v16, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x25306F360](v17, -1, -1);
    MEMORY[0x25306F360](v15, -1, -1);
  }
}

void sub_25125BB7C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_25125BBE4(void *a1)
{
  if (a1)
  {
    if (qword_2814AEED8 != -1)
    {
      swift_once();
    }

    v2 = sub_25126654C();
    __swift_project_value_buffer(v2, qword_2814AF200);
    v3 = a1;
    oslog = sub_25126652C();
    v4 = sub_2512666DC();

    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v11 = v7;
      *v5 = 136315650;
      *(v5 + 4) = sub_251251A44(0xD000000000000019, 0x8000000251267A80, &v11);
      *(v5 + 12) = 2048;
      *(v5 + 14) = 434;
      *(v5 + 22) = 2112;
      v8 = a1;
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v5 + 24) = v9;
      *v6 = v9;
      _os_log_impl(&dword_25124E000, oslog, v4, "HeadphoneProxFeatureManager: %s: %ld failed to activate HMServiceClient %@", v5, 0x20u);
      sub_25125E830(v6);
      MEMORY[0x25306F360](v6, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      MEMORY[0x25306F360](v7, -1, -1);
      MEMORY[0x25306F360](v5, -1, -1);
    }

    else
    {
    }
  }
}

NSObject *HeadphoneProxFeatureManager.syncFetchAudioAADevice(_:)()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
  if (([v1 respondsToSelector:sel_fetchAudioAccessoryDeviceForBTAddress_]& 1) == 0)
  {
    v24 = v1;
    goto LABEL_10;
  }

  sub_2512665DC();
  v2 = v1;
  v3 = sub_2512665AC();

  v4 = [v2 fetchAudioAccessoryDeviceForBTAddress:v3];

  if (!v4)
  {
LABEL_10:
    if (qword_2814AEED8 != -1)
    {
      swift_once();
    }

    v25 = sub_25126654C();
    __swift_project_value_buffer(v25, qword_2814AF200);
    v2 = sub_25126652C();
    v26 = sub_2512666EC();
    if (os_log_type_enabled(v2, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_25124E000, v2, v26, "HeadphoneProxFeatureService: Sync Fetch returned no device)", v27, 2u);
      MEMORY[0x25306F360](v27, -1, -1);
    }

    goto LABEL_19;
  }

  v5 = [v4 bluetoothAddress];
  if (!v5)
  {
    if (qword_2814AEED8 != -1)
    {
      swift_once();
    }

    v28 = sub_25126654C();
    __swift_project_value_buffer(v28, qword_2814AF200);
    v1 = sub_25126652C();
    v29 = sub_2512666DC();
    if (os_log_type_enabled(v1, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_25124E000, v1, v29, "HeadphoneProxFeatureService: Sync Fetch AADevice has no address", v30, 2u);
      MEMORY[0x25306F360](v30, -1, -1);
    }

    v2 = v4;
LABEL_19:
    v4 = 0;
    goto LABEL_20;
  }

  v35 = v0;
  v6 = v5;
  sub_2512665BC();

  v7 = sub_2512665DC();
  v9 = v8;

  if (qword_2814AEED8 != -1)
  {
    swift_once();
  }

  v10 = sub_25126654C();
  __swift_project_value_buffer(v10, qword_2814AF200);
  v11 = v4;
  v12 = sub_25126652C();
  v13 = sub_2512666EC();

  if (os_log_type_enabled(v12, v13))
  {
    v34 = v7;
    v14 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v37 = v32;
    *v14 = 136315138;
    v15 = v11;
    v16 = [v15 description];
    v17 = sub_2512665BC();
    v33 = v11;
    v19 = v18;

    v20 = sub_251251A44(v17, v19, &v37);
    v11 = v33;

    *(v14 + 4) = v20;
    _os_log_impl(&dword_25124E000, v12, v13, "HeadphoneProxFeatureService: Sync Fetch AADevice %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    MEMORY[0x25306F360](v32, -1, -1);
    v21 = v14;
    v7 = v34;
    MEMORY[0x25306F360](v21, -1, -1);
  }

  swift_beginAccess();
  v1 = v11;
  v22 = *(v35 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v36 = *(v35 + 24);
  *(v35 + 24) = 0x8000000000000000;
  sub_25125DBE8(v1, v7, v9, isUniquelyReferenced_nonNull_native, &qword_27F427AE8, &qword_2512674C8);

  *(v35 + 24) = v36;
  swift_endAccess();
LABEL_20:

  return v4;
}

uint64_t sub_25125C2A8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25125DD84();
  sub_2512663BC();

  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_25125C35C()
{
  swift_getKeyPath();
  sub_25125DD84();
  sub_2512663BC();

  swift_beginAccess();
  return *(v0 + 16);
}

uint64_t sub_25125C3E0(unsigned __int8 a1)
{
  result = swift_beginAccess();
  if (*(v1 + 16) != a1)
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_25125DD84();
    sub_2512663AC();
  }

  return result;
}

void (*sub_25125C4CC(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtC27HeadphoneProxFeatureService20HeadphoneIEDObserver___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_25125DD84();
  sub_2512663BC();

  *v4 = v1;
  swift_getKeyPath();
  sub_2512663DC();

  v4[7] = sub_25125C254();
  return sub_25125C5D4;
}

uint64_t sub_25125C630@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25125DD84();
  sub_2512663BC();

  result = swift_beginAccess();
  *a2 = *(v3 + 20);
  return result;
}

uint64_t sub_25125C6E4()
{
  swift_getKeyPath();
  sub_25125DD84();
  sub_2512663BC();

  swift_beginAccess();
  return *(v0 + 20);
}

uint64_t sub_25125C768(int a1)
{
  result = swift_beginAccess();
  if (*(v1 + 20) != a1)
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_25125DD84();
    sub_2512663AC();
  }

  return result;
}

void (*sub_25125C854(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtC27HeadphoneProxFeatureService20HeadphoneIEDObserver___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_25125DD84();
  sub_2512663BC();

  *v4 = v1;
  swift_getKeyPath();
  sub_2512663DC();

  v4[7] = sub_25125C5E0();
  return sub_25125C95C;
}

uint64_t sub_25125C9B8@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25125DD84();
  sub_2512663BC();

  result = swift_beginAccess();
  *a2 = *(v3 + 24);
  return result;
}

uint64_t sub_25125CA6C()
{
  swift_getKeyPath();
  sub_25125DD84();
  sub_2512663BC();

  swift_beginAccess();
  return *(v0 + 24);
}

uint64_t sub_25125CAF0(int a1)
{
  result = swift_beginAccess();
  if (*(v1 + 24) != a1)
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_25125DD84();
    sub_2512663AC();
  }

  return result;
}

void (*sub_25125CBDC(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtC27HeadphoneProxFeatureService20HeadphoneIEDObserver___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_25125DD84();
  sub_2512663BC();

  *v4 = v1;
  swift_getKeyPath();
  sub_2512663DC();

  v4[7] = sub_25125C968();
  return sub_25125CCE4;
}

void sub_25125CCF0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  v2 = v1[5];
  v3 = v1[6];
  *v1 = v1[4];
  swift_getKeyPath();
  sub_2512663CC();

  free(v1);
}

uint64_t HeadphoneIEDObserver.__allocating_init(bluetoothAddress:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 20) = 0;
  *(v3 + 24) = 0;
  sub_2512663EC();
  v4 = sub_2512665DC();
  v6 = v5;

  *(v3 + 32) = v4;
  *(v3 + 40) = v6;
  return v3;
}

uint64_t HeadphoneIEDObserver.init(bluetoothAddress:)()
{
  *(v0 + 16) = 0;
  *(v0 + 20) = 0;
  *(v0 + 24) = 0;
  sub_2512663EC();
  v1 = sub_2512665DC();
  v3 = v2;

  *(v0 + 32) = v1;
  *(v0 + 40) = v3;
  return v0;
}

void sub_25125CE68(void *a1)
{
  v2 = v1;
  v4 = [a1 bluetoothAddress];
  if (!v4)
  {
    goto LABEL_7;
  }

  v5 = v4;
  v6 = sub_2512665BC();
  v8 = v7;

  if (v6 == *(v2 + 32) && v8 == *(v2 + 40))
  {
  }

  else
  {
    v10 = sub_2512667CC();

    if ((v10 & 1) == 0)
    {
LABEL_7:
      if (qword_2814AEED8 != -1)
      {
        swift_once();
      }

      v11 = sub_25126654C();
      __swift_project_value_buffer(v11, qword_2814AF200);
      oslog = sub_25126652C();
      v12 = sub_2512666EC();
      if (os_log_type_enabled(oslog, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_25124E000, oslog, v12, "IED UPDATE SIPPED! NOT MATCHING BTADDRESS", v13, 2u);
        MEMORY[0x25306F360](v13, -1, -1);
      }

      return;
    }
  }

  if (qword_2814AEED8 != -1)
  {
    swift_once();
  }

  v14 = sub_25126654C();
  __swift_project_value_buffer(v14, qword_2814AF200);

  v15 = sub_25126652C();
  v16 = sub_2512666EC();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    osloga = swift_slowAlloc();
    v31[0] = osloga;
    *v17 = 136315394;
    swift_getKeyPath();
    sub_25125DD84();
    sub_2512663BC();

    swift_beginAccess();
    v29 = *(v2 + 20);
    type metadata accessor for AAPlacement(0);
    v18 = sub_2512665CC();
    v20 = sub_251251A44(v18, v19, v31);

    *(v17 + 4) = v20;
    *(v17 + 12) = 2080;
    swift_getKeyPath();
    sub_2512663BC();

    swift_beginAccess();
    v30 = *(v2 + 24);
    v21 = sub_2512665CC();
    v23 = sub_251251A44(v21, v22, v31);

    *(v17 + 14) = v23;
    _os_log_impl(&dword_25124E000, v15, v16, "IED UPDATE: IED  Primary: %s Secondary: %s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25306F360](osloga, -1, -1);
    MEMORY[0x25306F360](v17, -1, -1);
  }

  v24 = [a1 placementMode];
  swift_getKeyPath();
  v31[0] = v2;
  sub_25125DD84();
  sub_2512663BC();

  v31[0] = v2;
  swift_getKeyPath();
  sub_2512663DC();

  swift_beginAccess();
  if (*(v2 + 16) != v24)
  {
    *(v2 + 16) = v24;
  }

  swift_getKeyPath();
  sub_2512663CC();

  v25 = [a1 primaryPlacement];
  swift_getKeyPath();
  sub_2512663BC();

  swift_getKeyPath();
  sub_2512663DC();

  swift_beginAccess();
  if (*(v2 + 20) != v25)
  {
    *(v2 + 20) = v25;
  }

  swift_getKeyPath();
  sub_2512663CC();

  v26 = [a1 secondaryPlacement];
  swift_getKeyPath();
  sub_2512663BC();

  swift_getKeyPath();
  sub_2512663DC();

  swift_beginAccess();
  if (*(v2 + 24) != v26)
  {
    *(v2 + 24) = v26;
  }

  swift_getKeyPath();
  sub_2512663CC();
}

uint64_t HeadphoneIEDObserver.deinit()
{
  v1 = *(v0 + 40);

  v2 = OBJC_IVAR____TtC27HeadphoneProxFeatureService20HeadphoneIEDObserver___observationRegistrar;
  v3 = sub_2512663FC();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t HeadphoneIEDObserver.__deallocating_deinit()
{
  v1 = *(v0 + 5);

  v2 = OBJC_IVAR____TtC27HeadphoneProxFeatureService20HeadphoneIEDObserver___observationRegistrar;
  v3 = sub_2512663FC();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

void *sub_25125D588(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F427A98, &qword_2512671C0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_25125D624(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_2512520B0(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v14 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_25125E898(&qword_27F427AE8, &qword_2512674C8);
    v10 = v14;
  }

  v11 = *(*(v10 + 48) + 16 * v7 + 8);

  v12 = *(*(v10 + 56) + 8 * v7);
  sub_25125D968(v7, v10);
  *v3 = v10;
  return v12;
}

uint64_t sub_25125D6CC(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v41 = a2;
  result = sub_25126678C();
  v10 = result;
  if (*(v7 + 16))
  {
    v39 = v5;
    v40 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v41 & 1) == 0)
      {
        v28 = v24[1];

        v29 = v27;
      }

      v30 = *(v10 + 40);
      sub_2512667FC();
      sub_2512665FC();
      result = sub_25126680C();
      v31 = -1 << *(v10 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v17 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v17 + 8 * v33);
          if (v37 != -1)
          {
            v18 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v32) & ~*(v17 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v40;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v5 = v39;
      goto LABEL_35;
    }

    v38 = 1 << *(v7 + 32);
    v5 = v39;
    if (v38 >= 64)
    {
      bzero(v12, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v38;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_25125D968(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25126674C() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_2512667FC();

      sub_2512665FC();
      v13 = sub_25126680C();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_25125DB18(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25125DB58(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25125DBE8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_2512520B0(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      sub_25125D6CC(v20, a4 & 1, a5, a6);
      v24 = *v9;
      v15 = sub_2512520B0(a2, a3);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_18:
        sub_2512667DC();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v23 = v15;
      sub_25125E898(a5, a6);
      v15 = v23;
    }
  }

  v26 = *v9;
  if (v21)
  {
    v27 = v26[7];
    v28 = *(v27 + 8 * v15);
    *(v27 + 8 * v15) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v26[(v15 >> 6) + 8] |= 1 << v15;
  v29 = (v26[6] + 16 * v15);
  *v29 = a2;
  v29[1] = a3;
  *(v26[7] + 8 * v15) = a1;
  v30 = v26[2];
  v19 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26[2] = v31;
}

unint64_t sub_25125DD84()
{
  result = qword_27F427AC0;
  if (!qword_27F427AC0)
  {
    type metadata accessor for HeadphoneIEDObserver();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F427AC0);
  }

  return result;
}

uint64_t type metadata accessor for HeadphoneIEDObserver()
{
  result = qword_27F427AD0;
  if (!qword_27F427AD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25125DE28()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 16) = v2;
  return result;
}

uint64_t sub_25125DE7C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 20) = v2;
  return result;
}

uint64_t sub_25125DED0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 24) = v2;
  return result;
}

unint64_t sub_25125DF28()
{
  result = qword_27F427AC8;
  if (!qword_27F427AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F427AC8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HeadphoneProxFeatureManager.HeadphoneProxFeature(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for HeadphoneProxFeatureManager.HeadphoneProxFeature(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_25125E5A0()
{
  result = sub_2512663FC();
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

uint64_t sub_25125E830(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F427AE0, &qword_2512674C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_25125E898(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_25126677C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;

        result = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t sub_25125E9F4()
{
  v0 = sub_2512666BC();
  v4 = sub_25125EA74(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_25125EA74(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_2512665EC();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_25126671C();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_25125D588(v9, 0);
  v12 = sub_25125EBCC(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_2512665EC();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_25126676C();
LABEL_4:

  return sub_2512665EC();
}

unint64_t sub_25125EBCC(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_25125EDEC(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_25126668C();
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
          result = sub_25126676C();
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

    result = sub_25125EDEC(v12, a6, a7);
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

    result = sub_25126665C();
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

uint64_t sub_25125EDEC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_25126669C();
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
    v5 = MEMORY[0x25306ECE0](15, a1 >> 16);
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

unsigned __int8 *sub_25125EE68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a1;
  v71 = a2;

  result = sub_2512666AC();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_25125E9F4();
    v40 = v39;

    v5 = v40;
    if ((v40 & 0x2000000000000000) == 0)
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
      result = sub_25126676C();
      v7 = v69;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v22 = v7 - 1;
        if (v22)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v13 = 0;
            v26 = result + 1;
            v15 = 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v18 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_129;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v13 * a3;
              if ((v29 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_128;
              }

              v30 = v27 + v28;
              v21 = __CFADD__(v29, v30);
              v13 = v29 + v30;
              if (v21)
              {
                goto LABEL_128;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_47:
            v15 = 0;
            v18 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v18 = 0;
        v15 = 1;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        if (result)
        {
          v34 = 0;
          v15 = 1;
          do
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v31)
            {
              if (v35 < 0x41 || v35 >= v32)
              {
                v18 = 0;
                if (v35 < 0x61 || v35 >= v33)
                {
                  goto LABEL_129;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            v37 = v34 * a3;
            if ((v37 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v38 = v35 + v36;
            v21 = __CFADD__(v37, v38);
            v34 = v37 + v38;
            if (v21)
            {
              goto LABEL_128;
            }

            ++result;
            --v7;
          }

          while (v7);
          v15 = 0;
          v18 = v34;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
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
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_129;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v13 * a3;
            if ((v19 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v20 = v16 + v17;
            v21 = v19 >= v20;
            v13 = v19 - v20;
            if (!v21)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v18 = 0;
        v15 = 0;
LABEL_129:

        LOBYTE(v70) = v15;
        return (v18 | (v15 << 32));
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v41 = HIBYTE(v5) & 0xF;
  v70 = v6;
  v71 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a3 + 48;
        v62 = a3 + 55;
        v63 = a3 + 87;
        if (a3 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v70;
        v15 = 1;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v18 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_129;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          v67 = v43 * a3;
          if ((v67 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v68 = v65 + v66;
          v21 = __CFADD__(v67, v68);
          v43 = v67 + v68;
          if (v21)
          {
            goto LABEL_128;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a3 + 48;
        v45 = a3 + 55;
        v46 = a3 + 87;
        if (a3 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v70 + 1;
        v15 = 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v18 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_129;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          v50 = v43 * a3;
          if ((v50 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v51 = v48 + v49;
          v21 = v50 >= v51;
          v43 = v50 - v51;
          if (!v21)
          {
            goto LABEL_128;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a3 + 48;
      v54 = a3 + 55;
      v55 = a3 + 87;
      if (a3 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v70 + 1;
      v15 = 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v18 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_129;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        v59 = v43 * a3;
        if ((v59 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_128;
        }

        v60 = v57 + v58;
        v21 = __CFADD__(v59, v60);
        v43 = v59 + v60;
        if (v21)
        {
          goto LABEL_128;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_127:
      v15 = 0;
      v18 = v43;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

unint64_t sub_25125F3E4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_25126679C();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_2512520B0(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_25125F4E0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_25125F518(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_25125F544(uint64_t a1, unint64_t a2)
{
  if (sub_25126660C() < 2)
  {
    if (qword_2814AEED8 != -1)
    {
      swift_once();
    }

    v4 = sub_25126654C();
    __swift_project_value_buffer(v4, qword_2814AF200);

    v5 = sub_25126652C();
    v6 = sub_2512666DC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      *(v7 + 4) = sub_25126660C();

      _os_log_impl(&dword_25124E000, v5, v6, "HeadphoneProxFeatureService: getMajorMinorVersion: Invalid versionString count: %ld", v7, 0xCu);
      v8 = v7;
      goto LABEL_46;
    }

    return 0;
  }

  v33 = 0;
  v34 = 0xE000000000000000;
  v9 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v29 = a1;
  v30 = a2;
  v31 = 0;
  v32 = v9;

  v10 = sub_25126663C();
  if (!v11)
  {
LABEL_18:

    v12 = 0;
    v13 = 0xE000000000000000;
    goto LABEL_19;
  }

  v12 = v10;
  v13 = v11;
  while (v12 == 48 && v13 == 0xE100000000000000)
  {
LABEL_10:
    if (sub_2512667CC())
    {
      goto LABEL_22;
    }

LABEL_11:
    MEMORY[0x25306ECA0](v12, v13);

    v12 = sub_25126663C();
    v13 = v14;
    if (!v14)
    {
      goto LABEL_18;
    }
  }

  if ((sub_2512667CC() & 1) == 0)
  {
    if (v12 == 57 && v13 == 0xE100000000000000)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_22:
  if (v12 == 65 && v13 == 0xE100000000000000)
  {
LABEL_24:
    v16 = sub_2512667CC();

    if (v16)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (sub_2512667CC())
    {

      goto LABEL_18;
    }

    if (v12 != 90 || v13 != 0xE100000000000000)
    {
      goto LABEL_24;
    }

    v12 = 90;
  }

LABEL_19:
  v15 = HIBYTE(v34) & 0xF;
  if (!v15)
  {

    LODWORD(v17) = 0;
    goto LABEL_42;
  }

  v29 = v33;
  v30 = v34 & 0xFFFFFFFFFFFFFFLL;
  LODWORD(v17) = 0;
  v18 = &v29;
  while (1)
  {
    v19 = *v18 - 48;
    if (v19 > 9)
    {
      break;
    }

    v20 = 10 * v17;
    if ((v20 & 0xFFFFFFFF00000000) != 0)
    {
      break;
    }

    v17 = v20 + v19;
    if (__CFADD__(v20, v19))
    {
      break;
    }

    v18 = (v18 + 1);
    if (!--v15)
    {
      v21 = 0;
      goto LABEL_34;
    }
  }

  v17 = 0;
  v21 = 1;
LABEL_34:
  v22 = v21;

  if (v22)
  {
    LODWORD(v17) = 0;
    goto LABEL_42;
  }

  if (!v17 || sub_25126660C() < 1)
  {
LABEL_42:
    if (qword_2814AEED8 != -1)
    {
      swift_once();
    }

    v23 = sub_25126654C();
    __swift_project_value_buffer(v23, qword_2814AF200);

    v5 = sub_25126652C();
    v24 = sub_2512666DC();

    if (os_log_type_enabled(v5, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v29 = v26;
      *v25 = 67109378;
      *(v25 + 4) = v17;
      *(v25 + 8) = 2080;
      v27 = sub_251251A44(v12, v13, &v29);

      *(v25 + 10) = v27;
      _os_log_impl(&dword_25124E000, v5, v24, "HeadphoneProxFeatureService: getMajorMinorVersion: Invalid majorVersion: %u, minorVersionString: %s", v25, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x25306F360](v26, -1, -1);
      v8 = v25;
LABEL_46:
      MEMORY[0x25306F360](v8, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  return v17;
}

uint64_t sub_25125FBF4(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

Swift::Bool __swiftcall HeadphoneProxFeatureManager.shouldShowHeartRateMonitor(deviceAddress:)(Swift::String_optional deviceAddress)
{
  v2 = v1;
  object = deviceAddress.value._object;
  countAndFlagsBits = deviceAddress.value._countAndFlagsBits;
  if (!deviceAddress.value._object)
  {
    goto LABEL_20;
  }

  v5 = sub_2512665DC();
  v7 = v6;
  swift_beginAccess();
  v8 = *(v1 + 24);
  if (!*(v8 + 16))
  {
LABEL_19:

LABEL_20:
    if (qword_2814AEED8 != -1)
    {
      swift_once();
    }

    v35 = sub_25126654C();
    __swift_project_value_buffer(v35, qword_2814AF200);

    v36 = sub_25126652C();
    v37 = sub_2512666EC();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v66 = v39;
      *v38 = 136315394;
      swift_beginAccess();
      v40 = *(v2 + 24);
      sub_251252064();

      v41 = sub_25126659C();
      v43 = v42;

      v44 = sub_251251A44(v41, v43, &v66);

      *(v38 + 4) = v44;
      *(v38 + 12) = 2080;
      if (object)
      {
        v45 = countAndFlagsBits;
      }

      else
      {
        v45 = 4999502;
      }

      if (object)
      {
        v46 = object;
      }

      else
      {
        v46 = 0xE300000000000000;
      }

      v47 = sub_251251A44(v45, v46, &v66);

      *(v38 + 14) = v47;
      _os_log_impl(&dword_25124E000, v36, v37, "HeadphoneProxFeatureService: shouldShowHeartRateMonitor: Invalid Device, Return %s %s", v38, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25306F360](v39, -1, -1);
      MEMORY[0x25306F360](v38, -1, -1);
    }

    goto LABEL_30;
  }

  v9 = *(v2 + 24);

  v10 = sub_2512520B0(v5, v7);
  if ((v11 & 1) == 0)
  {

    goto LABEL_19;
  }

  v12 = *(*(v8 + 56) + 8 * v10);

  if (![v12 respondsToSelector_])
  {
    goto LABEL_33;
  }

  if (([v12 respondsToSelector_] & 1) == 0)
  {
    goto LABEL_33;
  }

  v13 = [v12 coreBluetoothDevice];
  if (!v13)
  {
    goto LABEL_33;
  }

  v14 = v13;
  if ([v13 productID] != 8221)
  {

LABEL_33:

    if (qword_2814AEED8 != -1)
    {
      swift_once();
    }

    v48 = sub_25126654C();
    __swift_project_value_buffer(v48, qword_2814AF200);
    v49 = v12;

    v36 = sub_25126652C();
    v50 = sub_2512666EC();

    if (os_log_type_enabled(v36, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v65[0] = v53;
      *v51 = 136315394;
      v54 = *(v2 + 24);
      sub_251252064();

      v55 = sub_25126659C();
      v57 = v56;

      v58 = sub_251251A44(v55, v57, v65);

      *(v51 + 4) = v58;
      *(v51 + 12) = 2112;
      if ([v49 respondsToSelector_] && (objc_msgSend(v49, sel_respondsToSelector_, sel_coreBluetoothDevice) & 1) != 0)
      {
        v59 = [v49 coreBluetoothDevice];
        v60 = v59;
      }

      else
      {
        v59 = 0;
        v60 = 0;
      }

      *(v51 + 14) = v59;
      *v52 = v60;
      _os_log_impl(&dword_25124E000, v36, v50, "HeadphoneProxFeatureService: shouldShowHeartRateMonitor: device does not support heart rate monitor, Return false %s cbDevice: %@", v51, 0x16u);
      sub_25125E830(v52);
      MEMORY[0x25306F360](v52, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v53);
      MEMORY[0x25306F360](v53, -1, -1);
      MEMORY[0x25306F360](v51, -1, -1);

      return 0;
    }

LABEL_30:
    return 0;
  }

  v15 = sub_25125A8E4(v5, v7);
  v16 = [v15 heartRateVersion];
  v17 = [*(v2 + 72) heartRateVersion];
  v64 = v16 < v17;
  if (qword_2814AEED8 != -1)
  {
    swift_once();
  }

  v18 = sub_25126654C();
  __swift_project_value_buffer(v18, qword_2814AF200);

  v19 = v15;

  v20 = sub_25126652C();
  v21 = sub_2512666EC();

  if (os_log_type_enabled(v20, v21))
  {
    v62 = v21;
    v22 = v19;
    v23 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v65[0] = v63;
    *v23 = 136315906;
    log = v20;
    v24 = sub_251251A44(v5, v7, v65);

    *(v23 + 4) = v24;
    *(v23 + 12) = 2080;
    if (v16 >= v17)
    {
      v25 = 20302;
    }

    else
    {
      v25 = 5457241;
    }

    if (v16 >= v17)
    {
      v26 = 0xE200000000000000;
    }

    else
    {
      v26 = 0xE300000000000000;
    }

    v27 = sub_251251A44(v25, v26, v65);

    *(v23 + 14) = v27;
    *(v23 + 22) = 2080;
    v66 = [v22 heartRateVersion];
    sub_2512521C8();
    v28 = sub_25126673C();
    v30 = sub_251251A44(v28, v29, v65);

    *(v23 + 24) = v30;
    *(v23 + 32) = 2080;
    v66 = [*(v2 + 72) heartRateVersion];
    v31 = sub_25126673C();
    v33 = sub_251251A44(v31, v32, v65);

    *(v23 + 34) = v33;
    _os_log_impl(&dword_25124E000, log, v62, "HeadphoneProxFeatureService: [%s] shouldShowHeartRateMonitor: %s, Current Version: %s, Target Version: %s", v23, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x25306F360](v63, -1, -1);
    MEMORY[0x25306F360](v23, -1, -1);

    return v64;
  }

  else
  {

    return v16 < v17;
  }
}

Swift::Bool __swiftcall HeadphoneProxFeatureManager.shouldShowUSBLosslessAudio(deviceAddress:)(Swift::String_optional deviceAddress)
{
  v2 = v1;
  object = deviceAddress.value._object;
  countAndFlagsBits = deviceAddress.value._countAndFlagsBits;
  if (!deviceAddress.value._object)
  {
    goto LABEL_13;
  }

  v5 = sub_2512665DC();
  v7 = v6;
  swift_beginAccess();
  v8 = *(v1 + 24);
  if (!*(v8 + 16))
  {
LABEL_12:

LABEL_13:
    if (qword_2814AEED8 != -1)
    {
      swift_once();
    }

    v31 = sub_25126654C();
    __swift_project_value_buffer(v31, qword_2814AF200);

    v32 = sub_25126652C();
    v33 = sub_2512666EC();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v95 = v35;
      *v34 = 136315394;
      if (object)
      {
        v36 = object;
      }

      else
      {
        countAndFlagsBits = 4999502;
        v36 = 0xE300000000000000;
      }

      v37 = sub_251251A44(countAndFlagsBits, v36, &v95);

      *(v34 + 4) = v37;
      *(v34 + 12) = 2080;
      swift_beginAccess();
      v38 = *(v2 + 24);
      sub_251252064();

      v39 = sub_25126659C();
      v41 = v40;

      v42 = sub_251251A44(v39, v41, &v95);

      *(v34 + 14) = v42;
      _os_log_impl(&dword_25124E000, v32, v33, "HeadphoneProxFeatureService: shouldShowUSBLosslessAudio: Invalid Device, Return false address: %s %s", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25306F360](v35, -1, -1);
      MEMORY[0x25306F360](v34, -1, -1);
    }

    goto LABEL_20;
  }

  v9 = *(v2 + 24);

  v10 = sub_2512520B0(v5, v7);
  if ((v11 & 1) == 0)
  {

    goto LABEL_12;
  }

  v86 = v5;
  v93 = *(*(v8 + 56) + 8 * v10);

  v12 = [objc_opt_self() currentDevice];
  v13 = [v12 systemVersion];

  sub_2512665BC();
  v14 = sub_2512616CC(2);
  v16 = v15;
  v18 = v17;
  v20 = v19;

  if (!((v14 ^ v16) >> 14))
  {

    v25 = v93;
LABEL_8:
    v23 = 0;
    goto LABEL_9;
  }

  v21 = sub_251261600(v14, v16, v18, v20, 10);
  if ((v22 & 0x100) != 0)
  {
    v21 = sub_251261068(v14, v16, v18, v20, 10);
  }

  v23 = v21;
  v24 = v22;

  v25 = v93;
  if (v24)
  {
    goto LABEL_8;
  }

LABEL_9:
  v89 = v23;
  v26 = [v25 firmwareVersion];
  if (v26)
  {
    v27 = v26;
    v28 = sub_2512665BC();
    v30 = v29;
  }

  else
  {
    v30 = 0xE200000000000000;
    v28 = 16688;
  }

  v91 = sub_25125F544(v28, v30);
  v87 = v44;
  v46 = v45;
  if (qword_2814AEED8 != -1)
  {
    swift_once();
  }

  v47 = sub_25126654C();
  __swift_project_value_buffer(v47, qword_2814AF200);

  v48 = sub_25126652C();
  v49 = sub_2512666EC();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v94[0] = v51;
    *v50 = 134218754;
    *(v50 + 4) = v89;
    *(v50 + 12) = 2080;
    v52 = sub_251251A44(v28, v30, v94);

    *(v50 + 14) = v52;
    *(v50 + 22) = 1024;
    *(v50 + 24) = v91;
    *(v50 + 28) = 2080;
    *(v50 + 30) = sub_251251A44(v87, v46, v94);
    _os_log_impl(&dword_25124E000, v48, v49, "HeadphoneProxFeatureService: systemVersion: %ld firmwareVersion: %s, majorRelease: %u, minorRelease: %s", v50, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x25306F360](v51, -1, -1);
    v53 = v50;
    v25 = v93;
    MEMORY[0x25306F360](v53, -1, -1);
  }

  else
  {
  }

  if (![v25 respondsToSelector_] || (objc_msgSend(v25, sel_respondsToSelector_, sel_coreBluetoothDevice) & 1) == 0 || (v54 = objc_msgSend(v25, sel_coreBluetoothDevice)) == 0)
  {

LABEL_44:

    v73 = v25;

    v32 = sub_25126652C();
    v74 = sub_2512666EC();

    if (os_log_type_enabled(v32, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v94[0] = v77;
      *v75 = 136315394;
      v78 = *(v2 + 24);
      sub_251252064();

      v79 = sub_25126659C();
      v81 = v80;

      v82 = sub_251251A44(v79, v81, v94);

      *(v75 + 4) = v82;
      *(v75 + 12) = 2112;
      if ([v73 respondsToSelector_] && (objc_msgSend(v73, sel_respondsToSelector_, sel_coreBluetoothDevice) & 1) != 0)
      {
        v83 = [v73 coreBluetoothDevice];
        v84 = v83;
      }

      else
      {
        v83 = 0;
        v84 = 0;
      }

      *(v75 + 14) = v83;
      *v76 = v84;
      _os_log_impl(&dword_25124E000, v32, v74, "HeadphoneProxFeatureService: shouldShowUSBLosslessAudio: device does not support USB Lossless Audio, prodcut ID match false %s cbDevice: %@", v75, 0x16u);
      sub_25125E830(v76);
      MEMORY[0x25306F360](v76, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v77);
      MEMORY[0x25306F360](v77, -1, -1);
      MEMORY[0x25306F360](v75, -1, -1);

      return 0;
    }

LABEL_20:
    return 0;
  }

  v55 = v54;
  if (v91 > 8)
  {
    goto LABEL_32;
  }

  if (v91 != 7)
  {

    goto LABEL_57;
  }

  if (v87 != 69 || v46 != 0xE100000000000000)
  {
    v85 = sub_2512667CC();

    if ((v85 & 1) == 0)
    {
      goto LABEL_33;
    }

LABEL_57:

    goto LABEL_44;
  }

LABEL_32:

LABEL_33:
  if (v89 > 26 || [v55 productID] != 8223)
  {
    goto LABEL_57;
  }

  v90 = v55;
  v56 = sub_25125A8E4(v86, v7);
  v57 = [v56 usbAudioVersion];
  v58 = [*(v2 + 72) usbAudioVersion];
  v92 = v57 < v58;

  v59 = v56;

  v60 = sub_25126652C();
  v61 = sub_2512666EC();

  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v94[0] = v88;
    *v62 = 136315906;
    v63 = sub_251251A44(v86, v7, v94);

    *(v62 + 4) = v63;
    *(v62 + 12) = 2080;
    if (v57 >= v58)
    {
      v64 = 20302;
    }

    else
    {
      v64 = 5457241;
    }

    if (v57 >= v58)
    {
      v65 = 0xE200000000000000;
    }

    else
    {
      v65 = 0xE300000000000000;
    }

    v66 = sub_251251A44(v64, v65, v94);

    *(v62 + 14) = v66;
    *(v62 + 22) = 2080;
    v95 = [v59 usbAudioVersion];
    sub_2512521C8();
    v67 = sub_25126673C();
    v69 = sub_251251A44(v67, v68, v94);

    *(v62 + 24) = v69;
    *(v62 + 32) = 2080;
    v95 = [*(v2 + 72) usbAudioVersion];
    v70 = sub_25126673C();
    v72 = sub_251251A44(v70, v71, v94);

    *(v62 + 34) = v72;
    _os_log_impl(&dword_25124E000, v60, v61, "HeadphoneProxFeatureService: [%s] shouldShowUSBLosslessAudio: %s, Current Version: %s, Target Version: %s", v62, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x25306F360](v88, -1, -1);
    MEMORY[0x25306F360](v62, -1, -1);

    return v92;
  }

  else
  {

    return v57 < v58;
  }
}

uint64_t sub_251260F94@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_251260FC4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void sub_251260FF4(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

unsigned __int8 *sub_251261068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_251261BD4();

  result = sub_2512666AC();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_25125E9F4();
    v37 = v36;

    v7 = v37;
    if ((v37 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_25126676C();
      v9 = v63;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v21 = v9 - 1;
        if (v21)
        {
          v22 = a5 + 48;
          v23 = a5 + 55;
          v24 = a5 + 87;
          if (a5 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v15 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v19 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_127;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              v28 = v15 * a5;
              if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v15 = v28 + (v26 + v27);
              if (__OFADD__(v28, (v26 + v27)))
              {
                goto LABEL_126;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_46:
            v19 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v19 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v29 = a5 + 48;
        v30 = a5 + 55;
        v31 = a5 + 87;
        if (a5 > 10)
        {
          v29 = 58;
        }

        else
        {
          v31 = 97;
          v30 = 65;
        }

        if (result)
        {
          v32 = 0;
          do
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v29)
            {
              if (v33 < 0x41 || v33 >= v30)
              {
                v19 = 0;
                if (v33 < 0x61 || v33 >= v31)
                {
                  goto LABEL_127;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            v35 = v32 * a5;
            if ((v32 * a5) >> 64 != (v32 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v32 = v35 + (v33 + v34);
            if (__OFADD__(v35, (v33 + v34)))
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v19 = v35 + (v33 + v34);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_127;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v15 * a5;
            if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v15 = v20 - (v17 + v18);
            if (__OFSUB__(v20, (v17 + v18)))
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v19 = 0;
LABEL_127:

        return v19;
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

  v38 = HIBYTE(v7) & 0xF;
  v64 = v8;
  v65 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v38)
      {
        v40 = 0;
        v56 = a5 + 48;
        v57 = a5 + 55;
        v58 = a5 + 87;
        if (a5 > 10)
        {
          v56 = 58;
        }

        else
        {
          v58 = 97;
          v57 = 65;
        }

        v59 = &v64;
        while (1)
        {
          v60 = *v59;
          if (v60 < 0x30 || v60 >= v56)
          {
            if (v60 < 0x41 || v60 >= v57)
            {
              v19 = 0;
              if (v60 < 0x61 || v60 >= v58)
              {
                goto LABEL_127;
              }

              v61 = -87;
            }

            else
            {
              v61 = -55;
            }
          }

          else
          {
            v61 = -48;
          }

          v62 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v62 + (v60 + v61);
          if (__OFADD__(v62, (v60 + v61)))
          {
            goto LABEL_126;
          }

          v59 = (v59 + 1);
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v38)
    {
      v39 = v38 - 1;
      if (v39)
      {
        v40 = 0;
        v41 = a5 + 48;
        v42 = a5 + 55;
        v43 = a5 + 87;
        if (a5 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        v44 = &v64 + 1;
        while (1)
        {
          v45 = *v44;
          if (v45 < 0x30 || v45 >= v41)
          {
            if (v45 < 0x41 || v45 >= v42)
            {
              v19 = 0;
              if (v45 < 0x61 || v45 >= v43)
              {
                goto LABEL_127;
              }

              v46 = -87;
            }

            else
            {
              v46 = -55;
            }
          }

          else
          {
            v46 = -48;
          }

          v47 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v47 - (v45 + v46);
          if (__OFSUB__(v47, (v45 + v46)))
          {
            goto LABEL_126;
          }

          ++v44;
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v38)
  {
    v48 = v38 - 1;
    if (v48)
    {
      v40 = 0;
      v49 = a5 + 48;
      v50 = a5 + 55;
      v51 = a5 + 87;
      if (a5 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v64 + 1;
      do
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            v19 = 0;
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_127;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v40 * a5;
        if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v40 = v55 + (v53 + v54);
        if (__OFADD__(v55, (v53 + v54)))
        {
          goto LABEL_126;
        }

        ++v52;
        --v48;
      }

      while (v48);
LABEL_125:
      v19 = v40;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_251261600(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = sub_25126676C();
  }

  result = sub_251261768(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = v13 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

uint64_t sub_2512616CC(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_25126661C();

    return sub_2512666BC();
  }

  return result;
}

uint64_t sub_251261768(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_25125EDEC(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_95;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_25126667C();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_25125EDEC(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_25125EDEC(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_91;
  }

  if (v25 < a3 >> 16)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  result = sub_25126667C();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_90;
  }

  if (v26 < v13)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 48;
        v40 = a6 + 55;
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v39)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                if (v44 < 0x61 || v44 >= v41)
                {
                  return v37;
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            v46 = v32 * a6;
            if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
            {
              return 0;
            }

            v32 = v46 + (v44 + v45);
            if (__OFADD__(v46, (v44 + v45)))
            {
              return 0;
            }

            ++v42;
            --v43;
          }

          while (v43);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_94;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v47 = a6 + 48;
      v48 = a6 + 55;
      v49 = a6 + 87;
      if (a6 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v50 = *v27;
          if (v50 < 0x30 || v50 >= v47)
          {
            if (v50 < 0x41 || v50 >= v48)
            {
              v37 = 0;
              if (v50 < 0x61 || v50 >= v49)
              {
                return v37;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v52 + (v50 + v51);
          if (__OFADD__(v52, (v50 + v51)))
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v38 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v38 - (v35 + v36);
          if (__OFSUB__(v38, (v35 + v36)))
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

unint64_t sub_251261BD4()
{
  result = qword_27F427B00;
  if (!qword_27F427B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F427B00);
  }

  return result;
}

BOOL HeadphoneProxFeatureManager._shouldShowWhatsNewCard(deviceAddress:headphoneDevice:)(uint64_t a1, unint64_t a2, void *a3)
{
  v4 = v3;
  if (!a2)
  {
    goto LABEL_14;
  }

  v8 = sub_2512665DC();
  v10 = v9;
  swift_beginAccess();
  v11 = *(v3 + 24);
  if (!*(v11 + 16))
  {
LABEL_13:

LABEL_14:
    if (qword_2814AEED8 != -1)
    {
      swift_once();
    }

    v23 = sub_25126654C();
    __swift_project_value_buffer(v23, qword_2814AF200);

    v24 = sub_25126652C();
    v25 = sub_2512666EC();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v77[0] = v27;
      *v26 = 136315394;
      swift_beginAccess();
      v28 = *(v4 + 24);
      sub_251252064();

      v29 = sub_25126659C();
      v31 = v30;

      v32 = sub_251251A44(v29, v31, v77);

      *(v26 + 4) = v32;
      *(v26 + 12) = 2080;
      if (a2)
      {
        v33 = a2;
      }

      else
      {
        a1 = 4999502;
        v33 = 0xE300000000000000;
      }

      v34 = sub_251251A44(a1, v33, v77);

      *(v26 + 14) = v34;
      _os_log_impl(&dword_25124E000, v24, v25, "HeadphoneProxFeatureService: shouldShowWhatsNewCard: Invalid Device, Return %s %s", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25306F360](v27, -1, -1);
      MEMORY[0x25306F360](v26, -1, -1);
    }

    return 0;
  }

  v12 = *(v4 + 24);

  v13 = sub_2512520B0(v8, v10);
  if ((v14 & 1) == 0)
  {

    goto LABEL_13;
  }

  v15 = *(*(v11 + 56) + 8 * v13);

  if (a3)
  {
    v16 = a3;
    goto LABEL_6;
  }

  sub_25126648C();
  v36 = sub_25126647C();
  v78[0] = v8;
  v78[1] = v10;
  v77[0] = 58;
  v77[1] = 0xE100000000000000;
  sub_251254BE0();
  v37 = sub_25126672C();
  v39 = v38;
  v40 = sub_25126646C();

  if (!*(v40 + 16))
  {

    goto LABEL_55;
  }

  v41 = sub_2512520B0(v37, v39);
  v43 = v42;

  if ((v43 & 1) == 0)
  {
LABEL_55:

    if (qword_2814AEED8 != -1)
    {
      swift_once();
    }

    v70 = sub_25126654C();
    __swift_project_value_buffer(v70, qword_2814AF200);
    v71 = sub_25126652C();
    v72 = sub_2512666DC();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&dword_25124E000, v71, v72, "HeadphoneProxFeatureService: Headphone device is nil, exiting", v73, 2u);
      MEMORY[0x25306F360](v73, -1, -1);
    }

    return 0;
  }

  v16 = *(*(v40 + 56) + 8 * v41);

LABEL_6:
  v17 = a3;
  if ((sub_25126643C() & 1) == 0)
  {

    if (qword_2814AEED8 != -1)
    {
      swift_once();
    }

    v44 = sub_25126654C();
    __swift_project_value_buffer(v44, qword_2814AF200);
    v19 = sub_25126652C();
    v20 = sub_2512666DC();
    if (!os_log_type_enabled(v19, v20))
    {
      goto LABEL_31;
    }

    v21 = swift_slowAlloc();
    *v21 = 0;
    v22 = "HeadphoneProxFeatureService: Headphone device is not AirPods, exiting";
    goto LABEL_30;
  }

  if ([v15 temporaryManagedPairedStatus] == 1)
  {

    if (qword_2814AEED8 != -1)
    {
      swift_once();
    }

    v18 = sub_25126654C();
    __swift_project_value_buffer(v18, qword_2814AF200);
    v19 = sub_25126652C();
    v20 = sub_2512666EC();
    if (!os_log_type_enabled(v19, v20))
    {
      goto LABEL_31;
    }

    v21 = swift_slowAlloc();
    *v21 = 0;
    v22 = "HeadphoneProxFeatureService: Skipping shouldShowWhatsNewCard because the device is temporary paired";
LABEL_30:
    _os_log_impl(&dword_25124E000, v19, v20, v22, v21, 2u);
    MEMORY[0x25306F360](v21, -1, -1);
LABEL_31:

    return 0;
  }

  v45 = sub_25125A8E4(v8, v10);
  v46 = [v45 whatsNewVersion];
  v47 = [*(v4 + 72) whatsNewVersion];

  v48 = HeadphoneProxFeatureManager.getWhatsNewNotShowedFeatures2025(deviceAddress:)(v8, v10);

  v49 = *(v48 + 2);

  v51 = v46 < v47 && v49 != 0;
  if (qword_2814AEED8 != -1)
  {
    swift_once();
  }

  v52 = sub_25126654C();
  __swift_project_value_buffer(v52, qword_2814AF200);

  v53 = v45;

  v54 = sub_25126652C();
  v55 = sub_2512666EC();

  if (os_log_type_enabled(v54, v55))
  {
    v75 = v49;
    v56 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v78[0] = v76;
    *v56 = 136316162;
    v74 = v55;
    v57 = sub_251251A44(v8, v10, v78);

    *(v56 + 4) = v57;
    *(v56 + 12) = 2080;
    if (v51)
    {
      v58 = 5457241;
    }

    else
    {
      v58 = 20302;
    }

    if (v51)
    {
      v59 = 0xE300000000000000;
    }

    else
    {
      v59 = 0xE200000000000000;
    }

    v60 = sub_251251A44(v58, v59, v78);

    *(v56 + 14) = v60;
    *(v56 + 22) = 2080;
    v77[0] = [v53 whatsNewVersion];
    sub_2512521C8();
    v61 = sub_25126673C();
    v63 = sub_251251A44(v61, v62, v78);

    *(v56 + 24) = v63;
    *(v56 + 32) = 2080;
    v77[0] = [*(v4 + 72) whatsNewVersion];
    v64 = sub_25126673C();
    v66 = sub_251251A44(v64, v65, v78);

    *(v56 + 34) = v66;
    *(v56 + 42) = 2080;
    if (v75)
    {
      v67 = 5457241;
    }

    else
    {
      v67 = 20302;
    }

    if (v75)
    {
      v68 = 0xE300000000000000;
    }

    else
    {
      v68 = 0xE200000000000000;
    }

    v69 = sub_251251A44(v67, v68, v78);

    *(v56 + 44) = v69;
    _os_log_impl(&dword_25124E000, v54, v74, "HeadphoneProxFeatureService: [%s] shouldShowWhatsNewCard: %s, WN Current: %s, WN Taget: %s hasNotShownLuckFeatures: %s ", v56, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x25306F360](v76, -1, -1);
    MEMORY[0x25306F360](v56, -1, -1);

    return v51;
  }

  else
  {

    return v51;
  }
}