uint64_t sub_1ABE9A53C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x737463656A626FLL && a2 == 0xE700000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001ABF95120 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

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

uint64_t sub_1ABE9A60C(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x737463656A626FLL;
  }
}

uint64_t sub_1ABE9A648(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1ABF25234();
  a4(v8, v6);
  return sub_1ABF25294();
}

uint64_t sub_1ABE9A69C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABE9A53C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABE9A6C4(uint64_t a1)
{
  v2 = sub_1ABE9C580();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE9A700(uint64_t a1)
{
  v2 = sub_1ABE9C580();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TriplesQuery.Clause.FullTextSearchClause.encode(to:)()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v3 = sub_1ABAD219C(&qword_1EB4DBE48, &qword_1ABF71E20);
  sub_1ABA7BB64(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA7E338();
  v9 = *v0;
  v15 = *(v0 + 8);
  v10 = v2[4];
  sub_1ABA88DCC(v2, v2[3]);
  v11 = sub_1ABE9C580();

  sub_1ABF252E4();
  sub_1ABAD219C(&unk_1EB4D2E60, &qword_1ABF4D8A0);
  sub_1ABA997A8(&qword_1EB4CF7F8);
  sub_1ABA7BF34();
  sub_1ABF24F84();

  if (!v11)
  {
    sub_1ABE9C5D4();
    sub_1ABA7BF34();
    sub_1ABF24F84();
  }

  v12 = *(v5 + 8);
  v13 = sub_1ABA7D0EC();
  v14(v13);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void TriplesQuery.Clause.FullTextSearchClause.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1ABA7BCA8();
  v12 = v11;
  v14 = v13;
  v15 = sub_1ABAD219C(&qword_1EB4DBE50, &qword_1ABF71E28);
  sub_1ABA7BB64(v15);
  v17 = *(v16 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v18);
  sub_1ABA7BCE0();
  sub_1ABA9474C();
  sub_1ABE9C580();
  sub_1ABF252C4();
  if (v10)
  {
    sub_1ABA84B54(v12);
  }

  else
  {
    sub_1ABAD219C(&unk_1EB4D2E60, &qword_1ABF4D8A0);
    sub_1ABA84440(&unk_1ED86B980);
    sub_1ABAB53EC();
    sub_1ABF24E64();
    sub_1ABE9C628();
    sub_1ABF24E64();
    v19 = sub_1ABA8E0A8();
    v20(v19);
    *v14 = a10;
    *(v14 + 8) = v21;

    sub_1ABA84B54(v12);
  }

  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

uint64_t sub_1ABE9AA9C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6D756C6F63 && a2 == 0xE600000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x707954686374616DLL && a2 == 0xE900000000000065;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1ABF25054();

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

uint64_t sub_1ABE9ABAC(char a1)
{
  if (!a1)
  {
    return 0x6E6D756C6F63;
  }

  if (a1 == 1)
  {
    return 0x707954686374616DLL;
  }

  return 0x65756C6176;
}

uint64_t sub_1ABE9AC34(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1ABF25234();
  a4(v8, v6);
  return sub_1ABF25294();
}

uint64_t sub_1ABE9AC88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABE9AA9C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABE9ACB0(uint64_t a1)
{
  v2 = sub_1ABE9C67C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE9ACEC(uint64_t a1)
{
  v2 = sub_1ABE9C67C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TriplesQuery.Clause.ComparisonClause.encode(to:)(void *a1)
{
  v4 = sub_1ABAD219C(&qword_1EB4DBE60, &qword_1ABF71E30);
  sub_1ABA7BB64(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7E338();
  v10 = *v1;
  v16 = v1[1];
  v11 = *(v1 + 1);
  v12 = a1[4];
  sub_1ABA88DCC(a1, a1[3]);
  sub_1ABE9C67C();
  sub_1ABA8D27C();
  sub_1ABE9C6D0();
  sub_1ABA7BF34();
  sub_1ABF24F84();
  if (!v2)
  {
    sub_1ABE9C724();
    sub_1ABA7BF34();
    sub_1ABF24F84();
    sub_1ABA7BF34();
    sub_1ABF24F54();
  }

  v13 = *(v6 + 8);
  v14 = sub_1ABA7D0EC();
  v15(v14);
  sub_1ABA7FC10();
}

void TriplesQuery.Clause.ComparisonClause.init(from:)()
{
  sub_1ABA95324();
  v3 = sub_1ABAD219C(&qword_1EB4DBE80, &qword_1ABF71E38);
  sub_1ABA7BB64(v3);
  v5 = *(v4 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v6);
  sub_1ABA7BCE0();
  sub_1ABA9474C();
  sub_1ABE9C67C();
  sub_1ABA8387C();
  if (!v1)
  {
    sub_1ABE9C778();
    sub_1ABA827AC();
    sub_1ABA88658();
    sub_1ABF24E64();
    sub_1ABE9C7CC();
    sub_1ABA827AC();
    sub_1ABA88658();
    sub_1ABF24E64();
    sub_1ABA88658();
    sub_1ABF24E34();
    v8 = v7;
    v9 = sub_1ABA7BFF0();
    v10(v9);
    *v2 = v12;
    *(v2 + 1) = v11;
    *(v2 + 8) = v8;
  }

  sub_1ABA84B54(v0);
  sub_1ABA8869C();
}

uint64_t sub_1ABE9B090(uint64_t a1)
{
  v2 = sub_1ABE9C820();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE9B0CC(uint64_t a1)
{
  v2 = sub_1ABE9C820();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TriplesQuery.Clause.AllClause.encode(to:)(void *a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4DBE98, &qword_1ABF71E40);
  sub_1ABA7BB64(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12 - v8;
  v10 = a1[4];
  sub_1ABA88DCC(a1, a1[3]);
  sub_1ABE9C820();
  sub_1ABF252E4();
  return (*(v4 + 8))(v9, v2);
}

unint64_t sub_1ABE9B280()
{
  result = qword_1EB4CF588;
  if (!qword_1EB4CF588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF588);
  }

  return result;
}

unint64_t sub_1ABE9B2D4()
{
  result = qword_1EB4CF530;
  if (!qword_1EB4CF530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF530);
  }

  return result;
}

unint64_t sub_1ABE9B328()
{
  result = qword_1EB4DBC58;
  if (!qword_1EB4DBC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBC58);
  }

  return result;
}

unint64_t sub_1ABE9B37C()
{
  result = qword_1EB4DBC60;
  if (!qword_1EB4DBC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBC60);
  }

  return result;
}

unint64_t sub_1ABE9B3D0()
{
  result = qword_1EB4DBC68;
  if (!qword_1EB4DBC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBC68);
  }

  return result;
}

unint64_t sub_1ABE9B424()
{
  result = qword_1EB4DBC70;
  if (!qword_1EB4DBC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBC70);
  }

  return result;
}

unint64_t sub_1ABE9B478()
{
  result = qword_1ED86B0A0;
  if (!qword_1ED86B0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86B0A0);
  }

  return result;
}

unint64_t sub_1ABE9B4CC()
{
  result = qword_1EB4D0090;
  if (!qword_1EB4D0090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0090);
  }

  return result;
}

unint64_t sub_1ABE9B520()
{
  result = qword_1EB4DBCE8;
  if (!qword_1EB4DBCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBCE8);
  }

  return result;
}

unint64_t sub_1ABE9B574()
{
  result = qword_1EB4DBCF0;
  if (!qword_1EB4DBCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBCF0);
  }

  return result;
}

unint64_t sub_1ABE9B5C8()
{
  result = qword_1EB4CF4C8;
  if (!qword_1EB4CF4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF4C8);
  }

  return result;
}

unint64_t sub_1ABE9B61C()
{
  result = qword_1EB4CF5D0;
  if (!qword_1EB4CF5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF5D0);
  }

  return result;
}

unint64_t sub_1ABE9B670()
{
  result = qword_1EB4DBCF8;
  if (!qword_1EB4DBCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBCF8);
  }

  return result;
}

unint64_t sub_1ABE9B6C4()
{
  result = qword_1EB4DBD00;
  if (!qword_1EB4DBD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBD00);
  }

  return result;
}

unint64_t sub_1ABE9B718()
{
  result = qword_1EB4CF4B0;
  if (!qword_1EB4CF4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF4B0);
  }

  return result;
}

unint64_t sub_1ABE9B76C()
{
  result = qword_1EB4CF5F0;
  if (!qword_1EB4CF5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF5F0);
  }

  return result;
}

unint64_t sub_1ABE9B7C0()
{
  result = qword_1EB4DBD08;
  if (!qword_1EB4DBD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBD08);
  }

  return result;
}

unint64_t sub_1ABE9B814()
{
  result = qword_1EB4DBD10;
  if (!qword_1EB4DBD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBD10);
  }

  return result;
}

unint64_t sub_1ABE9B868()
{
  result = qword_1EB4CF4B8;
  if (!qword_1EB4CF4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF4B8);
  }

  return result;
}

unint64_t sub_1ABE9B8BC()
{
  result = qword_1EB4CF5B0;
  if (!qword_1EB4CF5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF5B0);
  }

  return result;
}

unint64_t sub_1ABE9B910()
{
  result = qword_1EB4CF4C0;
  if (!qword_1EB4CF4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF4C0);
  }

  return result;
}

unint64_t sub_1ABE9B964()
{
  result = qword_1EB4CF590;
  if (!qword_1EB4CF590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF590);
  }

  return result;
}

unint64_t sub_1ABE9B9B8()
{
  result = qword_1EB4DBD58;
  if (!qword_1EB4DBD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBD58);
  }

  return result;
}

unint64_t sub_1ABE9BA0C()
{
  result = qword_1EB4DBD60;
  if (!qword_1EB4DBD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBD60);
  }

  return result;
}

unint64_t sub_1ABE9BA60()
{
  result = qword_1EB4DBD68;
  if (!qword_1EB4DBD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBD68);
  }

  return result;
}

unint64_t sub_1ABE9BAB4()
{
  result = qword_1EB4DBD70;
  if (!qword_1EB4DBD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBD70);
  }

  return result;
}

unint64_t sub_1ABE9BB08()
{
  result = qword_1EB4DBD78;
  if (!qword_1EB4DBD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBD78);
  }

  return result;
}

unint64_t sub_1ABE9BB5C()
{
  result = qword_1EB4DBD80;
  if (!qword_1EB4DBD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBD80);
  }

  return result;
}

unint64_t sub_1ABE9BBB0()
{
  result = qword_1EB4DBD88;
  if (!qword_1EB4DBD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBD88);
  }

  return result;
}

unint64_t sub_1ABE9BC04()
{
  result = qword_1EB4D00A8;
  if (!qword_1EB4D00A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D00A8);
  }

  return result;
}

unint64_t sub_1ABE9BC58()
{
  result = qword_1EB4D0008;
  if (!qword_1EB4D0008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0008);
  }

  return result;
}

unint64_t sub_1ABE9BCAC()
{
  result = qword_1EB4DBDA0;
  if (!qword_1EB4DBDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBDA0);
  }

  return result;
}

unint64_t sub_1ABE9BD00()
{
  result = qword_1EB4CF5A8;
  if (!qword_1EB4CF5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF5A8);
  }

  return result;
}

unint64_t sub_1ABE9BD54()
{
  result = qword_1EB4CF4D0;
  if (!qword_1EB4CF4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF4D0);
  }

  return result;
}

unint64_t sub_1ABE9BDA8()
{
  result = qword_1EB4CE748;
  if (!qword_1EB4CE748)
  {
    sub_1ABAE2850(&qword_1EB4DBDB0, &qword_1ABF71DD0);
    sub_1ABE9BE2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CE748);
  }

  return result;
}

unint64_t sub_1ABE9BE2C()
{
  result = qword_1EB4D0000;
  if (!qword_1EB4D0000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0000);
  }

  return result;
}

unint64_t sub_1ABE9BE80()
{
  result = qword_1EB4DBDC0;
  if (!qword_1EB4DBDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBDC0);
  }

  return result;
}

unint64_t sub_1ABE9BED4()
{
  result = qword_1EB4DBDC8;
  if (!qword_1EB4DBDC8)
  {
    sub_1ABAE2850(&qword_1EB4DBDB0, &qword_1ABF71DD0);
    sub_1ABE9BF58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBDC8);
  }

  return result;
}

unint64_t sub_1ABE9BF58()
{
  result = qword_1EB4DBDD0;
  if (!qword_1EB4DBDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBDD0);
  }

  return result;
}

unint64_t sub_1ABE9BFAC()
{
  result = qword_1EB4CF5E8;
  if (!qword_1EB4CF5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF5E8);
  }

  return result;
}

unint64_t sub_1ABE9C000()
{
  result = qword_1EB4CF518;
  if (!qword_1EB4CF518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF518);
  }

  return result;
}

unint64_t sub_1ABE9C054()
{
  result = qword_1EB4DBDE8;
  if (!qword_1EB4DBDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBDE8);
  }

  return result;
}

unint64_t sub_1ABE9C0A8()
{
  result = qword_1EB4CF5C8;
  if (!qword_1EB4CF5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF5C8);
  }

  return result;
}

unint64_t sub_1ABE9C0FC()
{
  result = qword_1EB4CF468;
  if (!qword_1EB4CF468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF468);
  }

  return result;
}

unint64_t sub_1ABE9C150()
{
  result = qword_1EB4DBE00;
  if (!qword_1EB4DBE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBE00);
  }

  return result;
}

unint64_t sub_1ABE9C1DC()
{
  result = qword_1EB4DBE10;
  if (!qword_1EB4DBE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBE10);
  }

  return result;
}

unint64_t sub_1ABE9C230()
{
  result = qword_1EB4DBE18;
  if (!qword_1EB4DBE18)
  {
    sub_1ABAE2850(&unk_1EB4DB8E0, &unk_1ABF50A20);
    sub_1ABAE8BC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBE18);
  }

  return result;
}

unint64_t sub_1ABE9C2B4()
{
  result = qword_1EB4DA348;
  if (!qword_1EB4DA348)
  {
    sub_1ABAE2850(&qword_1EB4DA310, &qword_1ABF656F0);
    sub_1ABAA68CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA348);
  }

  return result;
}

unint64_t sub_1ABE9C338()
{
  result = qword_1EB4DBE28;
  if (!qword_1EB4DBE28)
  {
    sub_1ABAE2850(&qword_1EB4DBE20, &qword_1ABF71E10);
    sub_1ABC3C8F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBE28);
  }

  return result;
}

unint64_t sub_1ABE9C3BC()
{
  result = qword_1EB4DBE38;
  if (!qword_1EB4DBE38)
  {
    sub_1ABAE2850(&unk_1EB4DB8E0, &unk_1ABF50A20);
    sub_1ABAE8B74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBE38);
  }

  return result;
}

unint64_t sub_1ABE9C440()
{
  result = qword_1EB4DA378;
  if (!qword_1EB4DA378)
  {
    sub_1ABAE2850(&qword_1EB4DA310, &qword_1ABF656F0);
    sub_1ABAA6FE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA378);
  }

  return result;
}

unint64_t sub_1ABE9C4C4()
{
  result = qword_1EB4DBE40;
  if (!qword_1EB4DBE40)
  {
    sub_1ABAE2850(&qword_1EB4DBE20, &qword_1ABF71E10);
    sub_1ABC3CD80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBE40);
  }

  return result;
}

unint64_t sub_1ABE9C580()
{
  result = qword_1EB4CF608;
  if (!qword_1EB4CF608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF608);
  }

  return result;
}

unint64_t sub_1ABE9C5D4()
{
  result = qword_1EB4CF618;
  if (!qword_1EB4CF618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF618);
  }

  return result;
}

unint64_t sub_1ABE9C628()
{
  result = qword_1EB4DBE58;
  if (!qword_1EB4DBE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBE58);
  }

  return result;
}

unint64_t sub_1ABE9C67C()
{
  result = qword_1EB4DBE68;
  if (!qword_1EB4DBE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBE68);
  }

  return result;
}

unint64_t sub_1ABE9C6D0()
{
  result = qword_1EB4DBE70;
  if (!qword_1EB4DBE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBE70);
  }

  return result;
}

unint64_t sub_1ABE9C724()
{
  result = qword_1EB4DBE78;
  if (!qword_1EB4DBE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBE78);
  }

  return result;
}

unint64_t sub_1ABE9C778()
{
  result = qword_1EB4DBE88;
  if (!qword_1EB4DBE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBE88);
  }

  return result;
}

unint64_t sub_1ABE9C7CC()
{
  result = qword_1EB4DBE90;
  if (!qword_1EB4DBE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBE90);
  }

  return result;
}

unint64_t sub_1ABE9C820()
{
  result = qword_1EB4DBEA0;
  if (!qword_1EB4DBEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBEA0);
  }

  return result;
}

unint64_t sub_1ABE9C878()
{
  result = qword_1EB4DBEA8;
  if (!qword_1EB4DBEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBEA8);
  }

  return result;
}

unint64_t sub_1ABE9C8D0()
{
  result = qword_1ED870360;
  if (!qword_1ED870360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED870360);
  }

  return result;
}

unint64_t sub_1ABE9C928()
{
  result = qword_1ED870368;
  if (!qword_1ED870368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED870368);
  }

  return result;
}

unint64_t sub_1ABE9C980()
{
  result = qword_1EB4DBEB0;
  if (!qword_1EB4DBEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBEB0);
  }

  return result;
}

unint64_t sub_1ABE9C9D8()
{
  result = qword_1EB4DBEB8;
  if (!qword_1EB4DBEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBEB8);
  }

  return result;
}

_BYTE *_s6ClauseV15TableCodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1ABE9CB28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return sub_1ABA8C590(-1);
  }

  if ((a2 & 0x80000000) == 0 || !*(a1 + 105))
  {
    v2 = *(a1 + 88) >> 1;
    if (v2 > 0x80000000)
    {
      return sub_1ABA8C590(~v2);
    }

    return sub_1ABA8C590(-1);
  }

  return sub_1ABA8C590(*a1 + 0x7FFFFFFF);
}

uint64_t sub_1ABE9CB7C(uint64_t result, char a2)
{
  v2 = *(result + 104) & 1 | (32 * a2);
  *(result + 88) &= 1uLL;
  *(result + 104) = v2;
  return result;
}

uint64_t sub_1ABE9CBC8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 80))
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

uint64_t sub_1ABE9CC1C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1ABE9CC90(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 105))
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

uint64_t sub_1ABE9CCE4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 105) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 105) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1ABE9CD60(uint64_t *a1, int a2)
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

uint64_t sub_1ABE9CDA0(uint64_t result, int a2, int a3)
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

uint64_t _s6ClauseV16ComparisonClauseVwet(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[16])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = v3 - 2;
      if (!v4)
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

uint64_t _s6ClauseV16ComparisonClauseVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

_BYTE *_s6ClauseV16ComparisonClauseV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *_s6ClauseV11MatchClauseV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s6ClauseV14ContainsClauseV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *_s6ClauseV4ImplO10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1ABE9D2A0(_BYTE *result, int a2, int a3)
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

_BYTE *sub_1ABE9D34C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          result = sub_1ABA8BE70(result, a2 + 4);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1ABE9D474(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = sub_1ABA8BE70(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABE9D570()
{
  result = qword_1EB4DBEC0;
  if (!qword_1EB4DBEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBEC0);
  }

  return result;
}

unint64_t sub_1ABE9D5C8()
{
  result = qword_1EB4DBEC8;
  if (!qword_1EB4DBEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBEC8);
  }

  return result;
}

unint64_t sub_1ABE9D620()
{
  result = qword_1EB4DBED0;
  if (!qword_1EB4DBED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBED0);
  }

  return result;
}

unint64_t sub_1ABE9D678()
{
  result = qword_1EB4DBED8;
  if (!qword_1EB4DBED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBED8);
  }

  return result;
}

unint64_t sub_1ABE9D6D0()
{
  result = qword_1EB4DBEE0;
  if (!qword_1EB4DBEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBEE0);
  }

  return result;
}

unint64_t sub_1ABE9D728()
{
  result = qword_1EB4DBEE8;
  if (!qword_1EB4DBEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBEE8);
  }

  return result;
}

unint64_t sub_1ABE9D780()
{
  result = qword_1EB4DBEF0;
  if (!qword_1EB4DBEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBEF0);
  }

  return result;
}

unint64_t sub_1ABE9D7D8()
{
  result = qword_1EB4DBEF8;
  if (!qword_1EB4DBEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBEF8);
  }

  return result;
}

unint64_t sub_1ABE9D830()
{
  result = qword_1EB4DBF00;
  if (!qword_1EB4DBF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBF00);
  }

  return result;
}

unint64_t sub_1ABE9D888()
{
  result = qword_1EB4DBF08;
  if (!qword_1EB4DBF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBF08);
  }

  return result;
}

unint64_t sub_1ABE9D8E0()
{
  result = qword_1EB4DBF10;
  if (!qword_1EB4DBF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBF10);
  }

  return result;
}

unint64_t sub_1ABE9D938()
{
  result = qword_1EB4DBF18;
  if (!qword_1EB4DBF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBF18);
  }

  return result;
}

unint64_t sub_1ABE9D990()
{
  result = qword_1EB4DBF20;
  if (!qword_1EB4DBF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBF20);
  }

  return result;
}

unint64_t sub_1ABE9D9E8()
{
  result = qword_1EB4DBF28;
  if (!qword_1EB4DBF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBF28);
  }

  return result;
}

unint64_t sub_1ABE9DA40()
{
  result = qword_1EB4DBF30;
  if (!qword_1EB4DBF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBF30);
  }

  return result;
}

unint64_t sub_1ABE9DA98()
{
  result = qword_1EB4DBF38;
  if (!qword_1EB4DBF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBF38);
  }

  return result;
}

unint64_t sub_1ABE9DAF0()
{
  result = qword_1EB4DBF40;
  if (!qword_1EB4DBF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBF40);
  }

  return result;
}

unint64_t sub_1ABE9DB48()
{
  result = qword_1EB4DBF48;
  if (!qword_1EB4DBF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBF48);
  }

  return result;
}

unint64_t sub_1ABE9DBA0()
{
  result = qword_1EB4DBF50;
  if (!qword_1EB4DBF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBF50);
  }

  return result;
}

unint64_t sub_1ABE9DBF8()
{
  result = qword_1EB4DBF58;
  if (!qword_1EB4DBF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBF58);
  }

  return result;
}

unint64_t sub_1ABE9DC50()
{
  result = qword_1EB4DBF60;
  if (!qword_1EB4DBF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBF60);
  }

  return result;
}

unint64_t sub_1ABE9DCA8()
{
  result = qword_1EB4CF5F8;
  if (!qword_1EB4CF5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF5F8);
  }

  return result;
}

unint64_t sub_1ABE9DD00()
{
  result = qword_1EB4CF600;
  if (!qword_1EB4CF600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF600);
  }

  return result;
}

unint64_t sub_1ABE9DD58()
{
  result = qword_1EB4DBF68;
  if (!qword_1EB4DBF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBF68);
  }

  return result;
}

unint64_t sub_1ABE9DDB0()
{
  result = qword_1EB4DBF70;
  if (!qword_1EB4DBF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBF70);
  }

  return result;
}

unint64_t sub_1ABE9DE08()
{
  result = qword_1EB4CF5B8;
  if (!qword_1EB4CF5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF5B8);
  }

  return result;
}

