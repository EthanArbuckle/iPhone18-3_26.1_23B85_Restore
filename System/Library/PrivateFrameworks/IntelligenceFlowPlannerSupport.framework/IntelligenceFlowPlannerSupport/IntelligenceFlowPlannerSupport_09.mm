uint64_t sub_22BED219C(uint64_t a1)
{
  v2 = sub_22BEDFFB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BED21D8(uint64_t a1)
{
  v2 = sub_22BEDFFB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BED2214(uint64_t a1)
{
  v2 = sub_22BEDFF08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BED2250(uint64_t a1)
{
  v2 = sub_22BEDFF08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BED228C(uint64_t a1)
{
  v2 = sub_22BEDFF5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BED22C8(uint64_t a1)
{
  v2 = sub_22BEDFF5C();

  return MEMORY[0x2821FE720](a1, v2);
}

void UpdateParametersExpression.UpdateKind.encode(to:)()
{
  sub_22BE19130();
  v2 = v1;
  v3 = sub_22BE5CE4C(&qword_27D909B60, &qword_22C280350);
  sub_22BE179D8(v3);
  v5 = *(v4 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE20168(v7, v29);
  v8 = sub_22BE5CE4C(&qword_27D909B68, &qword_22C280358);
  sub_22BE179D8(v8);
  v10 = *(v9 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  sub_22BE23E58();
  v12 = sub_22BE5CE4C(&qword_27D909B70, &qword_22C280360);
  sub_22BE179D8(v12);
  v14 = v13;
  v16 = *(v15 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v17);
  sub_22BE1A8B4();
  v18 = *v0;
  v19 = *(v2 + 24);
  v20 = *(v2 + 32);
  v21 = sub_22BE3CEF4();
  sub_22BE26950(v21, v22);
  sub_22BEDFF08();
  sub_22BEE939C();
  sub_22C274234();
  v23 = (v14 + 8);
  if (v18)
  {
    sub_22BE486C4();
    sub_22BEDFF5C();
    sub_22BE1B934();
    sub_22C273EE4();
    v24 = sub_22BE2399C();
  }

  else
  {
    sub_22BEDFFB0();
    sub_22BE1B934();
    sub_22C273EE4();
    v24 = sub_22BE3408C();
  }

  v25(v24);
  v26 = *v23;
  v27 = sub_22BE38FD8();
  v28(v27);
  sub_22BE18478();
}

uint64_t UpdateParametersExpression.UpdateKind.hashValue.getter()
{
  v1 = *v0;
  sub_22BE25DAC();
  sub_22BE290B4();
  return sub_22C2741A4();
}

void UpdateParametersExpression.UpdateKind.init(from:)()
{
  sub_22BE19130();
  v4 = v3;
  v49 = v5;
  v51 = sub_22BE5CE4C(&qword_27D909B90, &qword_22C280368);
  sub_22BE179D8(v51);
  v48 = v6;
  v8 = *(v7 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE1B72C();
  v10 = sub_22BE5CE4C(&qword_27D909B98, &qword_22C280370);
  sub_22BE179D8(v10);
  v47 = v11;
  v13 = *(v12 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  sub_22BE234F4();
  v15 = sub_22BE5CE4C(&qword_27D909BA0, &qword_22C280378);
  sub_22BE179D8(v15);
  v50 = v16;
  v18 = *(v17 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v19);
  sub_22BE1B01C();
  v20 = v4[4];
  sub_22BE26950(v4, v4[3]);
  sub_22BEDFF08();
  sub_22BE232E4();
  sub_22C274214();
  if (!v1)
  {
    v52 = v4;
    v21 = sub_22C273ED4();
    sub_22BE7C5C4(v21, 0);
    if (v23 != v22 >> 1)
    {
      sub_22BE38A18();
      sub_22BE3E9D8();
      if (v26 == v27)
      {
        __break(1u);
        return;
      }

      v28 = *(v25 + v24);
      sub_22BE7C5C0(v24 + 1);
      v30 = v29;
      v32 = v31;
      swift_unknownObjectRelease();
      if (v30 == v32 >> 1)
      {
        if (v28)
        {
          sub_22BE486C4();
          sub_22BEDFF5C();
          v33 = v0;
          sub_22BEE93E8();
          v34 = v49;
          v35 = v50;
          swift_unknownObjectRelease();
          (*(v48 + 8))(v33, v51);
        }

        else
        {
          sub_22BEDFFB0();
          sub_22BEE93E8();
          v34 = v49;
          v35 = v50;
          swift_unknownObjectRelease();
          (*(v47 + 8))(v2, v10);
        }

        v44 = *(v35 + 8);
        v45 = sub_22BE25C08();
        v46(v45);
        *v34 = v28;
        sub_22BE26B64(v52);
        goto LABEL_10;
      }
    }

    v36 = sub_22C273B34();
    sub_22BE196B4();
    v38 = v37;
    v39 = *(sub_22BE5CE4C(&qword_27D907968, &qword_22C2768D0) + 48);
    *v38 = &type metadata for UpdateParametersExpression.UpdateKind;
    sub_22C273DF4();
    sub_22BE1B198();
    v40 = *MEMORY[0x277D84160];
    sub_22BE1BC24(v36);
    (*(v41 + 104))(v38);
    swift_willThrow();
    swift_unknownObjectRelease();
    v42 = sub_22BE39058();
    v43(v42, v15);
    v4 = v52;
  }

  sub_22BE26B64(v4);
LABEL_10:
  sub_22BE18478();
}

uint64_t sub_22BED29A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746174536C6C6163 && a2 == 0xEF6449746E656D65;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73657461647075 && a2 == 0xE700000000000000)
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

uint64_t sub_22BED2A70(char a1)
{
  if (a1)
  {
    return 0x73657461647075;
  }

  else
  {
    return 0x746174536C6C6163;
  }
}

uint64_t sub_22BED2AF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BED29A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BED2B20(uint64_t a1)
{
  v2 = sub_22BEE0004();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BED2B5C(uint64_t a1)
{
  v2 = sub_22BEE0004();

  return MEMORY[0x2821FE720](a1, v2);
}

void UpdateParametersExpression.encode(to:)()
{
  sub_22BE2BB34();
  sub_22BE22950();
  v1 = sub_22BE5CE4C(&qword_27D909BA8, &qword_22C280380);
  sub_22BE179D8(v1);
  v3 = v2;
  v5 = *(v4 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE19E64();
  sub_22BE23094();
  sub_22BEE0004();
  sub_22BE194D0();
  sub_22BE4475C();
  sub_22BE18CFC();
  sub_22BECD12C(v7, v8);
  sub_22BEE92A4();
  sub_22BE196CC();
  sub_22C273FA4();
  if (!v0)
  {
    updated = type metadata accessor for UpdateParametersExpression(0);
    sub_22BE35C64(updated);
    sub_22BE5CE4C(&qword_27D909BB8, &qword_22C280388);
    sub_22BEE0058();
    sub_22BE196CC();
    sub_22C273FA4();
  }

  v10 = *(v3 + 8);
  v11 = sub_22BE1AB74();
  v12(v11);
  sub_22BEE92C0();
  sub_22BEE93D4();
}

void UpdateParametersExpression.init(from:)()
{
  sub_22BE19130();
  v27 = sub_22BEE9360(v2);
  v3 = sub_22BE179D8(v27);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE179EC();
  sub_22BE1AB80();
  v6 = sub_22BE5CE4C(&qword_27D909BD0, &qword_22C280390);
  sub_22BE179D8(v6);
  v8 = *(v7 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  v10 = sub_22BE24FD8();
  updated = type metadata accessor for UpdateParametersExpression(v10);
  v12 = sub_22BE18000(updated);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22BE179EC();
  v16 = v0[3];
  v15 = v0[4];
  v17 = sub_22BE41FB4();
  sub_22BE26950(v17, v18);
  sub_22BEE0004();
  sub_22BE3CCD4();
  sub_22BEE940C();
  if (v1)
  {
    sub_22BE26B64(v0);
  }

  else
  {
    sub_22BE32E44();
    sub_22BE18CFC();
    sub_22BECD12C(v19, v20);
    sub_22BE2BB84();
    v21 = sub_22BEE9134();
    v22(v21);
    sub_22BE5CE4C(&qword_27D909BB8, &qword_22C280388);
    sub_22BE33FE4();
    sub_22BEE010C();
    sub_22BEE90F4();
    v23 = sub_22BE25424();
    v24(v23);
    sub_22BE35D34();
    v25 = sub_22BE431F0();
    sub_22BEDFD40(v25, v26);
    sub_22BE26B64(v0);
    sub_22BEE9214();
    sub_22BEC3264();
  }

  sub_22BE46D98();
  sub_22BE18478();
}

uint64_t CallExpression.tool.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 CallExpression.tool.setter(__n128 *a1)
{
  v8 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u64[1];
  v4 = a1[2].n128_u8[0];
  v5 = v1->n128_u64[1];
  v6 = v1[1].n128_u64[1];

  result = v8;
  *v1 = v8;
  v1[1].n128_u64[0] = v2;
  v1[1].n128_u64[1] = v3;
  v1[2].n128_u8[0] = v4;
  return result;
}

uint64_t CallExpression.parameters.setter(uint64_t a1)
{
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;
  return result;
}

uint64_t CallExpression.init(fn:parameters:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  *(a4 + 40) = a3;
  return result;
}

__n128 CallExpression.init(tool:parameters:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v3 = a1->n128_u64[1];
  v4 = a1[2].n128_u8[0];
  a3->n128_u64[0] = a1->n128_u64[0];
  a3->n128_u64[1] = v3;
  result = a1[1];
  a3[1] = result;
  a3[2].n128_u8[0] = v4;
  a3[2].n128_u64[1] = a2;
  return result;
}

uint64_t sub_22BED30D0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1819242356 && a2 == 0xE400000000000000;
  if (v3 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574656D61726170 && a2 == 0xEA00000000007372)
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

uint64_t sub_22BED31A0(char a1)
{
  if (a1)
  {
    return 0x6574656D61726170;
  }

  else
  {
    return 1819242356;
  }
}

uint64_t sub_22BED31DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BED30D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BED3204(uint64_t a1)
{
  v2 = sub_22BEE01C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BED3240(uint64_t a1)
{
  v2 = sub_22BEE01C0();

  return MEMORY[0x2821FE720](a1, v2);
}

void CallExpression.encode(to:)()
{
  sub_22BE19130();
  v3 = v2;
  v4 = sub_22BE5CE4C(&qword_27D909BE8, &qword_22C280398);
  sub_22BE179D8(v4);
  v6 = *(v5 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE19E64();
  v8 = *v0;
  v9 = v0[1];
  v10 = v0[3];
  v16[0] = *(v0 + 32);
  v14 = v0[5];
  v15 = v0[2];
  v11 = v3[4];
  sub_22BE26950(v3, v3[3]);
  sub_22BEE01C0();

  sub_22BEE94BC();
  sub_22C274234();
  sub_22BEB9C9C();
  sub_22C273FA4();

  if (!v1)
  {
    sub_22BE486C4();
    sub_22BE5CE4C(&qword_27D909BF8, &qword_22C2803A0);
    sub_22BEE0214();
    sub_22BE27B84();
    sub_22C273FA4();
  }

  v12 = sub_22BE25EE4();
  v13(v12);
  sub_22BE18478();
}

void CallExpression.init(from:)()
{
  sub_22BE19130();
  v2 = v1;
  v4 = v3;
  v5 = sub_22BE5CE4C(&qword_27D909C08, &qword_22C2803A8);
  sub_22BE179D8(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE234F4();
  v11 = v2[4];
  sub_22BE26950(v2, v2[3]);
  sub_22BEE01C0();
  sub_22BE48270();
  sub_22BE2BC6C();
  sub_22C274214();
  if (v0)
  {
    sub_22BE26B64(v2);
  }

  else
  {
    sub_22BEB9D44();
    sub_22C273EB4();
    sub_22BE5CE4C(&qword_27D909BF8, &qword_22C2803A0);
    sub_22BE486C4();
    sub_22BEE02D0();
    sub_22C273EB4();
    v12 = *(v7 + 8);
    v13 = sub_22BE18240();
    v14(v13);
    *v4 = v15;
    *(v4 + 8) = v16;
    *(v4 + 16) = v17;
    *(v4 + 24) = v18;
    *(v4 + 32) = v19;
    *(v4 + 40) = v15;

    sub_22BE26B64(v2);
  }

  sub_22BE18478();
}

uint64_t sub_22BED36A0(uint64_t a1)
{
  v2 = sub_22BEE038C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BED36DC(uint64_t a1)
{
  v2 = sub_22BEE038C();

  return MEMORY[0x2821FE720](a1, v2);
}

void RetrieveContextExpression.encode(to:)(void *a1)
{
  v3 = sub_22BE5CE4C(&qword_27D909C18, &qword_22C2803B0);
  sub_22BE179D8(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE25CD0();
  v9 = a1[4];
  sub_22BE26950(a1, a1[3]);
  sub_22BEE038C();
  sub_22C274234();
  (*(v5 + 8))(v1, v3);
  sub_22BE1965C();
}

uint64_t sub_22BED3884(uint64_t a1)
{
  v2 = sub_22BEE03E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BED38C0(uint64_t a1)
{
  v2 = sub_22BEE03E0();

  return MEMORY[0x2821FE720](a1, v2);
}

void RetrieveSpansExpression.encode(to:)()
{
  sub_22BE2BB34();
  sub_22BE1B980();
  v0 = sub_22BE5CE4C(&qword_27D909C28, &qword_22C2803B8);
  sub_22BE179D8(v0);
  v2 = *(v1 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v3);
  sub_22BE1B01C();
  sub_22BE23094();
  sub_22BEE03E0();
  sub_22BE1B02C();
  sub_22C26E684();
  sub_22BE18CFC();
  sub_22BECD12C(v4, v5);
  sub_22BE1BE20();
  sub_22C273F34();
  v6 = sub_22BE184A8();
  v7(v6);
  sub_22BE1965C();
  sub_22BEE93D4();
}

void RetrieveSpansExpression.init(from:)()
{
  sub_22BE19130();
  sub_22BEE92B0(v2);
  v3 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  sub_22BE19448(v3);
  v5 = *(v4 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE25CD0();
  v7 = sub_22BE5CE4C(&qword_27D909C38, &qword_22C2803C0);
  sub_22BE179D8(v7);
  v9 = *(v8 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  v11 = sub_22BE24FD8();
  SpansExpression = type metadata accessor for RetrieveSpansExpression(v11);
  v13 = sub_22BE19448(SpansExpression);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22BE179EC();
  sub_22BE37EA4();
  v16 = sub_22C26E684();
  sub_22BE18204(v16);
  sub_22BEE03E0();
  sub_22BE32C48();
  if (!v1)
  {
    sub_22BE18CFC();
    sub_22BECD12C(v17, v18);
    sub_22BE29E58();
    v19 = sub_22BE25F08();
    v20(v19);
    sub_22BE29454();
    sub_22BEE05D8();
    v21 = sub_22BE25C08();
    sub_22BEDFD40(v21, v22);
  }

  sub_22BE26B64(v0);
  sub_22BE41060();
  sub_22BEC3264();
  sub_22BE1AB28();
  sub_22BE18478();
}

uint64_t _s30IntelligenceFlowPlannerSupport14UndoExpressionV11statementIdAC0aB011StatementIDVSg_tcfC_0()
{
  sub_22C26E684();
  sub_22BE1A140();
  sub_22BE19DC4(v0, v1, v2, v3);
  sub_22BE19454();
  return sub_22BEE05D8();
}

uint64_t sub_22BED3C54(uint64_t a1)
{
  v2 = sub_22BEE0434();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BED3C90(uint64_t a1)
{
  v2 = sub_22BEE0434();

  return MEMORY[0x2821FE720](a1, v2);
}

void RetrieveToolsExpression.encode(to:)()
{
  sub_22BE2BB34();
  sub_22BE1B980();
  v0 = sub_22BE5CE4C(&qword_27D909C40, &qword_22C2803C8);
  sub_22BE179D8(v0);
  v2 = *(v1 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v3);
  sub_22BE1B01C();
  sub_22BE23094();
  sub_22BEE0434();
  sub_22BE1B02C();
  sub_22C26E684();
  sub_22BE18CFC();
  sub_22BECD12C(v4, v5);
  sub_22BE1BE20();
  sub_22C273F34();
  v6 = sub_22BE184A8();
  v7(v6);
  sub_22BE1965C();
  sub_22BEE93D4();
}

void RetrieveToolsExpression.init(from:)()
{
  sub_22BE19130();
  sub_22BEE92B0(v2);
  v3 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  sub_22BE19448(v3);
  v5 = *(v4 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE25CD0();
  v7 = sub_22BE5CE4C(&qword_27D909C50, &qword_22C2803D0);
  sub_22BE179D8(v7);
  v9 = *(v8 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  v11 = sub_22BE24FD8();
  ToolsExpression = type metadata accessor for RetrieveToolsExpression(v11);
  v13 = sub_22BE19448(ToolsExpression);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22BE179EC();
  sub_22BE37EA4();
  v16 = sub_22C26E684();
  sub_22BE18204(v16);
  sub_22BEE0434();
  sub_22BE32C48();
  if (!v1)
  {
    sub_22BE18CFC();
    sub_22BECD12C(v17, v18);
    sub_22BE29E58();
    v19 = sub_22BE25F08();
    v20(v19);
    sub_22BE29454();
    sub_22BEE05D8();
    v21 = sub_22BE25C08();
    sub_22BEDFD40(v21, v22);
  }

  sub_22BE26B64(v0);
  sub_22BEC3264();
  sub_22BE1AB28();
  sub_22BE18478();
}

uint64_t SayExpression.statementIds.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_22BED4018(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E656D6574617473 && a2 == 0xEC00000073644974)
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

uint64_t sub_22BED40B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BED4018(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22BED40E4(uint64_t a1)
{
  v2 = sub_22BEE0488();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BED4120(uint64_t a1)
{
  v2 = sub_22BEE0488();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PickExpression.index.setter()
{
  v2 = sub_22BE17BC4();
  result = type metadata accessor for PickExpression(v2);
  *(v1 + *(result + 20)) = v0;
  return result;
}

uint64_t PickExpression.index.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for PickExpression(v0) + 20);
  return sub_22BE18504();
}

uint64_t sub_22BED42BC()
{
  sub_22BE37898();
  v3 = sub_22C26E684();
  sub_22BE18000(v3);
  v5 = *(v4 + 32);
  v6 = sub_22BE1C2A0();
  v7(v6);
  result = v0(0);
  *(v2 + *(result + 20)) = v1;
  return result;
}

uint64_t sub_22BED4324(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E656D6574617473 && a2 == 0xEB00000000644974;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7865646E69 && a2 == 0xE500000000000000)
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

uint64_t sub_22BED43EC(char a1)
{
  if (a1)
  {
    return 0x7865646E69;
  }

  else
  {
    return 0x6E656D6574617473;
  }
}

uint64_t sub_22BED4430@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BED4324(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BED4458(uint64_t a1)
{
  v2 = sub_22BEE04DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BED4494(uint64_t a1)
{
  v2 = sub_22BEE04DC();

  return MEMORY[0x2821FE720](a1, v2);
}

void PickExpression.encode(to:)()
{
  sub_22BE2BB34();
  sub_22BE27A28();
  v2 = sub_22BE5CE4C(&qword_27D909C70, &qword_22C2803E8);
  sub_22BE179D8(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE25CD0();
  sub_22BE23094();
  sub_22BEE04DC();
  sub_22BE194D0();
  sub_22BE4475C();
  sub_22BE18CFC();
  sub_22BECD12C(v8, v9);
  sub_22BEE92A4();
  sub_22BE27B84();
  sub_22BE26108();
  sub_22C273FA4();
  if (!v0)
  {
    v10 = *(v1 + *(type metadata accessor for PickExpression(0) + 20));
    sub_22BE33FE4();
    sub_22BE26108();
    sub_22C273F94();
  }

  v11 = *(v4 + 8);
  v12 = sub_22BE200D4();
  v13(v12);
  sub_22BEE92C0();
  sub_22BEE93D4();
}

void PickExpression.init(from:)()
{
  sub_22BE19130();
  v4 = v3;
  v26 = v5;
  v6 = sub_22C26E684();
  v7 = sub_22BE179D8(v6);
  v27 = v8;
  v28 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE179EC();
  sub_22BE2BB64();
  v29 = sub_22BE5CE4C(&qword_27D909C80, &qword_22C2803F0);
  sub_22BE179D8(v29);
  v12 = *(v11 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  v14 = sub_22BE24FD8();
  v15 = type metadata accessor for PickExpression(v14);
  v16 = sub_22BE18000(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22BE179EC();
  sub_22BE1BC40();
  v19 = v4[3];
  v20 = v4[4];
  sub_22BE360D8();
  sub_22BEE04DC();
  sub_22BE3CCD4();
  sub_22C274214();
  if (v0)
  {
    sub_22BE26B64(v4);
  }

  else
  {
    sub_22BE18CFC();
    sub_22BECD12C(v21, v22);
    sub_22BEE92A4();
    sub_22C273EB4();
    (*(v27 + 32))(v1, v2, v28);
    sub_22BE33FE4();
    v23 = sub_22C273EA4();
    v24 = sub_22BE36664();
    v25(v24);
    *(v1 + *(v15 + 20)) = v23;
    sub_22BEDFD40(v1, v26);
    sub_22BE26B64(v4);
    sub_22BE1A1E4();
    sub_22BEC3264();
  }

  sub_22BE46D98();
  sub_22BE18478();
}

uint64_t sub_22BED492C(uint64_t a1)
{
  v2 = sub_22BEE0530();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BED4968(uint64_t a1)
{
  v2 = sub_22BEE0530();

  return MEMORY[0x2821FE720](a1, v2);
}

void ConfirmExpression.encode(to:)()
{
  sub_22BE2BB34();
  sub_22BE1B980();
  v0 = sub_22BE5CE4C(&qword_27D909C88, &qword_22C2803F8);
  sub_22BE179D8(v0);
  v2 = *(v1 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v3);
  sub_22BE1B01C();
  sub_22BE23094();
  sub_22BEE0530();
  sub_22BE1B02C();
  sub_22C26E684();
  sub_22BE18CFC();
  sub_22BECD12C(v4, v5);
  sub_22BE1BE20();
  sub_22C273FA4();
  v6 = sub_22BE184A8();
  v7(v6);
  sub_22BE1965C();
  sub_22BEE93D4();
}

void ConfirmExpression.init(from:)()
{
  sub_22BE19130();
  v3 = sub_22BE3ADD8(v2);
  v4 = sub_22BE179D8(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BE17A44();
  sub_22BE365F8(v7);
  v8 = sub_22BE5CE4C(&qword_27D909C98, &qword_22C280400);
  sub_22BE179D8(v8);
  v10 = *(v9 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  v12 = sub_22BE1AED0();
  v13 = type metadata accessor for ConfirmExpression(v12);
  v14 = sub_22BE19448(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22BE179EC();
  sub_22BE1B1C4();
  v17 = v0[3];
  v18 = v0[4];
  sub_22BE360D8();
  sub_22BEE0530();
  sub_22BE23C18();
  if (!v1)
  {
    sub_22BE3246C();
    sub_22BE18CFC();
    sub_22BECD12C(v19, v20);
    sub_22BE19160();
    v21 = sub_22BE18824();
    v22(v21);
    v23 = sub_22BE28714();
    v24(v23);
    sub_22BEE9070();
    v25 = sub_22BE33BE8();
    sub_22BEC32B8(v25, v26);
  }

  sub_22BE26B64(v0);
  sub_22BE1AB28();
  sub_22BE18478();
}

uint64_t SearchExpression.query.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return sub_22BE19454();
}

uint64_t SearchExpression.query.setter()
{
  sub_22BE1A8A8();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

IntelligenceFlowPlannerSupport::SearchExpression __swiftcall SearchExpression.init(query:isLowConfidenceKnowledge:pickOne:shouldOpenResultIfApplicable:)(IntelligenceFlowPlannerSupport::SearchExpression query, Swift::Bool isLowConfidenceKnowledge, Swift::Bool pickOne, Swift::Bool shouldOpenResultIfApplicable)
{
  *v4 = query.query;
  *(v4 + 16) = isLowConfidenceKnowledge;
  *(v4 + 17) = pickOne;
  *(v4 + 18) = shouldOpenResultIfApplicable;
  query.isLowConfidenceKnowledge = isLowConfidenceKnowledge;
  return query;
}

uint64_t sub_22BED4DA0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7972657571 && a2 == 0xE500000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000018 && 0x800000022C2D3850 == a2;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656E4F6B636970 && a2 == 0xE700000000000000;
      if (v7 || (sub_22C274014() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD00000000000001CLL && 0x800000022C2D3870 == a2)
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

unint64_t sub_22BED4F00(char a1)
{
  result = 0x7972657571;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000018;
      break;
    case 2:
      result = 0x656E4F6B636970;
      break;
    case 3:
      result = 0xD00000000000001CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22BED4F94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BED4DA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BED4FBC(uint64_t a1)
{
  v2 = sub_22BEE0584();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BED4FF8(uint64_t a1)
{
  v2 = sub_22BEE0584();

  return MEMORY[0x2821FE720](a1, v2);
}

void SearchExpression.encode(to:)()
{
  sub_22BE19130();
  sub_22BE3FF70();
  v3 = sub_22BE5CE4C(&qword_27D909CA0, &qword_22C280408);
  sub_22BE179D8(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE19E64();
  v10 = *v0;
  v9 = v0[1];
  v16 = *(v0 + 16);
  v13 = *(v0 + 18);
  v14 = *(v0 + 17);
  v11 = v2[3];
  v12 = v2[4];
  sub_22BE2018C(v2);
  sub_22BEE0584();
  sub_22BE194D0();
  sub_22C273F54();
  if (!v15)
  {
    sub_22BE33FE4();
    sub_22BEE945C();
    sub_22BE200EC();
    sub_22BEE945C();
    sub_22BEE945C();
  }

  (*(v5 + 8))(v1, v3);
  sub_22BE18478();
}

void SearchExpression.init(from:)()
{
  sub_22BE19130();
  v2 = v1;
  v4 = v3;
  v5 = sub_22BE5CE4C(&qword_27D909CB0, &qword_22C280410);
  sub_22BE179D8(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE234F4();
  v11 = v2[4];
  sub_22BE26950(v2, v2[3]);
  sub_22BEE0584();
  sub_22BE48270();
  sub_22BE2BC6C();
  sub_22C274214();
  if (v0)
  {
    sub_22BE26B64(v2);
  }

  else
  {
    sub_22BE416D4();
    v12 = sub_22C273E64();
    v14 = v13;
    sub_22BE33FE4();
    sub_22BE416D4();
    v20 = sub_22C273E74();
    sub_22BE200EC();
    sub_22BE416D4();
    v19 = sub_22C273E74();
    sub_22BE416D4();
    v15 = sub_22C273E74();
    v16 = *(v7 + 8);
    v17 = sub_22BE33560();
    v18(v17);
    *v4 = v12;
    *(v4 + 8) = v14;
    *(v4 + 16) = v20 & 1;
    *(v4 + 17) = v19 & 1;
    *(v4 + 18) = v15 & 1;

    sub_22BE26B64(v2);
  }

  sub_22BE18478();
}

uint64_t StructuredSearchExpression.parameters.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t StructuredSearchExpression.returnType.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for StructuredSearchExpression(v0) + 20);
  return sub_22BE18504();
}

uint64_t StructuredSearchExpression.isExpanded.setter(char a1)
{
  result = type metadata accessor for StructuredSearchExpression(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t StructuredSearchExpression.isExpanded.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for StructuredSearchExpression(v0) + 24);
  return sub_22BE18504();
}

uint64_t StructuredSearchExpression.properties.getter()
{
  v1 = *(v0 + *(type metadata accessor for StructuredSearchExpression(0) + 28));
}

uint64_t StructuredSearchExpression.properties.setter()
{
  v2 = sub_22BE17BC4();
  v3 = *(type metadata accessor for StructuredSearchExpression(v2) + 28);
  v4 = *(v1 + v3);

  *(v1 + v3) = v0;
  return result;
}

uint64_t StructuredSearchExpression.properties.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for StructuredSearchExpression(v0) + 28);
  return sub_22BE18504();
}

uint64_t StructuredSearchExpression.StructuredSearchProperty.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return sub_22BE19454();
}

uint64_t StructuredSearchExpression.StructuredSearchProperty.name.setter()
{
  sub_22BE1A8A8();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t StructuredSearchExpression.StructuredSearchProperty.type.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return sub_22BE19454();
}

uint64_t StructuredSearchExpression.StructuredSearchProperty.type.setter()
{
  sub_22BE1A8A8();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t StructuredSearchExpression.StructuredSearchProperty.previousAnswerReference.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for StructuredSearchExpression.StructuredSearchProperty(v0) + 24);
  return sub_22BE18504();
}

uint64_t StructuredSearchExpression.StructuredSearchProperty.init(name:type:previousAnswerReference:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = *(type metadata accessor for StructuredSearchExpression.StructuredSearchProperty(0) + 24);
  sub_22C26E684();
  sub_22BE1A140();
  sub_22BE19DC4(v11, v12, v13, v14);
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return sub_22BEE05D8();
}

void static StructuredSearchExpression.StructuredSearchProperty.== infix(_:_:)()
{
  sub_22BE19460();
  v3 = sub_22BE396FC();
  v4 = sub_22BE179D8(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BE179EC();
  sub_22BE336DC();
  v9 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  sub_22BE19448(v9);
  v11 = *(v10 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  sub_22BE19E64();
  v13 = sub_22BE5CE4C(&qword_27D9092B8, &qword_22C27FEA0);
  sub_22BE18000(v13);
  v15 = *(v14 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v16);
  sub_22BE28738();
  v17 = *v2 == *v1 && v2[1] == v1[1];
  if (!v17 && (sub_22C274014() & 1) == 0)
  {
    goto LABEL_24;
  }

  v18 = v2[3];
  v19 = v1[3];
  if (!v18)
  {
    if (v19)
    {
      goto LABEL_24;
    }

LABEL_15:
    v21 = *(type metadata accessor for StructuredSearchExpression.StructuredSearchProperty(0) + 24);
    v22 = *(v13 + 48);
    sub_22BE46D10();
    sub_22BE46D10();
    sub_22BE181B0(v0);
    if (v17)
    {
      sub_22BE181B0(v0 + v22);
      if (v17)
      {
        sub_22BE33928(v0, &qword_27D907240, &unk_22C2B5B80);
        goto LABEL_24;
      }
    }

    else
    {
      sub_22BE191CC();
      sub_22BE2BE3C();
      sub_22BE181B0(v0 + v22);
      if (!v23)
      {
        v26 = sub_22BEE9484(v6);
        v27(v26);
        sub_22BE18CFC();
        sub_22BECD12C(v28, v29);
        sub_22BE1AB74();
        sub_22C272FD4();
        v30 = *(v6 + 8);
        v31 = sub_22BE19454();
        v30(v31);
        v32 = sub_22BE3C5E4();
        v30(v32);
        sub_22BE33928(v0, &qword_27D907240, &unk_22C2B5B80);
        goto LABEL_24;
      }

      v24 = sub_22BE2399C();
      v25(v24, v3);
    }

    sub_22BE33928(v0, &qword_27D9092B8, &qword_22C27FEA0);
    goto LABEL_24;
  }

  if (v19)
  {
    v20 = v2[2] == v1[2] && v18 == v19;
    if (v20 || (sub_22C274014() & 1) != 0)
    {
      goto LABEL_15;
    }
  }

LABEL_24:
  sub_22BE1AABC();
}

uint64_t sub_22BED5AC4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701869940 && a2 == 0xE400000000000000;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000017 && 0x800000022C2D3890 == a2)
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

uint64_t sub_22BED5BE4(char a1)
{
  if (!a1)
  {
    return 1701667182;
  }

  if (a1 == 1)
  {
    return 1701869940;
  }

  return 0xD000000000000017;
}

uint64_t sub_22BED5C38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BED5AC4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BED5C60(uint64_t a1)
{
  v2 = sub_22BEE0648();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BED5C9C(uint64_t a1)
{
  v2 = sub_22BEE0648();

  return MEMORY[0x2821FE720](a1, v2);
}

void StructuredSearchExpression.StructuredSearchProperty.encode(to:)()
{
  sub_22BE2BB34();
  sub_22BE27A28();
  v2 = sub_22BE5CE4C(&qword_27D909CB8, &qword_22C280418);
  sub_22BE179D8(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE25CD0();
  sub_22BE23094();
  sub_22BEE0648();
  sub_22BE194D0();
  v8 = *v1;
  v9 = v1[1];
  sub_22BE26108();
  sub_22C273F54();
  if (!v0)
  {
    v10 = v1[2];
    v11 = v1[3];
    sub_22BE33FE4();
    sub_22BE26108();
    sub_22C273EF4();
    v12 = *(type metadata accessor for StructuredSearchExpression.StructuredSearchProperty(0) + 24);
    sub_22BE200EC();
    sub_22C26E684();
    sub_22BE18CFC();
    sub_22BECD12C(v13, v14);
    sub_22BE27B84();
    sub_22BE26108();
    sub_22C273F34();
  }

  v15 = *(v4 + 8);
  v16 = sub_22BE200D4();
  v17(v16);
  sub_22BEE92C0();
  sub_22BEE93D4();
}

void StructuredSearchExpression.StructuredSearchProperty.init(from:)()
{
  sub_22BE19130();
  v3 = v2;
  v31 = v4;
  v5 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  sub_22BE19448(v5);
  v7 = *(v6 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE234F4();
  v9 = sub_22BE5CE4C(&qword_27D909CC8, &qword_22C280420);
  v32 = sub_22BE179D8(v9);
  v11 = *(v10 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE24FD8();
  v14 = type metadata accessor for StructuredSearchExpression.StructuredSearchProperty(v13);
  v15 = sub_22BE19448(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22BE179EC();
  sub_22BE1AB80();
  v19 = *(v18 + 32);
  v20 = sub_22C26E684();
  sub_22BE1A140();
  sub_22BE19DC4(v21, v22, v23, v20);
  v24 = v3[4];
  sub_22BE26950(v3, v3[3]);
  sub_22BEE0648();
  sub_22BE3CCD4();
  sub_22C274214();
  if (v0)
  {
    sub_22BE26B64(v3);
    sub_22BE33928(v1 + v19, &qword_27D907240, &unk_22C2B5B80);
  }

  else
  {
    sub_22BE36514();
    *v1 = sub_22C273E64();
    v1[1] = v25;
    sub_22BE33FE4();
    sub_22BE36514();
    v1[2] = sub_22C273E04();
    v1[3] = v26;
    sub_22BE200EC();
    sub_22BE18CFC();
    sub_22BECD12C(v27, v28);
    sub_22BE36514();
    sub_22C273E44();
    v29 = sub_22BEE9178();
    v30(v29, v32);
    sub_22BEE05D8();
    sub_22BEDFD40(v1, v31);
    sub_22BE26B64(v3);
    sub_22BEC3264();
  }

  sub_22BE467E4();
  sub_22BE18478();
}

uint64_t StructuredSearchExpression.init(parameters:returnType:properties:)()
{
  v3 = sub_22BE37898();
  v4 = type metadata accessor for StructuredSearchExpression(v3);
  v5 = v4[5];
  sub_22C2728A4();
  sub_22BE1A140();
  sub_22BE19DC4(v6, v7, v8, v9);
  *v2 = v1;
  result = sub_22BEE05D8();
  *(v2 + v4[7]) = v0;
  *(v2 + v4[6]) = 0;
  return result;
}

uint64_t StructuredSearchExpression.init(parameters:returnType:isExpanded:properties:)@<X0>(uint64_t a1@<X0>, char a2@<W2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v8 = type metadata accessor for StructuredSearchExpression(0);
  v9 = v8[5];
  sub_22C2728A4();
  sub_22BE1A140();
  sub_22BE19DC4(v10, v11, v12, v13);
  *a4 = a1;
  result = sub_22BEE05D8();
  *(a4 + v8[6]) = a2;
  *(a4 + v8[7]) = a3;
  return result;
}

uint64_t sub_22BED62A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574656D61726170 && a2 == 0xEA00000000007372;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x79546E7275746572 && a2 == 0xEA00000000006570;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x646E617078457369 && a2 == 0xEA00000000006465;
      if (v7 || (sub_22C274014() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x69747265706F7270 && a2 == 0xEA00000000007365)
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

uint64_t sub_22BED6404(char a1)
{
  result = 0x6574656D61726170;
  switch(a1)
  {
    case 1:
      result = 0x79546E7275746572;
      break;
    case 2:
      result = 0x646E617078457369;
      break;
    case 3:
      result = 0x69747265706F7270;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22BED649C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BED62A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BED64C4(uint64_t a1)
{
  v2 = sub_22BEE069C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BED6500(uint64_t a1)
{
  v2 = sub_22BEE069C();

  return MEMORY[0x2821FE720](a1, v2);
}

void StructuredSearchExpression.encode(to:)()
{
  sub_22BE2BB34();
  sub_22BE22950();
  v2 = sub_22BE5CE4C(&qword_27D909CD0, &qword_22C280428);
  sub_22BE179D8(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE19E64();
  sub_22BE23094();
  sub_22BEE069C();
  sub_22BE194D0();
  v16 = *v1;
  sub_22BE5CE4C(&qword_27D909BF8, &qword_22C2803A0);
  sub_22BEE0214();
  sub_22BE37DD4();
  sub_22BE196CC();
  sub_22C273FA4();
  if (!v0)
  {
    v8 = type metadata accessor for StructuredSearchExpression(0);
    v9 = v8[5];
    sub_22C2728A4();
    sub_22BE3E2B8();
    sub_22BECD12C(v10, v11);
    sub_22BE196CC();
    sub_22C273F34();
    v12 = *(v1 + v8[6]);
    sub_22BE230B8();
    sub_22C273F64();
    v17 = *(v1 + v8[7]);
    sub_22BE5CE4C(&qword_27D909CE8, &qword_22C280430);
    sub_22BEE06F0();
    sub_22BE37DD4();
    sub_22BE196CC();
    sub_22C273FA4();
  }

  v13 = *(v4 + 8);
  v14 = sub_22BE1AB74();
  v15(v14);
  sub_22BEE92C0();
  sub_22BEE93D4();
}

void StructuredSearchExpression.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  v13 = v12;
  v39 = v14;
  v15 = sub_22BE5CE4C(&qword_27D9092E8, &qword_22C288A90);
  sub_22BE19448(v15);
  v17 = *(v16 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v18);
  sub_22BE1B72C();
  v19 = sub_22BE5CE4C(&qword_27D909D00, &qword_22C280438);
  sub_22BE179D8(v19);
  v21 = *(v20 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v22);
  sub_22BE1A8B4();
  v23 = type metadata accessor for StructuredSearchExpression(0);
  v24 = sub_22BE18000(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  sub_22BE179EC();
  sub_22BE22DB8();
  v28 = *(v27 + 20);
  v29 = sub_22C2728A4();
  v30 = v11;
  sub_22BE1A140();
  sub_22BE19DC4(v31, v32, v33, v29);
  v34 = v13[4];
  sub_22BE26950(v13, v13[3]);
  sub_22BEE069C();
  sub_22BEE939C();
  sub_22C274214();
  if (v10)
  {
    sub_22BE26B64(v13);
    sub_22BE33928(v30 + v28, &qword_27D9092E8, &qword_22C288A90);
  }

  else
  {
    sub_22BE5CE4C(&qword_27D909BF8, &qword_22C2803A0);
    sub_22BEE02D0();
    sub_22BE35E60();
    sub_22BE3C974();
    sub_22C273EB4();
    *v30 = a10;
    sub_22BE3E2B8();
    sub_22BECD12C(v35, v36);
    sub_22BE3C974();
    sub_22C273E44();
    sub_22BEE05D8();
    LOBYTE(a10) = 2;
    sub_22BE3C974();
    *(v30 + *(v23 + 24)) = sub_22C273E74() & 1;
    sub_22BE5CE4C(&qword_27D909CE8, &qword_22C280430);
    sub_22BEE07A4();
    sub_22BE35E60();
    sub_22BE3C974();
    sub_22C273EB4();
    v37 = sub_22BE3C118();
    v38(v37);
    *(v30 + *(v23 + 28)) = a10;
    sub_22BEDFD40(v30, v39);
    sub_22BE26B64(v13);
    sub_22BE22B04();
    sub_22BEC3264();
  }

  sub_22BE467E4();
  sub_22BE18478();
}

uint64_t ActionClass.description.getter()
{
  result = 0x6E65746E49707061;
  switch(*v0)
  {
    case 1:
      result = 0x6341746E65696C63;
      break;
    case 2:
      result = 0x616D65686373;
      break;
    case 3:
      result = 0x6E49746C697562;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22BED6B6C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65746E49707061 && a2 == 0xE900000000000074;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6341746E65696C63 && a2 == 0xEC0000006E6F6974;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x616D65686373 && a2 == 0xE600000000000000;
      if (v7 || (sub_22C274014() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6E49746C697562 && a2 == 0xE700000000000000)
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

uint64_t sub_22BED6CCC(char a1)
{
  result = 0x6E65746E49707061;
  switch(a1)
  {
    case 1:
      result = 0x6341746E65696C63;
      break;
    case 2:
      result = 0x616D65686373;
      break;
    case 3:
      result = 0x6E49746C697562;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22BED6D58(uint64_t a1)
{
  v2 = sub_22BEE09A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BED6D94(uint64_t a1)
{
  v2 = sub_22BEE09A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BED6DD0(uint64_t a1)
{
  v2 = sub_22BEE08AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BED6E0C(uint64_t a1)
{
  v2 = sub_22BEE08AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BED6E48(uint64_t a1)
{
  v2 = sub_22BEE0954();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BED6E84(uint64_t a1)
{
  v2 = sub_22BEE0954();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BED6EC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BED6B6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BED6EF0(uint64_t a1)
{
  v2 = sub_22BEE0858();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BED6F2C(uint64_t a1)
{
  v2 = sub_22BEE0858();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BED6F68(uint64_t a1)
{
  v2 = sub_22BEE0900();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BED6FA4(uint64_t a1)
{
  v2 = sub_22BEE0900();

  return MEMORY[0x2821FE720](a1, v2);
}

void ActionClass.encode(to:)()
{
  sub_22BE19130();
  sub_22BE3FF70();
  v2 = sub_22BE5CE4C(&qword_27D909D20, &qword_22C280440);
  sub_22BE179D8(v2);
  v47 = v3;
  v5 = *(v4 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE20168(v7, v40);
  v8 = sub_22BE5CE4C(&qword_27D909D28, &qword_22C280448);
  sub_22BE179D8(v8);
  v45 = v9;
  v11 = *(v10 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  sub_22BE1A174();
  sub_22BEE94C8(v13);
  v14 = sub_22BE5CE4C(&qword_27D909D30, &qword_22C280450);
  sub_22BE179D8(v14);
  v43 = v15;
  v17 = *(v16 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v18);
  sub_22BE2BA30(v19, v41);
  v20 = sub_22BE5CE4C(&qword_27D909D38, &qword_22C280458);
  sub_22BE179D8(v20);
  v22 = *(v21 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v23);
  sub_22BE1B01C();
  v24 = sub_22BE5CE4C(&qword_27D909D40, &qword_22C280460);
  sub_22BE179D8(v24);
  v26 = v25;
  v28 = *(v27 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v29);
  sub_22BE1A8B4();
  v30 = *v0;
  v32 = v1[3];
  v31 = v1[4];
  sub_22BE2018C(v1);
  sub_22BEE0858();
  sub_22BEE939C();
  sub_22C274234();
  switch(v30)
  {
    case 1:
      sub_22BE38948();
      sub_22BEE0954();
      v35 = v42;
      sub_22BEE9124();
      sub_22C273EE4();
      v36 = v43;
      goto LABEL_6;
    case 2:
      sub_22BEE0900();
      v35 = v44;
      sub_22BEE9124();
      sub_22C273EE4();
      v36 = v45;
      goto LABEL_6;
    case 3:
      sub_22BEE9478();
      sub_22BEE08AC();
      v35 = v46;
      sub_22BEE9124();
      sub_22C273EE4();
      v36 = v47;
LABEL_6:
      v34 = *(v36 + 8);
      v33 = v35;
      break;
    default:
      sub_22BEE09A8();
      sub_22BE1B934();
      sub_22C273EE4();
      v33 = sub_22BE39058();
      break;
  }

  v34(v33);
  v37 = *(v26 + 8);
  v38 = sub_22BE38FD8();
  v39(v38);
  sub_22BE18478();
}

uint64_t _s30IntelligenceFlowPlannerSupport12ToolBoxErrorO9hashValueSivg_0()
{
  v1 = *v0;
  sub_22BE25DAC();
  sub_22BE290B4();
  return sub_22C2741A4();
}

void ActionClass.init(from:)()
{
  sub_22BE19130();
  sub_22BE3FF70();
  v55 = v2;
  v58 = sub_22BE5CE4C(&qword_27D909D70, &qword_22C280468);
  sub_22BE179D8(v58);
  v54 = v3;
  v5 = *(v4 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE1A174();
  v57 = v7;
  v8 = sub_22BE5CE4C(&qword_27D909D78, &qword_22C280470);
  sub_22BE179D8(v8);
  v10 = *(v9 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  sub_22BE1A174();
  sub_22BEE94C8(v12);
  v13 = sub_22BE5CE4C(&qword_27D909D80, &qword_22C280478);
  sub_22BE179D8(v13);
  v15 = *(v14 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v16);
  sub_22BE234F4();
  v17 = sub_22BE5CE4C(&qword_27D909D88, &qword_22C280480);
  sub_22BE179D8(v17);
  v19 = *(v18 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v20);
  sub_22BE1B01C();
  v21 = sub_22BE5CE4C(&qword_27D909D90, &qword_22C280488);
  sub_22BE179D8(v21);
  v56 = v22;
  v24 = *(v23 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v25);
  sub_22BE19E64();
  v26 = v1[4];
  sub_22BE26950(v1, v1[3]);
  sub_22BEE0858();
  sub_22C274214();
  if (!v59)
  {
    v60 = v1;
    v27 = v0;
    v28 = sub_22C273ED4();
    sub_22BE7C5C4(v28, 0);
    if (v30 != v29 >> 1)
    {
      sub_22BE38A18();
      sub_22BE3E9D8();
      if (v33 == v34)
      {
        __break(1u);
        return;
      }

      v35 = *(v32 + v31);
      sub_22BE7C5C0(v31 + 1);
      v37 = v36;
      v39 = v38;
      swift_unknownObjectRelease();
      if (v37 == v39 >> 1)
      {
        switch(v35)
        {
          case 1:
            sub_22BE38948();
            sub_22BEE0954();
            sub_22BEE9320();
            swift_unknownObjectRelease();
            goto LABEL_14;
          case 2:
            sub_22BEE0900();
            sub_22BEE9320();
            swift_unknownObjectRelease();
LABEL_14:
            v40 = sub_22BE2399C();
            goto LABEL_15;
          case 3:
            sub_22BEE9478();
            sub_22BEE08AC();
            sub_22C273DE4();
            swift_unknownObjectRelease();
            (*(v54 + 8))(v57, v58);
            goto LABEL_16;
          default:
            sub_22BEE09A8();
            sub_22BEE9320();
            swift_unknownObjectRelease();
            v40 = sub_22BE2399C();
            v42 = v17;
LABEL_15:
            v41(v40, v42);
LABEL_16:
            (*(v56 + 8))(v27, v21);
            *v55 = v35;
            sub_22BE26B64(v60);
            break;
        }

        goto LABEL_10;
      }
    }

    v43 = sub_22C273B34();
    sub_22BE196B4();
    v45 = v44;
    v46 = *(sub_22BE5CE4C(&qword_27D907968, &qword_22C2768D0) + 48);
    *v45 = &type metadata for ActionClass;
    sub_22C273DF4();
    sub_22BE1B198();
    v47 = *MEMORY[0x277D84160];
    sub_22BE1BC24(v43);
    v49 = *(v48 + 104);
    v50 = sub_22BE38608();
    v51(v50);
    swift_willThrow();
    swift_unknownObjectRelease();
    v52 = sub_22BEE9178();
    v53(v52, v21);
    v1 = v60;
  }

  sub_22BE26B64(v1);
LABEL_10:
  sub_22BE18478();
}

uint64_t sub_22BED79A4(uint64_t a1)
{
  v2 = sub_22BEE09FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BED79E0(uint64_t a1)
{
  v2 = sub_22BEE09FC();

  return MEMORY[0x2821FE720](a1, v2);
}

void PickOneExpression.encode(to:)()
{
  sub_22BE2BB34();
  sub_22BE1B980();
  v0 = sub_22BE5CE4C(&qword_27D909D98, &qword_22C280490);
  sub_22BE179D8(v0);
  v2 = *(v1 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v3);
  sub_22BE1B01C();
  sub_22BE23094();
  sub_22BEE09FC();
  sub_22BE1B02C();
  sub_22C26E684();
  sub_22BE18CFC();
  sub_22BECD12C(v4, v5);
  sub_22BE1BE20();
  sub_22C273FA4();
  v6 = sub_22BE184A8();
  v7(v6);
  sub_22BE1965C();
  sub_22BEE93D4();
}

void PickOneExpression.init(from:)()
{
  sub_22BE19130();
  v3 = sub_22BE3ADD8(v2);
  v4 = sub_22BE179D8(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BE17A44();
  sub_22BE365F8(v7);
  v8 = sub_22BE5CE4C(&qword_27D909DA8, &qword_22C280498);
  sub_22BE179D8(v8);
  v10 = *(v9 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  v12 = sub_22BE1AED0();
  v13 = type metadata accessor for PickOneExpression(v12);
  v14 = sub_22BE19448(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22BE179EC();
  sub_22BE1B1C4();
  v17 = v0[3];
  v18 = v0[4];
  sub_22BE360D8();
  sub_22BEE09FC();
  sub_22BE23C18();
  if (!v1)
  {
    sub_22BE3246C();
    sub_22BE18CFC();
    sub_22BECD12C(v19, v20);
    sub_22BE19160();
    v21 = sub_22BE18824();
    v22(v21);
    v23 = sub_22BE28714();
    v24(v23);
    sub_22BE1C18C();
    v25 = sub_22BE33BE8();
    sub_22BEC32B8(v25, v26);
  }

  sub_22BE26B64(v0);
  sub_22BE1AB28();
  sub_22BE18478();
}

IntelligenceFlowPlannerSupport::ResolveToolExpression __swiftcall ResolveToolExpression.init(toolIds:)(Swift::OpaquePointer toolIds)
{
  v3 = v1;
  v4 = *(toolIds._rawValue + 2);
  if (v4)
  {
    v13 = v1;
    v14 = MEMORY[0x277D84F90];
    sub_22BE71064(0, v4, 0);
    v5 = v14;
    v6 = (toolIds._rawValue + 40);
    do
    {
      v8 = *(v6 - 1);
      v7 = *v6;
      v10 = *(v14 + 16);
      v9 = *(v14 + 24);

      if (v10 >= v9 >> 1)
      {
        sub_22BE71064(v9 > 1, v10 + 1, 1);
      }

      *(v14 + 16) = v10 + 1;
      v11 = v14 + 40 * v10;
      *(v11 + 32) = v8;
      *(v11 + 40) = v7;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      v6 += 2;
      --v4;
    }

    while (v4);

    v3 = v13;
  }

  else
  {

    v5 = MEMORY[0x277D84F90];
  }

  *v3 = v5;
  return result;
}

uint64_t sub_22BED7E28(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7364496C6F6F74 && a2 == 0xE700000000000000)
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

uint64_t sub_22BED7EBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BED7E28(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22BED7EE8(uint64_t a1)
{
  v2 = sub_22BEE0A50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BED7F24(uint64_t a1)
{
  v2 = sub_22BEE0A50();

  return MEMORY[0x2821FE720](a1, v2);
}

void ResolveToolExpression.encode(to:)()
{
  sub_22BE19130();
  v2 = v1;
  v3 = sub_22BE5CE4C(&qword_27D909DB0, &qword_22C2804A0);
  sub_22BE179D8(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE25CD0();
  v9 = *v0;
  v10 = v2[4];
  sub_22BE26950(v2, v2[3]);
  sub_22BEE0A50();

  sub_22BE2BC6C();
  sub_22C274234();
  sub_22BE5CE4C(&qword_27D909DC0, &qword_22C2804A8);
  sub_22BEE0AA4(&qword_27D909DC8, sub_22BEB9C9C);
  sub_22BE37DD4();
  sub_22BE27B84();
  sub_22C273FA4();

  v11 = *(v5 + 8);
  v12 = sub_22BE200D4();
  v13(v12);
  sub_22BEE94B0();
  sub_22BE18478();
}

void ResolveToolExpression.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  v12 = v11;
  v14 = v13;
  v15 = sub_22BE5CE4C(&qword_27D909DD0, &qword_22C2804B0);
  sub_22BE179D8(v15);
  v17 = v16;
  v19 = *(v18 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v20);
  sub_22BE1B01C();
  v21 = v12[4];
  sub_22BE26950(v12, v12[3]);
  sub_22BEE0A50();
  sub_22BE232E4();
  sub_22BE2BC6C();
  sub_22C274214();
  if (!v10)
  {
    sub_22BE5CE4C(&qword_27D909DC0, &qword_22C2804A8);
    sub_22BEE0AA4(&qword_27D909DD8, sub_22BEB9D44);
    sub_22BE33B10();
    v22 = *(v17 + 8);
    v23 = sub_22BE1AB1C();
    v24(v23);
    *v14 = a10;
  }

  sub_22BE26B64(v12);
  sub_22BE46D98();
  sub_22BE18478();
}

uint64_t sub_22BED82D0(uint64_t a1)
{
  v2 = sub_22BEE0B1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BED830C(uint64_t a1)
{
  v2 = sub_22BEE0B1C();

  return MEMORY[0x2821FE720](a1, v2);
}

void UndoExpression.encode(to:)()
{
  sub_22BE2BB34();
  sub_22BE1B980();
  v0 = sub_22BE5CE4C(&qword_27D909DE0, &qword_22C2804B8);
  sub_22BE179D8(v0);
  v2 = *(v1 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v3);
  sub_22BE1B01C();
  sub_22BE23094();
  sub_22BEE0B1C();
  sub_22BE1B02C();
  sub_22C26E684();
  sub_22BE18CFC();
  sub_22BECD12C(v4, v5);
  sub_22BE1BE20();
  sub_22C273F34();
  v6 = sub_22BE184A8();
  v7(v6);
  sub_22BE1965C();
  sub_22BEE93D4();
}

void UndoExpression.init(from:)()
{
  sub_22BE19130();
  sub_22BEE92B0(v2);
  v3 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  sub_22BE19448(v3);
  v5 = *(v4 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE25CD0();
  v7 = sub_22BE5CE4C(&qword_27D909DF0, &qword_22C2804C0);
  sub_22BE179D8(v7);
  v9 = *(v8 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  v11 = sub_22BE24FD8();
  v12 = type metadata accessor for UndoExpression(v11);
  v13 = sub_22BE19448(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22BE179EC();
  sub_22BE37EA4();
  v16 = sub_22C26E684();
  sub_22BE18204(v16);
  sub_22BEE0B1C();
  sub_22BE32C48();
  if (!v1)
  {
    sub_22BE18CFC();
    sub_22BECD12C(v17, v18);
    sub_22BE29E58();
    v19 = sub_22BE25F08();
    v20(v19);
    sub_22BE29454();
    sub_22BEE05D8();
    v21 = sub_22BE25C08();
    sub_22BEDFD40(v21, v22);
  }

  sub_22BE26B64(v0);
  sub_22BEE922C();
  sub_22BEC3264();
  sub_22BE1AB28();
  sub_22BE18478();
}

uint64_t sub_22BED864C(uint64_t a1)
{
  v2 = sub_22BEE0B70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BED8688(uint64_t a1)
{
  v2 = sub_22BEE0B70();

  return MEMORY[0x2821FE720](a1, v2);
}

void RejectExpression.encode(to:)()
{
  sub_22BE2BB34();
  sub_22BE1B980();
  v0 = sub_22BE5CE4C(&qword_27D909DF8, &qword_22C2804C8);
  sub_22BE179D8(v0);
  v2 = *(v1 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v3);
  sub_22BE1B01C();
  sub_22BE23094();
  sub_22BEE0B70();
  sub_22BE1B02C();
  sub_22C26E684();
  sub_22BE18CFC();
  sub_22BECD12C(v4, v5);
  sub_22BE1BE20();
  sub_22C273FA4();
  v6 = sub_22BE184A8();
  v7(v6);
  sub_22BE1965C();
  sub_22BEE93D4();
}

void RejectExpression.init(from:)()
{
  sub_22BE19130();
  v3 = sub_22BE3ADD8(v2);
  v4 = sub_22BE179D8(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BE17A44();
  sub_22BE365F8(v7);
  v8 = sub_22BE5CE4C(&qword_27D909E08, &qword_22C2804D0);
  sub_22BE179D8(v8);
  v10 = *(v9 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  v12 = sub_22BE1AED0();
  v13 = type metadata accessor for RejectExpression(v12);
  v14 = sub_22BE19448(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22BE179EC();
  sub_22BE1B1C4();
  v17 = v0[3];
  v18 = v0[4];
  sub_22BE360D8();
  sub_22BEE0B70();
  sub_22BE23C18();
  if (!v1)
  {
    sub_22BE3246C();
    sub_22BE18CFC();
    sub_22BECD12C(v19, v20);
    sub_22BE19160();
    v21 = sub_22BE18824();
    v22(v21);
    v23 = sub_22BE28714();
    v24(v23);
    sub_22BEE9058();
    v25 = sub_22BE33BE8();
    sub_22BEC32B8(v25, v26);
  }

  sub_22BE26B64(v0);
  sub_22BE1AB28();
  sub_22BE18478();
}

uint64_t sub_22BED89C4(uint64_t a1)
{
  v2 = sub_22BEE0BC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BED8A00(uint64_t a1)
{
  v2 = sub_22BEE0BC4();

  return MEMORY[0x2821FE720](a1, v2);
}

void CancelExpression.encode(to:)()
{
  sub_22BE2BB34();
  sub_22BE1B980();
  v0 = sub_22BE5CE4C(&qword_27D909E10, &qword_22C2804D8);
  sub_22BE179D8(v0);
  v2 = *(v1 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v3);
  sub_22BE1B01C();
  sub_22BE23094();
  sub_22BEE0BC4();
  sub_22BE1B02C();
  sub_22C26E684();
  sub_22BE18CFC();
  sub_22BECD12C(v4, v5);
  sub_22BE1BE20();
  sub_22C273FA4();
  v6 = sub_22BE184A8();
  v7(v6);
  sub_22BE1965C();
  sub_22BEE93D4();
}

void CancelExpression.init(from:)()
{
  sub_22BE19130();
  v3 = sub_22BE3ADD8(v2);
  v4 = sub_22BE179D8(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BE17A44();
  sub_22BE365F8(v7);
  v8 = sub_22BE5CE4C(&qword_27D909E20, &qword_22C2804E0);
  sub_22BE179D8(v8);
  v10 = *(v9 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  v12 = sub_22BE1AED0();
  v13 = type metadata accessor for CancelExpression(v12);
  v14 = sub_22BE19448(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22BE179EC();
  sub_22BE1B1C4();
  v17 = v0[3];
  v18 = v0[4];
  sub_22BE360D8();
  sub_22BEE0BC4();
  sub_22BE23C18();
  if (!v1)
  {
    sub_22BE3246C();
    sub_22BE18CFC();
    sub_22BECD12C(v19, v20);
    sub_22BE19160();
    v21 = sub_22BE18824();
    v22(v21);
    v23 = sub_22BE28714();
    v24(v23);
    sub_22BE41284();
    v25 = sub_22BE33BE8();
    sub_22BEC32B8(v25, v26);
  }

  sub_22BE26B64(v0);
  sub_22BE1AB28();
  sub_22BE18478();
}

uint64_t sub_22BED8D48(uint64_t a1)
{
  v2 = sub_22C26E684();
  sub_22BE18000(v2);
  v4 = *(v3 + 32);
  v5 = sub_22BE291BC();

  return v6(v5, a1);
}

uint64_t sub_22BED8DA8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E656D6574617473 && a2 == 0xEB00000000644974)
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

uint64_t sub_22BED8E14(uint64_t a1)
{
  v2 = sub_22BEE0C18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BED8E50(uint64_t a1)
{
  v2 = sub_22BEE0C18();

  return MEMORY[0x2821FE720](a1, v2);
}

void OpenExpression.encode(to:)()
{
  sub_22BE2BB34();
  sub_22BE1B980();
  v0 = sub_22BE5CE4C(&qword_27D909E28, &qword_22C2804E8);
  sub_22BE179D8(v0);
  v2 = *(v1 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v3);
  sub_22BE1B01C();
  sub_22BE23094();
  sub_22BEE0C18();
  sub_22BE1B02C();
  sub_22C26E684();
  sub_22BE18CFC();
  sub_22BECD12C(v4, v5);
  sub_22BE1BE20();
  sub_22C273FA4();
  v6 = sub_22BE184A8();
  v7(v6);
  sub_22BE1965C();
  sub_22BEE93D4();
}

void OpenExpression.init(from:)()
{
  sub_22BE19130();
  v3 = sub_22BE3ADD8(v2);
  v4 = sub_22BE179D8(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BE17A44();
  sub_22BE365F8(v7);
  v8 = sub_22BE5CE4C(&qword_27D909E38, &qword_22C2804F0);
  sub_22BE179D8(v8);
  v10 = *(v9 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  v12 = sub_22BE1AED0();
  v13 = type metadata accessor for OpenExpression(v12);
  v14 = sub_22BE19448(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22BE179EC();
  sub_22BE1B1C4();
  v17 = v0[3];
  v18 = v0[4];
  sub_22BE360D8();
  sub_22BEE0C18();
  sub_22BE23C18();
  if (!v1)
  {
    sub_22BE3246C();
    sub_22BE18CFC();
    sub_22BECD12C(v19, v20);
    sub_22BE19160();
    v21 = sub_22BE18824();
    v22(v21);
    v23 = sub_22BE28714();
    v24(v23);
    sub_22BE3BED0();
    v25 = sub_22BE33BE8();
    sub_22BEC32B8(v25, v26);
  }

  sub_22BE26B64(v0);
  sub_22BE1AB28();
  sub_22BE18478();
}

uint64_t sub_22BED91A4(uint64_t a1)
{
  v2 = sub_22BEE0C6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BED91E0(uint64_t a1)
{
  v2 = sub_22BEE0C6C();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_22BED9250()
{
  sub_22BE19130();
  v18 = v1;
  v3 = v2;
  v6 = sub_22BE5CE4C(v4, v5);
  sub_22BE179D8(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  sub_22BE25CD0();
  v12 = *v0;
  v13 = v3[4];
  v14 = sub_22BE26950(v3, v3[3]);
  v18(v14);

  sub_22C274234();
  sub_22BE5CE4C(&qword_27D909810, &qword_22C280148);
  sub_22BEDF05C();
  sub_22BE37DD4();
  sub_22BE27B84();
  sub_22C273FA4();

  v15 = *(v8 + 8);
  v16 = sub_22BE200D4();
  v17(v16);
  sub_22BEE94B0();
  sub_22BE18478();
}

void sub_22BED93C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  v12 = v11;
  v14 = v13;
  v29 = v15;
  v18 = sub_22BE5CE4C(v16, v17);
  sub_22BE179D8(v18);
  v20 = *(v19 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v21);
  sub_22BE1B01C();
  v22 = v14[3];
  v23 = v14[4];
  v24 = sub_22BE29264();
  v26 = sub_22BE26950(v24, v25);
  v12(v26);
  sub_22BEE94BC();
  sub_22C274214();
  if (!v10)
  {
    sub_22BE5CE4C(&qword_27D909810, &qword_22C280148);
    sub_22BEDF2B4();
    sub_22BE33B10();
    v27 = sub_22BE35B0C();
    v28(v27);
    *v29 = a10;
  }

  sub_22BE26B64(v14);
  sub_22BE46D98();
  sub_22BE18478();
}

uint64_t sub_22BED9540(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x736D657469 && a2 == 0xE500000000000000)
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

uint64_t sub_22BED95A4(uint64_t a1)
{
  v2 = sub_22BEE0CC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BED95E0(uint64_t a1)
{
  v2 = sub_22BEE0CC0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BED96D4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7972657571 && a2 == 0xE500000000000000)
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

uint64_t sub_22BED9738(uint64_t a1)
{
  v2 = sub_22BEE0D14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BED9774(uint64_t a1)
{
  v2 = sub_22BEE0D14();

  return MEMORY[0x2821FE720](a1, v2);
}

void SiriXFallbackExpression.encode(to:)()
{
  sub_22BE2BB34();
  sub_22BE1B980();
  v0 = sub_22BE5CE4C(&qword_27D909E70, &qword_22C280518);
  sub_22BE179D8(v0);
  v2 = *(v1 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v3);
  sub_22BE1B01C();
  sub_22BE23094();
  sub_22BEE0D14();
  sub_22BE1B02C();
  sub_22C26E684();
  sub_22BE18CFC();
  sub_22BECD12C(v4, v5);
  sub_22BE1BE20();
  sub_22C273F34();
  v6 = sub_22BE184A8();
  v7(v6);
  sub_22BE1965C();
  sub_22BEE93D4();
}

void SiriXFallbackExpression.init(from:)()
{
  sub_22BE19130();
  sub_22BEE92B0(v2);
  v3 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  sub_22BE19448(v3);
  v5 = *(v4 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE25CD0();
  v7 = sub_22BE5CE4C(&qword_27D909E80, &qword_22C280520);
  sub_22BE179D8(v7);
  v9 = *(v8 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  v11 = sub_22BE24FD8();
  v12 = type metadata accessor for SiriXFallbackExpression(v11);
  v13 = sub_22BE19448(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22BE179EC();
  sub_22BE37EA4();
  v16 = sub_22C26E684();
  sub_22BE18204(v16);
  sub_22BEE0D14();
  sub_22BE32C48();
  if (!v1)
  {
    sub_22BE18CFC();
    sub_22BECD12C(v17, v18);
    sub_22BE29E58();
    v19 = sub_22BE25F08();
    v20(v19);
    sub_22BE29454();
    sub_22BEE05D8();
    v21 = sub_22BE25C08();
    sub_22BEDFD40(v21, v22);
  }

  sub_22BE26B64(v0);
  sub_22BEC3264();
  sub_22BE1AB28();
  sub_22BE18478();
}

uint64_t UserConfirmExpression.confirmOption.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for UserConfirmExpression(v0) + 20);
  return sub_22BE18504();
}

uint64_t sub_22BED9C18()
{
  v0 = sub_22BE1A5E4();
  v2 = *(v1(v0) + 24);
  return sub_22BE2BE3C();
}

uint64_t sub_22BED9C7C()
{
  v0 = sub_22BE17BC4();
  v2 = *(v1(v0) + 24);
  return sub_22BEE05D8();
}

uint64_t UserConfirmExpression.dismissOption.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for UserConfirmExpression(v0) + 24);
  return sub_22BE18504();
}

uint64_t UserConfirmExpression.init(promptForUser:confirmOption:dismissOption:)()
{
  v0 = sub_22BE37898();
  v1 = type metadata accessor for UserConfirmExpression(v0);
  v2 = *(v1 + 20);
  v3 = sub_22C26E684();
  sub_22BE1A140();
  sub_22BE19DC4(v4, v5, v6, v3);
  v7 = *(v1 + 24);
  sub_22BE1A140();
  sub_22BE19DC4(v8, v9, v10, v3);
  sub_22BE1BC24(v3);
  v12 = *(v11 + 32);
  v13 = sub_22BE1C2A0();
  v14(v13);
  sub_22BEE05D8();
  return sub_22BEE05D8();
}

uint64_t sub_22BED9DDC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F4674706D6F7270 && a2 == 0xED00007265735572;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4F6D7269666E6F63 && a2 == 0xED00006E6F697470;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x4F7373696D736964 && a2 == 0xED00006E6F697470)
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

uint64_t sub_22BED9F04(char a1)
{
  if (!a1)
  {
    return 0x6F4674706D6F7270;
  }

  if (a1 == 1)
  {
    return 0x4F6D7269666E6F63;
  }

  return 0x4F7373696D736964;
}

uint64_t sub_22BED9F80()
{
  v1 = *v0;
  sub_22C274154();
  sub_22BE290B4();
  return sub_22C2741A4();
}

uint64_t sub_22BED9FC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BED9DDC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BED9FEC(uint64_t a1)
{
  v2 = sub_22BEE0D68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEDA028(uint64_t a1)
{
  v2 = sub_22BEE0D68();

  return MEMORY[0x2821FE720](a1, v2);
}

void UserConfirmExpression.encode(to:)()
{
  sub_22BE19130();
  sub_22BE27A28();
  v1 = sub_22BE5CE4C(&qword_27D909E88, &qword_22C280528);
  sub_22BE179D8(v1);
  v3 = v2;
  v5 = *(v4 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE25CD0();
  sub_22BE23094();
  sub_22BEE0D68();
  sub_22BE194D0();
  sub_22BE4475C();
  sub_22BE18CFC();
  sub_22BECD12C(v7, v8);
  sub_22BE20334();
  sub_22C273FA4();
  if (!v0)
  {
    v9 = type metadata accessor for UserConfirmExpression(0);
    v10 = *(v9 + 20);
    sub_22BE20334();
    sub_22C273F34();
    v11 = *(v9 + 24);
    sub_22BE20334();
    sub_22C273F34();
  }

  v12 = *(v3 + 8);
  v13 = sub_22BE200D4();
  v14(v13);
  sub_22BE467E4();
  sub_22BE18478();
}

void UserConfirmExpression.init(from:)()
{
  sub_22BE19130();
  v3 = v2;
  v34 = v4;
  v5 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  v6 = sub_22BE19448(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE183AC();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v9);
  v10 = sub_22C26E684();
  v11 = sub_22BE179D8(v10);
  v35 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BE17A44();
  v36 = v15;
  v37 = sub_22BE5CE4C(&qword_27D909E98, &qword_22C280530);
  sub_22BE179D8(v37);
  v17 = *(v16 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v18);
  sub_22BE19E64();
  v19 = type metadata accessor for UserConfirmExpression(0);
  v20 = v19 - 8;
  v21 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  sub_22BE179EC();
  sub_22BE1BC40();
  v39 = *(v20 + 28);
  sub_22BE1A140();
  sub_22BE19DC4(v22, v23, v24, v10);
  v38 = *(v20 + 32);
  sub_22BE1A140();
  sub_22BE19DC4(v25, v26, v27, v10);
  v28 = v3[4];
  sub_22BE26950(v3, v3[3]);
  sub_22BEE0D68();
  sub_22C274214();
  if (v0)
  {
    sub_22BE26B64(v3);
    sub_22BE33928(v1 + v39, &qword_27D907240, &unk_22C2B5B80);
    sub_22BE33928(v1 + v38, &qword_27D907240, &unk_22C2B5B80);
  }

  else
  {
    sub_22BE18CFC();
    sub_22BECD12C(v29, v30);
    sub_22BEE92A4();
    sub_22C273EB4();
    (*(v35 + 32))(v1, v36, v10);
    sub_22BE33FE4();
    sub_22BEE94E0();
    sub_22BEE05D8();
    sub_22BE200EC();
    sub_22BEE94E0();
    v31 = sub_22BE36C88();
    v32(v31, v37);
    sub_22BEE05D8();
    v33 = sub_22BE29370();
    sub_22BEDFD40(v33, v34);
    sub_22BE26B64(v3);
    sub_22BEE9244();
    sub_22BEC3264();
  }

  sub_22BE1AB28();
  sub_22BE18478();
}

uint64_t sub_22BEDA650(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
}

uint64_t sub_22BEDA6A4()
{
  v2 = sub_22BE17BC4();
  v4 = *(v3(v2) + 20);
  v5 = *(v1 + v4);

  *(v1 + v4) = v0;
  return result;
}

uint64_t UserDisambiguateExpression.options.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for UserDisambiguateExpression(v0) + 20);
  return sub_22BE18504();
}

uint64_t sub_22BEDA73C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F4674706D6F7270 && a2 == 0xED00007265735572;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000)
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

uint64_t sub_22BEDA80C(char a1)
{
  if (a1)
  {
    return 0x736E6F6974706FLL;
  }

  else
  {
    return 0x6F4674706D6F7270;
  }
}

uint64_t sub_22BEDA858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BEDA73C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BEDA880(uint64_t a1)
{
  v2 = sub_22BEE0DBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEDA8BC(uint64_t a1)
{
  v2 = sub_22BEE0DBC();

  return MEMORY[0x2821FE720](a1, v2);
}

void UserDisambiguateExpression.encode(to:)()
{
  sub_22BE2BB34();
  sub_22BE22950();
  v1 = sub_22BE5CE4C(&qword_27D909EA0, &qword_22C280538);
  sub_22BE179D8(v1);
  v3 = v2;
  v5 = *(v4 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE19E64();
  sub_22BE23094();
  sub_22BEE0DBC();
  sub_22BE194D0();
  sub_22BE4475C();
  sub_22BE18CFC();
  sub_22BECD12C(v7, v8);
  sub_22BEE92A4();
  sub_22BE196CC();
  sub_22C273FA4();
  if (!v0)
  {
    v9 = type metadata accessor for UserDisambiguateExpression(0);
    sub_22BE35C64(v9);
    sub_22BE5CE4C(&qword_27D909810, &qword_22C280148);
    sub_22BEDF05C();
    sub_22BE196CC();
    sub_22C273FA4();
  }

  v10 = *(v3 + 8);
  v11 = sub_22BE1AB74();
  v12(v11);
  sub_22BEE92C0();
  sub_22BEE93D4();
}

void UserDisambiguateExpression.init(from:)()
{
  sub_22BE19130();
  v27 = sub_22BEE9360(v2);
  v3 = sub_22BE179D8(v27);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE179EC();
  sub_22BE1AB80();
  v6 = sub_22BE5CE4C(&qword_27D909EB0, &unk_22C280540);
  sub_22BE179D8(v6);
  v8 = *(v7 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  v10 = sub_22BE24FD8();
  v11 = type metadata accessor for UserDisambiguateExpression(v10);
  v12 = sub_22BE18000(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22BE179EC();
  v16 = v0[3];
  v15 = v0[4];
  v17 = sub_22BE41FB4();
  sub_22BE26950(v17, v18);
  sub_22BEE0DBC();
  sub_22BE3CCD4();
  sub_22BEE940C();
  if (v1)
  {
    sub_22BE26B64(v0);
  }

  else
  {
    sub_22BE32E44();
    sub_22BE18CFC();
    sub_22BECD12C(v19, v20);
    sub_22BE2BB84();
    v21 = sub_22BEE9134();
    v22(v21);
    sub_22BE5CE4C(&qword_27D909810, &qword_22C280148);
    sub_22BE33FE4();
    sub_22BEDF2B4();
    sub_22BEE90F4();
    v23 = sub_22BE25424();
    v24(v23);
    sub_22BE35D34();
    v25 = sub_22BE431F0();
    sub_22BEDFD40(v25, v26);
    sub_22BE26B64(v0);
    sub_22BE414E0();
    sub_22BEC3264();
  }

  sub_22BE46D98();
  sub_22BE18478();
}

void static AnswerSynthesisExpression.ExtractionCandidate.== infix(_:_:)()
{
  sub_22BE19460();
  v4 = v3;
  v6 = v5;
  v33 = sub_22C26E684();
  v7 = sub_22BE179D8(v33);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE179EC();
  sub_22BE28738();
  v12 = type metadata accessor for AnswerSynthesisExpression.ExtractionCandidate(0);
  v13 = sub_22BE18000(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22BE183AC();
  v18 = (v16 - v17);
  MEMORY[0x28223BE20](v19);
  sub_22BE25A90();
  v20 = sub_22BE5CE4C(&qword_27D9092D0, &off_22C27FEB8);
  sub_22BE19448(v20);
  v22 = *(v21 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v23);
  sub_22BE1B72C();
  v25 = (v0 + *(v24 + 56));
  sub_22BEDFD40(v6, v0);
  sub_22BEDFD40(v4, v25);
  sub_22BE3CC34();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_22BEE9040();
    sub_22BEDFD40(v0, v2);
    sub_22BE38FD8();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v9 + 32))(v1, v25, v33);
      sub_22BE1C2A0();
      _s30IntelligenceFlowPlannerSupport14OpenExpressionV2eeoiySbAC_ACtFZ_0();
      v31 = *(v9 + 8);
      v31(v1, v33);
      v31(v2, v33);
      sub_22BE3E8B0();
      goto LABEL_15;
    }

    (*(v9 + 8))(v2, v33);
    goto LABEL_11;
  }

  sub_22BEE9040();
  v26 = sub_22BE29264();
  sub_22BEDFD40(v26, v27);
  v29 = *v18;
  v28 = v18[1];
  sub_22BE38FD8();
  if (swift_getEnumCaseMultiPayload() != 1)
  {

LABEL_11:
    sub_22BE33928(v0, &qword_27D9092D0, &off_22C27FEB8);
    goto LABEL_15;
  }

  if (v29 == *v25 && v28 == v25[1])
  {
    v32 = v25[1];
  }

  else
  {
    sub_22BE1804C();
    sub_22C274014();
  }

  sub_22BE3E8B0();
LABEL_15:
  sub_22BE1AABC();
}

uint64_t sub_22BEDAF90(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65746E49707061 && a2 == 0xE900000000000074;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E65657263536E6FLL && a2 == 0xEC00000074786554)
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

uint64_t sub_22BEDB064(char a1)
{
  if (a1)
  {
    return 0x6E65657263536E6FLL;
  }

  else
  {
    return 0x6E65746E49707061;
  }
}

uint64_t sub_22BEDB0A8()
{
  sub_22BE25DAC();
  MEMORY[0x2318AC860](0);
  return sub_22C2741A4();
}

uint64_t sub_22BEDB0E4(uint64_t a1)
{
  v2 = sub_22BEE0ED8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEDB120(uint64_t a1)
{
  v2 = sub_22BEE0ED8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEDB164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BEDAF90(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BEDB18C(uint64_t a1)
{
  v2 = sub_22BEE0E30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEDB1C8(uint64_t a1)
{
  v2 = sub_22BEE0E30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEDB204(uint64_t a1)
{
  v2 = sub_22BEE0E84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEDB240(uint64_t a1)
{
  v2 = sub_22BEE0E84();

  return MEMORY[0x2821FE720](a1, v2);
}

void AnswerSynthesisExpression.ExtractionCandidate.encode(to:)()
{
  sub_22BE19130();
  v46 = v1;
  v5 = v4;
  v44 = sub_22BE5CE4C(&qword_27D909EB8, &qword_22C280550);
  sub_22BE179D8(v44);
  v7 = *(v6 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE2BA30(v9, v41);
  v45 = sub_22BE5CE4C(&qword_27D909EC0, &qword_22C280558);
  sub_22BE179D8(v45);
  v11 = *(v10 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  sub_22BE1A174();
  sub_22BE183BC();
  v13 = sub_22C26E684();
  v14 = sub_22BE179D8(v13);
  v42 = v15;
  v43 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22BE179EC();
  sub_22BE336DC();
  v18 = type metadata accessor for AnswerSynthesisExpression.ExtractionCandidate(0);
  v19 = sub_22BE18000(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22BE179EC();
  sub_22BE1BC40();
  v22 = sub_22BE5CE4C(&qword_27D909EC8, &qword_22C280560);
  sub_22BE179D8(v22);
  v24 = v23;
  v26 = *(v25 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v27);
  sub_22BE1A8B4();
  v28 = v5[3];
  v29 = v5[4];
  sub_22BE2018C(v5);
  sub_22BEE0E30();
  sub_22BEE939C();
  sub_22C274234();
  sub_22BEE9040();
  sub_22BEDFD40(v46, v2);
  sub_22BE29454();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v30 = *v2;
    v31 = v2[1];
    sub_22BE486C4();
    sub_22BEE0E84();
    sub_22BE27168();
    sub_22C273EE4();
    sub_22BE3CC34();
    sub_22C273F54();

    v32 = sub_22BE39058();
    v33(v32, v44);
  }

  else
  {
    v34 = *(v42 + 32);
    v35 = sub_22BE3CC34();
    v36(v35);
    sub_22BEE0ED8();
    sub_22BE27168();
    sub_22C273EE4();
    sub_22BE18CFC();
    sub_22BECD12C(v37, v38);
    sub_22C273FA4();
    v39 = sub_22BE3408C();
    v40(v39, v45);
    (*(v42 + 8))(v0, v43);
  }

  (*(v24 + 8))(v3, v22);
  sub_22BEE94B0();
  sub_22BE18478();
}

void AnswerSynthesisExpression.ExtractionCandidate.init(from:)()
{
  sub_22BE19130();
  v89 = v0;
  v3 = v2;
  v81 = v4;
  v82 = sub_22BE5CE4C(&qword_27D909EE8, &qword_22C280568);
  sub_22BE179D8(v82);
  v85 = v5;
  v7 = *(v6 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE20168(v9, v77);
  v10 = sub_22BE5CE4C(&qword_27D909EF0, &qword_22C280570);
  v11 = sub_22BE179D8(v10);
  v83 = v12;
  v84 = v11;
  v14 = *(v13 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  sub_22BE1A174();
  v86 = v16;
  v17 = sub_22BE5CE4C(&qword_27D909EF8, &qword_22C280578);
  v18 = sub_22BE179D8(v17);
  v87 = v19;
  v88 = v18;
  v21 = *(v20 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v22);
  sub_22BE1B01C();
  v23 = type metadata accessor for AnswerSynthesisExpression.ExtractionCandidate(0);
  v24 = sub_22BE18000(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  sub_22BE183AC();
  sub_22BE2351C();
  MEMORY[0x28223BE20](v27);
  sub_22BE3A4D8();
  MEMORY[0x28223BE20](v28);
  v30 = &v77 - v29;
  v31 = v3[3];
  v32 = v3[4];
  sub_22BE2018C(v3);
  sub_22BEE0E30();
  sub_22BE232E4();
  v33 = v89;
  sub_22C274214();
  if (!v33)
  {
    v78 = v30;
    v79 = v1;
    v80 = v23;
    v89 = v3;
    v34 = v88;
    sub_22BEE9498();
    v35 = sub_22C273ED4();
    sub_22BE7C5C4(v35, 0);
    if (v37 != v36 >> 1)
    {
      sub_22BE38A18();
      sub_22BE3E9D8();
      if (v40 == v41)
      {
        __break(1u);
        return;
      }

      v42 = *(v39 + v38);
      sub_22BE7C5C0(v38 + 1);
      v44 = v43;
      v46 = v45;
      swift_unknownObjectRelease();
      v47 = v79;
      if (v44 == v46 >> 1)
      {
        if (v42)
        {
          sub_22BE486C4();
          sub_22BEE0E84();
          sub_22BE1B934();
          sub_22C273DE4();
          v61 = sub_22C273E64();
          v63 = v62;
          swift_unknownObjectRelease();
          v64 = sub_22BE25EE4();
          v65(v64);
          v66 = sub_22BE35B0C();
          v67(v66);
          *v47 = v61;
          v47[1] = v63;
          swift_storeEnumTagMultiPayload();
          v68 = v47;
          v69 = v78;
        }

        else
        {
          sub_22BEE0ED8();
          sub_22BE1B934();
          sub_22C273DE4();
          v69 = v78;
          sub_22C26E684();
          sub_22BE18CFC();
          sub_22BECD12C(v58, v59);
          sub_22C273EB4();
          v60 = v87;
          swift_unknownObjectRelease();
          v70 = sub_22BE2BCDC();
          v71(v70);
          v72 = *(v60 + 8);
          v73 = sub_22BE1AB1C();
          v74(v73);
          swift_storeEnumTagMultiPayload();
          v68 = v34;
        }

        sub_22BEC32B8(v68, v69);
        v75 = sub_22BE1AB74();
        sub_22BEC32B8(v75, v76);
        v57 = v89;
        goto LABEL_10;
      }
    }

    v48 = v80;
    v49 = sub_22C273B34();
    sub_22BE196B4();
    v51 = v50;
    v52 = *(sub_22BE5CE4C(&qword_27D907968, &qword_22C2768D0) + 48);
    *v51 = v48;
    sub_22BEE9498();
    sub_22C273DF4();
    sub_22BE1B198();
    v53 = *MEMORY[0x277D84160];
    sub_22BE1BC24(v49);
    (*(v54 + 104))(v51);
    swift_willThrow();
    swift_unknownObjectRelease();
    v55 = sub_22BE39058();
    v56(v55, v34);
    v3 = v89;
  }

  v57 = v3;
LABEL_10:
  sub_22BE26B64(v57);
  sub_22BE18478();
}

uint64_t _s30IntelligenceFlowPlannerSupport14OpenExpressionV11statementId0aB011StatementIDVvg_0()
{
  sub_22BE1A5E4();
  v0 = sub_22C26E684();
  sub_22BE18000(v0);
  v2 = *(v1 + 16);
  v3 = sub_22BE19454();

  return v4(v3);
}

uint64_t _s30IntelligenceFlowPlannerSupport14OpenExpressionV11statementId0aB011StatementIDVvs_0()
{
  sub_22BE17BC4();
  v1 = sub_22C26E684();
  sub_22BE18000(v1);
  v3 = *(v2 + 40);
  v4 = sub_22BE291BC();

  return v5(v4, v0);
}

uint64_t AnswerSynthesisExpression.extractionCandidates.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for AnswerSynthesisExpression(v0) + 20);
  return sub_22BE18504();
}

uint64_t sub_22BEDBD74(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7972657571 && a2 == 0xE500000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x800000022C2D38B0 == a2)
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

uint64_t sub_22BEDBE40(char a1)
{
  if (a1)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0x7972657571;
  }
}

uint64_t sub_22BEDBE80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BEDBD74(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BEDBEA8(uint64_t a1)
{
  v2 = sub_22BEE0F2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEDBEE4(uint64_t a1)
{
  v2 = sub_22BEE0F2C();

  return MEMORY[0x2821FE720](a1, v2);
}

void AnswerSynthesisExpression.encode(to:)()
{
  sub_22BE2BB34();
  sub_22BE22950();
  v1 = sub_22BE5CE4C(&qword_27D909F00, &qword_22C280580);
  sub_22BE179D8(v1);
  v3 = v2;
  v5 = *(v4 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE19E64();
  sub_22BE23094();
  sub_22BEE0F2C();
  sub_22BE194D0();
  sub_22BE4475C();
  sub_22BE18CFC();
  sub_22BECD12C(v7, v8);
  sub_22BEE92A4();
  sub_22BE196CC();
  sub_22C273FA4();
  if (!v0)
  {
    v9 = type metadata accessor for AnswerSynthesisExpression(0);
    sub_22BE35C64(v9);
    sub_22BE5CE4C(&qword_27D909F10, &qword_22C280588);
    sub_22BEE0F80();
    sub_22BE196CC();
    sub_22C273FA4();
  }

  v10 = *(v3 + 8);
  v11 = sub_22BE1AB74();
  v12(v11);
  sub_22BEE92C0();
  sub_22BEE93D4();
}

void AnswerSynthesisExpression.init(from:)()
{
  sub_22BE19130();
  v27 = sub_22BEE9360(v2);
  v3 = sub_22BE179D8(v27);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE179EC();
  sub_22BE1AB80();
  v6 = sub_22BE5CE4C(&qword_27D909F28, &unk_22C280590);
  sub_22BE179D8(v6);
  v8 = *(v7 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  v10 = sub_22BE24FD8();
  v11 = type metadata accessor for AnswerSynthesisExpression(v10);
  v12 = sub_22BE18000(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22BE179EC();
  v16 = v0[3];
  v15 = v0[4];
  v17 = sub_22BE41FB4();
  sub_22BE26950(v17, v18);
  sub_22BEE0F2C();
  sub_22BE3CCD4();
  sub_22BEE940C();
  if (v1)
  {
    sub_22BE26B64(v0);
  }

  else
  {
    sub_22BE32E44();
    sub_22BE18CFC();
    sub_22BECD12C(v19, v20);
    sub_22BE2BB84();
    v21 = sub_22BEE9134();
    v22(v21);
    sub_22BE5CE4C(&qword_27D909F10, &qword_22C280588);
    sub_22BE33FE4();
    sub_22BEE1034();
    sub_22BEE90F4();
    v23 = sub_22BE25424();
    v24(v23);
    sub_22BE35D34();
    v25 = sub_22BE431F0();
    sub_22BEDFD40(v25, v26);
    sub_22BE26B64(v0);
    sub_22BEC3264();
  }

  sub_22BE46D98();
  sub_22BE18478();
}

void Expression.referencedStatementIds.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19460();
  a19 = v26;
  a20 = v27;
  v369 = v21;
  v360 = type metadata accessor for UserDisambiguateExpression(0);
  v28 = sub_22BE18000(v360);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  sub_22BE17A44();
  v362 = v31;
  v32 = sub_22BE183BC();
  v361 = type metadata accessor for UserConfirmExpression(v32);
  v33 = sub_22BE18000(v361);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  sub_22BE17A44();
  v365 = v36;
  v37 = sub_22BE183BC();
  v38 = type metadata accessor for SiriXFallbackExpression(v37);
  v39 = sub_22BE19448(v38);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  sub_22BE17A44();
  v363 = v42;
  v43 = sub_22BE183BC();
  updated = type metadata accessor for UpdateParametersExpression.UpdateParameter(v43);
  v45 = sub_22BE18910(updated, &v371);
  v350 = v46;
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v45);
  sub_22BE17A44();
  v367 = v49;
  v50 = sub_22BE183BC();
  v358 = type metadata accessor for UpdateParametersExpression(v50);
  v51 = sub_22BE18000(v358);
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v51);
  sub_22BE17A44();
  v364 = v54;
  v55 = sub_22BE183BC();
  v56 = type metadata accessor for UndoExpression(v55);
  v57 = sub_22BE19448(v56);
  v59 = *(v58 + 64);
  MEMORY[0x28223BE20](v57);
  sub_22BE17A44();
  v359 = v60;
  v61 = sub_22BE183BC();
  v62 = type metadata accessor for StructuredSearchExpression(v61);
  v63 = sub_22BE19448(v62);
  v65 = *(v64 + 64);
  MEMORY[0x28223BE20](v63);
  sub_22BE17A44();
  v357 = v66;
  v67 = sub_22BE183BC();
  v68 = type metadata accessor for RejectExpression(v67);
  v69 = sub_22BE19448(v68);
  v71 = *(v70 + 64);
  MEMORY[0x28223BE20](v69);
  sub_22BE17A44();
  v356 = v72;
  v73 = sub_22BE183BC();
  v74 = type metadata accessor for PrefixExpression(v73);
  v75 = sub_22BE290A0(v74, &a18);
  v77 = *(v76 + 64);
  MEMORY[0x28223BE20](v75);
  sub_22BE17A44();
  v79 = sub_22BE18950(v78);
  v80 = type metadata accessor for PickOneExpression(v79);
  v81 = sub_22BE19448(v80);
  v83 = *(v82 + 64);
  MEMORY[0x28223BE20](v81);
  sub_22BE17A44();
  v85 = sub_22BE18950(v84);
  v86 = type metadata accessor for PickExpression(v85);
  v87 = sub_22BE19448(v86);
  v89 = *(v88 + 64);
  MEMORY[0x28223BE20](v87);
  sub_22BE17A44();
  v91 = sub_22BE18950(v90);
  v92 = type metadata accessor for OpenExpression(v91);
  v93 = sub_22BE19448(v92);
  v95 = *(v94 + 64);
  MEMORY[0x28223BE20](v93);
  sub_22BE17A44();
  v97 = sub_22BE18950(v96);
  v98 = type metadata accessor for InfixExpression(v97);
  v99 = sub_22BE290A0(v98, &a12);
  v101 = *(v100 + 64);
  MEMORY[0x28223BE20](v99);
  sub_22BE17A44();
  v103 = sub_22BE18950(v102);
  v104 = type metadata accessor for IndexExpression(v103);
  v105 = sub_22BE290A0(v104, &a10);
  v107 = *(v106 + 64);
  MEMORY[0x28223BE20](v105);
  sub_22BE17A44();
  v109 = sub_22BE18950(v108);
  v110 = type metadata accessor for ConfirmExpression(v109);
  v111 = sub_22BE19448(v110);
  v113 = *(v112 + 64);
  MEMORY[0x28223BE20](v111);
  sub_22BE17A44();
  v115 = sub_22BE18950(v114);
  v116 = type metadata accessor for CancelExpression(v115);
  v117 = sub_22BE19448(v116);
  v119 = *(v118 + 64);
  MEMORY[0x28223BE20](v117);
  sub_22BE17A44();
  v121 = sub_22BE18950(v120);
  ToolsExpression = type metadata accessor for RetrieveToolsExpression(v121);
  v123 = sub_22BE19448(ToolsExpression);
  v125 = *(v124 + 64);
  MEMORY[0x28223BE20](v123);
  sub_22BE17A44();
  sub_22BE18950(v126);
  v370 = sub_22C26E684();
  v127 = sub_22BE179D8(v370);
  v348 = v128;
  v371 = v128;
  v130 = *(v129 + 64);
  MEMORY[0x28223BE20](v127);
  sub_22BE183AC();
  v368 = v131 - v132;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v133);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v134);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v135);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v136);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v137);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v138);
  sub_22BE190A8(v345 - v139);
  v140 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  v141 = sub_22BE17A18(v140);
  v366 = v142;
  v144 = *(v143 + 64);
  MEMORY[0x28223BE20](v141);
  sub_22BE183AC();
  sub_22BE1AF10();
  MEMORY[0x28223BE20](v145);
  sub_22BEC0508();
  MEMORY[0x28223BE20](v146);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v147);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v148);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v149);
  sub_22BE2937C();
  MEMORY[0x28223BE20](v150);
  sub_22BE20324();
  MEMORY[0x28223BE20](v151);
  sub_22BE3A4D8();
  MEMORY[0x28223BE20](v152);
  sub_22BE1B604();
  MEMORY[0x28223BE20](v153);
  v155 = v345 - v154;
  SpansExpression = type metadata accessor for RetrieveSpansExpression(0);
  v157 = sub_22BE19448(SpansExpression);
  v159 = *(v158 + 64);
  MEMORY[0x28223BE20](v157);
  sub_22BE17A44();
  v161 = v160;
  v162 = sub_22BE183BC();
  v163 = type metadata accessor for Expression(v162);
  v164 = sub_22BE18000(v163);
  v166 = *(v165 + 64);
  MEMORY[0x28223BE20](v164);
  sub_22BE179EC();
  sub_22BE1BC40();
  sub_22BE1BE64();
  sub_22BEDFD40(v369, v24);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v168 = MEMORY[0x277D84F90];
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v245 = v370;
      v247 = v371 + 32;
      v246 = *(v371 + 32);
      v248 = v353;
      v249 = sub_22BE1AB1C();
      v246(v249);
      sub_22BE5CE4C(&qword_27D9077A0, &qword_22C2757D8);
      v250 = *(v247 + 40);
      v251 = *(v247 + 48);
      v252 = sub_22BEE9500();
      *(v252 + 16) = xmmword_22C275160;
      (v246)(v252 + v21, v248, v245);
      goto LABEL_77;
    case 2:
      sub_22BE23AB4();
      sub_22BE324E0(&a17);
      sub_22BEC32B8(v286, v287);
      sub_22BE5CE4C(&qword_27D9077A0, &qword_22C2757D8);
      *(sub_22BE354E8() + 16) = xmmword_22C275160;
      sub_22BE2ED7C(&a18);
      (*(v21 + 16))(v288 + v20, v22 + v289, v370);
      goto LABEL_53;
    case 3:
      sub_22BE29370();
      sub_22BE46048(&a11);
      sub_22BEC32B8(v233, v234);
      sub_22BE5CE4C(&qword_27D9077A0, &qword_22C2757D8);
      v235 = sub_22BE28D7C();
      *(v235 + 16) = xmmword_22C2759F0;
      v236 = v235 + v20;
      v237 = v355;
      v238 = *(v23 + 16);
      v239 = v370;
      v238(v236, &v155[*(v355 + 20)], v370);
      v238(v236 + v21, &v155[*(v237 + 24)], v239);
      sub_22BE1A5B8();
      goto LABEL_53;
    case 4:
      v279 = sub_22BE29370();
      v280 = v354;
      sub_22BEC32B8(v279, v354);
      sub_22BE5CE4C(&qword_27D9077A0, &qword_22C2757D8);
      v281 = sub_22BE28D7C();
      *(v281 + 16) = xmmword_22C2759F0;
      v282 = v281 + v20;
      v283 = *(v23 + 16);
      v284 = v370;
      v283(v282, v280, v370);
      sub_22BE2ED7C(&a10);
      v283(v282 + v21, v280 + v285, v284);
      sub_22BE2B7D0();
      goto LABEL_53;
    case 5:
      v201 = sub_22BE29370();
      v202 = v364;
      sub_22BEC32B8(v201, v364);
      sub_22BE5CE4C(&qword_27D9077A0, &qword_22C2757D8);
      v203 = v371;
      v204 = (*(v371 + 80) + 32) & ~*(v371 + 80);
      v369 = *(v371 + 72);
      v205 = swift_allocObject();
      *(v205 + 16) = xmmword_22C275160;
      v206 = *(v203 + 16);
      v368 = v204;
      v207 = v370;
      v371 = v203 + 16;
      v366 = v206;
      v206(v205 + v204, v202, v370);
      v208 = *(v202 + *(v358 + 20));
      v209 = *(v208 + 16);
      if (v209)
      {
        v365 = v205;
        v372 = MEMORY[0x277D84F90];
        sub_22BE71084();
        v210 = v372;
        v211 = *(v350 + 80);
        sub_22BE19E14();
        v213 = v208 + v212;
        v215 = *(v214 + 72);
        v216 = (v348 + 32);
        v217 = v351;
        v218 = v349;
        do
        {
          v219 = sub_22BE29370();
          v220 = v367;
          sub_22BEDFD40(v219, v367);
          v366(v218, v220 + *(v217 + 28), v207);
          sub_22BE464DC();
          sub_22BEC3264();
          v372 = v210;
          v221 = v210[2];
          if (v221 >= v210[3] >> 1)
          {
            sub_22BE71084();
            v217 = v351;
            v210 = v372;
          }

          v210[2] = v221 + 1;
          (*v216)(v210 + v368 + v221 * v369, v218, v207);
          v213 += v215;
          --v209;
        }

        while (v209);
        v205 = v365;
      }

      v372 = v205;
      sub_22BE6E06C();
      sub_22BEE9214();
      goto LABEL_53;
    case 6:
      v222 = *(v24 + 8);
      v223 = *(v24 + 24);
      v224 = *(v24 + 40);
      v225 = *(v224 + 16);
      if (!v225)
      {
        v335 = *(v24 + 40);

        goto LABEL_77;
      }

      sub_22BEE90B8();
      sub_22BEDDC68(v225, 0, v226, v227, v228);
      v229 = *(v371 + 80);
      sub_22BE19E14();
      v371 = v230;
      v232 = sub_22BEDE574(&v372, (v230 + v231), v225, v224);
      v199 = v372;
      v305 = v374;
      v306 = v375;

      sub_22BEE94BC();
      sub_22BE4926C();
      if (v232 == v225)
      {

        goto LABEL_77;
      }

      __break(1u);
LABEL_83:
      __break(1u);
      goto LABEL_84;
    case 7:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
      goto LABEL_77;
    case 8:
      v272 = sub_22BE29370();
      sub_22BEC32B8(v272, v161);
      sub_22BE5CE4C(&qword_27D909F40, &qword_22C2805A0);
      *(sub_22BE2723C() + 16) = xmmword_22C275160;
      sub_22BE2BE3C();
      sub_22BE2BE3C();
      sub_22BEE8E64();
      sub_22BE46108(v22);
      if (v200)
      {
        sub_22BE33928(v22, &qword_27D907240, &unk_22C2B5B80);
      }

      else
      {
        v313 = *(v371 + 32);
        v314 = v345[0];
        v313(v345[0], v22, v25);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22BE3A4B4();
          v168 = v339;
        }

        v317 = *(v168 + 16);
        v316 = *(v168 + 24);
        if (v317 >= v316 >> 1)
        {
          sub_22BEE92CC(v316);
          v168 = v340;
        }

        *(v168 + 16) = v317 + 1;
        sub_22BEE909C();
        v313(v318 + v319 * v317, v314, v25);
      }

      sub_22BE41060();
      goto LABEL_75;
    case 9:
      sub_22BE29370();
      sub_22BE46048(&a14);
      sub_22BEC32B8(v197, v198);
      sub_22BE5CE4C(&qword_27D909F40, &qword_22C2805A0);
      *(sub_22BE2723C() + 16) = xmmword_22C275160;
      v199 = &unk_22C2B5B80;
      sub_22BE2BE3C();
      sub_22BE2BE3C();
      sub_22BEE8E64();
      sub_22BE46108(v23);
      if (v200)
      {
        sub_22BE33928(v23, &qword_27D907240, &unk_22C2B5B80);
      }

      else
      {
        v305 = *(v371 + 32);
        v306 = v345[1];
        v307 = sub_22BE3CEF4();
        v305(v307);
        v308 = swift_isUniquelyReferenced_nonNull_native();
        if ((v308 & 1) == 0)
        {
LABEL_84:
          sub_22BE3A4B4();
          v168 = v337;
        }

        v310 = *(v168 + 16);
        v309 = *(v168 + 24);
        if (v310 >= v309 >> 1)
        {
          sub_22BEE92CC(v309);
          v168 = v338;
        }

        *(v168 + 16) = v310 + 1;
        sub_22BEE909C();
        (v305)(v311 + v312 * v310, v306, v199);
      }

LABEL_75:
      sub_22BEC3264();
      swift_setDeallocating();
LABEL_76:
      sub_22BEDDA70();
LABEL_77:
      sub_22BE1AABC();
      return;
    case 10:
    case 21:
    case 22:
      v169 = *v24;
      goto LABEL_77;
    case 11:
      sub_22BE29370();
      sub_22BE324E0(&a15);
      sub_22BEC32B8(v240, v241);
      sub_22BE5CE4C(&qword_27D9077A0, &qword_22C2757D8);
      v242 = sub_22BE354E8();
      v243 = sub_22BE26810(v242, xmmword_22C275160);
      v244(v243);
      goto LABEL_53;
    case 12:
      sub_22BEE9070();
      sub_22BE324E0(&v376);
      sub_22BEC32B8(v192, v193);
      sub_22BE5CE4C(&qword_27D9077A0, &qword_22C2757D8);
      v194 = sub_22BE354E8();
      v195 = sub_22BE26810(v194, xmmword_22C275160);
      v196(v195);
      goto LABEL_53;
    case 13:
    case 16:
    case 26:
      sub_22BEE9018();
      goto LABEL_53;
    case 14:
      v253 = sub_22BE29370();
      v306 = v357;
      sub_22BEC32B8(v253, v357);
      v254 = *(*v306 + 16);
      if (v254)
      {
        sub_22BEE90B8();
        sub_22BEDDC68(v254, 0, v255, v256, v257);
        v258 = *(v371 + 80);
        sub_22BE19E14();
        sub_22BE27B84();
        v263 = sub_22BEDE574(v259, v260, v261, v262);
        v199 = v374;
        v305 = v375;

        sub_22BE4926C();
        if (v263 != v254)
        {
          goto LABEL_83;
        }
      }

      sub_22BE22B04();
LABEL_53:
      sub_22BEC3264();
      goto LABEL_77;
    case 15:
      sub_22BE1C18C();
      sub_22BE324E0(&a16);
      sub_22BEC32B8(v274, v275);
      sub_22BE5CE4C(&qword_27D9077A0, &qword_22C2757D8);
      v276 = sub_22BE354E8();
      v277 = sub_22BE26810(v276, xmmword_22C275160);
      v278(v277);
      goto LABEL_53;
    case 17:
      v295 = sub_22BE29370();
      sub_22BEC32B8(v295, v359);
      sub_22BE5CE4C(&qword_27D909F40, &qword_22C2805A0);
      *(sub_22BE2723C() + 16) = xmmword_22C275160;
      sub_22BE3E760();
      sub_22BE2BE3C();
      sub_22BE3E760();
      sub_22BE2BE3C();
      sub_22BE22944(&v373);
      sub_22BE3E760();
      sub_22BEE8E64();
      sub_22BE46108(v21);
      if (v200)
      {
        sub_22BE33928(v21, &qword_27D907240, &unk_22C2B5B80);
      }

      else
      {
        v320 = *(v371 + 32);
        v321 = v346;
        v320(v346, v21, v25);
        v322 = swift_isUniquelyReferenced_nonNull_native();
        if ((v322 & 1) == 0)
        {
          sub_22BE3A4B4();
          v168 = v341;
        }

        v324 = *(v168 + 16);
        v323 = *(v168 + 24);
        if (v324 >= v323 >> 1)
        {
          sub_22BE66BFC(v323 > 1, v324 + 1, 1, v168);
          v168 = v342;
        }

        *(v168 + 16) = v324 + 1;
        sub_22BEE909C();
        v320(v325 + v326 * v324, v321, v25);
      }

      sub_22BEE922C();
      sub_22BEC3264();
      swift_setDeallocating();
      goto LABEL_76;
    case 18:
      sub_22BEE9058();
      sub_22BEC32B8(v24, v356);
      sub_22BE5CE4C(&qword_27D9077A0, &qword_22C2757D8);
      v264 = sub_22BE354E8();
      v265 = sub_22BE26810(v264, xmmword_22C275160);
      v266(v265);
      goto LABEL_53;
    case 19:
      sub_22BE41284();
      sub_22BE324E0(&v375);
      sub_22BEC32B8(v267, v268);
      sub_22BE5CE4C(&qword_27D9077A0, &qword_22C2757D8);
      v269 = sub_22BE354E8();
      v270 = sub_22BE26810(v269, xmmword_22C275160);
      v271(v270);
      goto LABEL_53;
    case 20:
      sub_22BE3BED0();
      sub_22BE324E0(&a13);
      sub_22BEC32B8(v290, v291);
      sub_22BE5CE4C(&qword_27D9077A0, &qword_22C2757D8);
      v292 = sub_22BE354E8();
      v293 = sub_22BE26810(v292, xmmword_22C275160);
      v294(v293);
      goto LABEL_53;
    case 23:
      v303 = sub_22BE29370();
      sub_22BEC32B8(v303, v363);
      sub_22BE5CE4C(&qword_27D909F40, &qword_22C2805A0);
      *(sub_22BE2723C() + 16) = xmmword_22C275160;
      sub_22BE2BE3C();
      sub_22BE37B14(&v372);
      sub_22BE2BE3C();
      v304 = v352;
      sub_22BEE8E64();
      sub_22BE46108(v304);
      if (v200)
      {
        sub_22BE33928(v304, &qword_27D907240, &unk_22C2B5B80);
      }

      else
      {
        v327 = *(v371 + 32);
        v328 = v347;
        v329 = sub_22BE38FD8();
        v327(v329);
        v330 = swift_isUniquelyReferenced_nonNull_native();
        if ((v330 & 1) == 0)
        {
          sub_22BE3A4B4();
          v168 = v343;
        }

        v332 = *(v168 + 16);
        v331 = *(v168 + 24);
        if (v332 >= v331 >> 1)
        {
          sub_22BEE92CC(v331);
          v168 = v344;
        }

        *(v168 + 16) = v332 + 1;
        sub_22BEE909C();
        (v327)(v333 + v334 * v332, v328, v25);
      }

      goto LABEL_75;
    case 24:
      v170 = sub_22BE29370();
      v171 = v365;
      sub_22BEC32B8(v170, v365);
      sub_22BE5CE4C(&qword_27D909F40, &qword_22C2805A0);
      v172 = *(v366 + 9);
      v173 = (*(v366 + 80) + 32) & ~*(v366 + 80);
      v174 = swift_allocObject();
      *(v174 + 16) = xmmword_22C27FED0;
      v367 = v174;
      v175 = v174 + v173;
      v176 = v370;
      v177 = v371 + 16;
      (*(v371 + 16))(v175, v171, v370);
      sub_22BE19DC4(v175, 0, 1, v176);
      v178 = v361;
      v179 = *(v361 + 20);
      sub_22BE2BE3C();
      v369 = v172;
      v180 = *(v178 + 24);
      sub_22BE2BE3C();
      v181 = (v177 + 16);
      v182 = MEMORY[0x277D84F90];
      v183 = 3;
      do
      {
        sub_22BE41FB4();
        sub_22BE3CF00();
        sub_22BE2BE3C();
        sub_22BE3CF00();
        sub_22BEE8E64();
        if (sub_22BE1AEA8(v25, 1, v176) == 1)
        {
          sub_22BE33928(v25, &qword_27D907240, &unk_22C2B5B80);
        }

        else
        {
          v184 = *v181;
          (*v181)(v368, v25, v176);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_22BE66BFC(0, *(v182 + 16) + 1, 1, v182);
            v182 = v190;
          }

          v186 = *(v182 + 16);
          v185 = *(v182 + 24);
          if (v186 >= v185 >> 1)
          {
            sub_22BE66BFC(v185 > 1, v186 + 1, 1, v182);
            v182 = v191;
          }

          *(v182 + 16) = v186 + 1;
          v176 = v370;
          v187 = *(v371 + 80);
          sub_22BE19E14();
          v184(v182 + v188 + *(v189 + 72) * v186, v368, v176);
        }

        v175 += v369;
        --v183;
      }

      while (v183);
      sub_22BEE9244();
      sub_22BEC3264();
      swift_setDeallocating();
      sub_22BEDDA70();
      goto LABEL_77;
    case 25:
      v296 = sub_22BE29370();
      v297 = v362;
      sub_22BEC32B8(v296, v362);
      sub_22BE5CE4C(&qword_27D9077A0, &qword_22C2757D8);
      v298 = v371;
      v299 = *(v371 + 72);
      v300 = *(v371 + 80);
      v301 = sub_22BEE9500();
      *(v301 + 16) = xmmword_22C275160;
      (*(v298 + 16))(v301 + v21, v297, v370);
      v302 = *(v297 + *(v360 + 20));
      v372 = v301;

      sub_22BE6E06C();
      sub_22BE414E0();
      goto LABEL_53;
    default:
      switch(*(v24 + 16))
      {
        case 3:
          v273 = 3;
          goto LABEL_81;
        case 4:
          v336 = *v24;
          break;
        case 5:
          v273 = 5;
LABEL_81:
          sub_22BECD0DC(*v24, *(v24 + 8), v273);
          break;
        default:
          goto LABEL_77;
      }

      goto LABEL_77;
  }
}

uint64_t sub_22BEDDA70()
{
  v1 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  sub_22BE187D0(v1);
  v3 = *(v2 + 80);
  sub_22BE19E14();
  v4 = *(v0 + 16);
  swift_arrayDestroy();
  v5 = sub_22BE3C704();

  return MEMORY[0x2821FE8D8](v5, v6, v7);
}

uint64_t sub_22BEDDAF8(uint64_t *a1, uint64_t *a2)
{
  v3 = *(v2 + 16);
  sub_22BE5CE4C(a1, a2);
  swift_arrayDestroy();
  v4 = sub_22BE3C704();

  return MEMORY[0x2821FE8D8](v4, v5, v6);
}

uint64_t sub_22BEDDB40()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();
  v2 = sub_22BE3C704();

  return MEMORY[0x2821FE8D8](v2, v3, v4);
}

const void *sub_22BEDDB7C(uint64_t a1, uint64_t a2)
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

  sub_22BE5CE4C(&qword_27D907770, &unk_22C2880C0);
  v3 = swift_allocObject();
  v4 = j__malloc_size(v3);
  sub_22BE47DE8((v4 - 32) / 16);
  return v3;
}

size_t sub_22BEDDC68(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  sub_22BE39168(a1, a2, a3, a4);
  v7 = a5(0);
  sub_22BE17A18(v7);
  v9 = *(v8 + 72);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  result = j__malloc_size(v12);
  if (v9)
  {
    if (result - v11 != 0x8000000000000000 || v9 != -1)
    {
      sub_22BE47DE8((result - v11) / v9);
      return v12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

const void *sub_22BEDDE14(uint64_t a1, uint64_t a2)
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

  sub_22BE5CE4C(&qword_27D9077A8, &unk_22C2757E0);
  v3 = swift_allocObject();
  v4 = j__malloc_size(v3);
  sub_22BE47DE8((v4 - 32) / 40);
  return v3;
}

const void *sub_22BEDDFA8(uint64_t a1, uint64_t a2)
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

  sub_22BE5CE4C(&qword_27D90A840, &qword_22C288130);
  v3 = swift_allocObject();
  v4 = j__malloc_size(v3);
  sub_22BE47DE8((v4 - 32) / 8);
  return v3;
}

size_t sub_22BEDE21C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  sub_22BE39168(a1, a2, a3, a4);
  v5 = sub_22BE1804C();
  v7 = sub_22BE5CE4C(v5, v6);
  sub_22BE17A18(v7);
  v9 = *(v8 + 72);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  result = j__malloc_size(v12);
  if (v9)
  {
    if (result - v11 != 0x8000000000000000 || v9 != -1)
    {
      sub_22BE47DE8((result - v11) / v9);
      return v12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_22BEDE304()
{
  sub_22BE19460();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v53 = sub_22BE5CE4C(&unk_27D907790, &unk_22C27FE90);
  v8 = sub_22BE179D8(v53);
  v51 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE183AC();
  v52 = (v12 - v13);
  sub_22BE1B99C();
  v15 = MEMORY[0x28223BE20](v14);
  sub_22BE3E3EC(v15, v16, v17, v18, v19, v20, v21, v22, v46);
  v24 = v1 + 64;
  v23 = *(v1 + 64);
  v25 = *(v1 + 32);
  sub_22BEE9380();
  v29 = v28 & v27;
  if (!v5)
  {
    v30 = 0;
LABEL_19:
    *v7 = v1;
    v7[1] = v24;
    v7[2] = ~v26;
    v7[3] = v30;
    v7[4] = v29;
    sub_22BE1AABC();
    return;
  }

  if (!v3)
  {
    v30 = 0;
    goto LABEL_19;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    v47 = v26;
    v48 = v7;
    sub_22BEE93A8();
    v34 = (v32 - v33) >> 6;
    v49 = v1;
    v50 = v3;
    while (1)
    {
      if (v31 >= v3)
      {
        goto LABEL_22;
      }

      v35 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        goto LABEL_23;
      }

      if (!v29)
      {
        while (1)
        {
          v36 = v30 + 1;
          if (__OFADD__(v30, 1))
          {
            break;
          }

          if (v36 >= v34)
          {
            v29 = 0;
            v7 = v48;
            goto LABEL_17;
          }

          v29 = *(v24 + 8 * v36);
          ++v30;
          if (v29)
          {
            v54 = v5;
            goto LABEL_13;
          }
        }

        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v54 = v5;
      v36 = v30;
LABEL_13:
      v37 = __clz(__rbit64(v29));
      v29 &= v29 - 1;
      v38 = v37 | (v36 << 6);
      v39 = *(v1 + 48);
      v40 = *(v1 + 56);
      v41 = (v39 + 16 * v38);
      v42 = *v41;
      v43 = v41[1];
      v44 = type metadata accessor for AST.FlatValue(0);
      sub_22BE19448(v44);
      sub_22BEDFD40(v40 + *(v45 + 72) * v38, v52 + *(v53 + 48));
      *v52 = v42;
      v52[1] = v43;
      sub_22BEE8E64();
      sub_22BEE8E64();
      v3 = v50;
      if (v35 == v50)
      {
        break;
      }

      v5 = v54 + *(v51 + 72);

      v31 = v35;
      v30 = v36;
      v1 = v49;
    }

    v30 = v36;
    v7 = v48;
    v1 = v49;
LABEL_17:
    v26 = v47;
    goto LABEL_19;
  }

LABEL_24:
  __break(1u);
}

unint64_t sub_22BEDE574(void *a1, char *a2, unint64_t a3, uint64_t a4)
{
  v8 = sub_22C26E684();
  v9 = *(v8 - 8);
  v42 = v8;
  v43 = v9;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v41 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v40 = &v33 - v13;
  v15 = a4 + 64;
  v14 = *(a4 + 64);
  v39 = -1 << *(a4 + 32);
  if (-v39 < 64)
  {
    v16 = ~(-1 << -v39);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & v14;
  if (!a2)
  {
    v20 = 0;
    result = 0;
LABEL_22:
    v32 = ~v39;
    *a1 = a4;
    a1[1] = v15;
    a1[2] = v32;
    a1[3] = v20;
    a1[4] = v17;
    return result;
  }

  result = a3;
  if (!a3)
  {
    v20 = 0;
    goto LABEL_22;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = a1;
    v35 = a4 + 64;
    v19 = 0;
    v20 = 0;
    v21 = (63 - v39) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    v38 = result;
    while (v19 < result)
    {
      if (__OFADD__(v19, 1))
      {
        goto LABEL_26;
      }

      if (!v17)
      {
        v15 = v35;
        while (1)
        {
          v22 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            break;
          }

          if (v22 >= v21)
          {
            v17 = 0;
            result = v19;
            a1 = v34;
            goto LABEL_22;
          }

          v17 = *(v35 + 8 * v22);
          ++v20;
          if (v17)
          {
            v44 = v19 + 1;
            goto LABEL_17;
          }
        }

        __break(1u);
        break;
      }

      v44 = v19 + 1;
      v22 = v20;
LABEL_17:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v24 = a4;
      v25 = *(a4 + 56);
      v27 = v42;
      v26 = v43;
      v28 = *(v43 + 72);
      v29 = v41;
      (*(v43 + 16))(v41, v25 + v28 * (v23 | (v22 << 6)), v42);
      v30 = *(v26 + 32);
      v31 = v40;
      v30(v40, v29, v27);
      v30(a2, v31, v27);
      result = v38;
      v19 = v44;
      if (v44 == v38)
      {
        v20 = v22;
        a1 = v34;
        v15 = v35;
        a4 = v24;
        goto LABEL_22;
      }

      a2 += v28;
      v20 = v22;
      a4 = v24;
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_22BEDE80C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a4 + 64;
  v6 = *(a4 + 64);
  v8 = *(a4 + 32);
  sub_22BEE9380();
  v14 = v13 & v12;
  if (!v9)
  {
    v17 = 0;
LABEL_18:
    *a1 = a4;
    a1[1] = v7;
    a1[2] = ~v11;
    a1[3] = v17;
    a1[4] = v14;
    return;
  }

  v15 = v10;
  if (!v10)
  {
    v17 = 0;
    goto LABEL_18;
  }

  if ((v10 & 0x8000000000000000) == 0)
  {
    v16 = v9;
    sub_22BEE93A8();
    v32 = v19;
    v21 = (v20 - v19) >> 6;
    while (1)
    {
      if (v18 >= v15)
      {
        goto LABEL_21;
      }

      v22 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_22;
      }

      if (!v14)
      {
        while (1)
        {
          v23 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            break;
          }

          if (v23 >= v21)
          {
            v14 = 0;
            goto LABEL_16;
          }

          v14 = *(v7 + 8 * v23);
          ++v17;
          if (v14)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v23 = v17;
LABEL_12:
      v24 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v25 = v24 | (v23 << 6);
      v26 = *(a4 + 48) + 32 * v25;
      v27 = *v26;
      v28 = *(v26 + 8);
      v29 = *(v26 + 16);
      v30 = *(v26 + 24);
      v31 = *(*(a4 + 56) + 8 * v25);
      *v16 = *v26;
      *(v16 + 8) = v28;
      *(v16 + 16) = v29;
      *(v16 + 24) = v30;
      *(v16 + 32) = v31;
      if (v22 == v15)
      {
        break;
      }

      v16 += 40;
      sub_22BE6355C(v27, v28, v29, v30);
      sub_22BEA7680(v31);
      v18 = v22;
      v17 = v23;
    }

    sub_22BE6355C(v27, v28, v29, v30);
    sub_22BEA7680(v31);
    v17 = v23;
LABEL_16:
    v11 = v32;
    goto LABEL_18;
  }

LABEL_23:
  __break(1u);
}

void sub_22BEDE980()
{
  sub_22BE19460();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  if (!v0)
  {
    v10 = 0;
    goto LABEL_11;
  }

  v10 = v1;
  if (!v1)
  {
LABEL_11:
    *v9 = v7;
    v9[1] = v5;
    v9[2] = v3;
    v9[3] = v10;
    sub_22BE1AABC();
    return;
  }

  if ((v1 & 0x8000000000000000) == 0)
  {
    v11 = v0;
    v12 = 0;
    v13 = *(v2 + 16);
    v14 = v1 - 1;
    while (1)
    {
      if (v13 == v12)
      {
        v10 = v13;
        goto LABEL_11;
      }

      if (v12 >= *(v3 + 16))
      {
        break;
      }

      v15 = type metadata accessor for ProgramStatement(0);
      sub_22BE17A18(v15);
      v18 = *(v17 + 72);
      sub_22BEDFD40(v3 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + v18 * v12, v11);
      if (v14 == v12)
      {
        goto LABEL_11;
      }

      v11 += v18;
      ++v12;
    }

    __break(1u);
  }

  __break(1u);
}

void *sub_22BEDEA94(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
    v9 = 0;
    a3 = 0;
LABEL_18:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_18;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (!v7)
      {
        while (1)
        {
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v11 >= ((63 - v6) >> 6))
          {
            v7 = 0;
            a3 = v8;
            goto LABEL_18;
          }

          v7 = *(v4 + 8 * v11);
          ++v9;
          if (v7)
          {
            v9 = v11;
            goto LABEL_13;
          }
        }

        __break(1u);
        break;
      }

LABEL_13:
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2++ = *(*(a4 + 48) + ((v9 << 9) | (8 * v12)));
      v8 = v10;
      if (v10 == a3)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_22BEDEB7C()
{
  sub_22BE19460();
  v3 = v2;
  v5 = v4;
  v6 = v2 + 56;
  v7 = -1 << *(v2 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  if (!v0)
  {
    v12 = 0;
LABEL_20:
    *v5 = v3;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    sub_22BE1AABC();
    return;
  }

  v10 = v1;
  if (!v1)
  {
    v12 = 0;
    goto LABEL_20;
  }

  if ((v1 & 0x8000000000000000) == 0)
  {
    v11 = v0;
    sub_22BEE93A8();
    v15 = (v14 - v7) >> 6;
    while (v13 < v10)
    {
      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v17 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          if (v17 >= v15)
          {
            v9 = 0;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v17);
          ++v12;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v17 = v12;
LABEL_15:
      v18 = (*(v3 + 48) + ((v17 << 10) | (16 * __clz(__rbit64(v9)))));
      v19 = v18[1];
      v9 &= v9 - 1;
      *v11 = *v18;
      v11[1] = v19;
      if (v16 == v10)
      {

        v12 = v17;
        goto LABEL_20;
      }

      v11 += 2;

      v13 = v16;
      v12 = v17;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
}

unint64_t sub_22BEDECC0()
{
  result = qword_27D909708;
  if (!qword_27D909708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909708);
  }

  return result;
}

unint64_t sub_22BEDED14()
{
  result = qword_27D909710;
  if (!qword_27D909710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909710);
  }

  return result;
}

unint64_t sub_22BEDED68()
{
  result = qword_27D909738;
  if (!qword_27D909738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909738);
  }

  return result;
}

unint64_t sub_22BEDEDBC()
{
  result = qword_27D909750;
  if (!qword_27D909750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909750);
  }

  return result;
}

unint64_t sub_22BEDEE10()
{
  result = qword_27D909768;
  if (!qword_27D909768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909768);
  }

  return result;
}

unint64_t sub_22BEDEE64()
{
  result = qword_27D909780;
  if (!qword_27D909780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909780);
  }

  return result;
}

unint64_t sub_22BEDEEB8()
{
  result = qword_27D909788;
  if (!qword_27D909788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909788);
  }

  return result;
}

unint64_t sub_22BEDEF0C()
{
  result = qword_27D9097B0;
  if (!qword_27D9097B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9097B0);
  }

  return result;
}

unint64_t sub_22BEDEF60()
{
  result = qword_27D9097F8;
  if (!qword_27D9097F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9097F8);
  }

  return result;
}

unint64_t sub_22BEDEFB4()
{
  result = qword_27D909800;
  if (!qword_27D909800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909800);
  }

  return result;
}

unint64_t sub_22BEDF008()
{
  result = qword_27D909808;
  if (!qword_27D909808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909808);
  }

  return result;
}

unint64_t sub_22BEDF05C()
{
  result = qword_27D909818;
  if (!qword_27D909818)
  {
    sub_22BE7431C(&qword_27D909810, &qword_22C280148);
    sub_22BECD12C(&qword_28107F2F8, MEMORY[0x277D1C338]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909818);
  }

  return result;
}

unint64_t sub_22BEDF110()
{
  result = qword_27D909820;
  if (!qword_27D909820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909820);
  }

  return result;
}

unint64_t sub_22BEDF164()
{
  result = qword_27D909828;
  if (!qword_27D909828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909828);
  }

  return result;
}

unint64_t sub_22BEDF1B8()
{
  result = qword_27D909830;
  if (!qword_27D909830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909830);
  }

  return result;
}

unint64_t sub_22BEDF20C()
{
  result = qword_27D909838;
  if (!qword_27D909838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909838);
  }

  return result;
}

unint64_t sub_22BEDF260()
{
  result = qword_27D909840;
  if (!qword_27D909840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909840);
  }

  return result;
}

unint64_t sub_22BEDF2B4()
{
  result = qword_27D909888;
  if (!qword_27D909888)
  {
    sub_22BE7431C(&qword_27D909810, &qword_22C280148);
    sub_22BECD12C(&qword_27D908560, MEMORY[0x277D1C338]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909888);
  }

  return result;
}

unint64_t sub_22BEDF368()
{
  result = qword_27D9098B0;
  if (!qword_27D9098B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9098B0);
  }

  return result;
}

unint64_t sub_22BEDF3BC()
{
  result = qword_27D9098B8;
  if (!qword_27D9098B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9098B8);
  }

  return result;
}

unint64_t sub_22BEDF410()
{
  result = qword_27D9098C0;
  if (!qword_27D9098C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9098C0);
  }

  return result;
}

unint64_t sub_22BEDF464()
{
  result = qword_27D9098C8;
  if (!qword_27D9098C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9098C8);
  }

  return result;
}

unint64_t sub_22BEDF4B8()
{
  result = qword_27D9098F8;
  if (!qword_27D9098F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9098F8);
  }

  return result;
}

unint64_t sub_22BEDF50C()
{
  result = qword_27D909900;
  if (!qword_27D909900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909900);
  }

  return result;
}

unint64_t sub_22BEDF560()
{
  result = qword_27D909910;
  if (!qword_27D909910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909910);
  }

  return result;
}

unint64_t sub_22BEDF5B4()
{
  result = qword_27D9099B8;
  if (!qword_27D9099B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9099B8);
  }

  return result;
}

unint64_t sub_22BEDF608()
{
  result = qword_27D9099C0;
  if (!qword_27D9099C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9099C0);
  }

  return result;
}

unint64_t sub_22BEDF65C()
{
  result = qword_27D9099C8;
  if (!qword_27D9099C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9099C8);
  }

  return result;
}

unint64_t sub_22BEDF6B0()
{
  result = qword_27D9099D0;
  if (!qword_27D9099D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9099D0);
  }

  return result;
}

unint64_t sub_22BEDF704()
{
  result = qword_27D9099D8;
  if (!qword_27D9099D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9099D8);
  }

  return result;
}

unint64_t sub_22BEDF758()
{
  result = qword_27D9099E0;
  if (!qword_27D9099E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9099E0);
  }

  return result;
}

unint64_t sub_22BEDF7AC()
{
  result = qword_27D9099E8;
  if (!qword_27D9099E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9099E8);
  }

  return result;
}

unint64_t sub_22BEDF800()
{
  result = qword_27D9099F0;
  if (!qword_27D9099F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9099F0);
  }

  return result;
}

unint64_t sub_22BEDF854()
{
  result = qword_27D9099F8;
  if (!qword_27D9099F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9099F8);
  }

  return result;
}

unint64_t sub_22BEDF8A8()
{
  result = qword_27D909A00;
  if (!qword_27D909A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909A00);
  }

  return result;
}

unint64_t sub_22BEDF8FC()
{
  result = qword_27D909A08;
  if (!qword_27D909A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909A08);
  }

  return result;
}

unint64_t sub_22BEDF950()
{
  result = qword_27D909A10;
  if (!qword_27D909A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909A10);
  }

  return result;
}

unint64_t sub_22BEDF9A4()
{
  result = qword_27D909A18;
  if (!qword_27D909A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909A18);
  }

  return result;
}

unint64_t sub_22BEDF9F8()
{
  result = qword_27D909A20;
  if (!qword_27D909A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909A20);
  }

  return result;
}

unint64_t sub_22BEDFA4C()
{
  result = qword_27D909A28;
  if (!qword_27D909A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909A28);
  }

  return result;
}

unint64_t sub_22BEDFAA0()
{
  result = qword_27D909A30;
  if (!qword_27D909A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909A30);
  }

  return result;
}

unint64_t sub_22BEDFAF4()
{
  result = qword_27D909A38;
  if (!qword_27D909A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909A38);
  }

  return result;
}

unint64_t sub_22BEDFB48()
{
  result = qword_27D909A40;
  if (!qword_27D909A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909A40);
  }

  return result;
}

unint64_t sub_22BEDFB9C()
{
  result = qword_27D909A48;
  if (!qword_27D909A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909A48);
  }

  return result;
}

unint64_t sub_22BEDFBF0()
{
  result = qword_27D909A50;
  if (!qword_27D909A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909A50);
  }

  return result;
}

unint64_t sub_22BEDFC44()
{
  result = qword_27D909B00;
  if (!qword_27D909B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909B00);
  }

  return result;
}

unint64_t sub_22BEDFC98()
{
  result = qword_27D909B08;
  if (!qword_27D909B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909B08);
  }

  return result;
}

unint64_t sub_22BEDFCEC()
{
  result = qword_27D909B18;
  if (!qword_27D909B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909B18);
  }

  return result;
}

uint64_t sub_22BEDFD40(uint64_t a1, uint64_t a2)
{
  v3 = sub_22BE23C8C();
  v5 = v4(v3);
  sub_22BE18000(v5);
  v7 = *(v6 + 16);
  v8 = sub_22BE19454();
  v9(v8);
  return a2;
}

unint64_t sub_22BEDFD98()
{
  result = qword_27D909B28;
  if (!qword_27D909B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909B28);
  }

  return result;
}

unint64_t sub_22BEDFE0C()
{
  result = qword_27D909B40;
  if (!qword_27D909B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909B40);
  }

  return result;
}

unint64_t sub_22BEDFE60()
{
  result = qword_27D909B48;
  if (!qword_27D909B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909B48);
  }

  return result;
}

unint64_t sub_22BEDFEB4()
{
  result = qword_27D909B58;
  if (!qword_27D909B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909B58);
  }

  return result;
}

unint64_t sub_22BEDFF08()
{
  result = qword_27D909B78;
  if (!qword_27D909B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909B78);
  }

  return result;
}

unint64_t sub_22BEDFF5C()
{
  result = qword_27D909B80;
  if (!qword_27D909B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909B80);
  }

  return result;
}

unint64_t sub_22BEDFFB0()
{
  result = qword_27D909B88;
  if (!qword_27D909B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909B88);
  }

  return result;
}

unint64_t sub_22BEE0004()
{
  result = qword_27D909BB0;
  if (!qword_27D909BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909BB0);
  }

  return result;
}

unint64_t sub_22BEE0058()
{
  result = qword_27D909BC0;
  if (!qword_27D909BC0)
  {
    sub_22BE7431C(&qword_27D909BB8, &qword_22C280388);
    sub_22BECD12C(&qword_27D909BC8, type metadata accessor for UpdateParametersExpression.UpdateParameter);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909BC0);
  }

  return result;
}

unint64_t sub_22BEE010C()
{
  result = qword_27D909BD8;
  if (!qword_27D909BD8)
  {
    sub_22BE7431C(&qword_27D909BB8, &qword_22C280388);
    sub_22BECD12C(&qword_27D909BE0, type metadata accessor for UpdateParametersExpression.UpdateParameter);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909BD8);
  }

  return result;
}

unint64_t sub_22BEE01C0()
{
  result = qword_27D909BF0;
  if (!qword_27D909BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909BF0);
  }

  return result;
}

unint64_t sub_22BEE0214()
{
  result = qword_27D909C00;
  if (!qword_27D909C00)
  {
    sub_22BE7431C(&qword_27D909BF8, &qword_22C2803A0);
    sub_22BECD12C(&qword_28107F2F8, MEMORY[0x277D1C338]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909C00);
  }

  return result;
}

unint64_t sub_22BEE02D0()
{
  result = qword_27D909C10;
  if (!qword_27D909C10)
  {
    sub_22BE7431C(&qword_27D909BF8, &qword_22C2803A0);
    sub_22BECD12C(&qword_27D908560, MEMORY[0x277D1C338]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909C10);
  }

  return result;
}

unint64_t sub_22BEE038C()
{
  result = qword_27D909C20;
  if (!qword_27D909C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909C20);
  }

  return result;
}

unint64_t sub_22BEE03E0()
{
  result = qword_27D909C30;
  if (!qword_27D909C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909C30);
  }

  return result;
}

unint64_t sub_22BEE0434()
{
  result = qword_27D909C48;
  if (!qword_27D909C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909C48);
  }

  return result;
}

unint64_t sub_22BEE0488()
{
  result = qword_27D909C60;
  if (!qword_27D909C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909C60);
  }

  return result;
}

unint64_t sub_22BEE04DC()
{
  result = qword_27D909C78;
  if (!qword_27D909C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909C78);
  }

  return result;
}

unint64_t sub_22BEE0530()
{
  result = qword_27D909C90;
  if (!qword_27D909C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909C90);
  }

  return result;
}

unint64_t sub_22BEE0584()
{
  result = qword_27D909CA8;
  if (!qword_27D909CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909CA8);
  }

  return result;
}

uint64_t sub_22BEE05D8()
{
  sub_22BE18378();
  v5 = sub_22BE39168(v1, v2, v3, v4);
  sub_22BE18000(v5);
  v7 = *(v6 + 40);
  v8 = sub_22BE19454();
  v9(v8);
  return v0;
}

unint64_t sub_22BEE0648()
{
  result = qword_27D909CC0;
  if (!qword_27D909CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909CC0);
  }

  return result;
}

unint64_t sub_22BEE069C()
{
  result = qword_27D909CD8;
  if (!qword_27D909CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909CD8);
  }

  return result;
}

unint64_t sub_22BEE06F0()
{
  result = qword_27D909CF0;
  if (!qword_27D909CF0)
  {
    sub_22BE7431C(&qword_27D909CE8, &qword_22C280430);
    sub_22BECD12C(&qword_27D909CF8, type metadata accessor for StructuredSearchExpression.StructuredSearchProperty);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909CF0);
  }

  return result;
}

unint64_t sub_22BEE07A4()
{
  result = qword_27D909D10;
  if (!qword_27D909D10)
  {
    sub_22BE7431C(&qword_27D909CE8, &qword_22C280430);
    sub_22BECD12C(&qword_27D909D18, type metadata accessor for StructuredSearchExpression.StructuredSearchProperty);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909D10);
  }

  return result;
}

unint64_t sub_22BEE0858()
{
  result = qword_27D909D48;
  if (!qword_27D909D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909D48);
  }

  return result;
}

unint64_t sub_22BEE08AC()
{
  result = qword_27D909D50;
  if (!qword_27D909D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909D50);
  }

  return result;
}

unint64_t sub_22BEE0900()
{
  result = qword_27D909D58;
  if (!qword_27D909D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909D58);
  }

  return result;
}

unint64_t sub_22BEE0954()
{
  result = qword_27D909D60;
  if (!qword_27D909D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909D60);
  }

  return result;
}

unint64_t sub_22BEE09A8()
{
  result = qword_27D909D68;
  if (!qword_27D909D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909D68);
  }

  return result;
}

unint64_t sub_22BEE09FC()
{
  result = qword_27D909DA0;
  if (!qword_27D909DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909DA0);
  }

  return result;
}

unint64_t sub_22BEE0A50()
{
  result = qword_27D909DB8;
  if (!qword_27D909DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909DB8);
  }

  return result;
}

uint64_t sub_22BEE0AA4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_22BE7431C(&qword_27D909DC0, &qword_22C2804A8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22BEE0B1C()
{
  result = qword_27D909DE8;
  if (!qword_27D909DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909DE8);
  }

  return result;
}

unint64_t sub_22BEE0B70()
{
  result = qword_27D909E00;
  if (!qword_27D909E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909E00);
  }

  return result;
}

unint64_t sub_22BEE0BC4()
{
  result = qword_27D909E18;
  if (!qword_27D909E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909E18);
  }

  return result;
}

unint64_t sub_22BEE0C18()
{
  result = qword_27D909E30;
  if (!qword_27D909E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909E30);
  }

  return result;
}

unint64_t sub_22BEE0C6C()
{
  result = qword_27D909E48;
  if (!qword_27D909E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909E48);
  }

  return result;
}

unint64_t sub_22BEE0CC0()
{
  result = qword_27D909E60;
  if (!qword_27D909E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909E60);
  }

  return result;
}

unint64_t sub_22BEE0D14()
{
  result = qword_27D909E78;
  if (!qword_27D909E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909E78);
  }

  return result;
}

unint64_t sub_22BEE0D68()
{
  result = qword_27D909E90;
  if (!qword_27D909E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909E90);
  }

  return result;
}

unint64_t sub_22BEE0DBC()
{
  result = qword_27D909EA8;
  if (!qword_27D909EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909EA8);
  }

  return result;
}

unint64_t sub_22BEE0E30()
{
  result = qword_27D909ED0;
  if (!qword_27D909ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909ED0);
  }

  return result;
}

unint64_t sub_22BEE0E84()
{
  result = qword_27D909ED8;
  if (!qword_27D909ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909ED8);
  }

  return result;
}

unint64_t sub_22BEE0ED8()
{
  result = qword_27D909EE0;
  if (!qword_27D909EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909EE0);
  }

  return result;
}

unint64_t sub_22BEE0F2C()
{
  result = qword_27D909F08;
  if (!qword_27D909F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909F08);
  }

  return result;
}

