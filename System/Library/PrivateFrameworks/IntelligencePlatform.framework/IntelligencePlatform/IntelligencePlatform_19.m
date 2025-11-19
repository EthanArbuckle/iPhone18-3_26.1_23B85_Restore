uint64_t getEnumTagSinglePayload for InferenceServiceCachePolicy(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for InferenceServiceCachePolicy(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1ABBD0B10(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1ABBD0B2C(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

uint64_t sub_1ABBD0CEC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_1ABA8C590(-1);
  }

  if (a2 >= 0xFD && *(a1 + 33))
  {
    return sub_1ABA8C590(*a1 + 252);
  }

  v3 = *(a1 + 32);
  if (v3 > 3)
  {
    return sub_1ABA8C590(v3 ^ 0xFF);
  }

  else
  {
    return sub_1ABA8C590(-1);
  }
}

uint64_t sub_1ABBD0D28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_1ABBD0E60(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 9))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 4)
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

uint64_t sub_1ABBD0EA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_1ABBD10C4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_1ABA8C590(-1);
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
      return sub_1ABA8C590((*a1 | (v4 << 8)) - 4);
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

      return sub_1ABA8C590((*a1 | (v4 << 8)) - 4);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_1ABA8C590((*a1 | (v4 << 8)) - 4);
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

  return sub_1ABA8C590(v8);
}

_BYTE *sub_1ABBD1148(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_1ABA89DD0(result, v6);
        break;
      case 2:
        result = sub_1ABA89F18(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_1ABA89A74(result, v6);
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

_BYTE *sub_1ABBD1214(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_1ABA89DD0(result, v6);
        break;
      case 2:
        result = sub_1ABA89F18(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_1ABA89A74(result, v6);
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

uint64_t sub_1ABBD1300(unsigned __int8 *a1, int a2)
{
  if (!a2)
  {
    return sub_1ABA814E4();
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

  return sub_1ABA84BA4(a1);
}

_BYTE *sub_1ABBD1348(_BYTE *result, int a2, int a3)
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

_BYTE *sub_1ABBD1404(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_1ABA89DD0(result, v6);
        break;
      case 2:
        result = sub_1ABA89F18(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_1ABA89A74(result, v6);
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

unint64_t sub_1ABBD14D4()
{
  result = qword_1EB4D4A78;
  if (!qword_1EB4D4A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4A78);
  }

  return result;
}

unint64_t sub_1ABBD152C()
{
  result = qword_1EB4D4A80;
  if (!qword_1EB4D4A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4A80);
  }

  return result;
}

unint64_t sub_1ABBD1584()
{
  result = qword_1EB4D4A88;
  if (!qword_1EB4D4A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4A88);
  }

  return result;
}

unint64_t sub_1ABBD15DC()
{
  result = qword_1EB4D4A90;
  if (!qword_1EB4D4A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4A90);
  }

  return result;
}

unint64_t sub_1ABBD1634()
{
  result = qword_1EB4D4A98;
  if (!qword_1EB4D4A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4A98);
  }

  return result;
}

unint64_t sub_1ABBD168C()
{
  result = qword_1EB4D4AA0;
  if (!qword_1EB4D4AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4AA0);
  }

  return result;
}

unint64_t sub_1ABBD16E4()
{
  result = qword_1EB4D4AA8;
  if (!qword_1EB4D4AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4AA8);
  }

  return result;
}

unint64_t sub_1ABBD173C()
{
  result = qword_1EB4D4AB0;
  if (!qword_1EB4D4AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4AB0);
  }

  return result;
}

unint64_t sub_1ABBD1794()
{
  result = qword_1EB4D4AB8;
  if (!qword_1EB4D4AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4AB8);
  }

  return result;
}

unint64_t sub_1ABBD17EC()
{
  result = qword_1EB4D4AC0;
  if (!qword_1EB4D4AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4AC0);
  }

  return result;
}

unint64_t sub_1ABBD1844()
{
  result = qword_1EB4D4AC8;
  if (!qword_1EB4D4AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4AC8);
  }

  return result;
}

unint64_t sub_1ABBD189C()
{
  result = qword_1EB4D4AD0;
  if (!qword_1EB4D4AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4AD0);
  }

  return result;
}

unint64_t sub_1ABBD18F4()
{
  result = qword_1EB4D4AD8;
  if (!qword_1EB4D4AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4AD8);
  }

  return result;
}

unint64_t sub_1ABBD194C()
{
  result = qword_1EB4D4AE0;
  if (!qword_1EB4D4AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4AE0);
  }

  return result;
}

unint64_t sub_1ABBD19A4()
{
  result = qword_1EB4D4AE8;
  if (!qword_1EB4D4AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4AE8);
  }

  return result;
}

unint64_t sub_1ABBD19FC()
{
  result = qword_1EB4D4AF0;
  if (!qword_1EB4D4AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4AF0);
  }

  return result;
}

unint64_t sub_1ABBD1A54()
{
  result = qword_1EB4D4AF8;
  if (!qword_1EB4D4AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4AF8);
  }

  return result;
}

unint64_t sub_1ABBD1AAC()
{
  result = qword_1EB4D4B00;
  if (!qword_1EB4D4B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4B00);
  }

  return result;
}

unint64_t sub_1ABBD1B04()
{
  result = qword_1EB4D4B08;
  if (!qword_1EB4D4B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4B08);
  }

  return result;
}

unint64_t sub_1ABBD1B5C()
{
  result = qword_1EB4D4B10;
  if (!qword_1EB4D4B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4B10);
  }

  return result;
}

unint64_t sub_1ABBD1BB4()
{
  result = qword_1EB4D4B18;
  if (!qword_1EB4D4B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4B18);
  }

  return result;
}

unint64_t sub_1ABBD1C0C()
{
  result = qword_1EB4D4B20;
  if (!qword_1EB4D4B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4B20);
  }

  return result;
}

unint64_t sub_1ABBD1C64()
{
  result = qword_1EB4D4B28;
  if (!qword_1EB4D4B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4B28);
  }

  return result;
}

unint64_t sub_1ABBD1CBC()
{
  result = qword_1EB4D4B30;
  if (!qword_1EB4D4B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4B30);
  }

  return result;
}

unint64_t sub_1ABBD1D14()
{
  result = qword_1EB4D4B38;
  if (!qword_1EB4D4B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4B38);
  }

  return result;
}

unint64_t sub_1ABBD1D6C()
{
  result = qword_1EB4D4B40;
  if (!qword_1EB4D4B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4B40);
  }

  return result;
}

unint64_t sub_1ABBD1DC4()
{
  result = qword_1EB4D4B48;
  if (!qword_1EB4D4B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4B48);
  }

  return result;
}

unint64_t sub_1ABBD1E1C()
{
  result = qword_1EB4D4B50;
  if (!qword_1EB4D4B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4B50);
  }

  return result;
}

unint64_t sub_1ABBD1E74()
{
  result = qword_1EB4D4B58;
  if (!qword_1EB4D4B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4B58);
  }

  return result;
}

unint64_t sub_1ABBD1ECC()
{
  result = qword_1EB4D4B60;
  if (!qword_1EB4D4B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4B60);
  }

  return result;
}

unint64_t sub_1ABBD1F24()
{
  result = qword_1EB4D4B68;
  if (!qword_1EB4D4B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4B68);
  }

  return result;
}

unint64_t sub_1ABBD1F7C()
{
  result = qword_1EB4D4B70;
  if (!qword_1EB4D4B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4B70);
  }

  return result;
}

unint64_t sub_1ABBD1FD4()
{
  result = qword_1EB4D4B78;
  if (!qword_1EB4D4B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4B78);
  }

  return result;
}

unint64_t sub_1ABBD202C()
{
  result = qword_1EB4D4B80;
  if (!qword_1EB4D4B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4B80);
  }

  return result;
}

unint64_t sub_1ABBD2084()
{
  result = qword_1EB4D4B88;
  if (!qword_1EB4D4B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4B88);
  }

  return result;
}

unint64_t sub_1ABBD20DC()
{
  result = qword_1EB4D4B90;
  if (!qword_1EB4D4B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4B90);
  }

  return result;
}

unint64_t sub_1ABBD2134()
{
  result = qword_1EB4D4B98;
  if (!qword_1EB4D4B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4B98);
  }

  return result;
}

unint64_t sub_1ABBD218C()
{
  result = qword_1EB4D4BA0;
  if (!qword_1EB4D4BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4BA0);
  }

  return result;
}

unint64_t sub_1ABBD21E4()
{
  result = qword_1EB4D4BA8;
  if (!qword_1EB4D4BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4BA8);
  }

  return result;
}

unint64_t sub_1ABBD223C()
{
  result = qword_1EB4D4BB0;
  if (!qword_1EB4D4BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4BB0);
  }

  return result;
}

unint64_t sub_1ABBD2294()
{
  result = qword_1EB4D4BB8;
  if (!qword_1EB4D4BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4BB8);
  }

  return result;
}

unint64_t sub_1ABBD22EC()
{
  result = qword_1EB4D4BC0;
  if (!qword_1EB4D4BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4BC0);
  }

  return result;
}

unint64_t sub_1ABBD2344()
{
  result = qword_1EB4D4BC8;
  if (!qword_1EB4D4BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4BC8);
  }

  return result;
}

unint64_t sub_1ABBD239C()
{
  result = qword_1EB4D4BD0;
  if (!qword_1EB4D4BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4BD0);
  }

  return result;
}

unint64_t sub_1ABBD23F4()
{
  result = qword_1EB4D4BD8;
  if (!qword_1EB4D4BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4BD8);
  }

  return result;
}

unint64_t sub_1ABBD244C()
{
  result = qword_1EB4CEC30;
  if (!qword_1EB4CEC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CEC30);
  }

  return result;
}

unint64_t sub_1ABBD24A4()
{
  result = qword_1EB4CEC38;
  if (!qword_1EB4CEC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CEC38);
  }

  return result;
}

unint64_t sub_1ABBD24FC()
{
  result = qword_1EB4CEC18;
  if (!qword_1EB4CEC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CEC18);
  }

  return result;
}

unint64_t sub_1ABBD2554()
{
  result = qword_1EB4CEC20;
  if (!qword_1EB4CEC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CEC20);
  }

  return result;
}

unint64_t sub_1ABBD25AC()
{
  result = qword_1EB4D4BE0;
  if (!qword_1EB4D4BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4BE0);
  }

  return result;
}

unint64_t sub_1ABBD2604()
{
  result = qword_1EB4D4BE8;
  if (!qword_1EB4D4BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4BE8);
  }

  return result;
}

unint64_t sub_1ABBD265C()
{
  result = qword_1EB4D4BF0;
  if (!qword_1EB4D4BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4BF0);
  }

  return result;
}

unint64_t sub_1ABBD26B4()
{
  result = qword_1EB4D4BF8;
  if (!qword_1EB4D4BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4BF8);
  }

  return result;
}

unint64_t sub_1ABBD270C()
{
  result = qword_1EB4D4C00;
  if (!qword_1EB4D4C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4C00);
  }

  return result;
}

unint64_t sub_1ABBD2764()
{
  result = qword_1EB4D4C08;
  if (!qword_1EB4D4C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4C08);
  }

  return result;
}

unint64_t sub_1ABBD27BC()
{
  result = qword_1EB4D4C10;
  if (!qword_1EB4D4C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4C10);
  }

  return result;
}

unint64_t sub_1ABBD2814()
{
  result = qword_1EB4D4C18;
  if (!qword_1EB4D4C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4C18);
  }

  return result;
}

unint64_t sub_1ABBD286C()
{
  result = qword_1EB4D4C20;
  if (!qword_1EB4D4C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4C20);
  }

  return result;
}

unint64_t sub_1ABBD28C4()
{
  result = qword_1EB4D4C28;
  if (!qword_1EB4D4C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4C28);
  }

  return result;
}

unint64_t sub_1ABBD291C()
{
  result = qword_1EB4D4C30;
  if (!qword_1EB4D4C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4C30);
  }

  return result;
}

unint64_t sub_1ABBD2974()
{
  result = qword_1EB4D4C38;
  if (!qword_1EB4D4C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4C38);
  }

  return result;
}

unint64_t sub_1ABBD29C8()
{
  result = qword_1EB4D4C40;
  if (!qword_1EB4D4C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4C40);
  }

  return result;
}

uint64_t sub_1ABBD2A8C()
{

  return sub_1ABF252C4();
}

void sub_1ABBD2AB0()
{
  sub_1ABA7BCA8();
  v2 = v0;
  v18 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  memcpy(v20, v10, 0x7BuLL);
  v12 = v9[139];
  v13 = v9[140];
  v14 = *(v5 + 16);
  memcpy((v2 + 16), v11, 0x7BuLL);
  memcpy((v2 + 144), v9, 0x8BuLL);
  *(v2 + 283) = v12;
  *(v2 + 284) = v13;
  *(v2 + 285) = v18;
  *(v2 + 288) = v7;
  *(v2 + 296) = v12;
  *(v2 + 304) = *v5;
  *(v2 + 320) = v14;
  v15 = sub_1ABBC3BC8(v20, v19);
  if (qword_1ED870770 != -1)
  {
    v15 = swift_once();
  }

  v16 = *(qword_1ED87C428 + 16);
  MEMORY[0x1EEE9AC00](v15);
  os_unfair_lock_lock((v16 + 24));
  sub_1ABBD8B88((v16 + 16), v19);
  os_unfair_lock_unlock((v16 + 24));
  if (v1)
  {
    __break(1u);
  }

  else
  {
    v17 = v19[0];
    sub_1ABBC3C00(v20);
    *(v2 + 328) = v17;
    sub_1ABA7BC90();
  }
}

void sub_1ABBD2C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1ABA7BCA8();
  a19 = v22;
  a20 = v23;
  v24 = v20;
  sub_1ABA84BAC();
  static NSUserDefaults.ecrRankerResultsMockFile.getter();
  if (v25)
  {
    if (qword_1ED871B18 != -1)
    {
      sub_1ABA7BE6C();
    }

    v26 = sub_1ABF237F4();
    sub_1ABA7AA24(v26, qword_1ED871B20);
    v27 = sub_1ABF237D4();
    v28 = sub_1ABF24644();
    if (os_log_type_enabled(v27, v28))
    {
      sub_1ABA8179C();
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_1ABA78000, v27, v28, "ECR request manager: using mocked results.", v29, 2u);
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
    }

    sub_1ABBC10DC();
  }

  else
  {
    if (qword_1ED871B18 != -1)
    {
      sub_1ABA7BE6C();
    }

    v30 = sub_1ABF237F4();
    sub_1ABA7AA24(v30, qword_1ED871B20);

    v31 = sub_1ABF237D4();
    v32 = sub_1ABF24684();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = sub_1ABA7ACB4();
      a10 = sub_1ABA827B8();
      *v33 = 136315395;
      *(v33 + 4) = sub_1ABADD6D8(*(v20 + 48), *(v20 + 56), &a10);
      *(v33 + 12) = 2085;
      memcpy(__dst, (v20 + 16), 0x7BuLL);
      memcpy(__src, (v20 + 16), sizeof(__src));
      sub_1ABBC3BC8(__dst, v91);
      v34 = EntityResolutionRequest.description.getter();
      v36 = v35;
      memcpy(v91, __src, 0x7BuLL);
      sub_1ABBC3C00(v91);
      v37 = sub_1ABADD6D8(v34, v36, &a10);

      *(v33 + 14) = v37;
      _os_log_impl(&dword_1ABA78000, v31, v32, "ECR Request Submitted -- %s : %{sensitive}s", v33, 0x16u);
      swift_arrayDestroy();
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
    }

    sub_1ABAA28A0();
    v38 = sub_1ABBD34B8();
    if (!v21)
    {
      v41 = v38;
      v42 = v39;
      v87 = v40;

      v43 = sub_1ABF237D4();
      v44 = sub_1ABF24644();

      if (os_log_type_enabled(v43, v44))
      {
        v88 = v41;
        v45 = sub_1ABA7ACB4();
        v91[0] = sub_1ABA827B8();
        *v45 = 136315394;
        *(v45 + 4) = sub_1ABAB5A44();
        *(v45 + 12) = 2080;
        if (v42)
        {
          v21 = v88;
        }

        else
        {
          v21 = 0;
        }

        if (v42)
        {
          v46 = v42;
        }

        else
        {
          v46 = 0xE000000000000000;
        }

        v47 = sub_1ABADD6D8(v21, v46, v91);

        *(v45 + 14) = v47;
        _os_log_impl(&dword_1ABA78000, v43, v44, "Preprocessed text -- %s : %s", v45, 0x16u);
        swift_arrayDestroy();
        sub_1ABA7BDD8();
        MEMORY[0x1AC5AB8B0]();
        sub_1ABA7BDD8();
        MEMORY[0x1AC5AB8B0]();
      }

      sub_1ABAA28A0();
      v50 = sub_1ABBD3C40(v48, v49);
      if (v21)
      {
        goto LABEL_35;
      }

      v51 = v50;

      v52 = sub_1ABF237D4();
      v53 = sub_1ABF24644();

      if (os_log_type_enabled(v52, v53))
      {
        v86 = v53;
        v54 = sub_1ABA7ACB4();
        v91[0] = sub_1ABA827B8();
        *v54 = 136315394;
        *(v54 + 4) = sub_1ABAB5A44();
        *(v54 + 12) = 2080;
        v55 = MEMORY[0x1AC5A9750](v51, &type metadata for Mention);
        v57 = sub_1ABADD6D8(v55, v56, v91);

        *(v54 + 14) = v57;
        _os_log_impl(&dword_1ABA78000, v52, v86, "Mentions -- %s : %s", v54, 0x16u);
        swift_arrayDestroy();
        sub_1ABA7BDD8();
        MEMORY[0x1AC5AB8B0]();
        sub_1ABA7BDD8();
        MEMORY[0x1AC5AB8B0]();
      }

      if ((v87 & 1) == 0)
      {
        switch(v24[64])
        {
          case 1:
            sub_1ABA9A3B4();
            goto LABEL_31;
          case 2:
            sub_1ABA7FC58();
            sub_1ABAA34A0();
            goto LABEL_31;
          case 3:

            break;
          case 4:
            sub_1ABA8A488();
            sub_1ABA7BB94();
            goto LABEL_31;
          case 5:
            sub_1ABA8A488();
            goto LABEL_31;
          case 6:
            sub_1ABA95110();
            goto LABEL_31;
          default:
LABEL_31:
            sub_1ABF25054();

            break;
        }
      }

      v58 = v24[137];
      v59 = v24[138];
      sub_1ABAA28A0();
      v64 = sub_1ABBD46C8(v60, v61, v62, v63);

      v65 = sub_1ABF237D4();
      v66 = sub_1ABF24644();

      if (os_log_type_enabled(v65, v66))
      {
        v67 = sub_1ABA7ACB4();
        v91[0] = sub_1ABA827B8();
        *v67 = 136315394;
        *(v67 + 4) = sub_1ABAB5A44();
        *(v67 + 12) = 2080;
        v68 = type metadata accessor for PopulatedCandidatesForMention();
        v69 = MEMORY[0x1AC5A9750](v64, v68);
        v71 = sub_1ABADD6D8(v69, v70, v91);

        *(v67 + 14) = v71;
        _os_log_impl(&dword_1ABA78000, v65, v66, "Candidates retrieved -- %s : %s", v67, 0x16u);
        swift_arrayDestroy();
        sub_1ABA7BDD8();
        MEMORY[0x1AC5AB8B0]();
        sub_1ABA7BDD8();
        MEMORY[0x1AC5AB8B0]();
      }

      v72 = v24[136];
      sub_1ABAA28A0();
      v77 = sub_1ABBD5030(v73, v74, v75, v76);

      v78 = sub_1ABF237D4();
      v79 = sub_1ABF24644();

      if (os_log_type_enabled(v78, v79))
      {
        v80 = sub_1ABA7ACB4();
        v91[0] = sub_1ABA827B8();
        *v80 = 136315394;
        *(v80 + 4) = sub_1ABAB5A44();
        *(v80 + 12) = 2080;
        v81 = MEMORY[0x1AC5A9750](v77, &type metadata for RerankedEntitiesForMention);
        v83 = sub_1ABADD6D8(v81, v82, v91);

        *(v80 + 14) = v83;
        _os_log_impl(&dword_1ABA78000, v78, v79, "Ranked results -- %s : %s", v80, 0x16u);
        swift_arrayDestroy();
        sub_1ABA7BDD8();
        MEMORY[0x1AC5AB8B0]();
        sub_1ABA7BDD8();
        MEMORY[0x1AC5AB8B0]();
      }

      if (v24[285] != 1)
      {
LABEL_35:
      }

      else
      {
        sub_1ABAA28A0();
        sub_1ABBD5684(v84, v85);
      }
    }
  }

  sub_1ABA7BC90();
}

uint64_t sub_1ABBD34B8()
{
  v1 = v0;
  v2 = type metadata accessor for TextPreprocessor();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v54 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_1ABF23744();
  v5 = *(v60 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v60);
  v59 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v53 - v9;
  v11 = sub_1ABF237F4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1ABF23774();
  v57 = *(v16 - 8);
  v58 = v16;
  v17 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for LogSignpost();
  v20 = *(*(v56 - 8) + 64);
  MEMORY[0x1EEE9AC00](v56);
  v72 = (&v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1ED871F20 != -1)
  {
    swift_once();
  }

  v22 = sub_1ABA7AA24(v11, qword_1ED871EF8);
  (*(v12 + 16))(v15, v22, v11);
  sub_1ABF23754();
  sub_1ABF23764();
  sub_1ABF23714();
  v23 = sub_1ABF23764();
  v24 = sub_1ABF24714();
  if (sub_1ABF247D4())
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    v26 = sub_1ABF23724();
    _os_signpost_emit_with_name_impl(&dword_1ABA78000, v23, v24, v26, "ECR.Manager.preprocess", "", v25, 2u);
    MEMORY[0x1AC5AB8B0](v25, -1, -1);
  }

  v27 = v60;
  (*(v5 + 16))(v59, v10, v60);
  v28 = sub_1ABF237B4();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  v31 = sub_1ABF237A4();
  (*(v5 + 8))(v10, v27);
  v32 = v72;
  *v72 = "ECR.Manager.preprocess";
  *(v32 + 8) = 22;
  *(v32 + 16) = 2;
  *(v32 + 24) = v31;
  (*(v57 + 32))(v32 + *(v56 + 24), v19, v58);
  v33 = *(v1 + 16);
  v34 = *(v1 + 24);
  memcpy(v69, (v1 + 32), sizeof(v69));
  v35 = *(v1 + 112);
  v68[0] = *(v1 + 120);
  *(v68 + 15) = *(v1 + 135);
  v63 = v33;
  v64 = v34;
  memcpy(v65, (v1 + 32), sizeof(v65));
  v66 = v35;
  *v67 = *(v1 + 120);
  *&v67[15] = *(v1 + 135);
  if (sub_1ABBBABC4() & 1) != 0 || (v63 = v33, v64 = v34, memcpy(v65, v69, sizeof(v65)), v66 = v35, *v67 = v68[0], *&v67[15] = *(v68 + 15), (sub_1ABBBACA4()))
  {
    if (!v35)
    {
LABEL_10:

      goto LABEL_26;
    }

    v36 = *(v35 + 16);
    v37 = *(v1 + 176);
    v38 = *(v1 + 184);
    if (v38 == 1)
    {
      if (v36 <= 0x64)
      {
        goto LABEL_10;
      }
    }

    else if (v37 >= v36)
    {
      goto LABEL_10;
    }

    v63 = 0;
    v64 = 0xE000000000000000;
    sub_1ABF24AB4();
    MEMORY[0x1AC5A9410](0xD00000000000001FLL, 0x80000001ABF8A860);
    v61 = v36;
    v45 = sub_1ABF24FF4();
    MEMORY[0x1AC5A9410](v45);

    MEMORY[0x1AC5A9410](0xD00000000000001ELL, 0x80000001ABF8A880);
    v61 = v37;
    v62 = v38;
    sub_1ABAD219C(&qword_1EB4D4C68, &unk_1ABF478A0);
    v46 = sub_1ABF23C74();
    MEMORY[0x1AC5A9410](v46);

    MEMORY[0x1AC5A9410](0x74696D696C20, 0xE600000000000000);
    v47 = v63;
    v48 = v64;
    sub_1ABB32C5C();
    swift_allocError();
    *v49 = v47;
    *(v49 + 8) = v48;
LABEL_25:
    *(v49 + 16) = 2;
    swift_willThrow();
    goto LABEL_26;
  }

  if (!v34)
  {
    goto LABEL_24;
  }

  v39 = HIBYTE(v34) & 0xF;
  if ((v34 & 0x2000000000000000) == 0)
  {
    v39 = v33 & 0xFFFFFFFFFFFFLL;
  }

  if (!v39)
  {
LABEL_24:
    sub_1ABB32C5C();
    swift_allocError();
    *v49 = xmmword_1ABF47810;
    goto LABEL_25;
  }

  v40 = sub_1ABB31118(v33, v34);
  v43 = v54;
  v42 = v55;
  if (v41)
  {
    if (v40 == 32 && v41 == 0xE100000000000000)
    {
    }

    else
    {
      sub_1ABF25054();
    }
  }

  v51 = *(v1 + 160);
  v70[0] = *(v1 + 144);
  v70[1] = v51;
  v70[2] = *(v1 + 176);
  v71 = *(v1 + 192);

  sub_1ABE85250(v70, v43);
  v52 = sub_1ABE85574(v33, v34);
  if (!v42)
  {
    v33 = v52;
  }

  sub_1ABBD8B30(v43, type metadata accessor for TextPreprocessor);
LABEL_26:
  sub_1ABBD8690(v32);
  sub_1ABBD8B30(v32, type metadata accessor for LogSignpost);
  return v33;
}

