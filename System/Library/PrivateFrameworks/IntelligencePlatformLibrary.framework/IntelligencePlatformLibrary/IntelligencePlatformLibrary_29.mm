uint64_t sub_19365DF98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v7 = *v3;
  v6 = v3[1];
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {
    return sub_1934948FC();
  }

  v11 = v3[2];
  v10 = v3[3];
  result = sub_19393CA30();
  if (result)
  {
    return sub_1934948FC();
  }

  v13 = a1 == 0xD000000000000012 && 0x8000000193A2B6F0 == a2;
  if (v13 || (result = sub_19393CA30(), (result & 1) != 0))
  {
    if (v10)
    {
      return sub_1934948FC();
    }

    *a3 = 0u;
    a3[1] = 0u;
  }

  else
  {
    sub_19349AB64();
    swift_allocError();
    v15 = v14;
    *v14 = a1;
    v14[1] = a2;
    v14[5] = &type metadata for TextUnderstandingDocumentIdentifiers.ClientMetadata;
    v16 = swift_allocObject();
    v15[2] = v16;
    v16[2] = v7;
    v16[3] = v6;
    v16[4] = v11;
    v16[5] = v10;
    *(v15 + 48) = 1;
    swift_willThrow();
  }

  return result;
}

uint64_t TextUnderstandingDocumentIdentifiers.Category.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 - 1;
  result = 0;
  v4 = 1;
  switch(v2)
  {
    case 0:
      break;
    case 1:
      result = 1;
      break;
    case 2:
      result = 2;
      break;
    case 3:
      result = 3;
      break;
    default:
      v4 = 0;
      break;
  }

  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 9) = 0;
  return result;
}

char *static TextUnderstandingDocumentIdentifiers.Category.allCases.getter()
{
  v0 = sub_19365E540(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    v16 = OUTLINED_FUNCTION_39(v1);
    v0 = sub_19365E540(v16, v2 + 1, 1, v17);
    v1 = *(v0 + 3);
    v3 = v1 >> 1;
  }

  *(v0 + 2) = v4;
  v5 = &v0[16 * v2];
  *(v5 + 4) = 0;
  v5[40] = 0;
  v6 = v2 + 2;
  if (v3 < (v2 + 2))
  {
    v18 = OUTLINED_FUNCTION_39(v1);
    v0 = sub_19365E540(v18, v2 + 2, 1, v19);
    v1 = *(v0 + 3);
    v3 = v1 >> 1;
  }

  *(v0 + 2) = v6;
  v7 = &v0[16 * v4];
  *(v7 + 4) = 0;
  v7[40] = 1;
  v8 = v2 + 3;
  if (v3 < (v2 + 3))
  {
    v20 = OUTLINED_FUNCTION_39(v1);
    v0 = sub_19365E540(v20, v2 + 3, 1, v21);
  }

  *(v0 + 2) = v8;
  v9 = &v0[16 * v6];
  *(v9 + 4) = 1;
  v9[40] = 1;
  v10 = *(v0 + 3);
  v11 = v2 + 4;
  if ((v2 + 4) > (v10 >> 1))
  {
    v22 = OUTLINED_FUNCTION_39(v10);
    v0 = sub_19365E540(v22, v2 + 4, 1, v23);
  }

  *(v0 + 2) = v11;
  v12 = &v0[16 * v8];
  *(v12 + 4) = 2;
  v12[40] = 1;
  v13 = *(v0 + 3);
  if ((v2 + 5) > (v13 >> 1))
  {
    v24 = OUTLINED_FUNCTION_39(v13);
    v0 = sub_19365E540(v24, v2 + 5, 1, v25);
  }

  *(v0 + 2) = v2 + 5;
  v14 = &v0[16 * v11];
  *(v14 + 4) = 3;
  v14[40] = 1;
  return v0;
}

uint64_t TextUnderstandingDocumentIdentifiers.Category.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return 0x6E776F6E6B6E55;
  }

  result = 0x6261686372616553;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_3_51();
      break;
    case 2:
      result = OUTLINED_FUNCTION_4_49();
      break;
    case 3:
      result = OUTLINED_FUNCTION_2_54();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t TextUnderstandingDocumentIdentifiers.Category.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1 == 0x6E776F6E6B6E55 && a2 == 0xE700000000000000;
  if (v6 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    v8 = 0;
    v9 = 0;
    goto LABEL_14;
  }

  v10 = a1 == 0x6261686372616553 && a2 == 0xEE006D657449656CLL;
  if (v10 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    v8 = 0;
LABEL_13:
    v9 = 1;
    goto LABEL_14;
  }

  v12 = a1 == OUTLINED_FUNCTION_3_51() && a2 == v11;
  if (v12 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    v8 = 1;
    goto LABEL_13;
  }

  v14 = a1 == OUTLINED_FUNCTION_4_49() && a2 == v13;
  if (v14 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    v9 = 1;
    v8 = 2;
  }

  else if (a1 == OUTLINED_FUNCTION_2_54() && a2 == v15)
  {

    v9 = 1;
    v8 = 3;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_0_9();

    v8 = 3;
    if ((v9 & 1) == 0)
    {
      v8 = 0;
    }
  }

LABEL_14:
  *a3 = v8;
  *(a3 + 8) = v9 & 1;
  *(a3 + 9) = 0;
  return result;
}

char *sub_19365E540(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FAA8, &qword_1939777D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || &v13[v14] <= v12)
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

unint64_t sub_19365E640()
{
  result = qword_1EAE3FAA0;
  if (!qword_1EAE3FAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FAA0);
  }

  return result;
}

void sub_19365E694()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAB9D8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  v6 = OUTLINED_FUNCTION_31_13();
  OUTLINED_FUNCTION_9_8(v6, xmmword_19394FBD0);
  *v1 = 1;
  *v0 = "bundleId";
  *(v0 + 8) = 8;
  *(v0 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 104);
  OUTLINED_FUNCTION_2_0();
  v10();
  v11 = OUTLINED_FUNCTION_3_1(v1 + v5);
  *v12 = 2;
  *v11 = "domainId";
  v11[1] = 8;
  v13 = OUTLINED_FUNCTION_1_3(v11);
  (v10)(v13);
  v14 = OUTLINED_FUNCTION_3_1(v1 + 2 * v5);
  *v15 = 3;
  *v14 = "uniqueId";
  v14[1] = 8;
  v16 = OUTLINED_FUNCTION_1_3(v14);
  (v10)(v16);
  v17 = OUTLINED_FUNCTION_3_1(v1 + 3 * v5);
  *v18 = 4;
  *v17 = "category";
  v17[1] = 8;
  v19 = OUTLINED_FUNCTION_1_3(v17);
  (v10)(v19);
  v20 = OUTLINED_FUNCTION_3_1(v1 + 4 * v5);
  *v21 = 5;
  *v20 = "clientMetadata";
  *(v20 + 8) = 14;
  *(v20 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v10();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_19365E884()
{
  OUTLINED_FUNCTION_8_42();
  while (1)
  {
    v4 = sub_19393C0E0();
    if (v0 || (v5 & 1) != 0)
    {
      break;
    }

    switch(v4)
    {
      case 1:
        OUTLINED_FUNCTION_4_50();
        v0 = 0;
        OUTLINED_FUNCTION_11_36();
        if (v7)
        {
          v8 = v2;
        }

        else
        {
          v8 = v6;
        }

        v9 = *(v1 + 8);

        *v1 = v3;
        *(v1 + 8) = v8;
        break;
      case 2:
        OUTLINED_FUNCTION_23_31();
        goto LABEL_16;
      case 3:
        OUTLINED_FUNCTION_4_50();
        v0 = 0;
        OUTLINED_FUNCTION_11_36();
        if (v7)
        {
          v11 = v2;
        }

        else
        {
          v11 = v10;
        }

        v12 = *(v1 + 40);

        *(v1 + 32) = v3;
        *(v1 + 40) = v11;
        break;
      case 4:
        sub_1934982A8();
        *(v1 + 48) = 0;
        *(v1 + 56) = 0;
        break;
      case 5:
        sub_193498018();
LABEL_16:
        v0 = 0;
        break;
      default:
        continue;
    }
  }
}

void sub_19365EA08()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v15 = *(v0 + 32);
  v11 = *(v0 + 64);
  v12 = *(v0 + 72);
  v13 = *(v0 + 40);
  if (*v0)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(v0 + 8) == 0xE000000000000000;
  }

  if (!v4 && (OUTLINED_FUNCTION_272() & 1) == 0)
  {
    sub_19393C3C0();
  }

  if (!v1)
  {
    if (v3)
    {
      sub_19393C3C0();
    }

    if ((v15 || v13 != 0xE000000000000000) && (OUTLINED_FUNCTION_272() & 1) == 0)
    {
      sub_19393C3C0();
    }

    OUTLINED_FUNCTION_18_32();
    sub_19365F1B8();
    if ((sub_19393C550() & 1) == 0)
    {
      OUTLINED_FUNCTION_18_32();
      OUTLINED_FUNCTION_16_28();
      sub_193447324(v5, v6, v7, v8, v9, v10);
    }

    if (v12)
    {
      v14 = *(v0 + 80);
      OUTLINED_FUNCTION_16_28();
      sub_193447600();
    }
  }
}

void sub_19365EC5C()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAB9F0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  v6 = OUTLINED_FUNCTION_31_13();
  OUTLINED_FUNCTION_9_8(v6, xmmword_19394FBD0);
  *v1 = 0;
  *v0 = "CategoryUnknown";
  *(v0 + 8) = 15;
  *(v0 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 104);
  OUTLINED_FUNCTION_2_0();
  v10();
  v11 = OUTLINED_FUNCTION_3_1(v1 + v5);
  *v12 = 1;
  *v11 = "SearchableItem";
  v11[1] = 14;
  v13 = OUTLINED_FUNCTION_1_3(v11);
  (v10)(v13);
  v14 = OUTLINED_FUNCTION_3_1(v1 + 2 * v5);
  *v15 = 2;
  *v14 = "Interaction";
  v14[1] = 11;
  v16 = OUTLINED_FUNCTION_1_3(v14);
  (v10)(v16);
  v17 = OUTLINED_FUNCTION_3_1(v1 + 3 * v5);
  *v18 = 3;
  *v17 = "UserActivity";
  v17[1] = 12;
  v19 = OUTLINED_FUNCTION_1_3(v17);
  (v10)(v19);
  v20 = OUTLINED_FUNCTION_3_1(v1 + 4 * v5);
  *v21 = 4;
  *v20 = "ClientDocument";
  *(v20 + 8) = 14;
  *(v20 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v10();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_19365EE74()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEABA08);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_19394FBE0;
  v7 = (v6 + v5);
  v8 = v6 + v5 + dword_1EAEABA40;
  *v7 = 1;
  *v8 = "identifier";
  *(v8 + 8) = 10;
  *(v8 + 16) = 2;
  v9 = *MEMORY[0x1E69AADC8];
  v10 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v10);
  v12 = *(v11 + 104);
  (v12)(v8, v9, v10);
  v13 = OUTLINED_FUNCTION_3_1(v7 + v3);
  *v14 = 2;
  *v13 = "documentIdentifier";
  *(v13 + 8) = 18;
  *(v13 + 16) = 2;
  v12();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_19365F000()
{
  OUTLINED_FUNCTION_8_42();
  while (1)
  {
    result = sub_19393C0E0();
    if (v0 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_23_31();
      v0 = 0;
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_4_50();
      v0 = 0;
      OUTLINED_FUNCTION_11_36();
      if (v7)
      {
        v8 = v2;
      }

      else
      {
        v8 = v6;
      }

      v9 = v1[1];

      *v1 = v3;
      v1[1] = v8;
    }
  }

  return result;
}

void sub_19365F0AC()
{
  v2 = v1;
  v3 = v0[2];
  v4 = v0[3];
  if (*v0)
  {
    v5 = 0;
  }

  else
  {
    v5 = v0[1] == 0xE000000000000000;
  }

  if (!v5)
  {
    v6 = *v0;
    v7 = v0[1];
    if ((OUTLINED_FUNCTION_272() & 1) == 0)
    {
      OUTLINED_FUNCTION_24_30();
      v2 = v1;
    }
  }

  if (!v2)
  {
    if (v4)
    {
      OUTLINED_FUNCTION_24_30();
    }
  }
}

unint64_t sub_19365F1B8()
{
  result = qword_1EAE3A720;
  if (!qword_1EAE3A720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3A720);
  }

  return result;
}

uint64_t TextUnderstandingDocumentIdentifiers.bundleId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingDocumentIdentifiers.bundleId.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TextUnderstandingDocumentIdentifiers.domainId.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingDocumentIdentifiers.domainId.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t TextUnderstandingDocumentIdentifiers.uniqueId.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingDocumentIdentifiers.uniqueId.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

void TextUnderstandingDocumentIdentifiers.category.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 48);
  *(a1 + 8) = v2;
}

uint64_t TextUnderstandingDocumentIdentifiers.category.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 48) = *result;
  *(v1 + 56) = v2;
  return result;
}

uint64_t TextUnderstandingDocumentIdentifiers.clientMetadata.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[8];
  v3 = v1[9];
  v4 = v1[10];
  v5 = v1[11];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_19365F3E0(v2, v3);
}

uint64_t sub_19365F3E0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

__n128 TextUnderstandingDocumentIdentifiers.clientMetadata.setter(uint64_t a1)
{
  v3 = v1[10];
  v4 = v1[11];
  sub_193442C40(v1[8], v1[9]);
  result = *a1;
  v6 = *(a1 + 16);
  *(v1 + 4) = *a1;
  *(v1 + 5) = v6;
  return result;
}

double TextUnderstandingDocumentIdentifiers.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  sub_193442C40(0, 0);
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  return result;
}

uint64_t sub_19365F4D4@<X0>(uint64_t *a1@<X8>)
{
  result = TextUnderstandingDocumentIdentifiers.Category.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_19365F4FC@<X0>(char **a1@<X8>)
{
  result = static TextUnderstandingDocumentIdentifiers.Category.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19365F524()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return sub_19365F530();
}

uint64_t sub_19365F530()
{
  sub_19393CAB0();
  v0 = TextUnderstandingDocumentIdentifiers.Category.rawValue.getter();
  MEMORY[0x193B18030](v0);
  return sub_19393CB00();
}

uint64_t sub_19365F58C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return sub_19365F598();
}

uint64_t sub_19365F5DC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return sub_19365F5E8();
}

uint64_t sub_19365F5E8()
{
  sub_19393CAB0();
  v0 = TextUnderstandingDocumentIdentifiers.Category.rawValue.getter();
  MEMORY[0x193B18030](v0);
  return sub_19393CB00();
}

BOOL sub_19365F640(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  return sub_19365F65C();
}

uint64_t TextUnderstandingDocumentIdentifiers.ClientMetadata.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingDocumentIdentifiers.ClientMetadata.identifier.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TextUnderstandingDocumentIdentifiers.ClientMetadata.documentIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingDocumentIdentifiers.ClientMetadata.documentIdentifier.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

IntelligencePlatformLibrary::TextUnderstandingDocumentIdentifiers::ClientMetadata __swiftcall TextUnderstandingDocumentIdentifiers.ClientMetadata.init()()
{
  *v0 = 0;
  v0[1] = 0xE000000000000000;
  v0[2] = 0;
  v0[3] = 0;
  return result;
}

uint64_t static TextUnderstandingDocumentIdentifiers.ClientMetadata.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_19393CA30(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v4)
      {
        v9 = v2 == v5 && v3 == v4;
        if (v9 || (sub_19393CA30() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t TextUnderstandingDocumentIdentifiers.ClientMetadata.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_19393C640();
  if (!v4)
  {
    return sub_19393CAD0();
  }

  sub_19393CAD0();

  return sub_19393C640();
}

uint64_t TextUnderstandingDocumentIdentifiers.ClientMetadata.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_19393CAB0();
  sub_19393C640();
  sub_19393CAD0();
  if (v4)
  {
    sub_19393C640();
  }

  return sub_19393CB00();
}

uint64_t sub_19365F96C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_19393CAB0();
  sub_19393C640();
  sub_19393CAD0();
  if (v4)
  {
    sub_19393C640();
  }

  return sub_19393CB00();
}

uint64_t static TextUnderstandingDocumentIdentifiers.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v71 = *(a1 + 48);
  v70 = *(a1 + 56);
  v66 = *(a1 + 72);
  v67 = *(a1 + 64);
  v68 = *(a1 + 80);
  v69 = *(a1 + 88);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  v64 = *(a2 + 64);
  v65 = *(a2 + 72);
  v12 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  v62 = *(a2 + 88);
  v63 = *(a2 + 80);
  if (!v12 && (sub_19393CA30() & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v7)
    {
      return 0;
    }

    v13 = v2 == v6 && v4 == v7;
    if (!v13 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }

LABEL_15:
    v14 = v3 == v8 && v5 == v9;
    if (!v14 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }

    v15 = TextUnderstandingDocumentIdentifiers.Category.rawValue.getter();
    if (v15 != TextUnderstandingDocumentIdentifiers.Category.rawValue.getter())
    {
      return 0;
    }

    if (v66)
    {
      if (v65)
      {
        v16 = v67 == v64 && v66 == v65;
        if (v16 || (sub_19393CA30() & 1) != 0)
        {
          if (!v69)
          {
            v41 = OUTLINED_FUNCTION_1_55();
            sub_19365F3E0(v41, v42);
            if (!v62)
            {
              v58 = OUTLINED_FUNCTION_234();
              sub_19365F3E0(v58, v59);
              v60 = OUTLINED_FUNCTION_1_55();
              sub_19365F3E0(v60, v61);
              v56 = OUTLINED_FUNCTION_234();
              goto LABEL_50;
            }

LABEL_43:
            v43 = OUTLINED_FUNCTION_2_55();
            sub_19365F3E0(v43, v44);
            v45 = OUTLINED_FUNCTION_1_55();
            sub_19365F3E0(v45, v46);
            v47 = OUTLINED_FUNCTION_2_55();
            sub_193442C40(v47, v48);
LABEL_44:

            v35 = OUTLINED_FUNCTION_17_1();
            goto LABEL_45;
          }

          if (v62)
          {
            if (v68 != v63 || v69 != v62)
            {
              v18 = sub_19393CA30();
              v19 = OUTLINED_FUNCTION_17_1();
              sub_19365F3E0(v19, v20);
              v21 = OUTLINED_FUNCTION_2_55();
              sub_19365F3E0(v21, v22);
              v23 = OUTLINED_FUNCTION_17_1();
              sub_19365F3E0(v23, v24);
              v25 = OUTLINED_FUNCTION_2_55();
              sub_193442C40(v25, v26);
              if (v18)
              {
                goto LABEL_51;
              }

              goto LABEL_44;
            }

            v50 = OUTLINED_FUNCTION_17_1();
            sub_19365F3E0(v50, v51);
            v52 = OUTLINED_FUNCTION_234();
            sub_19365F3E0(v52, v53);
            v54 = OUTLINED_FUNCTION_17_1();
            sub_19365F3E0(v54, v55);
            v56 = OUTLINED_FUNCTION_234();
LABEL_50:
            sub_193442C40(v56, v57);
LABEL_51:

            v39 = v67;
            v40 = v66;
            goto LABEL_52;
          }
        }

        v37 = OUTLINED_FUNCTION_17_1();
        sub_19365F3E0(v37, v38);
        goto LABEL_43;
      }

      v29 = OUTLINED_FUNCTION_17_1();
      sub_19365F3E0(v29, v30);
      OUTLINED_FUNCTION_10_45();
      v31 = OUTLINED_FUNCTION_17_1();
      sub_19365F3E0(v31, v32);
    }

    else
    {
      sub_19365F3E0(v67, 0);
      if (!v65)
      {
        OUTLINED_FUNCTION_10_45();
        v39 = v67;
        v40 = 0;
LABEL_52:
        sub_193442C40(v39, v40);
        return 1;
      }

      v27 = OUTLINED_FUNCTION_2_55();
      sub_19365F3E0(v27, v28);
    }

    v33 = OUTLINED_FUNCTION_17_1();
    sub_193442C40(v33, v34);
    v35 = OUTLINED_FUNCTION_2_55();
LABEL_45:
    sub_193442C40(v35, v36);
    return 0;
  }

  if (!v7)
  {
    goto LABEL_15;
  }

  return 0;
}

uint64_t TextUnderstandingDocumentIdentifiers.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = *(v0 + 56);
  v9 = v0[9];
  v10 = v0[11];
  v13 = v0[10];
  v14 = v0[8];
  sub_19393C640();
  sub_19393CAD0();
  if (v4)
  {
    sub_19393C640();
  }

  sub_19393C640();
  v11 = TextUnderstandingDocumentIdentifiers.Category.rawValue.getter();
  MEMORY[0x193B18030](v11);
  if (!v9)
  {
    return sub_19393CAD0();
  }

  sub_19393CAD0();
  sub_19393C640();
  if (!v10)
  {
    return sub_19393CAD0();
  }

  sub_19393CAD0();

  return sub_19393C640();
}

uint64_t TextUnderstandingDocumentIdentifiers.hashValue.getter()
{
  sub_19393CAB0();
  TextUnderstandingDocumentIdentifiers.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_19365FEBC()
{
  sub_19393CAB0();
  TextUnderstandingDocumentIdentifiers.hash(into:)();
  return sub_19393CB00();
}

unint64_t sub_19365FEFC()
{
  result = qword_1EAE3FAD0;
  if (!qword_1EAE3FAD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAE3FAD8, &qword_193977848);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FAD0);
  }

  return result;
}

unint64_t sub_19365FF68()
{
  result = qword_1EAE3FAE0;
  if (!qword_1EAE3FAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FAE0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_27IntelligencePlatformLibrary36TextUnderstandingDocumentIdentifiersV14ClientMetadataVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_19365FFDC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_19366001C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

      return OUTLINED_FUNCTION_3_2(result, a2);
    }

    *(result + 96) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_3_2(result, a2);
    }
  }

  return result;
}

