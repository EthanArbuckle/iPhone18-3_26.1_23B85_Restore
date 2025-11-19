uint64_t ParameterNotAllowed.init(parameterId:value:)()
{
  sub_1DD824C64();
  v4 = type metadata accessor for ParameterNotAllowed(0);
  *(v3 + *(v4 + 24)) = 0;
  *v3 = v2;
  v3[1] = v1;
  v5 = *(v4 + 20);
  v6 = sub_1DD874FA0();
  sub_1DD6DF448(v6);
  v8 = *(v7 + 32);

  return v8(v3 + v5, v0);
}

uint64_t ParameterNotAllowed.init(parameterId:value:reason:)()
{
  sub_1DD824C64();
  v5 = *v4;
  v6 = type metadata accessor for ParameterNotAllowed(0);
  v7 = *(v6 + 24);
  *(v3 + v7) = 0;
  *v3 = v2;
  v3[1] = v1;
  v8 = *(v6 + 20);
  v9 = sub_1DD874FA0();
  sub_1DD6DF448(v9);
  result = (*(v10 + 32))(v3 + v8, v0);
  *(v3 + v7) = v5;
  return result;
}

uint64_t sub_1DD7F1D7C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574656D61726170 && a2 == 0xEB00000000644972;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1DD875A30();

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

uint64_t sub_1DD7F1E88(char a1)
{
  if (!a1)
  {
    return 0x6574656D61726170;
  }

  if (a1 == 1)
  {
    return 0x65756C6176;
  }

  return 0x6E6F73616572;
}

uint64_t sub_1DD7F1EE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7F1D7C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7F1F10(uint64_t a1)
{
  v2 = sub_1DD8076FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7F1F4C(uint64_t a1)
{
  v2 = sub_1DD8076FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ParameterNotAllowed.encode(to:)()
{
  sub_1DD826CE0();
  sub_1DD6FE1BC();
  v3 = sub_1DD710A9C(&qword_1ECD13270, &qword_1DD88A628);
  sub_1DD6E49A8(v3);
  v5 = *(v4 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD6DEA6C();
  sub_1DD6DEAD0();
  sub_1DD8076FC();
  sub_1DD6E1808();
  v7 = *v1;
  v8 = v1[1];
  sub_1DD705FD8();
  sub_1DD824BDC();
  sub_1DD875970();
  if (!v0)
  {
    v9 = type metadata accessor for ParameterNotAllowed(0);
    sub_1DD82553C(v9);
    sub_1DD874FA0();
    sub_1DD6E05D4();
    sub_1DD6E1E84(v10);
    sub_1DD8265F0();
    sub_1DD6E63A8();
    sub_1DD8759D0();
    v13 = *(v1 + *(v2 + 24));
    sub_1DD8263D0();
    sub_1DD807750();
    sub_1DD824DE8();
    sub_1DD8759D0();
  }

  v11 = sub_1DD6EFFB4();
  v12(v11);
  sub_1DD825790();
  sub_1DD826CF4();
}

void ParameterNotAllowed.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12)
{
  sub_1DD6DED2C();
  v15 = v14;
  sub_1DD826914(v16);
  v40 = sub_1DD874FA0();
  v17 = sub_1DD6DDEAC(v40);
  v38 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1DD6DDEE8();
  v39 = v21;
  v41 = sub_1DD710A9C(&qword_1ECD13288, &qword_1DD88A630);
  sub_1DD6DDEAC(v41);
  v23 = *(v22 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v24);
  v25 = sub_1DD6E27D4();
  v26 = type metadata accessor for ParameterNotAllowed(v25);
  v27 = sub_1DD6DE1C4(v26);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  sub_1DD6DE4A8();
  sub_1DD700C78();
  v31 = *(v30 + 24);
  *(v13 + v31) = 0;
  v32 = v15[3];
  v33 = v15[4];
  sub_1DD824CF8(v15);
  sub_1DD8076FC();
  sub_1DD8259BC();
  sub_1DD826A7C();
  sub_1DD875B90();
  if (v12)
  {
    sub_1DD6E1EC8(v15);
  }

  else
  {
    sub_1DD8259A4();
    *v13 = sub_1DD875870();
    v13[1] = v34;
    sub_1DD6DEC54();
    sub_1DD6E05D4();
    sub_1DD6E1E84(v35);
    sub_1DD705C1C();
    sub_1DD8758D0();
    (*(v38 + 32))(v13 + *(v26 + 20), v39, v40);
    sub_1DD8263D0();
    sub_1DD8077A4();
    sub_1DD8758D0();
    v36 = sub_1DD826444();
    v37(v36);
    *(v13 + v31) = a12;
    sub_1DD825CEC();
    sub_1DD6E5870();
    sub_1DD6E1EC8(v15);
    sub_1DD826B48();
    sub_1DD6E5ABC();
  }

  sub_1DD6F9B18();
  sub_1DD6E0C78();
}

uint64_t ParameterCandidatesNotFound.value.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for ParameterCandidatesNotFound(v0) + 20);
  return sub_1DD6DDF9C();
}

uint64_t sub_1DD7F252C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X3>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  v4 = *(a3(0) + 20);
  v5 = sub_1DD874FA0();
  sub_1DD6DF448(v5);
  v7 = *(v6 + 32);
  v8 = sub_1DD6E26D8();

  return v9(v8);
}

uint64_t sub_1DD7F25A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574656D61726170 && a2 == 0xEB00000000644972;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD875A30();

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

uint64_t sub_1DD7F266C(char a1)
{
  if (a1)
  {
    return 0x65756C6176;
  }

  else
  {
    return 0x6574656D61726170;
  }
}

