uint64_t getEnumTagSinglePayload for BinaryDelimited.Error(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for BinaryDelimited.Error(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1AC48F874(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    goto LABEL_5;
  }

  if (__OFSUB__(a3 - a2, result - a2))
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BinaryEncoder(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 == 1 || !*(a1 + 24))
    {
      if (*a1)
      {
        v2 = -1;
      }

      else
      {
        v2 = 0;
      }
    }

    else
    {
      v2 = *a1 + 1;
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for BinaryEncoder(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t BinaryEncodingError.hashValue.getter()
{
  v1 = *v0;
  sub_1AC51F468();
  MEMORY[0x1AC5B48A0](v1);
  return sub_1AC51F4C8();
}

unint64_t sub_1AC48F9C0()
{
  result = qword_1EB5582A8;
  if (!qword_1EB5582A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5582A8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BinaryEncodingError(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for BinaryEncodingOptions(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for BinaryEncodingOptions(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1AC48FCAC()
{
  OUTLINED_FUNCTION_1_6();
  if (!v8)
  {
    ++v7;
  }

  if (v2 >= 0x200000)
  {
    v6 = v7;
  }

  if (v5)
  {
    v4 = v6;
  }

  if (v2 >= 0x80)
  {
    v9 = v4;
  }

  else
  {
    v9 = v3;
  }

  v10 = sub_1AC4519B4((2 * v1) ^ (v1 >> 63));
  v11 = v9 + v10;
  if (__OFADD__(v9, v10))
  {
    __break(1u);
  }

  else
  {
    v12 = __OFADD__(*v0, v11);
    v13 = *v0 + v11;
    if (!v12)
    {
      OUTLINED_FUNCTION_11_4(v13);
      return;
    }
  }

  __break(1u);
}

void sub_1AC48FD18(uint64_t a1, int a2)
{
  v3 = 8 * a2;
  v4 = 6;
  v5 = 7;
  v6 = 8;
  if ((8 * a2) >> 28)
  {
    v6 = 9;
  }

  if (v3 >= 0x200000)
  {
    v5 = v6;
  }

  if ((8 * a2) >> 14)
  {
    v4 = v5;
  }

  if (v3 >= 0x80)
  {
    v7 = v4;
  }

  else
  {
    v7 = 5;
  }

  v8 = __OFADD__(*v2, v7);
  v9 = *v2 + v7;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_6_4(v9);
  }
}

void sub_1AC48FD68()
{
  OUTLINED_FUNCTION_1_6();
  if (!v8)
  {
    ++v7;
  }

  if (v2 >= 0x200000)
  {
    v6 = v7;
  }

  if (v5)
  {
    v4 = v6;
  }

  if (v2 >= 0x80)
  {
    v9 = v4;
  }

  else
  {
    v9 = v3;
  }

  v10 = *(v1 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = (v1 + 32);
    v13 = *(v1 + 16);
    while (1)
    {
      v15 = *v12++;
      v14 = v15;
      if ((v15 & 0x80000000) != 0)
      {
        v16 = 10;
      }

      else if (v14 > 0x7F)
      {
        v17 = v14 >> 28 ? 5 : 4;
        if (v14 < 0x200000)
        {
          v17 = 3;
        }

        v16 = v14 >= 0x4000 ? v17 : 2;
      }

      else
      {
        v16 = 1;
      }

      v18 = __OFADD__(v11, v16);
      v11 += v16;
      if (v18)
      {
        break;
      }

      if (!--v13)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v11 = 0;
LABEL_28:
  v19 = v9 * v10;
  if ((v9 * v10) >> 64 != (v9 * v10) >> 63)
  {
    goto LABEL_33;
  }

  v20 = v19 + v11;
  if (__OFADD__(v19, v11))
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v18 = __OFADD__(*v0, v20);
  v21 = *v0 + v20;
  if (!v18)
  {
    OUTLINED_FUNCTION_6_4(v21);
    return;
  }

LABEL_35:
  __break(1u);
}

void sub_1AC48FE44()
{
  OUTLINED_FUNCTION_1_6();
  if (!v8)
  {
    ++v7;
  }

  if (v2 >= 0x200000)
  {
    v6 = v7;
  }

  if (v5)
  {
    v4 = v6;
  }

  if (v2 >= 0x80)
  {
    v9 = v4;
  }

  else
  {
    v9 = v3;
  }

  v10 = *(v1 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = (v1 + 32);
    v13 = *(v1 + 16);
    while (1)
    {
      v15 = *v12++;
      v14 = v15;
      if (v15 >= 0x80)
      {
        v17 = v14 >> 14;
        v18 = v14 >> 28 ? 5 : 4;
        v16 = v14 >= 0x200000 ? v18 : 3;
        if (!v17)
        {
          v16 = 2;
        }
      }

      else
      {
        v16 = 1;
      }

      v19 = __OFADD__(v11, v16);
      v11 += v16;
      if (v19)
      {
        break;
      }

      if (!--v13)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v11 = 0;
LABEL_26:
  v20 = v9 * v10;
  if ((v9 * v10) >> 64 != (v9 * v10) >> 63)
  {
    goto LABEL_31;
  }

  v21 = v20 + v11;
  if (__OFADD__(v20, v11))
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v19 = __OFADD__(*v0, v21);
  v22 = *v0 + v21;
  if (!v19)
  {
    OUTLINED_FUNCTION_6_4(v22);
    return;
  }

LABEL_33:
  __break(1u);
}

void sub_1AC48FF18()
{
  OUTLINED_FUNCTION_1_6();
  if (!v8)
  {
    ++v7;
  }

  if (v2 >= 0x200000)
  {
    v6 = v7;
  }

  if (v5)
  {
    v4 = v6;
  }

  if (v2 >= 0x80)
  {
    v9 = v4;
  }

  else
  {
    v9 = v3;
  }

  v10 = *(v1 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = (v1 + 32);
    v13 = *(v1 + 16);
    while (1)
    {
      v15 = *v12++;
      v14 = v15;
      if (v15 < 0x80)
      {
        v16 = 1;
        goto LABEL_27;
      }

      if ((v14 & 0x8000000000000000) != 0)
      {
        v16 = 10;
        goto LABEL_27;
      }

      if (v14 >> 35)
      {
        if (v14 >> 49)
        {
          v14 >>= 28;
          v16 = 8;
LABEL_25:
          if (!(v14 >> 28))
          {
            goto LABEL_27;
          }

LABEL_26:
          ++v16;
          goto LABEL_27;
        }

        v16 = 6;
        if (v14 >> 42)
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (v14 >= 0x200000)
        {
          v16 = 4;
          goto LABEL_25;
        }

        v16 = 2;
        if (v14 >= 0x4000)
        {
          goto LABEL_26;
        }
      }

LABEL_27:
      v17 = __OFADD__(v11, v16);
      v11 += v16;
      if (v17)
      {
        __break(1u);
        goto LABEL_36;
      }

      if (!--v13)
      {
        goto LABEL_31;
      }
    }
  }

  v11 = 0;
LABEL_31:
  v18 = v9 * v10;
  if ((v9 * v10) >> 64 != (v9 * v10) >> 63)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v19 = v18 + v11;
  if (__OFADD__(v18, v11))
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v17 = __OFADD__(*v0, v19);
  v20 = *v0 + v19;
  if (!v17)
  {
    OUTLINED_FUNCTION_6_4(v20);
    return;
  }

LABEL_38:
  __break(1u);
}

void sub_1AC490020()
{
  OUTLINED_FUNCTION_1_6();
  if (!v8)
  {
    ++v7;
  }

  if (v2 >= 0x200000)
  {
    v6 = v7;
  }

  if (v5)
  {
    v4 = v6;
  }

  if (v2 >= 0x80)
  {
    v9 = v4;
  }

  else
  {
    v9 = v3;
  }

  v10 = *(v1 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = (v1 + 32);
    v13 = *(v1 + 16);
    while (1)
    {
      v14 = *v12++;
      v15 = (2 * v14) ^ (v14 >> 31);
      if (v15 >= 0x80)
      {
        if (v15 >> 14)
        {
          if (v15 >= 0x200000)
          {
            v16 = v15 >> 28 ? 5 : 4;
          }

          else
          {
            v16 = 3;
          }
        }

        else
        {
          v16 = 2;
        }
      }

      else
      {
        v16 = 1;
      }

      v17 = __OFADD__(v11, v16);
      v11 += v16;
      if (v17)
      {
        break;
      }

      if (!--v13)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v11 = 0;
LABEL_25:
  v18 = v9 * v10;
  if ((v9 * v10) >> 64 != (v9 * v10) >> 63)
  {
    goto LABEL_30;
  }

  v19 = v18 + v11;
  if (__OFADD__(v18, v11))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v17 = __OFADD__(*v0, v19);
  v20 = *v0 + v19;
  if (!v17)
  {
    OUTLINED_FUNCTION_6_4(v20);
    return;
  }

LABEL_32:
  __break(1u);
}

void sub_1AC490100()
{
  OUTLINED_FUNCTION_1_6();
  if (!v8)
  {
    ++v7;
  }

  if (v2 >= 0x200000)
  {
    v6 = v7;
  }

  if (v5)
  {
    v4 = v6;
  }

  if (v2 >= 0x80)
  {
    v9 = v4;
  }

  else
  {
    v9 = v3;
  }

  v10 = *(v1 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = (v1 + 32);
    v13 = *(v1 + 16);
    while (1)
    {
      v14 = *v12++;
      v15 = (2 * v14) ^ (v14 >> 63);
      if (v15 < 0x80)
      {
        v16 = 1;
        goto LABEL_27;
      }

      if ((v15 & 0x8000000000000000) != 0)
      {
        v16 = 10;
        goto LABEL_27;
      }

      if (v15 >> 35)
      {
        if (v15 >> 49)
        {
          v15 >>= 28;
          v16 = 8;
LABEL_25:
          if (!(v15 >> 28))
          {
            goto LABEL_27;
          }

LABEL_26:
          ++v16;
          goto LABEL_27;
        }

        v16 = 6;
        if (v15 >> 42)
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (v15 >= 0x200000)
        {
          v16 = 4;
          goto LABEL_25;
        }

        v16 = 2;
        if (v15 >= 0x4000)
        {
          goto LABEL_26;
        }
      }

LABEL_27:
      v17 = __OFADD__(v11, v16);
      v11 += v16;
      if (v17)
      {
        __break(1u);
        goto LABEL_36;
      }

      if (!--v13)
      {
        goto LABEL_31;
      }
    }
  }

  v11 = 0;
LABEL_31:
  v18 = v9 * v10;
  if ((v9 * v10) >> 64 != (v9 * v10) >> 63)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v19 = v18 + v11;
  if (__OFADD__(v18, v11))
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v17 = __OFADD__(*v0, v19);
  v20 = *v0 + v19;
  if (!v17)
  {
    OUTLINED_FUNCTION_6_4(v20);
    return;
  }

LABEL_38:
  __break(1u);
}

void sub_1AC490210()
{
  OUTLINED_FUNCTION_1_6();
  if (!v8)
  {
    ++v7;
  }

  if (v2 >= 0x200000)
  {
    v6 = v7;
  }

  if (v5)
  {
    v4 = v6;
  }

  if (v2 < 0x80)
  {
    v4 = v3;
  }

  v9 = *(v1 + 16);
  v10 = v4 * v9;
  if ((v4 * v9) >> 64 != (v4 * v9) >> 63)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v9 >> 61)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v11 = __OFADD__(v10, 4 * v9);
  v12 = v10 + 4 * v9;
  if (v11)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = __OFADD__(*v0, v12);
  v13 = *v0 + v12;
  if (!v11)
  {
    OUTLINED_FUNCTION_6_4(v13);
    return;
  }

LABEL_17:
  __break(1u);
}

void sub_1AC490284()
{
  OUTLINED_FUNCTION_1_6();
  if (!v8)
  {
    ++v7;
  }

  if (v2 >= 0x200000)
  {
    v6 = v7;
  }

  if (v5)
  {
    v4 = v6;
  }

  if (v2 < 0x80)
  {
    v4 = v3;
  }

  v9 = *(v1 + 16);
  v10 = v4 * v9;
  if ((v4 * v9) >> 64 != (v4 * v9) >> 63)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v9 >> 60)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v11 = __OFADD__(v10, 8 * v9);
  v12 = v10 + 8 * v9;
  if (v11)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = __OFADD__(*v0, v12);
  v13 = *v0 + v12;
  if (!v11)
  {
    OUTLINED_FUNCTION_6_4(v13);
    return;
  }

LABEL_17:
  __break(1u);
}

void sub_1AC4902F8()
{
  OUTLINED_FUNCTION_1_6();
  if (!v8)
  {
    ++v7;
  }

  if (v2 >= 0x200000)
  {
    v6 = v7;
  }

  if (v5)
  {
    v4 = v6;
  }

  if (v2 < 0x80)
  {
    v4 = v3;
  }

  v9 = *(v1 + 16);
  v10 = v4 * v9;
  if ((v4 * v9) >> 64 != (v4 * v9) >> 63)
  {
    __break(1u);
    goto LABEL_14;
  }

  v11 = __OFADD__(v10, v9);
  v12 = v10 + v9;
  if (v11)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v11 = __OFADD__(*v0, v12);
  v13 = *v0 + v12;
  if (!v11)
  {
    OUTLINED_FUNCTION_6_4(v13);
    return;
  }

LABEL_15:
  __break(1u);
}

void sub_1AC490360(uint64_t a1, int a2)
{
  OUTLINED_FUNCTION_8_4(a1, a2);
  OUTLINED_FUNCTION_20_3();
  if (v5)
  {
    OUTLINED_FUNCTION_21_3();
    while (1)
    {
      v9 = *v7++;
      v8 = v9;
      if ((v9 & 0x80000000) != 0)
      {
        v10 = 10;
      }

      else if (v8 > 0x7F)
      {
        v11 = v8 >> 28 ? 5 : 4;
        if (v8 < 0x200000)
        {
          v11 = 3;
        }

        v10 = v8 >= 0x4000 ? v11 : 2;
      }

      else
      {
        v10 = 1;
      }

      v12 = __OFADD__(v4, v10);
      v4 += v10;
      if (v12)
      {
        break;
      }

      if (!--v6)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v4 = 0;
LABEL_19:
  v13 = sub_1AC4519B4(v4);
  v14 = v3 + v13;
  if (__OFADD__(v3, v13))
  {
    goto LABEL_24;
  }

  v12 = __OFADD__(v14, v4);
  v15 = v14 + v4;
  if (v12)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v12 = __OFADD__(*v2, v15);
  v16 = *v2 + v15;
  if (!v12)
  {
    OUTLINED_FUNCTION_11_4(v16);
    return;
  }

LABEL_26:
  __break(1u);
}

void sub_1AC49042C(uint64_t a1, int a2)
{
  OUTLINED_FUNCTION_8_4(a1, a2);
  OUTLINED_FUNCTION_20_3();
  if (v5)
  {
    OUTLINED_FUNCTION_21_3();
    while (1)
    {
      v8 = *v7++;
      v9 = (2 * v8) ^ (v8 >> 31);
      if (v9 >= 0x80)
      {
        if (v9 >> 14)
        {
          if (v9 >= 0x200000)
          {
            v10 = v9 >> 28 ? 5 : 4;
          }

          else
          {
            v10 = 3;
          }
        }

        else
        {
          v10 = 2;
        }
      }

      else
      {
        v10 = 1;
      }

      v11 = __OFADD__(v4, v10);
      v4 += v10;
      if (v11)
      {
        break;
      }

      if (!--v6)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v4 = 0;
LABEL_16:
  v12 = sub_1AC4519B4(v4);
  v13 = v3 + v12;
  if (__OFADD__(v3, v12))
  {
    goto LABEL_21;
  }

  v11 = __OFADD__(v13, v4);
  v14 = v13 + v4;
  if (v11)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v11 = __OFADD__(*v2, v14);
  v15 = *v2 + v14;
  if (!v11)
  {
    OUTLINED_FUNCTION_11_4(v15);
    return;
  }

LABEL_23:
  __break(1u);
}

void sub_1AC4904FC(uint64_t a1, int a2)
{
  OUTLINED_FUNCTION_8_4(a1, a2);
  OUTLINED_FUNCTION_20_3();
  if (v5)
  {
    OUTLINED_FUNCTION_21_3();
    while (1)
    {
      v8 = *v7++;
      v9 = (2 * v8) ^ (v8 >> 63);
      if (v9 < 0x80)
      {
        v10 = 1;
        goto LABEL_18;
      }

      if ((v9 & 0x8000000000000000) != 0)
      {
        v10 = 10;
        goto LABEL_18;
      }

      if (v9 >> 35)
      {
        if (v9 >> 49)
        {
          v9 >>= 28;
          v10 = 8;
LABEL_16:
          if (!(v9 >> 28))
          {
            goto LABEL_18;
          }

LABEL_17:
          ++v10;
          goto LABEL_18;
        }

        v10 = 6;
        if (v9 >> 42)
        {
          goto LABEL_17;
        }
      }

      else
      {
        if (v9 >= 0x200000)
        {
          v10 = 4;
          goto LABEL_16;
        }

        v10 = 2;
        if (v9 >= 0x4000)
        {
          goto LABEL_17;
        }
      }

LABEL_18:
      v11 = __OFADD__(v4, v10);
      v4 += v10;
      if (v11)
      {
        __break(1u);
        goto LABEL_27;
      }

      if (!--v6)
      {
        goto LABEL_22;
      }
    }
  }

  v4 = 0;
LABEL_22:
  v12 = sub_1AC4519B4(v4);
  v13 = v3 + v12;
  if (__OFADD__(v3, v12))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v11 = __OFADD__(v13, v4);
  v14 = v13 + v4;
  if (v11)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v11 = __OFADD__(*v2, v14);
  v15 = *v2 + v14;
  if (!v11)
  {
    OUTLINED_FUNCTION_11_4(v15);
    return;
  }

LABEL_29:
  __break(1u);
}

void sub_1AC4905FC(uint64_t a1, int a2)
{
  v4 = OUTLINED_FUNCTION_16_4(a1, a2);
  v5 = *(a1 + 16);
  if (v5 >> 61)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = v4;
  v7 = 4 * v5;
  v8 = sub_1AC4519B4(4 * v5);
  v9 = v6 + v8;
  if (__OFADD__(v6, v8))
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v10 = __OFADD__(v9, v7);
  v11 = v9 + v7;
  if (v10)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v10 = __OFADD__(*v2, v11);
  v12 = *v2 + v11;
  if (!v10)
  {
    OUTLINED_FUNCTION_11_4(v12);
    return;
  }

LABEL_9:
  __break(1u);
}

void sub_1AC490678(uint64_t a1, int a2)
{
  v4 = OUTLINED_FUNCTION_16_4(a1, a2);
  v5 = *(a1 + 16);
  if (v5 >> 60)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = v4;
  v7 = 8 * v5;
  v8 = sub_1AC4519B4(8 * v5);
  v9 = v6 + v8;
  if (__OFADD__(v6, v8))
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v10 = __OFADD__(v9, v7);
  v11 = v9 + v7;
  if (v10)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v10 = __OFADD__(*v2, v11);
  v12 = *v2 + v11;
  if (!v10)
  {
    OUTLINED_FUNCTION_11_4(v12);
    return;
  }

LABEL_9:
  __break(1u);
}

void sub_1AC4906F4(uint64_t a1, int a2)
{
  v4 = OUTLINED_FUNCTION_16_4(a1, a2);
  v5 = *(a1 + 16);
  v6 = sub_1AC4519B4(v5);
  v7 = v4 + v6;
  if (__OFADD__(v4, v6))
  {
    __break(1u);
    goto LABEL_6;
  }

  v8 = __OFADD__(v7, v5);
  v9 = v7 + v5;
  if (v8)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v8 = __OFADD__(*v2, v9);
  v10 = *v2 + v9;
  if (!v8)
  {
    OUTLINED_FUNCTION_11_4(v10);
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_1AC490760()
{
  OUTLINED_FUNCTION_10_6();
  v2 = sub_1AC451978(8 * v1);
  OUTLINED_FUNCTION_28_1();
  result = sub_1AC51F0B8();
  v4 = result * v2;
  if ((result * v2) >> 64 != (result * v2) >> 63)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = *v0 + v4;
  if (__OFADD__(*v0, v4))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  MEMORY[0x1EEE9AC00](result);
  OUTLINED_FUNCTION_12_4();
  OUTLINED_FUNCTION_3_6();
  result = OUTLINED_FUNCTION_7_4();
  if (!__OFADD__(v5, v6))
  {
    *v0 = v5 + v6;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1AC490834(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  result = sub_1AC451978((8 * a2) | 3u);
  if (result + 0x4000000000000000 < 0)
  {
    __break(1u);
  }

  else if (!__OFADD__(*v4, 2 * result))
  {
    *v4 += 2 * result;
    return (*(a4 + 72))(v4, &type metadata for BinaryEncodingSizeVisitor, &off_1F211A7E8, a3, a4);
  }

  __break(1u);
  return result;
}

void sub_1AC4908D8()
{
  OUTLINED_FUNCTION_60();
  v26 = v2;
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_5();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v23[0] = v12;
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1AC451978((8 * v14) | 3u);
  OUTLINED_FUNCTION_53();
  v16 = sub_1AC51F0B8();
  if (v16 + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = 2 * v16 * v15;
  if ((2 * v16 * v15) >> 64 != v17 >> 63)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    return;
  }

  v18 = __OFADD__(*v0, v17);
  v19 = *v0 + v17;
  if (v18)
  {
    goto LABEL_15;
  }

  v25 = v0;
  *v0 = v19;
  OUTLINED_FUNCTION_53();
  v20 = sub_1AC51F038();
  v28 = v20;
  v23[1] = v26 + 72;
  v24 = (v8 + 16);
  while (1)
  {
    OUTLINED_FUNCTION_53();
    if (v20 == sub_1AC51F0B8())
    {
      break;
    }

    OUTLINED_FUNCTION_53();
    v21 = sub_1AC51F0A8();
    sub_1AC51F048();
    if (v21)
    {
      (*(v8 + 16))(v13, v6 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v20, v4);
    }

    else
    {
      v22 = sub_1AC51F2F8();
      if (v23[0] != 8)
      {
        goto LABEL_16;
      }

      v27 = v22;
      (*v24)(v13, &v27, v4);
      swift_unknownObjectRelease();
    }

    sub_1AC51F0F8();
    (*(v26 + 72))(v25, &type metadata for BinaryEncodingSizeVisitor, &off_1F211A7E8, v4);
    (*(v8 + 8))(v13, v4);
    if (v1)
    {
      break;
    }

    v20 = v28;
  }

  OUTLINED_FUNCTION_61();
}

void sub_1AC490B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_60();
  a19 = v22;
  a20 = v23;
  v141 = v21;
  v126 = v20;
  v119 = v24;
  v138 = v25;
  v27 = v26;
  v29 = v28;
  OUTLINED_FUNCTION_5();
  v118 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_6();
  v125 = v34 - v35;
  OUTLINED_FUNCTION_19_0();
  MEMORY[0x1EEE9AC00](v36);
  v38 = v113 - v37;
  v132 = *(v39 + 8);
  v130 = v40;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v41 = OUTLINED_FUNCTION_3_0(AssociatedTypeWitness);
  v117 = v42;
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_6();
  v124 = v45 - v46;
  OUTLINED_FUNCTION_19_0();
  MEMORY[0x1EEE9AC00](v47);
  v49 = v113 - v48;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v128 = sub_1AC51F228();
  v50 = OUTLINED_FUNCTION_3_0(v128);
  v52 = v51;
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_6();
  v57 = v55 - v56;
  MEMORY[0x1EEE9AC00](v58);
  v60 = v113 - v59;
  v113[0] = sub_1AC451978((8 * v27) | 2u);
  if ((v29 & 0xC000000000000001) != 0)
  {
    v61 = sub_1AC51F368();
    v62 = 0;
    v63 = 0;
    v64 = 0;
    v131 = v61 | 0x8000000000000000;
  }

  else
  {
    v65 = *(v29 + 32);
    OUTLINED_FUNCTION_17_3();
    v62 = v29 + 64;
    v66 = *(v29 + 64);
    OUTLINED_FUNCTION_14_4();
    v64 = v67 & v68;
    v131 = v29;
  }

  v137 = (v117 + 32);
  v136 = (v118 + 32);
  v113[2] = v63;
  v114 = (v63 + 64) >> 6;
  v116 = v117 + 16;
  v115 = v118 + 16;
  v127 = (v52 + 32);
  v121 = v132 + 48;
  v122 = v118 + 8;
  v123 = v117 + 8;
  v113[1] = v29;

  v69 = 0;
  v135 = v60;
  v70 = v131;
  v120 = v62;
  while (1)
  {
    v133 = v69;
    v134 = v64;
    if ((v70 & 0x8000000000000000) == 0)
    {
      if (!v64)
      {
        v75 = v69;
        while (1)
        {
          v72 = v75 + 1;
          if (__OFADD__(v75, 1))
          {
            break;
          }

          if (v72 >= v114)
          {
            v140 = 0;
            v80 = 1;
            goto LABEL_18;
          }

          v71 = *(v62 + 8 * v72);
          ++v75;
          if (v71)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v71 = v64;
      v72 = v69;
LABEL_14:
      OUTLINED_FUNCTION_9_4(v71);
      OUTLINED_FUNCTION_5_4(*(v70 + 48));
      v73 = AssociatedTypeWitness;
      v76(v49);
      OUTLINED_FUNCTION_5_4(*(v70 + 56));
      v74 = v138;
      v77(v38);
      goto LABEL_15;
    }

    if (sub_1AC51F378())
    {
      v73 = AssociatedTypeWitness;
      sub_1AC51F3C8();
      swift_unknownObjectRelease();
      v74 = v138;
      sub_1AC51F3C8();
      swift_unknownObjectRelease();
      v72 = v133;
      v140 = v134;
LABEL_15:
      v78 = TupleTypeMetadata2;
      v79 = *(TupleTypeMetadata2 + 48);
      (*v137)(v57, v49, v73);
      (*v136)(v57 + v79, v38, v74);
      v80 = 0;
      v75 = v72;
      v60 = v135;
      goto LABEL_19;
    }

    v80 = 1;
    v75 = v133;
    v140 = v134;
LABEL_18:
    v78 = TupleTypeMetadata2;
LABEL_19:
    __swift_storeEnumTagSinglePayload(v57, v80, 1, v78);
    (*v127)(v60, v57, v128);
    if (__swift_getEnumTagSinglePayload(v60, 1, v78) == 1)
    {
      break;
    }

    v81 = v78;
    v82 = v57;
    v83 = v49;
    v84 = v38;
    v85 = *(v81 + 48);
    v86 = v124;
    v87 = AssociatedTypeWitness;
    (*v137)(v124, v60, AssociatedTypeWitness);
    v88 = &v60[v85];
    v89 = v125;
    v90 = v138;
    v91 = (*v136)(v125, v88, v138);
    a10 = 0;
    OUTLINED_FUNCTION_32_1(v91, v92, v93, v94, v95, v96, v132);
    v97 = v141;
    v98(v86, 1);
    if (v97)
    {
      v141 = v97;
      sub_1AC460BE4();
      v110 = OUTLINED_FUNCTION_31_1();
      v111(v110);
      OUTLINED_FUNCTION_30_1();
      v112(v86, v87);
      goto LABEL_45;
    }

    sub_1AC463FF8(v89, 2, v90, v119);
    v141 = 0;
    v99 = OUTLINED_FUNCTION_31_1();
    v100(v99);
    OUTLINED_FUNCTION_30_1();
    v101(v86, v87);
    if (a10 < 0x80)
    {
      v102 = 1;
      v38 = v84;
      v49 = v83;
      v57 = v82;
      v60 = v135;
LABEL_29:
      v62 = v120;
      v70 = v131;
      goto LABEL_30;
    }

    v38 = v84;
    v60 = v135;
    if ((a10 & 0x8000000000000000) != 0)
    {
      v102 = 10;
      v49 = v83;
      v57 = v82;
      goto LABEL_29;
    }

    v49 = v83;
    v57 = v82;
    if (a10 >> 35)
    {
      v62 = v120;
      v70 = v131;
      if (a10 >> 49)
      {
        v106 = a10 >> 28;
        v102 = 8;
LABEL_38:
        if (!(v106 >> 28))
        {
          goto LABEL_30;
        }

        goto LABEL_39;
      }

      v102 = 6;
      if (!(a10 >> 42))
      {
        goto LABEL_30;
      }
    }

    else
    {
      v62 = v120;
      v70 = v131;
      if (a10 >= 0x200000)
      {
        v102 = 4;
        v106 = a10;
        goto LABEL_38;
      }

      v102 = 2;
      if (a10 < 0x4000)
      {
        goto LABEL_30;
      }
    }

LABEL_39:
    ++v102;
LABEL_30:
    if (__OFADD__(v102, a10))
    {
      goto LABEL_47;
    }

    OUTLINED_FUNCTION_15_4();
    if (v105)
    {
      goto LABEL_48;
    }

    *v104 = v103;
    v69 = v75;
    v64 = v140;
  }

  sub_1AC460BE4();
  swift_getAssociatedConformanceWitness();
  sub_1AC51ED68();
  OUTLINED_FUNCTION_13_2(&a9);
  if (!v107)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  OUTLINED_FUNCTION_15_4();
  if (!v105)
  {
    *v109 = v108;
LABEL_45:
    OUTLINED_FUNCTION_61();
    return;
  }

LABEL_50:
  __break(1u);
}

void sub_1AC4912A0()
{
  OUTLINED_FUNCTION_60();
  v2 = v1;
  v100 = v3;
  v101 = v0;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  OUTLINED_FUNCTION_5();
  v94 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_6();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_26_2();
  OUTLINED_FUNCTION_29_2(v18);
  v111 = *(v19 + 8);
  v108 = v20;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = OUTLINED_FUNCTION_3_0(AssociatedTypeWitness);
  v93 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_6();
  v27 = v25 - v26;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_26_2();
  OUTLINED_FUNCTION_29_2(v29);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v107 = sub_1AC51F228();
  v31 = OUTLINED_FUNCTION_3_0(v107);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_6();
  v110 = v36 - v37;
  OUTLINED_FUNCTION_19_0();
  MEMORY[0x1EEE9AC00](v38);
  v40 = v91 - v39;
  v91[1] = sub_1AC451978((8 * v7) | 2u);
  if ((v9 & 0xC000000000000001) != 0)
  {
    v41 = sub_1AC51F368();
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v112 = v41 | 0x8000000000000000;
  }

  else
  {
    v45 = *(v9 + 32);
    OUTLINED_FUNCTION_17_3();
    v42 = v9 + 64;
    v46 = *(v9 + 64);
    OUTLINED_FUNCTION_14_4();
    v44 = v47 & v48;
    v112 = v9;
  }

  v49 = v9;
  v116 = (v93 + 32);
  v115 = v94 + 32;
  v91[3] = v43;
  v50 = (v43 + 64) >> 6;
  v91[5] = v93 + 16;
  v91[4] = v94 + 16;
  v102 = v111 + 48;
  v103 = v94 + 8;
  v104 = v93 + 8;
  v105 = (v33 + 32);
  v91[2] = v49;

  v51 = 0;
  v92 = v5;
  v98 = v27;
  v99 = v16;
  v97 = TupleTypeMetadata2;
  v106 = v40;
  v109 = v42;
  v52 = v112;
  for (i = v44; ; i = v117)
  {
    v113 = v51;
    v114 = i;
    if ((v52 & 0x8000000000000000) == 0)
    {
      if (!i)
      {
        v59 = v51;
        while (1)
        {
          v55 = v59 + 1;
          if (__OFADD__(v59, 1))
          {
            break;
          }

          if (v55 >= v50)
          {
            v117 = 0;
            v66 = 1;
            goto LABEL_18;
          }

          v54 = *(v42 + 8 * v55);
          ++v59;
          if (v54)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v54 = i;
      v55 = v51;
LABEL_14:
      OUTLINED_FUNCTION_9_4(v54);
      OUTLINED_FUNCTION_5_4(*(v52 + 48));
      v56 = v95;
      v57 = AssociatedTypeWitness;
      v60(v95);
      OUTLINED_FUNCTION_5_4(*(v52 + 56));
      v58 = v96;
      v5 = v92;
      v61(v96);
      goto LABEL_15;
    }

    if (sub_1AC51F378())
    {
      v56 = v95;
      v57 = AssociatedTypeWitness;
      sub_1AC51F3C8();
      swift_unknownObjectRelease();
      v58 = v96;
      sub_1AC51F3C8();
      swift_unknownObjectRelease();
      v55 = v113;
      v117 = v114;
LABEL_15:
      v62 = *(v97 + 48);
      v63 = v110;
      v64 = v56;
      TupleTypeMetadata2 = v97;
      (*v116)(v110, v64, v57);
      OUTLINED_FUNCTION_25_2();
      v65(v63 + v62, v58, v5);
      v66 = 0;
      v59 = v55;
      v27 = v98;
      v16 = v99;
      goto LABEL_19;
    }

    v66 = 1;
    v59 = v113;
    v117 = v114;
LABEL_18:
    v63 = v110;
LABEL_19:
    __swift_storeEnumTagSinglePayload(v63, v66, 1, TupleTypeMetadata2);
    v67 = v106;
    (*v105)();
    if (__swift_getEnumTagSinglePayload(v67, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    v68 = *(TupleTypeMetadata2 + 48);
    (*v116)(v27, v67, AssociatedTypeWitness);
    OUTLINED_FUNCTION_25_2();
    v70 = v69(v16, v67 + v68, v5);
    OUTLINED_FUNCTION_32_1(v70, v71, v72, v73, v74, v75, v111);
    v76(v27, 1);
    if (v2)
    {
      OUTLINED_FUNCTION_22_4();
      v84 = OUTLINED_FUNCTION_24_3();
      v85(v84);
      v86 = OUTLINED_FUNCTION_23_3();
      v87(v86);
LABEL_28:
      OUTLINED_FUNCTION_61();
      return;
    }

    sub_1AC456D58(v16, 2);
    v2 = 0;
    v77 = OUTLINED_FUNCTION_24_3();
    v78(v77);
    v79 = OUTLINED_FUNCTION_23_3();
    v80(v79);
    v52 = v112;
    v42 = v109;
    OUTLINED_FUNCTION_15_4();
    if (v83)
    {
      goto LABEL_30;
    }

    *v82 = v81;
    v51 = v59;
  }

  OUTLINED_FUNCTION_22_4();
  swift_getAssociatedConformanceWitness();
  sub_1AC51ED68();
  OUTLINED_FUNCTION_13_2(&v119);
  if (!v88)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  OUTLINED_FUNCTION_15_4();
  if (!v83)
  {
    *v90 = v89;
    goto LABEL_28;
  }

LABEL_32:
  __break(1u);
}

uint64_t sub_1AC4919A0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v7 = 0;
  result = sub_1AC517768(&v7, a2, a3, v5);
  if (!v4)
  {
    if (__OFADD__(*v3, v7))
    {
      __break(1u);
    }

    else
    {
      *v3 += v7;
    }
  }

  return result;
}

unint64_t sub_1AC491B68(unint64_t result, uint64_t a2)
{
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (a2 > 0x7FFFFFFF)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = sub_1AC463F8C(a2);
  v4 = result + 4;
  if (__OFADD__(result, 4))
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v5 = OUTLINED_FUNCTION_28_1();
  result = sub_1AC451818(v5, v6);
  if (v3)
  {
    return result;
  }

  v7 = result;
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  result = sub_1AC4519B4(result);
  v8 = result + v7;
  if (__OFADD__(result, v7))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFADD__(v4, v8);
  v10 = v4 + v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = __OFADD__(*v2, v10);
  v11 = *v2 + v10;
  if (v9)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  *v2 = v11;
  return result;
}

uint64_t sub_1AC491D18()
{
  OUTLINED_FUNCTION_28_0();
  v2 = OUTLINED_FUNCTION_3_7(v0, v1);
  sub_1AC451CCC(v2, 0);
  v3 = OUTLINED_FUNCTION_10_7();
  return sub_1AC457060(v3);
}

void sub_1AC491D60()
{
  OUTLINED_FUNCTION_28_0();
  v2 = v1;
  v4 = OUTLINED_FUNCTION_3_7(v1, v3);
  sub_1AC451CCC(v4, 5u);
  v5 = *(v0 + 8);
  *v5 = v2;
  OUTLINED_FUNCTION_16_5((v5 + 1));
}

uint64_t sub_1AC491DA4()
{
  OUTLINED_FUNCTION_9_5();
  v7 = OUTLINED_FUNCTION_3_7(v5, v6);
  sub_1AC451CCC(v7, 3u);
  result = (*(v3 + 72))(v0, &type metadata for BinaryEncodingVisitor, &off_1F211B110, v4, v3);
  if (!v1)
  {
    return sub_1AC451CCC(v2, 4u);
  }

  return result;
}

void sub_1AC491E48(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_0_7(a1, a2);
  sub_1AC451CCC(v4, 2u);
  v5 = *(v3 + 16);
  if (v5 >> 61)
  {
    __break(1u);
  }

  else
  {
    sub_1AC45702C(4 * v5);
    if (v5)
    {
      OUTLINED_FUNCTION_17_4();
      do
      {
        v8 = *v7++;
        *v6++ = v8;
        --v5;
      }

      while (v5);
      *(v2 + 8) = v6;
    }
  }
}

void sub_1AC491EBC(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_0_7(a1, a2);
  sub_1AC451CCC(v4, 2u);
  v5 = *(v3 + 16);
  if (v5 >> 60)
  {
    __break(1u);
  }

  else
  {
    sub_1AC45702C(8 * v5);
    if (v5)
    {
      OUTLINED_FUNCTION_17_4();
      do
      {
        v8 = *v7++;
        *v6++ = v8;
        --v5;
      }

      while (v5);
      *(v2 + 8) = v6;
    }
  }
}

void sub_1AC491F30(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_0_7(a1, a2);
  sub_1AC451CCC(v4, 2u);
  if (*(v3 + 16))
  {
    v5 = OUTLINED_FUNCTION_5_5();
    v7 = 3;
    v8 = 4;
    do
    {
      v9 = *(v3 + 4 * v6);
      if ((v9 & 0x80000000) != 0)
      {
        v10 = 10;
      }

      else if (v9 > 0x7F)
      {
        if (v9 >= 0x4000)
        {
          if (v9 >> 28)
          {
            v11 = v8 + 1;
          }

          else
          {
            v11 = v8;
          }

          if (v9 >= 0x200000)
          {
            v10 = v11;
          }

          else
          {
            v10 = v7;
          }
        }

        else
        {
          v10 = 2;
        }
      }

      else
      {
        v10 = 1;
      }

      if (__OFADD__(v5, v10))
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_5();
    }

    while (!v12);
    sub_1AC45702C(v5);
    OUTLINED_FUNCTION_11_5();
    do
    {
      if (*(v3 + 4 * v14) < 0x80u)
      {
        v16 = *(v3 + 4 * v14);
      }

      else
      {
        do
        {
          OUTLINED_FUNCTION_1_7(v13);
        }

        while (v15);
      }

      OUTLINED_FUNCTION_4_5(v13);
    }

    while (!v12);
    *(v2 + 8) = v13;
  }

  else
  {
    OUTLINED_FUNCTION_14_5();
  }
}

void sub_1AC492014(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_0_7(a1, a2);
  sub_1AC451CCC(v4, 2u);
  if (*(v3 + 16))
  {
    v5 = OUTLINED_FUNCTION_5_5();
    v7 = 4;
    do
    {
      v8 = (2 * *(v3 + 4 * v6)) ^ (*(v3 + 4 * v6) >> 31);
      if (v8 >= 0x80)
      {
        if (v8 >> 14)
        {
          if (v8 >= 0x200000)
          {
            if (v8 >> 28)
            {
              v9 = v7 + 1;
            }

            else
            {
              v9 = v7;
            }
          }

          else
          {
            v9 = 3;
          }
        }

        else
        {
          v9 = 2;
        }
      }

      else
      {
        v9 = 1;
      }

      if (__OFADD__(v5, v9))
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_5();
    }

    while (!v10);
    sub_1AC45702C(v5);
    OUTLINED_FUNCTION_11_5();
    do
    {
      if (((2 * *(v3 + 4 * v12)) ^ (*(v3 + 4 * v12) >> 63)) >= 0x80)
      {
        do
        {
          OUTLINED_FUNCTION_1_7(v11);
        }

        while (v13);
      }

      OUTLINED_FUNCTION_4_5(v11);
    }

    while (!v10);
    *(v2 + 8) = v11;
  }

  else
  {
    OUTLINED_FUNCTION_14_5();
  }
}

void sub_1AC492100(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_0_7(a1, a2);
  sub_1AC451CCC(v4, 2u);
  if (!*(v3 + 16))
  {
    OUTLINED_FUNCTION_14_5();
    return;
  }

  v5 = OUTLINED_FUNCTION_5_5();
  do
  {
    v7 = (2 * *(v3 + 8 * v6)) ^ (*(v3 + 8 * v6) >> 63);
    if (v7 < 0x80)
    {
      v8 = 1;
      goto LABEL_18;
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      v8 = 10;
      goto LABEL_18;
    }

    if (!(v7 >> 35))
    {
      if (v7 < 0x200000)
      {
        v8 = 2;
        if (v7 >= 0x4000)
        {
          goto LABEL_17;
        }

        goto LABEL_18;
      }

      v8 = 4;
LABEL_16:
      if (!(v7 >> 28))
      {
        goto LABEL_18;
      }

LABEL_17:
      ++v8;
      goto LABEL_18;
    }

    if (v7 >> 49)
    {
      v7 >>= 28;
      v8 = 8;
      goto LABEL_16;
    }

    v8 = 6;
    if (v7 >> 42)
    {
      goto LABEL_17;
    }

LABEL_18:
    if (__OFADD__(v5, v8))
    {
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_12_5();
  }

  while (!v9);
  sub_1AC45702C(v5);
  OUTLINED_FUNCTION_11_5();
  do
  {
    if (((2 * *(v3 + 8 * v11)) ^ (*(v3 + 8 * v11) >> 63)) >= 0x80)
    {
      do
      {
        OUTLINED_FUNCTION_1_7(v10);
      }

      while (v12);
    }

    OUTLINED_FUNCTION_4_5(v10);
  }

  while (!v9);
  *(v2 + 8) = v10;
}

unint64_t sub_1AC49221C()
{
  OUTLINED_FUNCTION_28_0();
  v2 = v1;
  v4 = OUTLINED_FUNCTION_3_7(v1, v3);
  sub_1AC451CCC(v4, 2u);
  v5 = *(v2 + 16);
  v6 = OUTLINED_FUNCTION_10_7();
  result = sub_1AC45702C(v6);
  if (v5)
  {
    v8 = *(v0 + 8);
    v9 = (v2 + 32);
    do
    {
      v10 = *v9++;
      *v8++ = v10;
      --v5;
    }

    while (v5);
    *(v0 + 8) = v8;
  }

  return result;
}

uint64_t sub_1AC49228C()
{
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_6_5();
  v3 = *(v2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_18_4();
  v5 = OUTLINED_FUNCTION_15_5();
  return sub_1AC461104(v5, v0, v6, v7, v8, v9, v10, v11, AssociatedTypeWitness, v1);
}

uint64_t sub_1AC492364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = (*(*(a6 + 8) + 48))(a2, 1, a1, &type metadata for BinaryEncodingSizeVisitor, &off_1F211A7E8, a4);
  if (!v7)
  {
    return sub_1AC463FF8(a3, 2, a5, a7);
  }

  return result;
}

uint64_t sub_1AC4923F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = (*(*(a6 + 8) + 48))(a2, 1, a1, &type metadata for BinaryEncodingVisitor, &off_1F211B110, a4);
  if (!v6)
  {
    return sub_1AC46424C();
  }

  return result;
}

uint64_t sub_1AC49248C()
{
  OUTLINED_FUNCTION_9_5();
  v3 = v2;
  v24[2] = v4;
  v24[3] = v5;
  v24[4] = v6;
  v24[5] = v7;
  v24[6] = v8;
  v24[7] = v4;
  v19 = v4;
  v20 = v5;
  v21 = v6;
  v22 = v7;
  v23 = v8;
  v13 = v4;
  v14 = v5;
  v15 = v6;
  v16 = v7;
  v17 = v8;
  v9 = *(v6 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_18_4();
  return sub_1AC461104(v3, v0, sub_1AC4927E8, v24, sub_1AC492828, v18, sub_1AC492848, v12, AssociatedTypeWitness, v1);
}

unint64_t sub_1AC492594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = (*(*(a6 + 8) + 48))(a2, 1, a1, &type metadata for BinaryEncodingSizeVisitor, &off_1F211A7E8, a4);
  if (!v6)
  {
    return sub_1AC456D58(a3, 2);
  }

  return result;
}

unint64_t sub_1AC492628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = (*(*(a6 + 8) + 48))(a2, 1, a1, &type metadata for BinaryEncodingVisitor, &off_1F211B110, a4);
  if (!v7)
  {
    return sub_1AC456F7C(a3, 2, a5, a7);
  }

  return result;
}

double sub_1AC4926BC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = *(v3 + 8);
  v8[0] = *v3;
  v9 = v6;
  v10 = *(v3 + 16);
  sub_1AC5178FC(v8, a2, a3, v5);
  if (!v4)
  {
    *(v3 + 8) = v9;
    result = *&v10;
    *(v3 + 16) = v10;
  }

  return result;
}

uint64_t sub_1AC4927E8(uint64_t a1, uint64_t a2)
{
  v3 = v2[2];
  v4 = v2[4];
  v5 = v2[7];
  return (*(v4 + 16))(a1, a2, v3) & 1;
}

unint64_t sub_1AC492828()
{
  OUTLINED_FUNCTION_8_5();
  v1 = *(v0 + 48);
  return sub_1AC492594(v2, v3, v4, v5, v6, v7);
}

unint64_t sub_1AC492848()
{
  OUTLINED_FUNCTION_8_5();
  v1 = *(v0 + 48);
  return sub_1AC492628(v2, v3, v4, v5, v6, v7, v8);
}

unint64_t sub_1AC492868(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(v4 + 8);
  *v8 = 4107;
  *(v4 + 8) = v8 + 1;
  sub_1AC45702C(a2);
  v9 = *(v4 + 8);
  *v9 = 26;
  *(v4 + 8) = v9 + 1;
  result = sub_1AC451818(a3, a4);
  if (!v5)
  {
    sub_1AC45702C(result);
    v11 = *(v4 + 8);
    result = sub_1AC48F874(v11, *(v4 + 16), *(v4 + 24));
    if (result)
    {
      v14[0] = *v4;
      v15 = result;
      v16 = result;
      v17 = v12;
      result = (*(a4 + 72))(v14, &type metadata for BinaryEncodingVisitor, &off_1F211B110, a3, a4);
      if (v16)
      {
        v13 = (v11 + v15 - v16);
        *v13 = 12;
        *(v4 + 8) = v13 + 1;
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1AC4929B4()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  return v1() & 1;
}

uint64_t sub_1AC492A24(uint64_t a1, uint64_t a2)
{
  v3 = v2[2];
  v4 = v2[4];
  v5 = v2[6];
  return (*(v4 + 16))(a1, a2, v3) & 1;
}

uint64_t sub_1AC492A64(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[32])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
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

uint64_t sub_1AC492AB0(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2 + 1;
    }
  }

  return result;
}

void sub_1AC492BD0(void *a1@<X8>)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 2;
}

double sub_1AC492BE0@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1AC5205D0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return result;
}

double sub_1AC492BF4@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

void *sub_1AC492CE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v26 = a3;
  while (1)
  {
    if (sub_1AC459020(0x7Du))
    {
      return sub_1AC45A9B0();
    }

    v7 = v6[14];
    if (v7 >= 1)
    {
      result = sub_1AC458E74(0x2Cu);
      if (v5)
      {
        return result;
      }
    }

    result = v6[16];
    if (!result)
    {
      break;
    }

    v9 = v6[18];
    v10 = v6[19];
    v11 = v6[17];
    v25[0] = v6[16];
    v25[1] = v11;
    v25[2] = v9;
    v25[3] = v10;
    v12 = v6[12];
    v13 = v6[13];

    v14 = sub_1AC4591F8(v25, v12, v13);
    if (v5)
    {
    }

    v16 = v14;
    v17 = v15;

    if (v17)
    {
      return result;
    }

    if (__OFADD__(v7, 1))
    {
      __break(1u);
      break;
    }

    v6[14] = v7 + 1;
    v18 = v6[9];
    v19 = v6[10];
    __swift_project_boxed_opaque_existential_1(v6 + 6, v18);
    result = (*(v19 + 8))(&v23, a2, v26, v16, v18, v19);
    if (!v24)
    {
      goto LABEL_16;
    }

    sub_1AC465B44(&v23, v25);
    v20 = sub_1AC48DCB4(&v23, v16);
    sub_1AC4E26CC(v21, v6, v25);
    (v20)(&v23, 0);
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1AC492F14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v30 = a2;
  v31 = a3;
  v29[1] = a1;
  while (1)
  {
    v7 = *(v6 + 88);
    if (v7 >= 1)
    {
      sub_1AC507364();
    }

    result = *(v6 + 104);
    if (!result)
    {
      break;
    }

    v9 = *(v6 + 112);
    v10 = *(v6 + 120);
    v35[0] = *(v6 + 104);
    v35[1] = v9;
    v11 = *(v6 + 128);
    v12 = *(v6 + 136);
    v35[2] = v10;
    v35[3] = v11;
    v13 = *(v6 + 144);
    v14 = *(v6 + 96);
    v15 = *(v6 + 97);

    v16 = sub_1AC5073AC(v35, v12, v13, v14 | (v15 << 8));
    if (v5)
    {
    }

    v18 = v16;
    v19 = v17;

    if (v19)
    {
      return result;
    }

    if (__OFADD__(v7, 1))
    {
      __break(1u);
      break;
    }

    *(v6 + 88) = v7 + 1;
    v20 = *(v6 + 24);
    if (v20)
    {
      v21 = *(v6 + 32);
      v22 = __swift_project_boxed_opaque_existential_1(v6, *(v6 + 24));
      v23 = *(v20 - 8);
      v24 = *(v23 + 64);
      MEMORY[0x1EEE9AC00](v22);
      v26 = v29 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v23 + 16))(v26);
      (*(v21 + 8))(&v32, v30, v31, v18, v20, v21);
      (*(v23 + 8))(v26, v20);
      if (!*(&v33 + 1))
      {
        goto LABEL_12;
      }

      sub_1AC465B44(&v32, v35);
      v27 = sub_1AC48DCB4(&v32, v18);
      sub_1AC5002CC(v28, v6, v35);
      (v27)(&v32, 0);
      __swift_destroy_boxed_opaque_existential_1(v35);
    }

    else
    {
      v34 = 0;
      v32 = 0u;
      v33 = 0u;
LABEL_12:
      sub_1AC4936E0(&v32);
    }
  }

  __break(1u);
  return result;
}

uint64_t Decoder.decodeExtensionFieldsAsMessageSet(values:messageType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 16);
  while (1)
  {
    result = v11(a4, a5);
    if (v5 || (v13 & 1) != 0)
    {
      break;
    }

    (*(a5 + 464))(a1, a2, a3, result, a4, a5);
  }

  return result;
}

uint64_t dispatch thunk of Decoder.decodeSingularFixed32Field(value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 216))();
}

{
  return (*(a3 + 224))();
}

uint64_t dispatch thunk of Decoder.decodeSingularSFixed32Field(value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 264))();
}

{
  return (*(a3 + 272))();
}

uint64_t dispatch thunk of Decoder.decodeSingularSFixed64Field(value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 288))();
}

{
  return (*(a3 + 296))();
}

uint64_t sub_1AC4936E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5581F8, &unk_1AC520DD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1AC493748(uint64_t a1, uint64_t a2, unint64_t a3)
{
  switch(a3 >> 62)
  {
    case 1uLL:
      OUTLINED_FUNCTION_73();
      goto LABEL_6;
    case 2uLL:
      v3 = *(a2 + 16);
      v4 = *(a2 + 24);
LABEL_6:
      if (v3 != v4)
      {
        goto LABEL_7;
      }

      return;
    case 3uLL:
      return;
    default:
      if ((a3 & 0xFF000000000000) == 0)
      {
        return;
      }

LABEL_7:
      sub_1AC5026FC(a2, a3);
      return;
  }
}

void sub_1AC4937B8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  switch(a3 >> 62)
  {
    case 1uLL:
      OUTLINED_FUNCTION_73();
      goto LABEL_6;
    case 2uLL:
      v3 = *(a2 + 16);
      v4 = *(a2 + 24);
LABEL_6:
      if (v3 != v4)
      {
        goto LABEL_7;
      }

      return;
    case 3uLL:
      return;
    default:
      if ((a3 & 0xFF000000000000) == 0)
      {
        return;
      }

LABEL_7:
      sub_1AC51EC58();
      return;
  }
}

InternalSwiftProtobuf::Google_Protobuf_Edition_optional __swiftcall Google_Protobuf_Edition.init(rawValue:)(Swift::Int rawValue)
{
  if (!(!v2 & v1))
  {
    switch(rawValue)
    {
      case 998:
      case 999:
      case 1000:
      case 1001:
        break;
      default:
        JUMPOUT(0);
    }
  }

  OUTLINED_FUNCTION_104_1(v3);
  return result;
}

uint64_t sub_1AC493970@<X0>(uint64_t *a1@<X8>)
{
  result = Google_Protobuf_Edition.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t Google_Protobuf_FileDescriptorProto.name.getter()
{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 72);
    v2 = *(v0 + 80);
  }

  else
  {
    OUTLINED_FUNCTION_103_1();
  }

  return OUTLINED_FUNCTION_44();
}

uint64_t sub_1AC493A0C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Google_Protobuf_FileDescriptorProto.name.setter();
}

uint64_t Google_Protobuf_FileDescriptorProto.name.setter()
{
  OUTLINED_FUNCTION_69();
  v3 = *(v1 + 80);

  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  return result;
}

uint64_t Google_Protobuf_FileDescriptorProto.name.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_115(a1);
  v2 = *(v1 + 80);
  if (v2)
  {
    v3 = *(v1 + 72);
    v4 = *(v1 + 80);
  }

  else
  {
    OUTLINED_FUNCTION_102_1();
  }

  OUTLINED_FUNCTION_117(v2, v3);

  return OUTLINED_FUNCTION_76();
}

Swift::Void __swiftcall Google_Protobuf_FileDescriptorProto.clearName()()
{
  v1 = *(v0 + 80);

  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
}

uint64_t Google_Protobuf_FileDescriptorProto.package.getter()
{
  if (*(v0 + 96))
  {
    v1 = *(v0 + 88);
    v2 = *(v0 + 96);
  }

  else
  {
    OUTLINED_FUNCTION_103_1();
  }

  return OUTLINED_FUNCTION_44();
}

uint64_t sub_1AC493B4C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Google_Protobuf_FileDescriptorProto.package.setter();
}

uint64_t Google_Protobuf_FileDescriptorProto.package.setter()
{
  OUTLINED_FUNCTION_69();
  v3 = *(v1 + 96);

  *(v1 + 88) = v2;
  *(v1 + 96) = v0;
  return result;
}

uint64_t Google_Protobuf_FileDescriptorProto.package.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_115(a1);
  v2 = *(v1 + 96);
  if (v2)
  {
    v3 = *(v1 + 88);
    v4 = *(v1 + 96);
  }

  else
  {
    OUTLINED_FUNCTION_102_1();
  }

  OUTLINED_FUNCTION_117(v2, v3);

  return OUTLINED_FUNCTION_76();
}

uint64_t sub_1AC493C1C(uint64_t *a1)
{
  OUTLINED_FUNCTION_165(a1);
  if (v4)
  {

    *(v3 + 88) = v2;
    *(v3 + 96) = v1;
  }

  else
  {

    *(v3 + 88) = v2;
    *(v3 + 96) = v1;
  }

  return result;
}

Swift::Void __swiftcall Google_Protobuf_FileDescriptorProto.clearPackage()()
{
  v1 = *(v0 + 96);

  *(v0 + 88) = 0;
  *(v0 + 96) = 0;
}

uint64_t Google_Protobuf_FileDescriptorProto.dependency.setter()
{
  result = OUTLINED_FUNCTION_235();
  *v1 = v0;
  return result;
}

uint64_t Google_Protobuf_FileDescriptorProto.publicDependency.setter()
{
  result = OUTLINED_FUNCTION_391();
  *(v1 + 8) = v0;
  return result;
}

uint64_t Google_Protobuf_FileDescriptorProto.weakDependency.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t Google_Protobuf_FileDescriptorProto.messageType.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t Google_Protobuf_FileDescriptorProto.enumType.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t Google_Protobuf_FileDescriptorProto.service.setter(uint64_t a1)
{
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;
  return result;
}

uint64_t Google_Protobuf_FileDescriptorProto.extension.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

uint64_t Google_Protobuf_FileDescriptorProto.options.getter@<X0>(void *a1@<X8>)
{
  v3 = v1[14];
  v4 = v1[15];
  v5 = v1[16];
  if (v4)
  {
    *a1 = v1[13];
    a1[1] = v3;
    a1[2] = v4;
    a1[3] = v5;
  }

  else
  {
    *a1 = xmmword_1AC51F990;
    a1[2] = MEMORY[0x1E69E7CC8];
    if (qword_1EB557DB0 != -1)
    {
      OUTLINED_FUNCTION_193();
    }

    a1[3] = qword_1EB558558;
  }

  OUTLINED_FUNCTION_151();
  return sub_1AC4B31CC(v6, v7, v8);
}

double sub_1AC493F68@<D0>(_OWORD *a1@<X8>)
{
  Google_Protobuf_FileDescriptorProto.options.getter(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  a1[1] = v3;
  return result;
}

double sub_1AC493FA4(uint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = a1[3];
  v5[0] = *a1;
  v5[1] = v1;
  v5[2] = v2;
  v5[3] = v3;
  sub_1AC4578F4(v5[0], v1);

  *&result = Google_Protobuf_FileDescriptorProto.options.setter(v5).n128_u64[0];
  return result;
}

__n128 Google_Protobuf_FileDescriptorProto.options.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_161(a1);
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = v1[16];
  sub_1AC4B3218(v1[13], v1[14], v1[15]);
  result = v7;
  *(v1 + 13) = v7;
  v1[15] = v3;
  v1[16] = v4;
  return result;
}

void Google_Protobuf_FileDescriptorProto.options.modify()
{
  OUTLINED_FUNCTION_392();
  v2 = v1;
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  v4 = v3;
  *v2 = v3;
  v3[4] = v0;
  v5 = v0[14];
  v6 = v0[15];
  v7 = v0[16];
  if (v6)
  {
    *v3 = v0[13];
    v3[1] = v5;
    v3[2] = v6;
    v3[3] = v7;
  }

  else
  {
    *v3 = xmmword_1AC51F990;
    v3[2] = MEMORY[0x1E69E7CC8];
    if (qword_1EB557DB0 != -1)
    {
      OUTLINED_FUNCTION_193();
    }

    v4[3] = qword_1EB558558;
  }

  v8 = OUTLINED_FUNCTION_18();
  sub_1AC4B31CC(v8, v9, v6);
  OUTLINED_FUNCTION_378();
}

void sub_1AC494148()
{
  OUTLINED_FUNCTION_230();
  OUTLINED_FUNCTION_353(v6);
  v7 = v5[13];
  v8 = v5[14];
  v9 = v5[15];
  v10 = v5[16];
  if (v11)
  {
    v12 = OUTLINED_FUNCTION_98();
    sub_1AC4578F4(v12, v13);

    OUTLINED_FUNCTION_100();
    OUTLINED_FUNCTION_258();
    sub_1AC4B3218(v14, v15, v16);
    v5[13] = v4;
    v5[14] = v3;
    v5[15] = v2;
    v5[16] = v1;
    v17 = v0[2];
    v18 = v0[3];
    sub_1AC4513F8(*v0, v0[1]);
  }

  else
  {
    OUTLINED_FUNCTION_100();
    OUTLINED_FUNCTION_258();
    sub_1AC4B3218(v19, v20, v21);
    v5[13] = v4;
    v5[14] = v3;
    v5[15] = v2;
    v5[16] = v1;
  }

  OUTLINED_FUNCTION_229();

  free(v22);
}

Swift::Void __swiftcall Google_Protobuf_FileDescriptorProto.clearOptions()()
{
  v1 = v0[16];
  sub_1AC4B3218(v0[13], v0[14], v0[15]);
  *(v0 + 15) = 0u;
  *(v0 + 13) = 0u;
}

uint64_t Google_Protobuf_FileDescriptorProto.sourceCodeInfo.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[17];
  v3 = v1[18];
  v4 = MEMORY[0x1E69E7CC0];
  v5 = v1[19];
  if (v2)
  {
    v4 = v1[17];
    v6 = v1[18];
  }

  else
  {
    v6 = 0;
  }

  v7 = 0xC000000000000000;
  if (v2)
  {
    v7 = v1[19];
  }

  *a1 = v4;
  a1[1] = v6;
  a1[2] = v7;
  return sub_1AC4AEDBC(v2, v3, v5);
}

double sub_1AC494264@<D0>(uint64_t a1@<X8>)
{
  Google_Protobuf_FileDescriptorProto.sourceCodeInfo.getter(&v3);
  *a1 = v3;
  result = *&v4;
  *(a1 + 8) = v4;
  return result;
}

double sub_1AC4942A8(void *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v4[0] = *a1;
  v4[1] = v1;
  v4[2] = v2;

  sub_1AC4578F4(v1, v2);
  *&result = Google_Protobuf_FileDescriptorProto.sourceCodeInfo.setter(v4).n128_u64[0];
  return result;
}

__n128 Google_Protobuf_FileDescriptorProto.sourceCodeInfo.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_161(a1);
  v3 = *(v2 + 16);
  sub_1AC4AEE04(*(v1 + 136), *(v1 + 144), *(v1 + 152));
  result = v5;
  *(v1 + 136) = v5;
  *(v1 + 152) = v3;
  return result;
}

double Google_Protobuf_SourceCodeInfo.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  result = 0.0;
  *(a1 + 8) = xmmword_1AC51F990;
  return result;
}

void (*Google_Protobuf_FileDescriptorProto.sourceCodeInfo.modify(void *a1))()
{
  v3 = v1[17];
  v4 = v1[18];
  v5 = v1[19];
  v6 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v6 = v1[17];
    v7 = v1[18];
  }

  else
  {
    v7 = 0;
  }

  v8 = 0xC000000000000000;
  if (v3)
  {
    v8 = v1[19];
  }

  *a1 = v6;
  a1[1] = v7;
  a1[2] = v8;
  a1[3] = v1;
  sub_1AC4AEDBC(v3, v4, v5);
  return sub_1AC4943D0;
}

void sub_1AC4943D0()
{
  OUTLINED_FUNCTION_392();
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v4[17];
  v6 = v4[18];
  v7 = v4[19];
  if (v8)
  {
    v9 = *v0;

    v10 = OUTLINED_FUNCTION_44();
    sub_1AC4578F4(v10, v11);
    v12 = OUTLINED_FUNCTION_18();
    sub_1AC4AEE04(v12, v13, v7);
    v4[17] = v2;
    v4[18] = v1;
    v4[19] = v3;

    OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_378();

    sub_1AC4513F8(v14, v15);
  }

  else
  {
    v17 = OUTLINED_FUNCTION_18();
    sub_1AC4AEE04(v17, v18, v7);
    v4[17] = v2;
    v4[18] = v1;
    v4[19] = v3;
    OUTLINED_FUNCTION_378();
  }
}

Swift::Void __swiftcall Google_Protobuf_FileDescriptorProto.clearSourceCodeInfo()()
{
  sub_1AC4AEE04(*(v0 + 136), *(v0 + 144), *(v0 + 152));
  *(v0 + 136) = 0;
  *(v0 + 144) = 0;
  *(v0 + 152) = 0;
}

uint64_t Google_Protobuf_FileDescriptorProto.syntax.getter()
{
  if (*(v0 + 168))
  {
    v1 = *(v0 + 160);
    v2 = *(v0 + 168);
  }

  else
  {
    OUTLINED_FUNCTION_103_1();
  }

  return OUTLINED_FUNCTION_44();
}

uint64_t sub_1AC4944EC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Google_Protobuf_FileDescriptorProto.syntax.setter();
}

uint64_t Google_Protobuf_FileDescriptorProto.syntax.setter()
{
  OUTLINED_FUNCTION_69();
  v3 = *(v1 + 168);

  *(v1 + 160) = v2;
  *(v1 + 168) = v0;
  return result;
}

uint64_t Google_Protobuf_FileDescriptorProto.syntax.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_115(a1);
  v2 = *(v1 + 168);
  if (v2)
  {
    v3 = *(v1 + 160);
    v4 = *(v1 + 168);
  }

  else
  {
    OUTLINED_FUNCTION_102_1();
  }

  OUTLINED_FUNCTION_117(v2, v3);

  return OUTLINED_FUNCTION_76();
}

