unint64_t sub_22DE04EEC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37AE0, &unk_22DEC6AE0);
    v3 = sub_22DEC4FF4();
    v4 = a1 + 32;

    while (1)
    {
      sub_22DDF0028(v4, &v13, &qword_27DA379F0, &unk_22DEC6530);
      v5 = v13;
      v6 = v14;
      result = sub_22DE100E4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_22DE06324(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22DE0501C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37AC0, &qword_22DEC6AC0);
    v3 = sub_22DEC4FF4();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_22DE100E4(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22DE05130()
{
  result = qword_27DA37A48;
  if (!qword_27DA37A48)
  {
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA37A48);
  }

  return result;
}

__n128 __swift_memcpy122_8(uint64_t a1, __int128 *a2)
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
  *(a1 + 106) = *(a2 + 106);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_22DE051E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 122))
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

uint64_t sub_22DE0522C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 122) = 1;
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

    *(result + 122) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_22DE052A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_22DE052F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22DE05354(uint64_t a1, int a2)
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

uint64_t sub_22DE0539C(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
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

uint64_t sub_22DE0541C(uint64_t a1, int a2)
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

uint64_t sub_22DE05464(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy168_8(uint64_t a1, __int128 *a2)
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
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_22DE05600(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
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

uint64_t sub_22DE05648(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WarrantyHashInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WarrantyHashInfo.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RequestDeviceInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RequestDeviceInfo.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22DE05978()
{
  result = qword_27DA37A58;
  if (!qword_27DA37A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA37A58);
  }

  return result;
}

unint64_t sub_22DE059D0()
{
  result = qword_27DA37A60;
  if (!qword_27DA37A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA37A60);
  }

  return result;
}

unint64_t sub_22DE05A28()
{
  result = qword_27DA37A68;
  if (!qword_27DA37A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA37A68);
  }

  return result;
}

unint64_t sub_22DE05A80()
{
  result = qword_27DA37A70;
  if (!qword_27DA37A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA37A70);
  }

  return result;
}

unint64_t sub_22DE05AD8()
{
  result = qword_27DA37A78;
  if (!qword_27DA37A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA37A78);
  }

  return result;
}

unint64_t sub_22DE05B30()
{
  result = qword_27DA37A80;
  if (!qword_27DA37A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA37A80);
  }

  return result;
}

unint64_t sub_22DE05B84(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37AA8, &qword_22DEC6AA8);
    v3 = sub_22DEC4FF4();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      sub_22DDEEEE8(v7, v8);
      result = sub_22DE100E4(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22DE05C9C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37AA0, &qword_22DEC6AA0);
    v3 = sub_22DEC4FF4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_22DE100E4(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22DE05DA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A98, &qword_22DEC6A98);
    v3 = sub_22DEC4FF4();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_22DE100E4(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_22DE05E9C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x754E6C6169726573 && a2 == 0xEC0000007265626DLL;
  if (v4 || (sub_22DEC50E4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7972616D697270 && a2 == 0xE700000000000000 || (sub_22DEC50E4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7954656369766564 && a2 == 0xEA00000000006570 || (sub_22DEC50E4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x614E656369766564 && a2 == 0xEA0000000000656DLL || (sub_22DEC50E4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F4D656369766564 && a2 == 0xEB000000006C6564 || (sub_22DEC50E4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6F43656369766564 && a2 == 0xEB00000000726F6CLL || (sub_22DEC50E4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000014 && 0x800000022DED1860 == a2 || (sub_22DEC50E4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000015 && 0x800000022DED1880 == a2 || (sub_22DEC50E4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x72656B6E69547369 && a2 == 0xEE00646572696150 || (sub_22DEC50E4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6576697463417369 && a2 == 0xED00006863746157)
  {

    return 9;
  }

  else
  {
    v6 = sub_22DEC50E4();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_22DE061F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22DE0625C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22DE062C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

_OWORD *sub_22DE06324(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AckData.init(userAction:additionalPayload:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  *a3 = -8;
  sub_22DE0501C(MEMORY[0x277D84F90]);
  v6 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData(0);
  v7 = a3 + v6[6];
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();

  v9 = (a3 + v6[7]);
  *v9 = 0;
  v9[1] = 0;
  v10 = (a3 + v6[8]);
  *v10 = 0;
  v10[1] = 0;
  *a3 = v5 | 0x80;
  *(a3 + 8) = a2;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AckData.init(actionType:additionalPayload:clientErrorCode:clientErrorReason:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *a1;
  *a7 = -8;
  sub_22DE0501C(MEMORY[0x277D84F90]);
  v14 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData(0);
  v15 = a7 + v14[6];
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();

  v17 = (a7 + v14[7]);
  *v17 = 0;
  v17[1] = 0;
  v18 = (a7 + v14[8]);
  *v18 = 0;
  v18[1] = 0;
  *a7 = v13;
  *(a7 + 8) = a2;
  if (a4)
  {
    *v17 = a3;
    v17[1] = a4;
  }

  if (a6)
  {
    *v18 = a5;
    v18[1] = a6;
  }

  return result;
}

void *NDORetryOn5XXURLClient.__allocating_init(internalClient:backoffIntervals:scheduler:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  sub_22DDEDA18(a1, (v8 + 3));
  v8[2] = a2;
  v8[8] = a3;
  v8[9] = a4;
  return v8;
}

void *NDORetryOn5XXURLClient.init(internalClient:backoffIntervals:scheduler:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_22DDEDA18(a1, (v4 + 3));
  v4[2] = a2;
  v4[8] = a3;
  v4[9] = a4;
  return v4;
}

uint64_t sub_22DE06534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a2;
  v21 = a3;
  v6 = sub_22DEC4694();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v4[6];
  v11 = v4[7];
  v19[1] = __swift_project_boxed_opaque_existential_1(v4 + 3, v10);
  v12 = swift_allocObject();
  swift_weakInit();
  (*(v7 + 16))(v9, a1, v6);
  v13 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v14 = swift_allocObject();
  v15 = v20;
  v16 = v21;
  *(v14 + 2) = v12;
  *(v14 + 3) = v15;
  *(v14 + 4) = v16;
  (*(v7 + 32))(&v14[v13], v9, v6);
  v17 = *(v11 + 8);

  v17(a1, sub_22DE06AFC, v14, v10, v11);
}

void sub_22DE066FC(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, void *, uint64_t), void (*a7)(uint64_t, uint64_t, void *, uint64_t), uint64_t a8)
{
  v41 = a8;
  v42 = a6;
  v13 = sub_22DEC4694();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    if (qword_28145AE68 != -1)
    {
      swift_once();
    }

    v22 = sub_22DEC4B44();
    __swift_project_value_buffer(v22, qword_281462270);
    v23 = sub_22DEC4B24();
    v24 = sub_22DEC4E44();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_22DDEC000, v23, v24, "Instance is deallocated. Not handling results", v25, 2u);
      MEMORY[0x2318DBF00](v25, -1, -1);
    }

    return;
  }

  v17 = Strong;
  if (a4)
  {
    v18 = a1;
    v19 = a2;
    v20 = a3;
    v21 = 1;
LABEL_16:
    v42(v18, v19, v20, v21);
    goto LABEL_17;
  }

  objc_opt_self();
  v26 = swift_dynamicCastObjCClass();
  if (!v26)
  {
LABEL_15:
    v18 = a1;
    v19 = a2;
    v20 = a3;
    v21 = 0;
    goto LABEL_16;
  }

  v27 = v26;
  v40 = a7;
  v39 = a3;
  if ([v27 statusCode] < 500 || objc_msgSend(v27, sel_statusCode) > 599)
  {

    goto LABEL_15;
  }

  v28 = v17[2];
  if (*(v28 + 16))
  {
    v29 = *(v28 + 32);
    sub_22DE06FB0(0, 1);
    v31 = v17[8];
    v30 = v17[9];
    v32 = swift_allocObject();
    swift_weakInit();
    (*(v14 + 16))(&v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v41, v13);
    v33 = (*(v14 + 80) + 24) & ~*(v14 + 80);
    v34 = swift_allocObject();
    *(v34 + 16) = v32;
    (*(v14 + 32))(v34 + v33, &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v13);
    v35 = (v34 + ((v15 + v33 + 7) & 0xFFFFFFFFFFFFFFF8));
    v36 = v40;
    *v35 = v42;
    v35[1] = v36;

    v31(sub_22DE07070, v34, v29);

LABEL_17:

    return;
  }

  type metadata accessor for NDOErrors();
  sub_22DDFE48C();
  v37 = swift_allocError();
  swift_storeEnumTagMultiPayload();
  v42(v37, 0, 0, 1);
}

void *sub_22DE06B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_22DEC4694();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result[7];
    v19 = result[6];
    v18[0] = a3;
    v18[1] = __swift_project_boxed_opaque_existential_1(result + 3, v19);
    v13 = swift_allocObject();
    swift_weakInit();
    (*(v8 + 16))(v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v7);
    v14 = (*(v8 + 80) + 40) & ~*(v8 + 80);
    v15 = swift_allocObject();
    v16 = v18[0];
    *(v15 + 2) = v13;
    *(v15 + 3) = v16;
    *(v15 + 4) = a4;
    (*(v8 + 32))(&v15[v14], v10, v7);
    v17 = *(v12 + 8);

    v17(a2, sub_22DE07270, v15, v19, v12);
  }

  return result;
}

void *NDORetryOn5XXURLClient.deinit()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  v2 = v0[9];

  return v0;
}

uint64_t NDORetryOn5XXURLClient.__deallocating_deinit()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  v2 = v0[9];

  return MEMORY[0x2821FE8D8](v0, 80, 7);
}

uint64_t sub_22DE06D70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a2;
  v6 = sub_22DEC4694();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  v11 = v10[6];
  v12 = v10[7];
  v19 = __swift_project_boxed_opaque_existential_1(v10 + 3, v11);
  v13 = swift_allocObject();
  swift_weakInit();
  (*(v7 + 16))(v9, a1, v6);
  v14 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v15 = swift_allocObject();
  v16 = v20;
  *(v15 + 2) = v13;
  *(v15 + 3) = v16;
  *(v15 + 4) = a3;
  (*(v7 + 32))(&v15[v14], v9, v6);
  v17 = *(v12 + 8);

  v17(a1, sub_22DE07270, v15, v11, v12);
}

unint64_t sub_22DE06FB0(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_22DE0CA6C(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_22DE2631C(v6, a2, 0);
  *v2 = v4;
  return result;
}

void *sub_22DE07070()
{
  v1 = *(sub_22DEC4694() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];

  return sub_22DE06B00(v3, v0 + v2, v5, v6);
}

uint64_t objectdestroy_2Tm_1()
{
  v1 = sub_22DEC4694();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void sub_22DE071D0(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v9 = *(sub_22DEC4694() - 8);
  v10 = v4[2];
  v11 = v4[3];
  v12 = v4[4];
  v13 = v4 + ((*(v9 + 80) + 40) & ~*(v9 + 80));

  sub_22DE066FC(a1, a2, a3, a4 & 1, v10, v11, v12, v13);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Action.ackData(for:)@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (a2 & 1) != 0 && (v5 = a1, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37AE8, &qword_22DEC7400), sub_22DE0745C(), (swift_dynamicCast()))
  {
    [v21 code];
    v6 = sub_22DEC50A4();
    v8 = v7;
    v9 = [v21 userInfo];
    sub_22DEC4BA4();

    v10 = sub_22DEC4BB4();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
    v6 = 0;
    v8 = 0;
  }

  v13 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action(0);
  v14 = *(v3 + *(v13 + 20));
  if (*(v3 + *(v13 + 28)) == 7)
  {
    v15 = 0;
  }

  else
  {
    v15 = *(v3 + *(v13 + 28));
  }

  *a3 = -8;

  sub_22DE0501C(MEMORY[0x277D84F90]);
  v16 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData(0);
  v17 = a3 + v16[6];
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();

  v19 = (a3 + v16[7]);
  *v19 = 0;
  v19[1] = 0;
  v20 = (a3 + v16[8]);
  *v20 = 0;
  v20[1] = 0;
  *a3 = v15;
  *(a3 + 8) = v14;
  if (v8)
  {
    *v19 = v6;
    v19[1] = v8;
  }

  if (v12)
  {
    *v20 = v10;
    v20[1] = v12;
  }

  return result;
}

unint64_t sub_22DE0745C()
{
  result = qword_27DA37AF0;
  if (!qword_27DA37AF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DA37AF0);
  }

  return result;
}

uint64_t sub_22DE074A8()
{
  sub_22DEC5184();
  sub_22DEC4C94();

  return sub_22DEC51A4();
}

NDOAPI::NDOKeyValueStoreKey_optional __swiftcall NDOKeyValueStoreKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22DEC5014();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t NDOKeyValueStoreKey.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x2D676E69646E6570;
  v3 = 0x72752D7473696C70;
  if (v1 != 5)
  {
    v3 = 7761509;
  }

  if (v1 == 3)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0 > 4u)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000014;
  v5 = 0xD000000000000022;
  if (v1 != 1)
  {
    v5 = 0xD000000000000011;
  }

  if (*v0)
  {
    v4 = v5;
  }

  if (*v0 <= 2u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_22DE0772C()
{
  result = qword_27DA37AF8;
  if (!qword_27DA37AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA37AF8);
  }

  return result;
}

uint64_t sub_22DE0778C()
{
  *v0;
  *v0;
  *v0;
  *v0;
  sub_22DEC4C94();
}

void sub_22DE078BC(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC000000736B6361;
  v4 = 0x2D676E69646E6570;
  v5 = 0xE90000000000006CLL;
  v6 = 0x72752D7473696C70;
  if (v2 != 5)
  {
    v6 = 7761509;
    v5 = 0xE300000000000000;
  }

  if (v2 == 3)
  {
    v4 = 0xD000000000000012;
    v3 = 0x800000022DED1380;
  }

  if (*v1 > 4u)
  {
    v4 = v6;
    v3 = v5;
  }

  v7 = 0x800000022DED1310;
  v8 = 0xD000000000000014;
  v9 = 0x800000022DED1330;
  v10 = 0xD000000000000022;
  if (v2 != 1)
  {
    v10 = 0xD000000000000011;
    v9 = 0x800000022DED1360;
  }

  if (*v1)
  {
    v8 = v10;
    v7 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v8;
  }

  else
  {
    v11 = v4;
  }

  if (*v1 <= 2u)
  {
    v3 = v7;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t getEnumTagSinglePayload for Com_Apple_Sse_Ocean_Ndo_Api_CTActionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Com_Apple_Sse_Ocean_Ndo_Api_CTActionType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void NSUserDefaults.setObject(_:for:)(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  sub_22DE07D38(a1, v12);
  v4 = v13;
  if (v13)
  {
    v5 = __swift_project_boxed_opaque_existential_1(v12, v13);
    v6 = *(v4 - 8);
    v7 = *(v6 + 64);
    MEMORY[0x28223BE20](v5);
    v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v9);
    v10 = sub_22DEC50D4();
    (*(v6 + 8))(v9, v4);
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    v10 = 0;
  }

  v11 = sub_22DEC4C04();

  [v2 setObject:v10 forKey:v11];
  swift_unknownObjectRelease();
}

uint64_t sub_22DE07D38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37988, &unk_22DEC6210);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t NDOAckHandler.__allocating_init(configLoader:urlClient:keyValueStore:requestPayloadProvider:)(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = swift_allocObject();
  NDOAckHandler.init(configLoader:urlClient:keyValueStore:requestPayloadProvider:)(a1, a2, a3, a4);
  return v8;
}

uint64_t NDOAckHandler.init(configLoader:urlClient:keyValueStore:requestPayloadProvider:)(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v9 = sub_22DEC48E4();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v40 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37B00, &unk_22DEC6C98);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v31 - v14;
  v16 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData(0);
  v37 = *(v16 - 8);
  v17 = *(v37 + 64);
  MEMORY[0x28223BE20](v16);
  v38 = v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v19 = MEMORY[0x277D84F90];
  v36 = v4;
  *(v4 + 112) = MEMORY[0x277D84F90];
  v20 = v4 + 112;
  v34 = a1;
  sub_22DDEDAAC(a1, v20 + 8);
  v33 = a2;
  sub_22DDEDAAC(a2, v20 + 48);
  sub_22DE014AC(a3, v20 + 88);
  v31[1] = v20;
  v32 = a4;
  sub_22DDEDAAC(a4, v20 + 136);
  v21 = a3[3];
  v22 = a3[4];
  v35 = a3;
  __swift_project_boxed_opaque_existential_1(a3, v21);
  v42[0] = 4;
  result = (*(v22 + 8))(v42, v21, v22);
  if (result)
  {
    v24 = sub_22DE082B0(result);

    if (v24)
    {
      v19 = v24;
    }
  }

  v39 = *(v19 + 16);
  if (v39)
  {
    v25 = 0;
    v26 = (v37 + 56);
    v27 = (v19 + 40);
    v41 = MEMORY[0x277D84F90];
    while (v25 < *(v19 + 16))
    {
      sub_22DDEEEE8(*(v27 - 1), *v27);
      sub_22DEC48D4();
      sub_22DE0D4AC(&qword_27DA37B08, 255, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData);
      sub_22DEC4A14();
      (*v26)(v15, 0, 1, v16);
      sub_22DE0D444(v15, v38, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v41 = sub_22DE0CB70(0, v41[2] + 1, 1, v41);
      }

      v29 = v41[2];
      v28 = v41[3];
      if (v29 >= v28 >> 1)
      {
        v41 = sub_22DE0CB70(v28 > 1, v29 + 1, 1, v41);
      }

      v30 = v41;
      v41[2] = v29 + 1;
      result = sub_22DE0D444(v38, v30 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v29, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData);
      ++v25;
      v27 += 2;
      if (v39 == v25)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v41 = MEMORY[0x277D84F90];
LABEL_14:

    swift_beginAccess();
    sub_22DE0CF60(v41);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1(v32);
    __swift_destroy_boxed_opaque_existential_1(v33);
    __swift_destroy_boxed_opaque_existential_1(v34);
    __swift_destroy_boxed_opaque_existential_1(v35);
    return v36;
  }

  return result;
}

uint64_t sub_22DE082B0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v11 = MEMORY[0x277D84F90];
  sub_22DE04834(0, v2, 0);
  v3 = v11;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_22DDEDDE4(i, v10);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v5 = v9;
      v11 = v3;
      v7 = *(v3 + 16);
      v6 = *(v3 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_22DE04834((v6 > 1), v7 + 1, 1);
        v5 = v9;
        v3 = v11;
      }

      *(v3 + 16) = v7 + 1;
      *(v3 + 16 * v7 + 32) = v5;
      if (!--v2)
      {
        return v3;
      }
    }

    sub_22DDEEF3C(0, 0xF000000000000000);
    return 0;
  }

  return v3;
}