unint64_t sub_22BEE0F80()
{
  result = qword_27D909F18;
  if (!qword_27D909F18)
  {
    sub_22BE7431C(&qword_27D909F10, &qword_22C280588);
    sub_22BECD12C(&qword_27D909F20, type metadata accessor for AnswerSynthesisExpression.ExtractionCandidate);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909F18);
  }

  return result;
}

unint64_t sub_22BEE1034()
{
  result = qword_27D909F30;
  if (!qword_27D909F30)
  {
    sub_22BE7431C(&qword_27D909F10, &qword_22C280588);
    sub_22BECD12C(&qword_27D909F38, type metadata accessor for AnswerSynthesisExpression.ExtractionCandidate);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909F30);
  }

  return result;
}

unint64_t sub_22BEE10EC()
{
  result = qword_27D909F48;
  if (!qword_27D909F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909F48);
  }

  return result;
}

unint64_t sub_22BEE1144()
{
  result = qword_27D909F50;
  if (!qword_27D909F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909F50);
  }

  return result;
}

unint64_t sub_22BEE119C()
{
  result = qword_27D909F58;
  if (!qword_27D909F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909F58);
  }

  return result;
}

unint64_t sub_22BEE11F4()
{
  result = qword_27D909F60;
  if (!qword_27D909F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909F60);
  }

  return result;
}

