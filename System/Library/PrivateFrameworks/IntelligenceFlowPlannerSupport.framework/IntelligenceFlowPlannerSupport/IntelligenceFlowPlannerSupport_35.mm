uint64_t QueryDecorationResult.toolRetrievalResponse.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for QueryDecorationResult(v0) + 20);
  return sub_22BE18504();
}

uint64_t QueryDecorationResult.context.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for QueryDecorationResult(v0) + 28);
  return sub_22BE18504();
}

void QueryDecorationResult.init(spans:requiredContext:utteranceContext:toolRetrievalResponse:dynamicEnumerationEntities:context:)()
{
  sub_22BE3C358();
  sub_22C18F5A8();

  DecorationResult = type metadata accessor for QueryDecorationResult(0);
  v5 = DecorationResult[5];
  sub_22C271A34();
  sub_22BE1A140();
  sub_22BE19DC4(v6, v7, v8, v9);
  *v3 = v2;
  sub_22BE2343C();
  *(v3 + DecorationResult[6]) = v1;
  *(v3 + DecorationResult[7]) = v0;
  sub_22BE267B8();
}

uint64_t sub_22C1676CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736E617073 && a2 == 0xE500000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000015 && 0x800000022C2D58B0 == a2;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD00000000000001ALL && 0x800000022C2D58D0 == a2;
      if (v7 || (sub_22C274014() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x747865746E6F63 && a2 == 0xE700000000000000)
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

unint64_t sub_22C16782C(char a1)
{
  result = 0x736E617073;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000015;
      break;
    case 2:
      result = 0xD00000000000001ALL;
      break;
    case 3:
      result = 0x747865746E6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22C1678C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C1676CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C1678E8(uint64_t a1)
{
  v2 = sub_22C1792C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C167924(uint64_t a1)
{
  v2 = sub_22C1792C4();

  return MEMORY[0x2821FE720](a1, v2);
}

void QueryDecorationResult.encode(to:)()
{
  sub_22BE2BB34();
  sub_22BE22950();
  v3 = sub_22BE5CE4C(&qword_27D913E28, &unk_22C2B86F8);
  sub_22BE1BF18(v3);
  v5 = *(v4 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE19E64();
  sub_22BE23094();
  sub_22C1792C4();
  sub_22BE25524();
  v11 = *v1;
  sub_22BE5CE4C(&qword_27D907878, &qword_22C275A30);
  sub_22C179318();
  sub_22BE37DD4();
  sub_22BE196CC();
  sub_22C273FA4();
  if (!v0)
  {
    DecorationResult = type metadata accessor for QueryDecorationResult(0);
    sub_22C18E1EC(DecorationResult);
    sub_22C271A34();
    sub_22BE33C50();
    sub_22BE20458(v8);
    sub_22C18E994();
    sub_22BE196CC();
    sub_22C273F34();
    v12 = *(v1 + *(v2 + 24));
    sub_22BE5CE4C(&qword_27D913E40, &qword_22C2B8708);
    sub_22C1793CC();
    sub_22BE37DD4();
    sub_22BE196CC();
    sub_22C273FA4();
    v13 = *(v1 + *(v2 + 28));
    sub_22BE5CE4C(&qword_27D913C80, &qword_22C2B8630);
    sub_22C1789A0();
    sub_22BE37DD4();
    sub_22BE196CC();
    sub_22C273FA4();
  }

  v9 = sub_22BE37A10();
  v10(v9);
  sub_22BEE92C0();
  sub_22BEE93D4();
}

void QueryDecorationResult.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  v14 = v13;
  v40 = v15;
  v16 = sub_22BE5CE4C(&qword_27D912018, &unk_22C2B7810);
  sub_22BE19448(v16);
  v18 = *(v17 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v19);
  sub_22BE1B72C();
  v20 = sub_22BE5CE4C(&qword_27D913E58, &qword_22C2B8710);
  v41 = sub_22BE179D8(v20);
  v22 = *(v21 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v23);
  v24 = sub_22BE24FD8();
  DecorationResult = type metadata accessor for QueryDecorationResult(v24);
  v26 = sub_22BE18000(DecorationResult);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  sub_22BE18DFC();
  v42 = v29;
  sub_22C18F32C(v29);
  v30 = sub_22C271A34();
  v31 = v12;
  sub_22BE1A140();
  sub_22BE19DC4(v32, v33, v34, v30);
  v36 = v14[3];
  v35 = v14[4];
  sub_22BE3C0A8(v14);
  sub_22C1792C4();
  sub_22BE3CCD4();
  sub_22C274214();
  if (v11)
  {
    sub_22BE26B64(v14);
    sub_22C18DC5C(v31 + v10, &qword_27D912018);
  }

  else
  {
    sub_22BE5CE4C(&qword_27D907878, &qword_22C275A30);
    sub_22C179480();
    sub_22BE35E60();
    sub_22BE36514();
    sub_22C273EB4();
    *v31 = a10;
    sub_22BF0AF1C();
    sub_22BE33C50();
    sub_22BE20458(v37);
    sub_22BE36514();
    sub_22C273E44();
    sub_22BE2343C();
    sub_22BE5CE4C(&qword_27D913E40, &qword_22C2B8708);
    sub_22C18F8C8();
    sub_22C179534();
    sub_22BE35E60();
    sub_22BE36514();
    sub_22C273EB4();
    *(v31 + *(v42 + 24)) = a10;
    sub_22BE5CE4C(&qword_27D913C80, &qword_22C2B8630);
    sub_22C178A54();
    sub_22BE35E60();
    sub_22BE36514();
    sub_22C273EB4();
    v38 = sub_22BEE9178();
    v39(v38, v41);
    *(v31 + *(v42 + 28)) = a10;
    sub_22BE1A964(v31, v40);
    sub_22BE26B64(v14);
    sub_22C18EB98();
    sub_22C171FFC();
  }

  sub_22BE467E4();
  sub_22BE18478();
}

uint64_t QueryDecorationPrePlannerResult.dataSource.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for QueryDecorationPrePlannerResult(v0) + 20);
  return sub_22BE18504();
}

uint64_t QueryDecorationPrePlannerResult.payload.getter()
{
  v1 = sub_22BE1A5E4();
  DecorationPrePlannerResult = type metadata accessor for QueryDecorationPrePlannerResult(v1);
  sub_22C18F4EC(DecorationPrePlannerResult);
  v4 = *v3;
  LOBYTE(v3) = *(v3 + 8);
  *v0 = v4;
  *(v0 + 8) = v3;
}

uint64_t QueryDecorationPrePlannerResult.payload.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = (v1 + *(type metadata accessor for QueryDecorationPrePlannerResult(0) + 24));
  v5 = *v4;

  *v4 = v2;
  *(v4 + 8) = v3;
  return result;
}

uint64_t QueryDecorationPrePlannerResult.payload.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for QueryDecorationPrePlannerResult(v0) + 24);
  return sub_22BE18504();
}

uint64_t QueryDecorationPrePlannerResult.init(statementId:dataSource:payload:)()
{
  sub_22BE393A8();
  v1 = v0;
  v3 = *v2;
  v4 = *(v2 + 8);
  v5 = sub_22C26E684();
  sub_22BE1834C(v5);
  v7 = *(v6 + 32);
  v8 = sub_22BE1C2A0();
  v9(v8);
  DecorationPrePlannerResult = type metadata accessor for QueryDecorationPrePlannerResult(0);
  result = sub_22C18F734(DecorationPrePlannerResult);
  v12 = v1 + *(result + 24);
  *v12 = v3;
  *(v12 + 8) = v4;
  return result;
}

uint64_t static QueryDecorationPrePlannerResultPayload.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  switch(*(a1 + 8))
  {
    case 1:
      if (v4 != 1)
      {
        goto LABEL_17;
      }

      v12 = *a2;

      sub_22BE96740();
      goto LABEL_16;
    case 2:
      if (v4 != 2)
      {
        goto LABEL_17;
      }

      v10 = *a2;

      sub_22BEA196C();
      goto LABEL_16;
    case 3:
      if (v4 != 3)
      {
        goto LABEL_17;
      }

      v11 = *a2;

      sub_22BE9FCA0();
      goto LABEL_16;
    case 4:
      if (v4 != 4)
      {
        goto LABEL_17;
      }

      v8 = *a2;

      sub_22BE9FB68();
      goto LABEL_16;
    case 5:
      if (v4 != 5)
      {
        goto LABEL_17;
      }

      v13 = *a2;

      sub_22BEA19B4();
LABEL_16:
      v14 = v9;

      result = v14 & 1;
      break;
    default:
      if (*(a2 + 8))
      {
LABEL_17:
        result = 0;
      }

      else
      {
        v5 = sub_22BE19454();

        result = sub_22BE9693C(v5, v6);
      }

      break;
  }

  return result;
}

uint64_t sub_22C168298(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E656D6574617473 && a2 == 0xEB00000000644974;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x72756F5361746164 && a2 == 0xEA00000000006563;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x64616F6C796170 && a2 == 0xE700000000000000)
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

uint64_t sub_22C1683B4(char a1)
{
  if (!a1)
  {
    return 0x6E656D6574617473;
  }

  if (a1 == 1)
  {
    return 0x72756F5361746164;
  }

  return 0x64616F6C796170;
}

