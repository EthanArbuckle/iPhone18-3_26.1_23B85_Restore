uint64_t ArchivedViewModel.viewData.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = sub_1DD6DDEFC();
  sub_1DD710E74(v3, v4);
  return sub_1DD6DDEFC();
}

uint64_t ArchivedViewModel.appBundleId.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return sub_1DD6DDEFC();
}

uint64_t ArchivedViewModel.appDisplayName.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return sub_1DD6DDEFC();
}

uint64_t ArchivedViewModel.init(viewData:appBundleId:appDisplayName:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t sub_1DD78D650(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6174614477656976 && a2 == 0xE800000000000000;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C646E7542707061 && a2 == 0xEB00000000644965;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6C70736944707061 && a2 == 0xEE00656D614E7961)
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

uint64_t sub_1DD78D76C(char a1)
{
  if (!a1)
  {
    return 0x6174614477656976;
  }

  if (a1 == 1)
  {
    return 0x6C646E7542707061;
  }

  return 0x6C70736944707061;
}

uint64_t sub_1DD78D7E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD78D650(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD78D808(uint64_t a1)
{
  v2 = sub_1DD78FF34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD78D844(uint64_t a1)
{
  v2 = sub_1DD78FF34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ArchivedViewModel.encode(to:)()
{
  sub_1DD6DED2C();
  v4 = v3;
  v5 = sub_1DD710A9C(&qword_1ECD105B8, &qword_1DD884FA8);
  sub_1DD6DDEAC(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1DD6DEA6C();
  v11 = *v0;
  v12 = v0[1];
  sub_1DD6EDF7C();
  v13 = v4[4];
  sub_1DD6DEA7C(v4, v4[3]);
  sub_1DD710E74(v11, v12);
  sub_1DD78FF34();
  sub_1DD875BB0();
  sub_1DD712070();
  sub_1DD792A28();
  sub_1DD8759D0();
  sub_1DD6E6658(v11, v12);
  if (!v1)
  {
    sub_1DD6FAC6C(1);
    sub_1DD7013D8();
    sub_1DD875970();
    sub_1DD6FAC6C(2);
    sub_1DD7013D8();
    sub_1DD875920();
  }

  (*(v7 + 8))(v2, v5);
  sub_1DD792AF8();
  sub_1DD6E0C78();
}

void ArchivedViewModel.init(from:)()
{
  sub_1DD6DED2C();
  v3 = v2;
  v5 = v4;
  v6 = sub_1DD710A9C(&qword_1ECD105C8, &qword_1DD884FB0);
  sub_1DD6DDEAC(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1DD6F4428();
  v12 = v3[4];
  sub_1DD6DEA7C(v3, v3[3]);
  sub_1DD78FF34();
  sub_1DD875B90();
  if (v0)
  {
    sub_1DD6E1EC8(v3);
  }

  else
  {
    sub_1DD717D38();
    sub_1DD8758D0();
    sub_1DD7929B4(1);
    v18 = sub_1DD875870();
    v19 = v13;
    sub_1DD7929B4(2);
    v14 = sub_1DD875820();
    v16 = v15;
    v17 = v14;
    (*(v8 + 8))(v1, v6);
    *v5 = v20;
    v5[1] = v21;
    v5[2] = v18;
    v5[3] = v19;
    v5[4] = v17;
    v5[5] = v16;
    sub_1DD710E74(v20, v21);

    sub_1DD6E1EC8(v3);
    sub_1DD6E6658(v20, v21);
  }

  sub_1DD6E0C78();
}

uint64_t SiriSDSViewModel.sdsData.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = sub_1DD6DDEFC();
  sub_1DD710E74(v3, v4);
  return sub_1DD6DDEFC();
}

uint64_t SiriSDSViewModel.sdsBundleId.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return sub_1DD6DDEFC();
}

uint64_t SiriSDSViewModel.snippetData.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = sub_1DD6DDEFC();
  sub_1DD76D0F4(v3, v4);
  return sub_1DD6DDEFC();
}

uint64_t SiriSDSViewModel.snippetBundleId.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return sub_1DD6DDEFC();
}

uint64_t SiriSDSViewModel.init(sdsData:sdsBundleId:snippetData:snippetBundleId:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  return result;
}

uint64_t sub_1DD78DD48(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61746144736473 && a2 == 0xE700000000000000;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C646E7542736473 && a2 == 0xEB00000000644965;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x4474657070696E73 && a2 == 0xEB00000000617461;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x4274657070696E73 && a2 == 0xEF6449656C646E75)
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

uint64_t sub_1DD78DEB0(char a1)
{
  result = 0x61746144736473;
  switch(a1)
  {
    case 1:
      result = 0x6C646E7542736473;
      break;
    case 2:
      result = 0x4474657070696E73;
      break;
    case 3:
      result = 0x4274657070696E73;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD78DF58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD78DD48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD78DF80(uint64_t a1)
{
  v2 = sub_1DD78FF88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD78DFBC(uint64_t a1)
{
  v2 = sub_1DD78FF88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SiriSDSViewModel.encode(to:)()
{
  sub_1DD6DED2C();
  v4 = v3;
  v5 = sub_1DD710A9C(&qword_1ECD105D0, &qword_1DD884FB8);
  sub_1DD6DDEAC(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1DD6DEA6C();
  v11 = *v0;
  v12 = v0[1];
  sub_1DD6EDF7C();
  v15 = v0[7];
  v16 = v0[6];
  v13 = v4[4];
  sub_1DD6DEA7C(v4, v4[3]);
  sub_1DD710E74(v11, v12);
  sub_1DD78FF88();
  sub_1DD875BB0();
  sub_1DD712070();
  sub_1DD792A28();
  sub_1DD8759D0();
  sub_1DD6E6658(v11, v12);
  if (!v1)
  {
    sub_1DD6FAC6C(1);
    sub_1DD7013D8();
    sub_1DD875970();
    sub_1DD6EFF88();
    sub_1DD76D0F4(v14, v17);
    sub_1DD792A28();
    sub_1DD875960();
    sub_1DD70104C(v18, v17);
    sub_1DD6FAC6C(3);
    sub_1DD7013D8();
    sub_1DD875920();
  }

  (*(v7 + 8))(v2, v5);
  sub_1DD792AF8();
  sub_1DD6E0C78();
}

void SiriSDSViewModel.init(from:)()
{
  sub_1DD6DED2C();
  v2 = v1;
  v4 = v3;
  v5 = sub_1DD710A9C(&qword_1ECD105E0, &qword_1DD884FC0);
  sub_1DD6DDEAC(v5);
  v7 = *(v6 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v8);
  v9 = v2[4];
  sub_1DD6DEA7C(v2, v2[3]);
  sub_1DD78FF88();
  sub_1DD875B90();
  if (v0)
  {
    sub_1DD6E1EC8(v2);
  }

  else
  {
    sub_1DD717D38();
    sub_1DD792960();
    sub_1DD8758D0();
    v20 = v24[0];
    LOBYTE(v24[0]) = 1;
    v10 = sub_1DD875870();
    *(&v19 + 1) = v11;
    *&v19 = v10;
    LOBYTE(v21[0]) = 2;
    sub_1DD792960();
    sub_1DD875860();
    v18 = v24[0];
    sub_1DD7928CC();
    v12 = sub_1DD875820();
    v14 = v13;
    v15 = sub_1DD79279C();
    v16(v15);
    v21[0] = v20;
    v21[1] = v19;
    v22 = v18;
    *&v23 = v12;
    *(&v23 + 1) = v14;
    *v4 = v20;
    v4[1] = v19;
    v17 = v23;
    v4[2] = v22;
    v4[3] = v17;
    sub_1DD78FFDC(v21, v24);
    sub_1DD6E1EC8(v2);
    v24[0] = v20;
    v24[1] = v19;
    v24[2] = v18;
    v25 = v12;
    v26 = v14;
    sub_1DD787BD8(v24);
  }

  sub_1DD6E0C78();
}

uint64_t sub_1DD78E4E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int *a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v10 = *a3;
  v11 = *(a3 + 1);
  v12 = *(a3 + 2);
  v13 = sub_1DD874820();
  sub_1DD6DE1C4(v13);
  v15 = *(v14 + 32);
  v15(a6, a1, v13);
  v16 = a5(0);
  result = (v15)(a6 + v16[5], a2, v13);
  v18 = a6 + v16[6];
  *v18 = v10;
  *(v18 + 8) = v11;
  *(v18 + 16) = v12;
  *(a6 + v16[7]) = a4;
  return result;
}

uint64_t RGToolDisambiguationModel.systemResponseEventId.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for RGToolDisambiguationModel(v0) + 20);
  return sub_1DD6DDF9C();
}

uint64_t RGToolDisambiguationModel.statementID.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for RGToolDisambiguationModel(v0) + 24);
  return sub_1DD6DDF9C();
}

uint64_t sub_1DD78E6DC(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 28));
}

uint64_t sub_1DD78E730()
{
  v2 = sub_1DD6DE290();
  v4 = *(v3(v2) + 28);
  v5 = *(v1 + v4);

  *(v1 + v4) = v0;
  return result;
}

uint64_t RGToolDisambiguationModel.itemDisplayRepresentations.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for RGToolDisambiguationModel(v0) + 28);
  return sub_1DD6DDF9C();
}

uint64_t sub_1DD78E7B0(uint64_t a1)
{
  v2 = sub_1DD790014();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD78E7EC(uint64_t a1)
{
  v2 = sub_1DD790014();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void RGToolDisambiguationModel.encode(to:)()
{
  sub_1DD6DED2C();
  sub_1DD6FE1BC();
  v1 = sub_1DD710A9C(&qword_1ECD105E8, &qword_1DD884FC8);
  sub_1DD6DDEAC(v1);
  v3 = *(v2 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD6DEA6C();
  sub_1DD6DEAD0();
  sub_1DD790014();
  sub_1DD6E1808();
  sub_1DD792AE0();
  sub_1DD6E14C4();
  sub_1DD787A94(v5, v6);
  sub_1DD792A40();
  sub_1DD6E21DC();
  sub_1DD8759D0();
  if (!v0)
  {
    v7 = type metadata accessor for RGToolDisambiguationModel(0);
    sub_1DD6E88D8(v7);
    sub_1DD6E21DC();
    sub_1DD8759D0();
    sub_1DD6E7174();
    sub_1DD792AC8();
    sub_1DD6E4988();
    sub_1DD8759D0();

    sub_1DD702A4C();
    sub_1DD710A9C(&qword_1ECD10548, &qword_1DD884F60);
    sub_1DD6E0AFC();
    sub_1DD78FD38(v8, v9);
    sub_1DD6F314C();
    sub_1DD8759D0();
  }

  v10 = sub_1DD6E0FB0();
  v11(v10);
  sub_1DD6E429C();
  sub_1DD6E0C78();
}

void RGToolDisambiguationModel.init(from:)()
{
  sub_1DD6DED2C();
  v4 = sub_1DD792908(v3);
  v5 = sub_1DD6DDEAC(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6DE21C();
  sub_1DD6EE8A8();
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6F9BD8(v9, v10, v11, v12, v13, v14, v15, v16, v34);
  v35 = sub_1DD710A9C(&qword_1ECD105F8, &qword_1DD884FD0);
  sub_1DD6DDEAC(v35);
  v18 = *(v17 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v19);
  sub_1DD6DEBA0();
  v20 = type metadata accessor for RGToolDisambiguationModel(0);
  v21 = sub_1DD6DE1C4(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1DD6DE4A8();
  sub_1DD6F4428();
  v24 = v2[4];
  sub_1DD6DEA7C(v2, v2[3]);
  sub_1DD790014();
  sub_1DD6E113C();
  if (v0)
  {
    sub_1DD6E1EC8(v2);
  }

  else
  {
    sub_1DD6E14C4();
    sub_1DD787A94(v25, v26);
    sub_1DD6DEBFC();
    v27 = sub_1DD6FBE50();
    v28(v27);
    sub_1DD6E5DF8();
    v29 = sub_1DD6ED198();
    v1(v29);
    sub_1DD6EFF88();
    sub_1DD705D68();
    sub_1DD6E6130();
    sub_1DD6E61E0();
    sub_1DD710A9C(&qword_1ECD10548, &qword_1DD884F60);
    sub_1DD7928CC();
    sub_1DD6ED678();
    sub_1DD78FD38(v30, v31);
    sub_1DD6EED74();
    v32 = sub_1DD79276C();
    v33(v32);
    sub_1DD7929C4();
    sub_1DD6E9684();
    sub_1DD6E1EC8(v2);
    sub_1DD787ADC();
  }

  sub_1DD6E429C();
  sub_1DD6E0C78();
}

uint64_t RGControlModel.init(controlMetadata:)()
{
  v0 = sub_1DD875020();
  sub_1DD6DE1C4(v0);
  v2 = *(v1 + 32);
  v3 = sub_1DD6E21D0();

  return v4(v3);
}

uint64_t sub_1DD78EDC4(uint64_t a1)
{
  v2 = sub_1DD790068();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD78EE00(uint64_t a1)
{
  v2 = sub_1DD790068();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RGControlModel.encode(to:)()
{
  v1 = sub_1DD710A9C(&qword_1ECD10600, &qword_1DD884FD8);
  sub_1DD6DDEAC(v1);
  v3 = v2;
  v5 = *(v4 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD6DEBA0();
  sub_1DD6DEAD0();
  sub_1DD790068();
  sub_1DD875BB0();
  sub_1DD875020();
  sub_1DD6FF9AC();
  sub_1DD787A94(v7, v8);
  sub_1DD8759D0();
  return (*(v3 + 8))(v0, v1);
}

void RGControlModel.init(from:)()
{
  sub_1DD6DED2C();
  v2 = v1;
  v31 = v3;
  v4 = sub_1DD875020();
  v5 = sub_1DD6DDEAC(v4);
  v29 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6DDEE8();
  v32 = v9;
  v10 = sub_1DD710A9C(&qword_1ECD10610, &qword_1DD884FE0);
  sub_1DD6DDEAC(v10);
  v30 = v11;
  v13 = *(v12 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v28 - v15;
  v17 = type metadata accessor for RGControlModel(0);
  v18 = sub_1DD6DEA10(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1DD6DE4A8();
  v23 = v22 - v21;
  v24 = v2[4];
  sub_1DD6DEA7C(v2, v2[3]);
  sub_1DD790068();
  sub_1DD875B90();
  if (!v0)
  {
    v25 = v29;
    sub_1DD6FF9AC();
    sub_1DD787A94(v26, v27);
    sub_1DD8758D0();
    (*(v30 + 8))(v16, v10);
    (*(v25 + 32))(v23, v32, v4);
    sub_1DD7879E8();
  }

  sub_1DD6E1EC8(v2);
  sub_1DD6E0C78();
}

uint64_t sub_1DD78F220()
{
  v0 = sub_1DD6FC430();
  v2 = v1(v0);
  sub_1DD6DE1C4(v2);
  v4 = *(v3 + 16);
  v5 = sub_1DD6DDEFC();

  return v6(v5);
}

uint64_t _s16IntelligenceFlow26SessionClientDebuggerEventV15EnableInjectionV2id10Foundation4UUIDVvs_0()
{
  sub_1DD6DE290();
  v0 = sub_1DD874820();
  sub_1DD6DE1C4(v0);
  v2 = *(v1 + 40);
  v3 = sub_1DD6E21D0();

  return v4(v3);
}

uint64_t RGSuccessModel.systemResponseEventId.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for RGSuccessModel(v0) + 20);
  return sub_1DD6DDF9C();
}

uint64_t RGSuccessModel.statementID.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for RGSuccessModel(v0) + 24);
  return sub_1DD6DDF9C();
}

uint64_t RGSuccessModel.itemDisplayRepresentations.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for RGSuccessModel(v0) + 28);
  return sub_1DD6DDF9C();
}

uint64_t sub_1DD78F448()
{
  sub_1DD6E1F34();
  v3 = v1 == sub_1DD792A4C() && v0 == v2;
  if (v3 || (sub_1DD79297C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v5 = v1 == 0xD000000000000015 && 0x80000001DD8B6020 == v0;
    if (v5 || (sub_1DD79297C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = v1 == sub_1DD6FA400() && v0 == v6;
      if (v7 || (sub_1DD79297C() & 1) != 0)
      {

        return 2;
      }

      else if (v1 == 0xD00000000000001ALL && 0x80000001DD8B6040 == v0)
      {

        return 3;
      }

      else
      {
        v9 = sub_1DD79297C();

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

uint64_t sub_1DD78F550(uint64_t a1)
{
  v2 = sub_1DD7900BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD78F58C(uint64_t a1)
{
  v2 = sub_1DD7900BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void RGSuccessModel.encode(to:)()
{
  sub_1DD6DED2C();
  sub_1DD6FE1BC();
  v1 = sub_1DD710A9C(&qword_1ECD10618, &qword_1DD884FE8);
  sub_1DD6DDEAC(v1);
  v3 = *(v2 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD6DEA6C();
  sub_1DD6DEAD0();
  sub_1DD7900BC();
  sub_1DD6E1808();
  sub_1DD792AE0();
  sub_1DD6E14C4();
  sub_1DD787A94(v5, v6);
  sub_1DD792A40();
  sub_1DD6E21DC();
  sub_1DD8759D0();
  if (!v0)
  {
    v7 = type metadata accessor for RGSuccessModel(0);
    sub_1DD6E88D8(v7);
    sub_1DD6E21DC();
    sub_1DD8759D0();
    sub_1DD6E7174();
    sub_1DD792AC8();
    sub_1DD6E4988();
    sub_1DD8759D0();

    sub_1DD702A4C();
    sub_1DD710A9C(&qword_1ECD10548, &qword_1DD884F60);
    sub_1DD6E0AFC();
    sub_1DD78FD38(v8, v9);
    sub_1DD6F314C();
    sub_1DD8759D0();
  }

  v10 = sub_1DD6E0FB0();
  v11(v10);
  sub_1DD6E429C();
  sub_1DD6E0C78();
}

void RGSuccessModel.init(from:)()
{
  sub_1DD6DED2C();
  v4 = sub_1DD792908(v3);
  v5 = sub_1DD6DDEAC(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6DE21C();
  sub_1DD6EE8A8();
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6F9BD8(v9, v10, v11, v12, v13, v14, v15, v16, v34);
  v35 = sub_1DD710A9C(&qword_1ECD10628, &qword_1DD884FF0);
  sub_1DD6DDEAC(v35);
  v18 = *(v17 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v19);
  sub_1DD6DEBA0();
  v20 = type metadata accessor for RGSuccessModel(0);
  v21 = sub_1DD6DE1C4(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1DD6DE4A8();
  sub_1DD6F4428();
  v24 = v2[4];
  sub_1DD6DEA7C(v2, v2[3]);
  sub_1DD7900BC();
  sub_1DD6E113C();
  if (v0)
  {
    sub_1DD6E1EC8(v2);
  }

  else
  {
    sub_1DD6E14C4();
    sub_1DD787A94(v25, v26);
    sub_1DD6DEBFC();
    v27 = sub_1DD6FBE50();
    v28(v27);
    sub_1DD6E5DF8();
    v29 = sub_1DD6ED198();
    v1(v29);
    sub_1DD6EFF88();
    sub_1DD705D68();
    sub_1DD6E6130();
    sub_1DD6E61E0();
    sub_1DD710A9C(&qword_1ECD10548, &qword_1DD884F60);
    sub_1DD7928CC();
    sub_1DD6ED678();
    sub_1DD78FD38(v30, v31);
    sub_1DD6EED74();
    v32 = sub_1DD79276C();
    v33(v32);
    sub_1DD7929C4();
    sub_1DD6E9684();
    sub_1DD6E1EC8(v2);
    sub_1DD787ADC();
  }

  sub_1DD6E429C();
  sub_1DD6E0C78();
}

uint64_t sub_1DD78FAEC()
{
  v1 = *(*(sub_1DD710A9C(&qword_1ECD10578, &qword_1DD884F78) - 8) + 80);
  v2 = *(v0 + 16);
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

unint64_t sub_1DD78FB70()
{
  result = qword_1ECD104C0;
  if (!qword_1ECD104C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD104C0);
  }

  return result;
}

unint64_t sub_1DD78FBC4()
{
  result = qword_1ECD104C8;
  if (!qword_1ECD104C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD104C8);
  }

  return result;
}

unint64_t sub_1DD78FC38()
{
  result = qword_1ECD10508;
  if (!qword_1ECD10508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10508);
  }

  return result;
}

uint64_t sub_1DD78FC8C()
{
  sub_1DD6E1F34();
  v2 = v1(0);
  sub_1DD6DE1C4(v2);
  v4 = *(v3 + 16);
  v5 = sub_1DD6DDEFC();
  v6(v5);
  return v0;
}

unint64_t sub_1DD78FCE4()
{
  result = qword_1ECD10540;
  if (!qword_1ECD10540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10540);
  }

  return result;
}

uint64_t sub_1DD78FD38(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1DD717E88(&qword_1ECD10548, &qword_1DD884F60);
    sub_1DD6E08E8();
    sub_1DD787A94(a2, v5);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DD78FDC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD710A9C(&qword_1ECD0E540, &qword_1DD878B10);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD78FE34()
{
  sub_1DD6E1F34();
  v3 = sub_1DD710A9C(v1, v2);
  sub_1DD6DE1C4(v3);
  v5 = *(v4 + 32);
  v6 = sub_1DD6DDEFC();
  v7(v6);
  return v0;
}

unint64_t sub_1DD78FE8C()
{
  result = qword_1ECD10590;
  if (!qword_1ECD10590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10590);
  }

  return result;
}

unint64_t sub_1DD78FEE0()
{
  result = qword_1ECD105A8;
  if (!qword_1ECD105A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD105A8);
  }

  return result;
}

unint64_t sub_1DD78FF34()
{
  result = qword_1ECD105C0;
  if (!qword_1ECD105C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD105C0);
  }

  return result;
}

unint64_t sub_1DD78FF88()
{
  result = qword_1ECD105D8;
  if (!qword_1ECD105D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD105D8);
  }

  return result;
}

unint64_t sub_1DD790014()
{
  result = qword_1ECD105F0;
  if (!qword_1ECD105F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD105F0);
  }

  return result;
}

unint64_t sub_1DD790068()
{
  result = qword_1ECD10608;
  if (!qword_1ECD10608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10608);
  }

  return result;
}

unint64_t sub_1DD7900BC()
{
  result = qword_1ECD10620;
  if (!qword_1ECD10620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10620);
  }

  return result;
}

uint64_t sub_1DD7901A0()
{
  result = type metadata accessor for RGDisambiguationModel(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for RGActionConfirmationModel(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for RGParameterConfirmationModel(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for RGToolDisambiguationModel(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for RGControlModel(319);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for RGSuccessModel(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_1DD7902B0()
{
  sub_1DD8746A0();
  if (v0 <= 0x3F)
  {
    sub_1DD7903FC(319, &qword_1EE019FC8, MEMORY[0x1E6968E10], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1DD7903FC(319, &qword_1EE018D48, MEMORY[0x1E69DB398], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1DD76F160(319, &qword_1EE018D28);
        if (v3 <= 0x3F)
        {
          sub_1DD76F160(319, &qword_1EE019FC0);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1DD7903FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1DD7904B0()
{
  sub_1DD7903FC(319, &qword_1EE019FB8, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1DD874820();
    if (v1 <= 0x3F)
    {
      sub_1DD8746A0();
      if (v2 <= 0x3F)
      {
        sub_1DD7905EC();
        if (v3 <= 0x3F)
        {
          sub_1DD7903FC(319, qword_1EE019110, type metadata accessor for RGDisplayRepresentation, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1DD7905EC()
{
  if (!qword_1EE018D08)
  {
    sub_1DD717E88(&qword_1ECD10548, &qword_1DD884F60);
    v0 = sub_1DD8755C0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE018D08);
    }
  }
}

void sub_1DD790678()
{
  sub_1DD7903FC(319, &qword_1EE019FB8, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1DD874820();
    if (v1 <= 0x3F)
    {
      sub_1DD8746A0();
      if (v2 <= 0x3F)
      {
        sub_1DD7905EC();
        if (v3 <= 0x3F)
        {
          sub_1DD7903FC(319, qword_1EE019110, type metadata accessor for RGDisplayRepresentation, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1DD7907AC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_1DD7907EC(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

__n128 sub_1DD790848(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1DD79085C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_1DD79089C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DD790960(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DD6DE290();
  v6 = sub_1DD874820();
  v7 = sub_1DD6E0A68(v6);
  if (*(v8 + 84) == a2)
  {

    return sub_1DD6E5ED0(v3, a2, v7);
  }

  else
  {
    v10 = *(v3 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1DD790A18()
{
  sub_1DD6FA73C();
  v4 = sub_1DD874820();
  result = sub_1DD6E0A68(v4);
  if (*(v6 + 84) == v3)
  {
    sub_1DD6FF79C();
    sub_1DD6DE310();

    return sub_1DD6E5E68(v7, v8, v9, v10);
  }

  else
  {
    *(v1 + *(v2 + 28)) = (v0 - 1);
  }

  return result;
}

void sub_1DD790AA8()
{
  sub_1DD874820();
  if (v0 <= 0x3F)
  {
    sub_1DD7903FC(319, &qword_1EE018D10, type metadata accessor for RGDisplayRepresentation, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

_BYTE *storeEnumTagSinglePayload for ArchivedViewModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RGParameterConfirmationModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for RGActionConfirmationModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1DD790E40(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RGDisplayRepresentation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for RGPluginModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for RGPluginModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1DD7911EC(_BYTE *result, int a2, int a3)
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

unint64_t sub_1DD79129C()
{
  result = qword_1ECD10630;
  if (!qword_1ECD10630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10630);
  }

  return result;
}

unint64_t sub_1DD7912F4()
{
  result = qword_1ECD10638;
  if (!qword_1ECD10638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10638);
  }

  return result;
}

unint64_t sub_1DD79134C()
{
  result = qword_1ECD10640;
  if (!qword_1ECD10640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10640);
  }

  return result;
}

unint64_t sub_1DD7913A4()
{
  result = qword_1ECD10648;
  if (!qword_1ECD10648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10648);
  }

  return result;
}

unint64_t sub_1DD7913FC()
{
  result = qword_1ECD10650;
  if (!qword_1ECD10650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10650);
  }

  return result;
}

unint64_t sub_1DD791454()
{
  result = qword_1ECD10658;
  if (!qword_1ECD10658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10658);
  }

  return result;
}

unint64_t sub_1DD7914AC()
{
  result = qword_1ECD10660;
  if (!qword_1ECD10660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10660);
  }

  return result;
}

unint64_t sub_1DD791504()
{
  result = qword_1ECD10668;
  if (!qword_1ECD10668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10668);
  }

  return result;
}

unint64_t sub_1DD79155C()
{
  result = qword_1ECD10670;
  if (!qword_1ECD10670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10670);
  }

  return result;
}

unint64_t sub_1DD7915B4()
{
  result = qword_1ECD10678;
  if (!qword_1ECD10678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10678);
  }

  return result;
}

unint64_t sub_1DD79160C()
{
  result = qword_1ECD10680;
  if (!qword_1ECD10680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10680);
  }

  return result;
}

unint64_t sub_1DD791664()
{
  result = qword_1ECD10688;
  if (!qword_1ECD10688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10688);
  }

  return result;
}

unint64_t sub_1DD7916BC()
{
  result = qword_1ECD10690;
  if (!qword_1ECD10690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10690);
  }

  return result;
}

unint64_t sub_1DD791714()
{
  result = qword_1ECD10698;
  if (!qword_1ECD10698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10698);
  }

  return result;
}

unint64_t sub_1DD79176C()
{
  result = qword_1ECD106A0;
  if (!qword_1ECD106A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD106A0);
  }

  return result;
}

unint64_t sub_1DD7917C4()
{
  result = qword_1ECD106A8;
  if (!qword_1ECD106A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD106A8);
  }

  return result;
}

unint64_t sub_1DD79181C()
{
  result = qword_1ECD106B0;
  if (!qword_1ECD106B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD106B0);
  }

  return result;
}

unint64_t sub_1DD791874()
{
  result = qword_1ECD106B8;
  if (!qword_1ECD106B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD106B8);
  }

  return result;
}

unint64_t sub_1DD7918CC()
{
  result = qword_1ECD106C0;
  if (!qword_1ECD106C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD106C0);
  }

  return result;
}

unint64_t sub_1DD791924()
{
  result = qword_1ECD106C8;
  if (!qword_1ECD106C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD106C8);
  }

  return result;
}

unint64_t sub_1DD79197C()
{
  result = qword_1ECD106D0;
  if (!qword_1ECD106D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD106D0);
  }

  return result;
}

unint64_t sub_1DD7919D4()
{
  result = qword_1ECD106D8;
  if (!qword_1ECD106D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD106D8);
  }

  return result;
}

unint64_t sub_1DD791A2C()
{
  result = qword_1ECD106E0;
  if (!qword_1ECD106E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD106E0);
  }

  return result;
}

unint64_t sub_1DD791A84()
{
  result = qword_1ECD106E8;
  if (!qword_1ECD106E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD106E8);
  }

  return result;
}

unint64_t sub_1DD791ADC()
{
  result = qword_1ECD106F0;
  if (!qword_1ECD106F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD106F0);
  }

  return result;
}

unint64_t sub_1DD791B34()
{
  result = qword_1ECD106F8;
  if (!qword_1ECD106F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD106F8);
  }

  return result;
}

unint64_t sub_1DD791B8C()
{
  result = qword_1ECD10700;
  if (!qword_1ECD10700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10700);
  }

  return result;
}

unint64_t sub_1DD791BE4()
{
  result = qword_1ECD10708;
  if (!qword_1ECD10708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10708);
  }

  return result;
}

unint64_t sub_1DD791C3C()
{
  result = qword_1ECD10710;
  if (!qword_1ECD10710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10710);
  }

  return result;
}

unint64_t sub_1DD791C94()
{
  result = qword_1ECD10718;
  if (!qword_1ECD10718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10718);
  }

  return result;
}

unint64_t sub_1DD791CEC()
{
  result = qword_1ECD10720;
  if (!qword_1ECD10720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10720);
  }

  return result;
}

unint64_t sub_1DD791D44()
{
  result = qword_1ECD10728;
  if (!qword_1ECD10728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10728);
  }

  return result;
}

unint64_t sub_1DD791D9C()
{
  result = qword_1ECD10730;
  if (!qword_1ECD10730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10730);
  }

  return result;
}

unint64_t sub_1DD791DF4()
{
  result = qword_1ECD10738;
  if (!qword_1ECD10738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10738);
  }

  return result;
}

unint64_t sub_1DD791E4C()
{
  result = qword_1ECD10740;
  if (!qword_1ECD10740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10740);
  }

  return result;
}

unint64_t sub_1DD791EA4()
{
  result = qword_1ECD10748;
  if (!qword_1ECD10748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10748);
  }

  return result;
}