uint64_t sub_22BEE1248()
{
  result = sub_22C26E684();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for PrefixExpression(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for InfixExpression(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for IndexExpression(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for UpdateParametersExpression(319);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for RetrieveSpansExpression(319);
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for RetrieveToolsExpression(319);
              if (v7 <= 0x3F)
              {
                result = type metadata accessor for PickExpression(319);
                if (v8 <= 0x3F)
                {
                  result = type metadata accessor for ConfirmExpression(319);
                  if (v9 <= 0x3F)
                  {
                    result = type metadata accessor for StructuredSearchExpression(319);
                    if (v10 <= 0x3F)
                    {
                      result = type metadata accessor for PickOneExpression(319);
                      if (v11 <= 0x3F)
                      {
                        result = type metadata accessor for UndoExpression(319);
                        if (v12 <= 0x3F)
                        {
                          result = type metadata accessor for RejectExpression(319);
                          if (v13 <= 0x3F)
                          {
                            result = type metadata accessor for CancelExpression(319);
                            if (v14 <= 0x3F)
                            {
                              result = type metadata accessor for OpenExpression(319);
                              if (v15 <= 0x3F)
                              {
                                result = type metadata accessor for SiriXFallbackExpression(319);
                                if (v16 <= 0x3F)
                                {
                                  result = type metadata accessor for UserConfirmExpression(319);
                                  if (v17 <= 0x3F)
                                  {
                                    result = type metadata accessor for UserDisambiguateExpression(319);
                                    if (v18 <= 0x3F)
                                    {
                                      result = type metadata accessor for AnswerSynthesisExpression(319);
                                      if (v19 <= 0x3F)
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

  return result;
}

uint64_t sub_22BEE145C(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 5)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t sub_22BEE1478(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFA && *(a1 + 17))
    {
      v2 = *a1 + 249;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 6)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22BEE14B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
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

uint64_t sub_22BEE14FC(uint64_t result, unsigned int a2)
{
  if (a2 >= 6)
  {
    *result = a2 - 6;
    *(result + 8) = 0;
    LOBYTE(a2) = 6;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_22BEE154C()
{
  result = sub_22C26E684();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22BEE1600()
{
  result = sub_22C26E684();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22BEE16B4()
{
  result = sub_22C26E684();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_22BEE1790()
{
  sub_22BEE1D24(319, &qword_28106DB70);
  if (v0 <= 0x3F)
  {
    sub_22C26E684();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22BEE1894(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_22BEE1958()
{
  result = sub_22C26E684();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 sub_22BEE19F4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = result;
  return result;
}

uint64_t sub_22BEE1A08(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 19))
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

uint64_t sub_22BEE1A48(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 18) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 19) = 1;
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

    *(result + 19) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_22BEE1AC4()
{
  sub_22BEE1BC8();
  if (v0 <= 0x3F)
  {
    sub_22BEE1894(319, &qword_28106DF20, MEMORY[0x277D72B00], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_22BEE1894(319, &qword_28106DD30, type metadata accessor for StructuredSearchExpression.StructuredSearchProperty, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22BEE1BC8()
{
  if (!qword_28106DE80)
  {
    sub_22C26E684();
    v0 = sub_22C272EC4();
    if (!v1)
    {
      atomic_store(v0, &qword_28106DE80);
    }
  }
}

void sub_22BEE1C58()
{
  sub_22BEE1D24(319, &qword_28106DDD8);
  if (v0 <= 0x3F)
  {
    sub_22BEE1894(319, &qword_28107F2E8, MEMORY[0x277D1C338], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22BEE1D24(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_22C273844();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_22BEE1E58()
{
  result = sub_22C26E684();
  if (v1 <= 0x3F)
  {
    sub_22BEE92F0();
    return sub_22BEE94D4();
  }

  return result;
}

void sub_22BEE1EE8()
{
  sub_22BEE1894(319, &qword_28107F2E8, MEMORY[0x277D1C338], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_22BEE92F0();
    sub_22BEE94D4();
  }
}

void sub_22BEE1F88()
{
  sub_22C26E684();
  if (v0 <= 0x3F)
  {
    sub_22BEE1894(319, &qword_28107F2E8, MEMORY[0x277D1C338], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_22BEE2098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22BE17BC4();
  v6 = sub_22C26E684();
  v7 = sub_22BE187D0(v6);
  if (*(v8 + 84) != a2)
  {
    return sub_22BE1A5D0(*(v3 + *(a3 + 20)));
  }

  return sub_22BE1AEA8(v3, a2, v7);
}

uint64_t sub_22BEE2144(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_22BE18378();
  v8 = sub_22C26E684();
  result = sub_22BE187D0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = sub_22BE37694();

    return sub_22BE19DC4(v11, v12, v13, v14);
  }

  else
  {
    *(v5 + *(a4 + 20)) = (v4 - 1);
  }

  return result;
}

void sub_22BEE21F8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_22C26E684();
  if (v7 <= 0x3F)
  {
    sub_22BEE1894(319, a4, a5, MEMORY[0x277D83940]);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      sub_22BEE94D4();
    }
  }
}

uint64_t sub_22BEE22A4()
{
  result = sub_22C26E684();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22BEE252C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_22BE39E30(-1);
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return sub_22BE39E30((*a1 | (v4 << 8)) - 4);
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

      return sub_22BE39E30((*a1 | (v4 << 8)) - 4);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_22BE39E30((*a1 | (v4 << 8)) - 4);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return sub_22BE39E30(v8);
}

_BYTE *sub_22BEE25B0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result = sub_22BE22DB0(result, v6);
        break;
      case 2:
        result = sub_22BE18058(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_22BE25EF4(result, v6);
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
          result = sub_22BE22BD0(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_22BEE269C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xED)
  {
    v6 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
    switch(v5)
    {
      case 1:
        result = sub_22BE22DB0(result, v6);
        break;
      case 2:
        result = sub_22BE18058(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_22BE25EF4(result, v6);
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
          result = sub_22BE22BD0(result, a2 + 18);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_22BEE2898(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_22BE22DB0(result, v6);
        break;
      case 2:
        result = sub_22BE18058(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_22BE25EF4(result, v6);
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
          result = sub_22BE22BD0(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_22BEE2964(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_22BE22DB0(result, v6);
        break;
      case 2:
        result = sub_22BE18058(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_22BE25EF4(result, v6);
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
          result = sub_22BE22BD0(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ValueExpression.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ValueExpression.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Expression.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE1)
  {
    if (a2 + 31 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 31) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 32;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x20;
  v5 = v6 - 32;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Expression.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 31 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 31) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE0)
  {
    v6 = ((a2 - 225) >> 8) + 1;
    *result = a2 + 31;
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
          *result = a2 + 31;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_22BEE2F88(_BYTE *result, int a2, int a3)
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

unint64_t sub_22BEE3038()
{
  result = qword_27D909F68;
  if (!qword_27D909F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909F68);
  }

  return result;
}

unint64_t sub_22BEE3090()
{
  result = qword_27D909F70;
  if (!qword_27D909F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909F70);
  }

  return result;
}

unint64_t sub_22BEE30E8()
{
  result = qword_27D909F78;
  if (!qword_27D909F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909F78);
  }

  return result;
}

unint64_t sub_22BEE3140()
{
  result = qword_27D909F80;
  if (!qword_27D909F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909F80);
  }

  return result;
}

unint64_t sub_22BEE3198()
{
  result = qword_27D909F88;
  if (!qword_27D909F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909F88);
  }

  return result;
}

unint64_t sub_22BEE31F0()
{
  result = qword_27D909F90;
  if (!qword_27D909F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909F90);
  }

  return result;
}

unint64_t sub_22BEE3248()
{
  result = qword_27D909F98;
  if (!qword_27D909F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909F98);
  }

  return result;
}

unint64_t sub_22BEE32A0()
{
  result = qword_27D909FA0;
  if (!qword_27D909FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909FA0);
  }

  return result;
}

unint64_t sub_22BEE32F8()
{
  result = qword_27D909FA8;
  if (!qword_27D909FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909FA8);
  }

  return result;
}

unint64_t sub_22BEE3350()
{
  result = qword_27D909FB0;
  if (!qword_27D909FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909FB0);
  }

  return result;
}

unint64_t sub_22BEE33A8()
{
  result = qword_27D909FB8;
  if (!qword_27D909FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909FB8);
  }

  return result;
}

unint64_t sub_22BEE3400()
{
  result = qword_27D909FC0;
  if (!qword_27D909FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909FC0);
  }

  return result;
}

unint64_t sub_22BEE3458()
{
  result = qword_27D909FC8;
  if (!qword_27D909FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909FC8);
  }

  return result;
}

unint64_t sub_22BEE34B0()
{
  result = qword_27D909FD0;
  if (!qword_27D909FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909FD0);
  }

  return result;
}

unint64_t sub_22BEE3508()
{
  result = qword_27D909FD8;
  if (!qword_27D909FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909FD8);
  }

  return result;
}

unint64_t sub_22BEE3560()
{
  result = qword_27D909FE0;
  if (!qword_27D909FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909FE0);
  }

  return result;
}

unint64_t sub_22BEE35B8()
{
  result = qword_27D909FE8;
  if (!qword_27D909FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909FE8);
  }

  return result;
}

unint64_t sub_22BEE3610()
{
  result = qword_27D909FF0;
  if (!qword_27D909FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909FF0);
  }

  return result;
}

unint64_t sub_22BEE3668()
{
  result = qword_27D909FF8;
  if (!qword_27D909FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909FF8);
  }

  return result;
}

unint64_t sub_22BEE36C0()
{
  result = qword_27D90A000;
  if (!qword_27D90A000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A000);
  }

  return result;
}

unint64_t sub_22BEE3718()
{
  result = qword_27D90A008;
  if (!qword_27D90A008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A008);
  }

  return result;
}

unint64_t sub_22BEE3770()
{
  result = qword_27D90A010;
  if (!qword_27D90A010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A010);
  }

  return result;
}

unint64_t sub_22BEE37C8()
{
  result = qword_27D90A018;
  if (!qword_27D90A018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A018);
  }

  return result;
}

unint64_t sub_22BEE3820()
{
  result = qword_27D90A020;
  if (!qword_27D90A020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A020);
  }

  return result;
}

unint64_t sub_22BEE3878()
{
  result = qword_27D90A028;
  if (!qword_27D90A028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A028);
  }

  return result;
}

unint64_t sub_22BEE38D0()
{
  result = qword_27D90A030;
  if (!qword_27D90A030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A030);
  }

  return result;
}

unint64_t sub_22BEE3928()
{
  result = qword_27D90A038;
  if (!qword_27D90A038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A038);
  }

  return result;
}

unint64_t sub_22BEE3980()
{
  result = qword_27D90A040;
  if (!qword_27D90A040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A040);
  }

  return result;
}

unint64_t sub_22BEE39D8()
{
  result = qword_27D90A048;
  if (!qword_27D90A048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A048);
  }

  return result;
}

unint64_t sub_22BEE3A30()
{
  result = qword_27D90A050;
  if (!qword_27D90A050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A050);
  }

  return result;
}

unint64_t sub_22BEE3A88()
{
  result = qword_27D90A058;
  if (!qword_27D90A058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A058);
  }

  return result;
}

unint64_t sub_22BEE3AE0()
{
  result = qword_27D90A060;
  if (!qword_27D90A060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A060);
  }

  return result;
}

unint64_t sub_22BEE3B38()
{
  result = qword_27D90A068;
  if (!qword_27D90A068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A068);
  }

  return result;
}

unint64_t sub_22BEE3B90()
{
  result = qword_27D90A070;
  if (!qword_27D90A070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A070);
  }

  return result;
}

unint64_t sub_22BEE3BE8()
{
  result = qword_27D90A078;
  if (!qword_27D90A078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A078);
  }

  return result;
}

unint64_t sub_22BEE3C40()
{
  result = qword_27D90A080;
  if (!qword_27D90A080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A080);
  }

  return result;
}

unint64_t sub_22BEE3C98()
{
  result = qword_27D90A088;
  if (!qword_27D90A088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A088);
  }

  return result;
}