uint64_t sub_1AC4945BC(uint64_t *a1)
{
  OUTLINED_FUNCTION_165(a1);
  if (v4)
  {

    *(v3 + 160) = v2;
    *(v3 + 168) = v1;
  }

  else
  {

    *(v3 + 160) = v2;
    *(v3 + 168) = v1;
  }

  return result;
}

Swift::Void __swiftcall Google_Protobuf_FileDescriptorProto.clearSyntax()()
{
  v1 = *(v0 + 168);

  *(v0 + 160) = 0;
  *(v0 + 168) = 0;
}

_BYTE *(*Google_Protobuf_FileDescriptorProto.edition.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  v2 = *(v1 + 176);
  if (v2 == 12)
  {
    LOBYTE(v2) = 0;
  }

  *(a1 + 8) = v2;
  return sub_1AC494718;
}

uint64_t Google_Protobuf_FileDescriptorProto.unknownFields.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_1AC4513F8(*(v1 + 56), *(v1 + 64));
  *(v1 + 56) = v2;
  *(v1 + 64) = v3;
  return result;
}

double Google_Protobuf_FileDescriptorProto.init()@<D0>(uint64_t a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = v1;
  *(a1 + 16) = v1;
  *(a1 + 24) = v1;
  *(a1 + 32) = v1;
  *(a1 + 40) = v1;
  *(a1 + 48) = v1;
  *(a1 + 56) = xmmword_1AC51F990;
  result = 0.0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0;
  *(a1 + 176) = 12;
  return result;
}