uint64_t sub_22C168420@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C168298(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C168448(uint64_t a1)
{
  v2 = sub_22C1795E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C168484(uint64_t a1)
{
  v2 = sub_22C1795E8();

  return MEMORY[0x2821FE720](a1, v2);
}

void QueryDecorationPrePlannerResult.encode(to:)()
{
  sub_22BE2BB34();
  sub_22BE22950();
  v3 = sub_22BE5CE4C(&qword_27D913E78, &qword_22C2B8718);
  sub_22BE1BF18(v3);
  v5 = *(v4 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE19E64();
  sub_22BE23094();
  sub_22C1795E8();
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
    DecorationPrePlannerResult = type metadata accessor for QueryDecorationPrePlannerResult(0);
    sub_22C18E864(DecorationPrePlannerResult);
    sub_22C18F320(v9);
    sub_22BE42570();
    sub_22C273F54();
    v10 = (v1 + *(v2 + 24));
    v13 = *v10;
    v14 = *(v10 + 8);
    sub_22C18F8C8();
    sub_22C17963C();
    sub_22C18F35C();

    sub_22C18E428();
    sub_22C273FA4();
  }

  v11 = sub_22BE37A10();
  v12(v11);
  sub_22BEE92C0();
  sub_22BEE93D4();
}

void QueryDecorationPrePlannerResult.init(from:)()
{
  sub_22BE19130();
  v3 = v2;
  v29 = v4;
  v5 = sub_22C26E684();
  v6 = sub_22BE179D8(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE17A44();
  sub_22BE3668C(v9);
  v31 = sub_22BE5CE4C(&qword_27D913E90, &qword_22C2B8720);
  sub_22BE179D8(v31);
  v11 = *(v10 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE24FD8();
  DecorationPrePlannerResult = type metadata accessor for QueryDecorationPrePlannerResult(v13);
  v15 = sub_22BE18000(DecorationPrePlannerResult);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22BE17CBC();
  v19 = v3[3];
  v18 = v3[4];
  sub_22BE2018C(v3);
  sub_22C1795E8();
  sub_22BE3CCD4();
  sub_22C274214();
  if (v0)
  {
    sub_22BE26B64(v3);
  }

  else
  {
    sub_22BE18F44();
    sub_22BE20458(v20);
    sub_22BEE92A4();
    sub_22C273EB4();
    sub_22BE27C14();
    v21(v1, v30, v5);
    sub_22BE2315C();
    v22 = sub_22C273E64();
    v23 = (v1 + *(DecorationPrePlannerResult + 20));
    *v23 = v22;
    v23[1] = v24;
    sub_22BE200EC();
    sub_22C179690();
    sub_22C273EB4();
    v25 = sub_22C18F060();
    v26(v25, v31);
    v27 = v1 + *(DecorationPrePlannerResult + 24);
    *v27 = v32;
    *(v27 + 8) = v33;
    v28 = sub_22BE431F0();
    sub_22BE1A964(v28, v29);
    sub_22BE26B64(v3);
    sub_22C0E9A74();
    sub_22C171FFC();
  }

  sub_22BE34134();
  sub_22BE18478();
}

uint64_t sub_22C16897C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73676E69727473 && a2 == 0xE700000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C61566465707974 && a2 == 0xEB00000000736575;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x800000022C2D9190 == a2;
      if (v7 || (sub_22C274014() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000016 && 0x800000022C2D91B0 == a2;
        if (v8 || (sub_22C274014() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6576656972746572 && a2 == 0xEE00736C6F6F5464;
          if (v9 || (sub_22C274014() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000010 && 0x800000022C2D91D0 == a2)
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

unint64_t sub_22C168B7C(char a1)
{
  result = 0x73676E69727473;
  switch(a1)
  {
    case 1:
      result = 0x6C61566465707974;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
      result = 0x6576656972746572;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22C168C98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C16897C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C168CC0(uint64_t a1)
{
  v2 = sub_22C1796E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C168CFC(uint64_t a1)
{
  v2 = sub_22C1796E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C168D38(uint64_t a1)
{
  v2 = sub_22C179894();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C168D74(uint64_t a1)
{
  v2 = sub_22C179894();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C168DB0(uint64_t a1)
{
  v2 = sub_22C1798E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C168DEC(uint64_t a1)
{
  v2 = sub_22C1798E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C168E28(uint64_t a1)
{
  v2 = sub_22C179840();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C168E64(uint64_t a1)
{
  v2 = sub_22C179840();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C168EA0(uint64_t a1)
{
  v2 = sub_22C179A44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C168EDC(uint64_t a1)
{
  v2 = sub_22C179A44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C168F18(uint64_t a1)
{
  v2 = sub_22C179738();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C168F54(uint64_t a1)
{
  v2 = sub_22C179738();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C168F90(uint64_t a1)
{
  v2 = sub_22C1799F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C168FCC(uint64_t a1)
{
  v2 = sub_22C1799F0();

  return MEMORY[0x2821FE720](a1, v2);
}

void QueryDecorationPrePlannerResultPayload.encode(to:)()
{
  sub_22BE19130();
  v1 = v0;
  v3 = v2;
  v4 = sub_22BE5CE4C(&qword_27D913EA0, &qword_22C2B8728);
  v55 = sub_22BE179D8(v4);
  v6 = *(v5 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE181D0(v8, v50);
  v9 = sub_22BE5CE4C(&qword_27D913EA8, &qword_22C2B8730);
  v54 = sub_22BE179D8(v9);
  v11 = *(v10 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  sub_22BE2BA30(v13, v51);
  v14 = sub_22BE5CE4C(&qword_27D913EB0, &qword_22C2B8738);
  v53 = sub_22BE179D8(v14);
  v16 = *(v15 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v17);
  sub_22C18E344(v18);
  v19 = sub_22BE5CE4C(&qword_27D913EB8, &qword_22C2B8740);
  sub_22BE179D8(v19);
  v21 = *(v20 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v22);
  sub_22BE1A174();
  sub_22BEC07BC(v23);
  v24 = sub_22BE5CE4C(&qword_27D913EC0, &qword_22C2B8748);
  v52 = sub_22BE179D8(v24);
  v26 = *(v25 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v27);
  sub_22BE23E58();
  v28 = sub_22BE5CE4C(&qword_27D913EC8, &qword_22C2B8750);
  sub_22BE179D8(v28);
  v30 = *(v29 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v31);
  sub_22BE1A8B4();
  v32 = sub_22BE5CE4C(&qword_27D913ED0, &qword_22C2B8758);
  v57 = sub_22BE179D8(v32);
  v34 = *(v33 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v35);
  sub_22BE234F4();
  v56 = *v1;
  v36 = *(v1 + 8);
  v38 = v3[3];
  v37 = v3[4];
  sub_22BE31088(v3);
  sub_22C1796E4();
  sub_22BE48270();
  sub_22C274234();
  switch(v36)
  {
    case 1:
      sub_22BF0AF1C();
      sub_22C1799F0();
      v39 = v57;
      sub_22C18E7F8();
      sub_22C1901BC();
      sub_22C18F62C();
      sub_22BE5CE4C(&qword_27D90B9D8, &qword_22C2904E0);
      sub_22C1767B0();
      sub_22BE37DD4();
      v44 = v52;
      sub_22C18EB68();
      sub_22C273FA4();
      v48 = sub_22BE3408C();
      goto LABEL_9;
    case 2:
      sub_22BE32454();
      sub_22C1798E8();
      sub_22BE1B934();
      sub_22C273EE4();
      sub_22C18F62C();
      sub_22BE5CE4C(&qword_27D913F18, &qword_22C2B8768);
      sub_22C17993C();
      sub_22BE37DD4();
      sub_22C18EB68();
      sub_22C18F71C();
      v45 = sub_22C18E3C8();
      v46(v45);
      v42 = sub_22BE35B0C();
      goto LABEL_11;
    case 3:
      sub_22C179894();
      v39 = v57;
      sub_22C18E7F8();
      sub_22C1901BC();
      sub_22C18F62C();
      sub_22BE5CE4C(&qword_27D907878, &qword_22C275A30);
      sub_22C179318();
      sub_22BE37DD4();
      v44 = v53;
      sub_22C18EB68();
      sub_22C18F71C();
      goto LABEL_8;
    case 4:
      sub_22C179840();
      v39 = v57;
      sub_22C18E7F8();
      sub_22C1901BC();
      sub_22C18F62C();
      sub_22BE5CE4C(&qword_27D913D60, &qword_22C2B8690);
      sub_22C178E34();
      sub_22BE37DD4();
      v44 = v54;
      sub_22C18EB68();
      sub_22C18F71C();
      goto LABEL_8;
    case 5:
      sub_22C179738();
      v39 = v57;
      sub_22C18E7F8();
      sub_22C1901BC();
      sub_22C18F62C();
      sub_22BE5CE4C(&qword_27D913EE8, &qword_22C2B8760);
      sub_22C17978C();
      sub_22BE37DD4();
      v44 = v55;
      sub_22C18EB68();
      sub_22C18F71C();
LABEL_8:
      v48 = sub_22BE28D70();
LABEL_9:
      v49(v48, v44);
      v42 = sub_22BE1B5F8();
      break;
    default:
      sub_22C179A44();
      v39 = v57;
      sub_22C18E7F8();
      sub_22C273EE4();
      sub_22C18F62C();
      sub_22BE5CE4C(&qword_27D908050, &qword_22C278EB0);
      sub_22C18E158(&qword_28106DBE8);
      sub_22BE37DD4();
      sub_22C273FA4();
      v40 = sub_22BEC0304();
      v41(v40, v28);
      v42 = sub_22BE2399C();
      break;
  }

  v47 = v39;
LABEL_11:
  v43(v42, v47);
  sub_22BE22978();
  sub_22BE18478();
}

void QueryDecorationPrePlannerResultPayload.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  sub_22C18F874();
  v90 = v11;
  v91 = sub_22BE5CE4C(&qword_27D913F30, &qword_22C2B8770);
  sub_22BE179D8(v91);
  v13 = *(v12 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  sub_22BE1A174();
  sub_22BE252B8(v15);
  v89 = sub_22BE5CE4C(&qword_27D913F38, &qword_22C2B8778);
  sub_22BE179D8(v89);
  v17 = *(v16 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v18);
  sub_22BE3C048(v19, v83);
  v88 = sub_22BE5CE4C(&qword_27D913F40, &qword_22C2B8780);
  sub_22BE179D8(v88);
  v21 = *(v20 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v22);
  sub_22BE29200(v23);
  v87 = sub_22BE5CE4C(&qword_27D913F48, &qword_22C2B8788);
  sub_22BE179D8(v87);
  v25 = *(v24 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v26);
  sub_22BE34034(v27, v84);
  v86 = sub_22BE5CE4C(&qword_27D913F50, &qword_22C2B8790);
  sub_22BE179D8(v86);
  v29 = *(v28 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v30);
  sub_22BE25CD0();
  v31 = sub_22BE5CE4C(&qword_27D913F58, &qword_22C2B8798);
  sub_22BE179D8(v31);
  v33 = *(v32 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v34);
  sub_22BE1A8B4();
  v35 = sub_22BE5CE4C(&qword_27D913F60, &qword_22C2B87A0);
  sub_22BE179D8(v35);
  v37 = *(v36 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v38);
  sub_22BE234F4();
  v39 = v10[3];
  v40 = v10[4];
  v92 = v10;
  v41 = sub_22BE18944();
  sub_22BE26950(v41, v42);
  sub_22C1796E4();
  sub_22BE48270();
  sub_22C274214();
  if (!v93)
  {
    v43 = sub_22C273ED4();
    sub_22BE7C5C4(v43, 0);
    sub_22C18F644();
    if (!v44)
    {
      sub_22BE32C78();
      if (v47 == v48)
      {
        __break(1u);
        return;
      }

      v85 = *(v46 + v45);
      sub_22BE7C5C0(v45 + 1);
      v50 = v49;
      v52 = v51;
      swift_unknownObjectRelease();
      if (v50 == v52 >> 1)
      {
        v53 = v90;
        switch(v85)
        {
          case 1:
            sub_22BF0AF1C();
            sub_22C1799F0();
            sub_22BE25CA0();
            sub_22C273DE4();
            v65 = sub_22BE5CE4C(&qword_27D90B9D8, &qword_22C2904E0);
            sub_22C176864();
            sub_22C18E5AC();
            v66 = v86;
            sub_22C18E924();
            sub_22C273EB4();
            sub_22C18E954();
            swift_unknownObjectRelease();
            goto LABEL_16;
          case 2:
            sub_22BE32454();
            sub_22C1798E8();
            sub_22BE25CA0();
            sub_22C273DE4();
            v65 = sub_22BE5CE4C(&qword_27D913F18, &qword_22C2B8768);
            sub_22C179B4C();
            sub_22C18E5AC();
            v66 = v87;
            sub_22C18E924();
            sub_22C273EB4();
            sub_22C18E954();
            swift_unknownObjectRelease();
            goto LABEL_16;
          case 3:
            LOBYTE(a10) = 3;
            sub_22C179894();
            sub_22BE25CA0();
            sub_22C273DE4();
            v65 = sub_22BE5CE4C(&qword_27D907878, &qword_22C275A30);
            sub_22C179480();
            sub_22C18E5AC();
            v66 = v88;
            sub_22C18E924();
            sub_22C273EB4();
            sub_22C18E954();
            swift_unknownObjectRelease();
LABEL_16:
            v68 = sub_22BEC0304();
            goto LABEL_17;
          case 4:
            LOBYTE(a10) = 4;
            sub_22C179840();
            sub_22BEC000C();
            sub_22C273DE4();
            v65 = sub_22BE5CE4C(&qword_27D913D60, &qword_22C2B8690);
            sub_22C178FD4();
            sub_22C18E5AC();
            v66 = v89;
            sub_22BE489D4();
            sub_22C273EB4();
            sub_22C18E954();
            swift_unknownObjectRelease();
            v68 = sub_22BE3408C();
LABEL_17:
            v69(v68, v66);
            v74 = *(v65 + 8);
            v75 = sub_22BE27BA4();
            v76(v75);
            goto LABEL_18;
          case 5:
            LOBYTE(a10) = 5;
            sub_22C179738();
            sub_22BE25CA0();
            sub_22C273DE4();
            v67 = sub_22BE5CE4C(&qword_27D913EE8, &qword_22C2B8760);
            sub_22C179A98();
            sub_22C18E5AC();
            sub_22BE489D4();
            sub_22C273EB4();
            sub_22C18E954();
            swift_unknownObjectRelease();
            v77 = sub_22BE2399C();
            v78(v77, v91);
            v79 = *(v67 + 8);
            v80 = sub_22BE27BA4();
            v81(v80);
            v82 = a10;
            v64 = v92;
            v53 = v90;
            goto LABEL_19;
          default:
            LOBYTE(a10) = 0;
            sub_22C179A44();
            sub_22BE25CA0();
            sub_22C273DE4();
            sub_22BE5CE4C(&qword_27D908050, &qword_22C278EB0);
            sub_22BE25D60(&qword_28106DBD8);
            sub_22C18E5AC();
            sub_22C18E924();
            sub_22C273EB4();
            swift_unknownObjectRelease();
            v70 = sub_22BE460B8();
            v71(v70);
            v72 = sub_22BE28D70();
            v73(v72, v35);
LABEL_18:
            v82 = a10;
            v64 = v92;
LABEL_19:
            *v53 = v82;
            *(v53 + 8) = v85;
            break;
        }

        goto LABEL_10;
      }
    }

    sub_22C273B34();
    sub_22BE196B4();
    v55 = v54;
    v56 = *(sub_22BE5CE4C(&qword_27D907968, &qword_22C2768D0) + 48);
    *v55 = &type metadata for QueryDecorationPrePlannerResultPayload;
    sub_22C273DF4();
    sub_22BE1A918();
    v57 = *MEMORY[0x277D84160];
    sub_22BE18994();
    v59 = *(v58 + 104);
    v60 = sub_22BE38608();
    v61(v60);
    swift_willThrow();
    swift_unknownObjectRelease();
    v62 = sub_22BE28D70();
    v63(v62, v35);
  }

  v64 = v92;
LABEL_10:
  sub_22BE26B64(v64);
  sub_22BE18478();
}

uint64_t sub_22C169FB4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 1868852853 && a2 == 0xE400000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1868850546 && a2 == 0xE400000000000000)
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

uint64_t sub_22C16A078(char a1)
{
  if (a1)
  {
    return 1868850546;
  }

  else
  {
    return 1868852853;
  }
}

uint64_t sub_22C16A09C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C169FB4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C16A0C4(uint64_t a1)
{
  v2 = sub_22C179C00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C16A100(uint64_t a1)
{
  v2 = sub_22C179C00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C16A13C(uint64_t a1)
{
  v2 = sub_22C179C54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C16A178(uint64_t a1)
{
  v2 = sub_22C179C54();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C16A1B4(uint64_t a1)
{
  v2 = sub_22C179CA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C16A1F0(uint64_t a1)
{
  v2 = sub_22C179CA8();

  return MEMORY[0x2821FE720](a1, v2);
}

void UndoOperation.encode(to:)()
{
  sub_22BE19130();
  sub_22C18F4C8();
  v2 = sub_22BE5CE4C(&qword_27D913F80, &qword_22C2B87A8);
  sub_22BE179D8(v2);
  v4 = *(v3 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE20168(v6, v28);
  v7 = sub_22BE5CE4C(&qword_27D913F88, &qword_22C2B87B0);
  sub_22BE179D8(v7);
  v9 = *(v8 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE23E58();
  v11 = sub_22BE5CE4C(&qword_27D913F90, &qword_22C2B87B8);
  sub_22BE1A3D8(v11);
  v13 = v12;
  v15 = *(v14 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v16);
  sub_22BE1A8B4();
  v17 = *v0;
  v18 = *(v1 + 24);
  v19 = *(v1 + 32);
  v20 = sub_22BE3CEF4();
  sub_22BE26950(v20, v21);
  sub_22C179C00();
  sub_22BEE939C();
  sub_22C274234();
  v22 = (v13 + 8);
  if (v17)
  {
    sub_22BE486C4();
    sub_22C179C54();
    sub_22BE36090();
    sub_22C273EE4();
    v23 = sub_22BE2399C();
  }

  else
  {
    sub_22C179CA8();
    sub_22BE36090();
    sub_22C273EE4();
    v23 = sub_22BE3408C();
  }

  v24(v23);
  v25 = *v22;
  v26 = sub_22BE38FD8();
  v27(v26);
  sub_22C18FEDC();
  sub_22BE18478();
}

uint64_t UndoOperation.hashValue.getter()
{
  v1 = *v0;
  sub_22BE25DAC();
  v2 = sub_22BEC03B0();
  MEMORY[0x2318AC860](v2);
  return sub_22C2741A4();
}

void UndoOperation.init(from:)()
{
  sub_22BE19130();
  v2 = v1;
  v49 = v3;
  v51 = sub_22BE5CE4C(&qword_27D913FB0, &qword_22C2B87C0);
  sub_22BE179D8(v51);
  v5 = *(v4 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE1B72C();
  v7 = sub_22BE5CE4C(&qword_27D913FB8, &qword_22C2B87C8);
  sub_22BE179D8(v7);
  v9 = *(v8 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE234F4();
  v11 = sub_22BE5CE4C(&qword_27D913FC0, &qword_22C2B87D0);
  sub_22BE179D8(v11);
  v50 = v12;
  v14 = *(v13 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  sub_22BE1B01C();
  v17 = v2[3];
  v16 = v2[4];
  sub_22BE3C0A8(v2);
  sub_22C179C00();
  sub_22BE232E4();
  sub_22C18F8EC();
  sub_22C274214();
  if (!v0)
  {
    v52 = v2;
    sub_22BEC0924();
    v18 = sub_22C273ED4();
    sub_22BE7C5C4(v18, 0);
    if (v20 != v19 >> 1)
    {
      sub_22BE38A18();
      sub_22BE3E9D8();
      if (v27 == v28)
      {
        __break(1u);
        return;
      }

      v29 = *(v26 + v25);
      v30 = sub_22BEC0558(v21, v22, v23, v24, v25);
      sub_22BE7C5C0(v30);
      sub_22C18FFD8();
      v32 = v31;
      swift_unknownObjectRelease();
      if (!(v32 >> 1))
      {
        if (v29)
        {
          sub_22BE486C4();
          sub_22C179C54();
          sub_22C18E6FC();
          sub_22C273DE4();
          v33 = v49;
          v34 = v50;
          swift_unknownObjectRelease();
          v35 = sub_22BE28D70();
          v37 = v51;
        }

        else
        {
          sub_22C179CA8();
          sub_22C18E6FC();
          sub_22C273DE4();
          v33 = v49;
          v34 = v50;
          swift_unknownObjectRelease();
          v35 = sub_22BE28D70();
          v37 = v7;
        }

        v36(v35, v37);
        v46 = *(v34 + 8);
        v47 = sub_22BE25C08();
        v48(v47);
        *v33 = v29;
        sub_22BE26B64(v52);
        goto LABEL_10;
      }
    }

    v38 = sub_22C273B34();
    sub_22BE196B4();
    v40 = v39;
    v41 = *(sub_22BE5CE4C(&qword_27D907968, &qword_22C2768D0) + 48);
    *v40 = &type metadata for UndoOperation;
    sub_22BEC0924();
    sub_22C273DF4();
    sub_22BE1B198();
    v42 = *MEMORY[0x277D84160];
    sub_22BE1BC24(v38);
    (*(v43 + 104))(v40);
    swift_willThrow();
    swift_unknownObjectRelease();
    v44 = sub_22BE39058();
    v45(v44, v11);
    v2 = v52;
  }

  sub_22BE26B64(v2);
LABEL_10:
  sub_22BE19650();
  sub_22BE18478();
}

uint64_t UndoRedoRequest.token.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for UndoRedoRequest(v0) + 20);
  return sub_22BE18504();
}

void UndoRedoRequest.operation.getter()
{
  v0 = sub_22BE1A5E4();
  v1 = type metadata accessor for UndoRedoRequest(v0);
  sub_22C18F688(*(v1 + 24));
}

uint64_t UndoRedoRequest.operation.setter(unsigned __int8 *a1)
{
  v3 = sub_22C18F9E8(a1);
  result = type metadata accessor for UndoRedoRequest(v3);
  *(v2 + *(result + 24)) = v1;
  return result;
}

uint64_t UndoRedoRequest.operation.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for UndoRedoRequest(v0) + 24);
  return sub_22BE18504();
}

uint64_t UndoRedoRequest.statementId.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for UndoRedoRequest(v0) + 28);
  return sub_22BE18504();
}

uint64_t UndoRedoRequest.statementIdForUndo.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for UndoRedoRequest(v0) + 32);
  return sub_22BE18504();
}

void UndoRedoRequest.init(bundleIdentifier:token:operation:statementId:statementIdForUndo:)()
{
  sub_22BE22B9C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = *v6;
  v8 = type metadata accessor for UndoRedoRequest(0);
  v9 = v8[5];
  sub_22C26E1D4();
  sub_22BE1A140();
  sub_22BE19DC4(v10, v11, v12, v13);
  v14 = v8[8];
  v15 = sub_22C26E684();
  sub_22BE1A140();
  sub_22BE19DC4(v16, v17, v18, v15);
  *v5 = v3;
  v5[1] = v1;
  sub_22BE2343C();
  *(v5 + v8[6]) = v7;
  v19 = v8[7];
  sub_22C18FA78();
  v21 = *(v20 + 32);
  v23 = sub_22C18FCA4(v22);
  v24(v23);
  sub_22BE2343C();
  sub_22BE234D8();
}

uint64_t sub_22C16AC2C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x800000022C2D9250 == a2;
  if (v3 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E656B6F74 && a2 == 0xE500000000000000;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6F6974617265706FLL && a2 == 0xE90000000000006ELL;
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

        else if (a1 == 0xD000000000000012 && 0x800000022C2DBE70 == a2)
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

unint64_t sub_22C16ADE0(char a1)
{
  result = 0x6E656B6F74;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6F6974617265706FLL;
      break;
    case 3:
      result = 0x6E656D6574617473;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_22C16AE98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C16AC2C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C16AEC0(uint64_t a1)
{
  v2 = sub_22C179CFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C16AEFC(uint64_t a1)
{
  v2 = sub_22C179CFC();

  return MEMORY[0x2821FE720](a1, v2);
}

void UndoRedoRequest.encode(to:)()
{
  sub_22BE19130();
  sub_22BE22950();
  v3 = sub_22BE5CE4C(&qword_27D913FC8, &qword_22C2B87D8);
  sub_22BE1BF18(v3);
  v5 = *(v4 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE19E64();
  sub_22BE23094();
  sub_22C179CFC();
  sub_22BE25524();
  v7 = *v1;
  v8 = v1[1];
  sub_22C18E9AC();
  sub_22BE36628();
  sub_22C273F54();
  if (!v0)
  {
    v9 = type metadata accessor for UndoRedoRequest(0);
    sub_22BE335C0(v9);
    sub_22C26E1D4();
    sub_22BE18B28();
    sub_22BE20458(v10);
    sub_22C18E994();
    sub_22BE196CC();
    sub_22C273F34();
    v16 = *(v1 + v2[6]);
    sub_22C18EAFC();
    sub_22C0EEEF8();
    sub_22C18E17C();
    sub_22C273FA4();
    v11 = v2[7];
    sub_22BE3418C();
    sub_22C26E684();
    sub_22BE18F44();
    sub_22BE20458(v12);
    sub_22BE3EAFC();
    sub_22C273FA4();
    v13 = v2[8];
    sub_22BE3EAFC();
    sub_22C273F34();
  }

  v14 = sub_22BE47E18();
  v15(v14);
  sub_22BE467E4();
  sub_22BE18478();
}

void UndoRedoRequest.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12)
{
  sub_22BE19130();
  v17 = v16;
  v62 = v18;
  v19 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  sub_22BE19448(v19);
  v21 = *(v20 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v22);
  sub_22BE2BA30(v23, v61);
  v24 = sub_22C26E684();
  v25 = sub_22BE1BF18(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  sub_22BE1955C();
  v28 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE19448(v28);
  v30 = *(v29 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v31);
  sub_22BE1B01C();
  v32 = sub_22BE5CE4C(&qword_27D913FD8, &qword_22C2B87E0);
  sub_22BE179D8(v32);
  v34 = *(v33 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v35);
  sub_22BE1A8B4();
  v36 = type metadata accessor for UndoRedoRequest(0);
  v37 = sub_22BE18000(v36);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  sub_22BE18DFC();
  v41 = *(v40 + 20);
  v42 = sub_22C26E1D4();
  v66 = v41;
  sub_22BE1A140();
  sub_22BE19DC4(v43, v44, v45, v42);
  v64 = v36[8];
  sub_22BE1A140();
  v63 = v12;
  sub_22BE19DC4(v46, v47, v48, v12);
  v50 = *(v17 + 24);
  v49 = *(v17 + 32);
  v51 = sub_22C18F9AC();
  sub_22BE41E84(v51);
  sub_22C179CFC();
  sub_22BEE939C();
  sub_22C274214();
  if (v13)
  {
    sub_22BE26B64(v65);
    sub_22C18DC5C(v14 + v66, &qword_27D9082F0);
    sub_22C18DC5C(v14 + v64, &qword_27D907240);
  }

  else
  {
    sub_22C18EA24();
    *v14 = sub_22C273E64();
    v14[1] = v52;
    sub_22BE33FE4();
    sub_22BE18B28();
    sub_22BE20458(v53);
    sub_22C18E9A0();
    sub_22C273E44();
    sub_22BE2343C();
    sub_22C18EAFC();
    sub_22C0EEFA4();
    sub_22C18E7F8();
    sub_22C273EB4();
    *(v14 + v36[6]) = a12;
    sub_22BE3418C();
    sub_22BE18F44();
    sub_22BE20458(v54);
    sub_22C273EB4();
    v55 = v36[7];
    sub_22C18FFB4();
    v57(v14 + v56, v15, v63);
    sub_22C273E44();
    v58 = sub_22C18F754();
    v59(v58);
    sub_22BE2343C();
    v60 = sub_22BE29370();
    sub_22BE1A964(v60, v62);
    sub_22BE26B64(v65);
    sub_22C0E9830();
    sub_22C171FFC();
  }

  sub_22BE1AB28();
  sub_22BE18478();
}

void ClientUndoRedoRequest.operation.getter()
{
  v0 = sub_22BE1A5E4();
  v1 = type metadata accessor for ClientUndoRedoRequest(v0);
  sub_22C18F688(*(v1 + 20));
}

uint64_t ClientUndoRedoRequest.operation.setter(unsigned __int8 *a1)
{
  v3 = sub_22C18F9E8(a1);
  result = type metadata accessor for ClientUndoRedoRequest(v3);
  *(v2 + *(result + 20)) = v1;
  return result;
}

uint64_t ClientUndoRedoRequest.operation.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for ClientUndoRedoRequest(v0) + 20);
  return sub_22BE18504();
}

uint64_t ClientUndoRedoRequest.statementId.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for ClientUndoRedoRequest(v0) + 24);
  return sub_22BE18504();
}

uint64_t ClientUndoRedoRequest.statementIdForUndo.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for ClientUndoRedoRequest(v0) + 28);
  return sub_22BE18504();
}

void ClientUndoRedoRequest.init(token:operation:statementId:statementIdForUndo:)()
{
  sub_22BE3C358();
  sub_22C18FF14();
  v2 = v1;
  v4 = *v3;
  v5 = type metadata accessor for ClientUndoRedoRequest(0);
  v6 = v5[7];
  v7 = sub_22C26E684();
  sub_22BE1A140();
  sub_22C18F17C(v8, v9, v10, v7);
  v11 = sub_22C26E1D4();
  sub_22BE1834C(v11);
  v13 = *(v12 + 32);
  v14 = sub_22BE1C2A0();
  v15(v14);
  *(v2 + v5[5]) = v4;
  v16 = v5[6];
  sub_22C18FA78();
  (*(v17 + 32))(v2 + v18, v0, v7);
  sub_22BE2343C();
  sub_22BE267B8();
}

uint64_t sub_22C16B91C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E656B6F74 && a2 == 0xE500000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F6974617265706FLL && a2 == 0xE90000000000006ELL;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E656D6574617473 && a2 == 0xEB00000000644974;
      if (v7 || (sub_22C274014() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000012 && 0x800000022C2DBE70 == a2)
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

unint64_t sub_22C16BA84(char a1)
{
  result = 0x6E656B6F74;
  switch(a1)
  {
    case 1:
      result = 0x6F6974617265706FLL;
      break;
    case 2:
      result = 0x6E656D6574617473;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22C16BB1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C16B91C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C16BB44(uint64_t a1)
{
  v2 = sub_22C179D50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C16BB80(uint64_t a1)
{
  v2 = sub_22C179D50();

  return MEMORY[0x2821FE720](a1, v2);
}

void ClientUndoRedoRequest.encode(to:)()
{
  sub_22BE19130();
  sub_22BE22950();
  v2 = sub_22BE5CE4C(&qword_27D913FE0, &qword_22C2B87E8);
  sub_22BE1BF18(v2);
  v4 = *(v3 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE19E64();
  sub_22BE23094();
  sub_22C179D50();
  sub_22BE25524();
  sub_22C18E810();
  sub_22C26E1D4();
  sub_22BE18B28();
  sub_22BE20458(v6);
  sub_22BEE92A4();
  sub_22BE196CC();
  sub_22C273FA4();
  if (!v0)
  {
    v7 = type metadata accessor for ClientUndoRedoRequest(0);
    sub_22C18E70C(v7);
    sub_22C0EEEF8();
    sub_22BE26258();
    sub_22C18E17C();
    sub_22C273FA4();
    v8 = *(v1 + 24);
    sub_22C18EAFC();
    sub_22C26E684();
    sub_22BE18F44();
    sub_22BE20458(v9);
    sub_22BE3EAFC();
    sub_22C273FA4();
    v10 = *(v1 + 28);
    sub_22BE3EAFC();
    sub_22C273F34();
  }

  v11 = sub_22BE47E18();
  v12(v11);
  sub_22BE467E4();
  sub_22BE18478();
}

void ClientUndoRedoRequest.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12)
{
  sub_22BE19130();
  v15 = v14;
  v54 = v16;
  v17 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  sub_22BE19448(v17);
  v19 = *(v18 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v20);
  sub_22BE2BA30(v21, v53);
  v22 = sub_22C26E684();
  v23 = sub_22BE179D8(v22);
  v55 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v23);
  sub_22BE294E0();
  v27 = sub_22C26E1D4();
  v28 = sub_22BE1BF18(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  sub_22BE17A44();
  v56 = sub_22BE5CE4C(&qword_27D913FF0, &qword_22C2B87F0);
  sub_22BE179D8(v56);
  v32 = *(v31 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v33);
  v34 = sub_22BE3100C();
  v35 = type metadata accessor for ClientUndoRedoRequest(v34);
  v36 = sub_22BE18000(v35);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  sub_22BE17A44();
  v57 = *(v39 + 28);
  v58 = v40;
  sub_22BE1A140();
  sub_22BE19DC4(v41, v42, v43, v22);
  v45 = v15[3];
  v44 = v15[4];
  sub_22BE2018C(v15);
  sub_22C179D50();
  sub_22BE23550();
  sub_22C274214();
  if (v12)
  {
    sub_22BE26B64(v15);
    sub_22C18DC5C(v58 + v57, &qword_27D907240);
  }

  else
  {
    sub_22BE18B28();
    sub_22BE20458(v46);
    sub_22BEE92A4();
    sub_22C18F904();
    sub_22C273EB4();
    sub_22C18EB74();
    v47 = sub_22BE260B8();
    v48(v47);
    sub_22BE38948();
    sub_22C0EEFA4();
    sub_22C18FA0C();
    sub_22C273EB4();
    *(v58 + *(v35 + 20)) = a12;
    sub_22C18EAFC();
    sub_22BE18F44();
    sub_22BE20458(v49);
    sub_22C273EB4();
    (*(v55 + 32))(v58 + *(v35 + 24), v13, v22);
    sub_22BE3418C();
    sub_22C273E44();
    v50 = sub_22C18EA08();
    v51(v50);
    sub_22BE2343C();
    v52 = sub_22BE431F0();
    sub_22BE1A964(v52, v54);
    sub_22BE26B64(v15);
    sub_22C0E9A74();
    sub_22C171FFC();
  }

  sub_22BE46D98();
  sub_22BE18478();
}

uint64_t sub_22C16C278(uint64_t a1)
{
  v2 = sub_22C179DA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C16C2B4(uint64_t a1)
{
  v2 = sub_22C179DA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SkipStatement.init(statementId:)()
{
  sub_22C0E9824();
  v0 = sub_22C26E684();
  sub_22BE18000(v0);
  v2 = *(v1 + 32);
  v3 = sub_22BE18944();

  return v4(v3);
}

uint64_t sub_22C16C3A8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E656D6574617473 && a2 == 0xEB00000000644974)
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

uint64_t sub_22C16C424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C16C3A8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22C16C450(uint64_t a1)
{
  v2 = sub_22C179DF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C16C48C(uint64_t a1)
{
  v2 = sub_22C179DF8();

  return MEMORY[0x2821FE720](a1, v2);
}

void SkipStatement.encode(to:)()
{
  sub_22BE2BB34();
  v0 = sub_22BE5CE4C(&qword_27D914008, &qword_22C2B8800);
  sub_22BE179D8(v0);
  v2 = v1;
  v4 = *(v3 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE1B01C();
  sub_22BE23094();
  sub_22C179DF8();
  sub_22BE194D0();
  sub_22C26E684();
  sub_22BE18F44();
  sub_22BE20458(v6);
  sub_22C18FE14();
  sub_22C18F374();
  sub_22C273FA4();
  v7 = *(v2 + 8);
  v8 = sub_22BE25C08();
  v9(v8);
  sub_22BEE93D4();
}

void SkipStatement.init(from:)()
{
  sub_22BE19130();
  sub_22C18F0F4();
  v4 = sub_22C26E684();
  v5 = sub_22BE1A3D8(v4);
  v28 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE17A44();
  v29 = v9;
  v10 = sub_22BE5CE4C(&qword_27D914018, &qword_22C2B8808);
  sub_22BE179D8(v10);
  v12 = *(v11 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  v14 = sub_22BE1AED0();
  v15 = type metadata accessor for SkipStatement(v14);
  v16 = sub_22BE19448(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22BE188B0();
  v19 = v0[3];
  v20 = v0[4];
  v21 = sub_22BE260B8();
  sub_22BE26950(v21, v22);
  sub_22C179DF8();
  sub_22BE489BC();
  sub_22C274214();
  if (!v2)
  {
    sub_22BE18F44();
    sub_22BE20458(v23);
    sub_22BE285D4();
    sub_22C273EB4();
    v24 = sub_22C11FDE0();
    v25(v24, v10);
    (*(v28 + 32))(v3, v29, v1);
    sub_22BE1B674();
    v26 = sub_22BE33BE8();
    sub_22C171FA8(v26, v27);
  }

  sub_22BE26B64(v0);
  sub_22BE1AB28();
  sub_22BE18478();
}

uint64_t ExecutionPreconditionEvaluatorRequest.request.getter()
{
  sub_22BE1B7A4();
  sub_22BE3E6BC();
  return sub_22BE1A964(v0, v1);
}

uint64_t ExecutionPreconditionEvaluatorRequest.parameterStatementIds.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for ExecutionPreconditionEvaluatorRequest(v0) + 20);
  return sub_22BE18504();
}

void ExecutionPreconditionEvaluatorRequest.tool.getter()
{
  sub_22BE3C358();
  v3 = sub_22BE1A5E4();
  v4 = type metadata accessor for ClientAction(v3);
  v5 = sub_22BE18000(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE2379C();
  v8 = type metadata accessor for Action(0);
  v9 = sub_22BE18000(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BE17CBC();
  v12 = type metadata accessor for ExecutionPreconditionEvaluatorRequest.ActionRequest(0);
  v13 = sub_22BE18000(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22BE1955C();
  sub_22BE3E6BC();
  v16 = sub_22BE1B18C();
  sub_22BE1A964(v16, v17);
  sub_22BE1AEE4();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22BE3C3F8();
    v18 = sub_22BE35838();
    sub_22C171FA8(v18, v19);
    v20 = (v1 + *(v4 + 20));
    v22 = *v20;
    v21 = v20[1];

    sub_22BE268B8();
    sub_22C171FFC();
    v23 = 0;
    v24 = 0;
    v25 = 0;
  }

  else
  {
    sub_22BE23784();
    v26 = sub_22BE1B5E0();
    sub_22C171FA8(v26, v27);
    v28 = (v2 + *(v8 + 36));
    v22 = *v28;
    v21 = v28[1];
    v25 = v28[2];
    v24 = v28[3];
    v23 = *(v28 + 32);

    sub_22BE1C3A4();
    sub_22C171FFC();
  }

  *v0 = v22;
  *(v0 + 8) = v21;
  *(v0 + 16) = v25;
  *(v0 + 24) = v24;
  *(v0 + 32) = v23;
  sub_22BE267B8();
}

uint64_t ExecutionPreconditionEvaluatorRequest.init(request:parameterStatementIds:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_22C18EE8C();
  sub_22C171FA8(v4, v5);
  result = type metadata accessor for ExecutionPreconditionEvaluatorRequest(0);
  *(a2 + *(result + 20)) = a1;
  return result;
}

BOOL ExecutionPreconditionEvaluatorRequest.isClientAction.getter()
{
  v0 = type metadata accessor for ExecutionPreconditionEvaluatorRequest.ActionRequest(0);
  v1 = sub_22BE29F40(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22BE38390();
  sub_22BE3E6BC();
  v4 = sub_22BE18040();
  sub_22BE1A964(v4, v5);
  sub_22BE1B5EC();
  v6 = swift_getEnumCaseMultiPayload() == 1;
  sub_22C171FFC();
  return v6;
}

uint64_t ExecutionPreconditionEvaluatorRequest.ActionRequest.description.getter()
{
  v0 = type metadata accessor for ClientAction(0);
  v1 = sub_22BE19448(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22BE2379C();
  v4 = type metadata accessor for Action(0);
  v5 = sub_22BE19448(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE197B8();
  v8 = type metadata accessor for ExecutionPreconditionEvaluatorRequest.ActionRequest(0);
  v9 = sub_22BE18000(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BE17CBC();
  sub_22BE3E6BC();
  v12 = sub_22BE191CC();
  sub_22BE1A964(v12, v13);
  sub_22BE2590C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22BE3C3F8();
    v14 = sub_22BE3C5E4();
    sub_22C171FA8(v14, v15);
    ClientAction.description.getter();
    sub_22BE268B8();
  }

  else
  {
    sub_22BE23784();
    v16 = sub_22BE1AB74();
    sub_22C171FA8(v16, v17);
    Action.description.getter();
    sub_22BE1C3A4();
  }

  sub_22C171FFC();
  return sub_22BE191CC();
}

void static ExecutionPreconditionEvaluatorRequest.ActionRequest.== infix(_:_:)()
{
  sub_22BE19460();
  v5 = v4;
  v6 = sub_22BE39FFC();
  v7 = type metadata accessor for ClientAction(v6);
  v8 = sub_22BE19448(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE2379C();
  v11 = type metadata accessor for Action(0);
  v12 = sub_22BE19448(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22BE38390();
  v15 = type metadata accessor for ExecutionPreconditionEvaluatorRequest.ActionRequest(0);
  v16 = sub_22C18DFEC(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22BE183AC();
  sub_22BE20324();
  MEMORY[0x28223BE20](v19);
  sub_22BE181E4();
  v20 = sub_22BE5CE4C(&qword_27D914020, &qword_22C2B8810);
  sub_22BE19448(v20);
  v22 = *(v21 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v23);
  sub_22BE1B72C();
  v25 = *(v24 + 56);
  sub_22BE1A964(v3, v0);
  sub_22BE1A964(v5, v0 + v25);
  sub_22BE1B62C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22BE3E6BC();
    v26 = sub_22BE260B8();
    sub_22BE1A964(v26, v27);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22BE3C3F8();
      sub_22C171FA8(v0 + v25, v1);
      sub_22BE3C5E4();
      static ClientAction.== infix(_:_:)();
      sub_22C171FFC();
      sub_22BE1C2A0();
LABEL_9:
      sub_22C171FFC();
      sub_22BE26148();
      sub_22C171FFC();
      goto LABEL_10;
    }

    sub_22BE268B8();
  }

  else
  {
    sub_22BE3E6BC();
    v28 = sub_22BE3CC34();
    sub_22BE1A964(v28, v29);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_22BE23784();
      sub_22C171FA8(v0 + v25, v2);
      sub_22BE232C8();
      static Action.== infix(_:_:)();
      sub_22C18EBB0();
      sub_22C171FFC();
      sub_22BE431C0();
      goto LABEL_9;
    }

    sub_22BE1C3A4();
  }

  sub_22C171FFC();
  sub_22C18DC5C(v0, &qword_27D914020);
LABEL_10:
  sub_22BE1AABC();
}

uint64_t sub_22C16CEE0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F69746361 && a2 == 0xE600000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6341746E65696C63 && a2 == 0xEC0000006E6F6974)
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

uint64_t sub_22C16CFA8(char a1)
{
  if (a1)
  {
    return 0x6341746E65696C63;
  }

  else
  {
    return 0x6E6F69746361;
  }
}

uint64_t sub_22C16CFE4(uint64_t a1)
{
  v2 = sub_22C179EF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C16D020(uint64_t a1)
{
  v2 = sub_22C179EF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C16D05C(uint64_t a1)
{
  v2 = sub_22C179EA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C16D098(uint64_t a1)
{
  v2 = sub_22C179EA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C16D0DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C16CEE0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C16D104(uint64_t a1)
{
  v2 = sub_22C179E4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C16D140(uint64_t a1)
{
  v2 = sub_22C179E4C();

  return MEMORY[0x2821FE720](a1, v2);
}

void ExecutionPreconditionEvaluatorRequest.ActionRequest.encode(to:)()
{
  sub_22BE19130();
  sub_22C18F7E4();
  v2 = sub_22BE5CE4C(&qword_27D914028, &qword_22C2B8818);
  sub_22BE179D8(v2);
  v4 = *(v3 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE3C048(v6, v42);
  v44 = type metadata accessor for ClientAction(0);
  v7 = sub_22BE18000(v44);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE17A44();
  v45 = v10;
  v11 = sub_22BE5CE4C(&qword_27D914030, &qword_22C2B8820);
  sub_22BE179D8(v11);
  v13 = *(v12 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  sub_22BE1B72C();
  v43 = type metadata accessor for Action(0);
  v15 = sub_22BE18000(v43);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22BE294E0();
  v18 = type metadata accessor for ExecutionPreconditionEvaluatorRequest.ActionRequest(0);
  v19 = sub_22BE18000(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22BE17CBC();
  v47 = sub_22BE5CE4C(&qword_27D914038, &qword_22C2B8828);
  sub_22BE179D8(v47);
  v23 = v22;
  v25 = *(v24 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v26);
  sub_22BE23E58();
  v28 = *(v0 + 24);
  v27 = *(v0 + 32);
  sub_22BE203C8();
  sub_22C179E4C();
  sub_22BE3CCD4();
  sub_22C274234();
  sub_22BE3E6BC();
  sub_22BE1A964(v46, v1);
  v29 = (v23 + 8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22C171FA8(v1, v45);
    sub_22BE486C4();
    sub_22C179EA0();
    sub_22C18FD18();
    sub_22BE42748();
    sub_22C273EE4();
    sub_22BE3CE44();
    sub_22BE20458(v30);
    sub_22BE35E54();
    sub_22C18F5FC();
    sub_22C273FA4();
    v31 = sub_22BE25EE4();
    v32(v31);
    sub_22BE268B8();
    sub_22C171FFC();
    v33 = *v29;
    v34 = sub_22BE1824C();
  }

  else
  {
    v36 = sub_22BE354DC();
    sub_22C171FA8(v36, v37);
    sub_22C179EF4();
    sub_22BE27168();
    sub_22C273EE4();
    sub_22BE415B0();
    sub_22BE20458(v38);
    sub_22C273FA4();
    sub_22BE1C1F4();
    v39 = sub_22BE37490();
    v40(v39);
    sub_22BE1C3A4();
    sub_22C171FFC();
    v41 = *v29;
    v34 = sub_22BE33BE8();
  }

  v35(v34);
  sub_22BEE94B0();
  sub_22BE18478();
}

void ExecutionPreconditionEvaluatorRequest.ActionRequest.init(from:)()
{
  sub_22BE19130();
  v5 = v4;
  v63 = v6;
  v66 = sub_22BE5CE4C(&qword_27D914058, &qword_22C2B8830);
  sub_22BE179D8(v66);
  v8 = *(v7 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE1A174();
  sub_22BE252B8(v10);
  v11 = sub_22BE5CE4C(&qword_27D914060, &qword_22C2B8838);
  sub_22BE179D8(v11);
  v13 = *(v12 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  sub_22BE3C048(v15, v62);
  v16 = sub_22BE5CE4C(&qword_27D914068, &qword_22C2B8840);
  v17 = sub_22BE179D8(v16);
  v64 = v18;
  v65 = v17;
  v20 = *(v19 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v21);
  sub_22BE25CD0();
  v22 = type metadata accessor for ExecutionPreconditionEvaluatorRequest.ActionRequest(0);
  v23 = sub_22BE18000(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  sub_22BE183AC();
  sub_22BE27A50();
  MEMORY[0x28223BE20](v26);
  sub_22BE23858();
  MEMORY[0x28223BE20](v27);
  sub_22BE26800();
  v28 = v5[3];
  v29 = v5[4];
  sub_22BE2018C(v5);
  sub_22C179E4C();
  sub_22BEC046C();
  sub_22C1901D4();
  if (!v1)
  {
    v67 = v5;
    v30 = sub_22C273ED4();
    sub_22BE7C5C4(v30, 0);
    if (v32 != v31 >> 1)
    {
      sub_22BE32C78();
      if (v35 == v36)
      {
        __break(1u);
        return;
      }

      v68 = *(v34 + v33);
      sub_22BE7C5C0(v33 + 1);
      v38 = v37;
      v40 = v39;
      swift_unknownObjectRelease();
      if (v38 == v40 >> 1)
      {
        if (v68)
        {
          sub_22BE486C4();
          sub_22C179EA0();
          sub_22C18E804();
          sub_22C273DE4();
          v41 = v2;
          type metadata accessor for ClientAction(0);
          sub_22BE3CE44();
          sub_22BE20458(v42);
          sub_22BE40624();
          swift_unknownObjectRelease();
          v53 = sub_22BE460B8();
          v54(v53);
          v55 = *(v64 + 8);
          v56 = sub_22BE1B18C();
          v57(v56);
        }

        else
        {
          sub_22C179EF4();
          sub_22C18E804();
          sub_22C273DE4();
          v41 = v2;
          type metadata accessor for Action(0);
          sub_22BE415B0();
          sub_22BE20458(v52);
          v0 = v3;
          sub_22BE40624();
          swift_unknownObjectRelease();
          v58 = sub_22BE460B8();
          v59(v58);
          v60 = sub_22BE39058();
          v61(v60, v65);
        }

        sub_22C18F4E0();
        swift_storeEnumTagMultiPayload();
        sub_22C171FA8(v0, v41);
        sub_22C171FA8(v41, v63);
        v51 = v67;
        goto LABEL_10;
      }
    }

    v43 = sub_22C273B34();
    sub_22BE196B4();
    v45 = v44;
    v46 = *(sub_22BE5CE4C(&qword_27D907968, &qword_22C2768D0) + 48);
    *v45 = v22;
    sub_22C273DF4();
    sub_22BE1B198();
    v47 = *MEMORY[0x277D84160];
    sub_22BE1BC24(v43);
    (*(v48 + 104))(v45);
    swift_willThrow();
    swift_unknownObjectRelease();
    v49 = sub_22BE39058();
    v50(v49, v65);
    v5 = v67;
  }

  v51 = v5;
LABEL_10:
  sub_22BE26B64(v51);
  sub_22C18F0A4();
  sub_22BE18478();
}

uint64_t sub_22C16DB04(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74736575716572 && a2 == 0xE700000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x800000022C2D9160 == a2)
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

uint64_t sub_22C16DBD4(char a1)
{
  if (a1)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0x74736575716572;
  }
}

uint64_t sub_22C16DC50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C16DB04(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C16DC78(uint64_t a1)
{
  v2 = sub_22C179F48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C16DCB4(uint64_t a1)
{
  v2 = sub_22C179F48();

  return MEMORY[0x2821FE720](a1, v2);
}

void ExecutionPreconditionEvaluatorRequest.encode(to:)()
{
  sub_22BE2BB34();
  sub_22BE22950();
  v1 = sub_22BE5CE4C(&qword_27D914070, &unk_22C2B8848);
  sub_22BE1BF18(v1);
  v3 = *(v2 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE19E64();
  sub_22BE23094();
  sub_22C179F48();
  sub_22BE25524();
  v5 = sub_22C18E810();
  type metadata accessor for ExecutionPreconditionEvaluatorRequest.ActionRequest(v5);
  sub_22C18EE14();
  sub_22BE20458(v6);
  sub_22BEE92A4();
  sub_22BE196CC();
  sub_22C273FA4();
  if (!v0)
  {
    v7 = type metadata accessor for ExecutionPreconditionEvaluatorRequest(0);
    sub_22BE35C64(v7);
    sub_22BE5CE4C(&qword_27D909BF8, &qword_22C2803A0);
    sub_22BEE0214();
    sub_22BE196CC();
    sub_22C273FA4();
  }

  v8 = sub_22BE37A10();
  v9(v8);
  sub_22BEE92C0();
  sub_22BEE93D4();
}

void ExecutionPreconditionEvaluatorRequest.init(from:)()
{
  sub_22BE19130();
  v3 = v2;
  v5 = sub_22C18F934(v4);
  v6 = type metadata accessor for ExecutionPreconditionEvaluatorRequest.ActionRequest(v5);
  v7 = sub_22BE18000(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE17A44();
  v26 = v10;
  v11 = sub_22BE5CE4C(&qword_27D914088, &qword_22C2B8858);
  sub_22BE179D8(v11);
  v13 = *(v12 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  sub_22BE1A8B4();
  v15 = type metadata accessor for ExecutionPreconditionEvaluatorRequest(0);
  v16 = sub_22BE18000(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22BE18DFC();
  v20 = v3[3];
  v19 = v3[4];
  sub_22BE25318(v3);
  sub_22C179F48();
  sub_22BEE939C();
  sub_22C274214();
  if (v0)
  {
    sub_22BE26B64(v3);
  }

  else
  {
    sub_22C18EE14();
    sub_22BE20458(v21);
    sub_22BEE92A4();
    sub_22C273EB4();
    sub_22C18EE8C();
    sub_22C171FA8(v26, v1);
    sub_22BE5CE4C(&qword_27D909BF8, &qword_22C2803A0);
    sub_22BE33FE4();
    sub_22BEE02D0();
    sub_22C18EBD4();
    sub_22C273EB4();
    sub_22C18FDFC();
    v22 = sub_22BE38FD8();
    v23(v22);
    *(v1 + *(v15 + 20)) = v27;
    v24 = sub_22BE385E4();
    sub_22BE1A964(v24, v25);
    sub_22BE26B64(v3);
    sub_22C171FFC();
  }

  sub_22BE467E4();
  sub_22BE18478();
}

uint64_t sub_22C16E120()
{
  v0 = sub_22BE17BC4();
  v2 = v1(v0);
  sub_22BE18000(v2);
  v4 = *(v3 + 40);
  v5 = sub_22BE18944();

  return v6(v5);
}

uint64_t RequestAmendment.content.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for RequestAmendment(v0) + 20);
  return sub_22BE18504();
}

uint64_t RequestAmendment.init(originalRequestId:content:)()
{
  sub_22BE28634();
  v2 = sub_22C26E1D4();
  sub_22BE1834C(v2);
  v4 = *(v3 + 32);
  v5 = sub_22BE1804C();
  v6(v5);
  v7 = *(type metadata accessor for RequestAmendment(0) + 20);
  sub_22BE250EC();
  return sub_22C171FA8(v0, v1 + v8);
}

uint64_t sub_22C16E2A0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x800000022C2D9130 == a2;
  if (v3 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
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

uint64_t sub_22C16E370(char a1)
{
  if (a1)
  {
    return 0x746E65746E6F63;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_22C16E3B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C16E2A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C16E3DC(uint64_t a1)
{
  v2 = sub_22C179F9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C16E418(uint64_t a1)
{
  v2 = sub_22C179F9C();

  return MEMORY[0x2821FE720](a1, v2);
}

void RequestAmendment.encode(to:)()
{
  sub_22BE2BB34();
  sub_22BE27A28();
  v1 = sub_22BE5CE4C(&qword_27D914098, &qword_22C2B8860);
  sub_22BE1BF18(v1);
  v3 = *(v2 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE25CD0();
  sub_22BE23094();
  sub_22C179F9C();
  sub_22BE33B8C();
  sub_22C18E810();
  sub_22C26E1D4();
  sub_22BE18B28();
  sub_22BE20458(v5);
  sub_22BEE92A4();
  sub_22BE31254();
  sub_22C273FA4();
  if (!v0)
  {
    v6 = *(type metadata accessor for RequestAmendment(0) + 20);
    v7 = sub_22BE323A4();
    type metadata accessor for RequestContent(v7);
    sub_22BE35880();
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

void RequestAmendment.init(from:)()
{
  sub_22BE19130();
  v5 = sub_22C18E83C(v4);
  v32 = type metadata accessor for RequestContent(v5);
  v6 = sub_22BE18000(v32);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE19338();
  v34 = sub_22C26E1D4();
  v9 = sub_22BE179D8(v34);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BE17A44();
  sub_22BE3668C(v12);
  v35 = sub_22BE5CE4C(&qword_27D9140A8, &qword_22C2B8868);
  sub_22BE179D8(v35);
  v14 = *(v13 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE3100C();
  v17 = type metadata accessor for RequestAmendment(v16);
  v18 = sub_22BE18000(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22BE1955C();
  v22 = v0[3];
  v21 = v0[4];
  sub_22BE25318(v0);
  sub_22C179F9C();
  sub_22BE23550();
  sub_22C274214();
  if (v3)
  {
    sub_22BE26B64(v0);
  }

  else
  {
    sub_22BE18B28();
    sub_22BE20458(v23);
    sub_22BEE92A4();
    sub_22C273EB4();
    sub_22C18F338();
    v24(v2, v33, v34);
    sub_22BE33FE4();
    sub_22BE35880();
    sub_22BE20458(v25);
    sub_22C18E9A0();
    sub_22C273EB4();
    v26 = sub_22BE186C0();
    v27(v26);
    v28 = *(v17 + 20);
    sub_22BE250EC();
    sub_22C171FA8(v1, v2 + v29);
    v30 = sub_22BE431F0();
    sub_22BE1A964(v30, v31);
    sub_22BE26B64(v0);
    sub_22BE3255C();
    sub_22C171FFC();
  }

  sub_22BE1AB28();
  sub_22BE18478();
}

uint64_t sub_22C16E90C(uint64_t a1)
{
  v2 = sub_22C179FF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C16E948(uint64_t a1)
{
  v2 = sub_22C179FF0();

  return MEMORY[0x2821FE720](a1, v2);
}

void ToolRetrievalRequest.encode(to:)()
{
  sub_22BE19130();
  sub_22C18F3A4();
  v0 = sub_22BE5CE4C(&qword_27D9140B0, &qword_22C2B8870);
  sub_22BE1A3D8(v0);
  v2 = *(v1 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v3);
  sub_22BE1B01C();
  sub_22BE3AD08();
  sub_22C179FF0();
  sub_22BE3A014();
  sub_22C18E100();
  sub_22C273F54();
  v4 = sub_22BE35CD8();
  v5(v4);
  sub_22BE22978();
  sub_22BE18478();
}

uint64_t sub_22C16EAD0(uint64_t a1)
{
  v2 = sub_22C17A044();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C16EB0C(uint64_t a1)
{
  v2 = sub_22C17A044();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SpanMatchRequest.query.setter()
{
  sub_22BE1A8A8();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_22C16EC08()
{
  MEMORY[0x2318AB8D0](*v0, v0[1]);

  sub_22BE48998();

  return 0x203A79726575717BLL;
}

uint64_t sub_22C16EC74(uint64_t a1)
{
  v2 = sub_22C17A098();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C16ECB0(uint64_t a1)
{
  v2 = sub_22C17A098();

  return MEMORY[0x2821FE720](a1, v2);
}

void SpanMatchRequest.encode(to:)()
{
  sub_22BE19130();
  sub_22C18F3A4();
  v0 = sub_22BE5CE4C(&qword_27D9140D8, &qword_22C2B8888);
  sub_22BE1A3D8(v0);
  v2 = *(v1 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v3);
  sub_22BE1B01C();
  sub_22BE3AD08();
  sub_22C17A098();
  sub_22BE3A014();
  sub_22C18E100();
  sub_22C273F54();
  v4 = sub_22BE35CD8();
  v5(v4);
  sub_22BE22978();
  sub_22BE18478();
}

void static AgentPrimitiveAction.PrimitiveAction.== infix(_:_:)()
{
  sub_22BE19460();
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for AgentPassRequest(0);
  v7 = sub_22BE19448(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE17A44();
  v38 = v10;
  v11 = sub_22BE183BC();
  v12 = type metadata accessor for AgentHandoffRequest(v11);
  v13 = sub_22BE18000(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22BE18DFC();
  v16 = type metadata accessor for AgentPrimitiveAction.PrimitiveAction(0);
  v17 = sub_22C18DFEC(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22BE183AC();
  sub_22BE1AF10();
  MEMORY[0x28223BE20](v20);
  v22 = (&v37 - v21);
  v23 = sub_22BE5CE4C(&qword_27D9140F0, &qword_22C2B8898);
  sub_22BE19448(v23);
  v25 = *(v24 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v26);
  sub_22BE1B72C();
  v28 = *(v27 + 56);
  sub_22BE1A964(v5, v0);
  sub_22BE1A964(v3, v0 + v28);
  sub_22BE1B62C();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_22BE3C16C();
    v32 = sub_22BE19454();
    sub_22BE1A964(v32, v33);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_22BE257E4();
LABEL_10:
      sub_22C171FFC();
      goto LABEL_11;
    }

    sub_22C171FA8(v0 + v28, v1);
    v34 = *v22 == *v1 && v22[1] == v1[1];
    if (v34 || (sub_22C274014() & 1) != 0)
    {
      v35 = *(v12 + 20);
      v36 = static AgentRequest.== infix(_:_:)();
      sub_22BE257E4();
      sub_22C171FFC();
      if (v36)
      {
        sub_22BE257E4();
        sub_22C171FFC();
        goto LABEL_19;
      }
    }

    else
    {
      sub_22BE257E4();
      sub_22C171FFC();
    }

    sub_22BE257E4();
    sub_22C171FFC();
    sub_22C18E438();
    goto LABEL_20;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (swift_getEnumCaseMultiPayload() != 2)
    {
LABEL_11:
      sub_22C18DC5C(v0, &qword_27D9140F0);
      goto LABEL_20;
    }

LABEL_19:
    sub_22C18E438();
    goto LABEL_20;
  }

  sub_22BE3C16C();
  v30 = sub_22BE37490();
  sub_22BE1A964(v30, v31);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_22C18EDB4();
    goto LABEL_10;
  }

  sub_22C18EDCC();
  sub_22C171FA8(v0 + v28, v38);
  sub_22BE25C08();
  static AgentRequest.== infix(_:_:)();
  sub_22C171FFC();
  sub_22BE38970();
  sub_22C171FFC();
  sub_22C18E438();
LABEL_20:
  sub_22BE1B1B8();
  sub_22BE1AABC();
}

uint64_t sub_22C16F144(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t))
{
  sub_22BE19FC4(a1, a2);
  v7 = v7 && v5 == v6;
  if (!v7 && (sub_22C274014() & 1) == 0)
  {
    return 0;
  }

  v8 = a3(0);
  v9 = sub_22BE3E750(v8);

  return a4(v9);
}

uint64_t sub_22C16F1DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x66666F646E6168 && a2 == 0xE700000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1936941424 && a2 == 0xE400000000000000;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x646C656979 && a2 == 0xE500000000000000)
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

uint64_t sub_22C16F2E8(unsigned __int8 a1, void (*a2)(void))
{
  sub_22BE25DAC();
  a2(a1);
  return sub_22C2741A4();
}

uint64_t sub_22C16F330(char a1)
{
  if (!a1)
  {
    return 0x66666F646E6168;
  }

  if (a1 == 1)
  {
    return 1936941424;
  }

  return 0x646C656979;
}

uint64_t sub_22C16F384@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C16F1DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C16F3AC(uint64_t a1)
{
  v2 = sub_22C17A14C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C16F3E8(uint64_t a1)
{
  v2 = sub_22C17A14C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C16F424(uint64_t a1)
{
  v2 = sub_22C17A29C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C16F460(uint64_t a1)
{
  v2 = sub_22C17A29C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C16F49C(uint64_t a1)
{
  v2 = sub_22C17A248();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C16F4D8(uint64_t a1)
{
  v2 = sub_22C17A248();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C16F514(uint64_t a1)
{
  v2 = sub_22C17A1A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C16F550(uint64_t a1)
{
  v2 = sub_22C17A1A0();

  return MEMORY[0x2821FE720](a1, v2);
}

void AgentPrimitiveAction.PrimitiveAction.encode(to:)()
{
  sub_22BE19130();
  sub_22C18F7E4();
  v53 = sub_22BE5CE4C(&qword_27D9140F8, &qword_22C2B88A0);
  sub_22BE179D8(v53);
  v3 = *(v2 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE29200(v5);
  v52 = sub_22BE5CE4C(&qword_27D914100, &qword_22C2B88A8);
  sub_22BE179D8(v52);
  v7 = *(v6 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE34034(v9, v47);
  v50 = type metadata accessor for AgentPassRequest(0);
  v10 = sub_22BE18000(v50);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22BE17A44();
  v51 = v13;
  v14 = sub_22BE5CE4C(&qword_27D914108, &qword_22C2B88B0);
  v49 = sub_22BE179D8(v14);
  v16 = *(v15 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v17);
  sub_22BE234F4();
  v48 = type metadata accessor for AgentHandoffRequest(0);
  v18 = sub_22BE18000(v48);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22BE197B8();
  v21 = type metadata accessor for AgentPrimitiveAction.PrimitiveAction(0);
  v22 = sub_22BE18000(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  sub_22BE188B0();
  v55 = sub_22BE5CE4C(&qword_27D914110, &qword_22C2B88B8);
  sub_22BE179D8(v55);
  v26 = v25;
  v28 = *(v27 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v29);
  sub_22BE25CD0();
  v31 = v0[3];
  v30 = v0[4];
  sub_22BE41E84(v0);
  sub_22C17A14C();
  sub_22BEC046C();
  sub_22C18FCB0();
  sub_22C274234();
  sub_22BE3C16C();
  sub_22BE1A964(v54, v1);
  sub_22BE1824C();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_22C171FA8(v1, v51);
      sub_22BE33FE4();
      sub_22C17A248();
      sub_22C18E550();
      sub_22C273EE4();
      sub_22BE37ACC();
      sub_22BE20458(v33);
      sub_22C18F71C();
      v34 = sub_22BE32D8C();
      v35(v34);
      sub_22C18EDB4();
      sub_22C171FFC();
    }

    else
    {
      sub_22BE39E24();
      sub_22C17A1A0();
      sub_22C18E550();
      sub_22C273EE4();
      sub_22C17A1F4();
      sub_22C18FFC0();
      sub_22C18F71C();
      v44 = sub_22BE32D8C();
      v45(v44);
    }

    v46 = *(v26 + 8);
    v42 = sub_22BE200D4();
  }

  else
  {
    v36 = sub_22BE3C968();
    sub_22C171FA8(v36, v37);
    sub_22C17A29C();
    sub_22C18E6C4();
    sub_22C273EE4();
    sub_22BE392A4();
    sub_22BE20458(v38);
    sub_22C18F71C();
    v39 = sub_22BE28D70();
    v40(v39, v49);
    sub_22BE257E4();
    sub_22C171FFC();
    v41 = *(v26 + 8);
    v42 = sub_22BE29454();
  }

  v43(v42);
  sub_22BEE94B0();
  sub_22BE18478();
}

void AgentPrimitiveAction.PrimitiveAction.init(from:)()
{
  sub_22BE19130();
  v114 = v0;
  v4 = v3;
  v109 = v5;
  v112 = sub_22BE5CE4C(&qword_27D914150, &qword_22C2B88C0);
  sub_22BE179D8(v112);
  v108 = v6;
  v8 = *(v7 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE3C048(v10, v98);
  v11 = sub_22BE5CE4C(&qword_27D914158, &qword_22C2B88C8);
  v12 = sub_22BE179D8(v11);
  v106 = v13;
  v107 = v12;
  v15 = *(v14 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v16);
  sub_22BE181D0(v17, v98);
  v18 = sub_22BE5CE4C(&qword_27D914160, &qword_22C2B88D0);
  v19 = sub_22BE179D8(v18);
  v104 = v20;
  v105 = v19;
  v22 = *(v21 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v23);
  sub_22BE29200(v24);
  v25 = sub_22BE5CE4C(&qword_27D914168, &qword_22C2B88D8);
  v26 = sub_22BE179D8(v25);
  v110 = v27;
  v111 = v26;
  v29 = *(v28 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v30);
  v31 = sub_22BE24FD8();
  v32 = type metadata accessor for AgentPrimitiveAction.PrimitiveAction(v31);
  v33 = sub_22BE18000(v32);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  sub_22BE183AC();
  v38 = v36 - v37;
  MEMORY[0x28223BE20](v39);
  sub_22BE2390C();
  MEMORY[0x28223BE20](v40);
  sub_22BE2017C();
  MEMORY[0x28223BE20](v41);
  v43 = &v98 - v42;
  v45 = *(v4 + 24);
  v44 = *(v4 + 32);
  v46 = sub_22C18F9AC();
  sub_22BE3C0A8(v46);
  sub_22C17A14C();
  sub_22BE3CCD4();
  v47 = v114;
  sub_22C18F8EC();
  sub_22C274214();
  if (!v47)
  {
    v100 = v38;
    v101 = v1;
    v102 = v2;
    v103 = v43;
    v49 = v111;
    v48 = v112;
    v114 = v32;
    v50 = sub_22C273ED4();
    sub_22BE7C5C4(v50, 0);
    if (v52 != v51 >> 1)
    {
      sub_22BE32C78();
      if (v55 == v56)
      {
        __break(1u);
        return;
      }

      v57 = *(v54 + v53);
      sub_22BE7C5C0(v53 + 1);
      sub_22C18FFD8();
      v59 = v58;
      swift_unknownObjectRelease();
      if (v44 == v59 >> 1)
      {
        if (v57)
        {
          if (v57 == 1)
          {
            sub_22BE33FE4();
            sub_22C17A248();
            sub_22BE3925C();
            sub_22C18E804();
            sub_22C273DE4();
            v60 = v103;
            type metadata accessor for AgentPassRequest(0);
            sub_22BE37ACC();
            sub_22BE20458(v61);
            v62 = v107;
            sub_22BE1BB58();
            sub_22C273EB4();
            v99 = 0;
            swift_unknownObjectRelease();
            v79 = sub_22BE2399C();
            v80(v79, v62);
            v81 = sub_22BE39058();
            v82(v81, v49);
            v83 = v102;
          }

          else
          {
            sub_22BE39E24();
            sub_22C17A1A0();
            sub_22C18FD18();
            sub_22C18E804();
            sub_22C273DE4();
            v60 = v103;
            sub_22C17A2F0();
            sub_22BE1B934();
            sub_22C273EB4();
            v78 = v110;
            v99 = 0;
            swift_unknownObjectRelease();
            v91 = sub_22BE2399C();
            v92(v91, v48);
            v93 = *(v78 + 8);
            v94 = sub_22BE1B18C();
            v95(v94);
            v83 = v100;
          }

          sub_22C18FFCC();
          swift_storeEnumTagMultiPayload();
          v90 = v83;
          v89 = v113;
        }

        else
        {
          sub_22C17A29C();
          sub_22C18E804();
          sub_22C273DE4();
          type metadata accessor for AgentHandoffRequest(0);
          sub_22BE392A4();
          sub_22BE20458(v74);
          v75 = v101;
          sub_22C18F904();
          v76 = v105;
          sub_22C273EB4();
          v77 = v110;
          v99 = 0;
          swift_unknownObjectRelease();
          v84 = sub_22BE1A194();
          v85(v84, v76);
          v86 = *(v77 + 8);
          v87 = sub_22BE1B18C();
          v88(v87);
          sub_22BE354DC();
          swift_storeEnumTagMultiPayload();
          v89 = v113;
          v60 = v103;
          v90 = v75;
        }

        sub_22C171FA8(v90, v60);
        v96 = sub_22BE392D4();
        sub_22C171FA8(v96, v97);
        sub_22BE26B64(v89);
        goto LABEL_11;
      }
    }

    sub_22C273B34();
    sub_22BE196B4();
    v64 = v63;
    v65 = *(sub_22BE5CE4C(&qword_27D907968, &qword_22C2768D0) + 48);
    *v64 = v114;
    sub_22C273DF4();
    sub_22C18FE8C();
    sub_22BE1B198();
    v66 = *MEMORY[0x277D84160];
    sub_22BE18994();
    v68 = *(v67 + 104);
    v69 = sub_22BE38608();
    v70(v69);
    swift_willThrow();
    swift_unknownObjectRelease();
    v71 = *(v110 + 8);
    v72 = sub_22BE1B73C();
    v73(v72);
  }

  sub_22BE26B64(v113);
LABEL_11:
  sub_22BE1AB28();
  sub_22BE18478();
}

uint64_t sub_22C170208()
{
  v0 = sub_22BE3E7BC();
  v2 = v1(v0);
  v3 = sub_22C18FCA4(*(v2 + 20));
  return sub_22BE1A964(v3, v4);
}

uint64_t _s30IntelligenceFlowPlannerSupport12ClientActionV11StringQueryV2eeoiySbAE_AEtFZ_0(uint64_t a1)
{
  v1 = sub_22C18E738(a1);
  if (v1 == *v2 && *(v3 + 8) == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_22C274014();
  }
}

uint64_t sub_22C1702AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6741656372756F73 && a2 == 0xED00004449746E65;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x766974696D697270 && a2 == 0xEF6E6F6974634165)
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

uint64_t sub_22C170384(char a1)
{
  if (a1)
  {
    return 0x766974696D697270;
  }

  else
  {
    return 0x6741656372756F73;
  }
}

uint64_t sub_22C1703DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C1702AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C170404(uint64_t a1)
{
  v2 = sub_22C17A344();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C170440(uint64_t a1)
{
  v2 = sub_22C17A344();

  return MEMORY[0x2821FE720](a1, v2);
}

void AgentPrimitiveAction.encode(to:)()
{
  sub_22BE2BB34();
  sub_22BE27A28();
  v2 = sub_22BE5CE4C(&qword_27D914188, &qword_22C2B88E0);
  sub_22BE1BF18(v2);
  v4 = *(v3 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE25CD0();
  sub_22BE23094();
  sub_22C17A344();
  sub_22BE33B8C();
  v6 = v1[1];
  v12 = *v1;
  sub_22C17A398();
  sub_22C18F35C();

  sub_22C18E428();
  sub_22BE26108();
  sub_22C273FA4();

  if (!v0)
  {
    v7 = type metadata accessor for AgentPrimitiveAction(0);
    v8 = sub_22C18FD84(v7);
    type metadata accessor for AgentPrimitiveAction.PrimitiveAction(v8);
    sub_22C18ED6C();
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

void AgentPrimitiveAction.init(from:)()
{
  sub_22BE19130();
  v4 = v3;
  v6 = sub_22C18F8A4(v5);
  v26 = type metadata accessor for AgentPrimitiveAction.PrimitiveAction(v6);
  v7 = sub_22BE18000(v26);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE17CBC();
  v27 = sub_22BE5CE4C(&qword_27D9141A8, &qword_22C2B88E8);
  sub_22BE179D8(v27);
  v11 = *(v10 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE1AED0();
  v14 = type metadata accessor for AgentPrimitiveAction(v13);
  v15 = sub_22BE29F40(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22BE188B0();
  v18 = v4[3];
  v19 = v4[4];
  sub_22C18E560(v4);
  sub_22C17A344();
  sub_22BE489BC();
  sub_22C274214();
  if (v1)
  {
    sub_22BE26B64(v4);
  }

  else
  {
    sub_22C1900DC();
    sub_22C18F9D0();
    sub_22C18EA30();
    sub_22C273EB4();
    sub_22C18FD24();
    sub_22C18ED6C();
    sub_22BE20458(v20);
    sub_22BE34098();
    sub_22C18FDFC();
    v21 = sub_22BE191C0();
    v22(v21);
    sub_22C171FA8(v2, v18 + *(v0 + 20));
    v23 = sub_22BE29370();
    sub_22BE1A964(v23, v25);
    sub_22BE26B64(v24);
    sub_22C18E284();
    sub_22C171FFC();
  }

  sub_22BE467E4();
  sub_22BE18478();
}

uint64_t static AgentRequest.== infix(_:_:)()
{
  sub_22BE18378();
  v2 = sub_22BE5CE4C(&qword_27D9141C0, &qword_22C2B88F0);
  sub_22BE19448(v2);
  v4 = *(v3 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE1AEF0();
  v7 = *(v6 + 56);
  sub_22BE1A964(v0, v1);
  sub_22C18FAF4();
  static Request.== infix(_:_:)();
  v9 = v8;
  sub_22C171FFC();
  sub_22BE1804C();
  sub_22C171FFC();
  return v9 & 1;
}

uint64_t sub_22C170930(uint64_t a1)
{
  v2 = sub_22C17A460();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C17096C(uint64_t a1)
{
  v2 = sub_22C17A460();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C1709A8(uint64_t a1)
{
  v2 = sub_22C17A4B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C1709E4(uint64_t a1)
{
  v2 = sub_22C17A4B4();

  return MEMORY[0x2821FE720](a1, v2);
}

void AgentRequest.encode(to:)()
{
  sub_22BE19130();
  sub_22C18F804();
  v27 = sub_22BE5CE4C(&qword_27D9141C8, &qword_22C2B88F8);
  sub_22BE179D8(v27);
  v2 = v1;
  v4 = *(v3 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE25CD0();
  v6 = type metadata accessor for AgentRequest(0);
  v7 = sub_22BE19448(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE1955C();
  v10 = sub_22BE5CE4C(&qword_27D9141D0, &qword_22C2B8900);
  sub_22BE179D8(v10);
  v12 = v11;
  v14 = *(v13 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  sub_22BE23E58();
  v17 = v0[3];
  v16 = v0[4];
  sub_22BE41E84(v0);
  sub_22C17A460();
  sub_22BE3CCD4();
  sub_22BE40618();
  sub_22C274234();
  sub_22C18ED3C();
  v18 = sub_22C18F9B8();
  sub_22BE1A964(v18, v19);
  sub_22C17A4B4();
  sub_22BE42748();
  sub_22C273EE4();
  type metadata accessor for Request(0);
  sub_22C18E0B8();
  sub_22BE20458(v20);
  sub_22BE35E54();
  sub_22C18E69C();
  sub_22C273FA4();
  sub_22BE26A6C();
  sub_22C171FFC();
  v21 = *(v2 + 8);
  v22 = sub_22BE1B328();
  v23(v22);
  v24 = *(v12 + 8);
  v25 = sub_22BE1824C();
  v26(v25);
  sub_22BEE94B0();
  sub_22BE18478();
}

void AgentRequest.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  v13 = sub_22C18E850(v12);
  v51 = type metadata accessor for AgentRequest(v13);
  v14 = sub_22BE18000(v51);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22BE17CBC();
  v17 = sub_22BE5CE4C(&qword_27D9141E8, &qword_22C2B8908);
  sub_22BE1BF18(v17);
  v19 = *(v18 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v20);
  sub_22BE1B01C();
  v21 = sub_22BE5CE4C(&qword_27D9141F0, &qword_22C2B8910);
  sub_22BE179D8(v21);
  v23 = *(v22 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v24);
  sub_22BE234F4();
  v25 = v10[3];
  v26 = v10[4];
  sub_22BE3C0A8(v10);
  sub_22C17A460();
  sub_22BE48270();
  sub_22BE2BC6C();
  sub_22C274214();
  if (a10)
  {
    goto LABEL_12;
  }

  v27 = sub_22C18F100();
  sub_22BE7C5C4(v27, 0);
  sub_22C18F644();
  if (!v28)
  {
    sub_22BE41798();
    if (v29 == v30)
    {
      __break(1u);
      return;
    }

    v32 = sub_22BE3D6C4(v31);
    sub_22BE7C5C0(v32);
    sub_22C18F14C();
    sub_22C18FFE4();
    if (v28)
    {
      sub_22C17A4B4();
      sub_22BE25CA0();
      sub_22C273DE4();
      if (v11)
      {
        v33 = sub_22BE1A194();
        v34(v33, v21);
        swift_unknownObjectRelease();
      }

      else
      {
        type metadata accessor for Request(0);
        sub_22C18E0B8();
        sub_22BE20458(v44);
        sub_22BE377D8();
        sub_22C18F218();
        swift_unknownObjectRelease();
        v45 = sub_22C18E144();
        v46(v45);
        v47 = sub_22BE391A4();
        v48(v47);
        sub_22BE46B9C();
        v49 = sub_22C18F964();
        sub_22C171FA8(v49, v50);
      }

      goto LABEL_12;
    }

    sub_22C18FEFC();
  }

  v35 = sub_22C273B34();
  sub_22BE196B4();
  sub_22C18FA9C();
  v36 = sub_22BE5CE4C(&qword_27D907968, &qword_22C2768D0);
  sub_22C18E674(v36);
  sub_22BE1B198();
  v37 = *MEMORY[0x277D84160];
  sub_22BE1BC24(v35);
  v39 = *(v38 + 104);
  v40 = sub_22C18F298();
  v41(v40);
  swift_willThrow();
  swift_unknownObjectRelease();
  v42 = sub_22C18E3C8();
  v43(v42);
LABEL_12:
  sub_22BE26B64(v10);
  sub_22C18F0A4();
  sub_22BE18478();
}

uint64_t AgentHandoffRequest.destinationAgentID.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_22C170FFC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, void *a4@<X8>)
{
  v6 = a1[1];
  *a4 = *a1;
  a4[1] = v6;
  v7 = a3(0);
  return sub_22C171FA8(a2, a4 + *(v7 + 20));
}

uint64_t sub_22C171054(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x800000022C2D90C0 == a2;
  if (v3 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74736575716572 && a2 == 0xE700000000000000)
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

uint64_t sub_22C171124(char a1)
{
  if (a1)
  {
    return 0x74736575716572;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_22C171168@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C171054(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C171190(uint64_t a1)
{
  v2 = sub_22C17A508();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C1711CC(uint64_t a1)
{
  v2 = sub_22C17A508();

  return MEMORY[0x2821FE720](a1, v2);
}

void AgentHandoffRequest.encode(to:)()
{
  sub_22BE2BB34();
  sub_22BE27A28();
  v2 = sub_22BE5CE4C(&qword_27D9141F8, &qword_22C2B8918);
  sub_22BE1BF18(v2);
  v4 = *(v3 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE25CD0();
  sub_22BE23094();
  sub_22C17A508();
  sub_22BE33B8C();
  v6 = v1[1];
  v12 = *v1;
  sub_22C17A398();
  sub_22C18F35C();

  sub_22C18E428();
  sub_22BE26108();
  sub_22C273FA4();

  if (!v0)
  {
    v7 = type metadata accessor for AgentHandoffRequest(0);
    v8 = sub_22C18FD84(v7);
    type metadata accessor for AgentRequest(v8);
    sub_22C18E0A0();
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

void AgentHandoffRequest.init(from:)()
{
  sub_22BE19130();
  v4 = v3;
  v6 = sub_22C18F8A4(v5);
  v28 = type metadata accessor for AgentRequest(v6);
  v7 = sub_22BE18000(v28);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE17CBC();
  v29 = sub_22BE5CE4C(&qword_27D914210, &qword_22C2B8920);
  sub_22BE179D8(v29);
  v11 = *(v10 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE1AED0();
  v14 = type metadata accessor for AgentHandoffRequest(v13);
  v15 = sub_22BE29F40(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22BE188B0();
  v18 = v4[3];
  v19 = v4[4];
  sub_22C18E560(v4);
  sub_22C17A508();
  sub_22BE489BC();
  sub_22C274214();
  if (v1)
  {
    sub_22BE26B64(v4);
  }

  else
  {
    sub_22C1900DC();
    sub_22C18F9D0();
    sub_22C18EA30();
    sub_22C273EB4();
    sub_22C18FD24();
    sub_22C18E0A0();
    sub_22BE20458(v20);
    sub_22BE34098();
    sub_22C18FDFC();
    v21 = sub_22BE191C0();
    v22(v21);
    v23 = *(v0 + 20);
    sub_22BE46B9C();
    sub_22C171FA8(v2, v18 + v24);
    v25 = sub_22BE29370();
    sub_22BE1A964(v25, v27);
    sub_22BE26B64(v26);
    sub_22BE257E4();
    sub_22C171FFC();
  }

  sub_22BE467E4();
  sub_22BE18478();
}

uint64_t AgentPassRequest.request.getter()
{
  sub_22BE1B7A4();
  sub_22C18ED3C();
  return sub_22BE1A964(v0, v1);
}

uint64_t sub_22C1715F8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x74736575716572 && a2 == 0xE700000000000000)
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

uint64_t sub_22C171660(uint64_t a1)
{
  v2 = sub_22C17A55C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C17169C(uint64_t a1)
{
  v2 = sub_22C17A55C();

  return MEMORY[0x2821FE720](a1, v2);
}

void AgentPassRequest.encode(to:)()
{
  sub_22BE2BB34();
  v0 = sub_22BE5CE4C(&qword_27D914220, &qword_22C2B8928);
  sub_22BE179D8(v0);
  v2 = v1;
  v4 = *(v3 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE1B01C();
  sub_22BE23094();
  sub_22C17A55C();
  sub_22BE194D0();
  type metadata accessor for AgentRequest(0);
  sub_22C18E0A0();
  sub_22BE20458(v6);
  sub_22C18FE14();
  sub_22C18F374();
  sub_22C273FA4();
  v7 = *(v2 + 8);
  v8 = sub_22BE25C08();
  v9(v8);
  sub_22BEE93D4();
}

void AgentPassRequest.init(from:)()
{
  sub_22BE19130();
  sub_22C18F0F4();
  v3 = type metadata accessor for AgentRequest(0);
  v4 = sub_22BE18000(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BE17A44();
  v26 = v7;
  v8 = sub_22BE5CE4C(&qword_27D914230, &qword_22C2B8930);
  sub_22BE179D8(v8);
  v10 = *(v9 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  v12 = sub_22BE1AED0();
  v13 = type metadata accessor for AgentPassRequest(v12);
  v14 = sub_22BE19448(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22BE188B0();
  v17 = v0[3];
  v18 = v0[4];
  v19 = sub_22BE260B8();
  sub_22BE26950(v19, v20);
  sub_22C17A55C();
  sub_22BE489BC();
  sub_22C274214();
  if (!v1)
  {
    sub_22C18E0A0();
    sub_22BE20458(v21);
    sub_22BE285D4();
    sub_22C273EB4();
    v22 = sub_22C11FDE0();
    v23(v22, v8);
    sub_22BE46B9C();
    sub_22C171FA8(v26, v2);
    sub_22C18EDCC();
    v24 = sub_22BE33BE8();
    sub_22C171FA8(v24, v25);
  }

  sub_22BE26B64(v0);
  sub_22BE1AB28();
  sub_22BE18478();
}

uint64_t sub_22C171A00(uint64_t a1)
{
  v2 = sub_22C17A5B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C171A3C(uint64_t a1)
{
  v2 = sub_22C17A5B0();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_22C171ABC()
{
  sub_22BE19130();
  v1 = v0;
  v3 = v2;
  v5 = sub_22BE34074(v2, v4);
  v7 = sub_22BE5CE4C(v5, v6);
  sub_22BE179D8(v7);
  v9 = *(v8 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE234F4();
  v11 = *(v3 + 24);
  v12 = *(v3 + 32);
  v13 = sub_22BE36658();
  sub_22BE1BD3C(v13, v14);
  v1();
  sub_22BE2BC6C();
  sub_22C274234();
  v15 = sub_22BE17B54();
  v16(v15);
  sub_22BE19650();
  sub_22BE18478();
}

uint64_t sub_22C171BB4(uint64_t a1, uint64_t a2)
{
  if (a1 == 1701667182 && a2 == 0xE400000000000000)
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

uint64_t sub_22C171C40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C171BB4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22C171C6C(uint64_t a1)
{
  v2 = sub_22C17A604();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C171CA8(uint64_t a1)
{
  v2 = sub_22C17A604();

  return MEMORY[0x2821FE720](a1, v2);
}

void AgentID.encode(to:)()
{
  sub_22BE19130();
  sub_22C18F3A4();
  v0 = sub_22BE5CE4C(&qword_27D914248, &qword_22C2B8940);
  sub_22BE1A3D8(v0);
  v2 = *(v1 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v3);
  sub_22BE1B01C();
  sub_22BE3AD08();
  sub_22C17A604();
  sub_22BE3A014();
  sub_22C18E100();
  sub_22C273F54();
  v4 = sub_22BE35CD8();
  v5(v4);
  sub_22BE22978();
  sub_22BE18478();
}

void sub_22C171DF0()
{
  sub_22BE19130();
  v3 = v2;
  sub_22C18F0F4();
  v24 = v4;
  v7 = sub_22BE34074(v5, v6);
  v9 = sub_22BE5CE4C(v7, v8);
  sub_22BE1A3D8(v9);
  v23 = v10;
  v12 = *(v11 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  sub_22BE1B01C();
  v14 = v0[3];
  v15 = v0[4];
  v16 = sub_22BE25318(v0);
  v3(v16);
  sub_22BEE94BC();
  sub_22C274214();
  if (!v1)
  {
    sub_22C18F368();
    v17 = sub_22C273E64();
    v19 = v18;
    v20 = *(v23 + 8);
    v21 = sub_22BE1AB1C();
    v22(v21);
    *v24 = v17;
    v24[1] = v19;
  }

  sub_22BE26B64(v0);
  sub_22BE46D98();
  sub_22BE18478();
}

uint64_t sub_22C171FA8(uint64_t a1, uint64_t a2)
{
  v3 = sub_22BE23C8C();
  v5 = v4(v3);
  sub_22BE1834C(v5);
  v7 = *(v6 + 32);
  v8 = sub_22BE19454();
  v9(v8);
  return a2;
}

uint64_t sub_22C171FFC()
{
  v1 = sub_22BE17BC4();
  v3 = v2(v1);
  sub_22BE18000(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_22C172068(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!result || a1 > *(v4 + 24) >> 1)
  {
    if (*(v4 + 16) > a1)
    {
      v6 = *(v4 + 16);
    }

    return a2();
  }

  return result;
}

uint64_t sub_22C1720F8(uint64_t result, uint64_t a2)
{
  *(result + 16) = a2;
  *(result + 24) = 2 * a2;
  return result;
}

uint64_t sub_22C172108(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = a2;
  *(a1 + 24) = 2 * a2;
  v3 = sub_22BE5CE4C(&qword_27D90A888, &unk_22C288A80);
  sub_22BE19448(v3);
  v5 = *(v4 + 80);
  sub_22BE19E14();
  return a1;
}

uint64_t sub_22C172294(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    if (*(v6 + 16) > a1)
    {
      v8 = *(v6 + 16);
    }

    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t sub_22C17230C(uint64_t a1)
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
    sub_22C273CE4();
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
  result = sub_22C273B14();
  *v1 = result;
  return result;
}

unint64_t sub_22C17246C()
{
  result = qword_27D9124E8;
  if (!qword_27D9124E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9124E8);
  }

  return result;
}

unint64_t sub_22C1724C0()
{
  result = qword_27D9124F8;
  if (!qword_27D9124F8)
  {
    sub_22BE7431C(&qword_27D9124F0, &qword_22C2B77F0);
    sub_22BE20458(&unk_28106E588);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9124F8);
  }

  return result;
}

unint64_t sub_22C172574()
{
  result = qword_27D912508;
  if (!qword_27D912508)
  {
    sub_22BE7431C(&qword_27D9124F0, &qword_22C2B77F0);
    sub_22BE20458(&unk_27D907DF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912508);
  }

  return result;
}

uint64_t sub_22C172628(uint64_t a1, uint64_t a2)
{
  v3 = sub_22BE23C8C();
  v5 = v4(v3);
  sub_22BE1834C(v5);
  v7 = *(v6 + 40);
  v8 = sub_22BE19454();
  v9(v8);
  return a2;
}

unint64_t sub_22C1726DC()
{
  result = qword_27D912540;
  if (!qword_27D912540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912540);
  }

  return result;
}

unint64_t sub_22C172730()
{
  result = qword_27D912548;
  if (!qword_27D912548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912548);
  }

  return result;
}

unint64_t sub_22C172784()
{
  result = qword_27D912550;
  if (!qword_27D912550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912550);
  }

  return result;
}

unint64_t sub_22C1727D8()
{
  result = qword_27D912558;
  if (!qword_27D912558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912558);
  }

  return result;
}

unint64_t sub_22C17282C()
{
  result = qword_27D912560;
  if (!qword_27D912560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912560);
  }

  return result;
}

uint64_t sub_22C172880(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || -(-1 << *(a4 + 32)) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    result = sub_22C2739E4();
    v5 = *(a4 + 36);
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_22C172920(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_22C172964()
{
  result = qword_27D912760;
  if (!qword_27D912760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912760);
  }

  return result;
}

unint64_t sub_22C1729B8()
{
  result = qword_27D912770;
  if (!qword_27D912770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912770);
  }

  return result;
}

unint64_t sub_22C172A0C()
{
  result = qword_27D912780;
  if (!qword_27D912780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912780);
  }

  return result;
}

unint64_t sub_22C172A60()
{
  result = qword_27D912790;
  if (!qword_27D912790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912790);
  }

  return result;
}

unint64_t sub_22C172AB4()
{
  result = qword_27D912798;
  if (!qword_27D912798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912798);
  }

  return result;
}

unint64_t sub_22C172B08()
{
  result = qword_27D9127A0;
  if (!qword_27D9127A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9127A0);
  }

  return result;
}

unint64_t sub_22C172B5C()
{
  result = qword_27D9127A8;
  if (!qword_27D9127A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9127A8);
  }

  return result;
}

unint64_t sub_22C172BB0()
{
  result = qword_27D9127B0;
  if (!qword_27D9127B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9127B0);
  }

  return result;
}

unint64_t sub_22C172C04()
{
  result = qword_27D9127B8;
  if (!qword_27D9127B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9127B8);
  }

  return result;
}

unint64_t sub_22C172C58()
{
  result = qword_27D9127C0;
  if (!qword_27D9127C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9127C0);
  }

  return result;
}

unint64_t sub_22C172CAC()
{
  result = qword_27D9127D0;
  if (!qword_27D9127D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9127D0);
  }

  return result;
}

unint64_t sub_22C172D00()
{
  result = qword_27D9127E0;
  if (!qword_27D9127E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9127E0);
  }

  return result;
}

unint64_t sub_22C172D54()
{
  result = qword_27D9127F0;
  if (!qword_27D9127F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9127F0);
  }

  return result;
}

unint64_t sub_22C172DA8()
{
  result = qword_27D912800;
  if (!qword_27D912800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912800);
  }

  return result;
}

unint64_t sub_22C172DFC()
{
  result = qword_27D912808;
  if (!qword_27D912808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912808);
  }

  return result;
}

unint64_t sub_22C172E50()
{
  result = qword_27D912810;
  if (!qword_27D912810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912810);
  }

  return result;
}

unint64_t sub_22C172EA4()
{
  result = qword_27D912820;
  if (!qword_27D912820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912820);
  }

  return result;
}

unint64_t sub_22C172EF8()
{
  result = qword_27D912830;
  if (!qword_27D912830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912830);
  }

  return result;
}

unint64_t sub_22C172F4C()
{
  result = qword_27D912840;
  if (!qword_27D912840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912840);
  }

  return result;
}

unint64_t sub_22C172FA0()
{
  result = qword_27D912850;
  if (!qword_27D912850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912850);
  }

  return result;
}

unint64_t sub_22C172FF4()
{
  result = qword_27D912860;
  if (!qword_27D912860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912860);
  }

  return result;
}

unint64_t sub_22C173048()
{
  result = qword_27D912870;
  if (!qword_27D912870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912870);
  }

  return result;
}

unint64_t sub_22C17309C()
{
  result = qword_27D912878;
  if (!qword_27D912878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912878);
  }

  return result;
}

unint64_t sub_22C1730F0()
{
  result = qword_27D912880;
  if (!qword_27D912880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912880);
  }

  return result;
}

unint64_t sub_22C173144()
{
  result = qword_27D912888;
  if (!qword_27D912888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912888);
  }

  return result;
}

unint64_t sub_22C173198()
{
  result = qword_27D912890;
  if (!qword_27D912890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912890);
  }

  return result;
}

unint64_t sub_22C1731EC()
{
  result = qword_27D912898;
  if (!qword_27D912898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912898);
  }

  return result;
}

unint64_t sub_22C173240()
{
  result = qword_27D9128A0;
  if (!qword_27D9128A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9128A0);
  }

  return result;
}

unint64_t sub_22C173294()
{
  result = qword_27D9128A8;
  if (!qword_27D9128A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9128A8);
  }

  return result;
}

unint64_t sub_22C1732E8()
{
  result = qword_27D9128B0;
  if (!qword_27D9128B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9128B0);
  }

  return result;
}

unint64_t sub_22C17333C()
{
  result = qword_27D9128B8;
  if (!qword_27D9128B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9128B8);
  }

  return result;
}

unint64_t sub_22C173390()
{
  result = qword_27D9128C0;
  if (!qword_27D9128C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9128C0);
  }

  return result;
}

unint64_t sub_22C1733E4()
{
  result = qword_27D9128C8;
  if (!qword_27D9128C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9128C8);
  }

  return result;
}

unint64_t sub_22C173438()
{
  result = qword_27D9128D0;
  if (!qword_27D9128D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9128D0);
  }

  return result;
}

unint64_t sub_22C17348C()
{
  result = qword_27D9128D8;
  if (!qword_27D9128D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9128D8);
  }

  return result;
}

unint64_t sub_22C1734E0()
{
  result = qword_27D9128E0;
  if (!qword_27D9128E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9128E0);
  }

  return result;
}

unint64_t sub_22C173534()
{
  result = qword_27D9128E8;
  if (!qword_27D9128E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9128E8);
  }

  return result;
}

unint64_t sub_22C173588()
{
  result = qword_27D9128F8;
  if (!qword_27D9128F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9128F8);
  }

  return result;
}

unint64_t sub_22C1735DC()
{
  result = qword_27D912908;
  if (!qword_27D912908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912908);
  }

  return result;
}

unint64_t sub_22C173630()
{
  result = qword_27D912910;
  if (!qword_27D912910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912910);
  }

  return result;
}

unint64_t sub_22C173684()
{
  result = qword_27D912918;
  if (!qword_27D912918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912918);
  }

  return result;
}

unint64_t sub_22C1736D8()
{
  result = qword_27D912928;
  if (!qword_27D912928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912928);
  }

  return result;
}

unint64_t sub_22C17372C()
{
  result = qword_27D912938;
  if (!qword_27D912938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912938);
  }

  return result;
}

unint64_t sub_22C173780()
{
  result = qword_27D912948;
  if (!qword_27D912948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912948);
  }

  return result;
}

unint64_t sub_22C1737D4()
{
  result = qword_27D912958;
  if (!qword_27D912958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912958);
  }

  return result;
}

unint64_t sub_22C173828()
{
  result = qword_27D912968;
  if (!qword_27D912968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912968);
  }

  return result;
}

unint64_t sub_22C17387C()
{
  result = qword_27D912970;
  if (!qword_27D912970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912970);
  }

  return result;
}

unint64_t sub_22C1738D0()
{
  result = qword_27D912978;
  if (!qword_27D912978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912978);
  }

  return result;
}

unint64_t sub_22C173924()
{
  result = qword_27D912980;
  if (!qword_27D912980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912980);
  }

  return result;
}

unint64_t sub_22C173978()
{
  result = qword_27D912990;
  if (!qword_27D912990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912990);
  }

  return result;
}

unint64_t sub_22C1739CC()
{
  result = qword_27D912998;
  if (!qword_27D912998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912998);
  }

  return result;
}

unint64_t sub_22C173A20()
{
  result = qword_27D9129A0;
  if (!qword_27D9129A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9129A0);
  }

  return result;
}

unint64_t sub_22C173A74()
{
  result = qword_27D912B30;
  if (!qword_27D912B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912B30);
  }

  return result;
}

unint64_t sub_22C173AC8()
{
  result = qword_27D912B38;
  if (!qword_27D912B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912B38);
  }

  return result;
}

unint64_t sub_22C173B1C()
{
  result = qword_27D912B40;
  if (!qword_27D912B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912B40);
  }

  return result;
}

unint64_t sub_22C173B70()
{
  result = qword_27D912B68;
  if (!qword_27D912B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912B68);
  }

  return result;
}

unint64_t sub_22C173BC4()
{
  result = qword_27D912BA0;
  if (!qword_27D912BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912BA0);
  }

  return result;
}

unint64_t sub_22C173C18()
{
  result = qword_27D912BB8;
  if (!qword_27D912BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912BB8);
  }

  return result;
}

unint64_t sub_22C173C6C()
{
  result = qword_27D912BC0;
  if (!qword_27D912BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912BC0);
  }

  return result;
}

unint64_t sub_22C173CC0()
{
  result = qword_27D912BC8;
  if (!qword_27D912BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912BC8);
  }

  return result;
}

unint64_t sub_22C173D14()
{
  result = qword_27D912BD0;
  if (!qword_27D912BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912BD0);
  }

  return result;
}

unint64_t sub_22C173D68()
{
  result = qword_27D912BD8;
  if (!qword_27D912BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912BD8);
  }

  return result;
}

unint64_t sub_22C173DBC()
{
  result = qword_27D912BE0;
  if (!qword_27D912BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912BE0);
  }

  return result;
}

unint64_t sub_22C173E10()
{
  result = qword_27D912C20;
  if (!qword_27D912C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912C20);
  }

  return result;
}

unint64_t sub_22C173E64()
{
  result = qword_27D912C30;
  if (!qword_27D912C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912C30);
  }

  return result;
}

unint64_t sub_22C173EB8()
{
  result = qword_27D912CA0;
  if (!qword_27D912CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912CA0);
  }

  return result;
}

unint64_t sub_22C173F0C()
{
  result = qword_27D912CA8;
  if (!qword_27D912CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912CA8);
  }

  return result;
}

unint64_t sub_22C173F60()
{
  result = qword_27D912CB0;
  if (!qword_27D912CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912CB0);
  }

  return result;
}

unint64_t sub_22C173FB4()
{
  result = qword_27D912CB8;
  if (!qword_27D912CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912CB8);
  }

  return result;
}

unint64_t sub_22C174008()
{
  result = qword_27D912CC0;
  if (!qword_27D912CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912CC0);
  }

  return result;
}

unint64_t sub_22C17405C()
{
  result = qword_27D912CC8;
  if (!qword_27D912CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912CC8);
  }

  return result;
}

unint64_t sub_22C1740B0()
{
  result = qword_27D912D08;
  if (!qword_27D912D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912D08);
  }

  return result;
}

unint64_t sub_22C174104()
{
  result = qword_27D912D18;
  if (!qword_27D912D18)
  {
    sub_22BE7431C(&qword_27D912D10, &qword_22C2B7E68);
    sub_22BE20458(&unk_27D912D20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912D18);
  }

  return result;
}

unint64_t sub_22C1741B8()
{
  result = qword_27D912D28;
  if (!qword_27D912D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912D28);
  }

  return result;
}

unint64_t sub_22C17420C()
{
  result = qword_27D912D38;
  if (!qword_27D912D38)
  {
    sub_22BE7431C(&qword_27D912D10, &qword_22C2B7E68);
    sub_22BE20458(&unk_27D912D40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912D38);
  }

  return result;
}

unint64_t sub_22C1742C0()
{
  result = qword_27D912D48;
  if (!qword_27D912D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912D48);
  }

  return result;
}

unint64_t sub_22C17436C()
{
  result = qword_27D912D68;
  if (!qword_27D912D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912D68);
  }

  return result;
}

unint64_t sub_22C1743C0()
{
  result = qword_27D912D70;
  if (!qword_27D912D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912D70);
  }

  return result;
}

unint64_t sub_22C174414()
{
  result = qword_27D912DA8;
  if (!qword_27D912DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912DA8);
  }

  return result;
}

unint64_t sub_22C174468()
{
  result = qword_27D912DB0;
  if (!qword_27D912DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912DB0);
  }

  return result;
}

unint64_t sub_22C1744BC()
{
  result = qword_27D912DE0;
  if (!qword_27D912DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912DE0);
  }

  return result;
}

unint64_t sub_22C174510()
{
  result = qword_27D912E20;
  if (!qword_27D912E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912E20);
  }

  return result;
}

unint64_t sub_22C174564()
{
  result = qword_27D912E28;
  if (!qword_27D912E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912E28);
  }

  return result;
}

unint64_t sub_22C1745B8()
{
  result = qword_27D912E40;
  if (!qword_27D912E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912E40);
  }

  return result;
}

unint64_t sub_22C17460C()
{
  result = qword_27D912E58;
  if (!qword_27D912E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912E58);
  }

  return result;
}

unint64_t sub_22C174660()
{
  result = qword_27D912E68;
  if (!qword_27D912E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912E68);
  }

  return result;
}

unint64_t sub_22C1746B4()
{
  result = qword_27D912E88;
  if (!qword_27D912E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912E88);
  }

  return result;
}

unint64_t sub_22C174708()
{
  result = qword_27D912E90;
  if (!qword_27D912E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912E90);
  }

  return result;
}

unint64_t sub_22C17475C()
{
  result = qword_27D912E98;
  if (!qword_27D912E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912E98);
  }

  return result;
}

unint64_t sub_22C1747B0()
{
  result = qword_27D912EA0;
  if (!qword_27D912EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912EA0);
  }

  return result;
}

unint64_t sub_22C174804()
{
  result = qword_27D912EA8;
  if (!qword_27D912EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912EA8);
  }

  return result;
}

unint64_t sub_22C174858()
{
  result = qword_27D912EC8;
  if (!qword_27D912EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912EC8);
  }

  return result;
}

unint64_t sub_22C1748AC()
{
  result = qword_27D912ED0;
  if (!qword_27D912ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912ED0);
  }

  return result;
}

unint64_t sub_22C174900()
{
  result = qword_27D912EE8;
  if (!qword_27D912EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912EE8);
  }

  return result;
}

unint64_t sub_22C174954()
{
  result = qword_27D912EF8;
  if (!qword_27D912EF8)
  {
    sub_22BE7431C(&qword_27D912EF0, &qword_22C2B7F48);
    sub_22BE20458(&unk_27D912F00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912EF8);
  }

  return result;
}

unint64_t sub_22C174A08()
{
  result = qword_27D912F10;
  if (!qword_27D912F10)
  {
    sub_22BE7431C(&qword_27D912EF0, &qword_22C2B7F48);
    sub_22BE20458(&unk_27D912F18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912F10);
  }

  return result;
}

unint64_t sub_22C174ABC()
{
  result = qword_27D912F30;
  if (!qword_27D912F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912F30);
  }

  return result;
}

unint64_t sub_22C174B10()
{
  result = qword_27D912F40;
  if (!qword_27D912F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912F40);
  }

  return result;
}

unint64_t sub_22C174B64()
{
  result = qword_27D912F68;
  if (!qword_27D912F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912F68);
  }

  return result;
}

unint64_t sub_22C174BB8()
{
  result = qword_27D912FB0;
  if (!qword_27D912FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912FB0);
  }

  return result;
}

unint64_t sub_22C174C0C()
{
  result = qword_27D912FC0;
  if (!qword_27D912FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912FC0);
  }

  return result;
}

