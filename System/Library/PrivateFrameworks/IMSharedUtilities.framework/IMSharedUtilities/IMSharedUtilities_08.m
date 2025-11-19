void sub_1A874635C(_BYTE *a1@<X8>)
{
  v2 = sub_1A88C82A8();
  v3 = sub_1A88C82A8();
  v4 = IMGetCachedDomainBoolForKeyWithDefaultValue();

  *a1 = v4;
}

uint64_t sub_1A87463D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_1A88C82A8();
  v7 = sub_1A88C82A8();
  v8 = IMGetCachedDomainValueForKey();

  if (v8)
  {
    sub_1A88C8CB8();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13[0] = v11;
  v13[1] = v12;
  if (!*(&v12 + 1))
  {
    sub_1A860169C(v13);
    goto LABEL_8;
  }

  sub_1A88C86B8();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:

    return a5;
  }

  return v10;
}

uint64_t sub_1A87464CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X8>)
{
  result = sub_1A87463D0(a1, a2, a3, a4, *a5);
  *a6 = result;
  return result;
}

uint64_t PrototypingSetting.DefaultsDomain.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1A88C9028();

  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

unint64_t PrototypingSetting.DefaultsDomain.rawValue.getter()
{
  v1 = 0xD000000000000013;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_1A87465AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6180];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1A8746620(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1A874668C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1A87466FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

unint64_t sub_1A8746778@<X0>(unint64_t *a1@<X8>)
{
  result = PrototypingSetting.DefaultsDomain.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t (*sub_1A87467A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = a5;
  v10 = *(a4 - 8);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v15;
  if (v16 == 3)
  {
    LOBYTE(v16) = 0;
  }

  *a6 = v16;
  *(a6 + 8) = v11;
  *(a6 + 16) = v12;
  v24 = type metadata accessor for PrototypingSetting();
  (*(v10 + 16))(a6 + *(v24 + 32), a2, a4);
  v17 = *(v10 + 48);
  if (v17(a3, 1, a4) == 1)
  {
    v18 = *(v10 + 32);
    v18(v14, a2, a4);
    if (v17(a3, 1, a4) != 1)
    {
      v19 = sub_1A88C8BE8();
      (*(*(v19 - 8) + 8))(a3, v19);
    }
  }

  else
  {
    (*(v10 + 8))(a2, a4);
    v18 = *(v10 + 32);
    v18(v14, a3, a4);
  }

  v20 = v24;
  v18((a6 + *(v24 + 36)), v14, a4);
  result = swift_allocObject();
  v22 = v25;
  *(result + 2) = a4;
  *(result + 3) = v22;
  *(result + 4) = a4;
  v23 = (a6 + *(v20 + 40));
  *v23 = sub_1A8746F58;
  v23[1] = result;
  return result;
}

uint64_t PrototypingSetting.init<A>(_:domain:default:internalDefault:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v7 = *a3;
  if (v7 == 3)
  {
    LOBYTE(v7) = 0;
  }

  *a7 = v7;
  if (a6)
  {
    v8 = a4;
  }

  else
  {
    v8 = a5;
  }

  *(a7 + 8) = result;
  *(a7 + 16) = a2;
  *(a7 + 24) = a4;
  *(a7 + 32) = v8;
  *(a7 + 40) = sub_1A87462BC;
  *(a7 + 48) = 0;
  return result;
}

uint64_t PrototypingSetting.init<A>(_:domain:default:internalDefault:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, double a4@<X3>, char a5@<W4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v7 = *a3;
  if (v7 == 3)
  {
    LOBYTE(v7) = 0;
  }

  *a6 = v7;
  if (a5)
  {
    a4 = a7;
  }

  *(a6 + 8) = result;
  *(a6 + 16) = a2;
  *(a6 + 24) = a7;
  *(a6 + 32) = a4;
  *(a6 + 40) = sub_1A8746330;
  *(a6 + 48) = 0;
  return result;
}

double PrototypingSetting.init<A>(_:domain:default:internalDefault:)@<D0>(uint64_t a1@<X0>, char *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v14 = *a2;
  v12 = a4;
  v13 = a3;
  v7 = sub_1A88C86B8();
  sub_1A87467A0(a1, &v13, &v12, v7, &off_1F1BAC920, v15);
  v8 = v16;
  v9 = v19;
  *a5 = v15[0];
  *(a5 + 8) = v8;
  result = *&v17;
  v11 = v18;
  *(a5 + 16) = v17;
  *(a5 + 32) = v11;
  *(a5 + 48) = v9;
  return result;
}

uint64_t sub_1A8746B1C(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
    goto LABEL_28;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  v9 = ((v7 + ((v7 + v6 + ((v6 + 24) & ~v6)) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v10 = a2 - v8;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_28:
    v18 = a1 & 0xFFFFFFFFFFFFFFF8;
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((v18 + v6 + 24) & ~v6);
    }

    v19 = *(v18 + 16);
    if (v19 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    return (v19 + 1);
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v8 + (v11 | v17) + 1;
}

uint64_t sub_1A8746C74(uint64_t result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((*(*(*(a4 + 16) - 8) + 64) + ((*(*(*(a4 + 16) - 8) + 64) + v8 + ((v8 + 24) & ~v8)) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((*(*(*(a4 + 16) - 8) + 64) + ((*(*(*(a4 + 16) - 8) + 64) + v8 + ((v8 + 24) & ~v8)) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      v18 = result & 0xFFFFFFFFFFFFFFF8;
      if ((v6 & 0x80000000) != 0)
      {
        v19 = *(v5 + 56);

        return v19((v18 + v8 + 24) & ~v8);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *(v18 + 8) = a2 & 0x7FFFFFFF;
        *(v18 + 16) = 0;
      }

      else
      {
        *(v18 + 16) = a2 - 1;
      }

      return result;
    }
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((*(*(*(a4 + 16) - 8) + 64) + v8 + ((v8 + 24) & ~v8)) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((*(*(*(a4 + 16) - 8) + 64) + v8 + ((v8 + 24) & ~v8)) & ~v8) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

double sub_1A8746E54(double a1)
{
  v2 = sub_1A88C82A8();
  v3 = sub_1A88C82A8();
  v4 = IMGetCachedDomainValueForKey();

  if (v4)
  {
    sub_1A88C8CB8();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  if (*(&v9 + 1))
  {
    sub_1A85FC408();
    if (swift_dynamicCast())
    {
      [v7 doubleValue];
      a1 = v5;
    }
  }

  else
  {
    sub_1A860169C(v10);
  }

  return a1;
}

uint64_t sub_1A8746FB0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v7 = sub_1A870CCE0(&qword_1EB3045A8);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - v9;
  sub_1A870C278(a1, a1[3]);
  sub_1A8747FBC();
  sub_1A88C95C8();
  v15 = a2;
  v14 = 0;
  sub_1A870CCE0(&qword_1EB303100);
  sub_1A8716048(&qword_1EB303120);
  sub_1A88C92C8();
  if (!v4)
  {
    v13 = 1;
    sub_1A88C9278();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1A8747190()
{
  if (*v0)
  {
    return 0x44497972657571;
  }

  else
  {
    return 0x4449554774616863;
  }
}

uint64_t sub_1A87471D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4449554774616863 && a2 == 0xE900000000000073;
  if (v6 || (sub_1A88C9398() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x44497972657571 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A88C9398();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1A87472B4(uint64_t a1)
{
  v2 = sub_1A8747FBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A87472F0(uint64_t a1)
{
  v2 = sub_1A8747FBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A874732C()
{
  v0 = qword_1EB304520;

  return v0;
}

void sub_1A8747364(void *a1)
{
  v2 = sub_1A88C85E8();
  v3 = sub_1A88C82A8();
  [a1 recoveredMessagesWithChatGUIDs:v2 queryID:v3];
}

uint64_t sub_1A87473EC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1A8747B98(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

unint64_t sub_1A8747468()
{
  result = qword_1EB304540;
  if (!qword_1EB304540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304540);
  }

  return result;
}

unint64_t sub_1A87474BC()
{
  result = qword_1EB304548;
  if (!qword_1EB304548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304548);
  }

  return result;
}

unint64_t sub_1A8747510(uint64_t a1)
{
  result = sub_1A8747538();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A8747538()
{
  result = qword_1EB304550;
  if (!qword_1EB304550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304550);
  }

  return result;
}

uint64_t sub_1A874758C(void *a1, uint64_t a2)
{
  v4 = sub_1A870CCE0(&qword_1EB304590);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  sub_1A870C278(a1, a1[3]);
  sub_1A8747F68();
  sub_1A88C95C8();
  v9[1] = a2;
  sub_1A870CCE0(&qword_1EB303100);
  sub_1A8716048(&qword_1EB303120);
  sub_1A88C92C8();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1A8747728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4449554774616863 && a2 == 0xE900000000000073)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A88C9398();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A87477B8(uint64_t a1)
{
  v2 = sub_1A8747F68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A87477F4(uint64_t a1)
{
  v2 = sub_1A8747F68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A8747830()
{
  v0 = qword_1EB304530;

  return v0;
}

void sub_1A8747868(void *a1)
{
  v2 = sub_1A88C85E8();
  [a1 recoveredMessagesFromRecentlyDeletedForChatsWithGUIDs_];
}

void *sub_1A87478CC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1A8747DC0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1A8747940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1A874797C()
{
  result = qword_1EB304558;
  if (!qword_1EB304558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304558);
  }

  return result;
}

unint64_t sub_1A87479D0()
{
  result = qword_1EB304560;
  if (!qword_1EB304560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304560);
  }

  return result;
}

unint64_t sub_1A8747A24(uint64_t a1)
{
  result = sub_1A8747A4C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A8747A4C()
{
  result = qword_1EB304568;
  if (!qword_1EB304568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304568);
  }

  return result;
}

unint64_t sub_1A8747AA0(uint64_t a1)
{
  result = sub_1A8747AC8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A8747AC8()
{
  result = qword_1EB304570;
  if (!qword_1EB304570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304570);
  }

  return result;
}

unint64_t sub_1A8747B1C(uint64_t a1)
{
  result = sub_1A8747B44();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A8747B44()
{
  result = qword_1EB304578;
  if (!qword_1EB304578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304578);
  }

  return result;
}

uint64_t sub_1A8747B98(void *a1)
{
  v3 = sub_1A870CCE0(&qword_1EB304598);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-v5];
  v7 = a1[3];
  sub_1A870C278(a1, v7);
  sub_1A8747FBC();
  sub_1A88C95A8();
  if (!v1)
  {
    sub_1A870CCE0(&qword_1EB303100);
    v9[7] = 0;
    sub_1A8716048(&qword_1EB303108);
    sub_1A88C9158();
    v7 = v10;
    v9[6] = 1;
    sub_1A88C9108();
    (*(v4 + 8))(v6, v3);
  }

  sub_1A85F1084(a1);
  return v7;
}

void *sub_1A8747DC0(void *a1)
{
  v3 = sub_1A870CCE0(&qword_1EB304580);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = sub_1A870C278(a1, a1[3]);
  sub_1A8747F68();
  sub_1A88C95A8();
  if (v1)
  {
    sub_1A85F1084(a1);
  }

  else
  {
    sub_1A870CCE0(&qword_1EB303100);
    sub_1A8716048(&qword_1EB303108);
    sub_1A88C9158();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    sub_1A85F1084(a1);
  }

  return v7;
}

unint64_t sub_1A8747F68()
{
  result = qword_1EB304588;
  if (!qword_1EB304588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304588);
  }

  return result;
}

unint64_t sub_1A8747FBC()
{
  result = qword_1EB3045A0;
  if (!qword_1EB3045A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3045A0);
  }

  return result;
}

unint64_t sub_1A8748034()
{
  result = qword_1EB3045B0;
  if (!qword_1EB3045B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3045B0);
  }

  return result;
}

unint64_t sub_1A874808C()
{
  result = qword_1EB3045B8;
  if (!qword_1EB3045B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3045B8);
  }

  return result;
}

unint64_t sub_1A87480E4()
{
  result = qword_1EB3045C0;
  if (!qword_1EB3045C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3045C0);
  }

  return result;
}

unint64_t sub_1A874813C()
{
  result = qword_1EB3045C8;
  if (!qword_1EB3045C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3045C8);
  }

  return result;
}

unint64_t sub_1A8748194()
{
  result = qword_1EB3045D0;
  if (!qword_1EB3045D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3045D0);
  }

  return result;
}

unint64_t sub_1A87481EC()
{
  result = qword_1EB3045D8;
  if (!qword_1EB3045D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3045D8);
  }

  return result;
}

uint64_t sub_1A8748240()
{
  v0 = sub_1A88C7E58();
  sub_1A85EFC04(v0, qword_1EB338D90);
  sub_1A85EF0E4(v0, qword_1EB338D90);
  return sub_1A88C7E48();
}

uint64_t sub_1A87482C4()
{
  sub_1A870CCE0(&qword_1EB3045F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A88E14F0;
  v2 = *MEMORY[0x1E696E0B0];
  *(inited + 32) = *MEMORY[0x1E696E0B0];
  *(inited + 64) = MEMORY[0x1E69E6370];
  *(inited + 40) = 0;
  v3 = v2;
  sub_1A8738E48(inited);
  swift_setDeallocating();
  sub_1A85EF638(inited + 32, &qword_1EB303D98);
  type metadata accessor for CFString(0);
  sub_1A874A11C(&qword_1EB3027D0, type metadata accessor for CFString);
  v4 = sub_1A88C8188();

  v5 = CGImageSourceCopyProperties(v0, v4);

  if (v5)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_1A88C8198();
    }
  }

  return 0;
}

uint64_t sub_1A8748884(uint64_t a1)
{
  v2 = sub_1A88C7F98();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A870CCE0(&qword_1EB3045E8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v21 - v7;
  v9 = sub_1A88C7FB8();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v21 - v14;
  v16 = sub_1A88C72E8();
  MEMORY[0x1EEE9AC00](v16);
  (*(v18 + 16))(&v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_1A88C7FA8();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1A85EF638(v8, &qword_1EB3045E8);
    v19 = 0;
  }

  else
  {
    (*(v10 + 32))(v15, v8, v9);
    (*(v10 + 16))(v13, v15, v9);
    sub_1A88C7F88();
    v19 = sub_1A88C7F78();
    (*(v3 + 8))(v5, v2);
    (*(v10 + 8))(v15, v9);
  }

  return v19 & 1;
}

uint64_t sub_1A8748B94(uint64_t a1)
{
  sub_1A870CCE0(&qword_1EB3045F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A88E6D90;
  v3 = *MEMORY[0x1E696E0F0];
  *(inited + 32) = *MEMORY[0x1E696E0F0];
  v4 = MEMORY[0x1E69E6370];
  *(inited + 40) = 1;
  v5 = *MEMORY[0x1E696E050];
  *(inited + 64) = v4;
  *(inited + 72) = v5;
  *(inited + 80) = 1;
  v6 = *MEMORY[0x1E696E120];
  *(inited + 104) = v4;
  *(inited + 112) = v6;
  v7 = v3;
  v8 = v5;
  v9 = v6;
  sub_1A88C7CB8();
  v10 = sub_1A88C82A8();

  type metadata accessor for CFString(0);
  v11 = MEMORY[0x1E696E048];
  *(inited + 120) = v10;
  v12 = *v11;
  *(inited + 144) = v13;
  *(inited + 152) = v12;
  *(inited + 184) = v4;
  *(inited + 160) = 1;
  v14 = v12;
  sub_1A8738E48(inited);
  swift_setDeallocating();
  sub_1A870CCE0(&qword_1EB303D98);
  swift_arrayDestroy();
  v15 = sub_1A88C7238();
  sub_1A874A11C(&qword_1EB3027D0, type metadata accessor for CFString);
  v16 = sub_1A88C8188();

  v17 = CGImageSourceCreateWithURL(v15, v16);

  if (!v17)
  {
    if (qword_1EB300360 != -1)
    {
      swift_once();
    }

    v24 = sub_1A88C7E58();
    sub_1A85EF0E4(v24, qword_1EB338D90);
    v25 = sub_1A88C72E8();
    v26 = *(v25 - 8);
    MEMORY[0x1EEE9AC00](v25);
    v28 = &v38 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v26 + 16))(v28, a1, v25);
    v29 = sub_1A88C7E38();
    v30 = sub_1A88C89C8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v38 = v32;
      *v31 = 136315138;
      sub_1A8746020();
      v33 = sub_1A88C9348();
      v35 = v34;
      (*(v26 + 8))(v28, v25);
      v36 = sub_1A85F0394(v33, v35, &v38);

      *(v31 + 4) = v36;
      _os_log_impl(&dword_1A85E5000, v29, v30, "Unable to create CGImageSource with URL: %s", v31, 0xCu);
      sub_1A85F1084(v32);
      MEMORY[0x1AC571F20](v32, -1, -1);
      MEMORY[0x1AC571F20](v31, -1, -1);
    }

    else
    {

      (*(v26 + 8))(v28, v25);
    }

    goto LABEL_14;
  }

  if (sub_1A88C89E8() < 2)
  {

LABEL_14:
    v23 = 0;
    return v23 & 1;
  }

  v18 = sub_1A87482C4();
  if (qword_1EB300360 != -1)
  {
    swift_once();
  }

  v19 = sub_1A88C7E58();
  sub_1A85EF0E4(v19, qword_1EB338D90);
  v20 = sub_1A88C7E38();
  v21 = sub_1A88C89A8();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 67109120;
    *(v22 + 4) = v18 & 1;
    _os_log_impl(&dword_1A85E5000, v20, v21, "Frame count > 1, isSpacial: %{BOOL}d", v22, 8u);
    MEMORY[0x1AC571F20](v22, -1, -1);
  }

  v23 = v18 ^ 1;
  return v23 & 1;
}

uint64_t sub_1A874905C(uint64_t a1)
{
  v2 = sub_1A870CCE0(&qword_1EB3045E0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v123 - v3;
  v5 = sub_1A88C7D78();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v123 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v123 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v125 = &v123 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v126 = &v123 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v127 = &v123 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v123 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v123 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v129 = &v123 - v25;
  v26 = sub_1A88C71F8();
  v28 = HIBYTE(v27) & 0xF;
  if ((v27 & 0x2000000000000000) == 0)
  {
    v28 = v26 & 0xFFFFFFFFFFFFLL;
  }

  if (v28)
  {
    sub_1A88C7CF8();
    sub_1A88C7CC8();
  }

  else
  {
    (*(v6 + 56))(v4, 1, 1, v5);
  }

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1A85EF638(v4, &qword_1EB3045E0);
    if (qword_1EB300360 != -1)
    {
      swift_once();
    }

    v29 = sub_1A88C7E58();
    sub_1A85EF0E4(v29, qword_1EB338D90);
    v30 = sub_1A88C72E8();
    v31 = *(v30 - 8);
    MEMORY[0x1EEE9AC00](v30);
    v33 = &v123 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v31 + 16))(v33, a1, v30);
    v34 = sub_1A88C7E38();
    v35 = sub_1A88C89C8();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v130 = v37;
      *v36 = 136315138;
      sub_1A8746020();
      v38 = sub_1A88C9348();
      v40 = v39;
      (*(v31 + 8))(v33, v30);
      v41 = sub_1A85F0394(v38, v40, &v130);

      *(v36 + 4) = v41;
      _os_log_impl(&dword_1A85E5000, v34, v35, "Unable to create UTType with URL: %s", v36, 0xCu);
      sub_1A85F1084(v37);
      MEMORY[0x1AC571F20](v37, -1, -1);
      MEMORY[0x1AC571F20](v36, -1, -1);
    }

    else
    {

      (*(v31 + 8))(v33, v30);
    }

    goto LABEL_29;
  }

  v124 = v12;
  v42 = v129;
  (*(v6 + 32))(v129, v4, v5);
  sub_1A88C7CB8();
  v43 = v5;
  v44 = sub_1A88C82A8();

  IsSupportedAnimatedImage = IMUTTypeIsSupportedAnimatedImage(v44);

  v128 = v5;
  if (!IsSupportedAnimatedImage)
  {
    if (qword_1EB300360 != -1)
    {
      swift_once();
    }

    v60 = sub_1A88C7E58();
    sub_1A85EF0E4(v60, qword_1EB338D90);
    v61 = v128;
    v62 = v129;
    (*(v6 + 16))(v9, v129, v128);
    v63 = sub_1A88C7E38();
    v64 = sub_1A88C89A8();
    if (!os_log_type_enabled(v63, v64))
    {

      v86 = *(v6 + 8);
      v86(v9, v61);
      v86(v62, v61);
      goto LABEL_29;
    }

    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v130 = v66;
    *v65 = 136315138;
    sub_1A874A11C(&unk_1EB300368, MEMORY[0x1E69E8450]);
    v67 = sub_1A88C9348();
    v69 = v68;
    v70 = *(v6 + 8);
    v70(v9, v61);
    v71 = sub_1A85F0394(v67, v69, &v130);

    *(v65 + 4) = v71;
    v72 = "UTType is not a supported animated image: %s";
LABEL_22:
    _os_log_impl(&dword_1A85E5000, v63, v64, v72, v65, 0xCu);
    sub_1A85F1084(v66);
    MEMORY[0x1AC571F20](v66, -1, -1);
    MEMORY[0x1AC571F20](v65, -1, -1);

    v70(v129, v61);
LABEL_29:
    v87 = 0;
    return v87 & 1;
  }

  v123 = a1;
  sub_1A88C7CE8();
  v46 = sub_1A88C7D68();
  v47 = *(v6 + 8);
  v47(v24, v5);
  v48 = v42;
  if (v46)
  {
    v127 = (v6 + 8);
    if (qword_1EB300360 != -1)
    {
      swift_once();
    }

    v49 = sub_1A88C7E58();
    sub_1A85EF0E4(v49, qword_1EB338D90);
    v50 = v128;
    (*(v6 + 16))(v21, v42, v128);
    v51 = sub_1A88C7E38();
    v52 = sub_1A88C89A8();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v130 = v54;
      *v53 = 136315138;
      sub_1A874A11C(&unk_1EB300368, MEMORY[0x1E69E8450]);
      v55 = sub_1A88C9348();
      v57 = v56;
      v47(v21, v128);
      v58 = sub_1A85F0394(v55, v57, &v130);

      *(v53 + 4) = v58;
      v50 = v128;
      _os_log_impl(&dword_1A85E5000, v51, v52, "Type conforms to PNG: %s", v53, 0xCu);
      sub_1A85F1084(v54);
      v59 = v54;
      v48 = v129;
      MEMORY[0x1AC571F20](v59, -1, -1);
      MEMORY[0x1AC571F20](v53, -1, -1);
    }

    else
    {

      v47(v21, v50);
    }

    v87 = sub_1A8748884(v123);
    v47(v48, v50);
    return v87 & 1;
  }

  sub_1A88C7D08();
  v73 = sub_1A88C7D68();
  v47(v24, v43);
  v70 = v47;
  if (v73)
  {
    if (qword_1EB300360 != -1)
    {
      swift_once();
    }

    v74 = sub_1A88C7E58();
    sub_1A85EF0E4(v74, qword_1EB338D90);
    v76 = v127;
    v75 = v128;
    (*(v6 + 16))(v127, v48, v128);
    v77 = sub_1A88C7E38();
    v78 = sub_1A88C89A8();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v130 = v80;
      *v79 = 136315138;
      sub_1A874A11C(&unk_1EB300368, MEMORY[0x1E69E8450]);
      v81 = sub_1A88C9348();
      v83 = v82;
      v70(v76, v128);
      v84 = sub_1A85F0394(v81, v83, &v130);

      *(v79 + 4) = v84;
      v75 = v128;
      _os_log_impl(&dword_1A85E5000, v77, v78, "Type conforms to WebP: %s", v79, 0xCu);
      sub_1A85F1084(v80);
      v85 = v80;
      v48 = v129;
      MEMORY[0x1AC571F20](v85, -1, -1);
      MEMORY[0x1AC571F20](v79, -1, -1);
    }

    else
    {

      v70(v76, v75);
    }

    sub_1A88C7D08();
LABEL_48:
    v87 = sub_1A8748B94(v123);
    v70(v24, v75);
    v70(v48, v75);
    return v87 & 1;
  }

  sub_1A88C7D28();
  v89 = sub_1A88C7D68();
  v47(v24, v43);
  if (v89)
  {
    if (qword_1EB300360 != -1)
    {
      swift_once();
    }

    v90 = sub_1A88C7E58();
    sub_1A85EF0E4(v90, qword_1EB338D90);
    v91 = v126;
    v75 = v128;
    (*(v6 + 16))(v126, v48, v128);
    v92 = sub_1A88C7E38();
    v93 = sub_1A88C89A8();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v130 = v95;
      *v94 = 136315138;
      sub_1A874A11C(&unk_1EB300368, MEMORY[0x1E69E8450]);
      v96 = sub_1A88C9348();
      v98 = v97;
      v70(v91, v128);
      v99 = sub_1A85F0394(v96, v98, &v130);

      *(v94 + 4) = v99;
      v75 = v128;
      _os_log_impl(&dword_1A85E5000, v92, v93, "Type conforms to HEICS: %s", v94, 0xCu);
      sub_1A85F1084(v95);
      v100 = v95;
      v48 = v129;
      MEMORY[0x1AC571F20](v100, -1, -1);
      MEMORY[0x1AC571F20](v94, -1, -1);
    }

    else
    {

      v70(v91, v75);
    }

    sub_1A88C7D28();
    goto LABEL_48;
  }

  sub_1A88C7CD8();
  v101 = sub_1A88C7D68();
  v47(v24, v43);
  if ((v101 & 1) == 0)
  {
    if (qword_1EB300360 != -1)
    {
      swift_once();
    }

    v117 = sub_1A88C7E58();
    sub_1A85EF0E4(v117, qword_1EB338D90);
    v118 = v124;
    v61 = v128;
    (*(v6 + 16))(v124, v48, v128);
    v63 = sub_1A88C7E38();
    v64 = sub_1A88C89A8();
    if (!os_log_type_enabled(v63, v64))
    {

      v70(v118, v61);
      v70(v48, v61);
      goto LABEL_29;
    }

    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v130 = v66;
    *v65 = 136315138;
    sub_1A874A11C(&unk_1EB300368, MEMORY[0x1E69E8450]);
    v119 = sub_1A88C9348();
    v121 = v120;
    v70(v118, v61);
    v122 = sub_1A85F0394(v119, v121, &v130);

    *(v65 + 4) = v122;
    v72 = "Not one of our supported types: %s";
    goto LABEL_22;
  }

  if (qword_1EB300360 != -1)
  {
    swift_once();
  }

  v102 = sub_1A88C7E58();
  sub_1A85EF0E4(v102, qword_1EB338D90);
  v103 = v125;
  v104 = v128;
  (*(v6 + 16))(v125, v48, v128);
  v105 = sub_1A88C7E38();
  v106 = sub_1A88C89A8();
  if (os_log_type_enabled(v105, v106))
  {
    v107 = swift_slowAlloc();
    v127 = (v6 + 8);
    v108 = v107;
    v109 = swift_slowAlloc();
    v130 = v109;
    *v108 = 136315138;
    sub_1A874A11C(&unk_1EB300368, MEMORY[0x1E69E8450]);
    v110 = v70;
    v111 = v48;
    v112 = v104;
    v113 = sub_1A88C9348();
    v115 = v114;
    v110(v103, v112);
    v116 = sub_1A85F0394(v113, v115, &v130);

    *(v108 + 4) = v116;
    _os_log_impl(&dword_1A85E5000, v105, v106, "Type conforms to GIF: %s", v108, 0xCu);
    sub_1A85F1084(v109);
    MEMORY[0x1AC571F20](v109, -1, -1);
    MEMORY[0x1AC571F20](v108, -1, -1);

    v110(v111, v112);
  }

  else
  {

    v47(v103, v104);
    v47(v48, v104);
  }

  v87 = 1;
  return v87 & 1;
}