uint64_t sub_22DE083DC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  sub_22DE048DC(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_22DDEDDE4(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_22DE048DC((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_22DE084F0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22DE0858C;

  return sub_22DE08680(a1, 0, 0);
}

uint64_t sub_22DE0858C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_22DE08680(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  return MEMORY[0x2822009F8](sub_22DE086A4, v3, 0);
}

uint64_t sub_22DE086A4()
{
  v1 = v0[8];
  v2 = v0[5];
  swift_beginAccess();

  sub_22DE0CF60(v3);
  swift_endAccess();
  v4 = *(v1 + 112);

  sub_22DE089B4(v5);

  v6 = *(v1 + 112);
  v0[9] = v6;
  *(v1 + 112) = MEMORY[0x277D84F90];
  if (*(v6 + 16))
  {
    v7 = swift_task_alloc();
    v0[10] = v7;
    *v7 = v0;
    v7[1] = sub_22DE088A4;
    v8 = v0[7];
    v9 = v0[8];
    v10 = v0[6];

    return sub_22DE09198(v6, 0, v10, v8);
  }

  else
  {

    if (qword_28145AE68 != -1)
    {
      swift_once();
    }

    v12 = sub_22DEC4B44();
    __swift_project_value_buffer(v12, qword_281462270);
    v13 = sub_22DEC4B24();
    v14 = sub_22DEC4E44();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_22DDEC000, v13, v14, "ack called, but there are no acks to ack", v15, 2u);
      MEMORY[0x2318DBF00](v15, -1, -1);
    }

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_22DE088A4()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

void sub_22DE089B4(unint64_t *a1)
{
  v2 = v1;
  v56 = sub_22DEC4904();
  v4 = *(v56 - 8);
  v5 = *(v4 + 8);
  MEMORY[0x28223BE20](v56);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22DEC48E4();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v55 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37B00, &unk_22DEC6C98);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v51 - v13;
  v61 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData(0);
  v57 = *(v61 - 8);
  v15 = *(v57 + 64);
  v16 = MEMORY[0x28223BE20](v61);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v58 = &v51 - v19;
  if (qword_28145AE68 != -1)
  {
    goto LABEL_33;
  }

  while (1)
  {
    v20 = sub_22DEC4B44();
    __swift_project_value_buffer(v20, qword_281462270);

    v21 = sub_22DEC4B24();
    v22 = sub_22DEC4E54();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 134217984;
      *(v23 + 4) = a1[2];

      _os_log_impl(&dword_22DDEC000, v21, v22, "Appending %ld acks to key value store", v23, 0xCu);
      MEMORY[0x2318DBF00](v23, -1, -1);

      if (!a1[2])
      {
        return;
      }
    }

    else
    {

      if (!a1[2])
      {
        return;
      }
    }

    v24 = v2[28];
    v25 = v2[29];
    __swift_project_boxed_opaque_existential_1(v2 + 25, v24);
    LOBYTE(v65[0]) = 4;
    v26 = (*(v25 + 8))(v65, v24, v25);
    if (v26 && (v27 = sub_22DE082B0(v26), , v27))
    {
      v28 = v27;
    }

    else
    {

      v28 = MEMORY[0x277D84F90];
    }

    v51 = v4;
    v52 = a1;
    v53 = v2;
    v54 = v18;
    v29 = *(v28 + 2);
    v63 = v7;
    v60 = v29;
    if (!v29)
    {
      break;
    }

    v59 = v14;
    v30 = 0;
    v2 = (v57 + 56);
    a1 = (v28 + 40);
    v62 = MEMORY[0x277D84F90];
    v18 = v61;
    v4 = v55;
    v31 = v14;
    while (v30 < *(v28 + 2))
    {
      v14 = v28;
      sub_22DDEEEE8(*(a1 - 1), *a1);
      sub_22DEC48D4();
      sub_22DE0D4AC(&qword_27DA37B08, 255, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData);
      sub_22DEC4A14();
      (*v2)(v31, 0, 1, v18);
      sub_22DE0D444(v31, v58, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v62 = sub_22DE0CB70(0, *(v62 + 16) + 1, 1, v62);
      }

      v7 = v63;
      v33 = *(v62 + 16);
      v32 = *(v62 + 24);
      if (v33 >= v32 >> 1)
      {
        v62 = sub_22DE0CB70(v32 > 1, v33 + 1, 1, v62);
      }

      v34 = v62;
      *(v62 + 16) = v33 + 1;
      sub_22DE0D444(v58, v34 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v33, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData);
      v4 = v55;
      ++v30;
      a1 += 2;
      v28 = v14;
      if (v60 == v30)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_33:
    swift_once();
  }

  v62 = MEMORY[0x277D84F90];
LABEL_20:

  v35 = sub_22DE0C4C8(v52, v62);

  v36 = *(v35 + 16);
  if (v36)
  {
    v37 = v56;
    v38 = *(v57 + 80);
    v60 = v35;
    v39 = v35 + ((v38 + 32) & ~v38);
    v62 = *(v57 + 72);
    v40 = (v51 + 8);
    v41 = MEMORY[0x277D84F90];
    v42 = v54;
    do
    {
      sub_22DE0D33C(v39, v42);
      sub_22DEC48F4();
      sub_22DE0D4AC(&qword_27DA37B08, 255, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData);
      v43 = sub_22DEC4A04();
      v45 = v44;
      (*v40)(v7, v37);
      sub_22DE0D4F4(v42, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v41 = sub_22DE0CD48(0, *(v41 + 2) + 1, 1, v41);
      }

      v47 = *(v41 + 2);
      v46 = *(v41 + 3);
      if (v47 >= v46 >> 1)
      {
        v41 = sub_22DE0CD48((v46 > 1), v47 + 1, 1, v41);
      }

      *(v41 + 2) = v47 + 1;
      v48 = &v41[16 * v47];
      *(v48 + 4) = v43;
      *(v48 + 5) = v45;
      v37 = v56;
      v7 = v63;
      v42 = v54;
      v39 += v62;
      --v36;
    }

    while (v36);
  }

  else
  {

    v41 = MEMORY[0x277D84F90];
  }

  v49 = v53[28];
  v50 = v53[30];
  __swift_project_boxed_opaque_existential_1(v53 + 25, v49);
  v65[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37B38, &qword_22DEC6D88);
  v65[0] = v41;
  v64 = 4;
  (*(v50 + 8))(v65, &v64, v49, v50);
  sub_22DDEF284(v65, &qword_27DA37988, &unk_22DEC6210);
}

uint64_t sub_22DE09198(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 208) = a4;
  *(v5 + 216) = v4;
  *(v5 + 336) = a2;
  *(v5 + 192) = a1;
  *(v5 + 200) = a3;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37B10, &qword_22DEC6D68) - 8) + 64) + 15;
  v11 = swift_task_alloc();
  *(v5 + 224) = v11;
  v12 = sub_22DEC4694();
  *(v5 + 232) = v12;
  v13 = *(v12 - 8);
  *(v5 + 240) = v13;
  v14 = *(v13 + 64) + 15;
  *(v5 + 248) = swift_task_alloc();
  v15 = swift_task_alloc();
  *(v5 + 256) = v15;
  *v15 = v5;
  v15[1] = sub_22DE09300;

  return sub_22DE0A498(v11, a1, a2, a3, a4);
}

uint64_t sub_22DE09300()
{
  v1 = *(*v0 + 256);
  v2 = *(*v0 + 216);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22DE09410, v2, 0);
}

uint64_t sub_22DE09410()
{
  v1 = v0[29];
  v2 = v0[30];
  v3 = v0[28];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_22DDEF284(v3, &qword_27DA37B10, &qword_22DEC6D68);
    if (qword_28145AE68 != -1)
    {
      swift_once();
    }

    v4 = sub_22DEC4B44();
    __swift_project_value_buffer(v4, qword_281462270);
    v5 = sub_22DEC4B24();
    v6 = sub_22DEC4E44();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_22DDEC000, v5, v6, "Failed to create ack request, not acking", v7, 2u);
      MEMORY[0x2318DBF00](v7, -1, -1);
    }

    v8 = v0[31];
    v9 = v0[28];

    v10 = v0[1];

    return v10();
  }

  else
  {
    v12 = v0[31];
    v13 = v0[27];
    (*(v2 + 32))(v12, v3, v1);
    v15 = sub_22DE0D4AC(&qword_27DA37B18, v14, type metadata accessor for NDOAckHandler);
    v16 = swift_task_alloc();
    v0[33] = v16;
    *(v16 + 16) = v13;
    *(v16 + 24) = v12;
    v17 = *(MEMORY[0x277D85A40] + 4);
    v18 = swift_task_alloc();
    v0[34] = v18;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37B20, &qword_22DEC6D78);
    v0[35] = v19;
    *v18 = v0;
    v18[1] = sub_22DE096C4;

    return MEMORY[0x2822008A0](v0 + 2, v13, v15, 0xD00000000000001FLL, 0x800000022DED1960, sub_22DE0D334, v16, v19);
  }
}

uint64_t sub_22DE096C4()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v9 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v4 = *(v2 + 216);
    v5 = sub_22DE0A098;
  }

  else
  {
    v6 = *(v2 + 264);
    v7 = *(v2 + 216);

    v5 = sub_22DE097EC;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_22DE097EC()
{
  v1 = *(v0 + 16);
  *(v0 + 64) = v1;
  v2 = *(v0 + 280);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  *(v0 + 296) = v1;
  *(v0 + 304) = v3;
  *(v0 + 312) = v4;
  *(v0 + 72) = v3;
  *(v0 + 80) = v4;
  sub_22DDEEEE8(v1, v3);
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37B28, &qword_22DEC6D80);
  if (!swift_dynamicCast())
  {
    v56 = *(v0 + 280);
    type metadata accessor for NDOErrors();
    sub_22DE0D4AC(&qword_28145AE60, 255, type metadata accessor for NDOErrors);
    v53 = swift_allocError();
    v21 = v20;
    *(v0 + 112) = v1;
    *(v0 + 160) = 0;
    *(v0 + 168) = 0xE000000000000000;
    *(v0 + 120) = v3;
    *(v0 + 128) = v5;
    sub_22DDEEEE8(v1, v3);
    v22 = v5;
    sub_22DEC4FB4();
    sub_22DDEEF50(v1, v3);

    v23 = *(v0 + 168);
    *v21 = *(v0 + 160);
    v21[1] = v23;
    v24 = v53;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_12:
    sub_22DDEEF50(v1, v3);

    if (qword_28145AE68 != -1)
    {
      swift_once();
    }

    v25 = sub_22DEC4B44();
    __swift_project_value_buffer(v25, qword_281462270);
    v26 = v24;
    v27 = sub_22DEC4B24();
    v28 = sub_22DEC4E44();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      v31 = v24;
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 4) = v32;
      *v30 = v32;
      _os_log_impl(&dword_22DDEC000, v27, v28, "Ack request failed with error: %@", v29, 0xCu);
      sub_22DDEF284(v30, &qword_27DA379D8, qword_22DEC6E70);
      MEMORY[0x2318DBF00](v30, -1, -1);
      MEMORY[0x2318DBF00](v29, -1, -1);
    }

    v33 = *(v0 + 216);
    v34 = *(v0 + 192);

    swift_beginAccess();

    sub_22DE0CF60(v35);
    swift_endAccess();

    goto LABEL_17;
  }

  v55 = v5;
  v6 = *(v0 + 336);
  v7 = *(v0 + 88);
  v8 = *(v0 + 96);
  v9 = *(v0 + 104);
  *(v0 + 320) = v9;
  sub_22DDEEF50(v7, v8);
  if ([v9 statusCode] == 401 && (v6 & 1) == 0)
  {
    if (qword_28145AE68 != -1)
    {
      swift_once();
    }

    v10 = sub_22DEC4B44();
    __swift_project_value_buffer(v10, qword_281462270);
    v11 = sub_22DEC4B24();
    v12 = sub_22DEC4E54();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_22DDEC000, v11, v12, "Ack handler retrying once due to 401", v13, 2u);
      MEMORY[0x2318DBF00](v13, -1, -1);
    }

    v14 = swift_task_alloc();
    *(v0 + 328) = v14;
    *v14 = v0;
    v14[1] = sub_22DE09ED0;
    v15 = *(v0 + 208);
    v16 = *(v0 + 216);
    v18 = *(v0 + 192);
    v17 = *(v0 + 200);

    return sub_22DE09198(v18, 1, v17, v15);
  }

  if ([v9 statusCode] != 200)
  {
    v54 = *(v0 + 280);
    type metadata accessor for NDOErrors();
    sub_22DE0D4AC(&qword_28145AE60, 255, type metadata accessor for NDOErrors);
    v47 = swift_allocError();
    v49 = v48;
    *(v0 + 176) = 0;
    *(v0 + 184) = 0xE000000000000000;
    *(v0 + 136) = v1;
    *(v0 + 144) = v3;
    *(v0 + 152) = v5;
    sub_22DDEEEE8(v1, v3);
    v50 = v5;
    sub_22DEC4FB4();
    sub_22DDEEF50(v1, v3);

    v24 = v47;
    v51 = *(v0 + 184);
    *v49 = *(v0 + 176);
    v49[1] = v51;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    goto LABEL_12;
  }

  v39 = *(v0 + 216);
  sub_22DE0B55C(*(v0 + 192));
  if (qword_28145AE68 != -1)
  {
    swift_once();
  }

  v40 = *(v0 + 192);
  v41 = sub_22DEC4B44();
  __swift_project_value_buffer(v41, qword_281462270);

  v42 = sub_22DEC4B24();
  v43 = sub_22DEC4E54();
  v44 = os_log_type_enabled(v42, v43);
  v45 = *(v0 + 192);
  if (v44)
  {
    v46 = swift_slowAlloc();
    *v46 = 134217984;
    *(v46 + 4) = *(v45 + 16);

    _os_log_impl(&dword_22DDEC000, v42, v43, "Successfully acked %ld actions", v46, 0xCu);
    MEMORY[0x2318DBF00](v46, -1, -1);
  }

  else
  {
    v52 = *(v0 + 192);
  }

  sub_22DDEEF50(v1, v3);
LABEL_17:
  (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));
  v36 = *(v0 + 248);
  v37 = *(v0 + 224);

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_22DE09ED0()
{
  v1 = *(*v0 + 328);
  v2 = *(*v0 + 216);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22DE09FE0, v2, 0);
}

uint64_t sub_22DE09FE0()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 296);
  v3 = *(v0 + 304);
  v5 = *(v0 + 240);
  v4 = *(v0 + 248);
  v6 = *(v0 + 232);

  sub_22DDEEF50(v2, v3);
  (*(v5 + 8))(v4, v6);
  v7 = *(v0 + 248);
  v8 = *(v0 + 224);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_22DE0A098()
{
  v1 = v0[33];

  v2 = v0[36];
  if (qword_28145AE68 != -1)
  {
    swift_once();
  }

  v3 = sub_22DEC4B44();
  __swift_project_value_buffer(v3, qword_281462270);
  v4 = v2;
  v5 = sub_22DEC4B24();
  v6 = sub_22DEC4E44();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v2;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_22DDEC000, v5, v6, "Ack request failed with error: %@", v7, 0xCu);
    sub_22DDEF284(v8, &qword_27DA379D8, qword_22DEC6E70);
    MEMORY[0x2318DBF00](v8, -1, -1);
    MEMORY[0x2318DBF00](v7, -1, -1);
  }

  v11 = v0[27];
  v12 = v0[24];

  swift_beginAccess();

  sub_22DE0CF60(v13);
  swift_endAccess();

  (*(v0[30] + 8))(v0[31], v0[29]);
  v14 = v0[31];
  v15 = v0[28];

  v16 = v0[1];

  return v16();
}

uint64_t *NDOAckHandler.deinit()
{
  v1 = v0[14];

  __swift_destroy_boxed_opaque_existential_1(v0 + 15);
  __swift_destroy_boxed_opaque_existential_1(v0 + 20);
  __swift_destroy_boxed_opaque_existential_1(v0 + 25);
  __swift_destroy_boxed_opaque_existential_1(v0 + 31);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t NDOAckHandler.__deallocating_deinit()
{
  v1 = v0[14];

  __swift_destroy_boxed_opaque_existential_1(v0 + 15);
  __swift_destroy_boxed_opaque_existential_1(v0 + 20);
  __swift_destroy_boxed_opaque_existential_1(v0 + 25);
  __swift_destroy_boxed_opaque_existential_1(v0 + 31);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22DE0A348(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22DE0D6CC;

  return sub_22DE08680(a1, 0, 0);
}

uint64_t sub_22DE0A3E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_22DE0D6CC;

  return sub_22DE08680(a1, a2, a3);
}

uint64_t sub_22DE0A498(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = v5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a4;
  *(v6 + 208) = a3;
  *(v6 + 16) = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37910, &qword_22DEC5BB0);
  *(v6 + 56) = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  *(v6 + 64) = swift_task_alloc();
  *(v6 + 72) = swift_task_alloc();
  *(v6 + 80) = swift_task_alloc();
  v9 = sub_22DEC4764();
  *(v6 + 88) = v9;
  v10 = *(v9 - 8);
  *(v6 + 96) = v10;
  v11 = *(v10 + 64) + 15;
  *(v6 + 104) = swift_task_alloc();
  *(v6 + 112) = swift_task_alloc();
  v12 = sub_22DEC4904();
  *(v6 + 120) = v12;
  v13 = *(v12 - 8);
  *(v6 + 128) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 136) = swift_task_alloc();
  v15 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  *(v6 + 144) = v15;
  v16 = *(v15 - 8);
  *(v6 + 152) = v16;
  v17 = *(v16 + 64) + 15;
  *(v6 + 160) = swift_task_alloc();
  v18 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckRequest(0);
  *(v6 + 168) = v18;
  v19 = *(*(v18 - 8) + 64) + 15;
  *(v6 + 176) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22DE0A6AC, v5, 0);
}

uint64_t sub_22DE0A6AC()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);
  v4 = *(v0 + 144);
  v54 = v4;
  v55 = *(v0 + 136);
  v56 = *(v0 + 168);
  v57 = *(v0 + 128);
  v59 = *(v0 + 120);
  v5 = *(v0 + 48);
  v6 = *(v0 + 24);
  *v1 = MEMORY[0x277D84F90];
  v7 = &v1[*(v56 + 20)];
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v8 = *(v56 + 24);
  v9 = *(v2 + 56);
  v9(&v1[v8], 1, 1, v4);
  v11 = v5[34];
  v10 = v5[35];
  v53 = v5;
  __swift_project_boxed_opaque_existential_1(v5 + 31, v11);
  (*(v10 + 16))(v11, v10);
  sub_22DDEF284(&v1[v8], &qword_27DA37A38, &unk_22DEC6570);
  sub_22DE0D444(v3, &v1[v8], type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  v9(&v1[v8], 0, 1, v54);
  *v1 = v6;

  sub_22DEC48F4();
  sub_22DE0D4AC(&qword_27DA37B48, 255, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckRequest);
  v12 = sub_22DEC4A04();
  v14 = v13;
  *(v0 + 184) = v12;
  *(v0 + 192) = v13;
  (*(v57 + 8))(v55, v59);
  v15 = *(v0 + 40);
  if (!v15)
  {
LABEL_4:
    v20 = *(v0 + 48);
    v21 = sub_22DE0D4AC(&qword_27DA37B18, v15, type metadata accessor for NDOAckHandler);
    v22 = *(MEMORY[0x277D859E0] + 4);
    v23 = swift_task_alloc();
    *(v0 + 200) = v23;
    *v23 = v0;
    v23[1] = sub_22DE0ADE0;
    v24 = *(v0 + 72);
    v25 = *(v0 + 48);
    v26 = *(v0 + 56);

    return MEMORY[0x2822007B8](v24, v20, v21, 0xD000000000000028, 0x800000022DED1980, sub_22DE0D554, v25, v26);
  }

  v16 = *(v0 + 88);
  v17 = *(v0 + 96);
  v18 = *(v0 + 80);
  v19 = *(v0 + 32);
  sub_22DEC4744();
  if ((*(v17 + 48))(v18, 1, v16) == 1)
  {
    sub_22DDEF284(*(v0 + 80), &qword_27DA37910, &qword_22DEC5BB0);
    goto LABEL_4;
  }

  v27 = *(v0 + 112);
  v28 = *(v0 + 88);
  v29 = *(v0 + 96);
  v58 = *(v0 + 208);
  v60 = *(v0 + 16);
  (*(v29 + 32))(v27, *(v0 + 80), v28);
  v30 = objc_allocWithZone(MEMORY[0x277CCAB70]);
  v31 = sub_22DEC4724();
  v32 = [v30 initWithURL_];

  v33 = v32;
  v34 = sub_22DEC4C04();
  [v33 setHTTPMethod_];

  v35 = sub_22DEC4C04();
  v36 = sub_22DEC4C04();
  [v33 addValue:v35 forHTTPHeaderField:v36];

  v37 = sub_22DEC4C04();
  v38 = sub_22DEC4C04();
  [v33 setValue:v37 forHTTPHeaderField:v38];

  v39 = sub_22DEC4794();
  [v33 setHTTPBody_];

  v41 = v53[34];
  v40 = v53[35];
  __swift_project_boxed_opaque_existential_1(v53 + 31, v41);
  (*(v40 + 8))(v33, v58, v41, v40);
  sub_22DEC4674();

  sub_22DDEEF50(v12, v14);
  (*(v29 + 8))(v27, v28);
  v42 = *(v0 + 176);
  v43 = *(v0 + 160);
  v44 = *(v0 + 136);
  v46 = *(v0 + 104);
  v45 = *(v0 + 112);
  v48 = *(v0 + 72);
  v47 = *(v0 + 80);
  v61 = *(v0 + 64);
  v49 = *(v0 + 16);
  v50 = sub_22DEC4694();
  (*(*(v50 - 8) + 56))(v49, 0, 1, v50);
  sub_22DE0D4F4(v42, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckRequest);

  v51 = *(v0 + 8);

  return v51();
}

uint64_t sub_22DE0ADE0()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22DE0AEF0, v2, 0);
}

uint64_t sub_22DE0AEF0()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 64);
  sub_22DE0D55C(*(v0 + 72), v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_22DDEF284(*(v0 + 64), &qword_27DA37910, &qword_22DEC5BB0);
    if (qword_28145AE68 != -1)
    {
      swift_once();
    }

    v4 = sub_22DEC4B44();
    __swift_project_value_buffer(v4, qword_281462270);
    v5 = sub_22DEC4B24();
    v6 = sub_22DEC4E44();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_22DDEC000, v5, v6, "Unable to ack due to no ack url", v7, 2u);
      MEMORY[0x2318DBF00](v7, -1, -1);
    }

    v8 = *(v0 + 72);
    sub_22DDEEF50(*(v0 + 184), *(v0 + 192));

    v9 = 1;
  }

  else
  {
    v10 = *(v0 + 184);
    v11 = *(v0 + 192);
    v13 = *(v0 + 96);
    v12 = *(v0 + 104);
    v41 = *(v0 + 72);
    v42 = *(v0 + 88);
    v14 = *(v0 + 48);
    v39 = *(v0 + 208);
    v40 = *(v0 + 16);
    (*(v13 + 32))(v12, *(v0 + 64));
    v15 = objc_allocWithZone(MEMORY[0x277CCAB70]);
    v16 = sub_22DEC4724();
    v17 = [v15 initWithURL_];

    v18 = v17;
    v19 = sub_22DEC4C04();
    [v18 setHTTPMethod_];

    v20 = sub_22DEC4C04();
    v21 = sub_22DEC4C04();
    [v18 addValue:v20 forHTTPHeaderField:v21];

    v22 = sub_22DEC4C04();
    v23 = sub_22DEC4C04();
    [v18 setValue:v22 forHTTPHeaderField:v23];

    v24 = sub_22DEC4794();
    [v18 setHTTPBody_];

    v25 = v14[34];
    v26 = v14[35];
    __swift_project_boxed_opaque_existential_1(v14 + 31, v25);
    (*(v26 + 8))(v18, v39, v25, v26);
    sub_22DEC4674();
    v27 = v10;
    v8 = v41;
    sub_22DDEEF50(v27, v11);

    (*(v13 + 8))(v12, v42);
    v9 = 0;
  }

  sub_22DDEF284(v8, &qword_27DA37910, &qword_22DEC5BB0);
  v28 = *(v0 + 176);
  v29 = *(v0 + 160);
  v30 = *(v0 + 136);
  v32 = *(v0 + 104);
  v31 = *(v0 + 112);
  v34 = *(v0 + 72);
  v33 = *(v0 + 80);
  v43 = *(v0 + 64);
  v35 = *(v0 + 16);
  v36 = sub_22DEC4694();
  (*(*(v36 - 8) + 56))(v35, v9, 1, v36);
  sub_22DE0D4F4(v28, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckRequest);

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_22DE0B34C(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37B40, &qword_22DEC6D90);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - v9;
  v11 = a2[23];
  v12 = a2[24];
  __swift_project_boxed_opaque_existential_1(a2 + 20, v11);
  (*(v7 + 16))(v10, a1, v6);
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = swift_allocObject();
  (*(v7 + 32))(v14 + v13, v10, v6);
  (*(v12 + 8))(a3, sub_22DE0D3A0, v14, v11, v12);
}

