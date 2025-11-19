uint64_t sub_22C15109C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E656D6574617473 && a2 == 0xEB00000000644974;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x747865746E6F63 && a2 == 0xE700000000000000;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x64616F6C796170 && a2 == 0xE700000000000000;
      if (v7 || (sub_22C274014() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6E65687475417369 && a2 == 0xEF64657461636974)
      {

        return 3;
      }

      else
      {
        v9 = sub_22C274014();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_22C151208(char a1)
{
  result = 0x6E656D6574617473;
  switch(a1)
  {
    case 1:
      result = 0x747865746E6F63;
      break;
    case 2:
      result = 0x64616F6C796170;
      break;
    case 3:
      result = 0x6E65687475417369;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22C1512A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C15109C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C1512D0(uint64_t a1)
{
  v2 = sub_22C176EC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C15130C(uint64_t a1)
{
  v2 = sub_22C176EC8();

  return MEMORY[0x2821FE720](a1, v2);
}

void QueryStep.encode(to:)()
{
  sub_22BE2BB34();
  sub_22BE22950();
  v3 = sub_22BE5CE4C(&qword_27D913768, &qword_22C2B83C8);
  sub_22BE1BF18(v3);
  v5 = *(v4 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE19E64();
  sub_22BE23094();
  sub_22C176EC8();
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
    Step = type metadata accessor for QueryStep(0);
    v9 = sub_22BE335C0(Step);
    type metadata accessor for ActionParameterContext(v9);
    sub_22C18EA9C();
    sub_22BE20458(v10);
    sub_22C18E994();
    sub_22BE196CC();
    sub_22C273F34();
    v11 = *(v2 + 24);
    sub_22BE200EC();
    type metadata accessor for QueryPayload(0);
    sub_22C18EA84();
    sub_22BE20458(v12);
    sub_22C18E994();
    sub_22BE196CC();
    sub_22C273FA4();
    v13 = *(v1 + *(v2 + 28));
    sub_22C18E900();
    sub_22C18E17C();
    sub_22C273F64();
  }

  v14 = sub_22BE37A10();
  v15(v14);
  sub_22BEE92C0();
  sub_22BEE93D4();
}

void QueryStep.init(from:)()
{
  sub_22BE19130();
  v5 = v4;
  v7 = sub_22C18FEC4(v6);
  Payload = type metadata accessor for QueryPayload(v7);
  v8 = sub_22BE18000(Payload);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE17A44();
  v51 = v11;
  v12 = sub_22BE5CE4C(&qword_27D911F48, &unk_22C2B5CB0);
  sub_22BE19448(v12);
  v14 = *(v13 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  sub_22BE24FD8();
  v16 = sub_22C26E684();
  v17 = sub_22BE1BF18(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22BE1955C();
  v20 = sub_22BE5CE4C(&qword_27D913780, &qword_22C2B83D0);
  sub_22BE179D8(v20);
  v22 = *(v21 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v23);
  sub_22BE1A8B4();
  Step = type metadata accessor for QueryStep(0);
  v25 = sub_22BE18000(Step);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  sub_22BE28FD8();
  v54 = v28;
  v29 = sub_22C18FA90(v28);
  type metadata accessor for ActionParameterContext(v29);
  v52 = v1;
  v30 = v3;
  sub_22BE3AE2C();
  sub_22BE19DC4(v31, v32, v33, v34);
  v36 = *(v5 + 24);
  v35 = *(v5 + 32);
  v37 = sub_22C18F9AC();
  sub_22BE41E84(v37);
  sub_22C176EC8();
  sub_22BEE939C();
  sub_22C274214();
  if (v0)
  {
    sub_22BE26B64(v53);
    sub_22C18DC5C(v30 + v52, &qword_27D911F48);
  }

  else
  {
    sub_22BE18F44();
    sub_22BE20458(v38);
    sub_22BEE92A4();
    sub_22C273EB4();
    sub_22BE27C14();
    v39(v30, v2, v40);
    sub_22BE33FE4();
    sub_22C18EA9C();
    sub_22BE20458(v41);
    sub_22C18E9A0();
    sub_22C273E44();
    sub_22BE2343C();
    sub_22BE200EC();
    sub_22C18EA84();
    sub_22BE20458(v42);
    sub_22C18F614();
    sub_22C18EA30();
    sub_22C273EB4();
    v43 = *(v54 + 24);
    sub_22BE259B0();
    sub_22C171FA8(v51, v30 + v44);
    sub_22C18E900();
    v45 = sub_22C273E74();
    v46 = sub_22C18E460();
    v47(v46);
    *(v30 + *(v54 + 28)) = v45 & 1;
    v48 = sub_22BE385E4();
    sub_22BE1A964(v48, v49);
    sub_22BE26B64(v53);
    sub_22BE379D8();
    sub_22C171FFC();
  }

  sub_22BE1AB28();
  sub_22BE18478();
}

uint64_t VariableStep.setters.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for VariableStep(v0) + 20);
  return sub_22BE18504();
}

uint64_t sub_22C151A88(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E656D6574617473 && a2 == 0xEB00000000644974;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73726574746573 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C274014();

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

uint64_t sub_22C151B54(char a1)
{
  if (a1)
  {
    return 0x73726574746573;
  }

  else
  {
    return 0x6E656D6574617473;
  }
}

uint64_t sub_22C151B9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C151A88(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C151BC4(uint64_t a1)
{
  v2 = sub_22C176F1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C151C00(uint64_t a1)
{
  v2 = sub_22C176F1C();

  return MEMORY[0x2821FE720](a1, v2);
}

void VariableStep.encode(to:)()
{
  sub_22BE2BB34();
  sub_22BE22950();
  v1 = sub_22BE5CE4C(&qword_27D913790, &qword_22C2B83D8);
  sub_22BE1BF18(v1);
  v3 = *(v2 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE19E64();
  sub_22BE23094();
  sub_22C176F1C();
  sub_22BE25524();
  sub_22C18E810();
  sub_22C26E684();
  sub_22BE18F44();
  sub_22BE20458(v5);
  sub_22BEE92A4();
  sub_22BE196CC();
  sub_22C273FA4();
  if (!v0)
  {
    v6 = type metadata accessor for VariableStep(0);
    sub_22BE35C64(v6);
    sub_22BE5CE4C(&qword_27D9137A0, &qword_22C2B83E0);
    sub_22C176F70();
    sub_22BE196CC();
    sub_22C273FA4();
  }

  v7 = sub_22BE37A10();
  v8(v7);
  sub_22BEE92C0();
  sub_22BEE93D4();
}

void VariableStep.init(from:)()
{
  sub_22BE19130();
  sub_22C18F0B0();
  sub_22C18F8A4(v2);
  v24 = sub_22C26E684();
  v3 = sub_22BE179D8(v24);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE17CBC();
  v6 = sub_22BE5CE4C(&qword_27D9137B8, &qword_22C2B83E8);
  sub_22BE179D8(v6);
  v8 = *(v7 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  v10 = sub_22BE24FD8();
  v11 = type metadata accessor for VariableStep(v10);
  v12 = sub_22BE18000(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22BE19338();
  v16 = v0[3];
  v15 = v0[4];
  sub_22BE41E84(v0);
  sub_22C176F1C();
  sub_22BE3CCD4();
  sub_22C18FCB0();
  sub_22C274214();
  if (v1)
  {
    sub_22BE26B64(v0);
  }

  else
  {
    sub_22BE32E44();
    sub_22BE18F44();
    sub_22BE20458(v17);
    sub_22BEE92A4();
    sub_22C18FFC0();
    sub_22BE362A8();
    sub_22C273EB4();
    sub_22C18F458();
    v18 = sub_22BE392D4();
    v19(v18);
    sub_22BE5CE4C(&qword_27D9137A0, &qword_22C2B83E0);
    sub_22BE33FE4();
    sub_22C177024();
    sub_22C18E128();
    sub_22BE36350();
    sub_22C273EB4();
    v20 = sub_22BE25424();
    v21(v20);
    sub_22BE35D34();
    v22 = sub_22BE431F0();
    sub_22BE1A964(v22, v23);
    sub_22BE26B64(v0);
    sub_22C0E9A74();
    sub_22C171FFC();
  }

  sub_22BE46D98();
  sub_22BE18478();
}

uint64_t QueryPayload.SearchToolQuery.parameters.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

void static QueryPayload.SearchToolQuery.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_22BEA6844();
}

uint64_t sub_22C1520D8(uint64_t a1)
{
  v2 = sub_22C1770D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C152114(uint64_t a1)
{
  v2 = sub_22C1770D8();

  return MEMORY[0x2821FE720](a1, v2);
}

void QueryPayload.SearchToolQuery.encode(to:)()
{
  sub_22BE19130();
  sub_22C18F710();
  v2 = sub_22BE5CE4C(&qword_27D9137D0, &qword_22C2B83F0);
  sub_22BE1BF18(v2);
  v4 = *(v3 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE25CD0();
  v6 = *v0;
  v7 = v1[3];
  v8 = v1[4];
  sub_22BE3C0A8(v1);
  sub_22C1770D8();
  sub_22C18FC8C();
  sub_22BEC046C();
  sub_22BE2BC6C();
  sub_22C274234();
  sub_22BE5CE4C(&qword_27D907D80, &qword_22C277E58);
  sub_22BE860DC();
  sub_22BE37DD4();
  sub_22BE1A550();
  sub_22C273FA4();
  sub_22C18F4B0();

  v9 = sub_22C18E57C();
  v10(v9);
  sub_22BEE94B0();
  sub_22BE18478();
}

uint64_t QueryPayload.StringQuery.init(typeId:text:)()
{
  sub_22BE3E864();
  v0 = sub_22C272984();
  sub_22BE1834C(v0);
  v2 = *(v1 + 32);
  v3 = sub_22BE1C2A0();
  v4(v3);
  v5 = type metadata accessor for QueryPayload.StringQuery(0);
  return sub_22C18F734(v5);
}

uint64_t static QueryPayload.StringQuery.== infix(_:_:)()
{
  sub_22BE18378();
  if ((sub_22C272954() & 1) == 0)
  {
    return 0;
  }

  v0 = type metadata accessor for QueryPayload.StringQuery(0);
  sub_22C18E1A0(*(v0 + 20));
  v3 = v3 && v1 == v2;
  if (v3)
  {
    return 1;
  }

  return sub_22C274014();
}

uint64_t sub_22C1523BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x644965707974 && a2 == 0xE600000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1954047348 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C274014();

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

uint64_t sub_22C152480(char a1)
{
  if (a1)
  {
    return 1954047348;
  }

  else
  {
    return 0x644965707974;
  }
}

uint64_t sub_22C1524B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C1523BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C1524DC(uint64_t a1)
{
  v2 = sub_22C17712C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C152518(uint64_t a1)
{
  v2 = sub_22C17712C();

  return MEMORY[0x2821FE720](a1, v2);
}

void QueryPayload.StringQuery.encode(to:)()
{
  sub_22BE2BB34();
  sub_22BE22950();
  v1 = sub_22BE5CE4C(&qword_27D9137E8, &qword_22C2B8400);
  sub_22BE1BF18(v1);
  v3 = *(v2 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE19E64();
  sub_22BE23094();
  sub_22C17712C();
  sub_22BE25524();
  sub_22C18E810();
  sub_22C272984();
  sub_22C18E0E8();
  sub_22BE20458(v5);
  sub_22BEE92A4();
  sub_22BE196CC();
  sub_22C273FA4();
  if (!v0)
  {
    v6 = type metadata accessor for QueryPayload.StringQuery(0);
    sub_22C18F320(*(v6 + 20));
    sub_22BE42570();
    sub_22C273F54();
  }

  v7 = sub_22BE37A10();
  v8(v7);
  sub_22BEE92C0();
  sub_22BEE93D4();
}

void QueryPayload.StringQuery.init(from:)()
{
  sub_22BE19130();
  sub_22C18F0B0();
  sub_22C18F934(v3);
  v4 = sub_22C272984();
  v5 = sub_22BE179D8(v4);
  v33 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE28FD8();
  v34 = sub_22BE5CE4C(&qword_27D913800, &qword_22C2B8408);
  sub_22BE179D8(v34);
  v32 = v9;
  v11 = *(v10 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE24FD8();
  v14 = type metadata accessor for QueryPayload.StringQuery(v13);
  v15 = sub_22BE18000(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22BE18DFC();
  v19 = v0[3];
  v18 = v0[4];
  sub_22BE3C0A8(v0);
  sub_22C17712C();
  sub_22BE3CCD4();
  sub_22C18F8EC();
  sub_22C274214();
  if (v2)
  {
    sub_22BE26B64(v0);
  }

  else
  {
    sub_22C18E0E8();
    sub_22BE20458(v20);
    sub_22BEE92A4();
    sub_22BE362A8();
    sub_22C273EB4();
    v21 = *(v33 + 32);
    sub_22C18F9C4();
    v22();
    sub_22BE2315C();
    sub_22BE36350();
    v23 = sub_22C273E64();
    v25 = v24;
    v26 = *(v32 + 8);
    v27 = sub_22C18EA60();
    v28(v27);
    v29 = (v1 + *(v14 + 20));
    *v29 = v23;
    v29[1] = v25;
    v30 = sub_22BE385E4();
    sub_22BE1A964(v30, v31);
    sub_22BE26B64(v0);
    sub_22BE379D8();
    sub_22C171FFC();
  }

  sub_22BE46D98();
  sub_22BE18478();
}

uint64_t sub_22C15297C()
{
  v1 = sub_22BE2BB48();
  v3 = *(v0 + *(v2(v1) + 20));
}

uint64_t sub_22C1529E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = sub_22BE3E864();
  v9 = v8(v7);
  sub_22BE1834C(v9);
  v11 = *(v10 + 32);
  v12 = sub_22BE1C2A0();
  v13(v12);
  result = a4(0);
  *(v5 + *(result + 20)) = v4;
  return result;
}

uint64_t sub_22C152A8C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x644965707974 && a2 == 0xE600000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7562345 && a2 == 0xE300000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C274014();

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

uint64_t sub_22C152B50(char a1)
{
  if (a1)
  {
    return 7562345;
  }

  else
  {
    return 0x644965707974;
  }
}

uint64_t sub_22C152B84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C152A8C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C152BAC(uint64_t a1)
{
  v2 = sub_22C177180();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C152BE8(uint64_t a1)
{
  v2 = sub_22C177180();

  return MEMORY[0x2821FE720](a1, v2);
}

void QueryPayload.IdentifierQuery.encode(to:)()
{
  sub_22BE2BB34();
  sub_22BE22950();
  v1 = sub_22BE5CE4C(&qword_27D913810, &qword_22C2B8410);
  sub_22BE1BF18(v1);
  v3 = *(v2 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE19E64();
  sub_22BE23094();
  sub_22C177180();
  sub_22BE25524();
  sub_22C18E810();
  sub_22C272984();
  sub_22C18E0E8();
  sub_22BE20458(v5);
  sub_22BEE92A4();
  sub_22BE196CC();
  sub_22C273FA4();
  if (!v0)
  {
    v6 = type metadata accessor for QueryPayload.IdentifierQuery(0);
    sub_22BE35C64(v6);
    sub_22BE5CE4C(&qword_27D908050, &qword_22C278EB0);
    sub_22C18E158(&qword_28106DBE8);
    sub_22BE196CC();
    sub_22C273FA4();
  }

  v7 = sub_22BE37A10();
  v8(v7);
  sub_22BEE92C0();
  sub_22BEE93D4();
}

void QueryPayload.IdentifierQuery.init(from:)()
{
  sub_22BE19130();
  sub_22C18F0B0();
  sub_22C18F8A4(v2);
  v24 = sub_22C272984();
  v3 = sub_22BE179D8(v24);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE17CBC();
  v6 = sub_22BE5CE4C(&qword_27D913820, &qword_22C2B8418);
  sub_22BE179D8(v6);
  v8 = *(v7 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  v10 = sub_22BE24FD8();
  v11 = type metadata accessor for QueryPayload.IdentifierQuery(v10);
  v12 = sub_22BE18000(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22BE19338();
  v16 = v0[3];
  v15 = v0[4];
  sub_22BE41E84(v0);
  sub_22C177180();
  sub_22BE3CCD4();
  sub_22C18FCB0();
  sub_22C274214();
  if (v1)
  {
    sub_22BE26B64(v0);
  }

  else
  {
    sub_22BE32E44();
    sub_22C18E0E8();
    sub_22BE20458(v17);
    sub_22BEE92A4();
    sub_22C18FFC0();
    sub_22BE362A8();
    sub_22C273EB4();
    sub_22C18F458();
    v18 = sub_22BE392D4();
    v19(v18);
    sub_22BE5CE4C(&qword_27D908050, &qword_22C278EB0);
    sub_22BE33FE4();
    sub_22BE25D60(&qword_28106DBD8);
    sub_22C18E128();
    sub_22BE36350();
    sub_22C273EB4();
    v20 = sub_22BE25424();
    v21(v20);
    sub_22BE35D34();
    v22 = sub_22BE431F0();
    sub_22BE1A964(v22, v23);
    sub_22BE26B64(v0);
    sub_22C0E9A74();
    sub_22C171FFC();
  }

  sub_22BE46D98();
  sub_22BE18478();
}

uint64_t sub_22C15307C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6574656D61726170 && a2 == 0xEA00000000007372)
  {

    v4 = 0;
  }

  else
  {
    sub_22BE2BC78();
    sub_22BE417C8();
    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22C1530EC(uint64_t a1)
{
  v2 = sub_22C1771D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C153128(uint64_t a1)
{
  v2 = sub_22C1771D4();

  return MEMORY[0x2821FE720](a1, v2);
}

void QueryPayload.AnswerSynthesisToolQuery.encode(to:)()
{
  sub_22BE19130();
  sub_22C18F710();
  v2 = sub_22BE5CE4C(&qword_27D913828, &qword_22C2B8420);
  sub_22BE1BF18(v2);
  v4 = *(v3 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE25CD0();
  v6 = *v0;
  v7 = v1[3];
  v8 = v1[4];
  sub_22BE3C0A8(v1);
  sub_22C1771D4();
  sub_22C18FC8C();
  sub_22BEC046C();
  sub_22BE2BC6C();
  sub_22C274234();
  sub_22BE5CE4C(&qword_27D907D80, &qword_22C277E58);
  sub_22BE860DC();
  sub_22BE37DD4();
  sub_22BE1A550();
  sub_22C273FA4();
  sub_22C18F4B0();

  v9 = sub_22C18E57C();
  v10(v9);
  sub_22BEE94B0();
  sub_22BE18478();
}

void sub_22C1532B8()
{
  sub_22BE19130();
  v3 = v2;
  sub_22C18F0F4();
  v6 = sub_22BE34074(v4, v5);
  v8 = sub_22BE5CE4C(v6, v7);
  sub_22BE1A3D8(v8);
  v10 = *(v9 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  sub_22BE1B01C();
  v12 = v0[3];
  v13 = v0[4];
  v14 = sub_22BE25318(v0);
  v3(v14);
  sub_22BEE94BC();
  sub_22C274214();
  if (!v1)
  {
    sub_22BE5CE4C(&qword_27D907D80, &qword_22C277E58);
    sub_22BE862F8();
    sub_22BE33B10();
    v15 = sub_22BE35B0C();
    v16(v15);
    sub_22C18FD98();
  }

  sub_22BE26B64(v0);
  sub_22BE46D98();
  sub_22BE18478();
}

uint64_t sub_22C1533D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F54686372616573 && a2 == 0xEA00000000006C6FLL;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6F73726570 && a2 == 0xE600000000000000;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x676E69727473 && a2 == 0xE600000000000000;
      if (v7 || (sub_22C274014() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 25705 && a2 == 0xE200000000000000;
        if (v8 || (sub_22C274014() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000013 && 0x800000022C2D9C90 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_22C274014();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_22C153580(char a1)
{
  result = 0x6F54686372616573;
  switch(a1)
  {
    case 1:
      result = 0x6E6F73726570;
      break;
    case 2:
      result = 0x676E69727473;
      break;
    case 3:
      result = 25705;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22C153640(uint64_t a1)
{
  v2 = sub_22C17727C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C15367C(uint64_t a1)
{
  v2 = sub_22C17727C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C1536C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C1533D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C1536E8(uint64_t a1)
{
  v2 = sub_22C177228();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C153724(uint64_t a1)
{
  v2 = sub_22C177228();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C153760(uint64_t a1)
{
  v2 = sub_22C177324();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C15379C(uint64_t a1)
{
  v2 = sub_22C177324();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C1537D8(uint64_t a1)
{
  v2 = sub_22C1773CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C153814(uint64_t a1)
{
  v2 = sub_22C1773CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C153850(uint64_t a1)
{
  v2 = sub_22C177420();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C15388C(uint64_t a1)
{
  v2 = sub_22C177420();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C1538C8(uint64_t a1)
{
  v2 = sub_22C177378();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C153904(uint64_t a1)
{
  v2 = sub_22C177378();

  return MEMORY[0x2821FE720](a1, v2);
}

void QueryPayload.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19130();
  a19 = v22;
  a20 = v23;
  v101 = v20;
  v25 = v24;
  v26 = sub_22BE5CE4C(&qword_27D913840, &qword_22C2B8430);
  sub_22BE179D8(v26);
  v28 = *(v27 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v29);
  sub_22C18E344(v30);
  v100 = sub_22BE5CE4C(&qword_27D913848, &qword_22C2B8438);
  sub_22BE179D8(v100);
  v32 = *(v31 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v33);
  sub_22BE1A174();
  v34 = sub_22BE183BC();
  v98 = type metadata accessor for QueryPayload.IdentifierQuery(v34);
  v35 = sub_22BE18000(v98);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  sub_22BE17A44();
  sub_22BEC07BC(v38);
  v39 = sub_22BE5CE4C(&qword_27D913850, &qword_22C2B8440);
  v97 = sub_22BE179D8(v39);
  v41 = *(v40 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v42);
  sub_22BE1A174();
  v43 = sub_22BE183BC();
  v95 = type metadata accessor for QueryPayload.StringQuery(v43);
  v44 = sub_22BE18000(v95);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v44);
  sub_22BE17A44();
  v96 = v47;
  v48 = sub_22BE5CE4C(&qword_27D913858, &qword_22C2B8448);
  sub_22BE18910(v48, &a18);
  v50 = *(v49 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v51);
  sub_22BE2C64C();
  v52 = sub_22BE5CE4C(&qword_27D913860, &qword_22C2B8450);
  sub_22BE1BF18(v52);
  v54 = *(v53 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v55);
  v56 = sub_22BE3100C();
  Payload = type metadata accessor for QueryPayload(v56);
  v58 = sub_22C18DFEC(Payload);
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v58);
  sub_22BE294E0();
  v61 = sub_22BE5CE4C(&qword_27D913868, &qword_22C2B8458);
  v103 = sub_22BE179D8(v61);
  v63 = *(v62 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v64);
  sub_22BE25CD0();
  v65 = v25[3];
  v66 = v25[4];
  sub_22BE31088(v25);
  sub_22C177228();
  sub_22BEC046C();
  sub_22C274234();
  sub_22BE35C34();
  sub_22BE1A964(v101, v21);
  sub_22BE196A8();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v86 = *(v21 + 8);
      v102 = *v21;
      v87 = *(v21 + 16);
      v88 = *(v21 + 17);
      v89 = *(v21 + 24);
      v90 = *(v21 + 32);
      sub_22C18F9DC();
      sub_22C1773CC();
      sub_22C18E6C4();
      sub_22C273EE4();
      sub_22C1764BC();
      sub_22C19021C();
      v91 = sub_22BE19698(&a17);
      v92(v91);
      v93 = sub_22BE336B4();
      v94(v93, v103);

      goto LABEL_8;
    case 2u:
      sub_22C171FA8(v21, v96);
      sub_22C18F8BC();
      sub_22C177378();
      v77 = v103;
      sub_22C18E550();
      sub_22C273EE4();
      sub_22C18F000();
      sub_22BE20458(v78);
      sub_22BE35E54();
      sub_22BE31290();
      sub_22C273FA4();
      v79 = sub_22BE39058();
      v80(v79, v97);
      goto LABEL_6;
    case 3u:
      sub_22C171FA8(v21, v99);
      sub_22C18F940();
      sub_22C177324();
      v77 = v103;
      sub_22C18E550();
      sub_22C273EE4();
      sub_22C18EFE8();
      sub_22BE20458(v81);
      sub_22BE35E54();
      sub_22BE31290();
      sub_22C273FA4();
      v82 = sub_22BE39058();
      v83(v82, v100);
LABEL_6:
      sub_22C171FFC();
      v84 = sub_22BE336B4();
      v85(v84, v77);
      goto LABEL_9;
    case 4u:
      v72 = *v21;
      sub_22C17727C();
      sub_22BE261D0();
      sub_22C273EE4();
      sub_22C1772D0();
      sub_22C190174();
      v73 = sub_22BE32D8C();
      v74(v73);
      v75 = sub_22BE38A68();
      v76(v75);
      goto LABEL_8;
    default:
      v67 = *v21;
      sub_22C177420();
      sub_22C18E6C4();
      sub_22C273EE4();
      sub_22C177474();
      sub_22C273FA4();
      v68 = sub_22BE25EE4();
      v69(v68);
      v70 = sub_22BE336B4();
      v71(v70, v103);
LABEL_8:

LABEL_9:
      sub_22BEE94B0();
      sub_22BE18478();
      return;
  }
}

void QueryPayload.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19130();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v132 = sub_22BE5CE4C(&qword_27D9138C0, &qword_22C2B8460);
  sub_22BE179D8(v132);
  v136 = v25;
  v27 = *(v26 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v28);
  sub_22BE1A174();
  sub_22BEC07BC(v29);
  v133 = sub_22BE5CE4C(&qword_27D9138C8, &qword_22C2B8468);
  sub_22BE179D8(v133);
  v135 = v30;
  v32 = *(v31 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v33);
  sub_22BE1A174();
  v131 = sub_22BE5CE4C(&qword_27D9138D0, &qword_22C2B8470);
  sub_22BE179D8(v131);
  v134 = v34;
  v36 = *(v35 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v37);
  sub_22BE34034(v38, v130);
  v39 = sub_22BE5CE4C(&qword_27D9138D8, &qword_22C2B8478);
  sub_22BE18910(v39, &a18);
  v41 = *(v40 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v42);
  sub_22BE1A174();
  v43 = sub_22BE5CE4C(&qword_27D9138E0, &qword_22C2B8480);
  sub_22BE18910(v43, &a16);
  v45 = *(v44 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v46);
  sub_22BE1A174();
  v139 = sub_22BE5CE4C(&qword_27D9138E8, &qword_22C2B8488);
  sub_22BE179D8(v139);
  v138 = v47;
  v49 = *(v48 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v50);
  sub_22BE234F4();
  Payload = type metadata accessor for QueryPayload(0);
  v51 = sub_22BE18000(Payload);
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v51);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v54);
  sub_22BE2017C();
  MEMORY[0x28223BE20](v55);
  sub_22BE2390C();
  MEMORY[0x28223BE20](v56);
  sub_22BE27A50();
  MEMORY[0x28223BE20](v57);
  sub_22BE23858();
  MEMORY[0x28223BE20](v58);
  sub_22BE25A90();
  v60 = v24[3];
  v59 = v24[4];
  v140 = v24;
  sub_22BE41E84(v24);
  sub_22C177228();
  sub_22BE48270();
  sub_22C274214();
  if (!v20)
  {
    v61 = sub_22C273ED4();
    sub_22BE7C5C4(v61, 0);
    sub_22C18F638();
    if (v62)
    {
      v64 = Payload;
      v63 = v138;
    }

    else
    {
      sub_22BE38A18();
      sub_22BE3E9D8();
      if (v65 == v66)
      {
        __break(1u);
        return;
      }

      v73 = *(v72 + v71);
      v74 = sub_22BE3A464(v67, v68, v69, v70, v71);
      sub_22BE7C5C0(v74);
      v76 = v75;
      v78 = v77;
      swift_unknownObjectRelease();
      if (v76 == v78 >> 1)
      {
        switch(v73)
        {
          case 1:
            sub_22C18F9DC();
            sub_22C1773CC();
            sub_22BE3788C();
            sub_22C18FC5C();
            sub_22C176660();
            sub_22BE3788C();
            sub_22C273EB4();
            sub_22BE3411C();
            v121 = *(v120 - 256);
            swift_unknownObjectRelease();
            v122 = sub_22BE25EE4();
            v123(v122);
            v124 = sub_22BE3EA10();
            v125(v124);
            sub_22C18F470(v142, v141);
            goto LABEL_18;
          case 2:
            sub_22C18F8BC();
            sub_22C177378();
            sub_22BE27168();
            sub_22C18FC5C();
            type metadata accessor for QueryPayload.StringQuery(0);
            sub_22C18F000();
            sub_22BE20458(v92);
            sub_22BE3C6E0(&a11);
            sub_22BE1A550();
            sub_22C273EB4();
            sub_22BE3411C();
            v101 = *(v100 - 256);
            swift_unknownObjectRelease();
            v102 = *(v134 + 8);
            v103 = sub_22BE200D4();
            v104(v103);
            v105 = sub_22BE3EA10();
            v106(v105);
            swift_storeEnumTagMultiPayload();
            sub_22BE259B0();
            goto LABEL_19;
          case 3:
            sub_22C18F940();
            sub_22C177324();
            sub_22BE3788C();
            sub_22C18FC5C();
            type metadata accessor for QueryPayload.IdentifierQuery(0);
            sub_22C18EFE8();
            sub_22BE20458(v91);
            sub_22BE204A4(&a12);
            sub_22C18EB68();
            sub_22C273EB4();
            sub_22BE3411C();
            v108 = *(v107 - 256);
            swift_unknownObjectRelease();
            v109 = *(v135 + 8);
            v110 = sub_22BE1B328();
            v111(v110);
            v112 = sub_22BE3EA10();
            v113(v112);
            swift_storeEnumTagMultiPayload();
            sub_22BE259B0();
            goto LABEL_19;
          case 4:
            v141.n128_u8[0] = 4;
            sub_22C17727C();
            sub_22BE3788C();
            sub_22C18FC5C();
            sub_22C1774C8();
            sub_22BE3788C();
            sub_22C273EB4();
            sub_22BE3411C();
            v94 = *(v93 - 256);
            swift_unknownObjectRelease();
            v95 = *(v136 + 8);
            v96 = sub_22BE291B0();
            v97(v96);
            v98 = sub_22BE3EA10();
            v99(v98);
            sub_22BE48898(v141.n128_i64[0]);
            sub_22C18F4E0();
            goto LABEL_18;
          default:
            v141.n128_u8[0] = 0;
            sub_22C177420();
            sub_22BE3788C();
            sub_22C18FC5C();
            sub_22C17751C();
            sub_22BE3788C();
            sub_22C273EB4();
            sub_22BE3411C();
            v115 = *(v114 - 256);
            swift_unknownObjectRelease();
            v116 = sub_22BE25EE4();
            v117(v116);
            v118 = sub_22BE3EA10();
            v119(v118);
            sub_22BE48898(v141.n128_i64[0]);
            sub_22C18F4E0();
LABEL_18:
            swift_storeEnumTagMultiPayload();
            sub_22BE259B0();
LABEL_19:
            sub_22BE22944(&a13);
            sub_22C171FA8(v126, v127);
            sub_22BE259B0();
            v128 = sub_22BE3E8FC();
            sub_22C171FA8(v128, v129);
            v90 = v140;
            break;
        }

        goto LABEL_13;
      }

      v64 = Payload;
      v63 = v138;
    }

    sub_22C273B34();
    sub_22BE196B4();
    v80 = v79;
    v81 = *(sub_22BE5CE4C(&qword_27D907968, &qword_22C2768D0) + 48);
    *v80 = v64;
    sub_22C273DF4();
    sub_22BE1A918();
    v82 = *MEMORY[0x277D84160];
    sub_22BE18994();
    v84 = *(v83 + 104);
    v85 = sub_22BE38608();
    v86(v85);
    swift_willThrow();
    swift_unknownObjectRelease();
    v87 = *(v63 + 8);
    v88 = sub_22BE31038();
    v89(v88);
  }

  v90 = v140;
LABEL_13:
  sub_22BE26B64(v90);
  sub_22BE34134();
  sub_22BE18478();
}

void static PropertyQuery.== infix(_:_:)()
{
  sub_22BE19460();
  v38 = v5;
  v6 = sub_22BE33690();
  Predicate = type metadata accessor for QueryPredicate(v6);
  v8 = sub_22BE18000(Predicate);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE17CBC();
  v11 = type metadata accessor for PropertyQuery(0);
  v12 = sub_22BE18000(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22BE183AC();
  v17 = (v15 - v16);
  MEMORY[0x28223BE20](v18);
  sub_22BE25F20();
  MEMORY[0x28223BE20](v19);
  sub_22BE26800();
  v20 = sub_22BE5CE4C(&qword_27D913910, &qword_22C2B8490);
  sub_22BE19448(v20);
  v22 = *(v21 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v23);
  sub_22BE1B72C();
  v25 = *(v24 + 56);
  sub_22BE1A964(v3, v0);
  sub_22BE1A964(v38, v0 + v25);
  sub_22BE3CC34();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_22C18E0D0();
      v27 = sub_22BE29264();
      sub_22BE1A964(v27, v28);
      v29 = *v4;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
LABEL_4:
        v30 = *(v0 + v25);
        sub_22BE191CC();
        sub_22BEA0714();

        sub_22BE36698();
        goto LABEL_10;
      }
    }

    else
    {
      sub_22C18E0D0();
      v33 = sub_22BE1A6BC();
      sub_22BE1A964(v33, v34);
      v35 = *v17;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        goto LABEL_4;
      }
    }

LABEL_9:
    sub_22C18DC5C(v0, &qword_27D913910);
    goto LABEL_10;
  }

  sub_22C18E0D0();
  v31 = sub_22BE37490();
  sub_22BE1A964(v31, v32);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_22C18E384();
    sub_22C171FFC();
    goto LABEL_9;
  }

  sub_22C171FA8(v0 + v25, v1);
  v36 = *v2 == *v1 && *(v2 + 8) == *(v1 + 8);
  if (v36 || (sub_22C274014()) && (sub_22BF25DB4(*(v2 + 16), *(v1 + 16)))
  {
    v37 = *(Predicate + 24);
    sub_22C272844();
  }

  sub_22C18EFB8();
  sub_22C171FFC();
  sub_22BE36680();
  sub_22C171FFC();
  sub_22BE36698();
LABEL_10:
  sub_22BE1B1B8();
  sub_22BE1AABC();
}

uint64_t static QueryPredicate.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  sub_22BE19FC4(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_22C274014() & 1) == 0 || (sub_22BF25DB4(*(v3 + 16), *(v2 + 16)) & 1) == 0)
  {
    return 0;
  }

  Predicate = type metadata accessor for QueryPredicate(0);
  sub_22C18EA3C(*(Predicate + 24));

  return sub_22C272844();
}

uint64_t sub_22C154DE0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657261706D6F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 6581857 && a2 == 0xE300000000000000;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 29295 && a2 == 0xE200000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_22C274014();

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

uint64_t sub_22C154EE8(char a1)
{
  if (!a1)
  {
    return 0x657261706D6F63;
  }

  if (a1 == 1)
  {
    return 6581857;
  }

  return 29295;
}

uint64_t sub_22C154F2C(uint64_t a1)
{
  v2 = sub_22C17770C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C154F68(uint64_t a1)
{
  v2 = sub_22C17770C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C154FAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C154DE0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C154FD4(uint64_t a1)
{
  v2 = sub_22C1775B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C155010(uint64_t a1)
{
  v2 = sub_22C1775B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C15504C(uint64_t a1)
{
  v2 = sub_22C177760();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C155088(uint64_t a1)
{
  v2 = sub_22C177760();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C1550C4(uint64_t a1)
{
  v2 = sub_22C177604();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C155100(uint64_t a1)
{
  v2 = sub_22C177604();

  return MEMORY[0x2821FE720](a1, v2);
}

void PropertyQuery.encode(to:)()
{
  sub_22BE19130();
  sub_22C18F7E4();
  v2 = sub_22BE5CE4C(&qword_27D913918, &qword_22C2B8498);
  sub_22BE179D8(v2);
  v4 = *(v3 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE3C048(v6, v47);
  v7 = sub_22BE5CE4C(&qword_27D913920, &qword_22C2B84A0);
  sub_22BE179D8(v7);
  v9 = *(v8 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE34034(v11, v48);
  v12 = sub_22BE5CE4C(&qword_27D913928, &qword_22C2B84A8);
  sub_22BE179D8(v12);
  v50 = v13;
  v15 = *(v14 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v16);
  sub_22BE1B72C();
  Predicate = type metadata accessor for QueryPredicate(0);
  v17 = sub_22BE18000(Predicate);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22BE19338();
  v20 = type metadata accessor for PropertyQuery(0);
  v21 = sub_22BE18000(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  sub_22BE1955C();
  v52 = sub_22BE5CE4C(&qword_27D913930, &qword_22C2B84B0);
  sub_22BE179D8(v52);
  v25 = v24;
  v27 = *(v26 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v28);
  sub_22BE25CD0();
  v30 = v0[3];
  v29 = v0[4];
  sub_22BE3C0A8(v0);
  sub_22C1775B0();
  sub_22BEC046C();
  sub_22C18F8EC();
  sub_22C274234();
  sub_22C18E0D0();
  sub_22BE1A964(v51, v1);
  sub_22BE27BA4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v32 = *v1;
    if (EnumCaseMultiPayload == 1)
    {
      sub_22BF0AF1C();
      sub_22C17770C();
      sub_22BE261D0();
      sub_22C273EE4();
      sub_22BE5CE4C(&qword_27D913948, &qword_22C2B84B8);
      sub_22C177658();
      sub_22BE37DD4();
    }

    else
    {
      sub_22BE32454();
      sub_22C177604();
      sub_22BE261D0();
      sub_22C273EE4();
      sub_22BE5CE4C(&qword_27D913948, &qword_22C2B84B8);
      sub_22C177658();
      sub_22BE37DD4();
      sub_22C18FFC0();
    }

    sub_22C18F71C();
    v42 = sub_22BE32D8C();
    v43(v42);
    v44 = *(v25 + 8);
    v45 = sub_22BE1B328();
    v46(v45);
  }

  else
  {
    v33 = sub_22BE18240();
    sub_22C171FA8(v33, v34);
    sub_22C177760();
    sub_22BE261D0();
    sub_22C273EE4();
    sub_22BE4482C();
    sub_22BE20458(v35);
    sub_22C273FA4();
    v36 = *(v50 + 8);
    v37 = sub_22BE1B62C();
    v38(v37);
    sub_22C18E384();
    sub_22C171FFC();
    v39 = *(v25 + 8);
    v40 = sub_22BE1B328();
    v41(v40);
  }

  sub_22BEE94B0();
  sub_22BE18478();
}

void PropertyQuery.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  v17 = v16;
  v93 = sub_22BE5CE4C(&qword_27D913970, &qword_22C2B84C0);
  sub_22BE179D8(v93);
  v94 = v18;
  v20 = *(v19 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v21);
  sub_22BE20168(v22, v89);
  v23 = sub_22BE5CE4C(&qword_27D913978, &qword_22C2B84C8);
  v92 = sub_22BE179D8(v23);
  v25 = *(v24 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v26);
  sub_22BE34034(v27, v90);
  v28 = sub_22BE5CE4C(&qword_27D913980, &qword_22C2B84D0);
  sub_22BE179D8(v28);
  v30 = *(v29 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v31);
  sub_22BE1A174();
  sub_22BE252B8(v32);
  v96 = sub_22BE5CE4C(&qword_27D913988, &qword_22C2B84D8);
  sub_22BE179D8(v96);
  v95 = v33;
  v35 = *(v34 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v36);
  sub_22BE1B72C();
  v37 = type metadata accessor for PropertyQuery(0);
  v38 = sub_22BE18000(v37);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  sub_22BE183AC();
  sub_22BE2017C();
  MEMORY[0x28223BE20](v41);
  sub_22BE360F8();
  MEMORY[0x28223BE20](v42);
  sub_22BE25ED0();
  MEMORY[0x28223BE20](v43);
  sub_22BE32374();
  v45 = *(v17 + 24);
  v44 = *(v17 + 32);
  v46 = sub_22C18F9AC();
  sub_22BE3C0A8(v46);
  sub_22C1775B0();
  sub_22C274214();
  if (!v11)
  {
    v91 = v12;
    v47 = v96;
    v48 = sub_22C273ED4();
    sub_22BE7C5C4(v48, 0);
    sub_22C18F638();
    if (!v49)
    {
      sub_22BE32C78();
      if (v56 == v57)
      {
        __break(1u);
        return;
      }

      v58 = *(v55 + v54);
      v59 = sub_22BE3A464(v50, v51, v52, v53, v54);
      sub_22BE7C5C0(v59);
      v61 = v60;
      v63 = v62;
      swift_unknownObjectRelease();
      if (v61 == v63 >> 1)
      {
        if (v58)
        {
          if (v58 == 1)
          {
            sub_22BF0AF1C();
            sub_22C17770C();
            sub_22BE27168();
            sub_22C273DE4();
            sub_22BE5CE4C(&qword_27D913948, &qword_22C2B84B8);
            sub_22C1777B4();
            sub_22C18E5AC();
            sub_22BE285D4();
            sub_22C273EB4();
            swift_unknownObjectRelease();
            v73 = sub_22C11FDE0();
            v74(v73, v92);
            v75 = sub_22BE39058();
            v76(v75, v96);
            v77 = v14;
            *v14 = a10;
          }

          else
          {
            sub_22BE32454();
            sub_22C177604();
            sub_22BE27168();
            sub_22C273DE4();
            sub_22BE5CE4C(&qword_27D913948, &qword_22C2B84B8);
            sub_22C1777B4();
            sub_22C273EB4();
            swift_unknownObjectRelease();
            v81 = *(v94 + 8);
            v82 = sub_22BE1B62C();
            v83(v82);
            v84 = *(v95 + 8);
            v85 = sub_22BE3CEF4();
            v86(v85);
            v77 = v13;
            *v13 = a10;
          }

          sub_22C18FFCC();
          swift_storeEnumTagMultiPayload();
          sub_22BE4268C();
          sub_22C171FA8(v77, v15);
          v80 = v97;
        }

        else
        {
          sub_22C177760();
          sub_22BE27168();
          sub_22C273DE4();
          type metadata accessor for QueryPredicate(0);
          sub_22BE4482C();
          sub_22BE20458(v72);
          sub_22C273EB4();
          swift_unknownObjectRelease();
          v78 = sub_22BE32D8C();
          v79(v78);
          (*(v95 + 8))(v10, v96);
          sub_22BE2684C();
          swift_storeEnumTagMultiPayload();
          sub_22BE4268C();
          sub_22C171FA8(v91, v15);
          v80 = v97;
        }

        sub_22BE4268C();
        v87 = sub_22BE336E8();
        sub_22C171FA8(v87, v88);
        v71 = v80;
        goto LABEL_12;
      }

      v47 = v96;
    }

    sub_22C273B34();
    sub_22BE196B4();
    v65 = v64;
    v66 = *(sub_22BE5CE4C(&qword_27D907968, &qword_22C2768D0) + 48);
    *v65 = v37;
    sub_22C273DF4();
    sub_22BE1B198();
    v67 = *MEMORY[0x277D84160];
    sub_22BE18994();
    (*(v68 + 104))(v65);
    swift_willThrow();
    swift_unknownObjectRelease();
    v69 = sub_22BE1A194();
    v70(v69, v47);
  }

  v71 = v97;
LABEL_12:
  sub_22BE26B64(v71);
  sub_22BE1AB28();
  sub_22BE18478();
}

uint64_t VariableSetter.dependencies.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t VariableSetter.value.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for VariableSetter(v0) + 20);
  return sub_22BE18504();
}

uint64_t VariableSetter.ancestorId.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for VariableSetter(v0) + 24);
  return sub_22BE18504();
}

uint64_t VariableSetter.init(dependencies:value:ancestorId:)()
{
  v3 = sub_22BE3E864();
  v4 = type metadata accessor for VariableSetter(v3);
  v5 = *(v4 + 24);
  sub_22C26E614();
  sub_22BE1A140();
  sub_22BE19DC4(v6, v7, v8, v9);
  *v2 = v1;
  v10 = *(v4 + 20);
  v11 = sub_22C272874();
  sub_22BE1834C(v11);
  (*(v12 + 32))(&v2[v10], v0);
  return sub_22BE2343C();
}

void VariableSetter.description.getter()
{
  sub_22BE3C358();
  v1 = sub_22BE191CC();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE18000(v3);
  v5 = *(v4 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE1B01C();
  sub_22C273AA4();
  sub_22C18F4F8();
  MEMORY[0x2318AB8D0](0xD00000000000001DLL);
  v7 = *v0;
  sub_22C26E684();
  sub_22BE33690();
  sub_22C272874();
  sub_22BE18F44();
  sub_22BE20458(v8);
  sub_22BE1B73C();
  v9 = sub_22C272E64();
  v11 = v10;
  MEMORY[0x2318AB8D0](v9);

  MEMORY[0x2318AB8D0](0x3A65756C6176202CLL, 0xE900000000000020);
  v12 = type metadata accessor for VariableSetter(0);
  sub_22C18E864(v12);
  sub_22C273C24();
  sub_22C18F534();
  v13 = *(v11 + 24);
  sub_22C18F910();
  sub_22BE22814();
  sub_22BE1AB1C();
  v14 = sub_22C273074();
  MEMORY[0x2318AB8D0](v14);

  sub_22BE267B8();
}

void static VariableSetter.== infix(_:_:)()
{
  sub_22BE19460();
  sub_22C18E58C();
  v5 = sub_22C26E614();
  v6 = sub_22BE179D8(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE197B8();
  v9 = sub_22BE5CE4C(&qword_27D908FF8, &qword_22C27FC50);
  sub_22BE19448(v9);
  v11 = *(v10 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  sub_22BE19E64();
  v13 = sub_22BE5CE4C(&qword_27D909028, &qword_22C27FC68);
  sub_22C18DFEC(v13);
  v15 = *(v14 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v16);
  sub_22BE1AEF0();
  v17 = *v2;
  v18 = *v1;
  sub_22BEA36D4();
  if (v19)
  {
    v20 = type metadata accessor for VariableSetter(0);
    sub_22C18FCBC(v20);
    sub_22C18FFA8(v21);
    if (sub_22C272844())
    {
      v22 = *(v4 + 24);
      v23 = *(v3 + 48);
      sub_22BE3D108();
      sub_22BE22814();
      sub_22BE3D108();
      sub_22BE22814();
      sub_22BE181B0(v0);
      if (!v24)
      {
        sub_22BE191CC();
        sub_22BE22814();
        sub_22BE181B0(v0 + v23);
        if (!v24)
        {
          v27 = sub_22BE38638();
          v28(v27);
          sub_22BE2B8F4();
          sub_22BE20458(v29);
          sub_22BE1AB74();
          sub_22C272FD4();
          v30 = off_27D909000;
          v31 = sub_22BE19454();
          v30(v31);
          v32 = sub_22BE3C5E4();
          v30(v32);
          sub_22C18DC5C(v0, &qword_27D908FF8);
          goto LABEL_12;
        }

        v25 = sub_22BE2399C();
        v26(v25, v5);
LABEL_11:
        sub_22C18DC5C(v0, &qword_27D909028);
        goto LABEL_12;
      }

      sub_22BE181B0(v0 + v23);
      if (!v24)
      {
        goto LABEL_11;
      }

      sub_22C18DC5C(v0, &qword_27D908FF8);
    }
  }

LABEL_12:
  sub_22BE1AABC();
}

uint64_t sub_22C15634C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65646E65706564 && a2 == 0xEC00000073656963;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x726F747365636E61 && a2 == 0xEA00000000006449)
    {

      return 2;
    }

    else
    {
      v8 = sub_22C274014();

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

uint64_t sub_22C156464(char a1)
{
  if (!a1)
  {
    return 0x6E65646E65706564;
  }

  if (a1 == 1)
  {
    return 0x65756C6176;
  }

  return 0x726F747365636E61;
}

uint64_t sub_22C1564CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C15634C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C1564F4(uint64_t a1)
{
  v2 = sub_22C177868();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C156530(uint64_t a1)
{
  v2 = sub_22C177868();

  return MEMORY[0x2821FE720](a1, v2);
}

void VariableSetter.encode(to:)()
{
  sub_22BE2BB34();
  sub_22BE27A28();
  v2 = sub_22BE5CE4C(&qword_27D9139A0, &qword_22C2B84E0);
  sub_22BE1BF18(v2);
  v4 = *(v3 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE25CD0();
  sub_22BE23094();
  sub_22C177868();
  sub_22BE33B8C();
  v11 = *v1;
  sub_22BE5CE4C(&qword_27D9139B0, &qword_22C2B84E8);
  sub_22C1778BC();
  sub_22BE37DD4();
  sub_22BE31254();
  sub_22C273FA4();
  if (!v0)
  {
    v6 = type metadata accessor for VariableSetter(0);
    sub_22C18E1EC(v6);
    sub_22C272874();
    sub_22BE18720();
    sub_22BE20458(v7);
    sub_22BE31254();
    sub_22C273FA4();
    sub_22C18FF54();
    sub_22C26E614();
    sub_22BE2B8F4();
    sub_22BE20458(v8);
    sub_22C18EA18();
    sub_22BE31254();
    sub_22C273F34();
  }

  v9 = sub_22BE37508();
  v10(v9);
  sub_22BEE92C0();
  sub_22BEE93D4();
}

void VariableSetter.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  v15 = v14;
  v50 = v16;
  v17 = sub_22BE5CE4C(&qword_27D908FF8, &qword_22C27FC50);
  sub_22BE19448(v17);
  v19 = *(v18 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v20);
  sub_22BE2BA30(v21, v49);
  v22 = sub_22C272874();
  v23 = sub_22BE179D8(v22);
  v51 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v23);
  sub_22BE18DFC();
  v27 = sub_22BE5CE4C(&qword_27D9139C8, &qword_22C2B84F0);
  sub_22BE179D8(v27);
  v29 = *(v28 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v30);
  v31 = sub_22BE24FD8();
  v32 = type metadata accessor for VariableSetter(v31);
  v33 = sub_22BE29F40(v32);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  sub_22BE1955C();
  v37 = *(v36 + 24);
  v38 = sub_22C26E614();
  v52 = v13;
  sub_22BE1A140();
  sub_22BE19DC4(v39, v40, v41, v38);
  v42 = v15[3];
  v43 = v15[4];
  sub_22BE2018C(v15);
  sub_22C177868();
  sub_22BE3CCD4();
  sub_22C18E60C();
  sub_22C274214();
  if (v11)
  {
    sub_22BE26B64(v15);
    sub_22C18DC5C(&v52[v37], &qword_27D908FF8);
  }

  else
  {
    sub_22BE5CE4C(&qword_27D9139B0, &qword_22C2B84E8);
    sub_22C1779A8();
    sub_22BE35E60();
    sub_22C273EB4();
    *v52 = a10;
    sub_22BE18720();
    sub_22BE20458(v44);
    sub_22C273EB4();
    (*(v51 + 32))(&v52[*(v10 + 20)], v12, v22);
    sub_22BE2B8F4();
    sub_22BE20458(v45);
    sub_22C18EA6C();
    sub_22C273E44();
    v46 = sub_22C18F288();
    v47(v46);
    sub_22BE2343C();
    v48 = sub_22BE19EBC();
    sub_22BE1A964(v48, v50);
    sub_22BE26B64(v15);
    sub_22BE26148();
    sub_22C171FFC();
  }

  sub_22BE19650();
  sub_22BE18478();
}

uint64_t QueryPredicate.parameterId.setter()
{
  sub_22BE1A8A8();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_22C156C58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = sub_22BE2021C();
  v8 = *(v7(v6) + 24);
  v9 = a3(0);
  sub_22BE1834C(v9);
  v11 = *(v10 + 40);

  return v11(v3 + v8, v4);
}

uint64_t QueryPredicate.value.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for QueryPredicate(v0) + 24);
  return sub_22BE18504();
}

uint64_t QueryPredicate.init(parameterId:op:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a3;
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = v5;
  v6 = *(type metadata accessor for QueryPredicate(0) + 24);
  v7 = sub_22C272874();
  sub_22BE1834C(v7);
  v9 = *(v8 + 32);
  v10 = sub_22BE33684();

  return v11(v10);
}

uint64_t QueryPredicate.description.getter()
{
  sub_22BE382D8();
  MEMORY[0x2318AB8D0](40, 0xE100000000000000);
  MEMORY[0x2318AB8D0](*v0, *(v0 + 8));
  MEMORY[0x2318AB8D0](32, 0xE100000000000000);
  sub_22C120054(*(v0 + 16));
  MEMORY[0x2318AB8D0](32, 0xE100000000000000);
  v1 = *(type metadata accessor for QueryPredicate(0) + 24);
  sub_22C272874();
  sub_22C273C24();
  v2 = sub_22C18E830();
  MEMORY[0x2318AB8D0](v2);
  return v4;
}

uint64_t sub_22C156E3C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574656D61726170 && a2 == 0xEB00000000644972;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 28783 && a2 == 0xE200000000000000;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_22C274014();

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

uint64_t sub_22C156F44(char a1)
{
  if (!a1)
  {
    return 0x6574656D61726170;
  }

  if (a1 == 1)
  {
    return 28783;
  }

  return 0x65756C6176;
}

uint64_t sub_22C156F9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C156E3C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C156FC4(uint64_t a1)
{
  v2 = sub_22C177A94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C157000(uint64_t a1)
{
  v2 = sub_22C177A94();

  return MEMORY[0x2821FE720](a1, v2);
}

void QueryPredicate.encode(to:)()
{
  sub_22BE2BB34();
  sub_22BE27A28();
  v2 = sub_22BE5CE4C(&qword_27D9139E0, &qword_22C2B84F8);
  sub_22BE1BF18(v2);
  v4 = *(v3 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE25CD0();
  sub_22BE23094();
  sub_22C177A94();
  sub_22BE33B8C();
  v6 = *v1;
  v7 = v1[1];
  sub_22C18E9AC();
  sub_22BE26108();
  sub_22C273F54();
  if (!v0)
  {
    v12 = *(v1 + 16);
    sub_22BE38948();
    sub_22C177AE8();
    sub_22BE26258();
    sub_22BE26108();
    sub_22C273FA4();
    v8 = *(type metadata accessor for QueryPredicate(0) + 24);
    sub_22C18EAFC();
    sub_22C272874();
    sub_22BE18720();
    sub_22BE20458(v9);
    sub_22C18EA18();
    sub_22BE31254();
    sub_22C273FA4();
  }

  v10 = sub_22BE37508();
  v11(v10);
  sub_22BEE92C0();
  sub_22BEE93D4();
}

void QueryPredicate.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12)
{
  sub_22BE19130();
  v17 = v16;
  v41 = v18;
  v43 = sub_22C272874();
  v19 = sub_22BE179D8(v43);
  v40 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22BE28FD8();
  v44 = sub_22BE5CE4C(&qword_27D9139F8, &qword_22C2B8500);
  sub_22BE179D8(v44);
  v42 = v23;
  v25 = *(v24 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v26);
  v27 = sub_22BE24FD8();
  Predicate = type metadata accessor for QueryPredicate(v27);
  v29 = sub_22C18DFEC(Predicate);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  sub_22BE197B8();
  v32 = v17[3];
  v33 = v17[4];
  sub_22C18E560(v17);
  sub_22C177A94();
  sub_22BE3CCD4();
  sub_22C274214();
  if (v13)
  {
    sub_22BE26B64(v17);
  }

  else
  {
    sub_22C18EA24();
    sub_22BE36514();
    *v12 = sub_22C273E64();
    *(v12 + 8) = v34;
    sub_22BE38948();
    sub_22C177B3C();
    sub_22C18FA0C();
    sub_22C18E59C();
    sub_22C273EB4();
    *(v12 + 16) = a12;
    sub_22C18EAFC();
    sub_22BE18720();
    sub_22BE20458(v35);
    sub_22BE36514();
    sub_22C273EB4();
    v36 = *(v42 + 8);
    v37 = sub_22C18EA60();
    v38(v37);
    (*(v40 + 32))(v12 + *(v14 + 24), v15, v43);
    v39 = sub_22BE19EBC();
    sub_22BE1A964(v39, v41);
    sub_22BE26B64(v17);
    sub_22C18E384();
    sub_22C171FFC();
  }

  sub_22BE467E4();
  sub_22BE18478();
}

uint64_t sub_22C1574B4()
{
  result = 61;
  switch(*v0)
  {
    case 1:
      result = 15649;
      break;
    case 2:
      result = 62;
      break;
    case 3:
      result = 15678;
      break;
    case 4:
      result = 60;
      break;
    case 5:
      result = 15676;
      break;
    case 6:
      result = 0x736E6961746E6F63;
      break;
    case 7:
      result = 0x666572705F736168;
      break;
    case 8:
      result = 0x666675735F736168;
      break;
    case 9:
      result = 0x65777465625F7369;
      break;
    default:
      return result;
  }

  return result;
}

IntelligenceFlowPlannerSupport::QueryOperator_optional __swiftcall QueryOperator.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22C273DC4();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_22C15764C@<X0>(uint64_t *a1@<X8>)
{
  result = QueryOperator.description.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_22C157784()
{
  v3 = sub_22BE23708();
  v5 = v4(v3);
  sub_22C18EA48(*(v5 + 20));

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ActionParameterContext.parameterId.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for ActionParameterContext(v0) + 20);
  return sub_22BE18504();
}

uint64_t ActionParameterContext.tool.getter()
{
  v0 = sub_22BE1A5E4();
  v1 = type metadata accessor for ActionParameterContext(v0);
  sub_22C18E8AC(*(v1 + 24));
}

void ActionParameterContext.tool.setter()
{
  sub_22C190048();
  v2 = sub_22C18E9C8(v1);
  v3 = type metadata accessor for ActionParameterContext(v2);
  sub_22C18EA48(*(v3 + 24));
  v4 = *(v0 + 24);

  sub_22C18F2EC(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  sub_22C190034();
}

uint64_t ActionParameterContext.tool.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for ActionParameterContext(v0) + 24);
  return sub_22BE18504();
}

void ActionParameterContext.actionClass.getter()
{
  v0 = sub_22BE1A5E4();
  v1 = type metadata accessor for ActionParameterContext(v0);
  sub_22C18F688(*(v1 + 28));
}

uint64_t ActionParameterContext.actionClass.setter(unsigned __int8 *a1)
{
  v3 = sub_22C18F9E8(a1);
  result = type metadata accessor for ActionParameterContext(v3);
  *(v2 + *(result + 28)) = v1;
  return result;
}

uint64_t ActionParameterContext.actionClass.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for ActionParameterContext(v0) + 28);
  return sub_22BE18504();
}

void ActionParameterContext.init(statementId:actionClass:toolId:parameterId:)()
{
  sub_22BE3C358();
  sub_22C18F5A8();
  v6 = *v5;
  v7 = sub_22C26E684();
  sub_22BE1834C(v7);
  v9 = *(v8 + 32);
  v10 = sub_22BE1AB1C();
  v11(v10);
  v12 = type metadata accessor for ActionParameterContext(0);
  *(v4 + v12[7]) = v6;
  v13 = v4 + v12[6];
  *v13 = v3;
  *(v13 + 8) = v2;
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 32) = 0;
  v14 = (v4 + v12[5]);
  *v14 = v1;
  v14[1] = v0;
  sub_22BE267B8();
}

uint64_t ActionParameterContext.init(statementId:actionClass:tool:parameterId:)@<X0>(char *a1@<X1>, __int128 *a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v16 = *a2;
  v5 = *(a2 + 2);
  v6 = *(a2 + 3);
  v7 = *(a2 + 32);
  v8 = sub_22C26E684();
  sub_22BE1834C(v8);
  v10 = *(v9 + 32);
  v11 = sub_22BE1C2A0();
  v12(v11);
  v13 = type metadata accessor for ActionParameterContext(0);
  *(a3 + *(v13 + 28)) = v4;
  v14 = a3 + *(v13 + 24);
  *v14 = v16;
  *(v14 + 16) = v5;
  *(v14 + 24) = v6;
  *(v14 + 32) = v7;
  return sub_22C18F734(v13);
}

uint64_t sub_22C157AB4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E656D6574617473 && a2 == 0xEB00000000644974;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6574656D61726170 && a2 == 0xEB00000000644972;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1819242356 && a2 == 0xE400000000000000;
      if (v7 || (sub_22C274014() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6C436E6F69746361 && a2 == 0xEB00000000737361)
      {

        return 3;
      }

      else
      {
        v9 = sub_22C274014();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_22C157C1C(char a1)
{
  result = 0x6E656D6574617473;
  switch(a1)
  {
    case 1:
      result = 0x6574656D61726170;
      break;
    case 2:
      result = 1819242356;
      break;
    case 3:
      result = 0x6C436E6F69746361;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22C157CB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C157AB4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C157CDC(uint64_t a1)
{
  v2 = sub_22C177B90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C157D18(uint64_t a1)
{
  v2 = sub_22C177B90();

  return MEMORY[0x2821FE720](a1, v2);
}

void ActionParameterContext.encode(to:)()
{
  sub_22BE2BB34();
  sub_22BE22950();
  v3 = sub_22BE5CE4C(&qword_27D913A08, &qword_22C2B8508);
  sub_22BE1BF18(v3);
  v5 = *(v4 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE19E64();
  sub_22BE23094();
  sub_22C177B90();
  sub_22BE25524();
  sub_22C26E684();
  sub_22BE18F44();
  sub_22BE20458(v7);
  sub_22C18F958();
  sub_22BE196CC();
  sub_22C273FA4();
  if (!v0)
  {
    v8 = type metadata accessor for ActionParameterContext(0);
    sub_22C18E864(v8);
    sub_22C18F320(v9);
    sub_22BE36628();
    sub_22C273F54();
    v10 = (v1 + *(v2 + 24));
    v11 = v10[3];
    v14 = *v10;
    v16 = v10[1];
    v17 = v10[2];
    v18 = *(v10 + 32);
    sub_22BEB9C9C();
    sub_22C18F35C();

    sub_22C18F30C();
    sub_22C273FA4();

    v15 = *(v1 + *(v2 + 28));
    sub_22C177BE4();
    sub_22C18E17C();
    sub_22C273FA4();
  }

  v12 = sub_22BE37A10();
  v13(v12);
  sub_22BEE92C0();
  sub_22BEE93D4();
}

void ActionParameterContext.init(from:)()
{
  sub_22BE19130();
  v4 = v3;
  sub_22C18FEC4(v5);
  v6 = sub_22C26E684();
  v7 = sub_22BE179D8(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE17A44();
  v10 = sub_22BE5CE4C(&qword_27D913A20, &qword_22C2B8510);
  v11 = sub_22BE179D8(v10);
  v31 = v12;
  v32 = v11;
  v14 = *(v13 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  sub_22BE234F4();
  v16 = type metadata accessor for ActionParameterContext(0);
  v17 = sub_22BE18000(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22BE197B8();
  v21 = v4[3];
  v20 = v4[4];
  sub_22BE31088(v4);
  sub_22C177B90();
  sub_22BE48270();
  sub_22C274214();
  if (v1)
  {
    sub_22BE26B64(v4);
  }

  else
  {
    LOBYTE(v33) = 0;
    sub_22BE18F44();
    sub_22BE20458(v22);
    sub_22C18FDF0();
    sub_22C273EB4();
    sub_22C18F338();
    v23 = sub_22BE1B18C();
    v24(v23);
    sub_22C18F620(1);
    v25 = sub_22C273E64();
    v26 = (v0 + v16[5]);
    *v26 = v25;
    v26[1] = v27;
    sub_22BE39E24();
    sub_22BEB9D44();
    sub_22BE40660();
    sub_22C273EB4();
    v28 = v0 + v16[6];
    sub_22C18F234(v33);
    sub_22BEE9478();
    sub_22C177C38();
    sub_22BE40660();
    sub_22C18E618();
    sub_22C273EB4();
    (*(v31 + 8))(v2, v32);
    *(v0 + v16[7]) = 0;
    v29 = sub_22C1088E8();
    sub_22BE1A964(v29, v30);
    sub_22BE26B64(v4);
    sub_22C0E9848();
    sub_22C171FFC();
  }

  sub_22C18F0A4();
  sub_22BE18478();
}

uint64_t sub_22C1583A4()
{
  v2 = sub_22BE2021C();
  v4 = v3(v2);
  return sub_22C172628(v1, v0 + *(v4 + 20));
}

uint64_t StatementResult.payload.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for StatementResult(v0) + 20);
  return sub_22BE18504();
}

uint64_t StatementResult.resultStatementId.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for StatementResult(v0) + 24);
  return sub_22BE18504();
}

uint64_t sub_22C1584DC()
{
  v0 = sub_22BE1A5E4();
  v2 = *(v1(v0) + 28);
  v3 = sub_22C26E684();
  sub_22BE18000(v3);
  v5 = *(v4 + 16);
  v6 = sub_22BE44750();

  return v7(v6);
}

uint64_t sub_22C158568()
{
  v0 = sub_22BE17BC4();
  v2 = *(v1(v0) + 28);
  v3 = sub_22C26E684();
  sub_22BE1834C(v3);
  v5 = *(v4 + 40);
  v6 = sub_22BE33684();

  return v7(v6);
}

uint64_t StatementResult.originProgramStatementId.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for StatementResult(v0) + 28);
  return sub_22BE18504();
}

uint64_t StatementResult.originTaskStatementId.getter()
{
  v0 = sub_22BE1A5E4();
  v1 = *(type metadata accessor for StatementResult(v0) + 32);
  v2 = sub_22C26E684();
  sub_22BE18000(v2);
  v4 = *(v3 + 16);
  v5 = sub_22BE44750();

  return v6(v5);
}

uint64_t StatementResult.originTaskStatementId.setter()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for StatementResult(v0) + 32);
  v2 = sub_22C26E684();
  sub_22BE1834C(v2);
  v4 = *(v3 + 40);
  v5 = sub_22BE33684();

  return v6(v5);
}

uint64_t StatementResult.originTaskStatementId.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for StatementResult(v0) + 32);
  return sub_22BE18504();
}

uint64_t StatementResult.tool.getter()
{
  v2 = sub_22BE1A5E4();
  v3 = v1 + *(type metadata accessor for StatementResult(v2) + 36);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  *v0 = *v3;
  *(v0 + 8) = v5;
  *(v0 + 16) = v6;
  *(v0 + 24) = v7;
  *(v0 + 32) = *(v3 + 32);

  return sub_22C172920(v4, v5);
}

__n128 StatementResult.tool.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = v1 + *(type metadata accessor for StatementResult(0) + 36);
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(v4 + 32);
  sub_22C1083D4(*v4, *(v4 + 8));
  result = *a1;
  v9 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v9;
  *(v4 + 32) = v3;
  return result;
}

uint64_t StatementResult.tool.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for StatementResult(v0) + 36);
  return sub_22BE18504();
}

uint64_t StatementResult.init(actionEventId:tool:payload:resultStatementId:originProgramStatementId:originTaskStatementId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_22C0E9E48();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = *(v21 + 32);
  v26 = sub_22C26E1D4();
  v49 = v22[1];
  v50 = *v22;
  v29 = sub_22C0E966C(v24, v27, v28, v26);
  v30 = type metadata accessor for StatementResult(v29);
  sub_22C18F88C(v30);
  sub_22BE35838();
  sub_22BE2343C();
  v31 = *(v16 + 16);
  v32 = *(v16 + 24);
  v33 = *(v16 + 32);
  sub_22C1083D4(*v16, *(v16 + 8));
  *v16 = v50;
  *(v16 + 16) = v49;
  *(v16 + 32) = v25;
  v34 = v30[5];
  sub_22BE41330();
  sub_22C171FA8(v20, v24 + v35);
  v36 = v30[6];
  v37 = sub_22C26E684();
  sub_22BE18000(v37);
  *&v50 = *(v38 + 32);
  *&v49 = v38 + 32;
  (v50)(v24 + v36, v18, v37);
  sub_22C18FCA4(v30[7]);
  sub_22C18FED0();
  v39();
  sub_22BE25438(v30[8]);
  sub_22C18FED0();
  sub_22BE3E534();

  return v43(v40, v41, v42, v43, v44, v45, v46, v47, v49, *(&v49 + 1), v50, *(&v50 + 1), a13, a14, a15, a16);
}

uint64_t StatementResult.init(actionEventId:tool:payload:resultStatementId:originProgramStatementId:)@<X0>(__int128 *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 32);
  v7 = sub_22C26E1D4();
  v29 = a1[1];
  v30 = *a1;
  v10 = sub_22C0E966C(a3, v8, v9, v7);
  v11 = type metadata accessor for StatementResult(v10);
  v12 = a3 + v11[9];
  *(v12 + 32) = 0;
  *v12 = 0u;
  *(v12 + 16) = 0u;
  sub_22BE36680();
  sub_22BE2343C();
  v13 = *(v12 + 16);
  v14 = *(v12 + 24);
  v15 = *(v12 + 32);
  sub_22C1083D4(*v12, *(v12 + 8));
  *v12 = v30;
  *(v12 + 16) = v29;
  *(v12 + 32) = v6;
  v16 = v11[5];
  sub_22BE41330();
  sub_22C171FA8(a2, a3 + v17);
  v18 = v11[6];
  v19 = sub_22C26E684();
  sub_22BE187D0(v19);
  v21 = v20;
  *&v30 = *(v20 + 32);
  sub_22C18FED0();
  v23(v22);
  v24 = *(v21 + 16);
  v25 = sub_22BE25438(v11[7]);
  v26(v25);
  sub_22BE25438(v11[8]);
  sub_22C18FED0();

  return v27();
}

uint64_t StatementResult.init(actionEventId:toolId:payload:resultStatementId:originProgramStatementId:originTaskStatementId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_22BE22B9C();
  v18 = v17;
  v20 = v19;
  sub_22C18FDA4();
  v22 = v21;
  v23 = sub_22C26E1D4();
  v26 = sub_22C0E966C(v22, v24, v25, v23);
  v27 = type metadata accessor for StatementResult(v26);
  v28 = v22 + v27[9];
  *(v28 + 32) = 0;
  *v28 = 0u;
  *(v28 + 16) = 0u;
  sub_22C0B1B94();
  sub_22BE2343C();
  if (!v15)
  {
    v16 = 0;
  }

  v29 = *(v28 + 16);
  v30 = *(v28 + 24);
  v31 = *(v28 + 32);
  sub_22C1083D4(*v28, *(v28 + 8));
  *v28 = v16;
  *(v28 + 8) = v15;
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  *(v28 + 32) = 0;
  v32 = v27[5];
  sub_22BE41330();
  sub_22C171FA8(v14, v22 + v33);
  v34 = v27[6];
  v35 = sub_22C26E684();
  sub_22BE18000(v35);
  v47 = v36 + 32;
  v48 = *(v36 + 32);
  v48(v22 + v34, v20, v35);
  v48(v22 + v27[7], v18, v35);
  v37 = v27[8];
  sub_22BE234D8();

  return v41(v38, v39, v40, v41, v42, v43, v44, v45, v47, v48, a11, a12, a13, a14);
}

void static StatementResultPayload.== infix(_:_:)()
{
  sub_22BE19460();
  sub_22C18E58C();
  v2 = sub_22C26F874();
  v3 = sub_22BE179D8(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE197B8();
  v6 = sub_22BE5CE4C(&qword_27D911DB8, &unk_22C2B5870);
  sub_22BE19448(v6);
  v8 = *(v7 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE19E64();
  v10 = sub_22BE5CE4C(&qword_27D913A30, &qword_22C2B8518);
  sub_22C18DFEC(v10);
  v12 = *(v11 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  sub_22BE389B4();
  if (sub_22C26F884())
  {
    v14 = *(type metadata accessor for StatementResultPayload(0) + 20);
    v15 = *(v1 + 48);
    sub_22BE3D108();
    sub_22BE22814();
    sub_22BE3D108();
    sub_22BE22814();
    sub_22BE181B0(v0);
    if (!v16)
    {
      sub_22BE191CC();
      sub_22BE22814();
      sub_22BE181B0(v0 + v15);
      if (!v16)
      {
        v19 = sub_22BE38638();
        v20(v19);
        sub_22C18E32C();
        sub_22BE20458(v21);
        sub_22BE1AB74();
        sub_22C272FD4();
        v22 = off_27D911DC0;
        v23 = sub_22BE19454();
        v22(v23);
        v24 = sub_22BE3C5E4();
        v22(v24);
        sub_22C18DC5C(v0, &qword_27D911DB8);
        goto LABEL_11;
      }

      v17 = sub_22BE2399C();
      v18(v17, v2);
LABEL_10:
      sub_22C18DC5C(v0, &qword_27D913A30);
      goto LABEL_11;
    }

    sub_22BE181B0(v0 + v15);
    if (!v16)
    {
      goto LABEL_10;
    }

    sub_22C18DC5C(v0, &qword_27D911DB8);
  }

LABEL_11:
  sub_22BE1AABC();
}

uint64_t sub_22C158E98(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x76456E6F69746361 && a2 == 0xED00006449746E65;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x64616F6C796170 && a2 == 0xE700000000000000;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x800000022C2D9390 == a2;
      if (v7 || (sub_22C274014() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000018 && 0x800000022C2D9270 == a2;
        if (v8 || (sub_22C274014() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000015 && 0x800000022C2D93B0 == a2;
          if (v9 || (sub_22C274014() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 1819242356 && a2 == 0xE400000000000000)
          {

            return 5;
          }

          else
          {
            v11 = sub_22C274014();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_22C159090(char a1)
{
  result = 0x76456E6F69746361;
  switch(a1)
  {
    case 1:
      result = 0x64616F6C796170;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0xD000000000000018;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    case 5:
      result = 1819242356;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22C159164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C158E98(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C15918C(uint64_t a1)
{
  v2 = sub_22C177C8C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C1591C8(uint64_t a1)
{
  v2 = sub_22C177C8C();

  return MEMORY[0x2821FE720](a1, v2);
}

void StatementResult.encode(to:)()
{
  sub_22BE19130();
  sub_22C18E9F8();
  v2 = sub_22BE5CE4C(&qword_27D913A40, &qword_22C2B8520);
  sub_22BE1BF18(v2);
  v4 = *(v3 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE19E64();
  sub_22BE23094();
  sub_22C177C8C();
  sub_22BE25524();
  sub_22C26E1D4();
  sub_22BE18B28();
  sub_22BE20458(v6);
  sub_22C18FDF0();
  sub_22BE41644();
  sub_22C273F34();
  if (!v0)
  {
    v7 = type metadata accessor for StatementResult(0);
    sub_22C18E1EC(v7);
    type metadata accessor for StatementResultPayload(0);
    sub_22C18EE44();
    sub_22BE20458(v8);
    sub_22BE41644();
    sub_22C273FA4();
    v9 = v1[6];
    sub_22C26E684();
    sub_22BE18F44();
    sub_22BE20458(v10);
    sub_22BE3EAFC();
    sub_22C273FA4();
    v11 = v1[7];
    sub_22BE3EAFC();
    sub_22C273FA4();
    v12 = v1[8];
    sub_22BE3EAFC();
    sub_22C273FA4();
    v19 = sub_22C11FDEC(v1[9]);
    v20 = v14;
    v21 = *(v13 + 16);
    v22 = *(v13 + 24);
    v23 = *(v13 + 32);
    sub_22C18F67C();
    sub_22C172920(v15, v16);
    sub_22BEB9C9C();
    sub_22C18EBC8();
    sub_22BE1C270();
    sub_22C273F34();
    sub_22C1083D4(v19, v20);
  }

  v17 = sub_22BE47E18();
  v18(v17);
  sub_22BE35D48();
  sub_22BE18478();
}

void StatementResult.init(from:)()
{
  sub_22BE19130();
  v5 = v4;
  v61 = v6;
  v7 = sub_22C26E684();
  v63 = sub_22BE179D8(v7);
  v64 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v63);
  sub_22BE17B98();
  v62 = v11;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v12);
  sub_22BE19490();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v13);
  sub_22BE19E94();
  v14 = sub_22BE183BC();
  v15 = type metadata accessor for StatementResultPayload(v14);
  v16 = sub_22BE18000(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22BE188B0();
  v19 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE19448(v19);
  v21 = *(v20 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v22);
  sub_22BE1A174();
  v23 = sub_22BE5CE4C(&qword_27D913A58, &qword_22C2B8528);
  sub_22BE179D8(v23);
  v25 = *(v24 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v26);
  sub_22BE234F4();
  v27 = type metadata accessor for StatementResult(0);
  v28 = sub_22BE29F40(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  sub_22BE18DFC();
  v31 = sub_22C26E1D4();
  sub_22BE1A140();
  sub_22BE19DC4(v32, v33, v34, v31);
  v65 = v0;
  v35 = v2 + v0[9];
  *(v35 + 32) = 0;
  *v35 = 0u;
  *(v35 + 16) = 0u;
  v36 = v5[3];
  v37 = v5[4];
  v38 = sub_22BE18944();
  sub_22BE26950(v38, v39);
  sub_22C177C8C();
  sub_22BE48270();
  sub_22C274214();
  if (v1)
  {
    sub_22C18E934();
    sub_22BE26B64(v5);
    sub_22C18DC5C(v2, &qword_27D9082F0);
    if (v31)
    {
      v44 = sub_22C18FE78(v65[6]);
      v45(v44);
      if (!v5)
      {
LABEL_5:
        if (!v36)
        {
LABEL_7:
          v41 = *(v35 + 16);
          v42 = *(v35 + 24);
          v43 = *(v35 + 32);
          sub_22C1083D4(*v35, *(v35 + 8));
          goto LABEL_8;
        }

LABEL_6:
        (*(v64 + 8))(v2 + v65[8], v63);
        goto LABEL_7;
      }
    }

    else if (!v5)
    {
      goto LABEL_5;
    }

    v46 = sub_22C18FE78(v65[7]);
    v47(v46);
    if (!v36)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  sub_22BE18B28();
  sub_22BE20458(v40);
  sub_22C273E44();
  sub_22BE2343C();
  sub_22C18F9DC();
  sub_22C18EE44();
  sub_22BE20458(v48);
  sub_22C273EB4();
  v49 = v65[5];
  sub_22BE41330();
  sub_22C171FA8(v3, v2 + v50);
  sub_22C18F8BC();
  sub_22BE18F44();
  sub_22BE20458(v51);
  sub_22C273EB4();
  v52 = v65[6];
  v53 = *(v64 + 32);
  sub_22C18FD58();
  v53();
  sub_22C18F940();
  sub_22C18F3B0();
  sub_22C273EB4();
  v54 = v65[7];
  sub_22C18FD58();
  v53();
  LOBYTE(v66) = 4;
  sub_22C18F3B0();
  sub_22C273EB4();
  (v53)(v2 + v65[8], v62, v63);
  sub_22C18F67C();
  sub_22BEB9D44();
  sub_22BE3788C();
  sub_22C273E44();
  v55 = sub_22BE4073C();
  v56(v55);
  v57 = *(v35 + 16);
  v58 = *(v35 + 24);
  v59 = *(v35 + 32);
  sub_22C1083D4(*v35, *(v35 + 8));
  *v35 = v66;
  *(v35 + 16) = v67;
  *(v35 + 32) = v68;
  v60 = sub_22BE29370();
  sub_22BE1A964(v60, v61);
  sub_22BE26B64(v5);
  sub_22C0E9830();
  sub_22C171FFC();
LABEL_8:
  sub_22BE34134();
  sub_22BE18478();
}

uint64_t StatementResultPayload.response.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for StatementResultPayload(v0) + 20);
  return sub_22BE18504();
}

uint64_t sub_22C159C28(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D6F6374756FLL && a2 == 0xE700000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65736E6F70736572 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C274014();

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

uint64_t sub_22C159CF0(char a1)
{
  if (a1)
  {
    return 0x65736E6F70736572;
  }

  else
  {
    return 0x656D6F6374756FLL;
  }
}

uint64_t sub_22C159D30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C159C28(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C159D58(uint64_t a1)
{
  v2 = sub_22C177CE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C159D94(uint64_t a1)
{
  v2 = sub_22C177CE0();

  return MEMORY[0x2821FE720](a1, v2);
}

void StatementResultPayload.encode(to:)()
{
  sub_22BE2BB34();
  sub_22BE27A28();
  v1 = sub_22BE5CE4C(&qword_27D913A68, &qword_22C2B8530);
  sub_22BE1BF18(v1);
  v3 = *(v2 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE25CD0();
  sub_22BE23094();
  sub_22C177CE0();
  sub_22BE33B8C();
  sub_22C18E810();
  sub_22C26F894();
  sub_22BE28CFC();
  sub_22BE20458(v5);
  sub_22BEE92A4();
  sub_22BE31254();
  sub_22C273FA4();
  if (!v0)
  {
    v6 = *(type metadata accessor for StatementResultPayload(0) + 20);
    sub_22BE323A4();
    sub_22C26F874();
    sub_22C18E32C();
    sub_22BE20458(v7);
    sub_22C18EA18();
    sub_22BE31254();
    sub_22C273F34();
  }

  v8 = sub_22BE37508();
  v9(v8);
  sub_22BEE92C0();
  sub_22BEE93D4();
}

void StatementResultPayload.init(from:)()
{
  sub_22BE19130();
  v3 = v2;
  v35 = v4;
  v5 = sub_22BE5CE4C(&qword_27D911DB8, &unk_22C2B5870);
  sub_22BE19448(v5);
  v7 = *(v6 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE1A8B4();
  v36 = sub_22C26F894();
  v9 = sub_22BE179D8(v36);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BE17CBC();
  v37 = sub_22BE5CE4C(&qword_27D913A80, &qword_22C2B8538);
  sub_22BE179D8(v37);
  v13 = *(v12 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  v15 = sub_22BE1AED0();
  v16 = type metadata accessor for StatementResultPayload(v15);
  v17 = sub_22BE19448(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22BE19338();
  v21 = *(v20 + 28);
  sub_22C26F874();
  sub_22BE3AE2C();
  sub_22BE19DC4(v22, v23, v24, v25);
  v26 = v3[3];
  v27 = v3[4];
  sub_22BE2018C(v3);
  sub_22C177CE0();
  sub_22BE489BC();
  sub_22C1901D4();
  if (v0)
  {
    sub_22BE26B64(v3);
    sub_22C18DC5C(v1 + v21, &qword_27D911DB8);
  }

  else
  {
    sub_22BE28CFC();
    sub_22BE20458(v28);
    sub_22BEE92A4();
    sub_22BE385D8();
    sub_22C273EB4();
    sub_22BE47DF4();
    v29 = sub_22BE25C08();
    v30(v29);
    sub_22BE33FE4();
    sub_22C18E32C();
    sub_22BE20458(v31);
    sub_22C18E9A0();
    sub_22BE385D8();
    sub_22C273E44();
    v32 = sub_22C11FDE0();
    v33(v32, v37);
    sub_22BE2343C();
    v34 = sub_22C1088E8();
    sub_22BE1A964(v34, v35);
    sub_22BE26B64(v3);
    sub_22C0E9848();
    sub_22C171FFC();
  }

  sub_22C18F0A4();
  sub_22BE18478();
}

uint64_t sub_22C15A2D8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x800000022C2DA620 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22C274014();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22C15A378@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C15A2D8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22C15A3A4(uint64_t a1)
{
  v2 = sub_22C177D34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C15A3E0(uint64_t a1)
{
  v2 = sub_22C177D34();

  return MEMORY[0x2821FE720](a1, v2);
}

void ResponseGenerationRequest.encode(to:)()
{
  sub_22BE19130();
  sub_22C18F710();
  v2 = sub_22BE5CE4C(&qword_27D913A98, &qword_22C2B8540);
  sub_22BE1BF18(v2);
  v4 = *(v3 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE25CD0();
  v6 = *v0;
  v7 = v1[3];
  v8 = v1[4];
  sub_22BE3C0A8(v1);
  sub_22C177D34();
  sub_22C18FC8C();
  sub_22BEC046C();
  sub_22BE2BC6C();
  sub_22C274234();
  sub_22BE5CE4C(&qword_27D913AA8, &qword_22C2B8548);
  sub_22C177D88();
  sub_22BE37DD4();
  sub_22BE1A550();
  sub_22C273FA4();
  sub_22C18F4B0();

  v9 = sub_22C18E57C();
  v10(v9);
  sub_22BEE94B0();
  sub_22BE18478();
}

void ResponseGenerationRequest.init(from:)()
{
  sub_22BE19130();
  sub_22C18E778();
  v2 = sub_22BE5CE4C(&qword_27D913AB8, &qword_22C2B8550);
  sub_22BE1A3D8(v2);
  v4 = *(v3 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE1B01C();
  sub_22BE3763C();
  sub_22C177D34();
  sub_22BE18878();
  if (!v1)
  {
    sub_22BE5CE4C(&qword_27D913AA8, &qword_22C2B8548);
    sub_22C177E3C();
    sub_22BE33B10();
    v6 = sub_22BE17B24();
    v7(v6);
    sub_22C18FD98();
  }

  sub_22BE26B64(v0);
  sub_22BE46D98();
  sub_22BE18478();
}

uint64_t QueryStepResults.originStatementId.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for QueryStepResults(v0) + 20);
  return sub_22BE18504();
}

uint64_t QueryStepResults.queryEventId.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for QueryStepResults(v0) + 24);
  return sub_22BE18504();
}

uint64_t QueryStepResults.init(queryResults:originStatementId:queryEventId:)()
{
  sub_22BE393A8();
  v4 = v3;
  *v3 = v5;
  StepResults = type metadata accessor for QueryStepResults(0);
  sub_22C18FE44(StepResults);
  v7 = sub_22C26E684();
  sub_22BE1834C(v7);
  (*(v8 + 32))(&v4[v2], v1);
  v9 = *(StepResults + 24);
  v10 = sub_22C26E1D4();
  sub_22BE1834C(v10);
  v12 = *(v11 + 32);

  return v12(&v4[v9], v0);
}

uint64_t sub_22C15A860(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7365527972657571 && a2 == 0xEC00000073746C75;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x800000022C2D9200 == a2;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6576457972657571 && a2 == 0xEC0000006449746ELL)
    {

      return 2;
    }

    else
    {
      v8 = sub_22C274014();

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

uint64_t sub_22C15A980(char a1)
{
  if (!a1)
  {
    return 0x7365527972657571;
  }

  if (a1 == 1)
  {
    return 0xD000000000000011;
  }

  return 0x6576457972657571;
}

uint64_t sub_22C15A9F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C15A860(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C15AA1C(uint64_t a1)
{
  v2 = sub_22C177EF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C15AA58(uint64_t a1)
{
  v2 = sub_22C177EF0();

  return MEMORY[0x2821FE720](a1, v2);
}

void QueryStepResults.encode(to:)()
{
  sub_22BE2BB34();
  sub_22BE27A28();
  v2 = sub_22BE5CE4C(&qword_27D913AC8, &qword_22C2B8558);
  sub_22BE1BF18(v2);
  v4 = *(v3 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE25CD0();
  sub_22BE23094();
  sub_22C177EF0();
  sub_22BE33B8C();
  v11 = *v1;
  sub_22BE5CE4C(&qword_27D913AD8, &qword_22C2B8560);
  sub_22C177F98(&unk_27D913AE0);
  sub_22BE37DD4();
  sub_22BE31254();
  sub_22C273FA4();
  if (!v0)
  {
    StepResults = type metadata accessor for QueryStepResults(0);
    sub_22C18E1EC(StepResults);
    sub_22C26E684();
    sub_22BE18F44();
    sub_22BE20458(v7);
    sub_22BE31254();
    sub_22C273FA4();
    sub_22C18FF54();
    sub_22C26E1D4();
    sub_22BE18B28();
    sub_22BE20458(v8);
    sub_22C18EA18();
    sub_22BE31254();
    sub_22C273FA4();
  }

  v9 = sub_22BE37508();
  v10(v9);
  sub_22BEE92C0();
  sub_22BEE93D4();
}

void QueryStepResults.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  v15 = v14;
  v47 = v16;
  v48 = sub_22C26E1D4();
  v17 = sub_22BE179D8(v48);
  v46 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22BE188B0();
  v21 = sub_22C26E684();
  v22 = sub_22BE179D8(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  sub_22BE17CBC();
  v25 = sub_22BE5CE4C(&qword_27D913AF0, &qword_22C2B8568);
  sub_22BE179D8(v25);
  v49 = v26;
  v28 = *(v27 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v29);
  sub_22BE25CD0();
  StepResults = type metadata accessor for QueryStepResults(0);
  v31 = sub_22BE18000(StepResults);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  sub_22BE197B8();
  v34 = *(v15 + 24);
  v35 = *(v15 + 32);
  v36 = sub_22C18F9AC();
  sub_22BE31088(v36);
  sub_22C177EF0();
  sub_22BEC046C();
  sub_22C274214();
  if (v11)
  {
    sub_22BE26B64(v50);
  }

  else
  {
    sub_22BE5CE4C(&qword_27D913AD8, &qword_22C2B8560);
    sub_22C177F98(&unk_27D913AF8);
    sub_22BE35E60();
    sub_22BE27B84();
    sub_22C273EB4();
    *v10 = a10;
    sub_22BE18F44();
    sub_22BE20458(v37);
    sub_22C18F3B0();
    sub_22C273EB4();
    v38 = *(StepResults + 20);
    sub_22C18FFB4();
    v40(&v10[v39], v12, v21);
    sub_22BE18B28();
    sub_22BE20458(v41);
    sub_22C18F3B0();
    sub_22C273EB4();
    v42 = *(v49 + 8);
    v43 = sub_22BE18944();
    v44(v43);
    (*(v46 + 32))(&v10[*(StepResults + 24)], v13, v48);
    v45 = sub_22BE19EBC();
    sub_22BE1A964(v45, v47);
    sub_22BE26B64(v50);
    sub_22BE365AC();
    sub_22C171FFC();
  }

  sub_22BE35D48();
  sub_22BE18478();
}

void static QueryResults.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_22BEA0078();
}

uint64_t sub_22C15B114(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x74616469646E6163 && a2 == 0xEA00000000007365)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22C274014();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22C15B1B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C15B114(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22C15B1E0(uint64_t a1)
{
  v2 = sub_22C17805C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C15B21C(uint64_t a1)
{
  v2 = sub_22C17805C();

  return MEMORY[0x2821FE720](a1, v2);
}

void QueryResults.encode(to:)()
{
  sub_22BE19130();
  sub_22C18F710();
  v2 = sub_22BE5CE4C(&qword_27D913B08, &qword_22C2B8570);
  sub_22BE1BF18(v2);
  v4 = *(v3 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE25CD0();
  v6 = *v0;
  v7 = v1[3];
  v8 = v1[4];
  sub_22BE3C0A8(v1);
  sub_22C17805C();
  sub_22C18FC8C();
  sub_22BEC046C();
  sub_22BE2BC6C();
  sub_22C274234();
  sub_22BE5CE4C(&qword_27D913B18, &qword_22C2B8578);
  sub_22C1780B0();
  sub_22BE37DD4();
  sub_22BE1A550();
  sub_22C273FA4();
  sub_22C18F4B0();

  v9 = sub_22C18E57C();
  v10(v9);
  sub_22BEE94B0();
  sub_22BE18478();
}

void QueryResults.init(from:)()
{
  sub_22BE19130();
  sub_22C18E778();
  v2 = sub_22BE5CE4C(&qword_27D913B30, &qword_22C2B8580);
  sub_22BE1A3D8(v2);
  v4 = *(v3 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE1B01C();
  sub_22BE3763C();
  sub_22C17805C();
  sub_22BE18878();
  if (!v1)
  {
    sub_22BE5CE4C(&qword_27D913B18, &qword_22C2B8578);
    sub_22C178164();
    sub_22BE33B10();
    v6 = sub_22BE17B24();
    v7(v6);
    sub_22C18FD98();
  }

  sub_22BE26B64(v0);
  sub_22BE46D98();
  sub_22BE18478();
}

void Candidate.source.getter()
{
  v0 = sub_22BE1A5E4();
  v1 = type metadata accessor for Candidate(v0);
  sub_22C18F688(*(v1 + 20));
}

uint64_t Candidate.source.setter(unsigned __int8 *a1)
{
  v3 = sub_22C18F9E8(a1);
  result = type metadata accessor for Candidate(v3);
  *(v2 + *(result + 20)) = v1;
  return result;
}

uint64_t Candidate.source.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for Candidate(v0) + 20);
  return sub_22BE18504();
}

void Candidate.promptStatus.getter()
{
  v1 = sub_22BE1A5E4();
  v2 = type metadata accessor for Candidate(v1);
  sub_22C18F4EC(v2);
  sub_22C18FA84(v3);
  *v0 = v4;
  *(v0 + 8) = v5;
}

uint64_t Candidate.promptStatus.setter(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = type metadata accessor for Candidate(0);
  result = sub_22C18F4EC(v3);
  *v5 = v1;
  *(v5 + 8) = v2;
  return result;
}

uint64_t Candidate.promptStatus.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for Candidate(v0) + 24);
  return sub_22BE18504();
}

uint64_t Candidate.statementId.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for Candidate(v0) + 28);
  return sub_22BE18504();
}

uint64_t sub_22C15B69C()
{
  v0 = sub_22BE1C364();
  v2 = *(v1(v0) + 32);
  sub_22C18E974();
  return sub_22BE22814();
}

uint64_t sub_22C15B704()
{
  v0 = sub_22BE27BE8();
  v2 = *(v1(v0) + 32);
  return sub_22BFBFC6C();
}

uint64_t Candidate.ancestorId.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for Candidate(v0) + 32);
  return sub_22BE18504();
}

void Candidate.init(value:source:statementId:ancestorId:)()
{
  sub_22BE3C358();
  v1 = v0;
  v3 = v2;
  v5 = *v4;
  v6 = type metadata accessor for Candidate(0);
  v7 = sub_22C18F4EC(v6);
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = *(v7 + 32);
  v10 = sub_22C26E614();
  sub_22C0E966C(v3 + v9, v11, v12, v10);
  v13 = sub_22C272874();
  sub_22BE1834C(v13);
  v15 = *(v14 + 32);
  v16 = sub_22BE1A8C4();
  v17(v16);
  *(v3 + *(v6 + 20)) = v5;
  v18 = *(v6 + 28);
  v19 = sub_22C26E684();
  sub_22BE1834C(v19);
  (*(v20 + 32))(v3 + v18, v1);
  sub_22BE2343C();
  sub_22BE267B8();
}

uint64_t Candidate.init(value:source:statementId:)@<X0>(char *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = type metadata accessor for Candidate(0);
  v7 = a3 + v6[6];
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = v6[8];
  v9 = sub_22C26E614();
  sub_22C0E966C(a3 + v8, v10, v11, v9);
  v12 = sub_22C272874();
  sub_22BE1834C(v12);
  v14 = *(v13 + 32);
  v15 = sub_22BE1804C();
  v16(v15);
  *(a3 + v6[5]) = v5;
  v17 = v6[7];
  v18 = sub_22C26E684();
  sub_22BE1834C(v18);
  v20 = *(v19 + 32);

  return v20(a3 + v17, a2);
}

uint64_t Candidate.init(value:source:promptStatus:statementId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22BE19460();
  v13 = v12;
  v15 = *v14;
  v17 = *v16;
  v18 = *(v16 + 8);
  v19 = type metadata accessor for Candidate(0);
  v20 = v13 + v19[6];
  sub_22C18E7C8();
  v22 = *(v21 + 32);
  v23 = sub_22C26E614();
  sub_22C0E966C(v13 + v22, v24, v25, v23);
  v26 = sub_22C272874();
  sub_22BE1834C(v26);
  v28 = *(v27 + 32);
  v29 = sub_22BE18040();
  v30(v29);
  *(v13 + v19[5]) = v15;
  *v20 = v17;
  *(v20 + 8) = v18;
  v31 = v19[7];
  v32 = sub_22C26E684();
  sub_22BE1834C(v32);
  v34 = *(v33 + 32);
  sub_22BE33684();
  sub_22BE1AABC();

  return v38(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12);
}

uint64_t Candidate.description.getter()
{
  v1 = sub_22BE5CE4C(&qword_27D908FF8, &qword_22C27FC50);
  sub_22BE29F40(v1);
  v3 = *(v2 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE19E64();
  sub_22C18E4D0();
  sub_22C273AA4();
  sub_22C18F8D4();
  sub_22C18F694();
  MEMORY[0x2318AB8D0](v5 | 1, v6 | 0x8000000000000000);
  sub_22C272874();
  sub_22C273C24();
  sub_22C18FD70();
  sub_22C18FAC4();
  v7 = type metadata accessor for Candidate(0);
  sub_22C11FE20(*(v0 + v7[5]));
  sub_22C18F4F8();
  MEMORY[0x2318AB8D0](0xD000000000000010);
  v8 = (v0 + v7[6]);
  v9 = *v8;
  if (*(v8 + 8) == 1)
  {
    if (v9)
    {
      v10 = 0x656D7269666E6F63;
    }

    else
    {
      v10 = 1701736302;
    }

    if (v9)
    {
      v11 = 0xE900000000000064;
    }

    else
    {
      v11 = 0xE400000000000000;
    }
  }

  else
  {
    sub_22BE425E0();
    v23 = v12;
    v24 = v13;
    v14 = sub_22C273FD4();
    MEMORY[0x2318AB8D0](v14);

    v15 = sub_22C18E830();
    MEMORY[0x2318AB8D0](v15);
    v10 = v23;
    v11 = v24;
  }

  MEMORY[0x2318AB8D0](v10, v11);

  v16 = sub_22BE33AB0();
  MEMORY[0x2318AB8D0](v16);
  v17 = v7[7];
  sub_22C26E684();
  sub_22BE18F44();
  sub_22BE20458(v18);
  v19 = sub_22C273FD4();
  MEMORY[0x2318AB8D0](v19);

  sub_22C18F534();
  v20 = v7[8];
  sub_22BE22814();
  sub_22BE1AB74();
  v21 = sub_22C273074();
  MEMORY[0x2318AB8D0](v21);

  return v25;
}

unint64_t sub_22C15BC84()
{
  result = 0x7551797469746E65;
  switch(*v0)
  {
    case 1:
      result = 0x61636F5669726973;
      break;
    case 2:
      sub_22C18F4F8();
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0x656D6F646167656DLL;
      break;
    case 4:
      result = 0x52747865746E6F63;
      break;
    case 5:
      result = 0x61566E7275746572;
      break;
    case 6:
      result = 0x6D6F725072657375;
      break;
    case 7:
      result = 0x72616573696E6D6FLL;
      break;
    default:
      return result;
  }

  return result;
}

IntelligenceFlowPlannerSupport::Candidate::Source_optional __swiftcall Candidate.Source.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22C273DC4();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_22C15BE18@<X0>(uint64_t *a1@<X8>)
{
  result = Candidate.Source.description.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t Candidate.PromptStatus.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    if (*v0)
    {
      return 0x656D7269666E6F63;
    }

    else
    {
      return 1701736302;
    }
  }

  else
  {
    sub_22BE425E0();
    v5 = v2;
    v3 = sub_22C273FD4();
    MEMORY[0x2318AB8D0](v3);

    v4 = sub_22C18E830();
    MEMORY[0x2318AB8D0](v4);
    return v5;
  }
}

uint64_t static Candidate.PromptStatus.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = (*a1 == *a2) & ~v2;
  if (*a2)
  {
    v4 = *(a2 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    v2 = 0;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2;
  }

  if (*(a1 + 8) == 1)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_22C15C054(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656D7269666E6F63 && a2 == 0xE900000000000064;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x64656B636970 && a2 == 0xE600000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_22C274014();

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

uint64_t sub_22C15C168(char a1)
{
  if (!a1)
  {
    return 1701736302;
  }

  if (a1 == 1)
  {
    return 0x656D7269666E6F63;
  }

  return 0x64656B636970;
}

uint64_t sub_22C15C1C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C15C054(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C15C1E8(uint64_t a1)
{
  v2 = sub_22C178218();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C15C224(uint64_t a1)
{
  v2 = sub_22C178218();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C15C260(uint64_t a1)
{
  v2 = sub_22C1782C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C15C29C(uint64_t a1)
{
  v2 = sub_22C1782C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C15C2D8(uint64_t a1)
{
  v2 = sub_22C178314();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C15C314(uint64_t a1)
{
  v2 = sub_22C178314();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C15C350(uint64_t a1)
{
  v2 = sub_22C17826C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C15C38C(uint64_t a1)
{
  v2 = sub_22C17826C();

  return MEMORY[0x2821FE720](a1, v2);
}

void Candidate.PromptStatus.encode(to:)()
{
  sub_22BE19130();
  sub_22C18F4C8();
  v2 = sub_22BE5CE4C(&qword_27D913B48, &qword_22C2B8588);
  sub_22BE179D8(v2);
  v4 = *(v3 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE20168(v6, v36);
  v7 = sub_22BE5CE4C(&qword_27D913B50, &qword_22C2B8590);
  sub_22BE179D8(v7);
  v9 = *(v8 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE181D0(v11, v37);
  v12 = sub_22BE5CE4C(&qword_27D913B58, &qword_22C2B8598);
  sub_22BE179D8(v12);
  v14 = *(v13 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  sub_22BE2BA30(v16, v38);
  v17 = sub_22BE5CE4C(&qword_27D913B60, &qword_22C2B85A0);
  sub_22BE179D8(v17);
  v19 = v18;
  v21 = *(v20 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v22);
  sub_22BE234F4();
  v23 = *v0;
  v24 = *(v0 + 8);
  v25 = v1[4];
  sub_22BE26950(v1, v1[3]);
  sub_22C178218();
  sub_22BE48270();
  sub_22C274234();
  if (v24 == 1)
  {
    if (v23)
    {
      sub_22BE33FE4();
      sub_22C1782C0();
    }

    else
    {
      sub_22C178314();
      sub_22C18F928();
    }

    sub_22BE27168();
    sub_22C273EE4();
    v31 = sub_22BE1B5F8();
    v32(v31);
    v33 = *(v19 + 8);
    v34 = sub_22BE1B5E0();
    v35(v34);
  }

  else
  {
    sub_22BE39E24();
    sub_22C17826C();
    sub_22BE27168();
    sub_22C273EE4();
    sub_22C273F94();
    v26 = sub_22BE460B8();
    v27(v26);
    v28 = *(v19 + 8);
    v29 = sub_22BE1B5E0();
    v30(v29);
  }

  sub_22BE22978();
  sub_22BE18478();
}

uint64_t Candidate.PromptStatus.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 8) == 1)
  {
    v1 = v1 != 0;
  }

  else
  {
    MEMORY[0x2318AC860](2);
  }

  return MEMORY[0x2318AC860](v1);
}

uint64_t Candidate.PromptStatus.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_22BE25DAC();
  if (v2 != 1)
  {
    MEMORY[0x2318AC860](2);
  }

  v3 = sub_22BEC03B0();
  MEMORY[0x2318AC860](v3);
  return sub_22C2741A4();
}

void Candidate.PromptStatus.init(from:)()
{
  sub_22BE19130();
  v2 = v1;
  v65 = v3;
  v64 = sub_22BE5CE4C(&qword_27D913B88, &qword_22C2B85A8);
  sub_22BE179D8(v64);
  v66 = v4;
  v6 = *(v5 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE1A174();
  v8 = sub_22BE5CE4C(&qword_27D913B90, &qword_22C2B85B0);
  sub_22BE179D8(v8);
  v10 = *(v9 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  sub_22BE234F4();
  v12 = sub_22BE5CE4C(&qword_27D913B98, &qword_22C2B85B8);
  sub_22BE179D8(v12);
  v14 = *(v13 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  sub_22BE23E58();
  v16 = sub_22BE5CE4C(&qword_27D913BA0, &qword_22C2B85C0);
  sub_22BE179D8(v16);
  v67 = v17;
  v19 = *(v18 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v20);
  sub_22BE1B01C();
  v22 = v2[3];
  v21 = v2[4];
  sub_22BE41E84(v2);
  sub_22C178218();
  sub_22BE232E4();
  sub_22C274214();
  if (!v0)
  {
    v68 = v2;
    v23 = sub_22C273ED4();
    sub_22BE7C5C4(v23, 0);
    sub_22C18F638();
    if (!v24)
    {
      sub_22BE38A18();
      sub_22BE3E9D8();
      if (v31 == v32)
      {
        __break(1u);
        return;
      }

      v33 = *(v30 + v29);
      v34 = sub_22BE3A464(v25, v26, v27, v28, v29);
      sub_22BE7C5C0(v34);
      v36 = v35;
      v38 = v37;
      swift_unknownObjectRelease();
      if (v36 == v38 >> 1)
      {
        if (v33)
        {
          if (v33 != 1)
          {
            sub_22BE39E24();
            sub_22C17826C();
            sub_22C18F228();
            sub_22C273DE4();
            v52 = v65;
            v44 = sub_22C273EA4();
            swift_unknownObjectRelease();
            v58 = *(v66 + 8);
            v59 = sub_22BE3AF28();
            v60(v59);
            v61 = sub_22BE39058();
            v62(v61, v16);
            v63 = 0;
LABEL_15:
            *v52 = v44;
            *(v52 + 8) = v63;
            sub_22BE26B64(v2);
            goto LABEL_11;
          }

          sub_22BE33FE4();
          sub_22C1782C0();
          sub_22C18F228();
          sub_22C273DE4();
          swift_unknownObjectRelease();
          v39 = sub_22BE28D70();
          v40(v39);
          v41 = *(v67 + 8);
          v42 = sub_22BE31038();
          v43(v42);
          v44 = 1;
        }

        else
        {
          sub_22C178314();
          sub_22C18F928();
          sub_22C18F228();
          sub_22C273DE4();
          swift_unknownObjectRelease();
          v53 = sub_22BE1B5F8();
          v54(v53, v12);
          v55 = *(v67 + 8);
          v56 = sub_22BE31038();
          v57(v56);
          v44 = 0;
        }

        v63 = 1;
        v52 = v65;
        goto LABEL_15;
      }
    }

    sub_22C273B34();
    sub_22BE196B4();
    v46 = v45;
    v47 = *(sub_22BE5CE4C(&qword_27D907968, &qword_22C2768D0) + 48);
    *v46 = &type metadata for Candidate.PromptStatus;
    sub_22C273DF4();
    sub_22BE1B198();
    v48 = *MEMORY[0x277D84160];
    sub_22BE18994();
    (*(v49 + 104))(v46);
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_22BE1B940();
    v50 = sub_22BE31038();
    v51(v50);
    v2 = v68;
  }

  sub_22BE26B64(v2);
LABEL_11:
  sub_22BE34134();
  sub_22BE18478();
}

uint64_t sub_22C15CD40()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_22C274154();
  if (v2 == 1)
  {
    v1 = v1 != 0;
  }

  else
  {
    MEMORY[0x2318AC860](2);
  }

  MEMORY[0x2318AC860](v1);
  return sub_22C2741A4();
}

void static Candidate.== infix(_:_:)()
{
  sub_22BE19460();
  sub_22C18E58C();
  v6 = sub_22C26E614();
  v7 = sub_22BE179D8(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE197B8();
  v12 = sub_22BE5CE4C(&qword_27D908FF8, &qword_22C27FC50);
  sub_22BE19448(v12);
  v14 = *(v13 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  sub_22BE19E64();
  v16 = sub_22BE5CE4C(&qword_27D909028, &qword_22C27FC68);
  sub_22C18DFEC(v16);
  v18 = *(v17 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v19);
  sub_22BE389B4();
  if ((sub_22C272844() & 1) == 0)
  {
    goto LABEL_26;
  }

  v20 = type metadata accessor for Candidate(0);
  sub_22C18FCBC(v20);
  if ((sub_22BF25690(*(v3 + v21), *(v2 + v21)) & 1) == 0)
  {
    goto LABEL_26;
  }

  v22 = v5[6];
  v23 = *(v3 + v22);
  v24 = *(v3 + v22 + 8);
  sub_22C18FA84((v2 + v22));
  if (v28 == 1)
  {
    if (v27)
    {
      if (!v26)
      {
        v25 = 0;
      }

      if ((v25 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    else
    {
      if (v26)
      {
        v25 = 0;
      }

      if ((v25 & 1) == 0)
      {
        goto LABEL_26;
      }
    }
  }

  else
  {
    if (v27 != v26)
    {
      v25 = 1;
    }

    if (v25)
    {
      goto LABEL_26;
    }
  }

  sub_22C18FFA8(v5[7]);
  if (_s30IntelligenceFlowPlannerSupport14OpenExpressionV2eeoiySbAC_ACtFZ_0())
  {
    v29 = v5[8];
    v30 = *(v4 + 48);
    sub_22C19013C();
    sub_22C19005C();
    sub_22BE181B0(v1);
    if (v31)
    {
      sub_22BE181B0(v1 + v30);
      if (v31)
      {
        sub_22C18DC5C(v1, &qword_27D908FF8);
        goto LABEL_26;
      }
    }

    else
    {
      sub_22BE191CC();
      sub_22BE22814();
      sub_22BE181B0(v1 + v30);
      if (!v31)
      {
        sub_22C18EB74();
        v35(v0, v1 + v30, v6);
        sub_22BE2B8F4();
        sub_22BE20458(v36);
        sub_22BE1AB74();
        sub_22C272FD4();
        v37 = *(v9 + 8);
        v38 = sub_22BE19454();
        v37(v38);
        v39 = sub_22BE3C5E4();
        v37(v39);
        sub_22C18DC5C(v1, &qword_27D908FF8);
        goto LABEL_26;
      }

      v32 = *(v9 + 8);
      v33 = sub_22BE3C5E4();
      v34(v33);
    }

    sub_22C18DC5C(v1, &qword_27D909028);
  }

LABEL_26:
  sub_22BE1AABC();
}

uint64_t sub_22C15D070(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x745374706D6F7270 && a2 == 0xEC00000073757461;
      if (v7 || (sub_22C274014() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6E656D6574617473 && a2 == 0xEB00000000644974;
        if (v8 || (sub_22C274014() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x726F747365636E61 && a2 == 0xEA00000000006449)
        {

          return 4;
        }

        else
        {
          v10 = sub_22C274014();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_22C15D218(char a1)
{
  result = 0x65756C6176;
  switch(a1)
  {
    case 1:
      result = 0x656372756F73;
      break;
    case 2:
      result = 0x745374706D6F7270;
      break;
    case 3:
      result = 0x6E656D6574617473;
      break;
    case 4:
      result = 0x726F747365636E61;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22C15D2C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C15D070(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C15D2F0(uint64_t a1)
{
  v2 = sub_22C178368();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C15D32C(uint64_t a1)
{
  v2 = sub_22C178368();

  return MEMORY[0x2821FE720](a1, v2);
}

void Candidate.encode(to:)()
{
  sub_22BE2BB34();
  sub_22BE22950();
  v3 = sub_22BE5CE4C(&qword_27D913BA8, &qword_22C2B85C8);
  sub_22BE1BF18(v3);
  v5 = *(v4 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE19E64();
  sub_22BE23094();
  sub_22C178368();
  sub_22BE25524();
  sub_22C18E810();
  sub_22C272874();
  sub_22BE18720();
  sub_22BE20458(v7);
  sub_22BEE92A4();
  sub_22BE196CC();
  sub_22C273FA4();
  if (!v0)
  {
    v8 = type metadata accessor for Candidate(0);
    sub_22C18E70C(v8);
    sub_22C1783BC();
    sub_22BE26258();
    sub_22C18E17C();
    sub_22C273FA4();
    sub_22C18FA84((v1 + v2[6]));
    sub_22C18F8C8();
    sub_22C178410();
    sub_22C18E17C();
    sub_22C273FA4();
    v9 = v2[7];
    sub_22C26E684();
    sub_22BE18F44();
    sub_22BE20458(v10);
    sub_22C18E994();
    sub_22BE196CC();
    sub_22C273FA4();
    v11 = v2[8];
    sub_22C26E614();
    sub_22BE2B8F4();
    sub_22BE20458(v12);
    sub_22C18FDD8();
    sub_22BE196CC();
    sub_22C273F34();
  }

  v13 = sub_22BE37A10();
  v14(v13);
  sub_22BEE92C0();
  sub_22BEE93D4();
}

void Candidate.hash(into:)()
{
  sub_22BE19460();
  sub_22BE17BC4();
  v2 = sub_22C26E614();
  v3 = sub_22BE179D8(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE17CBC();
  v8 = sub_22BE5CE4C(&qword_27D908FF8, &qword_22C27FC50);
  sub_22BE19448(v8);
  v10 = *(v9 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  sub_22BE1B01C();
  v12 = sub_22C272874();
  sub_22BE18720();
  sub_22BE20458(v13);
  sub_22BE1B62C();
  sub_22C272EE4();
  v14 = type metadata accessor for Candidate(0);
  sub_22C18E864(v14);
  sub_22C120CA0(v0, *(v1 + v15));
  v16 = (v1 + v12[6]);
  v17 = *v16;
  if (*(v16 + 8) == 1)
  {
    v17 = v17 != 0;
  }

  else
  {
    MEMORY[0x2318AC860](2);
  }

  MEMORY[0x2318AC860](v17);
  v18 = v12[7];
  sub_22C26E684();
  sub_22BE18F44();
  sub_22BE20458(v19);
  sub_22BE1A6BC();
  sub_22C272EE4();
  v20 = v12[8];
  sub_22BE22814();
  v21 = sub_22BE23E90();
  sub_22BE1AB5C(v21, v22, v2);
  if (v23)
  {
    sub_22C274174();
  }

  else
  {
    sub_22C18EB74();
    sub_22C18F910();
    v24();
    sub_22C274174();
    sub_22BE2B8F4();
    sub_22BE20458(v25);
    sub_22BE44750();
    sub_22C272EE4();
    v26 = *(v5 + 8);
    v27 = sub_22BE1C2A0();
    v28(v27);
  }

  sub_22BE1AABC();
}

uint64_t Candidate.hashValue.getter()
{
  sub_22BE25DAC();
  Candidate.hash(into:)();
  return sub_22C2741A4();
}

void Candidate.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12)
{
  sub_22BE19130();
  v18 = v17;
  v57 = v19;
  v20 = sub_22BE5CE4C(&qword_27D908FF8, &qword_22C27FC50);
  sub_22BE19448(v20);
  v22 = *(v21 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v23);
  sub_22C18E504(v24);
  v25 = sub_22C26E684();
  v58 = sub_22BE179D8(v25);
  v59 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v58);
  sub_22BE17A44();
  v61 = v29;
  sub_22BE183BC();
  v30 = sub_22C272874();
  v31 = sub_22BE1BF18(v30);
  v60 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v31);
  sub_22BE17A44();
  sub_22BE3FF7C(v35);
  v63 = sub_22BE5CE4C(&qword_27D913BC8, &qword_22C2B85D0);
  sub_22BE179D8(v63);
  v37 = *(v36 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v38);
  v39 = sub_22BE3100C();
  v40 = type metadata accessor for Candidate(v39);
  v41 = sub_22C18DFEC(v40);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  sub_22BE19338();
  v45 = v15 + *(v44 + 24);
  *v45 = 0;
  *(v45 + 8) = 1;
  v46 = *(v44 + 32);
  sub_22C26E614();
  v64 = v15;
  sub_22BE3AE2C();
  sub_22BE19DC4(v47, v48, v49, v50);
  v52 = v18[3];
  v51 = v18[4];
  sub_22BE3C0A8(v18);
  sub_22C178368();
  sub_22BE23550();
  sub_22C274214();
  if (v13)
  {
    sub_22BE26B64(v18);
    sub_22C18DC5C(v64 + v46, &qword_27D908FF8);
  }

  else
  {
    sub_22BE18720();
    sub_22BE20458(v53);
    sub_22BEE92A4();
    sub_22C273EB4();
    (*(v60 + 32))(v64, v62, v12);
    sub_22BE38948();
    sub_22C178464();
    sub_22C18FA0C();
    sub_22C18F7B4();
    sub_22C273EB4();
    *(v64 + *(v16 + 20)) = a12;
    sub_22C18EAFC();
    sub_22C1784B8();
    sub_22C18F7B4();
    sub_22C273EB4();
    *v45 = v65;
    *(v45 + 8) = v66;
    sub_22BE3418C();
    sub_22BE18F44();
    sub_22BE20458(v54);
    sub_22C273EB4();
    (*(v59 + 32))(v64 + *(v16 + 28), v61, v58);
    sub_22BE2B8F4();
    sub_22BE20458(v55);
    sub_22C18F7B4();
    sub_22C273E44();
    sub_22BE270B0();
    v56(v14, v63);
    sub_22BE2343C();
    sub_22BE2BD28();
    sub_22BE1A964(v64, v57);
    sub_22BE26B64(v18);
    sub_22BE35DA8();
    sub_22C171FFC();
  }

  sub_22BE467E4();
  sub_22BE18478();
}

uint64_t sub_22C15DD84()
{
  sub_22C274154();
  Candidate.hash(into:)();
  return sub_22C2741A4();
}

void Session.Event.formingResponse(_:)()
{
  v0 = type metadata accessor for PreassignedEventID();
  v1 = sub_22BE19448(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22BE17CBC();
  _s30IntelligenceFlowPlannerSupport20PlatformPnRTelemetryC5endedyyAA10EndedStateO_0aE7Library0aB11IdentifiersVSg10Foundation4UUIDVtFZfA1__0();
  sub_22BE1AB74();
  Session.Event.formingResponse(id:_:)();
}

void Session.Event.formingResponse(id:_:)()
{
  sub_22BE19460();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE19448(v7);
  v9 = *(v8 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE1B72C();
  v11 = sub_22C26E1D4();
  sub_22BE187D0(v11);
  v51 = v12;
  v52 = v4;
  v13 = *(v12 + 16);
  v14 = sub_22BE3CEF4();
  v13(v14);
  v15 = type metadata accessor for Session.Event(0);
  (v13)(v6 + v15[5], v0 + v15[5], v11);
  v16 = v15[6];
  sub_22BE22814();
  v17 = v15[7];
  sub_22BE1C058();
  sub_22BE1A964(v2, v6 + v18);
  v19 = v15[9];
  v20 = (v0 + v15[8]);
  v21 = v20[1];
  v47 = *v20;
  v22 = *(v0 + v19 + 8);
  v49 = *(v0 + v19);
  v23 = (v0 + v15[10]);
  v24 = *v23;
  v25 = v23[1];
  v26 = (v0 + v15[11]);
  v27 = v6 + v15[12];
  v43 = *v26;
  v44 = v26[1];
  v45 = v24;

  v48 = v21;

  v50 = v22;

  v46 = v25;

  sub_22C26E134();
  v28 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  v29 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  if (qword_28106E038 != -1)
  {
    sub_22BE2360C();
  }

  sub_22BE199F4(v11, qword_28108A1E0);
  v30 = type metadata accessor for Timepoint();
  v31 = v30[7];
  sub_22C18F910();
  (v13)();
  *(v27 + v30[5]) = v28;
  *(v27 + v30[6]) = v29;
  sub_22BE340C8();
  v32 = sub_22C272E84();
  v33 = v15[6];
  sub_22BE1A140();
  sub_22BE19DC4(v34, v35, v36, v11);
  v37 = (v6 + v15[11]);
  v38 = (v6 + v15[13]);
  v39 = v6 + v15[14];
  sub_22BE2343C();
  v40 = (v6 + v15[8]);
  *v40 = v47;
  v40[1] = v48;
  v41 = (v6 + v15[9]);
  *v41 = v49;
  v41[1] = v50;
  v42 = (v6 + v15[10]);
  *v42 = v45;
  v42[1] = v46;
  *v37 = v43;
  v37[1] = v44;
  *v38 = 0;
  v38[1] = 0;
  *v39 = 0;
  *(v39 + 8) = 1;
  *(v6 + v15[15]) = v32;
  (*(v51 + 8))(v52, v11);
  sub_22BE1AABC();
}

void Session.Event.Payload.statementIds.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19460();
  a19 = v27;
  a20 = v28;
  v546 = v21;
  v516 = 0;
  v29 = type metadata accessor for RequestAmendment(0);
  v30 = sub_22BE290A0(v29, &a13);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  sub_22BE17A44();
  v34 = sub_22BE18950(v33);
  DecorationPrePlannerResult = type metadata accessor for QueryDecorationPrePlannerResult(v34);
  v36 = sub_22BE19448(DecorationPrePlannerResult);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  sub_22BE17A44();
  v40 = sub_22BE18950(v39);
  v41 = type metadata accessor for ExecutionPreconditionEvaluatorRequest(v40);
  v42 = sub_22BE19448(v41);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42);
  sub_22BE17A44();
  v46 = sub_22BE18950(v45);
  v47 = type metadata accessor for SkipStatement(v46);
  v48 = sub_22BE19448(v47);
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v48);
  sub_22BE17A44();
  v52 = sub_22BE18950(v51);
  v53 = type metadata accessor for ClientUndoRedoRequest(v52);
  v54 = sub_22BE290A0(v53, &a10);
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v54);
  sub_22BE17A44();
  v58 = sub_22BE18950(v57);
  v59 = type metadata accessor for UndoRedoRequest(v58);
  v60 = sub_22BE290A0(v59, &v552);
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v60);
  sub_22BE17A44();
  v64 = sub_22BE18950(v63);
  v65 = type metadata accessor for ToolResolution(v64);
  v66 = sub_22BE290A0(v65, &v550);
  v68 = *(v67 + 64);
  MEMORY[0x28223BE20](v66);
  sub_22BE17A44();
  v70 = sub_22BE18950(v69);
  v71 = type metadata accessor for DynamicEnumerationEntityStatement(v70);
  v72 = sub_22BE17A18(v71);
  v515 = v73;
  v75 = *(v74 + 64);
  MEMORY[0x28223BE20](v72);
  sub_22BE17A44();
  v539 = v76;
  v77 = sub_22BE183BC();
  DecorationResult = type metadata accessor for QueryDecorationResult(v77);
  v78 = sub_22BE18000(DecorationResult);
  v80 = *(v79 + 64);
  MEMORY[0x28223BE20](v78);
  sub_22BE17A44();
  v536 = v81;
  v82 = sub_22BE183BC();
  v83 = type metadata accessor for TypeConversionResult(v82);
  v84 = sub_22BE290A0(v83, &v548);
  v86 = *(v85 + 64);
  MEMORY[0x28223BE20](v84);
  sub_22BE17A44();
  v88 = sub_22BE18950(v87);
  v89 = type metadata accessor for TypeConversionRequest(v88);
  v90 = sub_22BE290A0(v89, &v546);
  v92 = *(v91 + 64);
  MEMORY[0x28223BE20](v90);
  sub_22BE17A44();
  v94 = sub_22BE18950(v93);
  Step = type metadata accessor for QueryStep(v94);
  v96 = sub_22BE19448(Step);
  v98 = *(v97 + 64);
  MEMORY[0x28223BE20](v96);
  sub_22BE17A44();
  v100 = sub_22BE18950(v99);
  v101 = type metadata accessor for Action(v100);
  v102 = sub_22BE19448(v101);
  v104 = *(v103 + 64);
  MEMORY[0x28223BE20](v102);
  sub_22BE17A44();
  v106 = sub_22BE18950(v105);
  v107 = type metadata accessor for RetrievedContextStatement(v106);
  v108 = sub_22BE17A18(v107);
  v528 = v109;
  v111 = *(v110 + 64);
  MEMORY[0x28223BE20](v108);
  sub_22BE17A44();
  v543 = v112;
  v113 = sub_22BE183BC();
  v114 = type metadata accessor for ProgramStatement(v113);
  v115 = sub_22BE17A18(v114);
  v514 = v116;
  v118 = *(v117 + 64);
  MEMORY[0x28223BE20](v115);
  sub_22BE17A44();
  v538 = v119;
  v120 = sub_22BE183BC();
  v532 = type metadata accessor for ActionResolverRequest(v120);
  v121 = sub_22BE18000(v532);
  v123 = *(v122 + 64);
  MEMORY[0x28223BE20](v121);
  sub_22BE17A44();
  v533 = v124;
  v125 = sub_22BE183BC();
  v547 = type metadata accessor for Candidate(v125);
  v126 = sub_22BE179D8(v547);
  v544 = v127;
  v129 = *(v128 + 64);
  MEMORY[0x28223BE20](v126);
  sub_22BE17A44();
  v545 = v130;
  v131 = sub_22BE183BC();
  StepResults = type metadata accessor for QueryStepResults(v131);
  v133 = sub_22BE19448(StepResults);
  v135 = *(v134 + 64);
  MEMORY[0x28223BE20](v133);
  sub_22BE17A44();
  v534 = v136;
  v137 = sub_22BE183BC();
  v138 = type metadata accessor for StatementResult(v137);
  v139 = sub_22BE290A0(v138, &v539);
  v141 = *(v140 + 64);
  MEMORY[0x28223BE20](v139);
  sub_22BE17A44();
  sub_22BE190A8(v142);
  v143 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  v144 = sub_22BE17A18(v143);
  v517 = v145;
  v147 = *(v146 + 64);
  MEMORY[0x28223BE20](v144);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v148);
  sub_22BE19E94();
  v150 = sub_22BE18950(v149);
  v151 = type metadata accessor for ActionCancellation(v150);
  v152 = sub_22BE19448(v151);
  v154 = *(v153 + 64);
  MEMORY[0x28223BE20](v152);
  sub_22BE17A44();
  sub_22BE18950(v155);
  v537 = sub_22C2700F4();
  v156 = sub_22BE179D8(v537);
  v540 = v157;
  v159 = *(v158 + 64);
  MEMORY[0x28223BE20](v156);
  sub_22BE17A44();
  sub_22BE18950(v160);
  v161 = sub_22C26E684();
  v548 = sub_22BE179D8(v161);
  v549 = v162;
  v164 = *(v163 + 64);
  MEMORY[0x28223BE20](v548);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v165);
  sub_22BE1B604();
  MEMORY[0x28223BE20](v166);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v167);
  sub_22BE360F8();
  MEMORY[0x28223BE20](v168);
  sub_22BE19490();
  v541 = v169;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v170);
  sub_22BE19490();
  v542 = v171;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v172);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v173);
  sub_22BE1C17C();
  v531 = sub_22C26F754();
  v174 = sub_22BE179D8(v531);
  v530 = v175;
  v177 = *(v176 + 64);
  MEMORY[0x28223BE20](v174);
  sub_22BE17A44();
  v179 = sub_22BE18950(v178);
  v180 = type metadata accessor for RequestContent.SystemPromptResolution(v179);
  v181 = sub_22BE290A0(v180, &v529);
  v183 = *(v182 + 64);
  MEMORY[0x28223BE20](v181);
  sub_22BE17A44();
  v185 = sub_22BE18950(v184);
  v186 = type metadata accessor for RequestContent.SpeechContent(v185);
  v187 = sub_22BE290A0(v186, &v527);
  v189 = *(v188 + 64);
  MEMORY[0x28223BE20](v187);
  sub_22BE17A44();
  v191 = sub_22BE18950(v190);
  v192 = type metadata accessor for RequestContent.TextContent(v191);
  v193 = sub_22BE290A0(v192, &v525);
  v195 = *(v194 + 64);
  MEMORY[0x28223BE20](v193);
  sub_22BE17A44();
  v197 = sub_22BE18950(v196);
  v198 = type metadata accessor for RequestContent(v197);
  v199 = sub_22BE18000(v198);
  v201 = *(v200 + 64);
  MEMORY[0x28223BE20](v199);
  sub_22BE183AC();
  sub_22BE1AF10();
  MEMORY[0x28223BE20](v202);
  v204 = v508 - v203;
  v205 = type metadata accessor for Request(0);
  v206 = sub_22BE19448(v205);
  v208 = *(v207 + 64);
  MEMORY[0x28223BE20](v206);
  sub_22BE17A44();
  v210 = v209;
  v211 = sub_22BE183BC();
  v212 = type metadata accessor for UserTurnStarted(v211);
  v213 = sub_22BE19448(v212);
  v215 = *(v214 + 64);
  MEMORY[0x28223BE20](v213);
  sub_22BE188B0();
  v216 = type metadata accessor for Session.Event.Payload(0);
  v217 = sub_22BE18000(v216);
  v219 = *(v218 + 64);
  MEMORY[0x28223BE20](v217);
  sub_22BE197B8();
  sub_22BE1C058();
  sub_22BE1A964(v546, v20);
  sub_22BE260B8();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v221 = MEMORY[0x277D84F90];
  switch(EnumCaseMultiPayload)
  {
    case 1:
      sub_22BE46150();
      v259 = sub_22BE29264();
      sub_22C171FA8(v259, v260);
      sub_22BE5CE4C(&qword_27D9077A0, &qword_22C2757D8);
      v261 = sub_22BE1B7DC();
      *(v261 + 16) = xmmword_22C275160;
      (*(v198 + 16))(v20 + v261, v26, v548);
      sub_22BE4875C();
      goto LABEL_106;
    case 3:
      sub_22BE28EA8();
      v289 = sub_22BE3CC34();
      sub_22C171FA8(v289, v290);
      sub_22BE19368();
      sub_22BE1A964(v210, v204);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          sub_22C18DFA8();
          sub_22BE37B14(&v526);
          sub_22C171FA8(v493, v494);
          sub_22BE5CE4C(&qword_27D9077A0, &qword_22C2757D8);
          *(sub_22BE1B114() + 16) = xmmword_22C275160;
          sub_22BE2ED7C(&v525);
          v496 = sub_22BE409B4(v495);
          v497(v496);
          goto LABEL_134;
        case 2u:
          sub_22BE1BB68();
          sub_22BE37B14(&v528);
          sub_22C171FA8(v481, v482);
          sub_22BE5CE4C(&qword_27D9077A0, &qword_22C2757D8);
          v483 = sub_22BE1B114();
          *(v483 + 16) = xmmword_22C275160;
          v484 = *(v509 + 24);
          v485 = sub_22BE409B4(v483);
          v486(v485);
          goto LABEL_134;
        case 3u:
          sub_22C18DFC0();
          sub_22BE37B14(&v530);
          sub_22C171FA8(v487, v488);
          sub_22BE5CE4C(&qword_27D9077A0, &qword_22C2757D8);
          v489 = sub_22BE1B114();
          *(v489 + 16) = xmmword_22C275160;
          v490 = *(v511 + 28);
          v491 = sub_22BE409B4(v489);
          v492(v491);
LABEL_134:
          sub_22C171FFC();
          sub_22BE26A6C();
          break;
        default:
          goto LABEL_106;
      }

      goto LABEL_106;
    case 4:
      v291 = v20[1];
      v292 = v20[3];
      v293 = v20[4];
      v294 = v20[6];
      v295 = *(v293 + 16);
      if (v295)
      {
        v544 = v292;
        v545 = v291;
        v546 = v294;
        v551 = MEMORY[0x277D84F90];
        sub_22BE71084();
        v296 = v551;
        sub_22BE25AD8();
        v543 = v293;
        v298 = v293 + v297;
        v547 = *(v299 + 72);
        v301 = v548;
        v300 = v549;
        v302 = (v549 + 16);
        do
        {
          sub_22BE1A964(v298, v538);
          v303 = *v302;
          v304 = sub_22BE33560();
          v305(v304);
          sub_22C0E9830();
          sub_22C171FFC();
          v551 = v296;
          v307 = *(v296 + 16);
          v306 = *(v296 + 24);
          if (v307 >= v306 >> 1)
          {
            sub_22BE237B4(v306);
            sub_22BE71084();
            v300 = v549;
            v296 = v551;
          }

          *(v296 + 16) = v307 + 1;
          sub_22C18E768();
          (*(v300 + 32))(v296 + v308 + *(v300 + 72) * v307, v24, v301);
          v298 += v547;
          --v295;
        }

        while (v295);
      }

      goto LABEL_122;
    case 5:
      sub_22BE23784();
      sub_22BE37B14(&v543);
      sub_22C171FA8(v309, v310);
      sub_22BE5CE4C(&qword_27D9077A0, &qword_22C2757D8);
      v311 = sub_22BE1B7DC();
      v312 = sub_22BE3C9B8(v311, xmmword_22C275160);
      v313(v312);
      goto LABEL_106;
    case 6:
      sub_22C18E254();
      sub_22C171FA8(v20, v520);
      sub_22BE5CE4C(&qword_27D909F40, &qword_22C2805A0);
      v247 = *(v517 + 72);
      v248 = (*(v517 + 80) + 32) & ~*(v517 + 80);
      *(swift_allocObject() + 16) = xmmword_22C275160;
      sub_22C0B1754();
      sub_22BE22814();
      sub_22BE37B14(&v537);
      sub_22C0B1754();
      sub_22BE22814();
      v249 = v519;
      sub_22C0B1754();
      sub_22BE424BC();
      v250 = sub_22BE26188();
      v251 = v548;
      sub_22BE1AB5C(v250, v252, v548);
      if (v253)
      {
        sub_22C18DC5C(v249, &qword_27D907240);
        goto LABEL_119;
      }

      v221 = *(v549 + 32);
      v453 = v508[1];
      v454 = sub_22BF6AC14();
      (v221)(v454);
      v455 = MEMORY[0x277D84F90];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_116;
      }

      goto LABEL_153;
    case 8:
      sub_22BE35FFC();
      sub_22BE37B14(&v544);
      sub_22C171FA8(v262, v263);
      sub_22BE5CE4C(&qword_27D9077A0, &qword_22C2757D8);
      v264 = sub_22BE1B7DC();
      v265 = sub_22BE3C9B8(v264, xmmword_22C275160);
      v266(v265);
      goto LABEL_106;
    case 12:
      sub_22C18E29C();
      v314 = v20;
      v315 = v534;
      sub_22C171FA8(v314, v534);
      v316 = 0;
      v251 = *v315;
      v455 = *(*v315 + 16);
      v317 = *v315 + 32;
      v318 = v221;
      v453 = v542;
      while (2)
      {
        if (v455 == v316)
        {
          v436 = *(v318 + 16);
          v437 = v548;
          if (v436)
          {
            v551 = v221;
            sub_22C18E984();
            sub_22BE71084();
            v438 = v551;
            sub_22BE25AD8();
            v440 = v318 + v439;
            v546 = *(v441 + 72);
            v442 = (v549 + 16);
            v544 = v549 + 32;
            do
            {
              sub_22BE2BD28();
              v443 = v545;
              sub_22BE1A964(v440, v545);
              (*v442)(v453, v443 + *(v547 + 28), v437);
              sub_22BE35DA8();
              sub_22C171FFC();
              v551 = v438;
              v444 = v453;
              v446 = *(v438 + 16);
              v445 = *(v438 + 24);
              if (v446 >= v445 >> 1)
              {
                sub_22BE237B4(v445);
                sub_22BE71084();
                v438 = v551;
              }

              *(v438 + 16) = v446 + 1;
              sub_22C18E768();
              v448 = sub_22C18FF68(v447);
              v449(v448, v444, v437);
              v440 += v546;
              --v436;
              v453 = v444;
            }

            while (v436);

            sub_22BE365AC();
LABEL_106:
            sub_22C171FFC();
          }

          else
          {

            sub_22BE365AC();
            sub_22C171FFC();
          }

          goto LABEL_107;
        }

        if (v316 >= *(v251 + 16))
        {
LABEL_144:
          __break(1u);
          goto LABEL_145;
        }

        v319 = *(v317 + 8 * v316);
        v320 = *(v319 + 16);
        v453 = *(v318 + 16);
        v321 = v453 + v320;
        if (__OFADD__(v453, v320))
        {
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
          goto LABEL_148;
        }

        v322 = *(v317 + 8 * v316);

        v323 = swift_isUniquelyReferenced_nonNull_native();
        if (!v323 || v321 > *(v318 + 24) >> 1)
        {
          if (v453 <= v321)
          {
            v324 = v453 + v320;
          }

          else
          {
            v324 = v453;
          }

          sub_22BE67B50(v323, v324, 1, v318);
          v318 = v325;
        }

        v453 = v542;
        if (!*(v319 + 16))
        {

          if (!v320)
          {
            goto LABEL_47;
          }

          goto LABEL_146;
        }

        if ((*(v318 + 24) >> 1) - *(v318 + 16) < v320)
        {
LABEL_148:
          __break(1u);
          goto LABEL_149;
        }

        v326 = (*(v544 + 80) + 32) & ~*(v544 + 80);
        v327 = *(v544 + 72);
        swift_arrayInitWithCopy();

        if (!v320)
        {
LABEL_47:
          ++v316;
          continue;
        }

        break;
      }

      v328 = *(v318 + 16);
      v329 = __OFADD__(v328, v320);
      v330 = v328 + v320;
      if (!v329)
      {
        *(v318 + 16) = v330;
        goto LABEL_47;
      }

LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
LABEL_152:
      __break(1u);
LABEL_153:
      sub_22BE66BFC(0, *(v455 + 16) + 1, 1, v455);
      v455 = v506;
LABEL_116:
      v458 = *(v455 + 16);
      v457 = *(v455 + 24);
      if (v458 >= v457 >> 1)
      {
        sub_22BE66BFC(v457 > 1, v458 + 1, 1, v455);
        v455 = v507;
      }

      *(v455 + 16) = v458 + 1;
      sub_22BE25AD8();
      (v221)(v455 + v459 + *(v460 + 72) * v458, v453, v251);
LABEL_119:
      sub_22C171FFC();
      swift_setDeallocating();
      sub_22BEDDA70();
LABEL_107:
      sub_22BE1AABC();
      return;
    case 13:
      v340 = sub_22BE19EBC();
      v341 = v533;
      sub_22C171FA8(v340, v533);
      v251 = *(v341 + *(v532 + 24));
      v343 = *(v251 + 56);
      v342 = v251 + 56;
      v344 = *(v251 + 32);
      sub_22BE185B4();
      v455 = v346 & v345;
      v528 = (v347 + 63) >> 6;
      v537 = v549 + 32;
      v538 = (v549 + 16);

      v348 = MEMORY[0x277D84F90];
      v349 = 0;
      v453 = MEMORY[0x277D84F90];
      v221 = v541;
      v530 = v251;
      v529 = v251 + 56;
      while (2)
      {
        if (!v455)
        {
          while (1)
          {
            v350 = v349 + 1;
            if (__OFADD__(v349, 1))
            {
              goto LABEL_147;
            }

            if (v350 >= v528)
            {

              v450 = *(v533 + *(v532 + 20));

              sub_22C120154(v451);

              v551 = v453;
              sub_22BE6E06C();
              goto LABEL_106;
            }

            v455 = *(v342 + 8 * v350);
            ++v349;
            if (v455)
            {
              v349 = v350;
              break;
            }
          }
        }

        DecorationResult = v455;
        v455 = *(*(v251 + 48) + ((v349 << 9) | (8 * __clz(__rbit64(v455)))));
        v351 = *(v455 + 16);
        if (!v351)
        {
          v376 = v348;
LABEL_80:
          v377 = *(v376 + 16);
          v378 = *(v453 + 16);
          v221 = v378 + v377;
          v455 = DecorationResult;
          if (__OFADD__(v378, v377))
          {
            goto LABEL_150;
          }

          v379 = v376;
          v380 = swift_isUniquelyReferenced_nonNull_native();
          if (!v380 || v221 > *(v453 + 24) >> 1)
          {
            if (v378 <= v221)
            {
              v381 = v378 + v377;
            }

            else
            {
              v381 = v378;
            }

            sub_22BE66BFC(v380, v381, 1, v453);
            v453 = v382;
          }

          v221 = v541;
          v455 &= v455 - 1;
          if (!*(v379 + 16))
          {

            v348 = MEMORY[0x277D84F90];
            if (v377)
            {
              __break(1u);
LABEL_94:
              sub_22C18E26C();
              sub_22BE37B14(&v538);
              sub_22C171FA8(v387, v388);
              sub_22BE5CE4C(&qword_27D9077A0, &qword_22C2757D8);
              v389 = sub_22BE1B7DC();
              *(v389 + 16) = xmmword_22C275160;
              v390 = *(v518 + 24);
              v391 = sub_22BE409B4(v389);
              v392(v391);
              goto LABEL_106;
            }

            continue;
          }

          if ((*(v453 + 24) >> 1) - *(v453 + 16) < v377)
          {
            goto LABEL_151;
          }

          v383 = (*(v549 + 80) + 32) & ~*(v549 + 80);
          v384 = *(v549 + 72);
          swift_arrayInitWithCopy();

          v348 = MEMORY[0x277D84F90];
          if (v377)
          {
            v385 = *(v453 + 16);
            v329 = __OFADD__(v385, v377);
            v386 = v385 + v377;
            if (!v329)
            {
              *(v453 + 16) = v386;
              continue;
            }

            goto LABEL_152;
          }

          continue;
        }

        break;
      }

      v531 = v349;
      v534 = v453;
      v551 = v348;
      swift_bridgeObjectRetain_n();
      sub_22C18E984();
      sub_22BE71084();
      v546 = v551;
      v354 = sub_22C17850C(v455);
      v355 = 0;
      v356 = v455 + 64;
      v536 = v455 + 72;
      v539 = v351;
      v540 = v455 + 64;
      while (1)
      {
        v357 = v549;
        if (v354 < 0 || v354 >= 1 << *(v455 + 32))
        {
          break;
        }

        v453 = v354 >> 6;
        v251 = 1 << v354;
        if ((*(v356 + 8 * (v354 >> 6)) & (1 << v354)) == 0)
        {
          goto LABEL_139;
        }

        if (*(v455 + 36) != v352)
        {
          goto LABEL_140;
        }

        LODWORD(v542) = v353;
        v543 = v352;
        v358 = *(v455 + 56);
        v359 = v545;
        v360 = *(v544 + 72);
        sub_22BE2BD28();
        sub_22BE1A964(v361, v359);
        v362 = v548;
        (*v538)(v221, v359 + *(v547 + 28), v548);
        sub_22BE35DA8();
        sub_22C171FFC();
        v363 = v546;
        v551 = v546;
        v364 = v221;
        v221 = *(v546 + 16);
        v365 = *(v546 + 24);
        if (v221 >= v365 >> 1)
        {
          sub_22BE237B4(v365);
          sub_22BE71084();
          v357 = v549;
          v363 = v551;
        }

        *(v363 + 16) = v221 + 1;
        sub_22C18E768();
        v546 = v366;
        (*(v357 + 32))(v366 + v367 + *(v357 + 72) * v221, v364, v362);
        v368 = 1 << *(v455 + 32);
        if (v354 >= v368)
        {
          goto LABEL_141;
        }

        v221 = v364;
        v356 = v540;
        v369 = *(v540 + 8 * v453);
        if ((v369 & v251) == 0)
        {
          goto LABEL_142;
        }

        if (*(v455 + 36) != v543)
        {
          goto LABEL_143;
        }

        v370 = v369 & (-2 << (v354 & 0x3F));
        if (v370)
        {
          v368 = __clz(__rbit64(v370)) | v354 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v371 = v453 << 6;
          v372 = v453 + 1;
          v373 = (v536 + 8 * v453);
          while (v372 < (v368 + 63) >> 6)
          {
            v375 = *v373++;
            v374 = v375;
            v371 += 64;
            ++v372;
            if (v375)
            {
              sub_22BE2FC64(v354, v543, v542 & 1);
              v368 = __clz(__rbit64(v374)) + v371;
              goto LABEL_75;
            }
          }

          sub_22BE2FC64(v354, v543, v542 & 1);
LABEL_75:
          v221 = v541;
        }

        if (++v355 == v539)
        {
          swift_bridgeObjectRelease_n();
          v251 = v530;
          v342 = v529;
          v453 = v534;
          v349 = v531;
          v376 = v546;
          goto LABEL_80;
        }

        v353 = 0;
        v352 = *(v455 + 36);
        v354 = v368;
      }

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
      goto LABEL_144;
    case 15:
    case 31:
    case 37:
    case 42:
    case 43:
      goto LABEL_107;
    case 17:
      v229 = *v20;
      v228 = v20[1];
      v551 = v229;

      sub_22BE6E6CC();

      v230 = v551;
      v231 = *(v551 + 16);
      if (v231)
      {
        v551 = v221;
        sub_22C18E984();
        sub_22BE71084();
        v232 = v551;
        sub_22BE25AD8();
        v234 = v230 + v233;
        v236 = *(v235 + 72);
        v546 = v230;
        v547 = v236;
        v237 = v548;
        v238 = (v549 + 16);
        v239 = v513;
        do
        {
          sub_22BE1A964(v234, v543);
          v240 = *v238;
          v241 = sub_22BE37490();
          v242(v241);
          sub_22BE3CD28();
          sub_22C171FFC();
          v551 = v232;
          v243 = *(v232 + 16);
          if (v243 >= *(v232 + 24) >> 1)
          {
            sub_22BE71084();
            v232 = v551;
          }

          *(v232 + 16) = v243 + 1;
          sub_22C18E768();
          v245 = sub_22C18FF68(v244);
          v246(v245, v239, v237);
          v234 += v547;
          --v231;
        }

        while (v231);
      }

      goto LABEL_122;
    case 20:
      sub_22BE236D4(&a18);
      v268 = *(v267 + 32);
      v269 = sub_22BE18944();
      v270(v269);
      v271 = sub_22C26F734();
      v272 = *(v271 + 16);
      if (v272)
      {
        v551 = v221;
        sub_22C18E984();
        sub_22BE71084();
        v273 = v551;
        v274 = *(v540 + 16);
        v275 = *(v540 + 80);
        sub_22BE19E14();
        v545 = v271;
        v277 = v271 + v276;
        v546 = *(v278 + 56);
        v547 = v279;
        v540 = v278;
        v280 = (v278 - 8);
        do
        {
          v281 = sub_22BE29454();
          (v547)(v281);
          sub_22C270094();
          v282 = *v280;
          v283 = sub_22BE3AF28();
          v284(v283);
          v551 = v273;
          v286 = *(v273 + 16);
          v285 = *(v273 + 24);
          if (v286 >= v285 >> 1)
          {
            sub_22BE237B4(v285);
            sub_22BE71084();
            v273 = v551;
          }

          *(v273 + 16) = v286 + 1;
          sub_22BE25AD8();
          (*(v288 + 32))(v273 + v287 + *(v288 + 72) * v286, v25);
          v277 += v546;
          --v272;
        }

        while (v272);
        sub_22BE1B5D4(&a18);
        v452(v529, v531);
LABEL_122:
      }

      else
      {

        v461 = *(v23 + 8);
        v462 = sub_22BE18944();
        v463(v462);
      }

      goto LABEL_107;
    case 21:
      goto LABEL_94;
    case 25:
      sub_22BE36CE8();
      sub_22BE37B14(&v549);
      sub_22C171FA8(v254, v255);
      sub_22BE5CE4C(&qword_27D9077A0, &qword_22C2757D8);
      *(sub_22BE1B7DC() + 16) = xmmword_22C275160;
      sub_22BE2ED7C(&v550);
      v257 = sub_22BE409B4(v256);
      v258(v257);
      goto LABEL_106;
    case 26:
      sub_22BE41514();
      sub_22BE37B14(&v551);
      sub_22C171FA8(v414, v415);
      sub_22BE5CE4C(&qword_27D9077A0, &qword_22C2757D8);
      v416 = sub_22BE1B7DC();
      *(v416 + 16) = xmmword_22C275160;
      v417 = *(v523 + 28);
      v418 = sub_22BE409B4(v416);
      v419(v418);
      goto LABEL_106;
    case 27:
      sub_22C18E2CC();
      sub_22BE37B14(&a9);
      sub_22C171FA8(v420, v421);
      sub_22BE5CE4C(&qword_27D9077A0, &qword_22C2757D8);
      v422 = sub_22BE1B7DC();
      *(v422 + 16) = xmmword_22C275160;
      v423 = *(v524 + 24);
      v424 = sub_22BE409B4(v422);
      v425(v424);
      goto LABEL_106;
    case 28:
      sub_22BE37B38();
      sub_22BE37B14(&v545);
      sub_22C171FA8(v222, v223);
      sub_22BE5CE4C(&qword_27D9077A0, &qword_22C2757D8);
      v224 = sub_22BE1B7DC();
      *(v224 + 16) = xmmword_22C275160;
      v225 = *(v522 + 24);
      v226 = sub_22BE409B4(v224);
      v227(v226);
      goto LABEL_106;
    case 29:
      sub_22BE22B40();
      sub_22BE37B14(&v547);
      sub_22C171FA8(v393, v394);
      sub_22BE5CE4C(&qword_27D9077A0, &qword_22C2757D8);
      *(sub_22BE1B7DC() + 16) = xmmword_22C275160;
      sub_22BE2ED7C(&v548);
      v396 = sub_22BE409B4(v395);
      v397(v396);
      goto LABEL_106;
    case 30:
      sub_22BE3CA54();
      v398 = v20;
      v399 = v536;
      sub_22C171FA8(v398, v536);
      v400 = *(v399 + *(DecorationResult + 24));
      v401 = *(v400 + 16);
      v402 = MEMORY[0x277D84F90];
      if (v401)
      {
        v551 = MEMORY[0x277D84F90];
        sub_22C19009C();
        v402 = v551;
        sub_22BE25AD8();
        v404 = v400 + v403;
        v547 = *(v405 + 72);
        v407 = v548;
        v406 = v549;
        v408 = (v549 + 16);
        do
        {
          v409 = sub_22BE385E4();
          v410 = v539;
          sub_22BE1A964(v409, v539);
          (*v408)(v22, v410, v407);
          sub_22BE291DC();
          sub_22C171FFC();
          v551 = v402;
          v412 = *(v402 + 16);
          v411 = *(v402 + 24);
          if (v412 >= v411 >> 1)
          {
            sub_22BE237B4(v411);
            sub_22BE71084();
            v406 = v549;
            v402 = v551;
          }

          *(v402 + 16) = v412 + 1;
          sub_22C18E768();
          (*(v406 + 32))(v402 + v413 + *(v406 + 72) * v412, v22, v407);
          v404 += v547;
          --v401;
        }

        while (v401);
      }

      else
      {
        v407 = v548;
      }

      v464 = *(v536 + *(DecorationResult + 28));
      v465 = *(v464 + 16);
      v466 = v521;
      if (v465)
      {
        v551 = MEMORY[0x277D84F90];
        sub_22C19009C();
        v467 = v549;
        v468 = v551;
        sub_22BE25AD8();
        v470 = v464 + v469;
        v472 = *(v471 + 72);
        v473 = (v467 + 16);
        v547 = v467 + 32;
        v548 = v472;
        do
        {
          v474 = sub_22BE385E4();
          sub_22BE1A964(v474, v543);
          v475 = *v473;
          v476 = sub_22BF0AFB8();
          v477(v476);
          sub_22BE3CD28();
          sub_22C171FFC();
          v551 = v468;
          v479 = *(v468 + 16);
          v478 = *(v468 + 24);
          if (v479 >= v478 >> 1)
          {
            sub_22BE237B4(v478);
            sub_22BE71084();
            v467 = v549;
            v468 = v551;
          }

          *(v468 + 16) = v479 + 1;
          sub_22C18E768();
          (*(v467 + 32))(v468 + v480 + *(v467 + 72) * v479, v466, v407);
          v470 += v548;
          --v465;
        }

        while (v465);
      }

      v551 = v402;
      sub_22BE6E06C();
      sub_22C18EB98();
      sub_22C171FFC();
      goto LABEL_107;
    case 32:
      sub_22C18E23C();
      sub_22BE37B14(&a14);
      sub_22C171FA8(v426, v427);
      sub_22BE5CE4C(&qword_27D9077A0, &qword_22C2757D8);
      v428 = sub_22BE1B7DC();
      v429 = sub_22BE3C9B8(v428, xmmword_22C275160);
      v430(v429);
      goto LABEL_106;
    case 33:
      sub_22BE1B674();
      sub_22BE37B14(&a11);
      sub_22C171FA8(v431, v432);
      sub_22BE5CE4C(&qword_27D9077A0, &qword_22C2757D8);
      v433 = sub_22BE1B7DC();
      v434 = sub_22BE3C9B8(v433, xmmword_22C275160);
      v435(v434);
      goto LABEL_106;
    case 34:
      sub_22C18E2B4();
      sub_22BE22944(&a12);
      sub_22C171FA8(v336, v337);
      sub_22BE5CE4C(&qword_27D9077A0, &qword_22C2757D8);
      v338 = *(v549 + 72);
      v339 = (*(v549 + 80) + 32) & ~*(v549 + 80);
      *(swift_allocObject() + 16) = xmmword_22C275160;
      ExecutionPreconditionEvaluatorRequest.statementId.getter();
      sub_22C0E9A74();
      goto LABEL_106;
    case 35:
      sub_22C18E2E4();
      v331 = v527;
      sub_22C171FA8(v20, v527);
      sub_22BE2ED7C(&a13);
      sub_22BE19368();
      sub_22BE1A964(v331 + v332, v23);
      sub_22BE36680();
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          sub_22C18DFA8();
          sub_22C171FA8(v23, v508[3]);
          sub_22BE5CE4C(&qword_27D9077A0, &qword_22C2757D8);
          *(sub_22BE1B114() + 16) = xmmword_22C275160;
          sub_22BE2ED7C(&v525);
          v334 = sub_22C18F1F0(v333);
          v335(v334);
          goto LABEL_137;
        case 2u:
          sub_22BE1BB68();
          sub_22C171FA8(v23, v510);
          sub_22BE5CE4C(&qword_27D9077A0, &qword_22C2757D8);
          v498 = sub_22BE1B114();
          *(v498 + 16) = xmmword_22C275160;
          v499 = *(v509 + 24);
          v500 = sub_22C18F1F0(v498);
          v501(v500);
          goto LABEL_137;
        case 3u:
          sub_22C18DFC0();
          sub_22C171FA8(v23, v512);
          sub_22BE5CE4C(&qword_27D9077A0, &qword_22C2757D8);
          v502 = sub_22BE1B114();
          *(v502 + 16) = xmmword_22C275160;
          v503 = *(v511 + 28);
          v504 = sub_22C18F1F0(v502);
          v505(v504);
LABEL_137:
          sub_22C171FFC();
          break;
        default:
          goto LABEL_106;
      }

      goto LABEL_106;
    default:
      sub_22BE1A7E0();
      goto LABEL_106;
  }
}

uint64_t ExecutionPreconditionEvaluatorRequest.statementId.getter()
{
  v0 = sub_22BE1A5E4();
  v1 = type metadata accessor for ClientAction(v0);
  v2 = sub_22BE19448(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BE2379C();
  v5 = type metadata accessor for Action(0);
  v6 = sub_22BE19448(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE38390();
  v9 = type metadata accessor for ExecutionPreconditionEvaluatorRequest.ActionRequest(0);
  v10 = sub_22BE18000(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22BE18DFC();
  sub_22BE3E6BC();
  v13 = sub_22BE2590C();
  sub_22BE1A964(v13, v14);
  sub_22BE29454();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22BE3C3F8();
    v15 = sub_22BE431C0();
    sub_22C171FA8(v15, v16);
    v17 = sub_22C26E684();
    sub_22BE1834C(v17);
    v19 = *(v18 + 16);
    v20 = sub_22BE19454();
    v21(v20);
    sub_22BE268B8();
  }

  else
  {
    sub_22BE23784();
    v22 = sub_22BE232C8();
    sub_22C171FA8(v22, v23);
    v24 = sub_22C26E684();
    sub_22BE1834C(v24);
    v26 = *(v25 + 16);
    v27 = sub_22BE33FD8();
    v28(v27);
    sub_22BE1C3A4();
  }

  return sub_22C171FFC();
}

uint64_t sub_22C1603D4()
{
  v2 = sub_22BE17BC4();
  v4 = *(v3(v2) + 20);
  v5 = *(v1 + v4);

  *(v1 + v4) = v0;
  return result;
}

uint64_t ActionResolverRequest.resolvedParameters.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for ActionResolverRequest(v0) + 20);
  return sub_22BE18504();
}

uint64_t sub_22C16046C()
{
  v1 = sub_22BE2BB48();
  v3 = *(v0 + *(v2(v1) + 24));
}

uint64_t sub_22C1604BC()
{
  v2 = sub_22BE17BC4();
  v4 = *(v3(v2) + 24);
  v5 = *(v1 + v4);

  *(v1 + v4) = v0;
  return result;
}

uint64_t ActionResolverRequest.unresolvedParameterSets.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for ActionResolverRequest(v0) + 24);
  return sub_22BE18504();
}

uint64_t sub_22C160554()
{
  v1 = sub_22BE2BB48();
  v3 = *(v0 + *(v2(v1) + 28));
}

uint64_t sub_22C1605A4()
{
  v2 = sub_22BE17BC4();
  v4 = *(v3(v2) + 28);
  v5 = *(v1 + v4);

  *(v1 + v4) = v0;
  return result;
}

uint64_t ActionResolverRequest.userSpecifiedParameters.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for ActionResolverRequest(v0) + 28);
  return sub_22BE18504();
}

uint64_t ActionResolverRequest.isConfirmed.setter()
{
  v2 = sub_22BE17BC4();
  result = type metadata accessor for ActionResolverRequest(v2);
  *(v1 + *(result + 32)) = v0;
  return result;
}

uint64_t ActionResolverRequest.isConfirmed.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for ActionResolverRequest(v0) + 32);
  return sub_22BE18504();
}

uint64_t ActionResolverRequest.isAuthenticated.setter()
{
  v2 = sub_22BE17BC4();
  result = type metadata accessor for ActionResolverRequest(v2);
  *(v1 + *(result + 36)) = v0;
  return result;
}

uint64_t ActionResolverRequest.isAuthenticated.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for ActionResolverRequest(v0) + 36);
  return sub_22BE18504();
}

uint64_t ActionResolverRequest.tool.getter()
{
  v0 = sub_22BE1A5E4();
  v1 = type metadata accessor for ActionResolverRequest(v0);
  sub_22C18E8AC(*(v1 + 40));
}

void ActionResolverRequest.tool.setter()
{
  sub_22C190048();
  v2 = sub_22C18E9C8(v1);
  v3 = type metadata accessor for ActionResolverRequest(v2);
  sub_22C18EA48(*(v3 + 40));
  v4 = *(v0 + 24);

  sub_22C18F2EC(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  sub_22C190034();
}

uint64_t ActionResolverRequest.tool.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for ActionResolverRequest(v0) + 40);
  return sub_22BE18504();
}

__n128 ActionResolverRequest.init(statementId:tool:resolvedParameters:unresolvedParameterSets:userSpecifiedParameters:isConfirmed:isAuthenticated:)@<Q0>(__n128 *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, char a5@<W5>, char a6@<W6>, uint64_t a7@<X8>)
{
  v25 = *a1;
  v23 = a1[1].n128_u64[1];
  v24 = a1[1].n128_u64[0];
  v22 = a1[2].n128_u8[0];
  v9 = type metadata accessor for ActionResolverRequest(0);
  v10 = sub_22BE341A4(v9);
  type metadata accessor for Candidate(v10);
  sub_22BE5CF7C();
  sub_22C272E84();
  v12 = v9[6];
  v11 = v9[7];
  type metadata accessor for AST.FlatValue(0);
  sub_22C272E84();
  v13 = v9[8];
  v14 = v9[9];
  v15 = sub_22C26E684();
  sub_22BE1834C(v15);
  v17 = *(v16 + 32);
  v18 = sub_22BE36658();
  v19(v18);

  v20 = (a7 + v9[10]);
  result = v25;
  *v20 = v25;
  v20[1].n128_u64[0] = v24;
  v20[1].n128_u64[1] = v23;
  v20[2].n128_u8[0] = v22;
  *(a7 + v7) = a2;
  *(a7 + v12) = a3;
  *(a7 + v11) = a4;
  *(a7 + v13) = a5;
  *(a7 + v14) = a6;
  return result;
}

void ActionResolverRequest.init(statementId:toolId:resolvedParameters:unresolvedParameterSets:userSpecifiedParameters:isConfirmed:isAuthenticated:)()
{
  sub_22C190018();
  v25 = v0;
  v26[0] = v1;
  v23 = v2;
  v24 = v3;
  v21 = v4;
  v22 = v5;
  v20 = v6;
  v8 = v7;
  v10 = v9;
  v11 = type metadata accessor for ActionResolverRequest(0);
  v12 = v11[5];
  type metadata accessor for Candidate(0);
  sub_22BE5CF7C();
  sub_22C272E84();
  v13 = v11[6];
  v14 = v11[7];
  type metadata accessor for AST.FlatValue(0);
  sub_22C272E84();
  v15 = v11[8];
  v16 = v11[9];
  v17 = sub_22C26E684();
  sub_22BE1834C(v17);
  (*(v18 + 32))(v10, v8);

  v19 = v10 + v11[10];
  *v19 = v20;
  *(v19 + 8) = v21;
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  *(v19 + 32) = 0;
  *(v10 + v12) = v22;
  *(v10 + v13) = v23;
  *(v10 + v14) = v24;
  *(v10 + v15) = v25;
  *(v10 + v16) = v26[0];
  sub_22C18FFFC();
}

uint64_t sub_22C160AA0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E656D6574617473 && a2 == 0xEB00000000644974;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x800000022C2D97F0 == a2;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000017 && 0x800000022C2D9810 == a2;
      if (v7 || (sub_22C274014() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000017 && 0x800000022C2DBE50 == a2;
        if (v8 || (sub_22C274014() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7269666E6F437369 && a2 == 0xEB0000000064656DLL;
          if (v9 || (sub_22C274014() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6E65687475417369 && a2 == 0xEF64657461636974;
            if (v10 || (sub_22C274014() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 1819242356 && a2 == 0xE400000000000000)
            {

              return 6;
            }

            else
            {
              v12 = sub_22C274014();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_22C160CEC(char a1)
{
  result = 0x6E656D6574617473;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0xD000000000000017;
      break;
    case 3:
      result = 0xD000000000000017;
      break;
    case 4:
      result = 0x7269666E6F437369;
      break;
    case 5:
      result = 0x6E65687475417369;
      break;
    case 6:
      result = 1819242356;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22C160DDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C160AA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C160E04(uint64_t a1)
{
  v2 = sub_22C17856C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C160E40(uint64_t a1)
{
  v2 = sub_22C17856C();

  return MEMORY[0x2821FE720](a1, v2);
}

void ActionResolverRequest.encode(to:)()
{
  sub_22BE2BB34();
  sub_22C18E9F8();
  v3 = sub_22BE5CE4C(&qword_27D913BE0, &qword_22C2B85D8);
  sub_22BE1BF18(v3);
  v5 = *(v4 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE19E64();
  sub_22BE23094();
  sub_22C17856C();
  sub_22BE25524();
  sub_22C26E684();
  sub_22BE18F44();
  sub_22BE20458(v7);
  sub_22C18F958();
  sub_22BE41644();
  sub_22C273FA4();
  if (!v0)
  {
    v8 = type metadata accessor for ActionResolverRequest(0);
    sub_22C18E864(v8);
    sub_22BE32460(v9);
    sub_22BE486C4();
    sub_22BE5CE4C(&qword_27D907580, &qword_22C2B85E0);
    sub_22C1785C0();
    sub_22BE41644();
    sub_22C273FA4();
    sub_22BE32460(v2[6]);
    sub_22BE39E24();
    sub_22BE5CE4C(&qword_27D913C00, &unk_22C2B85E8);
    sub_22C1787E0(&unk_27D913C08);
    sub_22BE41644();
    sub_22C273FA4();
    sub_22BE32460(v2[7]);
    sub_22BEE9478();
    sub_22BE5CE4C(&qword_27D90A9D0, &qword_22C288BA0);
    sub_22BF06B7C();
    sub_22BE41644();
    sub_22C273FA4();
    v10 = *(v1 + v2[8]);
    sub_22BE1C270();
    sub_22C273F64();
    v11 = *(v1 + v2[9]);
    sub_22BE1C270();
    sub_22C273F64();
    sub_22C18F490(v2[10]);
    sub_22BEB9C9C();
    sub_22C18F35C();

    sub_22C18EBC8();
    sub_22BE1C270();
    sub_22C273FA4();
  }

  v12 = sub_22BE37A10();
  v13(v12);
  sub_22BEE93D4();
}

void ActionResolverRequest.init(from:)()
{
  sub_22BE19130();
  v4 = v3;
  v28 = v5;
  v6 = sub_22C26E684();
  v7 = sub_22BE179D8(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE18DFC();
  v10 = sub_22BE5CE4C(&qword_27D913C10, &qword_22C2B85F8);
  sub_22BE179D8(v10);
  v12 = *(v11 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  v14 = sub_22BE3100C();
  v15 = type metadata accessor for ActionResolverRequest(v14);
  v16 = sub_22C18DFEC(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22BE197B8();
  type metadata accessor for Candidate(0);
  sub_22BE5CF7C();
  sub_22C272E84();
  type metadata accessor for AST.FlatValue(0);
  sub_22C272E84();
  v20 = v4[3];
  v19 = v4[4];
  sub_22BE3C0A8(v4);
  sub_22C17856C();
  sub_22BE23550();
  sub_22C274214();
  if (v1)
  {
    sub_22BE26B64(v4);
  }

  else
  {
    LOBYTE(v29) = 0;
    sub_22BE18F44();
    sub_22BE20458(v21);
    sub_22C18FDF0();
    sub_22C18F464();
    sub_22C273EB4();
    sub_22BE27C14();
    v22 = sub_22BE3CC34();
    v23(v22);
    sub_22BE5CE4C(&qword_27D907580, &qword_22C2B85E0);
    sub_22BE486C4();
    sub_22C1786D0();
    sub_22C18E788();

    *(v0 + v2[5]) = v29;
    sub_22BE5CE4C(&qword_27D913C00, &unk_22C2B85E8);
    sub_22BE39E24();
    sub_22C1787E0(&unk_27D913C28);
    sub_22C18E788();
    *(v0 + v2[6]) = v29;
    sub_22BE5CE4C(&qword_27D90A9D0, &qword_22C288BA0);
    sub_22BEE9478();
    sub_22BF06F1C();
    sub_22C18E788();

    *(v0 + v2[7]) = v29;
    sub_22C18F620(4);
    sub_22C18F464();
    *(v0 + v2[8]) = sub_22C273E74() & 1;
    sub_22C18F620(5);
    sub_22C18F464();
    *(v0 + v2[9]) = sub_22C273E74() & 1;
    sub_22BEB9D44();
    sub_22BE40660();
    sub_22C18F464();
    sub_22C273EB4();
    v24 = sub_22C18F16C();
    v25(v24);
    v26 = v0 + v2[10];
    sub_22C18F234(v29);
    v27 = sub_22BE19EBC();
    sub_22BE1A964(v27, v28);
    sub_22BE26B64(v4);
    sub_22BE26148();
    sub_22C171FFC();
  }

  sub_22BE19650();
  sub_22BE18478();
}

uint64_t ParameterPath.key.setter()
{
  sub_22BE1A8A8();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ParameterPath.collectionIndex.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t ParameterPath.collectionIndex.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

IntelligenceFlowPlannerSupport::ParameterPath __swiftcall ParameterPath.init(key:arrayIndex:)(IntelligenceFlowPlannerSupport::ParameterPath key, Swift::Int_optional arrayIndex)
{
  *v2 = key.key;
  *(v2 + 16) = arrayIndex.value;
  *(v2 + 24) = arrayIndex.is_nil;
  key.collectionIndex = arrayIndex;
  return key;
}

uint64_t static ParameterPath.== infix(_:_:)(uint64_t a1)
{
  v1 = sub_22C18E738(a1);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v1 == *v2 && *(v3 + 8) == *(v2 + 8);
  if (v8 || (sub_22C274014(), result = sub_22C18FA30(), (v10 & 1) != 0))
  {
    if (v5)
    {
      if ((v7 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v4 == v6)
      {
        v11 = v7;
      }

      else
      {
        v11 = 1;
      }

      if (v11)
      {
        return 0;
      }
    }

    return 1;
  }

  return result;
}

uint64_t sub_22C161774(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v3 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x697463656C6C6F63 && a2 == 0xEF7865646E496E6FLL)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C274014();

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

uint64_t sub_22C161844(char a1)
{
  if (a1)
  {
    return 0x697463656C6C6F63;
  }

  else
  {
    return 7955819;
  }
}

uint64_t sub_22C161888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C161774(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C1618B0(uint64_t a1)
{
  v2 = sub_22C178850();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C1618EC(uint64_t a1)
{
  v2 = sub_22C178850();

  return MEMORY[0x2821FE720](a1, v2);
}

void ParameterPath.encode(to:)()
{
  sub_22BE19130();
  v3 = v2;
  v4 = sub_22BE5CE4C(&qword_27D913C30, &qword_22C2B8600);
  sub_22BE1BF18(v4);
  v6 = *(v5 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE19E64();
  v8 = *v0;
  v9 = v0[1];
  v14 = v0[2];
  v15 = *(v0 + 24);
  v10 = v3[3];
  v11 = v3[4];
  sub_22BE31088(v3);
  sub_22C178850();
  sub_22BE23550();
  sub_22C274234();
  sub_22C18E9AC();
  sub_22BE3E79C();
  sub_22BE1BB58();
  sub_22C273F54();
  if (!v1)
  {
    sub_22C18E4E0();
    sub_22BE1BB58();
    sub_22C273F24();
  }

  v12 = sub_22BE25EE4();
  v13(v12);
  sub_22BE35D48();
  sub_22BE18478();
}

uint64_t ParameterPath.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  sub_22C272F44();
  if (v4 == 1)
  {
    return sub_22C274174();
  }

  sub_22C274174();
  return MEMORY[0x2318AC860](v3);
}

uint64_t ParameterPath.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  sub_22BE25DAC();
  sub_22C18FBF8();
  sub_22C274174();
  if (v4 != 1)
  {
    v5 = sub_22BEC03B0();
    MEMORY[0x2318AC860](v5);
  }

  return sub_22C2741A4();
}

void ParameterPath.init(from:)()
{
  sub_22BE19130();
  v4 = v3;
  v6 = v5;
  v7 = sub_22BE5CE4C(&qword_27D913C40, &qword_22C2B8608);
  sub_22BE179D8(v7);
  v9 = *(v8 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE234F4();
  sub_22BE3763C();
  sub_22C178850();
  sub_22BE48270();
  sub_22BE2BC6C();
  sub_22C274214();
  if (v0)
  {
    sub_22BE26B64(v4);
  }

  else
  {
    sub_22C18E4BC();
    sub_22C273E64();
    sub_22C18F4BC();
    sub_22BE2315C();
    v11 = sub_22C273E34();
    v12 = sub_22C18E894();
    v14 = v13;
    v15(v12, v7);
    *v6 = v2;
    *(v6 + 8) = v1;
    *(v6 + 16) = v11;
    *(v6 + 24) = v14 & 1;

    sub_22BE26B64(v4);
  }

  sub_22BE35D48();
  sub_22BE18478();
}

uint64_t sub_22C161CD8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  sub_22C274154();
  sub_22C18FBF8();
  sub_22C274174();
  if (v4 != 1)
  {
    v5 = sub_22BEC03B0();
    MEMORY[0x2318AC860](v5);
  }

  return sub_22C2741A4();
}

uint64_t sub_22C161D7C(uint64_t a1)
{
  v2 = sub_22C1788A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C161DB8(uint64_t a1)
{
  v2 = sub_22C1788A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SafetyModeException.clientQueryId.setter()
{
  sub_22BE1A8A8();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

IntelligenceFlowPlannerSupport::SafetyModeException __swiftcall SafetyModeException.init(clientQueryId:)(Swift::String_optional clientQueryId)
{
  sub_22BE28634();

  *v3 = v2;
  v3[1] = v1;
  result.clientQueryId.value._object = v5;
  result.clientQueryId.value._countAndFlagsBits = v4;
  return result;
}

unint64_t SafetyModeException.description.getter()
{
  v2 = *v0;
  v1 = v0[1];

  sub_22C273AA4();

  sub_22BE25A74();
  if (v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 4271950;
  }

  if (!v1)
  {
    v1 = 0xE300000000000000;
  }

  MEMORY[0x2318AB8D0](v3, v1);

  return 0xD000000000000023;
}

uint64_t sub_22C161F94(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7551746E65696C63 && a2 == 0xED00006449797265)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22C274014();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22C16203C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C161F94(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22C162068(uint64_t a1)
{
  v2 = sub_22C1788F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C1620A4(uint64_t a1)
{
  v2 = sub_22C1788F8();

  return MEMORY[0x2821FE720](a1, v2);
}

void SafetyModeException.encode(to:)()
{
  sub_22BE19130();
  sub_22C18F3A4();
  v0 = sub_22BE5CE4C(&qword_27D913C58, &qword_22C2B8618);
  sub_22BE1A3D8(v0);
  v2 = *(v1 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v3);
  sub_22BE1B01C();
  sub_22BE3AD08();
  sub_22C1788F8();
  sub_22BE3A014();
  sub_22C18E100();
  sub_22C273EF4();
  v4 = sub_22BE35CD8();
  v5(v4);
  sub_22BE22978();
  sub_22BE18478();
}

void SafetyModeException.init(from:)()
{
  sub_22BE19130();
  sub_22C18E778();
  v3 = sub_22BE5CE4C(&qword_27D913C68, &qword_22C2B8620);
  sub_22BE1A3D8(v3);
  v5 = *(v4 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE1B01C();
  sub_22BE3763C();
  sub_22C1788F8();
  sub_22BE18878();
  if (!v1)
  {
    sub_22C18F368();
    v7 = sub_22C273E04();
    v9 = v8;
    v10 = sub_22BE17B24();
    v11(v10);
    *v2 = v7;
    v2[1] = v9;
  }

  sub_22BE26B64(v0);
  sub_22BE46D98();
  sub_22BE18478();
}

uint64_t ContextRetrieved.requiredContext.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t ContextRetrieved.utteranceContext.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

IntelligenceFlowPlannerSupport::ContextRetrieved __swiftcall ContextRetrieved.init(requiredContext:utteranceContext:)(Swift::OpaquePointer requiredContext, Swift::OpaquePointer utteranceContext)
{
  v2->_rawValue = requiredContext._rawValue;
  v2[1]._rawValue = utteranceContext._rawValue;
  result.utteranceContext = utteranceContext;
  result.requiredContext = requiredContext;
  return result;
}

uint64_t ContextRetrieved.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  sub_22C273AA4();
  sub_22C18F8B0();
  sub_22C18F06C();
  MEMORY[0x2318AB8D0]();
  type metadata accessor for RetrievedContextStatement(0);
  v3 = sub_22BE191CC();
  v4 = MEMORY[0x2318ABBB0](v3);
  MEMORY[0x2318AB8D0](v4);

  sub_22C18F06C();
  MEMORY[0x2318AB8D0](0xD000000000000014);
  v5 = sub_22BE260B8();
  MEMORY[0x2318ABBB0](v5);
  sub_22C18FC2C();

  v6 = sub_22C18E830();
  MEMORY[0x2318AB8D0](v6);
  return 0;
}

uint64_t sub_22C16245C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6465726975716572 && a2 == 0xEF747865746E6F43;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000022C2D97D0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C274014();

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

uint64_t sub_22C162534(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x6465726975716572;
  }
}

uint64_t sub_22C162584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C16245C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C1625AC(uint64_t a1)
{
  v2 = sub_22C17894C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C1625E8(uint64_t a1)
{
  v2 = sub_22C17894C();

  return MEMORY[0x2821FE720](a1, v2);
}

void ContextRetrieved.encode(to:)()
{
  sub_22BE19130();
  v2 = v1;
  v3 = sub_22BE5CE4C(&qword_27D913C70, &qword_22C2B8628);
  sub_22BE1BF18(v3);
  v5 = *(v4 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE19E64();
  v7 = *v0;
  v13 = v0[1];
  v8 = v2[3];
  v9 = v2[4];
  sub_22BE3C0A8(v2);
  v10 = sub_22C17894C();

  sub_22BE23550();
  sub_22BE2BC6C();
  sub_22C274234();
  sub_22BE5CE4C(&qword_27D913C80, &qword_22C2B8630);
  sub_22C1789A0();
  sub_22C18E60C();
  sub_22BE1C270();
  sub_22C273FA4();

  if (!v10)
  {
    sub_22C18E60C();
    sub_22BE1C270();
    sub_22C273FA4();
  }

  v11 = sub_22BE47E18();
  v12(v11);
  sub_22BE35D48();
  sub_22BE18478();
}

void ContextRetrieved.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  sub_22C18F140();
  v13 = v12;
  v14 = sub_22BE5CE4C(&qword_27D913C98, &qword_22C2B8638);
  sub_22BE179D8(v14);
  v16 = v15;
  v18 = *(v17 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v19);
  sub_22BE234F4();
  sub_22BE3763C();
  sub_22C17894C();
  sub_22BE33A2C();
  if (v11)
  {
    sub_22BE26B64(v10);
  }

  else
  {
    sub_22BE5CE4C(&qword_27D913C80, &qword_22C2B8630);
    sub_22C178A54();
    sub_22BEE94BC();
    sub_22BE23070();
    sub_22C273EB4();
    sub_22BEE94BC();
    sub_22BE23070();
    sub_22C273EB4();
    v20 = *(v16 + 8);
    v21 = sub_22BE18240();
    v22(v21);
    *v13 = a10;
    v13[1] = a10;

    sub_22C18E8D8();
  }

  sub_22BE19650();
  sub_22BE18478();
}

uint64_t sub_22C1629F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E656D6574617473 && a2 == 0xEB00000000644974;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000022C2D97A0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C274014();

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

uint64_t sub_22C162AC4(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x6E656D6574617473;
  }
}

uint64_t sub_22C162B10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C1629F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C162B38(uint64_t a1)
{
  v2 = sub_22C178B08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C162B74(uint64_t a1)
{
  v2 = sub_22C178B08();

  return MEMORY[0x2821FE720](a1, v2);
}

void RetrievedContextStatement.encode(to:)()
{
  sub_22BE2BB34();
  sub_22BE27A28();
  v1 = sub_22BE5CE4C(&qword_27D913CB0, &qword_22C2B8640);
  sub_22BE1BF18(v1);
  v3 = *(v2 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE25CD0();
  sub_22BE23094();
  sub_22C178B08();
  sub_22BE33B8C();
  sub_22C18E810();
  sub_22C26E684();
  sub_22BE18F44();
  sub_22BE20458(v5);
  sub_22BEE92A4();
  sub_22BE31254();
  sub_22C273FA4();
  if (!v0)
  {
    v6 = *(type metadata accessor for RetrievedContextStatement(0) + 20);
    sub_22BE323A4();
    sub_22C270F24();
    sub_22C18F048();
    sub_22BE20458(v7);
    sub_22C18EA18();
    sub_22BE31254();
    sub_22C273FA4();
  }

  v8 = sub_22BE37508();
  v9(v8);
  sub_22BEE92C0();
  sub_22BEE93D4();
}

void RetrievedContextStatement.init(from:)()
{
  sub_22BE19130();
  sub_22C18E83C(v2);
  v30 = sub_22C270F24();
  v3 = sub_22BE179D8(v30);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE188B0();
  v31 = sub_22C26E684();
  v6 = sub_22BE179D8(v31);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE17A44();
  sub_22BE3668C(v9);
  v32 = sub_22BE5CE4C(&qword_27D913CC0, &qword_22C2B8648);
  sub_22BE179D8(v32);
  v11 = *(v10 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE3100C();
  v14 = type metadata accessor for RetrievedContextStatement(v13);
  v15 = sub_22C18DFEC(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22BE19338();
  v19 = v0[3];
  v18 = v0[4];
  sub_22BE41E84(v0);
  sub_22C178B08();
  sub_22BE23550();
  sub_22C18FB4C();
  if (v1)
  {
    sub_22BE26B64(v0);
  }

  else
  {
    sub_22C18F258();
    sub_22BE18F44();
    sub_22BE20458(v20);
    sub_22BEE92A4();
    sub_22BE2ED88();
    v21 = sub_22C18E6E0();
    v22(v21);
    sub_22BE33FE4();
    sub_22C18F048();
    sub_22BE20458(v23);
    sub_22C18E624();
    v24 = sub_22BE186C0();
    v25(v24);
    v26 = sub_22C18E5CC();
    v27(v26);
    v28 = sub_22BE431F0();
    sub_22BE1A964(v28, v29);
    sub_22BE26B64(v0);
    sub_22BE3CD28();
    sub_22C171FFC();
  }

  sub_22BE1AB28();
  sub_22BE18478();
}

uint64_t sub_22C16305C()
{
  sub_22C18FF14();
  sub_22BE3E308();
  v4 = sub_22C26E684();
  sub_22BE1834C(v4);
  v6 = *(v5 + 32);
  v7 = sub_22BE1B328();
  v8(v7);
  v9 = (v1)(0);
  v10 = sub_22C18F32C(v9);
  v11 = v0(v10);
  sub_22BE1834C(v11);
  v13 = *(v12 + 32);

  return v13(&v1[v3], v2);
}

uint64_t sub_22C163130(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t))
{
  sub_22BE18378();
  if ((_s30IntelligenceFlowPlannerSupport14OpenExpressionV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v5 = a3(0);
  v6 = sub_22BE3E750(v5);

  return a4(v6);
}

uint64_t sub_22C1631B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E656D6574617473 && a2 == 0xEB00000000644974;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000018 && 0x800000022C2D9780 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C274014();

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

uint64_t sub_22C163284(char a1)
{
  if (a1)
  {
    return 0xD000000000000018;
  }

  else
  {
    return 0x6E656D6574617473;
  }
}

uint64_t sub_22C1632D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C1631B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C1632F8(uint64_t a1)
{
  v2 = sub_22C178B5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C163334(uint64_t a1)
{
  v2 = sub_22C178B5C();

  return MEMORY[0x2821FE720](a1, v2);
}

void DynamicEnumerationEntityStatement.encode(to:)()
{
  sub_22BE2BB34();
  sub_22BE27A28();
  v1 = sub_22BE5CE4C(&qword_27D913CD0, &qword_22C2B8650);
  sub_22BE1BF18(v1);
  v3 = *(v2 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE25CD0();
  sub_22BE23094();
  sub_22C178B5C();
  sub_22BE33B8C();
  sub_22C18E810();
  sub_22C26E684();
  sub_22BE18F44();
  sub_22BE20458(v5);
  sub_22BEE92A4();
  sub_22BE31254();
  sub_22C273FA4();
  if (!v0)
  {
    v6 = *(type metadata accessor for DynamicEnumerationEntityStatement(0) + 20);
    sub_22BE323A4();
    sub_22C271904();
    sub_22C18F030();
    sub_22BE20458(v7);
    sub_22C18EA18();
    sub_22BE31254();
    sub_22C273FA4();
  }

  v8 = sub_22BE37508();
  v9(v8);
  sub_22BEE92C0();
  sub_22BEE93D4();
}

void DynamicEnumerationEntityStatement.init(from:)()
{
  sub_22BE19130();
  sub_22C18E83C(v2);
  v30 = sub_22C271904();
  v3 = sub_22BE179D8(v30);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE188B0();
  v31 = sub_22C26E684();
  v6 = sub_22BE179D8(v31);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE17A44();
  sub_22BE3668C(v9);
  v32 = sub_22BE5CE4C(&qword_27D913CE8, &qword_22C2B8658);
  sub_22BE179D8(v32);
  v11 = *(v10 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE3100C();
  v14 = type metadata accessor for DynamicEnumerationEntityStatement(v13);
  v15 = sub_22C18DFEC(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22BE19338();
  v19 = v0[3];
  v18 = v0[4];
  sub_22BE41E84(v0);
  sub_22C178B5C();
  sub_22BE23550();
  sub_22C18FB4C();
  if (v1)
  {
    sub_22BE26B64(v0);
  }

  else
  {
    sub_22C18F258();
    sub_22BE18F44();
    sub_22BE20458(v20);
    sub_22BEE92A4();
    sub_22BE2ED88();
    v21 = sub_22C18E6E0();
    v22(v21);
    sub_22BE33FE4();
    sub_22C18F030();
    sub_22BE20458(v23);
    sub_22C18E624();
    v24 = sub_22BE186C0();
    v25(v24);
    v26 = sub_22C18E5CC();
    v27(v26);
    v28 = sub_22BE431F0();
    sub_22BE1A964(v28, v29);
    sub_22BE26B64(v0);
    sub_22C0E9A74();
    sub_22C171FFC();
  }

  sub_22BE1AB28();
  sub_22BE18478();
}

uint64_t sub_22C163854(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E656D6574617473 && a2 == 0xEB00000000644974;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x797469746E65 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C274014();

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

uint64_t sub_22C16391C(char a1)
{
  if (a1)
  {
    return 0x797469746E65;
  }

  else
  {
    return 0x6E656D6574617473;
  }
}

uint64_t sub_22C163960@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C163854(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C163988(uint64_t a1)
{
  v2 = sub_22C178BD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C1639C4(uint64_t a1)
{
  v2 = sub_22C178BD0();

  return MEMORY[0x2821FE720](a1, v2);
}

void SpanMatchedEntityStatement.encode(to:)()
{
  sub_22BE2BB34();
  sub_22BE27A28();
  v1 = sub_22BE5CE4C(&qword_27D913CF8, &qword_22C2B8660);
  sub_22BE1BF18(v1);
  v3 = *(v2 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE25CD0();
  sub_22BE23094();
  sub_22C178BD0();
  sub_22BE33B8C();
  sub_22C18E810();
  sub_22C26E684();
  sub_22BE18F44();
  sub_22BE20458(v5);
  sub_22BEE92A4();
  sub_22BE31254();
  sub_22C273FA4();
  if (!v0)
  {
    v6 = *(type metadata accessor for SpanMatchedEntityStatement(0) + 20);
    sub_22BE323A4();
    sub_22C270FD4();
    sub_22C18F018();
    sub_22BE20458(v7);
    sub_22C18EA18();
    sub_22BE31254();
    sub_22C273FA4();
  }

  v8 = sub_22BE37508();
  v9(v8);
  sub_22BEE92C0();
  sub_22BEE93D4();
}

void SpanMatchedEntityStatement.init(from:)()
{
  sub_22BE19130();
  sub_22C18E83C(v2);
  v30 = sub_22C270FD4();
  v3 = sub_22BE179D8(v30);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE188B0();
  v31 = sub_22C26E684();
  v6 = sub_22BE179D8(v31);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE17A44();
  sub_22BE3668C(v9);
  v32 = sub_22BE5CE4C(&qword_27D913D08, &qword_22C2B8668);
  sub_22BE179D8(v32);
  v11 = *(v10 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE3100C();
  v14 = type metadata accessor for SpanMatchedEntityStatement(v13);
  v15 = sub_22C18DFEC(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22BE19338();
  v19 = v0[3];
  v18 = v0[4];
  sub_22BE41E84(v0);
  sub_22C178BD0();
  sub_22BE23550();
  sub_22C18FB4C();
  if (v1)
  {
    sub_22BE26B64(v0);
  }

  else
  {
    sub_22C18F258();
    sub_22BE18F44();
    sub_22BE20458(v20);
    sub_22BEE92A4();
    sub_22BE2ED88();
    v21 = sub_22C18E6E0();
    v22(v21);
    sub_22BE33FE4();
    sub_22C18F018();
    sub_22BE20458(v23);
    sub_22C18E624();
    v24 = sub_22BE186C0();
    v25(v24);
    v26 = sub_22C18E5CC();
    v27(v26);
    v28 = sub_22BE431F0();
    sub_22BE1A964(v28, v29);
    sub_22BE26B64(v0);
    sub_22C0E9A74();
    sub_22C171FFC();
  }

  sub_22BE1AB28();
  sub_22BE18478();
}

uint64_t sub_22C163E60(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7365697469746E65 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22C274014();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22C163EF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C163E60(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22C163F20(uint64_t a1)
{
  v2 = sub_22C178C24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C163F5C(uint64_t a1)
{
  v2 = sub_22C178C24();

  return MEMORY[0x2821FE720](a1, v2);
}

void EntitySpanMatchResult.encode(to:)()
{
  sub_22BE19130();
  sub_22C18F710();
  v2 = sub_22BE5CE4C(&qword_27D913D10, &qword_22C2B8670);
  sub_22BE1BF18(v2);
  v4 = *(v3 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE25CD0();
  v6 = *v0;
  v7 = v1[3];
  v8 = v1[4];
  sub_22BE3C0A8(v1);
  sub_22C178C24();
  sub_22C18FC8C();
  sub_22BEC046C();
  sub_22BE2BC6C();
  sub_22C274234();
  sub_22BE5CE4C(&qword_27D913D20, &qword_22C2B8678);
  sub_22C178C78();
  sub_22BE37DD4();
  sub_22BE1A550();
  sub_22C273FA4();
  sub_22C18F4B0();

  v9 = sub_22C18E57C();
  v10(v9);
  sub_22BEE94B0();
  sub_22BE18478();
}

void EntitySpanMatchResult.init(from:)()
{
  sub_22BE19130();
  sub_22C18E778();
  v2 = sub_22BE5CE4C(&qword_27D913D38, &qword_22C2B8680);
  sub_22BE1A3D8(v2);
  v4 = *(v3 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE1B01C();
  sub_22BE3763C();
  sub_22C178C24();
  sub_22BE18878();
  if (!v1)
  {
    sub_22BE5CE4C(&qword_27D913D20, &qword_22C2B8678);
    sub_22C178D2C();
    sub_22BE33B10();
    v6 = sub_22BE17B24();
    v7(v6);
    sub_22C18FD98();
  }

  sub_22BE26B64(v0);
  sub_22BE46D98();
  sub_22BE18478();
}

uint64_t ToolRetrievalResponse.rewrittenQuery.setter()
{
  sub_22BE1A8A8();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t ToolRetrievalResponse.retrievedTools.setter(uint64_t a1)
{
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;
  return result;
}

uint64_t ToolRetrievalResponse.types.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

uint64_t ToolRetrievalResponse.init(originalSubQuery:rewrittenQuery:confidence:retrievedTools:types:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, float a8@<S0>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a8;
  *(a7 + 40) = a5;
  *(a7 + 48) = a6;
  return result;
}

uint64_t sub_22C164344(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x800000022C2D56F0 == a2;
  if (v3 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6574746972776572 && a2 == 0xEE0079726575516ELL;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563;
      if (v7 || (sub_22C274014() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6576656972746572 && a2 == 0xEE00736C6F6F5464;
        if (v8 || (sub_22C274014() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x7365707974 && a2 == 0xE500000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_22C274014();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_22C164500(char a1)
{
  result = 0x6574746972776572;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6E656469666E6F63;
      break;
    case 3:
      result = 0x6576656972746572;
      break;
    case 4:
      result = 0x7365707974;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_22C1645C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C164344(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C1645E8(uint64_t a1)
{
  v2 = sub_22C178DE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C164624(uint64_t a1)
{
  v2 = sub_22C178DE0();

  return MEMORY[0x2821FE720](a1, v2);
}

void ToolRetrievalResponse.encode(to:)()
{
  sub_22BE3F494();
  v5 = v4;
  v6 = sub_22BE5CE4C(&qword_27D913D50, &qword_22C2B8688);
  sub_22BE1A3D8(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  sub_22BE19E64();
  v12 = *v0;
  v13 = v0[1];
  v19 = v0[3];
  v20 = v0[2];
  v14 = *(v0 + 8);
  v17 = v0[6];
  v18 = v0[5];
  v15 = v5[3];
  v16 = v5[4];
  sub_22BE31088(v5);
  sub_22C178DE0();
  sub_22BE23550();
  sub_22C274234();
  sub_22BE3E79C();
  sub_22C273F54();
  if (!v1)
  {
    sub_22BE1C270();
    sub_22C273F54();
    sub_22BE1C270();
    sub_22C273F84();
    sub_22BE5CE4C(&qword_27D913D60, &qword_22C2B8690);
    sub_22C178E34();
    sub_22C18F608();
    sub_22C18E118();
    sub_22C273FA4();
    sub_22BE5CE4C(&qword_27D913D78, &qword_22C2B8698);
    sub_22C178EE8();
    sub_22C18F608();
    sub_22C18E118();
    sub_22C273FA4();
  }

  (*(v8 + 8))(v2, v3);
  sub_22BE35D48();
  sub_22BE3CAD8();
}

void ToolRetrievalResponse.init(from:)()
{
  sub_22BE3F494();
  sub_22C18F140();
  v3 = v2;
  v4 = sub_22BE5CE4C(&qword_27D913D90, &qword_22C2B86A0);
  sub_22BE179D8(v4);
  v6 = *(v5 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE23E58();
  v8 = v0[3];
  v9 = v0[4];
  sub_22C18E560(v0);
  sub_22C178DE0();
  sub_22BE3CCD4();
  sub_22C18FF90();
  sub_22C274214();
  if (v1)
  {
    sub_22BE26B64(v0);
  }

  else
  {
    sub_22BE45D74();
    v10 = sub_22C273E64();
    v20 = v11;
    sub_22BE45D74();
    v12 = sub_22C273E64();
    v19 = v13;
    v18 = v12;
    LOBYTE(v21) = 2;
    sub_22C273E94();
    v15 = v14;
    sub_22BE5CE4C(&qword_27D913D60, &qword_22C2B8690);
    sub_22C178FD4();
    sub_22C18EBD4();
    sub_22C18E7D8();
    sub_22C18F0BC();
    sub_22C273EB4();
    sub_22BE5CE4C(&qword_27D913D78, &qword_22C2B8698);
    sub_22C179088();
    sub_22C18EBD4();
    sub_22C18E7D8();
    sub_22C18F0BC();
    sub_22C273EB4();
    v16 = sub_22C18E22C();
    v17(v16);
    *v3 = v10;
    *(v3 + 8) = v20;
    *(v3 + 16) = v18;
    *(v3 + 24) = v19;
    *(v3 + 32) = v15;
    *(v3 + 40) = v21;
    *(v3 + 48) = v21;

    sub_22C18E8D8();
  }

  sub_22BE19650();
  sub_22BE3CAD8();
}

uint64_t ExternalAgentOutcome.statementOutcome.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for ExternalAgentOutcome(v0) + 20);
  return sub_22BE18504();
}

uint64_t ExternalAgentOutcome.responseText.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for ExternalAgentOutcome(v0) + 24);
  return sub_22BE18504();
}

uint64_t sub_22C164C50(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E656D6574617473 && a2 == 0xEB00000000644974;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x800000022C2DA650 == a2;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x65736E6F70736572 && a2 == 0xEC00000074786554)
    {

      return 2;
    }

    else
    {
      v8 = sub_22C274014();

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

uint64_t sub_22C164D70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C164C50(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C164D98(uint64_t a1)
{
  v2 = sub_22BE48CC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C164DD4(uint64_t a1)
{
  v2 = sub_22BE48CC4();

  return MEMORY[0x2821FE720](a1, v2);
}

void ExternalAgentOutcome.init(from:)()
{
  sub_22BE19130();
  v4 = v3;
  v33 = v5;
  v6 = sub_22C26F894();
  v7 = sub_22BE179D8(v6);
  v36 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE28FD8();
  v11 = sub_22C26E684();
  v12 = sub_22BE179D8(v11);
  v34 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22BE17A44();
  sub_22BE252B8(v16);
  v38 = sub_22BE5CE4C(&qword_27D913DC0, &qword_22C2B86B0);
  sub_22BE179D8(v38);
  v35 = v17;
  v19 = *(v18 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v20);
  v21 = sub_22BE3100C();
  v22 = type metadata accessor for ExternalAgentOutcome(v21);
  v23 = sub_22BE18000(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  sub_22BE197B8();
  v27 = v4[3];
  v26 = v4[4];
  sub_22BE2018C(v4);
  sub_22BE48CC4();
  sub_22BE23550();
  sub_22C274214();
  if (v1)
  {
    sub_22BE26B64(v4);
  }

  else
  {
    sub_22BE18F44();
    sub_22BE20458(v28);
    sub_22BEE92A4();
    sub_22C273EB4();
    (*(v34 + 32))(v0, v37, v11);
    sub_22BE33FE4();
    sub_22BE28CFC();
    sub_22BE20458(v29);
    sub_22C18E9A0();
    sub_22C273EB4();
    v30 = *(v22 + 20);
    v31 = *(v36 + 32);
    sub_22C18FD4C();
    v32();
    sub_22BE5CE4C(&qword_27D908050, &qword_22C278EB0);
    sub_22BE200EC();
    sub_22BE25D60(&qword_28106DBD8);
    sub_22C18EBD4();
    sub_22C273EB4();
    (*(v35 + 8))(v2, v38);
    *(v0 + *(v22 + 24)) = v39;
    sub_22BE1A964(v0, v33);
    sub_22BE26B64(v4);
    sub_22C18EB08();
    sub_22C171FFC();
  }

  sub_22BE19650();
  sub_22BE18478();
}

uint64_t ExternalAgentRequestRewriteMetadata.originalRequest.setter()
{
  sub_22BE1A8A8();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_22C1652D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C616E696769726FLL && a2 == 0xEF74736575716552;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7365746972776572 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C274014();

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

uint64_t sub_22C1653A0(char a1)
{
  if (a1)
  {
    return 0x7365746972776572;
  }

  else
  {
    return 0x6C616E696769726FLL;
  }
}

uint64_t sub_22C1653EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C1652D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C165414(uint64_t a1)
{
  v2 = sub_22C179174();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C165450(uint64_t a1)
{
  v2 = sub_22C179174();

  return MEMORY[0x2821FE720](a1, v2);
}

void ExternalAgentRequestRewriteMetadata.encode(to:)()
{
  sub_22BE19130();
  sub_22C18FEB8();
  v2 = sub_22BE5CE4C(&qword_27D913DC8, &qword_22C2B86B8);
  sub_22BE1BF18(v2);
  v4 = *(v3 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE19E64();
  v6 = *v0;
  v7 = v0[1];
  v11 = v0[2];
  v8 = sub_22C18FE98();
  sub_22BE25318(v8);
  sub_22C179174();
  sub_22BE23550();
  sub_22BEE94BC();
  sub_22C274234();
  sub_22C18E4A8();
  sub_22BE1BB58();
  sub_22C273F54();
  if (!v1)
  {
    sub_22BE33FE4();
    sub_22BE5CE4C(&qword_27D908050, &qword_22C278EB0);
    sub_22C18E158(&qword_28106DBE8);
    sub_22C18F608();
    sub_22BE41644();
    sub_22C273FA4();
  }

  v9 = sub_22BE25EE4();
  v10(v9);
  sub_22BE35D48();
  sub_22BE18478();
}

void ExternalAgentRequestRewriteMetadata.init(from:)()
{
  sub_22BE19130();
  sub_22C18F140();
  v2 = sub_22BE5CE4C(&qword_27D913DD8, &qword_22C2B86C0);
  sub_22BE179D8(v2);
  v4 = *(v3 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE234F4();
  sub_22BE3763C();
  sub_22C179174();
  sub_22BE33A2C();
  if (v1)
  {
    sub_22BE26B64(v0);
  }

  else
  {
    sub_22C18E4BC();
    sub_22C273E64();
    sub_22C18F4BC();
    sub_22BE5CE4C(&qword_27D908050, &qword_22C278EB0);
    sub_22BE33FE4();
    sub_22BE25D60(&qword_28106DBD8);
    sub_22C18E128();
    sub_22BE23070();
    sub_22C273EB4();
    v6 = sub_22BE17B54();
    v7(v6);
    sub_22C18F564();

    sub_22C18E8D8();
  }

  sub_22BE19650();
  sub_22BE18478();
}

uint64_t ToolResolution.statementId.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for ToolResolution(v0) + 20);
  return sub_22BE18504();
}

uint64_t ToolResolution.originProgramStatementId.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for ToolResolution(v0) + 24);
  return sub_22BE18504();
}

uint64_t sub_22C165930(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1819242356 && a2 == 0xE400000000000000;
  if (v3 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E656D6574617473 && a2 == 0xEB00000000644974;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000018 && 0x800000022C2D9270 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_22C274014();

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

uint64_t sub_22C165A4C(char a1)
{
  if (!a1)
  {
    return 1819242356;
  }

  if (a1 == 1)
  {
    return 0x6E656D6574617473;
  }

  return 0xD000000000000018;
}

uint64_t sub_22C165AB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C165930(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C165AD8(uint64_t a1)
{
  v2 = sub_22C1791C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C165B14(uint64_t a1)
{
  v2 = sub_22C1791C8();

  return MEMORY[0x2821FE720](a1, v2);
}

void ToolResolution.encode(to:)()
{
  sub_22BE19130();
  sub_22BE27A28();
  v1 = sub_22BE5CE4C(&qword_27D913DE0, &qword_22C2B86C8);
  sub_22BE1BF18(v1);
  v3 = *(v2 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE25CD0();
  sub_22BE23094();
  sub_22C1791C8();
  sub_22BE33B8C();
  sub_22C18E810();
  sub_22C272224();
  sub_22C18EF70();
  sub_22BE20458(v5);
  sub_22BEE92A4();
  sub_22BE31254();
  sub_22C273FA4();
  if (!v0)
  {
    v6 = type metadata accessor for ToolResolution(0);
    v7 = *(v6 + 20);
    sub_22BE323A4();
    sub_22C26E684();
    sub_22BE18F44();
    sub_22BE20458(v8);
    sub_22BE351E8();
    sub_22BE26108();
    sub_22C273FA4();
    v9 = *(v6 + 24);
    sub_22BE351E8();
    sub_22BE26108();
    sub_22C273FA4();
  }

  v10 = sub_22C18E57C();
  v11(v10);
  sub_22BE467E4();
  sub_22BE18478();
}

void ToolResolution.init(from:)()
{
  sub_22BE19130();
  v37 = sub_22C19011C(v1);
  v2 = sub_22BE179D8(v37);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BE17B98();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v5);
  sub_22BE25A90();
  v6 = sub_22C272224();
  v7 = sub_22BE179D8(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE17A44();
  sub_22BE3668C(v10);
  v38 = sub_22BE5CE4C(&qword_27D913DF0, &qword_22C2B86D0);
  sub_22BE179D8(v38);
  v12 = *(v11 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  sub_22BE234F4();
  v14 = type metadata accessor for ToolResolution(0);
  v15 = sub_22BE29F40(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22BE28FD8();
  v19 = v0[3];
  v18 = v0[4];
  sub_22BE3C0A8(v0);
  sub_22C1791C8();
  sub_22BE48270();
  sub_22C274214();
  if (v39)
  {
    sub_22BE26B64(v0);
  }

  else
  {
    sub_22C18FA60();
    sub_22C18EF70();
    sub_22BE20458(v20);
    sub_22BEE92A4();
    sub_22C18F6D8();
    v21 = sub_22C18FA18();
    v22(v21);
    sub_22BE33FE4();
    sub_22BE18F44();
    sub_22BE20458(v23);
    sub_22C18E9A0();
    sub_22BE33F78(v24, v25, v26, v27, v28);
    v29 = sub_22C18F078();
    v30(v29);
    sub_22BE200EC();
    sub_22C18F650();
    v31 = sub_22BE32C30();
    v32(v31);
    v33 = sub_22BE45FE8();
    v34(v33);
    v35 = sub_22BE385E4();
    sub_22BE1A964(v35, v36);
    sub_22BE26B64(v18);
    sub_22BE379D8();
    sub_22C171FFC();
  }

  sub_22BE46D98();
  sub_22BE18478();
}

uint64_t TypeConversionRequest.target.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TypeConversionRequest(v0) + 20);
  return sub_22BE18504();
}

uint64_t TypeConversionRequest.statementId.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TypeConversionRequest(v0) + 24);
  return sub_22BE18504();
}

uint64_t TypeConversionRequest.init(value:target:statementId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22BE3E864();
  v7 = sub_22C272874();
  sub_22BE1834C(v7);
  v9 = *(v8 + 32);
  v10 = sub_22BE1C2A0();
  v11(v10);
  v12 = type metadata accessor for TypeConversionRequest(0);
  sub_22C18FE44(v12);
  v13 = sub_22C2728A4();
  sub_22BE1834C(v13);
  (*(v14 + 32))(v4 + v5, v3);
  v15 = *(v12 + 24);
  v16 = sub_22C26E684();
  sub_22BE1834C(v16);
  v18 = *(v17 + 32);

  return v18(v4 + v15, a3);
}

uint64_t sub_22C1662AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x746567726174 && a2 == 0xE600000000000000;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6E656D6574617473 && a2 == 0xEB00000000644974)
    {

      return 2;
    }

    else
    {
      v8 = sub_22C274014();

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

uint64_t sub_22C1663B8(char a1)
{
  if (!a1)
  {
    return 0x65756C6176;
  }

  if (a1 == 1)
  {
    return 0x746567726174;
  }

  return 0x6E656D6574617473;
}

uint64_t sub_22C166418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C1662AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C166440(uint64_t a1)
{
  v2 = sub_22C17921C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C16647C(uint64_t a1)
{
  v2 = sub_22C17921C();

  return MEMORY[0x2821FE720](a1, v2);
}

void TypeConversionRequest.encode(to:)()
{
  sub_22BE2BB34();
  sub_22BE27A28();
  v2 = sub_22BE5CE4C(&qword_27D913DF8, &qword_22C2B86D8);
  sub_22BE1BF18(v2);
  v4 = *(v3 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE25CD0();
  sub_22BE23094();
  sub_22C17921C();
  sub_22BE33B8C();
  sub_22C18E810();
  sub_22C272874();
  sub_22BE18720();
  sub_22BE20458(v6);
  sub_22BEE92A4();
  sub_22BE31254();
  sub_22C273FA4();
  if (!v0)
  {
    v7 = type metadata accessor for TypeConversionRequest(0);
    sub_22BE335C0(v7);
    sub_22C2728A4();
    sub_22C18EF34();
    sub_22BE20458(v8);
    sub_22BE31254();
    sub_22C273FA4();
    v9 = *(v1 + 24);
    sub_22BE200EC();
    sub_22C26E684();
    sub_22BE18F44();
    sub_22BE20458(v10);
    sub_22C18EA18();
    sub_22BE31254();
    sub_22C273FA4();
  }

  v11 = sub_22BE37508();
  v12(v11);
  sub_22BEE92C0();
  sub_22BEE93D4();
}

void TypeConversionRequest.init(from:)()
{
  sub_22BE19130();
  sub_22C18F4C8();
  sub_22C18FEC4(v3);
  v37 = sub_22C26E684();
  v4 = sub_22BE179D8(v37);
  v35 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BE17A44();
  v38 = v8;
  sub_22BE183BC();
  v9 = sub_22C2728A4();
  v10 = sub_22BE179D8(v9);
  v40 = v11;
  v41 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22BE19338();
  v14 = sub_22C272874();
  v15 = sub_22BE179D8(v14);
  v39 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22BE17A44();
  sub_22BE3668C(v19);
  v43 = sub_22BE5CE4C(&qword_27D913E08, &qword_22C2B86E0);
  sub_22BE179D8(v43);
  v21 = *(v20 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v22);
  sub_22BE25CD0();
  v23 = type metadata accessor for TypeConversionRequest(0);
  v24 = sub_22BE18000(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  sub_22BE197B8();
  v28 = v2[3];
  v27 = v2[4];
  sub_22BE25318(v2);
  sub_22C17921C();
  sub_22BEC046C();
  sub_22C274214();
  if (v44)
  {
    sub_22BE26B64(v2);
  }

  else
  {
    sub_22BE18720();
    sub_22BE20458(v29);
    sub_22BEE92A4();
    sub_22C273EB4();
    (*(v39 + 32))(v0, v42, v14);
    sub_22BE33FE4();
    sub_22C18EF34();
    sub_22BE20458(v30);
    sub_22C18E9A0();
    sub_22C273EB4();
    (*(v40 + 32))(v0 + *(v23 + 20), v1, v41);
    sub_22BE200EC();
    sub_22BE18F44();
    sub_22BE20458(v31);
    sub_22C18F614();
    sub_22C273EB4();
    v32 = sub_22C18FFF0();
    v33(v32);
    (*(v35 + 32))(v0 + *(v23 + 24), v38, v37);
    v34 = sub_22C1088E8();
    sub_22BE1A964(v34, v36);
    sub_22BE26B64(v2);
    sub_22C0E9848();
    sub_22C171FFC();
  }

  sub_22BE35D48();
  sub_22BE18478();
}

uint64_t TypeConversionResult.statementId.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TypeConversionResult(v0) + 20);
  return sub_22BE18504();
}

uint64_t TypeConversionResult.originStatementId.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TypeConversionResult(v0) + 24);
  return sub_22BE18504();
}

uint64_t sub_22C166CC8()
{
  sub_22C190048();
  v4 = v3;
  v5 = sub_22BE3E308();
  v7 = v6(v5);
  sub_22BE1834C(v7);
  v9 = *(v8 + 32);
  v10 = sub_22BE1B328();
  v11(v10);
  v12 = v4(0);
  sub_22C18FA90(v12);
  v13 = sub_22C26E684();
  sub_22BE18000(v13);
  v25 = v14 + 32;
  v26 = *(v14 + 32);
  v26(v1 + v2, v0, v13);
  v15 = *(v12 + 24);
  sub_22C190034();

  return v19(v16, v17, v18, v19, v20, v21, v22, v23, v25, v26);
}

uint64_t sub_22C166DA8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E656D6574617473 && a2 == 0xEB00000000644974;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000011 && 0x800000022C2D9200 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_22C274014();

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

uint64_t sub_22C166EC0(char a1)
{
  if (!a1)
  {
    return 0x65756C6176;
  }

  if (a1 == 1)
  {
    return 0x6E656D6574617473;
  }

  return 0xD000000000000011;
}

uint64_t sub_22C166F28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C166DA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C166F50(uint64_t a1)
{
  v2 = sub_22C179270();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C166F8C(uint64_t a1)
{
  v2 = sub_22C179270();

  return MEMORY[0x2821FE720](a1, v2);
}

void TypeConversionResult.encode(to:)()
{
  sub_22BE19130();
  sub_22BE27A28();
  v1 = sub_22BE5CE4C(&qword_27D913E10, &qword_22C2B86E8);
  sub_22BE1BF18(v1);
  v3 = *(v2 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE25CD0();
  sub_22BE23094();
  sub_22C179270();
  sub_22BE33B8C();
  sub_22C18E810();
  sub_22C272874();
  sub_22BE18720();
  sub_22BE20458(v5);
  sub_22BEE92A4();
  sub_22BE31254();
  sub_22C273FA4();
  if (!v0)
  {
    v6 = type metadata accessor for TypeConversionResult(0);
    v7 = *(v6 + 20);
    sub_22BE323A4();
    sub_22C26E684();
    sub_22BE18F44();
    sub_22BE20458(v8);
    sub_22BE351E8();
    sub_22BE26108();
    sub_22C273FA4();
    v9 = *(v6 + 24);
    sub_22BE351E8();
    sub_22BE26108();
    sub_22C273FA4();
  }

  v10 = sub_22C18E57C();
  v11(v10);
  sub_22BE467E4();
  sub_22BE18478();
}

void TypeConversionResult.init(from:)()
{
  sub_22BE19130();
  v37 = sub_22C19011C(v1);
  v2 = sub_22BE179D8(v37);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BE17B98();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v5);
  sub_22BE25A90();
  v6 = sub_22C272874();
  v7 = sub_22BE179D8(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE17A44();
  sub_22BE3668C(v10);
  v38 = sub_22BE5CE4C(&qword_27D913E20, &qword_22C2B86F0);
  sub_22BE179D8(v38);
  v12 = *(v11 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  sub_22BE234F4();
  v14 = type metadata accessor for TypeConversionResult(0);
  v15 = sub_22BE29F40(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22BE28FD8();
  v19 = v0[3];
  v18 = v0[4];
  sub_22BE3C0A8(v0);
  sub_22C179270();
  sub_22BE48270();
  sub_22C274214();
  if (v39)
  {
    sub_22BE26B64(v0);
  }

  else
  {
    sub_22C18FA60();
    sub_22BE18720();
    sub_22BE20458(v20);
    sub_22BEE92A4();
    sub_22C18F6D8();
    v21 = sub_22C18FA18();
    v22(v21);
    sub_22BE33FE4();
    sub_22BE18F44();
    sub_22BE20458(v23);
    sub_22C18E9A0();
    sub_22BE33F78(v24, v25, v26, v27, v28);
    v29 = sub_22C18F078();
    v30(v29);
    sub_22BE200EC();
    sub_22C18F650();
    v31 = sub_22BE32C30();
    v32(v31);
    v33 = sub_22BE45FE8();
    v34(v33);
    v35 = sub_22BE385E4();
    sub_22BE1A964(v35, v36);
    sub_22BE26B64(v18);
    sub_22BE379D8();
    sub_22C171FFC();
  }

  sub_22BE46D98();
  sub_22BE18478();
}