uint64_t sub_1DD7F26B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7F25A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7F26D8(uint64_t a1)
{
  v2 = sub_1DD8077F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7F2714(uint64_t a1)
{
  v2 = sub_1DD8077F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ParameterCandidatesNotFound.encode(to:)()
{
  sub_1DD826CE0();
  sub_1DD6F8C0C();
  v2 = sub_1DD710A9C(&qword_1ECD13298, &qword_1DD88A638);
  sub_1DD6E49A8(v2);
  v4 = *(v3 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6DE340();
  sub_1DD6DEAD0();
  sub_1DD8077F8();
  sub_1DD8250D8();
  sub_1DD875BB0();
  v6 = *v1;
  v7 = v1[1];
  sub_1DD705FD8();
  sub_1DD825620();
  sub_1DD875970();
  if (!v0)
  {
    v8 = *(type metadata accessor for ParameterCandidatesNotFound(0) + 20);
    sub_1DD6DEC54();
    sub_1DD874FA0();
    sub_1DD6E05D4();
    sub_1DD6E1E84(v9);
    sub_1DD700E54();
    sub_1DD6E730C();
    sub_1DD8759D0();
  }

  v10 = sub_1DD825168();
  v11(v10);
  sub_1DD825790();
  sub_1DD826CF4();
}

void ParameterCandidatesNotFound.init(from:)()
{
  sub_1DD6DED2C();
  sub_1DD825A04();
  v24 = sub_1DD874FA0();
  v5 = sub_1DD6DDEAC(v24);
  v23 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6E6200();
  v25 = sub_1DD710A9C(&qword_1ECD132A8, &qword_1DD88A640);
  sub_1DD6DDEAC(v25);
  v10 = *(v9 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_1DD6E27D4();
  v13 = type metadata accessor for ParameterCandidatesNotFound(v12);
  v14 = sub_1DD8247B4(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1DD702A64();
  v17 = v0[3];
  v18 = v0[4];
  sub_1DD824D14(v0);
  sub_1DD8077F8();
  sub_1DD8259BC();
  sub_1DD8268F0();
  sub_1DD875B90();
  if (v3)
  {
    sub_1DD6E1EC8(v0);
  }

  else
  {
    sub_1DD8259A4();
    sub_1DD6FAB58();
    *v2 = sub_1DD875870();
    v2[1] = v19;
    sub_1DD6DEC54();
    sub_1DD6E05D4();
    sub_1DD6E1E84(v20);
    sub_1DD826808();
    sub_1DD6FAB58();
    sub_1DD8758D0();
    v21 = sub_1DD7051D8();
    v22(v21);
    (*(v23 + 32))(v2 + *(v1 + 20), v4, v24);
    sub_1DD6E5870();
    sub_1DD6E1EC8(v0);
    sub_1DD6E5ABC();
  }

  sub_1DD703860();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7F2B80(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x80000001DD8B74D0 == a2;
  if (v3 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736C6F6F74 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD875A30();

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

uint64_t sub_1DD7F2C4C(char a1)
{
  if (a1)
  {
    return 0x736C6F6F74;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_1DD7F2C8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7F2B80(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7F2CB4(uint64_t a1)
{
  v2 = sub_1DD80784C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7F2CF0(uint64_t a1)
{
  v2 = sub_1DD80784C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ToolDisambiguation.encode(to:)()
{
  sub_1DD6DED2C();
  sub_1DD700858();
  v2 = sub_1DD710A9C(&qword_1ECD132B0, &qword_1DD88A648);
  sub_1DD6E49A8(v2);
  v4 = *(v3 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6DEA6C();
  v6 = *v0;
  v7 = v0[1];
  sub_1DD826A64();
  v8 = sub_1DD8267D8();
  sub_1DD6E7320(v8);
  sub_1DD80784C();
  sub_1DD6E17D8();
  sub_1DD825680();
  sub_1DD875BB0();
  sub_1DD8249BC();
  sub_1DD875920();
  if (!v1)
  {
    sub_1DD825014();
    sub_1DD710A9C(&qword_1ECD132C0, &qword_1DD88A650);
    sub_1DD8078A0();
    sub_1DD825630();
    sub_1DD6E9630();
    sub_1DD8759D0();
  }

  v9 = sub_1DD6DE58C();
  v10(v9);
  sub_1DD6E0CE8();
  sub_1DD6E0C78();
}

void ToolDisambiguation.init(from:)()
{
  sub_1DD6DED2C();
  sub_1DD825058();
  v2 = sub_1DD710A9C(&qword_1ECD132D8, &qword_1DD88A658);
  sub_1DD6DDEAC(v2);
  v4 = *(v3 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6DDFE4();
  sub_1DD6DE568();
  sub_1DD80784C();
  sub_1DD6ED2A4();
  if (v1)
  {
    sub_1DD6E1EC8(v0);
  }

  else
  {
    sub_1DD824D60();
    sub_1DD875820();
    sub_1DD825CD4();
    sub_1DD710A9C(&qword_1ECD132C0, &qword_1DD88A650);
    sub_1DD82552C();
    sub_1DD807954();
    sub_1DD824B6C();
    sub_1DD825CF8();
    sub_1DD6FAE18();
    sub_1DD8758D0();
    v6 = sub_1DD6DFF30();
    v7(v6);
    sub_1DD82696C();

    sub_1DD824F80();
  }

  sub_1DD6DF120();
  sub_1DD6E0C78();
}

uint64_t AppIntentsInvocationPreview.parameters.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t AppIntentsInvocationPreview.Parameter.key.setter()
{
  sub_1DD6DE304();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t AppIntentsInvocationPreview.Parameter.value.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  return sub_1DD718FA4();
}

uint64_t AppIntentsInvocationPreview.Parameter.value.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  result = sub_1DD718FB0();
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  return result;
}

__n128 AppIntentsInvocationPreview.Parameter.init(key:value:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X2>, __n128 *a4@<X8>)
{
  v4 = a3[1].n128_u8[0];
  a4->n128_u64[0] = a1;
  a4->n128_u64[1] = a2;
  result = *a3;
  a4[1] = *a3;
  a4[2].n128_u8[0] = v4;
  return result;
}

uint64_t _s16IntelligenceFlow14MessagePayloadO11SpeechQueryV9CandidateV2eeoiySbAG_AGtFZ_0(uint64_t a1)
{
  v1 = sub_1DD6E27E8(a1);
  if (v1 == *v2 && *(v3 + 8) == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1DD875A30();
  }
}

uint64_t sub_1DD7F3188(uint64_t a1)
{
  v2 = sub_1DD807A08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7F31C4(uint64_t a1)
{
  v2 = sub_1DD807A08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AppIntentsInvocationPreview.Parameter.Value.StringValue.encode(to:)()
{
  sub_1DD6DED2C();
  sub_1DD6F3538();
  v0 = sub_1DD710A9C(&qword_1ECD132F0, &qword_1DD88A660);
  sub_1DD6E125C(v0);
  v2 = *(v1 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1DD6DEBA0();
  sub_1DD6E9AEC();
  sub_1DD807A08();
  sub_1DD6F8C98();
  sub_1DD875BB0();
  sub_1DD6FBE70();
  sub_1DD875970();
  v4 = sub_1DD6FF808();
  v5(v4);
  sub_1DD7536FC();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7F3350()
{
  sub_1DD705CF0();
  if (v2 == 0x65756C6176 && v1 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    sub_1DD8256B0();
    sub_1DD875A30();
    sub_1DD82698C();
    v4 = v0 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DD7F33B4(uint64_t a1)
{
  v2 = sub_1DD807A5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7F33F0(uint64_t a1)
{
  v2 = sub_1DD807A5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AppIntentsInvocationPreview.Parameter.Value.ArrayValue.encode(to:)()
{
  sub_1DD6DED2C();
  v2 = v1;
  v3 = sub_1DD710A9C(&qword_1ECD13308, &qword_1DD88A670);
  sub_1DD6E49A8(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6DE340();
  v9 = *v0;
  v10 = v2[3];
  v11 = v2[4];
  sub_1DD6E6C94(v2);
  sub_1DD807A5C();

  sub_1DD8256E0();
  sub_1DD6DFF18();
  sub_1DD875BB0();
  sub_1DD710A9C(&qword_1ECD13318, &qword_1DD88A678);
  sub_1DD807AB0();
  sub_1DD8262B0();
  sub_1DD824BEC();
  sub_1DD8759D0();
  sub_1DD827394();

  v12 = *(v5 + 8);
  v13 = sub_1DD6E40D8();
  v14(v13);
  sub_1DD825AC0();
  sub_1DD6E0C78();
}

void AppIntentsInvocationPreview.Parameter.Value.ArrayValue.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1DD6DED2C();
  sub_1DD70068C();
  v13 = v12;
  v14 = sub_1DD710A9C(&qword_1ECD13330, &qword_1DD88A680);
  sub_1DD6E125C(v14);
  v16 = v15;
  v18 = *(v17 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v19);
  sub_1DD6DEBA0();
  sub_1DD6DE568();
  sub_1DD807A5C();
  sub_1DD6E4218();
  sub_1DD6DFF18();
  sub_1DD875B90();
  if (!v11)
  {
    sub_1DD710A9C(&qword_1ECD13318, &qword_1DD88A678);
    sub_1DD807B88();
    sub_1DD825118();
    sub_1DD6FAC28();
    sub_1DD8758D0();
    v20 = *(v16 + 8);
    v21 = sub_1DD6DDEDC();
    v22(v21);
    *v13 = a10;
  }

  sub_1DD6E1EC8(v10);
  sub_1DD792AF8();
  sub_1DD6E0C78();
}

uint64_t static AppIntentsInvocationPreview.Parameter.Value.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  sub_1DD827600(a1, a2);
  if (v7)
  {
    if (v6)
    {
      sub_1DD6E0C60();
      sub_1DD718FA4();
      sub_1DD6E21D0();
      sub_1DD718FA4();
      sub_1DD6E0C60();
      sub_1DD718FA4();
      sub_1DD6E21D0();
      sub_1DD718FA4();
      v8 = sub_1DD705564();
      v10 = sub_1DD714590(v8, v9);
      sub_1DD6E21D0();
      sub_1DD718FB0();
      sub_1DD6E0C60();
      sub_1DD718FB0();
      sub_1DD6E0C60();
      sub_1DD718FB0();
      sub_1DD6E21D0();
      sub_1DD718FB0();
      return v10 & 1;
    }

    goto LABEL_5;
  }

  if (v6)
  {
LABEL_5:
    sub_1DD6E0C60();
    sub_1DD718FA4();
    sub_1DD6E21D0();
    sub_1DD718FA4();
    sub_1DD6E21D0();
    sub_1DD718FB0();
    sub_1DD6E0C60();
    sub_1DD718FB0();
    return 0;
  }

  if (v3 == v5 && v2 == v4)
  {
    sub_1DD718FA4();
    sub_1DD6DE464();
    sub_1DD718FA4();
    sub_1DD6DE464();
    sub_1DD718FB0();
    sub_1DD6DE464();
    sub_1DD718FB0();
    return 1;
  }

  v13 = sub_1DD7013BC();
  sub_1DD6E0C60();
  sub_1DD718FA4();
  sub_1DD6DE464();
  sub_1DD718FA4();
  sub_1DD6DE464();
  sub_1DD718FB0();
  sub_1DD6E0C60();
  sub_1DD718FB0();
  result = 0;
  if (v13)
  {
    return 1;
  }

  return result;
}

uint64_t sub_1DD7F3800(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E69727473 && a2 == 0xE600000000000000;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7961727261 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD875A30();

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

uint64_t sub_1DD7F38C0(char a1)
{
  if (a1)
  {
    return 0x7961727261;
  }

  else
  {
    return 0x676E69727473;
  }
}

uint64_t sub_1DD7F38F0(uint64_t a1)
{
  v2 = sub_1DD807CB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7F392C(uint64_t a1)
{
  v2 = sub_1DD807CB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7F3970@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7F3800(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7F3998(uint64_t a1)
{
  v2 = sub_1DD807C60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7F39D4(uint64_t a1)
{
  v2 = sub_1DD807C60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7F3A10(uint64_t a1)
{
  v2 = sub_1DD807D5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7F3A4C(uint64_t a1)
{
  v2 = sub_1DD807D5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AppIntentsInvocationPreview.Parameter.Value.encode(to:)()
{
  sub_1DD6DED2C();
  v2 = v1;
  v3 = sub_1DD710A9C(&qword_1ECD13348, &qword_1DD88A688);
  v27 = sub_1DD6DDEAC(v3);
  v5 = *(v4 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD6DDFE4();
  v7 = sub_1DD710A9C(&qword_1ECD13350, &qword_1DD88A690);
  v26 = sub_1DD6DDEAC(v7);
  v9 = *(v8 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1DD6F0A58();
  v29 = sub_1DD710A9C(&qword_1ECD13358, &qword_1DD88A698);
  sub_1DD6DDEAC(v29);
  v12 = v11;
  v14 = *(v13 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1DD6DEBA0();
  v28 = *v0;
  v25 = v0[1];
  v16 = *(v0 + 16);
  v17 = v2[3];
  v18 = v2[4];
  sub_1DD825500(v2);
  sub_1DD807C60();
  sub_1DD6E4218();
  sub_1DD875BB0();
  if (v16)
  {
    sub_1DD826820();
    sub_1DD807CB4();
    sub_1DD6FF0F0();
    sub_1DD875910();
    sub_1DD807D08();
    v19 = v27;
    sub_1DD8759D0();
    v20 = sub_1DD705C68();
  }

  else
  {
    sub_1DD807D5C();
    sub_1DD6FF0F0();
    sub_1DD875910();
    sub_1DD807DB0();
    v19 = v26;
    sub_1DD826DD4();
    v20 = sub_1DD825068();
  }

  v21(v20, v19);
  v22 = *(v12 + 8);
  v23 = sub_1DD6E60FC();
  v24(v23);
  sub_1DD7536FC();
  sub_1DD6E0C78();
}

void AppIntentsInvocationPreview.Parameter.Value.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1DD6DED2C();
  sub_1DD6F8D24();
  v67 = v13;
  v14 = sub_1DD710A9C(&qword_1ECD13388, &qword_1DD88A6A0);
  v65 = sub_1DD6DDEAC(v14);
  v16 = *(v15 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1DD6DEA6C();
  v18 = sub_1DD710A9C(&qword_1ECD13390, &qword_1DD88A6A8);
  sub_1DD6E49A8(v18);
  v20 = *(v19 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v21);
  sub_1DD6DDFE4();
  v22 = sub_1DD710A9C(&qword_1ECD13398, &qword_1DD88A6B0);
  sub_1DD6DDEAC(v22);
  v66 = v23;
  v25 = *(v24 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v26);
  sub_1DD6DEBA0();
  v27 = v12[3];
  v28 = v12[4];
  sub_1DD824D14(v12);
  sub_1DD807C60();
  sub_1DD6E4218();
  sub_1DD826F60();
  sub_1DD875B90();
  if (!a10)
  {
    v70 = v12;
    sub_1DD826378();
    v29 = sub_1DD875900();
    sub_1DD6ED750(v29, 0);
    sub_1DD826B24();
    if (!v30)
    {
      sub_1DD6E6120();
      sub_1DD6E42A8();
      if (v37 == v38)
      {
        __break(1u);
        return;
      }

      v39 = *(v36 + v35);
      v40 = sub_1DD77E6E4(v31, v32, v33, v34, v35);
      v41 = sub_1DD6ED830(v40);
      v43 = v42;
      v45 = v44;
      swift_unknownObjectRelease();
      v11 = v41;
      if (v43 == v45 >> 1)
      {
        v46 = v39;
        if (v39)
        {
          sub_1DD826820();
          sub_1DD807CB4();
          sub_1DD824DB8();
          sub_1DD875800();
          sub_1DD807E04();
          sub_1DD8256A4();
          sub_1DD8758D0();
          swift_unknownObjectRelease();
          v53 = sub_1DD6E4290();
          v54(v53, v65);
          v55 = *(v66 + 8);
          v56 = sub_1DD770D98();
          v57(v56);
          v58 = 0;
          v59 = v68;
          v46 = v39;
        }

        else
        {
          LOBYTE(v68) = 0;
          sub_1DD807D5C();
          sub_1DD824DB8();
          sub_1DD875800();
          sub_1DD807E58();
          sub_1DD826238();
          sub_1DD8758D0();
          swift_unknownObjectRelease();
          v60 = sub_1DD6DEBBC();
          v61(v60, v10);
          v62 = *(v66 + 8);
          v63 = sub_1DD770D98();
          v64(v63);
          v59 = v68;
          v58 = v69;
        }

        *v67 = v59;
        *(v67 + 8) = v58;
        *(v67 + 16) = v46;
        sub_1DD6E1EC8(v70);
        goto LABEL_11;
      }
    }

    v47 = sub_1DD875740();
    sub_1DD6E41BC();
    sub_1DD82702C();
    v48 = *(sub_1DD710A9C(&qword_1ECD0E158, &qword_1DD876EC0) + 48);
    *v11 = &type metadata for AppIntentsInvocationPreview.Parameter.Value;
    sub_1DD826378();
    sub_1DD875810();
    sub_1DD6DF100();
    v49 = *MEMORY[0x1E69E6AF8];
    sub_1DD6E0540(v47);
    (*(v50 + 104))(v11);
    swift_willThrow();
    swift_unknownObjectRelease();
    v51 = sub_1DD6E37A0();
    v52(v51);
    v12 = v70;
  }

  sub_1DD6E1EC8(v12);
LABEL_11:
  sub_1DD6E0CE8();
  sub_1DD6E0C78();
}

uint64_t static AppIntentsInvocationPreview.Parameter.== infix(_:_:)(uint64_t a1)
{
  v1 = sub_1DD6E27E8(a1);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = *(v2 + 32);
  v10 = v1 == *v2 && *(v3 + 8) == *(v2 + 8);
  if (v10 || (v11 = 0, (sub_1DD875A30() & 1) != 0))
  {
    v15[0] = v4;
    v15[1] = v5;
    v16 = v6;
    v13[0] = v7;
    v13[1] = v8;
    v14 = v9;
    sub_1DD6DDEFC();
    sub_1DD718FA4();
    sub_1DD7029A8();
    sub_1DD718FA4();
    v11 = static AppIntentsInvocationPreview.Parameter.Value.== infix(_:_:)(v15, v13);
    sub_1DD7029A8();
    sub_1DD718FB0();
    sub_1DD6DDEFC();
    sub_1DD718FB0();
  }

  return v11 & 1;
}

uint64_t sub_1DD7F42C4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v3 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD875A30();

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

uint64_t sub_1DD7F4388(char a1)
{
  if (a1)
  {
    return 0x65756C6176;
  }

  else
  {
    return 7955819;
  }
}

uint64_t sub_1DD7F43BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7F42C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7F43E4(uint64_t a1)
{
  v2 = sub_1DD807EAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7F4420(uint64_t a1)
{
  v2 = sub_1DD807EAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AppIntentsInvocationPreview.Parameter.encode(to:)()
{
  sub_1DD6DED2C();
  v3 = v2;
  v4 = sub_1DD710A9C(&qword_1ECD133B0, &qword_1DD88A6B8);
  sub_1DD6E49A8(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD6DEA6C();
  v11 = *v0;
  v10 = v0[1];
  v17 = v0[3];
  v18 = v0[2];
  v19 = *(v0 + 32);
  v12 = v3[3];
  v13 = v3[4];
  sub_1DD6FE770(v3);
  sub_1DD807EAC();
  sub_1DD6E17D8();
  sub_1DD8267F0();
  sub_1DD875BB0();
  sub_1DD705C50();
  sub_1DD825668();
  sub_1DD875970();
  if (!v1)
  {
    sub_1DD6FF8F4();
    sub_1DD718FA4();
    sub_1DD807B34();
    sub_1DD826748();
    sub_1DD6E5334();
    sub_1DD8759D0();
    sub_1DD718FB0();
  }

  v14 = *(v6 + 8);
  v15 = sub_1DD6DEA04();
  v16(v15);
  sub_1DD6E0CE8();
  sub_1DD6E0C78();
}

void AppIntentsInvocationPreview.Parameter.init(from:)()
{
  sub_1DD6DED2C();
  sub_1DD825058();
  v5 = sub_1DD710A9C(&qword_1ECD133C0, &qword_1DD88A6C0);
  sub_1DD6DDEAC(v5);
  v7 = *(v6 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6DDFE4();
  sub_1DD6DE568();
  sub_1DD807EAC();
  sub_1DD6ED2A4();
  if (v1)
  {
    sub_1DD6E1EC8(v0);
  }

  else
  {
    LOBYTE(v11) = 0;
    sub_1DD825108();
    sub_1DD875870();
    sub_1DD825610();
    sub_1DD807C0C();
    sub_1DD6E40F8();
    sub_1DD82499C();
    sub_1DD8758D0();
    v9 = sub_1DD6DFF30();
    v10(v9);
    *v2 = v4;
    *(v2 + 8) = v3;
    *(v2 + 16) = v11;
    *(v2 + 24) = v12;
    *(v2 + 32) = v13;

    sub_1DD700D0C();
    sub_1DD718FA4();
    sub_1DD826950();

    sub_1DD700D0C();
    sub_1DD718FB0();
  }

  sub_1DD6DF120();
  sub_1DD6E0C78();
}

void static AppIntentsInvocationPreview.== infix(_:_:)(uint64_t a1)
{
  v1 = sub_1DD6E27E8(a1);
  v4 = v3[2];
  v6 = v3[3];
  v5 = v3[4];
  v7 = v2[2];
  v8 = v2[3];
  v9 = v2[4];
  v10 = v1 == *v2 && v3[1] == v2[1];
  if (v10 || (sub_1DD875A30() & 1) != 0)
  {
    v11 = v4 == v7 && v6 == v8;
    if (v11 || (sub_1DD6E65D0(), (sub_1DD875A30() & 1) != 0))
    {
      sub_1DD6DDEFC();

      sub_1DD71435C();
    }
  }
}

uint64_t sub_1DD7F4818(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x746E65746E69 && a2 == 0xE600000000000000;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6574656D61726170 && a2 == 0xEA00000000007372)
    {

      return 2;
    }

    else
    {
      v8 = sub_1DD875A30();

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

uint64_t sub_1DD7F492C(char a1)
{
  if (!a1)
  {
    return 0x6449656C646E7562;
  }

  if (a1 == 1)
  {
    return 0x746E65746E69;
  }

  return 0x6574656D61726170;
}

uint64_t sub_1DD7F498C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7F4818(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7F49B4(uint64_t a1)
{
  v2 = sub_1DD807F00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7F49F0(uint64_t a1)
{
  v2 = sub_1DD807F00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AppIntentsInvocationPreview.encode(to:)()
{
  sub_1DD6DED2C();
  v3 = v2;
  v4 = sub_1DD710A9C(&qword_1ECD133C8, &qword_1DD88A6C8);
  sub_1DD6E125C(v4);
  v6 = *(v5 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6DEA6C();
  v8 = *v0;
  v9 = v0[1];
  v15 = v0[3];
  v16 = v0[2];
  v14 = v0[4];
  v10 = v3[3];
  v11 = v3[4];
  sub_1DD6FE770(v3);
  sub_1DD807F00();
  sub_1DD6E17D8();
  sub_1DD875BB0();
  sub_1DD825870();
  sub_1DD875970();
  if (!v1)
  {
    sub_1DD8250C8();
    sub_1DD6E0E40();
    sub_1DD875970();
    sub_1DD6E0FF8();
    sub_1DD710A9C(&qword_1ECD133D8, &qword_1DD88A6D0);
    sub_1DD807F54();
    sub_1DD826298();
    sub_1DD6FF6E0();
    sub_1DD8759D0();
  }

  v12 = sub_1DD6EEDBC();
  v13(v12);
  sub_1DD6E0CE8();
  sub_1DD6E0C78();
}

void AppIntentsInvocationPreview.init(from:)()
{
  sub_1DD6DED2C();
  sub_1DD826838();
  v3 = v2;
  v4 = sub_1DD710A9C(&qword_1ECD133F0, &qword_1DD88A6D8);
  sub_1DD6DDEAC(v4);
  v6 = *(v5 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6DDFE4();
  sub_1DD6DE568();
  sub_1DD807F00();
  sub_1DD6FC48C();
  if (v1)
  {
    sub_1DD6E1EC8(v0);
  }

  else
  {
    sub_1DD8259A4();
    sub_1DD6F178C();
    v8 = sub_1DD875870();
    v15 = v9;
    sub_1DD824CE8();
    sub_1DD6F178C();
    v13 = sub_1DD875870();
    v14 = v10;
    sub_1DD710A9C(&qword_1ECD133D8, &qword_1DD88A6D0);
    sub_1DD6E0FF8();
    sub_1DD80802C();
    sub_1DD8758D0();
    v11 = sub_1DD825098();
    v12(v11);
    *v3 = v8;
    v3[1] = v15;
    v3[2] = v13;
    v3[3] = v14;
    v3[4] = v16;

    sub_1DD824F80();
  }

  sub_1DD6E429C();
  sub_1DD6E0C78();
}

uint64_t PlannerPromptData.onScreenContext.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t PlannerPromptData.availableTools.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t PlannerPromptData.OnScreenContextValue.type.getter()
{
  v2 = sub_1DD6E0A5C();
  result = type metadata accessor for PlannerPromptData.OnScreenContextValue(v2);
  *v0 = *(v1 + *(result + 20));
  return result;
}

uint64_t PlannerPromptData.OnScreenContextValue.type.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for PlannerPromptData.OnScreenContextValue(0);
  *(v1 + *(result + 20)) = v2;
  return result;
}

uint64_t PlannerPromptData.OnScreenContextValue.type.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for PlannerPromptData.OnScreenContextValue(v0) + 20);
  return sub_1DD6DDF9C();
}

uint64_t PlannerPromptData.OnScreenContextValue.init(value:type:)()
{
  sub_1DD826938();
  v2 = *v1;
  v3 = sub_1DD874FA0();
  sub_1DD6DF448(v3);
  v5 = *(v4 + 32);
  v6 = sub_1DD6E21D0();
  v7(v6);
  result = type metadata accessor for PlannerPromptData.OnScreenContextValue(0);
  *(v0 + *(result + 20)) = v2;
  return result;
}

uint64_t sub_1DD7F4F94(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x417375636F466E69 && a2 == 0xEA00000000007070;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E65657263536E6FLL && a2 == 0xEE006E6F73726550;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD00000000000001CLL && 0x80000001DD8B74F0 == a2;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000018 && 0x80000001DD8B7510 == a2;
        if (v8 || (sub_1DD875A30() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD00000000000001BLL && 0x80000001DD8B7530 == a2;
          if (v9 || (sub_1DD875A30() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD00000000000001ALL && 0x80000001DD8B7550 == a2;
            if (v10 || (sub_1DD875A30() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0xD000000000000016 && 0x80000001DD8B7570 == a2)
            {

              return 6;
            }

            else
            {
              v12 = sub_1DD875A30();

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

unint64_t sub_1DD7F51D4(char a1)
{
  result = 0x417375636F466E69;
  switch(a1)
  {
    case 1:
      result = 0x6E65657263536E6FLL;
      break;
    case 2:
      result = 0xD00000000000001CLL;
      break;
    case 3:
      result = 0xD000000000000018;
      break;
    case 4:
      result = 0xD00000000000001BLL;
      break;
    case 5:
      result = 0xD00000000000001ALL;
      break;
    case 6:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD7F52DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7F4F94(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7F5304(uint64_t a1)
{
  v2 = sub_1DD808124();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7F5340(uint64_t a1)
{
  v2 = sub_1DD808124();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7F537C(uint64_t a1)
{
  v2 = sub_1DD808370();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7F53B8(uint64_t a1)
{
  v2 = sub_1DD808370();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7F53F4(uint64_t a1)
{
  v2 = sub_1DD808274();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7F5430(uint64_t a1)
{
  v2 = sub_1DD808274();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7F546C(uint64_t a1)
{
  v2 = sub_1DD808220();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7F54A8(uint64_t a1)
{
  v2 = sub_1DD808220();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7F54E4(uint64_t a1)
{
  v2 = sub_1DD8081CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7F5520(uint64_t a1)
{
  v2 = sub_1DD8081CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7F555C(uint64_t a1)
{
  v2 = sub_1DD8082C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7F5598(uint64_t a1)
{
  v2 = sub_1DD8082C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7F55D4(uint64_t a1)
{
  v2 = sub_1DD808178();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7F5610(uint64_t a1)
{
  v2 = sub_1DD808178();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7F564C(uint64_t a1)
{
  v2 = sub_1DD80831C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7F5688(uint64_t a1)
{
  v2 = sub_1DD80831C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void PlannerPromptData.OnScreenContextValue.ContextType.encode(to:)()
{
  sub_1DD6DED2C();
  v2 = v0;
  v4 = v3;
  v5 = sub_1DD710A9C(&qword_1ECD13408, &qword_1DD88A6E0);
  sub_1DD6DDEAC(v5);
  v7 = *(v6 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD82486C(v9, v56);
  v10 = sub_1DD710A9C(&qword_1ECD13410, &qword_1DD88A6E8);
  sub_1DD6DDEAC(v10);
  v12 = *(v11 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1DD824A4C(v14, v57);
  v15 = sub_1DD710A9C(&qword_1ECD13418, &qword_1DD88A6F0);
  sub_1DD6DDEAC(v15);
  v17 = *(v16 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v18);
  sub_1DD824C9C(v19, v58);
  v20 = sub_1DD710A9C(&qword_1ECD13420, &qword_1DD88A6F8);
  sub_1DD6DDEAC(v20);
  v22 = *(v21 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v23);
  sub_1DD824934(v24, v59);
  v25 = sub_1DD710A9C(&qword_1ECD13428, &qword_1DD88A700);
  sub_1DD6DDEAC(v25);
  v27 = *(v26 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v28);
  sub_1DD824A38(v29, v60);
  v30 = sub_1DD710A9C(&qword_1ECD13430, &qword_1DD88A708);
  sub_1DD6DDEAC(v30);
  v32 = *(v31 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v33);
  sub_1DD6DEA6C();
  v34 = sub_1DD710A9C(&qword_1ECD13438, &qword_1DD88A710);
  sub_1DD6E49A8(v34);
  v36 = *(v35 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v37);
  sub_1DD6DEBA0();
  v61 = sub_1DD710A9C(&qword_1ECD13440, &qword_1DD88A718);
  sub_1DD6DDEAC(v61);
  v39 = v38;
  v41 = *(v40 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v42);
  sub_1DD6E7258();
  v43 = *v2;
  v44 = v4[3];
  v45 = v4[4];
  sub_1DD824D14(v4);
  sub_1DD808124();
  sub_1DD7039CC();
  sub_1DD826F60();
  sub_1DD875BB0();
  v46 = (v39 + 8);
  switch(v43)
  {
    case 1:
      sub_1DD80831C();
      v53 = v61;
      sub_1DD8250E8();
      sub_1DD875910();
      goto LABEL_9;
    case 2:
      sub_1DD8082C8();
      v53 = v61;
      sub_1DD8250E8();
      sub_1DD875910();
      goto LABEL_9;
    case 3:
      sub_1DD6E6174();
      sub_1DD808274();
      v53 = v61;
      sub_1DD8250E8();
      sub_1DD875910();
      goto LABEL_9;
    case 4:
      sub_1DD808220();
      v53 = v61;
      sub_1DD8250E8();
      sub_1DD875910();
      goto LABEL_9;
    case 5:
      sub_1DD8081CC();
      v53 = v61;
      sub_1DD8250E8();
      sub_1DD875910();
      goto LABEL_9;
    case 6:
      sub_1DD6FFDDC();
      sub_1DD808178();
      v53 = v61;
      sub_1DD8250E8();
      sub_1DD875910();
LABEL_9:
      v54 = sub_1DD6DED98();
      v55(v54);
      v52 = *v46;
      v50 = v1;
      v51 = v53;
      break;
    default:
      sub_1DD808370();
      sub_1DD6FF0F0();
      sub_1DD875910();
      v47 = sub_1DD6FE110();
      v48(v47);
      v49 = *v46;
      v50 = sub_1DD825B84();
      break;
  }

  v52(v50, v51);
  sub_1DD6E0C78();
}

void PlannerPromptData.OnScreenContextValue.ContextType.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1DD6DED2C();
  a19 = v21;
  a20 = v22;
  sub_1DD705C5C();
  v101 = v23;
  v24 = sub_1DD710A9C(&qword_1ECD13488, &qword_1DD88A720);
  sub_1DD6DDEAC(v24);
  v26 = *(v25 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v27);
  sub_1DD82480C(v28, v94);
  v29 = sub_1DD710A9C(&qword_1ECD13490, &qword_1DD88A728);
  sub_1DD6DDEAC(v29);
  v31 = *(v30 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v32);
  sub_1DD6E5D10(v33, v95);
  v100 = sub_1DD710A9C(&qword_1ECD13498, &qword_1DD88A730);
  sub_1DD6DDEAC(v100);
  v35 = *(v34 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v36);
  sub_1DD6FF92C(v37, v96);
  v38 = sub_1DD710A9C(&qword_1ECD134A0, &qword_1DD88A738);
  sub_1DD6DDEAC(v38);
  v40 = *(v39 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v41);
  sub_1DD824A4C(v42, v97);
  v43 = sub_1DD710A9C(&qword_1ECD134A8, &qword_1DD88A740);
  sub_1DD6DDEAC(v43);
  v45 = *(v44 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v46);
  sub_1DD82486C(v47, v98);
  v48 = sub_1DD710A9C(&qword_1ECD134B0, &qword_1DD88A748);
  sub_1DD6DDEAC(v48);
  v50 = *(v49 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v51);
  sub_1DD6E17C8();
  v52 = sub_1DD710A9C(&qword_1ECD134B8, &qword_1DD88A750);
  sub_1DD6DDEAC(v52);
  v54 = *(v53 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v55);
  sub_1DD6E9560();
  v56 = sub_1DD710A9C(&qword_1ECD134C0, &qword_1DD88A758);
  sub_1DD6DDEAC(v56);
  v58 = v57;
  v60 = *(v59 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v61);
  sub_1DD6E7258();
  v62 = v20[3];
  v63 = v20[4];
  sub_1DD824CF8(v20);
  sub_1DD808124();
  sub_1DD7039CC();
  sub_1DD700954();
  sub_1DD875B90();
  if (!v102)
  {
    v64 = sub_1DD875900();
    sub_1DD6ED750(v64, 0);
    sub_1DD827758();
    if (!v65)
    {
      sub_1DD6E6120();
      sub_1DD6E42A8();
      if (v72 == v73)
      {
        __break(1u);
        return;
      }

      v99 = *(v71 + v70);
      v74 = sub_1DD826C40(v66, v67, v68, v69, v70);
      sub_1DD6ED830(v74);
      sub_1DD6E0194();
      v76 = v75;
      swift_unknownObjectRelease();
      if (v62 == (v76 >> 1))
      {
        switch(v99)
        {
          case 1:
            sub_1DD80831C();
            sub_1DD8269BC(&a18);
            sub_1DD824848();
            sub_1DD82705C();
            swift_unknownObjectRelease();
            goto LABEL_17;
          case 2:
            sub_1DD8082C8();
            sub_1DD824848();
            sub_1DD82705C();
            swift_unknownObjectRelease();
            v77 = sub_1DD6ED80C();
            break;
          case 3:
            sub_1DD6E6174();
            sub_1DD808274();
            sub_1DD824848();
            sub_1DD82705C();
            swift_unknownObjectRelease();
            goto LABEL_17;
          case 4:
            sub_1DD808220();
            sub_1DD824848();
            sub_1DD82705C();
            swift_unknownObjectRelease();
            v77 = sub_1DD825950();
            v79 = v100;
            break;
          case 5:
            sub_1DD8081CC();
            sub_1DD826808();
            sub_1DD824848();
            sub_1DD82705C();
            swift_unknownObjectRelease();
            v77 = sub_1DD6E4290();
            break;
          case 6:
            sub_1DD6FFDDC();
            sub_1DD808178();
            sub_1DD824848();
            sub_1DD82705C();
            swift_unknownObjectRelease();
LABEL_17:
            v77 = sub_1DD825950();
            break;
          default:
            sub_1DD808370();
            sub_1DD8269BC(&a17);
            sub_1DD824848();
            sub_1DD82705C();
            swift_unknownObjectRelease();
            v77 = sub_1DD825950();
            v79 = v52;
            break;
        }

        v78(v77, v79);
        v89 = *(v58 + 8);
        v90 = sub_1DD825570();
        v91(v90);
        sub_1DD826EA0();
        *v101 = v92;
        sub_1DD6E1EC8(v93);
        goto LABEL_10;
      }
    }

    sub_1DD875740();
    sub_1DD6E41BC();
    sub_1DD827740();
    v80 = *(sub_1DD710A9C(&qword_1ECD0E158, &qword_1DD876EC0) + 48);
    *v62 = &type metadata for PlannerPromptData.OnScreenContextValue.ContextType;
    sub_1DD875810();
    sub_1DD6DF100();
    v81 = *MEMORY[0x1E69E6AF8];
    sub_1DD824B14();
    v83 = *(v82 + 104);
    v84 = sub_1DD6FEB10();
    v85(v84);
    swift_willThrow();
    swift_unknownObjectRelease();
    v86 = *(v58 + 8);
    v87 = sub_1DD826680();
    v88(v87);
  }

  sub_1DD6E1EC8(v20);
LABEL_10:
  sub_1DD792AF8();
  sub_1DD6E0C78();
}

BOOL static PlannerPromptData.OnScreenContextValue.== infix(_:_:)()
{
  sub_1DD6E1F34();
  if ((_s16IntelligenceFlow13SnippetStreamV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v0 = type metadata accessor for PlannerPromptData.OnScreenContextValue(0);
  sub_1DD826CC0(*(v0 + 20));
  return v1 != 0;
}

uint64_t sub_1DD7F6400(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD875A30();

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

uint64_t sub_1DD7F64C4(char a1)
{
  if (a1)
  {
    return 1701869940;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_1DD7F64F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7F6400(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7F6520(uint64_t a1)
{
  v2 = sub_1DD8083C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7F655C(uint64_t a1)
{
  v2 = sub_1DD8083C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void PlannerPromptData.OnScreenContextValue.encode(to:)()
{
  sub_1DD826CE0();
  sub_1DD6FE1BC();
  v2 = sub_1DD710A9C(&qword_1ECD134C8, &qword_1DD88A760);
  sub_1DD6E49A8(v2);
  v4 = *(v3 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6DEA6C();
  sub_1DD6DEAD0();
  sub_1DD8083C4();
  sub_1DD6E1808();
  sub_1DD825C8C();
  sub_1DD874FA0();
  sub_1DD6E05D4();
  sub_1DD6E1E84(v6);
  sub_1DD6F9A4C();
  sub_1DD6E5924();
  sub_1DD8759D0();
  if (!v0)
  {
    v9 = *(v1 + *(type metadata accessor for PlannerPromptData.OnScreenContextValue(0) + 20));
    sub_1DD6E4104();
    sub_1DD808418();
    sub_1DD824DE8();
    sub_1DD8759D0();
  }

  v7 = sub_1DD6EFFB4();
  v8(v7);
  sub_1DD825790();
  sub_1DD826CF4();
}

void PlannerPromptData.OnScreenContextValue.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12)
{
  sub_1DD6DED2C();
  sub_1DD70068C();
  v34 = sub_1DD874FA0();
  v15 = sub_1DD6DDEAC(v34);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1DD6E535C();
  v18 = sub_1DD710A9C(&qword_1ECD134E0, &qword_1DD88A768);
  sub_1DD6DDEAC(v18);
  v20 = *(v19 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v21);
  v22 = sub_1DD700BA4();
  v23 = type metadata accessor for PlannerPromptData.OnScreenContextValue(v22);
  v24 = sub_1DD6DE1C4(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  sub_1DD6E2220();
  v28 = v12[3];
  v27 = v12[4];
  sub_1DD6FE8B0(v12);
  sub_1DD8083C4();
  sub_1DD6EF0F4();
  sub_1DD875B90();
  if (v14)
  {
    sub_1DD6E1EC8(v12);
  }

  else
  {
    sub_1DD6E05D4();
    sub_1DD6E1E84(v29);
    sub_1DD6F9A4C();
    sub_1DD82668C();
    sub_1DD827074();
    sub_1DD826578();
    v30 = sub_1DD825B84();
    v31(v30);
    sub_1DD6E4104();
    sub_1DD80846C();
    sub_1DD6FE82C();
    sub_1DD8758D0();
    v32 = sub_1DD6FAE08();
    v33(v32);
    *(v13 + *(v23 + 20)) = a12;
    sub_1DD7006C0();
    sub_1DD6E5870();
    sub_1DD6E1EC8(v12);
    sub_1DD8259EC();
    sub_1DD6E5ABC();
  }

  sub_1DD792AF8();
  sub_1DD6E0C78();
}

uint64_t PlannerPromptData.Tool.definition.getter()
{
  sub_1DD6FAAAC();
  sub_1DD82471C();
  return sub_1DD6E5870();
}

uint64_t sub_1DD7F6AFC(uint64_t a1)
{
  v2 = sub_1DD8084E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7F6B38(uint64_t a1)
{
  v2 = sub_1DD8084E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void PlannerPromptData.Tool.Definition.ToolDefinition.encode(to:)()
{
  sub_1DD826CE0();
  sub_1DD6E593C();
  v0 = sub_1DD710A9C(&qword_1ECD134F0, &qword_1DD88A770);
  sub_1DD6DDEAC(v0);
  v2 = *(v1 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1DD6DEBA0();
  sub_1DD6DEAD0();
  sub_1DD8084E0();
  sub_1DD825588();
  sub_1DD874F10();
  sub_1DD6DE350();
  sub_1DD6E1E84(v4);
  sub_1DD6E71A4();
  v5 = sub_1DD6ED4B8();
  v6(v5);
  sub_1DD6E1868();
  sub_1DD826CF4();
}

void PlannerPromptData.Tool.Definition.ToolDefinition.init(from:)()
{
  sub_1DD6DED2C();
  sub_1DD8254C8(v2);
  v3 = sub_1DD874F10();
  v4 = sub_1DD6E125C(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD6DDEE8();
  sub_1DD826760(v7);
  v8 = sub_1DD710A9C(&qword_1ECD13508, &qword_1DD88A778);
  sub_1DD6DDEAC(v8);
  v10 = *(v9 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_1DD6E27D4();
  v13 = type metadata accessor for PlannerPromptData.Tool.Definition.ToolDefinition(v12);
  v14 = sub_1DD6DEA10(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1DD6E6200();
  v17 = v0[3];
  v18 = v0[4];
  sub_1DD824CF8(v0);
  sub_1DD8084E0();
  sub_1DD6ED2C8();
  sub_1DD875B90();
  if (!v1)
  {
    sub_1DD7028D8();
    sub_1DD6DE350();
    sub_1DD6E1E84(v19);
    sub_1DD6E49DC();
    v20 = sub_1DD6F3238();
    v21(v20);
    v22 = sub_1DD6E891C();
    v23(v22);
    sub_1DD824F48();
    sub_1DD6FAA70();
    sub_1DD6E59B8();
  }

  sub_1DD6E1EC8(v0);
  sub_1DD703860();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7F6F08(uint64_t a1)
{
  v2 = sub_1DD808554();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7F6F44(uint64_t a1)
{
  v2 = sub_1DD808554();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void PlannerPromptData.Tool.Definition.ClientAction.encode(to:)()
{
  sub_1DD826CE0();
  sub_1DD6E593C();
  v0 = sub_1DD710A9C(&qword_1ECD13510, &qword_1DD88A780);
  sub_1DD6DDEAC(v0);
  v2 = *(v1 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1DD6DEBA0();
  sub_1DD6DEAD0();
  sub_1DD808554();
  sub_1DD825588();
  sub_1DD874F10();
  sub_1DD6DE350();
  sub_1DD6E1E84(v4);
  sub_1DD6E71A4();
  v5 = sub_1DD6ED4B8();
  v6(v5);
  sub_1DD6E1868();
  sub_1DD826CF4();
}

void PlannerPromptData.Tool.Definition.ClientAction.init(from:)()
{
  sub_1DD6DED2C();
  sub_1DD8254C8(v2);
  v3 = sub_1DD874F10();
  v4 = sub_1DD6E125C(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD6DDEE8();
  sub_1DD826760(v7);
  v8 = sub_1DD710A9C(&qword_1ECD13520, &qword_1DD88A788);
  sub_1DD6DDEAC(v8);
  v10 = *(v9 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_1DD6E27D4();
  v13 = type metadata accessor for PlannerPromptData.Tool.Definition.ClientAction(v12);
  v14 = sub_1DD6DEA10(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1DD6E6200();
  v17 = v0[3];
  v18 = v0[4];
  sub_1DD824CF8(v0);
  sub_1DD808554();
  sub_1DD6ED2C8();
  sub_1DD875B90();
  if (!v1)
  {
    sub_1DD7028D8();
    sub_1DD6DE350();
    sub_1DD6E1E84(v19);
    sub_1DD6E49DC();
    v20 = sub_1DD6F3238();
    v21(v20);
    v22 = sub_1DD6E891C();
    v23(v22);
    sub_1DD6F8C1C();
    sub_1DD6FAA70();
    sub_1DD6E59B8();
  }

  sub_1DD6E1EC8(v0);
  sub_1DD703860();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7F72CC()
{
  v0 = sub_1DD6F9E24();
  v2 = v1(v0);
  sub_1DD6DE1C4(v2);
  v4 = *(v3 + 32);
  v5 = sub_1DD6E21D0();

  return v6(v5);
}

uint64_t sub_1DD7F7330()
{
  sub_1DD705CF0();
  if (v2 == 0x696669746E656469 && v1 == 0xEA00000000007265)
  {

    v4 = 0;
  }

  else
  {
    sub_1DD8256B0();
    sub_1DD875A30();
    sub_1DD82698C();
    v4 = v0 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DD7F73A0(uint64_t a1)
{
  v2 = sub_1DD8085C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7F73DC(uint64_t a1)
{
  v2 = sub_1DD8085C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void PlannerPromptData.Tool.Definition.AssistantSchema.encode(to:)()
{
  sub_1DD826CE0();
  sub_1DD6E593C();
  v0 = sub_1DD710A9C(&qword_1ECD13528, &qword_1DD88A790);
  sub_1DD6DDEAC(v0);
  v2 = *(v1 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1DD6DEBA0();
  sub_1DD6DEAD0();
  sub_1DD8085C8();
  sub_1DD825588();
  sub_1DD875050();
  sub_1DD824F30();
  sub_1DD6E1E84(v4);
  sub_1DD6E71A4();
  v5 = sub_1DD6ED4B8();
  v6(v5);
  sub_1DD6E1868();
  sub_1DD826CF4();
}

uint64_t sub_1DD7F755C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  v2 = sub_1DD6E0C60();
  sub_1DD6E1E84(v2);
  sub_1DD6EFF74();

  return sub_1DD8750C0();
}

uint64_t sub_1DD7F7614()
{
  sub_1DD8257B8();
  sub_1DD6DEDA4();
  v0(0);
  v1 = sub_1DD6E0C60();
  sub_1DD6E1E84(v1);
  sub_1DD8750C0();
  return sub_1DD875B60();
}

void PlannerPromptData.Tool.Definition.AssistantSchema.init(from:)()
{
  sub_1DD6DED2C();
  sub_1DD8254C8(v2);
  v3 = sub_1DD875050();
  v4 = sub_1DD6E125C(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD6DDEE8();
  sub_1DD826760(v7);
  v8 = sub_1DD710A9C(&qword_1ECD13548, &qword_1DD88A798);
  sub_1DD6DDEAC(v8);
  v10 = *(v9 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_1DD6E27D4();
  v13 = type metadata accessor for PlannerPromptData.Tool.Definition.AssistantSchema(v12);
  v14 = sub_1DD6DEA10(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1DD6E6200();
  v17 = v0[3];
  v18 = v0[4];
  sub_1DD824CF8(v0);
  sub_1DD8085C8();
  sub_1DD6ED2C8();
  sub_1DD875B90();
  if (!v1)
  {
    sub_1DD7028D8();
    sub_1DD824F30();
    sub_1DD6E1E84(v19);
    sub_1DD6E49DC();
    v20 = sub_1DD6F3238();
    v21(v20);
    v22 = sub_1DD6E891C();
    v23(v22);
    sub_1DD824F18();
    sub_1DD6FAA70();
    sub_1DD6E59B8();
  }

  sub_1DD6E1EC8(v0);
  sub_1DD703860();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7F7890(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_1DD875B20();
  a4(0);
  v5 = sub_1DD6E0C60();
  sub_1DD6E1E84(v5);
  sub_1DD8750C0();
  return sub_1DD875B60();
}

uint64_t PlannerPromptData.Tool.Definition.UIControlTool.command.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  *a1 = v1[2];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

__n128 PlannerPromptData.Tool.Definition.UIControlTool.command.setter(__n128 *a1)
{
  v7 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u64[1];
  v4 = v1[1].n128_u64[1];
  v5 = v1[2].n128_u64[1];

  result = v7;
  v1[1] = v7;
  v1[2].n128_u64[0] = v2;
  v1[2].n128_u64[1] = v3;
  return result;
}

uint64_t sub_1DD7F7A70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = sub_1DD6EE78C();
  v8 = *(v7(v6) + 24);
  v9 = a3(0);
  sub_1DD6DF448(v9);
  v11 = *(v10 + 40);

  return v11(v3 + v8, v4);
}

uint64_t PlannerPromptData.Tool.Definition.UIControlTool.toolDefinition.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for PlannerPromptData.Tool.Definition.UIControlTool(v0) + 24);
  return sub_1DD6DDF9C();
}

uint64_t PlannerPromptData.Tool.Definition.UIControlTool.init(appBundleIdentifier:command:toolDefinition:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a3;
  v6 = *(a3 + 2);
  v7 = *(a3 + 3);
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = v5;
  *(a4 + 32) = v6;
  *(a4 + 40) = v7;
  v8 = *(type metadata accessor for PlannerPromptData.Tool.Definition.UIControlTool(0) + 24);
  v9 = sub_1DD874F10();
  sub_1DD6DF448(v9);
  v11 = *(v10 + 32);
  v12 = sub_1DD6E26D8();

  return v13(v12);
}

uint64_t PlannerPromptData.Tool.Definition.UIControlTool.Command.identifier.setter()
{
  sub_1DD6DE304();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

IntelligenceFlow::PlannerPromptData::Tool::Definition::UIControlTool::Command __swiftcall PlannerPromptData.Tool.Definition.UIControlTool.Command.init(name:identifier:)(Swift::String name, Swift::String identifier)
{
  *v2 = name;
  v2[1] = identifier;
  result.identifier = identifier;
  result.name = name;
  return result;
}

uint64_t static PlannerPromptData.Tool.Definition.UIControlTool.Command.== infix(_:_:)(uint64_t a1)
{
  v1 = sub_1DD6E27E8(a1);
  v4 = v3[2];
  v5 = v3[3];
  v6 = v2[2];
  v7 = v2[3];
  v8 = v1 == *v2 && v3[1] == v2[1];
  if (v8 || (sub_1DD875A30(), result = sub_1DD6FE86C(), (v10 & 1) != 0))
  {
    if (v4 == v6 && v5 == v7)
    {
      return 1;
    }

    else
    {
      sub_1DD6E8090();

      return sub_1DD875A30();
    }
  }

  return result;
}

uint64_t sub_1DD7F7CD0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD875A30();

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

uint64_t sub_1DD7F7DA0(char a1)
{
  if (a1)
  {
    return 0x696669746E656469;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_1DD7F7DDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7F7CD0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7F7E04(uint64_t a1)
{
  v2 = sub_1DD80865C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7F7E40(uint64_t a1)
{
  v2 = sub_1DD80865C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void PlannerPromptData.Tool.Definition.UIControlTool.Command.encode(to:)()
{
  sub_1DD6DED2C();
  v3 = v2;
  v4 = sub_1DD710A9C(&qword_1ECD13558, &qword_1DD88A7A0);
  sub_1DD6E49A8(v4);
  v6 = *(v5 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6DEA6C();
  v8 = *v0;
  v9 = v0[1];
  v14 = v0[3];
  v15 = v0[2];
  v10 = v3[3];
  v11 = v3[4];
  sub_1DD6FE770(v3);
  sub_1DD80865C();
  sub_1DD6E17D8();
  sub_1DD8267F0();
  sub_1DD875BB0();
  sub_1DD825870();
  sub_1DD705DBC();
  sub_1DD875970();
  if (!v1)
  {
    sub_1DD8250C8();
    sub_1DD705DBC();
    sub_1DD875970();
  }

  v12 = sub_1DD6DE58C();
  v13(v12);
  sub_1DD6E0CE8();
  sub_1DD6E0C78();
}

uint64_t PlannerPromptData.Tool.Definition.UIControlTool.Command.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
  sub_1DD6E5F58();

  return _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t PlannerPromptData.Tool.Definition.UIControlTool.Command.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1DD6DEDA4();
  sub_1DD827170();
  _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
  return sub_1DD875B60();
}

void PlannerPromptData.Tool.Definition.UIControlTool.Command.init(from:)()
{
  sub_1DD6DED2C();
  sub_1DD825058();
  v5 = sub_1DD710A9C(&qword_1ECD13568, &qword_1DD88A7A8);
  sub_1DD6DDEAC(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1DD6DDFE4();
  sub_1DD6DE568();
  sub_1DD80865C();
  sub_1DD6ED2A4();
  if (v1)
  {
    sub_1DD6E1EC8(v0);
  }

  else
  {
    sub_1DD824D60();
    sub_1DD875870();
    sub_1DD825CD4();
    sub_1DD824CE8();
    sub_1DD825108();
    v11 = sub_1DD875870();
    v13 = v12;
    v14 = *(v7 + 8);
    v17 = v11;
    v15 = sub_1DD6E5DB0();
    v16(v15);
    *v2 = v4;
    v2[1] = v3;
    v2[2] = v17;
    v2[3] = v13;

    sub_1DD824F80();
  }

  sub_1DD6DF120();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7F81D0()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1DD875B20();
  _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
  _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
  return sub_1DD875B60();
}

uint64_t static PlannerPromptData.Tool.Definition.UIControlTool.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  sub_1DD6E1FC0(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1DD875A30() & 1) == 0)
  {
    return 0;
  }

  v7 = v3[4];
  v8 = v3[5];
  v9 = v2[4];
  v10 = v2[5];
  v11 = v3[2] == v2[2] && v3[3] == v2[3];
  if (!v11 && (sub_1DD875A30() & 1) == 0)
  {
    return 0;
  }

  if (v7 != v9 || v8 != v10)
  {
    sub_1DD6E65D0();
    if ((sub_1DD875A30() & 1) == 0)
    {
      return 0;
    }
  }

  v13 = type metadata accessor for PlannerPromptData.Tool.Definition.UIControlTool(0);
  sub_1DD8263A4(*(v13 + 24));

  return _s16IntelligenceFlow17PlannerPromptDataV4ToolV10DefinitionO0fG0V2eeoiySbAI_AItFZ_0();
}

uint64_t sub_1DD7F82F8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x80000001DD8B7590 == a2;
  if (v3 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x646E616D6D6F63 && a2 == 0xE700000000000000;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x696665446C6F6F74 && a2 == 0xEE006E6F6974696ELL)
    {

      return 2;
    }

    else
    {
      v8 = sub_1DD875A30();

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

uint64_t sub_1DD7F8418(char a1)
{
  if (!a1)
  {
    return 0xD000000000000013;
  }

  if (a1 == 1)
  {
    return 0x646E616D6D6F63;
  }

  return 0x696665446C6F6F74;
}

uint64_t sub_1DD7F8488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7F82F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7F84B0(uint64_t a1)
{
  v2 = sub_1DD8086B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7F84EC(uint64_t a1)
{
  v2 = sub_1DD8086B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void PlannerPromptData.Tool.Definition.UIControlTool.encode(to:)()
{
  sub_1DD826CE0();
  sub_1DD6F8C0C();
  v2 = sub_1DD710A9C(&qword_1ECD13570, &qword_1DD88A7B0);
  sub_1DD6E49A8(v2);
  v4 = *(v3 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6DE340();
  sub_1DD6DEAD0();
  sub_1DD8086B0();
  sub_1DD8250D8();
  sub_1DD875BB0();
  v6 = *v1;
  v7 = v1[1];
  sub_1DD825620();
  sub_1DD875970();
  if (!v0)
  {
    v8 = v1[5];
    v13 = v1[2];
    v14 = v1[3];
    v15 = v1[4];
    sub_1DD808704();
    sub_1DD6E5E30();

    sub_1DD7055A8();
    sub_1DD8759D0();

    v9 = *(type metadata accessor for PlannerPromptData.Tool.Definition.UIControlTool(0) + 24);
    sub_1DD826B30();
    sub_1DD874F10();
    sub_1DD6DE350();
    sub_1DD6E1E84(v10);
    sub_1DD700E54();
    sub_1DD6E730C();
    sub_1DD8759D0();
  }

  v11 = sub_1DD825168();
  v12(v11);
  sub_1DD825790();
  sub_1DD826CF4();
}

uint64_t PlannerPromptData.Tool.Definition.UIControlTool.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
  sub_1DD6E5F58();
  _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
  LODWORD(v6) = *(type metadata accessor for PlannerPromptData.Tool.Definition.UIControlTool(0) + 24);
  sub_1DD874F10();
  sub_1DD6DE350();
  sub_1DD6E1E84(v7);
  sub_1DD6E5F58();
  return sub_1DD8750C0();
}

uint64_t PlannerPromptData.Tool.Definition.UIControlTool.hashValue.getter()
{
  sub_1DD6DEDA4();
  v1 = *v0;
  v2 = v0[1];
  _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
  sub_1DD827170();
  LODWORD(v6) = *(type metadata accessor for PlannerPromptData.Tool.Definition.UIControlTool(0) + 24);
  sub_1DD874F10();
  sub_1DD6DE350();
  sub_1DD6E1E84(v7);
  sub_1DD8750C0();
  return sub_1DD875B60();
}

void PlannerPromptData.Tool.Definition.UIControlTool.init(from:)()
{
  sub_1DD6DED2C();
  v4 = v3;
  v27 = sub_1DD874F10();
  v5 = sub_1DD6DDEAC(v27);
  v25 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6DE4A8();
  sub_1DD700C78();
  v28 = sub_1DD710A9C(&qword_1ECD13588, &qword_1DD88A7B8);
  sub_1DD6DDEAC(v28);
  v26 = v9;
  v11 = *(v10 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v12);
  v13 = sub_1DD700BA4();
  v14 = type metadata accessor for PlannerPromptData.Tool.Definition.UIControlTool(v13);
  v15 = sub_1DD6DE1C4(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1DD6E2220();
  v18 = v4[3];
  v19 = v4[4];
  sub_1DD824D14(v4);
  sub_1DD8086B0();
  sub_1DD6EF0F4();
  sub_1DD875B90();
  if (v0)
  {
    sub_1DD6E1EC8(v4);
  }

  else
  {
    LOBYTE(v29) = 0;
    *v1 = sub_1DD875870();
    *(v1 + 8) = v20;
    sub_1DD6FF8F4();
    sub_1DD808758();
    sub_1DD8275D0();
    sub_1DD8256A4();
    sub_1DD8758D0();
    *(v1 + 16) = v29;
    *(v1 + 32) = v30;
    *(v1 + 40) = v31;
    sub_1DD6DE350();
    sub_1DD6E1E84(v21);
    sub_1DD8758D0();
    v22 = *(v26 + 8);
    v23 = sub_1DD6DFF24();
    v24(v23);
    (*(v25 + 32))(v1 + *(v14 + 24), v2, v27);
    sub_1DD700948();
    sub_1DD6E5870();
    sub_1DD6E1EC8(v4);
    sub_1DD6FC290();
    sub_1DD6E5ABC();
  }

  sub_1DD6F9B18();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7F8B50(uint64_t a1, uint64_t a2)
{
  sub_1DD875B20();
  v4 = *v2;
  v5 = v2[1];
  _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
  _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
  v10 = *(a2 + 24);
  sub_1DD874F10();
  sub_1DD6E1E84(&unk_1ECD13500);
  sub_1DD8750C0();
  return sub_1DD875B60();
}

void static PlannerPromptData.Tool.Definition.== infix(_:_:)()
{
  sub_1DD6DEB38();
  v41 = type metadata accessor for PlannerPromptData.Tool.Definition.UIControlTool(0);
  v2 = sub_1DD6DE1C4(v41);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1DD6DDEE8();
  v42 = v5;
  v6 = sub_1DD6E9A9C();
  v7 = type metadata accessor for PlannerPromptData.Tool.Definition.AssistantSchema(v6);
  v8 = sub_1DD6DEA10(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6DDEE8();
  v11 = sub_1DD6E9A9C();
  v12 = type metadata accessor for PlannerPromptData.Tool.Definition.ClientAction(v11);
  v13 = sub_1DD6DEA10(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1DD702A64();
  v16 = type metadata accessor for PlannerPromptData.Tool.Definition.ToolDefinition(0);
  v17 = sub_1DD6DEA10(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1DD8247F4();
  v20 = type metadata accessor for PlannerPromptData.Tool.Definition(0);
  v21 = sub_1DD6DE1C4(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1DD6DE21C();
  sub_1DD825028();
  MEMORY[0x1EEE9AC00](v24);
  sub_1DD6FF81C();
  MEMORY[0x1EEE9AC00](v25);
  sub_1DD825898();
  MEMORY[0x1EEE9AC00](v26);
  sub_1DD6DFF40();
  v27 = sub_1DD710A9C(&qword_1ECD13598, &qword_1DD88A7C0);
  sub_1DD6DEA10(v27);
  v29 = *(v28 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v30);
  sub_1DD6E17C8();
  v32 = *(v31 + 56);
  sub_1DD6E5870();
  sub_1DD6E5870();
  sub_1DD825980();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1DD82471C();
      sub_1DD6DDEFC();
      sub_1DD6E5870();
      if (sub_1DD8278C0() == 1)
      {
        sub_1DD6F8C1C();
        sub_1DD6E59B8();
        sub_1DD6ED180();
        _s16IntelligenceFlow17PlannerPromptDataV4ToolV10DefinitionO0fG0V2eeoiySbAI_AItFZ_0();
        sub_1DD6E5ABC();
        sub_1DD6E58E0();
        goto LABEL_32;
      }

      sub_1DD8261B4();
      goto LABEL_29;
    case 2u:
      sub_1DD82471C();
      sub_1DD6E5F58();
      sub_1DD6E5870();
      if (sub_1DD8278C0() != 2)
      {
        goto LABEL_29;
      }

      sub_1DD824F18();
      sub_1DD6E59B8();
      sub_1DD6FF97C();
      _s16IntelligenceFlow17PlannerPromptDataV4ToolV10DefinitionO15AssistantSchemaV2eeoiySbAI_AItFZ_0();
      sub_1DD6E5ABC();
      goto LABEL_32;
    case 3u:
      sub_1DD82471C();
      sub_1DD825974();
      sub_1DD6E5870();
      if (sub_1DD8278C0() != 3)
      {
        sub_1DD6FC290();
        goto LABEL_29;
      }

      sub_1DD6E59B8();
      v33 = *v1 == *v42 && v1[1] == v42[1];
      if (v33 || (sub_1DD875A30() & 1) != 0)
      {
        v34 = v1[4];
        v35 = v1[5];
        v36 = v42[4];
        v37 = v42[5];
        v38 = v1[2] == v42[2] && v1[3] == v42[3];
        if (v38 || (sub_1DD875A30() & 1) != 0)
        {
          v39 = v34 == v36 && v35 == v37;
          if (v39 || (sub_1DD6FF0E4(), (sub_1DD875A30() & 1) != 0))
          {
            v40 = *(v41 + 24);
            _s16IntelligenceFlow17PlannerPromptDataV4ToolV10DefinitionO0fG0V2eeoiySbAI_AItFZ_0();
          }
        }
      }

      sub_1DD8261CC();
      sub_1DD6E5ABC();
      sub_1DD770D4C();
      sub_1DD6E5ABC();
      sub_1DD700698();
      break;
    default:
      sub_1DD82471C();
      sub_1DD825C04();
      sub_1DD6E5870();
      if (sub_1DD8278C0())
      {
        sub_1DD6FF720();
LABEL_29:
        sub_1DD6E5ABC();
        sub_1DD824154(v0, &qword_1ECD13598);
      }

      else
      {
        sub_1DD824F48();
        sub_1DD6E59B8();
        sub_1DD770D98();
        _s16IntelligenceFlow17PlannerPromptDataV4ToolV10DefinitionO0fG0V2eeoiySbAI_AItFZ_0();
        sub_1DD6E5ABC();
LABEL_32:
        sub_1DD6E5ABC();
        sub_1DD700698();
      }

      break;
  }

  sub_1DD6DFED0();
}

uint64_t sub_1DD7F90E8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1819242356 && a2 == 0xE400000000000000;
  if (v3 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6341746E65696C63 && a2 == 0xEC0000006E6F6974;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E61747369737361 && a2 == 0xEF616D6568635374;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6F72746E6F436975 && a2 == 0xE90000000000006CLL)
      {

        return 3;
      }

      else
      {
        v9 = sub_1DD875A30();

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

uint64_t sub_1DD7F9254(char a1)
{
  result = 1819242356;
  switch(a1)
  {
    case 1:
      result = 0x6341746E65696C63;
      break;
    case 2:
      result = 0x6E61747369737361;
      break;
    case 3:
      result = 0x6F72746E6F436975;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD7F92E8(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    sub_1DD8256B0();
    sub_1DD875A30();
    sub_1DD82698C();
    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DD7F934C(uint64_t a1)
{
  v2 = sub_1DD808854();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7F9388(uint64_t a1)
{
  v2 = sub_1DD808854();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7F93C4(uint64_t a1)
{
  v2 = sub_1DD8088A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7F9400(uint64_t a1)
{
  v2 = sub_1DD8088A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7F9444@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7F90E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7F946C(uint64_t a1)
{
  v2 = sub_1DD8087AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7F94A8(uint64_t a1)
{
  v2 = sub_1DD8087AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7F94E4(uint64_t a1)
{
  v2 = sub_1DD8088FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7F9520(uint64_t a1)
{
  v2 = sub_1DD8088FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7F955C(uint64_t a1)
{
  v2 = sub_1DD808800();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7F9598(uint64_t a1)
{
  v2 = sub_1DD808800();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void PlannerPromptData.Tool.Definition.encode(to:)()
{
  sub_1DD6DED2C();
  v1 = v0;
  v2 = sub_1DD710A9C(&qword_1ECD135A0, &qword_1DD88A7C8);
  sub_1DD6DDEAC(v2);
  v4 = *(v3 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6FF92C(v6, v58);
  v64 = type metadata accessor for PlannerPromptData.Tool.Definition.UIControlTool(0);
  v7 = sub_1DD6DE1C4(v64);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6DDEE8();
  v10 = sub_1DD710A9C(&qword_1ECD135A8, &qword_1DD88A7D0);
  sub_1DD6DDEAC(v10);
  v12 = *(v11 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1DD824948(v14, v59);
  v63 = type metadata accessor for PlannerPromptData.Tool.Definition.AssistantSchema(0);
  v15 = sub_1DD6DE1C4(v63);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1DD6DDEE8();
  v18 = sub_1DD710A9C(&qword_1ECD135B0, &qword_1DD88A7D8);
  sub_1DD6DDEAC(v18);
  v20 = *(v19 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v21);
  sub_1DD824A38(v22, v60);
  v62 = type metadata accessor for PlannerPromptData.Tool.Definition.ClientAction(0);
  v23 = sub_1DD6DE1C4(v62);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  sub_1DD6DDEE8();
  v26 = sub_1DD710A9C(&qword_1ECD135B8, &qword_1DD88A7E0);
  v61 = sub_1DD6DDEAC(v26);
  v28 = *(v27 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v29);
  sub_1DD6DDFE4();
  v30 = type metadata accessor for PlannerPromptData.Tool.Definition.ToolDefinition(0);
  v31 = sub_1DD8247B4(v30);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  sub_1DD6ED3C0();
  v34 = type metadata accessor for PlannerPromptData.Tool.Definition(0);
  v35 = sub_1DD6DE1C4(v34);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  sub_1DD6E6200();
  v38 = sub_1DD710A9C(&qword_1ECD135C0, &qword_1DD88A7E8);
  sub_1DD6DDEAC(v38);
  v40 = *(v39 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v41);
  sub_1DD6DE340();
  v42 = v1[3];
  v43 = v1[4];
  sub_1DD6FE770(v1);
  sub_1DD8087AC();
  sub_1DD8256E0();
  sub_1DD875BB0();
  sub_1DD82471C();
  sub_1DD6E5870();
  sub_1DD6DFF24();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1DD6E59B8();
      sub_1DD6E4104();
      sub_1DD8088A8();
      sub_1DD6FA420();
      sub_1DD875910();
      sub_1DD826184();
      sub_1DD6E1E84(v55);
      sub_1DD6FAD44();
      sub_1DD827848();
      v56 = sub_1DD6E6AD4();
      v57(v56);
      goto LABEL_6;
    case 2u:
      sub_1DD6E59B8();
      sub_1DD82768C();
      sub_1DD808854();
      sub_1DD6FA420();
      sub_1DD875910();
      sub_1DD6F4D58();
      sub_1DD6E1E84(v49);
      sub_1DD6FAD44();
      sub_1DD827848();
      v50 = sub_1DD6E6AD4();
      v51(v50);
      goto LABEL_6;
    case 3u:
      sub_1DD6E59B8();
      sub_1DD7928CC();
      sub_1DD808800();
      sub_1DD6FA420();
      sub_1DD875910();
      sub_1DD82619C();
      sub_1DD6E1E84(v52);
      sub_1DD6FAD44();
      sub_1DD827848();
      v53 = sub_1DD6E6AD4();
      v54(v53);
LABEL_6:
      sub_1DD6E5ABC();
      v47 = sub_1DD824A94();
      break;
    default:
      sub_1DD6E59B8();
      sub_1DD8088FC();
      sub_1DD8251A8();
      sub_1DD875910();
      sub_1DD7051E8();
      sub_1DD6E1E84(v44);
      sub_1DD8276C8();
      sub_1DD8759D0();
      v45 = sub_1DD705C68();
      v46(v45, v61);
      sub_1DD6FF720();
      sub_1DD6E5ABC();
      v47 = sub_1DD825148();
      break;
  }

  v48(v47);
  sub_1DD825AC0();
  sub_1DD6E0C78();
}

void PlannerPromptData.Tool.Definition.hash(into:)()
{
  sub_1DD6DEB38();
  v2 = sub_1DD6DE290();
  v3 = type metadata accessor for PlannerPromptData.Tool.Definition.UIControlTool(v2);
  v4 = sub_1DD8247B4(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD6DE4A8();
  v7 = sub_1DD826C10();
  v8 = type metadata accessor for PlannerPromptData.Tool.Definition.AssistantSchema(v7);
  v9 = sub_1DD6DEA10(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD824734();
  v12 = type metadata accessor for PlannerPromptData.Tool.Definition.ClientAction(0);
  v13 = sub_1DD6DEA10(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1DD6E2220();
  v16 = type metadata accessor for PlannerPromptData.Tool.Definition.ToolDefinition(0);
  v17 = sub_1DD6DEA10(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1DD702A64();
  v20 = type metadata accessor for PlannerPromptData.Tool.Definition(0);
  v21 = sub_1DD6DE1C4(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1DD6DE4A8();
  sub_1DD700C78();
  sub_1DD82471C();
  sub_1DD826680();
  sub_1DD6E5870();
  sub_1DD6E594C();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1DD6F8C1C();
      sub_1DD8256EC();
      sub_1DD6E59B8();
      MEMORY[0x1E12B5570](1);
      sub_1DD874F10();
      sub_1DD6DE350();
      sub_1DD6E1E84(v34);
      sub_1DD6FE878();
      sub_1DD8750C0();
      sub_1DD8261B4();
      break;
    case 2u:
      sub_1DD824F18();
      sub_1DD825570();
      sub_1DD6E59B8();
      MEMORY[0x1E12B5570](2);
      sub_1DD875050();
      sub_1DD824F30();
      sub_1DD6E1E84(v25);
      sub_1DD6FE878();
      sub_1DD8750C0();
      sub_1DD825C80();
      break;
    case 3u:
      sub_1DD825CEC();
      sub_1DD6E59B8();
      MEMORY[0x1E12B5570](3);
      v26 = *v0;
      v27 = v0[1];
      _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
      v28 = v0[2];
      v29 = v0[3];
      v30 = v0[4];
      v31 = v0[5];
      _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
      sub_1DD6DDEFC();
      _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
      v32 = *(v1 + 24);
      sub_1DD874F10();
      sub_1DD6DE350();
      sub_1DD6E1E84(v33);
      sub_1DD825974();
      sub_1DD8750C0();
      sub_1DD6FC290();
      break;
    default:
      sub_1DD824F48();
      sub_1DD6E6384();
      sub_1DD6E59B8();
      MEMORY[0x1E12B5570](0);
      sub_1DD874F10();
      sub_1DD6DE350();
      sub_1DD6E1E84(v24);
      sub_1DD6FE878();
      sub_1DD8750C0();
      sub_1DD6FF720();
      break;
  }

  sub_1DD6E5ABC();
  sub_1DD6DFED0();
}

uint64_t PlannerPromptData.Tool.Definition.hashValue.getter()
{
  sub_1DD6DEDA4();
  PlannerPromptData.Tool.Definition.hash(into:)();
  return sub_1DD875B60();
}

void PlannerPromptData.Tool.Definition.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1DD6DED2C();
  a19 = v22;
  a20 = v23;
  sub_1DD705C5C();
  v24 = sub_1DD710A9C(&qword_1ECD13610, &qword_1DD88A7F0);
  sub_1DD6DDEAC(v24);
  v26 = *(v25 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v27);
  sub_1DD6E9924(v28, v107);
  v29 = sub_1DD710A9C(&qword_1ECD13618, &qword_1DD88A7F8);
  v112 = sub_1DD6DDEAC(v29);
  v31 = *(v30 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v32);
  sub_1DD6FF92C(v33, v108);
  v34 = sub_1DD710A9C(&qword_1ECD13620, &qword_1DD88A800);
  sub_1DD6DDEAC(v34);
  v36 = *(v35 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v37);
  sub_1DD824A4C(v38, v109);
  v39 = sub_1DD710A9C(&qword_1ECD13628, &qword_1DD88A808);
  v111 = sub_1DD6DDEAC(v39);
  v41 = *(v40 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v42);
  sub_1DD82495C(v43, v110);
  v114 = sub_1DD710A9C(&qword_1ECD13630, &qword_1DD88A810);
  sub_1DD6DDEAC(v114);
  v45 = *(v44 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v46);
  sub_1DD6DEBA0();
  v113 = type metadata accessor for PlannerPromptData.Tool.Definition(0);
  v47 = sub_1DD6DE1C4(v113);
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v47);
  sub_1DD6DE21C();
  sub_1DD824D78();
  MEMORY[0x1EEE9AC00](v50);
  sub_1DD6F8C34();
  MEMORY[0x1EEE9AC00](v51);
  sub_1DD824C88();
  MEMORY[0x1EEE9AC00](v52);
  sub_1DD824970();
  MEMORY[0x1EEE9AC00](v53);
  sub_1DD8264E0();
  v55 = v20[3];
  v54 = v20[4];
  v115 = v20;
  sub_1DD824D14(v20);
  sub_1DD8087AC();
  sub_1DD6E4218();
  sub_1DD875B90();
  if (!v116)
  {
    sub_1DD826378();
    v56 = sub_1DD875900();
    sub_1DD6ED750(v56, 0);
    sub_1DD826908();
    if (!v57)
    {
      sub_1DD6E6120();
      sub_1DD6E42A8();
      if (v64 == v65)
      {
        __break(1u);
        return;
      }

      v66 = *(v63 + v62);
      v67 = sub_1DD6E988C(v58, v59, v60, v61, v62);
      v21 = sub_1DD6ED830(v67);
      v69 = v68;
      v71 = v70;
      swift_unknownObjectRelease();
      if (v69 == v71 >> 1)
      {
        switch(v66)
        {
          case 1:
            sub_1DD6E4104();
            sub_1DD8088A8();
            sub_1DD824DB8();
            sub_1DD875800();
            type metadata accessor for PlannerPromptData.Tool.Definition.ClientAction(0);
            sub_1DD826184();
            sub_1DD6E1E84(v86);
            sub_1DD7039C0();
            sub_1DD8758D0();
            swift_unknownObjectRelease();
            v103 = sub_1DD825078();
            v104(v103);
            v105 = sub_1DD6E37A0();
            v106(v105);
            sub_1DD825980();
            swift_storeEnumTagMultiPayload();
            goto LABEL_14;
          case 2:
            sub_1DD82768C();
            sub_1DD808854();
            sub_1DD824DB8();
            sub_1DD875800();
            v82 = type metadata accessor for PlannerPromptData.Tool.Definition.AssistantSchema(0);
            sub_1DD6F4D58();
            sub_1DD6E1E84(v83);
            sub_1DD6F9BEC(&a17);
            sub_1DD826A88();
            sub_1DD8758D0();
            sub_1DD826C00();
            swift_unknownObjectRelease();
            v87 = sub_1DD6DEBBC();
            v88(v87, v112);
            v89 = *(v82 + 8);
            v90 = sub_1DD770D98();
            v91(v90);
            sub_1DD826814();
            swift_storeEnumTagMultiPayload();
            goto LABEL_14;
          case 3:
            sub_1DD7928CC();
            sub_1DD808800();
            sub_1DD824DB8();
            sub_1DD875800();
            v84 = type metadata accessor for PlannerPromptData.Tool.Definition.UIControlTool(0);
            sub_1DD82619C();
            sub_1DD6E1E84(v85);
            sub_1DD8269B0(&a18);
            sub_1DD7039C0();
            sub_1DD8758D0();
            sub_1DD826C00();
            swift_unknownObjectRelease();
            v92 = sub_1DD825078();
            v93(v92);
            v94 = *(v84 + 8);
            v95 = sub_1DD770D98();
            v96(v95);
            sub_1DD8259E0();
            swift_storeEnumTagMultiPayload();
LABEL_14:
            v102 = v115;
            break;
          default:
            sub_1DD8088FC();
            sub_1DD824DB8();
            sub_1DD875800();
            v72 = type metadata accessor for PlannerPromptData.Tool.Definition.ToolDefinition(0);
            sub_1DD7051E8();
            sub_1DD6E1E84(v73);
            sub_1DD826A88();
            sub_1DD8758D0();
            sub_1DD826C00();
            swift_unknownObjectRelease();
            v97 = sub_1DD6DEBBC();
            v98(v97, v111);
            v99 = *(v72 + 8);
            v100 = sub_1DD770D98();
            v101(v100);
            sub_1DD825980();
            swift_storeEnumTagMultiPayload();
            v102 = v115;
            break;
        }

        sub_1DD6E59B8();
        sub_1DD6E59B8();
        sub_1DD6E1EC8(v102);
        goto LABEL_10;
      }
    }

    sub_1DD875740();
    sub_1DD6E41BC();
    sub_1DD827740();
    v74 = *(sub_1DD710A9C(&qword_1ECD0E158, &qword_1DD876EC0) + 48);
    *v21 = v113;
    sub_1DD826378();
    sub_1DD875810();
    sub_1DD6DF12C();
    v75 = *MEMORY[0x1E69E6AF8];
    sub_1DD824B14();
    v77 = *(v76 + 104);
    v78 = sub_1DD6FEB10();
    v79(v78);
    swift_willThrow();
    swift_unknownObjectRelease();
    v80 = sub_1DD6E37A0();
    v81(v80);
  }

  sub_1DD6E1EC8(v115);
LABEL_10:
  sub_1DD7536FC();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7FA878()
{
  sub_1DD875B20();
  PlannerPromptData.Tool.Definition.hash(into:)();
  return sub_1DD875B60();
}

uint64_t sub_1DD7FA8EC()
{
  sub_1DD705CF0();
  if (v2 == 0x6974696E69666564 && v1 == 0xEA00000000006E6FLL)
  {

    v4 = 0;
  }

  else
  {
    sub_1DD8256B0();
    sub_1DD875A30();
    sub_1DD82698C();
    v4 = v0 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DD7FA95C(uint64_t a1)
{
  v2 = sub_1DD808950();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7FA998(uint64_t a1)
{
  v2 = sub_1DD808950();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void PlannerPromptData.Tool.encode(to:)()
{
  sub_1DD826CE0();
  sub_1DD6E593C();
  v0 = sub_1DD710A9C(&qword_1ECD13658, &qword_1DD88A818);
  sub_1DD6DDEAC(v0);
  v2 = *(v1 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1DD6DEBA0();
  sub_1DD6DEAD0();
  sub_1DD808950();
  sub_1DD825588();
  type metadata accessor for PlannerPromptData.Tool.Definition(0);
  sub_1DD826154();
  sub_1DD6E1E84(v4);
  sub_1DD6E71A4();
  v5 = sub_1DD6ED4B8();
  v6(v5);
  sub_1DD6E1868();
  sub_1DD826CF4();
}

void PlannerPromptData.Tool.init(from:)()
{
  sub_1DD6DED2C();
  sub_1DD825A04();
  v2 = type metadata accessor for PlannerPromptData.Tool.Definition(0);
  v3 = sub_1DD6DE1C4(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1DD6DDEE8();
  sub_1DD826760(v6);
  v7 = sub_1DD710A9C(&qword_1ECD13670, &qword_1DD88A820);
  sub_1DD6DDEAC(v7);
  v9 = *(v8 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v10);
  v11 = sub_1DD6E27D4();
  v12 = type metadata accessor for PlannerPromptData.Tool(v11);
  v13 = sub_1DD6DEA10(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1DD6E6200();
  v16 = v0[3];
  v17 = v0[4];
  sub_1DD824CF8(v0);
  sub_1DD808950();
  sub_1DD6ED2C8();
  sub_1DD875B90();
  if (!v1)
  {
    sub_1DD826154();
    sub_1DD6E1E84(v18);
    sub_1DD826C90();
    sub_1DD6FAB58();
    sub_1DD8758D0();
    v19 = sub_1DD6ED80C();
    v20(v19, v7);
    sub_1DD701480();
    sub_1DD6E59B8();
    sub_1DD6FAA70();
    sub_1DD6E59B8();
  }

  sub_1DD6E1EC8(v0);
  sub_1DD703860();
  sub_1DD6E0C78();
}

IntelligenceFlow::PlannerPromptData __swiftcall PlannerPromptData.init(onScreenContext:availableTools:)(Swift::OpaquePointer onScreenContext, Swift::OpaquePointer availableTools)
{
  v2->_rawValue = onScreenContext._rawValue;
  v2[1]._rawValue = availableTools._rawValue;
  result.availableTools = availableTools;
  result.onScreenContext = onScreenContext;
  return result;
}

uint64_t sub_1DD7FACE4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65657263536E6FLL && a2 == 0xEF747865746E6F43;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C62616C69617661 && a2 == 0xEE00736C6F6F5465)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD875A30();

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

uint64_t sub_1DD7FADBC(char a1)
{
  if (a1)
  {
    return 0x6C62616C69617661;
  }

  else
  {
    return 0x6E65657263536E6FLL;
  }
}

uint64_t sub_1DD7FAE14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7FACE4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7FAE3C(uint64_t a1)
{
  v2 = sub_1DD8089C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7FAE78(uint64_t a1)
{
  v2 = sub_1DD8089C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void PlannerPromptData.encode(to:)()
{
  sub_1DD6DED2C();
  v3 = v2;
  v4 = sub_1DD710A9C(&qword_1ECD13680, &qword_1DD88A828);
  sub_1DD6E49A8(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD6DEA6C();
  v10 = *v0;
  v16 = v0[1];
  v11 = v3[3];
  v12 = v3[4];
  sub_1DD6E6C94(v3);
  sub_1DD8089C4();
  sub_1DD826F3C();

  sub_1DD6E17D8();
  sub_1DD6DFF18();
  sub_1DD875BB0();
  sub_1DD710A9C(&qword_1ECD13690, &qword_1DD88A830);
  sub_1DD808A18();
  sub_1DD825BAC();
  sub_1DD6E9630();
  sub_1DD8759D0();

  if (!v1)
  {
    sub_1DD82682C();
    sub_1DD710A9C(&qword_1ECD136A8, &qword_1DD88A838);
    sub_1DD808ACC();
    sub_1DD825BAC();
    sub_1DD6E9630();
    sub_1DD8759D0();
  }

  v13 = *(v6 + 8);
  v14 = sub_1DD6DEA04();
  v15(v14);
  sub_1DD6E0CE8();
  sub_1DD6E0C78();
}

void PlannerPromptData.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1DD6DED2C();
  sub_1DD825058();
  v13 = sub_1DD710A9C(&qword_1ECD136C0, &qword_1DD88A840);
  sub_1DD6DDEAC(v13);
  v15 = *(v14 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1DD6DDFE4();
  sub_1DD6DE568();
  sub_1DD8089C4();
  sub_1DD6ED2A4();
  if (v11)
  {
    sub_1DD6E1EC8(v10);
  }

  else
  {
    sub_1DD710A9C(&qword_1ECD13690, &qword_1DD88A830);
    sub_1DD808B80();
    sub_1DD6E9644();
    sub_1DD825CF8();
    sub_1DD6FAE18();
    sub_1DD8758D0();
    sub_1DD710A9C(&qword_1ECD136A8, &qword_1DD88A838);
    sub_1DD82682C();
    sub_1DD808C34();
    sub_1DD6E9644();
    sub_1DD825CF8();
    sub_1DD6FAE18();
    sub_1DD8758D0();
    v17 = sub_1DD6DFF30();
    v18(v17);
    *v12 = a10;
    v12[1] = a10;

    sub_1DD824F80();
  }

  sub_1DD6DF120();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7FB218()
{
  sub_1DD6E1F34();
  v3 = v1 == 0x64496C6F6F74 && v2 == 0xE600000000000000;
  if (v3 || (sub_1DD824AA4(), (sub_1DD875A30() & 1) != 0))
  {

    return 0;
  }

  else if (v1 == 0x6574656D61726170 && v0 == 0xEA00000000007372)
  {

    return 1;
  }

  else
  {
    sub_1DD824AA4();
    sub_1DD875A30();
    sub_1DD82698C();
    if (v1)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1DD7FB2C8(uint64_t a1)
{
  v2 = sub_1DD808CE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7FB304(uint64_t a1)
{
  v2 = sub_1DD808CE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ActionResolutionUpdate.encode(to:)()
{
  sub_1DD6DED2C();
  sub_1DD700858();
  v2 = sub_1DD710A9C(&qword_1ECD136E8, &qword_1DD88A848);
  sub_1DD6E49A8(v2);
  v4 = *(v3 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6DEA6C();
  v6 = *v0;
  v7 = v0[1];
  sub_1DD826A64();
  v8 = sub_1DD8267D8();
  sub_1DD6E7320(v8);
  sub_1DD808CE8();
  sub_1DD6E17D8();
  sub_1DD825680();
  sub_1DD875BB0();
  sub_1DD8249BC();
  sub_1DD875970();
  if (!v1)
  {
    sub_1DD825014();
    sub_1DD710A9C(&qword_1ECD10E58, &qword_1DD8AED90);
    sub_1DD7FD198();
    sub_1DD825630();
    sub_1DD6E9630();
    sub_1DD8759D0();
  }

  v9 = sub_1DD6DE58C();
  v10(v9);
  sub_1DD6E0CE8();
  sub_1DD6E0C78();
}

void sub_1DD7FB4A0()
{
  sub_1DD6DED2C();
  v3 = v2;
  sub_1DD825A04();
  v6 = sub_1DD825C68(v4, v5);
  v16 = sub_1DD710A9C(v6, v7);
  sub_1DD6DDEAC(v16);
  v9 = *(v8 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1DD6DDFE4();
  v11 = v0[3];
  v12 = v0[4];
  v13 = sub_1DD6E7320(v0);
  v3(v13);
  sub_1DD827014();
  sub_1DD827524();
  sub_1DD825680();
  sub_1DD875B90();
  if (v1)
  {
    sub_1DD6E1EC8(v0);
  }

  else
  {
    sub_1DD8259A4();
    sub_1DD6E5374();
    sub_1DD875870();
    sub_1DD825CD4();
    sub_1DD710A9C(&qword_1ECD10E58, &qword_1DD8AED90);
    sub_1DD82552C();
    sub_1DD7FD2FC();
    sub_1DD824B6C();
    sub_1DD8258B8();
    sub_1DD6FAE18();
    sub_1DD8758D0();
    v14 = sub_1DD6DEA2C();
    v15(v14);
    sub_1DD8277B8();

    sub_1DD824F80();
  }

  sub_1DD6DF120();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7FB658()
{
  v0 = sub_1DD6DE290();
  v2 = v1(v0);
  sub_1DD6DE1C4(v2);
  v4 = *(v3 + 40);
  v5 = sub_1DD6E21D0();

  return v6(v5);
}

uint64_t ActionExecutionOutcome.toolId.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for ActionExecutionOutcome(v0) + 20);
  return sub_1DD6DDF9C();
}

uint64_t ActionExecutionOutcome.outcome.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for ActionExecutionOutcome(v0) + 24);
  return sub_1DD6DDF9C();
}

void sub_1DD7FB808()
{
  sub_1DD827764();
  v4 = v3;
  sub_1DD6FC2A8();
  v5 = sub_1DD874820();
  sub_1DD6DF448(v5);
  v7 = *(v6 + 32);
  v8 = sub_1DD6E5DB0();
  v9(v8);
  v10 = v4(0);
  v11 = (v2 + *(v10 + 20));
  *v11 = v1;
  v11[1] = v0;
  v12 = *(v10 + 24);
  sub_1DD6E59B8();
  sub_1DD827720();
}

uint64_t sub_1DD7FB898(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x76456E6F69746361 && a2 == 0xED00006449746E65;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x64496C6F6F74 && a2 == 0xE600000000000000;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x656D6F6374756FLL && a2 == 0xE700000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1DD875A30();

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

uint64_t sub_1DD7FB9AC(char a1)
{
  if (!a1)
  {
    return 0x76456E6F69746361;
  }

  if (a1 == 1)
  {
    return 0x64496C6F6F74;
  }

  return 0x656D6F6374756FLL;
}

uint64_t sub_1DD7FBA14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7FB898(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7FBA3C(uint64_t a1)
{
  v2 = sub_1DD808D3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7FBA78(uint64_t a1)
{
  v2 = sub_1DD808D3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ActionExecutionOutcome.encode(to:)()
{
  sub_1DD826CE0();
  sub_1DD6F8C0C();
  v3 = sub_1DD710A9C(&qword_1ECD13700, &qword_1DD88A858);
  sub_1DD6E49A8(v3);
  v5 = *(v4 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD6DE340();
  sub_1DD6DEAD0();
  sub_1DD808D3C();
  sub_1DD8250D8();
  sub_1DD875BB0();
  sub_1DD825C8C();
  sub_1DD874820();
  sub_1DD6E14DC();
  sub_1DD6E1E84(v7);
  sub_1DD6F9A4C();
  sub_1DD6E730C();
  sub_1DD8759D0();
  if (!v0)
  {
    v8 = type metadata accessor for ActionExecutionOutcome(0);
    sub_1DD825AA8(v8);
    sub_1DD824D48((v1 + v9));
    sub_1DD7055A8();
    sub_1DD875970();
    v10 = *(v2 + 24);
    sub_1DD6E0FF8();
    type metadata accessor for StatementOutcome(0);
    sub_1DD6DE08C();
    sub_1DD6E1E84(v11);
    sub_1DD700E54();
    sub_1DD6E730C();
    sub_1DD8759D0();
  }

  v12 = sub_1DD825168();
  v13(v12);
  sub_1DD825790();
  sub_1DD826CF4();
}

void ActionExecutionOutcome.init(from:)()
{
  sub_1DD6DED2C();
  v3 = sub_1DD82662C(v2);
  v31 = type metadata accessor for StatementOutcome(v3);
  v4 = sub_1DD6DE1C4(v31);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD824734();
  v33 = sub_1DD874820();
  v7 = sub_1DD6DDEAC(v33);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6DDEE8();
  sub_1DD826244(v10);
  v32 = sub_1DD710A9C(&qword_1ECD13710, &qword_1DD88A860);
  sub_1DD6DDEAC(v32);
  v12 = *(v11 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1DD6DEA6C();
  v14 = type metadata accessor for ActionExecutionOutcome(0);
  v15 = sub_1DD6DE1C4(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1DD6ED3C0();
  v19 = v1[3];
  v18 = v1[4];
  sub_1DD6FE8B0(v1);
  sub_1DD808D3C();
  sub_1DD6E17D8();
  sub_1DD82686C();
  if (v0)
  {
    sub_1DD6E1EC8(v1);
  }

  else
  {
    sub_1DD8265B4();
    sub_1DD6E14DC();
    sub_1DD6E1E84(v20);
    sub_1DD6F9A4C();
    sub_1DD6E4968();
    sub_1DD8758D0();
    v21 = sub_1DD825764();
    v22(v21);
    sub_1DD824CE8();
    sub_1DD6E72A8();
    sub_1DD875870();
    sub_1DD8275F4(v30);
    *v25 = v23;
    v25[1] = v24;
    sub_1DD6E0FF8();
    sub_1DD6DE08C();
    sub_1DD6E1E84(v26);
    sub_1DD827008();
    sub_1DD6E4968();
    sub_1DD8758D0();
    v27 = sub_1DD825780();
    v28(v27);
    v29 = *(v30 + 24);
    sub_1DD6E0B14();
    sub_1DD6E59B8();
    sub_1DD825CEC();
    sub_1DD6E5870();
    sub_1DD6E1EC8(v1);
    sub_1DD826B48();
    sub_1DD6E5ABC();
  }

  sub_1DD6E429C();
  sub_1DD6E0C78();
}

unint64_t sub_1DD7FBFA0()
{
  result = qword_1ECD10C38;
  if (!qword_1ECD10C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10C38);
  }

  return result;
}

unint64_t sub_1DD7FBFF4()
{
  result = qword_1ECD10C40;
  if (!qword_1ECD10C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10C40);
  }

  return result;
}

unint64_t sub_1DD7FC048()
{
  result = qword_1ECD10C50;
  if (!qword_1ECD10C50)
  {
    sub_1DD717E88(&qword_1ECD10C48, &qword_1DD889140);
    sub_1DD7FBFF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10C50);
  }

  return result;
}

unint64_t sub_1DD7FC0CC()
{
  result = qword_1ECD10C60;
  if (!qword_1ECD10C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10C60);
  }

  return result;
}

unint64_t sub_1DD7FC120()
{
  result = qword_1ECD10C68;
  if (!qword_1ECD10C68)
  {
    sub_1DD717E88(&qword_1ECD10C48, &qword_1DD889140);
    sub_1DD7FC0CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10C68);
  }

  return result;
}

unint64_t sub_1DD7FC1A4()
{
  result = qword_1ECD10CA0;
  if (!qword_1ECD10CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10CA0);
  }

  return result;
}

unint64_t sub_1DD7FC1F8()
{
  result = qword_1ECD10CA8;
  if (!qword_1ECD10CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10CA8);
  }

  return result;
}

unint64_t sub_1DD7FC24C()
{
  result = qword_1ECD10CB0;
  if (!qword_1ECD10CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10CB0);
  }

  return result;
}

unint64_t sub_1DD7FC2A0()
{
  result = qword_1ECD10CB8;
  if (!qword_1ECD10CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10CB8);
  }

  return result;
}

unint64_t sub_1DD7FC2F4()
{
  result = qword_1ECD10CC0;
  if (!qword_1ECD10CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10CC0);
  }

  return result;
}

unint64_t sub_1DD7FC348()
{
  result = qword_1ECD10CC8;
  if (!qword_1ECD10CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10CC8);
  }

  return result;
}

void sub_1DD7FC39C(int64_t a1)
{
  v74 = sub_1DD710A9C(&qword_1ECD0FA80, &qword_1DD881480);
  v4 = *(v74 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v7 = &v58 - v6;
  v71 = sub_1DD874FA0();
  v8 = *(v71 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v75 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DD710A9C(&qword_1ECD151C8, &qword_1DD8A70A8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18.n128_f64[0] = MEMORY[0x1EEE9AC00](v16);
  v20 = &v58 - v19;
  v21 = *(a1 + 16);
  v22 = *(*v1 + 16);
  if (__OFADD__(v22, v21))
  {
    __break(1u);
    goto LABEL_10;
  }

  v70 = v17;
  v73 = v7;
  sub_1DD864BA4(v22 + v21, 1);
  v2 = *v1;
  v7 = ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v23 = *(v4 + 72);
  v24 = (*(*v1 + 24) >> 1) - *(*v1 + 16);
  v72 = v23;
  sub_1DD84ED74();
  if (v25 < v21)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v25)
  {
    v28 = *(v2 + 16);
    v29 = __OFADD__(v28, v25);
    v30 = v28 + v25;
    if (v29)
    {
      __break(1u);
      goto LABEL_14;
    }

    *(v2 + 16) = v30;
  }

  if (v25 != v24)
  {
    sub_1DD82414C();
LABEL_8:
    *v1 = v2;
    return;
  }

LABEL_11:
  v69 = *(v2 + 16);
  v26 = v77;
  v64 = v76;
  v65 = v8;
  v27 = v78;
  a1 = v79;
  v61 = v77;
  v59 = v7;
  v58 = v78;
  if (v80)
  {
    v31 = (v80 - 1) & v80;
    v32 = __clz(__rbit64(v80)) | (v79 << 6);
    v60 = (v78 + 64) >> 6;
LABEL_19:
    v8 = v65;
    v35 = *(v64 + 56);
    v36 = (*(v64 + 48) + 16 * v32);
    v37 = *v36;
    v68 = v36[1];
    v38 = v75;
    v39 = v71;
    (*(v65 + 16))(v75, v35 + *(v65 + 72) * v32, v71, v18);
    v40 = v74;
    v41 = *(v74 + 48);
    *v20 = v37;
    v42 = v40;
    *(v20 + 1) = v68;
    (*(v8 + 32))(&v20[v41], v38, v39);
    sub_1DD6E5E68(v20, 0, 1, v42);

LABEL_20:
    v62 = v8 + 32;
    v63 = v8 + 16;
    v43 = v69;
    while (2)
    {
      sub_1DD700E60();
      if (sub_1DD6E5ED0(v70, 1, v42) != 1)
      {
        sub_1DD824154(v70, &qword_1ECD151C8);
        v44 = *(v2 + 24);
        v67 = v44 >> 1;
        if ((v44 >> 1) < v43 + 1)
        {
          sub_1DD784A68(v44 > 1, v43 + 1, 1, v2);
          v2 = v57;
          v67 = *(v57 + 24) >> 1;
        }

        v66 = &v59[v2];
        while (1)
        {
          sub_1DD700E60();
          if (sub_1DD6E5ED0(v14, 1, v42) == 1)
          {
            break;
          }

          v45 = v73;
          sub_1DD6E3A64();
          v46 = v65;
          if (v43 >= v67)
          {
            sub_1DD824154(v45, &qword_1ECD0FA80);
            v42 = v74;
            goto LABEL_39;
          }

          sub_1DD824154(v20, &qword_1ECD151C8);
          sub_1DD6E3A64();
          v69 = v43 + 1;
          if (!v31)
          {
            v42 = v74;
            while (1)
            {
              v47 = a1 + 1;
              if (__OFADD__(a1, 1))
              {
                break;
              }

              if (v47 >= v60)
              {
                sub_1DD6E5E68(v20, 1, 1, v74);
                v31 = 0;
                goto LABEL_35;
              }

              v31 = *(v61 + 8 * v47);
              ++a1;
              if (v31)
              {
                a1 = v47;
                goto LABEL_34;
              }
            }

            __break(1u);
            goto LABEL_41;
          }

          v47 = a1;
LABEL_34:
          v48 = __clz(__rbit64(v31));
          v31 &= v31 - 1;
          v49 = v48 | (v47 << 6);
          v50 = *(v64 + 56);
          v51 = (*(v64 + 48) + 16 * v49);
          v52 = v51[1];
          v68 = *v51;
          v53 = v71;
          (*(v46 + 16))(v75, v50 + *(v46 + 72) * v49, v71);
          v55 = v74;
          v54 = v75;
          v56 = *(v74 + 48);
          *v20 = v68;
          *(v20 + 1) = v52;
          (*(v46 + 32))(&v20[v56], v54, v53);
          sub_1DD6E5E68(v20, 0, 1, v55);
          v42 = v55;

LABEL_35:
          v43 = v69;
        }

        sub_1DD824154(v14, &qword_1ECD151C8);
LABEL_39:
        *(v2 + 16) = v43;
        continue;
      }

      break;
    }

LABEL_41:
    sub_1DD824154(v20, &qword_1ECD151C8);
    sub_1DD82414C();
    sub_1DD824154(v70, &qword_1ECD151C8);
    goto LABEL_8;
  }

LABEL_14:
  v60 = (v27 + 64) >> 6;
  while (1)
  {
    v33 = a1 + 1;
    if (__OFADD__(a1, 1))
    {
      break;
    }

    if (v33 >= ((v27 + 64) >> 6))
    {
      v42 = v74;
      sub_1DD6E5E68(v20, 1, 1, v74);
      v31 = 0;
      goto LABEL_20;
    }

    v34 = *(v26 + 8 * v33);
    ++a1;
    if (v34)
    {
      v31 = (v34 - 1) & v34;
      v32 = __clz(__rbit64(v34)) | (v33 << 6);
      a1 = v33;
      goto LABEL_19;
    }
  }

  __break(1u);
}

unint64_t sub_1DD7FCA58()
{
  result = qword_1ECD10D08;
  if (!qword_1ECD10D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10D08);
  }

  return result;
}

unint64_t sub_1DD7FCAAC()
{
  result = qword_1ECD10D10;
  if (!qword_1ECD10D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10D10);
  }

  return result;
}

unint64_t sub_1DD7FCB00()
{
  result = qword_1ECD10D20;
  if (!qword_1ECD10D20)
  {
    sub_1DD717E88(&qword_1ECD10D18, &qword_1DD8891C0);
    sub_1DD7FCB84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10D20);
  }

  return result;
}

unint64_t sub_1DD7FCB84()
{
  result = qword_1ECD10D28;
  if (!qword_1ECD10D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10D28);
  }

  return result;
}

unint64_t sub_1DD7FCBD8()
{
  result = qword_1ECD10D38;
  if (!qword_1ECD10D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10D38);
  }

  return result;
}

unint64_t sub_1DD7FCC2C()
{
  result = qword_1ECD10D40;
  if (!qword_1ECD10D40)
  {
    sub_1DD717E88(&qword_1ECD10D18, &qword_1DD8891C0);
    sub_1DD7FCCB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10D40);
  }

  return result;
}

unint64_t sub_1DD7FCCB0()
{
  result = qword_1ECD10D48;
  if (!qword_1ECD10D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10D48);
  }

  return result;
}

unint64_t sub_1DD7FCD24()
{
  result = qword_1ECD10D70;
  if (!qword_1ECD10D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10D70);
  }

  return result;
}

unint64_t sub_1DD7FCD78()
{
  result = qword_1ECD10D78;
  if (!qword_1ECD10D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10D78);
  }

  return result;
}

unint64_t sub_1DD7FCDCC()
{
  result = qword_1ECD10D90;
  if (!qword_1ECD10D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10D90);
  }

  return result;
}

unint64_t sub_1DD7FCE20()
{
  result = qword_1ECD10DA8;
  if (!qword_1ECD10DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10DA8);
  }

  return result;
}

unint64_t sub_1DD7FCE74()
{
  result = qword_1ECD10DB8;
  if (!qword_1ECD10DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10DB8);
  }

  return result;
}

unint64_t sub_1DD7FCEC8()
{
  result = qword_1ECD10DD8;
  if (!qword_1ECD10DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10DD8);
  }

  return result;
}

unint64_t sub_1DD7FCF1C()
{
  result = qword_1ECD10DE0;
  if (!qword_1ECD10DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10DE0);
  }

  return result;
}

unint64_t sub_1DD7FCF70()
{
  result = qword_1ECD10DE8;
  if (!qword_1ECD10DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10DE8);
  }

  return result;
}

unint64_t sub_1DD7FCFC4()
{
  result = qword_1ECD10DF0;
  if (!qword_1ECD10DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10DF0);
  }

  return result;
}

unint64_t sub_1DD7FD018()
{
  result = qword_1ECD10DF8;
  if (!qword_1ECD10DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10DF8);
  }

  return result;
}

unint64_t sub_1DD7FD06C()
{
  result = qword_1ECD10E18;
  if (!qword_1ECD10E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10E18);
  }

  return result;
}

unint64_t sub_1DD7FD0C0()
{
  result = qword_1ECD10E20;
  if (!qword_1ECD10E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10E20);
  }

  return result;
}

unint64_t sub_1DD7FD144()
{
  result = qword_1ECD10E50;
  if (!qword_1ECD10E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10E50);
  }

  return result;
}

unint64_t sub_1DD7FD198()
{
  result = qword_1ECD10E60;
  if (!qword_1ECD10E60)
  {
    sub_1DD717E88(&qword_1ECD10E58, &qword_1DD8AED90);
    sub_1DD6E1E84(&unk_1EE015E28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10E60);
  }

  return result;
}

unint64_t sub_1DD7FD254()
{
  result = qword_1ECD10E68;
  if (!qword_1ECD10E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10E68);
  }

  return result;
}

unint64_t sub_1DD7FD2A8()
{
  result = qword_1ECD10E70;
  if (!qword_1ECD10E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10E70);
  }

  return result;
}

unint64_t sub_1DD7FD2FC()
{
  result = qword_1ECD10E80;
  if (!qword_1ECD10E80)
  {
    sub_1DD717E88(&qword_1ECD10E58, &qword_1DD8AED90);
    sub_1DD6E1E84(&unk_1EE015E20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10E80);
  }

  return result;
}

unint64_t sub_1DD7FD3B8()
{
  result = qword_1ECD10E88;
  if (!qword_1ECD10E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10E88);
  }

  return result;
}

unint64_t sub_1DD7FD40C()
{
  result = qword_1ECD10E90;
  if (!qword_1ECD10E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10E90);
  }

  return result;
}

unint64_t sub_1DD7FD460()
{
  result = qword_1ECD10EA0;
  if (!qword_1ECD10EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10EA0);
  }

  return result;
}

unint64_t sub_1DD7FD4B4()
{
  result = qword_1ECD10EC0;
  if (!qword_1ECD10EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10EC0);
  }

  return result;
}

unint64_t sub_1DD7FD508()
{
  result = qword_1ECD10ED8;
  if (!qword_1ECD10ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10ED8);
  }

  return result;
}

unint64_t sub_1DD7FD55C()
{
  result = qword_1ECD10EE0;
  if (!qword_1ECD10EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10EE0);
  }

  return result;
}

unint64_t sub_1DD7FD5B0()
{
  result = qword_1ECD10EF0;
  if (!qword_1ECD10EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10EF0);
  }

  return result;
}

uint64_t sub_1DD7FD604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    if (a5 != 1)
    {
      return result;
    }
  }
}

uint64_t sub_1DD7FD670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    if (a5 != 1)
    {
      return result;
    }
  }
}

unint64_t sub_1DD7FD6DC()
{
  result = qword_1ECD10F20;
  if (!qword_1ECD10F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10F20);
  }

  return result;
}

unint64_t sub_1DD7FD730()
{
  result = qword_1ECD10F30;
  if (!qword_1ECD10F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10F30);
  }

  return result;
}

unint64_t sub_1DD7FD784()
{
  result = qword_1ECD10F38;
  if (!qword_1ECD10F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10F38);
  }

  return result;
}

unint64_t sub_1DD7FD7D8()
{
  result = qword_1ECD10F40;
  if (!qword_1ECD10F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10F40);
  }

  return result;
}

unint64_t sub_1DD7FD82C()
{
  result = qword_1ECD10F48;
  if (!qword_1ECD10F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10F48);
  }

  return result;
}

unint64_t sub_1DD7FD880()
{
  result = qword_1ECD10F80;
  if (!qword_1ECD10F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10F80);
  }

  return result;
}

unint64_t sub_1DD7FD8D4()
{
  result = qword_1ECD10F88;
  if (!qword_1ECD10F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10F88);
  }

  return result;
}

unint64_t sub_1DD7FD928()
{
  result = qword_1ECD10F98;
  if (!qword_1ECD10F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10F98);
  }

  return result;
}

unint64_t sub_1DD7FD97C()
{
  result = qword_1ECD10FB0;
  if (!qword_1ECD10FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10FB0);
  }

  return result;
}

unint64_t sub_1DD7FD9D0()
{
  result = qword_1ECD10FC8;
  if (!qword_1ECD10FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10FC8);
  }

  return result;
}

unint64_t sub_1DD7FDA24()
{
  result = qword_1ECD10FE0;
  if (!qword_1ECD10FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10FE0);
  }

  return result;
}

unint64_t sub_1DD7FDA78()
{
  result = qword_1ECD10FF8;
  if (!qword_1ECD10FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10FF8);
  }

  return result;
}

unint64_t sub_1DD7FDACC()
{
  result = qword_1ECD11010;
  if (!qword_1ECD11010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11010);
  }

  return result;
}

unint64_t sub_1DD7FDB20()
{
  result = qword_1ECD11028;
  if (!qword_1ECD11028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11028);
  }

  return result;
}

unint64_t sub_1DD7FDB74()
{
  result = qword_1ECD11040;
  if (!qword_1ECD11040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11040);
  }

  return result;
}

unint64_t sub_1DD7FDC00()
{
  result = qword_1ECD110A0;
  if (!qword_1ECD110A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD110A0);
  }

  return result;
}

unint64_t sub_1DD7FDC54()
{
  result = qword_1ECD110A8;
  if (!qword_1ECD110A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD110A8);
  }

  return result;
}

unint64_t sub_1DD7FDCA8()
{
  result = qword_1ECD110B0;
  if (!qword_1ECD110B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD110B0);
  }

  return result;
}

unint64_t sub_1DD7FDCFC()
{
  result = qword_1ECD110B8;
  if (!qword_1ECD110B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD110B8);
  }

  return result;
}

unint64_t sub_1DD7FDD50()
{
  result = qword_1ECD110C0;
  if (!qword_1ECD110C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD110C0);
  }

  return result;
}

unint64_t sub_1DD7FDDA4()
{
  result = qword_1ECD110C8;
  if (!qword_1ECD110C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD110C8);
  }

  return result;
}

unint64_t sub_1DD7FDDF8()
{
  result = qword_1ECD110D0;
  if (!qword_1ECD110D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD110D0);
  }

  return result;
}

unint64_t sub_1DD7FDE4C()
{
  result = qword_1ECD110D8;
  if (!qword_1ECD110D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD110D8);
  }

  return result;
}

unint64_t sub_1DD7FDEA0()
{
  result = qword_1ECD110E0;
  if (!qword_1ECD110E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD110E0);
  }

  return result;
}

unint64_t sub_1DD7FDEF4()
{
  result = qword_1ECD110E8;
  if (!qword_1ECD110E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD110E8);
  }

  return result;
}

unint64_t sub_1DD7FDF48()
{
  result = qword_1ECD110F0;
  if (!qword_1ECD110F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD110F0);
  }

  return result;
}

unint64_t sub_1DD7FDF9C()
{
  result = qword_1ECD110F8;
  if (!qword_1ECD110F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD110F8);
  }

  return result;
}

unint64_t sub_1DD7FDFF0()
{
  result = qword_1ECD11100;
  if (!qword_1ECD11100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11100);
  }

  return result;
}

unint64_t sub_1DD7FE044()
{
  result = qword_1ECD11108;
  if (!qword_1ECD11108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11108);
  }

  return result;
}

unint64_t sub_1DD7FE098()
{
  result = qword_1ECD11110;
  if (!qword_1ECD11110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11110);
  }

  return result;
}

unint64_t sub_1DD7FE0EC()
{
  result = qword_1ECD11118;
  if (!qword_1ECD11118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11118);
  }

  return result;
}

unint64_t sub_1DD7FE140()
{
  result = qword_1ECD11120;
  if (!qword_1ECD11120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11120);
  }

  return result;
}

unint64_t sub_1DD7FE194()
{
  result = qword_1ECD11170;
  if (!qword_1ECD11170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11170);
  }

  return result;
}

unint64_t sub_1DD7FE1E8()
{
  result = qword_1ECD11178;
  if (!qword_1ECD11178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11178);
  }

  return result;
}

unint64_t sub_1DD7FE23C()
{
  result = qword_1ECD11180;
  if (!qword_1ECD11180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11180);
  }

  return result;
}

unint64_t sub_1DD7FE290()
{
  result = qword_1ECD11188;
  if (!qword_1ECD11188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11188);
  }

  return result;
}

unint64_t sub_1DD7FE2E4()
{
  result = qword_1ECD11190;
  if (!qword_1ECD11190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11190);
  }

  return result;
}

unint64_t sub_1DD7FE338()
{
  result = qword_1ECD11198;
  if (!qword_1ECD11198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11198);
  }

  return result;
}

unint64_t sub_1DD7FE38C()
{
  result = qword_1ECD111A0;
  if (!qword_1ECD111A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD111A0);
  }

  return result;
}

unint64_t sub_1DD7FE3E0()
{
  result = qword_1ECD111A8;
  if (!qword_1ECD111A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD111A8);
  }

  return result;
}

unint64_t sub_1DD7FE434()
{
  result = qword_1ECD111B8;
  if (!qword_1ECD111B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD111B8);
  }

  return result;
}

unint64_t sub_1DD7FE488()
{
  result = qword_1ECD111D0;
  if (!qword_1ECD111D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD111D0);
  }

  return result;
}

unint64_t sub_1DD7FE4DC()
{
  result = qword_1ECD111E8;
  if (!qword_1ECD111E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD111E8);
  }

  return result;
}

unint64_t sub_1DD7FE530()
{
  result = qword_1ECD11200;
  if (!qword_1ECD11200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11200);
  }

  return result;
}

unint64_t sub_1DD7FE584()
{
  result = qword_1ECD11210;
  if (!qword_1ECD11210)
  {
    sub_1DD717E88(&qword_1ECD11208, &qword_1DD889440);
    sub_1DD7FE608();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11210);
  }

  return result;
}

unint64_t sub_1DD7FE608()
{
  result = qword_1ECD11218;
  if (!qword_1ECD11218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11218);
  }

  return result;
}

unint64_t sub_1DD7FE65C()
{
  result = qword_1ECD11228;
  if (!qword_1ECD11228)
  {
    sub_1DD717E88(&qword_1ECD11208, &qword_1DD889440);
    sub_1DD7FE6E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11228);
  }

  return result;
}

unint64_t sub_1DD7FE6E0()
{
  result = qword_1ECD11230;
  if (!qword_1ECD11230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11230);
  }

  return result;
}

unint64_t sub_1DD7FE734()
{
  result = qword_1ECD11240;
  if (!qword_1ECD11240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11240);
  }

  return result;
}

unint64_t sub_1DD7FE788()
{
  result = qword_1ECD11258;
  if (!qword_1ECD11258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11258);
  }

  return result;
}

unint64_t sub_1DD7FE7DC()
{
  result = qword_1ECD11270;
  if (!qword_1ECD11270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11270);
  }

  return result;
}

unint64_t sub_1DD7FE830()
{
  result = qword_1ECD11288;
  if (!qword_1ECD11288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11288);
  }

  return result;
}

unint64_t sub_1DD7FE8C4()
{
  result = qword_1ECD112C8;
  if (!qword_1ECD112C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD112C8);
  }

  return result;
}

unint64_t sub_1DD7FE918()
{
  result = qword_1ECD112D0;
  if (!qword_1ECD112D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD112D0);
  }

  return result;
}

unint64_t sub_1DD7FE96C()
{
  result = qword_1ECD112E0;
  if (!qword_1ECD112E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD112E0);
  }

  return result;
}

unint64_t sub_1DD7FE9C0()
{
  result = qword_1ECD11310;
  if (!qword_1ECD11310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11310);
  }

  return result;
}

unint64_t sub_1DD7FEA14()
{
  result = qword_1ECD11320;
  if (!qword_1ECD11320)
  {
    sub_1DD717E88(&qword_1ECD11318, &qword_1DD8ACD80);
    sub_1DD6E1E84(&unk_1EE015E28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11320);
  }

  return result;
}

unint64_t sub_1DD7FEAC8()
{
  result = qword_1ECD11330;
  if (!qword_1ECD11330)
  {
    sub_1DD717E88(&qword_1ECD11318, &qword_1DD8ACD80);
    sub_1DD6E1E84(&unk_1EE015E20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11330);
  }

  return result;
}

uint64_t sub_1DD7FEBCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t sub_1DD7FEC14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

unint64_t sub_1DD7FEC5C()
{
  result = qword_1ECD11368;
  if (!qword_1ECD11368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11368);
  }

  return result;
}

unint64_t sub_1DD7FECB0()
{
  result = qword_1ECD11370;
  if (!qword_1ECD11370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11370);
  }

  return result;
}

unint64_t sub_1DD7FED04()
{
  result = qword_1ECD11378;
  if (!qword_1ECD11378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11378);
  }

  return result;
}

unint64_t sub_1DD7FED58()
{
  result = qword_1ECD11380;
  if (!qword_1ECD11380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11380);
  }

  return result;
}

unint64_t sub_1DD7FEDAC()
{
  result = qword_1ECD11388;
  if (!qword_1ECD11388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11388);
  }

  return result;
}

unint64_t sub_1DD7FEE00()
{
  result = qword_1ECD11390;
  if (!qword_1ECD11390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11390);
  }

  return result;
}

unint64_t sub_1DD7FEE54()
{
  result = qword_1ECD11398;
  if (!qword_1ECD11398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11398);
  }

  return result;
}

unint64_t sub_1DD7FEEA8()
{
  result = qword_1ECD113A0;
  if (!qword_1ECD113A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD113A0);
  }

  return result;
}

unint64_t sub_1DD7FEEFC()
{
  result = qword_1ECD113D0;
  if (!qword_1ECD113D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD113D0);
  }

  return result;
}

unint64_t sub_1DD7FEF50()
{
  result = qword_1ECD113D8;
  if (!qword_1ECD113D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD113D8);
  }

  return result;
}

unint64_t sub_1DD7FEFA4()
{
  result = qword_1ECD113E0;
  if (!qword_1ECD113E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD113E0);
  }

  return result;
}

unint64_t sub_1DD7FEFF8()
{
  result = qword_1ECD113F0;
  if (!qword_1ECD113F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD113F0);
  }

  return result;
}

unint64_t sub_1DD7FF04C()
{
  result = qword_1ECD11420;
  if (!qword_1ECD11420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11420);
  }

  return result;
}

unint64_t sub_1DD7FF0A0()
{
  result = qword_1ECD11428;
  if (!qword_1ECD11428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11428);
  }

  return result;
}

unint64_t sub_1DD7FF0F4()
{
  result = qword_1ECD11430;
  if (!qword_1ECD11430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11430);
  }

  return result;
}

unint64_t sub_1DD7FF148()
{
  result = qword_1ECD11438;
  if (!qword_1ECD11438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11438);
  }

  return result;
}

unint64_t sub_1DD7FF19C()
{
  result = qword_1ECD11468;
  if (!qword_1ECD11468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11468);
  }

  return result;
}

unint64_t sub_1DD7FF1F0()
{
  result = qword_1ECD11470;
  if (!qword_1ECD11470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11470);
  }

  return result;
}

unint64_t sub_1DD7FF244()
{
  result = qword_1ECD11480;
  if (!qword_1ECD11480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11480);
  }

  return result;
}

unint64_t sub_1DD7FF298()
{
  result = qword_1ECD11490;
  if (!qword_1ECD11490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11490);
  }

  return result;
}

unint64_t sub_1DD7FF2EC()
{
  result = qword_1ECD11498;
  if (!qword_1ECD11498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11498);
  }

  return result;
}

unint64_t sub_1DD7FF340()
{
  result = qword_1ECD114A8;
  if (!qword_1ECD114A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD114A8);
  }

  return result;
}

unint64_t sub_1DD7FF3CC()
{
  result = qword_1ECD114B8;
  if (!qword_1ECD114B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD114B8);
  }

  return result;
}

unint64_t sub_1DD7FF420()
{
  result = qword_1ECD114D0;
  if (!qword_1ECD114D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD114D0);
  }

  return result;
}

unint64_t sub_1DD7FF474()
{
  result = qword_1ECD114E0;
  if (!qword_1ECD114E0)
  {
    sub_1DD717E88(&qword_1ECD114D8, &qword_1DD8895D8);
    sub_1DD6E1E84(&unk_1ECD114E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD114E0);
  }

  return result;
}

unint64_t sub_1DD7FF530()
{
  result = qword_1ECD11500;
  if (!qword_1ECD11500)
  {
    sub_1DD717E88(&qword_1ECD11298, &qword_1DD889498);
    sub_1DD6E1E84(&unk_1ECD11508);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11500);
  }

  return result;
}

unint64_t sub_1DD7FF5E4()
{
  result = qword_1ECD11518;
  if (!qword_1ECD11518)
  {
    sub_1DD717E88(&qword_1ECD114D8, &qword_1DD8895D8);
    sub_1DD6E1E84(&unk_1ECD11520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11518);
  }

  return result;
}

unint64_t sub_1DD7FF6A0(uint64_t a1)
{
  result = sub_1DD6E0CF4(a1);
  if (!result)
  {
    v4 = v3;
    sub_1DD717E88(&qword_1ECD114F0, &qword_1DD8895E0);
    v4();
    sub_1DD8256C8();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1DD7FF71C()
{
  result = qword_1ECD11530;
  if (!qword_1ECD11530)
  {
    sub_1DD717E88(&qword_1ECD11298, &qword_1DD889498);
    sub_1DD6E1E84(&unk_1ECD11538);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11530);
  }

  return result;
}

unint64_t sub_1DD7FF7D0()
{
  result = qword_1ECD11548;
  if (!qword_1ECD11548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11548);
  }

  return result;
}

unint64_t sub_1DD7FF824()
{
  result = qword_1ECD11560;
  if (!qword_1ECD11560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11560);
  }

  return result;
}

unint64_t sub_1DD7FF8B8()
{
  result = qword_1ECD11590;
  if (!qword_1ECD11590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11590);
  }

  return result;
}

unint64_t sub_1DD7FF90C()
{
  result = qword_1ECD11598;
  if (!qword_1ECD11598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11598);
  }

  return result;
}

unint64_t sub_1DD7FF960()
{
  result = qword_1ECD115A8;
  if (!qword_1ECD115A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD115A8);
  }

  return result;
}

unint64_t sub_1DD7FF9B4()
{
  result = qword_1ECD115B0;
  if (!qword_1ECD115B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD115B0);
  }

  return result;
}

unint64_t sub_1DD7FFA08()
{
  result = qword_1ECD115D8;
  if (!qword_1ECD115D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD115D8);
  }

  return result;
}

unint64_t sub_1DD7FFA5C()
{
  result = qword_1ECD115E8;
  if (!qword_1ECD115E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD115E8);
  }

  return result;
}

unint64_t sub_1DD7FFAB0()
{
  result = qword_1ECD115F8;
  if (!qword_1ECD115F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD115F8);
  }

  return result;
}

unint64_t sub_1DD7FFB04()
{
  result = qword_1ECD11610;
  if (!qword_1ECD11610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11610);
  }

  return result;
}

unint64_t sub_1DD7FFB58()
{
  result = qword_1ECD11638;
  if (!qword_1ECD11638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11638);
  }

  return result;
}

unint64_t sub_1DD7FFBAC()
{
  result = qword_1ECD11640;
  if (!qword_1ECD11640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11640);
  }

  return result;
}

unint64_t sub_1DD7FFC00()
{
  result = qword_1ECD11648;
  if (!qword_1ECD11648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11648);
  }

  return result;
}

unint64_t sub_1DD7FFC54()
{
  result = qword_1ECD11650;
  if (!qword_1ECD11650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11650);
  }

  return result;
}

unint64_t sub_1DD7FFCA8()
{
  result = qword_1ECD11658;
  if (!qword_1ECD11658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11658);
  }

  return result;
}

unint64_t sub_1DD7FFCFC()
{
  result = qword_1ECD11660;
  if (!qword_1ECD11660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11660);
  }

  return result;
}

unint64_t sub_1DD7FFD50()
{
  result = qword_1ECD11668;
  if (!qword_1ECD11668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11668);
  }

  return result;
}

unint64_t sub_1DD7FFDA4()
{
  result = qword_1ECD11690;
  if (!qword_1ECD11690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11690);
  }

  return result;
}

unint64_t sub_1DD7FFDF8()
{
  result = qword_1ECD11698;
  if (!qword_1ECD11698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11698);
  }

  return result;
}

unint64_t sub_1DD7FFE4C()
{
  result = qword_1ECD116A0;
  if (!qword_1ECD116A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD116A0);
  }

  return result;
}

uint64_t sub_1DD7FFEA0()
{
  sub_1DD6E1F34();
  v2 = v1(0);
  sub_1DD6DF448(v2);
  v4 = *(v3 + 40);
  v5 = sub_1DD6DDEFC();
  v6(v5);
  return v0;
}

unint64_t sub_1DD7FFF14()
{
  result = qword_1ECD116B0;
  if (!qword_1ECD116B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD116B0);
  }

  return result;
}

unint64_t sub_1DD7FFF68()
{
  result = qword_1ECD116C0;
  if (!qword_1ECD116C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD116C0);
  }

  return result;
}

