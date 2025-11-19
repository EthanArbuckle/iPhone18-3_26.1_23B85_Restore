uint64_t sub_21C53ECA4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21C53ECE4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21C53ED1C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_21C53EF18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD520, &qword_21C55E248);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C53EF80(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD538, &qword_21C55E258);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_21C53F03C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD538, &qword_21C55E258);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21C53F0EC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDDD520, &qword_21C55E248);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDDD490, &qword_21C55DF40);
  sub_21C54E2B0();
  sub_21C54E5C0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C53F17C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD540, &qword_21C55E260);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C53F204@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_21C55C694();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21C53F284@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21C55C764();
  *a1 = result & 1;
  return result;
}

uint64_t sub_21C53F310(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_21C551254(v4);
}

uint64_t sub_21C53F37C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_21C550F98(v4);
}

uint64_t sub_21C53F3A8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21C53F3E0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_21C53F430()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C53F4B8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDDD720, &qword_21C55E5D8);
  sub_21C54EDD8(&qword_27CDDD780, &qword_27CDDD720, &qword_21C55E5D8);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C53F564()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C53F59C()
{
  swift_getKeyPath();
  v4 = v0;
  sub_21C541604(&unk_27CDDD860, type metadata accessor for AppRecord);
  sub_21C55C604();

  v2 = *(v0 + 16);
  v1 = *(v4 + 24);

  return v2;
}

uint64_t sub_21C53F64C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C541604(&unk_27CDDD860, type metadata accessor for AppRecord);
  sub_21C55C604();

  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_21C53F6F8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_21C53F738(v2, v3);
}

uint64_t sub_21C53F738(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);
  if (v5)
  {
    if (a2)
    {
      if (*(v2 + 16) == a1 && v5 == a2)
      {
        goto LABEL_8;
      }

      v7 = *(v2 + 24);
      if (sub_21C55CE44())
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_21C541604(&unk_27CDDD860, type metadata accessor for AppRecord);
    sub_21C55C5F4();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_21C53F8A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 24);
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
}

uint64_t sub_21C53F8E4()
{
  swift_getKeyPath();
  v4 = v0;
  sub_21C541604(&unk_27CDDD860, type metadata accessor for AppRecord);
  sub_21C55C604();

  v2 = *(v0 + 32);
  v1 = *(v4 + 40);

  return v2;
}

uint64_t sub_21C53F994@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C541604(&unk_27CDDD860, type metadata accessor for AppRecord);
  sub_21C55C604();

  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
}

uint64_t sub_21C53FA58(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32) == a1 && *(v2 + 40) == a2;
  if (v5 || (v6 = *(v2 + 40), (sub_21C55CE44() & 1) != 0))
  {
    *(v2 + 32) = a1;
    *(v2 + 40) = a2;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_21C541604(&unk_27CDDD860, type metadata accessor for AppRecord);
    sub_21C55C5F4();
  }
}

uint64_t sub_21C53FBB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  *(a1 + 32) = a2;
  *(a1 + 40) = a3;
}

uint64_t sub_21C53FBF4()
{
  swift_getKeyPath();
  v4 = v0;
  sub_21C541604(&unk_27CDDD860, type metadata accessor for AppRecord);
  sub_21C55C604();

  v2 = *(v0 + 48);
  v1 = *(v4 + 56);

  return v2;
}

uint64_t sub_21C53FCA4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C541604(&unk_27CDDD860, type metadata accessor for AppRecord);
  sub_21C55C604();

  v4 = *(v3 + 56);
  *a2 = *(v3 + 48);
  a2[1] = v4;
}

uint64_t sub_21C53FD68(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  return a5(v7, v6);
}

uint64_t sub_21C53FDB0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48) == a1 && *(v2 + 56) == a2;
  if (v5 || (v6 = *(v2 + 56), (sub_21C55CE44() & 1) != 0))
  {
    *(v2 + 48) = a1;
    *(v2 + 56) = a2;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_21C541604(&unk_27CDDD860, type metadata accessor for AppRecord);
    sub_21C55C5F4();
  }
}

uint64_t sub_21C53FF10()
{
  v1 = v0;
  swift_getKeyPath();
  sub_21C541604(&unk_27CDDD860, type metadata accessor for AppRecord);
  sub_21C55C604();

  v2 = *(v0 + 64);
  if (v2 && (v2 = [v2 bundleIdentifier]) != 0)
  {
    v3 = v2;
    v4 = sub_21C55CAC4();
    v6 = v5;

    v7 = v6;
    v2 = v4;
  }

  else
  {
    v7 = 0;
  }

  sub_21C53F738(v2, v7);
  swift_getKeyPath();
  sub_21C55C604();

  v8 = *(v1 + 64);
  if (v8)
  {
    v9 = [v8 localizedName];
    v10 = sub_21C55CAC4();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0xE000000000000000;
  }

  return sub_21C53FA58(v10, v12);
}

void *sub_21C540080()
{
  swift_getKeyPath();
  sub_21C541604(&unk_27CDDD860, type metadata accessor for AppRecord);
  sub_21C55C604();

  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

id sub_21C540128@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C541604(&unk_27CDDD860, type metadata accessor for AppRecord);
  sub_21C55C604();

  v4 = *(v3 + 64);
  *a2 = v4;

  return v4;
}

void sub_21C5401E0(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_21C540210(v2);
}

void sub_21C540210(void *a1)
{
  v3 = *(v1 + 64);
  if (!v3)
  {
    if (!a1)
    {
      v7 = 0;
      v5 = 0;
      goto LABEL_8;
    }

LABEL_6:
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_21C541604(&unk_27CDDD860, type metadata accessor for AppRecord);
    sub_21C55C5F4();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_21C541784();
  v4 = v3;
  v5 = a1;
  v6 = sub_21C55CD14();

  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

  v7 = *(v1 + 64);
LABEL_8:
  *(v1 + 64) = a1;
  v8 = v5;

  sub_21C53FF10();
}

uint64_t sub_21C5403B0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 64);
  *(a1 + 64) = a2;
  v3 = a2;

  return sub_21C53FF10();
}

uint64_t sub_21C5403F4(void *a1)
{
  v2 = v1;
  v4 = sub_21C55C5B4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0xE000000000000000;
  sub_21C55C5A4();
  v9 = sub_21C55C584();
  v11 = v10;
  (*(v5 + 8))(v8, v4);
  *(v2 + 48) = v9;
  *(v2 + 56) = v11;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  *(v2 + 80) = 3;
  sub_21C55C634();
  sub_21C540210(a1);
  return v2;
}

uint64_t sub_21C540514(uint64_t result)
{
  v2 = result;
  v3 = *(v1 + 80);
  if (v3 == 3)
  {
    if (result == 3)
    {
      goto LABEL_27;
    }

LABEL_5:
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_21C541604(&unk_27CDDD860, type metadata accessor for AppRecord);
    sub_21C55C5F4();
  }

  if (result == 3)
  {
    goto LABEL_5;
  }

  v4 = &unk_21C55E9E0;
  v5 = 0xD000000000000016;
  if (v3 == 1)
  {
    v5 = 0xD000000000000010;
    v6 = "RelayCallingNotApplicable";
  }

  else
  {
    v6 = "RelayCallingNone";
  }

  if (*(v1 + 80))
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000019;
  }

  if (*(v1 + 80))
  {
    v8 = v6;
  }

  else
  {
    v8 = &unk_21C55E9E0;
  }

  if (v2)
  {
    if (v2 == 1)
    {
      v9 = 0xD000000000000010;
    }

    else
    {
      v9 = 0xD000000000000016;
    }

    if (v2 == 1)
    {
      v4 = "RelayCallingNotApplicable";
    }

    else
    {
      v4 = "RelayCallingNone";
    }
  }

  else
  {
    v9 = 0xD000000000000019;
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v4 | 0x8000000000000000))
  {
  }

  else
  {
    v10 = sub_21C55CE44();

    if ((v10 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

LABEL_27:
  *(v1 + 80) = v2;
  return result;
}

uint64_t sub_21C540700()
{
  swift_getKeyPath();
  sub_21C541604(&unk_27CDDD860, type metadata accessor for AppRecord);
  sub_21C55C604();

  return *(v0 + 80);
}

uint64_t sub_21C5407A0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21C55C5B4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0xE000000000000000;
  sub_21C55C5A4();
  v9 = sub_21C55C584();
  v11 = v10;
  (*(v5 + 8))(v8, v4);
  *(v2 + 48) = v9;
  *(v2 + 56) = v11;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  *(v2 + 80) = 3;
  sub_21C55C634();
  if (a1)
  {
    v12 = sub_21C55CE44();

    if (v12)
    {

      return 0;
    }

    else
    {
      sub_21C540514(a1);
      v13 = sub_21C55BF98();
      sub_21C53FA58(v13, v14);
      if (a1 == 2)
      {
        v15 = "RelayCallingNone";
      }

      else
      {
        v15 = "RelayCallingNotApplicable";
      }

      if (a1 == 2)
      {
        v16 = 0xD000000000000016;
      }

      else
      {
        v16 = 0xD000000000000010;
      }

      sub_21C53FDB0(v16, v15 | 0x8000000000000000);
    }
  }

  else
  {

    return 0;
  }

  return v2;
}

uint64_t AppRecord.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = OBJC_IVAR____TtC21DefaultAppsSettingsUI9AppRecord___observationRegistrar;
  v5 = sub_21C55C644();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t AppRecord.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = OBJC_IVAR____TtC21DefaultAppsSettingsUI9AppRecord___observationRegistrar;
  v5 = sub_21C55C644();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v6, v7);
}

uint64_t AppRecord.id.getter()
{
  v1 = v0;
  swift_getKeyPath();
  sub_21C541604(&unk_27CDDD860, type metadata accessor for AppRecord);
  sub_21C55C604();

  if (v0[3])
  {
    v2 = v0[2];
    v3 = v1[3];
  }

  else
  {
    swift_getKeyPath();
    sub_21C55C604();

    v2 = v0[6];
    v4 = v1[7];
  }

  return v2;
}

uint64_t type metadata accessor for AppRecord()
{
  result = qword_27CDDD3E8;
  if (!qword_27CDDD3E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21C540C24@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = AppRecord.id.getter();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t AppRecord.hash(into:)()
{
  v1 = v0;
  swift_getKeyPath();
  sub_21C541604(&unk_27CDDD860, type metadata accessor for AppRecord);
  sub_21C55C604();

  if (v0[3])
  {
    v2 = v0[2];
    v3 = v1[3];
  }

  else
  {
    swift_getKeyPath();
    sub_21C55C604();

    v4 = v0[6];
    v5 = v1[7];
  }

  sub_21C55CBC4();
}

uint64_t AppRecord.hashValue.getter()
{
  sub_21C55CE64();
  AppRecord.hash(into:)();
  return sub_21C55CE84();
}

uint64_t sub_21C540DBC()
{
  v1 = *v0;
  sub_21C55CE64();
  AppRecord.hash(into:)();
  return sub_21C55CE84();
}

uint64_t sub_21C540E24()
{
  v1 = *v0;
  sub_21C55CE64();
  AppRecord.hash(into:)();
  return sub_21C55CE84();
}

uint64_t sub_21C540E6C(uint64_t a1, id *a2)
{
  result = sub_21C55CAA4();
  *a2 = 0;
  return result;
}

uint64_t sub_21C540EE4(uint64_t a1, id *a2)
{
  v3 = sub_21C55CAB4();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_21C540F64@<X0>(uint64_t *a1@<X8>)
{
  sub_21C55CAC4();
  v2 = sub_21C55CA94();

  *a1 = v2;
  return result;
}

void *sub_21C540FA8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_21C540FB8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_21C55CA94();

  *a2 = v5;
  return result;
}

uint64_t sub_21C541000@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_21C55CAC4();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_21C54102C(uint64_t a1)
{
  v2 = sub_21C541604(&qword_27CDDD428, type metadata accessor for URLResourceKey);
  v3 = sub_21C541604(&qword_27CDDD430, type metadata accessor for URLResourceKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_21C5410E8()
{
  v1 = *v0;
  v2 = sub_21C55CAC4();
  v3 = MEMORY[0x21CF0B420](v2);

  return v3;
}

uint64_t sub_21C541124()
{
  v1 = *v0;
  sub_21C55CAC4();
  sub_21C55CBC4();
}

uint64_t sub_21C541178()
{
  v1 = *v0;
  sub_21C55CAC4();
  sub_21C55CE64();
  sub_21C55CBC4();
  v2 = sub_21C55CE84();

  return v2;
}

uint64_t sub_21C5411EC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_21C55CAC4();
  v6 = v5;
  if (v4 == sub_21C55CAC4() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_21C55CE44();
  }

  return v9 & 1;
}

uint64_t _s21DefaultAppsSettingsUI9AppRecordC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_21C541604(&unk_27CDDD860, type metadata accessor for AppRecord);
  sub_21C55C604();

  if (*(a1 + 80) != 3)
  {
    swift_getKeyPath();
    sub_21C55C604();

    if (*(a2 + 80) != 3)
    {
      swift_getKeyPath();
      sub_21C55C604();

      v8 = *(a1 + 80);
      swift_getKeyPath();
      sub_21C55C604();

      v9 = *(a2 + 80);
      v7 = v9 == 3 && v8 == 3;
      if (v8 == 3 || v9 == 3)
      {
        return v7 & 1;
      }

      v10 = 0xD000000000000010;
      v11 = &unk_21C55E9E0;
      if (v8)
      {
        if (v8 == 1)
        {
          v12 = 0xD000000000000010;
          v13 = 0x800000021C55EA00;
          if (!v9)
          {
            goto LABEL_23;
          }

LABEL_20:
          if (v9 == 1)
          {
            v11 = "RelayCallingNotApplicable";
          }

          else
          {
            v11 = "RelayCallingNone";
            v10 = 0xD000000000000016;
          }

LABEL_25:
          if (v12 == v10 && v13 == (v11 | 0x8000000000000000))
          {

            v7 = 1;
          }

          else
          {
            v7 = sub_21C55CE44();
          }

          goto LABEL_29;
        }

        v12 = 0xD000000000000016;
        v13 = 0x800000021C55EA20;
        if (v9)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v12 = 0xD000000000000019;
        v13 = 0x800000021C55E9E0;
        if (v9)
        {
          goto LABEL_20;
        }
      }

LABEL_23:
      v10 = 0xD000000000000019;
      goto LABEL_25;
    }
  }

  swift_getKeyPath();
  sub_21C55C604();

  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  swift_getKeyPath();

  sub_21C55C604();

  v6 = *(a2 + 24);
  v7 = v6 == 0;
  if (v4)
  {
    if (v6)
    {
      if (v5 == *(a2 + 16) && v4 == v6)
      {
        v7 = 1;
      }

      else
      {
        v7 = sub_21C55CE44();
      }
    }

    else
    {
      v7 = 0;
    }

LABEL_29:
  }

  return v7 & 1;
}

uint64_t sub_21C541604(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21C541654()
{
  result = sub_21C55C644();
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

uint64_t sub_21C54173C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + 64);
  *(v2 + 64) = v1;
  v4 = v1;

  return sub_21C53FF10();
}

unint64_t sub_21C541784()
{
  result = qword_27CDDD8A0;
  if (!qword_27CDDD8A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CDDD8A0);
  }

  return result;
}

uint64_t sub_21C5417D0()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = *(v1 + 40);
  *(v1 + 32) = v0[3];
  *(v1 + 40) = v2;
}

uint64_t sub_21C541810()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = *(v1 + 24);
  *(v1 + 16) = v0[3];
  *(v1 + 24) = v2;
}

uint64_t sub_21C541860()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = *(v1 + 56);
  *(v1 + 48) = v0[3];
  *(v1 + 56) = v2;
}

uint64_t sub_21C5418C4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21C5418E4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

void sub_21C541920(uint64_t a1, unint64_t *a2)
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

id sub_21C541A4C()
{
  type metadata accessor for DefaultAppsSettingsModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27CDDE790 = result;
  return result;
}

void *static DefaultAppsPerAppSettings.orderedProviders(for:)(uint64_t a1, uint64_t a2)
{
  if (qword_27CDDD3A8 != -1)
  {
    v3 = a1;
    v4 = a2;
    swift_once();
    a1 = v3;
    a2 = v4;
  }

  return sub_21C544484(a1, a2);
}

uint64_t sub_21C541B98()
{
  swift_getKeyPath();
  sub_21C543E40(&qword_27CDDD470, type metadata accessor for DefaultAppsSettingsGroup);
  sub_21C55C604();

  return *(v0 + OBJC_IVAR____TtC21DefaultAppsSettingsUI24DefaultAppsSettingsGroup__isVisible);
}

uint64_t sub_21C541C40@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C543E40(&qword_27CDDD470, type metadata accessor for DefaultAppsSettingsGroup);
  sub_21C55C604();

  *a2 = *(v3 + OBJC_IVAR____TtC21DefaultAppsSettingsUI24DefaultAppsSettingsGroup__isVisible);
  return result;
}

uint64_t sub_21C541D18(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC21DefaultAppsSettingsUI24DefaultAppsSettingsGroup__isVisible) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC21DefaultAppsSettingsUI24DefaultAppsSettingsGroup__isVisible) = result & 1;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_21C543E40(&qword_27CDDD470, type metadata accessor for DefaultAppsSettingsGroup);
    sub_21C55C5F4();
  }

  return result;
}

uint64_t sub_21C541E44(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_21C543E40(&qword_27CDDD470, type metadata accessor for DefaultAppsSettingsGroup);
  sub_21C55C604();

  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
}

uint64_t sub_21C541EFC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C543E40(&qword_27CDDD470, type metadata accessor for DefaultAppsSettingsGroup);
  sub_21C55C604();

  v4 = OBJC_IVAR____TtC21DefaultAppsSettingsUI24DefaultAppsSettingsGroup__idToProvider;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_21C541FC4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_21C543E40(&qword_27CDDD470, type metadata accessor for DefaultAppsSettingsGroup);
  sub_21C55C5F4();
}

uint64_t sub_21C542090(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  swift_beginAccess();
  v6 = *(a1 + v5);
  *(a1 + v5) = a2;
}

uint64_t sub_21C5420FC(uint64_t a1)
{
  v2 = v1;
  sub_21C55C5A4();
  *(v2 + OBJC_IVAR____TtC21DefaultAppsSettingsUI24DefaultAppsSettingsGroup__isVisible) = 0;
  v4 = 0x27CDDD000uLL;
  *(v2 + OBJC_IVAR____TtC21DefaultAppsSettingsUI24DefaultAppsSettingsGroup__idToProvider) = sub_21C55BBCC(MEMORY[0x277D84F90]);
  v5 = 0x27CDDD000uLL;
  sub_21C55C634();
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = MEMORY[0x277D84F90];
    v8 = a1 + 32;
    do
    {
      sub_21C543D24(v8, &v62);
      v57 = v62;
      v58 = v63;
      v59 = v64;
      if (*(&v63 + 1))
      {
        sub_21C543DDC(&v57, &v60);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_21C54A5C8(0, v7[2] + 1, 1, v7);
        }

        v10 = v7[2];
        v9 = v7[3];
        if (v10 >= v9 >> 1)
        {
          v7 = sub_21C54A5C8((v9 > 1), v10 + 1, 1, v7);
        }

        v7[2] = v10 + 1;
        sub_21C543DDC(&v60, &v7[5 * v10 + 4]);
      }

      else
      {
        sub_21C544404(&v57, &unk_27CDDDA40, &qword_21C55DD60);
      }

      v8 += 40;
      --v6;
    }

    while (v6);

    v4 = 0x27CDDD000;
    v5 = 0x27CDDD000;
  }

  else
  {

    v7 = MEMORY[0x277D84F90];
  }

  v11 = OBJC_IVAR____TtC21DefaultAppsSettingsUI24DefaultAppsSettingsGroup__providers;
  *(v2 + OBJC_IVAR____TtC21DefaultAppsSettingsUI24DefaultAppsSettingsGroup__providers) = v7;
  swift_getKeyPath();
  v12 = *(v5 + 1104);
  *&v62 = v2;
  sub_21C543E40(&qword_27CDDD470, type metadata accessor for DefaultAppsSettingsGroup);
  v13 = v12;
  sub_21C55C604();

  swift_beginAccess();
  v14 = *(v2 + v11);
  v56 = *(v14 + 16);
  if (!v56)
  {
LABEL_40:
    sub_21C542854();
    return v2;
  }

  sub_21C55CCA4();
  v55 = *(v4 + 1096);
  v15 = v14 + 32;

  v16 = 0;
  v54 = v14;
  while (v16 < *(v14 + 16))
  {
    sub_21C543EA8(v15, &v62);
    sub_21C55CC94();
    sub_21C55CC54();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    __swift_project_boxed_opaque_existential_1(&v62, *(&v63 + 1));
    v23 = sub_21C55C694();
    v25 = v24;
    sub_21C543EA8(&v62, &v60);
    swift_getKeyPath();
    *&v57 = v2;
    sub_21C55C604();

    *&v57 = v2;
    v20 = v13;
    swift_getKeyPath();
    sub_21C55C624();

    swift_beginAccess();
    if (!v61)
    {
      sub_21C544404(&v60, &unk_27CDDDA40, &qword_21C55DD60);
      v41 = *(v2 + v55);
      v42 = sub_21C559DE8(v23, v25);
      if (v43)
      {
        v44 = v42;
        v45 = *(v2 + v55);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v47 = *(v2 + v55);
        *(v2 + v55) = 0x8000000000000000;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21C55B1CC();
        }

        v48 = *(*(v47 + 48) + 16 * v44 + 8);

        sub_21C543DDC((*(v47 + 56) + 40 * v44), &v57);
        sub_21C55A824(v44, v47);
        *(v2 + v55) = v47;
      }

      else
      {
        v59 = 0;
        v57 = 0u;
        v58 = 0u;
      }

      sub_21C544404(&v57, &unk_27CDDDA40, &qword_21C55DD60);
      v14 = v54;
      goto LABEL_17;
    }

    v26 = v13;
    sub_21C543DDC(&v60, &v57);
    v27 = *(v2 + v55);
    v28 = swift_isUniquelyReferenced_nonNull_native();
    v29 = *(v2 + v55);
    *(v2 + v55) = 0x8000000000000000;
    v30 = v23;
    v31 = v23;
    v32 = v25;
    v34 = sub_21C559DE8(v31, v25);
    v35 = v29[2];
    v36 = (v33 & 1) == 0;
    v37 = v35 + v36;
    if (__OFADD__(v35, v36))
    {
      goto LABEL_42;
    }

    v38 = v33;
    if (v29[3] >= v37)
    {
      if (v28)
      {
        if ((v33 & 1) == 0)
        {
          goto LABEL_33;
        }
      }

      else
      {
        sub_21C55B1CC();
        if ((v38 & 1) == 0)
        {
          goto LABEL_33;
        }
      }
    }

    else
    {
      sub_21C55A114(v37, v28);
      v39 = sub_21C559DE8(v30, v32);
      if ((v38 & 1) != (v40 & 1))
      {
        goto LABEL_44;
      }

      v34 = v39;
      if ((v38 & 1) == 0)
      {
LABEL_33:
        v17 = v29;
        v29[(v34 >> 6) + 8] |= 1 << v34;
        v49 = (v29[6] + 16 * v34);
        *v49 = v30;
        v49[1] = v32;
        sub_21C543DDC(&v57, v29[7] + 40 * v34);
        v50 = v29[2];
        v51 = __OFADD__(v50, 1);
        v52 = v50 + 1;
        if (v51)
        {
          goto LABEL_43;
        }

        v29[2] = v52;
        goto LABEL_16;
      }
    }

    v17 = v29;
    v18 = (v29[7] + 40 * v34);
    __swift_destroy_boxed_opaque_existential_1(v18);
    sub_21C543DDC(&v57, v18);
