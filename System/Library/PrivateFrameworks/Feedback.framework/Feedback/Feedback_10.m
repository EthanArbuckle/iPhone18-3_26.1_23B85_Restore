__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1B8C16D24(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_1B8C16D6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B8C16DCC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B8C16E14(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B8C16E58(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1B8C16ED0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B8C16F18(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FBKFeedbackForm.FormResponse.Question.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
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

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FBKFeedbackForm.FormResponse.Question.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FBKFeedbackForm.FormResponse.Question.Kind.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for FBKFeedbackForm.FormResponse.Question.Kind.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B8C172D0()
{
  result = qword_1EBAA8AC8;
  if (!qword_1EBAA8AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8AC8);
  }

  return result;
}

unint64_t sub_1B8C17328()
{
  result = qword_1EBAA8AD0;
  if (!qword_1EBAA8AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8AD0);
  }

  return result;
}

unint64_t sub_1B8C17380()
{
  result = qword_1EBAA8AD8;
  if (!qword_1EBAA8AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8AD8);
  }

  return result;
}

unint64_t sub_1B8C173D8()
{
  result = qword_1EBAA8AE0;
  if (!qword_1EBAA8AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8AE0);
  }

  return result;
}

unint64_t sub_1B8C17430()
{
  result = qword_1EBAA8AE8;
  if (!qword_1EBAA8AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8AE8);
  }

  return result;
}

unint64_t sub_1B8C17488()
{
  result = qword_1EBAA8AF0;
  if (!qword_1EBAA8AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8AF0);
  }

  return result;
}

unint64_t sub_1B8C174E0()
{
  result = qword_1EBAA8AF8;
  if (!qword_1EBAA8AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8AF8);
  }

  return result;
}

unint64_t sub_1B8C17538()
{
  result = qword_1EBAA8B00;
  if (!qword_1EBAA8B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8B00);
  }

  return result;
}

unint64_t sub_1B8C17590()
{
  result = qword_1EBAA8B08;
  if (!qword_1EBAA8B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8B08);
  }

  return result;
}

unint64_t sub_1B8C175E8()
{
  result = qword_1EBAA8B10;
  if (!qword_1EBAA8B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8B10);
  }

  return result;
}

unint64_t sub_1B8C17640()
{
  result = qword_1EBAA8B18;
  if (!qword_1EBAA8B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8B18);
  }

  return result;
}

unint64_t sub_1B8C17698()
{
  result = qword_1EBAA8B20;
  if (!qword_1EBAA8B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8B20);
  }

  return result;
}

unint64_t sub_1B8C176F0()
{
  result = qword_1EBAA8B28;
  if (!qword_1EBAA8B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8B28);
  }

  return result;
}

unint64_t sub_1B8C17748()
{
  result = qword_1EBAA8B30;
  if (!qword_1EBAA8B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8B30);
  }

  return result;
}

unint64_t sub_1B8C177A0()
{
  result = qword_1EBAA8B38;
  if (!qword_1EBAA8B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8B38);
  }

  return result;
}

unint64_t sub_1B8C177F8()
{
  result = qword_1EBAA8B40;
  if (!qword_1EBAA8B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8B40);
  }

  return result;
}

unint64_t sub_1B8C17850()
{
  result = qword_1EBAA8B48;
  if (!qword_1EBAA8B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8B48);
  }

  return result;
}

unint64_t sub_1B8C178A8()
{
  result = qword_1EBAA8B50;
  if (!qword_1EBAA8B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8B50);
  }

  return result;
}

unint64_t sub_1B8C17900()
{
  result = qword_1EBAA8B58;
  if (!qword_1EBAA8B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8B58);
  }

  return result;
}

unint64_t sub_1B8C17958()
{
  result = qword_1EBAA8B60;
  if (!qword_1EBAA8B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8B60);
  }

  return result;
}

unint64_t sub_1B8C179B0()
{
  result = qword_1EBAA8B68;
  if (!qword_1EBAA8B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8B68);
  }

  return result;
}

unint64_t sub_1B8C17A08()
{
  result = qword_1EBAA8B70;
  if (!qword_1EBAA8B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8B70);
  }

  return result;
}

unint64_t sub_1B8C17A60()
{
  result = qword_1EBAA8B78;
  if (!qword_1EBAA8B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8B78);
  }

  return result;
}

unint64_t sub_1B8C17AB8()
{
  result = qword_1EBAA8B80;
  if (!qword_1EBAA8B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8B80);
  }

  return result;
}

unint64_t sub_1B8C17B10()
{
  result = qword_1EBAA8B88;
  if (!qword_1EBAA8B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8B88);
  }

  return result;
}

unint64_t sub_1B8C17B68()
{
  result = qword_1EBAA8B90;
  if (!qword_1EBAA8B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8B90);
  }

  return result;
}

unint64_t sub_1B8C17BC0()
{
  result = qword_1EBAA8B98;
  if (!qword_1EBAA8B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8B98);
  }

  return result;
}

unint64_t sub_1B8C17C18()
{
  result = qword_1EBAA8BA0;
  if (!qword_1EBAA8BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8BA0);
  }

  return result;
}

unint64_t sub_1B8C17C70()
{
  result = qword_1EBAA8BA8;
  if (!qword_1EBAA8BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8BA8);
  }

  return result;
}

unint64_t sub_1B8C17CC8()
{
  result = qword_1EBAA8BB0;
  if (!qword_1EBAA8BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8BB0);
  }

  return result;
}

unint64_t sub_1B8C17D20()
{
  result = qword_1EBAA8BB8;
  if (!qword_1EBAA8BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8BB8);
  }

  return result;
}

unint64_t sub_1B8C17D78()
{
  result = qword_1EBAA8BC0;
  if (!qword_1EBAA8BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8BC0);
  }

  return result;
}

unint64_t sub_1B8C17DD0()
{
  result = qword_1EBAA8BC8;
  if (!qword_1EBAA8BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8BC8);
  }

  return result;
}

unint64_t sub_1B8C17E28()
{
  result = qword_1EBAA8BD0;
  if (!qword_1EBAA8BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8BD0);
  }

  return result;
}

unint64_t sub_1B8C17E80()
{
  result = qword_1EBAA8BD8;
  if (!qword_1EBAA8BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8BD8);
  }

  return result;
}

unint64_t sub_1B8C17ED8()
{
  result = qword_1EBAA8BE0;
  if (!qword_1EBAA8BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8BE0);
  }

  return result;
}

uint64_t sub_1B8C17F2C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C65694674786574 && a2 == 0xE900000000000064;
  if (v4 || (sub_1B8C25A08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6165724174786574 && a2 == 0xE800000000000000 || (sub_1B8C25A08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001B8C37100 == a2 || (sub_1B8C25A08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C7069746C756DLL && a2 == 0xEE006563696F6843 || (sub_1B8C25A08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x726564696C73 && a2 == 0xE600000000000000 || (sub_1B8C25A08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000 || (sub_1B8C25A08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x656D695465746164 && a2 == 0xE800000000000000 || (sub_1B8C25A08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 1701669236 && a2 == 0xE400000000000000 || (sub_1B8C25A08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x656C67676F74 && a2 == 0xE600000000000000)
  {

    return 8;
  }

  else
  {
    v6 = sub_1B8C25A08();

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

uint64_t sub_1B8C1821C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1B8C25A08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5479616C70736964 && a2 == 0xEB00000000747865 || (sub_1B8C25A08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E65646469487369 && a2 == 0xEE006D726F466E49 || (sub_1B8C25A08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B8C25A08();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_1B8C18394()
{
  result = qword_1EBAA8C00;
  if (!qword_1EBAA8C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8C00);
  }

  return result;
}

unint64_t sub_1B8C183E8()
{
  result = qword_1EBAA8C08;
  if (!qword_1EBAA8C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8C08);
  }

  return result;
}

unint64_t sub_1B8C1843C()
{
  result = qword_1EBAA8C10;
  if (!qword_1EBAA8C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8C10);
  }

  return result;
}

unint64_t sub_1B8C184C4()
{
  result = qword_1EBAA8C48;
  if (!qword_1EBAA8C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8C48);
  }

  return result;
}

unint64_t sub_1B8C1851C()
{
  result = qword_1EBAA8C50;
  if (!qword_1EBAA8C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8C50);
  }

  return result;
}

unint64_t sub_1B8C18574()
{
  result = qword_1EBAA8C58;
  if (!qword_1EBAA8C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8C58);
  }

  return result;
}

unint64_t sub_1B8C185CC()
{
  result = qword_1EBAA8C60;
  if (!qword_1EBAA8C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8C60);
  }

  return result;
}

unint64_t sub_1B8C18624()
{
  result = qword_1EBAA8C68;
  if (!qword_1EBAA8C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8C68);
  }

  return result;
}

unint64_t sub_1B8C1867C()
{
  result = qword_1EBAA8C70;
  if (!qword_1EBAA8C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8C70);
  }

  return result;
}

unint64_t sub_1B8C186D4()
{
  result = qword_1EBAA8C78;
  if (!qword_1EBAA8C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8C78);
  }

  return result;
}

unint64_t sub_1B8C1872C()
{
  result = qword_1EBAA8C80;
  if (!qword_1EBAA8C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8C80);
  }

  return result;
}

unint64_t sub_1B8C18784()
{
  result = qword_1EBAA8C88;
  if (!qword_1EBAA8C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8C88);
  }

  return result;
}

uint64_t FBKInlineView.feedbackController.getter()
{
  v3[1] = *v0;
  v4 = *(v0 + 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6DC0, &unk_1B8C2B180);
  MEMORY[0x1B8CC9B00](v3, v1);
  return v3[0];
}

uint64_t FBKInlineView.feedbackController.setter()
{
  v2 = *v0;
  v3 = *(v0 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6DC0, &unk_1B8C2B180);
  return sub_1B8C24E48();
}

void (*FBKInlineView.feedbackController.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  v6 = v1[1];
  v4[8] = *v1;
  v4[9] = v6;
  v7 = v1[2];
  v4[10] = v7;
  *v4 = v5;
  v4[1] = v6;
  v4[2] = v7;

  v8 = v7;
  v4[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6DC0, &unk_1B8C2B180);
  MEMORY[0x1B8CC9B00]();
  return sub_1B8B833D4;
}

uint64_t FBKInlineView.$feedbackController.getter()
{
  v3 = *v0;
  v4 = *(v0 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6DC0, &unk_1B8C2B180);
  sub_1B8C24E68();
  return v2;
}

uint64_t type metadata accessor for FBKInlineView()
{
  result = qword_1EBAA8CA8;
  if (!qword_1EBAA8CA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B8C18AC4()
{
  v0 = *(type metadata accessor for FBKInlineView() + 20);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7190, qword_1B8C2C1E0);
  return MEMORY[0x1B8CC9B00](v1);
}

uint64_t sub_1B8C18B1C(uint64_t a1)
{
  v2 = sub_1B8C23738();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2);
  LODWORD(a1) = *(type metadata accessor for FBKInlineView() + 20);
  v10(v7, v9, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7190, qword_1B8C2C1E0);
  sub_1B8C24E48();
  return (*(v3 + 8))(v9, v2);
}

uint64_t FBKInlineView.subject.setter(uint64_t a1)
{
  v2 = sub_1B8C23738();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(type metadata accessor for FBKInlineView() + 20);
  (*(v3 + 16))(v6, a1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7190, qword_1B8C2C1E0);
  sub_1B8C24E48();
  return (*(v3 + 8))(a1, v2);
}

void (*FBKInlineView.subject.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = sub_1B8C23738();
  *v5 = v6;
  v7 = *(v6 - 8);
  v5[1] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(v7 + 64));
    v9 = malloc(v8);
  }

  v5[3] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7190, qword_1B8C2C1E0);
  v5[4] = v10;
  if (v3)
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(*(*(v10 - 8) + 64));
  }

  v12 = v11;
  v5[5] = v11;
  v13 = type metadata accessor for FBKInlineView();
  sub_1B8B83A68(v1 + *(v13 + 20), v12);
  MEMORY[0x1B8CC9B00](v10);
  return sub_1B8B83990;
}

uint64_t sub_1B8C18F14(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for FBKInlineView() + 20);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7190, qword_1B8C2C1E0);
  return a1(v3);
}

uint64_t sub_1B8C18F70@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for FBKInlineView() + 24));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1B8C19AAC;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return sub_1B8B247D4(v4);
}

