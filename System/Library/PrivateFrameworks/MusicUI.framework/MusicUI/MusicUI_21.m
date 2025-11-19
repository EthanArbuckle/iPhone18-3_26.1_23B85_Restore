uint64_t sub_2168A2D84(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_28;
  }

  if (a3)
  {
    sub_2168A0B60();
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_21689E5F0();
      goto LABEL_28;
    }

    sub_21689F660();
  }

  v8 = *v3;
  sub_21700F8F4();
  sub_216C6E3C8(v5);
  sub_21700E614();

  result = sub_21700F944();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    do
    {
      v11 = 0xD000000000000013;
      v12 = "ion";
      switch(*(*(v8 + 48) + a2))
      {
        case 1:
          v11 = 0xD00000000000001DLL;
          v12 = "fullCatalogPlayback";
          break;
        case 2:
          v11 = 0xD000000000000012;
          v12 = "voiceActivatedCatalogPlayback";
          break;
        case 3:
          v11 = 0xD000000000000014;
          v12 = "anyCatalogPlayback";
          break;
        case 4:
          v11 = 0xD00000000000001FLL;
          v12 = "cloudLibraryEligible";
          break;
        case 5:
          v11 = 0xD000000000000014;
          v12 = "addCatalogContentToCloudLibrary";
          break;
        default:
          break;
      }

      v13 = v12 | 0x8000000000000000;
      v14 = 0xD000000000000013;
      v15 = "ion";
      switch(v5)
      {
        case 1:
          v14 = 0xD00000000000001DLL;
          v15 = "fullCatalogPlayback";
          break;
        case 2:
          v14 = 0xD000000000000012;
          v15 = "voiceActivatedCatalogPlayback";
          break;
        case 3:
          v14 = 0xD000000000000014;
          v15 = "anyCatalogPlayback";
          break;
        case 4:
          v14 = 0xD00000000000001FLL;
          v15 = "cloudLibraryEligible";
          break;
        case 5:
          v14 = 0xD000000000000014;
          v15 = "addCatalogContentToCloudLibrary";
          break;
        default:
          break;
      }

      if (v11 == v14 && v13 == (v15 | 0x8000000000000000))
      {
        goto LABEL_31;
      }

      v17 = sub_21700F7D4();

      if (v17)
      {
        goto LABEL_32;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_28:
  v18 = *v22;
  *(*v22 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + a2) = v5;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return result;
  }

  __break(1u);
LABEL_31:

LABEL_32:
  result = sub_21700F814();
  __break(1u);
  return result;
}

uint64_t sub_2168A308C(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = type metadata accessor for MusicURLRequest();
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v4 + 16);
  v11 = *(*v4 + 24);
  if (v11 <= v10 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_2168A0E98();
      goto LABEL_10;
    }

    if (v11 <= v10)
    {
      sub_21689F968();
LABEL_10:
      v17 = *v4;
      sub_21700F8F4();
      sub_217006224();
      sub_2168A5534(&qword_280E4A4E0, MEMORY[0x277CC95F0]);
      sub_21700E434();
      v18 = sub_21700F944();
      v19 = ~(-1 << *(v17 + 32));
      while (1)
      {
        a2 = v18 & v19;
        if (((*(v17 + 56 + (((v18 & v19) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v18 & v19)) & 1) == 0)
        {
          goto LABEL_7;
        }

        sub_2168A557C();
        v20 = sub_217006204();
        sub_2168A55D0(v9, type metadata accessor for MusicURLRequest);
        if (v20)
        {
          goto LABEL_15;
        }

        v18 = a2 + 1;
      }
    }

    sub_21689E730();
  }

LABEL_7:
  v12 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_2168A5624();
  v14 = *(v12 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
LABEL_15:
    result = sub_21700F814();
    __break(1u);
  }

  else
  {
    *(v12 + 16) = v16;
  }

  return result;
}

uint64_t sub_2168A32FC(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_21700E514();
  }

  return OUTLINED_FUNCTION_8();
}

uint64_t sub_2168A3358(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_2168A33D4()
{
  result = qword_27CABAA38;
  if (!qword_27CABAA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABAA38);
  }

  return result;
}

unint64_t sub_2168A3428()
{
  result = qword_27CABAA50;
  if (!qword_27CABAA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABAA50);
  }

  return result;
}

unint64_t sub_2168A34FC()
{
  result = qword_27CABAAA8;
  if (!qword_27CABAAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABAAA8);
  }

  return result;
}

unint64_t sub_2168A3550()
{
  result = qword_27CABAAB0;
  if (!qword_27CABAAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABAAB0);
  }

  return result;
}

unint64_t sub_2168A35A4()
{
  result = qword_27CABAAB8;
  if (!qword_27CABAAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABAAB8);
  }

  return result;
}

unint64_t sub_2168A35F8()
{
  result = qword_27CABAAD0;
  if (!qword_27CABAAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABAAD0);
  }

  return result;
}

unint64_t sub_2168A364C()
{
  result = qword_27CABAAD8;
  if (!qword_27CABAAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABAAD8);
  }

  return result;
}

unint64_t sub_2168A36A4()
{
  result = qword_27CABAAF0;
  if (!qword_27CABAAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABAAF0);
  }

  return result;
}

unint64_t sub_2168A36FC()
{
  result = qword_27CABAAF8;
  if (!qword_27CABAAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABAAF8);
  }

  return result;
}

unint64_t sub_2168A3754()
{
  result = qword_280E3F2B0[0];
  if (!qword_280E3F2B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E3F2B0);
  }

  return result;
}

unsigned __int8 *getEnumTagSinglePayload for ContentKind(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEA)
  {
LABEL_18:
    v6 = *result;
    v7 = v6 >= 3;
    v8 = v6 - 3;
    if (!v7)
    {
      v8 = -1;
    }

    if (v8 + 1 < 2)
    {
      v8 = 0;
    }

    if (v8 >= 0x14)
    {
      return (v8 - 19);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 22;
    if (a2 + 22 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = result[1];
        if (!result[1])
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = *(result + 1);
        if (!*(result + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 1);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = ((*result | (v5 << 8)) - 22);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ContentKind(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 22;
  if (a3 + 22 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xEA)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xE9)
  {
    v7 = ((a2 - 234) >> 8) + 1;
    *result = a2 + 22;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 22;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_2168A3934(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 3;
  v3 = v1 - 3;
  if (!v2)
  {
    v3 = -1;
  }

  if (v3 + 1 >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_2168A3950(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 3;
  }

  return result;
}

uint64_t sub_2168A3988(uint64_t a1, unsigned int a2)
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

uint64_t sub_2168A39DC(uint64_t result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for ContentIdentifiers.Kind(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_2168A3B60(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for ContentIdentifiers.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for ContentIdentifiers.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for ContentKind.AppleCuratorCodingKeys(_BYTE *result, int a2, int a3)
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

uint64_t sub_2168A3F8C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xED)
  {
    if (a2 + 19 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 19) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 20;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v5 = v6 - 20;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_2168A4014(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xED)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEC)
  {
    v6 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
          *result = a2 + 19;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2168A40F4()
{
  result = qword_27CABAB08;
  if (!qword_27CABAB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABAB08);
  }

  return result;
}

unint64_t sub_2168A414C()
{
  result = qword_27CABAB10;
  if (!qword_27CABAB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABAB10);
  }

  return result;
}

unint64_t sub_2168A41A4()
{
  result = qword_27CABAB18;
  if (!qword_27CABAB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABAB18);
  }

  return result;
}

unint64_t sub_2168A41FC()
{
  result = qword_27CABAB20;
  if (!qword_27CABAB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABAB20);
  }

  return result;
}

unint64_t sub_2168A4254()
{
  result = qword_27CABAB28;
  if (!qword_27CABAB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABAB28);
  }

  return result;
}

unint64_t sub_2168A42AC()
{
  result = qword_27CABAB30;
  if (!qword_27CABAB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABAB30);
  }

  return result;
}

unint64_t sub_2168A4304()
{
  result = qword_27CABAB38;
  if (!qword_27CABAB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABAB38);
  }

  return result;
}

unint64_t sub_2168A435C()
{
  result = qword_27CABAB40;
  if (!qword_27CABAB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABAB40);
  }

  return result;
}

unint64_t sub_2168A43B4()
{
  result = qword_27CABAB48;
  if (!qword_27CABAB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABAB48);
  }

  return result;
}

unint64_t sub_2168A440C()
{
  result = qword_27CABAB50;
  if (!qword_27CABAB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABAB50);
  }

  return result;
}

unint64_t sub_2168A4464()
{
  result = qword_27CABAB58;
  if (!qword_27CABAB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABAB58);
  }

  return result;
}

unint64_t sub_2168A44BC()
{
  result = qword_27CABAB60;
  if (!qword_27CABAB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABAB60);
  }

  return result;
}

unint64_t sub_2168A4514()
{
  result = qword_27CABAB68;
  if (!qword_27CABAB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABAB68);
  }

  return result;
}

unint64_t sub_2168A456C()
{
  result = qword_27CABAB70;
  if (!qword_27CABAB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABAB70);
  }

  return result;
}

unint64_t sub_2168A45C4()
{
  result = qword_27CABAB78;
  if (!qword_27CABAB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABAB78);
  }

  return result;
}

unint64_t sub_2168A461C()
{
  result = qword_27CABAB80;
  if (!qword_27CABAB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABAB80);
  }

  return result;
}

unint64_t sub_2168A4674()
{
  result = qword_27CABAB88;
  if (!qword_27CABAB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABAB88);
  }

  return result;
}

unint64_t sub_2168A46CC()
{
  result = qword_27CABAB90;
  if (!qword_27CABAB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABAB90);
  }

  return result;
}

unint64_t sub_2168A4724()
{
  result = qword_27CABAB98;
  if (!qword_27CABAB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABAB98);
  }

  return result;
}

unint64_t sub_2168A477C()
{
  result = qword_27CABABA0;
  if (!qword_27CABABA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABABA0);
  }

  return result;
}

unint64_t sub_2168A47D4()
{
  result = qword_27CABABA8;
  if (!qword_27CABABA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABABA8);
  }

  return result;
}

unint64_t sub_2168A482C()
{
  result = qword_27CABABB0;
  if (!qword_27CABABB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABABB0);
  }

  return result;
}

unint64_t sub_2168A4884()
{
  result = qword_27CABABB8;
  if (!qword_27CABABB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABABB8);
  }

  return result;
}

unint64_t sub_2168A48DC()
{
  result = qword_27CABABC0;
  if (!qword_27CABABC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABABC0);
  }

  return result;
}

unint64_t sub_2168A4934()
{
  result = qword_27CABABC8;
  if (!qword_27CABABC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABABC8);
  }

  return result;
}

unint64_t sub_2168A498C()
{
  result = qword_27CABABD0;
  if (!qword_27CABABD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABABD0);
  }

  return result;
}

unint64_t sub_2168A49E4()
{
  result = qword_27CABABD8;
  if (!qword_27CABABD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABABD8);
  }

  return result;
}

unint64_t sub_2168A4A3C()
{
  result = qword_27CABABE0;
  if (!qword_27CABABE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABABE0);
  }

  return result;
}

unint64_t sub_2168A4A94()
{
  result = qword_27CABABE8;
  if (!qword_27CABABE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABABE8);
  }

  return result;
}

unint64_t sub_2168A4AEC()
{
  result = qword_27CABABF0;
  if (!qword_27CABABF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABABF0);
  }

  return result;
}

unint64_t sub_2168A4B44()
{
  result = qword_27CABABF8;
  if (!qword_27CABABF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABABF8);
  }

  return result;
}

unint64_t sub_2168A4B9C()
{
  result = qword_27CABAC00;
  if (!qword_27CABAC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABAC00);
  }

  return result;
}

unint64_t sub_2168A4BF4()
{
  result = qword_27CABAC08;
  if (!qword_27CABAC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABAC08);
  }

  return result;
}

unint64_t sub_2168A4C4C()
{
  result = qword_27CABAC10;
  if (!qword_27CABAC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABAC10);
  }

  return result;
}

unint64_t sub_2168A4CA4()
{
  result = qword_27CABAC18;
  if (!qword_27CABAC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABAC18);
  }

  return result;
}

unint64_t sub_2168A4CFC()
{
  result = qword_27CABAC20;
  if (!qword_27CABAC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABAC20);
  }

  return result;
}

unint64_t sub_2168A4D54()
{
  result = qword_27CABAC28;
  if (!qword_27CABAC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABAC28);
  }

  return result;
}

unint64_t sub_2168A4DAC()
{
  result = qword_27CABAC30;
  if (!qword_27CABAC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABAC30);
  }

  return result;
}

unint64_t sub_2168A4E04()
{
  result = qword_27CABAC38;
  if (!qword_27CABAC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABAC38);
  }

  return result;
}

unint64_t sub_2168A4E5C()
{
  result = qword_27CABAC40;
  if (!qword_27CABAC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABAC40);
  }

  return result;
}

unint64_t sub_2168A4EB4()
{
  result = qword_27CABAC48;
  if (!qword_27CABAC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABAC48);
  }

  return result;
}

unint64_t sub_2168A4F0C()
{
  result = qword_27CABAC50;
  if (!qword_27CABAC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABAC50);
  }

  return result;
}

unint64_t sub_2168A4F64()
{
  result = qword_27CABAC58;
  if (!qword_27CABAC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABAC58);
  }

  return result;
}

unint64_t sub_2168A4FBC()
{
  result = qword_27CABAC60;
  if (!qword_27CABAC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABAC60);
  }

  return result;
}

unint64_t sub_2168A5014()
{
  result = qword_27CABAC68;
  if (!qword_27CABAC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABAC68);
  }

  return result;
}

unint64_t sub_2168A506C()
{
  result = qword_27CABAC70;
  if (!qword_27CABAC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABAC70);
  }

  return result;
}

unint64_t sub_2168A50C4()
{
  result = qword_27CABAC78;
  if (!qword_27CABAC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABAC78);
  }

  return result;
}

unint64_t sub_2168A511C()
{
  result = qword_27CABAC80;
  if (!qword_27CABAC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABAC80);
  }

  return result;
}

unint64_t sub_2168A5174()
{
  result = qword_27CABAC88;
  if (!qword_27CABAC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABAC88);
  }

  return result;
}

unint64_t sub_2168A51CC()
{
  result = qword_27CABAC90;
  if (!qword_27CABAC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABAC90);
  }

  return result;
}

unint64_t sub_2168A5224()
{
  result = qword_27CABAC98;
  if (!qword_27CABAC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABAC98);
  }

  return result;
}

uint64_t sub_2168A5340(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t))
{
  v5 = type metadata accessor for ContentDescriptor();
  OUTLINED_FUNCTION_36(v5);
  return a2(a1, v2 + ((*(v6 + 80) + 16) & ~*(v6 + 80)));
}

uint64_t sub_2168A53C8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = type metadata accessor for ContentDescriptor();
  OUTLINED_FUNCTION_36(v4);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a2(a1, v6);
}

uint64_t sub_2168A5534(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2168A557C()
{
  v1 = OUTLINED_FUNCTION_102();
  v2(v1);
  OUTLINED_FUNCTION_34();
  v3 = OUTLINED_FUNCTION_8();
  v4(v3);
  return v0;
}

uint64_t sub_2168A55D0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2168A5624()
{
  v1 = OUTLINED_FUNCTION_102();
  v2(v1);
  OUTLINED_FUNCTION_34();
  v3 = OUTLINED_FUNCTION_8();
  v4(v3);
  return v0;
}

uint64_t OUTLINED_FUNCTION_92_4@<X0>(uint64_t a1@<X8>)
{
  v5 = a1 | (v3 << 6);
  v6 = (*(v2 + 48) + 16 * v5);
  v7 = v6[1];
  v8 = (*(v1 + 48) + 16 * v5);
  *v8 = *v6;
  v8[1] = v7;

  return sub_21700DF14();
}

uint64_t OUTLINED_FUNCTION_117_3()
{

  return sub_21700F544();
}

uint64_t OUTLINED_FUNCTION_121_1()
{

  return sub_21700E614();
}

uint64_t sub_2168A59C4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

unint64_t sub_2168A5A3C()
{
  result = qword_27CABB080;
  if (!qword_27CABB080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABB080);
  }

  return result;
}

unint64_t sub_2168A5A94()
{
  result = qword_27CABB088;
  if (!qword_27CABB088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABB088);
  }

  return result;
}

unint64_t sub_2168A5AF0()
{
  result = qword_27CABB090;
  if (!qword_27CABB090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABB090);
  }

  return result;
}

unint64_t sub_2168A5B58()
{
  result = qword_27CABB098;
  if (!qword_27CABB098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABB098);
  }

  return result;
}

uint64_t sub_2168A5C00@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & result;
  if (v3)
  {
    *v2 &= ~result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t sub_2168A5C30@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  *v2 |= result;
  v4 = v3 & result;
  *a2 = v4;
  *(a2 + 8) = v4 == 0;
  return result;
}

