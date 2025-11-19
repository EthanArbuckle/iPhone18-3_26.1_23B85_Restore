uint64_t sub_21672F38C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700D284();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_21672F3D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700D284();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_21672F420(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_11:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v14 = a3[18];
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1BF8);
      v14 = a3[19];
    }

    v9 = a1 + v14;
    goto LABEL_11;
  }

  v10 = *(a1 + a3[5] + 24);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

void sub_21672F554(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[5] + 24) = (a2 - 1);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[18];
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1BF8);
      v14 = a4[19];
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_21672F6AC()
{

  OUTLINED_FUNCTION_143();

  return swift_deallocObject();
}

uint64_t sub_21672F6E0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1C10);
  OUTLINED_FUNCTION_34();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_21672F76C()
{
  MEMORY[0x21CEA1520](v0 + 16);
  OUTLINED_FUNCTION_143();

  return swift_deallocObject();
}

uint64_t sub_21672F7A0()
{

  return swift_deallocObject();
}

uint64_t sub_21672F7E0(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_17:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBE20);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v14 = a3[9];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
      OUTLINED_FUNCTION_17();
      if (*(v16 + 84) == a2)
      {
        v8 = v15;
        v14 = a3[13];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBEA8);
        OUTLINED_FUNCTION_17();
        if (*(v18 + 84) == a2)
        {
          v8 = v17;
          v14 = a3[14];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
          OUTLINED_FUNCTION_17();
          if (*(v20 + 84) == a2)
          {
            v8 = v19;
            v14 = a3[15];
          }

          else
          {
            v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A30);
            v14 = a3[16];
          }
        }
      }
    }

    v9 = a1 + v14;
    goto LABEL_17;
  }

  v10 = *(a1 + a3[5] + 24);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

void sub_21672F9F8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[5] + 24) = (a2 - 1);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBE20);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[9];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
      OUTLINED_FUNCTION_17();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[13];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBEA8);
        OUTLINED_FUNCTION_17();
        if (*(v18 + 84) == a3)
        {
          v10 = v17;
          v14 = a4[14];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
          OUTLINED_FUNCTION_17();
          if (*(v20 + 84) == a3)
          {
            v10 = v19;
            v14 = a4[15];
          }

          else
          {
            v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A30);
            v14 = a4[16];
          }
        }
      }
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_21672FC0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700D284();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_21672FC54(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700D284();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_21672FCA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700D284();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_21672FCE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700D284();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_21672FD34(uint64_t a1, uint64_t a2)
{
  v4 = sub_217007CA4();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_21672FD7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_217007CA4();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_21672FDC8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    OUTLINED_FUNCTION_11_1();
    return (v3 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
    v6 = OUTLINED_FUNCTION_19_1(*(a3 + 20));

    return __swift_getEnumTagSinglePayload(v6, v7, v8);
  }
}

uint64_t sub_21672FE50(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
    v6 = OUTLINED_FUNCTION_19_1(*(a4 + 20));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_21672FF28(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    OUTLINED_FUNCTION_11_1();
    v4 = v3 - 1;
    if (v4 < 0)
    {
      v4 = -1;
    }

    return (v4 + 1);
  }

  else
  {
    type metadata accessor for LinkComponentModel();
    OUTLINED_FUNCTION_17();
    if (*(v8 + 84) == a2)
    {
      v9 = *(a3 + 20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A30);
      v9 = *(a3 + 24);
    }

    v10 = OUTLINED_FUNCTION_19_1(v9);

    return __swift_getEnumTagSinglePayload(v10, v11, v12);
  }
}

uint64_t sub_21672FFFC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    type metadata accessor for LinkComponentModel();
    OUTLINED_FUNCTION_17();
    if (*(v7 + 84) == a3)
    {
      v8 = *(a4 + 20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A30);
      v8 = *(a4 + 24);
    }

    v9 = OUTLINED_FUNCTION_19_1(v8);

    return __swift_storeEnumTagSinglePayload(v9, v10, a2, v11);
  }

  return result;
}

uint64_t sub_2167300C8(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_110();
  sub_21700D194();
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BF0);
    OUTLINED_FUNCTION_17();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = a3[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A28);
      OUTLINED_FUNCTION_17();
      if (*(v14 + 84) == a2)
      {
        v8 = v13;
        v12 = a3[6];
      }

      else
      {
        if (a2 == 0x7FFFFFFF)
        {
          OUTLINED_FUNCTION_11_1();
          return (v15 + 1);
        }

        v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFCE8);
        v12 = a3[9];
      }
    }

    v9 = v3 + v12;
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

void sub_21673022C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_110();
  sub_21700D194();
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v4;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BF0);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A28);
      OUTLINED_FUNCTION_17();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[6];
      }

      else
      {
        if (a3 == 0x7FFFFFFF)
        {
          *(v4 + a4[7]) = (a2 - 1);
          return;
        }

        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFCE8);
        v14 = a4[9];
      }
    }

    v11 = v4 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_2167303A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D284();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_216730454(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21700D284();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_216730500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_2167305B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_216730670(uint64_t *a1, uint64_t a2, int *a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370);
    OUTLINED_FUNCTION_17();
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = a3[5];
    }

    else
    {
      sub_21700C254();
      OUTLINED_FUNCTION_17();
      if (*(v14 + 84) == a2)
      {
        v11 = v13;
        v12 = a3[6];
      }

      else
      {
        v11 = type metadata accessor for MenuConfiguration(0);
        v12 = a3[7];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v12, a2, v11);
  }
}

void *sub_216730790(void *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370);
    OUTLINED_FUNCTION_17();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[5];
    }

    else
    {
      sub_21700C254();
      OUTLINED_FUNCTION_17();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[6];
      }

      else
      {
        v10 = type metadata accessor for MenuConfiguration(0);
        v11 = a4[7];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_2167308A0(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_17:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBE20);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v14 = a3[10];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
      OUTLINED_FUNCTION_17();
      if (*(v16 + 84) == a2)
      {
        v8 = v15;
        v14 = a3[14];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBEA8);
        OUTLINED_FUNCTION_17();
        if (*(v18 + 84) == a2)
        {
          v8 = v17;
          v14 = a3[15];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
          OUTLINED_FUNCTION_17();
          if (*(v20 + 84) == a2)
          {
            v8 = v19;
            v14 = a3[16];
          }

          else
          {
            v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A30);
            v14 = a3[17];
          }
        }
      }
    }

    v9 = a1 + v14;
    goto LABEL_17;
  }

  v10 = *(a1 + a3[5] + 24);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

void sub_216730AB8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[5] + 24) = (a2 - 1);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBE20);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[10];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
      OUTLINED_FUNCTION_17();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[14];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBEA8);
        OUTLINED_FUNCTION_17();
        if (*(v18 + 84) == a3)
        {
          v10 = v17;
          v14 = a4[15];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
          OUTLINED_FUNCTION_17();
          if (*(v20 + 84) == a3)
          {
            v10 = v19;
            v14 = a4[16];
          }

          else
          {
            v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A30);
            v14 = a4[17];
          }
        }
      }
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_216730D30(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_15:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v14 = a3[7];
    }

    else
    {
      sub_2170061E4();
      OUTLINED_FUNCTION_17();
      if (*(v16 + 84) == a2)
      {
        v8 = v15;
        v14 = a3[9];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
        OUTLINED_FUNCTION_17();
        if (*(v18 + 84) == a2)
        {
          v8 = v17;
          v14 = a3[11];
        }

        else
        {
          v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBEA8);
          v14 = a3[13];
        }
      }
    }

    v9 = a1 + v14;
    goto LABEL_15;
  }

  v10 = *(a1 + a3[5] + 24);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

void sub_216730EF0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[5] + 24) = (a2 - 1);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[7];
    }

    else
    {
      sub_2170061E4();
      OUTLINED_FUNCTION_17();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[9];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
        OUTLINED_FUNCTION_17();
        if (*(v18 + 84) == a3)
        {
          v10 = v17;
          v14 = a4[11];
        }

        else
        {
          v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBEA8);
          v14 = a4[13];
        }
      }
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_2167310AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
    v8 = a1 + *(a3 + 24);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 20) + 24);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_216731198(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 20) + 24) = (a2 - 1);
      return result;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
    v10 = a1 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_216731280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D194();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_216731330(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21700D194();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2167313FC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1E38);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1E30);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1E40);
  sub_216AD3974();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_1_119();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2167314D0(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_13:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBE20);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v14 = a3[10];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
      OUTLINED_FUNCTION_17();
      if (*(v16 + 84) == a2)
      {
        v8 = v15;
        v14 = a3[11];
      }

      else
      {
        v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
        v14 = a3[18];
      }
    }

    v9 = a1 + v14;
    goto LABEL_13;
  }

  v10 = *(a1 + a3[5] + 24);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

void sub_216731650(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[5] + 24) = (a2 - 1);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBE20);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[10];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
      OUTLINED_FUNCTION_17();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[11];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
        v14 = a4[18];
      }
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_2167317CC(uint64_t a1)
{
  result = sub_2166D8670(qword_280E34CE8, type metadata accessor for TVMovieDetailHeaderLockup);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216731890()
{
  OUTLINED_FUNCTION_17_6();
  result = sub_2170090C4();
  *v0 = result;
  return result;
}

uint64_t sub_2167318BC()
{
  type metadata accessor for SplitPosterLockupView(0);
  OUTLINED_FUNCTION_4_4();
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  v4 = v1 + v3;

  v5 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170080D4();
    OUTLINED_FUNCTION_9_0();
    (*(v6 + 8))(v4 + v5);
  }

  else
  {
  }

  OUTLINED_FUNCTION_20_36();
  v7 = v4 + v0[8];
  if (*(v7 + 40))
  {
    if (*(v7 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
    }
  }

  else
  {
  }

  v8 = v0[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170075A4();
    OUTLINED_FUNCTION_9_0();
    (*(v9 + 8))(v4 + v8);
  }

  else
  {
  }

  OUTLINED_FUNCTION_27_33();

  return swift_deallocObject();
}

__n128 sub_216731A78(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_216731AB4(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_92();
  type metadata accessor for SplitPosterLockup.Item(0);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    sub_2170067A4();
    OUTLINED_FUNCTION_17();
    if (*(v11 + 84) == v3)
    {
      v8 = v10;
      v12 = a3[5];
    }

    else
    {
      if (v3 == 254)
      {
        v13 = *(v4 + a3[6]);
        if (v13 >= 2)
        {
          return v13 - 1;
        }

        else
        {
          return 0;
        }
      }

      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370);
      v12 = a3[7];
    }

    v9 = v4 + v12;
  }

  return __swift_getEnumTagSinglePayload(v9, v3, v8);
}

void sub_216731BC0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_92();
  type metadata accessor for SplitPosterLockup.Item(0);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v5;
  }

  else
  {
    sub_2170067A4();
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      if (a3 == 254)
      {
        *(v5 + a4[6]) = v4 + 1;
        return;
      }

      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370);
      v14 = a4[7];
    }

    v11 = v5 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, v4, v4, v10);
}

uint64_t sub_216731CF4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB90E0);
    OUTLINED_FUNCTION_17();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(a3 + 20);
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370);
      v11 = *(a3 + 40);
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

void sub_216731DD4()
{
  OUTLINED_FUNCTION_92();
  if (v2 == 0x7FFFFFFF)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v4 = v3;
    v5 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB90E0);
    OUTLINED_FUNCTION_17();
    if (*(v7 + 84) == v5)
    {
      v8 = v6;
      v9 = *(v4 + 20);
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370);
      v9 = *(v4 + 40);
    }

    __swift_storeEnumTagSinglePayload(v1 + v9, v0, v0, v8);
  }
}

uint64_t sub_216731EAC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1EB0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1F48);
  sub_216ADD2F4();
  OUTLINED_FUNCTION_8_2();
  sub_2167D2D50(v0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_216731F64()
{
  OUTLINED_FUNCTION_49();
  v2 = sub_2170067A4();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = *(v6 + 64);
  type metadata accessor for MenuConfiguration(0);
  OUTLINED_FUNCTION_4_4();
  v9 = *(v8 + 80);
  (*(v4 + 8))(v1 + v5, v2);
  v10 = v1 + ((v5 + v7 + v9) & ~v9);
  v11 = type metadata accessor for ContentDescriptor();
  if (!__swift_getEnumTagSinglePayload(v10, 1, v11))
  {

    v12 = *(v11 + 24);
    v13 = sub_217005EF4();
    if (!__swift_getEnumTagSinglePayload(v10 + v12, 1, v13))
    {
      OUTLINED_FUNCTION_50();
      (*(v14 + 8))(v10 + v12, v13);
    }
  }

  v15 = v10 + *(v0 + 20);
  type metadata accessor for MenuContext(0);
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_21700C8E4();
    OUTLINED_FUNCTION_9_0();
    (*(v16 + 8))(v15);
    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74B0) + 48);
    v18 = sub_21700C924();
    if (!__swift_getEnumTagSinglePayload(v15 + v17, 1, v18))
    {
      OUTLINED_FUNCTION_50();
      (*(v19 + 8))(v15 + v17, v18);
    }
  }

  OUTLINED_FUNCTION_4_2();

  v20 = v10 + *(v0 + 32);
  if (*(v20 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
  }

  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_26();

  return swift_deallocObject();
}

uint64_t sub_2167321FC(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_92();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v9, v3, v8);
  }

  sub_2170067A4();
  OUTLINED_FUNCTION_17();
  if (*(v11 + 84) == v3)
  {
    v8 = v10;
    v12 = a3[7];
LABEL_7:
    v9 = v4 + v12;
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7598);
  OUTLINED_FUNCTION_17();
  if (*(v14 + 84) == v3)
  {
    v8 = v13;
    v12 = a3[8];
    goto LABEL_7;
  }

  v16 = *(v4 + a3[10]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  v17 = v16 - 1;
  if (v17 < 0)
  {
    v17 = -1;
  }

  return (v17 + 1);
}

void sub_216732348(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_92();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v5;
  }

  else
  {
    sub_2170067A4();
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[7];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7598);
      OUTLINED_FUNCTION_17();
      if (*(v16 + 84) != a3)
      {
        *(v5 + a4[10]) = v4;
        return;
      }

      v10 = v15;
      v14 = a4[8];
    }

    v11 = v5 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, v4, v4, v10);
}

uint64_t sub_216732484()
{
  v0 = OUTLINED_FUNCTION_8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8AA0);
  type metadata accessor for ContextMenuPreview(255);
  sub_2167D2D50(&unk_27CAC20E8);
  sub_2167D2D50(&unk_280E2BAE8);
  sub_216ADCD70(&unk_280E3F158);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2167325C8()
{
  if ((*(v0 + 24) - 1) >= 9)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21673260C()
{
  v1 = sub_2170067A4();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_2167326C8()
{
  v0 = OUTLINED_FUNCTION_8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0);
  sub_2167D2D50(&unk_27CAC21B8);
  OUTLINED_FUNCTION_5_5();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_216732760@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21700ADB4();
  *a1 = result;
  return result;
}

uint64_t sub_2167327A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21700BDB4();
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  sub_21700BBA4();
  OUTLINED_FUNCTION_17();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 24) + 24);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_216732890(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_21700BDB4();
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_21700BBA4();
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 24) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 20);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_2167329DC(uint64_t a1, uint64_t a2, int *a3)
{
  sub_21700C1E4();
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_13:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  type metadata accessor for MenuConfiguration(0);
  OUTLINED_FUNCTION_17();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[5];
LABEL_12:
    v9 = a1 + v12;
    goto LABEL_13;
  }

  if (a2 != 2147483646)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370);
    v12 = a3[8];
    goto LABEL_12;
  }

  v13 = *(a1 + a3[6]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  v14 = v13 - 1;
  if (v14 < 0)
  {
    v14 = -1;
  }

  return (v14 + 1);
}

void sub_216732B00(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_21700C1E4();
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    type metadata accessor for MenuConfiguration(0);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      if (a3 == 2147483646)
      {
        *(a1 + a4[6]) = a2;
        return;
      }

      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370);
      v14 = a4[8];
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_216732C3C()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_216732C7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBE20);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_216732D40(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_92();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBE20);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = OUTLINED_FUNCTION_54();

    return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }

  else
  {
    *(v5 + *(a4 + 20)) = v4;
  }

  return result;
}

uint64_t sub_216732E60()
{
  OUTLINED_FUNCTION_92();
  v2 = type metadata accessor for ScrollableParagraphView.Content(0);

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_216732EA4()
{
  OUTLINED_FUNCTION_92();
  type metadata accessor for ScrollableParagraphView.Content(0);
  v0 = OUTLINED_FUNCTION_54();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_216732F24()
{
  sub_21700F164();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7638);
  OUTLINED_FUNCTION_2_3();
  sub_2170089F4();
  OUTLINED_FUNCTION_14_47();
  sub_2170089F4();
  OUTLINED_FUNCTION_14_47();
  sub_2170089F4();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC2468);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_22_9();
  OUTLINED_FUNCTION_18_38();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_0();
  sub_21700B0A4();
  OUTLINED_FUNCTION_10_56();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9_62();
  swift_getOpaqueTypeMetadata2();
  sub_217009B44();
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  sub_2170089F4();
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_22_9();
  OUTLINED_FUNCTION_18_38();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_0();
  sub_2170083A4();
  OUTLINED_FUNCTION_14_47();
  sub_2170089F4();
  OUTLINED_FUNCTION_8_62();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_0();
  sub_217008BC4();
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  sub_21700F164();
  swift_getTupleTypeMetadata3();
  OUTLINED_FUNCTION_18_38();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_0();
  sub_21700B084();
  OUTLINED_FUNCTION_7_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_0();
  type metadata accessor for ActionButton();
  sub_217008AD4();
  OUTLINED_FUNCTION_6_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_5_72();
  sub_216AEBA80(v0, v1);
  swift_getOpaqueTypeMetadata2();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8A60);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7BE0);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_2166D9530(&qword_280E2A728, &qword_27CAB8A60);
  swift_getWitnessTable();
  sub_2166D9530(&qword_280E2A718, &qword_27CAB7BE0);
  return swift_getWitnessTable();
}