uint64_t sub_1B8C19004(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1B8C19A74;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (a2 + *(type metadata accessor for FBKInlineView() + 24));
  v8 = *v7;
  v9 = v7[1];
  sub_1B8B247D4(v3);
  result = sub_1B8B30A44(v8);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t FBKInlineView.onFormComplete.getter()
{
  v1 = (v0 + *(type metadata accessor for FBKInlineView() + 24));
  v2 = *v1;
  v3 = v1[1];
  sub_1B8B247D4(*v1);
  return v2;
}

uint64_t FBKInlineView.onFormComplete.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for FBKInlineView() + 24));
  v6 = v5[1];
  result = sub_1B8B30A44(*v5);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t FBKInlineView.init(feedbackController:subject:onFormComplete:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v14 = type metadata accessor for FBKInlineView();
  v15 = (a7 + v14[6]);
  v16 = a7 + v14[7];
  sub_1B8C24D58();
  *v16 = v18;
  *(v16 + 1) = v19;
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  result = sub_1B8B841EC(a4, a7 + v14[5]);
  *v15 = a5;
  v15[1] = a6;
  return result;
}

double FBKInlineView.body.getter@<D0>(uint64_t a1@<X8>)
{
  *a1 = sub_1B8C242E8();
  *(a1 + 8) = 0x4030000000000000;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8C98, &qword_1B8C315D8);
  sub_1B8C192D0(v1, a1 + *(v3 + 44));
  v4 = sub_1B8C24808();
  v5 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8CA0, &qword_1B8C315E0) + 36);
  *v5 = v4;
  result = 0.0;
  *(v5 + 8) = 0u;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 1;
  return result;
}

uint64_t sub_1B8C192D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v3 = type metadata accessor for FBKInlineThumbsUp();
  v4 = *(v3 - 8);
  v64 = v3 - 8;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3 - 8);
  v66 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v63 = &v50 - v8;
  v9 = type metadata accessor for FBKInlineView();
  v10 = v9 - 8;
  v11 = *(v9 - 8);
  v68 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FBKInlineThumbsDown();
  v15 = (v14 - 8);
  v16 = *(*(v14 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v65 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v50 - v19;
  v21 = a1[1];
  v62 = *a1;
  v60 = a1[2];
  *&v61 = v21;
  v71 = v62;
  v72 = v21;
  v73 = v60;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6DC0, &unk_1B8C2B180);
  sub_1B8C24E68();
  v53 = v69;
  v52 = v70;
  v58 = *(v10 + 28);
  v22 = v15[7];
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7190, qword_1B8C2C1E0);
  sub_1B8C24E68();
  v23 = a1 + *(v10 + 36);
  v56 = *v23;
  v55 = *(v23 + 1);
  LOBYTE(v69) = v56;
  *&v70 = v55;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5EE0, &qword_1B8C27CA8);
  sub_1B8C24D88();
  v24 = v71;
  v25 = v72;
  v26 = v73;
  v51 = type metadata accessor for FBKInlineView;
  v27 = v13;
  v50 = v13;
  sub_1B8C19D14(a1, v13, type metadata accessor for FBKInlineView);
  v28 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v29 = swift_allocObject();
  sub_1B8C19AD8(v27, v29 + v28);
  v30 = v15[8];
  v31 = &v20[v15[9]];
  *v20 = v53;
  *(v20 + 8) = v52;
  v32 = &v20[v30];
  *v32 = v24;
  *(v32 + 1) = v25;
  v32[16] = v26;
  *v31 = sub_1B8C19DDC;
  *(v31 + 1) = v29;
  v71 = v62;
  v72 = v61;
  v73 = v60;
  sub_1B8C24E68();
  v62 = v69;
  v61 = v70;
  v34 = v63;
  v33 = v64;
  v35 = &v63[*(v64 + 28)];
  sub_1B8C24E68();
  LOBYTE(v69) = v56;
  *&v70 = v55;
  sub_1B8C24D88();
  v36 = v71;
  v37 = v72;
  v38 = v73;
  v39 = a1;
  v40 = v50;
  sub_1B8C19D14(v39, v50, v51);
  v41 = swift_allocObject();
  sub_1B8C19AD8(v40, v41 + v28);
  v42 = *(v33 + 32);
  v43 = (v34 + *(v33 + 36));
  *v34 = v62;
  *(v34 + 8) = v61;
  v44 = v34 + v42;
  *v44 = v36;
  *(v44 + 8) = v37;
  *(v44 + 16) = v38;
  *v43 = sub_1B8C19C94;
  v43[1] = v41;
  v45 = v65;
  sub_1B8C19D14(v20, v65, type metadata accessor for FBKInlineThumbsDown);
  v46 = v66;
  sub_1B8C19D14(v34, v66, type metadata accessor for FBKInlineThumbsUp);
  v47 = v67;
  sub_1B8C19D14(v45, v67, type metadata accessor for FBKInlineThumbsDown);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8CD0, &unk_1B8C31660);
  sub_1B8C19D14(v46, v47 + *(v48 + 48), type metadata accessor for FBKInlineThumbsUp);
  sub_1B8C19D7C(v34, type metadata accessor for FBKInlineThumbsUp);
  sub_1B8C19D7C(v20, type metadata accessor for FBKInlineThumbsDown);
  sub_1B8C19D7C(v46, type metadata accessor for FBKInlineThumbsUp);
  return sub_1B8C19D7C(v45, type metadata accessor for FBKInlineThumbsDown);
}

double sub_1B8C197E0@<D0>(uint64_t a1@<X8>)
{
  *a1 = sub_1B8C242E8();
  *(a1 + 8) = 0x4030000000000000;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8C98, &qword_1B8C315D8);
  sub_1B8C192D0(v1, a1 + *(v3 + 44));
  v4 = sub_1B8C24808();
  v5 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8CA0, &qword_1B8C315E0) + 36);
  *v5 = v4;
  result = 0.0;
  *(v5 + 8) = 0u;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 1;
  return result;
}

void sub_1B8C19898()
{
  sub_1B8B84684(319, &qword_1EDC85640, type metadata accessor for FBKEvaluationController);
  if (v0 <= 0x3F)
  {
    sub_1B8B84684(319, &qword_1EBAA71B8, MEMORY[0x1E699C248]);
    if (v1 <= 0x3F)
    {
      sub_1B8B38178();
      if (v2 <= 0x3F)
      {
        sub_1B8B38128();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1B8C19984()
{
  result = qword_1EBAA8CB8;
  if (!qword_1EBAA8CB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA8CA0, &qword_1B8C315E0);
    sub_1B8C19A10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8CB8);
  }

  return result;
}

unint64_t sub_1B8C19A10()
{
  result = qword_1EBAA8CC0;
  if (!qword_1EBAA8CC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA8CC8, &qword_1B8C31658);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8CC0);
  }

  return result;
}

uint64_t sub_1B8C19A74(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_1B8C19AAC(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_1B8C19AD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FBKInlineView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_11Tm_0()
{
  v1 = type metadata accessor for FBKInlineView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + v3);

  v6 = *(v0 + v3 + 8);

  v7 = (v0 + v3 + v1[5]);
  v8 = *v7;

  v9 = *(v7 + 1);

  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7190, qword_1B8C2C1E0) + 32);
  v11 = sub_1B8C23738();
  (*(*(v11 - 8) + 8))(&v7[v10], v11);
  v12 = (v0 + v3 + v1[6]);
  if (*v12)
  {
    v13 = v12[1];
  }

  v14 = *(v0 + v3 + v1[7] + 8);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1B8C19C98(uint64_t a1)
{
  v3 = type metadata accessor for FBKInlineView();
  v5 = *(v3 - 8);
  result = v3 - 8;
  v6 = v1 + *(result + 32) + ((*(v5 + 80) + 16) & ~*(v5 + 80));
  if (*v6)
  {
    v7 = *(v6 + 8);
    return (*v6)(a1);
  }

  return result;
}

uint64_t sub_1B8C19D14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B8C19D7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_1B8C19E0C@<X0>(void *a1@<X8>)
{
  v3 = sub_1B8C19FC8(*(v1 + 8));
  *a1 = v3;

  return v3;
}

uint64_t sub_1B8C19E84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B8C19F74();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1B8C19EE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B8C19F74();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1B8C19F4C()
{
  sub_1B8C19F74();
  sub_1B8C24758();
  __break(1u);
}

unint64_t sub_1B8C19F74()
{
  result = qword_1EBAA8CD8;
  if (!qword_1EBAA8CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8CD8);
  }

  return result;
}

uint64_t sub_1B8C19FC8(uint64_t a1)
{
  v2 = sub_1B8C23C38();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8C23C28();
  v7 = sub_1B8C23C18();
  v8 = sub_1B8C25468();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13 = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_1B8B5DD48(0xD000000000000011, 0x80000001B8C37120, &v13);
    _os_log_impl(&dword_1B8B22000, v7, v8, "%{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1B8CCB0E0](v10, -1, -1);
    MEMORY[0x1B8CCB0E0](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  return a1;
}

uint64_t sub_1B8C1A1A0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA84D8, &qword_1B8C2F020);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = v19 - v2;
  v4 = sub_1B8C23C38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8C23C28();
  v9 = sub_1B8C23C18();
  v10 = sub_1B8C25468();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19[0] = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_1B8B5DD48(0xD00000000000001ELL, 0x80000001B8C371E0, v19);
    _os_log_impl(&dword_1B8B22000, v9, v10, "%{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x1B8CCB0E0](v12, -1, -1);
    MEMORY[0x1B8CCB0E0](v11, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8CE0, &qword_1B8C317C0);
  sub_1B8C247A8();
  v13 = v19[3];
  swift_getKeyPath();
  v19[0] = v13;
  sub_1B8C1A974();
  sub_1B8C23588();

  v14 = OBJC_IVAR____TtC8Feedback23FBKEvaluationController__formContext;
  swift_beginAccess();
  sub_1B8C1A9CC(v13 + v14, v3);

  v15 = type metadata accessor for FBKEvaluationController.FormContext(0);
  if ((*(*(v15 - 8) + 48))(v3, 1, v15) == 1)
  {
    sub_1B8C1AA3C(v3);
  }

  else
  {
    v16 = *&v3[*(v15 + 24)];
    v17 = v16;
    sub_1B8C1AAA4(v3);
    if (v16)
    {
      return v17;
    }
  }

  result = sub_1B8C258A8();
  __break(1u);
  return result;
}

uint64_t sub_1B8C1A514()
{
  v0 = sub_1B8C23C38();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8C23C28();
  v5 = sub_1B8C23C18();
  v6 = sub_1B8C25498();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_1B8B5DD48(0xD000000000000022, 0x80000001B8C37170, &v11);
    _os_log_impl(&dword_1B8B22000, v5, v6, "%{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B8CCB0E0](v8, -1, -1);
    MEMORY[0x1B8CCB0E0](v7, -1, -1);
  }

  return (*(v1 + 8))(v4, v0);
}

void sub_1B8C1A6E4(uint64_t a1)
{
  v2 = sub_1B8C23C38();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8C23C28();
  v7 = sub_1B8C23C18();
  v8 = sub_1B8C25498();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13 = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_1B8B5DD48(0xD000000000000029, 0x80000001B8C37140, &v13);
    _os_log_impl(&dword_1B8B22000, v7, v8, "%{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1B8CCB0E0](v10, -1, -1);
    MEMORY[0x1B8CCB0E0](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  if (*(a1 + OBJC_IVAR____TtC8Feedback23FBKEvaluationController__isFeedbackFormPresented))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v12 - 2) = a1;
    *(&v12 - 8) = 0;
    v13 = a1;
    sub_1B8C1A974();
    sub_1B8C23578();
  }

  else
  {
    *(a1 + OBJC_IVAR____TtC8Feedback23FBKEvaluationController__isFeedbackFormPresented) = 0;
  }

  sub_1B8BEAF7C();
}

unint64_t sub_1B8C1A974()
{
  result = qword_1EDC85660;
  if (!qword_1EDC85660)
  {
    type metadata accessor for FBKEvaluationController(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC85660);
  }

  return result;
}

uint64_t sub_1B8C1A9CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA84D8, &qword_1B8C2F020);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8C1AA3C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA84D8, &qword_1B8C2F020);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B8C1AAA4(uint64_t a1)
{
  v2 = type metadata accessor for FBKEvaluationController.FormContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B8C1AB2C()
{
  v0 = sub_1B8C23528();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8C23518();
  v5 = *(type metadata accessor for CatchUpDonationDecoder.Result.Mail(0) + 32);
  sub_1B8C234D8();
  if (v6 >= 86400.0)
  {
    v7 = [objc_allocWithZone(MEMORY[0x1E696AE78]) init];
    [v7 setUnitsStyle_];
    [v7 setDateTimeStyle_];
    v10 = sub_1B8C234E8();
    v8 = sub_1B8C234E8();
    v9 = [v7 localizedStringForDate:v10 relativeToDate:v8];
  }

  else
  {
    v7 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    [v7 setDateStyle_];
    [v7 setTimeStyle_];
    v8 = sub_1B8C234E8();
    v9 = [v7 stringFromDate_];
  }

  v11 = sub_1B8C25128();
  (*(v1 + 8))(v4, v0);
  return v11;
}

double sub_1B8C1AD40@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1B8C24478();
  v24 = 0;
  sub_1B8C1AF00(v2, &v14);
  v30 = v19;
  v31 = v20;
  v32 = v21;
  v27 = v16;
  v28 = v17;
  v29 = v18;
  v25 = v14;
  v26 = v15;
  v34[6] = v20;
  v34[7] = v21;
  v34[2] = v16;
  v34[3] = v17;
  v34[4] = v18;
  v34[5] = v19;
  v33 = v22;
  v35 = v22;
  v34[0] = v14;
  v34[1] = v15;
  sub_1B8B34450(&v25, v13, &qword_1EBAA8E40, &qword_1B8C31BB8);
  sub_1B8B3433C(v34, &qword_1EBAA8E40, &qword_1B8C31BB8);
  *(&v23[5] + 7) = v30;
  *(&v23[6] + 7) = v31;
  *(&v23[7] + 7) = v32;
  *(&v23[1] + 7) = v26;
  *(&v23[2] + 7) = v27;
  *(&v23[3] + 7) = v28;
  *(&v23[4] + 7) = v29;
  *(&v23[8] + 7) = v33;
  *(v23 + 7) = v25;
  v5 = v24;
  v6 = sub_1B8C248A8();
  KeyPath = swift_getKeyPath();
  v8 = v23[4];
  *(a1 + 97) = v23[5];
  v9 = v23[7];
  *(a1 + 113) = v23[6];
  *(a1 + 129) = v9;
  *(a1 + 144) = *(&v23[7] + 15);
  v10 = v23[0];
  *(a1 + 33) = v23[1];
  result = *&v23[2];
  v12 = v23[3];
  *(a1 + 49) = v23[2];
  *(a1 + 65) = v12;
  *(a1 + 81) = v8;
  *a1 = v4;
  *(a1 + 8) = 0x4020000000000000;
  *(a1 + 16) = v5;
  *(a1 + 17) = v10;
  *(a1 + 160) = KeyPath;
  *(a1 + 168) = v6;
  return result;
}