MusicUI::NowPlayingOptions sub_2168A5CDC@<X0>(Swift::UInt *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = NowPlayingOptions.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2168A5D1C@<X0>(uint64_t *a1@<X8>)
{
  result = NowPlayingOptions.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for NowPlayingOptions(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for NowPlayingOptions(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

void sub_2168A5E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_49();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v27 = v26;
  v28 = sub_217006864();
  OUTLINED_FUNCTION_1();
  v30 = v29;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_77();
  v34 = v32 - v33;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_56_2();
  v36 = v27(0);
  OUTLINED_FUNCTION_1();
  v38 = v37;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v39);
  v41 = &a9 - v40;
  v42 = (*(v38 + 16))(&a9 - v40, v20, v36);
  v25(v42);
  (*(v30 + 104))(v34, *MEMORY[0x277D2A4B0], v28);
  sub_217006854();
  v43 = *(v30 + 8);
  v43(v34, v28);
  v43(v21, v28);
  (*(v38 + 8))(v41, v36);
  OUTLINED_FUNCTION_26();
}

void sub_2168A5FD4()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_29_13(v3);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v5);
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_13_15();
  v8 = OUTLINED_FUNCTION_36(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6_30();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  v10 = OUTLINED_FUNCTION_36(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4_28();
  v12 = type metadata accessor for LiveRadioGridLockup();
  OUTLINED_FUNCTION_51_3(v12);
  OUTLINED_FUNCTION_69_8();
  v15 = sub_2168AED64(v13, v14);
  OUTLINED_FUNCTION_88_4(v15);
  OUTLINED_FUNCTION_62_4();
  OUTLINED_FUNCTION_91_8(v16, v17);
  v18 = OUTLINED_FUNCTION_86_7();
  OUTLINED_FUNCTION_96_2(v18, &qword_27CAB6DB0, v1[10]);
  OUTLINED_FUNCTION_79_9();
  if (v19)
  {
    sub_216697664(&v58, &qword_27CAB6DB0);
    OUTLINED_FUNCTION_97_4();
  }

  else
  {
    sub_216697664(v57, &qword_27CAB6DB0);
  }

  v20 = OUTLINED_FUNCTION_49_10();
  OUTLINED_FUNCTION_25_13(v20);
  OUTLINED_FUNCTION_98_6(&off_28293DDA0);
  OUTLINED_FUNCTION_62_4();
  sub_2168AEDA8(v0, v21, v22);
  OUTLINED_FUNCTION_46_11();
  v23 = OUTLINED_FUNCTION_20_17();
  OUTLINED_FUNCTION_27_15(v23, v1[11]);
  OUTLINED_FUNCTION_33_16();
  OUTLINED_FUNCTION_69_8();
  v26 = sub_2168AED64(v24, v25);
  v27 = OUTLINED_FUNCTION_88_4(v26);
  OUTLINED_FUNCTION_44_13(v27);
  v28 = OUTLINED_FUNCTION_86_7();
  OUTLINED_FUNCTION_31_18(v28, v1[12]);
  v29 = OUTLINED_FUNCTION_17_24();
  OUTLINED_FUNCTION_90_5(v29, v30);
  OUTLINED_FUNCTION_0_57();
  OUTLINED_FUNCTION_105_4(v31, v32, v33);
  OUTLINED_FUNCTION_32_14();
  OUTLINED_FUNCTION_30_13(v1[9]);
  if (v57[3])
  {
    OUTLINED_FUNCTION_8_24();
    sub_21700CE54();
    OUTLINED_FUNCTION_26_18();
    OUTLINED_FUNCTION_3_44();
    sub_21700D6C4();
    v34 = OUTLINED_FUNCTION_11_24();
    v35(v34);
    v36 = OUTLINED_FUNCTION_10_20();
    v37(v36);
    v38 = __swift_destroy_boxed_opaque_existential_1Tm(v57);
    OUTLINED_FUNCTION_87_6(v38, v39, &qword_27CAB6A00);
    type metadata accessor for MenuConfiguration(0);
    OUTLINED_FUNCTION_0_57();
    OUTLINED_FUNCTION_89_8(v40, v41);
    OUTLINED_FUNCTION_2_38();
    v42 = OUTLINED_FUNCTION_35_12();
    sub_2166A6F60(v42, v43, v44);
  }

  else
  {
    v45 = OUTLINED_FUNCTION_38_9();
    OUTLINED_FUNCTION_87_6(v45, v46, &qword_27CAB6A00);
    type metadata accessor for MenuConfiguration(0);
    OUTLINED_FUNCTION_0_57();
    OUTLINED_FUNCTION_89_8(v47, v48);
    OUTLINED_FUNCTION_2_38();
    v49 = OUTLINED_FUNCTION_21_18();
    sub_2166A6F60(v49, v50, v51);
    OUTLINED_FUNCTION_50_8();
  }

  sub_21700DF14();
  OUTLINED_FUNCTION_37_13();
  sub_216697664(v52, v53);
  OUTLINED_FUNCTION_1_44();
  sub_2168AE788(v2, v54);
  OUTLINED_FUNCTION_41_10();
  OUTLINED_FUNCTION_40_8();
  OUTLINED_FUNCTION_37_13();
  sub_216697664(v55, v56);
  type metadata accessor for MenuConfiguration(0);
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_26();
}

void sub_2168A63BC()
{
  OUTLINED_FUNCTION_49();
  v45 = v3;
  OUTLINED_FUNCTION_8_1();
  sub_21700D704();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_99_7();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_13_15();
  v7 = OUTLINED_FUNCTION_36(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_119_1();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  v9 = OUTLINED_FUNCTION_36(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4_28();
  v11 = type metadata accessor for TopSearchLockup();
  OUTLINED_FUNCTION_51_3(v11);
  v12 = sub_2168AED64(&qword_280E41CE0, type metadata accessor for TopSearchLockup);
  v13 = OUTLINED_FUNCTION_88_4(v12);
  OUTLINED_FUNCTION_76_6(v13);
  v14 = OUTLINED_FUNCTION_86_7();
  OUTLINED_FUNCTION_96_2(v14, &qword_27CAB6DB0, v1[17]);
  if (v47)
  {
    sub_216697664(&v48, &qword_27CAB6DB0);
    OUTLINED_FUNCTION_97_4();
  }

  else
  {
    sub_216697664(v46, &qword_27CAB6DB0);
  }

  v15 = OUTLINED_FUNCTION_49_10();
  OUTLINED_FUNCTION_25_13(v15);
  v16 = OUTLINED_FUNCTION_98_6(&off_282927618);
  OUTLINED_FUNCTION_76_6(v16);
  OUTLINED_FUNCTION_102_5();
  v17 = OUTLINED_FUNCTION_20_17();
  v18 = OUTLINED_FUNCTION_43_11(v17, v1[18]);
  OUTLINED_FUNCTION_104_4(v18, v19);
  v20 = OUTLINED_FUNCTION_17_24();
  OUTLINED_FUNCTION_104_4(v20, v21);
  OUTLINED_FUNCTION_0_57();
  sub_2168AEDA8(v45, v2, v22);
  v23 = OUTLINED_FUNCTION_42_13();
  OUTLINED_FUNCTION_104_4(v23, v24);
  OUTLINED_FUNCTION_104_4(v0 + v1[6], v46);
  if (v47)
  {
    OUTLINED_FUNCTION_8_24();
    sub_21700CE54();
    OUTLINED_FUNCTION_123_2();
    OUTLINED_FUNCTION_3_44();
    sub_21700D6C4();
    v25 = OUTLINED_FUNCTION_47_11();
    v26(v25);
    v27 = OUTLINED_FUNCTION_45_11();
    v28(v27);
    v29 = __swift_destroy_boxed_opaque_existential_1Tm(v46);
    OUTLINED_FUNCTION_87_6(v29, v30, &qword_27CAB6A00);
    v31 = type metadata accessor for MenuConfiguration(0);
    OUTLINED_FUNCTION_0_57();
    OUTLINED_FUNCTION_112_4(v32, v33);
    OUTLINED_FUNCTION_12_22();
    v34 = OUTLINED_FUNCTION_35_12();
    sub_2166A6F60(v34, v35, v36);
  }

  else
  {
    v37 = OUTLINED_FUNCTION_38_9();
    OUTLINED_FUNCTION_87_6(v37, v38, &qword_27CAB6A00);
    v31 = type metadata accessor for MenuConfiguration(0);
    OUTLINED_FUNCTION_0_57();
    OUTLINED_FUNCTION_112_4(v39, v40);
    OUTLINED_FUNCTION_12_22();
    v41 = OUTLINED_FUNCTION_21_18();
    sub_2166A6F60(v41, v42, v43);
    OUTLINED_FUNCTION_50_8();
  }

  sub_21700DF14();
  OUTLINED_FUNCTION_110_3();
  OUTLINED_FUNCTION_1_44();
  sub_2168AE788(v2, v44);
  OUTLINED_FUNCTION_113_5();
  OUTLINED_FUNCTION_114_4();
  OUTLINED_FUNCTION_115_4();
  type metadata accessor for MenuConfiguration(0);
  OUTLINED_FUNCTION_23_13(*(v31 + 36));
  OUTLINED_FUNCTION_26();
}

void sub_2168A6778()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_8_1();
  sub_21700D704();
  OUTLINED_FUNCTION_1();
  v63 = v5;
  v64 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v6);
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_13_15();
  v9 = OUTLINED_FUNCTION_36(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_6_30();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  v11 = OUTLINED_FUNCTION_36(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4_28();
  v13 = type metadata accessor for PosterLockup();
  OUTLINED_FUNCTION_51_3(v13);
  OUTLINED_FUNCTION_74_7();
  v16 = sub_2168AED64(v14, v15);
  OUTLINED_FUNCTION_88_4(v16);
  OUTLINED_FUNCTION_64_8();
  OUTLINED_FUNCTION_91_8(v17, v18);
  v19 = OUTLINED_FUNCTION_86_7();
  OUTLINED_FUNCTION_96_2(v19, &qword_27CAB6DB0, *(v2 + 56));
  if (v66)
  {
    sub_216697664(v68, &qword_27CAB6DB0);
    OUTLINED_FUNCTION_97_4();
  }

  else
  {
    sub_216697664(v65, &qword_27CAB6DB0);
  }

  v20 = OUTLINED_FUNCTION_49_10();
  OUTLINED_FUNCTION_25_13(v20);
  OUTLINED_FUNCTION_98_6(&off_28291C010);
  OUTLINED_FUNCTION_64_8();
  v22 = v21;
  sub_2168AEDA8(v1, v23, v21);
  OUTLINED_FUNCTION_102_5();
  v24 = OUTLINED_FUNCTION_20_17();
  v25 = OUTLINED_FUNCTION_43_11(v24, *(v2 + 60));
  OUTLINED_FUNCTION_104_4(v25, v26);
  OUTLINED_FUNCTION_33_16();
  OUTLINED_FUNCTION_74_7();
  v29 = sub_2168AED64(v27, v28);
  OUTLINED_FUNCTION_88_4(v29);
  v30 = OUTLINED_FUNCTION_42_0();
  sub_2168AEDA8(v30, v31, v22);
  OUTLINED_FUNCTION_86_7();
  sub_21700DF14();
  v32 = OUTLINED_FUNCTION_17_24();
  OUTLINED_FUNCTION_104_4(v32, v33);
  OUTLINED_FUNCTION_0_57();
  OUTLINED_FUNCTION_105_4(v34, v35, v36);
  v37 = OUTLINED_FUNCTION_42_13();
  sub_2166A6F60(v37, v38, v39);
  sub_21691A23C(v65);
  v40 = v66;
  if (!v66)
  {
    v54 = sub_216697664(v65, &qword_27CAB6DB0);
    OUTLINED_FUNCTION_87_6(v54, v55, &qword_27CAB6A00);
    v48 = type metadata accessor for MenuConfiguration(0);
    OUTLINED_FUNCTION_0_57();
    OUTLINED_FUNCTION_89_8(v56, v57);
    OUTLINED_FUNCTION_84_8();
    v58 = OUTLINED_FUNCTION_21_18();
    sub_2166A6F60(v58, v59, v60);
LABEL_8:
    v41 = 0;
    v43 = 0xE000000000000000;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_109_3();
  OUTLINED_FUNCTION_26_18();
  OUTLINED_FUNCTION_3_44();
  v41 = sub_21700D6C4();
  v43 = v42;
  (*(v63 + 8))(v40, v64);
  v44 = OUTLINED_FUNCTION_10_20();
  v45(v44);
  v46 = __swift_destroy_boxed_opaque_existential_1Tm(v65);
  OUTLINED_FUNCTION_87_6(v46, v47, &qword_27CAB6A00);
  v48 = type metadata accessor for MenuConfiguration(0);
  OUTLINED_FUNCTION_0_57();
  OUTLINED_FUNCTION_89_8(v49, v50);
  OUTLINED_FUNCTION_84_8();
  v51 = OUTLINED_FUNCTION_35_12();
  sub_2166A6F60(v51, v52, v53);
  if (!v43)
  {
    goto LABEL_8;
  }

LABEL_9:
  sub_21700DF14();
  OUTLINED_FUNCTION_125_2(&v67);
  OUTLINED_FUNCTION_1_44();
  sub_2168AE788(v3, v61);
  OUTLINED_FUNCTION_41_10();
  OUTLINED_FUNCTION_40_8();
  OUTLINED_FUNCTION_125_2(v68);
  type metadata accessor for MenuConfiguration(0);
  v62 = (v0 + *(v48 + 36));
  *v62 = v41;
  v62[1] = v43;
  OUTLINED_FUNCTION_26();
}

uint64_t sub_2168A6BB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a1;
  v6 = sub_21700D704();
  v40 = *(v6 - 8);
  v41 = v6;
  MEMORY[0x28223BE20](v6);
  v38 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_21700D284();
  v37 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MenuContext(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v37 - v17;
  v52 = 0;
  memset(v51, 0, sizeof(v51));
  v19 = type metadata accessor for AlbumTrackLockup();
  v49 = v19;
  v50 = sub_2168AED64(&qword_27CABB110, type metadata accessor for AlbumTrackLockup);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v48);
  sub_2168AEDA8(v3, boxed_opaque_existential_1, type metadata accessor for AlbumTrackLockup);
  v21 = __swift_project_boxed_opaque_existential_1(v48, v49);
  sub_2166A6F60(v21 + v19[23], &v45, &qword_27CAB6DB0);
  v44 = a2;
  if (v46)
  {
    sub_216697664(v51, &qword_27CAB6DB0);
    sub_2166A0F18(&v45, v51);
  }

  else
  {
    sub_216697664(&v45, &qword_27CAB6DB0);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v48);
  v22 = type metadata accessor for ContentDescriptor();
  __swift_storeEnumTagSinglePayload(v18, 1, 1, v22);
  v46 = v19;
  v47 = &off_282928B80;
  v23 = __swift_allocate_boxed_opaque_existential_1(&v45);
  sub_2168AEDA8(v3, v23, type metadata accessor for AlbumTrackLockup);
  sub_216697664(v18, &qword_27CAB6A00);
  sub_2166A0F18(&v45, v48);
  v24 = __swift_project_boxed_opaque_existential_1(v48, v49);
  sub_2166A6F60(v24 + v19[26], v18, &qword_27CAB6A00);
  __swift_destroy_boxed_opaque_existential_1Tm(v48);
  v49 = v19;
  v50 = sub_2168AED64(&qword_27CABB118, type metadata accessor for AlbumTrackLockup);
  v25 = __swift_allocate_boxed_opaque_existential_1(v48);
  sub_2168AEDA8(v3, v25, type metadata accessor for AlbumTrackLockup);
  v26 = (__swift_project_boxed_opaque_existential_1(v48, v49) + v19[24]);
  v27 = v26[1];
  v42 = *v26;
  sub_21700DF14();
  __swift_destroy_boxed_opaque_existential_1Tm(v48);
  sub_2166A6F60(v18, v16, &qword_27CAB6A00);
  sub_2168AEDA8(v43, v12, type metadata accessor for MenuContext);
  sub_2166A6F60(v51, v48, &qword_27CAB6DB0);
  sub_2166A6F60(v3 + v19[6], &v45, &qword_27CAB6DB0);
  if (!v46)
  {
    sub_216697664(&v45, &qword_27CAB6DB0);
    sub_2166A6F60(v16, a3, &qword_27CAB6A00);
    v32 = type metadata accessor for MenuConfiguration(0);
    sub_2168AEDA8(v12, a3 + v32[5], type metadata accessor for MenuContext);
    v34 = (a3 + v32[6]);
    *v34 = v42;
    v34[1] = v27;
    *(a3 + v32[7]) = v44;
    sub_2166A6F60(v48, a3 + v32[8], &qword_27CAB6DB0);
LABEL_8:
    v29 = 0;
    v31 = 0xE000000000000000;
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(&v45, v46);
  sub_21700CE54();
  v28 = v38;
  sub_21700D274();
  v29 = sub_21700D6C4();
  v31 = v30;
  (*(v40 + 8))(v28, v41);
  (*(v37 + 8))(v9, v39);
  __swift_destroy_boxed_opaque_existential_1Tm(&v45);
  sub_2166A6F60(v16, a3, &qword_27CAB6A00);
  v32 = type metadata accessor for MenuConfiguration(0);
  sub_2168AEDA8(v12, a3 + v32[5], type metadata accessor for MenuContext);
  v33 = (a3 + v32[6]);
  *v33 = v42;
  v33[1] = v27;
  *(a3 + v32[7]) = v44;
  sub_2166A6F60(v48, a3 + v32[8], &qword_27CAB6DB0);
  if (!v31)
  {
    goto LABEL_8;
  }

LABEL_9:
  sub_21700DF14();
  sub_216697664(v48, &qword_27CAB6DB0);
  sub_2168AE788(v12, type metadata accessor for MenuContext);
  sub_216697664(v16, &qword_27CAB6A00);
  sub_216697664(v18, &qword_27CAB6A00);
  sub_216697664(v51, &qword_27CAB6DB0);
  result = type metadata accessor for MenuConfiguration(0);
  v36 = (a3 + v32[9]);
  *v36 = v29;
  v36[1] = v31;
  return result;
}

void sub_2168A72B4()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_29_13(v3);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v5);
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_13_15();
  v8 = OUTLINED_FUNCTION_36(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6_30();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  v10 = OUTLINED_FUNCTION_36(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4_28();
  v12 = type metadata accessor for FlowcaseLockup();
  OUTLINED_FUNCTION_51_3(v12);
  OUTLINED_FUNCTION_72_8();
  v15 = sub_2168AED64(v13, v14);
  OUTLINED_FUNCTION_88_4(v15);
  OUTLINED_FUNCTION_61_5();
  OUTLINED_FUNCTION_91_8(v16, v17);
  v18 = OUTLINED_FUNCTION_78_6();
  OUTLINED_FUNCTION_96_2(v18, &qword_27CAB6DB0, v19);
  OUTLINED_FUNCTION_79_9();
  if (v20)
  {
    sub_216697664(&v59, &qword_27CAB6DB0);
    OUTLINED_FUNCTION_97_4();
  }

  else
  {
    sub_216697664(v58, &qword_27CAB6DB0);
  }

  v21 = OUTLINED_FUNCTION_49_10();
  OUTLINED_FUNCTION_25_13(v21);
  OUTLINED_FUNCTION_98_6(&off_28291F4B0);
  OUTLINED_FUNCTION_61_5();
  sub_2168AEDA8(v0, v22, v23);
  OUTLINED_FUNCTION_46_11();
  v24 = OUTLINED_FUNCTION_20_17();
  OUTLINED_FUNCTION_27_15(v24, v1[16]);
  OUTLINED_FUNCTION_33_16();
  OUTLINED_FUNCTION_72_8();
  v27 = sub_2168AED64(v25, v26);
  v28 = OUTLINED_FUNCTION_88_4(v27);
  OUTLINED_FUNCTION_44_13(v28);
  v29 = OUTLINED_FUNCTION_86_7();
  OUTLINED_FUNCTION_31_18(v29, v1[17]);
  v30 = OUTLINED_FUNCTION_17_24();
  OUTLINED_FUNCTION_90_5(v30, v31);
  OUTLINED_FUNCTION_0_57();
  OUTLINED_FUNCTION_105_4(v32, v33, v34);
  OUTLINED_FUNCTION_32_14();
  OUTLINED_FUNCTION_30_13(v1[6]);
  if (v58[3])
  {
    OUTLINED_FUNCTION_8_24();
    sub_21700CE54();
    OUTLINED_FUNCTION_26_18();
    OUTLINED_FUNCTION_3_44();
    sub_21700D6C4();
    v35 = OUTLINED_FUNCTION_11_24();
    v36(v35);
    v37 = OUTLINED_FUNCTION_10_20();
    v38(v37);
    v39 = __swift_destroy_boxed_opaque_existential_1Tm(v58);
    OUTLINED_FUNCTION_87_6(v39, v40, &qword_27CAB6A00);
    type metadata accessor for MenuConfiguration(0);
    OUTLINED_FUNCTION_0_57();
    OUTLINED_FUNCTION_89_8(v41, v42);
    OUTLINED_FUNCTION_2_38();
    v43 = OUTLINED_FUNCTION_35_12();
    sub_2166A6F60(v43, v44, v45);
  }

  else
  {
    v46 = OUTLINED_FUNCTION_38_9();
    OUTLINED_FUNCTION_87_6(v46, v47, &qword_27CAB6A00);
    type metadata accessor for MenuConfiguration(0);
    OUTLINED_FUNCTION_0_57();
    OUTLINED_FUNCTION_89_8(v48, v49);
    OUTLINED_FUNCTION_2_38();
    v50 = OUTLINED_FUNCTION_21_18();
    sub_2166A6F60(v50, v51, v52);
    OUTLINED_FUNCTION_50_8();
  }

  sub_21700DF14();
  OUTLINED_FUNCTION_37_13();
  sub_216697664(v53, v54);
  OUTLINED_FUNCTION_1_44();
  sub_2168AE788(v2, v55);
  OUTLINED_FUNCTION_41_10();
  OUTLINED_FUNCTION_40_8();
  OUTLINED_FUNCTION_37_13();
  sub_216697664(v56, v57);
  type metadata accessor for MenuConfiguration(0);
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_26();
}

void sub_2168A7698()
{
  OUTLINED_FUNCTION_49();
  v45 = v3;
  OUTLINED_FUNCTION_8_1();
  sub_21700D704();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_99_7();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_13_15();
  v7 = OUTLINED_FUNCTION_36(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_119_1();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  v9 = OUTLINED_FUNCTION_36(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4_28();
  v11 = type metadata accessor for RecentSearchLockup();
  OUTLINED_FUNCTION_51_3(v11);
  v12 = sub_2168AED64(&qword_27CAB7458, type metadata accessor for RecentSearchLockup);
  v13 = OUTLINED_FUNCTION_88_4(v12);
  OUTLINED_FUNCTION_77_7(v13);
  v14 = OUTLINED_FUNCTION_86_7();
  OUTLINED_FUNCTION_96_2(v14, &qword_27CAB6DB0, *(v1 + 48));
  if (v47)
  {
    sub_216697664(&v48, &qword_27CAB6DB0);
    OUTLINED_FUNCTION_97_4();
  }

  else
  {
    sub_216697664(v46, &qword_27CAB6DB0);
  }

  v15 = OUTLINED_FUNCTION_49_10();
  OUTLINED_FUNCTION_25_13(v15);
  v16 = OUTLINED_FUNCTION_98_6(&off_28291B398);
  OUTLINED_FUNCTION_77_7(v16);
  OUTLINED_FUNCTION_102_5();
  v17 = OUTLINED_FUNCTION_20_17();
  v18 = OUTLINED_FUNCTION_43_11(v17, *(v1 + 52));
  OUTLINED_FUNCTION_104_4(v18, v19);
  v20 = OUTLINED_FUNCTION_17_24();
  OUTLINED_FUNCTION_104_4(v20, v21);
  OUTLINED_FUNCTION_0_57();
  sub_2168AEDA8(v45, v2, v22);
  v23 = OUTLINED_FUNCTION_42_13();
  OUTLINED_FUNCTION_111_3(v23, v24);
  OUTLINED_FUNCTION_111_3(v0 + 40, v46);
  if (v47)
  {
    OUTLINED_FUNCTION_8_24();
    sub_21700CE54();
    OUTLINED_FUNCTION_123_2();
    OUTLINED_FUNCTION_3_44();
    sub_21700D6C4();
    v25 = OUTLINED_FUNCTION_47_11();
    v26(v25);
    v27 = OUTLINED_FUNCTION_45_11();
    v28(v27);
    v29 = __swift_destroy_boxed_opaque_existential_1Tm(v46);
    OUTLINED_FUNCTION_87_6(v29, v30, &qword_27CAB6A00);
    v31 = type metadata accessor for MenuConfiguration(0);
    OUTLINED_FUNCTION_0_57();
    OUTLINED_FUNCTION_112_4(v32, v33);
    OUTLINED_FUNCTION_12_22();
    v34 = OUTLINED_FUNCTION_35_12();
    sub_2166A6F60(v34, v35, v36);
  }

  else
  {
    v37 = OUTLINED_FUNCTION_38_9();
    OUTLINED_FUNCTION_87_6(v37, v38, &qword_27CAB6A00);
    v31 = type metadata accessor for MenuConfiguration(0);
    OUTLINED_FUNCTION_0_57();
    OUTLINED_FUNCTION_112_4(v39, v40);
    OUTLINED_FUNCTION_12_22();
    v41 = OUTLINED_FUNCTION_21_18();
    sub_2166A6F60(v41, v42, v43);
    OUTLINED_FUNCTION_50_8();
  }

  sub_21700DF14();
  OUTLINED_FUNCTION_110_3();
  OUTLINED_FUNCTION_1_44();
  sub_2168AE788(v2, v44);
  OUTLINED_FUNCTION_113_5();
  OUTLINED_FUNCTION_114_4();
  OUTLINED_FUNCTION_115_4();
  type metadata accessor for MenuConfiguration(0);
  OUTLINED_FUNCTION_23_13(*(v31 + 36));
  OUTLINED_FUNCTION_26();
}

void sub_2168A7A50()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_29_13(v3);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v5);
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_13_15();
  v8 = OUTLINED_FUNCTION_36(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6_30();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  v10 = OUTLINED_FUNCTION_36(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4_28();
  v12 = type metadata accessor for SuperHeroLockup();
  OUTLINED_FUNCTION_51_3(v12);
  OUTLINED_FUNCTION_71_8();
  v15 = sub_2168AED64(v13, v14);
  OUTLINED_FUNCTION_88_4(v15);
  OUTLINED_FUNCTION_59_6();
  OUTLINED_FUNCTION_91_8(v16, v17);
  v18 = OUTLINED_FUNCTION_86_7();
  OUTLINED_FUNCTION_96_2(v18, &qword_27CAB6DB0, v1[23]);
  OUTLINED_FUNCTION_79_9();
  if (v19)
  {
    sub_216697664(&v58, &qword_27CAB6DB0);
    OUTLINED_FUNCTION_97_4();
  }

  else
  {
    sub_216697664(v57, &qword_27CAB6DB0);
  }

  v20 = OUTLINED_FUNCTION_49_10();
  OUTLINED_FUNCTION_25_13(v20);
  OUTLINED_FUNCTION_98_6(&off_282928FE8);
  OUTLINED_FUNCTION_59_6();
  sub_2168AEDA8(v0, v21, v22);
  OUTLINED_FUNCTION_46_11();
  v23 = OUTLINED_FUNCTION_20_17();
  OUTLINED_FUNCTION_27_15(v23, v1[24]);
  OUTLINED_FUNCTION_33_16();
  OUTLINED_FUNCTION_71_8();
  v26 = sub_2168AED64(v24, v25);
  v27 = OUTLINED_FUNCTION_88_4(v26);
  OUTLINED_FUNCTION_44_13(v27);
  v28 = OUTLINED_FUNCTION_86_7();
  OUTLINED_FUNCTION_31_18(v28, v1[25]);
  v29 = OUTLINED_FUNCTION_17_24();
  OUTLINED_FUNCTION_90_5(v29, v30);
  OUTLINED_FUNCTION_0_57();
  OUTLINED_FUNCTION_105_4(v31, v32, v33);
  OUTLINED_FUNCTION_32_14();
  OUTLINED_FUNCTION_30_13(v1[6]);
  if (v57[3])
  {
    OUTLINED_FUNCTION_8_24();
    sub_21700CE54();
    OUTLINED_FUNCTION_26_18();
    OUTLINED_FUNCTION_3_44();
    sub_21700D6C4();
    v34 = OUTLINED_FUNCTION_11_24();
    v35(v34);
    v36 = OUTLINED_FUNCTION_10_20();
    v37(v36);
    v38 = __swift_destroy_boxed_opaque_existential_1Tm(v57);
    OUTLINED_FUNCTION_87_6(v38, v39, &qword_27CAB6A00);
    type metadata accessor for MenuConfiguration(0);
    OUTLINED_FUNCTION_0_57();
    OUTLINED_FUNCTION_89_8(v40, v41);
    OUTLINED_FUNCTION_2_38();
    v42 = OUTLINED_FUNCTION_35_12();
    sub_2166A6F60(v42, v43, v44);
  }

  else
  {
    v45 = OUTLINED_FUNCTION_38_9();
    OUTLINED_FUNCTION_87_6(v45, v46, &qword_27CAB6A00);
    type metadata accessor for MenuConfiguration(0);
    OUTLINED_FUNCTION_0_57();
    OUTLINED_FUNCTION_89_8(v47, v48);
    OUTLINED_FUNCTION_2_38();
    v49 = OUTLINED_FUNCTION_21_18();
    sub_2166A6F60(v49, v50, v51);
    OUTLINED_FUNCTION_50_8();
  }

  sub_21700DF14();
  OUTLINED_FUNCTION_37_13();
  sub_216697664(v52, v53);
  OUTLINED_FUNCTION_1_44();
  sub_2168AE788(v2, v54);
  OUTLINED_FUNCTION_41_10();
  OUTLINED_FUNCTION_40_8();
  OUTLINED_FUNCTION_37_13();
  sub_216697664(v55, v56);
  type metadata accessor for MenuConfiguration(0);
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_26();
}

void sub_2168A7E38()
{
  OUTLINED_FUNCTION_49();
  v51 = v3;
  v52 = v4;
  sub_21700D704();
  OUTLINED_FUNCTION_1();
  v49 = v6;
  v50 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  v48 = OUTLINED_FUNCTION_99_7();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_13_15();
  v9 = OUTLINED_FUNCTION_36(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  v14 = OUTLINED_FUNCTION_36(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_77();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_56_2();
  v19 = type metadata accessor for ContentDescriptor();
  memset(v57, 0, sizeof(v57));
  v58 = 0;
  OUTLINED_FUNCTION_88(v1, v20, v21, v19);
  v22 = type metadata accessor for BubbleLockup();
  v54 = v22;
  v55 = &off_28293B7B8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v53);
  sub_2168AEDA8(v0, boxed_opaque_existential_1, type metadata accessor for BubbleLockup);
  OUTLINED_FUNCTION_102_5();
  v24 = OUTLINED_FUNCTION_20_17();
  v25 = OUTLINED_FUNCTION_43_11(v24, v22[10]);
  OUTLINED_FUNCTION_104_4(v25, v26);
  __swift_destroy_boxed_opaque_existential_1Tm(v56);
  v56[3] = v22;
  v27 = sub_2168AED64(&qword_27CABB260, type metadata accessor for BubbleLockup);
  OUTLINED_FUNCTION_88_4(v27);
  v28 = OUTLINED_FUNCTION_42_0();
  sub_2168AEDA8(v28, v29, type metadata accessor for BubbleLockup);
  v30 = *(OUTLINED_FUNCTION_86_7() + v22[14] + 8);
  sub_21700DF14();
  __swift_destroy_boxed_opaque_existential_1Tm(v56);
  OUTLINED_FUNCTION_104_4(v1, v17);
  OUTLINED_FUNCTION_0_57();
  sub_2168AEDA8(v51, v12, v31);
  v32 = OUTLINED_FUNCTION_42_13();
  OUTLINED_FUNCTION_104_4(v32, v33);
  OUTLINED_FUNCTION_104_4(v0 + v22[6], v53);
  if (v54)
  {
    OUTLINED_FUNCTION_109_3();
    OUTLINED_FUNCTION_123_2();
    OUTLINED_FUNCTION_3_44();
    v34 = sub_21700D6C4();
    v36 = v35;
    (*(v49 + 8))(v2, v50);
    v37 = OUTLINED_FUNCTION_45_11();
    v38(v37, v48);
    __swift_destroy_boxed_opaque_existential_1Tm(v53);
    sub_2166A6F60(v17, v52, &qword_27CAB6A00);
    v39 = type metadata accessor for MenuConfiguration(0);
    OUTLINED_FUNCTION_0_57();
    sub_2168AEDA8(v12, v52 + v40, v41);
    OUTLINED_FUNCTION_120_3((v52 + v39[6]));
    *(v52 + v42) = v30;
    sub_2166A6F60(v56, v52 + v39[8], &qword_27CAB6DB0);
    if (!v36)
    {
      v34 = 0;
      v36 = 0xE000000000000000;
    }
  }

  else
  {
    sub_216697664(v53, &qword_27CAB6DB0);
    sub_2166A6F60(v17, v52, &qword_27CAB6A00);
    v39 = type metadata accessor for MenuConfiguration(0);
    OUTLINED_FUNCTION_0_57();
    sub_2168AEDA8(v12, v52 + v43, v44);
    OUTLINED_FUNCTION_120_3((v52 + v39[6]));
    *(v52 + v45) = v30;
    sub_2166A6F60(v56, v52 + v39[8], &qword_27CAB6DB0);
    v34 = 0;
    v36 = 0xE000000000000000;
  }

  sub_21700DF14();
  OUTLINED_FUNCTION_125_2(v56);
  OUTLINED_FUNCTION_1_44();
  sub_2168AE788(v12, v46);
  sub_216697664(v17, &qword_27CAB6A00);
  OUTLINED_FUNCTION_40_8();
  OUTLINED_FUNCTION_125_2(v57);
  type metadata accessor for MenuConfiguration(0);
  v47 = (v52 + v39[9]);
  *v47 = v34;
  v47[1] = v36;
  OUTLINED_FUNCTION_26();
}

void sub_2168A82D8()
{
  OUTLINED_FUNCTION_49();
  v42 = v2;
  v4 = v3;
  v5 = OUTLINED_FUNCTION_8_1();
  v6 = type metadata accessor for MenuContext(v5);
  v7 = OUTLINED_FUNCTION_36(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  v12 = OUTLINED_FUNCTION_36(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_77();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v41 - v17;
  v48 = 0;
  memset(v47, 0, sizeof(v47));
  v19 = type metadata accessor for SplitPosterLockup.Item(0);
  v46[3] = v19;
  v20 = sub_2168AED64(&qword_27CABB310, type metadata accessor for SplitPosterLockup.Item);
  OUTLINED_FUNCTION_88_4(v20);
  OUTLINED_FUNCTION_52_7();
  sub_2168AEDA8(v1, v21, v22);
  v23 = OUTLINED_FUNCTION_86_7();
  OUTLINED_FUNCTION_96_2(v23, &qword_27CAB6DB0, *(v19 + 40));
  if (v44)
  {
    sub_216697664(v47, &qword_27CAB6DB0);
    OUTLINED_FUNCTION_97_4();
  }

  else
  {
    sub_216697664(v43, &qword_27CAB6DB0);
  }

  v24 = OUTLINED_FUNCTION_49_10();
  OUTLINED_FUNCTION_88(v18, v25, v26, v24);
  v44 = v19;
  v45 = &off_2829163B8;
  __swift_allocate_boxed_opaque_existential_1(v43);
  OUTLINED_FUNCTION_52_7();
  sub_2168AEDA8(v1, v27, v28);
  sub_216697664(v18, &qword_27CAB6A00);
  v29 = OUTLINED_FUNCTION_20_17();
  sub_2166A6F60(v29 + *(v19 + 20), v18, &qword_27CAB6A00);
  __swift_destroy_boxed_opaque_existential_1Tm(v46);
  OUTLINED_FUNCTION_37_13();
  sub_2166A6F60(v30, v31, v32);
  sub_2168AEDA8(v4, v10, type metadata accessor for MenuContext);
  v33 = OUTLINED_FUNCTION_42_13();
  sub_2166A6F60(v33, v34, &qword_27CAB6DB0);
  sub_2166A6F60(v15, v0, &qword_27CAB6A00);
  v35 = type metadata accessor for MenuConfiguration(0);
  sub_2168AEDA8(v10, v0 + v35[5], type metadata accessor for MenuContext);
  v36 = (v0 + v35[6]);
  *v36 = 0;
  v36[1] = 0;
  *(v0 + v35[7]) = v42;
  v37 = OUTLINED_FUNCTION_35_12();
  sub_2166A6F60(v37, v38, &qword_27CAB6DB0);
  sub_21700DF14();
  sub_216697664(v46, &qword_27CAB6DB0);
  OUTLINED_FUNCTION_1_44();
  sub_2168AE788(v10, v39);
  sub_216697664(v15, &qword_27CAB6A00);
  sub_216697664(v18, &qword_27CAB6A00);
  sub_216697664(v47, &qword_27CAB6DB0);
  v40 = (v0 + v35[9]);
  *v40 = 0;
  v40[1] = 0xE000000000000000;
  OUTLINED_FUNCTION_26();
}

void sub_2168A85FC()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_29_13(v3);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v5);
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_13_15();
  v8 = OUTLINED_FUNCTION_36(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6_30();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  v10 = OUTLINED_FUNCTION_36(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4_28();
  v12 = type metadata accessor for VerticalVideoLockup();
  OUTLINED_FUNCTION_51_3(v12);
  OUTLINED_FUNCTION_70_5();
  v15 = sub_2168AED64(v13, v14);
  OUTLINED_FUNCTION_88_4(v15);
  OUTLINED_FUNCTION_66_9();
  OUTLINED_FUNCTION_91_8(v16, v17);
  v18 = OUTLINED_FUNCTION_86_7();
  OUTLINED_FUNCTION_96_2(v18, &qword_27CAB6DB0, v1[14]);
  OUTLINED_FUNCTION_79_9();
  if (v19)
  {
    sub_216697664(&v58, &qword_27CAB6DB0);
    OUTLINED_FUNCTION_97_4();
  }

  else
  {
    sub_216697664(v57, &qword_27CAB6DB0);
  }

  v20 = OUTLINED_FUNCTION_49_10();
  OUTLINED_FUNCTION_25_13(v20);
  OUTLINED_FUNCTION_98_6(&off_282930770);
  OUTLINED_FUNCTION_66_9();
  sub_2168AEDA8(v0, v21, v22);
  OUTLINED_FUNCTION_46_11();
  v23 = OUTLINED_FUNCTION_20_17();
  OUTLINED_FUNCTION_27_15(v23, v1[15]);
  OUTLINED_FUNCTION_33_16();
  OUTLINED_FUNCTION_70_5();
  v26 = sub_2168AED64(v24, v25);
  v27 = OUTLINED_FUNCTION_88_4(v26);
  OUTLINED_FUNCTION_44_13(v27);
  v28 = OUTLINED_FUNCTION_86_7();
  OUTLINED_FUNCTION_31_18(v28, v1[16]);
  v29 = OUTLINED_FUNCTION_17_24();
  OUTLINED_FUNCTION_90_5(v29, v30);
  OUTLINED_FUNCTION_0_57();
  OUTLINED_FUNCTION_105_4(v31, v32, v33);
  OUTLINED_FUNCTION_32_14();
  OUTLINED_FUNCTION_30_13(v1[6]);
  if (v57[3])
  {
    OUTLINED_FUNCTION_8_24();
    sub_21700CE54();
    OUTLINED_FUNCTION_26_18();
    OUTLINED_FUNCTION_3_44();
    sub_21700D6C4();
    v34 = OUTLINED_FUNCTION_11_24();
    v35(v34);
    v36 = OUTLINED_FUNCTION_10_20();
    v37(v36);
    v38 = __swift_destroy_boxed_opaque_existential_1Tm(v57);
    OUTLINED_FUNCTION_87_6(v38, v39, &qword_27CAB6A00);
    type metadata accessor for MenuConfiguration(0);
    OUTLINED_FUNCTION_0_57();
    OUTLINED_FUNCTION_89_8(v40, v41);
    OUTLINED_FUNCTION_2_38();
    v42 = OUTLINED_FUNCTION_35_12();
    sub_2166A6F60(v42, v43, v44);
  }

  else
  {
    v45 = OUTLINED_FUNCTION_38_9();
    OUTLINED_FUNCTION_87_6(v45, v46, &qword_27CAB6A00);
    type metadata accessor for MenuConfiguration(0);
    OUTLINED_FUNCTION_0_57();
    OUTLINED_FUNCTION_89_8(v47, v48);
    OUTLINED_FUNCTION_2_38();
    v49 = OUTLINED_FUNCTION_21_18();
    sub_2166A6F60(v49, v50, v51);
    OUTLINED_FUNCTION_50_8();
  }

  sub_21700DF14();
  OUTLINED_FUNCTION_37_13();
  sub_216697664(v52, v53);
  OUTLINED_FUNCTION_1_44();
  sub_2168AE788(v2, v54);
  OUTLINED_FUNCTION_41_10();
  OUTLINED_FUNCTION_40_8();
  OUTLINED_FUNCTION_37_13();
  sub_216697664(v55, v56);
  type metadata accessor for MenuConfiguration(0);
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_26();
}

void sub_2168A89E4()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_29_13(v3);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v5);
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_13_15();
  v8 = OUTLINED_FUNCTION_36(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6_30();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  v10 = OUTLINED_FUNCTION_36(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4_28();
  v12 = _s6LockupVMa();
  OUTLINED_FUNCTION_51_3(v12);
  OUTLINED_FUNCTION_68_7();
  v15 = sub_2168AED64(v13, v14);
  OUTLINED_FUNCTION_88_4(v15);
  OUTLINED_FUNCTION_57_10();
  OUTLINED_FUNCTION_91_8(v16, v17);
  v18 = OUTLINED_FUNCTION_86_7();
  OUTLINED_FUNCTION_96_2(v18, &qword_27CAB6DB0, v1[11]);
  OUTLINED_FUNCTION_79_9();
  if (v19)
  {
    sub_216697664(&v58, &qword_27CAB6DB0);
    OUTLINED_FUNCTION_97_4();
  }

  else
  {
    sub_216697664(v57, &qword_27CAB6DB0);
  }

  v20 = OUTLINED_FUNCTION_49_10();
  OUTLINED_FUNCTION_25_13(v20);
  OUTLINED_FUNCTION_98_6(&off_2829167C0);
  OUTLINED_FUNCTION_57_10();
  sub_2168AEDA8(v0, v21, v22);
  OUTLINED_FUNCTION_46_11();
  v23 = OUTLINED_FUNCTION_20_17();
  OUTLINED_FUNCTION_27_15(v23, v1[12]);
  OUTLINED_FUNCTION_33_16();
  OUTLINED_FUNCTION_68_7();
  v26 = sub_2168AED64(v24, v25);
  v27 = OUTLINED_FUNCTION_88_4(v26);
  OUTLINED_FUNCTION_44_13(v27);
  v28 = OUTLINED_FUNCTION_86_7();
  OUTLINED_FUNCTION_31_18(v28, v1[13]);
  v29 = OUTLINED_FUNCTION_17_24();
  OUTLINED_FUNCTION_90_5(v29, v30);
  OUTLINED_FUNCTION_0_57();
  OUTLINED_FUNCTION_105_4(v31, v32, v33);
  OUTLINED_FUNCTION_32_14();
  OUTLINED_FUNCTION_30_13(v1[8]);
  if (v57[3])
  {
    OUTLINED_FUNCTION_8_24();
    sub_21700CE54();
    OUTLINED_FUNCTION_26_18();
    OUTLINED_FUNCTION_3_44();
    sub_21700D6C4();
    v34 = OUTLINED_FUNCTION_11_24();
    v35(v34);
    v36 = OUTLINED_FUNCTION_10_20();
    v37(v36);
    v38 = __swift_destroy_boxed_opaque_existential_1Tm(v57);
    OUTLINED_FUNCTION_87_6(v38, v39, &qword_27CAB6A00);
    type metadata accessor for MenuConfiguration(0);
    OUTLINED_FUNCTION_0_57();
    OUTLINED_FUNCTION_89_8(v40, v41);
    OUTLINED_FUNCTION_2_38();
    v42 = OUTLINED_FUNCTION_35_12();
    sub_2166A6F60(v42, v43, v44);
  }

  else
  {
    v45 = OUTLINED_FUNCTION_38_9();
    OUTLINED_FUNCTION_87_6(v45, v46, &qword_27CAB6A00);
    type metadata accessor for MenuConfiguration(0);
    OUTLINED_FUNCTION_0_57();
    OUTLINED_FUNCTION_89_8(v47, v48);
    OUTLINED_FUNCTION_2_38();
    v49 = OUTLINED_FUNCTION_21_18();
    sub_2166A6F60(v49, v50, v51);
    OUTLINED_FUNCTION_50_8();
  }

  sub_21700DF14();
  OUTLINED_FUNCTION_37_13();
  sub_216697664(v52, v53);
  OUTLINED_FUNCTION_1_44();
  sub_2168AE788(v2, v54);
  OUTLINED_FUNCTION_41_10();
  OUTLINED_FUNCTION_40_8();
  OUTLINED_FUNCTION_37_13();
  sub_216697664(v55, v56);
  type metadata accessor for MenuConfiguration(0);
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_26();
}

void sub_2168A8DCC()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_29_13(v3);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v5);
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_13_15();
  v8 = OUTLINED_FUNCTION_36(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6_30();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  v10 = OUTLINED_FUNCTION_36(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4_28();
  v12 = type metadata accessor for HorizontalPosterLockup();
  OUTLINED_FUNCTION_51_3(v12);
  OUTLINED_FUNCTION_67_6();
  v15 = sub_2168AED64(v13, v14);
  OUTLINED_FUNCTION_88_4(v15);
  OUTLINED_FUNCTION_65_5();
  OUTLINED_FUNCTION_91_8(v16, v17);
  v18 = OUTLINED_FUNCTION_78_6();
  OUTLINED_FUNCTION_96_2(v18, &qword_27CAB6DB0, v19);
  OUTLINED_FUNCTION_79_9();
  if (v20)
  {
    sub_216697664(&v59, &qword_27CAB6DB0);
    OUTLINED_FUNCTION_97_4();
  }

  else
  {
    sub_216697664(v58, &qword_27CAB6DB0);
  }

  v21 = OUTLINED_FUNCTION_49_10();
  OUTLINED_FUNCTION_25_13(v21);
  OUTLINED_FUNCTION_98_6(&off_2829380E8);
  OUTLINED_FUNCTION_65_5();
  sub_2168AEDA8(v0, v22, v23);
  OUTLINED_FUNCTION_46_11();
  v24 = OUTLINED_FUNCTION_20_17();
  OUTLINED_FUNCTION_27_15(v24, v1[16]);
  OUTLINED_FUNCTION_33_16();
  OUTLINED_FUNCTION_67_6();
  v27 = sub_2168AED64(v25, v26);
  v28 = OUTLINED_FUNCTION_88_4(v27);
  OUTLINED_FUNCTION_44_13(v28);
  v29 = OUTLINED_FUNCTION_86_7();
  OUTLINED_FUNCTION_31_18(v29, v1[17]);
  v30 = OUTLINED_FUNCTION_17_24();
  OUTLINED_FUNCTION_90_5(v30, v31);
  OUTLINED_FUNCTION_0_57();
  OUTLINED_FUNCTION_105_4(v32, v33, v34);
  OUTLINED_FUNCTION_32_14();
  OUTLINED_FUNCTION_30_13(v1[6]);
  if (v58[3])
  {
    OUTLINED_FUNCTION_8_24();
    sub_21700CE54();
    OUTLINED_FUNCTION_26_18();
    OUTLINED_FUNCTION_3_44();
    sub_21700D6C4();
    v35 = OUTLINED_FUNCTION_11_24();
    v36(v35);
    v37 = OUTLINED_FUNCTION_10_20();
    v38(v37);
    v39 = __swift_destroy_boxed_opaque_existential_1Tm(v58);
    OUTLINED_FUNCTION_87_6(v39, v40, &qword_27CAB6A00);
    type metadata accessor for MenuConfiguration(0);
    OUTLINED_FUNCTION_0_57();
    OUTLINED_FUNCTION_89_8(v41, v42);
    OUTLINED_FUNCTION_2_38();
    v43 = OUTLINED_FUNCTION_35_12();
    sub_2166A6F60(v43, v44, v45);
  }

  else
  {
    v46 = OUTLINED_FUNCTION_38_9();
    OUTLINED_FUNCTION_87_6(v46, v47, &qword_27CAB6A00);
    type metadata accessor for MenuConfiguration(0);
    OUTLINED_FUNCTION_0_57();
    OUTLINED_FUNCTION_89_8(v48, v49);
    OUTLINED_FUNCTION_2_38();
    v50 = OUTLINED_FUNCTION_21_18();
    sub_2166A6F60(v50, v51, v52);
    OUTLINED_FUNCTION_50_8();
  }

  sub_21700DF14();
  OUTLINED_FUNCTION_37_13();
  sub_216697664(v53, v54);
  OUTLINED_FUNCTION_1_44();
  sub_2168AE788(v2, v55);
  OUTLINED_FUNCTION_41_10();
  OUTLINED_FUNCTION_40_8();
  OUTLINED_FUNCTION_37_13();
  sub_216697664(v56, v57);
  type metadata accessor for MenuConfiguration(0);
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_26();
}

void sub_2168A91B0()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_29_13(v3);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v5);
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_13_15();
  v8 = OUTLINED_FUNCTION_36(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6_30();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  v10 = OUTLINED_FUNCTION_36(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4_28();
  v12 = type metadata accessor for SquareLockup();
  OUTLINED_FUNCTION_51_3(v12);
  OUTLINED_FUNCTION_55_10();
  v15 = sub_2168AED64(v13, v14);
  OUTLINED_FUNCTION_88_4(v15);
  OUTLINED_FUNCTION_56_8();
  OUTLINED_FUNCTION_91_8(v16, v17);
  v18 = OUTLINED_FUNCTION_86_7();
  OUTLINED_FUNCTION_96_2(v18, &qword_27CAB6DB0, v1[19]);
  OUTLINED_FUNCTION_79_9();
  if (v19)
  {
    sub_216697664(&v58, &qword_27CAB6DB0);
    OUTLINED_FUNCTION_97_4();
  }

  else
  {
    sub_216697664(v57, &qword_27CAB6DB0);
  }

  v20 = OUTLINED_FUNCTION_49_10();
  OUTLINED_FUNCTION_25_13(v20);
  OUTLINED_FUNCTION_98_6(&off_28292DB28);
  OUTLINED_FUNCTION_56_8();
  sub_2168AEDA8(v0, v21, v22);
  OUTLINED_FUNCTION_46_11();
  v23 = OUTLINED_FUNCTION_20_17();
  OUTLINED_FUNCTION_27_15(v23, v1[20]);
  OUTLINED_FUNCTION_33_16();
  OUTLINED_FUNCTION_55_10();
  v26 = sub_2168AED64(v24, v25);
  v27 = OUTLINED_FUNCTION_88_4(v26);
  OUTLINED_FUNCTION_44_13(v27);
  v28 = OUTLINED_FUNCTION_86_7();
  OUTLINED_FUNCTION_31_18(v28, v1[21]);
  v29 = OUTLINED_FUNCTION_17_24();
  OUTLINED_FUNCTION_90_5(v29, v30);
  OUTLINED_FUNCTION_0_57();
  OUTLINED_FUNCTION_105_4(v31, v32, v33);
  OUTLINED_FUNCTION_32_14();
  OUTLINED_FUNCTION_30_13(v1[18]);
  if (v57[3])
  {
    OUTLINED_FUNCTION_8_24();
    sub_21700CE54();
    OUTLINED_FUNCTION_26_18();
    OUTLINED_FUNCTION_3_44();
    sub_21700D6C4();
    v34 = OUTLINED_FUNCTION_11_24();
    v35(v34);
    v36 = OUTLINED_FUNCTION_10_20();
    v37(v36);
    v38 = __swift_destroy_boxed_opaque_existential_1Tm(v57);
    OUTLINED_FUNCTION_87_6(v38, v39, &qword_27CAB6A00);
    type metadata accessor for MenuConfiguration(0);
    OUTLINED_FUNCTION_0_57();
    OUTLINED_FUNCTION_89_8(v40, v41);
    OUTLINED_FUNCTION_2_38();
    v42 = OUTLINED_FUNCTION_35_12();
    sub_2166A6F60(v42, v43, v44);
  }

  else
  {
    v45 = OUTLINED_FUNCTION_38_9();
    OUTLINED_FUNCTION_87_6(v45, v46, &qword_27CAB6A00);
    type metadata accessor for MenuConfiguration(0);
    OUTLINED_FUNCTION_0_57();
    OUTLINED_FUNCTION_89_8(v47, v48);
    OUTLINED_FUNCTION_2_38();
    v49 = OUTLINED_FUNCTION_21_18();
    sub_2166A6F60(v49, v50, v51);
    OUTLINED_FUNCTION_50_8();
  }

  sub_21700DF14();
  OUTLINED_FUNCTION_37_13();
  sub_216697664(v52, v53);
  OUTLINED_FUNCTION_1_44();
  sub_2168AE788(v2, v54);
  OUTLINED_FUNCTION_41_10();
  OUTLINED_FUNCTION_40_8();
  OUTLINED_FUNCTION_37_13();
  sub_216697664(v55, v56);
  type metadata accessor for MenuConfiguration(0);
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_26();
}

void sub_2168A9598()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_29_13(v3);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v5);
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_13_15();
  v8 = OUTLINED_FUNCTION_36(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6_30();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  v10 = OUTLINED_FUNCTION_36(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4_28();
  v12 = type metadata accessor for TrackLockup();
  OUTLINED_FUNCTION_51_3(v12);
  OUTLINED_FUNCTION_54_11();
  v15 = sub_2168AED64(v13, v14);
  OUTLINED_FUNCTION_88_4(v15);
  OUTLINED_FUNCTION_63_6();
  OUTLINED_FUNCTION_91_8(v16, v17);
  v18 = OUTLINED_FUNCTION_86_7();
  OUTLINED_FUNCTION_96_2(v18, &qword_27CAB6DB0, v1[27]);
  OUTLINED_FUNCTION_79_9();
  if (v19)
  {
    sub_216697664(&v58, &qword_27CAB6DB0);
    OUTLINED_FUNCTION_97_4();
  }

  else
  {
    sub_216697664(v57, &qword_27CAB6DB0);
  }

  v20 = OUTLINED_FUNCTION_49_10();
  OUTLINED_FUNCTION_25_13(v20);
  OUTLINED_FUNCTION_98_6(&off_282933EB0);
  OUTLINED_FUNCTION_63_6();
  sub_2168AEDA8(v0, v21, v22);
  OUTLINED_FUNCTION_46_11();
  v23 = OUTLINED_FUNCTION_20_17();
  OUTLINED_FUNCTION_27_15(v23, v1[30]);
  OUTLINED_FUNCTION_33_16();
  OUTLINED_FUNCTION_54_11();
  v26 = sub_2168AED64(v24, v25);
  v27 = OUTLINED_FUNCTION_88_4(v26);
  OUTLINED_FUNCTION_44_13(v27);
  v28 = OUTLINED_FUNCTION_86_7();
  OUTLINED_FUNCTION_31_18(v28, v1[28]);
  v29 = OUTLINED_FUNCTION_17_24();
  OUTLINED_FUNCTION_90_5(v29, v30);
  OUTLINED_FUNCTION_0_57();
  OUTLINED_FUNCTION_105_4(v31, v32, v33);
  OUTLINED_FUNCTION_32_14();
  OUTLINED_FUNCTION_30_13(v1[6]);
  if (v57[3])
  {
    OUTLINED_FUNCTION_8_24();
    sub_21700CE54();
    OUTLINED_FUNCTION_26_18();
    OUTLINED_FUNCTION_3_44();
    sub_21700D6C4();
    v34 = OUTLINED_FUNCTION_11_24();
    v35(v34);
    v36 = OUTLINED_FUNCTION_10_20();
    v37(v36);
    v38 = __swift_destroy_boxed_opaque_existential_1Tm(v57);
    OUTLINED_FUNCTION_87_6(v38, v39, &qword_27CAB6A00);
    type metadata accessor for MenuConfiguration(0);
    OUTLINED_FUNCTION_0_57();
    OUTLINED_FUNCTION_89_8(v40, v41);
    OUTLINED_FUNCTION_2_38();
    v42 = OUTLINED_FUNCTION_35_12();
    sub_2166A6F60(v42, v43, v44);
  }

  else
  {
    v45 = OUTLINED_FUNCTION_38_9();
    OUTLINED_FUNCTION_87_6(v45, v46, &qword_27CAB6A00);
    type metadata accessor for MenuConfiguration(0);
    OUTLINED_FUNCTION_0_57();
    OUTLINED_FUNCTION_89_8(v47, v48);
    OUTLINED_FUNCTION_2_38();
    v49 = OUTLINED_FUNCTION_21_18();
    sub_2166A6F60(v49, v50, v51);
    OUTLINED_FUNCTION_50_8();
  }

  sub_21700DF14();
  OUTLINED_FUNCTION_37_13();
  sub_216697664(v52, v53);
  OUTLINED_FUNCTION_1_44();
  sub_2168AE788(v2, v54);
  OUTLINED_FUNCTION_41_10();
  OUTLINED_FUNCTION_40_8();
  OUTLINED_FUNCTION_37_13();
  sub_216697664(v55, v56);
  type metadata accessor for MenuConfiguration(0);
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_26();
}

void sub_2168A9980()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_29_13(v3);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v5);
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_13_15();
  v8 = OUTLINED_FUNCTION_36(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6_30();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  v10 = OUTLINED_FUNCTION_36(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4_28();
  v12 = type metadata accessor for HorizontalLockup();
  OUTLINED_FUNCTION_51_3(v12);
  OUTLINED_FUNCTION_75_4();
  v15 = sub_2168AED64(v13, v14);
  OUTLINED_FUNCTION_88_4(v15);
  OUTLINED_FUNCTION_58_7();
  OUTLINED_FUNCTION_91_8(v16, v17);
  v18 = OUTLINED_FUNCTION_86_7();
  OUTLINED_FUNCTION_96_2(v18, &qword_27CAB6DB0, v1[18]);
  OUTLINED_FUNCTION_79_9();
  if (v19)
  {
    sub_216697664(&v58, &qword_27CAB6DB0);
    OUTLINED_FUNCTION_97_4();
  }

  else
  {
    sub_216697664(v57, &qword_27CAB6DB0);
  }

  v20 = OUTLINED_FUNCTION_49_10();
  OUTLINED_FUNCTION_25_13(v20);
  OUTLINED_FUNCTION_98_6(&off_282913660);
  OUTLINED_FUNCTION_58_7();
  sub_2168AEDA8(v0, v21, v22);
  OUTLINED_FUNCTION_46_11();
  v23 = OUTLINED_FUNCTION_20_17();
  OUTLINED_FUNCTION_27_15(v23, v1[19]);
  OUTLINED_FUNCTION_33_16();
  OUTLINED_FUNCTION_75_4();
  v26 = sub_2168AED64(v24, v25);
  v27 = OUTLINED_FUNCTION_88_4(v26);
  OUTLINED_FUNCTION_44_13(v27);
  v28 = OUTLINED_FUNCTION_86_7();
  OUTLINED_FUNCTION_31_18(v28, v1[20]);
  v29 = OUTLINED_FUNCTION_17_24();
  OUTLINED_FUNCTION_90_5(v29, v30);
  OUTLINED_FUNCTION_0_57();
  OUTLINED_FUNCTION_105_4(v31, v32, v33);
  OUTLINED_FUNCTION_32_14();
  OUTLINED_FUNCTION_30_13(v1[10]);
  if (v57[3])
  {
    OUTLINED_FUNCTION_8_24();
    sub_21700CE54();
    OUTLINED_FUNCTION_26_18();
    OUTLINED_FUNCTION_3_44();
    sub_21700D6C4();
    v34 = OUTLINED_FUNCTION_11_24();
    v35(v34);
    v36 = OUTLINED_FUNCTION_10_20();
    v37(v36);
    v38 = __swift_destroy_boxed_opaque_existential_1Tm(v57);
    OUTLINED_FUNCTION_87_6(v38, v39, &qword_27CAB6A00);
    type metadata accessor for MenuConfiguration(0);
    OUTLINED_FUNCTION_0_57();
    OUTLINED_FUNCTION_89_8(v40, v41);
    OUTLINED_FUNCTION_2_38();
    v42 = OUTLINED_FUNCTION_35_12();
    sub_2166A6F60(v42, v43, v44);
  }

  else
  {
    v45 = OUTLINED_FUNCTION_38_9();
    OUTLINED_FUNCTION_87_6(v45, v46, &qword_27CAB6A00);
    type metadata accessor for MenuConfiguration(0);
    OUTLINED_FUNCTION_0_57();
    OUTLINED_FUNCTION_89_8(v47, v48);
    OUTLINED_FUNCTION_2_38();
    v49 = OUTLINED_FUNCTION_21_18();
    sub_2166A6F60(v49, v50, v51);
    OUTLINED_FUNCTION_50_8();
  }

  sub_21700DF14();
  OUTLINED_FUNCTION_37_13();
  sub_216697664(v52, v53);
  OUTLINED_FUNCTION_1_44();
  sub_2168AE788(v2, v54);
  OUTLINED_FUNCTION_41_10();
  OUTLINED_FUNCTION_40_8();
  OUTLINED_FUNCTION_37_13();
  sub_216697664(v55, v56);
  type metadata accessor for MenuConfiguration(0);
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_26();
}

void sub_2168A9D68()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_29_13(v3);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v5);
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_13_15();
  v8 = OUTLINED_FUNCTION_36(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6_30();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  v10 = OUTLINED_FUNCTION_36(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4_28();
  v12 = type metadata accessor for ArtistLatestReleaseLockup();
  OUTLINED_FUNCTION_51_3(v12);
  OUTLINED_FUNCTION_73_6();
  v15 = sub_2168AED64(v13, v14);
  OUTLINED_FUNCTION_88_4(v15);
  OUTLINED_FUNCTION_60_5();
  OUTLINED_FUNCTION_91_8(v16, v17);
  v18 = OUTLINED_FUNCTION_86_7();
  OUTLINED_FUNCTION_96_2(v18, &qword_27CAB6DB0, v1[14]);
  OUTLINED_FUNCTION_79_9();
  if (v19)
  {
    sub_216697664(&v59, &qword_27CAB6DB0);
    OUTLINED_FUNCTION_97_4();
  }

  else
  {
    sub_216697664(v58, &qword_27CAB6DB0);
  }

  v20 = OUTLINED_FUNCTION_49_10();
  OUTLINED_FUNCTION_25_13(v20);
  OUTLINED_FUNCTION_98_6(&off_282937238);
  OUTLINED_FUNCTION_60_5();
  sub_2168AEDA8(v0, v21, v22);
  OUTLINED_FUNCTION_46_11();
  v23 = OUTLINED_FUNCTION_20_17();
  OUTLINED_FUNCTION_27_15(v23, v1[12]);
  OUTLINED_FUNCTION_33_16();
  OUTLINED_FUNCTION_73_6();
  v26 = sub_2168AED64(v24, v25);
  v27 = OUTLINED_FUNCTION_88_4(v26);
  OUTLINED_FUNCTION_44_13(v27);
  v28 = OUTLINED_FUNCTION_78_6();
  OUTLINED_FUNCTION_31_18(v28, v29);
  v30 = OUTLINED_FUNCTION_17_24();
  OUTLINED_FUNCTION_90_5(v30, v31);
  OUTLINED_FUNCTION_0_57();
  OUTLINED_FUNCTION_105_4(v32, v33, v34);
  OUTLINED_FUNCTION_32_14();
  OUTLINED_FUNCTION_30_13(v1[10]);
  if (v58[3])
  {
    OUTLINED_FUNCTION_8_24();
    sub_21700CE54();
    OUTLINED_FUNCTION_26_18();
    OUTLINED_FUNCTION_3_44();
    sub_21700D6C4();
    v35 = OUTLINED_FUNCTION_11_24();
    v36(v35);
    v37 = OUTLINED_FUNCTION_10_20();
    v38(v37);
    v39 = __swift_destroy_boxed_opaque_existential_1Tm(v58);
    OUTLINED_FUNCTION_87_6(v39, v40, &qword_27CAB6A00);
    type metadata accessor for MenuConfiguration(0);
    OUTLINED_FUNCTION_0_57();
    OUTLINED_FUNCTION_89_8(v41, v42);
    OUTLINED_FUNCTION_2_38();
    v43 = OUTLINED_FUNCTION_35_12();
    sub_2166A6F60(v43, v44, v45);
  }

  else
  {
    v46 = OUTLINED_FUNCTION_38_9();
    OUTLINED_FUNCTION_87_6(v46, v47, &qword_27CAB6A00);
    type metadata accessor for MenuConfiguration(0);
    OUTLINED_FUNCTION_0_57();
    OUTLINED_FUNCTION_89_8(v48, v49);
    OUTLINED_FUNCTION_2_38();
    v50 = OUTLINED_FUNCTION_21_18();
    sub_2166A6F60(v50, v51, v52);
    OUTLINED_FUNCTION_50_8();
  }

  sub_21700DF14();
  OUTLINED_FUNCTION_37_13();
  sub_216697664(v53, v54);
  OUTLINED_FUNCTION_1_44();
  sub_2168AE788(v2, v55);
  OUTLINED_FUNCTION_41_10();
  OUTLINED_FUNCTION_40_8();
  OUTLINED_FUNCTION_37_13();
  sub_216697664(v56, v57);
  type metadata accessor for MenuConfiguration(0);
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_26();
}

void sub_2168AA14C()
{
  OUTLINED_FUNCTION_49();
  v44 = v3;
  OUTLINED_FUNCTION_8_1();
  sub_21700D704();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_99_7();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_13_15();
  v7 = OUTLINED_FUNCTION_36(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_119_1();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  v9 = OUTLINED_FUNCTION_36(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_56_2();
  v11 = type metadata accessor for ContentDescriptor();
  v48 = 0u;
  v49 = 0u;
  v50 = 0;
  OUTLINED_FUNCTION_88(v2, v12, v13, v11);
  v14 = type metadata accessor for ListLockup();
  v46 = v14;
  v47 = &off_28291B1E0;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v45);
  OUTLINED_FUNCTION_91_8(boxed_opaque_existential_1, boxed_opaque_existential_1);
  sub_216697664(v2, &qword_27CAB6A00);
  v16 = OUTLINED_FUNCTION_20_17();
  v17 = OUTLINED_FUNCTION_43_11(v16, *(v14 + 44));
  OUTLINED_FUNCTION_111_3(v17, v18);
  v19 = OUTLINED_FUNCTION_17_24();
  OUTLINED_FUNCTION_111_3(v19, v20);
  OUTLINED_FUNCTION_0_57();
  sub_2168AEDA8(v44, v1, v21);
  v22 = OUTLINED_FUNCTION_42_13();
  OUTLINED_FUNCTION_111_3(v22, v23);
  OUTLINED_FUNCTION_111_3(v0 + *(v14 + 52), v45);
  if (v46)
  {
    OUTLINED_FUNCTION_8_24();
    sub_21700CE54();
    OUTLINED_FUNCTION_123_2();
    OUTLINED_FUNCTION_3_44();
    sub_21700D6C4();
    v24 = OUTLINED_FUNCTION_47_11();
    v25(v24);
    v26 = OUTLINED_FUNCTION_45_11();
    v27(v26);
    v28 = __swift_destroy_boxed_opaque_existential_1Tm(v45);
    OUTLINED_FUNCTION_87_6(v28, v29, &qword_27CAB6A00);
    v30 = type metadata accessor for MenuConfiguration(0);
    OUTLINED_FUNCTION_0_57();
    OUTLINED_FUNCTION_112_4(v31, v32);
    OUTLINED_FUNCTION_12_22();
    v33 = OUTLINED_FUNCTION_35_12();
    sub_2166A6F60(v33, v34, v35);
  }

  else
  {
    v36 = OUTLINED_FUNCTION_38_9();
    OUTLINED_FUNCTION_87_6(v36, v37, &qword_27CAB6A00);
    v30 = type metadata accessor for MenuConfiguration(0);
    OUTLINED_FUNCTION_0_57();
    OUTLINED_FUNCTION_112_4(v38, v39);
    OUTLINED_FUNCTION_12_22();
    v40 = OUTLINED_FUNCTION_21_18();
    sub_2166A6F60(v40, v41, v42);
    OUTLINED_FUNCTION_50_8();
  }

  sub_21700DF14();
  OUTLINED_FUNCTION_110_3();
  OUTLINED_FUNCTION_1_44();
  sub_2168AE788(v1, v43);
  OUTLINED_FUNCTION_113_5();
  OUTLINED_FUNCTION_114_4();
  OUTLINED_FUNCTION_115_4();
  type metadata accessor for MenuConfiguration(0);
  OUTLINED_FUNCTION_23_13(*(v30 + 36));
  OUTLINED_FUNCTION_26();
}

uint64_t sub_2168AA4BC(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_83_8(a1);
  sub_2166A6F60(v3, v4, &qword_27CAB7C70);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB358);
  memcpy(__dst, *(v2 + 16), 0x49uLL);
  v6 = OUTLINED_FUNCTION_16_19();
  memmove(v6, v7, 0x49uLL);
  memcpy(v25, *(v2 + 24), 0xE9uLL);
  v8 = OUTLINED_FUNCTION_16_19();
  memmove(v8, v9, 0xE9uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7D88);
  OUTLINED_FUNCTION_9();
  v10 = OUTLINED_FUNCTION_16_19();
  v11(v10);
  OUTLINED_FUNCTION_85_6(v1 + v5[28]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7D80);
  OUTLINED_FUNCTION_9();
  v12 = OUTLINED_FUNCTION_16_19();
  v13(v12);
  v14 = v1 + v5[36];
  v15 = *(v2 + 56);
  v16 = *(v2 + 64);
  v17 = *v15;
  v18 = *(v15 + 8);
  v19 = *(v15 + 24);
  LOBYTE(v15) = v15[40];
  *v14 = v17;
  *(v14 + 8) = v18;
  *(v14 + 24) = v19;
  *(v14 + 40) = v15;
  v20 = v1 + v5[40];
  v21 = *v16;
  LOBYTE(v16) = *(v16 + 8);
  *v20 = v21;
  *(v20 + 8) = v16;
  sub_2166A6F60(*(v2 + 72), v1 + v5[44], &qword_27CAB7D78);
  sub_2166A6F60(__dst, v23, &qword_27CAB7E20);
  return sub_2166A6F60(v25, v23, &qword_27CAB7E18);
}

uint64_t sub_2168AA694()
{
  OUTLINED_FUNCTION_121_2();
  v3 = **v2;
  OUTLINED_FUNCTION_124_3(v12);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *v4;
  v11 = *(v4 + 8);
  v7 = v11;
  v8 = *v5;
  *v1 = v3;
  OUTLINED_FUNCTION_124_3((v1 + 8));
  *(v1 + 112) = v6;
  *(v1 + 120) = v7;
  *(v1 + 121) = v8;

  return sub_2166A6F60(v12, v10, &qword_27CAB87F8);
}

uint64_t sub_2168AA734()
{
  OUTLINED_FUNCTION_121_2();
  v3 = *(*v2 + 8);
  *v1 = **v2;
  *(v1 + 8) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB308);
  sub_2166A6F60(v0[1], v1 + v4[12], &qword_27CABA1B0);
  v5 = v0[3];
  OUTLINED_FUNCTION_82_6(v1 + v4[16]);
  v6 = v4[20];
  memcpy(__dst, v5, 0x91uLL);
  memmove((v1 + v6), v5, 0x91uLL);
  sub_2166A6F60(v0[4], v1 + v4[24], &qword_27CABA198);
  OUTLINED_FUNCTION_82_6(v1 + v4[28]);
  return sub_2166A6F60(__dst, &v8, &qword_27CABA1C8);
}

uint64_t sub_2168AA838@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2168AEDA8(*a1, a2, type metadata accessor for TrackBadgeView);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB198);
  v5 = v4[12];
  v6 = a1[1];
  memcpy(__dst, v6, sizeof(__dst));
  memmove((a2 + v5), v6, 0x68uLL);
  v7 = (a2 + v4[16]);
  v9 = a1[2];
  v8 = a1[3];
  v10 = v9[3];
  v11 = *v9;
  v12 = v9[1];
  v7[2] = v9[2];
  v7[3] = v10;
  *v7 = v11;
  v7[1] = v12;
  sub_2166A6F60(v8, a2 + v4[20], &qword_27CABB158);
  sub_2166A6F60(a1[4], a2 + v4[24], &qword_27CABB140);
  sub_2166A6F60(a1[5], a2 + v4[28], &qword_27CABB128);
  return sub_2166A6F60(__dst, &v14, &qword_27CABB178);
}

uint64_t sub_2168AA968@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  memcpy(__dst, *a1, 0x159uLL);
  memcpy(__src, v4, 0x159uLL);
  v5 = *(a1 + 8);
  memcpy(v11, v5, 0x69uLL);
  memcpy(&__src[352], v5, 0x69uLL);
  OUTLINED_FUNCTION_124_3(v12);
  OUTLINED_FUNCTION_124_3(&__src[464]);
  v6 = *(a1 + 24);
  memcpy(v13, v6, 0x69uLL);
  memcpy(&__src[568], v6, 0x69uLL);
  memcpy(a2, __src, 0x2A1uLL);
  sub_2166A6F60(__dst, v8, &qword_27CABB2E8);
  sub_2166A6F60(v11, v8, &qword_27CABB2F0);
  sub_2166A6F60(v12, v8, &qword_27CABB2F8);
  return sub_2166A6F60(v13, v8, &qword_27CABB300);
}

uint64_t sub_2168AAAA8()
{
  OUTLINED_FUNCTION_121_2();
  sub_2166A6F60(*v2, v3, &qword_27CABB218);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB220);
  sub_2166A6F60(v0[1], v1 + v4[12], &qword_27CABB228);
  v5 = v0[3];
  OUTLINED_FUNCTION_36_11(v1 + v4[16]);
  v6 = v4[20];
  memcpy(__dst, v5, 0x71uLL);
  memmove((v1 + v6), v5, 0x71uLL);
  sub_2166A6F60(v0[4], v1 + v4[24], &qword_27CABB230);
  OUTLINED_FUNCTION_36_11(v1 + v4[28]);
  return sub_2166A6F60(__dst, &v8, &qword_27CABB238);
}

uint64_t sub_2168AABB4(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_83_8(a1);
  sub_2168AEDA8(v3, v4, type metadata accessor for TrackBadgeView);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB1D0);
  sub_2168AEDA8(*(v2 + 8), v1 + v5[12], type metadata accessor for PlaylistTrackArtworkView);
  memcpy(__dst, *(v2 + 16), 0xB1uLL);
  v6 = OUTLINED_FUNCTION_16_19();
  memmove(v6, v7, 0xB1uLL);
  sub_2166A6F60(*(v2 + 24), v1 + v5[20], &qword_27CABB1D8);
  OUTLINED_FUNCTION_82_6(v1 + v5[24]);
  sub_2166A6F60(v8, v1 + v5[28], &qword_27CABB128);
  return sub_2166A6F60(__dst, &v10, &qword_27CABB1E0);
}

uint64_t sub_2168AACD0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v5 = *(*a1 + 8);
  v6 = *(*a1 + 16);
  v7 = *(*a1 + 24);
  v9 = *(*a1 + 40);
  v8 = *(*a1 + 32);
  *a2 = **a1;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  *(a2 + 40) = v9;
  v21 = v4[1];
  v22 = *v4;
  v19 = v4[3];
  v20 = v4[2];
  v24 = v4[4];
  v23 = v4[5];
  *(a2 + 48) = *v4;
  *(a2 + 56) = v21;
  *(a2 + 64) = v20;
  *(a2 + 72) = v19;
  *(a2 + 80) = v24;
  *(a2 + 88) = v23;
  v10 = a1[2];
  v11 = *v10;
  LOBYTE(v10) = *(v10 + 8);
  *(a2 + 96) = v11;
  *(a2 + 104) = v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB298);
  v13 = v12[20];
  v14 = a1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB2A0);
  OUTLINED_FUNCTION_9();
  (*(v15 + 16))(a2 + v13, v14);
  sub_2166A6F60(a1[4], a2 + v12[24], &qword_27CABB2A8);
  sub_2166A6F60(a1[5], a2 + v12[28], &qword_27CABB2B0);
  OUTLINED_FUNCTION_36_11(a2 + v12[32]);
  v16 = OUTLINED_FUNCTION_8();
  sub_2167770D0(v16, v17, v6, v7);

  sub_2167770D0(v22, v21, v20, v19);
}

uint64_t sub_2168AAE6C(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_83_8(a1);
  sub_2166A6F60(v3, v4, &qword_27CABB360);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB368);
  memcpy(__dst, *(v2 + 8), sizeof(__dst));
  v6 = OUTLINED_FUNCTION_16_19();
  memmove(v6, v7, 0xB8uLL);
  OUTLINED_FUNCTION_122_3(v1 + v5[16]);
  v8 = (v1 + v5[20]);
  v10 = v9[1];
  *v8 = *v9;
  v8[1] = v10;
  sub_2166A6F60(*(v2 + 32), v1 + v5[24], &qword_27CABB370);
  sub_2166A6F60(*(v2 + 40), v1 + v5[28], &qword_27CABB378);
  sub_2166A6F60(__dst, &v12, &qword_27CABB380);
  return sub_21700DF14();
}

