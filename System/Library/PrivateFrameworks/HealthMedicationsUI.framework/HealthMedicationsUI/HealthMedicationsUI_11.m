id sub_22828E190()
{
  if (qword_280DDCED0 != -1)
  {
    swift_once();
  }

  v1 = qword_280DDCED8;
  qword_280DDCF20 = qword_280DDCED8;
  *algn_280DDCF28 = 0xD00000000000001FLL;
  qword_280DDCF30 = 0x80000002283B0720;

  return v1;
}

uint64_t static LocalizationSource.healthMedicationsUI.getter@<X0>(void *a1@<X8>)
{
  if (qword_280DDCF18 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = qword_280DDCF20;
  v2 = *algn_280DDCF28;
  v3 = qword_280DDCF30;
  *a1 = qword_280DDCF20;
  a1[1] = v2;
  a1[2] = v3;
  v4 = v1;
}

uint64_t sub_22828E298()
{
  sub_228190EB8();
  result = sub_228392C10();
  qword_27D826AA0 = result;
  *algn_27D826AA8 = 0xD000000000000014;
  qword_27D826AB0 = 0x80000002283B06D0;
  return result;
}

uint64_t static LocalizationSource.healthUI.getter@<X0>(void *a1@<X8>)
{
  if (qword_27D823300 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = qword_27D826AA0;
  v2 = *algn_27D826AA8;
  v3 = qword_27D826AB0;
  *a1 = qword_27D826AA0;
  a1[1] = v2;
  a1[2] = v3;
  v4 = v1;
}

uint64_t sub_22828E370()
{
  sub_228190EB8();
  result = sub_228392C20();
  qword_27D826AB8 = result;
  unk_27D826AC0 = 0xD00000000000001DLL;
  qword_27D826AC8 = 0x80000002283B06B0;
  return result;
}

uint64_t static LocalizationSource.wellnessDashboard.getter@<X0>(void *a1@<X8>)
{
  if (qword_27D823308 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = qword_27D826AB8;
  v2 = unk_27D826AC0;
  v3 = qword_27D826AC8;
  *a1 = qword_27D826AB8;
  a1[1] = v2;
  a1[2] = v3;
  v4 = v1;
}

id sub_22828E448()
{
  if (qword_280DDCED0 != -1)
  {
    swift_once();
  }

  v1 = qword_280DDCED8;
  qword_27D826AD0 = qword_280DDCED8;
  *algn_27D826AD8 = 0xD000000000000029;
  qword_27D826AE0 = 0x80000002283B06F0;

  return v1;
}

uint64_t static LocalizationSource.healthMedicationsUI_Pregnancy.getter@<X0>(void *a1@<X8>)
{
  if (qword_27D823310 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = qword_27D826AD0;
  v2 = *algn_27D826AD8;
  v3 = qword_27D826AE0;
  *a1 = qword_27D826AD0;
  a1[1] = v2;
  a1[2] = v3;
  v4 = v1;
}

uint64_t LocalizationSource.localized(_:locale:value:comment:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *v8;
  v10 = v8[1];
  v12 = v8[2];
  result = sub_22838F0C0();
  if (*(a8 + 16))
  {
    v14 = sub_228391FD0();

    return v14;
  }

  return result;
}

uint64_t type metadata accessor for MedicationSourceListNoneCell()
{
  result = qword_27D826AE8;
  if (!qword_27D826AE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_22828E674()
{
  ObjectType = swift_getObjectType();
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22838FC80();
  if (v20[3])
  {
    sub_2281810DC(0, &qword_280DDCD60);
    type metadata accessor for MedicationSourceListNoneItem();
    if (swift_dynamicCast())
    {

      if (qword_280DDCF18 != -1)
      {
        swift_once();
      }

      v7 = sub_22838F0C0();
      v9 = v8;

      sub_22838FC90();
      v10 = sub_22838FCA0();
      v10(v7, v9, 0);
      sub_22828EE3C();

      return [v0 setUserInteractionEnabled_];
    }
  }

  else
  {
    sub_228181138(v20, &qword_280DDCD50, &qword_280DDCD60);
  }

  sub_228391190();
  v12 = sub_2283911A0();
  v13 = sub_2283925D0();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v19 = v15;
    v20[0] = ObjectType;
    *v14 = 136446210;
    swift_getMetatypeMetadata();
    v16 = sub_228392020();
    v18 = sub_2281C96FC(v16, v17, &v19);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_22816B000, v12, v13, "[%{public}s] item is not an MedicationSourceListNoneItem", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x22AAB7B80](v15, -1, -1);
    MEMORY[0x22AAB7B80](v14, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_22828E9A0(uint64_t a1, uint64_t a2)
{
  sub_22838FC90();
  v4 = sub_22838FCA0();
  v4(a1, a2, 0);

  sub_22828EE3C();
}

uint64_t sub_22828EA30()
{
  sub_22828F110(0, &unk_280DDBCD0, MEMORY[0x277D74BD0]);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0 - 8);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - v5;
  sub_22838FC90();
  v7 = sub_22838FCA0();
  v8 = v7();
  MEMORY[0x22AAB6410](v8);
  v9 = sub_2283913A0();
  if ((*(*(v9 - 8) + 48))(v6, 1, v9))
  {
    sub_228205274(v6, v4);
    MEMORY[0x22AAB6420](v4);
    return sub_22828F164(v6, &unk_280DDBCD0, MEMORY[0x277D74BD0]);
  }

  else
  {
    v11 = [objc_opt_self() tertiarySystemBackgroundColor];
    sub_228391370();
    return MEMORY[0x22AAB6420](v6);
  }
}

id sub_22828EBC0(void *a1, double a2, double a3, double a4, double a5)
{
  v10.receiver = a1;
  v10.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a2, a3, a4, a5);
}

id sub_22828EC30(void *a1, uint64_t a2, void *a3)
{
  v7.receiver = a1;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, v4);

  if (v5)
  {
  }

  return v5;
}

id sub_22828ECA8()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22828ECE8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_22828ED4C()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 40);

  return v1;
}

uint64_t sub_22828ED80(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x282169440](a1, WitnessTable);
}

unint64_t sub_22828EDE8()
{
  result = qword_27D826AF8;
  if (!qword_27D826AF8)
  {
    type metadata accessor for MedicationSourceListNoneItem();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D826AF8);
  }

  return result;
}

uint64_t sub_22828EE3C()
{
  sub_22828F110(0, &qword_27D826B00, MEMORY[0x277D74C38]);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v16[-1] - v2;
  v4 = sub_228391590();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v16[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x22AAB63F0](v16, v7);
  if (v17)
  {
    sub_2281810DC(0, &qword_27D826B10);
    v10 = swift_dynamicCast();
    (*(v5 + 56))(v3, v10 ^ 1u, 1, v4);
    if ((*(v5 + 48))(v3, 1, v4) != 1)
    {
      (*(v5 + 32))(v9, v3, v4);
      v11 = [objc_opt_self() secondaryLabelColor];
      v12 = sub_228391450();
      sub_228391420();
      v12(v16, 0);
      v17 = v4;
      v18 = MEMORY[0x277D74C30];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16);
      (*(v5 + 16))(boxed_opaque_existential_1, v9, v4);
      MEMORY[0x22AAB6400](v16);
      return (*(v5 + 8))(v9, v4);
    }
  }

  else
  {
    sub_228181138(v16, &qword_27D826B08, &qword_27D826B10);
    (*(v5 + 56))(v3, 1, 1, v4);
  }

  return sub_22828F164(v3, &qword_27D826B00, MEMORY[0x277D74C38]);
}

void sub_22828F110(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_228392F00();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_22828F164(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_22828F110(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

id sub_22828F2D4()
{
  v1 = v0;
  v2 = [v0 object];
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    sub_2281A23C0();
    v3 = sub_228391FC0();

    if (qword_280DDCF18 != -1)
    {
      swift_once();
    }

    sub_22838F0C0();
    v4 = sub_228391FC0();

    sub_22828F718();
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_228397F30;
    v6 = *MEMORY[0x277CCC3F8];
    *(v5 + 32) = sub_228392000();
    *(v5 + 40) = v7;
    *(v5 + 48) = 1702063940;
    *(v5 + 56) = 0xE400000000000000;
    v8 = sub_228392190();

    v9 = HKUIJoinStringsForAutomationIdentifier();

    [v0 addText:v3 detail:v4 baseIdentifier:{v9, 0xE000000000000000}];
    sub_2283928B0();
    if ((v10 & 1) == 0)
    {
      if (*&v0[OBJC_IVAR____TtC19HealthMedicationsUI40MedicationDoseEventMetadataDetailSection_medication])
      {
        v18 = *&v0[OBJC_IVAR____TtC19HealthMedicationsUI40MedicationDoseEventMetadataDetailSection_medication];
        sub_22828F7BC();
        sub_228390AB0();
      }

      else
      {
        sub_22828F768();
        sub_228391F00();
      }

      v11 = sub_228391FC0();

      sub_22838F0C0();
      v12 = sub_228391FC0();

      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_228397F30;
      *(v13 + 32) = sub_228392000();
      *(v13 + 40) = v14;
      *(v13 + 48) = 0x67676F4C61746144;
      *(v13 + 56) = 0xEA00000000006465;
      v15 = sub_228392190();

      v16 = HKUIJoinStringsForAutomationIdentifier();

      [v1 &selRef:v11 hk:{v12, v16, 0xE000000000000000}chartBackgroundColor + 6];
    }
  }

  swift_unknownObjectRelease();
  v19.receiver = v1;
  v19.super_class = type metadata accessor for MedicationDoseEventMetadataDetailSection();
  return objc_msgSendSuper2(&v19, sel_addSampleDetailValues);
}

id sub_22828F6B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicationDoseEventMetadataDetailSection();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_22828F718()
{
  if (!qword_27D823EE0)
  {
    v0 = sub_228393430();
    if (!v1)
    {
      atomic_store(v0, &qword_27D823EE0);
    }
  }
}

unint64_t sub_22828F768()
{
  result = qword_27D826B20;
  if (!qword_27D826B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D826B20);
  }

  return result;
}

unint64_t sub_22828F7BC()
{
  result = qword_280DDB9E0;
  if (!qword_280DDB9E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280DDB9E0);
  }

  return result;
}

uint64_t PauseUsePeriod.text.getter()
{
  v1 = *v0;
  if ((v0[1] & 1) == 0)
  {
    if (qword_280DDCF18 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

  if (qword_280DDCF18 != -1)
  {
LABEL_8:
    swift_once();
  }

LABEL_5:
  sub_2281BC044();
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D83B88];
  *(v2 + 16) = xmmword_228397F40;
  v4 = MEMORY[0x277D83C10];
  *(v2 + 56) = v3;
  *(v2 + 64) = v4;
  *(v2 + 32) = v1;
  sub_22838F0C0();
  if (*(v2 + 16))
  {
    sub_228391FD0();
  }

  v5 = sub_228391FD0();

  return v5;
}

uint64_t DisplayUnit.text.getter()
{
  v1 = *v0;
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  return sub_22838F0C0();
}

uint64_t DisplayUnit.hashValue.getter()
{
  v1 = *v0;
  sub_228393520();
  MEMORY[0x22AAB70D0](v1);
  return sub_228393570();
}

unint64_t sub_22828FBB8()
{
  result = qword_27D826B28;
  if (!qword_27D826B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D826B28);
  }

  return result;
}

unint64_t sub_22828FC0C()
{
  result = qword_27D826B30;
  if (!qword_27D826B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D826B30);
  }

  return result;
}

uint64_t sub_22828FC60()
{
  v1 = *v0;
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  return sub_22838F0C0();
}

unint64_t sub_22828FD18()
{
  result = qword_27D826B38;
  if (!qword_27D826B38)
  {
    sub_22828FD70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D826B38);
  }

  return result;
}

void sub_22828FD70()
{
  if (!qword_27D826B40)
  {
    v0 = sub_228392240();
    if (!v1)
    {
      atomic_store(v0, &qword_27D826B40);
    }
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for PauseUsePeriod(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for PauseUsePeriod(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_22828FEA4(_BYTE *a1)
{
  if (*a1 == 1)
  {
    v15 = MEMORY[0x277D84F90];
    v1 = 99;
    sub_2281CA154(0, 99, 0);
    v2 = 0;
    v3 = 1;
    result = v15;
    while (!v2)
    {
      v16 = result;
      v6 = *(result + 16);
      v5 = *(result + 24);
      if (v6 >= v5 >> 1)
      {
        sub_2281CA154((v5 > 1), v6 + 1, 1);
        result = v16;
      }

      *(result + 16) = v6 + 1;
      v7 = result + 16 * v6;
      *(v7 + 32) = v3;
      *(v7 + 40) = 0;
      v2 = v3 == 99;
      if (v3 == 99)
      {
        v3 = 0;
      }

      else
      {
        v8 = __OFADD__(v3++, 1);
        if (v8)
        {
          __break(1u);
          goto LABEL_23;
        }
      }

      if (!--v1)
      {
        return result;
      }
    }

LABEL_24:
    __break(1u);
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
    v9 = 99;
    sub_2281CA154(0, 99, 0);
    v10 = 0;
    result = v17;
    v11 = 1;
    while (!v10)
    {
      v18 = result;
      v13 = *(result + 16);
      v12 = *(result + 24);
      if (v13 >= v12 >> 1)
      {
        sub_2281CA154((v12 > 1), v13 + 1, 1);
        result = v18;
      }

      *(result + 16) = v13 + 1;
      v14 = result + 16 * v13;
      *(v14 + 32) = v11;
      *(v14 + 40) = 1;
      v10 = v11 == 99;
      if (v11 == 99)
      {
        v11 = 0;
      }

      else
      {
        v8 = __OFADD__(v11++, 1);
        if (v8)
        {
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }
      }

      if (!--v9)
      {
        return result;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t OntologyShardStateObserver.__allocating_init(identifier:healthStore:settingsManager:)(void *a1, void *a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  OntologyShardStateObserver.init(identifier:healthStore:settingsManager:)(a1, a2, a3);
  return v9;
}

uint64_t OntologyShardStateObserver.$isImported.getter()
{
  swift_beginAccess();
  sub_228292DFC(0, &qword_280DDBBD0, MEMORY[0x277D839B0], MEMORY[0x277CBCED0]);
  sub_228391930();
  return swift_endAccess();
}

uint64_t OntologyShardStateObserver.shardState.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_228391960();

  return v1;
}

uint64_t sub_228290194@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_228391960();

  *a2 = v5;
  return result;
}

uint64_t sub_228290214(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_228391970();
}

uint64_t OntologyShardStateObserver.$shardState.getter()
{
  swift_beginAccess();
  sub_228292D98(0, &qword_280DDBBC8, type metadata accessor for HKOntologyShardState, MEMORY[0x277CBCED0]);
  sub_228391930();
  return swift_endAccess();
}

uint64_t sub_228290320(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  sub_228292D98(0, &qword_280DDBBC8, type metadata accessor for HKOntologyShardState, MEMORY[0x277CBCED0]);
  sub_228391930();
  return swift_endAccess();
}

uint64_t sub_2282903BC(uint64_t a1, uint64_t *a2)
{
  sub_228292D98(0, &qword_27D826BA8, type metadata accessor for HKOntologyShardState, MEMORY[0x277CBCEC0]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v4);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - v11;
  v13 = *(v6 + 16);
  v13(&v16 - v11, a1, v5);
  v14 = *a2;
  v13(v10, v12, v5);
  swift_beginAccess();
  sub_228292D98(0, &qword_280DDBBC8, type metadata accessor for HKOntologyShardState, MEMORY[0x277CBCED0]);
  sub_228391940();
  swift_endAccess();
  return (*(v6 + 8))(v12, v5);
}

uint64_t OntologyShardStateObserver.isImported.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_228391960();

  return v1;
}

uint64_t sub_2282905F8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_228391960();

  *a2 = v5;
  return result;
}

uint64_t sub_228290678(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_228391970();
}

uint64_t sub_2282906EC(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  sub_228292DFC(0, &qword_280DDBBD0, MEMORY[0x277D839B0], MEMORY[0x277CBCED0]);
  sub_228391930();
  return swift_endAccess();
}

uint64_t sub_22829077C(uint64_t a1, uint64_t *a2)
{
  v4 = MEMORY[0x277D839B0];
  sub_228292DFC(0, &unk_280DDBBE0, MEMORY[0x277D839B0], MEMORY[0x277CBCEC0]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v5);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - v12;
  v14 = *(v7 + 16);
  v14(&v17 - v12, a1, v6);
  v15 = *a2;
  v14(v11, v13, v6);
  swift_beginAccess();
  sub_228292DFC(0, &qword_280DDBBD0, v4, MEMORY[0x277CBCED0]);
  sub_228391940();
  swift_endAccess();
  return (*(v7 + 8))(v13, v6);
}

id OntologyShardStateObserver.identifier.getter()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI26OntologyShardStateObserver_identifier;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

char *OntologyShardStateObserver.init(identifier:healthStore:settingsManager:)(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v40 = a3;
  v37 = *v4;
  v7 = sub_2283911B0();
  v38 = *(v7 - 8);
  v39 = v7;
  v8 = *(v38 + 64);
  MEMORY[0x28223BE20](v7);
  v41 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228292DFC(0, &qword_280DDBBD0, MEMORY[0x277D839B0], MEMORY[0x277CBCED0]);
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  v15 = &v37 - v14;
  sub_228292D98(0, &qword_280DDBBC8, type metadata accessor for HKOntologyShardState, MEMORY[0x277CBCED0]);
  v17 = v16;
  v18 = *(v16 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  v21 = &v37 - v20;
  v22 = OBJC_IVAR____TtC19HealthMedicationsUI26OntologyShardStateObserver__shardState;
  v42 = 0;
  type metadata accessor for HKOntologyShardState(0);
  sub_228391920();
  (*(v18 + 32))(&v4[v22], v21, v17);
  v23 = a2;
  v24 = v40;
  v25 = OBJC_IVAR____TtC19HealthMedicationsUI26OntologyShardStateObserver__isImported;
  LOBYTE(v42) = 0;
  sub_228391920();
  (*(v12 + 32))(&v4[v25], v15, v11);
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI26OntologyShardStateObserver_identifier] = a1;
  v26 = objc_allocWithZone(MEMORY[0x277D10388]);
  v27 = a1;
  v28 = [v26 initWithHealthStore_];
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI26OntologyShardStateObserver_ontologyStore] = v28;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI26OntologyShardStateObserver_settingsManager] = v24;

  if (sub_228390740())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v42) = 1;

    sub_228391970();
    sub_228391150();
    v29 = sub_2283911A0();
    v30 = sub_2283925E0();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v42 = v32;
      *v31 = 136446210;
      v33 = sub_228393600();
      v35 = sub_2281C96FC(v33, v34, &v42);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_22816B000, v29, v30, "[%{public}s] Shard check override enabled. Skipping registering for shard updates", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x22AAB7B80](v32, -1, -1);
      MEMORY[0x22AAB7B80](v31, -1, -1);
    }

    else
    {
    }

    (*(v38 + 8))(v41, v39);
  }

  else
  {
    sub_228290E20();
    sub_22829103C();
  }

  return v4;
}

void sub_228290E20()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_2283911B0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228391150();
  v8 = sub_2283911A0();
  v9 = sub_2283925E0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136446210;
    v12 = sub_228393600();
    v14 = sub_2281C96FC(v12, v13, &v18);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_22816B000, v8, v9, "[%{public}s] Registering for shard updates.", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x22AAB7B80](v11, -1, -1);
    MEMORY[0x22AAB7B80](v10, -1, -1);
  }

  (*(v4 + 8))(v7, v3);
  v15 = *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI26OntologyShardStateObserver_ontologyStore);
  sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);
  v16 = sub_228392790();
  [v15 registerObserver:v1 queue:v16];
}

void sub_22829103C()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_2283911B0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228391150();
  v8 = sub_2283911A0();
  v9 = sub_2283925E0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    aBlock[0] = v11;
    *v10 = 136446210;
    v12 = sub_228393600();
    v20 = v3;
    v14 = sub_2281C96FC(v12, v13, aBlock);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_22816B000, v8, v9, "[%{public}s] Querying for ontology shard registry entries.", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x22AAB7B80](v11, -1, -1);
    MEMORY[0x22AAB7B80](v10, -1, -1);

    (*(v4 + 8))(v7, v20);
  }

  else
  {

    (*(v4 + 8))(v7, v3);
  }

  v15 = *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI26OntologyShardStateObserver_ontologyStore);
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = v2;
  aBlock[4] = sub_228292EC8;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2282919C8;
  aBlock[3] = &block_descriptor_24;
  v18 = _Block_copy(aBlock);

  [v15 ontologyShardRegistryEntriesWithCompletion_];
  _Block_release(v18);
}

uint64_t sub_2282912FC(uint64_t a1, void *a2)
{
  v4 = sub_2283911B0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v35 - v10;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a2)
    {
      v13 = a2;
      sub_228391150();
      v14 = a2;
      v15 = sub_2283911A0();
      v16 = sub_2283925C0();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v35[0] = swift_slowAlloc();
        v36 = v35[0];
        *v17 = 136446466;
        v18 = sub_228393600();
        v20 = v5;
        v21 = sub_2281C96FC(v18, v19, &v36);

        *(v17 + 4) = v21;
        *(v17 + 12) = 2082;
        v35[1] = a2;
        v22 = a2;
        sub_228192C1C();
        v23 = sub_228392020();
        v25 = sub_2281C96FC(v23, v24, &v36);

        *(v17 + 14) = v25;
        _os_log_impl(&dword_22816B000, v15, v16, "[%{public}s] Failed to get ontology shard registry entries, error: %{public}s", v17, 0x16u);
        v26 = v35[0];
        swift_arrayDestroy();
        MEMORY[0x22AAB7B80](v26, -1, -1);
        MEMORY[0x22AAB7B80](v17, -1, -1);

        (*(v20 + 8))(v11, v4);
      }

      else
      {

        (*(v5 + 8))(v11, v4);
      }

      sub_2282916B8(MEMORY[0x277D84F90]);
    }

    else
    {
      if (a1)
      {
        v27 = a1;
      }

      else
      {
        sub_228391150();
        v28 = sub_2283911A0();
        v29 = sub_2283925C0();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          v36 = v31;
          *v30 = 136446210;
          v32 = sub_228393600();
          v34 = sub_2281C96FC(v32, v33, &v36);

          *(v30 + 4) = v34;
          _os_log_impl(&dword_22816B000, v28, v29, "[%{public}s] Failed to get ontology shard registry entries, entries were unexpectedly nil.", v30, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v31);
          MEMORY[0x22AAB7B80](v31, -1, -1);
          MEMORY[0x22AAB7B80](v30, -1, -1);
        }

        (*(v5 + 8))(v9, v4);
        v27 = MEMORY[0x277D84F90];
      }

      sub_2282916B8(v27);
    }
  }

  return result;
}