uint64_t sub_1ABBD3C40(uint64_t a1, unint64_t a2)
{
  v68 = a1;
  v69 = a2;
  v2 = sub_1ABF23744();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v73 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v67 - v7;
  v9 = sub_1ABF237F4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1ABF23774();
  v71 = *(v14 - 8);
  v72 = v14;
  v15 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for LogSignpost();
  v18 = *(*(v70 - 8) + 64);
  MEMORY[0x1EEE9AC00](v70);
  v76 = (&v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1ED871F20 != -1)
  {
    swift_once();
  }

  v20 = sub_1ABA7AA24(v9, qword_1ED871EF8);
  (*(v10 + 16))(v13, v20, v9);
  sub_1ABF23754();
  sub_1ABF23764();
  sub_1ABF23714();
  v21 = sub_1ABF23764();
  v22 = sub_1ABF24714();
  if (sub_1ABF247D4())
  {
    v23 = swift_slowAlloc();
    v67 = v3;
    v24 = v2;
    v25 = v9;
    v26 = v23;
    *v23 = 0;
    v27 = sub_1ABF23724();
    _os_signpost_emit_with_name_impl(&dword_1ABA78000, v21, v22, v27, "ECR.Manager.mengen", "", v26, 2u);
    v28 = v26;
    v9 = v25;
    v2 = v24;
    v3 = v67;
    MEMORY[0x1AC5AB8B0](v28, -1, -1);
  }

  (*(v3 + 16))(v73, v8, v2);
  v29 = sub_1ABF237B4();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  v32 = sub_1ABF237A4();
  (*(v3 + 8))(v8, v2);
  v33 = v76;
  *v76 = "ECR.Manager.mengen";
  v33[1] = 18;
  *(v33 + 16) = 2;
  v33[3] = v32;
  (*(v71 + 32))(v33 + *(v70 + 24), v17, v72);
  Current = CFAbsoluteTimeGetCurrent();
  v35 = v74;
  memcpy(v89, (v74 + 16), sizeof(v89));
  sub_1ABBBAF2C(__src);
  v36 = __src[0];
  v94 = __src[1];
  v37 = *&__src[2];
  v91 = *(&__src[2] + 8);
  v92 = *(&__src[3] + 8);
  v93 = BYTE8(__src[4]);
  if (*(&__src[0] + 1) == 1)
  {
    memcpy(v85, (v35 + 16), 0x7BuLL);
    sub_1ABBBB2E8(&v80);
    v38 = v80;
    v39 = v81;
    v86 = v82;
    v87 = v83;
    v88[0] = v84[0];
    *(v88 + 9) = *(v84 + 9);
    if (v81 == 1)
    {
      v40 = v9;
      v77 = *(v35 + 16);
      v41 = *(v35 + 32);
      memcpy(v79, (v35 + 40), sizeof(v79));
      v78 = v41;
      v42 = sub_1ABBBAD8C();
      if (v42)
      {
        v9 = v42;
        if (qword_1ED871B18 != -1)
        {
          swift_once();
        }

        sub_1ABA7AA24(v40, qword_1ED871B20);

        v43 = sub_1ABF237D4();
        v44 = sub_1ABF24684();
        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          *v45 = 134217984;
          *(v45 + 4) = *(v9 + 16);

          v46 = "ECR request manager: generate %ld preset mentions.";
LABEL_12:
          _os_log_impl(&dword_1ABA78000, v43, v44, v46, v45, 0xCu);
          MEMORY[0x1AC5AB8B0](v45, -1, -1);

          goto LABEL_35;
        }

        goto LABEL_48;
      }

      v56 = v75;
      v57 = v69;
      if (v69)
      {
        if (v41)
        {
          v58 = v41;
        }

        else
        {
          v58 = MEMORY[0x1E69E7CC0];
        }

        if (*(v35 + 256))
        {
          if (*(v35 + 256) == 1)
          {

            v59 = sub_1ABE0C5E0(v68, v57, v58);
            if (v56)
            {

LABEL_39:

              goto LABEL_35;
            }

            v9 = v59;
          }

          else
          {

            v64 = sub_1ABE0CA30(v68, v57);
            if (v56)
            {
              goto LABEL_39;
            }

            v9 = v64;
          }
        }

        else
        {
          v63 = sub_1ABE0C4F4(v68, v69, v58);
          if (v56)
          {

            goto LABEL_39;
          }

          v9 = v63;
        }

        if (v9)
        {
          v65 = *(v35 + 328);
          sub_1ABBAB434(*(v9 + 16));
          if (qword_1ED871B18 != -1)
          {
            swift_once();
          }

          sub_1ABA7AA24(v40, qword_1ED871B20);

          v43 = sub_1ABF237D4();
          v44 = sub_1ABF24684();
          if (os_log_type_enabled(v43, v44))
          {
            v45 = swift_slowAlloc();
            *v45 = 134217984;
            *(v45 + 4) = *(v9 + 16);

            v46 = "ECR request manager: generate %ld mentions from unstructured input.";
            goto LABEL_12;
          }

LABEL_48:

          goto LABEL_35;
        }
      }

      sub_1ABB32C5C();
      swift_allocError();
      *v66 = 0xD00000000000002FLL;
      *(v66 + 8) = 0x80000001ABF8A810;
      *(v66 + 16) = 3;
      swift_willThrow();
      goto LABEL_35;
    }

    if (qword_1ED871B18 != -1)
    {
      swift_once();
    }

    sub_1ABA7AA24(v9, qword_1ED871B20);
    v52 = sub_1ABF237D4();
    v53 = sub_1ABF24684();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_1ABA78000, v52, v53, "ECR request manager: generate semi-structured mentions.", v54, 2u);
      MEMORY[0x1AC5AB8B0](v54, -1, -1);
    }

    sub_1ABAD219C(&qword_1EB4D1940, &qword_1ABF33AD0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1ABF34740;
    *(v9 + 32) = v38;
    *(v9 + 40) = v39;
    v55 = v87;
    *(v9 + 48) = v86;
    *(v9 + 64) = v55;
    *(v9 + 80) = v88[0];
    *(v9 + 89) = *(v88 + 9);
  }

  else
  {
    if (qword_1ED871B18 != -1)
    {
      swift_once();
    }

    sub_1ABA7AA24(v9, qword_1ED871B20);
    memcpy(v85, __src, 0x49uLL);
    sub_1ABB3E11C(v85, &v77);
    v47 = sub_1ABF237D4();
    v48 = sub_1ABF24684();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = v49;
      *v49 = 134217984;
      if (v37)
      {
        v51 = *(v37 + 16);
      }

      else
      {
        v51 = 0;
      }

      *(v49 + 4) = v51;
      sub_1ABAB480C(__src, &qword_1EB4D4C60, &qword_1ABF67780);
      _os_log_impl(&dword_1ABA78000, v47, v48, "ECR request manager: generate structured mentions for %ld IDs.", v50, 0xCu);
      MEMORY[0x1AC5AB8B0](v50, -1, -1);
    }

    else
    {
      sub_1ABAB480C(__src, &qword_1EB4D4C60, &qword_1ABF67780);
    }

    sub_1ABAD219C(&qword_1EB4D1940, &qword_1ABF33AD0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1ABF34740;
    *(v9 + 48) = v94;
    v60 = v92;
    *(v9 + 72) = v91;
    *(v9 + 32) = v36;
    *(v9 + 64) = v37;
    *(v9 + 88) = v60;
    *(v9 + 104) = v93;
  }

LABEL_35:
  v61 = v76;
  sub_1ABBD5CD0(v35, v76, Current);
  sub_1ABBD8B30(v61, type metadata accessor for LogSignpost);
  return v9;
}

char *sub_1ABBD46C8(uint64_t a1, int a2, int a3, int a4)
{
  v5 = v4;
  v72 = a3;
  v73 = a4;
  v71 = a2;
  v79 = a1;
  v78 = sub_1ABF23744();
  v6 = *(v78 - 8);
  v7 = *(v6 + 8);
  v8 = MEMORY[0x1EEE9AC00](v78);
  v77 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v62 - v10;
  v12 = sub_1ABF237F4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_1ABF23774();
  v74 = *(v76 - 8);
  v17 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v76);
  v19 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for LogSignpost();
  v20 = *(*(v70 - 8) + 64);
  MEMORY[0x1EEE9AC00](v70);
  v66 = (&v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1ED871F20 != -1)
  {
    goto LABEL_53;
  }

  while (1)
  {
    v22 = sub_1ABA7AA24(v12, qword_1ED871EF8);
    (*(v13 + 16))(v16, v22, v12);
    sub_1ABF23754();
    sub_1ABF23764();
    sub_1ABF23714();
    v23 = sub_1ABF23764();
    v24 = sub_1ABF24714();
    v25 = sub_1ABF247D4();
    v67 = v12;
    if (v25)
    {
      v26 = v5;
      v27 = swift_slowAlloc();
      *v27 = 0;
      v28 = sub_1ABF23724();
      _os_signpost_emit_with_name_impl(&dword_1ABA78000, v23, v24, v28, "ECR.Manager.cangen", "", v27, 2u);
      v29 = v27;
      v5 = v26;
      v12 = v67;
      MEMORY[0x1AC5AB8B0](v29, -1, -1);
    }

    v30 = v78;
    (*(v6 + 2))(v77, v11, v78);
    v31 = sub_1ABF237B4();
    v32 = *(v31 + 48);
    v33 = *(v31 + 52);
    swift_allocObject();
    v34 = sub_1ABF237A4();
    (*(v6 + 1))(v11, v30);
    v35 = v66;
    *v66 = "ECR.Manager.cangen";
    v35[1] = 18;
    *(v35 + 16) = 2;
    v35[3] = v34;
    (*(v74 + 32))(v35 + *(v70 + 24), v19, v76);
    Current = CFAbsoluteTimeGetCurrent();
    v6 = MEMORY[0x1E69E7CC0];
    v88 = MEMORY[0x1E69E7CC0];
    v37 = v79;
    v63 = *(v79 + 16);
    if (!v63)
    {
      break;
    }

    v16 = *(v75 + 288);
    v74 = sub_1ABAAB7C8(v16);
    v19 = 0;
    v38 = 0;
    v39 = 0;
    v40 = v37 + 32;
    v69 = v16;
    v70 = v16 & 0xC000000000000001;
    v68 = v16 & 0xFFFFFFFFFFFFFF8;
    v62 = v37 + 32;
LABEL_6:
    v65 = v6;
    memcpy(__dst, (v40 + 80 * v39), 0x49uLL);
    v13 = v39 + 1;
    v64 = v13;
    sub_1ABB3E11C(__dst, v86);
    v11 = 0;
    v6 = 0;
    while (1)
    {
      if (v74 == v11)
      {
        v53 = sub_1ABBC3DD0(__dst);
        if (!v6)
        {

          sub_1ABB32C5C();
          swift_allocError();
          *v61 = 0xD000000000000024;
          *(v61 + 8) = 0x80000001ABF8A7C0;
          *(v61 + 16) = 7;
          swift_willThrow();
          goto LABEL_37;
        }

        v16 = &v88;
        MEMORY[0x1AC5A9710](v53);
        if (*((v88 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v88 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1ABF24134();
        }

        sub_1ABF24184();
        v6 = v88;
        v39 = v64;
        v40 = v62;
        if (v64 == v63)
        {
          goto LABEL_39;
        }

        goto LABEL_6;
      }

      if (v70)
      {
        v16 = MEMORY[0x1AC5AA170](v11, v69);
      }

      else
      {
        if (v11 >= *(v68 + 16))
        {
          goto LABEL_47;
        }

        v16 = *(v69 + 8 * v11 + 32);
      }

      if (__OFADD__(v11, 1))
      {
        break;
      }

      memcpy(v86, __dst, 0x49uLL);
      v41 = *(v75 + 80);
      v42 = *(v75 + 88);
      v43 = *(v75 + 96);
      v44 = *(v75 + 106);
      v45 = *(v75 + 104);
      v80 = *(v75 + 72);
      v81 = v41;
      v82 = v42;
      v83 = v43;
      v85 = v44;
      v84 = v45;
      sub_1ABBAE7B0(v80, v41, v42, v43, v45 | (v44 << 16));
      sub_1ABB3B88C();
      if (v5)
      {

        sub_1ABB37314(v80, v81, v82, v83, v84 | (v85 << 16));

        sub_1ABBC3DD0(__dst);
LABEL_37:
        v54 = v66;
        sub_1ABBD5CD0(v75, v66, Current);
        sub_1ABBD8B30(v54, type metadata accessor for LogSignpost);
        return v6;
      }

      v19 = v46;
      sub_1ABB37314(v80, v81, v82, v83, v84 | (v85 << 16));
      if (v6)
      {
        v78 = v16;
        v79 = 0;
        v76 = v38;
        swift_beginAccess();
        v13 = *(v19 + 2);
        swift_beginAccess();
        v12 = *(v13 + 16);
        v47 = *(v6 + 2);
        v16 = *(v47 + 16);
        v5 = v16 + v12;
        if (__OFADD__(v16, v12))
        {
          goto LABEL_49;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v77 = v6;
        *(v6 + 2) = v47;
        if (isUniquelyReferenced_nonNull_native && v5 <= *(v47 + 24) >> 1)
        {
          v5 = v79;
          v6 = v77;
        }

        else
        {
          sub_1ABAD9BE8();
          v47 = v49;
          v6 = v77;
          *(v77 + 2) = v49;
          v5 = v79;
        }

        if (*(v13 + 16))
        {
          if ((*(v47 + 24) >> 1) - *(v47 + 16) < v12)
          {
            goto LABEL_51;
          }

          swift_arrayInitWithCopy();

          v16 = v78;
          if (v12)
          {
            v50 = *(v47 + 16);
            v51 = __OFADD__(v50, v12);
            v52 = v50 + v12;
            if (v51)
            {
              goto LABEL_52;
            }

            *(v47 + 16) = v52;
          }
        }

        else
        {

          v16 = v78;
          if (v12)
          {
            goto LABEL_50;
          }
        }

        *(v6 + 2) = v47;
        swift_endAccess();

        v12 = v67;
        v38 = v76;
      }

      else
      {

        v6 = v19;
      }

      swift_beginAccess();
      v16 = *(v19 + 2);

      v13 = *(v16 + 16);

      ++v11;
      v51 = __OFADD__(v38, v13);
      v19 = (v38 + v13);
      v38 += v13;
      if (v51)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    swift_once();
  }

  v19 = 0;
LABEL_39:
  v55 = *(v75 + 328);
  sub_1ABBAB454(v19);
  if (qword_1ED871B18 != -1)
  {
    swift_once();
  }

  sub_1ABA7AA24(v12, qword_1ED871B20);
  v56 = sub_1ABF237D4();
  v57 = sub_1ABF24684();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    *v58 = 134217984;
    *(v58 + 4) = v19;
    _os_log_impl(&dword_1ABA78000, v56, v57, "ECR request manager: generate %ld candidate entities.", v58, 0xCu);
    MEMORY[0x1AC5AB8B0](v58, -1, -1);
  }

  v59 = v66;
  sub_1ABBD5CD0(v75, v66, Current);
  sub_1ABBD8B30(v59, type metadata accessor for LogSignpost);
  return v6;
}

uint64_t sub_1ABBD5030(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v62 = a4;
  v60 = a2;
  v61 = a1;
  v59 = sub_1ABF23744();
  v57 = *(v59 - 8);
  v7 = *(v57 + 64);
  v8 = MEMORY[0x1EEE9AC00](v59);
  v56 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v52 - v10;
  v12 = sub_1ABF237F4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1ABF23774();
  v54 = *(v55 - 8);
  v17 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for LogSignpost();
  v20 = *(*(v53 - 8) + 64);
  MEMORY[0x1EEE9AC00](v53);
  v22 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED871F20 != -1)
  {
    swift_once();
  }

  v23 = sub_1ABA7AA24(v12, qword_1ED871EF8);
  (*(v13 + 16))(v16, v23, v12);
  sub_1ABF23754();
  sub_1ABF23764();
  sub_1ABF23714();
  v24 = sub_1ABF23764();
  v25 = sub_1ABF24714();
  if (sub_1ABF247D4())
  {
    v26 = swift_slowAlloc();
    v52 = a3;
    v27 = v5;
    v28 = v26;
    *v26 = 0;
    v29 = sub_1ABF23724();
    _os_signpost_emit_with_name_impl(&dword_1ABA78000, v24, v25, v29, "ECR.Manager.rerank", "", v28, 2u);
    v30 = v28;
    v5 = v27;
    a3 = v52;
    MEMORY[0x1AC5AB8B0](v30, -1, -1);
  }

  v31 = v57;
  v32 = v59;
  (*(v57 + 16))(v56, v11, v59);
  v33 = sub_1ABF237B4();
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  swift_allocObject();
  v36 = sub_1ABF237A4();
  v38 = *(v31 + 8);
  v37 = v31 + 8;
  v38(v11, v32);
  *v22 = "ECR.Manager.rerank";
  *(v22 + 1) = 18;
  v22[16] = 2;
  *(v22 + 3) = v36;
  (*(v54 + 32))(&v22[*(v53 + 24)], v19, v55);
  Current = CFAbsoluteTimeGetCurrent();
  v40 = *(v5 + 304);
  v41 = *(v5 + 312);
  v42 = *(v5 + 320);
  LOBYTE(v63) = *(v5 + 296);
  v64 = v40;
  v65[0] = v41;
  v65[1] = v42;
  sub_1ABBD8A4C(v40, v41);
  v43 = a3;
  v44 = v62;
  v45 = v58;
  v46 = sub_1ABB9B300(v61, v60 & 1, v43, v62);
  if (v45)
  {
    sub_1ABBA19EC(v64, v65[0]);
    goto LABEL_15;
  }

  v37 = v46;
  sub_1ABBA19EC(v64, v65[0]);
  if (!v37)
  {
    sub_1ABB32C5C();
    swift_allocError();
    *v49 = xmmword_1ABF47820;
    v50 = 9;
LABEL_14:
    *(v49 + 16) = v50;
    swift_willThrow();
    goto LABEL_15;
  }

  v48 = *(v5 + 16);
  v47 = *(v5 + 24);
  memcpy(__dst, (v5 + 32), sizeof(__dst));
  v63 = v48;
  v64 = v47;
  memcpy(v65, (v5 + 32), 0x6BuLL);
  if ((sub_1ABBBABC4() & 1) == 0)
  {
    v63 = v48;
    v64 = v47;
    memcpy(v65, __dst, 0x6BuLL);
    if ((sub_1ABBBACA4() & 1) == 0 && (!v47 || !v44))
    {

      sub_1ABB32C5C();
      swift_allocError();
      *v49 = 0xD000000000000019;
      *(v49 + 8) = 0x80000001ABF8A780;
      v50 = 2;
      goto LABEL_14;
    }
  }

LABEL_15:
  sub_1ABBD5CD0(v5, v22, Current);
  sub_1ABBD8B30(v22, type metadata accessor for LogSignpost);
  return v37;
}

uint64_t sub_1ABBD5684(void *a1, void *a2)
{
  v58 = a2;
  v57 = a1;
  v64[36] = *MEMORY[0x1E69E9840];
  v2 = sub_1ABF21CF4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v55 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v60 = &v51 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v51 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v51 - v12;
  v14 = NSTemporaryDirectory();
  sub_1ABF23C04();

  sub_1ABF21C44();

  sub_1ABF21C74();
  v17 = *(v3 + 8);
  v16 = v3 + 8;
  v15 = v17;
  v17(v11, v2);
  v18 = [objc_opt_self() defaultManager];
  sub_1ABF21CC4();
  v19 = sub_1ABF23BD4();

  v64[0] = 0;
  v20 = [v18 createDirectoryAtPath:v19 withIntermediateDirectories:1 attributes:0 error:v64];

  if (v20)
  {
    v53 = v15;
    v54 = v16;
    v52 = v2;
    v61[0] = 0;
    v61[1] = 0xE000000000000000;
    v21 = v64[0];
    sub_1ABF24AB4();

    v61[0] = 0x65736E6F70736572;
    v61[1] = 0xE90000000000005FLL;
    v22 = v56;
    MEMORY[0x1AC5A9410](*(v56 + 48), *(v56 + 56));
    MEMORY[0x1AC5A9410](0x6E6F736A2ELL, 0xE500000000000000);
    v23 = v60;
    sub_1ABF21C84();

    memcpy(v62, (v22 + 16), 0x7BuLL);
    memcpy(v63, (v22 + 144), 0x8DuLL);
    memcpy(v61, (v22 + 16), 0x7BuLL);
    memcpy(&v61[16], (v22 + 144), 0x8DuLL);
    memcpy(v64, v61, 0x110uLL);
    v64[34] = v57;
    v64[35] = v58;
    v24 = sub_1ABF21854();
    v25 = *(v24 + 48);
    v26 = *(v24 + 52);
    swift_allocObject();
    sub_1ABBC3BC8(v62, v61);
    sub_1ABBA9514(v63, v61);

    sub_1ABF21844();
    memcpy(v61, v64, sizeof(v61));
    sub_1ABBD89F8();
    v27 = v59;
    v28 = sub_1ABF21834();
    if (v27)
    {

      v30 = v52;
      v59 = v13;
      if (qword_1ED871B18 != -1)
      {
        swift_once();
      }

      v39 = sub_1ABF237F4();
      sub_1ABA7AA24(v39, qword_1ED871B20);
      v40 = v27;
      v41 = sub_1ABF237D4();
      v42 = sub_1ABF24664();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v58 = 0;
        v44 = v43;
        v45 = swift_slowAlloc();
        v61[0] = v45;
        *v44 = 136315138;
        swift_getErrorValue();
        v46 = sub_1ABF25154();
        v48 = sub_1ABADD6D8(v46, v47, v61);

        *(v44 + 4) = v48;
        _os_log_impl(&dword_1ABA78000, v41, v42, "Failed to write session logger JSON data: %s", v44, 0xCu);
        sub_1ABA84B54(v45);
        MEMORY[0x1AC5AB8B0](v45, -1, -1);
        MEMORY[0x1AC5AB8B0](v44, -1, -1);
      }

      sub_1ABBC47EC(v64);

      v49 = v53;
      v53(v60, v30);
      result = v49(v59, v30);
    }

    else
    {
      v33 = v28;
      v34 = v29;
      v35 = v23;

      sub_1ABF21CC4();
      v36 = v55;
      sub_1ABF21C44();

      sub_1ABF21DF4();
      v37 = v52;
      v38 = v53;
      v58 = 0;
      sub_1ABA96210(v33, v34);
      sub_1ABBC47EC(v64);
      v38(v36, v37);
      v38(v35, v37);
      result = (v38)(v13, v37);
    }
  }

  else
  {
    v31 = v64[0];
    sub_1ABF21BE4();

    swift_willThrow();
    result = v15(v13, v2);
  }

  v50 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1ABBD5CD0(uint64_t a1, unint64_t *a2, double a3)
{
  v7 = sub_1ABF23784();
  v8 = sub_1ABA7BB64(v7);
  v33 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA7BC58();
  sub_1ABA8BFC4();
  v12 = sub_1ABF23744();
  v13 = sub_1ABA7BB64(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA7BC58();
  v20 = v19 - v18;
  v21 = *(a1 + 328);
  sub_1ABBAB2D0(a3);
  v22 = type metadata accessor for LogSignpost();
  v23 = *a2;
  v24 = *(a2 + 16);
  v25 = a2[3];
  v26 = a2 + *(v22 + 24);
  v27 = sub_1ABF23764();
  sub_1ABF23794();
  v32 = sub_1ABF24704();
  result = sub_1ABF247D4();
  if ((result & 1) == 0)
  {
LABEL_11:

    return (*(v15 + 8))(v20, v12);
  }

  if ((v24 & 1) == 0)
  {
    if (v23)
    {
LABEL_8:

      sub_1ABF237C4();

      v29 = sub_1ABAB10B4();
      if (v30(v29) != *MEMORY[0x1E69E93E8])
      {
        (*(v33 + 8))(v3, v7);
      }

      sub_1ABA8179C();
      *swift_slowAlloc() = 0;
      v31 = sub_1ABF23724();
      sub_1ABAA3080(&dword_1ABA78000, v31, v32);
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
      goto LABEL_11;
    }

    __break(1u);
  }

  if (HIDWORD(v23))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if ((v23 & 0xFFFFF800) != 0xD800)
  {
    if (v23 >> 16 <= 0x10)
    {
      goto LABEL_8;
    }

    goto LABEL_13;
  }

LABEL_14:
  __break(1u);
  return result;
}

void *sub_1ABBD5F40()
{
  memcpy(v5, v0 + 2, 0x7BuLL);
  sub_1ABBC3C00(v5);
  memcpy(__dst, v0 + 18, 0x8DuLL);
  sub_1ABBA954C(__dst);
  v1 = v0[36];

  v2 = v0[40];
  sub_1ABBA19EC(v0[38], v0[39]);
  v3 = v0[41];

  return v0;
}

uint64_t sub_1ABBD5FB4()
{
  sub_1ABBD5F40();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABBD600C()
{
  v0 = sub_1ABF230A4();
  v1 = sub_1ABA7BB64(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  sub_1ABA7BC58();
  v8 = v7 - v6;
  v9 = sub_1ABF21CF4();
  v10 = sub_1ABA7BB64(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7BC58();
  v14 = *(v13 + 16);
  v15 = sub_1ABA7D0F8();
  v16(v15);
  (*(v3 + 104))(v8, *MEMORY[0x1E69DF528], v0);
  return sub_1ABF23054();
}

void sub_1ABBD6180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t *a21, uint64_t a22, uint64_t a23)
{
  sub_1ABA7BCA8();
  v361 = v26;
  v362 = v24;
  v307 = v23;
  v340 = v27;
  v342 = v28;
  v343 = v29;
  v31 = v30;
  v358 = v32;
  v359 = v33;
  v377[18] = *MEMORY[0x1E69E9840];
  v36 = v34[2];
  v35 = v34[3];
  v304 = *v34;
  v305 = v36;
  v306 = v35;
  v37 = v34[6];
  v331 = v34;
  v332 = v37;
  v38 = sub_1ABAD219C(&qword_1EB4D4C48, &unk_1ABF47890);
  v39 = sub_1ABA7AB80(v38);
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v337 = &v303 - v42;
  sub_1ABA8409C();
  v352 = type metadata accessor for SearchableViewDatabaseTable();
  v43 = sub_1ABA7BBB0(v352);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v43);
  sub_1ABA7C068();
  v336 = v46;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v47);
  v346 = &v303 - v48;
  sub_1ABA8409C();
  v318 = sub_1ABF21CF4();
  v49 = sub_1ABA7BB64(v318);
  v313 = v50;
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v49);
  sub_1ABA7BC58();
  v317 = v54 - v53;
  sub_1ABA8409C();
  v55 = sub_1ABF23074();
  v56 = sub_1ABA7AB80(v55);
  v58 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v56);
  sub_1ABA7BC58();
  v316 = v60 - v59;
  v61 = sub_1ABAD219C(&qword_1EB4D4C50, &unk_1ABF479B0);
  v62 = sub_1ABA7AB80(v61);
  v64 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v360 = &v303 - v65;
  v66 = sub_1ABAD219C(&qword_1EB4D3100, &qword_1ABF3AC80);
  v67 = sub_1ABA7AB80(v66);
  v69 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v67);
  sub_1ABA7C068();
  v335 = v70;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v71);
  sub_1ABA88E50();
  v334 = v72;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v73);
  sub_1ABA88E50();
  v322 = v74;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v75);
  sub_1ABA88E50();
  v321 = v76;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v77);
  sub_1ABA88E50();
  v320 = v78;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v79);
  sub_1ABA88E50();
  v319 = v80;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v81);
  sub_1ABA88E50();
  v315 = v82;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v83);
  sub_1ABA88E50();
  v314 = v84;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v85);
  sub_1ABA88E50();
  v339 = v86;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v87);
  v338 = &v303 - v88;
  sub_1ABA8409C();
  v357 = sub_1ABF23744();
  v89 = sub_1ABA7BB64(v357);
  v91 = v90;
  v93 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v89);
  sub_1ABA7C068();
  v356 = v94;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v95);
  v97 = &v303 - v96;
  v98 = sub_1ABF237F4();
  v99 = sub_1ABA7BB64(v98);
  v101 = v100;
  v103 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v99);
  sub_1ABA7BC58();
  v106 = (v105 - v104);
  v355 = sub_1ABF23774();
  v107 = sub_1ABA7BB64(v355);
  v353 = v108;
  v110 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v107);
  sub_1ABA7BC58();
  sub_1ABA8BFC4();
  v351 = type metadata accessor for LogSignpost();
  v111 = sub_1ABA7BBB0(v351);
  v113 = *(v112 + 64);
  MEMORY[0x1EEE9AC00](v111);
  sub_1ABA7BC58();
  v333 = (v115 - v114);
  memcpy(v376, v358, 0x7BuLL);
  memcpy(v377, v359, 0x8DuLL);
  v116 = v31[1];
  v354 = *v31;
  v117 = v31[3];
  v311 = v31[2];
  v312 = v116;
  v118 = v31[5];
  v309 = v31[4];
  v310 = v117;
  v347 = v118;
  v308 = v31[6];
  v119 = v361[1];
  v328 = *v361;
  v329 = v119;
  v330 = v361[2];
  v120 = a21[1];
  v341 = *a21;
  v121 = a21[2];
  v122 = a21[3];
  v123 = a21[4];
  v324 = v120;
  v325 = v123;
  v124 = a21[6];
  v326 = a21[5];
  v327 = v121;
  v344 = v124;
  v345 = v122;
  if (qword_1ED871F20 != -1)
  {
    goto LABEL_113;
  }

