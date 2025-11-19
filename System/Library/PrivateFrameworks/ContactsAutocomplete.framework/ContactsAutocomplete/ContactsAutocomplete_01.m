unint64_t sub_215641DA0()
{
  result = qword_27CA68048;
  if (!qword_27CA68048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68048);
  }

  return result;
}

unint64_t sub_215641E04()
{
  result = qword_27CA68050;
  if (!qword_27CA68050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA68058, &qword_21565D060);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68050);
  }

  return result;
}

unint64_t sub_215641E68()
{
  result = qword_27CA68060;
  if (!qword_27CA68060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68060);
  }

  return result;
}

unint64_t sub_215641EC0()
{
  result = qword_27CA68068;
  if (!qword_27CA68068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68068);
  }

  return result;
}

unint64_t sub_215641F18()
{
  result = qword_27CA68070;
  if (!qword_27CA68070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68070);
  }

  return result;
}

unint64_t sub_215641F80()
{
  result = qword_27CA68078;
  if (!qword_27CA68078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68078);
  }

  return result;
}

uint64_t sub_215641FD8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000011;
  v4 = 0x8000000215665250;
  if (v2 == 1)
  {
    v5 = 0x8000000215665250;
  }

  else
  {
    v3 = 0x736552796C6C7566;
    v5 = 0xED00006465766C6FLL;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x766C6F7365726E75;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xEA00000000006465;
  }

  v8 = 0xD000000000000011;
  if (*a2 != 1)
  {
    v8 = 0x736552796C6C7566;
    v4 = 0xED00006465766C6FLL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x766C6F7365726E75;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEA00000000006465;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_21565713C();
  }

  return v11 & 1;
}

uint64_t sub_2156420EC()
{
  v1 = *v0;
  sub_21565719C();
  sub_215656E8C();

  return sub_2156571BC();
}

uint64_t sub_2156421A4()
{
  *v0;
  *v0;
  sub_215656E8C();
}

uint64_t sub_215642248()
{
  v1 = *v0;
  sub_21565719C();
  sub_215656E8C();

  return sub_2156571BC();
}

uint64_t sub_2156422FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_215642544();
  *a2 = result;
  return result;
}

void sub_21564232C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000006465;
  v4 = 0x8000000215665250;
  v5 = 0xD000000000000011;
  if (v2 != 1)
  {
    v5 = 0x736552796C6C7566;
    v4 = 0xED00006465766C6FLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x766C6F7365726E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_2156423A0()
{
  swift_beginAccess();
  v0 = qword_27CA68080;

  return v0;
}

uint64_t sub_215642544()
{
  v0 = sub_21565710C();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_215642594()
{
  result = qword_27CA68090;
  if (!qword_27CA68090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68090);
  }

  return result;
}

unint64_t sub_2156425EC()
{
  result = qword_27CA68098;
  if (!qword_27CA68098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68098);
  }

  return result;
}

unint64_t sub_215642644()
{
  result = qword_27CA680A0;
  if (!qword_27CA680A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA680A0);
  }

  return result;
}

unint64_t sub_21564269C()
{
  result = qword_27CA680A8;
  if (!qword_27CA680A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA680A8);
  }

  return result;
}

unint64_t sub_2156426F4()
{
  result = qword_27CA680B0;
  if (!qword_27CA680B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA680B0);
  }

  return result;
}

unint64_t sub_21564274C()
{
  result = qword_27CA680B8;
  if (!qword_27CA680B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA680C0, &qword_21565D300);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA680B8);
  }

  return result;
}

unint64_t sub_2156427B0()
{
  result = qword_27CA680C8;
  if (!qword_27CA680C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA680C8);
  }

  return result;
}

unint64_t sub_215642808()
{
  result = qword_27CA680D0;
  if (!qword_27CA680D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA680D0);
  }

  return result;
}

unint64_t sub_215642860()
{
  result = qword_27CA680D8;
  if (!qword_27CA680D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA680D8);
  }

  return result;
}

unint64_t sub_2156428C8()
{
  result = qword_27CA680E0;
  if (!qword_27CA680E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA680E0);
  }

  return result;
}

uint64_t sub_215642920()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA680E8, &qword_21565D460);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  v3 = sub_215656CFC();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA680F0, &qword_21565D468);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_215656CFC();
  return v3;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_215642A18(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_215642A60(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t static ComposeRecipientHandleServiceAppEnumRepresentation.enumIdentifier.getter()
{
  swift_beginAccess();
  v0 = qword_27CA680F8;

  return v0;
}

uint64_t static ComposeRecipientHandleServiceAppEnumRepresentation.enumIdentifier.setter(uint64_t a1, char *a2)
{
  swift_beginAccess();
  qword_27CA680F8 = a1;
  off_27CA68100 = a2;
}

uint64_t sub_215642BB4@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = off_27CA68100;
  *a1 = qword_27CA680F8;
  a1[1] = v2;
}

uint64_t sub_215642C04(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  qword_27CA680F8 = v2;
  off_27CA68100 = v1;
}

ContactsAutocomplete::ComposeRecipientHandleServiceAppEnumRepresentation_optional __swiftcall ComposeRecipientHandleServiceAppEnumRepresentation.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21565710C();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ComposeRecipientHandleServiceAppEnumRepresentation.rawValue.getter()
{
  v1 = 0x6567617373654D69;
  *v0;
  if (*v0)
  {
    v1 = 5456722;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0x656D695465636166;
  }
}

void sub_215642D68(uint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x6567617373654D69;
  v4 = 0xED00006F65646956;
  if (*v1 != 2)
  {
    v4 = 0xED00006F69647541;
  }

  if (*v1)
  {
    v3 = 5456722;
    v2 = 0xE300000000000000;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x656D695465636166;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v5;
  a1[1] = v2;
}

uint64_t sub_215642DF8()
{
  swift_beginAccess();
  v0 = qword_27CA680F8;

  return v0;
}

uint64_t sub_215642E58(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6567617373654D69;
  v3 = a1;
  if (a1 > 1u)
  {
    v4 = 0x656D695465636166;
    if (v3 == 2)
    {
      v5 = 0xED00006F65646956;
    }

    else
    {
      v5 = 0xED00006F69647541;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 5456722;
    }

    else
    {
      v4 = 0x6567617373654D69;
    }

    if (v3)
    {
      v5 = 0xE300000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  v6 = 0xE800000000000000;
  v7 = 0xED00006F65646956;
  if (a2 != 2)
  {
    v7 = 0xED00006F69647541;
  }

  if (a2)
  {
    v2 = 5456722;
    v6 = 0xE300000000000000;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = 0x656D695465636166;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = v7;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_21565713C();
  }

  return v10 & 1;
}

uint64_t sub_215642FBC()
{
  v1 = *v0;
  sub_21565719C();
  sub_215656E8C();

  return sub_2156571BC();
}

uint64_t sub_215643090()
{
  *v0;
  *v0;
  *v0;
  sub_215656E8C();
}

uint64_t sub_215643150()
{
  v1 = *v0;
  sub_21565719C();
  sub_215656E8C();

  return sub_2156571BC();
}

uint64_t ComposeRecipientHandleServiceAppEnumRepresentation.description.getter()
{
  v1 = 0xE800000000000000;
  v2 = 0x6567617373654D69;
  v3 = 0xED00006F65646956;
  if (*v0 != 2)
  {
    v3 = 0xED00006F69647541;
  }

  if (*v0)
  {
    v2 = 5456722;
    v1 = 0xE300000000000000;
  }

  if (*v0 <= 1u)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0x656D695465636166;
  }

  if (*v0 <= 1u)
  {
    v5 = v1;
  }

  else
  {
    v5 = v3;
  }

  MEMORY[0x21606D140](v4, v5);

  return 46;
}

uint64_t sub_215643440()
{
  v1 = 0xE800000000000000;
  v2 = 0x6567617373654D69;
  v3 = 0xED00006F65646956;
  if (*v0 != 2)
  {
    v3 = 0xED00006F69647541;
  }

  if (*v0)
  {
    v2 = 5456722;
    v1 = 0xE300000000000000;
  }

  if (*v0 <= 1u)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0x656D695465636166;
  }

  if (*v0 <= 1u)
  {
    v5 = v1;
  }

  else
  {
    v5 = v3;
  }

  MEMORY[0x21606D140](v4, v5);

  return 46;
}

unint64_t sub_215643530()
{
  result = qword_27CA68108;
  if (!qword_27CA68108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68108);
  }

  return result;
}

unint64_t sub_215643588()
{
  result = qword_27CA68110;
  if (!qword_27CA68110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68110);
  }

  return result;
}

unint64_t sub_2156435E0()
{
  result = qword_27CA68118;
  if (!qword_27CA68118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68118);
  }

  return result;
}

unint64_t sub_215643638()
{
  result = qword_27CA68120;
  if (!qword_27CA68120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68120);
  }

  return result;
}

unint64_t sub_215643690()
{
  result = qword_27CA68128;
  if (!qword_27CA68128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68128);
  }

  return result;
}

unint64_t sub_2156436E8()
{
  result = qword_27CA68130;
  if (!qword_27CA68130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA68138, &qword_21565D600);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68130);
  }

  return result;
}

unint64_t sub_21564374C()
{
  result = qword_27CA68140;
  if (!qword_27CA68140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68140);
  }

  return result;
}

unint64_t sub_2156437A4()
{
  result = qword_27CA68148;
  if (!qword_27CA68148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68148);
  }

  return result;
}

unint64_t sub_2156437FC()
{
  result = qword_27CA68150;
  if (!qword_27CA68150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68150);
  }

  return result;
}

unint64_t sub_215643864()
{
  result = qword_27CA68158;
  if (!qword_27CA68158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68158);
  }

  return result;
}

uint64_t sub_2156438C8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x636972656E6567;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x656D695465636166;
    }

    else
    {
      v4 = 0x7261646E656C6163;
    }

    v5 = 0xE800000000000000;
  }

  else
  {
    if (a1)
    {
      v4 = 0x736567617373656DLL;
    }

    else
    {
      v4 = 0x636972656E6567;
    }

    if (v3)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0x656D695465636166;
  if (a2 != 2)
  {
    v7 = 0x7261646E656C6163;
  }

  if (a2)
  {
    v2 = 0x736567617373656DLL;
    v6 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0xE800000000000000;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_21565713C();
  }

  return v10 & 1;
}

uint64_t sub_215643A04()
{
  v1 = *v0;
  sub_21565719C();
  sub_215656E8C();

  return sub_2156571BC();
}

uint64_t sub_215643AC4()
{
  *v0;
  *v0;
  *v0;
  sub_215656E8C();
}

uint64_t sub_215643B70()
{
  v1 = *v0;
  sub_21565719C();
  sub_215656E8C();

  return sub_2156571BC();
}

uint64_t sub_215643C2C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_215643F38();
  *a2 = result;
  return result;
}

void sub_215643C5C(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x636972656E6567;
  v4 = 0x656D695465636166;
  if (*v1 != 2)
  {
    v4 = 0x7261646E656C6163;
  }

  if (*v1)
  {
    v3 = 0x736567617373656DLL;
    v2 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xE800000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}

uint64_t sub_215643CD8()
{
  swift_beginAccess();
  v0 = *aClientappenum;

  return v0;
}

uint64_t sub_215643E7C()
{
  v1 = 0xE700000000000000;
  v2 = 0x636972656E6567;
  v3 = 0x656D695465636166;
  if (*v0 != 2)
  {
    v3 = 0x7261646E656C6163;
  }

  if (*v0)
  {
    v2 = 0x736567617373656DLL;
    v1 = 0xE800000000000000;
  }

  if (*v0 <= 1u)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  if (*v0 <= 1u)
  {
    v5 = v1;
  }

  else
  {
    v5 = 0xE800000000000000;
  }

  MEMORY[0x21606D140](v4, v5);

  return 46;
}

uint64_t sub_215643F38()
{
  v0 = sub_21565710C();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_215643F88()
{
  result = qword_27CA68170;
  if (!qword_27CA68170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68170);
  }

  return result;
}

unint64_t sub_215643FE0()
{
  result = qword_27CA68178;
  if (!qword_27CA68178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68178);
  }

  return result;
}

unint64_t sub_215644038()
{
  result = qword_27CA68180;
  if (!qword_27CA68180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68180);
  }

  return result;
}

unint64_t sub_215644090()
{
  result = qword_27CA68188;
  if (!qword_27CA68188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68188);
  }

  return result;
}

unint64_t sub_2156440E8()
{
  result = qword_27CA68190;
  if (!qword_27CA68190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68190);
  }

  return result;
}

unint64_t sub_215644140()
{
  result = qword_27CA68198;
  if (!qword_27CA68198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA681A0, &qword_21565D8A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68198);
  }

  return result;
}

unint64_t sub_2156441A4()
{
  result = qword_27CA681A8;
  if (!qword_27CA681A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA681A8);
  }

  return result;
}

unint64_t sub_2156441FC()
{
  result = qword_27CA681B0;
  if (!qword_27CA681B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA681B0);
  }

  return result;
}

unint64_t sub_215644254()
{
  result = qword_27CA681B8;
  if (!qword_27CA681B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA681B8);
  }

  return result;
}

unint64_t sub_2156442BC()
{
  result = qword_27CA681C0;
  if (!qword_27CA681C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA681C0);
  }

  return result;
}

void *sub_215644444@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + class metadata base offset for ComposeRecipientHandleServiceAvailabilityAppEntityRepresentation + 16))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_2156444BC(char *a1, void **a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + class metadata base offset for ComposeRecipientHandleServiceAvailabilityAppEntityRepresentation + 24))(&v4);
}

uint64_t (*sub_215644548(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + qword_27CA681F0);

  *(v4 + 40) = sub_215656CBC();
  return sub_2156413C0;
}

void *sub_2156445E0@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + class metadata base offset for ComposeRecipientHandleServiceAvailabilityAppEntityRepresentation + 48))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_215644658(char *a1, void **a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + class metadata base offset for ComposeRecipientHandleServiceAvailabilityAppEntityRepresentation + 56))(&v4);
}

uint64_t sub_2156446D8(void *a1)
{
  v2 = *(v1 + *a1);

  sub_215656CCC();
}

uint64_t sub_215644730(char *a1, void *a2)
{
  v3 = *(v2 + *a2);
  v5 = *a1;

  sub_215656CDC();
}

uint64_t (*sub_21564477C(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + qword_27CA68200);

  *(v4 + 40) = sub_215656CBC();
  return sub_21563FDD0;
}

uint64_t ComposeRecipientHandleServiceAvailabilityAppEntityRepresentation.__allocating_init(_:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  v6 = qword_27CA681F0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA681E8, "Ԙ");
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  *(v5 + v6) = sub_215656CAC();
  v10 = qword_27CA68200;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA681F8, &qword_21565DA48);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  *(v5 + v10) = sub_215656CAC();
  v14 = sub_215656B2C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  (*(v15 + 16))(&v20 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v14);
  v18 = sub_215656B8C();
  (*(v15 + 8))(a1, v14);
  return v18;
}

uint64_t ComposeRecipientHandleServiceAvailabilityAppEntityRepresentation.init(_:)(uint64_t a1)
{
  v3 = qword_27CA681F0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA681E8, "Ԙ");
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  *(v1 + v3) = sub_215656CAC();
  v7 = qword_27CA68200;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA681F8, &qword_21565DA48);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  *(v1 + v7) = sub_215656CAC();
  v11 = sub_215656B2C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  (*(v12 + 16))(&v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11);
  v15 = sub_215656B8C();
  (*(v12 + 8))(a1, v11);
  return v15;
}

uint64_t sub_215644B0C()
{
  v1 = *(v0 + qword_27CA681F0);

  v2 = *(v0 + qword_27CA68200);
}

uint64_t ComposeRecipientHandleServiceAvailabilityAppEntityRepresentation.deinit()
{
  v0 = sub_215656B7C();
  v1 = *(v0 + qword_27CA681F0);

  v2 = *(v0 + qword_27CA68200);

  return v0;
}