unint64_t sub_1DD7FFFBC()
{
  result = qword_1ECD116D8;
  if (!qword_1ECD116D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD116D8);
  }

  return result;
}

unint64_t sub_1DD800010()
{
  result = qword_1ECD116E8;
  if (!qword_1ECD116E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD116E8);
  }

  return result;
}

unint64_t sub_1DD800064()
{
  result = qword_1ECD116F8;
  if (!qword_1ECD116F8)
  {
    sub_1DD717E88(&qword_1ECD116F0, &qword_1DD8896C0);
    sub_1DD6E1E84(&unk_1ECD11700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD116F8);
  }

  return result;
}

unint64_t sub_1DD800120()
{
  result = qword_1ECD11710;
  if (!qword_1ECD11710)
  {
    sub_1DD717E88(&qword_1ECD116F0, &qword_1DD8896C0);
    sub_1DD6E1E84(&unk_1ECD11718);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11710);
  }

  return result;
}

unint64_t sub_1DD800264()
{
  result = qword_1ECD11740;
  if (!qword_1ECD11740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11740);
  }

  return result;
}

unint64_t sub_1DD8002B8()
{
  result = qword_1ECD11748;
  if (!qword_1ECD11748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11748);
  }

  return result;
}

unint64_t sub_1DD80030C()
{
  result = qword_1ECD11750;
  if (!qword_1ECD11750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11750);
  }

  return result;
}