LABEL_16:
    v19 = *(v2 + v55);
    *(v2 + v55) = v17;

    v20 = v26;
    v14 = v54;
LABEL_17:
    ++v16;
    swift_endAccess();
    *&v57 = v2;
    swift_getKeyPath();
    v13 = v20;
    sub_21C55C614();

    __swift_project_boxed_opaque_existential_1(&v62, *(&v63 + 1));
    v21 = sub_21C55C694();
    v22 = MEMORY[0x28223BE20](v21);
    MEMORY[0x28223BE20](v22);
    sub_21C55C5E4();

    __swift_destroy_boxed_opaque_existential_1(&v62);
    v15 += 40;
    if (v56 == v16)
    {

      goto LABEL_40;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  result = sub_21C55CE54();
  __break(1u);
  return result;
}

uint64_t sub_21C542854()
{
  v1 = v0;
  swift_getKeyPath();
  v12[0] = v0;
  sub_21C543E40(&qword_27CDDD470, type metadata accessor for DefaultAppsSettingsGroup);
  sub_21C55C604();

  v2 = OBJC_IVAR____TtC21DefaultAppsSettingsUI24DefaultAppsSettingsGroup__providers;
  swift_beginAccess();
  v3 = *(v12[0] + v2);
  v4 = *(v3 + 16);

  result = v3 + 32;
  v6 = -v4;
  v7 = -1;
  do
  {
    v8 = v6 + v7;
    if (v6 + v7 == -1)
    {
      break;
    }

    if (++v7 >= *(v3 + 16))
    {
      __break(1u);
      return result;
    }

    v9 = result + 40;
    sub_21C543EA8(result, v12);
    __swift_project_boxed_opaque_existential_1(v12, v12[3]);
    v10 = sub_21C55C6C4();
    __swift_destroy_boxed_opaque_existential_1(v12);
    result = v9;
  }

  while ((v10 & 1) == 0);

  if (((v8 != -1) ^ *(v1 + OBJC_IVAR____TtC21DefaultAppsSettingsUI24DefaultAppsSettingsGroup__isVisible)))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v12[0] = v1;
    sub_21C55C5F4();
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC21DefaultAppsSettingsUI24DefaultAppsSettingsGroup__isVisible) = v8 != -1;
  }

  return result;
}

uint64_t sub_21C542A6C(void *a1)
{
  sub_21C55CCA4();
  sub_21C55CC94();
  sub_21C55CC54();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21C55C6C4();
}

uint64_t (*sub_21C542B2C(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;

  return sub_21C5440FC;
}

uint64_t sub_21C542BA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD478, &qword_21C55DDE0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = sub_21C55CCC4();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  swift_weakInit();
  sub_21C55CCA4();

  v11 = sub_21C55CC94();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = v10;
  v12[5] = a2;
  v12[6] = a3;

  sub_21C54F0F0(0, 0, v8, &unk_21C55DDF0, v12);
}

uint64_t sub_21C542D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  sub_21C55CCA4();
  v6[11] = sub_21C55CC94();
  v8 = sub_21C55CC54();

  return MEMORY[0x2822009F8](sub_21C542DB4, v8, v7);
}

uint64_t sub_21C542DB4()
{
  v1 = v0[11];
  v2 = v0[8];

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_21C542854();
  }

  v3 = v0[8];
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_21C542E80(v0[9], v0[10]);
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_21C542E80(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  v13[0] = v2;
  sub_21C543E40(&qword_27CDDD470, type metadata accessor for DefaultAppsSettingsGroup);
  sub_21C55C604();

  v5 = OBJC_IVAR____TtC21DefaultAppsSettingsUI24DefaultAppsSettingsGroup__idToProvider;
  result = swift_beginAccess();
  v7 = *(v13[0] + v5);
  if (*(v7 + 16))
  {

    v8 = sub_21C559DE8(a1, a2);
    if (v9)
    {
      sub_21C543EA8(*(v7 + 56) + 40 * v8, v12);

      sub_21C543DDC(v12, v13);
      __swift_project_boxed_opaque_existential_1(v13, v13[3]);
      v10 = sub_21C55C694();
      v11 = MEMORY[0x28223BE20](v10);
      MEMORY[0x28223BE20](v11);
      sub_21C55C5E4();

      return __swift_destroy_boxed_opaque_existential_1(v13);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_21C543064(uint64_t a1)
{
  v2 = v1;
  sub_21C543D24(a1, &v14);
  if (!v15)
  {
    return sub_21C544404(&v14, &unk_27CDDDA40, &qword_21C55DD60);
  }

  sub_21C543DDC(&v14, v16);
  sub_21C543EA8(v16, &v14);
  swift_getKeyPath();
  sub_21C543E40(&qword_27CDDD470, type metadata accessor for DefaultAppsSettingsGroup);
  sub_21C55C604();

  swift_getKeyPath();
  sub_21C55C624();

  v3 = OBJC_IVAR____TtC21DefaultAppsSettingsUI24DefaultAppsSettingsGroup__providers;
  swift_beginAccess();
  v4 = *(v1 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v3) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_21C54A5C8(0, v4[2] + 1, 1, v4);
    *(v2 + v3) = v4;
  }

  v7 = v4[2];
  v6 = v4[3];
  if (v7 >= v6 >> 1)
  {
    v4 = sub_21C54A5C8((v6 > 1), v7 + 1, 1, v4);
  }

  v4[2] = v7 + 1;
  sub_21C543DDC(&v14, &v4[5 * v7 + 4]);
  *(v2 + v3) = v4;
  swift_endAccess();
  swift_getKeyPath();
  sub_21C55C614();

  __swift_project_boxed_opaque_existential_1(v16, v17);
  v8 = sub_21C55C694();
  v10 = v9;
  sub_21C543EA8(v16, &v14);
  swift_getKeyPath();
  sub_21C55C604();

  swift_getKeyPath();
  sub_21C55C624();

  swift_beginAccess();
  sub_21C5599E0(&v14, v8, v10);
  swift_endAccess();
  swift_getKeyPath();
  sub_21C55C614();

  __swift_project_boxed_opaque_existential_1(v16, v17);
  v11 = sub_21C55C694();
  v12 = MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  sub_21C55C5E4();

  sub_21C542854();
  return __swift_destroy_boxed_opaque_existential_1(v16);
}

uint64_t sub_21C54342C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_21C543D24(a1, &v23);
  if (!v24)
  {
    return sub_21C544404(&v23, &unk_27CDDDA40, &qword_21C55DD60);
  }

  sub_21C543DDC(&v23, v25);
  sub_21C543D24(a2, &v21);
  if (v22)
  {
    sub_21C543DDC(&v21, &v23);
    swift_getKeyPath();
    *&v21 = v3;
    sub_21C543E40(&qword_27CDDD470, type metadata accessor for DefaultAppsSettingsGroup);
    sub_21C55C604();

    v5 = OBJC_IVAR____TtC21DefaultAppsSettingsUI24DefaultAppsSettingsGroup__providers;
    v6 = swift_beginAccess();
    v7 = *(v3 + v5);
    MEMORY[0x28223BE20](v6);

    v8 = *(v7 + 16);
    if (v8)
    {
      v9 = 0;
      v10 = (v7 + 32);
      while (1)
      {
        v11 = sub_21C543E88(v10);
        if (v11)
        {
          break;
        }

        ++v9;
        v10 += 5;
        if (v8 == v9)
        {
          v9 = 0;
          break;
        }
      }

      v12 = v11 ^ 1;
    }

    else
    {
      v9 = 0;
      v12 = 1;
    }

    v14 = v12 & 1;

    if (v14)
    {
      goto LABEL_17;
    }

    v15 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
    }

    else
    {
      swift_getKeyPath();
      *&v21 = v3;
      sub_21C55C604();

      *&v21 = v3;
      swift_getKeyPath();
      sub_21C55C624();

      result = swift_beginAccess();
      if (*(*(v3 + v5) + 16) >= v15)
      {
        if ((v15 & 0x8000000000000000) == 0)
        {
          sub_21C543EA8(v25, &v21);
          sub_21C543FB8(v9 + 1, v9 + 1, &v21);
          swift_endAccess();
          *&v21 = v3;
          swift_getKeyPath();
          sub_21C55C614();

          __swift_project_boxed_opaque_existential_1(v25, v26);
          v16 = sub_21C55C694();
          v18 = v17;
          sub_21C543EA8(v25, &v21);
          swift_getKeyPath();
          sub_21C55C604();

          swift_getKeyPath();
          sub_21C55C624();

          swift_beginAccess();
          sub_21C5599E0(&v21, v16, v18);
          swift_endAccess();
          swift_getKeyPath();
          sub_21C55C614();

          __swift_project_boxed_opaque_existential_1(v25, v26);
          v19 = sub_21C55C694();
          v20 = MEMORY[0x28223BE20](v19);
          MEMORY[0x28223BE20](v20);
          sub_21C55C5E4();

          sub_21C542854();
LABEL_17:
          __swift_destroy_boxed_opaque_existential_1(&v23);
          return __swift_destroy_boxed_opaque_existential_1(v25);
        }

LABEL_22:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_22;
  }

  sub_21C544404(&v21, &unk_27CDDDA40, &qword_21C55DD60);
  return __swift_destroy_boxed_opaque_existential_1(v25);
}

uint64_t sub_21C5438F4(void *a1, void *a2)
{
  sub_21C55CCA4();
  sub_21C55CC94();
  sub_21C55CC54();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = sub_21C55C694();
  v7 = v6;
  v8 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  if (v5 == sub_21C55C694() && v7 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_21C55CE44();
  }

  return v11 & 1;
}

uint64_t sub_21C543A2C()
{
  v1 = OBJC_IVAR____TtC21DefaultAppsSettingsUI24DefaultAppsSettingsGroup_id;
  v2 = sub_21C55C5B4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC21DefaultAppsSettingsUI24DefaultAppsSettingsGroup__providers);

  v4 = *(v0 + OBJC_IVAR____TtC21DefaultAppsSettingsUI24DefaultAppsSettingsGroup__idToProvider);

  v5 = OBJC_IVAR____TtC21DefaultAppsSettingsUI24DefaultAppsSettingsGroup___observationRegistrar;
  v6 = sub_21C55C644();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v7, v8);
}

uint64_t type metadata accessor for DefaultAppsSettingsGroup()
{
  result = qword_27CDDD458;
  if (!qword_27CDDD458)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21C543B7C()
{
  result = sub_21C55C5B4();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_21C55C644();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_21C543CA8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC21DefaultAppsSettingsUI24DefaultAppsSettingsGroup_id;
  v5 = sub_21C55C5B4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_21C543D24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDDDA40, &qword_21C55DD60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
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

uint64_t sub_21C543DDC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
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

uint64_t sub_21C543E40(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21C543EA8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

double sub_21C543F0C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_21C559DE8(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_21C55B1CC();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_21C543DDC((*(v12 + 56) + 40 * v9), a3);
    sub_21C55A824(v9, v12);
    *v4 = v12;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

unint64_t sub_21C543FB8(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v13 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > v5[3] >> 1)
  {
    if (v6 <= v11)
    {
      v15 = v11;
    }

    else
    {
      v15 = v6;
    }

    v5 = sub_21C54A5C8(isUniquelyReferenced_nonNull_native, v15, 1, v5);
    *v3 = v5;
  }

  result = sub_21C5442E8(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_21C544108(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21C5441D0;

  return sub_21C542D18(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_21C5441D0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_21C5442E8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_14;
  }

  v9 = *v4;
  v10 = v9 + 32 + 40 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD480, &qword_21C55DDF8);
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12)
  {
    v13 = *(v9 + 16);
    v11 = __OFSUB__(v13, a2);
    v14 = v13 - a2;
    if (!v11)
    {
      result = v10 + 40 * a3;
      v15 = (v9 + 32 + 40 * a2);
      if (result != v15 || result >= v15 + 40 * v14)
      {
        result = memmove(result, v15, 40 * v14);
      }

      v16 = *(v9 + 16);
      v11 = __OFADD__(v16, v12);
      v17 = v16 + v12;
      if (!v11)
      {
        *(v9 + 16) = v17;
        goto LABEL_10;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

LABEL_10:
  if (a3 < 1)
  {
    return sub_21C544404(a4, &qword_27CDDD488, &unk_21C55DE00);
  }

  result = sub_21C543EA8(a4, v10);
  if (a3 == 1)
  {
    return sub_21C544404(a4, &qword_27CDDD488, &unk_21C55DE00);
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_21C544404(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *sub_21C544484(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  v45[0] = v2;
  sub_21C54A898(&qword_27CDDD4B0, type metadata accessor for DefaultAppsSettingsModel);
  sub_21C55C604();

  v39 = v2;
  v4 = *(v2 + 16);
  if (v4 >> 62)
  {
    goto LABEL_57;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v38 = a2;

  if (v5)
  {
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x21CF0B5C0](v6, v4);
        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
LABEL_27:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          v5 = sub_21C55CDC4();
          goto LABEL_3;
        }

        v8 = *(v4 + 8 * v6 + 32);

        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_27;
        }
      }

      sub_21C55CCA4();
      sub_21C55CC94();
      sub_21C55CC54();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      swift_getKeyPath();
      v45[0] = v8;
      sub_21C54A898(&qword_27CDDD470, type metadata accessor for DefaultAppsSettingsGroup);
      sub_21C55C604();

      v10 = OBJC_IVAR____TtC21DefaultAppsSettingsUI24DefaultAppsSettingsGroup__providers;
      swift_beginAccess();
      v11 = *(v8 + v10);

      v12 = *(v11 + 16);
      a2 = v7[2];
      v13 = a2 + v12;
      if (__OFADD__(a2, v12))
      {
        goto LABEL_52;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v13 <= v7[3] >> 1)
      {
        if (!*(v11 + 16))
        {
          goto LABEL_5;
        }
      }

      else
      {
        if (a2 <= v13)
        {
          v15 = a2 + v12;
        }

        else
        {
          v15 = a2;
        }

        v7 = sub_21C54A5C8(isUniquelyReferenced_nonNull_native, v15, 1, v7);
        if (!*(v11 + 16))
        {
LABEL_5:

          if (v12)
          {
            goto LABEL_53;
          }

          goto LABEL_6;
        }
      }

      v16 = v7[2];
      if ((v7[3] >> 1) - v16 < v12)
      {
        goto LABEL_54;
      }

      a2 = &v7[5 * v16];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD480, &qword_21C55DDF8);
      swift_arrayInitWithCopy();

      if (v12)
      {
        v17 = v7[2];
        v18 = __OFADD__(v17, v12);
        v19 = v17 + v12;
        if (v18)
        {
          goto LABEL_56;
        }

        v7[2] = v19;
      }

LABEL_6:
      ++v6;
      if (v9 == v5)
      {
        goto LABEL_29;
      }
    }
  }

  v7 = MEMORY[0x277D84F90];
LABEL_29:

  v20 = v38;
  if (v38)
  {
    swift_getKeyPath();
    v45[0] = v39;

    sub_21C55C604();

    swift_beginAccess();
    v21 = *(v39 + 352);
    if (*(v21 + 16))
    {
      v22 = *(v39 + 352);

      v23 = sub_21C559DE8(a1, v38);
      if (v24)
      {
        v25 = v23;

        v7 = *(*(v21 + 56) + 8 * v25);

        return v7;
      }
    }

    v26 = objc_allocWithZone(MEMORY[0x277CC1E70]);

    v4 = 0;
    v27 = sub_21C54A3E8(a1, v38, 1);
    if (v27)
    {
      v41 = v27;
      LOBYTE(v27) = [v27 supportedDefaultAppCategories];
      v28 = 0;
    }

    else
    {
      v41 = 0;
      v28 = 1;
    }

    v29 = sub_21C54AB64(v27, v28);
    v30 = v7[2];
    if (v30)
    {
      v31 = 0;
      v32 = MEMORY[0x277D84F90];
      a2 = (v7 + 4);
      while (v31 < v7[2])
      {
        sub_21C543EA8(a2, v45);
        sub_21C54979C(v45, v29, v39, &v42);
        __swift_destroy_boxed_opaque_existential_1(v45);
        if (v43)
        {
          sub_21C543DDC(&v42, v44);
          sub_21C543DDC(v44, &v42);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v32 = sub_21C54A5C8(0, v32[2] + 1, 1, v32);
          }

          v34 = v32[2];
          v33 = v32[3];
          if (v34 >= v33 >> 1)
          {
            v32 = sub_21C54A5C8((v33 > 1), v34 + 1, 1, v32);
          }

          v32[2] = v34 + 1;
          sub_21C543DDC(&v42, &v32[5 * v34 + 4]);
          v20 = v38;
        }

        else
        {
          sub_21C544404(&v42, &unk_27CDDDA40, &qword_21C55DD60);
        }

        ++v31;
        a2 += 40;
        if (v30 == v31)
        {
          goto LABEL_48;
        }
      }

      goto LABEL_55;
    }

    v32 = MEMORY[0x277D84F90];
LABEL_48:

    swift_getKeyPath();
    v45[0] = v39;

    sub_21C55C604();

    v45[0] = v39;
    swift_getKeyPath();
    sub_21C55C624();

    swift_beginAccess();
    v35 = *(v39 + 352);
    v36 = swift_isUniquelyReferenced_nonNull_native();
    *&v44[0] = *(v39 + 352);
    *(v39 + 352) = 0x8000000000000000;
    sub_21C55ACC4(v32, a1, v20, v36);

    *(v39 + 352) = *&v44[0];
    swift_endAccess();
    v45[0] = v39;
    swift_getKeyPath();
    sub_21C55C614();

    return v32;
  }

  return v7;
}

uint64_t sub_21C544B60@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C54A898(&qword_27CDDD470, type metadata accessor for DefaultAppsSettingsGroup);
  sub_21C55C604();

  v4 = OBJC_IVAR____TtC21DefaultAppsSettingsUI24DefaultAppsSettingsGroup__providers;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_21C544C28(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_21C54A898(&qword_27CDDD470, type metadata accessor for DefaultAppsSettingsGroup);
  sub_21C55C5F4();
}

uint64_t sub_21C544CF4()
{
  v0 = type metadata accessor for DefaultAppsSettingsModel();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  result = sub_21C5464EC();
  qword_27CDDE7A0 = v3;
  return result;
}

uint64_t sub_21C544D34()
{
  swift_getKeyPath();
  sub_21C54A898(&qword_27CDDD4B0, type metadata accessor for DefaultAppsSettingsModel);
  sub_21C55C604();

  v1 = *(v0 + 16);
}

uint64_t sub_21C544DD8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C54A898(&qword_27CDDD4B0, type metadata accessor for DefaultAppsSettingsModel);
  sub_21C55C604();

  *a2 = *(v3 + 16);
}

uint64_t sub_21C544E84(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_21C54A898(&qword_27CDDD4B0, type metadata accessor for DefaultAppsSettingsModel);
  sub_21C55C5F4();
}

uint64_t sub_21C544F50@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_21C54A898(&qword_27CDDD4B0, type metadata accessor for DefaultAppsSettingsModel);
  sub_21C55C604();

  swift_beginAccess();
  return sub_21C543D24(v1 + 24, a1);
}

uint64_t sub_21C545010@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C54A898(&qword_27CDDD4B0, type metadata accessor for DefaultAppsSettingsModel);
  sub_21C55C604();

  swift_beginAccess();
  return sub_21C543D24(v3 + 24, a2);
}

uint64_t sub_21C5450D0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_21C54AA40(a2, a1 + 24);
  return swift_endAccess();
}

uint64_t sub_21C545134@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_21C54A898(&qword_27CDDD4B0, type metadata accessor for DefaultAppsSettingsModel);
  sub_21C55C604();

  swift_beginAccess();
  return sub_21C543D24(v1 + 72, a1);
}

uint64_t sub_21C5451F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C54A898(&qword_27CDDD4B0, type metadata accessor for DefaultAppsSettingsModel);
  sub_21C55C604();

  swift_beginAccess();
  return sub_21C543D24(v3 + 72, a2);
}

uint64_t sub_21C5452B4(uint64_t a1, uint64_t *a2)
{
  sub_21C543D24(a1, v5);
  v3 = *a2;
  swift_getKeyPath();
  sub_21C54A898(&qword_27CDDD4B0, type metadata accessor for DefaultAppsSettingsModel);
  sub_21C55C5F4();

  return sub_21C544404(v5, &unk_27CDDDA40, &qword_21C55DD60);
}

uint64_t sub_21C5453A0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_21C54AA40(a2, a1 + 72);
  return swift_endAccess();
}

uint64_t sub_21C545404@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_21C54A898(&qword_27CDDD4B0, type metadata accessor for DefaultAppsSettingsModel);
  sub_21C55C604();

  swift_beginAccess();
  return sub_21C543D24(v1 + 112, a1);
}

uint64_t sub_21C5454C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C54A898(&qword_27CDDD4B0, type metadata accessor for DefaultAppsSettingsModel);
  sub_21C55C604();

  swift_beginAccess();
  return sub_21C543D24(v3 + 112, a2);
}

uint64_t sub_21C545584(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_21C54AA40(a2, a1 + 112);
  return swift_endAccess();
}

uint64_t sub_21C5455E8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_21C54A898(&qword_27CDDD4B0, type metadata accessor for DefaultAppsSettingsModel);
  sub_21C55C604();

  swift_beginAccess();
  return sub_21C543D24(v1 + 152, a1);
}

uint64_t sub_21C5456A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C54A898(&qword_27CDDD4B0, type metadata accessor for DefaultAppsSettingsModel);
  sub_21C55C604();

  swift_beginAccess();
  return sub_21C543D24(v3 + 152, a2);
}

uint64_t sub_21C545768(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_21C54AA40(a2, a1 + 152);
  return swift_endAccess();
}

uint64_t sub_21C5457CC@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_21C54A898(&qword_27CDDD4B0, type metadata accessor for DefaultAppsSettingsModel);
  sub_21C55C604();

  swift_beginAccess();
  return sub_21C543D24(v1 + 216, a1);
}

uint64_t sub_21C54588C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C54A898(&qword_27CDDD4B0, type metadata accessor for DefaultAppsSettingsModel);
  sub_21C55C604();

  swift_beginAccess();
  return sub_21C543D24(v3 + 216, a2);
}

uint64_t sub_21C54594C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_21C54AA40(a2, a1 + 216);
  return swift_endAccess();
}

uint64_t sub_21C5459B0@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_21C54A898(&qword_27CDDD4B0, type metadata accessor for DefaultAppsSettingsModel);
  sub_21C55C604();

  swift_beginAccess();
  return sub_21C543D24(v1 + 256, a1);
}

uint64_t sub_21C545A70@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C54A898(&qword_27CDDD4B0, type metadata accessor for DefaultAppsSettingsModel);
  sub_21C55C604();

  swift_beginAccess();
  return sub_21C543D24(v3 + 256, a2);
}

