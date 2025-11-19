unint64_t sub_10008FE74()
{
  result = qword_1000DA9E0;
  if (!qword_1000DA9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA9E0);
  }

  return result;
}

unint64_t sub_10008FECC()
{
  result = qword_1000DA9E8;
  if (!qword_1000DA9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA9E8);
  }

  return result;
}

unint64_t sub_10008FF24()
{
  result = qword_1000DA9F0;
  if (!qword_1000DA9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA9F0);
  }

  return result;
}

unint64_t sub_10008FF7C()
{
  result = qword_1000DA9F8;
  if (!qword_1000DA9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA9F8);
  }

  return result;
}

unint64_t sub_10008FFD4()
{
  result = qword_1000DAA00;
  if (!qword_1000DAA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DAA00);
  }

  return result;
}

unint64_t sub_10009002C()
{
  result = qword_1000DAA08;
  if (!qword_1000DAA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DAA08);
  }

  return result;
}

unint64_t sub_100090084()
{
  result = qword_1000DAA10;
  if (!qword_1000DAA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DAA10);
  }

  return result;
}

unint64_t sub_1000900DC()
{
  result = qword_1000DAA18;
  if (!qword_1000DAA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DAA18);
  }

  return result;
}

unint64_t sub_100090134()
{
  result = qword_1000DAA20;
  if (!qword_1000DAA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DAA20);
  }

  return result;
}

uint64_t sub_100090188(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000053DC(&qword_1000DA7E8, &qword_1000B22A8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100090200()
{
  result = qword_1000DAA40;
  if (!qword_1000DAA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DAA40);
  }

  return result;
}

uint64_t sub_100090254(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000053DC(&qword_1000DA800, &qword_1000B22B0);
    sub_10008E9E8(a2, type metadata accessor for IDSHomeKitInviteeScheduleYearDayRuleSchema);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000902F0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1000053DC(&qword_1000DA790, &qword_1000B2288);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10009036C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v23 = a1;
  v22[1] = a2;
  v2 = sub_1000017BC(&qword_1000DAA70, &qword_1000B2CA8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v22 - v4;
  v6 = sub_10009F9B0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10009F9D0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10009F270();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  sub_10009F260();
  sub_1000906DC();
  v19 = v24;
  sub_10009F250();

  if (!v19)
  {
    v23 = v12;
    v24 = v11;
    sub_10009F9A0();
    v21 = *(v7 + 48);
    if (v21(v5, 1, v6) == 1)
    {
      (*(v7 + 104))(v10, enum case for CompanionAuthMessage.MessageType.stopScanning(_:), v6);
      if (v21(v5, 1, v6) != 1)
      {
        sub_100090730(v5);
      }
    }

    else
    {
      (*(v7 + 32))(v10, v5, v6);
    }

    sub_10009F9C0();
    (*(v23 + 104))(v15, enum case for IDSClientMessageType.companionAuthMessage(_:), v24);
    return sub_10009FC10();
  }

  return result;
}

unint64_t sub_100090660(uint64_t a1)
{
  result = sub_100090688();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100090688()
{
  result = qword_1000DAA68;
  if (!qword_1000DAA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DAA68);
  }

  return result;
}

unint64_t sub_1000906DC()
{
  result = qword_1000DAA78;
  if (!qword_1000DAA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DAA78);
  }

  return result;
}

uint64_t sub_100090730(uint64_t a1)
{
  v2 = sub_1000017BC(&qword_1000DAA70, &qword_1000B2CA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100090798(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC00000065636E65;
  v3 = 0x7265666E6F637661;
  v4 = a1;
  v5 = 0x496E6F6973736573;
  v6 = 0xE900000000000044;
  if (a1 != 4)
  {
    v5 = 0x6E6F6973726576;
    v6 = 0xE700000000000000;
  }

  if (a1 == 3)
  {
    v5 = 6581603;
    v6 = 0xE300000000000000;
  }

  v7 = 0x80000001000A24A0;
  v8 = 0xD00000000000001BLL;
  if (a1 != 1)
  {
    v8 = 0xD000000000000010;
    v7 = 0x80000001000A24C0;
  }

  if (!a1)
  {
    v8 = 0x7265666E6F637661;
    v7 = 0xEC00000065636E65;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  if (v4 <= 2)
  {
    v10 = v7;
  }

  else
  {
    v10 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xE300000000000000;
      if (v9 != 6581603)
      {
        goto LABEL_31;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xE900000000000044;
      if (v9 != 0x496E6F6973736573)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v2 = 0xE700000000000000;
      if (v9 != 0x6E6F6973726576)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0x80000001000A24A0;
        if (v9 != 0xD00000000000001BLL)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v3 = 0xD000000000000010;
      v2 = 0x80000001000A24C0;
    }

    if (v9 != v3)
    {
LABEL_31:
      v11 = sub_1000A0BD0();
      goto LABEL_32;
    }
  }

LABEL_28:
  if (v10 != v2)
  {
    goto LABEL_31;
  }

  v11 = 1;
LABEL_32:

  return v11 & 1;
}

uint64_t sub_100090974(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 1936486513;
    }

    else
    {
      v3 = 1852600433;
    }

    v2 = 0xE400000000000000;
  }

  else if (a1 == 2)
  {
    v2 = 0xE300000000000000;
    v3 = 6910577;
  }

  else
  {
    v2 = 0xE400000000000000;
    if (a1 == 3)
    {
      v3 = 1802728049;
    }

    else
    {
      v3 = 1953722993;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v7 = 1936486513;
    }

    else
    {
      v7 = 1852600433;
    }

    v6 = 0xE400000000000000;
    if (v3 != v7)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v4 = 1802728049;
    if (a2 != 3)
    {
      v4 = 1953722993;
    }

    if (a2 == 2)
    {
      v5 = 6910577;
    }

    else
    {
      v5 = v4;
    }

    if (a2 == 2)
    {
      v6 = 0xE300000000000000;
    }

    else
    {
      v6 = 0xE400000000000000;
    }

    if (v3 != v5)
    {
      goto LABEL_28;
    }
  }

  if (v2 != v6)
  {
LABEL_28:
    v8 = sub_1000A0BD0();
    goto LABEL_29;
  }

  v8 = 1;
LABEL_29:

  return v8 & 1;
}

uint64_t sub_100090AB4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 6910577;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 116;
    }

    else
    {
      v4 = 20596;
    }

    if (v3 == 2)
    {
      v5 = 0xE100000000000000;
    }

    else
    {
      v5 = 0xE200000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 7565937;
    }

    else
    {
      v4 = 6910577;
    }

    v5 = 0xE300000000000000;
  }

  v6 = 0xE100000000000000;
  v7 = 116;
  if (a2 != 2)
  {
    v7 = 20596;
    v6 = 0xE200000000000000;
  }

  if (a2)
  {
    v2 = 7565937;
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
    v9 = 0xE300000000000000;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1000A0BD0();
  }

  return v10 & 1;
}

uint64_t sub_100090BA8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 7811682;
    }

    else
    {
      v3 = 7221858;
    }

    v4 = 0xE300000000000000;
  }

  else if (a1 == 2)
  {
    v4 = 0x80000001000A2910;
    v3 = 0xD00000000000001BLL;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0xD000000000000023;
    }

    else
    {
      v3 = 0xD000000000000020;
    }

    if (v2 == 3)
    {
      v4 = 0x80000001000A2930;
    }

    else
    {
      v4 = 0x80000001000A2960;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 7811682;
    }

    else
    {
      v9 = 7221858;
    }

    v8 = 0xE300000000000000;
    if (v3 != v9)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v5 = 0xD000000000000023;
    v6 = 0x80000001000A2960;
    if (a2 == 3)
    {
      v6 = 0x80000001000A2930;
    }

    else
    {
      v5 = 0xD000000000000020;
    }

    if (a2 == 2)
    {
      v7 = 0xD00000000000001BLL;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0x80000001000A2910;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_32;
    }
  }

  if (v4 != v8)
  {
LABEL_32:
    v10 = sub_1000A0BD0();
    goto LABEL_33;
  }

  v10 = 1;
LABEL_33:

  return v10 & 1;
}

uint64_t sub_100090D0C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE200000000000000;
  v4 = 21345;
  v5 = 0xEC00000064696563;
  v6 = 26739;
  if (a1 != 4)
  {
    v6 = 29537;
  }

  if (a1 == 3)
  {
    v6 = 0x6172742D33622D78;
  }

  else
  {
    v5 = 0xE200000000000000;
  }

  v7 = 0xE200000000000000;
  v8 = 26994;
  if (a1 != 1)
  {
    v8 = 0xD000000000000019;
    v7 = 0x80000001000A2290;
  }

  if (a1)
  {
    v4 = v8;
    v3 = v7;
  }

  if (a1 <= 2u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v11 = 0xEC00000064696563;
      if (v9 != 0x6172742D33622D78)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v11 = 0xE200000000000000;
      if (a2 == 4)
      {
        if (v9 != 26739)
        {
          goto LABEL_34;
        }
      }

      else if (v9 != 29537)
      {
LABEL_34:
        v12 = sub_1000A0BD0();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v11 = 0xE200000000000000;
      if (v9 != 26994)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v11 = 0x80000001000A2290;
      if (v9 != 0xD000000000000019)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v11 = 0xE200000000000000;
    if (v9 != 21345)
    {
      goto LABEL_34;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_34;
  }

  v12 = 1;
LABEL_35:

  return v12 & 1;
}

uint64_t sub_100090EAC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0x4865657469766E69;
  v5 = 0xED0000656C646E61;
  v6 = 0xE800000000000000;
  v7 = 0x656D6954746E6573;
  if (a1 != 4)
  {
    v7 = 0x6D614E70756F7267;
    v6 = 0xE900000000000065;
  }

  if (a1 != 3)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0xE800000000000000;
  v9 = 0x4C52556572616873;
  if (a1 != 1)
  {
    v9 = 0x6974617469766E69;
    v8 = 0xEF6E656B6F546E6FLL;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x444970756F7267;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xED0000656C646E61;
      if (v10 != 0x4865657469766E69)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x656D6954746E6573)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE900000000000065;
      if (v10 != 0x6D614E70756F7267)
      {
LABEL_34:
        v13 = sub_1000A0BD0();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x4C52556572616873)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEF6E656B6F546E6FLL;
      if (v10 != 0x6974617469766E69)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE700000000000000;
    if (v10 != 0x444970756F7267)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_1000910CC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 1953722993;
  if (a1 != 5)
  {
    v4 = 1919971953;
  }

  v5 = 1802728049;
  if (a1 != 3)
  {
    v5 = 1769173617;
  }

  if (a1 <= 4u)
  {
    v4 = v5;
  }

  v6 = 0xE500000000000000;
  v7 = 0x3670697271;
  if (a1 != 1)
  {
    v7 = 7369329;
    v6 = 0xE300000000000000;
  }

  if (a1)
  {
    v3 = v6;
  }

  else
  {
    v7 = 1885958769;
  }

  if (a1 <= 2u)
  {
    v8 = v7;
  }

  else
  {
    v8 = v4;
  }

  if (v2 <= 2)
  {
    v9 = v3;
  }

  else
  {
    v9 = 0xE400000000000000;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v10 = 0xE500000000000000;
        if (v8 != 0x3670697271)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v10 = 0xE300000000000000;
        if (v8 != 7369329)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v10 = 0xE400000000000000;
      if (v8 != 1885958769)
      {
        goto LABEL_39;
      }
    }
  }

  else
  {
    v10 = 0xE400000000000000;
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        if (v8 != 1953722993)
        {
          goto LABEL_39;
        }
      }

      else if (v8 != 1919971953)
      {
LABEL_39:
        v11 = sub_1000A0BD0();
        goto LABEL_40;
      }
    }

    else if (a2 == 3)
    {
      if (v8 != 1802728049)
      {
        goto LABEL_39;
      }
    }

    else if (v8 != 1769173617)
    {
      goto LABEL_39;
    }
  }

  if (v9 != v10)
  {
    goto LABEL_39;
  }

  v11 = 1;
LABEL_40:

  return v11 & 1;
}

uint64_t sub_10009128C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 112;
    }

    else
    {
      v3 = 26994;
    }

    if (v2 == 2)
    {
      v4 = 0xE100000000000000;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 115;
    }

    else
    {
      v3 = 118;
    }

    v4 = 0xE100000000000000;
  }

  v5 = 118;
  v6 = 0xE100000000000000;
  v7 = 112;
  if (a2 != 2)
  {
    v7 = 26994;
    v6 = 0xE200000000000000;
  }

  if (a2)
  {
    v5 = 115;
  }

  if (a2 <= 1u)
  {
    v8 = v5;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = 0xE100000000000000;
  }

  else
  {
    v9 = v6;
  }

  if (v3 == v8 && v4 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1000A0BD0();
  }

  return v10 & 1;
}

uint64_t sub_100091380(char a1, char a2)
{
  if (*&aQpln_1[8 * a1] == *&aQpln_1[8 * a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1000A0BD0();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_1000913E8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE100000000000000;
    v12 = 115;
    if (a1 == 2)
    {
      v12 = 0xD000000000000017;
      v11 = 0x80000001000A29D0;
    }

    v13 = 0x80000001000A2990;
    v14 = 0xD000000000000015;
    if (a1)
    {
      v14 = 0xD000000000000012;
      v13 = 0x80000001000A29B0;
    }

    if (a1 <= 1u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v12;
    }

    if (v2 <= 1)
    {
      v10 = v13;
    }

    else
    {
      v10 = v11;
    }
  }

  else
  {
    v3 = 0x80000001000A2A10;
    v4 = 0xD000000000000014;
    v5 = 0x80000001000A2A30;
    v6 = 0xD000000000000019;
    if (a1 != 7)
    {
      v6 = 0xD000000000000017;
      v5 = 0x80000001000A2A50;
    }

    if (a1 != 6)
    {
      v4 = v6;
      v3 = v5;
    }

    v7 = 0x80000001000A2320;
    v8 = 0xD000000000000010;
    if (a1 != 4)
    {
      v8 = 0xD000000000000012;
      v7 = 0x80000001000A29F0;
    }

    if (a1 <= 5u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v4;
    }

    if (v2 <= 5)
    {
      v10 = v7;
    }

    else
    {
      v10 = v3;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 != 2)
      {
        v15 = 0xE100000000000000;
        if (v9 != 115)
        {
          goto LABEL_51;
        }

        goto LABEL_49;
      }

      v16 = "fanout-groupMembers-key";
      goto LABEL_45;
    }

    if (!a2)
    {
      v15 = 0x80000001000A2990;
      if (v9 != 0xD000000000000015)
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    }

    v17 = "fanout-groupID-key";
  }

  else
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v15 = 0x80000001000A2A10;
        if (v9 != 0xD000000000000014)
        {
          goto LABEL_51;
        }

        goto LABEL_49;
      }

      if (a2 == 7)
      {
        v15 = 0x80000001000A2A30;
        if (v9 != 0xD000000000000019)
        {
          goto LABEL_51;
        }

        goto LABEL_49;
      }

      v16 = "client-context-data-key";