unint64_t sub_1DD791EFC()
{
  result = qword_1ECD10750;
  if (!qword_1ECD10750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10750);
  }

  return result;
}

unint64_t sub_1DD791F54()
{
  result = qword_1ECD10758;
  if (!qword_1ECD10758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10758);
  }

  return result;
}

unint64_t sub_1DD791FAC()
{
  result = qword_1ECD10760;
  if (!qword_1ECD10760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10760);
  }

  return result;
}

unint64_t sub_1DD792004()
{
  result = qword_1ECD10768;
  if (!qword_1ECD10768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10768);
  }

  return result;
}

unint64_t sub_1DD79205C()
{
  result = qword_1ECD10770;
  if (!qword_1ECD10770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10770);
  }

  return result;
}

unint64_t sub_1DD7920B4()
{
  result = qword_1ECD10778;
  if (!qword_1ECD10778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10778);
  }

  return result;
}

unint64_t sub_1DD79210C()
{
  result = qword_1ECD10780;
  if (!qword_1ECD10780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10780);
  }

  return result;
}

unint64_t sub_1DD792164()
{
  result = qword_1ECD10788;
  if (!qword_1ECD10788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10788);
  }

  return result;
}

unint64_t sub_1DD7921BC()
{
  result = qword_1ECD10790;
  if (!qword_1ECD10790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10790);
  }

  return result;
}

unint64_t sub_1DD792214()
{
  result = qword_1ECD10798;
  if (!qword_1ECD10798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10798);
  }

  return result;
}

unint64_t sub_1DD79226C()
{
  result = qword_1ECD107A0;
  if (!qword_1ECD107A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD107A0);
  }

  return result;
}

unint64_t sub_1DD7922C4()
{
  result = qword_1ECD107A8;
  if (!qword_1ECD107A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD107A8);
  }

  return result;
}

unint64_t sub_1DD79231C()
{
  result = qword_1ECD107B0;
  if (!qword_1ECD107B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD107B0);
  }

  return result;
}

unint64_t sub_1DD792374()
{
  result = qword_1ECD107B8;
  if (!qword_1ECD107B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD107B8);
  }

  return result;
}

unint64_t sub_1DD7923CC()
{
  result = qword_1ECD107C0;
  if (!qword_1ECD107C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD107C0);
  }

  return result;
}

unint64_t sub_1DD792424()
{
  result = qword_1ECD107C8;
  if (!qword_1ECD107C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD107C8);
  }

  return result;
}

unint64_t sub_1DD79247C()
{
  result = qword_1ECD107D0;
  if (!qword_1ECD107D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD107D0);
  }

  return result;
}

unint64_t sub_1DD7924D4()
{
  result = qword_1ECD107D8;
  if (!qword_1ECD107D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD107D8);
  }

  return result;
}

unint64_t sub_1DD79252C()
{
  result = qword_1ECD107E0;
  if (!qword_1ECD107E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD107E0);
  }

  return result;
}

unint64_t sub_1DD792584()
{
  result = qword_1ECD107E8;
  if (!qword_1ECD107E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD107E8);
  }

  return result;
}

unint64_t sub_1DD7925DC()
{
  result = qword_1ECD107F0;
  if (!qword_1ECD107F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD107F0);
  }

  return result;
}

unint64_t sub_1DD792634()
{
  result = qword_1ECD107F8;
  if (!qword_1ECD107F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD107F8);
  }

  return result;
}

unint64_t sub_1DD79268C()
{
  result = qword_1ECD10800;
  if (!qword_1ECD10800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10800);
  }

  return result;
}

unint64_t sub_1DD7926E4()
{
  result = qword_1ECD10808;
  if (!qword_1ECD10808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10808);
  }

  return result;
}

uint64_t sub_1DD79277C@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  v1 = a1 - 1;
  if (v1 < 0)
  {
    v1 = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1DD792818()
{
  v2 = *(v1 - 176);
  v3 = *(*(v1 - 184) + 8);
  return v0;
}

uint64_t sub_1DD79283C()
{
  v2 = *(v0 - 112);
  v3 = *(v0 - 168);

  return sub_1DD8758D0();
}

uint64_t sub_1DD792874()
{
  *(v0 - 104) = 4;
  v2 = *(v0 - 192);
  v3 = *(v0 - 176);
  v4 = *(v0 - 168);

  return sub_1DD8758D0();
}

uint64_t sub_1DD7928D8()
{
  v2 = *(v0 - 200);

  return sub_1DD875860();
}

uint64_t sub_1DD792908@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 112) = v1;
  *(v2 - 160) = a1;

  return sub_1DD874820();
}

uint64_t sub_1DD792934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v11 - 160) = &a9 - v9;
  v13 = *v10;
  v15 = *(v10 + 1);
  v14 = *(v10 + 2);

  return sub_1DD874820();
}

uint64_t sub_1DD79297C()
{

  return sub_1DD875A30();
}

uint64_t sub_1DD792998()
{
  result = v0;
  v3 = *(v1 - 216);
  return result;
}

uint64_t sub_1DD7929E4()
{
  v1 = *(*(v0 - 144) + 8);
  v3 = *(v0 - 128);
  return *(v0 - 120);
}

uint64_t sub_1DD7929F4()
{
  *(v1 - 168) = v0;
  v3 = *(v1 - 144);

  return sub_1DD875B90();
}

void sub_1DD792A70()
{

  sub_1DD784984();
}

uint64_t sub_1DD792A94()
{
  v3 = *(v1 + *(v0 + 24) + 16);
}

uint64_t sub_1DD792AB0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);

  return sub_1DD7879E8();
}

uint64_t sub_1DD792AC8()
{
}

uint64_t sub_1DD792AE0()
{
  *(v0 - 104) = 0;

  return sub_1DD874820();
}

uint64_t sub_1DD792B38()
{
  v3 = *(v0 + 28);
  *(v1 - 104) = 3;

  return sub_1DD8746A0();
}

uint64_t sub_1DD792B58()
{

  return sub_1DD719110();
}

uint64_t SessionClientConfiguration.clientActions.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

IntelligenceFlow::SessionClientConfiguration __swiftcall SessionClientConfiguration.init()()
{
  *v0 = MEMORY[0x1E69E7CC0];
  *(v0 + 8) = 0;
  return result;
}

IntelligenceFlow::SessionClientConfiguration __swiftcall SessionClientConfiguration.init(clientActions:)(IntelligenceFlow::SessionClientConfiguration clientActions)
{
  *v1 = clientActions.clientActions._rawValue;
  *(v1 + 8) = 0;
  return clientActions;
}

uint64_t static SessionClientConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  return sub_1DD714D64(*a1, *a2) & ~(v2 ^ v3) & 1;
}

uint64_t sub_1DD792C58(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6341746E65696C63 && a2 == 0xED0000736E6F6974;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001DD8B60E0 == a2)
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

uint64_t sub_1DD792D30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD792C58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD792D58(uint64_t a1)
{
  v2 = sub_1DD6DF84C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD792D94(uint64_t a1)
{
  v2 = sub_1DD6DF84C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1DD792DF8()
{
  result = qword_1ECD10828;
  if (!qword_1ECD10828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10828);
  }

  return result;
}

unint64_t sub_1DD792E50()
{
  result = qword_1EE016DC0;
  if (!qword_1EE016DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE016DC0);
  }

  return result;
}

unint64_t sub_1DD792EA8()
{
  result = qword_1EE016DC8;
  if (!qword_1EE016DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE016DC8);
  }

  return result;
}

uint64_t SessionConfiguration.clientEffects.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t SessionConfiguration.clientActions.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t SessionConfiguration.initialLocaleSettings.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for SessionConfiguration(v0) + 32);
  return sub_1DD6DDF9C();
}

uint64_t SessionConfiguration.participantSettings.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for SessionConfiguration(0);
  *(v1 + *(result + 36)) = v2;
  return result;
}

uint64_t SessionConfiguration.participantSettings.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for SessionConfiguration(v0) + 36);
  return sub_1DD6DDF9C();
}

uint64_t SessionConfiguration.debuggerSettings.setter(int *a1)
{
  v2 = *a1;
  result = type metadata accessor for SessionConfiguration(0);
  *(v1 + *(result + 40)) = v2;
  return result;
}

uint64_t SessionConfiguration.debuggerSettings.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for SessionConfiguration(v0) + 40);
  return sub_1DD6DDF9C();
}

uint64_t SessionConfiguration.identityChain.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for SessionConfiguration(v0) + 44);
  return sub_1DD6DDF9C();
}

uint64_t SessionConfiguration.originatingDevice.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 4);
  v5 = v1 + *(type metadata accessor for SessionConfiguration(0) + 48);
  v6 = *(v5 + 8);

  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
  return result;
}

uint64_t SessionConfiguration.originatingDevice.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for SessionConfiguration(v0) + 48);
  return sub_1DD6DDF9C();
}

uint64_t SessionConfiguration.genderSettings.getter()
{
  v2 = sub_1DD6E0A5C();
  result = type metadata accessor for SessionConfiguration(v2);
  *v0 = *(v1 + *(result + 52));
  return result;
}

uint64_t SessionConfiguration.genderSettings.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for SessionConfiguration(v0) + 52);
  return sub_1DD6DDF9C();
}

uint64_t SessionConfiguration.shouldExecuteEventsWithUnfinishedActions.setter(char a1)
{
  result = type metadata accessor for SessionConfiguration(0);
  *(v1 + *(result + 56)) = a1;
  return result;
}