uint64_t ComposeRecipientHandleServiceAvailabilityAppEntityRepresentation.__deallocating_deinit()
{
  v0 = sub_215656B7C();
  v1 = *(v0 + qword_27CA681F0);

  v2 = *(v0 + qword_27CA68200);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t ComposeRecipientHandleServiceAvailabilityAppEntityRepresentation.description.getter()
{
  v1 = (*(*v0 + class metadata base offset for ComposeRecipientHandleServiceAvailabilityAppEntityRepresentation + 16))(v9);
  if (LOBYTE(v9[0]) == 4)
  {
    v2 = 0xEC00000029656369;
    v3 = 0x76726573206F6E28;
  }

  else
  {
    v1 = ComposeRecipientHandleServiceAppEnumRepresentation.description.getter();
    v3 = v1;
    v2 = v4;
  }

  (*(*v0 + class metadata base offset for ComposeRecipientHandleServiceAvailabilityAppEntityRepresentation + 48))(v9, v1);
  if (LOBYTE(v9[0]) == 3)
  {
    v5 = 0x8000000215665340;
    v6 = 0xD000000000000011;
  }

  else
  {
    v6 = ComposeRecipientHandleAvailabilityAppEnumRepresentation.description.getter();
    v5 = v7;
  }

  v9[0] = v3;
  v9[1] = v2;
  MEMORY[0x21606D140](2112032, 0xE300000000000000);
  MEMORY[0x21606D140](v6, v5);

  return v9[0];
}

uint64_t type metadata accessor for ComposeRecipientHandleServiceAvailabilityAppEntityRepresentation()
{
  result = qword_27CA6B4A0;
  if (!qword_27CA6B4A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2156450B0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ComposeRecipientHandleServiceAvailabilityAppEntityRepresentation();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t (*sub_2156453A4(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + qword_27CA68270);

  *(v4 + 40) = sub_215656CBC();
  return sub_2156413C0;
}

uint64_t (*sub_215645454(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + qword_27CA68278);

  *(v4 + 40) = sub_215656CBC();
  return sub_21563FDD0;
}

uint64_t sub_2156454EC(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  v6 = qword_27CA68270;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA67FB0, &unk_21565CCF0);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  *(v5 + v6) = sub_215656CAC();
  v10 = qword_27CA68278;
  v11 = *(v7 + 48);
  v12 = *(v7 + 52);
  swift_allocObject();
  *(v5 + v10) = sub_215656CAC();
  v13 = sub_215656B2C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  (*(v14 + 16))(&v19 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v13);
  v17 = sub_215656B8C();
  (*(v14 + 8))(a1, v13);
  return v17;
}

uint64_t sub_215645664()
{
  v1 = *(v0 + qword_27CA68270);

  v2 = *(v0 + qword_27CA68278);
}

uint64_t sub_2156456A4()
{
  v0 = sub_215656B7C();
  v1 = *(v0 + qword_27CA68270);

  v2 = *(v0 + qword_27CA68278);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t type metadata accessor for ComposeRecipientContactIdentifierAppEntityRepresentation()
{
  result = qword_27CA6B9B0;
  if (!qword_27CA6B9B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2156459F8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ComposeRecipientContactIdentifierAppEntityRepresentation();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_215645AF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA682E8, &qword_21565DF30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_215645B60()
{
  v1 = *(v0 + qword_27CA682F8);

  sub_215656CCC();
}

uint64_t sub_215645BB0(uint64_t a1)
{
  v3 = *(v1 + qword_27CA682F8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA682E8, &qword_21565DF30);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_215645AF0(a1, &v8 - v6);

  sub_215656CDC();

  return sub_215635240(a1, &qword_27CA682E8, &qword_21565DF30);
}

uint64_t (*sub_215645C78(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + qword_27CA682F8);

  *(v4 + 40) = sub_215656CBC();
  return sub_2156413C0;
}

uint64_t (*sub_215645D28(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + qword_27CA68308);

  *(v4 + 40) = sub_215656CBC();
  return sub_21563FDD0;
}

uint64_t sub_215645DC0()
{
  v1 = *(v0 + qword_27CA68318);

  sub_215656CCC();

  return v3;
}

uint64_t sub_215645E10()
{
  v1 = *(v0 + qword_27CA68318);

  sub_215656CDC();
}

uint64_t (*sub_215645E64(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + qword_27CA68318);

  *(v4 + 40) = sub_215656CBC();
  return sub_2156413C0;
}

uint64_t sub_215645EFC()
{
  v1 = *(v0 + qword_27CA68328);

  sub_215656CCC();

  return v3;
}

uint64_t sub_215645F48()
{
  v1 = *(v0 + qword_27CA68328);

  sub_215656CDC();
}

uint64_t (*sub_215645F94(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + qword_27CA68328);

  *(v4 + 40) = sub_215656CBC();
  return sub_2156413C0;
}

uint64_t sub_215646044(uint64_t a1, void *a2)
{
  v3 = *(v2 + *a2);

  sub_215656CDC();
}

uint64_t (*sub_21564609C(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + qword_27CA68338);

  *(v4 + 40) = sub_215656CBC();
  return sub_2156413C0;
}

uint64_t sub_215646140(void *a1)
{
  v2 = *(v1 + *a1);

  sub_215656CCC();

  return v4;
}

uint64_t sub_215646188()
{
  v1 = *(v0 + qword_27CA68348);

  sub_215656CDC();
}

uint64_t (*sub_2156461D4(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + qword_27CA68348);

  *(v4 + 40) = sub_215656CBC();
  return sub_2156413C0;
}

uint64_t sub_21564626C(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return sub_2156462A8(a1);
}

uint64_t sub_2156462A8(uint64_t a1)
{
  v3 = qword_27CA682F8;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA682F0, &qword_21565DF38);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  *(v1 + v3) = sub_215656CAC();
  v7 = qword_27CA68308;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA68300, &qword_21565DF40);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  *(v1 + v7) = sub_215656CAC();
  v11 = qword_27CA68318;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA68310, &qword_21565DF48);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  *(v1 + v11) = sub_215656CAC();
  v15 = qword_27CA68328;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA68320, &qword_21565DF50);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  *(v1 + v15) = sub_215656CAC();
  v19 = qword_27CA68338;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA68330, &qword_21565DF58);
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  *(v1 + v19) = sub_215656CAC();
  v23 = qword_27CA68348;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA68340, &unk_21565DF60);
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  *(v1 + v23) = sub_215656CAC();
  v27 = sub_215656B2C();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  (*(v28 + 16))(&v33 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v27);
  v31 = sub_215656B8C();
  (*(v28 + 8))(a1, v27);
  return v31;
}

uint64_t sub_21564650C()
{
  v1 = *(v0 + qword_27CA682F8);

  v2 = *(v0 + qword_27CA68308);

  v3 = *(v0 + qword_27CA68318);

  v4 = *(v0 + qword_27CA68328);

  v5 = *(v0 + qword_27CA68338);

  v6 = *(v0 + qword_27CA68348);
}

uint64_t sub_21564658C()
{
  v0 = sub_215656B7C();
  v1 = *(v0 + qword_27CA682F8);

  v2 = *(v0 + qword_27CA68308);

  v3 = *(v0 + qword_27CA68318);

  v4 = *(v0 + qword_27CA68328);

  v5 = *(v0 + qword_27CA68338);

  v6 = *(v0 + qword_27CA68348);

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

unint64_t sub_215646758@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a2;
  v3 = sub_215656A9C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v101 = &v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_215656D6C();
  v102 = *(v103 - 8);
  v7 = *(v102 + 64);
  MEMORY[0x28223BE20](v103);
  v114 = &v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA68350, &qword_21565DF70);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v100 - v11;
  v105 = type metadata accessor for ComposeRecipient.Identifier(0);
  v13 = *(*(v105 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v105);
  v108 = &v100 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v113 = (&v100 - v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA682E8, &qword_21565DF30);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v21 = &v100 - v20;
  v22 = qword_27CA6E000;
  (*(*a1 + qword_27CA6E048 + 48))(v19);
  v23 = sub_215647174(v21);
  v106 = v24;
  v107 = v23;
  v25 = a1;
  v26 = sub_215635240(v21, &qword_27CA682E8, &qword_21565DF30);
  v27 = (*(*a1 + qword_27CA6E048 + 176))(v26);
  v111 = v3;
  v112 = a1;
  v109 = v12;
  v110 = v4;
  if (v27)
  {

    sub_21564899C(v28, &v118);
    v29 = v118;
    v30 = v119;
    v31 = v120;
    v32 = v121;
    v33 = v122;
    v34 = v123;
    v35 = sub_215631EFC(0, 1, 1, MEMORY[0x277D84F90]);
    v37 = *(v35 + 2);
    v36 = *(v35 + 3);
    v38 = v35;
    if (v37 >= v36 >> 1)
    {
      v38 = sub_215631EFC((v36 > 1), v37 + 1, 1, v35);
    }

    *(v38 + 2) = v37 + 1;
    v39 = &v38[48 * v37];
    v40 = v38;
    *(v39 + 4) = v29;
    *(v39 + 5) = v30;
    v39[48] = v31;
    *(v39 + 7) = v32;
    *(v39 + 8) = v33;
    *(v39 + 9) = v34;
    v3 = v111;
    v25 = v112;
    v12 = v109;
    v4 = v110;
    v22 = qword_27CA6E000;
  }

  else
  {
    v40 = MEMORY[0x277D84F90];
  }

  result = (*(*v25 + v22[9] + 208))(v27);
  if (result)
  {
    if (result >> 62)
    {
      v68 = result;
      v42 = sub_2156570CC();
      result = v68;
      v115 = v68;
      if (v42)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v42 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      v115 = result;
      if (v42)
      {
LABEL_9:
        if (v42 < 1)
        {
          __break(1u);
          goto LABEL_42;
        }

        if ((result & 0xC000000000000001) != 0)
        {
          v43 = 0;
          v117 = v42;
          do
          {
            MEMORY[0x21606D2E0](v43, v115);

            sub_21564899C(v44, &v118);
            v45 = v118;
            v46 = v119;
            LODWORD(v116) = v120;
            v48 = v121;
            v47 = v122;
            v49 = v123;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v40 = sub_215631EFC(0, *(v40 + 2) + 1, 1, v40);
            }

            v50 = v40;
            v51 = *(v40 + 2);
            v52 = v50;
            v53 = *(v50 + 3);
            if (v51 >= v53 >> 1)
            {
              v52 = sub_215631EFC((v53 > 1), v51 + 1, 1, v52);
            }

            ++v43;
            swift_unknownObjectRelease();
            *(v52 + 2) = v51 + 1;
            v54 = &v52[48 * v51];
            v40 = v52;
            *(v54 + 4) = v45;
            *(v54 + 5) = v46;
            v54[48] = v116;
            *(v54 + 7) = v48;
            *(v54 + 8) = v47;
            *(v54 + 9) = v49;
          }

          while (v117 != v43);
        }

        else
        {
          v55 = (result + 32);
          do
          {
            v117 = v42;
            v56 = *v55;
            v57 = swift_retain_n();
            sub_21564899C(v57, &v118);
            v58 = v119;
            v116 = v118;
            v59 = v120;
            v60 = v121;
            v61 = v122;
            v62 = v123;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v40 = sub_215631EFC(0, *(v40 + 2) + 1, 1, v40);
            }

            v63 = v40;
            v64 = *(v40 + 2);
            v65 = v63;
            v66 = *(v63 + 3);
            if (v64 >= v66 >> 1)
            {
              v65 = sub_215631EFC((v66 > 1), v64 + 1, 1, v65);
            }

            *(v65 + 2) = v64 + 1;
            v67 = &v65[48 * v64];
            v40 = v65;
            *(v67 + 4) = v116;
            *(v67 + 5) = v58;
            v67[48] = v59;
            *(v67 + 7) = v60;
            *(v67 + 8) = v61;
            *(v67 + 9) = v62;
            ++v55;
            v42 = v117 - 1;
          }

          while (v117 != 1);
        }
      }
    }

    v3 = v111;
    v25 = v112;
    v12 = v109;
    v4 = v110;
    v22 = qword_27CA6E000;
  }

  v69 = (*(*v25 + v22[9] + 80))();
  if (v69)
  {
    v70 = v69;
    v71 = (*(*v69 + qword_27CA6E038 + 16))();
    if (v72)
    {
      v73 = v113;
      *v113 = v71;
      v73[1] = v72;
LABEL_35:
      swift_storeEnumTagMultiPayload();

      goto LABEL_36;
    }

    (*(*v70 + qword_27CA6E038 + 48))(v71);
    if (!v75)
    {
      sub_215656A8C();
      goto LABEL_35;
    }

    sub_215656A6C();
    result = (*(v4 + 48))(v12, 1, v3);
    if (result != 1)
    {

      (*(v4 + 32))(v113, v12, v3);
      goto LABEL_35;
    }

LABEL_42:
    __break(1u);
    return result;
  }

  sub_215656A8C();
  v74 = swift_storeEnumTagMultiPayload();
LABEL_36:
  v76 = *(*v25 + v22[9] + 112);
  v77 = (v76)(v74);
  if (v78)
  {
    v77 = 0;
  }

  ComposeRecipient.Source.init(rawValue:)(v77, &v118);
  v79 = v118;
  sub_215656D5C();

  v80 = sub_215656D4C();
  v81 = sub_215656F9C();

  if (os_log_type_enabled(v80, v81))
  {
    v82 = v40;
    v83 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v124[0] = v84;
    *v83 = 136315394;
    v118 = v76();
    LOBYTE(v119) = v85 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA68358, qword_21565DF78);
    v86 = sub_215656E7C();
    v88 = sub_21563A06C(v86, v87, v124);

    *(v83 + 4) = v88;
    *(v83 + 12) = 2080;
    v118 = v79;
    sub_215647758();
    v89 = sub_21565711C();
    v91 = sub_21563A06C(v89, v90, v124);

    *(v83 + 14) = v91;
    _os_log_impl(&dword_2155FE000, v80, v81, "Representation (%s) --> Recipient (%s)", v83, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21606DDB0](v84, -1, -1);
    v92 = v83;
    v40 = v82;
    MEMORY[0x21606DDB0](v92, -1, -1);
  }

  v93 = v104;
  v94 = v103;
  v95 = v102;
  v96 = v101;
  v97 = v113;
  v98 = v108;
  v99 = sub_2156337F4(v113, v108);
  v118 = v79;
  sub_215635320(v99);
  ComposeRecipient.init(id:name:handles:contactIdentifier:source:)(v96, v107, v106, v40, v98, &v118, v93);

  (*(v95 + 8))(v114, v94);
  return sub_215633B98(v97);
}

uint64_t sub_215647174(uint64_t a1)
{
  v2 = sub_215656A3C();
  v42 = *(v2 - 8);
  v3 = *(v42 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_215656ABC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v41 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_215656E3C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v40 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_215656A4C();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = sub_215656A2C();
  v43 = *(v14 - 8);
  v15 = *(v43 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_215656A0C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA682E8, &qword_21565DF30);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v37 - v25;
  sub_215645AF0(a1, &v37 - v25);
  if ((*(v19 + 48))(v26, 1, v18) == 1)
  {
    sub_215635240(v26, &qword_27CA682E8, &qword_21565DF30);
    return 0;
  }

  v37 = v5;
  v38 = v2;
  (*(v19 + 32))(v22, v26, v18);
  v27 = sub_2156569EC();
  v39 = &v37;
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v31 = (&v37 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2156569FC();
  v32 = (*(v28 + 88))(v31, v27);
  if (MEMORY[0x277CB9CF0] && v32 == *MEMORY[0x277CB9CF0])
  {
    (*(v19 + 8))(v22, v18);
    (*(v28 + 96))(v31, v27);
    result = *v31;
    v34 = v31[1];
    return result;
  }

  if (MEMORY[0x277CB9D00] && v32 == *MEMORY[0x277CB9D00])
  {
    (*(v28 + 96))(v31, v27);
    v35 = v43;
    (*(v43 + 32))(v17, v31, v14);
    v36 = sub_215656A1C();
    (*(v35 + 8))(v17, v14);
  }

  else
  {
    if (!MEMORY[0x277CB9D10] || v32 != *MEMORY[0x277CB9D10])
    {
      (*(v19 + 8))(v22, v18);
      (*(v28 + 8))(v31, v27);
      return 0;
    }

    sub_215656E2C();
    sub_215656AAC();
    (*(v42 + 104))(v37, *MEMORY[0x277CC9110], v38);
    sub_215656A5C();
    v36 = sub_215656E6C();
  }

  (*(v19 + 8))(v22, v18);
  return v36;
}

unint64_t sub_215647758()
{
  result = qword_27CA68360;
  if (!qword_27CA68360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68360);
  }

  return result;
}

uint64_t type metadata accessor for ComposeRecipientAppEntityRepresentation()
{
  result = qword_27CA6BEC0;
  if (!qword_27CA6BEC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2156479CC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ComposeRecipientAppEntityRepresentation();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_215647BA4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + class metadata base offset for ComposeRecipientHandleAppEntityRepresentation + 24))();
  *a2 = result;
  return result;
}

uint64_t sub_215647C0C(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *(**a2 + class metadata base offset for ComposeRecipientHandleAppEntityRepresentation + 32);

  return v3(v4);
}

uint64_t sub_215647C88()
{
  v1 = *(v0 + qword_27CA683D0);

  sub_215656CDC();
}

uint64_t (*sub_215647CE4(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + qword_27CA683D0);

  *(v4 + 40) = sub_215656CBC();
  return sub_2156413C0;
}

uint64_t sub_215647D7C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + class metadata base offset for ComposeRecipientHandleAppEntityRepresentation + 56))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_215647DE4(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + class metadata base offset for ComposeRecipientHandleAppEntityRepresentation + 64);

  return v4(v2, v3);
}

uint64_t sub_215647E6C()
{
  v1 = *(v0 + qword_27CA683D8);

  sub_215656CCC();

  return v3;
}

uint64_t sub_215647EB8()
{
  v1 = *(v0 + qword_27CA683D8);

  sub_215656CDC();
}

uint64_t (*sub_215647F04(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + qword_27CA683D8);

  *(v4 + 40) = sub_215656CBC();
  return sub_2156413C0;
}

uint64_t sub_215647F9C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + class metadata base offset for ComposeRecipientHandleAppEntityRepresentation + 88))();
  *a2 = result;
  return result;
}

uint64_t sub_215648004(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *(**a2 + class metadata base offset for ComposeRecipientHandleAppEntityRepresentation + 96);

  return v3(v4);
}

uint64_t sub_215648080()
{
  v1 = *(v0 + qword_27CA683E8);

  sub_215656CDC();
}

uint64_t (*sub_2156480CC(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + qword_27CA683E8);

  *(v4 + 40) = sub_215656CBC();
  return sub_21563FDD0;
}

uint64_t ComposeRecipientHandleAppEntityRepresentation.__allocating_init(_:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  v6 = qword_27CA683D0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA683C8, &unk_21565E2A0);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  *(v5 + v6) = sub_215656CAC();
  v10 = qword_27CA683D8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA67FB0, &unk_21565CCF0);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  *(v5 + v10) = sub_215656CAC();
  v14 = qword_27CA683E8;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA683E0, &qword_21565E2B0);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  *(v5 + v14) = sub_215656CAC();
  v18 = sub_215656B2C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  (*(v19 + 16))(&v24 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v18);
  v22 = sub_215656B8C();
  (*(v19 + 8))(a1, v18);
  return v22;
}