uint64_t sub_1B8C1AF00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B8C242E8();
  LOBYTE(v24) = 1;
  sub_1B8C1B254(a1, &v33);
  v38 = *v34;
  v39 = *&v34[16];
  v40 = *&v34[32];
  v41 = *&v34[48];
  v37 = v33;
  v42[1] = *v34;
  v42[2] = *&v34[16];
  v42[3] = *&v34[32];
  v42[4] = *&v34[48];
  v42[0] = v33;
  sub_1B8B34450(&v37, &v26, &qword_1EBAA7630, &qword_1B8C2C190);
  sub_1B8B3433C(v42, &qword_1EBAA7630, &qword_1B8C2C190);
  *&v36[23] = v38;
  *&v36[39] = v39;
  *&v36[55] = v40;
  *&v36[71] = v41;
  *&v36[7] = v37;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  if ((*(a1 + *(type metadata accessor for CatchUpMailMessageMetadata(0) + 20)) & 1) == 0)
  {
    v9 = *(a1 + 40);
    *&v33 = *(a1 + 32);
    *(&v33 + 1) = v9;
    sub_1B8B34CA8();

    v10 = sub_1B8C249E8();
    v12 = v11;
    v14 = v13;
    sub_1B8C24898();
    v5 = sub_1B8C249B8();
    v6 = v15;
    v23 = v16;
    v8 = v17;

    sub_1B8B34060(v10, v12, v14 & 1);

    v7 = v23 & 1;
    sub_1B8B34694(v5, v6, v23 & 1);
  }

  v24 = v4;
  v25[0] = 1;
  *&v25[1] = *v36;
  *&v25[17] = *&v36[16];
  *&v25[65] = *&v36[64];
  *&v25[49] = *&v36[48];
  *&v25[33] = *&v36[32];
  *&v25[80] = *&v36[79];
  v26 = v4;
  v27 = *v25;
  v32 = *&v36[79];
  v30 = *&v25[48];
  v31 = *&v25[64];
  v28 = *&v25[16];
  v29 = *&v25[32];
  sub_1B8B34450(&v24, &v33, &qword_1EBAA7680, &qword_1B8C2C1D0);
  sub_1B8BD8454(v5, v6, v7, v8);
  sub_1B8BD8498(v5, v6, v7, v8);
  v18 = v31;
  *(a2 + 64) = v30;
  *(a2 + 80) = v18;
  v19 = v32;
  v20 = v27;
  *a2 = v26;
  *(a2 + 16) = v20;
  v21 = v29;
  *(a2 + 32) = v28;
  *(a2 + 48) = v21;
  *(a2 + 96) = v19;
  *(a2 + 104) = v5;
  *(a2 + 112) = v6;
  *(a2 + 120) = v7;
  *(a2 + 128) = v8;
  sub_1B8BD8498(v5, v6, v7, v8);
  *&v34[33] = *&v36[32];
  *&v34[49] = *&v36[48];
  *v35 = *&v36[64];
  *&v34[1] = *v36;
  v33 = v4;
  v34[0] = 1;
  *&v35[15] = *&v36[79];
  *&v34[17] = *&v36[16];
  return sub_1B8B3433C(&v33, &qword_1EBAA7680, &qword_1B8C2C1D0);
}

uint64_t sub_1B8C1B254@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = *(a1 + 48);
  v35 = *(a1 + 56);
  sub_1B8B34CA8();

  v3 = sub_1B8C249E8();
  v5 = v4;
  v7 = v6;
  sub_1B8C24938();
  v8 = sub_1B8C249B8();
  v31 = v9;
  v32 = v8;
  v30 = v10;
  v33 = v11;

  sub_1B8B34060(v3, v5, v7 & 1);

  sub_1B8C1AB2C();
  v12 = sub_1B8C249E8();
  v14 = v13;
  v16 = v15;
  sub_1B8C24C98();
  v17 = sub_1B8C24998();
  v19 = v18;
  v21 = v20;
  sub_1B8B34060(v12, v14, v16 & 1);

  sub_1B8C24898();
  v22 = sub_1B8C249B8();
  v24 = v23;
  v26 = v25;
  v28 = v27;

  sub_1B8B34060(v17, v19, v21 & 1);

  *a2 = v32;
  *(a2 + 8) = v31;
  *(a2 + 16) = v30 & 1;
  *(a2 + 24) = v33;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v22;
  *(a2 + 56) = v24;
  *(a2 + 64) = v26 & 1;
  *(a2 + 72) = v28;
  sub_1B8B34694(v32, v31, v30 & 1);

  sub_1B8B34694(v22, v24, v26 & 1);

  sub_1B8B34060(v22, v24, v26 & 1);

  sub_1B8B34060(v32, v31, v30 & 1);
}

uint64_t sub_1B8C1B4A8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1B8C242A8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6D58, &qword_1B8C31BB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v17 - v11);
  sub_1B8B34450(v2, &v17 - v11, &qword_1EBAA6D58, &qword_1B8C31BB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1B8C23D78();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_1B8C25488();
    v16 = sub_1B8C247B8();
    sub_1B8C23C08();

    sub_1B8C24298();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_1B8C1B6AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v74 = sub_1B8C23D78();
  v3 = *(v74 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v74);
  v72 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v69 - v7;
  v9 = sub_1B8C23A28();
  v70 = *(v9 - 8);
  v71 = v9;
  v10 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B8C24078();
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8EA8, &qword_1B8C31C78);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v69 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8EB0, &qword_1B8C31C80);
  v23 = v22 - 8;
  v24 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v69 - v25;
  *v26 = sub_1B8C24478();
  *(v26 + 1) = 0;
  v26[16] = 0;
  v27 = &v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8EB8, &qword_1B8C31C88) + 44)];
  v73 = a1;
  sub_1B8C1BC74(a1, v27);
  LOBYTE(a1) = sub_1B8C24808();
  sub_1B8C23D18();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = &v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8EC0, &qword_1B8C31C90) + 36)];
  *v36 = a1;
  *(v36 + 1) = v29;
  *(v36 + 2) = v31;
  *(v36 + 3) = v33;
  *(v36 + 4) = v35;
  v36[40] = 0;
  v37 = sub_1B8C24CB8();
  v38 = sub_1B8C24808();
  v39 = &v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8EC8, &qword_1B8C31C98) + 36)];
  *v39 = v37;
  v39[8] = v38;
  *&v26[*(v23 + 44)] = sub_1B8C24CA8();
  v40 = *(v14 + 28);
  v41 = *MEMORY[0x1E697F468];
  v42 = sub_1B8C24418();
  (*(*(v42 - 8) + 104))(&v17[v40], v41, v42);
  __asm { FMOV            V0.2D, #8.0 }

  *v17 = _Q0;
  if (qword_1EBAA59B8 != -1)
  {
    swift_once();
  }

  v48 = v71;
  v49 = __swift_project_value_buffer(v71, qword_1EBAB3AA8);
  (*(v70 + 16))(v12, v49, v48);
  v50 = sub_1B8C24CE8();
  sub_1B8C1B4A8(v8);
  v51 = v72;
  v52 = v74;
  (*(v3 + 104))(v72, *MEMORY[0x1E697DBB8], v74);
  sub_1B8C23D68();
  v53 = *(v3 + 8);
  v53(v51, v52);
  v53(v8, v52);
  sub_1B8C23DB8();
  sub_1B8C1F018(v17, v21, MEMORY[0x1E697EAF0]);
  v54 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8ED0, &qword_1B8C31CA0) + 36)];
  v55 = v77;
  *v54 = v76;
  *(v54 + 1) = v55;
  *(v54 + 4) = v78;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8ED8, &qword_1B8C31CA8);
  *&v21[*(v56 + 52)] = v50;
  *&v21[*(v56 + 56)] = 256;
  v57 = sub_1B8C24F48();
  v59 = v58;
  sub_1B8C1F080(v17, MEMORY[0x1E697EAF0]);
  v60 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8EE0, &qword_1B8C31CB0) + 36)];
  *v60 = v57;
  v60[1] = v59;
  v61 = sub_1B8C24F48();
  v63 = v62;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8EE8, &qword_1B8C31CB8);
  v65 = v75;
  v66 = v75 + *(v64 + 36);
  sub_1B8B3883C(v21, v66, &qword_1EBAA8EA8, &qword_1B8C31C78);
  v67 = (v66 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8EF0, &qword_1B8C31CC0) + 36));
  *v67 = v61;
  v67[1] = v63;
  return sub_1B8B3883C(v26, v65, &qword_1EBAA8EB0, &qword_1B8C31C80);
}