uint64_t sub_21673330C()
{
  OUTLINED_FUNCTION_92();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD478);

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_21673335C()
{
  OUTLINED_FUNCTION_92();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD478);
  v0 = OUTLINED_FUNCTION_54();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_2167333AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D194();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_216733458(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21700D194();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_216733530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for GroupedTextListLockup();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 > 1)
    {
      return (v8 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_2167335DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for GroupedTextListLockup();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

uint64_t sub_216733688@<X0>(_BYTE *a1@<X8>)
{
  result = sub_217008FE4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2167336C0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2588);
  OUTLINED_FUNCTION_34();
  (*(v4 + 16))(a2, a1);
  return a2;
}

uint64_t sub_216733728(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2588);
  OUTLINED_FUNCTION_34();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_216733788()
{

  return swift_deallocObject();
}

uint64_t sub_216733814(char a1)
{
  result = 27503;
  switch(a1)
  {
    case 1:
      result = 0x737574617473;
      break;
    case 2:
      result = 0x6554737574617473;
      break;
    case 3:
      result = 0x73726564616568;
      break;
    case 4:
      result = 0x7463657269646572;
      break;
    case 5:
      result = 7107189;
      break;
    case 6:
      result = 2036625250;
      break;
    case 7:
      result = 0x7363697274656DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_216733978()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_2167339C4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2170067A4();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_216733A4C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_2170067A4();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_216733AD0()
{
  v1 = (type metadata accessor for PageToolbarContentView() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);

  v3 = v1[7];
  sub_2170067A4();
  OUTLINED_FUNCTION_34();
  (*(v4 + 8))(v0 + v2 + v3);

  return swift_deallocObject();
}

uint64_t sub_216733BEC()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_216AF45A4();
  *v0 = result;
  return result;
}

__n128 sub_216733C1C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_216733C28()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_216AF457C();
  *v0 = result;
  return result;
}

uint64_t sub_216733C58()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_216AF4554();
  *v0 = result;
  return result;
}

uint64_t sub_216733C88()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_216AF452C();
  *v0 = result;
  return result;
}

uint64_t sub_216733CB8()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_216AF4504();
  *v0 = result;
  return result;
}

uint64_t sub_216733CF8(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_11:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    type metadata accessor for ContentDescriptor();
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v14 = a3[6];
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
      v14 = a3[14];
    }

    v9 = a1 + v14;
    goto LABEL_11;
  }

  v10 = *(a1 + a3[5] + 24);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

void sub_216733E20(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[5] + 24) = (a2 - 1);
      return;
    }

    type metadata accessor for ContentDescriptor();
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[6];
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
      v14 = a4[14];
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_216733F48(uint64_t *a1, uint64_t a2, int *a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370);
    OUTLINED_FUNCTION_17();
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = a3[7];
    }

    else
    {
      type metadata accessor for SocialProfileDescriptor(0);
      OUTLINED_FUNCTION_17();
      if (*(v14 + 84) == a2)
      {
        v11 = v13;
        v12 = a3[9];
      }

      else
      {
        v11 = type metadata accessor for MenuConfiguration(0);
        v12 = a3[10];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v12, a2, v11);
  }
}

void *sub_216734068(void *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370);
    OUTLINED_FUNCTION_17();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[7];
    }

    else
    {
      type metadata accessor for SocialProfileDescriptor(0);
      OUTLINED_FUNCTION_17();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[9];
      }

      else
      {
        v10 = type metadata accessor for MenuConfiguration(0);
        v11 = a4[10];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_216734184(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_21700D284();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_21673420C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_21700D284();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21673428C(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_11:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v14 = a3[16];
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
      v14 = a3[25];
    }

    v9 = a1 + v14;
    goto LABEL_11;
  }

  v10 = *(a1 + a3[5] + 24);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

void sub_2167343C0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[5] + 24) = (a2 - 1);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[16];
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
      v14 = a4[25];
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_2167344F0(uint64_t a1)
{
  result = sub_2166D286C(qword_280E41540, type metadata accessor for AlbumTrackLockup);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216734548(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicEvent.Event(0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_216734590(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicEvent.Event(0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_216734674()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2167346C8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_21673475C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2167347E8()
{
  OUTLINED_FUNCTION_0_0();
  v0 = sub_216B02EE8();
  return OUTLINED_FUNCTION_1_11(v0);
}

uint64_t sub_216734834()
{

  OUTLINED_FUNCTION_53();

  return swift_deallocObject();
}

uint64_t sub_216734870()
{

  return swift_deallocObject();
}

uint64_t sub_2167348B0()
{
  OUTLINED_FUNCTION_143();

  return swift_deallocObject();
}

uint64_t sub_2167348E4()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_143();

  return swift_deallocObject();
}

uint64_t sub_216734918()
{

  return swift_deallocObject();
}

uint64_t sub_216734950()
{

  return swift_deallocObject();
}

uint64_t sub_216734990()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_216AFF7D4();
  *v0 = result;
  return result;
}

uint64_t sub_2167349BC()
{
  OUTLINED_FUNCTION_0_0();
  v0 = sub_216AFF550();
  return OUTLINED_FUNCTION_1_11(v0);
}

uint64_t sub_216734A08()
{
  OUTLINED_FUNCTION_0_0();
  v0 = sub_216AFF528();
  return OUTLINED_FUNCTION_1_11(v0);
}

uint64_t sub_216734A54()
{
  OUTLINED_FUNCTION_0_0();
  v0 = sub_216AFF514();
  return OUTLINED_FUNCTION_1_11(v0);
}

uint64_t sub_216734AA0()
{
  OUTLINED_FUNCTION_0_0();
  v0 = sub_216AFF500();
  return OUTLINED_FUNCTION_1_11(v0);
}

uint64_t sub_216734AEC()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_216AFF430();
  *v0 = result;
  return result;
}

uint64_t sub_216734B40()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_216AFF340();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_216734B94()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_216AFF32C();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_216734BE8()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_216AFF318();
  *v0 = result;
  return result;
}

uint64_t sub_216734C14()
{
  OUTLINED_FUNCTION_0_0();
  v0 = sub_216AFF2F0();
  return OUTLINED_FUNCTION_1_11(v0);
}

uint64_t sub_216734C60()
{

  OUTLINED_FUNCTION_53();

  return swift_deallocObject();
}

uint64_t sub_216734C9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700C384();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_21700D284();
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_216734D38(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_21700C384();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_21700D284();
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_216734DDC(uint64_t a1, uint64_t a2, int *a3)
{
  sub_21700C994();
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_13:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  type metadata accessor for MenuConfiguration(0);
  OUTLINED_FUNCTION_17();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[5];
LABEL_12:
    v9 = a1 + v12;
    goto LABEL_13;
  }

  if (a2 != 2147483646)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370);
    v12 = a3[8];
    goto LABEL_12;
  }

  v13 = *(a1 + a3[6]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  v14 = v13 - 1;
  if (v14 < 0)
  {
    v14 = -1;
  }

  return (v14 + 1);
}

void sub_216734F00(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_21700C994();
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    type metadata accessor for MenuConfiguration(0);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      if (a3 == 2147483646)
      {
        *(a1 + a4[6]) = a2;
        return;
      }

      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370);
      v14 = a4[8];
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_216735014()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_21673504C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    OUTLINED_FUNCTION_11_1();
    return (v3 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370);
    v6 = OUTLINED_FUNCTION_19_1(*(a3 + 20));

    return __swift_getEnumTagSinglePayload(v6, v7, v8);
  }
}

void *sub_2167350D4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370);
    v6 = OUTLINED_FUNCTION_19_1(*(a4 + 20));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_21673518C()
{
  type metadata accessor for VerticalVideoLockupView(0);
  OUTLINED_FUNCTION_4_4();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  v4 = *(v0 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170075A4();
    OUTLINED_FUNCTION_34();
    (*(v5 + 8))(v3 + v4);
  }

  else
  {
  }

  v6 = v3 + *(v0 + 24);
  if (*(v6 + 40))
  {
    if (*(v6 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2167352C4()
{
  sub_2170067A4();
  OUTLINED_FUNCTION_34();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_216735354()
{
  OUTLINED_FUNCTION_92();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7680);
  OUTLINED_FUNCTION_34();
  v1 = OUTLINED_FUNCTION_8();
  v2(v1);
  return v0;
}

uint64_t sub_2167353B4()
{
  v2 = sub_2170067A4();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = *(v6 + 64);
  type metadata accessor for MenuConfiguration(0);
  OUTLINED_FUNCTION_4_4();
  v9 = (v5 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  (*(v4 + 8))(v1 + v5, v2);
  v10 = v1 + v9;
  v11 = type metadata accessor for ContentDescriptor();
  if (!__swift_getEnumTagSinglePayload(v1 + v9, 1, v11))
  {

    v12 = *(v11 + 24);
    v13 = sub_217005EF4();
    if (!__swift_getEnumTagSinglePayload(v10 + v12, 1, v13))
    {
      (*(*(v13 - 8) + 8))(v10 + v12, v13);
    }
  }

  v14 = v10 + *(v0 + 20);
  type metadata accessor for MenuContext(0);
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_21700C8E4();
    OUTLINED_FUNCTION_34();
    (*(v15 + 8))(v14);
    v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74B0) + 48);
    v17 = sub_21700C924();
    if (!__swift_getEnumTagSinglePayload(v14 + v16, 1, v17))
    {
      (*(*(v17 - 8) + 8))(v14 + v16, v17);
    }
  }

  v18 = v10 + *(v0 + 32);
  if (*(v18 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
  }

  return swift_deallocObject();
}

uint64_t sub_216735668(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    OUTLINED_FUNCTION_11_1();
    v4 = v3 - 1;
    if (v4 < 0)
    {
      v4 = -1;
    }

    return (v4 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
    v7 = OUTLINED_FUNCTION_19_1(*(a3 + 36));

    return __swift_getEnumTagSinglePayload(v7, v8, v9);
  }
}

uint64_t sub_2167356FC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 2147483646)
  {
    *(result + 24) = a2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
    v6 = OUTLINED_FUNCTION_19_1(*(a4 + 36));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_216735788()
{
  type metadata accessor for VerticalVideoLockupContent(0);
  OUTLINED_FUNCTION_4_4();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = v1 + v3;
  if (*(v1 + v3 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v1 + v3);
  }

  v5 = v4 + *(v0 + 36);
  v6 = type metadata accessor for Artwork();
  if (!__swift_getEnumTagSinglePayload(v5, 1, v6))
  {
    sub_21700C4B4();
    OUTLINED_FUNCTION_34();
    (*(v7 + 8))(v5);
    v8 = *(v6 + 20);
    sub_21700C444();
    OUTLINED_FUNCTION_34();
    (*(v9 + 8))(v5 + v8);
  }

  if ((*(v4 + *(v0 + 40) + 8) - 1) >= 9)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_216735918(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  if (*(*(v4 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v4);
  }

  else
  {
    OUTLINED_FUNCTION_11_1();
    v7 = v6 - 1;
    if (v7 < 0)
    {
      v8 = -1;
    }

    else
    {
      v8 = v7;
    }

    v9 = v8 - 8;
    if (v7 >= 9)
    {
      return v9;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_2167359E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 + 9);
  }

  return result;
}

uint64_t sub_216735A98()
{
  v0 = OUTLINED_FUNCTION_8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0);
  type metadata accessor for ActionButtonStyle(255);
  sub_2166D9530(&qword_27CAC2AC8, &qword_27CAC2A98);
  sub_2166D88EC(&qword_280E404C0, type metadata accessor for ActionButtonStyle);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_216735B74(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2AD0);
  OUTLINED_FUNCTION_34();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_216735BD4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC2AE8);
  sub_216B0B1D8();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_216735C3C(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_13:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v14 = a3[14];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBEA8);
      OUTLINED_FUNCTION_17();
      if (*(v16 + 84) == a2)
      {
        v8 = v15;
        v14 = a3[16];
      }

      else
      {
        v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
        v14 = a3[24];
      }
    }

    v9 = a1 + v14;
    goto LABEL_13;
  }

  v10 = *(a1 + a3[5] + 24);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

void sub_216735DBC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[5] + 24) = (a2 - 1);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[14];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBEA8);
      OUTLINED_FUNCTION_17();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[16];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
        v14 = a4[24];
      }
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_216735F38(uint64_t a1)
{
  result = sub_2166D7ECC(qword_280E41E98, type metadata accessor for SuperHeroLockup);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216735F90()
{
  type metadata accessor for MusicPageMetricsModifier();
  sub_2170089F4();
  sub_216B0D2E8();
  return swift_getWitnessTable();
}

uint64_t sub_216735FFC()
{
  if (*(v0 + 40) != 1)
  {
  }

  j__swift_release();

  sub_2166B8588();

  OUTLINED_FUNCTION_11_57();

  return swift_deallocObject();
}

uint64_t sub_2167360C0()
{

  if (*(v0 + 160) != 1)
  {
  }

  j__swift_release();

  sub_2166B8588();

  OUTLINED_FUNCTION_11_57();

  return swift_deallocObject();
}

uint64_t sub_216736184()
{
  swift_unknownObjectRelease();
  if (*(v0 + 56) != 1)
  {
  }

  j__swift_release();

  sub_2166B8588();

  return swift_deallocObject();
}

uint64_t sub_216736254()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC2B58);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC2B60);
  sub_2170089F4();
  OUTLINED_FUNCTION_5_0();
  sub_2166D9530(v0, &qword_27CAC2B58);
  OUTLINED_FUNCTION_6_72(&qword_280E2AC30);
  OUTLINED_FUNCTION_0_9();
  swift_getWitnessTable();
  sub_217008B74();
  sub_21700F164();
  OUTLINED_FUNCTION_0_8();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_5_76();
  return swift_getWitnessTable();
}

uint64_t sub_216736368(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a3[5];
LABEL_8:

    return __swift_getEnumTagSinglePayload(a1 + v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = type metadata accessor for MenuConfiguration(0);
    v8 = a3[7];
    goto LABEL_8;
  }

  v9 = *(a1 + a3[6] + 8);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_216736448(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a4[5];
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[6] + 8) = (a2 - 1);
      return result;
    }

    v9 = type metadata accessor for MenuConfiguration(0);
    v10 = a4[7];
  }

  return __swift_storeEnumTagSinglePayload(a1 + v10, a2, a2, v9);
}

uint64_t sub_216736524()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_65_3();

  return swift_deallocObject();
}

uint64_t sub_216736554()
{

  return swift_deallocObject();
}

uint64_t sub_21673658C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D284();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_216736644(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21700D284();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_2167366EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_216736780(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_216736844(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    if (a2 == 0x7FFFFFFF)
    {
      OUTLINED_FUNCTION_18_41();
      return (v10 + 1);
    }

    v8 = sub_217005EF4();
    v9 = a1 + *(a3 + 32);
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

void sub_216736914()
{
  OUTLINED_FUNCTION_14_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770);
  OUTLINED_FUNCTION_17();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    if (v3 == 0x7FFFFFFF)
    {
      *(v1 + *(v2 + 20) + 8) = (v0 - 1);
      return;
    }

    v6 = sub_217005EF4();
    v7 = v1 + *(v2 + 32);
  }

  __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
}

uint64_t sub_2167369E0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SocialProfileDescriptor(0);
  OUTLINED_FUNCTION_17();
  if (*(v5 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v4);
  }

  else
  {
    OUTLINED_FUNCTION_18_41();
    v8 = v7 - 1;
    if (v8 < 0)
    {
      v8 = -1;
    }

    return (v8 + 1);
  }
}

void sub_216736A8C()
{
  OUTLINED_FUNCTION_14_8();
  type metadata accessor for SocialProfileDescriptor(0);
  OUTLINED_FUNCTION_17();
  if (*(v5 + 84) == v3)
  {

    __swift_storeEnumTagSinglePayload(v1, v0, v0, v4);
  }

  else
  {
    *(v1 + *(v2 + 20) + 8) = v0;
  }
}

uint64_t sub_216736B28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D284();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = type metadata accessor for ModalActionModelDestinations.Destination();
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_216736BC4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_21700D284();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = type metadata accessor for ModalActionModelDestinations.Destination();
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_216736C84(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7598);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 32);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40);
      v10 = *(a3 + 36);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

void *sub_216736D68(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7598);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 32);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40);
      v10 = *(a4 + 36);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_216736E60(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700D284();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_216736EA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700D284();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_216736EF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D284();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_216736FA4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21700D284();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2167370A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = type metadata accessor for LockupArtwork();
    v8 = a1 + *(a3 + 40);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 20) + 24);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_216737180(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 20) + 24) = (a2 - 1);
      return result;
    }

    v9 = type metadata accessor for LockupArtwork();
    v10 = a1 + *(a4 + 40);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_21673725C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ContentDescriptor();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0);
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_216737304(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ContentDescriptor();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0);
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_2167373DC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    Friends = type metadata accessor for SocialFindFriendsController.Friend.Kind(0);
    OUTLINED_FUNCTION_36(Friends);
    if (*(v9 + 84) == a2)
    {
      v10 = *(a3 + 48);
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2EA0);
      v12 = a1 + v10;
    }

    else
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770);
      v12 = a1 + *(a3 + 64);
    }

    return __swift_getEnumTagSinglePayload(v12, a2, v11);
  }
}

uint64_t sub_2167374C8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    Friends = type metadata accessor for SocialFindFriendsController.Friend.Kind(0);
    OUTLINED_FUNCTION_36(Friends);
    if (*(v9 + 84) == a3)
    {
      v10 = *(a4 + 48);
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2EA0);
      v12 = v5 + v10;
    }

    else
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770);
      v12 = v5 + *(a4 + 64);
    }

    return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
  }

  return result;
}