uint64_t Google_Protobuf_DescriptorProto.name.getter()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_22_5();
  swift_beginAccess();
  if (*(v1 + 24))
  {
    v2 = *(v1 + 16);
  }

  else
  {
    OUTLINED_FUNCTION_103_1();
  }

  return OUTLINED_FUNCTION_44();
}

uint64_t sub_1AC494844@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 2);
  result = Google_Protobuf_DescriptorProto.name.getter();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1AC494888(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Google_Protobuf_DescriptorProto.name.setter();
}

uint64_t Google_Protobuf_DescriptorProto.name.setter()
{
  OUTLINED_FUNCTION_69();
  v3 = *(v1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v1 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_DescriptorProto._StorageClass();
    OUTLINED_FUNCTION_123();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_0_1();
    v7 = sub_1AC4A59E0(v6);
    OUTLINED_FUNCTION_3_1(v7);
  }

  OUTLINED_FUNCTION_75_1();
  v8 = *(v5 + 24);
  *(v5 + 16) = v2;
  *(v5 + 24) = v0;
}

uint64_t Google_Protobuf_DescriptorProto.name.modify()
{
  v2 = OUTLINED_FUNCTION_167();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_83_1(v3) + 40) = v0;
  v4 = *(v0 + 16);
  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  if (*(v4 + 24))
  {
    v5 = *(v4 + 16);
    v6 = *(v4 + 24);
  }

  else
  {
    OUTLINED_FUNCTION_102_1();
  }

  *(v1 + 24) = v5;
  *(v1 + 32) = v6;

  return OUTLINED_FUNCTION_163();
}

void sub_1AC4949C4(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 40);
  if (a2)
  {
    v5 = *(*a1 + 32);

    OUTLINED_FUNCTION_121();
    Google_Protobuf_DescriptorProto.name.setter();
    v6 = v2[4];
  }

  else
  {
    OUTLINED_FUNCTION_121();
    Google_Protobuf_DescriptorProto.name.setter();
  }

  free(v2);
}

BOOL Google_Protobuf_DescriptorProto.hasName.getter()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_22_5();
  swift_beginAccess();
  return *(v1 + 24) != 0;
}

Swift::Void __swiftcall Google_Protobuf_DescriptorProto.clearName()()
{
  v1 = *(v0 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_DescriptorProto._StorageClass();
    OUTLINED_FUNCTION_123();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_86_1();
    v3 = sub_1AC4A59E0(v4);
    *(v0 + 16) = v3;
  }

  OUTLINED_FUNCTION_75_1();
  v5 = v3[3];
  v3[2] = 0;
  v3[3] = 0;
}

uint64_t Google_Protobuf_DescriptorProto.field.getter()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_22_5();
  swift_beginAccess();
  v2 = *(v1 + 32);
}

uint64_t sub_1AC494B24(uint64_t *a1)
{
  v1 = *a1;

  return Google_Protobuf_DescriptorProto.field.setter();
}

uint64_t Google_Protobuf_DescriptorProto.field.setter()
{
  OUTLINED_FUNCTION_160();
  v2 = *(v1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v1 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_DescriptorProto._StorageClass();
    OUTLINED_FUNCTION_123();
    swift_allocObject();
    v5 = OUTLINED_FUNCTION_0_1();
    v6 = sub_1AC4A59E0(v5);
    OUTLINED_FUNCTION_174(v6);
  }

  OUTLINED_FUNCTION_75_1();
  v7 = *(v4 + 32);
  *(v4 + 32) = v0;
}

uint64_t Google_Protobuf_DescriptorProto.field.modify()
{
  v2 = OUTLINED_FUNCTION_162();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_38_1(v3);
  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  *(v1 + 48) = *(v0 + 32);

  return OUTLINED_FUNCTION_1_1();
}

void sub_1AC494C2C(uint64_t a1)
{
  OUTLINED_FUNCTION_23_4(a1);
  if (v5)
  {

    Google_Protobuf_DescriptorProto.field.setter();
    v6 = *v4;
  }

  else
  {
    v7 = *(v2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v2 + 16);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_159();
      type metadata accessor for Google_Protobuf_DescriptorProto._StorageClass();
      OUTLINED_FUNCTION_123();
      swift_allocObject();
      v10 = OUTLINED_FUNCTION_0_1();
      v11 = sub_1AC4A59E0(v10);
      OUTLINED_FUNCTION_3_1(v11);
    }

    OUTLINED_FUNCTION_134();
    v12 = *(v9 + 32);
    *(v9 + 32) = v3;
  }

  free(v1);
}

uint64_t Google_Protobuf_DescriptorProto.extension.getter()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_22_5();
  swift_beginAccess();
  v2 = *(v1 + 40);
}

uint64_t sub_1AC494CFC(uint64_t *a1)
{
  v1 = *a1;

  return Google_Protobuf_DescriptorProto.extension.setter();
}

uint64_t Google_Protobuf_DescriptorProto.extension.setter()
{
  OUTLINED_FUNCTION_160();
  v2 = *(v1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v1 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_DescriptorProto._StorageClass();
    OUTLINED_FUNCTION_123();
    swift_allocObject();
    v5 = OUTLINED_FUNCTION_0_1();
    v6 = sub_1AC4A59E0(v5);
    OUTLINED_FUNCTION_174(v6);
  }

  OUTLINED_FUNCTION_75_1();
  v7 = *(v4 + 40);
  *(v4 + 40) = v0;
}

uint64_t Google_Protobuf_DescriptorProto.extension.modify()
{
  v2 = OUTLINED_FUNCTION_162();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_38_1(v3);
  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  *(v1 + 48) = *(v0 + 40);

  return OUTLINED_FUNCTION_1_1();
}

void sub_1AC494E04(uint64_t a1)
{
  OUTLINED_FUNCTION_23_4(a1);
  if (v5)
  {

    Google_Protobuf_DescriptorProto.extension.setter();
    v6 = *v4;
  }

  else
  {
    v7 = *(v2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v2 + 16);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_159();
      type metadata accessor for Google_Protobuf_DescriptorProto._StorageClass();
      OUTLINED_FUNCTION_123();
      swift_allocObject();
      v10 = OUTLINED_FUNCTION_0_1();
      v11 = sub_1AC4A59E0(v10);
      OUTLINED_FUNCTION_3_1(v11);
    }

    OUTLINED_FUNCTION_134();
    v12 = *(v9 + 40);
    *(v9 + 40) = v3;
  }

  free(v1);
}

uint64_t Google_Protobuf_DescriptorProto.nestedType.getter()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_22_5();
  swift_beginAccess();
  v2 = *(v1 + 48);
}

uint64_t sub_1AC494ED4(uint64_t *a1)
{
  v1 = *a1;

  return Google_Protobuf_DescriptorProto.nestedType.setter();
}

uint64_t Google_Protobuf_DescriptorProto.nestedType.setter()
{
  OUTLINED_FUNCTION_160();
  v2 = *(v1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v1 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_DescriptorProto._StorageClass();
    OUTLINED_FUNCTION_123();
    swift_allocObject();
    v5 = OUTLINED_FUNCTION_0_1();
    v6 = sub_1AC4A59E0(v5);
    OUTLINED_FUNCTION_174(v6);
  }

  OUTLINED_FUNCTION_75_1();
  v7 = *(v4 + 48);
  *(v4 + 48) = v0;
}

uint64_t Google_Protobuf_DescriptorProto.nestedType.modify()
{
  v2 = OUTLINED_FUNCTION_162();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_38_1(v3);
  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  *(v1 + 48) = *(v0 + 48);

  return OUTLINED_FUNCTION_1_1();
}

void sub_1AC494FDC(uint64_t a1)
{
  OUTLINED_FUNCTION_23_4(a1);
  if (v5)
  {

    Google_Protobuf_DescriptorProto.nestedType.setter();
    v6 = *v4;
  }

  else
  {
    v7 = *(v2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v2 + 16);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_159();
      type metadata accessor for Google_Protobuf_DescriptorProto._StorageClass();
      OUTLINED_FUNCTION_123();
      swift_allocObject();
      v10 = OUTLINED_FUNCTION_0_1();
      v11 = sub_1AC4A59E0(v10);
      OUTLINED_FUNCTION_3_1(v11);
    }

    OUTLINED_FUNCTION_134();
    v12 = *(v9 + 48);
    *(v9 + 48) = v3;
  }

  free(v1);
}

uint64_t Google_Protobuf_DescriptorProto.enumType.getter()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_22_5();
  swift_beginAccess();
  v2 = *(v1 + 56);
}

uint64_t sub_1AC4950AC(uint64_t *a1)
{
  v1 = *a1;

  return Google_Protobuf_DescriptorProto.enumType.setter();
}

uint64_t Google_Protobuf_DescriptorProto.enumType.setter()
{
  OUTLINED_FUNCTION_160();
  v2 = *(v1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v1 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_DescriptorProto._StorageClass();
    OUTLINED_FUNCTION_123();
    swift_allocObject();
    v5 = OUTLINED_FUNCTION_0_1();
    v6 = sub_1AC4A59E0(v5);
    OUTLINED_FUNCTION_174(v6);
  }

  OUTLINED_FUNCTION_75_1();
  v7 = *(v4 + 56);
  *(v4 + 56) = v0;
}

uint64_t Google_Protobuf_DescriptorProto.enumType.modify()
{
  v2 = OUTLINED_FUNCTION_162();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_38_1(v3);
  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  *(v1 + 48) = *(v0 + 56);

  return OUTLINED_FUNCTION_1_1();
}

