uint64_t sub_22C5A45D4()
{
  sub_22C90B62C();
  Statement.hash(into:)(v1);
  return sub_22C90B66C();
}

uint64_t UtteranceRule.pattern.setter()
{
  sub_22C370250();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t UtteranceRule.spansForNamedCaptureGroups.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t UtteranceRule.init(builder:)@<X0>(void *a1@<X8>)
{
  v1 = sub_22C36D8D4(a1);
  *(v1 + 16) = 0;
  v1[3] = MEMORY[0x277D84F90];
  return v2();
}

uint64_t static UtteranceRule.== infix(_:_:)(uint64_t a1)
{
  v1 = sub_22C3707D8(a1);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v1 == *v2 && *(v3 + 8) == *(v2 + 8);
  if (v8 || (sub_22C90B4FC()) && (sub_22C3D4540(v4, v6))
  {
    if (v5)
    {
      if (v7)
      {

        sub_22C36BBCC();
        sub_22C46DFC8();
        sub_22C3743B4();
        if (v5)
        {
          return 1;
        }
      }
    }

    else if (!v7)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_22C5A47E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E726574746170 && a2 == 0xE700000000000000;
  if (v4 || (sub_22C90B4FC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701869940 && a2 == 0xE400000000000000;
    if (v6 || (sub_22C90B4FC() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD00000000000001ALL && 0x800000022C9327A0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_22C90B4FC();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_22C5A48FC(char a1)
{
  if (!a1)
  {
    return 0x6E726574746170;
  }

  if (a1 == 1)
  {
    return 1701869940;
  }

  return 0xD00000000000001ALL;
}

uint64_t sub_22C5A4970@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C5A47E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C5A4998(uint64_t a1)
{
  v2 = sub_22C5AAE48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C5A49D4(uint64_t a1)
{
  v2 = sub_22C5AAE48();

  return MEMORY[0x2821FE720](a1, v2);
}

void UtteranceRule.encode(to:)()
{
  sub_22C370030();
  v3 = v2;
  v4 = sub_22C3A5908(&qword_27D9BE810, &qword_22C91E358);
  sub_22C369824(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v9);
  sub_22C3717BC();
  v10 = *v0;
  v11 = v0[1];
  v17 = *(v0 + 16);
  v16 = v0[3];
  v12 = v3[4];
  sub_22C3766E0(v3, v3[3]);
  sub_22C5AAE48();
  sub_22C37239C();
  sub_22C37B084();
  sub_22C90B6CC();
  sub_22C5AD6B4();
  sub_22C37A15C();
  sub_22C90B3CC();
  if (!v1)
  {
    sub_22C5AAE9C();
    sub_22C37A15C();
    sub_22C90B41C();
    sub_22C3A5908(&qword_27D9BE828, &qword_22C91E360);
    sub_22C5AAEF0();
    sub_22C5AD798();
    sub_22C37A15C();
    sub_22C90B3AC();
  }

  v13 = *(v6 + 8);
  v14 = sub_22C37B5F4();
  v15(v14);
  sub_22C3816B8();
  sub_22C36FB20();
}

void UtteranceRule.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  sub_22C909FFC();
  sub_22C909FFC();

  if (v4)
  {
    sub_22C90B64C();

    sub_22C4714BC();
  }

  else
  {
    sub_22C90B64C();
  }
}

uint64_t UtteranceRule.hashValue.getter()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 16);
  v5 = v0[3];
  sub_22C37B5C8();
  UtteranceRule.hash(into:)();
  return sub_22C90B66C();
}

void UtteranceRule.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12)
{
  sub_22C370030();
  sub_22C5AD698();
  v17 = v16;
  v18 = sub_22C3A5908(&qword_27D9BE840, &qword_22C91E368);
  sub_22C369824(v18);
  v20 = v19;
  v22 = *(v21 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v23);
  v25 = v27 - v24;
  sub_22C36A040();
  sub_22C5AAE48();
  sub_22C388798();
  if (v13)
  {
    sub_22C36FF94(v12);
  }

  else
  {
    sub_22C37F880();
    sub_22C90B2DC();
    sub_22C386584();
    sub_22C5AAFC8();
    sub_22C37F880();
    sub_22C90B32C();
    sub_22C3A5908(&qword_27D9BE828, &qword_22C91E360);
    sub_22C5AB01C();
    sub_22C37F880();
    sub_22C90B2BC();
    (*(v20 + 8))(v25, v18);
    v26 = v27[1];
    *v17 = v15;
    *(v17 + 8) = v14;
    *(v17 + 16) = a12;
    *(v17 + 24) = v26;

    sub_22C386234();
  }

  sub_22C37B304();
  sub_22C36FB20();
}

uint64_t sub_22C5A4F18()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 16);
  v5 = v0[3];
  sub_22C90B62C();
  UtteranceRule.hash(into:)();
  return sub_22C90B66C();
}

uint64_t SpansForNamedCaptureGroups.captureGroupName.setter()
{
  sub_22C370250();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t SpansForNamedCaptureGroups.labels.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t SpansForNamedCaptureGroups.init(captureGroupName:labels:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

void static SpansForNamedCaptureGroups.== infix(_:_:)(uint64_t a1)
{
  v1 = sub_22C3707D8(a1);
  v4 = *(v3 + 16);
  v5 = v2[2];
  v6 = v1 == *v2 && *(v3 + 8) == v2[1];
  if (v6 || (sub_22C90B4FC() & 1) != 0)
  {
    sub_22C36BA00();

    sub_22C46D3DC();
  }
}

uint64_t sub_22C5A50E0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x800000022C9327C0 == a2;
  if (v3 || (sub_22C90B4FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736C6562616CLL && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C90B4FC();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_22C5A51AC(char a1)
{
  if (a1)
  {
    return 0x736C6562616CLL;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_22C5A5204@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C5A50E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C5A522C(uint64_t a1)
{
  v2 = sub_22C5AB0F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C5A5268(uint64_t a1)
{
  v2 = sub_22C5AB0F4();

  return MEMORY[0x2821FE720](a1, v2);
}

void SpansForNamedCaptureGroups.encode(to:)()
{
  sub_22C370030();
  v3 = v2;
  v4 = sub_22C3A5908(&qword_27D9BE860, &qword_22C91E370);
  sub_22C369824(v4);
  v16 = v5;
  v7 = *(v6 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v8);
  sub_22C3717BC();
  v9 = *v0;
  v10 = v0[1];
  v15 = v0[2];
  v11 = v3[4];
  sub_22C3766E0(v3, v3[3]);
  sub_22C5AB0F4();
  sub_22C37239C();
  sub_22C37B084();
  sub_22C90B6CC();
  sub_22C5AD6B4();
  sub_22C37A15C();
  sub_22C90B3CC();
  if (!v1)
  {
    sub_22C3890C8();
    sub_22C3A5908(&qword_27D9BE870, &qword_22C91E378);
    sub_22C5AB148();
    sub_22C386A34();
    sub_22C37A15C();
    sub_22C90B41C();
  }

  v12 = *(v16 + 8);
  v13 = sub_22C371530();
  v14(v13);
  sub_22C3816B8();
  sub_22C36FB20();
}

void SpansForNamedCaptureGroups.hash(into:)()
{
  sub_22C5AD7FC();
  v1 = *(v0 + 16);
  sub_22C909FFC();
  v2 = sub_22C36BA00();

  sub_22C4716A8(v2, v3);
}

uint64_t SpansForNamedCaptureGroups.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = sub_22C37B5C8();
  sub_22C36ED3C(v4, v5, v6, v7, v8, v9, v10, v11, v13, v14[0]);
  sub_22C909FFC();
  sub_22C4716A8(v14, v3);
  return sub_22C90B66C();
}

void SpansForNamedCaptureGroups.init(from:)()
{
  sub_22C370030();
  sub_22C5AD698();
  v5 = v4;
  v6 = sub_22C3A5908(&qword_27D9BE888, &qword_22C91E380);
  sub_22C369824(v6);
  v8 = *(v7 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v9);
  sub_22C36A040();
  sub_22C5AB0F4();
  sub_22C388798();
  if (v1)
  {
    sub_22C36FF94(v0);
  }

  else
  {
    sub_22C3831C8();
    sub_22C90B2DC();
    sub_22C386584();
    sub_22C3A5908(&qword_27D9BE870, &qword_22C91E378);
    sub_22C3890C8();
    sub_22C5AB1FC();
    sub_22C5AD798();
    sub_22C37F880();
    sub_22C90B32C();
    v10 = sub_22C36A754();
    v11(v10);
    *v5 = v3;
    v5[1] = v2;
    v5[2] = v12;

    sub_22C386234();
  }

  sub_22C37B304();
  sub_22C36FB20();
}

uint64_t sub_22C5A5660()
{
  v2 = *v0;
  v3 = *(v0 + 1);
  sub_22C90B62C();
  SpansForNamedCaptureGroups.hash(into:)();
  return sub_22C90B66C();
}

IntelligenceFlowPlannerRuntime::UtterancePatternType_optional __swiftcall UtterancePatternType.init(rawValue:)(Swift::String rawValue)
{
  sub_22C381320();
  sub_22C90B21C();
  sub_22C5AD7D8();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *v1 = v4;
  return result;
}

void sub_22C5A575C(void *a1@<X8>)
{
  UtterancePatternType.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t EventRule.eventResultOutputEnum.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t EventRule.init(builder:)@<X0>(uint64_t a1@<X8>)
{
  v1 = sub_22C5AD64C(a1);
  *v1 = MEMORY[0x277D84F90];
  *(v1 + 8) = 0;
  return v2();
}

BOOL static EventRule.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  sub_22C46CEA4(*a1, *a2);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  if (v2 != 3)
  {
    return v3 != 3 && (sub_22C3D3B8C(v2, v3) & 1) != 0;
  }

  return v3 == 3;
}

uint64_t sub_22C5A598C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000015 && 0x800000022C9327E0 == a2;
  if (v3 || (sub_22C90B4FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000022C932800 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C90B4FC();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

unint64_t sub_22C5A5A68(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_22C5A5AAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C5A598C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C5A5AD4(uint64_t a1)
{
  v2 = sub_22C5AB2B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C5A5B10(uint64_t a1)
{
  v2 = sub_22C5AB2B0();

  return MEMORY[0x2821FE720](a1, v2);
}

void EventRule.encode(to:)()
{
  sub_22C370030();
  v2 = v1;
  v3 = sub_22C3A5908(&qword_27D9BE8A0, &qword_22C91E388);
  sub_22C369824(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v8);
  sub_22C3717BC();
  v9 = *v0;
  v16 = *(v0 + 8);
  v10 = v2[3];
  v11 = v2[4];
  sub_22C387284(v2);
  v12 = sub_22C5AB2B0();

  sub_22C37239C();
  sub_22C372390();
  sub_22C90B6CC();
  sub_22C3A5908(&qword_27D9BE8B0, &qword_22C91E390);
  sub_22C5AB304();
  sub_22C386A34();
  sub_22C37A15C();
  sub_22C90B41C();

  if (!v12)
  {
    sub_22C5AB3DC();
    sub_22C37A15C();
    sub_22C90B3AC();
  }

  v13 = *(v5 + 8);
  v14 = sub_22C371530();
  v15(v14);
  sub_22C3816B8();
  sub_22C36FB20();
}

uint64_t EventRule.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_22C471388(a1, *v1);
  if (v2 == 3)
  {
    return sub_22C90B64C();
  }

  sub_22C90B64C();
  sub_22C909FFC();
}

uint64_t EventRule.hashValue.getter()
{
  v1 = *(v0 + 8);
  v4 = *v0;
  v5 = v1;
  sub_22C37B5C8();
  EventRule.hash(into:)(v3);
  return sub_22C90B66C();
}

void EventRule.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22C370030();
  sub_22C5AD7F0();
  v13 = sub_22C3A5908(&qword_27D9BE8D0, &qword_22C91E398);
  sub_22C369824(v13);
  v15 = *(v14 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v16);
  sub_22C36A040();
  sub_22C5AB2B0();
  sub_22C372390();
  sub_22C90B6BC();
  if (v11)
  {
    sub_22C36FF94(v10);
  }

  else
  {
    sub_22C3A5908(&qword_27D9BE8B0, &qword_22C91E390);
    sub_22C5AB430();
    sub_22C5AD798();
    sub_22C90B32C();
    sub_22C5AB508();
    sub_22C90B2BC();
    v17 = sub_22C36A754();
    v18(v17);
    *v12 = a10;
    *(v12 + 8) = v19;

    sub_22C36FF94(v10);
  }

  sub_22C3816B8();
  sub_22C36FB20();
}

uint64_t sub_22C5A5FC8()
{
  v1 = *(v0 + 8);
  v4 = *v0;
  v5 = v1;
  sub_22C90B62C();
  EventRule.hash(into:)(v3);
  return sub_22C90B66C();
}

uint64_t ContextRule.type.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContextRule() + 20);
  v4 = sub_22C90355C();
  v5 = sub_22C36985C(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t ContextRule.appEntityCriteria.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ContextRule() + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;

  return sub_22C4722FC(v4, v5);
}

__n128 ContextRule.init(id:type:appEntityCriteria:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __n128 *a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  *(a5 + 1) = a2;
  v8 = type metadata accessor for ContextRule();
  v9 = *(v8 + 20);
  v10 = sub_22C90355C();
  sub_22C36985C(v10);
  v14 = a4[1];
  v15 = *a4;
  (*(v11 + 32))(&a5[v9], a3);
  v12 = &a5[*(v8 + 24)];
  result = v15;
  *v12 = v15;
  v12[1] = v14;
  return result;
}

uint64_t ContextRule.init(builder:)@<X0>(uint64_t (*a1)(char *)@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for ContextRule();
  v5 = *(v4 + 20);
  v6 = *MEMORY[0x277D1EAB8];
  v7 = sub_22C90355C();
  sub_22C36985C(v7);
  (*(v8 + 104))(&a2[v5], v6);
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  v9 = &a2[*(v4 + 24)];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  return a1(a2);
}

BOOL static ContextRule.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_22C90B4FC() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for ContextRule();
  if ((sub_22C3D394C(a1 + *(v5 + 20), a2 + *(v5 + 20)) & 1) == 0)
  {
    return 0;
  }

  v6 = *(v5 + 24);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v10 = *(a1 + v6 + 16);
  v9 = *(a1 + v6 + 24);
  v11 = (a2 + v6);
  v12 = v11[1];
  v14 = v11[2];
  v13 = v11[3];
  if (!v8)
  {
    sub_22C3890BC();
    sub_22C4722FC(v28, v29);
    if (!v12)
    {
      sub_22C5AD808();
      goto LABEL_28;
    }

    v30 = sub_22C38BB74();
    sub_22C4722FC(v30, v31);
    goto LABEL_23;
  }

  if (!v12)
  {
    v32 = sub_22C36A908();
    sub_22C4722FC(v32, v33);
    sub_22C5AD808();
    v34 = sub_22C36A908();
    sub_22C4722FC(v34, v35);

LABEL_23:
    v36 = sub_22C36A908();
    sub_22C472340(v36, v37);
    v38 = sub_22C38BB74();
LABEL_24:
    sub_22C472340(v38, v39);
    return 0;
  }

  if (v7 != *v11 || v8 != v12)
  {
    sub_22C37335C();
    if ((sub_22C90B4FC() & 1) == 0)
    {
      v51 = sub_22C36A908();
      sub_22C4722FC(v51, v52);
      v53 = sub_22C38BB74();
      sub_22C4722FC(v53, v54);
      v55 = sub_22C36A908();
      sub_22C4722FC(v55, v56);
      v57 = sub_22C38BB74();
      sub_22C472340(v57, v58);

      v38 = sub_22C36A908();
      goto LABEL_24;
    }
  }

  if (v10 != v14 || v9 != v13)
  {
    sub_22C36BBCC();
    v17 = sub_22C90B4FC();
    v18 = sub_22C36A908();
    sub_22C4722FC(v18, v19);
    v20 = sub_22C38BB74();
    sub_22C4722FC(v20, v21);
    v22 = sub_22C36A908();
    sub_22C4722FC(v22, v23);
    v24 = sub_22C38BB74();
    sub_22C472340(v24, v25);

    v26 = sub_22C36A908();
    sub_22C472340(v26, v27);
    return (v17 & 1) != 0;
  }

  v41 = sub_22C36A908();
  sub_22C4722FC(v41, v42);
  sub_22C3890BC();
  sub_22C4722FC(v43, v44);
  v45 = sub_22C36A908();
  sub_22C4722FC(v45, v46);
  sub_22C3890BC();
  sub_22C472340(v47, v48);

  sub_22C37335C();
LABEL_28:
  sub_22C3890BC();
  sub_22C472340(v49, v50);
  return 1;
}

uint64_t sub_22C5A6478(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_22C90B4FC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701869940 && a2 == 0xE400000000000000;
    if (v6 || (sub_22C90B4FC() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000011 && 0x800000022C932820 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_22C90B4FC();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_22C5A6588(char a1)
{
  if (!a1)
  {
    return 25705;
  }

  if (a1 == 1)
  {
    return 1701869940;
  }

  return 0xD000000000000011;
}

uint64_t sub_22C5A65D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C5A6478(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C5A6600(uint64_t a1)
{
  v2 = sub_22C5AB55C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C5A663C(uint64_t a1)
{
  v2 = sub_22C5AB55C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ContextRule.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_22C3A5908(&qword_27D9BE8F0, &qword_22C91E3A0);
  sub_22C369824(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v10);
  sub_22C3717BC();
  v11 = a1[4];
  sub_22C3766E0(a1, a1[3]);
  sub_22C5AB55C();
  sub_22C37239C();
  sub_22C90B6CC();
  v12 = *v3;
  v13 = v3[1];
  sub_22C37A15C();
  sub_22C90B3CC();
  if (!v2)
  {
    v14 = type metadata accessor for ContextRule();
    v15 = *(v14 + 20);
    sub_22C90355C();
    sub_22C5AD5C4();
    sub_22C5ABC90(v16, v17);
    sub_22C386A34();
    sub_22C37A15C();
    sub_22C90B41C();
    v18 = (v3 + *(v14 + 24));
    v23 = *v18;
    v24 = v18[1];
    v25 = v18[2];
    v26 = v18[3];
    sub_22C4722FC(*v18, v24);
    sub_22C5AB5B0();
    sub_22C37A15C();
    sub_22C90B3AC();
    sub_22C472340(v23, v24);
  }

  v19 = *(v7 + 8);
  v20 = sub_22C371530();
  return v21(v20);
}

uint64_t ContextRule.hash(into:)()
{
  v1 = v0;
  sub_22C5AD7FC();
  sub_22C909FFC();
  v2 = type metadata accessor for ContextRule();
  v3 = *(v2 + 20);
  sub_22C90355C();
  sub_22C5AD5C4();
  sub_22C5ABC90(v4, v5);
  sub_22C36D39C();
  sub_22C909F8C();
  v6 = (v1 + *(v2 + 24));
  if (!v6[1])
  {
    return sub_22C90B64C();
  }

  v8 = v6[2];
  v7 = v6[3];
  v9 = *v6;
  sub_22C90B64C();
  sub_22C909FFC();
  sub_22C36D39C();

  return sub_22C909FFC();
}

uint64_t ContextRule.hashValue.getter()
{
  sub_22C37B5C8();
  ContextRule.hash(into:)();
  return sub_22C90B66C();
}

void ContextRule.init(from:)()
{
  sub_22C370030();
  v2 = v1;
  v29 = v3;
  v31 = sub_22C90355C();
  v4 = sub_22C369824(v31);
  v30 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  v10 = v9 - v8;
  v32 = sub_22C3A5908(&qword_27D9BE908, &qword_22C91E3A8);
  sub_22C369824(v32);
  v12 = *(v11 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v13);
  v14 = type metadata accessor for ContextRule();
  v15 = sub_22C36985C(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22C369838();
  v20 = (v19 - v18);
  v21 = v2[4];
  sub_22C3766E0(v2, v2[3]);
  sub_22C5AB55C();
  sub_22C90B6BC();
  if (v0)
  {
    sub_22C36FF94(v2);
  }

  else
  {
    *v20 = sub_22C90B2DC();
    v20[1] = v22;
    LOBYTE(v33) = 1;
    sub_22C5AD5C4();
    sub_22C5ABC90(v23, v24);
    sub_22C90B32C();
    (*(v30 + 32))(v20 + *(v14 + 20), v10, v31);
    sub_22C5AB604();
    sub_22C90B2BC();
    v25 = sub_22C5AD618();
    v26(v25);
    v27 = (v20 + *(v14 + 24));
    *v27 = v33;
    v27[1] = v34;
    sub_22C5AB658(v20, v29);
    v28 = sub_22C386234();
    sub_22C5AB6BC(v28);
  }

  sub_22C36FB20();
}

uint64_t sub_22C5A6D1C()
{
  sub_22C90B62C();
  ContextRule.hash(into:)();
  return sub_22C90B66C();
}

uint64_t ContextRuleAppEntityCriteria.typeName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return sub_22C36BA00();
}

IntelligenceFlowPlannerRuntime::ContextRuleAppEntityCriteria __swiftcall ContextRuleAppEntityCriteria.init(bundleId:typeName:)(Swift::String bundleId, Swift::String typeName)
{
  *v2 = bundleId;
  v2[1] = typeName;
  result.typeName = typeName;
  result.bundleId = bundleId;
  return result;
}

uint64_t ContextRuleAppEntityCriteria.init(builder:)@<X0>(void *a1@<X8>)
{
  v1 = sub_22C36D8D4(a1);
  v1[2] = 0;
  v1[3] = v2;
  return v3();
}

uint64_t static ContextRuleAppEntityCriteria.== infix(_:_:)(uint64_t a1)
{
  v1 = sub_22C3707D8(a1);
  v4 = v3[2];
  v5 = v3[3];
  v6 = v2[2];
  v7 = v2[3];
  v8 = v1 == *v2 && v3[1] == v2[1];
  if (v8 || (v9 = sub_22C90B4FC(), result = 0, (v9 & 1) != 0))
  {
    if (v4 == v6 && v5 == v7)
    {
      return 1;
    }

    else
    {
      sub_22C36BA00();

      return sub_22C90B4FC();
    }
  }

  return result;
}

uint64_t sub_22C5A6E5C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000;
  if (v4 || (sub_22C90B4FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D614E65707974 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C90B4FC();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_22C5A6F2C(char a1)
{
  if (a1)
  {
    return 0x656D614E65707974;
  }

  else
  {
    return 0x6449656C646E7562;
  }
}

uint64_t sub_22C5A6F64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C5A6E5C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C5A6F8C(uint64_t a1)
{
  v2 = sub_22C5AB718();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C5A6FC8(uint64_t a1)
{
  v2 = sub_22C5AB718();

  return MEMORY[0x2821FE720](a1, v2);
}

void ContextRuleAppEntityCriteria.encode(to:)()
{
  sub_22C370030();
  v3 = v2;
  v4 = sub_22C3A5908(&qword_27D9BE920, &qword_22C91E3B0);
  sub_22C369824(v4);
  v17 = v5;
  v7 = *(v6 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v8);
  sub_22C3717BC();
  v9 = *v0;
  v10 = v0[1];
  v15 = v0[3];
  v16 = v0[2];
  v11 = v3[4];
  sub_22C3766E0(v3, v3[3]);
  sub_22C5AB718();
  sub_22C37239C();
  sub_22C90B6CC();
  sub_22C5AD6B4();
  sub_22C37A15C();
  sub_22C90B3CC();
  if (!v1)
  {
    sub_22C3890C8();
    sub_22C37A15C();
    sub_22C90B3CC();
  }

  v12 = *(v17 + 8);
  v13 = sub_22C371530();
  v14(v13);
  sub_22C3816B8();
  sub_22C36FB20();
}

uint64_t ContextRuleAppEntityCriteria.hash(into:)()
{
  sub_22C5AD7FC();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  sub_22C909FFC();

  return sub_22C909FFC();
}

uint64_t ContextRuleAppEntityCriteria.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = sub_22C37B5C8();
  sub_22C36ED3C(v5, v6, v7, v8, v9, v10, v11, v12, v14, v15);
  sub_22C909FFC();
  sub_22C909FFC();
  return sub_22C90B66C();
}

void ContextRuleAppEntityCriteria.init(from:)()
{
  sub_22C370030();
  sub_22C5AD698();
  v5 = v4;
  v6 = sub_22C3A5908(&qword_27D9BE930, &qword_22C91E3B8);
  sub_22C369824(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v11);
  v13 = &v18 - v12;
  sub_22C36A040();
  sub_22C5AB718();
  sub_22C388798();
  if (v1)
  {
    sub_22C36FF94(v0);
  }

  else
  {
    sub_22C3831C8();
    sub_22C90B2DC();
    sub_22C386584();
    sub_22C3890C8();
    sub_22C37F880();
    v14 = sub_22C90B2DC();
    v16 = v15;
    v17 = *(v8 + 8);
    v19 = v14;
    v17(v13, v6);
    *v5 = v3;
    v5[1] = v2;
    v5[2] = v19;
    v5[3] = v16;

    sub_22C386234();
  }

  sub_22C37B304();
  sub_22C36FB20();
}

uint64_t sub_22C5A7398()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  sub_22C90B62C();
  ContextRuleAppEntityCriteria.hash(into:)();
  return sub_22C90B66C();
}

uint64_t DynamicEnumerationEntityRule.dynamicEnumerationEntityIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return sub_22C36BA00();
}

uint64_t DynamicEnumerationEntityRule.bundleId.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return sub_22C36BA00();
}

void __swiftcall DynamicEnumerationEntityRule.init(id:dynamicEnumerationEntityIdentifier:bundleId:)(IntelligenceFlowPlannerRuntime::DynamicEnumerationEntityRule *__return_ptr retstr, Swift::String id, Swift::String dynamicEnumerationEntityIdentifier, Swift::String bundleId)
{
  retstr->id = id;
  retstr->dynamicEnumerationEntityIdentifier = dynamicEnumerationEntityIdentifier;
  retstr->bundleId = bundleId;
}

uint64_t DynamicEnumerationEntityRule.init(builder:)@<X0>(void *a1@<X8>)
{
  v1 = sub_22C36D8D4(a1);
  v1[2] = 0;
  v1[3] = v2;
  v1[4] = 0;
  v1[5] = v2;
  return v3();
}

uint64_t static DynamicEnumerationEntityRule.== infix(_:_:)(uint64_t a1)
{
  v1 = sub_22C3707D8(a1);
  v4 = v3[2];
  v6 = v3[3];
  v5 = v3[4];
  v7 = v3[5];
  v8 = v2[2];
  v9 = v2[3];
  v10 = v2[4];
  v11 = v2[5];
  v12 = v1 == *v2 && v3[1] == v2[1];
  if (!v12 && (sub_22C90B4FC() & 1) == 0)
  {
    return 0;
  }

  v13 = v4 == v8 && v6 == v9;
  if (!v13 && (sub_22C90B4FC() & 1) == 0)
  {
    return 0;
  }

  if (v5 == v10 && v7 == v11)
  {
    return 1;
  }

  sub_22C36BA00();

  return sub_22C90B4FC();
}

uint64_t sub_22C5A758C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_22C90B4FC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000022 && 0x800000022C932840 == a2;
    if (v6 || (sub_22C90B4FC() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_22C90B4FC();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_22C5A769C(unsigned __int8 a1)
{
  sub_22C37B5C8();
  MEMORY[0x2318B8B10](a1);
  return sub_22C90B66C();
}

uint64_t sub_22C5A76DC(char a1)
{
  if (!a1)
  {
    return 25705;
  }

  if (a1 == 1)
  {
    return 0xD000000000000022;
  }

  return 0x6449656C646E7562;
}

uint64_t sub_22C5A772C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_22C90B62C();
  a4(v8, v6);
  return sub_22C90B66C();
}

uint64_t sub_22C5A7780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C5A758C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C5A77A8(uint64_t a1)
{
  v2 = sub_22C5AB76C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C5A77E4(uint64_t a1)
{
  v2 = sub_22C5AB76C();

  return MEMORY[0x2821FE720](a1, v2);
}

void DynamicEnumerationEntityRule.encode(to:)()
{
  sub_22C370030();
  v3 = v2;
  v4 = sub_22C3A5908(&qword_27D9BE938, &qword_22C91E3C0);
  sub_22C369824(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v9);
  sub_22C3717BC();
  v10 = *v0;
  v11 = v0[1];
  v19 = v0[3];
  v20 = v0[2];
  v17 = v0[5];
  v18 = v0[4];
  v12 = v3[3];
  v13 = v3[4];
  sub_22C387284(v3);
  sub_22C5AB76C();
  sub_22C37239C();
  sub_22C372390();
  sub_22C90B6CC();
  sub_22C5AD6B4();
  sub_22C90B3CC();
  if (!v1)
  {
    sub_22C3890C8();
    sub_22C37A15C();
    sub_22C90B3CC();
    sub_22C37A15C();
    sub_22C90B3CC();
  }

  v14 = *(v6 + 8);
  v15 = sub_22C37B5F4();
  v16(v15);
  sub_22C3816B8();
  sub_22C36FB20();
}

uint64_t DynamicEnumerationEntityRule.hash(into:)()
{
  sub_22C5AD7FC();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  sub_22C909FFC();
  sub_22C909FFC();
  sub_22C36D39C();

  return sub_22C909FFC();
}

uint64_t DynamicEnumerationEntityRule.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v7 = sub_22C37B5C8();
  sub_22C36ED3C(v7, v8, v9, v10, v11, v12, v13, v14, v16, v17);
  sub_22C909FFC();
  sub_22C909FFC();
  sub_22C909FFC();
  return sub_22C90B66C();
}

void DynamicEnumerationEntityRule.init(from:)()
{
  sub_22C370030();
  sub_22C5AD698();
  v3 = v2;
  v4 = sub_22C3A5908(&qword_27D9BE948, &qword_22C91E3C8);
  sub_22C369824(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v9);
  v11 = &v21 - v10;
  sub_22C36A040();
  sub_22C5AB76C();
  sub_22C388798();
  if (v1)
  {
    sub_22C36FF94(v0);
  }

  else
  {
    sub_22C37F880();
    v12 = sub_22C90B2DC();
    v24 = v13;
    sub_22C3890C8();
    sub_22C37F880();
    v22 = sub_22C90B2DC();
    v23 = v14;
    v15 = sub_22C90B2DC();
    v17 = v16;
    v18 = v15;
    (*(v6 + 8))(v11, v4);
    v20 = v23;
    v19 = v24;
    *v3 = v12;
    v3[1] = v19;
    v3[2] = v22;
    v3[3] = v20;
    v3[4] = v18;
    v3[5] = v17;

    sub_22C386234();
  }

  sub_22C37B304();
  sub_22C36FB20();
}

uint64_t sub_22C5A7C94()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  v5 = *(v0 + 5);
  sub_22C90B62C();
  DynamicEnumerationEntityRule.hash(into:)();
  return sub_22C90B66C();
}

IntelligenceFlowPlannerRuntime::EventResultOutputEnum_optional __swiftcall EventResultOutputEnum.init(rawValue:)(Swift::String rawValue)
{
  sub_22C381320();
  sub_22C90B21C();
  sub_22C5AD7D8();

  v4 = 6;
  if (v2 < 6)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

void sub_22C5A7DEC(void *a1@<X8>)
{
  EventResultOutputEnum.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

IntelligenceFlowPlannerRuntime::EventMatchOption_optional __swiftcall EventMatchOption.init(rawValue:)(Swift::String rawValue)
{
  sub_22C381320();
  sub_22C90B21C();
  sub_22C5AD7D8();

  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

void sub_22C5A7F90(void *a1@<X8>)
{
  EventMatchOption.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t PlanValue.programStatements.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t PlanValue.init(builder:)@<X0>(uint64_t a1@<X8>)
{
  v1 = sub_22C5AD64C(a1);
  *v2 = 0;
  v2[1] = 0;
  *(v1 + 16) = MEMORY[0x277D84F90];
  return v3();
}

uint64_t sub_22C5A8128()
{
  v0 = sub_22C90B21C();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22C5A81A0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_22C5A8128();
  *a2 = result;
  return result;
}

uint64_t sub_22C5A81D0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22C39B4E8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_22C5A8204@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22C5A8128();
  *a1 = result;
  return result;
}

uint64_t sub_22C5A822C(uint64_t a1)
{
  v2 = sub_22C5AB7C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C5A8268(uint64_t a1)
{
  v2 = sub_22C5AB7C0();

  return MEMORY[0x2821FE720](a1, v2);
}

void PlanValue.encode(to:)()
{
  sub_22C370030();
  v3 = v2;
  v4 = sub_22C3A5908(&qword_27D9BE950, &unk_22C91E3D0);
  sub_22C369824(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v9);
  sub_22C3717BC();
  v10 = *v0;
  v11 = v0[1];
  v16 = v0[2];
  v12 = v3[4];
  sub_22C3766E0(v3, v3[3]);
  sub_22C5AB7C0();
  sub_22C37239C();
  sub_22C90B6CC();
  sub_22C5AD6B4();
  sub_22C90B37C();
  if (!v1)
  {
    sub_22C3890C8();

    sub_22C3A5908(&qword_27D9BAC38, &qword_22C9190B0);
    sub_22C5AB814();
    sub_22C386A34();
    sub_22C37A15C();
    sub_22C90B41C();
  }

  v13 = *(v6 + 8);
  v14 = sub_22C371530();
  v15(v14);
  sub_22C3816B8();
  sub_22C36FB20();
}

void PlanValue.hash(into:)()
{
  v1 = v0[2];
  if (!v0[1])
  {
    sub_22C5AD860();
    if (v1)
    {
      goto LABEL_3;
    }

LABEL_7:
    sub_22C5AD860();
    return;
  }

  v2 = *v0;
  sub_22C5AD848();
  sub_22C909FFC();
  if (!v1)
  {
    goto LABEL_7;
  }

LABEL_3:
  sub_22C5AD848();
  v3 = sub_22C371530();

  sub_22C4716F0(v3, v4);
}

uint64_t PlanValue.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_22C37B5C8();
  sub_22C90B64C();
  if (v2)
  {
    sub_22C909FFC();
  }

  if (v3)
  {
    v4 = sub_22C90B64C();
    v12 = sub_22C36ED3C(v4, v5, v6, v7, v8, v9, v10, v11, v15, v16);
    sub_22C4716F0(v12, v13);
  }

  else
  {
    sub_22C90B64C();
  }

  return sub_22C90B66C();
}

void PlanValue.init(from:)()
{
  sub_22C370030();
  sub_22C5AD698();
  v5 = v4;
  v6 = sub_22C3A5908(&qword_27D9BE968, &qword_22C91E3E0);
  sub_22C369824(v6);
  v8 = *(v7 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v9);
  sub_22C36A040();
  sub_22C5AB7C0();
  sub_22C388798();
  if (v1)
  {
    sub_22C36FF94(v0);
  }

  else
  {
    sub_22C3831C8();
    sub_22C90B26C();
    sub_22C386584();
    sub_22C3A5908(&qword_27D9BAC38, &qword_22C9190B0);
    sub_22C3890C8();
    sub_22C5AB8C8();
    sub_22C5AD798();
    sub_22C37F880();
    sub_22C90B2BC();
    v10 = sub_22C36A754();
    v11(v10);
    *v5 = v3;
    v5[1] = v2;
    v5[2] = v12;

    sub_22C386234();
  }

  sub_22C37B304();
  sub_22C36FB20();
}

uint64_t sub_22C5A86F8()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  sub_22C90B62C();
  PlanValue.hash(into:)();
  return sub_22C90B66C();
}

uint64_t PlanTool.toolIds.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t PlanTool.excludeToolIds.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t PlanTool.init(toolIds:excludeToolIds:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t PlanTool.init(builder:)@<X0>(uint64_t a1@<X8>)
{
  v1 = sub_22C5AD64C(a1);
  *v1 = MEMORY[0x277D84F90];
  v1[1] = 0;
  return v2();
}

uint64_t static PlanTool.== infix(_:_:)(uint64_t a1)
{
  v1 = sub_22C3707D8(a1);
  v3 = *(v2 + 8);
  v5 = *v4;
  v7 = *(v6 + 8);
  if (v1)
  {
    if (!v5 || (sub_22C46CDD8(v1, v5) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if (v3)
  {
    if (v7)
    {
      v8 = sub_22C36BBCC();
      if (sub_22C46CDD8(v8, v9))
      {
        return 1;
      }
    }
  }

  else if (!v7)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_22C5A8890(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7364496C6F6F74 && a2 == 0xE700000000000000;
  if (v4 || (sub_22C90B4FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x546564756C637865 && a2 == 0xEE007364496C6F6FLL)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C90B4FC();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_22C5A8960(char a1)
{
  if (a1)
  {
    return 0x546564756C637865;
  }

  else
  {
    return 0x7364496C6F6F74;
  }
}

uint64_t sub_22C5A89A4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_22C90B62C();
  a4(v8, v6);
  return sub_22C90B66C();
}

uint64_t sub_22C5A89F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C5A8890(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C5A8A20(uint64_t a1)
{
  v2 = sub_22C5AB97C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C5A8A5C(uint64_t a1)
{
  v2 = sub_22C5AB97C();

  return MEMORY[0x2821FE720](a1, v2);
}

void PlanTool.encode(to:)()
{
  sub_22C370030();
  v2 = v1;
  v3 = sub_22C3A5908(&qword_27D9BE980, &qword_22C91E3E8);
  sub_22C369824(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v8);
  sub_22C3717BC();
  v9 = *v0;
  v16 = v0[1];
  v10 = v2[3];
  v11 = v2[4];
  sub_22C387284(v2);
  v12 = sub_22C5AB97C();

  sub_22C37239C();
  sub_22C372390();
  sub_22C90B6CC();
  sub_22C3A5908(&qword_27D9BB5D0, &unk_22C9112A0);
  sub_22C379968(&qword_27D9BE7C0);
  sub_22C37A15C();
  sub_22C90B3AC();

  if (!v12)
  {
    sub_22C37A15C();
    sub_22C90B3AC();
  }

  v13 = *(v5 + 8);
  v14 = sub_22C371530();
  v15(v14);
  sub_22C3816B8();
  sub_22C36FB20();
}

void PlanTool.hash(into:)(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];
  if (!*v1)
  {
    sub_22C5AD860();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_7:
    sub_22C5AD860();
    return;
  }

  sub_22C5AD848();
  sub_22C4710DC(a1, v4);
  if (!v3)
  {
    goto LABEL_7;
  }

LABEL_3:
  sub_22C5AD848();
  v5 = sub_22C371530();

  sub_22C4710DC(v5, v6);
}

uint64_t PlanTool.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  sub_22C37B5C8();
  sub_22C90B64C();
  if (v2)
  {
    sub_22C4710DC(v15, v2);
  }

  if (v1)
  {
    v3 = sub_22C90B64C();
    v11 = sub_22C36ED3C(v3, v4, v5, v6, v7, v8, v9, v10, v14, v15[0]);
    sub_22C4710DC(v11, v12);
  }

  else
  {
    sub_22C90B64C();
  }

  return sub_22C90B66C();
}

void PlanTool.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22C370030();
  sub_22C5AD698();
  v13 = v12;
  v14 = sub_22C3A5908(&qword_27D9BE990, &unk_22C91E3F0);
  sub_22C369824(v14);
  v16 = v15;
  v18 = *(v17 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v19);
  v21 = &v23 - v20;
  sub_22C36A040();
  sub_22C5AB97C();
  sub_22C388798();
  if (v11)
  {
    sub_22C36FF94(v10);
  }

  else
  {
    v23 = v13;
    sub_22C3A5908(&qword_27D9BB5D0, &unk_22C9112A0);
    v24 = 0;
    sub_22C5AD628(&qword_28142F9E8);
    sub_22C37B084();
    sub_22C37F880();
    sub_22C90B2BC();
    v24 = 1;
    sub_22C37B084();
    sub_22C37F880();
    sub_22C90B2BC();
    (*(v16 + 8))(v21, v14);
    v22 = v23;
    *v23 = a10;
    v22[1] = a10;

    sub_22C386234();
  }

  sub_22C37B304();
  sub_22C36FB20();
}

uint64_t sub_22C5A8F20()
{
  v3 = *v0;
  sub_22C90B62C();
  PlanTool.hash(into:)(v2);
  return sub_22C90B66C();
}

void sub_22C5A8F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C370030();
  a19 = v21;
  a20 = v22;
  v97 = v20;
  v24 = v23;
  v26 = v25;
  v95 = v27;
  v28 = sub_22C90A17C();
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  sub_22C369838();
  v92 = v31 - v30;
  v32 = sub_22C9063DC();
  v33 = sub_22C369824(v32);
  v98 = v34;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v33);
  sub_22C369ABC();
  v39 = (v37 - v38);
  v41 = MEMORY[0x28223BE20](v40);
  v94 = &v91 - v42;
  MEMORY[0x28223BE20](v41);
  v44 = &v91 - v43;
  v45 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
  sub_22C903FBC();

  v46 = sub_22C9063CC();
  v47 = sub_22C90AACC();

  v48 = os_log_type_enabled(v46, v47);
  v96 = v26;
  v93 = v39;
  if (v48)
  {
    v49 = sub_22C36FB44();
    v91 = v45;
    v50 = v49;
    v51 = swift_slowAlloc();
    a10 = v51;
    *v50 = 136315138;
    *(v50 + 4) = sub_22C36F9F4(v96, v24, &a10);
    _os_log_impl(&dword_22C366000, v46, v47, "Loading plan overrides json in %s", v50, 0xCu);
    sub_22C36FF94(v51);
    sub_22C36D69C();
    v52 = v32;
    v53 = v98;
    v54 = v91;
    sub_22C3699EC();

    v55 = *(v53 + 8);
    v56 = sub_22C37B9B0();
    v55(v56);
  }

  else
  {

    v55 = *(v98 + 8);
    (v55)(v44, v32);
    v52 = v32;
    v54 = v45;
  }

  v57 = v24;
  v58 = sub_22C90A0EC();
  v59 = [v54 fileExistsAtPath_];

  if (!v59 || (sub_22C90A43C() & 1) == 0)
  {
    v72 = v52;
    v73 = v94;
    sub_22C903FBC();

    v74 = sub_22C9063CC();
    v75 = sub_22C90AADC();

    if (os_log_type_enabled(v74, v75))
    {
      sub_22C36FB44();
      v76 = v54;
      v77 = v55;
      v78 = sub_22C375EEC();
      a10 = v78;
      *v59 = 136315138;
      *(v59 + 4) = sub_22C36F9F4(v96, v57, &a10);
      _os_log_impl(&dword_22C366000, v74, v75, "Plan override json file does not exist: %s", v59, 0xCu);
      sub_22C36FF94(v78);
      sub_22C3699EC();
      sub_22C36D69C();

      sub_22C5AD7E4();
      v77(v73, v72);
    }

    else
    {

      sub_22C5AD7E4();
      (v55)(v73, v72);
    }

    goto LABEL_16;
  }

  v60 = v54;
  sub_22C90A15C();
  v61 = v97;
  v62 = sub_22C90A0CC();
  if (v61)
  {
    v70 = v55;
    v97 = 0;
    v71 = v93;
    sub_22C903FBC();

    v79 = v61;
    v80 = sub_22C9063CC();
    v81 = sub_22C90AADC();

    if (os_log_type_enabled(v80, v81))
    {
      v83 = swift_slowAlloc();
      v94 = v52;
      v84 = v83;
      swift_slowAlloc();
      v85 = sub_22C375EEC();
      a10 = v85;
      *v84 = 136315394;
      *(v84 + 4) = sub_22C36F9F4(v96, v24, &a10);
      *(v84 + 12) = 2112;
      v86 = v61;
      v87 = _swift_stdlib_bridgeErrorToNSError();
      *(v84 + 14) = v87;
      *v71 = v87;
      _os_log_impl(&dword_22C366000, v80, v81, "Error parsing Plan Override JSON file at %s: %@", v84, 0x16u);
      sub_22C5AB9D0(v71);
      sub_22C36D69C();
      sub_22C36FF94(v85);
      sub_22C3699EC();
      sub_22C3699EC();

      sub_22C5AD7E4();
      v88 = v93;
      v89 = v94;
    }

    else
    {

      sub_22C5AD7E4();
      v88 = v71;
      v89 = v52;
    }

    v70(v88, v89);
LABEL_16:
    v90 = 0;
    goto LABEL_17;
  }

  sub_22C5A9928(v62, v63, v64, v65, v66, v67, v68, v69, v91, v92);
  v97 = 0;

  v90 = a10;
LABEL_17:
  *v95 = v90;
  sub_22C36FB20();
}

void sub_22C5A9504()
{
  sub_22C370030();
  v60 = v2;
  v61 = v0;
  v4 = v3;
  v6 = v5;
  v66 = *MEMORY[0x277D85DE8];
  v7 = sub_22C9063DC();
  v8 = sub_22C369824(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22C369ABC();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  v58 = &v55 - v17;
  v18 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
  v62 = v6;
  v63 = MEMORY[0x277D84F90];
  v19 = sub_22C90A0EC();
  v64 = 0;
  v20 = [v18 contentsOfDirectoryAtPath:v19 error:&v64];

  v21 = v64;
  if (v20)
  {
    v59 = v18;
    v55 = v15;
    v56 = v10;
    v57 = v7;
    v22 = sub_22C90A5EC();
    v23 = v21;

    v24 = 0;
    v25 = *(v22 + 16);
    v26 = (v22 + 40);
    while (v25 != v24)
    {
      if (v24 >= *(v22 + 16))
      {
        __break(1u);
      }

      v27 = *(v26 - 1);
      v28 = *v26;
      v64 = v62;
      v65 = v4;

      MEMORY[0x2318B7850](47, 0xE100000000000000);
      MEMORY[0x2318B7850](v27, v28);

      sub_22C5A8F84(v64, v65, v29, v30, v31, v32, v33, v34, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66);
      if (v1)
      {

        v39 = v55;
        sub_22C903FBC();

        v40 = sub_22C9063CC();
        v41 = sub_22C90AADC();

        if (os_log_type_enabled(v40, v41))
        {
          sub_22C36FB44();
          v42 = sub_22C375EEC();
          v64 = v42;
          *(v22 + 4) = sub_22C5AD828(4.8149e-34);
          sub_22C3729C4(&dword_22C366000, v43, v44, "Error parsing Plan Override JSON files in %s");
          sub_22C36FF94(v42);
          sub_22C3699EC();
          sub_22C36D69C();
        }

        (v56[1])(v39, v57);
        v37 = v60;
        goto LABEL_15;
      }

      if (v64)
      {
        sub_22C3CE380(v64);
      }

      v26 += 2;
      ++v24;
    }

    v38 = v63;
    if (*(v63 + 16))
    {

      *v60 = v38;
    }

    else
    {

      v46 = v58;
      sub_22C903FBC();

      v47 = sub_22C9063CC();
      v48 = sub_22C90AACC();

      v49 = os_log_type_enabled(v47, v48);
      v51 = v59;
      v50 = v60;
      if (v49)
      {
        sub_22C36FB44();
        v52 = sub_22C375EEC();
        v64 = v52;
        *(v22 + 4) = sub_22C5AD828(4.8149e-34);
        sub_22C3729C4(&dword_22C366000, v53, v54, "No Plan Overrides found at path: %s");
        sub_22C36FF94(v52);
        sub_22C3699EC();
        sub_22C36D69C();
      }

      (v56[1])(v46, v57);
      *v50 = 0;
    }
  }

  else
  {
    v35 = v64;
    v36 = sub_22C90030C();

    swift_willThrow();
    v37 = v60;
LABEL_15:
    *v37 = 0;
  }

  v45 = *MEMORY[0x277D85DE8];
  sub_22C37B304();
  sub_22C36FB20();
}

void sub_22C5A9928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22C370030();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v48 = v16;
  v47 = sub_22C9063DC();
  v17 = sub_22C369824(v47);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22C369ABC();
  v24 = (v22 - v23);
  MEMORY[0x28223BE20](v25);
  v27 = &v46 - v26;
  v28 = sub_22C8FFECC();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  v49 = sub_22C8FFEBC();
  sub_22C903FBC();
  v31 = sub_22C9063CC();
  v32 = sub_22C90AACC();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_22C366000, v31, v32, "Decoding Plan Override JSON", v33, 2u);
    v11 = v10;
    sub_22C3699EC();
  }

  v34 = *(v19 + 8);
  v35 = v27;
  v36 = v47;
  v34(v35, v47);

  sub_22C766760(v15, v13);
  sub_22C386584();
  sub_22C5AD524();
  sub_22C8FFEAC();
  if (v11)
  {
    sub_22C38B120(v15, v13);
    sub_22C903FBC();
    v37 = v11;
    v38 = sub_22C9063CC();
    v39 = sub_22C90AADC();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = v34;
      v41 = sub_22C36FB44();
      v42 = swift_slowAlloc();
      *v41 = 138412290;
      v43 = v11;
      v44 = _swift_stdlib_bridgeErrorToNSError();
      *(v41 + 4) = v44;
      *v42 = v44;
      _os_log_impl(&dword_22C366000, v38, v39, "Error parsing Plan Override JSON: %@", v41, 0xCu);
      sub_22C5AB9D0(v42);
      sub_22C3699EC();
      v34 = v40;
      sub_22C3699EC();
    }

    else
    {
    }

    v34(v24, v36);
    a10 = 0;
  }

  else
  {

    sub_22C38B120(v15, v13);
  }

  *v48 = a10;
  sub_22C36FB20();
}

uint64_t sub_22C5A9C5C()
{
  v0 = sub_22C3A5908(&qword_27D9BE998, &qword_22C91E400);
  sub_22C3F0160(v0, qword_27D9BE6C8);
  v1 = sub_22C36BA00();
  sub_22C37AA60(v1, v2);
  swift_getKeyPath();

  sub_22C90024C();
}

uint64_t static Statement.creationTimestampDesc.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27D9BA6F0 != -1)
  {
    swift_once();
  }

  v2 = sub_22C3A5908(&qword_27D9BE998, &qword_22C91E400);
  v3 = sub_22C37AA60(v2, qword_27D9BE6C8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

BOOL sub_22C5A9D9C()
{
  v1 = *(v0 + 176);
  if (!v1)
  {
    return 1;
  }

  v2 = *(v1 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = 0;
  v4 = MEMORY[0x277D84F90];
LABEL_4:
  v5 = (v1 + 40 + 16 * v3);
  while (v2 != v3)
  {
    if (v3 >= *(v1 + 16))
    {
      __break(1u);
      goto LABEL_18;
    }

    ++v3;
    v6 = v5 + 2;
    v7 = *(v5 - 1);
    v8 = *v5;

    v9 = sub_22C90B21C();

    v5 = v6;
    if (v9 < 9)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = *(v4 + 16);
        sub_22C593940();
        v4 = v12;
      }

      v10 = *(v4 + 16);
      if (v10 >= *(v4 + 24) >> 1)
      {
        sub_22C593940();
        v4 = v13;
      }

      *(v4 + 16) = v10 + 1;
      *(v4 + v10 + 32) = v9;
      goto LABEL_4;
    }
  }

  if (qword_27D9BA6D8 == -1)
  {
    goto LABEL_14;
  }

LABEL_18:
  swift_once();
LABEL_14:
  sub_22C8B5340();
  sub_22C3743B4();
  return (&unk_283FAF570 & 1) != 0;
}

void sub_22C5A9F18()
{
  sub_22C370030();
  v2 = v1;
  v3 = sub_22C9063DC();
  v4 = sub_22C369824(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22C369ABC();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v62 - v13;
  v15 = sub_22C908EAC();
  v16 = sub_22C369824(v15);
  v73 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22C369ABC();
  v71 = v20 - v21;
  v23 = MEMORY[0x28223BE20](v22);
  v76 = &v62 - v24;
  MEMORY[0x28223BE20](v23);
  v26 = &v62 - v25;
  memcpy(v78, v0, 0xD0uLL);
  if (v78[16] == 1 || (v65 = v6, v72 = v78[16], v27 = v78[17], sub_22C908FFC(), v28 = sub_22C908FEC(), v1))
  {
LABEL_30:
    sub_22C37B304();
    sub_22C36FB20();
    return;
  }

  v66 = v27;
  v64 = v3;
  v74 = v28;
  v29 = v72;
  if (!v72)
  {
LABEL_15:
    v42 = v66;
    if (v66)
    {
      v43 = v14;
      v76 = v15;
      v44 = 0;
      v45 = *(v66 + 16);
      v46 = (v66 + 40);
      while (v45 != v44)
      {
        if (v44 >= *(v42 + 16))
        {
          goto LABEL_32;
        }

        v47 = *(v46 - 1);
        v48 = *v46;

        sub_22C90900C();
        if (!v2)
        {

          v57 = v43;
          sub_22C903FBC();

          sub_22C472384(v78, v77);
          v58 = sub_22C9063CC();
          v59 = sub_22C90AACC();

          sub_22C4723E0(v78);
          if (os_log_type_enabled(v58, v59))
          {
            v60 = swift_slowAlloc();
            v77[0] = swift_slowAlloc();
            *v60 = 136315394;
            v61 = sub_22C36F9F4(v47, v48, v77);

            *(v60 + 4) = v61;
            *(v60 + 12) = 2080;
            *(v60 + 14) = sub_22C36F9F4(v78[0], v78[1], v77);
            _os_log_impl(&dword_22C366000, v58, v59, "PlanOverridesGraphService: Found excluded override plan tool id: %s. Skipping override: %s", v60, 0x16u);
            swift_arrayDestroy();
            sub_22C3699EC();
            sub_22C3699EC();
          }

          else
          {
          }

          (*(v65 + 8))(v57, v64);

          (*(v73 + 8))(v71, v76);
          goto LABEL_30;
        }

        ++v44;

        v2 = 0;
        v46 += 2;
        v42 = v66;
      }
    }

    goto LABEL_30;
  }

  v62 = v11;
  v63 = v14;
  v30 = 0;
  v31 = *(v72 + 16);
  v69 = (v73 + 16);
  v70 = v31;
  v67 = v73 + 32;
  v68 = v73 + 8;
  v32 = (v72 + 40);
  v79 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v70 == v30)
    {
      v14 = v63;
      goto LABEL_15;
    }

    if (v30 >= *(v29 + 16))
    {
      break;
    }

    v33 = v2;
    v34 = *(v32 - 1);
    v35 = *v32;

    sub_22C37B5F4();
    sub_22C90900C();
    v75 = v33;
    if (v33)
    {

      v49 = v62;
      sub_22C903FBC();

      sub_22C472384(v78, v77);
      v50 = sub_22C9063CC();
      v51 = sub_22C90AACC();

      sub_22C4723E0(v78);
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v77[0] = swift_slowAlloc();
        *v52 = 136315394;
        v53 = sub_22C37B5F4();
        v56 = sub_22C36F9F4(v53, v54, v55);

        *(v52 + 4) = v56;
        *(v52 + 12) = 2080;
        *(v52 + 14) = sub_22C36F9F4(v78[0], v78[1], v77);
        _os_log_impl(&dword_22C366000, v50, v51, "PlanOverridesGraphService: Failed to find override plan tool id: %s. Skipping override: %s", v52, 0x16u);
        swift_arrayDestroy();
        sub_22C3699EC();
        sub_22C3699EC();
      }

      else
      {
      }

      (*(v65 + 8))(v49, v64);

      goto LABEL_30;
    }

    (*v69)(v76, v26, v15);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v39 = *(v79 + 16);
      sub_22C591C4C();
      v79 = v40;
    }

    v36 = v75;
    v37 = *(v79 + 16);
    if (v37 >= *(v79 + 24) >> 1)
    {
      sub_22C591C4C();
      v79 = v41;
    }

    v38 = v73;
    (*(v73 + 8))(v26, v15);
    *(v79 + 16) = v37 + 1;
    (*(v38 + 32))(v79 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v37, v76, v15);
    v32 += 2;
    ++v30;
    v2 = v36;
    v29 = v72;
  }

  __break(1u);
LABEL_32:
  __break(1u);
}

unint64_t sub_22C5AA5DC()
{
  result = qword_27D9BE750;
  if (!qword_27D9BE750)
  {
    sub_22C3AC1A0(&qword_27D9BE730, &qword_22C91E320);
    sub_22C5AA660();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE750);
  }

  return result;
}

unint64_t sub_22C5AA660()
{
  result = qword_27D9BE758;
  if (!qword_27D9BE758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE758);
  }

  return result;
}

uint64_t sub_22C5AA6B4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_22C5AA6F8(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_22C5AA740(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

unint64_t sub_22C5AA784()
{
  result = qword_27D9BE768;
  if (!qword_27D9BE768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE768);
  }

  return result;
}

unint64_t sub_22C5AA7D8()
{
  result = qword_27D9BE770;
  if (!qword_27D9BE770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE770);
  }

  return result;
}

unint64_t sub_22C5AA82C()
{
  result = qword_27D9BE778;
  if (!qword_27D9BE778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE778);
  }

  return result;
}

unint64_t sub_22C5AA880()
{
  result = qword_27D9BE788;
  if (!qword_27D9BE788)
  {
    sub_22C3AC1A0(&qword_27D9BE780, &qword_22C91E338);
    sub_22C5ABC90(&qword_27D9BE790, type metadata accessor for ContextRule);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE788);
  }

  return result;
}

uint64_t type metadata accessor for ContextRule()
{
  result = qword_27D9BEA08;
  if (!qword_27D9BEA08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_22C5AA980()
{
  result = qword_27D9BE7A0;
  if (!qword_27D9BE7A0)
  {
    sub_22C3AC1A0(&qword_27D9BE798, &unk_22C91E340);
    sub_22C5AAA04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE7A0);
  }

  return result;
}

unint64_t sub_22C5AAA04()
{
  result = qword_27D9BE7A8;
  if (!qword_27D9BE7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE7A8);
  }

  return result;
}

unint64_t sub_22C5AAA58()
{
  result = qword_27D9BE7B0;
  if (!qword_27D9BE7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE7B0);
  }

  return result;
}

unint64_t sub_22C5AAAAC()
{
  result = qword_27D9BE7B8;
  if (!qword_27D9BE7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE7B8);
  }

  return result;
}

unint64_t sub_22C5AAB00()
{
  result = qword_27D9BE7D0;
  if (!qword_27D9BE7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE7D0);
  }

  return result;
}

unint64_t sub_22C5AAB54()
{
  result = qword_27D9BE7D8;
  if (!qword_27D9BE7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE7D8);
  }

  return result;
}

unint64_t sub_22C5AABA8()
{
  result = qword_27D9BE7E0;
  if (!qword_27D9BE7E0)
  {
    sub_22C3AC1A0(&qword_27D9BE780, &qword_22C91E338);
    sub_22C5ABC90(&qword_27D9BE7E8, type metadata accessor for ContextRule);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE7E0);
  }

  return result;
}

unint64_t sub_22C5AAC5C()
{
  result = qword_27D9BE7F0;
  if (!qword_27D9BE7F0)
  {
    sub_22C3AC1A0(&qword_27D9BE798, &unk_22C91E340);
    sub_22C5AACE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE7F0);
  }

  return result;
}

unint64_t sub_22C5AACE0()
{
  result = qword_27D9BE7F8;
  if (!qword_27D9BE7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE7F8);
  }

  return result;
}