uint64_t sub_22DE0B4D0(void *a1, unint64_t a2, void *a3, char a4)
{
  if (a4)
  {
    v4 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37B40, &qword_22DEC6D90);
    return sub_22DEC4D74();
  }

  else
  {
    sub_22DDEEEE8(a1, a2);
    v7 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37B40, &qword_22DEC6D90);
    return sub_22DEC4D84();
  }
}

void sub_22DE0B55C(unsigned __int8 *a1)
{
  v105 = sub_22DEC4904();
  v2 = *(v105 - 8);
  v3 = *(v2 + 8);
  MEMORY[0x28223BE20](v105);
  v5 = &v99 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22DEC48E4();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v119 = &v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37B00, &unk_22DEC6C98);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v99 - v11;
  v13 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData(0);
  v107 = *(v13 - 1);
  v14 = *(v107 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v109 = &v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v99 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v99 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v112 = &v99 - v24;
  MEMORY[0x28223BE20](v23);
  v120 = &v99 - v25;
  if (qword_28145AE68 != -1)
  {
    goto LABEL_105;
  }

  while (1)
  {
    v26 = sub_22DEC4B44();
    __swift_project_value_buffer(v26, qword_281462270);

    v27 = sub_22DEC4B24();
    v28 = sub_22DEC4E54();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 134217984;
      *(v29 + 4) = *(a1 + 2);

      _os_log_impl(&dword_22DDEC000, v27, v28, "Removing %ld acks from key value store", v29, 0xCu);
      MEMORY[0x2318DBF00](v29, -1, -1);
    }

    else
    {
    }

    v115 = *(a1 + 2);
    if (!v115)
    {
      return;
    }

    v30 = v101[28];
    v31 = v101[29];
    __swift_project_boxed_opaque_existential_1(v101 + 25, v30);
    LOBYTE(v123[0]) = 4;
    v32 = (*(v31 + 8))(v123, v30, v31);
    v104 = v5;
    if (!v32 || (v5 = sub_22DE082B0(v32), , !v5))
    {

      v5 = MEMORY[0x277D84F90];
    }

    v111 = a1;
    v100 = v2;
    v103 = v22;
    v33 = *(v5 + 16);
    v117 = v13;
    v121 = v33;
    if (!v33)
    {
      break;
    }

    a1 = 0;
    v118 = 0;
    v2 = (v107 + 56);
    v34 = (v5 + 40);
    v114 = MEMORY[0x277D84F90];
    v22 = v119;
    while (a1 < *(v5 + 16))
    {
      sub_22DDEEEE8(*(v34 - 1), *v34);
      sub_22DEC48D4();
      sub_22DE0D4AC(&qword_27DA37B08, 255, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData);
      v13 = v117;
      v35 = v118;
      sub_22DEC4A14();
      if (v35)
      {

        (*v2)(v12, 1, 1, v13);
        sub_22DDEF284(v12, &qword_27DA37B00, &unk_22DEC6C98);
        v118 = 0;
      }

      else
      {
        v118 = 0;
        (*v2)(v12, 0, 1, v13);
        sub_22DE0D444(v12, v120, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v114 = sub_22DE0CB70(0, v114[2] + 1, 1, v114);
        }

        v37 = v114[2];
        v36 = v114[3];
        if (v37 >= v36 >> 1)
        {
          v114 = sub_22DE0CB70(v36 > 1, v37 + 1, 1, v114);
        }

        v38 = v114;
        v114[2] = v37 + 1;
        sub_22DE0D444(v120, v38 + ((*(v107 + 80) + 32) & ~*(v107 + 80)) + *(v107 + 72) * v37, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData);
      }

      ++a1;
      v34 += 2;
      if (v121 == a1)
      {
        goto LABEL_21;
      }
    }

LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
LABEL_105:
    swift_once();
  }

  v118 = 0;
  v114 = MEMORY[0x277D84F90];
LABEL_21:

  v5 = v114;
  v102 = v114[2];
  if (!v102)
  {
    v110 = MEMORY[0x277D84F90];
    goto LABEL_87;
  }

  v22 = 0;
  v110 = MEMORY[0x277D84F90];
  v2 = v111;
  a1 = v112;
  v12 = v115;
  while (2)
  {
    if (v22 >= *(v5 + 16))
    {
      goto LABEL_104;
    }

    v39 = (*(v107 + 80) + 32) & ~*(v107 + 80);
    v121 = *(v107 + 72);
    sub_22DE0D33C(v5 + v39 + v121 * v22, a1);
    v5 = 0;
    ++v22;
    v108 = v39;
    v119 = v22;
    v120 = &v2[v39];
    while (1)
    {
      if (v5 == v12)
      {
        __break(1u);
        goto LABEL_102;
      }

      sub_22DE0D33C(&v120[v5 * v121], v19);
      v40 = *v19;
      v41 = *a1;
      if (v40 <= 0xF7)
      {
        if (v41 > 0xF7)
        {
          goto LABEL_77;
        }

        if ((v40 & 0x80) != 0)
        {
          if ((v41 & 0x80) == 0 || qword_22DEC6DA8[v40 & 0x7F] != qword_22DEC6DA8[v41 & 0x7F])
          {
            goto LABEL_77;
          }
        }

        else if (v40 != v41)
        {
          goto LABEL_77;
        }
      }

      else if (v41 <= 0xF7)
      {
        goto LABEL_77;
      }

      v42 = v13[7];
      v43 = &v19[v42];
      v44 = *&v19[v42 + 8];
      v45 = &a1[v42];
      v46 = *(v45 + 1);
      if (v44)
      {
        if (!v46)
        {
          goto LABEL_77;
        }

        v47 = *v43 == *v45 && v44 == v46;
        if (!v47 && (sub_22DEC50E4() & 1) == 0)
        {
          goto LABEL_77;
        }
      }

      else if (v46)
      {
        goto LABEL_77;
      }

      v48 = v13[8];
      v49 = &v19[v48];
      v50 = *&v19[v48 + 8];
      v51 = &a1[v48];
      v52 = *(v51 + 1);
      if (v50)
      {
        if (!v52)
        {
          goto LABEL_77;
        }

        v53 = *v49 == *v51 && v50 == v52;
        if (!v53 && (sub_22DEC50E4() & 1) == 0)
        {
          goto LABEL_77;
        }
      }

      else if (v52)
      {
        goto LABEL_77;
      }

      v54 = *(v19 + 1);
      v55 = *(a1 + 1);
      if (v54 != v55)
      {
        if (*(v54 + 16) != *(v55 + 16))
        {
LABEL_77:
          sub_22DE0D4F4(v19, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData);
          v22 = v119;
          goto LABEL_78;
        }

        v56 = 0;
        v22 = v54 + 64;
        v57 = 1 << *(v54 + 32);
        if (v57 < 64)
        {
          v58 = ~(-1 << v57);
        }

        else
        {
          v58 = -1;
        }

        v59 = v58 & *(v54 + 64);
        v106 = (v57 + 63) >> 6;
        v113 = v54;
        while (v59)
        {
          v60 = __clz(__rbit64(v59));
          v116 = (v59 - 1) & v59;
LABEL_67:
          v63 = 16 * (v60 | (v56 << 6));
          v64 = (*(v54 + 48) + v63);
          v66 = *v64;
          v65 = v64[1];
          v67 = (*(v54 + 56) + v63);
          v69 = *v67;
          v68 = v67[1];

          v70 = sub_22DE100E4(v66, v65);
          v72 = v71;

          if ((v72 & 1) == 0)
          {

            v13 = v117;
            v2 = v111;
            a1 = v112;
            v12 = v115;
            goto LABEL_77;
          }

          v73 = (*(v55 + 56) + 16 * v70);
          v74 = *v73 == v69 && v73[1] == v68;
          v2 = v111;
          a1 = v112;
          if (v74)
          {

            v59 = v116;
            v13 = v117;
            v12 = v115;
            v54 = v113;
          }

          else
          {
            v75 = sub_22DEC50E4();

            v59 = v116;
            v13 = v117;
            v12 = v115;
            v54 = v113;
            if ((v75 & 1) == 0)
            {
              goto LABEL_77;
            }
          }
        }

        v61 = v56;
        while (1)
        {
          v56 = v61 + 1;
          if (__OFADD__(v61, 1))
          {
            break;
          }

          if (v56 >= v106)
          {
            goto LABEL_74;
          }

          v62 = *(v22 + 8 * v56);
          ++v61;
          if (v62)
          {
            v60 = __clz(__rbit64(v62));
            v116 = (v62 - 1) & v62;
            goto LABEL_67;
          }
        }

LABEL_102:
        __break(1u);
        goto LABEL_103;
      }

LABEL_74:
      v76 = v13[6];
      sub_22DEC48B4();
      sub_22DE0D4AC(&qword_27DA37B30, 255, MEMORY[0x277D216C8]);
      v77 = sub_22DEC4BF4();
      sub_22DE0D4F4(v19, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData);
      v22 = v119;
      if (v77)
      {
        break;
      }

LABEL_78:
      if (++v5 == v12)
      {
        sub_22DE0D444(a1, v109, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData);
        v78 = v110;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v123[0] = v78;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22DE04854(0, *(v78 + 16) + 1, 1);
          v78 = v123[0];
        }

        v5 = v114;
        v81 = *(v78 + 16);
        v80 = *(v78 + 24);
        if (v81 >= v80 >> 1)
        {
          sub_22DE04854(v80 > 1, v81 + 1, 1);
          v78 = v123[0];
        }

        *(v78 + 16) = v81 + 1;
        v110 = v78;
        sub_22DE0D444(v109, v78 + v108 + v81 * v121, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData);
        v12 = v115;
        goto LABEL_84;
      }
    }

    sub_22DE0D4F4(a1, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData);
    v5 = v114;
LABEL_84:
    if (v22 != v102)
    {
      continue;
    }

    break;
  }

LABEL_87:

  v82 = *(v110 + 16);
  if (v82)
  {
    v83 = v110 + ((*(v107 + 80) + 32) & ~*(v107 + 80));
    v84 = *(v107 + 72);
    v85 = (v100 + 8);
    v86 = MEMORY[0x277D84F90];
    do
    {
      v87 = v103;
      sub_22DE0D33C(v83, v103);
      v88 = v104;
      sub_22DEC48F4();
      sub_22DE0D4AC(&qword_27DA37B08, 255, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData);
      v89 = v118;
      v90 = sub_22DEC4A04();
      if (v89)
      {

        (*v85)(v88, v105);
        sub_22DE0D4F4(v87, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData);
        v118 = 0;
      }

      else
      {
        v92 = v90;
        v93 = v91;
        v118 = 0;
        (*v85)(v88, v105);
        sub_22DE0D4F4(v87, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v86 = sub_22DE0CD48(0, *(v86 + 2) + 1, 1, v86);
        }

        v95 = *(v86 + 2);
        v94 = *(v86 + 3);
        if (v95 >= v94 >> 1)
        {
          v86 = sub_22DE0CD48((v94 > 1), v95 + 1, 1, v86);
        }

        *(v86 + 2) = v95 + 1;
        v96 = &v86[16 * v95];
        *(v96 + 4) = v92;
        *(v96 + 5) = v93;
      }

      v83 += v84;
      --v82;
    }

    while (v82);
  }

  else
  {

    v86 = MEMORY[0x277D84F90];
  }

  v97 = v101[28];
  v98 = v101[30];
  __swift_project_boxed_opaque_existential_1(v101 + 25, v97);
  v123[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37B38, &qword_22DEC6D88);
  v123[0] = v86;
  v122 = 4;
  (*(v98 + 8))(v123, &v122, v97, v98);
  sub_22DDEF284(v123, &qword_27DA37988, &unk_22DEC6210);
}

uint64_t sub_22DE0C244(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37B50, &qword_22DEC6D98);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  v9 = a2[18];
  v10 = a2[19];
  __swift_project_boxed_opaque_existential_1(a2 + 15, v9);
  (*(v5 + 16))(v8, a1, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v8, v4);
  (*(v10 + 16))(sub_22DE0D650, v12, v9, v10);
}

uint64_t sub_22DE0C3BC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37910, &qword_22DEC5BB0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v6[-v2];
  sub_22DE19164(3, &v6[-v2]);
  v4 = sub_22DEC4764();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37B50, &qword_22DEC6D98);
  return sub_22DEC4D84();
}

uint64_t sub_22DE0C4C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData(0);
  v5 = *(*(v4 - 1) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v64 - v10;
  MEMORY[0x28223BE20](v9);
  v14 = &v64 - v13;
  v69 = *(a1 + 16);
  if (!v69)
  {
    v19 = MEMORY[0x277D84F90];
LABEL_66:
    v79 = a2;

    sub_22DE0CF60(v19);
    return v79;
  }

  v15 = 0;
  v16 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v68 = a1 + v16;
  v17 = *(v12 + 72);
  v64 = v16;
  v18 = a2 + v16;
  v19 = MEMORY[0x277D84F90];
  v71 = &v64 - v13;
  v72 = v4;
  v70 = v17;
  v76 = a2 + v16;
  v67 = a2;
  v65 = v8;
  while (1)
  {
    v74 = v19;
    v75 = v15;
    sub_22DE0D33C(v68 + v17 * v15, v14);
    v78 = *(a2 + 16);
    if (v78)
    {
      break;
    }

LABEL_58:
    v60 = v65;
    sub_22DE0D444(v14, v65, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData);
    v19 = v74;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v79 = v19;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_22DE04854(0, *(v19 + 16) + 1, 1);
      v19 = v79;
    }

    v63 = *(v19 + 16);
    v62 = *(v19 + 24);
    if (v63 >= v62 >> 1)
    {
      sub_22DE04854(v62 > 1, v63 + 1, 1);
      v19 = v79;
    }

    *(v19 + 16) = v63 + 1;
    sub_22DE0D444(v60, v19 + v64 + v63 * v17, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData);
    v18 = v76;
LABEL_63:
    v15 = v75 + 1;
    a2 = v67;
    if (v75 + 1 == v69)
    {
      goto LABEL_66;
    }
  }

  v20 = 0;
  while (1)
  {
    result = sub_22DE0D33C(v18 + v20 * v17, v11);
    v22 = *v11;
    v23 = *v14;
    if (v22 <= 0xF7)
    {
      if (v23 > 0xF7)
      {
        goto LABEL_56;
      }

      if ((v22 & 0x80) != 0)
      {
        if ((v23 & 0x80) == 0 || qword_22DEC6DA8[v22 & 0x7F] != qword_22DEC6DA8[v23 & 0x7F])
        {
          goto LABEL_56;
        }
      }

      else if (v22 != v23)
      {
        goto LABEL_56;
      }
    }

    else if (v23 <= 0xF7)
    {
      goto LABEL_56;
    }

    v24 = v4[7];
    v25 = &v11[v24];
    v26 = *&v11[v24 + 8];
    v27 = &v14[v24];
    v28 = *(v27 + 1);
    if (v26)
    {
      if (!v28)
      {
        goto LABEL_56;
      }

      result = *v25;
      if (*v25 != *v27 || v26 != v28)
      {
        result = sub_22DEC50E4();
        if ((result & 1) == 0)
        {
          goto LABEL_56;
        }
      }
    }

    else if (v28)
    {
      goto LABEL_56;
    }

    v30 = v4[8];
    v31 = &v11[v30];
    v32 = *&v11[v30 + 8];
    v33 = &v14[v30];
    v34 = *(v33 + 1);
    if (v32)
    {
      if (!v34)
      {
        goto LABEL_56;
      }

      result = *v31;
      if (*v31 != *v33 || v32 != v34)
      {
        result = sub_22DEC50E4();
        if ((result & 1) == 0)
        {
          goto LABEL_56;
        }
      }
    }

    else if (v34)
    {
      goto LABEL_56;
    }

    v36 = *(v11 + 1);
    v37 = *(v14 + 1);
    if (v36 != v37)
    {
      break;
    }

LABEL_53:
    v59 = v4[6];
    sub_22DEC48B4();
    sub_22DE0D4AC(&qword_27DA37B30, 255, MEMORY[0x277D216C8]);
    LOBYTE(v59) = sub_22DEC4BF4();
    sub_22DE0D4F4(v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData);
    if (v59)
    {
      sub_22DE0D4F4(v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData);
      v19 = v74;
      goto LABEL_63;
    }

LABEL_57:
    if (++v20 == v78)
    {
      goto LABEL_58;
    }
  }

  if (*(v36 + 16) != *(v37 + 16))
  {
LABEL_56:
    sub_22DE0D4F4(v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData);
    goto LABEL_57;
  }

  v38 = 0;
  v39 = v36 + 64;
  v40 = 1 << *(v36 + 32);
  if (v40 < 64)
  {
    v41 = ~(-1 << v40);
  }

  else
  {
    v41 = -1;
  }

  v42 = v41 & *(v36 + 64);
  v66 = (v40 + 63) >> 6;
  v73 = v36;
  while (v42)
  {
    v43 = __clz(__rbit64(v42));
    v77 = (v42 - 1) & v42;
LABEL_46:
    v46 = 16 * (v43 | (v38 << 6));
    v47 = (*(v36 + 48) + v46);
    v49 = *v47;
    v48 = v47[1];
    v50 = (*(v36 + 56) + v46);
    v52 = *v50;
    v51 = v50[1];

    v53 = sub_22DE100E4(v49, v48);
    v55 = v54;

    if ((v55 & 1) == 0)
    {

      v14 = v71;
      v4 = v72;
      v17 = v70;
      v18 = v76;
      goto LABEL_56;
    }

    v56 = (*(v37 + 56) + 16 * v53);
    if (*v56 == v52 && v56[1] == v51)
    {

      v14 = v71;
      v4 = v72;
      v17 = v70;
      v18 = v76;
      v42 = v77;
      v36 = v73;
    }

    else
    {
      v58 = sub_22DEC50E4();

      v14 = v71;
      v4 = v72;
      v17 = v70;
      v18 = v76;
      v42 = v77;
      v36 = v73;
      if ((v58 & 1) == 0)
      {
        goto LABEL_56;
      }
    }
  }

  v44 = v38;
  while (1)
  {
    v38 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      break;
    }

    if (v38 >= v66)
    {
      goto LABEL_53;
    }

    v45 = *(v39 + 8 * v38);
    ++v44;
    if (v45)
    {
      v43 = __clz(__rbit64(v45));
      v77 = (v45 - 1) & v45;
      goto LABEL_46;
    }
  }

  __break(1u);
  return result;
}

char *sub_22DE0CA6C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37B58, &qword_22DEC6DA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

size_t sub_22DE0CB70(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37AB0, &qword_22DEC6AB0);
  v10 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_22DE0CD48(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37AB8, &qword_22DEC6AB8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22DE0CE54(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A50, &qword_22DEC6580);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_22DE0CF60(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_22DE0CB70(isUniquelyReferenced_nonNull_native, v16, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v9 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData(0);
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t dispatch thunk of NDOAckHandler.ack(data:)(uint64_t a1)
{
  v4 = *(*v1 + 160);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22DE0D6CC;

  return v8(a1);
}

uint64_t dispatch thunk of NDOAckHandler.ack(data:urlString:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 168);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_22DE0858C;

  return v12(a1, a2, a3);
}

uint64_t sub_22DE0D33C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22DE0D3A0(void *a1, unint64_t a2, void *a3, char a4)
{
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37B40, &qword_22DEC6D90) - 8) + 80);

  return sub_22DE0B4D0(a1, a2, a3, a4 & 1);
}

uint64_t sub_22DE0D444(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22DE0D4AC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22DE0D4F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22DE0D55C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37910, &qword_22DEC5BB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_0(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_22DE0D650()
{
  v0 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37B50, &qword_22DEC6D98) - 8) + 80);

  return sub_22DE0C3BC();
}