void sub_1AC4951B4(uint64_t a1)
{
  OUTLINED_FUNCTION_23_4(a1);
  if (v5)
  {

    Google_Protobuf_DescriptorProto.enumType.setter();
    v6 = *v4;
  }

  else
  {
    v7 = *(v2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v2 + 16);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_159();
      type metadata accessor for Google_Protobuf_DescriptorProto._StorageClass();
      OUTLINED_FUNCTION_123();
      swift_allocObject();
      v10 = OUTLINED_FUNCTION_0_1();
      v11 = sub_1AC4A59E0(v10);
      OUTLINED_FUNCTION_3_1(v11);
    }

    OUTLINED_FUNCTION_134();
    v12 = *(v9 + 56);
    *(v9 + 56) = v3;
  }

  free(v1);
}

uint64_t Google_Protobuf_DescriptorProto.extensionRange.getter()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_22_5();
  swift_beginAccess();
  v2 = *(v1 + 64);
}

uint64_t sub_1AC495284(uint64_t *a1)
{
  v1 = *a1;

  return Google_Protobuf_DescriptorProto.extensionRange.setter();
}

uint64_t Google_Protobuf_DescriptorProto.extensionRange.setter()
{
  OUTLINED_FUNCTION_160();
  v2 = *(v1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v1 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_DescriptorProto._StorageClass();
    OUTLINED_FUNCTION_123();
    swift_allocObject();
    v5 = OUTLINED_FUNCTION_0_1();
    v6 = sub_1AC4A59E0(v5);
    OUTLINED_FUNCTION_174(v6);
  }

  OUTLINED_FUNCTION_75_1();
  v7 = *(v4 + 64);
  *(v4 + 64) = v0;
}

uint64_t Google_Protobuf_DescriptorProto.extensionRange.modify()
{
  v2 = OUTLINED_FUNCTION_162();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_38_1(v3);
  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  *(v1 + 48) = *(v0 + 64);

  return OUTLINED_FUNCTION_1_1();
}

void sub_1AC49538C(uint64_t a1)
{
  OUTLINED_FUNCTION_23_4(a1);
  if (v5)
  {

    Google_Protobuf_DescriptorProto.extensionRange.setter();
    v6 = *v4;
  }

  else
  {
    v7 = *(v2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v2 + 16);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_159();
      type metadata accessor for Google_Protobuf_DescriptorProto._StorageClass();
      OUTLINED_FUNCTION_123();
      swift_allocObject();
      v10 = OUTLINED_FUNCTION_0_1();
      v11 = sub_1AC4A59E0(v10);
      OUTLINED_FUNCTION_3_1(v11);
    }

    OUTLINED_FUNCTION_134();
    v12 = *(v9 + 64);
    *(v9 + 64) = v3;
  }

  free(v1);
}

uint64_t Google_Protobuf_DescriptorProto.oneofDecl.getter()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_22_5();
  swift_beginAccess();
  v2 = *(v1 + 72);
}

uint64_t sub_1AC49545C(uint64_t *a1)
{
  v1 = *a1;

  return Google_Protobuf_DescriptorProto.oneofDecl.setter();
}

uint64_t Google_Protobuf_DescriptorProto.oneofDecl.setter()
{
  OUTLINED_FUNCTION_160();
  v2 = *(v1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v1 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_DescriptorProto._StorageClass();
    OUTLINED_FUNCTION_123();
    swift_allocObject();
    v5 = OUTLINED_FUNCTION_0_1();
    v6 = sub_1AC4A59E0(v5);
    OUTLINED_FUNCTION_174(v6);
  }

  OUTLINED_FUNCTION_75_1();
  v7 = *(v4 + 72);
  *(v4 + 72) = v0;
}

uint64_t Google_Protobuf_DescriptorProto.oneofDecl.modify()
{
  v2 = OUTLINED_FUNCTION_162();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_38_1(v3);
  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  *(v1 + 48) = *(v0 + 72);

  return OUTLINED_FUNCTION_1_1();
}

void sub_1AC495564(uint64_t a1)
{
  OUTLINED_FUNCTION_23_4(a1);
  if (v5)
  {

    Google_Protobuf_DescriptorProto.oneofDecl.setter();
    v6 = *v4;
  }

  else
  {
    v7 = *(v2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v2 + 16);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_159();
      type metadata accessor for Google_Protobuf_DescriptorProto._StorageClass();
      OUTLINED_FUNCTION_123();
      swift_allocObject();
      v10 = OUTLINED_FUNCTION_0_1();
      v11 = sub_1AC4A59E0(v10);
      OUTLINED_FUNCTION_3_1(v11);
    }

    OUTLINED_FUNCTION_134();
    v12 = *(v9 + 72);
    *(v9 + 72) = v3;
  }

  free(v1);
}

uint64_t Google_Protobuf_DescriptorProto.options.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  v4 = OUTLINED_FUNCTION_329(v7);
  if (v7[0])
  {
    OUTLINED_FUNCTION_330(v4, (v3 + 80));
  }

  else
  {
    *a1 = MEMORY[0x1E69E7CC0];
    *(a1 + 8) = xmmword_1AC51F990;
    *(a1 + 24) = MEMORY[0x1E69E7CC8];
    *(a1 + 32) = 33686018;
    *(a1 + 36) = 2;
    OUTLINED_FUNCTION_188();
  }

  return sub_1AC4B3394(v7, v6, &qword_1EB5589A8, &qword_1AC520E10);
}

void *sub_1AC4956A0@<X0>(__int128 *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 2);
  Google_Protobuf_DescriptorProto.options.getter(__src);
  return memcpy(a2, __src, 0x46uLL);
}

uint64_t sub_1AC4956F4(void *__src)
{
  memcpy(__dst, __src, 0x46uLL);
  sub_1AC4AEE70(__dst, &v3);
  return Google_Protobuf_DescriptorProto.options.setter(__src);
}

uint64_t Google_Protobuf_DescriptorProto.options.setter(const void *a1)
{
  v3 = *(v1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v1 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_DescriptorProto._StorageClass();
    OUTLINED_FUNCTION_123();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_86_1();
    v5 = sub_1AC4A59E0(v6);
    *(v1 + 16) = v5;
  }

  memcpy(__dst, a1, sizeof(__dst));
  OUTLINED_FUNCTION_75_1();
  memcpy(v9, v5 + 10, 0x46uLL);
  memcpy(v5 + 10, __dst, 0x46uLL);
  return sub_1AC4575D8(v9, &qword_1EB5589A8, &qword_1AC520E10);
}

void Google_Protobuf_MessageOptions.init()(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 1) = xmmword_1AC51F990;
  a1[3] = MEMORY[0x1E69E7CC8];
  *(a1 + 8) = 33686018;
  *(a1 + 36) = 2;
  OUTLINED_FUNCTION_133(a1);
}

uint64_t Google_Protobuf_DescriptorProto.options.modify()
{
  v2 = __swift_coroFrameAllocStub(0x1A0uLL);
  *(OUTLINED_FUNCTION_83_1(v2) + 408) = v0;
  v3 = *(v0 + 16);
  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  memcpy(v1, (v3 + 80), 0x46uLL);
  if (*v1)
  {
    v4 = OUTLINED_FUNCTION_329(v1 + 9);
  }

  else
  {
    v1[9] = MEMORY[0x1E69E7CC0];
    *(v1 + 5) = xmmword_1AC51F990;
    v1[12] = MEMORY[0x1E69E7CC8];
    *(v1 + 26) = 33686018;
    *(v1 + 108) = 2;
    OUTLINED_FUNCTION_275();
  }

  OUTLINED_FUNCTION_381(v4, v5, &qword_1EB5589A8, &qword_1AC520E10);
  return OUTLINED_FUNCTION_361();
}

void sub_1AC495900(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 408);
  if (a2)
  {
    OUTLINED_FUNCTION_269(v2 + 18);
    sub_1AC4AEE70((v2 + 18), (v2 + 27));
    v4 = *(v3 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v3 + 16);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = v2[51];
      type metadata accessor for Google_Protobuf_DescriptorProto._StorageClass();
      OUTLINED_FUNCTION_123();
      swift_allocObject();
      v8 = OUTLINED_FUNCTION_0_1();
      v9 = sub_1AC4A59E0(v8);
      OUTLINED_FUNCTION_174(v9);
    }

    memcpy(v16, v2 + 18, sizeof(v16));
    OUTLINED_FUNCTION_202();
    OUTLINED_FUNCTION_329(v2 + 36);
    memcpy((v6 + 80), v16, 0x46uLL);
    sub_1AC4575D8((v2 + 36), &qword_1EB5589A8, &qword_1AC520E10);
    OUTLINED_FUNCTION_269(v2 + 27);
    sub_1AC4AEEA8((v2 + 27));
  }

  else
  {
    OUTLINED_FUNCTION_269(__src);
    v10 = *(v3 + 16);
    v11 = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v3 + 16);
    if ((v11 & 1) == 0)
    {
      v13 = v2[51];
      type metadata accessor for Google_Protobuf_DescriptorProto._StorageClass();
      OUTLINED_FUNCTION_123();
      swift_allocObject();
      v14 = OUTLINED_FUNCTION_0_1();
      v15 = sub_1AC4A59E0(v14);
      OUTLINED_FUNCTION_174(v15);
    }

    OUTLINED_FUNCTION_202();
    OUTLINED_FUNCTION_329(v2 + 18);
    memcpy((v12 + 80), __src, 0x46uLL);
    sub_1AC4575D8((v2 + 18), &qword_1EB5589A8, &qword_1AC520E10);
  }

  free(v2);
}

BOOL Google_Protobuf_DescriptorProto.hasOptions.getter()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_22_5();
  swift_beginAccess();
  return *(v1 + 80) != 0;
}

Swift::Void __swiftcall Google_Protobuf_DescriptorProto.clearOptions()()
{
  v1 = *(v0 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_DescriptorProto._StorageClass();
    OUTLINED_FUNCTION_123();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_86_1();
    v3 = sub_1AC4A59E0(v4);
    *(v0 + 16) = v3;
  }

  OUTLINED_FUNCTION_202();
  memcpy(__dst, v3 + 10, 0x46uLL);
  *(v3 + 5) = 0u;
  *(v3 + 6) = 0u;
  *(v3 + 7) = 0u;
  *(v3 + 8) = 0u;
  *(v3 + 142) = 0;
  sub_1AC4575D8(__dst, &qword_1EB5589A8, &qword_1AC520E10);
}

uint64_t Google_Protobuf_DescriptorProto.reservedRange.getter()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_22_5();
  swift_beginAccess();
  v2 = *(v1 + 152);
}

uint64_t sub_1AC495B84(uint64_t *a1)
{
  v1 = *a1;

  return Google_Protobuf_DescriptorProto.reservedRange.setter();
}

uint64_t Google_Protobuf_DescriptorProto.reservedRange.setter()
{
  OUTLINED_FUNCTION_160();
  v2 = *(v1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v1 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_DescriptorProto._StorageClass();
    OUTLINED_FUNCTION_123();
    swift_allocObject();
    v5 = OUTLINED_FUNCTION_0_1();
    v6 = sub_1AC4A59E0(v5);
    OUTLINED_FUNCTION_174(v6);
  }

  OUTLINED_FUNCTION_75_1();
  v7 = *(v4 + 152);
  *(v4 + 152) = v0;
}

uint64_t Google_Protobuf_DescriptorProto.reservedRange.modify()
{
  v2 = OUTLINED_FUNCTION_162();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_38_1(v3);
  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  *(v1 + 48) = *(v0 + 152);

  return OUTLINED_FUNCTION_1_1();
}

void sub_1AC495C8C(uint64_t a1)
{
  OUTLINED_FUNCTION_23_4(a1);
  if (v5)
  {

    Google_Protobuf_DescriptorProto.reservedRange.setter();
    v6 = *v4;
  }

  else
  {
    v7 = *(v2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v2 + 16);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_159();
      type metadata accessor for Google_Protobuf_DescriptorProto._StorageClass();
      OUTLINED_FUNCTION_123();
      swift_allocObject();
      v10 = OUTLINED_FUNCTION_0_1();
      v11 = sub_1AC4A59E0(v10);
      OUTLINED_FUNCTION_3_1(v11);
    }

    OUTLINED_FUNCTION_134();
    v12 = *(v9 + 152);
    *(v9 + 152) = v3;
  }

  free(v1);
}

uint64_t Google_Protobuf_DescriptorProto.reservedName.getter()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_22_5();
  swift_beginAccess();
  v2 = *(v1 + 160);
}

uint64_t sub_1AC495D5C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = OUTLINED_FUNCTION_161(a1);
  result = v5(v4);
  *a2 = result;
  return result;
}

uint64_t sub_1AC495DA0(uint64_t *a1)
{
  v1 = *a1;

  return Google_Protobuf_DescriptorProto.reservedName.setter();
}

uint64_t Google_Protobuf_DescriptorProto.reservedName.setter()
{
  OUTLINED_FUNCTION_160();
  v2 = *(v1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v1 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_DescriptorProto._StorageClass();
    OUTLINED_FUNCTION_123();
    swift_allocObject();
    v5 = OUTLINED_FUNCTION_0_1();
    v6 = sub_1AC4A59E0(v5);
    OUTLINED_FUNCTION_174(v6);
  }

  OUTLINED_FUNCTION_75_1();
  v7 = *(v4 + 160);
  *(v4 + 160) = v0;
}

uint64_t Google_Protobuf_DescriptorProto.reservedName.modify()
{
  v2 = OUTLINED_FUNCTION_162();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_38_1(v3);
  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  *(v1 + 48) = *(v0 + 160);

  return OUTLINED_FUNCTION_1_1();
}

void sub_1AC495EA8(uint64_t a1)
{
  OUTLINED_FUNCTION_23_4(a1);
  if (v5)
  {

    Google_Protobuf_DescriptorProto.reservedName.setter();
    v6 = *v4;
  }

  else
  {
    v7 = *(v2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v2 + 16);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_159();
      type metadata accessor for Google_Protobuf_DescriptorProto._StorageClass();
      OUTLINED_FUNCTION_123();
      swift_allocObject();
      v10 = OUTLINED_FUNCTION_0_1();
      v11 = sub_1AC4A59E0(v10);
      OUTLINED_FUNCTION_3_1(v11);
    }

    OUTLINED_FUNCTION_134();
    v12 = *(v9 + 160);
    *(v9 + 160) = v3;
  }

  free(v1);
}

uint64_t Google_Protobuf_DescriptorProto.unknownFields.setter(uint64_t *a1)
{
  result = OUTLINED_FUNCTION_233(a1);
  *v2 = v1;
  v2[1] = v3;
  return result;
}

uint64_t Google_Protobuf_DescriptorProto.ExtensionRange.start.getter()
{
  if (*(v0 + 20))
  {
    return 0;
  }

  else
  {
    return *(v0 + 16);
  }
}

uint64_t Google_Protobuf_DescriptorProto.ExtensionRange.end.getter()
{
  if (*(v0 + 28))
  {
    return 0;
  }

  else
  {
    return *(v0 + 24);
  }
}

uint64_t Google_Protobuf_DescriptorProto.ExtensionRange.options.getter@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_286(v6);
  if (v6[0])
  {
    memcpy(a1, (v1 + 32), 0x47uLL);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
    *a1 = MEMORY[0x1E69E7CC0];
    a1[1] = v3;
    *(a1 + 1) = xmmword_1AC51F990;
    a1[4] = MEMORY[0x1E69E7CC8];
    a1[5] = 0;
    a1[6] = 0;
    a1[7] = 0;
    *(a1 + 62) = 0;
    *(a1 + 70) = 2;
  }

  return sub_1AC4B3394(v6, &v5, &qword_1EB5589B0, &qword_1AC520E18);
}

void *sub_1AC4960DC(void *__src)
{
  memcpy(__dst, __src, 0x47uLL);
  sub_1AC4AEED8(__dst, &v2);
  return Google_Protobuf_DescriptorProto.ExtensionRange.options.setter();
}

void *Google_Protobuf_DescriptorProto.ExtensionRange.options.setter()
{
  OUTLINED_FUNCTION_360();
  OUTLINED_FUNCTION_286(v2);
  sub_1AC4575D8(v4, &qword_1EB5589B0, &qword_1AC520E18);
  return memcpy((v1 + 32), v0, 0x47uLL);
}

double Google_Protobuf_ExtensionRangeOptions.init()@<D0>(uint64_t a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = v1;
  result = 0.0;
  *(a1 + 16) = xmmword_1AC51F990;
  *(a1 + 32) = MEMORY[0x1E69E7CC8];
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 62) = 0;
  *(a1 + 70) = 2;
  return result;
}

uint64_t Google_Protobuf_DescriptorProto.ExtensionRange.options.modify()
{
  v2 = __swift_coroFrameAllocStub(0x1B8uLL);
  v3 = OUTLINED_FUNCTION_83_1(v2);
  v3[54] = v0;
  v4 = OUTLINED_FUNCTION_286(v3);
  if (*v1)
  {
    v4 = OUTLINED_FUNCTION_286((v1 + 72));
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
    *(v1 + 72) = MEMORY[0x1E69E7CC0];
    *(v1 + 80) = v6;
    *(v1 + 88) = xmmword_1AC51F990;
    *(v1 + 104) = MEMORY[0x1E69E7CC8];
    *(v1 + 112) = 0;
    *(v1 + 120) = 0;
    *(v1 + 128) = 0;
    *(v1 + 134) = 0;
    *(v1 + 142) = 2;
  }

  OUTLINED_FUNCTION_381(v4, v5, &qword_1EB5589B0, &qword_1AC520E18);
  return OUTLINED_FUNCTION_361();
}

void sub_1AC49626C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a1;
  v9 = *(*a1 + 432);
  if (a2)
  {
    v10 = memcpy((v8 + 288), (v8 + 72), 0x47uLL);
    v18 = OUTLINED_FUNCTION_246(v10, v11, v12, v13, v14, v15, v16, v17, v22, __src[0]);
    memcpy(v18, v19, 0x47uLL);
    OUTLINED_FUNCTION_286((v8 + 216));
    sub_1AC4AEED8(v8 + 288, v8 + 360);
    sub_1AC4575D8(v8 + 216, &qword_1EB5589B0, &qword_1AC520E18);
    memcpy((v9 + 32), __src, 0x47uLL);
    memcpy((v8 + 144), (v8 + 72), 0x47uLL);
    sub_1AC4AEF10(v8 + 144);
  }

  else
  {
    v20 = OUTLINED_FUNCTION_246(a1, a2, a3, a4, a5, a6, a7, a8, v22, __src[0]);
    memcpy(v20, v21, 0x47uLL);
    OUTLINED_FUNCTION_286((v8 + 144));
    sub_1AC4575D8(v8 + 144, &qword_1EB5589B0, &qword_1AC520E18);
    memcpy((v9 + 32), __src, 0x47uLL);
  }

  free(v8);
}

Swift::Void __swiftcall Google_Protobuf_DescriptorProto.ExtensionRange.clearOptions()()
{
  OUTLINED_FUNCTION_286(v1);
  sub_1AC4575D8(v1, &qword_1EB5589B0, &qword_1AC520E18);
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 95) = 0;
}

uint64_t Google_Protobuf_DescriptorProto.ExtensionRange.unknownFields.setter(uint64_t *a1)
{
  result = OUTLINED_FUNCTION_233(a1);
  *v2 = v1;
  v2[1] = v3;
  return result;
}

double Google_Protobuf_DescriptorProto.ExtensionRange.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_1AC51F990;
  *(a1 + 16) = 0;
  *(a1 + 20) = 1;
  *(a1 + 24) = 0;
  *(a1 + 28) = 1;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 95) = 0;
  return result;
}

uint64_t Google_Protobuf_DescriptorProto.ReservedRange.start.getter()
{
  if (*(v0 + 20))
  {
    return 0;
  }

  else
  {
    return *(v0 + 16);
  }
}

uint64_t *sub_1AC496490(uint64_t *result)
{
  v1 = *result;
  *(v1 + 16) = *(result + 2);
  *(v1 + 20) = 0;
  return result;
}

uint64_t Google_Protobuf_DescriptorProto.ReservedRange.end.getter()
{
  if (*(v0 + 28))
  {
    return 0;
  }

  else
  {
    return *(v0 + 24);
  }
}

uint64_t *sub_1AC4964F8(uint64_t *result)
{
  v1 = *result;
  *(v1 + 24) = *(result + 2);
  *(v1 + 28) = 0;
  return result;
}

uint64_t Google_Protobuf_DescriptorProto.ReservedRange.unknownFields.setter(uint64_t *a1)
{
  result = OUTLINED_FUNCTION_233(a1);
  *v2 = v1;
  v2[1] = v3;
  return result;
}

double Google_Protobuf_DescriptorProto.ReservedRange.init()@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1AC51F990;
  *(a1 + 16) = 0;
  *(a1 + 20) = 1;
  *(a1 + 24) = 0;
  *(a1 + 28) = 1;
  return result;
}

uint64_t Google_Protobuf_DescriptorProto.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_1AC51F990;
  if (qword_1EB557D10 != -1)
  {
    swift_once();
  }

  *(a1 + 16) = qword_1EB558330;
}

uint64_t Google_Protobuf_ExtensionRangeOptions.uninterpretedOption.setter()
{
  result = OUTLINED_FUNCTION_235();
  *v1 = v0;
  return result;
}

uint64_t Google_Protobuf_ExtensionRangeOptions.declaration.setter()
{
  result = OUTLINED_FUNCTION_391();
  *(v1 + 8) = v0;
  return result;
}

uint64_t Google_Protobuf_ExtensionRangeOptions.features.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  if (*(v1 + 56))
  {
    OUTLINED_FUNCTION_181(*(v1 + 64) | (*(v1 + 68) << 32), a1);
  }

  else
  {
    OUTLINED_FUNCTION_180(a1);
  }

  return OUTLINED_FUNCTION_14_6(v4, v5, v6, v7);
}

double sub_1AC4966EC(uint64_t a1)
{
  v4[0] = *a1;
  *(v4 + 14) = *(a1 + 14);
  sub_1AC4AEF40(v4, &v3);
  return Google_Protobuf_ExtensionRangeOptions.features.setter(a1);
}

double Google_Protobuf_ExtensionRangeOptions.features.setter(__n128 *a1)
{
  OUTLINED_FUNCTION_46_1(a1);
  v3 = OUTLINED_FUNCTION_60_1(v2, *(v1 + 64));
  *&result = OUTLINED_FUNCTION_25_3(v3, v4, v5, v6, v7, v8, v9, v10, v11).n128_u64[0];
  return result;
}

double Google_Protobuf_FeatureSet.init()@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1AC51F990;
  *(a1 + 16) = MEMORY[0x1E69E7CC8];
  *(a1 + 24) = 4;
  *(a1 + 25) = 50529027;
  *(a1 + 29) = 3;
  return result;
}

uint64_t Google_Protobuf_ExtensionRangeOptions.features.modify()
{
  v0 = OUTLINED_FUNCTION_198();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_62(v1);
  v2 = OUTLINED_FUNCTION_21_4();
  if (v4)
  {
    OUTLINED_FUNCTION_6_6(v2, v3, v4, v5);
  }

  else
  {
    OUTLINED_FUNCTION_7_5();
  }

  OUTLINED_FUNCTION_268(v6, v7, v8, v9);
  return OUTLINED_FUNCTION_106_1();
}

Swift::Void __swiftcall Google_Protobuf_ExtensionRangeOptions.clearFeatures()()
{
  v0 = OUTLINED_FUNCTION_21_4();
  sub_1AC485714(v0, v1, v2);
  OUTLINED_FUNCTION_274();
}

uint64_t (*Google_Protobuf_ExtensionRangeOptions.verification.modify(uint64_t a1))()
{
  *a1 = v1;
  v2 = *(v1 + 70);
  if (v2 == 2)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2 & 1;
  }

  *(a1 + 8) = v3;
  return sub_1AC4C6D3C;
}

uint64_t Google_Protobuf_ExtensionRangeOptions.unknownFields.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_1AC4513F8(*(v1 + 16), *(v1 + 24));
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  return result;
}

uint64_t sub_1AC4969F8@<X0>(uint64_t *a1@<X8>)
{
  result = Google_Protobuf_ExtensionRangeOptions.VerificationState.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t Google_Protobuf_ExtensionRangeOptions.Declaration.number.getter()
{
  if (*(v0 + 20))
  {
    return 0;
  }

  else
  {
    return *(v0 + 16);
  }
}

uint64_t Google_Protobuf_ExtensionRangeOptions.Declaration.fullName.getter()
{
  if (*(v0 + 32))
  {
    OUTLINED_FUNCTION_245();
  }

  else
  {
    OUTLINED_FUNCTION_103_1();
  }

  return OUTLINED_FUNCTION_44();
}

uint64_t sub_1AC496AAC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Google_Protobuf_ExtensionRangeOptions.Declaration.fullName.setter();
}

uint64_t Google_Protobuf_ExtensionRangeOptions.Declaration.fullName.setter()
{
  OUTLINED_FUNCTION_69();
  v3 = *(v1 + 32);

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t Google_Protobuf_ExtensionRangeOptions.Declaration.fullName.modify(uint64_t a1)
{
  if (OUTLINED_FUNCTION_114_0(a1))
  {
    OUTLINED_FUNCTION_244();
  }

  else
  {
    OUTLINED_FUNCTION_102_1();
  }

  OUTLINED_FUNCTION_117(v1, v2);

  return OUTLINED_FUNCTION_76();
}

Swift::Void __swiftcall Google_Protobuf_ExtensionRangeOptions.Declaration.clearFullName()()
{
  v1 = *(v0 + 32);

  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
}

uint64_t Google_Protobuf_ExtensionRangeOptions.Declaration.type.getter()
{
  if (*(v0 + 48))
  {
    OUTLINED_FUNCTION_340();
  }

  else
  {
    OUTLINED_FUNCTION_103_1();
  }

  return OUTLINED_FUNCTION_44();
}

uint64_t sub_1AC496BDC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Google_Protobuf_ExtensionRangeOptions.Declaration.type.setter();
}