LABEL_2:
  v125 = sub_1ABA7AA24(v98, qword_1ED871EF8);
  v126 = *(v101 + 16);
  v323 = v98;
  v126(v106, v125, v98);
  sub_1ABF23754();
  sub_1ABF23764();
  sub_1ABF23714();
  v127 = sub_1ABF23764();
  v128 = sub_1ABF24714();
  if (sub_1ABF247D4())
  {
    sub_1ABA8179C();
    v129 = swift_slowAlloc();
    *v129 = 0;
    v130 = sub_1ABF23724();
    _os_signpost_emit_with_name_impl(&dword_1ABA78000, v127, v128, v130, "ECR.Manager.initWithViews", "", v129, 2u);
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
  }

  v132 = v356;
  v131 = v357;
  (v91[2])(v356, v97, v357);
  v133 = sub_1ABF237B4();
  v134 = *(v133 + 48);
  v135 = *(v133 + 52);
  swift_allocObject();
  v136 = sub_1ABF237A4();
  v138 = v91[1];
  v137 = (v91 + 1);
  v138(v97, v131);
  sub_1ABA97F80("ECR.Manager.initWithViews");
  (*(v353 + 32))(v139 + *(v351 + 24), v25, v355);
  sub_1ABAA4030();
  v353 = v377[15];
  v351 = v377[16];
  v350 = LOBYTE(v377[17]);
  v348 = BYTE2(v377[17]);
  v349 = BYTE1(v377[17]);
  v141 = v360;
  v142 = v354;
  if (BYTE1(v377[17]) == 1)
  {
    if (*v331)
    {
      v97 = v331[5];
      v98 = v331[6];
      v137 = v331[3];
      v136 = v331[4];
      v143 = v331[1];
      v132 = v331[2];
      swift_unknownObjectRetain();

      swift_unknownObjectRetain();

      swift_unknownObjectRelease();
      v140 = v143;
    }

    else
    {
      if (qword_1ED871B18 != -1)
      {
        sub_1ABA7BE6C();
      }

      sub_1ABA7AA24(v323, qword_1ED871B20);
      v136 = sub_1ABF237D4();
      v144 = sub_1ABF24664();
      if (sub_1ABA957C8(v144))
      {
        sub_1ABA8179C();
        *swift_slowAlloc() = 0;
        sub_1ABAA3060(&dword_1ABA78000, v145, v146, "View(entitySummary) is not available.");
        v141 = v360;
        sub_1ABA7BDD8();
        MEMORY[0x1AC5AB8B0]();
      }

      sub_1ABAA4030();
    }
  }

  v355 = v140;
  v356 = v132;
  v375[0] = v140;
  v375[1] = v132;
  v357 = v137;
  v375[2] = v137;
  v375[3] = v136;
  v375[4] = v97;
  v375[5] = v98;
  v332 = sub_1ABBD8A8C();
  v147 = sub_1ABF239C4();
  v361 = v98;
  v358 = v136;
  v359 = v97;
  if (v142)
  {
    if (!_Records_GDEntityClass_records)
    {
      __break(1u);
LABEL_115:
      __break(1u);
      return;
    }

    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x270), *(_Records_GDEntityClass_records + 0x278), *(_Records_GDEntityClass_records + 0x280), v373);
    v368[0] = v373[0];
    v368[1] = v373[1];
    v369 = v373[2];
    v367[0] = v312;
    v367[1] = v311;
    v367[2] = v310;
    v367[3] = v309;
    v367[4] = v347;
    v367[5] = v308;

    swift_unknownObjectRetain();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v373[0] = v147;
    sub_1ABAFB7D4(v367, v368, isUniquelyReferenced_nonNull_native, v149, v150, v151, v152, v153, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318);
    sub_1ABA88934(v368);
    sub_1ABBD892C(v354);
    v147 = *&v373[0];
  }

  else
  {
    v154 = v323;
    if (qword_1ED871B18 != -1)
    {
      sub_1ABA7BE6C();
    }

    sub_1ABA7AA24(v154, qword_1ED871B20);
    v155 = sub_1ABF237D4();
    v156 = sub_1ABF24664();
    if (sub_1ABA957C8(v156))
    {
      sub_1ABA8179C();
      *swift_slowAlloc() = 0;
      sub_1ABAA3060(&dword_1ABA78000, v157, v158, "View(peopleSubgraph) is not available.");
      v141 = v360;
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
    }
  }

  memcpy(v373, v376, 0x7BuLL);
  v106 = v373;
  sub_1ABBBAAB4();
  if (v159)
  {
    sub_1ABBD892C(v341);
    v101 = v343;
    v25 = v362;
    v345 = v147;
  }

  else
  {
    v160 = v341;
    if (v341)
    {
      v364[0] = v324;
      v364[1] = v327;
      v364[2] = v345;
      v364[3] = v325;
      v364[4] = v326;
      v364[5] = v344;

      swift_unknownObjectRetain();

      sub_1ABBD892C(v160);
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_115;
      }

      sub_1ABA8882C(*_Records_GDEntityClass_records, *(_Records_GDEntityClass_records + 8), *(_Records_GDEntityClass_records + 8 + 8), v373);
      v365[0] = v373[0];
      v365[1] = v373[1];
      v366 = v373[2];

      swift_unknownObjectRetain();

      v161 = swift_isUniquelyReferenced_nonNull_native();
      *&v373[0] = v147;
      v106 = v373;
      sub_1ABAFB7D4(v364, v365, v161, v162, v163, v164, v165, v166, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318);
      sub_1ABA88934(v365);

      swift_unknownObjectRelease();

      v345 = *&v373[0];
      v101 = v343;
      v25 = v362;
    }

    else
    {
      if (qword_1ED871B18 != -1)
      {
        sub_1ABA7BE6C();
      }

      sub_1ABA7AA24(v323, qword_1ED871B20);
      v106 = sub_1ABF237D4();
      v167 = sub_1ABF24664();
      v168 = sub_1ABA957C8(v167);
      v101 = v343;
      v25 = v362;
      v345 = v147;
      if (v168)
      {
        sub_1ABA8179C();
        *swift_slowAlloc() = 0;
        sub_1ABAA3060(&dword_1ABA78000, v169, v170, "Subgraph view is not available");
        v141 = v360;
        sub_1ABA7BDD8();
        MEMORY[0x1AC5AB8B0]();
      }
    }
  }

  v341 = a22;
  v354 = a23;
  v363 = MEMORY[0x1E69E7CC0];
  v97 = v353;
  v347 = *(v353 + 16);
  if (!v347)
  {

    goto LABEL_96;
  }

  v325 = 0x80000001ABF7F180;
  v326 = 0x80000001ABF7F1A0;
  v323 = (v313 + 8);
  v324 = "r subgraph matching.";

  v98 = 0;
  v171 = MEMORY[0x1E69E7CC0];
  v91 = &qword_1EB4D4C50;
  while (1)
  {
    if (v98 >= *(v97 + 16))
    {
      __break(1u);
LABEL_113:
      sub_1ABA7D608();
      goto LABEL_2;
    }

    v172 = *(v98 + v97 + 32);
    v362 = v25;
    v344 = v171;
    if (v172 >> 6)
    {
      break;
    }

    sub_1ABA8F288();
    if (v101)
    {
      v179 = type metadata accessor for EntityResolutionRankingService();
      sub_1ABA8E1F0(v179, &off_1F207C6B8);
    }

    else
    {
      sub_1ABA8E818();
    }

    sub_1ABBD88DC(v342, v141, &qword_1EB4D4C50, &unk_1ABF479B0);
    v180 = type metadata accessor for EntityAliasView();
    if (sub_1ABA7E1E0(v141, 1, v180) == 1)
    {

      v181 = v345;

      sub_1ABAB480C(v141, &qword_1EB4D4C50, &unk_1ABF479B0);
      v182 = 1;
      v183 = v338;
    }

    else
    {
      v183 = v338;
      sub_1ABB3E614(v141 + *(v180 + 20), v338);

      v181 = v345;

      sub_1ABBD8B30(v141, type metadata accessor for EntityAliasView);
      v182 = 0;
    }

    v184 = v352;
    sub_1ABA7B9B4(v183, v182, 1, v352);
    v185 = v339;
    sub_1ABA7ED8C();
    sub_1ABA7B9B4(v186, v187, v188, v184);
    type metadata accessor for CandidateGenerator();
    v189 = sub_1ABA8A33C();
    sub_1ABA95280();
    v190 = sub_1ABA809B4();
    sub_1ABBD8AE0(v190, v191);
    v192 = sub_1ABA81788();
    v193 = v172;
    v172 = v189;
    v194 = v362;
    sub_1ABB3AB20(v192, v193, v195, v196, 0, v181, v183, v185, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316);
    v25 = v194;
    if (v194)
    {

      v289 = sub_1ABA809B4();
      sub_1ABB3DFF8(v289, v290);
      sub_1ABAA2C58();
      sub_1ABBC3C00(v376);
      sub_1ABBA954C(v377);

      sub_1ABAA226C();
      sub_1ABAB480C(v331, &qword_1EB4D4C70, &unk_1ABF478B0);

      goto LABEL_108;
    }

    MEMORY[0x1AC5A9710]();
    sub_1ABA97794();
    v97 = v353;
    if (*(v197 + 16) >= *(v197 + 24) >> 1)
    {
      sub_1ABF24134();
    }

    v106 = &v363;
    sub_1ABF24184();
LABEL_92:
    v101 = v343;
LABEL_93:
    v98 = (v98 + 1);
    v171 = v363;
    v141 = v360;
    v91 = &qword_1EB4D4C50;
    if (v347 == v98)
    {

LABEL_96:
      memcpy(v374, v376, 0x7BuLL);
      memcpy(v373, v377, 0x8DuLL);
      v370 = v328;
      v371 = v329;
      v372 = v330;
      v172 = swift_allocObject();
      sub_1ABBD2AB0();
      if (v25)
      {
        v280 = sub_1ABA97F94();
        goto LABEL_106;
      }

      v282 = sub_1ABA97F94();
      sub_1ABB3DFF8(v282, v283);
      v284 = v333;
      sub_1ABBD8690(v333);
      sub_1ABAB480C(v331, &qword_1EB4D4C70, &unk_1ABF478B0);

      swift_unknownObjectRelease();

      sub_1ABAB480C(v341, &qword_1EB4D4C48, &unk_1ABF47890);
      sub_1ABAB480C(v342, &qword_1EB4D4C50, &unk_1ABF479B0);
      sub_1ABA7F120();
      sub_1ABBD8B30(v284, v285);
      goto LABEL_109;
    }
  }

  if (v172 >> 6 == 1)
  {
    *(&v373[1] + 1) = &type metadata for Features.FeatureFlag;
    *&v373[2] = sub_1ABA8488C();
    LOBYTE(v373[0]) = 25;
    v173 = sub_1ABF220A4();
    sub_1ABA84B54(v373);
    if ((v173 & 1) == 0)
    {

      sub_1ABAA2C58();
      sub_1ABBC3C00(v376);
      sub_1ABBA954C(v377);

      sub_1ABA8A488();
      sub_1ABB32C5C();
      swift_allocError();
      sub_1ABA7BB94();
      *v286 = v287 + 36;
      *(v286 + 8) = v172;
      v288 = 8;
      goto LABEL_105;
    }

    v174 = v337;
    sub_1ABBD88DC(v341, v337, &qword_1EB4D4C48, &unk_1ABF47890);
    v175 = type metadata accessor for LemmatizedSubgraphView();
    if (sub_1ABA7E1E0(v174, 1, v175) == 1)
    {
      sub_1ABAA2C58();
      sub_1ABBC3C00(v376);
      sub_1ABBA954C(v377);

      sub_1ABAB480C(v174, &qword_1EB4D4C48, &unk_1ABF47890);

      sub_1ABA8A488();
      sub_1ABB32C5C();
      swift_allocError();
      sub_1ABA7BB94();
      *v286 = v291 + 2;
      *(v286 + 8) = v172;
      v288 = 5;
      goto LABEL_105;
    }

    v176 = v174 + *(v175 + 20);
    v177 = v336;
    sub_1ABB3E614(v176, v336);
    sub_1ABBD8B30(v174, type metadata accessor for LemmatizedSubgraphView);
    sub_1ABB34574(v177, v346);
    sub_1ABA8F288();
    if (v101)
    {
      v178 = type metadata accessor for EntityResolutionRankingService();
      sub_1ABA8E1F0(v178, &off_1F207C6B8);
    }

    else
    {
      sub_1ABA8E818();
    }

    v198 = v101;
    v199 = v334;
    sub_1ABA7ED8C();
    v200 = v352;
    sub_1ABA7B9B4(v201, v202, v203, v352);
    v204 = v335;
    sub_1ABB3E614(v346, v335);
    sub_1ABA7B9B4(v204, 0, 1, v200);
    type metadata accessor for CandidateGenerator();
    v205 = sub_1ABA8A33C();

    v206 = v198;

    sub_1ABA95280();
    v207 = sub_1ABA809B4();
    sub_1ABBD8AE0(v207, v208);
    v209 = v345;

    v210 = sub_1ABA81788();
    v211 = v172;
    v212 = v209;
    v172 = v205;
    v213 = v362;
    sub_1ABB3AB20(v210, v211, v214, v215, 0, v212, v199, v204, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316);
    v25 = v213;
    if (v213)
    {

      v292 = sub_1ABA809B4();
      sub_1ABB3DFF8(v292, v293);
      sub_1ABAA2C58();
      sub_1ABBC3C00(v376);
      sub_1ABBA954C(v377);
      sub_1ABA90730();

      sub_1ABAA226C();
      sub_1ABAB480C(v331, &qword_1EB4D4C70, &unk_1ABF478B0);

      goto LABEL_108;
    }

    MEMORY[0x1AC5A9710]();
    sub_1ABA97794();
    if (*(v216 + 16) >= *(v216 + 24) >> 1)
    {
      sub_1ABAA2574();
    }

    v106 = &v363;
    sub_1ABA7D0F8();
    sub_1ABF24184();
    sub_1ABA90730();
    v97 = v353;
    v101 = v206;
    goto LABEL_93;
  }

  if (v172 == 128)
  {
    v217 = type metadata accessor for ViewService();
    v327 = static ViewService.clientService.getter(v217);
    v218 = *&v327[OBJC_IVAR___GDSwiftViewService_accessRequester];
    v219 = sub_1ABF23BD4();
    *&v373[0] = 0;
    v220 = [v218 requestAssertionForViewName:v219 error:v373];

    v172 = *&v373[0];
    if (!v220)
    {
      v298 = *&v373[0];

      sub_1ABAA2C58();
      sub_1ABBC3C00(v376);
      sub_1ABBA954C(v377);

      sub_1ABF21BE4();

      swift_willThrow();
      v299 = sub_1ABA809B4();
      sub_1ABB3DFF8(v299, v300);

      goto LABEL_107;
    }

    v221 = *&v373[0];
    v222 = [v220 viewArtifactURL];
    v223 = v317;
    sub_1ABF21CA4();

    sub_1ABBD600C();
    (*v323)(v223, v318);
    v224 = sub_1ABF23044();
    v225 = *(v224 + 48);
    v226 = *(v224 + 52);
    swift_allocObject();
    v227 = sub_1ABF22FF4();
    sub_1ABF23024();
    sub_1ABA8F288();
    if (v101)
    {
      v228 = type metadata accessor for EntityResolutionRankingService();
      *&v373[2] = &off_1F207C6B8;
      *(&v373[1] + 1) = v228;
      *&v373[0] = v101;
    }

    else
    {
      sub_1ABA8E818();
    }

    v229 = v314;
    sub_1ABA7ED8C();
    v230 = v352;
    sub_1ABA7B9B4(v231, v232, v233, v352);
    v234 = v315;
    sub_1ABA7ED8C();
    sub_1ABA7B9B4(v235, v236, v237, v230);
    type metadata accessor for CandidateGenerator();
    v172 = sub_1ABA8A33C();

    v238 = v354;
    swift_unknownObjectRetain();
    v239 = sub_1ABA809B4();
    sub_1ABBD8AE0(v239, v240);
    v241 = v345;

    v242 = v241;
    v243 = v362;
    sub_1ABB3AB20(v374, 128, v375, v373, 0, v242, v229, v234, v227, v238, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314);
    if (v243)
    {

      v301 = sub_1ABA809B4();
      sub_1ABB3DFF8(v301, v302);
      sub_1ABAA2C58();

      swift_unknownObjectRelease();

      sub_1ABBC3C00(v376);
      sub_1ABBA954C(v377);

      sub_1ABAA226C();
      sub_1ABAB480C(v331, &qword_1EB4D4C70, &unk_1ABF478B0);

      goto LABEL_108;
    }

    MEMORY[0x1AC5A9710]();
    sub_1ABA97794();
    if (*(v244 + 16) >= *(v244 + 24) >> 1)
    {
      sub_1ABF24134();
    }

    v106 = &v363;
    sub_1ABF24184();

    swift_unknownObjectRelease();
    v101 = v343;
    v25 = 0;
    goto LABEL_93;
  }

  if (v172 == 129)
  {
    v172 = 0xEA00000000007963;
    switch(v376[48])
    {
      case 1:
        v172 = 0xE800000000000000;
        sub_1ABA9A3B4();
        goto LABEL_74;
      case 2:
        sub_1ABAA34A0();
        sub_1ABA7FC58();
        goto LABEL_74;
      case 3:
        sub_1ABA83EA4();
        goto LABEL_74;
      case 4:

        goto LABEL_75;
      case 5:
        v172 = v326;
        goto LABEL_74;
      case 6:
        sub_1ABA83EA4();
        sub_1ABA95110();
        goto LABEL_74;
      default:
LABEL_74:
        sub_1ABA7BB94();
        v245 = sub_1ABF25054();

        if ((v245 & 1) == 0)
        {
          goto LABEL_104;
        }

LABEL_75:
        sub_1ABA8F288();
        if (v101)
        {
          v246 = type metadata accessor for EntityResolutionRankingService();
          sub_1ABA8E1F0(v246, &off_1F207C6B8);
        }

        else
        {
          sub_1ABA8E818();
        }

        v247 = v321;
        sub_1ABA7ED8C();
        v248 = v352;
        sub_1ABA7B9B4(v249, v250, v251, v352);
        v252 = v322;
        sub_1ABA7ED8C();
        sub_1ABA7B9B4(v253, v254, v255, v248);

        sub_1ABA95280();
        v256 = v340;
        v257 = v340;
        v258 = sub_1ABF239C4();
        type metadata accessor for CandidateGenerator();
        v259 = sub_1ABA8A33C();
        v260 = sub_1ABA809B4();
        sub_1ABBD8AE0(v260, v261);
        v262 = sub_1ABA81788();
        v265 = 129;
        break;
    }

    goto LABEL_88;
  }

  v172 = 0xEA00000000007963;
  switch(v376[48])
  {
    case 1:
      v172 = 0xE800000000000000;
      sub_1ABA9A3B4();
      goto LABEL_83;
    case 2:
      sub_1ABAA34A0();
      sub_1ABA7FC58();
      goto LABEL_83;
    case 3:
      sub_1ABA83EA4();
      goto LABEL_83;
    case 4:
      sub_1ABA7BB94();
      v172 = v325;
      goto LABEL_83;
    case 5:

      goto LABEL_84;
    case 6:
      sub_1ABA83EA4();
      sub_1ABA95110();
      goto LABEL_83;
    default:
LABEL_83:
      v266 = sub_1ABF25054();

      if (v266)
      {
LABEL_84:
        sub_1ABA8F288();
        if (v101)
        {
          v267 = type metadata accessor for EntityResolutionRankingService();
          sub_1ABA8E1F0(v267, &off_1F207C6B8);
        }

        else
        {
          sub_1ABA8E818();
        }

        v247 = v319;
        sub_1ABA7ED8C();
        v268 = v352;
        sub_1ABA7B9B4(v269, v270, v271, v352);
        v252 = v320;
        sub_1ABA7ED8C();
        sub_1ABA7B9B4(v272, v273, v274, v268);

        sub_1ABA95280();
        v256 = v340;
        v257 = v340;
        v258 = sub_1ABF239C4();
        type metadata accessor for CandidateGenerator();
        v259 = sub_1ABA8A33C();
        v275 = sub_1ABA809B4();
        sub_1ABBD8AE0(v275, v276);
        v262 = sub_1ABA81788();
        v265 = 130;
LABEL_88:
        v277 = v258;
        v172 = v259;
        v278 = v362;
        sub_1ABB3AB20(v262, v265, v263, v264, v256, v277, v247, v252, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316);
        v25 = v278;
        if (v278)
        {

          v294 = sub_1ABA809B4();
          sub_1ABB3DFF8(v294, v295);
          sub_1ABAA2C58();
          sub_1ABBC3C00(v376);
          sub_1ABBA954C(v377);

          sub_1ABAA226C();
          sub_1ABAB480C(v331, &qword_1EB4D4C70, &unk_1ABF478B0);

          goto LABEL_108;
        }

        MEMORY[0x1AC5A9710]();
        sub_1ABA97794();
        if (*(v279 + 16) >= *(v279 + 24) >> 1)
        {
          sub_1ABAA2574();
        }

        v106 = &v363;
        sub_1ABA7D0F8();
        sub_1ABF24184();
        v97 = v353;
        goto LABEL_92;
      }

LABEL_104:

      sub_1ABAA2C58();
      sub_1ABBC3C00(v376);
      sub_1ABBA954C(v377);

      sub_1ABB32C5C();
      swift_allocError();
      *v286 = xmmword_1ABF47830;
      v288 = 9;
LABEL_105:
      *(v286 + 16) = v288;
      swift_willThrow();
      v280 = sub_1ABA809B4();
LABEL_106:
      sub_1ABB3DFF8(v280, v281);
LABEL_107:
      sub_1ABAA226C();
      sub_1ABAB480C(v331, &qword_1EB4D4C70, &unk_1ABF478B0);

LABEL_108:

      swift_unknownObjectRelease();
      sub_1ABAB480C(v341, &qword_1EB4D4C48, &unk_1ABF47890);
      sub_1ABAB480C(v342, &qword_1EB4D4C50, &unk_1ABF479B0);
      sub_1ABA7F120();
      sub_1ABBD8B30(v172, v296);
LABEL_109:
      v297 = *MEMORY[0x1E69E9840];
      sub_1ABA7BC90();
      return;
  }
}

void sub_1ABBD7BEC()
{
  sub_1ABA7BCA8();
  v146 = v1;
  v120 = v0;
  HIDWORD(v119) = v2;
  v163 = v3;
  v145 = v4;
  v137 = v5;
  v6 = sub_1ABAD219C(&qword_1EB4D4C48, &unk_1ABF47890);
  v7 = sub_1ABA7AB80(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA7C068();
  v118 = v10;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABA88E50();
  v144 = v12;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v13);
  v141 = (&v110 - v14);
  v15 = sub_1ABAD219C(&qword_1EB4D4C50, &unk_1ABF479B0);
  v16 = sub_1ABA7AB80(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1ABA7C068();
  v117 = v19;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v20);
  sub_1ABA88E50();
  v147 = v21;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v110 - v23;
  v143 = sub_1ABF23744();
  v25 = sub_1ABA7BB64(v143);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v25);
  sub_1ABA7C068();
  v142 = v30;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v110 - v32;
  v34 = sub_1ABF237F4();
  v35 = sub_1ABA7BB64(v34);
  v37 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v35);
  sub_1ABA7BC58();
  v42 = (v41 - v40);
  v140 = sub_1ABF23774();
  v43 = sub_1ABA7BB64(v140);
  v45 = v44;
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v43);
  sub_1ABA7BC58();
  v50 = v49 - v48;
  v138 = type metadata accessor for LogSignpost();
  v51 = sub_1ABA7BBB0(v138);
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v51);
  sub_1ABA7BC58();
  v139 = (v55 - v54);
  memcpy(v161, v137, 0x7BuLL);
  memcpy(v162, v145, 0x8DuLL);
  if (qword_1ED871F20 != -1)
  {
    goto LABEL_47;
  }

  while (1)
  {
    v56 = sub_1ABA7AA24(v34, qword_1ED871EF8);
    (*(v37 + 16))(v42, v56, v34);
    sub_1ABF23754();
    sub_1ABF23764();
    sub_1ABF23714();
    v57 = sub_1ABF23764();
    v58 = sub_1ABF24714();
    v59 = sub_1ABF247D4();
    v145 = v24;
    if (v59)
    {
      sub_1ABA8179C();
      v60 = swift_slowAlloc();
      *v60 = 0;
      v61 = sub_1ABF23724();
      _os_signpost_emit_with_name_impl(&dword_1ABA78000, v57, v58, v61, "ECR.Manager.init", "", v60, 2u);
      v24 = v145;
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0](v62, v63, v64, v65, v66, v67, v68);
    }

    v69 = v143;
    (v27[2])(v142, v33, v143);
    v70 = sub_1ABF237B4();
    v71 = *(v70 + 48);
    v72 = *(v70 + 52);
    swift_allocObject();
    sub_1ABF237A4();
    (v27[1])(v33, v69);
    sub_1ABA97F80("ECR.Manager.init");
    (*(v45 + 4))(v73 + *(v138 + 24), v50);
    v74 = v146;
    sub_1ABBD8BA4();
    v33 = v74;
    if (v74)
    {

      v132 = 0;
      v133 = 0;
      v134 = 0;
      v135 = 0;
      v136 = 0;
      v75 = 0;
      v27 = 0;
      v33 = 0;
    }

    else
    {
      v132 = v151[0];
      v133 = v151[1];
      v134 = v151[2];
      v135 = v151[3];
      v75 = v151[5];
      v136 = v151[4];
      v27 = v151[6];
    }

    v42 = v141;
    v50 = v162[15];
    v76 = BYTE2(v162[17]);
    if (BYTE1(v162[17]) == 1)
    {
      sub_1ABAA4D9C();
      sub_1ABBD8BDC(v77);
      v33 = v74;
      if (v74)
      {

        sub_1ABAA52A0();
        v33 = 0;
      }

      else
      {
        v78 = v153;
        v79 = v154;
        v80 = v155;
        v81 = v156;
        v82 = v157;
        v83 = v158;
        v84 = v159;
      }
    }

    else
    {
      sub_1ABAA52A0();
    }

    v115 = v79;
    v116 = v78;
    v160[0] = v78;
    v160[1] = v79;
    v113 = v81;
    v114 = v80;
    v160[2] = v80;
    v160[3] = v81;
    v111 = v83;
    v112 = v82;
    v160[4] = v82;
    v160[5] = v83;
    v110 = v84;
    v160[6] = v84;
    if (v76)
    {
      sub_1ABBD8C5C(v151);
      v129 = v151[0];
      v130 = v151[1];
      v131 = v151[2];
      v85 = *(v163 + 16);
      os_unfair_lock_lock((v85 + 24));
      v74 = 0;
      sub_1ABBD89DC((v85 + 16), v151);
      v33 = 0;
      os_unfair_lock_unlock((v85 + 24));
      v128 = v151[0];
    }

    else
    {
      v128 = 0;
      v129 = 0;
      v130 = 0;
      v131 = 0;
    }

    memcpy(v151, v161, 0x7BuLL);
    v34 = v151;
    sub_1ABBBAAB4();
    v37 = v144;
    v137 = v75;
    v138 = v27;
    if (v86)
    {
      sub_1ABAB5CBC();
    }

    else
    {
      sub_1ABAA4D9C();
      sub_1ABBD8CBC();
      v33 = v74;
      if (v74)
      {

        sub_1ABAB5CBC();
        v33 = 0;
      }

      else
      {
        v121 = v151[0];
        v122 = v151[2];
        v123 = v151[1];
        v124 = v151[3];
        v127 = v151[5];
        v125 = v151[4];
        v126 = v151[6];
      }
    }

    type metadata accessor for EntityAliasView();
    sub_1ABA7ED8C();
    v143 = v87;
    sub_1ABA7B9B4(v88, v89, v90, v87);
    type metadata accessor for LemmatizedSubgraphView();
    sub_1ABA7ED8C();
    v140 = v91;
    sub_1ABA7B9B4(v92, v93, v94, v91);
    v45 = *(v50 + 16);
    if (!v45)
    {
      break;
    }

    v146 = 0;
    v24 = 0;
    v142 = v50;
    while (v24 < *(v50 + 16))
    {
      v95 = v24[v50 + 32];
      if (v95 >> 6)
      {
        if (v95 >> 6 == 1)
        {
          v151[3] = &type metadata for Features.FeatureFlag;
          v151[4] = sub_1ABA8488C();
          LOBYTE(v151[0]) = 25;
          v34 = sub_1ABF220A4();
          sub_1ABA84B54(v151);
          if (v34)
          {
            sub_1ABAA4D9C();
            sub_1ABBD8E54();
            v33 = v74;
            if (v74)
            {
              goto LABEL_44;
            }

            v34 = v141;
            v42 = &qword_1EB4D4C48;
            v27 = &unk_1ABF47890;
            sub_1ABAB480C(v141, &qword_1EB4D4C48, &unk_1ABF47890);
            sub_1ABA7B9B4(v37, 0, 1, v140);
            sub_1ABBD898C(v37, v34, &qword_1EB4D4C48, &unk_1ABF47890);
          }
        }

        else if (v95 != 128)
        {
          if (v95 == 129)
          {
            sub_1ABAA4D9C();
            v96 = sub_1ABBD8DC0();
          }

          else
          {
            sub_1ABAA4D9C();
            v96 = sub_1ABBD8D2C();
          }

          v33 = v74;
          if (v74)
          {
LABEL_44:

            sub_1ABBC3C00(v161);
            sub_1ABBD892C(v116);

            sub_1ABBA954C(v162);
            sub_1ABBD892C(v121);
            sub_1ABBA19EC(v129, v130);
            sub_1ABBD892C(v132);
            sub_1ABAB480C(v141, &qword_1EB4D4C48, &unk_1ABF47890);
            sub_1ABAB480C(v145, &qword_1EB4D4C50, &unk_1ABF479B0);
            v107 = v139;
            sub_1ABBD8690(v139);

            sub_1ABA7F120();
            sub_1ABBD8B30(v107, v108);
            goto LABEL_45;
          }

          v34 = v96;

          v146 = v34;
        }
      }

      else
      {
        sub_1ABAA4D9C();
        sub_1ABBD8CF4();
        v33 = v74;
        if (v74)
        {

          v33 = 0;
          v34 = 1;
        }

        else
        {
          v34 = 0;
        }

        v27 = &qword_1EB4D4C50;
        sub_1ABAB480C(v145, &qword_1EB4D4C50, &unk_1ABF479B0);
        v42 = v147;
        sub_1ABA7B9B4(v147, v34, 1, v143);
        v97 = sub_1ABA7D0F8();
        sub_1ABBD898C(v97, v98, &qword_1EB4D4C50, &unk_1ABF479B0);
        v37 = v144;
        v50 = v142;
      }

      if (v45 == ++v24)
      {

        v24 = v145;
        v45 = v146;
        v42 = v141;
        goto LABEL_40;
      }
    }

    __break(1u);