unint64_t sub_22BEE3CF0()
{
  result = qword_27D90A090;
  if (!qword_27D90A090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A090);
  }

  return result;
}

unint64_t sub_22BEE3D48()
{
  result = qword_27D90A098;
  if (!qword_27D90A098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A098);
  }

  return result;
}

unint64_t sub_22BEE3DA0()
{
  result = qword_27D90A0A0;
  if (!qword_27D90A0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A0A0);
  }

  return result;
}

unint64_t sub_22BEE3DF8()
{
  result = qword_27D90A0A8;
  if (!qword_27D90A0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A0A8);
  }

  return result;
}

unint64_t sub_22BEE3E50()
{
  result = qword_27D90A0B0;
  if (!qword_27D90A0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A0B0);
  }

  return result;
}

unint64_t sub_22BEE3EA8()
{
  result = qword_27D90A0B8;
  if (!qword_27D90A0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A0B8);
  }

  return result;
}

unint64_t sub_22BEE3F00()
{
  result = qword_27D90A0C0;
  if (!qword_27D90A0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A0C0);
  }

  return result;
}

unint64_t sub_22BEE3F58()
{
  result = qword_27D90A0C8;
  if (!qword_27D90A0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A0C8);
  }

  return result;
}

unint64_t sub_22BEE3FB0()
{
  result = qword_27D90A0D0;
  if (!qword_27D90A0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A0D0);
  }

  return result;
}