unint64_t sub_1ABE9DE60()
{
  result = qword_1EB4CF5C0;
  if (!qword_1EB4CF5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF5C0);
  }

  return result;
}

unint64_t sub_1ABE9DEB8()
{
  result = qword_1EB4CF5D8;
  if (!qword_1EB4CF5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF5D8);
  }

  return result;
}

unint64_t sub_1ABE9DF10()
{
  result = qword_1EB4CF5E0;
  if (!qword_1EB4CF5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF5E0);
  }

  return result;
}

unint64_t sub_1ABE9DF68()
{
  result = qword_1EB4CF598;
  if (!qword_1EB4CF598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF598);
  }

  return result;
}

unint64_t sub_1ABE9DFC0()
{
  result = qword_1EB4CF5A0;
  if (!qword_1EB4CF5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF5A0);
  }

  return result;
}

unint64_t sub_1ABE9E018()
{
  result = qword_1EB4D0098;
  if (!qword_1EB4D0098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0098);
  }

  return result;
}

unint64_t sub_1ABE9E070()
{
  result = qword_1EB4D00A0;
  if (!qword_1EB4D00A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D00A0);
  }

  return result;
}

unint64_t sub_1ABE9E0C8()
{
  result = qword_1EB4D0040;
  if (!qword_1EB4D0040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0040);
  }

  return result;
}

unint64_t sub_1ABE9E120()
{
  result = qword_1EB4D0048;
  if (!qword_1EB4D0048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0048);
  }

  return result;
}

unint64_t sub_1ABE9E178()
{
  result = qword_1EB4D0020;
  if (!qword_1EB4D0020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0020);
  }

  return result;
}

unint64_t sub_1ABE9E1D0()
{
  result = qword_1EB4D0028;
  if (!qword_1EB4D0028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0028);
  }

  return result;
}

unint64_t sub_1ABE9E228()
{
  result = qword_1EB4D0050;
  if (!qword_1EB4D0050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0050);
  }

  return result;
}

unint64_t sub_1ABE9E280()
{
  result = qword_1EB4D0058;
  if (!qword_1EB4D0058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0058);
  }

  return result;
}

unint64_t sub_1ABE9E2D8()
{
  result = qword_1EB4D0010;
  if (!qword_1EB4D0010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0010);
  }

  return result;
}

unint64_t sub_1ABE9E330()
{
  result = qword_1EB4D0018;
  if (!qword_1EB4D0018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0018);
  }

  return result;
}

unint64_t sub_1ABE9E388()
{
  result = qword_1EB4D0030;
  if (!qword_1EB4D0030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0030);
  }

  return result;
}

unint64_t sub_1ABE9E3E0()
{
  result = qword_1EB4D0038;
  if (!qword_1EB4D0038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0038);
  }

  return result;
}

unint64_t sub_1ABE9E438()
{
  result = qword_1EB4D0060;
  if (!qword_1EB4D0060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0060);
  }

  return result;
}

unint64_t sub_1ABE9E490()
{
  result = qword_1EB4D0068;
  if (!qword_1EB4D0068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0068);
  }

  return result;
}

unint64_t sub_1ABE9E4E8()
{
  result = qword_1EB4D0070;
  if (!qword_1EB4D0070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0070);
  }

  return result;
}

unint64_t sub_1ABE9E540()
{
  result = qword_1EB4D0078;
  if (!qword_1EB4D0078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0078);
  }

  return result;
}

unint64_t sub_1ABE9E598()
{
  result = qword_1EB4D0080;
  if (!qword_1EB4D0080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0080);
  }

  return result;
}

unint64_t sub_1ABE9E5F0()
{
  result = qword_1EB4D0088;
  if (!qword_1EB4D0088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0088);
  }

  return result;
}

unint64_t sub_1ABE9E648()
{
  result = qword_1EB4CF568;
  if (!qword_1EB4CF568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF568);
  }

  return result;
}

unint64_t sub_1ABE9E6A0()
{
  result = qword_1EB4CF570;
  if (!qword_1EB4CF570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF570);
  }

  return result;
}

unint64_t sub_1ABE9E6F8()
{
  result = qword_1EB4CF548;
  if (!qword_1EB4CF548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF548);
  }

  return result;
}

unint64_t sub_1ABE9E750()
{
  result = qword_1EB4CF550;
  if (!qword_1EB4CF550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF550);
  }

  return result;
}

unint64_t sub_1ABE9E7A8()
{
  result = qword_1EB4CF558;
  if (!qword_1EB4CF558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF558);
  }

  return result;
}

unint64_t sub_1ABE9E800()
{
  result = qword_1EB4CF560;
  if (!qword_1EB4CF560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF560);
  }

  return result;
}

unint64_t sub_1ABE9E858()
{
  result = qword_1EB4CF538;
  if (!qword_1EB4CF538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF538);
  }

  return result;
}

unint64_t sub_1ABE9E8B0()
{
  result = qword_1EB4CF540;
  if (!qword_1EB4CF540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF540);
  }

  return result;
}

unint64_t sub_1ABE9E908()
{
  result = qword_1EB4CF520;
  if (!qword_1EB4CF520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF520);
  }

  return result;
}

unint64_t sub_1ABE9E960()
{
  result = qword_1EB4CF528;
  if (!qword_1EB4CF528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF528);
  }

  return result;
}

unint64_t sub_1ABE9E9B8()
{
  result = qword_1EB4CF578;
  if (!qword_1EB4CF578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF578);
  }

  return result;
}

unint64_t sub_1ABE9EA10()
{
  result = qword_1EB4CF580;
  if (!qword_1EB4CF580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF580);
  }

  return result;
}

unint64_t sub_1ABE9EA68()
{
  result = qword_1EB4CF4E8;
  if (!qword_1EB4CF4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF4E8);
  }

  return result;
}

unint64_t sub_1ABE9EAC0()
{
  result = qword_1EB4CF4F0;
  if (!qword_1EB4CF4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF4F0);
  }

  return result;
}

unint64_t sub_1ABE9EB18()
{
  result = qword_1EB4CF4D8;
  if (!qword_1EB4CF4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF4D8);
  }

  return result;
}

unint64_t sub_1ABE9EB70()
{
  result = qword_1EB4CF4E0;
  if (!qword_1EB4CF4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF4E0);
  }

  return result;
}

unint64_t sub_1ABE9EBC8()
{
  result = qword_1EB4CF500;
  if (!qword_1EB4CF500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF500);
  }

  return result;
}

unint64_t sub_1ABE9EC20()
{
  result = qword_1EB4CF508;
  if (!qword_1EB4CF508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF508);
  }

  return result;
}

unint64_t sub_1ABE9EC74()
{
  result = qword_1ED870370[0];
  if (!qword_1ED870370[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED870370);
  }

  return result;
}

uint64_t sub_1ABE9ED2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v41 = a2;
  v42 = a4;
  v11 = sub_1ABAD219C(&qword_1EB4DB820, &qword_1ABF500A0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v34 - v13;
  v15 = sub_1ABF22424();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v40 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v34 = &v34 - v19;
  v35 = v20;
  v21 = *(a1 + 16);
  v22 = (a1 + 32);
  v39 = (v20 + 32);
  v46 = MEMORY[0x1E69E7CC0];
  v37 = a3;
  v38 = a5;
  v36 = a6;
  if (v21)
  {
    while (1)
    {
      memcpy(__dst, v22, 0x69uLL);
      memcpy(v44, v22, 0x69uLL);
      sub_1ABE10DCC(__dst, v43);
      sub_1ABEA34EC(v44, v41, a3, v42, a5, a6);
      if (v6)
      {
        break;
      }

      memcpy(v43, v44, 0x69uLL);
      sub_1ABE10E28(v43);
      if (sub_1ABA7E1E0(v14, 1, v15) == 1)
      {
        sub_1ABA925A4(v14, &qword_1EB4DB820, &qword_1ABF500A0);
      }

      else
      {
        v23 = *v39;
        v24 = v34;
        (*v39)(v34, v14, v15);
        v23(v40, v24, v15);
        v25 = v46;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = *(v25 + 16);
          sub_1ABADC9D0();
          v25 = v30;
        }

        v27 = *(v25 + 16);
        v26 = *(v25 + 24);
        v46 = v25;
        if (v27 >= v26 >> 1)
        {
          sub_1ABADC9D0();
          v46 = v31;
        }

        v28 = v46;
        *(v46 + 16) = v27 + 1;
        v23((v28 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v27), v40, v15);
        a3 = v37;
        a5 = v38;
        a6 = v36;
      }

      v22 += 112;
      if (!--v21)
      {
        goto LABEL_11;
      }
    }

    memcpy(v43, v44, 0x69uLL);
    sub_1ABE10E28(v43);

    v32 = v46;
  }

  else
  {
LABEL_11:

    return v46;
  }

  return v32;
}

uint64_t sub_1ABE9F078(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = *(a3 + 16);
  v6 = (a3 + 32);
  if (v5)
  {
    while (1)
    {
      v7 = *v6;
      swift_unknownObjectRetain();
      v4(&v7);
      if (v3)
      {
        break;
      }

      result = swift_unknownObjectRelease();
      ++v6;
      if (!--v5)
      {
        return result;
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1ABE9F110(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  if (v9)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v14 = (*(a3 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v9)))));
      v15 = v14[1];
      v16[0] = *v14;
      v16[1] = v15;

      a1(v16);
      if (v3)
      {
        break;
      }

      v9 &= v9 - 1;

      v12 = v13;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
      }

      v9 = *(v6 + 8 * v13);
      ++v12;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

IntelligencePlatform::TriplesQuerySQLConfig __swiftcall TriplesQuerySQLConfig.init(tableName:ftsTableName:)(Swift::String tableName, Swift::String_optional ftsTableName)
{
  v2->value = tableName;
  v2[1] = ftsTableName;
  result.ftsTableName = ftsTableName;
  result.tableName = tableName;
  return result;
}

uint64_t sub_1ABE9F284(uint64_t *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  sub_1ABAB55C4(a1, a2, a3, a4, a5, a6, a7, a8, v13, v14[0], v14[1], v14[2], v14[3], v15);
  sub_1ABEA592C();
  sub_1ABE10DCC(v10, v11);
  v8(v14);
  memcpy(__dst, v9, 0x69uLL);
  return sub_1ABE4C0EC(__dst);
}

uint64_t sub_1ABE9F31C(uint64_t *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  sub_1ABAB55C4(a1, a2, a3, a4, a5, a6, a7, a8, v13, v14[0], v14[1], v14[2], v14[3], v15);
  sub_1ABEA592C();
  sub_1ABE971E8(v10, v11);
  v8(v14);
  memcpy(__dst, v9, 0x69uLL);
  return sub_1ABE4C0EC(__dst);
}

void sub_1ABE9F3DC(uint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  v7 = sub_1ABF22C24();
  v8 = sub_1ABA7BB64(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA7BC58();
  v15 = v14 - v13;
  v17 = *a1;
  v16 = a1[1];
  v19 = a1[2];
  v18 = a1[3];
  v20 = *v3;
  v21 = v3[1];
  v22 = *(v3 + 2) | (*(v3 + 3) << 32);
  v24 = *(v3 + 1);
  v23 = *(v3 + 2);
  v25 = *(v3 + 3);
  v26 = *(v3 + 4);
  v27 = *(v3 + 5);
  v28 = *(v3 + 6);
  v29 = *(v3 + 7);
  v30 = *(v3 + 8);
  v31 = v3[104];
  v32 = *(v3 + 9);
  switch(v31 >> 5)
  {
    case 1u:
      LOBYTE(v37) = *v3;
      BYTE1(v37) = v21;
      *(&v37 + 2) = v22;
      HIWORD(v37) = WORD2(v22);
      v38 = v24;
      v39 = v23;
      v40 = v25;
      v41 = v26;
      v42 = v27;
      v43 = v28;
      v44 = v29;
      v45 = v30;
      v46 = v32;
      a3();
      break;
    case 2u:
      v34 = *(v3 + 12);
      LOBYTE(v37) = *v3;
      BYTE1(v37) = v21;
      HIWORD(v37) = WORD2(v22);
      *(&v37 + 2) = v22;
      v38 = v24;
      v39 = v23;
      v40 = v25;
      v41 = v26;
      v42 = v27;
      v43 = v28;
      v44 = v29;
      v45 = v30;
      v46 = v32;
      v47 = *(v3 + 5);
      v48 = v34;
      v49 = v31 & 0x1F;
      TriplesQuery.Clause.MatchClause.sqlExpression(config:)(&v35, v25, v26, v27, v28, v29, v30, v32, v17, v16, v19, v18, v37, v24, v23, v25, v26, v27, v28, v29);
      break;
    case 3u:
      v35 = v20 | (v21 << 8) | (v22 << 16);
      LOBYTE(v36) = v24;
      sub_1ABA96B88(v18);
      TriplesQuery.Clause.FullTextSearchClause.sqlExpression(config:)();
      break;
    case 4u:
      LOBYTE(v37) = v20 & 1;
      BYTE1(v37) = v21;
      v38 = v24;
      TriplesQuery.Clause.ComparisonClause.sqlExpression(config:)();
      break;
    case 5u:
      LOBYTE(v35) = *v3;
      v36 = v24;
      sub_1ABA96B88(v18);
      TriplesQuery.Clause.JoinClause.graphIdentifierSQLExpression(config:)();
      break;
    case 6u:
      MEMORY[0x1AC5A8250](49, 0xE100000000000000, v26, v27, v28, v29, v30, v32);
      sub_1ABF22BE4();
      (*(v10 + 8))(v15, v7);
      break;
    default:
      LOBYTE(v35) = v20 & 1;
      v36 = v24;
      v33 = sub_1ABA96B88(v18);
      a2(v33);
      break;
  }
}

void TriplesQuery.Clause.AggregateClause.sqlExpression(config:)()
{
  sub_1ABA8AAB0();
  v2 = v1;
  v57 = v3;
  v65 = sub_1ABF22C24();
  v4 = sub_1ABA7BB64(v65);
  v76 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7C21C();
  v64 = v8;
  sub_1ABA8409C();
  v67 = sub_1ABF22414();
  v9 = sub_1ABA7BB64(v67);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7C21C();
  v66 = v14;
  sub_1ABA8409C();
  v71 = sub_1ABF22D14();
  v15 = sub_1ABA7BB64(v71);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABA7C068();
  v70 = v20;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v21);
  sub_1ABA88E50();
  v60 = v22;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v23);
  sub_1ABA972D4();
  v59 = v24;
  sub_1ABA8409C();
  v25 = sub_1ABF22424();
  v26 = sub_1ABA7BB64(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v26);
  sub_1ABA7C21C();
  v77 = v31;
  v32 = *v0;
  v33 = *(v0 + 1);
  v34 = *(v33 + 16);
  v35 = MEMORY[0x1E69E7CC0];
  if (v34)
  {
    HIDWORD(v56) = *v0;
    v74 = v2[1];
    v75 = *v2;
    v72 = v2[3];
    v73 = v2[2];
    v93 = MEMORY[0x1E69E7CC0];
    sub_1ABADEC6C();
    v36 = (v33 + 32);
    v35 = v93;
    v61 = (v11 + 8);
    v62 = (v76 + 8);
    v69 = (v17 + 8);
    v58 = v17 + 16;
    v37 = v11;
    v63 = v11;
    v68 = v25;
    do
    {
      memcpy(v92, v36, 0x69uLL);
      v42 = BYTE1(v92[0]);
      v43 = *(v92 + 2) | (WORD3(v92[0]) << 32);
      v44 = *(&v92[0] + 1);
      switch(BYTE8(v92[6]) >> 5)
      {
        case 1:
          LOWORD(v78) = v92[0];
          *(&v78 + 2) = *(v92 + 2);
          HIWORD(v78) = WORD2(v43);
          v79 = *(&v92[0] + 1);
          v80 = v92[1];
          v81 = v92[2];
          v82 = v92[3];
          v83 = v92[4];
          TriplesQuery.Clause.ContainsClause.sqlExpression(config:)(v43, *(&v92[4] + 1), HIDWORD(v43), BYTE8(v92[6]), v38, v39, v40, v41, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66);
          break;
        case 2:
          LOWORD(v78) = v92[0];
          *(&v78 + 2) = *(v92 + 2);
          HIWORD(v78) = WORD2(v43);
          v79 = *(&v92[0] + 1);
          v80 = v92[1];
          v81 = v92[2];
          v82 = v92[3];
          v83 = v92[4];
          v84 = v92[5];
          v85 = *&v92[6];
          v86 = BYTE8(v92[6]) & 0x1F;
          v87 = v75;
          v88 = v74;
          v89 = v73;
          v90 = v72;
          TriplesQuery.Clause.MatchClause.sqlExpression(config:)(&v87);
          break;
        case 3:
          v87 = LOBYTE(v92[0]) | (BYTE1(v92[0]) << 8) | (v43 << 16);
          LOBYTE(v88) = BYTE8(v92[0]);
          sub_1ABA96174();
          TriplesQuery.Clause.FullTextSearchClause.sqlExpression(config:)();
          break;
        case 4:
          if ((v92[0] & 1) == 0)
          {
            LOBYTE(v87) = BYTE1(v92[0]);
            *(&v80 + 1) = &type metadata for TriplesQuery.ComparableColumn;
            *&v81 = sub_1ABEA5750();
            LOBYTE(v78) = 0;
            sub_1ABF22D34();
            TriplesQuery.ComparisonType.compare(text:_:)();
            (*v69)(v59, v71);
            goto LABEL_15;
          }

          *(&v80 + 1) = &type metadata for TriplesQuery.ComparableColumn;
          *&v81 = sub_1ABEA5750();
          LOBYTE(v78) = 1;
          sub_1ABF22D34();
          switch(v42)
          {
            case 1:
              *(&v80 + 1) = v71;
              sub_1ABA8B184(MEMORY[0x1E69A0050]);
              sub_1ABA959AC();
              v50();
              v91 = MEMORY[0x1E69A0160];
              sub_1ABAA4740(MEMORY[0x1E69E63B0]);
              sub_1ABF22AE4();
              break;
            case 2:
              *(&v80 + 1) = v71;
              sub_1ABA8B184(MEMORY[0x1E69A0050]);
              sub_1ABA959AC();
              v48();
              v91 = MEMORY[0x1E69A0160];
              sub_1ABAA4740(MEMORY[0x1E69E63B0]);
              sub_1ABF228C4();
              break;
            case 3:
              *(&v80 + 1) = v71;
              sub_1ABA8B184(MEMORY[0x1E69A0050]);
              sub_1ABA959AC();
              v49();
              v91 = MEMORY[0x1E69A0160];
              sub_1ABAA4740(MEMORY[0x1E69E63B0]);
              sub_1ABF22AF4();
              break;
            default:
              *(&v80 + 1) = v71;
              sub_1ABA8B184(MEMORY[0x1E69A0050]);
              sub_1ABA959AC();
              v46();
              v91 = MEMORY[0x1E69A0160];
              sub_1ABAA4740(MEMORY[0x1E69E63B0]);
              sub_1ABF228B4();
              break;
          }

          sub_1ABA84B54(&v87);
          sub_1ABA84B54(&v78);
          (*v69)(v60, v71);
          sub_1ABE10E28(v92);
          goto LABEL_26;
        case 5:
          switch(LOBYTE(v92[0]))
          {
            case 1:
              *(&v80 + 1) = &type metadata for TriplesQuery.Clause.TableCodingKeys;
              *&v81 = sub_1ABE9EC74();
              v47 = 1;
              goto LABEL_20;
            case 2:
              *(&v80 + 1) = &type metadata for TriplesQuery.Clause.TableCodingKeys;
              *&v81 = sub_1ABE9EC74();
              v47 = 5;
              goto LABEL_20;
            case 3:
              *(&v80 + 1) = &type metadata for TriplesQuery.Clause.TableCodingKeys;
              *&v81 = sub_1ABE9EC74();
              v47 = 2;
              goto LABEL_20;
            case 4:
              *(&v80 + 1) = &type metadata for TriplesQuery.Clause.TableCodingKeys;
              *&v81 = sub_1ABE9EC74();
              v47 = 3;
LABEL_20:
              LOBYTE(v78) = v47;
              sub_1ABF22D34();
              break;
            default:
              sub_1ABAA1DD4();
              sub_1ABF22D24();
              break;
          }

          v78 = sub_1ABE9ED2C(v44, v75, v74, v73, v72, v70);
          sub_1ABF22404();
          sub_1ABAD219C(&qword_1EB4DBF78, &unk_1ABF74130);
          sub_1ABA7D918();
          sub_1ABAB47C4(&qword_1ED870670, &qword_1EB4DBF78, &unk_1ABF74130);
          sub_1ABF23EF4();
          (*v61)(v66, v67);

          (*v69)(v70, v71);
          v37 = v63;
LABEL_26:
          v25 = v68;
          break;
        case 6:
          sub_1ABEA5944();
          sub_1ABF22BE4();
          (*v62)(v64, v65);
LABEL_15:
          sub_1ABE10E28(v92);
          break;
        default:
          LOBYTE(v87) = v92[0] & 1;
          v88 = *(&v92[0] + 1);
          v45 = sub_1ABA96174();
          TriplesQuery.Clause.AggregateClause.sqlExpression(config:)(v45);
          break;
      }

      v93 = v35;
      v51 = *(v35 + 16);
      if (v51 >= *(v35 + 24) >> 1)
      {
        sub_1ABADEC6C();
        v35 = v93;
      }

      *(v35 + 16) = v51 + 1;
      (*(v28 + 32))(v35 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v51, v77, v25);
      v36 += 112;
      --v34;
    }

    while (v34);
    v32 = BYTE4(v56);
  }

  else
  {
    v37 = v11;
  }

  *&v92[0] = v35;
  if (v32)
  {
    sub_1ABF223F4();
  }

  else
  {
    sub_1ABF22404();
  }

  v52 = sub_1ABA8CD18();
  sub_1ABAD219C(v52, v53);
  sub_1ABA7D918();
  sub_1ABA7FD88(v54);
  sub_1ABF23EF4();
  (*(v37 + 8))(v66, v67);

  sub_1ABA8B438();
}