LABEL_47:
    sub_1ABA7D608();
  }

LABEL_40:
  sub_1ABAA4D9C();
  sub_1ABBD8E8C();
  v101 = v137;
  v100 = v138;
  if (v74)
  {

    v102 = 0;
  }

  else
  {
    v102 = v99;
  }

  memcpy(v152, v161, 0x7BuLL);
  memcpy(v151, v162, 0x8DuLL);
  v103 = v117;
  sub_1ABBD88DC(v24, v117, &qword_1EB4D4C50, &unk_1ABF479B0);
  v150[0] = v132;
  v150[1] = v133;
  v150[2] = v134;
  v150[3] = v135;
  v150[4] = v136;
  v150[5] = v101;
  v150[6] = v100;
  v149[0] = v129;
  v149[1] = v130;
  v149[2] = v131;
  v148[0] = v121;
  v148[1] = v123;
  v148[2] = v122;
  v148[3] = v124;
  v148[4] = v125;
  v148[5] = v127;
  v148[6] = v126;
  v104 = v118;
  sub_1ABBD88DC(v42, v118, &qword_1EB4D4C48, &unk_1ABF47890);
  LOBYTE(v109) = BYTE4(v119) & 1;
  sub_1ABBD6180(v152, v151, v103, v150, v160, v149, v128, v45, v148, v104, v102, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120);
  sub_1ABAB480C(v42, &qword_1EB4D4C48, &unk_1ABF47890);
  sub_1ABAB480C(v24, &qword_1EB4D4C50, &unk_1ABF479B0);
  v105 = v139;
  sub_1ABBD8690(v139);

  sub_1ABA7F120();
  sub_1ABBD8B30(v105, v106);
LABEL_45:
  sub_1ABA7BC90();
}

uint64_t sub_1ABBD8690(unint64_t *a1)
{
  v3 = sub_1ABF23784();
  v4 = sub_1ABA7BB64(v3);
  v28 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7BC58();
  sub_1ABA8BFC4();
  v8 = sub_1ABF23744();
  v9 = sub_1ABA7BB64(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7BC58();
  v16 = v15 - v14;
  v17 = type metadata accessor for LogSignpost();
  v18 = *a1;
  v19 = *(a1 + 16);
  v20 = a1[3];
  v21 = a1 + *(v17 + 24);
  v22 = sub_1ABF23764();
  sub_1ABF23794();
  v27 = sub_1ABF24704();
  result = sub_1ABF247D4();
  if ((result & 1) == 0)
  {
LABEL_11:

    return (*(v11 + 8))(v16, v8);
  }

  if ((v19 & 1) == 0)
  {
    if (v18)
    {
LABEL_8:

      sub_1ABF237C4();

      v24 = sub_1ABAB10B4();
      if (v25(v24) != *MEMORY[0x1E69E93E8])
      {
        (*(v28 + 8))(v1, v3);
      }

      sub_1ABA8179C();
      *swift_slowAlloc() = 0;
      v26 = sub_1ABF23724();
      sub_1ABAA3080(&dword_1ABA78000, v26, v27);
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
      goto LABEL_11;
    }

    __break(1u);
  }

  if (HIDWORD(v18))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if ((v18 & 0xFFFFF800) != 0xD800)
  {
    if (v18 >> 16 <= 0x10)
    {
      goto LABEL_8;
    }

    goto LABEL_13;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_1ABBD88DC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1ABA7BCC0(a1, a2, a3, a4);
  sub_1ABA7BBB0(v6);
  (*(v7 + 16))(v4, v5);
  return v4;
}

uint64_t sub_1ABBD892C(uint64_t result)
{
  if (result)
  {
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1ABBD898C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1ABA7BCC0(a1, a2, a3, a4);
  sub_1ABA7BBB0(v6);
  (*(v7 + 32))(v4, v5);
  return v4;
}

unint64_t sub_1ABBD89F8()
{
  result = qword_1EB4D4C58;
  if (!qword_1EB4D4C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4C58);
  }

  return result;
}

uint64_t sub_1ABBD8A4C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    swift_unknownObjectRetain();

    return swift_unknownObjectRetain();
  }

  return result;
}

unint64_t sub_1ABBD8A8C()
{
  result = qword_1ED8717F0;
  if (!qword_1ED8717F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8717F0);
  }

  return result;
}

uint64_t sub_1ABBD8AE0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {

    swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_1ABBD8B30(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1ABA7BBB0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void sub_1ABBD8BA4()
{
  sub_1ABA809C8();
  v0 = sub_1ABA7C07C();
  sub_1ABBDAB40(v0, v1, v2, v3, v4);
  sub_1ABA7E5D0();
}

__n128 sub_1ABBD8BDC@<Q0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 16);
  os_unfair_lock_lock(v4 + 6);
  sub_1ABBDA114(&v4[4], v9);
  os_unfair_lock_unlock(v4 + 6);
  if (!v2)
  {
    v6 = v9[1];
    v7 = v12;
    result = v11;
    v8 = v10;
    *a1 = v9[0];
    *(a1 + 8) = v6;
    *(a1 + 16) = v8;
    *(a1 + 32) = result;
    *(a1 + 48) = v7;
  }

  return result;
}

void sub_1ABBD8C5C(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock((v3 + 24));
  sub_1ABBDA964((v3 + 16), a1);

  os_unfair_lock_unlock((v3 + 24));
}

void sub_1ABBD8CBC()
{
  sub_1ABA809C8();
  v0 = sub_1ABA7C07C();
  sub_1ABBDAB24(v0, v1, v2, v3, v4);
  sub_1ABA7E5D0();
}

void sub_1ABBD8CF4()
{
  sub_1ABA809C8();
  v0 = sub_1ABA7C07C();
  sub_1ABBDA980(v0);
  sub_1ABA7E5D0();
}

uint64_t sub_1ABBD8D2C()
{
  sub_1ABBD8BA4();
  if (!v1)
  {
    sub_1ABA7F138();
    MEMORY[0x1EEE9AC00](v3);
    sub_1ABA933F0();
    sub_1ABBDABBC((v2 + 16), v5);
    sub_1ABA7E5D0();
    v0 = v5[0];
    sub_1ABBDAC04(v6);
  }

  return v0;
}

uint64_t sub_1ABBD8DC0()
{
  sub_1ABBD8CBC();
  if (!v1)
  {
    sub_1ABA7F138();
    MEMORY[0x1EEE9AC00](v3);
    sub_1ABA933F0();
    sub_1ABBDAC58((v2 + 16), v5);
    sub_1ABA7E5D0();
    v0 = v5[0];
    sub_1ABBDACA0(v6);
  }

  return v0;
}

void sub_1ABBD8E54()
{
  sub_1ABA809C8();
  v0 = sub_1ABA7C07C();
  sub_1ABBDA99C(v0, v1);
  sub_1ABA7E5D0();
}

void sub_1ABBD8E8C()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  sub_1ABBDAB08((v1 + 16), &v2);
  os_unfair_lock_unlock((v1 + 24));
}

uint64_t *sub_1ABBD8EEC()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  sub_1ABBD892C(v0[2]);
  v7 = v0[10];
  v8 = v0[11];
  v9 = v0[12];
  v10 = v0[13];
  v11 = v0[14];
  v12 = v0[15];
  sub_1ABBD892C(v0[9]);
  v13 = v0[17];
  v14 = v0[18];
  v15 = v0[19];
  v16 = v0[20];
  v17 = v0[21];
  v18 = v0[22];
  sub_1ABBD892C(v0[16]);
  sub_1ABA925A4(v0 + OBJC_IVAR____TtCC20IntelligencePlatform27EntityResolutionServicePool11GuardedData_entityAliasView, &qword_1EB4D4C50, &unk_1ABF479B0);
  v19 = *(v0 + OBJC_IVAR____TtCC20IntelligencePlatform27EntityResolutionServicePool11GuardedData_inferenceFeatureView + 16);
  sub_1ABBA19EC(*(v0 + OBJC_IVAR____TtCC20IntelligencePlatform27EntityResolutionServicePool11GuardedData_inferenceFeatureView), *(v0 + OBJC_IVAR____TtCC20IntelligencePlatform27EntityResolutionServicePool11GuardedData_inferenceFeatureView + 8));
  v20 = *(v0 + OBJC_IVAR____TtCC20IntelligencePlatform27EntityResolutionServicePool11GuardedData_rankingService);

  v21 = *(v0 + OBJC_IVAR____TtCC20IntelligencePlatform27EntityResolutionServicePool11GuardedData_visualIdentifierView);
  swift_unknownObjectRelease();

  sub_1ABA925A4(v0 + OBJC_IVAR____TtCC20IntelligencePlatform27EntityResolutionServicePool11GuardedData_lemmatizedSubgraphView, &qword_1EB4D4C48, &unk_1ABF47890);
  return v0;
}