uint64_t sub_1B8C1BC74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  v3 = sub_1B8C24EA8();
  v87 = *(v3 - 8);
  v88 = v3;
  v4 = v87[8];
  v5 = MEMORY[0x1EEE9AC00](v3);
  v85 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v84 = &v77 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8EF8, &qword_1B8C31CC8);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v83 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v77 - v13;
  v15 = a1 + *(type metadata accessor for CatchUpMailMessagePreviewer(0) + 20);
  sub_1B8C1F018(v15, v14, type metadata accessor for CatchUpDonationDecoder.Result.Mail);
  *(v14 + *(type metadata accessor for CatchUpMailMessageMetadata(0) + 20)) = 1;
  v89 = v14;
  LOBYTE(a1) = sub_1B8C24808();
  sub_1B8C23D18();
  v16 = v14 + *(v9 + 44);
  *v16 = a1;
  *(v16 + 8) = v17;
  *(v16 + 16) = v18;
  *(v16 + 24) = v19;
  *(v16 + 32) = v20;
  *(v16 + 40) = 0;
  sub_1B8C24E98();
  v77 = v15;
  v21 = *(v15 + 40);
  *&v106[0] = *(v15 + 32);
  *(&v106[0] + 1) = v21;
  sub_1B8B34CA8();

  v22 = sub_1B8C249E8();
  v24 = v23;
  LOBYTE(v14) = v25;
  sub_1B8C24918();
  v26 = sub_1B8C249B8();
  v28 = v27;
  v30 = v29;

  sub_1B8B34060(v22, v24, v14 & 1);

  v78 = sub_1B8C249A8();
  v79 = v31;
  v86 = v32;
  v34 = v33;
  sub_1B8B34060(v26, v28, v30 & 1);

  v35 = sub_1B8C24808();
  v36 = v35;
  v81 = v35;
  sub_1B8C23D18();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  LOBYTE(v26) = v34 & 1;
  LOBYTE(v106[0]) = v34 & 1;
  v80 = v34 & 1;
  LOBYTE(v101[0]) = 0;
  v45 = *v77;
  v46 = v77[1];

  sub_1B8B67FA4(v45, v46, 0, 1, &v93);
  LODWORD(v77) = sub_1B8C24808();
  sub_1B8C23D18();
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  LOBYTE(v106[0]) = 0;
  v55 = v83;
  sub_1B8B34450(v89, v83, &qword_1EBAA8EF8, &qword_1B8C31CC8);
  v56 = v88;
  v57 = v87[2];
  v58 = v85;
  v57(v85, v84, v88);
  v59 = v55;
  v60 = v82;
  sub_1B8B34450(v59, v82, &qword_1EBAA8EF8, &qword_1B8C31CC8);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8F00, &unk_1B8C31CD0);
  v57((v60 + v61[12]), v58, v56);
  v62 = (v60 + v61[16]);
  v64 = v78;
  v63 = v79;
  *&v97 = v78;
  *(&v97 + 1) = v86;
  LOBYTE(v98) = v26;
  *(&v98 + 1) = *v91;
  DWORD1(v98) = *&v91[3];
  *(&v98 + 1) = v79;
  LOBYTE(v99) = v36;
  *(&v99 + 1) = *v90;
  DWORD1(v99) = *&v90[3];
  *(&v99 + 1) = v38;
  *&v100[0] = v40;
  *(&v100[0] + 1) = v42;
  *&v100[1] = v44;
  BYTE8(v100[1]) = 0;
  v65 = v97;
  v66 = v98;
  *(v62 + 57) = *(v100 + 9);
  v67 = v100[0];
  v62[2] = v99;
  v62[3] = v67;
  *v62 = v65;
  v62[1] = v66;
  v68 = (v60 + v61[20]);
  v102 = v95;
  v103 = v96;
  v101[0] = v93;
  v101[1] = v94;
  v69 = v77;
  LOBYTE(v104) = v77;
  DWORD1(v104) = *&v92[3];
  *(&v104 + 1) = *v92;
  *(&v104 + 1) = v48;
  *&v105[0] = v50;
  *(&v105[0] + 1) = v52;
  *&v105[1] = v54;
  BYTE8(v105[1]) = 0;
  v70 = v94;
  *v68 = v93;
  v68[1] = v70;
  v71 = v102;
  v72 = v103;
  *(v68 + 89) = *(v105 + 9);
  v73 = v105[0];
  v68[4] = v104;
  v68[5] = v73;
  v68[2] = v71;
  v68[3] = v72;
  sub_1B8B34450(&v97, v106, &qword_1EBAA5E40, &qword_1B8C27C38);
  sub_1B8B34450(v101, v106, &qword_1EBAA8F08, &qword_1B8C31CE0);
  v74 = v88;
  v75 = v87[1];
  v75(v84, v88);
  sub_1B8B3433C(v89, &qword_1EBAA8EF8, &qword_1B8C31CC8);
  v106[0] = v93;
  v106[1] = v94;
  v106[2] = v95;
  v106[3] = v96;
  v107 = v69;
  *v108 = *v92;
  *&v108[3] = *&v92[3];
  v109 = v48;
  v110 = v50;
  v111 = v52;
  v112 = v54;
  v113 = 0;
  sub_1B8B3433C(v106, &qword_1EBAA8F08, &qword_1B8C31CE0);
  v114[0] = v64;
  v114[1] = v86;
  v115 = v80;
  *v116 = *v91;
  *&v116[3] = *&v91[3];
  v117 = v63;
  v118 = v81;
  *v119 = *v90;
  *&v119[3] = *&v90[3];
  v120 = v38;
  v121 = v40;
  v122 = v42;
  v123 = v44;
  v124 = 0;
  sub_1B8B3433C(v114, &qword_1EBAA5E40, &qword_1B8C27C38);
  v75(v85, v74);
  return sub_1B8B3433C(v83, &qword_1EBAA8EF8, &qword_1B8C31CC8);
}

uint64_t sub_1B8C1C258(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8E80, &qword_1B8C31C60);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  *v8 = sub_1B8C24478();
  *(v8 + 1) = 0x4030000000000000;
  v8[16] = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8E88, &qword_1B8C31C68);
  sub_1B8C1B6AC(v2, &v8[*(v9 + 44)]);
  v10 = sub_1B8C248A8();
  KeyPath = swift_getKeyPath();
  v12 = &v8[*(v5 + 36)];
  *v12 = KeyPath;
  v12[1] = v10;
  sub_1B8C1F018(v2, &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CatchUpMailMessagePreviewer);
  v13 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v14 = swift_allocObject();
  sub_1B8C1F454(&v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for CatchUpMailMessagePreviewer);
  sub_1B8C1F8F0();
  sub_1B8C24AA8();

  return sub_1B8B3433C(v8, &qword_1EBAA8E80, &qword_1B8C31C60);
}

uint64_t sub_1B8C1C468@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CatchUpMailOriginalContentFullScreenPreviewController(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = *(*v1 + 16);
  v7 = [objc_opt_self() mainBundle];
  v8 = sub_1B8C23348();
  v10 = v9;

  sub_1B8C1F018(v1, &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CatchUpMailOriginalContentFullScreenPreviewController);
  v11 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v12 = swift_allocObject();
  sub_1B8C1F454(&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for CatchUpMailOriginalContentFullScreenPreviewController);
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8DF0, &qword_1B8C31B10) + 40);
  *(a1 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6408, &qword_1B8C28D00);
  result = swift_storeEnumTagMultiPayload();
  *(a1 + 24) = sub_1B8C1F4BC;
  *(a1 + 32) = v12;
  *a1 = v8;
  *(a1 + 8) = v10;
  *(a1 + 16) = 0;
  return result;
}

uint64_t sub_1B8C1C6C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8DF8, &qword_1B8C31B48);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - v7;
  *a2 = sub_1B8C24468();
  *(a2 + 8) = 0x4040000000000000;
  *(a2 + 16) = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8E00, &qword_1B8C31B50);
  v10 = *a1;
  v13 = *(v9 + 44);
  v14 = v10;
  swift_getKeyPath();
  sub_1B8C1F54C(&qword_1EBAA8E08, MEMORY[0x1E6969530]);

  sub_1B8C23338();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8E10, &qword_1B8C31B78);
  sub_1B8B34CFC(&qword_1EBAA8E18, &qword_1EBAA8E10, &qword_1B8C31B78);
  sub_1B8B34CFC(&qword_1EBAA8E20, &qword_1EBAA8DF8, &qword_1B8C31B48);
  v11 = sub_1B8C25298();
  (*(v5 + 8))(v8, v4);

  v14 = v11;
  sub_1B8C23568();
  type metadata accessor for CatchUpMailMessagePreviewer(0);
  sub_1B8B34CFC(&qword_1EBAA8E28, &qword_1EBAA8E10, &qword_1B8C31B78);
  sub_1B8C1F54C(&qword_1EBAA8E30, type metadata accessor for CatchUpMailMessagePreviewer);
  sub_1B8C1F54C(&qword_1EBAA8E38, type metadata accessor for CatchUpDonationDecoder.Result.Mail);
  return sub_1B8C24EC8();
}

uint64_t sub_1B8C1C9D4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for CatchUpMailMessagePreviewer(0);
  sub_1B8C1F018(a1, a2 + *(v4 + 20), type metadata accessor for CatchUpDonationDecoder.Result.Mail);
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6D58, &qword_1B8C31BB0);
  result = swift_storeEnumTagMultiPayload();
  v6 = (a2 + *(v4 + 24));
  *v6 = 0;
  v6[1] = 0;
  return result;
}

uint64_t sub_1B8C1CA74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8CE8, &qword_1B8C318B0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  if (*(a1 + 16))
  {
    v21 = v12;
    v15 = *(type metadata accessor for CatchUpDonationDecoder.Result.Mail(0) - 8);
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    *v14 = sub_1B8C24468();
    *(v14 + 1) = 0x4040000000000000;
    v14[16] = 0;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8CF0, &qword_1B8C318B8);
    sub_1B8C1CC44(a1 + v16, a1, a2, a3, a4, &v14[*(v17 + 44)]);
    sub_1B8B2FD30(v14, a5);
    return (*(v21 + 56))(a5, 0, 1, v10);
  }

  else
  {
    v19 = *(v12 + 56);

    return v19(a5, 1, 1, v10);
  }
}

uint64_t sub_1B8C1CC44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v65 = a6;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8CF8, &qword_1B8C318C0);
  v11 = *(*(v63 - 8) + 64);
  MEMORY[0x1EEE9AC00](v63);
  v58 = (&v53 - v12);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8D00, &qword_1B8C318C8);
  v62 = *(v64 - 8);
  v13 = *(v62 + 64);
  v14 = MEMORY[0x1EEE9AC00](v64);
  v61 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v67 = &v53 - v16;
  v17 = type metadata accessor for CatchUpDonationDecoder.Result.Mail(0);
  v55 = *(v17 - 8);
  v18 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8D08, &qword_1B8C318D0);
  v19 = *(*(v57 - 8) + 64);
  MEMORY[0x1EEE9AC00](v57);
  v21 = &v53 - v20;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8D10, &qword_1B8C318D8);
  v68 = *(v60 - 8);
  v22 = v68[8];
  v23 = MEMORY[0x1EEE9AC00](v60);
  v59 = &v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v66 = &v53 - v25;
  *v21 = sub_1B8C242E8();
  *(v21 + 1) = 0;
  v21[16] = 1;
  v26 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8D18, &qword_1B8C318E0) + 44)];
  *v26 = sub_1B8C24478();
  *(v26 + 1) = 0x4030000000000000;
  v26[16] = 0;
  v27 = &v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8D20, &qword_1B8C318E8) + 44)];
  v56 = a1;
  sub_1B8C1D2CC(a1, v27);
  sub_1B8C1F018(a1, &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CatchUpDonationDecoder.Result.Mail);
  v28 = (*(v55 + 80) + 48) & ~*(v55 + 80);
  v29 = swift_allocObject();
  v54 = a2;
  v29[2] = a2;
  v29[3] = a3;
  v29[4] = a4;
  v29[5] = a5;
  sub_1B8C1F454(&v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v28, type metadata accessor for CatchUpDonationDecoder.Result.Mail);
  v55 = MEMORY[0x1E69817F8];
  sub_1B8B34CFC(&qword_1EBAA8D28, &qword_1EBAA8D08, &qword_1B8C318D0);

  v30 = a4;

  v31 = v66;
  sub_1B8C24AA8();

  sub_1B8B3433C(v21, &qword_1EBAA8D08, &qword_1B8C318D0);
  v32 = sub_1B8C242E8();
  v33 = v58;
  *v58 = v32;
  *(v33 + 8) = 0;
  *(v33 + 16) = 1;
  v34 = v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8D30, &qword_1B8C318F0) + 44);
  *v34 = sub_1B8C24478();
  *(v34 + 8) = 0x4030000000000000;
  *(v34 + 16) = 0;
  v35 = (v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8D38, &qword_1B8C318F8) + 44));
  v36 = v54;
  sub_1B8C1E120(v54, v56, v35);
  v37 = swift_allocObject();
  v37[2] = v36;
  v37[3] = a3;
  v37[4] = v30;
  v37[5] = a5;
  sub_1B8B34CFC(&qword_1EBAA8D40, &qword_1EBAA8CF8, &qword_1B8C318C0);

  v38 = v67;
  sub_1B8C24AA8();

  sub_1B8B3433C(v33, &qword_1EBAA8CF8, &qword_1B8C318C0);
  v39 = v68[2];
  v40 = v59;
  v41 = v31;
  v42 = v60;
  v39(v59, v41, v60);
  v43 = v61;
  v44 = v62;
  v45 = *(v62 + 16);
  v46 = v38;
  v47 = v64;
  v45(v61, v46, v64);
  v48 = v65;
  v39(v65, v40, v42);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8D48, &unk_1B8C31900);
  v45(&v48[*(v49 + 48)], v43, v47);
  v50 = *(v44 + 8);
  v50(v67, v47);
  v51 = v68[1];
  v51(v66, v42);
  v50(v43, v47);
  return (v51)(v40, v42);
}