uint64_t sub_21C545B30(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_21C54AA40(a2, a1 + 256);
  return swift_endAccess();
}

uint64_t sub_21C545B94@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_21C54A898(&qword_27CDDD4B0, type metadata accessor for DefaultAppsSettingsModel);
  sub_21C55C604();

  swift_beginAccess();
  return sub_21C543D24(v1 + 296, a1);
}

uint64_t sub_21C545C54@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C54A898(&qword_27CDDD4B0, type metadata accessor for DefaultAppsSettingsModel);
  sub_21C55C604();

  swift_beginAccess();
  return sub_21C543D24(v3 + 296, a2);
}

uint64_t sub_21C545D14(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_21C54AA40(a2, a1 + 296);
  return swift_endAccess();
}

uint64_t sub_21C545D78()
{
  swift_getKeyPath();
  sub_21C54A898(&qword_27CDDD4B0, type metadata accessor for DefaultAppsSettingsModel);
  sub_21C55C604();

  swift_beginAccess();
  v1 = *(v0 + 336);
}

uint64_t sub_21C545E30@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C54A898(&qword_27CDDD4B0, type metadata accessor for DefaultAppsSettingsModel);
  sub_21C55C604();

  swift_beginAccess();
  *a2 = *(v3 + 336);
}

uint64_t sub_21C545EF0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_21C54A898(&qword_27CDDD4B0, type metadata accessor for DefaultAppsSettingsModel);
  sub_21C55C5F4();
}

uint64_t sub_21C545FBC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 336);
  *(a1 + 336) = a2;
}

uint64_t sub_21C546024()
{
  swift_getKeyPath();
  sub_21C54A898(&qword_27CDDD4B0, type metadata accessor for DefaultAppsSettingsModel);
  sub_21C55C604();

  v1 = *(v0 + 344);
}

uint64_t sub_21C5460C8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C54A898(&qword_27CDDD4B0, type metadata accessor for DefaultAppsSettingsModel);
  sub_21C55C604();

  *a2 = *(v3 + 344);
}

uint64_t sub_21C546174(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_21C54A898(&qword_27CDDD4B0, type metadata accessor for DefaultAppsSettingsModel);
  sub_21C55C5F4();
}

uint64_t sub_21C546240()
{
  swift_getKeyPath();
  sub_21C54A898(&qword_27CDDD4B0, type metadata accessor for DefaultAppsSettingsModel);
  sub_21C55C604();

  swift_beginAccess();
  v1 = *(v0 + 352);
}

uint64_t sub_21C5462F8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C54A898(&qword_27CDDD4B0, type metadata accessor for DefaultAppsSettingsModel);
  sub_21C55C604();

  swift_beginAccess();
  *a2 = *(v3 + 352);
}

uint64_t sub_21C5463B8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_21C54A898(&qword_27CDDD4B0, type metadata accessor for DefaultAppsSettingsModel);
  sub_21C55C5F4();
}

uint64_t sub_21C546484(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 352);
  *(a1 + 352) = a2;
}

uint64_t sub_21C5464EC()
{
  v1 = v0;
  v301 = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD490, &qword_21C55DF40);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v290 = &v256 - v4;
  v5 = sub_21C55C534();
  v288 = *(v5 - 8);
  v289 = v5;
  v6 = *(v288 + 64);
  MEMORY[0x28223BE20](v5);
  v287 = &v256 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v279 = sub_21C55C574();
  v270 = *(v279 - 8);
  v8 = *(v270 + 64);
  v9 = MEMORY[0x28223BE20](v279);
  v281 = &v256 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v273 = &v256 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v260 = &v256 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v282 = &v256 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v258 = &v256 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v277 = &v256 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v284 = &v256 - v22;
  MEMORY[0x28223BE20](v21);
  v262 = &v256 - v23;
  v24 = MEMORY[0x277D84F90];
  *(v0 + 16) = MEMORY[0x277D84F90];
  v25 = type metadata accessor for DefaultLSAppsSettingsProvider();
  *(v0 + 24) = 0u;
  v263 = v0 + 24;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0;
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  v28 = sub_21C55181C(2);
  *(v0 + 72) = 0u;
  v264 = v0 + 72;
  *(v0 + 64) = v28;
  *(v0 + 152) = 0u;
  v265 = v0 + 152;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  *(v0 + 168) = 0u;
  *(v0 + 184) = 0;
  v29 = *(v25 + 48);
  v30 = *(v25 + 52);
  swift_allocObject();
  *(v0 + 192) = sub_21C55181C(5);
  v31 = *(v25 + 48);
  v32 = *(v25 + 52);
  swift_allocObject();
  *(v0 + 200) = sub_21C55181C(1);
  v33 = *(v25 + 48);
  v34 = *(v25 + 52);
  swift_allocObject();
  *(v0 + 208) = sub_21C55181C(6);
  *(v0 + 216) = 0u;
  *(v0 + 232) = 0u;
  *(v0 + 248) = 0u;
  *(v0 + 328) = 0;
  *(v0 + 264) = 0u;
  *(v0 + 280) = 0u;
  *(v0 + 296) = 0u;
  *(v0 + 312) = 0u;
  v267 = v0 + 216;
  *(v0 + 336) = sub_21C55BBCC(v24);
  *(v0 + 344) = sub_21C55BBCC(v24);
  *(v0 + 352) = sub_21C55BD00(v24);
  v278 = OBJC_IVAR____TtC21DefaultAppsSettingsUI24DefaultAppsSettingsModel___observationRegistrar;
  sub_21C55C634();
  v35 = type metadata accessor for DefaultAppsSettingsGroup();
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  v275 = sub_21C5420FC(v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD498, &qword_21C55DF48);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_21C55DE10;
  v39 = v1[8];
  *(v38 + 56) = v25;
  v40 = sub_21C54A898(&qword_27CDDD4A0, type metadata accessor for DefaultLSAppsSettingsProvider);
  *(v38 + 64) = v40;
  *(v38 + 32) = v39;
  v41 = *(v35 + 48);
  v42 = *(v35 + 52);
  swift_allocObject();

  v43 = sub_21C5420FC(v38);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_21C55DE20;
  *(v44 + 56) = v25;
  *(v44 + 64) = v40;
  v45 = v1[25];
  *(v44 + 32) = v1[24];
  *(v44 + 96) = v25;
  *(v44 + 104) = v40;
  *(v44 + 72) = v45;
  v46 = v1[26];
  v266 = v25;
  *(v44 + 136) = v25;
  *(v44 + 144) = v40;
  v271 = v40;
  *(v44 + 112) = v46;
  v47 = *(v35 + 48);
  v48 = *(v35 + 52);
  swift_allocObject();

  v49 = sub_21C5420FC(v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD4A8, &qword_21C55DF50);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_21C55DE30;
  *(v50 + 32) = v275;
  *(v50 + 40) = v43;
  *(v50 + 48) = v49;
  swift_getKeyPath();
  v292 = v1;
  v293 = v50;
  v298[0] = v1;
  v51 = sub_21C54A898(&qword_27CDDD4B0, type metadata accessor for DefaultAppsSettingsModel);

  v274 = v43;

  v261 = v49;

  v283 = v1;
  sub_21C55C5F4();

  (*(v288 + 104))(v287, *MEMORY[0x277CC91C0], v289);
  v52 = v279;
  (*(v270 + 56))(v290, 1, 1, v279);
  sub_21C55C564();
  v53 = [objc_opt_self() defaultManager];
  v54 = sub_21C55C554();
  type metadata accessor for URLResourceKey(0);
  v55 = sub_21C55CC04();
  v298[0] = 0;
  v56 = [v53 contentsOfDirectoryAtURL:v54 includingPropertiesForKeys:v55 options:4 error:v298];

  v57 = v298[0];
  v272 = v51;
  if (v56)
  {
    v276 = 0;
    v58 = sub_21C55CC14();
    v59 = v57;

    v61 = *(v58 + 16);
    if (v61)
    {
      v62 = v52;
      v289 = *(v270 + 16);
      v290 = (v270 + 16);
      v63 = (*(v270 + 80) + 32) & ~*(v270 + 80);
      v257 = v58;
      v64 = v58 + v63;
      v285 = *(v270 + 72);
      v286 = (v270 + 8);
      *&v60 = 136446210;
      v280 = v60;
      *&v60 = 136446466;
      v259 = v60;
      *&v60 = 136315394;
      v256 = v60;
      v65 = v283;
      v66 = v284;
      (v289)(v284, v58 + v63, v62);
      while (1)
      {
        sub_21C55C544();
        v68 = sub_21C55CAF4();
        v70 = v69;

        v288 = v64;
        if (v68 == 0x6E6967756C70 && v70 == 0xE600000000000000)
        {
        }

        else
        {
          v71 = sub_21C55CE44();

          if ((v71 & 1) == 0)
          {
            v287 = v61;
            if (qword_27CDDD3C0 != -1)
            {
              swift_once();
            }

            v97 = sub_21C55C714();
            __swift_project_value_buffer(v97, qword_27CDDE7A8);
            v84 = v281;
            (v289)(v281, v66, v62);
            v85 = sub_21C55C6F4();
            v98 = sub_21C55CCF4();
            if (!os_log_type_enabled(v85, v98))
            {
              goto LABEL_4;
            }

            v87 = swift_slowAlloc();
            v88 = swift_slowAlloc();
            v298[0] = v88;
            *v87 = v280;
            sub_21C54A898(&qword_27CDDD4B8, MEMORY[0x277CC9260]);
            v99 = sub_21C55CE34();
            v101 = v100;
            v92 = *v286;
            (*v286)(v281, v62);
            v102 = sub_21C556F20(v99, v101, v298);

            *(v87 + 4) = v102;
            v94 = v98;
            v95 = v85;
            v96 = "File extension is not plugin. Ignoring:\n %{public}s";
LABEL_28:
            _os_log_impl(&dword_21C53D000, v95, v94, v96, v87, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v88);
            v103 = v88;
            v65 = v283;
            MEMORY[0x21CF0BC40](v103, -1, -1);
            MEMORY[0x21CF0BC40](v87, -1, -1);

            v92(v284, v62);
            v66 = v284;
LABEL_5:
            v61 = v287;
            v64 = v288;
            goto LABEL_6;
          }
        }

        v72 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
        v73 = sub_21C55C554();
        v74 = [v72 initWithURL_];

        if (!v74)
        {
          v287 = v61;
          if (qword_27CDDD3C0 != -1)
          {
            swift_once();
          }

          v83 = sub_21C55C714();
          __swift_project_value_buffer(v83, qword_27CDDE7A8);
          v84 = v277;
          (v289)(v277, v66, v62);
          v85 = sub_21C55C6F4();
          v86 = sub_21C55CCF4();
          if (os_log_type_enabled(v85, v86))
          {
            v87 = swift_slowAlloc();
            v88 = swift_slowAlloc();
            v298[0] = v88;
            *v87 = v280;
            sub_21C54A898(&qword_27CDDD4B8, MEMORY[0x277CC9260]);
            v89 = sub_21C55CE34();
            v91 = v90;
            v92 = *v286;
            (*v286)(v84, v62);
            v93 = sub_21C556F20(v89, v91, v298);

            *(v87 + 4) = v93;
            v94 = v86;
            v95 = v85;
            v96 = "Could not create bundle from URL: %{public}s";
            goto LABEL_28;
          }

LABEL_4:

          v67 = *v286;
          (*v286)(v84, v62);
          v67(v66, v62);
          goto LABEL_5;
        }

        v75 = [v74 load];
        v76 = v282;
        if (v75)
        {
          if ([v74 principalClass])
          {
            ObjCClassMetadata = swift_getObjCClassMetadata();
            v78 = swift_conformsToProtocol2();
            if (v78)
            {
              if (ObjCClassMetadata)
              {
                v299 = ObjCClassMetadata;
                v300 = v78;
                __swift_allocate_boxed_opaque_existential_1(v298);
                sub_21C55C6A4();
                v79 = sub_21C55C694();
                v81 = v80;
                if (sub_21C55CB94() == v79 && v82 == v81)
                {
LABEL_70:

                  goto LABEL_48;
                }

                v151 = sub_21C55CE44();

                if (v151)
                {
                  goto LABEL_48;
                }

                if (sub_21C55CB64() == v79 && v155 == v81)
                {
                  goto LABEL_70;
                }

                v156 = sub_21C55CE44();

                if (v156)
                {
                  goto LABEL_48;
                }

                if (sub_21C55CB24() == v79 && v157 == v81)
                {
                  goto LABEL_70;
                }

                v158 = sub_21C55CE44();

                if (v158)
                {
                  goto LABEL_48;
                }

                if (sub_21C55CB54() == v79 && v159 == v81)
                {

                  goto LABEL_61;
                }

                v160 = sub_21C55CE44();

                if (v160)
                {
LABEL_61:

                  v295 = &type metadata for Feature;
                  v296 = sub_21C54A998();
                  v161 = sub_21C55C654();
                  __swift_destroy_boxed_opaque_existential_1(&v294);
                  if (v161)
                  {
                    goto LABEL_62;
                  }

                  v62 = v279;
                  (*v286)(v66, v279);

LABEL_50:
                  __swift_destroy_boxed_opaque_existential_1(v298);
                  goto LABEL_6;
                }

                if (sub_21C55CBA4() == v79 && v163 == v81)
                {
                  goto LABEL_70;
                }

                v164 = sub_21C55CE44();

                if (v164)
                {
                  goto LABEL_48;
                }

                if (sub_21C55CBB4() == v79 && v165 == v81)
                {
                  goto LABEL_70;
                }

                v166 = sub_21C55CE44();

                if (v166)
                {
LABEL_48:

                  sub_21C543EA8(v298, &v294);
                  KeyPath = swift_getKeyPath();
                  MEMORY[0x28223BE20](KeyPath);
                  *(&v256 - 2) = v65;
                  *(&v256 - 1) = &v294;
                  v297[0] = v65;
                }

                else
                {
                  if (sub_21C55CB14() == v79 && v167 == v81)
                  {
                  }

                  else
                  {
                    v168 = sub_21C55CE44();

                    if ((v168 & 1) == 0)
                    {
                      v269 = v74;
                      v287 = v61;
                      if (qword_27CDDD3C0 != -1)
                      {
                        swift_once();
                      }

                      v169 = sub_21C55C714();
                      __swift_project_value_buffer(v169, qword_27CDDE7A8);
                      sub_21C543EA8(v298, &v294);
                      (v289)(v258, v284, v279);
                      v170 = sub_21C55C6F4();
                      v171 = sub_21C55CCE4();
                      if (os_log_type_enabled(v170, v171))
                      {
                        v172 = swift_slowAlloc();
                        v268 = swift_slowAlloc();
                        v297[0] = v268;
                        *v172 = v256;
                        __swift_project_boxed_opaque_existential_1(&v294, v295);
                        v173 = sub_21C55C694();
                        v175 = v174;
                        __swift_destroy_boxed_opaque_existential_1(&v294);
                        v176 = sub_21C556F20(v173, v175, v297);

                        *(v172 + 4) = v176;
                        *(v172 + 12) = 2082;
                        sub_21C54A898(&qword_27CDDD4B8, MEMORY[0x277CC9260]);
                        v177 = v258;
                        v178 = v279;
                        v179 = sub_21C55CE34();
                        v181 = v180;
                        v182 = *v286;
                        (*v286)(v177, v178);
                        v183 = sub_21C556F20(v179, v181, v297);

                        *(v172 + 14) = v183;
                        _os_log_impl(&dword_21C53D000, v170, v171, "Unknown provider ID (%s). Ignoring plugin at %{public}s", v172, 0x16u);
                        v184 = v268;
                        swift_arrayDestroy();
                        MEMORY[0x21CF0BC40](v184, -1, -1);
                        v185 = v172;
                        v62 = v178;
                        MEMORY[0x21CF0BC40](v185, -1, -1);

                        v186 = v284;
                        v182(v284, v178);
                        v66 = v186;
                      }

                      else
                      {

                        v187 = *v286;
                        v62 = v279;
                        (*v286)(v258, v279);
                        v66 = v284;
                        v187(v284, v62);
                        __swift_destroy_boxed_opaque_existential_1(&v294);
                      }

                      v65 = v283;
                      v61 = v287;
                      v64 = v288;
                      goto LABEL_50;
                    }
                  }

LABEL_62:
                  sub_21C543EA8(v298, &v294);
                  v162 = swift_getKeyPath();
                  MEMORY[0x28223BE20](v162);
                  *(&v256 - 2) = v65;
                  *(&v256 - 1) = &v294;
                  v297[0] = v65;
                }

                v153 = v276;
                sub_21C55C5F4();
                v276 = v153;

                v154 = v279;
                (*v286)(v66, v279);
                v62 = v154;
                sub_21C544404(&v294, &unk_27CDDDA40, &qword_21C55DD60);
                goto LABEL_50;
              }
            }
          }

          if (qword_27CDDD3C0 != -1)
          {
            swift_once();
          }

          v116 = sub_21C55C714();
          v117 = __swift_project_value_buffer(v116, qword_27CDDE7A8);
          (v289)(v76, v66, v62);
          v118 = v74;
          v119 = v76;
          v268 = v117;
          v120 = sub_21C55C6F4();
          v121 = sub_21C55CCF4();

          if (os_log_type_enabled(v120, v121))
          {
            v287 = v61;
            v122 = swift_slowAlloc();
            v123 = v62;
            v124 = swift_slowAlloc();
            v298[0] = v124;
            *v122 = v259;
            sub_21C54A898(&qword_27CDDD4B8, MEMORY[0x277CC9260]);
            v125 = sub_21C55CE34();
            v127 = v126;
            v269 = *v286;
            (v269)(v119, v123);
            v128 = sub_21C556F20(v125, v127, v298);

            *(v122 + 4) = v128;
            *(v122 + 12) = 2080;
            v129 = [v118 principalClass];
            if (v129)
            {
              v129 = swift_getObjCClassMetadata();
            }

            v61 = v287;
            v64 = v288;
            *&v294 = v129;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD4C0, &qword_21C55E120);
            v130 = sub_21C55CAE4();
            v132 = sub_21C556F20(v130, v131, v298);

            *(v122 + 14) = v132;
            _os_log_impl(&dword_21C53D000, v120, v121, "Could not load provider class from bundle URL: %{public}s, bundle principal class: %s", v122, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x21CF0BC40](v124, -1, -1);
            MEMORY[0x21CF0BC40](v122, -1, -1);

            v62 = v279;
            v133 = v269;
          }

          else
          {

            v133 = *v286;
            (*v286)(v76, v62);
            v64 = v288;
          }

          v135 = [v118 unload];
          v66 = v284;
          if (v135)
          {
            v133(v284, v62);

            v65 = v283;
          }

          else
          {
            v136 = v260;
            (v289)(v260, v284, v62);
            v137 = sub_21C55C6F4();
            v138 = sub_21C55CCF4();
            if (os_log_type_enabled(v137, v138))
            {
              v139 = swift_slowAlloc();
              v140 = v133;
              v269 = v133;
              v141 = v139;
              v142 = swift_slowAlloc();
              v287 = v61;
              v268 = v142;
              v298[0] = v142;
              *v141 = v280;
              sub_21C54A898(&qword_27CDDD4B8, MEMORY[0x277CC9260]);
              v143 = v137;
              v144 = sub_21C55CE34();
              v146 = v145;
              v140(v136, v62);
              v147 = sub_21C556F20(v144, v146, v298);
              v66 = v284;

              *(v141 + 4) = v147;
              v148 = v143;
              _os_log_impl(&dword_21C53D000, v143, v138, "Could not unload bundle at URL: %{public}s", v141, 0xCu);
              v149 = v268;
              __swift_destroy_boxed_opaque_existential_1(v268);
              v150 = v149;
              v61 = v287;
              v64 = v288;
              MEMORY[0x21CF0BC40](v150, -1, -1);
              MEMORY[0x21CF0BC40](v141, -1, -1);

              (v269)(v66, v62);
            }

            else
            {

              v133(v136, v62);
              v133(v66, v62);
            }

            v65 = v283;
          }
        }

        else
        {
          v104 = v65;
          v287 = v61;
          v105 = v273;
          if (qword_27CDDD3C0 != -1)
          {
            swift_once();
          }

          v106 = sub_21C55C714();
          __swift_project_value_buffer(v106, qword_27CDDE7A8);
          (v289)(v105, v66, v62);
          v107 = sub_21C55C6F4();
          v108 = sub_21C55CCF4();
          if (os_log_type_enabled(v107, v108))
          {
            v109 = swift_slowAlloc();
            v268 = swift_slowAlloc();
            v298[0] = v268;
            *v109 = v280;
            sub_21C54A898(&qword_27CDDD4B8, MEMORY[0x277CC9260]);
            v110 = sub_21C55CE34();
            v112 = v111;
            v269 = v74;
            v113 = *v286;
            (*v286)(v105, v62);
            v114 = sub_21C556F20(v110, v112, v298);
            v66 = v284;

            *(v109 + 4) = v114;
            _os_log_impl(&dword_21C53D000, v107, v108, "Could not load bundle at URL: %{public}s", v109, 0xCu);
            v115 = v268;
            __swift_destroy_boxed_opaque_existential_1(v268);
            v65 = v283;
            MEMORY[0x21CF0BC40](v115, -1, -1);
            MEMORY[0x21CF0BC40](v109, -1, -1);

            v113(v66, v62);
            goto LABEL_5;
          }

          v134 = *v286;
          (*v286)(v105, v62);
          v134(v66, v62);
          v61 = v287;
          v64 = v288;
          v65 = v104;
        }

LABEL_6:
        v64 += v285;
        if (!--v61)
        {

          goto LABEL_88;
        }

        (v289)(v66, v64, v62);
      }
    }

    v65 = v283;