uint64_t sub_2167375B0()
{

  OUTLINED_FUNCTION_19_5();

  return swift_deallocObject();
}

uint64_t sub_2167375E8()
{

  return swift_deallocObject();
}

uint64_t sub_216737628()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_216737660()
{

  return swift_deallocObject();
}

uint64_t sub_2167376B0()
{

  OUTLINED_FUNCTION_19_5();

  return swift_deallocObject();
}

uint64_t sub_2167376F8()
{

  OUTLINED_FUNCTION_19_5();

  return swift_deallocObject();
}

uint64_t sub_216737730@<X0>(uint64_t *a1@<X8>)
{
  result = sub_216B1D700();
  *a1 = result;
  return result;
}

uint64_t sub_216737760@<X0>(uint64_t *a1@<X8>)
{
  result = sub_216B1D6D8();
  *a1 = result;
  return result;
}

uint64_t sub_216737790()
{

  return swift_deallocObject();
}

uint64_t sub_2167377C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D284();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 6)
    {
      return v8 - 5;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_216737870(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21700D284();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 5;
  }

  return result;
}

uint64_t sub_216737940()
{
  v1 = *(type metadata accessor for UnifiedMessagesRequestAction() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);

  v3 = sub_21700D284();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_216737A40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
    v10 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_216737AE0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_216737B7C()
{

  sub_2168AEE00(*(v0 + 56), *(v0 + 64));
  sub_21680E444(*(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104));

  return swift_deallocObject();
}

uint64_t sub_216737BF8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC2F18);
  sub_2170067A4();
  sub_216B273E8();
  sub_216B2752C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_216737C7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_21700D284();
    v10 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_216737D10(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_21700D284();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_216737D90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 16);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD9D8);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_216737E1C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = -a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD9D8);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_216737EDC()
{

  return swift_deallocObject();
}

uint64_t sub_216737F14()
{
  type metadata accessor for ReportAConcern();
  OUTLINED_FUNCTION_117();
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_4_86();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_217008424();
    OUTLINED_FUNCTION_34();
    (*(v6 + 8))(v3 + v0);
  }

  else
  {
  }

  sub_2169C50D4(*(v1 + ((v5 + v2 + 7) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v5 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 16), *(v1 + ((v5 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 24));

  return swift_deallocObject();
}

uint64_t sub_216738028()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC2F80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC2F90);
  OUTLINED_FUNCTION_1_132();
  sub_2166D9530(v0, &qword_27CAC2F80);
  sub_2167B2E14();
  OUTLINED_FUNCTION_2_107();
  sub_2166D9530(v1, &qword_27CAC2F90);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2167381C4()
{
  if (*(v0 + 40) >= 4uLL)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 56);
  sub_216A906B4(*(v0 + 96), *(v0 + 104), *(v0 + 112));

  return swift_deallocObject();
}

uint64_t sub_21673821C()
{
  v1 = (type metadata accessor for OpenInClassicalExperienceAction() - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = sub_2170075A4();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  v7 = (v2 + v3 + *(v5 + 80)) & ~*(v5 + 80);

  sub_21700D284();
  OUTLINED_FUNCTION_9_0();
  (*(v8 + 8))(v0 + v2);
  v9 = v1[7];
  sub_21700C384();
  OUTLINED_FUNCTION_9_0();
  (*(v10 + 8))(v0 + v2 + v9);
  (*(v6 + 8))(v0 + v7, v4);

  return swift_deallocObject();
}

uint64_t sub_2167383A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for EmptyStateLockup();
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB90E0);
    v9 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_216738448()
{
  OUTLINED_FUNCTION_14_8();
  type metadata accessor for EmptyStateLockup();
  OUTLINED_FUNCTION_17();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB90E0);
    v7 = v1 + *(v2 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
}

uint64_t sub_216738540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    return OUTLINED_FUNCTION_0_11(*(a1 + 8));
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB90E0);
  v8 = a1 + *(a3 + 24);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_2167385C8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB90E0);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_216738654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) != a2)
  {
    return OUTLINED_FUNCTION_0_11(*(a1 + *(a3 + 20) + 8));
  }

  return __swift_getEnumTagSinglePayload(a1, a2, v6);
}

void sub_216738700()
{
  OUTLINED_FUNCTION_14_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  OUTLINED_FUNCTION_17();
  if (*(v5 + 84) == v3)
  {

    __swift_storeEnumTagSinglePayload(v1, v0, v0, v4);
  }

  else
  {
    *(v1 + *(v2 + 20) + 8) = v0;
  }
}

uint64_t sub_2167387AC()
{
  if ((*(v0 + 24) - 1) >= 9)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_216738818()
{
  OUTLINED_FUNCTION_49();
  v1 = (type metadata accessor for ReportMusicItemConcernAction() - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = sub_2170075A4();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  v7 = *(v5 + 80);

  sub_21700D284();
  OUTLINED_FUNCTION_34();
  (*(v8 + 8))(v0 + v2);
  v9 = v0 + v2 + v1[7];
  v10 = type metadata accessor for ReportableMusicItem();
  if (!OUTLINED_FUNCTION_9_1(v10))
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        sub_21700C924();
        goto LABEL_9;
      case 1u:
        sub_217006E94();
        goto LABEL_9;
      case 2u:
      case 3u:
        sub_21700C084();
LABEL_9:
        OUTLINED_FUNCTION_34();
        (*(v15 + 8))(v9);
        break;
      case 4u:
        v11 = sub_21700C4B4();
        if (!OUTLINED_FUNCTION_9_1(v11))
        {
          (*(*(v0 + v2 - 8) + 8))(v9, v0 + v2);
        }

        v12 = type metadata accessor for SocialProfileDescriptor(0);

        v13 = *(v12 + 32);
        sub_217005EF4();
        OUTLINED_FUNCTION_34();
        (*(v14 + 8))(v9 + v13);
        break;
      case 5u:

        break;
      default:
        break;
    }
  }

  (*(v6 + 8))(v0 + ((v2 + v3 + v7) & ~v7), v4);
  OUTLINED_FUNCTION_26();

  return swift_deallocObject();
}

uint64_t sub_216738AD8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_21700D284();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_216738B60(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_21700D284();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_216738C48(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_21700D284();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_216738CD0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_21700D284();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_216738D90(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 252)
  {
    v4 = *a1;
    if (v4 >= 4)
    {
      return v4 - 3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_21700D284();
    v9 = &a1[*(a3 + 24)];

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

_BYTE *sub_216738E10(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 252)
  {
    *result = a2 + 3;
  }

  else
  {
    v7 = sub_21700D284();
    v8 = &v5[*(a4 + 24)];

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_216738EDC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = OUTLINED_FUNCTION_102();
  type metadata accessor for MappedArtistLatestReleaseAndTopSongs(v6);
  OUTLINED_FUNCTION_17();
  if (*(v8 + 84) == v3)
  {
    v9 = v7;
    v10 = v4;
  }

  else
  {
    type metadata accessor for MappedSection(0);
    OUTLINED_FUNCTION_17();
    if (*(v12 + 84) == v3)
    {
      v9 = v11;
      v13 = a3[9];
    }

    else
    {
      if (v3 == 0x7FFFFFFF)
      {
        return OUTLINED_FUNCTION_22_1(*(v4 + a3[10]));
      }

      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7598);
      v13 = a3[15];
    }

    v10 = v4 + v13;
  }

  return __swift_getEnumTagSinglePayload(v10, v3, v9);
}

void sub_216738FE0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = OUTLINED_FUNCTION_102();
  type metadata accessor for MappedArtistLatestReleaseAndTopSongs(v8);
  OUTLINED_FUNCTION_17();
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v5;
  }

  else
  {
    type metadata accessor for MappedSection(0);
    OUTLINED_FUNCTION_17();
    if (*(v14 + 84) == a3)
    {
      v11 = v13;
      v15 = a4[9];
    }

    else
    {
      if (a3 == 0x7FFFFFFF)
      {
        *(v5 + a4[10]) = (v4 - 1);
        return;
      }

      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7598);
      v15 = a4[15];
    }

    v12 = v5 + v15;
  }

  __swift_storeEnumTagSinglePayload(v12, v4, v4, v11);
}

uint64_t sub_2167390F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_22_1(*(a1 + 40));
  }

  type metadata accessor for MappedSection(0);
  OUTLINED_FUNCTION_17();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = *(a3 + 40);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7598);
    v10 = *(a3 + 56);
  }

  return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
}

uint64_t sub_2167391BC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    type metadata accessor for MappedSection(0);
    OUTLINED_FUNCTION_17();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(a4 + 40);
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7598);
      v11 = *(a4 + 56);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_21673928C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _s7SectionV6HeaderVMa(0);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) != a2)
  {
    return OUTLINED_FUNCTION_22_1(*(a1 + *(a3 + 36) + 8));
  }

  return __swift_getEnumTagSinglePayload(a1, a2, v6);
}

void sub_21673932C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_102();
  _s7SectionV6HeaderVMa(v8);
  OUTLINED_FUNCTION_17();
  if (*(v10 + 84) == a3)
  {

    __swift_storeEnumTagSinglePayload(v5, v4, v4, v9);
  }

  else
  {
    *(v5 + *(a4 + 36) + 8) = (v4 - 1);
  }
}

uint64_t sub_2167393CC()
{
  type metadata accessor for ArtistLatestReleaseAndTopSongsLockupView.HeaderView();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABB7D0);
  v0 = OUTLINED_FUNCTION_46_22();
  type metadata accessor for ArtistLatestReleaseLockupView(v0);
  OUTLINED_FUNCTION_28_31();
  sub_2166D9530(v1, &qword_27CABB7D0);
  OUTLINED_FUNCTION_27_38();
  sub_2166D381C(v2, v3);
  OUTLINED_FUNCTION_40_2();
  type metadata accessor for PaginatingGridView();
  OUTLINED_FUNCTION_25_35();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_2170089F4();
  sub_2170089F4();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABFC30);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  sub_21700B1D4();
  OUTLINED_FUNCTION_7_76();
  swift_getWitnessTable();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_21_15(OpaqueTypeConformance2, MEMORY[0x277CDF678]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_16_6();
  sub_2166D9530(v5, &qword_27CABFC30);
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_0();
  sub_21700B084();
  OUTLINED_FUNCTION_22_9();
  OUTLINED_FUNCTION_34_4();
  sub_21700B4E4();
  OUTLINED_FUNCTION_34_4();
  sub_21700F164();
  type metadata accessor for TopSongsShelfCollection();
  OUTLINED_FUNCTION_46_22();
  sub_2170089F4();
  sub_2170089F4();
  sub_2170099F4();
  OUTLINED_FUNCTION_21_40();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC210);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  sub_21700B1D4();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_26_38();
  sub_2166D9530(v6, &qword_27CABC210);
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_0();
  sub_21700B084();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC33E0);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  OUTLINED_FUNCTION_34_4();
  sub_2170089F4();
  OUTLINED_FUNCTION_34_4();
  sub_21700F164();
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_22_9();
  OUTLINED_FUNCTION_34_4();
  sub_21700B4E4();
  OUTLINED_FUNCTION_0_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_0();
  sub_21700AF94();
  sub_2170089F4();
  sub_2170089F4();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_40_2();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_19_0();
  sub_21700B1D4();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_0();
  sub_21700B084();
  OUTLINED_FUNCTION_34_4();
  sub_21700F164();
  OUTLINED_FUNCTION_40_2();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_19_0();
  sub_21700B1D4();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_0();
  sub_21700B084();
  OUTLINED_FUNCTION_34_4();
  sub_2170089F4();
  OUTLINED_FUNCTION_34_4();
  sub_21700F164();
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_22_9();
  OUTLINED_FUNCTION_34_4();
  sub_21700B4E4();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_0();
  sub_21700B084();
  sub_2170089F4();
  OUTLINED_FUNCTION_46_22();
  sub_217009564();
  OUTLINED_FUNCTION_6_7();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_7_1();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_6_1();
  return swift_getWitnessTable();
}

uint64_t sub_216739B18()
{
  if (*(v0 + 40) >= 4uLL)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 56);
  sub_216A906B4(*(v0 + 96), *(v0 + 104), *(v0 + 112));

  return swift_deallocObject();
}