uint64_t sub_1B8C1D2CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = sub_1B8C24078();
  v4 = *(*(v66 - 8) + 64);
  MEMORY[0x1EEE9AC00](v66);
  v6 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B8C23A28();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8D88, &qword_1B8C31980);
  v12 = *(*(v67 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v67);
  v70 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v66 - v15;
  v69 = sub_1B8C242E8();
  LOBYTE(v78[0]) = 1;
  sub_1B8C1D924(v75);
  *&v71[7] = v75[0];
  *&v71[23] = v75[1];
  *&v71[39] = v75[2];
  *&v71[55] = v75[3];
  v68 = LOBYTE(v78[0]);
  *v16 = sub_1B8C24478();
  *(v16 + 1) = 0x4030000000000000;
  v16[16] = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8D90, &qword_1B8C31988);
  sub_1B8C1DAE8(a1, &v16[*(v17 + 44)]);
  LOBYTE(a1) = sub_1B8C24808();
  sub_1B8C23D18();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8D98, &qword_1B8C31990) + 36)];
  *v26 = a1;
  *(v26 + 1) = v19;
  *(v26 + 2) = v21;
  *(v26 + 3) = v23;
  *(v26 + 4) = v25;
  v26[40] = 0;
  if (qword_1EBAA59A0 != -1)
  {
    swift_once();
  }

  v27 = __swift_project_value_buffer(v7, qword_1EBAB3A60);
  v28 = *(v8 + 16);
  v28(v11, v27, v7);
  v29 = sub_1B8C24CE8();
  v30 = sub_1B8C24808();
  v31 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8DA0, &qword_1B8C31998) + 36)];
  *v31 = v29;
  v31[8] = v30;
  v32 = *(v66 + 20);
  v33 = *MEMORY[0x1E697F468];
  v34 = sub_1B8C24418();
  (*(*(v34 - 8) + 104))(&v6[v32], v33, v34);
  __asm { FMOV            V0.2D, #8.0 }

  *v6 = _Q0;
  if (qword_1EBAA59B8 != -1)
  {
    swift_once();
  }

  v40 = __swift_project_value_buffer(v7, qword_1EBAB3AA8);
  v28(v11, v40, v7);
  v41 = sub_1B8C24CE8();
  sub_1B8C23DB8();
  v42 = &v16[*(v67 + 36)];
  v43 = MEMORY[0x1E697EAF0];
  sub_1B8C1F018(v6, v42, MEMORY[0x1E697EAF0]);
  v44 = *&v72 * 0.5;
  v45 = v42 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7068, &unk_1B8C2CD10) + 68);
  sub_1B8C1F018(v6, v45, v43);
  *(v45 + *(sub_1B8C24068() + 20)) = v44;
  v46 = v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7078, &qword_1B8C2ACE0) + 36);
  v47 = v73;
  *v46 = v72;
  *(v46 + 16) = v47;
  *(v46 + 32) = v74;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7080, &unk_1B8C2CD20);
  *(v45 + *(v48 + 52)) = v41;
  *(v45 + *(v48 + 56)) = 256;
  v49 = sub_1B8C24F48();
  v51 = v50;
  sub_1B8C1F080(v6, MEMORY[0x1E697EAF0]);
  v52 = (v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7088, &qword_1B8C2ACE8) + 36));
  *v52 = v49;
  v52[1] = v51;
  v53 = sub_1B8C24F48();
  v55 = v54;
  v56 = (v42 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7070, &qword_1B8C2CD30) + 36));
  *v56 = v53;
  v56[1] = v55;
  v57 = v70;
  sub_1B8B34450(v16, v70, &qword_1EBAA8D88, &qword_1B8C31980);
  v58 = v69;
  v76[0] = v69;
  v76[1] = 0;
  v59 = v68;
  v77[0] = v68;
  *&v77[1] = *v71;
  *&v77[17] = *&v71[16];
  *&v77[33] = *&v71[32];
  *&v77[49] = *&v71[48];
  *&v77[64] = *&v71[63];
  v60 = *v77;
  *a2 = v69;
  *(a2 + 16) = v60;
  v61 = *&v77[16];
  v62 = *&v77[32];
  v63 = *&v77[48];
  *(a2 + 80) = *&v77[64];
  *(a2 + 48) = v62;
  *(a2 + 64) = v63;
  *(a2 + 32) = v61;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8DA8, &qword_1B8C319A0);
  sub_1B8B34450(v57, a2 + *(v64 + 48), &qword_1EBAA8D88, &qword_1B8C31980);
  sub_1B8B34450(v76, v78, &qword_1EBAA8D78, &qword_1B8C31940);
  sub_1B8B3433C(v16, &qword_1EBAA8D88, &qword_1B8C31980);
  sub_1B8B3433C(v57, &qword_1EBAA8D88, &qword_1B8C31980);
  v78[0] = v58;
  v78[1] = 0;
  v79 = v59;
  v81 = *&v71[16];
  v82 = *&v71[32];
  *v83 = *&v71[48];
  *&v83[15] = *&v71[63];
  v80 = *v71;
  return sub_1B8B3433C(v78, &qword_1EBAA8D78, &qword_1B8C31940);
}

uint64_t sub_1B8C1D924@<X0>(uint64_t a1@<X8>)
{
  sub_1B8C243A8();
  v2 = sub_1B8C249C8();
  v4 = v3;
  v6 = v5;
  sub_1B8C24928();
  v7 = sub_1B8C249B8();
  v9 = v8;
  v11 = v10;

  sub_1B8B34060(v2, v4, v6 & 1);

  sub_1B8C24C98();
  v12 = sub_1B8C24998();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_1B8B34060(v7, v9, v11 & 1);

  v19 = sub_1B8C24D08();
  v20 = sub_1B8C24C98();
  *a1 = v12;
  *(a1 + 8) = v14;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v18;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = v19;
  *(a1 + 56) = v20;
  sub_1B8B34694(v12, v14, v16 & 1);

  sub_1B8B34060(v12, v14, v16 & 1);
}

uint64_t sub_1B8C1DAE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7908, &unk_1B8C2CD40);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v28[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v28[-v10];
  v12 = type metadata accessor for CatchUpMailMessageMetadata(0);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v28[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v28[-v18];
  sub_1B8C1F018(a1, &v28[-v18], type metadata accessor for CatchUpDonationDecoder.Result.Mail);
  v19[*(v13 + 28)] = 0;
  sub_1B8C24C98();
  v29 = a1;
  sub_1B8C24608();
  v20 = sub_1B8C24C98();
  *&v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7910, &qword_1B8C2CD50) + 36)] = v20;
  v21 = sub_1B8C24898();
  KeyPath = swift_getKeyPath();
  v23 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7918, &qword_1B8C2CD88) + 36)];
  *v23 = KeyPath;
  v23[1] = v21;
  v24 = swift_getKeyPath();
  v25 = &v11[*(v5 + 44)];
  *v25 = v24;
  *(v25 + 1) = 4;
  v25[16] = 0;
  sub_1B8C1F018(v19, v17, type metadata accessor for CatchUpMailMessageMetadata);
  sub_1B8B34450(v11, v9, &qword_1EBAA7908, &unk_1B8C2CD40);
  sub_1B8C1F018(v17, a2, type metadata accessor for CatchUpMailMessageMetadata);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8DB0, &unk_1B8C319E0);
  sub_1B8B34450(v9, a2 + *(v26 + 48), &qword_1EBAA7908, &unk_1B8C2CD40);
  sub_1B8B3433C(v11, &qword_1EBAA7908, &unk_1B8C2CD40);
  sub_1B8C1F080(v19, type metadata accessor for CatchUpMailMessageMetadata);
  sub_1B8B3433C(v9, &qword_1EBAA7908, &unk_1B8C2CD40);
  return sub_1B8C1F080(v17, type metadata accessor for CatchUpMailMessageMetadata);
}

uint64_t sub_1B8C1DDA4()
{
  v0 = sub_1B8C24398();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = sub_1B8C24618();
  v4 = v3;
  v6 = v5;
  sub_1B8C24388();
  sub_1B8C24378();
  sub_1B8C24358();
  sub_1B8C24378();
  v7 = *(type metadata accessor for CatchUpDonationDecoder.Result.Mail(0) + 40);
  sub_1B8C24348();
  sub_1B8C24378();
  sub_1B8C243B8();
  v8 = sub_1B8C249C8();
  sub_1B8B34060(v2, v4, v6 & 1);

  return v8;
}

uint64_t sub_1B8C1DF14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1B8C237B8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FullScreenPreviewController.Content.PreviewType(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[1] = a2;
  v22[2] = a3;
  v22[3] = a4;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA63B8, &qword_1B8C28C60);
  MEMORY[0x1B8CC9B00](v22, v18);
  v19 = *(type metadata accessor for CatchUpDonationDecoder.Result.Mail(0) + 40);
  v20 = sub_1B8C23328();
  (*(*(v20 - 8) + 16))(v17, a5 + v19, v20);
  swift_storeEnumTagMultiPayload();
  (*(v10 + 104))(v13, *MEMORY[0x1E699C2E0], v9);
  sub_1B8B5FE50(v17, v13);

  (*(v10 + 8))(v13, v9);
  return sub_1B8C1F080(v17, type metadata accessor for FullScreenPreviewController.Content.PreviewType);
}

uint64_t sub_1B8C1E120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, _OWORD *a3@<X8>)
{
  v67 = a2;
  v73 = a3;
  v68 = sub_1B8C24078();
  v4 = *(*(v68 - 8) + 64);
  MEMORY[0x1EEE9AC00](v68);
  v6 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B8C23A28();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8D50, &qword_1B8C31910);
  v12 = *(*(v69 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v69);
  v72 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v67 - v15;
  v71 = sub_1B8C242E8();
  LOBYTE(v81[0]) = 1;
  sub_1B8C1E7B0(a1, v78);
  *&v74[7] = v78[0];
  *&v74[23] = v78[1];
  *&v74[39] = v78[2];
  *&v74[55] = v78[3];
  v70 = LOBYTE(v81[0]);
  *v16 = sub_1B8C24478();
  *(v16 + 1) = 0x4030000000000000;
  v16[16] = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8D58, &qword_1B8C31918);
  sub_1B8C1EA24(v67, a1, &v16[*(v17 + 44)]);
  LOBYTE(a1) = sub_1B8C24808();
  sub_1B8C23D18();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8D60, &qword_1B8C31920) + 36)];
  *v26 = a1;
  *(v26 + 1) = v19;
  *(v26 + 2) = v21;
  *(v26 + 3) = v23;
  *(v26 + 4) = v25;
  v26[40] = 0;
  if (qword_1EBAA59A0 != -1)
  {
    swift_once();
  }

  v27 = __swift_project_value_buffer(v7, qword_1EBAB3A60);
  v28 = *(v8 + 16);
  v28(v11, v27, v7);
  v29 = sub_1B8C24CE8();
  v30 = sub_1B8C24808();
  v31 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8D68, &unk_1B8C31928) + 36)];
  *v31 = v29;
  v31[8] = v30;
  v32 = *(v68 + 20);
  v33 = *MEMORY[0x1E697F468];
  v34 = sub_1B8C24418();
  (*(*(v34 - 8) + 104))(&v6[v32], v33, v34);
  __asm { FMOV            V0.2D, #8.0 }

  *v6 = _Q0;
  if (qword_1EBAA59B8 != -1)
  {
    swift_once();
  }

  v40 = __swift_project_value_buffer(v7, qword_1EBAB3AA8);
  v28(v11, v40, v7);
  v41 = sub_1B8C24CE8();
  sub_1B8C23DB8();
  v42 = &v16[*(v69 + 36)];
  v43 = MEMORY[0x1E697EAF0];
  sub_1B8C1F018(v6, v42, MEMORY[0x1E697EAF0]);
  v44 = *&v75 * 0.5;
  v45 = v42 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7068, &unk_1B8C2CD10) + 68);
  sub_1B8C1F018(v6, v45, v43);
  *(v45 + *(sub_1B8C24068() + 20)) = v44;
  v46 = v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7078, &qword_1B8C2ACE0) + 36);
  v47 = v76;
  *v46 = v75;
  *(v46 + 16) = v47;
  *(v46 + 32) = v77;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7080, &unk_1B8C2CD20);
  *(v45 + *(v48 + 52)) = v41;
  *(v45 + *(v48 + 56)) = 256;
  v49 = sub_1B8C24F48();
  v51 = v50;
  sub_1B8C1F080(v6, MEMORY[0x1E697EAF0]);
  v52 = (v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7088, &qword_1B8C2ACE8) + 36));
  *v52 = v49;
  v52[1] = v51;
  v53 = sub_1B8C24F48();
  v55 = v54;
  v56 = (v42 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7070, &qword_1B8C2CD30) + 36));
  *v56 = v53;
  v56[1] = v55;
  v57 = v72;
  sub_1B8B34450(v16, v72, &qword_1EBAA8D50, &qword_1B8C31910);
  v58 = v71;
  v79 = v71;
  v59 = v70;
  v80[0] = v70;
  *&v80[1] = *v74;
  *&v80[17] = *&v74[16];
  *&v80[33] = *&v74[32];
  *&v80[49] = *&v74[48];
  *&v80[64] = *&v74[63];
  v60 = *v80;
  v61 = v73;
  *v73 = v71;
  v61[1] = v60;
  v62 = *&v80[16];
  v63 = *&v80[32];
  v64 = *&v80[48];
  *(v61 + 10) = *&v80[64];
  v61[3] = v63;
  v61[4] = v64;
  v61[2] = v62;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8D70, &qword_1B8C31938);
  sub_1B8B34450(v57, v61 + *(v65 + 48), &qword_1EBAA8D50, &qword_1B8C31910);
  sub_1B8B34450(&v79, v81, &qword_1EBAA8D78, &qword_1B8C31940);
  sub_1B8B3433C(v16, &qword_1EBAA8D50, &qword_1B8C31910);
  sub_1B8B3433C(v57, &qword_1EBAA8D50, &qword_1B8C31910);
  v81[0] = v58;
  v81[1] = 0;
  v82 = v59;
  v84 = *&v74[16];
  v85 = *&v74[32];
  *v86 = *&v74[48];
  *&v86[15] = *&v74[63];
  v83 = *v74;
  return sub_1B8B3433C(v81, &qword_1EBAA8D78, &qword_1B8C31940);
}