void TriplesQuery.Clause.ContainsClause.sqlExpression(config:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1ABA7E2A8();
  a19 = v25;
  a20 = v26;
  v154 = v27;
  v155 = sub_1ABF22414();
  v28 = sub_1ABA7BB64(v155);
  v153 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v28);
  sub_1ABA7C21C();
  v152 = v32;
  sub_1ABA8409C();
  v33 = sub_1ABF22424();
  v34 = sub_1ABA7BB64(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v34);
  sub_1ABA7C068();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v39);
  sub_1ABA88E50();
  v148 = v40;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v41);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v42);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v43);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v44);
  sub_1ABA88E50();
  v149 = v45;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v46);
  sub_1ABAA08DC();
  MEMORY[0x1EEE9AC00](v47);
  sub_1ABA8C644();
  MEMORY[0x1EEE9AC00](v48);
  sub_1ABA99704();
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v143 - v50;
  v52 = *(v20 + 8);
  v144 = *(v20 + 16);
  v150 = *(v20 + 24);
  v53 = *(v20 + 32);
  v54 = *(v20 + 40);
  v145 = *(v20 + 48);
  v156 = *(v20 + 56);
  v147 = *(v20 + 64);
  v151 = *(v20 + 72);
  if (v52)
  {
    HIDWORD(v143) = v53;
    if (*v20)
    {
      v158 = v52;
      v160 = &type metadata for TriplesQuery.Clause.TableCodingKeys;
      v55 = sub_1ABE9EC74();
      sub_1ABA955D8(v55);
      v157 = sub_1ABF22D14();
      sub_1ABA97084(MEMORY[0x1E69A0050]);
      sub_1ABAA1640();
      v160 = v33;
      v56 = sub_1ABAA18DC(MEMORY[0x1E699FE60]);
      v21 = sub_1ABAD219C(&unk_1EB4D2E60, &qword_1ABF4D8A0);
      sub_1ABA8FCE0();
      sub_1ABAB47C4(v57, &unk_1EB4D2E60, &qword_1ABF4D8A0);
      sub_1ABAA2434();
      sub_1ABF23EE4();
      sub_1ABAA3E50();
      sub_1ABF228D4();
      sub_1ABA84B54(v159);
      sub_1ABAA2094();
      sub_1ABAA063C(v58);
      if (v60)
      {
        sub_1ABA819D0(v59);
        sub_1ABADC9D0();
        v56 = v129;
      }

      v51 = v24;
    }

    else
    {
      v158 = v52;
      v157 = &type metadata for TriplesQuery.Clause.TableCodingKeys;
      v62 = sub_1ABE9EC74();
      sub_1ABEA590C(v62);
      v160 = sub_1ABF22D14();
      sub_1ABAA18DC(MEMORY[0x1E69A0050]);
      sub_1ABAB5950();
      v56 = &qword_1ABF4D8A0;
      sub_1ABAD219C(&unk_1EB4D2E60, &qword_1ABF4D8A0);
      sub_1ABA8FCE0();
      sub_1ABAB47C4(v63, &unk_1EB4D2E60, &qword_1ABF4D8A0);
      sub_1ABA829B4();
      sub_1ABF23EE4();
      sub_1ABA84B54(v159);
      sub_1ABAA2094();
      sub_1ABAA063C(v64);
      if (v60)
      {
        sub_1ABA819D0(v65);
        sub_1ABADC9D0();
        v56 = v130;
      }
    }

    v61 = v36;
    v56[2] = &unk_1EB4D2E60;
    sub_1ABA7EC68(v36);
    v68(v66 + v67 * v21, v51, v33);
    LOBYTE(v53) = BYTE4(v143);
  }

  else
  {
    v56 = MEMORY[0x1E69E7CC0];
    v61 = v36;
  }

  if (!v54)
  {
    v72 = v150;
    v74 = v151;
    if (!v150)
    {
      goto LABEL_35;
    }

    goto LABEL_24;
  }

  if (v53)
  {
    v158 = v54;
    v160 = &type metadata for TriplesQuery.Clause.TableCodingKeys;
    v69 = sub_1ABE9EC74();
    sub_1ABEA58EC(v69);
    v70 = sub_1ABF22D14();
    sub_1ABA8AFDC(v70);
    sub_1ABAA1640();
    v160 = v33;
    sub_1ABAA18DC(MEMORY[0x1E699FE60]);
    sub_1ABAD219C(&unk_1EB4D2E60, &qword_1ABF4D8A0);
    sub_1ABA8FCE0();
    sub_1ABAB47C4(v71, &unk_1EB4D2E60, &qword_1ABF4D8A0);
    sub_1ABAA2434();
    sub_1ABF23EE4();
    sub_1ABAA3E50();
    sub_1ABF228D4();
    sub_1ABAA55CC();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1ABA7FAB0();
      sub_1ABADC9D0();
      v56 = v131;
    }

    v72 = v150;
    sub_1ABA980C8();
    if (v60)
    {
      sub_1ABA819D0(v73);
      sub_1ABADC9D0();
      v56 = v132;
    }

    v22 = v23;
    v74 = v151;
  }

  else
  {
    v158 = v54;
    v157 = &type metadata for TriplesQuery.Clause.TableCodingKeys;
    v75 = sub_1ABE9EC74();
    sub_1ABEA591C(v75);
    v76 = sub_1ABF22D14();
    sub_1ABA951C0(v76);
    sub_1ABAB5950();
    v77 = sub_1ABA7ABE4();
    sub_1ABAD219C(v77, v78);
    sub_1ABA8FCE0();
    sub_1ABAA0FE0(v79);
    sub_1ABA829B4();
    sub_1ABF23EE4();
    sub_1ABAA55CC();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1ABA7FAB0();
      sub_1ABADC9D0();
      v56 = v133;
    }

    v72 = v150;
    v74 = v151;
    sub_1ABA980C8();
    if (v60)
    {
      sub_1ABA819D0(v80);
      sub_1ABADC9D0();
      v56 = v134;
    }
  }

  v56[2] = &unk_1EB4D2E60;
  sub_1ABA7EC68(v61);
  v83(v81 + v82 * v36, v22, v33);
  if (v72)
  {
LABEL_24:
    if (v144)
    {
      v158 = v72;
      v160 = &type metadata for TriplesQuery.Clause.TableCodingKeys;
      v84 = sub_1ABE9EC74();
      sub_1ABAABDA0(v84);
      v85 = sub_1ABF22D14();
      sub_1ABA8AFDC(v85);
      sub_1ABAA1640();
      v160 = v33;
      sub_1ABAA18DC(MEMORY[0x1E699FE60]);
      v86 = &unk_1EB4D2E60;
      v87 = sub_1ABA7ABE4();
      sub_1ABAD219C(v87, v88);
      sub_1ABA8FCE0();
      sub_1ABAA0FE0(v89);
      sub_1ABAA2434();
      sub_1ABF23EE4();
      sub_1ABAA3E50();
      sub_1ABAB69BC(&a14);
      sub_1ABF228D4();
      sub_1ABAA55CC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABA7FAB0();
        sub_1ABADC9D0();
        v56 = v135;
      }

      sub_1ABA980C8();
      if (v60)
      {
        sub_1ABA819D0(v90);
        sub_1ABADC9D0();
        v56 = v136;
      }
    }

    else
    {
      v158 = v72;
      v157 = &type metadata for TriplesQuery.Clause.TableCodingKeys;
      v91 = sub_1ABE9EC74();
      sub_1ABAB2C24(v91);
      v92 = sub_1ABF22D14();
      sub_1ABA951C0(v92);
      sub_1ABAB5950();
      v36 = &unk_1EB4D2E60;
      v86 = &qword_1ABF4D8A0;
      sub_1ABAB5B64();
      sub_1ABA8FCE0();
      sub_1ABA95410(v93);
      sub_1ABA829B4();
      sub_1ABF23EE4();
      sub_1ABAA55CC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABA7FAB0();
        sub_1ABADC9D0();
        v56 = v137;
      }

      sub_1ABA980C8();
      if (v60)
      {
        sub_1ABA819D0(v94);
        sub_1ABADC9D0();
        v56 = v138;
      }
    }

    v56[2] = v86;
    sub_1ABA7EC68(v61);
    v97(v95 + v96 * v36);
  }

LABEL_35:
  if (!v156)
  {
    goto LABEL_46;
  }

  if (v145)
  {
    v158 = v156;
    v160 = &type metadata for TriplesQuery.Clause.TableCodingKeys;
    v98 = sub_1ABE9EC74();
    sub_1ABAB51E4(v98);
    v99 = sub_1ABF22D14();
    sub_1ABA8AFDC(v99);
    sub_1ABAA1640();
    v160 = v33;
    v100 = sub_1ABAA18DC(MEMORY[0x1E699FE60]);
    v101 = &unk_1EB4D2E60;
    v102 = &qword_1ABF4D8A0;
    v103 = sub_1ABA8CD18();
    sub_1ABAD219C(v103, v104);
    sub_1ABA8FCE0();
    sub_1ABA7FD88(v105);
    sub_1ABA90BC0();
    sub_1ABF23EE4();
    sub_1ABAA3E50();
    sub_1ABAB69BC(&a15);
    sub_1ABF228D4();
    sub_1ABAA55CC();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1ABA7FAB0();
      sub_1ABADC9D0();
      v56 = v139;
    }

    sub_1ABAA6250();
    if (!v60)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v158 = v156;
    v157 = &type metadata for TriplesQuery.Clause.TableCodingKeys;
    v108 = sub_1ABE9EC74();
    sub_1ABA9653C(v108);
    v109 = sub_1ABF22D14();
    sub_1ABA951C0(v109);
    sub_1ABAB5950();
    v100 = &unk_1EB4D2E60;
    v101 = &qword_1ABF4D8A0;
    sub_1ABAB5B64();
    sub_1ABA8FCE0();
    sub_1ABA95410(v110);
    sub_1ABA829B4();
    sub_1ABF23EE4();
    sub_1ABAA55CC();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1ABA7FAB0();
      sub_1ABADC9D0();
      v56 = v140;
    }

    sub_1ABAA6250();
    v102 = v146;
    if (!v60)
    {
      goto LABEL_45;
    }
  }

  sub_1ABA7DC80(v106);
  sub_1ABADC9D0();
  v56 = v107;
LABEL_45:
  v56[2] = v100;
  sub_1ABA7EC68(v61);
  v113(v111 + v112 * v101, v102, v33);
LABEL_46:
  if (v74)
  {
    if (v147)
    {
      v158 = v74;
      v160 = &type metadata for TriplesQuery.Clause.TableCodingKeys;
      v114 = sub_1ABE9EC74();
      sub_1ABA90E44(v114);
      v115 = sub_1ABF22D14();
      sub_1ABA8AFDC(v115);
      sub_1ABAA1640();
      v160 = v33;
      v116 = sub_1ABAA18DC(MEMORY[0x1E699FE60]);
      v117 = &unk_1EB4D2E60;
      v118 = &qword_1ABF4D8A0;
      v119 = sub_1ABA8CD18();
      sub_1ABAD219C(v119, v120);
      sub_1ABA8FCE0();
      sub_1ABA7FD88(v121);
      sub_1ABA90BC0();
      sub_1ABF23EE4();
      sub_1ABAA3E50();
      sub_1ABAB69BC(&a16);
      sub_1ABF228D4();
      sub_1ABAA55CC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABA7FAB0();
        sub_1ABADC9D0();
        v56 = v141;
      }

      sub_1ABAA6250();
      if (!v60)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v158 = v74;
      v157 = &type metadata for TriplesQuery.Clause.TableCodingKeys;
      v124 = sub_1ABE9EC74();
      sub_1ABEA58FC(v124);
      v125 = sub_1ABF22D14();
      sub_1ABA951C0(v125);
      sub_1ABAB5950();
      v116 = &unk_1EB4D2E60;
      v117 = &qword_1ABF4D8A0;
      sub_1ABAB5B64();
      sub_1ABA8FCE0();
      sub_1ABA95410(v126);
      sub_1ABA829B4();
      sub_1ABF23EE4();
      sub_1ABAA55CC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABA7FAB0();
        sub_1ABADC9D0();
        v56 = v142;
      }

      sub_1ABAA6250();
      v118 = v148;
      if (!v60)
      {
        goto LABEL_56;
      }
    }

    sub_1ABA7DC80(v122);
    sub_1ABADC9D0();
    v56 = v123;
LABEL_56:
    v56[2] = v116;
    (*(v61 + 32))(v56 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v117, v118, v33);
  }

  v159[0] = v56;
  v127 = v152;
  sub_1ABF22404();
  sub_1ABAB5B64();
  sub_1ABA7D918();
  sub_1ABA95410(v128);
  sub_1ABF23EF4();
  (*(v153 + 8))(v127, v155);

  sub_1ABA7BC1C();
}

void TriplesQuery.Clause.MatchClause.sqlExpression(config:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1ABA7E2A8();
  a19 = v24;
  a20 = v25;
  v198 = v26;
  v215 = v27;
  v28 = sub_1ABF22854();
  v29 = sub_1ABA7AB80(v28);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  sub_1ABA7C21C();
  v217[1] = v32;
  sub_1ABA8409C();
  v203 = sub_1ABF22C24();
  v33 = sub_1ABA7BB64(v203);
  v202 = v34;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v33);
  sub_1ABA7C068();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v37);
  sub_1ABA972D4();
  v199 = v38;
  sub_1ABA8409C();
  v211 = sub_1ABF22414();
  v39 = sub_1ABA7BB64(v211);
  v214 = v40;
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v39);
  sub_1ABA7C21C();
  v213 = v43;
  sub_1ABA8409C();
  v218 = sub_1ABF22D14();
  v44 = sub_1ABA7BB64(v218);
  v46 = v45;
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v44);
  sub_1ABA7BC58();
  v51 = v50 - v49;
  v210 = sub_1ABF22424();
  v52 = sub_1ABA7BB64(v210);
  v212 = v53;
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v52);
  sub_1ABA7C068();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v56);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v57);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v58);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v59);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v60);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v61);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v62);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v63);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v64);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v65);
  sub_1ABA8BD74();
  MEMORY[0x1EEE9AC00](v66);
  v68 = &v194 - v67;
  MEMORY[0x1EEE9AC00](v69);
  sub_1ABA887B4();
  MEMORY[0x1EEE9AC00](v70);
  sub_1ABA99704();
  MEMORY[0x1EEE9AC00](v71);
  v73 = &v194 - v72;
  v74 = *v21;
  v75 = *(v21 + 1);
  v205 = v21[24];
  v76 = *(v21 + 4);
  v204 = v21[40];
  v77 = *(v21 + 6);
  v206 = v21[56];
  v216 = *(v21 + 8);
  v207 = v21[72];
  v217[0] = *(v21 + 10);
  v201 = v21[88];
  v200 = *(v21 + 12);
  v209 = v21[104];
  if (v75)
  {
    v208 = v77;
    if (v74)
    {
      v197 = v76;
      v224 = v75;
      v226 = &type metadata for TriplesQuery.Clause.TableCodingKeys;
      v78 = sub_1ABE9EC74();
      sub_1ABA955D8(v78);
      v79 = v218;
      v223 = v218;
      sub_1ABA97084(MEMORY[0x1E69A0050]);
      sub_1ABAA1640();
      sub_1ABAA04E4();
      v226 = v74;
      sub_1ABAA18DC(MEMORY[0x1E699FE60]);
      v80 = sub_1ABA8CD18();
      sub_1ABAD219C(v80, v81);
      sub_1ABA8FCE0();
      sub_1ABA7FD88(v82);
      sub_1ABB3E45C();
      sub_1ABA90BC0();
      sub_1ABF23EE4();
      sub_1ABAA3E50();
      sub_1ABF228D4();
      sub_1ABA84B54(v225);
      sub_1ABAA2094();
      v84 = v83;
      v86 = *(v83 + 16);
      v85 = *(v83 + 24);
      sub_1ABAA2754();
      v88 = v212;
      if (v89)
      {
        sub_1ABA7DC80(v87);
        sub_1ABADC9D0();
        v84 = v170;
      }

      v90 = sub_1ABA7C8B0();
      v91(v90, v23, v74);
      v92 = v211;
      v76 = v197;
    }

    else
    {
      v224 = v75;
      v223 = &type metadata for TriplesQuery.Clause.TableCodingKeys;
      v107 = sub_1ABE9EC74();
      sub_1ABEA590C(v107);
      v79 = v218;
      v226 = v218;
      sub_1ABAA18DC(MEMORY[0x1E69A0050]);
      sub_1ABAB5950();
      sub_1ABAB5B64();
      sub_1ABA8FCE0();
      sub_1ABA95410(v108);
      sub_1ABB3E45C();
      sub_1ABAA36B4();
      sub_1ABF23EE4();
      sub_1ABA84B54(v225);
      sub_1ABAA2094();
      v84 = v109;
      v86 = *(v109 + 16);
      v110 = *(v109 + 24);
      sub_1ABAA2754();
      v88 = v212;
      if (v89)
      {
        sub_1ABA7DC80(v111);
        sub_1ABADC9D0();
        v84 = v171;
      }

      v92 = v211;
      sub_1ABAA04E4();
      v112 = sub_1ABA7C8B0();
      v113(v112, v73, v74);
    }
  }

  else
  {
    v196 = v51;
    v195 = v46;
    v86 = *(v21 + 2);
    if (!v86)
    {
      v84 = MEMORY[0x1E69E7CC0];
      v92 = v211;
      v88 = v212;
      sub_1ABAA04E4();
      v79 = v218;
      if (!v114)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    v208 = v77;
    v197 = v76;
    v93 = *v198;
    v94 = v198[1];
    v95 = v198[2];
    v198 = v198[3];
    v226 = &type metadata for TriplesQuery.Clause.TableCodingKeys;
    v227 = sub_1ABE9EC74();
    LOBYTE(v225[0]) = 1;
    sub_1ABAB69BC(v217);
    v96 = sub_1ABF22D34();
    MEMORY[0x1EEE9AC00](v96);
    *(&v194 - 6) = v93;
    *(&v194 - 5) = v94;
    v97 = v198;
    *(&v194 - 4) = v95;
    *(&v194 - 3) = v97;
    *(&v194 - 2) = v46;
    sub_1ABE0F86C();
    v99 = v98;
    v225[0] = v98;
    v100 = v213;
    sub_1ABF223F4();
    v101 = sub_1ABA8CD18();
    sub_1ABAD219C(v101, v102);
    sub_1ABA7D918();
    sub_1ABA7FD88(v103);
    v84 = MEMORY[0x1E699FE60];
    v86 = v225;
    sub_1ABF23EF4();
    v92 = v211;
    (*(v214 + 8))(v100, v211);

    if (v74)
    {
      sub_1ABAA04E4();
      v226 = v74;
      v227 = v84;
      v104 = sub_1ABA93DC0(v225);
      (*(v212 + 16))(v104, v22, v74);
      sub_1ABF228D4();
      sub_1ABA84B54(v225);
      sub_1ABAA2094();
      sub_1ABA8B988(v105);
      if (v89)
      {
        sub_1ABA819D0(v106);
        sub_1ABADC9D0();
        v84 = v192;
      }

      v68 = v20;
    }

    else
    {
      v74 = v210;
      (*(v212 + 16))(v68, v22, v210);
      sub_1ABAA2094();
      sub_1ABA8B988(v115);
      if (v89)
      {
        sub_1ABA819D0(v116);
        sub_1ABADC9D0();
        v84 = v193;
      }
    }

    v76 = v197;
    v117 = v195;
    v118 = v22;
    v88 = v212;
    (*(v212 + 8))(v118, v74);
    *(v84 + 16) = v225;
    (*(v88 + 32))(v84 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v99, v68, v74);
    v79 = v218;
    (*(v117 + 8))(v196, v218);
  }

  v114 = v208;
  if (!v208)
  {
    goto LABEL_31;
  }

LABEL_20:
  if (v204)
  {
    v224 = v114;
    v226 = &type metadata for TriplesQuery.Clause.TableCodingKeys;
    v119 = sub_1ABE9EC74();
    sub_1ABEA58EC(v119);
    v223 = v79;
    sub_1ABA97084(MEMORY[0x1E69A0050]);
    sub_1ABAA1640();
    v226 = v74;
    sub_1ABAA18DC(MEMORY[0x1E699FE60]);
    v86 = &unk_1EB4D2E60;
    v120 = sub_1ABA7ABE4();
    sub_1ABAD219C(v120, v121);
    sub_1ABA8FCE0();
    sub_1ABAA0FE0(v122);
    sub_1ABA90BC0();
    sub_1ABF23EE4();
    sub_1ABAA3E50();
    sub_1ABF228D4();
    if ((sub_1ABA82FD8() & 1) == 0)
    {
      v172 = *(v84 + 16);
      sub_1ABA7BEF0();
      sub_1ABADC9D0();
      v84 = v173;
    }

    sub_1ABAA5B1C();
    v79 = v218;
    if (v89)
    {
      sub_1ABA7DC80(v123);
      sub_1ABADC9D0();
      v84 = v174;
    }
  }

  else
  {
    v224 = v114;
    v223 = &type metadata for TriplesQuery.Clause.TableCodingKeys;
    v124 = sub_1ABE9EC74();
    sub_1ABEA591C(v124);
    v226 = v79;
    sub_1ABAA18DC(MEMORY[0x1E69A0050]);
    sub_1ABAB5950();
    v86 = &qword_1ABF4D8A0;
    sub_1ABAB5B64();
    sub_1ABA8FCE0();
    sub_1ABA95410(v125);
    sub_1ABA829B4();
    sub_1ABAA11EC(&a12);
    sub_1ABF23EE4();
    if ((sub_1ABA82FD8() & 1) == 0)
    {
      v175 = *(v84 + 16);
      sub_1ABA7BEF0();
      sub_1ABADC9D0();
      v84 = v176;
    }

    sub_1ABAA5B1C();
    if (v89)
    {
      sub_1ABA7DC80(v126);
      sub_1ABADC9D0();
      sub_1ABA8C854(&a12);
    }
  }

  v127 = sub_1ABA7C8B0();
  v128(v127);
LABEL_31:
  if (v76)
  {
    if (v205)
    {
      v224 = v76;
      v226 = &type metadata for TriplesQuery.Clause.TableCodingKeys;
      v129 = sub_1ABE9EC74();
      sub_1ABAABDA0(v129);
      v223 = v79;
      sub_1ABA97084(MEMORY[0x1E69A0050]);
      sub_1ABAA1640();
      v226 = v74;
      sub_1ABAA18DC(MEMORY[0x1E699FE60]);
      v86 = &qword_1EB4DA310;
      v130 = sub_1ABA7ABE4();
      sub_1ABAD219C(v130, v131);
      sub_1ABA8FCE0();
      v76 = sub_1ABAA0FE0(v132);
      sub_1ABB8EC34();
      sub_1ABA90BC0();
      sub_1ABF23EE4();
      sub_1ABAA3E50();
      sub_1ABF228D4();
      if ((sub_1ABA82FD8() & 1) == 0)
      {
        v177 = *(v84 + 16);
        sub_1ABA7BEF0();
        sub_1ABADC9D0();
        v84 = v178;
      }

      sub_1ABAA5B1C();
      v79 = v218;
      if (v89)
      {
        sub_1ABA7DC80(v133);
        sub_1ABADC9D0();
        v84 = v179;
      }
    }

    else
    {
      v224 = v76;
      v223 = &type metadata for TriplesQuery.Clause.TableCodingKeys;
      v134 = sub_1ABE9EC74();
      sub_1ABAB2C24(v134);
      v226 = v79;
      sub_1ABAA18DC(MEMORY[0x1E69A0050]);
      sub_1ABAB5950();
      v86 = &qword_1ABF656F0;
      v76 = sub_1ABAB5B64();
      sub_1ABA8FCE0();
      sub_1ABA95410(v135);
      sub_1ABB8EC34();
      sub_1ABAA36B4();
      sub_1ABAA11EC(&a13);
      sub_1ABF23EE4();
      if ((sub_1ABA82FD8() & 1) == 0)
      {
        v180 = *(v84 + 16);
        sub_1ABA7BEF0();
        sub_1ABADC9D0();
        v84 = v181;
      }

      sub_1ABAA5B1C();
      if (v89)
      {
        sub_1ABA7DC80(v136);
        sub_1ABADC9D0();
        sub_1ABA8C854(&a13);
      }
    }

    v137 = sub_1ABA7C8B0();
    v138(v137);
  }

  if (v216)
  {
    if (v206)
    {
      v224 = v216;
      v226 = &type metadata for TriplesQuery.Clause.TableCodingKeys;
      v139 = sub_1ABE9EC74();
      sub_1ABAB51E4(v139);
      v223 = v79;
      sub_1ABA97084(MEMORY[0x1E69A0050]);
      sub_1ABAA1640();
      v226 = v74;
      sub_1ABAA18DC(MEMORY[0x1E699FE60]);
      v86 = &unk_1EB4DBE20;
      v140 = sub_1ABA7ABE4();
      sub_1ABAD219C(v140, v141);
      sub_1ABA8FCE0();
      v76 = sub_1ABAA0FE0(v142);
      sub_1ABE40310();
      sub_1ABA90BC0();
      sub_1ABF23EE4();
      sub_1ABAA3E50();
      sub_1ABF228D4();
      if ((sub_1ABA82FD8() & 1) == 0)
      {
        v182 = *(v84 + 16);
        sub_1ABA7BEF0();
        sub_1ABADC9D0();
        v84 = v183;
      }

      sub_1ABAA5B1C();
      v79 = v218;
      if (v89)
      {
        sub_1ABA7DC80(v143);
        sub_1ABADC9D0();
        v84 = v184;
      }
    }

    else
    {
      v224 = v216;
      v223 = &type metadata for TriplesQuery.Clause.TableCodingKeys;
      v144 = sub_1ABE9EC74();
      sub_1ABA9653C(v144);
      v226 = v79;
      sub_1ABAA18DC(MEMORY[0x1E69A0050]);
      sub_1ABAB5950();
      v86 = &unk_1ABF71E10;
      v76 = sub_1ABAB5B64();
      sub_1ABA8FCE0();
      sub_1ABA95410(v145);
      sub_1ABE40310();
      sub_1ABAA36B4();
      sub_1ABAA11EC(&a14);
      sub_1ABF23EE4();
      if ((sub_1ABA82FD8() & 1) == 0)
      {
        v185 = *(v84 + 16);
        sub_1ABA7BEF0();
        sub_1ABADC9D0();
        v84 = v186;
      }

      sub_1ABAA5B1C();
      if (v89)
      {
        sub_1ABA7DC80(v146);
        sub_1ABADC9D0();
        sub_1ABA8C854(&a14);
      }
    }

    v147 = sub_1ABA7C8B0();
    v148(v147);
  }

  if (v217[0])
  {
    if (v207)
    {
      v224 = v217[0];
      v226 = &type metadata for TriplesQuery.Clause.TableCodingKeys;
      v149 = sub_1ABE9EC74();
      sub_1ABA90E44(v149);
      v223 = v79;
      sub_1ABA97084(MEMORY[0x1E69A0050]);
      sub_1ABAA1640();
      v226 = v74;
      sub_1ABAA18DC(MEMORY[0x1E699FE60]);
      v86 = &qword_1EB4DA310;
      v150 = sub_1ABA7ABE4();
      sub_1ABAD219C(v150, v151);
      sub_1ABA8FCE0();
      v76 = sub_1ABAA0FE0(v152);
      sub_1ABB8EC34();
      sub_1ABA90BC0();
      sub_1ABF23EE4();
      sub_1ABAA3E50();
      sub_1ABAA038C(&v223);
      sub_1ABF228D4();
      if ((sub_1ABA82FD8() & 1) == 0)
      {
        v187 = *(v84 + 16);
        sub_1ABA7BEF0();
        sub_1ABADC9D0();
        v84 = v188;
      }

      sub_1ABAA5B1C();
      if (v89)
      {
        sub_1ABA7DC80(v153);
        sub_1ABADC9D0();
        v84 = v189;
      }
    }

    else
    {
      v224 = v217[0];
      v223 = &type metadata for TriplesQuery.Clause.TableCodingKeys;
      v154 = sub_1ABE9EC74();
      sub_1ABEA58FC(v154);
      v226 = v79;
      sub_1ABAA18DC(MEMORY[0x1E69A0050]);
      sub_1ABAB5950();
      v86 = &qword_1ABF656F0;
      v76 = sub_1ABAB5B64();
      sub_1ABA8FCE0();
      sub_1ABA95410(v155);
      sub_1ABB8EC34();
      sub_1ABAA36B4();
      sub_1ABAA11EC(&a15);
      sub_1ABF23EE4();
      if ((sub_1ABA82FD8() & 1) == 0)
      {
        v190 = *(v84 + 16);
        sub_1ABA7BEF0();
        sub_1ABADC9D0();
        v84 = v191;
      }

      sub_1ABAA5B1C();
      if (v89)
      {
        sub_1ABA7DC80(v156);
        sub_1ABADC9D0();
        sub_1ABA8C854(&a15);
      }
    }

    v157 = sub_1ABA7C8B0();
    v158(v157);
  }

  if ((v209 & 1) == 0)
  {
    sub_1ABAD219C(&qword_1EB4D5820, &unk_1ABF39E30);
    v159 = sub_1ABA8E764();
    v160 = MEMORY[0x1E69E7360];
    *(v159 + 16) = xmmword_1ABF34740;
    v161 = MEMORY[0x1E69A01D0];
    *(v159 + 56) = v160;
    *(v159 + 64) = v161;
    *(v159 + 32) = v200;
    sub_1ABF22834();
    v162 = (v202 + 8);
    if (v201)
    {
      sub_1ABA8CD9C(0x80000001ABF95140, &v222);
      v163 = &v219;
    }

    else
    {
      sub_1ABA8CD9C(0x80000001ABF95160, &v221);
      v163 = &v220;
    }

    sub_1ABAA038C(v163);
    sub_1ABF22BE4();
    (*v162)(v86, v203);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v167 = *(v84 + 16);
      sub_1ABA7BEF0();
      sub_1ABADC9D0();
      v84 = v168;
    }

    sub_1ABAA5B1C();
    if (v89)
    {
      sub_1ABA7DC80(v164);
      sub_1ABADC9D0();
      v84 = v169;
    }

    *(v84 + 16) = v162;
    (*(v88 + 32))(v84 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v86, v76, v74);
  }

  v225[0] = v84;
  v165 = v213;
  sub_1ABF22404();
  sub_1ABAB5B64();
  sub_1ABA7D918();
  sub_1ABA95410(v166);
  sub_1ABF23EF4();
  (*(v214 + 8))(v165, v92);

  sub_1ABA7BC1C();
}