LABEL_88:
    v195 = v266;
  }

  else
  {
    v188 = v298[0];
    v189 = sub_21C55C504();

    swift_willThrow();
    if (qword_27CDDD3C0 != -1)
    {
      swift_once();
    }

    v190 = sub_21C55C714();
    __swift_project_value_buffer(v190, qword_27CDDE7A8);
    v191 = v189;
    v192 = sub_21C55C6F4();
    v193 = sub_21C55CCE4();

    v194 = os_log_type_enabled(v192, v193);
    v65 = v283;
    v195 = v266;
    if (v194)
    {
      v196 = swift_slowAlloc();
      v197 = swift_slowAlloc();
      *v196 = 138543362;
      v198 = v189;
      v199 = _swift_stdlib_bridgeErrorToNSError();
      *(v196 + 4) = v199;
      *v197 = v199;
      _os_log_impl(&dword_21C53D000, v192, v193, "Error reading plugin path: %{public}@", v196, 0xCu);
      sub_21C544404(v197, &qword_27CDDD890, &qword_21C55E860);
      MEMORY[0x21CF0BC40](v197, -1, -1);
      MEMORY[0x21CF0BC40](v196, -1, -1);
    }

    else
    {
    }

    v276 = 0;
  }

  swift_getKeyPath();
  v298[0] = v65;
  sub_21C55C604();

  v200 = v263;
  swift_beginAccess();
  sub_21C543D24(v200, v298);
  sub_21C543064(v298);
  sub_21C544404(v298, &unk_27CDDDA40, &qword_21C55DD60);
  swift_getKeyPath();
  v298[0] = v65;
  sub_21C55C604();

  v201 = v264;
  swift_beginAccess();
  sub_21C543D24(v201, v298);
  v202 = v65[8];
  v295 = v195;
  v296 = v271;
  *&v294 = v202;

  sub_21C54342C(v298, &v294);
  sub_21C544404(v298, &unk_27CDDDA40, &qword_21C55DD60);
  sub_21C544404(&v294, &unk_27CDDDA40, &qword_21C55DD60);
  swift_getKeyPath();
  v298[0] = v65;
  sub_21C55C604();

  swift_beginAccess();
  sub_21C543D24((v65 + 14), v298);
  v203 = v299;
  sub_21C544404(v298, &unk_27CDDDA40, &qword_21C55DD60);
  if (!v203)
  {
    Kind_low = LODWORD(v195[3].Kind);
    v205 = WORD2(v195[3].Kind);
    swift_allocObject();
    v206 = sub_21C55181C(4);
    v299 = v195;
    v300 = v271;
    v298[0] = v206;
    v207 = swift_getKeyPath();
    MEMORY[0x28223BE20](v207);
    *(&v256 - 2) = v65;
    *(&v256 - 1) = v298;
    *&v294 = v65;
    v208 = v276;
    sub_21C55C5F4();
    v276 = v208;

    sub_21C544404(v298, &unk_27CDDDA40, &qword_21C55DD60);
  }

  swift_getKeyPath();
  v298[0] = v65;
  sub_21C55C604();

  sub_21C543D24((v65 + 14), v298);
  sub_21C543064(v298);
  sub_21C544404(v298, &unk_27CDDDA40, &qword_21C55DD60);
  swift_getKeyPath();
  v298[0] = v65;
  sub_21C55C604();

  v209 = v265;
  swift_beginAccess();
  sub_21C543D24(v209, v298);
  sub_21C543064(v298);
  sub_21C544404(v298, &unk_27CDDDA40, &qword_21C55DD60);
  swift_getKeyPath();
  v298[0] = v65;
  sub_21C55C604();

  v210 = v267;
  swift_beginAccess();
  sub_21C543D24(v210, v298);
  sub_21C543064(v298);
  sub_21C544404(v298, &unk_27CDDDA40, &qword_21C55DD60);
  swift_getKeyPath();
  v298[0] = v65;
  sub_21C55C604();

  swift_beginAccess();
  sub_21C543D24((v65 + 32), v298);
  sub_21C543064(v298);
  sub_21C544404(v298, &unk_27CDDDA40, &qword_21C55DD60);
  swift_getKeyPath();
  v298[0] = v65;
  sub_21C55C604();

  swift_beginAccess();
  sub_21C543D24((v65 + 37), v298);
  sub_21C543064(v298);
  sub_21C544404(v298, &unk_27CDDDA40, &qword_21C55DD60);
  swift_getKeyPath();
  v298[0] = v65;
  sub_21C55C604();

  sub_21C543D24(v263, v298);
  swift_getKeyPath();
  *&v294 = v65;
  sub_21C55C604();

  *&v294 = v65;
  swift_getKeyPath();
  sub_21C55C624();

  swift_beginAccess();
  sub_21C5599E0(v298, 0x6174736E49707041, 0xEF6E6F6974616C6CLL);
  swift_endAccess();
  *&v294 = v65;
  swift_getKeyPath();
  sub_21C55C614();

  v211 = v65[8];
  v212 = v271;
  v213 = v266;
  v299 = v266;
  v300 = v271;
  v298[0] = v211;
  swift_getKeyPath();
  *&v294 = v65;

  sub_21C55C604();

  *&v294 = v65;
  swift_getKeyPath();
  sub_21C55C624();

  swift_beginAccess();
  sub_21C5599E0(v298, 0x6C69616D45, 0xE500000000000000);
  swift_endAccess();
  *&v294 = v65;
  swift_getKeyPath();
  sub_21C55C614();

  swift_getKeyPath();
  v298[0] = v65;
  sub_21C55C604();

  sub_21C543D24(v264, v298);
  swift_getKeyPath();
  *&v294 = v65;
  sub_21C55C604();

  *&v294 = v65;
  swift_getKeyPath();
  sub_21C55C624();

  swift_beginAccess();
  sub_21C5599E0(v298, 0x6E6967617373654DLL, 0xE900000000000067);
  swift_endAccess();
  *&v294 = v65;
  swift_getKeyPath();
  sub_21C55C614();

  swift_getKeyPath();
  v298[0] = v65;
  sub_21C55C604();

  sub_21C543D24((v65 + 14), v298);
  swift_getKeyPath();
  *&v294 = v65;
  sub_21C55C604();

  *&v294 = v65;
  swift_getKeyPath();
  sub_21C55C624();

  swift_beginAccess();
  sub_21C5599E0(v298, 0x676E696C6C6143, 0xE700000000000000);
  swift_endAccess();
  *&v294 = v65;
  swift_getKeyPath();
  sub_21C55C614();

  swift_getKeyPath();
  v298[0] = v65;
  sub_21C55C604();

  sub_21C543D24(v265, v298);
  swift_getKeyPath();
  *&v294 = v65;
  sub_21C55C604();

  *&v294 = v65;
  swift_getKeyPath();
  sub_21C55C624();

  swift_beginAccess();
  sub_21C5599E0(v298, 0x746C69466C6C6143, 0xED0000676E697265);
  swift_endAccess();
  *&v294 = v65;
  swift_getKeyPath();
  sub_21C55C614();

  v214 = v65[24];
  v299 = v213;
  v300 = v212;
  v298[0] = v214;
  swift_getKeyPath();
  *&v294 = v65;

  sub_21C55C604();

  *&v294 = v65;
  swift_getKeyPath();
  sub_21C55C624();

  swift_beginAccess();
  sub_21C5599E0(v298, 0x697461676976614ELL, 0xEA00000000006E6FLL);
  swift_endAccess();
  *&v294 = v65;
  swift_getKeyPath();
  sub_21C55C614();

  v215 = v65[25];
  v299 = v213;
  v300 = v212;
  v298[0] = v215;
  swift_getKeyPath();
  *&v294 = v65;

  sub_21C55C604();

  *&v294 = v65;
  swift_getKeyPath();
  sub_21C55C624();

  swift_beginAccess();
  sub_21C5599E0(v298, 0x41726573776F7242, 0xEA00000000007070);
  swift_endAccess();
  *&v294 = v65;
  swift_getKeyPath();
  sub_21C55C614();

  v216 = v65[26];
  v299 = v213;
  v300 = v212;
  v298[0] = v216;
  swift_getKeyPath();
  *&v294 = v65;

  sub_21C55C604();

  *&v294 = v65;
  swift_getKeyPath();
  sub_21C55C624();

  swift_beginAccess();
  sub_21C5599E0(v298, 0x74616C736E617254, 0xEB000000006E6F69);
  swift_endAccess();
  *&v294 = v65;
  swift_getKeyPath();
  sub_21C55C614();

  swift_getKeyPath();
  v298[0] = v65;
  sub_21C55C604();

  sub_21C543D24(v267, v298);
  swift_getKeyPath();
  *&v294 = v65;
  sub_21C55C604();

  *&v294 = v65;
  swift_getKeyPath();
  sub_21C55C624();

  swift_beginAccess();
  sub_21C5599E0(v298, 0xD000000000000011, 0x800000021C55EE90);
  swift_endAccess();
  *&v294 = v65;
  swift_getKeyPath();
  sub_21C55C614();

  swift_getKeyPath();
  v298[0] = v65;
  sub_21C55C604();

  sub_21C543D24((v65 + 32), v298);
  swift_getKeyPath();
  *&v294 = v65;
  sub_21C55C604();

  *&v294 = v65;
  swift_getKeyPath();
  sub_21C55C624();

  swift_beginAccess();
  sub_21C5599E0(v298, 0x6C746361746E6F43, 0xEE00707041737365);
  swift_endAccess();
  *&v294 = v65;
  swift_getKeyPath();
  sub_21C55C614();

  swift_getKeyPath();
  v298[0] = v65;
  sub_21C55C604();

  sub_21C543D24((v65 + 37), v298);
  swift_getKeyPath();
  *&v294 = v65;
  sub_21C55C604();

  *&v294 = v65;
  swift_getKeyPath();
  sub_21C55C624();

  swift_beginAccess();
  sub_21C5599E0(v298, 0x6472616F6279654BLL, 0xE900000000000073);
  swift_endAccess();
  *&v294 = v65;
  swift_getKeyPath();
  sub_21C55C614();

  swift_getKeyPath();
  v298[0] = v65;
  sub_21C55C604();

  v217 = v65[2];
  if (v217 >> 62)
  {
    goto LABEL_149;
  }

  v218 = *((v217 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_95:

  if (v218)
  {
    v219 = 0;
    v290 = (v217 & 0xC000000000000001);
    v220 = MEMORY[0x277D84F90];
    v289 = v217 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v290)
      {
        v221 = MEMORY[0x21CF0B5C0](v219, v217);
        v222 = v219 + 1;
        if (__OFADD__(v219, 1))
        {
LABEL_119:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v219 >= *(v289 + 16))
        {
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
          v218 = sub_21C55CDC4();
          goto LABEL_95;
        }

        v221 = *(v217 + 8 * v219 + 32);

        v222 = v219 + 1;
        if (__OFADD__(v219, 1))
        {
          goto LABEL_119;
        }
      }

      sub_21C55CCA4();
      sub_21C55CC94();
      sub_21C55CC54();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      swift_getKeyPath();
      v298[0] = v221;
      sub_21C54A898(&qword_27CDDD470, type metadata accessor for DefaultAppsSettingsGroup);
      sub_21C55C604();

      v223 = OBJC_IVAR____TtC21DefaultAppsSettingsUI24DefaultAppsSettingsGroup__providers;
      swift_beginAccess();
      v224 = *&v221[v223];

      v225 = *(v224 + 16);
      v226 = v220[2];
      v227 = v226 + v225;
      if (__OFADD__(v226, v225))
      {
        goto LABEL_142;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v227 <= v220[3] >> 1)
      {
        if (!*(v224 + 16))
        {
          goto LABEL_97;
        }
      }

      else
      {
        if (v226 <= v227)
        {
          v229 = v226 + v225;
        }

        else
        {
          v229 = v226;
        }

        v220 = sub_21C54A5C8(isUniquelyReferenced_nonNull_native, v229, 1, v220);
        if (!*(v224 + 16))
        {
LABEL_97:

          if (v225)
          {
            goto LABEL_143;
          }

          goto LABEL_98;
        }
      }

      if ((v220[3] >> 1) - v220[2] < v225)
      {
        goto LABEL_146;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD480, &qword_21C55DDF8);
      swift_arrayInitWithCopy();

      if (v225)
      {
        v230 = v220[2];
        v231 = __OFADD__(v230, v225);
        v232 = v230 + v225;
        if (v231)
        {
          goto LABEL_148;
        }

        v220[2] = v232;
      }

LABEL_98:
      ++v219;
      if (v222 == v218)
      {
        goto LABEL_121;
      }
    }
  }

  v220 = MEMORY[0x277D84F90];
LABEL_121:
  v289 = v220;

  v288 = *(v289 + 16);
  if (v288)
  {
    v287 = sub_21C55CCA4();
    v233 = v289;
    v234 = 0;
    v235 = v289 + 32;
    v236 = MEMORY[0x277D84F98];
    while (1)
    {
      if (v234 >= *(v233 + 16))
      {
        goto LABEL_144;
      }

      sub_21C543EA8(v235, v298);
      v290 = sub_21C55CC94();
      sub_21C55CC54();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      __swift_project_boxed_opaque_existential_1(v298, v299);
      v238 = sub_21C55C694();
      v240 = v239;
      sub_21C543EA8(v298, &v294);
      v241 = swift_isUniquelyReferenced_nonNull_native();
      v291 = v236;
      v243 = sub_21C559DE8(v238, v240);
      v244 = v236[2];
      v245 = (v242 & 1) == 0;
      v246 = v244 + v245;
      if (__OFADD__(v244, v245))
      {
        goto LABEL_145;
      }

      v217 = v242;
      if (v236[3] >= v246)
      {
        if (v241)
        {
          if (v242)
          {
            goto LABEL_123;
          }
        }

        else
        {
          sub_21C55B1CC();
          if (v217)
          {
            goto LABEL_123;
          }
        }
      }

      else
      {
        sub_21C55A114(v246, v241);
        v247 = sub_21C559DE8(v238, v240);
        if ((v217 & 1) != (v248 & 1))
        {
          result = sub_21C55CE54();
          __break(1u);
          return result;
        }

        v243 = v247;
        if (v217)
        {
LABEL_123:

          v236 = v291;
          v237 = (v291[7] + 40 * v243);
          __swift_destroy_boxed_opaque_existential_1(v237);
          sub_21C543DDC(&v294, v237);
          goto LABEL_124;
        }
      }

      v236 = v291;
      v291[(v243 >> 6) + 8] |= 1 << v243;
      v249 = (v236[6] + 16 * v243);
      *v249 = v238;
      v249[1] = v240;
      sub_21C543DDC(&v294, v236[7] + 40 * v243);
      v250 = v236[2];
      v231 = __OFADD__(v250, 1);
      v251 = v250 + 1;
      if (v231)
      {
        goto LABEL_147;
      }

      v236[2] = v251;
LABEL_124:
      ++v234;

      __swift_destroy_boxed_opaque_existential_1(v298);
      v235 += 40;
      v233 = v289;
      if (v288 == v234)
      {
        goto LABEL_140;
      }
    }
  }

  v236 = MEMORY[0x277D84F98];
LABEL_140:

  v252 = swift_getKeyPath();
  MEMORY[0x28223BE20](v252);
  v253 = v283;
  *(&v256 - 2) = v283;
  *(&v256 - 1) = v236;
  v298[0] = v253;
  sub_21C55C5F4();

  (*(v270 + 8))(v262, v279);
  v254 = *MEMORY[0x277D85DE8];
  return v253;
}

double sub_21C549694@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  swift_getKeyPath();
  sub_21C54A898(&qword_27CDDD4B0, type metadata accessor for DefaultAppsSettingsModel);
  sub_21C55C604();

  v8 = *(v3 + 344);
  if (*(v8 + 16))
  {
    v9 = *(v4 + 344);

    v10 = sub_21C559DE8(a1, a2);
    if (v11)
    {
      sub_21C543EA8(*(v8 + 56) + 40 * v10, a3);

      return result;
    }
  }

  *(a3 + 32) = 0;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

uint64_t sub_21C54979C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_21C55CCA4();
  sub_21C55CC94();
  sub_21C55CC54();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  sub_21C543EA8(a1, v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD480, &qword_21C55DDF8);
  type metadata accessor for DefaultLSAppsSettingsProvider();
  if (!swift_dynamicCast())
  {
    v12 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v13 = sub_21C55C694();
    v15 = v14;
    if (sub_21C55CB94() == v13 && v16 == v15)
    {

      goto LABEL_12;
    }

    v17 = sub_21C55CE44();

    if (v17)
    {
LABEL_12:

      swift_getKeyPath();
      sub_21C54A898(&qword_27CDDD4B0, type metadata accessor for DefaultAppsSettingsModel);
      sub_21C55C604();

      swift_beginAccess();
      sub_21C543D24(a3 + 24, &v34);
      if (*(&v35 + 1))
      {
LABEL_13:
        sub_21C543DDC(&v34, v37);
        __swift_project_boxed_opaque_existential_1(v37, v37[3]);
        *(&v35 + 1) = swift_getDynamicType();
        v36 = v37[4];
        __swift_allocate_boxed_opaque_existential_1(&v34);

        sub_21C55C6A4();
        __swift_destroy_boxed_opaque_existential_1(v37);
        sub_21C544404(&v38, &unk_27CDDDA40, &qword_21C55DD60);
        v38 = v34;
        v39 = v35;
        v40 = v36;
        goto LABEL_20;
      }

      sub_21C544404(&v34, &unk_27CDDDA40, &qword_21C55DD60);
      if (qword_27CDDD3C0 != -1)
      {
        swift_once();
      }

      v18 = sub_21C55C714();
      __swift_project_value_buffer(v18, qword_27CDDE7A8);
      v19 = sub_21C55C6F4();
      v20 = sub_21C55CCE4();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        v22 = "Could not find default marketplace provider.";
LABEL_18:
        _os_log_impl(&dword_21C53D000, v19, v20, v22, v21, 2u);
        MEMORY[0x21CF0BC40](v21, -1, -1);
        goto LABEL_19;
      }

      goto LABEL_19;
    }

    if (sub_21C55CBB4() == v13 && v25 == v15)
    {
    }

    else
    {
      v26 = sub_21C55CE44();

      if ((v26 & 1) == 0)
      {
        if (sub_21C55CB24() == v13 && v28 == v15)
        {
        }

        else
        {
          v29 = sub_21C55CE44();

          if ((v29 & 1) == 0)
          {
            if (sub_21C55CB54() == v13 && v31 == v15)
            {
            }

            else
            {
              v32 = sub_21C55CE44();

              if ((v32 & 1) == 0)
              {
                goto LABEL_20;
              }
            }

            swift_getKeyPath();
            sub_21C54A898(&qword_27CDDD4B0, type metadata accessor for DefaultAppsSettingsModel);
            sub_21C55C604();

            swift_beginAccess();
            sub_21C543D24(a3 + 112, &v34);
            if (*(&v35 + 1))
            {
              goto LABEL_13;
            }

            sub_21C544404(&v34, &unk_27CDDDA40, &qword_21C55DD60);
            if (qword_27CDDD3C0 != -1)
            {
              swift_once();
            }

            v33 = sub_21C55C714();
            __swift_project_value_buffer(v33, qword_27CDDE7A8);
            v19 = sub_21C55C6F4();
            v20 = sub_21C55CCE4();
            if (os_log_type_enabled(v19, v20))
            {
              v21 = swift_slowAlloc();
              *v21 = 0;
              v22 = "Could not find default phone calls provider.";
              goto LABEL_18;
            }

            goto LABEL_19;
          }
        }

        swift_getKeyPath();
        sub_21C54A898(&qword_27CDDD4B0, type metadata accessor for DefaultAppsSettingsModel);
        sub_21C55C604();

        swift_beginAccess();
        sub_21C543D24(a3 + 72, &v34);
        if (*(&v35 + 1))
        {
          goto LABEL_13;
        }

        sub_21C544404(&v34, &unk_27CDDDA40, &qword_21C55DD60);
        if (qword_27CDDD3C0 != -1)
        {
          swift_once();
        }

        v30 = sub_21C55C714();
        __swift_project_value_buffer(v30, qword_27CDDE7A8);
        v19 = sub_21C55C6F4();
        v20 = sub_21C55CCE4();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          *v21 = 0;
          v22 = "Could not find default messaging provider.";
          goto LABEL_18;
        }

LABEL_19:

        goto LABEL_20;
      }
    }

    swift_getKeyPath();
    sub_21C54A898(&qword_27CDDD4B0, type metadata accessor for DefaultAppsSettingsModel);
    sub_21C55C604();

    swift_beginAccess();
    sub_21C543D24(a3 + 256, &v34);
    if (*(&v35 + 1))
    {
      goto LABEL_13;
    }

    sub_21C544404(&v34, &unk_27CDDDA40, &qword_21C55DD60);
    if (qword_27CDDD3C0 != -1)
    {
      swift_once();
    }

    v27 = sub_21C55C714();
    __swift_project_value_buffer(v27, qword_27CDDE7A8);
    v19 = sub_21C55C6F4();
    v20 = sub_21C55CCE4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      v22 = "Could not find default contactless payment provider.";
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  sub_21C543EA8(a1, v37);
  swift_dynamicCast();
  v8 = *(v34 + 88);

  v9 = *(a2 + 16);
  v10 = (a2 + 32);
  while (v9)
  {
    v11 = *v10++;
    --v9;
    if (v11 == v8)
    {
      sub_21C544404(&v38, &unk_27CDDDA40, &qword_21C55DD60);
      sub_21C543EA8(a1, &v38);
      break;
    }
  }

LABEL_20:
  v23 = v39;
  *a4 = v38;
  *(a4 + 16) = v23;
  *(a4 + 32) = v40;
}

char *sub_21C54A06C()
{
  v1 = *(v0 + 2);

  sub_21C544404((v0 + 24), &unk_27CDDDA40, &qword_21C55DD60);
  v2 = *(v0 + 8);

  sub_21C544404((v0 + 72), &unk_27CDDDA40, &qword_21C55DD60);
  sub_21C544404((v0 + 112), &unk_27CDDDA40, &qword_21C55DD60);
  sub_21C544404((v0 + 152), &unk_27CDDDA40, &qword_21C55DD60);
  v3 = *(v0 + 24);

  v4 = *(v0 + 25);

  v5 = *(v0 + 26);

  sub_21C544404((v0 + 216), &unk_27CDDDA40, &qword_21C55DD60);
  sub_21C544404((v0 + 256), &unk_27CDDDA40, &qword_21C55DD60);
  sub_21C544404((v0 + 296), &unk_27CDDDA40, &qword_21C55DD60);
  v6 = *(v0 + 42);

  v7 = *(v0 + 43);

  v8 = *(v0 + 44);

  v9 = OBJC_IVAR____TtC21DefaultAppsSettingsUI24DefaultAppsSettingsModel___observationRegistrar;
  v10 = sub_21C55C644();
  (*(*(v10 - 8) + 8))(&v0[v9], v10);
  return v0;
}

uint64_t sub_21C54A194()
{
  sub_21C54A06C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for DefaultAppsSettingsModel()
{
  result = qword_28120F480;
  if (!qword_28120F480)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21C54A240()
{
  result = sub_21C55C644();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_21C54A314()
{
  sub_21C55CE64();
  MEMORY[0x21CF0B6B0](0);
  return sub_21C55CE84();
}

uint64_t sub_21C54A380()
{
  sub_21C55CE64();
  MEMORY[0x21CF0B6B0](0);
  return sub_21C55CE84();
}

id sub_21C54A3E8(uint64_t a1, uint64_t a2, char a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = sub_21C55CA94();

  v11[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_21C55C504();

    swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

char *sub_21C54A4C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD4D8, &qword_21C55E130);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_21C54A5C8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD4D0, &qword_21C55E128);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD480, &qword_21C55DDF8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21C54A710(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD4E0, &qword_21C55E160);
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_21C54A898(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21C54A998()
{
  result = qword_27CDDD4C8;
  if (!qword_27CDDD4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDDD4C8);
  }

  return result;
}

uint64_t sub_21C54AA40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDDDA40, &qword_21C55DD60);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C54AAB0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 344);
  *(v1 + 344) = *(v0 + 24);
}

uint64_t sub_21C54AB28()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  *(v1 + 16) = *(v0 + 24);
}