unint64_t sub_22C174C60()
{
  result = qword_27D912FD0;
  if (!qword_27D912FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912FD0);
  }

  return result;
}

unint64_t sub_22C174CB4()
{
  result = qword_27D912FD8;
  if (!qword_27D912FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912FD8);
  }

  return result;
}

unint64_t sub_22C174D08()
{
  result = qword_27D913020;
  if (!qword_27D913020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913020);
  }

  return result;
}

unint64_t sub_22C174D5C()
{
  result = qword_27D913030;
  if (!qword_27D913030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913030);
  }

  return result;
}

unint64_t sub_22C174DB0()
{
  result = qword_27D913050;
  if (!qword_27D913050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913050);
  }

  return result;
}

unint64_t sub_22C174E04()
{
  result = qword_27D9130A0;
  if (!qword_27D9130A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9130A0);
  }

  return result;
}

unint64_t sub_22C174E58()
{
  result = qword_27D9130A8;
  if (!qword_27D9130A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9130A8);
  }

  return result;
}

unint64_t sub_22C174EAC()
{
  result = qword_27D9130B0;
  if (!qword_27D9130B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9130B0);
  }

  return result;
}

unint64_t sub_22C174F00()
{
  result = qword_27D9130B8;
  if (!qword_27D9130B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9130B8);
  }

  return result;
}