void TriplesQuery.Clause.FullTextSearchClause.sqlExpression(config:)()
{
  sub_1ABA7E2A8();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v83 = sub_1ABAD219C(&qword_1EB4D50F0, &unk_1ABF3A620);
  v6 = sub_1ABA7BB64(v83);
  v87 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1ABA7C068();
  v80 = v10;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABA88E50();
  v86 = v12;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA972D4();
  v79 = v14;
  v15 = sub_1ABAD219C(&qword_1EB4DB820, &qword_1ABF500A0);
  v16 = sub_1ABA7AB80(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v82 = &v78 - v19;
  v20 = sub_1ABAD219C(&qword_1EB4DBF80, qword_1ABF74140);
  v21 = sub_1ABA7AB80(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v81 = &v78 - v24;
  v85 = sub_1ABAD219C(&qword_1EB4D2E00, &unk_1ABF3A5D0);
  v25 = sub_1ABA7BB64(v85);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  sub_1ABA7AC18();
  v30 = v28 - v29;
  MEMORY[0x1EEE9AC00](v31);
  sub_1ABA972D4();
  if (v3[3])
  {
    v34 = v32;
    v84 = v33;
    v88 = v5;
    v36 = *v3;
    v35 = v3[1];
    v37 = v3[2];
    v38 = *v1;
    v39 = *(v1 + 8);
    switch(v39)
    {
      case 5:
        goto LABEL_4;
      default:
        v40 = sub_1ABF25054();

        if (v40)
        {
LABEL_4:

          v41 = v34;
          sub_1ABF22CE4();
          v42 = v81;
          v43 = v83;
          v44 = sub_1ABA7B9B4(v81, 1, 1, v83);
          MEMORY[0x1EEE9AC00](v44);
          v76 = v42;
          v77 = v41;
          sub_1ABE9F110(sub_1ABEA57C8, (&v78 - 4), v38);
          if (sub_1ABA7E1E0(v42, 1, v43))
          {
            v45 = sub_1ABF22424();
            v46 = v82;
            sub_1ABA7B9B4(v82, 1, 1, v45);
            sub_1ABAD219C(&qword_1EB4DB3F0, &unk_1ABF4C7B0);
            v47 = sub_1ABA8E764();
            *(v47 + 16) = xmmword_1ABF34740;
            v48 = sub_1ABF22D14();
            v49 = MEMORY[0x1E69A0038];
            *(v47 + 56) = v48;
            *(v47 + 64) = v49;
            sub_1ABA93DC0((v47 + 32));
            sub_1ABF22D24();
            v51 = v85;
            v50 = v86;
            sub_1ABF22CB4();

            v92 = v48;
            v93 = MEMORY[0x1E69A0040];
            sub_1ABA93DC0(v91);
            sub_1ABF22D24();
            sub_1ABA9A770();
            sub_1ABAB47C4(v52, v53, v54);
            sub_1ABAA0C48();
            sub_1ABF225D4();
            (*(v87 + 8))(v50, v43);
            sub_1ABA84B54(v91);
            if (sub_1ABA7E1E0(v46, 1, v45) != 1)
            {
              sub_1ABA925A4(v46, &qword_1EB4DB820, &qword_1ABF500A0);
            }
          }

          else
          {
            v65 = v87;
            (*(v87 + 16))(v86, v42, v43);
            sub_1ABAD219C(&qword_1EB4DB3F0, &unk_1ABF4C7B0);
            v66 = sub_1ABA8E764();
            *(v66 + 16) = xmmword_1ABF34740;
            v67 = sub_1ABF22D14();
            v68 = MEMORY[0x1E69A0038];
            *(v66 + 56) = v67;
            *(v66 + 64) = v68;
            sub_1ABA93DC0((v66 + 32));
            sub_1ABF22D24();
            sub_1ABA96E44();
            sub_1ABAB47C4(v69, &qword_1EB4D50F0, &unk_1ABF3A620);
            v70 = v79;
            sub_1ABF227D4();

            v71 = *(v65 + 8);
            v72 = sub_1ABA7ABE4();
            v71(v72);
            v92 = v67;
            v93 = MEMORY[0x1E69A0040];
            sub_1ABA93DC0(v91);
            sub_1ABAA1DD4();
            sub_1ABF22D24();
            sub_1ABA9A770();
            sub_1ABAB47C4(v73, &qword_1EB4D50F0, &unk_1ABF3A620);
            v74 = v82;
            sub_1ABF225D4();
            (v71)(v70, v43);
            sub_1ABA84B54(v91);
            v75 = sub_1ABF22424();
            sub_1ABA7B9B4(v74, 0, 1, v75);
            (*(*(v75 - 8) + 32))(v88, v74, v75);
            v51 = v85;
          }

          sub_1ABA925A4(v42, &qword_1EB4DBF80, qword_1ABF74140);
          (*(v84 + 8))(v41, v51);
        }

        else
        {
          sub_1ABF22CE4();
          v90 = 5;
          v89 = v39;
          v92 = sub_1ABF22424();
          v93 = MEMORY[0x1E699FE60];
          sub_1ABA93DC0(v91);
          TriplesQuery.Clause.FullTextSearchClause.stringSetExpression(column:searchType:textSet:)();
          v55 = v80;
          v56 = v85;
          sub_1ABF22CA4();
          (*(v84 + 8))(v30, v56);
          sub_1ABA84B54(v91);
          sub_1ABAD219C(&qword_1EB4DB3F0, &unk_1ABF4C7B0);
          v57 = sub_1ABA8E764();
          *(v57 + 16) = xmmword_1ABF34740;
          v58 = sub_1ABF22D14();
          v59 = MEMORY[0x1E69A0038];
          *(v57 + 56) = v58;
          *(v57 + 64) = v59;
          sub_1ABA93DC0((v57 + 32));
          sub_1ABF22D24();
          sub_1ABA96E44();
          sub_1ABAB47C4(v60, &qword_1EB4D50F0, &unk_1ABF3A620);
          v61 = v86;
          v62 = v83;
          sub_1ABF227D4();

          v63 = *(v87 + 8);
          v63(v55, v62);
          v92 = v58;
          v93 = MEMORY[0x1E69A0040];
          sub_1ABA93DC0(v91);
          sub_1ABF22D24();
          sub_1ABA9A770();
          sub_1ABAB47C4(v64, &qword_1EB4D50F0, &unk_1ABF3A620);
          sub_1ABAA0C48();
          sub_1ABF225D4();
          v63(v61, v62);
          sub_1ABA84B54(v91);
        }

        sub_1ABA7BC1C();
        break;
    }
  }

  else
  {
    sub_1ABF24CD4();
    __break(1u);
  }
}

uint64_t TriplesQuery.Clause.ComparisonClause.sqlExpression(config:)()
{
  v1 = sub_1ABF22D14();
  v2 = sub_1ABA7BB64(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1ABA7BC58();
  v7 = v6 - v5;
  v9 = (v8 + 8);
  v10 = *(v0 + 8);
  v12 = *(v0 + 1);
  if (*v0)
  {
    sub_1ABEA5750();
    sub_1ABF22D34();
    sub_1ABA8BB78();
    TriplesQuery.ComparisonType.compare(numeric:_:)();
  }

  else
  {
    sub_1ABEA5750();
    sub_1ABF22D34();
    sub_1ABA8BB78();
    TriplesQuery.ComparisonType.compare(text:_:)();
  }

  return (*v9)(v7, v1);
}

void TriplesQuery.Clause.JoinClause.sqlExpression(config:)(uint64_t *a1)
{
  v5 = *v1;
  v6 = *(v1 + 1);
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 1);
  TriplesQuery.Clause.JoinClause.graphIdentifierSQLExpression(config:)();
}

uint64_t TriplesQuery.Clause.AllClause.sqlExpression(config:)()
{
  v0 = sub_1ABF22C24();
  v1 = sub_1ABA7BB64(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  sub_1ABA7BC58();
  sub_1ABEA5944();
  sub_1ABF22BE4();
  v6 = *(v3 + 8);
  v7 = sub_1ABA8CD18();
  return v8(v7);
}

void sub_1ABEA26F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1ABA7E2A8();
  a19 = v23;
  a20 = v24;
  v184 = v25;
  v185 = sub_1ABF22414();
  v26 = sub_1ABA7BB64(v185);
  v183 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v26);
  sub_1ABA7C21C();
  v182 = v30;
  sub_1ABA8409C();
  v186 = sub_1ABF22424();
  v31 = sub_1ABA7BB64(v186);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v31);
  sub_1ABA7C068();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v36);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v37);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v38);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v39);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v40);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v41);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v42);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v43);
  sub_1ABAA0B28();
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v170 - v45;
  v47 = *(v20 + 8);
  v181 = *(v20 + 16);
  v48 = *(v20 + 24);
  v49 = *(v20 + 32);
  v50 = *(v20 + 40);
  v176 = *(v20 + 48);
  v190 = *(v20 + 56);
  v177 = *(v20 + 64);
  v189 = *(v20 + 72);
  v51 = MEMORY[0x1E69A0050];
  v187 = v33;
  v188 = v48;
  if (v47)
  {
    v172 = v49;
    v173 = v50;
    v171 = *v20;
    v53 = v47 + 56;
    v52 = *(v47 + 56);
    v54 = *(v47 + 32);
    sub_1ABA7D32C();
    v57 = v56 & v55;
    v33 = (v58 + 63) >> 6;

    v51 = 0;
    v59 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v60 = v51;
      if (!v57)
      {
        break;
      }

LABEL_7:
      sub_1ABA8B778();
      v62 = (*(v47 + 48) + ((v51 << 10) | (16 * v61)));
      v20 = *v62;
      v22 = v62[1];

      EntityIdentifier.init(_:)(v20, v22, &v195);
      if ((v196 & 1) == 0)
      {
        v170 = v195;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1ABA7FAB0();
          sub_1ABAD89C8();
          v59 = v63;
        }

        v22 = *(v59 + 16);
        v20 = v22 + 1;
        if (v22 >= *(v59 + 24) >> 1)
        {
          sub_1ABAD89C8();
          v59 = v64;
        }

        *(v59 + 16) = v20;
        *(v59 + 8 * v22 + 32) = v170;
      }
    }

    while (1)
    {
      v51 = v60 + 1;
      if (__OFADD__(v60, 1))
      {
        __break(1u);
        goto LABEL_76;
      }

      if (v51 >= v33)
      {
        break;
      }

      v57 = *(v53 + 8 * v51);
      ++v60;
      if (v57)
      {
        goto LABEL_7;
      }
    }

    if (v171)
    {
      v194 = v59;
      v197 = &type metadata for TriplesQuery.Clause.TableCodingKeys;
      v65 = sub_1ABE9EC74();
      sub_1ABA955D8(v65);
      v192 = sub_1ABF22D14();
      v51 = MEMORY[0x1E69A0050];
      v193 = MEMORY[0x1E69A0050];
      sub_1ABA93DC0(v191);
      sub_1ABAA1640();
      v66 = v186;
      v197 = v186;
      v67 = sub_1ABAA18DC(MEMORY[0x1E699FE60]);
      sub_1ABAD219C(&qword_1EB4D1720, &qword_1ABF338B0);
      sub_1ABA7D918();
      sub_1ABAB47C4(v68, &qword_1EB4D1720, &qword_1ABF338B0);
      sub_1ABB3E45C();
      sub_1ABA90BC0();
      sub_1ABF23EE4();
      sub_1ABA84B54(v191);

      sub_1ABF228D4();
      sub_1ABA84B54(&v195);
      sub_1ABAA2094();
      v70 = v69;
      v20 = *(v69 + 16);
      v71 = *(v69 + 24);
      sub_1ABAA2754();
      v33 = v187;
      if (v73)
      {
        sub_1ABA7DC80(v72);
        sub_1ABADC9D0();
        v70 = v164;
      }

      v46 = v21;
      v74 = v66;
    }

    else
    {
      v194 = v59;
      v192 = &type metadata for TriplesQuery.Clause.TableCodingKeys;
      v75 = sub_1ABE9EC74();
      sub_1ABEA590C(v75);
      v197 = sub_1ABF22D14();
      v51 = MEMORY[0x1E69A0050];
      v198 = MEMORY[0x1E69A0050];
      sub_1ABA93DC0(&v195);
      sub_1ABAB5950();
      sub_1ABAB5B64();
      sub_1ABA7D918();
      v67 = sub_1ABA95410(v76);
      sub_1ABB3E45C();
      sub_1ABAA36B4();
      sub_1ABF23EE4();
      sub_1ABAA55CC();

      sub_1ABAA2094();
      v70 = v77;
      v20 = *(v77 + 16);
      v78 = *(v77 + 24);
      sub_1ABAA2754();
      v74 = v186;
      v33 = v187;
      if (v73)
      {
        sub_1ABA7DC80(v79);
        sub_1ABADC9D0();
        v70 = v165;
      }
    }

    *(v70 + 16) = v67;
    sub_1ABA7EC68(v33);
    v82(v80 + v81 * v20, v46, v74);
    v48 = v188;
    v50 = v173;
    LOBYTE(v49) = v172;
  }

  else
  {
    v70 = MEMORY[0x1E69E7CC0];
    v74 = v186;
  }

  v83 = v190;
  if (v50)
  {
    if (v49)
    {
      v194 = v50;
      v197 = &type metadata for TriplesQuery.Clause.TableCodingKeys;
      v84 = sub_1ABE9EC74();
      sub_1ABEA58EC(v84);
      v192 = sub_1ABF22D14();
      v193 = v51;
      sub_1ABA93DC0(v191);
      sub_1ABAA1640();
      v197 = v74;
      v85 = sub_1ABAA18DC(MEMORY[0x1E699FE60]);
      v20 = &unk_1EB4D2E60;
      v86 = &qword_1ABF4D8A0;
      v87 = sub_1ABA7ABE4();
      sub_1ABAD219C(v87, v88);
      sub_1ABA8FCE0();
      sub_1ABAA0FE0(v89);
      sub_1ABA90BC0();
      sub_1ABF23EE4();
      sub_1ABAA3E50();
      sub_1ABAA038C(&a13);
      sub_1ABF228D4();
      sub_1ABAA55CC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABA7FAB0();
        sub_1ABADC9D0();
        v70 = v160;
      }

      sub_1ABAA6250();
      if (!v73)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v194 = v50;
      v192 = &type metadata for TriplesQuery.Clause.TableCodingKeys;
      v92 = sub_1ABE9EC74();
      sub_1ABEA591C(v92);
      v197 = sub_1ABF22D14();
      v198 = v51;
      sub_1ABA93DC0(&v195);
      sub_1ABAB5950();
      v85 = &unk_1EB4D2E60;
      v20 = &qword_1ABF4D8A0;
      sub_1ABAB5B64();
      sub_1ABA8FCE0();
      sub_1ABA95410(v93);
      sub_1ABA829B4();
      sub_1ABAA11EC(&a17);
      sub_1ABF23EE4();
      sub_1ABAA55CC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABA7FAB0();
        sub_1ABADC9D0();
        v70 = v161;
      }

      sub_1ABAA6250();
      v86 = v179;
      if (!v73)
      {
        goto LABEL_31;
      }
    }

    sub_1ABA7DC80(v90);
    sub_1ABADC9D0();
    v70 = v91;
LABEL_31:
    *(v70 + 16) = v85;
    sub_1ABA7EC68(v33);
    v96(v94 + v95 * v20, v86, v74);
    v48 = v188;
  }

  if (!v48)
  {
    goto LABEL_43;
  }

  if (v181)
  {
    v194 = v48;
    v197 = &type metadata for TriplesQuery.Clause.TableCodingKeys;
    v97 = sub_1ABE9EC74();
    sub_1ABAABDA0(v97);
    v192 = sub_1ABF22D14();
    v193 = v51;
    sub_1ABA93DC0(v191);
    sub_1ABAA1640();
    v197 = v74;
    v98 = sub_1ABAA18DC(MEMORY[0x1E699FE60]);
    v20 = &unk_1EB4D2E60;
    v99 = &qword_1ABF4D8A0;
    v100 = sub_1ABA7ABE4();
    sub_1ABAD219C(v100, v101);
    sub_1ABA8FCE0();
    sub_1ABAA0FE0(v102);
    sub_1ABA90BC0();
    sub_1ABF23EE4();
    sub_1ABAA3E50();
    sub_1ABAA038C(&a14);
    sub_1ABF228D4();
    sub_1ABAA55CC();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1ABA7FAB0();
      sub_1ABADC9D0();
      v70 = v162;
    }

    sub_1ABAA6250();
    if (!v73)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v194 = v48;
    v192 = &type metadata for TriplesQuery.Clause.TableCodingKeys;
    v105 = sub_1ABE9EC74();
    sub_1ABAB2C24(v105);
    v197 = sub_1ABF22D14();
    v198 = v51;
    sub_1ABA93DC0(&v195);
    sub_1ABAB5950();
    v98 = &unk_1EB4D2E60;
    v20 = &qword_1ABF4D8A0;
    sub_1ABAB5B64();
    sub_1ABA8FCE0();
    sub_1ABA95410(v106);
    sub_1ABA829B4();
    sub_1ABAA11EC(&a18);
    sub_1ABF23EE4();
    sub_1ABAA55CC();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1ABA7FAB0();
      sub_1ABADC9D0();
      v70 = v163;
    }

    sub_1ABAA6250();
    v99 = v180;
    if (!v73)
    {
      goto LABEL_42;
    }
  }

  sub_1ABA7DC80(v103);
  sub_1ABADC9D0();
  v70 = v104;