uint64_t sub_216739B70()
{
  v4 = type metadata accessor for TopSongsShelfCollection();
  v5 = *(*(v4 - 1) + 80);
  v6 = v0 + ((v5 + 32) & ~v5);
  sub_216838830(*v6, *(v6 + 8), *(v6 + 16), *(v6 + 24), *(v6 + 32));

  v7 = v6 + v4[10];

  v8 = type metadata accessor for MappedSection(0);
  v9 = (v7 + v8[6]);
  v10 = _s7SectionV6HeaderVMa(0);
  if (!OUTLINED_FUNCTION_15_10(v10))
  {
    v11 = OUTLINED_FUNCTION_38_27();
    v2 = _s7SectionV6HeaderV12HeaderLockupOMa(v11);
    v12 = OUTLINED_FUNCTION_16_1();
    if (!__swift_getEnumTagSinglePayload(v12, v13, v2))
    {
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:

          goto LABEL_18;
        case 1u:
          OUTLINED_FUNCTION_14_52();
          v19 = type metadata accessor for ComposerSectionHeader();
          v20 = v19[5];
          v3 = sub_21700D7A4();
          if (!OUTLINED_FUNCTION_176_0(&v9[v20]))
          {
            OUTLINED_FUNCTION_50();
            (*(v21 + 8))(&v9[v20], v3);
          }

          OUTLINED_FUNCTION_54_4(v19[6]);

          OUTLINED_FUNCTION_54_4(v19[10]);

          v22 = OUTLINED_FUNCTION_31_38(v19[11]);
          if (v23)
          {
            __swift_destroy_boxed_opaque_existential_1Tm(v22);
          }

          OUTLINED_FUNCTION_38_27();
          v2 = type metadata accessor for ContentDescriptor();
          v24 = OUTLINED_FUNCTION_16_1();
          if (!__swift_getEnumTagSinglePayload(v24, v25, v2))
          {

            v3 = *(v2 + 24);
            v26 = sub_217005EF4();
            if (!OUTLINED_FUNCTION_10_63(v26))
            {
              OUTLINED_FUNCTION_2_11();
              v27 = OUTLINED_FUNCTION_30_35();
              v28(v27);
            }
          }

          break;
        case 2u:
          if (*(v9 + 1))
          {

            if (*(v9 + 7))
            {
              __swift_destroy_boxed_opaque_existential_1Tm((v9 + 32));
            }
          }

          if (*(v9 + 10))
          {

            if (*(v9 + 16))
            {
              __swift_destroy_boxed_opaque_existential_1Tm((v9 + 104));
            }
          }

          type metadata accessor for DefaultSectionHeader();
          OUTLINED_FUNCTION_38_27();
          v2 = type metadata accessor for Artwork();
          v15 = OUTLINED_FUNCTION_16_1();
          if (!__swift_getEnumTagSinglePayload(v15, v16, v2))
          {
            sub_21700C4B4();
            OUTLINED_FUNCTION_9_0();
            (*(v17 + 8))(v9);
            v2 = *(v2 + 20);
            sub_21700C444();
            OUTLINED_FUNCTION_9_0();
            (*(v18 + 8))(&v9[v2]);
          }

          break;
        case 3u:
          if (*(v9 + 1))
          {

            if (*(v9 + 7))
            {
              __swift_destroy_boxed_opaque_existential_1Tm((v9 + 32));
            }
          }

LABEL_18:

          break;
        default:
          break;
      }
    }
  }

  v14 = v7 + v8[7];
  type metadata accessor for MappedSection.Content(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 4u:
    case 5u:
    case 0xDu:
    case 0x17u:
    case 0x35u:
    case 0x3Au:
    case 0x3Bu:
      goto LABEL_128;
    case 1u:
      sub_21700C1E4();
      OUTLINED_FUNCTION_9_0();
      (*(v172 + 8))(v14);
      v133 = &qword_27CAB7938;
      goto LABEL_130;
    case 2u:
      OUTLINED_FUNCTION_14_52();
      type metadata accessor for AnimatedTextListItem();
      goto LABEL_81;
    case 3u:
    case 7u:
    case 0xBu:
    case 0xEu:
    case 0xFu:
    case 0x12u:
    case 0x13u:
    case 0x1Au:
    case 0x1Bu:
    case 0x1Cu:
    case 0x1Fu:
    case 0x20u:
    case 0x21u:
    case 0x24u:
    case 0x2Du:
    case 0x33u:
    case 0x34u:
    case 0x36u:
    case 0x37u:
    case 0x38u:
    case 0x39u:
    case 0x3Du:
      goto LABEL_176;
    case 6u:
      v162 = OUTLINED_FUNCTION_14_52();
      v163 = type metadata accessor for MappedArtistLatestReleaseAndTopSongs(v162);
      OUTLINED_FUNCTION_33_27();
      v164 = sub_21700D7A4();
      if (!__swift_getEnumTagSinglePayload(v14 + v3, 1, v164))
      {
        OUTLINED_FUNCTION_50();
        (*(v165 + 8))(v14 + v3, v164);
      }

      v277 = v164;
      v166 = v14 + *(v163 + 24);
      if (!OUTLINED_FUNCTION_23_4(v166))
      {
        v167 = v166 + *(v1 + 20);
        v168 = _s7SectionV6HeaderV12HeaderLockupOMa(0);
        if (!OUTLINED_FUNCTION_37_33(v168))
        {
          switch(swift_getEnumCaseMultiPayload())
          {
            case 0u:

              goto LABEL_211;
            case 1u:
              __swift_destroy_boxed_opaque_existential_1Tm(v167);
              v257 = type metadata accessor for ComposerSectionHeader();
              if (!__swift_getEnumTagSinglePayload(v167 + v257[5], 1, v277))
              {
                OUTLINED_FUNCTION_50();
                (*(v258 + 8))(v167 + v259);
              }

              v260 = v167 + v257[11];
              if (*(v260 + 24))
              {
                __swift_destroy_boxed_opaque_existential_1Tm(v260);
              }

              v261 = v167 + v257[12];
              v262 = type metadata accessor for ContentDescriptor();
              if (!OUTLINED_FUNCTION_37_33(v262))
              {

                v263 = v257[6];
                v274 = sub_217005EF4();
                if (!__swift_getEnumTagSinglePayload(v261 + v263, 1, v274))
                {
                  OUTLINED_FUNCTION_50();
                  (*(v264 + 8))(v261 + v263);
                }
              }

              break;
            case 2u:
              if (*(v167 + 8))
              {

                if (*(v167 + 56))
                {
                  __swift_destroy_boxed_opaque_existential_1Tm(v167 + 32);
                }
              }

              if (*(v167 + 80))
              {

                if (*(v167 + 128))
                {
                  __swift_destroy_boxed_opaque_existential_1Tm(v167 + 104);
                }
              }

              v246 = v167 + *(type metadata accessor for DefaultSectionHeader() + 32);
              v247 = type metadata accessor for Artwork();
              if (!OUTLINED_FUNCTION_19_3(v247))
              {
                sub_21700C4B4();
                OUTLINED_FUNCTION_9_0();
                (*(v248 + 8))(v246);
                v273 = v246;
                v249 = *(v167 + 20);
                sub_21700C444();
                OUTLINED_FUNCTION_9_0();
                (*(v250 + 8))(v273 + v249);
              }

              break;
            case 3u:
              if (*(v167 + 8))
              {

                if (*(v167 + 56))
                {
                  __swift_destroy_boxed_opaque_existential_1Tm(v167 + 32);
                }
              }

LABEL_211:

              break;
            default:
              break;
          }
        }
      }

      v169 = v14 + *(v163 + 32);
      if (!OUTLINED_FUNCTION_23_4(v169))
      {
        v170 = (v169 + *(v1 + 20));
        v171 = _s7SectionV6HeaderV12HeaderLockupOMa(0);
        if (!__swift_getEnumTagSinglePayload(v170, 1, v171))
        {
          switch(swift_getEnumCaseMultiPayload())
          {
            case 0u:

              goto LABEL_216;
            case 1u:
              __swift_destroy_boxed_opaque_existential_1Tm(v170);
              v265 = type metadata accessor for ComposerSectionHeader();
              v275 = v265[5];
              if (!__swift_getEnumTagSinglePayload(&v170[v275], 1, v277))
              {
                OUTLINED_FUNCTION_50();
                (*(v266 + 8))(&v170[v275], v277);
              }

              v267 = &v170[v265[11]];
              if (*(v267 + 24))
              {
                __swift_destroy_boxed_opaque_existential_1Tm(v267);
              }

              v268 = &v170[v265[12]];
              v269 = type metadata accessor for ContentDescriptor();
              if (!OUTLINED_FUNCTION_176_0(v268))
              {

                v270 = *(v269 + 24);
                v271 = sub_217005EF4();
                if (!OUTLINED_FUNCTION_176_0(v268 + v270))
                {
                  OUTLINED_FUNCTION_50();
                  (*(v272 + 8))(v268 + v270, v271);
                }
              }

              break;
            case 2u:
              if (*(v170 + 1))
              {

                if (*(v170 + 7))
                {
                  __swift_destroy_boxed_opaque_existential_1Tm((v170 + 32));
                }
              }

              if (*(v170 + 10))
              {

                if (*(v170 + 16))
                {
                  __swift_destroy_boxed_opaque_existential_1Tm((v170 + 104));
                }
              }

              v251 = &v170[*(type metadata accessor for DefaultSectionHeader() + 32)];
              v252 = type metadata accessor for Artwork();
              if (!OUTLINED_FUNCTION_176_0(v251))
              {
                sub_21700C4B4();
                OUTLINED_FUNCTION_9_0();
                (*(v253 + 8))(v251);
                v254 = *(v252 + 20);
                sub_21700C444();
                OUTLINED_FUNCTION_9_0();
                (*(v255 + 8))(v251 + v254, v256);
              }

              break;
            case 3u:
              if (*(v170 + 1))
              {

                if (*(v170 + 7))
                {
                  __swift_destroy_boxed_opaque_existential_1Tm((v170 + 32));
                }
              }

LABEL_216:

              break;
            default:
              break;
          }
        }
      }

LABEL_128:

      goto LABEL_177;
    case 8u:
      OUTLINED_FUNCTION_47_24();
      v73 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_15_10(v73))
      {
        OUTLINED_FUNCTION_4_89();
        v74 = OUTLINED_FUNCTION_22_4();
        v75(v74);
      }

      v76 = type metadata accessor for ContainerDetailTracklistFooterLockup();
      OUTLINED_FUNCTION_2_111(v76);
      OUTLINED_FUNCTION_45_22();
      v77 = type metadata accessor for ContentDescriptor();
      if (!OUTLINED_FUNCTION_54_1(v77))
      {

        v78 = *(v3 + 24);
        v79 = sub_217005EF4();
        if (!OUTLINED_FUNCTION_176_0(v2 + v78))
        {
          OUTLINED_FUNCTION_50();
          (*(v80 + 8))(v2 + v78, v79);
        }
      }

      OUTLINED_FUNCTION_54_4(*(v1 + 32));

      if (*(v14 + *(v1 + 36) + 8))
      {
      }

      goto LABEL_176;
    case 9u:
      v81 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_15_10(v81))
      {
        OUTLINED_FUNCTION_4_89();
        v82 = OUTLINED_FUNCTION_22_4();
        v83(v82);
      }

      OUTLINED_FUNCTION_47_24();
      v84 = type metadata accessor for CuratorDetailHeaderComponentModel();
      __swift_destroy_boxed_opaque_existential_1Tm(v14 + v84[5]);
      OUTLINED_FUNCTION_54_4(v84[6]);

      v85 = v84[7];
      v276 = sub_217005EF4();
      if (!__swift_getEnumTagSinglePayload(v14 + v85, 1, v276))
      {
        OUTLINED_FUNCTION_50();
        (*(v86 + 8))(v14 + v85);
      }

      v87 = v14 + v84[8];
      v88 = type metadata accessor for Artwork();
      if (!OUTLINED_FUNCTION_37_33(v88))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v89 + 8))(v87);
        v90 = *(v85 + 20);
        sub_21700C444();
        OUTLINED_FUNCTION_9_0();
        (*(v91 + 8))(v87 + v90);
      }

      v92 = v14 + v84[10];
      if (!OUTLINED_FUNCTION_176_0(v92))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v93 + 8))(v92);
        v94 = *(v85 + 20);
        sub_21700C444();
        OUTLINED_FUNCTION_9_0();
        (*(v95 + 8))(v92 + v94);
      }

      v96 = v14 + v84[11];
      v97 = type metadata accessor for VideoArtwork();
      if (!OUTLINED_FUNCTION_19_3(v97))
      {

        v98 = *(v92 + 20);
        sub_21700C444();
        OUTLINED_FUNCTION_9_0();
        (*(v99 + 8))(v96 + v98);
      }

      OUTLINED_FUNCTION_38_27();
      v100 = type metadata accessor for ContentDescriptor();
      v101 = OUTLINED_FUNCTION_16_1();
      if (!__swift_getEnumTagSinglePayload(v101, v102, v100))
      {

        v103 = *(v100 + 24);
        if (!__swift_getEnumTagSinglePayload(v14 + v103, 1, v276))
        {
          OUTLINED_FUNCTION_50();
          (*(v104 + 8))(v14 + v103, v105);
        }
      }

      goto LABEL_177;
    case 0xAu:
      OUTLINED_FUNCTION_14_52();
      v138 = type metadata accessor for EmptyStateLockup();
      OUTLINED_FUNCTION_33_27();
      v139 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_23_4(v14 + v3))
      {
        OUTLINED_FUNCTION_4_89();
        (*(v140 + 8))(v14 + v3, v139);
      }

      OUTLINED_FUNCTION_54_4(v138[7]);

      OUTLINED_FUNCTION_54_4(v138[8]);

      OUTLINED_FUNCTION_54_4(v138[9]);

      v141 = v14 + v138[10];
      v1 = type metadata accessor for Artwork();
      if (!OUTLINED_FUNCTION_23_4(v141))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v142 + 8))(v141);
        v143 = *(v1 + 20);
        sub_21700C444();
        OUTLINED_FUNCTION_9_0();
        (*(v144 + 8))(v141 + v143);
      }

      OUTLINED_FUNCTION_38_27();
      v145 = type metadata accessor for ColorSchemeArtwork();
      v146 = OUTLINED_FUNCTION_16_1();
      if (!__swift_getEnumTagSinglePayload(v146, v147, v145))
      {
        v148 = OUTLINED_FUNCTION_16_1();
        if (!__swift_getEnumTagSinglePayload(v148, v149, v1))
        {
          sub_21700C4B4();
          OUTLINED_FUNCTION_9_0();
          (*(v150 + 8))(v14);
          v151 = *(v1 + 20);
          sub_21700C444();
          OUTLINED_FUNCTION_9_0();
          (*(v152 + 8))(v14 + v151);
        }

        v14 += *(v145 + 20);
        v153 = OUTLINED_FUNCTION_16_1();
        if (!__swift_getEnumTagSinglePayload(v153, v154, v1))
        {
          goto LABEL_159;
        }
      }

      goto LABEL_177;
    case 0xCu:
      v62 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_15_10(v62))
      {
        OUTLINED_FUNCTION_4_89();
        v63 = OUTLINED_FUNCTION_22_4();
        v64(v63);
      }

      v65 = type metadata accessor for GroupedTextListLockup();
      OUTLINED_FUNCTION_2_111(v65);
      OUTLINED_FUNCTION_45_22();
      v66 = type metadata accessor for ModalPresentationDescriptor();
      if (!OUTLINED_FUNCTION_54_1(v66))
      {

        v67 = *(v3 + 40);
        sub_21700D284();
        OUTLINED_FUNCTION_9_0();
        (*(v68 + 8))(v2 + v67);
      }

      goto LABEL_176;
    case 0x10u:
      OUTLINED_FUNCTION_14_52();
      v114 = type metadata accessor for InlineUpsell();
      OUTLINED_FUNCTION_33_27();
      v115 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_10_63(v115))
      {
        OUTLINED_FUNCTION_2_11();
        v116 = OUTLINED_FUNCTION_30_35();
        v117(v116);
      }

      OUTLINED_FUNCTION_11_62();

      OUTLINED_FUNCTION_54_4(v114[7]);

      OUTLINED_FUNCTION_54_4(v114[8]);

      v118 = OUTLINED_FUNCTION_31_38(v114[9]);
      if (v119)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v118);
      }

      v120 = OUTLINED_FUNCTION_31_38(v114[10]);
      if (v121)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v120);
      }

      v122 = v114[11];
      goto LABEL_139;
    case 0x11u:
      OUTLINED_FUNCTION_14_52();
      v43 = type metadata accessor for LandingUpsell();
      OUTLINED_FUNCTION_33_27();
      v44 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_10_63(v44))
      {
        OUTLINED_FUNCTION_2_11();
        v45 = OUTLINED_FUNCTION_30_35();
        v46(v45);
      }

      OUTLINED_FUNCTION_11_62();

      OUTLINED_FUNCTION_54_4(v43[7]);

      OUTLINED_FUNCTION_54_4(v43[8]);

      OUTLINED_FUNCTION_54_4(v43[9]);

      v47 = OUTLINED_FUNCTION_31_38(v43[10]);
      if (v48)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v47);
      }

      v49 = OUTLINED_FUNCTION_31_38(v43[11]);
      if (v50)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v49);
      }

      v51 = OUTLINED_FUNCTION_31_38(v43[12]);
      if (v52)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v51);
      }

      v53 = v14 + v43[13];
      v54 = type metadata accessor for Artwork();
      if (!__swift_getEnumTagSinglePayload(v53, 1, v54))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v55 + 8))(v53);
        v56 = *(v54 + 20);
        sub_21700C444();
        OUTLINED_FUNCTION_9_0();
        (*(v57 + 8))(v53 + v56);
      }

      v14 += v43[14];
      v58 = OUTLINED_FUNCTION_16_1();
      if (__swift_getEnumTagSinglePayload(v58, v59, v54))
      {
        goto LABEL_177;
      }

      sub_21700C4B4();
      OUTLINED_FUNCTION_9_0();
      (*(v60 + 8))(v14);
      v61 = *(v54 + 20);
      goto LABEL_160;
    case 0x14u:
      v127 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_15_10(v127))
      {
        OUTLINED_FUNCTION_4_89();
        v128 = OUTLINED_FUNCTION_22_4();
        v129(v128);
      }

      v130 = type metadata accessor for ListSection();
      OUTLINED_FUNCTION_2_111(v130);
      OUTLINED_FUNCTION_54_4(v131);

      OUTLINED_FUNCTION_54_4(*(v1 + 28));

      goto LABEL_176;
    case 0x15u:

      __swift_destroy_boxed_opaque_existential_1Tm(v14 + 8);
      v155 = type metadata accessor for GradientListRowModel();
      v156 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_10_63(v156))
      {
        OUTLINED_FUNCTION_2_11();
        v157 = OUTLINED_FUNCTION_30_35();
        v158(v157);
      }

      v159 = OUTLINED_FUNCTION_31_38(*(v155 + 28));
      if (v160)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v159);
      }

      v161 = v14 + *(v155 + 32);
      if (*(v161 + 32))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v161 + 8);
      }

      goto LABEL_121;
    case 0x16u:
      v200 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_15_10(v200))
      {
        OUTLINED_FUNCTION_4_89();
        v201 = OUTLINED_FUNCTION_22_4();
        v202(v201);
      }

      v203 = type metadata accessor for ParagraphComponentModel();
      OUTLINED_FUNCTION_2_111(v203);
      OUTLINED_FUNCTION_54_4(v204);
      goto LABEL_152;
    case 0x18u:
      sub_21700C924();
      OUTLINED_FUNCTION_9_0();
      (*(v132 + 8))(v14);
      v133 = &qword_27CAB7940;
LABEL_130:
      __swift_instantiateConcreteTypeFromMangledNameV2(v133);
      goto LABEL_176;
    case 0x19u:
      v134 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_15_10(v134))
      {
        OUTLINED_FUNCTION_4_89();
        v135 = OUTLINED_FUNCTION_22_4();
        v136(v135);
      }

      v137 = type metadata accessor for PopoverSelector();
      OUTLINED_FUNCTION_2_111(v137);
LABEL_152:

      goto LABEL_174;
    case 0x1Du:
      v187 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_15_10(v187))
      {
        OUTLINED_FUNCTION_4_89();
        v188 = OUTLINED_FUNCTION_22_4();
        v189(v188);
      }

      ContextLockup = type metadata accessor for SearchQueryContextLockup();
      OUTLINED_FUNCTION_2_111(ContextLockup);
      OUTLINED_FUNCTION_54_4(v191);

      OUTLINED_FUNCTION_54_4(*(v1 + 32));

      OUTLINED_FUNCTION_54_4(*(v1 + 36));

      OUTLINED_FUNCTION_54_4(*(v1 + 40));

      goto LABEL_176;
    case 0x1Eu:
      __swift_destroy_boxed_opaque_existential_1Tm(v14);

      v61 = *(type metadata accessor for MappedSearchResultsList(0) + 24);
      sub_21700D194();
      goto LABEL_161;
    case 0x22u:
      OUTLINED_FUNCTION_14_52();
      v1 = type metadata accessor for SocialOnboardingNotificationSettingsPageLockup();
      OUTLINED_FUNCTION_33_27();
      v110 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_10_63(v110))
      {
        OUTLINED_FUNCTION_2_11();
        v111 = OUTLINED_FUNCTION_30_35();
        v112(v111);
      }

      goto LABEL_87;
    case 0x23u:
      __swift_destroy_boxed_opaque_existential_1Tm(v14);

      v109 = *(type metadata accessor for SocialOnboardingPrivacySettingsPageLockup() + 48);
      goto LABEL_170;
    case 0x25u:

      __swift_destroy_boxed_opaque_existential_1Tm(v14 + 16);
      v1 = type metadata accessor for SocialOnboardingUserNameHandlePageLockup();
      v233 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_10_63(v233))
      {
        OUTLINED_FUNCTION_2_11();
        v234 = OUTLINED_FUNCTION_30_35();
        v235(v234);
      }

LABEL_174:
      v113 = *(v1 + 28);
      goto LABEL_175;
    case 0x26u:
      v36 = type metadata accessor for Artwork();
      if (!OUTLINED_FUNCTION_15_10(v36))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v37 + 8))(v14);
        v1 = *(v1 + 20);
        sub_21700C444();
        OUTLINED_FUNCTION_9_0();
        (*(v38 + 8))(v14 + v1);
      }

      v39 = type metadata accessor for SocialOnboardingWelcomePageLockup();
      OUTLINED_FUNCTION_18_42(v39);
      v40 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_10_63(v40))
      {
        OUTLINED_FUNCTION_2_11();
        v41 = OUTLINED_FUNCTION_30_35();
        v42(v41);
      }

      OUTLINED_FUNCTION_54_4(*(v1 + 28));

LABEL_87:
      v113 = *(v1 + 32);
      goto LABEL_175;
    case 0x27u:
      OUTLINED_FUNCTION_47_24();
      v205 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_15_10(v205))
      {
        OUTLINED_FUNCTION_4_89();
        v206 = OUTLINED_FUNCTION_22_4();
        v207(v206);
      }

      v208 = type metadata accessor for SocialProfileDetailHeaderLockup();
      OUTLINED_FUNCTION_2_111(v208);
      v210 = v14 + v209;

      v211 = *(type metadata accessor for ContentDescriptor() + 24);
      v212 = sub_217005EF4();
      if (!OUTLINED_FUNCTION_49_22(v212))
      {
        OUTLINED_FUNCTION_2_11();
        (*(v213 + 8))(v210 + v211, v2);
      }

      OUTLINED_FUNCTION_54_4(*(v1 + 28));

      OUTLINED_FUNCTION_54_4(*(v1 + 32));

      OUTLINED_FUNCTION_38_27();
      v214 = type metadata accessor for Artwork();
      if (!OUTLINED_FUNCTION_15_10(v214))
      {
LABEL_159:
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v215 + 8))(v14);
        v61 = *(v1 + 20);