uint64_t sub_2282916B8(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_228391DC0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_228391DF0();
  v9 = *(v19 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v19);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);
  v13 = sub_228392790();
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = a1;
  v15[4] = v3;
  aBlock[4] = sub_228292E4C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228191E9C;
  aBlock[3] = &block_descriptor_17;
  v16 = _Block_copy(aBlock);

  sub_228391DE0();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_228292E70();
  sub_228292D98(0, &qword_280DDCF00, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_228216D44();
  sub_228393030();
  MEMORY[0x22AAB6340](0, v12, v8, v16);
  _Block_release(v16);

  (*(v5 + 8))(v8, v4);
  return (*(v9 + 8))(v12, v19);
}

uint64_t sub_2282919C8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_22817A958(0, &qword_27D826BB0, 0x277CCD760);
    v4 = sub_2283921A0();
  }

  v7 = a3;
  v6(v4, a3);
}

void sub_228291A6C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = sub_2283911B0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v75 - v11;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v14 = Strong;
  v15 = OBJC_IVAR____TtC19HealthMedicationsUI26OntologyShardStateObserver_identifier;
  swift_beginAccess();
  v16 = *(v14 + v15);
  v82 = HKOntologyShardSchemaTypeForShardIdentifier();
  v84 = v15;
  v17 = *(v14 + v15);
  v18 = HKCurrentSchemaVersionForShardIdentifier();
  v80 = v5;
  v81 = v18;
  v85 = a2;
  v78 = v10;
  v79 = v6;
  v76 = v12;
  v77 = a3;
  if (a2 >> 62)
  {
LABEL_30:
    v19 = sub_2283930D0();
    if (v19)
    {
      goto LABEL_4;
    }

LABEL_31:
    v62 = v78;
    sub_228391150();

    v63 = sub_2283911A0();
    v64 = sub_2283925C0();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v86 = v66;
      *v65 = 136446466;
      v67 = sub_228393600();
      v69 = v14;
      v70 = sub_2281C96FC(v67, v68, &v86);

      *(v65 + 4) = v70;
      *(v65 + 12) = 2082;
      v71 = *(v69 + v84);
      v72 = sub_228392000();
      v74 = sub_2281C96FC(v72, v73, &v86);

      *(v65 + 14) = v74;
      _os_log_impl(&dword_22816B000, v63, v64, "[%{public}s] Failed to find %{public}s shard in registry entries.", v65, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAB7B80](v66, -1, -1);
      MEMORY[0x22AAB7B80](v65, -1, -1);
    }

    else
    {
    }

    (*(v79 + 8))(v62, v80);
    return;
  }

  v19 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v19)
  {
    goto LABEL_31;
  }

LABEL_4:
  v20 = 0;
  v83 = v85 & 0xC000000000000001;
  v21 = v85 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v83)
    {
      v23 = MEMORY[0x22AAB6D80](v20, v85);
    }

    else
    {
      if (v20 >= *(v21 + 16))
      {
        goto LABEL_29;
      }

      v23 = *(v85 + 8 * v20 + 32);
    }

    v24 = v23;
    v25 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v26 = [v23 identifier];
    v27 = v14;
    v28 = *(v14 + v84);
    v29 = sub_228392000();
    v31 = v30;
    if (v29 == sub_228392000() && v31 == v32)
    {
    }

    else
    {
      v34 = sub_228393460();

      if ((v34 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v35 = [v24 schemaType];
    v36 = sub_228392000();
    v38 = v37;
    if (v36 == sub_228392000() && v38 == v39)
    {
    }

    else
    {
      v40 = sub_228393460();

      if ((v40 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v22 = [v24 schemaVersion];
    if (v22 == v81)
    {
      break;
    }

LABEL_7:

    ++v20;
    v14 = v27;
    if (v25 == v19)
    {
      goto LABEL_31;
    }
  }

  v41 = [v24 currentVersion];
  v42 = v76;
  sub_228391150();

  v43 = v24;
  v44 = sub_2283911A0();
  v45 = sub_2283925E0();

  v46 = &selRef_localizedStringFromTimeInterval_;
  if (os_log_type_enabled(v44, v45))
  {
    LODWORD(v85) = v41 > 0;
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v86 = v48;
    *v47 = 136446978;
    v49 = sub_228393600();
    v51 = sub_2281C96FC(v49, v50, &v86);

    *(v47 + 4) = v51;
    *(v47 + 12) = 2082;
    v52 = *(v27 + v84);
    v53 = sub_228392000();
    v55 = sub_2281C96FC(v53, v54, &v86);

    *(v47 + 14) = v55;
    *(v47 + 22) = 2082;
    [v43 availableState];
    v56 = HKStringFromOntologyShardState();
    v57 = sub_228392000();
    v59 = v58;

    v60 = sub_2281C96FC(v57, v59, &v86);
    v46 = &selRef_localizedStringFromTimeInterval_;

    *(v47 + 24) = v60;
    *(v47 + 32) = 1026;
    *(v47 + 34) = v85;
    _os_log_impl(&dword_22816B000, v44, v45, "[%{public}s] Current %{public}s availability state: %{public}s isImported: %{BOOL,public}d", v47, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x22AAB7B80](v48, -1, -1);
    MEMORY[0x22AAB7B80](v47, -1, -1);

    (*(v79 + 8))(v76, v80);
  }

  else
  {

    (*(v79 + 8))(v42, v80);
  }

  v61 = [v43 v46[17]];
  swift_getKeyPath();
  swift_getKeyPath();
  v86 = v61;

  sub_228391970();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v86) = v41 > 0;
  sub_228391970();
}

uint64_t OntologyShardStateObserver.deinit()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI26OntologyShardStateObserver__shardState;
  sub_228292D98(0, &qword_280DDBBC8, type metadata accessor for HKOntologyShardState, MEMORY[0x277CBCED0]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI26OntologyShardStateObserver__isImported;
  sub_228292DFC(0, &qword_280DDBBD0, MEMORY[0x277D839B0], MEMORY[0x277CBCED0]);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI26OntologyShardStateObserver_settingsManager);

  return v0;
}

uint64_t OntologyShardStateObserver.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI26OntologyShardStateObserver__shardState;
  sub_228292D98(0, &qword_280DDBBC8, type metadata accessor for HKOntologyShardState, MEMORY[0x277CBCED0]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI26OntologyShardStateObserver__isImported;
  sub_228292DFC(0, &qword_280DDBBD0, MEMORY[0x277D839B0], MEMORY[0x277CBCED0]);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI26OntologyShardStateObserver_settingsManager);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_228292460(uint64_t a1, uint64_t a2, void *a3, void *a4, void (*a5)(id))
{
  v7 = a3;
  v8 = a4;

  a5(v8);
}

uint64_t sub_22829252C(void *a1)
{
  v3 = *v1;
  v4 = sub_2283911B0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228391150();
  v9 = a1;
  v10 = sub_2283911A0();
  v11 = sub_2283925E0();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v21 = v4;
    v13 = v12;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v22 = v15;
    *v13 = 136446467;
    v16 = sub_228393600();
    v18 = sub_2281C96FC(v16, v17, &v22);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2117;
    *(v13 + 14) = v9;
    *v14 = v9;
    v19 = v9;
    _os_log_impl(&dword_22816B000, v10, v11, "[%{public}s] Did stage registry entry: %{sensitive}@", v13, 0x16u);
    sub_228193354(v14);
    MEMORY[0x22AAB7B80](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x22AAB7B80](v15, -1, -1);
    MEMORY[0x22AAB7B80](v13, -1, -1);

    return (*(v5 + 8))(v8, v21);
  }

  else
  {

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_22829275C(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_2283911B0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228391150();
  v10 = a1;
  v11 = sub_2283911A0();
  v12 = sub_2283925E0();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v27 = v2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v28 = v16;
    *v14 = 136446467;
    v17 = sub_228393600();
    v19 = sub_2281C96FC(v17, v18, &v28);
    v26 = v5;
    v20 = v19;

    *(v14 + 4) = v20;
    *(v14 + 12) = 2117;
    *(v14 + 14) = v10;
    *v15 = v10;
    v21 = v10;
    _os_log_impl(&dword_22816B000, v11, v12, "[%{public}s] Did import registry entry: %{sensitive}@", v14, 0x16u);
    sub_228193354(v15);
    MEMORY[0x22AAB7B80](v15, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x22AAB7B80](v16, -1, -1);
    MEMORY[0x22AAB7B80](v14, -1, -1);

    (*(v6 + 8))(v9, v26);
  }

  else
  {

    (*(v6 + 8))(v9, v5);
  }

  sub_228292DFC(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_228396260;
  *(v22 + 32) = v10;
  v23 = v10;
  sub_2282916B8(v22);
}

void _s19HealthMedicationsUI26OntologyShardStateObserverC13ontologyStore12didReconnectySo010HKOntologyI0C_tF_0()
{
  v1 = *v0;
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228391150();
  v7 = sub_2283911A0();
  v8 = sub_2283925E0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136446210;
    v11 = sub_228393600();
    v13 = sub_2281C96FC(v11, v12, &v15);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_22816B000, v7, v8, "[%{public}s] did reconnect to healthd", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AAB7B80](v10, -1, -1);
    MEMORY[0x22AAB7B80](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  sub_22829103C();
}

uint64_t type metadata accessor for OntologyShardStateObserver()
{
  result = qword_280DDC2D0;
  if (!qword_280DDC2D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_228292C2C()
{
  sub_228292D98(319, &qword_280DDBBC8, type metadata accessor for HKOntologyShardState, MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_228292DFC(319, &qword_280DDBBD0, MEMORY[0x277D839B0], MEMORY[0x277CBCED0]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_228292D98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_228292DFC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_228292E70()
{
  result = qword_280DDCF10;
  if (!qword_280DDCF10)
  {
    sub_228391DC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DDCF10);
  }

  return result;
}

uint64_t sub_228292EC8(uint64_t a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_2282912FC(a1, a2);
}

uint64_t type metadata accessor for NicknameAndNotesDataSource()
{
  result = qword_27D826BD0;
  if (!qword_27D826BD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_228292F84(uint64_t a1, uint64_t a2)
{
  v5 = sub_22838F4A0();
  v27 = *(v5 - 8);
  v28 = v5;
  v6 = *(v27 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_27D826BC0) = *MEMORY[0x277D11408];
  *(v2 + qword_27D826BC8) = *MEMORY[0x277D11410];
  *(v2 + qword_27D826BB8) = a1;

  if (sub_228294620(a2))
  {
    v24[0] = v8;
    v24[1] = v2;
    v25 = a2;
    v26 = a1;
    sub_228294EB8(0, &qword_27D823910, MEMORY[0x277D10F78], MEMORY[0x277D84560]);
    v9 = *(sub_22838FEF0() - 8);
    v10 = *(v9 + 72);
    v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    *(swift_allocObject() + 16) = xmmword_228397F30;
    if (qword_280DDCF18 != -1)
    {
      swift_once();
    }

    sub_22838F0C0();
    sub_22838FED0();
    sub_22838F0C0();
    sub_22838FED0();
    v29[0] = 0;
    v29[1] = 0xE000000000000000;
    sub_2283931D0();

    strcpy(v29, "MutableArray<");
    HIWORD(v29[1]) = -4864;
    v12 = v24[0];
    sub_22838F490();
    v13 = sub_22838F450();
    v15 = v14;
    (*(v27 + 8))(v12, v28);
    MEMORY[0x22AAB5C80](v13, v15);

    MEMORY[0x22AAB5C80](62, 0xE100000000000000);
    v16 = sub_22838FF30();

    sub_22829359C();
    sub_22838FF60();
    a2 = v25;
  }

  else
  {
    sub_228294EB8(0, &qword_27D823910, MEMORY[0x277D10F78], MEMORY[0x277D84560]);
    v17 = *(sub_22838FEF0() - 8);
    v18 = *(v17 + 72);
    v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    *(swift_allocObject() + 16) = xmmword_228397F40;
    if (qword_280DDCF18 != -1)
    {
      swift_once();
    }

    sub_22838F0C0();
    sub_22838FED0();
    v29[0] = 0;
    v29[1] = 0xE000000000000000;
    sub_2283931D0();

    strcpy(v29, "MutableArray<");
    HIWORD(v29[1]) = -4864;
    sub_22838F490();
    v20 = sub_22838F450();
    v22 = v21;
    (*(v27 + 8))(v8, v28);
    MEMORY[0x22AAB5C80](v20, v22);

    MEMORY[0x22AAB5C80](62, 0xE100000000000000);
    v16 = sub_22838FF30();

    sub_22829359C();
    sub_22838FF60();
  }

  sub_2282951AC(a2, &unk_27D826BF0, &type metadata for TransientSchedule, MEMORY[0x277D83D88], sub_228295034);

  return v16;
}

uint64_t sub_22829359C()
{
  v53 = type metadata accessor for TextViewItem();
  v1 = *(*(v53 - 1) + 64);
  MEMORY[0x28223BE20](v53);
  v54 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for FieldItem();
  v4 = *(*(v3 - 1) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = *(v0 + qword_27D826BB8);
  sub_228391870();
  v7 = v56;
  if (v56 == 1 || (v8 = v55, , sub_228294FEC(v8, v7), !v7))
  {

    v8 = 0;
    v7 = 0xE000000000000000;
  }

  v47 = v8;
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  v48 = qword_280DDCF30;
  v49 = *algn_280DDCF28;
  v50 = qword_280DDCF20;
  v9 = sub_22838F0C0();
  v44 = v10;
  v45 = v9;
  v46 = *(v0 + qword_27D826BC0);
  v11 = swift_allocObject();
  v52 = v0;
  swift_weakInit();
  sub_22838F490();
  v12 = &v6[v3[5]];
  v13 = &v6[v3[6]];
  v14 = &v6[v3[10]];
  v15 = &v6[v3[14]];
  v16 = &v6[v3[15]];
  type metadata accessor for FieldCell();
  sub_2282945D8(&qword_27D828780, type metadata accessor for FieldCell);
  *v16 = sub_22838FBB0();
  v16[1] = v17;
  *v12 = v47;
  *(v12 + 1) = v7;
  v18 = v44;
  *v13 = v45;
  *(v13 + 1) = v18;
  *&v6[v3[7]] = 0x404A000000000000;
  *v14 = v46;
  v14[8] = 0;
  v6[v3[9]] = 0;
  v6[v3[8]] = 1;
  *&v6[v3[12]] = 0;
  *v15 = 0;
  *(v15 + 1) = 0;
  v19 = &v6[v3[13]];
  *v19 = sub_228294F1C;
  v19[1] = v11;
  v6[v3[11]] = 0;
  sub_228391870();
  v20 = v56;
  if (v56 == 1)
  {
    v51 = 0;
    v21 = 0xE000000000000000;
  }

  else
  {
    v23 = v57;
    v22 = v58;
    v24 = v55;

    sub_228294FEC(v24, v20);
    if (v22)
    {
      v25 = v23;
    }

    else
    {
      v25 = 0;
    }

    v51 = v25;
    v21 = 0xE000000000000000;
    if (v22)
    {
      v21 = v22;
    }
  }

  v47 = v21;
  v26 = sub_22838F0C0();
  v49 = v27;
  v50 = v26;
  v48 = *(v52 + qword_27D826BC8);
  v28 = swift_allocObject();
  swift_weakInit();
  v29 = v54;
  sub_22838F490();
  v30 = v53;
  v31 = (v29 + v53[5]);
  v32 = (v29 + v53[6]);
  v33 = v29 + v53[7];
  v34 = (v29 + v53[11]);
  type metadata accessor for TextItemCell();
  sub_2282945D8(&qword_27D826280, type metadata accessor for TextItemCell);
  *v34 = sub_22838FBB0();
  v34[1] = v35;
  v36 = v47;
  *v31 = v51;
  v31[1] = v36;
  *(v29 + v30[8]) = 0x4064800000000000;
  v37 = v49;
  *v32 = v50;
  v32[1] = v37;
  *v33 = v48;
  *(v33 + 8) = 0;
  *(v29 + v30[9]) = 1;
  v38 = (v29 + v30[10]);
  *v38 = sub_228294F24;
  v38[1] = v28;
  sub_228294EB8(0, &qword_27D823918, sub_228182780, MEMORY[0x277D84560]);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_228397F30;
  *(v39 + 56) = v3;
  *(v39 + 64) = sub_2282945D8(&unk_27D828790, type metadata accessor for FieldItem);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v39 + 32));
  sub_228294F2C(v6, boxed_opaque_existential_1);
  *(v39 + 96) = v30;
  *(v39 + 104) = sub_2282945D8(&unk_27D826290, type metadata accessor for TextViewItem);
  v41 = __swift_allocate_boxed_opaque_existential_1((v39 + 72));
  sub_22826D724(v29, v41);
  sub_228294F90(v6);
  return v39;
}

uint64_t sub_228293B2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = qword_27D826BB8;
    v8 = *(result + qword_27D826BB8);
    sub_228391870();
    if (v13 == 1)
    {
      v9 = *(v6 + v7);
      sub_228391870();
      if (v12 != 1)
      {

        sub_228294FEC(v11, v12);
      }
    }

    v10 = *(v6 + v7);

    sub_228391850();
    sub_228294FEC(a2, a3);
  }

  return result;
}

uint64_t sub_228293C74()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = qword_27D826BB8;
    v3 = *(result + qword_27D826BB8);
    sub_228391870();
    v4 = v11;
    if (v11 == 1)
    {
      v5 = *(v1 + v2);
      sub_228391870();
      v4 = v9;
      if (v9 == 1)
      {
        v6 = 0;
        v4 = 0;
      }

      else
      {
        v6 = v8;

        sub_228294FEC(v8, v9);
      }
    }

    else
    {
      v6 = v10;
    }

    v7 = *(v1 + v2);

    sub_228391850();
    sub_228294FEC(v6, v4);
  }

  return result;
}

unint64_t sub_228293DC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_228294EB8(0, &qword_27D824EB0, MEMORY[0x277D10FE0], MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v24 - v8;
  v10 = sub_22838FEF0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *MEMORY[0x277D767D8];
  if (sub_228392000() == a1 && v16 == a2)
  {

LABEL_8:
    v19 = sub_22838FF40();
    result = sub_22838F750();
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (result < *(v19 + 16))
    {
      (*(v11 + 16))(v14, v19 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * result, v10);

      sub_22838FEE0();
      v22 = v21;
      (*(v11 + 8))(v14, v10);
      if (v22)
      {
        v23 = sub_228390130();
        (*(*(v23 - 8) + 56))(v9, 1, 1, v23);
        a3[3] = sub_228390150();
        a3[4] = sub_2282945D8(&qword_27D824EC8, MEMORY[0x277D10FE8]);
        __swift_allocate_boxed_opaque_existential_1(a3);
        return sub_228390140();
      }

      goto LABEL_12;
    }

    __break(1u);
    return result;
  }

  v18 = sub_228393460();

  if (v18)
  {
    goto LABEL_8;
  }

LABEL_12:
  a3[3] = sub_22838FC00();
  a3[4] = sub_2282945D8(&qword_27D823958, MEMORY[0x277D10EC8]);
  __swift_allocate_boxed_opaque_existential_1(a3);
  return sub_22838FBF0();
}

uint64_t sub_2282940F8(unint64_t a1)
{
  v3 = *v1;
  v4 = sub_2283900D0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_22838FD40();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(result + 16) > a1)
  {
    v10 = result + 16 * a1;
    v12 = *(v10 + 32);
    v11 = *(v10 + 40);

    if (v12 == 0x656C756465686373 && v11 == 0xEF6E6F6974636553)
    {
    }

    else
    {
      v14 = sub_228393460();

      if ((v14 & 1) == 0)
      {
        sub_228390010();
        sub_228390070();
LABEL_11:
        v15 = sub_2283900C0();
        (*(v5 + 8))(v8, v4);
        return v15;
      }
    }

    sub_228390010();
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_22829430C()
{
  v0 = *(sub_22838FFB0() + qword_27D826BB8);

  return swift_deallocClassInstance();
}

uint64_t sub_228294364()
{
  sub_228390120();
  sub_2283926D0();
  type metadata accessor for FieldCell();
  sub_2282945D8(&qword_27D828780, type metadata accessor for FieldCell);
  sub_2283926B0();
  type metadata accessor for TextItemCell();
  sub_2282945D8(&qword_27D826280, type metadata accessor for TextItemCell);
  sub_2283926B0();
  sub_228390420();
  sub_2283926D0();
  sub_2283904F0();
  sub_2283926B0();
  type metadata accessor for ScheduleIntervalCell();
  sub_2282945D8(&qword_27D8244F0, type metadata accessor for ScheduleIntervalCell);
  return sub_2283926B0();
}

uint64_t sub_2282945D8(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_228294620(uint64_t a1)
{
  v69 = sub_22838FEF0();
  v2 = *(v69 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v69);
  v68 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228295034(0, &qword_27D8245C0, MEMORY[0x277D839B0], MEMORY[0x277CBCE78]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v61 - v9;
  v11 = sub_228390EC0();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = *(a1 + 40);
  if (!v13)
  {
    return 0;
  }

  v61 = v10;
  v62 = v7;
  v63 = v6;
  v14 = *(a1 + 32);
  v15 = *(a1 + 16);
  v72 = *a1;
  v73 = v15;
  v74[0] = v14;
  sub_228390890();
  v16 = v13;
  sub_228295084(a1, v71, &unk_27D826BF0, &type metadata for TransientSchedule, MEMORY[0x277D83D88], sub_228295034);
  sub_228295084(v74, v71, &unk_27D8277B0, &qword_27D823BD8, 0x277CCD1B0, sub_2281BC2E4);
  sub_228390880();
  v17 = sub_228390830();

  v18 = sub_228391020();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v21 = sub_228390FF0();
  v22 = type metadata accessor for ScheduleDataSource(0);
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  v66 = v22;
  v25 = swift_allocObject();
  v71[3] = &type metadata for TransientSchedule;
  v71[4] = sub_2282950F8();
  v26 = swift_allocObject();
  v71[0] = v26;
  v27 = v73;
  *(v26 + 16) = v72;
  *(v26 + 32) = v27;
  *(v26 + 48) = v14;
  *(v26 + 56) = v16;
  v28 = (v25 + qword_27D8244C0);
  *v28 = 0xD000000000000014;
  v28[1] = 0x80000002283A9440;
  v29 = qword_27D8244C8;
  v30 = v16;
  sub_228295084(v74, v70, &unk_27D8277B0, &qword_27D823BD8, 0x277CCD1B0, sub_2281BC2E4);
  sub_228390EB0();
  v31 = objc_allocWithZone(sub_228390EF0());
  *(v25 + v29) = sub_228390EE0();
  v32 = qword_27D8244D0;
  *(v25 + qword_27D8244D0) = 0;
  v33 = qword_27D8244E0;
  *(v25 + qword_27D8244E0) = 0;
  *(v25 + qword_27D8244E8) = MEMORY[0x277D84FA0];
  sub_228180FB0(v71, v25 + qword_27D8244B0);
  *(v25 + v32) = v17;
  *(v25 + qword_27D8244D8) = v21;
  v70[0] = v13;
  sub_2281BC72C();
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  v37 = v30;
  v65 = v17;

  *(v25 + qword_27D8244B8) = sub_228391890();
  *(v25 + qword_27D8244A8) = 1;
  v38 = *(v25 + v33);
  *(v25 + v33) = 0;

  sub_228294EB8(0, &qword_27D823910, MEMORY[0x277D10F78], MEMORY[0x277D84560]);
  v39 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v67 = *(v2 + 72);
  *(swift_allocObject() + 16) = xmmword_228397F40;
  v64 = v39;
  sub_22838FED0();
  v40 = *(sub_22838F920() + qword_27D8244E0);
  if (v40)
  {

    v41 = v40;
  }

  else
  {
    LOBYTE(v70[0]) = 1;

    v43 = v61;
    sub_2283918C0();
    sub_2281ED0F4();
    v44 = v63;
    v41 = sub_228391990();
    (*(v62 + 8))(v43, v44);
  }

  v70[0] = v41;
  swift_allocObject();
  swift_weakInit();
  sub_22829514C();
  sub_2282945D8(&qword_27D8245D8, sub_22829514C);

  sub_228391AC0();

  swift_beginAccess();
  sub_228391800();
  swift_endAccess();

  sub_2281AFAAC();
  sub_2282951AC(v74, &unk_27D8277B0, &qword_27D823BD8, 0x277CCD1B0, sub_2281BC2E4);

  __swift_destroy_boxed_opaque_existential_0(v71);
  sub_2282945D8(&qword_27D826C00, type metadata accessor for ScheduleDataSource);
  v45 = sub_22838FD20();

  v46 = v45[2];
  if (!v46)
  {

    v42 = MEMORY[0x277D84F90];
LABEL_25:
    sub_2282951AC(v74, &unk_27D8277B0, &qword_27D823BD8, 0x277CCD1B0, sub_2281BC2E4);

    return v42;
  }

  v65 = v45;
  v66 = v37;
  v47 = v45 + v64;
  v48 = *(v2 + 16);
  v49 = (v2 + 8);
  v42 = MEMORY[0x277D84F90];
  while (1)
  {
    v52 = v68;
    v51 = v69;
    v48(v68, v47, v69);
    v53 = sub_22838FEC0();
    result = (*v49)(v52, v51);
    v54 = *(v53 + 16);
    v55 = v42[2];
    v56 = v55 + v54;
    if (__OFADD__(v55, v54))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v56 <= v42[3] >> 1)
    {
      if (*(v53 + 16))
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v55 <= v56)
      {
        v57 = v55 + v54;
      }

      else
      {
        v57 = v55;
      }

      result = sub_22819872C(result, v57, 1, v42);
      v42 = result;
      if (*(v53 + 16))
      {
LABEL_19:
        if ((v42[3] >> 1) - v42[2] < v54)
        {
          goto LABEL_29;
        }

        sub_228182780();
        swift_arrayInitWithCopy();

        if (v54)
        {
          v58 = v42[2];
          v59 = __OFADD__(v58, v54);
          v60 = v58 + v54;
          if (v59)
          {
            goto LABEL_30;
          }

          v42[2] = v60;
        }

        goto LABEL_9;
      }
    }

    if (v54)
    {
      goto LABEL_28;
    }

LABEL_9:
    v47 += v67;
    if (!--v46)
    {

      v37 = v66;
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

void sub_228294EB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_228294F2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FieldItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_228294F90(uint64_t a1)
{
  v2 = type metadata accessor for FieldItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_228294FEC(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

void sub_228295034(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_228295084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

unint64_t sub_2282950F8()
{
  result = qword_27D826BF8;
  if (!qword_27D826BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D826BF8);
  }

  return result;
}

void sub_22829514C()
{
  if (!qword_27D8245D0)
  {
    v0 = sub_2283917F0();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8245D0);
    }
  }
}

uint64_t sub_2282951AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_22829520C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + qword_27D826C08);
  swift_beginAccess();
  v5 = v4[1];
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_228295278()
{
  v1 = (v0 + qword_27D826C08);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_2282952D0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + qword_27D826C08);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t FrequencyPickerDataSource.__allocating_init(frequencyPublisher:frequencyIntervalPublisher:cycleUnitPublisher:context:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  v12 = (v11 + qword_27D826C08);
  v13 = *MEMORY[0x277D12788];
  v21 = sub_228392000();
  v22 = v14;

  MEMORY[0x22AAB5C80](0xD000000000000017, 0x80000002283AF450);
  v19 = a4[1];
  v20 = *a4;

  *v12 = v21;
  v12[1] = v22;
  *(v11 + qword_27D826C10) = 0;
  *(v11 + qword_27D826C18) = a1;
  *(v11 + qword_27D826C20) = a2;
  *(v11 + qword_27D826C28) = a3;
  v15 = (v11 + qword_27D826C30);
  *v15 = v20;
  v15[1] = v19;

  v16 = sub_228390380();

  v17 = sub_228296ABC();
  sub_228194894(v17);

  sub_22838FF60();

  sub_228296E9C();
  sub_2282957D8();

  return v16;
}

uint64_t FrequencyPickerDataSource.init(frequencyPublisher:frequencyIntervalPublisher:cycleUnitPublisher:context:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v9 = (v4 + qword_27D826C08);
  v10 = *MEMORY[0x277D12788];
  v18 = sub_228392000();
  v19 = v11;

  MEMORY[0x22AAB5C80](0xD000000000000017, 0x80000002283AF450);
  v16 = a4[1];
  v17 = *a4;

  *v9 = v18;
  v9[1] = v19;
  *(v4 + qword_27D826C10) = 0;
  *(v4 + qword_27D826C18) = a1;
  *(v4 + qword_27D826C20) = a2;
  *(v4 + qword_27D826C28) = a3;
  v12 = (v4 + qword_27D826C30);
  *v12 = v17;
  v12[1] = v16;

  v13 = sub_228390380();

  v14 = sub_228296ABC();
  sub_228194894(v14);

  sub_22838FF60();

  sub_228296E9C();
  sub_2282957D8();

  return v13;
}

void *sub_2282956E0()
{
  v0 = sub_2283900D0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228390010();
  v5 = sub_2283900C0();
  (*(v1 + 8))(v4, v0);
  [v5 contentInsets];
  [v5 setContentInsets_];
  return v5;
}

uint64_t sub_2282957D8()
{
  v1 = v0;
  sub_228297B20(0, &qword_280DDBAD0, MEMORY[0x277D85248]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  sub_228297B74();
  v18 = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v0 + qword_27D826C18);
  sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);

  v11 = sub_228392790();
  v19 = v11;
  v12 = sub_228392730();
  (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
  sub_228297C40();
  sub_2282976E0(&qword_27D825868, sub_228297C40);
  sub_2281A1504();
  sub_228391A70();
  sub_2281A16F0(v5);

  swift_allocObject();
  swift_weakInit();
  sub_2282976E0(&qword_27D826CA0, sub_228297B74);
  v13 = v18;
  v14 = sub_228391AC0();

  (*(v7 + 8))(v10, v13);
  v15 = *(v1 + qword_27D826C10);
  *(v1 + qword_27D826C10) = v14;
}

uint64_t sub_228295AB4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_228296E9C();
  }

  return result;
}

uint64_t sub_228295B0C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v42 = a1;
  v35 = *v1;
  v3 = sub_228390460();
  v40 = *(v3 - 8);
  v41 = v3;
  v4 = *(v40 + 64);
  MEMORY[0x28223BE20](v3);
  v39 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228297B20(0, &unk_280DDBCD0, MEMORY[0x277D74BD0]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v34 - v8;
  v36 = sub_22838FFC0();
  v10 = *(v36 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v36);
  v38 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_228391590();
  v13 = *(v37 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v37);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v1 + qword_27D826C18);
  sub_228391870();
  sub_2281F8E98(v45);
  sub_228391580();
  v18 = [objc_opt_self() linkColor];
  v19 = sub_2283914A0();
  sub_228391420();
  v19(&v45, 0);
  sub_228391540();
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  sub_2283913D0();
  v20 = sub_2283914C0();
  *v21 = *v21 + 4.0;
  v20(&v45, 0);
  v22 = sub_2283914C0();
  *(v23 + 16) = *(v23 + 16) + 4.0;
  v22(&v45, 0);
  v45 = 0;
  v46 = 0xE000000000000000;
  sub_2283931D0();
  v24 = sub_228393600();
  v26 = v25;

  v45 = v24;
  v46 = v26;
  MEMORY[0x22AAB5C80](0xD000000000000010, 0x80000002283B0DF0);
  v35 = v45;
  v27 = v37;
  v47 = v37;
  v48 = MEMORY[0x277D74C30];
  v28 = __swift_allocate_boxed_opaque_existential_1(&v45);
  (*(v13 + 16))(v28, v16, v27);
  swift_allocObject();
  swift_weakInit();
  v29 = v38;
  *v38 = 1;
  (*(v10 + 104))(v29, *MEMORY[0x277D10F90], v36);

  sub_228391390();
  sub_22817A958(0, &qword_280DDB990, 0x277D75348);
  sub_228392BD0();
  sub_228391370();
  v30 = sub_2283913A0();
  (*(*(v30 - 8) + 56))(v9, 0, 1, v30);
  v31 = (v2 + qword_27D826C08);
  swift_beginAccess();
  v32 = v31[1];
  v43 = *v31;
  v44 = v32;

  MEMORY[0x22AAB5C80](0xD000000000000014, 0x80000002283B0E10);
  (*(v40 + 104))(v39, *MEMORY[0x277D11140], v41);
  sub_228390160();
  (*(v13 + 8))(v16, v27);
}

void sub_228296108(void *a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + qword_27D826C18);
    v4 = *(Strong + qword_27D826C30 + 8);
    v5 = *(Strong + qword_27D826C30 + 16);
    v6 = *(Strong + qword_27D826C30 + 24);
    v9[0] = *(Strong + qword_27D826C30);
    v9[1] = v4;
    v9[2] = v5;
    v9[3] = v6;
    objc_allocWithZone(type metadata accessor for ScheduleTypePickerViewController(0));

    sub_228267888(v9[0], v4);
    v7 = sub_228267B30(v3, v9);
    v8 = [objc_allocWithZone(MEMORY[0x277D12978]) initWithRootViewController_];
    [v8 setModalPresentationStyle_];
    [v8 setModalInPresentation_];
    [a1 presentViewController:v8 animated:1 completion:0];
  }
}

uint64_t sub_228296248@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_22838F4A0();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_228297B20(0, &unk_280DDBCD0, MEMORY[0x277D74BD0]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v12[1] = sub_22830F9DC();
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  sub_228391390();
  sub_22817A958(0, &qword_280DDB990, 0x277D75348);
  sub_228392BD0();
  sub_228391370();
  v8 = sub_2283913A0();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  swift_allocObject();
  swift_weakInit();
  swift_allocObject();
  swift_weakInit();
  sub_22838F490();
  v9 = MEMORY[0x277D10E20];
  sub_228297AB0(0, &qword_27D826C88, sub_228297728, &type metadata for FrequencyInterval, MEMORY[0x277D10E20]);
  a1[3] = v10;
  a1[4] = sub_22829777C(&qword_27D826C90, &qword_27D826C88, v9);
  __swift_allocate_boxed_opaque_existential_1(a1);
  sub_228297728();
  return sub_22838FB70();
}

uint64_t sub_228296568@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + qword_27D826C20);
    sub_228391870();
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 1;
  }

  return result;
}