LABEL_42:
  *(v70 + 16) = v98;
  sub_1ABA7EC68(v33);
  v109(v107 + v108 * v20, v99, v74);
LABEL_43:
  if (v83)
  {
    v47 = v74;
    v110 = v83;
    v111 = v51;
    v33 = v110 + 56;
    v112 = *(v110 + 56);
    v113 = *(v110 + 32);
    sub_1ABA7D32C();
    v116 = v115 & v114;
    v22 = (v117 + 63) >> 6;

    v51 = 0;
    v53 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v118 = v51;
      if (!v116)
      {
        break;
      }

LABEL_49:
      sub_1ABA8B778();
      v120 = (*(v190 + 48) + ((v51 << 10) | (16 * v119)));
      v20 = *v120;
      v121 = v120[1];

      v122 = sub_1ABA7ABE4();
      RelationshipIdentifier.init(_:)(v122, v123, v124);
      if ((v196 & 1) == 0)
      {
        v125 = v195;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v128 = *(v53 + 16);
          sub_1ABA7BEF0();
          sub_1ABADC9BC();
          v53 = v129;
        }

        v127 = *(v53 + 16);
        v126 = *(v53 + 24);
        v20 = v127 + 1;
        if (v127 >= v126 >> 1)
        {
          sub_1ABA819D0(v126);
          sub_1ABADC9BC();
          v53 = v130;
        }

        *(v53 + 16) = v20;
        *(v53 + 8 * v127 + 32) = v125;
        v47 = v186;
      }
    }

    while (1)
    {
      v51 = v118 + 1;
      if (__OFADD__(v118, 1))
      {
        break;
      }

      if (v51 >= v22)
      {

        v194 = v53;
        if (v176)
        {
          v197 = &type metadata for TriplesQuery.Clause.TableCodingKeys;
          v131 = sub_1ABE9EC74();
          sub_1ABAB51E4(v131);
          v192 = sub_1ABF22D14();
          v193 = v111;
          v51 = v111;
          sub_1ABA93DC0(v191);
          sub_1ABAA1640();
          v197 = v47;
          sub_1ABAA18DC(MEMORY[0x1E699FE60]);
          v20 = &unk_1EB4DBF88;
          v132 = sub_1ABA7ABE4();
          sub_1ABAD219C(v132, v133);
          sub_1ABA7D918();
          sub_1ABAA0FE0(v134);
          sub_1ABE40310();
          sub_1ABAA2434();
          sub_1ABF23EE4();
          sub_1ABA84B54(v191);

          v22 = v175;
          sub_1ABF228D4();
          sub_1ABA84B54(&v195);
        }

        else
        {
          v192 = &type metadata for TriplesQuery.Clause.TableCodingKeys;
          v135 = sub_1ABE9EC74();
          sub_1ABA9653C(v135);
          v197 = sub_1ABF22D14();
          v198 = v111;
          v51 = v111;
          sub_1ABA93DC0(&v195);
          sub_1ABAB5950();
          v20 = &unk_1EB4DBF88;
          v136 = sub_1ABA8CD18();
          sub_1ABAD219C(v136, v137);
          sub_1ABA7D918();
          sub_1ABA7FD88(v138);
          sub_1ABE40310();
          sub_1ABAA36B4();
          v22 = v174;
          sub_1ABF23EE4();
          sub_1ABA84B54(&v195);
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v33 = v187;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          goto LABEL_77;
        }

        goto LABEL_59;
      }

      v116 = *(v33 + 8 * v51);
      ++v118;
      if (v116)
      {
        goto LABEL_49;
      }
    }

LABEL_76:
    __break(1u);
LABEL_77:
    sub_1ABA7FAB0();
    sub_1ABADC9D0();
    v70 = v158;
LABEL_59:
    sub_1ABAA6250();
    if (v73)
    {
      sub_1ABA7DC80(v140);
      sub_1ABADC9D0();
      v70 = v159;
    }

    *(v70 + 16) = v53;
    sub_1ABA7EC68(v33);
    v143 = v22;
    v74 = v47;
    v144(v141 + v142 * v20, v143, v47);
  }

  if (v189)
  {
    if (v177)
    {
      v194 = v189;
      v197 = &type metadata for TriplesQuery.Clause.TableCodingKeys;
      v145 = sub_1ABE9EC74();
      sub_1ABA90E44(v145);
      v192 = sub_1ABF22D14();
      v193 = v51;
      sub_1ABA93DC0(v191);
      sub_1ABAA1640();
      v197 = v74;
      v146 = sub_1ABAA18DC(MEMORY[0x1E699FE60]);
      v147 = &unk_1EB4D2E60;
      v148 = sub_1ABA8CD18();
      sub_1ABAD219C(v148, v149);
      sub_1ABA8FCE0();
      sub_1ABA7FD88(v150);
      sub_1ABA90BC0();
      sub_1ABF23EE4();
      sub_1ABAA3E50();
      sub_1ABAB69BC(&a12);
      sub_1ABF228D4();
      sub_1ABAA55CC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABA7FAB0();
        sub_1ABADC9D0();
        v70 = v166;
      }

      sub_1ABAA6250();
      if (v73)
      {
        sub_1ABA7DC80(v151);
        sub_1ABADC9D0();
        v70 = v167;
      }

      v152 = &qword_1ABF4D8A0;
    }

    else
    {
      v194 = v189;
      v192 = &type metadata for TriplesQuery.Clause.TableCodingKeys;
      v153 = sub_1ABE9EC74();
      sub_1ABEA58FC(v153);
      v197 = sub_1ABF22D14();
      v198 = v51;
      sub_1ABA93DC0(&v195);
      sub_1ABAB5950();
      v146 = &unk_1EB4D2E60;
      v147 = &qword_1ABF4D8A0;
      sub_1ABAB5B64();
      sub_1ABA8FCE0();
      sub_1ABA95410(v154);
      sub_1ABA829B4();
      sub_1ABF23EE4();
      sub_1ABAA55CC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABA7FAB0();
        sub_1ABADC9D0();
        v70 = v168;
      }

      sub_1ABAA6250();
      v152 = v178;
      if (v73)
      {
        sub_1ABA7DC80(v155);
        sub_1ABADC9D0();
        v152 = v178;
        v70 = v169;
      }
    }

    *(v70 + 16) = v146;
    (*(v33 + 32))(v70 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v147, v152, v74);
  }

  v195 = v70;
  v156 = v182;
  sub_1ABF22404();
  sub_1ABAB5B64();
  sub_1ABA7D918();
  sub_1ABA95410(v157);
  sub_1ABF23EF4();
  (*(v183 + 8))(v156, v185);

  sub_1ABA7BC1C();
}

uint64_t sub_1ABEA34EC@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v37 = a6;
  v51 = a5;
  v40 = a7;
  v11 = sub_1ABAD219C(&qword_1EB4D2E00, &unk_1ABF3A5D0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v34 - v14;
  v16 = sub_1ABAD219C(&qword_1EB4D50F0, &unk_1ABF3A620);
  v38 = *(v16 - 8);
  v39 = v16;
  v17 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v36 = &v34 - v21;
  memcpy(__dst, a1, 0x69uLL);
  if (((1 << (__dst[104] >> 5)) & 0x5C) != 0)
  {

    sub_1ABF22CE4();
    memcpy(v45, __dst, 0x69uLL);
    v41 = a2;
    v42 = a3;
    v43 = a4;
    v44 = v51;
    v51 = sub_1ABF22424();
    v47 = v51;
    v48 = MEMORY[0x1E699FE60];
    sub_1ABA93DC0(v46);
    sub_1ABE971E8(__dst, v49);
    TriplesQuery.Clause.Impl.sqlExpression(config:)(&v41);
  }

  else
  {

    sub_1ABF22CE4();
    memcpy(v45, __dst, 0x69uLL);
    v41 = a2;
    v42 = a3;
    v43 = a4;
    v44 = v51;
    v51 = sub_1ABF22424();
    v47 = v51;
    v48 = MEMORY[0x1E699FE60];
    sub_1ABA93DC0(v46);
    sub_1ABE971E8(__dst, v49);
    TriplesQuery.Clause.Impl.graphIdentifierSQLExpression(config:)(&v41);
  }

  memcpy(v49, v45, 0x69uLL);
  sub_1ABE4C0EC(v49);
  sub_1ABF22CA4();
  (*(v12 + 8))(v15, v11);
  sub_1ABA84B54(v46);
  sub_1ABAD219C(&qword_1EB4DB3F0, &unk_1ABF4C7B0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1ABF34740;
  v23 = sub_1ABF22D14();
  v24 = MEMORY[0x1E69A0038];
  *(v22 + 56) = v23;
  *(v22 + 64) = v24;
  v25 = sub_1ABA93DC0((v22 + 32));
  v35 = *(*(v23 - 8) + 16);
  v26 = v19;
  v27 = v37;
  v35(v25, v37, v23);
  sub_1ABAB47C4(&qword_1EB4D0218, &qword_1EB4D50F0, &unk_1ABF3A620);
  v28 = v36;
  v29 = v39;
  sub_1ABF227D4();

  v30 = *(v38 + 8);
  v30(v26, v29);
  v45[3] = v23;
  v45[4] = MEMORY[0x1E69A0040];
  v31 = sub_1ABA93DC0(v45);
  v35(v31, v27, v23);
  sub_1ABAB47C4(&qword_1EB4D0210, &qword_1EB4D50F0, &unk_1ABF3A620);
  v32 = v40;
  sub_1ABF225D4();
  v30(v28, v29);
  sub_1ABA84B54(v45);
  sub_1ABF22424();
  return sub_1ABA7B9B4(v32, 0, 1, v51);
}

void TriplesQuery.Clause.FullTextSearchClause.matchExpression(column:searchType:text:)()
{
  sub_1ABA7E2A8();
  v83 = v5;
  v84 = v6;
  v86 = v7;
  v87 = v8;
  v88 = v9;
  v10 = sub_1ABF22D14();
  v11 = sub_1ABA7BB64(v10);
  v81 = v12;
  v82 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABA7C21C();
  v80 = v15;
  v16 = sub_1ABAD219C(&qword_1EB4D3068, &unk_1ABF3A8A0);
  v17 = sub_1ABA7AB80(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1ABA7AC18();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  sub_1ABAA0B28();
  MEMORY[0x1EEE9AC00](v24);
  sub_1ABA8BD74();
  MEMORY[0x1EEE9AC00](v25);
  sub_1ABA887B4();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v78 - v27;
  v85 = sub_1ABF22164();
  v29 = sub_1ABA7BB64(v85);
  v79 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v29);
  sub_1ABA7AC18();
  v35 = v33 - v34;
  MEMORY[0x1EEE9AC00](v36);
  sub_1ABA8C644();
  MEMORY[0x1EEE9AC00](v37);
  sub_1ABAA08DC();
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v78 - v39;
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v78 - v42;
  v44 = *v86;
  switch(*v87)
  {
    case 1:
      v53 = *v86;

      sub_1ABF22134();
      sub_1ABA82BB0(v0);
      if (!v46)
      {
        v75 = v79;
        (*(v79 + 32))(v3, v0, v1);
        v90 = &type metadata for TriplesQuery.Clause.TableCodingKeys;
        v91 = sub_1ABE9EC74();
        v89 = v53;
        sub_1ABF22D34();
        sub_1ABAB6850();
        sub_1ABA9FF14();
        v76 = sub_1ABAA2ACC();
        v77(v76);
        (*(v75 + 8))(v3, v1);
        goto LABEL_20;
      }

      v22 = v0;
      goto LABEL_15;
    case 2:
      sub_1ABAB66BC();
      sub_1ABA8CBBC();
      sub_1ABF22154();
      sub_1ABA82BB0(v28);
      if (!v46)
      {
        v67 = v79;
        (*(v79 + 32))(v43, v28, v1);
        v90 = &type metadata for TriplesQuery.Clause.TableCodingKeys;
        v68 = sub_1ABE9EC74();
        sub_1ABAA1AF8(v68);
        sub_1ABAB6850();
        sub_1ABA9FF14();
        v69 = sub_1ABAA2ACC();
        v70(v69);
        (*(v67 + 8))(v43, v1);
        goto LABEL_20;
      }

      v22 = v28;
      goto LABEL_15;
    case 3:
      v47 = *v86;
      v0 = v84;

      sub_1ABA8CBBC();
      sub_1ABF22114();
      v48 = v85;
      if (sub_1ABA7E1E0(v22, 1, v85) == 1)
      {
        goto LABEL_15;
      }

      v49 = v79;
      (*(v79 + 32))(v35, v22, v48);
      v90 = &type metadata for TriplesQuery.Clause.TableCodingKeys;
      v91 = sub_1ABE9EC74();
      v89 = v47;
      sub_1ABF22D34();
      sub_1ABAB6850();
      sub_1ABF226F4();
      v50 = *(v81 + 8);
      v51 = sub_1ABA7ABE4();
      v52(v51);
      (*(v49 + 8))(v35, v48);
      goto LABEL_20;
    case 4:
      sub_1ABAB66BC();
      sub_1ABA8CBBC();
      sub_1ABF22144();
      sub_1ABA82BB0(v4);
      if (!v46)
      {
        v63 = v79;
        (*(v79 + 32))(v40, v4, v1);
        v90 = &type metadata for TriplesQuery.Clause.TableCodingKeys;
        v64 = sub_1ABE9EC74();
        sub_1ABAA1AF8(v64);
        sub_1ABAB6850();
        sub_1ABA9FF14();
        v65 = sub_1ABAA2ACC();
        v66(v65);
        (*(v63 + 8))(v40, v1);
        goto LABEL_20;
      }

      v22 = v4;
      goto LABEL_15;
    case 5:
      sub_1ABF22424();
      sub_1ABA7BC1C();

      sub_1ABA7B9B4(v58, v59, v60, v61);
      return;
    default:
      sub_1ABAB66BC();
      sub_1ABA8CBBC();
      sub_1ABF22124();
      v45 = v85;
      if (sub_1ABA7E1E0(v1, 1, v85) == 1)
      {
        v22 = v1;
LABEL_15:
        v54 = v88;
        sub_1ABA925A4(v22, &qword_1EB4D3068, &unk_1ABF3A8A0);
        v55 = sub_1ABF22424();
        v56 = v54;
        v57 = 1;
      }

      else
      {
        v71 = v79;
        (*(v79 + 32))(v2, v1, v45);
        v90 = &type metadata for TriplesQuery.Clause.TableCodingKeys;
        v72 = sub_1ABE9EC74();
        sub_1ABAA1AF8(v72);
        sub_1ABAB6850();
        sub_1ABA9FF14();
        v73 = sub_1ABAA2ACC();
        v74(v73);
        (*(v71 + 8))(v2, v45);
LABEL_20:
        v55 = sub_1ABF22424();
        v56 = v0;
        v57 = 0;
      }

      sub_1ABA7B9B4(v56, v57, 1, v55);
      sub_1ABA7BC1C();
      return;
  }
}

void TriplesQuery.Clause.FullTextSearchClause.stringSetExpression(column:searchType:textSet:)()
{
  sub_1ABA7E2A8();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v51 = v6;
  v52 = sub_1ABF22414();
  v7 = sub_1ABA7BB64(v52);
  v50 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA7C21C();
  v49 = v11;
  v12 = sub_1ABAD219C(&qword_1EB4DB820, &qword_1ABF500A0);
  v13 = sub_1ABA7AB80(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v45 - v16;
  v18 = sub_1ABF22424();
  v19 = sub_1ABA7BB64(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1ABA7C21C();
  v48 = v22;
  v54 = *v5;
  v23 = *(v1 + 56);
  v24 = *v3;
  v25 = *(v1 + 32);
  sub_1ABA7D32C();
  v28 = v27 & v26;
  v30 = (v29 + 63) >> 6;
  v46 = v31;
  v47 = (v31 + 32);

  v32 = 0;
  v53 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v33 = v32;
    if (!v28)
    {
      break;
    }

LABEL_6:
    v34 = (*(v1 + 48) + ((v32 << 10) | (16 * __clz(__rbit64(v28)))));
    v35 = *v34;
    v36 = v34[1];
    v28 &= v28 - 1;
    v57 = v54;
    v56 = v24;

    TriplesQuery.Clause.FullTextSearchClause.matchExpression(column:searchType:text:)();

    if (sub_1ABA7E1E0(v17, 1, v18) == 1)
    {
      sub_1ABA925A4(v17, &qword_1EB4DB820, &qword_1ABF500A0);
    }

    else
    {
      v45 = *v47;
      v45(v48, v17, v18);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = *(v53 + 16);
        sub_1ABA7BEF0();
        sub_1ABADC9D0();
        v53 = v41;
      }

      v38 = *(v53 + 16);
      v37 = *(v53 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_1ABA7DC80(v37);
        sub_1ABADC9D0();
        v53 = v42;
      }

      v39 = v53;
      *(v53 + 16) = v38 + 1;
      v45(v39 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v38, v48, v18);
    }
  }

  while (1)
  {
    v32 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v32 >= v30)
    {

      v55 = v53;
      v43 = v49;
      sub_1ABF223F4();
      sub_1ABAB5B64();
      sub_1ABA7D918();
      sub_1ABA95410(v44);
      sub_1ABF23EF4();
      (*(v50 + 8))(v43, v52);

      sub_1ABA7BC1C();
      return;
    }

    v28 = *(v1 + 56 + 8 * v32);
    ++v33;
    if (v28)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
}

uint64_t sub_1ABEA4334(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v32[1] = a3;
  v5 = sub_1ABF22854();
  v35 = *(v5 - 8);
  v36 = v5;
  v6 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1ABAD219C(&qword_1EB4DBF80, qword_1ABF74140);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v32 - v14;
  v16 = sub_1ABAD219C(&qword_1EB4D50F0, &unk_1ABF3A620);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = v32 - v22;
  v24 = *a1;
  v25 = a1[1];
  v33 = a2;
  v34 = v24;
  sub_1ABEA57F4(a2, v15);
  if (sub_1ABA7E1E0(v15, 1, v16) == 1)
  {
    sub_1ABA925A4(v15, &qword_1EB4DBF80, qword_1ABF74140);
    sub_1ABAD219C(&qword_1EB4D5820, &unk_1ABF39E30);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1ABF34740;
    v27 = MEMORY[0x1E69A0138];
    *(v26 + 56) = MEMORY[0x1E69E6158];
    *(v26 + 64) = v27;
    *(v26 + 32) = v34;
    *(v26 + 40) = v25;

    sub_1ABF22834();
    sub_1ABAD219C(&qword_1EB4D2E00, &unk_1ABF3A5D0);
    sub_1ABF22C94();
    (*(v35 + 8))(v8, v36);
    sub_1ABA7B9B4(v12, 0, 1, v16);
    return sub_1ABEA5864(v12, v33);
  }

  else
  {
    (*(v17 + 32))(v23, v15, v16);
    sub_1ABAD219C(&qword_1EB4D5820, &unk_1ABF39E30);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1ABF34740;
    v30 = MEMORY[0x1E69A0138];
    *(v29 + 56) = MEMORY[0x1E69E6158];
    *(v29 + 64) = v30;
    *(v29 + 32) = v34;
    *(v29 + 40) = v25;

    sub_1ABF22834();
    sub_1ABAB47C4(&unk_1EB4D3AE8, &qword_1EB4D50F0, &unk_1ABF3A620);
    sub_1ABF22594();
    (*(v35 + 8))(v8, v36);
    v31 = *(v17 + 8);
    v31(v20, v16);
    return (v31)(v23, v16);
  }
}

uint64_t TriplesQuery.ComparisonType.compare(numeric:_:)()
{
  switch(*v0)
  {
    case 1:
      v13 = sub_1ABF22D14();
      sub_1ABA8B390(v13, MEMORY[0x1E69A0050], v18, v19, v20, v21, v22, v23, v24, v25, v26, v27);
      sub_1ABA97860();
      v15 = *(v14 + 16);
      sub_1ABA8C9D8();
      v16();
      sub_1ABAA4BF4();
      sub_1ABF22AE4();
      break;
    case 2:
      v5 = sub_1ABF22D14();
      sub_1ABA8B390(v5, MEMORY[0x1E69A0050], v18, v19, v20, v21, v22, v23, v24, v25, v26, v27);
      sub_1ABA97860();
      v7 = *(v6 + 16);
      sub_1ABA8C9D8();
      v8();
      sub_1ABAA4BF4();
      sub_1ABF228C4();
      break;
    case 3:
      v9 = sub_1ABF22D14();
      sub_1ABA8B390(v9, MEMORY[0x1E69A0050], v18, v19, v20, v21, v22, v23, v24, v25, v26, v27);
      sub_1ABA97860();
      v11 = *(v10 + 16);
      sub_1ABA8C9D8();
      v12();
      sub_1ABAA4BF4();
      sub_1ABF22AF4();
      break;
    default:
      v1 = sub_1ABF22D14();
      sub_1ABA8B390(v1, MEMORY[0x1E69A0050], v18, v19, v20, v21, v22, v23, v24, v25, v26, v27);
      sub_1ABA97860();
      v3 = *(v2 + 16);
      sub_1ABA8C9D8();
      v4();
      sub_1ABAA4BF4();
      sub_1ABF228B4();
      break;
  }

  sub_1ABA84B54(&v18);
  return sub_1ABA84B54(&v23);
}

void TriplesQuery.ComparisonType.compare(text:_:)()
{
  sub_1ABA8AAB0();
  v2 = v1;
  v3 = sub_1ABF22C24();
  v4 = sub_1ABA7BB64(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7BC58();
  v11 = v10 - v9;
  v12 = sub_1ABF227C4();
  v13 = sub_1ABA7AB80(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA7BC58();
  *v0;
  sub_1ABF22794();
  sub_1ABA97E30();
  sub_1ABF22D14();
  sub_1ABA8C4A0();
  sub_1ABA997CC();
  sub_1ABA8C4A0();
  sub_1ABAA42E4();
  sub_1ABA8C4A0();
  sub_1ABF22784();
  v16[3] = MEMORY[0x1E69E63B0];
  v16[4] = MEMORY[0x1E69A0160];
  v16[0] = v2;
  sub_1ABF227A4();
  sub_1ABA925A4(v16, &unk_1EB4D3C40, &unk_1ABF3FCC0);
  sub_1ABF22784();
  sub_1ABF22C04();
  sub_1ABF22BE4();
  (*(v6 + 8))(v11, v3);
  sub_1ABA8B438();
}

void sub_1ABEA4C34()
{
  sub_1ABA8AAB0();
  v3 = v2;
  v5 = v4;
  v66 = sub_1ABF22C24();
  v6 = sub_1ABA7BB64(v66);
  v77 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1ABA7C21C();
  v65 = v10;
  sub_1ABA8409C();
  v69 = sub_1ABF22414();
  v11 = sub_1ABA7BB64(v69);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABA7C21C();
  v68 = v16;
  sub_1ABA8409C();
  v72 = sub_1ABF22D14();
  v17 = sub_1ABA7BB64(v72);
  v63 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1ABA7AC18();
  sub_1ABA887B4();
  MEMORY[0x1EEE9AC00](v21);
  sub_1ABA88E50();
  v60 = v22;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v23);
  sub_1ABA972D4();
  v71 = v24;
  sub_1ABA8409C();
  v67 = sub_1ABF22424();
  v25 = sub_1ABA7BB64(v67);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v25);
  sub_1ABA7C21C();
  v78 = v30;
  v31 = *v0;
  v32 = *(v0 + 1);
  v33 = *(v32 + 16);
  v34 = MEMORY[0x1E69E7CC0];
  if (v33)
  {
    HIDWORD(v56) = *v0;
    v59 = v1;
    v57 = v5;
    v75 = v3[1];
    v76 = *v3;
    v73 = v3[3];
    v74 = v3[2];
    v93 = MEMORY[0x1E69E7CC0];
    sub_1ABADEC6C();
    v35 = (v32 + 32);
    v34 = v93;
    v61 = (v13 + 8);
    v62 = (v77 + 8);
    v70 = (v63 + 8);
    v58 = v63 + 16;
    v64 = v13;
    v36 = v67;
    do
    {
      v37 = memcpy(v92, v35, 0x69uLL);
      switch(BYTE8(v92[6]) >> 5)
      {
        case 1:
          v84 = v92[0];
          v85 = v92[1];
          v86 = v92[2];
          v87 = v92[3];
          v88 = v92[4];
          sub_1ABEA26F8(v37, v38, v39, v40, v41, v42, v43, v44, v56, v57, v58, v59, v60, v61, v62, v64, v65, v66, v67, v68);
          break;
        case 2:
          v84 = v92[0];
          v85 = v92[1];
          v86 = v92[2];
          v87 = v92[3];
          v88 = v92[4];
          v89 = v92[5];
          v90 = *&v92[6];
          v91 = BYTE8(v92[6]) & 0x1F;
          v79 = v76;
          v80 = v75;
          v81 = v74;
          v82 = v73;
          TriplesQuery.Clause.MatchClause.sqlExpression(config:)(&v79, v38, v39, v40, v41, v42, v43, v44, v56, v57, v58, v59, v60, v61, v62, v64, v65, v66, v67, v68);
          break;
        case 3:
          v79 = *&v92[0];
          LOBYTE(v80) = BYTE8(v92[0]);
          *&v84 = v76;
          *(&v84 + 1) = v75;
          *&v85 = v74;
          *(&v85 + 1) = v73;
          TriplesQuery.Clause.FullTextSearchClause.sqlExpression(config:)();
          break;
        case 4:
          v45 = BYTE1(v92[0]);
          if (v92[0])
          {
            v82 = &type metadata for TriplesQuery.ComparableColumn;
            v83 = sub_1ABEA5750();
            LOBYTE(v79) = 1;
            sub_1ABE10DCC(v92, &v84);
            sub_1ABF22D34();
            switch(v45)
            {
              case 1:
                *(&v85 + 1) = v72;
                sub_1ABAA00B4(MEMORY[0x1E69A0050]);
                sub_1ABAA2E78();
                v51();
                v82 = MEMORY[0x1E69E63B0];
                sub_1ABAA50D8(MEMORY[0x1E69A0160]);
                sub_1ABF22AE4();
                break;
              case 2:
                *(&v85 + 1) = v72;
                sub_1ABAA00B4(MEMORY[0x1E69A0050]);
                sub_1ABAA2E78();
                v49();
                v82 = MEMORY[0x1E69E63B0];
                sub_1ABAA50D8(MEMORY[0x1E69A0160]);
                sub_1ABF228C4();
                break;
              case 3:
                *(&v85 + 1) = v72;
                sub_1ABAA00B4(MEMORY[0x1E69A0050]);
                sub_1ABAA2E78();
                v50();
                v82 = MEMORY[0x1E69E63B0];
                sub_1ABAA50D8(MEMORY[0x1E69A0160]);
                sub_1ABF22AF4();
                break;
              default:
                *(&v85 + 1) = v72;
                sub_1ABAA00B4(MEMORY[0x1E69A0050]);
                sub_1ABAA2E78();
                v46();
                v82 = MEMORY[0x1E69E63B0];
                sub_1ABAA50D8(MEMORY[0x1E69A0160]);
                sub_1ABF228B4();
                break;
            }

            sub_1ABA84B54(&v79);
            sub_1ABA84B54(&v84);
            (*v70)(v59, v72);
          }

          else
          {
            v82 = &type metadata for TriplesQuery.ComparableColumn;
            v83 = sub_1ABEA5750();
            LOBYTE(v79) = 0;
            sub_1ABE10DCC(v92, &v84);
            sub_1ABF22D34();
            TriplesQuery.ComparisonType.compare(text:_:)();
            (*v70)(v60, v72);
          }

          goto LABEL_25;
        case 5:
          v47 = *(&v92[0] + 1);
          switch(LOBYTE(v92[0]))
          {
            case 1:
              *(&v85 + 1) = &type metadata for TriplesQuery.Clause.TableCodingKeys;
              *&v86 = sub_1ABE9EC74();
              v48 = 1;
              goto LABEL_19;
            case 2:
              *(&v85 + 1) = &type metadata for TriplesQuery.Clause.TableCodingKeys;
              *&v86 = sub_1ABE9EC74();
              v48 = 5;
              goto LABEL_19;
            case 3:
              *(&v85 + 1) = &type metadata for TriplesQuery.Clause.TableCodingKeys;
              *&v86 = sub_1ABE9EC74();
              v48 = 2;
              goto LABEL_19;
            case 4:
              *(&v85 + 1) = &type metadata for TriplesQuery.Clause.TableCodingKeys;
              *&v86 = sub_1ABE9EC74();
              v48 = 3;
LABEL_19:
              LOBYTE(v84) = v48;
              sub_1ABF22D34();
              break;
            default:
              sub_1ABAA1DD4();
              sub_1ABF22D24();
              break;
          }

          *&v84 = sub_1ABE9ED2C(v47, v76, v75, v74, v73, v71);
          sub_1ABF22404();
          sub_1ABAD219C(&qword_1EB4DBF78, &unk_1ABF74130);
          sub_1ABA7D918();
          sub_1ABA7FD88(&qword_1ED870670);
          sub_1ABF23EF4();
          (*v61)(v68, v69);

          (*v70)(v71, v72);
          v13 = v64;
          v36 = v67;
          break;
        case 6:
          sub_1ABE10DCC(v92, &v84);
          sub_1ABEA5944();
          sub_1ABF22BE4();
          (*v62)(v65, v66);
LABEL_25:
          sub_1ABE10E28(v92);
          break;
        default:
          LOBYTE(v79) = v92[0] & 1;
          v80 = *(&v92[0] + 1);
          *&v84 = v76;
          *(&v84 + 1) = v75;
          *&v85 = v74;
          *(&v85 + 1) = v73;
          sub_1ABEA4C34(&v84);
          break;
      }

      v93 = v34;
      v52 = *(v34 + 16);
      if (v52 >= *(v34 + 24) >> 1)
      {
        sub_1ABADEC6C();
        v34 = v93;
      }

      *(v34 + 16) = v52 + 1;
      (*(v27 + 32))(v34 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v52, v78, v36);
      v35 += 112;
      --v33;
    }

    while (v33);
    v31 = BYTE4(v56);
  }

  *&v92[0] = v34;
  if (v31)
  {
    sub_1ABF223F4();
  }

  else
  {
    sub_1ABF22404();
  }

  v53 = sub_1ABA8CD18();
  sub_1ABAD219C(v53, v54);
  sub_1ABA7D918();
  sub_1ABA7FD88(v55);
  sub_1ABF23EF4();
  (*(v13 + 8))(v68, v69);

  sub_1ABA8B438();
}

void TriplesQuery.Clause.JoinClause.graphIdentifierSQLExpression(config:)()
{
  sub_1ABA7E2A8();
  v2 = v1;
  v28 = sub_1ABF22414();
  v3 = sub_1ABA7BB64(v28);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA7BC58();
  v10 = v9 - v8;
  v27 = sub_1ABF22D14();
  v11 = sub_1ABA7BB64(v27);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABA7BC58();
  v18 = v17 - v16;
  v20 = *v2;
  v19 = v2[1];
  v21 = v2[2];
  v22 = v2[3];
  v23 = *(v0 + 8);
  switch(*v0)
  {
    case 1:
    case 2:
    case 3:
    case 4:
      sub_1ABE9EC74();
      sub_1ABF22D34();
      break;
    default:
      sub_1ABAA1DD4();
      sub_1ABF22D24();
      break;
  }

  sub_1ABE9ED2C(v23, v20, v19, v21, v22, v18);
  sub_1ABF22404();
  v24 = sub_1ABA7ABE4();
  sub_1ABAD219C(v24, v25);
  sub_1ABA7D918();
  sub_1ABAA0FE0(v26);
  sub_1ABF23EF4();
  (*(v5 + 8))(v10, v28);

  (*(v13 + 8))(v18, v27);
  sub_1ABA7BC1C();
}

unint64_t sub_1ABEA5750()
{
  result = qword_1ED86B090;
  if (!qword_1ED86B090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86B090);
  }

  return result;
}