uint64_t ComposeRecipientHandleAppEntityRepresentation.init(_:)(uint64_t a1)
{
  v3 = qword_27CA683D0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA683C8, &unk_21565E2A0);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  *(v1 + v3) = sub_215656CAC();
  v7 = qword_27CA683D8;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA67FB0, &unk_21565CCF0);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  *(v1 + v7) = sub_215656CAC();
  v11 = qword_27CA683E8;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA683E0, &qword_21565E2B0);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  *(v1 + v11) = sub_215656CAC();
  v15 = sub_215656B2C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  (*(v16 + 16))(&v21 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v15);
  v19 = sub_215656B8C();
  (*(v16 + 8))(a1, v15);
  return v19;
}

uint64_t sub_2156484D4()
{
  v1 = *(v0 + qword_27CA683D0);

  v2 = *(v0 + qword_27CA683D8);

  v3 = *(v0 + qword_27CA683E8);
}

uint64_t ComposeRecipientHandleAppEntityRepresentation.deinit()
{
  v0 = sub_215656B7C();
  v1 = *(v0 + qword_27CA683D0);

  v2 = *(v0 + qword_27CA683D8);

  v3 = *(v0 + qword_27CA683E8);

  return v0;
}

uint64_t ComposeRecipientHandleAppEntityRepresentation.__deallocating_deinit()
{
  v0 = sub_215656B7C();
  v1 = *(v0 + qword_27CA683D0);

  v2 = *(v0 + qword_27CA683D8);

  v3 = *(v0 + qword_27CA683E8);

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t ComposeRecipientHandleAppEntityRepresentation.description.getter()
{
  v1 = *v0;
  v18 = sub_2156571DC();
  v2 = MEMORY[0x21606D140](40, 0xE100000000000000);
  if ((*(*v0 + class metadata base offset for ComposeRecipientHandleAppEntityRepresentation + 24))(v2))
  {
    v3 = ComposeRecipientHandleValueAppEntityRepresentation.description.getter();
    v5 = v4;
  }

  else
  {
    v3 = 0x756C6176206F6E28;
    v5 = 0xEA00000000002965;
  }

  MEMORY[0x21606D140](v3, v5);

  v6 = MEMORY[0x21606D140](8236, 0xE200000000000000);
  v7 = (*(*v0 + class metadata base offset for ComposeRecipientHandleAppEntityRepresentation + 56))(v6);
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v7 = 0x6562616C206F6E28;
    v9 = 0xEA0000000000296CLL;
  }

  MEMORY[0x21606D140](v7, v9);

  v10 = MEMORY[0x21606D140](8236, 0xE200000000000000);
  v11 = (*(*v0 + class metadata base offset for ComposeRecipientHandleAppEntityRepresentation + 88))(v10);
  if (v11)
  {
    v12 = v11;
    v13 = type metadata accessor for ComposeRecipientHandleServiceAvailabilityAppEntityRepresentation();
    v14 = MEMORY[0x21606D190](v12, v13);
    v16 = v15;
  }

  else
  {
    v16 = 0x8000000215665340;
    v14 = 0xD000000000000011;
  }

  MEMORY[0x21606D140](v14, v16);

  MEMORY[0x21606D140](41, 0xE100000000000000);
  return v18;
}

uint64_t sub_21564899C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21564E42C();
  v5 = (*(*a1 + class metadata base offset for ComposeRecipientHandleAppEntityRepresentation + 24))(v4);
  if (v5)
  {
    v6 = v5;
    v7 = (*(*v5 + class metadata base offset for ComposeRecipientHandleValueAppEntityRepresentation + 24))();
    if (v8)
    {
      v9 = v7;
      v10 = v8;
      v11 = 0;
LABEL_7:

      goto LABEL_8;
    }

    v12 = (*(*v6 + class metadata base offset for ComposeRecipientHandleValueAppEntityRepresentation + 56))(v7);
    if (v13)
    {
      v9 = v12;
      v10 = v13;
      v11 = 1;
      goto LABEL_7;
    }

    v9 = (*(*v6 + class metadata base offset for ComposeRecipientHandleValueAppEntityRepresentation + 88))(v12);
    v10 = v20;

    if (!v10)
    {
      v9 = 0;
      v10 = 0xE000000000000000;
    }

    v11 = 2;
  }

  else
  {
    v9 = 0;
    v11 = 2;
    v10 = 0xE000000000000000;
  }

LABEL_8:
  *a2 = v9;
  *(a2 + 8) = v10;
  *(a2 + 16) = v11;
  v14 = (*(*a1 + class metadata base offset for ComposeRecipientHandleAppEntityRepresentation + 56))(v5);
  sub_215648C20(v14, v15, &v21);

  *(a2 + 24) = v21;
  v17 = (*(*a1 + class metadata base offset for ComposeRecipientHandleAppEntityRepresentation + 88))(v16);
  v18 = sub_215649094(v17);

  *(a2 + 40) = v18;
  return result;
}

uint64_t sub_215648C20@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (a2)
  {
    v5 = result;
    sub_215649388();

    if (!sub_215656FEC())
    {

      *a3 = 0;
      a3[1] = 0;
      return result;
    }

    if (sub_215656FEC())
    {
      if (sub_215656FEC())
      {
        if (sub_215656FEC())
        {
          if (sub_215656FEC())
          {
            if (sub_215656FEC())
            {
              if (sub_215656FEC())
              {
                if (sub_215656FEC())
                {
                  if (sub_215656FEC())
                  {
                    if (sub_215656FEC())
                    {
                      if (sub_215656FEC())
                      {
                        if (sub_215656FEC())
                        {
                          result = sub_215656FEC();
                          if (result)
                          {
                            *a3 = v5;
                            a3[1] = a2;
                            return result;
                          }

                          v6 = xmmword_21565E1D0;
                        }

                        else
                        {

                          v6 = xmmword_21565E1E0;
                        }
                      }

                      else
                      {

                        v6 = xmmword_21565E1F0;
                      }
                    }

                    else
                    {

                      v6 = xmmword_21565E200;
                    }
                  }

                  else
                  {

                    v6 = xmmword_21565E210;
                  }
                }

                else
                {

                  v6 = xmmword_21565E220;
                }
              }

              else
              {

                v6 = xmmword_21565E230;
              }
            }

            else
            {

              v6 = xmmword_21565E240;
            }
          }

          else
          {

            v6 = xmmword_21565E250;
          }
        }

        else
        {

          v6 = xmmword_21565E260;
        }
      }

      else
      {

        v6 = xmmword_21565E270;
      }
    }

    else
    {

      v6 = xmmword_21565E280;
    }
  }

  else
  {
    v6 = xmmword_21565E290;
  }

  *a3 = v6;
  return result;
}

unint64_t sub_215649094(unint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = sub_21563C548(MEMORY[0x277D84F90]);
    v3 = (v1 & 0xFFFFFFFFFFFFFF8);
    if (v1 >> 62)
    {
      goto LABEL_30;
    }

    for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2156570CC())
    {
      v26 = v3;
      v27 = v1;
      v5 = 0;
      v28 = v1 & 0xC000000000000001;
      while (v28)
      {
        v7 = MEMORY[0x21606D2E0](v5, v1);
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_26;
        }

LABEL_13:
        v1 = i;
        (*(*v7 + class metadata base offset for ComposeRecipientHandleServiceAvailabilityAppEntityRepresentation + 16))(&v30 + 2);
        v9 = sub_215643510(&v30 + 2, &v30 + 3);
        v10 = BYTE3(v30);
        (*(*v7 + class metadata base offset for ComposeRecipientHandleServiceAvailabilityAppEntityRepresentation + 48))(&v30, v9);
        sub_215641C20(&v30, &v30 + 1);
        v11 = BYTE1(v30);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v29 = v2;
        v3 = v2;
        v13 = sub_21563A720(v10);
        v15 = v2[2];
        v16 = (v14 & 1) == 0;
        v17 = __OFADD__(v15, v16);
        v18 = v15 + v16;
        if (v17)
        {
          goto LABEL_27;
        }

        v19 = v14;
        if (v2[3] < v18)
        {
          sub_21563B1A4(v18, isUniquelyReferenced_nonNull_native);
          v3 = v29;
          v13 = sub_21563A720(v10);
          if ((v19 & 1) != (v20 & 1))
          {
            result = sub_21565714C();
            __break(1u);
            return result;
          }

LABEL_18:
          v2 = v29;
          if (v19)
          {
            goto LABEL_5;
          }

          goto LABEL_19;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_18;
        }

        v3 = &v29;
        v23 = v13;
        sub_21563BC74();
        v13 = v23;
        v2 = v29;
        if (v19)
        {
LABEL_5:
          *(v2[7] + v13) = v11;

          goto LABEL_6;
        }

LABEL_19:
        v2[(v13 >> 6) + 8] |= 1 << v13;
        *(v2[6] + v13) = v10;
        *(v2[7] + v13) = v11;

        v21 = v2[2];
        v17 = __OFADD__(v21, 1);
        v22 = v21 + 1;
        if (v17)
        {
          goto LABEL_28;
        }

        v2[2] = v22;
LABEL_6:
        ++v5;
        i = v1;
        v6 = v8 == v1;
        v1 = v27;
        if (v6)
        {
          return v2;
        }
      }

      if (v5 >= v26[2])
      {
        goto LABEL_29;
      }

      v7 = *(v1 + 8 * v5 + 32);

      v8 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_13;
      }

LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      ;
    }

    return v2;
  }

  else
  {
    v24 = MEMORY[0x277D84F90];

    return sub_21563C548(v24);
  }
}

unint64_t sub_215649388()
{
  result = qword_27CA683F0;
  if (!qword_27CA683F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA683F0);
  }

  return result;
}

uint64_t type metadata accessor for ComposeRecipientHandleAppEntityRepresentation()
{
  result = qword_27CA6C450;
  if (!qword_27CA6C450)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2156495FC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ComposeRecipientHandleAppEntityRepresentation();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2156499B4()
{
  result = qword_27CA68440;
  if (!qword_27CA68440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68440);
  }

  return result;
}

uint64_t HandleAvailability.HandleStatus.handle.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t HandleAvailability.HandleStatus.handle.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t HandleAvailability.RemoteIntentLookup.__allocating_init(clientLabel:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  sub_215656D5C();
  v8 = (v7 + OBJC_IVAR____TtCV20ContactsAutocomplete18HandleAvailability18RemoteIntentLookup_clientLabel);
  *v8 = a1;
  v8[1] = a2;
  return v7;
}

uint64_t HandleAvailability.RemoteIntentLookup.init(clientLabel:)(uint64_t a1, uint64_t a2)
{
  sub_215656D5C();
  v5 = (v2 + OBJC_IVAR____TtCV20ContactsAutocomplete18HandleAvailability18RemoteIntentLookup_clientLabel);
  *v5 = a1;
  v5[1] = a2;
  return v2;
}

uint64_t sub_215649C30()
{
  v1 = (v0[7] + OBJC_IVAR____TtCV20ContactsAutocomplete18HandleAvailability18RemoteIntentLookup_clientLabel);
  v2 = v1[1];
  v19 = *v1;
  v3 = [objc_opt_self() defaultEnvironment];
  v4 = sub_21563F93C();
  v5 = MEMORY[0x277CEB180];
  v0[5] = v4;
  v0[6] = v5;
  v0[2] = v3;
  v6 = sub_215656C7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA67F88, &qword_21565F030) - 8) + 64) + 15;
  swift_task_alloc();
  sub_215656C3C();
  v11 = *(sub_215656C4C() - 8);
  v12 = *(v11 + 64) + 15;
  swift_task_alloc();
  v13 = *MEMORY[0x277CEB060];
  (*(v11 + 104))();
  sub_215656C6C();

  v14 = sub_215656C5C();
  v16 = v15;
  (*(v7 + 8))(v9, v6);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);

  v17 = v0[1];

  return v17(v14, v16);
}

uint64_t sub_215649E94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 120);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_215649FCC;

  return v12(a1, a2, a3);
}

uint64_t sub_215649FCC(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v5 = *v2;
  *(v5 + 24) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_21564A108, 0, 0);
  }

  else
  {
    v6 = *(v5 + 8);

    return v6(a1);
  }
}

uint64_t sub_21564A108()
{
  v1 = *(v0 + 8);
  v2 = MEMORY[0x277D84F90];

  return v1(v2);
}

uint64_t sub_21564A170(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 72) = a2;
  *(v4 + 80) = v3;
  *(v4 + 217) = a3;
  *(v4 + 64) = a1;
  return MEMORY[0x2822009F8](sub_21564A198, 0, 0);
}

uint64_t sub_21564A198()
{
  v1 = *(v0 + 217);
  v2 = *(v0 + 72);
  v3 = *(v2 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v22 = MEMORY[0x277D84F90];
    sub_21564C558(0, v3, 0);
    v4 = v22;
    v5 = (v2 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      v9 = *(v22 + 16);
      v8 = *(v22 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_21564C558((v8 > 1), v9 + 1, 1);
      }

      *(v22 + 16) = v9 + 1;
      *(v22 + v9 + 32) = 0x2030100u >> (8 * v6);
      --v3;
    }

    while (v3);
  }

  *(v0 + 40) = *(v0 + 64);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA680E8, &qword_21565D460);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();

  *(v0 + 88) = sub_215656CFC();
  *(v0 + 48) = v4;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA68498, &qword_21565E548);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  *(v0 + 96) = sub_215656CFC();
  *(v0 + 216) = v1 ^ 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA684A0, &qword_21565E550);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  *(v0 + 104) = sub_215656CFC();
  v19 = swift_task_alloc();
  *(v0 + 112) = v19;
  *v19 = v0;
  v19[1] = sub_21564A3A4;
  v20 = *(v0 + 80);

  return sub_215649C10();
}

uint64_t sub_21564A3A4(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v6 = *(*v3 + 112);
  v7 = *v3;
  v5[15] = a1;
  v5[16] = v2;

  if (v2)
  {
    v8 = sub_21564AD64;
  }

  else
  {
    v5[17] = a2;
    v8 = sub_21564A4CC;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_21564A4CC()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 120);
  v3 = *(v0 + 104);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA684A8, &qword_21565E568);
  *(v0 + 144) = v4;
  v5 = *(v4 - 8);
  *(v0 + 152) = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  *(v0 + 160) = v7;
  v23 = *(v0 + 88);
  ObjectType = swift_getObjectType();
  *(v0 + 16) = v23;
  *(v0 + 32) = v3;
  v9 = sub_215656C1C();
  *(v0 + 168) = v9;
  v10 = *(v9 - 8);
  *(v0 + 176) = v10;
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  *(v0 + 184) = v12;
  sub_21564C578();
  sub_21564C5CC();
  sub_21563EF68();
  v13 = sub_215656ADC();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = sub_215656ACC();
  *(v0 + 192) = v16;
  v17 = *(MEMORY[0x277CEB008] + 4);
  v18 = swift_task_alloc();
  *(v0 + 200) = v18;
  *v18 = v0;
  v18[1] = sub_21564A704;
  v19 = *(v0 + 136);
  v20 = *(v0 + 120);
  v21 = MEMORY[0x277CEAFA8];

  return MEMORY[0x28213DA98](v7, v0 + 16, v12, v16, v21, ObjectType, &_s18RemoteIntentLookupC43FetchHandleAvailabilityIntentRepresentationVN, v19);
}

uint64_t sub_21564A704()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v8 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v4 = v2[24];
    (*(v2[22] + 8))(v2[23], v2[21]);

    v5 = sub_21564AECC;
  }

  else
  {
    v6 = v2[24];
    (*(v2[22] + 8))(v2[23], v2[21]);

    v5 = sub_21564A86C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

char *sub_21564A86C()
{
  v55 = v0;
  v1 = v0[20];
  v2 = v0[18];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA684D0, &unk_21565E578);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64) + 15;
  v6 = swift_task_alloc();
  sub_215656BDC();
  sub_215656C9C();
  (*(v4 + 8))(v6, v3);
  v7 = v0[7];
  if (!v7)
  {
    v31 = v0[10];

    v32 = sub_215656F6C();
    v33 = sub_215656D4C();
    if (os_log_type_enabled(v33, v32))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_2155FE000, v33, v32, "No values were returned from the intent execution", v34, 2u);
      MEMORY[0x21606DDB0](v34, -1, -1);
    }

    v35 = v0[19];
    v36 = v0[20];
    v37 = v0[18];
    v38 = v0[15];
    v40 = v0[12];
    v39 = v0[13];
    v41 = v0[11];

    swift_unknownObjectRelease();
    (*(v35 + 8))(v36, v37);
LABEL_30:
    v30 = MEMORY[0x277D84F90];
LABEL_31:
    v49 = v0[20];

    v50 = v0[1];

    return v50(v30);
  }

  v8 = (v7 & 0xFFFFFFFFFFFFFF8);
  if (v7 >> 62)
  {
    goto LABEL_28;
  }

  v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