char *sub_21C54AB64(char a1, char a2)
{
  if (a2)
  {
    return MEMORY[0x277D84F90];
  }

  if ((a1 & 2) == 0)
  {
    v2 = MEMORY[0x277D84F90];
    if ((a1 & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  v2 = sub_21C54A710(0, 1, 1, MEMORY[0x277D84F90]);
  v4 = *(v2 + 2);
  v5 = *(v2 + 3);
  v6 = v4 + 1;
  if (v4 >= v5 >> 1)
  {
    v41 = v4 + 1;
    v23 = v2;
    v24 = *(v2 + 2);
    v25 = sub_21C54A710((v5 > 1), v4 + 1, 1, v23);
    v4 = v24;
    v6 = v41;
    v2 = v25;
  }

  *(v2 + 2) = v6;
  *&v2[8 * v4 + 32] = 1;
  if ((a1 & 4) != 0)
  {
LABEL_9:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_21C54A710(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v8 = *(v2 + 3);
    v9 = v7 + 1;
    if (v7 >= v8 >> 1)
    {
      v42 = v7 + 1;
      v26 = v2;
      v27 = *(v2 + 2);
      v28 = sub_21C54A710((v8 > 1), v7 + 1, 1, v26);
      v7 = v27;
      v9 = v42;
      v2 = v28;
    }

    *(v2 + 2) = v9;
    *&v2[8 * v7 + 32] = 2;
  }

LABEL_14:
  if ((a1 & 8) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_21C54A710(0, *(v2 + 2) + 1, 1, v2);
    }

    v10 = *(v2 + 2);
    v11 = *(v2 + 3);
    v12 = v10 + 1;
    if (v10 >= v11 >> 1)
    {
      v43 = v10 + 1;
      v29 = v2;
      v30 = *(v2 + 2);
      v31 = sub_21C54A710((v11 > 1), v10 + 1, 1, v29);
      v10 = v30;
      v12 = v43;
      v2 = v31;
    }

    *(v2 + 2) = v12;
    *&v2[8 * v10 + 32] = 3;
    if ((a1 & 0x10) == 0)
    {
LABEL_16:
      if ((a1 & 0x20) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_29;
    }
  }

  else if ((a1 & 0x10) == 0)
  {
    goto LABEL_16;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_21C54A710(0, *(v2 + 2) + 1, 1, v2);
  }

  v13 = *(v2 + 2);
  v14 = *(v2 + 3);
  v15 = v13 + 1;
  if (v13 >= v14 >> 1)
  {
    v44 = v13 + 1;
    v32 = v2;
    v33 = *(v2 + 2);
    v34 = sub_21C54A710((v14 > 1), v13 + 1, 1, v32);
    v13 = v33;
    v15 = v44;
    v2 = v34;
  }

  *(v2 + 2) = v15;
  *&v2[8 * v13 + 32] = 4;
  if ((a1 & 0x20) == 0)
  {
LABEL_17:
    if ((a1 & 0x40) == 0)
    {
      return v2;
    }

    goto LABEL_34;
  }

LABEL_29:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_21C54A710(0, *(v2 + 2) + 1, 1, v2);
  }

  v16 = *(v2 + 2);
  v17 = *(v2 + 3);
  v18 = v16 + 1;
  if (v16 >= v17 >> 1)
  {
    v45 = v16 + 1;
    v35 = v2;
    v36 = *(v2 + 2);
    v37 = sub_21C54A710((v17 > 1), v16 + 1, 1, v35);
    v16 = v36;
    v18 = v45;
    v2 = v37;
  }

  *(v2 + 2) = v18;
  *&v2[8 * v16 + 32] = 5;
  if ((a1 & 0x40) != 0)
  {
LABEL_34:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_21C54A710(0, *(v2 + 2) + 1, 1, v2);
    }

    v19 = *(v2 + 2);
    v20 = *(v2 + 3);
    v21 = v19 + 1;
    if (v19 >= v20 >> 1)
    {
      v38 = v2;
      v39 = *(v2 + 2);
      v40 = sub_21C54A710((v20 > 1), v19 + 1, 1, v38);
      v19 = v39;
      v2 = v40;
    }

    *(v2 + 2) = v21;
    *&v2[8 * v19 + 32] = 6;
  }

  return v2;
}

uint64_t getEnumTagSinglePayload for Feature(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for Feature(_WORD *result, int a2, int a3)
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

unint64_t sub_21C54AFB4()
{
  result = qword_27CDDD4E8;
  if (!qword_27CDDD4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDDD4E8);
  }

  return result;
}

uint64_t DefaultAppsSettingsView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v102 = a1;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD490, &qword_21C55DF40);
  v3 = *(*(v100 - 8) + 64);
  MEMORY[0x28223BE20](v100);
  v101 = &v74 - v4;
  v95 = sub_21C55C7A4();
  v94 = *(v95 - 8);
  v5 = *(v94 + 64);
  MEMORY[0x28223BE20](v95);
  v93 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for DefaultAppsSettingsView();
  v98 = *(v103 - 8);
  v7 = *(v98 + 64);
  MEMORY[0x28223BE20](v103);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD4F0, &qword_21C55E218);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v74 - v11;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD4F8, &qword_21C55E220);
  v76 = *(v82 - 8);
  v13 = *(v76 + 64);
  MEMORY[0x28223BE20](v82);
  v15 = &v74 - v14;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD500, &qword_21C55E228);
  v80 = *(v83 - 8);
  v16 = *(v80 + 64);
  MEMORY[0x28223BE20](v83);
  v78 = &v74 - v17;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD508, &qword_21C55E230);
  v79 = *(v85 - 8);
  v18 = *(v79 + 64);
  MEMORY[0x28223BE20](v85);
  v77 = &v74 - v19;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD510, &qword_21C55E238);
  v84 = *(v86 - 8);
  v20 = *(v84 + 64);
  MEMORY[0x28223BE20](v86);
  v81 = &v74 - v21;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD518, &qword_21C55E240);
  v91 = *(v92 - 8);
  v22 = *(v91 + 64);
  MEMORY[0x28223BE20](v92);
  v90 = &v74 - v23;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD520, &qword_21C55E248);
  v24 = *(*(v96 - 8) + 64);
  MEMORY[0x28223BE20](v96);
  v97 = &v74 - v25;
  v104 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD528, &qword_21C55E250);
  sub_21C54EDD8(&qword_27CDDD530, &qword_27CDDD528, &qword_21C55E250);
  sub_21C55C804();
  v99 = v2;
  sub_21C54D278(v2, &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = (*(v98 + 80) + 16) & ~*(v98 + 80);
  v88 = *(v98 + 80);
  v87 = v26 + v7;
  v27 = swift_allocObject();
  v89 = v26;
  v98 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C54D2DC(v98, v27 + v26);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD540, &qword_21C55E260);
  v29 = sub_21C54EDD8(&qword_27CDDD548, &qword_27CDDD4F0, &qword_21C55E218);
  v30 = sub_21C54D3C0();
  v31 = MEMORY[0x277D837E0];
  v75 = v15;
  sub_21C55C8E4();

  (*(v9 + 8))(v12, v8);
  sub_21C55C7B4();
  if (qword_27CDDD3A0 != -1)
  {
    swift_once();
  }

  v32 = qword_27CDDE790;
  v33 = sub_21C55C814();
  v35 = v34;
  v37 = v36;
  v107 = v8;
  v108 = MEMORY[0x277D837D0];
  v109 = v28;
  v110 = v29;
  v111 = v31;
  v112 = v30;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v39 = v78;
  v40 = v82;
  v41 = v75;
  sub_21C55C8C4();
  sub_21C54D4D8(v33, v35, v37 & 1);

  (*(v76 + 8))(v41, v40);
  v42 = v94;
  v43 = v93;
  v44 = v95;
  (*(v94 + 104))(v93, *MEMORY[0x277CDDDC0], v95);
  v107 = v40;
  v108 = OpaqueTypeConformance2;
  v45 = swift_getOpaqueTypeConformance2();
  v46 = v77;
  v47 = v83;
  sub_21C55C8F4();
  (*(v42 + 8))(v43, v44);
  (*(v80 + 8))(v39, v47);
  v107 = v47;
  v108 = v45;
  v48 = swift_getOpaqueTypeConformance2();
  v49 = v81;
  v50 = v85;
  sub_21C55C844();
  (*(v79 + 8))(v46, v50);
  v51 = v99;
  v52 = (v99 + *(v103 + 28));
  v54 = *v52;
  v53 = v52[1];
  v107 = v54;
  v108 = v53;
  v105 = v50;
  v106 = v48;
  v55 = swift_getOpaqueTypeConformance2();
  v56 = sub_21C54D484();
  v57 = v90;
  v58 = v86;
  v59 = MEMORY[0x277D837D0];
  sub_21C55C854();
  v60 = (*(v84 + 8))(v49, v58);
  MEMORY[0x28223BE20](v60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD560, &qword_21C55E268);
  v107 = v58;
  v108 = v59;
  v109 = v55;
  v110 = v56;
  swift_getOpaqueTypeConformance2();
  v61 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDDD568, &qword_21C55E270);
  v62 = sub_21C54EDD8(&qword_27CDDD570, &qword_27CDDD568, &qword_21C55E270);
  v107 = v61;
  v108 = v62;
  swift_getOpaqueTypeConformance2();
  v63 = v97;
  v64 = v92;
  sub_21C55C904();
  (*(v91 + 8))(v57, v64);
  v65 = v98;
  sub_21C54D278(v51, v98);
  v66 = swift_allocObject();
  v67 = v89;
  sub_21C54D2DC(v65, v66 + v89);
  v68 = (v63 + *(v96 + 36));
  *v68 = sub_21C54DCE4;
  v68[1] = v66;
  v68[2] = 0;
  v68[3] = 0;
  v69 = *(v103 + 20);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD538, &qword_21C55E258);
  v71 = v101;
  MEMORY[0x21CF0B1C0](v70);
  sub_21C54D278(v51, v65);
  v72 = swift_allocObject();
  sub_21C54D2DC(v65, v72 + v67);
  sub_21C54E2B0();
  sub_21C54E5C0();
  sub_21C55C914();

  sub_21C544404(v71, &qword_27CDDD490, &qword_21C55DF40);
  return sub_21C53EF18(v63);
}

uint64_t type metadata accessor for DefaultAppsSettingsView()
{
  result = qword_28120F528;
  if (!qword_28120F528)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21C54BDC0@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v46 = a2;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD5B8, &qword_21C55E310);
  v44 = *(v47 - 8);
  v3 = *(v44 + 64);
  v4 = MEMORY[0x28223BE20](v47);
  v45 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v39 - v6;
  v42 = sub_21C55CA14();
  v8 = *(v42 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x28223BE20](v42);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v39 - v13;
  sub_21C55CCA4();
  v43 = sub_21C55CC94();
  sub_21C55CC54();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v15 = type metadata accessor for DefaultAppsSettingsView();
  v16 = *(v15 + 32);
  v17 = (a1 + *(v15 + 28));
  v18 = *v17;
  v19 = v17[1];
  v21 = *(a1 + v16);
  v20 = *(a1 + v16 + 8);

  v41 = v14;
  sub_21C55CA04();
  v22 = a1[1];
  v49 = *a1;
  v50 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD5B0, &unk_21C55E300);
  sub_21C55C944();
  v23 = v48;
  swift_getKeyPath();
  v49 = v23;
  sub_21C54EFC8(&qword_27CDDD4B0, type metadata accessor for DefaultAppsSettingsModel);
  sub_21C55C604();

  v24 = *(v23 + 16);

  v49 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD5C0, &qword_21C55E340);
  sub_21C55C5B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD5C8, &qword_21C55E348);
  sub_21C54EDD8(&qword_27CDDD5D0, &qword_27CDDD5C0, &qword_21C55E340);
  sub_21C54EB88();
  sub_21C54EFC8(&qword_27CDDD620, type metadata accessor for DefaultAppsSettingsGroup);
  v25 = v7;
  v40 = v7;
  sub_21C55C9D4();
  v26 = v8[2];
  v27 = v12;
  v28 = v12;
  v29 = v42;
  v26(v28, v14, v42);
  v31 = v44;
  v30 = v45;
  v39 = *(v44 + 16);
  v32 = v25;
  v33 = v47;
  v39(v45, v32, v47);
  v34 = v46;
  v26(v46, v27, v29);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD628, &qword_21C55E370);
  v39(&v34[*(v35 + 48)], v30, v33);
  v36 = *(v31 + 8);
  v36(v40, v33);
  v37 = v8[1];
  v37(v41, v29);
  v36(v30, v33);
  v37(v27, v29);
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

uint64_t sub_21C54C30C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD5E8, &qword_21C55E350);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v16 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD5C8, &qword_21C55E348);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v16 - v11;
  v13 = *a1;
  sub_21C55CCA4();
  sub_21C55CC94();
  sub_21C55CC54();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath();
  v16[1] = v13;
  sub_21C54EFC8(&qword_27CDDD470, type metadata accessor for DefaultAppsSettingsGroup);
  sub_21C55C604();

  if (*(v13 + OBJC_IVAR____TtC21DefaultAppsSettingsUI24DefaultAppsSettingsGroup__isVisible) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD5F8, &qword_21C55E358);
    sub_21C54EC9C();
    sub_21C55C9E4();
    (*(v5 + 32))(v12, v8, v4);
    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  (*(v5 + 56))(v12, v14, 1, v4);
  sub_21C54EE20(v12, a2, &qword_27CDDD5C8, &qword_21C55E348);
}

uint64_t sub_21C54C5B4(uint64_t a1)
{
  sub_21C55CCA4();
  sub_21C55CC94();
  sub_21C55CC54();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath();
  sub_21C54EFC8(&qword_27CDDD470, type metadata accessor for DefaultAppsSettingsGroup);
  sub_21C55C604();

  v2 = OBJC_IVAR____TtC21DefaultAppsSettingsUI24DefaultAppsSettingsGroup__providers;
  swift_beginAccess();
  v4 = *(a1 + v2);
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD630, &qword_21C55E3F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD608, &qword_21C55E360);
  sub_21C54EDD8(&qword_27CDDD638, &qword_27CDDD630, &qword_21C55E3F0);
  sub_21C54ED20();
  sub_21C55C9B4();
}

uint64_t sub_21C54C7AC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD618, &qword_21C55E368);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v17 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD608, &qword_21C55E360);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v17 - v11;
  sub_21C55CCA4();
  sub_21C55CC94();
  sub_21C55CC54();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (sub_21C55C6C4())
  {
    v14 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v17[0] = sub_21C55C694();
    v17[1] = v15;
    MEMORY[0x28223BE20](v17[0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD640, &qword_21C55E3F8);
    sub_21C54EE90();
    sub_21C55C754();
    (*(v5 + 32))(v12, v8, v4);
    (*(v5 + 56))(v12, 0, 1, v4);
  }

  else
  {
    (*(v5 + 56))(v12, 1, 1, v4);
  }

  sub_21C54EE20(v12, a2, &qword_27CDDD608, &qword_21C55E360);
}

uint64_t sub_21C54CA78(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD658, &qword_21C55E400);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - v5;
  sub_21C55CCA4();
  sub_21C55CC94();
  sub_21C55CC54();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v8 = MEMORY[0x28223BE20](isCurrentExecutor);
  *(&v11 - 2) = a1;
  MEMORY[0x28223BE20](v8);
  *(&v11 - 2) = a1;
  sub_21C55C744();
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21C55C694();
  sub_21C54EF4C();
  sub_21C55C8A4();

  (*(v3 + 8))(v6, v2);
}

uint64_t sub_21C54CCA4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_21C55CCA4();
  sub_21C55CC94();
  sub_21C55CC54();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21C55C674();
  sub_21C54D484();
  v5 = sub_21C55C824();
  v7 = v6;
  v9 = v8;
  v11 = v10;

  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v9 & 1;
  *(a2 + 24) = v11;
  return result;
}

uint64_t sub_21C54CDB0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_21C55CCA4();
  sub_21C55CC94();
  sub_21C55CC54();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21C55C664();
  sub_21C54D484();
  v5 = sub_21C55C824();
  v7 = v6;
  v9 = v8;
  v11 = v10;

  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v9 & 1;
  *(a2 + 24) = v11;
  return result;
}

uint64_t sub_21C54CEAC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD5A8, &qword_21C55E2F8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD540, &qword_21C55E260);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v23 - v13;
  v15 = *a1;
  v16 = a1[1];
  sub_21C55CCA4();
  v25 = sub_21C55CC94();
  sub_21C55CC54();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v17 = a2[1];
  v26 = *a2;
  v27 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD5B0, &unk_21C55E300);
  sub_21C55C944();
  sub_21C549694(v15, v16, &v28);

  if (v29)
  {
    v24 = a3;
    sub_21C543DDC(&v28, v30);
    __swift_project_boxed_opaque_existential_1(v30, v31);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v23 = &v23;
    v19 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20](AssociatedTypeWitness);
    sub_21C55C6B4();
    swift_getAssociatedConformanceWitness();
    v26 = sub_21C55C974();
    __swift_project_boxed_opaque_existential_1(v30, v31);
    v20 = sub_21C55C684();
    if (!v21)
    {
      __swift_project_boxed_opaque_existential_1(v30, v31);
      v20 = sub_21C55C664();
    }

    *&v28 = v20;
    *(&v28 + 1) = v21;
    sub_21C54D484();
    sub_21C55C8D4();

    (*(v7 + 32))(v14, v10, v6);
    (*(v7 + 56))(v14, 0, 1, v6);
    __swift_destroy_boxed_opaque_existential_1(v30);
    a3 = v24;
  }

  else
  {
    sub_21C544404(&v28, &unk_27CDDDA40, &qword_21C55DD60);
    (*(v7 + 56))(v14, 1, 1, v6);
  }

  sub_21C53F17C(v14, a3);
}

uint64_t sub_21C54D278(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DefaultAppsSettingsView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C54D2DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DefaultAppsSettingsView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C54D340@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for DefaultAppsSettingsView() - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_21C54CEAC(a1, v6, a2);
}

unint64_t sub_21C54D3C0()
{
  result = qword_27CDDD550;
  if (!qword_27CDDD550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDDD540, &qword_21C55E260);
    sub_21C54D484();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDDD550);
  }

  return result;
}

unint64_t sub_21C54D484()
{
  result = qword_27CDDD558;
  if (!qword_27CDDD558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDDD558);
  }

  return result;
}

uint64_t sub_21C54D4D8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_21C54D4E8(uint64_t a1)
{
  v2 = sub_21C55C7E4();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD568, &qword_21C55E270);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  sub_21C55CCA4();
  sub_21C55CC94();
  sub_21C55CC54();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = sub_21C55C7D4();
  MEMORY[0x28223BE20](v9);
  *(&v12 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD590, &qword_21C55E2E8);
  sub_21C54EB04();
  sub_21C55C724();
  v10 = sub_21C54EDD8(&qword_27CDDD570, &qword_27CDDD568, &qword_21C55E270);
  MEMORY[0x21CF0B030](v8, v4, v10);
  (*(v5 + 8))(v8, v4);
}

double sub_21C54D734@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_21C55CCA4();
  sub_21C55CC94();
  sub_21C55CC54();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_21C55C7B4();
  if (qword_27CDDD3A0 != -1)
  {
    swift_once();
  }

  v4 = qword_27CDDE790;
  v5 = sub_21C55C814();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = (a1 + *(type metadata accessor for DefaultAppsSettingsView() + 24));
  v15 = *v12;
  v16 = v12[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD5A0, &qword_21C55E2F0);
  sub_21C55C944();

  result = v14;
  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v9 & 1;
  *(a2 + 24) = v11;
  *(a2 + 32) = v14;
  return result;
}

uint64_t sub_21C54D8E8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD490, &qword_21C55DF40);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v27 - v2;
  v4 = sub_21C55C574();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  sub_21C55CCA4();
  v12 = sub_21C55CC94();
  sub_21C55CC54();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = *(type metadata accessor for DefaultAppsSettingsView() + 20);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD538, &qword_21C55E258);
  MEMORY[0x21CF0B1C0](v14);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_21C544404(v3, &qword_27CDDD490, &qword_21C55DF40);
  }

  else
  {
    (*(v5 + 32))(v11, v3, v4);
    if (qword_27CDDD3C0 != -1)
    {
      swift_once();
    }

    v15 = sub_21C55C714();
    __swift_project_value_buffer(v15, qword_27CDDE7A8);
    (*(v5 + 16))(v9, v11, v4);
    v16 = sub_21C55C6F4();
    v17 = sub_21C55CCF4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29 = v12;
      v30 = v28;
      *v18 = 136380675;
      sub_21C54EFC8(&qword_27CDDD4B8, MEMORY[0x277CC9260]);
      v19 = sub_21C55CE34();
      v21 = v20;
      v22 = *(v5 + 8);
      v22(v9, v4);
      v23 = sub_21C556F20(v19, v21, &v30);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_21C53D000, v16, v17, "Received deep link request on appear with URL: %{private}s", v18, 0xCu);
      v24 = v28;
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x21CF0BC40](v24, -1, -1);
      MEMORY[0x21CF0BC40](v18, -1, -1);

      v22(v11, v4);
    }

    else
    {

      v25 = *(v5 + 8);
      v25(v9, v4);
      v25(v11, v4);
    }
  }
}

uint64_t sub_21C54DCE4()
{
  v0 = *(*(type metadata accessor for DefaultAppsSettingsView() - 8) + 80);

  return sub_21C54D8E8();
}

void sub_21C54DD44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD490, &qword_21C55DF40);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v29 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v29 - v12;
  sub_21C55CCA4();
  v14 = sub_21C55CC94();
  sub_21C55CC54();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_27CDDD3C0 != -1)
  {
    swift_once();
  }

  v15 = sub_21C55C714();
  __swift_project_value_buffer(v15, qword_27CDDE7A8);
  sub_21C54EA8C(a1, v13);
  sub_21C54EA8C(a2, v11);
  v16 = sub_21C55C6F4();
  v17 = sub_21C55CCF4();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v30 = v19;
    *v18 = 136380931;
    sub_21C54EA8C(v13, v8);
    v20 = sub_21C55CAE4();
    v29 = v14;
    v21 = v20;
    v23 = v22;
    sub_21C544404(v13, &qword_27CDDD490, &qword_21C55DF40);
    v24 = sub_21C556F20(v21, v23, &v30);

    *(v18 + 4) = v24;
    *(v18 + 12) = 2081;
    sub_21C54EA8C(v11, v8);
    v25 = sub_21C55CAE4();
    v27 = v26;
    sub_21C544404(v11, &qword_27CDDD490, &qword_21C55DF40);
    v28 = sub_21C556F20(v25, v27, &v30);

    *(v18 + 14) = v28;
    _os_log_impl(&dword_21C53D000, v16, v17, "Deep link URL changed from %{private}s to %{private}s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CF0BC40](v19, -1, -1);
    MEMORY[0x21CF0BC40](v18, -1, -1);
  }

  else
  {

    sub_21C544404(v11, &qword_27CDDD490, &qword_21C55DF40);
    sub_21C544404(v13, &qword_27CDDD490, &qword_21C55DF40);
  }
}