unint64_t sub_22C174F54()
{
  result = qword_27D9130C0;
  if (!qword_27D9130C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9130C0);
  }

  return result;
}

unint64_t sub_22C174FA8()
{
  result = qword_27D913130;
  if (!qword_27D913130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913130);
  }

  return result;
}

unint64_t sub_22C174FFC()
{
  result = qword_27D913138;
  if (!qword_27D913138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913138);
  }

  return result;
}

unint64_t sub_22C175050()
{
  result = qword_27D913140;
  if (!qword_27D913140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913140);
  }

  return result;
}

unint64_t sub_22C1750A4()
{
  result = qword_27D913148;
  if (!qword_27D913148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913148);
  }

  return result;
}

unint64_t sub_22C1750F8()
{
  result = qword_27D913150;
  if (!qword_27D913150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913150);
  }

  return result;
}

unint64_t sub_22C17514C()
{
  result = qword_27D913158;
  if (!qword_27D913158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913158);
  }

  return result;
}

unint64_t sub_22C1751A0()
{
  result = qword_27D913160;
  if (!qword_27D913160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913160);
  }

  return result;
}

unint64_t sub_22C1751F4()
{
  result = qword_27D913168;
  if (!qword_27D913168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913168);
  }

  return result;
}

unint64_t sub_22C175248()
{
  result = qword_27D913170;
  if (!qword_27D913170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913170);
  }

  return result;
}