LABEL_29:
    v43 = v0[19];
    v42 = v0[20];
    v44 = v0[18];
    v45 = v0[15];
    v47 = v0[12];
    v46 = v0[13];
    v48 = v0[11];

    swift_unknownObjectRelease();
    (*(v43 + 8))(v42, v44);
    goto LABEL_30;
  }

  while (1)
  {
    v52 = v8;
    v54 = MEMORY[0x277D84F90];
    v8 = &v54;
    result = sub_21564C538(0, v9 & ~(v9 >> 63), 0);
    if (v9 < 0)
    {
      break;
    }

    v51 = v0;
    v11 = 0;
    v12 = v54;
    v0 = qword_27CA6E000;
    while (1)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v53 = v12;
      if ((v7 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x21606D2E0](v11, v7);
      }

      else
      {
        if (v11 >= v52[2])
        {
          goto LABEL_27;
        }

        v8 = *(v7 + 8 * v11 + 32);
      }

      result = (*(*v8 + v0[13] + 24))();
      if (!v14)
      {
        goto LABEL_35;
      }

      v15 = result;
      v16 = v14;
      result = (*(*v8 + v0[13] + 56))();
      if (result > 1u)
      {
        if (result == 2)
        {
          LOBYTE(result) = 3;
        }

        else
        {
          if (result != 3)
          {
            goto LABEL_37;
          }

          LOBYTE(result) = 2;
        }
      }

      v17 = result;
      v18 = v9;
      result = (*(*v8 + qword_27CA6E068 + 88))();
      if (result == 3)
      {
        goto LABEL_36;
      }

      v19 = result;

      v12 = v53;
      v54 = v53;
      v21 = *(v53 + 16);
      v20 = *(v53 + 24);
      v22 = v21 + 1;
      if (v21 >= v20 >> 1)
      {
        v8 = &v54;
        sub_21564C538((v20 > 1), v21 + 1, 1);
        v22 = v21 + 1;
        v12 = v54;
      }

      *(v12 + 16) = v22;
      v23 = v12 + 24 * v21;
      *(v23 + 32) = v15;
      *(v23 + 40) = v16;
      *(v23 + 48) = v17;
      *(v23 + 49) = v19;
      ++v11;
      v9 = v18;
      v24 = v13 == v18;
      v0 = qword_27CA6E000;
      if (v24)
      {
        v0 = v51;
        v25 = v12;
        v26 = v51[15];
        v28 = v51[12];
        v27 = v51[13];
        v29 = v51[11];
        (*(v51[19] + 8))(v51[20], v51[18]);

        v30 = v25;
        swift_unknownObjectRelease();
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    v9 = sub_2156570CC();
    if (!v9)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_21564AD64()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];

  v4 = v0[16];
  v5 = v0[10];
  v6 = v4;
  v7 = sub_215656D4C();
  v8 = sub_215656F8C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v4;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_2155FE000, v7, v8, "Error executing intent: %@", v9, 0xCu);
    sub_21563F418(v10);
    MEMORY[0x21606DDB0](v10, -1, -1);
    MEMORY[0x21606DDB0](v9, -1, -1);
  }

  swift_willThrow();
  v13 = v0[1];

  return v13();
}

uint64_t sub_21564AECC()
{
  v1 = v0[23];
  v2 = v0[20];
  v3 = v0[15];
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[11];
  swift_unknownObjectRelease();

  v7 = v0[26];
  v8 = v0[10];
  v9 = v7;
  v10 = sub_215656D4C();
  v11 = sub_215656F8C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = v7;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_2155FE000, v10, v11, "Error executing intent: %@", v12, 0xCu);
    sub_21563F418(v13);
    MEMORY[0x21606DDB0](v13, -1, -1);
    MEMORY[0x21606DDB0](v12, -1, -1);
  }

  swift_willThrow();
  v16 = v0[1];

  return v16();
}

uint64_t sub_21564B080(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6567617373654D69;
  v3 = a1;
  if (a1 > 1u)
  {
    v4 = 0x656D695465636166;
    if (v3 == 2)
    {
      v5 = 0xED00006F69647541;
    }

    else
    {
      v5 = 0xED00006F65646956;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 5456722;
    }

    else
    {
      v4 = 0x6567617373654D69;
    }

    if (v3)
    {
      v5 = 0xE300000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  v6 = 0xE800000000000000;
  v7 = 0xED00006F69647541;
  if (a2 != 2)
  {
    v7 = 0xED00006F65646956;
  }

  if (a2)
  {
    v2 = 5456722;
    v6 = 0xE300000000000000;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = 0x656D695465636166;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = v7;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_21565713C();
  }

  return v10 & 1;
}

uint64_t sub_21564B1E4()
{
  v1 = *v0;
  sub_21565719C();
  sub_215656E8C();

  return sub_2156571BC();
}

uint64_t sub_21564B2B8()
{
  *v0;
  *v0;
  *v0;
  sub_215656E8C();
}

uint64_t sub_21564B378()
{
  v1 = *v0;
  sub_21565719C();
  sub_215656E8C();

  return sub_2156571BC();
}

uint64_t sub_21564B448@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_21564C890();
  *a2 = result;
  return result;
}

void sub_21564B478(uint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x6567617373654D69;
  v4 = 0xED00006F69647541;
  if (*v1 != 2)
  {
    v4 = 0xED00006F65646956;
  }

  if (*v1)
  {
    v3 = 5456722;
    v2 = 0xE300000000000000;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x656D695465636166;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v5;
  a1[1] = v2;
}

uint64_t sub_21564B668(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD00000000000001BLL;
  }

  else
  {
    v4 = 0xD000000000000019;
  }

  if (v3)
  {
    v5 = "ityAppEnum";
  }

  else
  {
    v5 = "useCachedAvailabilityOnly";
  }

  v6 = v5 | 0x8000000000000000;
  if (*a2)
  {
    v7 = 0xD00000000000001BLL;
  }

  else
  {
    v7 = 0xD000000000000019;
  }

  if (*a2)
  {
    v8 = "useCachedAvailabilityOnly";
  }

  else
  {
    v8 = "ityAppEnum";
  }

  if (v4 == v7 && v6 == (v8 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_21565713C();
  }

  return v10 & 1;
}

uint64_t sub_21564B714()
{
  v1 = *v0;
  sub_21565719C();
  sub_215656E8C();

  return sub_2156571BC();
}

uint64_t sub_21564B794()
{
  *v0;
  sub_215656E8C();
}

uint64_t sub_21564B800()
{
  v1 = *v0;
  sub_21565719C();
  sub_215656E8C();

  return sub_2156571BC();
}

uint64_t sub_21564B87C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_21565710C();

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

void sub_21564B8DC(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD00000000000001BLL;
  }

  else
  {
    v2 = 0xD000000000000019;
  }

  if (*v1)
  {
    v3 = "useCachedAvailabilityOnly";
  }

  else
  {
    v3 = "ityAppEnum";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

uint64_t sub_21564BA7C()
{
  v1 = *(v0 + qword_27CA684D8);

  sub_215656CCC();

  return v3;
}

uint64_t sub_21564BAC8()
{
  v1 = *(v0 + qword_27CA684D8);

  sub_215656CDC();
}

uint64_t (*sub_21564BB14(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + qword_27CA684D8);

  *(v4 + 40) = sub_215656CBC();
  return sub_21563FDD0;
}

uint64_t (*sub_21564BBC4(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + qword_27CA684E8);

  *(v4 + 40) = sub_215656CBC();
  return sub_2156413C0;
}

uint64_t sub_21564BC68(void *a1)
{
  v2 = *(v1 + *a1);

  sub_215656CCC();

  return v4;
}

uint64_t sub_21564BCBC(uint64_t a1, void *a2)
{
  v3 = *(v2 + *a2);

  sub_215656CDC();
}

uint64_t (*sub_21564BD04(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + qword_27CA684F8);

  *(v4 + 40) = sub_215656CBC();
  return sub_2156413C0;
}

uint64_t sub_21564BD9C(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  v6 = qword_27CA684D8;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA67FB0, &unk_21565CCF0);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  *(v5 + v6) = sub_215656CAC();
  v10 = qword_27CA684E8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA684E0, &qword_21565E588);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  *(v5 + v10) = sub_215656CAC();
  v14 = qword_27CA684F8;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA684F0, &qword_21565E590);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  *(v5 + v14) = sub_215656CAC();
  v18 = sub_215656B2C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  (*(v19 + 16))(&v24 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v18);
  v22 = sub_215656B8C();
  (*(v19 + 8))(a1, v18);
  return v22;
}

uint64_t sub_21564BF5C()
{
  v1 = *(v0 + qword_27CA684D8);

  v2 = *(v0 + qword_27CA684E8);

  v3 = *(v0 + qword_27CA684F8);
}

uint64_t sub_21564BFAC()
{
  v0 = sub_215656B7C();
  v1 = *(v0 + qword_27CA684D8);

  v2 = *(v0 + qword_27CA684E8);

  v3 = *(v0 + qword_27CA684F8);

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_21564C148@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_21564C8DC();
  *a2 = result;
  return result;
}

uint64_t HandleAvailability.RemoteIntentLookup.deinit()
{
  v1 = OBJC_IVAR____TtCV20ContactsAutocomplete18HandleAvailability18RemoteIntentLookup_logger;
  v2 = sub_215656D6C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtCV20ContactsAutocomplete18HandleAvailability18RemoteIntentLookup_clientLabel + 8);

  return v0;
}

uint64_t HandleAvailability.RemoteIntentLookup.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCV20ContactsAutocomplete18HandleAvailability18RemoteIntentLookup_logger;
  v2 = sub_215656D6C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtCV20ContactsAutocomplete18HandleAvailability18RemoteIntentLookup_clientLabel + 8);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t sub_21564C3FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(**v3 + 112);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_215638294;

  return v12(a1, a2, a3);
}

char *sub_21564C538(char *a1, int64_t a2, char a3)
{
  result = sub_21564C680(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21564C558(char *a1, int64_t a2, char a3)
{
  result = sub_21564C79C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_21564C578()
{
  result = qword_27CA684B0;
  if (!qword_27CA684B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA684B0);
  }

  return result;
}

unint64_t sub_21564C5CC()
{
  result = qword_27CA684B8;
  if (!qword_27CA684B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA684C0, &qword_21565E570);
    sub_21564CF3C(&qword_27CA684C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA684B8);
  }

  return result;
}

char *sub_21564C680(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA68648, &qword_21565F018);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21564C79C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA68650, &qword_21565F038);
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

uint64_t sub_21564C890()
{
  v0 = sub_21565710C();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_21564C8DC()
{
  v0 = sub_21565710C();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_21564C92C()
{
  result = qword_27CA68500;
  if (!qword_27CA68500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68500);
  }

  return result;
}

unint64_t sub_21564C984()
{
  result = qword_27CA68508;
  if (!qword_27CA68508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68508);
  }

  return result;
}

unint64_t sub_21564C9DC()
{
  result = qword_27CA68510;
  if (!qword_27CA68510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68510);
  }

  return result;
}

unint64_t sub_21564CA34()
{
  result = qword_27CA68518;
  if (!qword_27CA68518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68518);
  }

  return result;
}

unint64_t sub_21564CA8C()
{
  result = qword_27CA68520;
  if (!qword_27CA68520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68520);
  }

  return result;
}

unint64_t sub_21564CB10()
{
  result = qword_27CA68538;
  if (!qword_27CA68538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68538);
  }

  return result;
}

unint64_t sub_21564CB68()
{
  result = qword_27CA68540;
  if (!qword_27CA68540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68540);
  }

  return result;
}

unint64_t sub_21564CBC0()
{
  result = qword_27CA68548;
  if (!qword_27CA68548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68548);
  }

  return result;
}

unint64_t sub_21564CC1C()
{
  result = qword_27CA68550;
  if (!qword_27CA68550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68550);
  }

  return result;
}

unint64_t sub_21564CC74()
{
  result = qword_27CA68558;
  if (!qword_27CA68558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68558);
  }

  return result;
}

unint64_t sub_21564CCCC()
{
  result = qword_27CA68560;
  if (!qword_27CA68560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68560);
  }

  return result;
}

unint64_t sub_21564CD24()
{
  result = qword_27CA68568;
  if (!qword_27CA68568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68568);
  }

  return result;
}

unint64_t sub_21564CD7C()
{
  result = qword_27CA68570;
  if (!qword_27CA68570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68570);
  }

  return result;
}

unint64_t sub_21564CE00()
{
  result = qword_27CA68588;
  if (!qword_27CA68588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68588);
  }

  return result;
}

unint64_t sub_21564CE58()
{
  result = qword_27CA68590;
  if (!qword_27CA68590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68590);
  }

  return result;
}

unint64_t sub_21564CEB0()
{
  result = qword_27CA68598;
  if (!qword_27CA68598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68598);
  }

  return result;
}

uint64_t sub_21564CF3C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    _s18RemoteIntentLookupC32HandleAvailabilityRepresentationCMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21564D124()
{
  result = qword_27CA685E0;
  if (!qword_27CA685E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA685E0);
  }

  return result;
}

unint64_t sub_21564D17C()
{
  result = qword_27CA685E8;
  if (!qword_27CA685E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA685E8);
  }

  return result;
}

unint64_t sub_21564D1D4()
{
  result = qword_27CA685F0;
  if (!qword_27CA685F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA685F0);
  }

  return result;
}

unint64_t sub_21564D22C()
{
  result = qword_27CA685F8;
  if (!qword_27CA685F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA685F8);
  }

  return result;
}

unint64_t sub_21564D284()
{
  result = qword_27CA68600;
  if (!qword_27CA68600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68600);
  }

  return result;
}

uint64_t sub_21564D308(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_21564D35C()
{
  result = qword_27CA68618;
  if (!qword_27CA68618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68618);
  }

  return result;
}

unint64_t sub_21564D3B4()
{
  result = qword_27CA68620;
  if (!qword_27CA68620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68620);
  }

  return result;
}

unint64_t sub_21564D40C()
{
  result = qword_27CA68628;
  if (!qword_27CA68628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68628);
  }

  return result;
}

uint64_t dispatch thunk of HandleAvailability.IntentLookup.status(for:on:useCachedAvailabilityOnly:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 8);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_215638294;

  return v15(a1, a2, a3, a4, a5);
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_21564D5B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
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

uint64_t sub_21564D600(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21564D678()
{
  result = sub_215656D6C();
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

uint64_t dispatch thunk of HandleAvailability.RemoteIntentLookup.status(for:on:useCachedAvailabilityOnly:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 112);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_21563DA58;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of HandleAvailability.RemoteIntentLookup.fetchStatus(for:on:useCachedAvailabilityOnly:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 120);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_21564D9AC;

  return v12(a1, a2, a3);
}

uint64_t sub_21564D9AC(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t _s18RemoteIntentLookupC44AvailabilityCachePolicyAppEnumRepresentationOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s18RemoteIntentLookupC44AvailabilityCachePolicyAppEnumRepresentationOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21564DC90()
{
  result = qword_27CA68630;
  if (!qword_27CA68630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68630);
  }

  return result;
}

unint64_t sub_21564DCE4()
{
  result = qword_27CA68638;
  if (!qword_27CA68638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68638);
  }

  return result;
}

unint64_t sub_21564DD38()
{
  result = qword_27CA68640;
  if (!qword_27CA68640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68640);
  }

  return result;
}

void *ComposeRecipientFetchRequest.Client.services.getter()
{
  v1 = MEMORY[0x277D84F90];
  if (*v0 == 1)
  {
    v1 = &unk_2827872D0;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return &unk_2827872A8;
  }
}

uint64_t ComposeRecipientFetchRequest.Client.hashValue.getter()
{
  v1 = *v0;
  sub_21565719C();
  MEMORY[0x21606D450](v1);
  return sub_2156571BC();
}

unint64_t sub_21564DE80()
{
  result = qword_27CA68658;
  if (!qword_27CA68658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68658);
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_21564DEE8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_21564DF30(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t ComposeRecipient.Handle.Value.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  MEMORY[0x21606D450](*(v0 + 16));

  return sub_215656E8C();
}

uint64_t ComposeRecipient.Handle.Value.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_21565719C();
  MEMORY[0x21606D450](v3);
  sub_215656E8C();
  return sub_2156571BC();
}

uint64_t sub_21564E054()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_21565719C();
  MEMORY[0x21606D450](v3);
  sub_215656E8C();
  return sub_2156571BC();
}

uint64_t sub_21564E0B8()
{
  v1 = *v0;
  v2 = v0[1];
  MEMORY[0x21606D450](*(v0 + 16));

  return sub_215656E8C();
}

uint64_t sub_21564E10C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_21565719C();
  MEMORY[0x21606D450](v3);
  sub_215656E8C();
  return sub_2156571BC();
}

uint64_t ComposeRecipient.Handle.Label.hash(into:)()
{
  switch(v0[1])
  {
    case 0:
      v1 = 0;
      goto LABEL_18;
    case 1:
      v1 = 1;
      goto LABEL_18;
    case 2:
      v1 = 2;
      goto LABEL_18;
    case 3:
      v1 = 3;
      goto LABEL_18;
    case 4:
      v1 = 4;
      goto LABEL_18;
    case 5:
      v1 = 5;
      goto LABEL_18;
    case 6:
      v1 = 6;
      goto LABEL_18;
    case 7:
      v1 = 7;
      goto LABEL_18;
    case 8:
      v1 = 8;
      goto LABEL_18;
    case 9:
      v1 = 9;
      goto LABEL_18;
    case 10:
      v1 = 10;
      goto LABEL_18;
    case 11:
      v1 = 11;
      goto LABEL_18;
    case 12:
      v1 = 12;
LABEL_18:
      result = MEMORY[0x21606D450](v1);
      break;
    default:
      v2 = *v0;
      MEMORY[0x21606D450](13);

      result = sub_215656E8C();
      break;
  }

  return result;
}

uint64_t ComposeRecipient.Handle.Label.hashValue.getter()
{
  v2 = *v0;
  sub_21565719C();
  ComposeRecipient.Handle.Label.hash(into:)();
  return sub_2156571BC();
}

uint64_t sub_21564E2C0()
{
  v2 = *v0;
  sub_21565719C();
  ComposeRecipient.Handle.Label.hash(into:)();
  return sub_2156571BC();
}