uint64_t sub_2168AAF7C@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  v4 = *v2;
  v3 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  LODWORD(v2) = *(v2 + 12);
  v9 = a1[2];
  v10 = a1[3];
  v11 = *v9;
  v12 = v9[1];
  v13 = v9[2];
  v14 = v9[3];
  v15 = v9[4];
  v16 = v9[5];
  LODWORD(v9) = *(v9 + 12);
  v17 = *v10;
  v20 = *(v10 + 8);
  v18 = *(*a1 + 8);
  *a2 = **a1;
  *(a2 + 8) = v18;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
  *(a2 + 40) = v6;
  *(a2 + 48) = v7;
  *(a2 + 56) = v8;
  *(a2 + 64) = v2;
  *(a2 + 72) = v11;
  *(a2 + 80) = v12;
  *(a2 + 88) = v13;
  *(a2 + 96) = v14;
  *(a2 + 104) = v15;
  *(a2 + 112) = v16;
  *(a2 + 120) = v9;
  *(a2 + 128) = v17;
  *(a2 + 136) = v20;
  sub_2167770D0(v4, v3, v5, v6);

  sub_2167770D0(v11, v12, v13, v14);
}

uint64_t sub_2168AB074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(*a1 + 8);
  *a2 = **a1;
  *(a2 + 8) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB2D8);
  OUTLINED_FUNCTION_53_9(v6);
  sub_2166A6F60(*(a1 + 16), a2 + v2[16], &qword_27CABB2C8);
  sub_2166A6F60(*(a1 + 24), a2 + v2[20], &qword_27CABB2E0);
  OUTLINED_FUNCTION_122_3(a2 + v2[24]);
  v7 = (a2 + v2[28]);
  v9 = v8[1];
  *v7 = *v8;
  v7[1] = v9;

  return sub_21700DF14();
}