unint64_t sub_1DD800360()
{
  result = qword_1ECD11778;
  if (!qword_1ECD11778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11778);
  }

  return result;
}

uint64_t sub_1DD8003E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if ((a6 & 0x30) == 0)
  {
    return sub_1DD8003F4(a1, a2, a3, a4, a5, a6);
  }

  return a1;
}

uint64_t sub_1DD8003F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 <= 0x3Fu)
  {
  }

  return result;
}

unint64_t sub_1DD80046C()
{
  result = qword_1ECD117B8;
  if (!qword_1ECD117B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD117B8);
  }

  return result;
}

unint64_t sub_1DD8004C0()
{
  result = qword_1ECD117D8;
  if (!qword_1ECD117D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD117D8);
  }

  return result;
}

unint64_t sub_1DD800514()
{
  result = qword_1ECD117F0;
  if (!qword_1ECD117F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD117F0);
  }

  return result;
}

unint64_t sub_1DD800568()
{
  result = qword_1ECD11808;
  if (!qword_1ECD11808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11808);
  }

  return result;
}

unint64_t sub_1DD8005BC()
{
  result = qword_1ECD11820;
  if (!qword_1ECD11820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11820);
  }

  return result;
}

unint64_t sub_1DD800610()
{
  result = qword_1ECD11838;
  if (!qword_1ECD11838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11838);
  }

  return result;
}