LABEL_160:
        sub_21700C444();
LABEL_161:
        OUTLINED_FUNCTION_9_0();
        (*(v216 + 8))(v14 + v61, v217);
      }

      goto LABEL_177;
    case 0x28u:
      OUTLINED_FUNCTION_47_24();
      v218 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_15_10(v218))
      {
        OUTLINED_FUNCTION_4_89();
        v219 = OUTLINED_FUNCTION_22_4();
        v220(v219);
      }

      v221 = type metadata accessor for SocialProfileEditorHeaderLockup(0);
      OUTLINED_FUNCTION_2_111(v221);
      v223 = v14 + v222;

      v224 = *(type metadata accessor for ContentDescriptor() + 24);
      v225 = sub_217005EF4();
      if (!OUTLINED_FUNCTION_49_22(v225))
      {
        OUTLINED_FUNCTION_2_11();
        (*(v226 + 8))(v223 + v224, v2);
      }

      OUTLINED_FUNCTION_54_4(*(v1 + 28));

      OUTLINED_FUNCTION_54_4(*(v1 + 32));

      OUTLINED_FUNCTION_54_4(*(v1 + 44));

      OUTLINED_FUNCTION_54_4(*(v1 + 48));

      OUTLINED_FUNCTION_54_4(*(v1 + 52));

      OUTLINED_FUNCTION_54_4(*(v1 + 56));

      OUTLINED_FUNCTION_45_22();
      v227 = type metadata accessor for Artwork();
      if (!OUTLINED_FUNCTION_54_1(v227))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v228 + 8))(v2);
        v229 = *(v223 + 20);
        sub_21700C444();
        OUTLINED_FUNCTION_9_0();
        (*(v230 + 8))(v2 + v229);
      }

      OUTLINED_FUNCTION_54_4(*(v1 + 68));
      goto LABEL_176;
    case 0x29u:
      v173 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_15_10(v173))
      {
        OUTLINED_FUNCTION_4_89();
        v174 = OUTLINED_FUNCTION_22_4();
        v175(v174);
      }

      FriendsButtonComponentModel = type metadata accessor for SocialProfileFindFriendsButtonComponentModel();
      OUTLINED_FUNCTION_2_111(FriendsButtonComponentModel);
      OUTLINED_FUNCTION_54_4(v177);

      v122 = *(v1 + 28);
      goto LABEL_139;
    case 0x2Au:
      v123 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_15_10(v123))
      {
        OUTLINED_FUNCTION_4_89();
        v124 = OUTLINED_FUNCTION_22_4();
        v125(v124);
      }

      v126 = type metadata accessor for SocialProfileDetailViewFollowRequestsHeader();
      OUTLINED_FUNCTION_18_42(v126);
      goto LABEL_176;
    case 0x2Bu:
      v178 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_15_10(v178))
      {
        OUTLINED_FUNCTION_4_89();
        v179 = OUTLINED_FUNCTION_22_4();
        v180(v179);
      }

      v181 = type metadata accessor for SocialProfileFollowRequestResponseHeader();
      OUTLINED_FUNCTION_2_111(v181);
      OUTLINED_FUNCTION_54_4(v182);

      OUTLINED_FUNCTION_54_4(*(v1 + 28));

      v183 = OUTLINED_FUNCTION_31_38(*(v1 + 32));
      if (v184)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v183);
      }

      v122 = *(v1 + 36);
LABEL_139:
      v185 = OUTLINED_FUNCTION_31_38(v122);
      if (v186)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v185);
      }

      goto LABEL_177;
    case 0x2Cu:
      v69 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_15_10(v69))
      {
        OUTLINED_FUNCTION_4_89();
        v70 = OUTLINED_FUNCTION_22_4();
        v71(v70);
      }

      v72 = type metadata accessor for SocialProfileFollowRequestsPageComponentModel();
      OUTLINED_FUNCTION_18_42(v72);
      goto LABEL_176;
    case 0x2Eu:
      OUTLINED_FUNCTION_14_52();
      type metadata accessor for SocialOnboardingSharedPlaylistPageLockup();
LABEL_81:
      OUTLINED_FUNCTION_33_27();
      v106 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_10_63(v106))
      {
        OUTLINED_FUNCTION_2_11();
        v107 = OUTLINED_FUNCTION_30_35();
        v108(v107);
      }

      goto LABEL_176;
    case 0x2Fu:
      OUTLINED_FUNCTION_14_52();
      type metadata accessor for SocialOnboardingFindFriendsPageSectionLockup();
      OUTLINED_FUNCTION_33_27();
      v29 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_10_63(v29))
      {
        OUTLINED_FUNCTION_2_11();
        v30 = OUTLINED_FUNCTION_30_35();
        v31(v30);
      }

LABEL_121:

      goto LABEL_176;
    case 0x30u:
      v32 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_15_10(v32))
      {
        OUTLINED_FUNCTION_4_89();
        v33 = OUTLINED_FUNCTION_22_4();
        v34(v33);
      }

      v35 = type metadata accessor for SocialProfileHorizontalLockupSection();
      OUTLINED_FUNCTION_2_111(v35);

      if (*(v14 + *(v1 + 28)) == 1)
      {
        goto LABEL_177;
      }

LABEL_176:

LABEL_177:
      v236 = v8[9];
      v237 = sub_21700D7A4();
      if (!__swift_getEnumTagSinglePayload(v7 + v236, 1, v237))
      {
        OUTLINED_FUNCTION_50();
        (*(v238 + 8))(v7 + v236, v237);
      }

      v239 = v7 + v8[10];
      v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7948);
      if (!__swift_getEnumTagSinglePayload(v239, 1, v240))
      {

        v241 = *(v240 + 36);
        sub_21700CDF4();
        OUTLINED_FUNCTION_9_0();
        (*(v242 + 8))(v239 + v241);
      }

      swift_unknownObjectRelease();
      sub_216684F5C(*(v6 + v4[13]), *(v6 + v4[13] + 8));
      v243 = v4[14];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7580);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_217008844();
        OUTLINED_FUNCTION_9_0();
        (*(v244 + 8))(v6 + v243);
      }

      else
      {
      }

      return swift_deallocObject();
    case 0x31u:
      __swift_destroy_boxed_opaque_existential_1Tm(v14);

      goto LABEL_176;
    case 0x32u:
      OUTLINED_FUNCTION_14_52();
      v109 = *(type metadata accessor for Spacer() + 20);
LABEL_170:
      v231 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_23_4(v14 + v109))
      {
        OUTLINED_FUNCTION_4_89();
        (*(v232 + 8))(v14 + v109, v231);
      }

      goto LABEL_177;
    case 0x3Cu:
      OUTLINED_FUNCTION_14_52();
      v192 = type metadata accessor for VerticalArtworkListItem();
      OUTLINED_FUNCTION_33_27();
      v193 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_10_63(v193))
      {
        OUTLINED_FUNCTION_2_11();
        v194 = OUTLINED_FUNCTION_30_35();
        v195(v194);
      }

      OUTLINED_FUNCTION_11_62();

      OUTLINED_FUNCTION_45_22();
      sub_21700C4B4();
      OUTLINED_FUNCTION_9_0();
      (*(v196 + 8))(v2);
      type metadata accessor for Artwork();
      OUTLINED_FUNCTION_33_27();
      sub_21700C444();
      OUTLINED_FUNCTION_9_0();
      (*(v197 + 8))(v2 + v3);
      v198 = OUTLINED_FUNCTION_31_38(*(v192 + 32));
      if (v199)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v198);
      }

      v113 = *(v192 + 36);
LABEL_175:
      OUTLINED_FUNCTION_54_4(v113);
      goto LABEL_176;
    default:
      goto LABEL_177;
  }
}

uint64_t sub_21673BB70()
{
  type metadata accessor for AppFullScreenCoverDestinationViewControllerRepresentable();
  swift_getAssociatedTypeWitness();
  sub_217009564();
  OUTLINED_FUNCTION_0_162();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_6_1();
  return swift_getWitnessTable();
}

uint64_t sub_21673BC38()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

__n128 sub_21673BCAC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_21673BCB8(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_11:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  OUTLINED_FUNCTION_17();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[5];
LABEL_10:
    v9 = a1 + v12;
    goto LABEL_11;
  }

  if (a2 != 0x7FFFFFFF)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
    v12 = a3[7];
    goto LABEL_10;
  }

  v13 = *(a1 + a3[6] + 24);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_21673BDEC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      if (a3 == 0x7FFFFFFF)
      {
        *(a1 + a4[6] + 24) = (a2 - 1);
        return;
      }

      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
      v14 = a4[7];
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_21673BF24()
{

  return swift_deallocObject();
}

uint64_t sub_21673BF64()
{
  OUTLINED_FUNCTION_4_3();
  if (v0 == v2)
  {
    OUTLINED_FUNCTION_11_1();
    return (v3 + 1);
  }

  else
  {
    v5 = v1;
    v6 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370);
    OUTLINED_FUNCTION_17();
    if (*(v7 + 84) == v6)
    {
      v8 = *(v5 + 24);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40);
      v8 = *(v5 + 32);
    }

    v9 = OUTLINED_FUNCTION_19_1(v8);

    return __swift_getEnumTagSinglePayload(v9, v10, v11);
  }
}

void sub_21673C034(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_3();
  if (v4 == v6)
  {
    *v2 = (a2 - 1);
  }

  else
  {
    v7 = v5;
    v8 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370);
    OUTLINED_FUNCTION_17();
    if (*(v9 + 84) == v8)
    {
      v10 = *(v7 + 24);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40);
      v10 = *(v7 + 32);
    }

    v11 = OUTLINED_FUNCTION_19_1(v10);

    __swift_storeEnumTagSinglePayload(v11, v12, a2, v13);
  }
}

uint64_t sub_21673C110(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC36A0);
  OUTLINED_FUNCTION_34();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_21673C170()
{
  v2 = sub_2170067A4();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  type metadata accessor for MenuConfiguration(0);
  OUTLINED_FUNCTION_4_4();
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  (*(v3 + 8))(v1 + v4, v2);
  v8 = v1 + v7;
  v9 = type metadata accessor for ContentDescriptor();
  if (!__swift_getEnumTagSinglePayload(v1 + v7, 1, v9))
  {

    v10 = *(v9 + 24);
    v11 = sub_217005EF4();
    if (!__swift_getEnumTagSinglePayload(v8 + v10, 1, v11))
    {
      (*(*(v11 - 8) + 8))(v8 + v10, v11);
    }
  }

  v12 = v8 + *(v0 + 20);
  type metadata accessor for MenuContext(0);
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_21700C8E4();
    OUTLINED_FUNCTION_34();
    (*(v13 + 8))(v12);
    v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74B0) + 48);
    v15 = sub_21700C924();
    if (!__swift_getEnumTagSinglePayload(v12 + v14, 1, v15))
    {
      (*(*(v15 - 8) + 8))(v12 + v14, v15);
    }
  }

  v16 = v8 + *(v0 + 32);
  if (*(v16 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
  }

  return swift_deallocObject();
}

uint64_t sub_21673C460()
{
  OUTLINED_FUNCTION_4_3();
  if (v1 == v2)
  {
    OUTLINED_FUNCTION_11_1();
    return (v3 + 1);
  }

  else
  {
    v5 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7598);
    v6 = OUTLINED_FUNCTION_19_1(*(v5 + 32));

    return __swift_getEnumTagSinglePayload(v6, v7, v8);
  }
}

void sub_21673C4E4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_3();
  if (v5 == v6)
  {
    *(v2 + 48) = (a2 - 1);
  }

  else
  {
    v7 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7598);
    v8 = OUTLINED_FUNCTION_19_1(*(v7 + 32));

    __swift_storeEnumTagSinglePayload(v8, v9, a2, v10);
  }
}

uint64_t sub_21673C568(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  OUTLINED_FUNCTION_17();
  if (*(v5 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v4);
  }

  else
  {
    OUTLINED_FUNCTION_11_1();
    v8 = v7 - 1;
    if (v8 < 0)
    {
      v9 = -1;
    }

    else
    {
      v9 = v8;
    }

    v10 = v9 - 8;
    if (v8 >= 9)
    {
      return v10;
    }

    else
    {
      return 0;
    }
  }
}

void sub_21673C62C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {

    __swift_storeEnumTagSinglePayload(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 + 9);
  }
}

uint64_t sub_21673C704()
{
  if ((*(v0 + 24) - 1) >= 9)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21673C7CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21700D284();
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    sub_217005EF4();
    OUTLINED_FUNCTION_17();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = *(a3 + 20);
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0);
      v12 = *(a3 + 24);
    }

    v9 = a1 + v12;
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_21673C8B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_21700D284();
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_217005EF4();
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = *(a4 + 20);
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0);
      v14 = *(a4 + 24);
    }

    v11 = a1 + v14;
  }

  return __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_21673C99C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_217009124();
    v10 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_21673CA30(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_217009124();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21673CACC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3850);
  sub_216B54B6C();
  sub_217009F14();
  sub_2170087F4();
  OUTLINED_FUNCTION_38_28();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_37_34();
  sub_216B54D10(v0, v1);
  swift_getOpaqueTypeMetadata2();
  sub_2170091D4();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_3_110();
  sub_216B54D10(v2, v3);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7AE8);
  sub_217009574();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_1_141();
  sub_216B54D10(v4, v5);
  OUTLINED_FUNCTION_35_31();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB76C0);
  sub_2170089F4();
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_57_0();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_17_48();
  sub_2166D9530(v6, v7);
  OUTLINED_FUNCTION_0_9();
  swift_getWitnessTable();
  return OUTLINED_FUNCTION_57_0();
}

uint64_t sub_21673CD88()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3868);
  sub_217009574();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3860);
  sub_2170091D4();
  OUTLINED_FUNCTION_28_1();
  sub_2166D9530(v0, &qword_27CAC3860);
  OUTLINED_FUNCTION_3_110();
  sub_216B54D10(v1, v2);
  OUTLINED_FUNCTION_2_9();
  OUTLINED_FUNCTION_57_0();
  OUTLINED_FUNCTION_1_141();
  sub_216B54D10(v3, v4);
  OUTLINED_FUNCTION_35_31();
  return OUTLINED_FUNCTION_57_0();
}

uint64_t sub_21673CE94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ContentDescriptor();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0);
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_21673CF3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ContentDescriptor();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0);
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_21673D028()
{
  v3 = *(v0 + 24);
  v1 = *(type metadata accessor for PageLoadingView() - 8);
  (*(*(v3 - 8) + 8))(v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_21673D154(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, a2, v4);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21673D1A8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);

  return __swift_storeEnumTagSinglePayload(a1, v5, a3, v6);
}

uint64_t sub_21673D254()
{
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC38D0);
  sub_2170089F4();
  sub_2170089F4();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_7_5();
  sub_2166D9530(v0, &qword_27CAC38D0);
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_21673D384(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_11:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v14 = a3[17];
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
      v14 = a3[24];
    }

    v9 = a1 + v14;
    goto LABEL_11;
  }

  v10 = *(a1 + a3[5] + 24);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

void sub_21673D4B8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[5] + 24) = (a2 - 1);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[17];
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
      v14 = a4[24];
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_21673D5E8(uint64_t a1)
{
  result = sub_2166D5774(qword_280E3D5F0, type metadata accessor for PlaylistTrackLockup);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21673D640()
{

  return swift_deallocObject();
}

uint64_t sub_21673D688(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3918);
  OUTLINED_FUNCTION_34();
  (*(v4 + 16))(a2, a1);
  return a2;
}

uint64_t sub_21673D6F0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3918);
  OUTLINED_FUNCTION_34();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_21673D7A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_216B59FF4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_21673D88C()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_143();

  return swift_deallocObject();
}

uint64_t sub_21673D8C0()
{

  OUTLINED_FUNCTION_181();

  return swift_deallocObject();
}

uint64_t sub_21673D9B4()
{
  type metadata accessor for AppDestinationViewControllerRepresentable();
  swift_getAssociatedTypeWitness();
  sub_217009564();
  OUTLINED_FUNCTION_0_169();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_6_1();
  return swift_getWitnessTable();
}

uint64_t sub_21673DAC0()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_21673DAF8()
{

  return swift_deallocObject();
}

uint64_t sub_21673DB30()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21673DBAC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = (type metadata accessor for SetPersistenceItemAction() - 8);
  v8 = (v4 + v6 + *(*v7 + 80)) & ~*(*v7 + 80);
  v9 = *(*v7 + 64);
  v10 = type metadata accessor for SelectTabAction();
  OUTLINED_FUNCTION_2(v10);
  v12 = (v8 + v9 + *(v11 + 80)) & ~*(v11 + 80);
  v14 = (*(v13 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v4, v1);
  v15 = sub_21700D284();
  OUTLINED_FUNCTION_34();
  v17 = *(v16 + 8);
  v17(v0 + v8, v15);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + v8 + v7[7]);

  v17(v0 + v12, v15);

  return swift_deallocObject();
}

uint64_t sub_21673DDB0()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_181();

  return swift_deallocObject();
}

uint64_t sub_21673DDF0()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_35_3();

  return swift_deallocObject();
}

uint64_t sub_21673DE30()
{
  _Block_release(*(v0 + 32));

  OUTLINED_FUNCTION_35_3();

  return swift_deallocObject();
}

