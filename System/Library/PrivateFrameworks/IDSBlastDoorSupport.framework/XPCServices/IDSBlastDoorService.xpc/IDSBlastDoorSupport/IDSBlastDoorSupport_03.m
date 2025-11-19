uint64_t sub_100060350(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for IDSMadridProtocolDeliveryContext(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for IDSMadridProtocolDeliveryContext(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for IDSMadridProtocolDeliveryContext(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
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

__n128 sub_10006043C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100060450(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 42))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1000604AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 sub_10006051C(uint64_t a1, uint64_t a2)
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

uint64_t sub_100060530(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 56);
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

uint64_t sub_10006058C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2;
    }
  }

  return result;
}

__n128 sub_100060600(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_10006062C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 105))
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

uint64_t sub_100060688(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 - 12;
    if (a3 >= 0xC)
    {
      *(result + 105) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 105) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

uint64_t sub_100060704(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_100060760(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for IDSMadridProtocolPayload.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x65)
  {
    goto LABEL_17;
  }

  if (a2 + 155 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 155) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 155;
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

      return (*a1 | (v4 << 8)) - 155;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 155;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x9C;
  v8 = v6 - 156;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IDSMadridProtocolPayload.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 155 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 155) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x65)
  {
    v4 = 0;
  }

  if (a2 > 0x64)
  {
    v5 = ((a2 - 101) >> 8) + 1;
    *result = a2 - 101;
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
    *result = a2 - 101;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100060994()
{
  result = qword_1000D9A40;
  if (!qword_1000D9A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9A40);
  }

  return result;
}

unint64_t sub_1000609EC()
{
  result = qword_1000D9A48;
  if (!qword_1000D9A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9A48);
  }

  return result;
}

unint64_t sub_100060A44()
{
  result = qword_1000D9A50;
  if (!qword_1000D9A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9A50);
  }

  return result;
}

unint64_t sub_100060A9C()
{
  result = qword_1000D9A58;
  if (!qword_1000D9A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9A58);
  }

  return result;
}

unint64_t sub_100060AF4()
{
  result = qword_1000D9A60;
  if (!qword_1000D9A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9A60);
  }

  return result;
}

unint64_t sub_100060B4C()
{
  result = qword_1000D9A68;
  if (!qword_1000D9A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9A68);
  }

  return result;
}

unint64_t sub_100060BA4()
{
  result = qword_1000D9A70;
  if (!qword_1000D9A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9A70);
  }

  return result;
}

unint64_t sub_100060BFC()
{
  result = qword_1000D9A78;
  if (!qword_1000D9A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9A78);
  }

  return result;
}

unint64_t sub_100060C54()
{
  result = qword_1000D9A80;
  if (!qword_1000D9A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9A80);
  }

  return result;
}

unint64_t sub_100060CAC()
{
  result = qword_1000D9A88;
  if (!qword_1000D9A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9A88);
  }

  return result;
}

unint64_t sub_100060D04()
{
  result = qword_1000D9A90;
  if (!qword_1000D9A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9A90);
  }

  return result;
}

unint64_t sub_100060D5C()
{
  result = qword_1000D9A98;
  if (!qword_1000D9A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9A98);
  }

  return result;
}

unint64_t sub_100060DB4()
{
  result = qword_1000D9AA0;
  if (!qword_1000D9AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9AA0);
  }

  return result;
}

unint64_t sub_100060E0C()
{
  result = qword_1000D9AA8;
  if (!qword_1000D9AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9AA8);
  }

  return result;
}

unint64_t sub_100060E64()
{
  result = qword_1000D9AB0;
  if (!qword_1000D9AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9AB0);
  }

  return result;
}

unint64_t sub_100060EBC()
{
  result = qword_1000D9AB8;
  if (!qword_1000D9AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9AB8);
  }

  return result;
}

unint64_t sub_100060F14()
{
  result = qword_1000D9AC0;
  if (!qword_1000D9AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9AC0);
  }

  return result;
}

unint64_t sub_100060F6C()
{
  result = qword_1000D9AC8;
  if (!qword_1000D9AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9AC8);
  }

  return result;
}

unint64_t sub_100060FC4()
{
  result = qword_1000D9AD0;
  if (!qword_1000D9AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9AD0);
  }

  return result;
}

unint64_t sub_10006101C()
{
  result = qword_1000D9AD8;
  if (!qword_1000D9AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9AD8);
  }

  return result;
}

unint64_t sub_100061074()
{
  result = qword_1000D9AE0;
  if (!qword_1000D9AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9AE0);
  }

  return result;
}

unint64_t sub_100061268()
{
  result = qword_1000D9B18;
  if (!qword_1000D9B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9B18);
  }

  return result;
}

uint64_t sub_1000612BC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1000053DC(&qword_1000D9940, &qword_1000AC250);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100061328()
{
  result = qword_1000D9B28;
  if (!qword_1000D9B28)
  {
    sub_1000053DC(&qword_1000D9950, &qword_1000AC258);
    sub_1000613AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9B28);
  }

  return result;
}

unint64_t sub_1000613AC()
{
  result = qword_1000D9B30;
  if (!qword_1000D9B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9B30);
  }

  return result;
}

unint64_t sub_100061400()
{
  result = qword_1000D9B38;
  if (!qword_1000D9B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9B38);
  }

  return result;
}

unint64_t sub_100061454()
{
  result = qword_1000D9B40;
  if (!qword_1000D9B40)
  {
    sub_1000053DC(&qword_1000D9978, &qword_1000AC268);
    sub_1000614D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9B40);
  }

  return result;
}

unint64_t sub_1000614D8()
{
  result = qword_1000D9B48;
  if (!qword_1000D9B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9B48);
  }

  return result;
}

unint64_t sub_10006152C()
{
  result = qword_1000D9B50;
  if (!qword_1000D9B50)
  {
    sub_1000053DC(&qword_1000D9990, &qword_1000AC270);
    sub_1000615B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9B50);
  }

  return result;
}

unint64_t sub_1000615B0()
{
  result = qword_1000D9B58;
  if (!qword_1000D9B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9B58);
  }

  return result;
}

unint64_t sub_100061604()
{
  result = qword_1000D9B60;
  if (!qword_1000D9B60)
  {
    sub_1000053DC(&qword_1000D99A8, &qword_1000AC278);
    sub_100061688();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9B60);
  }

  return result;
}

unint64_t sub_100061688()
{
  result = qword_1000D9B68;
  if (!qword_1000D9B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9B68);
  }

  return result;
}

unint64_t sub_1000616DC()
{
  result = qword_1000D9B70;
  if (!qword_1000D9B70)
  {
    sub_1000053DC(&qword_1000D99C0, &qword_1000AC280);
    sub_100061760();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9B70);
  }

  return result;
}

unint64_t sub_100061760()
{
  result = qword_1000D9B78;
  if (!qword_1000D9B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9B78);
  }

  return result;
}

uint64_t sub_100061828(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000015;
  v4 = 0x80000001000A1310;
  v5 = 0xE100000000000000;
  if (v2 == 1)
  {
    v5 = 0x80000001000A1310;
  }

  else
  {
    v3 = 118;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 112;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE100000000000000;
  }

  v8 = 0xD000000000000015;
  if (*a2 != 1)
  {
    v8 = 118;
    v4 = 0xE100000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 112;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE100000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1000A0BD0();
  }

  return v11 & 1;
}