uint64_t SessionConfiguration.shouldExecuteEventsWithUnfinishedActions.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for SessionConfiguration(v0) + 56);
  return sub_1DD6DDF9C();
}

uint64_t SessionConfiguration.crossAPIAssociationKey.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for SessionConfiguration(v0) + 60);
  return sub_1DD6DDF9C();
}

uint64_t sub_1DD79331C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5472656E6E616C70 && a2 == 0xEB00000000657079;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6645746E65696C63 && a2 == 0xED00007374636566;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6341746E65696C63 && a2 == 0xED0000736E6F6974;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x436D726177657270 && a2 == 0xEE00747865746E6FLL;
        if (v8 || (sub_1DD875A30() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000015 && 0x80000001DD8B6100 == a2;
          if (v9 || (sub_1DD875A30() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000013 && 0x80000001DD8B6120 == a2;
            if (v10 || (sub_1DD875A30() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000010 && 0x80000001DD8B6140 == a2;
              if (v11 || (sub_1DD875A30() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x797469746E656469 && a2 == 0xED00006E69616843;
                if (v12 || (sub_1DD875A30() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000011 && 0x80000001DD8B6160 == a2;
                  if (v13 || (sub_1DD875A30() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x65537265646E6567 && a2 == 0xEE0073676E697474;
                    if (v14 || (sub_1DD875A30() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000028 && 0x80000001DD8B6180 == a2;
                      if (v15 || (sub_1DD875A30() & 1) != 0)
                      {

                        return 10;
                      }

                      else if (a1 == 0xD000000000000016 && 0x80000001DD8B61B0 == a2)
                      {

                        return 11;
                      }

                      else
                      {
                        v17 = sub_1DD875A30();

                        if (v17)
                        {
                          return 11;
                        }

                        else
                        {
                          return 12;
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

uint64_t sub_1DD7936EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD79331C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD793714@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DD7936E4();
  *a1 = result;
  return result;
}

uint64_t sub_1DD79373C(uint64_t a1)
{
  v2 = sub_1DD6E80A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD793778(uint64_t a1)
{
  v2 = sub_1DD6E80A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1DD7937B4()
{
  result = qword_1EE0157F8;
  if (!qword_1EE0157F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0157F8);
  }

  return result;
}

unint64_t sub_1DD793808()
{
  result = qword_1EE0157F0;
  if (!qword_1EE0157F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0157F0);
  }

  return result;
}

uint64_t SessionConfiguration.init(plannerType:initialLocaleSettings:participantSettings:identityChain:)@<X0>(unsigned __int8 *a1@<X0>, char *a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = *a2;
  v9 = *a3;
  sub_1DD6F3168();
  *(a4 + v4) = v8;
  v10 = *(a4 + v5);

  *(a4 + v5) = v9;
  return result;
}

void SessionConfiguration.init(plannerType:useCuratedToolbox:clientEffects:)(char *a1@<X0>, uint64_t a2@<X8>)
{

  v4 = *a1;
  *a2 = 5;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 2;
  v5 = type metadata accessor for SessionConfiguration(0);
  v6 = v5[8];
  sub_1DD6ED288();
  sub_1DD6E0C90();
  sub_1DD6E5E68(v7, v8, v9, v10);
  *(a2 + v5[9]) = 2;
  *(a2 + v5[10]) = 512;
  *(a2 + v5[11]) = 0;
  sub_1DD6E3880(a2 + v5[12]);
  *(a2 + v5[13]) = 4;
  *(a2 + v5[14]) = 2;
  v11 = (a2 + v5[15]);
  *v11 = 0;
  v11[1] = 0;
  *a2 = v4;
}

void SessionConfiguration.init(plannerType:clientActions:)(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  sub_1DD6E72F8(a1, a3);
  *(v3 + 8) = 0;
  *(v3 + 24) = 2;
  v5 = type metadata accessor for SessionConfiguration(0);
  v6 = v5[8];
  sub_1DD6ED288();
  sub_1DD6E0C90();
  sub_1DD6E5E68(v7, v8, v9, v10);
  *(v3 + v5[9]) = 2;
  *(v3 + v5[10]) = 512;
  *(v3 + v5[11]) = 0;
  sub_1DD6E3880(v3 + v5[12]);
  *(v3 + v5[13]) = 4;
  *(v3 + v5[14]) = 2;
  sub_1DD7013E8();
  *(v3 + 16) = a2;
}

void SessionConfiguration.init(plannerType:clientActions:prewarmContext:)(unsigned __int8 *a1)
{
  sub_1DD6FAB2C(a1);
  *v3 = 5;
  *(v3 + 8) = 0;
  v4 = *(type metadata accessor for SessionConfiguration(0) + 32);
  sub_1DD6ED288();
  sub_1DD6E0C90();
  sub_1DD6E5E68(v5, v6, v7, v8);
  sub_1DD6DE034();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
}

void SessionConfiguration.init(plannerType:prewarmContext:)(unsigned __int8 *a1@<X0>, char a2@<W1>, _BYTE *a3@<X8>)
{
  sub_1DD6E72F8(a1, a3);
  v5 = type metadata accessor for SessionConfiguration(0);
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  v6 = v5[8];
  sub_1DD6ED288();
  sub_1DD6E0C90();
  sub_1DD6E5E68(v7, v8, v9, v10);
  *(v3 + v5[9]) = 2;
  *(v3 + v5[10]) = 512;
  *(v3 + v5[11]) = 0;
  sub_1DD6E3880(v3 + v5[12]);
  *(v3 + v5[13]) = 4;
  *(v3 + v5[14]) = v11;
  sub_1DD7013E8();
  *(v3 + 24) = a2;
}

uint64_t SessionConfiguration.init(plannerType:initialLocaleSettings:prewarmContext:)(unsigned __int8 *a1)
{
  sub_1DD6FAB2C(a1);
  *v3 = 5;
  v4 = type metadata accessor for SessionConfiguration(0);
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  v5 = *(v4 + 32);
  sub_1DD6ED288();
  sub_1DD6E0C90();
  sub_1DD6E5E68(v6, v7, v8, v9);
  sub_1DD6DE034();
  result = sub_1DD6E7470(v2, v3 + v5);
  *(v3 + 24) = v1;
  return result;
}

uint64_t SessionConfiguration.init(plannerType:initialLocaleSettings:prewarmContext:participantSettings:)(unsigned __int8 *a1)
{
  sub_1DD6FAB2C(a1);
  v6 = *v5;
  *v3 = 5;
  v7 = type metadata accessor for SessionConfiguration(0);
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  v8 = v7[8];
  sub_1DD6ED288();
  sub_1DD6E0C90();
  sub_1DD6E5E68(v9, v10, v11, v12);
  v13 = v7[9];
  *(v3 + v13) = 2;
  *(v3 + v7[10]) = 512;
  *(v3 + v7[11]) = 0;
  v14 = v3 + v7[12];
  *v14 = 0;
  *(v14 + 8) = 0;
  *(v14 + 16) = 0;
  *(v3 + v7[13]) = 4;
  *(v3 + v7[14]) = 2;
  v15 = (v3 + v7[15]);
  *v15 = 0;
  v15[1] = 0;
  *v3 = v4;
  result = sub_1DD6E7470(v2, v3 + v8);
  *(v3 + 24) = v1;
  *(v3 + v13) = v6;
  return result;
}

uint64_t SessionConfiguration.init(plannerType:initialLocaleSettings:prewarmContext:participantSettings:identityChain:)@<X0>(unsigned __int8 *a1@<X0>, char *a2@<X3>, uint64_t *a3@<X4>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = *a2;
  v9 = *a3;
  sub_1DD6F3168();
  *(a4 + v4) = v8;
  v10 = *(a4 + v5);

  *(a4 + v5) = v9;
  return result;
}

uint64_t sub_1DD793D24(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x647261646E617473 && a2 == 0xE800000000000000;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4F72656E6E616C70 && a2 == 0xEB00000000796C6ELL)
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

uint64_t sub_1DD793DF0(char a1)
{
  if (a1)
  {
    return 0x4F72656E6E616C70;
  }

  else
  {
    return 0x647261646E617473;
  }
}

uint64_t sub_1DD793E38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD793D24(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD793E60(uint64_t a1)
{
  v2 = sub_1DD794218();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD793E9C(uint64_t a1)
{
  v2 = sub_1DD794218();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD793ED8(uint64_t a1)
{
  v2 = sub_1DD79426C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD793F14(uint64_t a1)
{
  v2 = sub_1DD79426C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD793F50(uint64_t a1)
{
  v2 = sub_1DD7942C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD793F8C(uint64_t a1)
{
  v2 = sub_1DD7942C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SessionConfiguration.ParticipantSettings.SemanticPreference.encode(to:)()
{
  sub_1DD6DED2C();
  v3 = v2;
  v4 = sub_1DD710A9C(&qword_1ECD10860, &qword_1DD886FB8);
  v5 = sub_1DD6DDEAC(v4);
  v34 = v6;
  v35 = v5;
  v8 = *(v7 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD6E0C6C();
  v33 = v10;
  v11 = sub_1DD710A9C(&qword_1ECD10868, &qword_1DD886FC0);
  v12 = sub_1DD6DDEAC(v11);
  v31 = v13;
  v32 = v12;
  v15 = *(v14 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v31 - v17;
  v19 = sub_1DD710A9C(&qword_1ECD10870, &qword_1DD886FC8);
  sub_1DD6DDEAC(v19);
  v21 = v20;
  v23 = *(v22 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v24);
  sub_1DD6E7258();
  v25 = *v0;
  v26 = v3[4];
  sub_1DD6DEA7C(v3, v3[3]);
  sub_1DD794218();
  sub_1DD875BB0();
  v27 = (v21 + 8);
  if (v25)
  {
    sub_1DD6FF8F4();
    sub_1DD79426C();
    sub_1DD6E710C();
    sub_1DD875910();
    v28 = sub_1DD6DED98();
  }

  else
  {
    sub_1DD7942C0();
    sub_1DD6E710C();
    sub_1DD875910();
    v29 = v32;
    v30 = *(v31 + 8);
    v28 = v18;
  }

  v30(v28, v29);
  (*v27)(v1, v19);
  sub_1DD6E0C78();
}

unint64_t sub_1DD794218()
{
  result = qword_1ECD10878;
  if (!qword_1ECD10878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10878);
  }

  return result;
}

unint64_t sub_1DD79426C()
{
  result = qword_1ECD10880;
  if (!qword_1ECD10880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10880);
  }

  return result;
}

unint64_t sub_1DD7942C0()
{
  result = qword_1ECD10888;
  if (!qword_1ECD10888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10888);
  }

  return result;
}

uint64_t SessionConfiguration.ParticipantSettings.SemanticPreference.hashValue.getter()
{
  v1 = *v0;
  sub_1DD6DEDA4();
  sub_1DD6FA750();
  return sub_1DD875B60();
}

void SessionConfiguration.ParticipantSettings.SemanticPreference.init(from:)()
{
  sub_1DD6DED2C();
  v55 = v0;
  v4 = v3;
  v52 = v5;
  v54 = sub_1DD710A9C(&qword_1ECD10890, &qword_1DD886FD0);
  sub_1DD6DDEAC(v54);
  v51 = v6;
  v8 = *(v7 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v47 - v10;
  v12 = sub_1DD710A9C(&qword_1ECD10898, &qword_1DD886FD8);
  sub_1DD6DDEAC(v12);
  v50 = v13;
  v15 = *(v14 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1DD6DDFE4();
  v17 = sub_1DD710A9C(&qword_1ECD108A0, &unk_1DD886FE0);
  sub_1DD6DDEAC(v17);
  v53 = v18;
  v20 = *(v19 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v21);
  sub_1DD6DEBA0();
  v22 = v4[4];
  sub_1DD6DEA7C(v4, v4[3]);
  sub_1DD794218();
  sub_1DD6E4218();
  v23 = v55;
  sub_1DD875B90();
  if (v23)
  {
    goto LABEL_10;
  }

  v48 = v12;
  v49 = v2;
  v55 = v4;
  v24 = v54;
  v25 = sub_1DD875900();
  v26 = sub_1DD6ED750(v25, 0);
  if (v28 == v27 >> 1)
  {
    v54 = v26;
LABEL_9:
    v42 = sub_1DD875740();
    swift_allocError();
    v44 = v43;
    v45 = *(sub_1DD710A9C(&qword_1ECD0E158, &qword_1DD876EC0) + 48);
    *v44 = &type metadata for SessionConfiguration.ParticipantSettings.SemanticPreference;
    sub_1DD875810();
    sub_1DD6DF100();
    (*(*(v42 - 8) + 104))(v44, *MEMORY[0x1E69E6AF8], v42);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v53 + 8))(v1, v17);
    v4 = v55;
LABEL_10:
    sub_1DD6E1EC8(v4);
LABEL_11:
    sub_1DD6E0C78();
    return;
  }

  sub_1DD6E6120();
  v47[1] = 0;
  if (v32 < (v31 >> 1))
  {
    v33 = *(v30 + v29);
    v34 = sub_1DD6ED830(v29 + 1);
    v36 = v35;
    v38 = v37;
    swift_unknownObjectRelease();
    if (v36 == v38 >> 1)
    {
      if (v33)
      {
        sub_1DD6FF8F4();
        sub_1DD79426C();
        v39 = v11;
        sub_1DD6ED7E8();
        v40 = v52;
        v41 = v53;
        swift_unknownObjectRelease();
        (*(v51 + 8))(v39, v24);
      }

      else
      {
        sub_1DD7942C0();
        v46 = v49;
        sub_1DD6ED7E8();
        v40 = v52;
        v41 = v53;
        swift_unknownObjectRelease();
        (*(v50 + 8))(v46, v48);
      }

      (*(v41 + 8))(v1, v36);
      *v40 = v33;
      sub_1DD6E1EC8(v55);
      goto LABEL_11;
    }

    v54 = v34;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_1DD794814(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E65726566657270 && a2 == 0xEA00000000006563)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DD875A30();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DD7948B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD794814(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DD7948E0(uint64_t a1)
{
  v2 = sub_1DD797DE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD79491C(uint64_t a1)
{
  v2 = sub_1DD797DE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SessionConfiguration.ParticipantSettings.encode(to:)()
{
  sub_1DD6DED2C();
  v2 = v1;
  v3 = sub_1DD710A9C(&qword_1ECD108A8, &qword_1DD886FF0);
  sub_1DD6DDEAC(v3);
  v5 = *(v4 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD6DEBA0();
  v7 = *v0;
  v8 = v2[4];
  sub_1DD6DEA7C(v2, v2[3]);
  sub_1DD797DE8();
  sub_1DD6E4218();
  sub_1DD6F0A68();
  sub_1DD875BB0();
  sub_1DD797E3C();
  sub_1DD8759D0();
  v9 = sub_1DD6ED4B8();
  v10(v9);
  sub_1DD6E0C78();
}

void SessionConfiguration.ParticipantSettings.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  sub_1DD6DED2C();
  sub_1DD6E1C58();
  v16 = sub_1DD710A9C(&qword_1ECD108C0, &qword_1DD886FF8);
  sub_1DD6DDEAC(v16);
  v18 = *(v17 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v19);
  sub_1DD6DEBA0();
  sub_1DD6DE568();
  sub_1DD797DE8();
  sub_1DD6E4218();
  sub_1DD6DFF18();
  sub_1DD875B90();
  if (!v14)
  {
    sub_1DD797E90();
    sub_1DD6E710C();
    sub_1DD8758D0();
    v20 = sub_1DD6E21F4();
    v21(v20);
    *v15 = a13;
  }

  sub_1DD6E1EC8(v13);
  sub_1DD6E0C78();
}

uint64_t static LocaleSettings.default.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1DD874880();
  v2 = type metadata accessor for LocaleSettings(0);
  v3 = a1 + *(v2 + 20);
  sub_1DD874880();
  v4 = a1 + *(v2 + 24);
  return sub_1DD874880();
}

uint64_t LocaleSettings.deviceLocale.setter()
{
  sub_1DD6DE290();
  v0 = sub_1DD874890();
  sub_1DD6DE1C4(v0);
  v2 = *(v1 + 40);
  v3 = sub_1DD6E21D0();

  return v4(v3);
}

uint64_t LocaleSettings.userLocale.setter()
{
  v2 = sub_1DD6DE290();
  v3 = *(type metadata accessor for LocaleSettings(v2) + 20);
  v4 = sub_1DD874890();
  sub_1DD6DE1C4(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t LocaleSettings.userLocale.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for LocaleSettings(v0) + 20);
  return sub_1DD6DDF9C();
}

uint64_t LocaleSettings.responseLocale.setter()
{
  v2 = sub_1DD6DE290();
  v3 = *(type metadata accessor for LocaleSettings(v2) + 24);
  v4 = sub_1DD874890();
  sub_1DD6DE1C4(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t LocaleSettings.responseLocale.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for LocaleSettings(v0) + 24);
  return sub_1DD6DDF9C();
}

uint64_t static LocaleSettings.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1E12B42B0]())
  {
    v4 = type metadata accessor for LocaleSettings(0);
    if (MEMORY[0x1E12B42B0](a1 + *(v4 + 20), a2 + *(v4 + 20)))
    {
      v5 = *(v4 + 24);

      JUMPOUT(0x1E12B42B0);
    }
  }

  return 0;
}

uint64_t sub_1DD794E50(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F4C656369766564 && a2 == 0xEC000000656C6163;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x61636F4C72657375 && a2 == 0xEA0000000000656CLL;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x65736E6F70736572 && a2 == 0xEE00656C61636F4CLL)
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

uint64_t sub_1DD794F74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD794E50(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD794F9C(uint64_t a1)
{
  v2 = sub_1DD6E8B14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD794FD8(uint64_t a1)
{
  v2 = sub_1DD6E8B14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LocaleSettings.hash(into:)()
{
  v1 = v0;
  sub_1DD874890();
  sub_1DD6DF414();
  sub_1DD6E881C(v2);
  sub_1DD6E1164();
  v3 = type metadata accessor for LocaleSettings(0);
  v4 = v0 + *(v3 + 20);
  sub_1DD6E1164();
  v5 = v1 + *(v3 + 24);
  return sub_1DD6E1164();
}

uint64_t LocaleSettings.hashValue.getter()
{
  v1 = v0;
  sub_1DD6DEDA4();
  sub_1DD874890();
  sub_1DD6DF414();
  sub_1DD6E881C(v2);
  sub_1DD8750C0();
  v3 = type metadata accessor for LocaleSettings(0);
  v4 = v0 + *(v3 + 20);
  sub_1DD8750C0();
  v5 = v1 + *(v3 + 24);
  sub_1DD8750C0();
  return sub_1DD875B60();
}

uint64_t sub_1DD795170(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_1DD875B20();
  sub_1DD874890();
  sub_1DD6E881C(&unk_1ECD108D8);
  sub_1DD8750C0();
  v5 = v2 + *(a2 + 20);
  sub_1DD8750C0();
  v6 = v4 + *(a2 + 24);
  sub_1DD8750C0();
  return sub_1DD875B60();
}

uint64_t sub_1DD795274(uint64_t a1)
{
  v2 = sub_1DD6EDF28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7952B0(uint64_t a1)
{
  v2 = sub_1DD6EDF28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7952EC(uint64_t a1)
{
  v2 = sub_1DD6EF100();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD795328(uint64_t a1)
{
  v2 = sub_1DD6EF100();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD795364(uint64_t a1)
{
  v2 = sub_1DD797F38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7953A0(uint64_t a1)
{
  v2 = sub_1DD797F38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7953DC(uint64_t a1)
{
  v2 = sub_1DD797EE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD795418(uint64_t a1)
{
  v2 = sub_1DD797EE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD795454(uint64_t a1)
{
  v2 = sub_1DD6EF240();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD795490(uint64_t a1)
{
  v2 = sub_1DD6EF240();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD79557C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65476563696F76 && a2 == 0xEB00000000726564;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646E654772657375 && a2 == 0xEA00000000007265)
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

uint64_t sub_1DD795650@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD79557C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD795678(uint64_t a1)
{
  v2 = sub_1DD6EDAA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7956B4(uint64_t a1)
{
  v2 = sub_1DD6EDAA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GenderSettings.hash(into:)()
{
  v1 = v0[1];
  MEMORY[0x1E12B5570](*v0);
  return MEMORY[0x1E12B5570](v1);
}

uint64_t GenderSettings.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DD6DEDA4();
  sub_1DD6FA750();
  MEMORY[0x1E12B5570](v2);
  return sub_1DD875B60();
}

uint64_t sub_1DD795788()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DD875B20();
  MEMORY[0x1E12B5570](v1);
  MEMORY[0x1E12B5570](v2);
  return sub_1DD875B60();
}

uint64_t sub_1DD7957E8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x80000001DD8B61D0 == a2;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000019 && 0x80000001DD8B61F0 == a2)
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

uint64_t sub_1DD795904(char a1)
{
  if (!a1)
  {
    return 1701736302;
  }

  if (a1 == 1)
  {
    return 0xD000000000000010;
  }

  return 0xD000000000000019;
}

uint64_t sub_1DD795964@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7957E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD79598C(uint64_t a1)
{
  v2 = sub_1DD797F8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7959C8(uint64_t a1)
{
  v2 = sub_1DD797F8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD795A04(uint64_t a1)
{
  v2 = sub_1DD798034();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD795A40(uint64_t a1)
{
  v2 = sub_1DD798034();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD795A7C(uint64_t a1)
{
  v2 = sub_1DD798088();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD795AB8(uint64_t a1)
{
  v2 = sub_1DD798088();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD795AF4(uint64_t a1)
{
  v2 = sub_1DD797FE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD795B30(uint64_t a1)
{
  v2 = sub_1DD797FE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void DebuggerSettings.DebuggerMode.encode(to:)()
{
  sub_1DD6DED2C();
  v3 = v2;
  v4 = sub_1DD710A9C(&qword_1ECD10958, &qword_1DD887070);
  sub_1DD6DDEAC(v4);
  v6 = *(v5 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6E0C6C();
  v8 = sub_1DD710A9C(&qword_1ECD10960, &qword_1DD887078);
  sub_1DD6DDEAC(v8);
  v10 = *(v9 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1DD6E0C6C();
  v12 = sub_1DD710A9C(&qword_1ECD10968, &qword_1DD887080);
  sub_1DD6DDEAC(v12);
  v14 = *(v13 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1DD6DEA6C();
  v16 = sub_1DD710A9C(&qword_1ECD10970, &qword_1DD887088);
  sub_1DD6DDEAC(v16);
  v18 = v17;
  v20 = *(v19 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v21);
  sub_1DD6DDFE4();
  v22 = *v0;
  v23 = v3[4];
  sub_1DD6DEA7C(v3, v3[3]);
  sub_1DD797F8C();
  sub_1DD875BB0();
  if (v22)
  {
    if (v22 == 1)
    {
      sub_1DD6DEC54();
      sub_1DD798034();
    }

    else
    {
      sub_1DD6EFF88();
      sub_1DD797FE0();
    }

    sub_1DD6E6CC4();
    sub_1DD875910();
  }

  else
  {
    sub_1DD798088();
    sub_1DD6E6CC4();
    sub_1DD875910();
  }

  v24 = sub_1DD6DED98();
  v25(v24);
  (*(v18 + 8))(v1, v16);
  sub_1DD6E0C78();
}

uint64_t _s16IntelligenceFlow14GenderSettingsV0C0O9hashValueSivg_0()
{
  v1 = *v0;
  sub_1DD6DEDA4();
  sub_1DD6FA750();
  return sub_1DD875B60();
}

void DebuggerSettings.DebuggerMode.init(from:)()
{
  sub_1DD6DED2C();
  v77 = v0;
  v4 = v3;
  v72 = v5;
  v76 = sub_1DD710A9C(&qword_1ECD10998, &qword_1DD887090);
  sub_1DD6DDEAC(v76);
  v73 = v6;
  v8 = *(v7 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD6E0C6C();
  v75 = v10;
  v11 = sub_1DD710A9C(&qword_1ECD109A0, &qword_1DD887098);
  v12 = sub_1DD6DDEAC(v11);
  v70 = v13;
  v71 = v12;
  v15 = *(v14 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1DD6DE340();
  v17 = sub_1DD710A9C(&qword_1ECD109A8, &qword_1DD8870A0);
  sub_1DD6DDEAC(v17);
  v69 = v18;
  v20 = *(v19 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v64 - v22;
  v24 = sub_1DD710A9C(&qword_1ECD109B0, &qword_1DD8870A8);
  sub_1DD6DDEAC(v24);
  v74 = v25;
  v27 = *(v26 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v28);
  sub_1DD6DEBA0();
  v29 = v4[4];
  sub_1DD6DEA7C(v4, v4[3]);
  sub_1DD797F8C();
  sub_1DD6E4218();
  v30 = v77;
  sub_1DD875B90();
  if (v30)
  {
    goto LABEL_11;
  }

  v66 = v17;
  v67 = v23;
  v68 = v1;
  v32 = v75;
  v31 = v76;
  v77 = v4;
  v33 = sub_1DD875900();
  sub_1DD6ED750(v33, 0);
  if (v35 == v34 >> 1)
  {
    goto LABEL_10;
  }

  sub_1DD6E6120();
  v65 = 0;
  if (v39 < (v38 >> 1))
  {
    LODWORD(v40) = *(v37 + v36);
    sub_1DD6ED830(v36 + 1);
    v42 = v41;
    v44 = v43;
    swift_unknownObjectRelease();
    v45 = v42 == v44 >> 1;
    v46 = v73;
    if (!v45)
    {
LABEL_10:
      v52 = sub_1DD875740();
      swift_allocError();
      v54 = v53;
      v55 = *(sub_1DD710A9C(&qword_1ECD0E158, &qword_1DD876EC0) + 48);
      *v54 = &type metadata for DebuggerSettings.DebuggerMode;
      sub_1DD875810();
      sub_1DD6DF100();
      (*(*(v52 - 8) + 104))(v54, *MEMORY[0x1E69E6AF8], v52);
      swift_willThrow();
      swift_unknownObjectRelease();
      sub_1DD700D7C();
      v56(v2, v24);
      v4 = v77;
LABEL_11:
      sub_1DD6E1EC8(v4);
LABEL_12:
      sub_1DD6E0C78();
      return;
    }

    if (v40)
    {
      if (v40 == 1)
      {
        sub_1DD6DEC54();
        sub_1DD798034();
        v47 = v68;
        sub_1DD79A3A4();
        v48 = v65;
        sub_1DD875800();
        v49 = v72;
        v50 = v24;
        v51 = v74;
        if (v48)
        {
          (*(v74 + 8))(v2, v50);
LABEL_17:
          swift_unknownObjectRelease();
          v4 = v77;
          goto LABEL_11;
        }

        swift_unknownObjectRelease();
        (*(v70 + 8))(v47, v71);
        (*(v51 + 8))(v2, v50);
      }

      else
      {
        LODWORD(v71) = v40;
        sub_1DD6EFF88();
        sub_1DD797FE0();
        sub_1DD79A3A4();
        v59 = v65;
        sub_1DD875800();
        v49 = v72;
        v40 = v24;
        v60 = v74;
        if (v59)
        {
          (*(v74 + 8))(v2, v40);
          goto LABEL_17;
        }

        swift_unknownObjectRelease();
        (*(v46 + 8))(v32, v31);
        (*(v60 + 8))(v2, v40);
        LOBYTE(v40) = v71;
      }
    }

    else
    {
      sub_1DD798088();
      sub_1DD79A3A4();
      v57 = v65;
      sub_1DD875800();
      if (v57)
      {
        sub_1DD700D7C();
        v58(v2, v24);
        goto LABEL_17;
      }

      swift_unknownObjectRelease();
      v61 = sub_1DD6DED98();
      v62(v61, v66);
      sub_1DD700D7C();
      v63(v2, v24);
      v49 = v72;
    }

    *v49 = v40;
    sub_1DD6E1EC8(v77);
    goto LABEL_12;
  }

  __break(1u);
}

uint64_t sub_1DD79652C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701080941 && a2 == 0xE400000000000000;
  if (v3 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD00000000000001ELL && 0x80000001DD8B6210 == a2;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000014 && 0x80000001DD8B6230 == a2;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD00000000000001FLL && 0x80000001DD8B6250 == a2)
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

unint64_t sub_1DD796694(char a1)
{
  result = 1701080941;
  switch(a1)
  {
    case 1:
      v3 = 10;
      goto LABEL_5;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      v3 = 11;
LABEL_5:
      result = v3 | 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD796720()
{
  v1 = *v0;
  sub_1DD875B20();
  sub_1DD6FA750();
  return sub_1DD875B60();
}

uint64_t sub_1DD796764@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD79652C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD79678C(uint64_t a1)
{
  v2 = sub_1DD7980DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7967C8(uint64_t a1)
{
  v2 = sub_1DD7980DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void DebuggerSettings.encode(to:)()
{
  sub_1DD6DED2C();
  v3 = v2;
  v4 = sub_1DD710A9C(&qword_1ECD109B8, &qword_1DD8870B0);
  sub_1DD6DDEAC(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD6DEA6C();
  v10 = *v0;
  v16 = v0[2];
  v17 = v0[1];
  v15 = v0[3];
  v11 = v3[4];
  sub_1DD6DEA7C(v3, v3[3]);
  sub_1DD7980DC();
  sub_1DD6E17D8();
  sub_1DD875BB0();
  sub_1DD798130();
  sub_1DD6E5334();
  sub_1DD8759D0();
  if (!v1)
  {
    sub_1DD6E4104();
    sub_1DD6E5334();
    sub_1DD875980();
    sub_1DD6E5334();
    sub_1DD875980();
    sub_1DD6E5334();
    sub_1DD875980();
  }

  v12 = *(v6 + 8);
  v13 = sub_1DD6DEA04();
  v14(v13);
  sub_1DD6E0CE8();
  sub_1DD6E0C78();
}

void DebuggerSettings.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  sub_1DD6DED2C();
  v15 = v14;
  v17 = v16;
  v18 = sub_1DD710A9C(&qword_1ECD109D0, &qword_1DD8870B8);
  sub_1DD6DDEAC(v18);
  v20 = *(v19 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v21);
  sub_1DD6DDFE4();
  sub_1DD6DE568();
  sub_1DD7980DC();
  sub_1DD6FC48C();
  if (!v13)
  {
    sub_1DD798184();
    sub_1DD6F178C();
    sub_1DD8758D0();
    sub_1DD6E4104();
    sub_1DD6F178C();
    v22 = sub_1DD875880();
    sub_1DD6F178C();
    v26 = sub_1DD875880();
    sub_1DD6F178C();
    v23 = sub_1DD875880();
    v24 = sub_1DD6E27B0();
    v25(v24, v18);
    *v17 = a13;
    v17[1] = v22 & 1;
    v17[2] = v26 & 1;
    v17[3] = v23 & 1;
  }

  sub_1DD6E1EC8(v15);
  sub_1DD6E429C();
  sub_1DD6E0C78();
}

uint64_t sub_1DD796BD4@<X0>(int *a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = *a1;
  result = DeviceDetails.DeviceType.rawValue.getter();
  *a2 = result;
  return result;
}

void (*DeviceDetails.DeviceType.rawValue.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = *v1;
  return sub_1DD796C44;
}

void sub_1DD796C5C(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  DeviceDetails.DeviceType.init(rawValue:)(&v4);
  *a2 = v4;
  *(a2 + 4) = 0;
}

uint64_t sub_1DD796C9C@<X0>(_DWORD *a1@<X8>)
{
  result = DeviceDetails.DeviceType.rawValue.getter();
  *a1 = result;
  return result;
}

void sub_1DD796DA4(uint64_t a1@<X8>)
{
  v2 = sub_1DD874ED0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = IDSCopyLocalDeviceUniqueID();
  if (v7)
  {
    v8 = v7;
    v9 = sub_1DD875140();
    v11 = v10;
  }

  else
  {
    sub_1DD874C00();
    v12 = sub_1DD874EC0();
    v13 = sub_1DD8754F0();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1DD6DC000, v12, v13, "Unexpectedly obtained nil value from IDSCopyLocalDeviceUniqueID()", v14, 2u);
      MEMORY[0x1E12B5DE0](v14, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    v9 = 0;
    v11 = 0xE000000000000000;
  }

  v15 = MobileGestalt_get_current_device();
  if (v15)
  {
    v16 = v15;
    deviceClassNumber = MobileGestalt_get_deviceClassNumber();

    if (deviceClassNumber)
    {
      v18 = deviceClassNumber;
    }

    else
    {
      v18 = -1;
    }

    *a1 = v9;
    *(a1 + 8) = v11;
    *(a1 + 16) = v18;
  }

  else
  {
    __break(1u);
  }
}

uint64_t DeviceDetails.init(deviceIdsId:type:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = v4;
  return result;
}

uint64_t static DeviceDetails.current.getter()
{
  if (qword_1ECD0DF98 != -1)
  {
    sub_1DD6E0FC0();
  }

  sub_1DD6E87C4(&qword_1ECD10830);
}

uint64_t DeviceDetails.deviceIdsId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return sub_1DD6DDEFC();
}

uint64_t DeviceDetails.deviceIdsId.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

BOOL DeviceDetails.isCurrentDevice.getter()
{
  if (qword_1ECD0DF98 != -1)
  {
    sub_1DD6E0FC0();
  }

  v1 = dword_1ECD10840;
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  if (v2 == qword_1ECD10830 && v3 == *algn_1ECD10838)
  {
    return v4 == v1;
  }

  v6 = sub_1DD875A30();
  result = 0;
  if (v6)
  {
    return v4 == v1;
  }

  return result;
}

BOOL static DeviceDetails.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return v2 == v3;
  }

  v5 = sub_1DD875A30();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t sub_1DD797138(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449656369766564 && a2 == 0xEB00000000644973;
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

uint64_t sub_1DD797204(char a1)
{
  if (a1)
  {
    return 1701869940;
  }

  else
  {
    return 0x6449656369766564;
  }
}

uint64_t sub_1DD797244@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD797138(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD79726C(uint64_t a1)
{
  v2 = sub_1DD7981D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7972A8(uint64_t a1)
{
  v2 = sub_1DD7981D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void DeviceDetails.encode(to:)()
{
  sub_1DD6DED2C();
  v3 = v2;
  v4 = sub_1DD710A9C(&qword_1ECD109E0, &qword_1DD8870C0);
  sub_1DD6DDEAC(v4);
  v6 = *(v5 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6DEA6C();
  v8 = *v0;
  v9 = v0[1];
  v13 = *(v0 + 4);
  v10 = v3[4];
  sub_1DD6DEA7C(v3, v3[3]);
  sub_1DD7981D8();
  sub_1DD6E17D8();
  sub_1DD875BB0();
  sub_1DD6DE334();
  sub_1DD875970();
  if (!v1)
  {
    sub_1DD6DEC54();
    sub_1DD79822C();
    sub_1DD6E5334();
    sub_1DD8759D0();
  }

  v11 = sub_1DD6DED98();
  v12(v11, v4);
  sub_1DD6E0CE8();
  sub_1DD6E0C78();
}

void DeviceDetails.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{
  sub_1DD6DED2C();
  sub_1DD6E1C58();
  v13 = sub_1DD710A9C(&qword_1ECD109F8, &qword_1DD8870C8);
  sub_1DD6DDEAC(v13);
  v15 = *(v14 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1DD6DDFE4();
  sub_1DD6DE568();
  sub_1DD7981D8();
  sub_1DD6DFF18();
  sub_1DD875B90();
  if (v11)
  {
    sub_1DD6E1EC8(v10);
  }

  else
  {
    v17 = sub_1DD875870();
    v19 = v18;
    sub_1DD6DEC54();
    sub_1DD798280();
    sub_1DD8758D0();
    v20 = sub_1DD6E27B0();
    v21(v20, v13);
    *v12 = v17;
    *(v12 + 8) = v19;
    *(v12 + 16) = a10;

    sub_1DD6E1EC8(v10);
  }

  sub_1DD6E0CE8();
  sub_1DD6E0C78();
}

uint64_t AuditToken.inner.getter()
{
  result = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  return result;
}

uint64_t static AuditToken.currentProcess.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DD874C10();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return result;
}

uint64_t sub_1DD79763C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x72656E6E69 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DD875A30();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DD7976B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD79763C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DD7976DC(uint64_t a1)
{
  v2 = sub_1DD6E9838();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD797718(uint64_t a1)
{
  v2 = sub_1DD6E9838();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD797754()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  return sub_1DD8587A0();
}

uint64_t sub_1DD79776C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  return sub_1DD7603D8();
}

double sub_1DD797794@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  AuditToken.init(rawValue:)(v5, *a1, a1[1], a1[2], a1[3]);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = 0;
  return result;
}

uint64_t sub_1DD7977DC@<X0>(uint64_t *a1@<X8>)
{
  result = AuditToken.inner.getter();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return result;
}

uint64_t ClientIdentityChain.identities.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t static ClientIdentity.getIdentityForCurrentProcess()@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1DD874C10();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_1DD874CA0();
  result = sub_1DD874C60();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v8;
  *(a1 + 32) = 0;
  *(a1 + 40) = result;
  return result;
}

uint64_t sub_1DD7978C0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x697469746E656469 && a2 == 0xEA00000000007365)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DD875A30();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DD797940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7978C0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DD79796C(uint64_t a1)
{
  v2 = sub_1DD6E902C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7979A8(uint64_t a1)
{
  v2 = sub_1DD6E902C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t static MachIdentityToken.newTokenForCurrentProcess()()
{
  sub_1DD6E0A5C();
  sub_1DD874CA0();
  result = sub_1DD874C60();
  *v0 = result;
  return result;
}

__n128 ClientIdentity.init(untrustedAuditToken:identityToken:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 32);
  v4 = *a2;
  result = *a1;
  v6 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v6;
  *(a3 + 32) = v3;
  *(a3 + 40) = v4;
  return result;
}

__n128 ClientIdentity.untrustedAuditToken.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  result = *v1;
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

uint64_t sub_1DD797A50@<X0>(__int128 *a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 5);
  v5 = a1[1];
  v8 = *a1;
  v9 = v5;
  v10 = v3;
  v11 = v4;
  result = ClientIdentity.identityToken.getter(&v7);
  *a2 = v7;
  return result;
}

uint64_t sub_1DD797AA4(uint64_t *a1)
{
  v2 = *a1;

  return ClientIdentity.identityToken.setter(&v2);
}

uint64_t ClientIdentity.identityToken.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 40);

  *(v1 + 40) = v2;
  return result;
}

uint64_t ClientIdentity.identityToken.modify(void *a1)
{
  *a1 = *(v1 + 40);
  a1[1] = v1;

  return sub_1DD6E21D0();
}

uint64_t sub_1DD797B54(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v3 + 40);
  if (a2)
  {
    v5 = *a1;

    *(v3 + 40) = v2;
  }

  else
  {
    v7 = *(v3 + 40);

    *(v3 + 40) = v2;
  }

  return result;
}

uint64_t sub_1DD797BC8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x80000001DD8B6270 == a2;
  if (v3 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7469746E6564695FLL && a2 == 0xEE006E656B6F5479)
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

uint64_t sub_1DD797CA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD797BC8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD797CC8(uint64_t a1)
{
  v2 = sub_1DD6E9318();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD797D04(uint64_t a1)
{
  v2 = sub_1DD6E9318();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MachIdentityToken.init(copyingToken:)@<X0>(uint64_t *a1@<X8>)
{
  sub_1DD874CA0();
  swift_allocObject();
  result = sub_1DD874C70();
  *a1 = result;
  return result;
}

uint64_t MachIdentityToken.init(xpcObject:)@<X0>(uint64_t *a1@<X8>)
{
  sub_1DD874CA0();
  swift_allocObject();
  result = sub_1DD874C80();
  *a1 = result;
  return result;
}

unint64_t sub_1DD797DE8()
{
  result = qword_1ECD108B0;
  if (!qword_1ECD108B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD108B0);
  }

  return result;
}

unint64_t sub_1DD797E3C()
{
  result = qword_1ECD108B8;
  if (!qword_1ECD108B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD108B8);
  }

  return result;
}

unint64_t sub_1DD797E90()
{
  result = qword_1ECD108C8;
  if (!qword_1ECD108C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD108C8);
  }

  return result;
}

unint64_t sub_1DD797EE4()
{
  result = qword_1ECD10910;
  if (!qword_1ECD10910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10910);
  }

  return result;
}

unint64_t sub_1DD797F38()
{
  result = qword_1ECD10918;
  if (!qword_1ECD10918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10918);
  }

  return result;
}

unint64_t sub_1DD797F8C()
{
  result = qword_1ECD10978;
  if (!qword_1ECD10978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10978);
  }

  return result;
}

unint64_t sub_1DD797FE0()
{
  result = qword_1ECD10980;
  if (!qword_1ECD10980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10980);
  }

  return result;
}

unint64_t sub_1DD798034()
{
  result = qword_1ECD10988;
  if (!qword_1ECD10988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10988);
  }

  return result;
}

unint64_t sub_1DD798088()
{
  result = qword_1ECD10990;
  if (!qword_1ECD10990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10990);
  }

  return result;
}

unint64_t sub_1DD7980DC()
{
  result = qword_1ECD109C0;
  if (!qword_1ECD109C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD109C0);
  }

  return result;
}

unint64_t sub_1DD798130()
{
  result = qword_1ECD109C8;
  if (!qword_1ECD109C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD109C8);
  }

  return result;
}

unint64_t sub_1DD798184()
{
  result = qword_1ECD109D8;
  if (!qword_1ECD109D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD109D8);
  }

  return result;
}

unint64_t sub_1DD7981D8()
{
  result = qword_1ECD109E8;
  if (!qword_1ECD109E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD109E8);
  }

  return result;
}

unint64_t sub_1DD79822C()
{
  result = qword_1ECD109F0;
  if (!qword_1ECD109F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD109F0);
  }

  return result;
}

unint64_t sub_1DD798280()
{
  result = qword_1ECD10A00;
  if (!qword_1ECD10A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10A00);
  }

  return result;
}

unint64_t sub_1DD7982D4(uint64_t a1)
{
  result = sub_1DD6E0CF4(a1);
  if (!result)
  {
    v4 = v3;
    sub_1DD717E88(&qword_1ECD10A20, &qword_1DD8870E8);
    v4();
    sub_1DD6E5CB8();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1DD798340()
{
  result = qword_1EE015870;
  if (!qword_1EE015870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE015870);
  }

  return result;
}

unint64_t sub_1DD798394()
{
  result = qword_1EE015868;
  if (!qword_1EE015868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE015868);
  }

  return result;
}

unint64_t sub_1DD7983EC()
{
  result = qword_1EE015458;
  if (!qword_1EE015458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE015458);
  }

  return result;
}

unint64_t sub_1DD798488()
{
  result = qword_1ECD10A58;
  if (!qword_1ECD10A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10A58);
  }

  return result;
}

unint64_t sub_1DD798528()
{
  result = qword_1ECD10A68;
  if (!qword_1ECD10A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10A68);
  }

  return result;
}

unint64_t sub_1DD798580()
{
  result = qword_1ECD10A70;
  if (!qword_1ECD10A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10A70);
  }

  return result;
}

unint64_t sub_1DD7985D8()
{
  result = qword_1ECD10A78;
  if (!qword_1ECD10A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10A78);
  }

  return result;
}

unint64_t sub_1DD798630()
{
  result = qword_1ECD10A80;
  if (!qword_1ECD10A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10A80);
  }

  return result;
}

unint64_t sub_1DD798688()
{
  result = qword_1ECD10A88;
  if (!qword_1ECD10A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10A88);
  }

  return result;
}

uint64_t sub_1DD7986DC()
{
  sub_1DD76F160(319, &qword_1EE017388);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_1DD79890C(319, &qword_1EE015DE0, &qword_1ECD10850, &unk_1DD886FA0);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_1DD79890C(319, &qword_1EE015DF0, &qword_1ECD10818, &qword_1DD886DA8);
      v1 = v5;
      if (v6 <= 0x3F)
      {
        sub_1DD76F160(319, &qword_1EE015DB0);
        v1 = v7;
        if (v8 <= 0x3F)
        {
          sub_1DD798960();
          if (v10 > 0x3F)
          {
            return v9;
          }

          sub_1DD76F160(319, &qword_1EE017380);
          if (v11 > 0x3F)
          {
            return v9;
          }

          sub_1DD76F160(319, qword_1EE017630);
          if (v12 > 0x3F)
          {
            return v9;
          }

          sub_1DD76F160(319, &qword_1EE017460);
          if (v13 > 0x3F)
          {
            return v9;
          }

          sub_1DD76F160(319, qword_1EE018820);
          if (v14 > 0x3F)
          {
            return v9;
          }

          sub_1DD76F160(319, &qword_1EE018658);
          if (v15 > 0x3F)
          {
            return v9;
          }

          else
          {
            sub_1DD76F160(319, &qword_1EE017000);
            v1 = v16;
            if (v17 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return v1;
}

void sub_1DD79890C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_1DD717E88(a3, a4);
    v5 = sub_1DD8755C0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1DD798960()
{
  if (!qword_1EE0185F8[0])
  {
    type metadata accessor for LocaleSettings(255);
    v0 = sub_1DD8755C0();
    if (!v1)
    {
      atomic_store(v0, qword_1EE0185F8);
    }
  }
}

uint64_t sub_1DD7989C8()
{
  result = sub_1DD874890();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 sub_1DD798A4C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_1DD798A70(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 48))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 40);
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

uint64_t sub_1DD798AC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

uint64_t sub_1DD798B2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = sub_1DD8755C0();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DD798B9C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(v4 - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_23;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_23;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 > 3)
          {
            LODWORD(v7) = 4;
          }

          switch(v7)
          {
            case 2:
              LODWORD(v7) = *a1;
              break;
            case 3:
              LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
              break;
            case 4:
              LODWORD(v7) = *a1;
              break;
            default:
              LODWORD(v7) = *a1;
              break;
          }
        }

        return v6 + (v7 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_23:
  if (v5 < 2)
  {
    return 0;
  }

  v14 = sub_1DD6E5ED0(a1, v5, v4);
  if (v14 >= 2)
  {
    return v14 - 1;
  }

  else
  {
    return 0;
  }
}

void sub_1DD798D14(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    v11 = *(v8 + 64);
  }

  else
  {
    v11 = *(v8 + 64) + 1;
  }

  v12 = 8 * v11;
  v13 = a3 >= v10;
  v14 = a3 - v10;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v15 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v15))
      {
        v6 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v6 = v16;
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else
    {
      v6 = 1;
    }
  }

  if (v10 >= a2)
  {
    switch(v6)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if (v9 >= 2)
          {
            v20 = a2 + 1;

            sub_1DD6E5E68(a1, v20, v9, v7);
          }
        }

        break;
    }
  }

  else
  {
    v17 = ~v10 + a2;
    if (v11 < 4)
    {
      v18 = (v17 >> v12) + 1;
      if (v11)
      {
        v19 = v17 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v19;
          a1[2] = BYTE2(v19);
        }

        else if (v11 == 2)
        {
          *a1 = v19;
        }

        else
        {
          *a1 = v17;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v17;
      v18 = 1;
    }

    switch(v6)
    {
      case 1:
        a1[v11] = v18;
        break;
      case 2:
        *&a1[v11] = v18;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v18;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_1DD799088()
{
  result = qword_1ECD10A90;
  if (!qword_1ECD10A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10A90);
  }

  return result;
}

unint64_t sub_1DD7990E0()
{
  result = qword_1ECD10A98;
  if (!qword_1ECD10A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10A98);
  }

  return result;
}

unint64_t sub_1DD799138()
{
  result = qword_1ECD10AA0;
  if (!qword_1ECD10AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10AA0);
  }

  return result;
}

unint64_t sub_1DD799190()
{
  result = qword_1ECD10AA8;
  if (!qword_1ECD10AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10AA8);
  }

  return result;
}

unint64_t sub_1DD7991E8()
{
  result = qword_1ECD10AB0;
  if (!qword_1ECD10AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10AB0);
  }

  return result;
}

unint64_t sub_1DD799240()
{
  result = qword_1ECD10AB8;
  if (!qword_1ECD10AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10AB8);
  }

  return result;
}

unint64_t sub_1DD799298()
{
  result = qword_1ECD10AC0;
  if (!qword_1ECD10AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10AC0);
  }

  return result;
}

unint64_t sub_1DD7992F0()
{
  result = qword_1ECD10AC8;
  if (!qword_1ECD10AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10AC8);
  }

  return result;
}

unint64_t sub_1DD799348()
{
  result = qword_1ECD10AD0;
  if (!qword_1ECD10AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10AD0);
  }

  return result;
}

unint64_t sub_1DD7993A0()
{
  result = qword_1ECD10AD8;
  if (!qword_1ECD10AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10AD8);
  }

  return result;
}

unint64_t sub_1DD7993F8()
{
  result = qword_1ECD10AE0;
  if (!qword_1ECD10AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10AE0);
  }

  return result;
}

unint64_t sub_1DD799450()
{
  result = qword_1ECD10AE8;
  if (!qword_1ECD10AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10AE8);
  }

  return result;
}

unint64_t sub_1DD7994A8()
{
  result = qword_1EE018760;
  if (!qword_1EE018760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE018760);
  }

  return result;
}

unint64_t sub_1DD799500()
{
  result = qword_1EE018768;
  if (!qword_1EE018768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE018768);
  }

  return result;
}

unint64_t sub_1DD799558()
{
  result = qword_1EE017468;
  if (!qword_1EE017468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE017468);
  }

  return result;
}

unint64_t sub_1DD7995B0()
{
  result = qword_1EE017470;
  if (!qword_1EE017470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE017470);
  }

  return result;
}

unint64_t sub_1DD799608()
{
  result = qword_1EE018C80;
  if (!qword_1EE018C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE018C80);
  }

  return result;
}

unint64_t sub_1DD799660()
{
  result = qword_1EE018C88;
  if (!qword_1EE018C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE018C88);
  }

  return result;
}

unint64_t sub_1DD7996B8()
{
  result = qword_1ECD10AF0;
  if (!qword_1ECD10AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10AF0);
  }

  return result;
}

unint64_t sub_1DD799710()
{
  result = qword_1ECD10AF8;
  if (!qword_1ECD10AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10AF8);
  }

  return result;
}

unint64_t sub_1DD799768()
{
  result = qword_1ECD10B00;
  if (!qword_1ECD10B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10B00);
  }

  return result;
}

unint64_t sub_1DD7997C0()
{
  result = qword_1ECD10B08;
  if (!qword_1ECD10B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10B08);
  }

  return result;
}

unint64_t sub_1DD799818()
{
  result = qword_1ECD10B10;
  if (!qword_1ECD10B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10B10);
  }

  return result;
}

unint64_t sub_1DD799870()
{
  result = qword_1ECD10B18;
  if (!qword_1ECD10B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10B18);
  }

  return result;
}

unint64_t sub_1DD7998C8()
{
  result = qword_1ECD10B20;
  if (!qword_1ECD10B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10B20);
  }

  return result;
}

unint64_t sub_1DD799920()
{
  result = qword_1ECD10B28;
  if (!qword_1ECD10B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10B28);
  }

  return result;
}

unint64_t sub_1DD799978()
{
  result = qword_1ECD10B30;
  if (!qword_1ECD10B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10B30);
  }

  return result;
}

unint64_t sub_1DD7999D0()
{
  result = qword_1ECD10B38;
  if (!qword_1ECD10B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10B38);
  }

  return result;
}

unint64_t sub_1DD799A28()
{
  result = qword_1ECD10B40;
  if (!qword_1ECD10B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10B40);
  }

  return result;
}