uint64_t sub_2282965E4(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = *(result + qword_27D826C20);
    sub_228391850();
  }

  return result;
}

uint64_t sub_228296664@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_22838F4A0();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_228297B20(0, &unk_280DDBCD0, MEMORY[0x277D74BD0]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  sub_228391390();
  sub_22817A958(0, &qword_280DDB990, 0x277D75348);
  sub_228392BD0();
  sub_228391370();
  v8 = sub_2283913A0();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  swift_allocObject();
  swift_weakInit();
  swift_allocObject();
  swift_weakInit();
  sub_22838F490();
  v9 = MEMORY[0x277D10E20];
  sub_228297AB0(0, &qword_27D826C78, sub_2282977E0, &type metadata for DisplayUnit, MEMORY[0x277D10E20]);
  a1[3] = v10;
  a1[4] = sub_228297A3C(&qword_27D826C80, &qword_27D826C78, v9);
  __swift_allocate_boxed_opaque_existential_1(a1);
  sub_2282977E0();
  return sub_22838FB70();
}

uint64_t sub_228296974@<X0>(_BYTE *a1@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + qword_27D826C28);
    sub_228391870();
  }

  else
  {
    *a1 = 2;
  }

  return result;
}

uint64_t sub_2282969EC(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = *(result + qword_27D826C28);
    sub_228391850();
  }

  if (v2 != 2)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v5 = *(result + qword_27D826C18);
      sub_228391850();
    }
  }

  return result;
}

void *sub_228296ABC()
{
  v1 = sub_228390170();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228295B0C(v5);
  v6 = sub_228198710(0, 1, 1, MEMORY[0x277D84F90]);
  v8 = v6[2];
  v7 = v6[3];
  if (v8 >= v7 >> 1)
  {
    v6 = sub_228198710((v7 > 1), v8 + 1, 1, v6);
  }

  v31 = v1;
  v32 = sub_2282976E0(&qword_27D824520, MEMORY[0x277D11000]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v30);
  (*(v2 + 16))(boxed_opaque_existential_1, v5, v1);
  v6[2] = v8 + 1;
  sub_22816DFFC(&v30, &v6[5 * v8 + 4]);
  (*(v2 + 8))(v5, v1);
  v10 = *(v0 + qword_27D826C18);
  sub_228391870();
  if (v30 == 1)
  {
    sub_228296248(&v30);
    v33 = v6;
    v12 = v6[2];
    v11 = v6[3];
    if (v12 >= v11 >> 1)
    {
      v6 = sub_228198710((v11 > 1), v12 + 1, 1, v6);
      v33 = v6;
    }

    v13 = v31;
    v14 = v32;
    v15 = __swift_mutable_project_boxed_opaque_existential_1(&v30, v31);
    v16 = *(*(v13 - 8) + 64);
    MEMORY[0x28223BE20](v15);
    v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v19 + 16))(v18);
    sub_228199BA4(v12, v18, &v33, v13, v14);
    __swift_destroy_boxed_opaque_existential_0(&v30);
  }

  sub_228391870();
  if ((v30 - 7) <= 1)
  {
    sub_228296664(&v30);
    v33 = v6;
    v21 = v6[2];
    v20 = v6[3];
    if (v21 >= v20 >> 1)
    {
      v6 = sub_228198710((v20 > 1), v21 + 1, 1, v6);
      v33 = v6;
    }

    v22 = v31;
    v23 = v32;
    v24 = __swift_mutable_project_boxed_opaque_existential_1(&v30, v31);
    v25 = *(*(v22 - 8) + 64);
    MEMORY[0x28223BE20](v24);
    v27 = &v30 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v28 + 16))(v27);
    sub_228199BA4(v21, v27, &v33, v22, v23);
    __swift_destroy_boxed_opaque_existential_0(&v30);
  }

  return v6;
}

uint64_t sub_228296E9C()
{
  v1 = v0;
  v2 = sub_228296ABC();
  sub_228194894(v2);

  sub_22838FF60();

  v3 = *(v0 + qword_27D826C18);
  result = sub_228391870();
  if (v6 == 1)
  {
    v5 = *(v1 + qword_27D826C20);
    result = sub_228391870();
    if (v7 == 1)
    {
      return sub_228391850();
    }
  }

  return result;
}

uint64_t sub_228296FD0()
{
  v1 = *(v0 + qword_27D826C08 + 8);

  v2 = *(v0 + qword_27D826C18);

  v3 = *(v0 + qword_27D826C20);

  v4 = *(v0 + qword_27D826C28);

  v5 = *(v0 + qword_27D826C30 + 16);
  v6 = *(v0 + qword_27D826C30 + 24);
  sub_228267618(*(v0 + qword_27D826C30), *(v0 + qword_27D826C30 + 8));
  v7 = *(v0 + qword_27D826C10);
}

uint64_t FrequencyPickerDataSource.deinit()
{
  v0 = sub_2283903B0();
  v1 = *(v0 + qword_27D826C08 + 8);

  v2 = *(v0 + qword_27D826C18);

  v3 = *(v0 + qword_27D826C20);

  v4 = *(v0 + qword_27D826C28);

  v5 = *(v0 + qword_27D826C30 + 16);
  v6 = *(v0 + qword_27D826C30 + 24);
  sub_228267618(*(v0 + qword_27D826C30), *(v0 + qword_27D826C30 + 8));
  v7 = *(v0 + qword_27D826C10);

  return v0;
}

uint64_t FrequencyPickerDataSource.__deallocating_deinit()
{
  v0 = sub_2283903B0();
  v1 = *(v0 + qword_27D826C08 + 8);

  v2 = *(v0 + qword_27D826C18);

  v3 = *(v0 + qword_27D826C20);

  v4 = *(v0 + qword_27D826C28);

  v5 = *(v0 + qword_27D826C30 + 16);
  v6 = *(v0 + qword_27D826C30 + 24);
  sub_228267618(*(v0 + qword_27D826C30), *(v0 + qword_27D826C30 + 8));
  v7 = *(v0 + qword_27D826C10);

  return swift_deallocClassInstance();
}

uint64_t FrequencyPickerDataSource.supplementaryItem(ofKind:at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *MEMORY[0x277D767D8];
  if (sub_228392000() == a1 && v7 == a2)
  {
  }

  else
  {
    v9 = sub_228393460();

    if ((v9 & 1) == 0)
    {
      a3[3] = sub_22838FC00();
      a3[4] = sub_2282976E0(&qword_27D823958, MEMORY[0x277D10EC8]);
      __swift_allocate_boxed_opaque_existential_1(a3);
      return sub_22838FBF0();
    }
  }

  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  v11 = sub_22838F0C0();
  v13 = v12;
  type metadata accessor for ScheduleHeaderCell();
  sub_2282976E0(&qword_27D825830, type metadata accessor for ScheduleHeaderCell);
  v14 = sub_22838FBB0();
  v16 = v15;
  sub_22838FBB0();

  a3[3] = &type metadata for ScheduleHeaderItem;
  a3[4] = sub_228194464();
  result = swift_allocObject();
  *a3 = result;
  *(result + 16) = v11;
  *(result + 24) = v13;
  *(result + 32) = 0;
  *(result + 40) = nullsub_1;
  *(result + 48) = 0;
  *(result + 56) = v14;
  *(result + 64) = v16;
  return result;
}

Swift::Void __swiftcall FrequencyPickerDataSource.registerCells(for:)(UICollectionView *a1)
{
  type metadata accessor for ScheduleHeaderCell();
  sub_2282976E0(&qword_27D825830, type metadata accessor for ScheduleHeaderCell);
  sub_2283926D0();
  sub_2283904F0();
  sub_2283926B0();
  v1 = MEMORY[0x277D11008];
  sub_228297AB0(0, &qword_27D826C38, sub_228297728, &type metadata for FrequencyInterval, MEMORY[0x277D11008]);
  sub_22829777C(&qword_27D826C48, &qword_27D826C38, v1);
  sub_2283926B0();
  sub_228297AB0(0, &qword_27D826C50, sub_2282977E0, &type metadata for DisplayUnit, v1);
  sub_228297A3C(&qword_27D826C60, &qword_27D826C50, v1);
  sub_2283926B0();
}

uint64_t sub_228297560()
{
  type metadata accessor for ScheduleHeaderCell();
  sub_2282976E0(&qword_27D825830, type metadata accessor for ScheduleHeaderCell);
  sub_2283926D0();
  sub_2283904F0();
  sub_2283926B0();
  v0 = MEMORY[0x277D11008];
  sub_228297AB0(0, &qword_27D826C38, sub_228297728, &type metadata for FrequencyInterval, MEMORY[0x277D11008]);
  sub_22829777C(&qword_27D826C48, &qword_27D826C38, v0);
  sub_2283926B0();
  sub_228297AB0(0, &qword_27D826C50, sub_2282977E0, &type metadata for DisplayUnit, v0);
  sub_228297A3C(&qword_27D826C60, &qword_27D826C50, v0);
  return sub_2283926B0();
}

uint64_t sub_2282976E0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_228297728()
{
  result = qword_27D826C40;
  if (!qword_27D826C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D826C40);
  }

  return result;
}

uint64_t sub_22829777C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_228297AB0(255, a2, sub_228297728, &type metadata for FrequencyInterval, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2282977E0()
{
  result = qword_27D826C58;
  if (!qword_27D826C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D826C58);
  }

  return result;
}