uint64_t sub_1B8C1E7B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = [objc_opt_self() mainBundle];
  sub_1B8C23348();

  sub_1B8B34CA8();
  v5 = sub_1B8C249E8();
  v7 = v6;
  LOBYTE(v3) = v8;
  sub_1B8C24928();
  v9 = sub_1B8C249B8();
  v11 = v10;
  v13 = v12;

  sub_1B8B34060(v5, v7, v3 & 1);

  sub_1B8C24C98();
  v14 = sub_1B8C24998();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_1B8B34060(v9, v11, v13 & 1);

  v21 = sub_1B8C24D08();
  v22 = sub_1B8C24C98();
  *a2 = v14;
  *(a2 + 8) = v16;
  *(a2 + 16) = v18 & 1;
  *(a2 + 24) = v20;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v21;
  *(a2 + 56) = v22;
  sub_1B8B34694(v14, v16, v18 & 1);

  sub_1B8B34060(v14, v16, v18 & 1);
}

uint64_t sub_1B8C1EA24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for CatchUpMailMessageMetadata(0);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v43 - v12;
  sub_1B8C1F018(a1, &v43 - v12, type metadata accessor for CatchUpDonationDecoder.Result.Mail);
  v13[*(v7 + 28)] = 0;
  if (*(a2 + 16))
  {
    v14 = *(type metadata accessor for CatchUpDonationDecoder.Result.Mail(0) - 8);
    v15 = a2 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v17 = *(v15 + 16);
    v16 = *(v15 + 24);
    v49 = v17;
    v50 = v16;
    v47 = 10;
    v48 = 0xE100000000000000;
    v45 = 32;
    v46 = 0xE100000000000000;
    sub_1B8B34CA8();
    v49 = sub_1B8C25688();
    v50 = v18;
    v19 = sub_1B8C249E8();
    v21 = v20;
    v23 = v22;
    v49 = sub_1B8C24C98();
    v24 = sub_1B8C24998();
    v43 = a3;
    v44 = v11;
    v26 = v25;
    v28 = v27;
    sub_1B8B34060(v19, v21, v23 & 1);

    sub_1B8C24898();
    v29 = sub_1B8C249B8();
    v31 = v30;
    v33 = v32;
    v35 = v34;

    v36 = v28 & 1;
    v37 = v26;
    a3 = v43;
    v11 = v44;
    sub_1B8B34060(v24, v37, v36);

    KeyPath = swift_getKeyPath();
    v39 = v33 & 1;
    sub_1B8B34694(v29, v31, v39);

    v40 = 8;
  }

  else
  {
    v29 = 0;
    v31 = 0;
    v39 = 0;
    v35 = 0;
    KeyPath = 0;
    v40 = 0;
  }

  sub_1B8C1F018(v13, v11, type metadata accessor for CatchUpMailMessageMetadata);
  sub_1B8C1F018(v11, a3, type metadata accessor for CatchUpMailMessageMetadata);
  v41 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8D80, &qword_1B8C31978) + 48);
  sub_1B8C1F100(v29, v31, v39, v35);
  sub_1B8C1F150(v29, v31, v39, v35);
  *v41 = v29;
  *(v41 + 8) = v31;
  *(v41 + 16) = v39;
  *(v41 + 24) = v35;
  *(v41 + 32) = KeyPath;
  *(v41 + 40) = v40;
  *(v41 + 48) = 0;
  sub_1B8C1F080(v13, type metadata accessor for CatchUpMailMessageMetadata);
  sub_1B8C1F150(v29, v31, v39, v35);
  return sub_1B8C1F080(v11, type metadata accessor for CatchUpMailMessageMetadata);
}

uint64_t sub_1B8C1EDC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1B8C237B8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FullScreenPreviewController.Content.PreviewType(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19[1] = a2;
  v19[2] = a3;
  v19[3] = a4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA63B8, &qword_1B8C28C60);
  MEMORY[0x1B8CC9B00](v19, v17);
  *v16 = a1;
  swift_storeEnumTagMultiPayload();
  (*(v9 + 104))(v12, *MEMORY[0x1E699C2E0], v8);

  sub_1B8B5FE50(v16, v12);

  (*(v9 + 8))(v12, v8);
  return sub_1B8C1F080(v16, type metadata accessor for FullScreenPreviewController.Content.PreviewType);
}

uint64_t sub_1B8C1EFA4()
{
  v1 = *(type metadata accessor for CatchUpDonationDecoder.Result.Mail(0) - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80));

  return sub_1B8C1DF14(v2, v3, v4, v5, v6);
}