uint64_t sub_1ABBD8FD8()
{
  sub_1ABBD8EEC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1ABBD9030()
{
  bzero((v0 + 16), 0xA8uLL);
  v1 = type metadata accessor for EntityAliasView();
  sub_1ABA94940(v1);
  v2 = (v0 + OBJC_IVAR____TtCC20IntelligencePlatform27EntityResolutionServicePool11GuardedData_inferenceFeatureView);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = 0;
  *(v0 + OBJC_IVAR____TtCC20IntelligencePlatform27EntityResolutionServicePool11GuardedData_rankingService) = 0;
  *(v0 + OBJC_IVAR____TtCC20IntelligencePlatform27EntityResolutionServicePool11GuardedData_visualIdentifierView) = 0;
  *(v0 + OBJC_IVAR____TtCC20IntelligencePlatform27EntityResolutionServicePool11GuardedData_peopleKnosisServer) = 0;
  *(v0 + OBJC_IVAR____TtCC20IntelligencePlatform27EntityResolutionServicePool11GuardedData_entityKnosisServer) = 0;
  v3 = type metadata accessor for LemmatizedSubgraphView();
  sub_1ABA94940(v3);
  return v0;
}

uint64_t sub_1ABBD90C8(uint64_t a1)
{
  v2 = v1;
  *(v1 + 24) = a1;
  v3 = type metadata accessor for EntityResolutionServicePool.GuardedData();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  v6 = swift_allocObject();
  sub_1ABBD9030();
  sub_1ABAD219C(&qword_1EB4D4C78, &qword_1ABF479C0);
  v7 = swift_allocObject();
  *(v7 + 24) = 0;
  *(v7 + 16) = v6;
  *(v2 + 16) = v7;
  return v2;
}

uint64_t sub_1ABBD9138()
{
  sub_1ABBD92CC();
  v1 = *(v0 + 16);

  return v0;
}

void sub_1ABBD92CC()
{
  v2 = *(v0 + 16);
  os_unfair_lock_lock((v2 + 24));
  sub_1ABBD9834((v2 + 16));
  os_unfair_lock_unlock((v2 + 24));
  if (v1)
  {
    __break(1u);
  }
}

uint64_t sub_1ABBD9324()
{
  sub_1ABBD9138();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EntityResolutionServicePool.GuardedData()
{
  result = qword_1ED8718F0;
  if (!qword_1ED8718F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1ABBD93D0()
{
  sub_1ABBD94F8(319, &unk_1ED871C58, type metadata accessor for EntityAliasView);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1ABBD94F8(319, qword_1ED871158, type metadata accessor for LemmatizedSubgraphView);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1ABBD94F8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1ABF247E4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1ABBD954C(uint64_t a1)
{
  v4 = type metadata accessor for LemmatizedSubgraphView();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1ABAD219C(&qword_1EB4D4C50, &unk_1ABF479B0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v22 - v10;
  v12 = *(a1 + 120);
  v13 = *(a1 + 137);
  v14 = *(a1 + 138);
  sub_1ABBD8E8C();
  if (v2)
  {

    if (!v13)
    {
LABEL_6:
      if (!v14)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else
  {
    swift_unknownObjectRelease();
    if (!v13)
    {
      goto LABEL_6;
    }
  }

  sub_1ABBD8BDC(&v23);
  swift_unknownObjectRelease();
  v27 = v24;
  sub_1ABAFEEA0(&v27);
  swift_unknownObjectRelease();
  v26 = v25;
  sub_1ABAFEEA0(&v26);
  if (v14)
  {
LABEL_7:
    sub_1ABBD8C5C(v22);
    sub_1ABBA19EC(v22[0], v22[1]);
    v15 = *(v1 + 16);
    os_unfair_lock_lock((v15 + 24));
    sub_1ABBD89DC((v15 + 16), v22);
    os_unfair_lock_unlock((v15 + 24));
  }

LABEL_8:
  v16 = *(v12 + 16);
  if (v16)
  {
    v17 = 0;
    while (v17 < *(v12 + 16))
    {
      v18 = *(&v17[8]._os_unfair_lock_opaque + v12);
      if (v18 >> 6)
      {
        if (v18 >> 6 == 1)
        {
          v22[3] = &type metadata for Features.FeatureFlag;
          v22[4] = sub_1ABA8488C();
          LOBYTE(v22[0]) = 25;
          v19 = sub_1ABF220A4();
          sub_1ABA84B54(v22);
          if (v19)
          {
            sub_1ABBD8E54();
            sub_1ABBDACF4(v7);
          }
        }

        else if (v18 != 128)
        {
          if (v18 == 129)
          {
            v20 = sub_1ABBD8DC0();
          }

          else
          {
            v20 = sub_1ABBD8D2C();
          }
        }
      }

      else
      {
        sub_1ABBD8CF4();
        v21 = type metadata accessor for EntityAliasView();
        sub_1ABA7B9B4(v11, 0, 1, v21);
        sub_1ABA925A4(v11, &qword_1EB4D4C50, &unk_1ABF479B0);
      }

      v17 = (v17 + 1);
      if (v16 == v17)
      {
        return;
      }
    }

    __break(1u);
    os_unfair_lock_unlock(v17 + 6);
    __break(1u);
  }
}

uint64_t sub_1ABBD9834(void *a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4D4C50, &unk_1ABF479B0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v38 - v4;
  v6 = *a1;
  v7 = type metadata accessor for EntityAliasView();
  sub_1ABA7B9B4(v5, 1, 1, v7);
  swift_beginAccess();
  sub_1ABBDAA60();
  swift_endAccess();
  v8 = v6[16];
  v9 = v6[17];
  v10 = v6[18];
  v11 = v6[19];
  v12 = v6[20];
  v13 = v6[21];
  v14 = v6[22];
  *(v6 + 8) = 0u;
  *(v6 + 9) = 0u;
  *(v6 + 10) = 0u;
  v6[22] = 0;
  sub_1ABBD892C(v8);
  v15 = v6[2];
  v16 = v6[3];
  v17 = v6[4];
  v18 = v6[5];
  v19 = v6[6];
  v20 = v6[7];
  v21 = v6[8];
  *(v6 + 1) = 0u;
  *(v6 + 2) = 0u;
  *(v6 + 3) = 0u;
  v6[8] = 0;
  sub_1ABBD892C(v15);
  v22 = (v6 + OBJC_IVAR____TtCC20IntelligencePlatform27EntityResolutionServicePool11GuardedData_inferenceFeatureView);
  v23 = *(v6 + OBJC_IVAR____TtCC20IntelligencePlatform27EntityResolutionServicePool11GuardedData_inferenceFeatureView);
  v24 = *(v6 + OBJC_IVAR____TtCC20IntelligencePlatform27EntityResolutionServicePool11GuardedData_inferenceFeatureView + 8);
  v25 = *(v6 + OBJC_IVAR____TtCC20IntelligencePlatform27EntityResolutionServicePool11GuardedData_inferenceFeatureView + 16);
  v22[1] = 0;
  v22[2] = 0;
  *v22 = 0;
  sub_1ABBA19EC(v23, v24);
  v26 = v6[9];
  v27 = v6[10];
  v28 = v6[11];
  v29 = v6[12];
  v30 = v6[13];
  v31 = v6[14];
  v32 = v6[15];
  *(v6 + 9) = 0u;
  *(v6 + 11) = 0u;
  *(v6 + 13) = 0u;
  v6[15] = 0;
  sub_1ABBD892C(v26);
  v33 = *(v6 + OBJC_IVAR____TtCC20IntelligencePlatform27EntityResolutionServicePool11GuardedData_rankingService);
  *(v6 + OBJC_IVAR____TtCC20IntelligencePlatform27EntityResolutionServicePool11GuardedData_rankingService) = 0;

  v34 = *(v6 + OBJC_IVAR____TtCC20IntelligencePlatform27EntityResolutionServicePool11GuardedData_peopleKnosisServer);
  *(v6 + OBJC_IVAR____TtCC20IntelligencePlatform27EntityResolutionServicePool11GuardedData_peopleKnosisServer) = 0;

  v35 = *(v6 + OBJC_IVAR____TtCC20IntelligencePlatform27EntityResolutionServicePool11GuardedData_entityKnosisServer);
  *(v6 + OBJC_IVAR____TtCC20IntelligencePlatform27EntityResolutionServicePool11GuardedData_entityKnosisServer) = 0;

  v36 = *(v6 + OBJC_IVAR____TtCC20IntelligencePlatform27EntityResolutionServicePool11GuardedData_visualIdentifierView);
  *(v6 + OBJC_IVAR____TtCC20IntelligencePlatform27EntityResolutionServicePool11GuardedData_visualIdentifierView) = 0;
  return swift_unknownObjectRelease();
}

uint64_t sub_1ABBD9A00(uint64_t *a1, uint64_t a2)
{
  v22 = a2;
  v4 = sub_1ABAD219C(&qword_1EB4D4C50, &unk_1ABF479B0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v21 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v20 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v20 - v11;
  v13 = *a1;
  swift_beginAccess();
  sub_1ABBDA9B8();
  v14 = type metadata accessor for EntityAliasView();
  if (sub_1ABA7E1E0(v12, 1, v14) != 1)
  {
    return sub_1ABBDAAB4();
  }

  v15 = sub_1ABA925A4(v12, &qword_1EB4D4C50, &unk_1ABF479B0);
  v16 = *(v22 + 24);
  result = ViewService.entityAliasView.getter(v15);
  if (!v2)
  {
    if (sub_1ABA7E1E0(v10, 1, v14) == 1)
    {
      sub_1ABA925A4(v10, &qword_1EB4D4C50, &unk_1ABF479B0);
      sub_1ABB32C5C();
      swift_allocError();
      *v18 = xmmword_1ABF478C0;
      *(v18 + 16) = 5;
      return swift_willThrow();
    }

    else
    {
      sub_1ABBDAAB4();
      v19 = v21;
      sub_1ABBDAA0C();
      sub_1ABA7B9B4(v19, 0, 1, v14);
      swift_beginAccess();
      sub_1ABBDAA60();
      return swift_endAccess();
    }
  }

  return result;
}

void sub_1ABBD9C9C(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = OBJC_IVAR____TtCC20IntelligencePlatform27EntityResolutionServicePool11GuardedData_visualIdentifierView;
  v6 = *(*a1 + OBJC_IVAR____TtCC20IntelligencePlatform27EntityResolutionServicePool11GuardedData_visualIdentifierView);
  if (v6)
  {
    v7 = v6;
LABEL_3:
    *a3 = v7;
    swift_unknownObjectRetain();
    return;
  }

  v8 = *(a2 + 24);
  ViewService.visualIdentifierView()(&unk_1ED87C000);
  if (!v10)
  {
    v7 = v9;
    v11 = *(v4 + v5);
    *(v4 + v5) = v9;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    goto LABEL_3;
  }
}

uint64_t sub_1ABBD9D2C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19[1] = a3;
  v5 = type metadata accessor for LemmatizedSubgraphView();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v7 = sub_1ABAD219C(&qword_1EB4D4C48, &unk_1ABF47890);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v19 - v12;
  v14 = *a1;
  swift_beginAccess();
  sub_1ABBDA9B8();
  if (sub_1ABA7E1E0(v13, 1, v5) == 1)
  {
    v15 = sub_1ABA925A4(v13, &qword_1EB4D4C48, &unk_1ABF47890);
    v16 = *(a2 + 24);
    v17 = v19[9];
    result = ViewService.lemmatizedSubgraphView.getter(v15);
    if (v17)
    {
      return result;
    }

    sub_1ABBDAA0C();
    sub_1ABA7B9B4(v11, 0, 1, v5);
    swift_beginAccess();
    sub_1ABBDAA60();
    swift_endAccess();
  }

  return sub_1ABBDAAB4();
}

void sub_1ABBD9F5C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v7 = *a1 + 16;
  v6 = *v7;
  v9 = *(*a1 + 24);
  v8 = *(*a1 + 32);
  v10 = *(*a1 + 40);
  v11 = *(*a1 + 48);
  v12 = *(*a1 + 56);
  v13 = *(*a1 + 64);
  if (*v7)
  {
    *a3 = v6;
    a3[1] = v9;
    a3[2] = v8;
    a3[3] = v10;
    a3[4] = v11;
    a3[5] = v12;
    a3[6] = v13;
LABEL_3:
    sub_1ABBDAB5C(v6);
    return;
  }

  v27 = *(*a1 + 40);
  v28 = *(*a1 + 32);
  v34 = *(*a1 + 24);
  v14 = *(a2 + 24);
  sub_1ABB68E60();
  if (!v3)
  {
    v15 = *v30;
    if (*v30)
    {
      v32 = *&v31[8];
      v33 = *&v30[8];
      v25 = v5[3];
      v26 = v5[2];
      v23 = v5[5];
      v24 = v5[4];
      v21 = v5[7];
      v22 = v5[6];
      v19 = *&v30[24];
      v20 = v5[8];
      v16 = *v31;
      v17 = *v30;
      *(v7 + 16) = *&v30[16];
      *(v7 + 32) = v16;
      *v7 = v17;
      *(v7 + 48) = *&v31[16];
      swift_unknownObjectRetain();
      sub_1ABB3E558(&v33, v29);
      swift_unknownObjectRetain();
      sub_1ABB3E558(&v32, v29);
      sub_1ABBD892C(v26);
      *a3 = v15;
      *(a3 + 1) = *&v30[8];
      a3[3] = v19;
      *(a3 + 2) = *v31;
      a3[6] = *&v31[16];
      goto LABEL_3;
    }

    sub_1ABB32C5C();
    swift_allocError();
    *v18 = xmmword_1ABF478D0;
    *(v18 + 16) = 5;
    swift_willThrow();
  }
}

void sub_1ABBDA130(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, void *a6@<X8>)
{
  v8 = *a1;
  v10 = *(*a1 + 72);
  v9 = *(*a1 + 80);
  v11 = *(*a1 + 112);
  v12 = *(*a1 + 120);
  if (v10)
  {
    v13 = *(*a1 + 72);
    v14 = *(*a1 + 80);
    v15 = *(*a1 + 88);
    v16 = *(*a1 + 96);
    v17 = *(*a1 + 104);
    v18 = *(*a1 + 112);
    v19 = *(*a1 + 120);
LABEL_3:
    *a6 = v13;
    a6[1] = v14;
    a6[2] = v15;
    a6[3] = v16;
    a6[4] = v17;
    a6[5] = v18;
    a6[6] = v19;
    sub_1ABBDAB5C(v10);
    return;
  }

  v20 = *(a2 + 24);
  ViewService.peopleSubgraphView.getter(a1, a2, *(*a1 + 88), *(*a1 + 96), *(*a1 + 104), a3, a4, a5, v23, v24, v25, v26, v27, v29, v31, v33, v35, v37, *(*a1 + 104), *(*a1 + 96), *(*a1 + 88), v39);
  if (!v6)
  {
    v13 = v40;
    if (v40)
    {
      v16 = v43;
      v15 = v42;
      v21 = v8[9];
      v36 = v8[11];
      v38 = v8[10];
      v32 = v8[13];
      v34 = v8[12];
      v30 = v8[14];
      v28 = v8[15];
      v8[9] = v40;
      v8[10] = v41;
      v8[11] = v42;
      v8[12] = v43;
      v8[13] = v44;
      v8[14] = v45;
      v8[15] = v46;
      v19 = v46;
      swift_unknownObjectRetain();

      swift_unknownObjectRetain();

      sub_1ABBD892C(v21);
      v17 = v44;
      v14 = v41;
      v18 = v45;
      goto LABEL_3;
    }

    sub_1ABB32C5C();
    swift_allocError();
    *v22 = xmmword_1ABF478E0;
    *(v22 + 16) = 5;
    swift_willThrow();
  }
}

void sub_1ABBDA2D8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, void *a6@<X8>)
{
  v8 = *a1;
  v10 = *(*a1 + 128);
  v9 = *(*a1 + 136);
  v11 = *(*a1 + 168);
  v12 = *(*a1 + 176);
  if (v10)
  {
    v13 = *(*a1 + 128);
    v14 = *(*a1 + 136);
    v15 = *(*a1 + 144);
    v16 = *(*a1 + 152);
    v17 = *(*a1 + 160);
    v18 = *(*a1 + 168);
    v19 = *(*a1 + 176);
LABEL_3:
    *a6 = v13;
    a6[1] = v14;
    a6[2] = v15;
    a6[3] = v16;
    a6[4] = v17;
    a6[5] = v18;
    a6[6] = v19;
    sub_1ABBDAB5C(v10);
    return;
  }

  v20 = *(a2 + 24);
  ViewService.entitySubgraphView.getter(a1, a2, *(*a1 + 144), *(*a1 + 152), *(*a1 + 160), a3, a4, a5, v23, v24, v25, v26, v27, v29, v31, v33, v35, v37, *(*a1 + 160), *(*a1 + 152), *(*a1 + 144), v39);
  if (!v6)
  {
    v13 = v40;
    if (v40)
    {
      v16 = v43;
      v15 = v42;
      v21 = v8[16];
      v36 = v8[18];
      v38 = v8[17];
      v32 = v8[20];
      v34 = v8[19];
      v30 = v8[21];
      v28 = v8[22];
      v8[16] = v40;
      v8[17] = v41;
      v8[18] = v42;
      v8[19] = v43;
      v8[20] = v44;
      v8[21] = v45;
      v8[22] = v46;
      v19 = v46;
      swift_unknownObjectRetain();

      swift_unknownObjectRetain();

      sub_1ABBD892C(v21);
      v17 = v44;
      v14 = v41;
      v18 = v45;
      goto LABEL_3;
    }

    sub_1ABB32C5C();
    swift_allocError();
    *v22 = xmmword_1ABF478F0;
    *(v22 + 16) = 5;
    swift_willThrow();
  }
}

uint64_t sub_1ABBDA480@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = (*a1 + OBJC_IVAR____TtCC20IntelligencePlatform27EntityResolutionServicePool11GuardedData_inferenceFeatureView);
  v7 = *v5;
  v6 = v5[1];
  v8 = v5[2];
  if (v6)
  {
    *a3 = v7;
    a3[1] = v6;
    a3[2] = v8;
  }

  else
  {
    v9 = *(a2 + 24);
    ViewService.inferenceFeatureView.getter(v25);
    if (v3)
    {
      if (qword_1ED871B18 != -1)
      {
        swift_once();
      }

      v10 = sub_1ABF237F4();
      sub_1ABA7AA24(v10, qword_1ED871B20);
      v11 = v3;
      v12 = sub_1ABF237D4();
      v13 = sub_1ABF24664();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        *v14 = 138412290;
        v16 = v3;
        v17 = _swift_stdlib_bridgeErrorToNSError();
        *(v14 + 4) = v17;
        *v15 = v17;
        _os_log_impl(&dword_1ABA78000, v12, v13, "Failed to fetch inferenceFeatureView with error: %@", v14, 0xCu);
        sub_1ABA925A4(v15, &unk_1EB4D57F0, &qword_1ABF390C0);
        MEMORY[0x1AC5AB8B0](v15, -1, -1);
        MEMORY[0x1AC5AB8B0](v14, -1, -1);
      }

      else
      {
      }

      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
    }

    else
    {
      v18 = v25[0];
      v19 = v25[1];
      v20 = v25[2];
      v21 = v5[1];
      v26 = *v5;
      v23 = v5[2];
      v24 = v21;
      *v5 = v25[0];
      v5[1] = v19;
      v5[2] = v20;
      sub_1ABBD8A4C(v18, v19);
      sub_1ABBA19EC(v26, v24);
      *a3 = v18;
      a3[1] = v19;
      a3[2] = v20;
    }
  }

  return sub_1ABBD8A4C(v7, v6);
}

uint64_t sub_1ABBDA6A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v6 = OBJC_IVAR____TtCC20IntelligencePlatform27EntityResolutionServicePool11GuardedData_rankingService;
  if (*(*a1 + OBJC_IVAR____TtCC20IntelligencePlatform27EntityResolutionServicePool11GuardedData_rankingService))
  {
    v7 = *(*a1 + OBJC_IVAR____TtCC20IntelligencePlatform27EntityResolutionServicePool11GuardedData_rankingService);
  }

  else
  {
    v20 = 1;
    v8 = *(a2 + 24);
    type metadata accessor for EntityResolutionRankingService();
    swift_allocObject();
    v9 = EntityResolutionRankingService.init(config:viewService:)(&v20, v8);
    if (v3)
    {
      if (qword_1ED871B18 != -1)
      {
        sub_1ABA7D4EC();
        swift_once();
      }

      v10 = sub_1ABF237F4();
      sub_1ABA7AA24(v10, qword_1ED871B20);
      v11 = v3;
      v12 = sub_1ABF237D4();
      v13 = sub_1ABF24664();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        *v14 = 138412290;
        v16 = v3;
        v17 = _swift_stdlib_bridgeErrorToNSError();
        *(v14 + 4) = v17;
        *v15 = v17;
        _os_log_impl(&dword_1ABA78000, v12, v13, "Failed to fetch Entity Resolution Ranking Service with error: %@", v14, 0xCu);
        sub_1ABA925A4(v15, &unk_1EB4D57F0, &qword_1ABF390C0);
        sub_1ABA7BDD8();
        MEMORY[0x1AC5AB8B0]();
        sub_1ABA7BDD8();
        MEMORY[0x1AC5AB8B0]();
      }

      else
      {
      }

      v7 = 0;
    }

    else
    {
      v7 = v9;
      v18 = *(v5 + v6);
      *(v5 + v6) = v9;
    }
  }

  *a3 = v7;
}

id sub_1ABBDA894@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void *)@<X4>, void *a6@<X8>)
{
  v8 = *a1;
  v9 = *a3;
  v10 = *(*a1 + *a3);
  if (v10)
  {
    v11 = *(*a1 + *a3);
LABEL_3:
    *a6 = v11;
    return v10;
  }

  v14 = *a2;
  v16[0] = a4;
  v16[1] = 0xEF68706172676275;
  v16[2] = v14;
  v17 = *(a2 + 3);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  result = a5(v16);
  if (!v6)
  {
    v15 = *(v8 + v9);
    *(v8 + v9) = result;
    v11 = result;

    v10 = 0;
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_1ABBDA9B8()
{
  sub_1ABA81488();
  v3 = sub_1ABAD219C(v1, v2);
  sub_1ABA8F2B0(v3);
  v5 = *(v4 + 16);
  v6 = sub_1ABA7D000();
  v7(v6);
  return v0;
}

uint64_t sub_1ABBDAA0C()
{
  sub_1ABA81488();
  v2 = v1(0);
  sub_1ABA8F2B0(v2);
  v4 = *(v3 + 16);
  v5 = sub_1ABA7D000();
  v6(v5);
  return v0;
}

uint64_t sub_1ABBDAA60()
{
  sub_1ABA81488();
  v3 = sub_1ABAD219C(v1, v2);
  sub_1ABA8F2B0(v3);
  v5 = *(v4 + 40);
  v6 = sub_1ABA7D000();
  v7(v6);
  return v0;
}

uint64_t sub_1ABBDAAB4()
{
  sub_1ABA81488();
  v2 = v1(0);
  sub_1ABA8F2B0(v2);
  v4 = *(v3 + 32);
  v5 = sub_1ABA7D000();
  v6(v5);
  return v0;
}

uint64_t sub_1ABBDAB5C(uint64_t result)
{
  if (result)
  {
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_1ABBDACF4(uint64_t a1)
{
  v2 = type metadata accessor for LemmatizedSubgraphView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1ABBDAD50(uint64_t a1, uint64_t a2)
{
  v12 = a2;
  v16 = sub_1ABAAB7C8(a1);
  v4 = 0;
  v15 = a1 & 0xC000000000000001;
  v14 = a1;
  v13 = a1 & 0xFFFFFFFFFFFFFF8;
  while (v16 != v4)
  {
    if (v15)
    {
      v5 = MEMORY[0x1AC5AA170](v4, v14);
    }

    else
    {
      if (v4 >= *(v13 + 16))
      {
        goto LABEL_17;
      }

      v5 = *(v14 + 8 * v4 + 32);
    }

    v6 = v5;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
      return;
    }

    v7 = type metadata accessor for ViewService();
    v8 = static ViewService.clientService.getter(v7);
    sub_1ABB68E60();
    if (v2)
    {

      return;
    }

    if (v18)
    {
      v9 = [v6 entityID];
      v10 = [v9 intValue];

      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_18;
      }

      v23 = v6;
      ObjectType = swift_getObjectType();
      MEMORY[0x1EEE9AC00](ObjectType);
      sub_1ABAD219C(&qword_1EB4D4CD8, &qword_1ABF47B28);
      sub_1ABF22464();
      sub_1ABD7E2F8(v17);

      swift_unknownObjectRelease();
      v22 = v19;
      sub_1ABAFEEA0(&v22);
      swift_unknownObjectRelease();
      v21 = v20;
      sub_1ABAFEEA0(&v21);
      v8 = v23;
    }

    else
    {
    }

    ++v4;
  }
}

id EntityResolutionTextClient.__allocating_init(for:viaXPC:)()
{
  sub_1ABBE1988();
  v0 = sub_1ABBE1974();
  return EntityResolutionTextClient.init(for:viaXPC:)(v0, v1);
}

id EntityResolutionTextClient.init(for:viaXPC:)(uint64_t a1, char a2)
{
  v4 = v2;
  if (a2)
  {
    v6 = type metadata accessor for EntityResolutionTextXPCService();
    swift_allocObject();
    v7 = sub_1ABBE3814(a1, 0);
    v8 = &off_1F207C688;
  }

  else
  {
    v6 = type metadata accessor for EntityResolutionTextInProcessService();
    v9 = objc_allocWithZone(v6);
    v10 = sub_1ABA8FFDC();
    v7 = sub_1ABBE19A8(v10, v11);
    if (v3)
    {
      type metadata accessor for EntityResolutionTextClient();
      return sub_1ABA97FA8();
    }

    v8 = &off_1F2079850;
  }

  v15 = v6;
  v16 = v8;
  *&v14 = v7;
  sub_1ABA946C0(&v14, &v4[OBJC_IVAR___GDEntityResolutionTextClientInner_service]);
  *&v4[OBJC_IVAR___GDEntityResolutionTextClientInner_feedbackService] = [objc_allocWithZone(type metadata accessor for FeedbackService()) init];
  v13.receiver = v4;
  v13.super_class = type metadata accessor for EntityResolutionTextClient();
  return objc_msgSendSuper2(&v13, sel_init);
}

id EntityResolutionTextClient.init(for:viaXPC:warmup:)(uint64_t a1, char a2, char a3)
{
  v5 = v3;
  if (a2)
  {
    if ((a3 & 1) == 0)
    {
      a1 = 0;
    }

    v8 = type metadata accessor for EntityResolutionTextXPCService();
    swift_allocObject();
    v9 = sub_1ABBE3814(a1, (a3 & 1) == 0);
    v10 = &off_1F207C688;
  }

  else
  {
    v8 = type metadata accessor for EntityResolutionTextInProcessService();
    v11 = objc_allocWithZone(v8);
    v9 = sub_1ABBE19A8(a1, a3 & 1);
    if (v4)
    {
      type metadata accessor for EntityResolutionTextClient();
      return sub_1ABA97FA8();
    }

    v10 = &off_1F2079850;
  }

  v15 = v8;
  v16 = v10;
  *&v14 = v9;
  sub_1ABA946C0(&v14, &v5[OBJC_IVAR___GDEntityResolutionTextClientInner_service]);
  *&v5[OBJC_IVAR___GDEntityResolutionTextClientInner_feedbackService] = [objc_allocWithZone(type metadata accessor for FeedbackService()) init];
  v13.receiver = v5;
  v13.super_class = type metadata accessor for EntityResolutionTextClient();
  return objc_msgSendSuper2(&v13, sel_init);
}

uint64_t EntityResolutionTextClient.__allocating_init(for:warmup:)()
{
  sub_1ABBE1988();
  v0 = sub_1ABBE1974();
  return EntityResolutionTextClient.init(for:warmup:)(v0, v1);
}

uint64_t EntityResolutionTextClient.init(for:warmup:)(uint64_t a1, char a2)
{
  v5 = objc_allocWithZone(type metadata accessor for EntityResolutionTextClient());
  EntityResolutionTextClient.init(for:viaXPC:warmup:)(a1, 0, a2);
  sub_1ABA96BC4();
  swift_getObjectType();
  sub_1ABA97FA8();
  return v2;
}

uint64_t sub_1ABBDB458()
{
  sub_1ABA7BBF8();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_1ABF23744();
  v1[4] = v3;
  sub_1ABA7BBD0(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = sub_1ABA96BDC();
  v1[7] = swift_task_alloc();
  v7 = sub_1ABF237F4();
  v1[8] = v7;
  sub_1ABA7BBD0(v7);
  v1[9] = v8;
  v10 = *(v9 + 64);
  v1[10] = sub_1ABA7E314();
  v11 = sub_1ABF23774();
  v1[11] = v11;
  sub_1ABA7BBD0(v11);
  v1[12] = v12;
  v14 = *(v13 + 64);
  v1[13] = sub_1ABA7E314();
  v15 = type metadata accessor for LogSignpost();
  sub_1ABA993BC(v15);
  v17 = *(v16 + 64);
  v1[15] = sub_1ABA7E314();
  v18 = sub_1ABA83840();

  return MEMORY[0x1EEE6DFA0](v18);
}

uint64_t sub_1ABBDB5C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1ABA88600();
  sub_1ABA827D0();
  if (qword_1ED871F20 != -1)
  {
    sub_1ABA7D628();
    swift_once();
  }

  sub_1ABAA10D4();
  sub_1ABA7AA24(v14, qword_1ED871EF8);
  v16 = sub_1ABA94978();
  v17(v16);
  sub_1ABA977C0();
  sub_1ABF23764();
  sub_1ABF23714();
  sub_1ABF23764();
  sub_1ABF24714();
  if (sub_1ABAA1514())
  {
    v18 = v15[7];
    sub_1ABA8179C();
    v19 = swift_slowAlloc();
    sub_1ABA96C68(v19);
    sub_1ABF23724();
    sub_1ABA840A8();
    _os_signpost_emit_with_name_impl(v20, v21, v22, v23, v24, v25, v26, v27);
    v28 = sub_1ABA7E368();
    MEMORY[0x1AC5AB8B0](v28);
  }

  sub_1ABAA3C54();
  v29 = sub_1ABA94960();
  v30(v29);
  v31 = sub_1ABF237B4();
  sub_1ABA90758(v31);
  swift_allocObject();
  sub_1ABA8FFDC();
  sub_1ABF237A4();
  v32 = sub_1ABAA52C0();
  v33(v32);
  v34 = sub_1ABA7C08C("ECR.TextClient.warmup");
  v35(v34);
  if (qword_1ED871B18 != -1)
  {
    sub_1ABA7D4EC();
    swift_once();
  }

  sub_1ABA7AA24(v15[8], qword_1ED871B20);
  sub_1ABF237D4();
  v36 = sub_1ABF24654();
  v37 = sub_1ABA84024();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = v15[2];
    v40 = swift_slowAlloc();
    *v40 = 134217984;
    *(v40 + 4) = v39;
    sub_1ABA9A3C8();
    _os_log_impl(v41, v42, v43, v44, v45, 0xCu);
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
  }

  sub_1ABA969A0();
  sub_1ABAA1BEC(OBJC_IVAR___GDEntityResolutionTextClientInner_service);
  v47 = *(v46 + 8);
  v48 = sub_1ABA974EC();
  v49(v48);
  sub_1ABBDE930(v36);
  sub_1ABBA4F10(v36);

  sub_1ABA7BBE0();
  sub_1ABA8BF40();

  return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1ABBDB8B0(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  a3;
  v5 = swift_task_alloc();
  v3[4] = v5;
  *v5 = v3;
  v5[1] = sub_1ABBDB96C;

  return sub_1ABBDB458();
}

uint64_t sub_1ABBDB96C()
{
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  sub_1ABA7BBC0();
  *v5 = v4;
  v6 = v3[4];
  v7 = v3[2];
  v8 = *v1;
  *v5 = *v1;

  v9 = v3[3];
  if (v2)
  {
    v10 = sub_1ABF21BD4();

    (*(v9 + 16))(v9, v10);
  }

  else
  {
    (*(v9 + 16))(v9, 0);
  }

  _Block_release(v4[3]);
  v11 = v8[1];

  return v11();
}

void sub_1ABBDBAE8()
{
  sub_1ABA7BCA8();
  v45 = v3;
  v4 = sub_1ABF23744();
  v5 = sub_1ABA7BB64(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7C068();
  v44 = v10;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_1ABA9939C();
  v13 = sub_1ABA7BB64(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA7BC58();
  v16 = sub_1ABAA2C70();
  v17 = sub_1ABA7BB64(v16);
  v42 = v18;
  v43 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1ABA7BC58();
  sub_1ABAB50F4();
  v41 = type metadata accessor for LogSignpost();
  v21 = sub_1ABA7BBB0(v41);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1ABA809E8();
  if (qword_1ED871F20 != -1)
  {
    sub_1ABA7D628();
    swift_once();
  }

  sub_1ABA7AA24(v12, qword_1ED871EF8);
  v24 = sub_1ABAB56AC();
  v25(v24);
  sub_1ABF23754();
  sub_1ABF23764();
  sub_1ABF23714();
  v26 = sub_1ABF23764();
  v27 = sub_1ABF24714();
  if (sub_1ABF247D4())
  {
    sub_1ABA8179C();
    v28 = swift_slowAlloc();
    sub_1ABA96044(v28);
    v29 = sub_1ABF23724();
    _os_signpost_emit_with_name_impl(&dword_1ABA78000, v26, v27, v29, "ECR.TextClient.warmup", "", v4, 2u);
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
  }

  (*(v7 + 16))(v44, v2, v4);
  v30 = sub_1ABF237B4();
  sub_1ABA90758(v30);
  swift_allocObject();
  sub_1ABA7D1BC();
  v31 = sub_1ABF237A4();
  (*(v7 + 8))(v2, v4);
  sub_1ABA957E4("ECR.TextClient.warmup");
  *(v1 + 24) = v31;
  (*(v42 + 32))(v1 + *(v41 + 24), v0, v43);
  if (qword_1ED871B18 != -1)
  {
    sub_1ABA7D4EC();
    swift_once();
  }

  v32 = sub_1ABAB68E0(v12, qword_1ED871B20);
  sub_1ABF24654();
  v33 = sub_1ABA817A8();
  if (os_log_type_enabled(v33, v34))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = v45;
    sub_1ABA8D1E0();
    _os_log_impl(v35, v36, v37, v38, v39, 0xCu);
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
  }

  sub_1ABAA4968(OBJC_IVAR___GDEntityResolutionTextClientInner_service);
  (*(v40 + 8))(v45, v32, v4);
  sub_1ABBDE930(v1);
  sub_1ABBA4F10(v1);
  sub_1ABA7BC90();
}

uint64_t sub_1ABBDBF64()
{
  sub_1ABA7BBF8();
  v1[2] = v0;
  v2 = sub_1ABF23744();
  v1[3] = v2;
  sub_1ABA7BBD0(v2);
  v1[4] = v3;
  v5 = *(v4 + 64);
  v1[5] = sub_1ABA96BDC();
  v1[6] = swift_task_alloc();
  v6 = sub_1ABF237F4();
  v1[7] = v6;
  sub_1ABA7BBD0(v6);
  v1[8] = v7;
  v9 = *(v8 + 64);
  v1[9] = sub_1ABA7E314();
  v10 = sub_1ABF23774();
  v1[10] = v10;
  sub_1ABA7BBD0(v10);
  v1[11] = v11;
  v13 = *(v12 + 64);
  v1[12] = sub_1ABA7E314();
  v14 = type metadata accessor for LogSignpost();
  v1[13] = v14;
  v15 = *(*(v14 - 8) + 64);
  v1[14] = sub_1ABA7E314();
  v16 = sub_1ABA83840();

  return MEMORY[0x1EEE6DFA0](v16);
}

uint64_t sub_1ABBDC0D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1ABA88600();
  sub_1ABA827D0();
  if (qword_1ED871F20 != -1)
  {
    sub_1ABA7D628();
    swift_once();
  }

  v15 = v14[12];
  v17 = v14[8];
  v16 = v14[9];
  v18 = v14[6];
  sub_1ABA7AA24(v14[7], qword_1ED871EF8);
  v19 = sub_1ABA94978();
  v20(v19);
  sub_1ABA977C0();
  sub_1ABF23764();
  sub_1ABF23714();
  v21 = sub_1ABF23764();
  sub_1ABF24714();
  if (sub_1ABAA1514())
  {
    v22 = v14[6];
    sub_1ABA8179C();
    v23 = swift_slowAlloc();
    sub_1ABA96C68(v23);
    sub_1ABF23724();
    sub_1ABA840A8();
    _os_signpost_emit_with_name_impl(v24, v25, v26, v27, v28, v29, v30, v31);
    v32 = sub_1ABA7E368();
    MEMORY[0x1AC5AB8B0](v32);
  }

  v34 = v14[13];
  v33 = v14[14];
  v35 = v14[11];
  v74 = v14[12];
  v36 = v14[10];
  v37 = v14[5];
  v38 = v14[6];
  v40 = v14[3];
  v39 = v14[4];

  v41 = sub_1ABA94960();
  v42(v41);
  v43 = sub_1ABF237B4();
  sub_1ABA90758(v43);
  swift_allocObject();
  sub_1ABA8FFDC();
  sub_1ABF237A4();
  v44 = sub_1ABAA52C0();
  v45(v44);
  v46 = sub_1ABA7C08C("ECR.TextClient.cooldown");
  v47(v46);
  if (qword_1ED871B18 != -1)
  {
    sub_1ABA7D4EC();
    swift_once();
  }

  sub_1ABA7AA24(v14[7], qword_1ED871B20);
  v48 = sub_1ABF237D4();
  sub_1ABF24654();
  v49 = sub_1ABA84024();
  if (os_log_type_enabled(v49, v50))
  {
    sub_1ABA8179C();
    v51 = swift_slowAlloc();
    sub_1ABA7ACCC(v51);
    sub_1ABA9A3C8();
    _os_log_impl(v52, v53, v54, v55, v56, 2u);
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
  }

  v57 = v14[14];
  v58 = v14[12];
  v59 = v14[9];
  v61 = v14[5];
  v60 = v14[6];
  v62 = v14[2];

  v63 = *(v62 + OBJC_IVAR___GDEntityResolutionTextClientInner_service + 24);
  v64 = *(v62 + OBJC_IVAR___GDEntityResolutionTextClientInner_service + 32);
  sub_1ABA93E20((v62 + OBJC_IVAR___GDEntityResolutionTextClientInner_service), v63);
  (*(v64 + 16))(v63, v64);
  sub_1ABBDE930(v57);
  sub_1ABBA4F10(v57);

  sub_1ABA7BBE0();
  sub_1ABA8BF40();

  return v66(v65, v66, v67, v68, v69, v70, v71, v72, a9, v74, a11, a12, a13, a14);
}

uint64_t sub_1ABBDC3F4(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1ABBE1950;

  return sub_1ABBDBF64();
}

void sub_1ABBDC49C()
{
  sub_1ABA7BCA8();
  v53 = v0;
  v52 = sub_1ABF23744();
  v2 = sub_1ABA7BB64(v52);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1ABA7C068();
  v51 = v7;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v48 - v9;
  v11 = sub_1ABF237F4();
  v12 = sub_1ABA7BB64(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA7BC58();
  v17 = sub_1ABAA2C70();
  v18 = sub_1ABA7BB64(v17);
  v49 = v19;
  v50 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1ABA7BC58();
  v24 = v23 - v22;
  v48 = type metadata accessor for LogSignpost();
  v25 = sub_1ABA7BBB0(v48);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  sub_1ABA7BC58();
  sub_1ABAB50F4();
  if (qword_1ED871F20 != -1)
  {
    sub_1ABA7D628();
    swift_once();
  }

  sub_1ABA7AA24(v11, qword_1ED871EF8);
  v28 = sub_1ABAA12D8();
  v29(v28);
  sub_1ABF23754();
  sub_1ABF23764();
  sub_1ABF23714();
  v30 = sub_1ABF23764();
  v31 = sub_1ABF24714();
  if (sub_1ABF247D4())
  {
    sub_1ABA8179C();
    v32 = swift_slowAlloc();
    sub_1ABA96044(v32);
    v33 = sub_1ABF23724();
    _os_signpost_emit_with_name_impl(&dword_1ABA78000, v30, v31, v33, "ECR.TextClient.cooldown", "", v14, 2u);
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
  }

  v34 = v52;
  (*(v4 + 16))(v51, v10, v52);
  v35 = sub_1ABF237B4();
  sub_1ABA90758(v35);
  swift_allocObject();
  v36 = sub_1ABF237A4();
  (*(v4 + 8))(v10, v34);
  *v1 = "ECR.TextClient.cooldown";
  *(v1 + 8) = 23;
  *(v1 + 16) = 2;
  *(v1 + 24) = v36;
  (*(v49 + 32))(v1 + *(v48 + 24), v24, v50);
  if (qword_1ED871B18 != -1)
  {
    sub_1ABA7D4EC();
    swift_once();
  }

  v37 = sub_1ABAB68E0(v11, qword_1ED871B20);
  sub_1ABF24654();
  v38 = sub_1ABA817A8();
  if (os_log_type_enabled(v38, v39))
  {
    sub_1ABA8179C();
    v40 = swift_slowAlloc();
    sub_1ABA96044(v40);
    sub_1ABA8D1E0();
    _os_log_impl(v41, v42, v43, v44, v45, 2u);
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
  }

  v46 = *(v53 + OBJC_IVAR___GDEntityResolutionTextClientInner_service + 24);
  v47 = *(v53 + OBJC_IVAR___GDEntityResolutionTextClientInner_service + 32);
  sub_1ABA93E20((v53 + OBJC_IVAR___GDEntityResolutionTextClientInner_service), v46);
  (*(v47 + 16))(v46, v47);
  sub_1ABBDE930(v1);
  sub_1ABBA4F10(v1);
  sub_1ABA7BC90();
}

uint64_t sub_1ABBDC910()
{
  sub_1ABA7BBF8();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_1ABF23744();
  v1[4] = v3;
  sub_1ABA7BBD0(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = sub_1ABA96BDC();
  v1[7] = swift_task_alloc();
  v7 = sub_1ABF237F4();
  v1[8] = v7;
  sub_1ABA7BBD0(v7);
  v1[9] = v8;
  v10 = *(v9 + 64);
  v1[10] = sub_1ABA7E314();
  v11 = sub_1ABF23774();
  v1[11] = v11;
  sub_1ABA7BBD0(v11);
  v1[12] = v12;
  v14 = *(v13 + 64);
  v1[13] = sub_1ABA7E314();
  v15 = type metadata accessor for LogSignpost();
  sub_1ABA993BC(v15);
  v17 = *(v16 + 64);
  v1[15] = sub_1ABA7E314();
  v18 = sub_1ABA83840();

  return MEMORY[0x1EEE6DFA0](v18);
}

uint64_t sub_1ABBDCA78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1ABA88600();
  sub_1ABA827D0();
  if (qword_1ED871F20 != -1)
  {
    sub_1ABA7D628();
    swift_once();
  }

  sub_1ABAA10D4();
  sub_1ABA7AA24(v14, qword_1ED871EF8);
  v16 = sub_1ABA94978();
  v17(v16);
  sub_1ABA977C0();
  sub_1ABF23764();
  sub_1ABF23714();
  sub_1ABF23764();
  sub_1ABF24714();
  if (sub_1ABAA1514())
  {
    v18 = v15[7];
    sub_1ABA8179C();
    v19 = swift_slowAlloc();
    sub_1ABA96C68(v19);
    sub_1ABF23724();
    sub_1ABA840A8();
    _os_signpost_emit_with_name_impl(v20, v21, v22, v23, v24, v25, v26, v27);
    v28 = sub_1ABA7E368();
    MEMORY[0x1AC5AB8B0](v28);
  }

  sub_1ABAA3C54();
  v29 = sub_1ABA94960();
  v30(v29);
  v31 = sub_1ABF237B4();
  sub_1ABA90758(v31);
  swift_allocObject();
  sub_1ABA8FFDC();
  sub_1ABF237A4();
  v32 = sub_1ABAA52C0();
  v33(v32);
  v34 = sub_1ABA7C08C("ECR.TextClient.resolve");
  v35(v34);
  if (qword_1ED871B18 != -1)
  {
    sub_1ABA7D4EC();
    swift_once();
  }

  sub_1ABA7AA24(v15[8], qword_1ED871B20);
  sub_1ABF237D4();
  v36 = sub_1ABF24654();
  v37 = sub_1ABA84024();
  if (os_log_type_enabled(v37, v38))
  {
    sub_1ABA8179C();
    v39 = swift_slowAlloc();
    sub_1ABA7ACCC(v39);
    sub_1ABA9A3C8();
    _os_log_impl(v40, v41, v42, v43, v44, 2u);
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
  }

  sub_1ABA969A0();
  sub_1ABAA1BEC(OBJC_IVAR___GDEntityResolutionTextClientInner_service);
  v46 = *(v45 + 24);
  v47 = sub_1ABA974EC();
  v48(v47);
  v49 = sub_1ABA7D1BC();
  sub_1ABBDE930(v49);
  sub_1ABBA4F10(v36);

  v50 = v15[1];
  sub_1ABA8BF40();

  return v53(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1ABBDCCF4(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1ABBDCDB8;

  return sub_1ABBDC910();
}

uint64_t sub_1ABBDCDB8(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = *(*v2 + 24);
  v8 = *(*v2 + 16);
  v9 = *v2;
  sub_1ABA7BBC0();
  *v10 = v9;

  v11 = *(v5 + 32);
  if (v3)
  {
    sub_1ABF21BD4();

    (v11)[2](v11, 0, a1);
    _Block_release(v11);
  }

  else
  {
    (v11)[2](*(v5 + 32), a1, 0);
    _Block_release(v11);
  }

  v12 = *(v9 + 8);

  return v12();
}

void sub_1ABBDCF64()
{
  sub_1ABA7BCA8();
  v51 = v1;
  v52 = sub_1ABF23744();
  v2 = sub_1ABA7BB64(v52);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1ABA7C068();
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1ABA9939C();
  v7 = sub_1ABA7BB64(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA7BC58();
  v50 = sub_1ABAA2C70();
  v10 = sub_1ABA7BB64(v50);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7BC58();
  v15 = v14 - v13;
  v16 = type metadata accessor for LogSignpost();
  v17 = sub_1ABA7BBB0(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1ABA809E8();
  if (qword_1ED871F20 != -1)
  {
    sub_1ABA7D628();
    swift_once();
  }

  sub_1ABA7AA24(v6, qword_1ED871EF8);
  v20 = sub_1ABAB56AC();
  v21(v20);
  sub_1ABF23754();
  sub_1ABF23764();
  sub_1ABF23714();
  v22 = sub_1ABF23764();
  sub_1ABF24714();
  if (sub_1ABF247D4())
  {
    sub_1ABA8179C();
    v23 = swift_slowAlloc();
    sub_1ABA96C68(v23);
    sub_1ABF23724();
    sub_1ABA840A8();
    _os_signpost_emit_with_name_impl(v24, v25, v26, v27, v28, v29, v30, v31);
    v32 = sub_1ABA7E368();
    MEMORY[0x1AC5AB8B0](v32);
  }

  v33 = sub_1ABA977A0();
  v34(v33);
  v35 = sub_1ABF237B4();
  sub_1ABA90758(v35);
  swift_allocObject();
  sub_1ABA7D1BC();
  sub_1ABF237A4();
  v36 = sub_1ABBE1960();
  v37(v36);
  sub_1ABA957E4("ECR.TextClient.resolve");
  v38 = sub_1ABAB5A5C();
  v39(v38);
  if (qword_1ED871B18 != -1)
  {
    sub_1ABA7D4EC();
    swift_once();
  }

  v40 = sub_1ABAB68E0(v6, qword_1ED871B20);
  sub_1ABF24654();
  v41 = sub_1ABA817A8();
  if (os_log_type_enabled(v41, v42))
  {
    sub_1ABA8179C();
    v43 = swift_slowAlloc();
    sub_1ABA96044(v43);
    sub_1ABA8D1E0();
    _os_log_impl(v44, v45, v46, v47, v48, 2u);
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
  }

  sub_1ABAA4968(OBJC_IVAR___GDEntityResolutionTextClientInner_service);
  (*(v49 + 24))(v51, v40, v15);
  sub_1ABA96BC4();
  sub_1ABBDE930(v0);
  sub_1ABBA4F10(v0);
  sub_1ABAB5854();
  sub_1ABA7BC90();
}

uint64_t sub_1ABBDD3A0()
{
  sub_1ABA7BBF8();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_1ABF23744();
  v1[4] = v3;
  sub_1ABA7BBD0(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = sub_1ABA96BDC();
  v1[7] = swift_task_alloc();
  v7 = sub_1ABF237F4();
  v1[8] = v7;
  sub_1ABA7BBD0(v7);
  v1[9] = v8;
  v10 = *(v9 + 64);
  v1[10] = sub_1ABA7E314();
  v11 = sub_1ABF23774();
  v1[11] = v11;
  sub_1ABA7BBD0(v11);
  v1[12] = v12;
  v14 = *(v13 + 64);
  v1[13] = sub_1ABA7E314();
  v15 = type metadata accessor for LogSignpost();
  sub_1ABA993BC(v15);
  v17 = *(v16 + 64);
  v1[15] = sub_1ABA7E314();
  v18 = sub_1ABA83840();

  return MEMORY[0x1EEE6DFA0](v18);
}

uint64_t sub_1ABBDD508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1ABA88600();
  sub_1ABA827D0();
  if (qword_1ED871F20 != -1)
  {
    sub_1ABA7D628();
    swift_once();
  }

  sub_1ABAA10D4();
  sub_1ABA7AA24(v14, qword_1ED871EF8);
  v16 = sub_1ABA94978();
  v17(v16);
  sub_1ABA977C0();
  sub_1ABF23764();
  sub_1ABF23714();
  sub_1ABF23764();
  sub_1ABF24714();
  if (sub_1ABAA1514())
  {
    v18 = v15[7];
    sub_1ABA8179C();
    v19 = swift_slowAlloc();
    sub_1ABA96C68(v19);
    sub_1ABF23724();
    sub_1ABA840A8();
    _os_signpost_emit_with_name_impl(v20, v21, v22, v23, v24, v25, v26, v27);
    v28 = sub_1ABA7E368();
    MEMORY[0x1AC5AB8B0](v28);
  }

  sub_1ABAA3C54();
  v29 = sub_1ABA94960();
  v30(v29);
  v31 = sub_1ABF237B4();
  sub_1ABA90758(v31);
  swift_allocObject();
  sub_1ABA8FFDC();
  sub_1ABF237A4();
  v32 = sub_1ABAA52C0();
  v33(v32);
  v34 = sub_1ABA7C08C("ECR.TextClient.resolveBatch");
  v35(v34);
  if (qword_1ED871B18 != -1)
  {
    sub_1ABA7D4EC();
    swift_once();
  }

  sub_1ABA7AA24(v15[8], qword_1ED871B20);
  sub_1ABF237D4();
  v36 = sub_1ABF24654();
  v37 = sub_1ABA84024();
  if (os_log_type_enabled(v37, v38))
  {
    sub_1ABA8179C();
    v39 = swift_slowAlloc();
    sub_1ABA7ACCC(v39);
    sub_1ABA9A3C8();
    _os_log_impl(v40, v41, v42, v43, v44, 2u);
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
  }

  sub_1ABA969A0();
  sub_1ABAA1BEC(OBJC_IVAR___GDEntityResolutionTextClientInner_service);
  v46 = *(v45 + 32);
  v47 = sub_1ABA974EC();
  v48(v47);
  v49 = sub_1ABA7D1BC();
  sub_1ABBDE930(v49);
  sub_1ABBA4F10(v36);

  v50 = v15[1];
  sub_1ABA8BF40();

  return v53(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1ABBDD784(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6)
{
  v9 = _Block_copy(aBlock);
  sub_1ABAB52E8();
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = v9;
  v10[4] = a1;
  v11 = a3;
  v12 = a1;

  return sub_1ABAAFF38(a6, v10);
}

uint64_t sub_1ABBDD800(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  sub_1ABAFF390(0, &qword_1EB4D4CC8, off_1E795FEB0);
  v3[4] = sub_1ABF240D4();
  a3;
  v5 = swift_task_alloc();
  v3[5] = v5;
  *v5 = v3;
  v5[1] = sub_1ABBDD8E8;

  return sub_1ABBDD3A0();
}

uint64_t sub_1ABBDD8E8()
{
  v2 = v0;
  sub_1ABA7BC10();
  v4 = v3;
  v5 = v3[5];
  v6 = v3[4];
  v7 = v3[2];
  v8 = *v1;
  sub_1ABA7BBC0();
  *v9 = v8;

  if (v2)
  {
    v10 = sub_1ABF21BD4();

    v11 = 0;
    v12 = v10;
  }

  else
  {
    sub_1ABAFF390(0, &unk_1ED86B938, off_1E795FEB8);
    v11 = sub_1ABF240C4();

    v10 = 0;
    v12 = v11;
  }

  v13 = v4[3];
  v13[2](v13, v11, v10);

  _Block_release(v13);
  sub_1ABA7BBE0();

  return v14();
}

void sub_1ABBDDA9C()
{
  sub_1ABA7BCA8();
  v51 = v1;
  v52 = sub_1ABF23744();
  v2 = sub_1ABA7BB64(v52);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1ABA7C068();
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1ABA9939C();
  v7 = sub_1ABA7BB64(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA7BC58();
  v50 = sub_1ABAA2C70();
  v10 = sub_1ABA7BB64(v50);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7BC58();
  v15 = v14 - v13;
  v16 = type metadata accessor for LogSignpost();
  v17 = sub_1ABA7BBB0(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1ABA809E8();
  if (qword_1ED871F20 != -1)
  {
    sub_1ABA7D628();
    swift_once();
  }

  sub_1ABA7AA24(v6, qword_1ED871EF8);
  v20 = sub_1ABAB56AC();
  v21(v20);
  sub_1ABF23754();
  sub_1ABF23764();
  sub_1ABF23714();
  v22 = sub_1ABF23764();
  sub_1ABF24714();
  if (sub_1ABF247D4())
  {
    sub_1ABA8179C();
    v23 = swift_slowAlloc();
    sub_1ABA96C68(v23);
    sub_1ABF23724();
    sub_1ABA840A8();
    _os_signpost_emit_with_name_impl(v24, v25, v26, v27, v28, v29, v30, v31);
    v32 = sub_1ABA7E368();
    MEMORY[0x1AC5AB8B0](v32);
  }

  v33 = sub_1ABA977A0();
  v34(v33);
  v35 = sub_1ABF237B4();
  sub_1ABA90758(v35);
  swift_allocObject();
  sub_1ABA7D1BC();
  sub_1ABF237A4();
  v36 = sub_1ABBE1960();
  v37(v36);
  sub_1ABA957E4("ECR.TextClient.resolveBatch");
  v38 = sub_1ABAB5A5C();
  v39(v38);
  if (qword_1ED871B18 != -1)
  {
    sub_1ABA7D4EC();
    swift_once();
  }

  v40 = sub_1ABAB68E0(v6, qword_1ED871B20);
  sub_1ABF24654();
  v41 = sub_1ABA817A8();
  if (os_log_type_enabled(v41, v42))
  {
    sub_1ABA8179C();
    v43 = swift_slowAlloc();
    sub_1ABA96044(v43);
    sub_1ABA8D1E0();
    _os_log_impl(v44, v45, v46, v47, v48, 2u);
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
  }

  sub_1ABAA4968(OBJC_IVAR___GDEntityResolutionTextClientInner_service);
  (*(v49 + 32))(v51, v40, v15);
  sub_1ABA96BC4();
  sub_1ABBDE930(v0);
  sub_1ABBA4F10(v0);
  sub_1ABAB5854();
  sub_1ABA7BC90();
}

void sub_1ABBDDF34()
{
  sub_1ABA7BCA8();
  v57 = v0;
  v58 = v3;
  v59 = v4;
  v55 = sub_1ABF23744();
  v5 = sub_1ABA7BB64(v55);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7C068();
  v54 = v10;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v51 - v12;
  v14 = sub_1ABF237F4();
  v15 = sub_1ABA7BB64(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABA7BC58();
  v18 = sub_1ABAA2C70();
  v19 = sub_1ABA7BB64(v18);
  v52 = v20;
  v53 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1ABA7BC58();
  sub_1ABAB50F4();
  v51 = type metadata accessor for LogSignpost();
  v23 = sub_1ABA7BBB0(v51);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  sub_1ABA7BC58();
  v28 = v27 - v26;
  if (qword_1ED871F20 != -1)
  {
    sub_1ABA7D628();
    swift_once();
  }

  sub_1ABA7AA24(v14, qword_1ED871EF8);
  v29 = sub_1ABAA12D8();
  v56 = v14;
  v30(v29);
  sub_1ABF23754();
  sub_1ABF23764();
  sub_1ABF23714();
  v31 = sub_1ABF23764();
  v32 = sub_1ABF24714();
  if (sub_1ABF247D4())
  {
    sub_1ABA8179C();
    v33 = swift_slowAlloc();
    sub_1ABBE1954(v33);
    v34 = sub_1ABF23724();
    _os_signpost_emit_with_name_impl(&dword_1ABA78000, v31, v32, v34, "ECR.TextClient.mention", "", v1, 2u);
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
  }

  v35 = *(v7 + 16);
  v36 = v55;
  v37 = sub_1ABAABC94();
  v38(v37);
  v39 = sub_1ABF237B4();
  sub_1ABA90758(v39);
  swift_allocObject();
  sub_1ABA7D1BC();
  v40 = sub_1ABF237A4();
  (*(v7 + 8))(v13, v36);
  *v28 = "ECR.TextClient.mention";
  *(v28 + 8) = 22;
  *(v28 + 16) = 2;
  *(v28 + 24) = v40;
  (*(v52 + 32))(v28 + *(v51 + 24), v2, v53);
  if (qword_1ED871B18 != -1)
  {
    sub_1ABA7D4EC();
    swift_once();
  }

  v41 = sub_1ABAB68E0(v56, qword_1ED871B20);
  sub_1ABF24654();
  v42 = sub_1ABA817A8();
  if (os_log_type_enabled(v42, v43))
  {
    sub_1ABA8179C();
    v44 = swift_slowAlloc();
    sub_1ABA96044(v44);
    sub_1ABA8D1E0();
    _os_log_impl(v45, v46, v47, v48, v49, 2u);
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
  }

  sub_1ABAA4968(OBJC_IVAR___GDEntityResolutionTextClientInner_service);
  (*(v50 + 40))(v58, v59, v41, v36);
  sub_1ABA96BC4();
  sub_1ABBDE930(v28);
  sub_1ABBA4F10(v28);
  sub_1ABAB5854();
  sub_1ABA7BC90();
}

void sub_1ABBDE3EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1ABA7BCA8();
  a19 = v24;
  a20 = v25;
  v26 = sub_1ABF23744();
  v27 = sub_1ABA7BB64(v26);
  v68 = v28;
  v69 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v27);
  sub_1ABA7C068();
  v66 = v31;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v32);
  v33 = sub_1ABA9939C();
  v34 = sub_1ABA7BB64(v33);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  sub_1ABA7BC58();
  v67 = sub_1ABAA2C70();
  v37 = sub_1ABA7BB64(v67);
  v39 = v38;
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v37);
  sub_1ABA7BC58();
  sub_1ABAB50F4();
  v42 = type metadata accessor for LogSignpost();
  v43 = sub_1ABA7BBB0(v42);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v43);
  sub_1ABA809E8();
  if (qword_1ED871F20 != -1)
  {
    goto LABEL_20;
  }

  while (1)
  {
    sub_1ABA7AA24(v33, qword_1ED871EF8);
    v46 = sub_1ABAA12D8();
    v70 = v33;
    v47(v46);
    sub_1ABF23754();
    sub_1ABF23764();
    sub_1ABF23714();
    v48 = sub_1ABF23764();
    v49 = sub_1ABF24714();
    if (sub_1ABF247D4())
    {
      sub_1ABA8179C();
      v50 = swift_slowAlloc();
      sub_1ABBE1954(v50);
      v51 = sub_1ABF23724();
      _os_signpost_emit_with_name_impl(&dword_1ABA78000, v48, v49, v51, "ECR.TextClient.mention", "", v22, 2u);
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
    }

    (*(v68 + 16))(v66, v23, v69);
    v52 = sub_1ABF237B4();
    sub_1ABA90758(v52);
    swift_allocObject();
    v53 = sub_1ABF237A4();
    (*(v68 + 8))(v23, v69);
    sub_1ABA957E4("ECR.TextClient.mention");
    *(v22 + 24) = v53;
    v54 = v39[4];
    v39 += 4;
    v54(v22 + *(v42 + 24), v21, v67);
    if (qword_1ED871B18 != -1)
    {
      sub_1ABA7D4EC();
      swift_once();
    }

    v55 = sub_1ABAB68E0(v70, qword_1ED871B20);
    v56 = sub_1ABF24654();
    v57 = sub_1ABA84024();
    if (os_log_type_enabled(v57, v58))
    {
      sub_1ABA8179C();
      v59 = swift_slowAlloc();
      sub_1ABA96C68(v59);
      _os_log_impl(&dword_1ABA78000, v55, v56, "ECR client: entity to text called.", v21, 2u);
      v60 = sub_1ABA7E368();
      MEMORY[0x1AC5AB8B0](v60);
    }

    sub_1ABBDCF64();
    if (v20)
    {
      break;
    }

    v72 = v22;
    a10 = MEMORY[0x1E69E7CC0];
    v71 = v61;
    v62 = [v61 rankedResults];
    sub_1ABAFF390(0, &qword_1ED86B970, off_1E7960338);
    v21 = sub_1ABF240D4();

    v22 = sub_1ABAAB7C8(v21);
    v42 = 0;
    v33 = v21 & 0xC000000000000001;
    v23 = off_1E7960330;
    while (1)
    {
      if (v22 == v42)
      {

        sub_1ABBDE930(v72);
        sub_1ABBA4F10(v72);
        goto LABEL_18;
      }

      sub_1ABAAB7C0(v42, v33 == 0, v21);
      v63 = v33 ? MEMORY[0x1AC5AA170](v42, v21) : *(v21 + 8 * v42 + 32);
      v64 = v63;
      if (__OFADD__(v42, 1))
      {
        break;
      }

      v39 = [v63 rankedItems];
      sub_1ABAFF390(0, &qword_1ED86B978, off_1E7960330);
      v65 = sub_1ABF240D4();

      sub_1ABBDAD50(v65, &a10);

      ++v42;
    }

    __break(1u);
LABEL_20:
    sub_1ABA7D628();
    swift_once();
  }

  sub_1ABBDE930(v22);
  sub_1ABBA4F10(v22);
LABEL_18:
  sub_1ABA7BC90();
}

uint64_t sub_1ABBDE930(uint64_t a1)
{
  v3 = sub_1ABF23784();
  v4 = sub_1ABA7BB64(v3);
  v28 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA809E8();
  v8 = sub_1ABF23744();
  v9 = sub_1ABA7BB64(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7BC58();
  v16 = v15 - v14;
  v17 = type metadata accessor for LogSignpost();
  v18 = *a1;
  v19 = *(a1 + 16);
  v20 = *(a1 + 24);
  v21 = a1 + *(v17 + 24);
  v22 = sub_1ABF23764();
  sub_1ABF23794();
  v27 = sub_1ABF24704();
  result = sub_1ABF247D4();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v11 + 8))(v16, v8);
  }

  if ((v19 & 1) == 0)
  {
    if (v18)
    {
LABEL_9:

      sub_1ABF237C4();

      if ((*(v28 + 88))(v1, v3) == *MEMORY[0x1E69E93E8])
      {
        v24 = "[Error] Interval already ended";
      }

      else
      {
        (*(v28 + 8))(v1, v3);
        v24 = "";
      }

      sub_1ABA8179C();
      v25 = swift_slowAlloc();
      sub_1ABBE1954(v25);
      v26 = sub_1ABF23724();
      _os_signpost_emit_with_name_impl(&dword_1ABA78000, v22, v27, v26, v18, v24, v1, 2u);
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v18 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v18 & 0xFFFFF800) != 0xD800)
  {
    if (v18 >> 16 <= 0x10)
    {
      v18 = &v29;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1ABBDEB9C(uint64_t a1, uint64_t a2)
{
  v5 = sub_1ABAD219C(&qword_1EB4D4C90, &unk_1ABF479F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v60 - v7;
  v9 = sub_1ABAD219C(&qword_1EB4D1AA8, &qword_1ABF661A0);
  v10 = sub_1ABA7BB64(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABAB50F4();
  if (qword_1ED871B18 != -1)
  {
    sub_1ABA7D4EC();
    swift_once();
  }

  v15 = sub_1ABF237F4();
  v16 = sub_1ABA7AA24(v15, qword_1ED871B20);
  v17 = sub_1ABF237D4();
  sub_1ABF24644();
  v18 = sub_1ABA817A8();
  if (os_log_type_enabled(v18, v19))
  {
    sub_1ABA8179C();
    v20 = swift_slowAlloc();
    sub_1ABA7ACCC(v20);
    sub_1ABA97310(&dword_1ABA78000, v21, v22, "AddressToContact: embedding address string begin");
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
  }

  sub_1ABF239C4();
  type metadata accessor for AddressEmbedder();
  swift_allocObject();
  v23 = AddressEmbedder.init(modelName:dictionaryPaths:)(0xD00000000000002FLL);
  v60 = v12;
  v61 = a2;
  v62 = v23;
  v24 = sub_1ABF23C84();
  v67 = 0;
  v68 = 0xE000000000000000;
  v26 = HIBYTE(v25) & 0xF;
  if ((v25 & 0x2000000000000000) == 0)
  {
    v26 = v24 & 0xFFFFFFFFFFFFLL;
  }

  v63 = v24;
  v64 = v25;
  v65 = 0;
  v66 = v26;
  while (1)
  {
    v27 = sub_1ABF23DE4();
    if (!v28)
    {
      break;
    }

    v29 = v27;
    v30 = v28;
    if ((sub_1ABF23AE4() & 1) == 0)
    {
      sub_1ABAABC94();
      if (sub_1ABF23B24() & 1) != 0 || (v29 == 32 ? (v31 = v30 == 0xE100000000000000) : (v31 = 0), v31 || (sub_1ABAABC94(), (sub_1ABF25054()) || (sub_1ABAABC94(), (sub_1ABF23B34())))
      {
        v32 = sub_1ABAABC94();
        MEMORY[0x1AC5A9400](v32);
      }
    }
  }

  v33 = HIBYTE(v68) & 0xF;
  if ((v68 & 0x2000000000000000) == 0)
  {
    v33 = v67 & 0xFFFFFFFFFFFFLL;
  }

  if (!v33)
  {

    v35 = sub_1ABF237D4();
    sub_1ABF24664();
    v39 = sub_1ABA84024();
    if (os_log_type_enabled(v39, v40))
    {
      sub_1ABA8179C();
      v41 = swift_slowAlloc();
      sub_1ABA7ACCC(v41);
      sub_1ABA9A3C8();
      _os_log_impl(v42, v43, v44, v45, v46, 2u);
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
    }

    goto LABEL_29;
  }

  v63 = v67;
  v64 = v68;
  v67 = 32;
  v68 = 0xE100000000000000;
  sub_1ABAE28EC();
  sub_1ABF24884();
  sub_1ABA7D1BC();

  v34 = v65;

  if (v34 >= 0xB)
  {
    v35 = sub_1ABF237D4();
    sub_1ABF24664();
    v36 = sub_1ABA84024();
    if (os_log_type_enabled(v36, v37))
    {
      sub_1ABA8179C();
      v38 = swift_slowAlloc();
      sub_1ABA7ACCC(v38);
      sub_1ABA9A3C8();
      _os_log_impl(v47, v48, v49, v50, v51, 2u);
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
    }

LABEL_29:

    return MEMORY[0x1E69E7CC0];
  }

  AddressEmbedder.getEmbedding(address:)(a1, v61, v8);
  sub_1ABA7B9B4(v8, 0, 1, v9);
  v53 = v60;
  (*(v60 + 32))(v2, v8, v9);
  sub_1ABBE0AF8();
  v54 = sub_1ABF23834();
  v55 = sub_1ABF237D4();
  sub_1ABF24644();
  v56 = sub_1ABA817A8();
  if (os_log_type_enabled(v56, v57))
  {
    sub_1ABA8179C();
    v59 = swift_slowAlloc();
    sub_1ABBE1954(v59);
    _os_log_impl(&dword_1ABA78000, v55, v16, "AddressToContact: embedding address string succeeded", v8, 2u);
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
  }

  (*(v53 + 8))(v2, v9);
  return v54;
}

uint64_t sub_1ABBDF120(uint64_t a1)
{
  if (qword_1ED871B18 != -1)
  {
    sub_1ABA7D4EC();
    swift_once();
  }

  v3 = sub_1ABF237F4();
  sub_1ABA7AA24(v3, qword_1ED871B20);
  v4 = sub_1ABF237D4();
  v5 = sub_1ABF24644();
  v6 = sub_1ABA84024();
  if (os_log_type_enabled(v6, v7))
  {
    sub_1ABA8179C();
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1ABA78000, v4, v5, "AddressToContact: vector search initiated for embedded address", v8, 2u);
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
  }

  v9 = type metadata accessor for ViewService();
  v10 = static ViewService.clientService.getter(v9);
  ViewService.addressContactResolverEmbeddingView()();

  if (!v1)
  {
    v11 = sub_1ABF237D4();
    sub_1ABF24644();
    v12 = sub_1ABA84024();
    if (os_log_type_enabled(v12, v13))
    {
      sub_1ABA8179C();
      *swift_slowAlloc() = 0;
      sub_1ABA82A68(&dword_1ABA78000, v14, v15, "AddressToContact: address vector database view loaded");
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
    }

    sub_1ABF22FE4();
    a1 = sub_1ABF23014();
    v17 = sub_1ABF237D4();
    sub_1ABF24644();
    v18 = sub_1ABA84024();
    if (os_log_type_enabled(v18, v19))
    {
      sub_1ABA8179C();
      *swift_slowAlloc() = 0;
      sub_1ABA82A68(&dword_1ABA78000, v21, v22, "AddressToContact: vector search completed");
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
    }

    if (*(a1 + 16))
    {
      v23 = sub_1ABF237D4();
      v24 = sub_1ABF24644();
      v25 = sub_1ABA84024();
      if (os_log_type_enabled(v25, v26))
      {
        sub_1ABA8179C();
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_1ABA78000, v23, v24, "AddressToContact: address candidates found", v27, 2u);
        sub_1ABA7BDD8();
        MEMORY[0x1AC5AB8B0]();
      }
    }

    else
    {

      v28 = sub_1ABF237D4();
      v29 = sub_1ABF24644();
      v30 = sub_1ABA84024();
      if (os_log_type_enabled(v30, v31))
      {
        sub_1ABA8179C();
        v32 = swift_slowAlloc();
        sub_1ABBE1954(v32);
        _os_log_impl(&dword_1ABA78000, v28, v29, "AddressToContact: no address candidates found", a1, 2u);
        sub_1ABA7BDD8();
        MEMORY[0x1AC5AB8B0]();
      }

      return 0;
    }
  }

  return a1;
}

id sub_1ABBDF420(void *a1)
{
  v4 = sub_1ABF23104();
  v5 = sub_1ABA7BB64(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA809E8();
  v10 = [a1 addressString];
  v11 = sub_1ABF23C04();
  v13 = v12;

  v14 = sub_1ABBDEB9C(v11, v13);

  if (!*(v14 + 16))
  {

    goto LABEL_5;
  }

  v15 = sub_1ABBDF120(v14);

  if (v1)
  {
    return result;
  }

  if (!v15)
  {
LABEL_5:
    sub_1ABAFF390(0, &qword_1EB4D4CA0, off_1E795FE60);
    return sub_1ABBDF948();
  }

  v45 = v15;
  v51 = MEMORY[0x1E69E7CC0];
  if (qword_1ED871B18 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v17 = sub_1ABF237F4();
    v18 = sub_1ABAB68E0(v17, qword_1ED871B20);
    v19 = sub_1ABF24644();
    if (os_log_type_enabled(v18, v19))
    {
      sub_1ABA8179C();
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1ABA78000, v18, v19, "AddressToContact: address contact candidates retrieved", v20, 2u);
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
    }

    v21 = v45;
    v22 = *(v45 + 16);
    if (!v22)
    {
      break;
    }

    v23 = 0;
    v48 = v45 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v24 = (v7 + 8);
    v43 = v7;
    v44 = v4;
    v42 = *(v45 + 16);
    v47 = (v7 + 8);
    while (v23 < *(v21 + 16))
    {
      (*(v7 + 16))(v2, v48 + *(v7 + 72) * v23, v4);
      sub_1ABF230B4();
      if (v25 > 0.88)
      {
        v26 = sub_1ABF230F4();
        if (v27 >> 60 != 15)
        {
          v28 = v27;
          v29 = v26;
          v30 = sub_1ABF217F4();
          sub_1ABA90758(v30);
          swift_allocObject();
          sub_1ABF217E4();
          sub_1ABBE0B5C();
          v46 = v29;
          sub_1ABF217D4();
          v31 = sub_1ABF24FF4();
          v33 = v32;
          objc_allocWithZone(GDAddressResolutionResultEntity);

          v34 = sub_1ABBE09FC(v31, v33, v49, v50);

          v35 = v34;
          MEMORY[0x1AC5A9710]();
          v36 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18);
          if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v36 >> 1)
          {
            sub_1ABA7BBEC(v36);
            sub_1ABF24134();
          }

          sub_1ABF24184();

          sub_1ABAC9310(v46, v28);

          v24 = v47;
          v4 = v44;
          (*v47)(v2, v44);
          v21 = v45;
          v22 = v42;
          v7 = v43;
          goto LABEL_20;
        }

        v24 = v47;
      }

      (*v24)(v2, v4);
LABEL_20:
      if (v22 == ++v23)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    sub_1ABA7D4EC();
    swift_once();
  }

LABEL_21:

  v37 = sub_1ABF237D4();
  v38 = sub_1ABF24644();
  v39 = sub_1ABA84024();
  if (os_log_type_enabled(v39, v40))
  {
    sub_1ABA8179C();
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_1ABA78000, v37, v38, "AddressToContact: candidate payload loading succeeded", v41, 2u);
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
  }

  sub_1ABAFF390(0, &qword_1EB4D4CA0, off_1E795FE60);
  return sub_1ABBDF948();
}

id sub_1ABBDF948()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1ABAFF390(0, &qword_1EB4D4CD0, off_1E795FE68);
  v1 = sub_1ABF240C4();

  v2 = [v0 initWithRankedEntities_];

  return v2;
}

void sub_1ABBDFA84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  sub_1ABA7E5E8(a1);
  v10 = v9 & v8;
  v12 = (v11 + 63) >> 6;

  v13 = 0;
  v14 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    goto LABEL_6;
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_53;
    }

    if (v15 >= v12)
    {
      break;
    }

    v10 = *(v7 + 8 * v15);
    ++v13;
    if (v10)
    {
      v13 = v15;
      do
      {
LABEL_6:
        sub_1ABAA28AC();
        v18 = *(v17 + v16);
        type metadata accessor for EntityResolutionRankingDirectFeedback();
        v19 = sub_1ABA96FA8();
        *(v19 + 16) = 1;
        v84 = v18;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1ABAA4DA8();
          v14 = v23;
        }

        v21 = v14[2];
        v20 = v14[3];
        if (v21 >= v20 >> 1)
        {
          sub_1ABA7BBEC(v20);
          sub_1ABA90CC8();
          v14 = v24;
        }

        v10 &= v10 - 1;
        v14[2] = v21 + 1;
        v22 = &v14[2 * v21];
        v22[4] = v84;
        v22[5] = v19;
      }

      while (v10);
    }
  }

  v25 = *(a2 + 56);
  sub_1ABA7E5E8(a2);
  v28 = v27 & v26;
  v30 = (v29 + 63) >> 6;

  v31 = 0;
  if (v28)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v32 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v32 >= v30)
    {

      v42 = *(a3 + 56);
      sub_1ABA7E5E8(a3);
      v45 = v44 & v43;
      v47 = (v46 + 63) >> 6;

      v48 = 0;
      if (v45)
      {
        goto LABEL_28;
      }

      while (1)
      {
        v49 = v48 + 1;
        if (__OFADD__(v48, 1))
        {
          goto LABEL_54;
        }

        if (v49 >= v47)
        {

          v58 = *(a4 + 56);
          sub_1ABA7E5E8(a4);
          v61 = v60 & v59;
          v63 = (v62 + 63) >> 6;

          v64 = 0;
          if (v61)
          {
            goto LABEL_39;
          }

          while (1)
          {
            v65 = v64 + 1;
            if (__OFADD__(v64, 1))
            {
              goto LABEL_55;
            }

            if (v65 >= v63)
            {

              v74 = 0;
              v75 = v14[2];
              v76 = OBJC_IVAR___GDEntityResolutionTextClientInner_feedbackService;
              for (i = v14 + 5; ; i += 2)
              {
                if (v75 == v74)
                {

                  return;
                }

                if (v74 >= v14[2])
                {
                  goto LABEL_56;
                }

                v78 = *(i - 1);
                v79 = *i;
                v80 = *(v87 + v76);

                sub_1ABB14BE0();
                if (v5)
                {
                  break;
                }

                ++v74;
              }

              return;
            }

            v61 = *(a4 + 56 + 8 * v65);
            ++v64;
            if (v61)
            {
              v64 = v65;
              do
              {
LABEL_39:
                sub_1ABAA28AC();
                v86 = *(v67 + v66);
                type metadata accessor for EntityResolutionRankingDirectFeedback();
                v68 = sub_1ABA96FA8();
                *(v68 + 16) = 4;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_1ABAA4DA8();
                  v14 = v72;
                }

                v70 = v14[2];
                v69 = v14[3];
                if (v70 >= v69 >> 1)
                {
                  sub_1ABA7BBEC(v69);
                  sub_1ABA90CC8();
                  v14 = v73;
                }

                v61 &= v61 - 1;
                v14[2] = v70 + 1;
                v71 = &v14[2 * v70];
                v71[4] = v86;
                v71[5] = v68;
              }

              while (v61);
            }
          }
        }

        v45 = *(a3 + 56 + 8 * v49);
        ++v48;
        if (v45)
        {
          v48 = v49;
          do
          {
LABEL_28:
            sub_1ABAA28AC();
            v85 = *(v51 + v50);
            type metadata accessor for EntityResolutionRankingDirectFeedback();
            v52 = sub_1ABA96FA8();
            *(v52 + 16) = 3;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1ABAA4DA8();
              v14 = v56;
            }

            v54 = v14[2];
            v53 = v14[3];
            if (v54 >= v53 >> 1)
            {
              sub_1ABA7BBEC(v53);
              sub_1ABA90CC8();
              v14 = v57;
            }

            v45 &= v45 - 1;
            v14[2] = v54 + 1;
            v55 = &v14[2 * v54];
            v55[4] = v85;
            v55[5] = v52;
          }

          while (v45);
        }
      }
    }

    v28 = *(a2 + 56 + 8 * v32);
    ++v31;
    if (v28)
    {
      v31 = v32;
      do
      {
LABEL_17:
        sub_1ABAA28AC();
        v35 = *(v34 + v33);
        type metadata accessor for EntityResolutionRankingDirectFeedback();
        v36 = sub_1ABA96FA8();
        *(v36 + 16) = 2;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1ABAA4DA8();
          v14 = v40;
        }

        v38 = v14[2];
        v37 = v14[3];
        if (v38 >= v37 >> 1)
        {
          sub_1ABA7BBEC(v37);
          sub_1ABA90CC8();
          v14 = v41;
        }

        v28 &= v28 - 1;
        v14[2] = v38 + 1;
        v39 = &v14[2 * v38];
        v39[4] = v35;
        v39[5] = v36;
        v5 = v4;
      }

      while (v28);
    }
  }

LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
}

void sub_1ABBE001C()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v4 = v3;
  v43 = *MEMORY[0x1E69E9840];
  v39 = sub_1ABF21944();
  v5 = sub_1ABA7BB64(v39);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA809E8();
  v10 = v4 == 7105633 && v2 == 0xE300000000000000;
  if (!v10 && (sub_1ABF25054() & 1) == 0)
  {
    v41 = v4;
    v42 = v2;
    sub_1ABAE28EC();
    v20 = sub_1ABF24884();
    v21 = *(v20 + 16);
    if (v21)
    {
      v40 = MEMORY[0x1E69E7CC0];
      sub_1ABADDBD4();
      v13 = v40;
      v38 = (v7 + 8);
      v22 = (v20 + 40);
      do
      {
        v23 = *v22;
        v41 = *(v22 - 1);
        v42 = v23;

        sub_1ABF21934();
        v24 = sub_1ABF248A4();
        v26 = v25;
        (*v38)(v0, v39);

        v28 = v40[2];
        v27 = v40[3];
        if (v28 >= v27 >> 1)
        {
          sub_1ABA7BBEC(v27);
          sub_1ABADDBD4();
        }

        v40[2] = v28 + 1;
        v29 = &v40[2 * v28];
        v29[4] = v24;
        v29[5] = v26;
        v22 += 2;
        --v21;
      }

      while (v21);
      goto LABEL_21;
    }

LABEL_22:

    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_23;
  }

  static EntityResolutionViewDependencies.loadECRViews()(&v41);
  v11 = v41;
  if (!v41)
  {
    goto LABEL_27;
  }

  v12 = v41[2];
  if (!v12)
  {
    goto LABEL_22;
  }

  v41 = MEMORY[0x1E69E7CC0];
  sub_1ABADDBD4();
  v13 = v41;
  v14 = v11 + 5;
  do
  {
    v16 = *(v14 - 1);
    v15 = *v14;
    v41 = v13;
    v18 = v13[2];
    v17 = v13[3];

    if (v18 >= v17 >> 1)
    {
      sub_1ABADDBD4();
      v13 = v41;
    }

    v13[2] = v18 + 1;
    v19 = &v13[2 * v18];
    v19[4] = v16;
    v19[5] = v15;
    v14 += 4;
    --v12;
  }

  while (v12);