unint64_t sub_22BEE4008()
{
  result = qword_27D90A0D8;
  if (!qword_27D90A0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A0D8);
  }

  return result;
}

unint64_t sub_22BEE4060()
{
  result = qword_27D90A0E0;
  if (!qword_27D90A0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A0E0);
  }

  return result;
}

unint64_t sub_22BEE40B8()
{
  result = qword_27D90A0E8;
  if (!qword_27D90A0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A0E8);
  }

  return result;
}

unint64_t sub_22BEE4110()
{
  result = qword_27D90A0F0;
  if (!qword_27D90A0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A0F0);
  }

  return result;
}

unint64_t sub_22BEE4168()
{
  result = qword_27D90A0F8;
  if (!qword_27D90A0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A0F8);
  }

  return result;
}

unint64_t sub_22BEE41C0()
{
  result = qword_27D90A100;
  if (!qword_27D90A100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A100);
  }

  return result;
}

unint64_t sub_22BEE4218()
{
  result = qword_27D90A108;
  if (!qword_27D90A108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A108);
  }

  return result;
}

unint64_t sub_22BEE4270()
{
  result = qword_27D90A110;
  if (!qword_27D90A110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A110);
  }

  return result;
}

unint64_t sub_22BEE42C8()
{
  result = qword_27D90A118;
  if (!qword_27D90A118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A118);
  }

  return result;
}