unint64_t sub_1DD800664()
{
  result = qword_1ECD11850;
  if (!qword_1ECD11850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11850);
  }

  return result;
}

unint64_t sub_1DD8006B8()
{
  result = qword_1ECD11860;
  if (!qword_1ECD11860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11860);
  }

  return result;
}

unint64_t sub_1DD80070C()
{
  result = qword_1ECD11888;
  if (!qword_1ECD11888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11888);
  }

  return result;
}

unint64_t sub_1DD800760()
{
  result = qword_1ECD11890;
  if (!qword_1ECD11890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11890);
  }

  return result;
}

unint64_t sub_1DD8007B4()
{
  result = qword_1ECD118A0;
  if (!qword_1ECD118A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD118A0);
  }

  return result;
}

unint64_t sub_1DD800808()
{
  result = qword_1ECD118B0;
  if (!qword_1ECD118B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD118B0);
  }

  return result;
}

unint64_t sub_1DD80085C()
{
  result = qword_1ECD118C8;
  if (!qword_1ECD118C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD118C8);
  }

  return result;
}

unint64_t sub_1DD8008B0()
{
  result = qword_1ECD118D8;
  if (!qword_1ECD118D8)
  {
    sub_1DD717E88(&qword_1ECD118D0, &qword_1DD8897E0);
    sub_1DD800934();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD118D8);
  }

  return result;
}