LABEL_21:

LABEL_23:
  v30 = [objc_allocWithZone(GDXPCInternalService) init];
  sub_1ABAFF390(0, &qword_1EB4D4CB0, off_1E7960440);
  v31 = sub_1ABBE042C(v13, 0);
  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v32 = sub_1ABF24794();
  v41 = 0;
  v33 = [v30 viewInfoWithViewQuery:v31 rows:v32 error:&v41];

  v34 = v41;
  if (v33)
  {
    sub_1ABAD219C(&qword_1EB4D3080, &unk_1ABF47A00);
    sub_1ABF240D4();
    v35 = v34;
  }

  else
  {
    v36 = v41;
    sub_1ABF21BE4();

    swift_willThrow();
  }

LABEL_27:
  v37 = *MEMORY[0x1E69E9840];
  sub_1ABA7BC90();
}

id sub_1ABBE042C(uint64_t a1, char a2)
{
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v4 = sub_1ABF240C4();

  v5 = [v3 initWithNames:v4 includeDependencies:a2 & 1];

  return v5;
}

id EntityResolutionTextClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id EntityResolutionTextClient.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EntityResolutionTextClient();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1ABBE059C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736572646461 && a2 == 0xE700000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1682531437 && a2 == 0xE400000000000000;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x49746361746E6F63 && a2 == 0xE900000000000064)
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

uint64_t sub_1ABBE06B4(char a1)
{
  if (!a1)
  {
    return 0x73736572646461;
  }

  if (a1 == 1)
  {
    return 1682531437;
  }

  return 0x49746361746E6F63;
}

void sub_1ABBE0708()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v4 = v3;
  v5 = sub_1ABAD219C(&qword_1EB4D4CB8, &qword_1ABF47AE0);
  v6 = sub_1ABA7BB64(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v21 - v11;
  v13 = v2[4];
  sub_1ABA93E20(v2, v2[3]);
  sub_1ABBE1458();
  sub_1ABF252C4();
  if (v0)
  {
    sub_1ABA84B54(v2);
  }

  else
  {
    sub_1ABAA0EC4();
    v14 = sub_1ABF24E14();
    v16 = v15;
    sub_1ABAA0EC4();
    v22 = sub_1ABF24E54();
    sub_1ABAA0EC4();
    v17 = sub_1ABF24E14();
    v18 = v12;
    v20 = v19;
    (*(v8 + 8))(v18, v5);
    sub_1ABA84B54(v2);
    *v4 = v14;
    v4[1] = v16;
    v4[2] = v22;
    v4[3] = v17;
    v4[4] = v20;
  }

  sub_1ABA7BC90();
}

uint64_t sub_1ABBE08F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABBE059C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABBE0918(uint64_t a1)
{
  v2 = sub_1ABBE1458();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBE0954(uint64_t a1)
{
  v2 = sub_1ABBE1458();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1ABBE0990@<D0>(uint64_t a1@<X8>)
{
  sub_1ABBE0708();
  if (!v1)
  {
    result = *&v4;
    *a1 = v4;
    *(a1 + 16) = v5;
    *(a1 + 32) = v6;
  }

  return result;
}

id sub_1ABBE09FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1ABF23BD4();

  if (a4)
  {
    v7 = sub_1ABF23BD4();
  }

  else
  {
    v7 = 0;
  }

  v8 = [v4 initWithMdId:v6 contactId:v7];

  return v8;
}

uint64_t sub_1ABBE0A90(uint64_t a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4D4C90, &unk_1ABF479F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1ABBE0AF8()
{
  result = qword_1EB4D4C98;
  if (!qword_1EB4D4C98)
  {
    sub_1ABAE2850(&qword_1EB4D1AA8, &qword_1ABF661A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4C98);
  }

  return result;
}

unint64_t sub_1ABBE0B5C()
{
  result = qword_1EB4D4CA8;
  if (!qword_1EB4D4CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4CA8);
  }

  return result;
}

uint64_t dispatch thunk of EntityResolutionTextClient.warmup(for:)()
{
  sub_1ABA7BC04();
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  v4 = *(v3 + 112);
  v12 = v4 + *v4;
  v5 = v4[1];
  v6 = swift_task_alloc();
  v7 = sub_1ABA8864C(v6);
  *v7 = v8;
  v9 = sub_1ABA97AE0(v7);

  return v10(v9);
}

uint64_t dispatch thunk of EntityResolutionTextClient.warmupSync(for:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  return (*(v3 + 120))();
}

uint64_t dispatch thunk of EntityResolutionTextClient.cooldown()()
{
  sub_1ABA7BC04();
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  v4 = *(v3 + 128);
  v10 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v7 = sub_1ABA8864C(v6);
  *v7 = v8;
  v7[1] = sub_1ABAB2788;

  return v10();
}

uint64_t dispatch thunk of EntityResolutionTextClient.cooldownSync()()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  return (*(v3 + 136))();
}

uint64_t dispatch thunk of EntityResolutionTextClient.resolveEntities(forRequest:)()
{
  sub_1ABA7BC04();
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  v4 = *(v3 + 144);
  v12 = v4 + *v4;
  v5 = v4[1];
  v6 = swift_task_alloc();
  v7 = sub_1ABA8864C(v6);
  *v7 = v8;
  v9 = sub_1ABA97AE0(v7);

  return v10(v9);
}

uint64_t sub_1ABBE0FE4()
{
  sub_1ABA7BBF8();
  v2 = v1;
  sub_1ABA7BC10();
  v4 = *(v3 + 16);
  v5 = *v0;
  sub_1ABA7BBC0();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2);
}

uint64_t dispatch thunk of EntityResolutionTextClient.resolveEntitiesSync(forRequest:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  return (*(v3 + 152))();
}

uint64_t dispatch thunk of EntityResolutionTextClient.resolveEntities(forBatchRequests:)()
{
  sub_1ABA7BC04();
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  v4 = *(v3 + 160);
  v12 = v4 + *v4;
  v5 = v4[1];
  v6 = swift_task_alloc();
  v7 = sub_1ABA8864C(v6);
  *v7 = v8;
  v9 = sub_1ABA97AE0(v7);

  return v10(v9);
}

uint64_t dispatch thunk of EntityResolutionTextClient.resolveEntitiesSync(forBatchRequests:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  return (*(v3 + 168))();
}

uint64_t dispatch thunk of EntityResolutionTextClient.generateMentions(forQuery:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  return (*(v3 + 176))();
}

uint64_t dispatch thunk of EntityResolutionTextClient.entityToText(forRequest:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  return (*(v3 + 184))();
}

uint64_t dispatch thunk of EntityResolutionTextClient.embedAddressQuery(address:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  return (*(v3 + 192))();
}

uint64_t dispatch thunk of EntityResolutionTextClient.addressContactCandidates(vectorToSearch:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  return (*(v3 + 200))();
}

uint64_t dispatch thunk of EntityResolutionTextClient.resolveAddressToContact(forRequest:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  return (*(v3 + 208))();
}

uint64_t dispatch thunk of EntityResolutionTextClient.recordDirectFeedback(withEngagedIds:rejectedIds:ignoredIds:neverPresentedIds:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  return (*(v3 + 216))();
}

uint64_t dispatch thunk of EntityResolutionTextClient.status(forViews:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  return (*(v3 + 224))();
}

unint64_t sub_1ABBE1458()
{
  result = qword_1EB4D4CC0;
  if (!qword_1EB4D4CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4CC0);
  }

  return result;
}

uint64_t sub_1ABBE14AC()
{
  sub_1ABA7BC04();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = sub_1ABA8864C(v4);
  *v5 = v6;
  v7 = sub_1ABA9937C(v5);

  return v8(v7);
}

uint64_t sub_1ABBE1540()
{
  _Block_release(*(v0 + 24));

  v1 = sub_1ABAB52E8();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1ABBE1580()
{
  sub_1ABA7BC04();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = sub_1ABA8864C(v4);
  *v5 = v6;
  v7 = sub_1ABA9937C(v5);

  return v8(v7);
}

uint64_t sub_1ABBE1614()
{
  sub_1ABA7BC04();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_1ABA8864C(v3);
  *v4 = v5;
  v4[1] = sub_1ABAB2788;

  return sub_1ABBDC3F4(v1, v2);
}

uint64_t sub_1ABBE16B8()
{
  sub_1ABA7BC04();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = sub_1ABA8864C(v4);
  *v5 = v6;
  v7 = sub_1ABA9937C(v5);

  return v8(v7);
}

_BYTE *storeEnumTagSinglePayload for VectorDbAddressContactResolverPayload.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1ABBE1848()
{
  result = qword_1EB4D4CE0;
  if (!qword_1EB4D4CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4CE0);
  }

  return result;
}

unint64_t sub_1ABBE18A0()
{
  result = qword_1EB4D4CE8;
  if (!qword_1EB4D4CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4CE8);
  }

  return result;
}

unint64_t sub_1ABBE18F8()
{
  result = qword_1EB4D4CF0;
  if (!qword_1EB4D4CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4CF0);
  }

  return result;
}

id sub_1ABBE1988()
{

  return objc_allocWithZone(v0);
}

id sub_1ABBE19A8(uint64_t a1, char a2)
{
  v4 = v2;
  if (a1 == 6)
  {
    __dst[3] = &type metadata for Features.FeatureFlag;
    __dst[4] = sub_1ABA8488C();
    LOBYTE(__dst[0]) = 25;
    v7 = sub_1ABF220A4();
    sub_1ABA84B54(__dst);
    if ((v7 & 1) == 0)
    {
      sub_1ABA8A488();
      sub_1ABB32C5C();
      v12 = swift_allocError();
      sub_1ABA93418(v12, v13);
LABEL_12:
      *(v14 + 16) = v15;
      swift_willThrow();
LABEL_17:
      type metadata accessor for EntityResolutionTextInProcessService();
      return swift_deallocPartialClassInstance();
    }
  }

  if (qword_1ED871B18 != -1)
  {
    sub_1ABA7BE6C();
  }

  v8 = sub_1ABF237F4();
  sub_1ABA7AA24(v8, qword_1ED871B20);
  v9 = sub_1ABF237D4();
  v10 = sub_1ABF24684();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134218240;
    *(v11 + 4) = a1;
    *(v11 + 12) = 1024;
    *(v11 + 14) = a2 & 1;
    _os_log_impl(&dword_1ABA78000, v9, v10, "ECR in process: initialized for mode: %ld and warmup: %{BOOL}d", v11, 0x12u);
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
  }

  *&v4[OBJC_IVAR____TtC20IntelligencePlatform36EntityResolutionTextInProcessService_defaultMode] = a1;
  switch(a1)
  {
    case 4:
    case 5:
      sub_1ABA8A488();
      break;
    default:
      break;
  }

  static EntityResolutionConfig.fromResource(configName:)();

  memcpy(__dst, __src, 0x8DuLL);
  if (sub_1ABBAA37C(__dst) == 1)
  {
    sub_1ABB32C5C();
    swift_allocError();
    *v14 = xmmword_1ABF47830;
    v15 = 9;
    goto LABEL_12;
  }

  memcpy(&v4[OBJC_IVAR____TtC20IntelligencePlatform36EntityResolutionTextInProcessService_defaultConfig], __dst, 0x8DuLL);
  type metadata accessor for EntityResolutionHandlerPool();
  v16 = swift_allocObject();
  type metadata accessor for EntityResolutionHandlerPool.EntityRerankerHandlerStore();
  swift_allocObject();
  *(v16 + 16) = sub_1ABBABA08();
  v17 = OBJC_IVAR____TtC20IntelligencePlatform36EntityResolutionTextInProcessService_modelPool;
  *&v4[OBJC_IVAR____TtC20IntelligencePlatform36EntityResolutionTextInProcessService_modelPool] = v16;
  v18 = type metadata accessor for ViewService();
  v19 = static ViewService.clientService.getter(v18);
  type metadata accessor for EntityResolutionServicePool();
  swift_allocObject();
  v20 = sub_1ABBD90C8(v19);
  v21 = OBJC_IVAR____TtC20IntelligencePlatform36EntityResolutionTextInProcessService_servicePool;
  *&v4[OBJC_IVAR____TtC20IntelligencePlatform36EntityResolutionTextInProcessService_servicePool] = v20;
  if (a2)
  {
    v22 = *&v4[v17];
    sub_1ABA817B8(v33);
    sub_1ABA817B8(v32);

    sub_1ABBA9514(v33, v31);
    sub_1ABBABFF0(v32);
    if (v3)
    {
      memcpy(v31, v32, 0x8DuLL);
      sub_1ABBA954C(v31);

      sub_1ABA817B8(v32);
      sub_1ABBA954C(v32);
      v24 = *&v4[v17];

      v25 = *&v4[v21];

      goto LABEL_17;
    }

    memcpy(v30, v32, 0x8DuLL);
    sub_1ABBA954C(v30);

    v23 = *&v4[v21];
    sub_1ABA817B8(v31);
    sub_1ABA817B8(v29);

    sub_1ABBA9514(v31, v28);
    sub_1ABBD954C(v29);
    memcpy(v28, v29, 0x8DuLL);
    sub_1ABBA954C(v28);
  }

  v27 = type metadata accessor for EntityResolutionTextInProcessService();
  v34.receiver = v4;
  v34.super_class = v27;
  return objc_msgSendSuper2(&v34, sel_init);
}

void *sub_1ABBE1E60(uint64_t a1)
{
  v3 = v1;
  result = sub_1ABBE3528(a1, __src);
  if (!v2)
  {
    memcpy(__dst, __src, 0x8DuLL);
    v5 = *(v1 + OBJC_IVAR____TtC20IntelligencePlatform36EntityResolutionTextInProcessService_modelPool);
    memcpy(v7, __src, 0x8DuLL);
    sub_1ABBABFF0(v7);
    v6 = *(v3 + OBJC_IVAR____TtC20IntelligencePlatform36EntityResolutionTextInProcessService_servicePool);
    memcpy(v7, __dst, 0x8DuLL);
    sub_1ABBD954C(v7);
    return sub_1ABBA954C(__dst);
  }

  return result;
}

void sub_1ABBE1F18()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC20IntelligencePlatform36EntityResolutionTextInProcessService_modelPool);
  sub_1ABBAC200();
  v3 = *(v1 + OBJC_IVAR____TtC20IntelligencePlatform36EntityResolutionTextInProcessService_servicePool);
  sub_1ABBD92CC();
}

void sub_1ABBE1F7C(void *a1)
{
  v82 = sub_1ABF23744();
  v2 = sub_1ABA7BB64(v82);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1ABA7AC18();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v77 - v11;
  v13 = sub_1ABF237F4();
  v14 = sub_1ABA7BB64(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA7BC58();
  v21 = v20 - v19;
  v22 = sub_1ABF23774();
  v23 = sub_1ABA7BB64(v22);
  v80 = v24;
  v81 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v23);
  sub_1ABA7BC58();
  v29 = v28 - v27;
  v79 = type metadata accessor for LogSignpost();
  v30 = sub_1ABA7BBB0(v79);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  sub_1ABA7BC58();
  v84 = a1;
  v85 = v34 - v33;
  if ([a1 mode] == 6 && (v89[3] = &type metadata for Features.FeatureFlag, v89[4] = sub_1ABA8488C(), LOBYTE(v89[0]) = 25, v35 = sub_1ABF220A4(), sub_1ABA84B54(v89), (v35 & 1) == 0))
  {
    sub_1ABA8A488();
    sub_1ABB32C5C();
    v67 = swift_allocError();
    sub_1ABA93418(v67, v68);
    *(v69 + 16) = v70;
    swift_willThrow();
  }

  else
  {
    if (qword_1ED871F20 != -1)
    {
      sub_1ABA7D608();
    }

    v36 = sub_1ABA7AA24(v13, qword_1ED871EF8);
    (*(v16 + 16))(v21, v36, v13);
    sub_1ABF23754();
    sub_1ABF23764();
    sub_1ABF23714();
    v37 = sub_1ABF23764();
    v38 = sub_1ABF24714();
    if (sub_1ABF247D4())
    {
      sub_1ABA8179C();
      v39 = swift_slowAlloc();
      *v39 = 0;
      v40 = sub_1ABF23724();
      _os_signpost_emit_with_name_impl(&dword_1ABA78000, v37, v38, v40, "ECR.TextInProcessService.resolve", "", v39, 2u);
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
    }

    v41 = v82;
    (*(v4 + 16))(v9, v12, v82);
    v42 = sub_1ABF237B4();
    v43 = *(v42 + 48);
    v44 = *(v42 + 52);
    swift_allocObject();
    sub_1ABF237A4();
    (*(v4 + 8))(v12, v41);
    v45 = v85;
    sub_1ABA8FFF0("ECR.TextInProcessService.resolve");
    (*(v80 + 32))(v45 + *(v79 + 24), v29, v81);
    Current = CFAbsoluteTimeGetCurrent();
    v47 = v83;
    v48 = v84;
    sub_1ABBAC31C(__src);
    if (v47)
    {
      sub_1ABBA4F10(v45);
    }

    else
    {
      v49 = memcpy(v90, __src, 0x7BuLL);
      if (qword_1ED870770 != -1)
      {
        v49 = swift_once();
      }

      v50 = *(qword_1ED87C428 + 16);
      MEMORY[0x1EEE9AC00](v49);
      *(&v77 - 2) = v51;
      *(&v77 - 1) = v52;
      os_unfair_lock_lock((v50 + 24));
      sub_1ABBD8B88((v50 + 16), v89);
      os_unfair_lock_unlock((v50 + 24));
      v53 = v89[0];
      v54 = [v48 mode];
      v55 = v78;
      sub_1ABBE3528(v54, v89);
      memcpy(v87, v89, sizeof(v87));
      type metadata accessor for EntityResolutionRequestManager();
      memcpy(v88, v90, 0x7BuLL);
      v56 = *(v55 + OBJC_IVAR____TtC20IntelligencePlatform36EntityResolutionTextInProcessService_servicePool);
      sub_1ABBC3BC8(v90, v86);

      sub_1ABBD7BEC();
      v58 = v57;
      sub_1ABBD2C28(v57, v59, v60, v61, v62, v63, v64, v65, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86[0], v86[1], v86[2]);
      v71 = v66;
      v72 = *(v66 + 16);
      if (v72)
      {
        v84 = v58;
        v88[0] = MEMORY[0x1E69E7CC0];
        sub_1ABF24BC4();
        v73 = 32;
        do
        {
          memcpy(v87, (v71 + v73), 0x58uLL);
          sub_1ABBAE1B4();
          sub_1ABF24B94();
          v74 = *(v88[0] + 16);
          sub_1ABF24BD4();
          sub_1ABF24BE4();
          sub_1ABF24BA4();
          v73 += 88;
          --v72;
        }

        while (v72);

        v75 = v88[0];
        v45 = v85;
      }

      else
      {

        v75 = MEMORY[0x1E69E7CC0];
      }

      v76 = sub_1ABAAB7C8(v75);
      sub_1ABBAB134(v76);

      sub_1ABAFF390(0, &unk_1ED86B938, off_1E795FEB8);
      sub_1ABBEA450(v75);

      sub_1ABBE2724(Current, v53, v45);

      sub_1ABBC3C00(v90);
      sub_1ABBA4F10(v45);
    }
  }
}