unint64_t sub_22BEE4320()
{
  result = qword_27D90A120;
  if (!qword_27D90A120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A120);
  }

  return result;
}

unint64_t sub_22BEE4378()
{
  result = qword_27D90A128;
  if (!qword_27D90A128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A128);
  }

  return result;
}

unint64_t sub_22BEE43D0()
{
  result = qword_27D90A130;
  if (!qword_27D90A130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A130);
  }

  return result;
}

unint64_t sub_22BEE4428()
{
  result = qword_27D90A138;
  if (!qword_27D90A138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A138);
  }

  return result;
}

unint64_t sub_22BEE4480()
{
  result = qword_27D90A140;
  if (!qword_27D90A140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A140);
  }

  return result;
}

unint64_t sub_22BEE44D8()
{
  result = qword_27D90A148;
  if (!qword_27D90A148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A148);
  }

  return result;
}

unint64_t sub_22BEE4530()
{
  result = qword_27D90A150;
  if (!qword_27D90A150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A150);
  }

  return result;
}

unint64_t sub_22BEE4588()
{
  result = qword_27D90A158;
  if (!qword_27D90A158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A158);
  }

  return result;
}

unint64_t sub_22BEE45E0()
{
  result = qword_27D90A160;
  if (!qword_27D90A160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A160);
  }

  return result;
}