uint64_t sub_1B8C1F018(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B8C1F080(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B8C1F100(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1B8B34694(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1B8C1F150(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1B8B34060(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1B8C1F1D0()
{
  result = type metadata accessor for CatchUpDonationDecoder.Result.Mail(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B8C1F28C()
{
  sub_1B8C1F6B4(319, &qword_1EBAA6720, type metadata accessor for CatchUpDonationDecoder.Result.Mail, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B8C1F718(319, &qword_1EBAA70F8, &qword_1EBAA7100, &qword_1B8C2AFD8, MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1B8C1F36C()
{
  result = qword_1EBAA8DD8;
  if (!qword_1EBAA8DD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA8DE0, qword_1B8C31A60);
    sub_1B8B34CFC(&qword_1EBAA8DE8, &qword_1EBAA8CE8, &qword_1B8C318B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8DD8);
  }

  return result;
}

uint64_t sub_1B8C1F454(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B8C1F4BC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CatchUpMailOriginalContentFullScreenPreviewController(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_1B8C1C6C0(v4, a1);
}

uint64_t sub_1B8C1F54C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1B8C1F5BC()
{
  sub_1B8C1F6B4(319, &qword_1EBAA6528, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for CatchUpDonationDecoder.Result.Mail(319);
    if (v1 <= 0x3F)
    {
      sub_1B8C1F718(319, &qword_1EBAA5DF0, &qword_1EBAA5DF8, &qword_1B8C31BF0, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B8C1F6B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B8C1F718(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1B8C1F77C()
{
  result = qword_1EBAA8E60;
  if (!qword_1EBAA8E60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA8E68, &qword_1B8C31BF8);
    sub_1B8B34CFC(&qword_1EBAA8E70, &qword_1EBAA8E78, &unk_1B8C31C00);
    sub_1B8B34CFC(&qword_1EBAA7A48, &unk_1EBAA7A50, &qword_1B8C2D370);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8E60);
  }

  return result;
}

uint64_t sub_1B8C1F87C()
{
  v1 = type metadata accessor for CatchUpMailMessagePreviewer(0);
  v3 = *(v1 - 8);
  result = v1 - 8;
  v4 = v0 + *(result + 32) + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  if (*v4)
  {
    v5 = *(v4 + 8);
    return (*v4)();
  }

  return result;
}

unint64_t sub_1B8C1F8F0()
{
  result = qword_1EBAA8E90;
  if (!qword_1EBAA8E90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA8E80, &qword_1B8C31C60);
    sub_1B8B34CFC(&qword_1EBAA8E98, &qword_1EBAA8EA0, &qword_1B8C31C70);
    sub_1B8B34CFC(&qword_1EBAA7A48, &unk_1EBAA7A50, &qword_1B8C2D370);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8E90);
  }

  return result;
}

void *sub_1B8C1F9D4(unint64_t a1, size_t *a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA85A0, &qword_1B8C28C20);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v29 - v9;
  v11 = sub_1B8C23498();
  v32 = *(v11 - 8);
  v12 = *(v32 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v39 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v31 = &v29 - v16;
  if (a1 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v15 = v27)
  {
    v18 = 0;
    v37 = a1 & 0xFFFFFFFFFFFFFF8;
    v38 = a1 & 0xC000000000000001;
    v34 = (v32 + 32);
    v35 = (v32 + 48);
    v19 = MEMORY[0x1E69E7CC0];
    v29 = a2;
    v30 = a3;
    v40 = v15;
    v36 = i;
    v33 = a1;
    while (1)
    {
      if (v38)
      {
        v15 = MEMORY[0x1B8CCA4C0](v18, a1);
      }

      else
      {
        if (v18 >= *(v37 + 16))
        {
          goto LABEL_20;
        }

        v15 = *(a1 + 8 * v18 + 32);
      }

      v21 = v15;
      a1 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      v41 = v15;
      sub_1B8C209D0(&v41, a2, v10);
      if (v3)
      {

        return v19;
      }

      v22 = v40;
      if ((*v35)(v10, 1, v40) == 1)
      {
        v15 = sub_1B8BD17D0(v10);
      }

      else
      {
        v23 = *v34;
        v24 = v31;
        (*v34)(v31, v10, v22);
        v23(v39, v24, v22);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_1B8B5D3EC(0, v19[2] + 1, 1, v19);
        }

        v26 = v19[2];
        v25 = v19[3];
        if (v26 >= v25 >> 1)
        {
          v19 = sub_1B8B5D3EC(v25 > 1, v26 + 1, 1, v19);
        }

        v19[2] = v26 + 1;
        v15 = (v23)(v19 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v26, v39, v40);
        a2 = v29;
        a3 = v30;
      }

      ++v18;
      v20 = a1 == v36;
      a1 = v33;
      if (v20)
      {
        return v19;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    v27 = v15;
    i = sub_1B8C258B8();
  }

  return MEMORY[0x1E69E7CC0];
}

size_t sub_1B8C1FD2C()
{
  ObjectType = swift_getObjectType();
  v8 = MEMORY[0x1E69E7CC0];
  v2 = *(v0 + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_sandboxExtensionAttachments);

  v4 = sub_1B8C1F9D4(v3, &v8, ObjectType);

  v5 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_attachments;
  swift_beginAccess();
  v6 = *(v0 + v5);
  *(v0 + v5) = v4;

  return v8;
}

uint64_t sub_1B8C1FDD4()
{
  v1 = sub_1B8C23498();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v82 - v8;
  v10 = MEMORY[0x1EEE9AC00](v7);
  v88 = &v82 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v82 - v12;
  v14 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_attachments;
  swift_beginAccess();
  v15 = *(v0 + v14);
  v98 = *(v15 + 16);
  if (!v98)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v86 = v9;
  v92 = v6;
  v97 = v15 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v96 = (v2 + 8);
  v83 = (v2 + 32);
  v82 = (v2 + 40);

  v17 = 0;
  v18 = 0;
  v89 = MEMORY[0x1E69E7CC8];
  *&v19 = 136446210;
  v84 = v19;
  *&v19 = 136446466;
  v87 = v19;
  v99 = v1;
  v93 = v2;
  v94 = v2 + 16;
  v95 = v16;
  v90 = v13;
  while (v17 < *(v16 + 16))
  {
    v21 = *(v2 + 72);
    v22 = *(v2 + 16);
    v22(v13, v97 + v21 * v17, v1);
    v23 = sub_1B8C23408();
    v24 = v18;
    if (v18)
    {
      if (qword_1EBAA5960 != -1)
      {
        swift_once();
      }

      v25 = sub_1B8C23C38();
      __swift_project_value_buffer(v25, qword_1EBAA8F10);
      v26 = v92;
      v22(v92, v13, v1);
      v27 = v24;
      v28 = v13;
      v29 = sub_1B8C23C18();
      v30 = sub_1B8C25478();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        v100[0] = v91;
        *v31 = v87;
        sub_1B8C02358();
        v32 = sub_1B8C259E8();
        v34 = v33;
        v35 = v24;
        v36 = *v96;
        (*v96)(v26, v99);
        v37 = sub_1B8B5DD48(v32, v34, v100);

        *(v31 + 4) = v37;
        *(v31 + 12) = 2082;
        v38 = v35;
        swift_getErrorValue();
        v39 = sub_1B8C25A68();
        v41 = sub_1B8B5DD48(v39, v40, v100);

        *(v31 + 14) = v41;
        _os_log_impl(&dword_1B8B22000, v29, v30, "Error checking url [%{public}s] error: [%{public}s]. Will not attach.", v31, 0x16u);
        v42 = v91;
        swift_arrayDestroy();
        MEMORY[0x1B8CCB0E0](v42, -1, -1);
        v43 = v31;
        v1 = v99;
        MEMORY[0x1B8CCB0E0](v43, -1, -1);

        v13 = v90;
        v36(v90, v1);
        v18 = 0;
        v2 = v93;
      }

      else
      {

        v20 = *v96;
        (*v96)(v26, v1);
        v20(v28, v1);
        v18 = 0;
        v2 = v93;
        v13 = v28;
      }

      goto LABEL_4;
    }

    if ((v23 & 1) == 0)
    {
      v91 = 0;
      if (qword_1EBAA5960 != -1)
      {
        swift_once();
      }

      v61 = sub_1B8C23C38();
      __swift_project_value_buffer(v61, qword_1EBAA8F10);
      v62 = v86;
      v22(v86, v13, v1);
      v63 = sub_1B8C23C18();
      v64 = v13;
      v65 = sub_1B8C25478();
      if (os_log_type_enabled(v63, v65))
      {
        v66 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        v100[0] = v85;
        *v66 = v84;
        sub_1B8C02358();
        v67 = sub_1B8C259E8();
        v69 = v68;
        v70 = *v96;
        (*v96)(v62, v1);
        v71 = v70;
        v72 = sub_1B8B5DD48(v67, v69, v100);

        *(v66 + 4) = v72;
        _os_log_impl(&dword_1B8B22000, v63, v65, "Given url is not reachable [%{public}s]. Will not attach.", v66, 0xCu);
        v73 = v85;
        __swift_destroy_boxed_opaque_existential_0(v85);
        v2 = v93;
        MEMORY[0x1B8CCB0E0](v73, -1, -1);
        MEMORY[0x1B8CCB0E0](v66, -1, -1);

        v13 = v90;
        v71(v90, v1);
      }

      else
      {

        v74 = *v96;
        (*v96)(v62, v1);
        v74(v64, v1);
        v13 = v64;
      }

      v18 = v91;
      goto LABEL_4;
    }

    v44 = sub_1B8C23468();
    v45 = v13;
    v46 = v44;
    v47 = v1;
    v49 = v48;
    v50 = v45;
    v22(v88, v45, v47);
    v51 = v89;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v100[0] = v51;
    v53 = sub_1B8B5E2DC(v46, v49);
    v55 = *(v51 + 16);
    v56 = (v54 & 1) == 0;
    v57 = __OFADD__(v55, v56);
    v58 = v55 + v56;
    if (v57)
    {
      goto LABEL_31;
    }

    v59 = v54;
    if (*(v51 + 24) < v58)
    {
      sub_1B8B93638(v58, isUniquelyReferenced_nonNull_native);
      v53 = sub_1B8B5E2DC(v46, v49);
      if ((v59 & 1) != (v60 & 1))
      {
        goto LABEL_33;
      }

LABEL_23:
      v2 = v93;
      if (v59)
      {
        goto LABEL_24;
      }

      goto LABEL_26;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_23;
    }

    v76 = v53;
    sub_1B8B947F4();
    v53 = v76;
    v2 = v93;
    if (v59)
    {
LABEL_24:
      v75 = v53;

      v89 = v100[0];
      v1 = v99;
      (*v82)(*(v100[0] + 56) + v75 * v21, v88, v99);
      v13 = v50;
      (*v96)(v50, v1);
      goto LABEL_4;
    }

LABEL_26:
    v77 = v100[0];
    *(v100[0] + 8 * (v53 >> 6) + 64) |= 1 << v53;
    v78 = (v77[6] + 16 * v53);
    *v78 = v46;
    v78[1] = v49;
    v1 = v99;
    (*v83)(v77[7] + v53 * v21, v88, v99);
    v13 = v50;
    (*v96)(v50, v1);
    v79 = v77[2];
    v57 = __OFADD__(v79, 1);
    v80 = v79 + 1;
    if (v57)
    {
      goto LABEL_32;
    }

    v89 = v77;
    v77[2] = v80;
LABEL_4:
    ++v17;
    v16 = v95;
    if (v98 == v17)
    {

      return v89;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_1B8C25A58();
  __break(1u);
  return result;
}

void sub_1B8C2061C(uint64_t a1@<X8>)
{
  v2 = sub_1B8C23528();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA85A0, &qword_1B8C28C20);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v22 - v9;
  v11 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v12 = sub_1B8C250F8();
  [v11 setDateFormat_];

  sub_1B8C2090C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6630, qword_1B8C2BBF0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1B8C27920;
  sub_1B8C23518();
  v14 = sub_1B8C234E8();
  (*(v3 + 8))(v6, v2);
  v15 = [v11 stringFromDate_];

  v16 = sub_1B8C25128();
  v18 = v17;

  *(v13 + 32) = v16;
  *(v13 + 40) = v18;
  *(v13 + 48) = 0xD000000000000014;
  *(v13 + 56) = 0x80000001B8C37280;
  sub_1B8C254A8();

  v19 = sub_1B8C23498();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v10, 1, v19) == 1)
  {
    sub_1B8BD17D0(v10);
    v21 = NSTemporaryDirectory();
    sub_1B8C25128();

    sub_1B8C233C8();
  }

  else
  {

    (*(v20 + 32))(a1, v10, v19);
  }
}

unint64_t sub_1B8C2090C()
{
  result = qword_1EBAA8F28;
  if (!qword_1EBAA8F28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBAA8F28);
  }

  return result;
}

uint64_t sub_1B8C20958()
{
  v0 = sub_1B8C23C38();
  __swift_allocate_value_buffer(v0, qword_1EBAA8F10);
  __swift_project_value_buffer(v0, qword_1EBAA8F10);
  return sub_1B8C23C28();
}

uint64_t sub_1B8C209D0@<X0>(void **a1@<X0>, size_t *a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a3;
  v6 = type metadata accessor for URLError();
  v7 = *(v6 - 8);
  v24 = v6;
  v25 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA85A0, &qword_1B8C28C20);
  v12 = swift_allocBox();
  v14 = v13;
  v15 = sub_1B8C23498();
  v16 = *(v15 - 8);
  (*(v16 + 56))(v14, 1, 1, v15);

  sub_1B8B86F84(v11, v12, a2);
  if (v3)
  {
    (*(v16 + 16))(v10, v11 + OBJC_IVAR____TtC8Feedback19SandboxExtensionURL_url, v15);
    v27 = v3;
    v17 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA72B0, &unk_1B8C2A9F0);
    swift_dynamicCast();
    *&v10[*(v24 + 20)] = v28;
    v18 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v18;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v18 = sub_1B8B5D534(0, v18[2] + 1, 1, v18);
      *a2 = v18;
    }

    v21 = v18[2];
    v20 = v18[3];
    if (v21 >= v20 >> 1)
    {
      *a2 = sub_1B8B5D534(v20 > 1, v21 + 1, 1, v18);
    }

    v22 = *a2;
    *(v22 + 16) = v21 + 1;
    sub_1B8B88C0C(v10, v22 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v21);
  }

  swift_beginAccess();
  sub_1B8C21608(v14, v26);
}

id sub_1B8C20C80(uint64_t a1, uint64_t a2, size_t *a3)
{
  v86 = a3;
  v99[6] = *MEMORY[0x1E69E9840];
  v83 = type metadata accessor for URLError();
  v85 = *(v83 - 8);
  v5 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v83);
  v84 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B8C23498();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v82 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v79 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v79 - v15;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA85A0, &qword_1B8C28C20);
  v17 = *(*(v88 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v88);
  v20 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v79 - v21;
  v23 = swift_projectBox();
  sub_1B8C2061C(v16);
  v95 = a1;
  sub_1B8C233D8();
  sub_1B8C233F8();

  v24 = *(v8 + 8);
  v91 = (v8 + 8);
  v94 = v24;
  v24(v16, v7);
  (*(v8 + 56))(v22, 0, 1, v7);
  swift_beginAccess();
  v87 = v22;
  v93 = v23;
  sub_1B8C21678(v22, v23);
  if (qword_1EBAA5960 != -1)
  {
    swift_once();
  }

  v25 = sub_1B8C23C38();
  v26 = __swift_project_value_buffer(v25, qword_1EBAA8F10);
  v27 = *(v8 + 16);
  v90 = v8 + 16;
  v89 = v27;
  v27(v14, v95, v7);

  v81 = v26;
  v28 = a2;
  v29 = sub_1B8C23C18();
  v30 = sub_1B8C25468();
  v92 = v28;

  v31 = v7;
  if (os_log_type_enabled(v29, v30))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v99[0] = v33;
    *v32 = 136315394;
    sub_1B8C02358();
    v34 = sub_1B8C259E8();
    v36 = v35;
    v80 = v31;
    v94(v14, v31);
    v37 = sub_1B8B5DD48(v34, v36, v99);

    *(v32 + 4) = v37;
    *(v32 + 12) = 2080;
    v38 = v93;
    swift_beginAccess();
    sub_1B8C21608(v38, v87);
    v39 = sub_1B8C25178();
    v41 = sub_1B8B5DD48(v39, v40, v99);

    *(v32 + 14) = v41;
    _os_log_impl(&dword_1B8B22000, v29, v30, "Will copy sandboxed url %s to temporary directory %s", v32, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8CCB0E0](v33, -1, -1);
    v31 = v80;
    MEMORY[0x1B8CCB0E0](v32, -1, -1);
  }

  else
  {

    v94(v14, v7);
    v38 = v93;
  }

  v42 = [objc_opt_self() defaultManager];
  v43 = sub_1B8C233E8();
  swift_beginAccess();
  sub_1B8C21608(v38, v20);
  if ((*(v8 + 48))(v20, 1, v31) == 1)
  {
    __break(1u);
  }

  v44 = sub_1B8C233E8();
  v94(v20, v31);
  v97[0] = 0;
  v45 = [v42 copyItemAtURL:v43 toURL:v44 error:v97];

  v46 = v97[0];
  if (v45)
  {
    v47 = *MEMORY[0x1E69E9840];

    return v46;
  }

  else
  {
    v91 = v97[0];
    v49 = v97[0];
    v50 = sub_1B8C23368();

    swift_willThrow();
    v51 = v82;
    v89(v82, v95, v31);

    v52 = v50;
    v53 = sub_1B8C23C18();
    v54 = sub_1B8C25478();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v98 = v56;
      *v55 = 136315650;
      sub_1B8C02358();
      v57 = sub_1B8C259E8();
      v58 = v51;
      v59 = v57;
      v61 = v60;
      v94(v58, v31);
      v62 = sub_1B8B5DD48(v59, v61, &v98);

      *(v55 + 4) = v62;
      *(v55 + 12) = 2080;
      v63 = v93;
      swift_beginAccess();
      sub_1B8C21608(v63, v87);
      v64 = sub_1B8C25178();
      v66 = sub_1B8B5DD48(v64, v65, &v98);

      *(v55 + 14) = v66;
      *(v55 + 22) = 2080;
      v96 = v50;
      v67 = v50;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA72B0, &unk_1B8C2A9F0);
      v68 = sub_1B8C25178();
      v70 = sub_1B8B5DD48(v68, v69, &v98);

      *(v55 + 24) = v70;
      _os_log_impl(&dword_1B8B22000, v53, v54, "Failed to copy sandboxed url %s to temporary directory %s error %s", v55, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B8CCB0E0](v56, -1, -1);
      MEMORY[0x1B8CCB0E0](v55, -1, -1);
    }

    else
    {

      v94(v51, v31);
    }

    v71 = v86;
    v72 = v84;
    v89(v84, v95, v31);
    *(v72 + *(v83 + 20)) = 2;
    v73 = *v71;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v71 = v73;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v73 = sub_1B8B5D534(0, v73[2] + 1, 1, v73);
      *v71 = v73;
    }

    v76 = v73[2];
    v75 = v73[3];
    if (v76 >= v75 >> 1)
    {
      *v71 = sub_1B8B5D534(v75 > 1, v76 + 1, 1, v73);
    }

    v77 = *v71;
    v77[2] = v76 + 1;
    result = sub_1B8B88C0C(v72, v77 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v76);
    v78 = *MEMORY[0x1E69E9840];
  }

  return result;
}

uint64_t sub_1B8C21608(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA85A0, &qword_1B8C28C20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8C21678(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA85A0, &qword_1B8C28C20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8C21790(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1B8C23C38();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_1B8C23C28();
}

uint64_t sub_1B8C21808()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1B8C23C88();

  return v1;
}

uint64_t sub_1B8C2187C()
{
  v10 = sub_1B8C25528();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B8C254E8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = sub_1B8C25008();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9[1] = sub_1B8B622C8();
  sub_1B8C24FF8();
  v11 = MEMORY[0x1E69E7CC0];
  sub_1B8C229B0(&qword_1EBAA8FC0, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8FC8, qword_1B8C31DE0);
  sub_1B8B34CFC(&qword_1EBAA8FD0, &qword_1EBAA8FC8, qword_1B8C31DE0);
  sub_1B8C256D8();
  (*(v0 + 104))(v3, *MEMORY[0x1E69E8090], v10);
  result = sub_1B8C25558();
  qword_1EBAA8F30 = result;
  return result;
}

uint64_t sub_1B8C21AE0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8FeedbackP33_3BDF5462943C09CAD27F77ADE48386A511ImageLoader_cancellable;
  if (*(v0 + OBJC_IVAR____TtC8FeedbackP33_3BDF5462943C09CAD27F77ADE48386A511ImageLoader_cancellable))
  {

    sub_1B8C23C68();
  }

  v3 = OBJC_IVAR____TtC8FeedbackP33_3BDF5462943C09CAD27F77ADE48386A511ImageLoader__image;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8468, &qword_1B8C2EF68);
  (*(*(v4 - 8) + 8))(v1 + v3, v4);
  v5 = OBJC_IVAR____TtC8FeedbackP33_3BDF5462943C09CAD27F77ADE48386A511ImageLoader_url;
  v6 = sub_1B8C23498();
  (*(*(v6 - 8) + 8))(v1 + v5, v6);
  v7 = *(v1 + v2);

  v8 = *(*v1 + 48);
  v9 = *(*v1 + 52);

  return swift_deallocClassInstance();
}

uint64_t _s8Feedback11ImageLoaderCMa_0()
{
  result = qword_1EBAA8F58;
  if (!qword_1EBAA8F58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B8C21C54()
{
  sub_1B8BE3030();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_1B8C23498();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1B8C21D30()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8428, &qword_1B8C2EF00);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v56 = &v47 - v3;
  v4 = sub_1B8C25428();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8F68, &qword_1B8C31D70);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v47 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8F70, &qword_1B8C31D78);
  v53 = *(v14 - 8);
  v15 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v47 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8F78, &qword_1B8C31D80);
  v19 = *(v18 - 8);
  v54 = v18;
  v55 = v19;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v59 = &v47 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8F80, &qword_1B8C31D88);
  v58 = *(v22 - 8);
  v23 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v57 = &v47 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8F88, &qword_1B8C31D90);
  v26 = *(*(v25 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v25);
  if ((*(v0 + OBJC_IVAR____TtC8FeedbackP33_3BDF5462943C09CAD27F77ADE48386A511ImageLoader_isLoading) & 1) == 0)
  {
    v49 = v22;
    v50 = &v47 - v28;
    v51 = v29;
    v52 = result;
    v30 = v0;
    v31 = [objc_opt_self() sharedSession];
    sub_1B8C25438();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8420, &qword_1B8C2EEA8);
    sub_1B8C229B0(&qword_1EBAA8F90, MEMORY[0x1E6969EB8]);
    sub_1B8C23CD8();
    (*(v5 + 8))(v8, v4);
    v60 = 0;
    sub_1B8B34CFC(&qword_1EBAA8F98, &qword_1EBAA8F68, &qword_1B8C31D70);
    sub_1B8C23CC8();
    (*(v10 + 8))(v13, v9);
    swift_allocObject();
    swift_weakInit();
    swift_allocObject();
    swift_weakInit();
    swift_allocObject();
    v48 = v30;
    swift_weakInit();
    sub_1B8B34CFC(&qword_1EBAA8FA0, &qword_1EBAA8F70, &qword_1B8C31D78);

    sub_1B8C23CB8();

    (*(v53 + 8))(v17, v14);

    if (qword_1EBAA5990 != -1)
    {
      swift_once();
    }

    v32 = qword_1EBAA8F30;
    v60 = qword_1EBAA8F30;
    v33 = sub_1B8C25518();
    v34 = *(*(v33 - 8) + 56);
    v35 = v56;
    v34(v56, 1, 1, v33);
    sub_1B8B622C8();
    sub_1B8B34CFC(&qword_1EBAA8FA8, &qword_1EBAA8F78, &qword_1B8C31D80);
    sub_1B8C229B0(&qword_1EBAA8458, sub_1B8B622C8);
    v36 = v32;
    v37 = v57;
    v38 = v54;
    v39 = v59;
    sub_1B8C23CF8();
    sub_1B8BE3270(v35);

    (*(v55 + 8))(v39, v38);
    v40 = sub_1B8C25538();
    v60 = v40;
    v34(v35, 1, 1, v33);
    sub_1B8B34CFC(&qword_1EBAA8FB0, &qword_1EBAA8F80, &qword_1B8C31D88);
    v41 = v49;
    v42 = v50;
    sub_1B8C23CE8();
    sub_1B8BE3270(v35);

    (*(v58 + 8))(v37, v41);
    swift_allocObject();
    v43 = v48;
    swift_weakInit();
    sub_1B8B34CFC(&qword_1EBAA8FB8, &qword_1EBAA8F88, &qword_1B8C31D90);
    v44 = v52;
    v45 = sub_1B8C23D08();

    (*(v51 + 8))(v42, v44);
    v46 = *(v43 + OBJC_IVAR____TtC8FeedbackP33_3BDF5462943C09CAD27F77ADE48386A511ImageLoader_cancellable);
    *(v43 + OBJC_IVAR____TtC8FeedbackP33_3BDF5462943C09CAD27F77ADE48386A511ImageLoader_cancellable) = v45;
  }

  return result;
}