uint64_t sub_22DE0D6D0(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v34 - v24;
  v26 = sub_22DEC4E04();
  if (!v26)
  {
    return sub_22DEC4D14();
  }

  v48 = v26;
  v52 = sub_22DEC4F94();
  v39 = sub_22DEC4FA4();
  sub_22DEC4F74();
  result = sub_22DEC4DF4();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = sub_22DEC4E24();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      sub_22DEC4F84();
      result = sub_22DEC4E14();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL Message.ensureOneOf(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v43 - v11;
  v52 = v10;
  v48 = v13;
  v49 = v14;
  v50 = v2;
  v15 = MEMORY[0x277D839B0];
  sub_22DEC51E4();
  v16 = sub_22DEC4D44();
  WitnessTable = swift_getWitnessTable();
  v19 = sub_22DE0D6D0(sub_22DE0DEB0, v47, v16, v15, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v18);
  v20 = *(v19 + 16);
  v21 = (v19 + 32);
  while (1)
  {
    v22 = v20;
    if (v20-- == 0)
    {
      break;
    }

    v24 = *v21++;
    if (v24 == 1)
    {

      return v22 != 0;
    }
  }

  v46 = v9;
  v25 = a1;

  if (qword_28145AE68 != -1)
  {
    swift_once();
  }

  v26 = sub_22DEC4B44();
  __swift_project_value_buffer(v26, qword_281462270);
  v27 = *(v5 + 16);
  v27(v12, v2, a2);

  v28 = sub_22DEC4B24();
  v29 = sub_22DEC4E54();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v43 = v27;
    v31 = v30;
    v45 = swift_slowAlloc();
    v52 = v45;
    *v31 = 136315394;
    v44 = v28;
    v43(v46, v12, a2);
    v32 = sub_22DEC4C74();
    v33 = v29;
    v35 = v34;
    (*(v5 + 8))(v12, a2);
    v36 = sub_22DDEDC0C(v32, v35, &v52);

    *(v31 + 4) = v36;
    *(v31 + 12) = 2080;
    v51 = v25;
    swift_getWitnessTable();
    v37 = sub_22DEC50A4();
    v39 = sub_22DDEDC0C(v37, v38, &v52);

    *(v31 + 14) = v39;
    v40 = v44;
    _os_log_impl(&dword_22DDEC000, v44, v33, "%s has none of the required keypaths explicitly set: %s", v31, 0x16u);
    v41 = v45;
    swift_arrayDestroy();
    MEMORY[0x2318DBF00](v41, -1, -1);
    MEMORY[0x2318DBF00](v31, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v12, a2);
  }

  return v22 != 0;
}

uint64_t sub_22DE0DEB0(uint64_t *a1)
{
  v2 = *(v1 + 32);
  v3 = *a1;
  return swift_getAtKeyPath();
}

double NSUserDefaults.object(for:)@<D0>(_BYTE *a1@<X0>, _OWORD *a2@<X8>)
{
  *a1;
  *a1;
  *a1;
  v4 = sub_22DEC4C04();

  v5 = [v2 objectForKey_];

  if (v5)
  {
    sub_22DEC4EC4();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_22DE0E24C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37988, &unk_22DEC6210);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22DE0E35C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37910, &qword_22DEC5BB0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v8 - v2;
  v4 = sub_22DEC4764();
  __swift_allocate_value_buffer(v4, qword_28145E4A8);
  v5 = __swift_project_value_buffer(v4, qword_28145E4A8);
  sub_22DEC4744();
  v6 = *(v4 - 8);
  result = (*(v6 + 48))(v3, 1, v4);
  if (result != 1)
  {
    return (*(v6 + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

uint64_t sub_22DE0E4B0()
{
  v0 = sub_22DEC46F4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22DEC4764();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20]();
  v10 = v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v8, qword_28145E528);
  __swift_project_value_buffer(v5, qword_28145E528);
  sub_22DEC4704();
  v12[0] = 0xD000000000000037;
  v12[1] = 0x800000022DED1A20;
  (*(v1 + 104))(v4, *MEMORY[0x277CC91D8], v0);
  sub_22DDEDFE0();
  sub_22DEC4754();
  (*(v1 + 8))(v4, v0);
  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_22DE0E6BC()
{
  v0 = sub_22DEC46F4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22DEC4764();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v8, qword_28145E4E8);
  __swift_project_value_buffer(v5, qword_28145E4E8);
  if (qword_28145E520 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v5, qword_28145E528);
  (*(v6 + 16))(v10, v11, v5);
  v13[0] = 0xD000000000000012;
  v13[1] = 0x800000022DED1A00;
  (*(v1 + 104))(v4, *MEMORY[0x277CC91D8], v0);
  sub_22DDEDFE0();
  sub_22DEC4754();
  (*(v1 + 8))(v4, v0);
  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_22DE0E98C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_22DEC46F4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20]();
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22DEC4764();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20]();
  v17 = v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v15, a2);
  __swift_project_value_buffer(v12, a2);
  if (qword_28145E520 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v12, qword_28145E528);
  (*(v13 + 16))(v17, v18, v12);
  v20[0] = a3;
  v20[1] = a4;
  (*(v8 + 104))(v11, *MEMORY[0x277CC91D8], v7);
  sub_22DDEDFE0();
  sub_22DEC4754();
  (*(v8 + 8))(v11, v7);
  return (*(v13 + 8))(v17, v12);
}

uint64_t sub_22DE0EC14(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_22DEC46F4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20]();
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22DEC4764();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20]();
  v17 = v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v15, a2);
  __swift_project_value_buffer(v12, a2);
  if (qword_28145E480 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v12, qword_28145E488);
  (*(v13 + 16))(v17, v18, v12);
  v20[0] = a3;
  v20[1] = a4;
  (*(v8 + 104))(v11, *MEMORY[0x277CC91D8], v7);
  sub_22DDEDFE0();
  sub_22DEC4754();
  (*(v8 + 8))(v11, v7);
  return (*(v13 + 8))(v17, v12);
}

uint64_t sub_22DE0EEC0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_22DEC4764();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t getEnumTagSinglePayload for NDOConstants(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
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

  return *a1;
}