unint64_t sub_22BEE4638()
{
  result = qword_27D90A168;
  if (!qword_27D90A168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A168);
  }

  return result;
}

unint64_t sub_22BEE4690()
{
  result = qword_27D90A170;
  if (!qword_27D90A170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A170);
  }

  return result;
}

unint64_t sub_22BEE46E8()
{
  result = qword_27D90A178;
  if (!qword_27D90A178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A178);
  }

  return result;
}

unint64_t sub_22BEE4740()
{
  result = qword_27D90A180;
  if (!qword_27D90A180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A180);
  }

  return result;
}

unint64_t sub_22BEE4798()
{
  result = qword_27D90A188;
  if (!qword_27D90A188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A188);
  }

  return result;
}

unint64_t sub_22BEE47F0()
{
  result = qword_27D90A190;
  if (!qword_27D90A190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A190);
  }

  return result;
}

unint64_t sub_22BEE4848()
{
  result = qword_27D90A198;
  if (!qword_27D90A198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A198);
  }

  return result;
}

unint64_t sub_22BEE48A0()
{
  result = qword_27D90A1A0;
  if (!qword_27D90A1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A1A0);
  }

  return result;
}

unint64_t sub_22BEE48F8()
{
  result = qword_27D90A1A8;
  if (!qword_27D90A1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A1A8);
  }

  return result;
}