unint64_t sub_1DD800934()
{
  result = qword_1ECD118E0;
  if (!qword_1ECD118E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD118E0);
  }

  return result;
}

unint64_t sub_1DD800988()
{
  result = qword_1ECD118F0;
  if (!qword_1ECD118F0)
  {
    sub_1DD717E88(&qword_1ECD118D0, &qword_1DD8897E0);
    sub_1DD800A0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD118F0);
  }

  return result;
}

unint64_t sub_1DD800A0C()
{
  result = qword_1ECD118F8;
  if (!qword_1ECD118F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD118F8);
  }

  return result;
}

unint64_t sub_1DD800A60()
{
  result = qword_1ECD11918;
  if (!qword_1ECD11918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11918);
  }

  return result;
}

unint64_t sub_1DD800AB4()
{
  result = qword_1ECD11930;
  if (!qword_1ECD11930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11930);
  }

  return result;
}

unint64_t sub_1DD800B08()
{
  result = qword_1ECD11958;
  if (!qword_1ECD11958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11958);
  }

  return result;
}

unint64_t sub_1DD800B5C()
{
  result = qword_1ECD11960;
  if (!qword_1ECD11960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11960);
  }

  return result;
}

unint64_t sub_1DD800BB0()
{
  result = qword_1ECD11968;
  if (!qword_1ECD11968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11968);
  }

  return result;
}