LABEL_45:
      v15 = (v16 - 32) | 0x8000000000000000;
      if (v9 != 0xD000000000000017)
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    }

    if (a2 == 4)
    {
      v15 = 0x80000001000A2320;
      if (v9 != 0xD000000000000010)
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    }

    v17 = "participant-id-key";
  }

  v15 = (v17 - 32) | 0x8000000000000000;
  if (v9 != 0xD000000000000012)
  {
LABEL_51:
    v18 = sub_1000A0BD0();
    goto LABEL_52;
  }

LABEL_49:
  if (v10 != v15)
  {
    goto LABEL_51;
  }

  v18 = 1;
LABEL_52:

  return v18 & 1;
}

uint64_t sub_100091674(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE500000000000000;
  v4 = 0x6D77706D7472;
  v5 = 0xE100000000000000;
  if (a1 == 2)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v4 = 115;
  }

  v6 = 0xD000000000000012;
  if (a1)
  {
    v6 = 0x6B706D7472;
  }

  else
  {
    v3 = 0x80000001000A29B0;
  }

  if (a1 <= 1u)
  {
    v7 = v6;
  }

  else
  {
    v7 = v4;
  }

  if (v2 <= 1)
  {
    v8 = v3;
  }

  else
  {
    v8 = v5;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v11 = 0x6D77706D7472;
    }

    else
    {
      v11 = 115;
    }

    if (a2 == 2)
    {
      v10 = 0xE600000000000000;
    }

    else
    {
      v10 = 0xE100000000000000;
    }

    if (v7 != v11)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (a2)
    {
      v9 = 0x6B706D7472;
    }

    else
    {
      v9 = 0xD000000000000012;
    }

    if (a2)
    {
      v10 = 0xE500000000000000;
    }

    else
    {
      v10 = 0x80000001000A29B0;
    }

    if (v7 != v9)
    {
      goto LABEL_31;
    }
  }

  if (v8 != v10)
  {
LABEL_31:
    v12 = sub_1000A0BD0();
    goto LABEL_32;
  }

  v12 = 1;
LABEL_32:

  return v12 & 1;
}

uint64_t sub_100091798(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 12656;
    }

    else
    {
      v3 = 12400;
    }

    v2 = 0xE200000000000000;
  }

  else if (a1 == 2)
  {
    v3 = 0xD000000000000015;
    v2 = 0x80000001000A1310;
  }

  else if (a1 == 3)
  {
    v2 = 0xE100000000000000;
    v3 = 118;
  }

  else
  {
    v3 = 0x64726F6365526B63;
    v2 = 0xEC000000656D614ELL;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v5 = 12656;
    }

    else
    {
      v5 = 12400;
    }

    v4 = 0xE200000000000000;
    if (v3 != v5)
    {
      goto LABEL_26;
    }
  }

  else if (a2 == 2)
  {
    v4 = 0x80000001000A1310;
    if (v3 != 0xD000000000000015)
    {
      goto LABEL_26;
    }
  }

  else if (a2 == 3)
  {
    v4 = 0xE100000000000000;
    if (v3 != 118)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v4 = 0xEC000000656D614ELL;
    if (v3 != 0x64726F6365526B63)
    {
LABEL_26:
      v6 = sub_1000A0BD0();
      goto LABEL_27;
    }
  }

  if (v2 != v4)
  {
    goto LABEL_26;
  }

  v6 = 1;
LABEL_27:

  return v6 & 1;
}

uint64_t sub_100091914(char a1, char a2)
{
  if (*&aV_11[8 * a1] == *&aV_11[8 * a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1000A0BD0();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_10009197C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000012;
  if (a1 <= 3u)
  {
    v3 = 0xE100000000000000;
    v4 = 115;
    if (a1 != 2)
    {
      v4 = 0xD000000000000012;
      v3 = 0x80000001000A29B0;
    }

    v7 = 0x80000001000A2990;
    v8 = 0xD000000000000015;
    if (a1)
    {
      v8 = 0xD000000000000017;
      v7 = 0x80000001000A2A50;
    }

    v9 = a1 <= 1u;
  }

  else
  {
    v3 = 0x80000001000A2320;
    v4 = 0xD000000000000010;
    v5 = 0x80000001000A2420;
    v6 = 0xD000000000000011;
    if (a1 != 7)
    {
      v6 = 7627363;
      v5 = 0xE300000000000000;
    }

    if (a1 != 6)
    {
      v4 = v6;
      v3 = v5;
    }

    v7 = 0x80000001000A29D0;
    v8 = 0xD000000000000017;
    if (a1 != 4)
    {
      v8 = 0xD000000000000012;
      v7 = 0x80000001000A29F0;
    }

    v9 = a1 <= 5u;
  }

  if (v9)
  {
    v10 = v8;
  }

  else
  {
    v10 = v4;
  }

  if (v9)
  {
    v11 = v7;
  }

  else
  {
    v11 = v3;
  }

  if (a2 <= 3u)
  {
    if (a2 <= 1u)
    {
      if (!a2)
      {
        v12 = 0x80000001000A2990;
        v2 = 0xD000000000000015;
        goto LABEL_39;
      }

      v13 = "client-context-data-key";
LABEL_34:
      v12 = (v13 - 32) | 0x8000000000000000;
      v2 = 0xD000000000000017;
      goto LABEL_39;
    }

    if (a2 == 2)
    {
      v12 = 0xE100000000000000;
      v2 = 115;
      goto LABEL_39;
    }

    v14 = "fanout-groupID-key";
LABEL_38:
    v12 = (v14 - 32) | 0x8000000000000000;
    goto LABEL_39;
  }

  if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v13 = "fanout-groupMembers-key";
      goto LABEL_34;
    }

    v14 = "participant-id-key";
    goto LABEL_38;
  }

  if (a2 == 6)
  {
    v12 = 0x80000001000A2320;
    v2 = 0xD000000000000010;
  }

  else if (a2 == 7)
  {
    v12 = 0x80000001000A2420;
    v2 = 0xD000000000000011;
  }

  else
  {
    v12 = 0xE300000000000000;
    v2 = 7627363;
  }

LABEL_39:
  if (v10 == v2 && v11 == v12)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_1000A0BD0();
  }

  return v15 & 1;
}

uint64_t sub_100091BC0(char a1, char a2)
{
  if (*&aV_12[8 * a1] == *&aV_12[8 * a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1000A0BD0();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_100091C28(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x646E616D6D6F63;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 1702125924;
    }

    else
    {
      v4 = 0x6E6F6973726576;
    }

    if (v3 == 2)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x746E65696C63;
    }

    else
    {
      v4 = 0x646E616D6D6F63;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xE400000000000000;
  v8 = 1702125924;
  if (a2 != 2)
  {
    v8 = 0x6E6F6973726576;
    v7 = 0xE700000000000000;
  }

  if (a2)
  {
    v2 = 0x746E65696C63;
    v6 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1000A0BD0();
  }

  return v11 & 1;
}

uint64_t sub_100091D54(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE100000000000000;
  v4 = 115;
  v5 = 0xEB00000000697275;
  v6 = 0x6D6B737472;
  if (a1 == 4)
  {
    v6 = 0x6D6B6D7472;
  }

  if (a1 == 3)
  {
    v6 = 0x6D6B6D6C6C617472;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  if (a1 != 1)
  {
    v4 = 0x6D6B6D6C6C617472;
    v3 = 0xE800000000000000;
  }

  if (!a1)
  {
    v4 = 0xD000000000000012;
    v3 = 0x80000001000A29B0;
  }

  if (a1 <= 2u)
  {
    v7 = v4;
  }

  else
  {
    v7 = v6;
  }

  if (v2 <= 2)
  {
    v8 = v3;
  }

  else
  {
    v8 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v9 = 0xEB00000000697275;
      if (v7 != 0x6D6B6D6C6C617472)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v9 = 0xE500000000000000;
      if (v7 != 0x6D6B6D7472)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v9 = 0xE500000000000000;
      if (v7 != 0x6D6B737472)
      {
LABEL_34:
        v10 = sub_1000A0BD0();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v9 = 0xE100000000000000;
      if (v7 != 115)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v9 = 0xE800000000000000;
      if (v7 != 0x6D6B6D6C6C617472)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v9 = 0x80000001000A29B0;
    if (v7 != 0xD000000000000012)
    {
      goto LABEL_34;
    }
  }

  if (v8 != v9)
  {
    goto LABEL_34;
  }

  v10 = 1;
LABEL_35:

  return v10 & 1;
}

uint64_t sub_100091F20(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0xE400000000000000;
  v5 = 1702125924;
  if (a1 != 5)
  {
    v5 = 0x6E6F697461636F6CLL;
    v4 = 0xE800000000000000;
  }

  v6 = 0x5372656767697274;
  v7 = 0xED00007375746174;
  if (a1 != 3)
  {
    v6 = 118;
    v7 = 0xE100000000000000;
  }

  if (a1 > 4u)
  {
    v8 = v4;
  }

  else
  {
    v5 = v6;
    v8 = v7;
  }

  v9 = 0xD000000000000015;
  v10 = 0x444965636E6566;
  if (a1 == 1)
  {
    v10 = 1684632949;
  }

  else
  {
    v3 = 0xE700000000000000;
  }

  if (a1)
  {
    v9 = v10;
  }

  else
  {
    v3 = 0x80000001000A1310;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v2 <= 2)
  {
    v12 = v3;
  }

  else
  {
    v12 = v8;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v13 = 0xE400000000000000;
        if (v11 != 1684632949)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v13 = 0xE700000000000000;
        if (v11 != 0x444965636E6566)
        {
          goto LABEL_41;
        }
      }
    }

    else
    {
      v13 = 0x80000001000A1310;
      if (v11 != 0xD000000000000015)
      {
        goto LABEL_41;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v13 = 0xE400000000000000;
      if (v11 != 1702125924)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v13 = 0xE800000000000000;
      if (v11 != 0x6E6F697461636F6CLL)
      {
LABEL_41:
        v14 = sub_1000A0BD0();
        goto LABEL_42;
      }
    }
  }

  else if (a2 == 3)
  {
    v13 = 0xED00007375746174;
    if (v11 != 0x5372656767697274)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v13 = 0xE100000000000000;
    if (v11 != 118)
    {
      goto LABEL_41;
    }
  }

  if (v12 != v13)
  {
    goto LABEL_41;
  }

  v14 = 1;
LABEL_42:

  return v14 & 1;
}

uint64_t sub_100092134(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 7632239;
    }

    else
    {
      v3 = 28265;
    }

    if (v2)
    {
      v4 = 0xE300000000000000;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE500000000000000;
    v3 = 0x7265746E65;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 1953069157;
    }

    else
    {
      v3 = 0x6D72657465646E75;
    }

    if (v2 == 3)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0xEC00000064656E69;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 7632239;
    }

    else
    {
      v6 = 28265;
    }

    if (a2)
    {
      v5 = 0xE300000000000000;
    }

    else
    {
      v5 = 0xE200000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xE500000000000000;
    if (v3 != 0x7265746E65)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xE400000000000000;
    if (v3 != 1953069157)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v5 = 0xEC00000064656E69;
    if (v3 != 0x6D72657465646E75)
    {
LABEL_34:
      v7 = sub_1000A0BD0();
      goto LABEL_35;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_34;
  }

  v7 = 1;
LABEL_35:

  return v7 & 1;
}

uint64_t sub_1000922B0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x646E496B6E756863;
    }

    else
    {
      v3 = 0x6D754E6B6E756863;
    }

    if (v2)
    {
      v4 = 0xED000079654B7865;
    }

    else
    {
      v4 = 0xEE0079654B726562;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xD000000000000011;
    v4 = 0x80000001000A2560;
  }

  else if (a1 == 3)
  {
    v3 = 0x6F72476B6E756863;
    v4 = 0xEF79654B44497075;
  }

  else
  {
    v3 = 0x7461446B6E756863;
    v4 = 0xEC00000079654B61;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x646E496B6E756863;
    }

    else
    {
      v9 = 0x6D754E6B6E756863;
    }

    if (a2)
    {
      v8 = 0xED000079654B7865;
    }

    else
    {
      v8 = 0xEE0079654B726562;
    }

    if (v3 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x6F72476B6E756863;
    v6 = 0xEF79654B44497075;
    if (a2 != 3)
    {
      v5 = 0x7461446B6E756863;
      v6 = 0xEC00000079654B61;
    }

    if (a2 == 2)
    {
      v7 = 0xD000000000000011;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0x80000001000A2560;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v8)
  {
LABEL_33:
    v10 = sub_1000A0BD0();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_10009248C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 101;
    }

    else
    {
      v3 = 4475253;
    }

    if (v2 == 2)
    {
      v4 = 0xE100000000000000;
    }

    else
    {
      v4 = 0xE300000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 115;
    }

    else
    {
      v3 = 99;
    }

    v4 = 0xE100000000000000;
  }

  v5 = 99;
  v6 = 0xE100000000000000;
  v7 = 101;
  if (a2 != 2)
  {
    v7 = 4475253;
    v6 = 0xE300000000000000;
  }

  if (a2)
  {
    v5 = 115;
  }

  if (a2 <= 1u)
  {
    v8 = v5;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = 0xE100000000000000;
  }

  else
  {
    v9 = v6;
  }

  if (v3 == v8 && v4 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1000A0BD0();
  }

  return v10 & 1;
}