unint64_t sub_1DD799A80()
{
  result = qword_1ECD10B48;
  if (!qword_1ECD10B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10B48);
  }

  return result;
}

unint64_t sub_1DD799AD8()
{
  result = qword_1EE018660;
  if (!qword_1EE018660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE018660);
  }

  return result;
}

unint64_t sub_1DD799B30()
{
  result = qword_1EE018668;
  if (!qword_1EE018668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE018668);
  }

  return result;
}

unint64_t sub_1DD799B88()
{
  result = qword_1EE018678;
  if (!qword_1EE018678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE018678);
  }

  return result;
}

unint64_t sub_1DD799BE0()
{
  result = qword_1EE018680;
  if (!qword_1EE018680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE018680);
  }

  return result;
}

unint64_t sub_1DD799C38()
{
  result = qword_1EE0186A0;
  if (!qword_1EE0186A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0186A0);
  }

  return result;
}

unint64_t sub_1DD799C90()
{
  result = qword_1EE0186A8;
  if (!qword_1EE0186A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0186A8);
  }

  return result;
}

unint64_t sub_1DD799CE8()
{
  result = qword_1EE0186B8;
  if (!qword_1EE0186B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0186B8);
  }

  return result;
}

unint64_t sub_1DD799D40()
{
  result = qword_1EE0186C0;
  if (!qword_1EE0186C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0186C0);
  }

  return result;
}