uint64_t sub_21673DE7C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = (type metadata accessor for OpenExternalURLAction() - 8);
  v8 = (v4 + v6 + *(*v7 + 80)) & ~*(*v7 + 80);
  v9 = (*(*v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v4, v1);
  sub_217005EF4();
  OUTLINED_FUNCTION_34();
  (*(v10 + 8))(v0 + v8);
  v11 = v7[8];
  sub_21700D284();
  OUTLINED_FUNCTION_34();
  (*(v12 + 8))(v0 + v8 + v11);

  return swift_deallocObject();
}

uint64_t sub_21673E024()
{
  MEMORY[0x21CEA1520](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21673E05C()
{

  return swift_deallocObject();
}

uint64_t sub_21673E0C0()
{
  OUTLINED_FUNCTION_0_0();
  v0 = sub_216B61F3C();
  return OUTLINED_FUNCTION_1_11(v0);
}

uint64_t sub_21673E10C()
{
  OUTLINED_FUNCTION_0_0();
  v0 = sub_216B61F14();
  return OUTLINED_FUNCTION_1_11(v0);
}

uint64_t sub_21673E158()
{
  OUTLINED_FUNCTION_0_0();
  v0 = sub_216B61EEC();
  return OUTLINED_FUNCTION_1_11(v0);
}

uint64_t sub_21673E1A4()
{
  OUTLINED_FUNCTION_0_0();
  v0 = sub_216B61EC4();
  return OUTLINED_FUNCTION_1_11(v0);
}

uint64_t sub_21673E1F0()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_216B61DD8();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_21673E21C()
{
  OUTLINED_FUNCTION_0_0();
  v0 = sub_216B61DB0();
  return OUTLINED_FUNCTION_1_11(v0);
}

uint64_t sub_21673E268()
{
  OUTLINED_FUNCTION_0_0();
  v0 = sub_216B61D88();
  return OUTLINED_FUNCTION_1_11(v0);
}

uint64_t sub_21673E2B4()
{
  OUTLINED_FUNCTION_0_0();
  v0 = sub_216B61D60();
  return OUTLINED_FUNCTION_1_11(v0);
}

uint64_t sub_21673E310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40);
    v9 = a1 + *(a3 + 40);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_21673E3A4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40);
    v8 = v5 + *(a4 + 40);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21673E440()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8BB8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3CA8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3CB0);
  sub_216B6A524();
  sub_217009F14();
  OUTLINED_FUNCTION_2_115();
  sub_21700B4E4();
  OUTLINED_FUNCTION_0_2();
  swift_getWitnessTable();
  sub_21700AF94();
  OUTLINED_FUNCTION_6_7();
  return swift_getWitnessTable();
}

uint64_t sub_21673E518(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_21673E56C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_21673E5C4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21673E5FC()
{

  return swift_deallocObject();
}

uint64_t sub_21673E634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_21673E6C8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21673E77C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D284();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_21673E824(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_21700D284();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_21673E8D4()
{
  v1 = *(type metadata accessor for EngagementEventAction() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);

  v3 = sub_21700D284();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_21673E9C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D284();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_21673EA7C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21700D284();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_21673EB70(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_21700C4B4();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_21673EBF8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_21700C4B4();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21673ECE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700C4B4();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_21673ED30(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700C4B4();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_21673EDC0()
{
  if ((*(v0 + 24) - 1) >= 9)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21673EE8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D284();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_10:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 2147483646)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
    v8 = a1 + *(a3 + 28);
    goto LABEL_10;
  }

  v9 = *(a1 + *(a3 + 20));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  v10 = v9 - 1;
  if (v10 < 0)
  {
    v10 = -1;
  }

  return (v10 + 1);
}

uint64_t sub_21673EF74(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21700D284();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(a1 + *(a4 + 20)) = a2;
      return result;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
    v10 = a1 + *(a4 + 28);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_21673F04C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3618);

  return __swift_getEnumTagSinglePayload(a1 + v5, a2, v6);
}

uint64_t sub_21673F0AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3618);

  return __swift_storeEnumTagSinglePayload(a1 + v6, a2, a2, v7);
}

uint64_t sub_21673F15C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3F40);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3F38);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4088);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3F30);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4018);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3F48);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3F50);
  OUTLINED_FUNCTION_5_86();
  sub_216B790C0(v0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3FB0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3FB8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3FC0);
  OUTLINED_FUNCTION_3_114();
  sub_216B79044(v1);
  swift_getOpaqueTypeConformance2();
  sub_216B78B58();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4020);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4028);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4030);
  sub_216B78C44();
  swift_getOpaqueTypeConformance2();
  sub_216B78E3C();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4090);
  sub_216B78EFC();
  OUTLINED_FUNCTION_2_2();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_4_97();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

__n128 sub_21673F51C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_21673F528()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_216B7B784();
  *v0 = result;
  return result;
}

uint64_t sub_21673F578()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_216B7B5B4();
  *v0 = result & 1;
  return result;
}

uint64_t sub_21673F5F8()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_216B7B1AC();
  *v0 = result;
  return result;
}

uint64_t sub_21673F628()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_216B7AFA8();
  *v0 = result;
  return result;
}

uint64_t sub_21673F658()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_216B7AD48();
  *v0 = result;
  return result;
}

uint64_t sub_21673F688()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_216B7AB58();
  *v0 = result;
  return result;
}

uint64_t sub_21673F718()
{
  OUTLINED_FUNCTION_49();
  v1 = type metadata accessor for GoToArtistAction(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = sub_2170075A4();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  v8 = *(v6 + 80);

  type metadata accessor for GoToArtistContext(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    sub_21700C1E4();
  }

  else if (EnumCaseMultiPayload == 1)
  {
    sub_21700BA44();
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      goto LABEL_8;
    }

    sub_21700C084();
  }

  OUTLINED_FUNCTION_34();
  (*(v10 + 8))(v0 + v3);
LABEL_8:
  v11 = *(v1 + 20);
  sub_21700D284();
  OUTLINED_FUNCTION_34();
  (*(v12 + 8))(v0 + v3 + v11);
  (*(v7 + 8))(v0 + ((v3 + v4 + v8) & ~v8), v5);
  OUTLINED_FUNCTION_26();

  return swift_deallocObject();
}

uint64_t sub_21673F8DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700D284();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_21673F924(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700D284();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_21673F970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_21673FA04(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21673FA90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0);
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_21673FB44(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0);
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_21673FC00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21700D284();
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  OUTLINED_FUNCTION_17();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 24) + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  v14 = v13 - 1;
  if (v14 < 0)
  {
    v14 = -1;
  }

  return (v14 + 1);
}

void sub_21673FD08(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_21700D284();
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = a2;
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 20);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_21673FE2C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370);
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_21673FEC0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21673FF58()
{
  sub_2170067A4();
  OUTLINED_FUNCTION_9_0();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_21673FFDC()
{
  if ((*(v0 + 24) - 1) >= 9)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_216740024()
{
  v2 = sub_2170067A4();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = *(v6 + 64);
  type metadata accessor for MenuConfiguration(0);
  OUTLINED_FUNCTION_4_4();
  v9 = (v5 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v11 = *(v4 + 8);
  v10 = v4 + 8;
  v11(v1 + v5, v2);
  v12 = v1 + v9;
  v13 = type metadata accessor for ContentDescriptor();
  if (!OUTLINED_FUNCTION_9_1(v13))
  {

    v14 = *(v10 + 24);
    v15 = sub_217005EF4();
    if (!__swift_getEnumTagSinglePayload(v12 + v14, 1, v15))
    {
      OUTLINED_FUNCTION_50();
      (*(v16 + 8))(v12 + v14, v15);
    }
  }

  v17 = v12 + *(v0 + 20);
  type metadata accessor for MenuContext(0);
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_21700C8E4();
    OUTLINED_FUNCTION_9_0();
    (*(v18 + 8))(v17);
    v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74B0) + 48);
    v20 = sub_21700C924();
    if (!__swift_getEnumTagSinglePayload(v17 + v19, 1, v20))
    {
      OUTLINED_FUNCTION_50();
      (*(v21 + 8))(v17 + v19, v20);
    }
  }

  OUTLINED_FUNCTION_4_2();

  v22 = OUTLINED_FUNCTION_115_2(*(v0 + 32));
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
  }

  OUTLINED_FUNCTION_4_2();

  return swift_deallocObject();
}

uint64_t sub_2167402A8()
{
  type metadata accessor for LiveRadioPosterLockupView(0);
  OUTLINED_FUNCTION_4_4();
  v3 = (*(v2 + 80) + 96) & ~*(v2 + 80);
  __swift_destroy_boxed_opaque_existential_1Tm(v1 + 16);
  __swift_destroy_boxed_opaque_existential_1Tm(v1 + 56);
  v4 = v1 + v3;

  v5 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170075A4();
    OUTLINED_FUNCTION_9_0();
    (*(v6 + 8))(v4 + v5);
  }

  else
  {
  }

  v7 = v4 + *(v0 + 28);
  if (*(v7 + 40))
  {
    if (*(v7 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_216740404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for HorizontalPosterLockup();
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4278);
    OUTLINED_FUNCTION_17();
    if (*(v11 + 84) != a2)
    {
      return OUTLINED_FUNCTION_23_37(a1 + *(a3 + 24));
    }

    v8 = v10;
    v9 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

void sub_2167404F0()
{
  OUTLINED_FUNCTION_20_41();
  OUTLINED_FUNCTION_17();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4278);
    OUTLINED_FUNCTION_17();
    if (*(v9 + 84) != v3)
    {
      *(v1 + *(v2 + 24) + 8) = -v0;
      return;
    }

    v6 = v8;
    v7 = v1 + *(v2 + 20);
  }

  __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
}

uint64_t sub_2167405D8()
{
  type metadata accessor for LiveRadioPosterLockupView.CardView(0);
  OUTLINED_FUNCTION_4_4();
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + v4;
  v6 = sub_21700D7A4();
  if (!OUTLINED_FUNCTION_9_1(v6))
  {
    OUTLINED_FUNCTION_50();
    (*(v7 + 8))(v1 + v4, v2);
  }

  v8 = type metadata accessor for HorizontalPosterLockup();
  __swift_destroy_boxed_opaque_existential_1Tm(v5 + v8[5]);
  v9 = OUTLINED_FUNCTION_115_2(v8[6]);
  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  v11 = v5 + v8[7];
  v12 = *(v11 + 16);
  if (v12 != 255)
  {
    sub_21678817C(*v11, *(v11 + 8), v12 & 1);
  }

  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_4_2();
  v13 = OUTLINED_FUNCTION_115_2(v8[12]);
  if (v14)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
  }

  OUTLINED_FUNCTION_4_2();
  v15 = v5 + v8[14];
  v16 = type metadata accessor for ColorSchemeArtwork();
  if (!__swift_getEnumTagSinglePayload(v15, 1, v16))
  {
    v17 = type metadata accessor for Artwork();
    if (!OUTLINED_FUNCTION_7_61())
    {
      sub_21700C4B4();
      OUTLINED_FUNCTION_9_0();
      (*(v18 + 8))(v15);
      v19 = *(v17 + 20);
      sub_21700C444();
      OUTLINED_FUNCTION_9_0();
      (*(v20 + 8))(v15 + v19);
    }

    v21 = v15 + *(v16 + 20);
    if (!OUTLINED_FUNCTION_7_61())
    {
      sub_21700C4B4();
      OUTLINED_FUNCTION_9_0();
      (*(v22 + 8))(v21);
      v23 = *(v17 + 20);
      sub_21700C444();
      OUTLINED_FUNCTION_9_0();
      (*(v24 + 8))(v21 + v23);
    }
  }

  v25 = OUTLINED_FUNCTION_115_2(v8[15]);
  if (v26)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
  }

  v27 = v5 + v8[16];
  v28 = type metadata accessor for ContentDescriptor();
  if (!__swift_getEnumTagSinglePayload(v27, 1, v28))
  {

    v29 = *(v28 + 24);
    v30 = sub_217005EF4();
    if (!__swift_getEnumTagSinglePayload(v27 + v29, 1, v30))
    {
      OUTLINED_FUNCTION_50();
      (*(v31 + 8))(v27 + v29, v30);
    }
  }

  OUTLINED_FUNCTION_4_2();
  v32 = v5 + v8[19];
  v33 = type metadata accessor for Artwork();
  if (!OUTLINED_FUNCTION_7_61())
  {
    sub_21700C4B4();
    OUTLINED_FUNCTION_9_0();
    (*(v34 + 8))(v32);
    v35 = *(v33 + 20);
    sub_21700C444();
    OUTLINED_FUNCTION_9_0();
    (*(v36 + 8))(v32 + v35);
  }

  v37 = v5 + v8[20];
  if (!OUTLINED_FUNCTION_7_61())
  {
    sub_21700C4B4();
    OUTLINED_FUNCTION_9_0();
    (*(v38 + 8))(v37);
    v39 = *(v33 + 20);
    sub_21700C444();
    OUTLINED_FUNCTION_9_0();
    (*(v40 + 8))(v37 + v39);
  }

  v41 = v5 + v8[21];
  v42 = type metadata accessor for VideoArtwork();
  if (!__swift_getEnumTagSinglePayload(v41, 1, v42))
  {

    v43 = *(v42 + 20);
    sub_21700C444();
    OUTLINED_FUNCTION_9_0();
    (*(v44 + 8))(v41 + v43);
  }

  v45 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4278);
  OUTLINED_FUNCTION_9_0();
  (*(v46 + 8))(v5 + v45);
  sub_216684F5C(*(v5 + v0[6]), *(v5 + v0[6] + 8));
  sub_216684F5C(*(v5 + v0[7]), *(v5 + v0[7] + 8));

  return swift_deallocObject();
}

uint64_t sub_216740AD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for HorizontalPosterLockup();
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) != a2)
  {
    return OUTLINED_FUNCTION_23_37(a1 + *(a3 + 20));
  }

  return __swift_getEnumTagSinglePayload(a1, a2, v6);
}

void sub_216740B6C()
{
  OUTLINED_FUNCTION_20_41();
  OUTLINED_FUNCTION_17();
  if (*(v5 + 84) == v3)
  {

    __swift_storeEnumTagSinglePayload(v1, v0, v0, v4);
  }

  else
  {
    *(v1 + *(v2 + 20) + 8) = -v0;
  }
}

uint64_t sub_216740C24()
{
  OUTLINED_FUNCTION_92();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4360);
  OUTLINED_FUNCTION_34();
  v1 = OUTLINED_FUNCTION_8();
  v2(v1);
  return v0;
}

uint64_t sub_216740C84()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC42E8);
  sub_216B882CC();
  OUTLINED_FUNCTION_5_5();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_216740CE4()
{
  v1 = (type metadata accessor for SourceBundleLoader() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);

  v3 = v1[7];
  sub_21700CB44();
  OUTLINED_FUNCTION_9_0();
  (*(v4 + 8))(v0 + v2 + v3);

  return swift_deallocObject();
}

uint64_t sub_216740DC0()
{
  sub_21700CBF4();
  OUTLINED_FUNCTION_9_0();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_216740E60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  type metadata accessor for MenuContext(0);
  OUTLINED_FUNCTION_17();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 36) + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_216740F5C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    type metadata accessor for MenuContext(0);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 36) + 8) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 20);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_216741094()
{
  type metadata accessor for SetSuggestionSearchTermAction();
  OUTLINED_FUNCTION_117();
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  OUTLINED_FUNCTION_34_28();

  sub_21700D284();
  OUTLINED_FUNCTION_9_0();
  (*(v3 + 8))(v0 + v2);
  OUTLINED_FUNCTION_32_24();
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_4_2();

  OUTLINED_FUNCTION_20_42();

  return swift_deallocObject();
}

uint64_t sub_21674118C()
{
  v1 = type metadata accessor for DismissSearchFocusAction();
  OUTLINED_FUNCTION_2(v1);
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_39_25();

  sub_21700D284();
  OUTLINED_FUNCTION_9_0();
  (*(v4 + 8))(v0 + ((v3 + 33) & ~v3));

  OUTLINED_FUNCTION_38_30();

  return swift_deallocObject();
}

uint64_t sub_216741298()
{
  type metadata accessor for AddRecentSearchTermAction();
  OUTLINED_FUNCTION_117();
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  OUTLINED_FUNCTION_34_28();
  sub_21700D284();
  OUTLINED_FUNCTION_9_0();
  (*(v3 + 8))(v0 + v2);
  OUTLINED_FUNCTION_32_24();

  OUTLINED_FUNCTION_20_42();

  return swift_deallocObject();
}

uint64_t sub_216741380()
{
  type metadata accessor for ReplaySelectYearAction(0);
  OUTLINED_FUNCTION_0_10();

  if (*(v1 + 40))
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v1 + 48);
    if (*(v1 + 112))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v1 + 88);
    }
  }

  OUTLINED_FUNCTION_55_17();

  v3 = *(v0 + 20);
  sub_21700D284();
  OUTLINED_FUNCTION_9_0();
  (*(v4 + 8))(v1 + v2 + v3);

  OUTLINED_FUNCTION_26_40();

  return swift_deallocObject();
}