uint64_t sub_21564E310()
{
  v2 = *v0;
  sub_21565719C();
  ComposeRecipient.Handle.Label.hash(into:)();
  return sub_2156571BC();
}

uint64_t ComposeRecipient.Handle.value.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_215633DC0(v2, v3, v4);
}

uint64_t ComposeRecipient.Handle.value.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_2156352F4(*v1, *(v1 + 8), *(v1 + 16));
  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  return result;
}

uint64_t ComposeRecipient.Handle.label.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  *a1 = v2;
  a1[1] = v3;
  return sub_215633DD8(v2, v3);
}

uint64_t ComposeRecipient.Handle.label.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_21563530C(*(v1 + 24), *(v1 + 32));
  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  return result;
}

uint64_t ComposeRecipient.Handle.availability.setter(uint64_t a1)
{
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;
  return result;
}

uint64_t ComposeRecipient.Handle.init(_:label:availability:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = *(a1 + 16);
  v9 = *a2;
  v10 = a2[1];
  sub_21563C548(MEMORY[0x277D84F90]);

  *a4 = v6;
  *(a4 + 8) = v7;
  *(a4 + 16) = v8;
  *(a4 + 24) = v9;
  *(a4 + 32) = v10;
  *(a4 + 40) = a3;
  return result;
}

uint64_t sub_21564E504@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v11 = *a3;
  v12 = a3[1];
  sub_21563C548(MEMORY[0x277D84F90]);

  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a5;
  *(a6 + 24) = v11;
  *(a6 + 32) = v12;
  *(a6 + 40) = a4;
  return result;
}

uint64_t ComposeRecipient.Handle.init(applicationDefined:label:availability:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_21563C548(MEMORY[0x277D84F90]);

  if (a4)
  {
    v13 = a3;
  }

  else
  {
    v13 = 0;
  }

  v14 = 11;
  *a6 = a1;
  *(a6 + 8) = a2;
  if (a4)
  {
    v14 = a4;
  }

  *(a6 + 16) = 2;
  *(a6 + 24) = v13;
  *(a6 + 32) = v14;
  *(a6 + 40) = a5;
  return result;
}

double ComposeRecipient.Handle.init(autocompleteValue:availability:)@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_21563C548(MEMORY[0x277D84F90]);
  v6 = a1;
  sub_21564E670(v6, &v9);
  v7 = v10;
  *a3 = v9;
  *(a3 + 16) = v7;
  sub_21564E828(v6, &v9);

  result = *&v9;
  *(a3 + 24) = v9;
  *(a3 + 40) = a2;
  return result;
}

void sub_21564E670(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 addressType];
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        goto LABEL_12;
      case 4:
        v4 = [a1 address];
        if (!v4)
        {
          __break(1u);
          goto LABEL_10;
        }

        break;
      case 5:
        v4 = [a1 address];
        if (!v4)
        {
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

        break;
      default:
        goto LABEL_24;
    }

LABEL_19:
    v6 = v4;
    v7 = 2;
    goto LABEL_20;
  }

  if (v4)
  {
    if (v4 == 1)
    {
      v5 = [a1 address];
      if (v5)
      {
        v6 = v5;
        v7 = 1;
LABEL_20:
        v9 = sub_215656E5C();
        v11 = v10;

        *a2 = v9;
        *(a2 + 8) = v11;
        *(a2 + 16) = v7;
        return;
      }

      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    goto LABEL_14;
  }

LABEL_10:
  v4 = [a1 address];
  if (v4)
  {
    goto LABEL_19;
  }

  __break(1u);
LABEL_12:
  v4 = [a1 address];
  if (v4)
  {
    goto LABEL_19;
  }

  __break(1u);
LABEL_14:
  if (v4 == 2)
  {
    v8 = [a1 address];
    if (v8)
    {
      v6 = v8;
      v7 = 0;
      goto LABEL_20;
    }

    goto LABEL_22;
  }

LABEL_24:
  sub_2156570BC();
  __break(1u);
}

void sub_21564E828(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 label];
  if (!v4)
  {

LABEL_9:
    v6 = 0;
    v8 = 11;
    goto LABEL_12;
  }

  v5 = v4;
  v6 = sub_215656E5C();
  v8 = v7;

  v9 = *MEMORY[0x277CBD8E0];
  if (v6 == sub_215656E5C() && v8 == v10)
  {

    goto LABEL_11;
  }

  v12 = sub_21565713C();

  if (v12)
  {

LABEL_11:

    v6 = 0;
    v8 = 0;
    goto LABEL_12;
  }

  v13 = *MEMORY[0x277CBD940];
  if (v6 == sub_215656E5C() && v8 == v14)
  {

    goto LABEL_20;
  }

  v16 = sub_21565713C();

  if (v16)
  {

LABEL_20:

    v6 = 0;
    v8 = 1;
    goto LABEL_12;
  }

  v17 = *MEMORY[0x277CBD930];
  if (v6 == sub_215656E5C() && v8 == v18)
  {

LABEL_26:

    v6 = 0;
    v8 = 12;
    goto LABEL_12;
  }

  v19 = sub_21565713C();

  if (v19)
  {

    goto LABEL_26;
  }

  v20 = *MEMORY[0x277CBD8E8];
  if (v6 == sub_215656E5C() && v8 == v21)
  {

    goto LABEL_9;
  }

  v22 = sub_21565713C();

  if (v22)
  {

    goto LABEL_9;
  }

  v23 = *MEMORY[0x277CBD8D8];
  if (v6 == sub_215656E5C() && v8 == v24)
  {

LABEL_37:

    v6 = 0;
    v8 = 4;
    goto LABEL_12;
  }

  v25 = sub_21565713C();

  if (v25)
  {

    goto LABEL_37;
  }

  v26 = *MEMORY[0x277CBD900];
  if (v6 == sub_215656E5C() && v8 == v27)
  {

LABEL_43:

    v6 = 0;
    v8 = 6;
    goto LABEL_12;
  }

  v28 = sub_21565713C();

  if (v28)
  {

    goto LABEL_43;
  }

  v29 = *MEMORY[0x277CBD8F0];
  if (v6 == sub_215656E5C() && v8 == v30)
  {

LABEL_49:

    v6 = 0;
    v8 = 3;
    goto LABEL_12;
  }

  v31 = sub_21565713C();

  if (v31)
  {

    goto LABEL_49;
  }

  v32 = *MEMORY[0x277CBD908];
  if (v6 == sub_215656E5C() && v8 == v33)
  {

LABEL_55:

    v6 = 0;
    v8 = 5;
    goto LABEL_12;
  }

  v34 = sub_21565713C();

  if (v34)
  {

    goto LABEL_55;
  }

  v35 = *MEMORY[0x277CBD928];
  if (v6 == sub_215656E5C() && v8 == v36)
  {

LABEL_61:

    v6 = 0;
    v8 = 2;
    goto LABEL_12;
  }

  v37 = sub_21565713C();

  if (v37)
  {

    goto LABEL_61;
  }

  v38 = *MEMORY[0x277CBD8F8];
  if (v6 == sub_215656E5C() && v8 == v39)
  {

LABEL_67:

    v6 = 0;
    v8 = 7;
    goto LABEL_12;
  }

  v40 = sub_21565713C();

  if (v40)
  {

    goto LABEL_67;
  }

  v41 = *MEMORY[0x277CBD920];
  if (v6 == sub_215656E5C() && v8 == v42)
  {

LABEL_73:

    v6 = 0;
    v8 = 8;
    goto LABEL_12;
  }

  v43 = sub_21565713C();

  if (v43)
  {

    goto LABEL_73;
  }

  v44 = *MEMORY[0x277CBD910];
  if (v6 == sub_215656E5C() && v8 == v45)
  {
  }

  else
  {
    v46 = sub_21565713C();

    if ((v46 & 1) == 0)
    {
      v47 = *MEMORY[0x277CBD918];
      if (v6 == sub_215656E5C() && v8 == v48)
      {
      }

      else
      {
        v49 = sub_21565713C();

        if ((v49 & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      v6 = 0;
      v8 = 10;
      goto LABEL_12;
    }
  }

  v6 = 0;
  v8 = 9;
LABEL_12:
  *a2 = v6;
  a2[1] = v8;
}

uint64_t ComposeRecipient.Handle.Value.stringValue.getter()
{
  v1 = *v0;
  sub_215633DC0(*v0, *(v0 + 8), *(v0 + 16));
  return v1;
}

uint64_t ComposeRecipient.Handle.Label.stringValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = 1701670760;
  switch(v2)
  {
    case 0uLL:
      break;
    case 1uLL:
      v3 = 1802661751;
      break;
    case 2uLL:
      v3 = 0x656E6F685069;
      break;
    case 3uLL:
      v3 = 0x615720656C707041;
      break;
    case 4uLL:
      v3 = 0x64756F6C4369;
      break;
    case 5uLL:
      v3 = 0x656C69626F6DLL;
      break;
    case 6uLL:
      v3 = 1852399981;
      break;
    case 7uLL:
      v4 = 1701670760;
      goto LABEL_15;
    case 8uLL:
      v4 = 1802661751;
LABEL_15:
      v3 = v4 | 0x7861662000000000;
      break;
    case 9uLL:
      v3 = 0x616620726568746FLL;
      break;
    case 0xAuLL:
      v3 = 0x7265676170;
      break;
    case 0xBuLL:
      v3 = 0x726568746FLL;
      break;
    case 0xCuLL:
      v3 = 0x6C6F6F686373;
      break;
    default:
      v3 = v1;
      break;
  }

  sub_215633DD8(v1, v2);
  return v3;
}

uint64_t sub_21564F098(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    if (*(*(v3 + 56) + v12) == 3)
    {
      return 1;
    }

    v13 = sub_21563A720(*(*(v3 + 48) + v12));
    if (v14)
    {
      v15 = *(*(a2 + 56) + v13);
      sub_21563C768();
      result = sub_215656E1C();
      if (result)
      {
        continue;
      }
    }

    return 0;
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t ComposeRecipient.Handle.description.getter()
{
  v1 = *(v0 + 3);
  v2 = *(v0 + 4);
  v3 = *(v0 + 5);
  v6 = *v0;
  v7 = *(v0 + 16);
  sub_2156570AC();
  MEMORY[0x21606D140](10272, 0xE200000000000000);
  sub_2156570AC();
  MEMORY[0x21606D140](2629673, 0xE300000000000000);
  sub_2156499B4();
  v4 = sub_215656DDC();
  MEMORY[0x21606D140](v4);

  MEMORY[0x21606D140](41, 0xE100000000000000);
  return 0;
}

uint64_t ComposeRecipient.Handle.debugDescription.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = 0xED00007373657264;
  v5 = 0x6461206C69616D65;
  if (*(v0 + 16) != 1)
  {
    v5 = 0xD000000000000013;
    v4 = 0x8000000215665810;
  }

  if (*(v0 + 16))
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x756E20656E6F6870;
  }

  if (*(v0 + 16))
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xEC0000007265626DLL;
  }

  MEMORY[0x21606D140](v6, v7);

  MEMORY[0x21606D140](10272, 0xE200000000000000);
  sub_2156570AC();
  MEMORY[0x21606D140](2629673, 0xE300000000000000);
  sub_2156499B4();
  v8 = sub_215656DDC();
  MEMORY[0x21606D140](v8);

  MEMORY[0x21606D140](41, 0xE100000000000000);
  return 0;
}

uint64_t _s20ContactsAutocomplete16ComposeRecipientV6HandleV5ValueO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      v14 = *a1;
      if (v3 != v6 || v2 != v5)
      {
        v10 = sub_21565713C();
        sub_215633DC0(v6, v5, 0);
        sub_215633DC0(v3, v2, 0);
        sub_2156352F4(v3, v2, 0);
        v11 = v6;
        v12 = v5;
        v13 = 0;
        goto LABEL_21;
      }

      sub_215633DC0(v14, v2, 0);
      sub_215633DC0(v3, v2, 0);
      sub_2156352F4(v3, v2, 0);
      v19 = v3;
      v20 = v2;
      v21 = 0;
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  if (v4 == 1)
  {
    if (v7 == 1)
    {
      v8 = *a1;
      if (v3 != v6 || v2 != v5)
      {
        v10 = sub_21565713C();
        sub_215633DC0(v6, v5, 1u);
        sub_215633DC0(v3, v2, 1u);
        sub_2156352F4(v3, v2, 1u);
        v11 = v6;
        v12 = v5;
        v13 = 1;
LABEL_21:
        sub_2156352F4(v11, v12, v13);
        return v10 & 1;
      }

      sub_215633DC0(v8, v2, 1u);
      sub_215633DC0(v3, v2, 1u);
      sub_2156352F4(v3, v2, 1u);
      v19 = v3;
      v20 = v2;
      v21 = 1;
      goto LABEL_26;
    }

LABEL_22:
    sub_215633DC0(*a2, *(a2 + 8), v7);
    sub_215633DC0(v3, v2, v4);
    sub_2156352F4(v3, v2, v4);
    sub_2156352F4(v6, v5, v7);
    return 0;
  }

  if (v7 != 2)
  {
    goto LABEL_22;
  }

  v16 = *a1;
  if (v3 != v6 || v2 != v5)
  {
    v10 = sub_21565713C();
    sub_215633DC0(v6, v5, 2u);
    sub_215633DC0(v3, v2, 2u);
    sub_2156352F4(v3, v2, 2u);
    v11 = v6;
    v12 = v5;
    v13 = 2;
    goto LABEL_21;
  }

  sub_215633DC0(v16, v2, 2u);
  sub_215633DC0(v3, v2, 2u);
  sub_2156352F4(v3, v2, 2u);
  v19 = v3;
  v20 = v2;
  v21 = 2;
LABEL_26:
  sub_2156352F4(v19, v20, v21);
  return 1;
}

uint64_t _s20ContactsAutocomplete16ComposeRecipientV6HandleV5LabelO2eeoiySbAG_AGtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *(a2 + 8);
  switch(v3)
  {
    case 0uLL:
      if (v5)
      {
        goto LABEL_34;
      }

      sub_21563530C(*a1, 0);
      v6 = v4;
      v7 = 0;
      goto LABEL_36;
    case 1uLL:
      if (v5 != 1)
      {
        goto LABEL_34;
      }

      v8 = 1;
      sub_21563530C(*a1, 1uLL);
      sub_21563530C(v4, 1uLL);
      return v8;
    case 2uLL:
      if (v5 != 2)
      {
        goto LABEL_34;
      }

      sub_21563530C(*a1, 2uLL);
      v6 = v4;
      v7 = 2;
      goto LABEL_36;
    case 3uLL:
      if (v5 != 3)
      {
        goto LABEL_34;
      }

      sub_21563530C(*a1, 3uLL);
      v6 = v4;
      v7 = 3;
      goto LABEL_36;
    case 4uLL:
      if (v5 != 4)
      {
        goto LABEL_34;
      }

      sub_21563530C(*a1, 4uLL);
      v6 = v4;
      v7 = 4;
      goto LABEL_36;
    case 5uLL:
      if (v5 != 5)
      {
        goto LABEL_34;
      }

      sub_21563530C(*a1, 5uLL);
      v6 = v4;
      v7 = 5;
      goto LABEL_36;
    case 6uLL:
      if (v5 != 6)
      {
        goto LABEL_34;
      }

      sub_21563530C(*a1, 6uLL);
      v6 = v4;
      v7 = 6;
      goto LABEL_36;
    case 7uLL:
      if (v5 != 7)
      {
        goto LABEL_34;
      }

      sub_21563530C(*a1, 7uLL);
      v6 = v4;
      v7 = 7;
      goto LABEL_36;
    case 8uLL:
      if (v5 != 8)
      {
        goto LABEL_34;
      }

      sub_21563530C(*a1, 8uLL);
      v6 = v4;
      v7 = 8;
      goto LABEL_36;
    case 9uLL:
      if (v5 != 9)
      {
        goto LABEL_34;
      }

      sub_21563530C(*a1, 9uLL);
      v6 = v4;
      v7 = 9;
      goto LABEL_36;
    case 0xAuLL:
      if (v5 != 10)
      {
        goto LABEL_34;
      }

      sub_21563530C(*a1, 0xAuLL);
      v6 = v4;
      v7 = 10;
      goto LABEL_36;
    case 0xBuLL:
      if (v5 != 11)
      {
        goto LABEL_34;
      }

      sub_21563530C(*a1, 0xBuLL);
      v6 = v4;
      v7 = 11;
      goto LABEL_36;
    case 0xCuLL:
      if (v5 != 12)
      {
        goto LABEL_34;
      }

      sub_21563530C(*a1, 0xCuLL);
      v6 = v4;
      v7 = 12;
      goto LABEL_36;
    default:
      if (v5 < 0xD)
      {
LABEL_34:
        sub_215633DD8(*a2, *(a2 + 8));
        sub_215633DD8(v2, v3);
        sub_21563530C(v2, v3);
        sub_21563530C(v4, v5);
        return 0;
      }

      else
      {
        v9 = *a1;
        if (v2 != v4 || v3 != v5)
        {
          v11 = sub_21565713C();
          sub_215633DD8(v4, v5);
          sub_215633DD8(v2, v3);
          sub_21563530C(v2, v3);
          sub_21563530C(v4, v5);
          return v11 & 1;
        }

        sub_215633DD8(v9, v3);
        sub_215633DD8(v2, v3);
        sub_21563530C(v2, v3);
        v6 = v2;
        v7 = v3;
LABEL_36:
        sub_21563530C(v6, v7);
        return 1;
      }
  }
}