uint64_t sub_1ABEA57F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&qword_1EB4DBF80, qword_1ABF74140);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ABEA5864(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&qword_1EB4DBF80, qword_1ABF74140);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ABEA58EC(uint64_t result)
{
  *(v1 - 96) = result;
  *(v1 - 128) = 5;
  return result;
}

uint64_t sub_1ABEA58FC(uint64_t result)
{
  *(v1 - 144) = result;
  *(v1 - 176) = 4;
  return result;
}

uint64_t sub_1ABEA590C(uint64_t result)
{
  *(v1 - 144) = result;
  *(v1 - 176) = 1;
  return result;
}

uint64_t sub_1ABEA591C(uint64_t result)
{
  *(v1 - 144) = result;
  *(v1 - 176) = 5;
  return result;
}

void sub_1ABEA5944()
{

  JUMPOUT(0x1AC5A8250);
}

unsigned __int8 *static TriplesQuery.compare(column:matchType:value:)@<X0>(unsigned __int8 *result@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = *result | (*a2 << 8);
  *(a3 + 8) = a4;
  *(a3 + 88) = 0;
  *(a3 + 104) = 0x80;
  return result;
}

uint64_t static TriplesQuery.match(subjectMatchType:subjects:predicateMatchType:predicates:objectMatchType:objects:relationshipIdMatchType:relationshipIds:relationshipPredicateMatchType:relationshipPredicates:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, unsigned __int8 *a4@<X4>, unsigned __int8 *a5@<X6>, void *a6@<X8>)
{
  sub_1ABA7C8D8(a1, a2, a3, a4, a5, a6);
  *(v7 + 16) = v8;
  *(v7 + 24) = v6;
  *(v7 + 32) = v10;
  *(v7 + 40) = v9;
  *(v7 + 48) = v12;
  *(v7 + 56) = v11;
  *(v7 + 64) = v14;
  *(v7 + 72) = v13;
  *(v7 + 88) = 0;
  *(v7 + 104) = 32;
}

{
  sub_1ABA7C8D8(a1, a2, a3, a4, a5, a6);
  *(v6 + 16) = 0;
  *(v6 + 24) = v7;
  *(v6 + 32) = v8;
  *(v6 + 40) = v9;
  *(v6 + 48) = v10;
  *(v6 + 56) = v11;
  *(v6 + 64) = v12;
  *(v6 + 72) = v13;
  *(v6 + 88) = 0;
  *(v6 + 96) = 0;
  *(v6 + 80) = v14;
  *(v6 + 104) = 65;
}

uint64_t TriplesQuery.combine(query:)@<X0>(void *__src@<X0>, uint64_t a2@<X8>)
{
  memcpy(__dst, __src, 0x69uLL);
  sub_1ABA7F968();
  memcpy(v4, v5, v6);
  sub_1ABAD219C(&qword_1EB4D10F8, &qword_1ABF33280);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1ABF34060;
  sub_1ABA7F968();
  memcpy(v8, v9, v10);
  memcpy((v7 + 144), __src, 0x69uLL);
  *a2 = 1;
  *(a2 + 8) = v7;
  *(a2 + 88) = 0;
  *(a2 + 104) = 0;
  sub_1ABE10DCC(__dst, v12);
  return sub_1ABE10DCC(v14, v12);
}

uint64_t TriplesQueryParameters.init(limit:sorting:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  v5 = *(a3 + 8);
  *a4 = result;
  *(a4 + 8) = a2 & 1;
  *(a4 + 16) = v4;
  *(a4 + 24) = v5;
  return result;
}

double sub_1ABEA5B7C@<D0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v7 = *v3;
  v8 = v7 | 0x100;
  v9 = v7 | 0x300;
  sub_1ABAD219C(&qword_1EB4D10F8, &qword_1ABF33280);
  v10 = swift_allocObject();
  *&result = 2;
  *(v10 + 16) = xmmword_1ABF34060;
  *(v10 + 32) = v8;
  *(v10 + 40) = a2;
  *(v10 + 120) = 0;
  *(v10 + 136) = 0x80;
  *(v10 + 144) = v9;
  *(v10 + 152) = a3;
  *(v10 + 232) = 0;
  *(v10 + 248) = 0x80;
  *a1 = 0;
  *(a1 + 8) = v10;
  *(a1 + 88) = 0;
  *(a1 + 104) = 0;
  return result;
}

IntelligencePlatform::TriplesQuery::FullTextSearchType_optional __swiftcall TriplesQuery.FullTextSearchType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1ABF24D84();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t static TriplesQuery.fullTextSearch(objects:objectSearchType:)@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = a1;
  *(a3 + 8) = v3;
  *(a3 + 88) = 0;
  *(a3 + 104) = 96;
}

uint64_t TriplesQuery.clause.getter()
{
  sub_1ABA7F968();
  memcpy(v0, v1, v2);
  sub_1ABA7F968();
  memcpy(v3, v4, v5);
  return sub_1ABE10DCC(v8, v7);
}