uint64_t sub_1B8C2262C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  sub_1B8B7B54C(*a1, v4);
  v5 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
  v6 = sub_1B8C234A8();
  v7 = [v5 initWithData_];

  result = sub_1B8B4645C(v3, v4);
  *a2 = v7;
  return result;
}

uint64_t sub_1B8C226B8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + OBJC_IVAR____TtC8FeedbackP33_3BDF5462943C09CAD27F77ADE48386A511ImageLoader_isLoading) = 1;
  }

  return result;
}

uint64_t sub_1B8C22714()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + OBJC_IVAR____TtC8FeedbackP33_3BDF5462943C09CAD27F77ADE48386A511ImageLoader_isLoading) = 0;
  }

  return result;
}

uint64_t sub_1B8C2276C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + OBJC_IVAR____TtC8FeedbackP33_3BDF5462943C09CAD27F77ADE48386A511ImageLoader_isLoading) = 0;
  }

  return result;
}

uint64_t sub_1B8C227C4(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v3 = v1;
    return sub_1B8C23C98();
  }

  return result;
}

uint64_t sub_1B8C22858@<X0>(uint64_t *a1@<X8>)
{
  _s8Feedback11ImageLoaderCMa_0();
  result = sub_1B8C23C78();
  *a1 = result;
  return result;
}

uint64_t sub_1B8C228B8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1B8C23C88();

  *a2 = v5;
  return result;
}

uint64_t sub_1B8C22938(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;

  return sub_1B8C23C98();
}

uint64_t sub_1B8C229B0(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1B8C22A1C()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_1EBAA8FD8 = result;
  return result;
}

uint64_t sub_1B8C22B0C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1B8C23A28();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  if (qword_1EBAA5998 != -1)
  {
    swift_once();
  }

  v4 = qword_1EBAA8FD8;
  return sub_1B8C23A18();
}

BOOL __isOSVersionAtLeast(int a1, int a2, int a3)
{
  if (qword_1EBAB3990 == -1)
  {
    v3 = _MergedGlobals < a1;
    if (_MergedGlobals > a1)
    {
      return 1;
    }
  }

  else
  {
    v5 = a3;
    v6 = a2;
    __isOSVersionAtLeast_cold_1();
    a2 = v6;
    a3 = v5;
    v3 = _MergedGlobals < a1;
    if (_MergedGlobals > a1)
    {
      return 1;
    }
  }

  if (v3)
  {
    return 0;
  }

  if (dword_1EBAB3984 > a2)
  {
    return 1;
  }

  if (dword_1EBAB3984 < a2)
  {
    return 0;
  }

  return dword_1EBAB3988 >= a3;
}

uint64_t __isPlatformVersionAtLeast(uint64_t a1, int a2, int a3, int a4)
{
  v16 = *MEMORY[0x1E69E9840];
  if (qword_1EBAB3998 == -1)
  {
    if (qword_1EBAB39A0)
    {
LABEL_3:
      result = _availability_version_check();
      v5 = *MEMORY[0x1E69E9840];
      return result;
    }
  }

  else
  {
    v6 = a4;
    v7 = a3;
    v8 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v8;
    a3 = v7;
    a4 = v6;
    if (qword_1EBAB39A0)
    {
      goto LABEL_3;
    }
  }

  if (qword_1EBAB3990 != -1)
  {
    v13 = a4;
    v14 = a3;
    v15 = a2;
    __isOSVersionAtLeast_cold_1();
    a3 = v14;
    a4 = v13;
    v9 = _MergedGlobals < v15;
    if (_MergedGlobals > v15)
    {
      goto LABEL_11;
    }

LABEL_7:
    if (!v9)
    {
      if (dword_1EBAB3984 > a3)
      {
        goto LABEL_11;
      }

      if (dword_1EBAB3984 >= a3)
      {
        result = dword_1EBAB3988 >= a4;
        v12 = *MEMORY[0x1E69E9840];
        return result;
      }
    }

    result = 0;
    v10 = *MEMORY[0x1E69E9840];
    return result;
  }

  v9 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

LABEL_11:
  result = 1;
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t _initializeAvailabilityCheck(unint64_t result)
{
  v30 = *MEMORY[0x1E69E9840];
  v1 = qword_1EBAB39A0;
  if (qword_1EBAB39A0)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x1EEE9AC60])
    {
      v1 = MEMORY[0x1EEE9AC60];
      qword_1EBAB39A0 = MEMORY[0x1EEE9AC60];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v28 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v27 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x1B8CCA9B0](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v26 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v26, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v27)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v28(v23, v29, 32, 134217984))
                                        {
                                          sscanf(v29, "%d.%d.%d", &_MergedGlobals, &dword_1EBAB3984, &dword_1EBAB3988);
                                        }
                                      }
                                    }
                                  }

                                  (v27)(v20);
                                }

                                (v27)(v18);
                                v16 = v26;
                              }

                              else
                              {
                                v16 = v26;
                              }
                            }
                          }

                          free(v16);
                          result = fclose(v13);
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

  v25 = *MEMORY[0x1E69E9840];
  return result;
}