uint64_t _s20ContactsAutocomplete16ComposeRecipientV6HandleV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a1 + 16);
  v12 = *(a2 + 16);
  v18 = *a1;
  v19 = v2;
  v20 = v11;
  v15 = v6;
  v16 = v7;
  v17 = v12;
  sub_215633DC0(v18, v2, v11);
  sub_215633DC0(v6, v7, v12);
  LOBYTE(v6) = _s20ContactsAutocomplete16ComposeRecipientV6HandleV5ValueO2eeoiySbAG_AGtFZ_0(&v18, &v15);
  sub_2156352F4(v15, v16, v17);
  sub_2156352F4(v18, v19, v20);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v18 = v3;
  v19 = v4;
  v15 = v8;
  v16 = v9;
  sub_215633DD8(v3, v4);
  sub_215633DD8(v8, v9);
  v13 = _s20ContactsAutocomplete16ComposeRecipientV6HandleV5LabelO2eeoiySbAG_AGtFZ_0(&v18, &v15);
  sub_21563530C(v15, v16);
  sub_21563530C(v18, v19);
  if ((v13 & 1) == 0)
  {
    return 0;
  }

  return sub_21564F098(v5, v10);
}

unint64_t sub_21564FAF8()
{
  result = qword_27CA68660;
  if (!qword_27CA68660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68660);
  }

  return result;
}

unint64_t sub_21564FB50()
{
  result = qword_27CA68668;
  if (!qword_27CA68668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68668);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_20ContactsAutocomplete16ComposeRecipientV6HandleV5LabelO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
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

uint64_t sub_21564FBDC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21564FC24(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t sub_21564FC80(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_21564FCC8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_21564FD24(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF2 && *(a1 + 16))
  {
    return (*a1 + 2147483635);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 12;
  if (v4 >= 0xE)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21564FD7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF3)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483635;
    if (a3 >= 0x7FFFFFF3)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF3)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 12;
    }
  }

  return result;
}

void *sub_21564FDCC(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_21564FDFC()
{
  v0 = sub_215656D6C();
  __swift_allocate_value_buffer(v0, qword_27CA6E078);
  __swift_project_value_buffer(v0, qword_27CA6E078);
  return sub_215656D5C();
}

id sub_21564FE78()
{
  v0 = objc_allocWithZone(CNAutocompleteStore);

  return [v0 init];
}

uint64_t sub_21564FEB0@<X0>(uint64_t *a1@<X8>)
{
  KnownIDStatusLookup = type metadata accessor for HandleAvailability.LastKnownIDStatusLookup();
  result = HandleAvailability.LastKnownIDStatusLookup.__allocating_init()();
  a1[3] = KnownIDStatusLookup;
  a1[4] = &protocol witness table for HandleAvailability.LastKnownIDStatusLookup;
  *a1 = result;
  return result;
}

uint64_t sub_21564FEF0(uint64_t a1, __int128 *a2)
{
  v4 = swift_allocObject();
  *(v4 + 64) = sub_215653BA4(MEMORY[0x277D84F90]);
  *(v4 + 16) = a1;
  sub_21563C3A4(a2, v4 + 24);
  return v4;
}

uint64_t sub_21564FF54(uint64_t *a1)
{
  *(v2 + 96) = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA68670, &qword_21565F448);
  *(v2 + 104) = v4;
  v5 = *(v4 - 8);
  *(v2 + 112) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 120) = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA68678, &qword_21565F450) - 8) + 64) + 15;
  *(v2 + 128) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA68680, &qword_21565F458);
  *(v2 + 136) = v8;
  v9 = *(v8 - 8);
  *(v2 + 144) = v9;
  v10 = *(v9 + 64) + 15;
  *(v2 + 152) = swift_task_alloc();
  v11 = sub_215656A9C();
  *(v2 + 160) = v11;
  v12 = *(v11 - 8);
  *(v2 + 168) = v12;
  v13 = *(v12 + 64) + 15;
  *(v2 + 176) = swift_task_alloc();
  *(v2 + 184) = swift_task_alloc();
  *(v2 + 192) = swift_task_alloc();
  *(v2 + 200) = swift_task_alloc();
  v14 = swift_task_alloc();
  v15 = *a1;
  *(v2 + 208) = v14;
  *(v2 + 216) = v15;
  *(v2 + 361) = *(a1 + 8);
  *(v2 + 362) = *(a1 + 9);
  *(v2 + 224) = a1[2];
  *(v2 + 363) = *(a1 + 24);

  return MEMORY[0x2822009F8](sub_215650174, 0, 0);
}

uint64_t sub_215650174()
{
  v100 = v0;
  v1 = *(v0 + 216);
  if (*(v1 + 16))
  {
    v2 = *(v0 + 208);
    sub_215656A8C();
    *(v0 + 40) = v1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA67E50, &unk_21565F460);
    sub_21565476C(&qword_27CA68690, &qword_27CA67E50, &unk_21565F460);
    v3 = sub_215656E0C();
    v5 = v4;

    if (qword_27CA6DD90 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 200);
    v6 = *(v0 + 208);
    v9 = *(v0 + 160);
    v8 = *(v0 + 168);
    v10 = sub_215656D6C();
    *(v0 + 232) = __swift_project_value_buffer(v10, qword_27CA6E078);
    v11 = *(v8 + 16);
    *(v0 + 240) = v11;
    *(v0 + 248) = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v98 = v11;
    v11(v7, v6, v9);

    v12 = sub_215656D4C();
    v13 = sub_215656F7C();

    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 200);
    v17 = *(v0 + 160);
    v16 = *(v0 + 168);
    if (v14)
    {
      v18 = v5;
      v19 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v99 = v96;
      *v19 = 136380931;
      *(v19 + 4) = sub_21563A06C(v3, v18, &v99);
      *(v19 + 12) = 2080;
      sub_215654394();
      v20 = sub_21565711C();
      v22 = v21;
      v23 = *(v16 + 8);
      v23(v15, v17);
      v24 = sub_21563A06C(v20, v22, &v99);

      *(v19 + 14) = v24;
      _os_log_impl(&dword_2155FE000, v12, v13, "Preparing request for “%{private}s” (%s)", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21606DDB0](v96, -1, -1);
      MEMORY[0x21606DDB0](v19, -1, -1);
    }

    else
    {

      v23 = *(v16 + 8);
      v23(v15, v17);
    }

    *(v0 + 256) = v23;
    v36 = *(v0 + 361);
    v37 = *(v0 + 216);
    v38 = [objc_allocWithZone(CNAutocompleteFetchRequest) init];
    *(v0 + 264) = v38;
    v39 = sub_215656ECC();
    [v38 setSearchNames_];

    LOBYTE(v39) = *(v0 + 363);
    [v38 setSearchType_];
    if ((v39 & 1) == 0)
    {
      [v38 setMaximumResultsCount_];
    }

    v98(*(v0 + 192), *(v0 + 208), *(v0 + 160));
    v40 = sub_215656D4C();
    v41 = sub_215656F7C();
    v42 = os_log_type_enabled(v40, v41);
    v43 = *(v0 + 192);
    v45 = *(v0 + 160);
    v44 = *(v0 + 168);
    v97 = v23;
    if (v42)
    {
      v95 = v38;
      v46 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v99 = v94;
      *v46 = 136315138;
      sub_215654394();
      v47 = sub_21565711C();
      v49 = v48;
      v23(v43, v45);
      v50 = sub_21563A06C(v47, v49, &v99);

      *(v46 + 4) = v50;
      _os_log_impl(&dword_2155FE000, v40, v41, "Executing request (%s)", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v94);
      MEMORY[0x21606DDB0](v94, -1, -1);
      v51 = v46;
      v38 = v95;
      MEMORY[0x21606DDB0](v51, -1, -1);
    }

    else
    {

      v23(v43, v45);
    }

    v53 = *(v0 + 136);
    v52 = *(v0 + 144);
    v54 = *(v0 + 128);
    v55 = *(*(v0 + 96) + 16);
    v56 = objc_allocWithZone(type metadata accessor for StoreSpy());
    v57 = swift_unknownObjectRetain();
    v58 = sub_215652614(v57);
    *(v0 + 272) = v58;
    v59 = [*&v58[OBJC_IVAR____TtC20ContactsAutocompleteP33_EBE34D4C21093596BE6E4DA9F1A7E5D28StoreSpy_store] executeFetchRequest:v38 delegate:v58];
    v60 = OBJC_IVAR____TtC20ContactsAutocompleteP33_EBE34D4C21093596BE6E4DA9F1A7E5D28StoreSpy_results;
    swift_beginAccess();
    sub_21565456C(&v58[v60], v54, &qword_27CA68678, &qword_21565F450);
    v61 = (*(v52 + 48))(v54, 1, v53);
    if (v61 == 1)
    {
      __break(1u);
    }

    else
    {
      v66 = *(v0 + 208);
      v67 = *(v0 + 184);
      v68 = *(v0 + 152);
      v69 = *(v0 + 160);
      v70 = *(v0 + 136);
      v71 = *(v0 + 144);
      v72 = *(v0 + 128);

      (*(v71 + 32))(v68, v72, v70);
      *(swift_allocObject() + 16) = v59;
      v73 = sub_215656D8C();
      v74 = *(v73 + 48);
      v75 = *(v73 + 52);
      swift_allocObject();
      *(v0 + 280) = sub_215656D9C();
      v98(v67, v66, v69);
      v76 = sub_215656D4C();
      v77 = sub_215656F7C();
      v78 = os_log_type_enabled(v76, v77);
      v79 = *(v0 + 184);
      v80 = *(v0 + 160);
      v81 = *(v0 + 168);
      if (v78)
      {
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        v99 = v83;
        *v82 = 136315138;
        sub_215654394();
        v84 = sub_21565711C();
        v86 = v85;
        v97(v79, v80);
        v87 = sub_21563A06C(v84, v86, &v99);

        *(v82 + 4) = v87;
        _os_log_impl(&dword_2155FE000, v76, v77, "Waiting for query to complete (%s)", v82, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v83);
        MEMORY[0x21606DDB0](v83, -1, -1);
        MEMORY[0x21606DDB0](v82, -1, -1);
      }

      else
      {

        v97(v79, v80);
      }

      v88 = *(v0 + 152);
      v89 = *(v0 + 136);
      v90 = *(v0 + 120);
      *(v0 + 48) = MEMORY[0x277D84F90];
      sub_215656F3C();
      v91 = *(MEMORY[0x277D858B8] + 4);
      v92 = swift_task_alloc();
      *(v0 + 288) = v92;
      *v92 = v0;
      v92[1] = sub_2156509E4;
      v93 = *(v0 + 120);
      v64 = *(v0 + 104);
      v61 = v0 + 56;
      v65 = v0 + 64;
      v62 = 0;
      v63 = 0;
    }

    return MEMORY[0x2822005A8](v61, v62, v63, v64, v65);
  }

  else
  {
    v26 = *(v0 + 200);
    v25 = *(v0 + 208);
    v28 = *(v0 + 184);
    v27 = *(v0 + 192);
    v29 = *(v0 + 176);
    v30 = *(v0 + 152);
    v32 = *(v0 + 120);
    v31 = *(v0 + 128);

    v33 = *(v0 + 8);
    v34 = MEMORY[0x277D84F90];

    return v33(v34);
  }
}

uint64_t sub_2156509E4()
{
  v2 = *v1;
  v3 = *(*v1 + 288);
  v7 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v4 = *(v2 + 48);

    v5 = sub_215651D98;
  }

  else
  {
    v5 = sub_215650B00;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_215650B00()
{
  v135 = v0;
  v1 = v0 + 56;
  v2 = *(v0 + 56);
  if (!v2)
  {
    v130 = v0 + 56;
    v14 = *(v0 + 240);
    v15 = *(v0 + 248);
    v16 = *(v0 + 232);
    v17 = *(v0 + 208);
    v18 = *(v0 + 176);
    v19 = *(v0 + 160);
    (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));
    v14(v18, v17, v19);
    v20 = *(v0 + 48);
    *(v0 + 304) = v20;
    swift_bridgeObjectRetain_n();
    v21 = sub_215656D4C();
    v22 = sub_215656F9C();
    v23 = os_log_type_enabled(v21, v22);
    v24 = *(v0 + 256);
    v26 = *(v0 + 168);
    v25 = *(v0 + 176);
    isa = v20 >> 62;
    v27 = *(v0 + 160);
    v129 = v0;
    if (!v23)
    {
      swift_bridgeObjectRelease_n();

      v24(v25, v27);
      goto LABEL_20;
    }

    LOBYTE(v126) = v22;
    v127 = v21;
    v22 = swift_slowAlloc();
    v0 = swift_slowAlloc();
    v134[0] = v0;
    *v22 = 136315394;
    sub_215654394();
    v28 = sub_21565711C();
    v30 = v29;
    v24(v25, v27);
    v31 = sub_21563A06C(v28, v30, v134);
    isa = v20 >> 62;

    *(v22 + 4) = v31;
    *(v22 + 6) = 2048;
    if (v20 >> 62)
    {
      goto LABEL_73;
    }

    for (i = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2156570CC())
    {

      *(v22 + 14) = i;

      _os_log_impl(&dword_2155FE000, v127, v126, "Query is complete (%s) with: %ld items", v22, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v0);
      MEMORY[0x21606DDB0](v0, -1, -1);
      MEMORY[0x21606DDB0](v22, -1, -1);

      v0 = v129;
LABEL_20:
      v33 = *(v0 + 280);
      sub_215656D7C();
      if (isa)
      {
        break;
      }

      v34 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v34)
      {
        goto LABEL_22;
      }

LABEL_52:
      v37 = MEMORY[0x277D84F90];
LABEL_53:
      *(v0 + 312) = v37;
      v61 = *(v0 + 232);

      v62 = sub_215656D4C();
      v63 = sub_215656F7C();

      if (os_log_type_enabled(v62, v63))
      {
        v20 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v134[0] = v22;
        *v20 = 136380675;
        v64 = MEMORY[0x21606D190](v37, MEMORY[0x277D837D0]);
        isa = sub_21563A06C(v64, v65, v134);

        *(v20 + 4) = isa;
        _os_log_impl(&dword_2155FE000, v62, v63, "Will query for IDS status for handles: %{private}s", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v22);
        MEMORY[0x21606DDB0](v22, -1, -1);
        MEMORY[0x21606DDB0](v20, -1, -1);
      }

      v66 = *(v0 + 361);
      *(v0 + 72) = MEMORY[0x277D84F98];
      LOBYTE(v134[0]) = v66;
      v67 = ComposeRecipientFetchRequest.Client.services.getter();
      *(v0 + 320) = v67;
      v68 = v67[2];
      *(v0 + 328) = v68;
      if (!v68)
      {
        v78 = *(v0 + 304);
        v79 = *(v0 + 312);
        v80 = *(v0 + 232);

        v81 = sub_215656D4C();
        v82 = sub_215656F7C();
        if (os_log_type_enabled(v81, v82))
        {
          v83 = swift_slowAlloc();
          *v83 = 0;
          _os_log_impl(&dword_2155FE000, v81, v82, "Did query for IDS status", v83, 2u);
          MEMORY[0x21606DDB0](v83, -1, -1);
        }

        v84 = *(v0 + 296);
        v85 = *(v0 + 304);
        v86 = *(v0 + 362);
        v87 = *(v0 + 96);

        v88 = sub_215653D14(v85, v87, (v130 + 16));

        if (v86 == 1)
        {
          v89 = *(v0 + 232);
          v90 = sub_215656D4C();
          v91 = sub_215656F7C();
          if (os_log_type_enabled(v90, v91))
          {
            v92 = swift_slowAlloc();
            *v92 = 0;
            _os_log_impl(&dword_2155FE000, v90, v91, "Will unify results", v92, 2u);
            MEMORY[0x21606DDB0](v92, -1, -1);
          }

          v93 = *(v0 + 232);

          type metadata accessor for CombinesRecipients();
          KnownIDStatusLookupCAEycfC_0 = _s20ContactsAutocomplete18HandleAvailabilityV23LastKnownIDStatusLookupCAEycfC_0();
          v132 = (*(*KnownIDStatusLookupCAEycfC_0 + 80))(v88);

          v95 = sub_215656D4C();
          v96 = sub_215656F7C();
          if (os_log_type_enabled(v95, v96))
          {
            v97 = swift_slowAlloc();
            *v97 = 0;
            _os_log_impl(&dword_2155FE000, v95, v96, "Did unify results", v97, 2u);
            MEMORY[0x21606DDB0](v97, -1, -1);
          }

          v99 = *(v0 + 272);
          v98 = *(v0 + 280);
          v100 = *(v0 + 264);
          v128 = *(v0 + 256);
          v101 = *(v0 + 208);
          v102 = *(v0 + 160);
          v103 = *(v0 + 168);
          v104 = *(v0 + 144);
          v105 = *(v0 + 152);
          v106 = *(v0 + 136);

          (*(v104 + 8))(v105, v106);
          v128(v101, v102);
          v107 = v132;
        }

        else
        {
          v109 = *(v0 + 272);
          v108 = *(v0 + 280);
          v110 = *(v0 + 264);
          v133 = *(v0 + 256);
          v111 = *(v0 + 208);
          v112 = *(v0 + 160);
          v113 = *(v0 + 168);
          v115 = *(v0 + 144);
          v114 = *(v0 + 152);
          v116 = *(v0 + 136);

          v107 = v88;
          (*(v115 + 8))(v114, v116);
          v133(v111, v112);
        }

        v118 = *(v0 + 200);
        v117 = *(v0 + 208);
        v120 = *(v0 + 184);
        v119 = *(v0 + 192);
        v121 = *(v0 + 176);
        v122 = *(v0 + 152);
        v124 = *(v0 + 120);
        v123 = *(v0 + 128);

        v125 = *(v0 + 8);

        return v125(v107);
      }

      v69 = *(v0 + 96);
      *(v0 + 336) = 0;
      if (v67[2])
      {
        v70 = *(v67 + 32);
        *(v0 + 364) = v70;
        v71 = v69[6];
        v72 = v69[7];
        __swift_project_boxed_opaque_existential_1(v69 + 3, v71);
        *(v0 + 360) = v70;
        v73 = *(v72 + 8);
        v131 = (v73 + *v73);
        v74 = v73[1];
        v75 = swift_task_alloc();
        *(v0 + 344) = v75;
        *v75 = v0;
        v75[1] = sub_215651678;
        v76 = *(v0 + 312);

        return v131(v76, v0 + 360, v71, v72);
      }

      __break(1u);
LABEL_73:
      ;
    }

    v34 = sub_2156570CC();
    if (!v34)
    {
      goto LABEL_52;
    }

LABEL_22:
    v35 = 0;
    v36 = v20 & 0xFFFFFFFFFFFFFF8;
    v2 = v20 + 32;
    v126 = v34 - 1;
    v37 = MEMORY[0x277D84F90];
    v38 = &selRef_recordString_;
    while (2)
    {
      v127 = v37;
      v1 = v35;
      while (1)
      {
        if (v1 >= *(v36 + 16))
        {
          goto LABEL_45;
        }

        v22 = *(v2 + 8 * v1);
        v39 = [v22 v38[346]];
        if (!v39)
        {
          goto LABEL_26;
        }

        isa = v39;
        v40 = [isa addressType];
        v41 = [isa address];
        if (v40 != 2)
        {
          break;
        }

        if (!v41)
        {
          __break(1u);
          return MEMORY[0x2822005A8](v41, v42, v43, v44, v45);
        }

        v46 = *(v0 + 96);
        v47 = v41;
        v48 = sub_215656E5C();
        v50 = v49;

        v51 = sub_215651FD0(v48, v50);
        v20 = v52;

        v0 = v129;

        v38 = &selRef_recordString_;
        if (v20)
        {
          goto LABEL_35;
        }

LABEL_27:
        if (v34 == ++v1)
        {
          v37 = v127;
          goto LABEL_53;
        }
      }

      if (v41)
      {
        v53 = v41;
        v51 = sub_215656E5C();
        v20 = v54;

        v38 = &selRef_recordString_;
LABEL_35:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v127 = sub_2156332BC(0, v127[2].isa + 1, 1, v127);
        }

        isa = v127[2].isa;
        v55 = v127[3].isa;
        v22 = (isa + 1);
        if (isa >= v55 >> 1)
        {
          v127 = sub_2156332BC((v55 > 1), isa + 1, 1, v127);
        }

        v35 = v1 + 1;
        v127[2].isa = v22;
        v56 = &v127[2 * isa];
        v56[4].isa = v51;
        v56[5].isa = v20;
        v57 = v126 == v1;
        v37 = v127;
        if (v57)
        {
          goto LABEL_53;
        }

        continue;
      }

      break;
    }