uint64_t sub_2168AB144(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_83_8(a1);
  sub_2166A6F60(v4, v5, &qword_27CABB2B8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB2C0);
  OUTLINED_FUNCTION_53_9(v6);
  sub_2166A6F60(*(v2 + 16), v1 + v3[16], &qword_27CABB2C8);
  OUTLINED_FUNCTION_36_11(v1 + v3[20]);
  v7 = (v1 + v3[24]);
  v9 = v8[1];
  *v7 = *v8;
  v7[1] = v9;
  sub_2166A6F60(*(v2 + 40), v1 + v3[28], &qword_27CABB2D0);

  return sub_21700DF14();
}

void sub_2168AB218()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v3 = v2;
  v4 = (*v0)[1];
  v5 = *(*v0 + 16);
  v6 = *(*v0 + 3);
  v7 = (*v0)[5];
  v8 = (*v0)[6];
  *v2 = **v0;
  *(v2 + 8) = v4;
  *(v2 + 16) = v5;
  *(v2 + 24) = v6;
  *(v2 + 40) = v7;
  *(v2 + 48) = v8;
  OUTLINED_FUNCTION_118_4();
  memcpy(v9, v10, v11);
  OUTLINED_FUNCTION_118_4();
  memmove(v12, v13, v14);
  v15 = v1[2];
  memcpy(__dst, v15, 0xB9uLL);
  memmove((v3 + 320), v15, 0xB9uLL);
  OUTLINED_FUNCTION_117_4();
  memcpy(v16, v17, v18);
  OUTLINED_FUNCTION_117_4();
  memmove(v19, v20, v21);
  OUTLINED_FUNCTION_116_3();
  memcpy(v22, v23, v24);
  OUTLINED_FUNCTION_116_3();
  memmove(v25, v26, v27);
  OUTLINED_FUNCTION_118_4();
  memcpy(v28, v29, v30);
  OUTLINED_FUNCTION_118_4();
  memmove(v31, v32, v33);
  OUTLINED_FUNCTION_117_4();
  memcpy(v34, v35, v36);
  OUTLINED_FUNCTION_117_4();
  memmove(v37, v38, v39);
  OUTLINED_FUNCTION_116_3();
  memcpy(v40, v41, v42);
  OUTLINED_FUNCTION_116_3();
  memmove(v43, v44, v45);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB328);
  sub_2166A6F60(v1[9], v3 + v46[44], &qword_27CABB330);
  v47 = v1[11];
  OUTLINED_FUNCTION_85_6(v3 + v46[48]);
  v48 = v46[52];
  memcpy(v66, v47, 0x101uLL);
  memmove((v3 + v48), v47, 0x101uLL);
  v49 = v46[56];
  v50 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB338);
  OUTLINED_FUNCTION_9();
  (*(v51 + 16))(v3 + v49, v50);

  OUTLINED_FUNCTION_108_6(v59, v52, v53);
  sub_2166A6F60(__dst, v58, &qword_27CABB348);
  sub_2166A6F60(v61, v58, &qword_27CAB7E20);
  sub_2166A6F60(v62, v58, &qword_27CAB7E18);
  OUTLINED_FUNCTION_108_6(v63, v54, v55);
  sub_2166A6F60(v64, v58, &qword_27CABB350);
  sub_2166A6F60(v65, v58, &qword_27CAB7E18);
  OUTLINED_FUNCTION_108_6(v66, v56, v57);
  OUTLINED_FUNCTION_26();
}

uint64_t sub_2168AB50C()
{
  OUTLINED_FUNCTION_121_2();
  type metadata accessor for PlaybackPresenter();
  sub_2168AED64(&qword_280E3FDB0, type metadata accessor for PlaybackPresenter);
  *(v1 + 8) = sub_217008CF4();
  *(v1 + 16) = v2;
  *(v1 + 24) = swift_getKeyPath();
  *(v1 + 32) = 0;
  *(v1 + 40) = swift_getKeyPath();
  *(v1 + 48) = 0;
  type metadata accessor for AlbumTrackLockupView();
  sub_2167CD8D8();
  sub_2170082B4();
  result = sub_2170082B4();
  *v1 = v0;
  return result;
}

uint64_t sub_2168AB620@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v58 = a1;
  v57 = sub_217008C74();
  OUTLINED_FUNCTION_1();
  v55 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v6);
  v47 = type metadata accessor for AlbumTrackLockupView();
  OUTLINED_FUNCTION_1();
  v48 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10);
  v11 = type metadata accessor for AlbumTrackLockup();
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7();
  v15 = v14 - v13;
  v16 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB0A0) - 8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_119_1();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB0A8);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v18);
  v20 = &v47 - v19;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB0B0);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v21);
  v23 = &v47 - v22;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB0B8);
  OUTLINED_FUNCTION_1();
  v54 = v24;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v25);
  v52 = &v47 - v26;
  v50 = *v1;
  sub_2168ABD3C();
  sub_2166A6F60(v15 + *(v12 + 100), v2, &qword_27CAB6DB0);
  sub_2168AE788(v15, type metadata accessor for AlbumTrackLockup);
  v27 = v16[13];
  v28 = sub_217007F04();
  OUTLINED_FUNCTION_88(v2 + v27, v29, v30, v28);
  sub_2168AEDA8(v3, &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AlbumTrackLockupView);
  v31 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v32 = swift_allocObject();
  sub_2168AE8FC(&v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v32 + v31, type metadata accessor for AlbumTrackLockupView);
  v33 = v16[14];
  *(v2 + v33) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  swift_storeEnumTagMultiPayload();
  v34 = v2 + v16[15];
  *v34 = swift_getKeyPath();
  v34[40] = 0;
  v2[5] = sub_2168AE3EC;
  v2[6] = v32;
  v2[7] = 0;
  v2[8] = 0;
  sub_2168AD5D4();
  if (v35)
  {

    sub_2168AD484();
  }

  sub_21700B3B4();
  sub_217008BB4();
  sub_2166DDCC0(v2, v20, &qword_27CABB0A0);
  memcpy(&v20[*(v49 + 36)], __src, 0x70uLL);
  v36 = v53;
  sub_217008C54();
  if (sub_2168AD484())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40);
    sub_2170082C4();
    v37 = *v59 + 58.0;
  }

  else
  {
    v37 = 58.0;
  }

  v38 = &v23[*(v51 + 36)];
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8AE8);
  (*(v55 + 32))(&v38[*(v39 + 40)], v36, v57);
  *v38 = v37;
  v38[8] = 0;
  v40 = sub_2166DDCC0(v20, v23, &qword_27CABB0A8);
  MEMORY[0x28223BE20](v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB0C0);
  sub_2168AE40C();
  sub_2168AE57C();
  v41 = v52;
  sub_21700A3B4();
  sub_216697664(v23, &qword_27CABB0B0);
  v59[3] = sub_21700C2F4();
  v59[4] = MEMORY[0x277CD8390];
  __swift_allocate_boxed_opaque_existential_1(v59);
  sub_2168C032C();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB108);
  v43 = v58;
  v44 = (v58 + *(v42 + 36));
  sub_2167B7D58(v59, (v44 + 2));
  type metadata accessor for MusicEntityAnnotationWrapper();
  sub_2168AED64(&qword_280E46810, type metadata accessor for MusicEntityAnnotationWrapper);
  *v44 = sub_217008CF4();
  v44[1] = v45;
  (*(v54 + 32))(v43, v41, v56);
  return __swift_destroy_boxed_opaque_existential_1Tm(v59);
}

uint64_t sub_2168ABD3C()
{
  OUTLINED_FUNCTION_8_1();
  type metadata accessor for AlbumTrackLockup();
  sub_2168AED64(qword_280E41540, type metadata accessor for AlbumTrackLockup);
  sub_2168AED64(&qword_280E41520, type metadata accessor for AlbumTrackLockup);
  swift_getKeyPath();
  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_28_18(&qword_27CABB1A0, &unk_27CABF8B0);
  OUTLINED_FUNCTION_94_2();

  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_93_2();
  return OUTLINED_FUNCTION_107_7();
}

uint64_t sub_2168ABE5C()
{
  OUTLINED_FUNCTION_8_1();
  type metadata accessor for ArtistDetailHeaderLockup();
  sub_2168AED64(&qword_280E36D90, type metadata accessor for ArtistDetailHeaderLockup);
  sub_2168AED64(&qword_280E36D70, type metadata accessor for ArtistDetailHeaderLockup);
  swift_getKeyPath();
  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_28_18(&qword_27CABB1A8, &qword_27CABB1B0);
  OUTLINED_FUNCTION_94_2();

  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_93_2();
  return OUTLINED_FUNCTION_107_7();
}

uint64_t sub_2168ABF7C()
{
  OUTLINED_FUNCTION_8_1();
  type metadata accessor for PlaylistTrackLockup();
  sub_2168AED64(qword_280E3D5F0, type metadata accessor for PlaylistTrackLockup);
  sub_2168AED64(&qword_280E3D5C8, type metadata accessor for PlaylistTrackLockup);
  swift_getKeyPath();
  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_28_18(&qword_27CABB1E8, &unk_27CABF910);
  OUTLINED_FUNCTION_94_2();

  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_93_2();
  return OUTLINED_FUNCTION_107_7();
}

uint64_t sub_2168AC09C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_2170091A4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB120);
  return sub_2168AC0F0(a1, a2 + *(v4 + 44));
}

uint64_t sub_2168AC0F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v181 = a1;
  v176 = a2;
  v3 = type metadata accessor for AlbumTrackLockupView();
  v4 = *(v3 - 8);
  v157 = v3 - 8;
  v169 = v4;
  MEMORY[0x28223BE20](v3 - 8);
  v170 = v5;
  v171 = &v135 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB128);
  v6 = MEMORY[0x28223BE20](v172);
  v175 = &v135 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v174 = (&v135 - v8);
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB130);
  MEMORY[0x28223BE20](v166);
  v150 = &v135 - v9;
  v146 = type metadata accessor for StackedTrackTitlesView();
  v10 = MEMORY[0x28223BE20](v146);
  v148 = &v135 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v149 = (&v135 - v12);
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB138);
  MEMORY[0x28223BE20](v163);
  v165 = &v135 - v13;
  v164 = type metadata accessor for TwoColumnTrackTitlesView();
  v14 = MEMORY[0x28223BE20](v164);
  v145 = (&v135 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v147 = &v135 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB140);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v173 = &v135 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v168 = &v135 - v20;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB148);
  MEMORY[0x28223BE20](v152);
  v142 = &v135 - v21;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB150);
  v22 = MEMORY[0x28223BE20](v139);
  v141 = &v135 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v140 = (&v135 - v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB158);
  v26 = MEMORY[0x28223BE20](v25 - 8);
  v167 = &v135 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v180 = &v135 - v28;
  v177 = type metadata accessor for AlbumTrackLockup();
  v29 = MEMORY[0x28223BE20](v177);
  v144 = &v135 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v143 = &v135 - v32;
  MEMORY[0x28223BE20](v31);
  v34 = &v135 - v33;
  v35 = sub_21700C2F4();
  v36 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v38 = &v135 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for TrackBadgeView();
  v40 = MEMORY[0x28223BE20](v39);
  v179 = &v135 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v43 = &v135 - v42;
  v44 = *v2;
  sub_2168C032C();
  sub_2168A5E08(MEMORY[0x277CD83B8], MEMORY[0x277D2B1D0], v45, v46, v47, v48, v49, v50, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146);
  v52 = v51;
  v53 = v38;
  v54 = v44;
  (*(v36 + 8))(v53, v35);
  sub_2168ABD3C();
  v55 = v177;
  LOBYTE(v2) = v34[*(v177 + 48)];
  sub_2168AE788(v34, type metadata accessor for AlbumTrackLockup);
  *v43 = v52 & 1;
  v43[1] = v2;
  v195[0] = 0x4036000000000000;
  v56 = sub_2167CD8D8();
  v178 = v43;
  v158 = v56;
  sub_2170082B4();
  v153 = sub_2168AD35C();
  v162 = v57;
  v161 = sub_217009D54();
  KeyPath = swift_getKeyPath();
  v159 = sub_21700AD34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40);
  sub_2170082C4();
  sub_21700B3B4();
  sub_2170083C4();
  sub_21700B3B4();
  sub_2170083C4();
  v154 = v205;
  v155 = v207;
  v156 = v210;
  v157 = v209;
  v204 = 1;
  v202 = v206;
  v200 = v208;
  sub_2168ABD3C();
  LODWORD(v2) = v34[*(v55 + 76)];
  v151 = v34;
  sub_2168AE788(v34, type metadata accessor for AlbumTrackLockup);
  if (v2 == 1)
  {
    v58 = sub_21700ADB4();
    sub_2168AE7E0();
    sub_21700F074();
    v59 = sub_217009EC4();
    v60 = swift_getKeyPath();
    v61 = sub_21700AD34();
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB188);
    v63 = v140;
    v64 = (v140 + *(v62 + 36));
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7820);
    v138 = v54;
    v66 = *(v65 + 28);
    v67 = *MEMORY[0x277CE1058];
    v68 = sub_21700ADF4();
    (*(*(v68 - 8) + 104))(v64 + v66, v67, v68);
    *v64 = swift_getKeyPath();
    *v63 = v58;
    v63[1] = v60;
    v63[2] = v59;
    v63[3] = v61;
    sub_21700B3B4();
    sub_2170083C4();
    v69 = (v63 + *(v139 + 36));
    v70 = v212;
    *v69 = v211;
    v69[1] = v70;
    v69[2] = v213;
    sub_21700B3B4();
    sub_2170083C4();
    v139 = v214;
    v71 = v219;
    v136 = v218;
    v137 = v216;
    LOBYTE(v195[0]) = 1;
    LOBYTE(v193[0]) = v215;
    LOBYTE(v182) = v217;
    v72 = v141;
    sub_2166A6F60(v63, v141, &qword_27CABB150);
    LOBYTE(v66) = v195[0];
    v73 = v193[0];
    LOBYTE(v64) = v182;
    v74 = v142;
    sub_2166A6F60(v72, v142, &qword_27CABB150);
    v75 = v74 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB190) + 48);
    *v75 = 0;
    *(v75 + 8) = v66;
    *(v75 + 16) = v139;
    *(v75 + 24) = v73;
    v76 = v136;
    *(v75 + 32) = v137;
    *(v75 + 40) = v64;
    *(v75 + 48) = v76;
    *(v75 + 56) = v71;
    sub_216697664(v63, &qword_27CABB150);
    sub_216697664(v72, &qword_27CABB150);
    v77 = v180;
    sub_2166DDCC0(v74, v180, &qword_27CABB148);
    v78 = v77;
    v79 = 0;
  }

  else
  {
    v78 = v180;
    v79 = 1;
  }

  __swift_storeEnumTagSinglePayload(v78, v79, 1, v152);
  if (*(v181 + 8))
  {

    LODWORD(v152) = sub_216C6D1E0();

    if (sub_2168AD484())
    {
      v80 = v143;
      sub_2168ABD3C();
      v81 = v177;
      v82 = (v80 + *(v177 + 28));
      v84 = *v82;
      v83 = v82[1];
      sub_21700DF14();
      sub_2168AE788(v80, type metadata accessor for AlbumTrackLockup);
      if (v83)
      {
        v85 = v84;
      }

      else
      {
        v85 = 0;
      }

      v150 = v85;
      if (v83)
      {
        v86 = v83;
      }

      else
      {
        v86 = 0xE000000000000000;
      }

      v87 = sub_2168AD5D4();
      v89 = v88;
      v90 = v151;
      sub_2168ABD3C();
      v91 = *(v90 + *(v81 + 44));
      sub_2168AE788(v90, type metadata accessor for AlbumTrackLockup);
      sub_2168AD6E0();
      v93 = v92;
      v94 = sub_2168AE1AC();
      v95 = v145;
      *v145 = v150;
      v95[1] = v86;
      v95[2] = v87;
      v95[3] = v89;
      *(v95 + 32) = v91;
      *(v95 + 33) = v152 & 1;
      v95[5] = v93;
      *(v95 + 6) = v94 * 0.3 + -16.0;
      v96 = *(v164 + 40);
      *(v95 + v96) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7580);
      swift_storeEnumTagMultiPayload();
      v97 = v147;
      sub_2168AE8FC(v95, v147, type metadata accessor for TwoColumnTrackTitlesView);
      sub_2168AEDA8(v97, v165, type metadata accessor for TwoColumnTrackTitlesView);
      swift_storeEnumTagMultiPayload();
      sub_2168AED64(&qword_27CABB168, type metadata accessor for TwoColumnTrackTitlesView);
      sub_2168AECC8(&qword_27CABB170, &qword_27CABB130);
      v98 = v168;
      sub_217009554();
      v99 = type metadata accessor for TwoColumnTrackTitlesView;
      v100 = v97;
    }

    else
    {
      v101 = v151;
      sub_2168ABD3C();
      v102 = v177;
      v103 = (v101 + *(v177 + 28));
      v105 = *v103;
      v104 = v103[1];
      sub_21700DF14();
      sub_2168AE788(v101, type metadata accessor for AlbumTrackLockup);
      v106 = sub_2168AD5D4();
      v108 = v107;
      v109 = v144;
      sub_2168ABD3C();
      v110 = *(v109 + *(v102 + 44));
      sub_2168AE788(v109, type metadata accessor for AlbumTrackLockup);
      v111 = v149;
      *v149 = v105;
      *(v111 + 8) = v104;
      *(v111 + 16) = v106;
      *(v111 + 24) = v108;
      *(v111 + 32) = v110;
      *(v111 + 33) = v152 & 1;
      v112 = *(v146 + 32);
      *(v111 + v112) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7580);
      swift_storeEnumTagMultiPayload();
      v113 = v148;
      sub_2168AEDA8(v111, v148, type metadata accessor for StackedTrackTitlesView);
      v114 = v150;
      sub_2168AEDA8(v113, v150, type metadata accessor for StackedTrackTitlesView);
      v115 = v114 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB160) + 48);
      *v115 = 0;
      *(v115 + 8) = 1;
      sub_2168AE788(v113, type metadata accessor for StackedTrackTitlesView);
      sub_2166A6F60(v114, v165, &qword_27CABB130);
      swift_storeEnumTagMultiPayload();
      sub_2168AED64(&qword_27CABB168, type metadata accessor for TwoColumnTrackTitlesView);
      sub_2168AECC8(&qword_27CABB170, &qword_27CABB130);
      v98 = v168;
      sub_217009554();
      sub_216697664(v114, &qword_27CABB130);
      v100 = v111;
      v99 = type metadata accessor for StackedTrackTitlesView;
    }

    sub_2168AE788(v100, v99);
    v116 = MEMORY[0x277D84F90];
    v117 = v162;
    if (!v162)
    {
      v116 = 0;
    }

    v177 = v116;
    if (v162)
    {
      v118 = v153;
    }

    else
    {
      v118 = 0;
    }

    v119 = v181;
    v120 = sub_2168AD81C();
    v122 = v121;
    v123 = v171;
    sub_2168AEDA8(v119, v171, type metadata accessor for AlbumTrackLockupView);
    v124 = (*(v169 + 80) + 16) & ~*(v169 + 80);
    v125 = swift_allocObject();
    sub_2168AE8FC(v123, v125 + v124, type metadata accessor for AlbumTrackLockupView);
    v126 = v174;
    *v174 = v120;
    v126[1] = v122;
    v126[2] = sub_2168AE6F4;
    v126[3] = v125;
    v195[0] = 0x4050400000000000;
    sub_2170082B4();
    v127 = v179;
    sub_2168AEDA8(v178, v179, type metadata accessor for TrackBadgeView);
    *&v193[7] = v196;
    v193[0] = v118;
    v193[1] = v117;
    v193[2] = 0;
    v193[3] = v177;
    v193[4] = KeyPath;
    v193[5] = v161;
    v193[6] = v159;
    *&v193[9] = v197;
    *&v193[11] = v198;
    v194[0] = v127;
    v194[1] = v193;
    v182 = 0;
    v183 = v204;
    *v184 = *v203;
    *&v184[3] = *&v203[3];
    v185 = v154;
    v186 = v202;
    *v187 = *v201;
    *&v187[3] = *&v201[3];
    v188 = v155;
    v189 = v200;
    *&v190[3] = *&v199[3];
    *v190 = *v199;
    v191 = v157;
    v192 = v156;
    v194[2] = &v182;
    v128 = v180;
    v129 = v167;
    sub_2166A6F60(v180, v167, &qword_27CABB158);
    v194[3] = v129;
    v130 = v98;
    v131 = v98;
    v132 = v173;
    sub_2166A6F60(v130, v173, &qword_27CABB140);
    v194[4] = v132;
    v133 = v175;
    sub_2166A6F60(v126, v175, &qword_27CABB128);
    v194[5] = v133;
    sub_2168AA838(v194, v176);
    sub_216697664(v126, &qword_27CABB128);
    sub_216697664(v131, &qword_27CABB140);
    sub_216697664(v128, &qword_27CABB158);
    sub_2168AE788(v178, type metadata accessor for TrackBadgeView);
    sub_216697664(v133, &qword_27CABB128);
    sub_216697664(v132, &qword_27CABB140);
    sub_216697664(v129, &qword_27CABB158);
    memcpy(v195, v193, sizeof(v195));
    sub_216697664(v195, &qword_27CABB178);
    return sub_2168AE788(v179, type metadata accessor for TrackBadgeView);
  }

  else
  {
    type metadata accessor for PlaybackPresenter();
    sub_2168AED64(&qword_280E3FDB0, type metadata accessor for PlaybackPresenter);
    result = sub_217008CD4();
    __break(1u);
  }

  return result;
}