unint64_t sub_22BEE4950()
{
  result = qword_27D90A1B0;
  if (!qword_27D90A1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A1B0);
  }

  return result;
}

unint64_t sub_22BEE49A8()
{
  result = qword_27D90A1B8;
  if (!qword_27D90A1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A1B8);
  }

  return result;
}

unint64_t sub_22BEE4A00()
{
  result = qword_27D90A1C0;
  if (!qword_27D90A1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A1C0);
  }

  return result;
}

unint64_t sub_22BEE4A58()
{
  result = qword_27D90A1C8;
  if (!qword_27D90A1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A1C8);
  }

  return result;
}

unint64_t sub_22BEE4AB0()
{
  result = qword_27D90A1D0;
  if (!qword_27D90A1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A1D0);
  }

  return result;
}

unint64_t sub_22BEE4B08()
{
  result = qword_27D90A1D8;
  if (!qword_27D90A1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A1D8);
  }

  return result;
}

unint64_t sub_22BEE4B60()
{
  result = qword_27D90A1E0;
  if (!qword_27D90A1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A1E0);
  }

  return result;
}

unint64_t sub_22BEE4BB8()
{
  result = qword_27D90A1E8;
  if (!qword_27D90A1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A1E8);
  }

  return result;
}

unint64_t sub_22BEE4C10()
{
  result = qword_27D90A1F0;
  if (!qword_27D90A1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A1F0);
  }

  return result;
}

unint64_t sub_22BEE4C68()
{
  result = qword_27D90A1F8;
  if (!qword_27D90A1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A1F8);
  }

  return result;
}

unint64_t sub_22BEE4CC0()
{
  result = qword_27D90A200;
  if (!qword_27D90A200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A200);
  }

  return result;
}

unint64_t sub_22BEE4D18()
{
  result = qword_27D90A208;
  if (!qword_27D90A208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A208);
  }

  return result;
}

unint64_t sub_22BEE4D70()
{
  result = qword_27D90A210;
  if (!qword_27D90A210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A210);
  }

  return result;
}

unint64_t sub_22BEE4DC8()
{
  result = qword_27D90A218;
  if (!qword_27D90A218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A218);
  }

  return result;
}

unint64_t sub_22BEE4E20()
{
  result = qword_27D90A220;
  if (!qword_27D90A220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A220);
  }

  return result;
}

unint64_t sub_22BEE4E78()
{
  result = qword_27D90A228;
  if (!qword_27D90A228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A228);
  }

  return result;
}

unint64_t sub_22BEE4ED0()
{
  result = qword_27D90A230;
  if (!qword_27D90A230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A230);
  }

  return result;
}

unint64_t sub_22BEE4F28()
{
  result = qword_27D90A238;
  if (!qword_27D90A238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A238);
  }

  return result;
}

unint64_t sub_22BEE4F80()
{
  result = qword_27D90A240;
  if (!qword_27D90A240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A240);
  }

  return result;
}

unint64_t sub_22BEE4FD8()
{
  result = qword_27D90A248;
  if (!qword_27D90A248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A248);
  }

  return result;
}

unint64_t sub_22BEE5030()
{
  result = qword_27D90A250;
  if (!qword_27D90A250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A250);
  }

  return result;
}

unint64_t sub_22BEE5088()
{
  result = qword_27D90A258;
  if (!qword_27D90A258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A258);
  }

  return result;
}

unint64_t sub_22BEE50E0()
{
  result = qword_27D90A260;
  if (!qword_27D90A260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A260);
  }

  return result;
}

unint64_t sub_22BEE5138()
{
  result = qword_27D90A268;
  if (!qword_27D90A268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A268);
  }

  return result;
}

unint64_t sub_22BEE5190()
{
  result = qword_27D90A270;
  if (!qword_27D90A270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A270);
  }

  return result;
}

unint64_t sub_22BEE51E8()
{
  result = qword_27D90A278;
  if (!qword_27D90A278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A278);
  }

  return result;
}

unint64_t sub_22BEE5240()
{
  result = qword_27D90A280;
  if (!qword_27D90A280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A280);
  }

  return result;
}

unint64_t sub_22BEE5298()
{
  result = qword_27D90A288;
  if (!qword_27D90A288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A288);
  }

  return result;
}

unint64_t sub_22BEE52F0()
{
  result = qword_27D90A290;
  if (!qword_27D90A290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A290);
  }

  return result;
}

unint64_t sub_22BEE5348()
{
  result = qword_27D90A298;
  if (!qword_27D90A298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A298);
  }

  return result;
}

unint64_t sub_22BEE53A0()
{
  result = qword_27D90A2A0;
  if (!qword_27D90A2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A2A0);
  }

  return result;
}

unint64_t sub_22BEE53F8()
{
  result = qword_27D90A2A8;
  if (!qword_27D90A2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A2A8);
  }

  return result;
}

unint64_t sub_22BEE5450()
{
  result = qword_27D90A2B0;
  if (!qword_27D90A2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A2B0);
  }

  return result;
}

unint64_t sub_22BEE54A8()
{
  result = qword_27D90A2B8;
  if (!qword_27D90A2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A2B8);
  }

  return result;
}

unint64_t sub_22BEE5500()
{
  result = qword_27D90A2C0;
  if (!qword_27D90A2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A2C0);
  }

  return result;
}

unint64_t sub_22BEE5558()
{
  result = qword_27D90A2C8;
  if (!qword_27D90A2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A2C8);
  }

  return result;
}

unint64_t sub_22BEE55B0()
{
  result = qword_27D90A2D0;
  if (!qword_27D90A2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A2D0);
  }

  return result;
}

unint64_t sub_22BEE5608()
{
  result = qword_27D90A2D8;
  if (!qword_27D90A2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A2D8);
  }

  return result;
}

unint64_t sub_22BEE5660()
{
  result = qword_27D90A2E0;
  if (!qword_27D90A2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A2E0);
  }

  return result;
}

unint64_t sub_22BEE56B8()
{
  result = qword_27D90A2E8;
  if (!qword_27D90A2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A2E8);
  }

  return result;
}

unint64_t sub_22BEE5710()
{
  result = qword_27D90A2F0;
  if (!qword_27D90A2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A2F0);
  }

  return result;
}

unint64_t sub_22BEE5768()
{
  result = qword_27D90A2F8;
  if (!qword_27D90A2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A2F8);
  }

  return result;
}

unint64_t sub_22BEE57C0()
{
  result = qword_27D90A300;
  if (!qword_27D90A300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A300);
  }

  return result;
}

unint64_t sub_22BEE5818()
{
  result = qword_27D90A308;
  if (!qword_27D90A308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A308);
  }

  return result;
}

unint64_t sub_22BEE5870()
{
  result = qword_27D90A310;
  if (!qword_27D90A310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A310);
  }

  return result;
}

unint64_t sub_22BEE58C8()
{
  result = qword_27D90A318;
  if (!qword_27D90A318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A318);
  }

  return result;
}

unint64_t sub_22BEE5920()
{
  result = qword_27D90A320;
  if (!qword_27D90A320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A320);
  }

  return result;
}

unint64_t sub_22BEE5978()
{
  result = qword_27D90A328;
  if (!qword_27D90A328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A328);
  }

  return result;
}

unint64_t sub_22BEE59D0()
{
  result = qword_27D90A330;
  if (!qword_27D90A330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A330);
  }

  return result;
}

unint64_t sub_22BEE5A28()
{
  result = qword_27D90A338;
  if (!qword_27D90A338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A338);
  }

  return result;
}

unint64_t sub_22BEE5A80()
{
  result = qword_27D90A340;
  if (!qword_27D90A340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A340);
  }

  return result;
}

unint64_t sub_22BEE5AD8()
{
  result = qword_27D90A348;
  if (!qword_27D90A348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A348);
  }

  return result;
}

unint64_t sub_22BEE5B30()
{
  result = qword_27D90A350;
  if (!qword_27D90A350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A350);
  }

  return result;
}

unint64_t sub_22BEE5B88()
{
  result = qword_27D90A358;
  if (!qword_27D90A358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A358);
  }

  return result;
}

unint64_t sub_22BEE5BE0()
{
  result = qword_27D90A360;
  if (!qword_27D90A360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A360);
  }

  return result;
}

unint64_t sub_22BEE5C38()
{
  result = qword_27D90A368;
  if (!qword_27D90A368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A368);
  }

  return result;
}

unint64_t sub_22BEE5C90()
{
  result = qword_27D90A370;
  if (!qword_27D90A370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A370);
  }

  return result;
}