uint64_t sub_1ABBE2724(double a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1ABF23784();
  v27 = *(v5 - 8);
  v6 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1ABF23744();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v25[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1ABBAB2D0(a1);
  sub_1ABBAB520(0);
  v14 = type metadata accessor for LogSignpost();
  v15 = *a3;
  v16 = *(a3 + 16);
  v17 = *(a3 + 24);
  v18 = a3 + *(v14 + 24);
  v19 = sub_1ABF23764();
  sub_1ABF23794();
  v26 = sub_1ABF24704();
  result = sub_1ABF247D4();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v10 + 8))(v13, v9);
  }

  if ((v16 & 1) == 0)
  {
    if (v15)
    {
LABEL_9:

      sub_1ABF237C4();

      v21 = v27;
      if ((*(v27 + 88))(v8, v5) == *MEMORY[0x1E69E93E8])
      {
        v22 = "[Error] Interval already ended";
      }

      else
      {
        (*(v21 + 8))(v8, v5);
        v22 = "";
      }

      v23 = swift_slowAlloc();
      *v23 = 0;
      v24 = sub_1ABF23724();
      _os_signpost_emit_with_name_impl(&dword_1ABA78000, v19, v26, v24, v15, v22, v23, 2u);
      MEMORY[0x1AC5AB8B0](v23, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v15 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v15 & 0xFFFFF800) != 0xD800)
  {
    if (v15 >> 16 <= 0x10)
    {
      v15 = &v28;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1ABBE29F0(uint64_t a1)
{
  v4 = sub_1ABF23744();
  v5 = sub_1ABA7BB64(v4);
  v50 = v6;
  v51 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7AC18();
  v49 = v9 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_1ABA83850();
  v13 = sub_1ABA7BB64(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA7BC58();
  v20 = v19 - v18;
  v21 = sub_1ABF23774();
  v22 = sub_1ABA7BB64(v21);
  v47 = v23;
  v48 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v22);
  sub_1ABA7BC58();
  v28 = (v27 - v26);
  v46 = type metadata accessor for LogSignpost();
  v29 = sub_1ABA7BBB0(v46);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  sub_1ABA7BC58();
  v34 = v33 - v32;
  if (qword_1ED871F20 != -1)
  {
LABEL_17:
    sub_1ABA7D608();
  }

  v35 = sub_1ABA7AA24(v12, qword_1ED871EF8);
  (*(v15 + 16))(v20, v35, v12);
  sub_1ABF23754();
  sub_1ABF23764();
  sub_1ABF23714();
  v36 = sub_1ABF23764();
  v37 = sub_1ABF24714();
  if (sub_1ABF247D4())
  {
    sub_1ABA8179C();
    v38 = v34;
    v39 = swift_slowAlloc();
    *v39 = 0;
    v40 = sub_1ABF23724();
    _os_signpost_emit_with_name_impl(&dword_1ABA78000, v36, v37, v40, "ECR.TextInProcessService.resolveBatch", "", v39, 2u);
    v34 = v38;
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
  }

  (*(v50 + 16))(v49, v2, v51);
  v41 = sub_1ABF237B4();
  v42 = *(v41 + 48);
  v43 = *(v41 + 52);
  swift_allocObject();
  v12 = sub_1ABF237A4();
  (*(v50 + 8))(v2, v51);
  sub_1ABA8FFF0("ECR.TextInProcessService.resolveBatch");
  v51 = v34;
  (*(v47 + 32))(v34 + *(v46 + 24), v28, v48);
  v20 = MEMORY[0x1E69E7CC0];
  v52 = MEMORY[0x1E69E7CC0];
  v2 = sub_1ABAAB7C8(a1);
  v34 = 0;
  v15 = a1 & 0xC000000000000001;
  while (v2 != v34)
  {
    sub_1ABAAB7C0(v34, v15 == 0, a1);
    if (v15)
    {
      v44 = MEMORY[0x1AC5AA170](v34, a1);
    }

    else
    {
      v44 = *(a1 + 8 * v34 + 32);
    }

    v28 = v44;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
      goto LABEL_17;
    }

    sub_1ABBE1F7C(v44);
    if (v1)
    {

      break;
    }

    v12 = &v52;
    MEMORY[0x1AC5A9710]();
    if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1ABF24134();
    }

    sub_1ABF24184();
    v20 = v52;

    ++v34;
  }

  sub_1ABBE32B0(v51);
  sub_1ABBA4F10(v51);
  return v20;
}

uint64_t sub_1ABBE2E38(uint64_t a1, uint64_t a2)
{
  v54 = sub_1ABF23744();
  v3 = sub_1ABA7BB64(v54);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA7AC18();
  v53 = v8 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v11 = sub_1ABA83850();
  v12 = sub_1ABA7BB64(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA7BC58();
  v19 = v18 - v17;
  v52 = sub_1ABF23774();
  v20 = sub_1ABA7BB64(v52);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v20);
  sub_1ABA7BC58();
  v27 = v26 - v25;
  v51 = type metadata accessor for LogSignpost();
  v28 = sub_1ABA7BBB0(v51);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  sub_1ABA7BC58();
  v33 = v32 - v31;
  if (qword_1ED871F20 != -1)
  {
    sub_1ABA7D608();
  }

  v34 = sub_1ABA7AA24(v11, qword_1ED871EF8);
  (*(v14 + 16))(v19, v34, v11);
  sub_1ABF23754();
  sub_1ABF23764();
  sub_1ABF23714();
  v35 = sub_1ABF23764();
  v36 = sub_1ABF24714();
  if (sub_1ABF247D4())
  {
    sub_1ABA8179C();
    v37 = swift_slowAlloc();
    *v37 = 0;
    v38 = sub_1ABF23724();
    _os_signpost_emit_with_name_impl(&dword_1ABA78000, v35, v36, v38, "ECR.TextInProcessService.mention", "", v37, 2u);
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
  }

  (*(v5 + 16))(v53, v2, v54);
  v39 = sub_1ABF237B4();
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  swift_allocObject();
  v42 = sub_1ABF237A4();
  (*(v5 + 8))(v2, v54);
  *v33 = "ECR.TextInProcessService.mention";
  *(v33 + 8) = 32;
  *(v33 + 16) = 2;
  *(v33 + 24) = v42;
  (*(v22 + 32))(v33 + *(v51 + 24), v27, v52);
  v43 = sub_1ABE0CA30(a1, a2);
  if (v57)
  {
    sub_1ABBE32B0(v33);
    sub_1ABBA4F10(v33);
  }

  else
  {
    v44 = v43;
    if (v43)
    {
      v45 = *(v43 + 16);
      if (v45)
      {
        v59 = MEMORY[0x1E69E7CC0];
        sub_1ABF24BC4();
        v46 = 32;
        do
        {
          memcpy(__dst, (v44 + v46), sizeof(__dst));
          sub_1ABBADDF0();
          sub_1ABF24B94();
          v47 = *(v59 + 16);
          sub_1ABF24BD4();
          sub_1ABF24BE4();
          sub_1ABF24BA4();
          v46 += 80;
          --v45;
        }

        while (v45);

        v48 = v59;
      }

      else
      {

        v48 = MEMORY[0x1E69E7CC0];
      }

      sub_1ABAFF390(0, &qword_1EB4D4D18, off_1E79602F0);
      v49 = v48;
    }

    else
    {
      sub_1ABAFF390(0, &qword_1EB4D4D18, off_1E79602F0);
      v49 = MEMORY[0x1E69E7CC0];
    }

    v42 = sub_1ABBEA46C(v49);
    sub_1ABBE32B0(v33);
    sub_1ABBA4F10(v33);
  }

  return v42;
}

uint64_t sub_1ABBE32B0(uint64_t a1)
{
  v2 = sub_1ABF23784();
  v3 = sub_1ABA7BB64(v2);
  v30 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA7BC58();
  v9 = v8 - v7;
  v10 = sub_1ABF23744();
  v11 = sub_1ABA7BB64(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABA7BC58();
  v18 = v17 - v16;
  v19 = type metadata accessor for LogSignpost();
  v20 = *a1;
  v21 = *(a1 + 16);
  v22 = *(a1 + 24);
  v23 = a1 + *(v19 + 24);
  v24 = sub_1ABF23764();
  sub_1ABF23794();
  v29 = sub_1ABF24704();
  result = sub_1ABF247D4();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v13 + 8))(v18, v10);
  }

  if ((v21 & 1) == 0)
  {
    if (v20)
    {
LABEL_9:

      sub_1ABF237C4();

      if ((*(v30 + 88))(v9, v2) == *MEMORY[0x1E69E93E8])
      {
        v26 = "[Error] Interval already ended";
      }

      else
      {
        (*(v30 + 8))(v9, v2);
        v26 = "";
      }

      sub_1ABA8179C();
      v27 = swift_slowAlloc();
      *v27 = 0;
      v28 = sub_1ABF23724();
      _os_signpost_emit_with_name_impl(&dword_1ABA78000, v24, v29, v28, v20, v26, v27, 2u);
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v20 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v20 & 0xFFFFF800) != 0xD800)
  {
    if (v20 >> 16 <= 0x10)
    {
      v20 = &v31;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

void *sub_1ABBE3528@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(v2 + OBJC_IVAR____TtC20IntelligencePlatform36EntityResolutionTextInProcessService_defaultMode) == a1)
  {
    memcpy(__dst, (v2 + OBJC_IVAR____TtC20IntelligencePlatform36EntityResolutionTextInProcessService_defaultConfig), 0x8DuLL);
    memcpy(a2, (v2 + OBJC_IVAR____TtC20IntelligencePlatform36EntityResolutionTextInProcessService_defaultConfig), 0x8DuLL);
    return sub_1ABBA9514(__dst, &v9);
  }

  else
  {
    if (qword_1ED871B18 != -1)
    {
      sub_1ABA7BE6C();
    }

    v5 = sub_1ABF237F4();
    sub_1ABA7AA24(v5, qword_1ED871B20);
    v6 = sub_1ABF237D4();
    v7 = sub_1ABF24664();
    if (os_log_type_enabled(v6, v7))
    {
      sub_1ABA8179C();
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1ABA78000, v6, v7, "The mode specified here should be the same as initialized. Otherwise, the processing takes longer time.", v8, 2u);
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
    }

    return sub_1ABBE4D4C(a2);
  }
}

id sub_1ABBE36AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EntityResolutionTextInProcessService();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1ABBE3814(uint64_t a1, char a2)
{
  v3 = v2;
  v28[1] = *MEMORY[0x1E69E9840];
  *(v3 + 16) = [objc_allocWithZone(GDXPCEntityResolutionService) init];
  if (a2)
  {
    if (qword_1ED871B18 != -1)
    {
      sub_1ABA7D4EC();
      swift_once();
    }

    v6 = sub_1ABF237F4();
    sub_1ABA7AA24(v6, qword_1ED871B20);
    v7 = sub_1ABF237D4();
    v8 = sub_1ABF24684();
    if (os_log_type_enabled(v7, v8))
    {
      sub_1ABA8179C();
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1ABA78000, v7, v8, "ECR XPC: initialized without warmup.", v9, 2u);
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
    }
  }

  else
  {
    if (qword_1ED871B18 != -1)
    {
      sub_1ABA7D4EC();
      swift_once();
    }

    v10 = sub_1ABF237F4();
    sub_1ABA7AA24(v10, qword_1ED871B20);
    v11 = sub_1ABF237D4();
    v12 = sub_1ABF24684();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 134217984;
      *(v13 + 4) = a1;
      _os_log_impl(&dword_1ABA78000, v11, v12, "ECR XPC: initialized and warmed up for mode: %ld.", v13, 0xCu);
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
    }

    v14 = *(v3 + 16);
    v28[0] = 0;
    if ([v14 warmupForMode:a1 error:v28])
    {
      v15 = v28[0];
    }

    else
    {
      v16 = v28[0];
      v17 = sub_1ABF21BE4();

      swift_willThrow();
      v18 = v17;
      v19 = sub_1ABF237D4();
      v20 = sub_1ABF24664();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v28[0] = v22;
        *v21 = 136315138;
        swift_getErrorValue();
        v23 = sub_1ABF25154();
        v25 = sub_1ABADD6D8(v23, v24, v28);

        *(v21 + 4) = v25;
        _os_log_impl(&dword_1ABA78000, v19, v20, "Service is initialized but warmup failed with error: %s.", v21, 0xCu);
        sub_1ABA84B54(v22);
        sub_1ABA7BDD8();
        MEMORY[0x1AC5AB8B0]();
        sub_1ABA7BDD8();
        MEMORY[0x1AC5AB8B0]();
      }

      else
      {
      }
    }
  }

  v26 = *MEMORY[0x1E69E9840];
  return v3;
}

id sub_1ABBE3B38(uint64_t a1)
{
  v2 = v1;
  v12[1] = *MEMORY[0x1E69E9840];
  if (qword_1ED871B18 != -1)
  {
    sub_1ABA7D4EC();
    swift_once();
  }

  v4 = sub_1ABF237F4();
  sub_1ABA7AA24(v4, qword_1ED871B20);
  v5 = sub_1ABF237D4();
  v6 = sub_1ABF24684();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = a1;
    _os_log_impl(&dword_1ABA78000, v5, v6, "ECR XPC: initialized and warmed up for mode: %ld.", v7, 0xCu);
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
  }

  v8 = *(v2 + 16);
  v12[0] = 0;
  if ([v8 warmupForMode:a1 error:v12])
  {
    result = v12[0];
  }

  else
  {
    v10 = v12[0];
    sub_1ABF21BE4();

    result = swift_willThrow();
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1ABBE3CA4()
{
  sub_1ABB32C5C();
  swift_allocError();
  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 16) = 1;
  return swift_willThrow();
}

id sub_1ABBE3CF8(void *a1)
{
  v58[5] = *MEMORY[0x1E69E9840];
  v55 = sub_1ABF23744();
  v3 = sub_1ABA7BB64(v55);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA7AC18();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_1ABA83850();
  v13 = sub_1ABA7BB64(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA7BC58();
  v20 = v19 - v18;
  v21 = sub_1ABF23774();
  v22 = sub_1ABA7BB64(v21);
  v53 = v23;
  v54 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v22);
  sub_1ABA7BC58();
  v28 = v27 - v26;
  v52 = type metadata accessor for LogSignpost();
  v29 = sub_1ABA7BBB0(v52);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  sub_1ABA7BC58();
  v34 = v33 - v32;
  v57 = a1;
  if ([a1 mode] == 6 && (v58[3] = &type metadata for Features.FeatureFlag, v58[4] = sub_1ABA8488C(), LOBYTE(v58[0]) = 25, v35 = sub_1ABF220A4(), sub_1ABA84B54(v58), (v35 & 1) == 0))
  {
    v47 = 0x80000001ABF8AED0;
    sub_1ABB32C5C();
    swift_allocError();
    *v49 = 0xD00000000000003FLL;
    *(v49 + 8) = 0x80000001ABF8AED0;
    *(v49 + 16) = 8;
    swift_willThrow();
  }

  else
  {
    if (qword_1ED871F20 != -1)
    {
      sub_1ABA7D608();
    }

    v36 = sub_1ABA7AA24(v12, qword_1ED871EF8);
    (*(v15 + 16))(v20, v36, v12);
    sub_1ABF23754();
    sub_1ABF23764();
    sub_1ABF23714();
    v37 = sub_1ABF23764();
    v38 = sub_1ABF24714();
    if (sub_1ABF247D4())
    {
      sub_1ABA8179C();
      v39 = swift_slowAlloc();
      *v39 = 0;
      v40 = sub_1ABF23724();
      _os_signpost_emit_with_name_impl(&dword_1ABA78000, v37, v38, v40, "ECR.TextXPCService.resolve", "", v39, 2u);
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
    }

    (*(v5 + 16))(v10, v1, v55);
    v41 = sub_1ABF237B4();
    v42 = *(v41 + 48);
    v43 = *(v41 + 52);
    swift_allocObject();
    v44 = sub_1ABF237A4();
    (*(v5 + 8))(v1, v55);
    *v34 = "ECR.TextXPCService.resolve";
    *(v34 + 8) = 26;
    *(v34 + 16) = 2;
    *(v34 + 24) = v44;
    (*(v53 + 32))(v34 + *(v52 + 24), v28, v54);
    v45 = *(v56 + 16);
    v58[0] = 0;
    v46 = [v45 submitQuery:v57 withError:v58];
    if (v46)
    {
      v47 = v46;
      v48 = v58[0];
    }

    else
    {
      v47 = v58[0];
      sub_1ABF21BE4();

      swift_willThrow();
    }

    sub_1ABBE4A08(v34);
    sub_1ABBA4F10(v34);
  }

  v50 = *MEMORY[0x1E69E9840];
  return v47;
}

uint64_t sub_1ABBE418C(unint64_t a1)
{
  v3 = sub_1ABF23744();
  v4 = sub_1ABA7BB64(v3);
  v53 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7AC18();
  v52 = v8 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v11 = sub_1ABA83850();
  v12 = sub_1ABA7BB64(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA7BC58();
  v19 = v18 - v17;
  v20 = sub_1ABF23774();
  v21 = sub_1ABA7BB64(v20);
  v50 = v22;
  v51 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1ABA7BC58();
  v27 = (v26 - v25);
  v49 = type metadata accessor for LogSignpost();
  v28 = sub_1ABA7BBB0(v49);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  sub_1ABA7BC58();
  v33 = v32 - v31;
  if (qword_1ED871F20 != -1)
  {
LABEL_19:
    sub_1ABA7D608();
  }

  v34 = sub_1ABA7AA24(v11, qword_1ED871EF8);
  (*(v14 + 16))(v19, v34, v11);
  sub_1ABF23754();
  sub_1ABF23764();
  sub_1ABF23714();
  v35 = sub_1ABF23764();
  v36 = sub_1ABF24714();
  if (sub_1ABF247D4())
  {
    sub_1ABA8179C();
    v37 = v3;
    v38 = swift_slowAlloc();
    *v38 = 0;
    v39 = sub_1ABF23724();
    _os_signpost_emit_with_name_impl(&dword_1ABA78000, v35, v36, v39, "ECR.TextXPCService.resolveBatch", "", v38, 2u);
    v3 = v37;
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
  }

  (*(v53 + 16))(v52, v2, v3);
  v40 = sub_1ABF237B4();
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  swift_allocObject();
  v43 = sub_1ABF237A4();
  (*(v53 + 8))(v2, v3);
  *v33 = "ECR.TextXPCService.resolveBatch";
  *(v33 + 8) = 31;
  *(v33 + 16) = 2;
  *(v33 + 24) = v43;
  v53 = v33;
  (*(v50 + 32))(v33 + *(v49 + 24), v27, v51);
  v44 = MEMORY[0x1E69E7CC0];
  v55 = MEMORY[0x1E69E7CC0];
  v11 = a1;
  v19 = sub_1ABAAB7C8(a1);
  v2 = 0;
  v14 = a1 & 0xC000000000000001;
  v33 = a1 & 0xFFFFFFFFFFFFFF8;
  while (v19 != v2)
  {
    if (v14)
    {
      v45 = MEMORY[0x1AC5AA170](v2, a1);
    }

    else
    {
      if (v2 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v45 = *(a1 + 8 * v2 + 32);
    }

    v27 = v45;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v46 = sub_1ABBE3CF8(v45);
    if (v1)
    {

      break;
    }

    v47 = v46;
    v11 = &v55;
    MEMORY[0x1AC5A9710]();
    v3 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3 >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1ABF24134();
    }

    sub_1ABF24184();

    v44 = v55;
    ++v2;
  }

  sub_1ABBE4A08(v53);
  sub_1ABBA4F10(v53);
  return v44;
}

id sub_1ABBE45EC(uint64_t a1)
{
  v64[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1ABF23744();
  v3 = sub_1ABA7BB64(v2);
  v60 = v4;
  v61 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA7AC18();
  v59 = v7 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v55 - v10;
  v12 = sub_1ABF237F4();
  v13 = sub_1ABA7BB64(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA7BC58();
  v20 = v19 - v18;
  v21 = sub_1ABF23774();
  v22 = sub_1ABA7BB64(v21);
  v57 = v23;
  v58 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v22);
  sub_1ABA7BC58();
  v28 = v27 - v26;
  v56 = type metadata accessor for LogSignpost();
  v29 = sub_1ABA7BBB0(v56);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  sub_1ABA7BC58();
  v34 = v33 - v32;
  if (qword_1ED871F20 != -1)
  {
    sub_1ABA7D608();
  }

  v35 = sub_1ABA7AA24(v12, qword_1ED871EF8);
  (*(v15 + 16))(v20, v35, v12);
  sub_1ABF23754();
  sub_1ABF23764();
  sub_1ABF23714();
  v36 = sub_1ABF23764();
  v37 = sub_1ABF24714();
  if (sub_1ABF247D4())
  {
    sub_1ABA8179C();
    v38 = swift_slowAlloc();
    v55[1] = a1;
    v39 = v38;
    *v38 = 0;
    v40 = sub_1ABF23724();
    _os_signpost_emit_with_name_impl(&dword_1ABA78000, v36, v37, v40, "ECR.TextXPCService.mention", "", v39, 2u);
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
  }

  v41 = v60;
  v42 = v61;
  (*(v60 + 16))(v59, v11, v61);
  v43 = sub_1ABF237B4();
  v44 = *(v43 + 48);
  v45 = *(v43 + 52);
  swift_allocObject();
  v46 = sub_1ABF237A4();
  (*(v41 + 8))(v11, v42);
  *v34 = "ECR.TextXPCService.mention";
  *(v34 + 8) = 26;
  *(v34 + 16) = 2;
  *(v34 + 24) = v46;
  (*(v57 + 32))(v34 + *(v56 + 24), v28, v58);
  v47 = *(v62 + 16);
  v48 = sub_1ABF23BD4();
  v64[0] = 0;
  v49 = [v47 generateMentionsForQuery:v48 error:v64];

  if (v49)
  {
    v50 = v64[0];
  }

  else
  {
    v51 = v64[0];
    v52 = sub_1ABF21BE4();

    v63 = v52;
    swift_willThrow();
  }

  sub_1ABBE4A08(v34);
  sub_1ABBA4F10(v34);
  v53 = *MEMORY[0x1E69E9840];
  return v49;
}

uint64_t sub_1ABBE4A08(uint64_t a1)
{
  v2 = sub_1ABF23784();
  v3 = sub_1ABA7BB64(v2);
  v30 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA7BC58();
  v9 = v8 - v7;
  v10 = sub_1ABF23744();
  v11 = sub_1ABA7BB64(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABA7BC58();
  v18 = v17 - v16;
  v19 = type metadata accessor for LogSignpost();
  v20 = *a1;
  v21 = *(a1 + 16);
  v22 = *(a1 + 24);
  v23 = a1 + *(v19 + 24);
  v24 = sub_1ABF23764();
  sub_1ABF23794();
  v29 = sub_1ABF24704();
  result = sub_1ABF247D4();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v13 + 8))(v18, v10);
  }

  if ((v21 & 1) == 0)
  {
    if (v20)
    {
LABEL_9:

      sub_1ABF237C4();

      if ((*(v30 + 88))(v9, v2) == *MEMORY[0x1E69E93E8])
      {
        v26 = "[Error] Interval already ended";
      }

      else
      {
        (*(v30 + 8))(v9, v2);
        v26 = "";
      }

      sub_1ABA8179C();
      v27 = swift_slowAlloc();
      *v27 = 0;
      v28 = sub_1ABF23724();
      _os_signpost_emit_with_name_impl(&dword_1ABA78000, v24, v29, v28, v20, v26, v27, 2u);
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v20 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v20 & 0xFFFFF800) != 0xD800)
  {
    if (v20 >> 16 <= 0x10)
    {
      v20 = &v31;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

void *sub_1ABBE4D4C@<X0>(void *a1@<X8>)
{
  static EntityResolutionConfig.fromResource(configName:)();

  if (sub_1ABBAA37C(v4) != 1)
  {
    return memcpy(a1, v4, 0x8DuLL);
  }

  sub_1ABB32C5C();
  swift_allocError();
  *v2 = xmmword_1ABF47830;
  *(v2 + 16) = 9;
  return swift_willThrow();
}

void static EntityResolutionViewDependencies.loadECRViews()(uint64_t **a1@<X8>)
{
  v2 = sub_1ABF21CF4();
  v3 = sub_1ABA7BB64(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v3);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v38 - v11;
  if (qword_1ED86E3C0 != -1)
  {
    swift_once();
  }

  if (!qword_1ED86E3C8)
  {
    if (qword_1ED871B18 != -1)
    {
      sub_1ABA7BE6C();
    }

    v29 = sub_1ABF237F4();
    sub_1ABA7AA24(v29, qword_1ED871B20);
    v30 = sub_1ABF237D4();
    v31 = sub_1ABF24664();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_1ABA78000, v30, v31, "Can't find the IntelligencePlatformTestViews bundle", v32, 2u);
      sub_1ABA80A00();
    }

    goto LABEL_20;
  }

  v13 = qword_1ED86E3C8;
  v14 = sub_1ABF23BD4();
  v15 = sub_1ABF23BD4();
  v16 = [v13 URLForResource:v14 withExtension:v15];

  if (!v16)
  {
    if (qword_1ED871B18 != -1)
    {
      sub_1ABA7BE6C();
    }

    v33 = sub_1ABF237F4();
    sub_1ABA7AA24(v33, qword_1ED871B20);
    v34 = sub_1ABF237D4();
    v35 = sub_1ABF24664();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_1ABA78000, v34, v35, "Failed to get the correct URL for viewDependencies.json", v36, 2u);
      sub_1ABA80A00();
    }

LABEL_20:
    v17 = 0;
    goto LABEL_24;
  }

  sub_1ABF21CA4();

  sub_1ABBA5D18();
  v17 = v41;
  if (v41 == 1)
  {
    v40 = a1;
    if (qword_1ED871B18 != -1)
    {
      sub_1ABA7BE6C();
    }

    v18 = sub_1ABF237F4();
    sub_1ABA7AA24(v18, qword_1ED871B20);
    (*(v5 + 16))(v10, v12, v2);
    v19 = sub_1ABF237D4();
    v20 = sub_1ABF24664();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v38 = v21;
      v39 = swift_slowAlloc();
      v41 = v39;
      *v21 = 136315138;
      sub_1ABAE27F8();
      v22 = sub_1ABF24FF4();
      v24 = v23;
      v25 = *(v5 + 8);
      v25(v10, v2);
      v26 = sub_1ABADD6D8(v22, v24, &v41);

      v27 = v38;
      *(v38 + 1) = v26;
      _os_log_impl(&dword_1ABA78000, v19, v20, "Failed to load config data from %s", v27, 0xCu);
      v28 = v39;
      sub_1ABA84B54(v39);
      MEMORY[0x1AC5AB8B0](v28, -1, -1);
      sub_1ABA80A00();

      v25(v12, v2);
    }

    else
    {

      v37 = *(v5 + 8);
      v37(v10, v2);
      v37(v12, v2);
    }

    v17 = 0;
    a1 = v40;
  }

  else
  {
    (*(v5 + 8))(v12, v2);
  }

LABEL_24:
  *a1 = v17;
}