uint64_t type metadata accessor for FrequencyPickerDataSource()
{
  result = qword_27D826C68;
  if (!qword_27D826C68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_228297A3C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_228297AB0(255, a2, sub_2282977E0, &type metadata for DisplayUnit, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_228297AB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_228297B20(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_228392F00();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_228297B74()
{
  if (!qword_27D826C98)
  {
    sub_228297C40();
    sub_22817A958(255, &qword_280DDCEE0, 0x277D85C78);
    sub_2282976E0(&qword_27D825868, sub_228297C40);
    sub_2281A1504();
    v0 = sub_2283917D0();
    if (!v1)
    {
      atomic_store(v0, &qword_27D826C98);
    }
  }
}

void sub_228297C40()
{
  if (!qword_27D825850)
  {
    type metadata accessor for HKMedicationScheduleType(255);
    v0 = sub_228391880();
    if (!v1)
    {
      atomic_store(v0, &qword_27D825850);
    }
  }
}

uint64_t type metadata accessor for ThirdPartyAuthorizationDataSource()
{
  result = qword_27D826CB8;
  if (!qword_27D826CB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_228297D78(void *a1, unint64_t a2)
{
  v43 = a1;
  v3 = sub_22838F4A0();
  v45 = *(v3 - 8);
  v46 = v3;
  v4 = *(v45 + 64);
  MEMORY[0x28223BE20](v3);
  v44 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2283930D0())
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F98];
    while (1)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x22AAB6D80](v7, a2);
      }

      else
      {
        if (v7 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v9 = *(a2 + 8 * v7 + 32);
      }

      v10 = v9;
      v11 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v48[0] = v8;
      v13 = sub_2281A7870(v10);
      v15 = v8[2];
      v16 = (v14 & 1) == 0;
      v17 = __OFADD__(v15, v16);
      v18 = v15 + v16;
      if (v17)
      {
        goto LABEL_23;
      }

      v19 = v14;
      if (v8[3] < v18)
      {
        sub_22829969C(v18, isUniquelyReferenced_nonNull_native);
        v13 = sub_2281A7870(v10);
        if ((v19 & 1) != (v20 & 1))
        {
          sub_22817A958(0, &qword_27D824240, 0x277CCDA00);
          result = sub_2283934A0();
          __break(1u);
          return result;
        }

LABEL_15:
        v8 = v48[0];
        if (v19)
        {
          goto LABEL_4;
        }

        goto LABEL_16;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_15;
      }

      v23 = v13;
      sub_22829AFE8();
      v13 = v23;
      v8 = v48[0];
      if (v19)
      {
LABEL_4:
        *(v8[7] + v13) = 0;

        goto LABEL_5;
      }

LABEL_16:
      v8[(v13 >> 6) + 8] |= 1 << v13;
      *(v8[6] + 8 * v13) = v10;
      *(v8[7] + v13) = 0;
      v21 = v8[2];
      v17 = __OFADD__(v21, 1);
      v22 = v21 + 1;
      if (v17)
      {
        goto LABEL_24;
      }

      v8[2] = v22;
LABEL_5:
      ++v7;
      if (v11 == i)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }

  v8 = MEMORY[0x277D84F98];
LABEL_27:
  v48[0] = v8;
  sub_22829C0BC();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  v27 = sub_228391890();
  v28 = v47;
  *(v47 + qword_27D826CA8) = v27;
  sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);
  v29 = v43;
  v30 = sub_228392790();
  v31 = objc_allocWithZone(MEMORY[0x277D12AD0]);
  sub_22817A958(0, &qword_27D824240, 0x277CCDA00);
  v32 = sub_228392190();

  v33 = [v31 initWithHealthStore:v29 sources:v32 queue:v30];

  *(v28 + qword_27D826CB0) = v33;
  v48[0] = 0;
  v48[1] = 0xE000000000000000;
  sub_2283931D0();

  strcpy(v48, "MutableArray<");
  HIWORD(v48[1]) = -4864;
  v34 = v44;
  sub_22838F490();
  v35 = sub_22838F450();
  v37 = v36;
  (*(v45 + 8))(v34, v46);
  MEMORY[0x22AAB5C80](v35, v37);

  MEMORY[0x22AAB5C80](62, 0xE100000000000000);
  v38 = sub_22838FF30();
  v39 = qword_27D826CB0;
  v40 = *(v38 + qword_27D826CB0);

  [v40 registerObserver_];
  [*(v38 + v39) setShouldFetchAppIcons_];
  [*(v38 + v39) setShouldFetchAppInstallationStatus_];

  return v38;
}

unint64_t sub_2282981C0(void *a1, char a2)
{
  v3 = v2;
  v6 = qword_27D826CA8;
  v7 = *(v2 + qword_27D826CA8);

  sub_228391870();

  v8 = v14;
  if (v14)
  {
    if (!*(v14 + 16))
    {
      goto LABEL_7;
    }
  }

  else
  {
    v8 = sub_2281A875C(MEMORY[0x277D84F90]);
    if (!*(v8 + 16))
    {
LABEL_7:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v14 = v8;
      sub_22829ACB8(a2 & 1, a1, isUniquelyReferenced_nonNull_native);
      v12 = *(v3 + v6);

      sub_228391850();

      goto LABEL_8;
    }
  }

  v9 = sub_2281A7870(a1);
  if ((v10 & 1) == 0 || *(*(v8 + 56) + v9) != (a2 & 1))
  {
    goto LABEL_7;
  }

LABEL_8:
  sub_2281810DC(0, &qword_280DDB860);
  sub_228393590();

  return v14;
}

uint64_t sub_228298300@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_22829BCF8(0, &qword_27D824EB0, MEMORY[0x277D10FE0], MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - v8;
  if (sub_22838F750())
  {
    goto LABEL_2;
  }

  v11 = *MEMORY[0x277D767D8];
  if (sub_228392000() == a1 && v12 == a2)
  {
  }

  else
  {
    v14 = sub_228393460();

    if ((v14 & 1) == 0)
    {
LABEL_2:
      a3[3] = sub_22838FC00();
      a3[4] = sub_228299288(&qword_27D823958, MEMORY[0x277D10EC8]);
      __swift_allocate_boxed_opaque_existential_1(a3);
      return sub_22838FBF0();
    }
  }

  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  v15 = sub_228390130();
  (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
  a3[3] = sub_228390150();
  a3[4] = sub_228299288(&qword_27D824EC8, MEMORY[0x277D10FE8]);
  __swift_allocate_boxed_opaque_existential_1(a3);
  return sub_228390140();
}

uint64_t sub_2282985A4(void *a1)
{
  v3 = sub_22838F4A0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 sources];
  v70 = v1;
  if (!v8)
  {
    sub_22829BCF8(0, &qword_27D823910, MEMORY[0x277D10F78], MEMORY[0x277D84560]);
    v36 = *(sub_22838FEF0() - 8);
    v37 = *(v36 + 72);
    *&v69 = (*(v36 + 80) + 32) & ~*(v36 + 80);
    v38 = swift_allocObject();
    v68 = xmmword_228397F40;
    *(v38 + 16) = xmmword_228397F40;
    sub_2281BBE0C();
    v39 = swift_allocObject();
    *(v39 + 16) = v68;
    v40 = type metadata accessor for MedicationSourceListNoneItem();
    v41 = swift_allocObject();
    type metadata accessor for MedicationSourceListNoneCell();
    v41[2] = sub_22838FBB0();
    v41[3] = v42;
    sub_22838F490();
    v43 = sub_22838F450();
    v45 = v44;
    v46 = *(v4 + 8);
    v46(v7, v3);
    v41[4] = v43;
    v41[5] = v45;
    *(v39 + 56) = v40;
    *(v39 + 64) = sub_228299288(&qword_27D826AF8, type metadata accessor for MedicationSourceListNoneItem);
    *(v39 + 32) = v41;
    sub_22838F490();
    sub_22838F450();
    v46(v7, v3);
    sub_22838FED0();
    sub_22838FF50();
  }

  v63 = v8;
  v9 = [v8 orderedAppSources];
  sub_22817A958(0, &qword_27D824A00, 0x277D12AC0);
  v10 = sub_2283921A0();

  v11 = v10;
  if (!(v10 >> 62))
  {
    v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v64 = v3;
    if (v12)
    {
      goto LABEL_4;
    }

LABEL_17:

    v35 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  v47 = v10;
  v12 = sub_2283930D0();
  v11 = v47;
  v64 = v3;
  if (!v12)
  {
    goto LABEL_17;
  }

LABEL_4:
  v13 = v11;
  v71 = MEMORY[0x277D84F90];
  result = sub_228393240();
  if ((v12 & 0x8000000000000000) == 0)
  {
    v62 = v7;
    v15 = objc_opt_self();
    v16 = 0;
    v17 = v13;
    v65 = v13 & 0xC000000000000001;
    v66 = v15;
    *&v69 = v4;
    v67 = v12;
    *&v68 = v13;
    do
    {
      if (v65)
      {
        v24 = MEMORY[0x22AAB6D80](v16, v17);
      }

      else
      {
        v24 = *(v17 + 8 * v16 + 32);
      }

      v25 = v24;
      v26 = [v66 tertiarySystemGroupedBackgroundColor];
      v27 = type metadata accessor for MedicationSourceListToggleItem();
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      *(v30 + qword_27D8251F8 + 8) = 0;
      v31 = swift_unknownObjectWeakInit();
      *(v30 + qword_27D825200) = 0;
      *(v30 + qword_27D825208) = v25;
      *(v30 + qword_27D8251F0) = 0;
      *(v31 + 8) = &off_283B6B478;
      swift_unknownObjectWeakAssign();
      v32 = v25;
      v33 = [v32 icon];
      v18 = v33;
      if (!v33)
      {
        sub_22838FAC0();
        v34 = sub_22838FAB0();
        if (!v34)
        {
          v34 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
        }

        v18 = v34;
      }

      ++v16;
      v19 = v33;
      v20 = v18;
      v21 = [v32 source];
      v22 = [v21 name];

      sub_228392000();
      sub_2283901A0();

      sub_228393210();
      v23 = *(v71 + 16);
      sub_228393250();
      sub_228393260();
      sub_228393220();
      v17 = v68;
      v4 = v69;
    }

    while (v67 != v16);

    v35 = v71;
    v7 = v62;
LABEL_18:
    sub_22829BCF8(0, &qword_27D823910, MEMORY[0x277D10F78], MEMORY[0x277D84560]);
    v48 = *(sub_22838FEF0() - 8);
    v49 = *(v48 + 72);
    v50 = (*(v48 + 80) + 32) & ~*(v48 + 80);
    v51 = swift_allocObject();
    v52 = xmmword_228397F40;
    *(v51 + 16) = xmmword_228397F40;
    if (v35 >> 62)
    {
      v69 = xmmword_228397F40;
      v54 = sub_2283930D0();
      v52 = v69;
      if (v54)
      {
        goto LABEL_20;
      }
    }

    else if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_20:
      sub_22819665C(v35);

      v53 = v64;
LABEL_23:
      sub_22838F490();
      sub_22838F450();
      (*(v4 + 8))(v7, v53);
      sub_22838FED0();
      sub_22838FF50();
    }

    v69 = v52;

    sub_2281BBE0C();
    v55 = swift_allocObject();
    *(v55 + 16) = v69;
    v56 = type metadata accessor for MedicationSourceListNoneItem();
    v57 = swift_allocObject();
    type metadata accessor for MedicationSourceListNoneCell();
    v57[2] = sub_22838FBB0();
    v57[3] = v58;
    sub_22838F490();
    v59 = sub_22838F450();
    v61 = v60;
    v53 = v64;
    (*(v4 + 8))(v7, v64);
    v57[4] = v59;
    v57[5] = v61;
    *(v55 + 56) = v56;
    *(v55 + 64) = sub_228299288(&qword_27D826AF8, type metadata accessor for MedicationSourceListNoneItem);
    *(v55 + 32) = v57;
    goto LABEL_23;
  }

  __break(1u);
  return result;
}

uint64_t sub_228298D80(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;

  sub_2282985A4(v3);
}

void sub_228298E00()
{
  v1 = *(v0 + qword_27D826CA8);

  v2 = *(v0 + qword_27D826CB0);
}

uint64_t sub_228298E40()
{
  v0 = sub_22838FFB0();
  v1 = *(v0 + qword_27D826CA8);

  v2 = *(v0 + qword_27D826CB0);

  return swift_deallocClassInstance();
}

uint64_t sub_228298EB8()
{
  type metadata accessor for MedicationSourceListNoneCell();
  sub_2283926B0();
  sub_228390190();
  sub_2283926B0();
  sub_228390120();
  return sub_2283926D0();
}

uint64_t sub_228298F20()
{
  v0 = sub_2283900D0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228390010();
  v5 = sub_2283900C0();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_22829901C(uint64_t a1, char a2)
{
  *(v3 + 40) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  sub_2283922A0();
  *(v3 + 32) = sub_228392290();
  v5 = sub_228392250();

  return MEMORY[0x2822009F8](sub_2282990B8, v5, v4);
}

uint64_t sub_2282990B8()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 16);

  v5 = sub_2282981C0(v4, v3);
  v6 = *(v0 + 8);
  v8 = v7 & 1;

  return v6(v5, v8);
}