unint64_t sub_22C5AAD34()
{
  result = qword_27D9BE800;
  if (!qword_27D9BE800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE800);
  }

  return result;
}

unint64_t sub_22C5AAD88()
{
  result = qword_27D9BE808;
  if (!qword_27D9BE808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE808);
  }

  return result;
}

uint64_t sub_22C5AADDC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_22C3AC1A0(&qword_27D9BB5D0, &unk_22C9112A0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22C5AAE48()
{
  result = qword_27D9BE818;
  if (!qword_27D9BE818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE818);
  }

  return result;
}

unint64_t sub_22C5AAE9C()
{
  result = qword_27D9BE820;
  if (!qword_27D9BE820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE820);
  }

  return result;
}

unint64_t sub_22C5AAEF0()
{
  result = qword_27D9BE830;
  if (!qword_27D9BE830)
  {
    sub_22C3AC1A0(&qword_27D9BE828, &qword_22C91E360);
    sub_22C5AAF74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE830);
  }

  return result;
}

unint64_t sub_22C5AAF74()
{
  result = qword_27D9BE838;
  if (!qword_27D9BE838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE838);
  }

  return result;
}

unint64_t sub_22C5AAFC8()
{
  result = qword_27D9BE848;
  if (!qword_27D9BE848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE848);
  }

  return result;
}