_WORD *storeEnumTagSinglePayload for NDOConstants(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

void (*static NDOClientPostProcessor.saveDataToUrl(_:)(uint64_t a1))(void *a1, unint64_t a2, void *a3, char a4)
{
  v2 = sub_22DEC4764();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  (*(v3 + 32))(v6 + v5, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  return sub_22DE0F8C8;
}

void sub_22DE0F1F0(void *a1, unint64_t a2, void *a3, char a4, uint64_t a5)
{
  v10 = sub_22DEC4764();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    if (qword_28145AE68 != -1)
    {
      swift_once();
    }

    v15 = sub_22DEC4B44();
    __swift_project_value_buffer(v15, qword_281462270);
    v16 = a1;
    v42 = sub_22DEC4B24();
    v17 = sub_22DEC4E44();
    sub_22DDEF48C(a1, a2, a3, 1);
    if (os_log_type_enabled(v42, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v45 = v19;
      *v18 = 136315138;
      v43[0] = a1;
      v43[1] = a2;
      v43[2] = a3;
      v44 = 1;
      v20 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37B78, &qword_22DEC7040);
      v21 = sub_22DEC4C74();
      v23 = sub_22DDEDC0C(v21, v22, &v45);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_22DDEC000, v42, v17, "Not caching due to load failure: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x2318DBF00](v19, -1, -1);
      MEMORY[0x2318DBF00](v18, -1, -1);

      return;
    }

    goto LABEL_18;
  }

  objc_opt_self();
  v24 = swift_dynamicCastObjCClass();
  sub_22DDEEEE8(a1, a2);
  v25 = a3;
  if (v24 && [v24 statusCode] - 300 <= 0xFFFFFFFFFFFFFF9BLL)
  {
    if (qword_28145AE68 != -1)
    {
      swift_once();
    }

    v26 = sub_22DEC4B44();
    __swift_project_value_buffer(v26, qword_281462270);
    v27 = v25;
    v42 = sub_22DEC4B24();
    v28 = sub_22DEC4E44();
    if (os_log_type_enabled(v42, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 134217984;
      *(v29 + 4) = [v24 statusCode];

      _os_log_impl(&dword_22DDEC000, v42, v28, "Not caching due to bad status code: %ld", v29, 0xCu);
      MEMORY[0x2318DBF00](v29, -1, -1);
    }

    else
    {
    }

    sub_22DDEEF50(a1, a2);
LABEL_18:
    v40 = v42;

    return;
  }

  sub_22DEC47B4();
  if (qword_28145AE68 != -1)
  {
    swift_once();
  }

  v30 = sub_22DEC4B44();
  __swift_project_value_buffer(v30, qword_281462270);
  (*(v11 + 16))(v14, a5, v10);
  v31 = sub_22DEC4B24();
  v32 = sub_22DEC4E54();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v43[0] = v34;
    *v33 = 136315138;
    sub_22DE0F9D8();
    v41 = v31;
    v35 = sub_22DEC50A4();
    v42 = v25;
    v37 = v36;
    (*(v11 + 8))(v14, v10);
    v38 = sub_22DDEDC0C(v35, v37, v43);

    *(v33 + 4) = v38;
    v39 = v41;
    _os_log_impl(&dword_22DDEC000, v41, v32, "Cached successfully to url: %s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v34);
    MEMORY[0x2318DBF00](v34, -1, -1);
    MEMORY[0x2318DBF00](v33, -1, -1);

    sub_22DDEEF50(a1, a2);
  }

  else
  {

    sub_22DDEEF50(a1, a2);
    (*(v11 + 8))(v14, v10);
  }
}

void sub_22DE0F8C8(void *a1, unint64_t a2, void *a3, char a4)
{
  v9 = *(sub_22DEC4764() - 8);
  v10 = v4 + ((*(v9 + 80) + 16) & ~*(v9 + 80));

  sub_22DE0F1F0(a1, a2, a3, a4 & 1, v10);
}

uint64_t sub_22DE0F970(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA379D8, qword_22DEC6E70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22DE0F9D8()
{
  result = qword_28145E550;
  if (!qword_28145E550)
  {
    sub_22DEC4764();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28145E550);
  }

  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.apiUrl(for:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37910, &qword_22DEC5BB0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v34 - v8;
  v10 = *a1;
  v11 = *v3;
  v12 = 0xEB00000000454744;
  v13 = 0x454C574F4E4B4341;
  v14 = 0x800000022DED1B00;
  if (v10 == 5)
  {
    v15 = 0xD000000000000010;
  }

  else
  {
    v15 = 0xD000000000000011;
  }

  if (v10 != 5)
  {
    v14 = 0x800000022DED1AE0;
  }

  if (v10 != 3)
  {
    v13 = 0x575F454349564544;
    v12 = 0xEF59544E41525241;
  }

  if (v10 > 4)
  {
    v13 = v15;
    v12 = v14;
  }

  v16 = 0xE700000000000000;
  v17 = 0x474E4947474F4CLL;
  v18 = 0xE600000000000000;
  v19 = 0x4749464E4F43;
  if (v10 != 1)
  {
    v19 = 0x4E495F4B43454843;
    v18 = 0xE800000000000000;
  }

  if (v10)
  {
    v17 = v19;
    v16 = v18;
  }

  if (v10 <= 2)
  {
    v20 = v17;
  }

  else
  {
    v20 = v13;
  }

  if (v10 <= 2)
  {
    v21 = v16;
  }

  else
  {
    v21 = v12;
  }

  if (!*(v11 + 16))
  {

    goto LABEL_25;
  }

  v22 = sub_22DE100E4(v20, v21);
  v24 = v23;

  if ((v24 & 1) == 0)
  {
LABEL_25:
    type metadata accessor for NDOErrors();
    sub_22DE1046C(&qword_28145AE60, type metadata accessor for NDOErrors);
    swift_allocError();
    v31 = v30;
    v34 = 0;
    v35 = 0xE000000000000000;
    sub_22DEC4F34();
    MEMORY[0x2318DB350](0xD000000000000010, 0x800000022DED1AA0);
    v36 = v10;
    sub_22DEC4FB4();
    MEMORY[0x2318DB350](0xD000000000000019, 0x800000022DED1AC0);
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0);
    sub_22DEC4FB4();
    v32 = v35;
    *v31 = v34;
    v31[1] = v32;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  v25 = (*(v11 + 56) + 16 * v22);
  v27 = *v25;
  v26 = v25[1];

  sub_22DEC4744();

  v28 = sub_22DEC4764();
  v29 = *(v28 - 8);
  if ((*(v29 + 48))(v9, 1, v28) == 1)
  {
    sub_22DDFCD50(v9);
    goto LABEL_25;
  }

  return (*(v29 + 32))(a2, v9, v28);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.apiUrl(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37910, &qword_22DEC5BB0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v23 - v9;
  v11 = *v3;
  if (!*(v11 + 16))
  {
    goto LABEL_5;
  }

  v12 = sub_22DE100E4(a1, a2);
  if ((v13 & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = (*(v11 + 56) + 16 * v12);
  v16 = *v14;
  v15 = v14[1];

  sub_22DEC4744();

  v17 = sub_22DEC4764();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v10, 1, v17) == 1)
  {
    sub_22DDFCD50(v10);
LABEL_5:
    type metadata accessor for NDOErrors();
    sub_22DE1046C(&qword_28145AE60, type metadata accessor for NDOErrors);
    swift_allocError();
    v20 = v19;
    v23 = 0;
    v24 = 0xE000000000000000;
    sub_22DEC4F34();
    MEMORY[0x2318DB350](0xD000000000000010, 0x800000022DED1AA0);
    MEMORY[0x2318DB350](a1, a2);
    MEMORY[0x2318DB350](0xD000000000000019, 0x800000022DED1AC0);
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0);
    sub_22DEC4FB4();
    v21 = v24;
    *v20 = v23;
    v20[1] = v21;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  return (*(v18 + 32))(a3, v10, v17);
}

Swift::String_optional __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.urlString(for:)(Swift::String a1)
{
  v2 = v1;
  v3 = *v1;
  if (!*(v3 + 16))
  {
    v3 = v2[1];
    if (!*(v3 + 16))
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  countAndFlagsBits = a1._countAndFlagsBits;
  object = a1._object;
  v6 = sub_22DE100E4(a1._countAndFlagsBits, a1._object);
  if ((v7 & 1) == 0)
  {
    v3 = v2[1];
    a1._object = object;
    a1._countAndFlagsBits = countAndFlagsBits;
    if (!*(v3 + 16))
    {
      goto LABEL_8;
    }

LABEL_6:
    v6 = sub_22DE100E4(a1._countAndFlagsBits, a1._object);
    if (v8)
    {
      goto LABEL_7;
    }

LABEL_8:
    v10 = 0;
    v11 = 0;
    goto LABEL_9;
  }

LABEL_7:
  v9 = (*(v3 + 56) + 16 * v6);
  v10 = *v9;
  v11 = v9[1];

LABEL_9:
  v12 = v10;
  v13 = v11;
  result.value._object = v13;
  result.value._countAndFlagsBits = v12;
  return result;
}

unint64_t sub_22DE100E4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_22DEC5184();
  sub_22DEC4C94();
  v6 = sub_22DEC51A4();

  return sub_22DE101F4(a1, a2, v6);
}

unint64_t sub_22DE1015C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_22DEC4764();
  sub_22DE1046C(&qword_27DA37998, MEMORY[0x277CC9260]);
  v5 = sub_22DEC4BD4();

  return sub_22DE102AC(a1, v5);
}

unint64_t sub_22DE101F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_22DEC50E4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_22DE102AC(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_22DEC4764();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_22DE1046C(&qword_27DA37B80, MEMORY[0x277CC9260]);
      v16 = sub_22DEC4BF4();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

uint64_t sub_22DE1046C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t NDOUpdateConfigActionHandler.__allocating_init(configLoader:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_22DDFE518(a1, v2 + 16);
  return v2;
}

void sub_22DE10518(uint64_t a1, void (*a2)(void *, uint64_t), uint64_t a3)
{
  v32 = a2;
  v33 = a3;
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ReloadConfigData(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v31 - v10;
  if (qword_28145AE68 != -1)
  {
    swift_once();
  }

  v12 = sub_22DEC4B44();
  __swift_project_value_buffer(v12, qword_281462270);
  sub_22DE10B9C(a1, v11);
  v13 = sub_22DEC4B24();
  v14 = sub_22DEC4E54();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v31 = a1;
    v17 = v16;
    v34 = v16;
    *v15 = 136315138;
    sub_22DE10B9C(v11, v9);
    v18 = sub_22DEC4C74();
    v20 = v19;
    sub_22DE10C00(v11);
    v21 = sub_22DDEDC0C(v18, v20, &v34);

    *(v15 + 4) = v21;
    _os_log_impl(&dword_22DDEC000, v13, v14, "Handling post follow up action: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    v22 = v17;
    a1 = v31;
    MEMORY[0x2318DBF00](v22, -1, -1);
    MEMORY[0x2318DBF00](v15, -1, -1);
  }

  else
  {

    sub_22DE10C00(v11);
  }

  if (*(a1 + *(v5 + 20) + 8))
  {
    v23 = v3[5];
    v24 = v3[6];
    __swift_project_boxed_opaque_existential_1(v3 + 2, v23);
    v25 = swift_allocObject();
    *(v25 + 16) = v32;
    *(v25 + 24) = v33;
    v26 = *(v24 + 16);

    v26(sub_22DE10C5C, v25, v23, v24);
  }

  else
  {
    v27 = sub_22DEC4B24();
    v28 = sub_22DEC4E54();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_22DDEC000, v27, v28, "Not handling update config action due to missing config ID", v29, 2u);
      MEMORY[0x2318DBF00](v29, -1, -1);
    }

    type metadata accessor for NDOErrors();
    sub_22DDFE48C();
    v30 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v32(v30, 1);
  }
}

void sub_22DE10878(uint64_t a1, void (*a2)(void, void), uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37B88, &qword_22DEC6F08);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = (&v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v30 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v30 - v15;
  if (qword_28145AE68 != -1)
  {
    swift_once();
  }

  v17 = sub_22DEC4B44();
  __swift_project_value_buffer(v17, qword_281462270);
  sub_22DE10CD8(a1, v16);
  v18 = sub_22DEC4B24();
  v19 = sub_22DEC4E54();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v32 = a3;
    v21 = v20;
    v22 = swift_slowAlloc();
    v31 = a1;
    v23 = v22;
    v33 = v22;
    *v21 = 136315138;
    sub_22DE10CD8(v16, v14);
    v24 = sub_22DEC4C74();
    v3 = a2;
    v26 = v25;
    sub_22DE10D48(v16);
    v27 = sub_22DDEDC0C(v24, v26, &v33);
    a2 = v3;

    *(v21 + 4) = v27;
    _os_log_impl(&dword_22DDEC000, v18, v19, "Config update result: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    v28 = v23;
    a1 = v31;
    MEMORY[0x2318DBF00](v28, -1, -1);
    MEMORY[0x2318DBF00](v21, -1, -1);
  }

  else
  {

    sub_22DE10D48(v16);
  }

  sub_22DE10CD8(a1, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v3 = *v11;
  }

  else
  {
    sub_22DE10D48(v11);
  }

  a2(v3, EnumCaseMultiPayload == 1);
  sub_22DE10DB0(v3, EnumCaseMultiPayload == 1);
}

uint64_t NDOUpdateConfigActionHandler.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_22DE10B9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ReloadConfigData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22DE10C00(uint64_t a1)
{
  v2 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ReloadConfigData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22DE10CD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37B88, &qword_22DEC6F08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22DE10D48(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37B88, &qword_22DEC6F08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_22DE10DB0(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t NDODownloadWarrantyActionHandler.__allocating_init(configLoader:loaderProvider:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_22DDFE518(a1, v6 + 16);
  *(v6 + 56) = a2;
  *(v6 + 64) = a3;
  return v6;
}

uint64_t NDODownloadWarrantyActionHandler.init(configLoader:loaderProvider:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  sub_22DDFE518(a1, v3 + 16);
  *(v3 + 56) = a2;
  *(v3 + 64) = a3;
  return v3;
}

void sub_22DE10E50(uint64_t a1, void (*a2)(void *, uint64_t), uint64_t a3)
{
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageData(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v36 - v12;
  v14 = *a1;
  if (*(*a1 + 16))
  {
    sub_22DDEDAAC(v3 + 16, v37);
    v16 = *(v3 + 56);
    v15 = *(v3 + 64);
    type metadata accessor for NDOWarrantyLoader();
    v17 = swift_allocObject();
    *(v17 + 56) = 0u;
    *(v17 + 72) = 0u;
    *(v17 + 88) = 0;
    sub_22DDFE518(v37, v17 + 16);
    *(v17 + 96) = v16;
    *(v17 + 104) = v15;

    v18 = sub_22DE0501C(MEMORY[0x277D84F90]);
    v19 = swift_allocObject();
    v19[2] = v17;
    v19[3] = a2;
    v19[4] = a3;
    v20 = *(v17 + 40);
    v21 = *(v17 + 48);
    __swift_project_boxed_opaque_existential_1((v17 + 16), v20);
    v22 = swift_allocObject();
    swift_weakInit();
    v23 = swift_allocObject();
    v23[2] = v22;
    v23[3] = sub_22DE11498;
    v23[4] = v19;
    v23[5] = v14;
    v23[6] = v18;
    v24 = *(v21 + 16);

    v24(sub_22DDFE418, v23, v20, v21);
  }

  else
  {
    if (qword_28145AE68 != -1)
    {
      swift_once();
    }

    v25 = sub_22DEC4B44();
    __swift_project_value_buffer(v25, qword_281462270);
    sub_22DE114A8(a1, v13);
    v26 = sub_22DEC4B24();
    v27 = sub_22DEC4E44();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *&v37[0] = v29;
      *v28 = 136315138;
      sub_22DE114A8(v13, v11);
      v30 = sub_22DEC4C74();
      v32 = v31;
      sub_22DE1150C(v13);
      v33 = sub_22DDEDC0C(v30, v32, v37);

      *(v28 + 4) = v33;
      _os_log_impl(&dword_22DDEC000, v26, v27, "No serial numbers to load coverage in action data: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x2318DBF00](v29, -1, -1);
      MEMORY[0x2318DBF00](v28, -1, -1);
    }

    else
    {

      sub_22DE1150C(v13);
    }

    type metadata accessor for NDOErrors();
    sub_22DDFE48C();
    v34 = swift_allocError();
    *v35 = 0xD000000000000031;
    v35[1] = 0x800000022DED1B50;
    swift_storeEnumTagMultiPayload();
    a2(v34, 1);
  }
}

void sub_22DE11238(void *a1, char a2, uint64_t a3, void (*a4)(void *, void))
{
  if (qword_28145AE68 != -1)
  {
    swift_once();
  }

  v7 = sub_22DEC4B44();
  __swift_project_value_buffer(v7, qword_281462270);
  sub_22DE115DC(a1, a2 & 1);
  v8 = sub_22DEC4B24();
  v9 = sub_22DEC4E54();
  sub_22DE115E8(a1, a2 & 1);
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v10 = 136315138;
    sub_22DE115DC(a1, a2 & 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37B90, &unk_22DEC6F80);
    v12 = sub_22DEC4C74();
    v14 = sub_22DDEDC0C(v12, v13, &v16);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_22DDEC000, v8, v9, "Warranty update finished. Result: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x2318DBF00](v11, -1, -1);
    MEMORY[0x2318DBF00](v10, -1, -1);
  }

  if (a2)
  {
    v15 = a1;
  }

  a4(a1, a2 & 1);
  sub_22DE10DB0(a1, a2 & 1);
}

uint64_t NDODownloadWarrantyActionHandler.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 64);

  return v0;
}

uint64_t NDODownloadWarrantyActionHandler.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 64);

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

uint64_t sub_22DE114A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22DE1150C(uint64_t a1)
{
  v2 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_22DE115DC(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

void sub_22DE115E8(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t NDOMappingLoader.__allocating_init(client:retryOnUnauthorized:requestGenerator:mapper:)(__int128 *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  sub_22DDEDA18(a1, v12 + 16);
  *(v12 + 56) = a2;
  *(v12 + 80) = a3;
  *(v12 + 88) = a4;
  *(v12 + 64) = a5;
  *(v12 + 72) = a6;
  return v12;
}

uint64_t NDOMappingLoader.init(client:retryOnUnauthorized:requestGenerator:mapper:)(__int128 *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_22DDEDA18(a1, v6 + 16);
  *(v6 + 56) = a2;
  *(v6 + 80) = a3;
  *(v6 + 88) = a4;
  *(v6 + 64) = a5;
  *(v6 + 72) = a6;
  return v6;
}

uint64_t sub_22DE116C8(int a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v4 = v3;
  v48 = a2;
  v49 = a3;
  LODWORD(v5) = a1;
  v6 = *(*v3 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA37AE8, &qword_22DEC7400);
  v7 = sub_22DEC51B4();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v42[-v10];
  v12 = sub_22DEC4694();
  v46 = *(v12 - 8);
  v47 = v12;
  v13 = *(v46 + 64);
  MEMORY[0x28223BE20]();
  v15 = &v42[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_28145AE68 != -1)
  {
    swift_once();
  }

  v16 = sub_22DEC4B44();
  __swift_project_value_buffer(v16, qword_281462270);
  v17 = sub_22DEC4B24();
  v18 = sub_22DEC4E54();
  v19 = os_log_type_enabled(v17, v18);
  v45 = v6;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v43 = v5;
    v5 = v20;
    v21 = swift_slowAlloc();
    v50 = v21;
    *v5 = 136315138;
    v22 = sub_22DEC5214();
    v44 = v7;
    v24 = v15;
    v25 = v11;
    v26 = v8;
    v27 = sub_22DDEDC0C(v22, v23, &v50);
    v7 = v44;

    *(v5 + 4) = v27;
    v8 = v26;
    v11 = v25;
    v15 = v24;
    _os_log_impl(&dword_22DDEC000, v17, v18, "Loading %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x2318DBF00](v21, -1, -1);
    v28 = v5;
    LOBYTE(v5) = v43;
    MEMORY[0x2318DBF00](v28, -1, -1);
  }

  v29 = *(v4 + 88);
  v30 = v5 & 1;
  v31 = (*(v4 + 80))(v30);
  if (v31)
  {
    v32 = v31;
    v33 = *(v4 + 40);
    v34 = *(v4 + 48);
    v44 = __swift_project_boxed_opaque_existential_1((v4 + 16), v33);
    sub_22DEC4674();
    v35 = swift_allocObject();
    swift_weakInit();
    v36 = swift_allocObject();
    *(v36 + 16) = v45;
    *(v36 + 24) = v35;
    *(v36 + 32) = v32;
    *(v36 + 40) = v30;
    v37 = v49;
    *(v36 + 48) = v48;
    *(v36 + 56) = v37;
    v38 = *(v34 + 8);

    v39 = v32;

    v38(v15, sub_22DE1224C, v36, v33, v34);

    (*(v46 + 8))(v15, v47);
  }

  else
  {
    type metadata accessor for NDOErrors();
    sub_22DDFE48C();
    v41 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    *v11 = v41;
    swift_storeEnumTagMultiPayload();
    v48(v11);
    return (*(v8 + 8))(v11, v7);
  }
}

void sub_22DE11AF8(void *a1, unint64_t a2, void *a3, int a4, uint64_t a5, void *a6, int a7, void (*a8)(void *), uint64_t a9)
{
  v72 = a7;
  LODWORD(v77) = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA37AE8, &qword_22DEC7400);
  v14 = sub_22DEC51B4();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v18 = (v71 - v17);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v73 = v15;
    v75 = v14;
    if (qword_28145AE68 != -1)
    {
      swift_once();
    }

    v74 = a9;
    v21 = sub_22DEC4B44();
    v22 = __swift_project_value_buffer(v21, qword_281462270);
    v23 = v77 & 1;
    sub_22DDEF440(a1, a2, a3, v77 & 1);
    v71[1] = v22;
    v24 = sub_22DEC4B24();
    v25 = sub_22DEC4E54();
    sub_22DDEF48C(a1, a2, a3, v23);
    v26 = os_log_type_enabled(v24, v25);
    v76 = a1;
    if (v26)
    {
      v27 = swift_slowAlloc();
      v71[0] = a8;
      v28 = v27;
      v29 = swift_slowAlloc();
      v30 = a1;
      v31 = a3;
      v32 = a2;
      v33 = v29;
      v82 = v29;
      *v28 = 136315138;
      v78 = v30;
      v79 = v32;
      v80 = v31;
      v81 = v23;
      sub_22DDEF440(v30, v32, v31, v23);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37B78, &qword_22DEC7040);
      v34 = sub_22DEC4C74();
      v36 = v20;
      v37 = sub_22DDEDC0C(v34, v35, &v82);

      *(v28 + 4) = v37;
      v20 = v36;
      _os_log_impl(&dword_22DDEC000, v24, v25, "Load complete with result: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      v38 = v33;
      a2 = v32;
      a3 = v31;
      MEMORY[0x2318DBF00](v38, -1, -1);
      v39 = v28;
      a8 = v71[0];
      MEMORY[0x2318DBF00](v39, -1, -1);
    }

    v40 = v75;
    if (v77)
    {
      v41 = v76;
      *v18 = v76;
      swift_storeEnumTagMultiPayload();
      v42 = v41;
LABEL_22:
      a8(v18);

      (*(v73 + 8))(v18, v40);
      return;
    }

    v62 = v76;
    if (*(v20 + 56))
    {
      objc_opt_self();
      v63 = swift_dynamicCastObjCClass();
      if (v63)
      {
        v64 = v63;
        v65 = v20;
        v66 = a3;
        if ([v64 statusCode] == 401 && (v72 & 1) == 0)
        {
          v67 = sub_22DEC4B24();
          v68 = sub_22DEC4E54();
          if (os_log_type_enabled(v67, v68))
          {
            v69 = swift_slowAlloc();
            *v69 = 0;
            _os_log_impl(&dword_22DDEC000, v67, v68, "Mapping loader retrying once due to 401", v69, 2u);
            MEMORY[0x2318DBF00](v69, -1, -1);
          }

          sub_22DE116C8(1, a8, v74);

          return;
        }

        v20 = v65;
      }
    }

    v70 = *(v20 + 72);
    (*(v20 + 64))(v62, a2);
    goto LABEL_22;
  }

  if (qword_28145AE68 != -1)
  {
    swift_once();
  }

  v43 = sub_22DEC4B44();
  __swift_project_value_buffer(v43, qword_281462270);
  v44 = v77 & 1;
  sub_22DDEF440(a1, a2, a3, v77 & 1);
  v45 = a6;
  v46 = sub_22DEC4B24();
  v47 = sub_22DEC4E44();

  sub_22DDEF48C(a1, a2, a3, v44);
  if (os_log_type_enabled(v46, v47))
  {
    v48 = a3;
    v49 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v82 = v77;
    *v49 = 136315394;
    v50 = v45;
    v51 = [v50 description];
    LODWORD(v75) = v47;
    v52 = v51;
    v53 = sub_22DEC4C34();
    v54 = a2;
    v56 = v55;

    v57 = sub_22DDEDC0C(v53, v56, &v82);

    *(v49 + 4) = v57;
    *(v49 + 12) = 2080;
    v78 = a1;
    v79 = v54;
    v80 = v48;
    v81 = v44;
    sub_22DDEF440(a1, v54, v48, v44);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37B78, &qword_22DEC7040);
    v58 = sub_22DEC4C74();
    v60 = sub_22DDEDC0C(v58, v59, &v82);

    *(v49 + 14) = v60;
    _os_log_impl(&dword_22DDEC000, v46, v75, "Instance deallocated. Dropping request: %s and result %s", v49, 0x16u);
    v61 = v77;
    swift_arrayDestroy();
    MEMORY[0x2318DBF00](v61, -1, -1);
    MEMORY[0x2318DBF00](v49, -1, -1);
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t static NDOResponseMapper.Plist.decode(_:)()
{
  v18[4] = *MEMORY[0x277D85DE8];
  v0 = objc_opt_self();
  v1 = sub_22DEC4794();
  v18[0] = 0;
  v2 = [v0 propertyListWithData:v1 options:0 format:0 error:v18];

  if (v2)
  {
    v3 = v18[0];
    sub_22DEC4EC4();
    swift_unknownObjectRelease();
    sub_22DE1264C();
    if (swift_dynamicCast())
    {
      v4 = v17;
      goto LABEL_11;
    }

    type metadata accessor for NDOErrors();
    sub_22DDFE48C();
    v6 = swift_allocError();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v5 = v18[0];
    v6 = sub_22DEC46E4();
  }

  swift_willThrow();
  if (qword_28145AE68 != -1)
  {
    swift_once();
  }

  v7 = sub_22DEC4B44();
  __swift_project_value_buffer(v7, qword_281462270);
  v8 = v6;
  v9 = sub_22DEC4B24();
  v10 = sub_22DEC4E44();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v6;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_22DDEC000, v9, v10, "Plist parsing failed with error: %@", v11, 0xCu);
    sub_22DE0F970(v12);
    MEMORY[0x2318DBF00](v12, -1, -1);
    MEMORY[0x2318DBF00](v11, -1, -1);
  }

  type metadata accessor for NDOErrors();
  sub_22DDFE48C();
  v4 = swift_allocError();
  swift_storeEnumTagMultiPayload();

LABEL_11:
  v15 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t sub_22DE12578(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void sub_22DE125D8(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

unint64_t sub_22DE1264C()
{
  result = qword_28145AD20;
  if (!qword_28145AD20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28145AD20);
  }

  return result;
}

unint64_t NDOErrors.localizedDescription.getter()
{
  v1 = v0;
  v2 = sub_22DEC4764();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NDOErrors();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22DE12D64(v1, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x2065726F6D206F6ELL;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v15 = *v10;
      v16 = v10[1];
      v24[0] = 0;
      v24[1] = 0xE000000000000000;
      sub_22DEC4F34();

      v17 = 0x800000022DED1DC0;
      v18 = 0xD000000000000022;
      goto LABEL_19;
    case 2:
      v15 = *v10;
      v16 = v10[1];
      v24[0] = 0;
      v24[1] = 0xE000000000000000;
      sub_22DEC4F34();

      strcpy(v24, "invalid data: ");
      HIBYTE(v24[1]) = -18;
      goto LABEL_20;
    case 3:
      v15 = *v10;
      v16 = v10[1];
      v24[0] = 0;
      v24[1] = 0xE000000000000000;
      sub_22DEC4F34();

      v17 = 0x800000022DED1D00;
      v18 = 0xD000000000000014;
      goto LABEL_19;
    case 4:
      v19 = *v10;
      v20 = v10[1];
      strcpy(v24, "parsing: ");
      WORD1(v24[1]) = 0;
      HIDWORD(v24[1]) = -385875968;
      v21 = v20;
      goto LABEL_24;
    case 5:
      v15 = *v10;
      v16 = v10[1];
      v24[0] = 0;
      v24[1] = 0xE000000000000000;
      sub_22DEC4F34();

      v17 = 0x800000022DED1C90;
      v18 = 0xD000000000000015;
      goto LABEL_19;
    case 6:
      v15 = *v10;
      v16 = v10[1];
      v24[0] = 0;
      v24[1] = 0xE000000000000000;
      sub_22DEC4F34();

      v17 = 0x800000022DED1C70;
      v18 = 0xD000000000000017;
LABEL_19:
      v24[0] = v18;
      v24[1] = v17;
LABEL_20:
      MEMORY[0x2318DB350](v15, v16);
      goto LABEL_25;
    case 7:
      v22 = *v10;
      v24[0] = 0;
      v24[1] = 0xE000000000000000;
      sub_22DEC4F34();

      v24[0] = 0xD00000000000001ALL;
      v24[1] = 0x800000022DED1C50;
      v23[1] = v22;
      v19 = sub_22DEC50A4();
LABEL_24:
      MEMORY[0x2318DB350](v19, v21);
LABEL_25:

      result = v24[0];
      break;
    case 8:
    case 25:
      result = 0xD000000000000018;
      break;
    case 9:
      return result;
    case 10:
      result = 0xD000000000000019;
      break;
    case 11:
    case 18:
      result = 0xD00000000000001FLL;
      break;
    case 12:
      result = 0xD000000000000017;
      break;
    case 13:
      result = 0x69206769666E6F63;
      break;
    case 14:
      result = 0xD00000000000001ELL;
      break;
    case 15:
      result = 0xD000000000000015;
      break;
    case 16:
      result = 0xD000000000000024;
      break;
    case 17:
    case 26:
      result = 0xD000000000000025;
      break;
    case 19:
      result = 0xD000000000000029;
      break;
    case 20:
      result = 0xD000000000000016;
      break;
    case 21:
      result = 0xD00000000000002DLL;
      break;
    case 22:
      result = 0xD000000000000017;
      break;
    case 23:
      result = 0xD000000000000013;
      break;
    case 24:
      result = 0xD000000000000026;
      break;
    case 27:
      result = 0xD000000000000023;
      break;
    case 28:
      result = 0xD00000000000001ALL;
      break;
    case 29:
      result = 0x206E776F6E6B6E75;
      break;
    case 30:
      result = 0xD000000000000012;
      break;
    default:
      (*(v3 + 32))(v6, v10, v2);
      v24[0] = 0;
      v24[1] = 0xE000000000000000;
      sub_22DEC4F34();

      v24[0] = 0xD000000000000014;
      v24[1] = 0x800000022DED1DF0;
      v13 = sub_22DEC4714();
      MEMORY[0x2318DB350](v13);

      v14 = v24[0];
      (*(v3 + 8))(v6, v2);
      result = v14;
      break;
  }

  return result;
}

uint64_t type metadata accessor for NDOErrors()
{
  result = qword_28145AE50;
  if (!qword_28145AE50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22DE12D64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NDOErrors();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s6NDOAPI9NDOErrorsO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v60 = a2;
  v3 = sub_22DEC4764();
  v57 = *(v3 - 8);
  v58 = v3;
  v4 = *(v57 + 64);
  MEMORY[0x28223BE20](v3);
  v55 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for NDOErrors();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v56 = (&v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x28223BE20](v8);
  v12 = (&v55 - v11);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = (&v55 - v14);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = (&v55 - v17);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = (&v55 - v20);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = (&v55 - v23);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = (&v55 - v26);
  MEMORY[0x28223BE20](v25);
  v29 = &v55 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37B98, &unk_22DEC7150);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v30 - 8);
  v34 = &v55 + *(v32 + 56) - v33;
  v35 = a1;
  v36 = &v55 - v33;
  sub_22DE12D64(v35, &v55 - v33);
  v59 = v34;
  sub_22DE12D64(v60, v34);
  v60 = v36;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22DE12D64(v60, v27);
      v45 = *v27;
      v44 = v27[1];
      v46 = v59;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_53;
      }

      if (v45 == *v46 && v44 == v46[1])
      {
        goto LABEL_47;
      }

      goto LABEL_45;
    case 2u:
      sub_22DE12D64(v60, v24);
      v39 = *v24;
      v38 = v24[1];
      v40 = v59;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_53;
      }

      goto LABEL_41;
    case 3u:
      sub_22DE12D64(v60, v21);
      v39 = *v21;
      v38 = v21[1];
      v40 = v59;
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_53;
      }

      goto LABEL_41;
    case 4u:
      sub_22DE12D64(v60, v18);
      v39 = *v18;
      v38 = v18[1];
      v40 = v59;
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_53;
      }

      goto LABEL_41;
    case 5u:
      sub_22DE12D64(v60, v15);
      v39 = *v15;
      v38 = v15[1];
      v40 = v59;
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        goto LABEL_41;
      }

      goto LABEL_53;
    case 6u:
      sub_22DE12D64(v60, v12);
      v39 = *v12;
      v38 = v12[1];
      v40 = v59;
      if (swift_getEnumCaseMultiPayload() != 6)
      {
LABEL_53:

        goto LABEL_54;
      }

LABEL_41:
      if (v39 == *v40 && v38 == v40[1])
      {
LABEL_47:
      }

      else
      {
LABEL_45:
        v49 = sub_22DEC50E4();

        if ((v49 & 1) == 0)
        {
          sub_22DE13654(v60);
          goto LABEL_55;
        }
      }

LABEL_75:
      sub_22DE13654(v60);
      v43 = 1;
      break;
    case 7u:
      v41 = v56;
      sub_22DE12D64(v60, v56);
      v42 = v59;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_54;
      }

      v43 = *v41 == *v42;
      goto LABEL_78;
    case 8u:
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        goto LABEL_75;
      }

      goto LABEL_54;
    case 9u:
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        goto LABEL_75;
      }

      goto LABEL_54;
    case 0xAu:
      if (swift_getEnumCaseMultiPayload() == 10)
      {
        goto LABEL_75;
      }

      goto LABEL_54;
    case 0xBu:
      if (swift_getEnumCaseMultiPayload() == 11)
      {
        goto LABEL_75;
      }

      goto LABEL_54;
    case 0xCu:
      if (swift_getEnumCaseMultiPayload() == 12)
      {
        goto LABEL_75;
      }

      goto LABEL_54;
    case 0xDu:
      if (swift_getEnumCaseMultiPayload() == 13)
      {
        goto LABEL_75;
      }

      goto LABEL_54;
    case 0xEu:
      if (swift_getEnumCaseMultiPayload() == 14)
      {
        goto LABEL_75;
      }

      goto LABEL_54;
    case 0xFu:
      if (swift_getEnumCaseMultiPayload() == 15)
      {
        goto LABEL_75;
      }

      goto LABEL_54;
    case 0x10u:
      if (swift_getEnumCaseMultiPayload() == 16)
      {
        goto LABEL_75;
      }

      goto LABEL_54;
    case 0x11u:
      if (swift_getEnumCaseMultiPayload() == 17)
      {
        goto LABEL_75;
      }

      goto LABEL_54;
    case 0x12u:
      if (swift_getEnumCaseMultiPayload() == 18)
      {
        goto LABEL_75;
      }

      goto LABEL_54;
    case 0x13u:
      if (swift_getEnumCaseMultiPayload() == 19)
      {
        goto LABEL_75;
      }

      goto LABEL_54;
    case 0x14u:
      if (swift_getEnumCaseMultiPayload() == 20)
      {
        goto LABEL_75;
      }

      goto LABEL_54;
    case 0x15u:
      if (swift_getEnumCaseMultiPayload() == 21)
      {
        goto LABEL_75;
      }

      goto LABEL_54;
    case 0x16u:
      if (swift_getEnumCaseMultiPayload() == 22)
      {
        goto LABEL_75;
      }

      goto LABEL_54;
    case 0x17u:
      if (swift_getEnumCaseMultiPayload() == 23)
      {
        goto LABEL_75;
      }

      goto LABEL_54;
    case 0x18u:
      if (swift_getEnumCaseMultiPayload() == 24)
      {
        goto LABEL_75;
      }

      goto LABEL_54;
    case 0x19u:
      if (swift_getEnumCaseMultiPayload() == 25)
      {
        goto LABEL_75;
      }

      goto LABEL_54;
    case 0x1Au:
      if (swift_getEnumCaseMultiPayload() == 26)
      {
        goto LABEL_75;
      }

      goto LABEL_54;
    case 0x1Bu:
      if (swift_getEnumCaseMultiPayload() == 27)
      {
        goto LABEL_75;
      }

      goto LABEL_54;
    case 0x1Cu:
      if (swift_getEnumCaseMultiPayload() == 28)
      {
        goto LABEL_75;
      }

      goto LABEL_54;
    case 0x1Du:
      if (swift_getEnumCaseMultiPayload() == 29)
      {
        goto LABEL_75;
      }

      goto LABEL_54;
    case 0x1Eu:
      if (swift_getEnumCaseMultiPayload() == 30)
      {
        goto LABEL_75;
      }

      goto LABEL_54;
    default:
      sub_22DE12D64(v60, v29);
      v37 = v59;
      if (swift_getEnumCaseMultiPayload())
      {
        (*(v57 + 8))(v29, v58);
LABEL_54:
        sub_22DE135EC(v60);
LABEL_55:
        v43 = 0;
      }

      else
      {
        v52 = v57;
        v51 = v58;
        v53 = v55;
        (*(v57 + 32))(v55, v37, v58);
        v43 = sub_22DEC4734();
        v54 = *(v52 + 8);
        v54(v53, v51);
        v54(v29, v51);
LABEL_78:
        sub_22DE13654(v60);
      }

      break;
  }

  return v43 & 1;
}