uint64_t sub_2168AD35C()
{
  v0 = type metadata accessor for AlbumTrackLockup();
  v1 = v0 - 8;
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2168ABD3C();
  v4 = &v3[*(v1 + 44)];
  v5 = *v4;
  v6 = v4[8];
  sub_2168AE788(v3, type metadata accessor for AlbumTrackLockup);
  v7 = 0;
  if ((v6 & 1) == 0)
  {
    v8 = objc_opt_self();
    v9 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v10 = [v8 localizedStringFromNumber:v9 numberStyle:0];

    v7 = sub_21700E514();
  }

  return v7;
}

uint64_t sub_2168AD484()
{
  v1 = sub_2170090F4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 40);
  if (*(v0 + 48) != 1)
  {

    sub_21700ED94();
    v6 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return (0xFCu >> v5) & 1;
}

uint64_t sub_2168AD5D4()
{
  v0 = type metadata accessor for AlbumTrackLockup();
  v1 = v0 - 8;
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2168ABD3C();
  v4 = *&v3[*(v1 + 40)];
  sub_21700DF14();
  sub_2168AE788(v3, type metadata accessor for AlbumTrackLockup);
  if (v4)
  {
    sub_216CE09CC(v4, &v7);

    if (v7.n128_u64[1])
    {
      v4 = v8;
      sub_21700DF14();
      sub_2167ADC98(&v7);
    }

    else
    {
      sub_216697664(&v7, &qword_27CAB8100);
      return 0;
    }
  }

  return v4;
}

uint64_t sub_2168AD6E0()
{
  v0 = type metadata accessor for AlbumTrackLockup();
  MEMORY[0x28223BE20](v0);
  v2 = &v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2168AD5D4();
  if (v3)
  {
  }

  sub_2168AE1AC();
  sub_2168ABD3C();
  return sub_2168AE788(v2, type metadata accessor for AlbumTrackLockup);
}

uint64_t sub_2168AD81C()
{
  v0 = type metadata accessor for AlbumTrackLockup();
  MEMORY[0x28223BE20](v0);
  v2 = &v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_2168AD484() & 1) == 0)
  {
    return 0;
  }

  sub_2168ABD3C();
  v3 = v2[*(v0 + 40) + 8];
  sub_2168AE788(v2, type metadata accessor for AlbumTrackLockup);
  if (v3)
  {
    return 0;
  }

  if (qword_27CAB5B60 != -1)
  {
    swift_once();
  }

  v5 = [qword_27CABEAF8 stringFromSeconds_];
  v4 = sub_21700E514();

  return v4;
}

uint64_t sub_2168AD964@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v1 = sub_21700D704();
  v45 = *(v1 - 8);
  v46 = v1;
  MEMORY[0x28223BE20](v1);
  v43 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_21700D284();
  v42 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v41 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AlbumTrackLockup();
  v5 = v4 - 8;
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v40 - v9;
  v11 = type metadata accessor for MenuContext(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v40 - v15;
  v17 = type metadata accessor for MenuConfiguration(0);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v50 = &v40 - v21;
  v22 = sub_21700C2F4();
  v48 = *(v22 - 8);
  v49 = v22;
  MEMORY[0x28223BE20](v22);
  v24 = &v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2168C032C();
  v25 = type metadata accessor for ContentDescriptor();
  v51 = v16;
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v25);
  v26 = v13;
  swift_storeEnumTagMultiPayload();
  sub_2168ABD3C();
  v27 = &v10[*(v5 + 104)];
  v28 = *(v27 + 1);
  v47 = *v27;
  sub_21700DF14();
  sub_2168AE788(v10, type metadata accessor for AlbumTrackLockup);
  v56 = 0;
  memset(v55, 0, sizeof(v55));
  sub_2168ABD3C();
  sub_2166A6F60(&v8[*(v5 + 32)], v53, &qword_27CAB6DB0);
  sub_2168AE788(v8, type metadata accessor for AlbumTrackLockup);
  v29 = v54;
  if (v54)
  {
    __swift_project_boxed_opaque_existential_1(v53, v54);
    v30 = v41;
    sub_21700CE54();
    v31 = v43;
    sub_21700D274();
    v32 = sub_21700D6C4();
    v29 = v33;
    (*(v45 + 8))(v31, v46);
    (*(v42 + 8))(v30, v44);
    __swift_destroy_boxed_opaque_existential_1Tm(v53);
  }

  else
  {
    sub_216697664(v53, &qword_27CAB6DB0);
    v32 = 0;
  }

  v34 = v51;
  sub_2166A6F60(v51, v20, &qword_27CAB6A00);
  sub_2168AEDA8(v26, &v20[v17[5]], type metadata accessor for MenuContext);
  v35 = &v20[v17[6]];
  *v35 = v47;
  *(v35 + 1) = v28;
  *&v20[v17[7]] = 0;
  sub_2166A6F60(v55, &v20[v17[8]], &qword_27CAB6DB0);
  if (!v29)
  {
    v32 = 0;
    v29 = 0xE000000000000000;
  }

  sub_216697664(v55, &qword_27CAB6DB0);
  sub_2168AE788(v26, type metadata accessor for MenuContext);
  sub_216697664(v34, &qword_27CAB6A00);
  v36 = &v20[v17[9]];
  *v36 = v32;
  v36[1] = v29;
  v37 = v20;
  v38 = v50;
  sub_2168AE8FC(v37, v50, type metadata accessor for MenuConfiguration);
  sub_2169BC258();
  sub_2168AE788(v38, type metadata accessor for MenuConfiguration);
  return (*(v48 + 8))(v24, v49);
}

uint64_t sub_2168ADF64()
{
  v0 = type metadata accessor for MenuContext(0);
  MEMORY[0x28223BE20](v0);
  v2 = &v14 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for AlbumTrackLockup();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MenuConfiguration(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21700C2F4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2168C032C();
  sub_2168ABD3C();
  swift_storeEnumTagMultiPayload();
  sub_2168A6BB0(v2, 0, v8);
  sub_2168AE788(v2, type metadata accessor for MenuContext);
  sub_2168AE788(v5, type metadata accessor for AlbumTrackLockup);
  sub_2169BC258();
  sub_2168AE788(v8, type metadata accessor for MenuConfiguration);
  return (*(v10 + 8))(v12, v9);
}

double sub_2168AE1AC()
{
  v1 = v0;
  v2 = sub_2170090F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + 24);
  if (*(v1 + 32) == 1)
  {
    v7 = *(v1 + 24);
  }

  else
  {

    sub_21700ED94();
    v8 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v6, 0);
    (*(v3 + 8))(v5, v2);
    v7 = v13;
  }

  type metadata accessor for AlbumTrackLockupView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40);
  sub_2170082C4();
  v9 = v13;
  if (sub_2168AD484())
  {
    sub_2170082C4();
    v10 = v13 + 58.0;
  }

  else
  {
    v10 = 58.0;
  }

  return v7 - (v9 + v9 + 9.0 + v10);
}

uint64_t type metadata accessor for AlbumTrackLockupView()
{
  result = qword_27CABB268;
  if (!qword_27CABB268)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2168AE40C()
{
  result = qword_27CABB0C8;
  if (!qword_27CABB0C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABB0B0);
    sub_2168AE4C4();
    sub_2168AECC8(&qword_280E2A818, &qword_27CAB8AE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABB0C8);
  }

  return result;
}

unint64_t sub_2168AE4C4()
{
  result = qword_27CABB0D0;
  if (!qword_27CABB0D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABB0A8);
    sub_2168AECC8(&qword_27CABB0D8, &qword_27CABB0A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABB0D0);
  }

  return result;
}

unint64_t sub_2168AE57C()
{
  result = qword_27CABB0E0;
  if (!qword_27CABB0E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABB0C0);
    sub_2168AE608();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABB0E0);
  }

  return result;
}

unint64_t sub_2168AE608()
{
  result = qword_27CABB0E8;
  if (!qword_27CABB0E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABB0F0);
    sub_2168AED64(&qword_27CABB0F8, type metadata accessor for MusicVideoContextMenu);
    sub_2168AED64(&qword_27CABB100, type metadata accessor for SongContextMenu);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABB0E8);
  }

  return result;
}

uint64_t sub_2168AE70C(uint64_t (*a1)(uint64_t))
{
  OUTLINED_FUNCTION_8_1();
  v2 = type metadata accessor for AlbumTrackLockupView();
  OUTLINED_FUNCTION_36(v2);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a1(v4);
}

uint64_t sub_2168AE788(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_2168AE7E0()
{
  result = qword_27CABB180;
  if (!qword_27CABB180)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CABB180);
  }

  return result;
}

uint64_t sub_2168AE848(uint64_t a1)
{
  sub_21700ADF4();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_7();
  (*(v5 + 16))(v4 - v3, a1);
  return sub_217008D94();
}

uint64_t sub_2168AE8FC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_9();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

void sub_2168AE97C()
{
  sub_2168AEA68();
  if (v0 <= 0x3F)
  {
    sub_2167B84AC();
    if (v1 <= 0x3F)
    {
      sub_2168AEB44(319, &qword_280E2B480);
      if (v2 <= 0x3F)
      {
        sub_2168AEB44(319, &qword_280E2B488);
        if (v3 <= 0x3F)
        {
          sub_2167D1C30();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2168AEA68()
{
  if (!qword_27CABB278)
  {
    type metadata accessor for AlbumTrackLockup();
    sub_2168AED64(qword_280E41540, type metadata accessor for AlbumTrackLockup);
    sub_2168AED64(&qword_280E41520, type metadata accessor for AlbumTrackLockup);
    v0 = type metadata accessor for MappedContainerItem();
    if (!v1)
    {
      atomic_store(v0, &qword_27CABB278);
    }
  }
}

void sub_2168AEB44(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_2170080E4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_2168AEB90()
{
  result = qword_27CABB280;
  if (!qword_27CABB280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABB108);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABB0B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABB0C0);
    sub_2168AE40C();
    sub_2168AE57C();
    swift_getOpaqueTypeConformance2();
    sub_2167B8760();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABB280);
  }

  return result;
}

uint64_t sub_2168AECC8(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    OUTLINED_FUNCTION_42_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2168AED0C(uint64_t a1)
{
  result = sub_2168AED64(&qword_27CABB290, type metadata accessor for AlbumTrackLockupView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2168AED64(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_42_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2168AEDA8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_9();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

uint64_t *OUTLINED_FUNCTION_88_4(uint64_t a1)
{
  *(v1 - 136) = a1;

  return __swift_allocate_boxed_opaque_existential_1((v1 - 168));
}

uint64_t OUTLINED_FUNCTION_89_8@<X0>(void (*a1)(void)@<X2>, uint64_t a2@<X8>)
{

  return sub_2168AEDA8(v3, v2 + a2, a1);
}

uint64_t OUTLINED_FUNCTION_97_4()
{

  return sub_2166A0F18((v0 - 208), v0 - 128);
}

uint64_t *OUTLINED_FUNCTION_98_6@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 184) = v1;
  *(v2 - 176) = a1;

  return __swift_allocate_boxed_opaque_existential_1((v2 - 208));
}

uint64_t OUTLINED_FUNCTION_99_7()
{

  return sub_21700D284();
}

uint64_t OUTLINED_FUNCTION_109_3()
{
  __swift_project_boxed_opaque_existential_1((v1 - 208), v0);

  return sub_21700CE54();
}

uint64_t OUTLINED_FUNCTION_115_4()
{

  return sub_216697664(v1 - 128, v0);
}

unint64_t sub_2168AEF28()
{
  result = qword_27CAB7038;
  if (!qword_27CAB7038)
  {
    type metadata accessor for NoProtoRequest();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB7038);
  }

  return result;
}

id sub_2168AEF80(void *a1)
{
  result = [objc_opt_self() valueWithNewObjectInContext_];
  if (result)
  {
    v3 = result;
    sub_2166F1DCC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB3A0);
    v4 = sub_21700E594();
    v8[3] = MEMORY[0x277D837D0];
    v8[0] = v4;
    v8[1] = v5;
    v6 = a1;
    v7 = sub_2166F1E10(v8, a1);
    sub_2166F1F64(v7);
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2168AF060()
{
  result = qword_27CABB388;
  if (!qword_27CABB388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABB388);
  }

  return result;
}

unint64_t sub_2168AF0B4(uint64_t a1)
{
  *(a1 + 8) = sub_2168AF0E4();
  result = sub_2168AF138();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2168AF0E4()
{
  result = qword_27CABB390;
  if (!qword_27CABB390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABB390);
  }

  return result;
}

unint64_t sub_2168AF138()
{
  result = qword_27CABB398;
  if (!qword_27CABB398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABB398);
  }

  return result;
}

void *sub_2168AF18C(uint64_t a1)
{
  v2 = v1;
  v37 = *v1;
  v36 = type metadata accessor for ContainerDetailTracklistFooterLockup();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v4);
  v35 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v34 = &v32 - v7;
  v8 = type metadata accessor for AlbumDetailHeaderLockup();
  v9 = OUTLINED_FUNCTION_36(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7();
  v10 = sub_21700C1E4();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v32 - v17;
  *(v1 + OBJC_IVAR____TtC7MusicUI22LibraryAlbumDataSource_containerItemAutoupdatingResponseSubscription) = 0;
  v19 = OBJC_IVAR____TtC7MusicUI22LibraryAlbumDataSource_libraryData;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB440);
  __swift_storeEnumTagSinglePayload(v1 + v19, 1, 1, v20);
  *(v1 + OBJC_IVAR____TtC7MusicUI22LibraryAlbumDataSource_didUpdateTrackPopularity) = 0;
  v21 = *(v12 + 16);
  v22 = OUTLINED_FUNCTION_11_25();
  v21(v22);
  OUTLINED_FUNCTION_16_5();
  (v21)(v15, v18, v10);
  sub_217007DA4();
  v33 = *(v12 + 8);
  v33(v18, v10);
  swift_endAccess();
  v23 = OUTLINED_FUNCTION_11_25();
  v21(v23);
  sub_216BC721C();
  v24 = OUTLINED_FUNCTION_11_25();
  v21(v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB418);
  swift_allocObject();
  sub_216DC2AA4();
  v26 = v25;
  OUTLINED_FUNCTION_16_5();
  v38 = v26;
  sub_217007DA4();
  swift_endAccess();
  v27 = OUTLINED_FUNCTION_11_25();
  v21(v27);
  v28 = v34;
  sub_216F060C8(v18, v34);
  OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_1_45();
  sub_2168B5B7C();
  sub_217007DA4();
  OUTLINED_FUNCTION_8_25();
  sub_2168B5B28(v28, v29);
  swift_endAccess();
  v30 = sub_2168AF79C(a1);
  OUTLINED_FUNCTION_16_5();
  v38 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB430);
  sub_217007DA4();
  swift_endAccess();
  sub_2168AFBE4();
  sub_2168AFCE4();
  v33(a1, v10);
  return v2;
}

uint64_t sub_2168AF560(uint64_t a1)
{
  v2 = sub_21700C1E4();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  v8 = v7 - v6;
  swift_getKeyPath();
  swift_getKeyPath();
  (*(v4 + 16))(v8, a1, v2);

  sub_217007DF4();
  sub_2168AFFE4();
  return (*(v4 + 8))(a1, v2);
}

uint64_t sub_2168AF678()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return OUTLINED_FUNCTION_27_16();
}

uint64_t sub_2168AF6D8(uint64_t a1)
{
  v2 = type metadata accessor for ContainerDetailTracklistFooterLockup();
  v3 = OUTLINED_FUNCTION_36(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7();
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_45();
  sub_2168B5B7C();

  sub_217007DF4();
  OUTLINED_FUNCTION_8_25();
  return sub_2168B5B28(a1, v4);
}

uint64_t sub_2168AF79C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB490);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB498);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17[-v7];
  v22 = 0;
  v20 = 0;
  v21 = 0x8000000000000001;
  v19 = 0;
  v18 = MEMORY[0x277D84F90];
  sub_21700C1A4();
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_2166997CC(v4, &qword_27CABB490);
    return MEMORY[0x277D84F90];
  }

  (*(v6 + 32))(v8, v4, v5);
  v9 = sub_216E9A354();
  if (v9)
  {
    (*(v6 + 8))(v8, v5);
    return MEMORY[0x277D84F90];
  }

  MEMORY[0x28223BE20](v9);
  *&v17[-48] = &v22;
  *&v17[-40] = &v21;
  *&v17[-32] = &v20;
  *&v17[-24] = &v19;
  *&v17[-16] = a1;
  *&v17[-8] = &v18;
  sub_216CE15F0();
  if (v22 == 1)
  {
    v12 = sub_2168B36BC(v18, a1);
  }

  else
  {
    if (v20 < 2 || (v13 = v19, sub_2166D9530(&qword_27CABB540, &qword_27CABB498), sub_21700EC54(), sub_21700EC94(), v13 != sub_21700EC84()))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB530);
      v14 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB538) - 8);
      v15 = (*(*v14 + 80) + 32) & ~*(*v14 + 80);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_217013DA0;
      v16 = v14[14];
      type metadata accessor for LibraryAlbumDataSource.HeaderType(0);
      swift_storeEnumTagMultiPayload();
      *(v10 + v15 + v16) = v18;
      (*(v6 + 8))(v8, v5);
      return v10;
    }

    v12 = sub_2168B408C(v18);
  }

  v10 = v12;
  (*(v6 + 8))(v8, v5);

  return v10;
}

uint64_t sub_2168AFB84()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return OUTLINED_FUNCTION_27_16();
}

uint64_t sub_2168AFBE4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_21700EA74();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  sub_21700EA34();

  v6 = sub_21700EA24();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v1;
  sub_21677BBA0();
}

void sub_2168AFCE4()
{
  v27 = *v0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  v2 = OUTLINED_FUNCTION_36(v1);
  MEMORY[0x28223BE20](v2);
  v4 = &v24 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB480);
  v6 = OUTLINED_FUNCTION_36(v5);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB488);
  OUTLINED_FUNCTION_1();
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v14);
  v15 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  v19 = OBJC_IVAR____TtC7MusicUI22LibraryAlbumDataSource_didUpdateTrackPopularity;
  if ((*(v0 + OBJC_IVAR____TtC7MusicUI22LibraryAlbumDataSource_didUpdateTrackPopularity) & 1) == 0)
  {
    sub_2168B1C88(v8);
    if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
    {
      sub_2166997CC(v8, &qword_27CABB480);
    }

    else
    {
      v25 = *(v11 + 32);
      v26 = v4;
      v25(v18, v8, v9);
      *(v0 + v19) = 1;
      v20 = sub_21700EA74();
      __swift_storeEnumTagSinglePayload(v4, 1, 1, v20);
      (*(v11 + 16))(v15, v18, v9);
      v21 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v22 = (v13 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
      v23 = swift_allocObject();
      *(v23 + 16) = 0;
      *(v23 + 24) = 0;
      v25((v23 + v21), v15, v9);
      *(v23 + v22) = v0;
      *(v23 + ((v22 + 15) & 0xFFFFFFFFFFFFFFF8)) = v27;

      sub_21677BBA0();

      (*(v11 + 8))(v18, v9);
    }
  }
}

uint64_t sub_2168AFFE4()
{
  v10[1] = *v0;
  v1 = type metadata accessor for ContainerDetailTracklistFooterLockup();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21700C1E4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AlbumDetailHeaderLockup();
  MEMORY[0x28223BE20](v8 - 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();

  sub_216BC721C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB418);
  swift_allocObject();
  sub_216DC2AA4();
  sub_2168AF678();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();

  sub_216F060C8(v7, v3);
  sub_2168AF6D8(v3);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();

  sub_2168AF79C(v7);
  (*(v5 + 8))(v7, v4);
  return sub_2168AFB84();
}

uint64_t sub_2168B02FC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_38();
  sub_217007DE4();

  return v1;
}

uint64_t sub_2168B0380()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();
}

uint64_t sub_2168B03F0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_38();
  sub_217007DE4();

  return v1;
}

uint64_t sub_2168B0460(uint64_t a1)
{
  v2 = sub_21700C1E4();
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  return sub_2168AF560(v4);
}

uint64_t sub_2168B057C()
{
  OUTLINED_FUNCTION_102();
  v0 = type metadata accessor for ContainerDetailTracklistFooterLockup();
  v1 = OUTLINED_FUNCTION_36(v0);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_7();
  v4 = v3 - v2;
  OUTLINED_FUNCTION_1_45();
  sub_2168B5B7C();
  return sub_2168AF6D8(v4);
}

BOOL sub_2168B0624()
{
  v0 = sub_21700C1E4();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB490);
  v8 = OUTLINED_FUNCTION_36(v7);
  MEMORY[0x28223BE20](v8);
  v10 = &v14[-v9];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();

  sub_21700C1A4();
  (*(v2 + 8))(v6, v0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB498);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_2166997CC(v10, &qword_27CABB490);
    return 0;
  }

  else
  {
    sub_2166D9530(&qword_27CABB540, &qword_27CABB498);
    sub_21700EC54();
    sub_21700EC94();
    v13 = sub_21700EC84();
    (*(*(v11 - 8) + 8))(v10, v11);
    return v13 > 0;
  }
}

uint64_t sub_2168B086C()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CABB3A8);
  __swift_project_value_buffer(v0, qword_27CABB3A8);
  return sub_217007C94();
}

uint64_t sub_2168B08EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_21700EA34();
  *(v4 + 24) = sub_21700EA24();
  v6 = sub_21700E9B4();

  return MEMORY[0x2822009F8](sub_2168B0984, v6, v5);
}

uint64_t sub_2168B0984()
{

  sub_2168B09E4();
  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_2168B09E4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE1F0);
  MEMORY[0x28223BE20](v2 - 8);
  v51 = &v46 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB4D8);
  v5 = *(v4 - 8);
  v52 = v4;
  v53 = v5;
  MEMORY[0x28223BE20](v4);
  v48 = &v46 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB4E0);
  v8 = *(v7 - 8);
  v54 = v7;
  v55 = v8;
  MEMORY[0x28223BE20](v7);
  v49 = &v46 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB4E8);
  v11 = *(v10 - 8);
  v56 = v10;
  v57 = v11;
  MEMORY[0x28223BE20](v10);
  v50 = &v46 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB478);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v46 - v14;
  v16 = sub_21700C1E4();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB4F0);
  v21 = *(v20 - 8);
  v46 = v20;
  v47 = v21;
  MEMORY[0x28223BE20](v20);
  v58 = &v46 - v22;
  sub_21700B7E4();
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB4F8);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_217013DA0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();

  v25 = sub_21700C164();
  v27 = v26;
  (*(v17 + 8))(v19, v16);
  *(v24 + 32) = v25;
  *(v24 + 40) = v27;
  v28 = v46;
  v29 = v58;
  MEMORY[0x21CE9C5F0](KeyPath, v24, v46, MEMORY[0x277CD7E88]);

  sub_2166D9530(&qword_27CABB500, &qword_27CABB4F0);
  v30 = sub_217006944();
  v31 = *(v21 + 16);
  v32 = v28;
  v31(v15, v29, v28);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB440);
  *&v15[*(v33 + 36)] = v30;
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v33);
  v34 = OBJC_IVAR____TtC7MusicUI22LibraryAlbumDataSource_libraryData;
  swift_beginAccess();

  sub_2168B5888(v15, v1 + v34);
  swift_endAccess();
  v35 = v48;
  sub_217006974();
  sub_2166AF2EC();
  v36 = sub_21700EE84();
  v59 = v36;
  v37 = sub_21700EE64();
  v38 = v51;
  __swift_storeEnumTagSinglePayload(v51, 1, 1, v37);
  sub_2166D9530(&qword_27CABB508, &qword_27CABB4D8);
  sub_2168B58F8(&qword_280E29CD8, sub_2166AF2EC);
  v39 = v49;
  v40 = v52;
  sub_217007E54();
  sub_2166997CC(v38, &qword_27CABE1F0);

  (*(v53 + 8))(v35, v40);
  sub_2166D9530(&qword_27CABB510, &qword_27CABB4E0);
  v41 = v50;
  v42 = v54;
  sub_217007E64();
  (*(v55 + 8))(v39, v42);
  swift_allocObject();
  swift_weakInit();
  sub_2166D9530(&qword_27CABB518, &qword_27CABB4E8);
  v43 = v56;
  v44 = sub_217007E84();

  (*(v57 + 8))(v41, v43);
  (*(v47 + 8))(v58, v32);
  *(v1 + OBJC_IVAR____TtC7MusicUI22LibraryAlbumDataSource_containerItemAutoupdatingResponseSubscription) = v44;
}