unint64_t sub_1DD799D98()
{
  result = qword_1EE018690;
  if (!qword_1EE018690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE018690);
  }

  return result;
}

unint64_t sub_1DD799DF0()
{
  result = qword_1EE018698;
  if (!qword_1EE018698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE018698);
  }

  return result;
}

unint64_t sub_1DD799E48()
{
  result = qword_1EE0186C8;
  if (!qword_1EE0186C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0186C8);
  }

  return result;
}

unint64_t sub_1DD799EA0()
{
  result = qword_1EE0186D0;
  if (!qword_1EE0186D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0186D0);
  }

  return result;
}

unint64_t sub_1DD799EF8()
{
  result = qword_1EE018640;
  if (!qword_1EE018640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE018640);
  }

  return result;
}

unint64_t sub_1DD799F50()
{
  result = qword_1EE018648;
  if (!qword_1EE018648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE018648);
  }

  return result;
}

unint64_t sub_1DD799FA8()
{
  result = qword_1ECD10B50;
  if (!qword_1ECD10B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10B50);
  }

  return result;
}

unint64_t sub_1DD79A000()
{
  result = qword_1ECD10B58;
  if (!qword_1ECD10B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10B58);
  }

  return result;
}

unint64_t sub_1DD79A058()
{
  result = qword_1ECD10B60;
  if (!qword_1ECD10B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10B60);
  }

  return result;
}

unint64_t sub_1DD79A0B0()
{
  result = qword_1ECD10B68;
  if (!qword_1ECD10B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10B68);
  }

  return result;
}

unint64_t sub_1DD79A108()
{
  result = qword_1ECD10B70;
  if (!qword_1ECD10B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10B70);
  }

  return result;
}

unint64_t sub_1DD79A160()
{
  result = qword_1ECD10B78;
  if (!qword_1ECD10B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10B78);
  }

  return result;
}

unint64_t sub_1DD79A1B8()
{
  result = qword_1ECD10B80;
  if (!qword_1ECD10B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10B80);
  }

  return result;
}

unint64_t sub_1DD79A210()
{
  result = qword_1ECD10B88;
  if (!qword_1ECD10B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10B88);
  }

  return result;
}

unint64_t sub_1DD79A268()
{
  result = qword_1EE017398;
  if (!qword_1EE017398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE017398);
  }

  return result;
}

unint64_t sub_1DD79A2C0()
{
  result = qword_1EE0173A0;
  if (!qword_1EE0173A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0173A0);
  }

  return result;
}

unint64_t sub_1DD79A314()
{
  result = qword_1ECD10B90;
  if (!qword_1ECD10B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10B90);
  }

  return result;
}

uint64_t AnySessionMessage.sessionId.getter()
{
  v1 = v0[4];
  sub_1DD6DF224(v0, v0[3]);
  v2 = *(v1 + 8);
  v3 = sub_1DD6E5C7C();
  return v4(v3);
}

uint64_t AnySessionMessage.clientRequestId.getter()
{
  v1 = v0[4];
  sub_1DD6DF224(v0, v0[3]);
  v2 = *(v1 + 16);
  v3 = sub_1DD6E5F58();
  return v4(v3);
}

uint64_t AnySessionMessage.payload.getter()
{
  v1 = v0[4];
  sub_1DD6DF224(v0, v0[3]);
  v2 = *(v1 + 24);
  v3 = sub_1DD6E5C7C();
  return v4(v3);
}

uint64_t AnySessionMessage.init<A>(_:)()
{
  sub_1DD6E1F34();
  v2[3] = v0;
  v2[4] = v1;
  sub_1DD79A52C(v2);
  sub_1DD824B14();
  v4 = *(v3 + 32);

  return v4();
}