unint64_t sub_22C17529C()
{
  result = qword_27D9131B0;
  if (!qword_27D9131B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9131B0);
  }

  return result;
}

unint64_t sub_22C1752F0()
{
  result = qword_27D9131B8;
  if (!qword_27D9131B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9131B8);
  }

  return result;
}

unint64_t sub_22C175344()
{
  result = qword_27D9131C8;
  if (!qword_27D9131C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9131C8);
  }

  return result;
}

unint64_t sub_22C175398()
{
  result = qword_27D9131E0;
  if (!qword_27D9131E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9131E0);
  }

  return result;
}

unint64_t sub_22C1753EC()
{
  result = qword_27D9131F0;
  if (!qword_27D9131F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9131F0);
  }

  return result;
}

unint64_t sub_22C175440()
{
  result = qword_27D913280;
  if (!qword_27D913280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913280);
  }

  return result;
}

unint64_t sub_22C175494()
{
  result = qword_27D913288;
  if (!qword_27D913288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913288);
  }

  return result;
}

unint64_t sub_22C1754E8()
{
  result = qword_27D913290;
  if (!qword_27D913290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913290);
  }

  return result;
}

unint64_t sub_22C17553C()
{
  result = qword_27D913298;
  if (!qword_27D913298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913298);
  }

  return result;
}