LABEL_26:
    goto LABEL_27;
  }

  *(v0 + 88) = MEMORY[0x277D84F90];
  isa = v2 & 0xFFFFFFFFFFFFFF8;
  if (v2 >> 62)
  {
    goto LABEL_46;
  }

  for (j = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_2156570CC())
  {
    v5 = 0;
    v6 = v2 & 0xC000000000000001;
    v7 = &selRef_recordString_;
    while (1)
    {
      if (v6)
      {
        v11 = MEMORY[0x21606D2E0](v5, v2);
      }

      else
      {
        if (v5 >= *(isa + 16))
        {
          goto LABEL_44;
        }

        v11 = *(v2 + 8 * v5 + 32);
      }

      v12 = v11;
      v1 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if ([v11 v7[44]])
      {
      }

      else
      {
        v0 = v130;
        sub_21565706C();
        v8 = v2;
        v9 = isa;
        v10 = *(*(v130 + 32) + 16);
        sub_21565708C();
        isa = v9;
        v2 = v8;
        sub_21565709C();
        sub_21565707C();
        v7 = &selRef_recordString_;
      }

      ++v5;
      if (v1 == j)
      {
        v0 = v129;
        v1 = v130;
        v13 = *(v130 + 32);
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    ;
  }

  v13 = MEMORY[0x277D84F90];
LABEL_48:

  sub_215651EE0(v13);
  v58 = *(MEMORY[0x277D858B8] + 4);
  v59 = swift_task_alloc();
  *(v0 + 288) = v59;
  *v59 = v0;
  v59[1] = sub_2156509E4;
  v60 = *(v0 + 120);
  v44 = *(v0 + 104);
  v45 = v0 + 64;
  v41 = v1;
  v42 = 0;
  v43 = 0;

  return MEMORY[0x2822005A8](v41, v42, v43, v44, v45);
}

uint64_t sub_215651678(uint64_t a1)
{
  v2 = *(*v1 + 344);
  v4 = *v1;
  *(*v1 + 352) = a1;

  return MEMORY[0x2822009F8](sub_215651778, 0, 0);
}

unint64_t sub_215651778()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 364);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 80) = v1;
  result = sub_21563A720(v2);
  v6 = *(v1 + 16);
  v7 = (v5 & 1) == 0;
  v8 = __OFADD__(v6, v7);
  v9 = v6 + v7;
  if (v8)
  {
    __break(1u);
LABEL_30:
    v79 = result;
    sub_2156536A4();
    result = v79;
    goto LABEL_8;
  }

  v2 = v5;
  if (*(v1 + 24) >= v9)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_8;
    }

    goto LABEL_30;
  }

  v10 = *(v0 + 364);
  sub_215652FC4(v9, isUniquelyReferenced_nonNull_native);
  v11 = *(v0 + 80);
  result = sub_21563A720(v10);
  if ((v2 & 1) != (v12 & 1))
  {

    return sub_21565714C();
  }

LABEL_8:
  v13 = *(v0 + 80);
  v14 = *(v0 + 352);
  if (v2)
  {
    v15 = v13[7];
    v16 = *(v15 + 8 * result);
    *(v15 + 8 * result) = v14;
  }

  else
  {
    v17 = *(v0 + 364);
    v13[(result >> 6) + 8] |= 1 << result;
    *(v13[6] + result) = v17;
    *(v13[7] + 8 * result) = v14;
    v18 = v13[2];
    v8 = __OFADD__(v18, 1);
    v19 = v18 + 1;
    if (v8)
    {
      __break(1u);
      goto LABEL_32;
    }

    v13[2] = v19;
  }

  v20 = *(v0 + 328);
  v21 = *(v0 + 336) + 1;
  *(v0 + 72) = v13;
  if (v21 == v20)
  {
    v22 = *(v0 + 312);
    v23 = *(v0 + 320);
    v24 = *(v0 + 304);
    v25 = *(v0 + 232);

    v26 = sub_215656D4C();
    v27 = sub_215656F7C();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_2155FE000, v26, v27, "Did query for IDS status", v28, 2u);
      MEMORY[0x21606DDB0](v28, -1, -1);
    }

    v29 = *(v0 + 296);
    v30 = *(v0 + 304);
    v31 = *(v0 + 362);
    v32 = *(v0 + 96);

    v33 = sub_215653D14(v30, v32, (v0 + 72));

    if (v31 == 1)
    {
      v34 = *(v0 + 232);
      v35 = sub_215656D4C();
      v36 = sub_215656F7C();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_2155FE000, v35, v36, "Will unify results", v37, 2u);
        MEMORY[0x21606DDB0](v37, -1, -1);
      }

      v38 = *(v0 + 232);

      type metadata accessor for CombinesRecipients();
      KnownIDStatusLookupCAEycfC_0 = _s20ContactsAutocomplete18HandleAvailabilityV23LastKnownIDStatusLookupCAEycfC_0();
      v83 = (*(*KnownIDStatusLookupCAEycfC_0 + 80))(v33);

      v40 = sub_215656D4C();
      v41 = sub_215656F7C();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_2155FE000, v40, v41, "Did unify results", v42, 2u);
        MEMORY[0x21606DDB0](v42, -1, -1);
      }

      v44 = *(v0 + 272);
      v43 = *(v0 + 280);
      v45 = *(v0 + 264);
      v80 = *(v0 + 208);
      v81 = *(v0 + 256);
      v47 = *(v0 + 160);
      v46 = *(v0 + 168);
      v48 = *(v0 + 144);
      v49 = *(v0 + 152);
      v50 = *(v0 + 136);

      (*(v48 + 8))(v49, v50);
      v81(v80, v47);
      v51 = v83;
    }

    else
    {
      v62 = *(v0 + 272);
      v61 = *(v0 + 280);
      v63 = *(v0 + 264);
      v82 = *(v0 + 208);
      v85 = *(v0 + 256);
      v64 = v33;
      v66 = *(v0 + 160);
      v65 = *(v0 + 168);
      v68 = *(v0 + 144);
      v67 = *(v0 + 152);
      v69 = *(v0 + 136);

      (*(v68 + 8))(v67, v69);
      v51 = v64;
      v85(v82, v66);
    }

    v71 = *(v0 + 200);
    v70 = *(v0 + 208);
    v73 = *(v0 + 184);
    v72 = *(v0 + 192);
    v74 = *(v0 + 176);
    v75 = *(v0 + 152);
    v77 = *(v0 + 120);
    v76 = *(v0 + 128);

    v78 = *(v0 + 8);

    return v78(v51);
  }

  *(v0 + 336) = v21;
  v52 = *(v0 + 320);
  if (v21 >= *(v52 + 16))
  {
LABEL_32:
    __break(1u);
    return result;
  }

  v53 = *(v0 + 96);
  v54 = *(v52 + v21 + 32);
  *(v0 + 364) = v54;
  v55 = v53[6];
  v56 = v53[7];
  __swift_project_boxed_opaque_existential_1(v53 + 3, v55);
  *(v0 + 360) = v54;
  v57 = *(v56 + 8);
  v84 = (v57 + *v57);
  v58 = v57[1];
  v59 = swift_task_alloc();
  *(v0 + 344) = v59;
  *v59 = v0;
  v59[1] = sub_215651678;
  v60 = *(v0 + 312);

  return v84(v60, v0 + 360, v55, v56);
}

uint64_t sub_215651D98()
{
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[33];
  v4 = v0[26];
  v16 = v0[32];
  v17 = v0[25];
  v18 = v0[24];
  v19 = v0[23];
  v5 = v0[19];
  v14 = v0[21];
  v15 = v0[20];
  v6 = v0[17];
  v7 = v0[18];
  v8 = v0[15];
  v20 = v0[22];
  v21 = v0[16];
  v9 = v0[13];
  v10 = v0[14];

  (*(v10 + 8))(v8, v9);
  (*(v7 + 8))(v5, v6);
  v16(v4, v15);
  v11 = v0[8];

  v12 = v0[1];

  return v12();
}

uint64_t sub_215651EE0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_2156570CC();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_2156570CC();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_215652F24(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_215653978(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_215651FD0(uint64_t a1, unint64_t a2)
{
  if (sub_215656EBC())
  {
    if (qword_27CA6DD90 != -1)
    {
      swift_once();
    }

    v5 = sub_215656D6C();
    __swift_project_value_buffer(v5, qword_27CA6E078);

    v6 = sub_215656D4C();
    v7 = sub_215656F7C();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v40 = v9;
      *v8 = 136380675;
      *(v8 + 4) = sub_21563A06C(a1, a2, &v40);
      _os_log_impl(&dword_2155FE000, v6, v7, "Assuming '%{private}s' is already formatted", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v9);
      MEMORY[0x21606DDB0](v9, -1, -1);
      MEMORY[0x21606DDB0](v8, -1, -1);
    }

    goto LABEL_19;
  }

  swift_beginAccess();
  v10 = *(v2 + 64);
  if (*(v10 + 16))
  {
    v11 = *(v2 + 64);

    v12 = sub_21563A614(a1, a2);
    if (v13)
    {
      v14 = (*(v10 + 56) + 16 * v12);
      a1 = *v14;
      v15 = v14[1];

      return a1;
    }
  }

  v16 = [objc_opt_self() currentEnvironment];
  v17 = [v16 defaultCountryCode];

  if (!v17)
  {
    sub_215656E5C();
    v17 = sub_215656E4C();
  }

  v18 = objc_allocWithZone(MEMORY[0x277CBDB70]);
  v19 = sub_215656E4C();
  v20 = [v18 initWithStringValue:v19 countryCode:v17];

  v21 = [v20 unformattedInternationalStringValue];
  if (!v21)
  {

LABEL_19:

    return a1;
  }

  v22 = v21;
  v23 = sub_215656E5C();
  v25 = v24;

  swift_beginAccess();
  swift_bridgeObjectRetain_n();

  v26 = *(v2 + 64);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38 = *(v2 + 64);
  *(v2 + 64) = 0x8000000000000000;
  sub_21565351C(v23, v25, a1, a2, isUniquelyReferenced_nonNull_native);

  *(v2 + 64) = v38;
  swift_endAccess();
  if (qword_27CA6DD90 != -1)
  {
    swift_once();
  }

  v28 = sub_215656D6C();
  __swift_project_value_buffer(v28, qword_27CA6E078);

  v29 = v20;
  v30 = sub_215656D4C();
  v31 = sub_215656F7C();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v39 = v34;
    *v32 = 138478083;
    *(v32 + 4) = v29;
    *v33 = v29;
    *(v32 + 12) = 2081;
    v35 = v29;
    v36 = sub_21563A06C(v23, v25, &v39);

    *(v32 + 14) = v36;
    _os_log_impl(&dword_2155FE000, v30, v31, "Normalized %{private}@ --> %{private}s", v32, 0x16u);
    sub_215635240(v33, &qword_27CA68780, &qword_21565CB90);
    MEMORY[0x21606DDB0](v33, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v34);
    MEMORY[0x21606DDB0](v34, -1, -1);
    MEMORY[0x21606DDB0](v32, -1, -1);
  }

  else
  {
  }

  return v23;
}

uint64_t sub_2156524A8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 3);
  v2 = v0[8];

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

uint64_t sub_2156524F0(uint64_t a1)
{
  v4 = *(**v1 + 136);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21563F318;

  return v8(a1);
}

id sub_215652614(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA68798, &unk_21565F538);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA68678, &qword_21565F450);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v22 - v11;
  v13 = OBJC_IVAR____TtC20ContactsAutocompleteP33_EBE34D4C21093596BE6E4DA9F1A7E5D28StoreSpy_results;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA68680, &qword_21565F458);
  v15 = *(*(v14 - 8) + 56);
  v15(&v2[v13], 1, 1, v14);
  v16 = OBJC_IVAR____TtC20ContactsAutocompleteP33_EBE34D4C21093596BE6E4DA9F1A7E5D28StoreSpy_streamContinuation;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA68718, &qword_21565F4D0);
  (*(*(v17 - 8) + 56))(&v2[v16], 1, 1, v17);
  *&v2[OBJC_IVAR____TtC20ContactsAutocompleteP33_EBE34D4C21093596BE6E4DA9F1A7E5D28StoreSpy_store] = a1;
  v25.receiver = v2;
  v25.super_class = ObjectType;
  swift_unknownObjectRetain();
  v18 = objc_msgSendSuper2(&v25, sel_init);
  v24 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA68738, &unk_21565F500);
  (*(v5 + 104))(v8, *MEMORY[0x277D858A0], v4);
  v19 = v18;
  sub_215656F5C();
  swift_unknownObjectRelease();
  v15(v12, 0, 1, v14);
  v20 = OBJC_IVAR____TtC20ContactsAutocompleteP33_EBE34D4C21093596BE6E4DA9F1A7E5D28StoreSpy_results;
  swift_beginAccess();
  sub_2156547BC(v12, v19 + v20, &qword_27CA68678, &qword_21565F450);
  swift_endAccess();

  return v19;
}

uint64_t sub_2156528F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA68720, &qword_21565F4F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA68718, &qword_21565F4D0);
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, a1, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  v10 = OBJC_IVAR____TtC20ContactsAutocompleteP33_EBE34D4C21093596BE6E4DA9F1A7E5D28StoreSpy_streamContinuation;
  swift_beginAccess();
  sub_2156547BC(v7, a2 + v10, &qword_27CA68720, &qword_21565F4F0);
  return swift_endAccess();
}

id sub_215652E70()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_215652F24(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_2156570CC();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_21565704C();
  *v1 = result;
  return result;
}