uint64_t Google_Protobuf_ExtensionRangeOptions.Declaration.type.setter()
{
  OUTLINED_FUNCTION_69();
  v3 = *(v1 + 48);

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t Google_Protobuf_ExtensionRangeOptions.Declaration.type.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_115(a1);
  if (*(v1 + 48))
  {
    OUTLINED_FUNCTION_339();
  }

  else
  {
    OUTLINED_FUNCTION_102_1();
  }

  OUTLINED_FUNCTION_117(v2, v3);

  return OUTLINED_FUNCTION_76();
}

Swift::Void __swiftcall Google_Protobuf_ExtensionRangeOptions.Declaration.clearType()()
{
  v1 = *(v0 + 48);

  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
}

_BYTE *(*Google_Protobuf_ExtensionRangeOptions.Declaration.reserved.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 56) & 1;
  return sub_1AC496D18;
}

_BYTE *(*Google_Protobuf_ExtensionRangeOptions.Declaration.repeated.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 57) & 1;
  return sub_1AC496D84;
}

uint64_t Google_Protobuf_ExtensionRangeOptions.Declaration.unknownFields.setter(uint64_t *a1)
{
  result = OUTLINED_FUNCTION_233(a1);
  *v2 = v1;
  v2[1] = v3;
  return result;
}

double Google_Protobuf_ExtensionRangeOptions.Declaration.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_1AC51F990;
  *(a1 + 16) = 0;
  *(a1 + 20) = 1;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 514;
  return result;
}

uint64_t Google_Protobuf_ExtensionRangeOptions._protobuf_extensionFieldValues.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 32);

  *(v1 + 32) = v2;
  return result;
}

uint64_t Google_Protobuf_FieldDescriptorProto.name.getter()
{
  if (*(v0 + 24))
  {
    OUTLINED_FUNCTION_294();
  }

  else
  {
    OUTLINED_FUNCTION_103_1();
  }

  return OUTLINED_FUNCTION_44();
}

uint64_t sub_1AC496EC0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Google_Protobuf_FieldDescriptorProto.name.setter();
}

uint64_t Google_Protobuf_FieldDescriptorProto.name.setter()
{
  OUTLINED_FUNCTION_43_2();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Google_Protobuf_FieldDescriptorProto.name.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_115(a1);
  if (*(v1 + 24))
  {
    OUTLINED_FUNCTION_291();
  }

  else
  {
    OUTLINED_FUNCTION_102_1();
  }

  OUTLINED_FUNCTION_117(v2, v3);

  return OUTLINED_FUNCTION_76();
}

Swift::Void __swiftcall Google_Protobuf_FieldDescriptorProto.clearName()()
{
  v1 = *(v0 + 24);

  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
}

uint64_t Google_Protobuf_FieldDescriptorProto.number.getter()
{
  if (*(v0 + 36))
  {
    return 0;
  }

  else
  {
    return *(v0 + 32);
  }
}

uint64_t *(*Google_Protobuf_FieldDescriptorProto.number.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  v2 = *(v1 + 32);
  if (*(v1 + 36))
  {
    v2 = 0;
  }

  *(a1 + 8) = v2;
  return sub_1AC497008;
}

uint64_t *sub_1AC497008(uint64_t *result)
{
  v1 = *result;
  *(v1 + 32) = *(result + 2);
  *(v1 + 36) = 0;
  return result;
}

_BYTE *(*Google_Protobuf_FieldDescriptorProto.label.modify(void *a1))(_BYTE *result)
{
  *a1 = v1;
  OUTLINED_FUNCTION_376(a1, *(v1 + 37));
  return sub_1AC4970E8;
}

_BYTE *(*Google_Protobuf_FieldDescriptorProto.type.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  v2 = *(v1 + 38);
  if (v2 == 18)
  {
    LOBYTE(v2) = 0;
  }

  *(a1 + 8) = v2;
  return sub_1AC4971D4;
}

uint64_t Google_Protobuf_FieldDescriptorProto.typeName.getter()
{
  if (*(v0 + 48))
  {
    OUTLINED_FUNCTION_340();
  }

  else
  {
    OUTLINED_FUNCTION_103_1();
  }

  return OUTLINED_FUNCTION_44();
}

uint64_t sub_1AC497238(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Google_Protobuf_FieldDescriptorProto.typeName.setter();
}

uint64_t Google_Protobuf_FieldDescriptorProto.typeName.setter()
{
  OUTLINED_FUNCTION_69();
  v3 = *(v1 + 48);

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t Google_Protobuf_FieldDescriptorProto.typeName.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_115(a1);
  if (*(v1 + 48))
  {
    OUTLINED_FUNCTION_339();
  }

  else
  {
    OUTLINED_FUNCTION_102_1();
  }

  OUTLINED_FUNCTION_117(v2, v3);

  return OUTLINED_FUNCTION_76();
}

Swift::Void __swiftcall Google_Protobuf_FieldDescriptorProto.clearTypeName()()
{
  v1 = *(v0 + 48);

  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
}

uint64_t Google_Protobuf_FieldDescriptorProto.extendee.getter()
{
  if (*(v0 + 64))
  {
    v1 = *(v0 + 56);
    v2 = *(v0 + 64);
  }

  else
  {
    OUTLINED_FUNCTION_103_1();
  }

  return OUTLINED_FUNCTION_44();
}

uint64_t sub_1AC497370(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Google_Protobuf_FieldDescriptorProto.extendee.setter();
}

uint64_t Google_Protobuf_FieldDescriptorProto.extendee.setter()
{
  OUTLINED_FUNCTION_69();
  v3 = *(v1 + 64);

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

uint64_t Google_Protobuf_FieldDescriptorProto.extendee.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_115(a1);
  v2 = *(v1 + 64);
  if (v2)
  {
    v3 = *(v1 + 56);
    v4 = *(v1 + 64);
  }

  else
  {
    OUTLINED_FUNCTION_102_1();
  }

  OUTLINED_FUNCTION_117(v2, v3);

  return OUTLINED_FUNCTION_76();
}

Swift::Void __swiftcall Google_Protobuf_FieldDescriptorProto.clearExtendee()()
{
  v1 = *(v0 + 64);

  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
}

uint64_t Google_Protobuf_FieldDescriptorProto.defaultValue.getter()
{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 72);
    v2 = *(v0 + 80);
  }

  else
  {
    OUTLINED_FUNCTION_103_1();
  }

  return OUTLINED_FUNCTION_44();
}

uint64_t sub_1AC4974AC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Google_Protobuf_FieldDescriptorProto.defaultValue.setter();
}

uint64_t Google_Protobuf_FieldDescriptorProto.defaultValue.setter()
{
  OUTLINED_FUNCTION_69();
  v3 = *(v1 + 80);

  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  return result;
}

uint64_t Google_Protobuf_FieldDescriptorProto.defaultValue.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_115(a1);
  v2 = *(v1 + 80);
  if (v2)
  {
    v3 = *(v1 + 72);
    v4 = *(v1 + 80);
  }

  else
  {
    OUTLINED_FUNCTION_102_1();
  }

  OUTLINED_FUNCTION_117(v2, v3);

  return OUTLINED_FUNCTION_76();
}

uint64_t sub_1AC49757C(uint64_t *a1)
{
  OUTLINED_FUNCTION_165(a1);
  if (v4)
  {

    *(v3 + 72) = v2;
    *(v3 + 80) = v1;
  }

  else
  {

    *(v3 + 72) = v2;
    *(v3 + 80) = v1;
  }

  return result;
}

Swift::Void __swiftcall Google_Protobuf_FieldDescriptorProto.clearDefaultValue()()
{
  v1 = *(v0 + 80);

  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
}

uint64_t Google_Protobuf_FieldDescriptorProto.oneofIndex.getter()
{
  if (*(v0 + 92))
  {
    return 0;
  }

  else
  {
    return *(v0 + 88);
  }
}

uint64_t Google_Protobuf_FieldDescriptorProto.oneofIndex.setter(uint64_t result)
{
  *(v1 + 88) = result;
  *(v1 + 92) = 0;
  return result;
}

uint64_t *(*Google_Protobuf_FieldDescriptorProto.oneofIndex.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  v2 = *(v1 + 88);
  if (*(v1 + 92))
  {
    v2 = 0;
  }

  *(a1 + 8) = v2;
  return sub_1AC497674;
}

uint64_t *sub_1AC497674(uint64_t *result)
{
  v1 = *result;
  *(v1 + 88) = *(result + 2);
  *(v1 + 92) = 0;
  return result;
}

uint64_t Google_Protobuf_FieldDescriptorProto.jsonName.getter()
{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 96);
    v2 = *(v0 + 104);
  }

  else
  {
    OUTLINED_FUNCTION_103_1();
  }

  return OUTLINED_FUNCTION_44();
}

uint64_t sub_1AC4976DC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Google_Protobuf_FieldDescriptorProto.jsonName.setter();
}

uint64_t Google_Protobuf_FieldDescriptorProto.jsonName.setter()
{
  OUTLINED_FUNCTION_69();
  v3 = *(v1 + 104);

  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  return result;
}

uint64_t Google_Protobuf_FieldDescriptorProto.jsonName.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_115(a1);
  v2 = *(v1 + 104);
  if (v2)
  {
    v3 = *(v1 + 96);
    v4 = *(v1 + 104);
  }

  else
  {
    OUTLINED_FUNCTION_102_1();
  }

  OUTLINED_FUNCTION_117(v2, v3);

  return OUTLINED_FUNCTION_76();
}

uint64_t sub_1AC4977AC(uint64_t *a1)
{
  OUTLINED_FUNCTION_165(a1);
  if (v4)
  {

    *(v3 + 96) = v2;
    *(v3 + 104) = v1;
  }

  else
  {

    *(v3 + 96) = v2;
    *(v3 + 104) = v1;
  }

  return result;
}

Swift::Void __swiftcall Google_Protobuf_FieldDescriptorProto.clearJsonName()()
{
  v1 = *(v0 + 104);

  *(v0 + 96) = 0;
  *(v0 + 104) = 0;
}

uint64_t Google_Protobuf_FieldDescriptorProto.options.getter@<X0>(void *a1@<X8>)
{
  v3 = v1[15];
  v4 = v1[16];
  v5 = v1[17];
  if (v4)
  {
    *a1 = v1[14];
    a1[1] = v3;
    a1[2] = v4;
    a1[3] = v5;
  }

  else
  {
    *a1 = xmmword_1AC51F990;
    a1[2] = MEMORY[0x1E69E7CC8];
    if (qword_1EB557DD0 != -1)
    {
      OUTLINED_FUNCTION_176();
    }

    a1[3] = qword_1EB5585C0;
  }

  OUTLINED_FUNCTION_151();
  return sub_1AC4B31CC(v6, v7, v8);
}

double sub_1AC4978E8@<D0>(_OWORD *a1@<X8>)
{
  Google_Protobuf_FieldDescriptorProto.options.getter(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  a1[1] = v3;
  return result;
}

double sub_1AC497924(uint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = a1[3];
  v5[0] = *a1;
  v5[1] = v1;
  v5[2] = v2;
  v5[3] = v3;
  sub_1AC4578F4(v5[0], v1);

  *&result = Google_Protobuf_FieldDescriptorProto.options.setter(v5).n128_u64[0];
  return result;
}

__n128 Google_Protobuf_FieldDescriptorProto.options.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_161(a1);
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = v1[8].n128_u64[1];
  sub_1AC4B3218(v1[7].n128_i64[0], v1[7].n128_u64[1], v1[8].n128_i64[0]);
  result = v7;
  v1[7] = v7;
  v1[8].n128_u64[0] = v3;
  v1[8].n128_u64[1] = v4;
  return result;
}

uint64_t sub_1AC4979F4@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = xmmword_1AC51F990;
  *(a3 + 16) = MEMORY[0x1E69E7CC8];
  if (*a1 != -1)
  {
    swift_once();
  }

  *(a3 + 24) = *a2;
}

void Google_Protobuf_FieldDescriptorProto.options.modify()
{
  OUTLINED_FUNCTION_392();
  v2 = v1;
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  v4 = v3;
  *v2 = v3;
  v3[4] = v0;
  v5 = v0[15];
  v6 = v0[16];
  v7 = v0[17];
  if (v6)
  {
    *v3 = v0[14];
    v3[1] = v5;
    v3[2] = v6;
    v3[3] = v7;
  }

  else
  {
    *v3 = xmmword_1AC51F990;
    v3[2] = MEMORY[0x1E69E7CC8];
    if (qword_1EB557DD0 != -1)
    {
      OUTLINED_FUNCTION_176();
    }

    v4[3] = qword_1EB5585C0;
  }

  v8 = OUTLINED_FUNCTION_18();
  sub_1AC4B31CC(v8, v9, v6);
  OUTLINED_FUNCTION_378();
}

void sub_1AC497B34()
{
  OUTLINED_FUNCTION_230();
  OUTLINED_FUNCTION_353(v6);
  v7 = v5[14];
  v8 = v5[15];
  v9 = v5[16];
  v10 = v5[17];
  if (v11)
  {
    v12 = OUTLINED_FUNCTION_98();
    sub_1AC4578F4(v12, v13);

    OUTLINED_FUNCTION_100();
    OUTLINED_FUNCTION_258();
    sub_1AC4B3218(v14, v15, v16);
    v5[14] = v4;
    v5[15] = v3;
    v5[16] = v2;
    v5[17] = v1;
    v17 = v0[2];
    v18 = v0[3];
    sub_1AC4513F8(*v0, v0[1]);
  }

  else
  {
    OUTLINED_FUNCTION_100();
    OUTLINED_FUNCTION_258();
    sub_1AC4B3218(v19, v20, v21);
    v5[14] = v4;
    v5[15] = v3;
    v5[16] = v2;
    v5[17] = v1;
  }

  OUTLINED_FUNCTION_229();

  free(v22);
}

Swift::Void __swiftcall Google_Protobuf_FieldDescriptorProto.clearOptions()()
{
  v1 = v0[17];
  sub_1AC4B3218(v0[14], v0[15], v0[16]);
  *(v0 + 7) = 0u;
  *(v0 + 8) = 0u;
}

_BYTE *(*Google_Protobuf_FieldDescriptorProto.proto3Optional.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 144) & 1;
  return sub_1AC497C5C;
}

uint64_t Google_Protobuf_FieldDescriptorProto.unknownFields.setter(uint64_t *a1)
{
  result = OUTLINED_FUNCTION_233(a1);
  *v2 = v1;
  v2[1] = v3;
  return result;
}

uint64_t sub_1AC497DBC@<X0>(uint64_t *a1@<X8>)
{
  result = Google_Protobuf_FieldDescriptorProto.Label.rawValue.getter();
  *a1 = result;
  return result;
}

double Google_Protobuf_FieldDescriptorProto.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_1AC51F990;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 36) = 1;
  *(a1 + 37) = 4611;
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 92) = 1;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 2;
  return result;
}

uint64_t Google_Protobuf_OneofDescriptorProto.name.getter()
{
  if (*(v0 + 24))
  {
    OUTLINED_FUNCTION_294();
  }

  else
  {
    OUTLINED_FUNCTION_103_1();
  }

  return OUTLINED_FUNCTION_44();
}

uint64_t sub_1AC497E6C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Google_Protobuf_OneofDescriptorProto.name.setter();
}

uint64_t Google_Protobuf_OneofDescriptorProto.name.setter()
{
  OUTLINED_FUNCTION_43_2();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Google_Protobuf_OneofDescriptorProto.name.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_115(a1);
  if (*(v1 + 24))
  {
    OUTLINED_FUNCTION_291();
  }

  else
  {
    OUTLINED_FUNCTION_102_1();
  }

  OUTLINED_FUNCTION_117(v2, v3);

  return OUTLINED_FUNCTION_76();
}

Swift::Void __swiftcall Google_Protobuf_OneofDescriptorProto.clearName()()
{
  v1 = *(v0 + 24);

  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
}

uint64_t Google_Protobuf_OneofDescriptorProto.options.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[3];
  v7[0] = v1[2];
  v7[1] = v2;
  v8[0] = v1[4];
  *(v8 + 14) = *(v1 + 78);
  if (*&v7[0])
  {
    v3 = v1[3];
    *a1 = v1[2];
    *(a1 + 16) = v3;
    *(a1 + 32) = v1[4];
    *(a1 + 46) = *(v1 + 78);
  }

  else
  {
    *a1 = MEMORY[0x1E69E7CC0];
    v4 = MEMORY[0x1E69E7CC8];
    *(a1 + 8) = xmmword_1AC51F990;
    *(a1 + 24) = v4;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 54) = 0;
  }

  return sub_1AC4B3394(v7, &v6, &qword_1EB5580C0, &unk_1AC520E20);
}

double sub_1AC498004(_OWORD *a1)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 14) = *(a1 + 46);
  sub_1AC4859C0(v5, &v4);
  *&result = Google_Protobuf_OneofDescriptorProto.options.setter(a1).n128_u64[0];
  return result;
}

__n128 Google_Protobuf_OneofDescriptorProto.options.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_237();
  sub_1AC4575D8(&v5, &qword_1EB5580C0, &unk_1AC520E20);
  v3 = *(a1 + 16);
  *(v1 + 32) = *a1;
  *(v1 + 48) = v3;
  *(v1 + 64) = *(a1 + 32);
  result = *(a1 + 46);
  *(v1 + 78) = result;
  return result;
}

double Google_Protobuf_OneofOptions.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  result = 0.0;
  v2 = MEMORY[0x1E69E7CC8];
  *(a1 + 8) = xmmword_1AC51F990;
  *(a1 + 24) = v2;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 54) = 0;
  return result;
}

void (*Google_Protobuf_OneofDescriptorProto.options.modify())(uint64_t *a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x188uLL);
  *(OUTLINED_FUNCTION_83_1(v2) + 384) = v0;
  v3 = OUTLINED_FUNCTION_271();
  *(v4 + 46) = v5;
  *(v4 + 16) = v6;
  *(v4 + 32) = v3;
  *v4 = v7;
  if (*v4)
  {
    v8 = v0[2];
    v9 = v0[3];
    v10 = v0[4];
    *(v1 + 110) = *(v0 + 78);
    *(v1 + 80) = v9;
    *(v1 + 96) = v10;
    *(v1 + 64) = v8;
  }

  else
  {
    *(v1 + 64) = MEMORY[0x1E69E7CC0];
    v11 = MEMORY[0x1E69E7CC8];
    *(v1 + 72) = xmmword_1AC51F990;
    *(v1 + 88) = v11;
    *(v1 + 96) = 0;
    *(v1 + 104) = 0;
    *(v1 + 112) = 0;
    *(v1 + 118) = 0;
  }

  sub_1AC4B3394(v1, v1 + 128, &qword_1EB5580C0, &unk_1AC520E20);
  return sub_1AC4981BC;
}

void sub_1AC4981BC(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = OUTLINED_FUNCTION_236();
    v4 = *(v2 + 110);
    *(v5 + 46) = v4;
    v35 = v3;
    v37 = v6;
    *v39 = v7;
    *&v39[14] = v4;
    v8 = OUTLINED_FUNCTION_271();
    *(v2 + 238) = v9;
    *(v2 + 208) = v10;
    *(v2 + 224) = v8;
    *(v2 + 192) = v11;
    sub_1AC4859C0(v12, v2 + 320);
    v13 = sub_1AC4575D8(v2 + 192, &qword_1EB5580C0, &unk_1AC520E20);
    OUTLINED_FUNCTION_267(v13, v14, v15, v16, v17, v18, v19, v20, v35, v37, *v39, *&v39[8], *&v39[16], *&v39[24], *&v39[28]);
    *(v2 + 174) = *(v2 + 110);
    v21 = OUTLINED_FUNCTION_303();
    sub_1AC4B3264(v21);
  }

  else
  {
    OUTLINED_FUNCTION_287();
    *&v40[6] = *(v2 + 110);
    v22 = OUTLINED_FUNCTION_271();
    *(v2 + 174) = v23;
    *(v2 + 144) = v24;
    *(v2 + 160) = v22;
    *(v2 + 128) = v25;
    v26 = sub_1AC4575D8(v2 + 128, &qword_1EB5580C0, &unk_1AC520E20);
    OUTLINED_FUNCTION_267(v26, v27, v28, v29, v30, v31, v32, v33, v34, v36, v38, *v40, *&v40[8], *&v40[16], *&v40[20]);
  }

  free(v2);
}

Swift::Void __swiftcall Google_Protobuf_OneofDescriptorProto.clearOptions()()
{
  OUTLINED_FUNCTION_237();
  sub_1AC4575D8(&v1, &qword_1EB5580C0, &unk_1AC520E20);
  v0[2] = 0u;
  v0[3] = 0u;
  v0[4] = 0u;
  *(v0 + 78) = 0u;
}

uint64_t Google_Protobuf_OneofDescriptorProto.unknownFields.setter(uint64_t *a1)
{
  result = OUTLINED_FUNCTION_233(a1);
  *v2 = v1;
  v2[1] = v3;
  return result;
}

double Google_Protobuf_OneofDescriptorProto.init()@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1AC51F990;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  *(a1 + 78) = 0u;
  return result;
}

uint64_t Google_Protobuf_EnumDescriptorProto.name.getter()
{
  if (*(v0 + 48))
  {
    OUTLINED_FUNCTION_340();
  }

  else
  {
    OUTLINED_FUNCTION_103_1();
  }

  return OUTLINED_FUNCTION_44();
}

uint64_t sub_1AC498398(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Google_Protobuf_EnumDescriptorProto.name.setter();
}

uint64_t Google_Protobuf_EnumDescriptorProto.name.setter()
{
  OUTLINED_FUNCTION_69();
  v3 = *(v1 + 48);

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t Google_Protobuf_EnumDescriptorProto.name.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_115(a1);
  if (*(v1 + 48))
  {
    OUTLINED_FUNCTION_339();
  }

  else
  {
    OUTLINED_FUNCTION_102_1();
  }

  OUTLINED_FUNCTION_117(v2, v3);

  return OUTLINED_FUNCTION_76();
}

Swift::Void __swiftcall Google_Protobuf_EnumDescriptorProto.clearName()()
{
  v1 = *(v0 + 48);

  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
}

uint64_t Google_Protobuf_EnumDescriptorProto.value.setter()
{
  result = OUTLINED_FUNCTION_235();
  *v1 = v0;
  return result;
}

uint64_t Google_Protobuf_EnumDescriptorProto.options.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_304(v6);
  if (v6[0])
  {
    OUTLINED_FUNCTION_330(v3, (v1 + 56));
  }

  else
  {
    *a1 = MEMORY[0x1E69E7CC0];
    *(a1 + 8) = xmmword_1AC51F990;
    *(a1 + 24) = MEMORY[0x1E69E7CC8];
    *(a1 + 32) = 514;
    *(a1 + 34) = 2;
    OUTLINED_FUNCTION_188();
  }

  return sub_1AC4B3394(v6, &v5, &qword_1EB5589B8, "R6");
}

void *sub_1AC498574(void *__src)
{
  memcpy(__dst, __src, 0x46uLL);
  sub_1AC4B3294(__dst, &v2);
  return Google_Protobuf_EnumDescriptorProto.options.setter();
}

void *Google_Protobuf_EnumDescriptorProto.options.setter()
{
  OUTLINED_FUNCTION_360();
  OUTLINED_FUNCTION_304(v2);
  sub_1AC4575D8(v4, &qword_1EB5589B8, "R6");
  return memcpy((v1 + 56), v0, 0x46uLL);
}

void Google_Protobuf_EnumOptions.init()(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 1) = xmmword_1AC51F990;
  a1[3] = MEMORY[0x1E69E7CC8];
  *(a1 + 16) = 514;
  *(a1 + 34) = 2;
  OUTLINED_FUNCTION_133(a1);
}

uint64_t Google_Protobuf_EnumDescriptorProto.options.modify()
{
  v2 = __swift_coroFrameAllocStub(0x1B8uLL);
  v3 = OUTLINED_FUNCTION_83_1(v2);
  v3[54] = v0;
  OUTLINED_FUNCTION_304(v3);
  if (*v1)
  {
    v4 = OUTLINED_FUNCTION_304((v1 + 72));
  }

  else
  {
    *(v1 + 72) = MEMORY[0x1E69E7CC0];
    *(v1 + 80) = xmmword_1AC51F990;
    *(v1 + 96) = MEMORY[0x1E69E7CC8];
    *(v1 + 104) = 514;
    *(v1 + 106) = 2;
    OUTLINED_FUNCTION_275();
  }

  OUTLINED_FUNCTION_381(v4, v5, &qword_1EB5589B8, "R6");
  return OUTLINED_FUNCTION_361();
}

void sub_1AC498708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a1;
  v9 = *(*a1 + 432);
  if (a2)
  {
    v10 = OUTLINED_FUNCTION_269((v8 + 288));
    v18 = OUTLINED_FUNCTION_246(v10, v11, v12, v13, v14, v15, v16, v17, v36, v39);
    memcpy(v18, v19, 0x46uLL);
    OUTLINED_FUNCTION_304((v8 + 216));
    sub_1AC4B3294(v8 + 288, v8 + 360);
    sub_1AC4575D8(v8 + 216, &qword_1EB5589B8, "R6");
    OUTLINED_FUNCTION_382((v9 + 56), v20, v21, v22, v23, v24, v25, v26, v37, v40);
    OUTLINED_FUNCTION_269((v8 + 144));
    sub_1AC4B32CC(v8 + 144);
  }

  else
  {
    v27 = OUTLINED_FUNCTION_246(a1, a2, a3, a4, a5, a6, a7, a8, v36, v39);
    memcpy(v27, v28, 0x46uLL);
    OUTLINED_FUNCTION_304((v8 + 144));
    sub_1AC4575D8(v8 + 144, &qword_1EB5589B8, "R6");
    OUTLINED_FUNCTION_382((v9 + 56), v29, v30, v31, v32, v33, v34, v35, v38, v41);
  }

  free(v8);
}