unint64_t sub_22C175590()
{
  result = qword_27D9132A8;
  if (!qword_27D9132A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9132A8);
  }

  return result;
}

unint64_t sub_22C1755E4()
{
  result = qword_27D9132B0;
  if (!qword_27D9132B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9132B0);
  }

  return result;
}

unint64_t sub_22C175638()
{
  result = qword_27D9132B8;
  if (!qword_27D9132B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9132B8);
  }

  return result;
}

unint64_t sub_22C17568C()
{
  result = qword_27D9132C0;
  if (!qword_27D9132C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9132C0);
  }

  return result;
}

unint64_t sub_22C1756E0()
{
  result = qword_27D9132C8;
  if (!qword_27D9132C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9132C8);
  }

  return result;
}

unint64_t sub_22C175734()
{
  result = qword_27D9132D0;
  if (!qword_27D9132D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9132D0);
  }

  return result;
}

unint64_t sub_22C175788()
{
  result = qword_27D9132D8;
  if (!qword_27D9132D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9132D8);
  }

  return result;
}

unint64_t sub_22C1757DC()
{
  result = qword_27D9132E0;
  if (!qword_27D9132E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9132E0);
  }

  return result;
}

unint64_t sub_22C175830()
{
  result = qword_27D9132E8;
  if (!qword_27D9132E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9132E8);
  }

  return result;
}

unint64_t sub_22C175884()
{
  result = qword_27D9132F0;
  if (!qword_27D9132F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9132F0);
  }

  return result;
}

unint64_t sub_22C1758D8()
{
  result = qword_27D9132F8;
  if (!qword_27D9132F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9132F8);
  }

  return result;
}

unint64_t sub_22C17592C()
{
  result = qword_27D913300;
  if (!qword_27D913300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913300);
  }

  return result;
}