Swift::Int sub_100061904()
{
  v1 = *v0;
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_100061994()
{
  *v0;
  *v0;
  sub_1000A05B0();
}

Swift::Int sub_100061A10()
{
  v1 = *v0;
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_100061A9C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100061E50(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_100061ACC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE100000000000000;
  v4 = 0x80000001000A1310;
  v5 = 0xD000000000000015;
  if (v2 != 1)
  {
    v5 = 118;
    v4 = 0xE100000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 112;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_100061B18()
{
  v1 = 0xD000000000000015;
  if (*v0 != 1)
  {
    v1 = 118;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 112;
  }
}

uint64_t sub_100061B60@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100061E50(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100061B88(uint64_t a1)
{
  v2 = sub_100061DA0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100061BC4(uint64_t a1)
{
  v2 = sub_100061DA0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t FMFMappingPacketSchema.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000017BC(&qword_1000D9B80, &qword_1000AE850);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_100061DA0();
  sub_1000A0CE0();
  v11 = *v3;
  v12 = v3[1];
  v18[15] = 0;
  sub_1000A0B30();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v18[14] = 1;
  sub_1000A0B30();
  v16 = v3[4];
  v17 = v3[5];
  v18[13] = 2;
  sub_1000A0B30();
  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_100061DA0()
{
  result = qword_1000D9B88;
  if (!qword_1000D9B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9B88);
  }

  return result;
}

double FMFMappingPacketSchema.init(from:)@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100061E9C(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_100061E50(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000CD3C0;
  v6._object = a2;
  v4 = sub_1000A08F0(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100061E9C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1000017BC(&qword_1000D9BA8, &qword_1000AEA48);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_100061DA0();
  sub_1000A0CD0();
  if (v2)
  {
    return sub_100002308(a1);
  }

  v27 = 0;
  v11 = sub_1000A09D0();
  v13 = v12;
  v24 = v11;
  v26 = 1;
  v22 = sub_1000A09D0();
  v23 = v14;
  v25 = 2;
  v15 = sub_1000A09D0();
  v16 = v9;
  v18 = v17;
  (*(v6 + 8))(v16, v5);
  result = sub_100002308(a1);
  *a2 = v24;
  a2[1] = v13;
  v20 = v23;
  a2[2] = v22;
  a2[3] = v20;
  a2[4] = v15;
  a2[5] = v18;
  return result;
}

__n128 sub_1000620E8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1000620FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_100062144(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1000621B4()
{
  result = qword_1000D9B90;
  if (!qword_1000D9B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9B90);
  }

  return result;
}

unint64_t sub_10006220C()
{
  result = qword_1000D9B98;
  if (!qword_1000D9B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9B98);
  }

  return result;
}

unint64_t sub_100062264()
{
  result = qword_1000D9BA0;
  if (!qword_1000D9BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9BA0);
  }

  return result;
}

uint64_t sub_1000622B8()
{
  v1 = sub_10009F270();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_10009F260();
  sub_1000624D0();
  sub_10009F250();
  if (v0)
  {
  }

  v5[6] = v13;
  v5[7] = v14;
  v5[8] = v15;
  v6 = v16;
  v5[2] = v9;
  v5[3] = v10;
  v5[4] = v11;
  v5[5] = v12;
  v5[0] = v7;
  v5[1] = v8;
  v17 = v7;
  sub_100005750(*(&v10 + 1), v11);
  sub_100005750(*(&v7 + 1), v8);

  sub_100005750(v12, *(&v12 + 1));
  sub_100005750(*(&v13 + 1), v14);
  sub_10009F750();

  return sub_100043F3C(v5);
}

unint64_t sub_1000624D0()
{
  result = qword_1000D9BB0;
  if (!qword_1000D9BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9BB0);
  }

  return result;
}

uint64_t sub_100062524(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "IDSProtoBufDataKey";
  v4 = 0xD000000000000018;
  if (v2 == 1)
  {
    v5 = 0xD000000000000018;
  }

  else
  {
    v5 = 0xD000000000000012;
  }

  if (v2 == 1)
  {
    v6 = "IDSProtoBufDataKey";
  }

  else
  {
    v6 = "IDSProtoBufIsResponseKey";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000012;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = "is-u-plus-one-key";
  }

  if (*a2 != 1)
  {
    v4 = 0xD000000000000012;
    v3 = "IDSProtoBufIsResponseKey";
  }

  if (*a2)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xD000000000000012;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = "is-u-plus-one-key";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1000A0BD0();
  }

  return v11 & 1;
}

Swift::Int sub_1000625F8()
{
  v1 = *v0;
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_100062690()
{
  *v0;
  *v0;
  sub_1000A05B0();
}

Swift::Int sub_100062714()
{
  v1 = *v0;
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_1000627A8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100062BD0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_1000627D8(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000012;
  v3 = "IDSProtoBufDataKey";
  v4 = 0xD000000000000018;
  if (*v1 != 1)
  {
    v4 = 0xD000000000000012;
    v3 = "IDSProtoBufIsResponseKey";
  }

  if (*v1)
  {
    v2 = v4;
    v5 = v3;
  }

  else
  {
    v5 = "is-u-plus-one-key";
  }

  *a1 = v2;
  a1[1] = v5 | 0x8000000000000000;
}

unint64_t sub_100062830()
{
  v1 = 0xD000000000000018;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000012;
  }

  *v0;
  return result;
}

uint64_t sub_100062884@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100062BD0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000628AC(uint64_t a1)
{
  v2 = sub_100062AF4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000628E8(uint64_t a1)
{
  v2 = sub_100062AF4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ActivitySharingLegacyMessageSchema.encode(to:)(void *a1, uint64_t a2, unint64_t a3, int a4, uint64_t a5)
{
  v16[1] = a5;
  v19 = a4;
  v9 = sub_1000017BC(&qword_1000D9BB8, &qword_1000AEA50);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - v12;
  v14 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_100062AF4();
  sub_1000A0CE0();
  v17 = a2;
  v18 = a3;
  v20 = 0;
  sub_1000054CC(a2, a3);
  sub_100006804();
  sub_1000A0B80();
  sub_100005568(v17, v18);
  if (!v5)
  {
    LOBYTE(v17) = 1;
    sub_1000A0B40();
    LOBYTE(v17) = 2;
    sub_1000A0B60();
  }

  return (*(v10 + 8))(v13, v9);
}

unint64_t sub_100062AF4()
{
  result = qword_1000D9BC0;
  if (!qword_1000D9BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9BC0);
  }

  return result;
}

uint64_t ActivitySharingLegacyMessageSchema.init(from:)(uint64_t *a1)
{
  result = sub_100062C1C(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_100062B74@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100062C1C(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
    *(a2 + 24) = v7;
  }

  return result;
}

uint64_t sub_100062BD0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000CD428;
  v6._object = a2;
  v4 = sub_1000A08F0(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100062C1C(uint64_t *a1)
{
  v3 = sub_1000017BC(&qword_1000D9BE0, &unk_1000AECA0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v11 - v6;
  v8 = a1[3];
  sub_1000022C4(a1, v8);
  sub_100062AF4();
  sub_1000A0CD0();
  if (v1)
  {
    sub_100002308(a1);
  }

  else
  {
    v12 = 0;
    sub_100005424();
    sub_1000A0A20();
    v8 = v11[0];
    v10 = v11[1];
    LOBYTE(v11[0]) = 1;
    sub_1000A09E0();
    LOBYTE(v11[0]) = 2;
    sub_1000A0A00();
    (*(v4 + 8))(v7, v3);
    sub_1000054CC(v8, v10);
    sub_100002308(a1);
    sub_100005568(v8, v10);
  }

  return v8;
}

uint64_t sub_100062E5C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 32))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_100062EB0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_100062F18()
{
  result = qword_1000D9BC8;
  if (!qword_1000D9BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9BC8);
  }

  return result;
}

unint64_t sub_100062F70()
{
  result = qword_1000D9BD0;
  if (!qword_1000D9BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9BD0);
  }

  return result;
}

unint64_t sub_100062FC8()
{
  result = qword_1000D9BD8;
  if (!qword_1000D9BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9BD8);
  }

  return result;
}

uint64_t sub_10006302C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a3;
  v6 = sub_1000017BC(&qword_1000D9BF0, &unk_1000AED20);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v24 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = v23 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = v23 - v14;
  __chkstk_darwin(v13);
  v17 = v23 - v16;
  v23[1] = a1;
  v23[2] = a2;
  sub_100063388(a2, v23 - v16);
  if (v3)
  {

    v18 = 1;
  }

  else
  {
    v18 = 0;
  }

  v19 = sub_10009FC20();
  v20 = *(v19 - 8);
  v23[0] = *(v20 + 56);
  (v23[0])(v17, v18, 1, v19);
  sub_100063B34(v17, v15);
  v21 = *(v20 + 48);
  if (v21(v15, 1, v19) == 1)
  {
    sub_100063BA4(v15);
    sub_10006362C(v12);
    sub_100063BA4(v17);
    v15 = v24;
    sub_100063C0C(v12, v24);
    if (v21(v15, 1, v19) == 1)
    {
      sub_100063BA4(v15);
      sub_1000A0530();
      sub_10003D0EC(&qword_1000D83C0, &type metadata accessor for Explosion);
      swift_allocError();
      sub_1000A0520();
      return swift_willThrow();
    }
  }

  else
  {
    sub_100063BA4(v17);
  }

  return (*(v20 + 32))(v25, v15, v19);
}

uint64_t sub_100063388@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v20 = a2;
  v21 = a1;
  v2 = sub_10009F9D0();
  v19 = *(v2 - 8);
  v3 = *(v19 + 64);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10009FD40();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = sub_10009F7B0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10009F270();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  sub_10009F260();
  sub_100063D24();
  v16 = v22;
  sub_10009F250();
  if (v16)
  {
  }

  sub_10009FD30();

  sub_10009F7A0();
  (*(v9 + 16))(v5, v12, v8);
  (*(v19 + 104))(v5, enum case for IDSClientMessageType.sharedETASession(_:), v2);
  sub_10009FC10();

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_10006362C@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v2 = sub_10009F9D0();
  v37 = *(v2 - 8);
  v3 = *(v37 + 64);
  __chkstk_darwin(v2);
  v5 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10009F5F0();
  v38 = *(v6 - 8);
  v7 = *(v38 + 64);
  __chkstk_darwin(v6);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10009F270();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  sub_10009F260();
  sub_1000017BC(&qword_1000D8370, &unk_1000AA060);
  sub_100005350();
  sub_10009F250();
  if (v1)
  {
  }

  v14 = v44;
  v36 = v9;
  v34 = v5;
  v35 = v2;
  v15 = v40;
  v16 = sub_10009FD00();
  if (*(v15 + 16))
  {
    v18 = sub_10000217C(v16, v17);
    v20 = v19;

    if (v20)
    {
      v21 = (*(v15 + 56) + 16 * v18);
      v23 = *v21;
      v22 = v21[1];
      sub_1000054CC(*v21, v22);

      sub_100063C7C();
      sub_10009F250();
      v33 = v22;
      v39[0] = v40;
      v39[1] = v41;
      v39[2] = v42;
      v39[3] = v43;
      v32[3] = *(&v40 + 1);
      v32[2] = v41;
      v32[1] = v42;
      v26 = v43;

      sub_1000054CC(v26, *(&v26 + 1));
      sub_10009F5E0();
      v27 = v38;
      v28 = v34;
      v29 = v36;
      (*(v38 + 16))(v34, v36, v6);
      (*(v37 + 104))(v28, enum case for IDSClientMessageType.sharedETATrip(_:), v35);
      v30 = v44;
      sub_10009FC10();
      sub_100005568(v23, v33);

      sub_100063CD0(v39);
      (*(v27 + 8))(v29, v6);
      v31 = sub_10009FC20();
      return (*(*(v31 - 8) + 56))(v30, 0, 1, v31);
    }

    v24 = v44;
  }

  else
  {

    v24 = v14;
  }

  v25 = sub_10009FC20();
  return (*(*(v25 - 8) + 56))(v24, 1, 1, v25);
}

unint64_t sub_100063AB8(uint64_t a1)
{
  result = sub_100063AE0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100063AE0()
{
  result = qword_1000D9BE8;
  if (!qword_1000D9BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9BE8);
  }

  return result;
}

uint64_t sub_100063B34(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000017BC(&qword_1000D9BF0, &unk_1000AED20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100063BA4(uint64_t a1)
{
  v2 = sub_1000017BC(&qword_1000D9BF0, &unk_1000AED20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100063C0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000017BC(&qword_1000D9BF0, &unk_1000AED20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100063C7C()
{
  result = qword_1000D9BF8;
  if (!qword_1000D9BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9BF8);
  }

  return result;
}

unint64_t sub_100063D24()
{
  result = qword_1000D9C00;
  if (!qword_1000D9C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9C00);
  }

  return result;
}

unint64_t sub_100063D78()
{
  v1 = 0xD000000000000013;
  if (*v0 == 2)
  {
    v1 = 0xD000000000000011;
  }

  v2 = 0xD000000000000018;
  if (!*v0)
  {
    v2 = 0xD000000000000016;
  }

  if (*v0 <= 1u)
  {
    result = v2;
  }

  else
  {
    result = v1;
  }

  *v0;
  return result;
}

uint64_t sub_100063DEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100064E6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100063E14(uint64_t a1)
{
  v2 = sub_100064140();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100063E50(uint64_t a1)
{
  v2 = sub_100064140();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AVConferenceInviteSchema.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000017BC(&qword_1000D9C08, &unk_1000AED30);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13[-v8 - 8];
  v10 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_100064140();
  sub_1000A0CE0();
  v19 = *v3;
  v15 = *v3;
  v14 = 0;
  sub_100005620(&v19, v13, &qword_1000D83D8, &qword_1000A5D68);
  sub_100006804();
  sub_1000A0AD0();
  if (v2)
  {
    sub_1000057B0(v15, *(&v15 + 1));
  }

  else
  {
    sub_1000057B0(v15, *(&v15 + 1));
    v18 = v3[1];
    v15 = v3[1];
    v14 = 1;
    sub_100005620(&v18, v13, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v15, *(&v15 + 1));
    v17 = v3[2];
    v15 = v3[2];
    v14 = 2;
    sub_100005620(&v17, v13, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v15, *(&v15 + 1));
    v15 = v3[3];
    v16 = v15;
    v14 = 3;
    sub_1000421FC(&v16, v13);
    sub_1000A0B80();
    sub_100005568(v15, *(&v15 + 1));
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_100064140()
{
  result = qword_1000D9C10;
  if (!qword_1000D9C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9C10);
  }

  return result;
}

double AVConferenceInviteSchema.init(from:)@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100064FD4(a1, v7);
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

uint64_t sub_1000641F8()
{
  v1 = *v0;
  v2 = 0x546E6F6973736573;
  v3 = 0x7079546572616873;
  if (v1 != 6)
  {
    v3 = 0x4D53457369;
  }

  v4 = 0x74756F656D6974;
  if (v1 != 4)
  {
    v4 = 0x6D614E656C707061;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x646F72707369;
  if (v1 != 2)
  {
    v5 = 0x6E656B6F546161;
  }

  if (*v0)
  {
    v2 = 0x656372756F736572;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100064304@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000653E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100064338(uint64_t a1)
{
  v2 = sub_100065390();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100064374(uint64_t a1)
{
  v2 = sub_100065390();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t RedWoodInviteSchema.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000017BC(&qword_1000D9C18, &qword_1000AED40);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v27[-v8];
  v10 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_100065390();
  sub_1000A0CE0();
  v11 = *v3;
  v12 = v3[1];
  v27[15] = 0;
  sub_1000A0B30();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v27[14] = 1;
  sub_1000A0B30();
  v15 = v3[4];
  v16 = v3[5];
  v27[13] = 2;
  sub_1000A0B30();
  v17 = v3[6];
  v18 = v3[7];
  v27[12] = 3;
  sub_1000A0A80();
  v19 = v3[8];
  v20 = *(v3 + 72);
  v27[11] = 4;
  sub_1000A0AB0();
  v21 = v3[10];
  v22 = v3[11];
  v27[10] = 5;
  sub_1000A0A80();
  v23 = v3[12];
  v24 = v3[13];
  v27[9] = 6;
  sub_1000A0A80();
  v26 = *(v3 + 112);
  v27[8] = 7;
  sub_1000A0A90();
  return (*(v6 + 8))(v9, v5);
}

double RedWoodInviteSchema.init(from:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100065688(a1, v8);
  if (!v2)
  {
    v5 = v12;
    *(a2 + 64) = v11;
    *(a2 + 80) = v5;
    *(a2 + 96) = v13;
    *(a2 + 112) = v14;
    v6 = v8[1];
    *a2 = v8[0];
    *(a2 + 16) = v6;
    result = *&v9;
    v7 = v10;
    *(a2 + 32) = v9;
    *(a2 + 48) = v7;
  }

  return result;
}

uint64_t sub_100064688()
{
  *v0;
  *v0;
  *v0;
  sub_1000A05B0();
}

uint64_t sub_100064794@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100065D64(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_1000647C4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000065636E65;
  v4 = 0x7265666E6F637661;
  v5 = 0xE300000000000000;
  v6 = 6581603;
  v7 = 0xE900000000000044;
  v8 = 0x496E6F6973736573;
  if (v2 != 4)
  {
    v8 = 0x6E6F6973726576;
    v7 = 0xE700000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x80000001000A24A0;
  v10 = 0xD00000000000001BLL;
  if (v2 != 1)
  {
    v10 = 0xD000000000000010;
    v9 = 0x80000001000A24C0;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_100064898()
{
  v1 = *v0;
  v2 = 0x7265666E6F637661;
  v3 = 6581603;
  v4 = 0x496E6F6973736573;
  if (v1 != 4)
  {
    v4 = 0x6E6F6973726576;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD00000000000001BLL;
  if (v1 != 1)
  {
    v5 = 0xD000000000000010;
  }

  if (*v0)
  {
    v2 = v5;
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

uint64_t sub_100064968@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100065D64(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100064990(uint64_t a1)
{
  v2 = sub_100065C68();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000649CC(uint64_t a1)
{
  v2 = sub_100065C68();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t IDSScreenSharingInvitationSchema.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_1000017BC(&qword_1000D9C28, &qword_1000AED48);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v31 - v7;
  v9 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_100065C68();
  sub_1000A0CE0();
  v10 = v2[1];
  v57[0] = *v2;
  v57[1] = v10;
  v11 = v2[3];
  v13 = *v2;
  v12 = v2[1];
  v57[2] = v2[2];
  v57[3] = v11;
  v46 = v13;
  v47 = v12;
  v14 = v2[3];
  v48 = v2[2];
  v49 = v14;
  v45 = 0;
  sub_100005620(v57, &v36, &qword_1000D9C38, &qword_1000AED50);
  sub_100065CBC();
  v15 = v58;
  sub_1000A0AD0();
  if (v15)
  {
    v36 = v46;
    v37 = v47;
    v38 = v48;
    v39 = v49;
    sub_1000057C4(&v36, &qword_1000D9C38, &qword_1000AED50);
  }

  else
  {
    v44[0] = v46;
    v44[1] = v47;
    v44[2] = v48;
    v44[3] = v49;
    sub_1000057C4(v44, &qword_1000D9C38, &qword_1000AED50);
    v16 = v2[9];
    v17 = v2[7];
    v53 = v2[8];
    v54 = v16;
    v18 = v2[9];
    v55 = v2[10];
    v19 = v2[5];
    v50[0] = v2[4];
    v50[1] = v19;
    v20 = v2[7];
    v22 = v2[4];
    v21 = v2[5];
    v51 = v2[6];
    v52 = v20;
    v40 = v53;
    v41 = v18;
    v42 = v2[10];
    v36 = v22;
    v37 = v21;
    v56 = *(v2 + 176);
    v43 = *(v2 + 176);
    v38 = v51;
    v39 = v17;
    v35 = 1;
    sub_100005620(v50, v33, &qword_1000D9C48, &qword_1000AED58);
    sub_100065D10();
    sub_1000A0AD0();
    v33[4] = v40;
    v33[5] = v41;
    v33[6] = v42;
    v34 = v43;
    v33[0] = v36;
    v33[1] = v37;
    v33[2] = v38;
    v33[3] = v39;
    sub_1000057C4(v33, &qword_1000D9C48, &qword_1000AED58);
    v23 = *(v2 + 177);
    v32 = 2;
    sub_1000A0A90();
    v24 = *(v2 + 23);
    v25 = *(v2 + 24);
    v32 = 3;
    sub_1000A0A80();
    v26 = *(v2 + 25);
    v27 = *(v2 + 26);
    v32 = 4;
    sub_1000A0A80();
    v28 = *(v2 + 27);
    v29 = *(v2 + 224);
    v32 = 5;
    sub_1000A0AB0();
  }

  return (*(v5 + 8))(v8, v4);
}

__n128 IDSScreenSharingInvitationSchema.init(from:)@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100065DB0(a1, v11);
  if (!v2)
  {
    v5 = v11[13];
    *(a2 + 192) = v11[12];
    *(a2 + 208) = v5;
    *(a2 + 224) = v12;
    v6 = v11[9];
    *(a2 + 128) = v11[8];
    *(a2 + 144) = v6;
    v7 = v11[11];
    *(a2 + 160) = v11[10];
    *(a2 + 176) = v7;
    v8 = v11[5];
    *(a2 + 64) = v11[4];
    *(a2 + 80) = v8;
    v9 = v11[7];
    *(a2 + 96) = v11[6];
    *(a2 + 112) = v9;
    v10 = v11[1];
    *a2 = v11[0];
    *(a2 + 16) = v10;
    result = v11[3];
    *(a2 + 32) = v11[2];
    *(a2 + 48) = result;
  }

  return result;
}

uint64_t sub_100064E6C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000016 && 0x80000001000A3210 == a2;
  if (v4 || (sub_1000A0BD0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001000A3230 == a2 || (sub_1000A0BD0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001000A3250 == a2 || (sub_1000A0BD0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001000A3270 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1000A0BD0();

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

uint64_t sub_100064FD4@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1000017BC(&qword_1000D9CC0, &unk_1000AF790);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_100064140();
  sub_1000A0CD0();
  if (v2)
  {
    return sub_100002308(a1);
  }

  LOBYTE(v23) = 0;
  sub_100005424();
  sub_1000A0970();
  v22 = v27[0];
  LOBYTE(v23) = 1;
  sub_1000A0970();
  v21 = v27[0];
  LOBYTE(v23) = 2;
  sub_1000A0970();
  v20 = v27[0];
  v31 = 3;
  sub_1000A0A20();
  (*(v6 + 8))(v9, v5);
  v18 = *(&v30 + 1);
  v19 = v30;
  v11 = v22;
  v23 = v22;
  v12 = v21;
  v24 = v21;
  v13 = v20;
  v25 = v20;
  v26 = v30;
  sub_100066C08(&v23, v27);
  sub_100002308(a1);
  v27[0] = v11;
  v27[1] = v12;
  v27[2] = v13;
  v28 = v19;
  v29 = v18;
  result = sub_100066C40(v27);
  v15 = v24;
  *a2 = v23;
  a2[1] = v15;
  v16 = v26;
  a2[2] = v25;
  a2[3] = v16;
  return result;
}

unint64_t sub_100065390()
{
  result = qword_1000D9C20;
  if (!qword_1000D9C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9C20);
  }

  return result;
}

uint64_t sub_1000653E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x546E6F6973736573 && a2 == 0xEC0000006E656B6FLL;
  if (v4 || (sub_1000A0BD0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656372756F736572 && a2 == 0xEC00000068746170 || (sub_1000A0BD0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646F72707369 && a2 == 0xE600000000000000 || (sub_1000A0BD0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E656B6F546161 && a2 == 0xE700000000000000 || (sub_1000A0BD0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74756F656D6974 && a2 == 0xE700000000000000 || (sub_1000A0BD0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6D614E656C707061 && a2 == 0xE900000000000065 || (sub_1000A0BD0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7079546572616873 && a2 == 0xE900000000000065 || (sub_1000A0BD0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x4D53457369 && a2 == 0xE500000000000000)
  {

    return 7;
  }

  else
  {
    v6 = sub_1000A0BD0();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_100065688@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000017BC(&qword_1000D9CB8, &qword_1000AF788);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v32 - v8;
  v10 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_100065390();
  sub_1000A0CD0();
  if (v2)
  {
    return sub_100002308(a1);
  }

  LOBYTE(v53[0]) = 0;
  v11 = sub_1000A09D0();
  v44 = v12;
  LOBYTE(v53[0]) = 1;
  v13 = sub_1000A09D0();
  v43 = v14;
  v41 = v13;
  LOBYTE(v53[0]) = 2;
  v40 = sub_1000A09D0();
  v42 = v15;
  LOBYTE(v53[0]) = 3;
  v39 = sub_1000A0920();
  v17 = v16;
  LOBYTE(v53[0]) = 4;
  v36 = sub_1000A0950();
  v60 = v18 & 1;
  LOBYTE(v53[0]) = 5;
  v19 = sub_1000A0920();
  v38 = v20;
  v35 = v19;
  LOBYTE(v53[0]) = 6;
  v21 = sub_1000A0920();
  v37 = v22;
  v34 = v21;
  v61 = 7;
  v23 = sub_1000A0930();
  (*(v6 + 8))(v9, v5);
  *&v45 = v11;
  *(&v45 + 1) = v44;
  *&v46 = v41;
  *(&v46 + 1) = v43;
  *&v47 = v40;
  *(&v47 + 1) = v42;
  *&v48 = v39;
  v33 = v17;
  *(&v48 + 1) = v17;
  *&v49 = v36;
  HIDWORD(v32) = v60;
  BYTE8(v49) = v60;
  v24 = v35;
  v25 = v38;
  *&v50 = v35;
  *(&v50 + 1) = v38;
  v26 = v34;
  v27 = v37;
  *&v51 = v34;
  *(&v51 + 1) = v37;
  v52 = v23;
  sub_100066BA0(&v45, v53);
  sub_100002308(a1);
  v53[0] = v11;
  v53[1] = v44;
  v53[2] = v41;
  v53[3] = v43;
  v53[4] = v40;
  v53[5] = v42;
  v53[6] = v39;
  v53[7] = v33;
  v53[8] = v36;
  v54 = BYTE4(v32);
  v55 = v24;
  v56 = v25;
  v57 = v26;
  v58 = v27;
  v59 = v23;
  result = sub_100066BD8(v53);
  v29 = v50;
  *(a2 + 64) = v49;
  *(a2 + 80) = v29;
  *(a2 + 96) = v51;
  *(a2 + 112) = v52;
  v30 = v46;
  *a2 = v45;
  *(a2 + 16) = v30;
  v31 = v48;
  *(a2 + 32) = v47;
  *(a2 + 48) = v31;
  return result;
}

unint64_t sub_100065C68()
{
  result = qword_1000D9C30;
  if (!qword_1000D9C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9C30);
  }

  return result;
}

unint64_t sub_100065CBC()
{
  result = qword_1000D9C40;
  if (!qword_1000D9C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9C40);
  }

  return result;
}

unint64_t sub_100065D10()
{
  result = qword_1000D9C50;
  if (!qword_1000D9C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9C50);
  }

  return result;
}

uint64_t sub_100065D64(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000CD490;
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

uint64_t sub_100065DB0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000017BC(&qword_1000D9CA0, &qword_1000AF780);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v35 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v93 = a1;
  sub_1000022C4(a1, v10);
  sub_100065C68();
  sub_1000A0CD0();
  if (v2)
  {
    return sub_100002308(v93);
  }

  v12 = v6;
  v75 = 0;
  sub_100066AC0();
  v13 = v5;
  sub_1000A0970();
  v81 = v76;
  v82 = v77;
  v83 = v78;
  v84 = v79;
  v66 = 1;
  sub_100066B14();
  sub_1000A0970();
  v89 = v71;
  v90 = v72;
  v91 = v73;
  v92 = v74;
  v85 = v67;
  v86 = v68;
  v87 = v69;
  v88 = v70;
  LOBYTE(v56[0]) = 2;
  v14 = sub_1000A0930();
  LOBYTE(v56[0]) = 3;
  v15 = sub_1000A0920();
  v17 = v16;
  v39 = v15;
  LOBYTE(v56[0]) = 4;
  v38 = sub_1000A0920();
  v40 = v18;
  v65 = 5;
  v19 = sub_1000A0950();
  v21 = v20;
  v22 = *(v12 + 8);
  v36 = v19;
  v22(v9, v13);
  v80 = v21 & 1;
  v49 = v89;
  v50 = v90;
  v51 = v91;
  LOBYTE(v52) = v92;
  v45 = v85;
  v46 = v86;
  v47 = v87;
  v48 = v88;
  v41 = v81;
  v42 = v82;
  v43 = v83;
  v44 = v84;
  BYTE1(v52) = v14;
  v24 = v38;
  v23 = v39;
  *(&v52 + 1) = v39;
  *&v53 = v17;
  v37 = v14;
  v25 = v40;
  *(&v53 + 1) = v38;
  *&v54 = v40;
  v26 = v36;
  *(&v54 + 1) = v36;
  v21 &= 1u;
  v55 = v21;
  sub_100066B68(&v41, v56);
  sub_100002308(v93);
  v56[8] = v89;
  v56[9] = v90;
  v56[10] = v91;
  v57 = v92;
  v56[4] = v85;
  v56[5] = v86;
  v56[6] = v87;
  v56[7] = v88;
  v56[0] = v81;
  v56[1] = v82;
  v56[2] = v83;
  v56[3] = v84;
  v58 = v37;
  v59 = v23;
  v60 = v17;
  v61 = v24;
  v62 = v25;
  v63 = v26;
  v64 = v21;
  result = sub_1000456C8(v56);
  v28 = v54;
  *(a2 + 192) = v53;
  *(a2 + 208) = v28;
  *(a2 + 224) = v55;
  v29 = v50;
  *(a2 + 128) = v49;
  *(a2 + 144) = v29;
  v30 = v52;
  *(a2 + 160) = v51;
  *(a2 + 176) = v30;
  v31 = v46;
  *(a2 + 64) = v45;
  *(a2 + 80) = v31;
  v32 = v48;
  *(a2 + 96) = v47;
  *(a2 + 112) = v32;
  v33 = v42;
  *a2 = v41;
  *(a2 + 16) = v33;
  v34 = v44;
  *(a2 + 32) = v43;
  *(a2 + 48) = v34;
  return result;
}

uint64_t sub_100066308(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 64))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 56) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 56) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10006635C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 48) = 0;
      *(result + 56) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

__n128 sub_1000663CC(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1000663F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 113))
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

uint64_t sub_100066440(uint64_t result, int a2, int a3)
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
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
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

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000664B0(uint64_t a1)
{
  v1 = *(a1 + 56) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000664D8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_1000664F0(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[13];
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 176) = result;
  return result;
}

uint64_t sub_10006653C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 225))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 72);
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

uint64_t sub_100066598(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 216) = 0;
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
    *(result + 224) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 225) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 225) = 0;
    }

    if (a2)
    {
      *(result + 72) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RedWoodInviteSchema.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RedWoodInviteSchema.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000667AC()
{
  result = qword_1000D9C58;
  if (!qword_1000D9C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9C58);
  }

  return result;
}

unint64_t sub_100066804()
{
  result = qword_1000D9C60;
  if (!qword_1000D9C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9C60);
  }

  return result;
}

unint64_t sub_10006685C()
{
  result = qword_1000D9C68;
  if (!qword_1000D9C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9C68);
  }

  return result;
}

unint64_t sub_1000668B4()
{
  result = qword_1000D9C70;
  if (!qword_1000D9C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9C70);
  }

  return result;
}

unint64_t sub_10006690C()
{
  result = qword_1000D9C78;
  if (!qword_1000D9C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9C78);
  }

  return result;
}

unint64_t sub_100066964()
{
  result = qword_1000D9C80;
  if (!qword_1000D9C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9C80);
  }

  return result;
}

unint64_t sub_1000669BC()
{
  result = qword_1000D9C88;
  if (!qword_1000D9C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9C88);
  }

  return result;
}

unint64_t sub_100066A14()
{
  result = qword_1000D9C90;
  if (!qword_1000D9C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9C90);
  }

  return result;
}

unint64_t sub_100066A6C()
{
  result = qword_1000D9C98;
  if (!qword_1000D9C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9C98);
  }

  return result;
}

unint64_t sub_100066AC0()
{
  result = qword_1000D9CA8;
  if (!qword_1000D9CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9CA8);
  }

  return result;
}

unint64_t sub_100066B14()
{
  result = qword_1000D9CB0;
  if (!qword_1000D9CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9CB0);
  }

  return result;
}

Swift::Int sub_100066C80()
{
  sub_1000A0C60();
  sub_1000A05B0();
  return sub_1000A0C90();
}

Swift::Int sub_100066CDC()
{
  sub_1000A0C60();
  sub_1000A05B0();
  return sub_1000A0C90();
}

uint64_t sub_100066D24@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000CD540;
  v7._object = v3;
  v5 = sub_1000A08F0(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_100066D9C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_1000CD578;
  v8._object = a2;
  v6 = sub_1000A08F0(v5, v8);

  *a3 = v6 != 0;
  return result;
}

uint64_t sub_100066DF4(uint64_t a1)
{
  v2 = sub_100066F9C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100066E30(uint64_t a1)
{
  v2 = sub_100066F9C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CompanionAuthMessageSchema.encode(to:)(void *a1)
{
  v2 = sub_1000017BC(&qword_1000D9CC8, &qword_1000AF7A0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_100066F9C();
  sub_1000A0CE0();
  sub_1000A0B90();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_100066F9C()
{
  result = qword_1000D9CD0;
  if (!qword_1000D9CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9CD0);
  }

  return result;
}

uint64_t CompanionAuthMessageSchema.init(from:)(uint64_t *a1)
{
  v3 = sub_1000017BC(&qword_1000D9CD8, &qword_1000AF7A8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = a1[4];
  v9 = sub_1000022C4(a1, a1[3]);
  sub_100066F9C();
  sub_1000A0CD0();
  if (!v1)
  {
    v9 = sub_1000A0A30();
    (*(v4 + 8))(v7, v3);
  }

  sub_100002308(a1);
  return v9;
}

uint64_t sub_100067144@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_1000017BC(&qword_1000D9CD8, &qword_1000AF7A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_100066F9C();
  sub_1000A0CD0();
  if (v2)
  {
    return sub_100002308(a1);
  }

  v11 = sub_1000A0A30();
  (*(v6 + 8))(v9, v5);
  result = sub_100002308(a1);
  *a2 = v11;
  return result;
}

uint64_t sub_1000672A4(void *a1)
{
  v3 = sub_1000017BC(&qword_1000D9CC8, &qword_1000AF7A0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = a1[4];
  v9 = *v1;
  sub_1000022C4(a1, a1[3]);
  sub_100066F9C();
  sub_1000A0CE0();
  sub_1000A0B90();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_100067400()
{
  result = qword_1000D9CE0;
  if (!qword_1000D9CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9CE0);
  }

  return result;
}

unint64_t sub_100067458()
{
  result = qword_1000D9CE8;
  if (!qword_1000D9CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9CE8);
  }

  return result;
}

unint64_t sub_1000674B0()
{
  result = qword_1000D9CF0;
  if (!qword_1000D9CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9CF0);
  }

  return result;
}

uint64_t sub_100067504(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x64616F6C796170;
  }

  else
  {
    v4 = 1835365481;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (*a2)
  {
    v6 = 0x64616F6C796170;
  }

  else
  {
    v6 = 1835365481;
  }

  if (*a2)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1000A0BD0();
  }

  return v9 & 1;
}

Swift::Int sub_1000675A4()
{
  v1 = *v0;
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_100067620()
{
  *v0;
  sub_1000A05B0();
}

Swift::Int sub_100067688()
{
  v1 = *v0;
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_100067700@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000CD5B0;
  v8._object = v3;
  v5 = sub_1000A08F0(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_100067760(uint64_t *a1@<X8>)
{
  v2 = 1835365481;
  if (*v1)
  {
    v2 = 0x64616F6C796170;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_100067798()
{
  if (*v0)
  {
    result = 0x64616F6C796170;
  }

  else
  {
    result = 1835365481;
  }

  *v0;
  return result;
}

uint64_t sub_1000677CC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v9._countAndFlagsBits = a1;
  v5._rawValue = &off_1000CD5B0;
  v9._object = a2;
  v6 = sub_1000A08F0(v5, v9);

  if (v6 == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  if (!v6)
  {
    v8 = 0;
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100067830(uint64_t a1)
{
  v2 = sub_100067A44();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10006786C(uint64_t a1)
{
  v2 = sub_100067A44();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t IDSActivitySharingInvitationSchema.encode(to:)(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v15 = a4;
  v7 = sub_1000017BC(&qword_1000D9CF8, &qword_1000AF990);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_100067A44();
  sub_1000A0CE0();
  LOBYTE(v16) = 0;
  sub_1000A0B60();
  if (!v4)
  {
    v16 = a3;
    v17 = v15;
    v18 = 1;
    sub_1000054CC(a3, v15);
    sub_100006804();
    sub_1000A0B80();
    sub_100005568(v16, v17);
  }

  return (*(v8 + 8))(v11, v7);
}

unint64_t sub_100067A44()
{
  result = qword_1000D9D00;
  if (!qword_1000D9D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9D00);
  }

  return result;
}

uint64_t IDSActivitySharingInvitationSchema.init(from:)(uint64_t *a1)
{
  result = sub_100067B10(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_100067AC0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100067B10(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_100067B10(uint64_t *a1)
{
  v3 = sub_1000017BC(&qword_1000D9D20, &unk_1000AFC10);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10[-v6];
  v8 = a1[3];
  sub_1000022C4(a1, v8);
  sub_100067A44();
  sub_1000A0CD0();
  if (!v1)
  {
    v10[16] = 0;
    v8 = sub_1000A0A00();
    v10[15] = 1;
    sub_100005424();
    sub_1000A0A20();
    (*(v4 + 8))(v7, v3);
  }

  sub_100002308(a1);
  return v8;
}

unint64_t sub_100067D00()
{
  result = qword_1000D9D08;
  if (!qword_1000D9D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9D08);
  }

  return result;
}

unint64_t sub_100067D58()
{
  result = qword_1000D9D10;
  if (!qword_1000D9D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9D10);
  }

  return result;
}

unint64_t sub_100067DB0()
{
  result = qword_1000D9D18;
  if (!qword_1000D9D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9D18);
  }

  return result;
}

uint64_t sub_100067E18()
{
  *v0;
  *v0;
  *v0;
  sub_1000A05B0();
}

uint64_t sub_100067F2C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100068E98(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_100067F5C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x444970756F7267;
  v5 = 0xED0000656C646E61;
  v6 = 0x4865657469766E69;
  v7 = 0xE800000000000000;
  v8 = 0x656D6954746E6573;
  if (v2 != 4)
  {
    v8 = 0x6D614E70756F7267;
    v7 = 0xE900000000000065;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x4C52556572616873;
  if (v2 != 1)
  {
    v10 = 0x6974617469766E69;
    v9 = 0xEF6E656B6F546E6FLL;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_100068038()
{
  v1 = *v0;
  v2 = 0x444970756F7267;
  v3 = 0x4865657469766E69;
  v4 = 0x656D6954746E6573;
  if (v1 != 4)
  {
    v4 = 0x6D614E70756F7267;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x4C52556572616873;
  if (v1 != 1)
  {
    v5 = 0x6974617469766E69;
  }

  if (*v0)
  {
    v2 = v5;
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

uint64_t sub_100068110@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100068E98(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100068138(uint64_t a1)
{
  v2 = sub_100068438();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100068174(uint64_t a1)
{
  v2 = sub_100068438();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t IDSKCSharingInvitationSchema.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000017BC(&qword_1000D9D28, &unk_1000AFC20);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v24[-v8];
  v10 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_100068438();
  sub_1000A0CE0();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v25) = 0;
  sub_1000A0B30();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    LOBYTE(v25) = 1;
    sub_1000A0B30();
    v15 = v3[5];
    v25 = v3[4];
    v26 = v15;
    v24[15] = 2;
    sub_1000054CC(v25, v15);
    sub_100006804();
    sub_1000A0B80();
    sub_100005568(v25, v26);
    v16 = v3[6];
    v17 = v3[7];
    LOBYTE(v25) = 3;
    sub_1000A0B30();
    v18 = type metadata accessor for IDSKCSharingInvitationSchema();
    v19 = *(v18 + 32);
    LOBYTE(v25) = 4;
    sub_10009F350();
    sub_100068AD4(&qword_1000D84A0, &type metadata accessor for Date);
    sub_1000A0AD0();
    v20 = (v3 + *(v18 + 36));
    v21 = *v20;
    v22 = v20[1];
    LOBYTE(v25) = 5;
    sub_1000A0A80();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_100068438()
{
  result = qword_1000D9D30;
  if (!qword_1000D9D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9D30);
  }

  return result;
}

uint64_t type metadata accessor for IDSKCSharingInvitationSchema()
{
  result = qword_1000D9D98;
  if (!qword_1000D9D98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t IDSKCSharingInvitationSchema.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v4 = sub_1000017BC(&qword_1000D84A8, &unk_1000B0C40);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v37 - v6;
  v41 = sub_1000017BC(&qword_1000D9D38, &qword_1000AFC30);
  v8 = *(v41 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v41);
  v11 = &v37 - v10;
  v12 = type metadata accessor for IDSKCSharingInvitationSchema();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v16 = a1[4];
  v42 = a1;
  sub_1000022C4(a1, v17);
  sub_100068438();
  sub_1000A0CD0();
  if (v2)
  {
    return sub_100002308(v42);
  }

  v39 = v7;
  LOBYTE(v43) = 0;
  *v15 = sub_1000A09D0();
  *(v15 + 1) = v19;
  LOBYTE(v43) = 1;
  *(v15 + 2) = sub_1000A09D0();
  *(v15 + 3) = v20;
  v44 = 2;
  sub_100005424();
  sub_1000A0A20();
  v21 = v15;
  *(v15 + 2) = v43;
  LOBYTE(v43) = 3;
  v22 = sub_1000A09D0();
  v38 = 0;
  *(v15 + 6) = v22;
  *(v15 + 7) = v23;
  sub_10009F350();
  LOBYTE(v43) = 4;
  sub_100068AD4(&qword_1000D84B8, &type metadata accessor for Date);
  v24 = v38;
  v25 = v39;
  sub_1000A0970();
  v38 = v24;
  if (v24)
  {
    (*(v8 + 8))(v11, v41);
    v26 = 0;
  }

  else
  {
    sub_10000D3D0(v25, v21 + *(v12 + 32));
    LOBYTE(v43) = 5;
    v27 = v38;
    v28 = sub_1000A0920();
    v30 = v21;
    v38 = v27;
    if (!v27)
    {
      v34 = v28;
      v35 = v29;
      (*(v8 + 8))(v11, v41);
      v36 = (v30 + *(v12 + 36));
      *v36 = v34;
      v36[1] = v35;
      sub_100068984(v30, v40);
      sub_100002308(v42);
      return sub_1000689E8(v30);
    }

    (*(v8 + 8))(v11, v41);
    v26 = 1;
  }

  sub_100002308(v42);
  v31 = v21[1];

  v32 = v21[3];

  sub_100005568(v21[4], v21[5]);
  v33 = v21[7];

  if (v26)
  {
    return sub_10000D324(v21 + *(v12 + 32));
  }

  return result;
}

uint64_t sub_100068984(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IDSKCSharingInvitationSchema();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000689E8(uint64_t a1)
{
  v2 = type metadata accessor for IDSKCSharingInvitationSchema();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100068AD4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100068B60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1000017BC(&qword_1000D84A8, &unk_1000B0C40);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100068C30(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1000017BC(&qword_1000D84A8, &unk_1000B0C40);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100068CE0()
{
  sub_10000D760();
  if (v0 <= 0x3F)
  {
    sub_10003FA30();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_100068D94()
{
  result = qword_1000D9DE0;
  if (!qword_1000D9DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9DE0);
  }

  return result;
}

unint64_t sub_100068DEC()
{
  result = qword_1000D9DE8;
  if (!qword_1000D9DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9DE8);
  }

  return result;
}

unint64_t sub_100068E44()
{
  result = qword_1000D9DF0;
  if (!qword_1000D9DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9DF0);
  }

  return result;
}

uint64_t sub_100068E98(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000CD600;
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

Swift::Int sub_100068EE4()
{
  sub_1000A0C60();
  sub_1000A05B0();
  return sub_1000A0C90();
}

Swift::Int sub_100068F68()
{
  sub_1000A0C60();
  sub_1000A05B0();
  return sub_1000A0C90();
}

uint64_t sub_100068FC4@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000CD6B0;
  v7._object = v3;
  v5 = sub_1000A08F0(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_100069064@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_1000CD6E8;
  v8._object = a2;
  v6 = sub_1000A08F0(v5, v8);

  *a3 = v6 != 0;
  return result;
}

uint64_t sub_1000690BC(uint64_t a1)
{
  v2 = sub_10006929C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000690F8(uint64_t a1)
{
  v2 = sub_10006929C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t IDSHealthInvitationSchema.encode(to:)(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_1000017BC(&qword_1000D9DF8, &qword_1000AFE30);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - v9;
  v11 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_10006929C();
  sub_1000A0CE0();
  v13 = a2;
  v14 = a3;
  sub_1000054CC(a2, a3);
  sub_100006804();
  sub_1000A0B80();
  sub_100005568(v13, v14);
  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_10006929C()
{
  result = qword_1000D9E00;
  if (!qword_1000D9E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9E00);
  }

  return result;
}

void *sub_100069308@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_100069350(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

void *sub_100069350(uint64_t *a1)
{
  v3 = sub_1000017BC(&qword_1000D9E20, &qword_1000B00A8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = a1[4];
  v9 = sub_1000022C4(a1, a1[3]);
  sub_10006929C();
  sub_1000A0CD0();
  if (v1)
  {
    sub_100002308(a1);
  }

  else
  {
    sub_100005424();
    sub_1000A0A20();
    (*(v4 + 8))(v7, v3);
    v9 = v11;
    sub_100002308(a1);
  }

  return v9;
}

uint64_t sub_1000694CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100069520(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_100069590()
{
  result = qword_1000D9E08;
  if (!qword_1000D9E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9E08);
  }

  return result;
}

unint64_t sub_1000695E8()
{
  result = qword_1000D9E10;
  if (!qword_1000D9E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9E10);
  }

  return result;
}

unint64_t sub_100069640()
{
  result = qword_1000D9E18;
  if (!qword_1000D9E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9E18);
  }

  return result;
}

Swift::Int sub_1000696EC()
{
  v1 = *v0;
  sub_1000A0C60();
  sub_1000A0C80(v1 + 10);
  return sub_1000A0C90();
}

Swift::Int sub_100069764()
{
  v1 = *v0;
  sub_1000A0C60();
  sub_1000A0C80(v1 + 10);
  return sub_1000A0C90();
}

uint64_t sub_1000697A8@<X0>(__int16 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10006C530(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000697E4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v158 = a1;
  v159 = a2;
  v149 = a3;
  v4 = sub_10009F4D0();
  v146 = *(v4 - 8);
  v147 = v4;
  v5 = *(v146 + 64);
  __chkstk_darwin(v4);
  v151 = &v113 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000A00F0();
  v8 = *(v7 - 8);
  v154 = v7;
  v155 = v8;
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v153 = &v113 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000017BC(&qword_1000D9E30, &qword_1000B0128);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v144 = &v113 - v13;
  v14 = sub_1000A0230();
  v142 = *(v14 - 8);
  v143 = v14;
  v15 = *(v142 + 64);
  __chkstk_darwin(v14);
  v137 = &v113 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_10009F7C0();
  v133 = *(v134 - 8);
  v17 = *(v133 + 64);
  __chkstk_darwin(v134);
  v132 = &v113 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = sub_10009F9D0();
  v148 = *(v152 - 8);
  v19 = *(v148 + 64);
  v20 = __chkstk_darwin(v152);
  v145 = &v113 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v131 = &v113 - v22;
  v141 = sub_1000A0400();
  v140 = *(v141 - 8);
  v23 = *(v140 + 64);
  v24 = __chkstk_darwin(v141);
  v150 = &v113 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v157 = &v113 - v26;
  v125 = sub_1000A04D0();
  v128 = *(v125 - 8);
  v27 = *(v128 + 64);
  __chkstk_darwin(v125);
  v135 = &v113 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_1000A0420();
  v130 = *(v129 - 8);
  v29 = *(v130 + 64);
  __chkstk_darwin(v129);
  v136 = &v113 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_1000A04F0();
  v126 = *(v127 - 8);
  v31 = *(v126 + 64);
  __chkstk_darwin(v127);
  v156 = &v113 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_1000A04B0();
  v138 = *(v139 - 8);
  v33 = *(v138 + 64);
  v34 = __chkstk_darwin(v139);
  v36 = &v113 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v38 = &v113 - v37;
  v39 = sub_1000017BC(&qword_1000D9E38, &qword_1000B0130);
  v40 = *(*(v39 - 8) + 64);
  v41 = __chkstk_darwin(v39 - 8);
  v43 = &v113 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __chkstk_darwin(v41);
  v46 = &v113 - v45;
  v47 = __chkstk_darwin(v44);
  v49 = &v113 - v48;
  v50 = __chkstk_darwin(v47);
  v52 = &v113 - v51;
  __chkstk_darwin(v50);
  v54 = &v113 - v53;
  v55 = sub_10009F270();
  v56 = *(v55 + 48);
  v57 = *(v55 + 52);
  swift_allocObject();
  v58 = sub_10009F260();
  sub_10006B130();
  sub_10009F250();
  if (v3)
  {
  }

  v120 = v52;
  v118 = v49;
  v119 = v38;
  v61 = v156;
  v60 = v157;
  v121 = v46;
  v122 = v43;
  v123 = v54;
  v124 = v58;
  v158 = v160;
  v159 = v161;
  if ((v163 & 1) != 0 || (v62 = v162, v63 = v164, v64 = sub_10006C530(v162), v64 == 7))
  {
    sub_1000A0530();
    sub_10006C684(&qword_1000D83C0, &type metadata accessor for Explosion);
    swift_allocError();
    sub_1000A0520();
    swift_willThrow();
    sub_1000057B0(v158, v159);
  }

  v65 = v64;
  v66 = *(v155 + 56);
  v117 = v155 + 56;
  v116 = v66;
  v66(v123, 1, 1, v154);
  if (v159 >> 60 != 15)
  {
    v72 = v65;
    v115 = v65;
    v114 = v62;
    v165 = v63;
    if (v65 > 3u)
    {
      v69 = v155;
      v79 = v152;
      if (v72 == 4)
      {
        v68 = v154;
        if (v165)
        {
          sub_100005750(v158, v159);
          v82 = v60;
          sub_1000A03F0();
          v70 = v153;
          v94 = v122;
          v83 = v123;
          sub_1000057C4(v123, &qword_1000D9E38, &qword_1000B0130);
          sub_1000057B0(v158, v159);
          (*(v140 + 32))(v83, v82, v141);
          v69 = v155;
          (*(v155 + 104))(v83, enum case for IDSClientProtobufMessageType.walletDeviceSharingCapabilitiesMessage(_:), v68);
          v116(v83, 0, 1, v68);
          v93 = v121;
          goto LABEL_43;
        }

        goto LABEL_30;
      }

      if (v72 != 5)
      {
        v85 = v158;
        v84 = v159;
        sub_100005750(v158, v159);
        v86 = v144;
        sub_1000A0220();
        sub_1000057B0(v85, v84);
        v87 = v142;
        v88 = v143;
        if ((*(v142 + 48))(v86, 1, v143) == 1)
        {
          sub_1000057C4(v86, &qword_1000D9E30, &qword_1000B0128);
          v94 = v122;
          v93 = v121;
          v70 = v153;
          v68 = v154;
          goto LABEL_43;
        }

        v95 = v123;
        sub_1000057C4(v123, &qword_1000D9E38, &qword_1000B0130);
        v96 = *(v87 + 32);
        v97 = v137;
        v96(v137, v86, v88);
        v96(v95, v97, v88);
        v68 = v154;
        (*(v155 + 104))(v95, enum case for IDSClientProtobufMessageType.walletPassSharingCancelMessage(_:), v154);
        v69 = v155;
        v116(v95, 0, 1, v68);
        goto LABEL_30;
      }

      sub_100005750(v158, v159);
      v80 = v120;
      sub_10006B184(v120);
      v99 = v123;
      sub_1000057C4(v123, &qword_1000D9E38, &qword_1000B0130);
      sub_10006C5B8(v80, v99);
      v100 = v99;
      v101 = v118;
      sub_10006C548(v100, v118);
      v68 = v154;
      if ((*(v69 + 48))(v101, 1, v154) != 1)
      {
        sub_1000057B0(v158, v159);
        sub_1000057C4(v101, &qword_1000D9E38, &qword_1000B0130);
        v70 = v153;
        v94 = v122;
        goto LABEL_31;
      }

      sub_1000057C4(v101, &qword_1000D9E38, &qword_1000B0130);
      (*(v133 + 104))(v132, enum case for ClientMessageType.restricted(_:), v134);
      v102 = v131;
      sub_10009FA60();
      v103 = v159;
      (*(v148 + 104))(v102, enum case for IDSClientMessageType.messageTypeRestricted(_:), v79);
      sub_10009FC10();

      v104 = v158;
      sub_1000057B0(v158, v103);
      v77 = v104;
      v78 = v103;
LABEL_15:
      sub_1000057B0(v77, v78);
      return sub_1000057C4(v123, &qword_1000D9E38, &qword_1000B0130);
    }

    if (v65 - 1 < 2)
    {
      if (((v63 != 2) ^ v63))
      {
        v73 = v158;
        sub_100005750(v158, v159);
        v74 = v36;
        sub_1000A04A0();
        v75 = v122;
        v68 = v154;
        v76 = v155;
        v105 = v123;
        sub_1000057C4(v123, &qword_1000D9E38, &qword_1000B0130);
        sub_1000057B0(v73, v159);
        (*(v138 + 32))(v105, v74, v139);
        (*(v76 + 104))(v105, enum case for IDSClientProtobufMessageType.walletCloudStoreZoneInvitationRequestMessage(_:), v68);
        v116(v105, 0, 1, v68);
        v93 = v121;
        v70 = v153;
        v69 = v76;
        v94 = v75;
        goto LABEL_43;
      }

LABEL_34:
      v94 = v122;
      v93 = v121;
      v68 = v154;
      v69 = v155;
      v70 = v153;
      goto LABEL_43;
    }

    if (v65)
    {
      if (((v63 != 2) ^ v63))
      {
        sub_100005750(v158, v159);
        v89 = v136;
        sub_1000A0410();
        v68 = v154;
        v90 = v155;
        v91 = v123;
        sub_1000057C4(v123, &qword_1000D9E38, &qword_1000B0130);
        sub_1000057B0(v158, v159);
        (*(v130 + 32))(v91, v89, v129);
        (*(v90 + 104))(v91, enum case for IDSClientProtobufMessageType.walletRemoteRegistrationRequestMessage(_:), v68);
        v116(v91, 0, 1, v68);
        v93 = v121;
        v70 = v153;
        v69 = v90;
      }

      else
      {
        v68 = v154;
        v69 = v155;
        if (v165)
        {
          sub_100005750(v158, v159);
          v98 = v135;
          sub_1000A04C0();
          v70 = v153;
          v108 = v123;
          sub_1000057C4(v123, &qword_1000D9E38, &qword_1000B0130);
          sub_1000057B0(v158, v159);
          (*(v128 + 32))(v108, v98, v125);
          v69 = v155;
          (*(v155 + 104))(v108, enum case for IDSClientProtobufMessageType.walletRemoteRegistrationRequestResultMessage(_:), v68);
          v116(v108, 0, 1, v68);
          v93 = v121;
        }

        else
        {
          v93 = v121;
          v70 = v153;
        }
      }

      v94 = v122;
      goto LABEL_43;
    }

    if (((v63 != 2) ^ v63))
    {
      sub_100005750(v158, v159);
      v81 = v119;
      sub_1000A04A0();
      v106 = v123;
      sub_1000057C4(v123, &qword_1000D9E38, &qword_1000B0130);
      sub_1000057B0(v158, v159);
      (*(v138 + 32))(v106, v81, v139);
      v68 = v154;
      v69 = v155;
      (*(v155 + 104))(v106, enum case for IDSClientProtobufMessageType.walletCloudStoreZoneInvitationRequestMessage(_:), v154);
      v116(v106, 0, 1, v68);
      v94 = v122;
    }

    else
    {
      if ((v63 & 1) == 0)
      {
        goto LABEL_34;
      }

      sub_100005750(v158, v159);
      sub_1000A04E0();
      v94 = v122;
      v107 = v123;
      sub_1000057C4(v123, &qword_1000D9E38, &qword_1000B0130);
      sub_1000057B0(v158, v159);
      v68 = v154;
      (*(v126 + 32))(v107, v61, v127);
      v69 = v155;
      (*(v155 + 104))(v107, enum case for IDSClientProtobufMessageType.walletCloudStoreZoneInvitationResponseMessage(_:), v68);
      v116(v107, 0, 1, v68);
    }

    v93 = v121;
    v70 = v153;
    goto LABEL_43;
  }

  if (v65 != 4)
  {
    v160 = 0;
    v161 = 0xE000000000000000;
    sub_1000A0850(62);
    v167._countAndFlagsBits = 0xD000000000000021;
    v167._object = 0x80000001000A32D0;
    sub_1000A05E0(v167);
    v166 = v65;
    sub_1000A08A0();
    v168._countAndFlagsBits = 0xD00000000000001BLL;
    v168._object = 0x80000001000A3300;
    sub_1000A05E0(v168);
    sub_1000A0530();
    sub_10006C684(&qword_1000D83C0, &type metadata accessor for Explosion);
    swift_allocError();
    sub_1000A0520();
    swift_willThrow();

    v77 = v158;
    v78 = v159;
    goto LABEL_15;
  }

  v165 = v63;
  v114 = v62;
  v115 = v65;
  if ((((v63 != 2) ^ v63) & 1) == 0)
  {
    v68 = v154;
    v69 = v155;
LABEL_30:
    v70 = v153;
    v94 = v122;
LABEL_31:
    v93 = v121;
    goto LABEL_43;
  }

  v67 = v150;
  sub_1000A03F0();
  sub_1000057C4(v123, &qword_1000D9E38, &qword_1000B0130);
  v68 = v154;
  v69 = v155;
  v70 = v153;
  v71 = v122;
  v92 = v123;
  (*(v140 + 32))(v123, v67, v141);
  (*(v69 + 104))(v92, enum case for IDSClientProtobufMessageType.walletDeviceSharingCapabilitiesMessage(_:), v68);
  v116(v92, 0, 1, v68);
  v93 = v121;
  v94 = v71;
LABEL_43:
  sub_10006C548(v123, v93);
  if ((*(v69 + 48))(v93, 1, v68) == 1)
  {
    sub_1000057C4(v93, &qword_1000D9E38, &qword_1000B0130);
    v160 = 0;
    v161 = 0xE000000000000000;
    sub_1000A0850(35);
    v169._countAndFlagsBits = 0xD000000000000021;
    v169._object = 0x80000001000A32D0;
    sub_1000A05E0(v169);
    v166 = v115;
    sub_1000A08A0();
    sub_1000A0530();
    sub_10006C684(&qword_1000D83C0, &type metadata accessor for Explosion);
    swift_allocError();
    sub_1000A0520();
    swift_willThrow();

    sub_1000057B0(v158, v159);
    return sub_1000057C4(v123, &qword_1000D9E38, &qword_1000B0130);
  }

  (*(v69 + 32))(v70, v93, v68);
  (*(v69 + 16))(v94, v70, v68);
  v116(v94, 0, 1, v68);
  v109 = v151;
  sub_10009F4C0();
  v110 = v146;
  v111 = v147;
  v112 = v145;
  (*(v146 + 16))(v145, v109, v147);
  (*(v148 + 104))(v112, enum case for IDSClientMessageType.idsProtobufMessage(_:), v152);
  sub_10009FC10();

  sub_1000057B0(v158, v159);
  (*(v110 + 8))(v109, v111);
  (*(v69 + 8))(v70, v68);
  return sub_1000057C4(v123, &qword_1000D9E38, &qword_1000B0130);
}

unint64_t sub_10006B0B4(uint64_t a1)
{
  result = sub_10006B0DC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10006B0DC()
{
  result = qword_1000D9E28;
  if (!qword_1000D9E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9E28);
  }

  return result;
}

unint64_t sub_10006B130()
{
  result = qword_1000D9E40;
  if (!qword_1000D9E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9E40);
  }

  return result;
}

void sub_10006B184(char *a1@<X8>)
{
  v2 = sub_1000017BC(&qword_1000D9E48, &qword_1000B0138);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v114 = &v105 - v4;
  v5 = sub_1000017BC(&qword_1000D9E50, &qword_1000B0140);
  v112 = *(v5 - 8);
  v113 = v5;
  v6 = *(v112 + 64);
  __chkstk_darwin(v5);
  v110 = &v105 - v7;
  v8 = sub_1000017BC(&qword_1000D9E58, &qword_1000B0148);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v117 = &v105 - v10;
  v11 = sub_1000017BC(&qword_1000D9E60, &unk_1000B0150);
  v115 = *(v11 - 8);
  v116 = v11;
  v12 = *(v115 + 64);
  __chkstk_darwin(v11);
  v111 = &v105 - v13;
  v14 = sub_1000A0360();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v120 = &v105 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v119 = &v105 - v20;
  v21 = __chkstk_darwin(v19);
  v118 = &v105 - v22;
  __chkstk_darwin(v21);
  v121 = &v105 - v23;
  v124 = sub_1000A03E0();
  v122 = *(v124 - 8);
  v24 = *(v122 + 64);
  __chkstk_darwin(v124);
  v123 = &v105 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for WalletPassSharingGeneralMessageSchema(0);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26);
  v29 = &v105 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = objc_allocWithZone(PBDataReader);
  isa = sub_10009F300().super.isa;
  v32 = [v30 initWithData:isa];

  v33 = [v32 position];
  if (v33 >= [v32 length])
  {
    v63 = 0;
    v36 = 0xF000000000000000;
LABEL_44:

LABEL_45:
    sub_1000A0530();
    sub_10006C684(&qword_1000D83C0, &type metadata accessor for Explosion);
    swift_allocError();
    sub_1000A0520();
    swift_willThrow();
    v64 = v63;
LABEL_46:
    sub_1000057B0(v64, v36);
  }

  else
  {
    v106 = v15;
    v107 = v14;
    v109 = v29;
    v108 = a1;
    v34 = 0;
    v127 = 0;
    v128 = 0;
    v126 = 0;
    v35 = 1;
    v36 = 0xF000000000000000;
    while (([v32 hasError] & 1) == 0)
    {
      v38 = 0;
      v39 = 0;
      v40 = 0;
      while (1)
      {
        LOBYTE(v129[0]) = 0;
        v41 = [v32 position] + 1;
        if (v41 >= [v32 position] && (v42 = objc_msgSend(v32, "position") + 1, v42 <= objc_msgSend(v32, "length")))
        {
          v43 = [v32 data];
          [v43 getBytes:v129 range:{objc_msgSend(v32, "position"), 1}];

          [v32 setPosition:{objc_msgSend(v32, "position") + 1}];
        }

        else
        {
          [v32 _setError];
        }

        v40 |= (v129[0] & 0x7F) << v38;
        if ((v129[0] & 0x80) == 0)
        {
          break;
        }

        v38 += 7;
        if (v39++ >= 9)
        {
          v45 = 0;
          goto LABEL_18;
        }
      }

      if ([v32 hasError])
      {
        v45 = 0;
      }

      else
      {
        v45 = v40;
      }

LABEL_18:
      if ([v32 hasError])
      {

        sub_1000A0530();
        sub_10006C684(&qword_1000D83C0, &type metadata accessor for Explosion);
        swift_allocError();
        sub_1000A0520();
        swift_willThrow();
        v64 = v128;
        goto LABEL_46;
      }

      v46 = v45 >> 3;
      if ((v45 >> 3) == 3)
      {
        v57 = PBReaderReadData();
        if (v57)
        {
          v58 = v57;
          v59 = sub_10009F310();
          v61 = v60;
          sub_1000057B0(v128, v36);

          v128 = v59;
          v36 = v61;
        }

        else
        {
          sub_1000057B0(v128, v36);
          v128 = 0;
          v36 = 0xF000000000000000;
        }
      }

      else if (v46 == 2)
      {

        v54 = PBReaderReadString();
        if (v54)
        {
          v55 = v54;
          v127 = sub_1000A0580();
          v34 = v56;
        }

        else
        {
          v127 = 0;
          v34 = 0;
        }
      }

      else if (v46 == 1)
      {
        v47 = 0;
        v48 = 0;
        v49 = 0;
        while (1)
        {
          LOBYTE(v129[0]) = 0;
          v50 = [v32 position] + 1;
          if (v50 >= [v32 position] && (v51 = objc_msgSend(v32, "position") + 1, v51 <= objc_msgSend(v32, "length")))
          {
            v52 = [v32 data];
            [v52 getBytes:v129 range:{objc_msgSend(v32, "position"), 1}];

            [v32 setPosition:{objc_msgSend(v32, "position") + 1}];
          }

          else
          {
            [v32 _setError];
          }

          v49 |= (v129[0] & 0x7F) << v47;
          if ((v129[0] & 0x80) == 0)
          {
            break;
          }

          v47 += 7;
          if (v48++ > 8)
          {
            v126 = 0;
            v35 = 0;
            goto LABEL_4;
          }
        }

        v35 = 0;
        if ([v32 hasError])
        {
          v62 = 0;
        }

        else
        {
          v62 = v49;
        }

        v126 = v62;
      }

      else
      {
        PBReaderSkipValueWithTag();
      }

LABEL_4:
      v37 = [v32 position];
      if (v37 >= [v32 length])
      {
        break;
      }
    }

    if (v35)
    {
      v63 = v128;
      goto LABEL_44;
    }

    if (!v34)
    {
LABEL_51:
      v63 = v128;
      goto LABEL_45;
    }

    if (v36 >> 60 == 15)
    {

      goto LABEL_51;
    }

    v65 = sub_10009F1F0();
    v66 = *(v65 + 48);
    v67 = *(v65 + 52);
    swift_allocObject();
    v68 = sub_10009F1E0();
    sub_10006C684(&qword_1000D9E68, type metadata accessor for WalletPassSharingGeneralMessageSchema);
    v69 = v109;
    v70 = v128;
    v71 = v125;
    sub_10009F1D0();
    if (v71)
    {

      sub_1000057B0(v70, v36);

      return;
    }

    v125 = v68;
    v72 = *(v26 + 20);
    v74 = v122;
    v73 = v123;
    v75 = v124;
    (*(v122 + 16))(v123, v69 + v72, v124);
    v76 = (*(v74 + 88))(v73, v75);
    if (v76 == enum case for WalletPassSharingGeneralMessageFormat.genericAuthorizationToken(_:))
    {
      v77 = v69;
LABEL_57:
      sub_10006C628(v77);

      sub_1000057B0(v128, v36);

LABEL_63:
      v83 = sub_1000A00F0();
      (*(*(v83 - 8) + 56))(v108, 1, 1, v83);
      return;
    }

    v78 = v128;
    if (v76 == enum case for WalletPassSharingGeneralMessageFormat.carKey(_:))
    {

      v79 = v121;
      v80 = v109;
      WalletPassSharingGeneralMessageSchema.WalletPassSharingGeneralMessageContent.type.getter(v121);
      v81 = (*(v106 + 88))(v79, v107);
      if (v81 != enum case for WalletPassSharingGeneralMessageType.unknown(_:) && v81 != enum case for WalletPassSharingGeneralMessageType.invitation(_:) && v81 != enum case for WalletPassSharingGeneralMessageType.signingRequest(_:) && v81 != enum case for WalletPassSharingGeneralMessageType.signingResponse(_:) && v81 != enum case for WalletPassSharingGeneralMessageType.ownerCancel(_:) && v81 != enum case for WalletPassSharingGeneralMessageType.friendCancel(_:) && v81 != enum case for WalletPassSharingGeneralMessageType.pinEntryRequest(_:) && v81 != enum case for WalletPassSharingGeneralMessageType.pinEntryResponse(_:) && v81 != enum case for WalletPassSharingGeneralMessageType.invitationRequest(_:))
      {
        if (v81 != enum case for WalletPassSharingGeneralMessageType.externalInvitationRequest(_:) && v81 != enum case for WalletPassSharingGeneralMessageType.url(_:) && v81 != enum case for WalletPassSharingGeneralMessageType.discoveryRequest(_:) && v81 != enum case for WalletPassSharingGeneralMessageType.discoveryResponse(_:) && v81 != enum case for WalletPassSharingGeneralMessageType.proximitySetupAssistant(_:))
        {
          (*(v106 + 8))(v79, v107);
        }

        goto LABEL_93;
      }

      sub_10006C628(v80);

      v82 = v78;
LABEL_62:
      sub_1000057B0(v82, v36);
      goto LABEL_63;
    }

    if (v76 != enum case for WalletPassSharingGeneralMessageFormat.firstParty(_:))
    {
      v86 = enum case for WalletPassSharingGeneralMessageFormat.appleHomeKey(_:);
      v87 = v76;

      if (v87 == v86)
      {
        v88 = v118;
        v80 = v109;
        WalletPassSharingGeneralMessageSchema.WalletPassSharingGeneralMessageContent.type.getter(v118);
        v89 = (*(v106 + 88))(v88, v107);
        if (v89 != enum case for WalletPassSharingGeneralMessageType.unknown(_:))
        {
          if (v89 != enum case for WalletPassSharingGeneralMessageType.invitation(_:))
          {
            if (v89 != enum case for WalletPassSharingGeneralMessageType.signingRequest(_:) && v89 != enum case for WalletPassSharingGeneralMessageType.signingResponse(_:) && v89 != enum case for WalletPassSharingGeneralMessageType.ownerCancel(_:) && v89 != enum case for WalletPassSharingGeneralMessageType.friendCancel(_:) && v89 != enum case for WalletPassSharingGeneralMessageType.pinEntryRequest(_:) && v89 != enum case for WalletPassSharingGeneralMessageType.pinEntryResponse(_:) && v89 != enum case for WalletPassSharingGeneralMessageType.invitationRequest(_:) && v89 != enum case for WalletPassSharingGeneralMessageType.externalInvitationRequest(_:) && v89 != enum case for WalletPassSharingGeneralMessageType.url(_:) && v89 != enum case for WalletPassSharingGeneralMessageType.discoveryRequest(_:) && v89 != enum case for WalletPassSharingGeneralMessageType.discoveryResponse(_:) && v89 != enum case for WalletPassSharingGeneralMessageType.proximitySetupAssistant(_:))
            {
              (*(v106 + 8))(v88, v107);
            }

            goto LABEL_93;
          }

          sub_10006C628(v80);

          v82 = v128;
          goto LABEL_62;
        }

LABEL_93:
        v129[0] = 0;
        v129[1] = 0xE000000000000000;
        sub_1000A0850(59);
        v130._countAndFlagsBits = 0xD000000000000030;
        v130._object = 0x80000001000A3350;
        sub_1000A05E0(v130);
        sub_1000A08A0();
        v131._countAndFlagsBits = 0x203A6570797420;
        v131._object = 0xE700000000000000;
        sub_1000A05E0(v131);
        v90 = v120;
        WalletPassSharingGeneralMessageSchema.WalletPassSharingGeneralMessageContent.type.getter(v120);
        v91 = v107;
        sub_1000A08A0();
        (*(v106 + 8))(v90, v91);
        sub_1000A0530();
        sub_10006C684(&qword_1000D83C0, &type metadata accessor for Explosion);
        swift_allocError();
        sub_1000A0520();
        swift_willThrow();

        sub_1000057B0(v128, v36);
        sub_10006C628(v80);
        return;
      }

      (*(v74 + 8))(v123, v124);
LABEL_92:
      v80 = v109;
      goto LABEL_93;
    }

    v84 = v119;
    WalletPassSharingGeneralMessageSchema.WalletPassSharingGeneralMessageContent.type.getter(v119);
    v85 = (*(v106 + 88))(v84, v107);
    if (v85 == enum case for WalletPassSharingGeneralMessageType.unknown(_:) || v85 == enum case for WalletPassSharingGeneralMessageType.invitation(_:) || v85 == enum case for WalletPassSharingGeneralMessageType.signingRequest(_:) || v85 == enum case for WalletPassSharingGeneralMessageType.signingResponse(_:) || v85 == enum case for WalletPassSharingGeneralMessageType.ownerCancel(_:) || v85 == enum case for WalletPassSharingGeneralMessageType.friendCancel(_:) || v85 == enum case for WalletPassSharingGeneralMessageType.pinEntryRequest(_:) || v85 == enum case for WalletPassSharingGeneralMessageType.pinEntryResponse(_:))
    {

      goto LABEL_92;
    }

    if (v85 == enum case for WalletPassSharingGeneralMessageType.invitationRequest(_:))
    {
LABEL_109:
      v77 = v109;
      goto LABEL_57;
    }

    if (v85 == enum case for WalletPassSharingGeneralMessageType.externalInvitationRequest(_:))
    {
      sub_1000A0500();
      sub_10006C684(&qword_1000D9E78, &type metadata accessor for WalletPassSharingExternalInvitationRequestMessage);
      v92 = v117;
      sub_1000A0370();

      if ((*(v115 + 48))(v92, 1, v116) == 1)
      {
        sub_1000057C4(v117, &qword_1000D9E58, &qword_1000B0148);
        goto LABEL_92;
      }

      sub_10006C628(v109);

      sub_1000057B0(v128, v36);
      v94 = v116;
      v95 = *(v115 + 32);
      v96 = v111;
      v95(v111, v117, v116);
      v97 = v108;
      v95(v108, v96, v94);
      v98 = &enum case for IDSClientProtobufMessageType.walletPassSharingExternalInvitationRequestMessage(_:);
    }

    else
    {
      if (v85 != enum case for WalletPassSharingGeneralMessageType.url(_:))
      {
        if (v85 != enum case for WalletPassSharingGeneralMessageType.discoveryRequest(_:) && v85 != enum case for WalletPassSharingGeneralMessageType.discoveryResponse(_:) && v85 != enum case for WalletPassSharingGeneralMessageType.proximitySetupAssistant(_:))
        {

          (*(v106 + 8))(v119, v107);
          goto LABEL_92;
        }

        goto LABEL_109;
      }

      sub_1000A0000();
      sub_10006C684(&qword_1000D9E70, &type metadata accessor for WalletPassSharingUrlMessage);
      v93 = v114;
      sub_1000A0370();

      if ((*(v112 + 48))(v93, 1, v113) == 1)
      {
        sub_1000057C4(v114, &qword_1000D9E48, &qword_1000B0138);
        goto LABEL_92;
      }

      sub_10006C628(v109);

      sub_1000057B0(v128, v36);
      v99 = v113;
      v100 = *(v112 + 32);
      v101 = v110;
      v100(v110, v114, v113);
      v97 = v108;
      v100(v108, v101, v99);
      v98 = &enum case for IDSClientProtobufMessageType.walletPassSharingUrlMessage(_:);
    }

    v102 = *v98;
    v103 = sub_1000A00F0();
    v104 = *(v103 - 8);
    (*(v104 + 104))(v97, v102, v103);
    (*(v104 + 56))(v97, 0, 1, v103);
  }
}

uint64_t sub_10006C530(__int16 a1)
{
  if ((a1 - 10) >= 7u)
  {
    return 7;
  }

  else
  {
    return (a1 - 10);
  }
}

uint64_t sub_10006C548(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000017BC(&qword_1000D9E38, &qword_1000B0130);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006C5B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000017BC(&qword_1000D9E38, &qword_1000B0130);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006C628(uint64_t a1)
{
  v2 = type metadata accessor for WalletPassSharingGeneralMessageSchema(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10006C684(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10006C6E0()
{
  result = qword_1000D9E80;
  if (!qword_1000D9E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9E80);
  }

  return result;
}

uint64_t sub_10006C734@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v46 = a1;
  v43 = a2;
  v2 = sub_10009F990();
  v44 = *(v2 - 8);
  v3 = *(v44 + 64);
  v4 = __chkstk_darwin(v2);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v35 - v7;
  v9 = sub_1000017BC(&qword_1000D8358, &unk_1000A5C50);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v35 - v11;
  v13 = sub_10009F2A0();
  v45 = *(v13 - 8);
  v14 = *(v45 + 64);
  v15 = __chkstk_darwin(v13);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v35 - v18;
  v20 = sub_10009F270();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  v23 = sub_10009F260();
  sub_10006CBC0();
  v24 = v48;
  sub_10009F250();
  if (v24)
  {
  }

  v42 = v17;
  v46 = v23;
  v26 = v8;
  v48 = v6;
  v41 = v2;
  *&v47[4] = *&v47[15];
  *&v47[6] = *&v47[17];
  *&v47[8] = *&v47[19];
  *v47 = *&v47[11];
  *&v47[2] = *&v47[13];
  sub_10009F290();
  v27 = v45;
  if ((*(v45 + 48))(v12, 1, v13) == 1)
  {
    __break(1u);
  }

  else
  {
    v29 = v19;
    (*(v27 + 32))(v19, v12, v13);
    v30 = sub_10009F2B0();
    v28 = &v49;
    v32 = v44;
    if (v31 >> 60 != 15)
    {
      v38 = v30;
      v39 = v31;
      sub_10009F880();
      v33 = v41;
      v35 = 0;
      (*(v32 + 16))(v48, v26, v41);
      (*(v27 + 16))(v42, v29, v13);
      v40 = v13;
      v37 = v29;
      v36 = v26;

      sub_10009F890();
      sub_1000057B0(v38, v39);

      sub_10003DE90(v47);
      (*(v32 + 8))(v36, v33);
      return (*(v45 + 8))(v37, v40);
    }
  }

  __break(1u);
  v34 = *(v28 - 32);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

unint64_t sub_10006CBC0()
{
  result = qword_1000D9E88;
  if (!qword_1000D9E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9E88);
  }

  return result;
}

uint64_t sub_10006CC14(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000015;
  v4 = 0x80000001000A1310;
  if (v2 == 1)
  {
    v5 = 0x80000001000A1310;
  }

  else
  {
    v3 = 0x64726F6365526B63;
    v5 = 0xEA00000000004449;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x444965636E6566;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  v8 = 0xD000000000000015;
  if (*a2 != 1)
  {
    v8 = 0x64726F6365526B63;
    v4 = 0xEA00000000004449;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x444965636E6566;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1000A0BD0();
  }

  return v11 & 1;
}

Swift::Int sub_10006CD18()
{
  v1 = *v0;
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_10006CDC4()
{
  *v0;
  *v0;
  sub_1000A05B0();
}

Swift::Int sub_10006CE5C()
{
  v1 = *v0;
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_10006CF04@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10006D348(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_10006CF34(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x80000001000A1310;
  v5 = 0xD000000000000015;
  if (v2 != 1)
  {
    v5 = 0x64726F6365526B63;
    v4 = 0xEA00000000004449;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x444965636E6566;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_10006CF9C()
{
  v1 = 0xD000000000000015;
  if (*v0 != 1)
  {
    v1 = 0x64726F6365526B63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x444965636E6566;
  }
}

uint64_t sub_10006D000@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10006D348(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10006D028(uint64_t a1)
{
  v2 = sub_10006D298();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10006D064(uint64_t a1)
{
  v2 = sub_10006D298();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t FMFDeleteFenceSchema.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000017BC(&qword_1000D9E90, &qword_1000B0220);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17[-v8 - 8];
  v10 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_10006D298();
  sub_1000A0CE0();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v18) = 0;
  sub_1000A0B30();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    LOBYTE(v18) = 1;
    sub_1000A0B30();
    v18 = *(v3 + 2);
    v19 = v18;
    v17[23] = 2;
    sub_1000421FC(&v19, v17);
    sub_100006804();
    sub_1000A0B80();
    sub_100005568(v18, *(&v18 + 1));
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_10006D298()
{
  result = qword_1000D9E98;
  if (!qword_1000D9E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9E98);
  }

  return result;
}

double FMFDeleteFenceSchema.init(from:)@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_10006D394(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_10006D348(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000CD720;
  v6._object = a2;
  v4 = sub_1000A08F0(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10006D394@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1000017BC(&qword_1000D9EB8, &unk_1000B0470);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_10006D298();
  sub_1000A0CD0();
  if (v2)
  {
    return sub_100002308(a1);
  }

  LOBYTE(v25) = 0;
  v11 = sub_1000A09D0();
  v13 = v12;
  v23 = a2;
  v24 = v11;
  LOBYTE(v25) = 1;
  v14 = sub_1000A09D0();
  v16 = v15;
  v22 = v14;
  v27 = 2;
  sub_100005424();
  sub_1000A0A20();
  (*(v6 + 8))(v9, v5);
  v17 = v25;
  v18 = v26;

  sub_1000054CC(v17, v18);
  sub_100002308(a1);

  result = sub_100005568(v17, v18);
  v20 = v23;
  *v23 = v24;
  v20[1] = v13;
  v20[2] = v22;
  v20[3] = v16;
  v20[4] = v17;
  v20[5] = v18;
  return result;
}

unint64_t sub_10006D64C()
{
  result = qword_1000D9EA0;
  if (!qword_1000D9EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9EA0);
  }

  return result;
}

unint64_t sub_10006D6A4()
{
  result = qword_1000D9EA8;
  if (!qword_1000D9EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9EA8);
  }

  return result;
}

unint64_t sub_10006D6FC()
{
  result = qword_1000D9EB0;
  if (!qword_1000D9EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9EB0);
  }

  return result;
}

uint64_t sub_10006D760@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v2 = sub_10009F9D0();
  v21 = *(v2 - 8);
  v3 = *(v21 + 64);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10009FD20();
  v25 = *(v6 - 8);
  v7 = *(v25 + 64);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10009F270();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  sub_10009F260();
  sub_10006DA74();
  sub_10009F250();
  if (v1)
  {
  }

  v19 = v5;
  v20 = v2;
  v14 = v25;
  v15 = v23;
  v16 = v24;
  sub_1000054CC(v23, v24);
  sub_10009FD10();
  v17 = v19;
  (*(v14 + 16))(v19, v9, v6);
  (*(v21 + 104))(v17, enum case for IDSClientMessageType.nearbySessionMessage(_:), v20);
  sub_10009FC10();

  sub_100005568(v15, v16);
  return (*(v14 + 8))(v9, v6);
}

unint64_t sub_10006D9F8(uint64_t a1)
{
  result = sub_10006DA20();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10006DA20()
{
  result = qword_1000D9EC0;
  if (!qword_1000D9EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9EC0);
  }

  return result;
}

unint64_t sub_10006DA74()
{
  result = qword_1000D9EC8;
  if (!qword_1000D9EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9EC8);
  }

  return result;
}

uint64_t sub_10006DB20@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v200 = a2;
  v199 = a1;
  v192 = a3;
  v190 = sub_10009F9D0();
  v185 = *(v190 - 8);
  v3 = *(v185 + 64);
  __chkstk_darwin(v190);
  v184 = &v171 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = sub_10009F670();
  v186 = *(v191 - 8);
  v5 = *(v186 + 64);
  __chkstk_darwin(v191);
  v193 = &v171 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000017BC(&qword_1000D9ED8, &qword_1000B0558);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v189 = &v171 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v194 = &v171 - v12;
  __chkstk_darwin(v11);
  v195 = &v171 - v13;
  v14 = sub_1000017BC(&qword_1000D9EE0, &qword_1000B0560);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v188 = &v171 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v187 = &v171 - v19;
  __chkstk_darwin(v18);
  v196 = &v171 - v20;
  v21 = sub_10009F320();
  v197 = *(v21 - 8);
  v22 = *(v197 + 64);
  __chkstk_darwin(v21);
  v24 = &v171 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1000017BC(&qword_1000D9EE8, &unk_1000B0568);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v28 = &v171 - v27;
  v29 = sub_10009F650();
  v198 = *(v29 - 8);
  v30 = *(v198 + 64);
  v31 = __chkstk_darwin(v29);
  v33 = &v171 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v31);
  v36 = &v171 - v35;
  __chkstk_darwin(v34);
  v38 = &v171 - v37;
  v39 = sub_10009F270();
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  swift_allocObject();
  sub_10009F260();
  sub_1000017BC(&qword_1000D8370, &unk_1000AA060);
  sub_100005350();
  v42 = v201;
  sub_10009F250();
  if (v42)
  {
  }

  v201 = v24;
  v183 = v36;
  v182 = v33;
  v199 = v38;
  v200 = v29;

  v44 = v206;
  v45 = sub_10009FD00();
  if (!*(v44 + 16))
  {

    goto LABEL_10;
  }

  v181 = 0;
  v47 = sub_10000217C(v45, v46);
  v49 = v48;

  if ((v49 & 1) == 0)
  {
LABEL_10:

    sub_1000A0530();
    sub_10006FCF4(&qword_1000D83C0, &type metadata accessor for Explosion);
    swift_allocError();
    sub_1000A0520();
    return swift_willThrow();
  }

  v50 = (*(v44 + 56) + 16 * v47);
  v52 = *v50;
  v51 = v50[1];
  sub_1000054CC(*v50, v51);

  v53 = v51 >> 62;
  if ((v51 >> 62) > 1)
  {
    if (v53 != 2)
    {
      goto LABEL_18;
    }

    v56 = *(v52 + 16);
    v55 = *(v52 + 24);
    v57 = __OFSUB__(v55, v56);
    v58 = v55 - v56;
    if (!v57)
    {
      v54 = v21;
      if (v58 > 3)
      {
        goto LABEL_14;
      }

      goto LABEL_18;
    }

    __break(1u);
LABEL_174:
    __break(1u);
    goto LABEL_175;
  }

  v54 = v21;
  if (v53)
  {
    if (!__OFSUB__(HIDWORD(v52), v52))
    {
      if (HIDWORD(v52) - v52 > 3)
      {
        goto LABEL_14;
      }

LABEL_18:
      sub_1000A0530();
      sub_10006FCF4(&qword_1000D83C0, &type metadata accessor for Explosion);
      swift_allocError();
      goto LABEL_19;
    }

    goto LABEL_174;
  }

  if (BYTE6(v51) <= 3uLL)
  {
    goto LABEL_18;
  }

LABEL_14:
  sub_10009F2E0();
  sub_10009F640();
  v59 = v198;
  v60 = v200;
  if ((*(v198 + 48))(v28, 1, v200) == 1)
  {
    sub_1000057C4(v28, &qword_1000D9EE8, &unk_1000B0568);
    sub_1000A0530();
    sub_10006FCF4(&qword_1000D83C0, &type metadata accessor for Explosion);
    swift_allocError();
LABEL_19:
    sub_1000A0520();
    swift_willThrow();
    return sub_100005568(v52, v51);
  }

  (*(v59 + 32))(v199, v28, v60);
  v61 = sub_10006FBF4(1, 3, v52, v51);
  v63 = v61;
  v64 = v62;
  if (v62 >> 62 == 2)
  {
    v65 = *(v61 + 16);
  }

  sub_1000054CC(v61, v62);
  sub_10009F330();
  sub_10006FCF4(&qword_1000D9EF0, &type metadata accessor for Data.Iterator);
  sub_1000A07C0();
  if ((v206 & 0x100) != 0)
  {
    v66 = 0;
    v67 = v201;
  }

  else
  {
    v66 = 0;
    v67 = v201;
    do
    {
      v66 = v206 | (v66 << 8);
      sub_1000A07C0();
    }

    while (BYTE1(v206) != 1);
  }

  sub_100005568(v63, v64);
  result = (*(v197 + 8))(v67, v54);
  if (v53 <= 1)
  {
    if (v53)
    {
      v68 = v52 >> 32;
    }

    else
    {
      v68 = BYTE6(v51);
    }

    if (v53)
    {
      v69 = v52;
    }

    else
    {
      v69 = 0;
    }

    goto LABEL_35;
  }

  if (v53 == 2)
  {
    v69 = *(v52 + 16);
    v68 = *(v52 + 24);
LABEL_35:
    if (v68 < 4 || v68 < v69)
    {
      goto LABEL_180;
    }

    v70 = sub_10009F2D0();
    v72 = v70;
    v73 = v71;
    v74 = v71 >> 62;
    if ((v71 >> 62) > 1)
    {
      if (v74 != 2)
      {
        if (!v66)
        {
          goto LABEL_47;
        }

        goto LABEL_51;
      }

      v77 = *(v70 + 16);
      v76 = *(v70 + 24);
      v57 = __OFSUB__(v76, v77);
      v75 = v76 - v77;
      if (!v57)
      {
LABEL_46:
        if (v75 == v66)
        {
LABEL_47:
          v78 = [objc_allocWithZone(OPackCoder) init];
          v203 = 0;
          v208 = &type metadata for Data;
          v209 = &protocol witness table for Data;
          v206 = v72;
          v207 = v73;
          v79 = sub_1000022C4(&v206, &type metadata for Data);
          v80 = *v79;
          v81 = v79[1];
          v82 = v81 >> 62;
          if ((v81 >> 62) > 1)
          {
            if (v82 != 2)
            {
              memset(v202, 0, 14);
              sub_1000054CC(v72, v73);
              v83 = v202;
              goto LABEL_77;
            }

            v201 = v78;
            v84 = v72;
            v85 = *(v80 + 16);
            v86 = *(v80 + 24);
            v197 = v84;
            sub_1000054CC(v84, v73);
            v87 = sub_10009F210();
            if (v87)
            {
              result = sub_10009F230();
              if (__OFSUB__(v85, result))
              {
                __break(1u);
LABEL_179:
                __break(1u);
                goto LABEL_180;
              }

              v87 += v85 - result;
            }

            v57 = __OFSUB__(v86, v85);
            v88 = v86 - v85;
            if (!v57)
            {
              v89 = sub_10009F220();
              if (v89 >= v88)
              {
                v90 = v88;
              }

              else
              {
                v90 = v89;
              }

              v91 = &v87[v90];
              if (v87)
              {
                v92 = v91;
              }

              else
              {
                v92 = 0;
              }

              v93 = v181;
              sub_10006FD3C(v87, v92, &v204);
              v94 = v93;
              v72 = v197;
              goto LABEL_75;
            }

LABEL_177:
            __break(1u);
          }

          if (!v82)
          {
            v202[0] = *v79;
            LOWORD(v202[1]) = v81;
            BYTE2(v202[1]) = BYTE2(v81);
            BYTE3(v202[1]) = BYTE3(v81);
            BYTE4(v202[1]) = BYTE4(v81);
            BYTE5(v202[1]) = BYTE5(v81);
            sub_1000054CC(v72, v73);
            v83 = v202 + BYTE6(v81);
LABEL_77:
            v105 = v181;
            sub_10006FD3C(v202, v83, &v204);
            v94 = v105;
            goto LABEL_78;
          }

          v201 = v78;
          v95 = v72;
          v96 = v80;
          v97 = v80 >> 32;
          v98 = v97 - v96;
          if (v97 >= v96)
          {
            sub_1000054CC(v95, v73);
            v99 = sub_10009F210();
            if (!v99)
            {
LABEL_68:
              v72 = v95;
              v100 = sub_10009F220();
              if (v100 >= v98)
              {
                v101 = v98;
              }

              else
              {
                v101 = v100;
              }

              v102 = &v99[v101];
              if (v99)
              {
                v103 = v102;
              }

              else
              {
                v103 = 0;
              }

              v104 = v181;
              sub_10006FD3C(v99, v103, &v204);
              v94 = v104;
LABEL_75:
              v78 = v201;
LABEL_78:
              v106 = v204;
              sub_100002308(&v206);
              isa = sub_10009F300().super.isa;
              sub_100005568(v106, *(&v106 + 1));
              v108 = [v78 unpack:isa status:&v203];

              if (v108)
              {
                v109 = sub_1000A0550();

                v110 = v203;
                if (v110 == sub_10009F3B0())
                {
                  v181 = v94;
                  v197 = v72;
                  v178 = v73;
                  v179 = v52;
                  v180 = v51;
                  v111 = sub_10009F840();
                  v112 = *(*(v111 - 8) + 56);
                  v112(v196, 1, 1, v111);
                  v113 = sub_10009F820();
                  v114 = *(v113 - 8);
                  v115 = *(v114 + 56);
                  v175 = v113;
                  v174 = v115;
                  v173 = v114 + 56;
                  (v115)(v195, 1, 1);
                  v117 = v198;
                  v116 = v199;
                  v118 = v183;
                  v119 = v200;
                  v177 = *(v198 + 16);
                  v176 = v198 + 16;
                  v177(v183, v199, v200);
                  v120 = (*(v117 + 88))(v118, v119);
                  if (v120 != enum case for RapportMessage.RPFrameType.RPFrameTypeFamilyIdentityRequest(_:) && v120 != enum case for RapportMessage.RPFrameType.RPFrameTypeFamilyIdentityResponse(_:) && v120 != enum case for RapportMessage.RPFrameType.RPFrameTypeFamilyIdentityUpdate(_:))
                  {
                    if (v120 != enum case for RapportMessage.RPFrameType.RPFrameTypeFriendIdentityRequest(_:) && v120 != enum case for RapportMessage.RPFrameType.RPFrameTypeFriendIdentityResponse(_:) && v120 != enum case for RapportMessage.RPFrameType.RPFrameTypeFriendIdentityUpdate(_:))
                    {

                      sub_1000A0530();
                      v121 = v119;
                      sub_10006FCF4(&qword_1000D83C0, &type metadata accessor for Explosion);
                      swift_allocError();
                      sub_1000A0520();
                      swift_willThrow();

                      sub_100005568(v179, v180);
                      sub_100005568(v197, v178);
                      sub_1000057C4(v195, &qword_1000D9ED8, &qword_1000B0558);
                      sub_1000057C4(v196, &qword_1000D9EE0, &qword_1000B0560);
                      v122 = *(v198 + 8);
                      v122(v116, v121);
                      return (v122)(v183, v121);
                    }

                    *&v204 = 0x4B5249645FLL;
                    *(&v204 + 1) = 0xE500000000000000;

                    sub_1000A0820();
                    if (*(v109 + 16) && (v142 = sub_100002138(&v206), (v143 & 1) != 0))
                    {
                      sub_10006FDD0(*(v109 + 56) + 32 * v142, &v204);
                      sub_100002E74(&v206);

                      if (*(&v205 + 1))
                      {
                        v144 = swift_dynamicCast();
                        v145 = v206;
                        if (!v144)
                        {
                          v145 = 0;
                        }

                        v194 = v145;
                        v146 = 0xF000000000000000;
                        if (v144)
                        {
                          v146 = v207;
                        }

LABEL_142:
                        v183 = v146;
                        *&v204 = 0x6C65646F6DLL;
                        *(&v204 + 1) = 0xE500000000000000;

                        sub_1000A0820();
                        if (*(v109 + 16) && (v150 = sub_100002138(&v206), (v151 & 1) != 0))
                        {
                          sub_10006FDD0(*(v109 + 56) + 32 * v150, &v204);
                          sub_100002E74(&v206);

                          if (*(&v205 + 1))
                          {
                            v152 = swift_dynamicCast();
                            v153 = v206;
                            if (!v152)
                            {
                              v153 = 0;
                            }

                            v175 = v153;
LABEL_150:
                            *&v204 = 0x44497364695FLL;
                            *(&v204 + 1) = 0xE600000000000000;

                            sub_1000A0820();
                            v154 = *(v109 + 16);
                            v201 = v78;
                            v172 = v112;
                            if (v154 && (v155 = sub_100002138(&v206), (v156 & 1) != 0))
                            {
                              sub_10006FDD0(*(v109 + 56) + 32 * v155, &v204);
                              sub_100002E74(&v206);

                              if (*(&v205 + 1))
                              {
                                swift_dynamicCast();
LABEL_156:
                                *&v204 = 6710879;
                                *(&v204 + 1) = 0xE300000000000000;

                                sub_1000A0820();
                                if (*(v109 + 16) && (v157 = sub_100002138(&v206), (v158 & 1) != 0))
                                {
                                  sub_10006FDD0(*(v109 + 56) + 32 * v157, &v204);
                                  sub_100002E74(&v206);

                                  if (*(&v205 + 1))
                                  {
                                    v159 = swift_dynamicCast() ^ 1;
LABEL_162:
                                    *&v204 = 0x4B5064655FLL;
                                    *(&v204 + 1) = 0xE500000000000000;
                                    sub_1000A0820();
                                    if (*(v109 + 16) && (v160 = sub_100002138(&v206), (v161 & 1) != 0))
                                    {
                                      sub_10006FDD0(*(v109 + 56) + 32 * v160, &v204);
                                      sub_100002E74(&v206);

                                      if (*(&v205 + 1))
                                      {
                                        swift_dynamicCast();
LABEL_168:
                                        LOBYTE(v206) = v159;
                                        v162 = v187;
                                        v163 = v181;
                                        sub_10009F830();
                                        v140 = v163;
                                        if (v163)
                                        {
                                          v206 = 0;
                                          v207 = 0xE000000000000000;
                                          sub_1000A0850(38);
                                          v141 = "Failed to create RPFrameTypeFriend: ";
                                          goto LABEL_170;
                                        }

                                        v149 = v196;
                                        sub_1000057C4(v196, &qword_1000D9EE0, &qword_1000B0560);
                                        v172(v162, 0, 1, v111);
                                        sub_1000056E8(v162, v149, &qword_1000D9EE0, &qword_1000B0560);
                                        v148 = v198;
                                        v147 = v195;
LABEL_172:
                                        v164 = v199;
                                        v177(v182, v199, v200);
                                        sub_100005620(v149, v188, &qword_1000D9EE0, &qword_1000B0560);
                                        sub_100005620(v147, v189, &qword_1000D9ED8, &qword_1000B0558);
                                        v165 = v193;
                                        sub_10009F660();
                                        v166 = v191;
                                        v167 = v190;
                                        v181 = 0;
                                        v168 = v186;
                                        v169 = v165;
                                        v170 = v184;
                                        (*(v186 + 16))(v184, v169, v191);
                                        (*(v185 + 104))(v170, enum case for IDSClientMessageType.rapportMessage(_:), v167);
                                        sub_10009FC10();

                                        sub_100005568(v179, v180);
                                        sub_100005568(v197, v178);
                                        (*(v168 + 8))(v193, v166);
                                        sub_1000057C4(v147, &qword_1000D9ED8, &qword_1000B0558);
                                        sub_1000057C4(v149, &qword_1000D9EE0, &qword_1000B0560);
                                        return (*(v148 + 8))(v164, v200);
                                      }
                                    }

                                    else
                                    {

                                      sub_100002E74(&v206);
                                      v204 = 0u;
                                      v205 = 0u;
                                    }

                                    sub_1000057C4(&v204, &qword_1000D9EF8, &qword_1000B0578);
                                    goto LABEL_168;
                                  }
                                }

                                else
                                {

                                  sub_100002E74(&v206);
                                  v204 = 0u;
                                  v205 = 0u;
                                }

                                sub_1000057C4(&v204, &qword_1000D9EF8, &qword_1000B0578);
                                v159 = 1;
                                goto LABEL_162;
                              }
                            }

                            else
                            {

                              sub_100002E74(&v206);
                              v204 = 0u;
                              v205 = 0u;
                            }

                            sub_1000057C4(&v204, &qword_1000D9EF8, &qword_1000B0578);
                            goto LABEL_156;
                          }
                        }

                        else
                        {

                          sub_100002E74(&v206);
                          v204 = 0u;
                          v205 = 0u;
                        }

                        sub_1000057C4(&v204, &qword_1000D9EF8, &qword_1000B0578);
                        v175 = 0;
                        goto LABEL_150;
                      }
                    }

                    else
                    {

                      sub_100002E74(&v206);
                      v204 = 0u;
                      v205 = 0u;
                    }

                    sub_1000057C4(&v204, &qword_1000D9EF8, &qword_1000B0578);
                    v194 = 0;
                    v146 = 0xF000000000000000;
                    goto LABEL_142;
                  }

                  *&v204 = 6710879;
                  *(&v204 + 1) = 0xE300000000000000;

                  sub_1000A0820();
                  if (*(v109 + 16) && (v123 = sub_100002138(&v206), (v124 & 1) != 0))
                  {
                    sub_10006FDD0(*(v109 + 56) + 32 * v123, &v204);
                    sub_100002E74(&v206);

                    if (*(&v205 + 1))
                    {
                      v125 = swift_dynamicCast();
                      v126 = v206;
                      LODWORD(v187) = v125 ^ 1;
                      if (!v125)
                      {
                        v126 = 0;
                      }

                      v183 = v126;
LABEL_99:
                      *&v204 = 0x6C65646F6DLL;
                      *(&v204 + 1) = 0xE500000000000000;

                      sub_1000A0820();
                      if (*(v109 + 16) && (v127 = sub_100002138(&v206), (v128 & 1) != 0))
                      {
                        sub_10006FDD0(*(v109 + 56) + 32 * v127, &v204);
                        sub_100002E74(&v206);

                        if (*(&v205 + 1))
                        {
                          swift_dynamicCast();
LABEL_105:
                          *&v204 = 0x4B5064655FLL;
                          *(&v204 + 1) = 0xE500000000000000;

                          sub_1000A0820();
                          v129 = *(v109 + 16);
                          v201 = v78;
                          if (v129 && (v130 = sub_100002138(&v206), (v131 & 1) != 0))
                          {
                            sub_10006FDD0(*(v109 + 56) + 32 * v130, &v204);
                            sub_100002E74(&v206);

                            if (*(&v205 + 1))
                            {
                              swift_dynamicCast();
LABEL_111:
                              *&v204 = 0x44497364695FLL;
                              *(&v204 + 1) = 0xE600000000000000;

                              sub_1000A0820();
                              if (*(v109 + 16) && (v132 = sub_100002138(&v206), (v133 & 1) != 0))
                              {
                                sub_10006FDD0(*(v109 + 56) + 32 * v132, &v204);
                                sub_100002E74(&v206);

                                if (*(&v205 + 1))
                                {
                                  swift_dynamicCast();
LABEL_117:
                                  *&v204 = 0x4B5249645FLL;
                                  *(&v204 + 1) = 0xE500000000000000;

                                  sub_1000A0820();
                                  if (*(v109 + 16) && (v134 = sub_100002138(&v206), (v135 & 1) != 0))
                                  {
                                    sub_10006FDD0(*(v109 + 56) + 32 * v134, &v204);
                                    sub_100002E74(&v206);

                                    if (*(&v205 + 1))
                                    {
                                      swift_dynamicCast();
LABEL_123:
                                      *&v204 = 1701667182;
                                      *(&v204 + 1) = 0xE400000000000000;
                                      sub_1000A0820();
                                      if (*(v109 + 16) && (v136 = sub_100002138(&v206), (v137 & 1) != 0))
                                      {
                                        sub_10006FDD0(*(v109 + 56) + 32 * v136, &v204);
                                        sub_100002E74(&v206);

                                        if (*(&v205 + 1))
                                        {
                                          swift_dynamicCast();
LABEL_129:
                                          LOBYTE(v206) = v187;
                                          v138 = v194;
                                          v139 = v181;
                                          sub_10009F810();
                                          v140 = v139;
                                          if (v139)
                                          {
                                            v206 = 0;
                                            v207 = 0xE000000000000000;
                                            sub_1000A0850(38);
                                            v141 = "Failed to create RPFrameTypeFamily: ";
LABEL_170:
                                            v210._countAndFlagsBits = 0xD000000000000024;
                                            v210._object = ((v141 - 32) | 0x8000000000000000);
                                            sub_1000A05E0(v210);
                                            *&v204 = v140;
                                            sub_1000017BC(&qword_1000D9F00, &unk_1000B0580);
                                            sub_1000A08A0();
                                            sub_1000A0530();
                                            sub_10006FCF4(&qword_1000D83C0, &type metadata accessor for Explosion);
                                            swift_allocError();
                                            sub_1000A0520();
                                            swift_willThrow();

                                            sub_100005568(v179, v180);
                                            sub_100005568(v197, v178);
                                            sub_1000057C4(v195, &qword_1000D9ED8, &qword_1000B0558);
                                            sub_1000057C4(v196, &qword_1000D9EE0, &qword_1000B0560);
                                            return (*(v198 + 8))(v199, v200);
                                          }

                                          v147 = v195;
                                          sub_1000057C4(v195, &qword_1000D9ED8, &qword_1000B0558);
                                          v174(v138, 0, 1, v175);
                                          sub_1000056E8(v138, v147, &qword_1000D9ED8, &qword_1000B0558);
                                          v148 = v198;
                                          v149 = v196;
                                          goto LABEL_172;
                                        }
                                      }

                                      else
                                      {

                                        sub_100002E74(&v206);
                                        v204 = 0u;
                                        v205 = 0u;
                                      }

                                      sub_1000057C4(&v204, &qword_1000D9EF8, &qword_1000B0578);
                                      goto LABEL_129;
                                    }
                                  }

                                  else
                                  {

                                    sub_100002E74(&v206);
                                    v204 = 0u;
                                    v205 = 0u;
                                  }

                                  sub_1000057C4(&v204, &qword_1000D9EF8, &qword_1000B0578);
                                  goto LABEL_123;
                                }
                              }

                              else
                              {

                                sub_100002E74(&v206);
                                v204 = 0u;
                                v205 = 0u;
                              }

                              sub_1000057C4(&v204, &qword_1000D9EF8, &qword_1000B0578);
                              goto LABEL_117;
                            }
                          }

                          else
                          {

                            sub_100002E74(&v206);
                            v204 = 0u;
                            v205 = 0u;
                          }

                          sub_1000057C4(&v204, &qword_1000D9EF8, &qword_1000B0578);
                          goto LABEL_111;
                        }
                      }

                      else
                      {

                        sub_100002E74(&v206);
                        v204 = 0u;
                        v205 = 0u;
                      }

                      sub_1000057C4(&v204, &qword_1000D9EF8, &qword_1000B0578);
                      goto LABEL_105;
                    }
                  }

                  else
                  {

                    sub_100002E74(&v206);
                    v204 = 0u;
                    v205 = 0u;
                  }

                  sub_1000057C4(&v204, &qword_1000D9EF8, &qword_1000B0578);
                  v183 = 0;
                  LODWORD(v187) = 1;
                  goto LABEL_99;
                }
              }

              sub_1000A0530();
              sub_10006FCF4(&qword_1000D83C0, &type metadata accessor for Explosion);
              swift_allocError();
              sub_1000A0520();
              swift_willThrow();

LABEL_89:
              sub_100005568(v52, v51);
              sub_100005568(v72, v73);
              return (*(v198 + 8))(v199, v200);
            }

            result = sub_10009F230();
            if (!__OFSUB__(v96, result))
            {
              v99 += v96 - result;
              goto LABEL_68;
            }

            goto LABEL_179;
          }

LABEL_176:
          __break(1u);
          goto LABEL_177;
        }

LABEL_51:
        sub_1000A0530();
        sub_10006FCF4(&qword_1000D83C0, &type metadata accessor for Explosion);
        swift_allocError();
        sub_1000A0520();
        swift_willThrow();
        goto LABEL_89;
      }

      __break(1u);
    }

    else if (!v74)
    {
      v75 = BYTE6(v71);
      goto LABEL_46;
    }

    LODWORD(v75) = HIDWORD(v70) - v70;
    if (!__OFSUB__(HIDWORD(v70), v70))
    {
      v75 = v75;
      goto LABEL_46;
    }

LABEL_175:
    __break(1u);
    goto LABEL_176;
  }

LABEL_180:
  __break(1u);
  return result;
}

uint64_t sub_10006FBF4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v7 = *(a3 + 16);
      v6 = *(a3 + 24);
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }
  }

  else
  {
    v5 = v4 == 0;
    if (v4)
    {
      v6 = a3 >> 32;
    }

    else
    {
      v6 = BYTE6(a4);
    }

    if (v5)
    {
      v7 = 0;
    }

    else
    {
      v7 = a3;
    }
  }

  if (v7 > a2)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v6 <= a2)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (a2 + 1 >= result)
  {
    return sub_10009F2D0();
  }

LABEL_17:
  __break(1u);
  return result;
}

unint64_t sub_10006FC78(uint64_t a1)
{
  result = sub_10006FCA0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10006FCA0()
{
  result = qword_1000D9ED0;
  if (!qword_1000D9ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9ED0);
  }

  return result;
}

uint64_t sub_10006FCF4(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *sub_10006FD3C@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_10006FE2C(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_10006FEE4(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_10006FF60(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_10006FDD0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10006FE2C(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_10006FEE4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_10009F240();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_10009F200();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_10009F2C0();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_10006FF60(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_10009F240();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_10009F200();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_10006FFF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v65 = a1;
  v66 = a2;
  v64 = a4;
  v5 = sub_10009FAC0();
  v58 = *(v5 - 8);
  v59 = v5;
  v6 = *(v58 + 64);
  __chkstk_darwin(v5);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10009F760();
  v57 = *(v9 - 8);
  v10 = *(v57 + 64);
  __chkstk_darwin(v9);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10009F790();
  v56 = *(v13 - 8);
  v14 = *(v56 + 64);
  __chkstk_darwin(v13);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10009F800();
  v54 = *(v17 - 8);
  v55 = v17;
  v18 = *(v54 + 64);
  __chkstk_darwin(v17);
  v60 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10009F9D0();
  v61 = *(v20 - 8);
  v62 = v20;
  v21 = *(v61 + 64);
  __chkstk_darwin(v20);
  v63 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10009FA90();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = (v26 + 15) & 0xFFFFFFFFFFFFFFF0;
  v28 = &v53 - v27;
  if (a3 > 234)
  {
    switch(a3)
    {
      case 235:
        v40 = v70;
        result = sub_10007FC60();
        if (!v40)
        {
          v41 = v56;
          v42 = v63;
          (*(v56 + 16))(v63, v16, v13);
          (*(v61 + 104))(v42, enum case for IDSClientMessageType.sessionCancel(_:), v62);
          sub_10009FC10();
          return (*(v41 + 8))(v16, v13);
        }

        break;
      case 237:
LABEL_11:
        v34 = sub_10009F270();
        v35 = *(v34 + 48);
        v36 = *(v34 + 52);
        swift_allocObject();
        sub_10009F260();
        sub_100038CC8();
        v37 = v70;
        sub_10009F250();
        if (v37)
        {
        }

        v70 = v67;
        v47 = v68;
        v48 = v69;

        sub_100005750(v47, v48);
        v49 = v60;
        sub_10009F7F0();

        sub_1000057B0(v47, v48);
        v51 = v54;
        v50 = v55;
        v52 = v63;
        (*(v54 + 16))(v63, v49, v55);
        (*(v61 + 104))(v52, enum case for IDSClientMessageType.sessionDecline(_:), v62);
        sub_10009FC10();
        return (*(v51 + 8))(v49, v50);
      case 238:
        v29 = v70;
        result = sub_10007276C();
        if (!v29)
        {
          v32 = v58;
          v31 = v59;
          v33 = v63;
          (*(v58 + 16))(v63, v8, v59);
          (*(v61 + 104))(v33, enum case for IDSClientMessageType.sessionReinitiate(_:), v62);
          sub_10009FC10();
          return (*(v32 + 8))(v8, v31);
        }

        break;
      default:
LABEL_17:
        sub_1000021F4();
        swift_allocError();
        *v43 = a3;
        *(v43 + 8) = 0;
        *(v43 + 16) = 0;
        return swift_willThrow();
    }
  }

  else
  {
    switch(a3)
    {
      case 232:
        v38 = v70;
        result = sub_100043F6C(&v53 - v27);
        if (!v38)
        {
          v39 = v63;
          (*(v24 + 16))(v63, v28, v23);
          (*(v61 + 104))(v39, enum case for IDSClientMessageType.sessionInvitation(_:), v62);
          sub_10009FC10();
          return (*(v24 + 8))(v28, v23);
        }

        break;
      case 233:
        v44 = v70;
        result = sub_1000622B8();
        if (!v44)
        {
          v45 = v57;
          v46 = v63;
          (*(v57 + 16))(v63, v12, v9);
          (*(v61 + 104))(v46, enum case for IDSClientMessageType.sessionAccept(_:), v62);
          sub_10009FC10();
          return (*(v45 + 8))(v12, v9);
        }

        break;
      case 234:
        goto LABEL_11;
      default:
        goto LABEL_17;
    }
  }

  return result;
}

unint64_t sub_10007071C(uint64_t a1)
{
  result = sub_100070744();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100070744()
{
  result = qword_1000D9F08;
  if (!qword_1000D9F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9F08);
  }

  return result;
}

uint64_t sub_1000707A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v55 = a1;
  v56 = a2;
  v54 = a4;
  v5 = sub_10009FAC0();
  v50 = *(v5 - 8);
  v6 = *(v50 + 64);
  __chkstk_darwin(v5);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10009F760();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10009F790();
  v49 = *(v14 - 8);
  v15 = *(v49 + 64);
  __chkstk_darwin(v14);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10009F9D0();
  v51 = *(v18 - 8);
  v52 = v18;
  v19 = *(v51 + 64);
  __chkstk_darwin(v18);
  v53 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10009F800();
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21);
  v26 = &v48 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 <= 233)
  {
    if (a3 == 227)
    {
      return sub_1000710E8(v55, v56, v54);
    }

    if (a3 == 232)
    {
      return sub_100070E00(v55, v56);
    }

    if (a3 != 233)
    {
      goto LABEL_19;
    }

    v31 = v61;
    result = sub_1000622B8();
    if (!v31)
    {
      v32 = v10;
      v33 = *(v10 + 16);
      v34 = v53;
      v33(v53, v13, v9);
      (*(v51 + 104))(v34, enum case for IDSClientMessageType.sessionAccept(_:), v52);
      sub_10009FC10();
      return (*(v32 + 8))(v13, v9);
    }
  }

  else
  {
    if (a3 <= 236)
    {
      if (a3 != 234)
      {
        if (a3 == 235)
        {
          v27 = v61;
          result = sub_10007FC60();
          if (!v27)
          {
            v29 = v49;
            v30 = v53;
            (*(v49 + 16))(v53, v17, v14);
            (*(v51 + 104))(v30, enum case for IDSClientMessageType.sessionCancel(_:), v52);
            sub_10009FC10();
            return (*(v29 + 8))(v17, v14);
          }

          return result;
        }

LABEL_19:
        sub_1000021F4();
        swift_allocError();
        *v43 = a3;
        *(v43 + 8) = 0;
        *(v43 + 16) = 0;
        return swift_willThrow();
      }

      goto LABEL_16;
    }

    if (a3 == 237)
    {
LABEL_16:
      v38 = v24;
      v50 = v23;
      v39 = sub_10009F270();
      v40 = *(v39 + 48);
      v41 = *(v39 + 52);
      swift_allocObject();
      sub_10009F260();
      sub_100038CC8();
      v42 = v61;
      sub_10009F250();
      if (v42)
      {
      }

      v61 = v57;
      v56 = v58;
      v44 = v59;
      v45 = v60;

      sub_100005750(v44, v45);
      sub_10009F7F0();

      sub_1000057B0(v44, v45);
      v46 = v53;
      v47 = v50;
      (*(v38 + 16))(v53, v26, v50);
      (*(v51 + 104))(v46, enum case for IDSClientMessageType.sessionDecline(_:), v52);
      sub_10009FC10();
      return (*(v38 + 8))(v26, v47);
    }

    if (a3 != 238)
    {
      goto LABEL_19;
    }

    v35 = v61;
    result = sub_10007276C();
    if (!v35)
    {
      v36 = v50;
      v37 = v53;
      (*(v50 + 16))(v53, v8, v5);
      (*(v51 + 104))(v37, enum case for IDSClientMessageType.sessionReinitiate(_:), v52);
      sub_10009FC10();
      return (*(v36 + 8))(v8, v5);
    }
  }

  return result;
}

uint64_t sub_100070E00(uint64_t a1, uint64_t a2)
{
  v27 = a1;
  v28 = a2;
  v2 = sub_10009F9D0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v26 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10009FA90();
  v24 = *(v6 - 8);
  v25 = v6;
  v7 = *(v24 + 64);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10009F3A0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000A0430();
  v15 = sub_10009F390();
  v16 = sub_1000A0760();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v23 = v3;
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "SSMessageUnpacker: unpacking an invitation message", v17, 2u);
    v3 = v23;
  }

  (*(v11 + 8))(v14, v10);
  v18 = v29;
  result = sub_100043F6C(v9);
  if (!v18)
  {
    v21 = v24;
    v20 = v25;
    v22 = v26;
    (*(v24 + 16))(v26, v9, v25);
    (*(v3 + 104))(v22, enum case for IDSClientMessageType.sessionInvitation(_:), v2);
    sub_10009FC10();
    return (*(v21 + 8))(v9, v20);
  }

  return result;
}

uint64_t sub_1000710E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v123 = a1;
  v124 = a2;
  v117 = a3;
  v3 = sub_10009F7C0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 8);
  __chkstk_darwin(v3);
  v121 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10009F9D0();
  v115 = *(v7 - 8);
  v116 = v7;
  v8 = *(v115 + 64);
  v9 = __chkstk_darwin(v7);
  v120 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v104 = &v92 - v11;
  v12 = sub_10009FF70();
  v105 = *(v12 - 8);
  v106 = v12;
  v13 = *(v105 + 64);
  __chkstk_darwin(v12);
  v109 = &v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_10009F5D0();
  v118 = *(v114 - 8);
  v15 = *(v118 + 64);
  __chkstk_darwin(v114);
  v111 = &v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000017BC(&qword_1000D83B0, &qword_1000A5D58);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v108 = &v92 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v110 = &v92 - v22;
  v23 = __chkstk_darwin(v21);
  v113 = &v92 - v24;
  __chkstk_darwin(v23);
  v119 = &v92 - v25;
  v26 = sub_1000017BC(&qword_1000D83B8, &unk_1000B0670);
  v27 = *(*(v26 - 8) + 64);
  v28 = __chkstk_darwin(v26 - 8);
  v107 = &v92 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v112 = &v92 - v31;
  __chkstk_darwin(v30);
  v33 = &v92 - v32;
  v34 = sub_10009F3A0();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  v37 = __chkstk_darwin(v34);
  v122 = &v92 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v37);
  v103 = &v92 - v40;
  __chkstk_darwin(v39);
  v42 = &v92 - v41;
  sub_1000A0430();
  v43 = sub_10009F390();
  v44 = sub_1000A0760();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v102 = v4;
    *v45 = 0;
    _os_log_impl(&_mh_execute_header, v43, v44, "SSMessageUnpacker: Unpacking a status message", v45, 2u);
    v4 = v102;
  }

  v48 = *(v35 + 8);
  v46 = v35 + 8;
  v47 = v48;
  v48(v42, v34);
  v49 = sub_10009F270();
  v50 = *(v49 + 48);
  v51 = *(v49 + 52);
  swift_allocObject();
  v52 = sub_10009F260();
  sub_100046A58();
  v53 = v155;
  sub_10009F250();
  if (v53)
  {
  }

  v124 = v34;
  v155 = v52;
  *v137 = v151;
  *&v137[16] = v152;
  v138 = v153;
  v133 = v147;
  v134 = v148;
  v135 = v149;
  v136 = v150;
  v129 = v143;
  v130 = v144;
  v131 = v145;
  v132 = v146;
  v126 = v140;
  v139 = v154;
  v127 = v141;
  v128 = v142;
  if (*(&v144 + 1))
  {
    v55 = *&v137[16];
    if (*&v137[16])
    {
      v56 = *&v137[8];
      if (*&v137[8] == __PAIR128__(0xE500000000000000, 0x6572616873) || (sub_1000A0BD0() & 1) != 0)
      {
        v96 = v56;
        v97 = v55;
        v95 = v46;
        v57 = sub_10009F860();
        v58 = *(v57 - 8);
        v59 = *(v58 + 56);
        v60 = v58 + 56;
        v101 = v33;
        v59(v33, 1, 1, v57);
        v61 = *(&v129 + 1);
        if (*(&v129 + 1) >> 60 != 15)
        {
          v100 = v60;
          v102 = v59;
          v122 = *(&v126 + 1);
          v123 = v126;
          v62 = v127;
          v120 = *(&v128 + 1);
          v63 = v128;
          v121 = v128;
          v64 = v129;
          sub_100005750(v126, *(&v126 + 1));
          sub_100005750(v62, *(&v62 + 1));
          sub_100005750(v63, v120);
          sub_1000054CC(v64, v61);
          sub_10009F850();
          v69 = v101;
          sub_1000057C4(v101, &qword_1000D83B8, &unk_1000B0670);
          v70 = v112;
          v102(v112, 0, 1, v57);
          sub_1000056E8(v70, v69, &qword_1000D83B8, &unk_1000B0670);
        }

        v93 = *(v118 + 56);
        v94 = v118 + 56;
        v93(v119, 1, 1, v114);
        v122 = v131;
        v123 = v130;
        v98 = *(&v132 + 1);
        v120 = v133;
        v121 = v132;
        v112 = v134;
        v102 = v135;
        v100 = v136;
        v99 = v137[0];
        sub_100005620(&v130, &v125, &qword_1000D9C48, &qword_1000AED58);

        v71 = v113;
        sub_10009F5C0();
        sub_1000057C4(&v130, &qword_1000D9C48, &qword_1000AED58);
        v72 = v119;
        sub_1000057C4(v119, &qword_1000D83B0, &qword_1000A5D58);
        v73 = v114;
        v93(v71, 0, 1, v114);
        sub_1000056E8(v71, v72, &qword_1000D83B0, &qword_1000A5D58);
        v74 = v110;
        sub_100005620(v72, v110, &qword_1000D83B0, &qword_1000A5D58);
        v75 = v118;
        v76 = (*(v118 + 48))(v74, 1, v73);
        v77 = v101;
        if (v76 == 1)
        {
          sub_1000057C4(v74, &qword_1000D83B0, &qword_1000A5D58);
        }

        else
        {
          (*(v75 + 32))(v111, v74, v73);
          if (sub_10009F5B0() == 0xD000000000000010 && 0x80000001000A2F50 == v78)
          {
          }

          else
          {
            v79 = sub_1000A0BD0();

            if ((v79 & 1) == 0)
            {
              if (sub_10009F5B0() == 0x65746164696C6156 && v80 == 0xEF6E656B6F545353)
              {

                v77 = v101;
              }

              else
              {
                v81 = sub_1000A0BD0();

                v77 = v101;
                if ((v81 & 1) == 0)
                {
                  sub_1000A0530();
                  sub_10003D0EC(&qword_1000D83C0, &type metadata accessor for Explosion);
                  swift_allocError();
                  sub_1000A0520();
                  swift_willThrow();

                  sub_1000456C8(&v126);
                  (*(v118 + 8))(v111, v73);
                  sub_1000057C4(v72, &qword_1000D83B0, &qword_1000A5D58);
                  v83 = v77;
                  return sub_1000057C4(v83, &qword_1000D83B8, &unk_1000B0670);
                }
              }
            }
          }

          (*(v118 + 8))(v111, v73);
        }

        sub_100005620(v77, v107, &qword_1000D83B8, &unk_1000B0670);
        sub_100005620(v72, v108, &qword_1000D83B0, &qword_1000A5D58);
        v123 = *&v137[24];

        v82 = v109;
        sub_10009FF60();
        v84 = v119;
        v85 = v103;
        sub_1000A0430();
        v86 = sub_10009F390();
        v87 = sub_1000A0760();
        if (os_log_type_enabled(v86, v87))
        {
          v88 = swift_slowAlloc();
          *v88 = 0;
          _os_log_impl(&_mh_execute_header, v86, v87, "SSMessageUnpacker: It's an invitation", v88, 2u);
        }

        v47(v85, v124);
        v90 = v104;
        v89 = v105;
        v91 = v106;
        (*(v105 + 16))(v104, v82, v106);
        (*(v115 + 104))(v90, enum case for IDSClientMessageType.screenSharingInvitation(_:), v116);
        sub_10009FC10();

        sub_1000456C8(&v126);
        (*(v89 + 8))(v82, v91);
        sub_1000057C4(v84, &qword_1000D83B0, &qword_1000A5D58);
        v83 = v101;
        return sub_1000057C4(v83, &qword_1000D83B8, &unk_1000B0670);
      }
    }
  }

  sub_1000A0430();
  v65 = sub_10009F390();
  v66 = sub_1000A0760();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    *v67 = 0;
    _os_log_impl(&_mh_execute_header, v65, v66, "SSMessageUnpacker: It's restricted", v67, 2u);
  }

  v47(v122, v124);
  (*(v4 + 13))(v121, enum case for ClientMessageType.restricted(_:), v3);
  v68 = v120;
  sub_10009FA60();
  (*(v115 + 104))(v68, enum case for IDSClientMessageType.messageTypeRestricted(_:), v116);
  sub_10009FC10();

  return sub_1000456C8(&v126);
}

unint64_t sub_10007203C(uint64_t a1)
{
  result = sub_100072064();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100072064()
{
  result = qword_1000D9F10;
  if (!qword_1000D9F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9F10);
  }

  return result;
}

unint64_t sub_1000720CC()
{
  result = qword_1000D9F18;
  if (!qword_1000D9F18)
  {
    sub_10009FFF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9F18);
  }

  return result;
}

uint64_t sub_100072124@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v61 = a2;
  v5 = sub_1000017BC(&qword_1000D9F28, &qword_1000B06E8);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = v46 - v11;
  __chkstk_darwin(v10);
  v14 = v46 - v13;
  v15 = sub_10009FF10();
  v16 = *(v15 - 8);
  v17 = *(v16 + 56);
  v18 = v16 + 56;
  v17(v14, 1, 1, v15);
  v19 = a1[14];
  v63 = v3;
  v62 = v9;
  if (v19 != 1)
  {
    v52 = v18;
    v53 = v17;
    v20 = v14;
    v21 = a1[23];
    v22 = a1[24];
    v23 = a1[22];
    v57 = a1[21];
    v58 = v21;
    v24 = a1[19];
    v25 = a1[20];
    v26 = a1[18];
    v59 = a1[17];
    v60 = v24;
    v27 = a1[15];
    v28 = a1[16];
    v55 = a1[13];
    v56 = v27;

    v14 = v20;
    v29 = v63;
    sub_10009FF00();
    result = sub_100072694(v20);
    if (v29)
    {
      return result;
    }

    v63 = 0;
    v53(v12, 0, 1, v15);
    sub_1000726FC(v12, v20);
    v9 = v62;
  }

  v31 = *a1;
  v59 = a1[1];
  v60 = v31;
  LODWORD(v58) = *(a1 + 16);
  v33 = a1[3];
  v32 = a1[4];
  v57 = a1[5];
  LODWORD(v56) = *(a1 + 48);
  v35 = a1[7];
  v34 = a1[8];
  v54 = v14;
  v55 = v35;
  v46[0] = v34;
  v53 = a1[9];
  LODWORD(v52) = *(a1 + 80);
  v36 = a1[11];
  v37 = a1[12];
  v50 = v32;
  v51 = v36;
  sub_100072624(v14, v9);
  v38 = a1[25];
  v39 = a1[26];
  v40 = a1[27];
  v41 = a1[28];
  v42 = a1[29];
  v43 = a1[30];
  v48 = a1[31];
  v49 = v40;
  v47 = *(a1 + 256);
  v44 = a1[33];
  v45 = a1[34];
  v46[1] = v44;
  sub_100005750(v33, v32);

  sub_100005750(v38, v39);

  sub_100005750(v42, v43);

  sub_10009FFE0();
  return sub_100072694(v54);
}

uint64_t sub_10007248C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10009F270();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_10009F260();
  sub_10007257C();
  sub_10009F250();

  if (!v1)
  {
    memcpy(__dst, v7, sizeof(__dst));
    sub_100072124(__dst, a1);
    return sub_1000725D0(__dst);
  }

  return result;
}

unint64_t sub_10007257C()
{
  result = qword_1000D9F20;
  if (!qword_1000D9F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9F20);
  }

  return result;
}

uint64_t sub_100072624(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000017BC(&qword_1000D9F28, &qword_1000B06E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100072694(uint64_t a1)
{
  v2 = sub_1000017BC(&qword_1000D9F28, &qword_1000B06E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000726FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000017BC(&qword_1000D9F28, &qword_1000B06E8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007276C()
{
  v1 = sub_10009FAA0();
  v17 = *(v1 - 8);
  v2 = *(v17 + 64);
  __chkstk_darwin(v1);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for IDSSessionReinitiateSchema();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10009F270();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  sub_10009F260();
  sub_100072954();
  sub_10009F250();
  if (!v0)
  {
    v12 = *v8;
    v16[2] = *(v8 + 1);
    v16[3] = v12;
    v13 = *(v8 + 2);
    v16[1] = *(v8 + 3);
    v14 = *(v8 + 4);
    (*(v17 + 16))(v4, &v8[*(v5 + 28)], v1);

    sub_10009FAB0();
    sub_1000038F4(v8);
  }
}

unint64_t sub_100072954()
{
  result = qword_1000D9F30;
  if (!qword_1000D9F30)
  {
    type metadata accessor for IDSSessionReinitiateSchema();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9F30);
  }

  return result;
}

uint64_t WalletPassSharingGeneralMessageSchema.WalletPassSharingGeneralMessageContent.type.getter@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v2 = sub_1000A0360();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000017BC(&qword_1000D9F38, &qword_1000B06F0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v22 - v12;
  v14 = sub_1000017BC(&qword_1000D9F40, &qword_1000B06F8);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v22 - v16;
  sub_100072D50(v1, v13);
  v18 = type metadata accessor for WalletPassSharingGeneralMessageSchema.WalletPassSharingGeneralMessageContent.WalletPassSharingGeneralMessageGenericData(0);
  v19 = *(*(v18 - 8) + 48);
  if (v19(v13, 1, v18) == 1)
  {
    sub_1000057C4(v13, &qword_1000D9F38, &qword_1000B06F0);
    (*(v3 + 56))(v17, 1, 1, v2);
    v20 = type metadata accessor for WalletPassSharingGeneralMessageSchema.WalletPassSharingGeneralMessageContent(0);
    sub_100072D50(v1 + *(v20 + 20), v11);
    if (v19(v11, 1, v18) == 1)
    {
      sub_1000057C4(v11, &qword_1000D9F38, &qword_1000B06F0);
      (*(v3 + 104))(v23, enum case for WalletPassSharingGeneralMessageType.unknown(_:), v2);
    }

    else
    {
      (*(v3 + 16))(v6, v11, v2);
      sub_100073D68(v11, type metadata accessor for WalletPassSharingGeneralMessageSchema.WalletPassSharingGeneralMessageContent.WalletPassSharingGeneralMessageGenericData);
      (*(v3 + 32))(v23, v6, v2);
    }

    result = (*(v3 + 48))(v17, 1, v2);
    if (result != 1)
    {
      return sub_1000057C4(v17, &qword_1000D9F40, &qword_1000B06F8);
    }
  }

  else
  {
    (*(v3 + 16))(v17, v13, v2);
    sub_100073D68(v13, type metadata accessor for WalletPassSharingGeneralMessageSchema.WalletPassSharingGeneralMessageContent.WalletPassSharingGeneralMessageGenericData);
    (*(v3 + 56))(v17, 0, 1, v2);
    return (*(v3 + 32))(v23, v17, v2);
  }

  return result;
}

uint64_t sub_100072D50(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000017BC(&qword_1000D9F38, &qword_1000B06F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t WalletPassSharingGeneralMessageSchema.WalletPassSharingGeneralMessageContent.WalletPassSharingGeneralMessageGenericData.sharingDataType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000A0360();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t WalletPassSharingGeneralMessageSchema.WalletPassSharingGeneralMessageContent.WalletPassSharingGeneralMessageGenericData.sharingDataType.setter(uint64_t a1)
{
  v3 = sub_1000A0360();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_100072EF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x44676E6972616873 && a2 == 0xEF65707954617461)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1000A0BD0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100072F84(uint64_t a1)
{
  v2 = sub_100073174();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100072FC0(uint64_t a1)
{
  v2 = sub_100073174();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t WalletPassSharingGeneralMessageSchema.WalletPassSharingGeneralMessageContent.WalletPassSharingGeneralMessageGenericData.encode(to:)(void *a1)
{
  v2 = sub_1000017BC(&qword_1000D9F48, &qword_1000B0700);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_100073174();
  sub_1000A0CE0();
  sub_1000A0360();
  sub_100073464(&qword_1000D9F58, &type metadata accessor for WalletPassSharingGeneralMessageType);
  sub_1000A0B80();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_100073174()
{
  result = qword_1000D9F50;
  if (!qword_1000D9F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9F50);
  }

  return result;
}

uint64_t WalletPassSharingGeneralMessageSchema.WalletPassSharingGeneralMessageContent.WalletPassSharingGeneralMessageGenericData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = sub_1000A0360();
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  __chkstk_darwin(v4);
  v23 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000017BC(&qword_1000D9F60, &qword_1000B0708);
  v21 = *(v7 - 8);
  v8 = *(v21 + 64);
  __chkstk_darwin(v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for WalletPassSharingGeneralMessageSchema.WalletPassSharingGeneralMessageContent.WalletPassSharingGeneralMessageGenericData(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_100073174();
  sub_1000A0CD0();
  if (!v2)
  {
    v16 = v20;
    v17 = v22;
    sub_100073464(&qword_1000D9F68, &type metadata accessor for WalletPassSharingGeneralMessageType);
    sub_1000A0A20();
    (*(v21 + 8))(v10, v7);
    (*(v16 + 32))(v14, v23, v4);
    sub_1000747C8(v14, v17, type metadata accessor for WalletPassSharingGeneralMessageSchema.WalletPassSharingGeneralMessageContent.WalletPassSharingGeneralMessageGenericData);
  }

  return sub_100002308(a1);
}

uint64_t sub_100073464(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000734D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000017BC(&qword_1000D9F38, &qword_1000B06F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t WalletPassSharingGeneralMessageSchema.WalletPassSharingGeneralMessageContent.genericData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for WalletPassSharingGeneralMessageSchema.WalletPassSharingGeneralMessageContent(0) + 20);

  return sub_100072D50(v3, a1);
}

uint64_t WalletPassSharingGeneralMessageSchema.WalletPassSharingGeneralMessageContent.genericData.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for WalletPassSharingGeneralMessageSchema.WalletPassSharingGeneralMessageContent(0) + 20);

  return sub_1000734D8(a1, v3);
}

unint64_t sub_100073630()
{
  if (*v0)
  {
    result = 0x44636972656E6567;
  }

  else
  {
    result = 0xD000000000000012;
  }

  *v0;
  return result;
}

uint64_t sub_100073678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x80000001000A3500 == a2 || (sub_1000A0BD0() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x44636972656E6567 && a2 == 0xEB00000000617461)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1000A0BD0();

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

uint64_t sub_100073764(uint64_t a1)
{
  v2 = sub_1000739A0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000737A0(uint64_t a1)
{
  v2 = sub_1000739A0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t WalletPassSharingGeneralMessageSchema.WalletPassSharingGeneralMessageContent.encode(to:)(void *a1)
{
  v3 = sub_1000017BC(&qword_1000D9F70, &qword_1000B0710);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  v8 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_1000739A0();
  sub_1000A0CE0();
  v11[15] = 0;
  type metadata accessor for WalletPassSharingGeneralMessageSchema.WalletPassSharingGeneralMessageContent.WalletPassSharingGeneralMessageGenericData(0);
  sub_100073464(&qword_1000D9F80, type metadata accessor for WalletPassSharingGeneralMessageSchema.WalletPassSharingGeneralMessageContent.WalletPassSharingGeneralMessageGenericData);
  sub_1000A0AD0();
  if (!v1)
  {
    v9 = *(type metadata accessor for WalletPassSharingGeneralMessageSchema.WalletPassSharingGeneralMessageContent(0) + 20);
    v11[14] = 1;
    sub_1000A0AD0();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1000739A0()
{
  result = qword_1000D9F78;
  if (!qword_1000D9F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9F78);
  }

  return result;
}

uint64_t WalletPassSharingGeneralMessageSchema.WalletPassSharingGeneralMessageContent.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = sub_1000017BC(&qword_1000D9F38, &qword_1000B06F0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v30 = &v26 - v8;
  v9 = sub_1000017BC(&qword_1000D9F88, &qword_1000B0718);
  v10 = *(v9 - 8);
  v28 = v9;
  v29 = v10;
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v26 - v12;
  v14 = type metadata accessor for WalletPassSharingGeneralMessageSchema.WalletPassSharingGeneralMessageContent(0);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for WalletPassSharingGeneralMessageSchema.WalletPassSharingGeneralMessageContent.WalletPassSharingGeneralMessageGenericData(0);
  v20 = *(*(v19 - 8) + 56);
  v20(v18, 1, 1, v19);
  v21 = *(v15 + 28);
  v20(&v18[v21], 1, 1, v19);
  v22 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_1000739A0();
  v23 = v31;
  sub_1000A0CD0();
  if (!v23)
  {
    v31 = v21;
    v33 = 0;
    sub_100073464(&qword_1000D9F90, type metadata accessor for WalletPassSharingGeneralMessageSchema.WalletPassSharingGeneralMessageContent.WalletPassSharingGeneralMessageGenericData);
    v24 = v28;
    sub_1000A0970();
    sub_1000734D8(v30, v18);
    v32 = 1;
    sub_1000A0970();
    (*(v29 + 8))(v13, v24);
    sub_1000734D8(v7, &v18[v31]);
    sub_100074830(v18, v27, type metadata accessor for WalletPassSharingGeneralMessageSchema.WalletPassSharingGeneralMessageContent);
  }

  sub_100002308(a1);
  return sub_100073D68(v18, type metadata accessor for WalletPassSharingGeneralMessageSchema.WalletPassSharingGeneralMessageContent);
}

uint64_t sub_100073D68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100073E34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WalletPassSharingGeneralMessageSchema.WalletPassSharingGeneralMessageContent(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t WalletPassSharingGeneralMessageSchema.format.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WalletPassSharingGeneralMessageSchema(0) + 20);
  v4 = sub_1000A03E0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WalletPassSharingGeneralMessageSchema.format.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WalletPassSharingGeneralMessageSchema(0) + 20);
  v4 = sub_1000A03E0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_100073FF8()
{
  if (*v0)
  {
    result = 0x74616D726F66;
  }

  else
  {
    result = 0x746E65746E6F63;
  }

  *v0;
  return result;
}

uint64_t sub_100074030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000;
  if (v6 || (sub_1000A0BD0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74616D726F66 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1000A0BD0();

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

uint64_t sub_100074108(uint64_t a1)
{
  v2 = sub_100074380();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100074144(uint64_t a1)
{
  v2 = sub_100074380();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t WalletPassSharingGeneralMessageSchema.encode(to:)(void *a1)
{
  v3 = sub_1000017BC(&qword_1000D9F98, &qword_1000B0720);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  v8 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_100074380();
  sub_1000A0CE0();
  v11[15] = 0;
  type metadata accessor for WalletPassSharingGeneralMessageSchema.WalletPassSharingGeneralMessageContent(0);
  sub_100073464(&qword_1000D9FA8, type metadata accessor for WalletPassSharingGeneralMessageSchema.WalletPassSharingGeneralMessageContent);
  sub_1000A0B80();
  if (!v1)
  {
    v9 = *(type metadata accessor for WalletPassSharingGeneralMessageSchema(0) + 20);
    v11[14] = 1;
    sub_1000A03E0();
    sub_100073464(&qword_1000D9FB0, &type metadata accessor for WalletPassSharingGeneralMessageFormat);
    sub_1000A0B80();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_100074380()
{
  result = qword_1000D9FA0;
  if (!qword_1000D9FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9FA0);
  }

  return result;
}

uint64_t WalletPassSharingGeneralMessageSchema.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v29 = sub_1000A03E0();
  v26 = *(v29 - 8);
  v4 = *(v26 + 64);
  __chkstk_darwin(v29);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for WalletPassSharingGeneralMessageSchema.WalletPassSharingGeneralMessageContent(0);
  v7 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30);
  v31 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1000017BC(&qword_1000D9FB8, &qword_1000B0728);
  v28 = *(v32 - 8);
  v9 = *(v28 + 64);
  __chkstk_darwin(v32);
  v11 = &v25 - v10;
  v12 = type metadata accessor for WalletPassSharingGeneralMessageSchema(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_100074380();
  sub_1000A0CD0();
  if (v2)
  {
    return sub_100002308(a1);
  }

  v25 = a1;
  v17 = v15;
  v18 = v28;
  v19 = v29;
  v34 = 0;
  sub_100073464(&qword_1000D9FC0, type metadata accessor for WalletPassSharingGeneralMessageSchema.WalletPassSharingGeneralMessageContent);
  v20 = v31;
  sub_1000A0A20();
  sub_1000747C8(v20, v17, type metadata accessor for WalletPassSharingGeneralMessageSchema.WalletPassSharingGeneralMessageContent);
  v33 = 1;
  sub_100073464(&qword_1000D9FC8, &type metadata accessor for WalletPassSharingGeneralMessageFormat);
  v21 = v6;
  v22 = v19;
  v23 = v32;
  sub_1000A0A20();
  (*(v18 + 8))(v11, v23);
  (*(v26 + 32))(v17 + *(v12 + 20), v21, v22);
  sub_100074830(v17, v27, type metadata accessor for WalletPassSharingGeneralMessageSchema);
  sub_100002308(v25);
  return sub_100073D68(v17, type metadata accessor for WalletPassSharingGeneralMessageSchema);
}

uint64_t sub_1000747C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100074830(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000748DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for WalletPassSharingGeneralMessageSchema.WalletPassSharingGeneralMessageContent(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1000A03E0();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1000749E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for WalletPassSharingGeneralMessageSchema.WalletPassSharingGeneralMessageContent(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1000A03E0();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_100074ADC()
{
  result = type metadata accessor for WalletPassSharingGeneralMessageSchema.WalletPassSharingGeneralMessageContent(319);
  if (v1 <= 0x3F)
  {
    result = sub_1000A03E0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100074B74(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000017BC(&qword_1000D9F38, &qword_1000B06F0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100074C00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000017BC(&qword_1000D9F38, &qword_1000B06F0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_100074C7C()
{
  sub_100074CE8();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100074CE8()
{
  if (!qword_1000DA0C8)
  {
    type metadata accessor for WalletPassSharingGeneralMessageSchema.WalletPassSharingGeneralMessageContent.WalletPassSharingGeneralMessageGenericData(255);
    v0 = sub_1000A07A0();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DA0C8);
    }
  }
}

uint64_t sub_100074D54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A0360();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100074DD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A0360();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100074E44()
{
  result = sub_1000A0360();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_100074EEC()
{
  result = qword_1000DA188;
  if (!qword_1000DA188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA188);
  }

  return result;
}

unint64_t sub_100074F44()
{
  result = qword_1000DA190;
  if (!qword_1000DA190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA190);
  }

  return result;
}

unint64_t sub_100074F9C()
{
  result = qword_1000DA198;
  if (!qword_1000DA198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA198);
  }

  return result;
}

unint64_t sub_100074FF4()
{
  result = qword_1000DA1A0;
  if (!qword_1000DA1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA1A0);
  }

  return result;
}

unint64_t sub_10007504C()
{
  result = qword_1000DA1A8;
  if (!qword_1000DA1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA1A8);
  }

  return result;
}

unint64_t sub_1000750A4()
{
  result = qword_1000DA1B0;
  if (!qword_1000DA1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA1B0);
  }

  return result;
}

unint64_t sub_1000750FC()
{
  result = qword_1000DA1B8;
  if (!qword_1000DA1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA1B8);
  }

  return result;
}

unint64_t sub_100075154()
{
  result = qword_1000DA1C0;
  if (!qword_1000DA1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA1C0);
  }

  return result;
}

unint64_t sub_1000751AC()
{
  result = qword_1000DA1C8;
  if (!qword_1000DA1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA1C8);
  }

  return result;
}

uint64_t sub_10007526C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a1;
  v66 = a2;
  v63 = sub_1000A00E0();
  v62 = *(v63 - 8);
  v2 = *(v62 + 64);
  __chkstk_darwin(v63);
  v65 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_10009F930();
  v60 = *(v61 - 8);
  v4 = *(v60 + 64);
  __chkstk_darwin(v61);
  v64 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for IDSKCSharingInvitationSchema();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = (&v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for IDSHomeKitInvitationSchema(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = (&v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_1000017BC(&qword_1000D84A8, &unk_1000B0C40);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v58 - v16;
  v18 = sub_10009F950();
  v59 = *(v18 - 8);
  v19 = *(v59 + 64);
  __chkstk_darwin(v18);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for IDSSampleInvitationSchema();
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22);
  v25 = (&v58 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = type metadata accessor for IDSDictionaryContextClientSchema(0);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26);
  v29 = &v58 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000760C0(v70, v29, type metadata accessor for IDSDictionaryContextClientSchema);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v45 = *v29;
      v46 = *(v29 + 1);
      v47 = v64;
      v48 = v67;
      result = sub_10009F920();
      if (v48)
      {
        return result;
      }

      v37 = v66;
      (*(v60 + 32))(v66, v47, v61);
      v38 = &enum case for IDSDictionaryContext.idsHealthInvitation(_:);
    }

    else
    {
      if (EnumCaseMultiPayload != 4)
      {
        v51 = *(v29 + 13);
        v68[12] = *(v29 + 12);
        v68[13] = v51;
        v69 = v29[224];
        v52 = *(v29 + 9);
        v68[8] = *(v29 + 8);
        v68[9] = v52;
        v53 = *(v29 + 11);
        v68[10] = *(v29 + 10);
        v68[11] = v53;
        v54 = *(v29 + 5);
        v68[4] = *(v29 + 4);
        v68[5] = v54;
        v55 = *(v29 + 7);
        v68[6] = *(v29 + 6);
        v68[7] = v55;
        v56 = *(v29 + 1);
        v68[0] = *v29;
        v68[1] = v56;
        v57 = *(v29 + 2);
        v68[3] = *(v29 + 3);
        v68[2] = v57;
        sub_100005964(v68, v66);
        return sub_1000456C8(v68);
      }

      v32 = *v29;
      v33 = *(v29 + 1);
      v34 = *(v29 + 2);
      v35 = v65;
      v36 = v67;
      result = sub_1000A00D0();
      if (v36)
      {
        return result;
      }

      v37 = v66;
      (*(v62 + 32))(v66, v35, v63);
      v38 = &enum case for IDSDictionaryContext.idsActivitySharingInvitation(_:);
    }

LABEL_13:
    v49 = *v38;
    v50 = sub_10009F9E0();
    return (*(*(v50 - 8) + 104))(v37, v49, v50);
  }

  if (!EnumCaseMultiPayload)
  {
    sub_100076128(v29, v25, type metadata accessor for IDSSampleInvitationSchema);
    v39 = *v25;
    v40 = v25[1];
    sub_100005620(v25 + *(v22 + 20), v17, &qword_1000D84A8, &unk_1000B0C40);
    v41 = (v25 + *(v22 + 24));
    v42 = *v41;
    v43 = v41[1];

    v44 = v67;
    sub_10009F940();
    result = sub_100076190(v25, type metadata accessor for IDSSampleInvitationSchema);
    if (v44)
    {
      return result;
    }

    v37 = v66;
    (*(v59 + 32))(v66, v21, v18);
    v38 = &enum case for IDSDictionaryContext.idsSampleInvitation(_:);
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_100076128(v29, v13, type metadata accessor for IDSHomeKitInvitationSchema);
    sub_100076294(v13, v66);
    return sub_100076190(v13, type metadata accessor for IDSHomeKitInvitationSchema);
  }

  else
  {
    sub_100076128(v29, v9, type metadata accessor for IDSKCSharingInvitationSchema);
    sub_10003FBE4(v9, v66);
    return sub_100076190(v9, type metadata accessor for IDSKCSharingInvitationSchema);
  }
}

uint64_t sub_100075938@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v71 = a2;
  v70 = a1;
  v63 = a3;
  v4 = sub_10009FE10();
  v65 = *(v4 - 8);
  v66 = v4;
  v5 = *(v65 + 64);
  __chkstk_darwin(v4);
  v64 = v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10009F9E0();
  v67 = *(v7 - 8);
  v68 = v7;
  v8 = *(v67 + 64);
  __chkstk_darwin(v7);
  v69 = v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for IDSDictionaryContextClientSchema(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for IDSDictionaryContextData(0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000017BC(&qword_1000DA1D8, &qword_1000B0C38);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v22 = v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20);
  v25 = v56 - v24;
  __chkstk_darwin(v23);
  v27 = v56 - v26;
  v28 = type metadata accessor for IDSInvitationSchema(0);
  v29 = *(*(v28 - 1) + 64);
  __chkstk_darwin(v28);
  v31 = (v56 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = sub_10009F270();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  v35 = sub_10009F260();
  sub_100075FA0(&qword_1000DA1E0, type metadata accessor for IDSInvitationSchema);
  sub_10009F250();
  if (v3)
  {
  }

  v70 = v25;
  v71 = v35;
  v61 = v22;
  v37 = sub_10009FA50();
  v60 = *(v37 - 8);
  v38 = *(v60 + 56);
  v39 = v60 + 56;
  v38(v27, 1, 1, v37);
  v40 = type metadata accessor for IDSInvitationContextSchema(0);
  sub_1000760C0(v31 + *(v40 + 24), v17, type metadata accessor for IDSDictionaryContextData);
  sub_100076128(v17, v13, type metadata accessor for IDSDictionaryContextClientSchema);
  v41 = v31[1];
  v62 = *v31;
  sub_10007526C(v13, v69);
  v56[1] = v39;
  v57 = v38;
  v58 = v13;
  v59 = v27;
  v42 = v67;
  v43 = v68;
  v44 = v64;
  (*(v67 + 16))(v64, v69, v68);
  (*(v65 + 104))(v44, enum case for IDSInvitationContextType.dictionary(_:), v66);

  v45 = v70;
  sub_10009FA40();
  (*(v42 + 8))(v69, v43);
  sub_100076190(v58, type metadata accessor for IDSDictionaryContextClientSchema);
  v46 = v59;
  sub_100075FE8(v59);
  v57(v45, 0, 1, v37);
  sub_100076050(v45, v46);
  v47 = v46;
  v48 = v61;
  sub_100005620(v47, v61, &qword_1000DA1D8, &qword_1000B0C38);
  result = (*(v60 + 48))(v48, 1, v37);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v49 = v28[6];
    v50 = *(v31 + v28[5]);
    v51 = *(v31 + v49);
    v52 = *(v31 + v49 + 8);
    v53 = (v31 + v28[7]);
    v54 = *v53;
    v55 = v53[1];

    sub_10009F590();
    sub_100075FE8(v59);

    return sub_100076190(v31, type metadata accessor for IDSInvitationSchema);
  }

  return result;
}

uint64_t sub_100075FA0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100075FE8(uint64_t a1)
{
  v2 = sub_1000017BC(&qword_1000DA1D8, &qword_1000B0C38);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100076050(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000017BC(&qword_1000DA1D8, &qword_1000B0C38);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000760C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100076128(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100076190(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100076218(uint64_t a1)
{
  result = sub_100076240();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100076240()
{
  result = qword_1000DA1E8;
  if (!qword_1000DA1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA1E8);
  }

  return result;
}

uint64_t sub_100076294@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v136 = a2;
  v5 = sub_1000017BC(&qword_1000D8BC8, &qword_1000A85F8);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v144 = &v130 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v143 = &v130 - v9;
  v135 = sub_10009FA30();
  v134 = *(v135 - 8);
  v10 = *(v134 + 64);
  __chkstk_darwin(v135);
  v138 = &v130 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000017BC(&qword_1000D84A8, &unk_1000B0C40);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v142 = &v130 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v157 = &v130 - v17;
  __chkstk_darwin(v16);
  v156 = &v130 - v18;
  v166 = sub_1000A03D0();
  v159 = *(v166 - 8);
  v19 = *(v159 + 64);
  v20 = __chkstk_darwin(v166);
  v165 = &v130 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v24 = &v130 - v23;
  __chkstk_darwin(v22);
  v151 = &v130 - v25;
  v26 = type metadata accessor for IDSHomeKitInviteeScheduleYearDayRuleSchema(0);
  v154 = *(v26 - 8);
  v155 = v26;
  v27 = *(v154 + 64);
  __chkstk_darwin(v26);
  v158 = &v130 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = sub_1000A03B0();
  v153 = *(v164 - 8);
  v29 = *(v153 + 64);
  v30 = __chkstk_darwin(v164);
  v163 = &v130 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v161 = &v130 - v33;
  __chkstk_darwin(v32);
  v150 = &v130 - v34;
  v35 = sub_1000017BC(&qword_1000DA1F0, &qword_1000B0CC0);
  v36 = *(*(v35 - 8) + 64);
  v37 = __chkstk_darwin(v35 - 8);
  v141 = &v130 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v37);
  v137 = &v130 - v40;
  __chkstk_darwin(v39);
  v146 = &v130 - v41;
  v42 = sub_1000017BC(&qword_1000D8350, &qword_1000A5C48);
  v43 = *(*(v42 - 8) + 64);
  v44 = __chkstk_darwin(v42 - 8);
  v140 = &v130 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __chkstk_darwin(v44);
  v48 = &v130 - v47;
  __chkstk_darwin(v46);
  v160 = &v130 - v49;
  v50 = sub_1000017BC(&qword_1000DA1F8, &qword_1000B0CC8);
  v51 = *(*(v50 - 8) + 64);
  v52 = __chkstk_darwin(v50 - 8);
  v139 = &v130 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __chkstk_darwin(v52);
  v56 = &v130 - v55;
  __chkstk_darwin(v54);
  v58 = &v130 - v57;
  v59 = sub_10009FA10();
  v60 = *(*(v59 - 8) + 56);
  v152 = v58;
  v60(v58, 1, 1, v59);
  v148 = type metadata accessor for IDSHomeKitInvitationSchema(0);
  v149 = a1;
  v61 = (a1 + v148[6]);
  if (v61[1])
  {
    v62 = *v61;

    sub_10009FA00();
    if (v2)
    {
      return sub_1000057C4(v152, &qword_1000DA1F8, &qword_1000B0CC8);
    }

    v63 = v152;
    sub_1000057C4(v152, &qword_1000DA1F8, &qword_1000B0CC8);
    v60(v56, 0, 1, v59);
    sub_1000056E8(v56, v63, &qword_1000DA1F8, &qword_1000B0CC8);
  }

  v64 = sub_10009F990();
  v65 = *(*(v64 - 8) + 56);
  v65(v160, 1, 1, v64);
  v66 = v149 + v148[16];
  v67 = *(v66 + 1);
  if (v67 >> 60 != 15)
  {
    v68 = *v66;
    sub_1000054CC(*v66, *(v66 + 1));
    sub_10009F9F0();
    if (v2)
    {
      sub_1000057B0(v68, v67);
LABEL_33:
      sub_1000057C4(v160, &qword_1000D8350, &qword_1000A5C48);
      return sub_1000057C4(v152, &qword_1000DA1F8, &qword_1000B0CC8);
    }

    v69 = v160;
    sub_1000057C4(v160, &qword_1000D8350, &qword_1000A5C48);
    sub_1000057B0(v68, v67);
    v65(v48, 0, 1, v64);
    sub_1000056E8(v48, v69, &qword_1000D8350, &qword_1000A5C48);
  }

  v70 = v161;
  v71 = sub_10009FF30();
  v72 = *(v71 - 8);
  v73 = *(v72 + 56);
  v74 = v146;
  v133 = v72 + 56;
  result = v73(v146, 1, 1, v71);
  v76 = (v149 + v148[10]);
  v78 = *v76;
  v77 = v76[1];
  v162 = v24;
  if (v78)
  {
    if (v78 == 1)
    {
      goto LABEL_37;
    }

    v147 = v77;
    v131 = v73;
    v132 = v71;
    v145 = *(v78 + 16);
    if (v145)
    {
      v79 = 0;
      v80 = (v153 + 32);
      v81 = (v78 + 72);
      v82 = &_swiftEmptyArrayStorage;
      while (v79 < *(v78 + 16))
      {
        v83 = *v81;
        v84 = *(v81 - 1);
        v85 = *(v81 - 16);
        v86 = *(v81 - 3);
        v87 = *(v81 - 32);
        v88 = *(v81 - 5);
        sub_1000A03A0();
        if (v2)
        {
          sub_1000057C4(v146, &qword_1000DA1F0, &qword_1000B0CC0);
          sub_1000057C4(v160, &qword_1000D8350, &qword_1000A5C48);
          sub_1000057C4(v152, &qword_1000DA1F8, &qword_1000B0CC8);
        }

        v89 = *v80;
        v90 = v150;
        v91 = v70;
        v92 = v164;
        (*v80)(v150, v91, v164);
        v89(v163, v90, v92);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v82 = sub_10009EFCC(0, *(v82 + 2) + 1, 1, v82);
        }

        v94 = *(v82 + 2);
        v93 = *(v82 + 3);
        if (v94 >= v93 >> 1)
        {
          v82 = sub_10009EFCC(v93 > 1, v94 + 1, 1, v82);
        }

        ++v79;
        *(v82 + 2) = v94 + 1;
        result = (v89)(&v82[((*(v153 + 80) + 32) & ~*(v153 + 80)) + *(v153 + 72) * v94], v163, v164);
        v81 += 48;
        v70 = v161;
        v24 = v162;
        if (v145 == v79)
        {
          goto LABEL_22;
        }
      }

      goto LABEL_42;
    }
  }

  else
  {
    v147 = v77;
    v131 = v73;
    v132 = v71;
  }

  v82 = &_swiftEmptyArrayStorage;
LABEL_22:
  v164 = v2;
  v161 = v82;
  v95 = v147;
  if (v147)
  {
    v163 = *(v147 + 16);
    if (v163)
    {
      v96 = 0;
      v97 = v158;
      v98 = (v159 + 32);
      v99 = &_swiftEmptyArrayStorage;
      while (v96 < *(v95 + 16))
      {
        sub_100077270(v95 + ((*(v154 + 80) + 32) & ~*(v154 + 80)) + *(v154 + 72) * v96, v97);
        sub_100005620(v97, v156, &qword_1000D84A8, &unk_1000B0C40);
        sub_100005620(v97 + *(v155 + 20), v157, &qword_1000D84A8, &unk_1000B0C40);
        v100 = v164;
        sub_1000A03C0();
        v164 = v100;
        if (v100)
        {

          sub_1000772D4(v97);
          sub_1000057C4(v146, &qword_1000DA1F0, &qword_1000B0CC0);
          sub_1000057C4(v160, &qword_1000D8350, &qword_1000A5C48);
          sub_1000057C4(v152, &qword_1000DA1F8, &qword_1000B0CC8);
        }

        sub_1000772D4(v97);
        v101 = *v98;
        v102 = v151;
        v103 = v166;
        (*v98)(v151, v24, v166);
        v101(v165, v102, v103);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v99 = sub_10009EFA4(0, v99[2] + 1, 1, v99);
        }

        v105 = v99[2];
        v104 = v99[3];
        v97 = v158;
        if (v105 >= v104 >> 1)
        {
          v99 = sub_10009EFA4(v104 > 1, v105 + 1, 1, v99);
        }

        ++v96;
        v99[2] = v105 + 1;
        result = (v101)(v99 + ((*(v159 + 80) + 32) & ~*(v159 + 80)) + *(v159 + 72) * v105, v165, v166);
        v24 = v162;
        v95 = v147;
        if (v163 == v96)
        {
          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_42:
      __break(1u);
      return result;
    }
  }

LABEL_32:
  v106 = v137;
  v107 = v164;
  sub_10009FF20();
  v3 = v107;
  v74 = v146;
  sub_1000057C4(v146, &qword_1000DA1F0, &qword_1000B0CC0);
  if (v107)
  {
    goto LABEL_33;
  }

  v131(v106, 0, 1, v132);
  sub_1000056E8(v106, v74, &qword_1000DA1F0, &qword_1000B0CC0);
LABEL_37:
  v109 = v148;
  v108 = v149;
  v110 = v149[1];
  v166 = *v149;
  sub_100005620(v149 + v148[5], v142, &qword_1000D84A8, &unk_1000B0C40);
  sub_100005620(v152, v139, &qword_1000DA1F8, &qword_1000B0CC8);
  v111 = v109[7];
  v112 = (v108 + v109[8]);
  v165 = *v112;
  LODWORD(v164) = *(v112 + 8);
  LODWORD(v163) = *(v108 + v109[9]);
  LODWORD(v162) = *(v108 + v111);
  sub_100005620(v74, v141, &qword_1000DA1F0, &qword_1000B0CC0);
  sub_100005620(v108 + v109[11], v143, &qword_1000D8BC8, &qword_1000A85F8);
  v113 = v109[13];
  v114 = (v108 + v109[12]);
  v115 = *v114;
  v159 = v114[1];
  v116 = *(v108 + v113 + 8);
  v161 = *(v108 + v113);
  sub_100005620(v108 + v109[14], v144, &qword_1000D8BC8, &qword_1000A85F8);
  sub_100005620(v160, v140, &qword_1000D8350, &qword_1000A5C48);
  v117 = (v108 + v109[17]);
  v118 = *v117;
  v119 = v117[1];
  v120 = v108 + v109[18];
  v157 = *v120;
  v158 = v118;
  LODWORD(v156) = v120[8];
  v121 = v109[20];
  v122 = v108 + v109[19];
  v155 = *v122;
  v123 = v122[8];
  v125 = *(v108 + v121);
  v124 = *(v108 + v121 + 8);

  sub_100005750(v115, v159);

  sub_100005750(v125, v124);
  v126 = v138;
  sub_10009FA20();
  sub_1000057C4(v146, &qword_1000DA1F0, &qword_1000B0CC0);
  sub_1000057C4(v160, &qword_1000D8350, &qword_1000A5C48);
  result = sub_1000057C4(v152, &qword_1000DA1F8, &qword_1000B0CC8);
  if (!v3)
  {
    v127 = v136;
    (*(v134 + 32))(v136, v126, v135);
    v128 = enum case for IDSDictionaryContext.idsHomekitInvitation(_:);
    v129 = sub_10009F9E0();
    return (*(*(v129 - 8) + 104))(v127, v128, v129);
  }

  return result;
}

uint64_t sub_100077270(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IDSHomeKitInviteeScheduleYearDayRuleSchema(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000772D4(uint64_t a1)
{
  v2 = type metadata accessor for IDSHomeKitInviteeScheduleYearDayRuleSchema(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t IDSCommandWebTunnelResponseSchema.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000017BC(&qword_1000DA200, &qword_1000B0CD0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v36[-v8 - 8];
  v10 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_100077804();
  sub_1000A0CE0();
  v11 = *v3;
  LOBYTE(v41) = 0;
  sub_1000A0B60();
  if (!v2)
  {
    v12 = v3[1];
    v13 = *(v3 + 16);
    LOBYTE(v41) = 1;
    sub_1000A0AB0();
    v50 = *(v3 + 3);
    v41 = *(v3 + 3);
    LOBYTE(v38) = 2;
    sub_100005620(&v50, v39, &qword_1000D83D8, &qword_1000A5D68);
    sub_100006804();
    sub_1000A0AD0();
    sub_1000057B0(v41, *(&v41 + 1));
    v14 = v3[5];
    v15 = *(v3 + 48);
    LOBYTE(v41) = 3;
    sub_1000A0AB0();
    v16 = v3[7];
    v17 = v3[8];
    LOBYTE(v41) = 4;
    sub_1000A0A80();
    v18 = v3[9];
    v19 = *(v3 + 80);
    LOBYTE(v41) = 5;
    sub_1000A0AE0();
    v20 = v3[11];
    v21 = v3[12];
    LOBYTE(v41) = 6;
    sub_1000A0A80();
    v22 = *(v3 + 19);
    v49[2] = *(v3 + 17);
    v49[3] = v22;
    v23 = *(v3 + 23);
    v49[4] = *(v3 + 21);
    v49[5] = v23;
    v24 = *(v3 + 15);
    v49[0] = *(v3 + 13);
    v49[1] = v24;
    v25 = *(v3 + 19);
    v43 = *(v3 + 17);
    v44 = v25;
    v26 = *(v3 + 23);
    v45 = *(v3 + 21);
    v46 = v26;
    v27 = *(v3 + 15);
    v41 = *(v3 + 13);
    v42 = v27;
    v40 = 7;
    sub_100005620(v49, v39, &qword_1000D9968, &qword_1000AC260);
    sub_10004EEE0();
    sub_1000A0AD0();
    v39[2] = v43;
    v39[3] = v44;
    v39[4] = v45;
    v39[5] = v46;
    v39[0] = v41;
    v39[1] = v42;
    sub_10004EF34(v39);
    v48 = *(v3 + 25);
    v38 = *(v3 + 25);
    v37 = 8;
    sub_100005620(&v48, v36, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v38, *(&v38 + 1));
    v28 = v3[27];
    v29 = v3[28];
    LOBYTE(v38) = 9;
    sub_1000A0A80();
    v47 = *(v3 + 29);
    v38 = *(v3 + 29);
    v37 = 10;
    sub_100005620(&v47, v36, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v38, *(&v38 + 1));
    v30 = v3[31];
    v31 = *(v3 + 256);
    LOBYTE(v38) = 11;
    sub_1000A0AB0();
    v32 = v3[33];
    v33 = v3[34];
    LOBYTE(v38) = 12;
    sub_1000A0A80();
  }

  return (*(v6 + 8))(v9, v5);
}