Swift::Void __swiftcall Google_Protobuf_EnumDescriptorProto.clearOptions()()
{
  OUTLINED_FUNCTION_304(v1);
  sub_1AC4575D8(v1, &qword_1EB5589B8, "R6");
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 118) = 0;
}

uint64_t Google_Protobuf_EnumDescriptorProto.reservedRange.setter()
{
  result = OUTLINED_FUNCTION_391();
  *(v1 + 8) = v0;
  return result;
}

uint64_t Google_Protobuf_EnumDescriptorProto.reservedName.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t Google_Protobuf_EnumDescriptorProto.unknownFields.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_1AC4513F8(*(v1 + 24), *(v1 + 32));
  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  return result;
}

uint64_t sub_1AC498950@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 20);
  v5 = *(a1 + 24);
  v6 = *(a1 + 28);
  v7 = OUTLINED_FUNCTION_161(a1);
  result = v8(v7);
  *a2 = result;
  return result;
}

double Google_Protobuf_EnumDescriptorProto.init()@<D0>(uint64_t a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = v1;
  *(a1 + 16) = v1;
  *(a1 + 24) = xmmword_1AC51F990;
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 118) = 0;
  return result;
}

uint64_t Google_Protobuf_EnumValueDescriptorProto.name.getter()
{
  if (*(v0 + 24))
  {
    OUTLINED_FUNCTION_294();
  }

  else
  {
    OUTLINED_FUNCTION_103_1();
  }

  return OUTLINED_FUNCTION_44();
}

uint64_t sub_1AC498A70(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Google_Protobuf_EnumValueDescriptorProto.name.setter();
}

uint64_t Google_Protobuf_EnumValueDescriptorProto.name.setter()
{
  OUTLINED_FUNCTION_43_2();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Google_Protobuf_EnumValueDescriptorProto.name.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_115(a1);
  if (*(v1 + 24))
  {
    OUTLINED_FUNCTION_291();
  }

  else
  {
    OUTLINED_FUNCTION_102_1();
  }

  OUTLINED_FUNCTION_117(v2, v3);

  return OUTLINED_FUNCTION_76();
}

Swift::Void __swiftcall Google_Protobuf_EnumValueDescriptorProto.clearName()()
{
  v1 = *(v0 + 24);

  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
}

uint64_t Google_Protobuf_EnumValueDescriptorProto.number.getter()
{
  if (*(v0 + 36))
  {
    return 0;
  }

  else
  {
    return *(v0 + 32);
  }
}

uint64_t *(*Google_Protobuf_EnumValueDescriptorProto.number.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  v2 = *(v1 + 32);
  if (*(v1 + 36))
  {
    v2 = 0;
  }

  *(a1 + 8) = v2;
  return sub_1AC4C6DDC;
}

uint64_t Google_Protobuf_EnumValueDescriptorProto.options.getter@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_308(v6);
  if (v6[0])
  {
    memcpy(a1, (v1 + 40), 0x71uLL);
  }

  else
  {
    *a1 = MEMORY[0x1E69E7CC0];
    *(a1 + 1) = xmmword_1AC51F990;
    a1[3] = MEMORY[0x1E69E7CC8];
    *(a1 + 32) = 2;
    OUTLINED_FUNCTION_188();
    *(a1 + 70) = v3;
    *(a1 + 9) = 0u;
    *(a1 + 11) = 0u;
    a1[13] = 1;
    *(a1 + 112) = 0;
  }

  return sub_1AC4B3394(v6, v5, &qword_1EB5589C0, &qword_1AC520E30);
}

void *sub_1AC498C78(void *__src)
{
  memcpy(__dst, __src, 0x71uLL);
  sub_1AC4B32FC(__dst, &v2);
  return Google_Protobuf_EnumValueDescriptorProto.options.setter();
}

void *Google_Protobuf_EnumValueDescriptorProto.options.setter()
{
  OUTLINED_FUNCTION_360();
  OUTLINED_FUNCTION_308(v2);
  sub_1AC4575D8(v4, &qword_1EB5589C0, &qword_1AC520E30);
  return memcpy((v1 + 40), v0, 0x71uLL);
}

double Google_Protobuf_EnumValueOptions.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = xmmword_1AC51F990;
  *(a1 + 24) = MEMORY[0x1E69E7CC8];
  *(a1 + 32) = 2;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  *(a1 + 62) = 0;
  *(a1 + 70) = 2;
  result = 0.0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 1;
  *(a1 + 112) = 0;
  return result;
}

void (*Google_Protobuf_EnumValueDescriptorProto.options.modify())(uint64_t *a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x2D8uLL);
  v3 = OUTLINED_FUNCTION_83_1(v2);
  v3[90] = v0;
  OUTLINED_FUNCTION_308(v3);
  if (*v1)
  {
    OUTLINED_FUNCTION_308((v1 + 120));
  }

  else
  {
    *(v1 + 120) = MEMORY[0x1E69E7CC0];
    *(v1 + 128) = xmmword_1AC51F990;
    *(v1 + 144) = MEMORY[0x1E69E7CC8];
    *(v1 + 152) = 2;
    *(v1 + 168) = 0;
    *(v1 + 176) = 0;
    *(v1 + 160) = 0;
    *(v1 + 182) = 0;
    *(v1 + 190) = 2;
    *(v1 + 192) = 0u;
    *(v1 + 208) = 0u;
    *(v1 + 224) = 1;
    *(v1 + 232) = 0;
  }

  sub_1AC4B3394(v1, v1 + 240, &qword_1EB5589C0, &qword_1AC520E30);
  return sub_1AC498E58;
}

void sub_1AC498E58(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 720);
  if (a2)
  {
    OUTLINED_FUNCTION_389((v2 + 480));
    OUTLINED_FUNCTION_389(__src);
    OUTLINED_FUNCTION_308((v2 + 360));
    sub_1AC4B32FC(v2 + 480, v2 + 600);
    sub_1AC4575D8(v2 + 360, &qword_1EB5589C0, &qword_1AC520E30);
    memcpy((v3 + 40), __src, 0x71uLL);
    OUTLINED_FUNCTION_389((v2 + 240));
    sub_1AC4B3334(v2 + 240);
  }

  else
  {
    OUTLINED_FUNCTION_389(__src);
    OUTLINED_FUNCTION_308((v2 + 240));
    sub_1AC4575D8(v2 + 240, &qword_1EB5589C0, &qword_1AC520E30);
    memcpy((v3 + 40), __src, 0x71uLL);
  }

  free(v2);
}

Swift::Void __swiftcall Google_Protobuf_EnumValueDescriptorProto.clearOptions()()
{
  OUTLINED_FUNCTION_308(v2);
  sub_1AC4575D8(v2, &qword_1EB5589C0, &qword_1AC520E30);
  *&v1 = OUTLINED_FUNCTION_350();
  *(v0 + 88) = v1;
  *(v0 + 104) = v1;
  *(v0 + 120) = v1;
  *(v0 + 136) = v1;
  *(v0 + 152) = 0;
}

uint64_t Google_Protobuf_EnumValueDescriptorProto.unknownFields.setter(uint64_t *a1)
{
  result = OUTLINED_FUNCTION_233(a1);
  *v2 = v1;
  v2[1] = v3;
  return result;
}

double Google_Protobuf_EnumValueDescriptorProto.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_1AC51F990;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 36) = 1;
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  return result;
}

uint64_t Google_Protobuf_ServiceDescriptorProto.name.getter()
{
  if (*(v0 + 32))
  {
    OUTLINED_FUNCTION_245();
  }

  else
  {
    OUTLINED_FUNCTION_103_1();
  }

  return OUTLINED_FUNCTION_44();
}

uint64_t sub_1AC49906C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Google_Protobuf_ServiceDescriptorProto.name.setter();
}

uint64_t Google_Protobuf_ServiceDescriptorProto.name.setter()
{
  OUTLINED_FUNCTION_69();
  v3 = *(v1 + 32);

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t Google_Protobuf_ServiceDescriptorProto.name.modify(uint64_t a1)
{
  if (OUTLINED_FUNCTION_114_0(a1))
  {
    OUTLINED_FUNCTION_244();
  }

  else
  {
    OUTLINED_FUNCTION_102_1();
  }

  OUTLINED_FUNCTION_117(v1, v2);

  return OUTLINED_FUNCTION_76();
}

Swift::Void __swiftcall Google_Protobuf_ServiceDescriptorProto.clearName()()
{
  v1 = *(v0 + 32);

  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
}

uint64_t Google_Protobuf_ServiceDescriptorProto.method.setter()
{
  result = OUTLINED_FUNCTION_235();
  *v1 = v0;
  return result;
}

uint64_t Google_Protobuf_ServiceDescriptorProto.options.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v6[0] = *(v1 + 40);
  v6[1] = v2;
  v7[0] = *(v1 + 72);
  *(v7 + 15) = *(v1 + 87);
  if (*&v6[0])
  {
    v3 = *(v1 + 56);
    *a1 = *(v1 + 40);
    *(a1 + 16) = v3;
    *(a1 + 32) = *(v1 + 72);
    *(a1 + 47) = *(v1 + 87);
  }

  else
  {
    *a1 = MEMORY[0x1E69E7CC0];
    *(a1 + 8) = xmmword_1AC51F990;
    *(a1 + 24) = MEMORY[0x1E69E7CC8];
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 54) = 0;
    *(a1 + 62) = 2;
  }

  return sub_1AC4B3394(v6, &v5, &qword_1EB5580B0, &qword_1AC5203B8);
}

double sub_1AC49924C(_OWORD *a1)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 15) = *(a1 + 47);
  sub_1AC485804(v5, &v4);
  *&result = Google_Protobuf_ServiceDescriptorProto.options.setter(a1).n128_u64[0];
  return result;
}

__n128 Google_Protobuf_ServiceDescriptorProto.options.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_225();
  sub_1AC4575D8(&v5, &qword_1EB5580B0, &qword_1AC5203B8);
  v3 = *(a1 + 16);
  *(v1 + 40) = *a1;
  *(v1 + 56) = v3;
  *(v1 + 72) = *(a1 + 32);
  result = *(a1 + 47);
  *(v1 + 87) = result;
  return result;
}

double Google_Protobuf_ServiceOptions.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  result = 0.0;
  *(a1 + 8) = xmmword_1AC51F990;
  *(a1 + 24) = MEMORY[0x1E69E7CC8];
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 54) = 0;
  *(a1 + 62) = 2;
  return result;
}

void (*Google_Protobuf_ServiceDescriptorProto.options.modify())(uint64_t *a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x188uLL);
  *(OUTLINED_FUNCTION_83_1(v2) + 384) = v0;
  v3 = OUTLINED_FUNCTION_195();
  *(v4 + 47) = v5;
  *(v4 + 16) = v3;
  *(v4 + 32) = v6;
  *v4 = v7;
  if (*v4)
  {
    v8 = *(v0 + 40);
    v9 = *(v0 + 56);
    v10 = *(v0 + 72);
    *(v1 + 111) = *(v0 + 87);
    *(v1 + 80) = v9;
    *(v1 + 96) = v10;
    *(v1 + 64) = v8;
  }

  else
  {
    *(v1 + 64) = MEMORY[0x1E69E7CC0];
    *(v1 + 72) = xmmword_1AC51F990;
    *(v1 + 88) = MEMORY[0x1E69E7CC8];
    *(v1 + 96) = 0;
    *(v1 + 104) = 0;
    *(v1 + 112) = 0;
    *(v1 + 118) = 0;
    *(v1 + 126) = 2;
  }

  sub_1AC4B3394(v1, v1 + 128, &qword_1EB5580B0, &qword_1AC5203B8);
  return sub_1AC49941C;
}

void sub_1AC49941C(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = OUTLINED_FUNCTION_236();
    v4 = *(v2 + 111);
    *(v5 + 47) = v4;
    v35 = v3;
    v37 = v6;
    *v39 = v7;
    *&v39[15] = v4;
    v8 = OUTLINED_FUNCTION_195();
    *(v2 + 239) = v9;
    *(v2 + 208) = v8;
    *(v2 + 224) = v10;
    *(v2 + 192) = v11;
    sub_1AC485804(v12, v2 + 320);
    v13 = sub_1AC4575D8(v2 + 192, &qword_1EB5580B0, &qword_1AC5203B8);
    OUTLINED_FUNCTION_228(v13, v14, v15, v16, v17, v18, v19, v20, v35, v37, *v39, *&v39[8], *&v39[16], *&v39[24], *&v39[28], v39[30]);
    *(v2 + 175) = *(v2 + 111);
    v21 = OUTLINED_FUNCTION_303();
    sub_1AC4B3364(v21);
  }

  else
  {
    OUTLINED_FUNCTION_287();
    *&v40[7] = *(v2 + 111);
    v22 = OUTLINED_FUNCTION_195();
    *(v2 + 175) = v23;
    *(v2 + 144) = v22;
    *(v2 + 160) = v24;
    *(v2 + 128) = v25;
    v26 = sub_1AC4575D8(v2 + 128, &qword_1EB5580B0, &qword_1AC5203B8);
    OUTLINED_FUNCTION_228(v26, v27, v28, v29, v30, v31, v32, v33, v34, v36, v38, *v40, *&v40[8], *&v40[16], *&v40[20], v40[22]);
  }

  free(v2);
}

Swift::Void __swiftcall Google_Protobuf_ServiceDescriptorProto.clearOptions()()
{
  OUTLINED_FUNCTION_225();
  sub_1AC4575D8(&v2, &qword_1EB5580B0, &qword_1AC5203B8);
  *&v1 = OUTLINED_FUNCTION_350();
  *(v0 + 87) = v1;
}

uint64_t Google_Protobuf_ServiceDescriptorProto.unknownFields.setter(uint64_t *a1)
{
  result = OUTLINED_FUNCTION_277(a1);
  *(v2 + 8) = v1;
  *(v2 + 16) = v3;
  return result;
}

double Google_Protobuf_ServiceDescriptorProto.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = xmmword_1AC51F990;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 87) = 0u;
  return result;
}

uint64_t Google_Protobuf_MethodDescriptorProto.name.getter()
{
  if (*(v0 + 24))
  {
    OUTLINED_FUNCTION_294();
  }

  else
  {
    OUTLINED_FUNCTION_103_1();
  }

  return OUTLINED_FUNCTION_44();
}

uint64_t sub_1AC4995FC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Google_Protobuf_MethodDescriptorProto.name.setter();
}

uint64_t Google_Protobuf_MethodDescriptorProto.name.setter()
{
  OUTLINED_FUNCTION_43_2();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Google_Protobuf_MethodDescriptorProto.name.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_115(a1);
  if (*(v1 + 24))
  {
    OUTLINED_FUNCTION_291();
  }

  else
  {
    OUTLINED_FUNCTION_102_1();
  }

  OUTLINED_FUNCTION_117(v2, v3);

  return OUTLINED_FUNCTION_76();
}

Swift::Void __swiftcall Google_Protobuf_MethodDescriptorProto.clearName()()
{
  v1 = *(v0 + 24);

  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
}

uint64_t Google_Protobuf_MethodDescriptorProto.inputType.getter()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 32);
    v2 = *(v0 + 40);
  }

  else
  {
    OUTLINED_FUNCTION_103_1();
  }

  return OUTLINED_FUNCTION_44();
}

uint64_t sub_1AC499730(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Google_Protobuf_MethodDescriptorProto.inputType.setter();
}

uint64_t Google_Protobuf_MethodDescriptorProto.inputType.setter()
{
  OUTLINED_FUNCTION_69();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Google_Protobuf_MethodDescriptorProto.inputType.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_115(a1);
  v2 = *(v1 + 40);
  if (v2)
  {
    v3 = *(v1 + 32);
    v4 = *(v1 + 40);
  }

  else
  {
    OUTLINED_FUNCTION_102_1();
  }

  OUTLINED_FUNCTION_117(v2, v3);

  return OUTLINED_FUNCTION_76();
}

uint64_t sub_1AC499800(uint64_t *a1)
{
  OUTLINED_FUNCTION_165(a1);
  if (v4)
  {

    *(v3 + 32) = v2;
    *(v3 + 40) = v1;
  }

  else
  {

    *(v3 + 32) = v2;
    *(v3 + 40) = v1;
  }

  return result;
}

Swift::Void __swiftcall Google_Protobuf_MethodDescriptorProto.clearInputType()()
{
  v1 = *(v0 + 40);

  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
}

uint64_t Google_Protobuf_MethodDescriptorProto.outputType.getter()
{
  if (*(v0 + 56))
  {
    v1 = *(v0 + 48);
    v2 = *(v0 + 56);
  }

  else
  {
    OUTLINED_FUNCTION_103_1();
  }

  return OUTLINED_FUNCTION_44();
}

uint64_t sub_1AC4998DC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Google_Protobuf_MethodDescriptorProto.outputType.setter();
}

uint64_t Google_Protobuf_MethodDescriptorProto.outputType.setter()
{
  OUTLINED_FUNCTION_69();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t Google_Protobuf_MethodDescriptorProto.outputType.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_115(a1);
  v2 = *(v1 + 56);
  if (v2)
  {
    v3 = *(v1 + 48);
    v4 = *(v1 + 56);
  }

  else
  {
    OUTLINED_FUNCTION_102_1();
  }

  OUTLINED_FUNCTION_117(v2, v3);

  return OUTLINED_FUNCTION_76();
}

uint64_t sub_1AC4999AC(uint64_t *a1)
{
  OUTLINED_FUNCTION_165(a1);
  if (v4)
  {

    *(v3 + 48) = v2;
    *(v3 + 56) = v1;
  }

  else
  {

    *(v3 + 48) = v2;
    *(v3 + 56) = v1;
  }

  return result;
}

Swift::Void __swiftcall Google_Protobuf_MethodDescriptorProto.clearOutputType()()
{
  v1 = *(v0 + 56);

  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
}

uint64_t Google_Protobuf_MethodDescriptorProto.options.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_307(v6);
  if (v6[0])
  {
    OUTLINED_FUNCTION_330(v3, (v1 + 64));
  }

  else
  {
    *a1 = MEMORY[0x1E69E7CC0];
    *(a1 + 8) = xmmword_1AC51F990;
    *(a1 + 24) = MEMORY[0x1E69E7CC8];
    *(a1 + 32) = 770;
    OUTLINED_FUNCTION_188();
  }

  return sub_1AC4B3394(v6, &v5, &qword_1EB5580B8, &qword_1AC5203C0);
}

void *sub_1AC499ADC(void *__src)
{
  memcpy(__dst, __src, 0x46uLL);
  sub_1AC4B33F8(__dst, &v2);
  return Google_Protobuf_MethodDescriptorProto.options.setter();
}

void *Google_Protobuf_MethodDescriptorProto.options.setter()
{
  OUTLINED_FUNCTION_360();
  OUTLINED_FUNCTION_307(v2);
  sub_1AC4575D8(v4, &qword_1EB5580B8, &qword_1AC5203C0);
  return memcpy((v1 + 64), v0, 0x46uLL);
}

void Google_Protobuf_MethodOptions.init()(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 1) = xmmword_1AC51F990;
  a1[3] = MEMORY[0x1E69E7CC8];
  *(a1 + 16) = 770;
  OUTLINED_FUNCTION_133(a1);
}

uint64_t Google_Protobuf_MethodDescriptorProto.options.modify()
{
  v2 = __swift_coroFrameAllocStub(0x1B8uLL);
  v3 = OUTLINED_FUNCTION_83_1(v2);
  v3[54] = v0;
  OUTLINED_FUNCTION_307(v3);
  if (*v1)
  {
    v4 = OUTLINED_FUNCTION_307((v1 + 72));
  }

  else
  {
    *(v1 + 72) = MEMORY[0x1E69E7CC0];
    *(v1 + 80) = xmmword_1AC51F990;
    *(v1 + 96) = MEMORY[0x1E69E7CC8];
    *(v1 + 104) = 770;
    OUTLINED_FUNCTION_275();
  }

  OUTLINED_FUNCTION_381(v4, v5, &qword_1EB5580B8, &qword_1AC5203C0);
  return OUTLINED_FUNCTION_361();
}

void sub_1AC499C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a1;
  v9 = *(*a1 + 432);
  if (a2)
  {
    v10 = OUTLINED_FUNCTION_269((v8 + 288));
    v18 = OUTLINED_FUNCTION_246(v10, v11, v12, v13, v14, v15, v16, v17, v36, v39);
    memcpy(v18, v19, 0x46uLL);
    OUTLINED_FUNCTION_307((v8 + 216));
    sub_1AC4B33F8(v8 + 288, v8 + 360);
    sub_1AC4575D8(v8 + 216, &qword_1EB5580B8, &qword_1AC5203C0);
    OUTLINED_FUNCTION_382((v9 + 64), v20, v21, v22, v23, v24, v25, v26, v37, v40);
    OUTLINED_FUNCTION_269((v8 + 144));
    sub_1AC4B3430(v8 + 144);
  }

  else
  {
    v27 = OUTLINED_FUNCTION_246(a1, a2, a3, a4, a5, a6, a7, a8, v36, v39);
    memcpy(v27, v28, 0x46uLL);
    OUTLINED_FUNCTION_307((v8 + 144));
    sub_1AC4575D8(v8 + 144, &qword_1EB5580B8, &qword_1AC5203C0);
    OUTLINED_FUNCTION_382((v9 + 64), v29, v30, v31, v32, v33, v34, v35, v38, v41);
  }

  free(v8);
}

Swift::Void __swiftcall Google_Protobuf_MethodDescriptorProto.clearOptions()()
{
  OUTLINED_FUNCTION_307(v1);
  sub_1AC4575D8(v1, &qword_1EB5580B8, &qword_1AC5203C0);
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 126) = 0;
}

_BYTE *(*Google_Protobuf_MethodDescriptorProto.clientStreaming.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 134) & 1;
  return sub_1AC499DD4;
}

_BYTE *(*Google_Protobuf_MethodDescriptorProto.serverStreaming.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 135) & 1;
  return sub_1AC499E40;
}

uint64_t Google_Protobuf_MethodDescriptorProto.unknownFields.setter(uint64_t *a1)
{
  result = OUTLINED_FUNCTION_233(a1);
  *v2 = v1;
  v2[1] = v3;
  return result;
}

double Google_Protobuf_MethodDescriptorProto.init()@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1AC51F990;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 126) = 0;
  *(a1 + 134) = 514;
  return result;
}

uint64_t Google_Protobuf_FileOptions.javaPackage.getter()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_22_5();
  swift_beginAccess();
  if (*(v1 + 24))
  {
    v2 = *(v1 + 16);
  }

  else
  {
    OUTLINED_FUNCTION_103_1();
  }

  return OUTLINED_FUNCTION_44();
}

uint64_t sub_1AC499F40(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Google_Protobuf_FileOptions.javaPackage.setter();
}

uint64_t Google_Protobuf_FileOptions.javaPackage.setter()
{
  OUTLINED_FUNCTION_43_2();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v1 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    OUTLINED_FUNCTION_204();
    v5 = OUTLINED_FUNCTION_0_1();
    v6 = sub_1AC4AEFFC(v5);
    OUTLINED_FUNCTION_158(v6);
  }

  OUTLINED_FUNCTION_75_1();
  v7 = *(v4 + 24);
  *(v4 + 16) = v2;
  *(v4 + 24) = v0;
}

uint64_t Google_Protobuf_FileOptions.javaPackage.modify()
{
  v2 = OUTLINED_FUNCTION_167();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_30_2(v3);
  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  if (*(v0 + 24))
  {
    v4 = *(v0 + 16);
    v5 = *(v0 + 24);
  }

  else
  {
    OUTLINED_FUNCTION_102_1();
  }

  *(v1 + 24) = v4;
  *(v1 + 32) = v5;

  return OUTLINED_FUNCTION_163();
}

BOOL Google_Protobuf_FileOptions.hasJavaPackage.getter()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_22_5();
  swift_beginAccess();
  return *(v1 + 24) != 0;
}

Swift::Void __swiftcall Google_Protobuf_FileOptions.clearJavaPackage()()
{
  v1 = OUTLINED_FUNCTION_214();
  v2 = *(v0 + 24);
  if ((v1 & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    OUTLINED_FUNCTION_204();
    v3 = OUTLINED_FUNCTION_86_1();
    v4 = sub_1AC4AEFFC(v3);
    OUTLINED_FUNCTION_99_1(v4);
  }

  OUTLINED_FUNCTION_75_1();
  v5 = *(v2 + 24);
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
}

uint64_t Google_Protobuf_FileOptions.javaOuterClassname.getter()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_22_5();
  swift_beginAccess();
  if (*(v1 + 40))
  {
    v2 = *(v1 + 32);
  }

  else
  {
    OUTLINED_FUNCTION_103_1();
  }

  return OUTLINED_FUNCTION_44();
}

uint64_t sub_1AC49A17C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Google_Protobuf_FileOptions.javaOuterClassname.setter();
}