uint64_t sub_2168B115C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB520);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - v9;
  v11 = sub_21700EA74();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
  sub_2168B5948(a1, v7);
  sub_21700EA34();

  v12 = sub_21700EA24();
  v13 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  v14[2] = v12;
  v14[3] = v15;
  v14[4] = a2;
  sub_2167A6724(v7, v14 + v13, &qword_27CABB520);
  sub_21677BBA0();
}

uint64_t sub_2168B1324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = sub_21700B804();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB4A8);
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB520);
  v5[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB4A0);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v8 = sub_21700C1E4();
  v5[16] = v8;
  v5[17] = *(v8 - 8);
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  sub_21700EA34();
  v5[20] = sub_21700EA24();
  v10 = sub_21700E9B4();
  v5[21] = v10;
  v5[22] = v9;

  return MEMORY[0x2822009F8](sub_2168B1564, v10, v9);
}

uint64_t sub_2168B18E0()
{
  OUTLINED_FUNCTION_93();
  v2 = *v1;
  OUTLINED_FUNCTION_28();
  *v3 = v2;
  *v3 = *v1;

  if (v0)
  {
    v5 = v2[8];
    v4 = v2[9];
    v6 = v2[7];

    (*(v5 + 8))(v4, v6);
    v7 = v2[21];
    v8 = v2[22];
    v9 = sub_2168B1BA4;
  }

  else
  {
    v10 = v2[16];
    v11 = v2[17];
    v12 = v2[14];
    (*(v2[8] + 8))(v2[9], v2[7]);

    v13 = *(v11 + 8);
    v2[26] = v13;
    v2[27] = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v13(v12, v10);
    v7 = v2[21];
    v8 = v2[22];
    v9 = sub_2168B1A84;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_2168B1A84()
{
  OUTLINED_FUNCTION_82_0();
  v1 = v0[26];
  v2 = v0[19];
  v4 = v0[17];
  v3 = v0[18];
  v6 = v0[15];
  v5 = v0[16];

  __swift_storeEnumTagSinglePayload(v6, 0, 1, v5);
  (*(v4 + 32))(v2, v6, v5);
  (*(v4 + 16))(v3, v2, v5);
  sub_2168AF560(v3);

  v1(v2, v5);
  OUTLINED_FUNCTION_13_0();

  OUTLINED_FUNCTION_3();

  return v7();
}

uint64_t sub_2168B1BA4()
{
  OUTLINED_FUNCTION_93();
  v1 = v0[20];
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[14];

  (*(v3 + 8))(v4, v2);
  OUTLINED_FUNCTION_29_14();
  sub_2166997CC(v1, &qword_27CABB4A0);
  OUTLINED_FUNCTION_13_0();

  OUTLINED_FUNCTION_3();

  return v5();
}

uint64_t sub_2168B1C88@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21700C1E4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v28[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v28[-v7];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();

  v9 = sub_21700C0B4();
  v11 = v10;
  v12 = *(v3 + 8);
  v12(v8, v2);
  if (v11)
  {
    swift_getKeyPath();
    v31[0] = v9;
    v31[1] = v11;
    sub_2168B58F8(&qword_27CABB4C8, MEMORY[0x277CD82C8]);
    sub_21700B904();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC2EE0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_21701D830;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB4D0);
    *(v13 + 32) = sub_21700B704();
    *(v13 + 40) = sub_21700B674();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB488);
    sub_21700B8E4();
    sub_21700B8F4();
    v15 = a1;
    v16 = 0;
    v17 = v14;
  }

  else
  {
    if (qword_27CAB5988 != -1)
    {
      swift_once();
    }

    v18 = sub_217007CA4();
    __swift_project_value_buffer(v18, qword_27CABB3A8);

    v19 = sub_217007C84();
    v20 = sub_21700ED64();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31[0] = v30;
      *v21 = 136315138;
      swift_getKeyPath();
      v29 = v20;
      swift_getKeyPath();
      sub_217007DE4();

      sub_2168B58F8(&qword_27CABB4B8, MEMORY[0x277CD82C8]);
      v22 = sub_21700F784();
      v24 = v23;
      v12(v5, v2);
      v25 = sub_2166A85FC(v22, v24, v31);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_216679000, v19, v29, "Album has no catalog ID. album=%s", v21, 0xCu);
      v26 = v30;
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      MEMORY[0x21CEA1440](v26, -1, -1);
      MEMORY[0x21CEA1440](v21, -1, -1);
    }

    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB488);
    v15 = a1;
    v16 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v15, v16, 1, v17);
}

uint64_t sub_2168B20D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB490);
  v5[3] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB498);
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB4A0);
  v5[7] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB4A8);
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB4B0);
  v5[11] = v8;
  v5[12] = *(v8 - 8);
  v9 = swift_task_alloc();
  v5[13] = v9;
  v10 = sub_21700C1E4();
  v5[14] = v10;
  v5[15] = *(v10 - 8);
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v11 = swift_task_alloc();
  v5[19] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB488);
  *v11 = v5;
  v11[1] = sub_2168B23B4;

  return MEMORY[0x282124780](v9, v12);
}

uint64_t sub_2168B23B4()
{
  v2 = *v1;
  OUTLINED_FUNCTION_28();
  *v3 = v2;
  *(v4 + 160) = v0;

  if (v0)
  {
    v5 = sub_2168B2BE0;
  }

  else
  {
    v5 = sub_2168B24C0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2168B2990()
{
  OUTLINED_FUNCTION_93();
  v2 = *(*v1 + 136);
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 112);
  v9 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v9;
  v9[23] = v0;

  v6 = *(v3 + 8);
  v9[24] = v6;
  v9[25] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v2, v4);

  if (v0)
  {
    v7 = sub_2168B2E44;
  }

  else
  {
    v7 = sub_2168B2B24;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2168B2B24()
{
  OUTLINED_FUNCTION_82_0();
  v1 = OUTLINED_FUNCTION_14_18();
  v2(v1);
  v3 = OUTLINED_FUNCTION_38();
  v0(v3);
  OUTLINED_FUNCTION_6_31();

  OUTLINED_FUNCTION_3();

  return v4();
}

uint64_t sub_2168B2BE0()
{
  v23 = v0;
  v2 = *(v0 + 160);
  if (qword_27CAB5988 != -1)
  {
    OUTLINED_FUNCTION_5_27();
  }

  v3 = sub_217007CA4();
  __swift_project_value_buffer(v3, qword_27CABB3A8);

  v4 = v2;
  v5 = sub_217007C84();
  v6 = sub_21700ED64();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = OUTLINED_FUNCTION_19_20();
    swift_slowAlloc();
    v21 = OUTLINED_FUNCTION_28_19();
    v22 = v21;
    *v7 = 138412546;
    v8 = v2;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_25_14(v9);
    KeyPath = swift_getKeyPath();
    swift_getKeyPath();
    OUTLINED_FUNCTION_23_14();

    OUTLINED_FUNCTION_0_58();
    sub_2168B58F8(v11, v12);
    sub_21700F784();
    v13 = OUTLINED_FUNCTION_21_19();
    v14(v13);
    v15 = sub_2166A85FC(v1, KeyPath, &v22);

    *(v7 + 14) = v15;
    OUTLINED_FUNCTION_30_14(&dword_216679000, v16, v17, "Could not fetch catalog album and set popularity track. error=%@ album=%s");
    sub_2166997CC(v20, &qword_27CABF880);
    OUTLINED_FUNCTION_15_20();
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    OUTLINED_FUNCTION_15_20();
    OUTLINED_FUNCTION_6();
  }

  else
  {
  }

  OUTLINED_FUNCTION_6_31();

  OUTLINED_FUNCTION_3();

  return v18();
}

uint64_t sub_2168B2E44()
{
  v27 = v0;
  v3 = OUTLINED_FUNCTION_14_18();
  v4(v3);
  v5 = OUTLINED_FUNCTION_38();
  v1(v5);
  v6 = *(v0 + 184);
  if (qword_27CAB5988 != -1)
  {
    OUTLINED_FUNCTION_5_27();
  }

  v7 = sub_217007CA4();
  __swift_project_value_buffer(v7, qword_27CABB3A8);

  v8 = v6;
  v9 = sub_217007C84();
  v10 = sub_21700ED64();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = OUTLINED_FUNCTION_19_20();
    swift_slowAlloc();
    v25 = OUTLINED_FUNCTION_28_19();
    v26 = v25;
    *v11 = 138412546;
    v12 = v6;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_25_14(v13);
    KeyPath = swift_getKeyPath();
    swift_getKeyPath();
    OUTLINED_FUNCTION_23_14();

    OUTLINED_FUNCTION_0_58();
    sub_2168B58F8(v15, v16);
    sub_21700F784();
    v17 = OUTLINED_FUNCTION_21_19();
    v18(v17);
    v19 = sub_2166A85FC(v2, KeyPath, &v26);

    *(v11 + 14) = v19;
    OUTLINED_FUNCTION_30_14(&dword_216679000, v20, v21, "Could not fetch catalog album and set popularity track. error=%@ album=%s");
    sub_2166997CC(v24, &qword_27CABF880);
    OUTLINED_FUNCTION_15_20();
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    OUTLINED_FUNCTION_15_20();
    OUTLINED_FUNCTION_6();
  }

  else
  {
  }

  OUTLINED_FUNCTION_6_31();

  OUTLINED_FUNCTION_3();

  return v22();
}

uint64_t sub_2168B30C0@<X0>(void *a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X3>, uint64_t *a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  result = a2(v5, v6);
  *a3 = result;
  a3[1] = v8;
  return result;
}

uint64_t sub_2168B3118(uint64_t a1, BOOL *a2, uint64_t *a3, void *a4, void *a5, uint64_t a6, void *a7)
{
  v49 = a6;
  v50 = a7;
  v12 = sub_21700C1E4();
  v47 = *(v12 - 8);
  v48 = v12;
  MEMORY[0x28223BE20](v12);
  v45 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21700C2F4();
  v46 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for AlbumTrackLockup();
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  if (*a2)
  {
    v23 = 1;
  }

  else
  {
    v42 = a3;
    v43 = a4;
    v24 = a5;
    v25 = sub_21700C2E4();
    if (v26)
    {
      v27 = v25;
      v28 = v26;

      v29 = HIBYTE(v28) & 0xF;
      if ((v28 & 0x2000000000000000) == 0)
      {
        v29 = v27 & 0xFFFFFFFFFFFFLL;
      }

      v23 = v29 != 0;
    }

    else
    {
      v23 = 0;
    }

    a5 = v24;
    a3 = v42;
    a4 = v43;
  }

  *a2 = v23;
  result = sub_2168B34B8();
  if ((v31 & 1) == 0 && result != *a3)
  {
    *a3 = result;
    if (__OFADD__(*a4, 1))
    {
      goto LABEL_16;
    }

    ++*a4;
  }

  result = sub_2168B34B8();
  v33 = (v32 & 1) == 0;
  v34 = __OFADD__(*a5, v33);
  v35 = *a5 + v33;
  if (!v34)
  {
    *a5 = v35;
    v43 = v20;
    v46 = *(v46 + 16);
    (v46)(v16, a1, v14);
    v36 = v48;
    v37 = *(v47 + 16);
    v38 = v49;
    v47 = v14;
    v39 = v45;
    v37();
    v44 = v22;
    sub_216BC7FB8();
    sub_2168B5B7C();
    (v46)(v16, a1, v47);
    (v37)(v39, v38, v36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF8B0);
    swift_allocObject();
    sub_2168C739C();
    v40 = v50;
    MEMORY[0x21CE9F610]();
    sub_2166C0198(*((*v40 & 0xFFFFFFFFFFFFFF8) + 0x10));
    sub_21700E8C4();
    return sub_2168B5B28(v44, type metadata accessor for AlbumTrackLockup);
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_2168B34B8()
{
  v1 = v0;
  v2 = sub_21700C084();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21700C2F4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, v1, v6);
  if ((*(v7 + 88))(v9, v6) == *MEMORY[0x277CD8368])
  {
    (*(v7 + 96))(v9, v6);
    (*(v3 + 32))(v5, v9, v2);
    v10 = sub_21700BF74();
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    (*(v7 + 8))(v9, v6);
    return 0;
  }

  return v10;
}

uint64_t sub_2168B36BC(unint64_t a1, uint64_t a2)
{
  v84 = type metadata accessor for AlbumTrackLockup();
  MEMORY[0x28223BE20](v84);
  v83 = v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21700C2F4();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v95 = v69 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = v69 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB548);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v69 - v18;
  v20 = sub_21700C084();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v85 = v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v74 = v69 - v24;
  if (a1 >> 62)
  {
    v25 = sub_21700F2B4();
  }

  else
  {
    v25 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v86 = v25;
  if (!v25)
  {
    __swift_storeEnumTagSinglePayload(v19, 1, 1, v20);
LABEL_49:
    sub_2166997CC(v19, &qword_27CABB548);
    return MEMORY[0x277D84F90];
  }

  v73 = a2;
  v79 = v6;
  sub_216C746F0(0);
  v94 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    MEMORY[0x21CEA0220](0, a1);
  }

  else
  {
  }

  sub_2168C032C();

  sub_216A8E8E8(v19);
  v26 = *(v6 + 8);
  v81 = v6 + 8;
  v80 = v26;
  v26(v13, v5);
  if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
  {
    goto LABEL_49;
  }

  v27 = v74;
  v92 = *(v21 + 32);
  v93 = v21 + 32;
  v92();
  v28 = sub_21700C064();
  if (!v29)
  {
    (*(v21 + 8))(v27, v20);
    return MEMORY[0x277D84F90];
  }

  v30 = HIBYTE(v29) & 0xF;
  if ((v29 & 0x2000000000000000) == 0)
  {
    v30 = v28 & 0xFFFFFFFFFFFFLL;
  }

  v31 = v29;
  if (!v30)
  {
    (*(v21 + 8))(v27, v20);

    return MEMORY[0x277D84F90];
  }

  v32 = v28;
  v33 = swift_allocObject();
  v91 = v32;
  *(v33 + 16) = v32;
  v82 = v33;
  v75 = v31;
  *(v33 + 24) = v31;
  v34 = sub_21700BFA4();
  if (!v35)
  {
    v34 = sub_21700BF64();
  }

  v90 = a1;
  v36 = v82;
  *(v82 + 32) = v34;
  *(v36 + 40) = v35;
  v72 = v35;
  *(v36 + 48) = 0;
  v37 = swift_allocObject();
  v38 = MEMORY[0x277D84F90];
  v71 = v37;
  *(v37 + 16) = MEMORY[0x277D84F90];
  v39 = v37 + 16;
  v40 = swift_allocObject();
  v70 = v40;
  *(v40 + 16) = v38;
  result = v40 + 16;
  v42 = v85;
  if (v86 >= 1)
  {
    v69[1] = v39;
    v77 = result;
    swift_beginAccess();
    swift_beginAccess();
    v43 = 0;
    v88 = (v79 + 88);
    v89 = (v79 + 32);
    v87 = *MEMORY[0x277CD8368];
    v76 = (v79 + 96);
    v78 = (v21 + 8);
    v44 = 0.0;
    v79 = v38;
    v45 = v86;
    while (1)
    {
      if (v94)
      {
        MEMORY[0x21CEA0220](v43, v90);
      }

      else
      {
      }

      v46 = v95;
      sub_2168C032C();
      (*v89)(v9, v46, v5);
      v47 = (*v88)(v9, v5);
      if (v47 == v87)
      {
        (*v76)(v9, v5);
        (v92)(v17, v9, v20);
        __swift_storeEnumTagSinglePayload(v17, 0, 1, v20);
      }

      else
      {
        __swift_storeEnumTagSinglePayload(v17, 1, 1, v20);
        v80(v9, v5);
      }

      if (__swift_getEnumTagSinglePayload(v17, 1, v20) != 1)
      {
        break;
      }

      sub_2166997CC(v17, &qword_27CABB548);
LABEL_39:
      if (v45 == ++v43)
      {
        v67 = v71;
        sub_2168B45C4(v70, v82, v73, v71);
        (*v78)(v74, v20);
        swift_beginAccess();
        v68 = *(v67 + 16);
        sub_21700DF14();

        return v68;
      }
    }

    v48 = v42;
    v49 = v9;
    v50 = v5;
    (v92)(v48, v17, v20);
    v51 = v83;
    sub_2168ABD3C();
    v52 = (v51 + *(v84 + 68));
    v53 = *v52;
    v54 = v52[1];
    sub_21700DF14();
    sub_2168B5B28(v51, type metadata accessor for AlbumTrackLockup);
    if (v54)
    {
      v55 = v53 == v91 && v54 == v75;
      v5 = v50;
      if (!v55)
      {
        v56 = v91;
        v9 = v49;
        if ((sub_21700F7D4() & 1) == 0)
        {
          v61 = HIBYTE(v54) & 0xF;
          if ((v54 & 0x2000000000000000) == 0)
          {
            v61 = v53 & 0xFFFFFFFFFFFFLL;
          }

          v42 = v85;
          if (v61)
          {
            v62 = v70;
            sub_2168B45C4(v70, v82, v73, v71);
            *(v62 + 16) = MEMORY[0x277D84F90];

            v63 = sub_21700BFA4();
            if (!v64)
            {
              v63 = sub_21700BF64();
            }

            v65 = v64;
            v66 = v82;
            *(v82 + 16) = v53;
            v66[3] = v54;
            v66[4] = v63;
            v66[5] = v64;
            v66[6] = 0;

            v44 = 0.0;
            v72 = v65;
            v75 = v54;
          }

          else
          {

            v53 = v91;
          }

          goto LABEL_34;
        }

        v53 = v56;
LABEL_33:
        v42 = v85;
LABEL_34:
        v57 = COERCE_DOUBLE(sub_21700C054());
        if (v58)
        {
          v57 = 0.0;
        }

        v44 = v44 + v57;
        *(v82 + 48) = v44;
        v59 = v77;
        swift_beginAccess();

        MEMORY[0x21CE9F610](v60);
        if (*((*v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21700E874();
          v59 = v77;
        }

        sub_21700E8C4();
        v79 = *v59;
        swift_endAccess();

        (*v78)(v42, v20);
        v91 = v53;
        v45 = v86;
        goto LABEL_39;
      }

      v53 = v91;
    }

    else
    {
      v53 = v91;
      v5 = v50;
    }

    v9 = v49;
    goto LABEL_33;
  }

  __break(1u);
  return result;
}

uint64_t sub_2168B408C(uint64_t a1)
{
  v38 = sub_21700C084();
  v2 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v37 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21700C2F4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - v9;
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D84F90];
  v32 = v11;
  *(v11 + 16) = MEMORY[0x277D84F90];
  v29 = v11 + 16;
  v31 = swift_allocObject();
  *(v31 + 16) = 1;
  v13 = swift_allocObject();
  v30 = v13;
  *(v13 + 16) = v12;
  v14 = (v13 + 16);
  v45 = a1;
  result = sub_2166BF3C8(a1);
  v46 = result;
  if (!result)
  {
LABEL_17:
    v27 = v32;
    sub_2168B4CB0(v30, v31, v32);
    swift_beginAccess();
    v28 = *(v27 + 16);
    sub_21700DF14();

    return v28;
  }

  if (v46 >= 1)
  {
    v44 = v45 & 0xC000000000000001;
    v39 = 1;
    swift_beginAccess();
    swift_beginAccess();
    v16 = 0;
    v42 = (v5 + 88);
    v43 = (v5 + 16);
    v41 = *MEMORY[0x277CD8368];
    v40 = (v5 + 8);
    v35 = (v5 + 96);
    v34 = (v2 + 32);
    v33 = (v2 + 8);
    v36 = v8;
    do
    {
      if (v44)
      {
        MEMORY[0x21CEA0220](v16, v45);
      }

      else
      {
      }

      sub_2168C032C();
      (*v43)(v8, v10, v4);
      v17 = (*v42)(v8, v4);
      if (v17 == v41)
      {
        (*v35)(v8, v4);
        v18 = v37;
        v19 = v38;
        (*v34)(v37, v8, v38);
        v20 = sub_21700BF74();
        v22 = v21;
        (*v33)(v18, v19);
        (*v40)(v10, v4);
        if (v22)
        {
          v8 = v36;
        }

        else
        {
          v8 = v36;
          if (v20 != v39)
          {
            v23 = v30;
            v24 = v31;
            sub_2168B4CB0(v30, v31, v32);
            *(v23 + 16) = MEMORY[0x277D84F90];

            *(v24 + 16) = v20;
            v39 = v20;
          }
        }
      }

      else
      {
        v25 = *v40;
        (*v40)(v10, v4);
        v25(v8, v4);
      }

      swift_beginAccess();

      MEMORY[0x21CE9F610](v26);
      if (*((*v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21700E874();
      }

      ++v16;
      sub_21700E8C4();
      swift_endAccess();
    }

    while (v46 != v16);
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_2168B45C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v67 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB538);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v59 - v9;
  v69 = type metadata accessor for LibraryAlbumDataSource.HeaderType(0);
  MEMORY[0x28223BE20](v69);
  v70 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for ContentDescriptor();
  MEMORY[0x28223BE20](v68);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_217006224();
  v72 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ComposerSectionHeader();
  MEMORY[0x28223BE20](v16);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v19 = *(a1 + 16);
  if (v19 >> 62)
  {
    result = sub_21700F2B4();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  result = swift_beginAccess();
  v21 = *(a2 + 24);
  v22 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v22 = *(a2 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (v22)
  {
    v61 = *(a2 + 16);
    v62 = v7;
    v63 = a1;
    v64 = v10;
    v65 = v8;
    v66 = a4;
    v23 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8978);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_217013DA0;
    swift_beginAccess();
    v25 = *(a2 + 32);
    v26 = *(a2 + 40);
    v60 = v23;
    sub_21700DF14();
    sub_21700DF14();
    sub_217006214();
    v27 = sub_2170061F4();
    v29 = v28;
    v30 = *(v72 + 8);
    v72 += 8;
    v59 = v30;
    v30(v15, v71);
    *(v24 + 32) = v27;
    *(v24 + 40) = v29;
    *(v24 + 48) = v25;
    *(v24 + 56) = v26;
    *(v24 + 64) = 0u;
    *(v24 + 80) = 0u;
    *(v24 + 96) = 0;
    swift_beginAccess();
    v31 = *(a2 + 48);
    v32 = sub_21700C0B4();
    if (!v33)
    {
      v32 = sub_21700C164();
    }

    v34 = v32;
    v35 = v33;
    v75 = 1;
    v36 = v68;
    v37 = *(v68 + 24);
    v38 = sub_217005EF4();
    __swift_storeEnumTagSinglePayload(&v13[v37], 1, 1, v38);
    *v13 = 4;
    *(v13 + 40) = 0u;
    *(v13 + 56) = 0u;
    *(v13 + 72) = 0u;
    *(v13 + 8) = 0u;
    *(v13 + 24) = 0u;
    *(v13 + 11) = v34;
    *(v13 + 12) = v35;
    *(v13 + 13) = 0;
    v13[112] = 1;
    v39 = v16[12];
    __swift_storeEnumTagSinglePayload(&v18[v39], 1, 1, v36);
    sub_217006214();
    v40 = sub_2170061F4();
    v42 = v41;
    v59(v15, v71);
    v73 = v40;
    v74 = v42;
    sub_21700F364();
    v43 = &v18[v16[6]];
    v44 = v60;
    *v43 = v61;
    *(v43 + 1) = v44;
    v45 = &v18[v16[7]];
    *v45 = v24;
    v45[8] = 1;
    v46 = &v18[v16[8]];
    *v46 = 0;
    v46[8] = 0;
    v47 = &v18[v16[9]];
    *v47 = v31 * 1000.0;
    v47[8] = 0;
    v48 = &v18[v16[11]];
    *(v48 + 4) = 0;
    *v48 = 0u;
    *(v48 + 1) = 0u;
    v49 = &v18[v16[10]];
    *v49 = 0;
    *(v49 + 1) = 0;
    sub_2166997CC(&v18[v39], &qword_27CAB6A00);
    sub_2168B5AD0();
    __swift_storeEnumTagSinglePayload(&v18[v39], 0, 1, v36);
    v50 = v16[5];
    v51 = sub_21700D7A4();
    __swift_storeEnumTagSinglePayload(&v18[v50], 1, 1, v51);
    sub_2168B5B7C();
    swift_storeEnumTagMultiPayload();
    v52 = v63;
    swift_beginAccess();
    v53 = *(v52 + 16);
    v54 = *(v62 + 48);
    v55 = v64;
    sub_2168B5AD0();
    *(v55 + v54) = v53;
    v56 = v66;
    swift_beginAccess();
    sub_21700DF14();
    sub_216DF3B14();
    v57 = *(*(v56 + 16) + 16);
    sub_216DF3C78(v57);
    v58 = *(v56 + 16);
    *(v58 + 16) = v57 + 1;
    sub_2167A6724(v55, v58 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v57, &qword_27CABB538);
    *(v56 + 16) = v58;
    swift_endAccess();
    return sub_2168B5B28(v18, type metadata accessor for ComposerSectionHeader);
  }

  return result;
}

uint64_t sub_2168B4CB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB538);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v39 - v8;
  v43 = type metadata accessor for LibraryAlbumDataSource.HeaderType(0);
  MEMORY[0x28223BE20](v43);
  v44 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_217006224();
  v11 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DefaultSectionHeader();
  MEMORY[0x28223BE20](v14);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v17 = *(a1 + 16);
  if (v17 >> 62)
  {
    result = sub_21700F2B4();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7518);
  inited = swift_initStackObject();
  v40 = v6;
  v20 = inited;
  *(inited + 16) = xmmword_217013DA0;
  swift_beginAccess();
  v21 = *(a2 + 16);
  v22 = MEMORY[0x277D83C10];
  v20[7] = MEMORY[0x277D83B88];
  v20[8] = v22;
  v20[4] = v21;
  v23 = sub_216983808(10);
  v25 = v24;
  sub_217006214();
  v26 = sub_2170061F4();
  v39 = v9;
  v27 = a1;
  v28 = v26;
  v41 = v7;
  v29 = a3;
  v31 = v30;
  (*(v11 + 8))(v13, v42);
  *(v16 + 8) = 0;
  *(v16 + 2) = 0u;
  *(v16 + 3) = 0u;
  *v16 = 0u;
  *(v16 + 1) = 0u;
  v32 = v14[8];
  v33 = type metadata accessor for Artwork();
  __swift_storeEnumTagSinglePayload(&v16[v32], 1, 1, v33);
  *(v16 + 9) = v28;
  *(v16 + 10) = v31;
  *(v16 + 11) = v23;
  *(v16 + 12) = v25;
  *(v16 + 104) = 0u;
  *(v16 + 120) = 0u;
  *(v16 + 136) = 0u;
  *(v16 + 19) = 0;
  v16[v14[9]] = 0;
  v16[v14[11]] = 2;
  v16[v14[10]] = 0;
  sub_2168B5B7C();
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  v34 = *(v27 + 16);
  v35 = *(v40 + 48);
  v36 = v39;
  sub_2168B5AD0();
  *(v36 + v35) = v34;
  swift_beginAccess();
  sub_21700DF14();
  sub_216DF3B14();
  v37 = *(*(v29 + 16) + 16);
  sub_216DF3C78(v37);
  v38 = *(v29 + 16);
  *(v38 + 16) = v37 + 1;
  sub_2167A6724(v36, v38 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v37, &qword_27CABB538);
  *(v29 + 16) = v38;
  swift_endAccess();
  return sub_2168B5B28(v16, type metadata accessor for DefaultSectionHeader);
}

uint64_t sub_2168B513C()
{
  v1 = OBJC_IVAR____TtC7MusicUI22LibraryAlbumDataSource__album;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB458);
  OUTLINED_FUNCTION_9_0();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC7MusicUI22LibraryAlbumDataSource__headerModel;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB460);
  OUTLINED_FUNCTION_9_0();
  (*(v4 + 8))(v0 + v3);
  v5 = OBJC_IVAR____TtC7MusicUI22LibraryAlbumDataSource__footerModel;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB468);
  OUTLINED_FUNCTION_9_0();
  (*(v6 + 8))(v0 + v5);
  v7 = OBJC_IVAR____TtC7MusicUI22LibraryAlbumDataSource__trackSections;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB470);
  OUTLINED_FUNCTION_9_0();
  (*(v8 + 8))(v0 + v7);

  sub_2166997CC(v0 + OBJC_IVAR____TtC7MusicUI22LibraryAlbumDataSource_libraryData, &qword_27CABB478);
  return v0;
}