uint64_t sub_22DE13570()
{
  result = sub_22DEC4764();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22DE135EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37B98, &unk_22DEC7150);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22DE13654(uint64_t a1)
{
  v2 = type metadata accessor for NDOErrors();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t NDOLoaderWithFallback.__allocating_init(primary:fallback:)(__int128 *a1, __int128 *a2)
{
  v4 = swift_allocObject();
  sub_22DDEDA18(a1, v4 + 16);
  sub_22DDEDA18(a2, v4 + 56);
  return v4;
}

uint64_t NDOLoaderWithFallback.init(primary:fallback:)(__int128 *a1, __int128 *a2)
{
  sub_22DDEDA18(a1, v2 + 16);
  sub_22DDEDA18(a2, v2 + 56);
  return v2;
}

uint64_t sub_22DE13744(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = v2[5];
  v7 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v6);
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  v9[2] = *(v5 + 80);
  v9[3] = v8;
  v9[4] = a1;
  v9[5] = a2;
  v10 = *(v7 + 16);

  v10(sub_22DE13C88, v9, v6, v7);
}

void sub_22DE1385C(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA37AE8, &qword_22DEC7400);
  v9 = sub_22DEC51B4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = (&v41 - v12);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    (*(v10 + 16))(v13, a1, v9);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v16 = *v13;
      if (qword_28145AE68 != -1)
      {
        swift_once();
      }

      v17 = sub_22DEC4B44();
      __swift_project_value_buffer(v17, qword_281462270);
      v18 = v16;
      v19 = sub_22DEC4B24();
      v20 = sub_22DEC4E54();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v41 = a3;
        v23 = v22;
        v24 = swift_slowAlloc();
        v42 = a4;
        v43 = v24;
        v25 = v24;
        *v21 = 136315394;
        v26 = sub_22DEC5214();
        v28 = sub_22DDEDC0C(v26, v27, &v43);

        *(v21 + 4) = v28;
        *(v21 + 12) = 2112;
        v29 = v16;
        v30 = _swift_stdlib_bridgeErrorToNSError();
        *(v21 + 14) = v30;
        *v23 = v30;
        _os_log_impl(&dword_22DDEC000, v19, v20, "Falling back to secondary %s loader, primary failed with error: %@", v21, 0x16u);
        sub_22DE0F970(v23);
        v31 = v23;
        a3 = v41;
        MEMORY[0x2318DBF00](v31, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v25);
        v32 = v25;
        a4 = v42;
        MEMORY[0x2318DBF00](v32, -1, -1);
        MEMORY[0x2318DBF00](v21, -1, -1);
      }

      v33 = v15[10];
      v34 = v15[11];
      __swift_project_boxed_opaque_existential_1(v15 + 7, v33);
      v35 = swift_allocObject();
      v35[2] = a5;
      v35[3] = a3;
      v35[4] = a4;
      v36 = *(v34 + 16);

      v36(sub_22DE13DCC, v35, v33, v34);
    }

    else
    {
      (*(v10 + 8))(v13, v9);
      a3(a1);
    }
  }

  else
  {
    if (qword_28145AE68 != -1)
    {
      swift_once();
    }

    v37 = sub_22DEC4B44();
    __swift_project_value_buffer(v37, qword_281462270);
    v38 = sub_22DEC4B24();
    v39 = sub_22DEC4E44();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_22DDEC000, v38, v39, "Instance is deallocated. Not handling results", v40, 2u);
      MEMORY[0x2318DBF00](v40, -1, -1);
    }
  }
}

uint64_t NDOLoaderWithFallback.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  return v0;
}

uint64_t NDOLoaderWithFallback.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

uint64_t sub_22DE13DCC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return v1();
}

uint64_t sub_22DE13DF4(void (*a1)(void))
{
  a1();

  return sub_22DEC5214();
}

uint64_t NDOFollowUpClient.hashValue.getter()
{
  v1 = *v0;
  sub_22DEC5184();
  MEMORY[0x2318DB840](v1);
  return sub_22DEC51A4();
}

uint64_t NDODismissFollowUpActionHandler.__allocating_init(clearFollowUp:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t NDODismissFollowUpActionHandler.init(clearFollowUp:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

void sub_22DE13F08(uint64_t a1, void (*a2)(void *, uint64_t), uint64_t a3)
{
  v31 = a3;
  v32 = a2;
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RemoveFollowUpData(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - v9;
  if (qword_28145AE68 != -1)
  {
    swift_once();
  }

  v11 = sub_22DEC4B44();
  __swift_project_value_buffer(v11, qword_281462270);
  sub_22DE143B8(a1, v10);
  v12 = sub_22DEC4B24();
  v13 = sub_22DEC4E54();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v33[0] = v15;
    *v14 = 136315138;
    sub_22DE143B8(v10, v8);
    v16 = sub_22DEC4C74();
    v18 = v17;
    sub_22DE1441C(v10);
    v19 = sub_22DDEDC0C(v16, v18, v33);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_22DDEC000, v12, v13, "Handling dismiss follow up action %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x2318DBF00](v15, -1, -1);
    MEMORY[0x2318DBF00](v14, -1, -1);
  }

  else
  {

    sub_22DE1441C(v10);
  }

  v20 = (a1 + *(v4 + 20));
  v21 = v20[1];
  if (v21)
  {
    v22 = *v20;
    v24 = *(v30 + 16);
    v23 = *(v30 + 24);
    LOBYTE(v33[0]) = (*(a1 + *(v4 + 24)) & 1) == 0;

    v24(v22, v21, v33);

    v32(0, 0);
  }

  else
  {
    v25 = sub_22DEC4B24();
    v26 = sub_22DEC4E44();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_22DDEC000, v25, v26, "Not handling remove follow up action due to missing follow up ID", v27, 2u);
      MEMORY[0x2318DBF00](v27, -1, -1);
    }

    type metadata accessor for NDOErrors();
    sub_22DDFE48C();
    v28 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v32(v28, 1);
  }
}

uint64_t NDODismissFollowUpActionHandler.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t NDODismissFollowUpActionHandler.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_22DE143B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RemoveFollowUpData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22DE1441C(uint64_t a1)
{
  v2 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RemoveFollowUpData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22DE1447C()
{
  result = qword_27DA37BA0;
  if (!qword_27DA37BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA37BA0);
  }

  return result;
}

uint64_t sub_22DE14554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  result = 0x41746E756F636361;
  if (a1 == 0x41746E756F636361 && a2 == 0xEC00000064656464 || (result = sub_22DEC50E4(), (result & 1) != 0))
  {
    v7 = 1;
  }

  else
  {
    result = 0x65676175676E616CLL;
    if (a1 == 0x65676175676E616CLL && a2 == 0xEF6465676E616843 || (result = sub_22DEC50E4(), (result & 1) != 0))
    {
      v7 = 5;
    }

    else if (a1 == 1953460066 && a2 == 0xE400000000000000 || (result = sub_22DEC50E4(), (result & 1) != 0))
    {
      v7 = 0;
    }

    else
    {
      result = 0x6163696669746F6ELL;
      if (a1 == 0x6163696669746F6ELL && a2 == 0xEC0000006E6F6974 || (result = sub_22DEC50E4(), (result & 1) != 0))
      {
        v7 = 6;
      }

      else
      {
        result = 0x656C756465686373;
        if (a1 == 0x656C756465686373 && a2 == 0xE900000000000064 || (result = sub_22DEC50E4(), (result & 1) != 0))
        {
          v7 = 4;
        }

        else
        {
          result = 0x6961506863746177;
          if (a1 == 0x6961506863746177 && a2 == 0xEC000000676E6972 || (result = sub_22DEC50E4(), (result & 1) != 0) || (result = 0x706E556863746177, a1 == 0x706E556863746177) && a2 == 0xEE00676E69726961 || (result = sub_22DEC50E4(), (result & 1) != 0) || a1 == 0xD000000000000010 && 0x800000022DED20A0 == a2 || (result = sub_22DEC50E4(), (result & 1) != 0))
          {
            v7 = 2;
          }

          else
          {
            result = 0x6168436863746177;
            v7 = 3;
            if (a1 != 0x6168436863746177 || a2 != 0xEC0000006465676ELL)
            {
              result = sub_22DEC50E4();
              if (result)
              {
                v7 = 3;
              }

              else
              {
                v7 = 7;
              }
            }
          }
        }
      }
    }
  }

  *a3 = v7;
  return result;
}

__n128 sub_22DE1480C(__int128 *a1, uint64_t a2, uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v15 = a1[1];
  v16 = *a1;
  v9 = *(a1 + 4);
  if (qword_28145AE68 != -1)
  {
    swift_once();
  }

  v10 = sub_22DEC4B44();
  __swift_project_value_buffer(v10, qword_281462270);
  v11 = sub_22DEC4B24();
  v12 = sub_22DEC4E54();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_22DDEC000, v11, v12, "RemoteCheckInHandler.checkIn", v13, 2u);
    MEMORY[0x2318DBF00](v13, -1, -1);
  }

  v17[0] = v16;
  v17[1] = v15;
  v18 = v9;
  sub_22DE14950(v17, a2, a3, 0, a4, a5);
  return result;
}

void sub_22DE14950(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void (*a5)(void **), uint64_t a6)
{
  v177 = a6;
  v176 = a5;
  v157 = a4;
  v184 = a3;
  v182 = a2;
  v160 = sub_22DEC4694();
  v159 = *(v160 - 8);
  v8 = *(v159 + 64);
  MEMORY[0x28223BE20](v160);
  v158 = &v156[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v170 = sub_22DEC4904();
  v169 = *(v170 - 8);
  v10 = *(v169 + 64);
  v11 = MEMORY[0x28223BE20](v170);
  v167 = &v156[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v165 = &v156[-v13];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37BA8, &unk_22DEC7320);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v163 = &v156[-v16];
  v178 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInRequest(0);
  v162 = *(v178 - 8);
  v17 = *(v162 + 64);
  v18 = MEMORY[0x28223BE20](v178);
  v161 = &v156[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v183 = &v156[-v20];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A38, &unk_22DEC6570);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v175 = &v156[-v23];
  v174 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  v173 = *(v174 - 8);
  v24 = *(v173 + 64);
  MEMORY[0x28223BE20](v174);
  v172 = &v156[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A40, &unk_22DEC7330);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v29 = &v156[-v28];
  v171 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody(0);
  v30 = *(v171 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v171);
  v33 = &v156[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v34 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIRequest(0);
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x28223BE20](v34);
  v166 = &v156[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v38 = MEMORY[0x28223BE20](v36);
  v164 = &v156[-v39];
  MEMORY[0x28223BE20](v38);
  v41 = &v156[-v40];
  v42 = *(a1 + 16);
  *v190 = *a1;
  *&v190[16] = v42;
  v191 = *(a1 + 32);
  v43 = objc_allocWithZone(MEMORY[0x277CCAB70]);
  v180 = v6;
  v44 = sub_22DEC4724();
  v45 = [v43 initWithURL_];

  v46 = v45;
  v47 = sub_22DEC4C04();
  [v46 setHTTPMethod_];

  v48 = sub_22DEC4C04();
  v49 = sub_22DEC4C04();
  [v46 addValue:v48 forHTTPHeaderField:v49];

  v50 = sub_22DEC4C04();
  v51 = sub_22DEC4C04();
  [v46 addValue:v50 forHTTPHeaderField:v51];

  v185 = v46;
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v168 = v34;
  v52 = *(v34 + 20);
  if (qword_28145D120 != -1)
  {
    swift_once();
  }

  *&v41[v52] = qword_28145D128;
  v181 = v41;
  v54 = *(v180 + OBJC_IVAR____TtC6NDOAPI23NDORemoteCheckInHandler_payloadProvider + 24);
  v53 = *(v180 + OBJC_IVAR____TtC6NDOAPI23NDORemoteCheckInHandler_payloadProvider + 32);
  v179 = (v180 + OBJC_IVAR____TtC6NDOAPI23NDORemoteCheckInHandler_payloadProvider);
  __swift_project_boxed_opaque_existential_1((v180 + OBJC_IVAR____TtC6NDOAPI23NDORemoteCheckInHandler_payloadProvider), v54);
  v55 = *(v53 + 24);

  v56 = v54;
  v57 = v181;
  v55(v56, v53);
  v58 = *(v57 + v52);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v60 = *(v57 + v52);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v61 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIRequest._StorageClass(0);
    v62 = *(v61 + 48);
    v63 = *(v61 + 52);
    swift_allocObject();
    v60 = sub_22DE45FE4(v60);
    *(v57 + v52) = v60;
  }

  sub_22DE17628(v33, v29, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
  (*(v30 + 56))(v29, 0, 1, v171);
  v64 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CIRequestP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__common;
  swift_beginAccess();
  sub_22DDF0208(v29, v60 + v64, &qword_27DA37A40, &unk_22DEC7330);
  swift_endAccess();
  v65 = v179[3];
  v66 = v179[4];
  __swift_project_boxed_opaque_existential_1(v179, v65);
  v67 = v172;
  (*(v66 + 16))(v65, v66);
  v68 = *(v57 + v52);
  v69 = swift_isUniquelyReferenced_nonNull_native();
  v70 = *(v57 + v52);
  v71 = v183;
  if ((v69 & 1) == 0)
  {
    v72 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIRequest._StorageClass(0);
    v73 = *(v72 + 48);
    v74 = *(v72 + 52);
    swift_allocObject();
    v70 = sub_22DE45FE4(v70);
    *(v57 + v52) = v70;
  }

  v75 = v178;
  v76 = v175;
  sub_22DE17628(v67, v175, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  (*(v173 + 56))(v76, 0, 1, v174);
  v77 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CIRequestP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__meta;
  swift_beginAccess();
  sub_22DDF0208(v76, v70 + v77, &qword_27DA37A38, &unk_22DEC6570);
  swift_endAccess();
  *v71 = sub_22DE0501C(MEMORY[0x277D84F90]);
  v78 = v71 + v75[5];
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v79 = v75[6];
  *(v71 + v79) = 7;
  v80 = (v71 + v75[7]);
  *v80 = 0;
  v80[1] = 0;
  v81 = (v71 + v75[8]);
  *v81 = 0;
  v81[1] = 0;
  v82 = *v190;
  if (*v190 != 1)
  {
    v83 = v191;
    v192 = *&v190[8];
    if (*v190)
    {

      *v71 = v82;
    }

    else
    {
      if (qword_28145AE68 != -1)
      {
        swift_once();
      }

      v84 = sub_22DEC4B44();
      __swift_project_value_buffer(v84, qword_281462270);
      v85 = sub_22DEC4B24();
      v86 = sub_22DEC4E54();
      if (os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        *v87 = 0;
        _os_log_impl(&dword_22DDEC000, v85, v86, "No passthrough data for checkIn request", v87, 2u);
        v88 = v87;
        v75 = v178;
        MEMORY[0x2318DBF00](v88, -1, -1);
      }
    }

    v193 = v192;
    if (*(&v192 + 1))
    {
      *v80 = v192;
      sub_22DDF0028(&v193, &v186, &qword_27DA37BB8, &qword_22DEC7348);
      v89 = sub_22DEC4C04();
      v90 = sub_22DEC4C04();
      [v185 addValue:v89 forHTTPHeaderField:v90];
    }

    else
    {
      if (qword_28145AE68 != -1)
      {
        swift_once();
      }

      v91 = sub_22DEC4B44();
      __swift_project_value_buffer(v91, qword_281462270);
      v90 = sub_22DEC4B24();
      v92 = sub_22DEC4E54();
      if (os_log_type_enabled(v90, v92))
      {
        v93 = swift_slowAlloc();
        *v93 = 0;
        _os_log_impl(&dword_22DDEC000, v90, v92, "No notificationId for checkIn request", v93, 2u);
        v94 = v93;
        v75 = v178;
        MEMORY[0x2318DBF00](v94, -1, -1);
      }
    }

    if (v83)
    {
      v95 = sub_22DEC4C04();
      v96 = sub_22DEC4C04();
      [v185 addValue:v95 forHTTPHeaderField:v96];
    }

    else
    {
      if (qword_28145AE68 != -1)
      {
        swift_once();
      }

      v97 = sub_22DEC4B44();
      __swift_project_value_buffer(v97, qword_281462270);
      v96 = sub_22DEC4B24();
      v98 = sub_22DEC4E54();
      if (os_log_type_enabled(v96, v98))
      {
        v99 = swift_slowAlloc();
        *v99 = 0;
        _os_log_impl(&dword_22DDEC000, v96, v98, "No notificatioin context for checkIn request", v99, 2u);
        MEMORY[0x2318DBF00](v99, -1, -1);
      }
    }
  }

  v100 = v184;
  sub_22DE14554(v182, v184, &v186);
  if (v186 == 7)
  {
    if (qword_28145AE68 != -1)
    {
      swift_once();
    }

    v101 = sub_22DEC4B44();
    __swift_project_value_buffer(v101, qword_281462270);

    v102 = sub_22DEC4B24();
    v103 = sub_22DEC4E44();

    if (os_log_type_enabled(v102, v103))
    {
      v104 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      v186 = v105;
      *v104 = 136315138;
      *(v104 + 4) = sub_22DDEDC0C(v182, v100, &v186);
      _os_log_impl(&dword_22DDEC000, v102, v103, "No valid mapping for %s trigger, not checking in", v104, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v105);
      MEMORY[0x2318DBF00](v105, -1, -1);
      MEMORY[0x2318DBF00](v104, -1, -1);
    }

    type metadata accessor for NDOErrors();
    sub_22DE17518(&qword_28145AE60, type metadata accessor for NDOErrors);
    v106 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v187 = 0;
    v188 = 0;
    v186 = v106;
    v189 = 1;
    v176(&v186);
    sub_22DE17504(v186, v187, v188, v189);

    sub_22DE175C8(v71, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInRequest);
    sub_22DE175C8(v57, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIRequest);
  }

  else
  {
    *(v71 + v79) = v186;
    v107 = v161;
    sub_22DE17560(v71, v161, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInRequest);
    v108 = *(v57 + v52);
    v109 = swift_isUniquelyReferenced_nonNull_native();
    v110 = *(v57 + v52);
    if ((v109 & 1) == 0)
    {
      v111 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIRequest._StorageClass(0);
      v112 = *(v111 + 48);
      v113 = *(v111 + 52);
      swift_allocObject();
      v110 = sub_22DE45FE4(v110);
      *(v57 + v52) = v110;
    }

    v114 = v107;
    v115 = v163;
    sub_22DE17628(v114, v163, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInRequest);
    (*(v162 + 56))(v115, 0, 1, v75);
    v116 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CIRequestP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__data;
    swift_beginAccess();
    sub_22DDF0208(v115, v110 + v116, &qword_27DA37BA8, &unk_22DEC7320);
    swift_endAccess();
    if (qword_28145AE68 != -1)
    {
      swift_once();
    }

    v117 = sub_22DEC4B44();
    v118 = __swift_project_value_buffer(v117, qword_281462270);
    v119 = sub_22DEC4B24();
    v120 = sub_22DEC4E54();
    v121 = os_log_type_enabled(v119, v120);
    v178 = v118;
    if (v121)
    {
      v122 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      v186 = v123;
      *v122 = 136315138;
      swift_beginAccess();
      sub_22DE17560(v57, v164, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIRequest);
      sub_22DEC48F4();
      sub_22DE17518(&qword_28145CFD0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIRequest);
      v124 = sub_22DEC49F4();
      v126 = v125;
      (*(v169 + 8))(v165, v170);
      sub_22DE175C8(v164, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIRequest);
      v127 = sub_22DDEDC0C(v124, v126, &v186);

      *(v122 + 4) = v127;
      _os_log_impl(&dword_22DDEC000, v119, v120, "CheckIn request body: %s", v122, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v123);
      MEMORY[0x2318DBF00](v123, -1, -1);
      MEMORY[0x2318DBF00](v122, -1, -1);

      v71 = v183;
      v100 = v184;
    }

    else
    {
    }

    v128 = v185;
    v129 = sub_22DEC4B24();
    v130 = sub_22DEC4E54();

    if (os_log_type_enabled(v129, v130))
    {
      v131 = swift_slowAlloc();
      v132 = swift_slowAlloc();
      v186 = v132;
      *v131 = 136315138;
      v133 = [v128 allHTTPHeaderFields];
      if (v133)
      {
        v134 = v133;
        sub_22DEC4BA4();
      }

      else
      {
        sub_22DE0501C(MEMORY[0x277D84F90]);
      }

      v135 = v167;
      v136 = sub_22DEC4BB4();
      v138 = v137;

      v139 = sub_22DDEDC0C(v136, v138, &v186);

      *(v131 + 4) = v139;
      _os_log_impl(&dword_22DDEC000, v129, v130, "CheckIn request headers: %s", v131, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v132);
      MEMORY[0x2318DBF00](v132, -1, -1);
      MEMORY[0x2318DBF00](v131, -1, -1);

      v100 = v184;
      v71 = v183;
      v57 = v181;
    }

    else
    {

      v135 = v167;
    }

    swift_beginAccess();
    v140 = v166;
    sub_22DE17560(v57, v166, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIRequest);
    sub_22DEC48F4();
    sub_22DE17518(&qword_28145CFD0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIRequest);
    v141 = sub_22DEC4A04();
    v143 = v142;
    (*(v169 + 8))(v135, v170);
    sub_22DE175C8(v140, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIRequest);
    v144 = sub_22DEC4794();
    sub_22DDEEF50(v141, v143);
    [v128 setHTTPBody_];

    v145 = v179[3];
    v146 = v179[4];
    __swift_project_boxed_opaque_existential_1(v179, v145);
    LOBYTE(v144) = v157 & 1;
    (*(v146 + 8))(v128, v157 & 1, v145, v146);
    sub_22DE175C8(v71, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInRequest);
    sub_22DE175C8(v57, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIRequest);
    v147 = *(v180 + OBJC_IVAR____TtC6NDOAPI23NDORemoteCheckInHandler_client + 24);
    v148 = *(v180 + OBJC_IVAR____TtC6NDOAPI23NDORemoteCheckInHandler_client + 32);
    __swift_project_boxed_opaque_existential_1((v180 + OBJC_IVAR____TtC6NDOAPI23NDORemoteCheckInHandler_client), v147);
    v149 = v158;
    sub_22DEC4674();
    v150 = swift_allocObject();
    swift_weakInit();
    v151 = swift_allocObject();
    *(v151 + 16) = v150;
    *(v151 + 24) = v144;
    v152 = *&v190[16];
    *(v151 + 32) = *v190;
    *(v151 + 48) = v152;
    v153 = v182;
    *(v151 + 64) = v191;
    *(v151 + 72) = v153;
    v154 = v176;
    *(v151 + 80) = v100;
    *(v151 + 88) = v154;
    *(v151 + 96) = v177;
    v185 = v128;
    v155 = *(v148 + 8);

    sub_22DDF0028(v190, &v186, &qword_27DA37BB0, &qword_22DEC7340);

    v155(v149, sub_22DE17514, v151, v147, v148);

    (*(v159 + 8))(v149, v160);
  }
}

void sub_22DE16110(void *a1, unint64_t a2, void *a3, char a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(__int128 *), uint64_t a11)
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return;
  }

  v18 = a10;
  if (a4)
  {
    if (qword_28145AE68 != -1)
    {
      swift_once();
    }

    v19 = sub_22DEC4B44();
    __swift_project_value_buffer(v19, qword_281462270);
    v20 = sub_22DEC4B24();
    v21 = sub_22DEC4E44();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_22DDEC000, v20, v21, "RemoteCheckInHandler.checkIn request failure", v22, 2u);
      MEMORY[0x2318DBF00](v22, -1, -1);
    }

    v49 = 0;
    v48 = a1;
    v50 = 1;
    sub_22DDEF440(a1, a2, a3, 1);
    a10(&v48);
LABEL_8:

    v24 = *(&v48 + 1);
    v23 = v48;
    v25 = v49;
    v26 = v50;
LABEL_24:
    sub_22DE17504(v23, v24, v25, v26);
    return;
  }

  objc_opt_self();
  v27 = swift_dynamicCastObjCClass();
  if (!v27)
  {
LABEL_19:
    if (qword_28145AE68 != -1)
    {
      swift_once();
    }

    v34 = sub_22DEC4B44();
    __swift_project_value_buffer(v34, qword_281462270);
    v35 = sub_22DEC4B24();
    v36 = sub_22DEC4E54();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_22DDEC000, v35, v36, "RemoteCheckInHandler.checkIn request success", v37, 2u);
      MEMORY[0x2318DBF00](v37, -1, -1);
    }

    type metadata accessor for NDORemoteCheckInHandler();
    sub_22DE16688(a1, a2, &v48);
    v45 = v48;
    v46 = v49;
    v47 = v50;
    v18(&v45);

    v24 = *(&v45 + 1);
    v23 = v45;
    v25 = v46;
    v26 = v47;
    goto LABEL_24;
  }

  v28 = v27;
  v29 = a3;
  if ([v28 statusCode] - 300 > 0xFFFFFFFFFFFFFF9BLL)
  {

    v18 = a10;
    goto LABEL_19;
  }

  if ([v28 statusCode] != 401 || (a6 & 1) != 0)
  {
    if (qword_28145AE68 != -1)
    {
      swift_once();
    }

    v38 = sub_22DEC4B44();
    __swift_project_value_buffer(v38, qword_281462270);
    v39 = v29;
    v40 = sub_22DEC4B24();
    v41 = sub_22DEC4E44();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 134217984;
      *(v42 + 4) = [v28 statusCode];

      _os_log_impl(&dword_22DDEC000, v40, v41, "RemoteCheckInHandler.checkIn request failed with status code: %ld", v42, 0xCu);
      MEMORY[0x2318DBF00](v42, -1, -1);
    }

    else
    {

      v40 = v39;
    }

    type metadata accessor for NDOErrors();
    sub_22DE17518(&qword_28145AE60, type metadata accessor for NDOErrors);
    v43 = swift_allocError();
    *v44 = [v28 statusCode];
    swift_storeEnumTagMultiPayload();
    v49 = 0;
    v48 = v43;
    v50 = 1;
    a10(&v48);

    goto LABEL_8;
  }

  if (qword_28145AE68 != -1)
  {
    swift_once();
  }

  v30 = sub_22DEC4B44();
  __swift_project_value_buffer(v30, qword_281462270);
  v31 = sub_22DEC4B24();
  v32 = sub_22DEC4E54();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_22DDEC000, v31, v32, "RemoteCheckInHandler.checkIn retrying once due to 401", v33, 2u);
    MEMORY[0x2318DBF00](v33, -1, -1);
  }

  sub_22DE14950(a7, a8, a9, 1, a10, a11);
}