unint64_t sub_1DD800C04()
{
  result = qword_1ECD11990;
  if (!qword_1ECD11990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11990);
  }

  return result;
}

unint64_t sub_1DD800C58()
{
  result = qword_1ECD11998;
  if (!qword_1ECD11998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11998);
  }

  return result;
}

unint64_t sub_1DD800CAC()
{
  result = qword_1ECD119A8;
  if (!qword_1ECD119A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD119A8);
  }

  return result;
}

uint64_t sub_1DD800D00(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3 || a3 == 2 || a3 == 1)
  {
  }

  return result;
}

uint64_t sub_1DD800D28(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3 || a3 == 2 || a3 == 1)
  {
  }

  return result;
}

unint64_t sub_1DD800D50()
{
  result = qword_1ECD119D0;
  if (!qword_1ECD119D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD119D0);
  }

  return result;
}

unint64_t sub_1DD800DA4()
{
  result = qword_1ECD119D8;
  if (!qword_1ECD119D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD119D8);
  }

  return result;
}

unint64_t sub_1DD800DF8()
{
  result = qword_1ECD119E0;
  if (!qword_1ECD119E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD119E0);
  }

  return result;
}

unint64_t sub_1DD800E4C()
{
  result = qword_1ECD119E8;
  if (!qword_1ECD119E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD119E8);
  }

  return result;
}

unint64_t sub_1DD800EA0()
{
  result = qword_1ECD119F0;
  if (!qword_1ECD119F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD119F0);
  }

  return result;
}

unint64_t sub_1DD800EF4()
{
  result = qword_1ECD119F8;
  if (!qword_1ECD119F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD119F8);
  }

  return result;
}

unint64_t sub_1DD800F48()
{
  result = qword_1ECD11A00;
  if (!qword_1ECD11A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11A00);
  }

  return result;
}

unint64_t sub_1DD800F9C()
{
  result = qword_1ECD11A28;
  if (!qword_1ECD11A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11A28);
  }

  return result;
}

unint64_t sub_1DD800FF0()
{
  result = qword_1ECD11A30;
  if (!qword_1ECD11A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11A30);
  }

  return result;
}

unint64_t sub_1DD801044()
{
  result = qword_1ECD11A38;
  if (!qword_1ECD11A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11A38);
  }

  return result;
}

unint64_t sub_1DD801098()
{
  result = qword_1ECD11A48;
  if (!qword_1ECD11A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11A48);
  }

  return result;
}

unint64_t sub_1DD8010EC()
{
  result = qword_1ECD11A60;
  if (!qword_1ECD11A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11A60);
  }

  return result;
}

unint64_t sub_1DD801140()
{
  result = qword_1ECD11A78;
  if (!qword_1ECD11A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11A78);
  }

  return result;
}

unint64_t sub_1DD801194()
{
  result = qword_1ECD11AA0;
  if (!qword_1ECD11AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11AA0);
  }

  return result;
}

unint64_t sub_1DD8011E8(uint64_t a1)
{
  result = sub_1DD6E0CF4(a1);
  if (!result)
  {
    v4 = v3;
    sub_1DD717E88(&qword_1ECD11AA8, &qword_1DD8898E8);
    v4();
    sub_1DD8256C8();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1DD801264()
{
  result = qword_1ECD11AB8;
  if (!qword_1ECD11AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11AB8);
  }

  return result;
}

unint64_t sub_1DD8012B8()
{
  result = qword_1ECD11AD0;
  if (!qword_1ECD11AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11AD0);
  }

  return result;
}

unint64_t sub_1DD80130C()
{
  result = qword_1ECD11AE0;
  if (!qword_1ECD11AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11AE0);
  }

  return result;
}

unint64_t sub_1DD801360()
{
  result = qword_1ECD11AE8;
  if (!qword_1ECD11AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11AE8);
  }

  return result;
}

unint64_t sub_1DD8013B4()
{
  result = qword_1ECD11AF8;
  if (!qword_1ECD11AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11AF8);
  }

  return result;
}

unint64_t sub_1DD80154C()
{
  result = qword_1ECD11C88;
  if (!qword_1ECD11C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11C88);
  }

  return result;
}

unint64_t sub_1DD8015A0()
{
  result = qword_1ECD11C98;
  if (!qword_1ECD11C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11C98);
  }

  return result;
}

unint64_t sub_1DD8015F4()
{
  result = qword_1ECD11CA0;
  if (!qword_1ECD11CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11CA0);
  }

  return result;
}

unint64_t sub_1DD801648()
{
  result = qword_1ECD11CA8;
  if (!qword_1ECD11CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11CA8);
  }

  return result;
}

unint64_t sub_1DD80169C()
{
  result = qword_1ECD11CB0;
  if (!qword_1ECD11CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11CB0);
  }

  return result;
}

unint64_t sub_1DD8016F0()
{
  result = qword_1ECD11CB8;
  if (!qword_1ECD11CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11CB8);
  }

  return result;
}

unint64_t sub_1DD801744()
{
  result = qword_1ECD11CC0;
  if (!qword_1ECD11CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11CC0);
  }

  return result;
}

unint64_t sub_1DD801798()
{
  result = qword_1ECD11CC8;
  if (!qword_1ECD11CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11CC8);
  }

  return result;
}

unint64_t sub_1DD8017EC()
{
  result = qword_1ECD11CD8;
  if (!qword_1ECD11CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11CD8);
  }

  return result;
}

unint64_t sub_1DD801840()
{
  result = qword_1ECD11CE8;
  if (!qword_1ECD11CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11CE8);
  }

  return result;
}

unint64_t sub_1DD801894()
{
  result = qword_1ECD11CF8;
  if (!qword_1ECD11CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11CF8);
  }

  return result;
}

unint64_t sub_1DD8018E8()
{
  result = qword_1ECD11D08;
  if (!qword_1ECD11D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11D08);
  }

  return result;
}

unint64_t sub_1DD80193C()
{
  result = qword_1ECD11D10;
  if (!qword_1ECD11D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11D10);
  }

  return result;
}

unint64_t sub_1DD801990()
{
  result = qword_1ECD11D18;
  if (!qword_1ECD11D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11D18);
  }

  return result;
}

unint64_t sub_1DD8019E4()
{
  result = qword_1ECD11D28;
  if (!qword_1ECD11D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11D28);
  }

  return result;
}

unint64_t sub_1DD801A38()
{
  result = qword_1ECD11D38;
  if (!qword_1ECD11D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11D38);
  }

  return result;
}

unint64_t sub_1DD801A8C()
{
  result = qword_1ECD11D40;
  if (!qword_1ECD11D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11D40);
  }

  return result;
}

unint64_t sub_1DD801AE0()
{
  result = qword_1ECD11D48;
  if (!qword_1ECD11D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11D48);
  }

  return result;
}

unint64_t sub_1DD801B34()
{
  result = qword_1ECD11D50;
  if (!qword_1ECD11D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11D50);
  }

  return result;
}

unint64_t sub_1DD801B88()
{
  result = qword_1ECD11D58;
  if (!qword_1ECD11D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11D58);
  }

  return result;
}

unint64_t sub_1DD801BDC()
{
  result = qword_1ECD11D60;
  if (!qword_1ECD11D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11D60);
  }

  return result;
}

unint64_t sub_1DD801C30()
{
  result = qword_1ECD11D68;
  if (!qword_1ECD11D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11D68);
  }

  return result;
}

unint64_t sub_1DD801C84()
{
  result = qword_1ECD11D70;
  if (!qword_1ECD11D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11D70);
  }

  return result;
}

unint64_t sub_1DD801CD8()
{
  result = qword_1ECD11D78;
  if (!qword_1ECD11D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11D78);
  }

  return result;
}

unint64_t sub_1DD801D2C()
{
  result = qword_1ECD11D88;
  if (!qword_1ECD11D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11D88);
  }

  return result;
}

unint64_t sub_1DD801D80()
{
  result = qword_1ECD11D98;
  if (!qword_1ECD11D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11D98);
  }

  return result;
}

unint64_t sub_1DD801DD4()
{
  result = qword_1ECD11DA8;
  if (!qword_1ECD11DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11DA8);
  }

  return result;
}

unint64_t sub_1DD801E28()
{
  result = qword_1ECD11DB8;
  if (!qword_1ECD11DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11DB8);
  }

  return result;
}

unint64_t sub_1DD801E7C()
{
  result = qword_1ECD11DC0;
  if (!qword_1ECD11DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11DC0);
  }

  return result;
}

unint64_t sub_1DD801ED0()
{
  result = qword_1ECD11DD0;
  if (!qword_1ECD11DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11DD0);
  }

  return result;
}

unint64_t sub_1DD801F24()
{
  result = qword_1ECD11DD8;
  if (!qword_1ECD11DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11DD8);
  }

  return result;
}

unint64_t sub_1DD801F78()
{
  result = qword_1ECD11DE0;
  if (!qword_1ECD11DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11DE0);
  }

  return result;
}

unint64_t sub_1DD801FCC()
{
  result = qword_1ECD11DE8;
  if (!qword_1ECD11DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11DE8);
  }

  return result;
}

unint64_t sub_1DD802020()
{
  result = qword_1ECD11DF0;
  if (!qword_1ECD11DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11DF0);
  }

  return result;
}

unint64_t sub_1DD802074()
{
  result = qword_1ECD11E00;
  if (!qword_1ECD11E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11E00);
  }

  return result;
}

unint64_t sub_1DD8020C8()
{
  result = qword_1ECD11E10;
  if (!qword_1ECD11E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11E10);
  }

  return result;
}

unint64_t sub_1DD80211C()
{
  result = qword_1ECD11E18;
  if (!qword_1ECD11E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11E18);
  }

  return result;
}

unint64_t sub_1DD802170()
{
  result = qword_1ECD11E20;
  if (!qword_1ECD11E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11E20);
  }

  return result;
}

unint64_t sub_1DD8021C4()
{
  result = qword_1ECD11E30;
  if (!qword_1ECD11E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11E30);
  }

  return result;
}

unint64_t sub_1DD802218()
{
  result = qword_1ECD11E40;
  if (!qword_1ECD11E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11E40);
  }

  return result;
}

unint64_t sub_1DD80226C()
{
  result = qword_1ECD11E48;
  if (!qword_1ECD11E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11E48);
  }

  return result;
}

unint64_t sub_1DD8022C0()
{
  result = qword_1ECD11E50;
  if (!qword_1ECD11E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11E50);
  }

  return result;
}

unint64_t sub_1DD802314()
{
  result = qword_1ECD11E58;
  if (!qword_1ECD11E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11E58);
  }

  return result;
}

unint64_t sub_1DD802368()
{
  result = qword_1ECD11E60;
  if (!qword_1ECD11E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11E60);
  }

  return result;
}

unint64_t sub_1DD8023BC()
{
  result = qword_1ECD11E68;
  if (!qword_1ECD11E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11E68);
  }

  return result;
}

unint64_t sub_1DD802410()
{
  result = qword_1ECD11E70;
  if (!qword_1ECD11E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11E70);
  }

  return result;
}

unint64_t sub_1DD802464()
{
  result = qword_1ECD11E78;
  if (!qword_1ECD11E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11E78);
  }

  return result;
}

unint64_t sub_1DD8024B8()
{
  result = qword_1ECD11E80;
  if (!qword_1ECD11E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11E80);
  }

  return result;
}

unint64_t sub_1DD80250C()
{
  result = qword_1ECD11E88;
  if (!qword_1ECD11E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11E88);
  }

  return result;
}

unint64_t sub_1DD802560()
{
  result = qword_1ECD11E90;
  if (!qword_1ECD11E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11E90);
  }

  return result;
}

unint64_t sub_1DD8025B4()
{
  result = qword_1ECD11E98;
  if (!qword_1ECD11E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11E98);
  }

  return result;
}

unint64_t sub_1DD802608()
{
  result = qword_1ECD11EA0;
  if (!qword_1ECD11EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11EA0);
  }

  return result;
}

unint64_t sub_1DD80265C()
{
  result = qword_1ECD11EA8;
  if (!qword_1ECD11EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11EA8);
  }

  return result;
}

unint64_t sub_1DD8026B0()
{
  result = qword_1ECD11EB0;
  if (!qword_1ECD11EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11EB0);
  }

  return result;
}

unint64_t sub_1DD802704()
{
  result = qword_1ECD11EB8;
  if (!qword_1ECD11EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11EB8);
  }

  return result;
}

unint64_t sub_1DD802758()
{
  result = qword_1ECD11EC0;
  if (!qword_1ECD11EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11EC0);
  }

  return result;
}

unint64_t sub_1DD8027AC()
{
  result = qword_1ECD11ED0;
  if (!qword_1ECD11ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11ED0);
  }

  return result;
}

unint64_t sub_1DD802800()
{
  result = qword_1ECD11ED8;
  if (!qword_1ECD11ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11ED8);
  }

  return result;
}

unint64_t sub_1DD802854()
{
  result = qword_1ECD11EE0;
  if (!qword_1ECD11EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11EE0);
  }

  return result;
}

unint64_t sub_1DD8028A8()
{
  result = qword_1ECD11EE8;
  if (!qword_1ECD11EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11EE8);
  }

  return result;
}

unint64_t sub_1DD8028FC()
{
  result = qword_1ECD11EF0;
  if (!qword_1ECD11EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11EF0);
  }

  return result;
}

unint64_t sub_1DD802950()
{
  result = qword_1ECD11F00;
  if (!qword_1ECD11F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11F00);
  }

  return result;
}

unint64_t sub_1DD8029A4()
{
  result = qword_1ECD12088;
  if (!qword_1ECD12088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12088);
  }

  return result;
}

unint64_t sub_1DD8029F8()
{
  result = qword_1ECD12090;
  if (!qword_1ECD12090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12090);
  }

  return result;
}

unint64_t sub_1DD802A4C()
{
  result = qword_1ECD12098;
  if (!qword_1ECD12098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12098);
  }

  return result;
}

unint64_t sub_1DD802AA0()
{
  result = qword_1ECD120D0;
  if (!qword_1ECD120D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD120D0);
  }

  return result;
}

unint64_t sub_1DD802AF4()
{
  result = qword_1ECD120D8;
  if (!qword_1ECD120D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD120D8);
  }

  return result;
}

unint64_t sub_1DD802B48()
{
  result = qword_1ECD120E0;
  if (!qword_1ECD120E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD120E0);
  }

  return result;
}

unint64_t sub_1DD802B9C()
{
  result = qword_1ECD120E8;
  if (!qword_1ECD120E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD120E8);
  }

  return result;
}

unint64_t sub_1DD802BF0()
{
  result = qword_1ECD12118;
  if (!qword_1ECD12118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12118);
  }

  return result;
}

unint64_t sub_1DD802C44()
{
  result = qword_1ECD12120;
  if (!qword_1ECD12120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12120);
  }

  return result;
}