Swift::Int sub_100092588()
{
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

Swift::Int sub_10009266C()
{
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

Swift::Int sub_100092788()
{
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

Swift::Int sub_1000928AC()
{
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_1000929A4()
{
  sub_1000A05B0();
}

uint64_t sub_100092B00()
{
  sub_1000A05B0();
}

Swift::Int sub_100092C50()
{
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

Swift::Int sub_100092D68()
{
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

Swift::Int sub_100092E5C()
{
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

Swift::Int sub_100092F48()
{
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

Swift::Int sub_100093068()
{
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

Swift::Int sub_100093148()
{
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

Swift::Int sub_10009326C()
{
  v1 = *v0;
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_100093340()
{
  *v0;
  *v0;
  *v0;
  sub_1000A05B0();
}

Swift::Int sub_100093400()
{
  v1 = *v0;
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_1000934D0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10009672C(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_100093500(uint64_t *a1@<X8>)
{
  v2 = 7221858;
  v3 = *v1;
  v4 = 0xD00000000000001BLL;
  v5 = 0x80000001000A2910;
  v6 = 0x80000001000A2930;
  v7 = 0xD000000000000023;
  if (v3 != 3)
  {
    v7 = 0xD000000000000020;
    v6 = 0x80000001000A2960;
  }

  if (v3 != 2)
  {
    v4 = v7;
    v5 = v6;
  }

  if (*v1)
  {
    v2 = 7811682;
  }

  if (*v1 <= 1u)
  {
    v8 = 0xE300000000000000;
  }

  else
  {
    v2 = v4;
    v8 = v5;
  }

  *a1 = v2;
  a1[1] = v8;
}

unint64_t sub_100093590()
{
  v1 = 7221858;
  v2 = *v0;
  v3 = 0xD00000000000001BLL;
  v4 = 0xD000000000000023;
  if (v2 != 3)
  {
    v4 = 0xD000000000000020;
  }

  if (v2 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v1 = 7811682;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10009361C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10009672C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100093644(uint64_t a1)
{
  v2 = sub_1000939A0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100093680(uint64_t a1)
{
  v2 = sub_1000939A0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t GroupSessionParticipantSchema.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000017BC(&qword_1000DAA80, &unk_1000B2CB0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15[-v8 - 8];
  v10 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_1000939A0();
  sub_1000A0CE0();
  v21 = *v3;
  v17 = *v3;
  v16 = 0;
  sub_100005620(&v21, v15, &qword_1000D83D8, &qword_1000A5D68);
  sub_100006804();
  sub_1000A0AD0();
  if (!v2)
  {
    sub_1000057B0(v17, *(&v17 + 1));
    v20 = v3[1];
    v17 = v3[1];
    v16 = 1;
    sub_100005620(&v20, v15, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v17, *(&v17 + 1));
    v12 = *(v3 + 4);
    v13 = *(v3 + 5);
    LOBYTE(v17) = 2;
    sub_1000A0A80();
    v19 = v3[3];
    v17 = v3[3];
    v16 = 3;
    sub_100005620(&v19, v15, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v17, *(&v17 + 1));
    v17 = v3[4];
    v18 = v17;
    v16 = 4;
    sub_100005620(&v18, v15, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
  }

  sub_1000057B0(v17, *(&v17 + 1));
  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1000939A0()
{
  result = qword_1000DAA88;
  if (!qword_1000DAA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DAA88);
  }

  return result;
}

__n128 GroupSessionParticipantSchema.init(from:)@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100096778(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v6[4];
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

unint64_t sub_100093A40(char a1)
{
  result = 115;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
    case 10:
      result = 0xD000000000000017;
      break;
    case 3:
      return result;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 7627363;
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0xD000000000000014;
      break;
    case 9:
      result = 0xD000000000000019;
      break;
    case 11:
      result = 0x6B706D7472;
      break;
    case 12:
      result = 0x6D77706D7472;
      break;
    default:
      result = 0xD000000000000015;
      break;
  }

  return result;
}

uint64_t sub_100093C54@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100096DA0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_100093C84@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100093A40(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100093CCC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100096DA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100093CF4(uint64_t a1)
{
  v2 = sub_100096C30();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100093D30(uint64_t a1)
{
  v2 = sub_100096C30();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t GroupSessionJoinSchema.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000017BC(&qword_1000DAA90, &unk_1000B2CC0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v25[-v8 - 8];
  v10 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_100096C30();
  sub_1000A0CE0();
  v11 = *v3;
  LOBYTE(v27) = 0;
  sub_1000A0B60();
  if (!v2)
  {
    v12 = v3[1];
    v13 = v3[2];
    LOBYTE(v27) = 1;
    sub_1000A0B30();
    *&v27 = v3[3];
    v25[0] = 2;
    sub_1000017BC(&qword_1000D9940, &qword_1000AC250);
    sub_1000612BC(&qword_1000D9948);
    sub_1000A0B80();
    v14 = v3[4];
    v15 = v3[5];
    LOBYTE(v27) = 3;
    sub_1000A0B30();
    v16 = *(v3 + 48);
    LOBYTE(v27) = 4;
    sub_1000A0B40();
    v17 = *(v3 + 49);
    LOBYTE(v27) = 5;
    sub_1000A0A90();
    v18 = v3[7];
    v19 = *(v3 + 64);
    LOBYTE(v27) = 6;
    sub_1000A0AA0();
    v20 = v3[9];
    LOBYTE(v27) = 7;
    sub_1000A0BB0();
    v30 = *(v3 + 5);
    v27 = *(v3 + 5);
    v26 = 8;
    sub_1000421FC(&v30, v25);
    sub_100006804();
    sub_1000A0B80();
    sub_100005568(v27, *(&v27 + 1));
    *&v27 = v3[12];
    v25[0] = 9;
    sub_1000017BC(&qword_1000DAAA0, &qword_1000B2CD0);
    sub_100096C84();
    sub_1000A0AD0();
    v29 = *(v3 + 13);
    v27 = *(v3 + 13);
    v26 = 10;
    sub_100005620(&v29, v25, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v27, *(&v27 + 1));
    v27 = *(v3 + 15);
    v28 = v27;
    v26 = 11;
    sub_100005620(&v28, v25, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v27, *(&v27 + 1));
    v21 = v3[17];
    v22 = *(v3 + 144);
    LOBYTE(v27) = 12;
    sub_1000A0AB0();
  }

  return (*(v6 + 8))(v9, v5);
}

double GroupSessionJoinSchema.init(from:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100096DEC(a1, v9);
  if (!v2)
  {
    v5 = v9[7];
    *(a2 + 96) = v9[6];
    *(a2 + 112) = v5;
    *(a2 + 128) = v9[8];
    *(a2 + 144) = v10;
    v6 = v9[3];
    *(a2 + 32) = v9[2];
    *(a2 + 48) = v6;
    v7 = v9[5];
    *(a2 + 64) = v9[4];
    *(a2 + 80) = v7;
    result = *v9;
    v8 = v9[1];
    *a2 = v9[0];
    *(a2 + 16) = v8;
  }

  return result;
}

unint64_t sub_100094240(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 115;
    if (a1 != 2)
    {
      v5 = 0xD000000000000012;
    }

    v6 = 0xD000000000000017;
    if (!a1)
    {
      v6 = 0xD000000000000015;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0xD000000000000010;
    v2 = 0xD000000000000011;
    if (a1 != 7)
    {
      v2 = 7627363;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000017;
    if (a1 != 4)
    {
      v3 = 0xD000000000000012;
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

uint64_t sub_1000943BC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000975B4(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_1000943EC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100094240(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100094434@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000975B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100094468(uint64_t a1)
{
  v2 = sub_100097560();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000944A4(uint64_t a1)
{
  v2 = sub_100097560();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t GroupSessionLeaveSchema.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000017BC(&qword_1000DAAC0, &qword_1000B2CE0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v23[-v8 - 8];
  v10 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_100097560();
  sub_1000A0CE0();
  v11 = *v3;
  LOBYTE(v24) = 0;
  sub_1000A0B60();
  if (!v2)
  {
    v24 = *(v3 + 1);
    v25 = v24;
    v23[23] = 1;
    sub_100005620(&v25, v23, &qword_1000D83D8, &qword_1000A5D68);
    sub_100006804();
    sub_1000A0AD0();
    sub_1000057B0(v24, *(&v24 + 1));
    v12 = v3[3];
    v13 = v3[4];
    LOBYTE(v24) = 2;
    sub_1000A0B30();
    v14 = v3[5];
    v15 = v3[6];
    LOBYTE(v24) = 3;
    sub_1000A0B30();
    *&v24 = v3[7];
    v23[0] = 4;
    sub_1000017BC(&qword_1000D9940, &qword_1000AC250);
    sub_1000612BC(&qword_1000D9948);
    sub_1000A0B80();
    v16 = v3[8];
    LOBYTE(v24) = 5;
    sub_1000A0BB0();
    v17 = *(v3 + 72);
    LOBYTE(v24) = 6;
    sub_1000A0B40();
    v18 = *(v3 + 73);
    LOBYTE(v24) = 7;
    sub_1000A0A90();
    v19 = v3[10];
    v20 = *(v3 + 88);
    LOBYTE(v24) = 8;
    sub_1000A0AA0();
  }

  return (*(v6 + 8))(v9, v5);
}

double GroupSessionLeaveSchema.init(from:)@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100097600(a1, v7);
  if (!v2)
  {
    v5 = v7[3];
    a2[2] = v7[2];
    a2[3] = v5;
    a2[4] = v8[0];
    *(a2 + 73) = *(v8 + 9);
    result = *v7;
    v6 = v7[1];
    *a2 = v7[0];
    a2[1] = v6;
  }

  return result;
}

uint64_t sub_100094850(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 6908781;
    v7 = 7564141;
    v8 = 1667722093;
    if (a1 != 3)
    {
      v8 = 6908787;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 7170925;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x6D77706D7472;
    v2 = 0x7069636974726170;
    if (a1 != 9)
    {
      v2 = 0x6C696B6D73;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 7170931;
    v4 = 7564147;
    if (a1 != 6)
    {
      v4 = 1667722099;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1000949A0(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a2;
  v7 = a5(*a1);
  v9 = v8;
  if (v7 == a5(v6) && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1000A0BD0();
  }

  return v12 & 1;
}

Swift::Int sub_100094A4C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *v3;
  sub_1000A0C60();
  a3(v5);
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_100094AD0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4(*v4);
  sub_1000A05B0();
}

Swift::Int sub_100094B40(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = *v4;
  sub_1000A0C60();
  a4(v6);
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_100094BA8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100097C4C(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_100094BD8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100094850(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100094C20@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100097C4C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100094C54(uint64_t a1)
{
  v2 = sub_100097BF8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100094C90(uint64_t a1)
{
  v2 = sub_100097BF8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t KeyMaterialSchema.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000017BC(&qword_1000DAAD0, &qword_1000B2CE8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v23[-v8 - 8];
  v10 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_100097BF8();
  sub_1000A0CE0();
  v31 = *v3;
  v25 = *v3;
  v24 = 0;
  sub_100005620(&v31, v23, &qword_1000D83D8, &qword_1000A5D68);
  sub_100006804();
  sub_1000A0AD0();
  if (v2)
  {
    sub_1000057B0(v25, *(&v25 + 1));
  }

  else
  {
    sub_1000057B0(v25, *(&v25 + 1));
    v30 = v3[1];
    v25 = v3[1];
    v24 = 1;
    sub_100005620(&v30, v23, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v25, *(&v25 + 1));
    v29 = v3[2];
    v25 = v3[2];
    v24 = 2;
    sub_100005620(&v29, v23, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v25, *(&v25 + 1));
    v12 = *(v3 + 12);
    v13 = *(v3 + 52);
    LOBYTE(v25) = 3;
    v23[0] = v13;
    sub_1000A0B10();
    v28 = *(v3 + 56);
    v25 = *(v3 + 56);
    v24 = 4;
    sub_100005620(&v28, v23, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v25, *(&v25 + 1));
    v27 = *(v3 + 72);
    v25 = *(v3 + 72);
    v24 = 5;
    sub_100005620(&v27, v23, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v25, *(&v25 + 1));
    v25 = *(v3 + 88);
    v26 = v25;
    v24 = 6;
    sub_100005620(&v26, v23, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v25, *(&v25 + 1));
    v14 = *(v3 + 26);
    v15 = *(v3 + 108);
    LOBYTE(v25) = 7;
    v23[0] = v15;
    sub_1000A0B10();
    v16 = *(v3 + 14);
    v17 = *(v3 + 120);
    LOBYTE(v25) = 8;
    sub_1000A0AB0();
    v18 = *(v3 + 16);
    v19 = *(v3 + 136);
    LOBYTE(v25) = 9;
    sub_1000A0B20();
    v20 = *(v3 + 137);
    v21 = *(v3 + 138);
    LOBYTE(v25) = 10;
    sub_1000A0AF0();
  }

  return (*(v6 + 8))(v9, v5);
}

__n128 KeyMaterialSchema.init(from:)@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100097C98(a1, v8);
  if (!v2)
  {
    v5 = v9[0];
    *(a2 + 96) = v8[6];
    *(a2 + 112) = v5;
    *(a2 + 123) = *(v9 + 11);
    v6 = v8[3];
    *(a2 + 32) = v8[2];
    *(a2 + 48) = v6;
    v7 = v8[5];
    *(a2 + 64) = v8[4];
    *(a2 + 80) = v7;
    result = v8[1];
    *a2 = v8[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_1000951E0()
{
  *v0;
  *v0;
  sub_1000A05B0();
}

uint64_t sub_1000952C8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100098480(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_1000952F8(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE100000000000000;
  v4 = 115;
  v5 = 0xEB00000000697275;
  v6 = 0x6D6B6D6C6C617472;
  v7 = 0x6D6B6D7472;
  if (v2 != 4)
  {
    v7 = 0x6D6B737472;
  }

  if (v2 != 3)
  {
    v6 = v7;
    v5 = 0xE500000000000000;
  }

  if (v2 != 1)
  {
    v4 = 0x6D6B6D6C6C617472;
    v3 = 0xE800000000000000;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000012;
    v3 = 0x80000001000A29B0;
  }

  if (*v1 <= 2u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

unint64_t sub_1000953A8()
{
  v1 = *v0;
  v2 = 115;
  v3 = 0x6D6B6D6C6C617472;
  v4 = 0x6D6B6D7472;
  if (v1 != 4)
  {
    v4 = 0x6D6B737472;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0x6D6B6D6C6C617472;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100095454@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100098480(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10009547C(uint64_t a1)
{
  v2 = sub_100098370();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000954B8(uint64_t a1)
{
  v2 = sub_100098370();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t GroupSessionMKMSchema.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000017BC(&qword_1000DAAE0, &qword_1000B2CF0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v32 - v8;
  v10 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_100098370();
  sub_1000A0CE0();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v46) = 0;
  sub_1000A0B30();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    LOBYTE(v46) = 1;
    sub_1000A0B30();
    *&v46 = v3[4];
    LOBYTE(v43[0]) = 2;
    sub_1000017BC(&qword_1000DAAF0, &qword_1000B2CF8);
    sub_10009A764(&qword_1000DAAF8, sub_1000983C4);
    sub_1000A0AD0();
    *&v46 = v3[5];
    LOBYTE(v43[0]) = 3;
    sub_1000017BC(&qword_1000D9940, &qword_1000AC250);
    sub_1000612BC(&qword_1000D9948);
    sub_1000A0B80();
    v15 = *(v3 + 8);
    v16 = *(v3 + 10);
    v66 = *(v3 + 9);
    v67[0] = v16;
    *(v67 + 11) = *(v3 + 171);
    v17 = *(v3 + 4);
    v18 = *(v3 + 6);
    v62 = *(v3 + 5);
    v63 = v18;
    v19 = *(v3 + 6);
    v20 = *(v3 + 8);
    v64 = *(v3 + 7);
    v65 = v20;
    v21 = *(v3 + 4);
    v61[0] = *(v3 + 3);
    v61[1] = v21;
    v22 = *(v3 + 10);
    v52 = v66;
    v53[0] = v22;
    *(v53 + 11) = *(v3 + 171);
    v48 = v62;
    v49 = v19;
    v50 = v64;
    v51 = v15;
    v46 = v61[0];
    v47 = v17;
    v45 = 4;
    sub_100005620(v61, v43, &qword_1000DAB08, &qword_1000B2D00);
    sub_1000983C4();
    sub_1000A0AD0();
    v43[6] = v52;
    *v44 = v53[0];
    *&v44[11] = *(v53 + 11);
    v43[2] = v48;
    v43[3] = v49;
    v43[4] = v50;
    v43[5] = v51;
    v43[0] = v46;
    v43[1] = v47;
    sub_100098418(v43);
    v23 = *(v3 + 17);
    v24 = *(v3 + 19);
    v59 = *(v3 + 18);
    v60[0] = v24;
    *(v60 + 11) = *(v3 + 315);
    v25 = *(v3 + 13);
    v26 = *(v3 + 15);
    v55 = *(v3 + 14);
    v56 = v26;
    v27 = *(v3 + 15);
    v28 = *(v3 + 17);
    v57 = *(v3 + 16);
    v58 = v28;
    v29 = *(v3 + 13);
    v54[0] = *(v3 + 12);
    v54[1] = v29;
    v30 = *(v3 + 19);
    v41 = v59;
    v42[0] = v30;
    *(v42 + 11) = *(v3 + 315);
    v37 = v55;
    v38 = v27;
    v39 = v57;
    v40 = v23;
    v35 = v54[0];
    v36 = v25;
    v34 = 5;
    sub_100005620(v54, v32, &qword_1000DAB08, &qword_1000B2D00);
    sub_1000A0AD0();
    v32[6] = v41;
    *v33 = v42[0];
    *&v33[11] = *(v42 + 11);
    v32[2] = v37;
    v32[3] = v38;
    v32[4] = v39;
    v32[5] = v40;
    v32[0] = v35;
    v32[1] = v36;
    sub_100098418(v32);
  }

  return (*(v6 + 8))(v9, v5);
}

void *GroupSessionMKMSchema.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1000984CC(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x14BuLL);
  }

  return result;
}

Swift::Int sub_1000959EC()
{
  v1 = *v0;
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_100095AA0()
{
  *v0;
  *v0;
  sub_1000A05B0();
}

Swift::Int sub_100095B40()
{
  v1 = *v0;
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_100095BF0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100098B60(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_100095C20(unint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x6B706D7472;
  v4 = 0xE600000000000000;
  v5 = 0x6D77706D7472;
  if (*v1 != 2)
  {
    v5 = 115;
    v4 = 0xE100000000000000;
  }

  if (!*v1)
  {
    v3 = 0xD000000000000012;
    v2 = 0x80000001000A29B0;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_100095C90()
{
  v1 = 0x6B706D7472;
  v2 = 0x6D77706D7472;
  if (*v0 != 2)
  {
    v2 = 115;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100095CFC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100098B60(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100095D24(uint64_t a1)
{
  v2 = sub_100098B0C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100095D60(uint64_t a1)
{
  v2 = sub_100098B0C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t GroupSessionPrekeySchema.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000017BC(&qword_1000DAB10, &qword_1000B2D08);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19[-v8 - 8];
  v10 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_100098B0C();
  sub_1000A0CE0();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v20) = 0;
  sub_1000A0B30();
  if (!v2)
  {
    v20 = *(v3 + 1);
    v21 = v20;
    v19[23] = 1;
    sub_1000421FC(&v21, v19);
    sub_100006804();
    sub_1000A0B80();
    sub_100005568(v20, *(&v20 + 1));
    v13 = v3[4];
    v14 = *(v3 + 40);
    LOBYTE(v20) = 2;
    sub_1000A0AB0();
    v15 = v3[6];
    v16 = v3[7];
    LOBYTE(v20) = 3;
    sub_1000A0B30();
  }

  return (*(v6 + 8))(v9, v5);
}

double GroupSessionPrekeySchema.init(from:)@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100098BAC(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

unint64_t sub_100095FC8(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 115;
    if (a1 == 2)
    {
      v5 = 0xD000000000000017;
    }

    v6 = 0xD000000000000015;
    if (a1)
    {
      v6 = 0xD000000000000012;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0xD000000000000014;
    v2 = 0xD000000000000019;
    if (a1 != 7)
    {
      v2 = 0xD000000000000017;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000010;
    if (a1 != 4)
    {
      v3 = 0xD000000000000012;
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

Swift::Int sub_10009612C(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  v5 = *v3;
  sub_1000A0C60();
  a3(v7, v5);
  return sub_1000A0C90();
}

Swift::Int sub_10009619C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1000A0C60();
  a4(v8, v6);
  return sub_1000A0C90();
}

uint64_t sub_1000961E8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100098EF0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_100096218@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100095FC8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100096260@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100098EF0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100096288(uint64_t a1)
{
  v2 = sub_100098E9C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000962C4(uint64_t a1)
{
  v2 = sub_100098E9C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t GroupSessionUpdateSchema.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000017BC(&qword_1000DAB20, &qword_1000B2D10);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v20[-v8 - 8];
  v10 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_100098E9C();
  sub_1000A0CE0();
  v11 = *v3;
  LOBYTE(v22) = 0;
  sub_1000A0B60();
  if (!v2)
  {
    v13 = v3[1];
    v14 = v3[2];
    LOBYTE(v22) = 1;
    sub_1000A0B30();
    *&v22 = v3[3];
    v20[0] = 2;
    sub_1000017BC(&qword_1000D9940, &qword_1000AC250);
    sub_1000612BC(&qword_1000D9948);
    sub_1000A0B80();
    v15 = v3[4];
    v16 = v3[5];
    LOBYTE(v22) = 3;
    sub_1000A0B30();
    v17 = *(v3 + 48);
    LOBYTE(v22) = 4;
    sub_1000A0B40();
    v18 = v3[7];
    LOBYTE(v22) = 5;
    sub_1000A0BB0();
    v24 = *(v3 + 4);
    v22 = *(v3 + 4);
    v21 = 6;
    sub_1000421FC(&v24, v20);
    sub_100006804();
    sub_1000A0B80();
    sub_100005568(v22, *(&v22 + 1));
    *&v22 = v3[10];
    v20[0] = 7;
    sub_1000017BC(&qword_1000DAAA0, &qword_1000B2CD0);
    sub_100096C84();
    sub_1000A0AD0();
    v22 = *(v3 + 11);
    v23 = v22;
    v21 = 8;
    sub_100005620(&v23, v20, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v22, *(&v22 + 1));
  }

  return (*(v6 + 8))(v9, v5);
}

__n128 GroupSessionUpdateSchema.init(from:)@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100098F3C(a1, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v5;
    *(a2 + 96) = v8;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    result = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = result;
  }

  return result;
}

uint64_t sub_10009672C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000CDE28;
  v6._object = a2;
  v4 = sub_1000A08F0(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100096778@<X0>(uint64_t *a1@<X0>, unsigned __int128 *a2@<X8>)
{
  v5 = sub_1000017BC(&qword_1000DAC28, &unk_1000B4A88);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_1000939A0();
  sub_1000A0CD0();
  if (v2)
  {
    return sub_100002308(a1);
  }

  LOBYTE(v29) = 0;
  sub_100005424();
  sub_1000A0970();
  v28 = v34;
  LOBYTE(v29) = 1;
  sub_1000A0970();
  v27 = v34;
  LOBYTE(v34) = 2;
  *&v26 = sub_1000A0920();
  *(&v26 + 1) = v11;
  LOBYTE(v29) = 3;
  sub_1000A0970();
  v25 = v34;
  v43 = 4;
  sub_1000A0970();
  (*(v6 + 8))(v9, v5);
  v23 = *(&v42 + 1);
  v24 = v42;
  v14 = v28;
  v12 = v14 >> 64;
  v13 = v14;
  v29 = v28;
  v15 = v27;
  v30 = v27;
  v16 = *(&v27 + 1);
  v17 = v26;
  v31 = v26;
  v18 = *(&v26 + 1);
  v32 = v25;
  v33 = v42;
  sub_10009A8D8(&v29, &v34);
  sub_100002308(a1);
  v34 = __PAIR128__(v12, v13);
  v35 = v15;
  v36 = v16;
  v37 = v17;
  v38 = v18;
  v39 = v25;
  v40 = v24;
  v41 = v23;
  result = sub_100084FDC(&v34);
  v20 = v32;
  a2[2] = v31;
  a2[3] = v20;
  a2[4] = v33;
  v21 = v30;
  *a2 = v29;
  a2[1] = v21;
  return result;
}

unint64_t sub_100096C30()
{
  result = qword_1000DAA98;
  if (!qword_1000DAA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DAA98);
  }

  return result;
}

unint64_t sub_100096C84()
{
  result = qword_1000DAAA8;
  if (!qword_1000DAAA8)
  {
    sub_1000053DC(&qword_1000DAAA0, &qword_1000B2CD0);
    sub_100096D34(&qword_1000DAAB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DAAA8);
  }

  return result;
}

uint64_t sub_100096D34(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1000053DC(&qword_1000DAAB8, &qword_1000B2CD8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100096DA0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000CDEC0;
  v6._object = a2;
  v4 = sub_1000A08F0(v3, v6);

  if (v4 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100096DEC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v90 = sub_1000017BC(&qword_1000DAC20, &qword_1000B4A80);
  v5 = *(v90 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v90);
  v8 = &v33 - v7;
  v9 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_100096C30();
  sub_1000A0CD0();
  if (v2)
  {
    return sub_100002308(a1);
  }

  v10 = v5;
  LOBYTE(v61) = 0;
  v11 = v90;
  v12 = sub_1000A0A00();
  LOBYTE(v61) = 1;
  v48 = sub_1000A09D0();
  v49 = v14;
  sub_1000017BC(&qword_1000D9940, &qword_1000AC250);
  LOBYTE(v51) = 2;
  sub_1000612BC(&qword_1000D9B20);
  sub_1000A0A20();
  v47 = v61;
  LOBYTE(v61) = 3;
  v41 = sub_1000A09D0();
  v46 = v15;
  LOBYTE(v61) = 4;
  v40 = sub_1000A09E0();
  LOBYTE(v61) = 5;
  v39 = sub_1000A0930();
  LOBYTE(v61) = 6;
  v38 = sub_1000A0940();
  v87 = v17 & 1;
  LOBYTE(v61) = 7;
  v18 = sub_1000A0A50();
  v50 = 0;
  v36 = v18;
  LOBYTE(v51) = 8;
  v37 = sub_100005424();
  v19 = v50;
  sub_1000A0A20();
  v50 = v19;
  if (v19)
  {
    (*(v10 + 8))(v8, v11);
    v16 = 0;
  }

  else
  {
    v35 = v61;
    v45 = v62;
    sub_1000017BC(&qword_1000DAAA0, &qword_1000B2CD0);
    LOBYTE(v51) = 9;
    sub_10009A644();
    v20 = v50;
    sub_1000A0970();
    v50 = v20;
    if (!v20)
    {
      v44 = v61;
      LOBYTE(v51) = 10;
      sub_1000A0970();
      v50 = 0;
      v42 = v62;
      v43 = v61;
      LOBYTE(v51) = 11;
      sub_1000A0970();
      v50 = 0;
      v34 = v61;
      v37 = v62;
      v84 = 12;
      v21 = sub_1000A0950();
      v50 = 0;
      v22 = v21;
      v24 = v23;
      v25 = v40 & 1;
      (*(v10 + 8))(v8, v90);
      v85 = v24 & 1;
      v26 = v48;
      v27 = v49;
      *&v51 = v12;
      *(&v51 + 1) = v48;
      *&v52 = v49;
      *(&v52 + 1) = v47;
      v28 = v41;
      *&v53 = v41;
      *(&v53 + 1) = v46;
      LOBYTE(v54) = v25;
      BYTE1(v54) = v39;
      *(&v54 + 1) = v38;
      v40 = v87;
      LOBYTE(v55) = v87;
      *(&v55 + 1) = v36;
      *&v56 = v35;
      *(&v56 + 1) = v45;
      *&v57 = v44;
      *(&v57 + 1) = v43;
      *&v58 = v42;
      *(&v58 + 1) = v34;
      *&v59 = v37;
      *(&v59 + 1) = v22;
      LODWORD(v90) = v85;
      v60 = v85;
      sub_10009A8A0(&v51, &v61);
      sub_100002308(a1);
      v61 = v12;
      v62 = v26;
      v63 = v27;
      v64 = v47;
      v65 = v28;
      v66 = v46;
      v67 = v25;
      v68 = v39;
      v69 = v88;
      v70 = v89;
      v71 = v38;
      v72 = v40;
      *v73 = *v86;
      *&v73[3] = *&v86[3];
      v74 = v36;
      v75 = v35;
      v76 = v45;
      v77 = v44;
      v78 = v43;
      v79 = v42;
      v80 = v34;
      v81 = v37;
      v82 = v22;
      v83 = v90;
      result = sub_100083D98(&v61);
      v29 = v58;
      *(a2 + 96) = v57;
      *(a2 + 112) = v29;
      *(a2 + 128) = v59;
      *(a2 + 144) = v60;
      v30 = v54;
      *(a2 + 32) = v53;
      *(a2 + 48) = v30;
      v31 = v56;
      *(a2 + 64) = v55;
      *(a2 + 80) = v31;
      v32 = v52;
      *a2 = v51;
      *(a2 + 16) = v32;
      return result;
    }

    (*(v10 + 8))(v8, v90);
    v16 = 1;
    v11 = v35;
  }

  sub_100002308(a1);

  if (v16)
  {
    return sub_100005568(v11, v45);
  }

  return result;
}

unint64_t sub_100097560()
{
  result = qword_1000DAAC8;
  if (!qword_1000DAAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DAAC8);
  }

  return result;
}

uint64_t sub_1000975B4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000CE018;
  v6._object = a2;
  v4 = sub_1000A08F0(v3, v6);

  if (v4 >= 9)
  {
    return 9;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100097600@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1000017BC(&qword_1000DAC18, &qword_1000B4A78);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_100097560();
  sub_1000A0CD0();
  if (v2)
  {
    return sub_100002308(a1);
  }

  LOBYTE(v39) = 0;
  v11 = sub_1000A0A00();
  LOBYTE(v34) = 1;
  sub_100005424();
  sub_1000A0970();
  v32 = v39;
  v33 = v40;
  LOBYTE(v39) = 2;
  v12 = sub_1000A09D0();
  v31 = v13;
  v29 = v12;
  LOBYTE(v39) = 3;
  v28 = sub_1000A09D0();
  v30 = v14;
  sub_1000017BC(&qword_1000D9940, &qword_1000AC250);
  LOBYTE(v34) = 4;
  sub_1000612BC(&qword_1000D9B20);
  sub_1000A0A20();
  v27 = v39;
  LOBYTE(v39) = 5;
  v26 = sub_1000A0A50();
  LOBYTE(v39) = 6;
  v25 = sub_1000A09E0();
  LOBYTE(v39) = 7;
  v24 = sub_1000A0930();
  v53 = 8;
  v15 = sub_1000A0940();
  v17 = v16;
  v25 &= 1u;
  (*(v6 + 8))(v9, v5);
  v17 &= 1u;
  v52 = v17;
  *&v34 = v11;
  v18 = v32;
  *(&v34 + 1) = v32;
  v19 = v33;
  *&v35 = v33;
  v20 = v31;
  *(&v35 + 1) = v29;
  *&v36 = v31;
  *(&v36 + 1) = v28;
  *&v37 = v30;
  *(&v37 + 1) = v27;
  *v38 = v26;
  v38[8] = v25;
  v38[9] = v24;
  *&v38[16] = v15;
  v38[24] = v17;
  sub_10009A868(&v34, &v39);
  sub_100002308(a1);
  v39 = v11;
  v40 = v18;
  v41 = v19;
  v42 = v29;
  v43 = v20;
  v44 = v28;
  v45 = v30;
  v46 = v27;
  v47 = v26;
  v48 = v25;
  v49 = v24;
  v50 = v15;
  v51 = v17;
  result = sub_100085084(&v39);
  v22 = v37;
  a2[2] = v36;
  a2[3] = v22;
  a2[4] = *v38;
  *(a2 + 73) = *&v38[9];
  v23 = v35;
  *a2 = v34;
  a2[1] = v23;
  return result;
}

unint64_t sub_100097BF8()
{
  result = qword_1000DAAD8;
  if (!qword_1000DAAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DAAD8);
  }

  return result;
}

uint64_t sub_100097C4C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000CE110;
  v6._object = a2;
  v4 = sub_1000A08F0(v3, v6);

  if (v4 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100097C98@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v82 = sub_1000017BC(&qword_1000DAC10, &qword_1000B4A70);
  v5 = *(v82 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v82);
  v8 = &v25 - v7;
  v9 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_100097BF8();
  sub_1000A0CD0();
  if (v2)
  {
    return sub_100002308(a1);
  }

  v10 = v5;
  v41 = a2;
  LOBYTE(v42) = 0;
  sub_100005424();
  sub_1000A0970();
  v40 = v49[0];
  LOBYTE(v42) = 1;
  sub_1000A0970();
  v39 = v49[0];
  LOBYTE(v42) = 2;
  sub_1000A0970();
  v38 = v49[0];
  LOBYTE(v49[0]) = 3;
  v11 = sub_1000A09B0();
  v81 = BYTE4(v11) & 1;
  LOBYTE(v42) = 4;
  v33 = v11;
  sub_1000A0970();
  v36 = *(&v49[0] + 1);
  v37 = *&v49[0];
  LOBYTE(v42) = 5;
  sub_1000A0970();
  v34 = *(&v49[0] + 1);
  v35 = *&v49[0];
  LOBYTE(v42) = 6;
  sub_1000A0970();
  v12 = v49[0];
  LOBYTE(v49[0]) = 7;
  v31 = sub_1000A09B0();
  v78 = BYTE4(v31) & 1;
  LOBYTE(v49[0]) = 8;
  v32 = sub_1000A0950();
  v75 = v13 & 1;
  LOBYTE(v49[0]) = 9;
  v14 = sub_1000A09C0();
  v73 = v15 & 1;
  v71 = 10;
  v16 = sub_1000A0990();
  (*(v10 + 8))(v8, v82);
  v72 = HIBYTE(v16) & 1;
  v17 = v40;
  v42 = v40;
  v43 = v39;
  v44 = v38;
  LODWORD(v10) = v33;
  LODWORD(v45) = v33;
  v26 = v81;
  BYTE4(v45) = v81;
  *(&v45 + 1) = v37;
  *&v46 = v36;
  *(&v46 + 1) = v35;
  *v47 = v34;
  *&v47[8] = v12;
  v28 = *(&v12 + 1);
  v18 = v31;
  *&v47[24] = v31;
  v27 = v78;
  v47[28] = v78;
  *v48 = v32;
  v29 = v75;
  v48[8] = v75;
  *&v48[16] = v14;
  LODWORD(v82) = v73;
  v48[24] = v73;
  *&v48[25] = v16 & 0x1FF;
  v30 = HIBYTE(v16) & 1;
  sub_100085248(&v42, v49);
  sub_100002308(a1);
  v49[0] = __PAIR128__(*(&v40 + 1), v17);
  v49[1] = v39;
  v49[2] = v38;
  v50 = v10;
  v51 = v26;
  v52 = v79;
  v53 = v80;
  v54 = v37;
  v55 = v36;
  v56 = v35;
  v57 = v34;
  v58 = v12;
  v59 = v28;
  v60 = v18;
  v61 = v27;
  v62 = v76;
  v63 = v77;
  v64 = v32;
  v65 = v29;
  *v66 = *v74;
  *&v66[3] = *&v74[3];
  v67 = v14;
  v68 = v82;
  v69 = v16;
  v70 = v30;
  result = sub_1000852F8(v49);
  v20 = *v48;
  v21 = v41;
  v41[6] = *&v47[16];
  v21[7] = v20;
  *(v21 + 123) = *&v48[11];
  v22 = v45;
  v21[2] = v44;
  v21[3] = v22;
  v23 = *v47;
  v21[4] = v46;
  v21[5] = v23;
  v24 = v43;
  *v21 = v42;
  v21[1] = v24;
  return result;
}

unint64_t sub_100098370()
{
  result = qword_1000DAAE8;
  if (!qword_1000DAAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DAAE8);
  }

  return result;
}

unint64_t sub_1000983C4()
{
  result = qword_1000DAB00;
  if (!qword_1000DAB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DAB00);
  }

  return result;
}

uint64_t sub_100098418(uint64_t a1)
{
  v2 = sub_1000017BC(&qword_1000DAB08, &qword_1000B2D00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100098480(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000CE238;
  v6._object = a2;
  v4 = sub_1000A08F0(v3, v6);

  if (v4 >= 6)
  {
    return 6;
  }

  else
  {
    return v4;
  }
}

void *sub_1000984CC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1000017BC(&qword_1000DABF8, &qword_1000B4A68);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v66 = a1;
  sub_1000022C4(a1, v10);
  sub_100098370();
  sub_1000A0CD0();
  if (v2)
  {
    return sub_100002308(v66);
  }

  LOBYTE(v28[0]) = 0;
  v12 = sub_1000A09D0();
  v15 = v14;
  v26 = v12;
  LOBYTE(v28[0]) = 1;
  *&v24 = sub_1000A09D0();
  *(&v24 + 1) = v16;
  sub_1000017BC(&qword_1000DAAF0, &qword_1000B2CF8);
  LOBYTE(v27[0]) = 2;
  sub_10009A764(&qword_1000DAC00, sub_10009A7DC);
  sub_1000A0970();
  v23 = v28[0];
  sub_1000017BC(&qword_1000D9940, &qword_1000AC250);
  LOBYTE(v27[0]) = 3;
  sub_1000612BC(&qword_1000D9B20);
  sub_1000A0A20();
  v25 = 0;
  v22 = v28[0];
  v48 = 4;
  sub_10009A7DC();
  v17 = v25;
  sub_1000A0970();
  if (v17)
  {
    v25 = v17;
    (*(v6 + 8))(v9, v5);
    sub_100002308(v66);
  }

  else
  {
    v64 = v55;
    v65[0] = v56[0];
    *(v65 + 11) = *(v56 + 11);
    v60 = v51;
    v61 = v52;
    v62 = v53;
    v63 = v54;
    v58 = v49;
    v59 = v50;
    v39[175] = 5;
    sub_1000A0970();
    v25 = 0;
    (*(v6 + 8))(v9, v5);
    *(&v57[5] + 5) = v45;
    *(&v57[6] + 5) = v46;
    *(&v57[7] + 5) = *v47;
    v57[8] = *&v47[11];
    *(&v57[1] + 5) = v41;
    *(&v57[2] + 5) = v42;
    *(&v57[3] + 5) = v43;
    *(&v57[4] + 5) = v44;
    *(v57 + 5) = v40;
    v27[9] = v64;
    v27[10] = v65[0];
    *(&v27[10] + 11) = *(v65 + 11);
    v27[5] = v60;
    v27[6] = v61;
    v27[7] = v62;
    v27[8] = v63;
    v27[3] = v58;
    v27[4] = v59;
    *(&v27[16] + 11) = v57[5];
    *(&v27[17] + 11) = v57[6];
    *(&v27[18] + 11) = v57[7];
    *(&v27[19] + 11) = *&v47[11];
    *(&v27[12] + 11) = v57[1];
    *(&v27[13] + 11) = v57[2];
    *(&v27[14] + 11) = v57[3];
    *(&v27[15] + 11) = v57[4];
    v18 = v26;
    *&v27[0] = v26;
    *(&v27[0] + 1) = v15;
    v19 = v24;
    v27[1] = v24;
    v20 = v22;
    v21 = v23;
    *&v27[2] = v23;
    *(&v27[2] + 1) = v22;
    *(&v27[11] + 11) = v57[0];
    sub_10009A830(v27, v28);
    sub_100002308(v66);
    v38 = v64;
    *v39 = v65[0];
    *&v39[11] = *(v65 + 11);
    v34 = v60;
    v35 = v61;
    v36 = v62;
    v37 = v63;
    v32 = v58;
    v33 = v59;
    *&v39[107] = v57[5];
    *&v39[123] = v57[6];
    *&v39[139] = v57[7];
    *&v39[155] = v57[8];
    *&v39[43] = v57[1];
    *&v39[59] = v57[2];
    *&v39[75] = v57[3];
    *&v39[91] = v57[4];
    v28[0] = v18;
    v28[1] = v15;
    v29 = v19;
    v30 = v21;
    v31 = v20;
    *&v39[27] = v57[0];
    sub_1000851F4(v28);
    return memcpy(a2, v27, 0x14BuLL);
  }
}

unint64_t sub_100098B0C()
{
  result = qword_1000DAB18;
  if (!qword_1000DAB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DAB18);
  }

  return result;
}

uint64_t sub_100098B60(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000CE2E8;
  v6._object = a2;
  v4 = sub_1000A08F0(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100098BAC@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1000017BC(&qword_1000DABF0, &qword_1000B4A60);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v26 - v8;
  v10 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_100098B0C();
  sub_1000A0CD0();
  if (v2)
  {
    return sub_100002308(a1);
  }

  LOBYTE(v34[0]) = 0;
  v11 = sub_1000A09D0();
  v13 = v12;
  v29 = a2;
  LOBYTE(v30) = 1;
  sub_100005424();
  sub_1000A0A20();
  v28 = v34[0];
  LOBYTE(v34[0]) = 2;
  v27 = sub_1000A0950();
  v39 = v14 & 1;
  v40 = 3;
  v15 = sub_1000A09D0();
  v16 = v9;
  v18 = v17;
  (*(v6 + 8))(v16, v5);
  *&v30 = v11;
  *(&v30 + 1) = v13;
  v19 = v28;
  v31 = v28;
  v20 = v27;
  *&v32 = v27;
  v21 = v39;
  BYTE8(v32) = v39;
  *&v33 = v15;
  *(&v33 + 1) = v18;
  sub_10009A72C(&v30, v34);
  sub_100002308(a1);
  *&v34[0] = v11;
  *(&v34[0] + 1) = v13;
  v34[1] = __PAIR128__(*(&v28 + 1), v19);
  v35 = v20;
  v36 = v21;
  v37 = v15;
  v38 = v18;
  result = sub_10007FC0C(v34);
  v23 = v31;
  v24 = v29;
  *v29 = v30;
  v24[1] = v23;
  v25 = v33;
  v24[2] = v32;
  v24[3] = v25;
  return result;
}

unint64_t sub_100098E9C()
{
  result = qword_1000DAB28;
  if (!qword_1000DAB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DAB28);
  }

  return result;
}

uint64_t sub_100098EF0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000CE368;
  v6._object = a2;
  v4 = sub_1000A08F0(v3, v6);

  if (v4 >= 9)
  {
    return 9;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100098F3C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000017BC(&qword_1000DABD8, &qword_1000B4A58);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v30 - v8;
  v10 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_100098E9C();
  sub_1000A0CD0();
  if (v2)
  {
    return sub_100002308(a1);
  }

  LOBYTE(v47) = 0;
  v11 = sub_1000A0A00();
  v12 = a2;
  LOBYTE(v47) = 1;
  v14 = sub_1000A09D0();
  v38 = v15;
  sub_1000017BC(&qword_1000D9940, &qword_1000AC250);
  LOBYTE(v40) = 2;
  sub_1000612BC(&qword_1000D9B20);
  sub_1000A0A20();
  v35 = v47;
  LOBYTE(v47) = 3;
  *&v34 = sub_1000A09D0();
  *(&v34 + 1) = v16;
  LOBYTE(v47) = 4;
  v62 = sub_1000A09E0();
  LOBYTE(v47) = 5;
  v17 = sub_1000A0A50();
  v39 = 0;
  v32 = v17;
  LOBYTE(v40) = 6;
  v33 = sub_100005424();
  v18 = v39;
  sub_1000A0A20();
  v39 = v18;
  if (v18)
  {
    (*(v6 + 8))(v9, v5);
    v19 = 0;
  }

  else
  {
    v37 = v47;
    v36 = v48;
    sub_1000017BC(&qword_1000DAAA0, &qword_1000B2CD0);
    LOBYTE(v40) = 7;
    sub_10009A644();
    v20 = v39;
    sub_1000A0970();
    if (!v20)
    {
      v31 = v47;
      v63 = 8;
      sub_1000A0970();
      v39 = 0;
      v62 &= 1u;
      v21 = v62;
      (*(v6 + 8))(v9, v5);
      v33 = v60;
      v30 = v61;
      *&v40 = v11;
      *(&v40 + 1) = v14;
      v22 = v38;
      *&v41 = v38;
      v23 = v35;
      *(&v41 + 1) = v35;
      v42 = v34;
      v24 = *(&v34 + 1);
      LOBYTE(v43) = v21;
      v25 = v37;
      *(&v43 + 1) = v32;
      *&v44 = v37;
      v26 = v36;
      *(&v44 + 1) = v36;
      *&v45 = v31;
      *(&v45 + 1) = v60;
      v46 = v61;
      sub_10009A6F4(&v40, &v47);
      sub_100002308(a1);
      v47 = v11;
      v48 = v14;
      v49 = v22;
      v50 = v23;
      v51 = v34;
      v52 = v24;
      v53 = v62;
      v54 = v32;
      v55 = v25;
      v56 = v26;
      v57 = v31;
      v58 = v33;
      v59 = v30;
      result = sub_10008512C(&v47);
      v27 = v45;
      *(v12 + 64) = v44;
      *(v12 + 80) = v27;
      *(v12 + 96) = v46;
      v28 = v41;
      *v12 = v40;
      *(v12 + 16) = v28;
      v29 = v43;
      *(v12 + 32) = v42;
      *(v12 + 48) = v29;
      return result;
    }

    v39 = v20;
    (*(v6 + 8))(v9, v5);
    v19 = 1;
  }

  sub_100002308(a1);

  if (v19)
  {
    return sub_100005568(v37, v36);
  }

  return result;
}

uint64_t sub_1000995C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10009961C(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 40) = a2;
    }
  }

  return result;
}

__n128 sub_100099694(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_1000996C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 145))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100099710(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 144) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 145) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 145) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_100099788(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1000997AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000997F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_10009985C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 123) = *(a2 + 123);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_100099890(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 139))
  {
    return (*a1 + 12);
  }

  v3 = *(a1 + 8) >> 60;
  if (((4 * v3) & 0xC) != 0)
  {
    v4 = 14 - ((4 * v3) & 0xC | (v3 >> 2));
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1000998EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 138) = 0;
    *(result + 136) = 0;
    *result = a2 - 12;
    if (a3 >= 0xC)
    {
      *(result + 139) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 139) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

uint64_t sub_100099974(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  v2 = ((4 * v1) & 0xC) == 0;
  v3 = ((4 * v1) & 0xC | (v1 >> 2)) ^ 0xF;
  if (v2)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10009999C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 331))
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

uint64_t sub_1000999E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 330) = 0;
    *(result + 328) = 0;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 331) = 1;
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

    *(result + 331) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100099A90(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_100099AD8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 sub_100099B38(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_100099B64(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100099BAC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for KeyMaterialSchema.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for KeyMaterialSchema.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100099D98(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_100099E2C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100099F10()
{
  result = qword_1000DAB30;
  if (!qword_1000DAB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DAB30);
  }

  return result;
}

unint64_t sub_100099F68()
{
  result = qword_1000DAB38;
  if (!qword_1000DAB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DAB38);
  }

  return result;
}

unint64_t sub_100099FC0()
{
  result = qword_1000DAB40;
  if (!qword_1000DAB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DAB40);
  }

  return result;
}

unint64_t sub_10009A018()
{
  result = qword_1000DAB48;
  if (!qword_1000DAB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DAB48);
  }

  return result;
}

unint64_t sub_10009A070()
{
  result = qword_1000DAB50;
  if (!qword_1000DAB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DAB50);
  }

  return result;
}

unint64_t sub_10009A0C8()
{
  result = qword_1000DAB58;
  if (!qword_1000DAB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DAB58);
  }

  return result;
}

unint64_t sub_10009A120()
{
  result = qword_1000DAB60;
  if (!qword_1000DAB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DAB60);
  }

  return result;
}

unint64_t sub_10009A178()
{
  result = qword_1000DAB68;
  if (!qword_1000DAB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DAB68);
  }

  return result;
}

unint64_t sub_10009A1D0()
{
  result = qword_1000DAB70;
  if (!qword_1000DAB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DAB70);
  }

  return result;
}

unint64_t sub_10009A228()
{
  result = qword_1000DAB78;
  if (!qword_1000DAB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DAB78);
  }

  return result;
}

unint64_t sub_10009A280()
{
  result = qword_1000DAB80;
  if (!qword_1000DAB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DAB80);
  }

  return result;
}

unint64_t sub_10009A2D8()
{
  result = qword_1000DAB88;
  if (!qword_1000DAB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DAB88);
  }

  return result;
}

unint64_t sub_10009A330()
{
  result = qword_1000DAB90;
  if (!qword_1000DAB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DAB90);
  }

  return result;
}

unint64_t sub_10009A388()
{
  result = qword_1000DAB98;
  if (!qword_1000DAB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DAB98);
  }

  return result;
}

unint64_t sub_10009A3E0()
{
  result = qword_1000DABA0;
  if (!qword_1000DABA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DABA0);
  }

  return result;
}

unint64_t sub_10009A438()
{
  result = qword_1000DABA8;
  if (!qword_1000DABA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DABA8);
  }

  return result;
}

unint64_t sub_10009A490()
{
  result = qword_1000DABB0;
  if (!qword_1000DABB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DABB0);
  }

  return result;
}

unint64_t sub_10009A4E8()
{
  result = qword_1000DABB8;
  if (!qword_1000DABB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DABB8);
  }

  return result;
}

unint64_t sub_10009A540()
{
  result = qword_1000DABC0;
  if (!qword_1000DABC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DABC0);
  }

  return result;
}

unint64_t sub_10009A598()
{
  result = qword_1000DABC8;
  if (!qword_1000DABC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DABC8);
  }

  return result;
}

unint64_t sub_10009A5F0()
{
  result = qword_1000DABD0;
  if (!qword_1000DABD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DABD0);
  }

  return result;
}

unint64_t sub_10009A644()
{
  result = qword_1000DABE0;
  if (!qword_1000DABE0)
  {
    sub_1000053DC(&qword_1000DAAA0, &qword_1000B2CD0);
    sub_100096D34(&qword_1000DABE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DABE0);
  }

  return result;
}

uint64_t sub_10009A764(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000053DC(&qword_1000DAAF0, &qword_1000B2CF8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10009A7DC()
{
  result = qword_1000DAC08;
  if (!qword_1000DAC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DAC08);
  }

  return result;
}

unint64_t sub_10009A91C(char a1)
{
  result = 116;
  switch(a1)
  {
    case 1:
      result = 118;
      break;
    case 2:
      result = 26723;
      break;
    case 3:
      result = 25956;
      break;
    case 4:
      result = 25715;
      break;
    case 5:
      result = 26989;
      break;
    case 6:
      result = 7500147;
      break;
    case 7:
      result = 98;
      break;
    case 8:
      result = 29810;
      break;
    case 9:
      result = 0xD00000000000001ALL;
      break;
    case 10:
      result = 25970;
      break;
    case 11:
      result = 99;
      break;
    case 12:
      result = 1835819888;
      break;
    case 13:
      result = 112;
      break;
    case 14:
      result = 100;
      break;
    case 15:
      result = 115;
      break;
    case 16:
      result = 6579056;
      break;
    case 17:
      result = 25443;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10009AA64(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_10009A91C(*a1);
  v5 = v4;
  if (v3 == sub_10009A91C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000A0BD0();
  }

  return v8 & 1;
}

Swift::Int sub_10009AAEC()
{
  v1 = *v0;
  sub_1000A0C60();
  sub_10009A91C(v1);
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_10009AB50()
{
  sub_10009A91C(*v0);
  sub_1000A05B0();
}

Swift::Int sub_10009ABA4()
{
  v1 = *v0;
  sub_1000A0C60();
  sub_10009A91C(v1);
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_10009AC04@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_10009C168();
  *a2 = result;
  return result;
}

unint64_t sub_10009AC34@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10009A91C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10009AC7C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10009C168();
  *a1 = result;
  return result;
}

uint64_t sub_10009ACB0(uint64_t a1)
{
  v2 = sub_10009B224();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10009ACEC(uint64_t a1)
{
  v2 = sub_10009B224();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t IDSSessionInvitationSchema.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000017BC(&qword_1000DAC30, &qword_1000B4B00);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v39 - v8;
  v10 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_10009B224();
  sub_1000A0CE0();
  LOBYTE(v41) = 0;
  sub_10009FA70();
  sub_10009BB70(&qword_1000DAC40);
  sub_1000A0B80();
  if (!v2)
  {
    v11 = type metadata accessor for IDSSessionInvitationSchema();
    v12 = *(v3 + v11[5]);
    LOBYTE(v41) = 1;
    sub_1000A0B70();
    v13 = (v3 + v11[6]);
    v14 = *v13;
    v15 = *(v13 + 8);
    LOBYTE(v41) = 2;
    sub_1000A0AC0();
    v16 = *(v3 + v11[7]);
    LOBYTE(v41) = 3;
    sub_1000A0A90();
    v17 = *(v3 + v11[8]);
    LOBYTE(v41) = 4;
    sub_1000A0A90();
    v18 = *(v3 + v11[9]);
    LOBYTE(v41) = 5;
    sub_1000A0A90();
    v19 = *(v3 + v11[10]);
    LOBYTE(v41) = 6;
    sub_1000A0A90();
    v20 = (v3 + v11[11]);
    v21 = v20[1];
    v41 = *v20;
    v42 = v21;
    v40 = 7;
    sub_100005750(v41, v21);
    sub_100006804();
    sub_1000A0AD0();
    sub_1000057B0(v41, v42);
    v22 = *(v3 + v11[12]);
    LOBYTE(v41) = 8;
    sub_1000A0A90();
    v24 = (v3 + v11[13]);
    v25 = v24[1];
    v41 = *v24;
    v42 = v25;
    v40 = 9;
    sub_100005750(v41, v25);
    sub_1000A0AD0();
    sub_1000057B0(v41, v42);
    v26 = *(v3 + v11[14]);
    LOBYTE(v41) = 10;
    sub_1000A0A90();
    v27 = (v3 + v11[15]);
    v28 = v27[1];
    v41 = *v27;
    v42 = v28;
    v40 = 11;
    sub_100005750(v41, v28);
    sub_1000A0AD0();
    sub_1000057B0(v41, v42);
    v29 = *(v3 + v11[16]);
    LOBYTE(v41) = 12;
    sub_1000A0A90();
    v30 = (v3 + v11[17]);
    v31 = *v30;
    v32 = v30[1];
    LOBYTE(v41) = 13;
    sub_1000A0B30();
    v33 = *(v3 + v11[18]);
    LOBYTE(v41) = 14;
    sub_1000A0B40();
    v34 = (v3 + v11[19]);
    v35 = *v34;
    v36 = v34[1];
    LOBYTE(v41) = 15;
    sub_1000A0B30();
    v37 = *(v3 + v11[20]);
    LOBYTE(v41) = 16;
    sub_1000A0A90();
    v38 = *(v3 + v11[21]);
    LOBYTE(v41) = 17;
    sub_1000A0A90();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_10009B224()
{
  result = qword_1000DAC38;
  if (!qword_1000DAC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DAC38);
  }

  return result;
}

uint64_t type metadata accessor for IDSSessionInvitationSchema()
{
  result = qword_1000DACB0;
  if (!qword_1000DACB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t IDSSessionInvitationSchema.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v4 = sub_10009FA70();
  v36 = *(v4 - 8);
  v5 = *(v36 + 64);
  __chkstk_darwin(v4);
  v37 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1000017BC(&qword_1000DAC48, &qword_1000B4B08);
  v38 = *(v40 - 8);
  v7 = *(v38 + 64);
  __chkstk_darwin(v40);
  v9 = &v31 - v8;
  v10 = type metadata accessor for IDSSessionInvitationSchema();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_10009B224();
  v39 = v9;
  sub_1000A0CD0();
  if (v2)
  {
    return sub_100002308(a1);
  }

  v33 = v13;
  v34 = a1;
  v32 = v10;
  LOBYTE(v41) = 0;
  sub_10009BB70(&qword_1000DAC50);
  v15 = v37;
  sub_1000A0A20();
  v16 = v33;
  (*(v36 + 32))(v33, v15, v4);
  LOBYTE(v41) = 1;
  v17 = sub_1000A0A10();
  v31 = v4;
  v18 = v32;
  *&v16[v32[5]] = v17;
  LOBYTE(v41) = 2;
  v19 = sub_1000A0960();
  v20 = &v16[v18[6]];
  *v20 = v19;
  v20[8] = v21 & 1;
  LOBYTE(v41) = 3;
  v16[v18[7]] = sub_1000A0930();
  LOBYTE(v41) = 4;
  v16[v18[8]] = sub_1000A0930();
  LOBYTE(v41) = 5;
  v16[v18[9]] = sub_1000A0930();
  LOBYTE(v41) = 6;
  v16[v18[10]] = sub_1000A0930();
  v42 = 7;
  sub_100005424();
  sub_1000A0970();
  *&v33[v18[11]] = v41;
  LOBYTE(v41) = 8;
  v33[v18[12]] = sub_1000A0930();
  v42 = 9;
  sub_1000A0970();
  *&v33[v32[13]] = v41;
  LOBYTE(v41) = 10;
  v33[v32[14]] = sub_1000A0930();
  v42 = 11;
  sub_1000A0970();
  *&v33[v32[15]] = v41;
  LOBYTE(v41) = 12;
  v33[v32[16]] = sub_1000A0930();
  LOBYTE(v41) = 13;
  v22 = sub_1000A09D0();
  v23 = &v33[v32[17]];
  *v23 = v22;
  v23[1] = v24;
  LOBYTE(v41) = 14;
  v33[v32[18]] = sub_1000A09E0() & 1;
  LOBYTE(v41) = 15;
  v25 = sub_1000A09D0();
  v26 = &v33[v32[19]];
  *v26 = v25;
  v26[1] = v27;
  LOBYTE(v41) = 16;
  v33[v32[20]] = sub_1000A0930();
  LOBYTE(v41) = 17;
  v28 = sub_1000A0930();
  (*(v38 + 8))(v39, v40);
  v29 = v33;
  v33[v32[21]] = v28;
  sub_10009BBB4(v29, v35);
  sub_100002308(v34);
  return sub_1000442D4(v29);
}

uint64_t sub_10009BB70(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10009FA70();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10009BBB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IDSSessionInvitationSchema();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10009BC5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10009FA70();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 68) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10009BD30(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10009FA70();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 68) + 8) = (a2 - 1);
  }

  return result;
}

void sub_10009BDEC()
{
  sub_10009FA70();
  if (v0 <= 0x3F)
  {
    sub_10007CBE4(319, &unk_1000DACC0);
    if (v1 <= 0x3F)
    {
      sub_10007CBE4(319, &qword_1000DA418);
      if (v2 <= 0x3F)
      {
        sub_10007CBE4(319, &qword_1000D86B8);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for IDSSessionInvitationSchema.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IDSSessionInvitationSchema.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10009C064()
{
  result = qword_1000DAD30;
  if (!qword_1000DAD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DAD30);
  }

  return result;
}

unint64_t sub_10009C0BC()
{
  result = qword_1000DAD38;
  if (!qword_1000DAD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DAD38);
  }

  return result;
}

unint64_t sub_10009C114()
{
  result = qword_1000DAD40;
  if (!qword_1000DAD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DAD40);
  }

  return result;
}

uint64_t sub_10009C168()
{
  v0 = sub_1000A0BE0();

  if (v0 >= 0x12)
  {
    return 18;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_10009C1D0()
{
  result = qword_1000DAD48;
  if (!qword_1000DAD48)
  {
    sub_10009F610();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DAD48);
  }

  return result;
}

uint64_t sub_10009C228(uint64_t a1)
{
  v2 = v1;
  v3 = __chkstk_darwin(a1);
  v5 = v4;
  v468 = sub_1000A0130();
  v458 = *(v468 - 8);
  v6 = *(v458 + 64);
  v7 = __chkstk_darwin(v468);
  v467 = v204 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v457 = v204 - v9;
  v471 = sub_10009FF90();
  v460 = *(v471 - 8);
  v10 = *(v460 + 64);
  v11 = __chkstk_darwin(v471);
  v470 = v204 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v472 = v204 - v13;
  v475 = sub_1000A0110();
  v466 = *(v475 - 8);
  v14 = *(v466 + 64);
  v15 = __chkstk_darwin(v475);
  v474 = v204 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v465 = v204 - v17;
  v477 = sub_10009FF50();
  v469 = *(v477 - 8);
  v18 = *(v469 + 64);
  v19 = __chkstk_darwin(v477);
  v476 = v204 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v462 = v204 - v21;
  v22 = sub_1000017BC(&qword_1000DAD50, &unk_1000B4D30);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22 - 8);
  v453 = v204 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v481 = (v204 - v27);
  __chkstk_darwin(v26);
  v459 = v204 - v28;
  v29 = sub_1000017BC(&qword_1000D9F28, &qword_1000B06E8);
  v30 = *(*(v29 - 8) + 64);
  v31 = __chkstk_darwin(v29 - 8);
  v452 = v204 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v463 = v204 - v34;
  __chkstk_darwin(v33);
  v464 = v204 - v35;
  v36 = sub_10009F610();
  v473 = v3;
  v489 = v36;
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  v39 = __chkstk_darwin(v36);
  v482 = (v204 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = __chkstk_darwin(v39);
  v478 = v204 - v42;
  v43 = __chkstk_darwin(v41);
  v45 = v204 - v44;
  __chkstk_darwin(v43);
  v47 = v204 - v46;
  v49 = *(v48 + 824);
  v451 = v5;
  if (v49)
  {
    v50 = *(v49 + 16);
    if (v50)
    {
      v51 = (v49 + 32);
      v483 = (v37 + 16);
      v480 = (v37 + 8);
      v479 = (v37 + 32);
      v484 = _swiftEmptyArrayStorage;
      while (1)
      {
        memcpy(v488, v51, 0x883uLL);
        sub_1000617B4(v488, v486);
        sub_10009C228(v488);
        if (v2)
        {
          break;
        }

        v52 = v45;
        (*v483)(v45, v47, v489);
        v53 = v484;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v485 = 0;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v53 = sub_10009EFF4(0, v53[2] + 1, 1, v53, &qword_1000DAD58, &qword_1000B4D40, &type metadata accessor for APSUserPayload);
        }

        v55 = v53;
        v56 = v53[2];
        v484 = v55;
        v57 = v55[3];
        if (v56 >= v57 >> 1)
        {
          v484 = sub_10009EFF4(v57 > 1, v56 + 1, 1, v484, &qword_1000DAD58, &qword_1000B4D40, &type metadata accessor for APSUserPayload);
        }

        sub_1000617EC(v488);
        v58 = v489;
        (*(v37 + 8))(v47, v489);
        v59 = v484;
        v484[2] = v56 + 1;
        v60 = v59 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v56;
        v45 = v52;
        (*(v37 + 32))(v60, v52, v58);
        v51 += 2184;
        --v50;
        v2 = v485;
        if (!v50)
        {
          goto LABEL_12;
        }
      }

      sub_1000617EC(v488);
    }
  }

  v484 = _swiftEmptyArrayStorage;
LABEL_12:
  v61 = *(v473 + 832);
  if (v61)
  {
    v62 = *(v61 + 16);
    v63 = v481;
    if (v62)
    {
      v64 = (v61 + 32);
      v485 = (v37 + 16);
      v480 = (v37 + 8);
      v479 = (v37 + 32);
      v483 = _swiftEmptyArrayStorage;
      v65 = v478;
      while (1)
      {
        memcpy(v487, v64, 0x883uLL);
        sub_1000617B4(v487, v486);
        sub_10009C228(v487);
        if (v2)
        {
          break;
        }

        (*v485)(v482, v65, v489);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v483 = sub_10009EFF4(0, v483[2] + 1, 1, v483, &qword_1000DAD58, &qword_1000B4D40, &type metadata accessor for APSUserPayload);
        }

        v67 = v483[2];
        v66 = v483[3];
        if (v67 >= v66 >> 1)
        {
          v483 = sub_10009EFF4(v66 > 1, v67 + 1, 1, v483, &qword_1000DAD58, &qword_1000B4D40, &type metadata accessor for APSUserPayload);
        }

        sub_1000617EC(v487);
        v65 = v478;
        v68 = v489;
        (*(v37 + 8))(v478, v489);
        v69 = v483;
        v483[2] = v67 + 1;
        (*(v37 + 32))(v69 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v67, v482, v68);
        v64 += 2184;
        --v62;
        v2 = 0;
        v63 = v481;
        if (!v62)
        {
          goto LABEL_25;
        }
      }

      sub_1000617EC(v487);
      goto LABEL_33;
    }

    v483 = _swiftEmptyArrayStorage;
  }

  else
  {
    v483 = _swiftEmptyArrayStorage;
    v63 = v481;
  }

LABEL_25:
  v70 = sub_10009FF10();
  v71 = *(*(v70 - 8) + 56);
  v71(v464, 1, 1, v70);
  if (*(v473 + 1168) != 1)
  {
    v72 = *(v473 + 1248);
    v480 = *(v473 + 1240);
    v73 = *(v473 + 1232);
    v479 = *(v473 + 1224);
    v74 = *(v473 + 1216);
    v489 = *(v473 + 1208);
    v75 = *(v473 + 1200);
    v482 = *(v473 + 1192);
    v485 = v2;
    v76 = *(v473 + 1184);
    v478 = *(v473 + 1176);
    v461 = *(v473 + 1160);

    v77 = v463;
    v78 = v485;
    sub_10009FF00();
    v2 = v78;
    if (v78)
    {
LABEL_31:
      sub_1000057C4(v464, &qword_1000D9F28, &qword_1000B06E8);
LABEL_33:
    }

    v79 = v464;
    sub_1000057C4(v464, &qword_1000D9F28, &qword_1000B06E8);
    v71(v77, 0, 1, v70);
    sub_1000056E8(v77, v79, &qword_1000D9F28, &qword_1000B06E8);
    v63 = v481;
  }

  v80 = sub_1000A0150();
  v81 = *(*(v80 - 8) + 56);
  v81(v459, 1, 1, v80);
  v82 = v473;
  if ((*(v473 + 185) & 1) == 0)
  {
    v83 = *(v473 + 176);
    v84 = *(v473 + 184) & 1;
    sub_1000A0140();
    if (v2)
    {
      sub_1000057C4(v459, &qword_1000DAD50, &unk_1000B4D30);
      goto LABEL_31;
    }

    v86 = v459;
    sub_1000057C4(v459, &qword_1000DAD50, &unk_1000B4D30);
    v81(v63, 0, 1, v80);
    sub_1000056E8(v63, v86, &qword_1000DAD50, &unk_1000B4D30);
  }

  v87 = *(v82 + 1648);
  if (v87)
  {
    v88 = *(v87 + 16);
    if (v88)
    {
      v480 = (v469 + 16);
      v479 = (v469 + 8);
      v478 = v469 + 32;
      v89 = (v87 + 73);
      v90 = _swiftEmptyArrayStorage;
      v91 = v462;
      while (1)
      {
        v481 = v88;
        v489 = v90;
        LODWORD(v485) = *(v89 - 1);
        v482 = *(v89 - 9);
        v92 = *(v89 - 17);
        v93 = *(v89 - 25);
        v94 = *(v89 - 33);
        v95 = v2;
        v96 = *(v89 - 41);
        v97 = *v89;
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        sub_10009FF40();
        v2 = v95;
        if (v95)
        {
          break;
        }

        (*v480)(v476, v91, v477);
        v90 = v489;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v90 = sub_10009EFF4(0, v90[2] + 1, 1, v90, &qword_1000DAD60, &qword_1000B4D48, &type metadata accessor for APSQuickRelayPluginRequest);
        }

        v99 = v90[2];
        v98 = v90[3];
        if (v99 >= v98 >> 1)
        {
          v90 = sub_10009EFF4(v98 > 1, v99 + 1, 1, v90, &qword_1000DAD60, &qword_1000B4D48, &type metadata accessor for APSQuickRelayPluginRequest);
        }

        v89 += 48;
        v100 = v469;
        v101 = v477;
        (*(v469 + 8))(v91, v477);
        v90[2] = v99 + 1;
        (*(v100 + 32))(v90 + ((*(v100 + 80) + 32) & ~*(v100 + 80)) + *(v100 + 72) * v99, v476, v101);
        v88 = (v481 - 1);
        if (v481 == 1)
        {
          goto LABEL_47;
        }
      }

      sub_1000057C4(v459, &qword_1000DAD50, &unk_1000B4D30);
      sub_1000057C4(v464, &qword_1000D9F28, &qword_1000B06E8);
    }
  }

  v90 = _swiftEmptyArrayStorage;
LABEL_47:
  v102 = *(v473 + 2040);
  v485 = v2;
  v489 = v90;
  if (v102)
  {
    v103 = *(v102 + 16);
    if (v103)
    {
      v479 = (v466 + 16);
      v478 = v466 + 8;
      v476 = v466 + 32;
      v104 = (v102 + 48);
      v105 = _swiftEmptyArrayStorage;
      v106 = v465;
      while (1)
      {
        v480 = v103;
        v477 = v105;
        v107 = v104[2];
        v108 = v104[3];
        v109 = v104[5];
        v482 = v104[4];
        LODWORD(v481) = *(v104 + 8);
        v110 = *v104;
        v111 = *(v104 - 8);
        v112 = *(v104 - 2);
        sub_100005750(v107, v108);

        sub_100005750(v107, v108);

        v113 = v485;
        sub_1000A0100();
        if (v113)
        {
          break;
        }

        (*v479)(v474, v106, v475);
        v105 = v477;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v105 = sub_10009EFF4(0, v105[2] + 1, 1, v105, &qword_1000DAD68, &qword_1000B4D50, &type metadata accessor for APSQuickRelayAllocationStatus);
        }

        v115 = v105[2];
        v114 = v105[3];
        v485 = 0;
        v482 = (v115 + 1);
        if (v115 >= v114 >> 1)
        {
          v105 = sub_10009EFF4(v114 > 1, v115 + 1, 1, v105, &qword_1000DAD68, &qword_1000B4D50, &type metadata accessor for APSQuickRelayAllocationStatus);
        }

        sub_1000057B0(v107, v108);

        v116 = v466;
        v106 = v465;
        v117 = v475;
        (*(v466 + 8))(v465, v475);
        v105[2] = v482;
        (*(v116 + 32))(v105 + ((*(v116 + 80) + 32) & ~*(v116 + 80)) + *(v116 + 72) * v115, v474, v117);
        v104 += 8;
        v103 = v480 - 1;
        if (v480 == 1)
        {
          goto LABEL_58;
        }
      }

      sub_1000057B0(v107, v108);

      sub_1000057C4(v459, &qword_1000DAD50, &unk_1000B4D30);
      sub_1000057C4(v464, &qword_1000D9F28, &qword_1000B06E8);
    }
  }

  v105 = _swiftEmptyArrayStorage;
LABEL_58:
  v118 = *(v473 + 2048);
  v477 = v105;
  if (v118)
  {
    v119 = *(v118 + 16);
    if (v119)
    {
      v456 = (v460 + 16);
      v455 = v460 + 8;
      v454 = v460 + 32;
      v120 = (v118 + 136);
      v482 = _swiftEmptyArrayStorage;
      while (1)
      {
        v461 = v119;
        v122 = *(v120 - 13);
        v121 = *(v120 - 12);
        v124 = *(v120 - 11);
        v123 = *(v120 - 10);
        v125 = *(v120 - 6);
        v465 = *(v120 - 7);
        v126 = v465;
        v478 = v125;
        v127 = *(v120 - 4);
        v479 = *(v120 - 5);
        v480 = v127;
        v128 = *(v120 - 2);
        v481 = *(v120 - 3);
        LODWORD(v476) = *v120;
        v469 = *(v120 - 1);
        LODWORD(v475) = *(v120 - 64);
        v474 = *(v120 - 9);
        v466 = v122;
        sub_100005750(v122, v121);
        v463 = v124;
        v462 = v123;
        sub_100005750(v124, v123);
        sub_100005750(v126, v478);
        v129 = v479;
        sub_100005750(v479, v127);
        v130 = v481;
        sub_100005750(v481, v128);
        v131 = v122;
        v132 = v121;
        sub_100005750(v131, v121);
        sub_100005750(v124, v123);
        v133 = v465;
        v134 = v478;
        sub_100005750(v465, v478);
        sub_100005750(v129, v480);
        sub_100005750(v130, v128);
        v476 = v128;
        v135 = v133;
        v136 = v463;
        v137 = v462;
        v138 = v134;
        v139 = v132;
        v140 = v472;
        v141 = v466;
        v142 = v135;
        v143 = v485;
        sub_10009FF80();
        v485 = v143;
        if (v143)
        {
          break;
        }

        (*v456)(v470, v140, v471);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v482 = sub_10009EFF4(0, v482[2] + 1, 1, v482, &qword_1000DAD70, &qword_1000B4D58, &type metadata accessor for APSQuickRelaySelfAllocToken);
        }

        v145 = v482[2];
        v144 = v482[3];
        v475 = v145 + 1;
        if (v145 >= v144 >> 1)
        {
          v482 = sub_10009EFF4(v144 > 1, v145 + 1, 1, v482, &qword_1000DAD70, &qword_1000B4D58, &type metadata accessor for APSQuickRelaySelfAllocToken);
        }

        v120 += 112;
        sub_1000057B0(v141, v139);
        sub_1000057B0(v136, v137);
        sub_1000057B0(v142, v138);
        sub_1000057B0(v479, v480);
        sub_1000057B0(v481, v476);
        v146 = v460;
        v147 = v471;
        (*(v460 + 8))(v472, v471);
        v148 = v482;
        v482[2] = v475;
        (*(v146 + 32))(v148 + ((*(v146 + 80) + 32) & ~*(v146 + 80)) + *(v146 + 72) * v145, v470, v147);
        v119 = v461 - 1;
        if (v461 == 1)
        {
          goto LABEL_69;
        }
      }

      sub_1000057B0(v141, v139);
      sub_1000057B0(v136, v137);
      sub_1000057B0(v142, v138);
      sub_1000057B0(v479, v480);
      sub_1000057B0(v481, v476);
      sub_1000057C4(v459, &qword_1000DAD50, &unk_1000B4D30);
      sub_1000057C4(v464, &qword_1000D9F28, &qword_1000B06E8);
    }
  }

  v482 = _swiftEmptyArrayStorage;
LABEL_69:
  v149 = *(v473 + 2088);
  if (v149)
  {
    v150 = *(v149 + 16);
    if (v150)
    {
      v474 = (v458 + 16);
      v472 = v458 + 8;
      v471 = v458 + 32;
      v151 = (v149 + 56);
      v481 = _swiftEmptyArrayStorage;
      v152 = v457;
      while (1)
      {
        v475 = v150;
        v153 = *(v151 + 3);
        v154 = *(v151 + 4);
        v155 = *(v151 + 5);
        v156 = *(v151 + 6);
        LODWORD(v480) = v151[16];
        v479 = *(v151 + 1);
        LODWORD(v478) = *v151;
        v157 = *(v151 - 2);
        v476 = *(v151 - 1);
        v158 = *(v151 - 3);

        sub_100005750(v153, v154);
        sub_100005750(v155, v156);

        sub_100005750(v153, v154);
        sub_100005750(v155, v156);
        v159 = v485;
        sub_1000A0120();
        v485 = v159;
        if (v159)
        {
          break;
        }

        (*v474)(v467, v152, v468);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v481 = sub_10009EFF4(0, v481[2] + 1, 1, v481, &qword_1000DAD78, &qword_1000B4D60, &type metadata accessor for APSQuickRelayPluginAllocation);
        }

        v161 = v481[2];
        v160 = v481[3];
        v480 = (v161 + 1);
        if (v161 >= v160 >> 1)
        {
          v481 = sub_10009EFF4(v160 > 1, v161 + 1, 1, v481, &qword_1000DAD78, &qword_1000B4D60, &type metadata accessor for APSQuickRelayPluginAllocation);
        }

        v151 += 80;

        sub_1000057B0(v153, v154);
        sub_1000057B0(v155, v156);
        v162 = v458;
        v152 = v457;
        v163 = v468;
        (*(v458 + 8))(v457, v468);
        v164 = v481;
        v481[2] = v480;
        (*(v162 + 32))(v164 + ((*(v162 + 80) + 32) & ~*(v162 + 80)) + *(v162 + 72) * v161, v467, v163);
        v150 = v475 - 1;
        if (v475 == 1)
        {
          goto LABEL_80;
        }
      }

      sub_1000057B0(v153, v154);
      sub_1000057B0(v155, v156);
      sub_1000057C4(v459, &qword_1000DAD50, &unk_1000B4D30);
      sub_1000057C4(v464, &qword_1000D9F28, &qword_1000B06E8);
    }
  }

  v481 = _swiftEmptyArrayStorage;
LABEL_80:
  v165 = v473;
  v166 = *(v473 + 8);
  v386 = *v473;
  v385 = v166;
  v384 = *(v473 + 16);
  v383 = *(v473 + 24);
  v382 = *(v473 + 32);
  v167 = *(v473 + 48);
  v303 = *(v473 + 40);
  v168 = v303;
  v480 = v167;
  v169 = *(v473 + 64);
  v300 = *(v473 + 56);
  v170 = v300;
  v305 = v169;
  v172 = *(v473 + 80);
  v302 = *(v473 + 72);
  v171 = v302;
  v299 = v172;
  v173 = *(v473 + 96);
  v479 = *(v473 + 88);
  v478 = v173;
  v174 = *(v473 + 112);
  v476 = *(v473 + 104);
  v475 = v174;
  v175 = *(v473 + 128);
  v381 = *(v473 + 120);
  v474 = v175;
  v176 = *(v473 + 144);
  v289 = *(v473 + 136);
  v177 = v289;
  v472 = v176;
  v178 = *(v473 + 160);
  v380 = *(v473 + 152);
  v471 = v178;
  v379 = *(v473 + 168);
  sub_100005620(v459, v453, &qword_1000DAD50, &unk_1000B4D30);
  v378 = *(v165 + 192);
  v377 = *(v165 + 200);
  v179 = *(v165 + 216);
  v470 = *(v165 + 208);
  v469 = v179;
  v376 = *(v165 + 224);
  v375 = *(v165 + 225);
  v180 = *(v165 + 240);
  v468 = *(v165 + 232);
  v467 = v180;
  v181 = *(v165 + 256);
  v277 = *(v165 + 248);
  v182 = v277;
  v466 = v181;
  v183 = *(v165 + 272);
  v374 = *(v165 + 264);
  v463 = v183;
  v184 = *(v165 + 288);
  v373 = *(v165 + 280);
  v462 = v184;
  v185 = *(v165 + 304);
  v372 = *(v165 + 296);
  v465 = v185;
  v186 = *(v165 + 320);
  v461 = *(v165 + 312);
  v460 = v186;
  v371 = *(v165 + 328);
  v370 = *(v165 + 336);
  v187 = *(v165 + 352);
  v369 = *(v165 + 344);
  v458 = v187;
  v188 = *(v165 + 368);
  v368 = *(v165 + 360);
  v457 = v188;
  v189 = *(v165 + 384);
  v367 = *(v165 + 376);
  v456 = v189;
  v190 = *(v165 + 400);
  v454 = *(v165 + 392);
  v450 = v190;
  v191 = *(v165 + 416);
  v366 = *(v165 + 408);
  v449 = v191;
  v192 = *(v165 + 432);
  v365 = *(v165 + 424);
  v448 = v192;
  v364 = *(v165 + 440);
  v363 = *(v165 + 448);
  v362 = *(v165 + 456);
  v361 = *(v165 + 464);
  v193 = *(v165 + 480);
  v360 = *(v165 + 472);
  v455 = v193;
  v194 = *(v165 + 496);
  v447 = *(v165 + 488);
  v446 = v194;
  v195 = *(v165 + 512);
  v445 = *(v165 + 504);
  v444 = v195;
  v359 = *(v165 + 520);
  v358 = *(v165 + 528);
  v443 = *(v165 + 536);
  v442 = *(v165 + 544);
  v357 = *(v165 + 552);
  v441 = *(v165 + 560);
  v356 = *(v165 + 568);
  v439 = *(v165 + 576);
  v355 = *(v165 + 584);
  v440 = *(v165 + 592);
  v354 = *(v165 + 600);
  v353 = *(v165 + 608);
  v352 = *(v165 + 616);
  v351 = *(v165 + 624);
  v350 = *(v165 + 632);
  v349 = *(v165 + 640);
  v348 = *(v165 + 648);
  v347 = *(v165 + 656);
  v438 = *(v165 + 664);
  v437 = *(v165 + 672);
  v346 = *(v165 + 680);
  v436 = *(v165 + 688);
  v345 = *(v165 + 696);
  v344 = *(v165 + 704);
  v343 = *(v165 + 712);
  v342 = *(v165 + 720);
  v341 = *(v165 + 728);
  v435 = *(v165 + 736);
  v340 = *(v165 + 744);
  v339 = *(v165 + 752);
  v338 = *(v165 + 760);
  v434 = *(v165 + 768);
  v337 = *(v165 + 776);
  v336 = *(v165 + 784);
  v335 = *(v165 + 792);
  v334 = *(v165 + 800);
  v333 = *(v165 + 808);
  v332 = *(v165 + 816);
  v331 = *(v165 + 840);
  v330 = *(v165 + 848);
  v329 = *(v165 + 856);
  v328 = *(v165 + 864);
  v327 = *(v165 + 872);
  v326 = *(v165 + 880);
  v325 = *(v165 + 881);
  v324 = *(v165 + 882);
  v323 = *(v165 + 883);
  v322 = *(v165 + 884);
  v321 = *(v165 + 888);
  v432 = *(v165 + 896);
  v320 = *(v165 + 904);
  v433 = *(v165 + 912);
  v431 = *(v165 + 920);
  v430 = *(v165 + 928);
  v319 = *(v165 + 936);
  v429 = *(v165 + 944);
  v318 = *(v165 + 952);
  v428 = *(v165 + 960);
  v317 = *(v165 + 968);
  v427 = *(v165 + 976);
  v316 = *(v165 + 984);
  v426 = *(v165 + 992);
  v315 = *(v165 + 1000);
  v424 = *(v165 + 1008);
  v314 = *(v165 + 1016);
  v313 = *(v165 + 1024);
  v312 = *(v165 + 1032);
  v423 = *(v165 + 1040);
  v311 = *(v165 + 1048);
  v310 = *(v165 + 1056);
  v309 = *(v165 + 1064);
  v422 = *(v165 + 1072);
  v308 = *(v165 + 1080);
  v307 = *(v165 + 1088);
  v306 = *(v165 + 1089);
  v304 = *(v165 + 1096);
  v421 = *(v165 + 1104);
  v301 = *(v165 + 1112);
  v298 = *(v165 + 1120);
  v297 = *(v165 + 1128);
  v296 = *(v165 + 1136);
  v295 = *(v165 + 1144);
  v425 = *(v165 + 1152);
  sub_100005620(v464, v452, &qword_1000D9F28, &qword_1000B06E8);
  v420 = *(v165 + 1256);
  v419 = *(v165 + 1264);
  v294 = *(v165 + 1272);
  v418 = *(v165 + 1280);
  v417 = *(v165 + 1288);
  v416 = *(v165 + 1296);
  v293 = *(v165 + 1304);
  v292 = *(v165 + 1312);
  v291 = *(v165 + 1320);
  v415 = *(v165 + 1328);
  v290 = *(v165 + 1336);
  v288 = *(v165 + 1337);
  v287 = *(v165 + 1338);
  v286 = *(v165 + 1344);
  v285 = *(v165 + 1352);
  v284 = *(v165 + 1360);
  v414 = *(v165 + 1368);
  v413 = *(v165 + 1376);
  v412 = *(v165 + 1384);
  v411 = *(v165 + 1392);
  v410 = *(v165 + 1400);
  v283 = *(v165 + 1408);
  v282 = *(v165 + 1416);
  v281 = *(v165 + 1417);
  v280 = *(v165 + 1418);
  v279 = *(v165 + 1424);
  v278 = *(v165 + 1432);
  v276 = *(v165 + 1440);
  v275 = *(v165 + 1448);
  v274 = *(v165 + 1449);
  v273 = *(v165 + 1456);
  v272 = *(v165 + 1464);
  v271 = *(v165 + 1472);
  v270 = *(v165 + 1480);
  v196 = *(v165 + 1488);
  v409 = *(v165 + 1496);
  v268 = *(v165 + 1504);
  v269 = v196;
  v267 = *(v165 + 1512);
  v266 = *(v165 + 1520);
  v265 = *(v165 + 1528);
  v408 = *(v165 + 1536);
  v407 = *(v165 + 1544);
  v406 = *(v165 + 1552);
  v405 = *(v165 + 1560);
  v264 = *(v165 + 1568);
  v263 = *(v165 + 1576);
  v404 = *(v165 + 1584);
  v403 = *(v165 + 1592);
  v402 = *(v165 + 1600);
  v401 = *(v165 + 1608);
  v262 = *(v165 + 1616);
  v261 = *(v165 + 1624);
  v260 = *(v165 + 1632);
  v259 = *(v165 + 1640);
  v197 = *(v165 + 1656);
  v399 = *(v165 + 1664);
  v257 = *(v165 + 1672);
  v258 = v197;
  v400 = *(v165 + 1680);
  v256 = *(v165 + 1688);
  v255 = *(v165 + 1696);
  v254 = *(v165 + 1697);
  v253 = *(v165 + 1698);
  v252 = *(v165 + 1704);
  v251 = *(v165 + 1712);
  v398 = *(v165 + 1720);
  v397 = *(v165 + 1728);
  v250 = *(v165 + 1736);
  v249 = *(v165 + 1744);
  v248 = *(v165 + 1745);
  v198 = *(v165 + 1752);
  v396 = *(v165 + 1760);
  v246 = *(v165 + 1768);
  v247 = v198;
  v245 = *(v165 + 1776);
  v244 = *(v165 + 1784);
  v243 = *(v165 + 1792);
  v395 = *(v165 + 1800);
  v394 = *(v165 + 1808);
  v393 = *(v165 + 1816);
  v392 = *(v165 + 1824);
  v242 = *(v165 + 1832);
  v241 = *(v165 + 1840);
  v391 = *(v165 + 1848);
  v390 = *(v165 + 1856);
  v389 = *(v165 + 1864);
  v388 = *(v165 + 1872);
  v387 = *(v165 + 1880);
  v199 = *(v165 + 1888);
  v240 = *(v165 + 1896);
  v239 = *(v165 + 1904);
  v213 = *(v165 + 1912);
  v200 = *(v165 + 1920);
  v211 = v199;
  v212 = v200;
  v238 = *(v165 + 1928);
  v237 = *(v165 + 1936);
  v201 = *(v165 + 1944);
  v215 = *(v165 + 1952);
  v216 = v201;
  v202 = *(v165 + 1960);
  v218 = *(v165 + 1968);
  v235 = *(v165 + 1976);
  v236 = v202;
  v234 = *(v165 + 1984);
  v233 = *(v165 + 1992);
  v232 = *(v165 + 2000);
  v231 = *(v165 + 2008);
  v230 = *(v165 + 2016);
  v229 = *(v165 + 2024);
  v228 = *(v165 + 2032);
  v203 = *(v165 + 2056);
  v208 = *(v165 + 2064);
  v209 = v203;
  v227 = *(v165 + 2072);
  v226 = *(v165 + 2080);
  v225 = *(v165 + 2096);
  v224 = *(v165 + 2104);
  v223 = *(v165 + 2112);
  LODWORD(v203) = *(v165 + 2120);
  v221 = *(v165 + 2121);
  v222 = v203;
  v220 = *(v165 + 2122);
  v219 = *(v165 + 2128);
  v204[1] = *(v165 + 2136);
  v217 = *(v165 + 2144);
  v214 = *(v165 + 2152);
  v210 = *(v165 + 2160);
  v207 = *(v165 + 2168);
  LODWORD(v203) = *(v165 + 2176);
  v205 = *(v165 + 2177);
  v206 = v203;
  LODWORD(v473) = *(v165 + 2178);
  sub_100005750(v168, v480);
  sub_100005750(v170, v169);
  sub_100005750(v171, v172);
  sub_100005750(v479, v478);
  sub_100005750(v476, v475);

  sub_100005750(v177, v472);

  sub_100005750(v470, v469);
  sub_100005750(v468, v467);
  sub_100005750(v182, v466);

  sub_100005750(v461, v460);

  sub_100005750(v447, v446);
  sub_100005750(v445, v444);
  sub_100005750(v443, v442);

  sub_100005750(v438, v437);

  sub_100005750(v431, v430);

  sub_100005750(v420, v419);

  sub_100005750(v417, v416);

  sub_100005750(v413, v412);
  sub_100005750(v411, v410);

  sub_100005750(v408, v407);
  sub_100005750(v406, v405);
  sub_100005750(v404, v403);
  sub_100005750(v402, v401);

  sub_100005750(v398, v397);

  sub_100005750(v395, v394);
  sub_100005750(v393, v392);
  sub_100005750(v391, v390);
  sub_100005750(v389, v388);
  sub_100005750(v387, v211);
  sub_100005750(v213, v212);
  sub_100005750(v216, v215);

  sub_100005750(v209, v208);

  sub_10009F600();
  sub_1000057C4(v459, &qword_1000DAD50, &unk_1000B4D30);
  return sub_1000057C4(v464, &qword_1000D9F28, &qword_1000B06E8);
}

uint64_t sub_10009ECF8(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = sub_10009F270();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_10009F260();
  sub_1000613AC();
  sub_10009F250();

  if (!v1)
  {
    memcpy(__dst, v6, 0x883uLL);
    sub_10009C228(__dst);
    return sub_1000617EC(__dst);
  }

  return result;
}

uint64_t sub_10009EFF4(char a1, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return sub_10009F1D0();
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000017BC(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  v18 = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v18 - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((v18 - v16) / v15);
LABEL_19:
  v20 = *(a7(0) - 8);
  if (a1)
  {
    if (v17 < a4 || (v21 = (*(v20 + 80) + 32) & ~*(v20 + 80), v17 + v21 >= a4 + v21 + *(v20 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}