unint64_t sub_22C5AB01C()
{
  result = qword_27D9BE850;
  if (!qword_27D9BE850)
  {
    sub_22C3AC1A0(&qword_27D9BE828, &qword_22C91E360);
    sub_22C5AB0A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE850);
  }

  return result;
}

unint64_t sub_22C5AB0A0()
{
  result = qword_27D9BE858;
  if (!qword_27D9BE858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE858);
  }

  return result;
}

unint64_t sub_22C5AB0F4()
{
  result = qword_27D9BE868;
  if (!qword_27D9BE868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE868);
  }

  return result;
}

unint64_t sub_22C5AB148()
{
  result = qword_27D9BE878;
  if (!qword_27D9BE878)
  {
    sub_22C3AC1A0(&qword_27D9BE870, &qword_22C91E378);
    sub_22C5ABC90(&qword_27D9BE880, MEMORY[0x277D72D58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE878);
  }

  return result;
}

unint64_t sub_22C5AB1FC()
{
  result = qword_27D9BE890;
  if (!qword_27D9BE890)
  {
    sub_22C3AC1A0(&qword_27D9BE870, &qword_22C91E378);
    sub_22C5ABC90(&qword_27D9BE898, MEMORY[0x277D72D58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE890);
  }

  return result;
}

unint64_t sub_22C5AB2B0()
{
  result = qword_27D9BE8A8;
  if (!qword_27D9BE8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE8A8);
  }

  return result;
}

unint64_t sub_22C5AB304()
{
  result = qword_27D9BE8B8;
  if (!qword_27D9BE8B8)
  {
    sub_22C3AC1A0(&qword_27D9BE8B0, &qword_22C91E390);
    sub_22C5AB388();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE8B8);
  }

  return result;
}

unint64_t sub_22C5AB388()
{
  result = qword_27D9BE8C0;
  if (!qword_27D9BE8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE8C0);
  }

  return result;
}

unint64_t sub_22C5AB3DC()
{
  result = qword_27D9BE8C8;
  if (!qword_27D9BE8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE8C8);
  }

  return result;
}

unint64_t sub_22C5AB430()
{
  result = qword_27D9BE8D8;
  if (!qword_27D9BE8D8)
  {
    sub_22C3AC1A0(&qword_27D9BE8B0, &qword_22C91E390);
    sub_22C5AB4B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE8D8);
  }

  return result;
}

unint64_t sub_22C5AB4B4()
{
  result = qword_27D9BE8E0;
  if (!qword_27D9BE8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE8E0);
  }

  return result;
}

unint64_t sub_22C5AB508()
{
  result = qword_27D9BE8E8;
  if (!qword_27D9BE8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE8E8);
  }

  return result;
}

unint64_t sub_22C5AB55C()
{
  result = qword_27D9BE8F8;
  if (!qword_27D9BE8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE8F8);
  }

  return result;
}

unint64_t sub_22C5AB5B0()
{
  result = qword_27D9BE900;
  if (!qword_27D9BE900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE900);
  }

  return result;
}

unint64_t sub_22C5AB604()
{
  result = qword_27D9BE918;
  if (!qword_27D9BE918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE918);
  }

  return result;
}

uint64_t sub_22C5AB658(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextRule();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C5AB6BC(uint64_t a1)
{
  v2 = type metadata accessor for ContextRule();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22C5AB718()
{
  result = qword_27D9BE928;
  if (!qword_27D9BE928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE928);
  }

  return result;
}

unint64_t sub_22C5AB76C()
{
  result = qword_27D9BE940;
  if (!qword_27D9BE940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE940);
  }

  return result;
}

unint64_t sub_22C5AB7C0()
{
  result = qword_27D9BE958;
  if (!qword_27D9BE958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE958);
  }

  return result;
}

unint64_t sub_22C5AB814()
{
  result = qword_27D9BE960;
  if (!qword_27D9BE960)
  {
    sub_22C3AC1A0(&qword_27D9BAC38, &qword_22C9190B0);
    sub_22C5ABC90(&qword_27D9BDB88, MEMORY[0x277D1DF58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE960);
  }

  return result;
}

unint64_t sub_22C5AB8C8()
{
  result = qword_27D9BE970;
  if (!qword_27D9BE970)
  {
    sub_22C3AC1A0(&qword_27D9BAC38, &qword_22C9190B0);
    sub_22C5ABC90(&qword_27D9BE978, MEMORY[0x277D1DF58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE970);
  }

  return result;
}

unint64_t sub_22C5AB97C()
{
  result = qword_27D9BE988;
  if (!qword_27D9BE988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE988);
  }

  return result;
}

uint64_t sub_22C5AB9D0(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BB158, qword_22C910FD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22C5ABA3C()
{
  result = qword_27D9BE9A0;
  if (!qword_27D9BE9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE9A0);
  }

  return result;
}

unint64_t sub_22C5ABA94()
{
  result = qword_27D9BE9A8;
  if (!qword_27D9BE9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE9A8);
  }

  return result;
}

unint64_t sub_22C5ABAEC()
{
  result = qword_27D9BE9B0;
  if (!qword_27D9BE9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE9B0);
  }

  return result;
}

unint64_t sub_22C5ABB44()
{
  result = qword_27D9BE9B8;
  if (!qword_27D9BE9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE9B8);
  }

  return result;
}

unint64_t sub_22C5ABB9C()
{
  result = qword_27D9BE9C0;
  if (!qword_27D9BE9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE9C0);
  }

  return result;
}

unint64_t sub_22C5ABBF4()
{
  result = qword_27D9BE9C8;
  if (!qword_27D9BE9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE9C8);
  }

  return result;
}

uint64_t sub_22C5ABC90(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_22C5ABCDC()
{
  result = qword_27D9BE9D8;
  if (!qword_27D9BE9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE9D8);
  }

  return result;
}

unint64_t sub_22C5ABD34()
{
  result = qword_27D9BE9E0;
  if (!qword_27D9BE9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE9E0);
  }

  return result;
}

unint64_t sub_22C5ABD8C()
{
  result = qword_27D9BE9E8;
  if (!qword_27D9BE9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE9E8);
  }

  return result;
}

unint64_t sub_22C5ABDE4()
{
  result = qword_27D9BE9F0;
  if (!qword_27D9BE9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE9F0);
  }

  return result;
}

unint64_t sub_22C5ABE3C()
{
  result = qword_27D9BE9F8;
  if (!qword_27D9BE9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE9F8);
  }

  return result;
}

unint64_t sub_22C5ABE94()
{
  result = qword_27D9BEA00;
  if (!qword_27D9BEA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEA00);
  }

  return result;
}

uint64_t sub_22C5ABF08(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_22C5ABF20(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_22C5ABF4C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 208))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22C5ABF8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 208) = 1;
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

    *(result + 208) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22C5AC040(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 9))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22C5AC080(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_22C5AC0F8()
{
  sub_22C90355C();
  if (v0 <= 0x3F)
  {
    sub_22C5AC18C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22C5AC18C()
{
  if (!qword_27D9BEA18)
  {
    v0 = sub_22C90AC6C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D9BEA18);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for EventResultOutputEnum(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_22C5AC2E8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22C5AC33C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_22C5AC3A0(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22C5AC3F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

_BYTE *sub_22C5AC53C(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = sub_22C5AD750(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_22C5AC614(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = sub_22C5AD750(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Statement.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF2)
  {
    v6 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 13;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_22C5AC7D8(unsigned __int8 *a1, int a2)
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

  return sub_22C37E27C(a1);
}

_BYTE *sub_22C5AC824(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_22C5AC8D4()
{
  result = qword_27D9BEA20;
  if (!qword_27D9BEA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEA20);
  }

  return result;
}

unint64_t sub_22C5AC92C()
{
  result = qword_27D9BEA28;
  if (!qword_27D9BEA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEA28);
  }

  return result;
}

unint64_t sub_22C5AC984()
{
  result = qword_27D9BEA30;
  if (!qword_27D9BEA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEA30);
  }

  return result;
}

unint64_t sub_22C5AC9DC()
{
  result = qword_27D9BEA38;
  if (!qword_27D9BEA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEA38);
  }

  return result;
}

unint64_t sub_22C5ACA34()
{
  result = qword_27D9BEA40;
  if (!qword_27D9BEA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEA40);
  }

  return result;
}

unint64_t sub_22C5ACA8C()
{
  result = qword_27D9BEA48;
  if (!qword_27D9BEA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEA48);
  }

  return result;
}

unint64_t sub_22C5ACAE4()
{
  result = qword_27D9BEA50;
  if (!qword_27D9BEA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEA50);
  }

  return result;
}

unint64_t sub_22C5ACB3C()
{
  result = qword_27D9BEA58;
  if (!qword_27D9BEA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEA58);
  }

  return result;
}

unint64_t sub_22C5ACB94()
{
  result = qword_27D9BEA60;
  if (!qword_27D9BEA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEA60);
  }

  return result;
}

unint64_t sub_22C5ACBEC()
{
  result = qword_27D9BEA68;
  if (!qword_27D9BEA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEA68);
  }

  return result;
}

unint64_t sub_22C5ACC44()
{
  result = qword_27D9BEA70;
  if (!qword_27D9BEA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEA70);
  }

  return result;
}

unint64_t sub_22C5ACC9C()
{
  result = qword_27D9BEA78;
  if (!qword_27D9BEA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEA78);
  }

  return result;
}

unint64_t sub_22C5ACCF4()
{
  result = qword_27D9BEA80;
  if (!qword_27D9BEA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEA80);
  }

  return result;
}

unint64_t sub_22C5ACD4C()
{
  result = qword_27D9BEA88;
  if (!qword_27D9BEA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEA88);
  }

  return result;
}

unint64_t sub_22C5ACDA4()
{
  result = qword_27D9BEA90;
  if (!qword_27D9BEA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEA90);
  }

  return result;
}

unint64_t sub_22C5ACDFC()
{
  result = qword_27D9BEA98;
  if (!qword_27D9BEA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEA98);
  }

  return result;
}

unint64_t sub_22C5ACE54()
{
  result = qword_27D9BEAA0;
  if (!qword_27D9BEAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEAA0);
  }

  return result;
}

unint64_t sub_22C5ACEAC()
{
  result = qword_27D9BEAA8;
  if (!qword_27D9BEAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEAA8);
  }

  return result;
}

unint64_t sub_22C5ACF04()
{
  result = qword_27D9BEAB0;
  if (!qword_27D9BEAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEAB0);
  }

  return result;
}

unint64_t sub_22C5ACF5C()
{
  result = qword_27D9BEAB8;
  if (!qword_27D9BEAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEAB8);
  }

  return result;
}

unint64_t sub_22C5ACFB4()
{
  result = qword_27D9BEAC0;
  if (!qword_27D9BEAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEAC0);
  }

  return result;
}

unint64_t sub_22C5AD00C()
{
  result = qword_27D9BEAC8;
  if (!qword_27D9BEAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEAC8);
  }

  return result;
}

unint64_t sub_22C5AD064()
{
  result = qword_27D9BEAD0;
  if (!qword_27D9BEAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEAD0);
  }

  return result;
}

unint64_t sub_22C5AD0BC()
{
  result = qword_27D9BEAD8;
  if (!qword_27D9BEAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEAD8);
  }

  return result;
}

unint64_t sub_22C5AD114()
{
  result = qword_27D9BEAE0;
  if (!qword_27D9BEAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEAE0);
  }

  return result;
}

unint64_t sub_22C5AD16C()
{
  result = qword_27D9BEAE8;
  if (!qword_27D9BEAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEAE8);
  }

  return result;
}

unint64_t sub_22C5AD1C4()
{
  result = qword_27D9BEAF0;
  if (!qword_27D9BEAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEAF0);
  }

  return result;
}

unint64_t sub_22C5AD21C()
{
  result = qword_27D9BEAF8;
  if (!qword_27D9BEAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEAF8);
  }

  return result;
}

unint64_t sub_22C5AD274()
{
  result = qword_27D9BEB00;
  if (!qword_27D9BEB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEB00);
  }

  return result;
}

unint64_t sub_22C5AD2CC()
{
  result = qword_27D9BEB08;
  if (!qword_27D9BEB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEB08);
  }

  return result;
}

unint64_t sub_22C5AD324()
{
  result = qword_27D9BEB10;
  if (!qword_27D9BEB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEB10);
  }

  return result;
}

unint64_t sub_22C5AD37C()
{
  result = qword_27D9BEB18;
  if (!qword_27D9BEB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEB18);
  }

  return result;
}

unint64_t sub_22C5AD3D4()
{
  result = qword_27D9BEB20;
  if (!qword_27D9BEB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEB20);
  }

  return result;
}

unint64_t sub_22C5AD428()
{
  result = qword_27D9BEB28;
  if (!qword_27D9BEB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEB28);
  }

  return result;
}

unint64_t sub_22C5AD47C()
{
  result = qword_27D9BEB30;
  if (!qword_27D9BEB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEB30);
  }

  return result;
}

unint64_t sub_22C5AD4D0()
{
  result = qword_27D9BEB38;
  if (!qword_27D9BEB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEB38);
  }

  return result;
}

unint64_t sub_22C5AD524()
{
  result = qword_27D9BEB40;
  if (!qword_27D9BEB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEB40);
  }

  return result;
}

uint64_t sub_22C5AD628(unint64_t *a1)
{

  return sub_22C5AADDC(a1);
}

void sub_22C5AD6A4()
{
  v0[18] = 0;
  v0[19] = 0;
  v0[16] = 0;
}

uint64_t sub_22C5AD738()
{
  v2 = *v0;
  v3 = v0[1];
}

void sub_22C5AD784()
{
  v0[20] = 0;
  v0[21] = 0;
  v0[17] = 1;
}

uint64_t sub_22C5AD808()
{

  return sub_22C4722FC(v0, 0);
}

uint64_t sub_22C5AD828(float a1)
{
  *v1 = a1;
  v5 = *(v3 - 120);

  return sub_22C36F9F4(v5, v2, (v3 - 104));
}

uint64_t sub_22C5AD848()
{

  return sub_22C90B64C();
}

uint64_t sub_22C5AD860()
{

  return sub_22C90B64C();
}