uint64_t sub_2168B528C()
{
  sub_2168B513C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_2168B530C()
{
  sub_2168B5554(319, &qword_27CABB408, MEMORY[0x277CD82C8]);
  if (v0 <= 0x3F)
  {
    sub_2168B55A8(319, &qword_27CABB410, &qword_27CABB418, &unk_21704BD50, MEMORY[0x277CBCED0]);
    if (v1 <= 0x3F)
    {
      sub_2168B5554(319, &qword_27CABB420, type metadata accessor for ContainerDetailTracklistFooterLockup);
      if (v2 <= 0x3F)
      {
        sub_2168B55A8(319, &qword_27CABB428, &qword_27CABB430, &unk_2170236B0, MEMORY[0x277CBCED0]);
        if (v3 <= 0x3F)
        {
          sub_2168B55A8(319, &qword_27CABB438, &qword_27CABB440, &unk_2170236D0, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_2168B5554(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_217007E14();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2168B55A8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_2168B562C()
{
  result = type metadata accessor for ComposerSectionHeader();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for DefaultSectionHeader();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2168B56A0()
{
  OUTLINED_FUNCTION_82_0();
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB488) - 8);
  v3 = *(v0 + ((*(v2 + 64) + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2168B5BD4;
  OUTLINED_FUNCTION_17_4();

  return sub_2168B20D4(v5, v6, v7, v8, v3);
}

uint64_t sub_2168B57DC()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2166F2728;
  OUTLINED_FUNCTION_17_4();

  return sub_2168B08EC(v4, v5, v6, v2);
}

uint64_t sub_2168B5888(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB478);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2168B58F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2168B5948(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB520);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2168B59B8()
{
  OUTLINED_FUNCTION_93();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB520);
  OUTLINED_FUNCTION_36(v2);
  v3 = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2168B5BD4;
  OUTLINED_FUNCTION_17_4();

  return sub_2168B1324(v5, v6, v7, v3, v8);
}

uint64_t sub_2168B5AD0()
{
  v2 = OUTLINED_FUNCTION_102();
  v3(v2);
  OUTLINED_FUNCTION_34();
  (*(v4 + 32))(v0, v1);
  return v0;
}

uint64_t sub_2168B5B28(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2168B5B7C()
{
  v2 = OUTLINED_FUNCTION_102();
  v3(v2);
  OUTLINED_FUNCTION_34();
  (*(v4 + 16))(v0, v1);
  return v0;
}

uint64_t sub_2168B5BF4@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_2170093C4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB550);
  return sub_2168B5C44(v1, (a1 + *(v3 + 44)));
}

uint64_t sub_2168B5C44@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB558);
  MEMORY[0x28223BE20](v4);
  v6 = v100 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB560);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v100 - v11;
  v13 = type metadata accessor for ContainerDetailTracklistFooterLockup();
  v14 = *(a1 + v13[10]);
  v15 = 0;
  v111 = a2;
  if (v14 && (v128[0] = v14, *(v14 + 16)))
  {
    v105 = v13;
    v106 = a1;
    v107 = v6;
    v108 = v4;
    v109 = v12;
    v110 = v10;
    v16 = *(v14 + 32);
    sub_21700DF14();
    sub_216DD3CB4(0);
    v17 = sub_216B59CA0(v16);
    v19 = v18;
    v21 = v20;
    v23 = v22;
    sub_216983738(293);
    sub_217009264();
    v24 = sub_21700A154();
    v115 = v25;
    LODWORD(v114) = v26;
    v28 = v27;
    v29 = *(v128[0] + 16);
    v103 = v17;
    v104 = v23;
    v102 = v19;
    v101 = v21;
    v100[1] = v128[0];
    if (v29)
    {
      v30 = (v128[0] + 32);
      v123 = v29;
      sub_216777114(v17, v19, v21 & 1);
      sub_21700DF14();
      v31 = v17;
      v32 = v19;
      v33 = v21;
      v34 = v23;
      v112 = v24;
      v113 = v28;
      do
      {
        LODWORD(v119) = v33;
        v36 = v30 + 1;
        v35 = *v30;
        KeyPath = v32;
        v121 = v31;
        v122 = v34;
        v37 = sub_21700A064();
        v116 = v38;
        v117 = v37;
        v40 = v39;
        v118 = v41;
        v42 = sub_216B59CA0(v35);
        v44 = v43;
        v46 = v45;
        v47 = sub_21700A064();
        v49 = v48;
        v51 = v50;
        v52 = v42;
        v24 = v112;
        v53 = v44;
        v30 = v36;
        v55 = v54;
        sub_21678817C(v52, v53, v46 & 1);
        v56 = v47;

        sub_21678817C(v117, v116, v40 & 1);

        sub_21678817C(v121, KeyPath, v119 & 1);

        v31 = v47;
        v32 = v49;
        v33 = v55;
        v34 = v51;
        --v123;
      }

      while (v123);
    }

    else
    {
      sub_216777114(v17, v19, v21 & 1);
      sub_21700DF14();
      LOBYTE(v55) = v21;
      v49 = v19;
      v56 = v17;
    }

    LODWORD(v124[0]) = sub_217009834();
    v61 = sub_21700A044();
    v63 = v62;
    v64 = v55;
    v66 = v65;
    sub_21678817C(v56, v49, v64 & 1);

    sub_217009D44();
    v67 = sub_21700A094();
    v122 = v68;
    v123 = v67;
    v70 = v69;
    v121 = v71;

    sub_21678817C(v61, v63, v66 & 1);

    KeyPath = swift_getKeyPath();
    LOBYTE(v61) = sub_217009CA4();
    sub_217007F24();
    v15 = v72;
    v58 = v73;
    v59 = v74;
    v60 = v75;
    sub_21678817C(v24, v115, v114 & 1);

    sub_21678817C(v103, v102, v101 & 1);

    LOBYTE(v124[0]) = v70 & 1;
    LOBYTE(v126[0]) = 0;
    v57 = v70 & 1;
    v119 = v61;
    v12 = v109;
    v10 = v110;
    v6 = v107;
    v4 = v108;
    v13 = v105;
    a1 = v106;
  }

  else
  {
    v122 = 0;
    v123 = 0;
    KeyPath = 0;
    v121 = 0;
    v119 = 0;
    v57 = 0;
    v58 = 0;
    v59 = 0;
    v60 = 0;
  }

  v76 = (a1 + v13[8]);
  v77 = v76[1];
  if (v77)
  {
    v115 = *v76;
    v116 = MEMORY[0x277D84F90];
  }

  else
  {
    v115 = 0;
    v116 = 0;
  }

  v118 = v77;
  sub_21700DF14();
  v114 = sub_217009D44();
  v78 = swift_getKeyPath();
  v79 = sub_21700AD34();
  v113 = swift_getKeyPath();
  v80 = (a1 + v13[9]);
  v81 = v80[1];
  v117 = v78;
  if (v81 && (v82 = v80[2]) != 0 && *(v82 + 16))
  {
    v83 = *v80;
    sub_21700DF14();
    *v6 = sub_2170093C4();
    *(v6 + 1) = 0x4000000000000000;
    v6[16] = 0;
    v84 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB580) + 44)];
    v85 = v83;
    v78 = v117;
    sub_2168B63C0(v85, v81, v82, v84);

    v86 = sub_217009C94();
    sub_217007F24();
    v87 = &v6[*(v4 + 36)];
    *v87 = v86;
    *(v87 + 1) = v88;
    *(v87 + 2) = v89;
    *(v87 + 3) = v90;
    *(v87 + 4) = v91;
    v87[40] = 0;
    sub_2168B6884(v6, v12);
    v92 = 0;
  }

  else
  {
    v92 = 1;
  }

  __swift_storeEnumTagSinglePayload(v12, v92, 1, v4);
  sub_216681B64(v12, v10, &qword_27CABB560);
  v124[0] = v123;
  v124[1] = v122;
  v112 = v57;
  v124[2] = v57;
  v124[3] = v121;
  v124[4] = KeyPath;
  v124[5] = 0;
  v124[6] = v119;
  v124[7] = v15;
  v124[8] = v58;
  v124[9] = v59;
  v124[10] = v60;
  LOBYTE(v124[11]) = 0;
  v93 = v111;
  memcpy(v111, v124, 0x59uLL);
  v95 = v115;
  v94 = v116;
  v125[0] = v115;
  v125[1] = v118;
  v125[2] = 0;
  v125[3] = v116;
  v125[4] = v78;
  v97 = v113;
  v96 = v114;
  v125[5] = v114;
  v125[6] = v79;
  v125[7] = v113;
  LOBYTE(v125[8]) = 0;
  memcpy(v93 + 96, v125, 0x41uLL);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB568);
  sub_216681B64(v10, &v93[*(v98 + 64)], &qword_27CABB560);
  sub_216681B64(v124, v128, &qword_27CABB570);
  sub_216681B64(v125, v128, &qword_27CABB578);
  sub_21669987C(v12, &qword_27CABB560);
  sub_21669987C(v10, &qword_27CABB560);
  v126[0] = v95;
  v126[1] = v118;
  v126[2] = 0;
  v126[3] = v94;
  v126[4] = v117;
  v126[5] = v96;
  v126[6] = v79;
  v126[7] = v97;
  v127 = 0;
  sub_21669987C(v126, &qword_27CABB578);
  v128[0] = v123;
  v128[1] = v122;
  v128[2] = v112;
  v128[3] = v121;
  v128[4] = KeyPath;
  v128[5] = 0;
  v128[6] = v119;
  v128[7] = v15;
  v128[8] = v58;
  v128[9] = v59;
  v128[10] = v60;
  v129 = 0;
  return sub_21669987C(v128, &qword_27CABB570);
}

uint64_t sub_2168B63C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v23 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB588);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v21 - v11;
  sub_2168AE7E0();
  sub_21700DF14();
  sub_21700F074();
  v22 = sub_217009EC4();
  KeyPath = swift_getKeyPath();
  v14 = sub_21700AD34();
  *v12 = sub_21700B3B4();
  *(v12 + 1) = v15;
  *(v12 + 2) = 0;
  v12[24] = 1;
  v24 = a3;
  sub_21700DF14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8968);
  sub_2166D9530(&qword_27CAB9CF0, &qword_27CAB8968);
  sub_2168B68F4();
  sub_2168B6948();
  sub_21700B164();
  sub_216681B64(v12, v10, &qword_27CABB588);
  v16 = MEMORY[0x277D84F90];
  v18 = v22;
  v17 = v23;
  *a4 = v23;
  a4[1] = a2;
  a4[2] = 0;
  a4[3] = v16;
  a4[4] = KeyPath;
  a4[5] = v18;
  a4[6] = v14;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB5A0);
  sub_216681B64(v10, a4 + *(v19 + 48), &qword_27CABB588);
  sub_2167770D0(v17, a2, 0, MEMORY[0x277D84F90]);

  sub_21669987C(v12, &qword_27CABB588);
  sub_21669987C(v10, &qword_27CABB588);
  sub_2167C4DF0(v17, a2, 0, MEMORY[0x277D84F90]);
}

uint64_t sub_2168B6680@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_216681B64(a1 + 32, v11, &qword_27CAB6DB0);
  sub_216681B64(v11, a2, &qword_27CAB6DB0);
  v3 = sub_2168B6734();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  result = sub_21669987C(v11, &qword_27CAB6DB0);
  *(a2 + 40) = v3;
  *(a2 + 48) = v5;
  *(a2 + 56) = v7 & 1;
  *(a2 + 64) = v9;
  return result;
}

uint64_t sub_2168B6734()
{
  sub_2167B2E14();
  sub_21700DF14();
  v0 = sub_21700A174();
  v2 = v1;
  v4 = v3;
  sub_217009D44();
  v5 = sub_21700A094();
  v7 = v6;
  v9 = v8;

  sub_21678817C(v0, v2, v4 & 1);

  sub_21700AC54();
  v10 = sub_21700A044();
  sub_21678817C(v5, v7, v9 & 1);

  return v10;
}

uint64_t sub_2168B6884(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB558);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2168B68F4()
{
  result = qword_27CABB590;
  if (!qword_27CABB590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABB590);
  }

  return result;
}

unint64_t sub_2168B6948()
{
  result = qword_27CABB598;
  if (!qword_27CABB598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABB598);
  }

  return result;
}

uint64_t sub_2168B699C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContainerDetailTracklistFooterLockup();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for ContainerDetailTrackListFooterView()
{
  result = qword_280E2EC80;
  if (!qword_280E2EC80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2168B6A74()
{
  type metadata accessor for ContainerDetailTracklistFooterLockup();
  if (v0 <= 0x3F)
  {
    sub_2167B8000();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata accessor for CreditArtistContextMenu()
{
  result = qword_280E38728;
  if (!qword_280E38728)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2168B6B6C()
{
  sub_217006E94();
  if (v0 <= 0x3F)
  {
    type metadata accessor for MenuConfiguration(319);
    if (v1 <= 0x3F)
    {
      sub_2167B83B4();
      if (v2 <= 0x3F)
      {
        sub_2167EE974();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_2168B6DB4(void *a1)
{
  v2 = sub_21700F0A4();
  v3 = sub_21700F094();

  return v3 & 1;
}

uint64_t sub_2168B6E24(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 192))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_2168B6E64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 192) = 1;
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

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2168B6EEC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 89))
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

uint64_t sub_2168B6F2C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_2168B6FB0@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for PopoverSelectorToolbarContentView();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v7);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = &v9[*(v10 + 20)];
  v15[15] = 0;
  sub_21700AEA4();
  v12 = v16;
  *v11 = v15[16];
  *(v11 + 1) = v12;
  v13 = type metadata accessor for PopoverAccessoryButton();
  if (__swift_getEnumTagSinglePayload(a1, 1, v13) == 1)
  {
    sub_216697664(a2, &qword_27CABB618);
    sub_216697664(a1, &qword_27CABB648);

    return __swift_storeEnumTagSinglePayload(a3, 1, 1, v6);
  }

  else
  {
    sub_2168B9428(a1, v9, type metadata accessor for PopoverAccessoryButton);
    memcpy(&v9[*(v6 + 24)], a2, 0x58uLL);
    sub_2168B9224(v9, a3);
    __swift_storeEnumTagSinglePayload(a3, 0, 1, v6);
    return sub_2168B9288(v9);
  }
}

uint64_t sub_2168B7138@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2170098F4();
  OUTLINED_FUNCTION_1();
  v39 = v4;
  MEMORY[0x28223BE20](v5);
  v7 = (&v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for PopoverSelectorToolbarContentView();
  OUTLINED_FUNCTION_1();
  v37 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v12);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB658);
  OUTLINED_FUNCTION_1();
  v38 = v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v31 - v15;
  sub_2168B7588(v44);
  if (*&v44[8])
  {
    memcpy(__dst, v44, 0x48uLL);
    sub_2167ADC3C(__dst, v44);
    v17 = v1 + *(v8 + 20);
    v36 = a1;
    v18 = *v17;
    v32 = v3;
    v19 = *(v17 + 8);
    v42 = v18;
    v43 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78);
    sub_21700AED4();
    v45 = v41[0];
    v46 = v41[1];
    v47 = v41[2];
    v42 = v18;
    v43 = v19;
    sub_21700AED4();
    v33 = v41[1];
    v34 = v41[0];
    v35 = LOBYTE(v41[2]);
    sub_2168B9224(v1, &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    sub_2167ADC3C(__dst, v41);
    v20 = (*(v37 + 80) + 16) & ~*(v37 + 80);
    v21 = swift_allocObject();
    sub_2168B9428(&v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, type metadata accessor for PopoverSelectorToolbarContentView);
    memcpy((v21 + ((v11 + v20 + 7) & 0xFFFFFFFFFFFFFFF8)), v41, 0x48uLL);
    *v7 = sub_21700AEF4();
    v22 = v39;
    v23 = v16;
    v24 = v32;
    (*(v39 + 104))(v7, *MEMORY[0x277CDE248], v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6318);
    sub_216776E60();
    sub_2166D9530(&qword_27CAB6328, &qword_27CAB6318);
    sub_21700A434();

    (*(v22 + 8))(v7, v24);
    sub_2168B9524(v44);
    sub_2167ADC98(__dst);
    v25 = v36;
    v26 = v40;
    (*(v38 + 32))(v36, v23, v40);
    v27 = v25;
    v28 = 0;
    v29 = v26;
  }

  else
  {
    sub_216697664(v44, &qword_27CAB8100);
    v27 = a1;
    v28 = 1;
    v29 = v40;
  }

  return __swift_storeEnumTagSinglePayload(v27, v28, 1, v29);
}

void sub_2168B7588(__n128 *a1@<X8>)
{
  v3 = type metadata accessor for PopoverSelectorToolbarContentView();
  sub_216681B04(v1 + *(v3 + 24), v7, &qword_27CABB618);
  if (v7[1])
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB620);
    MEMORY[0x21CE9BEE0](__src, v4);
    sub_216697664(v7, &qword_27CABB620);
    if (*(&__src[0] + 1))
    {
      memcpy(a1, __src, 0x48uLL);
      return;
    }
  }

  else
  {
    sub_216697664(v7, &qword_27CABB618);
    memset(__src, 0, 72);
  }

  v5 = type metadata accessor for PopoverAccessoryButton();
  v6 = *(v1 + *(v5 + 24));
  MEMORY[0x28223BE20](v5);
  sub_216C2E7E0();
  if (v7[1])
  {
    memcpy(a1, v7, 0x48uLL);
  }

  else
  {
    sub_216CE09CC(v6, a1);
  }

  if (*(&__src[0] + 1))
  {
    sub_216697664(__src, &qword_27CAB8100);
  }
}

uint64_t sub_2168B7718()
{
  sub_217009C64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB660);
  sub_2168B955C();
  return sub_217008054();
}

uint64_t sub_2168B77A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_217009854();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB670);
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - v11;
  *v12 = sub_2170093B4();
  *(v12 + 1) = 0;
  v12[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB680);
  sub_2168B79C4(a1, a2);
  sub_217009844();
  sub_2166D9530(&qword_27CABB678, &qword_27CABB670);
  sub_21700A914();
  (*(v7 + 8))(v9, v6);
  sub_216697664(v12, &qword_27CABB670);
  LOBYTE(a2) = sub_217009CE4();
  sub_217007F24();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB660);
  v22 = a3 + *(result + 36);
  *v22 = a2;
  *(v22 + 8) = v14;
  *(v22 + 16) = v16;
  *(v22 + 24) = v18;
  *(v22 + 32) = v20;
  *(v22 + 40) = 0;
  return result;
}

uint64_t sub_2168B79C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PopoverSelectorToolbarContentView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = *(*(a1 + *(type metadata accessor for PopoverAccessoryButton() + 24)) + 16);
  v13 = 0;
  v14 = v7;
  swift_getKeyPath();
  sub_2168B9224(a1, &__src[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8]);
  sub_2167ADC3C(a2, __src);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_2168B9428(&__src[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], v9 + v8, type metadata accessor for PopoverSelectorToolbarContentView);
  memcpy((v9 + ((v6 + v8 + 7) & 0xFFFFFFFFFFFFFFF8)), __src, 0x48uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB688);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB690);
  sub_2168B98BC();
  sub_2166D9530(&qword_27CABB6A8, &qword_27CABB690);
  return sub_21700B154();
}

uint64_t sub_2168B7BC8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_21700B134();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v40 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB6B0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v38 - v15;
  v17 = *a1;
  result = type metadata accessor for PopoverAccessoryButton();
  if ((v17 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v39 = v9;
  v19 = *(a2 + *(result + 24));
  if (v17 >= *(v19 + 16))
  {
LABEL_15:
    __break(1u);
    return result;
  }

  sub_2167ADC3C(v19 + 72 * v17 + 32, v52);
  v20 = v52[0] == *a3 && v52[1] == a3[1];
  v42 = v14;
  v43 = a4;
  v41 = v8;
  if (v20)
  {
    v21 = 1;
  }

  else
  {
    v21 = sub_21700F7D4();
  }

  sub_2167ADC3C(v52, v49);
  v22 = type metadata accessor for PopoverSelectorToolbarContentView();
  v23 = (a2 + *(v22 + 20));
  v24 = *v23;
  v25 = *(v23 + 1);
  v46 = v24;
  v47 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78);
  sub_21700AED4();
  v26 = v44[0];
  v27 = v44[1];
  v28 = v45;
  sub_216681B04(a2 + *(v22 + 24), &v51, &qword_27CABB618);
  v48[0] = v21 & 1;
  v49[9] = v26;
  v49[10] = v27;
  v50 = v28;
  v29 = sub_216AEE3C0(0, *(v19 + 16));
  if ((v30 & 1) != 0 || v17 != v29)
  {
    v35 = v40;
    sub_21700B124();
    v36 = v35;
    v34 = v41;
    (*(v39 + 32))(v16, v36, v41);
    v31 = 0;
    v33 = v42;
    v32 = v43;
  }

  else
  {
    v31 = 1;
    v33 = v42;
    v32 = v43;
    v34 = v41;
  }

  __swift_storeEnumTagSinglePayload(v16, v31, 1, v34);
  sub_2168B8DC0(v48, v44);
  sub_216681B04(v16, v33, &qword_27CABB6B0);
  sub_2168B8DC0(v44, v32);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB6B8);
  sub_216681B04(v33, v32 + *(v37 + 48), &qword_27CABB6B0);
  sub_216697664(v16, &qword_27CABB6B0);
  sub_2168B999C(v48);
  sub_2167ADC98(v52);
  sub_216697664(v33, &qword_27CABB6B0);
  return sub_2168B999C(v44);
}

uint64_t sub_2168B7F20(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (a2 + *(type metadata accessor for PopoverAccessoryButton() + 28));
  if (v2 == *v4 && v3 == v4[1])
  {
    return 1;
  }

  else
  {
    return sub_21700F7D4() & 1;
  }
}

void *sub_2168B7F94@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v28 = a1;
  v3 = sub_2170096A4();
  v26 = *(v3 - 8);
  v27 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB5F8);
  MEMORY[0x28223BE20](v6);
  v8 = (&v26 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB600);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - v11;
  sub_216681B04(v2 + 40, v8, &qword_27CAB6DB0);
  v13 = v6[11];
  v14 = sub_217007F04();
  __swift_storeEnumTagSinglePayload(v8 + v13, 1, 1, v14);
  sub_2168B8DC0(v2, v30);
  v15 = swift_allocObject();
  memcpy((v15 + 16), v30, 0xC0uLL);
  sub_2168B8DC0(v2, v29);
  v16 = swift_allocObject();
  memcpy((v16 + 16), v29, 0xC0uLL);
  v17 = v6[12];
  *(v8 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  swift_storeEnumTagMultiPayload();
  v18 = v8 + v6[13];
  *v18 = swift_getKeyPath();
  v18[40] = 0;
  v8[5] = sub_2168B8DF8;
  v8[6] = v15;
  v8[7] = sub_2168B8E9C;
  v8[8] = v16;
  sub_217009694();
  sub_2166D9530(&qword_27CABB608, &qword_27CABB5F8);
  sub_2168B8F8C(&qword_280E2A8F8, MEMORY[0x277CDE0B8]);
  v19 = v27;
  sub_21700A364();
  (*(v26 + 8))(v5, v19);
  sub_216697664(v8, &qword_27CABB5F8);
  v20 = sub_21700AD14();
  KeyPath = swift_getKeyPath();
  v22 = &v12[*(v10 + 44)];
  *v22 = KeyPath;
  v22[1] = v20;
  sub_21700B3B4();
  sub_217008BB4();
  v23 = v28;
  sub_21670A3BC(v12, v28);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB610);
  return memcpy((v23 + *(v24 + 36)), v30, 0x70uLL);
}

uint64_t sub_2168B8388@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2170091A4();
  sub_2168B8484(a1, v20);
  *&v19[7] = v20[0];
  *&v19[23] = v20[1];
  *&v19[39] = v21[0];
  *&v19[48] = *(v21 + 9);
  LOBYTE(a1) = sub_217009C94();
  sub_217007F24();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = sub_217009C74();
  result = sub_217007F24();
  *(a2 + 17) = *v19;
  *(a2 + 33) = *&v19[16];
  *(a2 + 49) = *&v19[32];
  *a2 = v4;
  *(a2 + 8) = 0x4020000000000000;
  *(a2 + 16) = 0;
  *(a2 + 65) = *&v19[48];
  *(a2 + 88) = a1;
  *(a2 + 96) = v6;
  *(a2 + 104) = v8;
  *(a2 + 112) = v10;
  *(a2 + 120) = v12;
  *(a2 + 128) = 0;
  *(a2 + 136) = v13;
  *(a2 + 144) = v15;
  *(a2 + 152) = v16;
  *(a2 + 160) = v17;
  *(a2 + 168) = v18;
  *(a2 + 176) = 0;
  return result;
}

uint64_t sub_2168B8484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21700ADB4();
  v5 = 0.0;
  if (*a1)
  {
    v5 = 1.0;
  }

  v7 = *(a1 + 24);
  v6 = *(a1 + 32);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7;
  *(a2 + 24) = v6;
  v8 = MEMORY[0x277D84F90];
  *(a2 + 32) = 0;
  *(a2 + 40) = v8;
  *(a2 + 48) = 0;
  *(a2 + 56) = 1;
  sub_21700DF14();

  sub_2167770D0(v7, v6, 0, v8);
  sub_2167C4DF0(v7, v6, 0, v8);
}

uint64_t sub_2168B856C(uint64_t a1)
{
  sub_216681B04(a1 + 104, &v7, &qword_27CABB618);
  if (v8)
  {
    sub_2167ADC3C(a1 + 8, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB620);
    sub_21700B0D4();
    v2 = &qword_27CABB620;
  }

  else
  {
    v2 = &qword_27CABB618;
  }

  sub_216697664(&v7, v2);
  v3 = *(a1 + 88);
  v4 = *(a1 + 96);
  v7 = *(a1 + 80);
  v8 = v3;
  v9 = v4;
  v6[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABDA20);
  return sub_21700B0D4();
}

uint64_t sub_2168B8678()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB5B8);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v13[-v3];
  sub_2168B8C54(v0, __src);
  v5 = swift_allocObject();
  memcpy((v5 + 16), __src, 0x59uLL);
  v14 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB5C0);
  sub_2168B8C94();
  sub_21700AF14();
  v6 = *(v0 + 24);
  __src[0] = *(v0 + 16);
  __src[1] = v6;
  sub_2167B2E14();
  sub_21700DF14();
  v7 = sub_21700A174();
  v9 = v8;
  v11 = v10;
  sub_2166D9530(&qword_27CABB5E0, &qword_27CABB5B8);
  sub_21700A6A4();
  sub_21678817C(v7, v9, v11 & 1);

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_2168B8898()
{
  sub_21700B314();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB5D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7BD8);
  sub_2166D9530(&qword_27CABB5D0, &qword_27CABB5D8);
  sub_2167D2750();
  return sub_21700B324();
}