uint64_t Google_Protobuf_FileOptions.javaOuterClassname.setter()
{
  OUTLINED_FUNCTION_43_2();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v1 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    OUTLINED_FUNCTION_204();
    v5 = OUTLINED_FUNCTION_0_1();
    v6 = sub_1AC4AEFFC(v5);
    OUTLINED_FUNCTION_158(v6);
  }

  OUTLINED_FUNCTION_75_1();
  v7 = *(v4 + 40);
  *(v4 + 32) = v2;
  *(v4 + 40) = v0;
}

uint64_t Google_Protobuf_FileOptions.javaOuterClassname.modify()
{
  v2 = OUTLINED_FUNCTION_167();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_30_2(v3);
  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  if (*(v0 + 40))
  {
    v4 = *(v0 + 32);
    v5 = *(v0 + 40);
  }

  else
  {
    OUTLINED_FUNCTION_102_1();
  }

  *(v1 + 24) = v4;
  *(v1 + 32) = v5;

  return OUTLINED_FUNCTION_163();
}

BOOL Google_Protobuf_FileOptions.hasJavaOuterClassname.getter()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_22_5();
  swift_beginAccess();
  return *(v1 + 40) != 0;
}

Swift::Void __swiftcall Google_Protobuf_FileOptions.clearJavaOuterClassname()()
{
  v1 = OUTLINED_FUNCTION_214();
  v2 = *(v0 + 24);
  if ((v1 & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    OUTLINED_FUNCTION_204();
    v3 = OUTLINED_FUNCTION_86_1();
    v4 = sub_1AC4AEFFC(v3);
    OUTLINED_FUNCTION_99_1(v4);
  }

  OUTLINED_FUNCTION_75_1();
  v5 = *(v2 + 40);
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
}

uint64_t Google_Protobuf_FileOptions.javaMultipleFiles.getter()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_22_5();
  swift_beginAccess();
  return *(v1 + 48) & 1;
}

uint64_t Google_Protobuf_FileOptions.javaMultipleFiles.setter()
{
  v2 = OUTLINED_FUNCTION_127();
  v3 = *(v0 + 24);
  if ((v2 & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    OUTLINED_FUNCTION_204();
    v4 = OUTLINED_FUNCTION_86_1();
    v5 = sub_1AC4AEFFC(v4);
    OUTLINED_FUNCTION_157(v5);
  }

  result = OUTLINED_FUNCTION_75_1();
  *(v3 + 48) = v1 & 1;
  return result;
}

uint64_t Google_Protobuf_FileOptions.javaMultipleFiles.modify()
{
  v1 = OUTLINED_FUNCTION_136();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_5(v2);
  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  OUTLINED_FUNCTION_155(*(v0 + 48));
  return OUTLINED_FUNCTION_106_1();
}

void sub_1AC49A464(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_36_2(a1);
  v5 = *(v2 + 24);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_135();
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    OUTLINED_FUNCTION_204();
    v6 = OUTLINED_FUNCTION_0_1();
    v7 = sub_1AC4AEFFC(v6);
    OUTLINED_FUNCTION_137(v7);
  }

  OUTLINED_FUNCTION_112_0();
  *(v5 + 48) = v3;

  free(v1);
}

BOOL Google_Protobuf_FileOptions.hasJavaMultipleFiles.getter()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_22_5();
  swift_beginAccess();
  return *(v1 + 48) != 2;
}

Swift::Void __swiftcall Google_Protobuf_FileOptions.clearJavaMultipleFiles()()
{
  v1 = OUTLINED_FUNCTION_214();
  v2 = *(v0 + 24);
  if ((v1 & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    OUTLINED_FUNCTION_204();
    v3 = OUTLINED_FUNCTION_86_1();
    v4 = sub_1AC4AEFFC(v3);
    OUTLINED_FUNCTION_99_1(v4);
  }

  OUTLINED_FUNCTION_75_1();
  *(v2 + 48) = 2;
}

uint64_t Google_Protobuf_FileOptions.javaGenerateEqualsAndHash.getter()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_22_5();
  swift_beginAccess();
  return *(v1 + 49) & 1;
}

uint64_t Google_Protobuf_FileOptions.javaGenerateEqualsAndHash.setter()
{
  v2 = OUTLINED_FUNCTION_127();
  v3 = *(v0 + 24);
  if ((v2 & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    OUTLINED_FUNCTION_204();
    v4 = OUTLINED_FUNCTION_86_1();
    v5 = sub_1AC4AEFFC(v4);
    OUTLINED_FUNCTION_157(v5);
  }

  result = OUTLINED_FUNCTION_75_1();
  *(v3 + 49) = v1 & 1;
  return result;
}

uint64_t Google_Protobuf_FileOptions.javaGenerateEqualsAndHash.modify()
{
  v1 = OUTLINED_FUNCTION_136();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_5(v2);
  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  OUTLINED_FUNCTION_155(*(v0 + 49));
  return OUTLINED_FUNCTION_106_1();
}

void sub_1AC49A684(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_36_2(a1);
  v5 = *(v2 + 24);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_135();
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    OUTLINED_FUNCTION_204();
    v6 = OUTLINED_FUNCTION_0_1();
    v7 = sub_1AC4AEFFC(v6);
    OUTLINED_FUNCTION_137(v7);
  }

  OUTLINED_FUNCTION_112_0();
  *(v5 + 49) = v3;

  free(v1);
}

BOOL Google_Protobuf_FileOptions.hasJavaGenerateEqualsAndHash.getter()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_22_5();
  swift_beginAccess();
  return *(v1 + 49) != 2;
}

Swift::Void __swiftcall Google_Protobuf_FileOptions.clearJavaGenerateEqualsAndHash()()
{
  v1 = OUTLINED_FUNCTION_214();
  v2 = *(v0 + 24);
  if ((v1 & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    OUTLINED_FUNCTION_204();
    v3 = OUTLINED_FUNCTION_86_1();
    v4 = sub_1AC4AEFFC(v3);
    OUTLINED_FUNCTION_99_1(v4);
  }

  OUTLINED_FUNCTION_75_1();
  *(v2 + 49) = 2;
}

uint64_t Google_Protobuf_FileOptions.javaStringCheckUtf8.getter()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_22_5();
  swift_beginAccess();
  return *(v1 + 50) & 1;
}

uint64_t Google_Protobuf_FileOptions.javaStringCheckUtf8.setter()
{
  v2 = OUTLINED_FUNCTION_127();
  v3 = *(v0 + 24);
  if ((v2 & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    OUTLINED_FUNCTION_204();
    v4 = OUTLINED_FUNCTION_86_1();
    v5 = sub_1AC4AEFFC(v4);
    OUTLINED_FUNCTION_157(v5);
  }

  result = OUTLINED_FUNCTION_75_1();
  *(v3 + 50) = v1 & 1;
  return result;
}

uint64_t Google_Protobuf_FileOptions.javaStringCheckUtf8.modify()
{
  v1 = OUTLINED_FUNCTION_136();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_5(v2);
  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  OUTLINED_FUNCTION_155(*(v0 + 50));
  return OUTLINED_FUNCTION_106_1();
}

void sub_1AC49A8A4(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_36_2(a1);
  v5 = *(v2 + 24);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_135();
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    OUTLINED_FUNCTION_204();
    v6 = OUTLINED_FUNCTION_0_1();
    v7 = sub_1AC4AEFFC(v6);
    OUTLINED_FUNCTION_137(v7);
  }

  OUTLINED_FUNCTION_112_0();
  *(v5 + 50) = v3;

  free(v1);
}

BOOL Google_Protobuf_FileOptions.hasJavaStringCheckUtf8.getter()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_22_5();
  swift_beginAccess();
  return *(v1 + 50) != 2;
}

Swift::Void __swiftcall Google_Protobuf_FileOptions.clearJavaStringCheckUtf8()()
{
  v1 = OUTLINED_FUNCTION_214();
  v2 = *(v0 + 24);
  if ((v1 & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    OUTLINED_FUNCTION_204();
    v3 = OUTLINED_FUNCTION_86_1();
    v4 = sub_1AC4AEFFC(v3);
    OUTLINED_FUNCTION_99_1(v4);
  }

  OUTLINED_FUNCTION_75_1();
  *(v2 + 50) = 2;
}

void Google_Protobuf_FileOptions.optimizeFor.getter()
{
  OUTLINED_FUNCTION_227();
  OUTLINED_FUNCTION_22_5();
  swift_beginAccess();
  OUTLINED_FUNCTION_178(*(v0 + 51));
}

uint64_t Google_Protobuf_FileOptions.optimizeFor.setter(unsigned __int8 *a1)
{
  v3 = OUTLINED_FUNCTION_253(a1);
  v4 = *(v1 + 24);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    OUTLINED_FUNCTION_204();
    v5 = OUTLINED_FUNCTION_86_1();
    v6 = sub_1AC4AEFFC(v5);
    OUTLINED_FUNCTION_99_1(v6);
  }

  result = OUTLINED_FUNCTION_75_1();
  *(v4 + 51) = v2;
  return result;
}

uint64_t Google_Protobuf_FileOptions.optimizeFor.modify()
{
  v1 = OUTLINED_FUNCTION_136();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_5(v2);
  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  OUTLINED_FUNCTION_177(*(v0 + 51));
  return OUTLINED_FUNCTION_106_1();
}

void sub_1AC49AAF8(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_96_1(a1);
  v5 = *(v2 + 24);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_135();
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    OUTLINED_FUNCTION_204();
    v6 = OUTLINED_FUNCTION_0_1();
    v7 = sub_1AC4AEFFC(v6);
    OUTLINED_FUNCTION_137(v7);
  }

  OUTLINED_FUNCTION_112_0();
  *(v5 + 51) = v3;

  free(v1);
}

BOOL Google_Protobuf_FileOptions.hasOptimizeFor.getter()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_22_5();
  swift_beginAccess();
  return *(v1 + 51) != 3;
}

Swift::Void __swiftcall Google_Protobuf_FileOptions.clearOptimizeFor()()
{
  v1 = OUTLINED_FUNCTION_214();
  v2 = *(v0 + 24);
  if ((v1 & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    OUTLINED_FUNCTION_204();
    v3 = OUTLINED_FUNCTION_86_1();
    v4 = sub_1AC4AEFFC(v3);
    OUTLINED_FUNCTION_99_1(v4);
  }

  OUTLINED_FUNCTION_75_1();
  *(v2 + 51) = 3;
}

uint64_t Google_Protobuf_FileOptions.goPackage.getter()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_22_5();
  swift_beginAccess();
  if (*(v1 + 64))
  {
    v2 = *(v1 + 56);
  }

  else
  {
    OUTLINED_FUNCTION_103_1();
  }

  return OUTLINED_FUNCTION_44();
}

uint64_t sub_1AC49AC6C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Google_Protobuf_FileOptions.goPackage.setter();
}

uint64_t Google_Protobuf_FileOptions.goPackage.setter()
{
  OUTLINED_FUNCTION_43_2();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v1 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    OUTLINED_FUNCTION_204();
    v5 = OUTLINED_FUNCTION_0_1();
    v6 = sub_1AC4AEFFC(v5);
    OUTLINED_FUNCTION_158(v6);
  }

  OUTLINED_FUNCTION_75_1();
  v7 = *(v4 + 64);
  *(v4 + 56) = v2;
  *(v4 + 64) = v0;
}

uint64_t Google_Protobuf_FileOptions.goPackage.modify()
{
  v2 = OUTLINED_FUNCTION_167();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_30_2(v3);
  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  if (*(v0 + 64))
  {
    v4 = *(v0 + 56);
    v5 = *(v0 + 64);
  }

  else
  {
    OUTLINED_FUNCTION_102_1();
  }

  *(v1 + 24) = v4;
  *(v1 + 32) = v5;

  return OUTLINED_FUNCTION_163();
}

BOOL Google_Protobuf_FileOptions.hasGoPackage.getter()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_22_5();
  swift_beginAccess();
  return *(v1 + 64) != 0;
}

Swift::Void __swiftcall Google_Protobuf_FileOptions.clearGoPackage()()
{
  v1 = OUTLINED_FUNCTION_214();
  v2 = *(v0 + 24);
  if ((v1 & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    OUTLINED_FUNCTION_204();
    v3 = OUTLINED_FUNCTION_86_1();
    v4 = sub_1AC4AEFFC(v3);
    OUTLINED_FUNCTION_99_1(v4);
  }

  OUTLINED_FUNCTION_75_1();
  v5 = *(v2 + 64);
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
}

uint64_t Google_Protobuf_FileOptions.ccGenericServices.getter()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_22_5();
  swift_beginAccess();
  return *(v1 + 72) & 1;
}

uint64_t Google_Protobuf_FileOptions.ccGenericServices.setter()
{
  v2 = OUTLINED_FUNCTION_127();
  v3 = *(v0 + 24);
  if ((v2 & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    OUTLINED_FUNCTION_204();
    v4 = OUTLINED_FUNCTION_86_1();
    v5 = sub_1AC4AEFFC(v4);
    OUTLINED_FUNCTION_157(v5);
  }

  result = OUTLINED_FUNCTION_75_1();
  *(v3 + 72) = v1 & 1;
  return result;
}

uint64_t Google_Protobuf_FileOptions.ccGenericServices.modify()
{
  v1 = OUTLINED_FUNCTION_136();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_5(v2);
  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  OUTLINED_FUNCTION_155(*(v0 + 72));
  return OUTLINED_FUNCTION_106_1();
}

void sub_1AC49AF54(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_36_2(a1);
  v5 = *(v2 + 24);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_135();
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    OUTLINED_FUNCTION_204();
    v6 = OUTLINED_FUNCTION_0_1();
    v7 = sub_1AC4AEFFC(v6);
    OUTLINED_FUNCTION_137(v7);
  }

  OUTLINED_FUNCTION_112_0();
  *(v5 + 72) = v3;

  free(v1);
}

BOOL Google_Protobuf_FileOptions.hasCcGenericServices.getter()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_22_5();
  swift_beginAccess();
  return *(v1 + 72) != 2;
}

Swift::Void __swiftcall Google_Protobuf_FileOptions.clearCcGenericServices()()
{
  v1 = OUTLINED_FUNCTION_214();
  v2 = *(v0 + 24);
  if ((v1 & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    OUTLINED_FUNCTION_204();
    v3 = OUTLINED_FUNCTION_86_1();
    v4 = sub_1AC4AEFFC(v3);
    OUTLINED_FUNCTION_99_1(v4);
  }

  OUTLINED_FUNCTION_75_1();
  *(v2 + 72) = 2;
}

uint64_t Google_Protobuf_FileOptions.javaGenericServices.getter()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_22_5();
  swift_beginAccess();
  return *(v1 + 73) & 1;
}

uint64_t Google_Protobuf_FileOptions.javaGenericServices.setter()
{
  v2 = OUTLINED_FUNCTION_127();
  v3 = *(v0 + 24);
  if ((v2 & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    OUTLINED_FUNCTION_204();
    v4 = OUTLINED_FUNCTION_86_1();
    v5 = sub_1AC4AEFFC(v4);
    OUTLINED_FUNCTION_157(v5);
  }

  result = OUTLINED_FUNCTION_75_1();
  *(v3 + 73) = v1 & 1;
  return result;
}

uint64_t Google_Protobuf_FileOptions.javaGenericServices.modify()
{
  v1 = OUTLINED_FUNCTION_136();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_5(v2);
  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  OUTLINED_FUNCTION_155(*(v0 + 73));
  return OUTLINED_FUNCTION_106_1();
}

void sub_1AC49B174(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_36_2(a1);
  v5 = *(v2 + 24);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_135();
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    OUTLINED_FUNCTION_204();
    v6 = OUTLINED_FUNCTION_0_1();
    v7 = sub_1AC4AEFFC(v6);
    OUTLINED_FUNCTION_137(v7);
  }

  OUTLINED_FUNCTION_112_0();
  *(v5 + 73) = v3;

  free(v1);
}

BOOL Google_Protobuf_FileOptions.hasJavaGenericServices.getter()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_22_5();
  swift_beginAccess();
  return *(v1 + 73) != 2;
}

Swift::Void __swiftcall Google_Protobuf_FileOptions.clearJavaGenericServices()()
{
  v1 = OUTLINED_FUNCTION_214();
  v2 = *(v0 + 24);
  if ((v1 & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    OUTLINED_FUNCTION_204();
    v3 = OUTLINED_FUNCTION_86_1();
    v4 = sub_1AC4AEFFC(v3);
    OUTLINED_FUNCTION_99_1(v4);
  }

  OUTLINED_FUNCTION_75_1();
  *(v2 + 73) = 2;
}

uint64_t Google_Protobuf_FileOptions.pyGenericServices.getter()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_22_5();
  swift_beginAccess();
  return *(v1 + 74) & 1;
}

uint64_t Google_Protobuf_FileOptions.pyGenericServices.setter()
{
  v2 = OUTLINED_FUNCTION_127();
  v3 = *(v0 + 24);
  if ((v2 & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    OUTLINED_FUNCTION_204();
    v4 = OUTLINED_FUNCTION_86_1();
    v5 = sub_1AC4AEFFC(v4);
    OUTLINED_FUNCTION_157(v5);
  }

  result = OUTLINED_FUNCTION_75_1();
  *(v3 + 74) = v1 & 1;
  return result;
}

uint64_t Google_Protobuf_FileOptions.pyGenericServices.modify()
{
  v1 = OUTLINED_FUNCTION_136();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_5(v2);
  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  OUTLINED_FUNCTION_155(*(v0 + 74));
  return OUTLINED_FUNCTION_106_1();
}

void sub_1AC49B394(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_36_2(a1);
  v5 = *(v2 + 24);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_135();
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    OUTLINED_FUNCTION_204();
    v6 = OUTLINED_FUNCTION_0_1();
    v7 = sub_1AC4AEFFC(v6);
    OUTLINED_FUNCTION_137(v7);
  }

  OUTLINED_FUNCTION_112_0();
  *(v5 + 74) = v3;

  free(v1);
}

BOOL Google_Protobuf_FileOptions.hasPyGenericServices.getter()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_22_5();
  swift_beginAccess();
  return *(v1 + 74) != 2;
}

Swift::Void __swiftcall Google_Protobuf_FileOptions.clearPyGenericServices()()
{
  v1 = OUTLINED_FUNCTION_214();
  v2 = *(v0 + 24);
  if ((v1 & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    OUTLINED_FUNCTION_204();
    v3 = OUTLINED_FUNCTION_86_1();
    v4 = sub_1AC4AEFFC(v3);
    OUTLINED_FUNCTION_99_1(v4);
  }

  OUTLINED_FUNCTION_75_1();
  *(v2 + 74) = 2;
}

uint64_t Google_Protobuf_FileOptions.deprecated.getter()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_22_5();
  swift_beginAccess();
  return *(v1 + 75) & 1;
}

uint64_t Google_Protobuf_FileOptions.deprecated.setter()
{
  v2 = OUTLINED_FUNCTION_127();
  v3 = *(v0 + 24);
  if ((v2 & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    OUTLINED_FUNCTION_204();
    v4 = OUTLINED_FUNCTION_86_1();
    v5 = sub_1AC4AEFFC(v4);
    OUTLINED_FUNCTION_157(v5);
  }

  result = OUTLINED_FUNCTION_75_1();
  *(v3 + 75) = v1 & 1;
  return result;
}

uint64_t Google_Protobuf_FileOptions.deprecated.modify()
{
  v1 = OUTLINED_FUNCTION_136();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_5(v2);
  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  OUTLINED_FUNCTION_155(*(v0 + 75));
  return OUTLINED_FUNCTION_106_1();
}

void sub_1AC49B5B4(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_36_2(a1);
  v5 = *(v2 + 24);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_135();
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    OUTLINED_FUNCTION_204();
    v6 = OUTLINED_FUNCTION_0_1();
    v7 = sub_1AC4AEFFC(v6);
    OUTLINED_FUNCTION_137(v7);
  }

  OUTLINED_FUNCTION_112_0();
  *(v5 + 75) = v3;

  free(v1);
}

BOOL Google_Protobuf_FileOptions.hasDeprecated.getter()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_22_5();
  swift_beginAccess();
  return *(v1 + 75) != 2;
}

Swift::Void __swiftcall Google_Protobuf_FileOptions.clearDeprecated()()
{
  v1 = OUTLINED_FUNCTION_214();
  v2 = *(v0 + 24);
  if ((v1 & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    OUTLINED_FUNCTION_204();
    v3 = OUTLINED_FUNCTION_86_1();
    v4 = sub_1AC4AEFFC(v3);
    OUTLINED_FUNCTION_99_1(v4);
  }

  OUTLINED_FUNCTION_75_1();
  *(v2 + 75) = 2;
}

uint64_t Google_Protobuf_FileOptions.ccEnableArenas.getter()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_22_5();
  swift_beginAccess();
  return (*(v1 + 76) == 2) | *(v1 + 76) & 1u;
}

uint64_t Google_Protobuf_FileOptions.ccEnableArenas.setter()
{
  v2 = OUTLINED_FUNCTION_127();
  v3 = *(v0 + 24);
  if ((v2 & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    OUTLINED_FUNCTION_204();
    v4 = OUTLINED_FUNCTION_86_1();
    v5 = sub_1AC4AEFFC(v4);
    OUTLINED_FUNCTION_157(v5);
  }

  result = OUTLINED_FUNCTION_75_1();
  *(v3 + 76) = v1 & 1;
  return result;
}

uint64_t Google_Protobuf_FileOptions.ccEnableArenas.modify()
{
  v1 = OUTLINED_FUNCTION_136();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_5(v2);
  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  OUTLINED_FUNCTION_155((*(v0 + 76) == 2) | *(v0 + 76));
  return OUTLINED_FUNCTION_106_1();
}

void sub_1AC49B7EC(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_36_2(a1);
  v5 = *(v2 + 24);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_135();
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    OUTLINED_FUNCTION_204();
    v6 = OUTLINED_FUNCTION_0_1();
    v7 = sub_1AC4AEFFC(v6);
    OUTLINED_FUNCTION_137(v7);
  }

  OUTLINED_FUNCTION_112_0();
  *(v5 + 76) = v3;

  free(v1);
}

BOOL Google_Protobuf_FileOptions.hasCcEnableArenas.getter()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_22_5();
  swift_beginAccess();
  return *(v1 + 76) != 2;
}

Swift::Void __swiftcall Google_Protobuf_FileOptions.clearCcEnableArenas()()
{
  v1 = OUTLINED_FUNCTION_214();
  v2 = *(v0 + 24);
  if ((v1 & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    OUTLINED_FUNCTION_204();
    v3 = OUTLINED_FUNCTION_86_1();
    v4 = sub_1AC4AEFFC(v3);
    OUTLINED_FUNCTION_99_1(v4);
  }

  OUTLINED_FUNCTION_75_1();
  *(v2 + 76) = 2;
}

uint64_t Google_Protobuf_FileOptions.objcClassPrefix.getter()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_22_5();
  swift_beginAccess();
  if (*(v1 + 88))
  {
    v2 = *(v1 + 80);
  }

  else
  {
    OUTLINED_FUNCTION_103_1();
  }

  return OUTLINED_FUNCTION_44();
}

uint64_t sub_1AC49B960(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Google_Protobuf_FileOptions.objcClassPrefix.setter();
}

uint64_t Google_Protobuf_FileOptions.objcClassPrefix.setter()
{
  OUTLINED_FUNCTION_43_2();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v1 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    OUTLINED_FUNCTION_204();
    v5 = OUTLINED_FUNCTION_0_1();
    v6 = sub_1AC4AEFFC(v5);
    OUTLINED_FUNCTION_158(v6);
  }

  OUTLINED_FUNCTION_75_1();
  v7 = *(v4 + 88);
  *(v4 + 80) = v2;
  *(v4 + 88) = v0;
}

uint64_t Google_Protobuf_FileOptions.objcClassPrefix.modify()
{
  v2 = OUTLINED_FUNCTION_167();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_30_2(v3);
  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  if (*(v0 + 88))
  {
    v4 = *(v0 + 80);
    v5 = *(v0 + 88);
  }

  else
  {
    OUTLINED_FUNCTION_102_1();
  }

  *(v1 + 24) = v4;
  *(v1 + 32) = v5;

  return OUTLINED_FUNCTION_163();
}

BOOL Google_Protobuf_FileOptions.hasObjcClassPrefix.getter()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_22_5();
  swift_beginAccess();
  return *(v1 + 88) != 0;
}

Swift::Void __swiftcall Google_Protobuf_FileOptions.clearObjcClassPrefix()()
{
  v1 = OUTLINED_FUNCTION_214();
  v2 = *(v0 + 24);
  if ((v1 & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    OUTLINED_FUNCTION_204();
    v3 = OUTLINED_FUNCTION_86_1();
    v4 = sub_1AC4AEFFC(v3);
    OUTLINED_FUNCTION_99_1(v4);
  }

  OUTLINED_FUNCTION_75_1();
  v5 = *(v2 + 88);
  *(v2 + 80) = 0;
  *(v2 + 88) = 0;
}

uint64_t Google_Protobuf_FileOptions.csharpNamespace.getter()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_22_5();
  swift_beginAccess();
  if (*(v1 + 104))
  {
    v2 = *(v1 + 96);
  }

  else
  {
    OUTLINED_FUNCTION_103_1();
  }

  return OUTLINED_FUNCTION_44();
}

uint64_t sub_1AC49BB9C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Google_Protobuf_FileOptions.csharpNamespace.setter();
}

uint64_t Google_Protobuf_FileOptions.csharpNamespace.setter()
{
  OUTLINED_FUNCTION_43_2();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v1 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    OUTLINED_FUNCTION_204();
    v5 = OUTLINED_FUNCTION_0_1();
    v6 = sub_1AC4AEFFC(v5);
    OUTLINED_FUNCTION_158(v6);
  }

  OUTLINED_FUNCTION_75_1();
  v7 = *(v4 + 104);
  *(v4 + 96) = v2;
  *(v4 + 104) = v0;
}