uint64_t objectdestroyTm()
{
  v1 = type metadata accessor for DefaultAppsSettingsView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = *(v0 + v3 + 8);

  v8 = (v0 + v3 + v1[5]);
  v9 = *v8;

  v10 = *(v8 + 1);

  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD538, &qword_21C55E258) + 32);
  v12 = sub_21C55C574();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(&v8[v11], 1, v12))
  {
    (*(v13 + 8))(&v8[v11], v12);
  }

  v14 = *(v5 + v1[6] + 8);

  v15 = *(v5 + v1[7] + 8);

  v16 = *(v5 + v1[8] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

void sub_21C54E230(uint64_t a1, uint64_t a2)
{
  v4 = *(*(type metadata accessor for DefaultAppsSettingsView() - 8) + 80);

  sub_21C54DD44(a1, a2);
}

unint64_t sub_21C54E2B0()
{
  result = qword_27CDDD578;
  if (!qword_27CDDD578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDDD520, &qword_21C55E248);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDDD518, &qword_21C55E240);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDDD560, &qword_21C55E268);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDDD510, &qword_21C55E238);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDDD508, &qword_21C55E230);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDDD500, &qword_21C55E228);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDDD4F8, &qword_21C55E220);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDDD4F0, &qword_21C55E218);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDDD540, &qword_21C55E260);
    sub_21C54EDD8(&qword_27CDDD548, &qword_27CDDD4F0, &qword_21C55E218);
    sub_21C54D3C0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21C54D484();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDDD568, &qword_21C55E270);
    sub_21C54EDD8(&qword_27CDDD570, &qword_27CDDD568, &qword_21C55E270);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDDD578);
  }

  return result;
}

unint64_t sub_21C54E5C0()
{
  result = qword_27CDDD580;
  if (!qword_27CDDD580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDDD490, &qword_21C55DF40);
    sub_21C54EFC8(&qword_27CDDD588, MEMORY[0x277CC9260]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDDD580);
  }

  return result;
}

uint64_t DefaultAppsSettingsView.init(deepLinkURL:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for DefaultAppsSettingsModel();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_21C5464EC();
  sub_21C55C934();
  *a2 = v24;
  a2[1] = v25;
  v7 = type metadata accessor for DefaultAppsSettingsView();
  v8 = (a2 + v7[6]);
  sub_21C55C934();
  *v8 = v24;
  v8[1] = v25;
  v9 = v7[7];
  if (qword_27CDDD3A0 != -1)
  {
    swift_once();
  }

  v10 = (a2 + v9);
  v11 = qword_27CDDE790;
  v12 = sub_21C55CA94();
  v13 = [v11 localizedStringForKey:v12 value:0 table:0];

  v14 = sub_21C55CAC4();
  v16 = v15;

  *v10 = v14;
  v10[1] = v16;
  v17 = (a2 + v7[8]);
  v18 = sub_21C55CA94();
  v19 = [v11 localizedStringForKey:v18 value:0 table:0];

  v20 = sub_21C55CAC4();
  v22 = v21;

  *v17 = v20;
  v17[1] = v22;
  return sub_21C54EE20(a1, a2 + v7[5], &qword_27CDDD538, &qword_21C55E258);
}

void sub_21C54E8D4()
{
  sub_21C54E980();
  if (v0 <= 0x3F)
  {
    sub_21C54E9D8();
    if (v1 <= 0x3F)
    {
      sub_21C54EA3C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21C54E980()
{
  if (!qword_28120F360)
  {
    type metadata accessor for DefaultAppsSettingsModel();
    v0 = sub_21C55C954();
    if (!v1)
    {
      atomic_store(v0, &qword_28120F360);
    }
  }
}

void sub_21C54E9D8()
{
  if (!qword_28120F350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDDD490, &qword_21C55DF40);
    v0 = sub_21C55C9A4();
    if (!v1)
    {
      atomic_store(v0, &qword_28120F350);
    }
  }
}

void sub_21C54EA3C()
{
  if (!qword_28120F358)
  {
    v0 = sub_21C55C954();
    if (!v1)
    {
      atomic_store(v0, &qword_28120F358);
    }
  }
}

uint64_t sub_21C54EA8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD490, &qword_21C55DF40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21C54EB04()
{
  result = qword_27CDDD598;
  if (!qword_27CDDD598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDDD590, &qword_21C55E2E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDDD598);
  }

  return result;
}

unint64_t sub_21C54EB88()
{
  result = qword_27CDDD5D8;
  if (!qword_27CDDD5D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDDD5C8, &qword_21C55E348);
    sub_21C54EC0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDDD5D8);
  }

  return result;
}

unint64_t sub_21C54EC0C()
{
  result = qword_27CDDD5E0;
  if (!qword_27CDDD5E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDDD5E8, &qword_21C55E350);
    sub_21C54EC9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDDD5E0);
  }

  return result;
}

unint64_t sub_21C54EC9C()
{
  result = qword_27CDDD5F0;
  if (!qword_27CDDD5F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDDD5F8, &qword_21C55E358);
    sub_21C54ED20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDDD5F0);
  }

  return result;
}

unint64_t sub_21C54ED20()
{
  result = qword_27CDDD600;
  if (!qword_27CDDD600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDDD608, &qword_21C55E360);
    sub_21C54EDD8(&qword_27CDDD610, &qword_27CDDD618, &qword_21C55E368);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDDD600);
  }

  return result;
}

uint64_t sub_21C54EDD8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_21C54EE20(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_21C54EE90()
{
  result = qword_27CDDD648;
  if (!qword_27CDDD648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDDD640, &qword_21C55E3F8);
    sub_21C54EF4C();
    sub_21C54EFC8(&unk_27CDDD660, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDDD648);
  }

  return result;
}

unint64_t sub_21C54EF4C()
{
  result = qword_27CDDD650;
  if (!qword_27CDDD650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDDD658, &qword_21C55E400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDDD650);
  }

  return result;
}

uint64_t sub_21C54EFC8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21C54F020@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C558B40(&unk_27CDDD860, type metadata accessor for AppRecord);
  sub_21C55C604();

  *a2 = *(v3 + 80);
  return result;
}

uint64_t sub_21C54F0F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD478, &qword_21C55DDE0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_21C5591A8(a3, v27 - v11, &qword_27CDDD478, &qword_21C55DDE0);
  v13 = sub_21C55CCC4();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_21C544404(v12, &qword_27CDDD478, &qword_21C55DDE0);
  }

  else
  {
    sub_21C55CCB4();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_21C55CC54();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_21C55CB04() + 32;
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

      sub_21C544404(a3, &qword_27CDDD478, &qword_21C55DDE0);

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

  sub_21C544404(a3, &qword_27CDDD478, &qword_21C55DDE0);
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

uint64_t sub_21C54F3F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD478, &qword_21C55DDE0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_21C5591A8(a3, v27 - v11, &qword_27CDDD478, &qword_21C55DDE0);
  v13 = sub_21C55CCC4();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_21C544404(v12, &qword_27CDDD478, &qword_21C55DDE0);
  }

  else
  {
    sub_21C55CCB4();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_21C55CC54();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_21C55CB04() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD888, &qword_21C55E850);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_21C544404(a3, &qword_27CDDD478, &qword_21C55DDE0);

      return v24;
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

  sub_21C544404(a3, &qword_27CDDD478, &qword_21C55DDE0);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD888, &qword_21C55E850);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_21C54F704()
{
  swift_getKeyPath();
  sub_21C558B40(&unk_27CDDD790, type metadata accessor for DefaultLSAppsSettingsProvider);
  sub_21C55C604();

  return *(v0 + 32);
}

uint64_t sub_21C54F7A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C558B40(&unk_27CDDD790, type metadata accessor for DefaultLSAppsSettingsProvider);
  sub_21C55C604();

  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_21C54F84C(uint64_t result)
{
  if (*(v1 + 32) == (result & 1))
  {
    *(v1 + 32) = result & 1;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_21C558B40(&unk_27CDDD790, type metadata accessor for DefaultLSAppsSettingsProvider);
    sub_21C55C5F4();
  }

  return result;
}

uint64_t sub_21C54F95C()
{
  swift_getKeyPath();
  v4 = v0;
  sub_21C558B40(&unk_27CDDD790, type metadata accessor for DefaultLSAppsSettingsProvider);
  sub_21C55C604();

  v2 = *(v0 + 56);
  v1 = *(v4 + 64);

  return v2;
}

uint64_t sub_21C54FA0C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C558B40(&unk_27CDDD790, type metadata accessor for DefaultLSAppsSettingsProvider);
  sub_21C55C604();

  v4 = *(v3 + 64);
  *a2 = *(v3 + 56);
  a2[1] = v4;
}

uint64_t sub_21C54FAB8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 64);
  if (v5)
  {
    if (a2)
    {
      if (*(v2 + 56) == a1 && v5 == a2)
      {
        goto LABEL_8;
      }

      v7 = *(v2 + 64);
      if (sub_21C55CE44())
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_21C558B40(&unk_27CDDD790, type metadata accessor for DefaultLSAppsSettingsProvider);
    sub_21C55C5F4();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
}

uint64_t sub_21C54FC28()
{
  swift_getKeyPath();
  v4 = v0;
  sub_21C558B40(&unk_27CDDD790, type metadata accessor for DefaultLSAppsSettingsProvider);
  sub_21C55C604();

  v2 = *(v0 + 96);
  v1 = *(v4 + 104);

  return v2;
}

uint64_t sub_21C54FCD8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C558B40(&unk_27CDDD790, type metadata accessor for DefaultLSAppsSettingsProvider);
  sub_21C55C604();

  v4 = *(v3 + 104);
  *a2 = *(v3 + 96);
  a2[1] = v4;
}

uint64_t sub_21C54FD84(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 104);
  if (v5)
  {
    if (a2)
    {
      if (*(v2 + 96) == a1 && v5 == a2)
      {
        goto LABEL_8;
      }

      v7 = *(v2 + 104);
      if (sub_21C55CE44())
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_21C558B40(&unk_27CDDD790, type metadata accessor for DefaultLSAppsSettingsProvider);
    sub_21C55C5F4();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
}

uint64_t sub_21C54FEF4()
{
  v1 = v0;
  v2 = *(*(sub_21C55C5D4() - 8) + 64);
  MEMORY[0x28223BE20]();
  v3 = *(*(sub_21C55CA84() - 8) + 64);
  MEMORY[0x28223BE20]();
  swift_getKeyPath();
  sub_21C558B40(&unk_27CDDD790, type metadata accessor for DefaultLSAppsSettingsProvider);
  sub_21C55C604();

  v4 = *(v0 + 112);
  swift_getKeyPath();
  sub_21C558B40(&unk_27CDDD860, type metadata accessor for AppRecord);

  sub_21C55C604();

  v5 = *(v4 + 32);
  v6 = *(v4 + 40);

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {
    swift_getKeyPath();
    sub_21C55C604();

    v8 = *(v1 + 112);
    swift_getKeyPath();

    sub_21C55C604();

    v9 = *(v8 + 32);
    v10 = *(v8 + 40);
  }

  else
  {
    sub_21C55CA24();
    if (qword_27CDDD3A0 != -1)
    {
      swift_once();
    }

    v11 = qword_27CDDE790;
    sub_21C55C5C4();
    v9 = sub_21C55CAD4();
    v10 = v12;
  }

  sub_21C54FAB8(v9, v10);
  return sub_21C550298();
}

uint64_t sub_21C5501F4()
{
  swift_getKeyPath();
  sub_21C558B40(&unk_27CDDD790, type metadata accessor for DefaultLSAppsSettingsProvider);
  sub_21C55C604();

  v1 = *(v0 + 112);
}

uint64_t sub_21C550298()
{
  v1 = v0;
  v2 = *(*(sub_21C55CA64() - 8) + 64);
  MEMORY[0x28223BE20]();
  v3 = *(*(sub_21C55C5D4() - 8) + 64);
  MEMORY[0x28223BE20]();
  v4 = *(*(sub_21C55CA84() - 8) + 64);
  MEMORY[0x28223BE20]();
  swift_getKeyPath();
  sub_21C558B40(&unk_27CDDD790, type metadata accessor for DefaultLSAppsSettingsProvider);
  sub_21C55C604();

  if ((*(v0 + 128) & 1) == 0)
  {
    v6 = *(v0 + 88);
    if (v6 <= 3)
    {
      if (v6 == 1)
      {
        swift_getKeyPath();
        sub_21C55C604();

        v10 = *(v0 + 112);
        swift_getKeyPath();
        sub_21C558B40(&unk_27CDDD860, type metadata accessor for AppRecord);

        sub_21C55C604();

        v11 = *(v10 + 64);
        v9 = v11;

        if (v11)
        {
          goto LABEL_17;
        }

        goto LABEL_22;
      }

      if (v6 == 2)
      {
        swift_getKeyPath();
        sub_21C55C604();

        v17 = *(v0 + 112);
        swift_getKeyPath();
        sub_21C558B40(&unk_27CDDD860, type metadata accessor for AppRecord);

        sub_21C55C604();

        v18 = *(v17 + 64);
        v9 = v18;

        if (v18)
        {
LABEL_17:

          sub_21C55CA54();
          sub_21C55CA44();
          swift_getKeyPath();
          sub_21C55C604();

          v19 = *(v1 + 112);
          swift_getKeyPath();

          sub_21C55C604();

          v20 = *(v19 + 32);
          v21 = *(v19 + 40);

          sub_21C55CA34();

          goto LABEL_20;
        }

LABEL_22:
        sub_21C55CA24();
        if (qword_27CDDD3A0 == -1)
        {
LABEL_23:
          v27 = qword_27CDDE790;
          sub_21C55C5C4();
          v28 = sub_21C55CAD4();
          return sub_21C54FD84(v28, v29);
        }

LABEL_25:
        swift_once();
        goto LABEL_23;
      }
    }

    else
    {
      switch(v6)
      {
        case 4:
          swift_getKeyPath();
          sub_21C55C604();

          v12 = *(v0 + 112);
          swift_getKeyPath();
          sub_21C558B40(&unk_27CDDD860, type metadata accessor for AppRecord);

          sub_21C55C604();

          v13 = *(v12 + 64);
          v14 = v13;

          if (v13)
          {
          }

          else
          {
            swift_getKeyPath();
            sub_21C55C604();

            v22 = *(v1 + 112);
            swift_getKeyPath();

            sub_21C55C604();

            v23 = *(v22 + 80);

            if (v23 == 3)
            {
              goto LABEL_22;
            }
          }

          sub_21C55CA54();
          sub_21C55CA44();
          swift_getKeyPath();
          sub_21C55C604();

          v24 = *(v1 + 112);
          swift_getKeyPath();

          sub_21C55C604();

          v25 = *(v24 + 32);
          v26 = *(v24 + 40);

          sub_21C55CA34();

LABEL_20:
          sub_21C55CA44();
          sub_21C55CA74();
          if (qword_27CDDD3A0 == -1)
          {
            goto LABEL_23;
          }

          goto LABEL_25;
        case 5:
          swift_getKeyPath();
          sub_21C55C604();

          v7 = *(v0 + 112);
          swift_getKeyPath();
          sub_21C558B40(&unk_27CDDD860, type metadata accessor for AppRecord);

          sub_21C55C604();

          v8 = *(v7 + 64);
          v9 = v8;

          if (v8)
          {
            goto LABEL_17;
          }

          goto LABEL_22;
        case 6:
          swift_getKeyPath();
          sub_21C55C604();

          v15 = *(v0 + 112);
          swift_getKeyPath();
          sub_21C558B40(&unk_27CDDD860, type metadata accessor for AppRecord);

          sub_21C55C604();

          v16 = *(v15 + 64);
          v9 = v16;

          if (v16)
          {
            goto LABEL_17;
          }

          goto LABEL_22;
      }
    }

    result = sub_21C55CDB4();
    __break(1u);
  }

  return result;
}

uint64_t sub_21C550EEC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C558B40(&unk_27CDDD790, type metadata accessor for DefaultLSAppsSettingsProvider);
  sub_21C55C604();

  *a2 = *(v3 + 112);
}

uint64_t sub_21C550F98(uint64_t a1)
{
  v3 = *(v1 + 112);

  v5 = _s21DefaultAppsSettingsUI9AppRecordC2eeoiySbAC_ACtFZ_0(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 112);
    *(v1 + 112) = a1;

    sub_21C54FEF4();
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_21C558B40(&unk_27CDDD790, type metadata accessor for DefaultLSAppsSettingsProvider);
    sub_21C55C5F4();
  }
}

uint64_t sub_21C551104()
{
  swift_getKeyPath();
  sub_21C558B40(&unk_27CDDD790, type metadata accessor for DefaultLSAppsSettingsProvider);
  sub_21C55C604();

  v1 = *(v0 + 120);
}

uint64_t sub_21C5511A8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C558B40(&unk_27CDDD790, type metadata accessor for DefaultLSAppsSettingsProvider);
  sub_21C55C604();

  *a2 = *(v3 + 120);
}

uint64_t sub_21C551254(uint64_t a1)
{
  v3 = *(v1 + 120);

  v5 = sub_21C558BF8(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 120);
    *(v1 + 120) = a1;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_21C558B40(&unk_27CDDD790, type metadata accessor for DefaultLSAppsSettingsProvider);
    sub_21C55C5F4();
  }
}

uint64_t sub_21C5513A8()
{
  swift_getKeyPath();
  sub_21C558B40(&unk_27CDDD790, type metadata accessor for DefaultLSAppsSettingsProvider);
  sub_21C55C604();

  return *(v0 + 128);
}

uint64_t sub_21C551448@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C558B40(&unk_27CDDD790, type metadata accessor for DefaultLSAppsSettingsProvider);
  sub_21C55C604();

  *a2 = *(v3 + 128);
  return result;
}

uint64_t sub_21C5514F0(uint64_t result)
{
  if (*(v1 + 128) == (result & 1))
  {
    *(v1 + 128) = result & 1;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_21C558B40(&unk_27CDDD790, type metadata accessor for DefaultLSAppsSettingsProvider);
    sub_21C55C5F4();
  }

  return result;
}

uint64_t sub_21C551600()
{
  swift_getKeyPath();
  sub_21C558B40(&unk_27CDDD790, type metadata accessor for DefaultLSAppsSettingsProvider);
  sub_21C55C604();

  v1 = *(v0 + 136);
  return swift_unknownObjectRetain();
}

uint64_t sub_21C5516A4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C558B40(&unk_27CDDD790, type metadata accessor for DefaultLSAppsSettingsProvider);
  sub_21C55C604();

  *a2 = *(v3 + 136);
  return swift_unknownObjectRetain();
}

uint64_t sub_21C551750(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_21C558B40(&unk_27CDDD790, type metadata accessor for DefaultLSAppsSettingsProvider);
  sub_21C55C5F4();
}

uint64_t sub_21C55181C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21C55C5D4();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = sub_21C55CA84();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  *(v1 + 32) = 0;
  v8 = type metadata accessor for AppRecord();
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 96) = 0;
  *(v1 + 104) = 0;
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v11 = sub_21C5403F4(0);
  v12 = MEMORY[0x277D84F90];
  *(v1 + 112) = v11;
  *(v1 + 120) = v12;
  *(v1 + 128) = 0;
  *(v1 + 136) = 0;
  sub_21C55C634();
  *(v1 + 88) = a1;
  if (a1 > 3)
  {
    if (a1 != 4)
    {
      if (a1 == 5)
      {
        *(v1 + 16) = sub_21C55CB44();
        *(v1 + 24) = v13;
        sub_21C55CA24();
        if (qword_27CDDD3A0 == -1)
        {
          goto LABEL_22;
        }

        goto LABEL_33;
      }

      if (a1 == 6)
      {
        *(v1 + 16) = sub_21C55CB84();
        *(v1 + 24) = v30;
        sub_21C55CA24();
        if (qword_27CDDD3A0 == -1)
        {
          goto LABEL_22;
        }

        goto LABEL_33;
      }

      goto LABEL_36;
    }

    *(v1 + 16) = sub_21C55CB54();
    *(v1 + 24) = v22;
    sub_21C55CA24();
    if (qword_27CDDD3A0 != -1)
    {
      swift_once();
    }

    v23 = qword_27CDDE790;
    sub_21C55C5C4();
    v24 = v23;
    *(v2 + 40) = sub_21C55CAD4();
    *(v2 + 48) = v25;
    sub_21C55CA24();
    sub_21C55C5C4();
    *(v2 + 72) = sub_21C55CAD4();
    *(v2 + 80) = v26;
    v27 = [objc_opt_self() sharedConnection];
    if (v27)
    {
      v28 = v27;
      v57 = v24;
      v29 = [v27 isDefaultCallingAppModificationAllowed];

      if ((v29 ^ 1) == *(v2 + 128))
      {
        *(v2 + 128) = v29 ^ 1;
      }

      else
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        v59 = v2;
        sub_21C558B40(&unk_27CDDD790, type metadata accessor for DefaultLSAppsSettingsProvider);
        sub_21C55C5F4();
      }

      swift_getKeyPath();
      v59 = v2;
      sub_21C558B40(&unk_27CDDD790, type metadata accessor for DefaultLSAppsSettingsProvider);
      sub_21C55C604();

      if (*(v2 + 128) == 1)
      {
        sub_21C55CA24();
        v37 = v57;
        sub_21C55C5C4();
        v38 = sub_21C55CAD4();
        sub_21C54FD84(v38, v39);
      }

      v40 = swift_allocObject();
      swift_weakInit();
      v41 = type metadata accessor for DefaultLSAppsSettingsProvider.CallCapabilitiesMonitor();
      v42 = objc_allocWithZone(v41);
      v43 = &v42[OBJC_IVAR____TtCC21DefaultAppsSettingsUI29DefaultLSAppsSettingsProviderP33_6339B278615E8A6CFC693041365478EF23CallCapabilitiesMonitor_notify];
      *v43 = sub_21C55968C;
      v43[1] = v40;
      v58.receiver = v42;
      v58.super_class = v41;
      swift_retain_n();
      v44 = objc_msgSendSuper2(&v58, sel_init);
      v45 = objc_opt_self();
      sub_21C5596F8(0, &qword_27CDDD898, 0x277D85C78);
      v46 = v44;
      v47 = sub_21C55CD04();
      [v45 addDelegate:v46 queue:v47];

      v48 = swift_getKeyPath();
      MEMORY[0x28223BE20](v48);
      v59 = v2;
      sub_21C55C5F4();

      v49 = CFNotificationCenterGetDarwinNotifyCenter();
      if (qword_27CDDD3B0 != -1)
      {
        swift_once();
      }

      CFNotificationCenterAddObserver(v49, v2, sub_21C5530C0, qword_27CDDD670, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

      goto LABEL_32;
    }

    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (a1 == 1)
  {
    *(v1 + 16) = sub_21C55CB74();
    *(v1 + 24) = v14;
    sub_21C55CA24();
    if (qword_27CDDD3A0 != -1)
    {
      swift_once();
    }

    v15 = qword_27CDDE790;
    sub_21C55C5C4();
    v16 = v15;
    *(v2 + 40) = sub_21C55CAD4();
    *(v2 + 48) = v17;
    sub_21C55CA24();
    sub_21C55C5C4();
    *(v2 + 72) = sub_21C55CAD4();
    *(v2 + 80) = v18;
    v19 = [objc_opt_self() sharedConnection];
    if (v19)
    {
      v20 = v19;
      v21 = [v19 isDefaultBrowserModificationAllowed];

      if ((v21 ^ 1) == *(v2 + 128))
      {
        *(v2 + 128) = v21 ^ 1;
      }

      else
      {
        v50 = swift_getKeyPath();
        v57 = &v56;
        MEMORY[0x28223BE20](v50);
        v59 = v2;
        sub_21C558B40(&unk_27CDDD790, type metadata accessor for DefaultLSAppsSettingsProvider);
        sub_21C55C5F4();
      }

      swift_getKeyPath();
      v59 = v2;
      sub_21C558B40(&unk_27CDDD790, type metadata accessor for DefaultLSAppsSettingsProvider);
      sub_21C55C604();

      if (*(v2 + 128) == 1)
      {
        sub_21C55CA24();
        v51 = v16;
        sub_21C55C5C4();
        v52 = sub_21C55CAD4();
        sub_21C54FD84(v52, v53);
      }

      goto LABEL_32;
    }

    goto LABEL_35;
  }

  if (a1 == 2)
  {
    *(v1 + 16) = sub_21C55CB34();
    *(v1 + 24) = v31;
    sub_21C55CA24();
    if (qword_27CDDD3A0 == -1)
    {
LABEL_22:
      v32 = qword_27CDDE790;
      sub_21C55C5C4();
      v33 = v32;
      *(v1 + 40) = sub_21C55CAD4();
      *(v1 + 48) = v34;
      sub_21C55CA24();
      sub_21C55C5C4();
      *(v1 + 72) = sub_21C55CAD4();
      *(v1 + 80) = v35;
LABEL_32:
      sub_21C5531B0();
      sub_21C552514();
      sub_21C552D58();
      sub_21C550298();
      v54 = swift_allocObject();
      swift_weakInit();

      sub_21C55B9D0(v2, sub_21C559684, v54);

      return v2;
    }

LABEL_33:
    swift_once();
    goto LABEL_22;
  }

LABEL_36:
  result = sub_21C55CDB4();
  __break(1u);
  return result;
}