void sub_22DE16688(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v83 = a2;
  v75 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37BC0, &qword_22DEC7350);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v80 = &v70 - v6;
  v77 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action(0);
  v7 = *(v77 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v77);
  v79 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v70 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37BC8, qword_22DEC7358);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v81 = &v70 - v15;
  v78 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInResponse(0);
  v73 = *(v78 - 8);
  v16 = *(v73 + 64);
  MEMORY[0x28223BE20](v78);
  v72 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIResponse(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_22DEC48E4();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v70 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v70 - v28;
  sub_22DEC48D4();
  sub_22DEC48C4();
  (*(v23 + 16))(v27, v29, v22);
  sub_22DDEEEE8(a1, v83);
  sub_22DE17518(&qword_28145CB78, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIResponse);
  v74 = v21;
  sub_22DEC4A14();
  v40 = v72;
  v71 = v29;
  v82 = v23;
  v83 = v22;
  v41 = v81;
  sub_22DDF0028(&v74[*(v18 + 24)], v81, &qword_27DA37BC8, qword_22DEC7358);
  v42 = *(v73 + 48);
  v43 = v78;
  v44 = v42(v41, 1, v78);
  if (v44 == 1)
  {
    v45 = MEMORY[0x277D84F90];
    *v40 = MEMORY[0x277D84F90];
    v40[1] = sub_22DE05B84(v45);
    v46 = v40 + *(v43 + 24);
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    v47 = v40 + *(v43 + 28);
    *v47 = 0;
    v47[8] = 1;
    v48 = v42(v41, 1, v43);
    v50 = v82;
    v49 = v83;
    if (v48 != 1)
    {
      sub_22DDEF284(v41, &qword_27DA37BC8, qword_22DEC7358);
    }
  }

  else
  {
    sub_22DE17628(v41, v40, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInResponse);
    v50 = v82;
    v49 = v83;
  }

  v51 = *v40;

  sub_22DE175C8(v40, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInResponse);
  v52 = v51[2];
  if (v52)
  {
    v53 = 0;
    v81 = MEMORY[0x277D84F90];
    v54 = v77;
    v76 = v7;
    v78 = v51;
    while (v53 < v51[2])
    {
      v55 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v56 = *(v7 + 72);
      sub_22DE17560(v51 + v55 + v56 * v53, v12, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action);
      if (v12[*(v54 + 28)] == 7)
      {
        sub_22DE175C8(v12, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action);
      }

      else
      {
        v57 = v52;
        v58 = v80;
        sub_22DDF0028(v12, v80, &qword_27DA37BC0, &qword_22DEC7350);
        v59 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData(0);
        if ((*(*(v59 - 8) + 48))(v58, 1, v59) == 1)
        {
          sub_22DE175C8(v12, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action);
          sub_22DDEF284(v58, &qword_27DA37BC0, &qword_22DEC7350);
          v52 = v57;
          v51 = v78;
        }

        else
        {
          sub_22DDEF284(v58, &qword_27DA37BC0, &qword_22DEC7350);
          sub_22DE17628(v12, v79, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action);
          v60 = v81;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v84 = v60;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_22DE04898(0, *(v81 + 16) + 1, 1);
            v81 = v84;
          }

          v52 = v57;
          v63 = *(v81 + 16);
          v62 = *(v81 + 24);
          v51 = v78;
          if (v63 >= v62 >> 1)
          {
            sub_22DE04898(v62 > 1, v63 + 1, 1);
            v81 = v84;
          }

          v64 = v81;
          *(v81 + 16) = v63 + 1;
          sub_22DE17628(v79, v64 + v55 + v63 * v56, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action);
          v7 = v76;
          v54 = v77;
        }
      }

      ++v53;
      v50 = v82;
      v49 = v83;
      if (v52 == v53)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
    swift_once();
    v30 = sub_22DEC4B44();
    __swift_project_value_buffer(v30, qword_281462270);
    v31 = v51;
    v32 = sub_22DEC4B24();
    v33 = sub_22DEC4E44();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 138412290;
      v36 = v51;
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v34 + 4) = v37;
      *v35 = v37;
      _os_log_impl(&dword_22DDEC000, v32, v33, "Response parsing failed with error: %@", v34, 0xCu);
      sub_22DDEF284(v35, &qword_27DA379D8, qword_22DEC6E70);
      MEMORY[0x2318DBF00](v35, -1, -1);
      MEMORY[0x2318DBF00](v34, -1, -1);
    }

    type metadata accessor for NDOErrors();
    sub_22DE17518(&qword_28145AE60, type metadata accessor for NDOErrors);
    v38 = swift_allocError();
    swift_storeEnumTagMultiPayload();

    v39 = v75;
    v75[1] = 0;
    v39[2] = 0;
    *v39 = v38;
    *(v39 + 24) = 1;
  }

  else
  {
    v81 = MEMORY[0x277D84F90];
LABEL_23:

    v65 = v74;
    v66 = sub_22DE16FA4(v74);
    v68 = v67;
    sub_22DE175C8(v65, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIResponse);
    (*(v50 + 8))(v71, v49);
    v69 = v75;
    *v75 = v66;
    v69[1] = v68 & 1;
    v69[2] = v81;
    *(v69 + 24) = 0;
  }
}

uint64_t sub_22DE16FA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37BC8, qword_22DEC7358);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v32 - v7;
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInResponse(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = (&v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v16 = (&v32 - v15);
  v17 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIResponse(0) + 24);
  sub_22DDF0028(a1 + v17, v8, &qword_27DA37BC8, qword_22DEC7358);
  v18 = *(v10 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    v19 = MEMORY[0x277D84F90];
    *v16 = MEMORY[0x277D84F90];
    v16[1] = sub_22DE05B84(v19);
    v20 = v16 + *(v9 + 24);
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    v21 = v16 + *(v9 + 28);
    *v21 = 0;
    v21[8] = 1;
    if (v18(v8, 1, v9) != 1)
    {
      sub_22DDEF284(v8, &qword_27DA37BC8, qword_22DEC7358);
    }
  }

  else
  {
    sub_22DE17628(v8, v16, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInResponse);
  }

  v22 = v16 + *(v9 + 28);
  v23 = *v22;
  v24 = v22[8];
  sub_22DE175C8(v16, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInResponse);
  if ((v24 & 1) == 0)
  {
    sub_22DDF0028(a1 + v17, v6, &qword_27DA37BC8, qword_22DEC7358);
    if (v18(v6, 1, v9) == 1)
    {
      v25 = MEMORY[0x277D84F90];
      *v14 = MEMORY[0x277D84F90];
      v14[1] = sub_22DE05B84(v25);
      v26 = v14 + *(v9 + 24);
      _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
      v27 = v14 + *(v9 + 28);
      *v27 = 0;
      v27[8] = 1;
      if (v18(v6, 1, v9) != 1)
      {
        sub_22DDEF284(v6, &qword_27DA37BC8, qword_22DEC7358);
      }
    }

    else
    {
      sub_22DE17628(v6, v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInResponse);
    }

    v28 = v14 + *(v9 + 28);
    v29 = *v28;
    v30 = v28[8];
    sub_22DE175C8(v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInResponse);
    if (v30)
    {
      return 0;
    }

    else
    {
      return v29;
    }
  }

  return v23;
}