uint64_t sub_1A874A11C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A874A198()
{
  result = [objc_opt_self() supportsDataDetectors];
  if (result)
  {
    result = [v0 body];
    if (result)
    {
      v2 = result;
      if ([result length] < 4000)
      {
        if (([v0 flags] & 0x100000) != 0)
        {
          v15 = *MEMORY[0x1E69A5FF0];
          result = [v2 length];
          if ((result & 0x8000000000000000) == 0)
          {
            v16 = [v2 attribute:v15 existsInRange:{0, result}];

            return v16;
          }

          __break(1u);
          goto LABEL_18;
        }

        v17[1] = [v0 flags];
        v3 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
        v4 = [v2 string];
        if (!v4)
        {
          sub_1A88C82E8();
          v4 = sub_1A88C82A8();
        }

        v5 = [v0 guid];
        v6 = [v0 sender];
        v7 = [v0 time];
        v8 = sub_1A88C7478();
        v9 = *(v8 - 8);
        MEMORY[0x1EEE9AC00](v8);
        v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
        if (v7)
        {
          sub_1A88C7448();

          v7 = sub_1A88C73D8();
          (*(v9 + 8))(v11, v8);
        }

        v12 = IMDDScanAttributedStringWithContext();

        if (v12)
        {
          v13 = *MEMORY[0x1E69A5FF0];
          result = [v3 length];
          if ((result & 0x8000000000000000) == 0)
          {
            v14 = [v3 attribute:v13 existsInRange:{0, result}];

            return v14;
          }

LABEL_18:
          __break(1u);
          return result;
        }
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_1A874A4C8(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_1A874A4E0(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_1A874A504(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_1A874A54C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A874A5B8()
{
  v0 = sub_1A88C7E58();
  sub_1A85EFC04(v0, qword_1EB304608);
  sub_1A85EF0E4(v0, qword_1EB304608);
  return sub_1A88C7E48();
}

void sub_1A874A638(void *a1)
{
  v2 = a1;
  v3 = *(v1 + 32);
  v45 = *(v1 + 40);
  v44 = *(v1 + 72);
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  if (*(v1 + 96))
  {
    v40 = *(v1 + 88);
    v41 = *(v1 + 80);
    v6 = *(v1 + 104);
    v47[0] = *(v1 + 96);
    v47[1] = v6;
    v7 = sub_1A87DC50C();
    v8 = [objc_opt_self() sharedInstance];
    if (qword_1EB302138 != -1)
    {
LABEL_35:
      swift_once();
    }

    v9 = sub_1A88C7E58();
    sub_1A85EF0E4(v9, qword_1EB304608);

    v10 = sub_1A88C7E38();
    v11 = sub_1A88C89D8();
    v42 = v3;
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v47[0] = v13;
      *v12 = 136315394;
      *(v12 + 4) = sub_1A85F0394(0xD000000000000014, 0x80000001A8917C10, v47);
      *(v12 + 12) = 2048;
      *(v12 + 14) = *(v7 + 16);

      _os_log_impl(&dword_1A85E5000, v10, v11, "%s adding %ld contacts to IMContactStore.", v12, 0x16u);
      sub_1A85F1084(v13);
      MEMORY[0x1AC571F20](v13, -1, -1);
      MEMORY[0x1AC571F20](v12, -1, -1);
    }

    else
    {
    }

    v22 = 0;
    v23 = 0;
    v24 = 1 << *(v7 + 32);
    v25 = -1;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    v3 = v25 & *(v7 + 64);
    v26 = (v24 + 63) >> 6;
    if (v3)
    {
      while (1)
      {
        v27 = v23;
LABEL_19:
        v28 = __clz(__rbit64(v3));
        v3 &= v3 - 1;
        v29 = *(*(v7 + 56) + 8 * (v28 | (v27 << 6)));

        v30 = v29;
        v31 = sub_1A88C82A8();

        [v8 addContact:v30 withID:v31];

        v22 = 1;
        if (!v3)
        {
          goto LABEL_15;
        }
      }
    }

    while (1)
    {
LABEL_15:
      v27 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v27 >= v26)
      {
        break;
      }

      v3 = *(v7 + 64 + 8 * v27);
      ++v23;
      if (v3)
      {
        v23 = v27;
        goto LABEL_19;
      }
    }

    if (v22)
    {
      v32 = [objc_opt_self() defaultCenter];
      v33 = IMContactStoreChangedNotification;
      [v32 __mainThreadPostNotificationName_object_];
    }

    v2 = a1;
    v4 = v41;
    v3 = v42;
    v5 = v40;
    v21 = v45;
  }

  else
  {
    if (qword_1EB302138 != -1)
    {
      swift_once();
    }

    v14 = sub_1A88C7E58();
    sub_1A85EF0E4(v14, qword_1EB304608);
    v15 = sub_1A88C7E38();
    v16 = sub_1A88C89C8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = v5;
      v19 = swift_slowAlloc();
      v47[0] = v19;
      *v17 = 136315138;
      *(v17 + 4) = sub_1A85F0394(0xD000000000000014, 0x80000001A8917C10, v47);
      _os_log_impl(&dword_1A85E5000, v15, v16, "%s No contact info to associate.", v17, 0xCu);
      sub_1A85F1084(v19);
      v20 = v19;
      v5 = v18;
      MEMORY[0x1AC571F20](v20, -1, -1);
      MEMORY[0x1AC571F20](v17, -1, -1);
    }

    v21 = v45;
  }

  v34 = sub_1A88C82A8();
  v35 = sub_1A88C82A8();
  if (v21)
  {

    v21 = sub_1A88C8188();
  }

  v36 = sub_1A88C82A8();
  if (v44)
  {
    v37 = sub_1A88C82A8();
    if (v5)
    {
LABEL_28:

      sub_1A8757B60(v38);

      v46 = sub_1A88C85E8();

      goto LABEL_31;
    }
  }

  else
  {
    v37 = 0;
    if (v5)
    {
      goto LABEL_28;
    }
  }

  v46 = 0;
LABEL_31:
  LODWORD(v39) = v4;
  [v2 account:v34 chat:v35 style:v3 chatProperties:v21 groupID:v36 chatPersonCentricID:v37 statusChanged:v39 handleInfo:v46];
}

unint64_t sub_1A874ABD4(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x55746E756F636361;
    v6 = 0x6C79745374616863;
    if (a1 != 2)
    {
      v6 = 0xD000000000000012;
    }

    if (a1)
    {
      v5 = 0x6E65644974616863;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x737574617473;
    v2 = 0x6E49656C646E6168;
    if (a1 != 7)
    {
      v2 = 0x49746361746E6F63;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x444970756F7267;
    if (a1 != 4)
    {
      v3 = 0x65436E6F73726570;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1A874AD2C(void *a1)
{
  v3 = sub_1A870CCE0(&qword_1EB304688);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v18 - v5;
  v7 = *(v1 + 16);
  v26 = *(v1 + 24);
  v27 = v7;
  v31 = *(v1 + 32);
  v8 = *(v1 + 40);
  v24 = *(v1 + 48);
  v25 = v8;
  v9 = *(v1 + 56);
  v22 = *(v1 + 64);
  v23 = v9;
  v10 = *(v1 + 72);
  v21 = *(v1 + 80);
  v11 = *(v1 + 96);
  v18[0] = *(v1 + 88);
  v18[1] = v10;
  v19 = *(v1 + 104);
  v20 = v11;
  sub_1A870C278(a1, a1[3]);
  sub_1A874BB18();
  sub_1A88C95C8();
  LOBYTE(v29) = 0;
  v12 = v6;
  v13 = v28;
  sub_1A88C9278();
  if (v13)
  {
    return (*(v4 + 8))(v12, v3);
  }

  v14 = v25;
  LOBYTE(v29) = 1;
  sub_1A88C9278();
  LOBYTE(v29) = 2;
  sub_1A88C92F8();
  v32 = 3;
  if (v14)
  {
    v29 = v14;

    v28 = sub_1A870CCE0(&qword_1EB304660);
    sub_1A85FB520(&qword_1EB3046A0, &qword_1EB304660);
    sub_1A88C9228();
    v28 = 0;

    v13 = v28;
  }

  LOBYTE(v29) = 4;
  sub_1A88C9278();
  v16 = v19;
  v17 = v20;
  if (v13)
  {
    return (*(v4 + 8))(v12, v3);
  }

  LOBYTE(v29) = 5;
  sub_1A88C91C8();
  LOBYTE(v29) = 6;
  sub_1A88C92D8();
  v32 = 7;
  if (v18[0])
  {
    v29 = v18[0];

    sub_1A870CCE0(&qword_1EB304670);
    sub_1A85FB520(&qword_1EB304698, &qword_1EB304670);
    sub_1A88C9228();

    v16 = v19;
    v17 = v20;
  }

  v29 = v17;
  v30 = v16;
  v32 = 8;
  sub_1A874BC28(v17);
  sub_1A874BC68();
  sub_1A88C9228();
  sub_1A874BCBC(v29);
  return (*(v4 + 8))(v12, v3);
}

uint64_t sub_1A874B134@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1A870CCE0(&qword_1EB304650);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v32 - v7;
  sub_1A870C278(a1, a1[3]);
  sub_1A874BB18();
  sub_1A88C95A8();
  if (v2)
  {
    sub_1A85F1084(a1);
  }

  else
  {
    LOBYTE(v47[0]) = 0;
    v10 = sub_1A88C9108();
    v39 = a2;
    v40 = v11;
    LOBYTE(v47[0]) = 1;
    v12 = sub_1A88C9108();
    v14 = v13;
    *&v38 = v12;
    LOBYTE(v47[0]) = 2;
    v59 = sub_1A88C9188();
    *(&v38 + 1) = v14;
    sub_1A870CCE0(&qword_1EB304660);
    LOBYTE(v41[0]) = 3;
    sub_1A85FB520(&qword_1EB304668, &qword_1EB304660);
    sub_1A88C90B8();
    v15 = v47[0];
    if (v47[0] == 1)
    {
      v15 = 0;
    }

    v37 = v15;
    LOBYTE(v47[0]) = 4;
    v16 = sub_1A88C9108();
    v18 = v17;
    v19 = v16;
    LOBYTE(v47[0]) = 5;
    *&v36 = sub_1A88C9058();
    *(&v36 + 1) = v20;
    LOBYTE(v47[0]) = 6;
    v34 = sub_1A88C9168();
    v35 = v19;
    sub_1A870CCE0(&qword_1EB304670);
    LOBYTE(v41[0]) = 7;
    sub_1A85FB520(&qword_1EB304678, &qword_1EB304670);
    sub_1A88C90B8();
    if (v47[0] == 1)
    {
      v21 = 0;
    }

    else
    {
      v21 = v47[0];
    }

    v60 = 8;
    sub_1A874BB6C();
    sub_1A88C90B8();
    (*(v6 + 8))(v8, v5);
    v32 = *(&v58 + 1);
    v33 = v58;
    *&v41[0] = v10;
    v22 = v40;
    *(&v41[0] + 1) = v40;
    v41[1] = v38;
    v23 = *(&v38 + 1);
    LOBYTE(v42) = v59;
    v24 = v37;
    *(&v42 + 1) = v37;
    *&v43 = v35;
    *(&v43 + 1) = v18;
    v44 = v36;
    v25 = *(&v36 + 1);
    LODWORD(v45) = v34;
    *(&v45 + 1) = v21;
    v46 = v58;
    v26 = v38;
    v27 = v39;
    *v39 = v41[0];
    v27[1] = v26;
    v28 = v42;
    v29 = v43;
    v30 = v46;
    v31 = v44;
    v27[5] = v45;
    v27[6] = v30;
    v27[3] = v29;
    v27[4] = v31;
    v27[2] = v28;
    sub_1A874BBC0(v41, v47);
    sub_1A85F1084(a1);
    v47[0] = v10;
    v47[1] = v22;
    v47[2] = v38;
    v47[3] = v23;
    v48 = v59;
    v49 = v24;
    v50 = v35;
    v51 = v18;
    v52 = v36;
    v53 = v25;
    v54 = v34;
    v55 = v21;
    v56 = v33;
    v57 = v32;
    return sub_1A874BBF8(v47);
  }
}

uint64_t sub_1A874B83C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A874BE14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A874B864(uint64_t a1)
{
  v2 = sub_1A874BB18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A874B8A0(uint64_t a1)
{
  v2 = sub_1A874BB18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A874B8DC()
{
  v0 = qword_1EB304620;

  return v0;
}

unint64_t sub_1A874B948(uint64_t a1)
{
  *(a1 + 8) = sub_1A874B978();
  result = sub_1A874B9CC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1A874B978()
{
  result = qword_1EB304630;
  if (!qword_1EB304630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304630);
  }

  return result;
}

unint64_t sub_1A874B9CC()
{
  result = qword_1EB304638;
  if (!qword_1EB304638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304638);
  }

  return result;
}

unint64_t sub_1A874BA20(uint64_t a1)
{
  result = sub_1A874BA48();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A874BA48()
{
  result = qword_1EB304640;
  if (!qword_1EB304640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304640);
  }

  return result;
}

unint64_t sub_1A874BA9C(uint64_t a1)
{
  result = sub_1A874BAC4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A874BAC4()
{
  result = qword_1EB304648;
  if (!qword_1EB304648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304648);
  }

  return result;
}

unint64_t sub_1A874BB18()
{
  result = qword_1EB304658;
  if (!qword_1EB304658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304658);
  }

  return result;
}

unint64_t sub_1A874BB6C()
{
  result = qword_1EB304680;
  if (!qword_1EB304680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304680);
  }

  return result;
}

uint64_t sub_1A874BC28(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1A874BC68()
{
  result = qword_1EB304690;
  if (!qword_1EB304690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304690);
  }

  return result;
}

uint64_t sub_1A874BCBC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1A874BD10()
{
  result = qword_1EB3046A8;
  if (!qword_1EB3046A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3046A8);
  }

  return result;
}

unint64_t sub_1A874BD68()
{
  result = qword_1EB3046B0;
  if (!qword_1EB3046B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3046B0);
  }

  return result;
}

unint64_t sub_1A874BDC0()
{
  result = qword_1EB3046B8;
  if (!qword_1EB3046B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3046B8);
  }

  return result;
}

uint64_t sub_1A874BE14(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x55746E756F636361 && a2 == 0xEF4449657571696ELL;
  if (v4 || (sub_1A88C9398() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E65644974616863 && a2 == 0xEE00726569666974 || (sub_1A88C9398() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C79745374616863 && a2 == 0xE900000000000065 || (sub_1A88C9398() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A8917240 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x444970756F7267 && a2 == 0xE700000000000000 || (sub_1A88C9398() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x65436E6F73726570 && a2 == 0xEF4449636972746ELL || (sub_1A88C9398() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (sub_1A88C9398() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6E49656C646E6168 && a2 == 0xEE00617461446F66 || (sub_1A88C9398() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x49746361746E6F63 && a2 == 0xEB000000006F666ELL)
  {

    return 8;
  }

  else
  {
    v6 = sub_1A88C9398();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_1A874C124()
{
  v0 = sub_1A88C7E58();
  sub_1A85EFC04(v0, qword_1EB3046C0);
  sub_1A85EF0E4(v0, qword_1EB3046C0);
  return sub_1A88C7E48();
}

uint64_t static CodeTimer.defaultLogger.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB302140 != -1)
  {
    swift_once();
  }

  v2 = sub_1A88C7E58();
  v3 = sub_1A85EF0E4(v2, qword_1EB3046C0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t CodeTimer.id.getter()
{
  v1 = v0;
  v2 = type metadata accessor for CodeTimer();
  MEMORY[0x1AC56ECB0](*(v0 + v2[7]), *(v0 + v2[7] + 8));
  MEMORY[0x1AC56ECB0](58, 0xE100000000000000);
  v3 = sub_1A88C9348();
  MEMORY[0x1AC56ECB0](v3);

  MEMORY[0x1AC56ECB0](32, 0xE100000000000000);
  MEMORY[0x1AC56ECB0](*(v1 + v2[6]), *(v1 + v2[6] + 8));
  MEMORY[0x1AC56ECB0](2112093, 0xE300000000000000);
  MEMORY[0x1AC56ECB0](*(v1 + v2[5]), *(v1 + v2[5] + 8));
  return 91;
}

uint64_t type metadata accessor for CodeTimer()
{
  result = qword_1EB3046F0;
  if (!qword_1EB3046F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CodeTimer.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A88C7E58();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t CodeTimer.profilingDescription.getter()
{
  v1 = *(v0 + *(type metadata accessor for CodeTimer() + 20));

  return v1;
}

uint64_t CodeTimer.function.getter()
{
  v1 = *(v0 + *(type metadata accessor for CodeTimer() + 24));

  return v1;
}

uint64_t CodeTimer.fileName.getter()
{
  v1 = *(v0 + *(type metadata accessor for CodeTimer() + 28));

  return v1;
}

double CodeTimer.duration.getter()
{
  v1 = type metadata accessor for CodeTimer();
  v2 = v0 + *(v1 + 40);
  result = 0.0;
  if ((*(v2 + 8) & 1) == 0)
  {
    return *v2 - *(v0 + *(v1 + 36));
  }

  return result;
}

uint64_t CodeTimer.init(withLogger:_:function:fileName:line:timedBlock:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, void (*a10)(void), uint64_t a11)
{
  v33 = a7;
  v34 = a8;
  v31 = a5;
  v32 = a6;
  v35 = a10;
  v36 = a11;
  v16 = sub_1A88C7E58();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v17 + 16);
  v20(v19, a1, v16);
  v21 = type metadata accessor for CodeTimer();
  v22 = &a9[v21[10]];
  v23 = &a9[v21[5]];
  *v23 = a2;
  *(v23 + 1) = a3;
  v24 = &a9[v21[6]];
  v26 = v31;
  v25 = v32;
  *v24 = a4;
  *(v24 + 1) = v26;
  v27 = &a9[v21[7]];
  *v27 = v25;
  v28 = v34;
  *(v27 + 1) = v33;
  *&a9[v21[8]] = v28;
  *&a9[v21[9]] = 0;
  *v22 = 0;
  v22[8] = 1;
  v20(a9, v19, v16);
  CodeTimer.start()();
  v35();
  CodeTimer.stop()();
  v29 = *(v17 + 8);
  v29(a1, v16);
  return (v29)(v19, v16);
}

uint64_t CodeTimer.init(_:logger:function:fileName:line:timedBlock:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, void (*a10)(void))
{
  v19 = type metadata accessor for CodeTimer();
  v20 = a9 + v19[10];
  v21 = (a9 + v19[5]);
  *v21 = a1;
  v21[1] = a2;
  v22 = (a9 + v19[6]);
  *v22 = a4;
  v22[1] = a5;
  v23 = (a9 + v19[7]);
  *v23 = a6;
  v23[1] = a7;
  *(a9 + v19[8]) = a8;
  *(a9 + v19[9]) = 0;
  *v20 = 0;
  *(v20 + 8) = 1;
  v24 = sub_1A88C7E58();
  v27 = *(v24 - 8);
  (*(v27 + 16))(a9, a3, v24);
  CodeTimer.start()();
  a10();
  CodeTimer.stop()();
  v25 = *(v27 + 8);

  return v25(a3, v24);
}

Swift::Void __swiftcall CodeTimer.start()()
{
  v1 = sub_1A88C7E58();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A88C73A8();
  v6 = v5;
  v7 = type metadata accessor for CodeTimer();
  *(v0 + *(v7 + 36)) = v6;
  v8 = v0 + *(v7 + 40);
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = CodeTimer.id.getter();
  v11 = v10;
  (*(v2 + 16))(v4, v0, v1);
  v12 = sub_1A88C7E38();
  v13 = sub_1A88C89B8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v18 = v15;
    *v14 = 136315138;
    v16 = sub_1A85F0394(v9, v11, &v18);

    *(v14 + 4) = v16;
    _os_log_impl(&dword_1A85E5000, v12, v13, "+ Starting timer for %s...", v14, 0xCu);
    sub_1A85F1084(v15);
    MEMORY[0x1AC571F20](v15, -1, -1);
    MEMORY[0x1AC571F20](v14, -1, -1);
  }

  else
  {
  }

  (*(v2 + 8))(v4, v1);
}

Swift::Void __swiftcall CodeTimer.stop()()
{
  v1 = sub_1A88C7E58();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A88C73A8();
  v6 = v5;
  v7 = v0 + *(type metadata accessor for CodeTimer() + 40);
  *v7 = v6;
  *(v7 + 8) = 0;
  v8 = CodeTimer.durationDescription.getter();
  v10 = v9;
  v11 = CodeTimer.id.getter();
  v13 = v12;
  (*(v2 + 16))(v4, v0, v1);

  v14 = sub_1A88C7E38();
  v15 = sub_1A88C89A8();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v21 = v11;
    v17 = v16;
    v18 = swift_slowAlloc();
    v22 = v18;
    *v17 = 136315394;
    v19 = sub_1A85F0394(v8, v10, &v22);

    *(v17 + 4) = v19;
    *(v17 + 12) = 2080;
    v20 = sub_1A85F0394(v21, v13, &v22);

    *(v17 + 14) = v20;
    _os_log_impl(&dword_1A85E5000, v14, v15, "- Finished timer in elapsed time: %s: %s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1AC571F20](v18, -1, -1);
    MEMORY[0x1AC571F20](v17, -1, -1);
  }

  else
  {
  }

  (*(v2 + 8))(v4, v1);
}

uint64_t CodeTimer.init(withLogger:_:function:fileName:line:throwingTimedBlock:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, void (*a10)(void), uint64_t a11)
{
  v36 = a7;
  v37 = a8;
  v34 = a5;
  v35 = a6;
  v38 = a11;
  v39 = a10;
  v16 = sub_1A88C7E58();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v17 + 16);
  v20(v19, a1, v16);
  v21 = type metadata accessor for CodeTimer();
  v22 = a9 + v21[10];
  v23 = (a9 + v21[5]);
  *v23 = a2;
  v23[1] = a3;
  v24 = (a9 + v21[6]);
  v26 = v34;
  v25 = v35;
  *v24 = a4;
  v24[1] = v26;
  v27 = (a9 + v21[7]);
  *v27 = v25;
  v28 = v37;
  v27[1] = v36;
  *(a9 + v21[8]) = v28;
  *(a9 + v21[9]) = 0;
  *v22 = 0;
  *(v22 + 8) = 1;
  v20(a9, v19, v16);
  CodeTimer.start()();
  v29 = v40;
  v39();
  v30 = (v17 + 8);
  if (v29)
  {
    v31 = *v30;
    (*v30)(a1, v16);
    sub_1A874DD08(a9);
    return v31(v19, v16);
  }

  else
  {
    CodeTimer.stop()();
    v33 = *v30;
    (*v30)(a1, v16);
    return v33(v19, v16);
  }
}

uint64_t CodeTimer.init(_:logger:function:fileName:line:throwingTimedBlock:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, void (*a10)(void))
{
  v19 = type metadata accessor for CodeTimer();
  v20 = a9 + v19[10];
  v21 = (a9 + v19[5]);
  *v21 = a1;
  v21[1] = a2;
  v22 = (a9 + v19[6]);
  *v22 = a4;
  v22[1] = a5;
  v23 = (a9 + v19[7]);
  *v23 = a6;
  v23[1] = a7;
  *(a9 + v19[8]) = a8;
  *(a9 + v19[9]) = 0;
  *v20 = 0;
  *(v20 + 8) = 1;
  v24 = sub_1A88C7E58();
  v25 = (*(v24 - 8) + 16);
  (*v25)(a9, a3, v24);
  CodeTimer.start()();
  a10();
  v26 = (v25 - 1);
  if (v28)
  {
    (*v26)(a3, v24);
    return sub_1A874DD08(a9);
  }

  else
  {
    CodeTimer.stop()();
    return (*v26)(a3, v24);
  }
}

uint64_t CodeTimer.init(_:logger:start:function:fileName:line:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v19 = type metadata accessor for CodeTimer();
  v20 = a9 + v19[10];
  v21 = (a9 + v19[5]);
  *v21 = a1;
  v21[1] = a2;
  v22 = (a9 + v19[6]);
  *v22 = a5;
  v22[1] = a6;
  v23 = (a9 + v19[7]);
  *v23 = a7;
  v23[1] = a8;
  *(a9 + v19[8]) = a10;
  *(a9 + v19[9]) = 0;
  *v20 = 0;
  *(v20 + 8) = 1;
  v24 = sub_1A88C7E58();
  v27 = *(v24 - 8);
  (*(v27 + 16))(a9, a3, v24);
  if (a4)
  {
    CodeTimer.start()();
  }

  v25 = *(v27 + 8);

  return v25(a3, v24);
}

uint64_t CodeTimer.init(withLogger:_:start:function:fileName:line:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10)
{
  v32 = a7;
  v33 = a8;
  v34 = a4;
  v30 = a10;
  v31 = a6;
  v15 = sub_1A88C7E58();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v16 + 16);
  v19(v18, a1, v15);
  v20 = type metadata accessor for CodeTimer();
  v21 = &a9[v20[10]];
  v22 = &a9[v20[5]];
  *v22 = a2;
  *(v22 + 1) = a3;
  v23 = &a9[v20[6]];
  v25 = v31;
  v24 = v32;
  *v23 = a5;
  *(v23 + 1) = v25;
  v26 = &a9[v20[7]];
  *v26 = v24;
  *(v26 + 1) = v33;
  *&a9[v20[8]] = v30;
  *&a9[v20[9]] = 0;
  *v21 = 0;
  v21[8] = 1;
  v19(a9, v18, v15);
  if (v34)
  {
    CodeTimer.start()();
  }

  v27 = *(v16 + 8);
  v27(a1, v15);
  return (v27)(v18, v15);
}

void CodeTimer.profile(_:)(void (*a1)(void))
{
  CodeTimer.start()();
  a1();

  CodeTimer.stop()();
}

{
  CodeTimer.start()();
  a1();
  CodeTimer.stop()();
}

void CodeTimer.profile<A>(_:)(void (*a1)(void))
{
  CodeTimer.start()();
  a1();

  CodeTimer.stop()();
}

{
  CodeTimer.start()();
  a1();
  CodeTimer.stop()();
}

uint64_t CodeTimer.durationDescription.getter()
{
  type metadata accessor for CodeTimer();
  v0 = sub_1A88C9698();
  v26 = v1;
  v27 = v0;
  v2 = sub_1A88C9678();
  v28 = v20;
  v3 = *(v2 - 8);
  v24 = v2;
  v25 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v23 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A870CCE0(&qword_1EB3046D8);
  sub_1A88C9648();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1A88E4F70;
  sub_1A88C9628();
  sub_1A88C9638();
  sub_1A88C9618();
  sub_1A874DD64(v5);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v21 = sub_1A88C9668();
  v22 = v20;
  v6 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A88C9658();
  v9 = sub_1A88C95E8();
  v20[1] = v20;
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A88C95D8();
  v13 = sub_1A88C9608();
  v20[0] = v20;
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A88C95F8();
  v17 = v23;
  sub_1A88C6DF8();

  (*(v14 + 8))(v16, v13);
  (*(v10 + 8))(v12, v9);
  (*(v6 + 8))(v8, v21);
  sub_1A874E4DC(&qword_1EB3046E0, MEMORY[0x1EEE78E88]);
  v18 = v24;
  sub_1A88C9688();
  (*(v25 + 8))(v17, v18);
  return v29;
}

uint64_t sub_1A874D948@<X0>(uint64_t *a1@<X8>)
{
  result = CodeTimer.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t CodeTimer.description.getter()
{
  sub_1A88C8E08();
  MEMORY[0x1AC56ECB0](0xD00000000000001FLL, 0x80000001A8917C30);
  v0 = CodeTimer.id.getter();
  MEMORY[0x1AC56ECB0](v0);

  MEMORY[0x1AC56ECB0](0xD000000000000010, 0x80000001A8917C50);
  v1 = CodeTimer.durationDescription.getter();
  MEMORY[0x1AC56ECB0](v1);

  return 0;
}

uint64_t static CodeTimer.== infix(_:_:)()
{
  v0 = CodeTimer.id.getter();
  v2 = v1;
  if (v0 == CodeTimer.id.getter() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1A88C9398();
  }

  return v4 & 1;
}

uint64_t sub_1A874DACC()
{
  v0 = CodeTimer.id.getter();
  v2 = v1;
  if (v0 == CodeTimer.id.getter() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1A88C9398();
  }

  return v4 & 1;
}

uint64_t CodeTimer.hash(into:)()
{
  CodeTimer.id.getter();
  sub_1A88C8268();
}

uint64_t CodeTimer.hashValue.getter()
{
  sub_1A88C9528();
  CodeTimer.id.getter();
  sub_1A88C8268();

  return sub_1A88C9578();
}

uint64_t sub_1A874DC04()
{
  sub_1A88C9528();
  CodeTimer.id.getter();
  sub_1A88C8268();

  return sub_1A88C9578();
}

uint64_t sub_1A874DC60()
{
  CodeTimer.id.getter();
  sub_1A88C8268();
}

uint64_t sub_1A874DCB0()
{
  sub_1A88C9528();
  CodeTimer.id.getter();
  sub_1A88C8268();

  return sub_1A88C9578();
}

uint64_t sub_1A874DD08(uint64_t a1)
{
  v2 = type metadata accessor for CodeTimer();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A874DD64(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A870CCE0(&qword_1EB304720);
    v3 = sub_1A88C8DD8();
    v36 = v3 + 56;
    result = sub_1A88C9648();
    v5 = result;
    v6 = 0;
    v7 = *(result - 8);
    v8 = *(v7 + 16);
    v34 = v7 + 16;
    v35 = v8;
    v29 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v9 = (v7 + 8);
    v27 = v1;
    v28 = (v7 + 32);
    v10 = *(v7 + 64);
    v37 = *(v7 + 72);
    v33 = v10;
    while (1)
    {
      MEMORY[0x1EEE9AC00](result);
      v32 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
      v12 = &v26 - v32;
      v35(&v26 - v32);
      sub_1A874E4DC(&qword_1EB304728, MEMORY[0x1EEE78E40]);
      v13 = sub_1A88C8228();
      v14 = ~(-1 << *(v3 + 32));
      v15 = v13 & v14;
      v16 = (v13 & v14) >> 6;
      v17 = *(v36 + 8 * v16);
      v18 = 1 << (v13 & v14);
      if ((v18 & v17) != 0)
      {
        v30 = &v26;
        v31 = v6;
        v19 = v3;
        do
        {
          MEMORY[0x1EEE9AC00](v13);
          v20 = &v26 - v32;
          (v35)(&v26 - v32, *(v19 + 48) + v15 * v37, v5);
          sub_1A874E4DC(&qword_1EB304730, MEMORY[0x1EEE78E40]);
          v21 = sub_1A88C8298();
          v22 = *v9;
          v13 = (*v9)(v20, v5);
          if (v21)
          {
            result = v22(v12, v5);
            v1 = v27;
            v3 = v19;
            v6 = v31;
            goto LABEL_4;
          }

          v15 = (v15 + 1) & v14;
          v16 = v15 >> 6;
          v17 = *(v36 + 8 * (v15 >> 6));
          v18 = 1 << v15;
        }

        while (((1 << v15) & v17) != 0);
        v1 = v27;
        v3 = v19;
        v6 = v31;
      }

      *(v36 + 8 * v16) = v18 | v17;
      result = (*v28)(*(v3 + 48) + v15 * v37, v12, v5);
      v23 = *(v3 + 16);
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        break;
      }

      *(v3 + 16) = v25;
LABEL_4:
      if (++v6 == v1)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

unint64_t sub_1A874E06C()
{
  result = qword_1EB3046E8;
  if (!qword_1EB3046E8)
  {
    type metadata accessor for CodeTimer();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3046E8);
  }

  return result;
}

void sub_1A874E0EC()
{
  sub_1A88C7E58();
  if (v0 <= 0x3F)
  {
    sub_1A874E194();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1A874E194()
{
  if (!qword_1EB304700)
  {
    v0 = sub_1A88C8BE8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB304700);
    }
  }
}

uint64_t sub_1A874E1E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A870CCE0(&qword_1EB304718);
    v3 = sub_1A88C8DD8();
    v36 = v3 + 56;
    result = sub_1A88C72E8();
    v5 = result;
    v6 = 0;
    v7 = *(result - 8);
    v8 = *(v7 + 16);
    v34 = v7 + 16;
    v35 = v8;
    v29 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v9 = (v7 + 8);
    v27 = v1;
    v28 = (v7 + 32);
    v10 = *(v7 + 64);
    v37 = *(v7 + 72);
    v33 = v10;
    while (1)
    {
      MEMORY[0x1EEE9AC00](result);
      v32 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
      v12 = &v26 - v32;
      v35(&v26 - v32);
      sub_1A874E4DC(&qword_1EB303178, MEMORY[0x1EEE786A0]);
      v13 = sub_1A88C8228();
      v14 = ~(-1 << *(v3 + 32));
      v15 = v13 & v14;
      v16 = (v13 & v14) >> 6;
      v17 = *(v36 + 8 * v16);
      v18 = 1 << (v13 & v14);
      if ((v18 & v17) != 0)
      {
        v30 = &v26;
        v31 = v6;
        v19 = v3;
        do
        {
          MEMORY[0x1EEE9AC00](v13);
          v20 = &v26 - v32;
          (v35)(&v26 - v32, *(v19 + 48) + v15 * v37, v5);
          sub_1A874E4DC(&qword_1EB303180, MEMORY[0x1EEE786A0]);
          v21 = sub_1A88C8298();
          v22 = *v9;
          v13 = (*v9)(v20, v5);
          if (v21)
          {
            result = v22(v12, v5);
            v1 = v27;
            v3 = v19;
            v6 = v31;
            goto LABEL_4;
          }

          v15 = (v15 + 1) & v14;
          v16 = v15 >> 6;
          v17 = *(v36 + 8 * (v15 >> 6));
          v18 = 1 << v15;
        }

        while (((1 << v15) & v17) != 0);
        v1 = v27;
        v3 = v19;
        v6 = v31;
      }

      *(v36 + 8 * v16) = v18 | v17;
      result = (*v28)(*(v3 + 48) + v15 * v37, v12, v5);
      v23 = *(v3 + 16);
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        break;
      }

      *(v3 + 16) = v25;
LABEL_4:
      if (++v6 == v1)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1A874E4DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A874E534(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[0] = a4;
  v6 = sub_1A870CCE0(&qword_1EB304788);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v11 - v8;
  sub_1A870C278(a1, a1[3]);
  sub_1A874ED94();
  sub_1A88C95C8();
  v13 = 0;
  sub_1A88C9278();
  if (!v4)
  {
    v11[1] = v11[0];
    v12 = 1;
    sub_1A870CCE0(&qword_1EB304778);
    sub_1A874EDE8(&qword_1EB304790);
    sub_1A88C92C8();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1A874E724@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x80000001A8917A40 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001A8917C90 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1A88C9398();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1A874E80C(uint64_t a1)
{
  v2 = sub_1A874ED94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A874E848(uint64_t a1)
{
  v2 = sub_1A874ED94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A874E884()
{
  v0 = *aChatupdated;

  return v0;
}

void sub_1A874E8BC(void *a1)
{
  v2 = sub_1A88C82A8();
  v3 = sub_1A88C8188();
  [a1 chat:v2 updated:v3];
}

uint64_t sub_1A874E954@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1A874EB74(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

unint64_t sub_1A874E9A4(uint64_t a1)
{
  *(a1 + 8) = sub_1A874E9D4();
  result = sub_1A874EA28();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1A874E9D4()
{
  result = qword_1EB304748;
  if (!qword_1EB304748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304748);
  }

  return result;
}

unint64_t sub_1A874EA28()
{
  result = qword_1EB304750;
  if (!qword_1EB304750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304750);
  }

  return result;
}

unint64_t sub_1A874EA7C(uint64_t a1)
{
  result = sub_1A874EAA4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A874EAA4()
{
  result = qword_1EB304758;
  if (!qword_1EB304758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304758);
  }

  return result;
}

unint64_t sub_1A874EAF8(uint64_t a1)
{
  result = sub_1A874EB20();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A874EB20()
{
  result = qword_1EB304760;
  if (!qword_1EB304760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304760);
  }

  return result;
}

uint64_t sub_1A874EB74(void *a1)
{
  v3 = sub_1A870CCE0(&qword_1EB304768);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-v5];
  v7 = a1[4];
  sub_1A870C278(a1, a1[3]);
  sub_1A874ED94();
  sub_1A88C95A8();
  if (!v1)
  {
    v9[31] = 0;
    v7 = sub_1A88C9108();
    sub_1A870CCE0(&qword_1EB304778);
    v9[15] = 1;
    sub_1A874EDE8(&qword_1EB304780);
    sub_1A88C9158();
    (*(v4 + 8))(v6, v3);
  }

  sub_1A85F1084(a1);
  return v7;
}

unint64_t sub_1A874ED94()
{
  result = qword_1EB304770;
  if (!qword_1EB304770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304770);
  }

  return result;
}

uint64_t sub_1A874EDE8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1A870CD28(&qword_1EB304778);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A874EE4C()
{
  result = qword_1EB304798;
  if (!qword_1EB304798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304798);
  }

  return result;
}

unint64_t sub_1A874EEA4()
{
  result = qword_1EB3047A0;
  if (!qword_1EB3047A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3047A0);
  }

  return result;
}

unint64_t sub_1A874EEFC()
{
  result = qword_1EB3047A8;
  if (!qword_1EB3047A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3047A8);
  }

  return result;
}

uint64_t sub_1A874EF64(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x73616364616F7262;
  }

  else
  {
    v3 = 25705;
  }

  if (v2)
  {
    v4 = 0xE200000000000000;
  }

  else
  {
    v4 = 0xE900000000000074;
  }

  if (*a2)
  {
    v5 = 0x73616364616F7262;
  }

  else
  {
    v5 = 25705;
  }

  if (*a2)
  {
    v6 = 0xE900000000000074;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1A88C9398();
  }

  return v8 & 1;
}

uint64_t sub_1A874F004()
{
  sub_1A88C9528();
  sub_1A88C8268();

  return sub_1A88C9578();
}

uint64_t sub_1A874F080()
{
  sub_1A88C8268();
}

uint64_t sub_1A874F0E8()
{
  sub_1A88C9528();
  sub_1A88C8268();

  return sub_1A88C9578();
}

uint64_t sub_1A874F160@<X0>(char *a1@<X8>)
{
  v2 = sub_1A88C9028();

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

  *a1 = v4;
  return result;
}

void sub_1A874F1C0(uint64_t *a1@<X8>)
{
  v2 = 25705;
  if (*v1)
  {
    v2 = 0x73616364616F7262;
  }

  v3 = 0xE200000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000074;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1A874F1F8()
{
  if (*v0)
  {
    return 0x73616364616F7262;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1A874F22C@<X0>(char *a1@<X8>)
{
  v2 = sub_1A88C9028();

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

  *a1 = v4;
  return result;
}

uint64_t sub_1A874F290(uint64_t a1)
{
  v2 = sub_1A874F57C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A874F2CC(uint64_t a1)
{
  v2 = sub_1A874F57C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RemoteIntentBroadcastEncoding.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A870CCE0(&qword_1EB3047B0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19[-1] - v7;
  sub_1A870C278(a1, a1[3]);
  sub_1A874F57C();
  sub_1A88C95A8();
  if (!v2)
  {
    LOBYTE(v19[0]) = 0;
    v9 = sub_1A88C9108();
    v11 = v10;
    if (qword_1EB302098 != -1)
    {
      swift_once();
    }

    v12 = off_1EB303160;
    if (*(off_1EB303160 + 2) && (v13 = sub_1A85F5F40(v9, v11), (v14 & 1) != 0))
    {
      v15 = v13;

      v18 = *(v12[7] + 16 * v15);
      v20 = 1;
      *&v19[3] = v18;
      sub_1A871E00C(v19);
      sub_1A88C9158();
      (*(v6 + 8))(v8, v5);
      sub_1A860D56C(v19, a2);
    }

    else
    {
      sub_1A874F800();
      swift_allocError();
      *v16 = v9;
      v16[1] = v11;
      swift_willThrow();
      (*(v6 + 8))(v8, v5);
    }
  }

  return sub_1A85F1084(a1);
}

unint64_t sub_1A874F57C()
{
  result = qword_1EB3047B8;
  if (!qword_1EB3047B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3047B8);
  }

  return result;
}

uint64_t RemoteIntentBroadcastEncoding.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1A870CCE0(&qword_1EB3047C8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13[-1] - v7;
  sub_1A870C278(a1, a1[3]);
  sub_1A874F57C();
  sub_1A88C95C8();
  sub_1A86061B4(v3, v13);
  sub_1A870C278(v13, v13[3]);
  DynamicType = swift_getDynamicType();
  v10 = v13[4];
  sub_1A85F1084(v13);
  (*(v10 + 48))(DynamicType, v10);
  LOBYTE(v13[0]) = 0;
  sub_1A88C9278();
  if (v2)
  {
    (*(v6 + 8))(v8, v5);
  }

  else
  {

    sub_1A870C278(v3, v3[3]);
    LOBYTE(v13[0]) = 1;
    sub_1A88C92C8();
    return (*(v6 + 8))(v8, v5);
  }
}

unint64_t sub_1A874F800()
{
  result = qword_1EB3047C0;
  if (!qword_1EB3047C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3047C0);
  }

  return result;
}

uint64_t sub_1A874F854(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x1AC571F20);
  }

  return result;
}

unint64_t sub_1A874F8A4(uint64_t a1)
{
  *(a1 + 8) = sub_1A8743898();
  result = sub_1A87437CC();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1A874F8D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A874F91C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1A874F998()
{
  result = qword_1EB3047D0;
  if (!qword_1EB3047D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3047D0);
  }

  return result;
}

unint64_t sub_1A874F9F0()
{
  result = qword_1EB3047D8;
  if (!qword_1EB3047D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3047D8);
  }

  return result;
}

unint64_t sub_1A874FA48()
{
  result = qword_1EB3047E0;
  if (!qword_1EB3047E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3047E0);
  }

  return result;
}

void __swiftcall IMChipAction.init(dictionary:)(IMChipAction_optional *__return_ptr retstr, Swift::OpaquePointer dictionary)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1A88C8188();

  [v2 initWithDictionary_];
}

id IMChipAction.init(dictionary:)(uint64_t a1)
{
  v2 = v1;
  if (*(a1 + 16) && (v4 = sub_1A85F5F40(0x6974736567677573, 0xEA00000000006E6FLL), (v5 & 1) != 0) && (sub_1A85F1028(*(a1 + 56) + 32 * v4, v18), sub_1A870CCE0(&unk_1EB3091D0), (swift_dynamicCast() & 1) != 0) && (v6 = objc_allocWithZone(IMChipSuggestion), v7 = sub_1A88C8188(), , v8 = [v6 initWithDictionary_], v7, v8))
  {
    if (*(a1 + 16))
    {
      v9 = sub_1A85F5F40(1701869940, 0xE400000000000000);
      if (v10)
      {
        sub_1A85F1028(*(a1 + 56) + 32 * v9, v18);
        if (swift_dynamicCast())
        {
          if (*(a1 + 16) && (v11 = sub_1A85F5F40(0x6E6F69746361, 0xE600000000000000), (v12 & 1) != 0))
          {
            sub_1A85F1028(*(a1 + 56) + 32 * v11, v18);

            if (swift_dynamicCast())
            {
              v13 = sub_1A88C8188();

LABEL_18:
              v15 = [objc_opt_self() actionWithType:v17 dictionary:v13];

              v16 = [v2 initWithSuggestion:v8 type:v17 action:v15];
              swift_unknownObjectRelease();

              return v16;
            }
          }

          else
          {
          }

          v13 = 0;
          goto LABEL_18;
        }
      }
    }
  }

  else
  {
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_1A874FECC()
{
  v1 = v0;
  sub_1A870CCE0(&qword_1EB303B58);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A88E4F70;
  *(inited + 32) = 0x6974736567677573;
  *(inited + 40) = 0xEA00000000006E6FLL;
  v3 = [v1 suggestion];
  v4 = [v3 dictionaryRepresentation];

  v5 = sub_1A88C81A8();
  v6 = sub_1A870CCE0(&unk_1EB3091D0);
  *(inited + 48) = v5;
  *(inited + 72) = v6;
  *(inited + 80) = 1701869940;
  *(inited + 88) = 0xE400000000000000;
  v7 = [v1 type];
  v8 = MEMORY[0x1E69E6530];
  *(inited + 96) = v7;
  *(inited + 120) = v8;
  *(inited + 128) = 0x6E6F69746361;
  *(inited + 136) = 0xE600000000000000;
  v9 = [v1 action];
  if (v9)
  {
    v10 = [v9 dictionaryRepresentation];
    swift_unknownObjectRelease();
    v11 = sub_1A88C81A8();
  }

  else
  {
    v11 = 0;
    v6 = 0;
    *(inited + 152) = 0;
    *(inited + 160) = 0;
  }

  *(inited + 144) = v11;
  *(inited + 168) = v6;
  v12 = sub_1A8738CF0(inited);
  swift_setDeallocating();
  sub_1A870CCE0(&qword_1EB304A50);
  swift_arrayDestroy();
  v13 = sub_1A8895CC8(v12);

  return v13;
}

id sub_1A8750200()
{
  sub_1A870CCE0(&qword_1EB304808);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A88E14F0;
  *(inited + 32) = @"__kIMSuggestedActionAttributeName";
  v2 = @"__kIMSuggestedActionAttributeName";
  v3 = [v0 dictionaryRepresentation];
  v4 = sub_1A88C81A8();

  *(inited + 40) = v4;
  v5 = sub_1A8738F70(inited);
  swift_setDeallocating();
  sub_1A87504EC(inited + 32);
  v6 = @"\uFFFF";
  sub_1A878C550(v5);

  v7 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  type metadata accessor for Key(0);
  sub_1A8750554();
  v8 = sub_1A88C8188();

  v9 = [v7 initWithString:v6 attributes:v8];

  return v9;
}

IMChipAction __swiftcall IMChipAction.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  v1 = [v0 init];
  result.action = v4;
  result.type = v3;
  result.suggestion = v2;
  result.super.isa = v1;
  return result;
}

unint64_t type metadata accessor for IMChipAction()
{
  result = qword_1EB304800;
  if (!qword_1EB304800)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB304800);
  }

  return result;
}

uint64_t sub_1A87504EC(uint64_t a1)
{
  v2 = sub_1A870CCE0(&qword_1EB304810);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A8750554()
{
  result = qword_1EB3026B8;
  if (!qword_1EB3026B8)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3026B8);
  }

  return result;
}

id sub_1A87505AC(unint64_t a1, uint64_t a2)
{
  result = 0;
  if (a2)
  {
    if (a1 <= 0xC)
    {
      v4 = objc_allocWithZone(*off_1E782BA30[a1]);
      v5 = sub_1A88C8188();
      v6 = [v4 initWithDictionary_];

      return v6;
    }
  }

  return result;
}

uint64_t sub_1A8750644()
{
  v0 = sub_1A88C7E58();
  sub_1A85EFC04(v0, qword_1EB304818);
  sub_1A85EF0E4(v0, qword_1EB304818);
  return sub_1A88C7E48();
}

uint64_t RemoteIntentFilePersistedNodeStore.__allocating_init(configuration:)(uint64_t a1)
{
  v2 = swift_allocObject();
  RemoteIntentFilePersistedNodeStore.init(configuration:)(a1);
  return v2;
}

uint64_t RemoteIntentFilePersistedNodeStore.init(configuration:)(uint64_t a1)
{
  v2 = v1;
  v30 = *v1;
  v4 = sub_1A870CCE0(&qword_1EB304830);
  v29 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v32 = v28 - v5;
  sub_1A88C8058();
  sub_1A870CCE0(&qword_1EB304838);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1A88E2770;
  v7 = type metadata accessor for PersistedListModel(0);
  v8 = sub_1A8750D30(&qword_1EB304840, type metadata accessor for PersistedListModel);
  *(v6 + 32) = v7;
  *(v6 + 40) = v8;
  v31 = v8;
  v9 = type metadata accessor for RemoteIntentFileListNode(0);
  v10 = sub_1A8750D30(&qword_1EB304848, type metadata accessor for RemoteIntentFileListNode);
  *(v6 + 48) = v9;
  *(v6 + 56) = v10;
  sub_1A870CCE0(&qword_1EB304850);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1A88E14F0;
  v12 = sub_1A88C8128();
  *(v11 + 56) = v12;
  *(v11 + 64) = sub_1A8750D30(&qword_1EB304858, MEMORY[0x1E697BC88]);
  v13 = sub_1A871E00C((v11 + 32));
  v14 = *(v12 - 8);
  (*(v14 + 16))(v13, a1, v12);
  v15 = v37;
  v16 = sub_1A88C8048();
  if (v15)
  {
    (*(v14 + 8))(a1, v12);
    swift_deallocPartialClassInstance();
    return v1;
  }

  v37 = v4;
  v1[2] = v16;
  sub_1A88C8028();
  swift_allocObject();

  v1[3] = sub_1A88C8038();

  sub_1A88C7FE8();

  v18 = sub_1A870CCE0(&qword_1EB304860);
  v28[1] = v28;
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = v28 - v19;
  v21 = sub_1A870CCE0(&qword_1EB304868);
  (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
  sub_1A88C8078();
  v30 = v2;

  v22 = sub_1A88C7FF8();

  if (!(v22 >> 62))
  {
    result = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = a1;
    if (result)
    {
      goto LABEL_5;
    }

LABEL_11:

    v26 = swift_allocObject();
    *(v26 + 48) = sub_1A870CCE0(&qword_1EB304870);
    v33 = v7;
    v34 = v7;
    v35 = v31;
    v36 = v31;
    *(v26 + 56) = swift_getOpaqueTypeConformance2();
    sub_1A871E00C((v26 + 24));
    sub_1A88C8088();
    *(v26 + 16) = 257;
    sub_1A88C7628();
    v27 = v30;

    sub_1A88C8018();

    v24 = v37;
    v25 = v29;
    goto LABEL_9;
  }

  result = sub_1A88C8D38();
  v23 = a1;
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((v22 & 0xC000000000000001) != 0)
  {
    v26 = MEMORY[0x1AC56F710](0, v22);
    v24 = v37;
    v25 = v29;
    goto LABEL_8;
  }

  v24 = v37;
  v25 = v29;
  if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v26 = *(v22 + 32);

LABEL_8:

    v27 = v30;
LABEL_9:
    (*(v14 + 8))(v23, v12);
    (*(v25 + 8))(v32, v24);
    v27[4] = v26;
    return v27;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A8750D30(unint64_t *a1, void (*a2)(uint64_t))
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

void (*RemoteIntentFilePersistedNodeStore.firstNode.modify(uint64_t **a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + 32);
  v6 = OBJC_IVAR____TtC17IMSharedUtilitiesP33_6AB6E0F32B41741B3ED4EB5BEFB3C68918PersistedListModel___observationRegistrar;
  v3[2] = v5;
  v3[3] = v6;
  v3[1] = v5;
  swift_getKeyPath();
  v4[4] = sub_1A8750D30(&qword_1EB304880, type metadata accessor for PersistedListModel);
  sub_1A88C7618();

  swift_getKeyPath();
  sub_1A8750D30(&qword_1EB304840, type metadata accessor for PersistedListModel);
  sub_1A8750D30(&qword_1EB304848, type metadata accessor for RemoteIntentFileListNode);
  v7 = sub_1A88C80C8();

  *v4 = v7;
  return sub_1A8750F30;
}

uint64_t sub_1A8750F70()
{
  swift_getKeyPath();
  sub_1A8750D30(&qword_1EB304880, type metadata accessor for PersistedListModel);
  sub_1A88C7618();

  swift_getKeyPath();
  sub_1A8750D30(&qword_1EB304840, type metadata accessor for PersistedListModel);
  sub_1A8750D30(&qword_1EB304848, type metadata accessor for RemoteIntentFileListNode);
  v0 = sub_1A88C80C8();

  return v0;
}

uint64_t sub_1A87510A0@<X0>(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  sub_1A8750D30(&qword_1EB304880, type metadata accessor for PersistedListModel);
  sub_1A88C7618();

  swift_getKeyPath();
  sub_1A8750D30(&qword_1EB304840, type metadata accessor for PersistedListModel);
  sub_1A8750D30(&qword_1EB304848, type metadata accessor for RemoteIntentFileListNode);
  v2 = sub_1A88C80C8();

  *a1 = v2;
  return result;
}

uint64_t sub_1A87511DC()
{
  swift_getKeyPath();
  sub_1A8750D30(&qword_1EB304880, type metadata accessor for PersistedListModel);
  sub_1A88C7608();
}

uint64_t sub_1A87512C4()
{
  swift_getKeyPath();
  sub_1A8750D30(&qword_1EB304880, type metadata accessor for PersistedListModel);
  sub_1A88C7608();
}

void (*RemoteIntentFilePersistedNodeStore.lastNode.modify(uint64_t **a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + 32);
  v6 = OBJC_IVAR____TtC17IMSharedUtilitiesP33_6AB6E0F32B41741B3ED4EB5BEFB3C68918PersistedListModel___observationRegistrar;
  v3[2] = v5;
  v3[3] = v6;
  v3[1] = v5;
  swift_getKeyPath();
  v4[4] = sub_1A8750D30(&qword_1EB304880, type metadata accessor for PersistedListModel);
  sub_1A88C7618();

  swift_getKeyPath();
  sub_1A8750D30(&qword_1EB304840, type metadata accessor for PersistedListModel);
  sub_1A8750D30(&qword_1EB304848, type metadata accessor for RemoteIntentFileListNode);
  v7 = sub_1A88C80C8();

  *v4 = v7;
  return sub_1A875151C;
}

uint64_t RemoteIntentFilePersistedNodeStore.count.getter()
{
  v0 = sub_1A870CCE0(&qword_1EB304888);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10[-v2];
  v4 = sub_1A870CCE0(&qword_1EB304890);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10[-v5];
  v7 = sub_1A870CCE0(&qword_1EB304898);
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  type metadata accessor for RemoteIntentFileListNode(0);
  sub_1A8750D30(&qword_1EB304848, type metadata accessor for RemoteIntentFileListNode);
  sub_1A88C8078();
  v8 = sub_1A88C7FD8();
  (*(v1 + 8))(v3, v0);
  return v8;
}

uint64_t sub_1A8751890(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = *a1;

  return RemoteIntentFilePersistedNodeStore.subscript.setter(v5, v3, v4);
}

uint64_t RemoteIntentFilePersistedNodeStore.subscript.setter(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1)
  {
    v6 = _s17IMSharedUtilities34RemoteIntentFilePersistedNodeStoreCyAA0cde4ListG0CSgSScig_0(a2, a3);

    if (v6)
    {
      v14 = a1;
      swift_getKeyPath();
      sub_1A8750D30(&qword_1EB3048A8, type metadata accessor for RemoteIntentFileListNode);
      sub_1A88C7618();

      swift_getKeyPath();
      sub_1A8750D30(&qword_1EB304848, type metadata accessor for RemoteIntentFileListNode);
      sub_1A8756D7C(&qword_1EB3048B0, &qword_1EB3048C0);
      sub_1A88C80D8();

      _s17IMSharedUtilities34RemoteIntentFilePersistedNodeStoreC6update_4withyAA0cde4ListG0C_Shy10Foundation3URLVGtF_0(v6);
    }

    type metadata accessor for RemoteIntentFileListNode(0);
    sub_1A8750D30(&qword_1EB304848, type metadata accessor for RemoteIntentFileListNode);
    sub_1A88C8018();
    goto LABEL_12;
  }

  if (qword_1EB302148 != -1)
  {
    swift_once();
  }

  v8 = sub_1A88C7E58();
  sub_1A85EF0E4(v8, qword_1EB304818);

  v9 = sub_1A88C7E38();
  v10 = sub_1A88C89D8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v14 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_1A85F0394(a2, a3, &v14);
    _os_log_impl(&dword_1A85E5000, v9, v10, "subscript: Deleting model for key: %s", v11, 0xCu);
    sub_1A85F1084(v12);
    MEMORY[0x1AC571F20](v12, -1, -1);
    MEMORY[0x1AC571F20](v11, -1, -1);
  }

  v13 = _s17IMSharedUtilities34RemoteIntentFilePersistedNodeStoreCyAA0cde4ListG0CSgSScig_0(a2, a3);

  if (v13)
  {
    type metadata accessor for RemoteIntentFileListNode(0);
    sub_1A8750D30(&qword_1EB304848, type metadata accessor for RemoteIntentFileListNode);
    sub_1A88C8008();
LABEL_12:
  }

  return result;
}

unint64_t _s17IMSharedUtilities34RemoteIntentFilePersistedNodeStoreCyAA0cde4ListG0CSgSScig_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A870CCE0(&qword_1EB304888);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16[-v6];
  v8 = sub_1A870CCE0(&qword_1EB304890);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v16[-v9];
  v17 = a1;
  v18 = a2;
  v19 = type metadata accessor for RemoteIntentFileListNode(0);
  sub_1A88C75F8();
  v11 = sub_1A870CCE0(&qword_1EB304898);
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  sub_1A8750D30(&qword_1EB304848, type metadata accessor for RemoteIntentFileListNode);
  sub_1A88C8078();
  sub_1A88C8068();
  result = sub_1A88C7FF8();
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_9:
    (*(v5 + 8))(v7, v4);

    return 0;
  }

  v14 = result;
  v15 = sub_1A88C8D38();
  result = v14;
  if (!v15)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x1AC56F710](0);
  }

  else
  {
    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v13 = *(result + 32);
  }

  (*(v5 + 8))(v7, v4);
  return v13;
}

Swift::Void __swiftcall RemoteIntentFilePersistedNodeStore.removeValue(forKey:)(Swift::String forKey)
{
  if (_s17IMSharedUtilities34RemoteIntentFilePersistedNodeStoreCyAA0cde4ListG0CSgSScig_0(forKey._countAndFlagsBits, forKey._object))
  {
    type metadata accessor for RemoteIntentFileListNode(0);
    sub_1A8750D30(&qword_1EB304848, type metadata accessor for RemoteIntentFileListNode);
    sub_1A88C8008();
  }
}

uint64_t RemoteIntentFileListNode.value.getter()
{
  swift_getKeyPath();
  sub_1A8750D30(&qword_1EB3048A8, type metadata accessor for RemoteIntentFileListNode);
  sub_1A88C7618();

  swift_getKeyPath();
  sub_1A8750D30(&qword_1EB304848, type metadata accessor for RemoteIntentFileListNode);
  sub_1A8756D7C(&qword_1EB3048B0, &qword_1EB3048C0);
  sub_1A88C80D8();

  return v0;
}

uint64_t (*RemoteIntentFilePersistedNodeStore.subscript.modify(unint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  *a1 = _s17IMSharedUtilities34RemoteIntentFilePersistedNodeStoreCyAA0cde4ListG0CSgSScig_0(a2, a3);
  return sub_1A8752340;
}

uint64_t sub_1A8752340(uint64_t *a1, char a2)
{
  v2 = a1[2];
  v3 = *a1;
  v4 = a1[1];
  if (a2)
  {

    RemoteIntentFilePersistedNodeStore.subscript.setter(v3, v4, v2);
  }

  else
  {

    return RemoteIntentFilePersistedNodeStore.subscript.setter(v3, v4, v2);
  }
}

uint64_t sub_1A87523CC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v17 = a1;
  v18 = a2;
  v4 = sub_1A870CCE0(&qword_1EB304950);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - v6;
  v8 = sub_1A870CCE0(&qword_1EB304958);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - v10;
  sub_1A85FB520(&qword_1EB304960, &qword_1EB304958);
  sub_1A88C7148();
  swift_getKeyPath();
  sub_1A88C7128();

  (*(v9 + 8))(v11, v8);
  v12 = sub_1A870CCE0(&qword_1EB304968);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v17 - v14;
  v19 = v17;
  v20 = v18;
  sub_1A88C7138();
  a3[3] = sub_1A870CCE0(&qword_1EB304970);
  a3[4] = sub_1A8756E0C();
  sub_1A871E00C(a3);
  sub_1A85FB520(&qword_1EB304998, &qword_1EB304950);
  sub_1A85FB520(&qword_1EB3049A0, &qword_1EB304968);
  sub_1A88C7118();
  (*(v13 + 8))(v15, v12);
  return (*(v5 + 8))(v7, v4);
}

uint64_t RemoteIntentFileListNode.key.getter()
{
  swift_getKeyPath();
  sub_1A8750D30(&qword_1EB3048A8, type metadata accessor for RemoteIntentFileListNode);
  sub_1A88C7618();

  swift_getKeyPath();
  sub_1A8750D30(&qword_1EB304848, type metadata accessor for RemoteIntentFileListNode);
  sub_1A88C80D8();

  return v0;
}

uint64_t sub_1A8752810@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1A8750D30(&qword_1EB3048A8, type metadata accessor for RemoteIntentFileListNode);
  sub_1A88C7618();

  swift_getKeyPath();
  sub_1A8750D30(&qword_1EB304848, type metadata accessor for RemoteIntentFileListNode);
  sub_1A88C80D8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1A875291C()
{
  swift_getKeyPath();
  sub_1A8750D30(&qword_1EB3048A8, type metadata accessor for RemoteIntentFileListNode);
  sub_1A88C7608();
}

uint64_t RemoteIntentFileListNode.key.setter()
{
  swift_getKeyPath();
  sub_1A8750D30(&qword_1EB3048A8, type metadata accessor for RemoteIntentFileListNode);
  sub_1A88C7608();
}

uint64_t RemoteIntentFileListNode.value.setter()
{
  swift_getKeyPath();
  sub_1A8750D30(&qword_1EB3048A8, type metadata accessor for RemoteIntentFileListNode);
  sub_1A88C7608();
}

uint64_t RemoteIntentFilePersistedNodeStore.deinit()
{

  return v0;
}

uint64_t RemoteIntentFilePersistedNodeStore.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t (*sub_1A8752C48(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = RemoteIntentFilePersistedNodeStore.firstNode.modify(v2);
  return sub_1A870FAF0;
}

uint64_t sub_1A8752CC4()
{
  swift_getKeyPath();
  sub_1A8750D30(&qword_1EB304880, type metadata accessor for PersistedListModel);
  sub_1A88C7618();

  swift_getKeyPath();
  sub_1A8750D30(&qword_1EB304840, type metadata accessor for PersistedListModel);
  sub_1A8750D30(&qword_1EB304848, type metadata accessor for RemoteIntentFileListNode);
  v0 = sub_1A88C80C8();

  return v0;
}

uint64_t sub_1A8752E18()
{
  swift_getKeyPath();
  sub_1A8750D30(&qword_1EB304880, type metadata accessor for PersistedListModel);
  sub_1A88C7608();
}

uint64_t (*sub_1A8752EE4(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = RemoteIntentFilePersistedNodeStore.lastNode.modify(v2);
  return sub_1A870FAF0;
}

uint64_t (*sub_1A8752F90(unint64_t *a1, uint64_t *a2))(uint64_t *a1, char a2)
{
  v4 = *a2;
  v5 = a2[1];
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v5;
  *a1 = _s17IMSharedUtilities34RemoteIntentFilePersistedNodeStoreCyAA0cde4ListG0CSgSScig_0(v4, v5);
  return sub_1A8752FE0;
}

uint64_t sub_1A8752FE0(uint64_t *a1, char a2)
{
  v3 = a1[2];
  v2 = a1[3];
  v4 = *a1;
  if (a2)
  {

    RemoteIntentFilePersistedNodeStore.subscript.setter(v4, v3, v2);
  }

  else
  {

    return RemoteIntentFilePersistedNodeStore.subscript.setter(v4, v3, v2);
  }
}

unint64_t sub_1A8753074(uint64_t *a1)
{
  result = _s17IMSharedUtilities34RemoteIntentFilePersistedNodeStoreCyAA0cde4ListG0CSgSScig_0(*a1, a1[1]);
  if (result)
  {
    type metadata accessor for RemoteIntentFileListNode(0);
    sub_1A8750D30(&qword_1EB304848, type metadata accessor for RemoteIntentFileListNode);
    sub_1A88C8008();
  }

  return result;
}

uint64_t sub_1A8753154@<X0>(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  sub_1A8750D30(&qword_1EB304880, type metadata accessor for PersistedListModel);
  sub_1A88C7618();

  swift_getKeyPath();
  sub_1A8750D30(&qword_1EB304840, type metadata accessor for PersistedListModel);
  sub_1A8750D30(&qword_1EB304848, type metadata accessor for RemoteIntentFileListNode);
  v2 = sub_1A88C80C8();

  *a1 = v2;
  return result;
}

uint64_t sub_1A875328C()
{
  swift_getKeyPath();
  sub_1A8750D30(&qword_1EB304880, type metadata accessor for PersistedListModel);
  sub_1A88C7608();
}

uint64_t sub_1A875335C()
{
  swift_getKeyPath();
  sub_1A8750D30(&qword_1EB304880, type metadata accessor for PersistedListModel);
  sub_1A88C7618();

  swift_getKeyPath();
  sub_1A8750D30(&qword_1EB304840, type metadata accessor for PersistedListModel);
  sub_1A8750D30(&qword_1EB304848, type metadata accessor for RemoteIntentFileListNode);
  v0 = sub_1A88C80C8();

  return v0;
}

uint64_t sub_1A875348C()
{
  swift_getKeyPath();
  sub_1A8750D30(&qword_1EB304840, type metadata accessor for PersistedListModel);
  sub_1A8750D30(&qword_1EB304848, type metadata accessor for RemoteIntentFileListNode);
  sub_1A88C80F8();
}

uint64_t sub_1A8753584(__int128 *a1)
{
  type metadata accessor for PersistedListModel(0);
  *(v1 + 48) = sub_1A870CCE0(&qword_1EB304870);
  sub_1A8750D30(&qword_1EB304840, type metadata accessor for PersistedListModel);
  *(v1 + 56) = swift_getOpaqueTypeConformance2();
  sub_1A871E00C((v1 + 24));
  sub_1A88C8088();
  *(v1 + 16) = 257;
  sub_1A88C7628();
  *(v1 + 16) = 0;
  swift_beginAccess();
  sub_1A85F1084(v1 + 24);
  sub_1A860D56C(a1, v1 + 24);
  swift_endAccess();
  return v1;
}

uint64_t RemoteIntentFileListNode.__allocating_init(key:value:)()
{
  swift_allocObject();
  v0 = sub_1A8756344();

  return v0;
}

uint64_t RemoteIntentFileListNode.init(key:value:)()
{
  v0 = sub_1A8756344();

  return v0;
}

uint64_t sub_1A875376C()
{
  swift_getKeyPath();
  sub_1A8750D30(&qword_1EB3048A8, type metadata accessor for RemoteIntentFileListNode);
  sub_1A88C7608();
}

void (*RemoteIntentFileListNode.previous.modify(uint64_t **a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC17IMSharedUtilities24RemoteIntentFileListNode___observationRegistrar;
  v3[2] = v1;
  v3[3] = v5;
  v3[1] = v1;
  swift_getKeyPath();
  v4[4] = sub_1A8750D30(&qword_1EB3048A8, type metadata accessor for RemoteIntentFileListNode);
  sub_1A88C7618();

  swift_getKeyPath();
  sub_1A8750D30(&qword_1EB304848, type metadata accessor for RemoteIntentFileListNode);
  v6 = sub_1A88C80C8();

  *v4 = v6;
  return sub_1A87539B4;
}

uint64_t sub_1A87539F4()
{
  swift_getKeyPath();
  sub_1A8750D30(&qword_1EB3048A8, type metadata accessor for RemoteIntentFileListNode);
  sub_1A88C7618();

  swift_getKeyPath();
  sub_1A8750D30(&qword_1EB304848, type metadata accessor for RemoteIntentFileListNode);
  v0 = sub_1A88C80C8();

  return v0;
}

uint64_t sub_1A8753AF8@<X0>(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  sub_1A8750D30(&qword_1EB3048A8, type metadata accessor for RemoteIntentFileListNode);
  sub_1A88C7618();

  swift_getKeyPath();
  sub_1A8750D30(&qword_1EB304848, type metadata accessor for RemoteIntentFileListNode);
  v2 = sub_1A88C80C8();

  *a1 = v2;
  return result;
}

uint64_t sub_1A8753BF8()
{
  swift_getKeyPath();
  sub_1A8750D30(&qword_1EB3048A8, type metadata accessor for RemoteIntentFileListNode);
  sub_1A88C7608();
}

uint64_t sub_1A8753CE4()
{
  swift_getKeyPath();
  sub_1A8750D30(&qword_1EB3048A8, type metadata accessor for RemoteIntentFileListNode);
  sub_1A88C7608();
}

uint64_t sub_1A8753DAC()
{
  swift_getKeyPath();
  sub_1A8750D30(&qword_1EB304848, type metadata accessor for RemoteIntentFileListNode);
  sub_1A88C80F8();
}

void (*RemoteIntentFileListNode.next.modify(uint64_t **a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC17IMSharedUtilities24RemoteIntentFileListNode___observationRegistrar;
  v3[2] = v1;
  v3[3] = v5;
  v3[1] = v1;
  swift_getKeyPath();
  v4[4] = sub_1A8750D30(&qword_1EB3048A8, type metadata accessor for RemoteIntentFileListNode);
  sub_1A88C7618();

  swift_getKeyPath();
  sub_1A8750D30(&qword_1EB304848, type metadata accessor for RemoteIntentFileListNode);
  v6 = sub_1A88C80C8();

  *v4 = v6;
  return sub_1A8753F9C;
}

void sub_1A8753FD0(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*a1 + 8) = *(*a1 + 16);
  swift_getKeyPath();
  if (a2)
  {

    sub_1A88C7608();
  }

  else
  {
    sub_1A88C7608();
  }

  free(v3);
}

uint64_t sub_1A87540EC()
{
  swift_getKeyPath();
  sub_1A8750D30(&qword_1EB304848, type metadata accessor for RemoteIntentFileListNode);
  sub_1A88C80E8();
}

void (*RemoteIntentFileListNode.key.modify(void *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC17IMSharedUtilities24RemoteIntentFileListNode___observationRegistrar;
  v3[4] = v1;
  v3[5] = v5;
  v3[2] = v1;
  v6 = v3 + 2;
  swift_getKeyPath();
  v4[6] = sub_1A8750D30(&qword_1EB3048A8, type metadata accessor for RemoteIntentFileListNode);
  sub_1A88C7618();

  swift_getKeyPath();
  sub_1A8750D30(&qword_1EB304848, type metadata accessor for RemoteIntentFileListNode);
  sub_1A88C80D8();

  v7 = v4[3];
  *v4 = *v6;
  v4[1] = v7;
  return sub_1A8754308;
}

void sub_1A8754308(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*a1 + 16) = *(*a1 + 32);
  swift_getKeyPath();
  if (a2)
  {

    sub_1A88C7608();
  }

  else
  {
    sub_1A88C7608();
  }

  free(v3);
}

uint64_t sub_1A8754444@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1A8750D30(&qword_1EB3048A8, type metadata accessor for RemoteIntentFileListNode);
  sub_1A88C7618();

  swift_getKeyPath();
  sub_1A8750D30(&qword_1EB304848, type metadata accessor for RemoteIntentFileListNode);
  sub_1A8756D7C(&qword_1EB3048B0, &qword_1EB3048C0);
  sub_1A88C80D8();

  *a2 = v4;
  return result;
}

uint64_t sub_1A8754580()
{
  swift_getKeyPath();
  sub_1A8750D30(&qword_1EB3048A8, type metadata accessor for RemoteIntentFileListNode);
  sub_1A88C7608();
}

uint64_t sub_1A875464C()
{
  swift_getKeyPath();
  sub_1A8750D30(&qword_1EB304848, type metadata accessor for RemoteIntentFileListNode);
  sub_1A8756D7C(&qword_1EB304940, &qword_1EB304948);
  sub_1A88C80E8();
}

void (*RemoteIntentFileListNode.value.modify(void *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC17IMSharedUtilities24RemoteIntentFileListNode___observationRegistrar;
  v3[2] = v1;
  v3[3] = v5;
  v3[1] = v1;
  v6 = v3 + 1;
  swift_getKeyPath();
  v4[4] = sub_1A8750D30(&qword_1EB3048A8, type metadata accessor for RemoteIntentFileListNode);
  sub_1A88C7618();

  swift_getKeyPath();
  sub_1A8750D30(&qword_1EB304848, type metadata accessor for RemoteIntentFileListNode);
  sub_1A8756D7C(&qword_1EB3048B0, &qword_1EB3048C0);
  sub_1A88C80D8();

  *v4 = *v6;
  return sub_1A87548B8;
}

void sub_1A87548B8(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*a1 + 8) = *(*a1 + 16);
  swift_getKeyPath();
  if (a2)
  {

    sub_1A88C7608();
  }

  else
  {
    sub_1A88C7608();
  }

  free(v3);
}

uint64_t sub_1A8754A3C(uint64_t a1, uint64_t *a2)
{
  sub_1A86061B4(a1, v5);
  v3 = *a2;
  swift_beginAccess();
  sub_1A85F1084(v3 + 24);
  sub_1A860D56C(v5, v3 + 24);
  return swift_endAccess();
}

uint64_t RemoteIntentFileListNode.persistentBackingData.setter(__int128 *a1)
{
  swift_beginAccess();
  sub_1A85F1084(v1 + 24);
  sub_1A860D56C(a1, v1 + 24);
  return swift_endAccess();
}

void (*RemoteIntentFileListNode.persistentBackingData.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_1A86061B4(v1 + 24, v4);
  return sub_1A8754B88;
}

uint64_t RemoteIntentFileListNode.__allocating_init(backingData:)(__int128 *a1)
{
  v2 = swift_allocObject();
  RemoteIntentFileListNode.init(backingData:)(a1);
  return v2;
}

uint64_t RemoteIntentFileListNode.init(backingData:)(__int128 *a1)
{
  *(v1 + 48) = sub_1A870CCE0(&qword_1EB3048C8);
  sub_1A8750D30(&qword_1EB304848, type metadata accessor for RemoteIntentFileListNode);
  *(v1 + 56) = swift_getOpaqueTypeConformance2();
  sub_1A871E00C((v1 + 24));
  sub_1A88C8088();
  *(v1 + 16) = 257;
  sub_1A88C7628();
  *(v1 + 16) = 0;
  swift_beginAccess();
  sub_1A85F1084(v1 + 24);
  sub_1A860D56C(a1, v1 + 24);
  swift_endAccess();
  return v1;
}

uint64_t RemoteIntentFileListNode.deinit()
{
  sub_1A85F1084(v0 + 24);
  v1 = OBJC_IVAR____TtC17IMSharedUtilities24RemoteIntentFileListNode___observationRegistrar;
  v2 = sub_1A88C7638();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1A8754DA0(uint64_t *a1)
{
  sub_1A85F1084(v1 + 24);
  v3 = *a1;
  v4 = sub_1A88C7638();
  (*(*(v4 - 8) + 8))(v1 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t (*sub_1A8754E70(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = RemoteIntentFileListNode.previous.modify(v2);
  return sub_1A870FAF0;
}

uint64_t sub_1A8754EEC()
{
  swift_getKeyPath();
  sub_1A8750D30(&qword_1EB3048A8, type metadata accessor for RemoteIntentFileListNode);
  sub_1A88C7618();

  swift_getKeyPath();
  sub_1A8750D30(&qword_1EB304848, type metadata accessor for RemoteIntentFileListNode);
  v0 = sub_1A88C80C8();

  return v0;
}

uint64_t sub_1A8755008()
{
  swift_getKeyPath();
  sub_1A8750D30(&qword_1EB3048A8, type metadata accessor for RemoteIntentFileListNode);
  sub_1A88C7608();
}

uint64_t (*sub_1A87550D0(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = RemoteIntentFileListNode.next.modify(v2);
  return sub_1A870F684;
}

uint64_t sub_1A8755140@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  sub_1A8750D30(&qword_1EB3048A8, type metadata accessor for RemoteIntentFileListNode);
  sub_1A88C7618();

  swift_getKeyPath();
  sub_1A8750D30(&qword_1EB304848, type metadata accessor for RemoteIntentFileListNode);
  sub_1A88C80D8();

  *a1 = v1;
  a1[1] = v4;
  return result;
}

uint64_t sub_1A875524C@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  sub_1A8750D30(&qword_1EB3048A8, type metadata accessor for RemoteIntentFileListNode);
  sub_1A88C7618();

  swift_getKeyPath();
  sub_1A8750D30(&qword_1EB304848, type metadata accessor for RemoteIntentFileListNode);
  sub_1A8756D7C(&qword_1EB3048B0, &qword_1EB3048C0);
  sub_1A88C80D8();

  *a1 = v1;
  return result;
}

uint64_t sub_1A8755388()
{
  swift_getKeyPath();
  sub_1A8750D30(&qword_1EB3048A8, type metadata accessor for RemoteIntentFileListNode);
  sub_1A88C7608();
}

uint64_t (*sub_1A8755458(void *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = RemoteIntentFileListNode.value.modify(v2);
  return sub_1A870FAF0;
}

uint64_t sub_1A87554C8()
{
  swift_allocObject();
  v0 = sub_1A8756344();

  return v0;
}

uint64_t RemoteIntentFileListNode.hashValue.getter()
{
  sub_1A88C9528();
  sub_1A8750D30(&qword_1EB3048D0, type metadata accessor for RemoteIntentFileListNode);
  sub_1A88C8238();
  return sub_1A88C9578();
}

uint64_t sub_1A87555E0(__int128 *a1)
{
  v2 = swift_allocObject();
  RemoteIntentFileListNode.init(backingData:)(a1);
  return v2;
}

void (*sub_1A8755638(uint64_t *a1))(uint64_t *, char)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_1A86061B4(v1 + 24, v4);
  return sub_1A8757030;
}

void sub_1A87556C8(uint64_t *a1, char a2, void (*a3)(char *, uint64_t))
{
  v4 = *a1;
  v5 = *(*a1 + 128);
  if (a2)
  {
    sub_1A86061B4(*a1, (v4 + 40));
    swift_beginAccess();
    sub_1A85F1084(v5 + 24);
    a3(v4 + 40, v5 + 24);
    swift_endAccess();
    sub_1A85F1084(v4);
  }

  else
  {
    swift_beginAccess();
    sub_1A85F1084(v5 + 24);
    a3(v4, v5 + 24);
    swift_endAccess();
  }

  free(v4);
}

uint64_t sub_1A8755798()
{
  sub_1A88C9528();
  sub_1A88C8238();
  return sub_1A88C9578();
}

uint64_t sub_1A8755870()
{
  sub_1A88C9528();
  sub_1A88C8238();
  return sub_1A88C9578();
}

uint64_t sub_1A8755944(__int128 *a1)
{
  type metadata accessor for PersistedListModel(0);
  swift_allocObject();
  return sub_1A8753584(a1);
}

uint64_t sub_1A8755984(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  swift_beginAccess();
  sub_1A85F1084(v4 + 24);
  a4(a1, v4 + 24);
  return swift_endAccess();
}

void (*sub_1A87559EC(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_1A86061B4(v1 + 24, v4);
  return sub_1A8754B88;
}

uint64_t sub_1A8755A80()
{
  sub_1A88C9528();
  type metadata accessor for PersistedListModel(0);
  sub_1A8750D30(&qword_1EB304840, type metadata accessor for PersistedListModel);
  sub_1A88C80B8();
  return sub_1A88C9578();
}

uint64_t sub_1A8755B64()
{
  sub_1A88C9528();
  swift_getWitnessTable();
  sub_1A88C80B8();
  return sub_1A88C9578();
}

uint64_t sub_1A8755BCC()
{
  type metadata accessor for PersistedListModel(0);
  sub_1A8750D30(&qword_1EB304840, type metadata accessor for PersistedListModel);
  return sub_1A88C80A8();
}

uint64_t sub_1A8755C48(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDD9288](v4, v5, a3, WitnessTable);
}

uint64_t sub_1A8755CB4(uint64_t a1)
{
  v2 = sub_1A870CCE0(&qword_1EB306540);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s17IMSharedUtilities24RemoteIntentFileListNodeC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1A8750D30(&qword_1EB3048A8, type metadata accessor for RemoteIntentFileListNode);
  sub_1A88C7618();

  swift_getKeyPath();
  sub_1A8750D30(&qword_1EB304848, type metadata accessor for RemoteIntentFileListNode);
  sub_1A88C80D8();

  swift_getKeyPath();
  sub_1A88C7618();

  swift_getKeyPath();
  sub_1A88C80D8();

  if (a1 == a2)
  {

LABEL_4:
    swift_getKeyPath();
    sub_1A88C7618();

    swift_getKeyPath();
    sub_1A8756D7C(&qword_1EB3048B0, &qword_1EB3048C0);
    sub_1A88C80D8();

    swift_getKeyPath();
    sub_1A88C7618();

    swift_getKeyPath();
    sub_1A88C80D8();

    v5 = sub_1A8887258(a1, a2);

    return v5 & 1;
  }

  v4 = sub_1A88C9398();

  v5 = 0;
  if (v4)
  {
    goto LABEL_4;
  }

  return v5 & 1;
}

uint64_t _s17IMSharedUtilities34RemoteIntentFilePersistedNodeStoreC6update_4withyAA0cde4ListG0C_Shy10Foundation3URLVGtF_0(uint64_t a1)
{
  swift_getKeyPath();
  sub_1A8750D30(&qword_1EB3048A8, type metadata accessor for RemoteIntentFileListNode);
  sub_1A88C7618();

  swift_getKeyPath();
  sub_1A8750D30(&qword_1EB304848, type metadata accessor for RemoteIntentFileListNode);
  sub_1A8756D7C(&qword_1EB3048B0, &qword_1EB3048C0);
  sub_1A88C80D8();

  sub_1A88BADE4(v1, a1);
  swift_getKeyPath();
  sub_1A88C7608();
}

uint64_t sub_1A8756208()
{
  sub_1A870CCE0(&qword_1EB304938);
  sub_1A88C8158();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1A88E2770;
  swift_getKeyPath();
  sub_1A88C8148();
  swift_getKeyPath();
  sub_1A88C8148();
  return v0;
}

uint64_t sub_1A8756344()
{
  v1 = v0;
  *(v0 + 48) = sub_1A870CCE0(&qword_1EB3048C8);
  sub_1A8750D30(&qword_1EB304848, type metadata accessor for RemoteIntentFileListNode);
  *(v0 + 56) = swift_getOpaqueTypeConformance2();
  sub_1A871E00C((v0 + 24));
  sub_1A88C8088();
  *(v0 + 16) = 257;
  sub_1A88C7628();
  sub_1A870C278((v1 + 24), *(v1 + 48));
  swift_getKeyPath();
  sub_1A88C7FC8();

  sub_1A870C278((v1 + 24), *(v1 + 48));
  swift_getKeyPath();
  sub_1A870CCE0(&qword_1EB3048B8);
  sub_1A8756D7C(&qword_1EB304940, &qword_1EB304948);
  sub_1A88C7FC8();

  return v0;
}

uint64_t _s17IMSharedUtilities24RemoteIntentFileListNodeC14schemaMetadataSay9SwiftData6SchemaC08PropertyI0VGvgZ_0()
{
  sub_1A870CCE0(&qword_1EB304938);
  sub_1A88C8158();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1A88E6D90;
  swift_getKeyPath();
  sub_1A88C8148();
  swift_getKeyPath();
  sub_1A88C8148();
  swift_getKeyPath();
  sub_1A88C8148();
  swift_getKeyPath();
  sub_1A88C8148();
  return v0;
}

unint64_t sub_1A87567B4()
{
  result = qword_1EB3048E0;
  if (!qword_1EB3048E0)
  {
    sub_1A870CD28(&qword_1EB3048B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3048E0);
  }

  return result;
}

uint64_t sub_1A8756818(uint64_t a1)
{
  result = sub_1A8750D30(&qword_1EB3048E8, type metadata accessor for RemoteIntentFileListNode);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A8756A44()
{
  result = sub_1A88C7638();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A8756AF8()
{
  result = sub_1A88C7638();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A8756D7C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1A870CD28(&qword_1EB3048B8);
    sub_1A87173B4(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A8756E0C()
{
  result = qword_1EB304978;
  if (!qword_1EB304978)
  {
    sub_1A870CD28(&qword_1EB304970);
    sub_1A8756E8C();
    sub_1A8756F24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304978);
  }

  return result;
}

unint64_t sub_1A8756E8C()
{
  result = qword_1EB304980;
  if (!qword_1EB304980)
  {
    sub_1A870CD28(&qword_1EB304950);
    sub_1A85FB520(&qword_1EB304988, &qword_1EB304958);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304980);
  }

  return result;
}

unint64_t sub_1A8756F24()
{
  result = qword_1EB304990;
  if (!qword_1EB304990)
  {
    sub_1A870CD28(&qword_1EB304968);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304990);
  }

  return result;
}

uint64_t static NSXPCInterface.prewarmMessagesInterfaces()()
{
  if (qword_1ED8C94B0 != -1)
  {
    result = swift_once();
  }

  if (qword_1ED8C94D0 != -1)
  {

    return swift_once();
  }

  return result;
}

id sub_1A875711C(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + *a3 + 8))
  {

    v3 = sub_1A88C82A8();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id IMActionCalendar.init(dictionary:)()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1A88C8188();

  v2 = [v0 initWithDictionary_];

  return v2;
}

id IMActionCalendar.init(dictionary:)(uint64_t a1)
{
  v2 = v1;
  if (!*(a1 + 16))
  {
    goto LABEL_16;
  }

  v4 = sub_1A85F5F40(0x6D69547472617473, 0xE900000000000065);
  if ((v5 & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_1A85F1028(*(a1 + 56) + 32 * v4, v21);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_16;
  }

  if (*(a1 + 16))
  {
    v6 = sub_1A85F5F40(0x656D6954646E65, 0xE700000000000000);
    if (v7)
    {
      sub_1A85F1028(*(a1 + 56) + 32 * v6, v21);
      if (swift_dynamicCast())
      {
        if (!*(a1 + 16) || (v8 = sub_1A85F5F40(0x656C746974, 0xE500000000000000), (v9 & 1) == 0))
        {

          goto LABEL_16;
        }

        sub_1A85F1028(*(a1 + 56) + 32 * v8, v21);
        if (swift_dynamicCast())
        {
          v10 = sub_1A88C82A8();

          v11 = sub_1A88C82A8();

          v12 = sub_1A88C82A8();

          if (*(a1 + 16) && (v13 = sub_1A85F5F40(0x72637365446C6163, 0xEE006E6F69747069), (v14 & 1) != 0) && (sub_1A85F1028(*(a1 + 56) + 32 * v13, v21), (swift_dynamicCast() & 1) != 0))
          {
            v15 = sub_1A88C82A8();
          }

          else
          {
            v15 = 0;
          }

          if (*(a1 + 16) && (v17 = sub_1A85F5F40(0x6B6361626C6C6166, 0xEB000000006C7255), (v18 & 1) != 0))
          {
            sub_1A85F1028(*(a1 + 56) + 32 * v17, v21);

            if (swift_dynamicCast())
            {
              v19 = sub_1A88C82A8();

LABEL_26:
              v20 = [v2 initWithStartTime:v10 endTime:v11 title:v12 calDescription:v15 fallbackUrl:v19];

              return v20;
            }
          }

          else
          {
          }

          v19 = 0;
          goto LABEL_26;
        }
      }
    }
  }

LABEL_16:

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_1A87576D8()
{
  v1 = v0;
  sub_1A870CCE0(&qword_1EB303B58);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A88E4F80;
  *(inited + 32) = 0x6D69547472617473;
  *(inited + 40) = 0xE900000000000065;
  v3 = [v1 startTime];
  v4 = sub_1A88C82E8();
  v6 = v5;

  v7 = MEMORY[0x1E69E6158];
  *(inited + 48) = v4;
  *(inited + 56) = v6;
  *(inited + 72) = v7;
  *(inited + 80) = 0x656D6954646E65;
  *(inited + 88) = 0xE700000000000000;
  v8 = [v1 endTime];
  v9 = sub_1A88C82E8();
  v11 = v10;

  *(inited + 96) = v9;
  *(inited + 104) = v11;
  *(inited + 120) = v7;
  *(inited + 128) = 0x656C746974;
  *(inited + 136) = 0xE500000000000000;
  v12 = [v1 title];
  v13 = sub_1A88C82E8();
  v15 = v14;

  *(inited + 144) = v13;
  *(inited + 152) = v15;
  *(inited + 168) = v7;
  strcpy((inited + 176), "calDescription");
  *(inited + 191) = -18;
  v16 = [v1 calDescription];
  if (v16)
  {
    v17 = v16;
    v18 = sub_1A88C82E8();
    v20 = v19;

    v21 = MEMORY[0x1E69E6158];
  }

  else
  {
    v18 = 0;
    v20 = 0;
    v21 = 0;
    *(inited + 208) = 0;
  }

  *(inited + 192) = v18;
  *(inited + 200) = v20;
  *(inited + 216) = v21;
  *(inited + 224) = 0x6B6361626C6C6166;
  *(inited + 232) = 0xEB000000006C7255;
  v22 = [v1 fallbackUrl];
  if (v22)
  {
    v23 = v22;
    v24 = sub_1A88C82E8();
    v26 = v25;

    v27 = MEMORY[0x1E69E6158];
  }

  else
  {
    v24 = 0;
    v26 = 0;
    v27 = 0;
    *(inited + 256) = 0;
  }

  *(inited + 240) = v24;
  *(inited + 248) = v26;
  *(inited + 264) = v27;
  v28 = sub_1A8738CF0(inited);
  swift_setDeallocating();
  sub_1A870CCE0(&qword_1EB304A50);
  swift_arrayDestroy();
  v29 = sub_1A8895CC8(v28);

  return v29;
}

id IMActionCalendar.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for IMActionCalendar()
{
  result = qword_1EB304A40;
  if (!qword_1EB304A40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB304A40);
  }

  return result;
}

uint64_t sub_1A8757B60(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_1A85E998C(0, v1, 0);
    v2 = v9;
    v4 = a1 + 32;
    do
    {

      sub_1A870CCE0(&qword_1EB303320);
      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1A85E998C((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_1A85E99B0(&v8, (v2 + 32 * v6 + 32));
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1A8757C74(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_1A85E998C(0, v1, 0);
    v2 = v9;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1A85E998C((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_1A85E99B0(&v8, (v2 + 32 * v6 + 32));
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  sub_1A85E976C(a1);
  v9 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  v10 = sub_1A88C85E8();

  v11 = [v9 initWithArray_];

  sub_1A88C88E8();
  v12 = sub_1A88C88C8();

  [v5 setClasses:v12 forSelector:a2 argumentIndex:a3 ofReply:a4 & 1];
}

unint64_t type metadata accessor for IMMessagesWithoutChatsContext()
{
  result = qword_1EB304A70;
  if (!qword_1EB304A70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB304A70);
  }

  return result;
}

void sub_1A8757FB8(void *a1)
{
  v2 = v1;
  v4 = [a1 totalMessagesCount];
  v5 = MEMORY[0x1E69E76D8];
  v18 = MEMORY[0x1E69E76D8];
  *&v17 = v4;
  sub_1A85E99B0(&v17, v16);
  v6 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1A87AC700(v16, 0xD000000000000014, 0x80000001A89180D0, isUniquelyReferenced_nonNull_native);
  v8 = [a1 missingMessagesCount];
  v18 = v5;
  *&v17 = v8;
  sub_1A85E99B0(&v17, v16);
  v9 = swift_isUniquelyReferenced_nonNull_native();
  sub_1A87AC700(v16, 0xD000000000000016, 0x80000001A89180F0, v9);
  [a1 percentMissing];
  v18 = MEMORY[0x1E69E6448];
  LODWORD(v17) = v10;
  sub_1A85E99B0(&v17, v16);
  v11 = swift_isUniquelyReferenced_nonNull_native();
  sub_1A87AC700(v16, 0x5F746E6563726570, 0xEF676E697373696DLL, v11);
  v12 = [a1 micEnabled];
  v18 = MEMORY[0x1E69E6370];
  LOBYTE(v17) = v12;
  sub_1A85E99B0(&v17, v16);
  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_1A87AC700(v16, 0x62616E655F63696DLL, 0xEB0000000064656CLL, v13);
  v14 = sub_1A88C82A8();
  sub_1A878C804(v6);

  v15 = sub_1A88C8188();

  [v2 trackEvent:v14 withDictionary:v15];
}

uint64_t RemoteIntentBroadcastCache.__allocating_init(limit:)(uint64_t a1)
{
  result = swift_allocObject();
  v3 = MEMORY[0x1E69E7CC0];
  *(result + 16) = a1;
  *(result + 24) = v3;
  return result;
}

uint64_t sub_1A87582B4()
{
  v0 = sub_1A88C7E58();
  sub_1A85EFC04(v0, qword_1EB304A78);
  sub_1A85EF0E4(v0, qword_1EB304A78);
  return sub_1A88C7E48();
}

uint64_t RemoteIntentBroadcastCache.init(limit:)(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  *(v1 + 16) = a1;
  *(v1 + 24) = v2;
  return v1;
}

void sub_1A8758348(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 16);
  if (*(*(v1 + 24) + 16) >= v4)
  {
    if (qword_1EB302158 != -1)
    {
      swift_once();
    }

    v5 = sub_1A88C7E58();
    sub_1A85EF0E4(v5, qword_1EB304A78);

    v6 = sub_1A88C7E38();
    v7 = sub_1A88C89A8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134218240;
      *(v8 + 4) = v4;
      *(v8 + 12) = 2048;
      *(v8 + 14) = *(*(v2 + 24) + 16);

      _os_log_impl(&dword_1A85E5000, v6, v7, "RemoteIntentBroadcastPayloadCache hit limit: %ld currentCount:%ld. Pruning to the limit.", v8, 0x16u);
      MEMORY[0x1AC571F20](v8, -1, -1);
    }

    else
    {
    }
  }

  v9 = *(v2 + 24);
  v11 = v9 + 2;
  v10 = v9[2];
  if (v10 >= v4)
  {
    while (1)
    {
      swift_beginAccess();
      if (!v10)
      {
        break;
      }

      sub_1A86061B4((v9 + 4), &v27);
      sub_1A87587F4(&v27);
      v10 = *v11;
      if (!*v11)
      {
        goto LABEL_25;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v2 + 24) = v9;
      if (!isUniquelyReferenced_nonNull_native || v10 - 1 > v9[3] >> 1)
      {
        v9 = sub_1A8735320(isUniquelyReferenced_nonNull_native, v10, 1, v9);
        *(v2 + 24) = v9;
      }

      sub_1A85F1084((v9 + 4));
      v25 = v9[2];
      memmove(v9 + 4, v9 + 9, 40 * v25 - 40);
      v9[2] = v25 - 1;
      *(v2 + 24) = v9;
      swift_endAccess();
      v9 = *(v2 + 24);
      v11 = v9 + 2;
      v10 = v9[2];
      if (v10 < v4)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
  }

  else
  {
LABEL_8:
    sub_1A86061B4(a1, &v27);
    swift_beginAccess();
    v12 = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 24) = v9;
    if (v12)
    {
      goto LABEL_9;
    }
  }

  v9 = sub_1A8735320(0, v10 + 1, 1, v9);
  *(v2 + 24) = v9;
LABEL_9:
  v14 = v9[2];
  v13 = v9[3];
  if (v14 >= v13 >> 1)
  {
    v9 = sub_1A8735320((v13 > 1), v14 + 1, 1, v9);
  }

  v9[2] = v14 + 1;
  sub_1A860D56C(&v27, &v9[5 * v14 + 4]);
  *(v2 + 24) = v9;
  swift_endAccess();
  if (qword_1EB302158 != -1)
  {
    swift_once();
  }

  v15 = sub_1A88C7E58();
  sub_1A85EF0E4(v15, qword_1EB304A78);
  sub_1A86061B4(a1, &v27);
  swift_retain_n();
  v16 = sub_1A88C7E38();
  v17 = sub_1A88C89A8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v29[0] = v19;
    *v18 = 136315650;
    *(v18 + 4) = sub_1A85F0394(0x293A5F2868737570, 0xE800000000000000, v29);
    *(v18 + 12) = 2080;
    sub_1A870C278(&v27, v28);
    swift_getDynamicType();
    v20 = sub_1A88C96D8();
    v22 = v21;
    sub_1A85F1084(&v27);
    v23 = sub_1A85F0394(v20, v22, v29);

    *(v18 + 14) = v23;
    *(v18 + 22) = 2048;
    v24 = *(*(v2 + 24) + 16);

    *(v18 + 24) = v24;

    _os_log_impl(&dword_1A85E5000, v16, v17, "%s cached a new payload of type: %s. Current payload count: %ld", v18, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1AC571F20](v19, -1, -1);
    MEMORY[0x1AC571F20](v18, -1, -1);
  }

  else
  {

    sub_1A85F1084(&v27);
  }
}

uint64_t sub_1A87587F4(uint64_t a1)
{
  v2 = sub_1A870CCE0(&qword_1EB304A90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A875885C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v24 = v2;
  v5 = *(v2 + 24);
  v6 = *(v5 + 16);
  v26 = v5 + 32;
  v27 = v5;

  v8 = 0;
  v25 = MEMORY[0x1E69E7CC0];
  while (!v6)
  {
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
LABEL_9:
    v33[0] = v30;
    v33[1] = v31;
    v33[2] = v32;
    if (!v32)
    {

      return sub_1A8758BC0(v25);
    }

    v28 = v8;
    v11 = *&v33[0];
    sub_1A860D56C((v33 + 8), &v30);
    sub_1A870C278(&v30, *(&v31 + 1));
    swift_getDynamicType();
    (*(v32 + 40))();
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v13 = *(AssociatedConformanceWitness + 16);
    v14 = swift_checkMetadataState();
    if (v13(v14, AssociatedConformanceWitness) == a1 && v15 == a2)
    {

LABEL_17:
      swift_beginAccess();
      v18 = *(v24 + 24);
      result = swift_isUniquelyReferenced_nonNull_native();
      *(v24 + 24) = v18;
      if ((result & 1) == 0)
      {
        result = sub_1A879FE58(v18);
        v18 = result;
        *(v24 + 24) = result;
      }

      v19 = v18[2];
      if (v11 >= v19)
      {
        goto LABEL_29;
      }

      v20 = v19 - 1;
      v21 = &v18[5 * v11];
      sub_1A860D56C(v21 + 2, v29);
      memmove(v21 + 2, v21 + 72, 40 * (v20 - v11));
      v18[2] = v20;
      *(v24 + 24) = v18;
      swift_endAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_1A8735320(0, v25[2] + 1, 1, v25);
      }

      v8 = v28;
      v23 = v25[2];
      v22 = v25[3];
      if (v23 >= v22 >> 1)
      {
        v25 = sub_1A8735320((v22 > 1), v23 + 1, 1, v25);
      }

      sub_1A85F1084(&v30);
      v25[2] = v23 + 1;
      result = sub_1A860D56C(v29, &v25[5 * v23 + 4]);
    }

    else
    {
      v17 = sub_1A88C9398();

      if (v17)
      {
        goto LABEL_17;
      }

      result = sub_1A85F1084(&v30);
      v8 = v28;
    }
  }

  v9 = *(v27 + 16);
  if (v6 == v9)
  {
    v10 = *(v27 + 16);
  }

  else
  {
    v10 = v8;
  }

  v8 = v10 - 1;
  if (!__OFSUB__(v10, 1))
  {
    if (--v6 >= v9)
    {
      goto LABEL_28;
    }

    sub_1A86061B4(v26 + 40 * v6, v29 + 8);
    *&v30 = v8;
    sub_1A860D56C((v29 + 8), &v30 + 8);
    goto LABEL_9;
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1A8758BC0(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = 0;
  v4 = v2 >> 1;
  v5 = v2 - 1;
  v6 = 40 * v2 - 8;
  for (i = 4; ; i += 5)
  {
    if (v3 == v5)
    {
      goto LABEL_5;
    }

    v8 = v1[2];
    if (v3 >= v8)
    {
      break;
    }

    result = sub_1A86061B4(&v1[i], v10);
    if (v5 >= v8)
    {
      goto LABEL_14;
    }

    sub_1A86061B4(v1 + v6, v9);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_1A879FE58(v1);
    }

    sub_1A85F1084(&v1[i]);
    result = sub_1A860D56C(v9, &v1[i]);
    if (v5 >= v1[2])
    {
      goto LABEL_15;
    }

    sub_1A85F1084(v1 + v6);
    result = sub_1A860D56C(v10, v1 + v6);
LABEL_5:
    ++v3;
    --v5;
    v6 -= 40;
    if (v4 == v3)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t RemoteIntentBroadcastCache.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1A8758DA8()
{
  v0 = sub_1A88C7E58();
  sub_1A85EFC04(v0, qword_1EB304A98);
  sub_1A85EF0E4(v0, qword_1EB304A98);
  return sub_1A88C7E48();
}

uint64_t sub_1A8758E28(uint64_t a1)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A8758E48, 0, 0);
}

uint64_t sub_1A8758E48()
{
  v1 = v0[7];
  v2 = sub_1A870CCE0(&unk_1EB309090);
  v3 = *(v2 - 8);
  v4 = swift_task_alloc();
  sub_1A870CCE0(&unk_1EB3090B0);
  v5 = swift_task_alloc();
  v6 = OBJC_IVAR____TtC17IMSharedUtilities28RemoteIntentFileDownloadTask_result;
  swift_beginAccess();
  sub_1A8728D80(v1 + v6, v5, &unk_1EB3090B0);
  if ((*(v3 + 48))(v5, 1, v2) == 1)
  {
    sub_1A85EF638(v5, &unk_1EB3090B0);

    v7 = swift_task_alloc();
    v0[8] = v7;
    v8 = sub_1A88C72E8();
    *v7 = v0;
    v7[1] = sub_1A87591D0;
    v9 = v0[6];
    v10 = v0[7];

    return MEMORY[0x1EEE6DE38](v9, 0, 0, 7107189, 0xE300000000000000, sub_1A8761D40, v10, v8);
  }

  else
  {
    sub_1A8761C7C(v5, v4, &unk_1EB309090);

    v11 = swift_task_alloc();
    sub_1A8728D80(v4, v11, &unk_1EB309090);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v0[5] = *v11;
      sub_1A870CCE0(&unk_1EB3037B0);
      swift_willThrowTypedImpl();
      sub_1A85EF638(v4, &unk_1EB309090);
    }

    else
    {
      v13 = v0[6];
      sub_1A85EF638(v4, &unk_1EB309090);
      v14 = sub_1A88C72E8();
      (*(*(v14 - 8) + 32))(v13, v11, v14);
    }

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_1A87591D0()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A8759304, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1A875931C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A870CCE0(&qword_1EB303DB8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - v6;
  (*(v5 + 16))(&v14 - v6, a1, v4);
  v8 = OBJC_IVAR____TtC17IMSharedUtilities28RemoteIntentFileDownloadTask_continuations;
  v9 = *(a2 + OBJC_IVAR____TtC17IMSharedUtilities28RemoteIntentFileDownloadTask_continuations);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + v8) = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_1A873549C(0, v9[2] + 1, 1, v9);
    *(a2 + v8) = v9;
  }

  v12 = v9[2];
  v11 = v9[3];
  if (v12 >= v11 >> 1)
  {
    v9 = sub_1A873549C(v11 > 1, v12 + 1, 1, v9);
  }

  v9[2] = v12 + 1;
  result = (*(v5 + 32))(v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v12, v7, v4);
  *(a2 + v8) = v9;
  return result;
}

uint64_t sub_1A87594A4(uint64_t a1)
{
  v2 = v1;
  v54 = a1;
  v3 = sub_1A870CCE0(&unk_1EB309090);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v55 = v6;
  v56 = (&v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v47 - v7;
  v9 = sub_1A870CCE0(&unk_1EB3090B0);
  v10 = (*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = OBJC_IVAR____TtC17IMSharedUtilities28RemoteIntentFileDownloadTask_result;
  swift_beginAccess();
  sub_1A8728D80(v1 + v11, &v47 - v10, &unk_1EB3090B0);
  if ((*(v4 + 48))(&v47 - v10, 1, v3) == 1)
  {
    v12 = sub_1A85EF638(&v47 - v10, &unk_1EB3090B0);
    MEMORY[0x1EEE9AC00](v12);
    v13 = v54;
    sub_1A8728D80(v54, &v47 - v10, &unk_1EB309090);
    (*(v4 + 56))(&v47 - v10, 0, 1, v3);
    swift_beginAccess();
    sub_1A8761C0C(&v47 - v10, v2 + v11);
    swift_endAccess();
    v14 = v56;
    sub_1A8728D80(v13, v56, &unk_1EB309090);
  }

  else
  {
    sub_1A8761C7C(&v47 - v10, v8, &unk_1EB309090);
    v15 = v1 + OBJC_IVAR____TtC17IMSharedUtilities28RemoteIntentFileDownloadTask_remoteFile;
    v16 = (v15 + *(type metadata accessor for RemoteIntentMirrorFileRepresentation(0) + 24));
    v18 = *v16;
    v17 = v16[1];
    if (qword_1EB302160 != -1)
    {
      swift_once();
    }

    v19 = sub_1A88C7E58();
    sub_1A85EF0E4(v19, qword_1EB304A98);

    v20 = sub_1A88C7E38();
    v21 = sub_1A88C89C8();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = v3;
      v23 = swift_slowAlloc();
      v24 = v2;
      v25 = swift_slowAlloc();
      v57[0] = v25;
      *v23 = 136315138;
      v26 = sub_1A85F0394(v18, v17, v57);

      *(v23 + 4) = v26;
      _os_log_impl(&dword_1A85E5000, v20, v21, "Task for %s is already complete, but we attempted to complete it again with a new result. This is a programmer error.", v23, 0xCu);
      sub_1A85F1084(v25);
      v27 = v25;
      v2 = v24;
      MEMORY[0x1AC571F20](v27, -1, -1);
      v28 = v23;
      v3 = v22;
      MEMORY[0x1AC571F20](v28, -1, -1);
    }

    else
    {
    }

    v14 = v56;
    sub_1A8761C7C(v8, v56, &unk_1EB309090);
  }

  if (*(v2 + OBJC_IVAR____TtC17IMSharedUtilities28RemoteIntentFileDownloadTask_activeTask))
  {

    sub_1A870CCE0(&unk_1EB3090C0);
    sub_1A870CCE0(&unk_1EB3037B0);
    sub_1A88C8848();
  }

  v29 = OBJC_IVAR____TtC17IMSharedUtilities28RemoteIntentFileDownloadTask_continuations;
  v30 = *(v2 + OBJC_IVAR____TtC17IMSharedUtilities28RemoteIntentFileDownloadTask_continuations);
  v31 = *(v30 + 16);
  if (v31)
  {
    v48 = OBJC_IVAR____TtC17IMSharedUtilities28RemoteIntentFileDownloadTask_continuations;
    v49 = v2;
    v32 = sub_1A870CCE0(&qword_1EB303DB8);
    v33 = *(v32 - 8);
    v34 = *(v33 + 16);
    v35 = v30 + ((*(v33 + 80) + 32) & ~*(v33 + 80));
    v36 = *(v33 + 72);
    v53 = *(v33 + 64);
    v54 = v36;
    v52 = (v33 + 8);
    v47 = v30;

    v50 = v3;
    do
    {
      v56 = &v47;
      MEMORY[0x1EEE9AC00](v37);
      v39 = &v47 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
      v40 = v34(v39, v35, v32);
      MEMORY[0x1EEE9AC00](v40);
      v42 = (&v47 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
      sub_1A8728D80(v14, v42, &unk_1EB309090);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v57[0] = *v42;
        sub_1A88C86E8();
      }

      else
      {
        v43 = sub_1A88C72E8();
        v51 = &v47;
        MEMORY[0x1EEE9AC00](v43);
        (*(v45 + 32))(&v47 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0), v42);
        sub_1A88C86F8();
      }

      v37 = (*v52)(v39, v32);
      v35 += v54;
      --v31;
    }

    while (v31);

    v29 = v48;
    v2 = v49;
  }

  sub_1A85EF638(v14, &unk_1EB309090);
  *(v2 + v29) = MEMORY[0x1E69E7CC0];
}

uint64_t sub_1A8759B94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v5 = type metadata accessor for RemoteIntentMirrorFileRepresentation(0);
  v4[9] = v5;
  v6 = *(v5 - 8);
  v4[10] = v6;
  v4[11] = *(v6 + 64);
  v4[12] = swift_task_alloc();
  sub_1A870CCE0(&unk_1EB3090D0);
  v4[13] = swift_task_alloc();
  if (qword_1EB302380 != -1)
  {
    swift_once();
  }

  v7 = qword_1EB309050;
  v4[14] = qword_1EB309050;

  return MEMORY[0x1EEE6DFA0](sub_1A8759CD0, v7, 0);
}

uint64_t sub_1A8759CD0()
{
  v96 = v0;
  v1 = v0[8];
  v2 = OBJC_IVAR____TtC17IMSharedUtilities28RemoteIntentFileDownloadTask_activeTask;
  v0[15] = OBJC_IVAR____TtC17IMSharedUtilities28RemoteIntentFileDownloadTask_activeTask;
  if (*(v1 + v2))
  {
    v3 = (v1 + OBJC_IVAR____TtC17IMSharedUtilities28RemoteIntentFileDownloadTask_remoteFile + *(v0[9] + 24));
    v5 = *v3;
    v4 = v3[1];
    if (qword_1EB302160 != -1)
    {
      swift_once();
    }

    v6 = sub_1A88C7E58();
    sub_1A85EF0E4(v6, qword_1EB304A98);

    v7 = sub_1A88C7E38();
    v8 = sub_1A88C89C8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v95[0] = v10;
      *v9 = 136315138;
      v11 = sub_1A85F0394(v5, v4, v95);

      *(v9 + 4) = v11;
      _os_log_impl(&dword_1A85E5000, v7, v8, "download[%s]: Task is already in progress. It's a programmer error to attempt to start again.", v9, 0xCu);
      sub_1A85F1084(v10);
      MEMORY[0x1AC571F20](v10, -1, -1);
      MEMORY[0x1AC571F20](v9, -1, -1);
    }

    else
    {
    }

    sub_1A8760454();
    swift_allocError();
    *v23 = 0;
    *(v23 + 8) = 0;
    v24 = -4;
LABEL_16:
    *(v23 + 16) = v24;
    swift_willThrow();

    v34 = v0[1];

    return v34();
  }

  sub_1A870CCE0(&unk_1EB3090B0);
  v12 = swift_task_alloc();
  v13 = OBJC_IVAR____TtC17IMSharedUtilities28RemoteIntentFileDownloadTask_result;
  swift_beginAccess();
  sub_1A8728D80(v1 + v13, v12, &unk_1EB3090B0);
  v14 = sub_1A870CCE0(&unk_1EB309090);
  LODWORD(v13) = (*(*(v14 - 8) + 48))(v12, 1, v14);
  sub_1A85EF638(v12, &unk_1EB3090B0);

  if (v13 != 1)
  {
    v25 = (v0[8] + OBJC_IVAR____TtC17IMSharedUtilities28RemoteIntentFileDownloadTask_remoteFile + *(v0[9] + 24));
    v27 = *v25;
    v26 = v25[1];
    if (qword_1EB302160 != -1)
    {
      swift_once();
    }

    v28 = sub_1A88C7E58();
    sub_1A85EF0E4(v28, qword_1EB304A98);

    v29 = sub_1A88C7E38();
    v30 = sub_1A88C89C8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v95[0] = v32;
      *v31 = 136315138;
      v33 = sub_1A85F0394(v27, v26, v95);

      *(v31 + 4) = v33;
      _os_log_impl(&dword_1A85E5000, v29, v30, "download[%s]: Task is already complete. It's a programmer error to attempt to start a download for this task again.", v31, 0xCu);
      sub_1A85F1084(v32);
      MEMORY[0x1AC571F20](v32, -1, -1);
      MEMORY[0x1AC571F20](v31, -1, -1);
    }

    else
    {
    }

    sub_1A8760454();
    swift_allocError();
    *v23 = 0;
    *(v23 + 8) = 0;
    v24 = -5;
    goto LABEL_16;
  }

  v15 = v0[8];
  v16 = sub_1A870CCE0(&qword_1EB304AE8);
  v0[16] = v16;
  v94 = *(v16 - 1);
  v17 = *(v94 + 64);
  v0[17] = v17;
  v18 = swift_task_alloc();
  v0[18] = v18;
  v19 = v16[12];
  type metadata accessor for RemoteIntentFileDownloadTask();
  v20 = v15 + OBJC_IVAR____TtC17IMSharedUtilities28RemoteIntentFileDownloadTask_remoteFile;
  v21 = sub_1A875B198(v18, &v18[v19], v20);
  v89 = v20;
  v90 = v17;
  v36 = v0[9];
  v87 = v16;
  v37 = v16[20];
  v18[v16[16]] = v21 & 1;
  *&v18[v37] = v22;
  v38 = (v20 + *(v36 + 24));
  v39 = *v38;
  v0[19] = *v38;
  v40 = v38[1];
  v0[20] = v40;
  v92 = v18;
  if (qword_1EB302160 != -1)
  {
    swift_once();
  }

  v41 = sub_1A88C7E58();
  v0[21] = sub_1A85EF0E4(v41, qword_1EB304A98);
  v93 = swift_task_alloc();
  sub_1A8728D80(v18, v93, &qword_1EB304AE8);
  v91 = swift_task_alloc();
  sub_1A8728D80(v18, v91, &qword_1EB304AE8);

  v42 = sub_1A88C7E38();
  v43 = sub_1A88C89D8();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v95[0] = v84;
    *v44 = 136315650;
    *(v44 + 4) = sub_1A85F0394(v39, v40, v95);
    *(v44 + 12) = 2080;
    v45 = sub_1A88C72E8();
    v46 = *(v45 - 8);
    log = v42;
    v47 = swift_task_alloc();
    v81 = v43;
    v48 = swift_task_alloc();
    sub_1A8728D80(v93, v48, &qword_1EB304AE8);
    v49 = v87[12];

    v80 = *(v46 + 32);
    v80(v47, v48, v45);
    v50 = *(v46 + 8);
    v50(v48 + v49, v45);

    sub_1A8746020();
    v51 = sub_1A88C9348();
    v53 = v52;
    v50(v47, v45);
    sub_1A85EF638(v93, &qword_1EB304AE8);

    v54 = sub_1A85F0394(v51, v53, v95);

    *(v44 + 14) = v54;
    *(v44 + 22) = 2080;
    v55 = swift_task_alloc();
    v56 = swift_task_alloc();
    sub_1A8728D80(v91, v56, &qword_1EB304AE8);
    v57 = v87[12];

    v80(v55, v56 + v57, v45);
    v50(v56, v45);

    v58 = sub_1A88C9348();
    v60 = v59;
    v50(v55, v45);
    sub_1A85EF638(v91, &qword_1EB304AE8);

    v61 = sub_1A85F0394(v58, v60, v95);

    *(v44 + 24) = v61;
    _os_log_impl(&dword_1A85E5000, log, v81, "download[%s]: Starting download to temporary url: %s. Final url: %s", v44, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1AC571F20](v84, -1, -1);
    MEMORY[0x1AC571F20](v44, -1, -1);
  }

  else
  {

    sub_1A85EF638(v91, &qword_1EB304AE8);
    sub_1A85EF638(v93, &qword_1EB304AE8);
  }

  v62 = v0[13];
  v63 = v0[14];
  v65 = v0[11];
  v64 = v0[12];
  loga = v64;
  v66 = v0[10];
  buf = v0[6];
  v88 = v0[7];

  v85 = v62;
  sub_1A88C8778();
  v67 = sub_1A88C87A8();
  (*(*(v67 - 8) + 56))(v62, 0, 1, v67);
  sub_1A87601F0(v89, v64);
  v68 = swift_task_alloc();
  sub_1A8728D80(v92, v68, &qword_1EB304AE8);
  v69 = sub_1A85FC5B4(&qword_1EB303CB0, type metadata accessor for RemoteIntentFileDownloadActor);
  v70 = (*(v66 + 80) + 32) & ~*(v66 + 80);
  v71 = (v65 + v70 + *(v94 + 80)) & ~*(v94 + 80);
  v72 = swift_allocObject();
  *(v72 + 16) = v63;
  *(v72 + 24) = v69;
  sub_1A8760254(loga, v72 + v70);
  sub_1A8761C7C(v68, v72 + v71, &qword_1EB304AE8);
  v73 = (v72 + ((v90 + v71 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v73 = buf;
  v73[1] = v88;

  v74 = sub_1A873A850(0, 0, v85, &unk_1A88E7CA8, v72);
  v0[22] = v74;
  *(v1 + v2) = v74;

  v75 = sub_1A870CCE0(&unk_1EB3090C0);
  v0[23] = v75;
  v0[24] = *(*(v75 - 8) + 64);
  v0[25] = swift_task_alloc();
  v76 = swift_task_alloc();
  v0[26] = v76;
  v77 = swift_task_alloc();
  v0[27] = v77;
  v78 = sub_1A870CCE0(&unk_1EB3037B0);
  v0[28] = v78;
  *v77 = v0;
  v77[1] = sub_1A875A91C;
  v79 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v76, v74, v75, v78, v79);
}

uint64_t sub_1A875A91C()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  v3 = *(v2 + 112);
  if (v0)
  {
    v4 = sub_1A875B070;
  }

  else
  {
    v4 = sub_1A875AA48;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1A875AA48()
{
  v54 = v0;
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[23];
  v4 = v0[8];
  v5 = *(v1 + v3[12]);
  v6 = *(v1 + v3[16]);
  v7 = *(v1 + v3[20]);
  v8 = sub_1A88C72E8();
  v9 = *(v8 - 8);
  v52 = *(v9 + 32);
  v52(v2, v1, v8);
  *(v2 + v3[12]) = v5;
  *(v2 + v3[16]) = v6;
  *(v2 + v3[20]) = v7;

  if (*(v4 + OBJC_IVAR____TtC17IMSharedUtilities28RemoteIntentFileDownloadTask_isCancelled))
  {

    v10 = sub_1A88C7E38();
    v11 = sub_1A88C89D8();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[20];
    if (v12)
    {
      v14 = v0[19];
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v53[0] = v16;
      *v15 = 136315138;
      v17 = sub_1A85F0394(v14, v13, v53);

      *(v15 + 4) = v17;
      _os_log_impl(&dword_1A85E5000, v10, v11, "download[%s]: Finished downloading but the task was already marked as cancelled. This happens if the task was canceled close to when it finished downloading.", v15, 0xCu);
      sub_1A85F1084(v16);
      MEMORY[0x1AC571F20](v16, -1, -1);
      MEMORY[0x1AC571F20](v15, -1, -1);
    }

    else
    {
    }

    v35 = v0[25];
    v36 = v0[18];
    sub_1A8760454();
    swift_allocError();
    *v37 = 0;
    *(v37 + 8) = 0;
    *(v37 + 16) = -2;
    swift_willThrow();

    sub_1A85EF638(v35, &unk_1EB3090C0);
    sub_1A85EF638(v36, &qword_1EB304AE8);

    v38 = v0[1];

    return v38();
  }

  else
  {
    v51 = v8;
    v18 = v0[18];
    v19 = swift_task_alloc();
    sub_1A8728D80(v18, v19, &qword_1EB304AE8);

    v20 = sub_1A88C7E38();
    v21 = sub_1A88C89D8();

    if (os_log_type_enabled(v20, v21))
    {
      v49 = v21;
      v23 = v0[19];
      v22 = v0[20];
      v50 = v0[18];
      v24 = v0[16];
      v25 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v53[0] = v48;
      *v25 = 136315394;
      *(v25 + 4) = sub_1A85F0394(v23, v22, v53);
      *(v25 + 12) = 2080;
      v26 = swift_task_alloc();
      v27 = swift_task_alloc();
      sub_1A8728D80(v19, v27, &qword_1EB304AE8);
      v28 = *(v24 + 48);

      v52(v26, v27 + v28, v51);
      v29 = *(v9 + 8);
      v29(v27, v51);

      sub_1A8746020();
      v30 = sub_1A88C9348();
      v32 = v31;
      v29(v26, v51);
      sub_1A85EF638(v19, &qword_1EB304AE8);

      v33 = sub_1A85F0394(v30, v32, v53);

      *(v25 + 14) = v33;
      _os_log_impl(&dword_1A85E5000, v20, v49, "download[%s]: Finished downloading to path: %s", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1AC571F20](v48, -1, -1);
      MEMORY[0x1AC571F20](v25, -1, -1);

      v34 = v50;
    }

    else
    {
      v40 = v0[18];

      sub_1A85EF638(v19, &qword_1EB304AE8);
      v34 = v40;
    }

    sub_1A85EF638(v34, &qword_1EB304AE8);
    v41 = v0[25];
    v42 = v0[5];

    v43 = swift_task_alloc();
    sub_1A8761C7C(v41, v43, &unk_1EB3090C0);
    v44 = *(v43 + v3[12]);
    v45 = *(v43 + v3[16]);
    v46 = *(v43 + v3[20]);
    v52(v42, v43, v51);

    v47 = v0[1];

    return v47(v44, v45, v46);
  }
}

uint64_t sub_1A875B070()
{
  v1 = v0[15];
  v2 = v0[8];

  if (*(v2 + v1))
  {

    sub_1A88C8848();
  }

  v3 = v0[18];
  *(v0[8] + v0[15]) = 0;

  swift_willThrow();

  sub_1A85EF638(v3, &qword_1EB304AE8);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1A875B198(void *a1, void *a2, uint64_t a3)
{
  v139 = a2;
  v138 = a1;
  v145 = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for RemoteIntentMirrorFileRepresentation(0);
  v5 = a3 + *(v4 + 24);
  v6 = *v5;
  v142 = *(v5 + 8);
  v7 = sub_1A88C72E8();
  v141 = *(v7 - 8);
  v8 = v141[8];
  MEMORY[0x1EEE9AC00](v7);
  v9 = [objc_opt_self() sharedUserVault];
  v10 = sub_1A88C7238();
  v11 = [v9 convertedPathForRemoteFile_];

  if (v11)
  {
    sub_1A88C7288();

    LODWORD(v13) = *(a3 + *(v4 + 28));
    if (v13 == 1)
    {
      v14 = [objc_opt_self() defaultManager];
      v15 = sub_1A88C7238();
      v143 = 0;
      v16 = [v14 createDirectoryAtURL:v15 withIntermediateDirectories:1 attributes:0 error:&v143];

      if (v16)
      {
        v134 = v6;
        v137 = v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
        v17 = qword_1EB302160;
        v18 = v143;
        if (v17 != -1)
        {
          swift_once();
        }

        v19 = sub_1A88C7E58();
        v20 = sub_1A85EF0E4(v19, qword_1EB304A98);
        v136 = v127;
        MEMORY[0x1EEE9AC00](v20);
        v21 = v141;
        v129 = v141[2];
        v130 = v141 + 2;
        v129(v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v137, v7);
        v22 = v142;

        v131 = v20;
        v23 = sub_1A88C7E38();
        v24 = sub_1A88C89D8();

        v25 = os_log_type_enabled(v23, v24);
        v133 = v7;
        LODWORD(v135) = 1;
        if (v25)
        {
          v26 = swift_slowAlloc();
          v128 = swift_slowAlloc();
          v143 = v128;
          *v26 = 136315394;
          *(v26 + 4) = sub_1A85F0394(v134, v22, &v143);
          *(v26 + 12) = 2080;
          sub_1A8746020();
          v27 = sub_1A88C9348();
          v29 = v28;
          v132 = v21[1];
          v132(v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
          v30 = sub_1A85F0394(v27, v29, &v143);
          v22 = v142;

          *(v26 + 14) = v30;
          _os_log_impl(&dword_1A85E5000, v23, v24, "download[%s]: final url: %s", v26, 0x16u);
          v31 = v128;
          swift_arrayDestroy();
          MEMORY[0x1AC571F20](v31, -1, -1);
          MEMORY[0x1AC571F20](v26, -1, -1);
        }

        else
        {

          v132 = v21[1];
          v132(v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
        }

        v143 = v134;
        v144 = v22;

        MEMORY[0x1AC56ECB0](45, 0xE100000000000000);
        v62 = MEMORY[0x1AC56ECB0](0xD00000000000001ALL, 0x80000001A8918230);
        v136 = v127;
        v63 = v144;
        MEMORY[0x1EEE9AC00](v62);
        v143 = v64;
        v144 = v63;
        v65 = sub_1A88C71E8();
        v66 = *(v65 - 8);
        MEMORY[0x1EEE9AC00](v65);
        v68 = v127 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v66 + 104))(v68, *MEMORY[0x1E6968F60], v65);
        sub_1A8722620();
        sub_1A88C72D8();
        (*(v66 + 8))(v68, v65);
        v69 = v142;

        MEMORY[0x1EEE9AC00](v70);
        v71 = v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
        v128 = v71;
        v72 = v133;
        v129(v71, v71, v133);

        v73 = sub_1A88C7E38();
        v74 = sub_1A88C89D8();

        if (os_log_type_enabled(v73, v74))
        {
          v75 = swift_slowAlloc();
          v127[1] = v127;
          v76 = v75;
          v127[0] = swift_slowAlloc();
          v143 = v127[0];
          *v76 = 136315394;
          *(v76 + 4) = sub_1A85F0394(v134, v69, &v143);
          *(v76 + 12) = 2080;
          sub_1A8746020();
          v77 = sub_1A88C9348();
          v79 = v78;
          v80 = v141;
          v132(v71, v72);
          v81 = sub_1A85F0394(v77, v79, &v143);
          v82 = v80;

          *(v76 + 14) = v81;
          _os_log_impl(&dword_1A85E5000, v73, v74, "download[%s]: output url: %s", v76, 0x16u);
          v83 = v127[0];
          swift_arrayDestroy();
          MEMORY[0x1AC571F20](v83, -1, -1);
          MEMORY[0x1AC571F20](v76, -1, -1);
        }

        else
        {

          v82 = v141;
          v132(v71, v72);
        }

        v84 = v72;
        v85 = objc_allocWithZone(MEMORY[0x1E695DFC0]);
        v86 = v128;
        v87 = sub_1A88C7238();
        v88 = [v85 initWithURL:v87 append:0];

        v90 = v137;
        LOBYTE(v13) = v135;
        if (v88)
        {
          v91 = v82[4];
          v91(v138, v86, v84);
          v91(v139, v90, v84);
        }

        else
        {
          MEMORY[0x1EEE9AC00](v89);
          v110 = v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
          v129(v110, v86, v84);
          v111 = v142;

          v112 = sub_1A88C7E38();
          v113 = sub_1A88C89C8();

          if (os_log_type_enabled(v112, v113))
          {
            v13 = swift_slowAlloc();
            v114 = swift_slowAlloc();
            v141 = v127;
            v115 = v114;
            v143 = v114;
            *v13 = 136315394;
            *(v13 + 4) = sub_1A85F0394(v134, v111, &v143);
            *(v13 + 12) = 2080;
            sub_1A8746020();
            v116 = sub_1A88C9348();
            v118 = v117;
            v119 = v84;
            v120 = v110;
            v121 = v132;
            v132(v120, v84);
            v122 = sub_1A85F0394(v116, v118, &v143);

            *(v13 + 14) = v122;
            _os_log_impl(&dword_1A85E5000, v112, v113, "download[%s]: Failed to start download because we couldn't create an output stream to: %s", v13, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1AC571F20](v115, -1, -1);
            MEMORY[0x1AC571F20](v13, -1, -1);
          }

          else
          {

            v119 = v84;
            v124 = v110;
            v121 = v132;
            v132(v124, v84);
          }

          sub_1A8760454();
          swift_allocError();
          *v125 = 0;
          *(v125 + 8) = 0;
          *(v125 + 16) = -7;
          swift_willThrow();
          v121(v128, v119);
          v121(v137, v119);
        }
      }

      else
      {
        v59 = v143;
        sub_1A88C7168();

        swift_willThrow();
        (v141[1])(v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
      }
    }

    else
    {
      LODWORD(v135) = *(a3 + *(v4 + 28));
      v136 = v127;
      MEMORY[0x1EEE9AC00](v12);
      v13 = v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
      v38 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
      v39 = v127 - v38;
      sub_1A88C7268();
      v40 = [objc_opt_self() defaultManager];
      v41 = sub_1A88C7238();
      v143 = 0;
      v42 = [v40 createDirectoryAtURL:v41 withIntermediateDirectories:1 attributes:0 error:&v143];

      v43 = v143;
      if (v42)
      {
        v137 = v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
        v133 = v7;
        v143 = v6;
        v144 = v142;

        v44 = v43;
        MEMORY[0x1AC56ECB0](45, 0xE100000000000000);
        v45 = MEMORY[0x1AC56ECB0](0xD00000000000001ALL, 0x80000001A8918230);
        v132 = v127;
        v46 = v144;
        MEMORY[0x1EEE9AC00](v45);
        v13 = v127 - v38;
        v143 = v47;
        v144 = v46;
        v48 = sub_1A88C71E8();
        v134 = v6;
        v49 = *(v48 - 8);
        MEMORY[0x1EEE9AC00](v48);
        v51 = v127 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v49 + 104))(v51, *MEMORY[0x1E6968F60], v48);
        sub_1A8722620();
        sub_1A88C72D8();
        (*(v49 + 8))(v51, v48);

        v52 = objc_allocWithZone(MEMORY[0x1E695DFC0]);
        v53 = sub_1A88C7238();
        v54 = [v52 initWithURL:v53 append:0];

        if (v54)
        {
          v55 = v141;
          v56 = v133;
          (v141[1])(v39, v133);
          v57 = v55[4];
          v57(v138, v13, v56);
          v57(v139, v137, v56);
          LOBYTE(v13) = v135;
        }

        else
        {
          v93 = v133;
          v92 = v134;
          v94 = v141;
          if (qword_1EB302160 != -1)
          {
            swift_once();
          }

          v95 = sub_1A88C7E58();
          v96 = sub_1A85EF0E4(v95, qword_1EB304A98);
          MEMORY[0x1EEE9AC00](v96);
          v97 = v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
          v98 = v94[2];
          v140 = v13;
          v98(v97, v13, v93);
          v99 = v142;

          v100 = sub_1A88C7E38();
          LOBYTE(v13) = sub_1A88C89C8();

          if (os_log_type_enabled(v100, v13))
          {
            v101 = swift_slowAlloc();
            v135 = v100;
            v139 = v127;
            v102 = v101;
            v138 = swift_slowAlloc();
            v143 = v138;
            *v102 = 136315394;
            *(v102 + 4) = sub_1A85F0394(v92, v99, &v143);
            *(v102 + 12) = 2080;
            sub_1A8746020();
            v103 = sub_1A88C9348();
            v105 = v104;
            v106 = v94[1];
            v106(v97, v93);
            v107 = sub_1A85F0394(v103, v105, &v143);

            *(v102 + 14) = v107;
            v108 = v135;
            _os_log_impl(&dword_1A85E5000, v135, v13, "download[%s]: Failed to start download because we couldn't create an output stream to: %s", v102, 0x16u);
            v109 = v138;
            swift_arrayDestroy();
            MEMORY[0x1AC571F20](v109, -1, -1);
            MEMORY[0x1AC571F20](v102, -1, -1);
          }

          else
          {

            v106 = v94[1];
            v106(v97, v93);
          }

          sub_1A8760454();
          swift_allocError();
          *v123 = 0;
          *(v123 + 8) = 0;
          *(v123 + 16) = -7;
          swift_willThrow();
          v106(v140, v93);
          v106(v39, v93);
          v106(v137, v93);
        }
      }

      else
      {
        v60 = v143;
        sub_1A88C7168();

        swift_willThrow();
        v61 = v141[1];
        v61(v127 - v38, v7);
        v61(v13, v7);
      }
    }
  }

  else
  {
    v13 = v6;
    if (qword_1EB302160 != -1)
    {
      swift_once();
    }

    v32 = sub_1A88C7E58();
    sub_1A85EF0E4(v32, qword_1EB304A98);
    v33 = v142;

    v34 = sub_1A88C7E38();
    v35 = sub_1A88C89C8();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v143 = v37;
      *v36 = 136315138;
      v13 = sub_1A85F0394(v13, v33, &v143);

      *(v36 + 4) = v13;
      _os_log_impl(&dword_1A85E5000, v34, v35, "download[%s]: Failed to start download because we couldn't determine a target user vault path.", v36, 0xCu);
      sub_1A85F1084(v37);
      MEMORY[0x1AC571F20](v37, -1, -1);
      MEMORY[0x1AC571F20](v36, -1, -1);
    }

    else
    {
    }

    sub_1A8760454();
    swift_allocError();
    *v58 = 0;
    *(v58 + 8) = 0;
    *(v58 + 16) = -6;
    swift_willThrow();
  }

  return v13 & 1;
}

uint64_t sub_1A875C2D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  if (qword_1EB302380 != -1)
  {
    swift_once();
  }

  v8 = qword_1EB309050;
  v7[7] = qword_1EB309050;

  return MEMORY[0x1EEE6DFA0](sub_1A875C374, v8, 0);
}

uint64_t sub_1A875C374()
{
  v1 = *(v0 + 32);
  type metadata accessor for RemoteIntentFileDownloadTask();
  v2 = (sub_1A870CCE0(&qword_1EB304AE8) - 8);
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  sub_1A8728D80(v1, v3, &qword_1EB304AE8);
  v4 = v2[14];
  *(v0 + 120) = v4;
  v5 = *(v3 + v2[18]);
  v6 = *(v3 + v2[22]);
  *(v0 + 72) = v6;
  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  *v7 = v0;
  v7[1] = sub_1A875C4B4;
  v8 = *(v0 + 40);
  v9 = *(v0 + 48);
  v10 = *(v0 + 16);
  v11 = *(v0 + 24);

  return sub_1A875C798(v10, v11, v3, v3 + v4, v5, v6, v8, v9);
}

uint64_t sub_1A875C4B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  *(*v4 + 88) = v3;

  if (v3)
  {
    v9 = *(v8 + 56);
    v10 = sub_1A875C6C8;
  }

  else
  {
    v11 = *(v8 + 64);
    v12 = *(v8 + 120);
    v13 = *(v8 + 56);

    *(v8 + 96) = a3;
    *(v8 + 104) = a2;
    *(v8 + 112) = a1;
    v14 = sub_1A870CCE0(&unk_1EB3090C0);
    *(v8 + 124) = v14[12];
    *(v8 + 128) = v14[16];
    *(v8 + 132) = v14[20];
    v15 = sub_1A88C72E8();
    v16 = *(*(v15 - 8) + 8);
    v16(v11 + v12, v15);
    v16(v11, v15);

    v10 = sub_1A875C690;
    v9 = v13;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_1A875C690()
{
  v2 = *(v0 + 128);
  v1 = *(v0 + 132);
  v3 = *(v0 + 104);
  v4 = *(v0 + 96);
  v5 = *(v0 + 16);
  *(v5 + *(v0 + 124)) = *(v0 + 112);
  *(v5 + v2) = v3;
  *(v5 + v1) = v4;
  return (*(v0 + 8))();
}

uint64_t sub_1A875C6C8()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 64);

  v3 = sub_1A88C72E8();
  v4 = *(*(v3 - 8) + 8);
  v4(v2 + v1, v3);
  v4(v2, v3);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1A875C798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 80) = a7;
  *(v8 + 88) = a8;
  *(v8 + 64) = a1;
  *(v8 + 72) = a2;
  v13 = sub_1A88C7AE8();
  *(v8 + 96) = v13;
  *(v8 + 104) = *(v13 - 8);
  *(v8 + 112) = swift_task_alloc();
  v14 = sub_1A88C7AF8();
  *(v8 + 120) = v14;
  *(v8 + 128) = *(v14 - 8);
  *(v8 + 136) = swift_task_alloc();
  v15 = sub_1A88C7B88();
  *(v8 + 144) = v15;
  *(v8 + 152) = *(v15 - 8);
  *(v8 + 160) = swift_task_alloc();
  v16 = sub_1A870CCE0(&qword_1EB304AE8);
  *(v8 + 168) = v16;
  *(v8 + 176) = *(*(v16 - 1) + 64);
  v17 = swift_task_alloc();
  *(v8 + 184) = v17;
  v18 = sub_1A88C72E8();
  *(v8 + 192) = v18;
  v19 = *(v18 - 8);
  *(v8 + 200) = v19;
  v20 = *(v19 + 16);
  v20(v17, a3, v18);
  v21 = v16[12];
  *(v8 + 288) = v21;
  v20(v17 + v21, a4, v18);
  *(v17 + v16[16]) = a5;
  *(v17 + v16[20]) = a6;
  v22 = a6;

  return MEMORY[0x1EEE6DFA0](sub_1A875CA4C, 0, 0);
}

uint64_t sub_1A875CA4C()
{
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  v21 = *(v0 + 184);
  v4 = *(v0 + 160);
  v3 = *(v0 + 168);
  v5 = *(v0 + 144);
  v6 = *(v0 + 152);
  v7 = *(v0 + 72);
  v8 = type metadata accessor for RemoteIntentMirrorFileRepresentation(0);
  (*(v6 + 16))(v4, v7 + *(v8 + 20), v5);
  *(v0 + 208) = sub_1A88C7B68();
  *(v0 + 292) = v9;
  v10 = (v7 + *(v8 + 24));
  *(v0 + 216) = *v10;
  *(v0 + 224) = v10[1];
  v11 = swift_task_alloc();
  sub_1A8728D80(v21, v11, &qword_1EB304AE8);
  v12 = v3[12];
  v13 = *(v11 + v3[20]);
  *(v0 + 232) = v13;
  v14 = *(v1 + 8);
  *(v0 + 240) = v14;
  *(v0 + 248) = (v1 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v11 + v12, v2);
  v14(v11, v2);

  v15 = swift_task_alloc();
  sub_1A8728D80(v21, v15, &qword_1EB304AE8);
  v16 = v3[12];
  *(v0 + 293) = *(v15 + v3[16]);

  v14(v15 + v16, v2);
  v14(v15, v2);

  sub_1A88C7B08();
  [v13 open];
  sub_1A88C7AD8();
  *(v0 + 256) = 0;
  *(v0 + 264) = 0;
  v17 = sub_1A85FC5B4(&qword_1EB304AF8, MEMORY[0x1E698AE40]);
  v18 = swift_task_alloc();
  *(v0 + 272) = v18;
  *v18 = v0;
  v18[1] = sub_1A875CD08;
  v19 = *(v0 + 96);

  return MEMORY[0x1EEE6D8C8](v0 + 16, v19, v17);
}

uint64_t sub_1A875CD08()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_1A875ED98;
  }

  else
  {
    v2 = sub_1A875CE48;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A875CE48()
{
  v281 = v0;
  v280[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (v2 >> 60 == 15)
  {
    v3 = *(v0 + 293);
    v4 = *(v0 + 232);
    (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
    [v4 close];
    v5 = &unk_1EB302000;
    if (v3 == 1)
    {
      if (qword_1EB302160 != -1)
      {
        swift_once();
      }

      v6 = *(v0 + 184);
      v7 = sub_1A88C7E58();
      sub_1A85EF0E4(v7, qword_1EB304A98);
      v8 = swift_task_alloc();
      sub_1A8728D80(v6, v8, &qword_1EB304AE8);
      v9 = swift_task_alloc();
      sub_1A8728D80(v6, v9, &qword_1EB304AE8);

      v10 = sub_1A88C7E38();
      v11 = sub_1A88C89D8();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = *(v0 + 240);
        log = v10;
        v276 = v8;
        v14 = *(v0 + 216);
        v13 = *(v0 + 224);
        v265 = v11;
        v16 = *(v0 + 192);
        v15 = *(v0 + 200);
        v17 = *(v0 + 168);
        v18 = swift_slowAlloc();
        v261 = swift_slowAlloc();
        v280[0] = v261;
        *v18 = 136315650;
        *(v18 + 4) = sub_1A85F0394(v14, v13, v280);
        *(v18 + 12) = 2080;
        v19 = swift_task_alloc();
        v20 = swift_task_alloc();
        sub_1A8728D80(v276, v20, &qword_1EB304AE8);
        v21 = *(v17 + 48);

        v254 = *(v15 + 32);
        v254(v19, v20, v16);
        v251 = v12;
        v12(v20 + v21, v16);

        sub_1A8746020();
        v22 = sub_1A88C9348();
        v24 = v23;
        v12(v19, v16);
        sub_1A85EF638(v276, &qword_1EB304AE8);

        v25 = sub_1A85F0394(v22, v24, v280);

        *(v18 + 14) = v25;
        *(v18 + 22) = 2080;
        v26 = swift_task_alloc();
        v27 = swift_task_alloc();
        sub_1A8728D80(v9, v27, &qword_1EB304AE8);
        v28 = *(v17 + 48);

        v254(v26, v27 + v28, v16);
        v251(v27, v16);

        v29 = sub_1A88C9348();
        v31 = v30;
        v32 = v16;
        v5 = &unk_1EB302000;
        v251(v26, v32);
        sub_1A85EF638(v9, &qword_1EB304AE8);

        v33 = sub_1A85F0394(v29, v31, v280);

        *(v18 + 24) = v33;
        _os_log_impl(&dword_1A85E5000, log, v265, "download[%s]: Finished downloading. Decompressing temp file to final destination (%s -> %s).", v18, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1AC571F20](v261, -1, -1);
        MEMORY[0x1AC571F20](v18, -1, -1);
      }

      else
      {

        sub_1A85EF638(v9, &qword_1EB304AE8);
        sub_1A85EF638(v8, &qword_1EB304AE8);
      }

      v76 = *(v0 + 280);
      v78 = *(v0 + 216);
      v77 = *(v0 + 224);
      v79 = *(v0 + 288);
      v80 = *(v0 + 184);

      sub_1A87604A8(v80, v80 + v79, v78, v77);
      v81 = v76;
      if (!v76)
      {
        goto LABEL_27;
      }

LABEL_40:
      if (v5[44] != -1)
      {
        swift_once();
      }

      v113 = *(v0 + 184);
      v114 = sub_1A88C7E58();
      sub_1A85EF0E4(v114, qword_1EB304A98);
      v115 = swift_task_alloc();
      sub_1A8728D80(v113, v115, &qword_1EB304AE8);
      v275 = swift_task_alloc();
      sub_1A8728D80(v113, v275, &qword_1EB304AE8);

      v116 = v81;
      v117 = sub_1A88C7E38();
      v118 = sub_1A88C89C8();

      v279 = v81;
      if (os_log_type_enabled(v117, v118))
      {
        v119 = *(v0 + 240);
        v263 = v117;
        v121 = *(v0 + 216);
        v120 = *(v0 + 224);
        v260 = v118;
        v123 = *(v0 + 192);
        v122 = *(v0 + 200);
        logc = v115;
        v124 = *(v0 + 168);
        v125 = swift_slowAlloc();
        v255 = swift_slowAlloc();
        v257 = swift_slowAlloc();
        v280[0] = v257;
        *v125 = 136315906;
        *(v125 + 4) = sub_1A85F0394(v121, v120, v280);
        *(v125 + 12) = 2080;
        v126 = swift_task_alloc();
        v127 = swift_task_alloc();
        sub_1A8728D80(logc, v127, &qword_1EB304AE8);
        v128 = *(v124 + 48);

        v252 = *(v122 + 32);
        v252(v126, v127, v123);
        v119(v127 + v128, v123);

        sub_1A8746020();
        v129 = sub_1A88C9348();
        v131 = v130;
        v119(v126, v123);
        sub_1A85EF638(logc, &qword_1EB304AE8);

        v132 = sub_1A85F0394(v129, v131, v280);

        *(v125 + 14) = v132;
        *(v125 + 22) = 2080;
        v133 = swift_task_alloc();
        v134 = swift_task_alloc();
        sub_1A8728D80(v275, v134, &qword_1EB304AE8);
        v135 = *(v124 + 48);

        v252(v133, v134 + v135, v123);
        v136 = v119;
        v119(v134, v123);

        v137 = sub_1A88C9348();
        v139 = v138;
        v136(v133, v123);
        sub_1A85EF638(v275, &qword_1EB304AE8);

        v140 = sub_1A85F0394(v137, v139, v280);

        *(v125 + 24) = v140;
        *(v125 + 32) = 2112;
        v141 = v279;
        v142 = _swift_stdlib_bridgeErrorToNSError();
        *(v125 + 34) = v142;
        *v255 = v142;
        _os_log_impl(&dword_1A85E5000, v263, v260, "download[%s]: Caught error while moving temp file from %s -> %s: %@. Rethrowing", v125, 0x2Au);
        sub_1A85EF638(v255, &qword_1EB306540);
        MEMORY[0x1AC571F20](v255, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x1AC571F20](v257, -1, -1);
        MEMORY[0x1AC571F20](v125, -1, -1);
      }

      else
      {

        sub_1A85EF638(v275, &qword_1EB304AE8);
        sub_1A85EF638(v115, &qword_1EB304AE8);
      }

      goto LABEL_77;
    }

    if (qword_1EB302160 != -1)
    {
      swift_once();
    }

    v48 = *(v0 + 184);
    v49 = sub_1A88C7E58();
    sub_1A85EF0E4(v49, qword_1EB304A98);
    v50 = swift_task_alloc();
    sub_1A8728D80(v48, v50, &qword_1EB304AE8);
    v51 = swift_task_alloc();
    sub_1A8728D80(v48, v51, &qword_1EB304AE8);

    v52 = sub_1A88C7E38();
    v53 = sub_1A88C89D8();

    if (os_log_type_enabled(v52, v53))
    {
      v262 = v52;
      v266 = *(v0 + 240);
      v259 = v53;
      v54 = *(v0 + 216);
      v55 = *(v0 + 224);
      v57 = *(v0 + 192);
      v56 = *(v0 + 200);
      loga = v51;
      v58 = *(v0 + 168);
      v59 = swift_slowAlloc();
      v256 = swift_slowAlloc();
      v280[0] = v256;
      *v59 = 136315650;
      *(v59 + 4) = sub_1A85F0394(v54, v55, v280);
      *(v59 + 12) = 2080;
      v60 = swift_task_alloc();
      v61 = swift_task_alloc();
      sub_1A8728D80(v50, v61, &qword_1EB304AE8);
      v62 = *(v58 + 48);

      v253 = *(v56 + 32);
      v253(v60, v61, v57);
      v266(v61 + v62, v57);

      sub_1A8746020();
      v63 = sub_1A88C9348();
      v65 = v64;
      v266(v60, v57);
      sub_1A85EF638(v50, &qword_1EB304AE8);

      v66 = sub_1A85F0394(v63, v65, v280);

      *(v59 + 14) = v66;
      *(v59 + 22) = 2080;
      v67 = swift_task_alloc();
      v68 = swift_task_alloc();
      sub_1A8728D80(loga, v68, &qword_1EB304AE8);
      v69 = *(v58 + 48);

      v253(v67, v68 + v69, v57);
      v266(v68, v57);

      v70 = sub_1A88C9348();
      v72 = v71;
      v266(v67, v57);
      sub_1A85EF638(loga, &qword_1EB304AE8);

      v73 = sub_1A85F0394(v70, v72, v280);

      *(v59 + 24) = v73;
      _os_log_impl(&dword_1A85E5000, v262, v259, "download[%s]: Finished downloading. Moving temp file to final destination (%s -> %s).", v59, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1AC571F20](v256, -1, -1);
      MEMORY[0x1AC571F20](v59, -1, -1);
    }

    else
    {

      sub_1A85EF638(v51, &qword_1EB304AE8);
      sub_1A85EF638(v50, &qword_1EB304AE8);
    }

    v82 = *(v0 + 240);
    v84 = *(v0 + 184);
    v83 = *(v0 + 192);
    v85 = *(v0 + 168);

    v278 = [objc_opt_self() defaultManager];
    v86 = swift_task_alloc();
    sub_1A8728D80(v84, v86, &qword_1EB304AE8);
    v87 = *(v85 + 48);

    v88 = sub_1A88C7238();
    v82(v86 + v87, v83);
    v82(v86, v83);

    v89 = swift_task_alloc();
    sub_1A8728D80(v84, v89, &qword_1EB304AE8);
    v90 = *(v85 + 48);

    v91 = sub_1A88C7238();
    v82(v89 + v90, v83);
    v82(v89, v83);

    *(v0 + 48) = 0;
    LODWORD(v82) = [v278 moveItemAtURL:v88 toURL:v91 error:v0 + 48];

    v75 = *(v0 + 48);
    if (v82)
    {
      v92 = v75;
LABEL_27:
      v93 = *(v0 + 256);
      v94 = *(v0 + 200);
      v95 = *(v0 + 176);
      logb = *(v0 + 184);
      v97 = *(v0 + 160);
      v96 = *(v0 + 168);
      v98 = *(v0 + 144);
      v99 = *(v0 + 152);
      v100 = *(v0 + 128);
      v101 = *(v0 + 136);
      v102 = *(v0 + 120);
      v274 = *(v0 + 64);
      v277 = *(v0 + 192);

      v2 = v95 + 15;
      (*(v100 + 8))(v101, v102);
      (*(v99 + 8))(v97, v98);
      v103 = swift_task_alloc();
      sub_1A8761C7C(logb, v103, &qword_1EB304AE8);
      v104 = *(v96 + 48);

      (*(v94 + 32))(v274, v103 + v104, v277);
      v105 = -1.0;
      if (v93 <= -1.0)
      {
        __break(1u);
      }

      else
      {
        v93 = *(v0 + 256);
        v105 = 1.84467441e19;
        if (v93 < 1.84467441e19)
        {
          (*(v0 + 240))(v103, *(v0 + 192));

          v106 = *(v0 + 8);
          v107 = *(v0 + 264);
          if (*(v0 + 292))
          {
            v108 = 0;
          }

          else
          {
            v108 = *(v0 + 208);
          }

          return v106(v107, v108, v93);
        }
      }

      __break(1u);
      goto LABEL_103;
    }

LABEL_39:
    v112 = v75;
    v81 = sub_1A88C7168();

    swift_willThrow();
    v5 = &unk_1EB302000;
    goto LABEL_40;
  }

  v274 = v0 + 16;
  if ((sub_1A88C8858() & 1) == 0)
  {
    v74 = (v2 >> 62);
    v277 = v1;
    if ((v2 >> 62) > 1)
    {
      if (v74 != 2)
      {
        goto LABEL_51;
      }

      v111 = *(v1 + 16);
      v110 = *(v1 + 24);
      v75 = v110 - v111;
      if (__OFSUB__(v110, v111))
      {
        __break(1u);
        goto LABEL_39;
      }
    }

    else
    {
      if (!v74)
      {
        v75 = BYTE6(v2);
        if (!BYTE6(v2))
        {
          goto LABEL_51;
        }

LABEL_49:
        if (v75 < 1)
        {
          v143 = MEMORY[0x1E69E7CC0];
        }

        else
        {
          sub_1A870CCE0(&qword_1EB303EC0);
          v143 = swift_allocObject();
          v144 = j__malloc_size(v143);
          v143[2] = v75;
          v143[3] = 2 * v144 - 64;
        }

        v145 = sub_1A88C7378();
        v146 = *(v145 - 8);
        v147 = swift_task_alloc();
        v148 = sub_1A88C7308();
        sub_1A871CD4C(v277, v2);
        (*(v146 + 8))(v147, v145);
        if (v148 != v75)
        {
          goto LABEL_108;
        }

        v93 = v75;
        v1 = v277;
        v74 = (v2 >> 62);
        goto LABEL_55;
      }

      if (__OFSUB__(HIDWORD(v1), v1))
      {
        __break(1u);
        goto LABEL_111;
      }

      v75 = HIDWORD(v1) - v1;
    }

    sub_1A871DFB8(v1, v2);
    if (v75)
    {
      goto LABEL_49;
    }

LABEL_51:
    sub_1A871CD4C(v1, v2);
    v93 = 0.0;
    v143 = MEMORY[0x1E69E7CC0];
LABEL_55:
    v149 = [*(v0 + 232) write:v143 + 4 maxLength:v143[2]];

    if (v149 <= 0)
    {
      if (qword_1EB302160 == -1)
      {
LABEL_60:
        v151 = *(v0 + 232);
        v152 = sub_1A88C7E58();
        sub_1A85EF0E4(v152, qword_1EB304A98);

        v153 = v151;
        v154 = sub_1A88C7E38();
        v155 = sub_1A88C89C8();

        if (os_log_type_enabled(v154, v155))
        {
          v157 = *(v0 + 224);
          v156 = *(v0 + 232);
          v158 = v2;
          v159 = *(v0 + 216);
          v160 = swift_slowAlloc();
          v161 = swift_slowAlloc();
          v280[0] = v161;
          *v160 = 136315394;
          v162 = v159;
          v2 = v158;
          *(v160 + 4) = sub_1A85F0394(v162, v157, v280);
          *(v160 + 12) = 2080;
          *(v0 + 56) = [v156 streamError];
          sub_1A870CCE0(&qword_1EB304B00);
          v163 = sub_1A88C8338();
          v165 = sub_1A85F0394(v163, v164, v280);

          *(v160 + 14) = v165;
          _os_log_impl(&dword_1A85E5000, v154, v155, "download[%s]: failed to write bytes. OutputStream error: %s", v160, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1AC571F20](v161, -1, -1);
          MEMORY[0x1AC571F20](v160, -1, -1);
        }

        v167 = *(v0 + 104);
        v166 = *(v0 + 112);
        v168 = *(v0 + 96);
        sub_1A8760454();
        v46 = swift_allocError();
        *v169 = 0;
        *(v169 + 8) = 0;
        *(v169 + 16) = -8;
        swift_willThrow();
        sub_1A871CD4C(v277, v2);
        (*(v167 + 8))(v166, v168);
        goto LABEL_63;
      }

LABEL_109:
      swift_once();
      goto LABEL_60;
    }

    v105 = *(v0 + 256);
    if (v74 > 1)
    {
      if (v74 != 2)
      {
        goto LABEL_84;
      }

      v213 = *(v1 + 16);
      v212 = *(v1 + 24);
      v214 = __OFSUB__(v212, v213);
      v150 = v212 - v213;
      if (v214)
      {
        __break(1u);
        goto LABEL_76;
      }

LABEL_82:
      if ((v150 & 0x8000000000000000) == 0)
      {
        goto LABEL_85;
      }

      __break(1u);
LABEL_84:
      v150 = 0;
LABEL_85:
      v224 = *(v0 + 264);
      v101 = v224 + v150;
      if (!__CFADD__(v224, v150))
      {
        v93 = (v93 - v105) * 0.333333333;
        if (qword_1EB302160 == -1)
        {
          goto LABEL_87;
        }

        goto LABEL_104;
      }

LABEL_103:
      __break(1u);
LABEL_104:
      loge = *&v105;
      swift_once();
      v105 = *&loge;
LABEL_87:
      v225 = v105 + v93;
      v226 = sub_1A88C7E58();
      sub_1A85EF0E4(v226, qword_1EB304A98);

      v227 = sub_1A88C7E38();
      v228 = sub_1A88C89D8();

      v264 = v2;
      if (os_log_type_enabled(v227, v228))
      {
        v230 = *(v0 + 216);
        v229 = *(v0 + 224);
        if (*(v0 + 292))
        {
          v231 = 0;
        }

        else
        {
          v231 = *(v0 + 208);
        }

        v232 = swift_slowAlloc();
        v233 = swift_slowAlloc();
        v280[0] = v233;
        *v232 = 136315650;
        *(v232 + 4) = sub_1A85F0394(v230, v229, v280);
        *(v232 + 12) = 2048;
        *(v232 + 14) = v101;
        *(v232 + 22) = 2048;
        *(v232 + 24) = v231;
        _os_log_impl(&dword_1A85E5000, v227, v228, "download[%s]: %llu bytes / %llu total bytes downloaded", v232, 0x20u);
        sub_1A85F1084(v233);
        MEMORY[0x1AC571F20](v233, -1, -1);
        MEMORY[0x1AC571F20](v232, -1, -1);
      }

      v234 = v101;
      v235 = *(v0 + 200);
      v236 = *(v0 + 184);
      v237 = *(v0 + 168);
      if (*(v0 + 292))
      {
        v238 = 0;
      }

      else
      {
        v238 = *(v0 + 208);
      }

      v267 = v238;
      logd = *(v0 + 192);
      v2 = sub_1A870CCE0(&unk_1EB3090C0);
      v239 = swift_task_alloc();
      v240 = *(v2 + 48);
      v241 = *(v2 + 64);
      v258 = *(v2 + 80);
      v242 = swift_task_alloc();
      sub_1A8728D80(v236, v242, &qword_1EB304AE8);
      v243 = *(v237 + 48);

      (*(v235 + 32))(v239, v242 + v243, logd);
      *(v239 + v240) = v234;
      *(v239 + v241) = v267;
      if ((*&v225 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v225 > -1.0)
      {
        if (v225 < 1.84467441e19)
        {
          v244 = *(v0 + 240);
          v245 = *(v0 + 192);
          v246 = *(v0 + 80);
          *(v239 + v258) = v225;
          v244(v242, v245);

          v247 = swift_task_alloc();
          sub_1A8728D80(v239, v247, &unk_1EB3090C0);
          v246(v247, *(v247 + *(v2 + 48)), *(v247 + *(v2 + 64)), *(v247 + *(v2 + 80)));
          sub_1A871CD4C(v277, v264);
          sub_1A85EF638(v239, &unk_1EB3090C0);
          v244(v247, v245);

          *(v0 + 264) = v234;
          *(v0 + 256) = v225;
          v248 = sub_1A85FC5B4(&qword_1EB304AF8, MEMORY[0x1E698AE40]);
          v249 = swift_task_alloc();
          *(v0 + 272) = v249;
          *v249 = v0;
          v249[1] = sub_1A875CD08;
          v250 = *(v0 + 96);

          return MEMORY[0x1EEE6D8C8](v274, v250, v248);
        }

        goto LABEL_107;
      }

      __break(1u);
LABEL_107:
      __break(1u);
LABEL_108:
      __break(1u);
      goto LABEL_109;
    }

    if (!v74)
    {
      v150 = BYTE6(v2);
      goto LABEL_85;
    }

    LODWORD(v150) = HIDWORD(v1) - v1;
    if (!__OFSUB__(HIDWORD(v1), v1))
    {
      v150 = v150;
      goto LABEL_82;
    }

LABEL_111:
    __break(1u);
  }

  if (qword_1EB302160 != -1)
  {
    swift_once();
  }

  v34 = sub_1A88C7E58();
  sub_1A85EF0E4(v34, qword_1EB304A98);

  v35 = sub_1A88C7E38();
  v36 = sub_1A88C89D8();

  if (os_log_type_enabled(v35, v36))
  {
    v38 = *(v0 + 216);
    v37 = *(v0 + 224);
    v39 = swift_slowAlloc();
    v40 = v2;
    v41 = swift_slowAlloc();
    v280[0] = v41;
    *v39 = 136315138;
    *(v39 + 4) = sub_1A85F0394(v38, v37, v280);
    _os_log_impl(&dword_1A85E5000, v35, v36, "download[%s]: Task was cancelled, aborting data stream processing.", v39, 0xCu);
    sub_1A85F1084(v41);
    v42 = v41;
    v2 = v40;
    MEMORY[0x1AC571F20](v42, -1, -1);
    MEMORY[0x1AC571F20](v39, -1, -1);
  }

  v43 = *(v0 + 104);
  v44 = *(v0 + 112);
  v45 = *(v0 + 96);
  sub_1A8760454();
  v46 = swift_allocError();
  *v47 = 0;
  *(v47 + 8) = 0;
  *(v47 + 16) = -2;
  swift_willThrow();
  sub_1A871CD4C(v1, v2);
  (*(v43 + 8))(v44, v45);
LABEL_63:
  if (qword_1EB302160 != -1)
  {
    swift_once();
  }

  v170 = sub_1A88C7E58();
  sub_1A85EF0E4(v170, qword_1EB304A98);

  v171 = v46;
  v172 = sub_1A88C7E38();
  v173 = sub_1A88C89C8();

  if (os_log_type_enabled(v172, v173))
  {
    v175 = *(v0 + 216);
    v174 = *(v0 + 224);
    v176 = swift_slowAlloc();
    v177 = swift_slowAlloc();
    v178 = swift_slowAlloc();
    v280[0] = v178;
    *v176 = 136315394;
    *(v176 + 4) = sub_1A85F0394(v175, v174, v280);
    *(v176 + 12) = 2112;
    v179 = v46;
    v180 = _swift_stdlib_bridgeErrorToNSError();
    *(v176 + 14) = v180;
    *v177 = v180;
    _os_log_impl(&dword_1A85E5000, v172, v173, "download[%s]: Closing output stream and deleting partially downloaded file, because we caught an error during download: %@", v176, 0x16u);
    sub_1A85EF638(v177, &qword_1EB306540);
    MEMORY[0x1AC571F20](v177, -1, -1);
    sub_1A85F1084(v178);
    MEMORY[0x1AC571F20](v178, -1, -1);
    MEMORY[0x1AC571F20](v176, -1, -1);
  }

  v181 = *(v0 + 240);
  v182 = *(v0 + 184);
  v183 = *(v0 + 192);
  v184 = *(v0 + 168);
  [*(v0 + 232) close];
  v185 = objc_opt_self();
  v186 = [v185 defaultManager];
  v187 = swift_task_alloc();
  sub_1A8728D80(v182, v187, &qword_1EB304AE8);
  v188 = *(v184 + 48);

  sub_1A88C72A8();
  v189 = sub_1A88C82A8();

  v181(v187, v183);
  v181(v187 + v188, v183);

  LODWORD(v182) = [v186 fileExistsAtPath_];

  if (!v182)
  {
    goto LABEL_77;
  }

  v190 = *(v0 + 240);
  v191 = *(v0 + 184);
  v192 = *(v0 + 192);
  v193 = *(v0 + 168);
  v194 = [v185 defaultManager];
  v195 = swift_task_alloc();
  sub_1A8728D80(v191, v195, &qword_1EB304AE8);
  v196 = *(v193 + 48);

  sub_1A88C72A8();
  v197 = sub_1A88C82A8();

  v190(v195, v192);
  v190(v195 + v196, v192);

  *(v0 + 40) = 0;
  LODWORD(v195) = [v194 removeItemAtPath:v197 error:v274 + 24];

  v198 = *(v0 + 40);
  if (!v195)
  {
    v200 = v198;
    v74 = sub_1A88C7168();

    swift_willThrow();

    v201 = v74;
    v149 = sub_1A88C7E38();
    v202 = sub_1A88C89C8();

    v203 = os_log_type_enabled(v149, v202);
    v204 = *(v0 + 224);
    if (v203)
    {
      v205 = *(v0 + 216);
      v206 = swift_slowAlloc();
      v207 = swift_slowAlloc();
      v208 = swift_slowAlloc();
      v280[0] = v208;
      *v206 = 136315394;
      v209 = sub_1A85F0394(v205, v204, v280);

      *(v206 + 4) = v209;
      *(v206 + 12) = 2112;
      v210 = v74;
      v211 = _swift_stdlib_bridgeErrorToNSError();
      *(v206 + 14) = v211;
      *v207 = v211;
      _os_log_impl(&dword_1A85E5000, v149, v202, "download[%s]: Failed to delete partially downloaded file after receiving error during download. Error: %@", v206, 0x16u);
      sub_1A85EF638(v207, &qword_1EB306540);
      MEMORY[0x1AC571F20](v207, -1, -1);
      sub_1A85F1084(v208);
      MEMORY[0x1AC571F20](v208, -1, -1);
      MEMORY[0x1AC571F20](v206, -1, -1);

      goto LABEL_77;
    }

LABEL_76:

    goto LABEL_77;
  }

  v199 = v198;
LABEL_77:
  v215 = *(v0 + 232);
  v216 = *(v0 + 184);
  v218 = *(v0 + 152);
  v217 = *(v0 + 160);
  v220 = *(v0 + 136);
  v219 = *(v0 + 144);
  v221 = *(v0 + 120);
  v222 = *(v0 + 128);
  swift_willThrow();

  (*(v222 + 8))(v220, v221);
  (*(v218 + 8))(v217, v219);
  sub_1A85EF638(v216, &qword_1EB304AE8);

  v223 = *(v0 + 8);

  return v223();
}

uint64_t sub_1A875ED98()
{
  *(v0 + 32) = *(v0 + 280);
  sub_1A870CCE0(&unk_1EB3037B0);
  swift_willThrowTypedImpl();

  return MEMORY[0x1EEE6DFA0](sub_1A875EE58, 0, 0);
}

uint64_t sub_1A875EE58()
{
  v57 = v0;
  v56[1] = *MEMORY[0x1E69E9840];
  (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
  v1 = *(v0 + 280);
  if (qword_1EB302160 != -1)
  {
    swift_once();
  }

  v2 = sub_1A88C7E58();
  sub_1A85EF0E4(v2, qword_1EB304A98);

  v3 = v1;
  v4 = sub_1A88C7E38();
  v5 = sub_1A88C89C8();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = *(v0 + 216);
    v6 = *(v0 + 224);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v56[0] = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_1A85F0394(v7, v6, v56);
    *(v8 + 12) = 2112;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v12;
    *v9 = v12;
    _os_log_impl(&dword_1A85E5000, v4, v5, "download[%s]: Closing output stream and deleting partially downloaded file, because we caught an error during download: %@", v8, 0x16u);
    sub_1A85EF638(v9, &qword_1EB306540);
    MEMORY[0x1AC571F20](v9, -1, -1);
    sub_1A85F1084(v10);
    MEMORY[0x1AC571F20](v10, -1, -1);
    MEMORY[0x1AC571F20](v8, -1, -1);
  }

  v13 = *(v0 + 240);
  v14 = *(v0 + 184);
  v15 = *(v0 + 192);
  v16 = *(v0 + 168);
  [*(v0 + 232) close];
  v17 = objc_opt_self();
  v18 = [v17 defaultManager];
  v19 = swift_task_alloc();
  sub_1A8728D80(v14, v19, &qword_1EB304AE8);
  v20 = *(v16 + 48);

  sub_1A88C72A8();
  v21 = sub_1A88C82A8();

  v13(v19, v15);
  v13(v19 + v20, v15);

  LODWORD(v14) = [v18 fileExistsAtPath_];

  if (v14)
  {
    v22 = *(v0 + 240);
    v23 = *(v0 + 184);
    v24 = *(v0 + 192);
    v25 = *(v0 + 168);
    v26 = [v17 defaultManager];
    v27 = swift_task_alloc();
    sub_1A8728D80(v23, v27, &qword_1EB304AE8);
    v28 = *(v25 + 48);

    sub_1A88C72A8();
    v29 = sub_1A88C82A8();

    v22(v27, v24);
    v22(v27 + v28, v24);

    *(v0 + 40) = 0;
    LODWORD(v24) = [v26 removeItemAtPath:v29 error:v0 + 40];

    v30 = *(v0 + 40);
    if (v24)
    {
      v31 = v30;
    }

    else
    {
      v32 = v30;
      v33 = sub_1A88C7168();

      swift_willThrow();

      v34 = v33;
      v35 = sub_1A88C7E38();
      v36 = sub_1A88C89C8();

      v37 = os_log_type_enabled(v35, v36);
      v38 = *(v0 + 224);
      if (v37)
      {
        v39 = *(v0 + 216);
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v56[0] = v42;
        *v40 = 136315394;
        v43 = sub_1A85F0394(v39, v38, v56);

        *(v40 + 4) = v43;
        *(v40 + 12) = 2112;
        v44 = v33;
        v45 = _swift_stdlib_bridgeErrorToNSError();
        *(v40 + 14) = v45;
        *v41 = v45;
        _os_log_impl(&dword_1A85E5000, v35, v36, "download[%s]: Failed to delete partially downloaded file after receiving error during download. Error: %@", v40, 0x16u);
        sub_1A85EF638(v41, &qword_1EB306540);
        MEMORY[0x1AC571F20](v41, -1, -1);
        sub_1A85F1084(v42);
        MEMORY[0x1AC571F20](v42, -1, -1);
        MEMORY[0x1AC571F20](v40, -1, -1);
      }

      else
      {
      }
    }
  }

  v46 = *(v0 + 232);
  v47 = *(v0 + 184);
  v49 = *(v0 + 152);
  v48 = *(v0 + 160);
  v51 = *(v0 + 136);
  v50 = *(v0 + 144);
  v52 = *(v0 + 120);
  v53 = *(v0 + 128);
  swift_willThrow();

  (*(v53 + 8))(v51, v52);
  (*(v49 + 8))(v48, v50);
  sub_1A85EF638(v47, &qword_1EB304AE8);

  v54 = *(v0 + 8);

  return v54();
}

void sub_1A875F468()
{
  if (*(v0 + OBJC_IVAR____TtC17IMSharedUtilities28RemoteIntentFileDownloadTask_activeTask))
  {
    v1 = v0 + OBJC_IVAR____TtC17IMSharedUtilities28RemoteIntentFileDownloadTask_remoteFile;
    v2 = (v1 + *(type metadata accessor for RemoteIntentMirrorFileRepresentation(0) + 24));
    v4 = *v2;
    v3 = v2[1];

    sub_1A870CCE0(&unk_1EB3090C0);
    sub_1A870CCE0(&unk_1EB3037B0);
    sub_1A88C8848();
    if (qword_1EB302160 != -1)
    {
      swift_once();
    }

    v5 = sub_1A88C7E58();
    sub_1A85EF0E4(v5, qword_1EB304A98);

    v6 = sub_1A88C7E38();
    v7 = sub_1A88C89D8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v11 = v9;
      *v8 = 136315138;
      v10 = sub_1A85F0394(v4, v3, &v11);

      *(v8 + 4) = v10;
      _os_log_impl(&dword_1A85E5000, v6, v7, "download[%s]: Cancelled.", v8, 0xCu);
      sub_1A85F1084(v9);
      MEMORY[0x1AC571F20](v9, -1, -1);
      MEMORY[0x1AC571F20](v8, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_1A875F674()
{
  sub_1A8761CE4(v0 + OBJC_IVAR____TtC17IMSharedUtilities28RemoteIntentFileDownloadTask_remoteFile);
  sub_1A85EF638(v0 + OBJC_IVAR____TtC17IMSharedUtilities28RemoteIntentFileDownloadTask_result, &unk_1EB3090B0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RemoteIntentFileDownloadTask()
{
  result = qword_1EB304AC8;
  if (!qword_1EB304AC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A875F76C()
{
  type metadata accessor for RemoteIntentMirrorFileRepresentation(319);
  if (v0 <= 0x3F)
  {
    sub_1A875F864();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1A875F864()
{
  if (!qword_1EB304AD8)
  {
    sub_1A870CD28(&unk_1EB309090);
    v0 = sub_1A88C8BE8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB304AD8);
    }
  }
}

uint64_t sub_1A875F8D4(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = a1 + OBJC_IVAR____TtC17IMSharedUtilities28RemoteIntentFileDownloadTask_remoteFile;
  v5 = a2 + OBJC_IVAR____TtC17IMSharedUtilities28RemoteIntentFileDownloadTask_remoteFile;
  if (sub_1A88C7278() & 1) != 0 && (v6 = type metadata accessor for RemoteIntentMirrorFileRepresentation(0), (sub_1A88C7B18()) && ((v7 = *(v6 + 24), v8 = *(v4 + v7), v9 = *(v4 + v7 + 8), v10 = (v5 + v7), v8 == *v10) ? (v11 = v9 == v10[1]) : (v11 = 0), (v11 || (sub_1A88C9398()) && *(v4 + *(v6 + 28)) == *(v5 + *(v6 + 28)) && *(v3 + OBJC_IVAR____TtC17IMSharedUtilities28RemoteIntentFileDownloadTask_numberOfAttempts) == *(v2 + OBJC_IVAR____TtC17IMSharedUtilities28RemoteIntentFileDownloadTask_numberOfAttempts)))
  {
    v66 = *(v3 + OBJC_IVAR____TtC17IMSharedUtilities28RemoteIntentFileDownloadTask_isCancelled) ^ *(v2 + OBJC_IVAR____TtC17IMSharedUtilities28RemoteIntentFileDownloadTask_isCancelled) ^ 1;
  }

  else
  {
    v66 = 0;
  }

  v12 = sub_1A870CCE0(&unk_1EB3090B0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC17IMSharedUtilities28RemoteIntentFileDownloadTask_result;
  swift_beginAccess();
  v16 = sub_1A8728D80(v3 + v15, v14, &unk_1EB3090B0);
  MEMORY[0x1EEE9AC00](v16);
  v17 = v14;
  v18 = OBJC_IVAR____TtC17IMSharedUtilities28RemoteIntentFileDownloadTask_result;
  swift_beginAccess();
  sub_1A8728D80(v2 + v18, v14, &unk_1EB3090B0);
  v19 = sub_1A870CCE0(&unk_1EB309090);
  v20 = *(*(v19 - 8) + 48);
  if (v20(v14, 1, v19) == 1)
  {
    if ((v66 & 1) == 0 || v20(v14, 1, v19) != 1)
    {
      goto LABEL_40;
    }

    goto LABEL_15;
  }

  if (v20(v14, 1, v19) == 1)
  {
    goto LABEL_40;
  }

  v61 = v3;
  v62 = v2;
  v23 = sub_1A870CCE0(&qword_1EB304AE0);
  v65 = &v54;
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = &v54 - v25;
  v27 = *(v24 + 56);
  v64 = &v54;
  sub_1A8728D80(&v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), &v54 - v25, &unk_1EB3090B0);
  v63 = v27;
  v28 = &v26[v27];
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v14;
  sub_1A8728D80(v14, v28, &unk_1EB3090B0);
  v29 = (v20)(v26, 1, v19);
  if (v29 == 1)
  {
LABEL_39:
    sub_1A85EF638(v26, &qword_1EB304AE0);
    goto LABEL_40;
  }

  v60 = &v54;
  MEMORY[0x1EEE9AC00](v29);
  v30 = (&v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A8728D80(v26, v30, &unk_1EB3090B0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v59 = v26;
  if (EnumCaseMultiPayload != 1)
  {
    v34 = (v20)(&v26[v63], 1, v19);
    v2 = v62;
    if (v34 != 1)
    {
      MEMORY[0x1EEE9AC00](v34);
      v35 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_1A8728D80(&v26[v63], v35, &unk_1EB3090B0);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v58 = &v54;
        v44 = sub_1A88C72E8();
        v56 = &v54;
        v45 = *(v44 - 8);
        v46 = *(v45 + 64);
        MEMORY[0x1EEE9AC00](v44);
        v47 = (v46 + 15) & 0xFFFFFFFFFFFFFFF0;
        v55 = v45;
        v48 = *(v45 + 32);
        v57 = &v54 - v47;
        v49 = v48();
        v54 = &v54;
        MEMORY[0x1EEE9AC00](v49);
        v50 = &v54 - v47;
        (v48)(&v54 - v47, v35, v44);
        if (v66)
        {
          v43 = sub_1A88C7278();
        }

        else
        {
          v43 = 0;
        }

        v52 = *(v55 + 8);
        v52(v50, v44);
        v52(v57, v44);
        goto LABEL_47;
      }

      sub_1A85EF638(v35, &unk_1EB309090);
    }

    v36 = sub_1A88C72E8();
    (*(*(v36 - 8) + 8))(v30, v36);
    goto LABEL_38;
  }

  v32 = *v30;
  v33 = (v20)(&v26[v63], 1, v19);
  v2 = v62;
  if (v33 == 1)
  {

LABEL_38:
    v26 = v59;
    goto LABEL_39;
  }

  MEMORY[0x1EEE9AC00](v33);
  v37 = (&v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A8728D80(&v26[v63], v37, &unk_1EB3090B0);
  if (swift_getEnumCaseMultiPayload() != 1)
  {

    sub_1A85EF638(v37, &unk_1EB309090);
    goto LABEL_38;
  }

  v58 = &v54;
  v38 = *v37;
  if (v66)
  {
    swift_getErrorValue();
    v39 = sub_1A88C94C8();
    v41 = v40;
    swift_getErrorValue();
    if (v39 == sub_1A88C94C8() && v41 == v42)
    {
      v43 = 1;
    }

    else
    {
      v43 = sub_1A88C9398();
    }
  }

  else
  {

    v43 = 0;
  }

LABEL_47:
  v53 = v59;
  sub_1A85EF638(&v59[v63], &unk_1EB3090B0);
  sub_1A85EF638(v53, &unk_1EB3090B0);
  v3 = v61;
  if ((v43 & 1) == 0)
  {
    goto LABEL_40;
  }

LABEL_15:
  v21 = *(v2 + OBJC_IVAR____TtC17IMSharedUtilities28RemoteIntentFileDownloadTask_activeTask);
  if (!*(v3 + OBJC_IVAR____TtC17IMSharedUtilities28RemoteIntentFileDownloadTask_activeTask))
  {
    if (!v21)
    {
LABEL_29:
      v21 = *(*(v3 + OBJC_IVAR____TtC17IMSharedUtilities28RemoteIntentFileDownloadTask_continuations) + 16) == *(*(v2 + OBJC_IVAR____TtC17IMSharedUtilities28RemoteIntentFileDownloadTask_continuations) + 16);
      goto LABEL_41;
    }

LABEL_40:
    v21 = 0;
    goto LABEL_41;
  }

  if (v21)
  {

    sub_1A870CCE0(&unk_1EB3090C0);
    sub_1A870CCE0(&unk_1EB3037B0);
    v22 = sub_1A88C8828();

    if ((v22 & 1) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_29;
  }

LABEL_41:
  sub_1A85EF638(v17, &unk_1EB3090B0);
  sub_1A85EF638(v14, &unk_1EB3090B0);
  return v21;
}

uint64_t sub_1A87601F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteIntentMirrorFileRepresentation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A8760254(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteIntentMirrorFileRepresentation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A87602B8(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for RemoteIntentMirrorFileRepresentation(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(sub_1A870CCE0(&qword_1EB304AE8) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = (v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = *v12;
  v14 = v12[1];
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_1A8714B6C;

  return sub_1A875C2D0(a1, v10, v11, v1 + v6, v1 + v9, v13, v14);
}

unint64_t sub_1A8760454()
{
  result = qword_1EB304AF0;
  if (!qword_1EB304AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304AF0);
  }

  return result;
}

uint64_t sub_1A87604A8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v170 = a4;
  v162 = a3;
  v167 = a2;
  v171[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1A88C76B8();
  v6 = *(v5 - 8);
  v155 = v5;
  v156 = v6;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v150 = v146 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v154 = v146 - v9;
  v10 = sub_1A870CCE0(&qword_1EB3044E0);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v152 = v146 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v160 = v146 - v13;
  v14 = sub_1A88C7E88();
  v168 = *(v14 - 8);
  v169 = v14;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v153 = v146 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v163 = v146 - v17;
  if (qword_1EB302160 != -1)
  {
    swift_once();
  }

  v18 = sub_1A88C7E58();
  v19 = sub_1A85EF0E4(v18, qword_1EB304A98);
  v20 = sub_1A88C72E8();
  v159 = v146;
  v21 = *(v20 - 8);
  v22 = v21[8];
  MEMORY[0x1EEE9AC00](v20);
  v23 = v146 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v21[2];
  v25 = v24(v23, a1, v20);
  v158 = v146;
  v166 = v22;
  MEMORY[0x1EEE9AC00](v25);
  v26 = v23;
  v164 = v24;
  v165 = v21 + 2;
  v24(v23, v167, v20);
  v27 = v170;

  v161 = v19;
  v28 = sub_1A88C7E38();
  v29 = sub_1A88C89D8();

  v30 = os_log_type_enabled(v28, v29);
  v157 = a1;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v149 = swift_slowAlloc();
    v171[0] = v149;
    *v31 = 136315650;
    *(v31 + 4) = sub_1A85F0394(v162, v27, v171);
    *(v31 + 12) = 2080;
    sub_1A8746020();
    v148 = v28;
    v32 = sub_1A88C9348();
    v34 = v33;
    LODWORD(v147) = v29;
    v35 = v21[1];
    v35(v23, v20);
    v36 = sub_1A85F0394(v32, v34, v171);

    *(v31 + 14) = v36;
    *(v31 + 22) = 2080;
    v37 = v168;
    v38 = sub_1A88C9348();
    v40 = v39;
    v35(v26, v20);
    v41 = v169;
    v42 = sub_1A85F0394(v38, v40, v171);

    *(v31 + 24) = v42;
    v43 = v148;
    _os_log_impl(&dword_1A85E5000, v148, v147, "decompress[%s]: Decompressing temp file to final destination (%s -> %s).", v31, 0x20u);
    v44 = v149;
    swift_arrayDestroy();
    MEMORY[0x1AC571F20](v44, -1, -1);
    v45 = v31;
    a1 = v157;
    MEMORY[0x1AC571F20](v45, -1, -1);
  }

  else
  {

    v47 = v21[1];
    v47(v23, v20);
    v46 = (v47)(v23, v20);
    v37 = v168;
    v41 = v169;
  }

  MEMORY[0x1EEE9AC00](v46);
  v164(v146 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v20);
  v49 = v160;
  sub_1A88C7E78();
  v50 = *(v37 + 48);
  if ((v50)(v49, 1, v41) == 1)
  {
    sub_1A85EF638(v49, &qword_1EB3044E0);
    v51 = v170;

    v52 = sub_1A88C7E38();
    v53 = sub_1A88C89D8();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v171[0] = v55;
      *v54 = 136315138;
      *(v54 + 4) = sub_1A85F0394(v162, v51, v171);
      _os_log_impl(&dword_1A85E5000, v52, v53, "decompress[%s]: Could not create FilePath for the input file", v54, 0xCu);
      sub_1A85F1084(v55);
      MEMORY[0x1AC571F20](v55, -1, -1);
      MEMORY[0x1AC571F20](v54, -1, -1);
    }

    sub_1A8760454();
    swift_allocError();
    *v56 = 0;
    *(v56 + 8) = 0;
    *(v56 + 16) = -9;
    return swift_willThrow();
  }

  v58 = v37 + 32;
  v59 = *(v37 + 32);
  v59(v163, v49, v41);
  sub_1A88C7688();
  v60 = sub_1A88C7668();
  if (v60)
  {
    v61 = v60;
    v148 = v50;
    v146[4] = v58;
    v147 = v59;
    v149 = v20;
    v171[0] = MEMORY[0x1E69E7CC0];
    v62 = sub_1A85FC5B4(&qword_1EB3044F0, MEMORY[0x1E69E5BA8]);
    v63 = sub_1A870CCE0(&qword_1EB3044F8);
    v64 = sub_1A8745F54();
    v65 = v154;
    v66 = v155;
    v159 = v62;
    sub_1A88C8CE8();
    v160 = v61;
    v67 = v65;
    v68 = sub_1A88C7658();
    v70 = v156 + 8;
    v69 = *(v156 + 8);
    v69(v67, v66);
    if (!v68)
    {
      v93 = v170;

      v94 = sub_1A88C7E38();
      v95 = sub_1A88C89C8();

      if (os_log_type_enabled(v94, v95))
      {
        v96 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        v171[0] = v97;
        *v96 = 136315138;
        *(v96 + 4) = sub_1A85F0394(v162, v93, v171);
        _os_log_impl(&dword_1A85E5000, v94, v95, "decompress[%s]: Failed to create decompression filestream", v96, 0xCu);
        sub_1A85F1084(v97);
        MEMORY[0x1AC571F20](v97, -1, -1);
        MEMORY[0x1AC571F20](v96, -1, -1);
      }

      v98 = v168;
      v99 = v169;
      sub_1A8760454();
      swift_allocError();
      *v100 = 0;
      *(v100 + 8) = 0;
      *(v100 + 16) = -9;
      swift_willThrow();
      sub_1A88C7678();
      (*(v98 + 8))(v163, v99);
    }

    v71 = sub_1A88C7748();
    v171[0] = MEMORY[0x1E69E7CC0];
    v146[2] = v63;
    v146[1] = v64;
    v72 = v71;
    v158 = v69;
    v73 = v67;
    sub_1A88C8CE8();
    v74 = sub_1A88C76E8();
    v75 = v158(v73, v66);
    v146[3] = v74;
    if (!v74)
    {
      v101 = v170;

      v102 = sub_1A88C7E38();
      v103 = sub_1A88C89C8();

      if (os_log_type_enabled(v102, v103))
      {
        v104 = swift_slowAlloc();
        v105 = swift_slowAlloc();
        v171[0] = v105;
        *v104 = 136315138;
        *(v104 + 4) = sub_1A85F0394(v162, v101, v171);
        _os_log_impl(&dword_1A85E5000, v102, v103, "decompress[%s]: Failed to create decode filestream", v104, 0xCu);
        sub_1A85F1084(v105);
        MEMORY[0x1AC571F20](v105, -1, -1);
        MEMORY[0x1AC571F20](v104, -1, -1);
      }

      v106 = v168;
      sub_1A8760454();
      swift_allocError();
      *v107 = 0;
      *(v107 + 8) = 0;
      *(v107 + 16) = -9;
      swift_willThrow();
      sub_1A88C7678();

      sub_1A88C7678();
      (*(v106 + 8))(v163, v169);
    }

    MEMORY[0x1EEE9AC00](v75);
    v164(v146 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0), v167, v149);
    v77 = v152;
    sub_1A88C7E78();
    v78 = v169;
    if ((v148)(v77, 1, v169) == 1)
    {
      sub_1A85EF638(v77, &qword_1EB3044E0);
      v79 = v170;

      v80 = sub_1A88C7E38();
      v81 = sub_1A88C89C8();

      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        v171[0] = v83;
        *v82 = 136315138;
        *(v82 + 4) = sub_1A85F0394(v162, v79, v171);
        _os_log_impl(&dword_1A85E5000, v80, v81, "decompress[%s]: Failed to create destination filepath", v82, 0xCu);
        sub_1A85F1084(v83);
        MEMORY[0x1AC571F20](v83, -1, -1);
        MEMORY[0x1AC571F20](v82, -1, -1);
      }

      v84 = v168;
      sub_1A8760454();
      swift_allocError();
      *v85 = 0;
      *(v85 + 8) = 0;
      *(v85 + 16) = -9;
      swift_willThrow();
      sub_1A88C7728();

      sub_1A88C7678();

      sub_1A88C7678();
      (*(v84 + 8))(v163, v78);
    }

    v147(v153, v77, v78);
    v171[0] = MEMORY[0x1E69E7CC0];
    v108 = v154;
    v109 = v155;
    sub_1A88C8CE8();
    v166 = v72;
    v110 = sub_1A88C7708();
    v111 = v108;
    v112 = v158;
    v156 = v70;
    v158(v111, v109);
    if (!v110)
    {
      v116 = v170;

      v117 = sub_1A88C7E38();
      v118 = sub_1A88C89C8();

      if (os_log_type_enabled(v117, v118))
      {
        v119 = swift_slowAlloc();
        v120 = swift_slowAlloc();
        v171[0] = v120;
        *v119 = 136315138;
        *(v119 + 4) = sub_1A85F0394(v162, v116, v171);
        _os_log_impl(&dword_1A85E5000, v117, v118, "decompress[%s]: Failed to extract", v119, 0xCu);
        sub_1A85F1084(v120);
        MEMORY[0x1AC571F20](v120, -1, -1);
        MEMORY[0x1AC571F20](v119, -1, -1);
      }

      v122 = v168;
      v121 = v169;
      sub_1A8760454();
      swift_allocError();
      *v123 = 0;
      *(v123 + 8) = 0;
      *(v123 + 16) = -9;
      swift_willThrow();
      v124 = *(v122 + 8);
      v124(v153, v121);
      sub_1A88C7728();

      sub_1A88C7678();
      goto LABEL_41;
    }

    v167 = v68;
    v171[0] = MEMORY[0x1E69E7CC0];
    v113 = v150;
    sub_1A88C8CE8();
    v114 = v151;
    sub_1A88C7738();
    v115 = v114;
    if (v114)
    {
      v112(v113, v109);
    }

    else
    {
      v112(v113, v109);
      v125 = [objc_opt_self() defaultManager];
      v126 = sub_1A88C7238();
      v171[0] = 0;
      v127 = [v125 removeItemAtURL:v126 error:v171];

      v128 = v171[0];
      if (v127)
      {
        v129 = v170;

        v130 = v128;
        v131 = sub_1A88C7E38();
        v132 = sub_1A88C89D8();

        if (os_log_type_enabled(v131, v132))
        {
          v133 = swift_slowAlloc();
          v134 = swift_slowAlloc();
          v171[0] = v134;
          *v133 = 136315138;
          *(v133 + 4) = sub_1A85F0394(v162, v129, v171);
          _os_log_impl(&dword_1A85E5000, v131, v132, "decompress[%s]: Success", v133, 0xCu);
          sub_1A85F1084(v134);
          MEMORY[0x1AC571F20](v134, -1, -1);
          MEMORY[0x1AC571F20](v133, -1, -1);
        }

        sub_1A88C7728();
        v121 = v169;
        v124 = *(v168 + 8);
        v124(v153, v169);

        sub_1A88C7728();
        goto LABEL_40;
      }

      v135 = v171[0];
      v115 = sub_1A88C7168();

      swift_willThrow();
    }

    v136 = v170;

    v137 = v115;
    v138 = sub_1A88C7E38();
    v139 = sub_1A88C89C8();

    if (os_log_type_enabled(v138, v139))
    {
      v140 = swift_slowAlloc();
      v141 = swift_slowAlloc();
      v142 = swift_slowAlloc();
      v171[0] = v142;
      *v140 = 136315394;
      *(v140 + 4) = sub_1A85F0394(v162, v136, v171);
      *(v140 + 12) = 2112;
      v143 = v115;
      v144 = _swift_stdlib_bridgeErrorToNSError();
      *(v140 + 14) = v144;
      *v141 = v144;
      _os_log_impl(&dword_1A85E5000, v138, v139, "decompress[%s]: Failed to decompress: %@", v140, 0x16u);
      sub_1A85EF638(v141, &qword_1EB306540);
      MEMORY[0x1AC571F20](v141, -1, -1);
      sub_1A85F1084(v142);
      MEMORY[0x1AC571F20](v142, -1, -1);
      MEMORY[0x1AC571F20](v140, -1, -1);
    }

    sub_1A8760454();
    swift_allocError();
    *v145 = 0;
    *(v145 + 8) = 0;
    *(v145 + 16) = -9;
    swift_willThrow();

    sub_1A88C7728();
    v121 = v169;
    v124 = *(v168 + 8);
    v124(v153, v169);

    sub_1A88C7728();
LABEL_40:

    sub_1A88C7678();
LABEL_41:

    sub_1A88C7678();
    v124(v163, v121);
  }

  v86 = v170;

  v87 = sub_1A88C7E38();
  v88 = sub_1A88C89C8();

  if (os_log_type_enabled(v87, v88))
  {
    v89 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v171[0] = v90;
    *v89 = 136315138;
    *(v89 + 4) = sub_1A85F0394(v162, v86, v171);
    _os_log_impl(&dword_1A85E5000, v87, v88, "decompress[%s]: Could not create filestream for the input file", v89, 0xCu);
    sub_1A85F1084(v90);
    MEMORY[0x1AC571F20](v90, -1, -1);
    MEMORY[0x1AC571F20](v89, -1, -1);
  }

  v91 = v168;
  sub_1A8760454();
  swift_allocError();
  *v92 = 0;
  *(v92 + 8) = 0;
  *(v92 + 16) = -9;
  swift_willThrow();
  return (*(v91 + 8))(v163, v169);
}

uint64_t sub_1A8761C0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A870CCE0(&unk_1EB3090B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A8761C7C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1A870CCE0(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A8761CE4(uint64_t a1)
{
  v2 = type metadata accessor for RemoteIntentMirrorFileRepresentation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Sequence.ck_uniqued<A>(on:)(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v57 = a6;
  v54 = a1;
  v55 = a2;
  v48 = *(a4 - 8);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v56 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v52 = &v44 - v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  v16 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v46 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v44 - v18;
  v58 = v20;
  v21 = sub_1A88C8BE8();
  v22 = MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v44 - v23;
  v25 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v49 = &v44 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedConformanceWitness = a5;
  v27 = a3;
  v60 = swift_getAssociatedTypeWitness();
  v44 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v59 = &v44 - v28;
  v29 = sub_1A88C8648();
  v30 = sub_1A88C8688();
  v53 = a4;
  if (v30)
  {
    v31 = sub_1A8762308(v29, a4, v57);
  }

  else
  {
    v31 = MEMORY[0x1E69E7CD0];
  }

  v62 = v31;
  v32 = v58;
  v61 = sub_1A88C8648();
  (*(v25 + 16))(v49, v50, v27);
  sub_1A88C84B8();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1A88C8C18();
  v49 = *(v15 + 48);
  v50 = v15 + 48;
  if ((v49)(v24, 1, v32) == 1)
  {
LABEL_5:
    (*(v44 + 8))(v59, v60);

    return v61;
  }

  else
  {
    v35 = *(v15 + 32);
    v34 = v15 + 32;
    v36 = v48 + 1;
    v47 = v35;
    v48 = (v34 - 24);
    v45 = (v34 - 16);
    v35(v19, v24, v58);
    while (1)
    {
      v54(v19);
      if (v7)
      {
        break;
      }

      v39 = v34;
      v40 = v53;
      sub_1A88C8948();
      v41 = v52;
      v42 = sub_1A88C8928();
      (*v36)(v41, v40);
      v43 = v58;
      if (v42)
      {
        (*v45)(v46, v19, v58);
        sub_1A88C86B8();
        sub_1A88C8698();
      }

      (*v48)(v19, v43);
      sub_1A88C8C18();
      v37 = (v49)(v24, 1, v43);
      v34 = v39;
      v38 = v43;
      v7 = 0;
      if (v37 == 1)
      {
        goto LABEL_5;
      }

      v47(v19, v24, v38);
    }

    (*v48)(v19, v58);
    (*(v44 + 8))(v59, v60);
  }
}