unint64_t sub_22C175980()
{
  result = qword_27D913350;
  if (!qword_27D913350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913350);
  }

  return result;
}

unint64_t sub_22C1759D4()
{
  result = qword_27D913360;
  if (!qword_27D913360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913360);
  }

  return result;
}

unint64_t sub_22C175A28()
{
  result = qword_27D913368;
  if (!qword_27D913368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913368);
  }

  return result;
}

unint64_t sub_22C175A7C()
{
  result = qword_27D913370;
  if (!qword_27D913370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913370);
  }

  return result;
}

unint64_t sub_22C175AD0()
{
  result = qword_27D913378;
  if (!qword_27D913378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913378);
  }

  return result;
}

unint64_t sub_22C175B24()
{
  result = qword_27D913380;
  if (!qword_27D913380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913380);
  }

  return result;
}

unint64_t sub_22C175B78()
{
  result = qword_27D913388;
  if (!qword_27D913388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913388);
  }

  return result;
}

unint64_t sub_22C175BCC()
{
  result = qword_27D913398;
  if (!qword_27D913398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913398);
  }

  return result;
}

unint64_t sub_22C175C20()
{
  result = qword_27D9133B0;
  if (!qword_27D9133B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9133B0);
  }

  return result;
}

unint64_t sub_22C175C74()
{
  result = qword_27D9133C8;
  if (!qword_27D9133C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9133C8);
  }

  return result;
}

unint64_t sub_22C175CC8()
{
  result = qword_27D9133E0;
  if (!qword_27D9133E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9133E0);
  }

  return result;
}

unint64_t sub_22C175D1C()
{
  result = qword_27D9133F8;
  if (!qword_27D9133F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9133F8);
  }

  return result;
}

unint64_t sub_22C175D70()
{
  result = qword_27D913410;
  if (!qword_27D913410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913410);
  }

  return result;
}

unint64_t sub_22C175DC4()
{
  result = qword_27D913428;
  if (!qword_27D913428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913428);
  }

  return result;
}

unint64_t sub_22C175E18()
{
  result = qword_27D913440;
  if (!qword_27D913440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913440);
  }

  return result;
}

unint64_t sub_22C175E6C()
{
  result = qword_27D913458;
  if (!qword_27D913458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913458);
  }

  return result;
}

unint64_t sub_22C175EC0()
{
  result = qword_27D913470;
  if (!qword_27D913470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913470);
  }

  return result;
}

unint64_t sub_22C175F14()
{
  result = qword_27D913480;
  if (!qword_27D913480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913480);
  }

  return result;
}

unint64_t sub_22C175F68()
{
  result = qword_27D913498;
  if (!qword_27D913498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913498);
  }

  return result;
}

unint64_t sub_22C175FDC()
{
  result = qword_27D9134B0;
  if (!qword_27D9134B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9134B0);
  }

  return result;
}

unint64_t sub_22C176030()
{
  result = qword_27D9134B8;
  if (!qword_27D9134B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9134B8);
  }

  return result;
}

unint64_t sub_22C176084()
{
  result = qword_27D9134D8;
  if (!qword_27D9134D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9134D8);
  }

  return result;
}

unint64_t sub_22C1760D8()
{
  result = qword_27D9134F0;
  if (!qword_27D9134F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9134F0);
  }

  return result;
}

unint64_t sub_22C17612C()
{
  result = qword_27D913528;
  if (!qword_27D913528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913528);
  }

  return result;
}

unint64_t sub_22C176180()
{
  result = qword_27D913538;
  if (!qword_27D913538)
  {
    sub_22BE7431C(&qword_27D913530, &qword_22C2B8290);
    sub_22BE20458(&unk_27D913540);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913538);
  }

  return result;
}

unint64_t sub_22C17623C()
{
  result = qword_27D913550;
  if (!qword_27D913550)
  {
    sub_22BE7431C(&qword_27D913530, &qword_22C2B8290);
    sub_22BE20458(&unk_27D913558);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913550);
  }

  return result;
}

unint64_t sub_22C1762F8()
{
  result = qword_27D913568;
  if (!qword_27D913568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913568);
  }

  return result;
}

unint64_t sub_22C17636C()
{
  result = qword_27D9135B0;
  if (!qword_27D9135B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9135B0);
  }

  return result;
}

unint64_t sub_22C1763C0()
{
  result = qword_27D9135B8;
  if (!qword_27D9135B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9135B8);
  }

  return result;
}

unint64_t sub_22C176414()
{
  result = qword_27D9135C0;
  if (!qword_27D9135C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9135C0);
  }

  return result;
}

unint64_t sub_22C176468()
{
  result = qword_27D9135C8;
  if (!qword_27D9135C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9135C8);
  }

  return result;
}

unint64_t sub_22C1764BC()
{
  result = qword_27D9135D0;
  if (!qword_27D9135D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9135D0);
  }

  return result;
}

unint64_t sub_22C176510()
{
  result = qword_27D9135D8;
  if (!qword_27D9135D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9135D8);
  }

  return result;
}

unint64_t sub_22C176564()
{
  result = qword_27D9135E0;
  if (!qword_27D9135E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9135E0);
  }

  return result;
}

unint64_t sub_22C1765B8()
{
  result = qword_27D9135E8;
  if (!qword_27D9135E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9135E8);
  }

  return result;
}

unint64_t sub_22C17660C()
{
  result = qword_27D913618;
  if (!qword_27D913618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913618);
  }

  return result;
}

unint64_t sub_22C176660()
{
  result = qword_27D913620;
  if (!qword_27D913620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913620);
  }

  return result;
}

unint64_t sub_22C1766B4()
{
  result = qword_27D913628;
  if (!qword_27D913628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913628);
  }

  return result;
}

unint64_t sub_22C176708()
{
  result = qword_27D913638;
  if (!qword_27D913638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913638);
  }

  return result;
}

unint64_t sub_22C17675C()
{
  result = qword_27D913650;
  if (!qword_27D913650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913650);
  }

  return result;
}

unint64_t sub_22C1767B0()
{
  result = qword_27D912358;
  if (!qword_27D912358)
  {
    sub_22BE7431C(&qword_27D90B9D8, &qword_22C2904E0);
    sub_22BE20458(&qword_27D907D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912358);
  }

  return result;
}

unint64_t sub_22C176864()
{
  result = qword_27D912370;
  if (!qword_27D912370)
  {
    sub_22BE7431C(&qword_27D90B9D8, &qword_22C2904E0);
    sub_22BE20458(&qword_27D907DA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912370);
  }

  return result;
}

unint64_t sub_22C176918()
{
  result = qword_27D913668;
  if (!qword_27D913668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913668);
  }

  return result;
}

unint64_t sub_22C17696C()
{
  result = qword_27D913680;
  if (!qword_27D913680)
  {
    sub_22BE7431C(&qword_27D912510, &unk_22C2B7800);
    sub_22BE20458(&unk_27D913688);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913680);
  }

  return result;
}

void sub_22C176A20()
{
  sub_22C190048();
  if (!sub_22BE267CC(v2))
  {
    sub_22BEC0548();
    sub_22BE7431C(&qword_27D913670, &qword_22C2B8350);
    v1();
    sub_22BE336E8();
    atomic_store(swift_getWitnessTable(), v0);
  }

  sub_22C190034();
}

unint64_t sub_22C176A8C()
{
  result = qword_27D9136A0;
  if (!qword_27D9136A0)
  {
    sub_22BE7431C(&qword_27D912510, &unk_22C2B7800);
    sub_22BE20458(&unk_27D9136A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9136A0);
  }

  return result;
}

unint64_t sub_22C176B40()
{
  result = qword_27D9136D0;
  if (!qword_27D9136D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9136D0);
  }

  return result;
}

unint64_t sub_22C176B94()
{
  result = qword_27D9136D8;
  if (!qword_27D9136D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9136D8);
  }

  return result;
}

unint64_t sub_22C176BE8()
{
  result = qword_27D9136E0;
  if (!qword_27D9136E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9136E0);
  }

  return result;
}

unint64_t sub_22C176C3C()
{
  result = qword_27D9136E8;
  if (!qword_27D9136E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9136E8);
  }

  return result;
}

unint64_t sub_22C176C90()
{
  result = qword_27D913718;
  if (!qword_27D913718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913718);
  }

  return result;
}

unint64_t sub_22C176CE4()
{
  result = qword_27D913720;
  if (!qword_27D913720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913720);
  }

  return result;
}

unint64_t sub_22C176D38()
{
  result = qword_27D913730;
  if (!qword_27D913730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913730);
  }

  return result;
}

unint64_t sub_22C176D8C()
{
  result = qword_27D913740;
  if (!qword_27D913740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913740);
  }

  return result;
}

unint64_t sub_22C176DE0()
{
  result = qword_27D913748;
  if (!qword_27D913748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913748);
  }

  return result;
}

unint64_t sub_22C176E34()
{
  result = qword_27D913758;
  if (!qword_27D913758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913758);
  }

  return result;
}

unint64_t sub_22C176EC8()
{
  result = qword_27D913770;
  if (!qword_27D913770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913770);
  }

  return result;
}

unint64_t sub_22C176F1C()
{
  result = qword_27D913798;
  if (!qword_27D913798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913798);
  }

  return result;
}

unint64_t sub_22C176F70()
{
  result = qword_27D9137A8;
  if (!qword_27D9137A8)
  {
    sub_22BE7431C(&qword_27D9137A0, &qword_22C2B83E0);
    sub_22BE20458(&unk_27D9137B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9137A8);
  }

  return result;
}

unint64_t sub_22C177024()
{
  result = qword_27D9137C0;
  if (!qword_27D9137C0)
  {
    sub_22BE7431C(&qword_27D9137A0, &qword_22C2B83E0);
    sub_22BE20458(&unk_27D9137C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9137C0);
  }

  return result;
}

unint64_t sub_22C1770D8()
{
  result = qword_27D9137D8;
  if (!qword_27D9137D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9137D8);
  }

  return result;
}

unint64_t sub_22C17712C()
{
  result = qword_27D9137F0;
  if (!qword_27D9137F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9137F0);
  }

  return result;
}

unint64_t sub_22C177180()
{
  result = qword_27D913818;
  if (!qword_27D913818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913818);
  }

  return result;
}

unint64_t sub_22C1771D4()
{
  result = qword_27D913830;
  if (!qword_27D913830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913830);
  }

  return result;
}

unint64_t sub_22C177228()
{
  result = qword_27D913870;
  if (!qword_27D913870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913870);
  }

  return result;
}

unint64_t sub_22C17727C()
{
  result = qword_27D913878;
  if (!qword_27D913878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913878);
  }

  return result;
}

unint64_t sub_22C1772D0()
{
  result = qword_27D913880;
  if (!qword_27D913880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913880);
  }

  return result;
}

unint64_t sub_22C177324()
{
  result = qword_27D913888;
  if (!qword_27D913888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913888);
  }

  return result;
}

unint64_t sub_22C177378()
{
  result = qword_27D913898;
  if (!qword_27D913898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913898);
  }

  return result;
}

unint64_t sub_22C1773CC()
{
  result = qword_27D9138A8;
  if (!qword_27D9138A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9138A8);
  }

  return result;
}

unint64_t sub_22C177420()
{
  result = qword_27D9138B0;
  if (!qword_27D9138B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9138B0);
  }

  return result;
}

unint64_t sub_22C177474()
{
  result = qword_27D9138B8;
  if (!qword_27D9138B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9138B8);
  }

  return result;
}

unint64_t sub_22C1774C8()
{
  result = qword_27D9138F0;
  if (!qword_27D9138F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9138F0);
  }

  return result;
}

unint64_t sub_22C17751C()
{
  result = qword_27D913908;
  if (!qword_27D913908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913908);
  }

  return result;
}

unint64_t sub_22C1775B0()
{
  result = qword_27D913938;
  if (!qword_27D913938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913938);
  }

  return result;
}

unint64_t sub_22C177604()
{
  result = qword_27D913940;
  if (!qword_27D913940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913940);
  }

  return result;
}

unint64_t sub_22C177658()
{
  result = qword_27D913950;
  if (!qword_27D913950)
  {
    sub_22BE7431C(&qword_27D913948, &qword_22C2B84B8);
    sub_22BE20458(&unk_27D913958);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913950);
  }

  return result;
}

unint64_t sub_22C17770C()
{
  result = qword_27D913960;
  if (!qword_27D913960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913960);
  }

  return result;
}

unint64_t sub_22C177760()
{
  result = qword_27D913968;
  if (!qword_27D913968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913968);
  }

  return result;
}

unint64_t sub_22C1777B4()
{
  result = qword_27D913990;
  if (!qword_27D913990)
  {
    sub_22BE7431C(&qword_27D913948, &qword_22C2B84B8);
    sub_22BE20458(&unk_27D913998);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913990);
  }

  return result;
}

unint64_t sub_22C177868()
{
  result = qword_27D9139A8;
  if (!qword_27D9139A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9139A8);
  }

  return result;
}

unint64_t sub_22C1778BC()
{
  result = qword_27D9139B8;
  if (!qword_27D9139B8)
  {
    sub_22BE7431C(&qword_27D9139B0, &qword_22C2B84E8);
    sub_22BE20458(&qword_28107F2F8);
    sub_22BE20458(&qword_27D907D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9139B8);
  }

  return result;
}

unint64_t sub_22C1779A8()
{
  result = qword_27D9139D0;
  if (!qword_27D9139D0)
  {
    sub_22BE7431C(&qword_27D9139B0, &qword_22C2B84E8);
    sub_22BE20458(&qword_27D908560);
    sub_22BE20458(&qword_27D907DA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9139D0);
  }

  return result;
}

unint64_t sub_22C177A94()
{
  result = qword_27D9139E8;
  if (!qword_27D9139E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9139E8);
  }

  return result;
}

unint64_t sub_22C177AE8()
{
  result = qword_27D9139F0;
  if (!qword_27D9139F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9139F0);
  }

  return result;
}

unint64_t sub_22C177B3C()
{
  result = qword_27D913A00;
  if (!qword_27D913A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913A00);
  }

  return result;
}

unint64_t sub_22C177B90()
{
  result = qword_27D913A10;
  if (!qword_27D913A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913A10);
  }

  return result;
}

unint64_t sub_22C177BE4()
{
  result = qword_27D913A18;
  if (!qword_27D913A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913A18);
  }

  return result;
}

unint64_t sub_22C177C38()
{
  result = qword_27D913A28;
  if (!qword_27D913A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913A28);
  }

  return result;
}

unint64_t sub_22C177C8C()
{
  result = qword_27D913A48;
  if (!qword_27D913A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913A48);
  }

  return result;
}

unint64_t sub_22C177CE0()
{
  result = qword_27D913A70;
  if (!qword_27D913A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913A70);
  }

  return result;
}

unint64_t sub_22C177D34()
{
  result = qword_27D913AA0;
  if (!qword_27D913AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913AA0);
  }

  return result;
}

unint64_t sub_22C177D88()
{
  result = qword_27D913AB0;
  if (!qword_27D913AB0)
  {
    sub_22BE7431C(&qword_27D913AA8, &qword_22C2B8548);
    sub_22BE20458(&unk_27D911CB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913AB0);
  }

  return result;
}

unint64_t sub_22C177E3C()
{
  result = qword_27D913AC0;
  if (!qword_27D913AC0)
  {
    sub_22BE7431C(&qword_27D913AA8, &qword_22C2B8548);
    sub_22BE20458(&unk_27D911CE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913AC0);
  }

  return result;
}

unint64_t sub_22C177EF0()
{
  result = qword_27D913AD0;
  if (!qword_27D913AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913AD0);
  }

  return result;
}

unint64_t sub_22C177F44()
{
  result = qword_27D913AE8;
  if (!qword_27D913AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913AE8);
  }

  return result;
}

unint64_t sub_22C177F98(uint64_t a1)
{
  result = sub_22BE267CC(a1);
  if (!result)
  {
    v4 = v3;
    sub_22BE7431C(&qword_27D913AD8, &qword_22C2B8560);
    v4();
    sub_22BE1A8C4();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_22C178008()
{
  result = qword_27D913B00;
  if (!qword_27D913B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913B00);
  }

  return result;
}

unint64_t sub_22C17805C()
{
  result = qword_27D913B10;
  if (!qword_27D913B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913B10);
  }

  return result;
}

unint64_t sub_22C1780B0()
{
  result = qword_27D913B20;
  if (!qword_27D913B20)
  {
    sub_22BE7431C(&qword_27D913B18, &qword_22C2B8578);
    sub_22BE20458(&unk_27D913B28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913B20);
  }

  return result;
}

unint64_t sub_22C178164()
{
  result = qword_27D913B38;
  if (!qword_27D913B38)
  {
    sub_22BE7431C(&qword_27D913B18, &qword_22C2B8578);
    sub_22BE20458(&unk_27D913B40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913B38);
  }

  return result;
}

unint64_t sub_22C178218()
{
  result = qword_27D913B68;
  if (!qword_27D913B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913B68);
  }

  return result;
}

unint64_t sub_22C17826C()
{
  result = qword_27D913B70;
  if (!qword_27D913B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913B70);
  }

  return result;
}

unint64_t sub_22C1782C0()
{
  result = qword_27D913B78;
  if (!qword_27D913B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913B78);
  }

  return result;
}

unint64_t sub_22C178314()
{
  result = qword_27D913B80;
  if (!qword_27D913B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913B80);
  }

  return result;
}

unint64_t sub_22C178368()
{
  result = qword_27D913BB0;
  if (!qword_27D913BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913BB0);
  }

  return result;
}

unint64_t sub_22C1783BC()
{
  result = qword_27D913BB8;
  if (!qword_27D913BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913BB8);
  }

  return result;
}

unint64_t sub_22C178410()
{
  result = qword_27D913BC0;
  if (!qword_27D913BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913BC0);
  }

  return result;
}

unint64_t sub_22C178464()
{
  result = qword_27D913BD0;
  if (!qword_27D913BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913BD0);
  }

  return result;
}

unint64_t sub_22C1784B8()
{
  result = qword_27D913BD8;
  if (!qword_27D913BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913BD8);
  }

  return result;
}

uint64_t sub_22C17850C(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_22C2739C4();
  v4 = *(a1 + 36);
  return result;
}

unint64_t sub_22C17856C()
{
  result = qword_27D913BE8;
  if (!qword_27D913BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913BE8);
  }

  return result;
}

unint64_t sub_22C1785C0()
{
  result = qword_27D913BF0;
  if (!qword_27D913BF0)
  {
    sub_22BE7431C(&qword_27D907580, &qword_22C2B85E0);
    sub_22C17867C();
    sub_22BE20458(&unk_27D913B28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913BF0);
  }

  return result;
}

unint64_t sub_22C17867C()
{
  result = qword_27D913BF8;
  if (!qword_27D913BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913BF8);
  }

  return result;
}

unint64_t sub_22C1786D0()
{
  result = qword_27D913C18;
  if (!qword_27D913C18)
  {
    sub_22BE7431C(&qword_27D907580, &qword_22C2B85E0);
    sub_22C17878C();
    sub_22BE20458(&unk_27D913B40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913C18);
  }

  return result;
}

unint64_t sub_22C17878C()
{
  result = qword_27D913C20;
  if (!qword_27D913C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913C20);
  }

  return result;
}

unint64_t sub_22C1787E0(uint64_t a1)
{
  result = sub_22BE267CC(a1);
  if (!result)
  {
    v4 = v3;
    sub_22BE7431C(&qword_27D913C00, &unk_22C2B85E8);
    v4();
    sub_22BE1A8C4();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_22C178850()
{
  result = qword_27D913C38;
  if (!qword_27D913C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913C38);
  }

  return result;
}

unint64_t sub_22C1788A4()
{
  result = qword_27D913C50;
  if (!qword_27D913C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913C50);
  }

  return result;
}

unint64_t sub_22C1788F8()
{
  result = qword_27D913C60;
  if (!qword_27D913C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913C60);
  }

  return result;
}

unint64_t sub_22C17894C()
{
  result = qword_27D913C78;
  if (!qword_27D913C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913C78);
  }

  return result;
}

unint64_t sub_22C1789A0()
{
  result = qword_27D913C88;
  if (!qword_27D913C88)
  {
    sub_22BE7431C(&qword_27D913C80, &qword_22C2B8630);
    sub_22BE20458(&unk_27D913C90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913C88);
  }

  return result;
}