uint64_t sub_22DE17304()
{
  v1 = OBJC_IVAR____TtC6NDOAPI23NDORemoteCheckInHandler_url;
  v2 = sub_22DEC4764();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC6NDOAPI23NDORemoteCheckInHandler_client));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC6NDOAPI23NDORemoteCheckInHandler_payloadProvider));
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for NDORemoteCheckInHandler()
{
  result = qword_28145E000;
  if (!qword_28145E000)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22DE17414()
{
  result = sub_22DEC4764();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

double sub_22DE174B0(__int128 *a1, uint64_t a2, uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v6 = *v5;
  *&result = sub_22DE1480C(a1, a2, a3, a4, a5).n128_u64[0];
  return result;
}

uint64_t sub_22DE174D4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void sub_22DE17504(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
  }
}

uint64_t sub_22DE17518(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22DE17560(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22DE175C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22DE17628(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_22DE17690(__int128 *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t *), uint64_t a8)
{
  v172 = a4;
  v199 = a3;
  v197 = a2;
  v176 = sub_22DEC4694();
  v175 = *(v176 - 8);
  v13 = *(v175 + 64);
  MEMORY[0x28223BE20](v176);
  v174 = &v171[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v184 = sub_22DEC4904();
  v186 = *(v184 - 8);
  v15 = *(v186 + 64);
  v16 = MEMORY[0x28223BE20](v184);
  v183 = &v171[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v181 = &v171[-v18];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37BA8, &unk_22DEC7320);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v179 = &v171[-v21];
  v198 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInRequest(0);
  v178 = *(v198 - 8);
  v22 = *(v178 + 64);
  v23 = MEMORY[0x28223BE20](v198);
  v177 = &v171[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v23);
  v200 = &v171[-v25];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A38, &unk_22DEC6570);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v194 = &v171[-v28];
  v193 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  v192 = *(v193 - 8);
  v29 = *(v192 + 64);
  MEMORY[0x28223BE20](v193);
  v191 = &v171[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A40, &unk_22DEC7330);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v34 = &v171[-v33];
  v190 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody(0);
  v189 = *(v190 - 8);
  v35 = *(v189 + 64);
  MEMORY[0x28223BE20](v190);
  v37 = &v171[-((v36 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v38 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIRequest(0);
  v39 = *(*(v38 - 8) + 64);
  v40 = MEMORY[0x28223BE20](v38);
  v182 = &v171[-((v41 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v42 = MEMORY[0x28223BE20](v40);
  v180 = &v171[-v43];
  MEMORY[0x28223BE20](v42);
  v45 = &v171[-v44];
  v46 = swift_allocObject();
  v46[2] = a6;
  v46[3] = a7;
  v188 = a7;
  v195 = v46;
  v46[4] = a8;
  v47 = a1[1];
  v205 = *a1;
  v206 = v47;
  v207 = *(a1 + 4);
  v48 = objc_allocWithZone(MEMORY[0x277CCAB70]);

  v187 = a8;

  v49 = a5;
  v50 = sub_22DEC4724();
  v51 = [v48 initWithURL_];

  v52 = v51;
  v53 = sub_22DEC4C04();
  [v52 setHTTPMethod_];

  v54 = sub_22DEC4C04();
  v55 = sub_22DEC4C04();
  [v52 addValue:v54 forHTTPHeaderField:v55];

  v56 = sub_22DEC4C04();
  v57 = sub_22DEC4C04();
  [v52 addValue:v56 forHTTPHeaderField:v57];

  v201 = v52;
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v185 = v38;
  v58 = *(v38 + 20);
  if (qword_28145D120 != -1)
  {
    swift_once();
  }

  *&v45[v58] = qword_28145D128;
  v173 = a5;
  v59 = *(a5 + OBJC_IVAR____TtC6NDOAPI23NDORemoteCheckInHandler_payloadProvider + 24);
  v60 = *(a5 + OBJC_IVAR____TtC6NDOAPI23NDORemoteCheckInHandler_payloadProvider + 32);
  v196 = (v49 + OBJC_IVAR____TtC6NDOAPI23NDORemoteCheckInHandler_payloadProvider);
  __swift_project_boxed_opaque_existential_1((v49 + OBJC_IVAR____TtC6NDOAPI23NDORemoteCheckInHandler_payloadProvider), v59);
  v202 = v45;
  v61 = *(v60 + 24);

  v61(v59, v60);
  v62 = v202;
  v63 = *&v202[v58];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v65 = *&v62[v58];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v66 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIRequest._StorageClass(0);
    v67 = *(v66 + 48);
    v68 = *(v66 + 52);
    swift_allocObject();
    v65 = sub_22DE45FE4(v65);
    *&v62[v58] = v65;
  }

  v69 = v200;
  sub_22DE17628(v37, v34, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
  (*(v189 + 56))(v34, 0, 1, v190);
  v70 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CIRequestP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__common;
  swift_beginAccess();
  sub_22DDF0208(v34, v65 + v70, &qword_27DA37A40, &unk_22DEC7330);
  swift_endAccess();
  v71 = v196[3];
  v72 = v196[4];
  __swift_project_boxed_opaque_existential_1(v196, v71);
  v73 = v191;
  (*(v72 + 16))(v71, v72);
  v74 = *&v62[v58];
  v75 = swift_isUniquelyReferenced_nonNull_native();
  v76 = *&v62[v58];
  if ((v75 & 1) == 0)
  {
    v77 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIRequest._StorageClass(0);
    v78 = *(v77 + 48);
    v79 = *(v77 + 52);
    swift_allocObject();
    v76 = sub_22DE45FE4(v76);
    *&v62[v58] = v76;
  }

  v80 = v194;
  sub_22DE17628(v73, v194, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  (*(v192 + 56))(v80, 0, 1, v193);
  v81 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CIRequestP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__meta;
  swift_beginAccess();
  sub_22DDF0208(v80, v76 + v81, &qword_27DA37A38, &unk_22DEC6570);
  swift_endAccess();
  *v69 = sub_22DE0501C(MEMORY[0x277D84F90]);
  v82 = v198;
  v83 = v69 + *(v198 + 20);
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v84 = v82[6];
  *(v69 + v84) = 7;
  v85 = (v69 + v82[7]);
  *v85 = 0;
  v85[1] = 0;
  v86 = (v69 + v82[8]);
  *v86 = 0;
  v86[1] = 0;
  v87 = v205;
  v88 = v206;
  v89 = v207;
  if (v205)
  {
    if (v205 == 1)
    {
      goto LABEL_27;
    }

    *v69 = v87;
    if (!v88)
    {
LABEL_10:
      if (qword_28145AE68 != -1)
      {
        swift_once();
      }

      v90 = sub_22DEC4B44();
      __swift_project_value_buffer(v90, qword_281462270);
      v91 = sub_22DEC4B24();
      v92 = sub_22DEC4E54();
      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        *v93 = 0;
        _os_log_impl(&dword_22DDEC000, v91, v92, "No notificationId for checkIn request", v93, 2u);
        MEMORY[0x2318DBF00](v93, -1, -1);
      }

      if (v89)
      {
        goto LABEL_15;
      }

LABEL_22:
      if (qword_28145AE68 != -1)
      {
        swift_once();
      }

      v103 = sub_22DEC4B44();
      __swift_project_value_buffer(v103, qword_281462270);
      v95 = sub_22DEC4B24();
      v104 = sub_22DEC4E54();
      if (os_log_type_enabled(v95, v104))
      {
        v105 = swift_slowAlloc();
        *v105 = 0;
        _os_log_impl(&dword_22DDEC000, v95, v104, "No notificatioin context for checkIn request", v105, 2u);
        MEMORY[0x2318DBF00](v105, -1, -1);
      }

      goto LABEL_26;
    }
  }

  else
  {
    if (qword_28145AE68 != -1)
    {
      swift_once();
    }

    v96 = sub_22DEC4B44();
    __swift_project_value_buffer(v96, qword_281462270);
    v97 = sub_22DEC4B24();
    v98 = sub_22DEC4E54();
    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      *v99 = 0;
      _os_log_impl(&dword_22DDEC000, v97, v98, "No passthrough data for checkIn request", v99, 2u);
      v100 = v99;
      v69 = v200;
      MEMORY[0x2318DBF00](v100, -1, -1);
    }

    if (!v88)
    {
      goto LABEL_10;
    }
  }

  *v85 = *(&v87 + 1);
  v85[1] = v88;

  v101 = sub_22DEC4C04();
  v102 = sub_22DEC4C04();
  [v201 addValue:v101 forHTTPHeaderField:v102];

  if (!v89)
  {
    goto LABEL_22;
  }

LABEL_15:
  v94 = sub_22DEC4C04();
  v95 = sub_22DEC4C04();
  [v201 addValue:v94 forHTTPHeaderField:v95];

LABEL_26:
LABEL_27:
  v106 = v199;
  sub_22DE14554(v197, v199, v203);
  if (LOBYTE(v203[0]) == 7)
  {
    if (qword_28145AE68 != -1)
    {
      swift_once();
    }

    v107 = sub_22DEC4B44();
    __swift_project_value_buffer(v107, qword_281462270);

    v108 = sub_22DEC4B24();
    v109 = sub_22DEC4E44();

    v110 = os_log_type_enabled(v108, v109);
    v111 = v202;
    if (v110)
    {
      v112 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      v203[0] = v113;
      *v112 = 136315138;
      *(v112 + 4) = sub_22DDEDC0C(v197, v106, v203);
      _os_log_impl(&dword_22DDEC000, v108, v109, "No valid mapping for %s trigger, not checking in", v112, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v113);
      MEMORY[0x2318DBF00](v113, -1, -1);
      MEMORY[0x2318DBF00](v112, -1, -1);
    }

    type metadata accessor for NDOErrors();
    sub_22DE17518(&qword_28145AE60, type metadata accessor for NDOErrors);
    v114 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v203[1] = 0;
    v203[2] = 0;
    v203[0] = v114;
    v204 = 1;
    v188(v203);

    sub_22DE175C8(v69, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInRequest);
    sub_22DE175C8(v111, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIRequest);
  }

  else
  {
    *(v69 + v84) = v203[0];
    v115 = v177;
    sub_22DE17560(v69, v177, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInRequest);
    v116 = v202;
    v117 = *&v202[v58];
    v118 = swift_isUniquelyReferenced_nonNull_native();
    v119 = *(v116 + v58);
    if ((v118 & 1) == 0)
    {
      v120 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIRequest._StorageClass(0);
      v121 = *(v120 + 48);
      v122 = *(v120 + 52);
      swift_allocObject();
      v119 = sub_22DE45FE4(v119);
      *(v116 + v58) = v119;
    }

    v123 = v184;
    v124 = v115;
    v125 = v179;
    sub_22DE17628(v124, v179, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInRequest);
    (*(v178 + 56))(v125, 0, 1, v198);
    v126 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CIRequestP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__data;
    swift_beginAccess();
    sub_22DDF0208(v125, v119 + v126, &qword_27DA37BA8, &unk_22DEC7320);
    swift_endAccess();
    if (qword_28145AE68 != -1)
    {
      swift_once();
    }

    v127 = sub_22DEC4B44();
    v128 = __swift_project_value_buffer(v127, qword_281462270);
    v129 = sub_22DEC4B24();
    v130 = sub_22DEC4E54();
    v131 = os_log_type_enabled(v129, v130);
    v198 = v128;
    if (v131)
    {
      v132 = swift_slowAlloc();
      v133 = v116;
      v134 = swift_slowAlloc();
      v203[0] = v134;
      *v132 = 136315138;
      swift_beginAccess();
      sub_22DE17560(v133, v180, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIRequest);
      sub_22DEC48F4();
      sub_22DE17518(&qword_28145CFD0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIRequest);
      v135 = sub_22DEC49F4();
      v137 = v136;
      (*(v186 + 8))(v181, v123);
      sub_22DE175C8(v180, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIRequest);
      v138 = sub_22DDEDC0C(v135, v137, v203);

      *(v132 + 4) = v138;
      _os_log_impl(&dword_22DDEC000, v129, v130, "CheckIn request body: %s", v132, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v134);
      MEMORY[0x2318DBF00](v134, -1, -1);
      MEMORY[0x2318DBF00](v132, -1, -1);

      v106 = v199;
      v116 = v202;
    }

    else
    {
    }

    v139 = v201;
    v140 = sub_22DEC4B24();
    v141 = sub_22DEC4E54();

    v142 = os_log_type_enabled(v140, v141);
    v143 = v183;
    v201 = v139;
    if (v142)
    {
      v144 = swift_slowAlloc();
      v145 = swift_slowAlloc();
      v203[0] = v145;
      *v144 = 136315138;
      v146 = [v139 allHTTPHeaderFields];
      if (v146)
      {
        v147 = v146;
        sub_22DEC4BA4();
      }

      else
      {
        sub_22DE0501C(MEMORY[0x277D84F90]);
      }

      v148 = sub_22DEC4BB4();
      v150 = v149;

      v151 = sub_22DDEDC0C(v148, v150, v203);

      *(v144 + 4) = v151;
      _os_log_impl(&dword_22DDEC000, v140, v141, "CheckIn request headers: %s", v144, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v145);
      MEMORY[0x2318DBF00](v145, -1, -1);
      MEMORY[0x2318DBF00](v144, -1, -1);

      v106 = v199;
      v116 = v202;
    }

    else
    {
    }

    swift_beginAccess();
    v152 = v182;
    sub_22DE17560(v116, v182, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIRequest);
    sub_22DEC48F4();
    sub_22DE17518(&qword_28145CFD0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIRequest);
    v153 = sub_22DEC4A04();
    v154 = v200;
    v155 = v153;
    v157 = v156;
    (*(v186 + 8))(v143, v123);
    sub_22DE175C8(v152, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIRequest);
    v158 = sub_22DEC4794();
    sub_22DDEEF50(v155, v157);
    v159 = v201;
    [v201 setHTTPBody_];

    v160 = v196[3];
    v161 = v196[4];
    __swift_project_boxed_opaque_existential_1(v196, v160);
    v162 = v154;
    LOBYTE(v154) = v172 & 1;
    (*(v161 + 8))(v159, v172 & 1, v160, v161);
    sub_22DE175C8(v162, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInRequest);
    sub_22DE175C8(v116, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIRequest);
    v163 = *(v173 + OBJC_IVAR____TtC6NDOAPI23NDORemoteCheckInHandler_client + 24);
    v164 = *(v173 + OBJC_IVAR____TtC6NDOAPI23NDORemoteCheckInHandler_client + 32);
    __swift_project_boxed_opaque_existential_1((v173 + OBJC_IVAR____TtC6NDOAPI23NDORemoteCheckInHandler_client), v163);
    v165 = v174;
    sub_22DEC4674();
    v166 = swift_allocObject();
    swift_weakInit();
    v167 = swift_allocObject();
    *(v167 + 16) = v166;
    *(v167 + 24) = v154;
    v168 = v206;
    *(v167 + 32) = v205;
    *(v167 + 48) = v168;
    v169 = v197;
    *(v167 + 64) = v207;
    *(v167 + 72) = v169;
    *(v167 + 80) = v106;
    *(v167 + 88) = sub_22DE18E40;
    *(v167 + 96) = v195;
    v170 = *(v164 + 8);

    sub_22DDF0028(&v205, v203, &qword_27DA37BB0, &qword_22DEC7340);

    v170(v165, sub_22DE18EF8, v167, v163, v164);

    (*(v175 + 8))(v165, v176);
  }
}

uint64_t objectdestroy_4Tm()
{
  v1 = v0[2];

  if (v0[4] != 1)
  {

    v2 = v0[6];

    v3 = v0[8];
  }

  v4 = v0[10];

  v5 = v0[12];

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t dispatch thunk of AckHandler.ack(data:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_22DE0D6CC;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of AckHandler.ack(data:urlString:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 16);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_22DE0858C;

  return v15(a1, a2, a3, a4, a5);
}

void sub_22DE19164(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37B88, &qword_22DEC6F08);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v16 - v8);
  v10 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DE10CD8(v3, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *v9;
    v14 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37AE8, &qword_22DEC7400);
    swift_willThrowTypedImpl();
    v17 = v14;
    if (sub_22DEC50C4())
    {
    }

    else
    {
      swift_allocError();
      *v15 = v14;
    }
  }

  else
  {
    sub_22DE19B38(v9, v13);
    LOBYTE(v17) = a1;
    Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.apiUrl(for:)(&v17, a2);
    sub_22DE19B9C(v13);
  }
}

uint64_t DeviceListLoader.__allocating_init(configLoader:deviceListLoaderProvider:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 56) = 0u;
  *(v6 + 72) = 0u;
  *(v6 + 88) = 0;
  sub_22DDEDA18(a1, v6 + 16);
  *(v6 + 96) = a2;
  *(v6 + 104) = a3;
  return v6;
}

uint64_t DeviceListLoader.init(configLoader:deviceListLoaderProvider:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 88) = 0;
  *(v3 + 72) = 0u;
  *(v3 + 56) = 0u;
  sub_22DDEDA18(a1, v3 + 16);
  *(v3 + 96) = a2;
  *(v3 + 104) = a3;
  return v3;
}

uint64_t sub_22DE193D0(uint64_t a1, uint64_t a2)
{
  v5 = v2[5];
  v6 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v5);
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = a1;
  v8[4] = a2;
  v9 = *(v6 + 16);

  v9(sub_22DE198DC, v8, v5, v6);
}

uint64_t sub_22DE194B8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37BD0, &unk_22DEC73F0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v32[-1] - v8);
  v10 = sub_22DEC4764();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v32[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    sub_22DE19164(5, v14);
    v24 = *(v16 + 104);
    (*(v16 + 96))(&v35, v14);
    swift_beginAccess();
    v25 = *(&v36 + 1);
    if (*(v16 + 80))
    {
      __swift_destroy_boxed_opaque_existential_1((v16 + 56));
      if (v25)
      {
LABEL_10:
        sub_22DDEDA18(&v35, v16 + 56);
        goto LABEL_13;
      }
    }

    else if (*(&v36 + 1))
    {
      goto LABEL_10;
    }

    v26 = v36;
    *(v16 + 56) = v35;
    *(v16 + 72) = v26;
    *(v16 + 88) = v37;
LABEL_13:
    swift_endAccess();
    if (*(v16 + 80))
    {
      sub_22DDEDAAC(v16 + 56, &v35);
      if (*(&v36 + 1))
      {
LABEL_15:
        sub_22DDEDAAC(&v35, v32);
        if (*(&v36 + 1))
        {
          __swift_destroy_boxed_opaque_existential_1(&v35);
        }

        v27 = v33;
        v28 = v34;
        __swift_project_boxed_opaque_existential_1(v32, v33);
        (*(v28 + 16))(a3, a4, v27, v28);

        (*(v11 + 8))(v14, v10);
        v29 = v32;
        return __swift_destroy_boxed_opaque_existential_1(v29);
      }
    }

    else
    {
      v30 = *(v16 + 72);
      v35 = *(v16 + 56);
      v36 = v30;
      v37 = *(v16 + 88);
      if (*(&v30 + 1))
      {
        goto LABEL_15;
      }
    }

    (*(v11 + 8))(v14, v10);

    if (!*(&v36 + 1))
    {
      return result;
    }

    v29 = &v35;
    return __swift_destroy_boxed_opaque_existential_1(v29);
  }

  if (qword_28145AE68 != -1)
  {
    swift_once();
  }

  v17 = sub_22DEC4B44();
  __swift_project_value_buffer(v17, qword_281462270);
  v18 = sub_22DEC4B24();
  v19 = sub_22DEC4E44();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_22DDEC000, v18, v19, "Device list loader is deallocated. Dropping config results", v20, 2u);
    MEMORY[0x2318DBF00](v20, -1, -1);
  }

  type metadata accessor for NDOErrors();
  sub_22DDFE48C();
  v21 = swift_allocError();
  *v22 = 0xD000000000000010;
  v22[1] = 0x800000022DEC73A0;
  swift_storeEnumTagMultiPayload();
  *v9 = v21;
  swift_storeEnumTagMultiPayload();
  a3(v9);
  return sub_22DE19AD0(v9);
}

uint64_t *DeviceListLoader.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (v0[10])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  }

  v1 = v0[13];

  return v0;
}

uint64_t DeviceListLoader.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (v0[10])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  }

  v1 = v0[13];

  return MEMORY[0x2821FE8D8](v0, 112, 7);
}

uint64_t sub_22DE19970(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = v5[5];
  v7 = v5[6];
  __swift_project_boxed_opaque_existential_1(v5 + 2, v6);
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = a1;
  v9[4] = a2;
  v10 = *(v7 + 16);

  v10(sub_22DE19BF8, v9, v6, v7);
}

uint64_t sub_22DE19AD0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37BD0, &unk_22DEC73F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22DE19B38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22DE19B9C(uint64_t a1)
{
  v2 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22DE19BFC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000007370;
  v3 = 0xD000000000000012;
  v4 = 0x614D6769666E6F63;
  v5 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v6 = 0x446E496B63656863;
    }

    else
    {
      v6 = 0x614D6769666E6F63;
    }

    if (v5)
    {
      v7 = 0xEF64656C62617369;
    }

    else
    {
      v7 = 0xEA00000000007370;
    }
  }

  else if (a1 == 2)
  {
    v7 = 0x800000022DED13D0;
    v6 = 0xD00000000000001ALL;
  }

  else
  {
    if (a1 == 3)
    {
      v6 = 0xD000000000000012;
    }

    else
    {
      v6 = 0xD000000000000017;
    }

    if (v5 == 3)
    {
      v7 = 0x800000022DED13F0;
    }

    else
    {
      v7 = 0x800000022DED1410;
    }
  }

  if (a2 <= 1u)
  {
    v3 = 0x446E496B63656863;
    v8 = 0xEF64656C62617369;
    v9 = a2 == 0;
  }

  else
  {
    v2 = 0x800000022DED13D0;
    v4 = 0xD00000000000001ALL;
    v8 = 0x800000022DED1410;
    if (a2 == 3)
    {
      v8 = 0x800000022DED13F0;
    }

    else
    {
      v3 = 0xD000000000000017;
    }

    v9 = a2 == 2;
  }

  if (v9)
  {
    v10 = v4;
  }

  else
  {
    v10 = v3;
  }

  if (v9)
  {
    v11 = v2;
  }

  else
  {
    v11 = v8;
  }

  if (v6 == v10 && v7 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_22DEC50E4();
  }

  return v12 & 1;
}

uint64_t sub_22DE19D80(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC000000736B6361;
  v3 = 0x2D676E69646E6570;
  v4 = a1;
  v5 = 0xE90000000000006CLL;
  v6 = 7761509;
  if (a1 == 5)
  {
    v6 = 0x72752D7473696C70;
  }

  else
  {
    v5 = 0xE300000000000000;
  }

  v7 = 0x800000022DED1380;
  if (a1 == 3)
  {
    v8 = 0xD000000000000012;
  }

  else
  {
    v8 = 0x2D676E69646E6570;
  }

  if (a1 != 3)
  {
    v7 = 0xEC000000736B6361;
  }

  if (a1 <= 4u)
  {
    v9 = v7;
  }

  else
  {
    v8 = v6;
    v9 = v5;
  }

  v10 = 0x800000022DED1310;
  v11 = 0xD000000000000014;
  v12 = 0x800000022DED1330;
  v13 = 0xD000000000000022;
  if (v4 != 1)
  {
    v13 = 0xD000000000000011;
    v12 = 0x800000022DED1360;
  }

  if (v4)
  {
    v11 = v13;
    v10 = v12;
  }

  if (v4 <= 2)
  {
    v14 = v11;
  }

  else
  {
    v14 = v8;
  }

  if (v4 <= 2)
  {
    v15 = v10;
  }

  else
  {
    v15 = v9;
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      v2 = 0x800000022DED1310;
      if (v14 != 0xD000000000000014)
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    if (a2 == 1)
    {
      v2 = 0x800000022DED1330;
      if (v14 != 0xD000000000000022)
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    v2 = 0x800000022DED1360;
    v3 = 0xD000000000000011;
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0xE90000000000006CLL;
        if (v14 != 0x72752D7473696C70)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v2 = 0xE300000000000000;
        if (v14 != 7761509)
        {
          goto LABEL_41;
        }
      }

      goto LABEL_38;
    }

    if (a2 == 3)
    {
      v2 = 0x800000022DED1380;
      if (v14 != 0xD000000000000012)
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    }
  }

  if (v14 != v3)
  {
LABEL_41:
    v16 = sub_22DEC50E4();
    goto LABEL_42;
  }

LABEL_38:
  if (v15 != v2)
  {
    goto LABEL_41;
  }

  v16 = 1;
LABEL_42:

  return v16 & 1;
}

uint64_t NSDictionary.Keys.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_22DEC5014();

  v4 = 5;
  if (v2 < 5)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

unint64_t NSDictionary.Keys.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x614D6769666E6F63;
  v3 = 0xD00000000000001ALL;
  v4 = 0xD000000000000012;
  if (v1 != 3)
  {
    v4 = 0xD000000000000017;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x446E496B63656863;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_22DE1A094()
{
  v1 = *v0;
  sub_22DEC5184();
  sub_22DEC4C94();

  return sub_22DEC51A4();
}

uint64_t sub_22DE1A198()
{
  *v0;
  *v0;
  *v0;
  sub_22DEC4C94();
}

uint64_t sub_22DE1A288()
{
  v1 = *v0;
  sub_22DEC5184();
  sub_22DEC4C94();

  return sub_22DEC51A4();
}

uint64_t sub_22DE1A388@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return NSDictionary.Keys.init(rawValue:)(a1);
}

void sub_22DE1A394(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000007370;
  v4 = 0x614D6769666E6F63;
  v5 = 0x800000022DED13D0;
  v6 = 0xD00000000000001ALL;
  v7 = 0xD000000000000012;
  v8 = 0x800000022DED13F0;
  if (v2 != 3)
  {
    v7 = 0xD000000000000017;
    v8 = 0x800000022DED1410;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = v8;
  }

  if (*v1)
  {
    v4 = 0x446E496B63656863;
    v3 = 0xEF64656C62617369;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t NSDictionary.checkInDisabled.getter()
{
  *&v6[0] = 0x446E496B63656863;
  *(&v6[0] + 1) = 0xEF64656C62617369;
  v1 = [v0 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v1)
  {
    sub_22DEC4EC4();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    result = swift_dynamicCast();
    if (result)
    {
      return v3;
    }
  }

  else
  {
    sub_22DE0E24C(v6);
    return 0;
  }

  return result;
}

uint64_t NSDictionary.isAccCheckInDisabled.getter()
{
  *&v6[0] = 0xD000000000000012;
  *(&v6[0] + 1) = 0x800000022DED13F0;
  v1 = [v0 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v1)
  {
    sub_22DEC4EC4();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    result = swift_dynamicCast();
    if (result)
    {
      return v3;
    }
  }

  else
  {
    sub_22DE0E24C(v6);
    return 0;
  }

  return result;
}

void NSDictionary.checkInRetryDelay.getter()
{
  *&v3 = 0xD00000000000001ALL;
  *(&v3 + 1) = 0x800000022DED13D0;
  v1 = [v0 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v1)
  {
    sub_22DEC4EC4();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    sub_22DE1A788();
    if (swift_dynamicCast())
    {
      [v2 doubleValue];
    }
  }

  else
  {
    sub_22DE0E24C(v5);
  }
}

unint64_t sub_22DE1A788()
{
  result = qword_27DA37BD8;
  if (!qword_27DA37BD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DA37BD8);
  }

  return result;
}

unint64_t NSDictionary.configMaps.getter()
{
  *&v4 = 0x614D6769666E6F63;
  *(&v4 + 1) = 0xEA00000000007370;
  v1 = [v0 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v1)
  {
    sub_22DEC4EC4();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37BE0, &qword_22DEC7408);
    if (swift_dynamicCast())
    {
      return v3;
    }
  }

  else
  {
    sub_22DE0E24C(v6);
  }

  return sub_22DE0501C(MEMORY[0x277D84F90]);
}

Swift::Bool __swiftcall NSDictionary.checkInTriggerDisabled(_:)(Swift::String a1)
{
  v2 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  *&v11 = 0xD000000000000017;
  *(&v11 + 1) = 0x800000022DED1410;
  v5 = [v2 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v5)
  {
    sub_22DEC4EC4();
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
    v6 = sub_22DE0E24C(v13);
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37BE8, &qword_22DEC7A80);
  v6 = swift_dynamicCast();
  if ((v6 & 1) == 0)
  {
LABEL_8:
    v7 = MEMORY[0x277D84F90];
    goto LABEL_9;
  }

  v7 = v10[4];
LABEL_9:
  *&v13[0] = countAndFlagsBits;
  *(&v13[0] + 1) = object;
  MEMORY[0x28223BE20](v6);
  v10[2] = v13;
  v8 = sub_22DE1AA60(sub_22DE1AB64, v10, v7);

  return v8 & 1;
}

uint64_t sub_22DE1AA60(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_22DE1AB0C(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_22DEC50E4() & 1;
  }
}

uint64_t sub_22DE1AB64(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_22DEC50E4() & 1;
  }
}

unint64_t sub_22DE1ABC0()
{
  result = qword_27DA37BF0;
  if (!qword_27DA37BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA37BF0);
  }

  return result;
}

uint64_t _s4KeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}