uint64_t sub_21C55248C()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_21C552514();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_21C552D58();
  }

  return result;
}

uint64_t sub_21C552514()
{
  v59 = sub_21C55C5B4();
  v1 = *(v59 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v59);
  v4 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21C55C524();
  v56 = *(v5 - 8);
  v57 = v5;
  v6 = *(v56 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = MEMORY[0x277D84F90];
  v9 = objc_opt_self();
  v55 = *(v0 + 88);
  v10 = [v9 enumeratorForViableDefaultAppsForCategory:v0 options:?];
  sub_21C55CCD4();

  v60 = v8;
  sub_21C55C514();
  if (v64)
  {
    v58 = (v1 + 8);
    do
    {
      sub_21C5596E8(&v63, &v62);
      sub_21C5596F8(0, &qword_27CDDD8A0, 0x277CC1E70);
      if (swift_dynamicCast())
      {
        v11 = v61;
      }

      else
      {
        v11 = 0;
      }

      v12 = type metadata accessor for AppRecord();
      v13 = *(v12 + 48);
      v14 = *(v12 + 52);
      v15 = swift_allocObject();
      *(v15 + 16) = 0;
      *(v15 + 24) = 0;
      *(v15 + 32) = 0;
      *(v15 + 40) = 0xE000000000000000;
      sub_21C55C5A4();
      v16 = sub_21C55C584();
      v18 = v17;
      (*v58)(v4, v59);
      *(v15 + 48) = v16;
      *(v15 + 56) = v18;
      *(v15 + 64) = 0;
      *(v15 + 72) = 0;
      *(v15 + 80) = 3;
      sub_21C55C634();
      if (*(v15 + 64))
      {
        if (v11)
        {
          v19 = *(v15 + 64);
          v20 = v11;
          v21 = sub_21C55CD14();

          if (v21)
          {
            v22 = *(v15 + 64);
LABEL_13:
            *(v15 + 64) = v11;
            v25 = v20;

            swift_getKeyPath();
            v61 = v15;
            sub_21C558B40(&unk_27CDDD860, type metadata accessor for AppRecord);
            sub_21C55C604();

            v26 = *(v15 + 64);
            if (v26 && (v27 = [v26 bundleIdentifier]) != 0)
            {
              v28 = v27;
              v29 = sub_21C55CAC4();
              v31 = v30;

              v32 = *(v15 + 24);
              if (!v32)
              {
                goto LABEL_16;
              }

LABEL_19:
              if (v31 && (*(v15 + 16) == v29 && v32 == v31 || (sub_21C55CE44() & 1) != 0))
              {
                goto LABEL_23;
              }

LABEL_24:
              KeyPath = swift_getKeyPath();
              MEMORY[0x28223BE20](KeyPath);
              *(&v54 - 4) = v15;
              *(&v54 - 3) = v29;
              *(&v54 - 2) = v31;
              v61 = v15;
              sub_21C55C5F4();
            }

            else
            {
              v29 = 0;
              v31 = 0;
              v32 = *(v15 + 24);
              if (v32)
              {
                goto LABEL_19;
              }

LABEL_16:
              if (v31)
              {
                goto LABEL_24;
              }

LABEL_23:
              *(v15 + 16) = v29;
              *(v15 + 24) = v31;
            }

            swift_getKeyPath();
            v61 = v15;
            sub_21C55C604();

            v34 = *(v15 + 64);
            if (v34)
            {
              v35 = [v34 localizedName];
              v36 = sub_21C55CAC4();
              v38 = v37;
            }

            else
            {
              v36 = 0;
              v38 = 0xE000000000000000;
            }

            if (*(v15 + 32) == v36 && *(v15 + 40) == v38 || (v39 = *(v15 + 40), (sub_21C55CE44() & 1) != 0))
            {
              *(v15 + 32) = v36;
              *(v15 + 40) = v38;
            }

            else
            {
              v40 = swift_getKeyPath();
              MEMORY[0x28223BE20](v40);
              *(&v54 - 4) = v15;
              *(&v54 - 3) = v36;
              *(&v54 - 2) = v38;
              v61 = v15;
              sub_21C55C5F4();
            }

            goto LABEL_32;
          }
        }
      }

      else if (!v11)
      {
        v22 = 0;
        v20 = 0;
        goto LABEL_13;
      }

      v23 = swift_getKeyPath();
      MEMORY[0x28223BE20](v23);
      *(&v54 - 2) = v15;
      *(&v54 - 1) = v11;
      v61 = v15;
      sub_21C558B40(&unk_27CDDD860, type metadata accessor for AppRecord);
      sub_21C55C5F4();

LABEL_32:
      MEMORY[0x21CF0B430](v24);
      if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v41 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_21C55CC24();
      }

      sub_21C55CC44();
      sub_21C55C514();
    }

    while (v64);
  }

  (*(v56 + 8))(v60, v57);
  sub_21C553654(&v65);
  if (v55 != 4)
  {
    return sub_21C551254(v65);
  }

  v42 = [objc_opt_self() currentDevice];
  v43 = [v42 userInterfaceIdiom];

  if (v43 != 1)
  {
    return sub_21C551254(v65);
  }

  v44 = objc_opt_self();
  if (([v44 isThumperCallingEnabled] & 1) != 0 || objc_msgSend(v44, sel_isRelayCallingEnabled))
  {
    v45 = type metadata accessor for AppRecord();
    v46 = *(v45 + 48);
    v47 = *(v45 + 52);
    swift_allocObject();
    result = sub_21C5407A0(2);
    if (!result)
    {
      goto LABEL_51;
    }

    MEMORY[0x21CF0B430]();
    if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v53 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_21C55CC24();
    }

    sub_21C55CC44();
    sub_21C553654(&v65);
  }

  v49 = type metadata accessor for AppRecord();
  v50 = *(v49 + 48);
  v51 = *(v49 + 52);
  swift_allocObject();
  result = sub_21C5407A0(1);
  if (result)
  {
    MEMORY[0x21CF0B430]();
    if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v52 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_21C55CC24();
    }

    sub_21C55CC44();
    return sub_21C551254(v65);
  }

  __break(1u);
LABEL_51:
  __break(1u);
  return result;
}

void sub_21C552D58()
{
  v1 = v0;
  v35[1] = *MEMORY[0x277D85DE8];
  v2 = [objc_opt_self() defaultWorkspace];
  if (!v2)
  {
    __break(1u);
  }

  v3 = v2;
  v4 = *(v1 + 88);
  v35[0] = 0;
  v5 = [v2 defaultApplicationForCategory:v4 error:v35];

  v6 = v35[0];
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = v6;
    v9 = sub_21C55C504();

    swift_willThrow();
    if (qword_27CDDD3C0 != -1)
    {
      swift_once();
    }

    v10 = sub_21C55C714();
    __swift_project_value_buffer(v10, qword_27CDDE7A8);

    v11 = v9;
    v12 = sub_21C55C6F4();
    v13 = sub_21C55CCE4();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v35[0] = v34;
      *v14 = 136446466;
      type metadata accessor for LSDefaultAppCategory(0);
      v16 = sub_21C55CAE4();
      v18 = sub_21C556F20(v16, v17, v35);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2112;
      v19 = v9;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 14) = v20;
      *v15 = v20;
      _os_log_impl(&dword_21C53D000, v12, v13, "Could not fetch default app for category %{public}s. Error: %@", v14, 0x16u);
      sub_21C544404(v15, &qword_27CDDD890, &qword_21C55E860);
      MEMORY[0x21CF0BC40](v15, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x21CF0BC40](v34, -1, -1);
      MEMORY[0x21CF0BC40](v14, -1, -1);
    }

    else
    {
    }

    v7 = 0;
  }

  v21 = type metadata accessor for AppRecord();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  v24 = v5;
  v25 = sub_21C5403F4(v7);
  sub_21C550F98(v25);
  if (v4 == 4)
  {
    v26 = [objc_opt_self() currentDevice];
    v27 = [v26 userInterfaceIdiom];

    if (v27 == 1)
    {
      v28 = defaultAppRelayTelephonySetting();
      if (v28 <= 2)
      {
        v29 = v28;
        v30 = *(v21 + 48);
        v31 = *(v21 + 52);
        swift_allocObject();
        v32 = sub_21C5407A0(v29);
        if (v32)
        {
          sub_21C550F98(v32);
        }
      }
    }
  }

  v33 = *MEMORY[0x277D85DE8];
}

uint64_t sub_21C5530C0(uint64_t a1, uint64_t a2)
{
  sub_21C55CCA4();
  sub_21C55CC94();
  sub_21C55CC54();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a2)
  {
    type metadata accessor for DefaultLSAppsSettingsProvider();
    swift_unknownObjectRetain();
    if (swift_dynamicCastClass())
    {
      sub_21C552D58();
    }

    return swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_21C5531B0()
{
  v1 = [objc_opt_self() defaultWorkspace];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 canChangeDefaultAppForCategory_];

    if (v3 == *(v0 + 32))
    {
      *(v0 + 32) = v3;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      sub_21C558B40(&unk_27CDDD790, type metadata accessor for DefaultLSAppsSettingsProvider);
      sub_21C55C5F4();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21C553300()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_21C5531B0();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_21C552514();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_21C552D58();
  }

  return result;
}

void *sub_21C5533B8()
{
  sub_21C55B7F4(v0);
  v1 = CFNotificationCenterGetDarwinNotifyCenter();
  if (qword_27CDDD3B8 != -1)
  {
    swift_once();
  }

  CFNotificationCenterRemoveObserver(v1, v0, qword_27CDDD678, 0);

  v2 = v0[3];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[10];

  v6 = v0[13];

  v7 = v0[14];

  v8 = v0[15];

  v9 = v0[17];
  swift_unknownObjectRelease();
  v10 = OBJC_IVAR____TtC21DefaultAppsSettingsUI29DefaultLSAppsSettingsProvider___observationRegistrar;
  v11 = sub_21C55C644();
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  return v0;
}

uint64_t sub_21C5534BC()
{
  sub_21C5533B8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for DefaultLSAppsSettingsProvider()
{
  result = qword_27CDDD690;
  if (!qword_27CDDD690)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21C553568()
{
  result = sub_21C55C644();
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

uint64_t sub_21C553654(unint64_t *a1)
{
  v2 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
  {
    v2 = sub_21C558E74(v2);
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v5[0] = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
  v5[1] = v3;
  result = sub_21C5574C8(v5);
  *a1 = v2;
  return result;
}

BOOL sub_21C5536D4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_21C55CCA4();
  sub_21C55CC94();
  sub_21C55CC54();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath();
  sub_21C558B40(&unk_27CDDD860, type metadata accessor for AppRecord);
  sub_21C55C604();

  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  swift_getKeyPath();

  sub_21C55C604();

  v6 = *(v3 + 32);
  v7 = *(v3 + 40);
  sub_21C54D484();
  v4 = sub_21C55CD24();

  return v4 == -1;
}

uint64_t sub_21C553884(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD478, &qword_21C55DDE0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v21 - v5;

  sub_21C550F98(v7);
  v8 = *(v1 + 88);
  if (v8 != 4)
  {
    goto LABEL_18;
  }

  v9 = [objc_opt_self() currentDevice];
  v10 = [v9 userInterfaceIdiom];

  if (v10 != 1)
  {
    goto LABEL_18;
  }

  swift_getKeyPath();
  v22 = a1;
  sub_21C558B40(&unk_27CDDD860, type metadata accessor for AppRecord);
  sub_21C55C604();

  v11 = *(a1 + 80);
  if (v11 > 1)
  {
    if (v11 != 2)
    {
      v14 = 1;
      goto LABEL_16;
    }
  }

  else
  {
    v12 = sub_21C55CE44();

    if ((v12 & 1) == 0)
    {
LABEL_10:
      if (!v11)
      {
        v14 = 0;
        goto LABEL_16;
      }

      if (v11 != 1)
      {
        v14 = 0;
        goto LABEL_16;
      }

      goto LABEL_12;
    }
  }

  v13 = objc_opt_self();
  if (([v13 isThumperCallingEnabled] & 1) != 0 || objc_msgSend(v13, sel_isRelayCallingEnabled))
  {
    goto LABEL_10;
  }

LABEL_12:
  v14 = 0;
LABEL_16:
  setDefaultAppRelayTelephonySetting();
  swift_getKeyPath();
  v22 = a1;
  sub_21C55C604();

  if ((v14 & 1) != 0 || *(a1 + 64))
  {
LABEL_18:
    v16 = sub_21C55CCC4();
    (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
    v17 = swift_allocObject();
    swift_weakInit();
    sub_21C55CCA4();

    v18 = sub_21C55CC94();
    v19 = swift_allocObject();
    v20 = MEMORY[0x277D85700];
    v19[2] = v18;
    v19[3] = v20;
    v19[4] = v8;
    v19[5] = a1;
    v19[6] = v17;

    sub_21C54F0F0(0, 0, v6, &unk_21C55E7D0, v19);
  }

  return result;
}

uint64_t sub_21C553C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[25] = a5;
  v6[26] = a6;
  v6[24] = a4;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD478, &qword_21C55DDE0) - 8) + 64) + 15;
  v6[27] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD870, &qword_21C55E818);
  v6[28] = v8;
  v9 = *(v8 - 8);
  v6[29] = v9;
  v10 = *(v9 + 64) + 15;
  v6[30] = swift_task_alloc();
  v6[31] = sub_21C55CCA4();
  v6[32] = sub_21C55CC94();
  v12 = sub_21C55CC54();
  v6[33] = v12;
  v6[34] = v11;

  return MEMORY[0x2822009F8](sub_21C553D48, v12, v11);
}

uint64_t sub_21C553D48()
{
  v1 = [objc_opt_self() defaultWorkspace];
  v0[35] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = v0[29];
    v10 = v0[30];
    v4 = v0[28];
    v5 = v0[25];
    v11 = v0[24];
    swift_getKeyPath();
    v0[21] = v5;
    sub_21C558B40(&unk_27CDDD860, type metadata accessor for AppRecord);
    sub_21C55C604();

    v6 = *(v5 + 64);
    v0[36] = v6;
    v0[2] = v0;
    v0[7] = v0 + 38;
    v0[3] = sub_21C553FB8;
    swift_continuation_init();
    v0[17] = v4;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 14);
    v8 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD878, &qword_21C55E820);
    sub_21C55CC64();
    (*(v3 + 32))(boxed_opaque_existential_1, v10, v4);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_21C5544D8;
    v0[13] = &block_descriptor;
    [v2 setDefaultApplicationForCategory:v11 toApplicationRecord:v8 completionHandler:?];
    (*(v3 + 8))(boxed_opaque_existential_1, v4);
    v1 = v0 + 2;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](v1);
}

uint64_t sub_21C553FB8()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 296) = v3;
  v4 = *(v1 + 272);
  v5 = *(v1 + 264);
  if (v3)
  {
    v6 = sub_21C554168;
  }

  else
  {
    v6 = sub_21C5540E8;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_21C5540E8()
{
  v1 = v0[35];
  v2 = v0[36];
  v3 = v0[32];

  v4 = v0[30];
  v5 = v0[27];

  v6 = v0[1];

  return v6();
}

uint64_t sub_21C554168()
{
  v38 = v0;
  v1 = v0[36];
  v2 = v0[37];
  v3 = v0[35];
  v4 = v0[32];

  swift_willThrow();

  if (qword_27CDDD3C0 != -1)
  {
    swift_once();
  }

  v5 = v0[37];
  v6 = sub_21C55C714();
  __swift_project_value_buffer(v6, qword_27CDDE7A8);
  v7 = v5;
  v8 = sub_21C55C6F4();
  v9 = sub_21C55CCE4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[37];
    v11 = v0[24];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v37[0] = v13;
    *v12 = 136446466;
    v0[22] = v11;
    type metadata accessor for LSDefaultAppCategory(0);
    v14 = sub_21C55CAE4();
    v16 = sub_21C556F20(v14, v15, v37);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    swift_getErrorValue();
    v17 = v0[18];
    v18 = *(v0[19] - 8);
    v19 = *(v18 + 64) + 15;
    v20 = swift_task_alloc();
    (*(v18 + 16))(v20);
    v21 = sub_21C55CAE4();
    v23 = v22;

    v24 = sub_21C556F20(v21, v23, v37);

    *(v12 + 14) = v24;
    _os_log_impl(&dword_21C53D000, v8, v9, "Could not change default app for category %{public}s. Error: %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CF0BC40](v13, -1, -1);
    MEMORY[0x21CF0BC40](v12, -1, -1);
  }

  v25 = v0[37];
  v26 = v0[31];
  v28 = v0[26];
  v27 = v0[27];
  v29 = sub_21C55CCC4();
  (*(*(v29 - 8) + 56))(v27, 1, 1, v29);

  v30 = sub_21C55CC94();
  v31 = swift_allocObject();
  v32 = MEMORY[0x277D85700];
  v31[2] = v30;
  v31[3] = v32;
  v31[4] = v28;
  sub_21C54F3F0(0, 0, v27, &unk_21C55E830, v31);

  v33 = v0[30];
  v34 = v0[27];

  v35 = v0[1];

  return v35();
}

void sub_21C5544D8(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD870, &qword_21C55E818);
    sub_21C55CC74();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD870, &qword_21C55E818);
    sub_21C55CC84();
  }
}

uint64_t sub_21C55457C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_21C55CCA4();
  v4[7] = sub_21C55CC94();
  v6 = sub_21C55CC54();

  return MEMORY[0x2822009F8](sub_21C554614, v6, v5);
}

uint64_t sub_21C554614()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_21C552D58();
  }

  **(v0 + 40) = Strong == 0;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_21C5546B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_21C55CCA4();
  sub_21C55CC94();
  sub_21C55CC54();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_21C5561EC(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD788, &qword_21C55E610);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD768, &qword_21C55E600);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDDD748, &qword_21C55E5F0);
  sub_21C55C794();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDDD750, &qword_21C55E5F8);
  sub_21C54EDD8(&qword_27CDDD758, &qword_27CDDD750, &qword_21C55E5F8);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_21C556C10();
  sub_21C55C9F4();
  swift_getKeyPath();
  v9[0] = a1;
  sub_21C558B40(&unk_27CDDD790, type metadata accessor for DefaultLSAppsSettingsProvider);
  sub_21C55C604();

  v4 = *(a1 + 128);
  KeyPath = swift_getKeyPath();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD728, &qword_21C55E5E0);
  v8 = (a2 + *(result + 36));
  *v8 = KeyPath;
  v8[1] = sub_21C558748;
  v8[2] = v6;
  return result;
}

uint64_t sub_21C55496C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = sub_21C55C794();
  v33 = *(v3 - 8);
  v34 = v3;
  v4 = *(v33 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD750, &qword_21C55E5F8);
  v29 = *(v7 - 8);
  v8 = *(v29 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD748, &qword_21C55E5F0);
  v30 = *(v11 - 8);
  v31 = v11;
  v12 = *(v30 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v28 - v13;
  sub_21C55CCA4();
  v15 = sub_21C55CC94();
  v16 = MEMORY[0x277D85700];
  v28[3] = v15;
  sub_21C55CC54();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v17 = sub_21C55C7B4();
  v28[1] = v18;
  v28[2] = v17;
  v28[0] = v19;

  v20 = sub_21C55CC94();
  v21 = swift_allocObject();
  v21[2] = v20;
  v21[3] = v16;
  v21[4] = a1;

  v22 = sub_21C55CC94();
  v23 = swift_allocObject();
  v23[2] = v22;
  v23[3] = v16;
  v23[4] = a1;
  type metadata accessor for AppRecord();
  sub_21C55C994();
  v35 = v37;
  v36 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD7A0, &qword_21C55E698);
  sub_21C558B40(&qword_27CDDD7A8, type metadata accessor for AppRecord);
  sub_21C5587D0();
  sub_21C55C964();
  v24 = sub_21C54EDD8(&qword_27CDDD758, &qword_27CDDD750, &qword_21C55E5F8);
  sub_21C55C894();
  (*(v29 + 8))(v10, v7);
  sub_21C55C784();
  v37 = v7;
  *&v38 = v24;
  swift_getOpaqueTypeConformance2();
  v25 = v31;
  v26 = v34;
  sub_21C55C884();
  (*(v33 + 8))(v6, v26);
  (*(v30 + 8))(v14, v25);
}

uint64_t sub_21C554DF0@<X0>(uint64_t a1@<X2>, void *a2@<X8>)
{
  sub_21C55CCA4();
  sub_21C55CC94();
  sub_21C55CC54();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath();
  sub_21C558B40(&unk_27CDDD790, type metadata accessor for DefaultLSAppsSettingsProvider);
  sub_21C55C604();

  v4 = *(a1 + 112);

  *a2 = v4;
  return result;
}

uint64_t sub_21C554F0C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *a1;
  sub_21C55CCA4();
  sub_21C55CC94();
  sub_21C55CC54();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath();
  sub_21C558B40(&unk_27CDDD790, type metadata accessor for DefaultLSAppsSettingsProvider);
  sub_21C55C604();

  v7 = *(a5 + 112);

  v9 = _s21DefaultAppsSettingsUI9AppRecordC2eeoiySbAC_ACtFZ_0(v8, v6);

  if ((v9 & 1) == 0)
  {
    sub_21C553884(v6);
  }
}

uint64_t sub_21C555048(uint64_t a1)
{
  sub_21C55CCA4();
  sub_21C55CC94();
  sub_21C55CC54();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath();
  sub_21C558B40(&unk_27CDDD790, type metadata accessor for DefaultLSAppsSettingsProvider);
  sub_21C55C604();

  v3 = *(a1 + 120);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD7C8, &qword_21C55E6D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD7C0, &qword_21C55E6A0);
  type metadata accessor for AppRecord();
  sub_21C54EDD8(&qword_27CDDD7D0, &qword_27CDDD7C8, &qword_21C55E6D0);
  sub_21C54EDD8(&qword_27CDDD7B8, &qword_27CDDD7C0, &qword_21C55E6A0);
  sub_21C558B40(&qword_27CDDD7D8, type metadata accessor for AppRecord);
  sub_21C55C9C4();
}