uint64_t Google_Protobuf_FileOptions.csharpNamespace.modify()
{
  v2 = OUTLINED_FUNCTION_167();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_30_2(v3);
  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  if (*(v0 + 104))
  {
    v4 = *(v0 + 96);
    v5 = *(v0 + 104);
  }

  else
  {
    OUTLINED_FUNCTION_102_1();
  }

  *(v1 + 24) = v4;
  *(v1 + 32) = v5;

  return OUTLINED_FUNCTION_163();
}

BOOL Google_Protobuf_FileOptions.hasCsharpNamespace.getter()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_22_5();
  swift_beginAccess();
  return *(v1 + 104) != 0;
}

Swift::Void __swiftcall Google_Protobuf_FileOptions.clearCsharpNamespace()()
{
  v1 = OUTLINED_FUNCTION_214();
  v2 = *(v0 + 24);
  if ((v1 & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    OUTLINED_FUNCTION_204();
    v3 = OUTLINED_FUNCTION_86_1();
    v4 = sub_1AC4AEFFC(v3);
    OUTLINED_FUNCTION_99_1(v4);
  }

  OUTLINED_FUNCTION_75_1();
  v5 = *(v2 + 104);
  *(v2 + 96) = 0;
  *(v2 + 104) = 0;
}

uint64_t Google_Protobuf_FileOptions.swiftPrefix.getter()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_22_5();
  swift_beginAccess();
  if (*(v1 + 120))
  {
    v2 = *(v1 + 112);
  }

  else
  {
    OUTLINED_FUNCTION_103_1();
  }

  return OUTLINED_FUNCTION_44();
}

uint64_t sub_1AC49BDD8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Google_Protobuf_FileOptions.swiftPrefix.setter();
}

uint64_t Google_Protobuf_FileOptions.swiftPrefix.setter()
{
  OUTLINED_FUNCTION_43_2();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v1 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    OUTLINED_FUNCTION_204();
    v5 = OUTLINED_FUNCTION_0_1();
    v6 = sub_1AC4AEFFC(v5);
    OUTLINED_FUNCTION_158(v6);
  }

  OUTLINED_FUNCTION_75_1();
  v7 = *(v4 + 120);
  *(v4 + 112) = v2;
  *(v4 + 120) = v0;
}

uint64_t Google_Protobuf_FileOptions.swiftPrefix.modify()
{
  v2 = OUTLINED_FUNCTION_167();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_30_2(v3);
  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  if (*(v0 + 120))
  {
    v4 = *(v0 + 112);
    v5 = *(v0 + 120);
  }

  else
  {
    OUTLINED_FUNCTION_102_1();
  }

  *(v1 + 24) = v4;
  *(v1 + 32) = v5;

  return OUTLINED_FUNCTION_163();
}

BOOL Google_Protobuf_FileOptions.hasSwiftPrefix.getter()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_22_5();
  swift_beginAccess();
  return *(v1 + 120) != 0;
}

Swift::Void __swiftcall Google_Protobuf_FileOptions.clearSwiftPrefix()()
{
  v1 = OUTLINED_FUNCTION_214();
  v2 = *(v0 + 24);
  if ((v1 & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    OUTLINED_FUNCTION_204();
    v3 = OUTLINED_FUNCTION_86_1();
    v4 = sub_1AC4AEFFC(v3);
    OUTLINED_FUNCTION_99_1(v4);
  }

  OUTLINED_FUNCTION_75_1();
  v5 = *(v2 + 120);
  *(v2 + 112) = 0;
  *(v2 + 120) = 0;
}

uint64_t Google_Protobuf_FileOptions.phpClassPrefix.getter()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_22_5();
  swift_beginAccess();
  if (*(v1 + 136))
  {
    v2 = *(v1 + 128);
  }

  else
  {
    OUTLINED_FUNCTION_103_1();
  }

  return OUTLINED_FUNCTION_44();
}

uint64_t sub_1AC49C014(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Google_Protobuf_FileOptions.phpClassPrefix.setter();
}

uint64_t Google_Protobuf_FileOptions.phpClassPrefix.setter()
{
  OUTLINED_FUNCTION_43_2();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v1 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    OUTLINED_FUNCTION_204();
    v5 = OUTLINED_FUNCTION_0_1();
    v6 = sub_1AC4AEFFC(v5);
    OUTLINED_FUNCTION_158(v6);
  }

  OUTLINED_FUNCTION_75_1();
  v7 = *(v4 + 136);
  *(v4 + 128) = v2;
  *(v4 + 136) = v0;
}

uint64_t Google_Protobuf_FileOptions.phpClassPrefix.modify()
{
  v2 = OUTLINED_FUNCTION_167();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_30_2(v3);
  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  if (*(v0 + 136))
  {
    v4 = *(v0 + 128);
    v5 = *(v0 + 136);
  }

  else
  {
    OUTLINED_FUNCTION_102_1();
  }

  *(v1 + 24) = v4;
  *(v1 + 32) = v5;

  return OUTLINED_FUNCTION_163();
}

BOOL Google_Protobuf_FileOptions.hasPhpClassPrefix.getter()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_22_5();
  swift_beginAccess();
  return *(v1 + 136) != 0;
}

Swift::Void __swiftcall Google_Protobuf_FileOptions.clearPhpClassPrefix()()
{
  v1 = OUTLINED_FUNCTION_214();
  v2 = *(v0 + 24);
  if ((v1 & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    OUTLINED_FUNCTION_204();
    v3 = OUTLINED_FUNCTION_86_1();
    v4 = sub_1AC4AEFFC(v3);
    OUTLINED_FUNCTION_99_1(v4);
  }

  OUTLINED_FUNCTION_75_1();
  v5 = *(v2 + 136);
  *(v2 + 128) = 0;
  *(v2 + 136) = 0;
}

uint64_t Google_Protobuf_FileOptions.phpNamespace.getter()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_22_5();
  swift_beginAccess();
  if (*(v1 + 152))
  {
    v2 = *(v1 + 144);
  }

  else
  {
    OUTLINED_FUNCTION_103_1();
  }

  return OUTLINED_FUNCTION_44();
}

uint64_t sub_1AC49C250(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Google_Protobuf_FileOptions.phpNamespace.setter();
}

uint64_t Google_Protobuf_FileOptions.phpNamespace.setter()
{
  OUTLINED_FUNCTION_43_2();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v1 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    OUTLINED_FUNCTION_204();
    v5 = OUTLINED_FUNCTION_0_1();
    v6 = sub_1AC4AEFFC(v5);
    OUTLINED_FUNCTION_158(v6);
  }

  OUTLINED_FUNCTION_75_1();
  v7 = *(v4 + 152);
  *(v4 + 144) = v2;
  *(v4 + 152) = v0;
}

uint64_t Google_Protobuf_FileOptions.phpNamespace.modify()
{
  v2 = OUTLINED_FUNCTION_167();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_30_2(v3);
  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  if (*(v0 + 152))
  {
    v4 = *(v0 + 144);
    v5 = *(v0 + 152);
  }

  else
  {
    OUTLINED_FUNCTION_102_1();
  }

  *(v1 + 24) = v4;
  *(v1 + 32) = v5;

  return OUTLINED_FUNCTION_163();
}

BOOL Google_Protobuf_FileOptions.hasPhpNamespace.getter()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_22_5();
  swift_beginAccess();
  return *(v1 + 152) != 0;
}

Swift::Void __swiftcall Google_Protobuf_FileOptions.clearPhpNamespace()()
{
  v1 = OUTLINED_FUNCTION_214();
  v2 = *(v0 + 24);
  if ((v1 & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    OUTLINED_FUNCTION_204();
    v3 = OUTLINED_FUNCTION_86_1();
    v4 = sub_1AC4AEFFC(v3);
    OUTLINED_FUNCTION_99_1(v4);
  }

  OUTLINED_FUNCTION_75_1();
  v5 = *(v2 + 152);
  *(v2 + 144) = 0;
  *(v2 + 152) = 0;
}

uint64_t Google_Protobuf_FileOptions.phpMetadataNamespace.getter()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_22_5();
  swift_beginAccess();
  if (*(v1 + 168))
  {
    v2 = *(v1 + 160);
  }

  else
  {
    OUTLINED_FUNCTION_103_1();
  }

  return OUTLINED_FUNCTION_44();
}

uint64_t sub_1AC49C48C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Google_Protobuf_FileOptions.phpMetadataNamespace.setter();
}

uint64_t Google_Protobuf_FileOptions.phpMetadataNamespace.setter()
{
  OUTLINED_FUNCTION_43_2();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v1 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    OUTLINED_FUNCTION_204();
    v5 = OUTLINED_FUNCTION_0_1();
    v6 = sub_1AC4AEFFC(v5);
    OUTLINED_FUNCTION_158(v6);
  }

  OUTLINED_FUNCTION_75_1();
  v7 = *(v4 + 168);
  *(v4 + 160) = v2;
  *(v4 + 168) = v0;
}

uint64_t Google_Protobuf_FileOptions.phpMetadataNamespace.modify()
{
  v2 = OUTLINED_FUNCTION_167();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_30_2(v3);
  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  if (*(v0 + 168))
  {
    v4 = *(v0 + 160);
    v5 = *(v0 + 168);
  }

  else
  {
    OUTLINED_FUNCTION_102_1();
  }

  *(v1 + 24) = v4;
  *(v1 + 32) = v5;

  return OUTLINED_FUNCTION_163();
}

BOOL Google_Protobuf_FileOptions.hasPhpMetadataNamespace.getter()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_22_5();
  swift_beginAccess();
  return *(v1 + 168) != 0;
}

Swift::Void __swiftcall Google_Protobuf_FileOptions.clearPhpMetadataNamespace()()
{
  v1 = OUTLINED_FUNCTION_214();
  v2 = *(v0 + 24);
  if ((v1 & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    OUTLINED_FUNCTION_204();
    v3 = OUTLINED_FUNCTION_86_1();
    v4 = sub_1AC4AEFFC(v3);
    OUTLINED_FUNCTION_99_1(v4);
  }

  OUTLINED_FUNCTION_75_1();
  v5 = *(v2 + 168);
  *(v2 + 160) = 0;
  *(v2 + 168) = 0;
}

uint64_t Google_Protobuf_FileOptions.rubyPackage.getter()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_22_5();
  swift_beginAccess();
  if (*(v1 + 184))
  {
    v2 = *(v1 + 176);
  }

  else
  {
    OUTLINED_FUNCTION_103_1();
  }

  return OUTLINED_FUNCTION_44();
}

uint64_t sub_1AC49C6C8(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_201(a1);
  result = v3(v2);
  *v1 = result;
  v1[1] = v5;
  return result;
}

uint64_t sub_1AC49C700(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Google_Protobuf_FileOptions.rubyPackage.setter();
}

uint64_t Google_Protobuf_FileOptions.rubyPackage.setter()
{
  OUTLINED_FUNCTION_43_2();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v1 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    OUTLINED_FUNCTION_204();
    v5 = OUTLINED_FUNCTION_0_1();
    v6 = sub_1AC4AEFFC(v5);
    OUTLINED_FUNCTION_158(v6);
  }

  OUTLINED_FUNCTION_75_1();
  v7 = *(v4 + 184);
  *(v4 + 176) = v2;
  *(v4 + 184) = v0;
}

uint64_t Google_Protobuf_FileOptions.rubyPackage.modify()
{
  v2 = OUTLINED_FUNCTION_167();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_30_2(v3);
  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  if (*(v0 + 184))
  {
    v4 = *(v0 + 176);
    v5 = *(v0 + 184);
  }

  else
  {
    OUTLINED_FUNCTION_102_1();
  }

  *(v1 + 24) = v4;
  *(v1 + 32) = v5;

  return OUTLINED_FUNCTION_163();
}

void sub_1AC49C844(uint64_t a1, char a2, void (*a3)(uint64_t))
{
  v4 = *a1;
  v5 = *(*a1 + 24);
  v6 = *(*a1 + 40);
  if (a2)
  {
    v7 = *(*a1 + 32);

    v8 = OUTLINED_FUNCTION_98();
    a3(v8);
    v9 = v4[4];
  }

  else
  {
    v10 = OUTLINED_FUNCTION_98();
    a3(v10);
  }

  free(v4);
}

BOOL Google_Protobuf_FileOptions.hasRubyPackage.getter()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_22_5();
  swift_beginAccess();
  return *(v1 + 184) != 0;
}

Swift::Void __swiftcall Google_Protobuf_FileOptions.clearRubyPackage()()
{
  v1 = OUTLINED_FUNCTION_214();
  v2 = *(v0 + 24);
  if ((v1 & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    OUTLINED_FUNCTION_204();
    v3 = OUTLINED_FUNCTION_86_1();
    v4 = sub_1AC4AEFFC(v3);
    OUTLINED_FUNCTION_99_1(v4);
  }

  OUTLINED_FUNCTION_75_1();
  v5 = *(v2 + 184);
  *(v2 + 176) = 0;
  *(v2 + 184) = 0;
}

uint64_t Google_Protobuf_FileOptions.features.getter()
{
  OUTLINED_FUNCTION_227();
  OUTLINED_FUNCTION_22_5();
  swift_beginAccess();
  v1 = OUTLINED_FUNCTION_293();
  if (v3)
  {
    OUTLINED_FUNCTION_252(v1, v2, v3, v4);
  }

  else
  {
    OUTLINED_FUNCTION_262();
    v9 = MEMORY[0x1E69E7CC8];
    v10 = 0xC000000000000000;
  }

  *v0 = v8;
  v0[1] = v10;
  v0[2] = v9;
  return sub_1AC485860(v5, v6, v7);
}

uint64_t Google_Protobuf_FileOptions.features.setter(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_254(a1);
  v4 = *(v1 + 24);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    OUTLINED_FUNCTION_204();
    v5 = OUTLINED_FUNCTION_86_1();
    v6 = sub_1AC4AEFFC(v5);
    OUTLINED_FUNCTION_99_1(v6);
  }

  OUTLINED_FUNCTION_75_1();
  v7 = *(v4 + 192);
  v8 = *(v4 + 216);
  OUTLINED_FUNCTION_110_0(v4 + 216);
  *(v4 + 192) = v2;
  return OUTLINED_FUNCTION_375(v9, v10, v11, v12);
}

uint64_t Google_Protobuf_FileOptions.features.modify()
{
  v1 = __swift_coroFrameAllocStub(0x98uLL);
  *(OUTLINED_FUNCTION_83_1(v1) + 144) = v0;
  v2 = *(v0 + 24);
  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  v3 = OUTLINED_FUNCTION_293();
  if (v5)
  {
    OUTLINED_FUNCTION_6_6(v3, v4, v5, v6);
  }

  else
  {
    OUTLINED_FUNCTION_7_5();
  }

  OUTLINED_FUNCTION_268(v7, v8, v9, v10);
  return OUTLINED_FUNCTION_106_1();
}

void sub_1AC49CAD8(uint64_t a1, char a2)
{
  v5 = *a1;
  v6 = *(*a1 + 144);
  if (a2)
  {
    OUTLINED_FUNCTION_281();
    v7 = *(v6 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v6 + 24);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v2 = v5[18];
      type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
      OUTLINED_FUNCTION_204();
      v10 = OUTLINED_FUNCTION_0_1();
      v11 = sub_1AC4AEFFC(v10);
      OUTLINED_FUNCTION_264(v11);
    }

    OUTLINED_FUNCTION_288();
    OUTLINED_FUNCTION_202();
    v12 = *(v9 + 192);
    v13 = *(v9 + 216);
    OUTLINED_FUNCTION_110_0(v9 + 216);
    *(v9 + 192) = v28;
    *(v14 - 8) = v2;
    *v14 = v4;
    *(v14 + 4) = v3;
    sub_1AC485714(v15, v16, v17);
    OUTLINED_FUNCTION_318();
  }

  else
  {
    v18 = OUTLINED_FUNCTION_280();
    v19 = *(v6 + 24);
    if ((v18 & 1) == 0)
    {
      v20 = v5[18];
      type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
      OUTLINED_FUNCTION_204();
      v21 = OUTLINED_FUNCTION_0_1();
      v19 = sub_1AC4AEFFC(v21);
      *(v20 + 24) = v19;
    }

    OUTLINED_FUNCTION_202();
    v22 = *(v19 + 192);
    v23 = *(v19 + 216);
    OUTLINED_FUNCTION_110_0(v19 + 216);
    *(v19 + 192) = v2;
    OUTLINED_FUNCTION_372(v24, v25, v26, v27);
  }

  free(v5);
}

BOOL Google_Protobuf_FileOptions.hasFeatures.getter()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_22_5();
  swift_beginAccess();
  return *(v1 + 208) != 0;
}

Swift::Void __swiftcall Google_Protobuf_FileOptions.clearFeatures()()
{
  v1 = OUTLINED_FUNCTION_214();
  v2 = *(v0 + 24);
  if ((v1 & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    OUTLINED_FUNCTION_204();
    v3 = OUTLINED_FUNCTION_86_1();
    v4 = sub_1AC4AEFFC(v3);
    OUTLINED_FUNCTION_99_1(v4);
  }

  OUTLINED_FUNCTION_75_1();
  v5 = *(v2 + 192);
  v6 = *(v2 + 200);
  v7 = *(v2 + 208);
  v8 = *(v2 + 220);
  v9 = *(v2 + 216);
  *(v2 + 200) = 0;
  *(v2 + 208) = 0;
  *(v2 + 192) = 0;
  *(v2 + 214) = 0;
  sub_1AC485714(v5, v6, v7);
}

uint64_t Google_Protobuf_FileOptions.uninterpretedOption.getter()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_22_5();
  swift_beginAccess();
  v2 = *(v1 + 224);
}

uint64_t sub_1AC49CCEC(uint64_t *a1)
{
  v1 = *a1;

  return Google_Protobuf_FileOptions.uninterpretedOption.setter();
}

uint64_t Google_Protobuf_FileOptions.uninterpretedOption.setter()
{
  OUTLINED_FUNCTION_160();
  v2 = *(v1 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v1 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    OUTLINED_FUNCTION_204();
    v5 = OUTLINED_FUNCTION_0_1();
    v6 = sub_1AC4AEFFC(v5);
    OUTLINED_FUNCTION_264(v6);
  }

  OUTLINED_FUNCTION_75_1();
  v7 = *(v4 + 224);
  *(v4 + 224) = v0;
}

uint64_t Google_Protobuf_FileOptions.uninterpretedOption.modify()
{
  v2 = OUTLINED_FUNCTION_162();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_50_1(v3);
  v4 = *(v0 + 24);
  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  *(v1 + 48) = *(v4 + 224);

  return OUTLINED_FUNCTION_1_1();
}

void sub_1AC49CDF4(uint64_t a1)
{
  OUTLINED_FUNCTION_23_4(a1);
  if (v5)
  {

    Google_Protobuf_FileOptions.uninterpretedOption.setter();
    v6 = *v4;
  }

  else
  {
    v7 = *(v2 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v2 + 24);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_159();
      type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
      OUTLINED_FUNCTION_204();
      v10 = OUTLINED_FUNCTION_0_1();
      v11 = sub_1AC4AEFFC(v10);
      OUTLINED_FUNCTION_158(v11);
    }

    OUTLINED_FUNCTION_134();
    v12 = *(v9 + 224);
    *(v9 + 224) = v3;
  }

  free(v1);
}

uint64_t Google_Protobuf_FileOptions.unknownFields.setter(uint64_t *a1)
{
  result = OUTLINED_FUNCTION_233(a1);
  *v2 = v1;
  v2[1] = v3;
  return result;
}

uint64_t Google_Protobuf_FileOptions._protobuf_extensionFieldValues.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 16);

  *(v1 + 16) = v2;
  return result;
}

uint64_t (*Google_Protobuf_MessageOptions.noStandardDescriptorAccessor.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 33) & 1;
  return j_j__OUTLINED_FUNCTION_256;
}

uint64_t (*Google_Protobuf_MessageOptions.deprecated.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 34) & 1;
  return sub_1AC4C6D38;
}

_BYTE *(*Google_Protobuf_MessageOptions.mapEntry.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 35) & 1;
  return sub_1AC49D068;
}

_BYTE *(*Google_Protobuf_MessageOptions.deprecatedLegacyJsonFieldConflicts.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 36) & 1;
  return sub_1AC49D0D4;
}

uint64_t Google_Protobuf_MessageOptions.features.modify()
{
  v0 = OUTLINED_FUNCTION_198();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_62(v1);
  v2 = OUTLINED_FUNCTION_21_4();
  if (v4)
  {
    OUTLINED_FUNCTION_6_6(v2, v3, v4, v5);
  }

  else
  {
    OUTLINED_FUNCTION_7_5();
  }

  OUTLINED_FUNCTION_268(v6, v7, v8, v9);
  return OUTLINED_FUNCTION_106_1();
}

void Google_Protobuf_FieldOptions.ctype.getter()
{
  OUTLINED_FUNCTION_227();
  OUTLINED_FUNCTION_22_5();
  swift_beginAccess();
  OUTLINED_FUNCTION_178(*(v0 + 16));
}

uint64_t Google_Protobuf_FieldOptions.ctype.setter(unsigned __int8 *a1)
{
  v3 = OUTLINED_FUNCTION_253(a1);
  v4 = *(v1 + 24);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FieldOptions._StorageClass();
    OUTLINED_FUNCTION_95_1();
    swift_allocObject();
    v5 = OUTLINED_FUNCTION_86_1();
    v6 = sub_1AC4B3500(v5);
    OUTLINED_FUNCTION_99_1(v6);
  }

  result = OUTLINED_FUNCTION_75_1();
  *(v4 + 16) = v2;
  return result;
}

uint64_t Google_Protobuf_FieldOptions.ctype.modify()
{
  v1 = OUTLINED_FUNCTION_136();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_5(v2);
  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  OUTLINED_FUNCTION_177(*(v0 + 16));
  return OUTLINED_FUNCTION_106_1();
}

void sub_1AC49D318(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_96_1(a1);
  v5 = *(v2 + 24);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_135();
    type metadata accessor for Google_Protobuf_FieldOptions._StorageClass();
    OUTLINED_FUNCTION_95_1();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_0_1();
    v7 = sub_1AC4B3500(v6);
    OUTLINED_FUNCTION_137(v7);
  }

  OUTLINED_FUNCTION_112_0();
  *(v5 + 16) = v3;

  free(v1);
}

BOOL Google_Protobuf_FieldOptions.hasCtype.getter()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_22_5();
  swift_beginAccess();
  return *(v1 + 16) != 3;
}

Swift::Void __swiftcall Google_Protobuf_FieldOptions.clearCtype()()
{
  v1 = OUTLINED_FUNCTION_214();
  v2 = *(v0 + 24);
  if ((v1 & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FieldOptions._StorageClass();
    OUTLINED_FUNCTION_95_1();
    swift_allocObject();
    v3 = OUTLINED_FUNCTION_86_1();
    v4 = sub_1AC4B3500(v3);
    OUTLINED_FUNCTION_99_1(v4);
  }

  OUTLINED_FUNCTION_75_1();
  *(v2 + 16) = 3;
}

uint64_t Google_Protobuf_FieldOptions.packed.getter()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_22_5();
  swift_beginAccess();
  return *(v1 + 17) & 1;
}

uint64_t Google_Protobuf_FieldOptions.packed.setter()
{
  v2 = OUTLINED_FUNCTION_127();
  v3 = *(v0 + 24);
  if ((v2 & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FieldOptions._StorageClass();
    OUTLINED_FUNCTION_95_1();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_86_1();
    v5 = sub_1AC4B3500(v4);
    OUTLINED_FUNCTION_157(v5);
  }

  result = OUTLINED_FUNCTION_75_1();
  *(v3 + 17) = v1 & 1;
  return result;
}

uint64_t Google_Protobuf_FieldOptions.packed.modify()
{
  v1 = OUTLINED_FUNCTION_136();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_5(v2);
  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  OUTLINED_FUNCTION_155(*(v0 + 17));
  return OUTLINED_FUNCTION_106_1();
}

void sub_1AC49D544(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_36_2(a1);
  v5 = *(v2 + 24);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_135();
    type metadata accessor for Google_Protobuf_FieldOptions._StorageClass();
    OUTLINED_FUNCTION_95_1();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_0_1();
    v7 = sub_1AC4B3500(v6);
    OUTLINED_FUNCTION_137(v7);
  }

  OUTLINED_FUNCTION_112_0();
  *(v5 + 17) = v3;

  free(v1);
}

BOOL Google_Protobuf_FieldOptions.hasPacked.getter()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_22_5();
  swift_beginAccess();
  return *(v1 + 17) != 2;
}

Swift::Void __swiftcall Google_Protobuf_FieldOptions.clearPacked()()
{
  v1 = OUTLINED_FUNCTION_214();
  v2 = *(v0 + 24);
  if ((v1 & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FieldOptions._StorageClass();
    OUTLINED_FUNCTION_95_1();
    swift_allocObject();
    v3 = OUTLINED_FUNCTION_86_1();
    v4 = sub_1AC4B3500(v3);
    OUTLINED_FUNCTION_99_1(v4);
  }

  OUTLINED_FUNCTION_75_1();
  *(v2 + 17) = 2;
}

void Google_Protobuf_FieldOptions.jstype.getter()
{
  OUTLINED_FUNCTION_227();
  OUTLINED_FUNCTION_22_5();
  swift_beginAccess();
  OUTLINED_FUNCTION_178(*(v0 + 18));
}