void sub_22C5AD8D0()
{
  sub_22C36BA7C();
  v2 = v1;
  v4 = v3;
  v6 = v5(0);
  v7 = sub_22C369824(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22C369ABC();
  sub_22C36D6DC();
  MEMORY[0x28223BE20](v10);
  sub_22C36BA64();
  v35 = v12;
  v13 = *(v4 + 16);
  if (v13 < 2)
  {
LABEL_2:
    sub_22C36CC48();
    return;
  }

  v29 = v2;
  v14 = 0;
  v15 = v13 >> 1;
  v16 = v13 - 1;
  v30 = v13 >> 1;
  v31 = v11;
  v32 = (v11 + 40);
  while (1)
  {
    if (v14 == v16)
    {
      goto LABEL_11;
    }

    v17 = *(v4 + 16);
    if (v14 >= v17)
    {
      break;
    }

    v18 = v0;
    v19 = *(v11 + 80);
    sub_22C36BA94();
    v34 = v20;
    v21 = v4 + v20;
    v23 = *(v22 + 72);
    v24 = v4;
    v25 = *(v22 + 16);
    v33 = v23 * v14;
    v25(v35, v21 + v23 * v14, v6);
    if (v16 >= v17)
    {
      goto LABEL_14;
    }

    v26 = v23 * v16;
    v27 = v21 + v23 * v16;
    v0 = v18;
    v25(v18, v27, v6);
    v4 = v24;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = v29(v24);
    }

    v28 = *v32;
    (*v32)(v4 + v34 + v33, v18, v6);
    if (v16 >= *(v4 + 16))
    {
      goto LABEL_15;
    }

    v28(v4 + v34 + v26, v35, v6);
    v15 = v30;
    v11 = v31;
LABEL_11:
    ++v14;
    --v16;
    if (v15 == v14)
    {
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
}

uint64_t sub_22C5ADAD8(uint64_t a1, unint64_t a2)
{
  if (a2 > 2)
  {
    return 1;
  }

  else
  {
    return qword_22C9205B0[a2];
  }
}

uint64_t sub_22C5ADAF8(uint64_t a1)
{
  v2 = sub_22C5C9648();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22C5ADB34(uint64_t a1)
{
  v2 = sub_22C5C9648();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_22C5ADB94@<X0>(void *a1@<X8>)
{
  v22 = a1;
  v29 = sub_22C9089DC();
  v1 = *(v29 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v29);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22C908A0C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_22C9087DC();
  v31 = result;
  v30 = result;
  v11 = *(result + 16);
  v27 = v6 + 8;
  v28 = v6 + 16;
  v12 = (v1 + 88);
  v26 = *MEMORY[0x277D1E858];
  v13 = *MEMORY[0x277D1E6F8];
  v24 = *MEMORY[0x277D1E798];
  v25 = v13;
  v23 = *MEMORY[0x277D1E778];
  v14 = (v1 + 8);
  while (1)
  {
    v15 = v11;
    if (!v11)
    {
LABEL_15:
      MEMORY[0x28223BE20](result);
      *(&v22 - 2) = &v31;
      sub_22C5C8A88(sub_22C5CA270, v11, v21, v22);
    }

    if (v11 > *(v30 + 16))
    {
      break;
    }

    --v11;
    (*(v6 + 16))(v9, v30 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * (v15 - 1), v5);
    sub_22C9089EC();
    (*(v6 + 8))(v9, v5);
    v16 = v29;
    v17 = (*v12)(v4, v29);
    result = (*v14)(v4, v16);
    if (v17 == v26 || v17 == v25 || v17 == v24 || v17 == v23)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22C5ADE64()
{
  v2 = sub_22C37335C();
  v4 = sub_22C3A5908(v2, v3);
  sub_22C369914(v4);
  v6 = *(v5 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v7);
  sub_22C37BDA4();
  v8 = sub_22C36D39C();
  sub_22C4E719C(v8, v9, &qword_27D9BD820, &unk_22C9195C0);
  v10 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime20PlanOverridesService_userLocale;
  sub_22C5CA80C();
  swift_beginAccess();
  sub_22C5CA290(v1, v0 + v10);
  return swift_endAccess();
}

uint64_t sub_22C5ADF1C()
{
  sub_22C369980();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_22C9063DC();
  v1[4] = v3;
  sub_22C3699B8(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = sub_22C3856B8();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v7 = sub_22C3A5908(&qword_27D9BB138, &qword_22C90DB70);
  sub_22C369914(v7);
  v9 = *(v8 + 64);
  v1[13] = sub_22C3699D4();
  v10 = sub_22C90046C();
  v1[14] = v10;
  sub_22C3699B8(v10);
  v1[15] = v11;
  v13 = *(v12 + 64);
  v1[16] = sub_22C3856B8();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v14 = sub_22C90070C();
  v1[20] = v14;
  sub_22C3699B8(v14);
  v1[21] = v15;
  v17 = *(v16 + 64);
  v1[22] = sub_22C3699D4();
  v18 = sub_22C901DDC();
  v1[23] = v18;
  sub_22C3699B8(v18);
  v1[24] = v19;
  v21 = *(v20 + 64);
  v1[25] = sub_22C3699D4();
  v22 = sub_22C90210C();
  v1[26] = v22;
  sub_22C3699B8(v22);
  v1[27] = v23;
  v25 = *(v24 + 64);
  v1[28] = sub_22C3699D4();
  v26 = sub_22C3A5908(&qword_27D9BD698, &qword_22C9187B0);
  sub_22C369914(v26);
  v28 = *(v27 + 64);
  v1[29] = sub_22C3699D4();
  v29 = sub_22C902D7C();
  v1[30] = v29;
  sub_22C3699B8(v29);
  v1[31] = v30;
  v32 = *(v31 + 64);
  v1[32] = sub_22C3699D4();
  v33 = sub_22C3A5908(&qword_27D9BD820, &unk_22C9195C0);
  sub_22C369914(v33);
  v35 = *(v34 + 64);
  v1[33] = sub_22C3699D4();
  v36 = sub_22C9021DC();
  v1[34] = v36;
  sub_22C3699B8(v36);
  v1[35] = v37;
  v39 = *(v38 + 64);
  v1[36] = sub_22C3699D4();
  v40 = sub_22C90077C();
  v1[37] = v40;
  sub_22C3699B8(v40);
  v1[38] = v41;
  v43 = *(v42 + 64);
  v1[39] = sub_22C3856B8();
  v1[40] = swift_task_alloc();
  v44 = sub_22C3A5908(&qword_27D9BEB48, &unk_22C91FF10);
  sub_22C369914(v44);
  v46 = *(v45 + 64);
  v1[41] = sub_22C3856B8();
  v1[42] = swift_task_alloc();
  v47 = sub_22C37BB20();

  return MEMORY[0x2822009F8](v47, v48, v49);
}

uint64_t sub_22C5AE308()
{
  v267 = v0;
  v1 = v0[42];
  v2 = v0[2];
  sub_22C90877C();
  v4 = v0[41];
  v3 = v0[42];
  v5 = sub_22C9068CC();
  sub_22C36C640(v3, 0, 1, v5);
  v6 = sub_22C36BAFC();
  sub_22C4E719C(v6, v7, v8, v9);
  v10 = sub_22C370B74(v4, 1, v5);
  v11 = v0[41];
  if (v10 == 1)
  {
    v12 = v0[7];
    sub_22C36DD28(v0[41], &qword_27D9BEB48, &unk_22C91FF10);
    sub_22C903FBC();
    v13 = sub_22C9063CC();
    v14 = sub_22C90AADC();
    v15 = sub_22C36FBB4(v14);
    v16 = v0[42];
    v17 = v0[7];
    v18 = v0[4];
    v19 = v0[5];
    if (v15)
    {
      sub_22C3720F4();
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_22C366000, v13, v14, "Locale does not exist", v20, 2u);
      v21 = sub_22C3816C4();
      MEMORY[0x2318B9880](v21);
    }

    v22 = *(v19 + 8);
    v23 = sub_22C36D264();
    v24(v23);
    goto LABEL_5;
  }

  v38 = v0[39];
  v40 = v0[37];
  v39 = v0[38];
  v42 = v0[35];
  v41 = v0[36];
  v43 = v0[33];
  v214 = v0[34];
  v245 = v0[30];
  v250 = v0[40];
  v233 = v0[29];
  v237 = v0[27];
  v241 = v0[26];
  v219 = v0[28];
  v221 = v0[25];
  v255 = v0[23];
  v261 = v0[24];
  v44 = v0[21];
  v225 = v0[20];
  v229 = v0[22];
  v216 = v0[3];
  sub_22C9068BC();
  sub_22C36BBA8(v5);
  (*(v45 + 8))(v11, v5);
  sub_22C9021CC();
  (*(v42 + 8))(v41, v214);
  sub_22C5CA7E8();
  v46 = sub_22C36BBCC();
  v47(v46);
  v48 = *(v39 + 16);
  v49 = sub_22C37EF10();
  v50(v49);
  sub_22C36BECC();
  sub_22C36C640(v51, v52, v53, v40);
  sub_22C5ADE64();
  sub_22C36DD28(v43, &qword_27D9BD820, &unk_22C9195C0);
  sub_22C9020FC();
  (*(v261 + 104))(v221, *MEMORY[0x277D1C230], v255);
  (*(v44 + 104))(v229, *MEMORY[0x277CC9668], v225);
  sub_22C9006BC();
  sub_22C9006CC();

  v54 = *(v44 + 8);
  v55 = sub_22C374C34();
  v56(v55);
  sub_22C5C6304();
  sub_22C36FCCC();
  sub_22C9020EC();

  (*(v261 + 8))(v221, v255);
  (*(v237 + 8))(v219, v241);
  v57 = sub_22C36FD7C();
  sub_22C36D0A8(v57, v58, v245);
  if (v79)
  {
    v59 = v0[8];
    sub_22C36DD28(v0[29], &qword_27D9BD698, &qword_22C9187B0);
    sub_22C903FBC();
    v60 = sub_22C9063CC();
    v61 = sub_22C90AADC();
    v62 = os_log_type_enabled(v60, v61);
    v63 = v0[42];
    v64 = v0[40];
    v65 = v0[37];
    v66 = v0[38];
    v67 = v0[8];
    v69 = v0[4];
    v68 = v0[5];
    if (v62)
    {
      sub_22C3720F4();
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&dword_22C366000, v60, v61, "Failed to load planner overrides asset from Asset Manager. Unable to locate UAF asset nor side loaded asset!", v70, 2u);
      sub_22C369B50();
      MEMORY[0x2318B9880]();

      v71 = *(v68 + 8);
      v72 = sub_22C36CA88();
      v73(v72);
      v74 = *(v66 + 8);
    }

    else
    {

      v95 = *(v68 + 8);
      v96 = sub_22C36CA88();
      v97(v96);
      v98 = *(v66 + 8);
    }

    v75 = sub_22C36BAFC();
    v76(v75);
    v25 = v63;
    goto LABEL_6;
  }

  v78 = v0[13];
  v77 = v0[14];
  (*(v0[31] + 32))(v0[32], v0[29], v0[30]);
  sub_22C902D5C();
  sub_22C36D0A8(v78, 1, v77);
  if (v79)
  {
    v80 = v0[9];
    sub_22C36DD28(v0[13], &qword_27D9BB138, &qword_22C90DB70);
    sub_22C903FBC();
    v81 = sub_22C9063CC();
    v82 = sub_22C90AADC();
    v83 = os_log_type_enabled(v81, v82);
    v16 = v0[42];
    v84 = v0[38];
    v256 = v0[37];
    v262 = v0[40];
    v85 = v0[31];
    v251 = v0[32];
    v86 = v0[30];
    v87 = v0[9];
    v89 = v0[4];
    v88 = v0[5];
    if (!v83)
    {

      v137 = *(v88 + 8);
      v138 = sub_22C3726C4();
      v139(v138);
      (*(v85 + 8))(v251, v86);
      (*(v84 + 8))(v262, v256);
LABEL_5:
      v25 = v16;
      goto LABEL_6;
    }

    sub_22C3720F4();
    v90 = swift_slowAlloc();
    *v90 = 0;
    _os_log_impl(&dword_22C366000, v81, v82, "Asset Bundle URL does not exist", v90, 2u);
    v91 = sub_22C37B310();
    MEMORY[0x2318B9880](v91);

    v92 = *(v88 + 8);
    v93 = sub_22C3726C4();
    v94(v93);
    (*(v85 + 8))(v251, v86);
    (*(v84 + 8))(v262, v256);
    v25 = v16;
  }

  else
  {
    v99 = v0[18];
    v100 = v0[15];
    (*(v100 + 32))(v0[19], v0[13], v0[14]);
    v101 = *(v100 + 16);
    v102 = sub_22C36BA00();
    v101(v102);
    sub_22C5CAE5C(v99, &v265);
    if (v265)
    {
      v103 = v266;
      v104 = v0[3] + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime20PlanOverridesService_planOverridesStore;
      v105 = *v104;
      v106 = *(v104 + 8);
      v107 = *(v104 + 16);
      *v104 = v265;
      *(v104 + 8) = v103;
      sub_22C36E030(v105, v106, v107);
    }

    else
    {
      v140 = v0[19];
      v141 = v0[3];
      sub_22C9003EC();
      sub_22C5B9AC0();
      v143 = v142;

      if ((v143 & 1) == 0)
      {
        v178 = v0[19];
        v179 = v0[17];
        v180 = v0[14];
        v181 = v0[12];
        sub_22C903FBC();
        v182 = sub_22C36BA00();
        v101(v182);
        v183 = sub_22C9063CC();
        v235 = sub_22C90AADC();
        v184 = sub_22C36FBB4(v235);
        v185 = v0[42];
        v186 = v0[40];
        v187 = v0[38];
        v188 = v0[31];
        v259 = v0[32];
        v264 = v0[37];
        v248 = v0[19];
        v253 = v0[30];
        v189 = v0[17];
        v191 = v0[14];
        v190 = v0[15];
        v192 = v0[4];
        v193 = v0[5];
        v239 = v192;
        v243 = v0[12];
        if (v184)
        {
          sub_22C36BED8();
          v231 = v185;
          v194 = swift_slowAlloc();
          sub_22C370220();
          v227 = v187;
          v195 = swift_slowAlloc();
          v265 = v195;
          *v194 = 136315138;
          sub_22C5CA628();
          sub_22C5C87F4(v196, v197);
          v223 = v186;
          v198 = sub_22C90B47C();
          v217 = v183;
          v200 = v199;
          v201 = *(v190 + 8);
          v202 = sub_22C380120();
          v201(v202);
          sub_22C36F9F4(v198, v200, &v265);
          sub_22C37BB14();

          *(v194 + 4) = v189;
          sub_22C5CA598();
          _os_log_impl(v203, v204, v205, v206, v207, v208);
          sub_22C36FF94(v195);
          v209 = sub_22C3816C4();
          MEMORY[0x2318B9880](v209);
          v210 = sub_22C36ACAC();
          MEMORY[0x2318B9880](v210);

          (*(v193 + 8))(v243, v239);
          (v201)(v248, v191);
          (*(v188 + 8))(v259, v253);
          (*(v227 + 8))(v223, v264);
          v25 = v231;
        }

        else
        {

          v211 = *(v190 + 8);
          v212 = sub_22C380120();
          v211(v212);
          (*(v193 + 8))(v243, v239);
          (v211)(v248, v191);
          (*(v188 + 8))(v259, v253);
          (*(v187 + 8))(v186, v264);
          v25 = v185;
        }

        goto LABEL_6;
      }
    }

    v108 = v0[18];
    v109 = v0[19];
    v110 = v0[14];
    v111 = v0[15];
    sub_22C9003BC();
    sub_22C9003EC();
    v112 = *(v111 + 8);
    v113 = sub_22C36BAFC();
    v263 = v114;
    v114(v113);
    sub_22C372164();
    sub_22C5C7D5C();
    v116 = v115;
    v118 = v117;

    if (v118)
    {
      v119 = v0[11];
      sub_22C903FBC();

      v120 = sub_22C9063CC();
      sub_22C90AABC();

      v121 = sub_22C3729E4();
      v123 = os_log_type_enabled(v121, v122);
      v124 = v0[11];
      v125 = v0[5];
      v257 = v0[4];
      if (v123)
      {
        sub_22C36BED8();
        v246 = v124;
        v126 = swift_slowAlloc();
        sub_22C370220();
        v127 = swift_slowAlloc();
        v265 = v127;
        *v126 = 136315138;
        v128 = sub_22C36BAFC();
        *(v126 + 4) = sub_22C36F9F4(v128, v129, v130);
        sub_22C5CA970();
        _os_log_impl(v131, v132, v133, v134, v135, v136);
        sub_22C36FF94(v127);
        sub_22C369B50();
        MEMORY[0x2318B9880]();
        sub_22C369B50();
        MEMORY[0x2318B9880]();

        (*(v125 + 8))(v246, v257);
      }

      else
      {

        (*(v125 + 8))(v124, v257);
      }

      v144 = (v0[3] + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime20PlanOverridesService_assetVersion);
      v145 = v144[1];
      *v144 = v116;
      v144[1] = v118;
    }

    v146 = v0[19];
    v147 = v0[16];
    v148 = v0[14];
    v149 = v0[10];
    sub_22C903FBC();
    v150 = sub_22C36BA00();
    v101(v150);
    v151 = sub_22C9063CC();
    v230 = sub_22C90AACC();
    v152 = os_log_type_enabled(v151, v230);
    v153 = v0[42];
    v154 = v0[40];
    v155 = v0[38];
    v156 = v0[31];
    v252 = v0[32];
    v258 = v0[37];
    v242 = v0[19];
    v247 = v0[30];
    v157 = v0[16];
    v158 = v0[14];
    v159 = v0[4];
    v160 = v0[5];
    v234 = v159;
    v238 = v0[10];
    if (v152)
    {
      sub_22C36BED8();
      v226 = v155;
      v161 = swift_slowAlloc();
      sub_22C370220();
      v222 = v154;
      v162 = swift_slowAlloc();
      v265 = v162;
      *v161 = 136315138;
      sub_22C5CA628();
      sub_22C5C87F4(v163, v164);
      sub_22C90B47C();
      v165 = sub_22C380120();
      v263(v165);
      v166 = sub_22C379ED8();
      sub_22C36F9F4(v166, v167, v168);
      sub_22C37BB14();

      *(v161 + 4) = v157;
      sub_22C5CA598();
      _os_log_impl(v169, v170, v171, v172, v173, v174);
      sub_22C36FF94(v162);
      v175 = sub_22C3816C4();
      MEMORY[0x2318B9880](v175);
      v176 = sub_22C36ACAC();
      MEMORY[0x2318B9880](v176);

      (*(v160 + 8))(v238, v234);
      (v263)(v242, v158);
      (*(v156 + 8))(v252, v247);
      (*(v226 + 8))(v222, v258);
    }

    else
    {

      v177 = sub_22C380120();
      v263(v177);
      (*(v160 + 8))(v238, v234);
      (v263)(v242, v158);
      (*(v156 + 8))(v252, v247);
      (*(v155 + 8))(v154, v258);
    }

    v25 = v153;
  }

LABEL_6:
  sub_22C36DD28(v25, &qword_27D9BEB48, &unk_22C91FF10);
  v27 = v0[41];
  v26 = v0[42];
  v29 = v0[39];
  v28 = v0[40];
  v30 = v0[36];
  v32 = v0[32];
  v31 = v0[33];
  v33 = v0[28];
  v34 = v0[29];
  v35 = v0[25];
  v213 = v0[22];
  v215 = v0[19];
  v218 = v0[18];
  v220 = v0[17];
  v224 = v0[16];
  v228 = v0[13];
  v232 = v0[12];
  v236 = v0[11];
  v240 = v0[10];
  v244 = v0[9];
  v249 = v0[8];
  v254 = v0[7];
  v260 = v0[6];

  sub_22C369C50();

  return v36();
}

uint64_t sub_22C5AF29C()
{
  sub_22C369980();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_22C908A0C();
  v1[5] = v4;
  sub_22C3699B8(v4);
  v1[6] = v5;
  v7 = *(v6 + 64);
  v1[7] = sub_22C3699D4();
  v8 = sub_22C90580C();
  v1[8] = v8;
  sub_22C3699B8(v8);
  v1[9] = v9;
  v11 = *(v10 + 64);
  v1[10] = sub_22C3699D4();
  v12 = sub_22C3A5908(&qword_27D9BE618, &qword_22C9262C0);
  sub_22C369914(v12);
  v14 = *(v13 + 64);
  v1[11] = sub_22C3699D4();
  v15 = sub_22C3A5908(&qword_27D9BEB50, &qword_22C91FF30);
  sub_22C369914(v15);
  v17 = *(v16 + 64);
  v1[12] = sub_22C3699D4();
  v18 = sub_22C90553C();
  v1[13] = v18;
  sub_22C3699B8(v18);
  v1[14] = v19;
  v21 = *(v20 + 64);
  v1[15] = sub_22C3699D4();
  v22 = sub_22C9087BC();
  v1[16] = v22;
  sub_22C3699B8(v22);
  v1[17] = v23;
  v1[18] = *(v24 + 64);
  v1[19] = sub_22C3699D4();
  v25 = type metadata accessor for PlanOverridesService.PlanOverridesRequest(0);
  v1[20] = v25;
  sub_22C369914(v25);
  v27 = *(v26 + 64);
  v1[21] = sub_22C3699D4();
  v28 = type metadata accessor for PlanOverridesService.PlanOverridesResponse(0);
  v1[22] = v28;
  sub_22C369914(v28);
  v30 = *(v29 + 64);
  v1[23] = sub_22C3699D4();
  v31 = sub_22C90880C();
  v1[24] = v31;
  sub_22C3699B8(v31);
  v1[25] = v32;
  v34 = *(v33 + 64);
  v1[26] = sub_22C3856B8();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v35 = sub_22C3A5908(&qword_27D9BA808, &qword_22C90C6E0);
  sub_22C3699B8(v35);
  v1[29] = v36;
  v38 = *(v37 + 64);
  v1[30] = sub_22C3856B8();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v39 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  sub_22C369914(v39);
  v41 = *(v40 + 64);
  v1[36] = sub_22C3856B8();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v42 = sub_22C90069C();
  v1[42] = v42;
  sub_22C3699B8(v42);
  v1[43] = v43;
  v45 = *(v44 + 64);
  v1[44] = sub_22C3699D4();
  v46 = sub_22C37BB20();

  return MEMORY[0x2822009F8](v46, v47, v48);
}

uint64_t sub_22C5AF678()
{
  v1 = v0[41];
  v2 = v0[42];
  v3 = v0[3];
  v4 = type metadata accessor for PlannerServiceContext();
  sub_22C4E719C(v3 + *(v4 + 20), v1, &qword_27D9BB190, qword_22C90DD90);
  v5 = sub_22C36CCF8();
  v7 = sub_22C370B74(v5, v6, v2);
  v8 = v0[44];
  if (v7 == 1)
  {
    v9 = v0[40];
    v11 = v0[38];
    v10 = v0[39];
    v12 = v0[36];
    v13 = v0[37];
    v72 = v0[35];
    v73 = v0[34];
    v74 = v0[33];
    v75 = v0[32];
    v76 = v0[31];
    v77 = v0[30];
    v78 = v0[28];
    v79 = v0[27];
    v80 = v0[26];
    v81 = v0[23];
    v82 = v0[21];
    v83 = v0[19];
    v84 = v0[15];
    v86 = v0[12];
    v88 = v0[11];
    v90 = v0[10];
    v91 = v0[7];
    sub_22C36DD28(v0[41], &qword_27D9BB190, qword_22C90DD90);
    sub_22C5C86BC();
    sub_22C37A198();
    swift_allocError();
    *v14 = xmmword_22C911490;
    swift_willThrow();

    sub_22C369A24();

    return v15();
  }

  else
  {
    v17 = v0[35];
    v18 = v0[28];
    v19 = v0[24];
    v20 = v0[25];
    v21 = v0[5];
    v22 = v0[2];
    (*(v0[43] + 32))(v0[44], v0[41], v0[42]);
    sub_22C90878C();
    sub_22C9087DC();
    v0[45] = *(v20 + 8);
    v0[46] = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v23 = sub_22C36D264();
    v89 = v24;
    v24(v23);
    v25 = sub_22C36BD58();
    sub_22C3A5950(v25);

    v26 = sub_22C36CCF8();
    sub_22C36D0A8(v26, v27, v21);
    if (v28)
    {
      v29 = v0[42];
      v30 = v0[40];
      sub_22C36DD28(v0[35], &qword_27D9BA808, &qword_22C90C6E0);
      sub_22C36CCF8();
      sub_22C3827B4();
      sub_22C36C640(v31, v32, v33, v34);
    }

    else
    {
      v35 = v0[40];
      v36 = v0[35];
      v37 = v0[5];
      v38 = v0[6];
      sub_22C9088DC();
      v39 = *(v38 + 8);
      v40 = sub_22C36BBCC();
      v41(v40);
    }

    v42 = v0[40];
    v43 = v0[27];
    v44 = v0[24];
    v45 = v0[21];
    v46 = v0[19];
    v48 = v0[16];
    v47 = v0[17];
    v85 = v0[18];
    v87 = v0[4];
    v49 = v0[2];
    sub_22C59ED68(v0[44], v42);
    sub_22C36DD28(v42, &qword_27D9BB190, qword_22C90DD90);
    sub_22C90878C();
    sub_22C3A909C();
    v0[47] = v50;
    v51 = sub_22C3726C4();
    v89(v51);
    sub_22C90878C();
    v52 = *(v47 + 16);
    v53 = sub_22C372280();
    v54(v53);
    v55 = (*(v47 + 80) + 24) & ~*(v47 + 80);
    v56 = swift_allocObject();
    v0[48] = v56;
    *(v56 + 16) = v87;
    (*(v47 + 32))(v56 + v55, v46, v48);
    v57 = *(MEMORY[0x277D08428] + 4);

    v58 = swift_task_alloc();
    v0[49] = v58;
    sub_22C5C87F4(&qword_27D9BEB60, type metadata accessor for PlanOverridesService.PlanOverridesRequest);
    sub_22C5C87F4(&qword_27D9BEB68, type metadata accessor for PlanOverridesService.PlanOverridesRequest);
    sub_22C5C87F4(&qword_27D9BEB70, type metadata accessor for PlanOverridesService.PlanOverridesResponse);
    sub_22C5C87F4(&qword_27D9BEB78, type metadata accessor for PlanOverridesService.PlanOverridesResponse);
    *v58 = v0;
    v58[1] = sub_22C5AFBE0;
    v59 = v0[22];
    v60 = v0[23];
    v62 = v0[20];
    v61 = v0[21];
    sub_22C5CAD40();

    return MEMORY[0x28215E710](v63, v64, v65, v66, v67, v68, v69, v70);
  }
}

void sub_22C5AFBE0()
{
  sub_22C36FB38();
  sub_22C369A3C();
  v3 = v2;
  v4 = v2[49];
  v5 = *v1;
  sub_22C369970();
  *v6 = v5;
  v3[50] = v0;

  if (v0)
  {
  }

  else
  {
    v8 = v3[47];
    v7 = v3[48];
    v9 = v3[21];
    v10 = v3[4];
    sub_22C5C8874(v9, type metadata accessor for PlanOverridesService.PlanOverridesRequest);

    MEMORY[0x2822009F8](sub_22C5AFD38, v10, 0);
  }
}

uint64_t sub_22C5AFD38()
{
  v1 = v0[33];
  v2 = v0[34];
  v3 = v0[23];
  v4 = v0[5];
  v5 = (v0[4] + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime20PlanOverridesService_assetVersion);
  v6 = v5[1];
  v159 = *v5;
  sub_22C5CAA04();
  sub_22C4E719C(v7, v8, v9, &qword_22C90C6E0);
  v10 = sub_22C370B74(v2, 1, v4);

  sub_22C36DD28(v2, &qword_27D9BA808, &qword_22C90C6E0);
  v11 = sub_22C372280();
  sub_22C4E719C(v11, v12, &qword_27D9BA808, &qword_22C90C6E0);
  v13 = sub_22C36CCF8();
  sub_22C36D0A8(v13, v14, v4);
  if (v15)
  {
    sub_22C36DD28(v0[33], &qword_27D9BA808, &qword_22C90C6E0);
    v23 = 1;
  }

  else
  {
    v16 = v0[39];
    v17 = v0[33];
    v18 = v0[5];
    v19 = v0[6];
    sub_22C9087FC();
    v20 = *(v19 + 8);
    v21 = sub_22C36BBCC();
    v22(v21);
    v23 = 0;
  }

  v25 = v0[45];
  v24 = v0[46];
  v26 = v0[32];
  v27 = v0[26];
  v28 = v0[24];
  v29 = v0[5];
  v30 = v0[2];
  sub_22C36C640(v0[39], v23, 1, v0[42]);
  sub_22C90878C();
  sub_22C9087DC();
  v31 = sub_22C36CA88();
  v25(v31);
  v32 = sub_22C36BD58();
  sub_22C3A5950(v32);

  v33 = sub_22C36CCF8();
  sub_22C36D0A8(v33, v34, v29);
  if (v15)
  {
    v35 = v0[42];
    v36 = v0[38];
    sub_22C36DD28(v0[32], &qword_27D9BA808, &qword_22C90C6E0);
    sub_22C36CCF8();
    sub_22C3827B4();
    sub_22C36C640(v37, v38, v39, v40);
  }

  else
  {
    v41 = v0[38];
    v42 = v0[32];
    v43 = v0[5];
    v44 = v0[6];
    sub_22C9088DC();
    v45 = *(v44 + 8);
    v46 = sub_22C36BBCC();
    v47(v46);
  }

  v48 = v10 != 1;
  v49 = v0[50];
  v50 = v0[42];
  v51 = v0[39];
  v52 = v0[37];
  v53 = v0[15];
  v54 = v0[12];
  sub_22C90552C();

  sub_22C9054FC();
  v55 = sub_22C90578C();
  *(swift_task_alloc() + 16) = v48;
  sub_22C9062CC();

  sub_22C36BECC();
  sub_22C36C640(v56, v57, v58, v55);
  sub_22C90550C();
  v59 = sub_22C3806B8();
  sub_22C4E719C(v59, v60, v61, v62);
  v63 = sub_22C37EF1C();
  sub_22C36D0A8(v63, v64, v50);
  if (v15)
  {
    sub_22C36DD28(v0[37], &qword_27D9BB190, qword_22C90DD90);
    v79 = 1;
  }

  else
  {
    v65 = v0[42];
    v66 = v0[43];
    v67 = v0[36];
    v68 = v0[37];
    v69 = v0[11];
    sub_22C90624C();
    v70 = *(v66 + 16);
    v71 = sub_22C372164();
    v72(v71);
    sub_22C36BECC();
    sub_22C36C640(v73, v74, v75, v65);
    sub_22C90623C();
    v76 = *(v66 + 8);
    v77 = sub_22C377B94();
    v78(v77);
    v79 = 0;
  }

  v80 = v0[38];
  v145 = v0[44];
  v147 = v0[39];
  v155 = v0[31];
  v160 = v0[30];
  v151 = v0[29];
  v153 = v0[23];
  v81 = v0[14];
  v82 = v0[15];
  v149 = v0[13];
  v84 = v0[10];
  v83 = v0[11];
  v86 = v0[8];
  v85 = v0[9];
  v157 = v0[5];
  v87 = sub_22C90625C();
  sub_22C36C640(v83, v79, 1, v87);
  sub_22C90538C();
  *(swift_task_alloc() + 16) = v82;
  sub_22C9062CC();

  sub_22C59D250(v84, v145, v80);

  v88 = *(v85 + 8);
  v89 = sub_22C36D7F0();
  v90(v89);
  sub_22C37017C();
  sub_22C36DD28(v91, v92, v93);
  sub_22C37017C();
  sub_22C36DD28(v94, v95, v96);
  v97 = sub_22C50B61C();
  v98(v97, v149);
  sub_22C3A5908(&qword_27D9BE098, &qword_22C91CE70);
  v99 = *(v151 + 72);
  v100 = (*(v151 + 80) + 32) & ~*(v151 + 80);
  v101 = swift_allocObject();
  *(v101 + 16) = xmmword_22C90F800;
  sub_22C4E719C(v153, v101 + v100, &qword_27D9BA808, &qword_22C90C6E0);
  sub_22C5CA6E4();
  sub_22C4E719C(v102, v103, v104, &qword_22C90C6E0);
  sub_22C5CA6E4();
  sub_22C4E7208(v105, v106, v107, &qword_22C90C6E0);
  v108 = sub_22C37EF1C();
  v110 = sub_22C370B74(v108, v109, v157);
  v111 = v0[30];
  if (v110 == 1)
  {
    sub_22C36DD28(v0[30], &qword_27D9BA808, &qword_22C90C6E0);
    v162 = MEMORY[0x277D84F90];
  }

  else
  {
    v112 = *(v0[6] + 32);
    v112(v0[7], v0[30], v0[5]);
    v113 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v132 = *(v113 + 16);
      sub_22C36D270();
      sub_22C590488();
      v113 = v133;
    }

    v115 = *(v113 + 16);
    v114 = *(v113 + 24);
    if (v115 >= v114 >> 1)
    {
      sub_22C369AB0(v114);
      sub_22C590488();
      v113 = v134;
    }

    v162 = v113;
    v117 = v0[6];
    v116 = v0[7];
    v118 = v0[5];
    *(v113 + 16) = v115 + 1;
    v112(v113 + ((*(v117 + 80) + 32) & ~*(v117 + 80)) + *(v117 + 72) * v115, v116, v118);
  }

  v119 = v0[43];
  v120 = v0[44];
  v122 = v0[41];
  v121 = v0[42];
  v124 = v0[39];
  v123 = v0[40];
  v125 = v0[38];
  v135 = v0[37];
  v136 = v0[36];
  v137 = v0[35];
  v138 = v0[34];
  v139 = v0[33];
  v140 = v0[32];
  v141 = v0[31];
  v142 = v0[30];
  v143 = v0[28];
  v144 = v0[27];
  v126 = v0[23];
  v146 = v0[26];
  v148 = v0[21];
  v150 = v0[19];
  v152 = v0[15];
  v154 = v0[12];
  v156 = v0[11];
  v158 = v0[10];
  v161 = v0[7];
  swift_setDeallocating();
  sub_22C590000();
  sub_22C5C8874(v126, type metadata accessor for PlanOverridesService.PlanOverridesResponse);
  v127 = *(v119 + 8);
  v128 = sub_22C388EF4();
  v129(v128);

  v130 = v0[1];

  return v130(v162);
}

uint64_t PlanOverridesService.PlanOverridesRequest.init(transcript:)()
{
  v0 = sub_22C90880C();
  sub_22C36985C(v0);
  v2 = *(v1 + 32);
  v3 = sub_22C36BBCC();

  return v4(v3);
}

uint64_t sub_22C5B04FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a1;
  v5 = *(*(sub_22C3A5908(&qword_27D9BA808, &qword_22C90C6E0) - 8) + 64) + 15;
  v4[5] = swift_task_alloc();
  v4[6] = swift_task_alloc();
  v6 = sub_22C908A0C();
  v4[7] = v6;
  v7 = *(v6 - 8);
  v4[8] = v7;
  v8 = *(v7 + 64) + 15;
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v9 = swift_task_alloc();
  v4[11] = v9;
  *v9 = v4;
  v9[1] = sub_22C5B065C;

  return sub_22C5B2B70();
}

uint64_t sub_22C5B065C()
{
  sub_22C36FB38();
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;
  sub_22C369970();
  *v5 = v4;

  v6 = *(v2 + 24);
  if (v0)
  {

    v7 = sub_22C5B08E8;
  }

  else
  {
    v7 = sub_22C5B0788;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_22C5B0788()
{
  v2 = v0[6];
  sub_22C36D3E0(v2);
  if (v3)
  {
    v4 = v0[4];
    v5 = v0[5];
    sub_22C36DD28(v2, &qword_27D9BA808, &qword_22C90C6E0);
    v6 = sub_22C5B13C8(v4);
    sub_22C58B564(v6, v5);

    sub_22C36D3E0(v5);
    if (v3)
    {
      v12 = sub_22C36DD28(v0[5], &qword_27D9BA808, &qword_22C90C6E0);
      v7 = 1;
      goto LABEL_7;
    }

    v13 = sub_22C5CA848();
    (v1)(v13);
    sub_22C37017C();
    v12 = v1();
  }

  else
  {
    v8 = v0[10];
    v9 = v0[2];
    v10 = *(v0[8] + 32);
    sub_22C37A060();
    v10();
    v11 = sub_22C370018();
    v12 = (v10)(v11);
  }

  v7 = 0;
LABEL_7:
  sub_22C5CAD04(v12, v7);

  sub_22C369C50();

  return v14();
}

uint64_t sub_22C5B08E8()
{
  sub_22C36D5EC();
  v2 = v0[6];
  v3 = v0[7];
  sub_22C36A748();
  sub_22C36C640(v4, v5, v6, v7);
  v8 = v0[7];
  v10 = v0[4];
  v9 = v0[5];
  sub_22C36DD28(v0[6], &qword_27D9BA808, &qword_22C90C6E0);
  v11 = sub_22C5B13C8(v10);
  sub_22C58B564(v11, v9);

  sub_22C36D3E0(v9);
  if (v12)
  {
    v14 = sub_22C36DD28(v0[5], &qword_27D9BA808, &qword_22C90C6E0);
    v15 = 1;
  }

  else
  {
    v13 = sub_22C5CA848();
    (v1)(v13);
    sub_22C37017C();
    v14 = v1();
    v15 = 0;
  }

  sub_22C5CAD04(v14, v15);

  sub_22C369C50();

  return v16();
}

uint64_t PlanOverridesService.PlanOverridesRequest.transcript.getter()
{
  v0 = sub_22C90880C();
  sub_22C36985C(v0);
  v2 = *(v1 + 16);
  v3 = sub_22C36BA00();

  return v4(v3);
}

uint64_t sub_22C5B0A84(uint64_t a1)
{
  v2 = sub_22C5C88CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C5B0AC0(uint64_t a1)
{
  v2 = sub_22C5C88CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PlanOverridesService.PlanOverridesRequest.encode(to:)(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BEB80, &qword_22C91FF50);
  sub_22C369824(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v7);
  sub_22C383814();
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = sub_22C38644C();
  sub_22C374168(v10, v11);
  sub_22C5C88CC();
  sub_22C5CAD5C();
  sub_22C90880C();
  sub_22C5CA64C();
  sub_22C5C87F4(v12, v13);
  sub_22C5CA928();
  sub_22C90B41C();
  v14 = *(v4 + 8);
  v15 = sub_22C36D384();
  return v16(v15);
}

void PlanOverridesService.PlanOverridesRequest.init(from:)()
{
  sub_22C370030();
  v3 = v2;
  v34 = v4;
  v5 = sub_22C90880C();
  v6 = sub_22C369824(v5);
  v32 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22C3698A8();
  v35 = v10;
  v11 = sub_22C3A5908(&qword_27D9BEB90, &qword_22C91FF58);
  sub_22C369824(v11);
  v33 = v12;
  v14 = *(v13 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v15);
  v17 = &v31 - v16;
  v18 = type metadata accessor for PlanOverridesService.PlanOverridesRequest(0);
  v19 = sub_22C369914(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22C369838();
  sub_22C5CA768();
  v22 = v3[3];
  v23 = v3[4];
  v24 = sub_22C37BD98();
  sub_22C374168(v24, v25);
  sub_22C5C88CC();
  sub_22C90B6BC();
  if (!v0)
  {
    v26 = v32;
    sub_22C5CA64C();
    sub_22C5C87F4(v27, v28);
    sub_22C90B32C();
    (*(v33 + 8))(v17, v11);
    (*(v26 + 32))(v1, v35, v5);
    v29 = sub_22C38A024();
    sub_22C5C8974(v29, v30);
  }

  sub_22C36FF94(v3);
  sub_22C36FB20();
}

uint64_t sub_22C5B0EBC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x746E657665 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22C90B4FC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22C5B0F48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C5B0EBC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22C5B0F74(uint64_t a1)
{
  v2 = sub_22C5C8920();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C5B0FB0(uint64_t a1)
{
  v2 = sub_22C5C8920();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PlanOverridesService.PlanOverridesResponse.encode(to:)(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BEB98, &qword_22C91FF60);
  sub_22C369824(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v7);
  sub_22C383814();
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = sub_22C38644C();
  sub_22C374168(v10, v11);
  sub_22C5C8920();
  sub_22C5CAD5C();
  sub_22C908A0C();
  sub_22C37BE68();
  sub_22C5C87F4(v12, v13);
  sub_22C5CA928();
  sub_22C90B3AC();
  v14 = *(v4 + 8);
  v15 = sub_22C36D384();
  return v16(v15);
}

void PlanOverridesService.PlanOverridesResponse.init(from:)()
{
  sub_22C370030();
  v2 = v1;
  v31 = v3;
  v4 = sub_22C3A5908(&qword_27D9BA808, &qword_22C90C6E0);
  sub_22C369914(v4);
  v6 = *(v5 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v7);
  sub_22C37BDA4();
  v8 = sub_22C3A5908(&qword_27D9BEBA8, &qword_22C91FF68);
  sub_22C369824(v8);
  v32 = v9;
  v11 = *(v10 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v12);
  v13 = sub_22C36EC5C();
  v14 = type metadata accessor for PlanOverridesService.PlanOverridesResponse(v13);
  v15 = sub_22C369914(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22C369838();
  v20 = v19 - v18;
  v21 = v2[4];
  sub_22C374168(v2, v2[3]);
  sub_22C5C8920();
  sub_22C90B6BC();
  if (!v0)
  {
    sub_22C908A0C();
    sub_22C37BE68();
    sub_22C5C87F4(v22, v23);
    sub_22C90B2BC();
    v24 = *(v32 + 8);
    v25 = sub_22C371510();
    v26(v25);
    v27 = sub_22C3863FC();
    sub_22C4E7208(v27, v28, v29, v30);
    sub_22C5C8974(v20, v31);
  }

  sub_22C36FF94(v2);
  sub_22C36FB20();
}

uint64_t sub_22C5B135C@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D1D8D0];
  v3 = sub_22C90645C();
  v4 = sub_22C36985C(v3);
  v6 = *(v5 + 104);

  return v6(a1, v2, v4);
}

uint64_t sub_22C5B13C8(uint64_t a1)
{
  v368 = a1;
  v2 = sub_22C902D3C();
  v3 = sub_22C369914(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C3698A8();
  sub_22C3698F8(v6);
  v7 = sub_22C90888C();
  v8 = sub_22C36A7A4(v7, &v365);
  v341 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22C3698A8();
  sub_22C3698F8(v12);
  v13 = sub_22C90700C();
  v14 = sub_22C369914(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22C3698A8();
  sub_22C3698F8(v17);
  v18 = sub_22C90654C();
  v19 = sub_22C36A7A4(v18, &v374);
  v347 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22C3698A8();
  sub_22C3698F8(v23);
  v339 = sub_22C901FAC();
  v24 = sub_22C36985C(v339);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  sub_22C3698A8();
  sub_22C3698F8(v27);
  v28 = sub_22C9063DC();
  v29 = sub_22C36A7A4(v28, &v373);
  v344 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v29);
  sub_22C3698A8();
  sub_22C36D234(v33);
  v34 = sub_22C3A5908(&qword_27D9BC1E8, &qword_22C9123B0);
  sub_22C369914(v34);
  v36 = *(v35 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v37);
  sub_22C36D5B4();
  sub_22C3698F8(v38);
  v39 = sub_22C908EAC();
  v40 = sub_22C369824(v39);
  v350 = v41;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v40);
  sub_22C3698A8();
  sub_22C3698F8(v44);
  v356 = sub_22C90384C();
  v45 = sub_22C369824(v356);
  v353 = v46;
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v45);
  sub_22C3698A8();
  v357 = v49;
  sub_22C36BA0C();
  v50 = sub_22C9036EC();
  v51 = sub_22C369824(v50);
  v358 = v52;
  v359 = v51;
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v51);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v55);
  sub_22C36BA64();
  v370 = v56;
  v57 = sub_22C3A5908(&qword_27D9BD290, &qword_22C917EC0);
  sub_22C369914(v57);
  v59 = *(v58 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v60);
  sub_22C36D5B4();
  v361[0] = v61;
  v62 = sub_22C3A5908(&qword_27D9BD2A8, &qword_22C920540);
  sub_22C369914(v62);
  v64 = *(v63 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v65);
  sub_22C36D5B4();
  v360 = v66;
  sub_22C36BA0C();
  v369 = sub_22C9037EC();
  v67 = sub_22C369824(v369);
  v371 = v68;
  v70 = *(v69 + 64);
  MEMORY[0x28223BE20](v67);
  sub_22C369ABC();
  sub_22C50B4C8();
  MEMORY[0x28223BE20](v71);
  sub_22C36BA64();
  v355 = v72;
  sub_22C36BA0C();
  v73 = sub_22C9089DC();
  v74 = sub_22C369824(v73);
  v364 = v75;
  v365 = v74;
  v77 = *(v76 + 64);
  MEMORY[0x28223BE20](v74);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v78);
  sub_22C36CAC0();
  v79 = sub_22C9079FC();
  v80 = sub_22C369824(v79);
  v362 = v81;
  v363 = v80;
  v83 = *(v82 + 64);
  MEMORY[0x28223BE20](v80);
  sub_22C3698A8();
  v361[1] = v84;
  sub_22C36BA0C();
  v85 = sub_22C90880C();
  v86 = sub_22C369824(v85);
  v88 = v87;
  v90 = *(v89 + 64);
  MEMORY[0x28223BE20](v86);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v91);
  v93 = &v327 - v92;
  v94 = sub_22C3A5908(&qword_27D9BA808, &qword_22C90C6E0);
  v95 = sub_22C3699B8(v94);
  v342 = v96;
  v98 = *(v97 + 64);
  MEMORY[0x28223BE20](v95);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v99);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v100);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v101);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v102);
  v104 = &v327 - v103;
  v105 = sub_22C908A0C();
  v106 = sub_22C369824(v105);
  v366 = v107;
  v109 = *(v108 + 64);
  MEMORY[0x28223BE20](v106);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v110);
  sub_22C36BA64();
  v367 = v111;
  swift_getKeyPath();
  sub_22C901F3C();

  if ((v372 & 0x100000000) == 0)
  {
    v334 = v39;
    v112 = *&v372;
    sub_22C90878C();
    v113 = sub_22C9087DC();
    v114 = *(v88 + 8);
    v333 = v85;
    v332 = v88 + 8;
    v331 = v114;
    (v114)(v93, v85);
    v372 = v113;
    v115 = sub_22C372164();
    sub_22C3A5908(v115, v116);
    sub_22C369E24();
    sub_22C44178C();
    sub_22C3D32C8(v117, v118, v119);
    sub_22C907F3C();

    v120 = sub_22C36CCF8();
    sub_22C36D0A8(v120, v121, v105);
    if (v122)
    {
      sub_22C36DD28(v104, &qword_27D9BA808, &qword_22C90C6E0);
    }

    else
    {
      v123 = v366;
      v125 = *(v366 + 32);
      v124 = v366 + 32;
      v126 = sub_22C36BBCC();
      v330 = v127;
      v127(v126);
      sub_22C9089EC();
      v128 = v364;
      v129 = *(v364 + 88);
      v130 = sub_22C372280();
      if (v131(v130) == *MEMORY[0x277D1E808])
      {
        v329 = v124;
        v132 = *(v128 + 96);
        v133 = sub_22C372280();
        v134(v133);
        v135 = v362;
        v136 = *(v362 + 32);
        v137 = sub_22C372FA4();
        v138(v137);
        v139 = v361[0];
        sub_22C90798C();
        v140 = sub_22C903F4C();
        v141 = sub_22C36FD7C();
        sub_22C36D0A8(v141, v142, v140);
        if (v122)
        {
          v143 = *(v135 + 8);
          v144 = sub_22C36BBCC();
          v145(v144);
          (*(v123 + 8))(v367, v105);
          sub_22C36DD28(v139, &qword_27D9BD290, &qword_22C917EC0);
          v146 = v360;
          sub_22C36A748();
          sub_22C36C640(v147, v148, v149, v369);
        }

        else
        {
          v328 = v105;
          v157 = sub_22C903F1C();
          sub_22C36BBA8(v140);
          v159 = *(v158 + 8);
          v160 = sub_22C3806B8();
          v161(v160);
          v361[0] = v157;
          v162 = v369;
          v163 = v371;
          v338 = *(v157 + 16);
          if (v338)
          {
            v164 = 0;
            v165 = *(v371 + 80);
            sub_22C36BA94();
            v337 = v361[0] + v166;
            v336 = v163 + 16;
            v168 = (v167 + 88);
            v335 = *MEMORY[0x277D1ECF8];
            v169 = (v163 + 8);
            v170 = (v167 + 8);
            v171 = v112 + -0.0001;
            while (v164 < *(v361[0] + 16))
            {
              (*(v163 + 16))(v1, v337 + *(v163 + 72) * v164, v162);
              v157 = v370;
              sub_22C90371C();
              v172 = *v168;
              v173 = sub_22C36FC08();
              v174(v173);
              sub_22C369908(&v357 + 4);
              if (v122)
              {
                v175 = *v170;
                v176 = sub_22C36FC08();
                v177(v176);
                sub_22C90373C();
                if (v171 < v178)
                {

                  v163 = v371;
                  v182 = *(v371 + 32);
                  v146 = v360;
                  v183 = sub_22C3863FC();
                  v162 = v369;
                  v184(v183);
                  goto LABEL_22;
                }

                v162 = v369;
                (*v169)(v1, v369);
              }

              else
              {
                (*v169)(v1, v162);
                v179 = *v170;
                v180 = sub_22C36FC08();
                v181(v180);
              }

              v163 = v371;
              if (v338 == ++v164)
              {
                goto LABEL_20;
              }
            }

            __break(1u);
            goto LABEL_47;
          }

LABEL_20:

          v146 = v360;
LABEL_22:
          sub_22C3827B4();
          sub_22C36C640(v185, v186, v187, v188);
          v189 = sub_22C37EF1C();
          sub_22C36D0A8(v189, v190, v162);
          v191 = v355;
          v192 = v354;
          if (!v122)
          {
            v199 = *(v163 + 32);
            v200 = sub_22C3806B8();
            v201(v200);
            v146 = v163;
            v202 = v162;
            sub_22C90371C();
            v204 = v358;
            v203 = v359;
            if ((*(v358 + 88))(v192, v359) != *MEMORY[0x277D1ECF8])
            {
              v219 = *(v146 + 8);
              v220 = sub_22C36D384();
              v221(v220);
              v222 = sub_22C5CA6B4();
              v223(v222);
              v224 = sub_22C5CA6A0();
              v225(v224);
              v226 = sub_22C50B61C();
              v227(v226, v203);
              return MEMORY[0x277D84F90];
            }

            (*(v204 + 96))(v192, v203);
            sub_22C37205C(&v378);
            v206 = *(v205 + 32);
            v207 = sub_22C36FC08();
            v208(v207);
            sub_22C36D2E8(&v375);
            sub_22C90383C();
            sub_22C37EF1C();
            sub_22C5CA8DC(&v356);
            sub_22C36D0A8(v209, v210, v211);
            if (!v122)
            {
              v228 = *(v350 + 32);
              sub_22C5CA6E4();
              v229();
              v372 = 0;
              v373 = 0xE000000000000000;
              sub_22C90AF5C();
              v230 = sub_22C908E7C();
              v232 = v231;

              v372 = v230;
              v373 = v232;
              MEMORY[0x2318B7850](0x223D70706128, 0xE600000000000000);
              v233 = sub_22C90381C();
              MEMORY[0x2318B7850](v233);

              MEMORY[0x2318B7850](0x616D6D6F63202C22, 0xEC000000223D646ELL);
              v234 = sub_22C90382C();
              v236 = v235;
              MEMORY[0x2318B7850](v234);

              MEMORY[0x2318B7850](10530, 0xE200000000000000);
              v237 = v372;
              v238 = v373;
              sub_22C36D818(&v369);
              sub_22C903FBC();

              v239 = sub_22C9063CC();
              sub_22C90AACC();

              v240 = sub_22C5CAE14();
              v370 = v237;
              if (v240)
              {
                sub_22C36BED8();
                v241 = swift_slowAlloc();
                sub_22C370220();
                v242 = swift_slowAlloc();
                v372 = v242;
                *v241 = 136315138;
                v243 = sub_22C441720();
                *(v241 + 4) = sub_22C36F9F4(v243, v244, v245);
                sub_22C5CA598();
                _os_log_impl(v246, v247, v248, v249, v250, v251);
                sub_22C36FF94(v242);
                v252 = sub_22C3816C4();
                MEMORY[0x2318B9880](v252);
                v253 = sub_22C36ACAC();
                MEMORY[0x2318B9880](v253);
              }

              sub_22C36FB04(&v372);
              v254(v236, v345);
              v255 = v346;
              sub_22C37205C(&v368);
              sub_22C90878C();
              sub_22C9087DC();
              v256 = sub_22C36FBFC();
              v331(v256);
              v257 = sub_22C36BD58();
              sub_22C3A5950(v257);

              v258 = sub_22C36CCF8();
              v259 = v328;
              sub_22C36D0A8(v258, v260, v328);
              if (v122)
              {

                sub_22C36DD28(v255, &qword_27D9BA808, &qword_22C90C6E0);
                v298 = 1;
                v267 = v351;
                v170 = v357;
              }

              else
              {
                sub_22C3A5908(&qword_27D9BAC20, &unk_22C90D4C0);
                sub_22C369A48();
                v261 = sub_22C9070DC();
                sub_22C3699B8(v261);
                v358 = *(v262 + 72);
                v264 = (*(v263 + 80) + 32) & ~*(v263 + 80);
                v265 = swift_allocObject();
                v361[0] = v265;
                *(v265 + 16) = xmmword_22C90FB40;
                v354 = v265 + v264;
                sub_22C9087AC();
                sub_22C90882C();

                v266 = sub_22C90381C();
                v267 = v340;
                *v340 = v266;
                v267[1] = v268;
                v349 = *MEMORY[0x277D1DEF8];
                v269 = v349;
                v270 = sub_22C906F2C();
                sub_22C36985C(v270);
                v345 = *(v271 + 104);
                v345(v267, v269, v270);
                v360 = v238;
                LODWORD(v344) = *MEMORY[0x277D1DAA8];
                v272 = v347 + 104;
                v273 = *(v347 + 104);
                v274 = v273(v267);
                v359 = v273;
                v347 = v272;
                v275 = MEMORY[0x2318B4580](v274);
                sub_22C374490(&v363);
                sub_22C9070BC();
                LOBYTE(v372) = 1;
                sub_22C37B090();
                sub_22C386758(&v379);
                sub_22C36ECB4();
                sub_22C90708C();
                sub_22C9087AC();
                sub_22C90882C();

                *v267 = sub_22C90382C();
                v267[1] = v276;
                v345(v267, v349, v270);
                v277 = (v273)(v267, v344, v348);
                MEMORY[0x2318B4580](v277);
                sub_22C9070BC();
                LOBYTE(v372) = 1;
                sub_22C37B090();
                v278 = v358;
                sub_22C36ECB4();
                sub_22C90708C();
                v358 = v275 + 2 * v278;
                sub_22C9087AC();
                sub_22C90882C();

                sub_22C908E7C();
                sub_22C3A5908(&qword_27D9BC0B8, &qword_22C91CB80);
                v279 = (sub_22C3A5908(&qword_27D9BAA38, &unk_22C911F90) - 8);
                v280 = *(*v279 + 72);
                v281 = (*(*v279 + 80) + 32) & ~*(*v279 + 80);
                v282 = swift_allocObject();
                *(v282 + 16) = xmmword_22C90F870;
                v283 = (v282 + v281);
                v284 = v279[14];
                *v283 = 7368801;
                v283[1] = 0xE300000000000000;
                sub_22C901F4C();
                v285 = (v283 + v280);
                v286 = v279[14];
                *v285 = 0x646E616D6D6F63;
                v285[1] = 0xE700000000000000;
                sub_22C901F4C();
                sub_22C909F0C();
                sub_22C38644C();
                v170 = v357;
                sub_22C906A9C();
                v287 = v359(v267, *MEMORY[0x277D1DA78], v348);
                MEMORY[0x2318B4580](v287);
                sub_22C9070BC();
                LOBYTE(v372) = 1;
                sub_22C37B090();
                sub_22C90708C();
                v288 = *MEMORY[0x277D1E6C8];
                v289 = *(v341 + 104);
                v290 = sub_22C37BA1C();
                v291(v290);
                sub_22C36D818(&v367);
                sub_22C9088AC();
                sub_22C36D2E8(v361);
                sub_22C90889C();
                v293 = v364;
                v292 = v365;
                (*(v364 + 104))(v283, *MEMORY[0x277D1E6F8], v365);
                sub_22C370208(&v377);
                sub_22C90893C();
                v294 = v283;
                v259 = v328;
                (*(v293 + 8))(v294, v292);
                v295 = *(v366 + 8);
                v296 = sub_22C372164();
                v297(v296);
                v298 = 0;
              }

              sub_22C36C640(v267, v298, 1, v259);
              sub_22C3A5908(&qword_27D9BE098, &qword_22C91CE70);
              v299 = *(v342 + 72);
              v300 = v259;
              v301 = (*(v342 + 80) + 32) & ~*(v342 + 80);
              v302 = swift_allocObject();
              *(v302 + 16) = xmmword_22C90F800;
              sub_22C4E719C(v267, v302 + v301, &qword_27D9BA808, &qword_22C90C6E0);
              sub_22C5CA6E4();
              sub_22C4E719C(v303, v304, v305, &qword_22C90C6E0);
              v306 = v343;
              sub_22C5CA6E4();
              sub_22C4E7208(v307, v308, v309, &qword_22C90C6E0);
              v310 = sub_22C37EF1C();
              sub_22C36D0A8(v310, v311, v300);
              if (v122)
              {
                sub_22C36DD28(v306, &qword_27D9BA808, &qword_22C90C6E0);
                v157 = MEMORY[0x277D84F90];
                v312 = v334;
                v313 = v366;
                v1 = v353;
LABEL_45:
                swift_setDeallocating();
                sub_22C590000();
                sub_22C36DD28(v351, &qword_27D9BA808, &qword_22C90C6E0);
                sub_22C36FB04(&v376);
                v321(v352, v312);
                (*(v1 + 8))(v170, v356);
                (*(v371 + 8))(v355, v369);
                v322 = sub_22C5CA6B4();
                v323(v322);
                (*(v313 + 8))(v367, v300);
                return v157;
              }

              sub_22C5CA800();
              v314();
              v157 = MEMORY[0x277D84F90];
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v1 = v353;
              if (isUniquelyReferenced_nonNull_native)
              {
LABEL_42:
                v317 = *(v157 + 16);
                v316 = *(v157 + 24);
                if (v317 >= v316 >> 1)
                {
                  sub_22C369AB0(v316);
                  sub_22C590488();
                  v157 = v326;
                }

                *(v157 + 16) = v317 + 1;
                v313 = v366;
                v318 = *(v366 + 80);
                sub_22C36BA94();
                v319 = *(v313 + 72);
                v300 = v328;
                sub_22C5CA800();
                v320();
                v312 = v334;
                goto LABEL_45;
              }

LABEL_47:
              v324 = *(v157 + 16);
              sub_22C36D270();
              sub_22C590488();
              v157 = v325;
              goto LABEL_42;
            }

            v212 = *(v202 + 8);
            v213 = sub_22C36FC2C();
            v214(v213);
            (*(v371 + 8))(v191, v369);
            v215 = sub_22C5CA6B4();
            v216(v215);
            v217 = sub_22C5CA6A0();
            v218(v217);
            v197 = &qword_27D9BC1E8;
            v198 = &qword_22C9123B0;
LABEL_26:
            sub_22C36DD28(v146, v197, v198);
            return MEMORY[0x277D84F90];
          }

          v193 = sub_22C5CA6B4();
          v194(v193);
          v195 = sub_22C5CA6A0();
          v196(v195);
        }

        v197 = &qword_27D9BD2A8;
        v198 = &qword_22C920540;
        goto LABEL_26;
      }

      v150 = *(v123 + 8);
      v151 = sub_22C38644C();
      v152(v151);
      v153 = *(v128 + 8);
      v154 = sub_22C372280();
      v155(v154);
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_22C5B2B3C@<X0>(uint64_t a1@<X8>)
{
  result = sub_22C901E3C();
  *a1 = result;
  *(a1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_22C5B2B70()
{
  sub_22C369980();
  v1[13] = v2;
  v1[14] = v0;
  v1[12] = v3;
  v4 = sub_22C3A5908(&qword_27D9BA808, &qword_22C90C6E0);
  sub_22C369914(v4);
  v6 = *(v5 + 64);
  v1[15] = sub_22C3699D4();
  v7 = sub_22C908A0C();
  v1[16] = v7;
  sub_22C3699B8(v7);
  v1[17] = v8;
  v10 = *(v9 + 64);
  v1[18] = sub_22C3699D4();
  v11 = sub_22C3A5908(&qword_27D9BD798, &unk_22C919070);
  sub_22C369914(v11);
  v13 = *(v12 + 64);
  v1[19] = sub_22C3699D4();
  v14 = sub_22C908EAC();
  v1[20] = v14;
  sub_22C3699B8(v14);
  v1[21] = v15;
  v17 = *(v16 + 64);
  v1[22] = sub_22C3699D4();
  v18 = type metadata accessor for FetchedTools(0);
  sub_22C369914(v18);
  v20 = *(v19 + 64);
  v1[23] = sub_22C3699D4();
  v21 = sub_22C908AEC();
  v1[24] = v21;
  sub_22C3699B8(v21);
  v1[25] = v22;
  v24 = *(v23 + 64);
  v1[26] = sub_22C3699D4();
  v25 = sub_22C3A5908(&qword_27D9BD820, &unk_22C9195C0);
  sub_22C369914(v25);
  v27 = *(v26 + 64);
  v1[27] = sub_22C3699D4();
  v28 = sub_22C9036EC();
  v1[28] = v28;
  sub_22C3699B8(v28);
  v1[29] = v29;
  v31 = *(v30 + 64);
  v1[30] = sub_22C3856B8();
  v1[31] = swift_task_alloc();
  v32 = sub_22C3A5908(&qword_27D9BC1E8, &qword_22C9123B0);
  sub_22C369914(v32);
  v34 = *(v33 + 64);
  v1[32] = sub_22C3856B8();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v35 = sub_22C9037EC();
  v1[35] = v35;
  sub_22C3699B8(v35);
  v1[36] = v36;
  v38 = *(v37 + 64);
  v1[37] = sub_22C3699D4();
  v39 = sub_22C9063DC();
  v1[38] = v39;
  sub_22C3699B8(v39);
  v1[39] = v40;
  v42 = *(v41 + 64);
  v1[40] = sub_22C3856B8();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v43 = sub_22C90880C();
  v1[46] = v43;
  sub_22C3699B8(v43);
  v1[47] = v44;
  v46 = *(v45 + 64);
  v1[48] = sub_22C3856B8();
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();
  v47 = sub_22C3A5908(&qword_27D9BEBB0, &unk_22C91FF78);
  sub_22C369914(v47);
  v49 = *(v48 + 64);
  v1[51] = sub_22C3699D4();
  v50 = sub_22C907C8C();
  v1[52] = v50;
  sub_22C3699B8(v50);
  v1[53] = v51;
  v53 = *(v52 + 64);
  v1[54] = sub_22C3856B8();
  v1[55] = swift_task_alloc();
  v54 = sub_22C37BB20();

  return MEMORY[0x2822009F8](v54, v55, v56);
}

uint64_t sub_22C5B2FAC()
{
  v1 = v0[51];
  v2 = v0[52];
  v3 = v0[50];
  v4 = v0[46];
  v5 = v0[47];
  v6 = v0[13];
  sub_22C90878C();
  v7 = sub_22C9087DC();
  v8 = *(v5 + 8);
  v9 = sub_22C36ECB4();
  v8(v9);
  v0[10] = v7;
  v10 = sub_22C372164();
  sub_22C3A5908(v10, v11);
  sub_22C369E24();
  sub_22C44178C();
  sub_22C3D32C8(v12, v13, v14);
  sub_22C3806B8();
  sub_22C907EFC();

  v15 = sub_22C36CCF8();
  sub_22C36D0A8(v15, v16, v2);
  if (v17)
  {
    v18 = v0[41];
    sub_22C36DD28(v0[51], &qword_27D9BEBB0, &unk_22C91FF78);
    sub_22C903FBC();
    v19 = sub_22C9063CC();
    sub_22C90AADC();
    v20 = sub_22C370214();
    if (os_log_type_enabled(v20, v21))
    {
      sub_22C3720F4();
      v22 = swift_slowAlloc();
      sub_22C36C890(v22);
      sub_22C37F89C();
      _os_log_impl(v23, v24, v25, v26, v27, 2u);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    v28 = v0[41];
    v29 = v0[38];
    v30 = v0[39];
    v31 = v0[16];
    v32 = v0[12];

    v33 = *(v30 + 8);
    v34 = sub_22C36BAFC();
    v35(v34);
    sub_22C36A748();
    sub_22C36C640(v36, v37, v38, v31);
    goto LABEL_6;
  }

  v39 = v0[54];
  v40 = v0[55];
  v41 = v0[52];
  v42 = v0[53];
  v43 = v0[51];
  v44 = v0[45];
  sub_22C5CA7E8();
  v45(v40);
  sub_22C903FBC();
  v46 = *(v42 + 16);
  v47 = sub_22C36BA00();
  v48(v47);
  v49 = sub_22C9063CC();
  LOBYTE(v41) = sub_22C90AACC();
  v50 = sub_22C36FBB4(v41);
  v51 = v0[54];
  if (v50)
  {
    v277 = v49;
    v286 = v8;
    sub_22C36BED8();
    v52 = swift_slowAlloc();
    sub_22C370220();
    v270 = swift_slowAlloc();
    v272 = v52;
    *v52 = 136315138;
    v53 = sub_22C907C6C();
    v54 = *(v53 + 16);
    if (v54)
    {
      v55 = v0[36];
      v57 = *(v55 + 16);
      v56 = v55 + 16;
      v312 = v57;
      v58 = v53 + ((*(v56 + 64) + 32) & ~*(v56 + 64));
      v309 = *(v56 + 56);
      v301 = (v56 - 8);
      v305 = v0[29] + 8;
      v293 = (v0[21] + 8);
      v59 = MEMORY[0x277D84F90];
      do
      {
        v60 = v0[37];
        v62 = v0[34];
        v61 = v0[35];
        v63 = v0[31];
        v64 = v0[28];
        v65 = v0[20];
        v66 = sub_22C372FA4();
        v312(v66);
        sub_22C90371C();
        sub_22C9036BC();
        v67 = sub_22C36D400();
        v68(v67, v64);
        v69 = sub_22C36CCF8();
        v71 = sub_22C370B74(v69, v70, v65);
        v72 = v0[37];
        v74 = v0[34];
        v73 = v0[35];
        if (v71 == 1)
        {
          v75 = *v301;
          v76 = sub_22C36FCCC();
          v77(v76);
          sub_22C36DD28(v74, &qword_27D9BC1E8, &qword_22C9123B0);
        }

        else
        {
          v78 = v56;
          v79 = v0[20];
          v297 = sub_22C908E7C();
          v81 = v80;
          v82 = *v301;
          v83 = sub_22C36FCCC();
          v84(v83);
          v85 = *v293;
          v86 = sub_22C380120();
          v87(v86);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v91 = *(v59 + 16);
            sub_22C36D270();
            sub_22C590270();
            v59 = v92;
          }

          v89 = *(v59 + 16);
          v88 = *(v59 + 24);
          v56 = v78;
          if (v89 >= v88 >> 1)
          {
            sub_22C369AB0(v88);
            sub_22C590270();
            v59 = v93;
          }

          *(v59 + 16) = v89 + 1;
          v90 = v59 + 16 * v89;
          *(v90 + 32) = v297;
          *(v90 + 40) = v81;
        }

        v58 += v309;
        --v54;
      }

      while (v54);
    }

    else
    {

      v59 = MEMORY[0x277D84F90];
    }

    v105 = v0[53];
    v104 = v0[54];
    v106 = v0[52];
    v313 = v0[45];
    v108 = v0[38];
    v107 = v0[39];
    MEMORY[0x2318B7AD0](v59, MEMORY[0x277D837D0]);
    sub_22C5CAC34();

    v100 = *(v105 + 8);
    v100(v104, v106);
    v109 = sub_22C36FC2C();
    v112 = sub_22C36F9F4(v109, v110, v111);

    *(v272 + 1) = v112;
    sub_22C5CA61C();
    _os_log_impl(v113, v114, v115, v116, v117, v118);
    sub_22C36FF94(v270);
    v119 = sub_22C36ACAC();
    MEMORY[0x2318B9880](v119);
    v120 = sub_22C36D66C();
    MEMORY[0x2318B9880](v120);

    v102 = *(v107 + 8);
    v102(v313, v108);
    v8 = v286;
  }

  else
  {
    v94 = v49;
    v95 = v0[52];
    v96 = v0[53];
    v97 = v0[45];
    v98 = v0[38];
    v99 = v0[39];

    v100 = *(v96 + 8);
    v101 = sub_22C36BBCC();
    (v100)(v101);
    v102 = *(v99 + 8);
    v103 = sub_22C36D264();
    (v102)(v103);
  }

  v0[56] = v102;
  v0[57] = v100;
  v294 = v102;
  v121 = v0[27];
  v122 = v0[14];
  sub_22C3870A4();
  swift_beginAccess();
  sub_22C37017C();
  sub_22C4E719C(v123, v124, v125, &unk_22C9195C0);
  v126 = sub_22C90077C();
  LODWORD(v122) = sub_22C370B74(v121, 1, v126);
  v127 = sub_22C36BBCC();
  sub_22C36DD28(v127, v128, &unk_22C9195C0);
  v129 = v100;
  if (v122 == 1)
  {
    v130 = v0[55];
    v131 = v0[52];
    v132 = v0[53];
    sub_22C5C86BC();
    sub_22C37A198();
    swift_allocError();
    *v133 = xmmword_22C9114A0;
    swift_willThrow();
    v134 = sub_22C36BBCC();
    (v100)(v134);
    v138 = v0[54];
    v137 = v0[55];
    v140 = v0[50];
    v139 = v0[51];
    v141 = v0[48];
    v142 = v0[49];
    v144 = v0[44];
    v143 = v0[45];
    v146 = v0[42];
    v145 = v0[43];
    v271 = v0[41];
    v273 = v0[40];
    v274 = v0[37];
    v278 = v0[34];
    v280 = v0[33];
    v282 = v0[32];
    v284 = v0[31];
    v287 = v0[30];
    v289 = v0[27];
    v291 = v0[26];
    v295 = v0[23];
    v298 = v0[22];
    v302 = v0[19];
    v306 = v0[18];
    v310 = v0[15];

    sub_22C369A24();
LABEL_25:
    sub_22C5CAD40();

    __asm { BRAA            X1, X16 }
  }

  (*(v0[25] + 16))(v0[26], v0[14] + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime20PlanOverridesService_toolbox, v0[24]);
  v135 = sub_22C36BD58();
  sub_22C3FE8BC(v135, v136);
  v149 = v0[49];
  v150 = v0[23];
  v151 = v0[13];
  (*(v0[25] + 8))(v0[26], v0[24]);
  v152 = v0[5];
  v153 = v0[6];
  sub_22C374168(v0 + 2, v152);
  sub_22C90878C();
  (*(v153 + 8))(v149, v152, v153);
  v154 = v0[49];
  v155 = v0[46];
  v275 = v129;
  v156 = v0[23];
  v157 = sub_22C36BBCC();
  v8(v157);
  v158 = sub_22C4AF4A0();
  sub_22C5C8874(v156, type metadata accessor for FetchedTools);
  v159 = *(v158 + 16);
  if (v159)
  {
    v160 = v0[29];
    v161 = v0[21];
    v307 = *(v160 + 16);
    v162 = *(v160 + 80);
    sub_22C36BA94();
    v164 = v158 + v163;
    v303 = *(v165 + 56);
    v166 = (v165 - 8);
    v299 = (v167 + 32);
    v314 = MEMORY[0x277D84F90];
    do
    {
      v169 = v0[32];
      v168 = v0[33];
      v170 = v0[30];
      v171 = v0[28];
      v172 = v0[20];
      v173 = sub_22C372164();
      v307(v173);
      sub_22C9036BC();
      sub_22C4E7208(v169, v168, &qword_27D9BC1E8, &qword_22C9123B0);
      v174 = *v166;
      v175 = sub_22C37170C();
      v176(v175);
      v177 = sub_22C36CCF8();
      if (sub_22C370B74(v177, v178, v172) == 1)
      {
        sub_22C36DD28(v0[33], &qword_27D9BC1E8, &qword_22C9123B0);
      }

      else
      {
        v179 = *v299;
        (*v299)(v0[22], v0[33], v0[20]);
        v180 = v314;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v187 = *(v314 + 16);
          sub_22C36D270();
          sub_22C591C4C();
          v180 = v188;
        }

        v182 = *(v180 + 16);
        v181 = *(v180 + 24);
        if (v182 >= v181 >> 1)
        {
          sub_22C369AB0(v181);
          sub_22C591C4C();
          v180 = v189;
        }

        v183 = v0[22];
        v184 = v0[20];
        *(v180 + 16) = v182 + 1;
        sub_22C37054C();
        v314 = v180;
        v179(v180 + v185 + *(v186 + 72) * v182);
      }

      v164 += v303;
      --v159;
    }

    while (v159);
  }

  v190 = v0[50];
  v191 = v0[46];
  v192 = v0[19];
  v193 = v0[13];
  sub_22C90878C();
  v194 = sub_22C9087DC();
  v195 = sub_22C36BAFC();
  v8(v195);
  v0[11] = v194;
  sub_22C907EEC();

  v196 = sub_22C9079FC();
  v197 = sub_22C37EF1C();
  if (sub_22C370B74(v197, v198, v196) == 1)
  {
    sub_22C36DD28(v0[19], &qword_27D9BD798, &unk_22C919070);
    v199 = MEMORY[0x277D84F90];
  }

  else
  {
    v199 = MEMORY[0x2318B4EB0]();
    sub_22C36BBA8(v196);
    v201 = *(v200 + 8);
    v202 = sub_22C37170C();
    v203(v202);
  }

  v204 = v0[48];
  v206 = v0[14];
  v205 = v0[15];
  v207 = v0[13];
  sub_22C90878C();
  sub_22C5CA6E4();
  sub_22C5B5ADC(v208, v209, v210, v204, v211);
  v213 = v0[15];
  v212 = v0[16];
  (v8)(v0[48], v0[46]);

  sub_22C36D3E0(v213);
  if (v17)
  {
    v214 = v0[42];
    sub_22C36DD28(v0[15], &qword_27D9BA808, &qword_22C90C6E0);
    sub_22C903FBC();
    v215 = sub_22C9063CC();
    sub_22C90AACC();
    v216 = sub_22C370214();
    if (os_log_type_enabled(v216, v217))
    {
      sub_22C3720F4();
      v218 = swift_slowAlloc();
      sub_22C36C890(v218);
      sub_22C37F89C();
      _os_log_impl(v219, v220, v221, v222, v223, 2u);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    v224 = v0[55];
    v225 = v0[52];
    v226 = v0[53];
    v227 = v0[42];
    v228 = v0[38];
    v229 = v0[39];
    v230 = v0[16];
    v231 = v0[12];

    v232 = sub_22C36ECB4();
    v294(v232);
    v233 = sub_22C36BAFC();
    v275(v233);
    sub_22C36A748();
    v237 = v230;
    goto LABEL_60;
  }

  v239 = v0[17];
  v238 = v0[18];
  v240 = v0[15];
  v241 = v0[16];
  v242 = v0[14];
  v243 = *(v239 + 32);
  v0[58] = v243;
  v0[59] = (v239 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v243(v238, v240, v241);
  v244 = *(v242 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime20PlanOverridesService_delayDuration);
  if (v244 < 1)
  {
    v267 = sub_22C5CA744();
    v268(v267);
    sub_22C37017C();
    v206();
    sub_22C36BECC();
    v237 = v199;
LABEL_60:
    sub_22C36C640(v234, v235, v236, v237);
    sub_22C36FF94(v0 + 2);
LABEL_6:
    sub_22C5CA944();
    v276 = v0[37];
    v279 = v0[34];
    v281 = v0[33];
    v283 = v0[32];
    v285 = v0[31];
    v288 = v0[30];
    v290 = v0[27];
    v292 = v0[26];
    v296 = v0[23];
    v300 = v0[22];
    v304 = v0[19];
    v308 = v0[18];
    v311 = v0[15];

    sub_22C369C50();
    goto LABEL_25;
  }

  v245 = *(v0[14] + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime20PlanOverridesService_delayDurationVariation);
  v246 = -v245;
  if (__OFSUB__(0, v245))
  {
    __break(1u);
    goto LABEL_62;
  }

  if (v245 < v246)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  if (v245 == v246)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v247 = sub_22C5C8B28(2 * v245);
  v248 = v244 + v247 + v246;
  if (__OFADD__(v244, v247 + v246))
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v249 = v0[44];
  v250 = v248 & ~(v248 >> 63);
  sub_22C903FBC();
  v251 = sub_22C9063CC();
  sub_22C90AABC();
  v252 = sub_22C370214();
  if (os_log_type_enabled(v252, v253))
  {
    sub_22C36BED8();
    v254 = swift_slowAlloc();
    *v254 = 134217984;
    *(v254 + 4) = v250;
    sub_22C37F89C();
    _os_log_impl(v255, v256, v257, v258, v259, 0xCu);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  v260 = v0[44];
  v261 = v0[38];
  v262 = v0[39];

  v0[60] = (v262 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v263 = sub_22C36BAFC();
  v294(v263);
  if ((v250 * 1000000) >> 64 != (1000000 * v250) >> 63)
  {
    goto LABEL_65;
  }

  if (1000000 * v250 < 0)
  {
LABEL_66:
    __break(1u);
    return MEMORY[0x282200480]();
  }

  v264 = *(MEMORY[0x277D857E8] + 4);
  v265 = swift_task_alloc();
  v0[61] = v265;
  *v265 = v0;
  v265[1] = sub_22C5B4058;
  sub_22C5CAD40();

  return MEMORY[0x282200480]();
}

uint64_t sub_22C5B4058()
{
  sub_22C36FB38();
  v2 = *v1;
  v3 = *(*v1 + 488);
  v4 = *v1;
  sub_22C369970();
  *v5 = v4;

  v6 = *(v2 + 112);
  if (v0)
  {

    v7 = sub_22C5CA3A8;
  }

  else
  {
    v7 = sub_22C5B4184;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_22C5B4184()
{
  v1 = v0[43];
  sub_22C903FBC();
  v2 = sub_22C9063CC();
  sub_22C90AABC();
  v3 = sub_22C370214();
  if (os_log_type_enabled(v3, v4))
  {
    sub_22C3720F4();
    v5 = swift_slowAlloc();
    sub_22C36C890(v5);
    sub_22C37F89C();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  v11 = v0[60];
  v12 = v0[56];
  v13 = v0[43];
  v14 = v0[38];

  v15 = sub_22C36BAFC();
  (v12)(v15);
  v16 = sub_22C5CA744();
  v17(v16);
  sub_22C37017C();
  v12();
  sub_22C36BECC();
  sub_22C36C640(v18, v19, v20, v13);
  sub_22C36FF94(v0 + 2);
  sub_22C5CA944();
  v23 = v0[37];
  v24 = v0[34];
  v25 = v0[33];
  v26 = v0[32];
  v27 = v0[31];
  v28 = v0[30];
  v29 = v0[27];
  v30 = v0[26];
  v31 = v0[23];
  v32 = v0[22];
  v33 = v0[19];
  v34 = v0[18];
  v35 = v0[15];

  sub_22C369C50();

  return v21();
}

id *sub_22C5B43AC()
{
  static Session.Transcript.userQuery(event:)();
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime20PlanOverridesService_planOverridesStore;
  v3 = *(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime20PlanOverridesService_planOverridesStore);
  if (!v3)
  {

    return MEMORY[0x277D84F90];
  }

  v5 = *(v2 + 8);
  v4 = *(v2 + 16);
  v16[0] = v3;
  v16[1] = v5;
  v16[2] = v4;
  v6 = v3;
  v7 = v5;
  v8 = v4;
  sub_22C36BAFC();
  v9 = sub_22C5CB200();

  if (v9[2] >= 2uLL)
  {
    v16[0] = v9;
    if (qword_27D9BA6F0 != -1)
    {
      swift_once();
    }

    v10 = sub_22C37170C();
    v12 = sub_22C3A5908(v10, v11);
    sub_22C37AA60(v12, qword_27D9BE6C8);
    v13 = sub_22C36CA88();
    sub_22C3A5908(v13, v14);
    sub_22C3D32C8(&qword_27D9BEC90, &qword_27D9BE730, &qword_22C91E320);
    sub_22C3D32C8(&qword_27D9BEC98, &qword_27D9BE998, &qword_22C91E400);
    sub_22C3863FC();
    sub_22C90A4BC();
    sub_22C37BB14();

    return v16;
  }

  return v9;
}

uint64_t sub_22C5B4568(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v203 = a2;
  v194 = a3;
  v195 = a4;
  v178 = sub_22C9063DC();
  v6 = sub_22C369824(v178);
  v210 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22C3698E4();
  v171 = v10;
  sub_22C369930();
  MEMORY[0x28223BE20](v11);
  sub_22C36BA64();
  v193 = v12;
  sub_22C36BA0C();
  v192 = sub_22C906ECC();
  v13 = sub_22C369824(v192);
  v209 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22C3698A8();
  v191 = v17;
  sub_22C36BA0C();
  v190 = sub_22C9089DC();
  v18 = sub_22C369824(v190);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22C3698E4();
  v185 = v23;
  sub_22C369930();
  MEMORY[0x28223BE20](v24);
  sub_22C36BA64();
  v189 = v25;
  sub_22C36BA0C();
  v200 = sub_22C901FAC();
  v26 = sub_22C369824(v200);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  sub_22C3698E4();
  v176 = v31;
  sub_22C369930();
  MEMORY[0x28223BE20](v32);
  sub_22C36BA64();
  v180 = v33;
  sub_22C36BA0C();
  v206 = sub_22C90069C();
  v34 = sub_22C369824(v206);
  v208 = v35;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  sub_22C3698E4();
  v175 = v38;
  sub_22C369930();
  MEMORY[0x28223BE20](v39);
  sub_22C36BA64();
  v212 = v40;
  v41 = sub_22C36BA0C();
  v42 = type metadata accessor for PlanOverridesService.EventReference(v41);
  v43 = sub_22C369824(v42);
  v184 = v44;
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v43);
  sub_22C3698E4();
  v211 = v47;
  sub_22C369930();
  MEMORY[0x28223BE20](v48);
  v50 = &v169 - v49;
  v216 = sub_22C908A0C();
  v51 = sub_22C369824(v216);
  v53 = v52;
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v51);
  sub_22C3698E4();
  v170 = v56;
  sub_22C369930();
  MEMORY[0x28223BE20](v57);
  sub_22C373000();
  v58 = a1[1];
  v214 = *a1;
  v215 = v58;

  sub_22C36ECB4();
  v188 = v42;
  v59 = sub_22C909F0C();
  sub_22C36ECB4();
  v60 = sub_22C909F0C();
  v61 = v202 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime20PlanOverridesService_planOverridesStore;
  v201 = v53 + 16;
  v223 = v60;
  v62 = *(v203 + 16);
  v196 = &v218[2];
  v179 = v28 + 16;
  v181 = v28;
  v199 = v28 + 8;
  v204 = (v208 + 32);
  v205 = (v20 + 8);
  v187 = (v20 + 88);
  v186 = *MEMORY[0x277D1E798];
  v173 = (v209 + 32);
  v174 = (v20 + 96);
  v177 = (v210 + 8);
  v172 = v209 + 8;
  v197 = (v53 + 8);
  v198 = v53;
  v63 = v62 - 1;
  v213 = v50;
  v183 = v202 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime20PlanOverridesService_planOverridesStore;
  while (1)
  {
    if (v63 == -1)
    {

      return v59;
    }

    sub_22C37054C();
    v66 = *(v65 + 16);
    v67 = v216;
    v66(v4, v203 + v64 + *(v65 + 72) * v63, v216);
    v68 = *v61;
    if (!*v61)
    {

      v140 = sub_22C385558();
      v141(v140, v67);
      return v59;
    }

    v182 = v66;
    v207 = v63;
    v208 = v59;
    v69 = v4;
    v72 = v61 + 8;
    v71 = *(v61 + 8);
    v209 = *(v72 + 8);
    v70 = v209;
    v210 = v71;
    sub_22C5CA130(v219);
    memcpy(v222, v219, sizeof(v222));
    v73 = v214;
    v74 = v215;
    sub_22C90A1DC();
    v75 = v68;
    v76 = v71;
    v77 = v70;
    v78 = sub_22C90A0EC();

    sub_22C36D2A8();
    v79 = swift_allocObject();
    v79[2] = v222;
    v79[3] = v73;
    v79[4] = v74;
    v80 = swift_allocObject();
    *(v80 + 16) = sub_22C5CA138;
    *(v80 + 24) = v79;
    v218[4] = sub_22C5CA144;
    v218[5] = v80;
    v218[0] = MEMORY[0x277D85DD0];
    v218[1] = 1107296256;
    v218[2] = sub_22C5C8528;
    v218[3] = &unk_283FBD5A0;
    v81 = _Block_copy(v218);

    [v77 lookupKey:v78 resultBlock:v81];

    _Block_release(v81);
    sub_22C5CA700();
    LOBYTE(v73) = swift_isEscapingClosureAtFileLocation();

    sub_22C36E030(v68, v210, v209);
    if (v73)
    {
      break;
    }

    memcpy(v220, v222, sizeof(v220));
    memcpy(v221, v222, sizeof(v221));
    if (sub_22C4DDD30(v221) == 1)
    {
      v142 = sub_22C5CA824();
      v143(v142, v216);

      return v208;
    }

    memcpy(v218, v221, sizeof(v218));
    v4 = v69;
    sub_22C5B862C();
    v82 = v216;
    if ((v83 & 1) == 0)
    {

      v144 = v171;
      sub_22C903FBC();
      v145 = v170;
      v146 = sub_22C441720();
      v182(v146);
      memcpy(v218, v220, sizeof(v218));
      sub_22C472384(v218, v217);
      v147 = sub_22C9063CC();
      v148 = sub_22C90AACC();
      sub_22C36DD28(v220, &qword_27D9BEC80, &unk_22C920630);
      if (os_log_type_enabled(v147, v148))
      {
        v149 = sub_22C383050();
        v214 = sub_22C37A180();
        v217[0] = v214;
        *v149 = 136315394;
        sub_22C37BE68();
        sub_22C5C87F4(v150, v151);
        sub_22C90B47C();
        v152 = sub_22C387194();
        v215 = v69;
        v153 = *v197;
        (*v197)(v152, v82);
        v154 = sub_22C37B9B0();
        sub_22C36F9F4(v154, v155, v156);
        sub_22C387194();

        *(v149 + 4) = v145;
        *(v149 + 12) = 2080;
        v157 = v221[0];

        sub_22C36DD28(v220, &qword_27D9BEC80, &unk_22C920630);
        v158 = sub_22C37B9B0();
        sub_22C36F9F4(v158, v159, v160);
        sub_22C387194();

        *(v149 + 14) = v157;
        _os_log_impl(&dword_22C366000, v147, v148, "Transcript event fails to match previous statement. This shouldn't happen. Transcript event %s. Stored statement id: %s", v149, 0x16u);
        swift_arrayDestroy();
        v161 = sub_22C37B310();
        MEMORY[0x2318B9880](v161);
        v162 = sub_22C3816C4();
        MEMORY[0x2318B9880](v162);

        v163 = sub_22C385558();
        v164(v163);
        v153(v215, v82);
      }

      else
      {

        sub_22C36DD28(v220, &qword_27D9BEC80, &unk_22C920630);
        v165 = *v197;
        v166 = sub_22C36EC6C();
        (v165)(v166);
        (*v177)(v144, v178);
        v167 = sub_22C372158();
        (v165)(v167);
      }

      return v208;
    }

    sub_22C9087FC();
    v84 = v189;
    sub_22C9089EC();
    v85 = sub_22C9089AC();
    v86 = *v205;
    (*v205)(v84, v190);
    v87 = v208;
    if (*(v85 + 16))
    {
      v89 = v180;
      v88 = v181;
      v90 = *(v181 + 80);
      sub_22C36BA94();
      (*(v88 + 16))(v89, v85 + v91, v200);

      v92 = sub_22C901F9C();
      v93 = *(v88 + 8);
      v94 = sub_22C3720DC();
      v95(v94);
    }

    else
    {

      v92 = 1;
    }

    v96 = v185;
    v97 = *v204;
    v98 = v213;
    (*v204)(v213, v212, v206);
    v99 = *(v188 + 20);
    *(v98 + v99) = v92;
    sub_22C9089EC();
    v100 = *v187;
    v101 = sub_22C3819EC();
    v103 = v102(v101);
    if (v103 == v186)
    {
      v104 = *v174;
      v105 = sub_22C3819EC();
      v106(v105);
      (*v173)(v191, v96, v192);
      sub_22C903FBC();
      v107 = sub_22C9063CC();
      v108 = sub_22C90AACC();
      v109 = sub_22C370214();
      if (os_log_type_enabled(v109, v110))
      {
        sub_22C3720F4();
        v111 = swift_slowAlloc();
        sub_22C36C890(v111);
        _os_log_impl(&dword_22C366000, v107, v108, "Transcript event is a statementEvaluated event; we are going to use .resultStatementId instead", v86, 2u);
        sub_22C369B50();
        MEMORY[0x2318B9880]();
      }

      (*v177)(v193, v178);
      sub_22C9087FC();
      sub_22C906E1C();
      v112 = sub_22C901F9C();
      v113 = sub_22C5CA5C8();
      v114(v113);
      v115 = sub_22C36D400();
      v116(v115, v192);
      sub_22C3872A0();
      v117 = v213;
      sub_22C5C8874(v213, v118);
      v119 = sub_22C5CAA58();
      v97(v119);
      *(v117 + v99) = v112;
    }

    else
    {
      v120 = sub_22C3819EC();
      (v86)(v120);
      v117 = v213;
    }

    v121 = sub_22C90A1DC();
    v123 = v122;

    sub_22C3831E0();
    sub_22C5CA0B8(v117, v211);
    swift_isUniquelyReferenced_nonNull_native();
    v218[0] = v87;
    v124 = sub_22C36E2BC(v121, v123);
    if (__OFADD__(*(v87 + 16), (v125 & 1) == 0))
    {
      goto LABEL_35;
    }

    v126 = v124;
    v127 = v125;
    sub_22C3A5908(&qword_27D9BEC88, &unk_22C920530);
    if (sub_22C90B15C())
    {
      v128 = sub_22C36E2BC(v121, v123);
      if ((v127 & 1) != (v129 & 1))
      {
        goto LABEL_37;
      }

      v126 = v128;
    }

    v59 = v218[0];
    if (v127)
    {
      sub_22C5CAC9C();
      sub_22C5CA184(v211, v130);
    }

    else
    {
      sub_22C36ED48(v218[0] + 8 * (v126 >> 6));
      v131 = (*(v59 + 48) + 16 * v126);
      *v131 = v121;
      v131[1] = v123;
      sub_22C5CAC9C();
      sub_22C386250();
      sub_22C5C8974(v211, v132);
      v133 = *(v59 + 16);
      v134 = __OFADD__(v133, 1);
      v135 = v133 + 1;
      if (v134)
      {
        goto LABEL_36;
      }

      *(v59 + 16) = v135;
    }

    sub_22C3872A0();
    sub_22C5C8874(v213, v136);
    v137 = sub_22C385558();
    v138(v137, v216);
    v61 = v183;
    v139 = v207;
    if (!v221[11])
    {
      sub_22C36DD28(v220, &qword_27D9BEC80, &unk_22C920630);
      return v59;
    }

    v214 = v221[10];
    v215 = v221[11];

    sub_22C36DD28(v220, &qword_27D9BEC80, &unk_22C920630);
    v63 = v139 - 1;
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

void sub_22C5B530C()
{
  sub_22C36BA7C();
  v1 = v0;
  v2 = sub_22C9026BC();
  v3 = sub_22C369824(v2);
  v63 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C3698A8();
  sub_22C36BA0C();
  v7 = sub_22C907DEC();
  v8 = sub_22C369824(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22C369838();
  sub_22C37BDA4();
  v11 = sub_22C9089DC();
  v12 = sub_22C369824(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22C369838();
  sub_22C36EC5C();
  v17 = sub_22C908A0C();
  v18 = sub_22C369824(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22C369838();
  v25 = v24 - v23;
  v26 = sub_22C906ECC();
  v27 = sub_22C369824(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  sub_22C369838();
  sub_22C5CA768();
  if (*(v1 + 16) < 2uLL)
  {
LABEL_11:
    sub_22C36CC48();
    return;
  }

  v62 = v30;

  sub_22C5AD8D0();
  if (*(v31 + 16) >= 2uLL)
  {
    v32 = *(v20 + 80);
    sub_22C36BA94();
    (*(v20 + 16))(v25, v33 + *(v20 + 72) + v34, v17);

    sub_22C9089EC();
    v35 = *(v20 + 8);
    v36 = sub_22C380120();
    v37(v36);
    v38 = v14[11];
    v39 = sub_22C371510();
    if (v40(v39) == *MEMORY[0x277D1E798])
    {
      v41 = v14[12];
      v42 = sub_22C371510();
      v43(v42);
      v44 = *(v62 + 32);
      sub_22C5CA714();
      v45();
      sub_22C906EBC();
      sub_22C907DAC();
      v46 = sub_22C5CA720();
      v47(v46);
      v48 = *(v62 + 8);
      v49 = sub_22C372158();
      v50(v49);
      v51 = *(v63 + 88);
      v52 = sub_22C38674C();
      v54 = v53(v52);
      v55 = v54 == *MEMORY[0x277D1CBB8] || v54 == *MEMORY[0x277D1CBD0];
      if (!v55)
      {
        v55 = v54 == *MEMORY[0x277D1CBD8];
      }

      v56 = *(v63 + 8);
      v57 = sub_22C38674C();
      v58(v57);
    }

    else
    {
      v59 = v14[1];
      v60 = sub_22C371510();
      v61(v60);
    }

    goto LABEL_11;
  }

  __break(1u);
}

void sub_22C5B56F0()
{
  sub_22C36BA7C();
  v3 = v2;
  v5 = v4;
  sub_22C388C54();
  v52 = sub_22C9063DC();
  v6 = sub_22C369824(v52);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22C369ABC();
  sub_22C381AEC();
  MEMORY[0x28223BE20](v11);
  sub_22C36CAC0();
  v12 = sub_22C5B43AC();
  v13 = v12;
  v14 = v12[2];
  if (v14)
  {
    v46 = v1;
    v49 = v0;
    v50 = (v8 + 8);
    v15 = v14 - 1;
    v16 = 4;
    v47 = v3;
    v48 = v5;
    v51 = v12;
    while (1)
    {
      memcpy(v54, &v13[v16], 0xD0uLL);
      if (v3)
      {
        v17 = v54[0];
        v18 = v54[1];
        if (LOBYTE(v54[23]) == 2 || (v54[23] & 1) == 0)
        {
          sub_22C5CAB7C();
          sub_22C903FBC();
          sub_22C5CAB7C();
          v33 = sub_22C9063CC();
          v34 = sub_22C90AACC();
          sub_22C4723E0(v54);
          v35 = sub_22C3729E4();
          if (os_log_type_enabled(v35, v36))
          {
            sub_22C36BED8();
            v37 = swift_slowAlloc();
            sub_22C370220();
            v38 = swift_slowAlloc();
            v53[0] = v38;
            *v37 = 136315138;

            sub_22C4723E0(v54);
            v39 = sub_22C36F9F4(v17, v18, v53);

            *(v37 + 4) = v39;
            _os_log_impl(&dword_22C366000, v33, v34, "The penultimateEventIsPrompting, and applyToPromptScenarios is false, so skipping override: %s", v37, 0xCu);
            sub_22C36FF94(v38);
            v3 = v47;
            sub_22C369B50();
            MEMORY[0x2318B9880]();
            sub_22C369B50();
            MEMORY[0x2318B9880]();
          }

          else
          {
            sub_22C4723E0(v54);
          }

          (*v50)(v49, v52);
          v5 = v48;
          v13 = v51;
          if (!v15)
          {
            goto LABEL_22;
          }

          goto LABEL_19;
        }

        sub_22C5CAB7C();
        sub_22C903FBC();
        sub_22C5CAB7C();
        v19 = sub_22C9063CC();
        sub_22C90AACC();
        sub_22C4723E0(v54);
        v20 = sub_22C3729E4();
        if (os_log_type_enabled(v20, v21))
        {
          sub_22C36BED8();
          swift_slowAlloc();
          sub_22C3735E4();
          v22 = swift_slowAlloc();
          v53[0] = v22;
          *v3 = 136315138;

          v23 = sub_22C36F9F4(v17, v18, v53);

          *(v3 + 4) = v23;
          sub_22C5CA61C();
          _os_log_impl(v24, v25, v26, v27, v28, v29);
          sub_22C36FF94(v22);
          sub_22C369B50();
          MEMORY[0x2318B9880]();
          v3 = v47;
          sub_22C369B50();
          MEMORY[0x2318B9880]();

          (*v50)(v46, v52);
        }

        else
        {

          v40 = sub_22C36D400();
          v41(v40, v52);
        }

        v13 = v51;
        v30 = *v5;
      }

      else
      {
        v30 = *v5;
        sub_22C5CAB7C();
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v42 = *(v30 + 16);
        sub_22C36D270();
        sub_22C593968();
        v30 = v43;
      }

      v32 = *(v30 + 16);
      v31 = *(v30 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_22C369AB0(v31);
        sub_22C3827B4();
        sub_22C593968();
        v30 = v44;
      }

      *(v30 + 16) = v32 + 1;
      memcpy((v30 + 208 * v32 + 32), v54, 0xD0uLL);
      *v5 = v30;
      if (!v15)
      {
LABEL_22:

        sub_22C36CC48();
        return;
      }

LABEL_19:
      --v15;
      v16 += 26;
    }
  }

  sub_22C36CC48();
}

uint64_t sub_22C5B5ADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v493 = a3;
  v494 = a4;
  v474 = a2;
  v489 = a5;
  v482 = sub_22C90075C();
  v9 = sub_22C369824(v482);
  v484 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22C3698A8();
  v481 = v13;
  v14 = sub_22C3A5908(&qword_27D9BBC00, &unk_22C911240);
  sub_22C369914(v14);
  v16 = *(v15 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v17);
  sub_22C36D5B4();
  v480 = v18;
  sub_22C36BA0C();
  v514 = sub_22C90077C();
  v19 = sub_22C369824(v514);
  v483 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22C3698E4();
  v479 = v23;
  sub_22C369930();
  MEMORY[0x28223BE20](v24);
  sub_22C36BA64();
  v503 = v25;
  v26 = sub_22C3A5908(&qword_27D9BD820, &unk_22C9195C0);
  v27 = sub_22C369914(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  sub_22C3698E4();
  v487 = v30;
  sub_22C369930();
  MEMORY[0x28223BE20](v31);
  sub_22C36BA58();
  v517 = v32;
  sub_22C369930();
  MEMORY[0x28223BE20](v33);
  sub_22C36BA64();
  v519 = v34;
  v35 = sub_22C3A5908(&qword_27D9BC068, &qword_22C920590);
  sub_22C369914(v35);
  v37 = *(v36 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v38);
  sub_22C36D5B4();
  *&v488 = v39;
  sub_22C36BA0C();
  v504 = sub_22C9088CC();
  v40 = sub_22C369824(v504);
  v486 = v41;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v40);
  sub_22C3698A8();
  v485 = v44;
  sub_22C36BA0C();
  v509 = sub_22C9063DC();
  v45 = sub_22C369824(v509);
  v491 = v46;
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v45);
  sub_22C3698E4();
  v478 = v49;
  sub_22C369930();
  MEMORY[0x28223BE20](v50);
  sub_22C36BA58();
  v473 = v51;
  sub_22C369930();
  MEMORY[0x28223BE20](v52);
  sub_22C36BA58();
  v472 = v53;
  sub_22C369930();
  MEMORY[0x28223BE20](v54);
  sub_22C36BA58();
  v492 = v55;
  sub_22C369930();
  MEMORY[0x28223BE20](v56);
  sub_22C36BA58();
  v497 = v57;
  sub_22C369930();
  MEMORY[0x28223BE20](v58);
  sub_22C36BA58();
  v499 = v59;
  sub_22C369930();
  MEMORY[0x28223BE20](v60);
  sub_22C36BA58();
  *&v475 = v61;
  sub_22C369930();
  MEMORY[0x28223BE20](v62);
  sub_22C36BA58();
  v490 = v63;
  sub_22C369930();
  MEMORY[0x28223BE20](v64);
  sub_22C36BA58();
  v496 = v65;
  sub_22C369930();
  MEMORY[0x28223BE20](v66);
  sub_22C36BA64();
  v512 = v67;
  sub_22C36BA0C();
  v510 = sub_22C9089DC();
  v68 = sub_22C369824(v510);
  v508 = v69;
  v71 = *(v70 + 64);
  MEMORY[0x28223BE20](v68);
  sub_22C3698A8();
  v507 = v72;
  v73 = sub_22C3A5908(&qword_27D9BA808, &qword_22C90C6E0);
  v74 = sub_22C369914(v73);
  v76 = *(v75 + 64);
  MEMORY[0x28223BE20](v74);
  sub_22C3698E4();
  v518 = v77;
  sub_22C369930();
  MEMORY[0x28223BE20](v78);
  sub_22C373000();
  v79 = sub_22C90880C();
  v80 = sub_22C369824(v79);
  v82 = v81;
  v84 = *(v83 + 64);
  MEMORY[0x28223BE20](v80);
  sub_22C3698E4();
  v495 = v85;
  sub_22C369930();
  MEMORY[0x28223BE20](v86);
  sub_22C36BA58();
  v506 = v87;
  sub_22C369930();
  MEMORY[0x28223BE20](v88);
  sub_22C36BA58();
  v516 = v89;
  sub_22C369930();
  MEMORY[0x28223BE20](v90);
  v92 = &v469 - v91;
  v93 = sub_22C908A0C();
  v94 = sub_22C369824(v93);
  v520 = v95;
  v97 = *(v96 + 64);
  MEMORY[0x28223BE20](v94);
  sub_22C3698E4();
  v515 = v98;
  sub_22C369930();
  MEMORY[0x28223BE20](v99);
  sub_22C36D6DC();
  MEMORY[0x28223BE20](v100);
  sub_22C36BA58();
  v498 = v101;
  sub_22C369930();
  MEMORY[0x28223BE20](v102);
  sub_22C36CAC0();
  v513 = a1;
  sub_22C90878C();
  v103 = sub_22C9087DC();
  v104 = *(v82 + 8);
  v105 = v92;
  v106 = v93;
  v501 = v82 + 8;
  v502 = v79;
  v500 = v104;
  (v104)(v105, v79);
  v107 = v520;
  sub_22C3A5950(v103);

  v108 = sub_22C5CA7F4();
  sub_22C36D0A8(v108, v109, v93);
  if (v114)
  {
    sub_22C36DD28(v6, &qword_27D9BA808, &qword_22C90C6E0);
  }

  else
  {
    v110 = v107[4];
    v521 = v93;
    v110(v5, v6, v93);
    v111 = v507;
    v477 = v5;
    sub_22C9089EC();
    v112 = v508;
    v113 = (v508[11])(v111, v510);
    v114 = v113 == *MEMORY[0x277D1E858] || v113 == *MEMORY[0x277D1E740];
    if (!v114 && v113 != *MEMORY[0x277D1E788] && v113 != *MEMORY[0x277D1E798] && v113 != *MEMORY[0x277D1E808] && v113 != *MEMORY[0x277D1E768] && v113 != *MEMORY[0x277D1E778])
    {
      sub_22C903FBC();
      v195 = sub_22C9063CC();
      sub_22C90AACC();
      v196 = sub_22C37E2D0();
      if (os_log_type_enabled(v196, v197))
      {
        sub_22C3720F4();
        v199 = swift_slowAlloc();
        *v199 = 0;
        sub_22C3839B4();
        _os_log_impl(v200, v201, v202, v203, v199, 2u);
        sub_22C369B50();
        MEMORY[0x2318B9880]();
      }

      (*(v491 + 8))(v512, v509);
      v204 = v521;
      (v107[1])(v477, v521);
      sub_22C36A748();
      sub_22C36C640(v205, v206, v207, v204);
      v208 = v112[1];
      v209 = sub_22C388EF4();
      return v210(v209);
    }

    v120 = v112[1];
    v121 = sub_22C36FBFC();
    v122(v121);
    v123 = v496;
    sub_22C903FBC();
    v124 = sub_22C9063CC();
    sub_22C90AACC();
    v125 = sub_22C37E2D0();
    if (os_log_type_enabled(v125, v126))
    {
      sub_22C3720F4();
      *swift_slowAlloc() = 0;
      sub_22C3839B4();
      sub_22C5CA7D0();
      _os_log_impl(v127, v128, v129, v130, v131, v132);
      v133 = sub_22C36D66C();
      MEMORY[0x2318B9880](v133);
    }

    (*(v491 + 8))(v123, v509);
    v106 = v521;
    (v107[1])(v477, v521);
  }

  v134 = v518;
  v135 = v516;
  sub_22C90878C();
  sub_22C5ADB94(v134);
  v136 = v500;
  (v500)(v135, v502);
  v137 = sub_22C5CA7F4();
  sub_22C36D0A8(v137, v138, v106);
  if (v114)
  {
    sub_22C36DD28(v134, &qword_27D9BA808, &qword_22C90C6E0);
    sub_22C36A748();
    v142 = v106;
    return sub_22C36C640(v139, v140, v141, v142);
  }

  v144 = (v520 + 4);
  v143 = v520[4];
  v521 = v106;
  v512 = v143;
  (v143)(v498, v134, v106);
  sub_22C90878C();
  v145 = sub_22C9087DC();
  v146 = sub_22C441720();
  v136(v146);
  v147 = 0;
  v148 = *(v145 + 16);
  v516 = v144;
  v518 = (v144 - 24);
  v496 = MEMORY[0x277D84F90];
  isEscapingClosureAtFileLocation = v505;
  while (v148 != v147)
  {
    if (v147 >= *(v145 + 16))
    {
      __break(1u);
LABEL_179:

      sub_22C381330();
      v458();
      v445 = 0;
      goto LABEL_180;
    }

    v150 = (*(v520 + 80) + 32) & ~*(v520 + 80);
    v144 = v520[9];
    (v520[2])(v7, v145 + v150 + v144 * v147, v521);
    v151 = sub_22C5B7FA8(v7);
    if (isEscapingClosureAtFileLocation)
    {
      goto LABEL_187;
    }

    if (v151)
    {
      (v512)(v515, v7, v521);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v155 = v496;
      v530[0] = v496;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v156 = *(v496 + 16) + 1;
        v505 = 0;
        sub_22C3B6068(0, v156, 1);
        isEscapingClosureAtFileLocation = v505;
        v155 = v530[0];
      }

      v158 = *(v155 + 16);
      v157 = *(v155 + 24);
      v159 = v158 + 1;
      if (v158 >= v157 >> 1)
      {
        v160 = sub_22C369AB0(v157);
        v505 = isEscapingClosureAtFileLocation;
        v510 = v161;
        v508 = v162;
        sub_22C3B6068(v160, v161, 1);
        v159 = v510;
        v158 = v508;
        isEscapingClosureAtFileLocation = v505;
        v155 = v530[0];
      }

      ++v147;
      *(v155 + 16) = v159;
      v496 = v155;
      (v512)(v155 + v150 + v158 * v144, v515, v521);
    }

    else
    {
      v152 = sub_22C5CA824();
      v153(v152, v521);
      ++v147;
    }
  }

  v505 = isEscapingClosureAtFileLocation;

  v163 = v490;
  sub_22C903FBC();
  v164 = v496;

  v165 = sub_22C9063CC();
  sub_22C90AACC();

  v166 = sub_22C5CA9D4();
  if (os_log_type_enabled(v166, v167))
  {
    sub_22C36BED8();
    swift_slowAlloc();
    sub_22C3735E4();
    v168 = swift_slowAlloc();
    v530[0] = v168;
    *v145 = 136315138;
    v169 = MEMORY[0x2318B7AD0](v164, v521);
    sub_22C36F9F4(v169, v170, v530);
    sub_22C5CAE44();
    *(v145 + 4) = &unk_22C90D000;
    sub_22C5CA550();
    _os_log_impl(v171, v172, v173, v174, v175, v176);
    sub_22C36FF94(v168);
    v177 = sub_22C36ACAC();
    MEMORY[0x2318B9880](v177);
    v178 = sub_22C36D66C();
    MEMORY[0x2318B9880](v178);
  }

  v506 = *(v491 + 8);
  v506(v163, v509);
  v179 = v511;
  v180 = v519;
  v181 = v504;
  v182 = v488;
  v183 = v495;
  sub_22C90878C();
  v184 = sub_22C9087DC();
  (v500)(v183, v502);
  v530[0] = v184;
  v185 = sub_22C372164();
  v187 = sub_22C3A5908(v185, v186);
  sub_22C369E24();
  sub_22C44178C();
  v476 = sub_22C3D32C8(v188, v189, v190);
  v477 = v187;
  sub_22C907DFC();

  v191 = sub_22C5CA7F4();
  v193 = "Statement";
  if (sub_22C370B74(v191, v192, v181) == 1)
  {
    sub_22C36DD28(v182, &qword_27D9BC068, &qword_22C920590);
    v512 = MEMORY[0x277D84F90];
    v194 = v517;
    goto LABEL_63;
  }

  v212 = v485;
  v213 = v486;
  sub_22C5CA7E8();
  v214(v212, v182, v181);
  v215 = sub_22C90886C();
  v194 = v517;
  if (!v216)
  {
    v232 = *(v213 + 8);
    v233 = sub_22C380120();
    v234(v233);
    v512 = MEMORY[0x277D84F90];
    goto LABEL_63;
  }

  v217 = v215;
  v218 = v216;
  v219 = v179 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime20PlanOverridesService_planOverridesStore;
  isEscapingClosureAtFileLocation = *(v179 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime20PlanOverridesService_planOverridesStore);
  if (isEscapingClosureAtFileLocation)
  {
    v220 = *(v219 + 16);
    v520 = *(v219 + 8);
    v221 = v520;
    sub_22C5CA130(v526);
    memcpy(v530, v526, sizeof(v530));
    sub_22C5CA738();
    sub_22C90A1DC();
    v222 = isEscapingClosureAtFileLocation;
    v223 = v221;
    v224 = v220;
    sub_22C36EC6C();
    v225 = sub_22C90A0EC();

    sub_22C36D2A8();
    v226 = swift_allocObject();
    v227 = v217;
    v228 = v226;
    v226[2] = v530;
    v226[3] = v227;
    v516 = v227;
    v226[4] = v218;
    v229 = swift_allocObject();
    *(v229 + 16) = sub_22C5CA3AC;
    *(v229 + 24) = v228;
    v522[4] = sub_22C5CA3B8;
    v522[5] = v229;
    v522[0] = MEMORY[0x277D85DD0];
    v522[1] = 1107296256;
    v522[2] = sub_22C5C8528;
    v522[3] = &unk_283FBD690;
    v230 = _Block_copy(v522);

    [v224 lookupKey:v225 resultBlock:v230];

    _Block_release(v230);
    sub_22C5CA700();
    LOBYTE(v230) = swift_isEscapingClosureAtFileLocation();

    sub_22C36E030(isEscapingClosureAtFileLocation, v520, v220);
    v231 = v475;
    if (v230)
    {
      goto LABEL_186;
    }

    memcpy(v527, v530, sizeof(v527));
    sub_22C375CEC();
    if (sub_22C4DDD30(v528) != 1)
    {

      v512 = v529;
      v194 = v517;
      v180 = v519;
      v250 = v504;
      v251 = v485;
      if (v529)
      {
      }

      else
      {
        v512 = MEMORY[0x277D84F90];
      }

      v179 = v511;
      v252 = v486;
      sub_22C36DD28(v527, &qword_27D9BEC80, &unk_22C920630);
      (*(v252 + 8))(v251, v250);
      goto LABEL_62;
    }

    v179 = v511;
    v180 = v519;
    v181 = v504;
  }

  else
  {
    v231 = v475;
  }

  sub_22C903FBC();

  v235 = sub_22C9063CC();
  sub_22C90AACC();

  v236 = sub_22C5CA9D4();
  if (os_log_type_enabled(v236, v237))
  {
    sub_22C36BED8();
    v238 = swift_slowAlloc();
    sub_22C370220();
    v239 = swift_slowAlloc();
    v530[0] = v239;
    *v238 = 136315138;
    v240 = sub_22C5CA738();
    v243 = v231;
    v244 = sub_22C36F9F4(v240, v241, v242);

    *(v238 + 4) = v244;
    sub_22C3839B4();
    _os_log_impl(v245, v246, v247, v248, v238, 0xCu);
    sub_22C36FF94(v239);
    v179 = v511;
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    v180 = v519;
    sub_22C369B50();
    MEMORY[0x2318B9880]();

    v249 = v243;
  }

  else
  {

    v249 = sub_22C5CABB8();
  }

  v506(v249, v509);
  (*(v486 + 8))(v485, v181);
  v512 = MEMORY[0x277D84F90];
  v194 = v517;
LABEL_62:
  v193 = "Statement";
LABEL_63:
  v522[0] = MEMORY[0x277D84F90];
  sub_22C5B530C();
  LODWORD(v504) = v253;
  isEscapingClosureAtFileLocation = v513;
  v510 = *(v512 + 2);
  if (v510)
  {
    v254 = 0;
    v255 = v179 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime20PlanOverridesService_planOverridesStore;
    v508 = &v527[2];
    v256 = (v512 + 40);
    v507 = MEMORY[0x277D84F90];
    v257 = *(v193 + 465);
    v490 = (v512 + 40);
LABEL_65:
    v258 = &v256[2 * v254];
    while (v510 != v254)
    {
      if (v254 >= *(v512 + 2))
      {
        __break(1u);
LABEL_184:
        __break(1u);
LABEL_185:
        __break(1u);
LABEL_186:
        __break(1u);
LABEL_187:

        v465 = sub_22C5CA824();
        v466(v465, v521);

        __break(1u);
        return result;
      }

      v259 = *v255;
      if (*v255)
      {
        v515 = v258;
        v516 = v254;
        v261 = *(v258 - 1);
        v260 = *v258;
        v262 = v255;
        v263 = *(v255 + 16);
        v264 = v262;
        v520 = *(v262 + 8);
        v265 = v520;
        sub_22C5CA130(v528);
        v266 = sub_22C5CA72C();
        memcpy(v266, v267, 0xD0uLL);
        sub_22C90A1DC();

        sub_22C5CA1E8(v259, v265, v263);
        sub_22C36EC6C();
        v268 = sub_22C90A0EC();

        sub_22C36D2A8();
        v269 = swift_allocObject();
        v269[2] = v530;
        v269[3] = v261;
        v269[4] = v260;
        v270 = swift_allocObject();
        *(v270 + 16) = sub_22C5CA3AC;
        *(v270 + 24) = v269;
        v527[4] = sub_22C5CA3B8;
        v527[5] = v270;
        v527[0] = MEMORY[0x277D85DD0];
        v527[1] = v257;
        v527[2] = sub_22C5C8528;
        v527[3] = &unk_283FBD618;
        v271 = _Block_copy(v527);

        [v263 lookupKey:v268 resultBlock:v271];

        _Block_release(v271);
        sub_22C5CA700();
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        sub_22C36E030(v259, v520, v263);
        if (isEscapingClosureAtFileLocation)
        {
          goto LABEL_185;
        }

        v179 = v511;
        isEscapingClosureAtFileLocation = v513;
        v254 = v516;
        v194 = v517;
        v255 = v264;
        v258 = v515;
      }

      else
      {
        sub_22C5CA130(v528);
        v272 = sub_22C5CA72C();
        memcpy(v272, v273, 0xD0uLL);
      }

      sub_22C375CEC();
      v114 = sub_22C4DDD30(v528) == 1;
      v180 = v519;
      if (!v114)
      {
        memcpy(v527, v530, sizeof(v527));
        v274 = swift_isUniquelyReferenced_nonNull_native();
        v275 = isEscapingClosureAtFileLocation;
        if ((v274 & 1) == 0)
        {
          v279 = v507[2];
          sub_22C36D270();
          sub_22C593968();
          v507 = v280;
        }

        v277 = v507[2];
        v276 = v507[3];
        if (v277 >= v276 >> 1)
        {
          sub_22C369AB0(v276);
          sub_22C593968();
          v507 = v281;
        }

        ++v254;
        memcpy(v526, v527, sizeof(v526));
        v278 = v507;
        v507[2] = v277 + 1;
        memcpy(&v278[26 * v277 + 4], v526, 0xD0uLL);
        v194 = v517;
        isEscapingClosureAtFileLocation = v275;
        v256 = v490;
        goto LABEL_65;
      }

      memcpy(v527, v530, sizeof(v527));
      sub_22C36DD28(v527, &qword_27D9BEC80, &unk_22C920630);
      v258 += 2;
      ++v254;
    }

    v522[0] = v507;
  }

  else
  {
  }

  sub_22C5B56F0();
  v282 = v522[0];
  v283 = *(v522[0] + 16);
  if (!v283)
  {
LABEL_159:

    sub_22C903FBC();
    v412 = sub_22C9063CC();
    sub_22C90AACC();
    v413 = sub_22C37E2D0();
    if (os_log_type_enabled(v413, v414))
    {
      sub_22C3720F4();
      *swift_slowAlloc() = 0;
      sub_22C3839B4();
      sub_22C5CA7D0();
      _os_log_impl(v415, v416, v417, v418, v419, v420);
      v421 = sub_22C36D66C();
      MEMORY[0x2318B9880](v421);
    }

    v422 = sub_22C5CABB8();
    v506(v422, v509);
    v423 = sub_22C5CA680();
    v424 = v521;
    v425(v423, v521);
    sub_22C36A748();
    v142 = v424;
    return sub_22C36C640(v139, v140, v141, v142);
  }

  v510 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime20PlanOverridesService_userLocale;
  sub_22C3870A4();
  swift_beginAccess();
  v284 = 0;
  v485 = (v483 + 32);
  v490 = (v483 + 8);
  v504 = v491 + 8;
  v470 = (v483 + 16);
  v471 = (v484 + 8);
  v507 = (v283 - 1);
  v285 = 32;
  *&v286 = 136315138;
  v475 = v286;
  *&v286 = 136315650;
  v488 = v286;
  isEscapingClosureAtFileLocation = v514;
  v508 = v282;
  while (1)
  {
    if (v284 >= v282[2])
    {
      goto LABEL_184;
    }

    v520 = v284;
    v516 = v285;
    memcpy(v530, v282 + v285, sizeof(v530));
    v287 = v530[20];
    v288 = v530[21];
    v512 = v530[0];
    v515 = v530[1];
    sub_22C4E719C(v179 + v510, v180, &qword_27D9BD820, &unk_22C9195C0);
    if (!v288)
    {
      v312 = sub_22C5CA72C();
      sub_22C472384(v312, v313);
      goto LABEL_106;
    }

    v289 = sub_22C3720DC();
    sub_22C4E719C(v289, v290, &qword_27D9BD820, &unk_22C9195C0);
    sub_22C36D0A8(v194, 1, isEscapingClosureAtFileLocation);
    if (v114)
    {
      v291 = sub_22C5CA72C();
      sub_22C472384(v291, v292);
      v293 = sub_22C441720();
      sub_22C36DD28(v293, v294, &unk_22C9195C0);
LABEL_89:
      sub_22C36DD28(v180, &qword_27D9BD820, &unk_22C9195C0);
      goto LABEL_90;
    }

    (*v485)(v503, v194, isEscapingClosureAtFileLocation);
    v314 = sub_22C9006BC();
    if (v287 == v314 && v288 == v315)
    {
      break;
    }

    sub_22C36D7F0();
    v317 = sub_22C90B4FC();
    v318 = sub_22C5CA72C();
    sub_22C472384(v318, v319);

    if (v317)
    {
      goto LABEL_105;
    }

    v320 = v481;
    v321 = v503;
    sub_22C90076C();
    v322 = v480;
    sub_22C90074C();
    (*v471)(v320, v482);
    v323 = sub_22C9006FC();
    v324 = sub_22C36FD7C();
    sub_22C36D0A8(v324, v325, v323);
    if (v114)
    {
      sub_22C36DD28(v322, &qword_27D9BBC00, &unk_22C911240);
      (*v490)(v321, v514);
      v180 = v519;
      goto LABEL_89;
    }

    v398 = sub_22C9006EC();
    v400 = v399;
    sub_22C36BBA8(v323);
    v402 = *(v401 + 8);
    v403 = sub_22C3720DC();
    v404(v403);
    if (v287 == v398 && v288 == v400)
    {
      v180 = v519;
      goto LABEL_104;
    }

    sub_22C36D7F0();
    v406 = sub_22C90B4FC();

    v407 = sub_22C5CACD0();
    v408(v407);
    v180 = v519;
    sub_22C36DD28(v519, &qword_27D9BD820, &unk_22C9195C0);
    if (v406)
    {
      goto LABEL_107;
    }

LABEL_90:
    sub_22C903FBC();
    v295 = sub_22C5CA72C();
    sub_22C472384(v295, v296);

    v297 = sub_22C9063CC();
    v298 = sub_22C90AACC();
    sub_22C4723E0(v530);

    if (!os_log_type_enabled(v297, v298))
    {
      sub_22C4723E0(v530);

LABEL_155:
      sub_22C381330();
      v411();
      v180 = v519;
      goto LABEL_156;
    }

    sub_22C370220();
    v299 = swift_slowAlloc();
    v300 = v179;
    v486 = swift_slowAlloc();
    v528[0] = v486;
    *v299 = v488;
    v301 = v515;

    v302 = sub_22C36F9F4(v512, v301, v528);

    *(v299 + 4) = v302;
    *(v299 + 12) = 2080;

    sub_22C4723E0(v530);
    v303 = sub_22C36D7F0();
    v306 = sub_22C36F9F4(v303, v304, v305);

    *(v299 + 14) = v306;
    *(v299 + 22) = 2080;
    v307 = v300 + v510;
    v308 = v487;
    sub_22C4E719C(v307, v487, &qword_27D9BD820, &unk_22C9195C0);
    v309 = v514;
    if (sub_22C370B74(v308, 1, v514))
    {
      v310 = sub_22C36FBFC();
      sub_22C36DD28(v310, v311, &unk_22C9195C0);
    }

    else
    {
      v376 = *v470;
      v377 = sub_22C37F8AC();
      v378(v377);
      v379 = sub_22C36FBFC();
      v381 = sub_22C36DD28(v379, v380, &unk_22C9195C0);
      MEMORY[0x2318ADBB0](v381);
      v382 = sub_22C5CA824();
      v383(v382, v309);
    }

    v282 = v508;
    v384 = v520;
    v385 = sub_22C38674C();
    v388 = sub_22C36F9F4(v385, v386, v387);

    *(v299 + 24) = v388;
    _os_log_impl(&dword_22C366000, v297, v298, "Skipping override statement %s. Its locale: %s does not match the userLocale: %s", v299, 0x20u);
    swift_arrayDestroy();
    v389 = sub_22C37B310();
    MEMORY[0x2318B9880](v389);
    v390 = sub_22C36ACAC();
    MEMORY[0x2318B9880](v390);

    sub_22C381330();
    v391();
    v179 = v511;
    v180 = v519;
LABEL_157:
    isEscapingClosureAtFileLocation = v514;
    if (v507 == v384)
    {
      goto LABEL_159;
    }

    v285 = v516 + 208;
    v284 = (v384 + 1);
    v194 = v517;
  }

  v326 = sub_22C5CA72C();
  sub_22C472384(v326, v327);
LABEL_104:

LABEL_105:
  v328 = sub_22C5CACD0();
  v329(v328);
LABEL_106:
  sub_22C36DD28(v180, &qword_27D9BD820, &unk_22C9195C0);
LABEL_107:
  sub_22C375CEC();
  if (!sub_22C5A9D9C())
  {
    sub_22C903FBC();
    v366 = sub_22C5CA72C();
    sub_22C472384(v366, v367);
    v368 = sub_22C9063CC();
    v369 = sub_22C90AACC();
    sub_22C4723E0(v530);
    v370 = sub_22C3729E4();
    if (os_log_type_enabled(v370, v371))
    {
      v372 = v530[22];
      sub_22C370220();
      v373 = swift_slowAlloc();
      v528[0] = swift_slowAlloc();
      *v373 = v488;
      v374 = v515;

      v375 = sub_22C36F9F4(v512, v374, v528);

      *(v373 + 4) = v375;
      *(v373 + 12) = 2080;
      if (v372)
      {
      }

      else
      {
        v372 = MEMORY[0x277D84F90];
      }

      sub_22C4723E0(v530);
      MEMORY[0x2318B7AD0](v372, MEMORY[0x277D837D0]);

      v392 = sub_22C374C34();
      v395 = sub_22C36F9F4(v392, v393, v394);

      *(v373 + 14) = v395;
      *(v373 + 22) = 2080;
      if (qword_27D9BA6D8 != -1)
      {
        swift_once();
      }

      v396 = 0xE500000000000000;
      v397 = 0x454E4F4850;
      v179 = v511;
      switch(byte_27D9E3FC8)
      {
        case 1:
          v396 = 0xE300000000000000;
          v397 = 4473168;
          break;
        case 2:
          v396 = 0xE800000000000000;
          v397 = 0x4E414D4553524F48;
          break;
        case 3:
          v396 = 0xE400000000000000;
          v397 = 1398097242;
          break;
        case 4:
          v397 = 0x4F454D4143;
          break;
        case 5:
          v397 = 0x4843544157;
          break;
        case 6:
          v396 = 0xE300000000000000;
          v397 = 5390659;
          break;
        case 7:
          v396 = 0xE900000000000041;
          v397 = 0x544952414752414DLL;
          break;
        case 8:
          v396 = 0xE700000000000000;
          v397 = 0x6E776F6E6B6E75;
          break;
        default:
          break;
      }

      v409 = sub_22C36F9F4(v397, v396, v528);

      *(v373 + 24) = v409;
      _os_log_impl(&dword_22C366000, v368, v369, "Skipping override statement %s. Its userInterfaceIdioms: %s do not match the device userInterfaceIdiom: %s", v373, 0x20u);
      swift_arrayDestroy();
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      v410 = sub_22C36D66C();
      MEMORY[0x2318B9880](v410);
    }

    else
    {
      sub_22C4723E0(v530);
    }

    goto LABEL_155;
  }

  v330 = MEMORY[0x277D84F98];
  v525 = MEMORY[0x277D84F98];
  sub_22C375CEC();
  v331 = v493;
  sub_22C5B862C();
  v333 = v332;

  if ((v333 & 1) == 0)
  {
    sub_22C4723E0(v530);
    goto LABEL_156;
  }

  v524 = v330;
  sub_22C375CEC();
  v334 = v495;
  sub_22C90878C();
  v335 = sub_22C5B4568(v528, v496, v331, v334);
  v337 = v336;
  (v500)(v334, v502);
  swift_beginAccess();
  v524 = v335;
  sub_22C903FBC();
  v338 = sub_22C9063CC();
  sub_22C90AACC();
  v339 = sub_22C37E2D0();
  v341 = os_log_type_enabled(v339, v340);
  v483 = v337;
  if (v341)
  {
    sub_22C36BED8();
    swift_slowAlloc();
    sub_22C3735E4();
    v342 = swift_slowAlloc();
    v528[0] = v342;
    *v334 = v475;
    type metadata accessor for PlanOverridesService.EventReference(0);

    sub_22C909EDC();
    sub_22C5CAC34();

    v343 = sub_22C36FC2C();
    v346 = sub_22C36F9F4(v343, v344, v345);
    v179 = v511;

    *(v334 + 4) = v346;
    v180 = v519;
    sub_22C5CA61C();
    _os_log_impl(v347, v348, v349, v350, v351, v352);
    sub_22C36FF94(v342);
    v353 = sub_22C36ACAC();
    MEMORY[0x2318B9880](v353);
    v354 = sub_22C36D66C();
    MEMORY[0x2318B9880](v354);
  }

  sub_22C381330();
  v355();
  v356 = MEMORY[0x277D84F90];
  if (v530[15])
  {
    v357 = v530[15];
  }

  else
  {
    v357 = MEMORY[0x277D84F90];
  }

  v523 = v357;
  if (v530[8])
  {
    v358 = v530[8];
  }

  else
  {
    v358 = MEMORY[0x277D84F90];
  }

  v486 = v358;
  if (v530[9])
  {
    v356 = v530[9];
  }

  v484 = v356;

  v359 = v495;
  sub_22C90878C();
  v360 = sub_22C9087DC();
  (v500)(v359, v502);
  v522[6] = v360;
  sub_22C907ECC();

  if (!v528[2])
  {

    sub_22C4723E0(v530);

    sub_22C90735C();
    sub_22C3A5F00();
    sub_22C37A198();
    swift_allocError();
    sub_22C377534(v426, v533, v532, v531);
    v427 = sub_22C5CA680();
    v428(v427, v521);
  }

  sub_22C375CEC();
  v361 = v505;
  sub_22C5A9F18();
  v505 = v361;
  if (v361)
  {

    v429 = sub_22C5CA680();
    v430(v429, v521);
    sub_22C4723E0(v530);
  }

  v364 = v362;
  v365 = v363;
  if (!v530[3])
  {
    v144 = MEMORY[0x277D84F90];
    if (v362)
    {
      goto LABEL_165;
    }

LABEL_125:

    sub_22C4723E0(v530);

LABEL_156:
    v282 = v508;
    v384 = v520;
    goto LABEL_157;
  }

  v144 = MEMORY[0x277D84F90];
  if (v530[5])
  {
  }

  if ((v364 & 1) == 0)
  {
    goto LABEL_125;
  }

LABEL_165:
  v431 = v530[24];
  v432 = v530[25];

  if (*(v365 + 16))
  {
    v433 = v365;
  }

  else
  {

    v433 = v474;
  }

  v469 = v335;
  v474 = v433;
  if (v432)
  {
    v434 = HIBYTE(v432) & 0xF;
    if ((v432 & 0x2000000000000000) == 0)
    {
      v434 = v431 & 0xFFFFFFFFFFFFLL;
    }

    if (v434)
    {
      sub_22C903FBC();

      isEscapingClosureAtFileLocation = sub_22C9063CC();
      sub_22C90AACC();

      if (!sub_22C5CAE14())
      {
        goto LABEL_179;
      }

      v435 = swift_slowAlloc();
      sub_22C370220();
      v436 = swift_slowAlloc();
      v528[0] = v436;
      *v435 = 136315394;
      v437 = sub_22C908EAC();
      v438 = MEMORY[0x2318B7B00](v433, v437);
      sub_22C36F9F4(v438, v439, v528);
      sub_22C5CAE44();
      sub_22C5CAC60();
      *(v435 + 14) = 0;
      sub_22C5CAD7C(&dword_22C366000, v440, v441, "Override Matched with Model Response: %s.\nshouldRunPostPlanProcessing: %{BOOL}d");
      sub_22C36FF94(v436);
      v442 = sub_22C37F88C();
      MEMORY[0x2318B9880](v442);
      v443 = v483;
      sub_22C369B50();
      MEMORY[0x2318B9880]();

      sub_22C381330();
      v444();
      v445 = 0;
      goto LABEL_176;
    }
  }

  sub_22C903FBC();

  v446 = sub_22C9063CC();
  sub_22C90AACC();

  if (sub_22C5CAE14())
  {
    v447 = swift_slowAlloc();
    sub_22C370220();
    v448 = swift_slowAlloc();
    v528[0] = v448;
    *v447 = 136315394;
    v449 = sub_22C908EAC();
    v450 = MEMORY[0x2318B7B00](v433, v449);
    sub_22C36F9F4(v450, v451, v528);
    sub_22C5CAE44();
    sub_22C5CAC60();
    v445 = 1;
    *(v447 + 14) = 1;
    sub_22C5CAD7C(&dword_22C366000, v452, v453, "Override Matched! %s.\nshouldRunPostPlanProcessing: %{BOOL}d");
    sub_22C36FF94(v448);
    v454 = sub_22C37F88C();
    MEMORY[0x2318B9880](v454);
    v443 = v483;
    sub_22C369B50();
    MEMORY[0x2318B9880]();

    sub_22C381330();
    v455();
LABEL_176:
    v456 = v486;
    goto LABEL_181;
  }

  sub_22C381330();
  v457();
  v445 = 1;
LABEL_180:
  v456 = v486;
  v443 = v483;
LABEL_181:
  v459 = v469;

  LOBYTE(v467) = v445;
  sub_22C5BBA0C(&v523, v460, v461, v513, v462, v459, v512, v515, v443, v144, v456, v484, v467, v468, v469, v470, v471, v472, v473, v474, v475, *(&v475 + 1), v476, v477, v478);

  sub_22C4723E0(v530);

  v463 = sub_22C5CA680();
  v464(v463, v521);
}