void *sub_2168B89A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2170091A4();
  v10 = 1;
  sub_2168B8A7C(a1, __src);
  memcpy(__dst, __src, 0x81uLL);
  memcpy(v12, __src, 0x81uLL);
  sub_216681B04(__dst, &v7, &qword_27CABB5E8);
  sub_216697664(v12, &qword_27CABB5E8);
  memcpy(&v9[7], __dst, 0x81uLL);
  v5 = v10;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v5;
  return memcpy((a2 + 17), v9, 0x88uLL);
}

uint64_t sub_2168B8A7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  sub_21700DF14();
  v5 = sub_217009CB4();
  sub_217007F24();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = sub_21700ADB4();
  v15 = sub_217009CD4();
  sub_217007F24();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  __src[0] = v4;
  __src[1] = v3;
  v24 = MEMORY[0x277D84F90];
  __src[2] = 0;
  __src[3] = MEMORY[0x277D84F90];
  LOBYTE(__src[4]) = v5;
  __src[5] = v7;
  __src[6] = v9;
  __src[7] = v11;
  __src[8] = v13;
  LOBYTE(__src[9]) = 0;
  memcpy(__dst, __src, 0x49uLL);
  memcpy(a2, __dst, 0x50uLL);
  *(a2 + 80) = v14;
  *(a2 + 88) = v15;
  *(a2 + 96) = v17;
  *(a2 + 104) = v19;
  *(a2 + 112) = v21;
  *(a2 + 120) = v23;
  *(a2 + 128) = 0;
  sub_216681B04(__src, v28, &qword_27CABB5F0);
  v28[0] = v4;
  v28[1] = v3;
  v28[2] = 0;
  v28[3] = v24;
  v29 = v5;
  v30 = v7;
  v31 = v9;
  v32 = v11;
  v33 = v13;
  v34 = 0;
  return sub_216697664(v28, &qword_27CABB5F0);
}

uint64_t sub_2168B8BF4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  sub_21700DF14();
  v5 = sub_21700AC54();
  result = swift_getKeyPath();
  *a2 = v4;
  a2[1] = v3;
  v7 = MEMORY[0x277D84F90];
  a2[2] = 0;
  a2[3] = v7;
  a2[4] = result;
  a2[5] = v5;
  return result;
}

unint64_t sub_2168B8C94()
{
  result = qword_27CABB5C8;
  if (!qword_27CABB5C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABB5C0);
    sub_2166D9530(&qword_27CABB5D0, &qword_27CABB5D8);
    sub_2167D2750();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABB5C8);
  }

  return result;
}

uint64_t sub_2168B8D68@<X0>(uint64_t *a1@<X8>)
{
  result = sub_217008E74();
  *a1 = result;
  return result;
}

uint64_t objectdestroy_7Tm()
{

  if (v0[10])
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 7));
  }

  if (v0[16])
  {

    if (v0[18])
    {

      if (v0[24])
      {
        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 21));
      }
    }
  }

  return swift_deallocObject();
}

unint64_t sub_2168B8EA4()
{
  result = qword_27CABB628;
  if (!qword_27CABB628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABB630);
    sub_2166D9530(&qword_27CABB5E0, &qword_27CABB5B8);
    sub_2168B8F8C(&qword_280E2A6F0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABB628);
  }

  return result;
}

uint64_t sub_2168B8F8C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2168B8FD4()
{
  result = qword_27CABB638;
  if (!qword_27CABB638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABB610);
    sub_2168B9060();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABB638);
  }

  return result;
}

unint64_t sub_2168B9060()
{
  result = qword_27CABB640;
  if (!qword_27CABB640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABB600);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABB5F8);
    sub_2170096A4();
    sub_2166D9530(&qword_27CABB608, &qword_27CABB5F8);
    sub_2168B8F8C(&qword_280E2A8F8, MEMORY[0x277CDE0B8]);
    swift_getOpaqueTypeConformance2();
    sub_2166D9530(&qword_280E2A718, &qword_27CAB7BE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABB640);
  }

  return result;
}

uint64_t type metadata accessor for PopoverSelectorToolbarContentView()
{
  result = qword_280E2F148;
  if (!qword_280E2F148)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2168B9224(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PopoverSelectorToolbarContentView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2168B9288(uint64_t a1)
{
  v2 = type metadata accessor for PopoverSelectorToolbarContentView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2168B930C()
{
  type metadata accessor for PopoverAccessoryButton();
  if (v0 <= 0x3F)
  {
    sub_216854FAC();
    if (v1 <= 0x3F)
    {
      sub_2168B93A8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2168B93A8()
{
  if (!qword_27CABB650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABB620);
    v0 = sub_21700F164();
    if (!v1)
    {
      atomic_store(v0, &qword_27CABB650);
    }
  }
}

uint64_t sub_2168B9428(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_2168B9488()
{
  type metadata accessor for PopoverSelectorToolbarContentView();

  return sub_2168B7718();
}

unint64_t sub_2168B955C()
{
  result = qword_27CABB668;
  if (!qword_27CABB668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABB660);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABB670);
    sub_2166D9530(&qword_27CABB678, &qword_27CABB670);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABB668);
  }

  return result;
}

uint64_t objectdestroy_28Tm()
{
  v1 = type metadata accessor for PopoverSelectorToolbarContentView();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64) + v2 + 7;
  v4 = v0 + v2;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + v2);
  v5 = *(type metadata accessor for PopoverAccessoryButton() + 20);
  v6 = sub_21700D7A4();
  if (!__swift_getEnumTagSinglePayload(v4 + v5, 1, v6))
  {
    (*(*(v6 - 8) + 8))(v4 + v5, v6);
  }

  v7 = v3 & 0xFFFFFFFFFFFFFFF8;

  v8 = (v4 + *(v1 + 24));
  if (v8[1])
  {

    if (v8[3])
    {

      if (v8[9])
      {
        __swift_destroy_boxed_opaque_existential_1Tm((v8 + 6));
      }
    }
  }

  if (*(v0 + v7 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + v7 + 32);
  }

  return swift_deallocObject();
}

uint64_t sub_2168B9810@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PopoverSelectorToolbarContentView() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_2168B7BC8(a1, v2 + v6, v7, a2);
}

unint64_t sub_2168B98BC()
{
  result = qword_27CABB698;
  if (!qword_27CABB698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABB688);
    sub_2168B9948();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABB698);
  }

  return result;
}

unint64_t sub_2168B9948()
{
  result = qword_27CABB6A0;
  if (!qword_27CABB6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABB6A0);
  }

  return result;
}

unint64_t sub_2168B99EC()
{
  result = qword_27CABB6C0;
  if (!qword_27CABB6C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABB6C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6318);
    sub_216776E60();
    sub_2166D9530(&qword_27CAB6328, &qword_27CAB6318);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABB6C0);
  }

  return result;
}

void sub_2168B9B04()
{
  sub_21668A338(319, &qword_27CABB768, &qword_27CABB770);
  if (v0 <= 0x3F)
  {
    sub_21668A338(319, &qword_27CABB778, &qword_27CABA4B0);
    if (v1 <= 0x3F)
    {
      sub_21668A338(319, &qword_280E2A1C0, &qword_27CAB8EF0);
      if (v2 <= 0x3F)
      {
        swift_initClassMetadata2();
      }
    }
  }
}

char *sub_2168B9CD0(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_0_1();
  v8 = *(v7 + 288);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB770);
  OUTLINED_FUNCTION_13_1(v3 + v8);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_13_1(v3 + *(v9 + 296));
  OUTLINED_FUNCTION_0_1();
  v11 = *(v10 + 304);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA4B0);
  __swift_storeEnumTagSinglePayload(v3 + v11, 1, 1, v12);
  OUTLINED_FUNCTION_0_1();
  v14 = *(v13 + 312);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8EF0);
  OUTLINED_FUNCTION_13_1(v3 + v14);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_13_1(v3 + *(v15 + 320));
  type metadata accessor for UserSocialProfileCoordinator();
  type metadata accessor for ObjectGraph();
  sub_21700E094();
  OUTLINED_FUNCTION_0_1();
  *(v3 + *(v16 + 272)) = v17;
  type metadata accessor for SocialGraphController();
  sub_21700E094();

  OUTLINED_FUNCTION_0_1();
  *(v3 + *(v18 + 280)) = v19;
  return sub_216B12724(a1, a2, a3 & 1);
}

uint64_t sub_2168B9E78(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8EF8);
  OUTLINED_FUNCTION_36(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v65 = &v59 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB780);
  OUTLINED_FUNCTION_36(v10);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  v64 = &v59 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB788);
  OUTLINED_FUNCTION_36(v13);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  v15 = v3[2];
  v3[2] = a1;
  v3[3] = a2;

  sub_21667E91C(v15);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_143();
  v16 = swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_65_0();
  v17 = swift_allocObject();
  v60 = *(v6 + 264);
  *(v17 + 16) = v60;
  *(v17 + 24) = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB790);
  v62 = MEMORY[0x277D21A98];
  v18 = sub_2166D9530(&qword_280E2A2F8, &qword_27CABB790);

  v61 = v18;
  sub_21700D1D4();
  OUTLINED_FUNCTION_4_29();
  sub_21700D1F4();

  __swift_destroy_boxed_opaque_existential_1Tm(v66);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB770);
  v19 = OUTLINED_FUNCTION_3_45();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  OUTLINED_FUNCTION_0_5();
  v24 = *(v23 + 288);
  OUTLINED_FUNCTION_0_59();
  v25 = OUTLINED_FUNCTION_18_16();
  sub_2168BB274(v25, v26, &qword_27CABB788);
  swift_endAccess();
  OUTLINED_FUNCTION_143();
  swift_allocObject();
  OUTLINED_FUNCTION_11_4();
  OUTLINED_FUNCTION_65_0();
  v27 = swift_allocObject();
  v28 = v60;
  *(v27 + 16) = v60;
  *(v27 + 24) = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA4D0);
  sub_2166D9530(&unk_280E2A2E0, &qword_27CABA4D0);

  sub_21700D1D4();
  v29 = v64;
  sub_21700D1F4();

  __swift_destroy_boxed_opaque_existential_1Tm(v66);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA4B0);
  __swift_storeEnumTagSinglePayload(v29, 0, 1, v30);
  OUTLINED_FUNCTION_0_5();
  v32 = *(v31 + 304);
  OUTLINED_FUNCTION_0_59();
  sub_2168BB274(v29, v3 + v32, &qword_27CABB780);
  swift_endAccess();
  OUTLINED_FUNCTION_0_5();
  v64 = *(v3 + *(v33 + 272));
  OUTLINED_FUNCTION_143();
  swift_allocObject();
  OUTLINED_FUNCTION_11_4();
  OUTLINED_FUNCTION_65_0();
  v34 = swift_allocObject();
  *(v34 + 16) = v28;
  *(v34 + 24) = v32;

  sub_21700D1D4();
  OUTLINED_FUNCTION_4_29();
  sub_21700D1F4();

  __swift_destroy_boxed_opaque_existential_1Tm(v66);
  v35 = OUTLINED_FUNCTION_3_45();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v63);
  OUTLINED_FUNCTION_0_5();
  v39 = *(v38 + 296);
  OUTLINED_FUNCTION_0_59();
  v40 = OUTLINED_FUNCTION_18_16();
  sub_2168BB274(v40, v41, &qword_27CABB788);
  swift_endAccess();
  OUTLINED_FUNCTION_143();
  swift_allocObject();
  OUTLINED_FUNCTION_11_4();
  OUTLINED_FUNCTION_65_0();
  v42 = swift_allocObject();
  *(v42 + 16) = v28;
  *(v42 + 24) = v39;
  v43 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8F00);
  sub_2166D9530(&qword_280E2A2C8, &qword_27CAB8F00);

  OUTLINED_FUNCTION_21_20();
  sub_21700D1F4();

  __swift_destroy_boxed_opaque_existential_1Tm(v66);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8EF0);
  v45 = OUTLINED_FUNCTION_3_45();
  __swift_storeEnumTagSinglePayload(v45, v46, v47, v44);
  OUTLINED_FUNCTION_0_5();
  v49 = *(v48 + 312);
  OUTLINED_FUNCTION_0_59();
  v50 = OUTLINED_FUNCTION_18_16();
  sub_2168BB274(v50, v51, &qword_27CAB8EF8);
  swift_endAccess();
  OUTLINED_FUNCTION_143();
  swift_allocObject();
  OUTLINED_FUNCTION_11_4();
  OUTLINED_FUNCTION_65_0();
  v52 = swift_allocObject();
  *(v52 + 16) = v43;
  *(v52 + 24) = v49;

  OUTLINED_FUNCTION_21_20();
  OUTLINED_FUNCTION_4_29();
  sub_21700D1F4();

  __swift_destroy_boxed_opaque_existential_1Tm(v66);
  v53 = OUTLINED_FUNCTION_3_45();
  __swift_storeEnumTagSinglePayload(v53, v54, v55, v44);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_0_59();
  v56 = OUTLINED_FUNCTION_18_16();
  sub_2168BB274(v56, v57, &qword_27CAB8EF8);
  return swift_endAccess();
}

uint64_t sub_2168BA558()
{
  OUTLINED_FUNCTION_17_2();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_216B12888(result);
  }

  return result;
}

void sub_2168BA5A8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8EF8);
  v3 = OUTLINED_FUNCTION_36(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_77();
  v84 = (v4 - v5);
  MEMORY[0x28223BE20](v6);
  v87 = &v83 - v7;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8EF0);
  OUTLINED_FUNCTION_1();
  v86 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_77();
  v83 = (v10 - v11);
  MEMORY[0x28223BE20](v12);
  v85 = &v83 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB780);
  OUTLINED_FUNCTION_36(v14);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v15);
  v17 = &v83 - v16;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA4B0);
  OUTLINED_FUNCTION_1();
  v89 = v18;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v19);
  v90 = &v83 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB788);
  v22 = OUTLINED_FUNCTION_36(v21);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_77();
  v25 = v23 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v83 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB770);
  OUTLINED_FUNCTION_1();
  v31 = v30;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_77();
  v92 = (v33 - v34);
  MEMORY[0x28223BE20](v35);
  v37 = &v83 - v36;
  OUTLINED_FUNCTION_7_0();
  v39 = *(v38 + 288);
  OUTLINED_FUNCTION_17_2();
  sub_2166A6E54(v1 + v39, v28, &qword_27CABB788);
  if (__swift_getEnumTagSinglePayload(v28, 1, v29) == 1)
  {
    v40 = &qword_27CABB788;
    v41 = v28;
  }

  else
  {
    v42 = *(v31 + 32);
    v42(v37, v28, v29);
    OUTLINED_FUNCTION_7_0();
    v44 = *(v43 + 296);
    OUTLINED_FUNCTION_17_2();
    sub_2166A6E54(v1 + v44, v25, &qword_27CABB788);
    if (__swift_getEnumTagSinglePayload(v25, 1, v29) == 1)
    {
      v45 = OUTLINED_FUNCTION_19();
      v46(v45);
      v40 = &qword_27CABB788;
      v41 = v25;
    }

    else
    {
      v47 = v92;
      v42(v92, v25, v29);
      OUTLINED_FUNCTION_7_0();
      v49 = *(v48 + 304);
      OUTLINED_FUNCTION_17_2();
      sub_2166A6E54(v1 + v49, v17, &qword_27CABB780);
      v50 = v91;
      if (__swift_getEnumTagSinglePayload(v17, 1, v91) == 1)
      {
        v51 = *(v31 + 8);
        v51(v47, v29);
        v52 = OUTLINED_FUNCTION_19();
        (v51)(v52);
        v40 = &qword_27CABB780;
      }

      else
      {
        v53 = v89;
        v54 = v90;
        (*(v89 + 32))(v90, v17, v50);
        OUTLINED_FUNCTION_7_0();
        v56 = *(v55 + 312);
        OUTLINED_FUNCTION_17_2();
        v17 = v87;
        sub_2166A6E54(v1 + v56, v87, &qword_27CAB8EF8);
        v57 = v88;
        if (__swift_getEnumTagSinglePayload(v17, 1, v88) == 1)
        {
          (*(v53 + 8))(v54, v50);
        }

        else
        {
          v58 = v86;
          v59 = *(v86 + 32);
          v60 = v85;
          v59(v85, v17, v57);
          OUTLINED_FUNCTION_7_0();
          v62 = *(v61 + 320);
          OUTLINED_FUNCTION_17_2();
          v63 = v1 + v62;
          v17 = v84;
          sub_2166A6E54(v63, v84, &qword_27CAB8EF8);
          if (__swift_getEnumTagSinglePayload(v17, 1, v57) != 1)
          {
            v77 = v17;
            v78 = v83;
            v59(v83, v77, v57);
            OUTLINED_FUNCTION_7_0();

            sub_21700CC24();

            sub_21700CC24();

            OUTLINED_FUNCTION_7_0();

            v79 = v92;
            sub_21700CC24();

            sub_21700CC24();

            sub_21700CC24();

            v80 = *(v58 + 8);
            v80(v78, v57);
            v80(v60, v57);
            (*(v89 + 8))(v90, v91);
            v81 = *(v31 + 8);
            v81(v79, v29);
            v82 = OUTLINED_FUNCTION_19();
            (v81)(v82);
            return;
          }

          (*(v58 + 8))(v60, v57);
          (*(v89 + 8))(v90, v91);
        }

        v64 = *(v31 + 8);
        v64(v92, v29);
        v65 = OUTLINED_FUNCTION_19();
        (v64)(v65);
        v40 = &qword_27CAB8EF8;
      }

      v41 = v17;
    }
  }

  sub_216697664(v41, v40);
  if (qword_27CAB5990 != -1)
  {
    swift_once();
  }

  v66 = sub_217007CA4();
  __swift_project_value_buffer(v66, qword_27CABB6D0);
  v67 = sub_217007C84();
  v68 = sub_21700ED84();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v94 = v70;
    *v69 = 136446466;
    *(v69 + 4) = sub_2166A85FC(0x2928706F7473, 0xE600000000000000, &v94);
    *(v69 + 12) = 2082;
    v71 = [objc_opt_self() callStackSymbols];
    v72 = sub_21700E824();

    v93 = v72;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8);
    sub_2166D9530(&qword_280E29E38, &qword_27CAB74F8);
    v73 = sub_21700E454();
    v75 = v74;

    v76 = sub_2166A85FC(v73, v75, &v94);

    *(v69 + 14) = v76;
    _os_log_impl(&dword_216679000, v67, v68, "Unbalanced call to %{public}s\nStack:\n%{public}s", v69, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v70, -1, -1);
    MEMORY[0x21CEA1440](v69, -1, -1);
  }
}

uint64_t sub_2168BAF58()
{
  OUTLINED_FUNCTION_0_1();

  OUTLINED_FUNCTION_0_1();

  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_10_21(*(v2 + 288));
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_10_21(*(v3 + 296));
  OUTLINED_FUNCTION_0_1();
  sub_216697664(v0 + *(v4 + 304), &qword_27CABB780);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_10_21(*(v5 + 312));
  OUTLINED_FUNCTION_0_1();
  return OUTLINED_FUNCTION_10_21(*(v6 + 320));
}

char *sub_2168BB044()
{
  v0 = sub_216B127F4();

  OUTLINED_FUNCTION_0_5();

  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_14_19(*(v1 + 288));
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_14_19(*(v2 + 296));
  OUTLINED_FUNCTION_0_5();
  sub_216697664(&v0[*(v3 + 304)], &qword_27CABB780);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_14_19(*(v4 + 312));
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_14_19(*(v5 + 320));
  return v0;
}

uint64_t sub_2168BB140()
{
  v0 = sub_2168BB044();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2168BB1AC()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CABB6D0);
  __swift_project_value_buffer(v0, qword_27CABB6D0);
  sub_21700E5B4();
  return sub_217007C94();
}

uint64_t sub_2168BB274(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_20(a1, a2, a3);
  OUTLINED_FUNCTION_34();
  (*(v5 + 40))(v3, v4);
  return v3;
}

uint64_t sub_2168BB2C8()
{
  OUTLINED_FUNCTION_92();
  sub_21700F954();
  v1 = OUTLINED_FUNCTION_139_2();
  sub_216CCA25C(v1, v2, v3);
  v5 = v4;

  if (sub_2166BF3C8(v5))
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_21700F934();
  }

  else
  {

    if (qword_280E2C110 != -1)
    {
      OUTLINED_FUNCTION_97_5();
    }

    v6 = sub_217007CA4();
    __swift_project_value_buffer(v6, qword_280E2C118);
    v7 = sub_217007C84();
    v8 = sub_21700ED84();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      __dst[0] = v10;
      *v9 = 136446210;
      *(v9 + 4) = sub_2166A85FC(0x636F4C6B63617254, 0xEB0000000070756BLL, __dst);
      OUTLINED_FUNCTION_144_1(&dword_216679000, v11, v12, "Dropped %{public}s item collection, no items.");
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }

    v5 = 0;
  }

  sub_217006A94();
  OUTLINED_FUNCTION_34();
  (*(v13 + 8))(v0);
  return v5;
}

uint64_t sub_2168BB4BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_21700F954();
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = a4;
  v17[5] = __src;
  sub_216CCA694(sub_2168CB5E8, v17, a1);
  v9 = v8;

  if (sub_2166BF3C8(v9))
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_21700F934();
  }

  else
  {

    if (qword_280E2C110 != -1)
    {
      swift_once();
    }

    v10 = sub_217007CA4();
    __swift_project_value_buffer(v10, qword_280E2C118);
    v11 = sub_217007C84();
    v12 = sub_21700ED84();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      __dst[0] = v14;
      *v13 = 136446210;
      *(v13 + 4) = sub_2166A85FC(0x6F4C656C62627542, 0xEC00000070756B63, __dst);
      _os_log_impl(&dword_216679000, v11, v12, "Dropped %{public}s item collection, no items.", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x21CEA1440](v14, -1, -1);
      MEMORY[0x21CEA1440](v13, -1, -1);
    }

    v9 = 0;
  }

  v15 = sub_217006A94();
  (*(*(v15 - 8) + 8))(a2, v15);
  return v9;
}

uint64_t sub_2168BB6F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_21700F954();
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = a4;
  v17[5] = __src;
  sub_216CCA668(sub_2168CB604, v17, a1);
  v9 = v8;

  if (sub_2166BF3C8(v9))
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_21700F934();
  }

  else
  {

    if (qword_280E2C110 != -1)
    {
      swift_once();
    }

    v10 = sub_217007CA4();
    __swift_project_value_buffer(v10, qword_280E2C118);
    v11 = sub_217007C84();
    v12 = sub_21700ED84();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      __dst[0] = v14;
      *v13 = 136446210;
      *(v13 + 4) = sub_2166A85FC(0x65736163776F6C46, 0xEE0070756B636F4CLL, __dst);
      _os_log_impl(&dword_216679000, v11, v12, "Dropped %{public}s item collection, no items.", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x21CEA1440](v14, -1, -1);
      MEMORY[0x21CEA1440](v13, -1, -1);
    }

    v9 = 0;
  }

  v15 = sub_217006A94();
  (*(*(v15 - 8) + 8))(a2, v15);
  return v9;
}

uint64_t sub_2168BB938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_21700F954();
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = a4;
  v17[5] = __src;
  sub_216CCA63C(sub_2168CB620, v17, a1);
  v9 = v8;

  if (sub_2166BF3C8(v9))
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_21700F934();
  }

  else
  {

    if (qword_280E2C110 != -1)
    {
      swift_once();
    }

    v10 = sub_217007CA4();
    __swift_project_value_buffer(v10, qword_280E2C118);
    v11 = sub_217007C84();
    v12 = sub_21700ED84();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      __dst[0] = v14;
      *v13 = 136446210;
      *(v13 + 4) = sub_2166A85FC(0xD000000000000010, 0x8000000217083BB0, __dst);
      _os_log_impl(&dword_216679000, v11, v12, "Dropped %{public}s item collection, no items.", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x21CEA1440](v14, -1, -1);
      MEMORY[0x21CEA1440](v13, -1, -1);
    }

    v9 = 0;
  }

  v15 = sub_217006A94();
  (*(*(v15 - 8) + 8))(a2, v15);
  return v9;
}

uint64_t sub_2168BBB70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_21700F954();
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = a4;
  v17[5] = __src;
  sub_216CCA610(sub_2168CB63C, v17, a1);
  v9 = v8;

  if (sub_2166BF3C8(v9))
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_21700F934();
  }

  else
  {

    if (qword_280E2C110 != -1)
    {
      swift_once();
    }

    v10 = sub_217007CA4();
    __swift_project_value_buffer(v10, qword_280E2C118);
    v11 = sub_217007C84();
    v12 = sub_21700ED84();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      __dst[0] = v14;
      *v13 = 136446210;
      *(v13 + 4) = sub_2166A85FC(0xD000000000000016, 0x8000000217083BD0, __dst);
      _os_log_impl(&dword_216679000, v11, v12, "Dropped %{public}s item collection, no items.", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x21CEA1440](v14, -1, -1);
      MEMORY[0x21CEA1440](v13, -1, -1);
    }

    v9 = 0;
  }

  v15 = sub_217006A94();
  (*(*(v15 - 8) + 8))(a2, v15);
  return v9;
}

uint64_t sub_2168BBDA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_21700F954();
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = a4;
  v17[5] = __src;
  sub_216CCA5E4(sub_2168CB658, v17, a1);
  v9 = v8;

  if (sub_2166BF3C8(v9))
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_21700F934();
  }

  else
  {

    if (qword_280E2C110 != -1)
    {
      swift_once();
    }

    v10 = sub_217007CA4();
    __swift_project_value_buffer(v10, qword_280E2C118);
    v11 = sub_217007C84();
    v12 = sub_21700ED84();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      __dst[0] = v14;
      *v13 = 136446210;
      *(v13 + 4) = sub_2166A85FC(0xD000000000000013, 0x8000000217083BF0, __dst);
      _os_log_impl(&dword_216679000, v11, v12, "Dropped %{public}s item collection, no items.", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x21CEA1440](v14, -1, -1);
      MEMORY[0x21CEA1440](v13, -1, -1);
    }

    v9 = 0;
  }

  v15 = sub_217006A94();
  (*(*(v15 - 8) + 8))(a2, v15);
  return v9;
}

uint64_t sub_2168BBFE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_21700F954();
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = a4;
  v17[5] = __src;
  sub_216CCA58C(sub_2168CB758, v17, a1);
  v9 = v8;

  if (sub_2166BF3C8(v9))
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_21700F934();
  }

  else
  {

    if (qword_280E2C110 != -1)
    {
      swift_once();
    }

    v10 = sub_217007CA4();
    __swift_project_value_buffer(v10, qword_280E2C118);
    v11 = sub_217007C84();
    v12 = sub_21700ED84();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      __dst[0] = v14;
      *v13 = 136446210;
      *(v13 + 4) = sub_2166A85FC(0x6F4C726574736F50, 0xEC00000070756B63, __dst);
      _os_log_impl(&dword_216679000, v11, v12, "Dropped %{public}s item collection, no items.", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x21CEA1440](v14, -1, -1);
      MEMORY[0x21CEA1440](v13, -1, -1);
    }

    v9 = 0;
  }

  v15 = sub_217006A94();
  (*(*(v15 - 8) + 8))(a2, v15);
  return v9;
}

uint64_t sub_2168BC21C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_21700F954();
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = a4;
  v17[5] = __src;
  sub_216CCA560(sub_2168CB774, v17, a1);
  v9 = v8;

  if (sub_2166BF3C8(v9))
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_21700F934();
  }

  else
  {

    if (qword_280E2C110 != -1)
    {
      swift_once();
    }

    v10 = sub_217007CA4();
    __swift_project_value_buffer(v10, qword_280E2C118);
    v11 = sub_217007C84();
    v12 = sub_21700ED84();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      __dst[0] = v14;
      *v13 = 136446210;
      *(v13 + 4) = sub_2166A85FC(0xD000000000000012, 0x8000000217083C30, __dst);
      _os_log_impl(&dword_216679000, v11, v12, "Dropped %{public}s item collection, no items.", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x21CEA1440](v14, -1, -1);
      MEMORY[0x21CEA1440](v13, -1, -1);
    }

    v9 = 0;
  }

  v15 = sub_217006A94();
  (*(*(v15 - 8) + 8))(a2, v15);
  return v9;
}