uint64_t sub_193660084(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1936600EC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED511358);
  v5 = __swift_project_value_buffer(v4, qword_1ED511358);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v3, 1, v4);
  if (result != 1)
  {
    return (*(*(v4 - 8) + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

id static Library.Streams.TextUnderstanding.Output.Contact.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:259200.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:5242880 protectionClass:3 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_38 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED511358);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FAE8, &qword_193977AE0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = sub_19393C6C0();
    v11 = sub_19343E840(v7, v8, ObjCClassFromMetadata, v4, 0, v10, 0, 1, 0, 0, 0, 0, 0xD00000000000001CLL, 0x8000000193A2B4D0, v5);

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t static Library.Streams.TextUnderstanding.Output.Contact.attribute(_:)(void (*a1)(void))
{
  result = sub_193660514(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_193660550(void (*a1)(void))
{
  result = sub_193660514(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1936605B8(uint64_t a1)
{
  result = sub_1936605E0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1936605E0()
{
  result = qword_1ED5043D0;
  if (!qword_1ED5043D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5043D0);
  }

  return result;
}

_BYTE *_s7ContactOwst(_BYTE *result, int a2, int a3)
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

uint64_t sub_1936606FC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED5113B8);
  v5 = __swift_project_value_buffer(v4, qword_1ED5113B8);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v3, 1, v4);
  if (result != 1)
  {
    return (*(*(v4 - 8) + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

id static Library.Streams.TextUnderstanding.Output.Event.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:259200.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:5242880 protectionClass:3 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_39 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED5113B8);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FAF0, &qword_193977B50);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = sub_19393C6C0();
    v11 = sub_19343E840(v7, v8, ObjCClassFromMetadata, v4, 0, v10, 0, 1, 0, 0, 0, 0, 0xD00000000000001CLL, 0x8000000193A2B4D0, v5);

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t static Library.Streams.TextUnderstanding.Output.Event.attribute(_:)(void (*a1)(void))
{
  result = sub_193660B24(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_193660B60(void (*a1)(void))
{
  result = sub_193660B24(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_193660BC8(uint64_t a1)
{
  result = sub_193660BF0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_193660BF0()
{
  result = qword_1ED5043E8;
  if (!qword_1ED5043E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5043E8);
  }

  return result;
}

_BYTE *_s5EventOwst(_BYTE *result, int a2, int a3)
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

uint64_t sub_193660D0C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED511418);
  v5 = __swift_project_value_buffer(v4, qword_1ED511418);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v3, 1, v4);
  if (result != 1)
  {
    return (*(*(v4 - 8) + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

id static Library.Streams.TextUnderstanding.Output.Location.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:259200.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:5242880 protectionClass:3 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_40 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED511418);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FAF8, &qword_193977BC0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = sub_19393C6C0();
    v11 = sub_19343E840(v7, v8, ObjCClassFromMetadata, v4, 0, v10, 0, 1, 0, 0, 0, 0, 0xD00000000000001CLL, 0x8000000193A2B4D0, v5);

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t static Library.Streams.TextUnderstanding.Output.Location.attribute(_:)(void (*a1)(void))
{
  result = sub_193661134(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_193661170(void (*a1)(void))
{
  result = sub_193661134(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1936611D8(uint64_t a1)
{
  result = sub_193661200();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_193661200()
{
  result = qword_1ED5043B0;
  if (!qword_1ED5043B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5043B0);
  }

  return result;
}

_BYTE *_s8LocationOwst(_BYTE *result, int a2, int a3)
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

uint64_t sub_19366131C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED511478);
  v5 = __swift_project_value_buffer(v4, qword_1ED511478);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v3, 1, v4);
  if (result != 1)
  {
    return (*(*(v4 - 8) + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

id static Library.Streams.TextUnderstanding.Output.NamedEntity.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:259200.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:5242880 protectionClass:3 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_41 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED511478);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FB00, &qword_193977C38);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = sub_19393C6C0();
    v11 = sub_19343E840(v7, v8, ObjCClassFromMetadata, v4, 0, v10, 0, 1, 0, 0, 0, 0, 0xD00000000000001CLL, 0x8000000193A2B4D0, v5);

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t static Library.Streams.TextUnderstanding.Output.NamedEntity.attribute(_:)(void (*a1)(void))
{
  result = sub_193661744(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_193661780(void (*a1)(void))
{
  result = sub_193661744(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1936617E8(uint64_t a1)
{
  result = sub_193661810();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_193661810()
{
  result = qword_1ED5043F0;
  if (!qword_1ED5043F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5043F0);
  }

  return result;
}

_BYTE *_s11NamedEntityOwst(_BYTE *result, int a2, int a3)
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

uint64_t sub_19366192C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED5114D8);
  v5 = __swift_project_value_buffer(v4, qword_1ED5114D8);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v3, 1, v4);
  if (result != 1)
  {
    return (*(*(v4 - 8) + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

id static Library.Streams.TextUnderstanding.Output.Topic.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:259200.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:5242880 protectionClass:3 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_42 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED5114D8);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FB08, &qword_193977CB0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = sub_19393C6C0();
    v11 = sub_19343E840(v7, v8, ObjCClassFromMetadata, v4, 0, v10, 0, 1, 0, 0, 0, 0, 0xD00000000000001CLL, 0x8000000193A2B4D0, v5);

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t static Library.Streams.TextUnderstanding.Output.Topic.attribute(_:)(void (*a1)(void))
{
  result = sub_193661D54(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_193661D90(void (*a1)(void))
{
  result = sub_193661D54(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_193661DF8(uint64_t a1)
{
  result = sub_193661E20();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_193661E20()
{
  result = qword_1ED5043D8;
  if (!qword_1ED5043D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5043D8);
  }

  return result;
}

_BYTE *_s5TopicOwst(_BYTE *result, int a2, int a3)
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

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TextUnderstandingContact.json()()
{
  v1 = sub_19393C090();
  v2 = OUTLINED_FUNCTION_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v9 = v8 - v7;
  v10 = type metadata accessor for TextUnderstandingContact();
  v11 = OUTLINED_FUNCTION_4_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FB10, &qword_193977D20);
  OUTLINED_FUNCTION_4_1(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v29 - v21;
  sub_1936620DC(v0, v16);
  sub_1934470C8(v16, v10, v22);
  sub_19393C080();
  sub_193662140();
  v23 = sub_19393C250();
  v25 = v24;
  (*(v4 + 8))(v9, v1);
  sub_19344E6DC(v22, &qword_1EAE3FB10, &qword_193977D20);
  v26 = v23;
  v27 = v25;
  result._object = v27;
  result._countAndFlagsBits = v26;
  return result;
}

uint64_t sub_1936620DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextUnderstandingContact();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_193662140()
{
  result = qword_1EAE3FB18;
  if (!qword_1EAE3FB18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAE3FB10, &qword_193977D20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FB18);
  }

  return result;
}

uint64_t static TextUnderstandingContact.event(from:)@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_19393C070();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  OUTLINED_FUNCTION_5_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FB10, &qword_193977D20);
  OUTLINED_FUNCTION_4_1(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v12 - v9;

  sub_19393C060();
  sub_193662140();
  result = sub_19393C260();
  if (!v1)
  {
    return sub_1936622C0(v10, a1);
  }

  return result;
}

uint64_t sub_1936622C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextUnderstandingContact();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static TextUnderstandingContact.event(from:dataVersion:writeTimestamp:bookmark:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v37 = a6;
  v38 = a5;
  v36 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FB10, &qword_193977D20);
  OUTLINED_FUNCTION_4_1(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v35 - v13;
  v15 = sub_19393C0C0();
  v16 = OUTLINED_FUNCTION_0(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v16);
  v23 = &v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v35 - v24;
  if (*sub_1936630CC() == a3)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v41 = 0;
    v39 = 0u;
    v40 = 0u;
    (*(v18 + 16))(v23, v25, v15);
    sub_193450688(a1, a2);
    sub_193662140();
    v26 = v42;
    sub_19393C280();
    if (v26)
    {
      return (*(v18 + 8))(v25, v15);
    }

    else
    {
      (*(v18 + 8))(v25, v15);
      v29 = v37;
      sub_1936622C0(v14, v37);
      v30 = type metadata accessor for TextUnderstandingContact();
      v31 = *(v30 + 20);
      sub_19344E6DC(v29 + v31, &qword_1EAE3A9E8, &qword_19394F800);
      v32 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1(v32);
      (*(v33 + 16))(v29 + v31, v36, v32);
      __swift_storeEnumTagSinglePayload(v29 + v31, 0, 1, v32);
      v34 = *(v30 + 24);
      sub_19344E6DC(v29 + v34, &qword_1EAE3AA00, &unk_19394F8F0);
      return sub_1934970B0(v38, v29 + v34);
    }
  }

  else
  {
    sub_19349AB64();
    swift_allocError();
    *v28 = a3;
    *(v28 + 48) = 0;
    return swift_willThrow();
  }
}

uint64_t TextUnderstandingContact.serialize()()
{
  v1 = type metadata accessor for TextUnderstandingContact();
  v2 = OUTLINED_FUNCTION_4_1(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FB10, &qword_193977D20);
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v16 - v12;
  sub_1936620DC(v0, v7);
  sub_1934470C8(v7, v1, v13);
  sub_193662140();
  v14 = sub_19393C290();
  sub_19344E6DC(v13, &qword_1EAE3FB10, &qword_193977D20);
  return v14;
}

uint64_t sub_1936627A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = a1 == 0xD000000000000013 && 0x8000000193A2B920 == a2;
  if (v6 || (sub_19393CA30() & 1) != 0)
  {
    v8 = *(type metadata accessor for TextUnderstandingContact() + 28);
    memcpy(__dst, (v3 + v8), sizeof(__dst));
    memcpy(v13, (v3 + v8), sizeof(v13));
    sub_19365A03C(__dst, v15);
    sub_193494798(&type metadata for TextUnderstandingDocumentIdentifiers, &off_1F07DB1C0, a3);
    memcpy(v15, v13, sizeof(v15));
    return sub_19365A098(v15);
  }

  else
  {
    sub_19349AB64();
    swift_allocError();
    v11 = v10;
    *v10 = a1;
    v10[1] = a2;
    v10[5] = type metadata accessor for TextUnderstandingContact();
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v11 + 2);
    sub_1936620DC(v3, boxed_opaque_existential_1Tm);
    *(v11 + 48) = 1;
    swift_willThrow();
  }
}

void *TextUnderstandingContact.init()@<X0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for TextUnderstandingContact();
  v3 = v2[5];
  sub_19349C79C();
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  *a1 = *sub_1936630CC();
  sub_193442B60(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v5 = sub_19393BE00();
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v5);
  sub_193442B60(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  TextUnderstandingDocumentIdentifiers.init()(v7);
  return memcpy(a1 + v2[7], v7, 0x60uLL);
}

uint64_t static TextUnderstandingContact.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextUnderstandingContact();
  v5 = *(v4 + 28);
  memcpy(__dst, (a1 + v5), sizeof(__dst));
  memcpy(__src, (a1 + v5), sizeof(__src));
  v6 = *(v4 + 28);
  memcpy(v11, (a2 + v6), sizeof(v11));
  memcpy(v8, (a2 + v6), sizeof(v8));
  sub_19365A03C(__dst, v13);
  sub_19365A03C(v11, v13);
  sub_19365AB48();
  LOBYTE(a2) = sub_19393C550();
  memcpy(v12, v8, sizeof(v12));
  sub_19365A098(v12);
  memcpy(v13, __src, sizeof(v13));
  sub_19365A098(v13);
  return a2 & 1;
}

uint64_t TextUnderstandingContact.hash(into:)()
{
  v1 = type metadata accessor for TextUnderstandingContact();
  memcpy(v3, (v0 + *(v1 + 28)), sizeof(v3));
  sub_19365B174();
  return sub_19393C540();
}

uint64_t sub_193662B4C()
{
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEABA20);
  __swift_project_value_buffer(v0, qword_1EAEABA20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_19394FAC0;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "documentIdentifiers";
  *(v5 + 8) = 19;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_19393C410();
}

uint64_t sub_193662CB8()
{
  while (1)
  {
    result = sub_19393C0E0();
    if (v1 || (v3 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      __src = 0u;
      memset(v8, 0, sizeof(v8));
      sub_193498018();
      if (*(&__src + 1))
      {
        memcpy(&v5[1], v8, 0x50uLL);
        v5[0] = __src;
      }

      else
      {
        TextUnderstandingDocumentIdentifiers.init()(v5);
      }

      v4 = *(type metadata accessor for TextUnderstandingContact() + 28);
      memcpy(__dst, (v0 + v4), sizeof(__dst));
      sub_19365A098(__dst);
      memcpy((v0 + v4), v5, 0x60uLL);
    }
  }

  return result;
}

uint64_t sub_193662E00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FA90, &qword_1939775B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_193662E68()
{
  v1 = v0;
  v2 = *(type metadata accessor for TextUnderstandingContact() + 28);
  memcpy(__dst, (v0 + v2), sizeof(__dst));
  memcpy(v7, (v0 + v2), sizeof(v7));
  sub_19365A03C(__dst, __src);
  TextUnderstandingDocumentIdentifiers.init()(__src);
  sub_19365AB48();
  v3 = sub_19393C550();
  memcpy(v9, __src, sizeof(v9));
  sub_19365A098(v9);
  memcpy(v10, v7, sizeof(v10));
  result = sub_19365A098(v10);
  if ((v3 & 1) == 0)
  {
    memcpy(v7, (v1 + v2), sizeof(v7));
    memcpy(__src, (v1 + v2), sizeof(__src));
    sub_19365A03C(v7, v5);
    sub_193447600();
    memcpy(v5, __src, sizeof(v5));
    return sub_19365A098(v5);
  }

  return result;
}

uint64_t sub_193662FC8()
{
  OUTLINED_FUNCTION_12();
  v0 = qword_1EAE3FB20;

  return v0;
}

uint64_t sub_19366300C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EAE77180 != -1)
  {
    OUTLINED_FUNCTION_0_67();
  }

  v2 = sub_19393C420();
  __swift_project_value_buffer(v2, qword_1EAEABA20);
  OUTLINED_FUNCTION_5_6();
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t TextUnderstandingContact.writeTimestamp.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for TextUnderstandingContact();
  return sub_1934488AC(v1 + *(v2 + 20), v0, &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t type metadata accessor for TextUnderstandingContact()
{
  result = qword_1ED50D1A0;
  if (!qword_1ED50D1A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TextUnderstandingContact.bookmark.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for TextUnderstandingContact();
  return sub_1934488AC(v1 + *(v2 + 24), v0, &qword_1EAE3AA00, &unk_19394F8F0);
}

uint64_t TextUnderstandingContact.documentIdentifiers.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = *(type metadata accessor for TextUnderstandingContact() + 28);
  memcpy(__dst, (v1 + v2), sizeof(__dst));
  memcpy(v0, (v1 + v2), 0x60uLL);
  return sub_19365A03C(__dst, &v4);
}

void *TextUnderstandingContact.documentIdentifiers.setter()
{
  v2 = *(OUTLINED_FUNCTION_0_68() + 28);
  memcpy(v4, (v1 + v2), sizeof(v4));
  sub_19365A098(v4);
  return memcpy((v1 + v2), v0, 0x60uLL);
}

uint64_t TextUnderstandingContact.hashValue.getter()
{
  sub_19393CAB0();
  TextUnderstandingContact.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1936633F4()
{
  sub_19393CAB0();
  TextUnderstandingContact.hash(into:)();
  return sub_19393CB00();
}

unint64_t sub_193663434()
{
  result = qword_1EAE3FB30;
  if (!qword_1EAE3FB30)
  {
    type metadata accessor for TextUnderstandingContact();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FB30);
  }

  return result;
}

void sub_1936634B8()
{
  sub_19349D140();
  if (v0 <= 0x3F)
  {
    sub_19349D198();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TextUnderstandingEvent.json()()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v29 = sub_19393C090();
  v2 = OUTLINED_FUNCTION_0(v29);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v9 = v8 - v7;
  v10 = type metadata accessor for TextUnderstandingEvent(0);
  v11 = OUTLINED_FUNCTION_4_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FB38, &qword_193977E40);
  OUTLINED_FUNCTION_4_1(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v28 - v21;
  OUTLINED_FUNCTION_4_51();
  sub_1936659E0(v1, v16, v23);
  sub_1934470C8(v16, v10, v22);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v24, &qword_1EAE3FB38, &qword_193977E40);
  sub_19393C250();
  (*(v4 + 8))(v9, v29);
  sub_19344E6DC(v22, &qword_1EAE3FB38, &qword_193977E40);
  OUTLINED_FUNCTION_27();
  result._object = v26;
  result._countAndFlagsBits = v25;
  return result;
}

void static TextUnderstandingEvent.event(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = sub_19393C070();
  v26 = OUTLINED_FUNCTION_47(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_25_1();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FB38, &qword_193977E40);
  OUTLINED_FUNCTION_4_1(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &a9 - v33;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v35, &qword_1EAE3FB38, &qword_193977E40);
  sub_19393C260();
  if (!v20)
  {
    sub_19366384C(v34, v24);
  }

  OUTLINED_FUNCTION_27();
}

uint64_t sub_19366384C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextUnderstandingEvent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void static TextUnderstandingEvent.event(from:dataVersion:writeTimestamp:bookmark:)()
{
  OUTLINED_FUNCTION_26();
  v39 = v3;
  v40 = v2;
  v38 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FB38, &qword_193977E40);
  OUTLINED_FUNCTION_4_1(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_25_1();
  v15 = sub_19393C0C0();
  v16 = OUTLINED_FUNCTION_0(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_6();
  v23 = v21 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v37 - v25;
  if (*sub_193669E04() == v6)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v43 = 0;
    v41 = 0u;
    v42 = 0u;
    (*(v18 + 16))(v23, v26, v15);
    sub_193450688(v10, v8);
    OUTLINED_FUNCTION_0_8();
    sub_19344A3FC(v27, v28, v29);
    sub_19393C280();
    (*(v18 + 8))(v26, v15);
    if (!v0)
    {
      v31 = v39;
      sub_19366384C(v1, v39);
      v32 = type metadata accessor for TextUnderstandingEvent(0);
      v33 = *(v32 + 20);
      sub_19344E6DC(v31 + v33, &qword_1EAE3A9E8, &qword_19394F800);
      v34 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1(v34);
      (*(v35 + 16))(v31 + v33, v38, v34);
      __swift_storeEnumTagSinglePayload(v31 + v33, 0, 1, v34);
      v36 = *(v32 + 24);
      sub_19344E6DC(v31 + v36, &qword_1EAE3AA00, &unk_19394F8F0);
      sub_1934970B0(v40, v31 + v36);
    }
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    swift_allocError();
    *v30 = v6;
    *(v30 + 48) = 0;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_27();
}

uint64_t TextUnderstandingEvent.serialize()()
{
  v2 = type metadata accessor for TextUnderstandingEvent(0);
  v3 = OUTLINED_FUNCTION_4_1(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_25_1();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FB38, &qword_193977E40);
  OUTLINED_FUNCTION_4_1(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  OUTLINED_FUNCTION_4_51();
  sub_1936659E0(v0, v1, v12);
  sub_1934470C8(v1, v2, v11);
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v13, &qword_1EAE3FB38, &qword_193977E40);
  sub_19393C290();
  sub_19344E6DC(v11, &qword_1EAE3FB38, &qword_193977E40);
  return OUTLINED_FUNCTION_13_0();
}

id static TextUnderstandingEvent.columns.getter()
{
  v287 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  *(swift_initStackObject() + 16) = xmmword_193950B10;
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_5_10(v1, v2, v3, v4, v5, v6, v7, v8, v9);
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  *(v0 + 32) = sub_19393C850();
  v10 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_2_56();
  result = sub_19343D150(v11, v12, v13, v14, v15, v16, 0);
  if (!result)
  {
    __break(1u);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_69_3(result);
  inited = swift_initStackObject();
  v26 = OUTLINED_FUNCTION_2_4(inited, v19, v20, v21, v22, v23, v24, v25, xmmword_193950B10);
  OUTLINED_FUNCTION_5_10(v26, v27, v28, v29, v30, v31, v32, v33, v34);
  v35 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v35);
  OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_2_56();
  result = sub_19343D150(v36, v37, v38, v39, v40, v41, 0);
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_69_3(result);
  v42 = swift_initStackObject();
  v50 = OUTLINED_FUNCTION_2_4(v42, v43, v44, v45, v46, v47, v48, v49, v276);
  OUTLINED_FUNCTION_5_10(v50, v51, v52, v53, v54, v55, v56, v57, v58);
  v59 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v59);
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_2_56();
  result = sub_19343D150(v60, v61, v62, v63, v64, v65, 0);
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_69_3(result);
  v66 = swift_initStackObject();
  v74 = OUTLINED_FUNCTION_2_4(v66, v67, v68, v69, v70, v71, v72, v73, v277);
  OUTLINED_FUNCTION_5_10(v74, v75, v76, v77, v78, v79, v80, v81, v82);
  v83 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v83);
  v84 = OUTLINED_FUNCTION_24_31();
  result = OUTLINED_FUNCTION_20_36(v84, 0xE900000000000065);
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_69_3(result);
  v85 = swift_initStackObject();
  v93 = OUTLINED_FUNCTION_2_4(v85, v86, v87, v88, v89, v90, v91, v92, v278);
  OUTLINED_FUNCTION_5_10(v93, v94, v95, v96, v97, v98, v99, v100, v101);
  v102 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v102);
  v103 = OUTLINED_FUNCTION_27_24();
  result = OUTLINED_FUNCTION_20_36(v103, 0xE700000000000000);
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_69_3(result);
  v104 = swift_initStackObject();
  v112 = OUTLINED_FUNCTION_2_4(v104, v105, v106, v107, v108, v109, v110, v111, v279);
  OUTLINED_FUNCTION_5_10(v112, v113, v114, v115, v116, v117, v118, v119, v120);
  v121 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v121);
  OUTLINED_FUNCTION_26_22();
  OUTLINED_FUNCTION_2_56();
  result = sub_19343D150(v122, v123, v124, v125, v126, v127, 0);
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_69_3(result);
  v128 = swift_initStackObject();
  v136 = OUTLINED_FUNCTION_2_4(v128, v129, v130, v131, v132, v133, v134, v135, v280);
  OUTLINED_FUNCTION_5_10(v136, v137, v138, v139, v140, v141, v142, v143, v144);
  v145 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v145);
  OUTLINED_FUNCTION_80_1();
  OUTLINED_FUNCTION_23_32();
  OUTLINED_FUNCTION_2_56();
  result = sub_19343D150(v146, v147, v148, v149, v150, v151, 0);
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_69_3(result);
  v152 = swift_initStackObject();
  v160 = OUTLINED_FUNCTION_2_4(v152, v153, v154, v155, v156, v157, v158, v159, v281);
  OUTLINED_FUNCTION_5_10(v160, v161, v162, v163, v164, v165, v166, v167, v168);
  v169 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v169);
  OUTLINED_FUNCTION_34_27();
  OUTLINED_FUNCTION_33_19();
  OUTLINED_FUNCTION_2_56();
  result = sub_19343D150(v170, v171, v172, v173, v174, v175, 0);
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_69_3(result);
  v176 = swift_initStackObject();
  v184 = OUTLINED_FUNCTION_2_4(v176, v177, v178, v179, v180, v181, v182, v183, v282);
  OUTLINED_FUNCTION_5_10(v184, v185, v186, v187, v188, v189, v190, v191, v192);
  v193 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v193);
  OUTLINED_FUNCTION_2_56();
  result = sub_19343D150(v194, v195, v196, v197, v198, v199, 0);
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_69_3(result);
  v200 = swift_initStackObject();
  v208 = OUTLINED_FUNCTION_2_4(v200, v201, v202, v203, v204, v205, v206, v207, v283);
  OUTLINED_FUNCTION_5_10(v208, v209, v210, v211, v212, v213, v214, v215, v216);
  v217 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v217);
  OUTLINED_FUNCTION_2_56();
  result = sub_19343D150(v218, v219, v220, v221, v222, v223, 0);
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_69_3(result);
  v224 = swift_initStackObject();
  v232 = OUTLINED_FUNCTION_2_4(v224, v225, v226, v227, v228, v229, v230, v231, v284);
  OUTLINED_FUNCTION_5_10(v232, v233, v234, v235, v236, v237, v238, v239, v240);
  v241 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v241);
  OUTLINED_FUNCTION_29_22();
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v242, v243, v244, v245, v0, 12, 0);
  if (!result)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_69_3(result);
  v246 = swift_initStackObject();
  v254 = OUTLINED_FUNCTION_2_4(v246, v247, v248, v249, v250, v251, v252, v253, v285);
  OUTLINED_FUNCTION_5_10(v254, v255, v256, v257, v258, v259, v260, v261, v262);
  v263 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v263);
  OUTLINED_FUNCTION_2_56();
  result = sub_19343D150(v264, v265, v266, v267, v268, v269, 4);
  if (!result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_69_3(result);
  *(swift_initStackObject() + 16) = v286;
  v270 = swift_allocObject();
  *(v270 + 16) = v286;
  *(v270 + 32) = sub_19393C850();
  v271 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v272, v273, v274, v275, v270, 12, 0);
  if (result)
  {
    OUTLINED_FUNCTION_69_3(result);
    return v287;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_1936641E4()
{
  OUTLINED_FUNCTION_26();
  v95 = v0;
  v96 = v1;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ACA0, &qword_193972420);
  OUTLINED_FUNCTION_47(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  v92 = &v90 - v10;
  v93 = sub_19393BD10();
  v11 = OUTLINED_FUNCTION_0(v93);
  v91 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  v90 = v16 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v18 = OUTLINED_FUNCTION_47(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_6();
  v23 = v21 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v90 - v25;
  v27 = sub_19393BE00();
  v28 = OUTLINED_FUNCTION_0(v27);
  v94 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_6();
  v34 = v32 - v33;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v90 - v36;
  OUTLINED_FUNCTION_38();
  v39 = v5 == 0xD000000000000013 && v38 == v3;
  if (v39 || (OUTLINED_FUNCTION_24_5() & 1) != 0)
  {
    v40 = *(type metadata accessor for TextUnderstandingEvent(0) + 28);
    memcpy(v98, (v95 + v40), 0x60uLL);
    memcpy(v97, (v95 + v40), sizeof(v97));
    sub_19365A03C(v98, v99);
    sub_193494798(&type metadata for TextUnderstandingDocumentIdentifiers, &off_1F07DB1C0, v96);
    memcpy(v99, v97, 0x60uLL);
    sub_19365A098(v99);
    goto LABEL_16;
  }

  v41 = v5 == 0x737574617473 && v3 == 0xE600000000000000;
  if (v41 || (OUTLINED_FUNCTION_24_5() & 1) != 0)
  {
    v42 = *(type metadata accessor for TextUnderstandingEvent(0) + 32);
LABEL_13:
    v43 = (v95 + v42);
    v45 = *v43;
    v44 = v43[1];
LABEL_14:
    v99[0] = v45;
    v99[1] = v44;
LABEL_15:
    sub_1934948FC();
    goto LABEL_16;
  }

  v46 = v5 == OUTLINED_FUNCTION_31_2() && v3 == 0xE800000000000000;
  if (v46 || (OUTLINED_FUNCTION_24_5() & 1) != 0)
  {
    v42 = *(type metadata accessor for TextUnderstandingEvent(0) + 36);
    goto LABEL_13;
  }

  v47 = v5 == OUTLINED_FUNCTION_30_2() && v3 == 0xE90000000000006DLL;
  if (v47 || (OUTLINED_FUNCTION_24_5() & 1) != 0)
  {
    v42 = *(type metadata accessor for TextUnderstandingEvent(0) + 40);
    goto LABEL_13;
  }

  v48 = v5 == OUTLINED_FUNCTION_32_25() && v3 == 0xE800000000000000;
  if (v48 || (OUTLINED_FUNCTION_24_5() & 1) != 0)
  {
    v49 = *(type metadata accessor for TextUnderstandingEvent(0) + 44);
    v50 = type metadata accessor for TextUnderstandingEvent.Metadata(0);
    v51 = &off_1F07DB898;
LABEL_35:
    sub_193494798(v50, v51, v96);
    goto LABEL_16;
  }

  v52 = v5 == OUTLINED_FUNCTION_24_31() && v3 == 0xE900000000000065;
  if (!v52 && (OUTLINED_FUNCTION_24_5() & 1) == 0)
  {
    v56 = v5 == OUTLINED_FUNCTION_27_24() && v3 == 0xE700000000000000;
    if (v56 || (OUTLINED_FUNCTION_24_5() & 1) != 0)
    {
      v57 = type metadata accessor for TextUnderstandingEvent(0);
      sub_193448758(v95 + *(v57 + 52), v23, &qword_1EAE3A9E8, &qword_19394F800);
      OUTLINED_FUNCTION_5_3(v23);
      if (!v39)
      {
        v61 = v94;
        (*(v94 + 32))(v34, v23, v27);
        sub_1934948FC();
        (*(v61 + 8))(v34, v27);
        goto LABEL_16;
      }

      v58 = &qword_1EAE3A9E8;
      v59 = &qword_19394F800;
      v60 = v23;
      goto LABEL_52;
    }

    v62 = v5 == 0x636F4C7472617473 && v3 == 0xED00006E6F697461;
    if (v62 || (OUTLINED_FUNCTION_24_5() & 1) != 0)
    {
      v63 = *(type metadata accessor for TextUnderstandingEvent(0) + 56);
    }

    else
    {
      v65 = v5 == 0x7461636F4C646E65 && v3 == 0xEB000000006E6F69;
      if (!v65 && (OUTLINED_FUNCTION_24_5() & 1) == 0)
      {
        v66 = v5 == OUTLINED_FUNCTION_26_22() && v3 == 0xE700000000000000;
        if (v66 || (OUTLINED_FUNCTION_24_5() & 1) != 0)
        {
          v67 = *(type metadata accessor for TextUnderstandingEvent(0) + 64);
        }

        else
        {
          OUTLINED_FUNCTION_23_32();
          v70 = v5 == OUTLINED_FUNCTION_80_1() && v3 == v69;
          if (v70 || (OUTLINED_FUNCTION_24_5() & 1) != 0)
          {
            v67 = *(type metadata accessor for TextUnderstandingEvent(0) + 68);
          }

          else
          {
            OUTLINED_FUNCTION_33_19();
            v72 = v5 == OUTLINED_FUNCTION_34_27() && v3 == v71;
            if (v72 || (OUTLINED_FUNCTION_24_5() & 1) != 0)
            {
              v67 = *(type metadata accessor for TextUnderstandingEvent(0) + 72);
            }

            else
            {
              v73 = v5 == 0x7365746F6ELL && v3 == 0xE500000000000000;
              if (v73 || (OUTLINED_FUNCTION_24_5() & 1) != 0)
              {
                v67 = *(type metadata accessor for TextUnderstandingEvent(0) + 76);
              }

              else
              {
                v74 = v5 == 0x656C746974 && v3 == 0xE500000000000000;
                if (!v74 && (OUTLINED_FUNCTION_24_5() & 1) == 0)
                {
                  v75 = v5 == OUTLINED_FUNCTION_29_22() && v3 == 0xE800000000000000;
                  if (v75 || (OUTLINED_FUNCTION_24_5() & 1) != 0)
                  {
                    v76 = *(v95 + *(type metadata accessor for TextUnderstandingEvent(0) + 84));
                  }

                  else
                  {
                    v77 = v5 == 7107189 && v3 == 0xE300000000000000;
                    if (v77 || (OUTLINED_FUNCTION_24_5() & 1) != 0)
                    {
                      v78 = type metadata accessor for TextUnderstandingEvent(0);
                      v79 = v92;
                      sub_193448758(v95 + *(v78 + 88), v92, &qword_1EAE3ACA0, &qword_193972420);
                      if (__swift_getEnumTagSinglePayload(v79, 1, v93) != 1)
                      {
                        v81 = v90;
                        v80 = v91;
                        v82 = v93;
                        (*(v91 + 32))(v90, v92, v93);
                        sub_1934948FC();
                        (*(v80 + 8))(v81, v82);
                        goto LABEL_16;
                      }

                      v58 = &qword_1EAE3ACA0;
                      v59 = &qword_193972420;
                      v60 = v92;
LABEL_52:
                      sub_19344E6DC(v60, v58, v59);
                      goto LABEL_60;
                    }

                    OUTLINED_FUNCTION_38();
                    v84 = v5 == 0xD000000000000014 && v83 == v3;
                    if (!v84 && (OUTLINED_FUNCTION_24_5() & 1) == 0)
                    {
                      sub_19349AB64();
                      OUTLINED_FUNCTION_11();
                      swift_allocError();
                      v87 = v86;
                      *v86 = v5;
                      v86[1] = v3;
                      v86[5] = type metadata accessor for TextUnderstandingEvent(0);
                      __swift_allocate_boxed_opaque_existential_1Tm(v87 + 2);
                      OUTLINED_FUNCTION_4_51();
                      sub_1936659E0(v95, v88, v89);
                      *(v87 + 48) = 1;
                      swift_willThrow();

                      goto LABEL_16;
                    }

                    v85 = *(v95 + *(type metadata accessor for TextUnderstandingEvent(0) + 92));
                    if (v85 == 2)
                    {
                      goto LABEL_60;
                    }

                    v76 = v85 & 1;
                  }

                  LOBYTE(v99[0]) = v76;
                  goto LABEL_15;
                }

                v67 = *(type metadata accessor for TextUnderstandingEvent(0) + 80);
              }
            }
          }
        }

        v68 = (v95 + v67);
        v44 = *(v95 + v67 + 8);
        if (v44)
        {
          v45 = *v68;
          goto LABEL_14;
        }

LABEL_60:
        v64 = v96;
        *v96 = 0u;
        *(v64 + 1) = 0u;
        goto LABEL_16;
      }

      v63 = *(type metadata accessor for TextUnderstandingEvent(0) + 60);
    }

    memcpy(v99, (v95 + v63), 0xF8uLL);
    if (sub_19366596C(v99) != 1)
    {
      memcpy(v98, v99, sizeof(v98));
      v50 = &type metadata for TextUnderstandingEvent.Location;
      v51 = &off_1F07DB888;
      goto LABEL_35;
    }

    goto LABEL_60;
  }

  v53 = type metadata accessor for TextUnderstandingEvent(0);
  sub_193448758(v95 + *(v53 + 48), v26, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_5_3(v26);
  if (v39)
  {
    sub_19344E6DC(v26, &qword_1EAE3A9E8, &qword_19394F800);
    v54 = v96;
    *v96 = 0u;
    *(v54 + 1) = 0u;
  }

  else
  {
    v55 = v94;
    (*(v94 + 32))(v37, v26, v27);
    sub_1934948FC();
    (*(v55 + 8))(v37, v27);
  }

LABEL_16:
  OUTLINED_FUNCTION_27();
}

uint64_t sub_193664AF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  memcpy(__dst, v4, sizeof(__dst));
  v8 = a1 == 0x79726F6765746163 && a2 == 0xE800000000000000;
  if (v8 || (result = OUTLINED_FUNCTION_5_5(), (result & 1) != 0))
  {
    __src[0] = *__dst;
    return sub_1934948FC();
  }

  v10 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v10 || (result = OUTLINED_FUNCTION_5_5(), (result & 1) != 0))
  {
    v11 = *&__dst[24];
    if (*&__dst[24])
    {
      v12 = *&__dst[16];
LABEL_15:
      *&__src[0] = v12;
      *(&__src[0] + 1) = v11;
      return sub_1934948FC();
    }

    goto LABEL_22;
  }

  v13 = a1 == 0x73736572646461 && a2 == 0xE700000000000000;
  if (v13 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    memcpy(__src, (v4 + 32), 0x90uLL);
    result = get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(__src);
    if (result == 1)
    {
LABEL_22:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    memcpy(v23, __src, sizeof(v23));
    v14 = &type metadata for TextUnderstandingLocation.Address;
    v15 = &off_1F07DBAC8;
    return sub_193494798(v14, v15, a3);
  }

  result = 0x6D754E656E6F6870;
  v16 = a1 == 0x6D754E656E6F6870 && a2 == 0xEB00000000726562;
  if (v16 || (result = OUTLINED_FUNCTION_5_5(), (result & 1) != 0))
  {
    v11 = *&__dst[184];
    if (*&__dst[184])
    {
      v12 = *&__dst[176];
      goto LABEL_15;
    }

    goto LABEL_22;
  }

  result = 0x616E6964726F6F63;
  v17 = a1 == 0x616E6964726F6F63 && a2 == 0xEB00000000736574;
  if (v17 || (result = OUTLINED_FUNCTION_5_5(), (result & 1) != 0))
  {
    if (__dst[208])
    {
      goto LABEL_22;
    }

    __src[0] = *&__dst[192];
    v14 = &type metadata for TextUnderstandingLocation.Coordinates;
    v15 = &off_1F07DBAD8;
    return sub_193494798(v14, v15, a3);
  }

  result = OUTLINED_FUNCTION_32_25();
  v18 = a1 == result && a2 == 0xE800000000000000;
  if (v18 || (result = OUTLINED_FUNCTION_5_5(), (result & 1) != 0))
  {
    if (*&__dst[224] == 1)
    {
      goto LABEL_22;
    }

    __src[0] = *&__dst[216];
    v14 = &type metadata for TextUnderstandingLocation.Metadata;
    v15 = &off_1F07DBAE8;
    return sub_193494798(v14, v15, a3);
  }

  v19 = a1 == 0xD000000000000012 && 0x8000000193A2B980 == a2;
  if (v19 || (result = OUTLINED_FUNCTION_5_5(), (result & 1) != 0))
  {
    v11 = *&__dst[240];
    if (*&__dst[240])
    {
      v12 = *&__dst[232];
      goto LABEL_15;
    }

    goto LABEL_22;
  }

  sub_19349AB64();
  OUTLINED_FUNCTION_11();
  swift_allocError();
  v21 = v20;
  *v20 = a1;
  v20[1] = a2;
  v20[5] = &type metadata for TextUnderstandingEvent.Location;
  v22 = swift_allocObject();
  v21[2] = v22;
  memcpy((v22 + 16), __dst, 0xF8uLL);
  *(v21 + 48) = 1;
  swift_willThrow();

  return sub_193665984(__dst, __src);
}

void sub_193664E28()
{
  OUTLINED_FUNCTION_26();
  v114 = v0;
  v115 = v2;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ACA0, &qword_193972420);
  v8 = OUTLINED_FUNCTION_47(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_6();
  v111 = v11 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v110 - v14;
  v16 = sub_19393BD10();
  v17 = OUTLINED_FUNCTION_0(v16);
  v112 = v18;
  v113 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_6();
  v110 = v21 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v110 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_47(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_25_1();
  v30 = sub_19393BE00();
  v31 = OUTLINED_FUNCTION_0(v30);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5_1();
  v38 = v37 - v36;
  OUTLINED_FUNCTION_187_1();
  v41 = v40 | 2;
  v42 = v6 == (v40 | 2) && v39 == v4;
  if (v42 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v43 = v114;
    goto LABEL_7;
  }

  v45 = v6 == 0x50676E696B6F6F62 && v4 == 0xEF72656469766F72;
  if (v45 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v46 = v114[3];
    if (v46)
    {
      v47 = v114[2];
LABEL_17:
      v116 = v47;
      v117 = v46;
      sub_1934948FC();
      goto LABEL_56;
    }

    goto LABEL_39;
  }

  v48 = v6 == 0x7069636974726170 && v4 == 0xEC00000073746E61;
  if (v48 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v49 = v114[4];
LABEL_24:
    v116 = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ABB0, &qword_193950BB8);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_187_1();
  v52 = v6 == v51 + 1 && v50 == v4;
  if (v52 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v46 = v114[6];
    if (v46)
    {
      v47 = v114[5];
      goto LABEL_17;
    }

LABEL_39:
    v54 = v115;
    *v115 = 0u;
    v54[1] = 0u;
    goto LABEL_56;
  }

  v53 = v6 == 0x754E746867696C66 && v4 == 0xEC0000007265626DLL;
  if (v53 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v46 = v114[8];
    if (v46)
    {
      v47 = v114[7];
      goto LABEL_17;
    }

    goto LABEL_39;
  }

  v55 = v6 == 0x626D754E74616573 && v4 == 0xEB00000000737265;
  if (v55 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v49 = v114[9];
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_38();
  v57 = v6 == v41 && v56 == v4;
  if (v57 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v58 = type metadata accessor for TextUnderstandingEvent.Metadata(0);
    sub_193448758(v114 + *(v58 + 40), v1, &qword_1EAE3A9E8, &qword_19394F800);
    OUTLINED_FUNCTION_5_3(v1);
    if (!v42)
    {
      (*(v33 + 32))(v38, v1, v30);
      sub_1934948FC();
      (*(v33 + 8))(v38, v30);
      goto LABEL_56;
    }

    v59 = &qword_1EAE3A9E8;
    v60 = &qword_19394F800;
    v61 = v1;
    goto LABEL_54;
  }

  v63 = v6 == 0x6E6F697461727564 && v4 == 0xE800000000000000;
  if (!v63 && (OUTLINED_FUNCTION_59_0() & 1) == 0)
  {
    OUTLINED_FUNCTION_187_1();
    v67 = v6 == v66 && v65 == v4;
    if (v67 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
    {
      v68 = type metadata accessor for TextUnderstandingEvent.Metadata(0);
      sub_193448758(v114 + *(v68 + 48), v15, &qword_1EAE3ACA0, &qword_193972420);
      if (__swift_getEnumTagSinglePayload(v15, 1, v113) != 1)
      {
        v69 = v112;
        (*(v112 + 32))(v25, v15, v113);
        OUTLINED_FUNCTION_13_0();
        sub_1934948FC();
        v70 = *(v69 + 8);
        v71 = OUTLINED_FUNCTION_13_0();
        v72(v71);
        goto LABEL_56;
      }

      v59 = &qword_1EAE3ACA0;
      v60 = &qword_193972420;
      v61 = v15;
      goto LABEL_54;
    }

    v73 = v6 == 1953722211 && v4 == 0xE400000000000000;
    if (v73 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
    {
      v64 = *(type metadata accessor for TextUnderstandingEvent.Metadata(0) + 52);
      goto LABEL_63;
    }

    v74 = v6 == 0x79636E6572727563 && v4 == 0xE800000000000000;
    if (v74 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
    {
      v64 = *(type metadata accessor for TextUnderstandingEvent.Metadata(0) + 56);
      goto LABEL_63;
    }

    v75 = v6 == 0x6F6F526C65746F68 && v4 == 0xEE00746E756F436DLL;
    if (v75 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
    {
      v76 = *(type metadata accessor for TextUnderstandingEvent.Metadata(0) + 60);
    }

    else
    {
      OUTLINED_FUNCTION_187_1();
      v80 = v6 == v79 && v78 == v4;
      if (v80 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
      {
        v49 = *(v114 + *(type metadata accessor for TextUnderstandingEvent.Metadata(0) + 64));
        goto LABEL_24;
      }

      OUTLINED_FUNCTION_187_1();
      v83 = v6 == v82 + 3 && v81 == v4;
      if (!v83 && (OUTLINED_FUNCTION_59_0() & 1) == 0)
      {
        v84 = v6 == 0x61746E6552726163 && v4 == 0xED0000656D614E6CLL;
        if (v84 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
        {
          v64 = *(type metadata accessor for TextUnderstandingEvent.Metadata(0) + 72);
          goto LABEL_63;
        }

        OUTLINED_FUNCTION_187_1();
        v87 = v86 + 4;
        v88 = v6 == v86 + 4 && v85 == v4;
        if (v88 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
        {
          v64 = *(type metadata accessor for TextUnderstandingEvent.Metadata(0) + 76);
          goto LABEL_63;
        }

        v89 = v6 == 0x6D614E7974726170 && v4 == 0xE900000000000065;
        if (v89 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
        {
          v64 = *(type metadata accessor for TextUnderstandingEvent.Metadata(0) + 80);
          goto LABEL_63;
        }

        v90 = v6 == 0x4C52557974726170 && v4 == 0xE800000000000000;
        if (v90 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
        {
          v91 = type metadata accessor for TextUnderstandingEvent.Metadata(0);
          v92 = v111;
          sub_193448758(v114 + *(v91 + 84), v111, &qword_1EAE3ACA0, &qword_193972420);
          if (__swift_getEnumTagSinglePayload(v92, 1, v113) != 1)
          {
            v93 = v112;
            v94 = v110;
            v95 = v113;
            (*(v112 + 32))(v110, v111, v113);
            sub_1934948FC();
            (*(v93 + 8))(v94, v95);
            goto LABEL_56;
          }

          v59 = &qword_1EAE3ACA0;
          v60 = &qword_193972420;
          v61 = v111;
LABEL_54:
          sub_19344E6DC(v61, v59, v60);
          goto LABEL_55;
        }

        v96 = v6 == 0x6D746E696F707061 && v4 == 0xEF656D614E746E65;
        if (v96 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
        {
          v64 = *(type metadata accessor for TextUnderstandingEvent.Metadata(0) + 88);
          goto LABEL_63;
        }

        OUTLINED_FUNCTION_38();
        v98 = v6 == v87 && v97 == v4;
        if (v98 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
        {
          v64 = *(type metadata accessor for TextUnderstandingEvent.Metadata(0) + 92);
          goto LABEL_63;
        }

        v99 = v6 == 0x65707954776F6873 && v4 == 0xE800000000000000;
        if (v99 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
        {
          v64 = *(type metadata accessor for TextUnderstandingEvent.Metadata(0) + 96);
          goto LABEL_63;
        }

        v100 = v6 == 0x656D614E776F6873 && v4 == 0xE800000000000000;
        if (v100 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
        {
          v64 = *(type metadata accessor for TextUnderstandingEvent.Metadata(0) + 100);
          goto LABEL_63;
        }

        v101 = v6 == 0x6B636954776F6873 && v4 == 0xEE00657079547465;
        if (v101 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
        {
          v64 = *(type metadata accessor for TextUnderstandingEvent.Metadata(0) + 104);
          goto LABEL_63;
        }

        v102 = v6 == 0x726F70736E617274 && v4 == 0xED00006570795474;
        if (v102 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
        {
          v64 = *(type metadata accessor for TextUnderstandingEvent.Metadata(0) + 108);
          goto LABEL_63;
        }

        v103 = v6 == 0x726F70736E617274 && v4 == 0xED0000656D614E74;
        if (v103 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
        {
          v64 = *(type metadata accessor for TextUnderstandingEvent.Metadata(0) + 112);
          goto LABEL_63;
        }

        v104 = v6 == 0x656D686361747461 && v4 == 0xEE0061746144746ELL;
        if (!v104 && (OUTLINED_FUNCTION_59_0() & 1) == 0)
        {
          sub_19349AB64();
          OUTLINED_FUNCTION_11();
          swift_allocError();
          v108 = v107;
          *v107 = v6;
          v107[1] = v4;
          v107[5] = type metadata accessor for TextUnderstandingEvent.Metadata(0);
          boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v108 + 2);
          sub_1936659E0(v114, boxed_opaque_existential_1Tm, type metadata accessor for TextUnderstandingEvent.Metadata);
          *(v108 + 48) = 1;
          swift_willThrow();

          goto LABEL_56;
        }

        v105 = (v114 + *(type metadata accessor for TextUnderstandingEvent.Metadata(0) + 116));
        v106 = v105[1];
        if (v106 >> 60 != 15)
        {
          v116 = *v105;
          v117 = v106;
          goto LABEL_9;
        }

LABEL_55:
        v62 = v115;
        *v115 = 0u;
        v62[1] = 0u;
        goto LABEL_56;
      }

      v76 = *(type metadata accessor for TextUnderstandingEvent.Metadata(0) + 68);
    }

    v77 = v114 + v76;
    if ((v77[4] & 1) == 0)
    {
      LODWORD(v116) = *v77;
      goto LABEL_9;
    }

    goto LABEL_55;
  }

  v64 = *(type metadata accessor for TextUnderstandingEvent.Metadata(0) + 44);
LABEL_63:
  v43 = (v114 + v64);
LABEL_7:
  v44 = v43[1];
  if (!v44)
  {
    goto LABEL_55;
  }

  v116 = *v43;
  v117 = v44;
LABEL_9:
  sub_1934948FC();
LABEL_56:
  OUTLINED_FUNCTION_27();
}

uint64_t sub_19366596C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1936659E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_4_1(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_13_0();
  v8(v7);
  return a2;
}

uint64_t TextUnderstandingEvent.init()@<X0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for TextUnderstandingEvent(0);
  v3 = v2[5];
  sub_193669E10();
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  v5 = v2[12];
  sub_19366E80C();
  v6 = v2[13];
  sub_19366E80C();
  v7 = v2[14];
  sub_19366E810(a1 + v7);
  v14 = v2[15];
  sub_19366A68C(a1 + v14);
  v20 = (a1 + v2[16]);
  j__OUTLINED_FUNCTION_10_1();
  v19 = (a1 + v2[17]);
  j__OUTLINED_FUNCTION_10_1();
  v18 = (a1 + v2[18]);
  j__OUTLINED_FUNCTION_10_1();
  v17 = (a1 + v2[19]);
  j__OUTLINED_FUNCTION_10_1();
  v15 = (a1 + v2[20]);
  j__OUTLINED_FUNCTION_10_1();
  v16 = v2[22];
  sub_19366AB14();
  v21 = v2[23];
  OUTLINED_FUNCTION_7_9();
  *a1 = *sub_193669E04();
  sub_19344E6DC(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  sub_19393BE00();
  OUTLINED_FUNCTION_21_32(a1 + v3);
  sub_19344E6DC(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  TextUnderstandingDocumentIdentifiers.init()(__src);
  memcpy(a1 + v2[7], __src, 0x60uLL);
  v8 = (a1 + v2[8]);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  v9 = (a1 + v2[9]);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = (a1 + v2[10]);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v11 = a1 + v2[11];
  TextUnderstandingEvent.Metadata.init()();
  sub_19344E6DC(a1 + v5, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_21_32(a1 + v5);
  sub_19344E6DC(a1 + v6, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_21_32(a1 + v6);
  sub_193665964(v23);
  memcpy(__dst, a1 + v7, sizeof(__dst));
  sub_19344E6DC(__dst, &qword_1EAE3FB48, &qword_193977E48);
  memcpy(a1 + v7, v23, 0xF8uLL);
  memcpy(v25, a1 + v14, 0xF8uLL);
  sub_19344E6DC(v25, &qword_1EAE3FB48, &qword_193977E48);

  memcpy(a1 + v14, v23, 0xF8uLL);

  *v20 = 0;
  v20[1] = 0;
  *v19 = 0;
  v19[1] = 0;
  *v18 = 0;
  v18[1] = 0;
  *v17 = 0;
  v17[1] = 0;
  *v15 = 0;
  v15[1] = 0;
  *(a1 + v2[21]) = 0;
  sub_19344E6DC(a1 + v16, &qword_1EAE3ACA0, &qword_193972420);
  v12 = sub_19393BD10();
  result = __swift_storeEnumTagSinglePayload(a1 + v16, 1, 1, v12);
  *(a1 + v21) = 2;
  return result;
}

BOOL static TextUnderstandingEvent.== infix(_:_:)(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v4 = v1;
  v5 = sub_19393BD10();
  v6 = OUTLINED_FUNCTION_0(v5);
  v159 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_1();
  v158 = v11 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ACA0, &qword_193972420);
  v13 = OUTLINED_FUNCTION_47(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v161 = &v153 - v16;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F118, &qword_193972428);
  v17 = OUTLINED_FUNCTION_4_1(v160);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v162 = &v153 - v20;
  v21 = sub_19393BE00();
  v22 = OUTLINED_FUNCTION_0(v21);
  v166 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5_1();
  v164 = v27 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v29 = OUTLINED_FUNCTION_47(v28);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_6();
  v163 = v32 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v153 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B968, &qword_193972430);
  v38 = OUTLINED_FUNCTION_4_1(v37);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_6();
  v165 = v41 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v153 - v44;
  v46 = type metadata accessor for TextUnderstandingEvent(0);
  v47 = v46[7];
  memcpy(v180, (v4 + v47), sizeof(v180));
  memcpy(v176, (v4 + v47), 0x60uLL);
  v48 = v46[7];
  memcpy(v181, (v3 + v48), sizeof(v181));
  memcpy(v174, (v3 + v48), 0x60uLL);
  sub_19365A03C(v180, v179);
  sub_19365A03C(v181, v179);
  sub_19365AB48();
  LOBYTE(v48) = sub_19393C550();
  memcpy(v182, v174, sizeof(v182));
  sub_19365A098(v182);
  memcpy(__dst, v176, 0x60uLL);
  sub_19365A098(__dst);
  if ((v48 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_4_52(v46[8]);
  v51 = v51 && v49 == v50;
  if (!v51 && (sub_19393CA30() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_4_52(v46[9]);
  v54 = v51 && v52 == v53;
  if (!v54 && (sub_19393CA30() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_4_52(v46[10]);
  v57 = v51 && v55 == v56;
  if (!v57 && (sub_19393CA30() & 1) == 0)
  {
    return 0;
  }

  v156 = v5;
  v58 = v46[11];
  type metadata accessor for TextUnderstandingEvent.Metadata(0);
  OUTLINED_FUNCTION_6_47();
  sub_193667288(v59, v60);
  if ((sub_19393C550() & 1) == 0)
  {
    return 0;
  }

  v157 = v3;
  v61 = v46[12];
  v62 = *(v37 + 48);
  v154 = v4;
  v155 = v46;
  sub_1934486F8(v4 + v61, v45, &qword_1EAE3A9E8, &qword_19394F800);
  sub_1934486F8(v157 + v61, &v45[v62], &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_13_25(v45);
  if (v51)
  {
    OUTLINED_FUNCTION_13_25(&v45[v62]);
    if (v51)
    {
      sub_19344E6DC(v45, &qword_1EAE3A9E8, &qword_19394F800);
      goto LABEL_28;
    }

LABEL_26:
    v64 = &qword_1EAE3B968;
    v65 = &qword_193972430;
    v66 = v45;
LABEL_58:
    sub_19344E6DC(v66, v64, v65);
    return 0;
  }

  sub_1934486F8(v45, v36, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_13_25(&v45[v62]);
  if (v63)
  {
    (*(v166 + 8))(v36, v21);
    goto LABEL_26;
  }

  v67 = v166;
  v68 = v164;
  (*(v166 + 32))(v164, &v45[v62], v21);
  OUTLINED_FUNCTION_0_69();
  sub_193667288(v69, v70);
  v71 = sub_19393C550();
  v72 = *(v67 + 8);
  v72(v68, v21);
  v72(v36, v21);
  sub_19344E6DC(v45, &qword_1EAE3A9E8, &qword_19394F800);
  if ((v71 & 1) == 0)
  {
    return 0;
  }

LABEL_28:
  v73 = v155[13];
  v74 = *(v37 + 48);
  v75 = v165;
  OUTLINED_FUNCTION_15_4(v154 + v73, v165);
  OUTLINED_FUNCTION_15_4(v157 + v73, v75 + v74);
  OUTLINED_FUNCTION_13_25(v75);
  if (v51)
  {
    OUTLINED_FUNCTION_13_25(v75 + v74);
    if (v51)
    {
      sub_19344E6DC(v75, &qword_1EAE3A9E8, &qword_19394F800);
      goto LABEL_38;
    }

    goto LABEL_36;
  }

  v76 = v163;
  sub_1934486F8(v75, v163, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_13_25(v75 + v74);
  if (v77)
  {
    (*(v166 + 8))(v76, v21);
LABEL_36:
    v64 = &qword_1EAE3B968;
    v65 = &qword_193972430;
    v66 = v75;
    goto LABEL_58;
  }

  v78 = v166;
  v79 = v75 + v74;
  v80 = v164;
  (*(v166 + 32))(v164, v79, v21);
  OUTLINED_FUNCTION_0_69();
  sub_193667288(v81, v82);
  v83 = sub_19393C550();
  v84 = *(v78 + 8);
  v84(v80, v21);
  v84(v76, v21);
  sub_19344E6DC(v75, &qword_1EAE3A9E8, &qword_19394F800);
  if ((v83 & 1) == 0)
  {
    return 0;
  }

LABEL_38:
  v85 = v155;
  v86 = v155[14];
  OUTLINED_FUNCTION_20_37(v177);
  v87 = v85[14];
  OUTLINED_FUNCTION_27_25(v178);
  OUTLINED_FUNCTION_20_37(v176);
  OUTLINED_FUNCTION_27_25(&v176[248]);
  OUTLINED_FUNCTION_20_37(v179);
  OUTLINED_FUNCTION_25_29(v179);
  if (v51)
  {
    OUTLINED_FUNCTION_13_36();
    OUTLINED_FUNCTION_25_29(v174);
    if (!v51)
    {
      OUTLINED_FUNCTION_15_4(v177, v175);
      v90 = v178;
      v91 = v175;
LABEL_56:
      OUTLINED_FUNCTION_15_4(v90, v91);
      goto LABEL_57;
    }

    OUTLINED_FUNCTION_17_32(v175);
    OUTLINED_FUNCTION_15_4(v177, v173);
    OUTLINED_FUNCTION_15_4(v178, v173);
    sub_19344E6DC(v175, &qword_1EAE3FB48, &qword_193977E48);
  }

  else
  {
    OUTLINED_FUNCTION_17_32(v175);
    OUTLINED_FUNCTION_17_32(v173);
    OUTLINED_FUNCTION_13_36();
    OUTLINED_FUNCTION_25_29(v174);
    if (v88)
    {
      memcpy(v172, v173, sizeof(v172));
      OUTLINED_FUNCTION_15_4(v177, v171);
      OUTLINED_FUNCTION_15_4(v178, v171);
      OUTLINED_FUNCTION_15_4(v175, v171);
      v89 = v172;
LABEL_55:
      sub_193666B30(v89);
LABEL_57:
      memcpy(v174, v176, sizeof(v174));
      v64 = &unk_1EAE3FB58;
      v65 = &unk_193977EB8;
      v66 = v174;
      goto LABEL_58;
    }

    memcpy(v172, &v176[248], sizeof(v172));
    OUTLINED_FUNCTION_23_33(v177);
    OUTLINED_FUNCTION_23_33(v178);
    OUTLINED_FUNCTION_23_33(v175);
    sub_193666B84();
    v92 = sub_19393C550();
    memcpy(v170, v172, sizeof(v170));
    sub_193666B30(v170);
    memcpy(v171, v173, sizeof(v171));
    sub_193666B30(v171);
    OUTLINED_FUNCTION_17_32(v172);
    sub_19344E6DC(v172, &qword_1EAE3FB48, &qword_193977E48);
    if ((v92 & 1) == 0)
    {
      return 0;
    }
  }

  v93 = v155;
  v94 = v155[15];
  OUTLINED_FUNCTION_20_37(v172);
  v95 = v93[15];
  OUTLINED_FUNCTION_27_25(v173);
  OUTLINED_FUNCTION_20_37(v176);
  OUTLINED_FUNCTION_27_25(&v176[248]);
  OUTLINED_FUNCTION_20_37(v175);
  OUTLINED_FUNCTION_25_29(v175);
  if (v51)
  {
    OUTLINED_FUNCTION_13_36();
    OUTLINED_FUNCTION_25_29(v174);
    if (v51)
    {
      OUTLINED_FUNCTION_17_32(v171);
      OUTLINED_FUNCTION_15_4(v172, v170);
      OUTLINED_FUNCTION_15_4(v173, v170);
      sub_19344E6DC(v171, &qword_1EAE3FB48, &qword_193977E48);
      goto LABEL_61;
    }

    OUTLINED_FUNCTION_15_4(v172, v171);
    v90 = v173;
    v91 = v171;
    goto LABEL_56;
  }

  OUTLINED_FUNCTION_17_32(v171);
  OUTLINED_FUNCTION_17_32(v170);
  OUTLINED_FUNCTION_13_36();
  OUTLINED_FUNCTION_25_29(v174);
  if (v96)
  {
    memcpy(v169, v170, sizeof(v169));
    OUTLINED_FUNCTION_15_4(v172, v168);
    OUTLINED_FUNCTION_15_4(v173, v168);
    OUTLINED_FUNCTION_15_4(v171, v168);
    v89 = v169;
    goto LABEL_55;
  }

  memcpy(v169, &v176[248], sizeof(v169));
  OUTLINED_FUNCTION_22_30(v172);
  OUTLINED_FUNCTION_22_30(v173);
  OUTLINED_FUNCTION_22_30(v171);
  sub_193666B84();
  v98 = sub_19393C550();
  memcpy(v167, v169, sizeof(v167));
  sub_193666B30(v167);
  memcpy(v168, v170, sizeof(v168));
  sub_193666B30(v168);
  OUTLINED_FUNCTION_17_32(v169);
  sub_19344E6DC(v169, &qword_1EAE3FB48, &qword_193977E48);
  if ((v98 & 1) == 0)
  {
    return 0;
  }

LABEL_61:
  v99 = v155;
  v100 = v155[16];
  OUTLINED_FUNCTION_1_56();
  if (v103)
  {
    if (!v101)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v102);
    v106 = v51 && v104 == v105;
    if (!v106 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v101)
  {
    return 0;
  }

  v107 = v99[17];
  OUTLINED_FUNCTION_1_56();
  if (v110)
  {
    if (!v108)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v109);
    v113 = v51 && v111 == v112;
    if (!v113 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v108)
  {
    return 0;
  }

  v114 = v99[18];
  OUTLINED_FUNCTION_1_56();
  if (v117)
  {
    if (!v115)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v116);
    v120 = v51 && v118 == v119;
    if (!v120 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v115)
  {
    return 0;
  }

  v121 = v99[19];
  OUTLINED_FUNCTION_1_56();
  if (v124)
  {
    if (!v122)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v123);
    v127 = v51 && v125 == v126;
    if (!v127 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v122)
  {
    return 0;
  }

  v128 = v99[20];
  OUTLINED_FUNCTION_1_56();
  if (v131)
  {
    if (!v129)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v130);
    v134 = v51 && v132 == v133;
    if (!v134 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v129)
  {
    return 0;
  }

  if (*(v154 + v155[21]) != *(v157 + v155[21]))
  {
    return 0;
  }

  v135 = v155[22];
  v136 = *(v160 + 48);
  v137 = v162;
  OUTLINED_FUNCTION_15_4(v154 + v135, v162);
  OUTLINED_FUNCTION_15_4(v157 + v135, v137 + v136);
  OUTLINED_FUNCTION_28_21(v137);
  if (v51)
  {
    OUTLINED_FUNCTION_28_21(&v162[v136]);
    if (v51)
    {
      sub_19344E6DC(v162, &qword_1EAE3ACA0, &qword_193972420);
      goto LABEL_117;
    }

    goto LABEL_115;
  }

  v138 = v162;
  sub_1934486F8(v162, v161, &qword_1EAE3ACA0, &qword_193972420);
  OUTLINED_FUNCTION_28_21(v138 + v136);
  if (v139)
  {
    (*(v159 + 8))(v161, v156);
LABEL_115:
    v64 = &qword_1EAE3F118;
    v65 = &qword_193972428;
    v66 = v162;
    goto LABEL_58;
  }

  v141 = v158;
  v140 = v159;
  v142 = v162;
  v143 = &v162[v136];
  v144 = v156;
  (*(v159 + 32))(v158, v143, v156);
  OUTLINED_FUNCTION_7_34();
  sub_193667288(v145, v146);
  v147 = v161;
  v148 = sub_19393C550();
  v149 = *(v140 + 8);
  v149(v141, v144);
  v149(v147, v144);
  sub_19344E6DC(v142, &qword_1EAE3ACA0, &qword_193972420);
  if ((v148 & 1) == 0)
  {
    return 0;
  }

LABEL_117:
  v150 = v155[23];
  v151 = *(v154 + v150);
  v152 = *(v157 + v150);
  if (v151 != 2)
  {
    return v152 != 2 && ((v151 ^ v152) & 1) == 0;
  }

  return v152 == 2;
}

unint64_t sub_193666B84()
{
  result = qword_1EAE3FB60;
  if (!qword_1EAE3FB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FB60);
  }

  return result;
}

uint64_t TextUnderstandingEvent.hash(into:)()
{
  v1 = v0;
  v63 = sub_19393BD10();
  v2 = OUTLINED_FUNCTION_0(v63);
  v60 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v59 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ACA0, &qword_193972420);
  v9 = OUTLINED_FUNCTION_47(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v62 = &v58 - v12;
  v13 = sub_19393BE00();
  v14 = OUTLINED_FUNCTION_0(v13);
  v61 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5_1();
  v20 = v19 - v18;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v22 = OUTLINED_FUNCTION_47(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_6();
  v27 = v25 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v58 - v29;
  v31 = type metadata accessor for TextUnderstandingEvent(0);
  memcpy(v70, (v0 + v31[7]), 0x60uLL);
  sub_19365B174();
  sub_19393C540();
  OUTLINED_FUNCTION_19_40(v31[8]);
  OUTLINED_FUNCTION_19_40(v31[9]);
  OUTLINED_FUNCTION_19_40(v31[10]);
  v32 = v31[11];
  type metadata accessor for TextUnderstandingEvent.Metadata(0);
  OUTLINED_FUNCTION_6_47();
  sub_193667288(v33, v34);
  sub_19393C540();
  sub_1934486F8(v1 + v31[12], v30, &qword_1EAE3A9E8, &qword_19394F800);
  if (__swift_getEnumTagSinglePayload(v30, 1, v13) == 1)
  {
    OUTLINED_FUNCTION_95_8();
    v35 = v61;
  }

  else
  {
    v36 = v61;
    (*(v61 + 32))(v20, v30, v13);
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_0_69();
    sub_193667288(v37, v38);
    OUTLINED_FUNCTION_26_23();
    (*(v36 + 8))(v20, v13);
    v35 = v36;
  }

  sub_1934486F8(v1 + v31[13], v27, &qword_1EAE3A9E8, &qword_19394F800);
  if (__swift_getEnumTagSinglePayload(v27, 1, v13) == 1)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    (*(v35 + 32))(v20, v27, v13);
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_0_69();
    sub_193667288(v39, v40);
    OUTLINED_FUNCTION_26_23();
    v41 = *(v35 + 8);
    v35 += 8;
    v41(v20, v13);
  }

  v42 = v31[14];
  OUTLINED_FUNCTION_29_23(v69);
  OUTLINED_FUNCTION_29_23(v70);
  OUTLINED_FUNCTION_25_29(v70);
  if (v43)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    memcpy(v66, v69, sizeof(v66));
    OUTLINED_FUNCTION_94();
    memcpy(v67, v69, sizeof(v67));
    sub_193665984(v67, v68);
    sub_193667234();
    sub_19393C540();
    memcpy(v68, v66, sizeof(v68));
    sub_193666B30(v68);
  }

  v44 = v31[15];
  OUTLINED_FUNCTION_29_23(v67);
  OUTLINED_FUNCTION_29_23(v68);
  OUTLINED_FUNCTION_25_29(v68);
  if (v43)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    memcpy(v64, v67, sizeof(v64));
    OUTLINED_FUNCTION_94();
    memcpy(v65, v67, sizeof(v65));
    sub_193665984(v65, v66);
    sub_193667234();
    sub_19393C540();
    memcpy(v66, v64, sizeof(v66));
    sub_193666B30(v66);
  }

  OUTLINED_FUNCTION_18_33(v31[16]);
  if (v35)
  {
    OUTLINED_FUNCTION_10_46(v45);
    OUTLINED_FUNCTION_11_37();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  OUTLINED_FUNCTION_18_33(v31[17]);
  if (v35)
  {
    OUTLINED_FUNCTION_10_46(v46);
    OUTLINED_FUNCTION_11_37();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  OUTLINED_FUNCTION_18_33(v31[18]);
  if (v35)
  {
    OUTLINED_FUNCTION_10_46(v47);
    OUTLINED_FUNCTION_11_37();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  OUTLINED_FUNCTION_18_33(v31[19]);
  if (v35)
  {
    OUTLINED_FUNCTION_10_46(v48);
    OUTLINED_FUNCTION_11_37();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  OUTLINED_FUNCTION_18_33(v31[20]);
  if (v35)
  {
    OUTLINED_FUNCTION_10_46(v49);
    OUTLINED_FUNCTION_11_37();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  v50 = *(v1 + v31[21]);
  sub_19393CAD0();
  v51 = v62;
  sub_1934486F8(v1 + v31[22], v62, &qword_1EAE3ACA0, &qword_193972420);
  v52 = v63;
  if (__swift_getEnumTagSinglePayload(v51, 1, v63) == 1)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    v54 = v59;
    v53 = v60;
    (*(v60 + 32))(v59, v51, v52);
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_7_34();
    sub_193667288(v55, v56);
    sub_19393C540();
    (*(v53 + 8))(v54, v52);
  }

  if (*(v1 + v31[23]) != 2)
  {
    OUTLINED_FUNCTION_94();
  }

  return sub_19393CAD0();
}

unint64_t sub_193667234()
{
  result = qword_1EAE3FB70;
  if (!qword_1EAE3FB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FB70);
  }

  return result;
}

uint64_t sub_193667288(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_21_32(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v1);
}

void sub_1936672EC()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, &qword_1EAEABA38);
  v3 = OUTLINED_FUNCTION_13_0();
  __swift_project_value_buffer(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v5);
  v7 = *(v6 + 72);
  OUTLINED_FUNCTION_49_0();
  v61 = swift_allocObject();
  OUTLINED_FUNCTION_11_3(v61, xmmword_193969E40);
  *v0 = "documentIdentifiers";
  *(v0 + 8) = 19;
  *(v0 + 16) = 2;
  v8 = *MEMORY[0x1E69AADC8];
  v9 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v9);
  v11 = *(v10 + 104);
  OUTLINED_FUNCTION_2_0();
  v11();
  v12 = OUTLINED_FUNCTION_3_1(v1 + v7);
  *v13 = 2;
  *v12 = "status";
  v12[1] = 6;
  v14 = OUTLINED_FUNCTION_1_3(v12);
  (v11)(v14);
  v15 = OUTLINED_FUNCTION_3_1(v1 + 2 * v7);
  *v16 = 3;
  *v15 = "category";
  v15[1] = 8;
  v17 = OUTLINED_FUNCTION_1_3(v15);
  (v11)(v17);
  v18 = OUTLINED_FUNCTION_45_2(3 * v7);
  *v19 = 4;
  *v18 = "algorithm";
  v18[1] = 9;
  v20 = OUTLINED_FUNCTION_1_3(v18);
  (v11)(v20);
  v21 = OUTLINED_FUNCTION_3_1(v1 + 4 * v7);
  *v22 = 5;
  v23 = OUTLINED_FUNCTION_40_21(v21);
  v24 = OUTLINED_FUNCTION_1_3(v23);
  (v11)(v24);
  v25 = OUTLINED_FUNCTION_45_2(5 * v7);
  *v26 = 6;
  *v25 = "startDate";
  v25[1] = 9;
  v27 = OUTLINED_FUNCTION_1_3(v25);
  (v11)(v27);
  v28 = OUTLINED_FUNCTION_3_1(v1 + 6 * v7);
  *v29 = 7;
  *v28 = "endDate";
  v28[1] = 7;
  v30 = OUTLINED_FUNCTION_1_3(v28);
  (v11)(v30);
  v31 = OUTLINED_FUNCTION_45_2(7 * v7);
  *v32 = 8;
  *v31 = "startLocation";
  v31[1] = 13;
  v33 = OUTLINED_FUNCTION_1_3(v31);
  (v11)(v33);
  v34 = OUTLINED_FUNCTION_3_1(v1 + 8 * v7);
  *v35 = 9;
  *v34 = "endLocation";
  v34[1] = 11;
  v36 = OUTLINED_FUNCTION_1_3(v34);
  (v11)(v36);
  v37 = OUTLINED_FUNCTION_45_2(9 * v7);
  *v38 = 10;
  *v37 = "groupId";
  v37[1] = 7;
  v39 = OUTLINED_FUNCTION_1_3(v37);
  (v11)(v39);
  v40 = OUTLINED_FUNCTION_3_1(v1 + 10 * v7);
  *v41 = 11;
  *v40 = "fallbackGroupId";
  v40[1] = 15;
  v42 = OUTLINED_FUNCTION_1_3(v40);
  (v11)(v42);
  v43 = OUTLINED_FUNCTION_3_1(v1 + 11 * v7);
  *v44 = 12;
  *v43 = "geocodingMode";
  v43[1] = 13;
  v45 = OUTLINED_FUNCTION_1_3(v43);
  (v11)(v45);
  v46 = OUTLINED_FUNCTION_3_1(v1 + 12 * v7);
  *v47 = 13;
  *v46 = "notes";
  v46[1] = 5;
  v48 = OUTLINED_FUNCTION_1_3(v46);
  (v11)(v48);
  v49 = OUTLINED_FUNCTION_3_1(v1 + 13 * v7);
  *v50 = 14;
  *v49 = "title";
  v49[1] = 5;
  v51 = OUTLINED_FUNCTION_1_3(v49);
  (v11)(v51);
  v52 = OUTLINED_FUNCTION_3_1(v1 + 14 * v7);
  *v53 = 15;
  v54 = OUTLINED_FUNCTION_40_21(v52);
  v55 = OUTLINED_FUNCTION_1_3(v54);
  (v11)(v55);
  v56 = OUTLINED_FUNCTION_45_2(15 * v7);
  *v57 = 16;
  *v56 = "url";
  v56[1] = 3;
  v58 = OUTLINED_FUNCTION_1_3(v56);
  (v11)(v58);
  v59 = OUTLINED_FUNCTION_3_1(v1 + 16 * v7);
  *v60 = 17;
  *v59 = "isValidCalendarEvent";
  *(v59 + 8) = 20;
  *(v59 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v11();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_19366771C()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v3 = v0;
  v4 = type metadata accessor for TextUnderstandingEvent.Metadata(0);
  v5 = OUTLINED_FUNCTION_4_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_1();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FBA8, &qword_193977EC0);
  v12 = OUTLINED_FUNCTION_47(v11);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  MEMORY[0x1EEE9AC00](v15);
  v62 = v4;
  v54 = v10;
  v55 = &v54 - v16;
  v18 = v17;
  v56 = v0;
  v57 = v17;
  while (1)
  {
    OUTLINED_FUNCTION_234();
    v19 = sub_19393C0E0();
    if (v2 || (v20 & 1) != 0)
    {
      break;
    }

    switch(v19)
    {
      case 1:
        v60 = 0u;
        memset(v61, 0, sizeof(v61));
        sub_193498018();
        if (*(&v60 + 1))
        {
          memcpy(&v58[1], v61, 0x50uLL);
          v58[0] = v60;
          v18 = v57;
        }

        else
        {
          TextUnderstandingDocumentIdentifiers.init()(v58);
        }

        v53 = *(type metadata accessor for TextUnderstandingEvent(0) + 28);
        v3 = v56;
        memcpy(v59, (v56 + v53), sizeof(v59));
        sub_19365A098(v59);
        memcpy((v3 + v53), v58, 0x60uLL);
        v4 = v62;
        continue;
      case 2:
        v60 = 0uLL;
        OUTLINED_FUNCTION_20_38();
        sub_19393C200();
        v2 = 0;
        v43 = OUTLINED_FUNCTION_44_20(*(&v60 + 1));
        if (v35)
        {
          v44 = 0xE000000000000000;
        }

        else
        {
          v44 = v43;
        }

        v45 = (v3 + *(type metadata accessor for TextUnderstandingEvent(0) + 32));
        v46 = v45[1];

        *v45 = v4;
        v45[1] = v44;
        goto LABEL_30;
      case 3:
        v60 = 0uLL;
        OUTLINED_FUNCTION_20_38();
        sub_19393C200();
        v2 = 0;
        v34 = OUTLINED_FUNCTION_44_20(*(&v60 + 1));
        if (v35)
        {
          v36 = 0xE000000000000000;
        }

        else
        {
          v36 = v34;
        }

        v37 = *(type metadata accessor for TextUnderstandingEvent(0) + 36);
        goto LABEL_24;
      case 4:
        v60 = 0uLL;
        OUTLINED_FUNCTION_20_38();
        sub_19393C200();
        v2 = 0;
        v39 = OUTLINED_FUNCTION_44_20(*(&v60 + 1));
        if (v35)
        {
          v36 = 0xE000000000000000;
        }

        else
        {
          v36 = v39;
        }

        v37 = *(type metadata accessor for TextUnderstandingEvent(0) + 40);
LABEL_24:
        v40 = (v3 + v37);
        v41 = *(v3 + v37 + 8);

        *v40 = v4;
        v40[1] = v36;
LABEL_30:
        v18 = v57;
        v4 = v62;
        continue;
      case 5:
        v27 = v55;
        __swift_storeEnumTagSinglePayload(v55, 1, 1, v4);
        sub_193498018();
        v28 = v27;
        v29 = v18;
        sub_193448758(v28, v18, &qword_1EAE3FBA8, &qword_193977EC0);
        if (__swift_getEnumTagSinglePayload(v18, 1, v4) == 1)
        {
          v30 = v54;
          TextUnderstandingEvent.Metadata.init()();
          sub_19344E6DC(v55, &qword_1EAE3FBA8, &qword_193977EC0);
          v31 = v29;
          if (__swift_getEnumTagSinglePayload(v29, 1, v4) != 1)
          {
            sub_19344E6DC(v29, &qword_1EAE3FBA8, &qword_193977EC0);
          }
        }

        else
        {
          sub_19344E6DC(v55, &qword_1EAE3FBA8, &qword_193977EC0);
          v30 = v54;
          sub_193667D44(v29, v54);
          v31 = v29;
        }

        v52 = type metadata accessor for TextUnderstandingEvent(0);
        v3 = v56;
        sub_193667CE0(v30, v56 + *(v52 + 44));
        v18 = v31;
        continue;
      case 6:
        v47 = *(type metadata accessor for TextUnderstandingEvent(0) + 48);
        goto LABEL_34;
      case 7:
        v49 = *(type metadata accessor for TextUnderstandingEvent(0) + 52);
LABEL_34:
        sub_1934976E4();
        goto LABEL_39;
      case 8:
        v42 = *(type metadata accessor for TextUnderstandingEvent(0) + 56);
        goto LABEL_38;
      case 9:
        v51 = *(type metadata accessor for TextUnderstandingEvent(0) + 60);
LABEL_38:
        sub_193498018();
        goto LABEL_39;
      case 10:
        v33 = *(type metadata accessor for TextUnderstandingEvent(0) + 64);
        goto LABEL_36;
      case 11:
        v50 = *(type metadata accessor for TextUnderstandingEvent(0) + 68);
        goto LABEL_36;
      case 12:
        v26 = *(type metadata accessor for TextUnderstandingEvent(0) + 72);
        goto LABEL_36;
      case 13:
        v32 = *(type metadata accessor for TextUnderstandingEvent(0) + 76);
        goto LABEL_36;
      case 14:
        v48 = *(type metadata accessor for TextUnderstandingEvent(0) + 80);
LABEL_36:
        OUTLINED_FUNCTION_20_38();
        sub_19393C200();
        goto LABEL_39;
      case 15:
        LOBYTE(v60) = 2;
        OUTLINED_FUNCTION_20_38();
        sub_19393C0F0();
        v2 = 0;
        v22 = v4;
        v23 = v60;
        v24 = type metadata accessor for TextUnderstandingEvent(0);
        v25 = v23 & 1;
        v4 = v22;
        v3 = v56;
        *(v56 + *(v24 + 84)) = v25;
        continue;
      case 16:
        v38 = type metadata accessor for TextUnderstandingEvent(0);
        sub_19349780C(v3 + *(v38 + 88));
        goto LABEL_39;
      case 17:
        v21 = *(type metadata accessor for TextUnderstandingEvent(0) + 92);
        OUTLINED_FUNCTION_20_38();
        sub_19393C0F0();
LABEL_39:
        v2 = 0;
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_27();
}

uint64_t sub_193667CE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextUnderstandingEvent.Metadata(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_193667D44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextUnderstandingEvent.Metadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_193667DA8()
{
  OUTLINED_FUNCTION_26();
  v2 = v0;
  v3 = type metadata accessor for TextUnderstandingEvent(0);
  v4 = v3[7];
  memcpy(__dst, (v0 + v4), sizeof(__dst));
  memcpy(v27, (v0 + v4), sizeof(v27));
  sub_19365A03C(__dst, __src);
  TextUnderstandingDocumentIdentifiers.init()(__src);
  sub_19365AB48();
  v5 = sub_19393C550();
  memcpy(v29, __src, 0x60uLL);
  sub_19365A098(v29);
  memcpy(v30, v27, 0x60uLL);
  sub_19365A098(v30);
  if (v5)
  {
    if (v1)
    {
      goto LABEL_22;
    }
  }

  else
  {
    memcpy(v27, (v2 + v4), sizeof(v27));
    memcpy(__src, (v2 + v4), sizeof(__src));
    sub_19365A03C(v27, v25);
    OUTLINED_FUNCTION_34_28();
    if (v1)
    {
      memcpy(v25, __src, sizeof(v25));
      sub_19365A098(v25);
      goto LABEL_22;
    }

    memcpy(v25, __src, sizeof(v25));
    sub_19365A098(v25);
  }

  v6 = (v2 + v3[8]);
  if (*v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6[1] == 0xE000000000000000;
  }

  if (!v7 && (OUTLINED_FUNCTION_29_3() & 1) == 0)
  {
    OUTLINED_FUNCTION_24_2();
    sub_19393C3C0();
  }

  v8 = (v2 + v3[9]);
  if ((*v8 || v8[1] != 0xE000000000000000) && (OUTLINED_FUNCTION_29_3() & 1) == 0)
  {
    OUTLINED_FUNCTION_24_2();
    sub_19393C3C0();
  }

  v9 = (v2 + v3[10]);
  if ((*v9 || v9[1] != 0xE000000000000000) && (OUTLINED_FUNCTION_29_3() & 1) == 0)
  {
    OUTLINED_FUNCTION_24_2();
    sub_19393C3C0();
  }

  OUTLINED_FUNCTION_13_35();
  sub_1936681EC();
  OUTLINED_FUNCTION_13_35();
  sub_1936682C8();
  OUTLINED_FUNCTION_13_35();
  sub_193668400();
  memcpy(v30, (v2 + v3[14]), sizeof(v30));
  if (sub_19366596C(v30) != 1)
  {
    memcpy(v29, v30, sizeof(v29));
    OUTLINED_FUNCTION_34_28();
  }

  memcpy(v30, (v2 + v3[15]), sizeof(v30));
  if (sub_19366596C(v30) != 1)
  {
    memcpy(v29, v30, sizeof(v29));
    OUTLINED_FUNCTION_34_28();
  }

  OUTLINED_FUNCTION_5_20(v3[16]);
  if (v11)
  {
    v12 = *v10;
    OUTLINED_FUNCTION_24_2();
    sub_19393C3C0();
  }

  OUTLINED_FUNCTION_5_20(v3[17]);
  if (v14)
  {
    v15 = *v13;
    OUTLINED_FUNCTION_24_2();
    sub_19393C3C0();
  }

  OUTLINED_FUNCTION_5_20(v3[18]);
  if (v17)
  {
    v18 = *v16;
    OUTLINED_FUNCTION_24_2();
    sub_19393C3C0();
  }

  OUTLINED_FUNCTION_5_20(v3[19]);
  if (v20)
  {
    v21 = *v19;
    OUTLINED_FUNCTION_24_2();
    sub_19393C3C0();
  }

  OUTLINED_FUNCTION_5_20(v3[20]);
  if (v23)
  {
    v24 = *v22;
    OUTLINED_FUNCTION_24_2();
    sub_19393C3C0();
  }

  if (*(v2 + v3[21]) == 1)
  {
    OUTLINED_FUNCTION_15_11();
    sub_19393C2E0();
  }

  OUTLINED_FUNCTION_13_35();
  sub_193668538();
  if (*(v2 + v3[23]) != 2)
  {
    OUTLINED_FUNCTION_15_11();
    sub_19393C2E0();
  }

LABEL_22:
  OUTLINED_FUNCTION_27();
}

void sub_1936681EC()
{
  OUTLINED_FUNCTION_26();
  v1 = type metadata accessor for TextUnderstandingEvent.Metadata(0);
  v2 = OUTLINED_FUNCTION_4_1(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = OUTLINED_FUNCTION_37();
  v6 = *(type metadata accessor for TextUnderstandingEvent(v5) + 44);
  TextUnderstandingEvent.Metadata.init()();
  sub_193669D44();
  v7 = sub_19393C550();
  sub_193669D9C(v0);
  if ((v7 & 1) == 0)
  {
    sub_193447600();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_1936682C8()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_77(v2, v3, v4, v5);
  v6 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15_9();
  v10 = sub_19393BE00();
  v11 = OUTLINED_FUNCTION_76(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  v16 = OUTLINED_FUNCTION_14_5();
  v17 = type metadata accessor for TextUnderstandingEvent(v16);
  OUTLINED_FUNCTION_42_7(*(v17 + 48));
  OUTLINED_FUNCTION_23_5(v1);
  if (v18)
  {
    sub_19344E6DC(v1, &qword_1EAE3A9E8, &qword_19394F800);
  }

  else
  {
    v19 = OUTLINED_FUNCTION_243();
    v20(v19);
    OUTLINED_FUNCTION_22_1(v0, 6);
    v21 = *(v13 + 8);
    v22 = OUTLINED_FUNCTION_234();
    v23(v22);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_193668400()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_77(v2, v3, v4, v5);
  v6 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15_9();
  v10 = sub_19393BE00();
  v11 = OUTLINED_FUNCTION_76(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  v16 = OUTLINED_FUNCTION_14_5();
  v17 = type metadata accessor for TextUnderstandingEvent(v16);
  OUTLINED_FUNCTION_42_7(*(v17 + 52));
  OUTLINED_FUNCTION_23_5(v1);
  if (v18)
  {
    sub_19344E6DC(v1, &qword_1EAE3A9E8, &qword_19394F800);
  }

  else
  {
    v19 = OUTLINED_FUNCTION_243();
    v20(v19);
    OUTLINED_FUNCTION_22_1(v0, 7);
    v21 = *(v13 + 8);
    v22 = OUTLINED_FUNCTION_234();
    v23(v22);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_193668538()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_77(v2, v3, v4, v5);
  v6 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_14_5();
  v10 = sub_19393BD10();
  v11 = OUTLINED_FUNCTION_76(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = OUTLINED_FUNCTION_37();
  v15 = type metadata accessor for TextUnderstandingEvent(v14);
  OUTLINED_FUNCTION_20_8(*(v15 + 88));
  OUTLINED_FUNCTION_23_5(v0);
  if (v16)
  {
    sub_19344E6DC(v0, &qword_1EAE3ACA0, &qword_193972420);
  }

  else
  {
    v17 = OUTLINED_FUNCTION_78_0();
    v18(v17);
    OUTLINED_FUNCTION_35_26(v1, 16);
    v19 = OUTLINED_FUNCTION_86_0();
    v20(v19);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_1936686C8()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEABA50);
  v3 = OUTLINED_FUNCTION_13_0();
  __swift_project_value_buffer(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v5);
  v7 = *(v6 + 72);
  OUTLINED_FUNCTION_49_0();
  v8 = swift_allocObject();
  OUTLINED_FUNCTION_11_3(v8, xmmword_193952700);
  *v0 = "category";
  *(v0 + 8) = 8;
  *(v0 + 16) = 2;
  v9 = *MEMORY[0x1E69AADC8];
  v10 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v10);
  v12 = *(v11 + 104);
  OUTLINED_FUNCTION_2_0();
  v12();
  v13 = OUTLINED_FUNCTION_3_1(v1 + v7);
  *v14 = 2;
  *v13 = "name";
  v13[1] = 4;
  v15 = OUTLINED_FUNCTION_1_3(v13);
  (v12)(v15);
  v16 = OUTLINED_FUNCTION_3_1(v1 + 2 * v7);
  *v17 = 3;
  *v16 = "address";
  v16[1] = 7;
  v18 = OUTLINED_FUNCTION_1_3(v16);
  (v12)(v18);
  v19 = OUTLINED_FUNCTION_45_2(3 * v7);
  *v20 = 4;
  *v19 = "phoneNumber";
  v19[1] = 11;
  v21 = OUTLINED_FUNCTION_1_3(v19);
  (v12)(v21);
  v22 = OUTLINED_FUNCTION_3_1(v1 + 4 * v7);
  *v23 = 5;
  *v22 = "coordinates";
  v22[1] = 11;
  v24 = OUTLINED_FUNCTION_1_3(v22);
  (v12)(v24);
  v25 = OUTLINED_FUNCTION_45_2(5 * v7);
  *v26 = 6;
  v27 = OUTLINED_FUNCTION_40_21(v25);
  v28 = OUTLINED_FUNCTION_1_3(v27);
  (v12)(v28);
  v29 = OUTLINED_FUNCTION_3_1(v1 + 6 * v7);
  *v30 = 7;
  *v29 = "timeZoneIdentifier";
  *(v29 + 8) = 18;
  *(v29 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v12();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_193668920()
{
  v2 = v1;
  while (1)
  {
    v3 = sub_19393C0E0();
    if (v2 || (v4 & 1) != 0)
    {
      break;
    }

    switch(v3)
    {
      case 1:
        sub_19393C200();
        v5 = v0[1];

        *v0 = 0;
        v0[1] = 0xE000000000000000;
        break;
      case 2:
      case 4:
      case 7:
        sub_19393C200();
        goto LABEL_8;
      case 3:
      case 5:
      case 6:
        sub_193498018();
LABEL_8:
        v2 = 0;
        break;
      default:
        continue;
    }
  }
}

void sub_193668AB0()
{
  v2 = v1;
  v4 = *v0;
  v3 = v0[1];
  v6 = v0[2];
  v5 = v0[3];
  v11 = v0[22];
  v14 = v0[23];
  v10 = *(v0 + 208);
  v8 = *(v0 + 27);
  v7 = v0[29];
  v9 = v0[30];
  if ((v4 || v3 != 0xE000000000000000) && (sub_19393CA30() & 1) == 0)
  {
    OUTLINED_FUNCTION_52_16();
    sub_19393C3C0();
    v2 = v1;
  }

  if (!v2)
  {
    if (!v5 || (OUTLINED_FUNCTION_52_16(), sub_19393C3C0(), !v1))
    {
      memcpy(__dst, v0 + 4, 0x90uLL);
      if (get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(__dst) == 1 || (memcpy(v12, __dst, sizeof(v12)), OUTLINED_FUNCTION_50_17(), !v1))
      {
        if (!v14 || (OUTLINED_FUNCTION_52_16(), sub_19393C3C0(), !v1))
        {
          if ((v10 & 1) != 0 || (__dst[0] = *(v0 + 12), OUTLINED_FUNCTION_50_17(), !v1))
          {
            if (*(&v8 + 1) == 1 || (__dst[0] = v8, OUTLINED_FUNCTION_50_17(), !v1))
            {
              if (v9)
              {
                OUTLINED_FUNCTION_52_16();
                sub_19393C3C0();
              }
            }
          }
        }
      }
    }
  }
}

void sub_193668D24()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEABA68);
  v1 = OUTLINED_FUNCTION_13_0();
  __swift_project_value_buffer(v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v88 = swift_allocObject();
  *(v88 + 16) = xmmword_193952730;
  v6 = v88 + v0 + dword_1EAEABAA0;
  *(v88 + v0) = 1;
  *v6 = "confirmationNumber";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 104);
  OUTLINED_FUNCTION_2_0();
  v10();
  v11 = OUTLINED_FUNCTION_3_1(v88 + v0 + v5);
  *v12 = 2;
  *v11 = "bookingProvider";
  v11[1] = 15;
  v13 = OUTLINED_FUNCTION_41(v11);
  (v10)(v13);
  v14 = OUTLINED_FUNCTION_3_1(v88 + v0 + 2 * v5);
  *v15 = 3;
  *v14 = "participants";
  v14[1] = 12;
  v16 = OUTLINED_FUNCTION_41(v14);
  (v10)(v16);
  v17 = OUTLINED_FUNCTION_3_1(v88 + v0 + 3 * v5);
  *v18 = 4;
  *v17 = "flightCarrierCode";
  v17[1] = 17;
  v19 = OUTLINED_FUNCTION_41(v17);
  (v10)(v19);
  v20 = OUTLINED_FUNCTION_3_1(v88 + v0 + 4 * v5);
  *v21 = 5;
  *v20 = "flightNumber";
  v20[1] = 12;
  v22 = OUTLINED_FUNCTION_41(v20);
  (v10)(v22);
  v23 = OUTLINED_FUNCTION_3_1(v88 + v0 + 5 * v5);
  *v24 = 6;
  *v23 = "seatNumbers";
  v23[1] = 11;
  v25 = OUTLINED_FUNCTION_41(v23);
  (v10)(v25);
  v26 = OUTLINED_FUNCTION_52_0();
  *v27 = 7;
  *v26 = "flightBoardingTime";
  v26[1] = 18;
  v28 = OUTLINED_FUNCTION_41(v26);
  (v10)(v28);
  v29 = OUTLINED_FUNCTION_3_1(v88 + v0 + 7 * v5);
  *v30 = 8;
  *v29 = "duration";
  v29[1] = 8;
  v31 = OUTLINED_FUNCTION_41(v29);
  (v10)(v31);
  v32 = OUTLINED_FUNCTION_3_1(v88 + v0 + 8 * v5);
  *v33 = 9;
  *v32 = "flightCheckInURL";
  v32[1] = 16;
  v34 = OUTLINED_FUNCTION_41(v32);
  (v10)(v34);
  v35 = OUTLINED_FUNCTION_3_1(v88 + v0 + 9 * v5);
  *v36 = 10;
  *v35 = "cost";
  v35[1] = 4;
  v37 = OUTLINED_FUNCTION_41(v35);
  (v10)(v37);
  v38 = OUTLINED_FUNCTION_52_0();
  *v39 = 11;
  v40 = OUTLINED_FUNCTION_40_21(v38);
  v41 = OUTLINED_FUNCTION_41(v40);
  (v10)(v41);
  v42 = OUTLINED_FUNCTION_3_1(v88 + v0 + 11 * v5);
  *v43 = 12;
  *v42 = "hotelRoomCount";
  v42[1] = 14;
  v44 = OUTLINED_FUNCTION_41(v42);
  (v10)(v44);
  v45 = OUTLINED_FUNCTION_3_1(v88 + v0 + 12 * v5);
  *v46 = 13;
  *v45 = "hotelRoomNumbers";
  v45[1] = 16;
  v47 = OUTLINED_FUNCTION_41(v45);
  (v10)(v47);
  v48 = OUTLINED_FUNCTION_3_1(v88 + v0 + 13 * v5);
  *v49 = 14;
  *v48 = "restaurantPartySize";
  v48[1] = 19;
  v50 = OUTLINED_FUNCTION_41(v48);
  (v10)(v50);
  v51 = OUTLINED_FUNCTION_52_0();
  *v52 = 15;
  *v51 = "carRentalName";
  v51[1] = 13;
  v53 = OUTLINED_FUNCTION_41(v51);
  (v10)(v53);
  v54 = OUTLINED_FUNCTION_3_1(v88 + v0 + 15 * v5);
  *v55 = 16;
  *v54 = "carRentalVehicleName";
  v54[1] = 20;
  v56 = OUTLINED_FUNCTION_41(v54);
  (v10)(v56);
  v57 = OUTLINED_FUNCTION_3_1(v88 + v0 + 16 * v5);
  *v58 = 17;
  *v57 = "partyName";
  v57[1] = 9;
  v59 = OUTLINED_FUNCTION_41(v57);
  (v10)(v59);
  v60 = OUTLINED_FUNCTION_3_1(v88 + v0 + 17 * v5);
  *v61 = 18;
  v62 = OUTLINED_FUNCTION_40_21(v60);
  v63 = OUTLINED_FUNCTION_41(v62);
  (v10)(v63);
  v64 = OUTLINED_FUNCTION_3_1(v88 + v0 + 18 * v5);
  *v65 = 19;
  *v64 = "appointmentName";
  v64[1] = 15;
  v66 = OUTLINED_FUNCTION_41(v64);
  (v10)(v66);
  v67 = OUTLINED_FUNCTION_3_1(v88 + v0 + 19 * v5);
  *v68 = 20;
  *v67 = "appointmentAgentName";
  v67[1] = 20;
  v69 = OUTLINED_FUNCTION_41(v67);
  (v10)(v69);
  v70 = OUTLINED_FUNCTION_52_0();
  *v71 = 21;
  v72 = OUTLINED_FUNCTION_40_21(v70);
  v73 = OUTLINED_FUNCTION_41(v72);
  (v10)(v73);
  v74 = OUTLINED_FUNCTION_52_0();
  *v75 = 22;
  *v74 = "showName";
  v74[1] = 8;
  v76 = OUTLINED_FUNCTION_41(v74);
  (v10)(v76);
  v77 = OUTLINED_FUNCTION_52_0();
  *v78 = 23;
  *v77 = "showTicketType";
  v77[1] = 14;
  v79 = OUTLINED_FUNCTION_41(v77);
  (v10)(v79);
  v80 = OUTLINED_FUNCTION_52_0();
  *v81 = 24;
  *v80 = "transportType";
  v80[1] = 13;
  v82 = OUTLINED_FUNCTION_41(v80);
  (v10)(v82);
  v83 = OUTLINED_FUNCTION_52_0();
  *v84 = 25;
  *v83 = "transportName";
  v83[1] = 13;
  v85 = OUTLINED_FUNCTION_41(v83);
  (v10)(v85);
  v86 = OUTLINED_FUNCTION_52_0();
  *v87 = 26;
  *v86 = "attachmentData";
  *(v86 + 8) = 14;
  *(v86 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v10();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_193669308()
{
  v2 = v1;
  while (1)
  {
    result = sub_19393C0E0();
    if (v2 || (v4 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 4:
      case 5:
        goto LABEL_28;
      case 3:
      case 6:
        goto LABEL_16;
      case 7:
        v18 = *(type metadata accessor for TextUnderstandingEvent.Metadata(0) + 40);
        sub_1934976E4();
        goto LABEL_29;
      case 8:
        v13 = *(type metadata accessor for TextUnderstandingEvent.Metadata(0) + 44);
        goto LABEL_28;
      case 9:
        v14 = *(type metadata accessor for TextUnderstandingEvent.Metadata(0) + 48);
        goto LABEL_24;
      case 10:
        v9 = *(type metadata accessor for TextUnderstandingEvent.Metadata(0) + 52);
        goto LABEL_28;
      case 11:
        v20 = *(type metadata accessor for TextUnderstandingEvent.Metadata(0) + 56);
        goto LABEL_28;
      case 12:
        v7 = *(type metadata accessor for TextUnderstandingEvent.Metadata(0) + 60);
        goto LABEL_19;
      case 13:
        v8 = v0 + *(type metadata accessor for TextUnderstandingEvent.Metadata(0) + 64);
LABEL_16:
        OUTLINED_FUNCTION_28_22();
        sub_19393C1B0();
        goto LABEL_29;
      case 14:
        v17 = *(type metadata accessor for TextUnderstandingEvent.Metadata(0) + 68);
LABEL_19:
        OUTLINED_FUNCTION_28_22();
        sub_19393C170();
        goto LABEL_29;
      case 15:
        v6 = *(type metadata accessor for TextUnderstandingEvent.Metadata(0) + 72);
        goto LABEL_28;
      case 16:
        v12 = *(type metadata accessor for TextUnderstandingEvent.Metadata(0) + 76);
        goto LABEL_28;
      case 17:
        v5 = *(type metadata accessor for TextUnderstandingEvent.Metadata(0) + 80);
        goto LABEL_28;
      case 18:
        v14 = *(type metadata accessor for TextUnderstandingEvent.Metadata(0) + 84);
LABEL_24:
        sub_19349780C(v0 + v14);
        goto LABEL_29;
      case 19:
        v19 = *(type metadata accessor for TextUnderstandingEvent.Metadata(0) + 88);
        goto LABEL_28;
      case 20:
        v22 = *(type metadata accessor for TextUnderstandingEvent.Metadata(0) + 92);
        goto LABEL_28;
      case 21:
        v15 = *(type metadata accessor for TextUnderstandingEvent.Metadata(0) + 96);
        goto LABEL_28;
      case 22:
        v16 = *(type metadata accessor for TextUnderstandingEvent.Metadata(0) + 100);
        goto LABEL_28;
      case 23:
        v21 = *(type metadata accessor for TextUnderstandingEvent.Metadata(0) + 104);
        goto LABEL_28;
      case 24:
        v23 = *(type metadata accessor for TextUnderstandingEvent.Metadata(0) + 108);
        goto LABEL_28;
      case 25:
        v11 = *(type metadata accessor for TextUnderstandingEvent.Metadata(0) + 112);
LABEL_28:
        OUTLINED_FUNCTION_28_22();
        sub_19393C200();
        goto LABEL_29;
      case 26:
        v10 = *(type metadata accessor for TextUnderstandingEvent.Metadata(0) + 116);
        OUTLINED_FUNCTION_28_22();
        sub_19393C140();
LABEL_29:
        v2 = 0;
        break;
      default:
        continue;
    }
  }
}

void sub_19366956C()
{
  v2 = v1;
  if (v0[1])
  {
    v3 = *v0;
    OUTLINED_FUNCTION_24_2();
    sub_19393C3C0();
    v2 = v1;
  }

  if (!v2)
  {
    if (!v0[3] || (v4 = v0[2], OUTLINED_FUNCTION_24_2(), sub_19393C3C0(), !v1))
    {
      if (!*(v0[4] + 16) || (OUTLINED_FUNCTION_15_11(), sub_19393C380(), !v1))
      {
        if (!v0[6] || (v5 = v0[5], OUTLINED_FUNCTION_24_2(), sub_19393C3C0(), !v1))
        {
          if (!v0[8] || (v6 = v0[7], OUTLINED_FUNCTION_24_2(), sub_19393C3C0(), !v1))
          {
            if (!*(v0[9] + 16) || (OUTLINED_FUNCTION_15_11(), sub_19393C380(), !v1))
            {
              OUTLINED_FUNCTION_12_32();
              sub_193669950();
              if (!v1)
              {
                v7 = type metadata accessor for TextUnderstandingEvent.Metadata(0);
                OUTLINED_FUNCTION_16_4(v7[11]);
                if (v9)
                {
                  v10 = *v8;
                  OUTLINED_FUNCTION_24_2();
                  sub_19393C3C0();
                }

                OUTLINED_FUNCTION_12_32();
                sub_193669A88();
                OUTLINED_FUNCTION_16_4(v7[13]);
                if (v12)
                {
                  v13 = *v11;
                  OUTLINED_FUNCTION_24_2();
                  sub_19393C3C0();
                }

                OUTLINED_FUNCTION_16_4(v7[14]);
                if (v15)
                {
                  v16 = *v14;
                  OUTLINED_FUNCTION_24_2();
                  sub_19393C3C0();
                }

                v17 = (v0 + v7[15]);
                if ((v17[1] & 1) == 0)
                {
                  v18 = *v17;
                  OUTLINED_FUNCTION_15_11();
                  sub_19393C350();
                }

                if (*(*(v0 + v7[16]) + 16))
                {
                  OUTLINED_FUNCTION_15_11();
                  sub_19393C380();
                }

                v19 = (v0 + v7[17]);
                if ((v19[1] & 1) == 0)
                {
                  v20 = *v19;
                  OUTLINED_FUNCTION_15_11();
                  sub_19393C350();
                }

                OUTLINED_FUNCTION_16_4(v7[18]);
                if (v22)
                {
                  v23 = *v21;
                  OUTLINED_FUNCTION_24_2();
                  sub_19393C3C0();
                }

                OUTLINED_FUNCTION_16_4(v7[19]);
                if (v25)
                {
                  v26 = *v24;
                  OUTLINED_FUNCTION_24_2();
                  sub_19393C3C0();
                }

                OUTLINED_FUNCTION_16_4(v7[20]);
                if (v28)
                {
                  v29 = *v27;
                  OUTLINED_FUNCTION_24_2();
                  sub_19393C3C0();
                }

                OUTLINED_FUNCTION_12_32();
                sub_193669BB4();
                OUTLINED_FUNCTION_16_4(v7[22]);
                if (v31)
                {
                  v32 = *v30;
                  OUTLINED_FUNCTION_24_2();
                  sub_19393C3C0();
                }

                OUTLINED_FUNCTION_16_4(v7[23]);
                if (v34)
                {
                  v35 = *v33;
                  OUTLINED_FUNCTION_24_2();
                  sub_19393C3C0();
                }

                OUTLINED_FUNCTION_16_4(v7[24]);
                if (v37)
                {
                  v38 = *v36;
                  OUTLINED_FUNCTION_24_2();
                  sub_19393C3C0();
                }

                OUTLINED_FUNCTION_16_4(v7[25]);
                if (v40)
                {
                  v41 = *v39;
                  OUTLINED_FUNCTION_24_2();
                  sub_19393C3C0();
                }

                OUTLINED_FUNCTION_16_4(v7[26]);
                if (v43)
                {
                  v44 = *v42;
                  OUTLINED_FUNCTION_24_2();
                  sub_19393C3C0();
                }

                OUTLINED_FUNCTION_16_4(v7[27]);
                if (v46)
                {
                  v47 = *v45;
                  OUTLINED_FUNCTION_24_2();
                  sub_19393C3C0();
                }

                OUTLINED_FUNCTION_16_4(v7[28]);
                if (v49)
                {
                  v50 = *v48;
                  OUTLINED_FUNCTION_24_2();
                  sub_19393C3C0();
                }

                v51 = (v0 + v7[29]);
                if (v51[1] >> 60 != 15)
                {
                  v52 = *v51;
                  v53 = OUTLINED_FUNCTION_234();
                  sub_193450688(v53, v54);
                  OUTLINED_FUNCTION_234();
                  OUTLINED_FUNCTION_24_2();
                  sub_19393C330();
                  v55 = OUTLINED_FUNCTION_234();
                  sub_19345012C(v55, v56);
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_193669950()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_77(v2, v3, v4, v5);
  v6 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15_9();
  v10 = sub_19393BE00();
  v11 = OUTLINED_FUNCTION_76(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  v16 = OUTLINED_FUNCTION_14_5();
  v17 = type metadata accessor for TextUnderstandingEvent.Metadata(v16);
  OUTLINED_FUNCTION_42_7(*(v17 + 40));
  OUTLINED_FUNCTION_23_5(v1);
  if (v18)
  {
    sub_19344E6DC(v1, &qword_1EAE3A9E8, &qword_19394F800);
  }

  else
  {
    v19 = OUTLINED_FUNCTION_243();
    v20(v19);
    OUTLINED_FUNCTION_22_1(v0, 7);
    v21 = *(v13 + 8);
    v22 = OUTLINED_FUNCTION_234();
    v23(v22);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_193669A88()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_77(v2, v3, v4, v5);
  v6 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_14_5();
  v10 = sub_19393BD10();
  v11 = OUTLINED_FUNCTION_76(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = OUTLINED_FUNCTION_37();
  v15 = type metadata accessor for TextUnderstandingEvent.Metadata(v14);
  OUTLINED_FUNCTION_20_8(*(v15 + 48));
  OUTLINED_FUNCTION_23_5(v0);
  if (v16)
  {
    sub_19344E6DC(v0, &qword_1EAE3ACA0, &qword_193972420);
  }

  else
  {
    v17 = OUTLINED_FUNCTION_78_0();
    v18(v17);
    OUTLINED_FUNCTION_35_26(v1, 9);
    v19 = OUTLINED_FUNCTION_86_0();
    v20(v19);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_193669BB4()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_77(v2, v3, v4, v5);
  v6 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_14_5();
  v10 = sub_19393BD10();
  v11 = OUTLINED_FUNCTION_76(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = OUTLINED_FUNCTION_37();
  v15 = type metadata accessor for TextUnderstandingEvent.Metadata(v14);
  OUTLINED_FUNCTION_20_8(*(v15 + 84));
  OUTLINED_FUNCTION_23_5(v0);
  if (v16)
  {
    sub_19344E6DC(v0, &qword_1EAE3ACA0, &qword_193972420);
  }

  else
  {
    v17 = OUTLINED_FUNCTION_78_0();
    v18(v17);
    OUTLINED_FUNCTION_35_26(v1, 18);
    v19 = OUTLINED_FUNCTION_86_0();
    v20(v19);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

unint64_t sub_193669D44()
{
  result = qword_1EAE3FB50;
  if (!qword_1EAE3FB50)
  {
    type metadata accessor for TextUnderstandingEvent.Metadata(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FB50);
  }

  return result;
}

uint64_t sub_193669D9C(uint64_t a1)
{
  v2 = type metadata accessor for TextUnderstandingEvent.Metadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_193669E10()
{
  OUTLINED_FUNCTION_8_4();
  sub_19393BE00();
  OUTLINED_FUNCTION_45();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t TextUnderstandingEvent.writeTimestamp.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for TextUnderstandingEvent(v0);
  v2 = OUTLINED_FUNCTION_101(*(v1 + 20));
  return sub_193448804(v2, v3, v4, v5);
}

uint64_t TextUnderstandingEvent.writeTimestamp.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for TextUnderstandingEvent(v0) + 20);
  v2 = OUTLINED_FUNCTION_100_0();
  return sub_19344542C(v2, v3, v4, v5);
}

uint64_t TextUnderstandingEvent.writeTimestamp.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for TextUnderstandingEvent(v0) + 20);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t TextUnderstandingEvent.bookmark.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for TextUnderstandingEvent(v0);
  v2 = OUTLINED_FUNCTION_101(*(v1 + 24));
  return sub_193448804(v2, v3, v4, v5);
}

uint64_t TextUnderstandingEvent.bookmark.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for TextUnderstandingEvent(v0) + 24);
  v2 = OUTLINED_FUNCTION_100_0();
  return sub_19344542C(v2, v3, v4, v5);
}

uint64_t TextUnderstandingEvent.bookmark.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for TextUnderstandingEvent(v0) + 24);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t TextUnderstandingEvent.documentIdentifiers.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = *(type metadata accessor for TextUnderstandingEvent(v2) + 28);
  memcpy(__dst, (v1 + v3), sizeof(__dst));
  memcpy(v0, (v1 + v3), 0x60uLL);
  return sub_19365A03C(__dst, &v5);
}

void *TextUnderstandingEvent.documentIdentifiers.setter()
{
  v2 = OUTLINED_FUNCTION_3_4();
  v3 = *(type metadata accessor for TextUnderstandingEvent(v2) + 28);
  memcpy(v5, (v1 + v3), sizeof(v5));
  sub_19365A098(v5);
  return memcpy((v1 + v3), v0, 0x60uLL);
}

uint64_t TextUnderstandingEvent.documentIdentifiers.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for TextUnderstandingEvent(v0) + 28);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t TextUnderstandingEvent.status.getter()
{
  v0 = type metadata accessor for TextUnderstandingEvent(0);
  OUTLINED_FUNCTION_4_4(*(v0 + 32));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingEvent.status.setter()
{
  v3 = OUTLINED_FUNCTION_48_1();
  v4 = type metadata accessor for TextUnderstandingEvent(v3);
  result = OUTLINED_FUNCTION_201(*(v4 + 32));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TextUnderstandingEvent.status.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for TextUnderstandingEvent(v0) + 32);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t TextUnderstandingEvent.category.getter()
{
  v0 = type metadata accessor for TextUnderstandingEvent(0);
  OUTLINED_FUNCTION_4_4(*(v0 + 36));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingEvent.category.setter()
{
  v3 = OUTLINED_FUNCTION_48_1();
  v4 = type metadata accessor for TextUnderstandingEvent(v3);
  result = OUTLINED_FUNCTION_201(*(v4 + 36));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TextUnderstandingEvent.category.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for TextUnderstandingEvent(v0) + 36);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t TextUnderstandingEvent.algorithm.getter()
{
  v0 = type metadata accessor for TextUnderstandingEvent(0);
  OUTLINED_FUNCTION_4_4(*(v0 + 40));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingEvent.algorithm.setter()
{
  v3 = OUTLINED_FUNCTION_48_1();
  v4 = type metadata accessor for TextUnderstandingEvent(v3);
  result = OUTLINED_FUNCTION_201(*(v4 + 40));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TextUnderstandingEvent.algorithm.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for TextUnderstandingEvent(v0) + 40);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t TextUnderstandingEvent.metadata.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for TextUnderstandingEvent(v0);
  v2 = OUTLINED_FUNCTION_101(*(v1 + 44));

  return sub_19366A328(v2, v3);
}

uint64_t sub_19366A328(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextUnderstandingEvent.Metadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t TextUnderstandingEvent.metadata.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for TextUnderstandingEvent(v0) + 44);
  v2 = OUTLINED_FUNCTION_100_0();

  return sub_193667CE0(v2, v3);
}

uint64_t TextUnderstandingEvent.metadata.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for TextUnderstandingEvent(v0) + 44);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t TextUnderstandingEvent.startDate.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for TextUnderstandingEvent(v0) + 48);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t TextUnderstandingEvent.endDate.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for TextUnderstandingEvent(v0);
  v2 = OUTLINED_FUNCTION_101(*(v1 + 52));
  return sub_193448804(v2, v3, v4, v5);
}

uint64_t TextUnderstandingEvent.endDate.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for TextUnderstandingEvent(v0) + 52);
  v2 = OUTLINED_FUNCTION_100_0();
  return sub_19344542C(v2, v3, v4, v5);
}

uint64_t TextUnderstandingEvent.endDate.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for TextUnderstandingEvent(v0) + 52);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t TextUnderstandingEvent.startLocation.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = *(type metadata accessor for TextUnderstandingEvent(v2) + 56);
  OUTLINED_FUNCTION_51_16(v6);
  memcpy(v0, (v1 + v3), 0xF8uLL);
  return sub_193448804(v6, &v5, &qword_1EAE3FB48, &qword_193977E48);
}

void *TextUnderstandingEvent.startLocation.setter()
{
  v2 = OUTLINED_FUNCTION_3_4();
  v3 = *(type metadata accessor for TextUnderstandingEvent(v2) + 56);
  OUTLINED_FUNCTION_51_16(v5);
  sub_19344E6DC(v5, &qword_1EAE3FB48, &qword_193977E48);
  return memcpy((v1 + v3), v0, 0xF8uLL);
}

uint64_t TextUnderstandingEvent.startLocation.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for TextUnderstandingEvent(v0) + 56);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t TextUnderstandingEvent.endLocation.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = *(type metadata accessor for TextUnderstandingEvent(v2) + 60);
  OUTLINED_FUNCTION_51_16(v6);
  memcpy(v0, (v1 + v3), 0xF8uLL);
  return sub_193448804(v6, &v5, &qword_1EAE3FB48, &qword_193977E48);
}

void *TextUnderstandingEvent.endLocation.setter()
{
  v2 = OUTLINED_FUNCTION_3_4();
  v3 = *(type metadata accessor for TextUnderstandingEvent(v2) + 60);
  OUTLINED_FUNCTION_51_16(v5);
  sub_19344E6DC(v5, &qword_1EAE3FB48, &qword_193977E48);
  return memcpy((v1 + v3), v0, 0xF8uLL);
}

uint64_t TextUnderstandingEvent.endLocation.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for TextUnderstandingEvent(v0) + 60);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t TextUnderstandingEvent.groupId.getter()
{
  v0 = type metadata accessor for TextUnderstandingEvent(0);
  OUTLINED_FUNCTION_4_4(*(v0 + 64));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingEvent.groupId.setter()
{
  v3 = OUTLINED_FUNCTION_48_1();
  v4 = type metadata accessor for TextUnderstandingEvent(v3);
  result = OUTLINED_FUNCTION_201(*(v4 + 64));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TextUnderstandingEvent.groupId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for TextUnderstandingEvent(v0) + 64);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t TextUnderstandingEvent.fallbackGroupId.getter()
{
  v0 = type metadata accessor for TextUnderstandingEvent(0);
  OUTLINED_FUNCTION_4_4(*(v0 + 68));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingEvent.fallbackGroupId.setter()
{
  v3 = OUTLINED_FUNCTION_48_1();
  v4 = type metadata accessor for TextUnderstandingEvent(v3);
  result = OUTLINED_FUNCTION_201(*(v4 + 68));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TextUnderstandingEvent.fallbackGroupId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for TextUnderstandingEvent(v0) + 68);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t TextUnderstandingEvent.geocodingMode.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for TextUnderstandingEvent(v0) + 72);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t TextUnderstandingEvent.notes.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for TextUnderstandingEvent(v0) + 76);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t TextUnderstandingEvent.title.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for TextUnderstandingEvent(v0) + 80);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t TextUnderstandingEvent.isAllDay.setter(char a1)
{
  result = type metadata accessor for TextUnderstandingEvent(0);
  *(v1 + *(result + 84)) = a1;
  return result;
}

uint64_t TextUnderstandingEvent.isAllDay.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for TextUnderstandingEvent(v0) + 84);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_19366AB14()
{
  OUTLINED_FUNCTION_8_4();
  sub_19393BD10();
  OUTLINED_FUNCTION_45();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t TextUnderstandingEvent.url.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for TextUnderstandingEvent(v0);
  v2 = OUTLINED_FUNCTION_101(*(v1 + 88));
  return sub_193448804(v2, v3, v4, v5);
}

uint64_t TextUnderstandingEvent.url.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for TextUnderstandingEvent(v0) + 88);
  v2 = OUTLINED_FUNCTION_100_0();
  return sub_19344542C(v2, v3, v4, v5);
}

uint64_t TextUnderstandingEvent.url.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for TextUnderstandingEvent(v0) + 88);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t TextUnderstandingEvent.isValidCalendarEvent.setter(char a1)
{
  result = type metadata accessor for TextUnderstandingEvent(0);
  *(v1 + *(result + 92)) = a1;
  return result;
}

uint64_t TextUnderstandingEvent.isValidCalendarEvent.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for TextUnderstandingEvent(v0) + 92);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t TextUnderstandingEvent.Location.category.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingEvent.Location.category.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TextUnderstandingEvent.Location.name.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingEvent.Location.name.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

double sub_19366ADA0(_OWORD *a1)
{
  result = 0.0;
  *a1 = xmmword_1939526A0;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  return result;
}

uint64_t TextUnderstandingEvent.Location.address.getter@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_37_22(v5);
  memcpy(a1, (v1 + 32), 0x90uLL);
  return sub_193448804(v5, v4, &qword_1EAE3FBB0, &qword_193977F08);
}

void *TextUnderstandingEvent.Location.address.setter(const void *a1)
{
  OUTLINED_FUNCTION_37_22(v4);
  sub_19344E6DC(v4, &qword_1EAE3FBB0, &qword_193977F08);
  return memcpy((v1 + 32), a1, 0x90uLL);
}

uint64_t TextUnderstandingEvent.Location.phoneNumber.getter()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingEvent.Location.phoneNumber.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 184);

  *(v1 + 176) = v2;
  *(v1 + 184) = v0;
  return result;
}

__n128 TextUnderstandingEvent.Location.coordinates.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[13].n128_u8[0];
  result = v1[12];
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 TextUnderstandingEvent.Location.coordinates.setter(__n128 *a1)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  v1[12] = *a1;
  v1[13].n128_u8[0] = v2;
  return result;
}

uint64_t TextUnderstandingEvent.Location.metadata.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 216);
  v3 = *(v1 + 224);
  *a1 = v2;
  a1[1] = v3;
  return sub_19350CB08(v2, v3);
}

uint64_t TextUnderstandingEvent.Location.metadata.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_193456418(*(v1 + 216), *(v1 + 224));
  *(v1 + 216) = v2;
  *(v1 + 224) = v3;
  return result;
}

uint64_t TextUnderstandingEvent.Location.timeZoneIdentifier.getter()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingEvent.Location.timeZoneIdentifier.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 240);

  *(v1 + 232) = v2;
  *(v1 + 240) = v0;
  return result;
}

double TextUnderstandingEvent.Location.init()@<D0>(uint64_t a1@<X8>)
{
  sub_19366ADA0(v3);
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  memcpy(__dst, v3, sizeof(__dst));
  sub_19344E6DC(__dst, &qword_1EAE3FBB0, &qword_193977F08);
  memcpy((a1 + 32), v3, 0x90uLL);
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 1;
  sub_193456418(0, 1);
  result = 0.0;
  *(a1 + 216) = xmmword_1939526A0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  return result;
}

uint64_t static TextUnderstandingEvent.Location.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  v4 = a1[1];
  v7 = a1[2];
  v6 = a1[3];
  OUTLINED_FUNCTION_38_24(v113);
  v93 = a1[22];
  v99 = a1[23];
  v82 = *(a1 + 12);
  HIDWORD(v87) = *(a1 + 208);
  v77 = *(a1 + 27);
  v57 = a1[29];
  v63 = a1[30];
  v8 = *a2;
  v9 = a2[1];
  v11 = a2[2];
  v10 = a2[3];
  OUTLINED_FUNCTION_37_22(v114);
  v90 = a2[22];
  v96 = a2[23];
  v66 = *(a2 + 12);
  LODWORD(v87) = *(a2 + 208);
  v102 = a2[27];
  v74 = a2[28];
  v12 = v5 == v8 && v4 == v9;
  v54 = a2[29];
  v60 = a2[30];
  if (!v12 && (sub_19393CA30() & 1) == 0)
  {
    return 0;
  }

  if (v6)
  {
    if (!v10)
    {
      return 0;
    }

    v13 = v7 == v11 && v6 == v10;
    if (!v13 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  OUTLINED_FUNCTION_38_24(v111);
  OUTLINED_FUNCTION_37_22(&v111[9]);
  OUTLINED_FUNCTION_38_24(v112);
  if (get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(v112) == 1)
  {
    OUTLINED_FUNCTION_37_22(v109);
    if (get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(v109) == 1)
    {
      OUTLINED_FUNCTION_38_24(v110);
      OUTLINED_FUNCTION_79_1(v113, __src);
      OUTLINED_FUNCTION_79_1(v114, __src);
      sub_19344E6DC(v110, &qword_1EAE3FBB0, &qword_193977F08);
      goto LABEL_25;
    }

    OUTLINED_FUNCTION_79_1(v113, v110);
    OUTLINED_FUNCTION_79_1(v114, v110);
LABEL_21:
    memcpy(v109, v111, sizeof(v109));
    sub_19344E6DC(v109, &qword_1EAE3FBB8, &qword_193977F10);
    return 0;
  }

  OUTLINED_FUNCTION_38_24(v110);
  OUTLINED_FUNCTION_38_24(__src);
  OUTLINED_FUNCTION_37_22(v109);
  if (get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(v109) == 1)
  {
    memcpy(__dst, __src, sizeof(__dst));
    OUTLINED_FUNCTION_79_1(v113, v106);
    OUTLINED_FUNCTION_79_1(v114, v106);
    OUTLINED_FUNCTION_79_1(v110, v106);
    sub_19366B68C(__dst);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_37_22(__dst);
  OUTLINED_FUNCTION_39_23(v113, v15, v16, v17, v18, v19, v20, v21, v54, v57, v60, v63, v66, *(&v66 + 1), v71, v74, v77, *(&v77 + 1), v82, *(&v82 + 1), v87, v90, v93, v96, v99, v102, v105[0], v105[1], v105[2], v105[3], v105[4], v105[5], v105[6], v105[7], v105[8], v105[9], v105[10], v105[11], v105[12], v105[13], v105[14], v105[15], v105[16], v105[17], v106[0]);
  OUTLINED_FUNCTION_39_23(v114, v22, v23, v24, v25, v26, v27, v28, v55, v58, v61, v64, v67, v69, v72, v75, v78, v80, v83, v85, v88, v91, v94, v97, v100, v103, v105[0], v105[1], v105[2], v105[3], v105[4], v105[5], v105[6], v105[7], v105[8], v105[9], v105[10], v105[11], v105[12], v105[13], v105[14], v105[15], v105[16], v105[17], v106[0]);
  OUTLINED_FUNCTION_39_23(v110, v29, v30, v31, v32, v33, v34, v35, v56, v59, v62, v65, v68, v70, v73, v76, v79, v81, v84, v86, v89, v92, v95, v98, v101, v104, v105[0], v105[1], v105[2], v105[3], v105[4], v105[5], v105[6], v105[7], v105[8], v105[9], v105[10], v105[11], v105[12], v105[13], v105[14], v105[15], v105[16], v105[17], v106[0]);
  sub_19366B6E0();
  v36 = sub_19393C550();
  memcpy(v105, __dst, sizeof(v105));
  sub_19366B68C(v105);
  memcpy(v106, __src, sizeof(v106));
  sub_19366B68C(v106);
  OUTLINED_FUNCTION_38_24(__dst);
  sub_19344E6DC(__dst, &qword_1EAE3FBB0, &qword_193977F08);
  if ((v36 & 1) == 0)
  {
    return 0;
  }

LABEL_25:
  if (v99)
  {
    v37 = v102;
    if (!v96)
    {
      return 0;
    }

    v38 = v93 == v90 && v99 == v96;
    if (!v38 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v37 = v102;
    if (v96)
    {
      return 0;
    }
  }

  if ((v87 & 0x100000000) != 0)
  {
    if ((v87 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v111[0] = v82;
    LOBYTE(v111[1]) = 0;
    if (v87)
    {
      return 0;
    }

    v109[0] = v66;
    sub_19366B638();
    if ((sub_19393C550() & 1) == 0)
    {
      return 0;
    }
  }

  if (*(&v77 + 1) != 1)
  {
    v39 = v74;
    v111[0] = v77;
    if (v74 != 1)
    {
      *&v109[0] = v37;
      *(&v109[0] + 1) = v74;
      v46 = OUTLINED_FUNCTION_115_0();
      sub_19350CB08(v46, v47);
      sub_19350CB08(v37, v74);
      v48 = OUTLINED_FUNCTION_115_0();
      sub_19350CB08(v48, v49);
      sub_19366B5E4();
      v50 = sub_19393C550();

      v51 = OUTLINED_FUNCTION_115_0();
      sub_193456418(v51, v52);
      if ((v50 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_47;
    }

    v40 = OUTLINED_FUNCTION_115_0();
    sub_19350CB08(v40, v41);
    sub_19350CB08(v37, 1);
    v42 = OUTLINED_FUNCTION_115_0();
    sub_19350CB08(v42, v43);

LABEL_45:
    v44 = OUTLINED_FUNCTION_115_0();
    sub_193456418(v44, v45);
    sub_193456418(v37, v39);
    return 0;
  }

  sub_19350CB08(v77, 1);
  v39 = v74;
  if (v74 != 1)
  {
    sub_19350CB08(v37, v74);
    goto LABEL_45;
  }

  sub_19350CB08(v37, 1);
  sub_193456418(v77, 1);
LABEL_47:
  if (v63)
  {
    if (v60)
    {
      v53 = v57 == v54 && v63 == v60;
      if (v53 || (sub_19393CA30() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v60)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_19366B5E4()
{
  result = qword_1EAE3FBC0;
  if (!qword_1EAE3FBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FBC0);
  }

  return result;
}

unint64_t sub_19366B638()
{
  result = qword_1EAE3FBC8;
  if (!qword_1EAE3FBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FBC8);
  }

  return result;
}

unint64_t sub_19366B6E0()
{
  result = qword_1EAE3FBD0;
  if (!qword_1EAE3FBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FBD0);
  }

  return result;
}

uint64_t TextUnderstandingEvent.Location.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[22];
  v6 = v0[23];
  v7 = v0[24];
  v8 = v0[25];
  v9 = *(v0 + 208);
  v10 = v0[28];
  v11 = v0[30];
  v13 = v0[27];
  v14 = v0[29];
  sub_19393C640();
  if (v4)
  {
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  memcpy(__dst, v0 + 4, 0x90uLL);
  if (get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(__dst) == 1)
  {
    OUTLINED_FUNCTION_104_0();
    if (v6)
    {
      goto LABEL_6;
    }

LABEL_9:
    OUTLINED_FUNCTION_104_0();
    if (v9)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  memcpy(__src, v0 + 4, sizeof(__src));
  OUTLINED_FUNCTION_103_0();
  memcpy(v16, v0 + 4, sizeof(v16));
  sub_19366B910(v16, v17);
  sub_19366B96C();
  sub_19393C540();
  memcpy(v17, __src, sizeof(v17));
  sub_19366B68C(v17);
  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_6:
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_30_15();
  sub_19393C640();
  if (v9)
  {
LABEL_7:
    OUTLINED_FUNCTION_104_0();
    goto LABEL_11;
  }

LABEL_10:
  v17[0] = v7;
  v17[1] = v8;
  OUTLINED_FUNCTION_103_0();
  sub_19366B9C0();
  sub_19393C540();
LABEL_11:
  if (v10 == 1)
  {
    OUTLINED_FUNCTION_104_0();
    if (v11)
    {
LABEL_13:
      OUTLINED_FUNCTION_103_0();
      return sub_19393C640();
    }
  }

  else
  {
    v17[0] = v13;
    v17[1] = v10;
    OUTLINED_FUNCTION_103_0();
    sub_19366BA14();

    sub_19393C540();

    if (v11)
    {
      goto LABEL_13;
    }
  }

  return OUTLINED_FUNCTION_104_0();
}

unint64_t sub_19366B96C()
{
  result = qword_1EAE3FBD8;
  if (!qword_1EAE3FBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FBD8);
  }

  return result;
}

unint64_t sub_19366B9C0()
{
  result = qword_1EAE3FBE0;
  if (!qword_1EAE3FBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FBE0);
  }

  return result;
}

unint64_t sub_19366BA14()
{
  result = qword_1EAE3FBE8;
  if (!qword_1EAE3FBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FBE8);
  }

  return result;
}

uint64_t TextUnderstandingEvent.Location.hashValue.getter()
{
  sub_19393CAB0();
  TextUnderstandingEvent.Location.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_19366BAB0()
{
  sub_19393CAB0();
  TextUnderstandingEvent.Location.hash(into:)();
  return sub_19393CB00();
}

uint64_t TextUnderstandingEvent.Metadata.confirmationNumber.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingEvent.Metadata.confirmationNumber.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TextUnderstandingEvent.Metadata.bookingProvider.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingEvent.Metadata.bookingProvider.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t TextUnderstandingEvent.Metadata.participants.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t TextUnderstandingEvent.Metadata.flightCarrierCode.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingEvent.Metadata.flightCarrierCode.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 48);

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t TextUnderstandingEvent.Metadata.flightNumber.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingEvent.Metadata.flightNumber.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 64);

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

uint64_t TextUnderstandingEvent.Metadata.seatNumbers.setter(uint64_t a1)
{
  v3 = *(v1 + 72);

  *(v1 + 72) = a1;
  return result;
}

uint64_t TextUnderstandingEvent.Metadata.flightBoardingTime.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for TextUnderstandingEvent.Metadata(v0);
  v2 = OUTLINED_FUNCTION_101(*(v1 + 40));
  return sub_193448804(v2, v3, v4, v5);
}

uint64_t TextUnderstandingEvent.Metadata.flightBoardingTime.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for TextUnderstandingEvent.Metadata(v0) + 40);
  v2 = OUTLINED_FUNCTION_100_0();
  return sub_19344542C(v2, v3, v4, v5);
}

uint64_t TextUnderstandingEvent.Metadata.flightBoardingTime.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for TextUnderstandingEvent.Metadata(v0) + 40);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t TextUnderstandingEvent.Metadata.duration.getter()
{
  v0 = type metadata accessor for TextUnderstandingEvent.Metadata(0);
  OUTLINED_FUNCTION_4_4(*(v0 + 44));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingEvent.Metadata.duration.setter()
{
  v3 = OUTLINED_FUNCTION_48_1();
  v4 = type metadata accessor for TextUnderstandingEvent.Metadata(v3);
  result = OUTLINED_FUNCTION_201(*(v4 + 44));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TextUnderstandingEvent.Metadata.duration.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for TextUnderstandingEvent.Metadata(v0) + 44);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t TextUnderstandingEvent.Metadata.flightCheckInURL.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for TextUnderstandingEvent.Metadata(v0) + 48);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t TextUnderstandingEvent.Metadata.cost.getter()
{
  v0 = type metadata accessor for TextUnderstandingEvent.Metadata(0);
  OUTLINED_FUNCTION_4_4(*(v0 + 52));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingEvent.Metadata.cost.setter()
{
  v3 = OUTLINED_FUNCTION_48_1();
  v4 = type metadata accessor for TextUnderstandingEvent.Metadata(v3);
  result = OUTLINED_FUNCTION_201(*(v4 + 52));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TextUnderstandingEvent.Metadata.cost.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for TextUnderstandingEvent.Metadata(v0) + 52);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t TextUnderstandingEvent.Metadata.currency.getter()
{
  v0 = type metadata accessor for TextUnderstandingEvent.Metadata(0);
  OUTLINED_FUNCTION_4_4(*(v0 + 56));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingEvent.Metadata.currency.setter()
{
  v3 = OUTLINED_FUNCTION_48_1();
  v4 = type metadata accessor for TextUnderstandingEvent.Metadata(v3);
  result = OUTLINED_FUNCTION_201(*(v4 + 56));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TextUnderstandingEvent.Metadata.currency.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for TextUnderstandingEvent.Metadata(v0) + 56);
  return OUTLINED_FUNCTION_1_4();
}

void TextUnderstandingEvent.Metadata.hotelRoomCount.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for TextUnderstandingEvent.Metadata(v0);
  OUTLINED_FUNCTION_263(*(v1 + 60));
}

uint64_t TextUnderstandingEvent.Metadata.hotelRoomCount.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for TextUnderstandingEvent.Metadata(v0) + 60);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t TextUnderstandingEvent.Metadata.hotelRoomNumbers.getter()
{
  v1 = *(v0 + *(type metadata accessor for TextUnderstandingEvent.Metadata(0) + 64));
}

uint64_t TextUnderstandingEvent.Metadata.hotelRoomNumbers.setter()
{
  v2 = OUTLINED_FUNCTION_3_4();
  v3 = *(type metadata accessor for TextUnderstandingEvent.Metadata(v2) + 64);
  v4 = *(v1 + v3);

  *(v1 + v3) = v0;
  return result;
}

uint64_t TextUnderstandingEvent.Metadata.hotelRoomNumbers.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for TextUnderstandingEvent.Metadata(v0) + 64);
  return OUTLINED_FUNCTION_1_4();
}

void TextUnderstandingEvent.Metadata.restaurantPartySize.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for TextUnderstandingEvent.Metadata(v0);
  OUTLINED_FUNCTION_263(*(v1 + 68));
}

uint64_t TextUnderstandingEvent.Metadata.restaurantPartySize.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for TextUnderstandingEvent.Metadata(v0) + 68);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_19366C374(uint64_t (*a1)(void))
{
  v1 = a1(0);
  OUTLINED_FUNCTION_4_4(*(v1 + 72));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t sub_19366C3C4()
{
  v3 = OUTLINED_FUNCTION_48_1();
  v5 = v4(v3);
  result = OUTLINED_FUNCTION_201(*(v5 + 72));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TextUnderstandingEvent.Metadata.carRentalName.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for TextUnderstandingEvent.Metadata(v0) + 72);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_19366C458(uint64_t (*a1)(void))
{
  v1 = a1(0);
  OUTLINED_FUNCTION_4_4(*(v1 + 76));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t sub_19366C4A8()
{
  v3 = OUTLINED_FUNCTION_48_1();
  v5 = v4(v3);
  result = OUTLINED_FUNCTION_201(*(v5 + 76));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TextUnderstandingEvent.Metadata.carRentalVehicleName.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for TextUnderstandingEvent.Metadata(v0) + 76);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_19366C53C(uint64_t (*a1)(void))
{
  v1 = a1(0);
  OUTLINED_FUNCTION_4_4(*(v1 + 80));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t sub_19366C58C()
{
  v3 = OUTLINED_FUNCTION_48_1();
  v5 = v4(v3);
  result = OUTLINED_FUNCTION_201(*(v5 + 80));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TextUnderstandingEvent.Metadata.partyName.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for TextUnderstandingEvent.Metadata(v0) + 80);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t TextUnderstandingEvent.Metadata.partyURL.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for TextUnderstandingEvent.Metadata(v0);
  v2 = OUTLINED_FUNCTION_101(*(v1 + 84));
  return sub_193448804(v2, v3, v4, v5);
}

uint64_t TextUnderstandingEvent.Metadata.partyURL.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for TextUnderstandingEvent.Metadata(v0) + 84);
  v2 = OUTLINED_FUNCTION_100_0();
  return sub_19344542C(v2, v3, v4, v5);
}

uint64_t TextUnderstandingEvent.Metadata.partyURL.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for TextUnderstandingEvent.Metadata(v0) + 84);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t TextUnderstandingEvent.Metadata.appointmentName.getter()
{
  v0 = type metadata accessor for TextUnderstandingEvent.Metadata(0);
  OUTLINED_FUNCTION_4_4(*(v0 + 88));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingEvent.Metadata.appointmentName.setter()
{
  v3 = OUTLINED_FUNCTION_48_1();
  v4 = type metadata accessor for TextUnderstandingEvent.Metadata(v3);
  result = OUTLINED_FUNCTION_201(*(v4 + 88));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TextUnderstandingEvent.Metadata.appointmentName.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for TextUnderstandingEvent.Metadata(v0) + 88);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t TextUnderstandingEvent.Metadata.appointmentAgentName.getter()
{
  v0 = type metadata accessor for TextUnderstandingEvent.Metadata(0);
  OUTLINED_FUNCTION_4_4(*(v0 + 92));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingEvent.Metadata.appointmentAgentName.setter()
{
  v3 = OUTLINED_FUNCTION_48_1();
  v4 = type metadata accessor for TextUnderstandingEvent.Metadata(v3);
  result = OUTLINED_FUNCTION_201(*(v4 + 92));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TextUnderstandingEvent.Metadata.appointmentAgentName.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for TextUnderstandingEvent.Metadata(v0) + 92);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t TextUnderstandingEvent.Metadata.showType.getter()
{
  v0 = type metadata accessor for TextUnderstandingEvent.Metadata(0);
  OUTLINED_FUNCTION_4_4(*(v0 + 96));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingEvent.Metadata.showType.setter()
{
  v3 = OUTLINED_FUNCTION_48_1();
  v4 = type metadata accessor for TextUnderstandingEvent.Metadata(v3);
  result = OUTLINED_FUNCTION_201(*(v4 + 96));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TextUnderstandingEvent.Metadata.showType.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for TextUnderstandingEvent.Metadata(v0) + 96);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t TextUnderstandingEvent.Metadata.showName.getter()
{
  v0 = type metadata accessor for TextUnderstandingEvent.Metadata(0);
  OUTLINED_FUNCTION_4_4(*(v0 + 100));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingEvent.Metadata.showName.setter()
{
  v3 = OUTLINED_FUNCTION_48_1();
  v4 = type metadata accessor for TextUnderstandingEvent.Metadata(v3);
  result = OUTLINED_FUNCTION_201(*(v4 + 100));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TextUnderstandingEvent.Metadata.showName.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for TextUnderstandingEvent.Metadata(v0) + 100);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t TextUnderstandingEvent.Metadata.showTicketType.getter()
{
  v0 = type metadata accessor for TextUnderstandingEvent.Metadata(0);
  OUTLINED_FUNCTION_4_4(*(v0 + 104));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingEvent.Metadata.showTicketType.setter()
{
  v3 = OUTLINED_FUNCTION_48_1();
  v4 = type metadata accessor for TextUnderstandingEvent.Metadata(v3);
  result = OUTLINED_FUNCTION_201(*(v4 + 104));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TextUnderstandingEvent.Metadata.showTicketType.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for TextUnderstandingEvent.Metadata(v0) + 104);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t TextUnderstandingEvent.Metadata.transportType.getter()
{
  v0 = type metadata accessor for TextUnderstandingEvent.Metadata(0);
  OUTLINED_FUNCTION_4_4(*(v0 + 108));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingEvent.Metadata.transportType.setter()
{
  v3 = OUTLINED_FUNCTION_48_1();
  v4 = type metadata accessor for TextUnderstandingEvent.Metadata(v3);
  result = OUTLINED_FUNCTION_201(*(v4 + 108));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TextUnderstandingEvent.Metadata.transportType.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for TextUnderstandingEvent.Metadata(v0) + 108);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t TextUnderstandingEvent.Metadata.transportName.getter()
{
  v0 = type metadata accessor for TextUnderstandingEvent.Metadata(0);
  OUTLINED_FUNCTION_4_4(*(v0 + 112));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingEvent.Metadata.transportName.setter()
{
  v3 = OUTLINED_FUNCTION_48_1();
  v4 = type metadata accessor for TextUnderstandingEvent.Metadata(v3);
  result = OUTLINED_FUNCTION_201(*(v4 + 112));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TextUnderstandingEvent.Metadata.transportName.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for TextUnderstandingEvent.Metadata(v0) + 112);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t TextUnderstandingEvent.Metadata.attachmentData.getter()
{
  v1 = (v0 + *(type metadata accessor for TextUnderstandingEvent.Metadata(0) + 116));
  v2 = *v1;
  v3 = v1[1];
  v4 = OUTLINED_FUNCTION_13_0();
  sub_193450268(v4, v5);
  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingEvent.Metadata.attachmentData.setter()
{
  v3 = OUTLINED_FUNCTION_48_1();
  v4 = v1 + *(type metadata accessor for TextUnderstandingEvent.Metadata(v3) + 116);
  result = sub_19345012C(*v4, *(v4 + 8));
  *v4 = v2;
  *(v4 + 8) = v0;
  return result;
}

uint64_t TextUnderstandingEvent.Metadata.attachmentData.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for TextUnderstandingEvent.Metadata(v0) + 116);
  return OUTLINED_FUNCTION_1_4();
}

__n128 TextUnderstandingEvent.Metadata.init()()
{
  v1 = OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for TextUnderstandingEvent.Metadata(v1);
  v3 = v2[10];
  v37 = sub_19393BE00();
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  v8 = v2[12];
  v9 = (v0 + v2[11]);
  v10 = sub_19393BD10();
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v10);
  v14 = (v0 + v2[13]);
  v32 = (v0 + v2[14]);
  v36 = v0 + v2[15];
  v35 = v0 + v2[17];
  v39 = (v0 + v2[18]);
  v31 = (v0 + v2[19]);
  v34 = (v0 + v2[20]);
  v15 = v2[21];
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v10);
  v43 = (v0 + v2[22]);
  v44 = (v0 + v2[23]);
  v41 = (v0 + v2[24]);
  v42 = (v0 + v2[25]);
  v38 = (v0 + v2[26]);
  v40 = (v0 + v2[27]);
  v33 = (v0 + v2[28]);
  v19 = v0 + v2[29];
  *v19 = xmmword_193950B20;
  *v0 = 0u;
  *(v0 + 16) = 0u;
  v20 = MEMORY[0x1E69E7CC0];
  *(v0 + 32) = MEMORY[0x1E69E7CC0];
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = v20;
  sub_19344E6DC(v0 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v37);
  *v9 = 0;
  v9[1] = 0;
  sub_19344E6DC(v0 + v8, &qword_1EAE3ACA0, &qword_193972420);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v10);
  *v14 = 0;
  v14[1] = 0;
  *v32 = 0;
  v32[1] = 0;
  *v36 = 0;
  *(v36 + 4) = 1;
  *(v0 + v2[16]) = v20;
  *v35 = 0;
  *(v35 + 4) = 1;
  *v39 = 0;
  v39[1] = 0;
  *v31 = 0;
  v31[1] = 0;
  *v34 = 0;
  v34[1] = 0;
  sub_19344E6DC(v0 + v15, &qword_1EAE3ACA0, &qword_193972420);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v10);
  *v43 = 0;
  v43[1] = 0;
  *v44 = 0;
  v44[1] = 0;
  *v41 = 0;
  v41[1] = 0;
  *v42 = 0;
  v42[1] = 0;
  *v38 = 0;
  v38[1] = 0;
  *v40 = 0;
  v40[1] = 0;
  *v33 = 0;
  v33[1] = 0;
  sub_19345012C(*v19, *(v19 + 8));
  result = xmmword_193950B20;
  *v19 = xmmword_193950B20;
  return result;
}

BOOL static TextUnderstandingEvent.Metadata.== infix(_:_:)()
{
  OUTLINED_FUNCTION_48_1();
  v212 = sub_19393BD10();
  v2 = OUTLINED_FUNCTION_0(v212);
  v210 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v209 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ACA0, &qword_193972420);
  v9 = OUTLINED_FUNCTION_47(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15_8();
  v207 = v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v205 - v14;
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F118, &qword_193972428);
  v16 = OUTLINED_FUNCTION_4_1(v211);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_15_8();
  v208 = v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v205 - v21;
  v23 = sub_19393BE00();
  v24 = OUTLINED_FUNCTION_0(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5_1();
  v31 = v30 - v29;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v33 = OUTLINED_FUNCTION_47(v32);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v37 = &v205 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B968, &qword_193972430);
  v39 = OUTLINED_FUNCTION_4_1(v38);
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v43 = &v205 - v42;
  v44 = v1[1];
  v45 = v0[1];
  if (v44)
  {
    if (!v45)
    {
      return 0;
    }

    v46 = *v1 == *v0 && v44 == v45;
    if (!v46 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v45)
  {
    return 0;
  }

  v47 = v1[3];
  v48 = v0[3];
  if (v47)
  {
    if (!v48)
    {
      return 0;
    }

    v49 = v1[2] == v0[2] && v47 == v48;
    if (!v49 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v48)
  {
    return 0;
  }

  if ((sub_19344FC94(v1[4], v0[4]) & 1) == 0)
  {
    return 0;
  }

  v50 = v1[6];
  v51 = v0[6];
  if (v50)
  {
    if (!v51)
    {
      return 0;
    }

    v52 = v1[5] == v0[5] && v50 == v51;
    if (!v52 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v51)
  {
    return 0;
  }

  v53 = v1[8];
  v54 = v0[8];
  if (v53)
  {
    if (!v54)
    {
      return 0;
    }

    v55 = v1[7] == v0[7] && v53 == v54;
    if (!v55 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v54)
  {
    return 0;
  }

  if ((sub_19344FC94(v1[9], v0[9]) & 1) == 0)
  {
    return 0;
  }

  v56 = type metadata accessor for TextUnderstandingEvent.Metadata(0);
  v57 = *(v56 + 40);
  v205 = v56;
  v206 = v57;
  v58 = *(v38 + 48);
  sub_193448804(v1 + v57, v43, &qword_1EAE3A9E8, &qword_19394F800);
  v59 = v0 + v206;
  v206 = v58;
  sub_193448804(v59, &v43[v58], &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_6_3(v43, 1, v23);
  if (v46)
  {
    OUTLINED_FUNCTION_6_3(&v43[v206], 1, v23);
    if (v46)
    {
      sub_19344E6DC(v43, &qword_1EAE3A9E8, &qword_19394F800);
      goto LABEL_51;
    }

LABEL_47:
    v62 = &qword_1EAE3B968;
    v63 = &qword_193972430;
    v64 = v43;
LABEL_48:
    sub_19344E6DC(v64, v62, v63);
    return 0;
  }

  sub_193448804(v43, v37, &qword_1EAE3A9E8, &qword_19394F800);
  v60 = v206;
  OUTLINED_FUNCTION_6_3(&v43[v206], 1, v23);
  if (v61)
  {
    (*(v26 + 8))(v37, v23);
    goto LABEL_47;
  }

  (*(v26 + 32))(v31, &v43[v60], v23);
  OUTLINED_FUNCTION_17_33();
  sub_19366E22C(v66, v67);
  LODWORD(v206) = sub_19393C550();
  v68 = *(v26 + 8);
  v68(v31, v23);
  v68(v37, v23);
  sub_19344E6DC(v43, &qword_1EAE3A9E8, &qword_19394F800);
  if ((v206 & 1) == 0)
  {
    return 0;
  }

LABEL_51:
  v69 = v205;
  v70 = v205[11];
  OUTLINED_FUNCTION_3();
  if (v73)
  {
    if (!v71)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v72);
    v76 = v46 && v74 == v75;
    if (!v76 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v71)
  {
    return 0;
  }

  v77 = v69[12];
  v78 = *(v211 + 48);
  OUTLINED_FUNCTION_50_18(v1 + v77, v22);
  OUTLINED_FUNCTION_50_18(v0 + v77, &v22[v78]);
  v79 = v212;
  OUTLINED_FUNCTION_6_3(v22, 1, v212);
  if (v46)
  {
    OUTLINED_FUNCTION_6_3(&v22[v78], 1, v79);
    if (v46)
    {
      sub_19344E6DC(v22, &qword_1EAE3ACA0, &qword_193972420);
      goto LABEL_70;
    }

    goto LABEL_68;
  }

  sub_193448804(v22, v15, &qword_1EAE3ACA0, &qword_193972420);
  OUTLINED_FUNCTION_6_3(&v22[v78], 1, v79);
  if (v80)
  {
    (*(v210 + 8))(v15, v79);
LABEL_68:
    v62 = &qword_1EAE3F118;
    v63 = &qword_193972428;
    v64 = v22;
    goto LABEL_48;
  }

  v82 = v209;
  v81 = v210;
  (*(v210 + 32))(v209, &v22[v78], v79);
  OUTLINED_FUNCTION_2_57();
  sub_19366E22C(v83, v84);
  v85 = sub_19393C550();
  v86 = *(v81 + 8);
  v86(v82, v79);
  v86(v15, v79);
  sub_19344E6DC(v22, &qword_1EAE3ACA0, &qword_193972420);
  if ((v85 & 1) == 0)
  {
    return 0;
  }

LABEL_70:
  v87 = v69[13];
  OUTLINED_FUNCTION_3();
  if (v90)
  {
    if (!v88)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v89);
    v93 = v46 && v91 == v92;
    if (!v93 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v88)
  {
    return 0;
  }

  v94 = v69[14];
  OUTLINED_FUNCTION_3();
  if (v97)
  {
    if (!v95)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v96);
    v100 = v46 && v98 == v99;
    if (!v100 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v95)
  {
    return 0;
  }

  OUTLINED_FUNCTION_49_2(v69[15]);
  if (v102)
  {
    if (!v101)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_258();
    if (v103)
    {
      return 0;
    }
  }

  if ((sub_19344FC94(*(v1 + v205[16]), *(v0 + v205[16])) & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_49_2(v205[17]);
  if (v105)
  {
    if (!v104)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_258();
    if (v106)
    {
      return 0;
    }
  }

  v107 = v205[18];
  OUTLINED_FUNCTION_3();
  if (v110)
  {
    if (!v108)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v109);
    v113 = v46 && v111 == v112;
    if (!v113 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v108)
  {
    return 0;
  }

  v114 = v205[19];
  OUTLINED_FUNCTION_3();
  if (v117)
  {
    if (!v115)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v116);
    v120 = v46 && v118 == v119;
    if (!v120 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v115)
  {
    return 0;
  }

  v121 = v205[20];
  OUTLINED_FUNCTION_3();
  if (v124)
  {
    if (!v122)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v123);
    v127 = v46 && v125 == v126;
    if (!v127 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v122)
  {
    return 0;
  }

  v128 = v205[21];
  v129 = *(v211 + 48);
  v130 = v208;
  OUTLINED_FUNCTION_50_18(v1 + v128, v208);
  OUTLINED_FUNCTION_50_18(v0 + v128, v130 + v129);
  OUTLINED_FUNCTION_6_3(v130, 1, v212);
  if (v46)
  {
    OUTLINED_FUNCTION_6_3(v208 + v129, 1, v212);
    if (v46)
    {
      sub_19344E6DC(v208, &qword_1EAE3ACA0, &qword_193972420);
      goto LABEL_134;
    }

    goto LABEL_132;
  }

  v131 = v208;
  sub_193448804(v208, v207, &qword_1EAE3ACA0, &qword_193972420);
  OUTLINED_FUNCTION_6_3(v131 + v129, 1, v212);
  if (v132)
  {
    (*(v210 + 8))(v207, v212);
LABEL_132:
    v62 = &qword_1EAE3F118;
    v63 = &qword_193972428;
    v64 = v208;
    goto LABEL_48;
  }

  v134 = v209;
  v133 = v210;
  v135 = v208;
  v136 = v208 + v129;
  v137 = v212;
  (*(v210 + 32))(v209, v136, v212);
  OUTLINED_FUNCTION_2_57();
  sub_19366E22C(v138, v139);
  v140 = v207;
  v141 = sub_19393C550();
  v142 = *(v133 + 8);
  v142(v134, v137);
  v142(v140, v137);
  sub_19344E6DC(v135, &qword_1EAE3ACA0, &qword_193972420);
  if ((v141 & 1) == 0)
  {
    return 0;
  }

LABEL_134:
  v143 = v205[22];
  OUTLINED_FUNCTION_3();
  if (v146)
  {
    if (!v144)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v145);
    v149 = v46 && v147 == v148;
    if (!v149 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v144)
  {
    return 0;
  }

  v150 = v205[23];
  OUTLINED_FUNCTION_3();
  if (v153)
  {
    if (!v151)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v152);
    v156 = v46 && v154 == v155;
    if (!v156 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v151)
  {
    return 0;
  }

  v157 = v205[24];
  OUTLINED_FUNCTION_3();
  if (v160)
  {
    if (!v158)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v159);
    v163 = v46 && v161 == v162;
    if (!v163 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v158)
  {
    return 0;
  }

  v164 = v205[25];
  OUTLINED_FUNCTION_3();
  if (v167)
  {
    if (!v165)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v166);
    v170 = v46 && v168 == v169;
    if (!v170 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v165)
  {
    return 0;
  }

  v171 = v205[26];
  OUTLINED_FUNCTION_3();
  if (v174)
  {
    if (!v172)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v173);
    v177 = v46 && v175 == v176;
    if (!v177 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v172)
  {
    return 0;
  }

  v178 = v205[27];
  OUTLINED_FUNCTION_3();
  if (v181)
  {
    if (!v179)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v180);
    v184 = v46 && v182 == v183;
    if (!v184 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v179)
  {
    return 0;
  }

  v185 = v205[28];
  OUTLINED_FUNCTION_3();
  if (v188)
  {
    if (!v186)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v187);
    v191 = v46 && v189 == v190;
    if (!v191 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v186)
  {
    return 0;
  }

  v192 = v205[29];
  v193 = v1 + v192;
  v195 = *(v1 + v192);
  v194 = *(v193 + 1);
  v196 = (v0 + v192);
  v198 = *v196;
  v197 = v196[1];
  if (v194 >> 60 != 15)
  {
    if (v197 >> 60 == 15)
    {
      goto LABEL_201;
    }

    v203 = OUTLINED_FUNCTION_16_29();
    v204 = MEMORY[0x193B172A0](v203);
    sub_19345012C(v198, v197);
    sub_19345012C(v195, v194);
    return (v204 & 1) != 0;
  }

  if (v197 >> 60 != 15)
  {
LABEL_201:
    v201 = OUTLINED_FUNCTION_16_29();
    sub_19345012C(v201, v202);
    sub_19345012C(v198, v197);
    return 0;
  }

  v199 = OUTLINED_FUNCTION_16_29();
  sub_19345012C(v199, v200);
  return 1;
}

uint64_t TextUnderstandingEvent.Metadata.hash(into:)()
{
  v3 = v1;
  OUTLINED_FUNCTION_3_4();
  v4 = sub_19393BD10();
  v5 = OUTLINED_FUNCTION_0(v4);
  v66[2] = v6;
  v67 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_1();
  v66[1] = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ACA0, &qword_193972420);
  v12 = OUTLINED_FUNCTION_47(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_15_8();
  v66[0] = v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v66 - v17;
  v19 = sub_19393BE00();
  v20 = OUTLINED_FUNCTION_0(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5_1();
  v27 = v26 - v25;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v29 = OUTLINED_FUNCTION_47(v28);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v33 = v66 - v32;
  if (v1[1])
  {
    v2 = *v1;
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_30_15();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (v1[3])
  {
    v2 = v1[2];
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_30_15();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  sub_1934D11C8(v0, v1[4]);
  if (v1[6])
  {
    v2 = v1[5];
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_30_15();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (v1[8])
  {
    v2 = v1[7];
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_30_15();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  sub_1934D11C8(v0, v1[9]);
  v34 = type metadata accessor for TextUnderstandingEvent.Metadata(0);
  sub_193448804(v1 + v34[10], v33, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_6_3(v33, 1, v19);
  if (v35)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    (*(v22 + 32))(v27, v33, v19);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_17_33();
    sub_19366E22C(v36, v37);
    sub_19393C540();
    (*(v22 + 8))(v27, v19);
  }

  v38 = v67;
  OUTLINED_FUNCTION_31_30(v34[11]);
  if (v33)
  {
    OUTLINED_FUNCTION_7_1(v39);
    OUTLINED_FUNCTION_30_15();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  sub_193448804(v1 + v34[12], v18, &qword_1EAE3ACA0, &qword_193972420);
  OUTLINED_FUNCTION_6_3(v18, 1, v38);
  if (v35)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v40 = OUTLINED_FUNCTION_42_27();
    v41(v40, v18, v38);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_2_57();
    sub_19366E22C(v42, v43);
    OUTLINED_FUNCTION_49_17();
    (*(v2 + 8))(v33, v38);
  }

  OUTLINED_FUNCTION_31_30(v34[13]);
  if (v33)
  {
    OUTLINED_FUNCTION_7_1(v44);
    OUTLINED_FUNCTION_30_15();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_31_30(v34[14]);
  if (v33)
  {
    OUTLINED_FUNCTION_7_1(v45);
    OUTLINED_FUNCTION_30_15();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v46 = (v1 + v34[15]);
  if (*(v46 + 4) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v2 = *v46;
    OUTLINED_FUNCTION_103_0();
    sub_19393CAE0();
  }

  sub_1934D11C8(v0, *(v1 + v34[16]));
  v47 = (v1 + v34[17]);
  if (*(v47 + 4) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v2 = *v47;
    OUTLINED_FUNCTION_103_0();
    sub_19393CAE0();
  }

  OUTLINED_FUNCTION_31_30(v34[18]);
  if (v33)
  {
    OUTLINED_FUNCTION_7_1(v48);
    OUTLINED_FUNCTION_30_15();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_31_30(v34[19]);
  if (v33)
  {
    OUTLINED_FUNCTION_7_1(v49);
    OUTLINED_FUNCTION_30_15();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_31_30(v34[20]);
  if (v33)
  {
    OUTLINED_FUNCTION_7_1(v50);
    OUTLINED_FUNCTION_30_15();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v51 = v66[0];
  sub_193448804(v3 + v34[21], v66[0], &qword_1EAE3ACA0, &qword_193972420);
  OUTLINED_FUNCTION_6_3(v51, 1, v38);
  if (v35)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v52 = OUTLINED_FUNCTION_42_27();
    v53(v52, v51, v38);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_2_57();
    sub_19366E22C(v54, v55);
    OUTLINED_FUNCTION_49_17();
    (*(v2 + 8))(v33, v38);
  }

  OUTLINED_FUNCTION_25_30(v34[22]);
  if (v38)
  {
    OUTLINED_FUNCTION_7_1(v56);
    OUTLINED_FUNCTION_30_15();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_25_30(v34[23]);
  if (v38)
  {
    OUTLINED_FUNCTION_7_1(v57);
    OUTLINED_FUNCTION_30_15();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_25_30(v34[24]);
  if (v38)
  {
    OUTLINED_FUNCTION_7_1(v58);
    OUTLINED_FUNCTION_30_15();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_25_30(v34[25]);
  if (v38)
  {
    OUTLINED_FUNCTION_7_1(v59);
    OUTLINED_FUNCTION_30_15();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_25_30(v34[26]);
  if (v38)
  {
    OUTLINED_FUNCTION_7_1(v60);
    OUTLINED_FUNCTION_30_15();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_25_30(v34[27]);
  if (v38)
  {
    OUTLINED_FUNCTION_7_1(v61);
    OUTLINED_FUNCTION_30_15();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_25_30(v34[28]);
  if (v38)
  {
    OUTLINED_FUNCTION_7_1(v62);
    OUTLINED_FUNCTION_30_15();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v63 = (v3 + v34[29]);
  if (v63[1] >> 60 == 15)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  v65 = *v63;
  OUTLINED_FUNCTION_103_0();
  return sub_19393BD50();
}

uint64_t sub_19366E17C(void (*a1)(_BYTE *))
{
  sub_19393CAB0();
  a1(v3);
  return sub_19393CB00();
}

uint64_t sub_19366E1E4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_19393CAB0();
  a4(v6);
  return sub_19393CB00();
}

uint64_t sub_19366E22C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_19366E330(uint64_t a1)
{
  OUTLINED_FUNCTION_19_41(a1, &qword_1ED5082C0);
  OUTLINED_FUNCTION_4_0();
  if (!(!v3 & v2))
  {
    sub_19349D198();
    if (v5 > 0x3F)
    {
      return v4;
    }

    v4 = type metadata accessor for TextUnderstandingEvent.Metadata(319);
    if (v6 > 0x3F)
    {
      return v4;
    }

    else
    {
      OUTLINED_FUNCTION_0_70(v4, qword_1ED502F68, &type metadata for TextUnderstandingEvent.Location);
      OUTLINED_FUNCTION_4_0();
      if (!(!v3 & v2))
      {
        OUTLINED_FUNCTION_0_70(v7, &qword_1ED508290, MEMORY[0x1E69E6158]);
        OUTLINED_FUNCTION_4_0();
        if (!(!v3 & v2))
        {
          OUTLINED_FUNCTION_18_34(v8, qword_1ED504400);
          OUTLINED_FUNCTION_4_0();
          if (!(!v3 & v2))
          {
            OUTLINED_FUNCTION_0_70(v9, &qword_1ED506698, MEMORY[0x1E69E6370]);
            OUTLINED_FUNCTION_4_0();
            if (!(!v3 & v2))
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return v1;
}

void sub_19366E4BC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_19393C860();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_19366E518(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 248))
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

uint64_t sub_19366E558(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 248) = 1;
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

    *(result + 248) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_19366E60C(uint64_t a1)
{
  OUTLINED_FUNCTION_0_70(a1, &qword_1ED508290, MEMORY[0x1E69E6158]);
  OUTLINED_FUNCTION_4_0();
  if (!(!v3 & v2))
  {
    sub_19366E7B4(319, qword_1ED507ED8, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      OUTLINED_FUNCTION_19_41(v4, &qword_1ED5082C0);
      if (v7 > 0x3F)
      {
        return v6;
      }

      OUTLINED_FUNCTION_18_34(v6, qword_1ED504400);
      if (v9 > 0x3F)
      {
        return v8;
      }

      OUTLINED_FUNCTION_0_70(v8, &qword_1ED508058, MEMORY[0x1E69E72F0]);
      if (v10 > 0x3F)
      {
        return v6;
      }

      else
      {
        OUTLINED_FUNCTION_0_70(v6, &qword_1ED506D30, MEMORY[0x1E6969080]);
        OUTLINED_FUNCTION_4_0();
        if (!(!v3 & v2))
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

void sub_19366E7B4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_39_23(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{

  return sub_193448804(a1, &a45, v45, v46);
}

uint64_t OUTLINED_FUNCTION_49_17()
{

  return sub_19393C540();
}

void *OUTLINED_FUNCTION_51_16(void *a1)
{

  return memcpy(a1, (v1 + v2), 0xF8uLL);
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TextUnderstandingLocation.json()()
{
  v1 = v0;
  v31 = sub_19393C090();
  v2 = OUTLINED_FUNCTION_0(v31);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v9 = v8 - v7;
  v10 = type metadata accessor for TextUnderstandingLocation();
  v11 = OUTLINED_FUNCTION_4_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FBF8, &qword_1939782F0);
  OUTLINED_FUNCTION_4_1(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v30 - v21;
  sub_19366EA58(v1, v16);
  sub_1934470C8(v16, v10, v22);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v23, &qword_1EAE3FBF8, &qword_1939782F0);
  v24 = sub_19393C250();
  v26 = v25;
  (*(v4 + 8))(v9, v31);
  sub_19344E6DC(v22, &qword_1EAE3FBF8, &qword_1939782F0);
  v27 = v24;
  v28 = v26;
  result._object = v28;
  result._countAndFlagsBits = v27;
  return result;
}

uint64_t sub_19366EA58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextUnderstandingLocation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static TextUnderstandingLocation.event(from:)@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_19393C070();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  OUTLINED_FUNCTION_5_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FBF8, &qword_1939782F0);
  OUTLINED_FUNCTION_4_1(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v11, &qword_1EAE3FBF8, &qword_1939782F0);
  result = sub_19393C260();
  if (!v1)
  {
    return sub_19366EBFC(v10, a1);
  }

  return result;
}

uint64_t sub_19366EBFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextUnderstandingLocation();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static TextUnderstandingLocation.event(from:dataVersion:writeTimestamp:bookmark:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v40 = a6;
  v41 = a5;
  v39 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FBF8, &qword_1939782F0);
  OUTLINED_FUNCTION_4_1(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v38 - v13;
  v15 = sub_19393C0C0();
  v16 = OUTLINED_FUNCTION_0(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v16);
  v23 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v38 - v24;
  if (*sub_193671928() == a3)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v44 = 0;
    v42 = 0u;
    v43 = 0u;
    (*(v18 + 16))(v23, v25, v15);
    sub_193450688(a1, a2);
    OUTLINED_FUNCTION_0_8();
    sub_19344A3FC(v26, v27, v28);
    v29 = v45;
    sub_19393C280();
    if (v29)
    {
      return (*(v18 + 8))(v25, v15);
    }

    else
    {
      (*(v18 + 8))(v25, v15);
      v32 = v40;
      sub_19366EBFC(v14, v40);
      v33 = type metadata accessor for TextUnderstandingLocation();
      v34 = *(v33 + 20);
      sub_19344E6DC(v32 + v34, &qword_1EAE3A9E8, &qword_19394F800);
      v35 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1(v35);
      (*(v36 + 16))(v32 + v34, v39, v35);
      __swift_storeEnumTagSinglePayload(v32 + v34, 0, 1, v35);
      v37 = *(v33 + 24);
      sub_19344E6DC(v32 + v37, &qword_1EAE3AA00, &unk_19394F8F0);
      return sub_1934970B0(v41, v32 + v37);
    }
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_13_9();
    *v31 = a3;
    *(v31 + 48) = 0;
    return swift_willThrow();
  }
}

uint64_t TextUnderstandingLocation.serialize()()
{
  v1 = type metadata accessor for TextUnderstandingLocation();
  v2 = OUTLINED_FUNCTION_4_1(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FBF8, &qword_1939782F0);
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - v12;
  sub_19366EA58(v0, v7);
  sub_1934470C8(v7, v1, v13);
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v14, &qword_1EAE3FBF8, &qword_1939782F0);
  v15 = sub_19393C290();
  sub_19344E6DC(v13, &qword_1EAE3FBF8, &qword_1939782F0);
  return v15;
}

id static TextUnderstandingLocation.columns.getter()
{
  v70 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  *(swift_initStackObject() + 16) = xmmword_193950B10;
  v0 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_2_13(v0, v1, v2, v3, v4, v5, v6, v7, v8);
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  v0[2].n128_u64[0] = sub_19393C850();
  v9 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  result = OUTLINED_FUNCTION_3_5(1701667182, 0xE400000000000000);
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_69_3(result);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_2_13(inited, v12, v13, v14, v15, v16, v17, v18, v19);
  v20 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_2_13(v20, v21, v22, v23, v24, v25, v26, v27, v28);
  v20[2].n128_u64[0] = sub_19393C850();
  v29 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  v30 = OUTLINED_FUNCTION_31_2();
  result = OUTLINED_FUNCTION_3_5(v30, 0xE800000000000000);
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_69_3(result);
  v31 = swift_initStackObject();
  OUTLINED_FUNCTION_2_13(v31, v32, v33, v34, v35, v36, v37, v38, v39);
  v40 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_2_13(v40, v41, v42, v43, v44, v45, v46, v47, v48);
  v40[2].n128_u64[0] = sub_19393C850();
  v49 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  v50 = OUTLINED_FUNCTION_30_2();
  result = OUTLINED_FUNCTION_3_5(v50, 0xE90000000000006DLL);
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_69_3(result);
  v51 = swift_initStackObject();
  OUTLINED_FUNCTION_2_13(v51, v52, v53, v54, v55, v56, v57, v58, v59);
  v60 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_2_13(v60, v61, v62, v63, v64, v65, v66, v67, v68);
  v60[2].n128_u64[0] = sub_19393C850();
  v69 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  result = sub_19343D150(0xD000000000000012, 0x8000000193A2B980, 2, 0, v60, 13, 0);
  if (result)
  {
    OUTLINED_FUNCTION_69_3(result);
    return v70;
  }

LABEL_9:
  __break(1u);
  return result;
}

int *sub_19366F308@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_38();
  v7 = v5 == 0xD000000000000013 && v6 == a1;
  if (v7 || (v8 = v5, (OUTLINED_FUNCTION_59_0() & 1) != 0))
  {
    v9 = *(type metadata accessor for TextUnderstandingLocation() + 28);
    memcpy(__dst, (v2 + v9), 0x60uLL);
    memcpy(v34, (v2 + v9), sizeof(v34));
    sub_19365A03C(__dst, __src);
    sub_193494798(&type metadata for TextUnderstandingDocumentIdentifiers, &off_1F07DB1C0, a2);
    memcpy(__src, v34, 0x60uLL);
    return sub_19365A098(__src);
  }

  v11 = v8 == 1701667182 && a1 == 0xE400000000000000;
  if (v11 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v12 = *(type metadata accessor for TextUnderstandingLocation() + 32);
LABEL_13:
    v13 = (v2 + v12);
    v15 = *v13;
    v14 = v13[1];
LABEL_14:
    *&__src[0] = v15;
    *(&__src[0] + 1) = v14;
    return sub_1934948FC();
  }

  v16 = v8 == OUTLINED_FUNCTION_31_2() && a1 == 0xE800000000000000;
  if (v16 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v12 = *(type metadata accessor for TextUnderstandingLocation() + 36);
    goto LABEL_13;
  }

  v18 = v8 == OUTLINED_FUNCTION_30_2() && a1 == v17;
  if (v18 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v12 = *(type metadata accessor for TextUnderstandingLocation() + 40);
    goto LABEL_13;
  }

  v19 = v8 == 0x73736572646461 && a1 == 0xE700000000000000;
  if (v19 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v20 = type metadata accessor for TextUnderstandingLocation();
    memcpy(__src, (v2 + *(v20 + 44)), sizeof(__src));
    result = get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(__src);
    if (result == 1)
    {
LABEL_33:
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }

    memcpy(__dst, __src, sizeof(__dst));
    v21 = &type metadata for TextUnderstandingLocation.Address;
    v22 = &off_1F07DBAC8;
    return sub_193494798(v21, v22, a2);
  }

  v23 = v8 == 0x616E6964726F6F63 && a1 == 0xEB00000000736574;
  if (v23 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    result = type metadata accessor for TextUnderstandingLocation();
    v24 = v2 + result[12];
    if (*(v24 + 16))
    {
      goto LABEL_33;
    }

    __src[0] = *v24;
    v21 = &type metadata for TextUnderstandingLocation.Coordinates;
    v22 = &off_1F07DBAD8;
    return sub_193494798(v21, v22, a2);
  }

  v25 = v8 == 0x617461646174656DLL && a1 == 0xE800000000000000;
  if (v25 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    result = type metadata accessor for TextUnderstandingLocation();
    v26 = (v2 + result[13]);
    v27 = v26[1];
    if (v27 == 1)
    {
      goto LABEL_33;
    }

    *&__src[0] = *v26;
    *(&__src[0] + 1) = v27;
    v21 = &type metadata for TextUnderstandingLocation.Metadata;
    v22 = &off_1F07DBAE8;
    return sub_193494798(v21, v22, a2);
  }

  OUTLINED_FUNCTION_38();
  v29 = v8 == 0xD000000000000012 && v28 == a1;
  if (v29 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    result = type metadata accessor for TextUnderstandingLocation();
    v30 = (v2 + result[14]);
    v14 = v30[1];
    if (v14)
    {
      v15 = *v30;
      goto LABEL_14;
    }

    goto LABEL_33;
  }

  sub_19349AB64();
  OUTLINED_FUNCTION_13_9();
  v32 = v31;
  *v31 = v8;
  v31[1] = a1;
  v31[5] = type metadata accessor for TextUnderstandingLocation();
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v32 + 2);
  sub_19366EA58(v2, boxed_opaque_existential_1Tm);
  *(v32 + 48) = 1;
  swift_willThrow();
}

void sub_19366F6CC(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  memcpy(__dst, v4, sizeof(__dst));
  v8 = a1 == 0x64656E69626D6F63 && a2 == 0xEF73736572646441;
  if (v8 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    v9 = __dst[1];
    if (__dst[1])
    {
      v10 = __dst[0];
LABEL_8:
      v24[0] = v10;
      v24[1] = v9;
      sub_1934948FC();
      return;
    }

    goto LABEL_65;
  }

  v11 = a1 == 0x746565727473 && a2 == 0xE600000000000000;
  if (v11 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    v9 = __dst[3];
    if (__dst[3])
    {
      v10 = __dst[2];
      goto LABEL_8;
    }

    goto LABEL_65;
  }

  v12 = a1 == 2037672291 && a2 == 0xE400000000000000;
  if (v12 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    v9 = __dst[5];
    if (__dst[5])
    {
      v10 = __dst[4];
      goto LABEL_8;
    }

    goto LABEL_65;
  }

  v13 = a1 == 0x6C61636F4C627573 && a2 == 0xEB00000000797469;
  if (v13 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    v9 = __dst[7];
    if (__dst[7])
    {
      v10 = __dst[6];
      goto LABEL_8;
    }

    goto LABEL_65;
  }

  OUTLINED_FUNCTION_38();
  v15 = a1 == 0xD000000000000012 && v14 == a2;
  if (v15 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    v9 = __dst[9];
    if (__dst[9])
    {
      v10 = __dst[8];
      goto LABEL_8;
    }

    goto LABEL_65;
  }

  OUTLINED_FUNCTION_38();
  v17 = a1 == 0xD000000000000015 && v16 == a2;
  if (v17 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    v9 = __dst[11];
    if (__dst[11])
    {
      v10 = __dst[10];
      goto LABEL_8;
    }

    goto LABEL_65;
  }

  v18 = a1 == 0x6F436C6174736F70 && a2 == 0xEA00000000006564;
  if (v18 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    v9 = __dst[13];
    if (__dst[13])
    {
      v10 = __dst[12];
      goto LABEL_8;
    }

    goto LABEL_65;
  }

  v19 = a1 == 0x7972746E756F63 && a2 == 0xE700000000000000;
  if (v19 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    v9 = __dst[15];
    if (__dst[15])
    {
      v10 = __dst[14];
      goto LABEL_8;
    }

    goto LABEL_65;
  }

  v20 = a1 == 0x437972746E756F63 && a2 == 0xEB0000000065646FLL;
  if (v20 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    v9 = __dst[17];
    if (__dst[17])
    {
      v10 = __dst[16];
      goto LABEL_8;
    }

LABEL_65:
    *a3 = 0u;
    a3[1] = 0u;
    return;
  }

  sub_19349AB64();
  OUTLINED_FUNCTION_13_9();
  v22 = v21;
  *v21 = a1;
  v21[1] = a2;
  v21[5] = &type metadata for TextUnderstandingLocation.Address;
  v23 = swift_allocObject();
  v22[2] = v23;
  memcpy((v23 + 16), __dst, 0x90uLL);
  *(v22 + 48) = 1;
  swift_willThrow();

  sub_19366B910(__dst, v24);
}

uint64_t sub_19366FA18(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  if (a1 == 0x656475746974616CLL && a2 == 0xE800000000000000)
  {
    return sub_1934948FC();
  }

  v7 = v2[1];
  if (sub_19393CA30())
  {
    return sub_1934948FC();
  }

  v9 = a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065;
  if (v9 || (sub_19393CA30() & 1) != 0)
  {
    return sub_1934948FC();
  }

  sub_19349AB64();
  OUTLINED_FUNCTION_13_9();
  *v10 = a1;
  *(v10 + 8) = a2;
  *(v10 + 40) = &type metadata for TextUnderstandingLocation.Coordinates;
  *(v10 + 16) = v4;
  *(v10 + 24) = v7;
  *(v10 + 48) = 1;
  swift_willThrow();
}

uint64_t sub_19366FB64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  result = 0x4374726F70726961;
  v9 = *v3;
  v8 = v3[1];
  v10 = a1 == 0x4374726F70726961 && a2 == 0xEB0000000065646FLL;
  if (v10 || (result = sub_19393CA30(), (result & 1) != 0))
  {
    if (v8)
    {
      return sub_1934948FC();
    }

    else
    {
      *a3 = 0u;
      a3[1] = 0u;
    }
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_13_9();
    *v11 = a1;
    *(v11 + 8) = a2;
    *(v11 + 40) = &type metadata for TextUnderstandingLocation.Metadata;
    *(v11 + 16) = v9;
    *(v11 + 24) = v8;
    *(v11 + 48) = 1;
    swift_willThrow();
  }

  return result;
}

double TextUnderstandingLocation.init()@<D0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for TextUnderstandingLocation();
  v3 = v2[5];
  sub_19349C79C();
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  v5 = v2[11];
  sub_193671DF4(a1 + v5);
  v6 = a1 + v2[12];
  sub_193671FA8(v6);
  v7 = a1 + v2[13];
  sub_19360ADE8(v7);
  v8 = (a1 + v2[14]);
  j__OUTLINED_FUNCTION_10_1();
  *a1 = *sub_193671928();
  sub_193442B60(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v9 = sub_19393BE00();
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v9);
  sub_193442B60(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  TextUnderstandingDocumentIdentifiers.init()(__src);
  memcpy(a1 + v2[7], __src, 0x60uLL);
  v10 = (a1 + v2[8]);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v11 = (a1 + v2[9]);
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  v12 = (a1 + v2[10]);
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  sub_19366ADA0(v15);
  memcpy(__dst, a1 + v5, 0x90uLL);
  sub_193442B60(__dst, &qword_1EAE3FBB0, &qword_193977F08);
  memcpy(a1 + v5, v15, 0x90uLL);
  *v6 = 0;
  *(v6 + 8) = 0;
  *(v6 + 16) = 1;
  sub_193456418(*v7, *(v7 + 1));

  result = 0.0;
  *v7 = xmmword_1939526A0;
  *v8 = 0;
  v8[1] = 0;
  return result;
}

uint64_t static TextUnderstandingLocation.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextUnderstandingLocation();
  v5 = v4[7];
  memcpy(__dst, (a1 + v5), sizeof(__dst));
  memcpy(v57, (a1 + v5), 0x60uLL);
  v6 = v4[7];
  memcpy(v62, (a2 + v6), sizeof(v62));
  memcpy(__src, (a2 + v6), 0x60uLL);
  sub_19365A03C(__dst, v60);
  sub_19365A03C(v62, v60);
  sub_19365AB48();
  LOBYTE(v6) = OUTLINED_FUNCTION_4_53();
  memcpy(v63, __src, sizeof(v63));
  sub_19365A098(v63);
  memcpy(v64, v57, sizeof(v64));
  sub_19365A098(v64);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_0_71(v4[8]);
  v9 = v9 && v7 == v8;
  if (!v9 && (sub_19393CA30() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_0_71(v4[9]);
  v12 = v9 && v10 == v11;
  if (!v12 && (sub_19393CA30() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_0_71(v4[10]);
  v15 = v9 && v13 == v14;
  if (!v15 && (sub_19393CA30() & 1) == 0)
  {
    return 0;
  }

  v16 = v4[11];
  OUTLINED_FUNCTION_2_58(v58);
  v17 = v4[11];
  OUTLINED_FUNCTION_5_52(v59);
  OUTLINED_FUNCTION_2_58(v57);
  OUTLINED_FUNCTION_5_52(&v57[9]);
  OUTLINED_FUNCTION_2_58(v60);
  if (get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(v60) == 1)
  {
    OUTLINED_FUNCTION_5_52(__src);
    if (get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(__src) == 1)
    {
      OUTLINED_FUNCTION_2_58(v56);
      sub_19367031C(v58, v54);
      sub_19367031C(v59, v54);
      sub_193442B60(v56, &qword_1EAE3FBB0, &qword_193977F08);
      goto LABEL_27;
    }

    sub_19367031C(v58, v56);
    sub_19367031C(v59, v56);
LABEL_23:
    memcpy(__src, v57, sizeof(__src));
    sub_193442B60(__src, &qword_1EAE3FBB8, &qword_193977F10);
    return 0;
  }

  OUTLINED_FUNCTION_2_58(v56);
  OUTLINED_FUNCTION_2_58(v54);
  OUTLINED_FUNCTION_5_52(__src);
  if (get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(__src) == 1)
  {
    memcpy(v53, v54, sizeof(v53));
    sub_19367031C(v58, v52);
    sub_19367031C(v59, v52);
    sub_19367031C(v56, v52);
    sub_19366B68C(v53);
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_5_52(v53);
  sub_19367031C(v58, v52);
  sub_19367031C(v59, v52);
  sub_19367031C(v56, v52);
  sub_19366B6E0();
  v19 = sub_19393C550();
  memcpy(v51, v53, sizeof(v51));
  sub_19366B68C(v51);
  memcpy(v52, v54, sizeof(v52));
  sub_19366B68C(v52);
  OUTLINED_FUNCTION_2_58(v53);
  sub_193442B60(v53, &qword_1EAE3FBB0, &qword_193977F08);
  if ((v19 & 1) == 0)
  {
    return 0;
  }

LABEL_27:
  v20 = v4[12];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 16);
  v23 = (a2 + v20);
  v24 = *(a2 + v20 + 16);
  if (v22)
  {
    if ((v24 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v25 = *v23;
    v57[0] = *v21;
    LOBYTE(v57[1]) = 0;
    if (v24)
    {
      return 0;
    }

    __src[0] = v25;
    sub_19366B638();
    if ((OUTLINED_FUNCTION_4_53() & 1) == 0)
    {
      return 0;
    }
  }

  v26 = v4[13];
  v27 = *(a1 + v26);
  v28 = *(a1 + v26 + 8);
  v29 = (a2 + v26);
  v30 = *v29;
  v31 = v29[1];
  if (v28 != 1)
  {
    *&v57[0] = v27;
    *(&v57[0] + 1) = v28;
    if (v31 != 1)
    {
      *&__src[0] = v30;
      *(&__src[0] + 1) = v31;
      v38 = OUTLINED_FUNCTION_32_4();
      sub_19350CB08(v38, v39);
      sub_19350CB08(v30, v31);
      v40 = OUTLINED_FUNCTION_32_4();
      sub_19350CB08(v40, v41);
      sub_19366B5E4();
      v42 = OUTLINED_FUNCTION_4_53();

      v43 = OUTLINED_FUNCTION_32_4();
      sub_193456418(v43, v44);
      if ((v42 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_40;
    }

    v32 = OUTLINED_FUNCTION_32_4();
    sub_19350CB08(v32, v33);
    sub_19350CB08(v30, 1);
    v34 = OUTLINED_FUNCTION_32_4();
    sub_19350CB08(v34, v35);

LABEL_38:
    v36 = OUTLINED_FUNCTION_32_4();
    sub_193456418(v36, v37);
    sub_193456418(v30, v31);
    return 0;
  }

  sub_19350CB08(v27, 1);
  if (v31 != 1)
  {
    sub_19350CB08(v30, v31);
    goto LABEL_38;
  }

  sub_19350CB08(v30, 1);
  sub_193456418(v27, 1);
LABEL_40:
  v45 = v4[14];
  v46 = (a1 + v45);
  v47 = *(a1 + v45 + 8);
  v48 = (a2 + v45);
  v49 = v48[1];
  if (v47)
  {
    if (v49)
    {
      v50 = *v46 == *v48 && v47 == v49;
      if (v50 || (sub_19393CA30() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v49)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_19367031C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FBB0, &qword_193977F08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t TextUnderstandingLocation.hash(into:)()
{
  v1 = type metadata accessor for TextUnderstandingLocation();
  memcpy(__dst, (v0 + v1[7]), 0x60uLL);
  sub_19365B174();
  sub_19393C540();
  OUTLINED_FUNCTION_3_52(v1[8]);
  OUTLINED_FUNCTION_3_52(v1[9]);
  OUTLINED_FUNCTION_3_52(v1[10]);
  v2 = v1[11];
  OUTLINED_FUNCTION_2_58(__dst);
  if (get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(__dst) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_2_58(v9);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_2_58(v10);
    sub_19366B910(v10, v11);
    sub_19366B96C();
    sub_19393C540();
    memcpy(v11, v9, sizeof(v11));
    sub_19366B68C(v11);
  }

  v3 = v0 + v1[12];
  if (*(v3 + 16) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v11[0] = *v3;
    OUTLINED_FUNCTION_103_0();
    sub_19366B9C0();
    sub_19393C540();
  }

  v4 = (v0 + v1[13]);
  v5 = v4[1];
  if (v5 == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    *&v11[0] = *v4;
    *(&v11[0] + 1) = v5;
    OUTLINED_FUNCTION_103_0();
    sub_19366BA14();

    sub_19393C540();
  }

  v6 = (v0 + v1[14]);
  if (!v6[1])
  {
    return OUTLINED_FUNCTION_104_0();
  }

  v7 = *v6;
  OUTLINED_FUNCTION_103_0();
  return sub_19393C640();
}

uint64_t sub_193670568()
{
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEABA80);
  OUTLINED_FUNCTION_25_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1939526B0;
  v6 = v33 + v5;
  v7 = v33 + v5 + dword_1EAEABAB8;
  *(v33 + v5) = 1;
  *v7 = "documentIdentifiers";
  *(v7 + 8) = 19;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69AADC8];
  v9 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v9);
  v11 = *(v10 + 104);
  OUTLINED_FUNCTION_2_0();
  v11();
  v12 = OUTLINED_FUNCTION_3_1(v6 + v3);
  *v13 = 2;
  *v12 = "name";
  v12[1] = 4;
  v14 = OUTLINED_FUNCTION_41(v12);
  (v11)(v14);
  v15 = OUTLINED_FUNCTION_3_1(v6 + 2 * v3);
  *v16 = 3;
  *v15 = "category";
  v15[1] = 8;
  v17 = OUTLINED_FUNCTION_41(v15);
  (v11)(v17);
  v18 = OUTLINED_FUNCTION_3_1(v6 + 3 * v3);
  *v19 = 4;
  *v18 = "algorithm";
  v18[1] = 9;
  v20 = OUTLINED_FUNCTION_41(v18);
  (v11)(v20);
  v21 = OUTLINED_FUNCTION_3_1(v6 + 4 * v3);
  *v22 = 5;
  *v21 = "address";
  v21[1] = 7;
  v23 = OUTLINED_FUNCTION_41(v21);
  (v11)(v23);
  v24 = OUTLINED_FUNCTION_3_1(v6 + 5 * v3);
  *v25 = 6;
  *v24 = "coordinates";
  v24[1] = 11;
  v26 = OUTLINED_FUNCTION_41(v24);
  (v11)(v26);
  v27 = OUTLINED_FUNCTION_3_1(v6 + 6 * v3);
  *v28 = 7;
  *v27 = "metadata";
  v27[1] = 8;
  v29 = OUTLINED_FUNCTION_41(v27);
  (v11)(v29);
  v30 = OUTLINED_FUNCTION_3_1(v6 + 7 * v3);
  *v31 = 8;
  *v30 = "timeZoneIdentifier";
  *(v30 + 8) = 18;
  *(v30 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v11();
  return sub_19393C410();
}

void sub_193670830()
{
  v3 = v1;
  while (1)
  {
    v4 = sub_19393C0E0();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    switch(v4)
    {
      case 1:
        __src = 0u;
        memset(v21, 0, sizeof(v21));
        sub_193498018();
        if (*(&__src + 1))
        {
          memcpy(&v18[1], v21, 0x50uLL);
          v18[0] = __src;
        }

        else
        {
          TextUnderstandingDocumentIdentifiers.init()(v18);
        }

        v2 = *(type metadata accessor for TextUnderstandingLocation() + 28);
        memcpy(__dst, (v0 + v2), sizeof(__dst));
        sub_19365A098(__dst);
        memcpy((v0 + v2), v18, 0x60uLL);
        continue;
      case 2:
        OUTLINED_FUNCTION_11_6();
        v3 = 0;
        OUTLINED_FUNCTION_15_39();
        if (v8)
        {
          v9 = 0xE000000000000000;
        }

        else
        {
          v9 = v13;
        }

        v10 = *(type metadata accessor for TextUnderstandingLocation() + 32);
        goto LABEL_21;
      case 3:
        OUTLINED_FUNCTION_11_6();
        v3 = 0;
        OUTLINED_FUNCTION_15_39();
        if (v8)
        {
          v9 = 0xE000000000000000;
        }

        else
        {
          v9 = v7;
        }

        v10 = *(type metadata accessor for TextUnderstandingLocation() + 36);
        goto LABEL_21;
      case 4:
        OUTLINED_FUNCTION_11_6();
        v3 = 0;
        OUTLINED_FUNCTION_15_39();
        if (v8)
        {
          v9 = 0xE000000000000000;
        }

        else
        {
          v9 = v11;
        }

        v10 = *(type metadata accessor for TextUnderstandingLocation() + 40);
LABEL_21:
        v14 = (v0 + v10);
        v15 = *(v0 + v10 + 8);

        *v14 = v2;
        v14[1] = v9;
        continue;
      case 5:
        v6 = v0 + *(type metadata accessor for TextUnderstandingLocation() + 44);
        goto LABEL_24;
      case 6:
        v16 = v0 + *(type metadata accessor for TextUnderstandingLocation() + 48);
        goto LABEL_24;
      case 7:
        v17 = v0 + *(type metadata accessor for TextUnderstandingLocation() + 52);
LABEL_24:
        sub_193498018();
        goto LABEL_25;
      case 8:
        v12 = *(type metadata accessor for TextUnderstandingLocation() + 56);
        sub_19393C200();
LABEL_25:
        v3 = 0;
        break;
      default:
        continue;
    }
  }
}