unint64_t sub_1DD802C98()
{
  result = qword_1ECD12138;
  if (!qword_1ECD12138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12138);
  }

  return result;
}

unint64_t sub_1DD802CEC()
{
  result = qword_1ECD12150;
  if (!qword_1ECD12150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12150);
  }

  return result;
}

unint64_t sub_1DD802D40()
{
  result = qword_1ECD12158;
  if (!qword_1ECD12158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12158);
  }

  return result;
}

unint64_t sub_1DD802D94()
{
  result = qword_1ECD12160;
  if (!qword_1ECD12160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12160);
  }

  return result;
}

unint64_t sub_1DD802DE8()
{
  result = qword_1ECD12168;
  if (!qword_1ECD12168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12168);
  }

  return result;
}

unint64_t sub_1DD802E3C()
{
  result = qword_1ECD12170;
  if (!qword_1ECD12170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12170);
  }

  return result;
}

unint64_t sub_1DD802E90()
{
  result = qword_1ECD12178;
  if (!qword_1ECD12178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12178);
  }

  return result;
}

unint64_t sub_1DD802EE4()
{
  result = qword_1ECD12180;
  if (!qword_1ECD12180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12180);
  }

  return result;
}

unint64_t sub_1DD802F38()
{
  result = qword_1ECD12188;
  if (!qword_1ECD12188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12188);
  }

  return result;
}

unint64_t sub_1DD802F8C()
{
  result = qword_1ECD12198;
  if (!qword_1ECD12198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12198);
  }

  return result;
}

unint64_t sub_1DD802FE0()
{
  result = qword_1ECD121A0;
  if (!qword_1ECD121A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD121A0);
  }

  return result;
}

uint64_t sub_1DD803034(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  sub_1DD6E0540(v3);
  (*v4)(a2);
  return a2;
}

unint64_t sub_1DD8030B4()
{
  result = qword_1ECD12208;
  if (!qword_1ECD12208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12208);
  }

  return result;
}

unint64_t sub_1DD803108()
{
  result = qword_1ECD12210;
  if (!qword_1ECD12210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12210);
  }

  return result;
}

unint64_t sub_1DD80315C()
{
  result = qword_1ECD12218;
  if (!qword_1ECD12218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12218);
  }

  return result;
}

unint64_t sub_1DD8031B0()
{
  result = qword_1ECD12220;
  if (!qword_1ECD12220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12220);
  }

  return result;
}

unint64_t sub_1DD803204()
{
  result = qword_1ECD12230;
  if (!qword_1ECD12230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12230);
  }

  return result;
}

unint64_t sub_1DD803258()
{
  result = qword_1ECD12240;
  if (!qword_1ECD12240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12240);
  }

  return result;
}

unint64_t sub_1DD8032AC()
{
  result = qword_1ECD12248;
  if (!qword_1ECD12248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12248);
  }

  return result;
}

unint64_t sub_1DD803300()
{
  result = qword_1ECD12278;
  if (!qword_1ECD12278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12278);
  }

  return result;
}

unint64_t sub_1DD803354()
{
  result = qword_1ECD12290;
  if (!qword_1ECD12290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12290);
  }

  return result;
}

unint64_t sub_1DD8033A8()
{
  result = qword_1ECD122A0;
  if (!qword_1ECD122A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD122A0);
  }

  return result;
}

unint64_t sub_1DD80341C()
{
  result = qword_1ECD122D8;
  if (!qword_1ECD122D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD122D8);
  }

  return result;
}

unint64_t sub_1DD803470()
{
  result = qword_1ECD122E0;
  if (!qword_1ECD122E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD122E0);
  }

  return result;
}

unint64_t sub_1DD8034C4()
{
  result = qword_1ECD122E8;
  if (!qword_1ECD122E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD122E8);
  }

  return result;
}

unint64_t sub_1DD803518()
{
  result = qword_1ECD12330;
  if (!qword_1ECD12330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12330);
  }

  return result;
}

unint64_t sub_1DD80356C()
{
  result = qword_1ECD12338;
  if (!qword_1ECD12338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12338);
  }

  return result;
}

unint64_t sub_1DD8035C0()
{
  result = qword_1ECD12340;
  if (!qword_1ECD12340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12340);
  }

  return result;
}

unint64_t sub_1DD803614()
{
  result = qword_1ECD12348;
  if (!qword_1ECD12348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12348);
  }

  return result;
}

unint64_t sub_1DD803668()
{
  result = qword_1ECD12350;
  if (!qword_1ECD12350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12350);
  }

  return result;
}

unint64_t sub_1DD8036BC()
{
  result = qword_1ECD123D0;
  if (!qword_1ECD123D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD123D0);
  }

  return result;
}

unint64_t sub_1DD803710()
{
  result = qword_1ECD123D8;
  if (!qword_1ECD123D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD123D8);
  }

  return result;
}

unint64_t sub_1DD803764()
{
  result = qword_1ECD123E0;
  if (!qword_1ECD123E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD123E0);
  }

  return result;
}

unint64_t sub_1DD8037B8()
{
  result = qword_1ECD123E8;
  if (!qword_1ECD123E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD123E8);
  }

  return result;
}

unint64_t sub_1DD80380C()
{
  result = qword_1ECD123F0;
  if (!qword_1ECD123F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD123F0);
  }

  return result;
}

unint64_t sub_1DD803860()
{
  result = qword_1ECD123F8;
  if (!qword_1ECD123F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD123F8);
  }

  return result;
}

unint64_t sub_1DD8038B4()
{
  result = qword_1ECD12400;
  if (!qword_1ECD12400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12400);
  }

  return result;
}

unint64_t sub_1DD803908()
{
  result = qword_1ECD12408;
  if (!qword_1ECD12408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12408);
  }

  return result;
}

unint64_t sub_1DD80395C()
{
  result = qword_1ECD12410;
  if (!qword_1ECD12410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12410);
  }

  return result;
}

unint64_t sub_1DD8039B0()
{
  result = qword_1ECD12418;
  if (!qword_1ECD12418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12418);
  }

  return result;
}

unint64_t sub_1DD803A04()
{
  result = qword_1ECD12420;
  if (!qword_1ECD12420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12420);
  }

  return result;
}

unint64_t sub_1DD803A58()
{
  result = qword_1ECD12470;
  if (!qword_1ECD12470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12470);
  }

  return result;
}

unint64_t sub_1DD803AAC()
{
  result = qword_1ECD12478;
  if (!qword_1ECD12478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12478);
  }

  return result;
}

unint64_t sub_1DD803B00()
{
  result = qword_1ECD12488;
  if (!qword_1ECD12488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12488);
  }

  return result;
}

unint64_t sub_1DD803B54()
{
  result = qword_1ECD124A0;
  if (!qword_1ECD124A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD124A0);
  }

  return result;
}

unint64_t sub_1DD803BA8()
{
  result = qword_1ECD124B0;
  if (!qword_1ECD124B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD124B0);
  }

  return result;
}

unint64_t sub_1DD803BFC()
{
  result = qword_1ECD124C0;
  if (!qword_1ECD124C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD124C0);
  }

  return result;
}

unint64_t sub_1DD803C50()
{
  result = qword_1ECD124D8;
  if (!qword_1ECD124D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD124D8);
  }

  return result;
}

unint64_t sub_1DD803CA4()
{
  result = qword_1ECD124F0;
  if (!qword_1ECD124F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD124F0);
  }

  return result;
}

uint64_t sub_1DD803D18()
{
  sub_1DD6E1F34();
  v5 = sub_1DD8278A8(v1, v2, v3, v4);
  sub_1DD6DF448(v5);
  v7 = *(v6 + 24);
  v8 = sub_1DD6DDEFC();
  v9(v8);
  return v0;
}

unint64_t sub_1DD803D64()
{
  result = qword_1ECD12530;
  if (!qword_1ECD12530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12530);
  }

  return result;
}

unint64_t sub_1DD803DB8()
{
  result = qword_1ECD12540;
  if (!qword_1ECD12540)
  {
    sub_1DD717E88(&qword_1ECD12538, &qword_1DD889E70);
    sub_1DD6E1E84(&unk_1ECD12548);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12540);
  }

  return result;
}

unint64_t sub_1DD803E6C()
{
  result = qword_1ECD12558;
  if (!qword_1ECD12558)
  {
    sub_1DD717E88(&qword_1ECD12538, &qword_1DD889E70);
    sub_1DD6E1E84(&unk_1ECD12560);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12558);
  }

  return result;
}

unint64_t sub_1DD803F20()
{
  result = qword_1ECD12570;
  if (!qword_1ECD12570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12570);
  }

  return result;
}

unint64_t sub_1DD803F74()
{
  result = qword_1ECD12588;
  if (!qword_1ECD12588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12588);
  }

  return result;
}

unint64_t sub_1DD803FC8()
{
  result = qword_1ECD125A0;
  if (!qword_1ECD125A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD125A0);
  }

  return result;
}

uint64_t sub_1DD80401C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if ((a6 & 0x30) == 0)
  {
    return sub_1DD80402C(a1, a2, a3, a4, a5, a6);
  }

  return a1;
}

uint64_t sub_1DD80402C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 <= 0x3Fu)
  {
  }

  return result;
}

uint64_t sub_1DD804044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 != 1)
  {
    if (a6)
    {
      return result;
    }
  }
}

uint64_t sub_1DD8040A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 != 1)
  {
    if (a6)
    {
      return result;
    }
  }
}

unint64_t sub_1DD804104()
{
  result = qword_1ECD12638;
  if (!qword_1ECD12638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12638);
  }

  return result;
}

unint64_t sub_1DD804158()
{
  result = qword_1ECD12640;
  if (!qword_1ECD12640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12640);
  }

  return result;
}

unint64_t sub_1DD8041AC()
{
  result = qword_1ECD12648;
  if (!qword_1ECD12648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12648);
  }

  return result;
}

unint64_t sub_1DD804200()
{
  result = qword_1ECD12650;
  if (!qword_1ECD12650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12650);
  }

  return result;
}

unint64_t sub_1DD804254()
{
  result = qword_1ECD12658;
  if (!qword_1ECD12658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12658);
  }

  return result;
}

unint64_t sub_1DD8042A8()
{
  result = qword_1ECD12660;
  if (!qword_1ECD12660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12660);
  }

  return result;
}

unint64_t sub_1DD8042FC()
{
  result = qword_1ECD12668;
  if (!qword_1ECD12668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12668);
  }

  return result;
}

unint64_t sub_1DD804350()
{
  result = qword_1ECD12670;
  if (!qword_1ECD12670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12670);
  }

  return result;
}

unint64_t sub_1DD8043A4()
{
  result = qword_1ECD12680;
  if (!qword_1ECD12680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12680);
  }

  return result;
}

unint64_t sub_1DD8043F8()
{
  result = qword_1ECD12690;
  if (!qword_1ECD12690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12690);
  }

  return result;
}

unint64_t sub_1DD80444C()
{
  result = qword_1ECD12698;
  if (!qword_1ECD12698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12698);
  }

  return result;
}

unint64_t sub_1DD8044A0()
{
  result = qword_1ECD126A0;
  if (!qword_1ECD126A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD126A0);
  }

  return result;
}

unint64_t sub_1DD8044F4()
{
  result = qword_1ECD126A8;
  if (!qword_1ECD126A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD126A8);
  }

  return result;
}

unint64_t sub_1DD804548()
{
  result = qword_1ECD126B0;
  if (!qword_1ECD126B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD126B0);
  }

  return result;
}

unint64_t sub_1DD80459C()
{
  result = qword_1ECD126B8;
  if (!qword_1ECD126B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD126B8);
  }

  return result;
}

unint64_t sub_1DD8045F0()
{
  result = qword_1ECD126C0;
  if (!qword_1ECD126C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD126C0);
  }

  return result;
}

unint64_t sub_1DD804644()
{
  result = qword_1ECD126D0;
  if (!qword_1ECD126D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD126D0);
  }

  return result;
}

unint64_t sub_1DD804698()
{
  result = qword_1ECD12740;
  if (!qword_1ECD12740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12740);
  }

  return result;
}

unint64_t sub_1DD8046EC()
{
  result = qword_1ECD12748;
  if (!qword_1ECD12748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12748);
  }

  return result;
}

unint64_t sub_1DD804740()
{
  result = qword_1ECD12750;
  if (!qword_1ECD12750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12750);
  }

  return result;
}

unint64_t sub_1DD804794()
{
  result = qword_1ECD12768;
  if (!qword_1ECD12768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12768);
  }

  return result;
}

unint64_t sub_1DD8047E8()
{
  result = qword_1ECD127E0;
  if (!qword_1ECD127E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD127E0);
  }

  return result;
}

unint64_t sub_1DD80483C()
{
  result = qword_1ECD127E8;
  if (!qword_1ECD127E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD127E8);
  }

  return result;
}

unint64_t sub_1DD804890()
{
  result = qword_1ECD127F0;
  if (!qword_1ECD127F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD127F0);
  }

  return result;
}

unint64_t sub_1DD8048E4()
{
  result = qword_1ECD127F8;
  if (!qword_1ECD127F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD127F8);
  }

  return result;
}

unint64_t sub_1DD804938()
{
  result = qword_1ECD12800;
  if (!qword_1ECD12800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12800);
  }

  return result;
}

unint64_t sub_1DD80498C()
{
  result = qword_1ECD12808;
  if (!qword_1ECD12808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12808);
  }

  return result;
}

unint64_t sub_1DD8049E0()
{
  result = qword_1ECD12810;
  if (!qword_1ECD12810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12810);
  }

  return result;
}

unint64_t sub_1DD804A34()
{
  result = qword_1ECD12818;
  if (!qword_1ECD12818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12818);
  }

  return result;
}

unint64_t sub_1DD804A88()
{
  result = qword_1ECD12820;
  if (!qword_1ECD12820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12820);
  }

  return result;
}

unint64_t sub_1DD804ADC()
{
  result = qword_1ECD12828;
  if (!qword_1ECD12828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12828);
  }

  return result;
}

unint64_t sub_1DD804B30()
{
  result = qword_1ECD12830;
  if (!qword_1ECD12830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12830);
  }

  return result;
}

unint64_t sub_1DD804B84()
{
  result = qword_1ECD128B8;
  if (!qword_1ECD128B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD128B8);
  }

  return result;
}

unint64_t sub_1DD804BD8()
{
  result = qword_1ECD128D0;
  if (!qword_1ECD128D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD128D0);
  }

  return result;
}

uint64_t sub_1DD804C4C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

unint64_t sub_1DD804C8C()
{
  result = qword_1ECD128F0;
  if (!qword_1ECD128F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD128F0);
  }

  return result;
}

unint64_t sub_1DD804CE0(uint64_t a1)
{
  result = sub_1DD6E0CF4(a1);
  if (!result)
  {
    sub_1DD717E88(&qword_1ECD128E0, &qword_1DD88A0A8);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1DD804D2C()
{
  result = qword_1ECD12928;
  if (!qword_1ECD12928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12928);
  }

  return result;
}

unint64_t sub_1DD804D80()
{
  result = qword_1ECD12930;
  if (!qword_1ECD12930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12930);
  }

  return result;
}

unint64_t sub_1DD804DD4()
{
  result = qword_1ECD12960;
  if (!qword_1ECD12960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12960);
  }

  return result;
}

unint64_t sub_1DD804E28()
{
  result = qword_1ECD12998;
  if (!qword_1ECD12998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12998);
  }

  return result;
}

unint64_t sub_1DD804E7C()
{
  result = qword_1ECD129D8;
  if (!qword_1ECD129D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD129D8);
  }

  return result;
}

unint64_t sub_1DD804ED0()
{
  result = qword_1ECD129E0;
  if (!qword_1ECD129E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD129E0);
  }

  return result;
}

unint64_t sub_1DD804F24()
{
  result = qword_1ECD129E8;
  if (!qword_1ECD129E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD129E8);
  }

  return result;
}

unint64_t sub_1DD804F78()
{
  result = qword_1ECD129F0;
  if (!qword_1ECD129F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD129F0);
  }

  return result;
}

unint64_t sub_1DD804FCC()
{
  result = qword_1ECD129F8;
  if (!qword_1ECD129F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD129F8);
  }

  return result;
}

unint64_t sub_1DD805020()
{
  result = qword_1ECD12A00;
  if (!qword_1ECD12A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12A00);
  }

  return result;
}

unint64_t sub_1DD805074()
{
  result = qword_1ECD12A08;
  if (!qword_1ECD12A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12A08);
  }

  return result;
}

unint64_t sub_1DD8050C8()
{
  result = qword_1ECD12A10;
  if (!qword_1ECD12A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12A10);
  }

  return result;
}

unint64_t sub_1DD80511C()
{
  result = qword_1ECD12A40;
  if (!qword_1ECD12A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12A40);
  }

  return result;
}

unint64_t sub_1DD805170()
{
  result = qword_1ECD12A48;
  if (!qword_1ECD12A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12A48);
  }

  return result;
}

unint64_t sub_1DD8051C4()
{
  result = qword_1ECD12A50;
  if (!qword_1ECD12A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12A50);
  }

  return result;
}

unint64_t sub_1DD805218()
{
  result = qword_1ECD12A60;
  if (!qword_1ECD12A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12A60);
  }

  return result;
}

unint64_t sub_1DD80526C()
{
  result = qword_1ECD12A88;
  if (!qword_1ECD12A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12A88);
  }

  return result;
}

unint64_t sub_1DD8052C0()
{
  result = qword_1ECD12A90;
  if (!qword_1ECD12A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12A90);
  }

  return result;
}

unint64_t sub_1DD805314()
{
  result = qword_1ECD12A98;
  if (!qword_1ECD12A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12A98);
  }

  return result;
}

unint64_t sub_1DD805368()
{
  result = qword_1ECD12AC0;
  if (!qword_1ECD12AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12AC0);
  }

  return result;
}

unint64_t sub_1DD8053BC()
{
  result = qword_1ECD12AC8;
  if (!qword_1ECD12AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12AC8);
  }

  return result;
}

unint64_t sub_1DD805410()
{
  result = qword_1ECD12AD8;
  if (!qword_1ECD12AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12AD8);
  }

  return result;
}

unint64_t sub_1DD805464()
{
  result = qword_1ECD12AE8;
  if (!qword_1ECD12AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12AE8);
  }

  return result;
}

unint64_t sub_1DD8054B8()
{
  result = qword_1ECD12B40;
  if (!qword_1ECD12B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12B40);
  }

  return result;
}

unint64_t sub_1DD80550C()
{
  result = qword_1ECD12B48;
  if (!qword_1ECD12B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12B48);
  }

  return result;
}

unint64_t sub_1DD805560()
{
  result = qword_1ECD12B50;
  if (!qword_1ECD12B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12B50);
  }

  return result;
}

unint64_t sub_1DD8055B4()
{
  result = qword_1ECD12B58;
  if (!qword_1ECD12B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12B58);
  }

  return result;
}

unint64_t sub_1DD805608()
{
  result = qword_1ECD12B60;
  if (!qword_1ECD12B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12B60);
  }

  return result;
}

unint64_t sub_1DD80565C()
{
  result = qword_1ECD12B68;
  if (!qword_1ECD12B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12B68);
  }

  return result;
}

unint64_t sub_1DD8056B0()
{
  result = qword_1ECD12B70;
  if (!qword_1ECD12B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12B70);
  }

  return result;
}

unint64_t sub_1DD805704()
{
  result = qword_1ECD12B78;
  if (!qword_1ECD12B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12B78);
  }

  return result;
}

unint64_t sub_1DD805758()
{
  result = qword_1ECD12B80;
  if (!qword_1ECD12B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12B80);
  }

  return result;
}

unint64_t sub_1DD8057AC()
{
  result = qword_1ECD12B88;
  if (!qword_1ECD12B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12B88);
  }

  return result;
}

unint64_t sub_1DD805800()
{
  result = qword_1ECD12B90;
  if (!qword_1ECD12B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12B90);
  }

  return result;
}

unint64_t sub_1DD805854()
{
  result = qword_1ECD12B98;
  if (!qword_1ECD12B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12B98);
  }

  return result;
}

unint64_t sub_1DD8058A8()
{
  result = qword_1ECD12BE8;
  if (!qword_1ECD12BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12BE8);
  }

  return result;
}

unint64_t sub_1DD8058FC()
{
  result = qword_1ECD12BF0;
  if (!qword_1ECD12BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12BF0);
  }

  return result;
}

unint64_t sub_1DD805950()
{
  result = qword_1ECD12BF8;
  if (!qword_1ECD12BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12BF8);
  }

  return result;
}

unint64_t sub_1DD8059A4()
{
  result = qword_1ECD12C20;
  if (!qword_1ECD12C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12C20);
  }

  return result;
}

unint64_t sub_1DD8059F8()
{
  result = qword_1ECD12C28;
  if (!qword_1ECD12C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12C28);
  }

  return result;
}

unint64_t sub_1DD805A4C()
{
  result = qword_1ECD12C30;
  if (!qword_1ECD12C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12C30);
  }

  return result;
}

unint64_t sub_1DD805AA0()
{
  result = qword_1ECD12C38;
  if (!qword_1ECD12C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12C38);
  }

  return result;
}

unint64_t sub_1DD805AF4()
{
  result = qword_1ECD12CA8;
  if (!qword_1ECD12CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12CA8);
  }

  return result;
}

unint64_t sub_1DD805B48()
{
  result = qword_1ECD12CB0;
  if (!qword_1ECD12CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12CB0);
  }

  return result;
}

unint64_t sub_1DD805B9C()
{
  result = qword_1ECD12CB8;
  if (!qword_1ECD12CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12CB8);
  }

  return result;
}

unint64_t sub_1DD805BF0()
{
  result = qword_1ECD12CC0;
  if (!qword_1ECD12CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD12CC0);
  }

  return result;
}