uint64_t sub_2167414A0()
{
  OUTLINED_FUNCTION_29_26();
  v2 = type metadata accessor for FlowAction(0);
  OUTLINED_FUNCTION_43_0();
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);

  v5 = v0 + v4;
  sub_21700D284();
  OUTLINED_FUNCTION_9_0();
  (*(v6 + 8))(v0 + v4);
  v7 = v0 + v4 + v2[5];
  type metadata accessor for FlowAction.Destination(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 1u:
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      goto LABEL_37;
    case 2u:

      v14 = *(type metadata accessor for ContentDescriptor() + 24);
      v15 = sub_217005EF4();
      if (!OUTLINED_FUNCTION_23_8(v15))
      {
        OUTLINED_FUNCTION_50();
        (*(v16 + 8))(v7 + v14, v1);
      }

      v17 = &qword_27CAB80F0;
      goto LABEL_21;
    case 3u:

      goto LABEL_22;
    case 4u:
    case 0x15u:

      v8 = *(type metadata accessor for ContentDescriptor() + 24);
      v9 = sub_217005EF4();
      goto LABEL_29;
    case 5u:
      type metadata accessor for GoToArtistContext(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 2)
      {
        sub_21700C1E4();
      }

      else if (EnumCaseMultiPayload == 1)
      {
        sub_21700BA44();
      }

      else
      {
        if (EnumCaseMultiPayload)
        {
          goto LABEL_37;
        }

LABEL_35:
        sub_21700C084();
      }

LABEL_36:
      OUTLINED_FUNCTION_9_0();
      (*(v29 + 8))(v7, v30);
LABEL_37:
      OUTLINED_FUNCTION_4_2();
      v31 = v2[8];
      v32 = sub_217005EF4();
      if (!OUTLINED_FUNCTION_20_1(v5 + v31))
      {
        OUTLINED_FUNCTION_50();
        (*(v33 + 8))(v5 + v31, v32);
      }

      v34 = v5 + v2[9];
      v35 = type metadata accessor for ReferrerInfo();
      if (!OUTLINED_FUNCTION_4_16(v35))
      {
        if (!OUTLINED_FUNCTION_20_1(v34))
        {
          OUTLINED_FUNCTION_50();
          (*(v36 + 8))(v34, v32);
        }
      }

      v37 = v5 + v2[10];
      if (*(v37 + 24))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v37);
      }

      v38 = v5 + v2[11];
      v39 = type metadata accessor for Page.Header(0);
      if (!OUTLINED_FUNCTION_22_8(v38))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v38);
        v40 = v39[5];
        v41 = sub_21700D7A4();
        if (!OUTLINED_FUNCTION_20_1(v38 + v40))
        {
          OUTLINED_FUNCTION_50();
          (*(v42 + 8))(v38 + v40, v41);
        }

        OUTLINED_FUNCTION_93_0(v39[6]);

        OUTLINED_FUNCTION_93_0(v39[7]);

        OUTLINED_FUNCTION_93_0(v39[13]);

        OUTLINED_FUNCTION_93_0(v39[14]);
      }

      OUTLINED_FUNCTION_22_40();
      OUTLINED_FUNCTION_40_22();
      OUTLINED_FUNCTION_28_5();

      return swift_deallocObject();
    case 6u:
    case 7u:
      goto LABEL_35;
    case 8u:
      sub_2170073D4();
      goto LABEL_36;
    case 9u:
      sub_217007324();
      goto LABEL_36;
    case 0xAu:
      sub_21700C384();
      goto LABEL_36;
    case 0xBu:
      sub_2170072A4();
      goto LABEL_36;
    case 0xCu:
      sub_217006F54();
      goto LABEL_36;
    case 0xDu:
      sub_21700C1E4();
      OUTLINED_FUNCTION_9_0();
      (*(v18 + 8))(v7);
      v17 = &qword_27CAB80D0;
      goto LABEL_21;
    case 0xEu:
      sub_21700C924();
      OUTLINED_FUNCTION_9_0();
      (*(v19 + 8))(v7);
      v17 = &qword_27CAB80C8;
LABEL_21:
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(v17);
      OUTLINED_FUNCTION_54_4(*(v20 + 48));
      goto LABEL_22;
    case 0xFu:

      v24 = *(type metadata accessor for ContentDescriptor() + 24);
      v25 = sub_217005EF4();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7 + v24, 1, v25);
      v27 = *(v25 - 8);
      if (!EnumTagSinglePayload)
      {
        (*(v27 + 8))(v7 + v24, v25);
      }

      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80F8);
      (*(v27 + 8))(v7 + *(v28 + 48), v25);
      goto LABEL_37;
    case 0x10u:
      sub_21700C1E4();
      OUTLINED_FUNCTION_9_0();
      (*(v22 + 8))(v7);
      v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80C0) + 48);
      v9 = sub_21700C2F4();
      goto LABEL_29;
    case 0x11u:
      sub_21700C924();
      OUTLINED_FUNCTION_9_0();
      (*(v10 + 8))(v7);
      v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80B8) + 48);
      v9 = sub_21700C8E4();
LABEL_29:
      if (!OUTLINED_FUNCTION_23_8(v9))
      {
        OUTLINED_FUNCTION_50();
        (*(v23 + 8))(v7 + v8, v1);
      }

      goto LABEL_37;
    case 0x12u:
      sub_21700C734();
      goto LABEL_36;
    case 0x14u:
      type metadata accessor for ReportableMusicItem();
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          sub_21700C924();
          goto LABEL_36;
        case 1u:
          sub_217006E94();
          goto LABEL_36;
        case 2u:
        case 3u:
          goto LABEL_35;
        case 4u:
          v45 = sub_21700C4B4();
          if (!__swift_getEnumTagSinglePayload(v7, 1, v45))
          {
            OUTLINED_FUNCTION_50();
            (*(v46 + 8))(v7, v45);
          }

          v47 = type metadata accessor for SocialProfileDescriptor(0);
          OUTLINED_FUNCTION_54_4(v47[5]);

          OUTLINED_FUNCTION_54_4(v47[6]);

          OUTLINED_FUNCTION_54_4(v47[7]);

          v11 = v47[8];
          goto LABEL_9;
        case 5u:

          goto LABEL_22;
        default:
          goto LABEL_37;
      }

      goto LABEL_37;
    case 0x16u:

      goto LABEL_22;
    case 0x17u:
      goto LABEL_22;
    case 0x18u:

      v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CACA4E0) + 48);
LABEL_9:
      sub_217005EF4();
      OUTLINED_FUNCTION_9_0();
      (*(v12 + 8))(v7 + v11, v13);
      goto LABEL_37;
    case 0x19u:

LABEL_22:

      goto LABEL_37;
    case 0x1Au:

      goto LABEL_37;
    default:
      goto LABEL_37;
  }
}

uint64_t sub_216741D88()
{
  type metadata accessor for PushNowPlayingAction();
  OUTLINED_FUNCTION_117();
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  OUTLINED_FUNCTION_34_28();
  v4 = v1 + *(v0 + 32);
  sub_21700D284();
  OUTLINED_FUNCTION_9_0();
  (*(v5 + 8))(v4 + v3);

  return swift_deallocObject();
}

uint64_t sub_216741E60()
{
  OUTLINED_FUNCTION_75_6();
  v1 = type metadata accessor for RoutedAction();
  OUTLINED_FUNCTION_43_0();
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  sub_21700D284();
  OUTLINED_FUNCTION_9_0();
  (*(v4 + 8))(v3);
  v5 = v3 + *(v1 + 20);
  if (*(v5 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
  }

  v6 = *(v1 + 24);
  v7 = sub_217005EF4();
  if (!OUTLINED_FUNCTION_22_8(v3 + v6))
  {
    OUTLINED_FUNCTION_50();
    (*(v8 + 8))(v3 + v6, v7);
  }

  OUTLINED_FUNCTION_22_40();
  OUTLINED_FUNCTION_41_24();
  OUTLINED_FUNCTION_65_2();

  return swift_deallocObject();
}

uint64_t sub_216741F84()
{
  type metadata accessor for QueueGenericMusicItemsAction();
  OUTLINED_FUNCTION_117();
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  OUTLINED_FUNCTION_34_28();

  v4 = *(v0 + 32);
  sub_21700D284();
  OUTLINED_FUNCTION_9_0();
  (*(v5 + 8))(v1 + v3 + v4);

  return swift_deallocObject();
}

uint64_t sub_216742064()
{
  OUTLINED_FUNCTION_75_6();
  type metadata accessor for PlayGenericMusicItemAction();
  OUTLINED_FUNCTION_117();
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  sub_2170067A4();
  OUTLINED_FUNCTION_9_0();
  (*(v4 + 8))(v1 + v3);

  v5 = *(v0 + 32);
  sub_21700D284();
  OUTLINED_FUNCTION_9_0();
  (*(v6 + 8))(v1 + v3 + v5);
  v7 = v1 + v3 + *(v0 + 44);
  if (*(v7 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
  }

  OUTLINED_FUNCTION_22_40();
  OUTLINED_FUNCTION_41_24();
  OUTLINED_FUNCTION_65_2();

  return swift_deallocObject();
}

uint64_t sub_216742198()
{
  OUTLINED_FUNCTION_75_6();
  type metadata accessor for PlayGenericMusicItemCollectionAction();
  OUTLINED_FUNCTION_117();
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  v4 = *(v0 + 28);
  sub_21700D284();
  OUTLINED_FUNCTION_9_0();
  (*(v5 + 8))(v1 + v3 + v4);
  v6 = v1 + v3 + *(v0 + 40);
  if (*(v6 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
  }

  OUTLINED_FUNCTION_22_40();
  OUTLINED_FUNCTION_65_2();

  return swift_deallocObject();
}

uint64_t sub_21674230C()
{
  OUTLINED_FUNCTION_75_6();
  v1 = type metadata accessor for OpenFinancePageAction(0);
  OUTLINED_FUNCTION_43_0();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  sub_21700D284();
  OUTLINED_FUNCTION_9_0();
  (*(v4 + 8))(v0 + v3);
  OUTLINED_FUNCTION_4_2();
  v5 = *(v1 + 24);
  type metadata accessor for OpenFinancePageAction.Kind(0);
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_217005EF4();
    OUTLINED_FUNCTION_9_0();
    (*(v6 + 8))(v0 + v3 + v5);
  }

  OUTLINED_FUNCTION_20_42();
  OUTLINED_FUNCTION_65_2();

  return swift_deallocObject();
}

uint64_t sub_216742448()
{
  type metadata accessor for OpenUnifiedMessagesSheetAction();
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_47_25();
  v3 = v1 + v2;

  v4 = *(v0 + 32);
  sub_21700D284();
  OUTLINED_FUNCTION_9_0();
  (*(v5 + 8))(v3 + v4);

  OUTLINED_FUNCTION_26_40();

  return swift_deallocObject();
}

uint64_t sub_216742534()
{
  type metadata accessor for SubscriptionPurchaseAction();
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_47_25();
  v2 = v0 + v1;
  sub_21700D284();
  OUTLINED_FUNCTION_9_0();
  (*(v3 + 8))(v2);
  OUTLINED_FUNCTION_32_24();

  OUTLINED_FUNCTION_20_42();

  return swift_deallocObject();
}

uint64_t sub_21674261C()
{
  type metadata accessor for OpenAddToPlaylistAction();
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_47_25();
  v3 = v1 + v2;

  v4 = *(v0 + 28);
  sub_21700D284();
  OUTLINED_FUNCTION_9_0();
  (*(v5 + 8))(v3 + v4);

  OUTLINED_FUNCTION_26_40();

  return swift_deallocObject();
}

uint64_t sub_21674278C()
{
  OUTLINED_FUNCTION_75_6();
  type metadata accessor for PerformPlaylistCollaborationRequestAction();
  OUTLINED_FUNCTION_117();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  sub_21700D284();
  OUTLINED_FUNCTION_9_0();
  (*(v4 + 8))(v3);
  sub_216A77154();
  v5 = v3 + *(v0 + 32);

  v6 = *(type metadata accessor for ContentDescriptor() + 24);
  v7 = sub_217005EF4();
  if (!__swift_getEnumTagSinglePayload(v5 + v6, 1, v7))
  {
    OUTLINED_FUNCTION_50();
    (*(v8 + 8))(v5 + v6, v7);
  }

  OUTLINED_FUNCTION_22_40();
  OUTLINED_FUNCTION_41_24();
  OUTLINED_FUNCTION_65_2();

  return swift_deallocObject();
}

uint64_t sub_2167428F4()
{
  OUTLINED_FUNCTION_49();
  type metadata accessor for ModalFlowAction();
  OUTLINED_FUNCTION_117();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  sub_21700D284();
  OUTLINED_FUNCTION_9_0();
  (*(v4 + 8))(v3);
  v5 = v3 + *(v0 + 28);
  type metadata accessor for FlowAction.Destination(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 1u:
      __swift_destroy_boxed_opaque_existential_1Tm(v5);
      goto LABEL_37;
    case 2u:

      v12 = *(type metadata accessor for ContentDescriptor() + 24);
      v13 = sub_217005EF4();
      if (!OUTLINED_FUNCTION_22_8(v5 + v12))
      {
        OUTLINED_FUNCTION_50();
        (*(v14 + 8))(v5 + v12, v13);
      }

      v15 = &qword_27CAB80F0;
      goto LABEL_21;
    case 3u:

      goto LABEL_22;
    case 4u:
    case 0x15u:

      v6 = *(type metadata accessor for ContentDescriptor() + 24);
      v7 = sub_217005EF4();
      goto LABEL_29;
    case 5u:
      type metadata accessor for GoToArtistContext(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 2)
      {
        sub_21700C1E4();
      }

      else if (EnumCaseMultiPayload == 1)
      {
        sub_21700BA44();
      }

      else
      {
        if (EnumCaseMultiPayload)
        {
          goto LABEL_37;
        }

LABEL_35:
        sub_21700C084();
      }

LABEL_36:
      OUTLINED_FUNCTION_9_0();
      (*(v28 + 8))(v5, v29);
LABEL_37:
      OUTLINED_FUNCTION_22_40();
      OUTLINED_FUNCTION_26();

      return swift_deallocObject();
    case 6u:
    case 7u:
      goto LABEL_35;
    case 8u:
      sub_2170073D4();
      goto LABEL_36;
    case 9u:
      sub_217007324();
      goto LABEL_36;
    case 0xAu:
      sub_21700C384();
      goto LABEL_36;
    case 0xBu:
      sub_2170072A4();
      goto LABEL_36;
    case 0xCu:
      sub_217006F54();
      goto LABEL_36;
    case 0xDu:
      sub_21700C1E4();
      OUTLINED_FUNCTION_9_0();
      (*(v16 + 8))(v5);
      v15 = &qword_27CAB80D0;
      goto LABEL_21;
    case 0xEu:
      sub_21700C924();
      OUTLINED_FUNCTION_9_0();
      (*(v17 + 8))(v5);
      v15 = &qword_27CAB80C8;
LABEL_21:
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(v15);
      OUTLINED_FUNCTION_93_0(*(v18 + 48));
      goto LABEL_22;
    case 0xFu:

      v23 = *(type metadata accessor for ContentDescriptor() + 24);
      v24 = sub_217005EF4();
      v25 = OUTLINED_FUNCTION_22_8(v5 + v23);
      v26 = *(v24 - 8);
      if (!v25)
      {
        (*(v26 + 8))(v5 + v23, v24);
      }

      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80F8);
      (*(v26 + 8))(v5 + *(v27 + 48), v24);
      goto LABEL_37;
    case 0x10u:
      sub_21700C1E4();
      OUTLINED_FUNCTION_9_0();
      (*(v20 + 8))(v5);
      v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80C0) + 48);
      v7 = sub_21700C2F4();
      goto LABEL_29;
    case 0x11u:
      sub_21700C924();
      OUTLINED_FUNCTION_9_0();
      (*(v8 + 8))(v5);
      v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80B8) + 48);
      v7 = sub_21700C8E4();
LABEL_29:
      v21 = v7;
      if (!OUTLINED_FUNCTION_22_8(v5 + v6))
      {
        OUTLINED_FUNCTION_50();
        (*(v22 + 8))(v5 + v6, v21);
      }

      goto LABEL_37;
    case 0x12u:
      sub_21700C734();
      goto LABEL_36;
    case 0x14u:
      type metadata accessor for ReportableMusicItem();
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          sub_21700C924();
          goto LABEL_36;
        case 1u:
          sub_217006E94();
          goto LABEL_36;
        case 2u:
        case 3u:
          goto LABEL_35;
        case 4u:
          sub_21700C4B4();
          if (!OUTLINED_FUNCTION_22_8(v5))
          {
            OUTLINED_FUNCTION_50();
            v32 = OUTLINED_FUNCTION_116();
            v33(v32);
          }

          v34 = type metadata accessor for SocialProfileDescriptor(0);
          OUTLINED_FUNCTION_93_0(v34[5]);

          OUTLINED_FUNCTION_93_0(v34[6]);

          OUTLINED_FUNCTION_93_0(v34[7]);

          v9 = v34[8];
          goto LABEL_9;
        case 5u:

          goto LABEL_22;
        default:
          goto LABEL_37;
      }

      goto LABEL_37;
    case 0x16u:

      goto LABEL_22;
    case 0x17u:
      goto LABEL_22;
    case 0x18u:

      v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CACA4E0) + 48);
LABEL_9:
      sub_217005EF4();
      OUTLINED_FUNCTION_9_0();
      (*(v10 + 8))(v5 + v9, v11);
      goto LABEL_37;
    case 0x19u:

LABEL_22:

      goto LABEL_37;
    case 0x1Au:

      goto LABEL_37;
    default:
      goto LABEL_37;
  }
}