uint64_t sub_21C555290(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  sub_21C55CCA4();
  sub_21C55CC94();
  sub_21C55CC54();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v11 = v3;
  MEMORY[0x28223BE20](isCurrentExecutor);
  v10[2] = v3;
  v10[3] = a2;
  v5 = type metadata accessor for AppRecord();

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD7E0, &qword_21C55E6D8);
  v7 = sub_21C558B40(&qword_27CDDD7A8, type metadata accessor for AppRecord);
  v8 = sub_21C54EDD8(&qword_27CDDD7E8, &qword_27CDDD7E0, &qword_21C55E6D8);
  MEMORY[0x21CF0AF70](&v11, sub_21C558888, v10, v5, v6, v7, v8);
}

uint64_t sub_21C555438()
{
  sub_21C55CCA4();
  sub_21C55CC94();
  sub_21C55CC54();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD7F0, &qword_21C55E6E0);
  sub_21C558984(&qword_27CDDD7F8, &qword_27CDDD7F0, &qword_21C55E6E0, sub_21C5588A0);
  sub_21C55C924();
}

uint64_t sub_21C555598@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_21C55CCA4();
  sub_21C55CC94();
  sub_21C55CC54();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath();
  sub_21C558B40(&unk_27CDDD860, type metadata accessor for AppRecord);
  sub_21C55C604();

  v5 = *(a1 + 32);
  v4 = *(a1 + 40);

  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = 0;
  *(a2 + 24) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_21C5556C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v60 = a3;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD848, &qword_21C55E708);
  v5 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53);
  v55 = &v46 - v6;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD838, &qword_21C55E700);
  v7 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v47 = &v46 - v8;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD850, &qword_21C55E710);
  v9 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48);
  v49 = &v46 - v10;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD828, &qword_21C55E6F8);
  v11 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v54);
  v51 = &v46 - v12;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD858, &qword_21C55E718);
  v13 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58);
  v15 = &v46 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD808, &qword_21C55E6E8);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v46 - v19;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD818, &qword_21C55E6F0);
  v21 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59);
  v52 = &v46 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD7F0, &qword_21C55E6E0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v57 = &v46 - v25;
  sub_21C55CCA4();
  v56 = sub_21C55CC94();
  sub_21C55CC54();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath();
  v61 = a1;
  sub_21C558B40(&unk_27CDDD860, type metadata accessor for AppRecord);
  sub_21C55C604();

  if (!*(a1 + 24))
  {
    if (*(a2 + 88) != 4 || (v31 = [objc_opt_self() currentDevice], v32 = objc_msgSend(v31, sel_userInterfaceIdiom), v31, v32 != 1))
    {
      v36 = [objc_opt_self() genericApplicationIcon];
      v37 = [objc_opt_self() imageDescriptorNamed_];
      sub_21C55C6E4();
      (*(v17 + 16))(v55, v20, v16);
      swift_storeEnumTagMultiPayload();
      sub_21C558984(&qword_27CDDD820, &qword_27CDDD828, &qword_21C55E6F8, sub_21C558A34);
      sub_21C54EDD8(&qword_27CDDD800, &qword_27CDDD808, &qword_21C55E6E8);
      v35 = v52;
      sub_21C55C7C4();
      (*(v17 + 8))(v20, v16);
      v30 = v57;
LABEL_16:
      sub_21C5591A8(v35, v15, &qword_27CDDD818, &qword_21C55E6F0);
      swift_storeEnumTagMultiPayload();
      sub_21C54EDD8(&qword_27CDDD800, &qword_27CDDD808, &qword_21C55E6E8);
      sub_21C5588A0();
      sub_21C55C7C4();
      sub_21C544404(v35, &qword_27CDDD818, &qword_21C55E6F0);
      goto LABEL_17;
    }

    swift_getKeyPath();
    v61 = a1;
    sub_21C55C604();

    v33 = *(a1 + 80);
    if (v33 > 1)
    {
      v30 = v57;
      v35 = v52;
      if (v33 != 2)
      {
LABEL_14:
        v42 = [objc_opt_self() genericApplicationIcon];
        v43 = [objc_opt_self() imageDescriptorNamed_];
        v44 = v47;
        sub_21C55C6E4();
        sub_21C5591A8(v44, v49, &qword_27CDDD838, &qword_21C55E700);
        swift_storeEnumTagMultiPayload();
        sub_21C54EDD8(&qword_27CDDD800, &qword_27CDDD808, &qword_21C55E6E8);
        sub_21C558A34();
        v41 = v51;
        sub_21C55C7C4();
        sub_21C544404(v44, &qword_27CDDD838, &qword_21C55E700);
        goto LABEL_15;
      }
    }

    else
    {
      v34 = sub_21C55CE44();

      v30 = v57;
      v35 = v52;
      if ((v34 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    v38 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
    v39 = sub_21C55CA94();
    [v38 initWithBundleIdentifier_];

    v40 = [objc_opt_self() imageDescriptorNamed_];
    sub_21C55C6E4();
    (*(v17 + 16))(v49, v20, v16);
    swift_storeEnumTagMultiPayload();
    sub_21C54EDD8(&qword_27CDDD800, &qword_27CDDD808, &qword_21C55E6E8);
    sub_21C558A34();
    v41 = v51;
    sub_21C55C7C4();
    (*(v17 + 8))(v20, v16);
LABEL_15:
    sub_21C5591A8(v41, v55, &qword_27CDDD828, &qword_21C55E6F8);
    swift_storeEnumTagMultiPayload();
    sub_21C558984(&qword_27CDDD820, &qword_27CDDD828, &qword_21C55E6F8, sub_21C558A34);
    sub_21C54EDD8(&qword_27CDDD800, &qword_27CDDD808, &qword_21C55E6E8);
    sub_21C55C7C4();
    sub_21C544404(v41, &qword_27CDDD828, &qword_21C55E6F8);
    goto LABEL_16;
  }

  v26 = *(a1 + 16);
  v27 = objc_allocWithZone(MEMORY[0x277D1B1A8]);

  v28 = sub_21C55CA94();

  [v27 initWithBundleIdentifier_];

  v29 = [objc_opt_self() imageDescriptorNamed_];
  sub_21C55C6E4();
  (*(v17 + 16))(v15, v20, v16);
  swift_storeEnumTagMultiPayload();
  sub_21C54EDD8(&qword_27CDDD800, &qword_27CDDD808, &qword_21C55E6E8);
  sub_21C5588A0();
  v30 = v57;
  sub_21C55C7C4();
  (*(v17 + 8))(v20, v16);
LABEL_17:
  sub_21C558B88(v30, v60);
}

uint64_t sub_21C5561EC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_21C55CCA4();
  sub_21C55CC94();
  sub_21C55CC54();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath();
  sub_21C558B40(&unk_27CDDD790, type metadata accessor for DefaultLSAppsSettingsProvider);
  sub_21C55C604();

  v4 = *(a1 + 104);
  if (v4)
  {
    v13 = *(a1 + 96);
    v14 = *(a1 + 104);
    sub_21C54D484();

    v4 = sub_21C55C824();
    v6 = v5;
    v8 = v7;
    v10 = v9;

    v12 = v8 & 1;
  }

  else
  {

    v6 = 0;
    v12 = 0;
    v10 = 0;
  }

  *a2 = v4;
  a2[1] = v6;
  a2[2] = v12;
  a2[3] = v10;
  return result;
}

id sub_21C556360()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_21C5563AC(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtCC21DefaultAppsSettingsUI29DefaultLSAppsSettingsProviderP33_6339B278615E8A6CFC693041365478EF23CallCapabilitiesMonitor_notify];
  v2 = *&a1[OBJC_IVAR____TtCC21DefaultAppsSettingsUI29DefaultLSAppsSettingsProviderP33_6339B278615E8A6CFC693041365478EF23CallCapabilitiesMonitor_notify + 8];
  v4 = a1;

  v1(v3);
}

uint64_t sub_21C55657C()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);

  return v1;
}

uint64_t sub_21C5565B0()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_21C558B40(&unk_27CDDD790, type metadata accessor for DefaultLSAppsSettingsProvider);
  sub_21C55C604();

  return *(v1 + 32);
}

uint64_t sub_21C556650()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 48);

  return v1;
}

uint64_t sub_21C556684()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_21C558B40(&unk_27CDDD790, type metadata accessor for DefaultLSAppsSettingsProvider);
  sub_21C55C604();

  v2 = *(v1 + 56);
  v3 = *(v1 + 64);

  return v2;
}

uint64_t sub_21C556734()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 80);

  return v1;
}

uint64_t sub_21C556768()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD720, &qword_21C55E5D8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v8 - v4;
  v6 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD728, &qword_21C55E5E0);
  sub_21C5569F4();
  sub_21C55C804();
  sub_21C54EDD8(&qword_27CDDD780, &qword_27CDDD720, &qword_21C55E5D8);
  sub_21C55C834();
  return (*(v2 + 8))(v5, v1);
}

void sub_21C5568CC()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  v3 = type metadata accessor for AppRecord();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_21C5403F4(0);
  sub_21C55C634();
  sub_21C55CDB4();
  __break(1u);
}

uint64_t sub_21C556978@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  a1[1] = v2;
}

unint64_t sub_21C5569F4()
{
  result = qword_27CDDD730;
  if (!qword_27CDDD730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDDD728, &qword_21C55E5E0);
    sub_21C556AAC();
    sub_21C54EDD8(&qword_27CDDD770, &qword_27CDDD778, &qword_21C55E608);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDDD730);
  }

  return result;
}

unint64_t sub_21C556AAC()
{
  result = qword_27CDDD738;
  if (!qword_27CDDD738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDDD740, &qword_21C55E5E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDDD748, &qword_21C55E5F0);
    sub_21C55C794();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDDD750, &qword_21C55E5F8);
    sub_21C54EDD8(&qword_27CDDD758, &qword_27CDDD750, &qword_21C55E5F8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21C556C10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDDD738);
  }

  return result;
}

unint64_t sub_21C556C10()
{
  result = qword_27CDDD760;
  if (!qword_27CDDD760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDDD768, &qword_21C55E600);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDDD760);
  }

  return result;
}

uint64_t sub_21C556C94()
{
  result = sub_21C55CA94();
  qword_27CDDD670 = result;
  return result;
}

id sub_21C556CCC()
{
  if (qword_27CDDD3B0 != -1)
  {
    swift_once();
  }

  v1 = qword_27CDDD670;
  qword_27CDDD678 = qword_27CDDD670;

  return v1;
}

uint64_t sub_21C556D30(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21C556E28;

  return v7(a1);
}

uint64_t sub_21C556E28()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_21C556F20(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_21C556FEC(v11, 0, 0, 1, a1, a2);
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
    sub_21C5592D8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_21C556FEC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_21C5570F8(a5, a6);
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
    result = sub_21C55CDA4();
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

uint64_t sub_21C5570F8(uint64_t a1, unint64_t a2)
{
  v4 = sub_21C557144(a1, a2);
  sub_21C557274(&unk_282E2E1B8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_21C557144(uint64_t a1, unint64_t a2)
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

  v6 = sub_21C557360(v5, 0);
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

  result = sub_21C55CDA4();
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
        v10 = sub_21C55CBD4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_21C557360(v10, 0);
        result = sub_21C55CD74();
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

uint64_t sub_21C557274(uint64_t result)
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

  result = sub_21C5573D4(result, v12, 1, v3);
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

void *sub_21C557360(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD880, &qword_21C55E838);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_21C5573D4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD880, &qword_21C55E838);
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

uint64_t sub_21C5574C8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_21C55CE24();
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
        type metadata accessor for AppRecord();
        v6 = sub_21C55CC34();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v17 = v6 & 0xFFFFFFFFFFFFFF8;
      v24 = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v25 = v5;
      sub_21C5577B4(&v24, v23, a1, v4);
      *(v17 + 16) = 0;
    }

    __break(1u);
    goto LABEL_21;
  }

  if (v2 < 0)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  if (v2 >= 2)
  {
    v7 = *a1;
    sub_21C55CCA4();
    v22 = v7;
    v8 = -1;
    v9 = 1;
    v18 = v2;
    do
    {
      v20 = v9;
      v21 = v8;
      v10 = v22[v9];
      v19 = v7;
      do
      {
        v11 = *v7;

        v26 = sub_21C55CC94();
        sub_21C55CC54();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        swift_getKeyPath();
        v24 = v10;
        sub_21C558B40(&unk_27CDDD860, type metadata accessor for AppRecord);
        sub_21C55C604();

        v12 = *(v10 + 40);
        v24 = *(v10 + 32);
        v25 = v12;
        swift_getKeyPath();
        v23[0] = v11;

        sub_21C55C604();

        v13 = *(v11 + 40);
        v23[0] = *(v11 + 32);
        v23[1] = v13;
        sub_21C54D484();
        v14 = sub_21C55CD24();

        if (v14 != -1)
        {
          break;
        }

        if (!v22)
        {
          goto LABEL_22;
        }

        v15 = *v7;
        v10 = v7[1];
        *v7 = v10;
        v7[1] = v15;
        --v7;
      }

      while (!__CFADD__(v8++, 1));
      v9 = v20 + 1;
      v7 = v19 + 1;
      v8 = v21 - 1;
    }

    while (v20 + 1 != v18);
  }

  return result;
}

uint64_t sub_21C5577B4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v86 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_96:
    v5 = *v86;
    if (!*v86)
    {
      goto LABEL_135;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_129;
    }

    goto LABEL_98;
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v87 = v8;
    if (v8 + 1 >= v7)
    {
      v7 = v8 + 1;
    }

    else
    {
      v5 = *a3;
      v101 = *(*a3 + 8 * (v8 + 1));
      v99 = *(v5 + 8 * v8);

      v97 = sub_21C5536D4(&v101, &v99);
      if (v6)
      {
      }

      v10 = v8 + 2;
      v96 = 8 * v8;
      v11 = (v5 + 8 * v8 + 16);
      v91 = v9;
      v94 = v7;
      while (v7 != v10)
      {
        v15 = *(v11 - 1);
        v14 = *v11;
        sub_21C55CCA4();

        sub_21C55CC94();
        sub_21C55CC54();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        swift_getKeyPath();
        v101 = v14;
        sub_21C558B40(&unk_27CDDD860, type metadata accessor for AppRecord);
        sub_21C55C604();

        v5 = *(v14 + 40);
        v101 = *(v14 + 32);
        v102 = v5;
        swift_getKeyPath();
        v99 = v15;

        sub_21C55C604();

        v12 = *(v15 + 40);
        v99 = *(v15 + 32);
        v100 = v12;
        sub_21C54D484();
        v13 = sub_21C55CD24();

        ++v10;
        ++v11;
        v9 = v91;
        v7 = v94;
        if (((v97 ^ (v13 != -1)) & 1) == 0)
        {
          v7 = v10 - 1;
          break;
        }
      }

      v6 = 0;
      v16 = v96;
      if (v97)
      {
        v17 = v87;
        if (v7 < v87)
        {
          goto LABEL_128;
        }

        if (v87 < v7)
        {
          v18 = 8 * v7 - 8;
          v19 = v7;
          do
          {
            if (v17 != --v19)
            {
              v20 = *a3;
              if (!*a3)
              {
                goto LABEL_132;
              }

              v21 = *(v20 + v16);
              *(v20 + v16) = *(v20 + v18);
              *(v20 + v18) = v21;
            }

            ++v17;
            v18 -= 8;
            v16 += 8;
          }

          while (v17 < v19);
        }
      }
    }

    v22 = a3[1];
    if (v7 < v22)
    {
      if (__OFSUB__(v7, v87))
      {
        goto LABEL_125;
      }

      if (v7 - v87 < a4)
      {
        break;
      }
    }

    v8 = v7;
LABEL_33:
    if (v8 < v87)
    {
      goto LABEL_124;
    }

LABEL_34:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_21C54A4C4(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v25 = *(v9 + 2);
    v24 = *(v9 + 3);
    v26 = v25 + 1;
    if (v25 >= v24 >> 1)
    {
      result = sub_21C54A4C4((v24 > 1), v25 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v26;
    v27 = &v9[16 * v25];
    *(v27 + 4) = v87;
    *(v27 + 5) = v8;
    v28 = *v86;
    if (!*v86)
    {
      goto LABEL_134;
    }

    if (v25)
    {
      while (1)
      {
        v29 = v26 - 1;
        if (v26 >= 4)
        {
          break;
        }

        if (v26 == 3)
        {
          v30 = *(v9 + 4);
          v31 = *(v9 + 5);
          v40 = __OFSUB__(v31, v30);
          v32 = v31 - v30;
          v33 = v40;
LABEL_53:
          if (v33)
          {
            goto LABEL_113;
          }

          v46 = &v9[16 * v26];
          v48 = *v46;
          v47 = *(v46 + 1);
          v49 = __OFSUB__(v47, v48);
          v50 = v47 - v48;
          v51 = v49;
          if (v49)
          {
            goto LABEL_116;
          }

          v52 = &v9[16 * v29 + 32];
          v54 = *v52;
          v53 = *(v52 + 1);
          v40 = __OFSUB__(v53, v54);
          v55 = v53 - v54;
          if (v40)
          {
            goto LABEL_119;
          }

          if (__OFADD__(v50, v55))
          {
            goto LABEL_120;
          }

          if (v50 + v55 >= v32)
          {
            if (v32 < v55)
            {
              v29 = v26 - 2;
            }

            goto LABEL_74;
          }

          goto LABEL_67;
        }

        v56 = &v9[16 * v26];
        v58 = *v56;
        v57 = *(v56 + 1);
        v40 = __OFSUB__(v57, v58);
        v50 = v57 - v58;
        v51 = v40;
LABEL_67:
        if (v51)
        {
          goto LABEL_115;
        }

        v59 = &v9[16 * v29];
        v61 = *(v59 + 4);
        v60 = *(v59 + 5);
        v40 = __OFSUB__(v60, v61);
        v62 = v60 - v61;
        if (v40)
        {
          goto LABEL_118;
        }

        if (v62 < v50)
        {
          goto LABEL_3;
        }

LABEL_74:
        v67 = v29 - 1;
        if (v29 - 1 >= v26)
        {
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
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
          goto LABEL_127;
        }

        if (!*a3)
        {
          goto LABEL_131;
        }

        v68 = *&v9[16 * v67 + 32];
        v5 = *&v9[16 * v29 + 40];
        sub_21C558114((*a3 + 8 * v68), (*a3 + 8 * *&v9[16 * v29 + 32]), (*a3 + 8 * v5), v28);
        if (v6)
        {
        }

        if (v5 < v68)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_21C558734(v9);
        }

        if (v67 >= *(v9 + 2))
        {
          goto LABEL_110;
        }

        v69 = &v9[16 * v67];
        *(v69 + 4) = v68;
        *(v69 + 5) = v5;
        v103 = v9;
        result = sub_21C5586A8(v29);
        v9 = v103;
        v26 = *(v103 + 2);
        if (v26 <= 1)
        {
          goto LABEL_3;
        }
      }

      v34 = &v9[16 * v26 + 32];
      v35 = *(v34 - 64);
      v36 = *(v34 - 56);
      v40 = __OFSUB__(v36, v35);
      v37 = v36 - v35;
      if (v40)
      {
        goto LABEL_111;
      }

      v39 = *(v34 - 48);
      v38 = *(v34 - 40);
      v40 = __OFSUB__(v38, v39);
      v32 = v38 - v39;
      v33 = v40;
      if (v40)
      {
        goto LABEL_112;
      }

      v41 = &v9[16 * v26];
      v43 = *v41;
      v42 = *(v41 + 1);
      v40 = __OFSUB__(v42, v43);
      v44 = v42 - v43;
      if (v40)
      {
        goto LABEL_114;
      }

      v40 = __OFADD__(v32, v44);
      v45 = v32 + v44;
      if (v40)
      {
        goto LABEL_117;
      }

      if (v45 >= v37)
      {
        v63 = &v9[16 * v29 + 32];
        v65 = *v63;
        v64 = *(v63 + 1);
        v40 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v40)
        {
          goto LABEL_121;
        }

        if (v32 < v66)
        {
          v29 = v26 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_53;
    }

LABEL_3:
    v7 = a3[1];
    if (v8 >= v7)
    {
      goto LABEL_96;
    }
  }

  if (__OFADD__(v87, a4))
  {
    goto LABEL_126;
  }

  if (v87 + a4 >= v22)
  {
    v23 = a3[1];
  }

  else
  {
    v23 = v87 + a4;
  }

  if (v23 < v87)
  {
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    result = sub_21C558734(v9);
    v9 = result;
LABEL_98:
    v80 = v6;
    v103 = v9;
    v81 = *(v9 + 2);
    if (v81 >= 2)
    {
      while (*a3)
      {
        v82 = *&v9[16 * v81];
        v6 = *&v9[16 * v81 + 24];
        sub_21C558114((*a3 + 8 * v82), (*a3 + 8 * *&v9[16 * v81 + 16]), (*a3 + 8 * v6), v5);
        if (v80)
        {
        }

        if (v6 < v82)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_21C558734(v9);
        }

        if (v81 - 2 >= *(v9 + 2))
        {
          goto LABEL_123;
        }

        v83 = &v9[16 * v81];
        *v83 = v82;
        *(v83 + 1) = v6;
        v103 = v9;
        result = sub_21C5586A8(v81 - 1);
        v9 = v103;
        v81 = *(v103 + 2);
        if (v81 <= 1)
        {
        }
      }

      goto LABEL_133;
    }
  }

  if (v7 == v23)
  {
    v8 = v7;
    if (v7 < v87)
    {
      goto LABEL_124;
    }

    goto LABEL_34;
  }

  v92 = v9;
  v85 = v6;
  v70 = *a3;
  sub_21C55CCA4();
  v98 = v70;
  v71 = (v70 + 8 * v7 - 8);
  v72 = v87 - v7;
  v88 = v23;
LABEL_85:
  v95 = v7;
  v73 = *(v98 + 8 * v7);
  v89 = v72;
  v90 = v71;
  while (1)
  {
    v74 = *v71;

    sub_21C55CC94();
    sub_21C55CC54();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    swift_getKeyPath();
    v5 = 0x27CDDD000uLL;
    v101 = v73;
    sub_21C558B40(&unk_27CDDD860, type metadata accessor for AppRecord);
    sub_21C55C604();

    v75 = *(v73 + 40);
    v101 = *(v73 + 32);
    v102 = v75;
    swift_getKeyPath();
    v99 = v74;

    sub_21C55C604();

    v76 = *(v74 + 40);
    v99 = *(v74 + 32);
    v100 = v76;
    sub_21C54D484();
    v77 = sub_21C55CD24();

    if (v77 != -1)
    {
LABEL_84:
      v7 = v95 + 1;
      v71 = v90 + 1;
      v72 = v89 - 1;
      v8 = v88;
      if (v95 + 1 != v88)
      {
        goto LABEL_85;
      }

      v6 = v85;
      v9 = v92;
      goto LABEL_33;
    }

    if (!v98)
    {
      break;
    }

    v78 = *v71;
    v73 = v71[1];
    *v71 = v73;
    v71[1] = v78;
    --v71;
    if (__CFADD__(v72++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
  return result;
}