uint64_t sub_1ABEA5CDC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x657375616C63 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1ABF25054();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1ABEA5D68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABEA5CDC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1ABEA5D94(uint64_t a1)
{
  v2 = sub_1ABEA5F78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABEA5DD0(uint64_t a1)
{
  v2 = sub_1ABEA5F78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TriplesQuery.encode(to:)()
{
  sub_1ABA7BCA8();
  v1 = v0;
  v2 = sub_1ABAD219C(&qword_1EB4DBF98, &qword_1ABF74198);
  sub_1ABA7BB64(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15[-v8 - 8];
  sub_1ABA7F968();
  memcpy(v10, v11, v12);
  v13 = v1[4];
  sub_1ABA88DCC(v1, v1[3]);
  sub_1ABE10DCC(v17, v16);
  sub_1ABEA5F78();
  sub_1ABF252E4();
  memcpy(v16, v17, 0x69uLL);
  sub_1ABE9BE2C();
  sub_1ABF24F84();
  memcpy(v15, v16, 0x69uLL);
  sub_1ABE10E28(v15);
  (*(v4 + 8))(v9, v2);
  sub_1ABA7BC90();
}

unint64_t sub_1ABEA5F78()
{
  result = qword_1EB4D00C0;
  if (!qword_1EB4D00C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D00C0);
  }

  return result;
}

void TriplesQuery.init(from:)()
{
  sub_1ABA7BCA8();
  v3 = v2;
  v5 = v4;
  v6 = sub_1ABAD219C(&qword_1EB4DBFA0, &qword_1ABF741A0);
  sub_1ABA7BB64(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABA7BCE0();
  v12 = v3[4];
  sub_1ABA88DCC(v3, v3[3]);
  sub_1ABEA5F78();
  sub_1ABF252C4();
  if (!v0)
  {
    sub_1ABE9BF58();
    sub_1ABF24E64();
    (*(v8 + 8))(v1, v6);
    memcpy(v5, v13, 0x69uLL);
  }

  sub_1ABA84B54(v3);
  sub_1ABA7BC90();
}

void static TriplesQuery.isA(_:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_1ABAD219C(&qword_1EB4D10E0, &unk_1ABF5E6C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1ABF34740;
  if (_Records_GDEntityPredicate_records)
  {
    v6 = inited;
    v7 = *(_Records_GDEntityPredicate_records + 40);
    v8 = *(_Records_GDEntityPredicate_records + 41);
    v9 = _Records_GDEntityPredicate_records[156];

    sub_1ABA91D48(v9, v7, v8, &v27);
    v10 = v28;
    v11 = v29;
    v12 = v30;
    *(v6 + 32) = v27;
    *(v6 + 48) = v10;
    *(v6 + 56) = v11;
    *(v6 + 64) = v12;
    sub_1ABB2CFA0(v6, v13, v14, v15, v16, v17, v18, v19, 1, 2, v25, *v26, *&v26[4]);
    v21 = v20;
    sub_1ABAD219C(&qword_1EB4D10F0, &qword_1ABF3A5C0);
    v22 = swift_initStackObject();
    *(v22 + 16) = v24;
    *(v22 + 32) = v4;
    *(v22 + 40) = v3;
    sub_1ABB2C7F4();
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = v21;
    *(a2 + 40) = 0;
    *(a2 + 48) = v23;
    *(a2 + 56) = 0u;
    *(a2 + 72) = 0u;
    *(a2 + 88) = 0u;
    *(a2 + 104) = 65;
  }

  else
  {
    __break(1u);
  }
}

uint64_t TriplesQuery.description.getter()
{
  v2[0] = 0;
  v2[1] = 0xE000000000000000;
  sub_1ABF24AB4();
  v3 = 0;
  v4 = 0xE000000000000000;
  MEMORY[0x1AC5A9410](0xD000000000000011, 0x80000001ABF931A0);
  memcpy(v2, v0, 0x69uLL);
  sub_1ABF24C54();
  MEMORY[0x1AC5A9410](62, 0xE100000000000000);
  return v3;
}

uint64_t sub_1ABEA6338(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7365686374616DLL && a2 == 0xE700000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4D746F4E73656F64 && a2 == 0xEC00000068637461)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

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

uint64_t sub_1ABEA6404(char a1)
{
  if (a1)
  {
    return 0x4D746F4E73656F64;
  }

  else
  {
    return 0x7365686374616DLL;
  }
}

uint64_t sub_1ABEA6468@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABEA6338(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABEA6490(uint64_t a1)
{
  v2 = sub_1ABEA8908();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABEA64CC(uint64_t a1)
{
  v2 = sub_1ABEA8908();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABEA6508(uint64_t a1)
{
  v2 = sub_1ABEA895C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABEA6544(uint64_t a1)
{
  v2 = sub_1ABEA895C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABEA6580(uint64_t a1)
{
  v2 = sub_1ABEA89B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABEA65BC(uint64_t a1)
{
  v2 = sub_1ABEA89B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TriplesQuery.MatchType.encode(to:)()
{
  sub_1ABA7BCA8();
  v3 = v2;
  v4 = sub_1ABAD219C(&qword_1EB4DBFA8, &qword_1ABF741A8);
  v5 = sub_1ABA7BB64(v4);
  v33 = v6;
  v34 = v5;
  v8 = *(v7 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA8EDF4(v10, v31);
  v11 = sub_1ABAD219C(&qword_1EB4DBFB0, &qword_1ABF741B0);
  v12 = sub_1ABA7BB64(v11);
  v31 = v13;
  v32 = v12;
  v15 = *(v14 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v31 - v17;
  v19 = sub_1ABAD219C(&qword_1EB4DBFB8, &qword_1ABF741B8);
  sub_1ABA7BB64(v19);
  v21 = v20;
  v23 = *(v22 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v24);
  sub_1ABA8176C();
  v25 = *v0;
  v26 = v3[4];
  sub_1ABA88DCC(v3, v3[3]);
  sub_1ABEA8908();
  sub_1ABAA36C4();
  v27 = (v21 + 8);
  if (v25)
  {
    sub_1ABA8B6EC();
    sub_1ABEA895C();
    sub_1ABA812CC();
    v28 = sub_1ABA90498();
  }

  else
  {
    sub_1ABEA89B0();
    sub_1ABA812CC();
    v29 = v32;
    v30 = *(v31 + 8);
    v28 = v18;
  }

  v30(v28, v29);
  (*v27)(v1, v19);
  sub_1ABA7BC90();
}

void TriplesQuery.MatchType.init(from:)()
{
  sub_1ABA7BCA8();
  v44 = v1;
  v3 = v2;
  v42[6] = v4;
  v43 = sub_1ABAD219C(&qword_1EB4DBFC8, &qword_1ABF741C0);
  sub_1ABA7BB64(v43);
  v42[5] = v5;
  v7 = *(v6 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v42 - v9;
  v11 = sub_1ABAD219C(&qword_1EB4DBFD0, &qword_1ABF741C8);
  sub_1ABA7BB64(v11);
  v42[4] = v12;
  v14 = *(v13 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABA7BCE0();
  v16 = sub_1ABAD219C(&qword_1EB4DBFD8, &unk_1ABF741D0);
  sub_1ABA7BB64(v16);
  v42[7] = v17;
  v19 = *(v18 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v20);
  sub_1ABA7ED98();
  v21 = v3[3];
  sub_1ABA88DCC(v3, v21);
  sub_1ABEA8908();
  sub_1ABAA5B2C();
  if (!v1)
  {
    v22 = sub_1ABA84464();
    v23 = sub_1ABAD4EA4(v22, 0);
    if (v25 == v24 >> 1)
    {
      v43 = v23;
    }

    else
    {
      sub_1ABA9A788();
      if (v28 == v29)
      {
        __break(1u);
        return;
      }

      v30 = sub_1ABAA4310(v26, v27);
      sub_1ABAD4E90(v30);
      sub_1ABAA334C();
      if (!(v21 >> 1))
      {
        if (v3)
        {
          sub_1ABA8B6EC();
          sub_1ABEA895C();
          sub_1ABA7E518();
          sub_1ABAA4C0C();
          swift_unknownObjectRelease();
          v31 = sub_1ABA992D8();
          v33 = v11;
        }

        else
        {
          sub_1ABEA89B0();
          sub_1ABA7E518();
          sub_1ABAA4C0C();
          swift_unknownObjectRelease();
          v31 = sub_1ABA992D8();
          v33 = v42[2];
        }

        v32(v31, v33);
        v40 = sub_1ABA81D80();
        v41(v40);
        *v10 = v3;
        sub_1ABA84B54(v44);
        goto LABEL_12;
      }

      v43 = v0;
    }

    v34 = sub_1ABF24B44();
    swift_allocError();
    v36 = v35;
    v37 = *(sub_1ABAD219C(&qword_1EB4D0768, &qword_1ABF31050) + 48);
    *v36 = &type metadata for TriplesQuery.MatchType;
    sub_1ABF24DA4();
    sub_1ABA835CC();
    (*(*(v34 - 8) + 104))(v36, *MEMORY[0x1E69E6AF8], v34);
    swift_willThrow();
    swift_unknownObjectRelease();
    v38 = sub_1ABAA3E6C();
    v39(v38);
    v3 = v44;
  }

  sub_1ABA84B54(v3);
LABEL_12:
  sub_1ABA7BC90();
}

uint64_t TriplesQuery.FullTextSearchType.rawValue.getter()
{
  result = 0x6E656B6F54796E61;
  switch(*v0)
  {
    case 1:
      result = 0x6E656B6F546C6C61;
      break;
    case 2:
      result = 0x69666572506C6C61;
      break;
    case 3:
      result = 0x657361726870;
      break;
    case 4:
      result = 0x6850786966657270;
      break;
    case 5:
      result = 0x6E69727473627573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABEA6CF0@<X0>(uint64_t *a1@<X8>)
{
  result = TriplesQuery.FullTextSearchType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1ABEA6DC8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_1ABAD1684();
}

IntelligencePlatform::TriplesQuery::ComparableColumn_optional __swiftcall TriplesQuery.ComparableColumn.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  countAndFlagsBits = stringValue._countAndFlagsBits;
  v4 = v1;
  v5 = stringValue._countAndFlagsBits == 0x7463656A626FLL && stringValue._object == 0xE600000000000000;
  if (v5 || (sub_1ABF25054() & 1) != 0)
  {

    v7 = 0;
  }

  else if (countAndFlagsBits == 0x6D617473656D6974 && object == 0xE900000000000070)
  {

    v7 = 1;
  }

  else
  {
    v9 = sub_1ABF25054();

    if (v9)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *v4 = v7;
  return result;
}

uint64_t sub_1ABEA6ED4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7463656A626FLL && a2 == 0xE600000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

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

uint64_t sub_1ABEA6FA0(char a1)
{
  if (a1)
  {
    return 0x6D617473656D6974;
  }

  else
  {
    return 0x7463656A626FLL;
  }
}

uint64_t sub_1ABEA6FD8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1ABF25234();
  a4(v8, v6);
  return sub_1ABF25294();
}

uint64_t sub_1ABEA702C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABEA6ED4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABEA7054(uint64_t a1)
{
  v2 = sub_1ABEA8A04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABEA7090(uint64_t a1)
{
  v2 = sub_1ABEA8A04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABEA70CC(uint64_t a1)
{
  v2 = sub_1ABEA8AAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABEA7108(uint64_t a1)
{
  v2 = sub_1ABEA8AAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABEA7144(uint64_t a1)
{
  v2 = sub_1ABEA8A58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABEA7180(uint64_t a1)
{
  v2 = sub_1ABEA8A58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TriplesQuery.ComparableColumn.encode(to:)()
{
  sub_1ABA7BCA8();
  v3 = v2;
  v4 = sub_1ABAD219C(&qword_1EB4DBFE0, &qword_1ABF741E0);
  v5 = sub_1ABA7BB64(v4);
  v33 = v6;
  v34 = v5;
  v8 = *(v7 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA8EDF4(v10, v31);
  v11 = sub_1ABAD219C(&qword_1EB4DBFE8, &qword_1ABF741E8);
  v12 = sub_1ABA7BB64(v11);
  v31 = v13;
  v32 = v12;
  v15 = *(v14 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v31 - v17;
  v19 = sub_1ABAD219C(&qword_1EB4DBFF0, &qword_1ABF741F0);
  sub_1ABA7BB64(v19);
  v21 = v20;
  v23 = *(v22 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v24);
  sub_1ABA8176C();
  v25 = *v0;
  v26 = v3[4];
  sub_1ABA88DCC(v3, v3[3]);
  sub_1ABEA8A04();
  sub_1ABAA36C4();
  v27 = (v21 + 8);
  if (v25)
  {
    sub_1ABA8B6EC();
    sub_1ABEA8A58();
    sub_1ABA812CC();
    v28 = sub_1ABA90498();
  }

  else
  {
    sub_1ABEA8AAC();
    sub_1ABA812CC();
    v29 = v32;
    v30 = *(v31 + 8);
    v28 = v18;
  }

  v30(v28, v29);
  (*v27)(v1, v19);
  sub_1ABA7BC90();
}

uint64_t sub_1ABEA7414()
{
  v1 = *v0;
  sub_1ABF25234();
  MEMORY[0x1AC5AA8A0](v1);
  return sub_1ABF25294();
}

void TriplesQuery.ComparableColumn.init(from:)()
{
  sub_1ABA7BCA8();
  v44 = v1;
  v3 = v2;
  v42[6] = v4;
  v43 = sub_1ABAD219C(&qword_1EB4DC010, &qword_1ABF741F8);
  sub_1ABA7BB64(v43);
  v42[5] = v5;
  v7 = *(v6 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v42 - v9;
  v11 = sub_1ABAD219C(&qword_1EB4DC018, &qword_1ABF74200);
  sub_1ABA7BB64(v11);
  v42[4] = v12;
  v14 = *(v13 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABA7BCE0();
  v16 = sub_1ABAD219C(&qword_1EB4DC020, &qword_1ABF74208);
  sub_1ABA7BB64(v16);
  v42[7] = v17;
  v19 = *(v18 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v20);
  sub_1ABA7ED98();
  v21 = v3[3];
  sub_1ABA88DCC(v3, v21);
  sub_1ABEA8A04();
  sub_1ABAA5B2C();
  if (!v1)
  {
    v22 = sub_1ABA84464();
    v23 = sub_1ABAD4EA4(v22, 0);
    if (v25 == v24 >> 1)
    {
      v43 = v23;
    }

    else
    {
      sub_1ABA9A788();
      if (v28 == v29)
      {
        __break(1u);
        return;
      }

      v30 = sub_1ABAA4310(v26, v27);
      sub_1ABAD4E90(v30);
      sub_1ABAA334C();
      if (!(v21 >> 1))
      {
        if (v3)
        {
          sub_1ABA8B6EC();
          sub_1ABEA8A58();
          sub_1ABA7E518();
          sub_1ABAA4C0C();
          swift_unknownObjectRelease();
          v31 = sub_1ABA992D8();
          v33 = v11;
        }

        else
        {
          sub_1ABEA8AAC();
          sub_1ABA7E518();
          sub_1ABAA4C0C();
          swift_unknownObjectRelease();
          v31 = sub_1ABA992D8();
          v33 = v42[2];
        }

        v32(v31, v33);
        v40 = sub_1ABA81D80();
        v41(v40);
        *v10 = v3;
        sub_1ABA84B54(v44);
        goto LABEL_12;
      }

      v43 = v0;
    }

    v34 = sub_1ABF24B44();
    swift_allocError();
    v36 = v35;
    v37 = *(sub_1ABAD219C(&qword_1EB4D0768, &qword_1ABF31050) + 48);
    *v36 = &type metadata for TriplesQuery.ComparableColumn;
    sub_1ABF24DA4();
    sub_1ABA835CC();
    (*(*(v34 - 8) + 104))(v36, *MEMORY[0x1E69E6AF8], v34);
    swift_willThrow();
    swift_unknownObjectRelease();
    v38 = sub_1ABAA3E6C();
    v39(v38);
    v3 = v44;
  }

  sub_1ABA84B54(v3);
LABEL_12:
  sub_1ABA7BC90();
}

uint64_t TriplesQuery.ComparableColumn.stringValue.getter()
{
  if (*v0)
  {
    result = 0x6D617473656D6974;
  }

  else
  {
    result = 0x7463656A626FLL;
  }

  *v0;
  return result;
}

uint64_t sub_1ABEA7894(uint64_t a1)
{
  v2 = sub_1ABEA5750();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABEA78D0(uint64_t a1)
{
  v2 = sub_1ABEA5750();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABEA7920(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5472657461657267 && a2 == 0xEB000000006E6168;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x80000001ABF95220 == a2;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E6168547373656CLL && a2 == 0xE800000000000000;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6E6168547373656CLL && a2 == 0xEF6C61757145724FLL)
      {

        return 3;
      }

      else
      {
        v9 = sub_1ABF25054();

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

unint64_t sub_1ABEA7A8C(char a1)
{
  result = 0x5472657461657267;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
    case 3:
      result = 0x6E6168547373656CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABEA7B20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABEA7920(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABEA7B48(uint64_t a1)
{
  v2 = sub_1ABEA8B00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABEA7B84(uint64_t a1)
{
  v2 = sub_1ABEA8B00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABEA7BC0(uint64_t a1)
{
  v2 = sub_1ABEA8C50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABEA7BFC(uint64_t a1)
{
  v2 = sub_1ABEA8C50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABEA7C38(uint64_t a1)
{
  v2 = sub_1ABEA8BFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABEA7C74(uint64_t a1)
{
  v2 = sub_1ABEA8BFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABEA7CB0(uint64_t a1)
{
  v2 = sub_1ABEA8BA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABEA7CEC(uint64_t a1)
{
  v2 = sub_1ABEA8BA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABEA7D28(uint64_t a1)
{
  v2 = sub_1ABEA8B54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABEA7D64(uint64_t a1)
{
  v2 = sub_1ABEA8B54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TriplesQuery.ComparisonType.encode(to:)()
{
  sub_1ABA7BCA8();
  v4 = v3;
  v5 = sub_1ABAD219C(&qword_1EB4DC028, &qword_1ABF74210);
  v6 = sub_1ABA7BB64(v5);
  v53 = v7;
  v54 = v6;
  v9 = *(v8 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA8EDF4(v11, v43);
  v12 = sub_1ABAD219C(&qword_1EB4DC030, &qword_1ABF74218);
  v13 = sub_1ABA7BB64(v12);
  v50 = v14;
  v51 = v13;
  v16 = *(v15 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v17);
  sub_1ABA7FBE0();
  v49 = v18;
  v19 = sub_1ABAD219C(&qword_1EB4DC038, &qword_1ABF74220);
  v20 = sub_1ABA7BB64(v19);
  v47 = v21;
  v48 = v20;
  v23 = *(v22 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v24);
  sub_1ABA7FBE0();
  v46 = v25;
  v26 = sub_1ABAD219C(&qword_1EB4DC040, &qword_1ABF74228);
  v27 = sub_1ABA7BB64(v26);
  v44 = v28;
  v45 = v27;
  v30 = *(v29 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v31);
  sub_1ABA7ED98();
  v32 = sub_1ABAD219C(&qword_1EB4DC048, &qword_1ABF74230);
  sub_1ABA7BB64(v32);
  v34 = v33;
  v36 = *(v35 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v37);
  sub_1ABA8176C();
  v38 = *v0;
  v39 = v4[4];
  sub_1ABA88DCC(v4, v4[3]);
  sub_1ABEA8B00();
  sub_1ABF252E4();
  switch(v38)
  {
    case 1:
      sub_1ABEA8BFC();
      v40 = v46;
      sub_1ABA812CC();
      v42 = v47;
      v41 = v48;
      goto LABEL_6;
    case 2:
      sub_1ABEA8BA8();
      v40 = v49;
      sub_1ABA812CC();
      v42 = v50;
      v41 = v51;
      goto LABEL_6;
    case 3:
      sub_1ABEA8B54();
      v40 = v52;
      sub_1ABA812CC();
      v42 = v53;
      v41 = v54;
LABEL_6:
      (*(v42 + 8))(v40, v41);
      break;
    default:
      sub_1ABEA8C50();
      sub_1ABA812CC();
      (*(v44 + 8))(v1, v45);
      break;
  }

  (*(v34 + 8))(v2, v32);
  sub_1ABA7BC90();
}

uint64_t TriplesQuery.ComparisonType.hashValue.getter()
{
  v1 = *v0;
  sub_1ABF25234();
  MEMORY[0x1AC5AA8A0](v1);
  return sub_1ABF25294();
}

void TriplesQuery.ComparisonType.init(from:)()
{
  sub_1ABA7BCA8();
  v83 = v0;
  v4 = v3;
  v79 = v5;
  v82 = sub_1ABAD219C(&qword_1EB4DC078, &qword_1ABF74238);
  sub_1ABA7BB64(v82);
  v78 = v6;
  v8 = *(v7 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7FBE0();
  v81 = v10;
  v11 = sub_1ABAD219C(&qword_1EB4DC080, &qword_1ABF74240);
  v12 = sub_1ABA7BB64(v11);
  v75 = v13;
  v76 = v12;
  v15 = *(v14 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v16);
  sub_1ABA7FBE0();
  v77 = v17;
  v18 = sub_1ABAD219C(&qword_1EB4DC088, &qword_1ABF74248);
  v19 = sub_1ABA7BB64(v18);
  v73 = v20;
  v74 = v19;
  v22 = *(v21 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v23);
  sub_1ABA7BCE0();
  v24 = sub_1ABAD219C(&qword_1EB4DC090, &qword_1ABF74250);
  sub_1ABA7BB64(v24);
  v72 = v25;
  v27 = *(v26 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v28);
  sub_1ABA7ED98();
  v29 = sub_1ABAD219C(&qword_1EB4DC098, &qword_1ABF74258);
  sub_1ABA7BB64(v29);
  v80 = v30;
  v32 = *(v31 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v66 - v34;
  v36 = v4[4];
  sub_1ABA88DCC(v4, v4[3]);
  sub_1ABEA8B00();
  v37 = v83;
  sub_1ABF252C4();
  if (v37)
  {
    goto LABEL_9;
  }

  v69 = v24;
  v70 = v1;
  v71 = v2;
  v38 = v81;
  v39 = v82;
  v83 = v4;
  v40 = v35;
  v41 = sub_1ABF24EA4();
  sub_1ABAD4EA4(v41, 0);
  if (v43 == v44 >> 1)
  {
LABEL_8:
    v58 = v80;
    v59 = sub_1ABF24B44();
    swift_allocError();
    v61 = v60;
    v62 = *(sub_1ABAD219C(&qword_1EB4D0768, &qword_1ABF31050) + 48);
    *v61 = &type metadata for TriplesQuery.ComparisonType;
    sub_1ABF24DA4();
    sub_1ABA835CC();
    (*(*(v59 - 8) + 104))(v61, *MEMORY[0x1E69E6AF8], v59);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v58 + 8))(v40, v29);
    v4 = v83;
LABEL_9:
    sub_1ABA84B54(v4);
LABEL_10:
    sub_1ABA7BC90();
    return;
  }

  v68 = 0;
  if (v43 < (v44 >> 1))
  {
    v45 = *(v42 + v43);
    sub_1ABAD4E90(v43 + 1);
    v47 = v46;
    v49 = v48;
    swift_unknownObjectRelease();
    if (v47 == v49 >> 1)
    {
      v50 = v79;
      v51 = v80;
      v67 = v45;
      v52 = v45;
      v53 = v78;
      switch(v52)
      {
        case 1:
          sub_1ABEA8BFC();
          sub_1ABA94DDC();
          v65 = v68;
          sub_1ABF24D94();
          if (!v65)
          {
            goto LABEL_17;
          }

          goto LABEL_16;
        case 2:
          sub_1ABEA8BA8();
          sub_1ABA94DDC();
          v63 = v68;
          sub_1ABF24D94();
          if (v63)
          {
            goto LABEL_16;
          }

LABEL_17:
          swift_unknownObjectRelease();
          v55 = sub_1ABA90498();
          goto LABEL_18;
        case 3:
          sub_1ABEA8B54();
          sub_1ABA94DDC();
          v64 = v68;
          sub_1ABF24D94();
          if (v64)
          {
            goto LABEL_16;
          }

          swift_unknownObjectRelease();
          (*(v53 + 8))(v38, v39);
          goto LABEL_19;
        default:
          sub_1ABEA8C50();
          sub_1ABA94DDC();
          v54 = v68;
          sub_1ABF24D94();
          if (v54)
          {
LABEL_16:
            (*(v51 + 8))(v40, v29);
            swift_unknownObjectRelease();
            v4 = v83;
            goto LABEL_9;
          }

          swift_unknownObjectRelease();
          v55 = sub_1ABA90498();
          v57 = v69;
LABEL_18:
          v56(v55, v57);
LABEL_19:
          (*(v51 + 8))(v40, v29);
          *v50 = v67;
          sub_1ABA84B54(v83);
          break;
      }

      goto LABEL_10;
    }

    goto LABEL_8;
  }

  __break(1u);
}

uint64_t TriplesQueryParameters.limit.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t TriplesQueryParameters.sorting.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
}

uint64_t QueryableKnowledgeGraph.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t QueryableKnowledgeGraph.rawValue.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_1ABEA887C@<X0>(Swift::String *a1@<X0>, void *a2@<X8>)
{
  result = QueryableKnowledgeGraph.init(rawValue:)(*a1).rawValue._countAndFlagsBits;
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1ABEA88BC@<X0>(uint64_t *a1@<X8>)
{
  result = QueryableKnowledgeGraph.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1ABEA88F8()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1ABAD1C3C();
}

uint64_t sub_1ABEA8900()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1ABB10F7C();
}

unint64_t sub_1ABEA8908()
{
  result = qword_1EB4CF498;
  if (!qword_1EB4CF498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF498);
  }

  return result;
}

unint64_t sub_1ABEA895C()
{
  result = qword_1EB4DBFC0;
  if (!qword_1EB4DBFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBFC0);
  }

  return result;
}

unint64_t sub_1ABEA89B0()
{
  result = qword_1EB4CF480;
  if (!qword_1EB4CF480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF480);
  }

  return result;
}

unint64_t sub_1ABEA8A04()
{
  result = qword_1EB4DBFF8;
  if (!qword_1EB4DBFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBFF8);
  }

  return result;
}

unint64_t sub_1ABEA8A58()
{
  result = qword_1EB4DC000;
  if (!qword_1EB4DC000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC000);
  }

  return result;
}

unint64_t sub_1ABEA8AAC()
{
  result = qword_1EB4DC008;
  if (!qword_1EB4DC008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC008);
  }

  return result;
}

unint64_t sub_1ABEA8B00()
{
  result = qword_1EB4DC050;
  if (!qword_1EB4DC050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC050);
  }

  return result;
}

unint64_t sub_1ABEA8B54()
{
  result = qword_1EB4DC058;
  if (!qword_1EB4DC058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC058);
  }

  return result;
}

unint64_t sub_1ABEA8BA8()
{
  result = qword_1EB4DC060;
  if (!qword_1EB4DC060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC060);
  }

  return result;
}

unint64_t sub_1ABEA8BFC()
{
  result = qword_1EB4DC068;
  if (!qword_1EB4DC068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC068);
  }

  return result;
}

unint64_t sub_1ABEA8C50()
{
  result = qword_1EB4DC070;
  if (!qword_1EB4DC070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC070);
  }

  return result;
}

unint64_t sub_1ABEA8CA8()
{
  result = qword_1EB4DC0A0;
  if (!qword_1EB4DC0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC0A0);
  }

  return result;
}

unint64_t sub_1ABEA8D00()
{
  result = qword_1EB4DC0A8;
  if (!qword_1EB4DC0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC0A8);
  }

  return result;
}

unint64_t sub_1ABEA8D58()
{
  result = qword_1EB4DC0B0;
  if (!qword_1EB4DC0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC0B0);
  }

  return result;
}

unint64_t sub_1ABEA8DB0()
{
  result = qword_1ED86B098;
  if (!qword_1ED86B098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86B098);
  }

  return result;
}

unint64_t sub_1ABEA8E0C()
{
  result = qword_1EB4DC0B8;
  if (!qword_1EB4DC0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC0B8);
  }

  return result;
}

unint64_t sub_1ABEA8E64()
{
  result = qword_1EB4DC0C0;
  if (!qword_1EB4DC0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC0C0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TriplesQuery.FullTextSearchType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1ABEA8FC0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 25))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t sub_1ABEA9014(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

_BYTE *sub_1ABEA9084(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = sub_1ABA8BE70(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1ABEA91CC(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = sub_1ABA8BE70(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TriplesQuery.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_1ABEA9374()
{
  result = qword_1EB4DC0C8;
  if (!qword_1EB4DC0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC0C8);
  }

  return result;
}

unint64_t sub_1ABEA93CC()
{
  result = qword_1EB4DC0D0;
  if (!qword_1EB4DC0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC0D0);
  }

  return result;
}

unint64_t sub_1ABEA9424()
{
  result = qword_1EB4DC0D8;
  if (!qword_1EB4DC0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC0D8);
  }

  return result;
}

unint64_t sub_1ABEA947C()
{
  result = qword_1EB4DC0E0;
  if (!qword_1EB4DC0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC0E0);
  }

  return result;
}

unint64_t sub_1ABEA94D4()
{
  result = qword_1EB4DC0E8;
  if (!qword_1EB4DC0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC0E8);
  }

  return result;
}

unint64_t sub_1ABEA952C()
{
  result = qword_1EB4DC0F0;
  if (!qword_1EB4DC0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC0F0);
  }

  return result;
}

unint64_t sub_1ABEA9584()
{
  result = qword_1EB4DC0F8;
  if (!qword_1EB4DC0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC0F8);
  }

  return result;
}

unint64_t sub_1ABEA95DC()
{
  result = qword_1EB4DC100;
  if (!qword_1EB4DC100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC100);
  }

  return result;
}

unint64_t sub_1ABEA9634()
{
  result = qword_1EB4DC108;
  if (!qword_1EB4DC108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC108);
  }

  return result;
}

unint64_t sub_1ABEA968C()
{
  result = qword_1EB4DC110;
  if (!qword_1EB4DC110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC110);
  }

  return result;
}

unint64_t sub_1ABEA96E4()
{
  result = qword_1EB4DC118;
  if (!qword_1EB4DC118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC118);
  }

  return result;
}

unint64_t sub_1ABEA973C()
{
  result = qword_1EB4DC120;
  if (!qword_1EB4DC120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC120);
  }

  return result;
}

unint64_t sub_1ABEA9794()
{
  result = qword_1EB4DC128;
  if (!qword_1EB4DC128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC128);
  }

  return result;
}

unint64_t sub_1ABEA97EC()
{
  result = qword_1EB4DC130;
  if (!qword_1EB4DC130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC130);
  }

  return result;
}

unint64_t sub_1ABEA9844()
{
  result = qword_1EB4DC138;
  if (!qword_1EB4DC138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC138);
  }

  return result;
}

unint64_t sub_1ABEA989C()
{
  result = qword_1EB4DC140;
  if (!qword_1EB4DC140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC140);
  }

  return result;
}

unint64_t sub_1ABEA98F4()
{
  result = qword_1EB4DC148;
  if (!qword_1EB4DC148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC148);
  }

  return result;
}

unint64_t sub_1ABEA994C()
{
  result = qword_1EB4DC150;
  if (!qword_1EB4DC150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC150);
  }

  return result;
}

unint64_t sub_1ABEA99A4()
{
  result = qword_1EB4DC158;
  if (!qword_1EB4DC158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC158);
  }

  return result;
}

unint64_t sub_1ABEA99FC()
{
  result = qword_1EB4DC160;
  if (!qword_1EB4DC160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC160);
  }

  return result;
}

unint64_t sub_1ABEA9A54()
{
  result = qword_1EB4CF470;
  if (!qword_1EB4CF470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF470);
  }

  return result;
}

unint64_t sub_1ABEA9AAC()
{
  result = qword_1EB4CF478;
  if (!qword_1EB4CF478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF478);
  }

  return result;
}

unint64_t sub_1ABEA9B04()
{
  result = qword_1EB4CF4A0;
  if (!qword_1EB4CF4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF4A0);
  }

  return result;
}

unint64_t sub_1ABEA9B5C()
{
  result = qword_1EB4CF4A8;
  if (!qword_1EB4CF4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF4A8);
  }

  return result;
}

unint64_t sub_1ABEA9BB4()
{
  result = qword_1EB4CF488;
  if (!qword_1EB4CF488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF488);
  }

  return result;
}

unint64_t sub_1ABEA9C0C()
{
  result = qword_1EB4CF490;
  if (!qword_1EB4CF490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF490);
  }

  return result;
}

unint64_t sub_1ABEA9C64()
{
  result = qword_1EB4D00B0;
  if (!qword_1EB4D00B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D00B0);
  }

  return result;
}

unint64_t sub_1ABEA9CBC()
{
  result = qword_1EB4D00B8;
  if (!qword_1EB4D00B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D00B8);
  }

  return result;
}

unint64_t sub_1ABEA9D10()
{
  result = qword_1EB4CF610;
  if (!qword_1EB4CF610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF610);
  }

  return result;
}

uint64_t TriplesSort.sqlOrdering.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = v0[8];
    v15 = MEMORY[0x1E69E7CC0];
    sub_1ABADECC4();
    v3 = v15;
    v5 = v1 + 32;
    v6 = MEMORY[0x1E699FDA8];
    do
    {
      sub_1ABA93E64(v5, v11);
      v7 = v11[4];
      sub_1ABA93E20(v11, v11[3]);
      v13 = sub_1ABF22174();
      v14 = v6;
      sub_1ABA93DC0(&v12);
      v8 = *(v7 + 8);
      if (v4)
      {
        sub_1ABF22974();
      }

      else
      {
        sub_1ABF22964();
      }

      sub_1ABA84B54(v11);
      v15 = v3;
      v9 = *(v3 + 16);
      if (v9 >= *(v3 + 24) >> 1)
      {
        sub_1ABADECC4();
        v3 = v15;
      }

      *(v3 + 16) = v9 + 1;
      sub_1ABA946C0(&v12, v3 + 40 * v9 + 32);
      v5 += 40;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t TriplesSort.init(columns:direction:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = result;
  *(a3 + 8) = v3;
  return result;
}

uint64_t TriplesSort.SortDirection.hashValue.getter()
{
  v1 = *v0;
  sub_1ABF25234();
  MEMORY[0x1AC5AA8A0](v1);
  return sub_1ABF25294();
}

uint64_t TriplesSort.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1ABF24AB4();

  v3 = sub_1ABF23C74();
  MEMORY[0x1AC5A9410](v3);

  MEMORY[0x1AC5A9410](3826464, 0xE300000000000000);
  v4 = sub_1ABAD219C(&qword_1EB4DC168, &qword_1ABF753C0);
  v5 = MEMORY[0x1AC5A9750](v1, v4);
  MEMORY[0x1AC5A9410](v5);

  MEMORY[0x1AC5A9410](62, 0xE100000000000000);
  return 0x73656C706972543CLL;
}

unint64_t sub_1ABEAA070()
{
  result = qword_1EB4DC170;
  if (!qword_1EB4DC170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC170);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TriplesSort.SortDirection(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1ABEAA1C0@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a2;
  v4 = a2[1];
  v7 = a2[2];
  v6 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2[6];
  v11 = a2[7];
  v12 = a2[8];
  v13 = a2[9];
  v14 = a2[10];
  v15 = a2[11];
  v16 = *(a2 + 104);
  v59 = a2[12];
  v37 = v12;
  v38 = v14;
  v35 = v6;
  v36 = v10;
  v34 = v4;
  if ((v16 & 0x10) != 0)
  {
    sub_1ABF24AB4();
    MEMORY[0x1AC5A9410](0xD000000000000028, 0x80000001ABF88250);
    v45 = v5;
    v46 = v34;
    v47 = v7;
    v48 = v35;
    v49 = v8;
    v50 = v9;
    v51 = v36;
    v52 = v11;
    v53 = v37;
    v54 = v13;
    v55 = v38;
    v56 = v15;
    v57 = v59;
    v58 = v16;
    sub_1ABF24C54();
LABEL_6:
    sub_1ABB50F70();
    swift_allocError();
    *v24 = 0;
    *(v24 + 8) = 0xE000000000000000;
    *(v24 + 16) = 1;
    return swift_willThrow();
  }

  else
  {
    v27 = v7;
    v28 = v8;
    v29 = v16;
    v30 = v11;
    v31 = v15;
    v17 = *a1;
    v18 = *(a1 + 1);
    sub_1ABAD219C(&unk_1EB4DB2A0, &unk_1ABF6DE90);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1ABF34740;
    *(inited + 56) = &type metadata for ExtendedTripleColumn;
    *(inited + 64) = sub_1ABC3D560();
    *(inited + 32) = 0;
    switch(v17)
    {
      case 0:
      case 6:
        v20 = v3[3];
        v21 = v3[4];
        sub_1ABA93E20(v3, v20);
        __src[0] = v5;
        __src[1] = v34;
        __src[2] = v27;
        __src[3] = v35;
        __src[4] = v28;
        __src[5] = v9;
        __src[6] = v36;
        __src[7] = v30;
        __src[8] = v37;
        __src[9] = v13;
        __src[10] = v38;
        __src[11] = v31;
        __src[12] = v59;
        LOBYTE(__src[13]) = v29;
        v40 = v18 & ~(v18 >> 63);
        v41 = v18 >> 63;
        v42 = inited;
        v43 = 1;
        v22 = *(v21 + 40);
        v45 = v5;
        v46 = v34;
        v47 = v27;
        v48 = v35;
        v49 = v28;
        v50 = v9;
        v51 = v36;
        v52 = v30;
        v53 = v37;
        v54 = v13;
        v55 = v38;
        v56 = v31;
        v57 = v59;
        v58 = v29;
        sub_1ABB42048(&v45, __dst);
        v22(__src, &v40, v20, v21);
        sub_1ABEAADE0(v40, v41, v42);
        memcpy(__dst, __src, 0x69uLL);
        if (v33)
        {
          result = sub_1ABE3C2D0(__dst);
        }

        else
        {
          sub_1ABE3C2D0(__dst);
          swift_getAssociatedTypeWitness();
          sub_1ABAD219C(&qword_1EB4DC178, &unk_1ABF75500);
          v25 = sub_1ABF24C44();

          v26 = sub_1ABEAA5A8(v25);

          a3[1] = 0;
          a3[2] = 0;
          *a3 = v26;
        }

        break;
      case 2:
      case 5:

        result = sub_1ABEAA5A8(MEMORY[0x1E69E7CC0]);
        a3[1] = 0;
        a3[2] = 0;
        *a3 = result;
        break;
      default:

        sub_1ABF24AB4();
        MEMORY[0x1AC5A9410](0xD000000000000017, 0x80000001ABF95240);
        sub_1ABD7EAA4(v17);
        goto LABEL_6;
    }
  }

  return result;
}

uint64_t sub_1ABEAA5A8(uint64_t a1)
{
  v2 = sub_1ABF239C4();
  v3 = *(a1 + 16);
  if (!v3)
  {
    return sub_1ABB45484(v2);
  }

  v4 = a1 + 32;
  while (1)
  {
    v123 = v4;
    sub_1ABA93E64(v4, v131);
    sub_1ABA8FCF8();
    v6 = *(v5 + 32);
    v7 = sub_1ABA7D1BC();
    v8(v7);
    v10 = __src[0];
    v9 = __src[1];

    v11 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v11 = v10 & 0xFFFFFFFFFFFFLL;
    }

    if (v11 && (sub_1ABA8FCF8(), v13 = *(v12 + 24), v14 = sub_1ABA7D1BC(), v15(v14), __src[0]))
    {
      sub_1ABA8FCF8();
      v17 = *(v16 + 8);
      v18 = sub_1ABA7D1BC();
      v19(v18);
      v120 = EntityIdentifier.stringValue.getter();
      v21 = v20;
      sub_1ABA8FCF8();
      v23 = *(v22 + 16);
      v24 = sub_1ABA7D1BC();
      v25(v24);
      v27 = __src[0];
      v26 = __src[1];

      sub_1ABA8FCF8();
      v29 = *(v28 + 24);
      v30 = sub_1ABA7D1BC();
      v31(v30);
      __dst[0] = 3828082;
      __dst[1] = 0xE300000000000000;
      v124[0] = v125[0];
      v32 = sub_1ABF24FF4();
      MEMORY[0x1AC5A9410](v32);

      v33 = __dst[0];
      v34 = __dst[1];
      __dst[0] = v120;
      __dst[1] = v21;

      sub_1ABA812E8();
      sub_1ABA7FAC8();
      MEMORY[0x1AC5A9410](v27, v26);

      sub_1ABA7FAC8();
      sub_1ABA812E8();

      sub_1ABA7FAC8();
      MEMORY[0x1AC5A9410](v33, v34);

      v36 = __dst[0];
      v35 = __dst[1];
      __src[0] = __dst[0];
      __src[1] = __dst[1];
      __src[2] = 0;
      __src[3] = v120;
      __src[4] = v21;
      __src[5] = 0;
      __src[6] = v27;
      __src[7] = v26;
      __src[8] = v33;
      __src[9] = v34;
      __src[10] = MEMORY[0x1E69E7CC0];
      if (v2[2])
      {

        v37 = sub_1ABA7C5D0();
        sub_1ABA94FC8(v37, v38);
        v40 = v39;

        if (v40)
        {
          v121 = v3;
          v41 = v132;
          v42 = v133;
          sub_1ABA93E20(v131, v132);
          v43 = *(v42 + 24);
          v44 = *(v43 + 32);

          v44(v127, v41, v43);
          v45 = v127[0];
          v46 = v127[1];

          v47 = v133;
          sub_1ABA93E20(v131, v132);
          v48 = *(*(v47 + 24) + 40);
          v49 = sub_1ABA7D1BC();
          v119 = v50(v49);
          v52 = v51;
          swift_isUniquelyReferenced_nonNull_native();
          v126 = v2;
          v53 = sub_1ABA7C5D0();
          v55 = sub_1ABA94FC8(v53, v54);
          if (__OFADD__(v2[2], (v56 & 1) == 0))
          {
            goto LABEL_39;
          }

          v57 = v55;
          v58 = v56;
          v118 = v45;
          sub_1ABAD219C(&qword_1EB4DADD8, &unk_1ABF6AA50);
          if (sub_1ABF24C64())
          {
            v59 = sub_1ABA7C5D0();
            v61 = sub_1ABA94FC8(v59, v60);
            v3 = v121;
            if ((v58 & 1) != (v62 & 1))
            {
              goto LABEL_41;
            }

            v57 = v61;
          }

          else
          {
            v3 = v121;
          }

          if ((v58 & 1) == 0)
          {
            goto LABEL_40;
          }

          memcpy(__dst, (v126[7] + 88 * v57), sizeof(__dst));
          if (!__dst[1])
          {
            goto LABEL_40;
          }

          memcpy(v128, __src, sizeof(v128));
          sub_1ABB24250(v128);
          v112._countAndFlagsBits = v118;
          v113._countAndFlagsBits = v119;
          v112._object = v46;
          v113._object = v52;
          KnosisInternalFact.addQualifier(qpid:qoid:)(v112, v113);

          v114 = __dst[1];
          if (__dst[1])
          {
            v115 = __dst[0];
            v125[0] = __dst[0];
            v125[1] = __dst[1];
            memcpy(&v125[2], &__dst[2], 0x48uLL);
            sub_1ABB242A4(v125, v124);

            v2 = v126;
            v116 = (v126[7] + 88 * v57);
            *v116 = v115;
            v116[1] = v114;
            memcpy(v116 + 2, &__dst[2], 0x48uLL);
          }

          else
          {

            v2 = v126;
            sub_1ABAFEEA0(v126[6] + 16 * v57);
            sub_1ABF24C84();
          }

          v111 = v123;
          memcpy(v125, __dst, sizeof(v125));
          sub_1ABEAADF4(v125);
          goto LABEL_27;
        }
      }

      sub_1ABA8FCF8();
      v85 = *(v84 + 32);
      v86 = sub_1ABA7D1BC();
      v87(v86);
      v88 = __dst[0];
      v89 = __dst[1];

      v91 = v132;
      v90 = v133;
      sub_1ABA93E20(v131, v132);
      v92._countAndFlagsBits = (*(*(v90 + 24) + 40))(v91);
      v94 = v93;
      v95._countAndFlagsBits = v88;
      v95._object = v89;
      v92._object = v94;
      KnosisInternalFact.addQualifier(qpid:qoid:)(v95, v92);
    }

    else
    {
      v122 = v3;
      sub_1ABA8FCF8();
      v64 = *(v63 + 8);
      v65 = sub_1ABA7D1BC();
      v66(v65);
      v67 = (v128[0] & 0x80000000000000) != 0 ? 3826797 : 3828069;
      __src[0] = v67;
      __src[1] = 0xE300000000000000;
      __dst[0] = v128[0];
      v68 = sub_1ABF24FF4();
      MEMORY[0x1AC5A9410](v68);

      v69 = __src[0];
      v70 = __src[1];
      sub_1ABA8FCF8();
      v72 = *(v71 + 16);
      v73 = sub_1ABA7D1BC();
      v74(v73);
      v75 = __src[0];
      v76 = __src[1];

      v77 = v133;
      sub_1ABA93E20(v131, v132);
      v78 = *(*(v77 + 24) + 40);
      v79 = sub_1ABA7D1BC();
      v81 = v80(v79);
      v83 = v82;
      __dst[0] = v69;
      __dst[1] = v70;

      sub_1ABA812E8();
      sub_1ABA7FAC8();
      MEMORY[0x1AC5A9410](v75, v76);

      sub_1ABA7FAC8();
      sub_1ABA812E8();

      sub_1ABA7FAC8();
      MEMORY[0x1AC5A9410](v81, v83);

      v36 = __dst[0];
      v35 = __dst[1];
      __src[0] = __dst[0];
      __src[1] = __dst[1];
      __src[2] = 0;
      __src[3] = v69;
      __src[4] = v70;
      __src[5] = 0;
      __src[6] = v75;
      __src[7] = v76;
      __src[8] = v81;
      __src[9] = v83;
      __src[10] = MEMORY[0x1E69E7CC0];
      v3 = v122;
    }

    memcpy(__dst, __src, sizeof(__dst));

    swift_isUniquelyReferenced_nonNull_native();
    v125[0] = v2;
    v96 = sub_1ABA7C5D0();
    v98 = sub_1ABA94FC8(v96, v97);
    if (__OFADD__(v2[2], (v99 & 1) == 0))
    {
      break;
    }

    v100 = v98;
    v101 = v99;
    sub_1ABAD219C(&qword_1EB4DADD8, &unk_1ABF6AA50);
    if (sub_1ABF24C64())
    {
      v102 = sub_1ABA7C5D0();
      v104 = sub_1ABA94FC8(v102, v103);
      if ((v101 & 1) != (v105 & 1))
      {
        goto LABEL_41;
      }

      v100 = v104;
    }

    if (v101)
    {
      v2 = v125[0];
      v106 = (*(v125[0] + 56) + 88 * v100);
      memcpy(v128, v106, sizeof(v128));
      memcpy(v106, __dst, 0x58uLL);
      sub_1ABB24250(v128);
    }

    else
    {
      v2 = v125[0];
      *(v125[0] + 8 * (v100 >> 6) + 64) |= 1 << v100;
      v107 = (v2[6] + 16 * v100);
      *v107 = v36;
      v107[1] = v35;
      memcpy((v2[7] + 88 * v100), __dst, 0x58uLL);
      v108 = v2[2];
      v109 = __OFADD__(v108, 1);
      v110 = v108 + 1;
      if (v109)
      {
        goto LABEL_38;
      }

      v2[2] = v110;
    }

    v111 = v123;
LABEL_27:
    sub_1ABA84B54(v131);
    v4 = v111 + 40;
    if (!--v3)
    {
      return sub_1ABB45484(v2);
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  result = sub_1ABF25104();
  __break(1u);
  return result;
}

uint64_t sub_1ABEAADE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t sub_1ABEAADF4(uint64_t a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4DADE0, &unk_1ABF6AA60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t KTSQueryParams.init(startTime:endTime:inclusionType:distanceMinInMeters:distanceMaxInMeters:elevationGainMinInMeters:elevationGainMaxInMeters:durationMinInSeconds:durationMaxInSeconds:roadType:roadName:originId:destinationId:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, char *a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17, char a18, char *a19, uint64_t a20, uint64_t a21, uint64_t *a22, uint64_t *a23)
{
  v23 = *a5;
  v24 = *a19;
  v25 = *a22;
  v26 = *(a22 + 8);
  v27 = *a23;
  v28 = *(a23 + 8);
  *a9 = a1;
  *(a9 + 8) = a2 & 1;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4 & 1;
  *(a9 + 25) = v23;
  *(a9 + 32) = a6;
  result = a7 & 1;
  *(a9 + 40) = a7 & 1;
  *(a9 + 48) = a8;
  *(a9 + 56) = a10 & 1;
  *(a9 + 64) = a11;
  *(a9 + 72) = a12 & 1;
  *(a9 + 80) = a13;
  *(a9 + 88) = a14 & 1;
  *(a9 + 96) = a15;
  *(a9 + 104) = a16 & 1;
  *(a9 + 112) = a17;
  *(a9 + 120) = a18 & 1;
  *(a9 + 121) = v24;
  *(a9 + 128) = a20;
  *(a9 + 136) = a21;
  *(a9 + 144) = v25;
  *(a9 + 152) = v26;
  *(a9 + 160) = v27;
  *(a9 + 168) = v28;
  return result;
}

uint64_t static KTSQueryParams.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 25);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  v13 = *(a1 + 72);
  v14 = *(a1 + 80);
  v15 = *(a1 + 88);
  v16 = *(a1 + 96);
  v85 = *(a1 + 104);
  v17 = *(a1 + 112);
  v18 = *(a1 + 120);
  v84 = *(a1 + 121);
  v20 = *(a1 + 128);
  v19 = *(a1 + 136);
  v21 = *(a1 + 144);
  v22 = *(a1 + 152);
  v81 = *(a1 + 160);
  v23 = *(a1 + 168);
  v24 = *(a2 + 8);
  v25 = *(a2 + 16);
  v26 = *(a2 + 24);
  v27 = *(a2 + 25);
  v28 = *(a2 + 32);
  v29 = *(a2 + 40);
  v30 = *(a2 + 48);
  v31 = *(a2 + 56);
  v32 = *(a2 + 64);
  v33 = *(a2 + 72);
  v34 = *(a2 + 80);
  v35 = *(a2 + 88);
  v36 = *(a2 + 96);
  v37 = *(a2 + 104);
  v38 = *(a2 + 112);
  v39 = *(a2 + 120);
  v83 = *(a2 + 121);
  v40 = *(a2 + 136);
  v82 = *(a2 + 128);
  v41 = *(a2 + 144);
  v42 = *(a2 + 152);
  v43 = *(a2 + 160);
  v44 = *(a2 + 168);
  if (v4)
  {
    if (!v24)
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v45 = v24;
    }

    else
    {
      v45 = 1;
    }

    if (v45)
    {
      return 0;
    }
  }

  if (v6)
  {
    if (!v26)
    {
      return 0;
    }
  }

  else
  {
    if (v5 == v25)
    {
      v46 = v26;
    }

    else
    {
      v46 = 1;
    }

    if (v46)
    {
      return 0;
    }
  }

  if (v7 == 8)
  {
    if (v27 != 8)
    {
      return 0;
    }
  }

  else
  {
    if (v27 == 8)
    {
      return 0;
    }

    v80 = v23;
    v79 = v21;
    v77 = *(a2 + 168);
    v78 = v22;
    v76 = v19;
    v75 = *(a2 + 160);
    v74 = *(a2 + 152);
    v72 = *(a2 + 136);
    v73 = *(a2 + 144);
    v71 = v17;
    v70 = v18;
    v68 = v14;
    v69 = v16;
    v67 = *(a2 + 112);
    v47 = sub_1ABAD07A8(v7, v27);
    v38 = v67;
    v14 = v68;
    v16 = v69;
    v18 = v70;
    v17 = v71;
    v40 = v72;
    v41 = v73;
    v42 = v74;
    v43 = v75;
    v19 = v76;
    v44 = v77;
    v22 = v78;
    v21 = v79;
    v23 = v80;
    if ((v47 & 1) == 0)
    {
      return 0;
    }
  }

  if (v9)
  {
    if (!v29)
    {
      return 0;
    }
  }

  else
  {
    if (v8 == v28)
    {
      v48 = v29;
    }

    else
    {
      v48 = 1;
    }

    if (v48)
    {
      return 0;
    }
  }

  if (v11)
  {
    if (!v31)
    {
      return 0;
    }
  }

  else
  {
    if (v10 == v30)
    {
      v49 = v31;
    }

    else
    {
      v49 = 1;
    }

    if (v49)
    {
      return 0;
    }
  }

  if (v13)
  {
    if (!v33)
    {
      return 0;
    }
  }

  else
  {
    if (v12 == v32)
    {
      v50 = v33;
    }

    else
    {
      v50 = 1;
    }

    if (v50)
    {
      return 0;
    }
  }

  if (v15)
  {
    if (!v35)
    {
      return 0;
    }
  }

  else
  {
    if (v14 == v34)
    {
      v51 = v35;
    }

    else
    {
      v51 = 1;
    }

    if (v51)
    {
      return 0;
    }
  }

  if (v85)
  {
    if (!v37)
    {
      return 0;
    }
  }

  else
  {
    if (v16 == v36)
    {
      v52 = v37;
    }

    else
    {
      v52 = 1;
    }

    if (v52)
    {
      return 0;
    }
  }

  if (v18)
  {
    if (!v39)
    {
      return 0;
    }
  }

  else
  {
    if (v17 == v38)
    {
      v53 = v39;
    }

    else
    {
      v53 = 1;
    }

    if (v53)
    {
      return 0;
    }
  }

  if (v84 == 5)
  {
    if (v83 != 5)
    {
      return 0;
    }
  }

  else if (v83 == 5 || v84 != v83)
  {
    return 0;
  }

  if (v19)
  {
    if (!v40)
    {
      return 0;
    }

    if (v20 != v82 || v19 != v40)
    {
      v56 = v44;
      v57 = v23;
      v58 = v21;
      v59 = v22;
      v60 = v43;
      v61 = v42;
      v62 = v41;
      v63 = sub_1ABF25054();
      v41 = v62;
      v42 = v61;
      v43 = v60;
      v44 = v56;
      v22 = v59;
      v21 = v58;
      v23 = v57;
      if ((v63 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v40)
  {
    return 0;
  }

  if (v22)
  {
    if (!v42)
    {
      return 0;
    }
  }

  else
  {
    if (v21 == v41)
    {
      v64 = v42;
    }

    else
    {
      v64 = 1;
    }

    if (v64)
    {
      return 0;
    }
  }

  if (v23)
  {
    if ((v44 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v81 == v43)
    {
      v66 = v44;
    }

    else
    {
      v66 = 1;
    }

    if (v66)
    {
      return 0;
    }
  }

  return 1;
}