uint64_t sub_215652FC4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA68750, &qword_21565F510);
  v33 = a2;
  result = sub_2156570EC();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
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
      v21 = *(*(v5 + 48) + v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      sub_2156499B4();
      result = sub_215656DEC();
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

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
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

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
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

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_21565325C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA68788, &unk_21565F528);
  v40 = a2;
  result = sub_2156570EC();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_21565719C();
      sub_215656E8C();
      result = sub_2156571BC();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_21565351C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_21563A614(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_21565325C(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_21563A614(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = sub_21565714C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_215653800();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v24[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v24[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v24[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;
}

void *sub_2156536A4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA68750, &qword_21565F510);
  v2 = *v0;
  v3 = sub_2156570DC();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void *sub_215653800()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA68788, &unk_21565F528);
  v2 = *v0;
  v3 = sub_2156570DC();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

uint64_t sub_215653978(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2156570CC();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_2156570CC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_21565476C(&unk_27CA68740, &qword_27CA68738, &unk_21565F500);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA68738, &unk_21565F500);
            v9 = sub_215653B1C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_215654720();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_215653B1C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x21606D2E0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_215653B9C;
  }

  __break(1u);
  return result;
}

unint64_t sub_215653BA4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA68788, &unk_21565F528);
    v3 = sub_2156570FC();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_21563A614(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
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

uint64_t type metadata accessor for StoreSpy()
{
  result = qword_27CA6DDB0;
  if (!qword_27CA6DDB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_215653D14(unint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  v64 = a3;
  v60 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA68760, &unk_21565F518);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v60 - v8;
  v10 = type metadata accessor for ComposeRecipient(0);
  v67 = *(v10 - 8);
  v11 = *(v67 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v75 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v66 = &v60 - v14;
  if (a1 >> 62)
  {
    goto LABEL_63;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2156570CC())
  {
    v16 = 0;
    v73 = a1 & 0xFFFFFFFFFFFFFF8;
    v74 = a1 & 0xC000000000000001;
    v71 = (v67 + 56);
    v72 = a1 + 32;
    v77 = MEMORY[0x277D84F90];
    v70 = (v67 + 48);
    v62 = a1;
    v63 = v4;
    v61 = v9;
    v65 = v10;
    v68 = i;
    while (1)
    {
      if (v74)
      {
        v17 = MEMORY[0x21606D2E0](v16, a1);
        v18 = __OFADD__(v16++, 1);
        if (v18)
        {
          goto LABEL_60;
        }
      }

      else
      {
        if (v16 >= *(v73 + 16))
        {
          goto LABEL_61;
        }

        v17 = *(v72 + 8 * v16);
        v18 = __OFADD__(v16++, 1);
        if (v18)
        {
          goto LABEL_60;
        }
      }

      v80 = v17;
      v19 = [v17 value];
      if (!v19)
      {
        v29 = 1;
        goto LABEL_47;
      }

      v20 = v19;
      v21 = [v20 addressType];
      v22 = [v20 address];
      v23 = v22;
      if (v21 == 2)
      {
        if (!v22)
        {
          __break(1u);
LABEL_67:
          result = sub_21565714C();
          __break(1u);
          return result;
        }

        v24 = sub_215656E5C();
        v26 = v25;

        v76 = sub_215651FD0(v24, v26);
        v28 = v27;

        v78 = v28;
        if (v28)
        {
          v69 = v16;
          goto LABEL_17;
        }

        v29 = 1;
        v10 = v65;
        goto LABEL_46;
      }

      if (v22)
      {
        break;
      }

      v29 = 1;
LABEL_46:
      i = v68;
LABEL_47:
      (*v71)(v9, v29, 1, v10);
      if (v4)
      {

        return v77;
      }

      if ((*v70)(v9, 1, v10) == 1)
      {
        sub_215635240(v9, &unk_27CA68760, &unk_21565F518);
      }

      else
      {
        v54 = v16;
        v55 = v66;
        sub_21563F618(v9, v66);
        sub_21563F618(v55, v75);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v77 = sub_215631D24(0, v77[2] + 1, 1, v77);
        }

        v57 = v77[2];
        v56 = v77[3];
        if (v57 >= v56 >> 1)
        {
          v77 = sub_215631D24(v56 > 1, v57 + 1, 1, v77);
        }

        v58 = v77;
        v77[2] = v57 + 1;
        sub_21563F618(v75, v58 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v57);
        v16 = v54;
      }

      if (v16 == i)
      {
        return v77;
      }
    }

    v69 = v16;
    v76 = sub_215656E5C();
    v78 = v30;

LABEL_17:
    v31 = *v64 + 64;
    v32 = 1 << *(*v64 + 32);
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    else
    {
      v33 = -1;
    }

    v9 = v33 & *(*v64 + 64);
    v34 = (v32 + 63) >> 6;
    v81 = *v64;

    v35 = 0;
    a1 = MEMORY[0x277D84F98];
    v79 = v31;
    while (v9)
    {
      v10 = v35;
LABEL_28:
      v36 = __clz(__rbit64(v9)) | (v10 << 6);
      v37 = *(*(v81 + 48) + v36);
      v38 = *(*(v81 + 56) + 8 * v36);
      if (*(v38 + 16))
      {

        v39 = sub_21563A614(v76, v78);
        if (v40)
        {
          v41 = *(*(v38 + 56) + v39);
        }

        else
        {
          v41 = 2;
        }

        v82 = v41;
      }

      else
      {
        v82 = 2;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v83 = a1;
      v43 = v37;
      v4 = sub_21563A720(v37);
      v45 = *(a1 + 16);
      v46 = (v44 & 1) == 0;
      v47 = v45 + v46;
      if (__OFADD__(v45, v46))
      {
        goto LABEL_59;
      }

      v48 = v44;
      if (*(a1 + 24) >= v47)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21563BC74();
          a1 = v83;
        }
      }

      else
      {
        sub_21563B1A4(v47, isUniquelyReferenced_nonNull_native);
        a1 = v83;
        v49 = sub_21563A720(v43);
        if ((v48 & 1) != (v50 & 1))
        {
          goto LABEL_67;
        }

        v4 = v49;
      }

      v9 &= v9 - 1;
      if (v48)
      {
        *(*(a1 + 56) + v4) = v82;
      }

      else
      {
        *(a1 + 8 * (v4 >> 6) + 64) |= 1 << v4;
        *(*(a1 + 48) + v4) = v43;
        *(*(a1 + 56) + v4) = v82;
        v51 = *(a1 + 16);
        v18 = __OFADD__(v51, 1);
        v52 = v51 + 1;
        if (v18)
        {
          goto LABEL_62;
        }

        *(a1 + 16) = v52;
      }

      v35 = v10;
      v31 = v79;
    }

    while (1)
    {
      v10 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v10 >= v34)
      {

        v53 = v80;
        v9 = v61;
        sub_215633EB8(v53, a1, v61);
        v29 = 0;
        a1 = v62;
        v4 = v63;
        v10 = v65;
        i = v68;
        v16 = v69;
        goto LABEL_47;
      }

      v9 = *(v31 + 8 * v10);
      ++v35;
      if (v9)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    ;
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_215654394()
{
  result = qword_27CA68698;
  if (!qword_27CA68698)
  {
    sub_215656A9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68698);
  }

  return result;
}

void sub_215654418()
{
  sub_215654518(319, &qword_27CA68708, &unk_27CA68680, &qword_21565F458);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_215654518(319, &qword_27CA68710, &qword_27CA68718, &qword_21565F4D0);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_215654518(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_215656FDC();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_21565456C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2156545D4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA68718, &qword_21565F4D0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = OBJC_IVAR____TtC20ContactsAutocompleteP33_EBE34D4C21093596BE6E4DA9F1A7E5D28StoreSpy_streamContinuation;
  swift_beginAccess();
  result = (*(v4 + 48))(v1 + v8, 1, v3);
  if (!result)
  {
    (*(v4 + 16))(v7, v1 + v8, v3);
    v11 = a1;
    v10 = a1;
    sub_215656F2C();
    return (*(v4 + 8))(v7, v3);
  }

  return result;
}

unint64_t sub_215654720()
{
  result = qword_27CA68730;
  if (!qword_27CA68730)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CA68730);
  }

  return result;
}

uint64_t sub_21565476C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_2156547BC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_215654824()
{
  v0 = sub_215656D6C();
  __swift_allocate_value_buffer(v0, qword_27CA6E090);
  __swift_project_value_buffer(v0, qword_27CA6E090);
  return sub_215656D5C();
}

uint64_t sub_2156548A0()
{
  if (qword_27CA6DDC0 != -1)
  {
    swift_once();
  }

  v0 = sub_215656D6C();

  return __swift_project_value_buffer(v0, qword_27CA6E090);
}

void *AutocompleteStore.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = _s10DirectImplCMa();
  v2 = sub_21564FE78();
  sub_21564FEB0(v5);
  v3 = sub_21564FEF0(v2, v5);
  v0[5] = v1;
  v0[6] = &off_2827875E0;
  v0[2] = v3;
  return v0;
}

void *AutocompleteStore.init()()
{
  v1 = v0;
  v2 = _s10DirectImplCMa();
  v3 = sub_21564FE78();
  sub_21564FEB0(v6);
  v4 = sub_21564FEF0(v3, v6);
  v1[5] = v2;
  v1[6] = &off_2827875E0;
  v1[2] = v4;
  return v1;
}

uint64_t AutocompleteStore.__allocating_init(strategy:)(_BYTE *a1)
{
  v2 = swift_allocObject();
  AutocompleteStore.init(strategy:)(a1);
  return v2;
}

void *AutocompleteStore.init(strategy:)(_BYTE *a1)
{
  v2 = v1;
  if (*a1)
  {
    v3 = _s13AppIntentImplCMa();
    v12 = 0;
    v4 = sub_21563DAF4();
    v6 = v5;
    sub_21563DB00(v11);
    v7 = sub_21563DB40(&v12, 0, 0xE000000000000000, v4, v6, v11);
    v8 = &off_282786808;
  }

  else
  {
    v3 = _s10DirectImplCMa();
    v9 = sub_21564FE78();
    sub_21564FEB0(v11);
    v7 = sub_21564FEF0(v9, v11);
    v8 = &off_2827875E0;
  }

  v2[5] = v3;
  v2[6] = v8;
  v2[2] = v7;
  return v2;
}

uint64_t AutocompleteStore.__allocating_init(client:strategy:)(char *a1, _BYTE *a2)
{
  v4 = swift_allocObject();
  AutocompleteStore.init(client:strategy:)(a1, a2);
  return v4;
}

void *AutocompleteStore.init(client:strategy:)(char *a1, _BYTE *a2)
{
  v3 = v2;
  if (*a2)
  {
    v4 = *a1;
    v5 = _s13AppIntentImplCMa();
    v14 = v4;
    v6 = sub_21563DAF4();
    v8 = v7;
    sub_21563DB00(v13);
    v9 = sub_21563DB40(&v14, 0, 0xE000000000000000, v6, v8, v13);
    v10 = &off_282786808;
  }

  else
  {
    v5 = _s10DirectImplCMa();
    v11 = sub_21564FE78();
    sub_21564FEB0(v13);
    v9 = sub_21564FEF0(v11, v13);
    v10 = &off_2827875E0;
  }

  v3[5] = v5;
  v3[6] = v10;
  v3[2] = v9;
  return v3;
}

uint64_t sub_215654C00(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_21563C3A4(a1, v2 + 16);
  return v2;
}

uint64_t AutocompleteStore.Client.hashValue.getter()
{
  v1 = *v0;
  sub_21565719C();
  MEMORY[0x21606D450](v1);
  return sub_2156571BC();
}

uint64_t AutocompleteStore.Strategy.hashValue.getter()
{
  v1 = *v0;
  sub_21565719C();
  MEMORY[0x21606D450](v1);
  return sub_2156571BC();
}

uint64_t AutocompleteStore.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_215654DC8()
{
  v1 = 0xE700000000000000;
  v2 = 0x636972656E6547;
  v3 = 0x656D695465636146;
  if (*v0 != 2)
  {
    v3 = 0x7261646E656C6143;
  }

  if (*v0)
  {
    v2 = 0x736567617373654DLL;
    v1 = 0xE800000000000000;
  }

  if (*v0 <= 1u)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  if (*v0 <= 1u)
  {
    v5 = v1;
  }

  else
  {
    v5 = 0xE800000000000000;
  }

  sub_21565702C();

  strcpy(v7, "Autocomplete(");
  MEMORY[0x21606D140](v4, v5);

  MEMORY[0x21606D140](41, 0xE100000000000000);
  return v7[0];
}

uint64_t AutocompleteStore.execute(_:)(uint64_t *a1)
{
  v3 = *a1;
  *(v2 + 48) = v1;
  *(v2 + 56) = v3;
  *(v2 + 41) = *(a1 + 8);
  *(v2 + 42) = *(a1 + 9);
  *(v2 + 64) = a1[2];
  *(v2 + 43) = *(a1 + 24);
  return MEMORY[0x2822009F8](sub_215654F18, 0, 0);
}

uint64_t sub_215654F18()
{
  v1 = *(v0 + 43);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = *(v0 + 42);
  v5 = *(v0 + 41);
  v6 = *(v0 + 48);
  v7 = v6[5];
  v8 = v6[6];
  __swift_project_boxed_opaque_existential_1(v6 + 2, v7);
  *(v0 + 16) = v3;
  *(v0 + 24) = v5;
  *(v0 + 25) = v4;
  *(v0 + 32) = v2;
  *(v0 + 40) = v1;
  v9 = *(v8 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v0 + 72) = v11;
  *v11 = v0;
  v11[1] = sub_215655084;

  return v13(v0 + 16, v7, v8);
}

uint64_t sub_215655084(uint64_t a1)
{
  v4 = *(*v2 + 72);
  v5 = *v2;
  *(v5 + 80) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_2156551C0, 0, 0);
  }

  else
  {
    v6 = *(v5 + 8);

    return v6(a1);
  }
}

unint64_t sub_2156551DC()
{
  result = qword_27CA68800;
  if (!qword_27CA68800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68800);
  }

  return result;
}

unint64_t sub_215655234()
{
  result = qword_27CA68808;
  if (!qword_27CA68808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68808);
  }

  return result;
}

uint64_t sub_215655288(uint64_t *a1)
{
  v3 = *a1;
  *(v2 + 48) = *v1;
  *(v2 + 56) = v3;
  *(v2 + 41) = *(a1 + 8);
  *(v2 + 42) = *(a1 + 9);
  *(v2 + 64) = a1[2];
  *(v2 + 43) = *(a1 + 24);
  return MEMORY[0x2822009F8](sub_2156552D0, 0, 0);
}

uint64_t sub_2156552D0()
{
  v1 = *(v0 + 43);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = *(v0 + 42);
  v5 = *(v0 + 41);
  v6 = *(v0 + 48);
  v7 = v6[5];
  v8 = v6[6];
  __swift_project_boxed_opaque_existential_1(v6 + 2, v7);
  *(v0 + 16) = v3;
  *(v0 + 24) = v5;
  *(v0 + 25) = v4;
  *(v0 + 32) = v2;
  *(v0 + 40) = v1;
  v9 = *(v8 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v0 + 72) = v11;
  *v11 = v0;
  v11[1] = sub_21565543C;

  return v13(v0 + 16, v7, v8);
}

uint64_t sub_21565543C(uint64_t a1)
{
  v4 = *(*v2 + 72);
  v5 = *v2;
  *(v5 + 80) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_215655738, 0, 0);
  }

  else
  {
    v6 = *(v5 + 8);

    return v6(a1);
  }
}

uint64_t dispatch thunk of AutocompleteStoreProtocol.execute(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_21564D9AC;

  return v11(a1, a2, a3);
}

void __LoadPeopleSuggester_block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  v2[0] = 67109120;
  v2[1] = v0;
  _os_log_error_impl(&dword_2155FE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to Soft Link: /System/Library/PrivateFrameworks/PeopleSuggester.framework/PeopleSuggester (%d)", v2, 8u);
  v1 = *MEMORY[0x277D85DE8];
}

void __LoadCoreSuggestions_block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  v2[0] = 67109120;
  v2[1] = v0;
  _os_log_error_impl(&dword_2155FE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to Soft Link: /System/Library/PrivateFrameworks/CoreSuggestions.framework/CoreSuggestions (%d)", v2, 8u);
  v1 = *MEMORY[0x277D85DE8];
}

void __LoadEventKit_block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  v2[0] = 67109120;
  v2[1] = v0;
  _os_log_error_impl(&dword_2155FE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to Soft Link: /System/Library/Frameworks/EventKit.framework/EventKit (%d)", v2, 8u);
  v1 = *MEMORY[0x277D85DE8];
}

void CNAutocompleteDelegateMultipleCallbacks_cold_1(void *a1, NSObject *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = [a1 delegate];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v8 = 138412802;
  v9 = v6;
  v10 = 2112;
  v11 = a1;
  v12 = 2080;
  v13 = "CNAutocompleteDelegateMultipleCallbacks";
  _os_log_fault_impl(&dword_2155FE000, a2, OS_LOG_TYPE_FAULT, "Error: Delegate of class %@ called completion handler multiple times for query %@. This is contributing to a degradation of system performance. In the future, this will be a hard error. Break on %s() to debug.", &v8, 0x20u);

  v7 = *MEMORY[0x277D85DE8];
}

void sSortResultsByPreferredDomain_block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_2();
  v12 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v1, "hasPreferredDomain")}];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v0, "hasPreferredDomain")}];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_0(&dword_2155FE000, v4, v5, "Comparing preferred domain of %{private}@ (%@) with %{private}@ (%@)", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void sSortResultsByDisplayName_block_invoke_5_cold_1()
{
  OUTLINED_FUNCTION_2();
  v11 = *MEMORY[0x277D85DE8];
  v2 = [v1 displayName];
  v10 = [v0 displayName];
  OUTLINED_FUNCTION_1_0(&dword_2155FE000, v3, v4, "Comparing display name of %{private}@ (%{private}@) with %{private}@ (%{private}@)", v5, v6, v7, v8, 3u);

  v9 = *MEMORY[0x277D85DE8];
}

void sSortRecentResultsBySendingAddressMatch_block_invoke_8_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4(&dword_2155FE000, v0, v1, "Comparing sending address match of %{private}@ with %{private}@");
  v2 = *MEMORY[0x277D85DE8];
}

void sSortRecentResultsByCompletingChosenGroup_block_invoke_10_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4(&dword_2155FE000, v0, v1, "Comparing completes current group for %{private}@ and %{private}@");
  v2 = *MEMORY[0x277D85DE8];
}

void sSortRecentResultsByDate_block_invoke_11_cold_1()
{
  OUTLINED_FUNCTION_2();
  v12 = *MEMORY[0x277D85DE8];
  v2 = [v1 date];
  v3 = [v0 date];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_0(&dword_2155FE000, v4, v5, "Comparing recent date of %{private}@ (%@) with %{private}@ (%@)", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}