uint64_t *sub_1DD79A52C(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_1DD79A598(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x496E6F6973736573 && a2 == 0xE900000000000064;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6552746E65696C63 && a2 == 0xEF64497473657571;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x64616F6C796170 && a2 == 0xE700000000000000)
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

uint64_t sub_1DD79A6B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD79A598(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD79A6E0(uint64_t a1)
{
  v2 = sub_1DD6FE71C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD79A71C(uint64_t a1)
{
  v2 = sub_1DD6FE71C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD79A7B4()
{
  v0 = sub_1DD825338();
  v2 = *(v1(v0) + 24);
  return sub_1DD8263B0();
}

uint64_t SessionServerMessage.clientSessionId.getter()
{
  v0 = type metadata accessor for SessionServerMessage(0);
  sub_1DD6E9B14(*(v0 + 36));
  return sub_1DD6DDEFC();
}

uint64_t SessionServerMessage.timestamp.getter()
{
  v0 = sub_1DD6E0A5C();
  v1 = *(type metadata accessor for SessionServerMessage(v0) + 40);
  v2 = sub_1DD874790();
  sub_1DD6DE1C4(v2);
  v4 = *(v3 + 16);
  v5 = sub_1DD6FE878();

  return v6(v5);
}

uint64_t SessionServerMessage.init(sessionId:eventId:clientRequestId:clientSessionId:timestamp:payload:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1DD6FF8A8();
  v49 = v19;
  v50 = v20;
  v22 = v21;
  sub_1DD825B54();
  v23 = sub_1DD874820();
  sub_1DD6DE1C4(v23);
  v25 = *(v24 + 32);
  v25(v14, v18, v23);
  v26 = type metadata accessor for SessionServerMessage(0);
  sub_1DD827658(v26);
  v25(v14 + v27, v17, v23);
  v28 = v18[6];
  sub_1DD825300();
  sub_1DD6E5E68(v29, v30, v31, v32);
  v33 = v18[8];
  sub_1DD6E27BC();
  sub_1DD6E59B8();
  v34 = (v14 + v18[7]);
  *v34 = v16;
  v34[1] = v15;
  v35 = (v14 + v18[9]);
  *v35 = v22;
  v35[1] = v49;
  v36 = v18[10];
  v37 = sub_1DD874790();
  sub_1DD6DF448(v37);
  v39 = *(v38 + 32);
  sub_1DD6E58C4();

  return v43(v40, v41, v42, v43, v44, v45, v46, v47, v49, v50, a11, a12, a13, a14);
}

uint64_t SessionServerMessage.init(sessionId:clientRequestId:clientSessionId:timestamp:payload:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1DD6FF8A8();
  v52 = v15;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  sub_1DD6F9E24();
  v24 = sub_1DD874820();
  sub_1DD6DDEAC(v24);
  v26 = *(v25 + 16);
  v27 = sub_1DD826680();
  v28(v27);
  v29 = type metadata accessor for SessionServerMessage(0);
  sub_1DD6E0508(v29);
  _s16IntelligenceFlow15SessionClientIDVACycfC_0();
  v30 = sub_1DD825864();
  v31(v30, v24);
  v32 = v29[6];
  sub_1DD6E0C90();
  sub_1DD6E5E68(v33, v34, v35, v24);
  v36 = v29[8];
  sub_1DD6E27BC();
  sub_1DD6E59B8();
  v37 = (v14 + v29[7]);
  *v37 = v23;
  v37[1] = v21;
  v38 = (v14 + v29[9]);
  *v38 = v19;
  v38[1] = v17;
  v39 = v29[10];
  v40 = sub_1DD874790();
  sub_1DD6DF448(v40);
  v42 = *(v41 + 32);
  sub_1DD6E58C4();

  return v46(v43, v44, v45, v46, v47, v48, v49, v50, a9, v52, a11, a12, a13, a14);
}

uint64_t sub_1DD79AB30(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x496E6F6973736573 && a2 == 0xE900000000000064;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6449746E657665 && a2 == 0xE700000000000000;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6576457972657571 && a2 == 0xEC0000006449746ELL;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6552746E65696C63 && a2 == 0xEF64497473657571;
        if (v8 || (sub_1DD875A30() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x64616F6C796170 && a2 == 0xE700000000000000;
          if (v9 || (sub_1DD875A30() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6553746E65696C63 && a2 == 0xEF64496E6F697373;
            if (v10 || (sub_1DD875A30() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
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

uint64_t sub_1DD79AD80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD79AB30(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD79ADA8(uint64_t a1)
{
  v2 = sub_1DD6F3014();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD79ADE4(uint64_t a1)
{
  v2 = sub_1DD6F3014();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD79AE30(uint64_t a1)
{
  v2 = sub_1DD6F436C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD79AE6C(uint64_t a1)
{
  v2 = sub_1DD6F436C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD79AEB4(uint64_t a1)
{
  v2 = sub_1DD79AF70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD79AEF0(uint64_t a1)
{
  v2 = sub_1DD79AF70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1DD79AF70()
{
  result = qword_1ECD10BF8;
  if (!qword_1ECD10BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10BF8);
  }

  return result;
}

uint64_t sub_1DD79AFE8(uint64_t a1)
{
  v2 = sub_1DD79B0A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD79B024(uint64_t a1)
{
  v2 = sub_1DD79B0A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1DD79B0A4()
{
  result = qword_1ECD10C08;
  if (!qword_1ECD10C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10C08);
  }

  return result;
}

uint64_t sub_1DD79B160()
{
  v4 = sub_1DD825000();
  v6 = v5(v4);
  v7 = sub_1DD701458(v6);
  v8 = v0(v7);
  v9 = sub_1DD6DE1C4(v8);
  v11 = *(v10 + 16);

  return v11(v2, v1 + v3, v9);
}

uint64_t static MessagePayload.StepExecutedWithReturnedValue.== infix(_:_:)()
{
  sub_1DD6E1F34();
  v3 = *(v2 + 8);
  v4 = v0[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *v1 == *v0 && v3 == v4;
      if (v5 || (sub_1DD875A30() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  if (v4)
  {
    return 0;
  }

LABEL_8:
  v6 = type metadata accessor for MessagePayload.StepExecutedWithReturnedValue(0);
  sub_1DD6F4D70(v6);

  return _s16IntelligenceFlow13SnippetStreamV2eeoiySbAC_ACtFZ_0();
}

uint64_t sub_1DD79B26C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x80000001DD8B6430 == a2;
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

uint64_t sub_1DD79B338(char a1)
{
  if (a1)
  {
    return 0x65756C6176;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_1DD79B378@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD79B26C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD79B3A0(uint64_t a1)
{
  v2 = sub_1DD79B550();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD79B3DC(uint64_t a1)
{
  v2 = sub_1DD79B550();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.StepExecutedWithReturnedValue.encode(to:)()
{
  sub_1DD826CE0();
  sub_1DD6F8C0C();
  v2 = sub_1DD710A9C(&qword_1ECD10C10, &qword_1DD889120);
  sub_1DD6E49A8(v2);
  v4 = *(v3 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6DE340();
  sub_1DD6DEAD0();
  sub_1DD79B550();
  sub_1DD8250D8();
  sub_1DD875BB0();
  v6 = *v1;
  v7 = v1[1];
  sub_1DD705FD8();
  sub_1DD825620();
  sub_1DD875920();
  if (!v0)
  {
    v8 = *(type metadata accessor for MessagePayload.StepExecutedWithReturnedValue(0) + 20);
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

unint64_t sub_1DD79B550()
{
  result = qword_1ECD10C18;
  if (!qword_1ECD10C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10C18);
  }

  return result;
}

void MessagePayload.StepExecutedWithReturnedValue.init(from:)()
{
  sub_1DD6DED2C();
  sub_1DD70068C();
  v27 = sub_1DD874FA0();
  v5 = sub_1DD6DDEAC(v27);
  v25 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6E6200();
  v28 = sub_1DD710A9C(&qword_1ECD10C20, &qword_1DD889128);
  sub_1DD6DDEAC(v28);
  v26 = v9;
  v11 = *(v10 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v12);
  v13 = sub_1DD6E27D4();
  v14 = type metadata accessor for MessagePayload.StepExecutedWithReturnedValue(v13);
  v15 = sub_1DD8247B4(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1DD6DE4A8();
  sub_1DD700C78();
  v18 = v0[3];
  v19 = v0[4];
  sub_1DD824D14(v0);
  sub_1DD79B550();
  sub_1DD8259BC();
  sub_1DD8268F0();
  sub_1DD875B90();
  if (v2)
  {
    sub_1DD6E1EC8(v0);
  }

  else
  {
    sub_1DD8259A4();
    sub_1DD8258D0();
    *v3 = sub_1DD875820();
    v3[1] = v20;
    sub_1DD6DEC54();
    sub_1DD6E05D4();
    sub_1DD6E1E84(v21);
    sub_1DD826808();
    sub_1DD8258D0();
    sub_1DD8758D0();
    v22 = *(v26 + 8);
    v23 = sub_1DD705C50();
    v24(v23);
    (*(v25 + 32))(v3 + *(v1 + 20), v4, v27);
    sub_1DD7006C0();
    sub_1DD6E5870();
    sub_1DD6E1EC8(v0);
    sub_1DD8259EC();
    sub_1DD6E5ABC();
  }

  sub_1DD792AF8();
  sub_1DD6E0C78();
}

id MessagePayload.SessionError.error.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  return sub_1DD719000(v2);
}

uint64_t MessagePayload.SessionError.init(error:hierarchy:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 8);
  *a3 = *result;
  *(a3 + 8) = v3;
  *(a3 + 16) = a2;
  return result;
}

id MessagePayload.SessionError.init(error:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  sub_1DD710A9C(&qword_1ECD10C28, &qword_1DD889130);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1DD8782E0;
  *(v5 + 32) = v3;
  *(v5 + 40) = v4;
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;

  return sub_1DD719000(v3);
}

uint64_t MessagePayload.SessionError.localizedDescription.getter()
{
  v1 = *v0;
  swift_getErrorValue();
  v2 = v1;
  sub_1DD7029A8();
  sub_1DD875AB0();
  sub_1DD71900C(v1);
  return sub_1DD705564();
}

void static MessagePayload.SessionError.== infix(_:_:)()
{
  sub_1DD6DEB38();
  v1 = *v0;
  v2 = *(v0 + 16);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  if (*(v0 + 8))
  {
    sub_1DD719000(*v0);
    v7 = sub_1DD6F4D4C();
    sub_1DD719000(v7);
    sub_1DD719000(v1);
    v8 = v1;
    if ((v5 & 1) == 0)
    {
LABEL_3:
      v9 = v4;
      v10 = sub_1DD874670();
      v11 = sub_1DD826F6C();
      sub_1DD71900C(v11);
      goto LABEL_6;
    }
  }

  else
  {
    v12 = sub_1DD6F4D4C();
    sub_1DD719000(v12);
    sub_1DD719000(v1);
    v8 = sub_1DD874670();
    if ((v5 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v10 = v4;
LABEL_6:
  sub_1DD804C4C(0, &qword_1ECD0E2A8, 0x1E69E58C0);
  sub_1DD6E594C();
  v13 = sub_1DD8755A0();

  v14 = sub_1DD6F4D4C();
  sub_1DD71900C(v14);
  sub_1DD71900C(v1);
  if (v13)
  {
    sub_1DD6E5F58();
    sub_1DD6DFED0();

    sub_1DD716BF4();
  }

  else
  {
    sub_1DD6DFED0();
  }
}

uint64_t sub_1DD79BAE4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F727265 && a2 == 0xE500000000000000;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6863726172656968 && a2 == 0xE900000000000079)
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

uint64_t sub_1DD79BBB0(char a1)
{
  if (a1)
  {
    return 0x6863726172656968;
  }

  else
  {
    return 0x726F727265;
  }
}

uint64_t sub_1DD79BBF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD79BAE4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD79BC18(uint64_t a1)
{
  v2 = sub_1DD7FBFA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD79BC54(uint64_t a1)
{
  v2 = sub_1DD7FBFA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.SessionError.encode(to:)()
{
  sub_1DD6DED2C();
  sub_1DD700858();
  v2 = sub_1DD710A9C(&qword_1ECD10C30, &qword_1DD889138);
  sub_1DD6E49A8(v2);
  v4 = *(v3 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6DEA6C();
  v6 = *v0;
  v7 = *(v0 + 8);
  v11 = *(v0 + 16);
  v8 = sub_1DD8267D8();
  sub_1DD6E7320(v8);
  sub_1DD719000(v6);
  sub_1DD7FBFA0();
  sub_1DD6E17D8();
  sub_1DD825680();
  sub_1DD875BB0();
  sub_1DD7FBFF4();
  sub_1DD792A28();
  sub_1DD6E5334();
  sub_1DD8759D0();
  sub_1DD71900C(v6);
  if (!v1)
  {
    sub_1DD6FF8F4();
    sub_1DD710A9C(&qword_1ECD10C48, &qword_1DD889140);
    sub_1DD7FC048();
    sub_1DD792A28();
    sub_1DD6E9630();
    sub_1DD8759D0();
  }

  v9 = sub_1DD6DE58C();
  v10(v9);
  sub_1DD6E0CE8();
  sub_1DD6E0C78();
}

void MessagePayload.SessionError.init(from:)()
{
  sub_1DD6DED2C();
  sub_1DD825058();
  v3 = sub_1DD710A9C(&qword_1ECD10C58, &qword_1DD889148);
  sub_1DD6DDEAC(v3);
  v5 = *(v4 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD6DDFE4();
  sub_1DD6DE568();
  sub_1DD7FBFA0();
  sub_1DD6ED2A4();
  if (v1)
  {
    sub_1DD6E1EC8(v0);
  }

  else
  {
    sub_1DD7FC0CC();
    sub_1DD826F48();
    sub_1DD82499C();
    sub_1DD8758D0();
    sub_1DD710A9C(&qword_1ECD10C48, &qword_1DD889140);
    sub_1DD6FF8F4();
    sub_1DD7FC120();
    sub_1DD826F48();
    sub_1DD825198();
    sub_1DD6FAE18();
    sub_1DD8758D0();
    v7 = sub_1DD6DFF30();
    v8(v7);
    *v2 = v9;
    *(v2 + 8) = v10;
    *(v2 + 16) = v9;
    sub_1DD719000(v9);

    sub_1DD6E1EC8(v0);
    sub_1DD71900C(v9);
  }

  sub_1DD6DF120();
  sub_1DD6E0C78();
}

uint64_t MessagePayload.PlannerReturnedRawPlan.plan.setter()
{
  sub_1DD6DE304();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t MessagePayload.PlannerReturnedRawPlan.appIntentInvocationPreviews.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

IntelligenceFlow::MessagePayload::PlannerReturnedRawPlan __swiftcall MessagePayload.PlannerReturnedRawPlan.init(plan:)(IntelligenceFlow::MessagePayload::PlannerReturnedRawPlan plan)
{
  *v1 = plan.plan;
  *(v1 + 16) = 2;
  *(v1 + 24) = MEMORY[0x1E69E7CC0];
  return plan;
}

uint64_t sub_1DD79C0F4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000017 && 0x80000001DD8B6450 == a2;
  if (v3 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7265764F6E616C70 && a2 == 0xEC00000065646972;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E616C506C6C7566 && a2 == 0xEB0000000072656ELL;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000020 && 0x80000001DD8B6470 == a2;
        if (v8 || (sub_1DD875A30() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000016 && 0x80000001DD8B64A0 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_1DD875A30();

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

unint64_t sub_1DD79C2A8(char a1)
{
  result = 0x7265764F6E616C70;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6E616C506C6C7566;
      break;
    case 3:
      result = 0xD000000000000020;
      break;
    case 4:
      result = 0xD000000000000016;
      break;
    default:
      result = 0xD000000000000017;
      break;
  }

  return result;
}

uint64_t sub_1DD79C370@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD79C0F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD79C398(uint64_t a1)
{
  v2 = sub_1DD7FC1A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD79C3D4(uint64_t a1)
{
  v2 = sub_1DD7FC1A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD79C410(uint64_t a1)
{
  v2 = sub_1DD7FC2A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD79C44C(uint64_t a1)
{
  v2 = sub_1DD7FC2A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD79C488(uint64_t a1)
{
  v2 = sub_1DD7FC2F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD79C4C4(uint64_t a1)
{
  v2 = sub_1DD7FC2F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD79C500(uint64_t a1)
{
  v2 = sub_1DD7FC348();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD79C53C(uint64_t a1)
{
  v2 = sub_1DD7FC348();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD79C578(uint64_t a1)
{
  v2 = sub_1DD7FC1F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD79C5B4(uint64_t a1)
{
  v2 = sub_1DD7FC1F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD79C5F0(uint64_t a1)
{
  v2 = sub_1DD7FC24C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD79C62C(uint64_t a1)
{
  v2 = sub_1DD7FC24C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.PlannerReturnedRawPlan.Source.encode(to:)()
{
  sub_1DD6DED2C();
  sub_1DD826F30();
  v2 = sub_1DD710A9C(&qword_1ECD10C70, &qword_1DD889150);
  sub_1DD6DDEAC(v2);
  v4 = *(v3 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD82480C(v6, v40);
  v7 = sub_1DD710A9C(&qword_1ECD10C78, &qword_1DD889158);
  sub_1DD6DDEAC(v7);
  v9 = *(v8 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1DD6E9924(v11, v41);
  v12 = sub_1DD710A9C(&qword_1ECD10C80, &qword_1DD889160);
  sub_1DD6DDEAC(v12);
  v14 = *(v13 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1DD82495C(v16, v42);
  v17 = sub_1DD710A9C(&qword_1ECD10C88, &qword_1DD889168);
  sub_1DD6DDEAC(v17);
  v19 = *(v18 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v20);
  sub_1DD824948(v21, v43);
  v22 = sub_1DD710A9C(&qword_1ECD10C90, &qword_1DD889170);
  sub_1DD6DDEAC(v22);
  v24 = *(v23 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v25);
  sub_1DD6E9560();
  v26 = sub_1DD710A9C(&qword_1ECD10C98, &qword_1DD889178);
  sub_1DD6E125C(v26);
  v28 = v27;
  v30 = *(v29 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v31);
  sub_1DD6E7258();
  v32 = *v0;
  v33 = v1[3];
  v34 = v1[4];
  sub_1DD825500(v1);
  sub_1DD7FC1A4();
  sub_1DD7039CC();
  sub_1DD875BB0();
  switch(v32)
  {
    case 1:
      sub_1DD7FC2F4();
      sub_1DD827458();
      sub_1DD824848();
      sub_1DD875910();
      goto LABEL_7;
    case 2:
      sub_1DD6E0FF8();
      sub_1DD7FC2A0();
      sub_1DD824848();
      sub_1DD875910();
      goto LABEL_7;
    case 3:
      sub_1DD7FC24C();
      sub_1DD824848();
      sub_1DD875910();
      goto LABEL_7;
    case 4:
      sub_1DD6E70D8();
      sub_1DD7FC1F8();
      sub_1DD824848();
      sub_1DD875910();
LABEL_7:
      v35 = sub_1DD6DED98();
      break;
    default:
      sub_1DD7FC348();
      sub_1DD824848();
      sub_1DD875910();
      v35 = sub_1DD6ED80C();
      break;
  }

  v36(v35);
  v37 = *(v28 + 8);
  v38 = sub_1DD825570();
  v39(v38);
  sub_1DD8268CC();
  sub_1DD6E0C78();
}

void MessagePayload.PlannerReturnedRawPlan.Source.init(from:)()
{
  sub_1DD6DED2C();
  sub_1DD826784();
  v68 = v2;
  v3 = sub_1DD710A9C(&qword_1ECD10CD0, &qword_1DD889180);
  sub_1DD6DDEAC(v3);
  v5 = *(v4 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD6E0C6C();
  sub_1DD8268E4(v7);
  v8 = sub_1DD710A9C(&qword_1ECD10CD8, &qword_1DD889188);
  sub_1DD6DDEAC(v8);
  v10 = *(v9 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1DD824F70(v12);
  v13 = sub_1DD710A9C(&qword_1ECD10CE0, &qword_1DD889190);
  sub_1DD6DDEAC(v13);
  v15 = *(v14 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1DD82486C(v17, v66);
  v18 = sub_1DD710A9C(&qword_1ECD10CE8, &qword_1DD889198);
  sub_1DD6DDEAC(v18);
  v20 = *(v19 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v21);
  sub_1DD6E7258();
  v22 = sub_1DD710A9C(&qword_1ECD10CF0, &qword_1DD8891A0);
  sub_1DD6E125C(v22);
  v24 = *(v23 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v25);
  sub_1DD6DEA6C();
  v26 = sub_1DD710A9C(&qword_1ECD10CF8, &unk_1DD8891A8);
  sub_1DD6DDEAC(v26);
  v69 = v27;
  v29 = *(v28 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v30);
  sub_1DD6E17C8();
  v32 = v1[3];
  v31 = v1[4];
  sub_1DD6E7320(v1);
  sub_1DD7FC1A4();
  sub_1DD875B90();
  if (!v70)
  {
    v33 = sub_1DD875900();
    sub_1DD6ED750(v33, 0);
    sub_1DD826B24();
    if (v34)
    {
      v35 = v69;
    }

    else
    {
      sub_1DD6E6120();
      sub_1DD6E42A8();
      if (v36 == v37)
      {
        __break(1u);
        return;
      }

      v67 = *(v43 + v42);
      v44 = sub_1DD77E6E4(v38, v39, v40, v41, v42);
      sub_1DD6ED830(v44);
      v46 = v45;
      v48 = v47;
      swift_unknownObjectRelease();
      if (v46 == v48 >> 1)
      {
        switch(v67)
        {
          case 1:
            sub_1DD7FC2F4();
            sub_1DD8257E0();
            sub_1DD827268();
            swift_unknownObjectRelease();
            goto LABEL_18;
          case 2:
            sub_1DD6E0FF8();
            sub_1DD7FC2A0();
            sub_1DD8257E0();
            sub_1DD827268();
            swift_unknownObjectRelease();
            goto LABEL_18;
          case 3:
            sub_1DD7FC24C();
            sub_1DD8257E0();
            sub_1DD827268();
            swift_unknownObjectRelease();
LABEL_18:
            v49 = sub_1DD6E61C4();
            break;
          case 4:
            sub_1DD6E70D8();
            sub_1DD7FC1F8();
            sub_1DD8257E0();
            sub_1DD827268();
            swift_unknownObjectRelease();
            v49 = sub_1DD705E24();
            break;
          default:
            sub_1DD7FC348();
            sub_1DD8257E0();
            sub_1DD827268();
            swift_unknownObjectRelease();
            v49 = sub_1DD6E61C4();
            v51 = v0;
            break;
        }

        v50(v49, v51);
        v63 = *(v69 + 8);
        v64 = sub_1DD6ED180();
        v65(v64);
        *v68 = v67;
        sub_1DD6E1EC8(v1);
        goto LABEL_13;
      }

      v35 = v69;
    }

    sub_1DD875740();
    sub_1DD6E41BC();
    v53 = v52;
    v54 = *(sub_1DD710A9C(&qword_1ECD0E158, &qword_1DD876EC0) + 48);
    *v53 = &type metadata for MessagePayload.PlannerReturnedRawPlan.Source;
    sub_1DD875810();
    sub_1DD6DF100();
    v55 = *MEMORY[0x1E69E6AF8];
    sub_1DD824B14();
    v57 = *(v56 + 104);
    v58 = sub_1DD6FEB10();
    v59(v58);
    swift_willThrow();
    swift_unknownObjectRelease();
    v60 = *(v35 + 8);
    v61 = sub_1DD6ED180();
    v62(v61);
  }

  sub_1DD6E1EC8(v1);
LABEL_13:
  sub_1DD6E429C();
  sub_1DD6E0C78();
}

void static MessagePayload.PlannerReturnedRawPlan.== infix(_:_:)(uint64_t a1)
{
  v1 = sub_1DD6E27E8(a1);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v1 == *v2 && *(v3 + 8) == *(v2 + 8);
  if (v8 || (sub_1DD875A30()) && v4 == v6)
  {
    sub_1DD6DDEFC();

    sub_1DD715F90();
  }
}

uint64_t sub_1DD79D10C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1851878512 && a2 == 0xE400000000000000;
  if (v3 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD00000000000001BLL && 0x80000001DD8B64C0 == a2)
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

uint64_t sub_1DD79D220(char a1)
{
  if (!a1)
  {
    return 1851878512;
  }

  if (a1 == 1)
  {
    return 0x656372756F73;
  }

  return 0xD00000000000001BLL;
}

uint64_t sub_1DD79D278@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD79D10C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD79D2A0(uint64_t a1)
{
  v2 = sub_1DD7FCA58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD79D2DC(uint64_t a1)
{
  v2 = sub_1DD7FCA58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.PlannerReturnedRawPlan.encode(to:)()
{
  sub_1DD6DED2C();
  sub_1DD700858();
  v2 = sub_1DD710A9C(&qword_1ECD10D00, &qword_1DD8891B8);
  sub_1DD6DDEAC(v2);
  v4 = *(v3 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6DEA6C();
  v6 = *v0;
  v7 = v0[1];
  sub_1DD826A0C();
  v11 = v0[3];
  v8 = sub_1DD8267D8();
  sub_1DD6E7320(v8);
  sub_1DD7FCA58();
  sub_1DD6E17D8();
  sub_1DD825680();
  sub_1DD875BB0();
  sub_1DD824B80();
  sub_1DD6E0E40();
  sub_1DD875970();
  if (!v1)
  {
    sub_1DD6E4104();
    sub_1DD7FCAAC();
    sub_1DD705E14();
    sub_1DD8759D0();
    sub_1DD8263D0();
    sub_1DD710A9C(&qword_1ECD10D18, &qword_1DD8891C0);
    sub_1DD7FCB00();
    sub_1DD826298();
    sub_1DD6FF6E0();
    sub_1DD8759D0();
  }

  v9 = sub_1DD6EEDBC();
  v10(v9);
  sub_1DD6E0CE8();
  sub_1DD6E0C78();
}

void MessagePayload.PlannerReturnedRawPlan.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12)
{
  sub_1DD6DED2C();
  sub_1DD8255B0();
  v17 = sub_1DD710A9C(&qword_1ECD10D30, &qword_1DD8891C8);
  sub_1DD6E125C(v17);
  v19 = *(v18 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v20);
  sub_1DD6DDFE4();
  sub_1DD6DE568();
  sub_1DD7FCA58();
  sub_1DD6ED2A4();
  if (v13)
  {
    sub_1DD6E1EC8(v12);
  }

  else
  {
    sub_1DD8259A4();
    sub_1DD6E5374();
    sub_1DD875870();
    sub_1DD825610();
    sub_1DD7FCBD8();
    sub_1DD705C28();
    sub_1DD8758D0();
    sub_1DD710A9C(&qword_1ECD10D18, &qword_1DD8891C0);
    sub_1DD8263D0();
    sub_1DD7FCC2C();
    sub_1DD825118();
    sub_1DD6FAE18();
    sub_1DD8758D0();
    v21 = sub_1DD6DEA2C();
    v22(v21);
    *v14 = v16;
    *(v14 + 8) = v15;
    *(v14 + 16) = a12;
    *(v14 + 24) = v23;

    sub_1DD824F80();
  }

  sub_1DD6DF120();
  sub_1DD6E0C78();
}

uint64_t MessagePayload.UserTurnStarted.turnId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return sub_1DD6DDEFC();
}

uint64_t MessagePayload.UserTurnStarted.turnId.setter()
{
  sub_1DD6DE304();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t MessagePayload.UserTurnStarted.siriRequestContext.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for MessagePayload.UserTurnStarted(v0) + 24);
  return sub_1DD6DDF9C();
}

uint64_t MessagePayload.UserTurnStarted.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  v1 = *(type metadata accessor for MessagePayload.UserTurnStarted(0) + 24);
  sub_1DD874B70();
  sub_1DD6E0C90();

  return sub_1DD6E5E68(v2, v3, v4, v5);
}

uint64_t MessagePayload.UserTurnStarted.init(turnId:siriRequestContext:)()
{
  sub_1DD824C64();
  *v3 = 0;
  v4 = *(type metadata accessor for MessagePayload.UserTurnStarted(0) + 24);
  sub_1DD874B70();
  sub_1DD6E0C90();
  sub_1DD6E5E68(v5, v6, v7, v8);
  *(v2 + 8) = v1;
  *(v2 + 16) = v0;
  return sub_1DD807414();
}

void static MessagePayload.UserTurnStarted.== infix(_:_:)()
{
  sub_1DD6DEB38();
  v3 = v2;
  v5 = v4;
  v6 = sub_1DD874B70();
  v7 = sub_1DD6DDEAC(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6ED3C0();
  v12 = sub_1DD710A9C(&qword_1ECD10D50, &qword_1DD8891D0);
  sub_1DD6DEA10(v12);
  v14 = *(v13 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1DD6DEA6C();
  v16 = sub_1DD710A9C(&qword_1ECD10D58, &qword_1DD8891D8);
  sub_1DD6DE1C4(v16);
  v18 = *(v17 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v19);
  sub_1DD82660C();
  if (*v5)
  {
    if (!*v3)
    {
      goto LABEL_19;
    }
  }

  else if (*v3)
  {
    goto LABEL_19;
  }

  v20 = *(v5 + 8) == *(v3 + 8) && *(v5 + 16) == *(v3 + 16);
  if (v20 || (sub_1DD875A30() & 1) != 0)
  {
    v21 = *(type metadata accessor for MessagePayload.UserTurnStarted(0) + 24);
    v22 = *(v16 + 48);
    sub_1DD82598C();
    sub_1DD700E60();
    sub_1DD82598C();
    sub_1DD700E60();
    sub_1DD6E26E4(v1);
    if (!v20)
    {
      sub_1DD6E5C7C();
      sub_1DD700E60();
      sub_1DD6E26E4(v1 + v22);
      if (!v23)
      {
        sub_1DD826A58();
        v26(v0, v1 + v22, v6);
        sub_1DD6EEDA4();
        sub_1DD6E1E84(v27);
        sub_1DD6DEA04();
        sub_1DD8750F0();
        v28 = *(v9 + 8);
        v29 = sub_1DD6DDEFC();
        v28(v29);
        v30 = sub_1DD770D4C();
        v28(v30);
        sub_1DD824154(v1, &qword_1ECD10D50);
        goto LABEL_19;
      }

      v24 = sub_1DD6DED98();
      v25(v24, v6);
LABEL_18:
      sub_1DD824154(v1, &qword_1ECD10D58);
      goto LABEL_19;
    }

    sub_1DD6E26E4(v1 + v22);
    if (!v20)
    {
      goto LABEL_18;
    }

    sub_1DD824154(v1, &qword_1ECD10D50);
  }

LABEL_19:
  sub_1DD6DFED0();
}

uint64_t static MessagePayload.UserTurn.== infix(_:_:)(_BYTE *a1, char *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if ((*a2 & 1) == 0)
    {
      return 0;
    }
  }

  else if (*a2)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_1DD79DB6C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1852994932 && a2 == 0xE400000000000000;
  if (v3 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x64496E727574 && a2 == 0xE600000000000000;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000012 && 0x80000001DD8B64E0 == a2)
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

uint64_t sub_1DD79DC80(char a1)
{
  if (!a1)
  {
    return 1852994932;
  }

  if (a1 == 1)
  {
    return 0x64496E727574;
  }

  return 0xD000000000000012;
}

uint64_t sub_1DD79DCD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD79DB6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD79DD00(uint64_t a1)
{
  v2 = sub_1DD7FCD24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD79DD3C(uint64_t a1)
{
  v2 = sub_1DD7FCD24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.UserTurnStarted.encode(to:)()
{
  sub_1DD826CE0();
  sub_1DD6F8C0C();
  v2 = sub_1DD710A9C(&qword_1ECD10D68, &qword_1DD8891E0);
  sub_1DD6E49A8(v2);
  v4 = *(v3 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6DE340();
  sub_1DD6DEAD0();
  sub_1DD7FCD24();
  sub_1DD8250D8();
  sub_1DD875BB0();
  v12 = *v1;
  sub_1DD7FCD78();
  sub_1DD7055A8();
  sub_1DD8759D0();
  if (!v0)
  {
    v6 = *(v1 + 1);
    v7 = *(v1 + 2);
    sub_1DD6E4104();
    sub_1DD825620();
    sub_1DD875970();
    v8 = *(type metadata accessor for MessagePayload.UserTurnStarted(0) + 24);
    sub_1DD8263D0();
    sub_1DD874B70();
    sub_1DD6EEDA4();
    sub_1DD6E1E84(v9);
    sub_1DD700E54();
    sub_1DD6E730C();
    sub_1DD875960();
  }

  v10 = sub_1DD825168();
  v11(v10);
  sub_1DD825790();
  sub_1DD826CF4();
}

void MessagePayload.UserTurnStarted.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  sub_1DD6DED2C();
  v16 = v15;
  v17 = sub_1DD710A9C(&qword_1ECD10D50, &qword_1DD8891D0);
  sub_1DD6DEA10(v17);
  v19 = *(v18 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v20);
  sub_1DD6DDFE4();
  v21 = sub_1DD710A9C(&qword_1ECD10D88, &qword_1DD8891E8);
  sub_1DD6DDEAC(v21);
  v43 = v22;
  v24 = *(v23 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v25);
  sub_1DD6E7258();
  v26 = type metadata accessor for MessagePayload.UserTurnStarted(0);
  v27 = sub_1DD6DEA10(v26);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  sub_1DD824734();
  *v14 = 0;
  *(v14 + 8) = 0;
  *(v14 + 16) = 0xE000000000000000;
  v31 = *(v30 + 32);
  v32 = sub_1DD874B70();
  sub_1DD6E0C90();
  sub_1DD6E5E68(v33, v34, v35, v32);
  v36 = v16[3];
  v37 = v16[4];
  sub_1DD824CF8(v16);
  sub_1DD7FCD24();
  sub_1DD7039CC();
  sub_1DD875B90();
  if (!v13)
  {
    sub_1DD7FCDCC();
    sub_1DD6F09C4();
    sub_1DD8758D0();
    *v14 = a13;
    sub_1DD6E4104();
    sub_1DD826118();
    *(v14 + 8) = sub_1DD875870();
    *(v14 + 16) = v38;
    sub_1DD8263D0();
    sub_1DD6EEDA4();
    sub_1DD6E1E84(v39);
    sub_1DD826118();
    sub_1DD875860();
    v40 = *(v43 + 8);
    v41 = sub_1DD8256EC();
    v42(v41);
    sub_1DD807414();
    sub_1DD701480();
    sub_1DD6E5870();
  }

  sub_1DD6E1EC8(v16);
  sub_1DD7061EC();
  sub_1DD6E5ABC();
  sub_1DD826464();
  sub_1DD6E0C78();
}

uint64_t sub_1DD79E1D8(uint64_t a1)
{
  v2 = sub_1DD7FCE20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD79E214(uint64_t a1)
{
  v2 = sub_1DD7FCE20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD79E2B8(uint64_t a1)
{
  v2 = sub_1DD7FCE74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD79E2F4(uint64_t a1)
{
  v2 = sub_1DD7FCE74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD79E374(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x686365657073 && a2 == 0xE600000000000000;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1954047348 && a2 == 0xE400000000000000)
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

uint64_t sub_1DD79E438(char a1)
{
  if (a1)
  {
    return 1954047348;
  }

  else
  {
    return 0x686365657073;
  }
}

uint64_t sub_1DD79E484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD79E374(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD79E4AC(uint64_t a1)
{
  v2 = sub_1DD7FCEC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD79E4E8(uint64_t a1)
{
  v2 = sub_1DD7FCEC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD79E524(uint64_t a1)
{
  v2 = sub_1DD7FCFC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD79E560(uint64_t a1)
{
  v2 = sub_1DD7FCFC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD79E59C(uint64_t a1)
{
  v2 = sub_1DD7FCF1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD79E5D8(uint64_t a1)
{
  v2 = sub_1DD7FCF1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.UserTurn.encode(to:)()
{
  sub_1DD6DED2C();
  sub_1DD826784();
  v2 = sub_1DD710A9C(&qword_1ECD10DC0, &qword_1DD889200);
  v28 = sub_1DD6DDEAC(v2);
  v4 = *(v3 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD82480C(v6, v26);
  v7 = sub_1DD710A9C(&qword_1ECD10DC8, &qword_1DD889208);
  v27 = sub_1DD6DDEAC(v7);
  v9 = *(v8 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1DD6F0A58();
  v11 = sub_1DD710A9C(&qword_1ECD10DD0, &qword_1DD889210);
  sub_1DD6DDEAC(v11);
  v13 = v12;
  v15 = *(v14 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1DD6DEBA0();
  v17 = *v0;
  v18 = v1[3];
  v19 = v1[4];
  sub_1DD824D14(v1);
  sub_1DD7FCEC8();
  sub_1DD6E4218();
  sub_1DD8274A0();
  sub_1DD875BB0();
  if (v17)
  {
    sub_1DD6FF8F4();
    sub_1DD7FCF1C();
    sub_1DD6F3128();
    sub_1DD875910();
    sub_1DD7FCF70();
    v20 = v28;
    sub_1DD8759D0();
    v21 = sub_1DD705E24();
  }

  else
  {
    sub_1DD7FCFC4();
    sub_1DD826808();
    sub_1DD6F3128();
    sub_1DD875910();
    sub_1DD7FD018();
    v20 = v27;
    sub_1DD8759D0();
    v21 = sub_1DD6E4290();
  }

  v22(v21, v20);
  v23 = *(v13 + 8);
  v24 = sub_1DD6E60FC();
  v25(v24);
  sub_1DD7536FC();
  sub_1DD6E0C78();
}

void MessagePayload.UserTurn.init(from:)()
{
  sub_1DD6DED2C();
  v47 = v3;
  v5 = v4;
  v46 = sub_1DD710A9C(&qword_1ECD10E00, &qword_1DD889218);
  sub_1DD6DDEAC(v46);
  v7 = *(v6 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6DEBA0();
  v9 = sub_1DD710A9C(&qword_1ECD10E08, &qword_1DD889220);
  sub_1DD6E49A8(v9);
  v11 = *(v10 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1DD6DDFE4();
  v13 = sub_1DD710A9C(&qword_1ECD10E10, &qword_1DD889228);
  sub_1DD6DDEAC(v13);
  v15 = *(v14 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1DD6DE340();
  v17 = v5[3];
  v18 = v5[4];
  sub_1DD824CF8(v5);
  sub_1DD7FCEC8();
  sub_1DD8256E0();
  sub_1DD875B90();
  if (!v0)
  {
    v48 = v5;
    v19 = sub_1DD875900();
    sub_1DD6ED750(v19, 0);
    sub_1DD826B7C();
    if (!v20)
    {
      sub_1DD6E6120();
      sub_1DD6E42A8();
      if (v27 == v28)
      {
        __break(1u);
        return;
      }

      v29 = *(v26 + v25);
      v30 = sub_1DD6F43D8(v21, v22, v23, v24, v25);
      sub_1DD6ED830(v30);
      sub_1DD6E0194();
      v32 = v31;
      swift_unknownObjectRelease();
      v2 = v1;
      if (!(v32 >> 1))
      {
        if (v29)
        {
          sub_1DD6FF8F4();
          sub_1DD7FCF1C();
          sub_1DD824AB4();
          sub_1DD875800();
          sub_1DD7FD06C();
          sub_1DD8250A8();
          sub_1DD8758D0();
          sub_1DD827394();
          swift_unknownObjectRelease();
          v41 = sub_1DD6E4290();
          v43 = v46;
        }

        else
        {
          sub_1DD7FCFC4();
          sub_1DD824AB4();
          sub_1DD875800();
          sub_1DD7FD0C0();
          sub_1DD6FE82C();
          sub_1DD8758D0();
          sub_1DD827394();
          swift_unknownObjectRelease();
          v41 = sub_1DD824C0C();
        }

        v42(v41, v43);
        v44 = sub_1DD824A60();
        v45(v44);
        *v47 = v29;
        sub_1DD6E1EC8(v5);
        goto LABEL_10;
      }
    }

    sub_1DD875740();
    sub_1DD6E41BC();
    sub_1DD82702C();
    v33 = *(sub_1DD710A9C(&qword_1ECD0E158, &qword_1DD876EC0) + 48);
    *v2 = &type metadata for MessagePayload.UserTurn;
    sub_1DD875810();
    sub_1DD6DF100();
    v34 = *MEMORY[0x1E69E6AF8];
    sub_1DD8250B8();
    v36 = *(v35 + 104);
    v37 = sub_1DD826518();
    v38(v37);
    swift_willThrow();
    swift_unknownObjectRelease();
    v39 = sub_1DD6E61C4();
    v40(v39, v13);
    v5 = v48;
  }

  sub_1DD6E1EC8(v5);
LABEL_10:
  sub_1DD6DF120();
  sub_1DD6E0C78();
}

uint64_t MessagePayload.Request.variables.getter()
{
  v1 = *(v0 + *(type metadata accessor for MessagePayload.Request(0) + 20));
}

uint64_t MessagePayload.Request.variables.setter()
{
  v2 = sub_1DD6DE290();
  v3 = *(type metadata accessor for MessagePayload.Request(v2) + 20);
  v4 = *(v1 + v3);

  *(v1 + v3) = v0;
  return result;
}

uint64_t MessagePayload.Request.variables.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for MessagePayload.Request(v0) + 20);
  return sub_1DD6DDF9C();
}

uint64_t MessagePayload.Request.safetyMode.setter()
{
  v2 = sub_1DD6DE290();
  result = type metadata accessor for MessagePayload.Request(v2);
  *(v1 + *(result + 24)) = v0;
  return result;
}

uint64_t MessagePayload.Request.safetyMode.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for MessagePayload.Request(v0) + 24);
  return sub_1DD6DDF9C();
}

uint64_t MessagePayload.Request.prescribedPlan.getter()
{
  v2 = sub_1DD6E0A5C();
  v3 = (v1 + *(type metadata accessor for MessagePayload.Request(v2) + 28));
  v4 = v3[2];
  v5 = v3[1];
  v6 = *(v3 + 41);
  *v0 = *v3;
  v0[1] = v5;
  v0[2] = v4;
  *(v0 + 41) = v6;
  return sub_1DD700E60();
}

__n128 MessagePayload.Request.prescribedPlan.setter()
{
  v2 = sub_1DD6DE290();
  v3 = (v1 + *(type metadata accessor for MessagePayload.Request(v2) + 28));
  v7[0] = v3[2];
  *(v7 + 9) = *(v3 + 41);
  v4 = v3[1];
  v6[0] = *v3;
  v6[1] = v4;
  sub_1DD824154(v6, &unk_1ECD10E28);
  sub_1DD6FEB38();
  v3[2] = *(v0 + 32);
  result = *(v0 + 41);
  *(v3 + 41) = result;
  return result;
}

uint64_t MessagePayload.Request.prescribedPlan.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for MessagePayload.Request(v0) + 28);
  return sub_1DD6DDF9C();
}

uint64_t sub_1DD79EFF4()
{
  v0 = sub_1DD825338();
  v2 = *(v1(v0) + 32);
  return sub_1DD8263B0();
}

uint64_t MessagePayload.Request.rewriteMetadataEventID.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for MessagePayload.Request(v0) + 32);
  return sub_1DD6DDF9C();
}

uint64_t MessagePayload.Request.rewriteMetadataInlined.getter()
{
  v0 = sub_1DD6E0A5C();
  v1 = type metadata accessor for MessagePayload.Request(v0);
  v2 = sub_1DD825320(*(v1 + 36));
  return sub_1DD6FF5F4(v2, v3);
}

double MessagePayload.Request.rewriteMetadataInlined.setter(__int128 *a1)
{
  v1 = sub_1DD82580C(a1);
  v2 = type metadata accessor for MessagePayload.Request(v1);
  v3 = sub_1DD6E3A44(*(v2 + 36));
  v5 = sub_1DD6FE2E0(v3, v4);
  *&result = sub_1DD82640C(v5, v6, v7, v8, v9, v10, v11, v12, v13).n128_u64[0];
  return result;
}

uint64_t MessagePayload.Request.rewriteMetadataInlined.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for MessagePayload.Request(v0) + 36);
  return sub_1DD6DDF9C();
}

uint64_t MessagePayload.Request.suggestedInvocation.getter()
{
  v2 = sub_1DD6E0A5C();
  v3 = (v1 + *(type metadata accessor for MessagePayload.Request(v2) + 40));
  v4 = v3[1];
  *v0 = *v3;
  v0[1] = v4;
}

uint64_t MessagePayload.Request.suggestedInvocation.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = type metadata accessor for MessagePayload.Request(0);
  result = sub_1DD6F43C0(*(v4 + 40));
  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t MessagePayload.Request.suggestedInvocation.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for MessagePayload.Request(v0) + 40);
  return sub_1DD6DDF9C();
}

uint64_t MessagePayload.Request.siriRequestContext.getter()
{
  v0 = sub_1DD6E0A5C();
  v1 = *(type metadata accessor for MessagePayload.Request(v0) + 44);
  return sub_1DD700E60();
}

uint64_t MessagePayload.Request.siriRequestContext.setter()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for MessagePayload.Request(v0) + 44);
  sub_1DD826F84();
  return sub_1DD807414();
}

uint64_t MessagePayload.Request.siriRequestContext.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for MessagePayload.Request(v0) + 44);
  return sub_1DD6DDF9C();
}

uint64_t MessagePayload.Request.init(content:safetyMode:)(uint64_t a1, char a2)
{
  v4 = sub_1DD6F9E24();
  v5 = type metadata accessor for MessagePayload.Request(v4);
  *(v2 + v5[5]) = 0;
  sub_1DD8269E4(v2 + v5[7]);
  v7 = *(v6 + 32);
  sub_1DD874820();
  sub_1DD6E0C90();
  sub_1DD6E5E68(v8, v9, v10, v11);
  sub_1DD6F448C(v5[9]);
  *(v12 + 16) = 0;
  sub_1DD6F448C(v5[10]);
  v13 = v5[11];
  sub_1DD874B70();
  sub_1DD6E0C90();
  sub_1DD6E5E68(v14, v15, v16, v17);
  sub_1DD6E0E18();
  sub_1DD6E87AC();
  result = sub_1DD6E59B8();
  *(v2 + v5[6]) = a2;
  return result;
}

uint64_t MessagePayload.Request.init(content:variables:safetyMode:prescribedPlan:rewriteMetadataEventID:rewriteMetadataInlined:siriRequestContext:)(uint64_t a1, uint64_t a2, char a3, _OWORD *a4)
{
  sub_1DD82758C();
  v13 = sub_1DD826D58(v7, v8, v9, v10, v11, v12);
  v14 = v13[5];
  v15 = v4 + v13[7];
  *(v15 + 48) = 0;
  *(v15 + 16) = 0u;
  *(v15 + 32) = 0u;
  *v15 = 0u;
  *(v15 + 56) = -1;
  v16 = v13[8];
  sub_1DD874820();
  sub_1DD6E0C90();
  sub_1DD6E5E68(v17, v18, v19, v20);
  v21 = v4 + v13[9];
  sub_1DD827360();
  sub_1DD6F448C(v13[10]);
  v22 = v13[11];
  sub_1DD874B70();
  sub_1DD6E0C90();
  sub_1DD6E5E68(v23, v24, v25, v26);
  sub_1DD6E0E18();
  sub_1DD6F441C();
  sub_1DD6E59B8();
  *(v4 + v14) = v5;
  *(v4 + v13[6]) = a3;
  *&v36[9] = *(v15 + 41);
  v27 = *(v15 + 32);
  v35[1] = *(v15 + 16);
  *v36 = v27;
  v35[0] = *v15;
  sub_1DD824154(v35, &unk_1ECD10E28);
  v28 = a4[1];
  *v15 = *a4;
  *(v15 + 16) = v28;
  *(v15 + 32) = a4[2];
  *(v15 + 41) = *(a4 + 41);
  sub_1DD807414();
  v29 = sub_1DD82676C();
  sub_1DD6FE2E0(v29, v30);
  *v21 = v34;
  *(v21 + 16) = v33;
  return sub_1DD807414();
}

uint64_t MessagePayload.Request.init(content:)()
{
  v2 = sub_1DD6E0A5C();
  v3 = type metadata accessor for MessagePayload.Request(v2);
  v4 = sub_1DD826354(v3);
  *(v0 + v5) = 0;
  sub_1DD8269E4(v0 + *(v4 + 28));
  v7 = *(v6 + 32);
  sub_1DD874820();
  sub_1DD6E0C90();
  sub_1DD6E5E68(v8, v9, v10, v11);
  v12 = (v0 + v1[9]);
  *v12 = 0;
  v12[1] = 0;
  v12[2] = 0;
  v13 = (v0 + v1[10]);
  *v13 = 0;
  v13[1] = 0;
  v14 = v1[11];
  sub_1DD874B70();
  sub_1DD6E0C90();
  sub_1DD6E5E68(v15, v16, v17, v18);
  sub_1DD6E0E18();
  sub_1DD6E21D0();
  result = sub_1DD6E59B8();
  *(v0 + v1[6]) = 0;
  return result;
}

void static MessagePayload.Request.== infix(_:_:)()
{
  sub_1DD6DEB38();
  v4 = v3;
  sub_1DD827638();
  v5 = sub_1DD874B70();
  v6 = sub_1DD6DDEAC(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD6DDEE8();
  v147 = v11;
  v12 = sub_1DD710A9C(&qword_1ECD10D50, &qword_1DD8891D0);
  sub_1DD6DEA10(v12);
  v14 = *(v13 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1DD6E0C6C();
  v148 = sub_1DD710A9C(&qword_1ECD10D58, &qword_1DD8891D8);
  sub_1DD6DE1C4(v148);
  v17 = *(v16 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v18);
  sub_1DD6E0C6C();
  v149 = v19;
  sub_1DD6E9A9C();
  v20 = sub_1DD874820();
  v21 = sub_1DD6DDEAC(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1DD6E535C();
  v26 = sub_1DD710A9C(&qword_1ECD0E540, &qword_1DD878B10);
  sub_1DD6DEA10(v26);
  v28 = *(v27 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v29);
  sub_1DD6DE340();
  v150 = sub_1DD710A9C(&qword_1ECD10E30, &qword_1DD889238);
  sub_1DD6DE1C4(v150);
  v31 = *(v30 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v32);
  sub_1DD82660C();
  sub_1DD6E6384();
  static MessagePayload.RequestContent.== infix(_:_:)();
  if ((v33 & 1) == 0)
  {
    goto LABEL_26;
  }

  v145 = v8;
  v146 = v5;
  v34 = type metadata accessor for MessagePayload.Request(0);
  v35 = v34[5];
  v36 = *(v4 + v35);
  if (*(v2 + v35))
  {
    if (!v36)
    {
      goto LABEL_26;
    }

    v37 = *(v4 + v35);
    v38 = v0;
    v39 = v1;
    v40 = v23;
    v41 = v20;
    v42 = v2;
    v43 = v4;
    v44 = v34;

    sub_1DD825674();
    sub_1DD7A874C();
    v46 = v45;

    v34 = v44;
    v4 = v43;
    v2 = v42;
    v20 = v41;
    v23 = v40;
    v1 = v39;
    v0 = v38;
    if ((v46 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else if (v36)
  {
    goto LABEL_26;
  }

  if (*(v2 + v34[6]) != *(v4 + v34[6]))
  {
    goto LABEL_26;
  }

  v47 = (v2 + v34[7]);
  v48 = v47[1];
  *v176 = v47[2];
  *&v176[9] = *(v47 + 41);
  v49 = v47[1];
  v174 = *v47;
  v175 = v49;
  v50 = (v4 + v34[7]);
  *&v179[9] = *(v50 + 41);
  v51 = v50[2];
  v52 = *v50;
  v53 = *v50;
  v178 = v50[1];
  *v179 = v51;
  v177 = v52;
  v170 = v174;
  v171 = v48;
  v172 = v47[2];
  *&v169[7] = v53;
  v173 = *(v47 + 6);
  *&v169[23] = v178;
  *&v169[39] = v50[2];
  *&v169[55] = *(v50 + 6);
  v54 = v179[24];
  if (v176[24] == 255)
  {
    if (v179[24] != 255)
    {
      v56 = v176[24];
      sub_1DD6FF6A4();
      sub_1DD700E60();
      sub_1DD6FF6A4();
      sub_1DD700E60();
      goto LABEL_20;
    }

    v143 = v34;
    v57 = v47[1];
    v162 = *v47;
    v163 = v57;
    *v164 = v47[2];
    *&v164[16] = *(v47 + 6);
    v164[24] = -1;
    sub_1DD700E60();
    sub_1DD700E60();
    sub_1DD824154(&v162, &unk_1ECD10E28);
  }

  else
  {
    v55 = v47[2];
    v163 = v47[1];
    *v164 = v55;
    *&v164[16] = *(v47 + 6);
    v162 = *v47;
    v164[24] = v176[24];
    v159 = v162;
    v160 = v163;
    *v161 = v55;
    *&v161[9] = *&v164[9];
    if (v179[24] == 255)
    {
      v56 = v176[24];
      v156 = v162;
      v157 = v163;
      *v158 = *v164;
      *&v158[9] = *&v164[9];
      sub_1DD6FF6A4();
      sub_1DD700E60();
      sub_1DD6FF6A4();
      sub_1DD700E60();
      sub_1DD6FF6A4();
      sub_1DD700E60();
      sub_1DD7FD114(&v156);
LABEL_20:
      v162 = v170;
      v163 = v171;
      *v164 = v172;
      v165 = *v169;
      *&v164[16] = v173;
      v164[24] = v56;
      v166 = *&v169[16];
      *v167 = *&v169[32];
      *&v167[15] = *&v169[47];
      v168 = v54;
      v68 = &unk_1ECD10E38;
      v69 = &v162;
LABEL_25:
      sub_1DD824154(v69, v68);
      goto LABEL_26;
    }

    v143 = v34;
    v58 = v50[1];
    v156 = *v50;
    v157 = v58;
    *v158 = v50[2];
    *&v158[16] = *(v50 + 6);
    v158[24] = v179[24];
    sub_1DD826BF0();
    v144 = v59;
    sub_1DD700E60();
    sub_1DD826BF0();
    sub_1DD700E60();
    sub_1DD826BF0();
    sub_1DD700E60();
    v142 = static MessagePayload.RequestPrescribedPlan.== infix(_:_:)(&v159, &v156, v60, v61, v62, v63, v64, v65);
    v152[0] = v156;
    v152[1] = v157;
    *v153 = *v158;
    *&v153[9] = *&v158[9];
    sub_1DD7FD114(v152);
    v154[0] = v159;
    v154[1] = v160;
    *v155 = *v161;
    *&v155[9] = *&v161[9];
    sub_1DD7FD114(v154);
    v156 = v170;
    v157 = v171;
    *v158 = v172;
    *&v158[16] = v173;
    v158[24] = v144;
    sub_1DD824154(&v156, &unk_1ECD10E28);
    if ((v142 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  v66 = v143[8];
  v67 = *(v150 + 48);
  sub_1DD700E60();
  sub_1DD700E60();
  sub_1DD6E26E4(v0);
  if (v70)
  {
    sub_1DD6E26E4(v0 + v67);
    if (v70)
    {
      sub_1DD824154(v0, &qword_1ECD0E540);
      goto LABEL_28;
    }

LABEL_24:
    v68 = &qword_1ECD10E30;
    v69 = v0;
    goto LABEL_25;
  }

  sub_1DD700E60();
  sub_1DD6E26E4(v0 + v67);
  if (v70)
  {
    v71 = *(v23 + 8);
    v72 = sub_1DD6F4498();
    v73(v72);
    goto LABEL_24;
  }

  sub_1DD826578();
  v74(v1, v0 + v67, v20);
  sub_1DD6E14DC();
  sub_1DD6E1E84(v75);
  sub_1DD6E0F70();
  v76 = sub_1DD8750F0();
  v77 = *(v23 + 8);
  v78 = sub_1DD770D4C();
  v77(v78);
  v79 = sub_1DD8265C8();
  v77(v79);
  sub_1DD824154(v0, &qword_1ECD0E540);
  if ((v76 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_28:
  v80 = v143[9];
  v81 = *(v2 + v80);
  v82 = *(v2 + v80 + 8);
  v83 = *(v2 + v80 + 16);
  v84 = (v4 + v80);
  v86 = *v84;
  v85 = v84[1];
  v87 = v84[2];
  if (!v82)
  {
    v101 = sub_1DD82551C();
    sub_1DD6FF5F4(v101, v102);
    if (!v85)
    {
      sub_1DD6FF5F4(v86, 0);
      v113 = sub_1DD82551C();
      sub_1DD6FE2E0(v113, v114);
      goto LABEL_43;
    }

    v103 = sub_1DD705C50();
    sub_1DD6FF5F4(v103, v104);
    goto LABEL_40;
  }

  if (!v85)
  {
    v105 = sub_1DD8249AC();
    sub_1DD6FF5F4(v105, v106);
    sub_1DD6FF5F4(v86, 0);
    v107 = sub_1DD8249AC();
    sub_1DD6FF5F4(v107, v108);

LABEL_40:
    v109 = sub_1DD8249AC();
    sub_1DD6FE2E0(v109, v110);
    v111 = sub_1DD705C50();
LABEL_41:
    sub_1DD6FE2E0(v111, v112);
    goto LABEL_26;
  }

  if (v81 != v86 || v82 != v85)
  {
    sub_1DD6E5C7C();
    sub_1DD705D5C();
    if ((sub_1DD875A30() & 1) == 0)
    {
      v124 = sub_1DD8249AC();
      sub_1DD6FF5F4(v124, v125);
      v126 = sub_1DD705C50();
      sub_1DD6FF5F4(v126, v127);
      v128 = sub_1DD8249AC();
      sub_1DD6FF5F4(v128, v129);
      v130 = sub_1DD705C50();
      sub_1DD6FE2E0(v130, v131);

      v111 = sub_1DD8249AC();
      goto LABEL_41;
    }
  }

  v89 = sub_1DD700D0C();
  v151 = sub_1DD7152B8(v89, v90);
  v91 = sub_1DD8249AC();
  sub_1DD6FF5F4(v91, v92);
  v93 = sub_1DD705C50();
  sub_1DD6FF5F4(v93, v94);
  v95 = sub_1DD8249AC();
  sub_1DD6FF5F4(v95, v96);
  v97 = sub_1DD705C50();
  sub_1DD6FE2E0(v97, v98);

  v99 = sub_1DD8249AC();
  sub_1DD6FE2E0(v99, v100);
  if ((v151 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_43:
  v115 = v143[10];
  v116 = (v2 + v115);
  v117 = *(v2 + v115 + 8);
  v118 = v4 + v115;
  v119 = *(v118 + 8);
  if (!v117)
  {
    v120 = v146;
    if (!v119)
    {

LABEL_56:
      v132 = v143[11];
      v133 = *(v148 + 48);
      sub_1DD6FF6A4();
      sub_1DD700E60();
      sub_1DD6FF6A4();
      sub_1DD700E60();
      sub_1DD6DE1FC(v149, 1, v120);
      if (v70)
      {
        sub_1DD6DE1FC(v149 + v133, 1, v120);
        if (v70)
        {
          sub_1DD824154(v149, &qword_1ECD10D50);
          goto LABEL_26;
        }
      }

      else
      {
        sub_1DD700E60();
        sub_1DD6DE1FC(v149 + v133, 1, v120);
        if (!v134)
        {
          sub_1DD826A58();
          v137(v147, v149 + v133, v120);
          sub_1DD6EEDA4();
          sub_1DD6E1E84(v138);
          sub_1DD6E0F70();
          sub_1DD8750F0();
          v139 = *(v145 + 8);
          v140 = sub_1DD6DED5C();
          v139(v140);
          v141 = sub_1DD6EFF74();
          v139(v141);
          sub_1DD824154(v149, &qword_1ECD10D50);
          goto LABEL_26;
        }

        v135 = sub_1DD825148();
        v136(v135);
      }

      v68 = &qword_1ECD10D58;
      v69 = v149;
      goto LABEL_25;
    }

    v123 = *(v118 + 8);
LABEL_54:

    goto LABEL_26;
  }

  v120 = v146;
  if (!v119)
  {
    goto LABEL_54;
  }

  sub_1DD824D88(v116);
  if (v70)
  {
    v122 = v121 == v119;
  }

  else
  {
    v122 = 0;
  }

  if (v122 || (sub_1DD8278F0() & 1) != 0)
  {
    goto LABEL_56;
  }

LABEL_26:
  sub_1DD6DFED0();
}

void static MessagePayload.RequestContent.== infix(_:_:)()
{
  sub_1DD6DEB38();
  sub_1DD82758C();
  v2 = type metadata accessor for SystemPromptResolution(0);
  v3 = sub_1DD6DEA10(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1DD6DE4A8();
  v6 = type metadata accessor for MessagePayload.RequestContent(0);
  v7 = sub_1DD6DE1C4(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6DE21C();
  sub_1DD825028();
  MEMORY[0x1EEE9AC00](v10);
  sub_1DD6F8C84();
  MEMORY[0x1EEE9AC00](v11);
  v13 = (v31 - v12);
  v14 = sub_1DD710A9C(&qword_1ECD10E40, &qword_1DD889248);
  sub_1DD6DEA10(v14);
  v16 = *(v15 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1DD6E17C8();
  v19 = (v0 + *(v18 + 56));
  sub_1DD6E5870();
  sub_1DD6DDEDC();
  sub_1DD6E5870();
  sub_1DD6E5F58();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1DD824764();
      sub_1DD825980();
      sub_1DD6E5870();
      v29 = *v13;
      v28 = v13[1];
      sub_1DD6E9594();
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_16;
      }

      if (v29 == *v19 && v28 == v19[1])
      {
      }

      else
      {
        sub_1DD770D4C();
        sub_1DD6FA430();
        sub_1DD827818();
      }

      goto LABEL_20;
    case 2u:
      sub_1DD824764();
      sub_1DD701174();
      sub_1DD6E5870();
      v21 = v1[1];
      v20 = v1[2];
      v22 = v1[3];
      sub_1DD6E9594();
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v23 = *v1;
        v24 = *v19;
        v25 = v19[1];
        v27 = v19[2];
        v26 = v19[3];
        v32[0] = v23;
        v32[1] = v21;
        v32[2] = v20;
        v32[3] = v22;
        v31[0] = v24;
        v31[1] = v25;
        v31[2] = v27;
        v31[3] = v26;
        static MessagePayload.RequestContent.SpeechContent.== infix(_:_:)(v32);

        goto LABEL_20;
      }

LABEL_16:

      goto LABEL_18;
    case 3u:
      sub_1DD824764();
      sub_1DD825974();
      sub_1DD6E5870();
      sub_1DD6E9594();
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        sub_1DD701480();
        sub_1DD6E59B8();
        sub_1DD770D4C();
        static SystemPromptResolution.== infix(_:_:)();
        sub_1DD6E5ABC();
        sub_1DD7029A8();
        sub_1DD6E5ABC();
LABEL_20:
        sub_1DD8248BC();
        sub_1DD6E5ABC();
      }

      else
      {
        sub_1DD824EB8();
        sub_1DD6E5ABC();
LABEL_18:
        sub_1DD824154(v0, &qword_1ECD10E40);
      }

      sub_1DD6DFED0();
      return;
    default:
      sub_1DD6E9594();
      if (!swift_getEnumCaseMultiPayload())
      {
        goto LABEL_20;
      }

      goto LABEL_18;
  }
}