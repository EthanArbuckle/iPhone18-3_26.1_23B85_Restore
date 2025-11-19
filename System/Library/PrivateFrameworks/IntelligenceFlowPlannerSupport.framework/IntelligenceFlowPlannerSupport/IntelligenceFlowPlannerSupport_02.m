uint64_t sub_22BE48938(char a1)
{
  if (a1)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0x746E65746E6F63;
  }
}

void sub_22BE48998()
{

  JUMPOUT(0x2318AB8D0);
}

uint64_t sub_22BE489E0(unint64_t *a1)
{

  return sub_22C250EF0(a1);
}

unint64_t sub_22BE48A04()
{
  result = qword_281073080[0];
  if (!qword_281073080[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281073080);
  }

  return result;
}

unint64_t sub_22BE48A9C()
{
  result = qword_28106E738;
  if (!qword_28106E738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E738);
  }

  return result;
}

void ExternalAgentOutcome.encode(to:)()
{
  sub_22BE2BB34();
  sub_22BE22950();
  v3 = sub_22BE5CE4C(&qword_27D913DB8, &qword_22C2B86A8);
  sub_22BE1BF18(v3);
  v5 = *(v4 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE19E64();
  sub_22BE23094();
  sub_22BE48CC4();
  sub_22BE25524();
  sub_22C18E810();
  sub_22C26E684();
  sub_22BE18F44();
  sub_22BE20458(v7);
  sub_22BEE92A4();
  sub_22BE196CC();
  sub_22C273FA4();
  if (!v0)
  {
    v8 = type metadata accessor for ExternalAgentOutcome(0);
    sub_22BE335C0(v8);
    sub_22C26F894();
    sub_22BE28CFC();
    sub_22BE20458(v9);
    sub_22C18E994();
    sub_22BE196CC();
    sub_22C273FA4();
    v12 = *(v1 + *(v2 + 24));
    sub_22C18F8C8();
    sub_22BE5CE4C(&qword_27D908050, &qword_22C278EB0);
    sub_22C18E158(&unk_28106DBE8);
    sub_22BE196CC();
    sub_22C273FA4();
  }

  v10 = sub_22BE37A10();
  v11(v10);
  sub_22BEE92C0();
  sub_22BEE93D4();
}

unint64_t sub_22BE48CC4()
{
  result = qword_28107ADA8[0];
  if (!qword_28107ADA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28107ADA8);
  }

  return result;
}

uint64_t sub_22BE48D20(char a1)
{
  if (!a1)
  {
    return 0x6E656D6574617473;
  }

  if (a1 == 1)
  {
    return 0xD000000000000010;
  }

  return 0x65736E6F70736572;
}

char *sub_22BE48D8C(uint64_t a1)
{
  v6 = *(a1 + 48);
  *v4 = v1;
  v4[1] = v2;
  v7 = *(v3 + 32);
  result = v4 + v6;
  v9 = *(v5 - 112);
  return result;
}

void sub_22BE48DB0()
{
  v2 = *(v1 - 128);
  v3 = *(v1 - 120);
  v4 = v0 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5 = *(v2 + 72);
}

uint64_t sub_22BE48DF8()
{

  return swift_getEnumCaseMultiPayload();
}