unint64_t sub_2282991B4()
{
  result = qword_27D826D28;
  if (!qword_27D826D28)
  {
    sub_22829BBA8(255, &qword_27D827830, MEMORY[0x277D834F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D826D28);
  }

  return result;
}

uint64_t sub_228299288(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2282992D0(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_228391130();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_22829BD5C();
  v43 = a2;
  result = sub_228393340();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    v42 = v11;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v7 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_228299288(&qword_27D8242E0, MEMORY[0x277D11768]);
      result = sub_228391F60();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v7 = v41;
      v11 = v42;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_22829969C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_22829BBA8(0, &qword_27D824248, MEMORY[0x277D84460]);
  result = sub_228393340();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
      }

      v24 = *(v8 + 40);
      result = sub_228392C50();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v32 = 1 << *(v5 + 32);
      if (v32 >= 64)
      {
        bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v32;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_228299910(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_2281A9A64();
  result = sub_228393340();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
        v24 = v22;
      }

      v25 = *(v8 + 40);
      result = sub_228392C50();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_228299B6C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_22829BED4();
  v38 = a2;
  result = sub_228393340();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_228393520();
      sub_2283920B0();
      result = sub_228393570();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_228299E08(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_22829C020();
  result = sub_228393340();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      v23 = *(v8 + 40);
      sub_228393520();
      MEMORY[0x22AAB70D0](v21);
      result = sub_228393570();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v33;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v8;
  return result;
}

uint64_t sub_22829A07C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_22829BF6C(0, &qword_27D826D58, sub_22829BFD0);
  v38 = a2;
  result = sub_228393340();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_228393520();
      sub_2283920B0();
      result = sub_228393570();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_22829A334(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for Dosage();
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  sub_22829BF6C(0, &qword_27D824298, type metadata accessor for Dosage);
  v44 = a2;
  result = sub_228393340();
  v12 = result;
  if (*(v9 + 16))
  {
    v41 = v3;
    v42 = v9;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = *(v43 + 72);
      v31 = v26 + v30 * v25;
      if (v44)
      {
        sub_2281A9424(v31, v45);
      }

      else
      {
        sub_2282112C8(v31, v45);
      }

      v32 = *(v12 + 40);
      sub_228393520();
      sub_2283920B0();
      result = sub_228393570();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v28;
      v21[1] = v29;
      result = sub_2281A9424(v45, *(v12 + 56) + v30 * v20);
      ++*(v12 + 16);
      v9 = v42;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_22829A680(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_22829BC4C();
  result = sub_228393340();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
      }

      v24 = *(v8 + 40);
      result = sub_228392C50();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v32 = 1 << *(v5 + 32);
      if (v32 >= 64)
      {
        bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v32;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_22829A8D8(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_22838EF60();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_22829BE38();
  v49 = a2;
  result = sub_228393340();
  v14 = result;
  if (*(v11 + 16))
  {
    v53 = v10;
    v45 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v46 = (v7 + 16);
    v47 = v7;
    v50 = (v7 + 32);
    v21 = result + 64;
    v48 = v11;
    while (v19)
    {
      v24 = __clz(__rbit64(v19));
      v25 = (v19 - 1) & v19;
LABEL_17:
      v28 = v24 | (v15 << 6);
      v52 = v25;
      v29 = *(v7 + 72);
      v30 = *(v11 + 48) + v29 * v28;
      if (v49)
      {
        (*v50)(v53, v30, v6);
      }

      else
      {
        (*v46)(v53, v30, v6);
      }

      v31 = (*(v11 + 56) + 32 * v28);
      v32 = v31[3];
      v33 = v31[2];
      v51 = v31[1];
      v34 = *v31;
      v35 = *(v14 + 40);
      sub_228299288(&unk_280DDCE00, MEMORY[0x277CC88A8]);
      result = sub_228391F60();
      v36 = -1 << *(v14 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v21 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v21 + 8 * v38);
          if (v42 != -1)
          {
            v22 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v37) & ~*(v21 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v50)(*(v14 + 48) + v29 * v22, v53, v6);
      v23 = (*(v14 + 56) + 32 * v22);
      *v23 = v34;
      v19 = v52;
      v23[1] = v51;
      v23[2] = v33;
      v23[3] = v32;
      ++*(v14 + 16);
      v7 = v47;
      v11 = v48;
    }

    v26 = v15;
    while (1)
    {
      v15 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v27 = v16[v15];
      ++v26;
      if (v27)
      {
        v24 = __clz(__rbit64(v27));
        v25 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v49 & 1) == 0)
    {

      v3 = v45;
      goto LABEL_36;
    }

    v43 = 1 << *(v11 + 32);
    v3 = v45;
    if (v43 >= 64)
    {
      bzero(v16, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v43;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

unint64_t sub_22829ACB8(char a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  result = sub_2281A7870(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_22829969C(v13, a3 & 1);
      v17 = *v4;
      result = sub_2281A7870(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_16:
        sub_22817A958(0, &qword_27D824240, 0x277CCDA00);
        result = sub_2283934A0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = result;
      sub_22829AFE8();
      result = v16;
    }
  }

  v19 = *v4;
  if (v14)
  {
    *(v19[7] + result) = a1 & 1;
    return result;
  }

  v19[(result >> 6) + 8] |= 1 << result;
  *(v19[6] + 8 * result) = a2;
  *(v19[7] + result) = a1 & 1;
  v20 = v19[2];
  v12 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19[2] = v21;

  return a2;
}

uint64_t sub_22829AE24(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2281A76E0(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_22829A07C(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_2281A76E0(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_2283934A0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_22829B54C();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

unint64_t sub_22829AFA0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

id sub_22829AFE8()
{
  v1 = v0;
  sub_22829BBA8(0, &qword_27D824248, MEMORY[0x277D84460]);
  v2 = *v0;
  v3 = sub_228393330();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + v17) = v19;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_22829B154()
{
  v1 = v0;
  sub_2281A9A64();
  v2 = *v0;
  v3 = sub_228393330();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_22829B2A8()
{
  v1 = v0;
  sub_22829BED4();
  v2 = *v0;
  v3 = sub_228393330();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_22829B40C()
{
  v1 = v0;
  sub_22829C020();
  v2 = *v0;
  v3 = sub_228393330();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_22829B54C()
{
  v1 = v0;
  sub_22829BF6C(0, &qword_27D826D58, sub_22829BFD0);
  v2 = *v0;
  v3 = sub_228393330();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_22829B6CC()
{
  v1 = v0;
  v2 = type metadata accessor for Dosage();
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22829BF6C(0, &qword_27D824298, type metadata accessor for Dosage);
  v5 = *v0;
  v6 = sub_228393330();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_2282112C8(*(v5 + 56) + v27, v31);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_2281A9424(v26, *(v28 + 56) + v27);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        v7 = v33;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_22829B90C()
{
  v1 = v0;
  v37 = sub_22838EF60();
  v39 = *(v37 - 8);
  v2 = *(v39 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22829BE38();
  v4 = *v0;
  v5 = sub_228393330();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = (v4 + 64);
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, v32, 8 * v8);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v38 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v33 = v39 + 32;
    v34 = v39 + 16;
    v35 = v4;
    v16 = v36;
    if (v14)
    {
      do
      {
        v17 = __clz(__rbit64(v14));
        v40 = (v14 - 1) & v14;
LABEL_17:
        v20 = v17 | (v10 << 6);
        v21 = v39;
        v22 = *(v39 + 72) * v20;
        v23 = v37;
        (*(v39 + 16))(v16, *(v4 + 48) + v22, v37);
        v20 *= 32;
        v24 = (*(v4 + 56) + v20);
        v25 = *v24;
        v26 = v24[1];
        v27 = v24[2];
        v28 = v24[3];
        v29 = v38;
        result = (*(v21 + 32))(*(v38 + 48) + v22, v16, v23);
        v30 = (*(v29 + 56) + v20);
        *v30 = v25;
        v30[1] = v26;
        v30[2] = v27;
        v30[3] = v28;
        v4 = v35;
        v14 = v40;
      }

      while (v40);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v31;
        v6 = v38;
        goto LABEL_21;
      }

      v19 = *(v32 + v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v40 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v6;
  }

  return result;
}

void sub_22829BBA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_22817A958(255, &qword_27D824240, 0x277CCDA00);
    v7 = sub_2281A89C4(&qword_27D827840, &qword_27D824240, 0x277CCDA00);
    v8 = a3(a1, v6, MEMORY[0x277D839B0], v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_22829BC4C()
{
  if (!qword_27D826D40)
  {
    sub_22817A958(255, &qword_27D824240, 0x277CCDA00);
    type metadata accessor for HKConceptAuthorizationStatus(255);
    sub_2281A89C4(&qword_27D827840, &qword_27D824240, 0x277CCDA00);
    v0 = sub_228393370();
    if (!v1)
    {
      atomic_store(v0, &qword_27D826D40);
    }
  }
}

void sub_22829BCF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_22829BD5C()
{
  if (!qword_27D826D48)
  {
    sub_228391130();
    sub_22829BCF8(255, &qword_27D824560, type metadata accessor for ScheduleDataSource.DoseItem, MEMORY[0x277D83940]);
    sub_228299288(&qword_27D8242E0, MEMORY[0x277D11768]);
    v0 = sub_228393370();
    if (!v1)
    {
      atomic_store(v0, &qword_27D826D48);
    }
  }
}

void sub_22829BE38()
{
  if (!qword_280DDB910)
  {
    sub_22838EF60();
    sub_228299288(&unk_280DDCE00, MEMORY[0x277CC88A8]);
    v0 = sub_228393370();
    if (!v1)
    {
      atomic_store(v0, &qword_280DDB910);
    }
  }
}

void sub_22829BED4()
{
  if (!qword_27D826D50)
  {
    sub_22829BCF8(255, &qword_27D823EA0, MEMORY[0x277D11660], MEMORY[0x277D83940]);
    v0 = sub_228393370();
    if (!v1)
    {
      atomic_store(v0, &qword_27D826D50);
    }
  }
}

void sub_22829BF6C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_228393370();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_22829BFD0()
{
  if (!qword_27D823EC0)
  {
    v0 = sub_228392240();
    if (!v1)
    {
      atomic_store(v0, &qword_27D823EC0);
    }
  }
}

void sub_22829C020()
{
  if (!qword_27D826D60)
  {
    type metadata accessor for HKDrugInteractionSeverityLevel(255);
    sub_228299288(&qword_27D826D68, type metadata accessor for HKDrugInteractionSeverityLevel);
    v0 = sub_228393370();
    if (!v1)
    {
      atomic_store(v0, &qword_27D826D60);
    }
  }
}

void sub_22829C0BC()
{
  if (!qword_27D827820)
  {
    sub_22829C124();
    v0 = sub_228391880();
    if (!v1)
    {
      atomic_store(v0, &qword_27D827820);
    }
  }
}

void sub_22829C124()
{
  if (!qword_27D826D70)
  {
    sub_22829BBA8(255, &qword_27D827830, MEMORY[0x277D834F8]);
    v0 = sub_228392F00();
    if (!v1)
    {
      atomic_store(v0, &qword_27D826D70);
    }
  }
}

uint64_t sub_22829C19C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_228391960();

  return v1;
}

uint64_t InteractionCriticalAlertDataSource.__allocating_init(listManager:healthStore:viewController:analyticsManager:)(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v27 = a4;
  sub_2282A21B0(0, &qword_280DDBBD8, MEMORY[0x277CBCED0]);
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  v14 = &v26 - v13;
  v15 = *(v5 + 48);
  v16 = *(v5 + 52);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = qword_280DDBF38;
  aBlock[0] = MEMORY[0x277D84F90];
  sub_22818DF04(0, &qword_280DDBB38, &qword_280DDB9D0, 0x277D114F0);
  sub_228391920();
  (*(v11 + 32))(v17 + v18, v14, v10);
  *(v17 + qword_280DDBF10) = 0;
  *(v17 + qword_27D826D78) = 0;
  *(v17 + qword_280DDBF18) = 0;
  *(v17 + qword_27D826D80) = 0;
  *(v17 + qword_280DDBF28) = MEMORY[0x277D84FA0];
  *(v17 + qword_27D826D88) = a1;
  *(v17 + qword_280DDBF30) = a2;
  swift_unknownObjectWeakAssign();
  *(v17 + qword_27D826D90) = v27;

  v19 = a2;

  v20 = sub_22838F920();

  v21 = sub_22829CE10();
  v22 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_22829D99C;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22829DA98;
  aBlock[3] = &block_descriptor_18;
  v23 = _Block_copy(aBlock);

  [v21 allDismissedDrugInteractionsWithCompletion_];
  _Block_release(v23);

  sub_22829DB54();
  sub_22838F910();
  sub_22838FCD0();

  v24 = sub_22838FF20();

  [v24 registerObserver_];

  return v20;
}

uint64_t InteractionCriticalAlertDataSource.init(listManager:healthStore:viewController:analyticsManager:)(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  sub_2282A21B0(0, &qword_280DDBBD8, MEMORY[0x277CBCED0]);
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  v14 = aBlock - v13;
  swift_unknownObjectWeakInit();
  v15 = qword_280DDBF38;
  aBlock[0] = MEMORY[0x277D84F90];
  sub_22818DF04(0, &qword_280DDBB38, &qword_280DDB9D0, 0x277D114F0);
  sub_228391920();
  (*(v11 + 32))(v4 + v15, v14, v10);
  *(v4 + qword_280DDBF10) = 0;
  *(v4 + qword_27D826D78) = 0;
  *(v4 + qword_280DDBF18) = 0;
  *(v4 + qword_27D826D80) = 0;
  *(v4 + qword_280DDBF28) = MEMORY[0x277D84FA0];
  *(v4 + qword_27D826D88) = a1;
  *(v4 + qword_280DDBF30) = a2;
  swift_unknownObjectWeakAssign();
  *(v4 + qword_27D826D90) = a4;

  v16 = a2;

  v17 = sub_22838F920();

  v18 = sub_22829CE10();
  v19 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_2282A2A70;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22829DA98;
  aBlock[3] = &block_descriptor_5_0;
  v20 = _Block_copy(aBlock);

  [v18 allDismissedDrugInteractionsWithCompletion_];
  _Block_release(v20);

  sub_22829DB54();
  sub_22838F910();
  sub_22838FCD0();

  v21 = sub_22838FF20();

  [v21 registerObserver_];

  return v17;
}

uint64_t sub_22829C888()
{
  MEMORY[0x22AAB7C80](v0 + qword_280DDBF20);
  v1 = *(v0 + qword_27D826D90);

  v2 = qword_280DDBF38;
  sub_2282A21B0(0, &qword_280DDBBD8, MEMORY[0x277CBCED0]);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + qword_27D826D88);

  v5 = *(v0 + qword_27D826D78);

  v6 = *(v0 + qword_27D826D80);

  v7 = *(v0 + qword_280DDBF28);
}

uint64_t InteractionCriticalAlertDataSource.deinit()
{
  v1 = qword_280DDBF28;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if ((v2 & 0xC000000000000001) != 0)
  {
    if (v2 < 0)
    {
      v3 = *(v0 + v1);
    }

    swift_unknownObjectRetain();
    sub_228393080();
    sub_228391820();
    sub_2282A2920(&qword_27D824180, MEMORY[0x277CBCDA8]);
    result = sub_2283924C0();
    v6 = v27;
    v5 = v28;
    v7 = v29;
    v8 = v30;
    v9 = v31;
  }

  else
  {
    v10 = -1 << *(v2 + 32);
    v5 = v2 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(v2 + 56);
    result = swift_bridgeObjectRetain_n();
    v8 = 0;
    v6 = v2;
  }

  if (v6 < 0)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v13 = v8;
    v14 = v9;
    v15 = v8;
    if (!v9)
    {
      break;
    }

LABEL_14:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v6 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));

    if (!v17)
    {
LABEL_20:
      sub_228176F04();

      v18 = _s19HealthMedicationsUI34InteractionSeperatorLineDataSourceCfd_0();
      MEMORY[0x22AAB7C80](v18 + qword_280DDBF20);
      v19 = *(v18 + qword_27D826D90);

      v20 = qword_280DDBF38;
      sub_2282A21B0(0, &qword_280DDBBD8, MEMORY[0x277CBCED0]);
      (*(*(v21 - 8) + 8))(v18 + v20, v21);
      v22 = *(v18 + qword_27D826D88);

      v23 = *(v18 + qword_27D826D78);

      v24 = *(v18 + qword_27D826D80);

      v25 = *(v18 + qword_280DDBF28);

      return v18;
    }

    while (1)
    {
      sub_228391810();

      v8 = v15;
      v9 = v16;
      if ((v6 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_16:
      if (sub_228393100())
      {
        sub_228391820();
        swift_dynamicCast();
        v15 = v8;
        v16 = v9;
        if (v26)
        {
          continue;
        }
      }

      goto LABEL_20;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= ((v7 + 64) >> 6))
    {
      goto LABEL_20;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t InteractionCriticalAlertDataSource.__deallocating_deinit()
{
  v0 = *InteractionCriticalAlertDataSource.deinit();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_22829CD18()
{
  v0 = sub_2283900D0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228390040();
  v5 = [objc_opt_self() systemBackgroundColor];
  sub_228390050();
  v6 = sub_2283900C0();
  (*(v1 + 8))(v4, v0);
  return v6;
}

id sub_22829CE38(uint64_t *a1, Class *a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = [objc_allocWithZone(*a2) initWithHealthStore_];
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

void *sub_22829CEB4()
{
  v1 = qword_27D826D80;
  if (*(v0 + qword_27D826D80))
  {
    v2 = *(v0 + qword_27D826D80);
  }

  else
  {
    v3 = *(v0 + qword_280DDBF30);
    sub_228390890();
    v4 = v3;
    v5 = v0;
    sub_228390880();
    sub_228390830();

    sub_22817A958(0, &qword_280DDBAF0, 0x277CBEBD0);
    sub_2283925F0();
    v6 = sub_2283907E0();
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v9 = sub_228390700();
    type metadata accessor for MedicationsInteractionEngine();
    swift_allocObject();
    v2 = sub_228191FE8(v4, v9);

    v10 = *(v5 + v1);
    *(v5 + v1) = v2;
  }

  return v2;
}

uint64_t sub_22829CFE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  sub_2282A2098(0, &qword_280DDBC28, sub_22827A0FC, MEMORY[0x277CBCEA8]);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();

  sub_2283918F0();
  sub_2282A2868();
  v12 = sub_228391990();

  *a4 = v12;
  return result;
}

void sub_22829D0FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;

  v9 = sub_22829CE24();

  sub_2282B96E4(v10);

  sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
  sub_22818C470(&qword_280DDB9D8, &qword_280DDB9E0, 0x277D115B8);
  v11 = sub_228392470();

  if (a5)
  {
    sub_22817A958(0, &qword_280DDB960, 0x277CCABB0);
    sub_22818C470(&qword_280DDB958, &qword_280DDB960, 0x277CCABB0);
    a5 = sub_228392470();
  }

  v12 = swift_allocObject();
  *(v12 + 16) = sub_2282A28F0;
  *(v12 + 24) = v8;
  v14[4] = sub_2282A28FC;
  v14[5] = v12;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_228276010;
  v14[3] = &block_descriptor_50;
  v13 = _Block_copy(v14);

  [v9 interactionResultsForMedications:v11 lifestyleFactors:a5 completion:v13];
  _Block_release(v13);
}

void sub_22829D320(uint64_t a1, id a2, void (*a3)(id, uint64_t))
{
  if (a2)
  {
    v5 = a2;
    a3(a2, 1);
  }

  else if (a1)
  {
    v6 = sub_2282B9214(a1);
    a3(v6, 0);
  }

  else
  {
    v7 = sub_2282760F4(MEMORY[0x277D84F90]);
    a3(v7, 0);
  }
}

uint64_t sub_22829D3FC()
{
  sub_228241B70();
  result = sub_2283915B0();
  if (result >= 1)
  {
    v2 = *(v0 + qword_27D826D90);
    return sub_228390FE0();
  }

  return result;
}

uint64_t sub_22829D44C(uint64_t a1)
{
  sub_228241B70();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2283915D0();

  if (sub_2283915B0() < 1)
  {

    return (*(v4 + 8))(v7, v3);
  }

  else
  {
    v8 = *(a1 + qword_27D826D90);
    sub_228390FE0();
    (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_22829D598(uint64_t a1, uint64_t a2)
{
  v4 = sub_228391DC0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_228391DF0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = result;
    v20 = v9;
    if (a2)
    {
      sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);
      v16 = sub_228392790();
      v25 = sub_2282A2A50;
      v26 = v15;
      aBlock = MEMORY[0x277D85DD0];
      v22 = 1107296256;
      v17 = &block_descriptor_62;
    }

    else
    {
      sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);
      if (a1)
      {

        v16 = sub_228392790();
        v18 = swift_allocObject();
        *(v18 + 16) = v15;
        *(v18 + 24) = a1;
        v25 = sub_2282A2A1C;
        v26 = v18;
        aBlock = MEMORY[0x277D85DD0];
        v22 = 1107296256;
        v17 = &block_descriptor_59;
      }

      else
      {
        v16 = sub_228392790();
        v25 = sub_2282A2904;
        v26 = v15;
        aBlock = MEMORY[0x277D85DD0];
        v22 = 1107296256;
        v17 = &block_descriptor_53;
      }
    }

    v23 = sub_228191E9C;
    v24 = v17;
    v19 = _Block_copy(&aBlock);

    sub_228391DE0();
    aBlock = MEMORY[0x277D84F90];
    sub_2282A2920(&qword_280DDCF10, MEMORY[0x277D85198]);
    sub_2282A2968(0, &qword_280DDCF00, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    sub_228216D44();
    sub_228393030();
    MEMORY[0x22AAB6340](0, v13, v8, v19);
    _Block_release(v19);

    (*(v5 + 8))(v8, v4);
    return (*(v10 + 8))(v13, v20);
  }

  return result;
}

uint64_t sub_22829D9A4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_228391970();
}

uint64_t sub_22829DA1C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_228391970();
}

uint64_t sub_22829DA98(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_22817A958(0, &qword_280DDB9D0, 0x277D114F0);
    v4 = sub_2283921A0();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22829DB54()
{
  sub_2282A2968(0, &qword_280DDBAD0, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v99 = &v72 - v3;
  sub_2282A21B0(0, &qword_280DDBBF8, MEMORY[0x277CBCEC0]);
  v5 = *(v4 - 8);
  v97 = v4;
  v98 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v95 = &v72 - v7;
  sub_22824E8E4();
  v72 = v8;
  v73 = *(v8 - 8);
  v9 = *(v73 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228279EA8();
  v77 = v12;
  v78 = *(v12 - 8);
  v13 = *(v78 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228279FF0();
  v81 = v16;
  v82 = *(v16 - 8);
  v17 = *(v82 + 64);
  MEMORY[0x28223BE20](v16);
  v74 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22827A27C();
  v20 = v19;
  v80 = *(v19 - 8);
  v21 = *(v80 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v76 = &v72 - v25;
  sub_2282A2414(0, &qword_27D826DA0, sub_22827A27C, sub_2282A1DA4);
  v27 = *(v26 - 8);
  v85 = v26;
  v86 = v27;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v75 = &v72 - v29;
  sub_2282A1DD8();
  v88 = v30;
  v91 = *(v30 - 8);
  v31 = *(v91 + 64);
  MEMORY[0x28223BE20](v30);
  v79 = &v72 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2282A1FAC();
  v34 = *(v33 - 8);
  v89 = v33;
  v90 = v34;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  v84 = &v72 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2282A2414(0, &qword_27D826DE0, sub_2282A1FAC, sub_2282A2484);
  v38 = *(v37 - 8);
  v92 = v37;
  v93 = v38;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  v83 = &v72 - v40;
  sub_2282A24B8();
  v94 = v41;
  v96 = *(v41 - 8);
  v42 = *(v96 + 64);
  MEMORY[0x28223BE20](v41);
  v87 = &v72 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = *(v0 + qword_27D826D88);
  v100 = sub_2283906C0();
  v45 = MEMORY[0x277D77BE8];
  sub_22824EB00(0, &qword_27D824108, MEMORY[0x277D77BE8]);
  sub_22818DF04(0, &qword_280DDBB50, &qword_280DDB9E0, 0x277D115B8);
  sub_228279FA0(&qword_27D827D00, &qword_27D824108, v45);
  sub_2283919A0();

  v46 = sub_22829CEB4()[5];

  v100 = v46;
  sub_22824EB00(0, &qword_27D825DC8, sub_2281930F4);
  sub_2282A2920(&qword_27D825DD0, sub_22824E8E4);
  sub_228279FA0(&qword_27D825DD8, &qword_27D825DC8, sub_2281930F4);
  v47 = v72;
  sub_2283919E0();

  (*(v73 + 8))(v11, v47);
  v48 = swift_allocObject();
  swift_weakInit();
  v49 = swift_allocObject();
  *(v49 + 16) = sub_2282A2640;
  *(v49 + 24) = v48;
  sub_2283917E0();
  v50 = MEMORY[0x277CBCD88];
  sub_2282A2098(0, &qword_280DDBC70, sub_22827A0FC, MEMORY[0x277CBCD88]);
  sub_2282A1CE8();
  sub_2282A1D1C();
  v51 = v74;
  v52 = v77;
  sub_228391AF0();

  (*(v78 + 8))(v15, v52);
  sub_22818DF04(0, &qword_280DDBB68, &qword_280DDB9F0, 0x277D11550);
  sub_2282A2920(&qword_27D8265F0, sub_228279FF0);
  v53 = v81;
  sub_2283919A0();
  (*(v82 + 8))(v51, v53);
  v54 = v76;
  sub_2283916C0();
  v55 = *(v80 + 8);
  v55(v24, v20);
  v100 = MEMORY[0x277D84F90];
  sub_2282A1DA4();
  v56 = v75;
  sub_2283919B0();
  v55(v54, v20);
  swift_beginAccess();
  sub_2282A21B0(0, &qword_280DDBBD8, MEMORY[0x277CBCED0]);
  v57 = v95;
  sub_228391930();
  swift_endAccess();
  sub_2282A1EB0();
  sub_2282A1F38();
  v58 = v79;
  v59 = v85;
  v60 = v97;
  sub_2283919E0();
  (*(v98 + 8))(v57, v60);
  (*(v86 + 8))(v56, v59);
  sub_2283917E0();
  sub_2282A2098(0, &qword_280DDBC80, sub_2282A2124, v50);
  sub_2282A22D0();
  sub_2282A2304();
  v61 = v84;
  v62 = v88;
  sub_228391AF0();
  (*(v91 + 8))(v58, v62);
  sub_2282A2484();
  v100 = 0;
  v101 = 0;
  v63 = v83;
  v64 = v89;
  sub_2283919B0();
  (*(v90 + 8))(v61, v64);
  sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);
  v65 = sub_228392790();
  v100 = v65;
  v66 = sub_228392730();
  v67 = v99;
  (*(*(v66 - 8) + 56))(v99, 1, 1, v66);
  sub_2282A25B8();
  sub_22818C470(&qword_280DDBAC0, &qword_280DDCEE0, 0x277D85C78);
  v68 = v87;
  v69 = v92;
  sub_228391A70();
  sub_2281A16F0(v67);

  (*(v93 + 8))(v63, v69);
  swift_allocObject();
  swift_weakInit();
  sub_2282A2920(&qword_27D826E00, sub_2282A24B8);
  v70 = v94;
  sub_228391AC0();

  (*(v96 + 8))(v68, v70);
  swift_beginAccess();
  sub_228391800();
  swift_endAccess();
}

uint64_t sub_22829E914(unint64_t a1, __objc2_class **a2)
{
  sub_2282A2968(0, &qword_280DDBC50, sub_22827A0FC, MEMORY[0x277CBCE78]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v34 - v8;
  sub_2282A2098(0, &qword_280DDB838, sub_22827A0FC, MEMORY[0x277CBCF38]);
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  v15 = &v34 - v14;
  sub_22827C090();
  v17 = v16;
  v39 = *(v16 - 8);
  v18 = *(v39 + 64);
  MEMORY[0x28223BE20](v16);
  v38 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v36 = Strong;
    v40 = MEMORY[0x277D84F90];
    if (a1 >> 62)
    {
      goto LABEL_18;
    }

    v21 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = v17; v21; i = v17)
    {
      v35 = a2;
      v22 = 0;
      v17 = a1 & 0xFFFFFFFFFFFFFF8;
      a2 = &off_2785F4000;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v23 = MEMORY[0x22AAB6D80](v22, a1);
        }

        else
        {
          if (v22 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_17;
          }

          v23 = *(a1 + 8 * v22 + 32);
        }

        v24 = v23;
        v25 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        v26 = [v23 firstOntologyCoding];
        if (v26)
        {

          sub_228393210();
          v27 = *(v40 + 16);
          sub_228393250();
          sub_228393260();
          sub_228393220();
        }

        else
        {
        }

        ++v22;
        if (v25 == v21)
        {
          v28 = v40;
          a2 = v35;
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      v21 = sub_2283930D0();
    }

    v28 = MEMORY[0x277D84F90];
LABEL_20:
    v30 = swift_allocObject();
    v30[2] = v36;
    v30[3] = v28;
    v30[4] = a2;
    sub_2282A2098(0, &qword_280DDBC70, sub_22827A0FC, MEMORY[0x277CBCD88]);
    sub_2282A1D1C();

    v31 = v38;
    sub_228391900();
    sub_2282A2920(&qword_280DDBC10, sub_22827C090);
    v32 = i;
    v29 = sub_228391990();

    (*(v39 + 8))(v31, v32);
  }

  else
  {
    v40 = 0;
    sub_22827A0FC();
    sub_2283918C0();
    sub_2281810DC(0, &qword_280DDB860);
    sub_2283918A0();
    (*(v6 + 8))(v9, v5);
    sub_2282A27D4();
    v29 = sub_228391990();
    (*(v12 + 8))(v15, v11);
  }

  return v29;
}

void sub_22829EDFC(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v61[1] = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v61[0] = MEMORY[0x277D84F90];
  if (v3 >> 62)
  {
LABEL_61:
    v4 = sub_2283930D0();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v47 = v3;
      v48 = a2;
      v5 = 0;
      v46 = 0;
      v55 = v3 & 0xFFFFFFFFFFFFFF8;
      v56 = v3 & 0xC000000000000001;
      v54 = v3 + 32;
      v49 = v4;
      while (1)
      {
        if (v56)
        {
          v6 = MEMORY[0x22AAB6D80](v5, v47);
          v7 = __OFADD__(v5++, 1);
          if (v7)
          {
            goto LABEL_59;
          }
        }

        else
        {
          if (v5 >= *(v55 + 16))
          {
            goto LABEL_60;
          }

          v6 = *(v54 + 8 * v5);
          v7 = __OFADD__(v5++, 1);
          if (v7)
          {
            goto LABEL_59;
          }
        }

        v57 = v6;
        v8 = [v6 interactions];
        sub_22817A958(0, &qword_280DDBA10, 0x277D11518);
        sub_22818C470(&qword_280DDBA08, &qword_280DDBA10, 0x277D11518);
        v9 = sub_228392480();

        if ((v9 & 0xC000000000000001) != 0)
        {
          a2 = MEMORY[0x277D84FA0];
          v60 = MEMORY[0x277D84FA0];
          sub_228393080();
          for (i = sub_228393100(); i; i = sub_228393100())
          {
            while (1)
            {
              v58 = i;
              swift_dynamicCast();
              v12 = [v59 severity];
              v13 = [v12 severityLevel];

              v14 = v59;
              if (v13 == 1)
              {
                break;
              }

              i = sub_228393100();
              if (!i)
              {
                goto LABEL_26;
              }
            }

            v15 = *(a2 + 16);
            if (*(a2 + 24) <= v15)
            {
              sub_2282D7554(v15 + 1);
            }

            a2 = v60;
            v16 = *(v60 + 40);
            v3 = v14;
            v17 = sub_228392C50();
            v18 = a2 + 56;
            v19 = -1 << *(a2 + 32);
            v20 = v17 & ~v19;
            v21 = v20 >> 6;
            if (((-1 << v20) & ~*(a2 + 56 + 8 * (v20 >> 6))) != 0)
            {
              v22 = __clz(__rbit64((-1 << v20) & ~*(a2 + 56 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v23 = 0;
              v24 = (63 - v19) >> 6;
              do
              {
                if (++v21 == v24 && (v23 & 1) != 0)
                {
                  __break(1u);
                  goto LABEL_58;
                }

                v25 = v21 == v24;
                if (v21 == v24)
                {
                  v21 = 0;
                }

                v23 |= v25;
                v26 = *(v18 + 8 * v21);
              }

              while (v26 == -1);
              v22 = __clz(__rbit64(~v26)) + (v21 << 6);
            }

            *(v18 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
            *(*(a2 + 48) + 8 * v22) = v14;
            ++*(a2 + 16);
          }

LABEL_26:

          if ((a2 & 0xC000000000000001) == 0)
          {
            goto LABEL_46;
          }
        }

        else
        {
          v27 = *(v9 + 32);
          v28 = ((1 << v27) + 63) >> 6;
          if ((v27 & 0x3Fu) <= 0xD)
          {
            goto LABEL_29;
          }

          if (swift_stdlib_isStackAllocationSafe())
          {

LABEL_29:
            v50 = &v46;
            v51 = v28;
            MEMORY[0x28223BE20](v10);
            v52 = &v46 - ((v29 + 15) & 0x3FFFFFFFFFFFFFF0);
            bzero(v52, v29);
            v53 = 0;
            a2 = 0;
            v3 = v9 + 56;
            v30 = 1 << *(v9 + 32);
            if (v30 < 64)
            {
              v31 = ~(-1 << v30);
            }

            else
            {
              v31 = -1;
            }

            v32 = v31 & *(v9 + 56);
            v33 = (v30 + 63) >> 6;
            while (v32)
            {
              v34 = __clz(__rbit64(v32));
              v32 &= v32 - 1;
LABEL_40:
              v37 = v34 | (a2 << 6);
              v38 = *(*(v9 + 48) + 8 * v37);
              v39 = [v38 severity];
              v40 = [v39 severityLevel];

              if (v40 == 1)
              {
                *&v52[(v37 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v37;
                v7 = __OFADD__(v53++, 1);
                if (v7)
                {
                  __break(1u);
                }
              }
            }

            v35 = a2;
            while (1)
            {
              a2 = v35 + 1;
              if (__OFADD__(v35, 1))
              {
                break;
              }

              if (a2 >= v33)
              {
                a2 = sub_22827AE4C(v52, v51, v53, v9);
                goto LABEL_45;
              }

              v36 = *(v3 + 8 * a2);
              ++v35;
              if (v36)
              {
                v34 = __clz(__rbit64(v36));
                v32 = (v36 - 1) & v36;
                goto LABEL_40;
              }
            }

LABEL_58:
            __break(1u);
LABEL_59:
            __break(1u);
LABEL_60:
            __break(1u);
            goto LABEL_61;
          }

          v41 = swift_slowAlloc();

          v42 = v46;
          v43 = sub_22827A904(v41, v28, v9, sub_2282A2A74, 0);
          v46 = v42;
          if (v42)
          {

            swift_bridgeObjectRelease_n();
            MEMORY[0x22AAB7B80](v41, -1, -1);
            __break(1u);
            return;
          }

          a2 = v43;
          swift_bridgeObjectRelease_n();
          MEMORY[0x22AAB7B80](v41, -1, -1);
LABEL_45:
          v4 = v49;
          if ((a2 & 0xC000000000000001) == 0)
          {
LABEL_46:
            v3 = *(a2 + 16);
            goto LABEL_47;
          }
        }

        v3 = sub_2283930D0();
LABEL_47:

        if (v3)
        {
          v3 = v61;
          sub_228393210();
          a2 = *(v61[0] + 16);
          sub_228393250();
          sub_228393260();
          sub_228393220();
          if (v5 == v4)
          {
            goto LABEL_57;
          }
        }

        else
        {

          if (v5 == v4)
          {
LABEL_57:
            v44 = v61[0];
            a2 = v48;
            goto LABEL_63;
          }
        }
      }
    }
  }

  v44 = MEMORY[0x277D84F90];
LABEL_63:
  *a2 = v44;
  v45 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22829F41C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_2282A2968(0, &qword_280DDBC48, sub_2282A2124, MEMORY[0x277CBCE78]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = v20 - v8;
  sub_2282A2098(0, &qword_280DDB840, sub_2282A2124, MEMORY[0x277CBCF38]);
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  v15 = v20 - v14;
  v17 = *a1;
  v16 = a1[1];
  v20[0] = v17;
  v20[1] = v16;
  sub_2282A2124();

  sub_2283918C0();
  sub_2281810DC(0, &qword_280DDB860);
  sub_2283918A0();
  (*(v6 + 8))(v9, v5);
  sub_2282A2740();
  v18 = sub_228391990();
  result = (*(v12 + 8))(v15, v11);
  *a2 = v18;
  return result;
}

uint64_t sub_22829F660(unint64_t *a1)
{
  v49 = sub_22838F4A0();
  v2 = *(v49 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v49);
  v47 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_22838FEF0();
  v50 = *(v48 - 8);
  v5 = *(v50 + 64);
  v6 = MEMORY[0x28223BE20](v48);
  v8 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v42 - v9;
  v12 = *a1;
  v11 = a1[1];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = result;
    v15 = *(result + qword_27D826D88);
    v16 = sub_228390660();
    v17 = sub_2281BFC2C(v16);

    v18 = MEMORY[0x277D84F90];
    if (!v17)
    {
      v17 = MEMORY[0x277D84F90];
    }

    v52 = MEMORY[0x277D84F90];
    if (v12)
    {
      v45 = v2;
      v19 = v12 & 0xFFFFFFFFFFFFFF8;
      if (v12 >> 62)
      {
        v2 = sub_2283930D0();
      }

      else
      {
        v2 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v18 = v11;
      if (v2)
      {
        v46 = v17;
        *&v43 = v10;
        *&v44 = v8;
        v20 = v14;
        v8 = 0;
        v14 = 0;
        v10 = (v12 & 0xC000000000000001);
        while (1)
        {
          if (v10)
          {
            v21 = v12;
            v22 = MEMORY[0x22AAB6D80](v8, v12);
          }

          else
          {
            if (v8 >= *(v19 + 16))
            {
              goto LABEL_34;
            }

            v21 = v12;
            v22 = *(v12 + 8 * v8 + 32);
          }

          v23 = v22;
          v24 = (v8 + 1);
          if (__OFADD__(v8, 1))
          {
            break;
          }

          v51 = v22;
          sub_22829FD30(&v51, v20, v18, v46, &v52);

          ++v8;
          v12 = v21;
          if (v24 == v2)
          {
            v19 = v52;
            v14 = v20;
            v8 = v44;
            v10 = v43;
            goto LABEL_18;
          }
        }

        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v19 = MEMORY[0x277D84F90];
LABEL_18:

      v2 = v45;
      v18 = MEMORY[0x277D84F90];
    }

    else
    {
      v19 = MEMORY[0x277D84F90];
    }

    if (!(v19 >> 62))
    {
      v25 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v25)
      {
LABEL_36:

        sub_22838F910();

        sub_22838FCD0();

        sub_22838FF50();
      }

LABEL_21:
      v52 = v18;
      result = sub_2281CA2AC(0, v25 & ~(v25 >> 63), 0);
      if (v25 < 0)
      {
        __break(1u);
        return result;
      }

      v26 = v10;
      v42[1] = v14;
      v27 = v52;
      if ((v19 & 0xC000000000000001) != 0)
      {
        v28 = 0;
        v45 = (v50 + 32);
        v46 = (v2 + 8);
        v44 = xmmword_228397F40;
        do
        {
          v29 = MEMORY[0x22AAB6D80](v28, v19);
          sub_2281BBE0C();
          v30 = swift_allocObject();
          *(v30 + 16) = v44;
          *(v30 + 56) = type metadata accessor for InteractionCriticalAlertItem();
          *(v30 + 64) = sub_2282A2920(&qword_27D825BA8, type metadata accessor for InteractionCriticalAlertItem);
          *(v30 + 32) = v29;
          swift_unknownObjectRetain();
          v31 = v47;
          sub_22838F490();
          sub_22838F450();
          (*v46)(v31, v49);
          sub_22838FED0();
          swift_unknownObjectRelease();
          v52 = v27;
          v33 = *(v27 + 16);
          v32 = *(v27 + 24);
          if (v33 >= v32 >> 1)
          {
            sub_2281CA2AC(v32 > 1, v33 + 1, 1);
            v27 = v52;
          }

          ++v28;
          *(v27 + 16) = v33 + 1;
          (*(v50 + 32))(v27 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v33, v26, v48);
        }

        while (v25 != v28);
      }

      else
      {
        sub_2281BBE0C();
        v45 = (v2 + 8);
        v46 = v34;
        *&v44 = v50 + 32;
        v35 = 32;
        v43 = xmmword_228397F40;
        do
        {
          v36 = v8;
          v37 = *(v19 + v35);
          v38 = swift_allocObject();
          *(v38 + 16) = v43;
          *(v38 + 56) = type metadata accessor for InteractionCriticalAlertItem();
          *(v38 + 64) = sub_2282A2920(&qword_27D825BA8, type metadata accessor for InteractionCriticalAlertItem);
          *(v38 + 32) = v37;
          swift_retain_n();
          v39 = v47;
          sub_22838F490();
          sub_22838F450();
          (*v45)(v39, v49);
          sub_22838FED0();

          v52 = v27;
          v41 = *(v27 + 16);
          v40 = *(v27 + 24);
          if (v41 >= v40 >> 1)
          {
            sub_2281CA2AC(v40 > 1, v41 + 1, 1);
            v27 = v52;
          }

          *(v27 + 16) = v41 + 1;
          (*(v50 + 32))(v27 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v41, v36, v48);
          v35 += 8;
          --v25;
          v8 = v36;
        }

        while (v25);
      }

      goto LABEL_36;
    }

LABEL_35:
    v25 = sub_2283930D0();
    if (!v25)
    {
      goto LABEL_36;
    }

    goto LABEL_21;
  }

  return result;
}

uint64_t sub_22829FD30(id *a1, uint64_t a2, unint64_t a3, unint64_t a4, void *a5)
{
  v55 = a5;
  v63 = *MEMORY[0x277D85DE8];
  v8 = [*a1 interactions];
  sub_22817A958(0, &qword_280DDBA10, 0x277D11518);
  sub_22818C470(&qword_280DDBA08, &qword_280DDBA10, 0x277D11518);
  v9 = sub_228392480();

  v57 = a3;
  v58 = a4;
  v56 = a2;
  if ((v9 & 0xC000000000000001) == 0)
  {
    v28 = *(v9 + 32);
    v52 = ((1 << v28) + 63) >> 6;
    if ((v28 & 0x3Fu) <= 0xD)
    {
      goto LABEL_22;
    }

    goto LABEL_39;
  }

  v11 = MEMORY[0x277D84FA0];
  v62 = MEMORY[0x277D84FA0];
  sub_228393080();
  v12 = sub_228393100();
  if (!v12)
  {
LABEL_20:

    goto LABEL_37;
  }

  while (1)
  {
    v60 = v12;
    swift_dynamicCast();
    v13 = [v61 severity];
    v14 = [v13 severityLevel];

    v15 = v61;
    if (v14 == 1)
    {
      break;
    }

LABEL_5:
    v12 = sub_228393100();
    if (!v12)
    {
      goto LABEL_20;
    }
  }

  v16 = v11[2];
  if (v11[3] <= v16)
  {
    sub_2282D7554(v16 + 1);
  }

  v11 = v62;
  v17 = *(v62 + 40);
  v9 = v61;
  v18 = sub_228392C50();
  v19 = v62 + 56;
  v20 = -1 << *(v62 + 32);
  v21 = v18 & ~v20;
  v22 = v21 >> 6;
  if (((-1 << v21) & ~*(v62 + 56 + 8 * (v21 >> 6))) != 0)
  {
    v23 = __clz(__rbit64((-1 << v21) & ~*(v62 + 56 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_19:
    *(v19 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    *(v11[6] + 8 * v23) = v15;
    ++v11[2];
    goto LABEL_5;
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v19 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_19;
    }
  }

  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_39:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

LABEL_22:
    v51[1] = v51;
    MEMORY[0x28223BE20](v10);
    v53 = v51 - ((v29 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v53, v29);
    v54 = 0;
    v30 = 0;
    v31 = 1 << *(v9 + 32);
    v32 = -1;
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    v33 = v32 & *(v9 + 56);
    v34 = (v31 + 63) >> 6;
    while (v33)
    {
      v35 = __clz(__rbit64(v33));
      v33 &= v33 - 1;
LABEL_32:
      v38 = v35 | (v30 << 6);
      v39 = *(*(v9 + 48) + 8 * v38);
      v40 = [v39 severity];
      v41 = [v40 severityLevel];

      if (v41 == 1)
      {
        *&v53[(v38 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v38;
        if (__OFADD__(v54++, 1))
        {
          __break(1u);
LABEL_36:
          v11 = sub_22827AE4C(v53, v52, v54, v9);
          goto LABEL_37;
        }
      }
    }

    v36 = v30;
    while (1)
    {
      v30 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v30 >= v34)
      {
        goto LABEL_36;
      }

      v37 = *(v9 + 56 + 8 * v30);
      ++v36;
      if (v37)
      {
        v35 = __clz(__rbit64(v37));
        v33 = (v37 - 1) & v37;
        goto LABEL_32;
      }
    }
  }

  v48 = swift_slowAlloc();
  v49 = v59;
  v50 = sub_22827A904(v48, v52, v9, sub_2282A2A74, 0);
  v59 = v49;
  if (v49)
  {

    result = MEMORY[0x22AAB7B80](v48, -1, -1);
    __break(1u);
  }

  else
  {
    v11 = v50;

    MEMORY[0x22AAB7B80](v48, -1, -1);
LABEL_37:
    v43 = v57;

    v44 = v58;

    v45 = v56;

    sub_2282A1AB0(v11, v45, v43, v44, v55);

    v47 = *MEMORY[0x277D85DE8];
  }

  return result;
}

BOOL sub_2282A0274(id *a1)
{
  v1 = [*a1 severity];
  v2 = [v1 severityLevel];

  return v2 == 1;
}

void sub_2282A02D8(id *a1, uint64_t a2, unint64_t a3, unint64_t a4, void *a5)
{
  v107 = a2;
  v108 = a5;
  v113 = a4;
  v106 = type metadata accessor for InteractionStackedMedmojiDataProvider(0);
  v7 = *(*(v106 - 8) + 64);
  MEMORY[0x28223BE20](v106);
  v110 = (&v105 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v109 = type metadata accessor for DrugInteractionVisualizationConfig(0);
  v9 = *(*(v109 - 1) + 64);
  v10 = MEMORY[0x28223BE20](v109);
  v111 = (&v105 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v112 = (&v105 - v12);
  v13 = *a1;
  v115 = a3;
  v139 = v13;
  if (!a3)
  {
    goto LABEL_13;
  }

  v14 = v115 & 0xFFFFFFFFFFFFFF8;
  if (v115 >> 62)
  {
    v15 = sub_2283930D0();
    if (!v15)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v15 = *((v115 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      goto LABEL_13;
    }
  }

  v16 = 0;
  v17 = 0;
  v13 = (v115 & 0xC000000000000001);
  do
  {
    if (v13)
    {
      v18 = MEMORY[0x22AAB6D80](v16, v115);
    }

    else
    {
      if (v16 >= *(v14 + 16))
      {
        goto LABEL_47;
      }

      v18 = *(v115 + 8 * v16 + 32);
    }

    v19 = v18;
    a3 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      goto LABEL_46;
    }

    v20 = [v18 isEqualToDrugInteractionResult_];

    v17 |= v20;
    ++v16;
  }

  while (a3 != v15);
  v13 = v139;
  if ((v17 & 1) == 0)
  {
LABEL_13:
    v129 = MEMORY[0x277D84F90];
    a3 = v113;
    if (v113 >> 62)
    {
      goto LABEL_48;
    }

    for (i = *((v113 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2283930D0())
    {
      v22 = 0;
      v114 = a3 & 0xFFFFFFFFFFFFFF8;
      v115 = a3 & 0xC000000000000001;
      do
      {
        if (v115)
        {
          v23 = MEMORY[0x22AAB6D80](v22, a3);
        }

        else
        {
          if (v22 >= *(v114 + 16))
          {
            goto LABEL_43;
          }

          v23 = *(a3 + 8 * v22 + 32);
        }

        v24 = v23;
        v25 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          __break(1u);
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }

        v26 = [v23 firstConceptIdentifier];
        if (v26)
        {
          v27 = v26;
          sub_22817A958(0, &qword_27D825620, 0x277D82BB8);
          v28 = [v13 firstInteractionClass];
          v29 = [v28 ancestorIdentifier];

          v30 = sub_228392C60();
          if (v30)
          {
            sub_228393210();
            v31 = v129[2];
            sub_228393250();
            sub_228393260();
            sub_228393220();
          }

          else
          {
          }

          v13 = v139;
          a3 = v113;
        }

        else
        {
        }

        ++v22;
      }

      while (v25 != i);
      v32 = 0;
      v105 = v129;
      v129 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v115)
        {
          v33 = MEMORY[0x22AAB6D80](v32, a3);
        }

        else
        {
          if (v32 >= *(v114 + 16))
          {
            goto LABEL_45;
          }

          v33 = *(a3 + 8 * v32 + 32);
        }

        v34 = v33;
        v35 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          break;
        }

        v36 = [v33 firstConceptIdentifier];
        if (v36)
        {
          v37 = v36;
          sub_22817A958(0, &qword_27D825620, 0x277D82BB8);
          v38 = [v13 secondInteractionClass];
          v39 = [v38 ancestorIdentifier];

          v40 = sub_228392C60();
          if (v40)
          {
            sub_228393210();
            v41 = v129[2];
            sub_228393250();
            sub_228393260();
            sub_228393220();
          }

          else
          {
          }

          v13 = v139;
          a3 = v113;
        }

        else
        {
        }

        ++v32;
        if (v35 == i)
        {
          v42 = v129;
          v43 = v111;
          v44 = v105;
          goto LABEL_50;
        }
      }

LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      ;
    }

    v44 = MEMORY[0x277D84F90];
    v42 = MEMORY[0x277D84F90];
    v43 = v111;
LABEL_50:
    if (v44 < 0 || (v44 & 0x4000000000000000) != 0)
    {
      if (sub_2283930D0())
      {
LABEL_53:
        if ((v44 & 0xC000000000000001) != 0)
        {
          v45 = MEMORY[0x22AAB6D80](0, v44);
        }

        else
        {
          if (!*(v44 + 16))
          {
            __break(1u);
            goto LABEL_86;
          }

          v45 = *(v44 + 32);
        }

        v46 = v45;

        _sSo29HKMedicationUserDomainConceptC19HealthMedicationsUIE7medmoji0eF10Experience29MedicationVisualizationConfigVSgvg_0();
        swift_storeEnumTagMultiPayload();
        v129 = v46;
        v47 = sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
        v115 = sub_228390F30();
        v49 = v48;
        v137 = v47;
        v138 = &protocol witness table for HKMedicationUserDomainConcept;
        v136[0] = v46;
        if ((v42 & 0x8000000000000000) != 0)
        {
          goto LABEL_68;
        }

LABEL_62:
        if ((v42 & 0x4000000000000000) == 0)
        {
          v58 = *(v42 + 16);
          v114 = v49;
          if (!v58)
          {
LABEL_69:

            v65 = v139;
            v67 = [v139 secondInteractionClass];
            v68 = [v67 ancestorIdentifier];

            v69 = HKDrugInteractionLifestyleFactorForHKConceptIdentifier();
            v70 = v69;
            if (!v69)
            {
              sub_22817A958(0, &qword_280DDB960, 0x277CCABB0);
              v70 = sub_228392C40();
            }

            v71 = v69;
            v60 = sub_228392F30();

            *v43 = v60;
            swift_storeEnumTagMultiPayload();
            LOBYTE(v129) = 0;
            v62 = HKDrugInteractionLifestyleFactor.localizedString(variant:)(&v129, v60);
            v64 = v72;
            type metadata accessor for HKDrugInteractionLifestyleFactor(0);
            v134 = v73;
            v135 = &protocol witness table for HKDrugInteractionLifestyleFactor;

            goto LABEL_72;
          }

          goto LABEL_64;
        }

LABEL_68:
        v66 = sub_2283930D0();
        v114 = v49;
        if (!v66)
        {
          goto LABEL_69;
        }

LABEL_64:
        if ((v42 & 0xC000000000000001) != 0)
        {
          v59 = MEMORY[0x22AAB6D80](0, v42);
          goto LABEL_67;
        }

        if (*(v42 + 16))
        {
          v59 = *(v42 + 32);
LABEL_67:
          v60 = v59;

          _sSo29HKMedicationUserDomainConceptC19HealthMedicationsUIE7medmoji0eF10Experience29MedicationVisualizationConfigVSgvg_0();
          swift_storeEnumTagMultiPayload();
          v129 = v60;
          v61 = sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
          v62 = sub_228390F30();
          v64 = v63;
          v134 = v61;
          v135 = &protocol witness table for HKMedicationUserDomainConcept;
          v65 = v139;
LABEL_72:
          v133[0] = v60;
          v74 = [v65 severity];
          v75 = [v74 severityLevel];

          v76 = v106;
          v77 = v110;
          sub_2282A2658(v112, v110 + *(v106 + 20), type metadata accessor for DrugInteractionVisualizationConfig);
          sub_2282A2658(v43, v77 + *(v76 + 24), type metadata accessor for DrugInteractionVisualizationConfig);
          *v77 = v75;
          *&v120 = v76;
          *(&v120 + 1) = sub_2282A2920(&qword_27D825730, type metadata accessor for InteractionStackedMedmojiDataProvider);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v119 + 1);
          sub_2282A2658(v77, boxed_opaque_existential_1, type metadata accessor for InteractionStackedMedmojiDataProvider);
          sub_228180FB0(v136, v122);
          sub_228180FB0(v133, v125);
          *&v119[0] = v65;
          v80 = v114;
          v79 = v115;
          *&v121 = v115;
          *(&v121 + 1) = v114;
          *(&v123 + 1) = 0;
          *&v124 = v62;
          *(&v124 + 1) = v64;
          *(&v126 + 1) = 0;
          *&v127 = 0;
          v128 = 0uLL;
          *(&v127 + 1) = 0xE000000000000000;
          if (v62 == v115 && v64 == v114 || (sub_228393460() & 1) == 0)
          {
            sub_22819E748(v119, &v129);
            v84 = v65;
          }

          else
          {
            v82 = *(&v120 + 1);
            v81 = v120;
            __swift_project_boxed_opaque_existential_0(v119 + 1, v120);
            v115 = v79;
            v109 = *(v82 + 40);
            v113 = v139;
            v83 = v82;
            v65 = v139;
            (v109)(v130, v81, v83);
            sub_228180FB0(v125, v131);
            sub_228180FB0(v122, v132);
            v129 = v113;
            v130[5] = v62;
            v130[6] = v64;
            v131[5] = 0;
            v131[6] = v115;
            v131[7] = v80;
            v132[6] = 0;
            v132[5] = 0;
            v132[9] = 0;
            v132[7] = 0xE000000000000000;
            v132[8] = 0;
          }

          sub_22819F35C(v119);
          v85 = swift_allocObject();
          v86 = v107;
          swift_weakInit();
          sub_22819E748(&v129, v119);
          v87 = swift_allocObject();
          *(v87 + 16) = v85;
          *(v87 + 24) = v65;
          v139 = v85;
          v88 = v127;
          *(v87 + 192) = v126;
          *(v87 + 208) = v88;
          *(v87 + 224) = v128;
          v89 = v124;
          *(v87 + 128) = v123;
          *(v87 + 144) = v89;
          v90 = v125[1];
          *(v87 + 160) = v125[0];
          *(v87 + 176) = v90;
          v91 = v121;
          *(v87 + 64) = v120;
          *(v87 + 80) = v91;
          v92 = v122[1];
          *(v87 + 96) = v122[0];
          *(v87 + 112) = v92;
          v93 = v119[1];
          *(v87 + 32) = v119[0];
          *(v87 + 48) = v93;
          v94 = swift_allocObject();
          swift_weakInit();
          v95 = v65;

          v96 = sub_22829CE10();
          v97 = *(v86 + qword_27D826D90);
          v98 = swift_allocObject();
          v98[2] = v96;
          v98[3] = v95;
          v98[4] = v94;
          v98[5] = v97;
          type metadata accessor for InteractionCriticalAlertItem();
          v99 = swift_allocObject();
          v117 = &type metadata for InteractionResultDetailDataProvider;
          v118 = &protocol witness table for InteractionResultDetailDataProvider;
          *&v116 = swift_allocObject();
          sub_22819E748(&v129, v116 + 16);
          type metadata accessor for InteractionCriticalAlertCell();
          sub_2282A2920(&unk_280DDC1E0, type metadata accessor for InteractionCriticalAlertCell);
          v100 = v95;

          v99[7] = sub_22838FBB0();
          v99[8] = v101;
          sub_22816DFFC(&v116, (v99 + 2));
          v99[9] = sub_2282A26C0;
          v99[10] = v87;
          v99[11] = sub_2282A26CC;
          v99[12] = v98;

          v103 = v108;
          MEMORY[0x22AAB5D20](v102);
          if (*((*v103 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v103 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v104 = *((*v103 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_2283921E0();
          }

          sub_228392230();

          sub_22819F35C(&v129);
          sub_2282A26D8(v110, type metadata accessor for InteractionStackedMedmojiDataProvider);
          sub_2282A26D8(v111, type metadata accessor for DrugInteractionVisualizationConfig);
          sub_2282A26D8(v112, type metadata accessor for DrugInteractionVisualizationConfig);
          __swift_destroy_boxed_opaque_existential_0(v133);
          __swift_destroy_boxed_opaque_existential_0(v136);
          return;
        }

LABEL_86:
        __break(1u);
        return;
      }
    }

    else if (*(v44 + 16))
    {
      goto LABEL_53;
    }

    v50 = [v139 firstInteractionClass];
    v51 = [v50 ancestorIdentifier];

    v52 = HKDrugInteractionLifestyleFactorForHKConceptIdentifier();
    v53 = v52;
    if (!v52)
    {
      sub_22817A958(0, &qword_280DDB960, 0x277CCABB0);
      v53 = sub_228392C40();
    }

    v54 = v52;
    v55 = sub_228392F30();

    *v112 = v55;
    swift_storeEnumTagMultiPayload();
    LOBYTE(v129) = 0;
    v115 = HKDrugInteractionLifestyleFactor.localizedString(variant:)(&v129, v55);
    v49 = v56;
    type metadata accessor for HKDrugInteractionLifestyleFactor(0);
    v137 = v57;
    v138 = &protocol witness table for HKDrugInteractionLifestyleFactor;

    v136[0] = v55;
    if ((v42 & 0x8000000000000000) != 0)
    {
      goto LABEL_68;
    }

    goto LABEL_62;
  }
}

uint64_t sub_2282A0FF0(uint64_t a1, void *a2, void *a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v33 = result;
    sub_228180ED0();
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_228396260;
    *(v6 + 32) = a2;
    type metadata accessor for HKDrugInteractionResultCollection();
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    sub_228180FB0((a3 + 1), v37);
    v8 = a3[7];
    v32 = a3[6];
    sub_228180FB0((a3 + 8), v36);
    v9 = a3[11];
    v10 = a3[12];
    __swift_project_boxed_opaque_existential_0(a3 + 8, v9);
    v11 = *(v10 + 48);
    v12 = a2;

    v13 = v11(v9, v10);
    v14 = a3[14];
    v15 = a3[15];
    sub_228180FB0((a3 + 16), v35);
    v16 = a3[19];
    v17 = a3[20];
    __swift_project_boxed_opaque_existential_0(a3 + 16, v16);
    v18 = *(v17 + 48);

    v19 = v18(v16, v17);
    v20 = type metadata accessor for InteractionResultDetailViewController();
    v21 = objc_allocWithZone(v20);
    *&v21[qword_27D824388] = v7;
    sub_228180FB0(v37, &v21[qword_27D824390]);
    v22 = &v21[qword_27D824398];
    *v22 = v32;
    *(v22 + 1) = v8;
    sub_228180FB0(v36, &v21[qword_27D8243A0]);
    *&v21[qword_27D8243A8] = v13;
    v23 = &v21[qword_27D8243B0];
    *v23 = v14;
    *(v23 + 1) = v15;
    sub_228180FB0(v35, &v21[qword_27D8243B8]);
    *&v21[qword_27D8243C0] = v19;
    v34.receiver = v21;
    v34.super_class = v20;

    v24 = objc_msgSendSuper2(&v34, sel_initWithCollectionViewLayout_, 0);
    v25 = qword_280DDCF18;
    v26 = v24;
    if (v25 != -1)
    {
      swift_once();
    }

    sub_22838F0C0();
    v27 = sub_228391FC0();

    [v26 setTitle_];

    v28 = [v26 navigationItem];
    [v28 setLargeTitleDisplayMode_];

    [v26 setModalPresentationStyle_];

    __swift_destroy_boxed_opaque_existential_0(v35);
    __swift_destroy_boxed_opaque_existential_0(v36);
    __swift_destroy_boxed_opaque_existential_0(v37);
    [v26 setModalPresentationStyle_];

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v30 = Strong;
      [Strong showAdaptively:v26 sender:v33];
    }

    v31 = *(v33 + qword_27D826D90);

    sub_228390FE0();
  }

  return result;
}

void sub_2282A13D0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v10[4] = sub_2282A2738;
  v10[5] = v8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_2283282E4;
  v10[3] = &block_descriptor_30;
  v9 = _Block_copy(v10);

  [a1 markDrugInteractionAsDismissed:a2 completion:v9];
  _Block_release(v9);
}

uint64_t sub_2282A14CC()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v0 = sub_22829CE10();
    v1 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_2282A2A70;
    aBlock[5] = v1;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22829DA98;
    aBlock[3] = &block_descriptor_35;
    v2 = _Block_copy(aBlock);

    [v0 allDismissedDrugInteractionsWithCompletion_];
    _Block_release(v2);
  }

  return sub_228390FE0();
}

Swift::Void __swiftcall InteractionCriticalAlertDataSource.registerCells(for:)(UICollectionView *a1)
{
  type metadata accessor for InteractionCriticalAlertCell();
  sub_2282A2920(&unk_280DDC1E0, type metadata accessor for InteractionCriticalAlertCell);
  sub_2283926B0();
}

uint64_t type metadata accessor for InteractionCriticalAlertDataSource()
{
  result = qword_280DDBF00;
  if (!qword_280DDBF00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2282A1784()
{
  type metadata accessor for InteractionCriticalAlertCell();
  sub_2282A2920(&unk_280DDC1E0, type metadata accessor for InteractionCriticalAlertCell);
  return sub_2283926B0();
}

void sub_2282A17F4()
{
  sub_2282A21B0(319, &qword_280DDBBD8, MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initClassMetadata2();
  }
}

uint64_t sub_2282A19B4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_228391960();

  *a2 = v5;
  return result;
}

uint64_t sub_2282A1A34(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_228391970();
}

void sub_2282A1AB0(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, void *a5)
{
  v6 = v5;
  v7 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_228393080();
    sub_22817A958(0, &qword_280DDBA10, 0x277D11518);
    sub_22818C470(&qword_280DDBA08, &qword_280DDBA10, 0x277D11518);
    sub_2283924C0();
    v7 = v24;
    v8 = v25;
    v9 = v26;
    v10 = v27;
    v11 = v28;
  }

  else
  {
    v12 = -1 << *(a1 + 32);
    v8 = a1 + 56;
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v11 = v14 & *(a1 + 56);

    v10 = 0;
  }

  if (v7 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v15 = v10;
  v16 = v11;
  v17 = v10;
  if (v11)
  {
LABEL_12:
    v18 = (v16 - 1) & v16;
    v19 = *(*(v7 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));
    if (v19)
    {
      do
      {
        v29 = v19;
        sub_2282A02D8(&v29, a2, a3, a4, a5);

        if (v6)
        {
          break;
        }

        v10 = v17;
        v11 = v18;
        if ((v7 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!sub_228393100())
        {
          break;
        }

        sub_22817A958(0, &qword_280DDBA10, 0x277D11518);
        swift_dynamicCast();
        v19 = v29;
        v17 = v10;
        v18 = v11;
      }

      while (v29);
    }

LABEL_19:
    sub_228176F04();
  }

  else
  {
    while (1)
    {
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v17 >= ((v9 + 64) >> 6))
      {
        goto LABEL_19;
      }

      v16 = *(v8 + 8 * v17);
      ++v15;
      if (v16)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

unint64_t sub_2282A1D1C()
{
  result = qword_280DDBC78;
  if (!qword_280DDBC78)
  {
    sub_2282A2098(255, &qword_280DDBC70, sub_22827A0FC, MEMORY[0x277CBCD88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DDBC78);
  }

  return result;
}

void sub_2282A1DD8()
{
  if (!qword_27D826DB0)
  {
    sub_2282A2414(255, &qword_27D826DA0, sub_22827A27C, sub_2282A1DA4);
    sub_2282A21B0(255, &qword_280DDBBF8, MEMORY[0x277CBCEC0]);
    sub_2282A1EB0();
    sub_2282A1F38();
    v0 = sub_228391670();
    if (!v1)
    {
      atomic_store(v0, &qword_27D826DB0);
    }
  }
}

unint64_t sub_2282A1EB0()
{
  result = qword_27D826DB8;
  if (!qword_27D826DB8)
  {
    sub_2282A2414(255, &qword_27D826DA0, sub_22827A27C, sub_2282A1DA4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D826DB8);
  }

  return result;
}

unint64_t sub_2282A1F38()
{
  result = qword_280DDBC00;
  if (!qword_280DDBC00)
  {
    sub_2282A21B0(255, &qword_280DDBBF8, MEMORY[0x277CBCEC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DDBC00);
  }

  return result;
}

void sub_2282A1FAC()
{
  if (!qword_27D826DC0)
  {
    sub_2282A2098(255, &qword_280DDBC80, sub_2282A2124, MEMORY[0x277CBCD88]);
    sub_2282A2228(255, &qword_27D826DC8, sub_2282A1DD8, sub_2282A22D0);
    sub_2282A2304();
    sub_2282A238C();
    v0 = sub_228391780();
    if (!v1)
    {
      atomic_store(v0, &qword_27D826DC0);
    }
  }
}

void sub_2282A2098(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = sub_2281810DC(255, &qword_280DDB860);
    v9 = a4(a1, v7, v8, MEMORY[0x277D84950]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_2282A2124()
{
  if (!qword_280DDBB58)
  {
    sub_22827A0FC();
    sub_2282A21B0(255, &qword_280DDBB30, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280DDBB58);
    }
  }
}

void sub_2282A21B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_22818DF04(255, &qword_280DDBB38, &qword_280DDB9D0, 0x277D114F0);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_2282A2228(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    sub_2281810DC(255, &qword_280DDB860);
    a4();
    v6 = sub_228391710();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_2282A2304()
{
  result = qword_280DDBC88;
  if (!qword_280DDBC88)
  {
    sub_2282A2098(255, &qword_280DDBC80, sub_2282A2124, MEMORY[0x277CBCD88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DDBC88);
  }

  return result;
}

unint64_t sub_2282A238C()
{
  result = qword_27D826DD8;
  if (!qword_27D826DD8)
  {
    sub_2282A2228(255, &qword_27D826DC8, sub_2282A1DD8, sub_2282A22D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D826DD8);
  }

  return result;
}

void sub_2282A2414(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    a4();
    v6 = sub_228391700();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2282A24B8()
{
  if (!qword_27D826DF0)
  {
    sub_2282A2414(255, &qword_27D826DE0, sub_2282A1FAC, sub_2282A2484);
    sub_22817A958(255, &qword_280DDCEE0, 0x277D85C78);
    sub_2282A25B8();
    sub_22818C470(&qword_280DDBAC0, &qword_280DDCEE0, 0x277D85C78);
    v0 = sub_2283917D0();
    if (!v1)
    {
      atomic_store(v0, &qword_27D826DF0);
    }
  }
}

unint64_t sub_2282A25B8()
{
  result = qword_27D826DF8;
  if (!qword_27D826DF8)
  {
    sub_2282A2414(255, &qword_27D826DE0, sub_2282A1FAC, sub_2282A2484);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D826DF8);
  }

  return result;
}

uint64_t sub_2282A2658(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2282A26D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2282A2738()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_2282A14CC();
}

unint64_t sub_2282A2740()
{
  result = qword_280DDB848;
  if (!qword_280DDB848)
  {
    sub_2282A2098(255, &qword_280DDB840, sub_2282A2124, MEMORY[0x277CBCF38]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DDB848);
  }

  return result;
}

unint64_t sub_2282A27D4()
{
  result = qword_27D826E08;
  if (!qword_27D826E08)
  {
    sub_2282A2098(255, &qword_280DDB838, sub_22827A0FC, MEMORY[0x277CBCF38]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D826E08);
  }

  return result;
}

unint64_t sub_2282A2868()
{
  result = qword_280DDBC30;
  if (!qword_280DDBC30)
  {
    sub_2282A2098(255, &qword_280DDBC28, sub_22827A0FC, MEMORY[0x277CBCEA8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DDBC30);
  }

  return result;
}

uint64_t sub_2282A2920(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2282A2968(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t objectdestroy_26Tm(void (*a1)(void))
{
  v3 = *(v1 + 16);

  a1(*(v1 + 24));

  return MEMORY[0x2821FE8E8](v1, 32, 7);
}

uint64_t sub_2282A2A1C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_22829DA1C();
}

uint64_t sub_2282A2B2C(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for Dosage() - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

void *sub_2282A2C18(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v33 = a1;
  sub_2282AA2F8(0, &qword_27D826EB8, type metadata accessor for ScheduleDataSource.DoseItem, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v24 - v7;
  v32 = type metadata accessor for ScheduleDataSource.DoseItem(0);
  v27 = *(v32 - 8);
  v9 = *(v27 + 64);
  v10 = MEMORY[0x28223BE20](v32);
  v31 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v26 = &v24 - v12;
  if (a3 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2283930D0())
  {
    v14 = 0;
    v29 = a3 & 0xFFFFFFFFFFFFFF8;
    v30 = a3 & 0xC000000000000001;
    v15 = (v27 + 48);
    v16 = MEMORY[0x277D84F90];
    v25 = a3;
    v28 = i;
    while (1)
    {
      if (v30)
      {
        v17 = MEMORY[0x22AAB6D80](v14, a3);
      }

      else
      {
        if (v14 >= *(v29 + 16))
        {
          goto LABEL_20;
        }

        v17 = *(a3 + 8 * v14 + 32);
      }

      v18 = v17;
      v19 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      v34 = v17;
      v33(&v34);
      if (v3)
      {

        return v16;
      }

      if ((*v15)(v8, 1, v32) == 1)
      {
        sub_2282ABCF8(v8, &qword_27D826EB8, type metadata accessor for ScheduleDataSource.DoseItem);
      }

      else
      {
        v20 = v26;
        sub_2282ABD68(v8, v26, type metadata accessor for ScheduleDataSource.DoseItem);
        sub_2282ABD68(v20, v31, type metadata accessor for ScheduleDataSource.DoseItem);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_228198AD4(0, v16[2] + 1, 1, v16);
        }

        v22 = v16[2];
        v21 = v16[3];
        if (v22 >= v21 >> 1)
        {
          v16 = sub_228198AD4(v21 > 1, v22 + 1, 1, v16);
        }

        v16[2] = v22 + 1;
        sub_2282ABD68(v31, v16 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v22, type metadata accessor for ScheduleDataSource.DoseItem);
        a3 = v25;
      }

      ++v14;
      if (v19 == v28)
      {
        return v16;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  return MEMORY[0x277D84F90];
}

void *sub_2282A2F90(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  sub_2282AA2F8(0, &qword_27D826200, type metadata accessor for Dosage, MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v27 - v9;
  v11 = type metadata accessor for Dosage();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v33 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v31 = &v27 - v16;
  v17 = *(a3 + 16);
  if (!v17)
  {
    return MEMORY[0x277D84F90];
  }

  v18 = *(v15 + 72);
  v28 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v19 = a3 + v28;
  v32 = (v15 + 48);
  v20 = MEMORY[0x277D84F90];
  v29 = v11;
  v30 = a2;
  while (1)
  {
    a1(v19);
    if (v3)
    {
      break;
    }

    if ((*v32)(v10, 1, v11) == 1)
    {
      sub_2282ABCF8(v10, &qword_27D826200, type metadata accessor for Dosage);
    }

    else
    {
      v21 = v31;
      sub_2282ABD68(v10, v31, type metadata accessor for Dosage);
      sub_2282ABD68(v21, v33, type metadata accessor for Dosage);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_2281984E8(0, v20[2] + 1, 1, v20);
      }

      v23 = v20[2];
      v22 = v20[3];
      if (v23 >= v22 >> 1)
      {
        v25 = sub_2281984E8(v22 > 1, v23 + 1, 1, v20);
        v24 = v18;
        v20 = v25;
      }

      else
      {
        v24 = v18;
      }

      v20[2] = v23 + 1;
      v18 = v24;
      sub_2282ABD68(v33, v20 + v28 + v23 * v24, type metadata accessor for Dosage);
      v11 = v29;
    }

    v19 += v18;
    if (!--v17)
    {
      return v20;
    }
  }

  return v20;
}

uint64_t sub_2282A3298@<X0>(uint64_t a1@<X8>)
{
  sub_2282AB580();
  v4 = v3;
  v5 = *(*(v3 - 8) + 64);
  result = MEMORY[0x28223BE20](v3);
  v9 = (&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *v1;
  v10 = v1[1];
  v12 = *(*v1 + 16);
  if (v10 == v12)
  {
    v13 = *(v7 + 56);

    return v13(a1, 1, 1, v4);
  }

  else
  {
    if (v10 >= v12)
    {
      __break(1u);
    }

    else
    {
      v19 = v7;
      v14 = *(type metadata accessor for WeekdaysAndDosages(0) - 8);
      v15 = v11 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v10;
      v1[1] = v10 + 1;
      v16 = *(v4 + 48);
      v17 = v1[2];
      *v9 = v17;
      result = sub_2282AB724(v15, v9 + v16, type metadata accessor for WeekdaysAndDosages);
      if (!__OFADD__(v17, 1))
      {
        v1[2] = v17 + 1;
        sub_2282ABD68(v9, a1, sub_2282AB580);
        return (*(v19 + 56))(a1, 0, 1, v4);
      }
    }

    __break(1u);
  }

  return result;
}

size_t sub_2282A3484@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2281D9300(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(type metadata accessor for WeekdaysAndDosages(0) - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_2282ABD68(v11, a2, type metadata accessor for WeekdaysAndDosages);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_2282A35B8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2281D938C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *(v3 + a1 + 32);
    memmove((v3 + a1 + 32), (v3 + a1 + 33), v5 - 1 - a1);
    *(v3 + 16) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_2282A363C(void **a1)
{
  v2 = *(type metadata accessor for Dosage() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_22834084C(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_2282AA35C(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_2282A36E4()
{
  v0 = sub_228391130();
  v1 = *(v0 - 8);
  v2 = v1[8];
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v27 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v27 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v27 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v27 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v27 - v19;
  MEMORY[0x28223BE20](v18);
  v28 = &v27 - v21;
  sub_2283910C0();
  sub_2282A39F0(v17);
  v22 = v1[2];
  v22(v14, v20, v0);
  v22(v8, v20, v0);
  v22(v5, v17, v0);
  v27 = MEMORY[0x277D11768];
  sub_2282ABCB0(&qword_27D824820, MEMORY[0x277D11768]);
  sub_228392FD0();
  v23 = v28;
  sub_228392FB0();
  v24 = v1[1];
  v24(v11, v0);
  v24(v17, v0);
  v24(v20, v0);
  sub_228393020();
  sub_2282ABCB0(&qword_280DDBD08, v27);
  v25 = sub_228391FB0();
  v24(v20, v0);
  v24(v23, v0);
  return v25 & 1;
}

uint64_t sub_2282A39F0@<X0>(char *a1@<X8>)
{
  v3 = type metadata accessor for WeekdaysAndDosages(0);
  v36 = *(v3 - 8);
  v4 = v36[8];
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_228391130();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v29 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v29 - v16;
  v18 = *(v1 + qword_27D826E20);
  sub_228391870();
  v19 = v38;
  v37 = 0;
  v35 = sub_2282ABCB0(&qword_280DDBD00, MEMORY[0x277D11768]);
  sub_2283935F0();
  v34 = v8[2];
  v34(a1, v17, v7);
  v20 = v19;
  v21 = *(v19 + 16);
  if (v21)
  {
    v29 = v20;
    v30 = v17;
    v22 = *(v3 + 20);
    v23 = v20 + ((*(v36 + 80) + 32) & ~*(v36 + 80));
    v32 = v36[9];
    v33 = v22;
    v36 = (v8 + 1);
    v24 = v15;
    v25 = (v8 + 4);
    v31 = v8 + 2;
    do
    {
      sub_2282AB724(v23, v6, type metadata accessor for WeekdaysAndDosages);
      v26 = MEMORY[0x277D11768];
      sub_2282ABCB0(&qword_27D824818, MEMORY[0x277D11768]);
      sub_228392170();
      sub_2283935F0();
      v34(v12, &v6[v33], v7);
      sub_2282ABCB0(&qword_27D824820, v26);
      sub_228393000();
      sub_2282AB78C(v6, type metadata accessor for WeekdaysAndDosages);
      v27 = *v36;
      (*v36)(a1, v7);
      (*v25)(a1, v24, v7);
      v23 += v32;
      --v21;
    }

    while (v21);

    v17 = v30;
  }

  else
  {

    v27 = v8[1];
  }

  return v27(v17, v7);
}

uint64_t sub_2282A3DAC(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_22838F4A0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + qword_27D826E28) = 0;
  v13 = (v3 + qword_27D826E30);
  v14 = *MEMORY[0x277D12788];
  v33[0] = sub_228392000();
  v33[1] = v15;

  MEMORY[0x22AAB5C80](0xD000000000000017, 0x80000002283AF450);

  v16 = v33[1];
  *v13 = v33[0];
  v13[1] = v16;
  *(v3 + qword_27D826E10) = a1;
  v17 = a1;
  v31 = a2;
  v32 = v17;
  if (a2)
  {
    v18 = a2;
    v19 = sub_2282604EC();
    v21 = v20;
    v23 = v22;
    a2 = v24;
  }

  else
  {
    v19 = 0;
    v21 = 0;
    v23 = 0;
  }

  v25 = (v4 + qword_27D826E18);
  *v25 = v19;
  v25[1] = v21;
  v25[2] = v23;
  v25[3] = a2;
  *(v4 + qword_27D826E20) = a3;
  v33[0] = 0;
  v33[1] = 0xE000000000000000;

  sub_2283931D0();

  strcpy(v33, "MutableArray<");
  HIWORD(v33[1]) = -4864;
  sub_22838F490();
  v26 = sub_22838F450();
  v28 = v27;
  (*(v9 + 8))(v12, v8);
  MEMORY[0x22AAB5C80](v26, v28);

  MEMORY[0x22AAB5C80](62, 0xE100000000000000);
  v29 = sub_22838FF30();

  sub_2282A4028();

  return v29;
}

uint64_t sub_2282A4028()
{
  v1 = v0;
  v5 = *(v0 + qword_27D826E20);
  swift_allocObject();
  swift_weakInit();
  sub_2282ABC18();
  sub_2282ABCB0(&qword_27D826EB0, sub_2282ABC18);

  v2 = sub_228391AC0();

  v3 = *(v1 + qword_27D826E28);
  *(v1 + qword_27D826E28) = v2;
}

uint64_t sub_2282A4130()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2282A4188();
  }

  return result;
}

uint64_t sub_2282A4188()
{
  v1 = v0;
  v211 = sub_228390110();
  v210 = *(v211 - 8);
  v2 = *(v210 + 64);
  MEMORY[0x28223BE20](v211);
  v209 = &v207 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v252 = sub_22838FEF0();
  v253 = *(v252 - 8);
  v4 = *(v253 + 64);
  v5 = MEMORY[0x28223BE20](v252);
  v208 = &v207 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v273 = &v207 - v7;
  v243 = sub_228390460();
  v303 = *(v243 - 8);
  v8 = *(v303 + 64);
  MEMORY[0x28223BE20](v243);
  v242 = &v207 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x277D83D88];
  sub_2282AA2F8(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v241 = &v207 - v13;
  v240 = sub_22838FFC0();
  v304 = *(v240 - 8);
  v14 = *(v304 + 64);
  MEMORY[0x28223BE20](v240);
  v239 = &v207 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v272 = sub_228391590();
  v298 = *(v272 - 8);
  v16 = *(v298 + 64);
  MEMORY[0x28223BE20](v272);
  v271 = &v207 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v270 = sub_228390170();
  v299 = *(v270 - 8);
  v18 = *(v299 + 8);
  v19 = MEMORY[0x28223BE20](v270);
  v269 = &v207 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v268 = &v207 - v21;
  v296 = type metadata accessor for Dosage();
  v213 = *(v296 - 8);
  v22 = *(v213 + 64);
  v23 = MEMORY[0x28223BE20](v296);
  v283 = &v207 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v212 = v24;
  MEMORY[0x28223BE20](v23);
  v301 = &v207 - v25;
  v294 = type metadata accessor for DosageItem(0);
  v26 = *(*(v294 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v294);
  v282 = (&v207 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v27);
  v300 = &v207 - v29;
  v279 = type metadata accessor for DayPickerItem();
  v30 = *(*(v279 - 1) + 64);
  MEMORY[0x28223BE20](v279);
  v250 = &v207 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2282AA2F8(0, &qword_27D826E80, sub_2282AB580, v10);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v32 - 8);
  v249 = &v207 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v248 = (&v207 - v36);
  v284 = sub_22838F4A0();
  v37 = *(v284 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v284);
  v302 = &v207 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v295 = sub_22838F440();
  v292 = *(v295 - 8);
  v40 = *(v292 + 64);
  MEMORY[0x28223BE20](v295);
  v42 = &v207 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v274 = type metadata accessor for WeekdaysAndDosages(0);
  v244 = *(v274 - 8);
  v43 = *(v244 + 64);
  v44 = MEMORY[0x28223BE20](v274);
  v237 = &v207 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x28223BE20](v44);
  v267 = &v207 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v293 = &v207 - v49;
  v238 = v50;
  MEMORY[0x28223BE20](v48);
  v52 = (&v207 - v51);
  v53 = sub_228391130();
  v54 = *(v53 - 8);
  v55 = *(v54 + 64);
  v56 = MEMORY[0x28223BE20](v53);
  v235 = &v207 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = MEMORY[0x28223BE20](v56);
  v234 = &v207 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v233 = &v207 - v61;
  v62 = MEMORY[0x28223BE20](v60);
  v64 = &v207 - v63;
  MEMORY[0x28223BE20](v62);
  v66 = &v207 - v65;
  v275 = sub_2283913A0();
  v297 = *(v275 - 8);
  v67 = *(v297 + 64);
  v68 = MEMORY[0x28223BE20](v275);
  v231 = &v207 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v68);
  v71 = &v207 - v70;
  sub_228391390();
  v230 = sub_22817A958(0, &qword_280DDB990, 0x277D75348);
  sub_228392BD0();
  v251 = v71;
  sub_228391370();
  sub_2282A39F0(v66);
  sub_228391070();
  sub_2282ABCB0(&qword_27D824818, MEMORY[0x277D11768]);
  sub_228392170();
  sub_228392170();
  v72 = *(v54 + 8);
  v266 = v64;
  v72(v64, v53);
  v232 = v66;
  v236 = v53;
  v229 = v54 + 8;
  v228 = v72;
  v72(v66, v53);
  v73 = &unk_27D826000;
  v276 = v0;
  if (v307 == v310)
  {
    v291 = v54;
    v74 = v274;
    sub_2282A8A20(v52 + *(v274 + 20));
    sub_2282AA2F8(0, &qword_27D823E30, type metadata accessor for Dosage, MEMORY[0x277D84560]);
    v75 = *(v213 + 72);
    v76 = (*(v213 + 80) + 32) & ~*(v213 + 80);
    v77 = swift_allocObject();
    *(v77 + 16) = xmmword_228397F40;
    v78 = v77 + v76;
    sub_22838F430();
    v79 = v302;
    sub_22838F490();
    v80 = v284;
    (*(v37 + 32))(v78, v79, v284);
    v81 = v296;
    (*(v292 + 32))(v78 + *(v296 + 20), v42, v295);
    *(v78 + *(v81 + 24)) = 0x3FF0000000000000;
    sub_22838F490();
    v82 = sub_22838F450();
    v84 = v83;
    v296 = v37;
    (*(v37 + 8))(v79, v80);
    *v52 = v82;
    v52[1] = v84;
    *(v52 + *(v74 + 24)) = v77;
    v85 = *(v1 + qword_27D826E20);
    v86 = v293;
    sub_2282AB724(v52, v293, type metadata accessor for WeekdaysAndDosages);
    v87 = sub_228391860();
    v89 = v88;
    v90 = *v88;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v89 = v90;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v90 = sub_2281984B4(0, v90[2] + 1, 1, v90);
      *v89 = v90;
    }

    v93 = v90[2];
    v92 = v90[3];
    v54 = v291;
    if (v93 >= v92 >> 1)
    {
      v90 = sub_2281984B4(v92 > 1, v93 + 1, 1, v90);
      *v89 = v90;
    }

    v90[2] = v93 + 1;
    sub_2282ABD68(v86, v90 + ((*(v244 + 80) + 32) & ~*(v244 + 80)) + *(v244 + 72) * v93, type metadata accessor for WeekdaysAndDosages);
    v87(&v307, 0);
    sub_2282AB78C(v52, type metadata accessor for WeekdaysAndDosages);
    v1 = v276;
    v37 = v296;
    v73 = &unk_27D826000;
  }

  v94 = *(v1 + v73[452]);
  sub_228391870();
  v227 = (v1 + qword_27D826E18);
  v226 = (v1 + qword_27D826E30);
  v225 = (v54 + 16);
  v265 = (v297 + 16);
  v264 = (v297 + 56);
  v311 = 0;
  v312 = 0;
  v224 = qword_27D826E10;
  v223 = 0x80000002283B11C0;
  v281 = (v37 + 16);
  v280 = (v37 + 32);
  v222 = "Could not find dosage for ID:";
  v221 = (v298 + 16);
  v220 = *MEMORY[0x277D10F90];
  v219 = (v304 + 104);
  v218 = *MEMORY[0x277D11140];
  v217 = (v303 + 104);
  v247 = (v297 + 8);
  v216 = (v298 + 8);
  v214 = v299 + 8;
  v246 = v253 + 32;
  v95 = MEMORY[0x277D84F90];
  v245 = xmmword_228397F40;
  v96 = v294;
  v97 = v250;
  v215 = v299 + 16;
  while (1)
  {
    v98 = v249;
    sub_2282A3298(v249);
    v99 = v248;
    sub_2282AB5EC(v98, v248);
    sub_2282AB580();
    v101 = v100;
    if ((*(*(v100 - 8) + 48))(v99, 1, v100) == 1)
    {
      break;
    }

    v263 = v95;
    v278 = *v99;
    v102 = *(v101 + 48);
    v299 = type metadata accessor for WeekdaysAndDosages;
    v103 = v267;
    sub_2282ABD68(v99 + v102, v267, type metadata accessor for WeekdaysAndDosages);
    *&v307 = 0;
    *(&v307 + 1) = 0xE000000000000000;
    sub_2283931D0();

    strcpy(&v307, "DayPickerItem-");
    HIBYTE(v307) = -18;
    MEMORY[0x22AAB5C80](*v103, *(v103 + 1));
    v303 = *(&v307 + 1);
    v304 = v307;
    v104 = *(v274 + 20);
    v105 = *v225;
    v106 = v236;
    (*v225)(v97 + v279[5], &v103[v104], v236);
    v107 = v232;
    sub_2282A39F0(v232);
    v105(v266, v107, v106);
    v108 = v97;
    v105(v234, v107, v106);
    v105(v235, &v103[v104], v106);
    sub_2282ABCB0(&qword_27D824820, MEMORY[0x277D11768]);
    v109 = v233;
    sub_228392FD0();
    v110 = v97 + v279[6];
    sub_228392FB0();
    v111 = v228;
    v228(v109, v106);
    v112 = v107;
    v113 = v276;
    v111(v112, v106);
    v114 = v279[7];
    v115 = v275;
    v259 = *v265;
    v259(v97 + v114, v251, v275);
    v258 = *v264;
    v258(v97 + v114, 0, 1, v115);
    v116 = swift_allocObject();
    swift_weakInit();
    v117 = v103;
    v118 = v237;
    sub_2282AB724(v103, v237, type metadata accessor for WeekdaysAndDosages);
    v119 = (*(v244 + 80) + 32) & ~*(v244 + 80);
    v120 = swift_allocObject();
    v121 = v278;
    *(v120 + 16) = v116;
    *(v120 + 24) = v121;
    v122 = v279;
    sub_2282ABD68(v118, v120 + v119, v299);
    type metadata accessor for DayPickerCollectionViewCell();
    sub_2282ABCB0(&qword_27D826E70, type metadata accessor for DayPickerCollectionViewCell);
    v123 = sub_22838FBB0();
    v124 = v303;
    *v108 = v304;
    v108[1] = v124;
    v125 = (v108 + v122[8]);
    *v125 = sub_2282AB688;
    v125[1] = v120;
    v126 = (v108 + v122[9]);
    *v126 = v123;
    v126[1] = v127;
    v128 = *(v117 + *(v274 + 24));
    v293 = *(v113 + v224);
    v129 = v227[1];
    v292 = *v227;
    v291 = v129;
    v130 = v227[3];
    v290 = v227[2];
    v303 = v130;
    v131 = swift_allocObject();
    swift_weakInit();
    v132 = swift_allocObject();
    *(v132 + 16) = v131;
    *(v132 + 24) = v121;
    v133 = v121;
    v134 = swift_allocObject();
    *(v134 + 16) = v113;
    *(v134 + 24) = v121;
    v297 = v134;
    v135 = swift_allocObject();
    swift_weakInit();
    v136 = swift_allocObject();
    *(v136 + 16) = v135;
    *(v136 + 24) = v121;
    v296 = v136;
    v137 = swift_allocObject();
    swift_weakInit();
    v138 = swift_allocObject();
    *(v138 + 16) = v137;
    *(v138 + 24) = v121;
    v295 = v138;
    v140 = *v226;
    v139 = v226[1];
    *&v307 = 0;
    *(&v307 + 1) = 0xE000000000000000;
    v262 = v131;

    v261 = v135;

    v260 = v137;

    v257 = v139;

    sub_2283931D0();

    *&v307 = 0xD000000000000011;
    *(&v307 + 1) = v223;
    v305 = v133;
    v141 = sub_228393420();
    MEMORY[0x22AAB5C80](v141);

    v256 = *(&v307 + 1);
    v254 = v307;
    v142 = *(v128 + 16);
    v277 = v132;
    v255 = v140;
    if (v142)
    {
      v305 = MEMORY[0x277D84F90];
      sub_2281C9DB4(0, v142, 0);
      v289 = type metadata accessor for DosageCollectionViewCell(0);
      v143 = v305;
      v288 = *(v213 + 80);
      v144 = (v288 + 32) & ~v288;
      v145 = v128 + v144;
      v286 = *(v213 + 72);
      v287 = v144;
      v285 = v144 + v212;
      do
      {
        v298 = v145;
        v299 = v142;
        v304 = v143;
        v146 = v301;
        sub_2282AB724(v145, v301, type metadata accessor for Dosage);
        v147 = v284;
        (*v281)(v302, v146, v284);
        v148 = v283;
        sub_2282AB724(v146, v283, type metadata accessor for Dosage);
        v149 = swift_allocObject();
        *(v149 + 16) = sub_2282A6D34;
        *(v149 + 24) = 0;
        sub_2282ABD68(v148, v149 + v287, type metadata accessor for Dosage);
        sub_2282ABCB0(&qword_27D8261F8, type metadata accessor for DosageCollectionViewCell);
        v150 = sub_22838FBB0();
        v151 = v282;
        *v282 = v150;
        v151[1] = v152;
        v151[2] = 0;
        v151[3] = 0xE000000000000000;
        v151[4] = 0;
        v151[5] = 0;
        v153 = (v151 + v96[11]);
        v154 = (v151 + v96[12]);
        v155 = (v151 + v96[13]);
        v156 = (v151 + v96[14]);
        (*v280)(v151 + v96[7], v302, v147);
        *(v151 + v96[8]) = 1;
        v157 = v293;
        *(v151 + v96[9]) = v293;
        v158 = (v151 + v96[10]);
        v159 = v292;
        v160 = v291;
        *v158 = v292;
        v158[1] = v160;
        v161 = v303;
        v158[2] = v290;
        v158[3] = v161;
        *v153 = sub_22826779C;
        v153[1] = v149;
        v163 = v296;
        v162 = v297;
        *v154 = sub_2282AB704;
        v154[1] = v162;
        *v156 = sub_2282AB70C;
        v156[1] = v163;
        *v155 = sub_2282AB714;
        v155[1] = v295;
        v143 = v304;
        sub_2282AB724(v151, v300, type metadata accessor for DosageItem);
        v164 = v157;
        sub_228267888(v159, v160);

        sub_2282AB78C(v301, type metadata accessor for Dosage);
        sub_2282AB78C(v151, type metadata accessor for DosageItem);
        v305 = v143;
        v166 = *(v143 + 16);
        v165 = *(v143 + 24);
        v167 = v300;
        if (v166 >= v165 >> 1)
        {
          sub_2281C9DB4((v165 > 1), v166 + 1, 1);
          v143 = v305;
        }

        v96 = v294;
        v308 = v294;
        v309 = sub_2282ABCB0(&qword_27D826210, type metadata accessor for DosageItem);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v307);
        sub_2282AB724(v167, boxed_opaque_existential_1, type metadata accessor for DosageItem);
        *(v143 + 16) = v166 + 1;
        sub_22816DFFC(&v307, v143 + 40 * v166 + 32);
        sub_2282AB78C(v167, type metadata accessor for DosageItem);
        v145 = v298 + v286;
        v142 = (v299 - 1);
      }

      while (v299 != 1);
      v304 = v143;
      v132 = v277;
    }

    else
    {
      v304 = MEMORY[0x277D84F90];
    }

    v169 = v271;
    sub_228391520();
    v170 = sub_228391FC0();
    v171 = [objc_opt_self() systemImageNamed_];

    sub_228391550();
    v172 = objc_opt_self();
    v173 = [v172 systemGreenColor];
    v174 = sub_228391480();
    sub_228391470();
    v174(&v307, 0);
    if (qword_280DDCF18 != -1)
    {
      swift_once();
    }

    sub_22838F0C0();
    sub_228391540();
    v175 = [v172 systemBlueColor];
    v176 = sub_228391450();
    sub_228391420();
    v176(&v307, 0);
    v177 = v231;
    sub_228391390();
    sub_228392BD0();
    sub_228391370();
    v178 = v272;
    v308 = v272;
    v309 = MEMORY[0x277D74C30];
    v179 = __swift_allocate_boxed_opaque_existential_1(&v307);
    (*v221)(v179, v169, v178);
    v180 = swift_allocObject();
    *(v180 + 16) = sub_2282AB6FC;
    *(v180 + 24) = v132;
    v181 = v239;
    *v239 = 1;
    (*v219)(v181, v220, v240);
    v182 = v241;
    v183 = v275;
    v259(v241, v177, v275);
    v258(v182, 0, 1, v183);
    v305 = v255;
    v306 = v257;

    MEMORY[0x22AAB5C80](0x656D69546464412ELL, 0xEC0000006C6C6543);
    (*v217)(v242, v218, v243);
    v184 = v268;
    sub_228390160();
    (*v247)(v177, v183);
    (*v216)(v271, v272);

    v185 = *v215;
    (*v215)(v269, v184, v270);
    v186 = v304;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v186 = sub_228198710(0, v186[2] + 1, 1, v186);
    }

    v188 = v186[2];
    v187 = v186[3];
    v96 = v294;
    if (v188 >= v187 >> 1)
    {
      v186 = sub_228198710((v187 > 1), v188 + 1, 1, v186);
    }

    v189 = *v214;
    v190 = v270;
    (*v214)(v268, v270);
    v308 = v190;
    v309 = sub_2282ABCB0(&qword_27D824520, MEMORY[0x277D11000]);
    v191 = __swift_allocate_boxed_opaque_existential_1(&v307);
    v192 = v269;
    v185(v191, v269, v190);
    v186[2] = v188 + 1;
    sub_22816DFFC(&v307, &v186[5 * v188 + 4]);
    v189(v192, v190);

    sub_2282AA2F8(0, &qword_27D823918, sub_228182780, MEMORY[0x277D84560]);
    v193 = swift_allocObject();
    *(v193 + 16) = v245;
    *(v193 + 56) = v279;
    *(v193 + 64) = sub_2282ABCB0(&qword_27D826E98, type metadata accessor for DayPickerItem);
    v194 = __swift_allocate_boxed_opaque_existential_1((v193 + 32));
    v97 = v250;
    sub_2282AB724(v250, v194, type metadata accessor for DayPickerItem);
    v195 = sub_228194894(v186);

    *&v307 = v193;
    sub_2281D55FC(v195);
    *&v307 = v278;
    sub_228393420();
    sub_22838FED0();
    v95 = v263;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v95 = sub_228198AA0(0, v95[2] + 1, 1, v95);
    }

    v197 = v95[2];
    v196 = v95[3];
    if (v197 >= v196 >> 1)
    {
      v95 = sub_228198AA0(v196 > 1, v197 + 1, 1, v95);
    }

    sub_2282AB78C(v97, type metadata accessor for DayPickerItem);
    v95[2] = v197 + 1;
    (*(v253 + 32))(v95 + ((*(v253 + 80) + 32) & ~*(v253 + 80)) + *(v253 + 72) * v197, v273, v252);
    sub_2282AB78C(v267, type metadata accessor for WeekdaysAndDosages);
  }

  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  sub_2282A36E4();
  swift_allocObject();
  swift_weakInit();
  type metadata accessor for ButtonBackgroundColorCell(0);

  sub_22838FBB0();
  v198 = v209;
  sub_228390100();

  sub_2282AA2F8(0, &qword_27D823918, sub_228182780, MEMORY[0x277D84560]);
  v199 = swift_allocObject();
  *(v199 + 16) = v245;
  v200 = v211;
  *(v199 + 56) = v211;
  *(v199 + 64) = sub_2282ABCB0(&qword_27D826E90, MEMORY[0x277D10FC0]);
  v201 = __swift_allocate_boxed_opaque_existential_1((v199 + 32));
  v202 = v210;
  (*(v210 + 16))(v201, v198, v200);
  v203 = v208;
  sub_22838FED0();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v95 = sub_228198AA0(0, v95[2] + 1, 1, v95);
  }

  v205 = v95[2];
  v204 = v95[3];
  if (v205 >= v204 >> 1)
  {
    v95 = sub_228198AA0(v204 > 1, v205 + 1, 1, v95);
  }

  v95[2] = v205 + 1;
  (*(v253 + 32))(v95 + ((*(v253 + 80) + 32) & ~*(v253 + 80)) + *(v253 + 72) * v205, v203, v252);
  sub_22838FF50();

  (*(v202 + 8))(v198, v200);
  return (*v247)(v251, v275);
}