unint64_t sub_22C178A54()
{
  result = qword_27D913CA0;
  if (!qword_27D913CA0)
  {
    sub_22BE7431C(&qword_27D913C80, &qword_22C2B8630);
    sub_22BE20458(&unk_27D913CA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913CA0);
  }

  return result;
}

unint64_t sub_22C178B08()
{
  result = qword_27D913CB8;
  if (!qword_27D913CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913CB8);
  }

  return result;
}

unint64_t sub_22C178B5C()
{
  result = qword_27D913CD8;
  if (!qword_27D913CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913CD8);
  }

  return result;
}

unint64_t sub_22C178BD0()
{
  result = qword_27D913D00;
  if (!qword_27D913D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913D00);
  }

  return result;
}

unint64_t sub_22C178C24()
{
  result = qword_27D913D18;
  if (!qword_27D913D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913D18);
  }

  return result;
}

unint64_t sub_22C178C78()
{
  result = qword_27D913D28;
  if (!qword_27D913D28)
  {
    sub_22BE7431C(&qword_27D913D20, &qword_22C2B8678);
    sub_22BE20458(&unk_27D913D30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913D28);
  }

  return result;
}

unint64_t sub_22C178D2C()
{
  result = qword_27D913D40;
  if (!qword_27D913D40)
  {
    sub_22BE7431C(&qword_27D913D20, &qword_22C2B8678);
    sub_22BE20458(&unk_27D913D48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913D40);
  }

  return result;
}

unint64_t sub_22C178DE0()
{
  result = qword_27D913D58;
  if (!qword_27D913D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913D58);
  }

  return result;
}

unint64_t sub_22C178E34()
{
  result = qword_27D913D68;
  if (!qword_27D913D68)
  {
    sub_22BE7431C(&qword_27D913D60, &qword_22C2B8690);
    sub_22BE20458(&unk_27D913D70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913D68);
  }

  return result;
}

unint64_t sub_22C178EE8()
{
  result = qword_27D913D80;
  if (!qword_27D913D80)
  {
    sub_22BE7431C(&qword_27D913D78, &qword_22C2B8698);
    sub_22BE20458(&unk_27D9137F8);
    sub_22BE20458(&unk_27D913D88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913D80);
  }

  return result;
}

unint64_t sub_22C178FD4()
{
  result = qword_27D913D98;
  if (!qword_27D913D98)
  {
    sub_22BE7431C(&qword_27D913D60, &qword_22C2B8690);
    sub_22BE20458(&unk_27D913DA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913D98);
  }

  return result;
}

unint64_t sub_22C179088()
{
  result = qword_27D913DA8;
  if (!qword_27D913DA8)
  {
    sub_22BE7431C(&qword_27D913D78, &qword_22C2B8698);
    sub_22BE20458(&unk_27D913808);
    sub_22BE20458(&unk_27D913DB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913DA8);
  }

  return result;
}

unint64_t sub_22C179174()
{
  result = qword_27D913DD0;
  if (!qword_27D913DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913DD0);
  }

  return result;
}

unint64_t sub_22C1791C8()
{
  result = qword_27D913DE8;
  if (!qword_27D913DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913DE8);
  }

  return result;
}

unint64_t sub_22C17921C()
{
  result = qword_27D913E00;
  if (!qword_27D913E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913E00);
  }

  return result;
}

unint64_t sub_22C179270()
{
  result = qword_27D913E18;
  if (!qword_27D913E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913E18);
  }

  return result;
}

unint64_t sub_22C1792C4()
{
  result = qword_27D913E30;
  if (!qword_27D913E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913E30);
  }

  return result;
}

unint64_t sub_22C179318()
{
  result = qword_28106DDA8;
  if (!qword_28106DDA8)
  {
    sub_22BE7431C(&qword_27D907878, &qword_22C275A30);
    sub_22BE20458(&qword_28107F1A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106DDA8);
  }

  return result;
}

unint64_t sub_22C1793CC()
{
  result = qword_27D913E48;
  if (!qword_27D913E48)
  {
    sub_22BE7431C(&qword_27D913E40, &qword_22C2B8708);
    sub_22BE20458(&unk_27D913E50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913E48);
  }

  return result;
}

unint64_t sub_22C179480()
{
  result = qword_27D907F28;
  if (!qword_27D907F28)
  {
    sub_22BE7431C(&qword_27D907878, &qword_22C275A30);
    sub_22BE20458(&qword_27D907F30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907F28);
  }

  return result;
}

unint64_t sub_22C179534()
{
  result = qword_27D913E68;
  if (!qword_27D913E68)
  {
    sub_22BE7431C(&qword_27D913E40, &qword_22C2B8708);
    sub_22BE20458(&unk_27D913E70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913E68);
  }

  return result;
}

unint64_t sub_22C1795E8()
{
  result = qword_27D913E80;
  if (!qword_27D913E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913E80);
  }

  return result;
}

unint64_t sub_22C17963C()
{
  result = qword_27D913E88;
  if (!qword_27D913E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913E88);
  }

  return result;
}

unint64_t sub_22C179690()
{
  result = qword_27D913E98;
  if (!qword_27D913E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913E98);
  }

  return result;
}

unint64_t sub_22C1796E4()
{
  result = qword_27D913ED8;
  if (!qword_27D913ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913ED8);
  }

  return result;
}

unint64_t sub_22C179738()
{
  result = qword_27D913EE0;
  if (!qword_27D913EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913EE0);
  }

  return result;
}

unint64_t sub_22C17978C()
{
  result = qword_27D913EF0;
  if (!qword_27D913EF0)
  {
    sub_22BE7431C(&qword_27D913EE8, &qword_22C2B8760);
    sub_22BE20458(&unk_27D913EF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913EF0);
  }

  return result;
}

unint64_t sub_22C179840()
{
  result = qword_27D913F00;
  if (!qword_27D913F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913F00);
  }

  return result;
}

unint64_t sub_22C179894()
{
  result = qword_27D913F08;
  if (!qword_27D913F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913F08);
  }

  return result;
}

unint64_t sub_22C1798E8()
{
  result = qword_27D913F10;
  if (!qword_27D913F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913F10);
  }

  return result;
}

unint64_t sub_22C17993C()
{
  result = qword_28106DDB8;
  if (!qword_28106DDB8)
  {
    sub_22BE7431C(&qword_27D913F18, &qword_22C2B8768);
    sub_22BE20458(&unk_28107F1A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106DDB8);
  }

  return result;
}

unint64_t sub_22C1799F0()
{
  result = qword_27D913F20;
  if (!qword_27D913F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913F20);
  }

  return result;
}

unint64_t sub_22C179A44()
{
  result = qword_27D913F28;
  if (!qword_27D913F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913F28);
  }

  return result;
}

unint64_t sub_22C179A98()
{
  result = qword_27D913F68;
  if (!qword_27D913F68)
  {
    sub_22BE7431C(&qword_27D913EE8, &qword_22C2B8760);
    sub_22BE20458(&unk_27D913F70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913F68);
  }

  return result;
}

unint64_t sub_22C179B4C()
{
  result = qword_27D913F78;
  if (!qword_27D913F78)
  {
    sub_22BE7431C(&qword_27D913F18, &qword_22C2B8768);
    sub_22BE20458(&unk_27D913CC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913F78);
  }

  return result;
}

unint64_t sub_22C179C00()
{
  result = qword_27D913F98;
  if (!qword_27D913F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913F98);
  }

  return result;
}

unint64_t sub_22C179C54()
{
  result = qword_27D913FA0;
  if (!qword_27D913FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913FA0);
  }

  return result;
}

unint64_t sub_22C179CA8()
{
  result = qword_27D913FA8;
  if (!qword_27D913FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913FA8);
  }

  return result;
}

unint64_t sub_22C179CFC()
{
  result = qword_27D913FD0;
  if (!qword_27D913FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913FD0);
  }

  return result;
}

unint64_t sub_22C179D50()
{
  result = qword_27D913FE8;
  if (!qword_27D913FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D913FE8);
  }

  return result;
}

unint64_t sub_22C179DA4()
{
  result = qword_27D914000;
  if (!qword_27D914000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914000);
  }

  return result;
}

unint64_t sub_22C179DF8()
{
  result = qword_27D914010;
  if (!qword_27D914010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914010);
  }

  return result;
}

unint64_t sub_22C179E4C()
{
  result = qword_27D914040;
  if (!qword_27D914040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914040);
  }

  return result;
}

unint64_t sub_22C179EA0()
{
  result = qword_27D914048;
  if (!qword_27D914048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914048);
  }

  return result;
}

unint64_t sub_22C179EF4()
{
  result = qword_27D914050;
  if (!qword_27D914050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914050);
  }

  return result;
}

unint64_t sub_22C179F48()
{
  result = qword_27D914078;
  if (!qword_27D914078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914078);
  }

  return result;
}

unint64_t sub_22C179F9C()
{
  result = qword_27D9140A0;
  if (!qword_27D9140A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9140A0);
  }

  return result;
}

unint64_t sub_22C179FF0()
{
  result = qword_27D9140B8;
  if (!qword_27D9140B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9140B8);
  }

  return result;
}

unint64_t sub_22C17A044()
{
  result = qword_27D9140D0;
  if (!qword_27D9140D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9140D0);
  }

  return result;
}

unint64_t sub_22C17A098()
{
  result = qword_27D9140E0;
  if (!qword_27D9140E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9140E0);
  }

  return result;
}

unint64_t sub_22C17A14C()
{
  result = qword_27D914118;
  if (!qword_27D914118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914118);
  }

  return result;
}

unint64_t sub_22C17A1A0()
{
  result = qword_27D914120;
  if (!qword_27D914120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914120);
  }

  return result;
}

unint64_t sub_22C17A1F4()
{
  result = qword_27D914128;
  if (!qword_27D914128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914128);
  }

  return result;
}

unint64_t sub_22C17A248()
{
  result = qword_27D914130;
  if (!qword_27D914130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914130);
  }

  return result;
}

unint64_t sub_22C17A29C()
{
  result = qword_27D914140;
  if (!qword_27D914140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914140);
  }

  return result;
}

unint64_t sub_22C17A2F0()
{
  result = qword_27D914170;
  if (!qword_27D914170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914170);
  }

  return result;
}

unint64_t sub_22C17A344()
{
  result = qword_27D914190;
  if (!qword_27D914190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914190);
  }

  return result;
}

unint64_t sub_22C17A398()
{
  result = qword_27D914198;
  if (!qword_27D914198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914198);
  }

  return result;
}

unint64_t sub_22C17A3EC()
{
  result = qword_27D9141B0;
  if (!qword_27D9141B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9141B0);
  }

  return result;
}

unint64_t sub_22C17A460()
{
  result = qword_27D9141D8;
  if (!qword_27D9141D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9141D8);
  }

  return result;
}

unint64_t sub_22C17A4B4()
{
  result = qword_27D9141E0;
  if (!qword_27D9141E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9141E0);
  }

  return result;
}

unint64_t sub_22C17A508()
{
  result = qword_27D914200;
  if (!qword_27D914200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914200);
  }

  return result;
}

unint64_t sub_22C17A55C()
{
  result = qword_27D914228;
  if (!qword_27D914228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914228);
  }

  return result;
}

unint64_t sub_22C17A5B0()
{
  result = qword_27D914240;
  if (!qword_27D914240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914240);
  }

  return result;
}

unint64_t sub_22C17A604()
{
  result = qword_27D914250;
  if (!qword_27D914250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914250);
  }

  return result;
}

unint64_t sub_22C17A65C()
{
  result = qword_27D914260;
  if (!qword_27D914260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914260);
  }

  return result;
}

unint64_t sub_22C17A6FC()
{
  result = qword_27D914268;
  if (!qword_27D914268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914268);
  }

  return result;
}

unint64_t sub_22C17A754()
{
  result = qword_27D914270;
  if (!qword_27D914270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914270);
  }

  return result;
}

unint64_t sub_22C17A7F4()
{
  result = qword_28107AC38[0];
  if (!qword_28107AC38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28107AC38);
  }

  return result;
}

unint64_t sub_22C17A84C()
{
  result = qword_27D914280;
  if (!qword_27D914280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914280);
  }

  return result;
}

unint64_t sub_22C17A8A4()
{
  result = qword_27D914288;
  if (!qword_27D914288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914288);
  }

  return result;
}

unint64_t sub_22C17A8FC()
{
  result = qword_27D914290;
  if (!qword_27D914290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914290);
  }

  return result;
}

unint64_t sub_22C17A954()
{
  result = qword_27D914298;
  if (!qword_27D914298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D914298);
  }

  return result;
}

unint64_t sub_22C17A9F4()
{
  result = qword_28107C8D8;
  if (!qword_28107C8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28107C8D8);
  }

  return result;
}

unint64_t sub_22C17AA4C()
{
  result = qword_27D9142A0;
  if (!qword_27D9142A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9142A0);
  }

  return result;
}

void sub_22C17AAD8()
{
  sub_22C26E1D4();
  if (v0 <= 0x3F)
  {
    sub_22C17DA24(319, &qword_28106DDD8, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_22C17AD84(319, &qword_28106DC50, type metadata accessor for Session.Event, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22C17ABD0()
{
  sub_22C26E1D4();
  if (v0 <= 0x3F)
  {
    sub_22C17AD84(319, &qword_28107F318, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Session.Event.Payload(319);
      if (v2 <= 0x3F)
      {
        sub_22C17DA24(319, &qword_28106DDD8, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for Timepoint();
          if (v4 <= 0x3F)
          {
            sub_22C17DA24(319, &qword_28107C8B0, &type metadata for ParticipantID, MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              sub_22C17DA24(319, &qword_28106F230, &type metadata for SpanID, MEMORY[0x277D83D88]);
              if (v6 <= 0x3F)
              {
                sub_22C17ADE8();
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_22C17AD84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_22C17ADE8()
{
  if (!qword_28106DE90)
  {
    sub_22BE340C8();
    v0 = sub_22C272EC4();
    if (!v1)
    {
      atomic_store(v0, &qword_28106DE90);
    }
  }
}

uint64_t sub_22C17AE4C()
{
  result = type metadata accessor for SessionStart(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for UserTurnStarted(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Request(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for Action(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for ActionCancellation(319);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for ClientAction(319);
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for QueryStep(319);
              if (v7 <= 0x3F)
              {
                result = type metadata accessor for VariableStep(319);
                if (v8 <= 0x3F)
                {
                  result = type metadata accessor for Session.RecoverableError(319);
                  if (v9 <= 0x3F)
                  {
                    result = type metadata accessor for SessionError();
                    if (v10 <= 0x3F)
                    {
                      result = type metadata accessor for QueryStepResults(319);
                      if (v11 <= 0x3F)
                      {
                        result = type metadata accessor for ActionResolverRequest(319);
                        if (v12 <= 0x3F)
                        {
                          result = sub_22C26F754();
                          if (v13 <= 0x3F)
                          {
                            result = type metadata accessor for StatementResult(319);
                            if (v14 <= 0x3F)
                            {
                              result = type metadata accessor for ExternalAgentRequest(319);
                              if (v15 <= 0x3F)
                              {
                                result = type metadata accessor for ExternalAgentOutcome(319);
                                if (v16 <= 0x3F)
                                {
                                  result = type metadata accessor for ToolResolution(319);
                                  if (v17 <= 0x3F)
                                  {
                                    result = type metadata accessor for UndoRedoRequest(319);
                                    if (v18 <= 0x3F)
                                    {
                                      result = type metadata accessor for ClientUndoRedoRequest(319);
                                      if (v19 <= 0x3F)
                                      {
                                        result = type metadata accessor for TypeConversionRequest(319);
                                        if (v20 <= 0x3F)
                                        {
                                          result = type metadata accessor for TypeConversionResult(319);
                                          if (v21 <= 0x3F)
                                          {
                                            result = type metadata accessor for QueryDecorationResult(319);
                                            if (v22 <= 0x3F)
                                            {
                                              result = type metadata accessor for QueryDecorationPrePlannerResult(319);
                                              if (v23 <= 0x3F)
                                              {
                                                result = type metadata accessor for SkipStatement(319);
                                                if (v24 <= 0x3F)
                                                {
                                                  result = type metadata accessor for ExecutionPreconditionEvaluatorRequest(319);
                                                  if (v25 <= 0x3F)
                                                  {
                                                    result = type metadata accessor for RequestAmendment(319);
                                                    if (v26 <= 0x3F)
                                                    {
                                                      result = sub_22C270074();
                                                      if (v27 <= 0x3F)
                                                      {
                                                        result = sub_22C270234();
                                                        if (v28 <= 0x3F)
                                                        {
                                                          result = type metadata accessor for AgentPrimitiveAction(319);
                                                          if (v29 <= 0x3F)
                                                          {
                                                            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                                                            return 0;
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
  }

  return result;
}

__n128 sub_22C17B164(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_22C17B180(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_22C17B1C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22C17B230(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Session.PlanGenerationModelOutputError(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, sub_22BE59664);
}

uint64_t sub_22C17B288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Session.PlanGenerationModelOutputError(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, sub_22BE5967C);
}

uint64_t sub_22C17B2F0(uint64_t a1)
{
  v2 = type metadata accessor for Session.PlanGenerationError(319);
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v4 = type metadata accessor for Session.PlanGenerationModelOutputError(319);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
      return 0;
    }
  }

  return v2;
}

uint64_t sub_22C17B3A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Session.PlanGenerationModelOutputError(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, sub_22BE5BCDC);
}

uint64_t sub_22C17B400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Session.PlanGenerationModelOutputError(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, sub_22BE5BCC0);
}

void sub_22C17B4F0()
{
  sub_22C26ECA4();
  if (v0 <= 0x3F)
  {
    sub_22C17AD84(319, &qword_28107F2D8, MEMORY[0x277D1C4C8], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_22C17AD84(319, &qword_28107F2C0, MEMORY[0x277D1C618], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22C17B61C()
{
  sub_22C26E684();
  if (v0 <= 0x3F)
  {
    sub_22C17AD84(319, &qword_28107F198, MEMORY[0x277D1EF78], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for UserTurn(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  if (v6 <= 1)
  {
    v5 = -1;
  }

  else
  {
    v5 = v6 ^ 0xFF;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for UserTurn(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = -a2;
        }

        break;
    }
  }

  return result;
}

void sub_22C17B8A8()
{
  type metadata accessor for RequestContent(319);
  if (v0 <= 0x3F)
  {
    sub_22C17AD84(319, qword_28107A580, type metadata accessor for RequestPrescribedPlan, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_22C17AD84(319, &qword_28107F318, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_22C17DA24(319, &qword_281073078, &type metadata for ExternalAgentRequestRewriteMetadata, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_22C17AD84(319, &qword_28107F198, MEMORY[0x277D1EF78], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_22C17DA24(319, qword_2810783D8, &type metadata for RequestSuggestedInvocation, MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              sub_22C17AD84(319, qword_28107BFE0, type metadata accessor for DateTimeContext, MEMORY[0x277D83D88]);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_22C17BAB4()
{
  result = type metadata accessor for RequestContent.TextContent(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for RequestContent.SpeechContent(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for RequestContent.SystemPromptResolution(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_22C17BBC8()
{
  sub_22C17AD84(319, &qword_28107F2D0, MEMORY[0x277D1C5B8], MEMORY[0x277D83D88]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    v3 = sub_22C26E684();
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

void sub_22C17BCC8()
{
  sub_22C17AD84(319, &qword_28107F318, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_22C26E1D4();
    if (v1 <= 0x3F)
    {
      type metadata accessor for RequestContent.SystemPromptResolution.UserAction(319);
      if (v2 <= 0x3F)
      {
        sub_22C26E684();
        if (v3 <= 0x3F)
        {
          type metadata accessor for RequestContent.SystemPromptResolution.ResolutionInput(319);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_22C17BDF0()
{
  result = sub_22C272874();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RequestContent.SystemPromptResolution.RequirementResolution(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for RequestContent.SystemPromptResolution.RequirementResolution(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

void sub_22C17C028()
{
  type metadata accessor for RequestContent(319);
  if (v0 <= 0x3F)
  {
    sub_22C17AD84(319, &qword_28107F318, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_22C17DA24(319, &qword_281073078, &type metadata for ExternalAgentRequestRewriteMetadata, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_22C17C118()
{
  result = type metadata accessor for RequestPrescribedPlan.OpenTool(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

__n128 sub_22C17C1BC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_22C17C1D0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 18))
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

uint64_t sub_22C17C210(uint64_t result, int a2, int a3)
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