unint64_t sub_22BE48E94(uint64_t a1)
{
  result = sub_22BE267CC(a1);
  if (!result)
  {
    sub_22BE19484();
    sub_22BE7431C(&qword_27D908050, &qword_22C278EB0);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_22BE48EF8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_22BE7431C(&qword_27D908050, &qword_22C278EB0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22BE48F64(uint64_t a1)
{
  result = sub_22BE267CC(a1);
  if (!result)
  {
    sub_22BE7431C(&qword_27D908050, &qword_22C278EB0);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

void sub_22BE48FDC()
{
  sub_22C270A04();
  if (v0 <= 0x3F)
  {
    sub_22BE49060();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22BE49060()
{
  if (!qword_28107F1C0)
  {
    sub_22C270994();
    v0 = sub_22C273844();
    if (!v1)
    {
      atomic_store(v0, &qword_28107F1C0);
    }
  }
}

uint64_t sub_22BE490B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE5CE4C(&qword_27D907D10, &qword_22C277AB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 sub_22BE49128(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_22BE4913C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return _s30IntelligenceFlowPlannerSupport20GlobalToolIdentifierV6toolId09deviceIdsI0017representsBuiltInF0ACSS_SSSgSbtcfcfA1__0();
  }
}

uint64_t sub_22BE49158(uint64_t result, int a2, int a3)
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

uint64_t sub_22BE49180()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22BE491EC()
{
  sub_22BE26B64((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22BE49224(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

char *sub_22BE4924C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[4 * a2] <= a3)
  {
    return sub_22BE18C08(a3, result);
  }

  return result;
}

uint64_t sub_22BE49274()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22BE492E0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  sub_22BE1B2B0();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_22BE49394(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C26E5D4();
  v5 = sub_22BE1AEA8(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22BE493DC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_22C26E5D4();

  return sub_22BE19DC4(a1, v5, a3, v6);
}

uint64_t sub_22BE496BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C271914();

  return sub_22BE1AEA8(a1, a2, v4);
}

uint64_t sub_22BE49704(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C271914();

  return sub_22BE19DC4(a1, a2, a2, v4);
}

uint64_t sub_22BE49778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22C270A04();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_22BE5CE4C(&qword_27D907D10, &qword_22C277AB0);
    v8 = a1 + *(a3 + 20);
  }

  return sub_22BE1AEA8(v8, a2, v7);
}

uint64_t sub_22BE49820(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22C270A04();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_22BE5CE4C(&qword_27D907D10, &qword_22C277AB0);
    v10 = a1 + *(a4 + 20);
  }

  return sub_22BE19DC4(v10, a2, a2, v9);
}

uint64_t sub_22BE4994C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Session.Event(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_22BE1AEA8(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_22BE499FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Session.Event(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_22BE19DC4(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22BE49AB0()
{
  v2 = sub_22BE1B2D4();
  v3 = type metadata accessor for ResponseGenerationInput(v2);

  return sub_22BE1AEA8(v1, v0, v3);
}

uint64_t sub_22BE49AF0()
{
  v0 = sub_22BE1B2D4();
  type metadata accessor for ResponseGenerationInput(v0);
  v1 = sub_22BE37694();

  return sub_22BE19DC4(v1, v2, v3, v4);
}

uint64_t sub_22BE49B28()
{
  sub_22BE1B2D4();
  v2 = sub_22C26F754();

  return sub_22BE1AEA8(v1, v0, v2);
}

uint64_t sub_22BE49B68()
{
  sub_22BE1B2D4();
  sub_22C26F754();
  v0 = sub_22BE37694();

  return sub_22BE19DC4(v0, v1, v2, v3);
}

uint64_t sub_22BE49BF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C26E1D4();

  return sub_22BE1AEA8(a1, a2, v4);
}

uint64_t sub_22BE49C40(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C26E1D4();

  return sub_22BE19DC4(a1, a2, a2, v4);
}

uint64_t sub_22BE49DF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BE90B1C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22BE49E1C()
{
  sub_22BE1B2D4();
  sub_22C272764();
  v0 = sub_22BE2B794();

  return sub_22BE1AEA8(v0, v1, v2);
}

uint64_t sub_22BE49E54()
{
  sub_22BE1B2D4();
  sub_22C272764();
  v0 = sub_22BE37694();

  return sub_22BE19DC4(v0, v1, v2, v3);
}

uint64_t sub_22BE49E8C()
{
  sub_22BE1B2D4();
  sub_22C272874();
  v0 = sub_22BE2B794();

  return sub_22BE1AEA8(v0, v1, v2);
}

uint64_t sub_22BE49EC4()
{
  sub_22BE1B2D4();
  sub_22C272874();
  v0 = sub_22BE37694();

  return sub_22BE19DC4(v0, v1, v2, v3);
}

uint64_t sub_22BE49F14()
{
  sub_22BE5CE4C(&qword_27D907400, &unk_22C274F90);
  v0 = sub_22BE2B794();

  return sub_22BE1AEA8(v0, v1, v2);
}

uint64_t sub_22BE49F60()
{
  sub_22BE5CE4C(&qword_27D907400, &unk_22C274F90);
  v0 = sub_22BE37694();

  return sub_22BE19DC4(v0, v1, v2, v3);
}

uint64_t sub_22BE4A418(char a1)
{
  if (a1)
  {
    return 0x7865646E69;
  }

  else
  {
    return 7563372;
  }
}

uint64_t sub_22BE4A49C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BEA7E04(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BE4A4E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BEB0768(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22BE4A5A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BEACCC8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BE4A82C()
{
  sub_22BE63574(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22BE4A864()
{
  sub_22BEA7778(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  v1 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22BE4A8AC()
{
  sub_22BE63574(*(v0 + 16));
  sub_22BE63574(*(v0 + 24));
  sub_22BE236BC();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_22BE4A8E8()
{
  sub_22BE63574(*(v0 + 16));
  v1 = *(v0 + 32);

  sub_22BE2B7C4();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22BE4A924()
{
  sub_22BE63574(*(v0 + 24));
  sub_22BE63574(*(v0 + 32));
  sub_22BE2B7C4();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_22BE4A960()
{
  sub_22BE63574(*(v0 + 24));
  sub_22BE236BC();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_22BE4A994()
{
  sub_22BEA76F8(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_22BE4A9D0()
{
  v1 = *(v0 + 24);

  sub_22BE236BC();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22BE4AA08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22BE17BC4();
  if (*(*(sub_22C26E684() - 8) + 84) == a2)
  {
    v6 = sub_22BE44750();

    return sub_22BE1AEA8(v6, a2, v7);
  }

  else
  {
    v9 = *(v3 + *(a3 + 20));
    if (v9 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_22BE4AAAC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22C26E684();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_22BE19DC4(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22BE4B1FC(unsigned __int8 *a1, int a2)
{
  if (a2 == 253)
  {
    v2 = *a1;
    if (v2 >= 3)
    {
      return v2 - 2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_22BE27A38();
    sub_22C26E684();
    v4 = sub_22BE48A58();

    return sub_22BE1AEA8(v4, v5, v6);
  }
}

void sub_22BE4B270()
{
  sub_22BE18378();
  if (v2 == 253)
  {
    *v1 = v0 + 2;
  }

  else
  {
    sub_22C26E684();
    v3 = sub_22BE48A58();

    sub_22BE19DC4(v3, v4, v0, v5);
  }
}

uint64_t sub_22BE4B2E4(unsigned __int8 *a1, int a2)
{
  if (a2 == 237)
  {
    v2 = *a1;
    if (v2 >= 0x13)
    {
      return v2 - 18;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_22BE27A38();
    sub_22C26E684();
    v4 = sub_22BE48A58();

    return sub_22BE1AEA8(v4, v5, v6);
  }
}

void sub_22BE4B358()
{
  sub_22BE18378();
  if (v2 == 237)
  {
    *v1 = v0 + 18;
  }

  else
  {
    sub_22C26E684();
    v3 = sub_22BE48A58();

    sub_22BE19DC4(v3, v4, v0, v5);
  }
}

uint64_t sub_22BE4B3C8()
{
  sub_22BE18378();
  sub_22C26E684();
  v1 = sub_22BE291BC();

  return sub_22BE1AEA8(v1, v0, v2);
}

uint64_t sub_22BE4B408()
{
  sub_22BE18378();
  sub_22C26E684();
  v0 = sub_22BE37694();

  return sub_22BE19DC4(v0, v1, v2, v3);
}

uint64_t sub_22BE4B444()
{
  sub_22BE1B9D8();
  if (v2)
  {
    return sub_22BE1A5D0(*(v0 + 8));
  }

  sub_22BE27A38();
  sub_22C26E684();
  v4 = sub_22BE25438(*(v1 + 28));

  return sub_22BE1AEA8(v4, v5, v6);
}

void sub_22BE4B4B0()
{
  sub_22BE18378();
  if (v3 == 0x7FFFFFFF)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_22C26E684();
    v5 = sub_22BE25438(*(v4 + 28));

    sub_22BE19DC4(v5, v6, v0, v7);
  }
}

uint64_t sub_22BE4B534()
{
  sub_22BE18378();
  sub_22C26E684();
  v1 = sub_22BE291BC();

  return sub_22BE1AEA8(v1, v0, v2);
}

uint64_t sub_22BE4B574()
{
  sub_22BE18378();
  sub_22C26E684();
  v0 = sub_22BE37694();

  return sub_22BE19DC4(v0, v1, v2, v3);
}

uint64_t sub_22BE4B5B4()
{
  sub_22BE1B9D8();
  if (v1)
  {
    return sub_22BE1A5D0(*v0);
  }

  sub_22BE27A38();
  sub_22BE5CE4C(&qword_27D9092E8, &qword_22C288A90);
  v3 = sub_22BE48A58();

  return sub_22BE1AEA8(v3, v4, v5);
}

void sub_22BE4B628()
{
  sub_22BE18378();
  if (v2 == 0x7FFFFFFF)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    sub_22BE5CE4C(&qword_27D9092E8, &qword_22C288A90);
    v3 = sub_22BE48A58();

    sub_22BE19DC4(v3, v4, v0, v5);
  }
}

uint64_t sub_22BE4B6A8()
{
  sub_22BE1B9D8();
  if (v2)
  {
    return sub_22BE1A5D0(*(v0 + 8));
  }

  sub_22BE27A38();
  sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  v4 = sub_22BE25438(*(v1 + 24));

  return sub_22BE1AEA8(v4, v5, v6);
}

void sub_22BE4B720()
{
  sub_22BE18378();
  if (v3 == 0x7FFFFFFF)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
    v5 = sub_22BE25438(*(v4 + 24));

    sub_22BE19DC4(v5, v6, v0, v7);
  }
}

uint64_t sub_22BE4B7A4()
{
  sub_22BE18378();
  sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  v1 = sub_22BE291BC();

  return sub_22BE1AEA8(v1, v0, v2);
}

uint64_t sub_22BE4B7F0()
{
  sub_22BE18378();
  sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  v0 = sub_22BE37694();

  return sub_22BE19DC4(v0, v1, v2, v3);
}

uint64_t sub_22BE4B838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22BE18378();
  v6 = sub_22C26E684();
  sub_22BE187D0(v6);
  if (*(v7 + 84) == v3)
  {
    v8 = sub_22BE291BC();
  }

  else
  {
    v9 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
    v8 = v4 + *(a3 + 20);
  }

  return sub_22BE1AEA8(v8, v3, v9);
}

uint64_t sub_22BE4B8D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_22BE18378();
  v8 = sub_22C26E684();
  v9 = sub_22BE187D0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v5;
  }

  else
  {
    v11 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
    v12 = v5 + *(a4 + 20);
  }

  return sub_22BE19DC4(v12, v4, v4, v11);
}

uint64_t sub_22BE4BCDC()
{
  sub_22BEA76F8(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_22BE4BEF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BEFFA10(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22BE4BF24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BEFF5B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BE4BFFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_22BE1A5D0(*(a1 + 8));
  }

  v7 = type metadata accessor for AST.FlatExpr(0);
  v8 = a1 + *(a3 + 20);

  return sub_22BE1AEA8(v8, a2, v7);
}

uint64_t sub_22BE4C078(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for AST.FlatExpr(0);
    v8 = v5 + *(a4 + 20);

    return sub_22BE19DC4(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22BE4C0F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22BE17BC4();
  v7 = type metadata accessor for AST.FlatValue(v6);
  if (*(*(v7 - 8) + 84) != a2)
  {
    return sub_22BE1A5D0(*(v3 + *(a3 + 20)));
  }

  return sub_22BE1AEA8(v3, a2, v7);
}

uint64_t sub_22BE4C194(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AST.FlatValue(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_22BE19DC4(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22BE4C3EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_22C274014() & 1;
  }
}

uint64_t sub_22BE4C644()
{
  sub_22BE63574(v0[2]);
  v1 = v0[3];

  v2 = v0[4];

  sub_22BE2B7C4();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_22BE4C688()
{
  sub_22BE63574(*(v0 + 16));
  sub_22BE63574(*(v0 + 24));
  sub_22BE236BC();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_22BE4C6C4()
{
  sub_22BEA7778(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  v1 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22BE4C70C()
{
  sub_22BE63574(*(v0 + 24));
  sub_22BE63574(*(v0 + 32));
  sub_22BE2B7C4();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_22BE4C748()
{
  sub_22BE63574(*(v0 + 16));
  v1 = *(v0 + 32);

  sub_22BE2B7C4();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22BE4C784()
{
  sub_22BE63574(*(v0 + 24));
  sub_22BE236BC();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_22BE4C7B8()
{
  sub_22BEA76F8(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  sub_22BE2699C();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_22BE4C7F0()
{
  v1 = *(v0 + 24);

  sub_22BE236BC();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22BE4C824()
{
  v1 = v0[3];

  sub_22BE63574(v0[4]);
  v2 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22BE4C86C()
{
  sub_22BE63574(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void *sub_22BE4C8D0@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t sub_22BE4C8DC()
{
  sub_22BE26B64((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22BE4C95C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22C26E164();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_22C26E1D4();
    v8 = a1 + *(a3 + 28);
  }

  return sub_22BE1AEA8(v8, a2, v7);
}

uint64_t sub_22BE4C9F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22C26E164();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_22C26E1D4();
    v10 = a1 + *(a4 + 28);
  }

  return sub_22BE19DC4(v10, a2, a2, v9);
}

uint64_t sub_22BE4CAE8()
{
  if (MEMORY[0x277D85020])
  {
    return sub_22C271C14();
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_22BE4CB4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE5CE4C(&qword_27D90B218, &unk_22C28C470);
  v5 = sub_22BE1AEA8(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22BE4CBA0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_22BE5CE4C(&qword_27D90B218, &unk_22C28C470);

  return sub_22BE19DC4(a1, v5, a3, v6);
}

uint64_t sub_22BE4CCB8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22C26E524();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_22BE4CCE4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_22C26DF64();
    v9 = a1 + *(a3 + 20);

    return sub_22BE1AEA8(v9, a2, v8);
  }
}

uint64_t sub_22BE4CD6C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_22C26DF64();
    v8 = v5 + *(a4 + 20);

    return sub_22BE19DC4(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22BE4CE6C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22BE4CFC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE5CE4C(&unk_27D906F38, qword_22C274D30);
  v5 = sub_22BE1AEA8(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22BE4D018(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_22BE5CE4C(&unk_27D906F38, qword_22C274D30);

  return sub_22BE19DC4(a1, v5, a3, v6);
}

uint64_t sub_22BE4D0A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22BE23C8C();
  v6 = sub_22C272984();
  v7 = sub_22BE187D0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
  }

  else
  {
    v11 = type metadata accessor for Toolbox.ContainerForTypeLookup(0);
    v12 = sub_22BE187D0(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = *(a3 + 20);
    }

    else
    {
      v9 = sub_22C26E244();
      v14 = *(a3 + 24);
    }

    v10 = v3 + v14;
  }

  return sub_22BE1AEA8(v10, a2, v9);
}

uint64_t sub_22BE4D17C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_22BE23C8C();
  v8 = sub_22C272984();
  v9 = sub_22BE187D0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    v13 = type metadata accessor for Toolbox.ContainerForTypeLookup(0);
    v14 = sub_22BE187D0(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = *(a4 + 20);
    }

    else
    {
      v11 = sub_22C26E244();
      v16 = *(a4 + 24);
    }

    v12 = v4 + v16;
  }

  return sub_22BE19DC4(v12, a2, a2, v11);
}

uint64_t sub_22BE4D258(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_22C26E244();
    v9 = a1 + *(a3 + 20);

    return sub_22BE1AEA8(v9, a2, v8);
  }
}

uint64_t sub_22BE4D2E0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_22C26E244();
    v8 = v5 + *(a4 + 20);

    return sub_22BE19DC4(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22BE4D360()
{
  sub_22BE18A10();
  result = sub_22C26E554();
  *v0 = result & 1;
  return result;
}

uint64_t sub_22BE4D38C()
{
  sub_22BE18A10();
  result = sub_22C26E564();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_22BE4D3B4()
{
  sub_22BE18A10();
  result = sub_22C26E584();
  *v0 = result;
  return result;
}

uint64_t sub_22BE4D3DC()
{
  sub_22BE18A10();
  result = sub_22C26E574();
  *v0 = result;
  return result;
}

uint64_t sub_22BE4D42C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22BE4D464()
{
  v1 = v0[2];

  if (v0[3])
  {

    v2 = v0[4];
  }

  v3 = v0[5];

  v4 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22BE4D538@<X0>(uint64_t *a1@<X8>)
{
  result = ToolBoxToolType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_22BE4D5B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_22C26FDF4();

  return sub_22BE1AEA8(a1 + v5, a2, v6);
}

uint64_t sub_22BE4D608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_22C26FDF4();

  return sub_22BE19DC4(a1 + v6, a2, a2, v7);
}

uint64_t sub_22BE4D6C0(uint64_t a1, uint64_t a2)
{
  sub_22BE23C8C();
  v4 = sub_22C272224();

  return sub_22BE1AEA8(v2, a2, v4);
}

uint64_t sub_22BE4D704()
{
  sub_22BE23C8C();
  sub_22C272224();
  v0 = sub_22BE37694();

  return sub_22BE19DC4(v0, v1, v2, v3);
}

uint64_t sub_22BE4D790()
{
  if (MEMORY[0x277D85020])
  {
    return sub_22BE5CE4C(&qword_27D90B588, &qword_22C28DBA0);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_22BE4D848@<X0>(_DWORD *a1@<X8>)
{
  result = ToolboxStatus.ReadOnly.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_22BE4D91C(char a1)
{
  if (a1)
  {
    return 0x75626972746E6F63;
  }

  else
  {
    return 0x64496C6F6F74;
  }
}

uint64_t sub_22BE4D958(char a1)
{
  if (!a1)
  {
    return sub_22BE3C478();
  }

  if (a1 == 1)
  {
    return 0x6E61747369737361;
  }

  return 0x6341746E65696C63;
}

uint64_t sub_22BE4D9E8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22BF60094();
  *a1 = result;
  return result;
}

uint64_t sub_22BE4DA18@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22BF61200();
  *a1 = result;
  return result;
}

uint64_t sub_22BE4DA7C()
{
  v1 = *(v0 + 16);

  sub_22BE2BA74();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22BE4DAB0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22C26E544();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_22BE4DADC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22C26E594();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_22BE4DB08()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22BE4DB58()
{
  v1 = sub_22BE5CE4C(&qword_27D90B730, &qword_22C28ECF8);
  sub_22BE179D8(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 24);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_22BE4DC1C()
{
  v1 = v0[2];

  if (v0[3])
  {

    v2 = v0[4];
  }

  v3 = v0[5];

  v4 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22BE4DC78()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  v4 = v0[6];

  if (v0[7])
  {

    v5 = v0[8];
  }

  v6 = v0[9];

  v7 = v0[10];

  v8 = v0[11];

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_22BE4DDC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C270B74();

  return sub_22BE1AEA8(a1, a2, v4);
}

uint64_t sub_22BE4DE10(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C270B74();

  return sub_22BE19DC4(a1, a2, a2, v4);
}

uint64_t sub_22BE4DEF8()
{
  v1 = sub_22C272874();
  sub_22BE179D8(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = v5 + *(v6 + 64);
  v8 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v5, v1);
  v11 = *(v0 + v8);

  return MEMORY[0x2821FE8E8](v0, v9 + 8, v4 | 7);
}

uint64_t sub_22BE4DFD4()
{
  sub_22BE19460();
  v1 = *(v0 + 32);
  v2 = sub_22C272874();
  sub_22BE179D8(v2);
  v4 = v3;
  v5 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v7 = *(v1 - 8);
  v8 = (v5 + *(v6 + 64) + *(v7 + 80)) & ~*(v7 + 80);
  v9 = (v8 + *(v7 + 64)) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v4 + 8))(v0 + v5, v2);
  (*(v7 + 8))(v0 + v8, v1);
  sub_22BE1AABC();

  return MEMORY[0x2821FE8E8](v11, v12, v13);
}

uint64_t sub_22BE4E190(uint64_t result)
{
  if (*(result + 16))
  {
    sub_22BFB1A70();
    v2 = *(v1 + 8);
    return sub_22C270844();
  }

  return result;
}

uint64_t sub_22BE4E1C8(uint64_t result)
{
  if (*(result + 32))
  {
    sub_22BFB1A70();
    v2 = *(v1 + 24);
    return sub_22C270844();
  }

  return result;
}

uint64_t sub_22BE4E220(uint64_t result)
{
  if (*(result + 8))
  {
    sub_22BFB1A70();
    v2 = *v1;
    return sub_22C270844();
  }

  return result;
}

uint64_t sub_22BE4E2BC(uint64_t result)
{
  if (*(result + 24))
  {
    sub_22BFB1A70();
    v2 = *(v1 + 16);
    return sub_22C270844();
  }

  return result;
}

uint64_t sub_22BE4E2F4(uint64_t result)
{
  if (*(result + 40))
  {
    sub_22BFB1A70();
    v2 = *(v1 + 32);
    return sub_22C270844();
  }

  return result;
}

uint64_t sub_22BE4E388(uint64_t result)
{
  if (*(result + 40))
  {
    sub_22BFB1A70();
    v2 = *(v1 + 32);
    return sub_22C270844();
  }

  return result;
}

uint64_t sub_22BE4E3C0(uint64_t result)
{
  if (*(result + 56))
  {
    sub_22BFB1A70();
    v2 = *(v1 + 48);
    return sub_22C270844();
  }

  return result;
}

uint64_t sub_22BE4E3F8(uint64_t result)
{
  if (*(result + 72))
  {
    sub_22BFB1A70();
    v2 = *(v1 + 64);
    return sub_22C270844();
  }

  return result;
}

uint64_t sub_22BE4E498(uint64_t result)
{
  if (*(result + 48))
  {
    sub_22BFB1A70();
    v2 = *(v1 + 40);
    return sub_22C270844();
  }

  return result;
}

uint64_t sub_22BE4E6C0@<X0>(uint64_t *a1@<X8>)
{
  result = ContextProtoContextDataSource.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_22BE4E85C(uint64_t a1, uint64_t a2, int *a3)
{
  sub_22BE18378();
  v6 = sub_22BE5CE4C(&qword_27D909128, &qword_22C294AA0);
  sub_22BE187D0(v6);
  if (*(v7 + 84) == v3)
  {
    sub_22BE23B20();
  }

  else
  {
    v9 = sub_22BE5CE4C(&qword_27D90BF70, &qword_22C290DC0);
    sub_22BE187D0(v9);
    if (*(v10 + 84) == v3)
    {
      sub_22BE1C1E8();
    }

    else
    {
      v11 = sub_22BE5CE4C(&qword_27D90BF60, &unk_22C294AB0);
      sub_22BE187D0(v11);
      if (*(v12 + 84) == v3)
      {
        sub_22BE22B34();
      }

      else
      {
        v13 = sub_22BE5CE4C(&qword_27D90BF50, &unk_22C2B5ED0);
        sub_22BE187D0(v13);
        if (*(v14 + 84) == v3)
        {
          v8 = a3[9];
        }

        else
        {
          if (v3 == 2147483646)
          {
            return sub_22BE17D90(*(v4 + a3[10] + 8));
          }

          sub_22C2704B4();
          v8 = a3[11];
        }
      }
    }
  }

  v16 = sub_22BE25438(v8);

  return sub_22BE1AEA8(v16, v17, v18);
}

uint64_t sub_22BE4E9FC()
{
  sub_22BE20388();
  sub_22BE18378();
  v4 = sub_22BE5CE4C(&qword_27D909128, &qword_22C294AA0);
  sub_22BE187D0(v4);
  if (*(v5 + 84) == v3)
  {
    sub_22BE26204();
  }

  else
  {
    v7 = sub_22BE5CE4C(&qword_27D90BF70, &qword_22C290DC0);
    sub_22BE187D0(v7);
    if (*(v8 + 84) == v3)
    {
      sub_22BE38994();
    }

    else
    {
      v9 = sub_22BE5CE4C(&qword_27D90BF60, &unk_22C294AB0);
      sub_22BE187D0(v9);
      if (*(v10 + 84) == v3)
      {
        sub_22BE272B4();
      }

      else
      {
        v11 = sub_22BE5CE4C(&qword_27D90BF50, &unk_22C2B5ED0);
        result = sub_22BE187D0(v11);
        if (*(v13 + 84) == v3)
        {
          v6 = v2[9];
        }

        else
        {
          if (v3 == 2147483646)
          {
            *(v1 + v2[10] + 8) = v0;
            return result;
          }

          sub_22C2704B4();
          v6 = v2[11];
        }
      }
    }
  }

  v14 = sub_22BE3B0A4(v6);

  return sub_22BE19DC4(v14, v15, v16, v17);
}

uint64_t sub_22BE4EB9C()
{
  sub_22BE1B9D8();
  if (v3)
  {
    return sub_22BE1A5D0(*v1);
  }

  sub_22BE27A38();
  v5 = sub_22BE5CE4C(&qword_27D90BF70, &qword_22C290DC0);
  sub_22BE187D0(v5);
  if (*(v6 + 84) == v0)
  {
    sub_22BE22B34();
  }

  else
  {
    v8 = sub_22BE5CE4C(&qword_27D9092A0, &unk_22C294AC0);
    sub_22BE187D0(v8);
    if (*(v9 + 84) == v0)
    {
      sub_22BE28648();
    }

    else
    {
      v10 = sub_22BE5CE4C(&qword_27D90BFA0, &qword_22C2CB790);
      sub_22BE187D0(v10);
      if (*(v11 + 84) == v0)
      {
        v7 = v2[15];
      }

      else
      {
        v12 = sub_22BE5CE4C(&qword_27D90BF90, &unk_22C294AD0);
        sub_22BE187D0(v12);
        if (*(v13 + 84) == v0)
        {
          v7 = v2[17];
        }

        else
        {
          sub_22C2704B4();
          v7 = v2[21];
        }
      }
    }
  }

  v14 = sub_22BE25438(v7);

  return sub_22BE1AEA8(v14, v15, v16);
}

void sub_22BE4ED30()
{
  sub_22BE18660();
  if (v2)
  {
    sub_22BE375D8();
  }

  else
  {
    sub_22BE20388();
    v3 = sub_22BE5CE4C(&qword_27D90BF70, &qword_22C290DC0);
    sub_22BE187D0(v3);
    if (*(v4 + 84) == v1)
    {
      sub_22BE272B4();
    }

    else
    {
      v6 = sub_22BE5CE4C(&qword_27D9092A0, &unk_22C294AC0);
      sub_22BE187D0(v6);
      if (*(v7 + 84) == v1)
      {
        sub_22BE36CC4();
      }

      else
      {
        v8 = sub_22BE5CE4C(&qword_27D90BFA0, &qword_22C2CB790);
        sub_22BE187D0(v8);
        if (*(v9 + 84) == v1)
        {
          v5 = v0[15];
        }

        else
        {
          v10 = sub_22BE5CE4C(&qword_27D90BF90, &unk_22C294AD0);
          sub_22BE187D0(v10);
          if (*(v11 + 84) == v1)
          {
            v5 = v0[17];
          }

          else
          {
            sub_22C2704B4();
            v5 = v0[21];
          }
        }
      }
    }

    v12 = sub_22BE3B0A4(v5);

    sub_22BE19DC4(v12, v13, v14, v15);
  }
}

uint64_t sub_22BE4EEC0()
{
  sub_22BE36798();
  if (v1)
  {
    return sub_22BE17D90(*(v0 + 8));
  }

  sub_22BE27A38();
  sub_22C2704B4();
  sub_22BE1C1E8();
  v4 = sub_22BE25438(v3);

  return sub_22BE1AEA8(v4, v5, v6);
}

void sub_22BE4EF28()
{
  sub_22BE22984();
  if (v0)
  {
    sub_22BFBFCE0();
  }

  else
  {
    sub_22BE294C8();
    sub_22BE38994();
    v2 = sub_22BE3B0A4(v1);

    sub_22BE19DC4(v2, v3, v4, v5);
  }
}

uint64_t sub_22BE4EF84()
{
  sub_22BE18378();
  v3 = *(v2 + 32);
  v4 = sub_22C2704B4();

  return sub_22BE1AEA8(v1 + v3, v0, v4);
}

uint64_t sub_22BE4EFD4()
{
  sub_22BE18378();
  v1 = *(v0 + 32);
  sub_22C2704B4();
  sub_22BE38A34();

  return sub_22BE19DC4(v2, v3, v4, v5);
}

uint64_t sub_22BE4F024()
{
  sub_22BE36798();
  if (v2)
  {
    return sub_22BE17D90(*(v1 + 8));
  }

  sub_22BE27A38();
  v4 = sub_22BE5CE4C(&qword_27D9092A0, &unk_22C294AC0);
  sub_22BE187D0(v4);
  if (*(v5 + 84) == v0)
  {
    sub_22BE23B20();
  }

  else
  {
    sub_22C2704B4();
    sub_22BE1C1E8();
  }

  v7 = sub_22BE25438(v6);

  return sub_22BE1AEA8(v7, v8, v9);
}

void sub_22BE4F0D4()
{
  sub_22BE22984();
  if (v1)
  {
    sub_22BFBFCE0();
  }

  else
  {
    sub_22BE20388();
    v2 = sub_22BE5CE4C(&qword_27D9092A0, &unk_22C294AC0);
    sub_22BE187D0(v2);
    if (*(v3 + 84) == v0)
    {
      sub_22BE26204();
    }

    else
    {
      sub_22C2704B4();
      sub_22BE38994();
    }

    v5 = sub_22BE3B0A4(v4);

    sub_22BE19DC4(v5, v6, v7, v8);
  }
}

uint64_t sub_22BE4F180(uint64_t a1, int a2)
{
  if (a2 == 253)
  {
    v2 = *(a1 + 4);
    if (v2 >= 3)
    {
      return v2 - 2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_22BE27A38();
    sub_22C2704B4();
    sub_22BE1C1E8();
    v5 = sub_22BE25438(v4);

    return sub_22BE1AEA8(v5, v6, v7);
  }
}

void sub_22BE4F1F4()
{
  sub_22BE18378();
  if (v2 == 253)
  {
    *(v1 + 4) = v0 + 2;
  }

  else
  {
    sub_22BE294C8();
    sub_22BE38994();
    v4 = sub_22BE3B0A4(v3);

    sub_22BE19DC4(v4, v5, v6, v7);
  }
}

uint64_t sub_22BE4F280()
{
  sub_22BE1B9D8();
  if (v1)
  {
    return sub_22BE18A6C();
  }

  sub_22BE27A38();
  sub_22C2704B4();
  v3 = sub_22BE25438(*(v0 + 68));

  return sub_22BE1AEA8(v3, v4, v5);
}

void sub_22BE4F2E8()
{
  sub_22BE18660();
  if (v1)
  {
    sub_22BE35FD8();
  }

  else
  {
    sub_22BE294C8();
    v2 = sub_22BE3B0A4(*(v0 + 68));

    sub_22BE19DC4(v2, v3, v4, v5);
  }
}

uint64_t sub_22BE4F348()
{
  sub_22BE1B9D8();
  if (v3)
  {
    return sub_22BE1A5D0(*v1);
  }

  sub_22BE27A38();
  v5 = sub_22BE5CE4C(&qword_27D90C020, &qword_22C290DF8);
  sub_22BE187D0(v5);
  if (*(v6 + 84) == v0)
  {
    v7 = v2[15];
  }

  else
  {
    v8 = sub_22BE5CE4C(&qword_27D90C010, &dword_22C294AF0);
    sub_22BE187D0(v8);
    if (*(v9 + 84) == v0)
    {
      v7 = v2[19];
    }

    else
    {
      v10 = sub_22BE5CE4C(&qword_27D90C000, &qword_22C2CB7C0);
      sub_22BE187D0(v10);
      if (*(v11 + 84) == v0)
      {
        v7 = v2[24];
      }

      else
      {
        sub_22C2704B4();
        v7 = v2[27];
      }
    }
  }

  v12 = sub_22BE25438(v7);

  return sub_22BE1AEA8(v12, v13, v14);
}

void sub_22BE4F498()
{
  sub_22BE18660();
  if (v2)
  {
    sub_22BE375D8();
  }

  else
  {
    sub_22BE20388();
    v3 = sub_22BE5CE4C(&qword_27D90C020, &qword_22C290DF8);
    sub_22BE187D0(v3);
    if (*(v4 + 84) == v1)
    {
      v5 = v0[15];
    }

    else
    {
      v6 = sub_22BE5CE4C(&qword_27D90C010, &dword_22C294AF0);
      sub_22BE187D0(v6);
      if (*(v7 + 84) == v1)
      {
        v5 = v0[19];
      }

      else
      {
        v8 = sub_22BE5CE4C(&qword_27D90C000, &qword_22C2CB7C0);
        sub_22BE187D0(v8);
        if (*(v9 + 84) == v1)
        {
          v5 = v0[24];
        }

        else
        {
          sub_22C2704B4();
          v5 = v0[27];
        }
      }
    }

    v10 = sub_22BE3B0A4(v5);

    sub_22BE19DC4(v10, v11, v12, v13);
  }
}

uint64_t sub_22BE4F5E4()
{
  sub_22BE36798();
  if (v1)
  {
    return sub_22BE17D90(*(v0 + 16));
  }

  sub_22BE27A38();
  sub_22C2704B4();
  sub_22BE28648();
  v4 = sub_22BE25438(v3);

  return sub_22BE1AEA8(v4, v5, v6);
}

void sub_22BE4F64C()
{
  sub_22BE22984();
  if (v2)
  {
    *(v1 + 16) = v0;
  }

  else
  {
    sub_22BE294C8();
    sub_22BE36CC4();
    v4 = sub_22BE3B0A4(v3);

    sub_22BE19DC4(v4, v5, v6, v7);
  }
}

uint64_t sub_22BE4F6AC()
{
  sub_22BE36798();
  if (v1)
  {
    return sub_22BE17D90(*(v0 + 8));
  }

  sub_22BE27A38();
  sub_22C2704B4();
  sub_22BE22B34();
  v4 = sub_22BE25438(v3);

  return sub_22BE1AEA8(v4, v5, v6);
}

void sub_22BE4F714()
{
  sub_22BE22984();
  if (v0)
  {
    sub_22BFBFCE0();
  }

  else
  {
    sub_22BE294C8();
    sub_22BE272B4();
    v2 = sub_22BE3B0A4(v1);

    sub_22BE19DC4(v2, v3, v4, v5);
  }
}

uint64_t sub_22BE4F770()
{
  sub_22BE1B9D8();
  if (v1)
  {
    return sub_22BE1A5D0(*v0);
  }

  sub_22BE27A38();
  sub_22C2704B4();
  sub_22BE38FF8();
  v4 = sub_22BE25438(v3);

  return sub_22BE1AEA8(v4, v5, v6);
}

void sub_22BE4F7D8()
{
  sub_22BE18660();
  if (v0)
  {
    sub_22BE375D8();
  }

  else
  {
    sub_22BE294C8();
    sub_22BE358C8();
    v2 = sub_22BE3B0A4(v1);

    sub_22BE19DC4(v2, v3, v4, v5);
  }
}

uint64_t sub_22BE4F834()
{
  sub_22BE36798();
  if (v1)
  {
    return sub_22BE17D90(*(v0 + 8));
  }

  sub_22BE27A38();
  sub_22C2704B4();
  sub_22BE38FF8();
  v4 = sub_22BE25438(v3);

  return sub_22BE1AEA8(v4, v5, v6);
}

void sub_22BE4F89C()
{
  sub_22BE22984();
  if (v0)
  {
    sub_22BFBFCE0();
  }

  else
  {
    sub_22BE294C8();
    sub_22BE358C8();
    v2 = sub_22BE3B0A4(v1);

    sub_22BE19DC4(v2, v3, v4, v5);
  }
}

uint64_t sub_22BE4F8F8()
{
  sub_22BE1B9D8();
  if (v0)
  {
    return sub_22BE18A6C();
  }

  sub_22BE27A38();
  sub_22C2704B4();
  sub_22BE38FF8();
  v3 = sub_22BE25438(v2);

  return sub_22BE1AEA8(v3, v4, v5);
}

void sub_22BE4F95C()
{
  sub_22BE18660();
  if (v0)
  {
    sub_22BE35FD8();
  }

  else
  {
    sub_22BE294C8();
    sub_22BE358C8();
    v2 = sub_22BE3B0A4(v1);

    sub_22BE19DC4(v2, v3, v4, v5);
  }
}

uint64_t sub_22BE4F9B8()
{
  sub_22BE1B9D8();
  if (v0)
  {
    return sub_22BE18A6C();
  }

  sub_22BE27A38();
  sub_22C2704B4();
  sub_22BE22B34();
  v3 = sub_22BE25438(v2);

  return sub_22BE1AEA8(v3, v4, v5);
}

void sub_22BE4FA1C()
{
  sub_22BE18660();
  if (v0)
  {
    sub_22BE35FD8();
  }

  else
  {
    sub_22BE294C8();
    sub_22BE272B4();
    v2 = sub_22BE3B0A4(v1);

    sub_22BE19DC4(v2, v3, v4, v5);
  }
}

uint64_t sub_22BE4FA78()
{
  sub_22BE1B9D8();
  if (v0)
  {
    return sub_22BE18A6C();
  }

  sub_22BE27A38();
  sub_22C2704B4();
  sub_22BE28648();
  v3 = sub_22BE25438(v2);

  return sub_22BE1AEA8(v3, v4, v5);
}

void sub_22BE4FADC()
{
  sub_22BE18660();
  if (v0)
  {
    sub_22BE35FD8();
  }

  else
  {
    sub_22BE294C8();
    sub_22BE36CC4();
    v2 = sub_22BE3B0A4(v1);

    sub_22BE19DC4(v2, v3, v4, v5);
  }
}

uint64_t sub_22BE4FB38()
{
  sub_22BE1B9D8();
  if (v1)
  {
    return sub_22BE18A6C();
  }

  sub_22BE27A38();
  v3 = sub_22BE5CE4C(&qword_27D90BF90, &unk_22C294AD0);
  sub_22BE187D0(v3);
  if (*(v4 + 84) == v0)
  {
    sub_22BE23B20();
  }

  else
  {
    v6 = sub_22BE5CE4C(&qword_27D90C078, &unk_22C294B00);
    sub_22BE187D0(v6);
    if (*(v7 + 84) == v0)
    {
      sub_22BE1C1E8();
    }

    else
    {
      sub_22C2704B4();
      sub_22BE28648();
    }
  }

  v8 = sub_22BE25438(v5);

  return sub_22BE1AEA8(v8, v9, v10);
}

void sub_22BE4FC2C()
{
  sub_22BE18660();
  if (v1)
  {
    sub_22BE35FD8();
  }

  else
  {
    sub_22BE20388();
    v2 = sub_22BE5CE4C(&qword_27D90BF90, &unk_22C294AD0);
    sub_22BE187D0(v2);
    if (*(v3 + 84) == v0)
    {
      sub_22BE26204();
    }

    else
    {
      v5 = sub_22BE5CE4C(&qword_27D90C078, &unk_22C294B00);
      sub_22BE187D0(v5);
      if (*(v6 + 84) == v0)
      {
        sub_22BE38994();
      }

      else
      {
        sub_22C2704B4();
        sub_22BE36CC4();
      }
    }

    v7 = sub_22BE3B0A4(v4);

    sub_22BE19DC4(v7, v8, v9, v10);
  }
}

uint64_t sub_22BE4FD48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22BE18378();
  v6 = sub_22BE5CE4C(&qword_27D90BF90, &unk_22C294AD0);
  sub_22BE187D0(v6);
  if (*(v7 + 84) == v3)
  {
    sub_22BE23B20();
  }

  else
  {
    if (v3 == 2147483646)
    {
      return sub_22BE17D90(*(v4 + *(a3 + 28) + 8));
    }

    sub_22C2704B4();
    sub_22BE28648();
  }

  v10 = sub_22BE25438(v8);

  return sub_22BE1AEA8(v10, v11, v12);
}

uint64_t sub_22BE4FE08()
{
  sub_22BE20388();
  sub_22BE18378();
  v4 = sub_22BE5CE4C(&qword_27D90BF90, &unk_22C294AD0);
  result = sub_22BE187D0(v4);
  if (*(v6 + 84) == v3)
  {
    sub_22BE26204();
  }

  else
  {
    if (v3 == 2147483646)
    {
      *(v1 + *(v2 + 28) + 8) = v0;
      return result;
    }

    sub_22C2704B4();
    sub_22BE36CC4();
  }

  v8 = sub_22BE3B0A4(v7);

  return sub_22BE19DC4(v8, v9, v10, v11);
}

uint64_t sub_22BE4FF28()
{
  sub_22BE1B9D8();
  if (v3)
  {
    return sub_22BE1A5D0(*v1);
  }

  sub_22BE27A38();
  v5 = sub_22BE5CE4C(&qword_27D90C100, &unk_22C294B20);
  sub_22BE187D0(v5);
  if (*(v6 + 84) == v0)
  {
    v7 = *(v2 + 44);
  }

  else
  {
    sub_22C2704B4();
    v7 = *(v2 + 52);
  }

  v8 = sub_22BE25438(v7);

  return sub_22BE1AEA8(v8, v9, v10);
}

void sub_22BE4FFE0()
{
  sub_22BE18660();
  if (v2)
  {
    sub_22BE375D8();
  }

  else
  {
    sub_22BE20388();
    v3 = sub_22BE5CE4C(&qword_27D90C100, &unk_22C294B20);
    sub_22BE187D0(v3);
    if (*(v4 + 84) == v1)
    {
      v5 = *(v0 + 44);
    }

    else
    {
      sub_22C2704B4();
      v5 = *(v0 + 52);
    }

    v6 = sub_22BE3B0A4(v5);

    sub_22BE19DC4(v6, v7, v8, v9);
  }
}

uint64_t sub_22BE500BC()
{
  sub_22BE1B9D8();
  if (v3)
  {
    return sub_22BE1A5D0(*v1);
  }

  sub_22BE27A38();
  v5 = sub_22BE5CE4C(&qword_27D90C100, &unk_22C294B20);
  sub_22BE187D0(v5);
  if (*(v6 + 84) == v0)
  {
    sub_22BE38FF8();
  }

  else
  {
    sub_22C2704B4();
    v7 = *(v2 + 48);
  }

  v8 = sub_22BE25438(v7);

  return sub_22BE1AEA8(v8, v9, v10);
}

void sub_22BE50170()
{
  sub_22BE18660();
  if (v2)
  {
    sub_22BE375D8();
  }

  else
  {
    sub_22BE20388();
    v3 = sub_22BE5CE4C(&qword_27D90C100, &unk_22C294B20);
    sub_22BE187D0(v3);
    if (*(v4 + 84) == v1)
    {
      sub_22BE358C8();
    }

    else
    {
      sub_22C2704B4();
      v5 = *(v0 + 48);
    }

    v6 = sub_22BE3B0A4(v5);

    sub_22BE19DC4(v6, v7, v8, v9);
  }
}

uint64_t sub_22BE50220()
{
  sub_22BE1B9D8();
  if (v1)
  {
    return sub_22BE18A6C();
  }

  sub_22BE27A38();
  sub_22C2704B4();
  v3 = sub_22BE25438(*(v0 + 44));

  return sub_22BE1AEA8(v3, v4, v5);
}

void sub_22BE50288()
{
  sub_22BE18660();
  if (v1)
  {
    sub_22BE35FD8();
  }

  else
  {
    sub_22BE294C8();
    v2 = sub_22BE3B0A4(*(v0 + 44));

    sub_22BE19DC4(v2, v3, v4, v5);
  }
}

uint64_t sub_22BE502E8()
{
  sub_22BE1B9D8();
  if (v1)
  {
    return sub_22BE18A6C();
  }

  sub_22BE27A38();
  v3 = sub_22BE5CE4C(&qword_27D90C138, &qword_22C2CB830);
  sub_22BE187D0(v3);
  if (*(v4 + 84) == v0)
  {
    sub_22BE23B20();
  }

  else
  {
    v6 = sub_22BE5CE4C(&qword_27D909128, &qword_22C294AA0);
    sub_22BE187D0(v6);
    if (*(v7 + 84) == v0)
    {
      sub_22BE1C1E8();
    }

    else
    {
      sub_22C2704B4();
      sub_22BE22B34();
    }
  }

  v8 = sub_22BE25438(v5);

  return sub_22BE1AEA8(v8, v9, v10);
}

void sub_22BE503DC()
{
  sub_22BE18660();
  if (v1)
  {
    sub_22BE35FD8();
  }

  else
  {
    sub_22BE20388();
    v2 = sub_22BE5CE4C(&qword_27D90C138, &qword_22C2CB830);
    sub_22BE187D0(v2);
    if (*(v3 + 84) == v0)
    {
      sub_22BE26204();
    }

    else
    {
      v5 = sub_22BE5CE4C(&qword_27D909128, &qword_22C294AA0);
      sub_22BE187D0(v5);
      if (*(v6 + 84) == v0)
      {
        sub_22BE38994();
      }

      else
      {
        sub_22C2704B4();
        sub_22BE272B4();
      }
    }

    v7 = sub_22BE3B0A4(v4);

    sub_22BE19DC4(v7, v8, v9, v10);
  }
}

uint64_t sub_22BE504D0()
{
  sub_22BE1B9D8();
  if (v2)
  {
    return sub_22BE18A6C();
  }

  sub_22BE27A38();
  v4 = sub_22BE5CE4C(&qword_27D9090D0, &unk_22C294B30);
  sub_22BE187D0(v4);
  if (*(v5 + 84) == v0)
  {
    sub_22BE28648();
  }

  else
  {
    sub_22C2704B4();
    v6 = *(v1 + 36);
  }

  v7 = sub_22BE25438(v6);

  return sub_22BE1AEA8(v7, v8, v9);
}

void sub_22BE50580()
{
  sub_22BE18660();
  if (v2)
  {
    sub_22BE35FD8();
  }

  else
  {
    sub_22BE20388();
    v3 = sub_22BE5CE4C(&qword_27D9090D0, &unk_22C294B30);
    sub_22BE187D0(v3);
    if (*(v4 + 84) == v1)
    {
      sub_22BE36CC4();
    }

    else
    {
      sub_22C2704B4();
      v5 = *(v0 + 36);
    }

    v6 = sub_22BE3B0A4(v5);

    sub_22BE19DC4(v6, v7, v8, v9);
  }
}

uint64_t sub_22BE506A8()
{
  sub_22BE36798();
  if (v2)
  {
    return sub_22BE17D90(*(v1 + 8));
  }

  sub_22BE27A38();
  v4 = sub_22BE5CE4C(&qword_27D90C180, &unk_22C296C40);
  sub_22BE187D0(v4);
  if (*(v5 + 84) == v0)
  {
    sub_22BE22B34();
  }

  else
  {
    sub_22C2704B4();
    sub_22BE28648();
  }

  v7 = sub_22BE25438(v6);

  return sub_22BE1AEA8(v7, v8, v9);
}

void sub_22BE50758()
{
  sub_22BE22984();
  if (v1)
  {
    sub_22BFBFCE0();
  }

  else
  {
    sub_22BE20388();
    v2 = sub_22BE5CE4C(&qword_27D90C180, &unk_22C296C40);
    sub_22BE187D0(v2);
    if (*(v3 + 84) == v0)
    {
      sub_22BE272B4();
    }

    else
    {
      sub_22C2704B4();
      sub_22BE36CC4();
    }

    v5 = sub_22BE3B0A4(v4);

    sub_22BE19DC4(v5, v6, v7, v8);
  }
}

uint64_t sub_22BE5087C()
{
  sub_22BE1B9D8();
  if (v1)
  {
    return sub_22BE18A6C();
  }

  sub_22BE27A38();
  sub_22C2704B4();
  v3 = sub_22BE25438(*(v0 + 36));

  return sub_22BE1AEA8(v3, v4, v5);
}

void sub_22BE508E4()
{
  sub_22BE18660();
  if (v1)
  {
    sub_22BE35FD8();
  }

  else
  {
    sub_22BE294C8();
    v2 = sub_22BE3B0A4(*(v0 + 36));

    sub_22BE19DC4(v2, v3, v4, v5);
  }
}

uint64_t sub_22BE50944()
{
  sub_22BE1B9D8();
  if (v2)
  {
    return sub_22BE1A5D0(*v1);
  }

  sub_22BE27A38();
  v4 = sub_22BE5CE4C(&qword_27D909128, &qword_22C294AA0);
  sub_22BE187D0(v4);
  if (*(v5 + 84) == v0)
  {
    sub_22BE23B20();
  }

  else
  {
    sub_22C2704B4();
    sub_22BE1C1E8();
  }

  v7 = sub_22BE25438(v6);

  return sub_22BE1AEA8(v7, v8, v9);
}

void sub_22BE509F4()
{
  sub_22BE18660();
  if (v1)
  {
    sub_22BE375D8();
  }

  else
  {
    sub_22BE20388();
    v2 = sub_22BE5CE4C(&qword_27D909128, &qword_22C294AA0);
    sub_22BE187D0(v2);
    if (*(v3 + 84) == v0)
    {
      sub_22BE26204();
    }

    else
    {
      sub_22C2704B4();
      sub_22BE38994();
    }

    v5 = sub_22BE3B0A4(v4);

    sub_22BE19DC4(v5, v6, v7, v8);
  }
}

uint64_t sub_22BE50AA0()
{
  sub_22BE1B9D8();
  if (v2)
  {
    return sub_22BE18A6C();
  }

  sub_22BE27A38();
  v4 = sub_22BE5CE4C(&qword_27D909118, &unk_22C294B60);
  sub_22BE187D0(v4);
  if (*(v5 + 84) == v0)
  {
    v6 = *(v1 + 48);
  }

  else
  {
    sub_22C2704B4();
    v6 = *(v1 + 56);
  }

  v7 = sub_22BE25438(v6);

  return sub_22BE1AEA8(v7, v8, v9);
}

void sub_22BE50B54()
{
  sub_22BE18660();
  if (v2)
  {
    sub_22BE35FD8();
  }

  else
  {
    sub_22BE20388();
    v3 = sub_22BE5CE4C(&qword_27D909118, &unk_22C294B60);
    sub_22BE187D0(v3);
    if (*(v4 + 84) == v1)
    {
      v5 = *(v0 + 48);
    }

    else
    {
      sub_22C2704B4();
      v5 = *(v0 + 56);
    }

    v6 = sub_22BE3B0A4(v5);

    sub_22BE19DC4(v6, v7, v8, v9);
  }
}

uint64_t sub_22BE50C08()
{
  sub_22BE18378();
  v1 = sub_22BE5CE4C(&qword_27D909108, &unk_22C2B5E20);
  sub_22BE187D0(v1);
  if (*(v2 + 84) == v0)
  {
    sub_22BE1C1E8();
  }

  else
  {
    sub_22C2704B4();
    sub_22BE22B34();
  }

  v4 = sub_22BE25438(v3);

  return sub_22BE1AEA8(v4, v5, v6);
}

uint64_t sub_22BE50C9C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v6 = sub_22BE5CE4C(&qword_27D909108, &unk_22C2B5E20);
  sub_22BE187D0(v6);
  if (*(v7 + 84) == a3)
  {
    v8 = *(a4 + 24);
  }

  else
  {
    sub_22C2704B4();
    v9 = *(a4 + 28);
  }

  sub_22BE38A34();

  return sub_22BE19DC4(v10, v11, v12, v13);
}

uint64_t sub_22BE50D44()
{
  sub_22BE1B9D8();
  if (v1)
  {
    return sub_22BE1A5D0(*v0);
  }

  sub_22BE27A38();
  sub_22C2704B4();
  sub_22BE23B20();
  v4 = sub_22BE25438(v3);

  return sub_22BE1AEA8(v4, v5, v6);
}

void sub_22BE50DAC()
{
  sub_22BE18660();
  if (v0)
  {
    sub_22BE375D8();
  }

  else
  {
    sub_22BE294C8();
    sub_22BE26204();
    v2 = sub_22BE3B0A4(v1);

    sub_22BE19DC4(v2, v3, v4, v5);
  }
}

uint64_t sub_22BE50E78(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_22C2704B4();
    v9 = a1 + *(a3 + 36);

    return sub_22BE1AEA8(v9, a2, v8);
  }
}

uint64_t sub_22BE50F00(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_22C2704B4();
    v8 = v5 + *(a4 + 36);

    return sub_22BE19DC4(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22BE50F80(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_22BE5CE4C(&qword_27D90C180, &unk_22C296C40);
  v7 = sub_22BE187D0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_8:

    return sub_22BE1AEA8(v10, a2, v9);
  }

  v11 = sub_22BE5CE4C(&qword_27D90CA78, &qword_22C2B5880);
  v12 = sub_22BE187D0(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v14 = a3[5];
LABEL_7:
    v10 = a1 + v14;
    goto LABEL_8;
  }

  v15 = sub_22BE5CE4C(&qword_27D90CA68, &unk_22C296C50);
  v16 = sub_22BE187D0(v15);
  if (*(v17 + 84) == a2)
  {
    v9 = v16;
    v14 = a3[6];
    goto LABEL_7;
  }

  if (a2 != 253)
  {
    v22 = sub_22BE5CE4C(&qword_27D90CA58, &unk_22C2AE550);
    v23 = sub_22BE187D0(v22);
    if (*(v24 + 84) == a2)
    {
      v9 = v23;
      v14 = a3[8];
    }

    else
    {
      v25 = sub_22BE5CE4C(&qword_27D90CA48, &qword_22C296C60);
      v26 = sub_22BE187D0(v25);
      if (*(v27 + 84) == a2)
      {
        v9 = v26;
        v14 = a3[9];
      }

      else
      {
        v9 = sub_22C2704B4();
        v14 = a3[10];
      }
    }

    goto LABEL_7;
  }

  v19 = *(a1 + a3[7]);
  if (v19 <= 2)
  {
    v20 = 2;
  }

  else
  {
    v20 = *(a1 + a3[7]);
  }

  v21 = v20 - 2;
  if (v19 >= 2)
  {
    return v21;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22BE5118C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_22BE5CE4C(&qword_27D90C180, &unk_22C296C40);
  v9 = sub_22BE187D0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = sub_22BE5CE4C(&qword_27D90CA78, &qword_22C2B5880);
    v14 = sub_22BE187D0(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[5];
    }

    else
    {
      v17 = sub_22BE5CE4C(&qword_27D90CA68, &unk_22C296C50);
      result = sub_22BE187D0(v17);
      if (*(v19 + 84) == a3)
      {
        v11 = result;
        v16 = a4[6];
      }

      else
      {
        if (a3 == 253)
        {
          *(a1 + a4[7]) = a2 + 2;
          return result;
        }

        v20 = sub_22BE5CE4C(&qword_27D90CA58, &unk_22C2AE550);
        v21 = sub_22BE187D0(v20);
        if (*(v22 + 84) == a3)
        {
          v11 = v21;
          v16 = a4[8];
        }

        else
        {
          v23 = sub_22BE5CE4C(&qword_27D90CA48, &qword_22C296C60);
          v24 = sub_22BE187D0(v23);
          if (*(v25 + 84) == a3)
          {
            v11 = v24;
            v16 = a4[9];
          }

          else
          {
            v11 = sub_22C2704B4();
            v16 = a4[10];
          }
        }
      }
    }

    v12 = a1 + v16;
  }

  return sub_22BE19DC4(v12, a2, a2, v11);
}

uint64_t sub_22BE515C8(uint64_t result)
{
  if (*(result + 32))
  {
    sub_22BFB1A70();
    v2 = *(v1 + 24);
    return sub_22C270844();
  }

  return result;
}

void sub_22BE51670()
{
  sub_22BE19130();
  sub_22C0B1CB4(v1, v2, v3, v4);
  v5 = sub_22BE3CEF4();
  v7 = sub_22BE5CE4C(v5, v6);
  sub_22BE19448(v7);
  v9 = *(v8 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE1A8B4();
  v11 = type metadata accessor for TranscriptProtoStatementOutcome(0);
  v12 = sub_22BE18000(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22BE1955C();
  sub_22BE180C8();
  sub_22BE22868();
  v15 = sub_22BE406A0();
  sub_22BE1AB5C(v15, v16, v11);
  if (v17)
  {
    sub_22BE33928(v0, &qword_27D90CA68, &unk_22C296C50);
  }

  else
  {
    sub_22C0B0868();
    sub_22BE2C988(&qword_2810744D0, type metadata accessor for TranscriptProtoStatementOutcome);
    sub_22C0B1684();
    sub_22C0B1F18();
    sub_22BE1B5E0();
    sub_22C0B08BC();
  }

  sub_22BE22978();
  sub_22BE18478();
}

void sub_22BE51AA4()
{
  sub_22BE19130();
  sub_22BE378F4();
  sub_22C270464();
  sub_22BE33690();
  sub_22C272594();
  v0 = MEMORY[0x277D727E0];
  sub_22BE2C988(&qword_28106DF50, MEMORY[0x277D727E0]);
  sub_22BE46B68();
  sub_22BE2C988(v1, v0);
  sub_22BE1B73C();
  sub_22C0B1BEC();
  sub_22BE18478();
}

void sub_22BE51D20()
{
  sub_22BE19130();
  sub_22C0B1CB4(v1, v2, v3, v4);
  v5 = sub_22BE3CEF4();
  v7 = sub_22BE5CE4C(v5, v6);
  sub_22BE19448(v7);
  v9 = *(v8 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE1A8B4();
  v11 = type metadata accessor for TranscriptProtoStatementID(0);
  v12 = sub_22BE18000(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22BE1955C();
  sub_22BE180C8();
  sub_22BE22868();
  v15 = sub_22BE406A0();
  sub_22BE1AB5C(v15, v16, v11);
  if (v17)
  {
    sub_22BE33928(v0, &qword_27D9090F8, &unk_22C2AE4A0);
  }

  else
  {
    sub_22C0B0868();
    sub_22BE1974C();
    sub_22BE2C988(v18, v19);
    sub_22C0B1684();
    sub_22C0B1F18();
    sub_22BE1B5E0();
    sub_22C0B08BC();
  }

  sub_22BE22978();
  sub_22BE18478();
}

void sub_22BE52128()
{
  sub_22BE19130();
  sub_22BE378F4();
  sub_22C270464();
  v0 = sub_22BE33690();
  type metadata accessor for TranscriptProtoStatementID(v0);
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID);
  sub_22BE41578();
  sub_22BE2C988(v1, type metadata accessor for TranscriptProtoStatementID);
  sub_22BE1B73C();
  sub_22C0B1BEC();
  sub_22BE18478();
}

uint64_t sub_22BE52254()
{
  sub_22BFC2DD4();
  sub_22BE25B10();
  return sub_22C2705E4();
}

uint64_t sub_22BE52370@<X0>(uint64_t *a1@<X8>)
{
  result = TranscriptProtoInfixExpression_InfixOp.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_22BE523A0@<X0>(uint64_t *a1@<X8>)
{
  result = TranscriptProtoUpdateParameterExpression_UpdateKind.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_22BE527E4()
{
  sub_22BE1B9D8();
  if (v2)
  {
    return sub_22BE18A6C();
  }

  sub_22BE27A38();
  v4 = sub_22BE5CE4C(&qword_27D90E438, &unk_22C2AE450);
  sub_22BE187D0(v4);
  if (*(v5 + 84) == v0)
  {
    sub_22C0E9C40();
  }

  else
  {
    v7 = sub_22BE5CE4C(&qword_27D90E428, &qword_22C296E90);
    sub_22BE187D0(v7);
    if (*(v8 + 84) == v0)
    {
      v6 = v1[13];
    }

    else
    {
      v9 = sub_22BE5CE4C(&qword_27D90E418, &unk_22C2AE460);
      sub_22BE187D0(v9);
      if (*(v10 + 84) == v0)
      {
        v6 = v1[14];
      }

      else
      {
        v11 = sub_22BE5CE4C(&qword_27D90E408, &unk_22C2CC840);
        sub_22BE187D0(v11);
        if (*(v12 + 84) == v0)
        {
          v6 = v1[15];
        }

        else
        {
          sub_22C2704B4();
          v6 = v1[16];
        }
      }
    }
  }

  v13 = sub_22BE25438(v6);

  return sub_22BE1AEA8(v13, v14, v15);
}

void sub_22BE52978()
{
  sub_22BE18660();
  if (v2)
  {
    sub_22BE35FD8();
  }

  else
  {
    sub_22BE20388();
    v3 = sub_22BE5CE4C(&qword_27D90E438, &unk_22C2AE450);
    sub_22BE187D0(v3);
    if (*(v4 + 84) == v1)
    {
      sub_22C0E9C78();
    }

    else
    {
      v6 = sub_22BE5CE4C(&qword_27D90E428, &qword_22C296E90);
      sub_22BE187D0(v6);
      if (*(v7 + 84) == v1)
      {
        v5 = v0[13];
      }

      else
      {
        v8 = sub_22BE5CE4C(&qword_27D90E418, &unk_22C2AE460);
        sub_22BE187D0(v8);
        if (*(v9 + 84) == v1)
        {
          v5 = v0[14];
        }

        else
        {
          v10 = sub_22BE5CE4C(&qword_27D90E408, &unk_22C2CC840);
          sub_22BE187D0(v10);
          if (*(v11 + 84) == v1)
          {
            v5 = v0[15];
          }

          else
          {
            sub_22C2704B4();
            v5 = v0[16];
          }
        }
      }
    }

    v12 = sub_22BE3B0A4(v5);

    sub_22BE19DC4(v12, v13, v14, v15);
  }
}

uint64_t sub_22BE52B0C()
{
  sub_22BE2BC0C();
  v3 = sub_22BE5CE4C(&qword_27D90E4B0, &unk_22C2CC8A0);
  sub_22BE187D0(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = sub_22BE291BC();
LABEL_12:

    return sub_22BE1AEA8(v5, v0, v6);
  }

  v7 = sub_22BE5CE4C(&qword_27D90E4A0, &unk_22C2AE490);
  sub_22BE187D0(v7);
  if (*(v8 + 84) == v0)
  {
    sub_22BE23B20();
LABEL_11:
    v5 = v1 + v9;
    goto LABEL_12;
  }

  v10 = sub_22BE5CE4C(&qword_27D90E490, &qword_22C296EB8);
  sub_22BE187D0(v10);
  if (*(v11 + 84) == v0)
  {
    sub_22BE1C1E8();
    goto LABEL_11;
  }

  if (v0 != 253)
  {
    sub_22C2704B4();
    sub_22BE28648();
    goto LABEL_11;
  }

  if (*(v1 + *(v2 + 28)) >= 2u)
  {
    sub_22C0E9DD0();
  }

  else
  {
    v12 = -2;
  }

  if (v12 < 0)
  {
    v12 = -1;
  }

  return (v12 + 1);
}

uint64_t sub_22BE52C70()
{
  sub_22BE29120();
  v4 = sub_22BE5CE4C(&qword_27D90E4B0, &unk_22C2CC8A0);
  sub_22BE187D0(v4);
  if (*(v5 + 84) == v3)
  {
    sub_22BE238E8();
  }

  else
  {
    v6 = sub_22BE5CE4C(&qword_27D90E4A0, &unk_22C2AE490);
    sub_22BE187D0(v6);
    if (*(v7 + 84) == v3)
    {
      sub_22BE26204();
    }

    else
    {
      v8 = sub_22BE5CE4C(&qword_27D90E490, &qword_22C296EB8);
      result = sub_22BE187D0(v8);
      if (*(v10 + 84) == v3)
      {
        sub_22BE38994();
      }

      else
      {
        if (v3 == 253)
        {
          *(v1 + *(v2 + 28)) = v0 + 2;
          return result;
        }

        sub_22C2704B4();
        sub_22BE36CC4();
      }
    }
  }

  sub_22BE38A34();

  return sub_22BE19DC4(v11, v12, v13, v14);
}

uint64_t sub_22BE52DE0()
{
  sub_22BE1B9D8();
  if (v1)
  {
    return sub_22BE18A6C();
  }

  sub_22BE27A38();
  v3 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE187D0(v3);
  if (*(v4 + 84) == v0)
  {
    sub_22BE23B20();
  }

  else
  {
    v6 = sub_22BE5CE4C(&qword_27D90E4D8, &qword_22C2B5DB0);
    sub_22BE187D0(v6);
    if (*(v7 + 84) == v0)
    {
      sub_22BE1C1E8();
    }

    else
    {
      v8 = sub_22BE5CE4C(&qword_27D90C7E8, &unk_22C2AE4B0);
      sub_22BE187D0(v8);
      if (*(v9 + 84) == v0)
      {
        sub_22BE22B34();
      }

      else
      {
        sub_22C2704B4();
        sub_22BE28648();
      }
    }
  }

  v10 = sub_22BE25438(v5);

  return sub_22BE1AEA8(v10, v11, v12);
}

void sub_22BE52F1C()
{
  sub_22BE18660();
  if (v1)
  {
    sub_22BE35FD8();
  }

  else
  {
    sub_22BE20388();
    v2 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
    sub_22BE187D0(v2);
    if (*(v3 + 84) == v0)
    {
      sub_22BE26204();
    }

    else
    {
      v5 = sub_22BE5CE4C(&qword_27D90E4D8, &qword_22C2B5DB0);
      sub_22BE187D0(v5);
      if (*(v6 + 84) == v0)
      {
        sub_22BE38994();
      }

      else
      {
        v7 = sub_22BE5CE4C(&qword_27D90C7E8, &unk_22C2AE4B0);
        sub_22BE187D0(v7);
        if (*(v8 + 84) == v0)
        {
          sub_22BE272B4();
        }

        else
        {
          sub_22C2704B4();
          sub_22BE36CC4();
        }
      }
    }

    v9 = sub_22BE3B0A4(v4);

    sub_22BE19DC4(v9, v10, v11, v12);
  }
}

uint64_t sub_22BE530C0()
{
  sub_22BE1B9D8();
  if (v1)
  {
    return sub_22BE18A6C();
  }

  sub_22BE27A38();
  v3 = sub_22BE5CE4C(&qword_27D90E5B0, &unk_22C2AE500);
  sub_22BE187D0(v3);
  if (*(v4 + 84) == v0)
  {
    sub_22BE23B20();
  }

  else
  {
    v6 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
    sub_22BE187D0(v6);
    if (*(v7 + 84) == v0)
    {
      sub_22BE1C1E8();
    }

    else
    {
      sub_22C2704B4();
      sub_22BE28648();
    }
  }

  v8 = sub_22BE25438(v5);

  return sub_22BE1AEA8(v8, v9, v10);
}

void sub_22BE531B4()
{
  sub_22BE18660();
  if (v1)
  {
    sub_22BE35FD8();
  }

  else
  {
    sub_22BE20388();
    v2 = sub_22BE5CE4C(&qword_27D90E5B0, &unk_22C2AE500);
    sub_22BE187D0(v2);
    if (*(v3 + 84) == v0)
    {
      sub_22BE26204();
    }

    else
    {
      v5 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
      sub_22BE187D0(v5);
      if (*(v6 + 84) == v0)
      {
        sub_22BE38994();
      }

      else
      {
        sub_22C2704B4();
        sub_22BE36CC4();
      }
    }

    v7 = sub_22BE3B0A4(v4);

    sub_22BE19DC4(v7, v8, v9, v10);
  }
}

uint64_t sub_22BE532A8()
{
  sub_22BE2BC0C();
  v3 = sub_22BE5CE4C(&qword_27D90E568, &unk_22C2CC8B0);
  sub_22BE187D0(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = sub_22BE291BC();
  }

  else
  {
    sub_22C0E9DB8();
    if (v7)
    {
      return sub_22BE17D90(*(v1 + *(v2 + 20) + 8));
    }

    v9 = sub_22BE5CE4C(&qword_27D90E548, &qword_22C296F00);
    sub_22BE187D0(v9);
    if (*(v10 + 84) == v0)
    {
      sub_22BE1C1E8();
    }

    else
    {
      sub_22C2704B4();
      sub_22BE22B34();
    }

    v5 = v1 + v11;
  }

  return sub_22BE1AEA8(v5, v0, v6);
}

void sub_22BE533AC()
{
  sub_22BE29120();
  v2 = sub_22BE5CE4C(&qword_27D90E568, &unk_22C2CC8B0);
  sub_22BE187D0(v2);
  if (*(v3 + 84) == v1)
  {
    sub_22BE238E8();
  }

  else
  {
    sub_22C0E9DC4();
    if (v4)
    {
      sub_22BE3858C(*(v0 + 20));
      return;
    }

    v5 = sub_22BE5CE4C(&qword_27D90E548, &qword_22C296F00);
    sub_22BE187D0(v5);
    if (*(v6 + 84) == v1)
    {
      sub_22BE38994();
    }

    else
    {
      sub_22C2704B4();
      sub_22BE272B4();
    }
  }

  sub_22BE38A34();

  sub_22BE19DC4(v7, v8, v9, v10);
}

uint64_t sub_22BE534D4()
{
  sub_22BE1B9D8();
  if (v1)
  {
    return sub_22BE18A6C();
  }

  sub_22BE27A38();
  v3 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE187D0(v3);
  if (*(v4 + 84) == v0)
  {
    sub_22BE1C1E8();
  }

  else
  {
    v6 = sub_22BE5CE4C(&qword_27D90E670, &unk_22C2CC890);
    sub_22BE187D0(v6);
    if (*(v7 + 84) == v0)
    {
      sub_22C0E99E4();
    }

    else
    {
      sub_22C2704B4();
      sub_22BE38FF8();
    }
  }

  v8 = sub_22BE25438(v5);

  return sub_22BE1AEA8(v8, v9, v10);
}

void sub_22BE535C8()
{
  sub_22BE18660();
  if (v1)
  {
    sub_22BE35FD8();
  }

  else
  {
    sub_22BE20388();
    v2 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
    sub_22BE187D0(v2);
    if (*(v3 + 84) == v0)
    {
      sub_22BE38994();
    }

    else
    {
      v5 = sub_22BE5CE4C(&qword_27D90E670, &unk_22C2CC890);
      sub_22BE187D0(v5);
      if (*(v6 + 84) == v0)
      {
        sub_22C0E99F0();
      }

      else
      {
        sub_22C2704B4();
        sub_22BE358C8();
      }
    }

    v7 = sub_22BE3B0A4(v4);

    sub_22BE19DC4(v7, v8, v9, v10);
  }
}

uint64_t _s30IntelligenceFlowPlannerSupport34TranscriptProtoPromptSelectionEnumOwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return sub_22BE39E30(*a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22BE53720(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return sub_22BE39E30(*a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22BE537B0(unsigned __int8 *a1, int a2)
{
  if (a2 == 251)
  {
    v2 = *a1;
    if (v2 <= 4)
    {
      v3 = 4;
    }

    else
    {
      v3 = *a1;
    }

    v4 = v3 - 4;
    if (v2 >= 4)
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_22BE27A38();
    sub_22C2704B4();
    v6 = sub_22C0E96A0();

    return sub_22BE1AEA8(v6, v7, v8);
  }
}

void sub_22BE5382C()
{
  sub_22BE18378();
  if (v2 == 251)
  {
    *v1 = v0 + 4;
  }

  else
  {
    sub_22BE294C8();
    v3 = sub_22BE3D1CC();

    sub_22BE19DC4(v3, v4, v5, v6);
  }
}

uint64_t sub_22BE538FC()
{
  sub_22BE1B9D8();
  if (v2)
  {
    return sub_22BE1A5D0(*v1);
  }

  sub_22BE27A38();
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE187D0(v4);
  if (*(v5 + 84) == v0)
  {
    sub_22BE23B20();
  }

  else
  {
    v7 = sub_22BE5CE4C(&qword_27D90CA68, &unk_22C296C50);
    sub_22BE187D0(v7);
    if (*(v8 + 84) == v0)
    {
      sub_22BE1C1E8();
    }

    else
    {
      sub_22C2704B4();
      sub_22BE22B34();
    }
  }

  v9 = sub_22BE25438(v6);

  return sub_22BE1AEA8(v9, v10, v11);
}

void sub_22BE539F4()
{
  sub_22BE18660();
  if (v1)
  {
    sub_22BE375D8();
  }

  else
  {
    sub_22BE20388();
    v2 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
    sub_22BE187D0(v2);
    if (*(v3 + 84) == v0)
    {
      sub_22BE26204();
    }

    else
    {
      v5 = sub_22BE5CE4C(&qword_27D90CA68, &unk_22C296C50);
      sub_22BE187D0(v5);
      if (*(v6 + 84) == v0)
      {
        sub_22BE38994();
      }

      else
      {
        sub_22C2704B4();
        sub_22BE272B4();
      }
    }

    v7 = sub_22BE3B0A4(v4);

    sub_22BE19DC4(v7, v8, v9, v10);
  }
}

uint64_t sub_22BE53B30()
{
  sub_22BE36798();
  if (v2)
  {
    return sub_22BE17D90(*(v1 + 8));
  }

  sub_22BE27A38();
  v4 = sub_22BE5CE4C(&qword_27D90E730, &qword_22C2B5D20);
  sub_22BE187D0(v4);
  if (*(v5 + 84) == v0)
  {
    sub_22BE23B20();
  }

  else
  {
    v7 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
    sub_22BE187D0(v7);
    if (*(v8 + 84) == v0)
    {
      sub_22BE1C1E8();
    }

    else
    {
      v9 = sub_22BE5CE4C(&qword_27D90E670, &unk_22C2CC890);
      sub_22BE187D0(v9);
      if (*(v10 + 84) == v0)
      {
        sub_22C0E99E4();
      }

      else
      {
        sub_22C2704B4();
        sub_22BE38FF8();
      }
    }
  }

  v11 = sub_22BE25438(v6);

  return sub_22BE1AEA8(v11, v12, v13);
}

void sub_22BE53C70()
{
  sub_22BE22984();
  if (v3)
  {
    *(v1 + 8) = v0;
  }

  else
  {
    sub_22BE20388();
    v4 = sub_22BE5CE4C(&qword_27D90E730, &qword_22C2B5D20);
    sub_22BE187D0(v4);
    if (*(v5 + 84) == v2)
    {
      sub_22BE26204();
    }

    else
    {
      v7 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
      sub_22BE187D0(v7);
      if (*(v8 + 84) == v2)
      {
        sub_22BE38994();
      }

      else
      {
        v9 = sub_22BE5CE4C(&qword_27D90E670, &unk_22C2CC890);
        sub_22BE187D0(v9);
        if (*(v10 + 84) == v2)
        {
          sub_22C0E99F0();
        }

        else
        {
          sub_22C2704B4();
          sub_22BE358C8();
        }
      }
    }

    v11 = sub_22BE3B0A4(v6);

    sub_22BE19DC4(v11, v12, v13, v14);
  }
}

uint64_t sub_22BE53DB0(unsigned __int8 *a1, int a2)
{
  if (a2 == 248)
  {
    v3 = *a1;
    if (v3 >= 8)
    {
      return v3 - 7;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_22BE27A38();
    v5 = sub_22BE5CE4C(&qword_27D909128, &qword_22C294AA0);
    sub_22BE187D0(v5);
    if (*(v6 + 84) == v2)
    {
      sub_22BE23B20();
    }

    else
    {
      v8 = sub_22BE5CE4C(&qword_27D909208, &unk_22C2AE560);
      sub_22BE187D0(v8);
      if (*(v9 + 84) == v2)
      {
        sub_22BE1C1E8();
      }

      else
      {
        v10 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
        sub_22BE187D0(v10);
        if (*(v11 + 84) == v2)
        {
          sub_22BE22B34();
        }

        else
        {
          sub_22C2704B4();
          sub_22BE28648();
        }
      }
    }

    v12 = sub_22BE25438(v7);

    return sub_22BE1AEA8(v12, v13, v14);
  }
}

void sub_22BE53EFC()
{
  sub_22BE18378();
  if (v3 == 248)
  {
    *v1 = v0 + 7;
  }

  else
  {
    sub_22BE20388();
    v4 = sub_22BE5CE4C(&qword_27D909128, &qword_22C294AA0);
    sub_22BE187D0(v4);
    if (*(v5 + 84) == v2)
    {
      sub_22BE26204();
    }

    else
    {
      v7 = sub_22BE5CE4C(&qword_27D909208, &unk_22C2AE560);
      sub_22BE187D0(v7);
      if (*(v8 + 84) == v2)
      {
        sub_22BE38994();
      }

      else
      {
        v9 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
        sub_22BE187D0(v9);
        if (*(v10 + 84) == v2)
        {
          sub_22BE272B4();
        }

        else
        {
          sub_22C2704B4();
          sub_22BE36CC4();
        }
      }
    }

    v11 = sub_22BE3B0A4(v6);

    sub_22BE19DC4(v11, v12, v13, v14);
  }
}

uint64_t sub_22BE54040()
{
  sub_22BE1B9D8();
  if (v1)
  {
    return sub_22BE18A6C();
  }

  sub_22BE27A38();
  v3 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE187D0(v3);
  if (*(v4 + 84) == v0)
  {
    sub_22C0E99E4();
  }

  else
  {
    sub_22C2704B4();
    sub_22BE38FF8();
  }

  v6 = sub_22BE25438(v5);

  return sub_22BE1AEA8(v6, v7, v8);
}

void sub_22BE540EC()
{
  sub_22BE18660();
  if (v1)
  {
    sub_22BE35FD8();
  }

  else
  {
    sub_22BE20388();
    v2 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
    sub_22BE187D0(v2);
    if (*(v3 + 84) == v0)
    {
      sub_22C0E99F0();
    }

    else
    {
      sub_22C2704B4();
      sub_22BE358C8();
    }

    v5 = sub_22BE3B0A4(v4);

    sub_22BE19DC4(v5, v6, v7, v8);
  }
}

uint64_t sub_22BE541F0()
{
  sub_22BE1B9D8();
  if (v1)
  {
    return sub_22BE18A6C();
  }

  sub_22BE27A38();
  v3 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE187D0(v3);
  if (*(v4 + 84) == v0)
  {
    sub_22BE1C1E8();
  }

  else
  {
    v6 = sub_22BE5CE4C(&qword_27D90E670, &unk_22C2CC890);
    sub_22BE187D0(v6);
    if (*(v7 + 84) == v0)
    {
      sub_22BE22B34();
    }

    else
    {
      sub_22C2704B4();
      sub_22BE28648();
    }
  }

  v8 = sub_22BE25438(v5);

  return sub_22BE1AEA8(v8, v9, v10);
}

void sub_22BE542E4()
{
  sub_22BE18660();
  if (v1)
  {
    sub_22BE35FD8();
  }

  else
  {
    sub_22BE20388();
    v2 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
    sub_22BE187D0(v2);
    if (*(v3 + 84) == v0)
    {
      sub_22BE38994();
    }

    else
    {
      v5 = sub_22BE5CE4C(&qword_27D90E670, &unk_22C2CC890);
      sub_22BE187D0(v5);
      if (*(v6 + 84) == v0)
      {
        sub_22BE272B4();
      }

      else
      {
        sub_22C2704B4();
        sub_22BE36CC4();
      }
    }

    v7 = sub_22BE3B0A4(v4);

    sub_22BE19DC4(v7, v8, v9, v10);
  }
}

uint64_t sub_22BE54450()
{
  sub_22BE18378();
  type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  v1 = sub_22BE291BC();
  v3 = sub_22BE1AEA8(v1, v0, v2);
  if (v3 >= 2)
  {
    return v3 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22BE54490(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v4 = (a2 + 1);
  }

  else
  {
    v4 = 0;
  }

  type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  v5 = sub_22BE238E8();

  return sub_22BE19DC4(v5, v4, a3, v6);
}

uint64_t sub_22BE54588(uint64_t a1, int a2)
{
  if (a2 == 254)
  {
    sub_22C0E9BE8();
    v4 = (v2 + v3) & 0x7FFFFFFF;
    if (v5)
    {
      return (v4 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_22BE27A38();
    sub_22C2704B4();
    sub_22BE22B34();
    v8 = sub_22BE25438(v7);

    return sub_22BE1AEA8(v8, v9, v10);
  }
}

void sub_22BE545FC()
{
  sub_22BE18378();
  if (v2 == 254)
  {
    *v1 = v0 + 1;
  }

  else
  {
    sub_22BE294C8();
    sub_22BE272B4();
    v4 = sub_22BE3B0A4(v3);

    sub_22BE19DC4(v4, v5, v6, v7);
  }
}

uint64_t sub_22BE54660(unsigned __int8 *a1, int a2)
{
  if (a2 == 247)
  {
    v2 = *a1;
    if (v2 <= 8)
    {
      v3 = 8;
    }

    else
    {
      v3 = *a1;
    }

    v4 = v3 - 8;
    if (v2 >= 8)
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_22BE27A38();
    sub_22C2704B4();
    v6 = sub_22C0E96A0();

    return sub_22BE1AEA8(v6, v7, v8);
  }
}

void sub_22BE546DC()
{
  sub_22BE18378();
  if (v2 == 247)
  {
    *v1 = v0 + 8;
  }

  else
  {
    sub_22BE294C8();
    v3 = sub_22BE3D1CC();

    sub_22BE19DC4(v3, v4, v5, v6);
  }
}

uint64_t sub_22BE547D4()
{
  sub_22BE2BC0C();
  v3 = sub_22BE5CE4C(&qword_27D909128, &qword_22C294AA0);
  sub_22BE187D0(v3);
  if (*(v4 + 84) == v0)
  {
    sub_22BE1C1E8();
  }

  else
  {
    v6 = sub_22BE5CE4C(&qword_27D90E908, &unk_22C2AE600);
    sub_22BE187D0(v6);
    if (*(v7 + 84) == v0)
    {
      sub_22BE22B34();
    }

    else
    {
      v8 = sub_22BE5CE4C(&qword_27D90E8F8, &qword_22C2B5B60);
      sub_22BE187D0(v8);
      if (*(v9 + 84) == v0)
      {
        sub_22BE28648();
      }

      else
      {
        sub_22C0E9DB8();
        if (v14)
        {
          return sub_22BE17D90(*(v1 + *(v2 + 36) + 8));
        }

        v15 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
        sub_22BE187D0(v15);
        if (*(v16 + 84) == v0)
        {
          sub_22BE38FF8();
        }

        else
        {
          sub_22C2704B4();
          sub_22C0E9C40();
        }
      }
    }
  }

  v10 = sub_22BE25438(v5);

  return sub_22BE1AEA8(v10, v11, v12);
}

void sub_22BE54964()
{
  sub_22BE29120();
  v2 = sub_22BE5CE4C(&qword_27D909128, &qword_22C294AA0);
  sub_22BE187D0(v2);
  if (*(v3 + 84) == v1)
  {
    sub_22BE38994();
  }

  else
  {
    v5 = sub_22BE5CE4C(&qword_27D90E908, &unk_22C2AE600);
    sub_22BE187D0(v5);
    if (*(v6 + 84) == v1)
    {
      sub_22BE272B4();
    }

    else
    {
      v7 = sub_22BE5CE4C(&qword_27D90E8F8, &qword_22C2B5B60);
      sub_22BE187D0(v7);
      if (*(v8 + 84) == v1)
      {
        sub_22BE36CC4();
      }

      else
      {
        sub_22C0E9DC4();
        if (v13)
        {
          sub_22BE3858C(*(v0 + 36));
          return;
        }

        v14 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
        sub_22BE187D0(v14);
        if (*(v15 + 84) == v1)
        {
          sub_22BE358C8();
        }

        else
        {
          sub_22C2704B4();
          sub_22C0E9C78();
        }
      }
    }
  }

  v9 = sub_22BE3B0A4(v4);

  sub_22BE19DC4(v9, v10, v11, v12);
}

uint64_t sub_22BE54CB8(uint64_t a1, int a2)
{
  if (a2 == 254)
  {
    sub_22C0E9BE8();
    v5 = (v3 + v4) & 0x7FFFFFFF;
    if (v6)
    {
      return (v5 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_22BE27A38();
    v8 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
    sub_22BE187D0(v8);
    if (*(v9 + 84) == v2)
    {
      sub_22BE23B20();
    }

    else
    {
      v11 = sub_22BE5CE4C(&qword_27D90EA70, &unk_22C2AE680);
      sub_22BE187D0(v11);
      if (*(v12 + 84) == v2)
      {
        sub_22BE1C1E8();
      }

      else
      {
        v13 = sub_22BE5CE4C(&qword_27D90EA60, &qword_22C2B5D40);
        sub_22BE187D0(v13);
        if (*(v14 + 84) == v2)
        {
          sub_22BE22B34();
        }

        else
        {
          sub_22C2704B4();
          sub_22BE28648();
        }
      }
    }

    v15 = sub_22BE25438(v10);

    return sub_22BE1AEA8(v15, v16, v17);
  }
}

void sub_22BE54E04()
{
  sub_22BE18378();
  if (v3 == 254)
  {
    *v1 = v0 + 1;
  }

  else
  {
    sub_22BE20388();
    v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
    sub_22BE187D0(v4);
    if (*(v5 + 84) == v2)
    {
      sub_22BE26204();
    }

    else
    {
      v7 = sub_22BE5CE4C(&qword_27D90EA70, &unk_22C2AE680);
      sub_22BE187D0(v7);
      if (*(v8 + 84) == v2)
      {
        sub_22BE38994();
      }

      else
      {
        v9 = sub_22BE5CE4C(&qword_27D90EA60, &qword_22C2B5D40);
        sub_22BE187D0(v9);
        if (*(v10 + 84) == v2)
        {
          sub_22BE272B4();
        }

        else
        {
          sub_22C2704B4();
          sub_22BE36CC4();
        }
      }
    }

    v11 = sub_22BE3B0A4(v6);

    sub_22BE19DC4(v11, v12, v13, v14);
  }
}

uint64_t sub_22BE55010()
{
  sub_22BE1B9D8();
  if (v3)
  {
    return sub_22BE1A5D0(*v1);
  }

  sub_22BE27A38();
  v5 = sub_22BE5CE4C(&qword_27D90EB10, &qword_22C2CC960);
  sub_22BE187D0(v5);
  if (*(v6 + 84) == v0)
  {
    sub_22BE28648();
  }

  else
  {
    v8 = sub_22BE5CE4C(&qword_27D90EB00, &unk_22C2AE6B0);
    sub_22BE187D0(v8);
    if (*(v9 + 84) == v0)
    {
      sub_22BE38FF8();
    }

    else
    {
      v10 = sub_22BE5CE4C(&qword_27D90EAF0, &qword_22C2B5C30);
      sub_22BE187D0(v10);
      if (*(v11 + 84) == v0)
      {
        sub_22C0E9C40();
      }

      else
      {
        sub_22C2704B4();
        v7 = *(v2 + 52);
      }
    }
  }

  v12 = sub_22BE25438(v7);

  return sub_22BE1AEA8(v12, v13, v14);
}

void sub_22BE55154()
{
  sub_22BE18660();
  if (v2)
  {
    sub_22BE375D8();
  }

  else
  {
    sub_22BE20388();
    v3 = sub_22BE5CE4C(&qword_27D90EB10, &qword_22C2CC960);
    sub_22BE187D0(v3);
    if (*(v4 + 84) == v1)
    {
      sub_22BE36CC4();
    }

    else
    {
      v6 = sub_22BE5CE4C(&qword_27D90EB00, &unk_22C2AE6B0);
      sub_22BE187D0(v6);
      if (*(v7 + 84) == v1)
      {
        sub_22BE358C8();
      }

      else
      {
        v8 = sub_22BE5CE4C(&qword_27D90EAF0, &qword_22C2B5C30);
        sub_22BE187D0(v8);
        if (*(v9 + 84) == v1)
        {
          sub_22C0E9C78();
        }

        else
        {
          sub_22C2704B4();
          v5 = *(v0 + 52);
        }
      }
    }

    v10 = sub_22BE3B0A4(v5);

    sub_22BE19DC4(v10, v11, v12, v13);
  }
}

uint64_t sub_22BE55364()
{
  sub_22BE18378();
  sub_22C2704B4();
  v1 = sub_22BE291BC();

  return sub_22BE1AEA8(v1, v0, v2);
}

uint64_t sub_22BE553A4()
{
  sub_22BE18378();
  sub_22C2704B4();
  sub_22BE238E8();
  sub_22BE38A34();

  return sub_22BE19DC4(v0, v1, v2, v3);
}

uint64_t sub_22BE553E4()
{
  sub_22BE1B9D8();
  if (v3)
  {
    return sub_22BE1A5D0(*v1);
  }

  sub_22BE27A38();
  v5 = sub_22BE5CE4C(&qword_27D90EC28, &unk_22C2CCA30);
  sub_22BE187D0(v5);
  if (*(v6 + 84) == v0)
  {
    sub_22BE23B20();
  }

  else
  {
    v8 = sub_22BE5CE4C(&qword_27D90EC18, &unk_22C2AE700);
    sub_22BE187D0(v8);
    if (*(v9 + 84) == v0)
    {
      sub_22BE1C1E8();
    }

    else
    {
      v10 = sub_22BE5CE4C(&qword_27D90EC08, &unk_22C2CCA20);
      sub_22BE187D0(v10);
      if (*(v11 + 84) == v0)
      {
        sub_22C0E9C40();
      }

      else
      {
        sub_22C2704B4();
        v7 = *(v2 + 48);
      }
    }
  }

  v12 = sub_22BE25438(v7);

  return sub_22BE1AEA8(v12, v13, v14);
}

void sub_22BE55528()
{
  sub_22BE18660();
  if (v2)
  {
    sub_22BE375D8();
  }

  else
  {
    sub_22BE20388();
    v3 = sub_22BE5CE4C(&qword_27D90EC28, &unk_22C2CCA30);
    sub_22BE187D0(v3);
    if (*(v4 + 84) == v1)
    {
      sub_22BE26204();
    }

    else
    {
      v6 = sub_22BE5CE4C(&qword_27D90EC18, &unk_22C2AE700);
      sub_22BE187D0(v6);
      if (*(v7 + 84) == v1)
      {
        sub_22BE38994();
      }

      else
      {
        v8 = sub_22BE5CE4C(&qword_27D90EC08, &unk_22C2CCA20);
        sub_22BE187D0(v8);
        if (*(v9 + 84) == v1)
        {
          sub_22C0E9C78();
        }

        else
        {
          sub_22C2704B4();
          v5 = *(v0 + 48);
        }
      }
    }

    v10 = sub_22BE3B0A4(v5);

    sub_22BE19DC4(v10, v11, v12, v13);
  }
}

uint64_t sub_22BE55668()
{
  sub_22BE1B9D8();
  if (v0)
  {
    return sub_22BE18A6C();
  }

  sub_22BE27A38();
  sub_22C2704B4();
  sub_22BE38FF8();
  v3 = sub_22BE25438(v2);

  return sub_22BE1AEA8(v3, v4, v5);
}

void sub_22BE556CC()
{
  sub_22BE18660();
  if (v0)
  {
    sub_22BE35FD8();
  }

  else
  {
    sub_22BE294C8();
    sub_22BE358C8();
    v2 = sub_22BE3B0A4(v1);

    sub_22BE19DC4(v2, v3, v4, v5);
  }
}

uint64_t sub_22BE557A0()
{
  sub_22BE36798();
  if (v1)
  {
    return sub_22BE17D90(*(v0 + 24));
  }

  sub_22BE27A38();
  sub_22C2704B4();
  sub_22BE22B34();
  v4 = sub_22BE25438(v3);

  return sub_22BE1AEA8(v4, v5, v6);
}

void sub_22BE55808()
{
  sub_22BE22984();
  if (v2)
  {
    *(v1 + 24) = v0;
  }

  else
  {
    sub_22BE294C8();
    sub_22BE272B4();
    v4 = sub_22BE3B0A4(v3);

    sub_22BE19DC4(v4, v5, v6, v7);
  }
}

uint64_t sub_22BE5587C()
{
  sub_22BE1B9D8();
  if (v1)
  {
    return sub_22BE18A6C();
  }

  sub_22BE27A38();
  v3 = sub_22BE5CE4C(&qword_27D90ECC0, &qword_22C297098);
  sub_22BE187D0(v3);
  if (*(v4 + 84) == v0)
  {
    sub_22BE1C1E8();
  }

  else
  {
    v6 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
    sub_22BE187D0(v6);
    if (*(v7 + 84) == v0)
    {
      sub_22BE22B34();
    }

    else
    {
      v8 = sub_22BE5CE4C(&qword_27D90ECB0, &unk_22C2AE730);
      sub_22BE187D0(v8);
      if (*(v9 + 84) == v0)
      {
        sub_22BE28648();
      }

      else
      {
        sub_22C2704B4();
        sub_22C0E99E4();
      }
    }
  }

  v10 = sub_22BE25438(v5);

  return sub_22BE1AEA8(v10, v11, v12);
}

void sub_22BE559B8()
{
  sub_22BE18660();
  if (v1)
  {
    sub_22BE35FD8();
  }

  else
  {
    sub_22BE20388();
    v2 = sub_22BE5CE4C(&qword_27D90ECC0, &qword_22C297098);
    sub_22BE187D0(v2);
    if (*(v3 + 84) == v0)
    {
      sub_22BE38994();
    }

    else
    {
      v5 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
      sub_22BE187D0(v5);
      if (*(v6 + 84) == v0)
      {
        sub_22BE272B4();
      }

      else
      {
        v7 = sub_22BE5CE4C(&qword_27D90ECB0, &unk_22C2AE730);
        sub_22BE187D0(v7);
        if (*(v8 + 84) == v0)
        {
          sub_22BE36CC4();
        }

        else
        {
          sub_22C2704B4();
          sub_22C0E99F0();
        }
      }
    }

    v9 = sub_22BE3B0A4(v4);

    sub_22BE19DC4(v9, v10, v11, v12);
  }
}

uint64_t sub_22BE55B1C()
{
  sub_22BE1B9D8();
  if (v2)
  {
    return sub_22BE1A5D0(*v1);
  }

  sub_22BE27A38();
  v4 = sub_22BE5CE4C(&qword_27D90ECF8, &qword_22C2970B0);
  sub_22BE187D0(v4);
  if (*(v5 + 84) == v0)
  {
    sub_22BE22B34();
  }

  else
  {
    v7 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
    sub_22BE187D0(v7);
    if (*(v8 + 84) == v0)
    {
      sub_22BE28648();
    }

    else
    {
      v9 = sub_22BE5CE4C(&qword_27D90E670, &unk_22C2CC890);
      sub_22BE187D0(v9);
      if (*(v10 + 84) == v0)
      {
        sub_22C0E99E4();
      }

      else
      {
        sub_22C2704B4();
        sub_22BE38FF8();
      }
    }
  }

  v11 = sub_22BE25438(v6);

  return sub_22BE1AEA8(v11, v12, v13);
}

void sub_22BE55C5C()
{
  sub_22BE18660();
  if (v1)
  {
    sub_22BE375D8();
  }

  else
  {
    sub_22BE20388();
    v2 = sub_22BE5CE4C(&qword_27D90ECF8, &qword_22C2970B0);
    sub_22BE187D0(v2);
    if (*(v3 + 84) == v0)
    {
      sub_22BE272B4();
    }

    else
    {
      v5 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
      sub_22BE187D0(v5);
      if (*(v6 + 84) == v0)
      {
        sub_22BE36CC4();
      }

      else
      {
        v7 = sub_22BE5CE4C(&qword_27D90E670, &unk_22C2CC890);
        sub_22BE187D0(v7);
        if (*(v8 + 84) == v0)
        {
          sub_22C0E99F0();
        }

        else
        {
          sub_22C2704B4();
          sub_22BE358C8();
        }
      }
    }

    v9 = sub_22BE3B0A4(v4);

    sub_22BE19DC4(v9, v10, v11, v12);
  }
}

uint64_t sub_22BE55F50(uint64_t a1, int a2)
{
  if (a2 == 253)
  {
    v2 = *(a1 + 8);
    if (v2 <= 1)
    {
      return 0;
    }

    else
    {
      return v2 ^ 0xFF;
    }
  }

  else
  {
    sub_22BE27A38();
    sub_22C2704B4();
    v4 = sub_22C0E96A0();

    return sub_22BE1AEA8(v4, v5, v6);
  }
}

void sub_22BE55FC0()
{
  sub_22BE18378();
  if (v2 == 253)
  {
    *(v1 + 8) = ~v0;
  }

  else
  {
    sub_22BE294C8();
    v3 = sub_22BE3D1CC();

    sub_22BE19DC4(v3, v4, v5, v6);
  }
}

uint64_t sub_22BE5602C()
{
  sub_22BE1B9D8();
  if (v2)
  {
    return sub_22BE1A5D0(*v1);
  }

  sub_22BE27A38();
  v4 = sub_22BE5CE4C(&qword_27D90EE30, &unk_22C2AE760);
  sub_22BE187D0(v4);
  if (*(v5 + 84) == v0)
  {
    sub_22BE1C1E8();
  }

  else
  {
    sub_22C2704B4();
    sub_22BE28648();
  }

  v7 = sub_22BE25438(v6);

  return sub_22BE1AEA8(v7, v8, v9);
}

void sub_22BE560DC()
{
  sub_22BE18660();
  if (v1)
  {
    sub_22BE375D8();
  }

  else
  {
    sub_22BE20388();
    v2 = sub_22BE5CE4C(&qword_27D90EE30, &unk_22C2AE760);
    sub_22BE187D0(v2);
    if (*(v3 + 84) == v0)
    {
      sub_22BE38994();
    }

    else
    {
      sub_22C2704B4();
      sub_22BE36CC4();
    }

    v5 = sub_22BE3B0A4(v4);

    sub_22BE19DC4(v5, v6, v7, v8);
  }
}

uint64_t sub_22BE56454()
{
  sub_22BE2BC0C();
  v1 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE187D0(v1);
  if (*(v2 + 84) == v0)
  {
    sub_22BE23B20();
  }

  else
  {
    sub_22C2704B4();
    sub_22BE1C1E8();
  }

  v4 = sub_22BE25438(v3);

  return sub_22BE1AEA8(v4, v5, v6);
}

uint64_t sub_22BE564E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v6 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE187D0(v6);
  if (*(v7 + 84) == a3)
  {
    v8 = *(a4 + 20);
  }

  else
  {
    sub_22C2704B4();
    v9 = *(a4 + 24);
  }

  sub_22BE38A34();

  return sub_22BE19DC4(v10, v11, v12, v13);
}

uint64_t sub_22BE565DC()
{
  sub_22BE2BC0C();
  v2 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE187D0(v2);
  if (*(v3 + 84) == v0)
  {
    v4 = sub_22BE291BC();
  }

  else
  {
    sub_22C2704B4();
    sub_22BE22B34();
    v4 = v1 + v6;
  }

  return sub_22BE1AEA8(v4, v0, v5);
}

uint64_t sub_22BE56670()
{
  sub_22BE29120();
  v1 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE187D0(v1);
  if (*(v2 + 84) == v0)
  {
    sub_22BE238E8();
  }

  else
  {
    sub_22C2704B4();
    sub_22BE272B4();
  }

  sub_22BE38A34();

  return sub_22BE19DC4(v3, v4, v5, v6);
}

uint64_t sub_22BE5679C()
{
  sub_22BE1B9D8();
  if (v2)
  {
    return sub_22BE1A5D0(*v1);
  }

  sub_22BE27A38();
  v4 = sub_22BE5CE4C(&qword_27D90F078, &unk_22C2AE7D0);
  sub_22BE187D0(v4);
  if (*(v5 + 84) == v0)
  {
    sub_22BE23B20();
  }

  else
  {
    sub_22C2704B4();
    sub_22BE22B34();
  }

  v7 = sub_22BE25438(v6);

  return sub_22BE1AEA8(v7, v8, v9);
}

void sub_22BE5684C()
{
  sub_22BE18660();
  if (v1)
  {
    sub_22BE375D8();
  }

  else
  {
    sub_22BE20388();
    v2 = sub_22BE5CE4C(&qword_27D90F078, &unk_22C2AE7D0);
    sub_22BE187D0(v2);
    if (*(v3 + 84) == v0)
    {
      sub_22BE26204();
    }

    else
    {
      sub_22C2704B4();
      sub_22BE272B4();
    }

    v5 = sub_22BE3B0A4(v4);

    sub_22BE19DC4(v5, v6, v7, v8);
  }
}

uint64_t sub_22BE568F8()
{
  sub_22BE2BC0C();
  v2 = sub_22BE5CE4C(&qword_27D90CA68, &unk_22C296C50);
  sub_22BE187D0(v2);
  if (*(v3 + 84) == v0)
  {
    v4 = sub_22BE291BC();
  }

  else
  {
    v6 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
    sub_22BE187D0(v6);
    if (*(v7 + 84) == v0)
    {
      sub_22BE23B20();
    }

    else
    {
      sub_22C0E9DB8();
      if (v9)
      {
        sub_22BE3CF24();
        return sub_22BE17D90(*(v10 + 8));
      }

      sub_22C2704B4();
      sub_22BE38FF8();
    }

    v4 = v1 + v8;
  }

  return sub_22BE1AEA8(v4, v0, v5);
}

void sub_22BE569F8()
{
  sub_22BE29120();
  v2 = sub_22BE5CE4C(&qword_27D90CA68, &unk_22C296C50);
  sub_22BE187D0(v2);
  if (*(v3 + 84) == v1)
  {
    sub_22BE238E8();
  }

  else
  {
    v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
    sub_22BE187D0(v4);
    if (*(v5 + 84) == v1)
    {
      sub_22BE26204();
    }

    else
    {
      sub_22C0E9DC4();
      if (v6)
      {
        sub_22BE3858C(*(v0 + 28));
        return;
      }

      sub_22C2704B4();
      sub_22BE358C8();
    }
  }

  sub_22BE38A34();

  sub_22BE19DC4(v7, v8, v9, v10);
}

uint64_t sub_22BE56AF4()
{
  sub_22BE2BC0C();
  v3 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE187D0(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = sub_22BE291BC();
LABEL_6:

    return sub_22BE1AEA8(v5, v0, v6);
  }

  v7 = sub_22BE5CE4C(&qword_27D90F0A8, &qword_22C2B5B70);
  sub_22BE187D0(v7);
  if (*(v8 + 84) == v0)
  {
    sub_22BE23B20();
LABEL_5:
    v5 = v1 + v9;
    goto LABEL_6;
  }

  if (v0 != 253)
  {
    v12 = sub_22BE5CE4C(&qword_27D90F098, &unk_22C2AE7E0);
    sub_22BE187D0(v12);
    if (*(v13 + 84) == v0)
    {
      sub_22C0E99E4();
    }

    else
    {
      sub_22C2704B4();
      sub_22BE38FF8();
    }

    goto LABEL_5;
  }

  if (*(v1 + *(v2 + 24)) >= 2u)
  {
    sub_22C0E9DD0();
  }

  else
  {
    v11 = -2;
  }

  if (v11 < 0)
  {
    v11 = -1;
  }

  return (v11 + 1);
}

uint64_t sub_22BE56C58()
{
  sub_22BE29120();
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE187D0(v4);
  if (*(v5 + 84) == v3)
  {
    sub_22BE238E8();
  }

  else
  {
    v6 = sub_22BE5CE4C(&qword_27D90F0A8, &qword_22C2B5B70);
    result = sub_22BE187D0(v6);
    if (*(v8 + 84) == v3)
    {
      sub_22BE26204();
    }

    else
    {
      if (v3 == 253)
      {
        *(v1 + *(v2 + 24)) = v0 + 2;
        return result;
      }

      v13 = sub_22BE5CE4C(&qword_27D90F098, &unk_22C2AE7E0);
      sub_22BE187D0(v13);
      if (*(v14 + 84) == v3)
      {
        sub_22C0E99F0();
      }

      else
      {
        sub_22C2704B4();
        sub_22BE358C8();
      }
    }
  }

  sub_22BE38A34();

  return sub_22BE19DC4(v9, v10, v11, v12);
}

uint64_t sub_22BE56DF8()
{
  sub_22BE1B9D8();
  if (v1)
  {
    return sub_22BE18A6C();
  }

  sub_22BE27A38();
  v3 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE187D0(v3);
  if (*(v4 + 84) == v0)
  {
    sub_22BE22B34();
  }

  else
  {
    sub_22C2704B4();
    sub_22C0E99E4();
  }

  v6 = sub_22BE25438(v5);

  return sub_22BE1AEA8(v6, v7, v8);
}

void sub_22BE56EA4()
{
  sub_22BE18660();
  if (v1)
  {
    sub_22BE35FD8();
  }

  else
  {
    sub_22BE20388();
    v2 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
    sub_22BE187D0(v2);
    if (*(v3 + 84) == v0)
    {
      sub_22BE272B4();
    }

    else
    {
      sub_22C2704B4();
      sub_22C0E99F0();
    }

    v5 = sub_22BE3B0A4(v4);

    sub_22BE19DC4(v5, v6, v7, v8);
  }
}

uint64_t sub_22BE56F50()
{
  sub_22BE2BC0C();
  v2 = sub_22BE5CE4C(&qword_27D909128, &qword_22C294AA0);
  sub_22BE187D0(v2);
  if (*(v3 + 84) == v0)
  {
    v4 = sub_22BE291BC();
  }

  else
  {
    v6 = sub_22BE5CE4C(&qword_27D90C138, &qword_22C2CB830);
    sub_22BE187D0(v6);
    if (*(v7 + 84) == v0)
    {
      sub_22BE23B20();
    }

    else
    {
      v9 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
      sub_22BE187D0(v9);
      if (*(v10 + 84) == v0)
      {
        sub_22BE1C1E8();
      }

      else
      {
        sub_22C2704B4();
        sub_22BE22B34();
      }
    }

    v4 = v1 + v8;
  }

  return sub_22BE1AEA8(v4, v0, v5);
}

uint64_t sub_22BE57074()
{
  sub_22BE29120();
  v1 = sub_22BE5CE4C(&qword_27D909128, &qword_22C294AA0);
  sub_22BE187D0(v1);
  if (*(v2 + 84) == v0)
  {
    sub_22BE238E8();
  }

  else
  {
    v3 = sub_22BE5CE4C(&qword_27D90C138, &qword_22C2CB830);
    sub_22BE187D0(v3);
    if (*(v4 + 84) == v0)
    {
      sub_22BE26204();
    }

    else
    {
      v5 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
      sub_22BE187D0(v5);
      if (*(v6 + 84) == v0)
      {
        sub_22BE38994();
      }

      else
      {
        sub_22C2704B4();
        sub_22BE272B4();
      }
    }
  }

  sub_22BE38A34();

  return sub_22BE19DC4(v7, v8, v9, v10);
}

uint64_t sub_22BE571C0()
{
  sub_22BE1B9D8();
  if (v2)
  {
    return sub_22BE1A5D0(*v1);
  }

  sub_22BE27A38();
  v4 = sub_22BE5CE4C(&qword_27D90C100, &unk_22C294B20);
  sub_22BE187D0(v4);
  if (*(v5 + 84) == v0)
  {
    sub_22BE22B34();
  }

  else
  {
    sub_22C2704B4();
    sub_22BE28648();
  }

  v7 = sub_22BE25438(v6);

  return sub_22BE1AEA8(v7, v8, v9);
}

void sub_22BE57270()
{
  sub_22BE18660();
  if (v1)
  {
    sub_22BE375D8();
  }

  else
  {
    sub_22BE20388();
    v2 = sub_22BE5CE4C(&qword_27D90C100, &unk_22C294B20);
    sub_22BE187D0(v2);
    if (*(v3 + 84) == v0)
    {
      sub_22BE272B4();
    }

    else
    {
      sub_22C2704B4();
      sub_22BE36CC4();
    }

    v5 = sub_22BE3B0A4(v4);

    sub_22BE19DC4(v5, v6, v7, v8);
  }
}

uint64_t sub_22BE57438()
{
  sub_22BE1B9D8();
  if (v1)
  {
    return sub_22BE18A6C();
  }

  sub_22BE27A38();
  v3 = sub_22BE5CE4C(&qword_27D90F078, &unk_22C2AE7D0);
  sub_22BE187D0(v3);
  if (*(v4 + 84) == v0)
  {
    sub_22BE23B20();
  }

  else
  {
    v6 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
    sub_22BE187D0(v6);
    if (*(v7 + 84) == v0)
    {
      sub_22BE22B34();
    }

    else
    {
      sub_22C2704B4();
      sub_22C0E99E4();
    }
  }

  v8 = sub_22BE25438(v5);

  return sub_22BE1AEA8(v8, v9, v10);
}

void sub_22BE5752C()
{
  sub_22BE18660();
  if (v1)
  {
    sub_22BE35FD8();
  }

  else
  {
    sub_22BE20388();
    v2 = sub_22BE5CE4C(&qword_27D90F078, &unk_22C2AE7D0);
    sub_22BE187D0(v2);
    if (*(v3 + 84) == v0)
    {
      sub_22BE26204();
    }

    else
    {
      v5 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
      sub_22BE187D0(v5);
      if (*(v6 + 84) == v0)
      {
        sub_22BE272B4();
      }

      else
      {
        sub_22C2704B4();
        sub_22C0E99F0();
      }
    }

    v7 = sub_22BE3B0A4(v4);

    sub_22BE19DC4(v7, v8, v9, v10);
  }
}

uint64_t sub_22BE57AC8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22C26E534();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_22BE57AF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22C26E164();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_22C26E2A4();
    v8 = a1 + *(a3 + 20);
  }

  return sub_22BE1AEA8(v8, a2, v7);
}

uint64_t sub_22BE57B90(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22C26E164();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_22C26E2A4();
    v10 = a1 + *(a4 + 20);
  }

  return sub_22BE19DC4(v10, a2, a2, v9);
}

uint64_t sub_22BE57DE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C26E1D4();

  return sub_22BE1AEA8(a1, a2, v4);
}

uint64_t sub_22BE57E2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C26E1D4();

  return sub_22BE19DC4(a1, a2, a2, v4);
}

uint64_t sub_22BE57EB4(uint64_t a1, uint64_t a2, int *a3)
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
    v8 = sub_22C26E244();
    v9 = sub_22BE187D0(v8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = a3[5];
    }

    else
    {
      v13 = sub_22C26EC34();
      v14 = sub_22BE187D0(v13);
      if (*(v15 + 84) == a2)
      {
        v11 = v14;
        v12 = a3[6];
      }

      else
      {
        v11 = type metadata accessor for StatementResultDigest(0);
        v12 = a3[10];
      }
    }

    return sub_22BE1AEA8(a1 + v12, a2, v11);
  }
}

uint64_t sub_22BE57FBC(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_22C26E244();
    v9 = sub_22BE187D0(v8);
    if (*(v10 + 84) == a3)
    {
      v11 = v9;
      v12 = a4[5];
    }

    else
    {
      v13 = sub_22C26EC34();
      v14 = sub_22BE187D0(v13);
      if (*(v15 + 84) == a3)
      {
        v11 = v14;
        v12 = a4[6];
      }

      else
      {
        v11 = type metadata accessor for StatementResultDigest(0);
        v12 = a4[10];
      }
    }

    return sub_22BE19DC4(v5 + v12, a2, a2, v11);
  }

  return result;
}

uint64_t sub_22BE580C0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_22BE5CE4C(&qword_27D90B2D8, &qword_22C2B5080);
  v7 = sub_22BE187D0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_16:

    return sub_22BE1AEA8(v10, a2, v9);
  }

  v11 = sub_22BE5CE4C(&qword_27D911C90, &qword_22C2B5088);
  v12 = sub_22BE187D0(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v14 = a3[5];
LABEL_15:
    v10 = a1 + v14;
    goto LABEL_16;
  }

  v15 = type metadata accessor for StatementResult(0);
  v16 = sub_22BE187D0(v15);
  if (*(v17 + 84) == a2)
  {
    v9 = v16;
    v14 = a3[6];
    goto LABEL_15;
  }

  if (a2 != 253)
  {
    v9 = sub_22BE5CE4C(&qword_27D911C98, &qword_22C2B5090);
    v14 = a3[8];
    goto LABEL_15;
  }

  v18 = *(a1 + a3[7]);
  if (v18 <= 2)
  {
    v19 = 2;
  }

  else
  {
    v19 = *(a1 + a3[7]);
  }

  v20 = v19 - 2;
  if (v18 >= 2)
  {
    return v20;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22BE58234(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_22BE5CE4C(&qword_27D90B2D8, &qword_22C2B5080);
  v9 = sub_22BE187D0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = sub_22BE5CE4C(&qword_27D911C90, &qword_22C2B5088);
    v14 = sub_22BE187D0(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[5];
    }

    else
    {
      v17 = type metadata accessor for StatementResult(0);
      result = sub_22BE187D0(v17);
      if (*(v19 + 84) == a3)
      {
        v11 = result;
        v16 = a4[6];
      }

      else
      {
        if (a3 == 253)
        {
          *(a1 + a4[7]) = a2 + 2;
          return result;
        }

        v11 = sub_22BE5CE4C(&qword_27D911C98, &qword_22C2B5090);
        v16 = a4[8];
      }
    }

    v12 = a1 + v16;
  }

  return sub_22BE19DC4(v12, a2, a2, v11);
}

uint64_t sub_22BE585D8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22C270124();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_22BE58608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Session.Transcript(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_22BE1AEA8(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_22BE586B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Session.Transcript(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_22BE19DC4(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22BE58788(uint64_t a1, uint64_t a2, int *a3)
{
  sub_22BE1B2D4();
  v6 = sub_22C26E1D4();
  v7 = sub_22BE187D0(v6);
  if (*(v8 + 84) == v3)
  {
    updated = v7;
    v10 = v4;
  }

  else
  {
    v11 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
    v12 = sub_22BE187D0(v11);
    if (*(v13 + 84) == v3)
    {
      updated = v12;
      v14 = a3[6];
    }

    else
    {
      if (v3 == 0x7FFFFFFF)
      {
        return sub_22BE1A5D0(*(v4 + a3[7] + 8));
      }

      v16 = type metadata accessor for Timepoint();
      v17 = sub_22BE187D0(v16);
      if (*(v18 + 84) == v3)
      {
        updated = v17;
        v14 = a3[11];
      }

      else
      {
        updated = type metadata accessor for Session.StatusUpdateEvent.Payload(0);
        v14 = a3[14];
      }
    }

    v10 = v4 + v14;
  }

  return sub_22BE1AEA8(v10, v3, updated);
}

uint64_t sub_22BE588D0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_22BE1B2D4();
  v8 = sub_22C26E1D4();
  v9 = sub_22BE187D0(v8);
  if (*(v10 + 84) == a3)
  {
    updated = v9;
    v12 = v5;
  }

  else
  {
    v13 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
    result = sub_22BE187D0(v13);
    if (*(v15 + 84) == a3)
    {
      updated = result;
      v16 = a4[6];
    }

    else
    {
      if (a3 == 0x7FFFFFFF)
      {
        *(v5 + a4[7] + 8) = (v4 - 1);
        return result;
      }

      v17 = type metadata accessor for Timepoint();
      v18 = sub_22BE187D0(v17);
      if (*(v19 + 84) == a3)
      {
        updated = v18;
        v16 = a4[11];
      }

      else
      {
        updated = type metadata accessor for Session.StatusUpdateEvent.Payload(0);
        v16 = a4[14];
      }
    }

    v12 = v5 + v16;
  }

  return sub_22BE19DC4(v12, v4, v4, updated);
}

uint64_t sub_22BE58A20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_22BE1A5D0(*(a1 + 8));
  }

  updated = type metadata accessor for Session.StatusUpdateEvent.IntermediateQueryResult.Source(0);
  v8 = a1 + *(a3 + 20);

  return sub_22BE1AEA8(v8, a2, updated);
}

uint64_t sub_22BE58A9C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    updated = type metadata accessor for Session.StatusUpdateEvent.IntermediateQueryResult.Source(0);
    v8 = v5 + *(a4 + 20);

    return sub_22BE19DC4(v8, a2, a2, updated);
  }

  return result;
}

uint64_t sub_22BE58B1C()
{
  v2 = sub_22BE1B2D4();
  v3 = type metadata accessor for ActionParameterContext(v2);

  return sub_22BE1AEA8(v1, v0, v3);
}

uint64_t sub_22BE58B5C()
{
  v2 = sub_22BE1B2D4();
  v3 = type metadata accessor for ActionParameterContext(v2);

  return sub_22BE19DC4(v1, v0, v0, v3);
}

uint64_t sub_22BE59224(char a1)
{
  if (!a1)
  {
    return 0x7972657571;
  }

  if (a1 == 1)
  {
    return 0x63696C7078457369;
  }

  return 0x72656E74726170;
}

uint64_t sub_22BE59284@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22C146514();
  *a1 = result;
  return result;
}

uint64_t sub_22BE59694()
{
  sub_22BE25FE8();
  v3 = sub_22C26ECA4();
  sub_22BE187D0(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = sub_22BE291BC();
  }

  else
  {
    v7 = sub_22BE5CE4C(&qword_27D911F60, &unk_22C2B5CD0);
    sub_22BE187D0(v7);
    if (*(v8 + 84) == v0)
    {
      sub_22BE23B20();
    }

    else
    {
      v10 = sub_22BE5CE4C(&qword_27D911C20, &qword_22C2B5060);
      sub_22BE187D0(v10);
      if (*(v11 + 84) != v0)
      {
        if (*(v1 + *(v2 + 28)) < 2u)
        {
          return 0;
        }

        sub_22C18F794();
        return (v13 + 1);
      }

      sub_22BE1C1E8();
    }

    v5 = v1 + v9;
  }

  return sub_22BE1AEA8(v5, v0, v6);
}

uint64_t sub_22BE597C8()
{
  sub_22BE367BC();
  v4 = sub_22C26ECA4();
  sub_22BE187D0(v4);
  if (*(v5 + 84) == v3)
  {
    sub_22BE238E8();
  }

  else
  {
    v6 = sub_22BE5CE4C(&qword_27D911F60, &unk_22C2B5CD0);
    sub_22BE187D0(v6);
    if (*(v7 + 84) == v3)
    {
      sub_22BE26204();
    }

    else
    {
      v8 = sub_22BE5CE4C(&qword_27D911C20, &qword_22C2B5060);
      result = sub_22BE187D0(v8);
      if (*(v10 + 84) != v3)
      {
        *(v1 + *(v2 + 28)) = v0 + 1;
        return result;
      }

      sub_22BE38994();
    }
  }

  sub_22BE38A34();

  return sub_22BE19DC4(v11, v12, v13, v14);
}

uint64_t sub_22BE598E8()
{
  sub_22BE25FE8();
  v3 = sub_22C26E684();
  sub_22BE187D0(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = sub_22BE291BC();
  }

  else
  {
    if (v0 == 0x7FFFFFFF)
    {
      return sub_22BE1A5D0(*(v1 + *(v2 + 24) + 8));
    }

    sub_22BE5CE4C(&qword_27D9120B0, &qword_22C2B5F00);
    sub_22BE22B34();
    v5 = v1 + v8;
  }

  return sub_22BE1AEA8(v5, v0, v6);
}

void sub_22BE599A4()
{
  sub_22BE367BC();
  v2 = sub_22C26E684();
  sub_22BE187D0(v2);
  if (*(v3 + 84) == v1)
  {
    sub_22BE238E8();
  }

  else
  {
    if (v1 == 0x7FFFFFFF)
    {
      sub_22C18F7C4(*(v0 + 24));
      return;
    }

    sub_22BE5CE4C(&qword_27D9120B0, &qword_22C2B5F00);
    sub_22BE272B4();
  }

  sub_22BE38A34();

  sub_22BE19DC4(v4, v5, v6, v7);
}

uint64_t sub_22BE59A90()
{
  sub_22BE1B9D8();
  if (v2)
  {
    return sub_22BE1A5D0(*(v1 + 8));
  }

  sub_22C18E6D0();
  sub_22C26E684();
  v4 = sub_22BE33728();

  return sub_22BE1AEA8(v4, v0, v5);
}

uint64_t sub_22BE59B0C()
{
  sub_22BE1B9D8();
  if (v2)
  {
    return sub_22BE1A5D0(*(v0 + 8));
  }

  v4 = v1;
  v5 = sub_22BE5CE4C(&qword_27D9120C8, &unk_22C2CC910);
  sub_22BE187D0(v5);
  if (*(v6 + 84) == v4)
  {
    sub_22BE23B20();
  }

  else
  {
    sub_22C26E684();
    sub_22BE1C1E8();
  }

  v8 = sub_22BE25438(v7);

  return sub_22BE1AEA8(v8, v9, v10);
}

void sub_22BE59BC0()
{
  sub_22BE18660();
  if (v1)
  {
    sub_22BE35FD8();
  }

  else
  {
    sub_22BE20388();
    v2 = sub_22BE5CE4C(&qword_27D9120C8, &unk_22C2CC910);
    sub_22BE187D0(v2);
    if (*(v3 + 84) == v0)
    {
      sub_22BE26204();
    }

    else
    {
      sub_22C26E684();
      sub_22BE38994();
    }

    v5 = sub_22BE3B0A4(v4);

    sub_22BE19DC4(v5, v6, v7, v8);
  }
}

uint64_t sub_22BE59C6C()
{
  sub_22BE2BC0C();
  v3 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE187D0(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = sub_22BE291BC();
  }

  else
  {
    v7 = sub_22C26E1D4();
    sub_22BE187D0(v7);
    if (*(v8 + 84) == v0)
    {
      sub_22BE23B20();
    }

    else
    {
      v10 = type metadata accessor for RequestContent.SystemPromptResolution.UserAction(0);
      sub_22BE187D0(v10);
      if (*(v11 + 84) == v0)
      {
        sub_22BE1C1E8();
      }

      else
      {
        v12 = sub_22C26E684();
        sub_22BE187D0(v12);
        if (*(v13 + 84) == v0)
        {
          sub_22BE22B34();
        }

        else
        {
          v6 = type metadata accessor for RequestContent.SystemPromptResolution.ResolutionInput(0);
          v9 = *(v2 + 32);
        }
      }
    }

    v5 = v1 + v9;
  }

  return sub_22BE1AEA8(v5, v0, v6);
}

uint64_t sub_22BE59DB8()
{
  sub_22BE29120();
  v2 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE187D0(v2);
  if (*(v3 + 84) == v1)
  {
    sub_22BE238E8();
  }

  else
  {
    v4 = sub_22C26E1D4();
    sub_22BE187D0(v4);
    if (*(v5 + 84) == v1)
    {
      sub_22BE26204();
    }

    else
    {
      v6 = type metadata accessor for RequestContent.SystemPromptResolution.UserAction(0);
      sub_22BE187D0(v6);
      if (*(v7 + 84) == v1)
      {
        sub_22BE38994();
      }

      else
      {
        v8 = sub_22C26E684();
        sub_22BE187D0(v8);
        if (*(v9 + 84) == v1)
        {
          sub_22BE272B4();
        }

        else
        {
          type metadata accessor for RequestContent.SystemPromptResolution.ResolutionInput(0);
          v10 = *(v0 + 32);
        }
      }
    }
  }

  sub_22BE38A34();

  return sub_22BE19DC4(v11, v12, v13, v14);
}

uint64_t sub_22BE59F2C()
{
  v2 = sub_22BE25FE8();
  v3 = type metadata accessor for RequestContent(v2);
  sub_22BE187D0(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = sub_22BE291BC();
  }

  else
  {
    v7 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
    sub_22BE187D0(v7);
    if (*(v8 + 84) != v0)
    {
      sub_22C18E1D4(*(v1 + 24));
      return sub_22C18F204(v10);
    }

    v5 = sub_22BE33728();
  }

  return sub_22BE1AEA8(v5, v0, v6);
}

void sub_22BE5A000()
{
  v2 = sub_22BE367BC();
  v3 = type metadata accessor for RequestContent(v2);
  sub_22BE187D0(v3);
  if (*(v4 + 84) == v1)
  {
    sub_22BE238E8();
  }

  else
  {
    v5 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
    sub_22BE187D0(v5);
    if (*(v6 + 84) != v1)
    {
      sub_22BE3858C(*(v0 + 24));
      return;
    }

    sub_22BE3CEB0();
  }

  sub_22BE38A34();

  sub_22BE19DC4(v7, v8, v9, v10);
}

uint64_t sub_22BE5A0E8()
{
  sub_22BE1B2D4();
  sub_22C26E684();
  v1 = sub_22BE291BC();

  return sub_22BE1AEA8(v1, v0, v2);
}

uint64_t sub_22BE5A124()
{
  sub_22BE1B2D4();
  sub_22C26E684();
  v0 = sub_22BE37694();

  return sub_22BE19DC4(v0, v1, v2, v3);
}

uint64_t sub_22BE5A15C()
{
  sub_22BE25FE8();
  v3 = sub_22C26E684();
  sub_22BE187D0(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = sub_22BE291BC();
LABEL_5:

    return sub_22BE1AEA8(v5, v0, v6);
  }

  v7 = type metadata accessor for Expression(0);
  sub_22BE187D0(v7);
  if (*(v8 + 84) == v0)
  {
    v5 = sub_22BE33728();
    goto LABEL_5;
  }

  if (*(v1 + *(v2 + 24)) >= 2u)
  {
    sub_22C18F794();
    v10 = v11 - 1;
  }

  else
  {
    v10 = -2;
  }

  if (v10 < 0)
  {
    v10 = -1;
  }

  return (v10 + 1);
}

uint64_t sub_22BE5A244()
{
  sub_22BE367BC();
  v4 = sub_22C26E684();
  sub_22BE187D0(v4);
  if (*(v5 + 84) == v3)
  {
    sub_22BE238E8();
  }

  else
  {
    v6 = type metadata accessor for Expression(0);
    result = sub_22BE187D0(v6);
    if (*(v8 + 84) != v3)
    {
      *(v1 + *(v2 + 24)) = v0 + 2;
      return result;
    }

    sub_22BE3CEB0();
  }

  sub_22BE38A34();

  return sub_22BE19DC4(v9, v10, v11, v12);
}

uint64_t sub_22BE5A30C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22BE17BC4();
  v6 = sub_22C26E684();
  sub_22BE187D0(v6);
  if (*(v7 + 84) != a2)
  {
    return sub_22BE1A5D0(*(v3 + *(a3 + 28)));
  }

  v8 = sub_22BE44750();

  return sub_22BE1AEA8(v8, a2, v9);
}

uint64_t sub_22BE5A3A0()
{
  sub_22BE367BC();
  v4 = sub_22C26E684();
  result = sub_22BE187D0(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = sub_22BE37694();

    return sub_22BE19DC4(v7, v8, v9, v10);
  }

  else
  {
    *(v1 + *(v2 + 28)) = (v0 - 1);
  }

  return result;
}

uint64_t sub_22BE5A428()
{
  v1 = sub_22BE25FE8();
  v2 = type metadata accessor for ToolParameterValue(v1);
  sub_22BE19448(v2);
  if (*(v3 + 84) == v0)
  {
    sub_22C272874();
    v4 = sub_22BE291BC();
  }

  else
  {
    sub_22BE5CE4C(&qword_27D909088, &unk_22C27FCA0);
    v4 = sub_22BE33728();
  }

  return sub_22BE1AEA8(v4, v0, v5);
}

uint64_t sub_22BE5A4BC()
{
  v1 = sub_22BE367BC();
  v2 = type metadata accessor for ToolParameterValue(v1);
  sub_22BE19448(v2);
  if (*(v3 + 84) == v0)
  {
    sub_22C272874();
    sub_22BE238E8();
  }

  else
  {
    sub_22BE5CE4C(&qword_27D909088, &unk_22C27FCA0);
    sub_22BE3CEB0();
  }

  sub_22BE38A34();

  return sub_22BE19DC4(v4, v5, v6, v7);
}

uint64_t sub_22BE5A550()
{
  sub_22BE2BC0C();
  v1 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  sub_22BE187D0(v1);
  if (*(v2 + 84) == v0)
  {
    v3 = sub_22BE291BC();
  }

  else
  {
    sub_22C26E684();
    v3 = sub_22BE33728();
  }

  return sub_22BE1AEA8(v3, v0, v4);
}

uint64_t sub_22BE5A5E0()
{
  sub_22BE29120();
  v1 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  sub_22BE187D0(v1);
  if (*(v2 + 84) == v0)
  {
    sub_22BE238E8();
  }

  else
  {
    sub_22C26E684();
    sub_22BE3CEB0();
  }

  sub_22BE38A34();

  return sub_22BE19DC4(v3, v4, v5, v6);
}

uint64_t sub_22BE5A6A4()
{
  sub_22BE25FE8();
  v3 = sub_22C26E684();
  sub_22BE187D0(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = sub_22BE291BC();
  }

  else
  {
    v7 = sub_22BE5CE4C(&qword_27D911F48, &unk_22C2B5CB0);
    sub_22BE187D0(v7);
    if (*(v8 + 84) == v0)
    {
      sub_22BE23B20();
    }

    else
    {
      Payload = type metadata accessor for QueryPayload(0);
      sub_22BE187D0(Payload);
      if (*(v11 + 84) != v0)
      {
        if (*(v1 + *(v2 + 28)) < 2u)
        {
          return 0;
        }

        sub_22C18F794();
        return (v13 + 1);
      }

      sub_22BE1C1E8();
    }

    v5 = v1 + v9;
  }

  return sub_22BE1AEA8(v5, v0, v6);
}

uint64_t sub_22BE5A7CC()
{
  sub_22BE367BC();
  v4 = sub_22C26E684();
  sub_22BE187D0(v4);
  if (*(v5 + 84) == v3)
  {
    sub_22BE238E8();
  }

  else
  {
    v6 = sub_22BE5CE4C(&qword_27D911F48, &unk_22C2B5CB0);
    sub_22BE187D0(v6);
    if (*(v7 + 84) == v3)
    {
      sub_22BE26204();
    }

    else
    {
      Payload = type metadata accessor for QueryPayload(0);
      result = sub_22BE187D0(Payload);
      if (*(v10 + 84) != v3)
      {
        *(v1 + *(v2 + 28)) = v0 + 1;
        return result;
      }

      sub_22BE38994();
    }
  }

  sub_22BE38A34();

  return sub_22BE19DC4(v11, v12, v13, v14);
}

uint64_t sub_22BE5A974()
{
  sub_22BE1B9D8();
  if (v2)
  {
    return sub_22BE1A5D0(*v1);
  }

  sub_22C18E6D0();
  v4 = sub_22C272874();
  sub_22BE187D0(v4);
  if (*(v5 + 84) == v0)
  {
    sub_22BE23B20();
  }

  else
  {
    sub_22BE5CE4C(&qword_27D908FF8, &qword_22C27FC50);
    sub_22BE1C1E8();
  }

  v7 = sub_22BE25438(v6);

  return sub_22BE1AEA8(v7, v8, v9);
}

void sub_22BE5AA20()
{
  sub_22BE18660();
  if (v3)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    sub_22BE20388();
    v4 = sub_22C272874();
    sub_22BE187D0(v4);
    if (*(v5 + 84) == v2)
    {
      sub_22BE26204();
    }

    else
    {
      sub_22BE5CE4C(&qword_27D908FF8, &qword_22C27FC50);
      sub_22BE38994();
    }

    v7 = sub_22BE3B0A4(v6);

    sub_22BE19DC4(v7, v8, v9, v10);
  }
}

uint64_t sub_22BE5AB28()
{
  sub_22BE25FE8();
  v1 = sub_22C26F894();
  sub_22BE187D0(v1);
  if (*(v2 + 84) == v0)
  {
    v3 = sub_22BE291BC();
  }

  else
  {
    sub_22BE5CE4C(&qword_27D911DB8, &unk_22C2B5870);
    v3 = sub_22BE33728();
  }

  return sub_22BE1AEA8(v3, v0, v4);
}

uint64_t sub_22BE5ABB4()
{
  sub_22BE367BC();
  v1 = sub_22C26F894();
  sub_22BE187D0(v1);
  if (*(v2 + 84) == v0)
  {
    sub_22BE238E8();
  }

  else
  {
    sub_22BE5CE4C(&qword_27D911DB8, &unk_22C2B5870);
    sub_22BE3CEB0();
  }

  sub_22BE38A34();

  return sub_22BE19DC4(v3, v4, v5, v6);
}

uint64_t sub_22BE5AC40()
{
  sub_22BE1B9D8();
  if (v2)
  {
    return sub_22BE1A5D0(*v1);
  }

  sub_22C18E6D0();
  v4 = sub_22C26E684();
  sub_22BE187D0(v4);
  if (*(v5 + 84) == v0)
  {
    sub_22BE23B20();
  }

  else
  {
    sub_22C26E1D4();
    sub_22BE1C1E8();
  }

  v7 = sub_22BE25438(v6);

  return sub_22BE1AEA8(v7, v8, v9);
}

void sub_22BE5ACE0()
{
  sub_22BE18660();
  if (v3)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    sub_22BE20388();
    v4 = sub_22C26E684();
    sub_22BE187D0(v4);
    if (*(v5 + 84) == v2)
    {
      sub_22BE26204();
    }

    else
    {
      sub_22C26E1D4();
      sub_22BE38994();
    }

    v7 = sub_22BE3B0A4(v6);

    sub_22BE19DC4(v7, v8, v9, v10);
  }
}

uint64_t sub_22BE5AD84()
{
  sub_22BE25FE8();
  v3 = sub_22C272874();
  sub_22BE187D0(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = sub_22BE291BC();
  }

  else
  {
    if (v0 == 248)
    {
      v7 = *(v1 + *(v2 + 20));
      if (v7 >= 8)
      {
        return v7 - 7;
      }

      else
      {
        return 0;
      }
    }

    v9 = sub_22C26E684();
    sub_22BE187D0(v9);
    if (*(v10 + 84) == v0)
    {
      sub_22BE22B34();
    }

    else
    {
      v6 = sub_22BE5CE4C(&qword_27D908FF8, &qword_22C27FC50);
      v11 = *(v2 + 32);
    }

    v5 = v1 + v11;
  }

  return sub_22BE1AEA8(v5, v0, v6);
}

uint64_t sub_22BE5AE80()
{
  sub_22BE367BC();
  v4 = sub_22C272874();
  result = sub_22BE187D0(v4);
  if (*(v6 + 84) == v3)
  {
    sub_22BE238E8();
  }

  else
  {
    if (v3 == 248)
    {
      *(v1 + *(v2 + 20)) = v0 + 7;
      return result;
    }

    v7 = sub_22C26E684();
    sub_22BE187D0(v7);
    if (*(v8 + 84) == v3)
    {
      sub_22BE272B4();
    }

    else
    {
      sub_22BE5CE4C(&qword_27D908FF8, &qword_22C27FC50);
      v9 = *(v2 + 32);
    }
  }

  sub_22BE38A34();

  return sub_22BE19DC4(v10, v11, v12, v13);
}

uint64_t sub_22BE5B07C()
{
  sub_22BE25FE8();
  v3 = sub_22C26E684();
  sub_22BE187D0(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = sub_22BE291BC();
  }

  else
  {
    v7 = sub_22C26F894();
    sub_22BE187D0(v7);
    if (*(v8 + 84) != v0)
    {
      return sub_22BE1A5D0(*(v1 + *(v2 + 24)));
    }

    v5 = sub_22BE33728();
  }

  return sub_22BE1AEA8(v5, v0, v6);
}

uint64_t sub_22BE5B144()
{
  sub_22BE367BC();
  v4 = sub_22C26E684();
  sub_22BE187D0(v4);
  if (*(v5 + 84) == v3)
  {
    sub_22BE238E8();
  }

  else
  {
    v6 = sub_22C26F894();
    result = sub_22BE187D0(v6);
    if (*(v8 + 84) != v3)
    {
      *(v1 + *(v2 + 24)) = (v0 - 1);
      return result;
    }

    sub_22BE3CEB0();
  }

  sub_22BE38A34();

  return sub_22BE19DC4(v9, v10, v11, v12);
}

uint64_t sub_22BE5B264()
{
  sub_22BE25FE8();
  v2 = sub_22C272874();
  sub_22BE187D0(v2);
  if (*(v3 + 84) == v0)
  {
    v4 = sub_22BE291BC();
  }

  else
  {
    v6 = sub_22C2728A4();
    sub_22BE187D0(v6);
    if (*(v7 + 84) == v0)
    {
      sub_22BE23B20();
    }

    else
    {
      sub_22C26E684();
      sub_22BE1C1E8();
    }

    v4 = v1 + v8;
  }

  return sub_22BE1AEA8(v4, v0, v5);
}

uint64_t sub_22BE5B324()
{
  sub_22BE367BC();
  v1 = sub_22C272874();
  sub_22BE187D0(v1);
  if (*(v2 + 84) == v0)
  {
    sub_22BE238E8();
  }

  else
  {
    v3 = sub_22C2728A4();
    sub_22BE187D0(v3);
    if (*(v4 + 84) == v0)
    {
      sub_22BE26204();
    }

    else
    {
      sub_22C26E684();
      sub_22BE38994();
    }
  }

  sub_22BE38A34();

  return sub_22BE19DC4(v5, v6, v7, v8);
}

uint64_t sub_22BE5B43C()
{
  sub_22BE1B9D8();
  if (v2)
  {
    return sub_22BE1A5D0(*v0);
  }

  v4 = v1;
  sub_22BE5CE4C(&qword_27D912018, &unk_22C2B7810);
  v5 = sub_22BE33728();

  return sub_22BE1AEA8(v5, v4, v6);
}

void sub_22BE5B4B4()
{
  sub_22BE18660();
  if (v2)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    sub_22BE5CE4C(&qword_27D912018, &unk_22C2B7810);
    sub_22BE3CEB0();
    sub_22BE38A34();

    sub_22BE19DC4(v3, v4, v5, v6);
  }
}

uint64_t sub_22BE5B528()
{
  sub_22BE1B9D8();
  if (v3)
  {
    return sub_22BE1A5D0(*(v0 + 8));
  }

  v5 = v2;
  v6 = v1;
  v7 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE187D0(v7);
  if (*(v8 + 84) == v6)
  {
    sub_22BE23B20();
  }

  else
  {
    v10 = sub_22C26E684();
    sub_22BE187D0(v10);
    if (*(v11 + 84) == v6)
    {
      sub_22BE22B34();
    }

    else
    {
      sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
      v9 = *(v5 + 32);
    }
  }

  v12 = sub_22BE25438(v9);

  return sub_22BE1AEA8(v12, v13, v14);
}

void sub_22BE5B628()
{
  sub_22BE18660();
  if (v2)
  {
    sub_22BE35FD8();
  }

  else
  {
    sub_22BE20388();
    v3 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
    sub_22BE187D0(v3);
    if (*(v4 + 84) == v1)
    {
      sub_22BE26204();
    }

    else
    {
      v6 = sub_22C26E684();
      sub_22BE187D0(v6);
      if (*(v7 + 84) == v1)
      {
        sub_22BE272B4();
      }

      else
      {
        sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
        v5 = *(v0 + 32);
      }
    }

    v8 = sub_22BE3B0A4(v5);

    sub_22BE19DC4(v8, v9, v10, v11);
  }
}

uint64_t sub_22BE5B720()
{
  sub_22BE25FE8();
  v3 = sub_22C26E1D4();
  sub_22BE187D0(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = sub_22BE291BC();
  }

  else
  {
    if (v0 == 254)
    {
      v7 = *(v1 + *(v2 + 20));
      if (v7 >= 2)
      {
        return v7 - 1;
      }

      else
      {
        return 0;
      }
    }

    v9 = sub_22C26E684();
    sub_22BE187D0(v9);
    if (*(v10 + 84) == v0)
    {
      sub_22BE1C1E8();
    }

    else
    {
      sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
      sub_22BE22B34();
    }

    v5 = v1 + v11;
  }

  return sub_22BE1AEA8(v5, v0, v6);
}

uint64_t sub_22BE5B818()
{
  sub_22BE367BC();
  v4 = sub_22C26E1D4();
  result = sub_22BE187D0(v4);
  if (*(v6 + 84) == v3)
  {
    sub_22BE238E8();
  }

  else
  {
    if (v3 == 254)
    {
      *(v1 + *(v2 + 20)) = v0 + 1;
      return result;
    }

    v7 = sub_22C26E684();
    sub_22BE187D0(v7);
    if (*(v8 + 84) == v3)
    {
      sub_22BE38994();
    }

    else
    {
      sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
      sub_22BE272B4();
    }
  }

  sub_22BE38A34();

  return sub_22BE19DC4(v9, v10, v11, v12);
}

uint64_t sub_22BE5B908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22BE17BC4();
  v7 = type metadata accessor for ExecutionPreconditionEvaluatorRequest.ActionRequest(v6);
  sub_22BE187D0(v7);
  if (*(v8 + 84) != a2)
  {
    return sub_22BE1A5D0(*(v3 + *(a3 + 20)));
  }

  v9 = sub_22BE44750();

  return sub_22BE1AEA8(v9, a2, v10);
}

uint64_t sub_22BE5BA0C()
{
  sub_22BE1B9D8();
  if (v2)
  {
    return sub_22BE1A5D0(*(v1 + 8));
  }

  v4 = sub_22C18E6D0();
  type metadata accessor for AgentPrimitiveAction.PrimitiveAction(v4);
  v5 = sub_22BE33728();

  return sub_22BE1AEA8(v5, v0, v6);
}

uint64_t sub_22BE5BA88()
{
  sub_22BE1B9D8();
  if (v3)
  {
    return sub_22BE1A5D0(*(v1 + 8));
  }

  v5 = sub_22C18E6D0();
  type metadata accessor for AgentRequest(v5);
  v6 = *(v2 + 20);
  v7 = type metadata accessor for Request(0);

  return sub_22BE1AEA8(v1 + v6, v0, v7);
}

void sub_22BE5BAFC()
{
  sub_22BE18660();
  if (v1)
  {
    sub_22BE35FD8();
  }

  else
  {
    v2 = v0;
    type metadata accessor for AgentRequest(0);
    v3 = *(v2 + 20);
    type metadata accessor for Request(0);
    sub_22BE38A34();

    sub_22BE19DC4(v4, v5, v6, v7);
  }
}

uint64_t sub_22BE5BB70()
{
  v1 = sub_22BE1B2D4();
  type metadata accessor for Request(v1);
  v2 = sub_22BE291BC();

  return sub_22BE1AEA8(v2, v0, v3);
}

uint64_t sub_22BE5BBAC()
{
  v0 = sub_22BE1B2D4();
  type metadata accessor for Request(v0);
  v1 = sub_22BE37694();

  return sub_22BE19DC4(v1, v2, v3, v4);
}

uint64_t sub_22BE5BDA4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_22BE5C55C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C272224();
  v5 = sub_22BE1AEA8(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22BE5C5A4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_22C272224();

  return sub_22BE19DC4(a1, v5, a3, v6);
}

uint64_t sub_22BE5C628()
{
  v1 = *(v0 + 16);
  sub_22BE7431C(&qword_27D9078B0, &qword_22C275BB0);
  v2 = sub_22C273604();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 40) & ~v4;
  v6 = *(v3 + 64);
  v7 = *(v0 + 32);

  (*(v3 + 8))(v0 + v5, v2);

  return MEMORY[0x2821FE8E8](v0, v5 + v6, v4 | 7);
}

uint64_t sub_22BE5C7B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE5CE4C(&qword_27D915DC0, &qword_22C2D1E80);

  return sub_22BE1AEA8(a1, a2, v4);
}

uint64_t sub_22BE5C808(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE5CE4C(&qword_27D915DC0, &qword_22C2D1E80);

  return sub_22BE19DC4(a1, a2, a2, v4);
}

uint64_t sub_22BE5C950()
{
  v1 = *(*(v0 + 24) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_22BE5C9D0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 48) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v0 + v6, AssociatedTypeWitness);

  return MEMORY[0x2821FE8E8](v0, v6 + v7, v5 | 7);
}

uint64_t sub_22BE5CAB4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t storeEnumTagSinglePayload for Candidate.PromptStatus(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_22BE5CBE0(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

uint64_t sub_22BE5CC10@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22BE5CAEC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_22BE5CC5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BE7A870(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t default argument 1 of Toolbox.init(toolDatabase:schemaProvider:clientActions:)@<X0>(uint64_t *a1@<X8>)
{
  if (qword_281072040 != -1)
  {
    swift_once();
  }

  v2 = sub_22C271C14();
  sub_22BE199F4(v2, qword_28108A218);
  v3 = type metadata accessor for SharedAssistantSchemaProvider();
  sub_22BE1991C(qword_281076450, type metadata accessor for SharedAssistantSchemaProvider);
  result = sub_22C271BD4();
  a1[3] = v3;
  a1[4] = &protocol witness table for SharedAssistantSchemaProvider;
  *a1 = result;
  return result;
}

uint64_t default argument 1 of Toolbox.subscript(_:_:_:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_22BE5CE4C(&unk_27D906F38, qword_22C274D30);

  return sub_22BE19DC4(a1, 1, 1, v2);
}

uint64_t sub_22BE5CE4C(uint64_t *a1, uint64_t *a2)
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

uint64_t _s30IntelligenceFlowPlannerSupport7ToolboxVy7ToolKit0F10DefinitionVAA06GlobalF10IdentifierV_10Foundation6LocaleVtcipfA0__0@<X0>(uint64_t a1@<X8>)
{
  if (qword_27D906378 != -1)
  {
    swift_once();
  }

  v2 = sub_22C26E244();
  v3 = sub_22BE199F4(v2, qword_27D90B298);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_22BE5CF7C()
{
  result = qword_28107C8E0[0];
  if (!qword_28107C8E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28107C8E0);
  }

  return result;
}

uint64_t sub_22BE5CFE8()
{
  type metadata accessor for Candidate(0);
  sub_22BE5CF7C();

  return sub_22C272E84();
}

uint64_t default argument 4 of ActionResolverRequest.init(statementId:toolId:resolvedParameters:unresolvedParameterSets:userSpecifiedParameters:isConfirmed:isAuthenticated:)()
{
  type metadata accessor for AST.FlatValue(0);

  return sub_22C272E84();
}

__n128 sub_22BE5D0B0(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_22BE5D0BC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22BE5D0DC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_22BE5D128(uint64_t a1, int a2)
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

uint64_t sub_22BE5D148(uint64_t result, int a2, int a3)
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

uint64_t sub_22BE5D1AC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22BE5D5C4();
  *a1 = result;
  return result;
}

uint64_t sub_22BE5D1D4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_22BE63390();
}

uint64_t sub_22BE5D1E0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_22C272FF4();

  *a2 = v5;
  return result;
}

uint64_t sub_22BE5D228@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22BE5D254(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_22BE5D258(uint64_t a1)
{
  v2 = sub_22BE1991C(&qword_28106DB38, type metadata accessor for FileAttributeKey);
  v3 = sub_22BE1991C(&unk_27D906FE0, type metadata accessor for FileAttributeKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_22BE5D314()
{
  sub_22C273024();
  sub_22C272F44();
}

void sub_22BE5D3A4(uint64_t a1, unint64_t *a2)
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

uint64_t sub_22BE5D4CC(uint64_t a1, id *a2)
{
  result = sub_22C273004();
  *a2 = 0;
  return result;
}

uint64_t sub_22BE5D544(uint64_t a1, id *a2)
{
  v3 = sub_22C273014();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_22BE5D5C4()
{
  sub_22C273024();
  v0 = sub_22C272FF4();

  return v0;
}

uint64_t sub_22BE5D5FC()
{
  v0 = sub_22C273024();
  v1 = MEMORY[0x2318AB980](v0);

  return v1;
}

void TypedValue.EntityValue.init<A>(attemptingReflectionOf:bundleIdentifier:)()
{
  sub_22BE19460();
  v1 = v0;
  v132 = v2;
  v131 = v3;
  v5 = v4;
  v128 = v6;
  v7 = sub_22C2720A4();
  v8 = sub_22BE179D8(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE179EC();
  v15 = v14 - v13;
  v120 = sub_22C272874();
  v16 = sub_22BE179D8(v120);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22BE179EC();
  sub_22BE190A8(v22 - v21);
  v23 = sub_22BE5CE4C(&qword_27D907400, &unk_22C274F90);
  v24 = sub_22BE19448(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v115 = &v111 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  sub_22BE190A8(&v111 - v29);
  v30 = sub_22BE5CE4C(&qword_27D907170, &unk_22C275980);
  sub_22BE19448(v30);
  v32 = *(v31 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v33);
  sub_22BE190A8(&v111 - v34);
  v125 = sub_22C272984();
  v35 = sub_22BE179D8(v125);
  v123 = v36;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v35);
  sub_22BE179EC();
  sub_22BE190A8(v40 - v39);
  v127 = sub_22C2741E4();
  v41 = sub_22BE179D8(v127);
  v126 = v42;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v41);
  sub_22BE179EC();
  v47 = v46 - v45;
  *(&v148 + 1) = v1;
  v48 = sub_22BE62524(&v147);
  v121 = *(v1 - 8);
  v49 = *(v121 + 16);
  v129 = v5;
  v130 = v1;
  v49(v48, v5, v1);
  sub_22C2741B4();
  v122 = v47;
  sub_22C2741D4();
  v50 = sub_22C273C04();

  v136 = (v10 + 8);
  v118 = (v18 + 32);
  v116 = v18;
  v113 = v18 + 40;
  v133 = MEMORY[0x277D84F98];
  *&v51 = 136315138;
  v134 = v51;
  v135 = v50;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        sub_22C273D34();
        if (!v149)
        {

          v102 = swift_allocObject();
          v103 = v132;
          v102[2] = v131;
          v102[3] = v103;
          v104 = v122;
          *&v147 = sub_22C2741C4();
          sub_22BE5CE4C(&qword_27D907178, &qword_22C274FA0);
          v102[4] = sub_22C273074();
          v102[5] = v105;
          v106 = v124;
          *v124 = v102;
          (*(v123 + 104))(v106, *MEMORY[0x277D72D28], v125);
          sub_22C272B84();
          v107 = sub_22BE38960();
          sub_22BE19DC4(v107, v108, v109, v110);
          sub_22C272734();
          (*(v121 + 8))(v129, v130);
          (*(v126 + 8))(v104, v127);
          sub_22BE1AABC();
          return;
        }

        v145 = v147;
        sub_22BE62584(&v148, &v146);
        sub_22BE255EC();
        v52 = v143;
        if (v143)
        {
          break;
        }

        sub_22BE26B64(v144);
        sub_22C271AC4();
        sub_22BE255EC();
        v53 = sub_22C272084();
        v54 = sub_22C2737A4();
        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          *&v137[0] = v56;
          *v55 = v134;
          sub_22BE22814();

          v57 = sub_22C273074();
          v58 = v7;
          v60 = v59;
          sub_22BE33928(&v142, &qword_27D907180, &qword_22C274FA8);
          v61 = sub_22BE61C88(v57, v60, v137);
          v7 = v58;

          *(v55 + 4) = v61;
          _os_log_impl(&dword_22BE15000, v53, v54, "TypedValue+Reflection: Ignoring unexpected child without label: %s", v55, 0xCu);
          sub_22BE26B64(v56);
          MEMORY[0x2318AD180](v56, -1, -1);
          MEMORY[0x2318AD180](v55, -1, -1);
        }

        else
        {

          sub_22BE33928(&v142, &qword_27D907180, &qword_22C274FA8);
        }

        (*v136)(v15, v7);
        sub_22BE38250();
      }

      v62 = v142;
      sub_22BE26B64(v144);
      sub_22BE255EC();

      sub_22BE5CE4C(&qword_27D907188, &qword_22C274FB0);
      if (swift_dynamicCast())
      {
        break;
      }

      sub_22BE38250();

      v138 = 0;
      memset(v137, 0, sizeof(v137));
      sub_22BE33928(v137, &qword_27D907190, &qword_22C274FB8);
    }

    sub_22BE49224(v137, v139);
    v142 = v62;
    v143 = v52;
    *&v137[0] = 95;
    *(&v137[0] + 1) = 0xE100000000000000;
    sub_22BE62594();
    sub_22BE625E8();
    v63 = sub_22C272F74();
    v112 = v7;
    if (v63)
    {
      v64 = sub_22BE5E230(1uLL, v62, v52);
      v114 = MEMORY[0x2318AB7C0](v64);
      v52 = v65;
    }

    else
    {
      v114 = v62;
    }

    v66 = v140;
    v67 = v141;
    sub_22BE1BD3C(v139, v140);
    v68 = *(v67 + 16);
    v144[1] = swift_getAssociatedTypeWitness();
    sub_22BE62524(&v142);
    v68(v66, v67);
    v69 = v119;
    sub_22BE5E304(&v142, v131, v132, v119);
    sub_22BE26B64(&v142);
    v70 = v120;
    if (sub_22BE1AEA8(v69, 1, v120) != 1)
    {
      break;
    }

    sub_22BE33928(v69, &qword_27D907400, &unk_22C274F90);
    sub_22BE18BF0();
    v71 = sub_22BE1AAD4();
    v72 = v133;
    v75 = sub_22BE2F06C(v71, v73, v74);
    v77 = v76;

    v7 = v112;
    if (v77)
    {
      swift_isUniquelyReferenced_nonNull_native();
      v142 = v72;
      v78 = *(v72 + 24);
      sub_22BE5CE4C(&qword_27D9071A8, &qword_22C274FC0);
      v70 = v120;
      sub_22C273C44();
      v79 = v142;
      v80 = *(v142[6] + 16 * v75 + 8);

      v81 = v115;
      (*(v116 + 32))(v115, *(v79 + 56) + *(v116 + 72) * v75, v70);
      v133 = v79;
      sub_22C273C64();
      sub_22BE38250();
      v82 = 0;
    }

    else
    {
      sub_22BE38250();
      v82 = 1;
      v81 = v115;
    }

    sub_22BE19DC4(v81, v82, 1, v70);
    sub_22BE33928(v81, &qword_27D907400, &unk_22C274F90);
LABEL_27:
    sub_22BE26B64(v139);
  }

  v111 = *v118;
  v111(v117, v69, v70);
  v83 = v133;
  swift_isUniquelyReferenced_nonNull_native();
  v142 = v83;
  sub_22BE18BF0();
  v84 = sub_22BE1AAD4();
  v87 = sub_22BE2F06C(v84, v85, v86);
  if (!__OFADD__(*(v83 + 16), (v88 & 1) == 0))
  {
    v89 = v87;
    v90 = v88;
    sub_22BE5CE4C(&qword_27D9071A8, &qword_22C274FC0);
    if (sub_22C273C44())
    {
      sub_22BE18BF0();
      v91 = sub_22BE1AAD4();
      v94 = sub_22BE2F06C(v91, v92, v93);
      v96 = v120;
      if ((v90 & 1) != (v95 & 1))
      {
        goto LABEL_31;
      }

      v89 = v94;
      if ((v90 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v96 = v120;
      if ((v90 & 1) == 0)
      {
LABEL_20:
        v97 = v142;
        v142[(v89 >> 6) + 8] |= 1 << v89;
        v98 = (v97[6] + 16 * v89);
        *v98 = v114;
        v98[1] = v52;
        v111(v97[7] + *(v116 + 72) * v89, v117, v96);
        sub_22BE38250();
        v99 = v97[2];
        v100 = __OFADD__(v99, 1);
        v101 = v99 + 1;
        if (v100)
        {
          goto LABEL_30;
        }

        v133 = v97;
        v97[2] = v101;
        goto LABEL_26;
      }
    }

    v133 = v142;
    (*(v116 + 40))(v142[7] + *(v116 + 72) * v89, v117, v96);
    sub_22BE38250();
LABEL_26:
    v7 = v112;
    goto LABEL_27;
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  sub_22C2740B4();
  __break(1u);
}

unint64_t sub_22BE5E230(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
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
    result = sub_22C2731A4();
    if (v6)
    {
      result = v5;
    }

    if (4 * v3 >= result >> 14)
    {
      v7 = sub_22C2732E4();

      return v7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22BE5E304@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v166 = a3;
  v167 = a2;
  v6 = sub_22BE5CE4C(&qword_27D907170, &unk_22C275980);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v157 = &v149 - v8;
  v159 = sub_22C2720A4();
  v158 = *(v159 - 1);
  v9 = *(v158 + 64);
  MEMORY[0x28223BE20](v159);
  v153 = &v149 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v156 = &v149 - v12;
  v13 = sub_22BE5CE4C(&qword_27D907400, &unk_22C274F90);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v168 = &v149 - v15;
  v16 = sub_22C272874();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v170 = &v149 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22BE5CE4C(&qword_27D907258, &qword_22C2750C0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = (&v149 - v22);
  v163 = sub_22C272984();
  v162 = *(v163 - 8);
  v24 = *(v162 + 64);
  MEMORY[0x28223BE20](v163);
  v155 = (&v149 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v26);
  v161 = &v149 - v27;
  MEMORY[0x28223BE20](v28);
  v160 = &v149 - v29;
  v30 = sub_22C2741E4();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  v34 = &v149 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v175 + 1) = MEMORY[0x277D84F70] + 8;
  *&v174 = swift_allocObject();
  sub_22BE635C4(a1, v174 + 16);
  sub_22C2741B4();
  *&v174 = sub_22C2741C4();
  sub_22BE5CE4C(&qword_27D907178, &qword_22C274FA0);
  v154 = sub_22C273074();
  v36 = v35;
  sub_22BE635C4(a1, &v174);
  if (swift_dynamicCast())
  {
    (*(v31 + 8))(v34, v30);

    v37 = v171;
    v38 = sub_22C272804();
    v39 = swift_allocBox();
    *v40 = v37;
    (*(*(v38 - 8) + 104))(v40, *MEMORY[0x277D72988], v38);
    *a4 = v39;
    (*(v17 + 104))(a4, *MEMORY[0x277D72A58], v16);
    v41 = a4;
    v42 = 0;
    v43 = v16;
    return sub_22BE19DC4(v41, v42, 1, v43);
  }

  v169 = v17;
  v165 = v34;
  v150 = v30;
  v151 = v31;
  v164 = v16;
  v152 = a4;
  sub_22BE635C4(a1, &v174);
  if (swift_dynamicCast())
  {
    (*(v151 + 8))(v165, v150);

    v44 = v171;
    v45 = sub_22C272804();
    v46 = swift_allocBox();
    *v47 = v44;
    (*(*(v45 - 8) + 104))(v47, *MEMORY[0x277D729B8], v45);
    v48 = v152;
    *v152 = v46;
    v49 = v164;
    (*(v169 + 104))(v48, *MEMORY[0x277D72A58], v164);
    v41 = v48;
    v42 = 0;
    v43 = v49;
    return sub_22BE19DC4(v41, v42, 1, v43);
  }

  sub_22BE635C4(a1, &v174);
  v50 = swift_dynamicCast();
  v51 = v164;
  v52 = v165;
  v53 = v169;
  if (v50)
  {
    (*(v151 + 8))(v165, v150);

    v54 = v171;
    v55 = sub_22C272804();
    v56 = swift_allocBox();
    v58 = v57;
    *v57 = v54;
    v59 = MEMORY[0x277D72978];
LABEL_9:
    (*(*(v55 - 8) + 104))(v58, *v59, v55);
    v62 = v152;
    *v152 = v56;
    (*(v53 + 104))(v62, *MEMORY[0x277D72A58], v51);
    v41 = v62;
    v42 = 0;
    v43 = v51;
    return sub_22BE19DC4(v41, v42, 1, v43);
  }

  sub_22BE635C4(a1, &v174);
  if (swift_dynamicCast())
  {
    (*(v151 + 8))(v52, v150);

    v60 = v171;
    v55 = sub_22C272804();
    v56 = swift_allocBox();
    v58 = v61;
    *v61 = v60;
    v59 = MEMORY[0x277D729A8];
    goto LABEL_9;
  }

  sub_22BE635C4(a1, &v178);
  sub_22BE5CE4C(&qword_27D907260, &qword_22C2750C8);
  if (!swift_dynamicCast())
  {
    *&v173 = 0;
    v171 = 0u;
    v172 = 0u;
    sub_22BE33928(&v171, &qword_27D907268, &qword_22C2750D0);
    sub_22BE635C4(a1, &v171);
    sub_22BE5CE4C(&qword_27D907270, &qword_22C2750D8);
    v77 = swift_dynamicCast();
    v78 = v166;
    if (v77)
    {

      sub_22BE49224(&v174, &v178);
      v79 = v180;
      sub_22BE1BD3C(&v178, v179);
      sub_22BE5FEF4(v167, v78, v79, v23);
      v80 = v163;
      if (sub_22BE1AEA8(v23, 1, v163) == 1)
      {
        sub_22BE33928(v23, &qword_27D907258, &qword_22C2750C0);
        v81 = v156;
        sub_22C271AC4();
        sub_22BE635C4(a1, &v174);
        v82 = sub_22C272084();
        v83 = sub_22C2737A4();
        if (os_log_type_enabled(v82, v83))
        {
          v84 = swift_slowAlloc();
          v85 = swift_slowAlloc();
          v177 = v85;
          *v84 = 136315138;
          sub_22BE635C4(&v174, &v171);
          v86 = sub_22C273074();
          v88 = v87;
          sub_22BE26B64(&v174);
          v89 = sub_22BE61C88(v86, v88, &v177);

          *(v84 + 4) = v89;
          _os_log_impl(&dword_22BE15000, v82, v83, "TypedValue+Reflection: Unsupported collection element type: %s", v84, 0xCu);
          sub_22BE26B64(v85);
          MEMORY[0x2318AD180](v85, -1, -1);
          MEMORY[0x2318AD180](v84, -1, -1);
        }

        else
        {

          sub_22BE26B64(&v174);
        }

        (*(v158 + 8))(v81, v159);
        (*(v151 + 8))(v165, v150);
        v134 = v152;
        v135 = 1;
        v136 = v164;
      }

      else
      {
        v105 = v78;
        v106 = v162;
        v107 = v160;
        (*(v162 + 32))(v160, v23, v80);
        (*(v106 + 16))(v161, v107, v80);
        v158 = sub_22C2741D4();
        sub_22C273C04();
        v159 = (v53 + 32);
        v108 = MEMORY[0x277D84F90];
        v109 = &unk_27D907180;
        v110 = &unk_22C274FA8;
        v111 = v167;
        v112 = v168;
        while (1)
        {
          sub_22C273D34();
          if (!*(&v176 + 1))
          {
            break;
          }

          v171 = v174;
          v172 = v175;
          v173 = v176;
          sub_22BE5E304(&v172, v111, v105);
          sub_22BE33928(&v171, v109, v110);
          if (sub_22BE1AEA8(v112, 1, v51) == 1)
          {
            sub_22BE33928(v112, &qword_27D907400, &unk_22C274F90);
          }

          else
          {
            v113 = v110;
            v114 = v109;
            v115 = v105;
            v116 = *v159;
            (*v159)(v170, v112, v51);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_22BE664D8(0, *(v108 + 16) + 1, 1, v108);
              v108 = v119;
            }

            v118 = *(v108 + 16);
            v117 = *(v108 + 24);
            if (v118 >= v117 >> 1)
            {
              sub_22BE664D8(v117 > 1, v118 + 1, 1, v108);
              v108 = v120;
            }

            *(v108 + 16) = v118 + 1;
            v116((v108 + ((*(v169 + 80) + 32) & ~*(v169 + 80)) + *(v169 + 72) * v118), v170, v51);
            v112 = v168;
            v105 = v115;
            v109 = v114;
            v110 = v113;
          }
        }

        sub_22C2726B4();
        v132 = swift_allocBox();

        sub_22C272684();
        (*(v162 + 8))(v160, v163);
        (*(v151 + 8))(v165, v150);
        v133 = v152;
        *v152 = v132;
        (*(v169 + 104))(v133, *MEMORY[0x277D729E0], v51);
        v134 = v133;
        v135 = 0;
        v136 = v51;
      }

      sub_22BE19DC4(v134, v135, 1, v136);
      v131 = &v178;
      return sub_22BE26B64(v131);
    }

    *&v176 = 0;
    v174 = 0u;
    v175 = 0u;
    sub_22BE33928(&v174, &qword_27D907278, &qword_22C2750E0);
    sub_22BE635C4(a1, &v178);
    sub_22BE5CE4C(&qword_27D907280, &qword_22C2750E8);
    if (swift_dynamicCast())
    {
      sub_22BE49224(&v171, &v174);
      sub_22C2726D4();
      v170 = swift_allocBox();
      v168 = v91;
      v92 = swift_allocObject();
      v92[2] = v167;
      v92[3] = v78;
      v92[4] = v154;
      v92[5] = v36;
      v93 = v155;
      *v155 = v92;
      (*(v162 + 104))(v93, *MEMORY[0x277D72D28], v163);
      v94 = v176;
      sub_22BE1BD3C(&v174, *(&v175 + 1));
      v95 = *(v94 + 24);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v97 = v51;
      v98 = *(AssociatedTypeWitness - 8);
      v99 = *(v98 + 64);
      MEMORY[0x28223BE20](AssociatedTypeWitness);
      v101 = &v149 - v100;

      sub_22C2733C4();
      v102 = *(swift_getAssociatedConformanceWitness() + 8);
      sub_22C273FD4();
      (*(v98 + 8))(v101, AssociatedTypeWitness);
      v103 = sub_22C272B84();
      sub_22BE19DC4(v157, 1, 1, v103);
      sub_22C2726C4();
      (*(v151 + 8))(v165, v150);
      v104 = v152;
      *v152 = v170;
      (*(v169 + 104))(v104, *MEMORY[0x277D729E8], v97);
      v74 = v104;
      v75 = 0;
      v76 = v97;
    }

    else
    {

      *&v173 = 0;
      v171 = 0u;
      v172 = 0u;
      sub_22BE33928(&v171, &qword_27D907288, &qword_22C2750F0);
      sub_22BE635C4(a1, &v178);
      sub_22BE5CE4C(&qword_27D907290, &qword_22C2750F8);
      if (!swift_dynamicCast())
      {
        *&v173 = 0;
        v171 = 0u;
        v172 = 0u;
        sub_22BE33928(&v171, &qword_27D907298, &unk_22C275100);
        v137 = v153;
        sub_22C271AC4();
        sub_22BE635C4(a1, &v174);
        v138 = sub_22C272084();
        v139 = sub_22C2737C4();
        v140 = os_log_type_enabled(v138, v139);
        v141 = v151;
        v142 = v150;
        if (v140)
        {
          v143 = swift_slowAlloc();
          v144 = swift_slowAlloc();
          *&v178 = v144;
          *v143 = 136315138;
          sub_22BE635C4(&v174, &v171);
          v145 = sub_22C273074();
          v147 = v146;
          sub_22BE26B64(&v174);
          v148 = sub_22BE61C88(v145, v147, &v178);

          *(v143 + 4) = v148;
          _os_log_impl(&dword_22BE15000, v138, v139, "TypedValue+Reflection: Ignoring unsupported primitive type: %s", v143, 0xCu);
          sub_22BE26B64(v144);
          MEMORY[0x2318AD180](v144, -1, -1);
          MEMORY[0x2318AD180](v143, -1, -1);
        }

        else
        {

          sub_22BE26B64(&v174);
        }

        (*(v158 + 8))(v137, v159);
        (*(v141 + 8))(v165, v142);
        v41 = v152;
        v42 = 1;
        v43 = v164;
        return sub_22BE19DC4(v41, v42, 1, v43);
      }

      sub_22BE49224(&v171, &v174);
      sub_22C272754();
      v121 = swift_allocBox();
      v122 = *(&v175 + 1);
      v123 = sub_22BE1BD3C(&v174, *(&v175 + 1));
      v124 = *(*(v122 - 8) + 64);
      v125 = MEMORY[0x28223BE20](v123);
      v127 = &v149 - ((v126 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v128 + 16))(v127, v125);

      TypedValue.EntityValue.init<A>(attemptingReflectionOf:bundleIdentifier:)(v127, v167, v78, v122);
      (*(v151 + 8))(v165, v150);
      v129 = v152;
      *v152 = v121;
      v130 = v164;
      (*(v169 + 104))(v129, *MEMORY[0x277D72A38], v164);
      v74 = v129;
      v75 = 0;
      v76 = v130;
    }

    goto LABEL_32;
  }

  sub_22BE49224(&v171, &v174);
  v64 = *(&v175 + 1);
  v65 = v176;
  sub_22BE1BD3C(&v174, *(&v175 + 1));
  v66 = *(v65 + 16);
  v67 = swift_getAssociatedTypeWitness();
  v68 = sub_22C273844();
  v170 = &v149;
  v69 = *(v68 - 8);
  v70 = *(v69 + 64);
  v71 = MEMORY[0x28223BE20](v68);
  v73 = &v149 - v72;
  v66(v64, v65, v71);
  if (sub_22BE1AEA8(v73, 1, v67) == 1)
  {
    (*(v151 + 8))(v52, v150);
    (*(v69 + 8))(v73, v68);
    v74 = v152;
    v75 = 1;
    v76 = v164;
LABEL_32:
    sub_22BE19DC4(v74, v75, 1, v76);
    goto LABEL_33;
  }

  v179 = v67;
  v90 = sub_22BE62524(&v178);
  (*(*(v67 - 8) + 32))(v90, v73, v67);
  sub_22BE62584(&v178, &v171);
  sub_22BE5E304(&v171, v167, v166);
  sub_22BE26B64(&v171);
  (*(v151 + 8))(v52, v150);
LABEL_33:
  v131 = &v174;
  return sub_22BE26B64(v131);
}

uint64_t sub_22BE5F8EC()
{
  sub_22BE25860();
  v6 = sub_22BE5CE4C(&qword_27D907400, &unk_22C274F90);
  sub_22BE19448(v6);
  v8 = *(v7 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE25CD0();
  v10 = sub_22C272874();
  v11 = sub_22BE179D8(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BE179EC();
  sub_22BE35AE8();
  v14 = sub_22BE1B010();
  if (sub_22BE1AEA8(v14, v15, v10) == 1)
  {
    sub_22BE2C620(v1);
    sub_22BE372A8();

    return sub_22BE2C620(v4);
  }

  else
  {
    v17 = sub_22BE28958();
    v18(v17);
    v19 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_22BE627A0(v5, v3, v0, isUniquelyReferenced_nonNull_native, &qword_27D9071A8, &qword_22C274FC0, MEMORY[0x277D72A78], MEMORY[0x277D72A78], v21, *v2, v23, v24, v25, v26);

    *v2 = v22;
  }

  return result;
}

uint64_t sub_22BE5FA9C()
{
  sub_22BE25860();
  v6 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  sub_22BE19448(v6);
  v8 = *(v7 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE25CD0();
  v10 = sub_22C26E684();
  v11 = sub_22BE179D8(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BE179EC();
  sub_22BE35AE8();
  v14 = sub_22BE1B010();
  if (sub_22BE1AEA8(v14, v15, v10) == 1)
  {
    sub_22BE2C620(v1);
    sub_22BE372A8();

    return sub_22BE2C620(v4);
  }

  else
  {
    v17 = sub_22BE28958();
    v18(v17);
    v19 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_22BE627A0(v5, v3, v0, isUniquelyReferenced_nonNull_native, &unk_27D907248, &unk_22C2750B0, MEMORY[0x277D1C338], MEMORY[0x277D1C338], v21, *v2, v23, v24, v25, v26);

    *v2 = v22;
  }

  return result;
}

uint64_t sub_22BE5FC4C()
{
  sub_22BE18378();
  v2 = sub_22BE5CE4C(&qword_27D907228, &unk_22C275090);
  sub_22BE19448(v2);
  v4 = *(v3 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  v6 = sub_22BE5CE4C(&qword_27D907208, &qword_22C275080);
  sub_22BE1834C(v6);
  v8 = *(v7 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE25CD0();
  v10 = sub_22BE1B010();
  if (sub_22BE1AEA8(v10, v11, v12) == 1)
  {
    sub_22BE2B734();
    sub_22BE33928(v13, v14, v15);
    sub_22BE622B4(v0, v16, v17, v18, v19, v20, v21, v22, v31, v32);
    sub_22BE18360();
    sub_22BE63414(v0, v23);
    sub_22BE2B734();
    return sub_22BE33928(v24, v25, v26);
  }

  else
  {
    sub_22BE424BC();
    v28 = *v1;
    swift_isUniquelyReferenced_nonNull_native();
    v29 = sub_22BE19DEC();
    sub_22BE628F4(v29);
    *v1 = v32;
    sub_22BE18360();
    return sub_22BE63414(v0, v30);
  }
}

uint64_t sub_22BE5FDA0()
{
  sub_22BE18378();
  v2 = sub_22BE5CE4C(&qword_27D907200, &qword_22C275078);
  sub_22BE19448(v2);
  v4 = *(v3 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  v6 = sub_22BE5CE4C(&qword_27D9071D0, &qword_22C275060);
  sub_22BE1834C(v6);
  v8 = *(v7 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE25CD0();
  v10 = sub_22BE1B010();
  if (sub_22BE1AEA8(v10, v11, v12) == 1)
  {
    sub_22BE2B734();
    sub_22BE33928(v13, v14, v15);
    sub_22BE623EC(v0, v16, v17, v18, v19, v20, v21, v22, v31, v32);
    sub_22BE1A4A0();
    sub_22BE63414(v0, v23);
    sub_22BE2B734();
    return sub_22BE33928(v24, v25, v26);
  }

  else
  {
    sub_22BE424BC();
    v28 = *v1;
    swift_isUniquelyReferenced_nonNull_native();
    v29 = sub_22BE19DEC();
    sub_22BE62AD4(v29);
    *v1 = v32;
    sub_22BE1A4A0();
    return sub_22BE63414(v0, v30);
  }
}

uint64_t sub_22BE5FEF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v7 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if (swift_dynamicCastMetatype() || (sub_22BE5CE4C(&qword_27D9072A0, &qword_22C288100), swift_dynamicCastMetatype()))
  {
    v9 = sub_22C272934();
    v10 = swift_allocBox();
    v12 = v11;
    v13 = MEMORY[0x277D72CE0];
LABEL_4:
    (*(*(v9 - 8) + 104))(v12, *v13, v9);
    *a4 = v10;
    v14 = *MEMORY[0x277D72D50];
    v15 = sub_22C272984();
    (*(*(v15 - 8) + 104))(a4, v14, v15);
    v16 = a4;
    v17 = 0;
    v18 = v15;
    goto LABEL_5;
  }

  if (swift_dynamicCastMetatype() || (sub_22BE5CE4C(&qword_27D9072A8, &qword_22C275110), swift_dynamicCastMetatype()))
  {
    v9 = sub_22C272934();
    v10 = swift_allocBox();
    v12 = v20;
    v13 = MEMORY[0x277D72CB0];
    goto LABEL_4;
  }

  if (swift_dynamicCastMetatype() || (sub_22BE5CE4C(&qword_27D9072B0, &qword_22C275118), swift_dynamicCastMetatype()))
  {
    v9 = sub_22C272934();
    v10 = swift_allocBox();
    v12 = v21;
    v13 = MEMORY[0x277D72CA0];
    goto LABEL_4;
  }

  if (swift_dynamicCastMetatype() || (sub_22BE5CE4C(&qword_27D9072B8, qword_22C275120), swift_dynamicCastMetatype()))
  {
    v9 = sub_22C272934();
    v10 = swift_allocBox();
    v12 = v22;
    v13 = MEMORY[0x277D72CD0];
    goto LABEL_4;
  }

  if (!sub_22BE63620(AssociatedTypeWitness))
  {
    v23 = swift_allocObject();
    v23[2] = a1;
    v23[3] = a2;
    swift_getMetatypeMetadata();

    v23[4] = sub_22C273074();
    v23[5] = v24;
    *a4 = v23;
    v25 = *MEMORY[0x277D72D28];
    v26 = sub_22C272984();
    (*(*(v26 - 8) + 104))(a4, v25, v26);
    return sub_22BE19DC4(a4, 0, 1, v26);
  }

  v18 = sub_22C272984();
  v16 = a4;
  v17 = 1;
LABEL_5:

  return sub_22BE19DC4(v16, v17, 1, v18);
}

void sub_22BE602B4()
{
  sub_22BE19094();
  sub_22C26E684();
  sub_22BE63514(&qword_28107F2F0, MEMORY[0x277D1C338]);
  sub_22BE1B8DC();
  sub_22BE63664();
}

unint64_t sub_22BE60364(unsigned int a1)
{
  v3 = MEMORY[0x2318AC830](*(v1 + 40), a1, 4);

  return sub_22BE60B40(a1, v3);
}

void sub_22BE603AC()
{
  sub_22BE19094();
  sub_22C272984();
  sub_22BE63514(&qword_28106DF18, MEMORY[0x277D72D58]);
  sub_22BE1B8DC();
  sub_22BE63664();
}

unint64_t sub_22BE6045C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_22BE25158();
  sub_22C272F44();
  sub_22C274174();
  if ((a4 & 1) == 0)
  {
    MEMORY[0x2318AC860](a3);
  }

  sub_22C2741A4();
  sub_22BE35F50();

  return sub_22BE60D18(v6, v7, v8, v9, v10);
}

unint64_t sub_22BE60508(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  sub_22BE25158();
  if (a4)
  {
    if (a4 == 1)
    {
      MEMORY[0x2318AC860](1);
      sub_22C272F44();
      v8 = a3;
    }

    else
    {
      MEMORY[0x2318AC860](2);
      v8 = a1;
    }

    MEMORY[0x2318AC860](v8);
  }

  else
  {
    MEMORY[0x2318AC860](0);
    sub_22C272F44();
  }

  v9 = sub_22C2741A4();

  return sub_22BE60E08(a1, a2, a3, a4, v9);
}

unint64_t sub_22BE605E8()
{
  sub_22BE366D8();
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = *(v0 + 40);
  sub_22C274154();
  sub_22C272F44();
  sub_22BE2B734();
  sub_22C272F44();
  sub_22C272F44();
  v10 = sub_22C2741A4();

  return sub_22BE6117C(v1, v10);
}

unint64_t sub_22BE6068C()
{
  sub_22BE366D8();
  v2 = *(v0 + 40);
  sub_22C273024();
  sub_22C274154();
  sub_22C272F44();
  v3 = sub_22C2741A4();

  return sub_22BE612A8(v1, v3);
}

unint64_t sub_22BE6071C()
{
  sub_22BE366D8();
  sub_22BE25158();
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  sub_22C272F44();
  sub_22C274174();
  if (v4)
  {
    sub_22BE2B734();
    sub_22C272F44();
  }

  sub_22C274174();
  v6 = *(type metadata accessor for ToolboxCache.ToolCacheKey(0) + 20);
  sub_22C26E244();
  sub_22BE63514(&qword_27D907220, MEMORY[0x277CC9788]);
  sub_22C272EE4();
  v7 = sub_22C2741A4();

  return sub_22BE613A0(v0, v7);
}

void sub_22BE60820()
{
  sub_22BE19094();
  sub_22C272CA4();
  sub_22BE63514(&qword_28106DEE0, MEMORY[0x277D73358]);
  sub_22BE1B8DC();
  sub_22BE63664();
}

unint64_t sub_22BE608D0()
{
  sub_22BE366D8();
  sub_22BE25158();
  sub_22BF362CC();
  v1 = sub_22C2741A4();

  return sub_22BE615DC(v0, v1);
}

void sub_22BE60930()
{
  sub_22BE19094();
  sub_22C26DF64();
  sub_22BE63514(&qword_28107F360, MEMORY[0x277CC9260]);
  sub_22BE1B8DC();
  sub_22BE63664();
}

void sub_22BE609E0()
{
  sub_22BE19094();
  sub_22C26E494();
  sub_22BE63514(&qword_28107F310, MEMORY[0x277D78248]);
  sub_22BE1B8DC();
  sub_22BE63664();
}

void sub_22BE60A90()
{
  sub_22BE19094();
  sub_22C26E1D4();
  sub_22BE63514(&qword_27D9071C0, MEMORY[0x277CC95F0]);
  sub_22BE1B8DC();
  sub_22BE63664();
}

unint64_t sub_22BE60B40(int a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

void sub_22BE60BA0()
{
  sub_22BE19460();
  v22 = v1;
  v23 = v2;
  v21 = v3;
  v5 = v4;
  v19 = v6;
  v8 = v7(0);
  sub_22BE179D8(v8);
  v10 = v9;
  v12 = *(v11 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  v15 = &v19 - v14;
  v24 = v0 + 64;
  v20 = v0;
  v16 = ~(-1 << *(v0 + 32));
  for (i = v5 & v16; ((1 << i) & *(v24 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v16)
  {
    (*(v10 + 16))(v15, *(v20 + 48) + *(v10 + 72) * i, v8);
    sub_22BE63514(v21, v22);
    v18 = sub_22C272FD4();
    (*(v10 + 8))(v15, v8);
    if (v18)
    {
      break;
    }
  }

  sub_22BE1AABC();
}

unint64_t sub_22BE60D18(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v13 = ~v7;
    v14 = *(v5 + 48);
    do
    {
      v15 = v14 + 32 * v8;
      v16 = *(v15 + 16);
      v17 = *(v15 + 24);
      v18 = *v15 == a1 && *(v15 + 8) == a2;
      if (v18 || (sub_22C274014() & 1) != 0)
      {
        if (v17)
        {
          if (a4)
          {
            return v8;
          }
        }

        else if ((a4 & 1) == 0 && v16 == a3)
        {
          return v8;
        }
      }

      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

unint64_t sub_22BE60E08(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5)
{
  v6 = -1 << *(v5 + 32);
  v7 = a5 & ~v6;
  if ((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v28 = ~v6;
    do
    {
      v12 = *(v5 + 48) + 32 * v7;
      v13 = *v12;
      v14 = *(v12 + 8);
      v15 = *(v12 + 16);
      v16 = *(v12 + 24);
      if (*(v12 + 24))
      {
        if (v16 != 1)
        {
          if (a4 == 2)
          {
            sub_22BE635AC(v13, v14, v15, 2u);
            sub_22BE635AC(a1, a2, a3, 2u);
            if (v13 == a1)
            {
              return v7;
            }

            goto LABEL_20;
          }

          v18 = a1;
          v19 = a2;
          v20 = a3;
          v21 = a4;
          goto LABEL_19;
        }

        if (a4 != 1)
        {
          sub_22BE6355C(a1, a2, a3, a4);
          v18 = v13;
          v19 = v14;
          v20 = v15;
          v21 = 1;
          goto LABEL_19;
        }

        if (v13 == a1 && v14 == a2)
        {
          sub_22BE6355C(a1, a2, a3, 1u);
          sub_22BE6355C(a1, a2, v15, 1u);
          sub_22BE635AC(a1, a2, v15, 1u);
          sub_22BE635AC(a1, a2, a3, 1u);
        }

        else
        {
          v27 = sub_22C274014();
          sub_22BE6355C(a1, a2, a3, 1u);
          sub_22BE6355C(v13, v14, v15, 1u);
          sub_22BE635AC(v13, v14, v15, 1u);
          sub_22BE635AC(a1, a2, a3, 1u);
          if ((v27 & 1) == 0)
          {
            goto LABEL_20;
          }
        }

        if (v15 == a3)
        {
          return v7;
        }
      }

      else
      {
        if (a4)
        {
          sub_22BE6355C(a1, a2, a3, a4);
          v18 = v13;
          v19 = v14;
          v20 = v15;
          v21 = 0;
LABEL_19:
          sub_22BE6355C(v18, v19, v20, v21);
          sub_22BE635AC(v13, v14, v15, v16);
          sub_22BE635AC(a1, a2, a3, a4);
          goto LABEL_20;
        }

        if (v13 == a1 && v14 == a2)
        {
          sub_22BE6355C(a1, a2, a3, 0);
          sub_22BE6355C(a1, a2, v15, 0);
          sub_22BE635AC(a1, a2, v15, 0);
          sub_22BE635AC(a1, a2, a3, 0);
          return v7;
        }

        v23 = *v12;
        v24 = *(v12 + 8);
        v25 = sub_22C274014();
        sub_22BE6355C(a1, a2, a3, 0);
        sub_22BE6355C(v13, v14, v15, 0);
        sub_22BE635AC(v13, v14, v15, 0);
        sub_22BE635AC(a1, a2, a3, 0);
        if (v25)
        {
          return v7;
        }
      }

LABEL_20:
      v7 = (v7 + 1) & v28;
    }

    while (((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}