uint64_t sub_216743024()
{
  OUTLINED_FUNCTION_49();
  v1 = (type metadata accessor for ProcessDeepLinkAction() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_21700D284();
  OUTLINED_FUNCTION_9_0();
  (*(v3 + 8))(v2);
  v4 = v1[7];
  v5 = sub_217005EF4();
  OUTLINED_FUNCTION_34();
  v7 = *(v6 + 8);
  v7(v2 + v4, v5);
  v8 = v2 + v1[8];
  v9 = type metadata accessor for ReferrerInfo();
  if (!OUTLINED_FUNCTION_9_1(v9))
  {
    if (!__swift_getEnumTagSinglePayload(v8, 1, v5))
    {
      v7(v8, v5);
    }

    OUTLINED_FUNCTION_4_2();
  }

  OUTLINED_FUNCTION_22_40();
  OUTLINED_FUNCTION_26();

  return swift_deallocObject();
}

uint64_t sub_2167431D4()
{
  type metadata accessor for CheckSocialHandleAvailabilityAction();
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_47_25();
  v2 = v0 + v1;
  sub_21700D284();
  OUTLINED_FUNCTION_9_0();
  (*(v3 + 8))(v2);
  OUTLINED_FUNCTION_32_24();

  OUTLINED_FUNCTION_20_42();

  return swift_deallocObject();
}

uint64_t sub_2167432B0()
{
  type metadata accessor for ReplaySelectPeriodAction(0);
  OUTLINED_FUNCTION_0_10();

  __swift_destroy_boxed_opaque_existential_1Tm(v1 + 80);
  if (*(v1 + 144))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v1 + 120);
  }

  OUTLINED_FUNCTION_55_17();

  v3 = *(v0 + 20);
  sub_21700D284();
  OUTLINED_FUNCTION_9_0();
  (*(v4 + 8))(v1 + v2 + v3);

  OUTLINED_FUNCTION_26_40();

  return swift_deallocObject();
}

uint64_t sub_2167433CC()
{
  OUTLINED_FUNCTION_29_26();
  v2 = type metadata accessor for SelectReplayYearAction(0);
  OUTLINED_FUNCTION_43_0();
  v4 = *(v3 + 80);

  if (*(v0 + 5))
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 48));
    if (*(v0 + 14))
    {
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 88));
    }
  }

  v5 = (v4 + 296) & ~v4;

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 192));
  if (*(v0 + 32))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 232));
  }

  swift_weakDestroy();
  v6 = sub_217007884();
  OUTLINED_FUNCTION_34();
  v8 = *(v7 + 8);
  v8(&v0[v5], v6);
  OUTLINED_FUNCTION_54_4(*(v2 + 20));

  v9 = &v0[v5 + *(v2 + 24)];
  v10 = type metadata accessor for AnyReplayYearRequest(0);
  if (!OUTLINED_FUNCTION_20_1(v9))
  {
    v11 = OUTLINED_FUNCTION_116();
    (v8)(v11);
    v12 = v9 + *(v10 + 20);
    v13 = type metadata accessor for AnyReplayYearRequestBody(0);
    if (!OUTLINED_FUNCTION_4_16(v13))
    {
      v14 = type metadata accessor for AnyReplayYearRequestBody.OneOf_InnerBody(0);
      if (!__swift_getEnumTagSinglePayload(v12, 1, v14))
      {
        v8(v12, v6);
      }

      v8((v12 + *(v1 + 20)), v6);
    }

    v15 = v9 + *(v10 + 24);
    v16 = type metadata accessor for BaseURLRequest();
    if (!OUTLINED_FUNCTION_20_1(v15))
    {

      v8((v15 + *(v16 + 20)), v6);
      OUTLINED_FUNCTION_93_0(*(v16 + 24));
    }
  }

  OUTLINED_FUNCTION_22_40();
  OUTLINED_FUNCTION_40_22();
  OUTLINED_FUNCTION_28_5();

  return swift_deallocObject();
}

uint64_t sub_216743618()
{
  OUTLINED_FUNCTION_29_26();
  v2 = type metadata accessor for SelectReplayPeriodAction(0);
  OUTLINED_FUNCTION_43_0();
  v4 = (*(v3 + 80) + 152) & ~*(v3 + 80);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 48);
  if (*(v0 + 112))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 88);
  }

  swift_weakDestroy();
  v5 = v0 + v4;
  v6 = sub_217007884();
  OUTLINED_FUNCTION_34();
  v8 = *(v7 + 8);
  v8(v0 + v4, v6);
  OUTLINED_FUNCTION_54_4(*(v2 + 20));

  v9 = v0 + v4 + *(v2 + 24);
  v10 = type metadata accessor for AnyReplayPageRequest(0);
  if (!OUTLINED_FUNCTION_9_1(v10))
  {
    v8(v9, v6);
    v11 = v9 + *(v5 + 20);
    v12 = type metadata accessor for AnyReplayPageRequestBody(0);
    if (!OUTLINED_FUNCTION_4_16(v12))
    {
      v13 = type metadata accessor for AnyReplayPageRequestBody.OneOf_InnerBody(0);
      if (!__swift_getEnumTagSinglePayload(v11, 1, v13))
      {
        v8(v11, v6);
      }

      v8(v11 + *(v1 + 20), v6);
    }

    v14 = v9 + *(v5 + 24);
    v15 = type metadata accessor for BaseURLRequest();
    if (!OUTLINED_FUNCTION_9_1(v15))
    {

      v8(v14 + *(v5 + 20), v6);
      OUTLINED_FUNCTION_4_2();
    }
  }

  OUTLINED_FUNCTION_22_40();
  OUTLINED_FUNCTION_40_22();
  OUTLINED_FUNCTION_28_5();

  return swift_deallocObject();
}

uint64_t sub_216743830()
{
  OUTLINED_FUNCTION_102();
  v2 = type metadata accessor for SuggestionItem();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_216743870()
{
  OUTLINED_FUNCTION_102();
  type metadata accessor for SuggestionItem();
  v0 = OUTLINED_FUNCTION_54();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_2167438A8()
{
  v1 = *(type metadata accessor for SuggestionItemView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + v2;
  v4 = sub_21700D7A4();
  if (!__swift_getEnumTagSinglePayload(v0 + v2, 1, v4))
  {
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  v5 = type metadata accessor for SuggestionItem();
  __swift_destroy_boxed_opaque_existential_1Tm(v3 + v5[5]);
  v6 = v3 + v5[6];
  if (*(v6 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
  }

  v7 = v3 + v5[10];
  type metadata accessor for LockupArtwork();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (*(v7 + 8) >= 2uLL)
    {
    }
  }

  else
  {
    sub_21700C4B4();
    OUTLINED_FUNCTION_34();
    (*(v8 + 8))(v7);
    v9 = *(type metadata accessor for Artwork() + 20);
    sub_21700C444();
    OUTLINED_FUNCTION_34();
    (*(v10 + 8))(v7 + v9);
  }

  return swift_deallocObject();
}

uint64_t sub_216743AA8()
{
  OUTLINED_FUNCTION_102();
  v2 = type metadata accessor for LockupArtwork();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_216743AE8()
{
  OUTLINED_FUNCTION_102();
  type metadata accessor for LockupArtwork();
  v0 = OUTLINED_FUNCTION_54();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_216743B38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ContentDescriptor();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0);
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_216743BE0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ContentDescriptor();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0);
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_216743C90()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_216743CC8()
{

  return swift_deallocObject();
}

uint64_t sub_216743D00()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_216743D40()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_216743D80()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_143();

  return swift_deallocObject();
}

uint64_t sub_216743DB4()
{

  OUTLINED_FUNCTION_65_0();

  return swift_deallocObject();
}

uint64_t sub_216743EC4()
{

  return swift_deallocObject();
}

uint64_t sub_216743F04()
{
  OUTLINED_FUNCTION_102();
  v2 = sub_2170061E4();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_216743F44()
{
  OUTLINED_FUNCTION_102();
  v2 = sub_2170061E4();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_216743F88(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_102();
  type metadata accessor for AnimatedTextListItem();
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v9, v3, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB90E0);
  OUTLINED_FUNCTION_17();
  if (*(v11 + 84) == v3)
  {
    v8 = v10;
    v12 = a3[5];
LABEL_7:
    v9 = v4 + v12;
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4548);
  OUTLINED_FUNCTION_17();
  if (*(v14 + 84) == v3)
  {
    v8 = v13;
    v12 = a3[6];
    goto LABEL_7;
  }

  v16 = *(v4 + a3[7] + 8);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  v17 = v16 - 1;
  if (v17 < 0)
  {
    v17 = -1;
  }

  return (v17 + 1);
}

void sub_2167440D4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_102();
  type metadata accessor for AnimatedTextListItem();
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v5;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB90E0);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4548);
      OUTLINED_FUNCTION_17();
      if (*(v16 + 84) != a3)
      {
        *(v5 + a4[7] + 8) = v4;
        return;
      }

      v10 = v15;
      v14 = a4[6];
    }

    v11 = v5 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, v4, v4, v10);
}

uint64_t sub_216744258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for ContentDescriptor();
    if (*(*(v9 - 8) + 84) == a2)
    {
      v10 = v9;
      v11 = *(a3 + 20);
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0);
      v11 = *(a3 + 24);
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

uint64_t sub_21674433C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v8 = type metadata accessor for ContentDescriptor();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0);
      v10 = *(a4 + 24);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_216744484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D284();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAB8320);
    v8 = a1 + *(a3 + 24);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 20) + 8);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_216744564(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21700D284();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 20) + 8) = (a2 - 1);
      return result;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAB8320);
    v10 = a1 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_216744640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 20);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
      v10 = *(a3 + 52);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_216744724(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
      v10 = *(a4 + 52);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_216744808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ContentDescriptor();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_10:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 2147483646)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0);
    v8 = a1 + *(a3 + 24);
    goto LABEL_10;
  }

  v9 = *(a1 + *(a3 + 20) + 8);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  v10 = v9 - 1;
  if (v10 < 0)
  {
    v10 = -1;
  }

  return (v10 + 1);
}

uint64_t sub_2167448F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ContentDescriptor();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(a1 + *(a4 + 20) + 8) = a2;
      return result;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0);
    v10 = a1 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_2167449D0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_216744A08()
{

  return swift_deallocObject();
}

uint64_t sub_216744A40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ContentDescriptor();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    if (a2 == 254)
    {
      v9 = *(a1 + *(a3 + 20));
      if (v9 >= 2)
      {
        return ((v9 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0);
    v8 = a1 + *(a3 + 24);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_216744B28(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ContentDescriptor();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 254)
    {
      *(a1 + *(a4 + 20)) = a2 + 1;
      return result;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0);
    v10 = a1 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_216744C74()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_216744CAC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_216744CF4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_216BA1EF4();
  *a1 = result;
  return result;
}

uint64_t sub_216744D48()
{

  return swift_deallocObject();
}

uint64_t sub_216744D80()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_216744DC8(unint64_t *a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_22_1(*a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370);
  v5 = OUTLINED_FUNCTION_19_1(*(a3 + 20));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_216744E4C()
{
  OUTLINED_FUNCTION_21_0();
  if (v3)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370);
    v5 = OUTLINED_FUNCTION_19_1(*(v4 + 20));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_216744ED8()
{
  type metadata accessor for SquareLockupView(0);
  OUTLINED_FUNCTION_4_4();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  v4 = *(v0 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170075A4();
    OUTLINED_FUNCTION_34();
    (*(v5 + 8))(v3 + v4);
  }

  else
  {
  }

  v6 = v3 + *(v0 + 24);
  if (*(v6 + 40))
  {
    if (*(v6 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_216745018()
{
  v2 = sub_2170067A4();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = *(v6 + 64);
  type metadata accessor for MenuConfiguration(0);
  OUTLINED_FUNCTION_4_4();
  v9 = (v5 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v11 = *(v4 + 8);
  v10 = v4 + 8;
  v11(v1 + v5, v2);
  v12 = v1 + v9;
  v13 = type metadata accessor for ContentDescriptor();
  if (!OUTLINED_FUNCTION_9_1(v13))
  {

    v14 = *(v10 + 24);
    v15 = sub_217005EF4();
    if (!__swift_getEnumTagSinglePayload(v12 + v14, 1, v15))
    {
      (*(*(v15 - 8) + 8))(v12 + v14, v15);
    }
  }

  v16 = v12 + *(v0 + 20);
  type metadata accessor for MenuContext(0);
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_21700C8E4();
    OUTLINED_FUNCTION_34();
    (*(v17 + 8))(v16);
    v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74B0) + 48);
    v19 = sub_21700C924();
    if (!__swift_getEnumTagSinglePayload(v16 + v18, 1, v19))
    {
      (*(*(v19 - 8) + 8))(v16 + v18, v19);
    }
  }

  v20 = v12 + *(v0 + 32);
  if (*(v20 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
  }

  return swift_deallocObject();
}

uint64_t sub_2167452BC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_22_1(*(a1 + 16));
  }

  if (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60) - 8) + 84) == a2)
  {
    v5 = *(a3 + 24);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD478);
    v5 = *(a3 + 44);
  }

  v6 = OUTLINED_FUNCTION_19_1(v5);

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_216745390()
{
  OUTLINED_FUNCTION_21_0();
  if (v4)
  {
    *(v1 + 16) = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60) - 8);
    if (*(v7 + 84) == v6)
    {
      v8 = *(v5 + 24);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD478);
      v8 = *(v5 + 44);
    }

    v9 = OUTLINED_FUNCTION_19_1(v8);

    __swift_storeEnumTagSinglePayload(v9, v10, v0, v11);
  }
}

uint64_t sub_216745464()
{
  type metadata accessor for SquareLockupContent(0);
  OUTLINED_FUNCTION_4_4();
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  sub_216684F5C(*v4, *(v4 + 8));

  v5 = v4 + v0[6];
  v6 = type metadata accessor for Artwork();
  if (!OUTLINED_FUNCTION_9_1(v6))
  {
    sub_21700C4B4();
    OUTLINED_FUNCTION_34();
    (*(v7 + 8))(v5);
    v8 = *(v2 + 20);
    sub_21700C444();
    OUTLINED_FUNCTION_34();
    (*(v9 + 8))(v5 + v8);
  }

  if ((OUTLINED_FUNCTION_14_54(v0[7]) - 1) >= 9)
  {
  }

  OUTLINED_FUNCTION_14_54(v0[8]);

  OUTLINED_FUNCTION_14_54(v0[9]);

  OUTLINED_FUNCTION_14_54(v0[10]);

  v10 = v0[11];
  v11 = sub_217005C64();
  if (!__swift_getEnumTagSinglePayload(v4 + v10, 1, v11))
  {
    (*(*(v11 - 8) + 8))(v4 + v10, v11);
  }

  v12 = v4 + v0[14];
  if (*(v12 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
  }

  if (*(v4 + v0[15] + 8) != 1)
  {
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v4 + v0[17]);

  return swift_deallocObject();
}

uint64_t sub_21674568C()
{
  OUTLINED_FUNCTION_92();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4928);
  OUTLINED_FUNCTION_34();
  v1 = OUTLINED_FUNCTION_8();
  v2(v1);
  return v0;
}

uint64_t sub_2167456FC()
{
  v0 = OUTLINED_FUNCTION_8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0);
  type metadata accessor for ActionButtonStyle(255);
  sub_2166D9530(&qword_27CAC4A10, &qword_27CAC4900);
  sub_2166D7B10(&qword_280E404C0, type metadata accessor for ActionButtonStyle);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2167457E8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4A20);
  OUTLINED_FUNCTION_34();
  (*(v4 + 32))(a2, a1);
  return a2;
}

uint64_t sub_216745850(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a3[12];
    goto LABEL_3;
  }

  if (a2 != 0x7FFFFFFF)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v9 = a3[20];
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
      v9 = a3[22];
    }

LABEL_3:

    return __swift_getEnumTagSinglePayload(a1 + v9, a2, v8);
  }

  v11 = *(a1 + a3[17] + 24);
  if (v11 >= 0xFFFFFFFF)
  {
    LODWORD(v11) = -1;
  }

  return (v11 + 1);
}

void sub_216745984(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a4[12];
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[17] + 24) = (a2 - 1);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v11 = a4[20];
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
      v11 = a4[22];
    }
  }

  __swift_storeEnumTagSinglePayload(a1 + v11, a2, a2, v10);
}

uint64_t sub_216745AB8(uint64_t a1)
{
  result = sub_2166D7B58(&qword_280E445F0, type metadata accessor for SquareLockup);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216745B38(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700D284();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_216745B80(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700D284();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_216746004()
{

  return swift_deallocObject();
}

uint64_t sub_216746044()
{
  v1 = sub_21700CCA4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_216746114()
{
  sub_21700CCA4();
  OUTLINED_FUNCTION_9_0();
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);

  return swift_deallocObject();
}

__n128 sub_2167461C0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_2167461D0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    OUTLINED_FUNCTION_11_1();
    return (v3 + 1);
  }

  else
  {
    type metadata accessor for MenuContext(0);
    OUTLINED_FUNCTION_17();
    if (*(v7 + 84) == a2)
    {
      v8 = *(a3 + 20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370);
      v8 = *(a3 + 28);
    }

    v9 = OUTLINED_FUNCTION_19_1(v8);

    return __swift_getEnumTagSinglePayload(v9, v10, v11);
  }
}

void sub_216746298()
{
  OUTLINED_FUNCTION_21_0();
  if (v4)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_18_46();
    type metadata accessor for MenuContext(0);
    OUTLINED_FUNCTION_17();
    if (*(v5 + 84) == v3)
    {
      v6 = *(v2 + 20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370);
      v6 = *(v2 + 28);
    }

    v7 = OUTLINED_FUNCTION_19_1(v6);

    __swift_storeEnumTagSinglePayload(v7, v8, v0, v9);
  }
}

uint64_t sub_216746364()
{
  OUTLINED_FUNCTION_49();
  v1 = type metadata accessor for TrackShelfLockupView(0);
  OUTLINED_FUNCTION_43_0();
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  v4 = v3 + v1[5];
  type metadata accessor for MenuContext(0);
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_21700C8E4();
    OUTLINED_FUNCTION_9_0();
    (*(v5 + 8))(v4);
    v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74B0) + 48);
    v7 = sub_21700C924();
    if (!__swift_getEnumTagSinglePayload(v4 + v6, 1, v7))
    {
      OUTLINED_FUNCTION_50();
      (*(v8 + 8))(v4 + v6, v7);
    }
  }

  v9 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170075A4();
    OUTLINED_FUNCTION_9_0();
    (*(v10 + 8))(v3 + v9);
  }

  else
  {
  }

  v11 = v3 + v1[8];
  if (*(v11 + 40))
  {
    if (*(v11 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_26();

  return swift_deallocObject();
}