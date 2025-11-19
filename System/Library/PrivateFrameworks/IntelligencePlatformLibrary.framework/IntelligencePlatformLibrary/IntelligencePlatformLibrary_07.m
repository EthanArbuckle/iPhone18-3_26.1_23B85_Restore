void sub_1934C1B2C()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEA8E58);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v23 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_20(v23, xmmword_193952700);
  OUTLINED_FUNCTION_63("PropertyUnknown");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_50_1();
  v8(v9);
  v10 = OUTLINED_FUNCTION_4_9();
  v11 = OUTLINED_FUNCTION_16_6(v10, "Body");
  v8(v11);
  v12 = OUTLINED_FUNCTION_35_4();
  v13 = OUTLINED_FUNCTION_0_0(v12, "Elements");
  v8(v13);
  v14 = OUTLINED_FUNCTION_9_4((v0 + 3 * v4));
  v15 = OUTLINED_FUNCTION_0_0(v14, "Recipients");
  v8(v15);
  v16 = OUTLINED_FUNCTION_60_1((v0 + 4 * v4));
  v17 = OUTLINED_FUNCTION_16_6(v16, "Sender");
  v8(v17);
  v18 = OUTLINED_FUNCTION_45_2(5 * v4);
  *v19 = 5;
  v20 = OUTLINED_FUNCTION_0_0(v18, "Subject");
  v8(v20);
  v21 = OUTLINED_FUNCTION_60_1((v0 + 6 * v4));
  *v21 = "Title";
  *(v21 + 1) = 5;
  v22 = OUTLINED_FUNCTION_1_3(v21);
  v8(v22);
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1934C1E68()
{
  if (v0[1])
  {
    v1 = *v0;
    return sub_19393C3C0();
  }

  return result;
}

void sub_1934C1F0C()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEA8EE8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v6 = OUTLINED_FUNCTION_122_0();
  OUTLINED_FUNCTION_11_3(v6, xmmword_19394FBC0);
  *v0 = "unknownError";
  *(v0 + 8) = 12;
  *(v0 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v8);
  v10 = *(v9 + 104);
  v11 = OUTLINED_FUNCTION_50_1();
  v10(v11);
  v12 = OUTLINED_FUNCTION_3_1(v1 + v5);
  *v13 = 1000;
  v14 = OUTLINED_FUNCTION_0_0(v12, "useCaseDisabled");
  v10(v14);
  v15 = OUTLINED_FUNCTION_3_1(v1 + 2 * v5);
  *v16 = 2003;
  v17 = OUTLINED_FUNCTION_0_0(v15, "invalidModelBundleIdentifier");
  v10(v17);
  v18 = OUTLINED_FUNCTION_22_3();
  *v19 = 3000;
  v20 = OUTLINED_FUNCTION_0_0(v18, "invalidEmbeddingDimension");
  v10(v20);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1934C22D0()
{
  switch(*v0 >> 62)
  {
    case 2:
      v1 = *((*v0 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      break;
    case 3:
      OUTLINED_FUNCTION_158_0();
      break;
    default:
      break;
  }

  sub_193447600();
}

uint64_t sub_1934C2458(uint64_t a1, uint64_t *a2)
{
  v3 = sub_19393C420();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_19393C410();
}

uint64_t sub_1934C24F4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_19393C420();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8) - 8);
  v9 = *(*v8 + 72);
  v10 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_19394FAC0;
  v12 = v11 + v10 + v8[14];
  *(v11 + v10) = 1;
  *v12 = a3;
  *(v12 + 8) = a4;
  *(v12 + 16) = 2;
  v13 = *MEMORY[0x1E69AADC8];
  v14 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v14);
  (*(v15 + 104))(v12, v13);
  return sub_19393C410();
}

uint64_t sub_1934C2658()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    result = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C200();
    }
  }

  return result;
}

void sub_1934C26D8()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEA8F48);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("expectedDimension");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "actualDimension");
  v8(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1934C2808(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  while (1)
  {
    result = sub_19393C0E0();
    if (v5 || (v10 & 1) != 0)
    {
      return result;
    }

    if (result == 2)
    {
      v11 = v4 + 16;
LABEL_7:
      a4(v11, a2, a3);
    }

    else if (result == 1)
    {
      v11 = v4;
      goto LABEL_7;
    }
  }
}

void sub_1934C288C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_103();
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  if ((*(v4 + 8) & 1) == 0)
  {
    OUTLINED_FUNCTION_292();
    OUTLINED_FUNCTION_130();
    a4();
  }

  if (!v5 && (v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_130();
    a4();
  }
}

uint64_t sub_1934C2924(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  swift_beginAccess();
  v6 = *a3;
  v7 = *a4;

  return v6;
}

uint64_t OUTLINED_FUNCTION_150_1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69AACF8];

  return sub_1934C2808(a1, a2, a3, v4);
}

void OUTLINED_FUNCTION_152_1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69AAD98];

  sub_1934C288C(a1, a2, a3, v4);
}

void OUTLINED_FUNCTION_158_0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
}

double OUTLINED_FUNCTION_166_0()
{
  LOBYTE(STACK[0x860]) = 1;
  result = 0.0;
  *&STACK[0xB00] = 0u;
  *&STACK[0xB10] = 0u;
  *&STACK[0xB20] = 0u;
  *&STACK[0xB30] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_172_1()
{
  v2 = *v0;
}

uint64_t OUTLINED_FUNCTION_178()
{

  return sub_19393C3B0();
}

uint64_t OUTLINED_FUNCTION_278@<X0>(uint64_t result@<X0>, char a2@<W8>)
{
  *(result + 24) = a2;
  *(result + 32) = v2;
  *(result + 40) = v3 & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_288@<X0>(uint64_t a1@<X8>)
{
  result = v1 + a1;
  v4 = *(v2 - 72);
  return result;
}

uint64_t OUTLINED_FUNCTION_297_0()
{

  return sub_19393C550();
}

void *OUTLINED_FUNCTION_298(void *a1)
{

  return memcpy(a1, (v1 + v2), 0x68uLL);
}

uint64_t GenerativeFunctionsInstrumentationEvent.writeTimestamp.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for GenerativeFunctionsInstrumentationEvent(v0);
  OUTLINED_FUNCTION_101(*(v1 + 20));
  return sub_1934486A4();
}

uint64_t GenerativeFunctionsInstrumentationEvent.writeTimestamp.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for GenerativeFunctionsInstrumentationEvent(v0) + 20);
  OUTLINED_FUNCTION_100_0();
  return sub_193445388();
}

uint64_t GenerativeFunctionsInstrumentationEvent.writeTimestamp.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for GenerativeFunctionsInstrumentationEvent(v0) + 20);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t GenerativeFunctionsInstrumentationEvent.bookmark.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for GenerativeFunctionsInstrumentationEvent(v0);
  OUTLINED_FUNCTION_101(*(v1 + 24));
  return sub_1934486A4();
}

uint64_t GenerativeFunctionsInstrumentationEvent.bookmark.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for GenerativeFunctionsInstrumentationEvent(v0) + 24);
  OUTLINED_FUNCTION_100_0();
  return sub_193445388();
}

uint64_t GenerativeFunctionsInstrumentationEvent.bookmark.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for GenerativeFunctionsInstrumentationEvent(v0) + 24);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t GenerativeFunctionsInstrumentationEvent.identifiers.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for GenerativeFunctionsInstrumentationEvent(v0) + 28);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t GenerativeFunctionsInstrumentationEvent.eventType.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for GenerativeFunctionsInstrumentationEvent(v0) + 32);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t GenerativeFunctionsInstrumentationEvent.subtype.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for GenerativeFunctionsInstrumentationEvent(v0) + 36);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t GenerativeFunctionsInstrumentationEvent.timestamp.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = *(type metadata accessor for GenerativeFunctionsInstrumentationEvent(v0) + 40);
  OUTLINED_FUNCTION_26_6();
  OUTLINED_FUNCTION_101(v2);
  return sub_19344D364();
}

uint64_t GenerativeFunctionsInstrumentationEvent.timestamp.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for GenerativeFunctionsInstrumentationEvent(v0) + 40);
  OUTLINED_FUNCTION_26_6();
  OUTLINED_FUNCTION_100_0();
  return sub_1934461D4();
}

uint64_t GenerativeFunctionsInstrumentationEvent.timestamp.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for GenerativeFunctionsInstrumentationEvent(v0) + 40);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t GenerativeFunctionsInstrumentationEvent.threadQualityOfService.setter()
{
  v2 = OUTLINED_FUNCTION_3_4();
  result = type metadata accessor for GenerativeFunctionsInstrumentationEvent(v2);
  *(v1 + *(result + 44)) = v0;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationEvent.threadQualityOfService.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for GenerativeFunctionsInstrumentationEvent(v0) + 44);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t GenerativeFunctionsInstrumentationEvent.unixEpochTime.setter(double a1)
{
  result = type metadata accessor for GenerativeFunctionsInstrumentationEvent(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationEvent.unixEpochTime.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for GenerativeFunctionsInstrumentationEvent(v0) + 48);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t GenerativeFunctionsInstrumentationEvent.metadata.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for GenerativeFunctionsInstrumentationEvent(v0) + 52);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t GenerativeFunctionsInstrumentationEvent.error.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(type metadata accessor for GenerativeFunctionsInstrumentationEvent(0) + 56);
  result = sub_193444060(*(v1 + v3));
  *(v1 + v3) = v2;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationEvent.error.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for GenerativeFunctionsInstrumentationEvent(v0) + 56);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t GenerativeFunctionsInstrumentationEvent.trialExperimentInfos.getter()
{
  v1 = *(v0 + *(type metadata accessor for GenerativeFunctionsInstrumentationEvent(0) + 60));
}

uint64_t GenerativeFunctionsInstrumentationEvent.trialExperimentInfos.setter()
{
  v2 = OUTLINED_FUNCTION_3_4();
  v3 = *(type metadata accessor for GenerativeFunctionsInstrumentationEvent(v2) + 60);
  v4 = *(v1 + v3);

  *(v1 + v3) = v0;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationEvent.trialExperimentInfos.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for GenerativeFunctionsInstrumentationEvent(v0) + 60);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t GenerativeFunctionsInstrumentationEvent._identifierSet.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = *(type metadata accessor for GenerativeFunctionsInstrumentationEvent(v2) + 64);
  memcpy(__dst, (v1 + v3), sizeof(__dst));
  memcpy(v0, (v1 + v3), 0x68uLL);
  return sub_19344FABC(__dst, &v5);
}

void *GenerativeFunctionsInstrumentationEvent._identifierSet.setter()
{
  v2 = OUTLINED_FUNCTION_3_4();
  v3 = *(type metadata accessor for GenerativeFunctionsInstrumentationEvent(v2) + 64);
  memcpy(__dst, (v1 + v3), sizeof(__dst));
  sub_1934500D8(__dst);
  return memcpy((v1 + v3), v0, 0x68uLL);
}

uint64_t GenerativeFunctionsInstrumentationEvent._identifierSet.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for GenerativeFunctionsInstrumentationEvent(v0) + 64);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_1934C3404@<X0>(uint64_t *a1@<X8>)
{
  result = static GenerativeFunctionsInstrumentationEvent.Subtype.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1934C345C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_180();
  v4 = a3();
  MEMORY[0x193B18030](v4);
  return sub_19393CB00();
}

uint64_t sub_1934C34F4()
{
  OUTLINED_FUNCTION_179_0();
  v2 = v1(v0);
  return MEMORY[0x193B18030](v2);
}

uint64_t sub_1934C3568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_180();
  v5 = a4();
  MEMORY[0x193B18030](v5);
  return sub_19393CB00();
}

uint64_t static GenerativeFunctionsInstrumentationEvent.CatalogResourceIdentifierAndVersion.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_19393CA30(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {
      OUTLINED_FUNCTION_13_0();

      return sub_19393CA30();
    }
  }

  return result;
}

uint64_t GenerativeFunctionsInstrumentationEvent.CatalogResourceIdentifierAndVersion.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_19393C640();
  OUTLINED_FUNCTION_187();

  return sub_19393C640();
}

uint64_t GenerativeFunctionsInstrumentationEvent.CatalogResourceIdentifierAndVersion.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_116_3();
  sub_19393C640();
  return sub_19393CB00();
}

uint64_t sub_1934C37E8()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_19393CAB0();
  OUTLINED_FUNCTION_116_3();
  sub_19393C640();
  return sub_19393CB00();
}

uint64_t GenerativeFunctionsInstrumentationEvent.Identifiers.clientSessionIdentifier.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationEvent.Identifiers.clientRequestIdentifier.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationEvent.Identifiers.clientApplicationIdentifier.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t GenerativeFunctionsInstrumentationEvent.Identifiers.clientApplicationIdentifier.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationEvent.Identifiers.clientBundleIdentifier.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t GenerativeFunctionsInstrumentationEvent.Identifiers.clientBundleIdentifier.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationEvent.Identifiers.intelligenceFlowGroupIdentifier.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t GenerativeFunctionsInstrumentationEvent.Identifiers.intelligenceFlowGroupIdentifier.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 72);

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationEvent.Identifiers.intelligenceFlowSessionIdentifier.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(v0);
  OUTLINED_FUNCTION_101(*(v1 + 36));
  return sub_1934486A4();
}

uint64_t GenerativeFunctionsInstrumentationEvent.Identifiers.intelligenceFlowSessionIdentifier.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(v0) + 36);
  OUTLINED_FUNCTION_100_0();
  return sub_193445388();
}

uint64_t GenerativeFunctionsInstrumentationEvent.Identifiers.intelligenceFlowSessionIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(v0) + 36);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t GenerativeFunctionsInstrumentationEvent.Identifiers.intelligenceFlowSpanIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(0) + 40));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t GenerativeFunctionsInstrumentationEvent.Identifiers.intelligenceFlowSpanIdentifier.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(0);
  v6 = v2 + *(result + 40);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationEvent.Identifiers.intelligenceFlowSpanIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(v0) + 40);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t GenerativeFunctionsInstrumentationEvent.Identifiers.useCaseIdentifier.getter()
{
  v0 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(0);
  OUTLINED_FUNCTION_4_4(*(v0 + 44));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t GenerativeFunctionsInstrumentationEvent.Identifiers.useCaseIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(v0) + 44);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t GenerativeFunctionsInstrumentationEvent.Identifiers.generativeFunctionIdentifier.getter()
{
  v0 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(0);
  OUTLINED_FUNCTION_4_4(*(v0 + 48));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t GenerativeFunctionsInstrumentationEvent.Identifiers.generativeFunctionIdentifier.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(0);
  result = OUTLINED_FUNCTION_201(*(v3 + 48));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationEvent.Identifiers.generativeFunctionIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(v0) + 48);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t GenerativeFunctionsInstrumentationEvent.Identifiers.generativeFunctionInvocationIdentifier.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(v0);
  OUTLINED_FUNCTION_101(*(v1 + 52));
  return sub_1934486A4();
}

uint64_t GenerativeFunctionsInstrumentationEvent.Identifiers.generativeFunctionInvocationIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(v0) + 52);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t GenerativeFunctionsInstrumentationEvent.Identifiers.catalogResourceIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(v0) + 56);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t GenerativeFunctionsInstrumentationEvent.Identifiers.modelManagerRequestIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(v0) + 60);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t GenerativeFunctionsInstrumentationEvent.Identifiers.modelManagerSessionIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(v0) + 64);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t GenerativeFunctionsInstrumentationEvent.Identifiers.modelManagerAssetTransitionIdentifier.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(v0);
  OUTLINED_FUNCTION_101(*(v1 + 68));
  return sub_1934486A4();
}

uint64_t GenerativeFunctionsInstrumentationEvent.Identifiers.modelManagerAssetTransitionIdentifier.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(v0) + 68);
  OUTLINED_FUNCTION_100_0();
  return sub_193445388();
}

uint64_t GenerativeFunctionsInstrumentationEvent.Identifiers.modelManagerAssetTransitionIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(v0) + 68);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t GenerativeFunctionsInstrumentationEvent.Identifiers.inferenceProviderIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(v0) + 72);
  return OUTLINED_FUNCTION_1_4();
}

void GenerativeFunctionsInstrumentationEvent.Identifiers.hash(into:)()
{
  OUTLINED_FUNCTION_117();
  v2 = v0;
  OUTLINED_FUNCTION_3_4();
  v3 = sub_19393BE60();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v10 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  OUTLINED_FUNCTION_6();
  v84 = v13 - v14;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v15);
  v83 = &v81 - v16;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v17);
  v82 = &v81 - v18;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_173_1();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v81 - v21;
  if (v0[1])
  {
    v23 = *v0;
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_102_4();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (v0[3])
  {
    v24 = v0[2];
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_102_4();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (v0[5])
  {
    v25 = v0[4];
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_102_4();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (v0[7])
  {
    v26 = v0[6];
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_102_4();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (v0[9])
  {
    v27 = v0[8];
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_102_4();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v28 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(0);
  v29 = v28[9];
  sub_1934486A4();
  OUTLINED_FUNCTION_5_3(v22);
  if (v30)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v31 = OUTLINED_FUNCTION_72_4();
    v32(v31, v22, v3);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_17();
    sub_1934C4560(v33, v34);
    OUTLINED_FUNCTION_73();
    v35 = OUTLINED_FUNCTION_52_8();
    v36(v35);
  }

  v37 = v0 + v28[10];
  if (v37[8] == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v38 = *v37;
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v38);
  }

  v39 = (v0 + v28[11]);
  if (v39[1])
  {
    v40 = *v39;
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_102_4();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v41 = (v0 + v28[12]);
  if (v41[1])
  {
    v42 = *v41;
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_102_4();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v43 = v28[13];
  sub_1934486A4();
  OUTLINED_FUNCTION_5_3(v1);
  if (v30)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v44 = OUTLINED_FUNCTION_72_4();
    v45(v44, v1, v3);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_17();
    sub_1934C4560(v46, v47);
    OUTLINED_FUNCTION_73();
    v48 = OUTLINED_FUNCTION_52_8();
    v49(v48);
  }

  v50 = (v0 + v28[14]);
  if (v50[1])
  {
    v51 = v50[2];
    v81 = v50[3];
    v52 = v28;
    v53 = v3;
    v54 = v10;
    v55 = v6;
    v56 = *v50;
    OUTLINED_FUNCTION_103_0();
    v6 = v55;
    v10 = v54;
    v3 = v53;
    v28 = v52;
    v2 = v0;
    sub_19393C640();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v57 = v28[15];
  v58 = v82;
  sub_1934486A4();
  OUTLINED_FUNCTION_5_3(v58);
  if (v30)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v59 = OUTLINED_FUNCTION_72_4();
    v60(v59, v58, v3);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_17();
    sub_1934C4560(v61, v62);
    OUTLINED_FUNCTION_73();
    v63 = OUTLINED_FUNCTION_52_8();
    v64(v63);
  }

  v65 = v28[16];
  v66 = v83;
  sub_1934486A4();
  OUTLINED_FUNCTION_5_3(v66);
  if (v30)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v67 = OUTLINED_FUNCTION_72_4();
    v68(v67, v66, v3);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_17();
    sub_1934C4560(v69, v70);
    OUTLINED_FUNCTION_73();
    v71 = OUTLINED_FUNCTION_52_8();
    v72(v71);
  }

  v73 = v28[17];
  v74 = v84;
  sub_1934486A4();
  OUTLINED_FUNCTION_5_3(v74);
  if (v30)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v75 = OUTLINED_FUNCTION_72_4();
    v76(v75, v74, v3);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_17();
    sub_1934C4560(v77, v78);
    OUTLINED_FUNCTION_73();
    (*(v6 + 8))(v10, v3);
  }

  v79 = (v2 + v28[18]);
  if (v79[1])
  {
    v80 = *v79;
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_188_0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_116();
}

uint64_t sub_1934C4560(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t GenerativeFunctionsInstrumentationEvent.TrialExperimentInfo.namespaceName.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationEvent.TrialExperimentInfo.experimentId.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t GenerativeFunctionsInstrumentationEvent.TrialExperimentInfo.experimentId.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 32);

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationEvent.TrialExperimentInfo.treatmentId.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t GenerativeFunctionsInstrumentationEvent.TrialExperimentInfo.treatmentId.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 48);

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

double GenerativeFunctionsInstrumentationEvent.TrialExperimentInfo.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 20) = 1;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  return result;
}

void static GenerativeFunctionsInstrumentationEvent.TrialExperimentInfo.== infix(_:_:)()
{
  OUTLINED_FUNCTION_115();
  v2 = *(v0 + 16);
  v3 = *(v0 + 20);
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  v8 = *(v1 + 8);
  v9 = *(v1 + 16);
  v10 = *(v1 + 20);
  v11 = *(v1 + 24);
  v12 = *(v1 + 32);
  v14 = *(v1 + 40);
  v13 = *(v1 + 48);
  if (*(v0 + 8))
  {
    if (!v8)
    {
      goto LABEL_33;
    }

    OUTLINED_FUNCTION_155(v0, v1);
    v17 = v17 && v15 == v16;
    if (!v17)
    {
      v27 = v13;
      v28 = v14;
      v18 = v7;
      v19 = v6;
      v20 = v11;
      v21 = sub_19393CA30();
      v11 = v20;
      v6 = v19;
      v7 = v18;
      v13 = v27;
      v14 = v28;
      if ((v21 & 1) == 0)
      {
        goto LABEL_33;
      }
    }
  }

  else if (v8)
  {
    goto LABEL_33;
  }

  if (v3)
  {
    if (!v10)
    {
      goto LABEL_33;
    }
  }

  else
  {
    if (v2 == v9)
    {
      v22 = v10;
    }

    else
    {
      v22 = 1;
    }

    if (v22)
    {
      goto LABEL_33;
    }
  }

  if (v4)
  {
    if (!v12)
    {
      goto LABEL_33;
    }

    if (v5 != v11 || v4 != v12)
    {
      v24 = v6;
      v25 = sub_19393CA30();
      v6 = v24;
      if ((v25 & 1) == 0)
      {
        goto LABEL_33;
      }
    }
  }

  else if (v12)
  {
    goto LABEL_33;
  }

  if (v7 && v13 && (v6 != v14 || v7 != v13))
  {
    sub_19393CA30();
  }

LABEL_33:
  OUTLINED_FUNCTION_114();
}

void GenerativeFunctionsInstrumentationEvent.TrialExperimentInfo.hash(into:)()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_77_1();
  v1 = *(v0 + 4);
  v2 = *(v0 + 20);
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  if (v0[1])
  {
    v7 = *v0;
    sub_19393CAD0();
    sub_19393C640();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_19393CAD0();
    if (v2)
    {
LABEL_3:
      sub_19393CAD0();
      if (v4)
      {
        goto LABEL_4;
      }

LABEL_10:
      sub_19393CAD0();
      if (v6)
      {
        goto LABEL_5;
      }

LABEL_11:
      sub_19393CAD0();
      OUTLINED_FUNCTION_116();
      return;
    }
  }

  sub_19393CAD0();
  sub_19393CAE0();
  if (!v4)
  {
    goto LABEL_10;
  }

LABEL_4:
  sub_19393CAD0();
  OUTLINED_FUNCTION_2_0();
  sub_19393C640();
  if (!v6)
  {
    goto LABEL_11;
  }

LABEL_5:
  sub_19393CAD0();
  OUTLINED_FUNCTION_116();

  sub_19393C640();
}

uint64_t GenerativeFunctionsInstrumentationEvent.IdentifierSet.clientSessionIdentifiers.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationEvent.IdentifierSet.clientRequestIdentifiers.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationEvent.IdentifierSet.clientApplicationIdentifiers.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationEvent.IdentifierSet.clientBundleIdentifiers.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationEvent.IdentifierSet.intelligenceFlowGroupIdentifiers.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationEvent.IdentifierSet.intelligenceFlowSessionIdentifiers.setter(uint64_t a1)
{
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationEvent.IdentifierSet.intelligenceFlowSpanIdentifiers.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationEvent.IdentifierSet.useCaseIdentifiers.setter(uint64_t a1)
{
  v3 = *(v1 + 56);

  *(v1 + 56) = a1;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationEvent.IdentifierSet.generativeFunctionIdentifiers.setter(uint64_t a1)
{
  v3 = *(v1 + 64);

  *(v1 + 64) = a1;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationEvent.IdentifierSet.catalogResourceIdentifiers.setter(uint64_t a1)
{
  v3 = *(v1 + 72);

  *(v1 + 72) = a1;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationEvent.IdentifierSet.modelManagerRequestIdentifiers.setter(uint64_t a1)
{
  v3 = *(v1 + 80);

  *(v1 + 80) = a1;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationEvent.IdentifierSet.modelManagerSessionIdentifiers.setter(uint64_t a1)
{
  v3 = *(v1 + 88);

  *(v1 + 88) = a1;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationEvent.IdentifierSet.inferenceProviderIdentifiers.setter(uint64_t a1)
{
  v3 = *(v1 + 96);

  *(v1 + 96) = a1;
  return result;
}

uint64_t sub_1934C4DD8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || result == a2)
  {
    return 1;
  }

  v5 = (result + 40);
  v6 = (a2 + 40);
  while (v4)
  {
    v7 = *(v6 - 1);
    v8 = *v6;
    v6 += 16;
    v14 = *(v5 - 1);
    v15 = *v5;
    v9 = GenerativeFunctionsInstrumentationMetadata.SummarizationEvent.SummarizationStyle.rawValue.getter(result, a2, a3, a4);
    v13 = v9 == GenerativeFunctionsInstrumentationMetadata.SummarizationEvent.SummarizationStyle.rawValue.getter(v9, v10, v11, v12);
    result = v13;
    v13 = !v13 || v4-- == 1;
    v5 += 16;
    if (v13)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1934C4E94(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 32);
    for (i = (a2 + 32); ; i += 72)
    {
      memcpy(__dst, v3, 0x41uLL);
      memcpy(v9, v3, 0x41uLL);
      memcpy(v11, i, 0x41uLL);
      memcpy(__src, i, 0x41uLL);
      sub_1934A8404(__dst, v7);
      sub_1934A8404(v11, v7);
      v5 = static GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.FileResidentInfo.== infix(_:_:)(v9, __src);
      memcpy(v12, __src, 0x41uLL);
      sub_1934D5044(v12);
      memcpy(v13, v9, 0x41uLL);
      sub_1934D5044(v13);
      if (!v5)
      {
        break;
      }

      v3 += 72;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t GenerativeFunctionsInstrumentationEvent.IdentifierSet.hash(into:)()
{
  OUTLINED_FUNCTION_108_0();
  v2 = v1;
  v3 = *v0;
  v4 = v0[1];
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[6];
  v10 = v0[7];
  v11 = v0[8];
  v23 = v0[9];
  v24 = v0[10];
  v25 = v0[11];
  v12 = v0[12];
  sub_1934D11C8(v1, v3);
  v13 = OUTLINED_FUNCTION_188_0();
  sub_1934D11C8(v13, v14);
  sub_1934D11C8(v2, v5);
  sub_1934D11C8(v2, v6);
  v15 = OUTLINED_FUNCTION_102_4();
  sub_1934D11C8(v15, v16);
  sub_1934D1508(v2, v8);
  sub_1934D14B8(v2, v9);
  sub_1934D11C8(v2, v10);
  v17 = OUTLINED_FUNCTION_187();
  sub_1934D11C8(v17, v18);
  sub_1934D1240(v2, v23);
  sub_1934D11C8(v2, v24);
  sub_1934D11C8(v2, v25);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_107();

  return sub_1934D11C8(v19, v20);
}

uint64_t GenerativeFunctionsInstrumentationEvent.IdentifierSet.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  GenerativeFunctionsInstrumentationEvent.IdentifierSet.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1934C50C8()
{
  sub_19393CAB0();
  GenerativeFunctionsInstrumentationEvent.IdentifierSet.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1934C511C(void (*a1)(_BYTE *))
{
  OUTLINED_FUNCTION_119();
  a1(v3);
  return sub_19393CB00();
}

uint64_t sub_1934C517C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_19393CAB0();
  a4(v6);
  return sub_19393CB00();
}

uint64_t GenerativeFunctionsInstrumentationMetadata.MMExecuteRequest.onBehalfOfBundleIdentifier.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationMetadata.MMExecuteRequest.createdByBundleIdentifier.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t GenerativeFunctionsInstrumentationMetadata.MMExecuteRequest.createdByBundleIdentifier.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

void GenerativeFunctionsInstrumentationMetadata.MMExecuteRequest.requestType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  v4 = *(v1 + 73);
  OUTLINED_FUNCTION_5_2(a1);
}

void GenerativeFunctionsInstrumentationMetadata.MMExecuteRequest.requestType.setter(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 9);
  OUTLINED_FUNCTION_134_2(*a1);
}

uint64_t GenerativeFunctionsInstrumentationMetadata.MMExecuteRequest.assets.setter(uint64_t a1)
{
  v3 = *(v1 + 80);

  *(v1 + 80) = a1;
  return result;
}

void GenerativeFunctionsInstrumentationMetadata.MMExecuteRequest.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  *(a1 + 72) = 256;
  *(a1 + 74) = 2;
  *(a1 + 80) = MEMORY[0x1E69E7CC0];
  *(a1 + 88) = 2;
}

uint64_t sub_1934C5468@<X0>(uint64_t *a1@<X8>)
{
  result = GenerativeFunctionsInstrumentationMetadata.MMExecuteRequest.RequestType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1934C5490@<X0>(uint64_t *a1@<X8>)
{
  result = static GenerativeFunctionsInstrumentationMetadata.MMExecuteRequest.RequestType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t static GenerativeFunctionsInstrumentationMetadata.MMExecuteRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  v12 = *(a1 + 72);
  v13 = *(a1 + 73);
  v14 = *(a1 + 74);
  v15 = *(a1 + 80);
  v16 = *(a1 + 88);
  v17 = *(a2 + 24);
  v18 = *(a2 + 32);
  v19 = *(a2 + 40);
  v21 = *(a2 + 48);
  v20 = *(a2 + 56);
  v22 = *(a2 + 64);
  v23 = *(a2 + 72);
  v24 = *(a2 + 73);
  v25 = *(a2 + 74);
  v26 = *(a2 + 80);
  v27 = *(a2 + 88);
  if (v4)
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v28 = *(a2 + 8);
    }

    else
    {
      v28 = 1;
    }

    if (v28)
    {
      return 0;
    }
  }

  if (v6)
  {
    if (!v17)
    {
      return 0;
    }

    if (v5 != *(a2 + 16) || v6 != v17)
    {
      v56 = *(a2 + 88);
      v57 = v16;
      v55 = v15;
      v54 = v14;
      v53 = *(a2 + 80);
      v52 = *(a2 + 74);
      v51 = *(a2 + 64);
      v58 = *(a2 + 72);
      v30 = sub_19393CA30();
      v16 = v57;
      v25 = v52;
      v26 = v53;
      v14 = v54;
      v15 = v55;
      v27 = v56;
      if ((v30 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  if (v8)
  {
    if (!v19)
    {
      return 0;
    }
  }

  else
  {
    if (v7 == v18)
    {
      v31 = v19;
    }

    else
    {
      v31 = 1;
    }

    if (v31)
    {
      return 0;
    }
  }

  if (v10)
  {
    if (!v20)
    {
      return 0;
    }

    if (v9 != v21 || v10 != v20)
    {
      v33 = v16;
      v34 = v27;
      v35 = v15;
      v36 = v14;
      v37 = v26;
      v38 = v25;
      v39 = sub_19393CA30();
      v25 = v38;
      v26 = v37;
      v14 = v36;
      v15 = v35;
      v27 = v34;
      v16 = v33;
      if ((v39 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v20)
  {
    return 0;
  }

  if (v13)
  {
    if ((v24 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v24)
    {
      return 0;
    }

    v40 = v16;
    v41 = v27;
    v42 = v15;
    v43 = v14;
    v44 = v26;
    v45 = v25;
    v46 = GenerativeFunctionsInstrumentationMetadata.MMExecuteRequest.RequestType.rawValue.getter();
    v47 = GenerativeFunctionsInstrumentationMetadata.MMExecuteRequest.RequestType.rawValue.getter();
    v25 = v45;
    v26 = v44;
    v14 = v43;
    v15 = v42;
    v27 = v41;
    v16 = v40;
    if (v46 != v47)
    {
      return 0;
    }
  }

  if (v14 == 2)
  {
    if (v25 != 2)
    {
      return 0;
    }

    goto LABEL_43;
  }

  result = 0;
  if (v25 != 2 && ((v25 ^ v14) & 1) == 0)
  {
LABEL_43:
    v49 = v27;
    v50 = v16;
    if (sub_19344FFB0(v15, v26))
    {
      if (v50 == 2)
      {
        if (v49 != 2)
        {
          return 0;
        }
      }

      else if (v49 == 2 || ((v49 ^ v50) & 1) != 0)
      {
        return 0;
      }

      return 1;
    }

    return 0;
  }

  return result;
}

void GenerativeFunctionsInstrumentationMetadata.MMExecuteRequest.hash(into:)()
{
  v1 = v0[3];
  v15 = v0[4];
  v16 = v0[2];
  v17 = *(v0 + 40);
  v2 = v0[6];
  v18 = v0[7];
  v3 = v0[8];
  v4 = *(v0 + 72);
  v5 = *(v0 + 73);
  v6 = *(v0 + 74);
  v7 = v0[10];
  v8 = *(v0 + 88);
  if (*(v0 + 8) == 1)
  {
    OUTLINED_FUNCTION_104_0();
    if (v1)
    {
LABEL_3:
      OUTLINED_FUNCTION_103_0();
      sub_19393C640();
      goto LABEL_6;
    }
  }

  else
  {
    v9 = *(v0 + 88);
    v10 = *v0;
    OUTLINED_FUNCTION_103_0();
    v11 = v10;
    v8 = v9;
    MEMORY[0x193B18060](v11);
    if (v1)
    {
      goto LABEL_3;
    }
  }

  OUTLINED_FUNCTION_104_0();
LABEL_6:
  if (v17)
  {
    OUTLINED_FUNCTION_104_0();
    if (v18)
    {
      goto LABEL_8;
    }

LABEL_11:
    OUTLINED_FUNCTION_104_0();
    if (v5)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  OUTLINED_FUNCTION_103_0();
  MEMORY[0x193B18060](v15);
  if (!v18)
  {
    goto LABEL_11;
  }

LABEL_8:
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_188_0();
  sub_19393C640();
  if (v5)
  {
LABEL_9:
    OUTLINED_FUNCTION_104_0();
    goto LABEL_13;
  }

LABEL_12:
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_146_2();
  v12 = GenerativeFunctionsInstrumentationMetadata.MMExecuteRequest.RequestType.rawValue.getter();
  MEMORY[0x193B18030](v12);
LABEL_13:
  if (v6 != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  v13 = OUTLINED_FUNCTION_187();
  sub_1934D1240(v13, v14);
  if (v8 != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_140_1();
}

uint64_t GenerativeFunctionsInstrumentationMetadata.MMExecuteRequest.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  GenerativeFunctionsInstrumentationMetadata.MMExecuteRequest.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1934C5A04()
{
  sub_19393CAB0();
  GenerativeFunctionsInstrumentationMetadata.MMExecuteRequest.hash(into:)();
  return sub_19393CB00();
}

uint64_t GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.errorString.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.errorString.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

void GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.errorType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  v4 = *(v1 + 89);
  OUTLINED_FUNCTION_5_2(a1);
}

uint64_t GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.errorType.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 9);
  *(v1 + 80) = *result;
  *(v1 + 88) = v2;
  *(v1 + 89) = v3;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.privateCloudMetrics.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 96), sizeof(__dst));
  memcpy(a1, (v1 + 96), 0x142uLL);
  return sub_1934486A4();
}

void *GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.privateCloudMetrics.setter(const void *a1)
{
  memcpy(v4, (v1 + 96), 0x142uLL);
  sub_193442B60(v4, &qword_1EAE3B4D0, &qword_193952790);
  return memcpy((v1 + 96), a1, 0x142uLL);
}

uint64_t GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.fileResidentInfos.setter(uint64_t a1)
{
  v3 = *(v1 + 616);

  *(v1 + 616) = a1;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.prefixKVCacheTokensMatchCount.getter()
{
  result = *(v0 + 624);
  v2 = *(v0 + 632);
  return result;
}

uint64_t GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.prefixKVCacheTokensMatchCount.setter(uint64_t result, char a2)
{
  *(v2 + 624) = result;
  *(v2 + 632) = a2 & 1;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.promptModulesKVCacheTokensMatchCount.getter()
{
  result = *(v0 + 640);
  v2 = *(v0 + 648);
  return result;
}

uint64_t GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.promptModulesKVCacheTokensMatchCount.setter(uint64_t result, char a2)
{
  *(v2 + 640) = result;
  *(v2 + 648) = a2 & 1;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.outputImagesCount.getter()
{
  result = *(v0 + 656);
  v2 = *(v0 + 664);
  return result;
}

uint64_t GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.outputImagesCount.setter(uint64_t result, char a2)
{
  *(v2 + 656) = result;
  *(v2 + 664) = a2 & 1;
  return result;
}

void *GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.init()@<X0>(uint64_t a1@<X8>)
{
  sub_1934B59EC(v3);
  memcpy((a1 + 96), v3, 0x142uLL);
  sub_1934D1604(__src);
  *a1 = 0;
  *(a1 + 8) = 256;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  *(a1 + 72) = 1;
  *(a1 + 80) = 0;
  *(a1 + 88) = 256;
  memcpy(__dst, (a1 + 96), 0x142uLL);
  sub_193442B60(__dst, &qword_1EAE3B4D0, &qword_193952790);
  memcpy((a1 + 96), v3, 0x142uLL);
  result = memcpy((a1 + 424), __src, 0xBAuLL);
  *(a1 + 616) = MEMORY[0x1E69E7CC0];
  *(a1 + 624) = 0;
  *(a1 + 632) = 1;
  *(a1 + 640) = 0;
  *(a1 + 648) = 1;
  *(a1 + 656) = 0;
  *(a1 + 664) = 1;
  return result;
}

uint64_t sub_1934C5E9C@<X0>(uint64_t *a1@<X8>)
{
  result = GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.RequestType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1934C5EC4@<X0>(uint64_t *a1@<X8>)
{
  result = static GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.RequestType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1934C5FB4@<X0>(uint64_t *a1@<X8>)
{
  result = GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.ErrorType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1934C5FDC@<X0>(uint64_t *a1@<X8>)
{
  result = static GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.ErrorType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.SpeculativeDecodingMetrics.totalOutputTokensCount.getter()
{
  result = *(v0 + 112);
  v2 = *(v0 + 120);
  return result;
}

uint64_t GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.SpeculativeDecodingMetrics.totalOutputTokensCount.setter(uint64_t result, char a2)
{
  *(v2 + 112) = result;
  *(v2 + 120) = a2 & 1;
  return result;
}

void GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.SpeculativeDecodingMetrics.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  *(a1 + 96) = 0;
  *(a1 + 104) = 1;
  *(a1 + 112) = 0;
  *(a1 + 120) = 1;
  *(a1 + 128) = 0;
  *(a1 + 136) = 1;
  *(a1 + 144) = 0;
  *(a1 + 152) = 1;
  *(a1 + 160) = 0;
  *(a1 + 168) = 1;
  *(a1 + 176) = 0;
  *(a1 + 184) = 1;
}

void static GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.SpeculativeDecodingMetrics.== infix(_:_:)()
{
  OUTLINED_FUNCTION_195();
  v14 = *(v0 + 176);
  v2 = *(v1 + 8);
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  v5 = *(v1 + 56);
  v13 = *(v1 + 176);
  v15 = *(v1 + 184);
  if (*(v0 + 8))
  {
    if (!*(v1 + 8))
    {
      goto LABEL_74;
    }
  }

  else
  {
    if (*v0 != *v1)
    {
      v2 = 1;
    }

    if (v2)
    {
      goto LABEL_74;
    }
  }

  if (*(v0 + 24))
  {
    if (!*(v1 + 24))
    {
      goto LABEL_74;
    }
  }

  else
  {
    if (*(v0 + 16) != *(v1 + 16))
    {
      v3 = 1;
    }

    if (v3)
    {
      goto LABEL_74;
    }
  }

  if (*(v0 + 40))
  {
    if (!*(v1 + 40))
    {
      goto LABEL_74;
    }
  }

  else
  {
    if (*(v0 + 32) != *(v1 + 32))
    {
      v4 = 1;
    }

    if (v4)
    {
      goto LABEL_74;
    }
  }

  if (*(v0 + 56))
  {
    if (!*(v1 + 56))
    {
      goto LABEL_74;
    }
  }

  else
  {
    if (*(v0 + 48) != *(v1 + 48))
    {
      v5 = 1;
    }

    if (v5)
    {
      goto LABEL_74;
    }
  }

  if (*(v0 + 72))
  {
    if (!*(v1 + 72))
    {
      goto LABEL_74;
    }
  }

  else
  {
    if (*(v0 + 64) == *(v1 + 64))
    {
      v6 = *(v1 + 72);
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      goto LABEL_74;
    }
  }

  if (*(v0 + 88))
  {
    if (!*(v1 + 88))
    {
      goto LABEL_74;
    }
  }

  else
  {
    if (*(v0 + 80) == *(v1 + 80))
    {
      v7 = *(v1 + 88);
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      goto LABEL_74;
    }
  }

  if (*(v0 + 104))
  {
    if (!*(v1 + 104))
    {
      goto LABEL_74;
    }
  }

  else
  {
    if (*(v0 + 96) == *(v1 + 96))
    {
      v8 = *(v1 + 104);
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      goto LABEL_74;
    }
  }

  if (*(v0 + 120))
  {
    if (!*(v1 + 120))
    {
      goto LABEL_74;
    }
  }

  else
  {
    if (*(v0 + 112) == *(v1 + 112))
    {
      v9 = *(v1 + 120);
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      goto LABEL_74;
    }
  }

  if (*(v0 + 136))
  {
    if (!*(v1 + 136))
    {
      goto LABEL_74;
    }
  }

  else
  {
    if (*(v0 + 128) == *(v1 + 128))
    {
      v10 = *(v1 + 136);
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      goto LABEL_74;
    }
  }

  if (*(v0 + 152))
  {
    if (!*(v1 + 152))
    {
      goto LABEL_74;
    }
  }

  else
  {
    if (*(v0 + 144) == *(v1 + 144))
    {
      v11 = *(v1 + 152);
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      goto LABEL_74;
    }
  }

  if (*(v0 + 168))
  {
    if (!*(v1 + 168))
    {
      goto LABEL_74;
    }

    goto LABEL_73;
  }

  v12 = *(v1 + 168);
  if (*(v0 + 160) != *(v1 + 160))
  {
    v12 = 1;
  }

  if ((v12 & 1) == 0)
  {
LABEL_73:
    *(v0 + 184);
  }

LABEL_74:
  OUTLINED_FUNCTION_194();
}

uint64_t GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.SpeculativeDecodingMetrics.hash(into:)()
{
  OUTLINED_FUNCTION_51_5();
  v1 = *(v0 + 24);
  v28 = v0[2];
  v29 = v0[4];
  v30 = v0[6];
  v35 = *(v0 + 40);
  v36 = *(v0 + 56);
  v37 = *(v0 + 72);
  v31 = v0[8];
  v32 = v0[10];
  v33 = v0[12];
  v38 = *(v0 + 88);
  v39 = *(v0 + 104);
  v34 = v0[14];
  v40 = *(v0 + 120);
  v2 = v0[16];
  v3 = *(v0 + 136);
  v4 = v0[18];
  v5 = *(v0 + 152);
  v6 = v0[20];
  v7 = *(v0 + 168);
  v8 = v0[22];
  v9 = *(v0 + 184);
  if (v10 == 1)
  {
    sub_19393CAD0();
    if (!v1)
    {
LABEL_3:
      sub_19393CAD0();
      MEMORY[0x193B18060](v28);
      goto LABEL_6;
    }
  }

  else
  {
    v27 = *(v0 + 136);
    v11 = v0[16];
    v12 = *(v0 + 152);
    v13 = v0[18];
    v14 = *(v0 + 168);
    v15 = v0[20];
    v16 = *(v0 + 184);
    v17 = v0[22];
    v18 = *v0;
    sub_19393CAD0();
    v19 = v18;
    v8 = v17;
    v9 = v16;
    v6 = v15;
    v7 = v14;
    v4 = v13;
    v5 = v12;
    v2 = v11;
    v3 = v27;
    MEMORY[0x193B18060](v19);
    if (!v1)
    {
      goto LABEL_3;
    }
  }

  sub_19393CAD0();
LABEL_6:
  sub_19393CAD0();
  if (!v35)
  {
    MEMORY[0x193B18060](v29);
  }

  sub_19393CAD0();
  if (!v36)
  {
    v20 = OUTLINED_FUNCTION_76_4(v30);
    MEMORY[0x193B18060](v20);
  }

  sub_19393CAD0();
  if (!v37)
  {
    v21 = OUTLINED_FUNCTION_76_4(v31);
    MEMORY[0x193B18060](v21);
  }

  sub_19393CAD0();
  if (!v38)
  {
    v22 = OUTLINED_FUNCTION_76_4(v32);
    MEMORY[0x193B18060](v22);
  }

  sub_19393CAD0();
  if (!v39)
  {
    MEMORY[0x193B18060](v33);
  }

  if (v40)
  {
    sub_19393CAD0();
    if (!v3)
    {
      goto LABEL_18;
    }

LABEL_32:
    sub_19393CAD0();
    if (!v5)
    {
      goto LABEL_22;
    }

LABEL_33:
    sub_19393CAD0();
    if (!v7)
    {
      goto LABEL_26;
    }

    goto LABEL_34;
  }

  sub_19393CAD0();
  MEMORY[0x193B18060](v34);
  if (v3)
  {
    goto LABEL_32;
  }

LABEL_18:
  sub_19393CAD0();
  if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v23 = v2;
  }

  else
  {
    v23 = 0;
  }

  MEMORY[0x193B18060](v23);
  if (v5)
  {
    goto LABEL_33;
  }

LABEL_22:
  sub_19393CAD0();
  if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v24 = v4;
  }

  else
  {
    v24 = 0;
  }

  MEMORY[0x193B18060](v24);
  if (!v7)
  {
LABEL_26:
    sub_19393CAD0();
    if ((v6 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v25 = v6;
    }

    else
    {
      v25 = 0;
    }

    MEMORY[0x193B18060](v25);
    if (!v9)
    {
      goto LABEL_30;
    }

    return sub_19393CAD0();
  }

LABEL_34:
  sub_19393CAD0();
  if (!v9)
  {
LABEL_30:
    sub_19393CAD0();
    return MEMORY[0x193B18060](v8);
  }

  return sub_19393CAD0();
}

uint64_t GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.SpeculativeDecodingMetrics.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.SpeculativeDecodingMetrics.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1934C6860()
{
  sub_19393CAB0();
  GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.SpeculativeDecodingMetrics.hash(into:)();
  return sub_19393CB00();
}

uint64_t GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.FileResidentInfo.asset.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_19344C630(v2, v3);
}

__n128 GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.FileResidentInfo.asset.setter(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  sub_193442C40(*v1, v1[1]);
  result = *a1;
  v6 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 1) = v6;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.FileResidentInfo.residentRatio.setter(uint64_t result)
{
  *(v1 + 60) = result;
  *(v1 + 64) = BYTE4(result) & 1;
  return result;
}

double GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.FileResidentInfo.init()()
{
  v1 = OUTLINED_FUNCTION_8_4();
  sub_193442C40(v1, 0);
  *(v0 + 32) = 0;
  result = 0.0;
  *v0 = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 40) = 1;
  *(v0 + 48) = 0;
  *(v0 + 56) = 1;
  *(v0 + 60) = 0;
  *(v0 + 64) = 1;
  return result;
}

BOOL static GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.FileResidentInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a1 + 40);
  v66 = *(a1 + 48);
  v6 = *(a1 + 60);
  v7 = *(a2 + 8);
  v9 = *(a2 + 16);
  v8 = *(a2 + 24);
  v10 = *(a2 + 40);
  v64 = *(a2 + 48);
  v11 = *(a2 + 60);
  v65 = *(a2 + 64);
  if (!v2)
  {
    v62 = *(a2 + 32);
    v63 = *(a1 + 32);
    v67 = *(a2 + 56);
    v68 = *(a1 + 56);
    v61 = *(a1 + 64);
    OUTLINED_FUNCTION_69_1();
    sub_19344C630(v26, v27);
    if (!v7)
    {
      OUTLINED_FUNCTION_199();
      goto LABEL_24;
    }

    v28 = OUTLINED_FUNCTION_29_9();
    sub_19344C630(v28, v29);
    goto LABEL_19;
  }

  if (!v7)
  {
    v30 = OUTLINED_FUNCTION_8_6();
    sub_19344C630(v30, v31);
    OUTLINED_FUNCTION_199();
    v32 = OUTLINED_FUNCTION_8_6();
    sub_19344C630(v32, v33);

LABEL_19:
    v34 = OUTLINED_FUNCTION_8_6();
    sub_193442C40(v34, v35);
    v36 = OUTLINED_FUNCTION_29_9();
LABEL_20:
    sub_193442C40(v36, v37);
    return 0;
  }

  v62 = *(a2 + 32);
  v63 = *(a1 + 32);
  v67 = *(a2 + 56);
  v68 = *(a1 + 56);
  v61 = *(a1 + 64);
  if (*a1 != *a2 || v2 != v7)
  {
    OUTLINED_FUNCTION_2_0();
    if ((sub_19393CA30() & 1) == 0)
    {
      v50 = OUTLINED_FUNCTION_8_6();
      sub_19344C630(v50, v51);
      v52 = OUTLINED_FUNCTION_29_9();
      sub_19344C630(v52, v53);
      v54 = OUTLINED_FUNCTION_8_6();
      sub_19344C630(v54, v55);
      v56 = OUTLINED_FUNCTION_29_9();
      sub_193442C40(v56, v57);

      v36 = OUTLINED_FUNCTION_8_6();
      goto LABEL_20;
    }
  }

  if (v4 != v9 || v3 != v8)
  {
    v60 = sub_19393CA30();
    v14 = OUTLINED_FUNCTION_8_6();
    sub_19344C630(v14, v15);
    v16 = OUTLINED_FUNCTION_29_9();
    sub_19344C630(v16, v17);
    v18 = OUTLINED_FUNCTION_8_6();
    sub_19344C630(v18, v19);
    v20 = OUTLINED_FUNCTION_29_9();
    sub_193442C40(v20, v21);

    v22 = OUTLINED_FUNCTION_8_6();
    sub_193442C40(v22, v23);
    if ((v60 & 1) == 0)
    {
      return 0;
    }

    if (v5)
    {
      goto LABEL_14;
    }

LABEL_25:
    if (v63 == v62)
    {
      v49 = v10;
    }

    else
    {
      v49 = 1;
    }

    v25 = v67;
    v24 = v68;
    if (v49)
    {
      return 0;
    }

    goto LABEL_29;
  }

  v39 = OUTLINED_FUNCTION_8_6();
  sub_19344C630(v39, v40);
  OUTLINED_FUNCTION_32_4();
  OUTLINED_FUNCTION_69_1();
  sub_19344C630(v41, v42);
  v43 = OUTLINED_FUNCTION_8_6();
  sub_19344C630(v43, v44);
  OUTLINED_FUNCTION_32_4();
  OUTLINED_FUNCTION_69_1();
  sub_193442C40(v45, v46);

LABEL_24:
  v47 = OUTLINED_FUNCTION_8_6();
  sub_193442C40(v47, v48);
  if ((v5 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_14:
  v25 = v67;
  v24 = v68;
  if (!v10)
  {
    return 0;
  }

LABEL_29:
  if (v24)
  {
    if (!v25)
    {
      return 0;
    }
  }

  else
  {
    if (v66 == v64)
    {
      v58 = v25;
    }

    else
    {
      v58 = 1;
    }

    if (v58)
    {
      return 0;
    }
  }

  if ((v61 & 1) == 0)
  {
    v59 = v65;
    if (v6 != v11)
    {
      v59 = 1;
    }

    return (v59 & 1) == 0;
  }

  return (v65 & 1) != 0;
}

void GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.FileResidentInfo.hash(into:)()
{
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_77_1();
  v1 = v0[4];
  v2 = *(v0 + 40);
  v9 = v0[6];
  v3 = *(v0 + 56);
  v4 = *(v0 + 15);
  v5 = *(v0 + 64);
  if (v0[1])
  {
    v7 = v0[2];
    v6 = v0[3];
    v8 = *v0;
    sub_19393CAD0();
    sub_19393C640();
    sub_19393C640();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_19393CAD0();
    if (v2)
    {
LABEL_3:
      sub_19393CAD0();
      if (!v3)
      {
        goto LABEL_4;
      }

LABEL_8:
      sub_19393CAD0();
      if (!v5)
      {
        goto LABEL_5;
      }

LABEL_9:
      sub_19393CAD0();
      goto LABEL_10;
    }
  }

  sub_19393CAD0();
  MEMORY[0x193B18060](v1);
  if (v3)
  {
    goto LABEL_8;
  }

LABEL_4:
  sub_19393CAD0();
  MEMORY[0x193B18060](v9);
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_5:
  sub_19393CAD0();
  sub_19393CAE0();
LABEL_10:
  OUTLINED_FUNCTION_114();
}

uint64_t GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.FileResidentInfo.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.FileResidentInfo.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1934C6DA4()
{
  sub_19393CAB0();
  GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.FileResidentInfo.hash(into:)();
  return sub_19393CB00();
}

void static GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_91_0();
  v3 = *v2;
  v4 = *(v2 + 8);
  v5 = *(v2 + 9);
  v53 = v2[2];
  v55 = *(v2 + 24);
  v54 = *(v2 + 40);
  v44 = v2[6];
  v49 = v2[4];
  v50 = v2[7];
  v41 = v2[8];
  v46 = *(v2 + 72);
  v6 = v2[10];
  v7 = *(v2 + 88);
  v42 = *(v2 + 89);
  memcpy(__dst, (v1 + 96), sizeof(__dst));
  memcpy(v64, (v1 + 424), sizeof(v64));
  v36 = *(v1 + 616);
  v33 = *(v1 + 624);
  v34 = *(v1 + 648);
  v35 = *(v1 + 632);
  v30 = *(v1 + 656);
  v31 = *(v1 + 640);
  v32 = *(v1 + 664);
  v8 = *v0;
  v9 = *(v0 + 8);
  v10 = *(v0 + 9);
  v51 = v0[2];
  v11 = *(v0 + 24);
  v52 = *(v0 + 40);
  v43 = v0[6];
  v47 = v0[4];
  v48 = v0[7];
  v45 = *(v0 + 72);
  v38 = v0[10];
  v39 = v0[8];
  v37 = *(v0 + 88);
  v40 = *(v0 + 89);
  v12 = memcpy(__src, v0 + 12, sizeof(__src));
  v13 = v0[77];
  v14 = v0[78];
  v15 = *(v0 + 632);
  v16 = v0[80];
  v17 = *(v0 + 648);
  v18 = v0[82];
  v19 = *(v0 + 664);
  if (v5)
  {
    if ((v10 & 1) == 0)
    {
      goto LABEL_46;
    }
  }

  else
  {
    if (v10)
    {
      goto LABEL_46;
    }

    v61[0] = v3;
    LOBYTE(v61[1]) = v4 & 1;
    v59[0] = v8;
    LOBYTE(v59[1]) = v9 & 1;
    v29 = GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.RequestType.rawValue.getter(v12);
    if (v29 != GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.RequestType.rawValue.getter(v29))
    {
      goto LABEL_46;
    }
  }

  if (v55)
  {
    if (!v11)
    {
      goto LABEL_46;
    }
  }

  else
  {
    if (v53 == v51)
    {
      v20 = v11;
    }

    else
    {
      v20 = 1;
    }

    if (v20)
    {
      goto LABEL_46;
    }
  }

  if (v54)
  {
    if (!v52)
    {
      goto LABEL_46;
    }
  }

  else
  {
    v21 = v52;
    if (v49 != v47)
    {
      v21 = 1;
    }

    if (v21)
    {
      goto LABEL_46;
    }
  }

  if (v50)
  {
    if (!v48)
    {
      goto LABEL_46;
    }

    v22 = v44 == v43 && v50 == v48;
    if (!v22 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_46;
    }
  }

  else if (v48)
  {
    goto LABEL_46;
  }

  if (v46)
  {
    if (!v45)
    {
      goto LABEL_46;
    }

LABEL_34:
    if (v42)
    {
      OUTLINED_FUNCTION_124_2();
      if ((v40 & 1) == 0)
      {
        goto LABEL_46;
      }
    }

    else
    {
      if (v40)
      {
        goto LABEL_46;
      }

      OUTLINED_FUNCTION_124_2();
      v61[0] = v6;
      LOBYTE(v61[1]) = v24 & 1;
      v59[0] = v38;
      LOBYTE(v59[1]) = v37 & 1;
      v25 = GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.ErrorType.rawValue.getter();
      if (v25 != GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.ErrorType.rawValue.getter())
      {
        goto LABEL_46;
      }
    }

    memcpy(v61, __dst, 0x142uLL);
    memcpy(&v61[41], __src, 0x142uLL);
    memcpy(v62, __dst, 0x142uLL);
    if (sub_1934A83E0(v62) == 1)
    {
      memcpy(v59, &v61[41], 0x142uLL);
      if (sub_1934A83E0(v59) == 1)
      {
        OUTLINED_FUNCTION_168_1(v60);
        OUTLINED_FUNCTION_113_2();
        OUTLINED_FUNCTION_113_2();
        sub_193442B60(v60, &qword_1EAE3B4D0, &qword_193952790);
        goto LABEL_48;
      }

      OUTLINED_FUNCTION_75_0();
      sub_1934486A4();
      OUTLINED_FUNCTION_75_0();
      sub_1934486A4();
    }

    else
    {
      OUTLINED_FUNCTION_168_1(v60);
      memcpy(v59, &v61[41], 0x142uLL);
      if (sub_1934A83E0(v59) != 1)
      {
        OUTLINED_FUNCTION_113_2();
        OUTLINED_FUNCTION_113_2();
        OUTLINED_FUNCTION_113_2();
        static GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.== infix(_:_:)();
        v27 = v26;
        memcpy(v56, &v61[41], 0x142uLL);
        sub_1934D1634(v56);
        OUTLINED_FUNCTION_168_1(v57);
        sub_1934D1634(v57);
        OUTLINED_FUNCTION_168_1(v58);
        sub_193442B60(v58, &qword_1EAE3B4D0, &qword_193952790);
        if ((v27 & 1) == 0)
        {
          goto LABEL_46;
        }

LABEL_48:
        memcpy(v61, v64, 0xBAuLL);
        if (sub_1934A83C4(v61) == 1)
        {
          memcpy(v59, v0 + 53, 0xBAuLL);
          if (sub_1934A83C4(v59) != 1)
          {
            goto LABEL_46;
          }
        }

        else
        {
          memcpy(v60, v64, 0xBAuLL);
          memcpy(v59, v0 + 53, 0xBAuLL);
          if (sub_1934A83C4(v59) == 1)
          {
            goto LABEL_46;
          }

          static GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.SpeculativeDecodingMetrics.== infix(_:_:)();
          if ((v28 & 1) == 0)
          {
            goto LABEL_46;
          }
        }

        sub_1934C4E94(v36, v7);
        goto LABEL_46;
      }

      OUTLINED_FUNCTION_168_1(v58);
      OUTLINED_FUNCTION_75_0();
      sub_1934486A4();
      OUTLINED_FUNCTION_75_0();
      sub_1934486A4();
      OUTLINED_FUNCTION_75_0();
      sub_1934486A4();
      sub_1934D1634(v58);
    }

    memcpy(v59, v61, 0x28AuLL);
    sub_193442B60(v59, &qword_1EAE3B4F0, &qword_193952D00);
    goto LABEL_46;
  }

  v23 = v45;
  if (v41 != v39)
  {
    v23 = 1;
  }

  if ((v23 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_46:
  OUTLINED_FUNCTION_116();
}

void GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.hash(into:)()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_148_2();
  v22 = v1[2];
  v2 = v1[4];
  v29 = *(v1 + 24);
  v30 = *(v1 + 40);
  v3 = v1[7];
  v31 = *(v1 + 72);
  v27 = v1[10];
  v28 = v1[6];
  v26 = *(v1 + 88);
  v32 = *(v1 + 89);
  v4 = v1[77];
  v5 = v1[78];
  v6 = *(v1 + 632);
  v23 = v1[80];
  v7 = *(v1 + 648);
  v8 = v1[82];
  v24 = v8;
  v25 = v1[8];
  v9 = *(v1 + 664);
  if (v10 == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v21 = *(v1 + 632);
    v20 = v1[78];
    v11 = *(v1 + 648);
    v12 = *(v1 + 8);
    v13 = v1[4];
    v14 = *v1;
    v15 = OUTLINED_FUNCTION_103_0();
    __dst[0] = v14;
    v2 = v13;
    v16 = v12 & 1;
    v7 = v11;
    v5 = v20;
    v6 = v21;
    LOBYTE(__dst[1]) = v16;
    v17 = GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.RequestType.rawValue.getter(v15);
    MEMORY[0x193B18030](v17);
  }

  if (v29)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v22);
  }

  if (v30)
  {
    OUTLINED_FUNCTION_104_0();
    if (v3)
    {
LABEL_9:
      OUTLINED_FUNCTION_103_0();
      sub_19393C640();
      goto LABEL_12;
    }
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v2);
    if (v3)
    {
      goto LABEL_9;
    }
  }

  OUTLINED_FUNCTION_104_0();
LABEL_12:
  if (v31)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v25);
  }

  if (v32)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v18 = OUTLINED_FUNCTION_103_0();
    __dst[0] = v27;
    LOBYTE(__dst[1]) = v26 & 1;
    v19 = GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.ErrorType.rawValue.getter(v18);
    MEMORY[0x193B18030](v19);
  }

  memcpy(__dst, v1 + 12, 0x142uLL);
  if (sub_1934A83E0(__dst) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    memcpy(v33, v1 + 12, 0x142uLL);
    sub_1934A84BC(v33, v34);
    GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.hash(into:)();
    memcpy(v34, v1 + 12, 0x142uLL);
    sub_1934D1634(v34);
  }

  memcpy(v34, v1 + 53, 0xBAuLL);
  if (sub_1934A83C4(v34) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.SpeculativeDecodingMetrics.hash(into:)();
  }

  sub_1934D1358(v0, v4);
  if (v6)
  {
    OUTLINED_FUNCTION_104_0();
    if (!v7)
    {
      goto LABEL_26;
    }

LABEL_29:
    OUTLINED_FUNCTION_104_0();
    if (!v9)
    {
      goto LABEL_27;
    }

LABEL_30:
    OUTLINED_FUNCTION_104_0();
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_103_0();
  MEMORY[0x193B18060](v5);
  if (v7)
  {
    goto LABEL_29;
  }

LABEL_26:
  OUTLINED_FUNCTION_103_0();
  MEMORY[0x193B18060](v23);
  if (v9)
  {
    goto LABEL_30;
  }

LABEL_27:
  OUTLINED_FUNCTION_103_0();
  MEMORY[0x193B18060](v24);
LABEL_31:
  OUTLINED_FUNCTION_116();
}

uint64_t GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1934C7704()
{
  sub_19393CAB0();
  GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.hash(into:)();
  return sub_19393CB00();
}

void GenerativeFunctionsInstrumentationMetadata.AssetAcquire.reason.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 41);
  OUTLINED_FUNCTION_5_2(a1);
}

__n128 GenerativeFunctionsInstrumentationMetadata.AssetAcquire.aneHintClientMetric.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[4].n128_u64[0];
  v3 = v1[4].n128_u8[8];
  v4 = v1[4].n128_u8[9];
  result = v1[3];
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u8[8] = v3;
  a1[1].n128_u8[9] = v4;
  return result;
}

void GenerativeFunctionsInstrumentationMetadata.AssetAcquire.aneHintClientMetric.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 25);
  *(v1 + 48) = *a1;
  OUTLINED_FUNCTION_134_2(v2);
}

void GenerativeFunctionsInstrumentationMetadata.AssetAcquire.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 256;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 256;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  *(a1 + 72) = 256;
  OUTLINED_FUNCTION_123_2();
}

uint64_t sub_1934C7858@<X0>(uint64_t *a1@<X8>)
{
  result = GenerativeFunctionsInstrumentationMetadata.AssetAcquire.Result.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1934C7880@<X0>(uint64_t *a1@<X8>)
{
  result = static GenerativeFunctionsInstrumentationMetadata.AssetAcquire.Result.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1934C7970@<X0>(uint64_t *a1@<X8>)
{
  result = GenerativeFunctionsInstrumentationMetadata.AssetAcquire.Reason.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1934C7998@<X0>(uint64_t *a1@<X8>)
{
  result = static GenerativeFunctionsInstrumentationMetadata.AssetAcquire.Reason.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t static GenerativeFunctionsInstrumentationMetadata.AssetAcquire.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = *(a1 + 24);
  v4 = a1[4];
  v5 = *(a1 + 40);
  v6 = *(a1 + 41);
  v8 = a1[6];
  v7 = a1[7];
  v9 = a1[8];
  v10 = *(a1 + 72);
  v11 = *(a1 + 73);
  v12 = *(a2 + 9);
  v13 = a2[2];
  v14 = *(a2 + 24);
  v15 = a2[4];
  v16 = *(a2 + 40);
  v17 = *(a2 + 41);
  v18 = a2[6];
  v19 = a2[7];
  v20 = a2[8];
  v21 = *(a2 + 72);
  v22 = *(a2 + 73);
  if (*(a1 + 9))
  {
    if ((*(a2 + 9) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 9))
    {
      return 0;
    }

    v48 = a1[8];
    v46 = *(a1 + 72);
    v52 = *a1;
    v53 = a1[1] & 1;
    v50 = *a2;
    v51 = a2[1] & 1;
    v44 = a1[7];
    v45 = a2[7];
    v43 = *(a2 + 72);
    v41 = a2[8];
    v42 = a1[6];
    v40 = a2[6];
    v38 = *(a2 + 41);
    v39 = *(a1 + 73);
    v23 = *(a2 + 73);
    v24 = a1[4];
    v25 = *(a1 + 40);
    v37 = *(a1 + 41);
    v26 = *(a2 + 40);
    v27 = a1[2];
    v28 = a2[2];
    v36 = GenerativeFunctionsInstrumentationMetadata.AssetAcquire.Result.rawValue.getter();
    v29 = GenerativeFunctionsInstrumentationMetadata.AssetAcquire.Result.rawValue.getter();
    v13 = v28;
    v6 = v37;
    v17 = v38;
    v2 = v27;
    v22 = v23;
    v11 = v39;
    v18 = v40;
    v20 = v41;
    v8 = v42;
    v21 = v43;
    LOBYTE(v7) = v44;
    LOBYTE(v19) = v45;
    v10 = v46;
    v9 = v48;
    if (v36 != v29)
    {
      return 0;
    }
  }

  if (v3)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (v2 == v13)
    {
      v30 = v14;
    }

    else
    {
      v30 = 1;
    }

    if (v30)
    {
      return 0;
    }
  }

  if (v6)
  {
    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v17)
    {
      return 0;
    }

    v49 = v9;
    v31 = v10;
    v32 = v20;
    v33 = v18;
    v47 = GenerativeFunctionsInstrumentationMetadata.AssetAcquire.Reason.rawValue.getter();
    v34 = GenerativeFunctionsInstrumentationMetadata.AssetAcquire.Reason.rawValue.getter();
    v18 = v33;
    v20 = v32;
    v10 = v31;
    v9 = v49;
    if (v47 != v34)
    {
      return 0;
    }
  }

  if (v11)
  {
    if (v22)
    {
      return 1;
    }
  }

  else if ((v22 & 1) == 0)
  {
    if (v7)
    {
      if ((v19 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v19 & 1 | (v8 != v18))
    {
      return 0;
    }

    if (v10)
    {
      if ((v21 & 1) == 0)
      {
        return 0;
      }
    }

    else if ((v21 & 1) != 0 || v9 != v20)
    {
      return 0;
    }

    return 1;
  }

  return 0;
}

void GenerativeFunctionsInstrumentationMetadata.AssetAcquire.hash(into:)()
{
  OUTLINED_FUNCTION_195();
  OUTLINED_FUNCTION_148_2();
  v21 = v0[2];
  v1 = *(v0 + 24);
  v2 = v0[4];
  v3 = *(v0 + 40);
  v22 = *(v0 + 41);
  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[8];
  v7 = *(v0 + 72);
  v8 = *(v0 + 73);
  if (v9 == 1)
  {
    OUTLINED_FUNCTION_104_0();
    if (!v1)
    {
LABEL_3:
      OUTLINED_FUNCTION_103_0();
      MEMORY[0x193B18060](v21);
      goto LABEL_6;
    }
  }

  else
  {
    v20 = v0[4];
    v19 = *(v0 + 73);
    v10 = v0[7];
    v4 = v0[6];
    v11 = v0[8];
    v12 = *(v0 + 8);
    v13 = *(v0 + 72);
    v14 = *v0;
    v15 = OUTLINED_FUNCTION_103_0();
    v7 = v13;
    v6 = v11;
    v5 = v4;
    LOBYTE(v4) = v10;
    v8 = v19;
    v16 = GenerativeFunctionsInstrumentationMetadata.AssetAcquire.Result.rawValue.getter(v15);
    MEMORY[0x193B18030](v16);
    if (!v1)
    {
      goto LABEL_3;
    }
  }

  OUTLINED_FUNCTION_104_0();
LABEL_6:
  if (v22)
  {
    OUTLINED_FUNCTION_104_0();
    if (v8)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v17 = OUTLINED_FUNCTION_103_0();
    v18 = GenerativeFunctionsInstrumentationMetadata.AssetAcquire.Reason.rawValue.getter(v17);
    MEMORY[0x193B18030](v18);
    if (v8)
    {
      goto LABEL_14;
    }
  }

  OUTLINED_FUNCTION_103_0();
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v5);
    if ((v7 & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_14:
    OUTLINED_FUNCTION_104_0();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_104_0();
  if (v7)
  {
    goto LABEL_14;
  }

LABEL_12:
  OUTLINED_FUNCTION_103_0();
  MEMORY[0x193B18060](v6);
LABEL_15:
  OUTLINED_FUNCTION_194();
}

uint64_t GenerativeFunctionsInstrumentationMetadata.AssetAcquire.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  GenerativeFunctionsInstrumentationMetadata.AssetAcquire.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1934C7E64()
{
  sub_19393CAB0();
  GenerativeFunctionsInstrumentationMetadata.AssetAcquire.hash(into:)();
  return sub_19393CB00();
}

void GenerativeFunctionsInstrumentationMetadata.AssetRelease.reason.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 41);
  OUTLINED_FUNCTION_5_2(a1);
}

void GenerativeFunctionsInstrumentationMetadata.AssetRelease.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 256;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 256;
  OUTLINED_FUNCTION_123_2();
}

uint64_t sub_1934C7F54@<X0>(uint64_t *a1@<X8>)
{
  result = GenerativeFunctionsInstrumentationMetadata.AssetRelease.Result.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1934C7F7C@<X0>(uint64_t *a1@<X8>)
{
  result = static GenerativeFunctionsInstrumentationMetadata.AssetRelease.Result.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1934C806C@<X0>(uint64_t *a1@<X8>)
{
  result = GenerativeFunctionsInstrumentationMetadata.AssetRelease.Reason.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1934C8094@<X0>(uint64_t *a1@<X8>)
{
  result = static GenerativeFunctionsInstrumentationMetadata.AssetRelease.Reason.allCases.getter();
  *a1 = result;
  return result;
}

void static GenerativeFunctionsInstrumentationMetadata.AssetRelease.== infix(_:_:)()
{
  OUTLINED_FUNCTION_195();
  v2 = v0[2];
  v3 = *(v0 + 24);
  v4 = v0[4];
  v5 = *(v0 + 40);
  v6 = *(v0 + 41);
  v7 = *(v1 + 9);
  v8 = v1[2];
  v9 = *(v1 + 24);
  v10 = v1[4];
  v11 = *(v1 + 40);
  v12 = *(v1 + 41);
  if (*(v0 + 9))
  {
    if ((*(v1 + 9) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (*(v1 + 9))
    {
      goto LABEL_16;
    }

    v16 = v0[4];
    v15 = *(v0 + 40);
    v19 = *v0;
    v20 = v0[1] & 1;
    v17 = *v1;
    v18 = v1[1] & 1;
    v13 = GenerativeFunctionsInstrumentationMetadata.AssetRelease.Result.rawValue.getter();
    if (v13 != GenerativeFunctionsInstrumentationMetadata.AssetRelease.Result.rawValue.getter())
    {
      goto LABEL_16;
    }
  }

  if (v3)
  {
    if (!v9)
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  if (v2 == v8)
  {
    v14 = v9;
  }

  else
  {
    v14 = 1;
  }

  if ((v14 & 1) == 0)
  {
LABEL_13:
    if ((v6 & 1) == 0 && (v12 & 1) == 0)
    {
      GenerativeFunctionsInstrumentationMetadata.AssetRelease.Reason.rawValue.getter();
      GenerativeFunctionsInstrumentationMetadata.AssetRelease.Reason.rawValue.getter();
    }
  }

LABEL_16:
  OUTLINED_FUNCTION_194();
}

void GenerativeFunctionsInstrumentationMetadata.AssetRelease.hash(into:)()
{
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_148_2();
  v1 = v0[2];
  v2 = *(v0 + 24);
  v3 = v0[4];
  v4 = *(v0 + 40);
  v5 = *(v0 + 41);
  if (v6 == 1)
  {
    OUTLINED_FUNCTION_104_0();
    if (!v2)
    {
      goto LABEL_3;
    }

LABEL_6:
    OUTLINED_FUNCTION_104_0();
    if (!v5)
    {
      goto LABEL_4;
    }

LABEL_7:
    OUTLINED_FUNCTION_104_0();
    goto LABEL_8;
  }

  v8 = *(v0 + 8);
  v9 = *v0;
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_179_0();
  v10 = GenerativeFunctionsInstrumentationMetadata.AssetRelease.Result.rawValue.getter();
  MEMORY[0x193B18030](v10);
  if (v2)
  {
    goto LABEL_6;
  }

LABEL_3:
  OUTLINED_FUNCTION_103_0();
  MEMORY[0x193B18060](v1);
  if (v5)
  {
    goto LABEL_7;
  }

LABEL_4:
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_179_0();
  v7 = GenerativeFunctionsInstrumentationMetadata.AssetRelease.Reason.rawValue.getter();
  MEMORY[0x193B18030](v7);
LABEL_8:
  OUTLINED_FUNCTION_114();
}

uint64_t GenerativeFunctionsInstrumentationMetadata.AssetRelease.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  GenerativeFunctionsInstrumentationMetadata.AssetRelease.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1934C839C()
{
  sub_19393CAB0();
  GenerativeFunctionsInstrumentationMetadata.AssetRelease.hash(into:)();
  return sub_19393CB00();
}

__n128 GenerativeFunctionsInstrumentationMetadata.AssetTransition.fileResidentInfo.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 112);
  v3 = *(v1 + 113);
  result = *(v1 + 80);
  v5 = *(v1 + 96);
  *a1 = result;
  *(a1 + 16) = v5;
  *(a1 + 32) = v2;
  *(a1 + 33) = v3;
  return result;
}

__n128 GenerativeFunctionsInstrumentationMetadata.AssetTransition.fileResidentInfo.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 33);
  result = *a1;
  v5 = *(a1 + 16);
  *(v1 + 80) = *a1;
  *(v1 + 96) = v5;
  *(v1 + 112) = v2;
  *(v1 + 113) = v3;
  return result;
}

uint64_t sub_1934C84BC@<X0>(uint64_t *a1@<X8>)
{
  result = GenerativeFunctionsInstrumentationMetadata.AssetTransition.Reason.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1934C84E4@<X0>(uint64_t *a1@<X8>)
{
  result = static GenerativeFunctionsInstrumentationMetadata.AssetTransition.Reason.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1934C85D4@<X0>(uint64_t *a1@<X8>)
{
  result = GenerativeFunctionsInstrumentationMetadata.AssetTransition.Result.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1934C85FC@<X0>(uint64_t *a1@<X8>)
{
  result = static GenerativeFunctionsInstrumentationMetadata.AssetTransition.Result.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1934C86EC@<X0>(uint64_t *a1@<X8>)
{
  result = GenerativeFunctionsInstrumentationMetadata.AssetTransition.LoadState.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1934C8714@<X0>(uint64_t *a1@<X8>)
{
  result = static GenerativeFunctionsInstrumentationMetadata.AssetTransition.LoadState.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationMetadata.AssetTransition.FileResidentInfo.residentRatio.setter(uint64_t result)
{
  *(v1 + 28) = result;
  *(v1 + 32) = BYTE4(result) & 1;
  return result;
}

uint64_t static GenerativeFunctionsInstrumentationMetadata.AssetTransition.FileResidentInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 32);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) == *(a2 + 16))
    {
      v4 = *(a2 + 24);
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  if (*(a1 + 32))
  {
    if ((*(a2 + 32) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 28) != *(a2 + 28))
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t GenerativeFunctionsInstrumentationMetadata.AssetTransition.FileResidentInfo.hash(into:)()
{
  OUTLINED_FUNCTION_51_5();
  v1 = v0[2];
  v2 = *(v0 + 24);
  v3 = *(v0 + 7);
  v4 = *(v0 + 32);
  if (v5 == 1)
  {
    sub_19393CAD0();
    if (!v2)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_19393CAD0();
    if (!v4)
    {
      goto LABEL_4;
    }

    return sub_19393CAD0();
  }

  v7 = *v0;
  sub_19393CAD0();
  MEMORY[0x193B18060](v7);
  if (v2)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_19393CAD0();
  MEMORY[0x193B18060](v1);
  if (!v4)
  {
LABEL_4:
    sub_19393CAD0();
    return sub_19393CAE0();
  }

  return sub_19393CAD0();
}

uint64_t GenerativeFunctionsInstrumentationMetadata.AssetTransition.FileResidentInfo.hashValue.getter()
{
  OUTLINED_FUNCTION_54_4();
  OUTLINED_FUNCTION_89_7(v0);
  sub_19393CAB0();
  GenerativeFunctionsInstrumentationMetadata.AssetTransition.FileResidentInfo.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1934C89E8()
{
  OUTLINED_FUNCTION_54_4();
  OUTLINED_FUNCTION_89_7(v0);
  sub_19393CAB0();
  GenerativeFunctionsInstrumentationMetadata.AssetTransition.FileResidentInfo.hash(into:)();
  return sub_19393CB00();
}

uint64_t static GenerativeFunctionsInstrumentationMetadata.AssetTransition.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v115 = *(a1 + 16);
  v113 = *(a1 + 24);
  v117 = *(a1 + 25);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 41);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 57);
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  v10 = *(a1 + 80);
  v11 = *(a1 + 96);
  v12 = *(a1 + 112);
  v13 = *(a1 + 113);
  v14 = *(a2 + 9);
  v112 = a2[2];
  v111 = *(a2 + 24);
  v15 = *(a2 + 25);
  v16 = a2[4];
  v17 = *(a2 + 40);
  v18 = *(a2 + 41);
  v19 = a2[6];
  v20 = *(a2 + 56);
  v21 = *(a2 + 57);
  v22 = a2[8];
  v23 = *(a2 + 72);
  v25 = a2[10];
  v24 = a2[11];
  v26 = a2[12];
  v27 = a2[13];
  v28 = *(a2 + 112);
  v29 = *(a2 + 113);
  if ((*(a1 + 9) & 1) == 0)
  {
    if (*(a2 + 9))
    {
      return 0;
    }

    v30 = *(a1 + 8);
    v68 = *(a1 + 112);
    v66 = a2[10];
    v67 = a2[13];
    v99 = *(a2 + 112);
    v31 = *a2;
    v92 = a2[11];
    v95 = a2[12];
    v32 = *(a2 + 8);
    *&v127[0] = *a1;
    BYTE8(v127[0]) = v30 & 1;
    v121 = v31;
    v122 = v32 & 1;
    v103 = v11;
    v107 = v10;
    v89 = v13;
    v86 = v8;
    v80 = v29;
    v83 = v9;
    v73 = v4;
    v75 = v3;
    v33 = v23;
    v77 = v21;
    v34 = v22;
    v35 = v5;
    v36 = v6;
    v37 = v7;
    v38 = v19;
    v72 = v16;
    v39 = v20;
    v65 = GenerativeFunctionsInstrumentationMetadata.AssetTransition.Reason.rawValue.getter();
    v40 = GenerativeFunctionsInstrumentationMetadata.AssetTransition.Reason.rawValue.getter();
    v20 = v39;
    v16 = v72;
    v19 = v38;
    v7 = v37;
    v6 = v36;
    v5 = v35;
    v22 = v34;
    v21 = v77;
    v29 = v80;
    v23 = v33;
    v4 = v73;
    v3 = v75;
    v12 = v68;
    v9 = v83;
    v8 = v86;
    v13 = v89;
    LOBYTE(v24) = v92;
    v26 = v95;
    v25 = v66;
    v27 = v67;
    v11 = v103;
    v10 = v107;
    v28 = v99;
    if (v65 != v40)
    {
      return 0;
    }

LABEL_6:
    if (v117)
    {
      if ((v15 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v15)
      {
        return 0;
      }

      *&v127[0] = v115;
      BYTE8(v127[0]) = v113 & 1;
      v121 = v112;
      v122 = v111 & 1;
      v100 = v28;
      v104 = v11;
      v108 = v10;
      v93 = v24;
      v96 = v26;
      v90 = v13;
      v87 = v8;
      v81 = v29;
      v84 = v9;
      v74 = v4;
      v76 = v3;
      v41 = v23;
      v116 = v22;
      v118 = v19;
      v71 = v17;
      v42 = v5;
      v43 = v6;
      v78 = v21;
      v44 = v7;
      v45 = v20;
      v114 = GenerativeFunctionsInstrumentationMetadata.AssetTransition.Result.rawValue.getter();
      v46 = GenerativeFunctionsInstrumentationMetadata.AssetTransition.Result.rawValue.getter();
      v20 = v45;
      v22 = v116;
      v19 = v118;
      v7 = v44;
      v21 = v78;
      v29 = v81;
      v6 = v43;
      v5 = v42;
      v17 = v71;
      v23 = v41;
      v4 = v74;
      v3 = v76;
      v9 = v84;
      v8 = v87;
      v13 = v90;
      LOBYTE(v24) = v93;
      v26 = v96;
      v11 = v104;
      v10 = v108;
      v28 = v100;
      if (v114 != v46)
      {
        return 0;
      }
    }

    if (v4)
    {
      if ((v18 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v18)
      {
        return 0;
      }

      *&v127[0] = v2;
      BYTE8(v127[0]) = v3 & 1;
      v121 = v16;
      v122 = v17 & 1;
      v69 = v12;
      v101 = v28;
      v105 = v11;
      v109 = v10;
      v94 = v24;
      v97 = v26;
      v91 = v13;
      v88 = v8;
      v82 = v29;
      v85 = v9;
      v47 = v23;
      v48 = v22;
      v49 = v5;
      v50 = v6;
      v51 = v7;
      v52 = v19;
      v79 = v21;
      v53 = v20;
      v119 = GenerativeFunctionsInstrumentationMetadata.AssetTransition.LoadState.rawValue.getter();
      v54 = GenerativeFunctionsInstrumentationMetadata.AssetTransition.LoadState.rawValue.getter();
      v20 = v53;
      v21 = v79;
      v29 = v82;
      v19 = v52;
      v7 = v51;
      v6 = v50;
      v5 = v49;
      v22 = v48;
      v23 = v47;
      v9 = v85;
      v8 = v88;
      v13 = v91;
      LOBYTE(v24) = v94;
      v26 = v97;
      v11 = v105;
      v10 = v109;
      v28 = v101;
      v12 = v69;
      if (v119 != v54)
      {
        return 0;
      }
    }

    if (v7)
    {
      if ((v21 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v21)
      {
        return 0;
      }

      *&v127[0] = v5;
      BYTE8(v127[0]) = v6 & 1;
      v121 = v19;
      v122 = v20 & 1;
      v70 = v12;
      v102 = v28;
      v106 = v11;
      v110 = v10;
      v98 = v26;
      v55 = v24;
      v56 = v13;
      v57 = v8;
      v58 = v9;
      v59 = v29;
      v60 = v23;
      v61 = v22;
      v120 = GenerativeFunctionsInstrumentationMetadata.AssetTransition.LoadState.rawValue.getter();
      v62 = GenerativeFunctionsInstrumentationMetadata.AssetTransition.LoadState.rawValue.getter();
      v22 = v61;
      v23 = v60;
      v29 = v59;
      v9 = v58;
      v8 = v57;
      v13 = v56;
      LOBYTE(v24) = v55;
      v26 = v98;
      v11 = v106;
      v10 = v110;
      v28 = v102;
      v12 = v70;
      if (v120 != v62)
      {
        return 0;
      }
    }

    if (v9)
    {
      if (!v23)
      {
        return 0;
      }
    }

    else
    {
      if (v8 == v22)
      {
        v63 = v23;
      }

      else
      {
        v63 = 1;
      }

      if (v63)
      {
        return 0;
      }
    }

    if (v13)
    {
      if ((v29 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      v127[0] = v10;
      v127[1] = v11;
      v128 = v12;
      v129 = 0;
      if (v29)
      {
        return 0;
      }

      v121 = v25;
      v122 = v24 & 1;
      v123 = v26;
      v124 = v27 & 1;
      v125 = HIDWORD(v27);
      v126 = v28 & 1;
      if ((static GenerativeFunctionsInstrumentationMetadata.AssetTransition.FileResidentInfo.== infix(_:_:)(v127, &v121) & 1) == 0)
      {
        return 0;
      }
    }

    return 1;
  }

  if (*(a2 + 9))
  {
    goto LABEL_6;
  }

  return 0;
}

void GenerativeFunctionsInstrumentationMetadata.AssetTransition.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v0[2];
  v4 = *(v0 + 24);
  v5 = *(v0 + 25);
  v13 = v0[4];
  v6 = *(v0 + 40);
  v7 = *(v0 + 41);
  v14 = *(v0 + 56);
  v8 = *(v0 + 57);
  v15 = v0[6];
  v16 = v0[8];
  v17 = *(v0 + 72);
  v18 = *(v0 + 5);
  v19 = *(v0 + 6);
  v20 = *(v0 + 56);
  if (*(v0 + 9) == 1)
  {
    OUTLINED_FUNCTION_104_0();
    if (!v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_146_2();
    v12 = GenerativeFunctionsInstrumentationMetadata.AssetTransition.Reason.rawValue.getter();
    MEMORY[0x193B18030](v12);
    if (!v5)
    {
LABEL_3:
      OUTLINED_FUNCTION_103_0();
      OUTLINED_FUNCTION_146_2();
      v9 = GenerativeFunctionsInstrumentationMetadata.AssetTransition.Result.rawValue.getter();
      MEMORY[0x193B18030](v9);
      if (!v7)
      {
        goto LABEL_4;
      }

LABEL_8:
      OUTLINED_FUNCTION_104_0();
      if (!v8)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  OUTLINED_FUNCTION_104_0();
  if (v7)
  {
    goto LABEL_8;
  }

LABEL_4:
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_146_2();
  v10 = GenerativeFunctionsInstrumentationMetadata.AssetTransition.LoadState.rawValue.getter();
  MEMORY[0x193B18030](v10);
  if (!v8)
  {
LABEL_5:
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_146_2();
    v11 = GenerativeFunctionsInstrumentationMetadata.AssetTransition.LoadState.rawValue.getter();
    MEMORY[0x193B18030](v11);
    goto LABEL_10;
  }

LABEL_9:
  OUTLINED_FUNCTION_104_0();
LABEL_10:
  if (v17)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v16);
  }

  sub_1934D1104();
  OUTLINED_FUNCTION_191();
}

uint64_t GenerativeFunctionsInstrumentationMetadata.AssetTransition.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  GenerativeFunctionsInstrumentationMetadata.AssetTransition.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1934C9070()
{
  sub_19393CAB0();
  GenerativeFunctionsInstrumentationMetadata.AssetTransition.hash(into:)();
  return sub_19393CB00();
}

void GenerativeFunctionsInstrumentationMetadata.ValidatorApplication.validator.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 4);
  v4 = *(v1 + 10);
  OUTLINED_FUNCTION_65_6(a1);
}

uint64_t GenerativeFunctionsInstrumentationMetadata.ValidatorApplication.validator.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 10);
  *v1 = *result;
  *(v1 + 8) = v2;
  *(v1 + 10) = v3;
  return result;
}

void GenerativeFunctionsInstrumentationMetadata.ValidatorApplication.outcome.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 26);
  OUTLINED_FUNCTION_65_6(a1);
}

uint64_t GenerativeFunctionsInstrumentationMetadata.ValidatorApplication.outcome.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 10);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  *(v1 + 26) = v3;
  return result;
}

void GenerativeFunctionsInstrumentationMetadata.ValidatorApplication.rejectionReason.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 42);
  OUTLINED_FUNCTION_65_6(a1);
}

uint64_t GenerativeFunctionsInstrumentationMetadata.ValidatorApplication.rejectionReason.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 10);
  *(v1 + 32) = *result;
  *(v1 + 40) = v2;
  *(v1 + 42) = v3;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationMetadata.ValidatorApplication.safetyAssets.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

uint64_t sub_1934C91F4@<X0>(uint64_t *a1@<X8>)
{
  result = GenerativeFunctionsInstrumentationMetadata.ValidatorApplication.Validator.ValidatorType.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_1934C921C@<X0>(char **a1@<X8>)
{
  result = static GenerativeFunctionsInstrumentationMetadata.ValidatorApplication.Validator.ValidatorType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1934C9398@<X0>(uint64_t *a1@<X8>)
{
  result = GenerativeFunctionsInstrumentationMetadata.ValidatorApplication.Outcome.OutcomeType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1934C93C0@<X0>(uint64_t *a1@<X8>)
{
  result = static GenerativeFunctionsInstrumentationMetadata.ValidatorApplication.Outcome.OutcomeType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1934C953C@<X0>(uint64_t *a1@<X8>)
{
  result = GenerativeFunctionsInstrumentationMetadata.ValidatorApplication.RejectionReason.ViolationCategory.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1934C9564@<X0>(uint64_t *a1@<X8>)
{
  result = static GenerativeFunctionsInstrumentationMetadata.ValidatorApplication.RejectionReason.ViolationCategory.allCases.getter();
  *a1 = result;
  return result;
}

void static GenerativeFunctionsInstrumentationMetadata.ValidatorApplication.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = *(a1 + 12);
  v4 = *(a1 + 26);
  v5 = a1[4];
  v6 = *(a1 + 20);
  v7 = *(a1 + 42);
  v8 = a1[6];
  v9 = *(a2 + 10);
  v10 = a2[2];
  v11 = *(a2 + 12);
  v12 = *(a2 + 26);
  v13 = a2[4];
  v14 = *(a2 + 20);
  v15 = *(a2 + 42);
  v16 = a2[6];
  if (*(a1 + 10))
  {
    if ((*(a2 + 10) & 1) == 0)
    {
LABEL_19:
      OUTLINED_FUNCTION_140_1();
      return;
    }
  }

  else
  {
    v17 = *a2;
    v18 = *(a2 + 4);
    v19 = *(a1 + 4);
    v36 = *a1;
    v37 = v19;
    v38 = 0;
    if (v9)
    {
      goto LABEL_19;
    }

    v34 = v17;
    v35 = v18 & 0x1FF;
    v33 = v15;
    v32 = v13;
    v31 = v6;
    v20 = v11;
    v21 = v3;
    v22 = v10;
    v23 = static GenerativeFunctionsInstrumentationMetadata.ValidatorApplication.Validator.== infix(_:_:)(&v36, &v34);
    v10 = v22;
    v3 = v21;
    LOBYTE(v11) = v20;
    v6 = v31;
    v13 = v32;
    v15 = v33;
    if (!v23)
    {
      goto LABEL_19;
    }
  }

  if (v4)
  {
    if ((v12 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v36 = v2;
    v37 = v3;
    v38 = 0;
    if (v12)
    {
      goto LABEL_19;
    }

    v34 = v10;
    LOBYTE(v35) = v11;
    OUTLINED_FUNCTION_174_0();
    if (!static GenerativeFunctionsInstrumentationMetadata.ValidatorApplication.Outcome.== infix(_:_:)(v24, v25))
    {
      goto LABEL_19;
    }
  }

  if (v7)
  {
    if ((v15 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v36 = v5;
    v37 = v6;
    v38 = 0;
    if (v15)
    {
      goto LABEL_19;
    }

    v34 = v13;
    LOBYTE(v35) = v14;
    OUTLINED_FUNCTION_174_0();
    if (!static GenerativeFunctionsInstrumentationMetadata.ValidatorApplication.RejectionReason.== infix(_:_:)(v26, v27))
    {
      goto LABEL_19;
    }
  }

  OUTLINED_FUNCTION_140_1();

  sub_19344FFB0(v28, v29);
}

uint64_t GenerativeFunctionsInstrumentationMetadata.ValidatorApplication.hash(into:)()
{
  OUTLINED_FUNCTION_108_0();
  v1 = v0[2];
  v2 = *(v0 + 12);
  v3 = *(v0 + 26);
  v4 = v0[4];
  v5 = *(v0 + 20);
  v6 = *(v0 + 42);
  if (*(v0 + 10) == 1)
  {
    OUTLINED_FUNCTION_104_0();
    if (v3)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v19 = *(v0 + 42);
    v7 = *(v0 + 20);
    v8 = v0[6];
    v9 = v0[4];
    v10 = *v0;
    v11 = *(v0 + 4);
    OUTLINED_FUNCTION_103_0();
    if ((v11 & 0x100) != 0)
    {
      OUTLINED_FUNCTION_104_0();
    }

    else
    {
      OUTLINED_FUNCTION_103_0();
      OUTLINED_FUNCTION_177_1();
      v12 = GenerativeFunctionsInstrumentationMetadata.ValidatorApplication.Validator.ValidatorType.rawValue.getter();
      MEMORY[0x193B18030](v12);
    }

    v5 = v7;
    v6 = v19;
    if (v3)
    {
LABEL_11:
      OUTLINED_FUNCTION_104_0();
      if (v6)
      {
        goto LABEL_14;
      }

      goto LABEL_12;
    }
  }

  OUTLINED_FUNCTION_103_0();
  if ((v2 & 0x100) != 0)
  {
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_177_1();
  v13 = GenerativeFunctionsInstrumentationMetadata.ValidatorApplication.Outcome.OutcomeType.rawValue.getter();
  MEMORY[0x193B18030](v13);
  if (v6)
  {
    goto LABEL_14;
  }

LABEL_12:
  OUTLINED_FUNCTION_103_0();
  if ((v5 & 0x100) == 0)
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_177_1();
    v14 = GenerativeFunctionsInstrumentationMetadata.ValidatorApplication.RejectionReason.ViolationCategory.rawValue.getter();
    MEMORY[0x193B18030](v14);
    goto LABEL_15;
  }

LABEL_14:
  OUTLINED_FUNCTION_104_0();
LABEL_15:
  OUTLINED_FUNCTION_187();
  OUTLINED_FUNCTION_107();

  return sub_1934D1240(v15, v16);
}

uint64_t sub_1934C99BC(void (*a1)(_BYTE *))
{
  OUTLINED_FUNCTION_119();
  a1(v3);
  return sub_19393CB00();
}

uint64_t sub_1934C9A1C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_19393CAB0();
  a4(v6);
  return sub_19393CB00();
}

uint64_t GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.inferenceEnvironmentInfo.getter@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_139_3(v4);
  memcpy(a1, (v1 + 96), 0x90uLL);
  return sub_1934486A4();
}

void *GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.inferenceEnvironmentInfo.setter(const void *a1)
{
  OUTLINED_FUNCTION_139_3(v4);
  sub_193442B60(v4, &qword_1EAE3B4F8, &qword_193952D08);
  return memcpy((v1 + 96), a1, 0x90uLL);
}

double GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.init()@<D0>(uint64_t a1@<X8>)
{
  sub_1934D1664(__src);
  v4 = 1;
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  memcpy(__dst, __src, sizeof(__dst));
  sub_193442B60(__dst, &qword_1EAE3B4F8, &qword_193952D08);
  memcpy((a1 + 96), __src, 0x90uLL);
  result = 0.0;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 256;
  return result;
}

__n128 GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.InferenceEnvironmentInfo.baseModel.setter(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  sub_1934D16DC(*v1, v1[1]);
  result = *a1;
  v6 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 1) = v6;
  return result;
}

__n128 GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.InferenceEnvironmentInfo.adapter.setter(uint64_t a1)
{
  v3 = v1[6];
  v4 = v1[7];
  sub_1934D16DC(v1[4], v1[5]);
  result = *a1;
  v6 = *(a1 + 16);
  *(v1 + 2) = *a1;
  *(v1 + 3) = v6;
  return result;
}

__n128 GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.InferenceEnvironmentInfo.draftModel.setter(uint64_t a1)
{
  v3 = v1[10];
  v4 = v1[11];
  sub_1934D16DC(v1[8], v1[9]);
  result = *a1;
  v6 = *(a1 + 16);
  *(v1 + 4) = *a1;
  *(v1 + 5) = v6;
  return result;
}

__n128 GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.InferenceEnvironmentInfo.tokenizer.setter(uint64_t a1)
{
  v3 = v1[14];
  v4 = v1[15];
  sub_1934D16DC(v1[12], v1[13]);
  result = *a1;
  v6 = *(a1 + 16);
  *(v1 + 6) = *a1;
  *(v1 + 7) = v6;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.InferenceEnvironmentInfo.cloudosVersion.getter()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.InferenceEnvironmentInfo.cloudosVersion.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 136);

  *(v1 + 128) = v2;
  *(v1 + 136) = v0;
  return result;
}

double GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.InferenceEnvironmentInfo.init()()
{
  v1 = OUTLINED_FUNCTION_8_4();
  sub_1934D16DC(v1, 1);
  *v0 = xmmword_1939526A0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  OUTLINED_FUNCTION_81_4();
  *(v0 + 32) = xmmword_1939526A0;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  OUTLINED_FUNCTION_81_4();
  *(v0 + 64) = xmmword_1939526A0;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  OUTLINED_FUNCTION_81_4();
  result = 0.0;
  *(v0 + 96) = xmmword_1939526A0;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.InferenceEnvironmentInfo.AssetInfo.name.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.InferenceEnvironmentInfo.AssetInfo.version.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t static GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.InferenceEnvironmentInfo.AssetInfo.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  if (a1[1])
  {
    if (!v4)
    {
      return 0;
    }

    OUTLINED_FUNCTION_155(a1, a2);
    v9 = v9 && v7 == v8;
    if (!v9 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 0;
  }

  if (v3)
  {
    if (v6)
    {
      if (v2 == v5 && v3 == v6)
      {
        return 1;
      }

      OUTLINED_FUNCTION_13_0();
      if (sub_19393CA30())
      {
        return 1;
      }
    }
  }

  else if (!v6)
  {
    return 1;
  }

  return 0;
}

uint64_t GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.InferenceEnvironmentInfo.AssetInfo.hash(into:)()
{
  v1 = v0[2];
  v2 = v0[3];
  if (!v0[1])
  {
    sub_19393CAD0();
    if (v2)
    {
      goto LABEL_3;
    }

    return sub_19393CAD0();
  }

  v3 = *v0;
  sub_19393CAD0();
  OUTLINED_FUNCTION_32_4();
  sub_19393C640();
  if (!v2)
  {
    return sub_19393CAD0();
  }

LABEL_3:
  sub_19393CAD0();

  return sub_19393C640();
}

uint64_t GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.InferenceEnvironmentInfo.AssetInfo.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  OUTLINED_FUNCTION_119();
  sub_19393CAD0();
  if (v2)
  {
    OUTLINED_FUNCTION_2_0();
    sub_19393C640();
  }

  sub_19393CAD0();
  if (v4)
  {
    OUTLINED_FUNCTION_116_3();
  }

  return sub_19393CB00();
}

uint64_t sub_1934CA214()
{
  v2 = *v0;
  v3 = v0[1];
  sub_19393CAB0();
  GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.InferenceEnvironmentInfo.AssetInfo.hash(into:)();
  return sub_19393CB00();
}

uint64_t static GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.InferenceEnvironmentInfo.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v148 = a1[5];
  v149 = a1[4];
  v151 = a1[6];
  v152 = a1[7];
  v143 = a1[9];
  v144 = a1[8];
  v145 = a1[10];
  v146 = a1[11];
  v6 = a1[12];
  v7 = a1[13];
  v9 = a1[14];
  v8 = a1[15];
  v10 = a1[16];
  v11 = a1[17];
  v12 = *a2;
  v13 = a2[1];
  v14 = a2[2];
  v15 = a2[3];
  v16 = a2[5];
  v147 = a2[4];
  v17 = a2[6];
  v150 = a2[7];
  v19 = a2[8];
  v18 = a2[9];
  v21 = a2[10];
  v20 = a2[11];
  v22 = a2[12];
  v23 = a2[13];
  v24 = a2[14];
  v25 = a2[15];
  v27 = a2[16];
  v26 = a2[17];
  if (v3 == 1)
  {
    v139 = a2[8];
    v140 = a2[10];
    v141 = a2[9];
    v142 = a2[11];
    v131 = a2[12];
    v132 = a2[14];
    v133 = a2[13];
    v134 = a2[15];
    v127 = a2[16];
    v128 = v10;
    v129 = a2[17];
    v130 = v11;
    v135 = v7;
    v136 = v6;
    v137 = v9;
    v138 = v8;
    v28 = OUTLINED_FUNCTION_184_1();
    sub_1934D1694(v28, v29);
    if (v13 == 1)
    {
      v30 = OUTLINED_FUNCTION_129_1();
      sub_1934D1694(v30, v31);
      v32 = OUTLINED_FUNCTION_184_1();
      sub_1934D16DC(v32, v33);
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_198();
LABEL_7:
    v153 = v2;
    v154 = v3;
    v155 = v4;
    v156 = v5;
    v157 = v12;
    v158 = v13;
    v159 = v14;
    v160 = v15;
LABEL_25:
    sub_193442B60(&v153, &qword_1EAE3B500, &qword_193952D10);
    return 0;
  }

  v153 = v2;
  v154 = v3;
  v155 = v4;
  v156 = v5;
  if (v13 == 1)
  {
    v34 = OUTLINED_FUNCTION_38_7();
    sub_1934D1694(v34, v35);
    v36 = OUTLINED_FUNCTION_129_1();
    sub_1934D1694(v36, v37);
    v38 = OUTLINED_FUNCTION_38_7();
    sub_1934D1694(v38, v39);

    goto LABEL_7;
  }

  v139 = v19;
  v140 = v21;
  v141 = v18;
  v142 = v20;
  v131 = v22;
  v132 = v24;
  v133 = v23;
  v134 = v25;
  v127 = v27;
  v128 = v10;
  v129 = v26;
  v130 = v11;
  v135 = v7;
  v136 = v6;
  v137 = v9;
  v138 = v8;
  v40 = OUTLINED_FUNCTION_185_1();
  v126 = static GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.InferenceEnvironmentInfo.AssetInfo.== infix(_:_:)(v40, v41);
  v42 = OUTLINED_FUNCTION_38_7();
  sub_1934D1694(v42, v43);
  OUTLINED_FUNCTION_198();
  v44 = OUTLINED_FUNCTION_38_7();
  sub_1934D1694(v44, v45);

  v46 = OUTLINED_FUNCTION_38_7();
  sub_1934D16DC(v46, v47);
  if ((v126 & 1) == 0)
  {
    return 0;
  }

LABEL_9:
  if (v148 == 1)
  {
    v48 = v149;
    v49 = OUTLINED_FUNCTION_129_1();
    v50 = v151;
    v51 = v152;
    sub_1934D1694(v49, v52);
    v53 = v17;
    if (v16 == 1)
    {
      OUTLINED_FUNCTION_170();
      sub_1934D1694(v54, v55);
      OUTLINED_FUNCTION_129_1();
      OUTLINED_FUNCTION_70_4();
      sub_1934D16DC(v56, v57);
      goto LABEL_17;
    }

    v58 = v16;
    v61 = v147;
    v67 = OUTLINED_FUNCTION_32_4();
    v62 = v150;
    sub_1934D1694(v67, v68);
LABEL_15:
    v153 = v48;
    v154 = v148;
    v155 = v50;
    v156 = v51;
    v157 = v61;
LABEL_24:
    v158 = v58;
    v159 = v53;
    v160 = v62;
    goto LABEL_25;
  }

  v48 = v149;
  v153 = v149;
  v154 = v148;
  v50 = v151;
  v51 = v152;
  v155 = v151;
  v156 = v152;
  v58 = v16;
  v53 = v17;
  if (v16 == 1)
  {
    v59 = OUTLINED_FUNCTION_36_9();
    sub_1934D1694(v59, v60);
    v61 = v147;
    OUTLINED_FUNCTION_170();
    v62 = v150;
    sub_1934D1694(v63, v64);
    v65 = OUTLINED_FUNCTION_36_9();
    sub_1934D1694(v65, v66);

    goto LABEL_15;
  }

  v69 = OUTLINED_FUNCTION_185_1();
  v71 = static GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.InferenceEnvironmentInfo.AssetInfo.== infix(_:_:)(v69, v70);
  v72 = OUTLINED_FUNCTION_36_9();
  sub_1934D1694(v72, v73);
  sub_1934D1694(v147, v16);
  v74 = OUTLINED_FUNCTION_36_9();
  sub_1934D1694(v74, v75);

  v76 = OUTLINED_FUNCTION_36_9();
  sub_1934D16DC(v76, v77);
  if ((v71 & 1) == 0)
  {
    return 0;
  }

LABEL_17:
  if (v143 == 1)
  {
    v79 = v144;
    v78 = v145;
    v80 = OUTLINED_FUNCTION_129_1();
    v81 = v146;
    sub_1934D1694(v80, v82);
    if (v141 == 1)
    {
      sub_1934D1694(v139, 1);
      OUTLINED_FUNCTION_129_1();
      OUTLINED_FUNCTION_70_4();
      sub_1934D16DC(v83, v84);
      goto LABEL_29;
    }

    v87 = v139;
    v53 = v140;
    v62 = v142;
    v58 = v141;
    sub_1934D1694(v139, v141);
    goto LABEL_23;
  }

  v79 = v144;
  v78 = v145;
  v153 = v144;
  v154 = v143;
  v81 = v146;
  v155 = v145;
  v156 = v146;
  if (v141 == 1)
  {
    v85 = OUTLINED_FUNCTION_17_1();
    v58 = 1;
    sub_1934D1694(v85, v86);
    v87 = v139;
    v53 = v140;
    OUTLINED_FUNCTION_170();
    v62 = v142;
    sub_1934D1694(v88, v89);
    v90 = OUTLINED_FUNCTION_17_1();
    sub_1934D1694(v90, v91);

LABEL_23:
    v153 = v79;
    v154 = v143;
    v155 = v78;
    v156 = v81;
    v157 = v87;
    goto LABEL_24;
  }

  v93 = OUTLINED_FUNCTION_185_1();
  v95 = static GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.InferenceEnvironmentInfo.AssetInfo.== infix(_:_:)(v93, v94);
  v96 = OUTLINED_FUNCTION_17_1();
  sub_1934D1694(v96, v97);
  OUTLINED_FUNCTION_197_0();
  v98 = OUTLINED_FUNCTION_17_1();
  sub_1934D1694(v98, v99);

  v100 = OUTLINED_FUNCTION_17_1();
  sub_1934D16DC(v100, v101);
  if ((v95 & 1) == 0)
  {
    return 0;
  }

LABEL_29:
  if (v135 != 1)
  {
    v153 = v136;
    v154 = v135;
    v105 = v138;
    v155 = v137;
    v156 = v138;
    if (v133 != 1)
    {
      v116 = OUTLINED_FUNCTION_185_1();
      v118 = static GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.InferenceEnvironmentInfo.AssetInfo.== infix(_:_:)(v116, v117);
      v119 = OUTLINED_FUNCTION_17_1();
      sub_1934D1694(v119, v120);
      OUTLINED_FUNCTION_197_0();
      v121 = OUTLINED_FUNCTION_17_1();
      sub_1934D1694(v121, v122);

      v123 = OUTLINED_FUNCTION_17_1();
      sub_1934D16DC(v123, v124);
      if ((v118 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_37;
    }

    v103 = v137;
    v104 = v136;
    v102 = v135;
    v108 = 1;
    sub_1934D1694(v136, v135);
    v110 = v131;
    v109 = v132;
    OUTLINED_FUNCTION_170();
    v111 = v134;
    sub_1934D1694(v112, v113);
    v114 = OUTLINED_FUNCTION_8_6();
    sub_1934D1694(v114, v115);

    goto LABEL_35;
  }

  v102 = 1;
  v104 = v136;
  v103 = v137;
  v105 = v138;
  sub_1934D1694(v136, 1);
  if (v133 != 1)
  {
    v110 = v131;
    v109 = v132;
    v111 = v134;
    v108 = v133;
    sub_1934D1694(v131, v133);
LABEL_35:
    v153 = v104;
    v154 = v102;
    v155 = v103;
    v156 = v105;
    v157 = v110;
    v158 = v108;
    v159 = v109;
    v160 = v111;
    goto LABEL_25;
  }

  sub_1934D1694(v131, 1);
  OUTLINED_FUNCTION_69_1();
  sub_1934D16DC(v106, v107);
LABEL_37:
  if (v130)
  {
    if (v129)
    {
      v125 = v128 == v127 && v130 == v129;
      if (v125 || (sub_19393CA30() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v129)
  {
    return 1;
  }

  return 0;
}

void GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.InferenceEnvironmentInfo.hash(into:)()
{
  OUTLINED_FUNCTION_77_1();
  v1 = v0[1];
  v2 = v0[5];
  v18 = v0[4];
  v19 = v0[6];
  v21 = v0[7];
  v3 = v0[8];
  v4 = v0[9];
  v20 = v0[10];
  v22 = v0[11];
  v6 = v0[12];
  v5 = v0[13];
  v7 = v0[15];
  v8 = v0[16];
  v9 = v0[17];
  if (v1 == 1)
  {
    sub_19393CAD0();
  }

  else
  {
    v16 = v0[12];
    v17 = v0[15];
    v10 = v0[13];
    v11 = v0[14];
    v12 = *v0;
    v13 = v0[3];
    v15 = v0[2];
    sub_19393CAD0();
    sub_19393CAD0();
    if (v1)
    {
      sub_19393C640();
    }

    v5 = v10;
    sub_19393CAD0();
    if (v13)
    {
      sub_19393C640();
    }

    v7 = v17;
  }

  if (v2 == 1)
  {
    goto LABEL_13;
  }

  sub_19393CAD0();
  sub_19393CAD0();
  if (v2)
  {
    sub_19393C640();
  }

  if (!v21)
  {
LABEL_13:
    sub_19393CAD0();
  }

  else
  {
    sub_19393CAD0();
    sub_19393C640();
  }

  if (v4 == 1)
  {
    goto LABEL_19;
  }

  sub_19393CAD0();
  sub_19393CAD0();
  if (v4)
  {
    sub_19393C640();
  }

  if (!v22)
  {
LABEL_19:
    sub_19393CAD0();
  }

  else
  {
    sub_19393CAD0();
    sub_19393C640();
  }

  if (v5 == 1)
  {
    goto LABEL_26;
  }

  sub_19393CAD0();
  if (v5)
  {
    sub_19393CAD0();
    sub_19393C640();
    if (v7)
    {
      goto LABEL_23;
    }

LABEL_26:
    sub_19393CAD0();
    if (!v9)
    {
      goto LABEL_24;
    }

    goto LABEL_27;
  }

  sub_19393CAD0();
  if (!v7)
  {
    goto LABEL_26;
  }

LABEL_23:
  sub_19393CAD0();
  sub_19393C640();
  if (!v9)
  {
LABEL_24:
    sub_19393CAD0();
    OUTLINED_FUNCTION_196();
    return;
  }

LABEL_27:
  sub_19393CAD0();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_196();

  sub_19393C640();
}

uint64_t GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.InferenceEnvironmentInfo.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.InferenceEnvironmentInfo.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1934CAB10()
{
  sub_19393CAB0();
  GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.InferenceEnvironmentInfo.hash(into:)();
  return sub_19393CB00();
}

uint64_t GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.PrivateCloudSpeculativeDecodingMetrics.speculativeDecodingAcceptanceRate.setter(uint64_t result)
{
  *v1 = result;
  *(v1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.PrivateCloudSpeculativeDecodingMetrics.draftModelInferenceCallCount.setter(uint64_t result)
{
  *(v1 + 8) = result;
  *(v1 + 12) = BYTE4(result) & 1;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.PrivateCloudSpeculativeDecodingMetrics.draftOutputTokenCount.setter(uint64_t result)
{
  *(v1 + 24) = result;
  *(v1 + 28) = BYTE4(result) & 1;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.PrivateCloudSpeculativeDecodingMetrics.targetOutputTokenCount.setter(uint64_t result)
{
  *(v1 + 32) = result;
  *(v1 + 36) = BYTE4(result) & 1;
  return result;
}

void GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.PrivateCloudSpeculativeDecodingMetrics.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 4) = 1;
  *(a1 + 8) = 0;
  *(a1 + 12) = 1;
  *(a1 + 16) = 0;
  *(a1 + 20) = 1;
  *(a1 + 24) = 0;
  *(a1 + 28) = 1;
  *(a1 + 32) = 0;
  *(a1 + 36) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  *(a1 + 72) = 0;
  *(a1 + 80) = 1;
}

void static GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.PrivateCloudSpeculativeDecodingMetrics.== infix(_:_:)()
{
  OUTLINED_FUNCTION_108_0();
  v11 = *(v0 + 72);
  v2 = *(v1 + 4);
  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  if (*(v0 + 4))
  {
    if (!*(v1 + 4))
    {
      goto LABEL_50;
    }
  }

  else
  {
    if (*v0 != *v1)
    {
      v2 = 1;
    }

    if (v2)
    {
      goto LABEL_50;
    }
  }

  if (*(v0 + 12))
  {
    if (!*(v1 + 12))
    {
      goto LABEL_50;
    }
  }

  else
  {
    if (*(v0 + 8) == *(v1 + 8))
    {
      v5 = *(v1 + 12);
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      goto LABEL_50;
    }
  }

  if (*(v0 + 20))
  {
    if (!*(v1 + 20))
    {
      goto LABEL_50;
    }
  }

  else
  {
    if (*(v0 + 16) == *(v1 + 16))
    {
      v6 = *(v1 + 20);
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      goto LABEL_50;
    }
  }

  if (*(v0 + 28))
  {
    if (!*(v1 + 28))
    {
      goto LABEL_50;
    }
  }

  else
  {
    if (*(v0 + 24) == *(v1 + 24))
    {
      v7 = *(v1 + 28);
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      goto LABEL_50;
    }
  }

  if (*(v0 + 36))
  {
    if (!*(v1 + 36))
    {
      goto LABEL_50;
    }
  }

  else
  {
    if (*(v0 + 32) == *(v1 + 32))
    {
      v8 = *(v1 + 36);
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      goto LABEL_50;
    }
  }

  if (*(v0 + 48))
  {
    if (!*(v1 + 48))
    {
      goto LABEL_50;
    }
  }

  else
  {
    if (*(v0 + 40) == *(v1 + 40))
    {
      v9 = *(v1 + 48);
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      goto LABEL_50;
    }
  }

  if (*(v0 + 64))
  {
    if (!*(v1 + 64))
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

  if (*(v0 + 56) == *(v1 + 56))
  {
    v10 = *(v1 + 64);
  }

  else
  {
    v10 = 1;
  }

  if ((v10 & 1) == 0)
  {
LABEL_49:
    *(v0 + 80);
  }

LABEL_50:
  OUTLINED_FUNCTION_107();
}

void GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.PrivateCloudSpeculativeDecodingMetrics.hash(into:)()
{
  OUTLINED_FUNCTION_108_0();
  OUTLINED_FUNCTION_77_1();
  v1 = *(v0 + 12);
  v18 = v0[2];
  v19 = v0[4];
  v20 = v0[6];
  v21 = *(v0 + 20);
  v22 = *(v0 + 28);
  v2 = *(v0 + 36);
  v3 = *(v0 + 5);
  v4 = *(v0 + 48);
  v5 = *(v0 + 7);
  v6 = *(v0 + 64);
  v7 = *(v0 + 9);
  v8 = *(v0 + 80);
  if (*(v0 + 4) == 1)
  {
    sub_19393CAD0();
    if (!v1)
    {
LABEL_3:
      sub_19393CAD0();
      sub_19393CAE0();
      goto LABEL_6;
    }
  }

  else
  {
    v17 = *(v0 + 36);
    v9 = v0[8];
    v10 = *(v0 + 48);
    v11 = *(v0 + 5);
    v12 = *(v0 + 64);
    v13 = *(v0 + 7);
    v14 = *(v0 + 80);
    v15 = *(v0 + 9);
    v16 = *v0;
    sub_19393CAD0();
    v7 = v15;
    v8 = v14;
    v5 = v13;
    v6 = v12;
    v3 = v11;
    v4 = v10;
    v2 = v17;
    sub_19393CAE0();
    if (!v1)
    {
      goto LABEL_3;
    }
  }

  sub_19393CAD0();
LABEL_6:
  sub_19393CAD0();
  if (!v21)
  {
    sub_19393CAE0();
  }

  if (v22)
  {
    sub_19393CAD0();
    if (!v2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    sub_19393CAD0();
    sub_19393CAE0();
    if (!v2)
    {
LABEL_10:
      sub_19393CAD0();
      sub_19393CAE0();
      if (!v4)
      {
        goto LABEL_11;
      }

      goto LABEL_16;
    }
  }

  sub_19393CAD0();
  if (!v4)
  {
LABEL_11:
    sub_19393CAD0();
    MEMORY[0x193B18060](v3);
    if (!v6)
    {
      goto LABEL_12;
    }

LABEL_17:
    sub_19393CAD0();
    if (!v8)
    {
      goto LABEL_13;
    }

LABEL_18:
    sub_19393CAD0();
    goto LABEL_19;
  }

LABEL_16:
  sub_19393CAD0();
  if (v6)
  {
    goto LABEL_17;
  }

LABEL_12:
  sub_19393CAD0();
  MEMORY[0x193B18060](v5);
  if (v8)
  {
    goto LABEL_18;
  }

LABEL_13:
  sub_19393CAD0();
  MEMORY[0x193B18060](v7);
LABEL_19:
  OUTLINED_FUNCTION_107();
}

uint64_t GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.PrivateCloudSpeculativeDecodingMetrics.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.PrivateCloudSpeculativeDecodingMetrics.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1934CB0C8()
{
  sub_19393CAB0();
  GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.PrivateCloudSpeculativeDecodingMetrics.hash(into:)();
  return sub_19393CB00();
}

void static GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117_6();
  OUTLINED_FUNCTION_91_0();
  v3 = *v2;
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  v8 = *(v2 + 40);
  v9 = *(v2 + 48);
  v38 = *(v2 + 64);
  v40 = *(v2 + 72);
  v41 = *(v2 + 56);
  v35 = *(v2 + 80);
  v39 = *(v2 + 88);
  OUTLINED_FUNCTION_139_3(v49);
  v33 = *(v1 + 321);
  v10 = *v0;
  v11 = *(v0 + 8);
  v12 = *(v0 + 16);
  v13 = *(v0 + 24);
  v14 = *(v0 + 32);
  v15 = *(v0 + 40);
  v16 = *(v0 + 48);
  v17 = *(v0 + 56);
  v36 = *(v0 + 64);
  v18 = *(v0 + 72);
  v34 = *(v0 + 80);
  v37 = *(v0 + 88);
  OUTLINED_FUNCTION_167_0(v50);
  if (v4)
  {
    if (!v11)
    {
      goto LABEL_49;
    }
  }

  else
  {
    if (v3 == v10)
    {
      v19 = v11;
    }

    else
    {
      v19 = 1;
    }

    if (v19)
    {
      goto LABEL_49;
    }
  }

  if (v6)
  {
    if (!v13)
    {
      goto LABEL_49;
    }
  }

  else
  {
    if (v5 == v12)
    {
      v20 = v13;
    }

    else
    {
      v20 = 1;
    }

    if (v20)
    {
      goto LABEL_49;
    }
  }

  if (v8)
  {
    if (!v15)
    {
      goto LABEL_49;
    }
  }

  else
  {
    if (v7 == v14)
    {
      v21 = v15;
    }

    else
    {
      v21 = 1;
    }

    if (v21)
    {
      goto LABEL_49;
    }
  }

  if (v41)
  {
    if (!v17)
    {
      goto LABEL_49;
    }
  }

  else
  {
    if (v9 == v16)
    {
      v22 = v17;
    }

    else
    {
      v22 = 1;
    }

    if (v22)
    {
      goto LABEL_49;
    }
  }

  if (v40)
  {
    if (!v18)
    {
      goto LABEL_49;
    }
  }

  else
  {
    if (v38 == v36)
    {
      v23 = v18;
    }

    else
    {
      v23 = 1;
    }

    if (v23)
    {
      goto LABEL_49;
    }
  }

  if (v39)
  {
    if (!v37)
    {
      goto LABEL_49;
    }

LABEL_42:
    v25 = *(v0 + 321);
    OUTLINED_FUNCTION_139_3(__src);
    OUTLINED_FUNCTION_167_0(&__src[144]);
    OUTLINED_FUNCTION_139_3(v48);
    if (sub_1934A8518(v48) == 1)
    {
      OUTLINED_FUNCTION_167_0(__dst);
      if (sub_1934A8518(__dst) == 1)
      {
        OUTLINED_FUNCTION_139_3(v46);
        OUTLINED_FUNCTION_112_5();
        OUTLINED_FUNCTION_112_5();
        OUTLINED_FUNCTION_175();
        sub_193442B60(v26, v27, v28);
LABEL_51:
        if ((v33 & 1) == 0)
        {
          memcpy(__src, (v1 + 240), 0x51uLL);
          __src[81] = v33;
          if ((v25 & 1) == 0)
          {
            static GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.PrivateCloudSpeculativeDecodingMetrics.== infix(_:_:)();
          }
        }

        goto LABEL_49;
      }

      OUTLINED_FUNCTION_75_0();
      sub_1934486A4();
      OUTLINED_FUNCTION_75_0();
      sub_1934486A4();
    }

    else
    {
      OUTLINED_FUNCTION_139_3(v46);
      OUTLINED_FUNCTION_167_0(__dst);
      if (sub_1934A8518(__dst) != 1)
      {
        OUTLINED_FUNCTION_112_5();
        OUTLINED_FUNCTION_112_5();
        OUTLINED_FUNCTION_112_5();
        v29 = static GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.InferenceEnvironmentInfo.== infix(_:_:)((v1 + 96), (v0 + 96));
        OUTLINED_FUNCTION_167_0(v42);
        sub_1934D1724(v42);
        OUTLINED_FUNCTION_139_3(v43);
        sub_1934D1724(v43);
        OUTLINED_FUNCTION_139_3(v44);
        OUTLINED_FUNCTION_175();
        sub_193442B60(v30, v31, v32);
        if ((v29 & 1) == 0)
        {
          goto LABEL_49;
        }

        goto LABEL_51;
      }

      OUTLINED_FUNCTION_139_3(v44);
      OUTLINED_FUNCTION_75_0();
      sub_1934486A4();
      OUTLINED_FUNCTION_75_0();
      sub_1934486A4();
      OUTLINED_FUNCTION_75_0();
      sub_1934486A4();
      sub_1934D1724(v44);
    }

    memcpy(__dst, __src, sizeof(__dst));
    sub_193442B60(__dst, &qword_1EAE3B508, &qword_193952D18);
    goto LABEL_49;
  }

  v24 = v37;
  if (v35 != v34)
  {
    v24 = 1;
  }

  if ((v24 & 1) == 0)
  {
    goto LABEL_42;
  }

LABEL_49:
  OUTLINED_FUNCTION_118_2();
}

void GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.hash(into:)()
{
  OUTLINED_FUNCTION_117();
  v1 = *(v0 + 24);
  v19 = v0[2];
  v20 = v0[4];
  v2 = v0[6];
  v21 = *(v0 + 40);
  v22 = *(v0 + 56);
  v3 = v0[8];
  v4 = *(v0 + 72);
  v5 = v0[10];
  v6 = *(v0 + 88);
  v7 = *(v0 + 321);
  if (*(v0 + 8) == 1)
  {
    OUTLINED_FUNCTION_104_0();
    if (!v1)
    {
LABEL_3:
      OUTLINED_FUNCTION_103_0();
      v8 = OUTLINED_FUNCTION_76_4(v19);
      MEMORY[0x193B18060](v8);
      goto LABEL_9;
    }
  }

  else
  {
    v18 = v0[6];
    v9 = *(v0 + 72);
    v10 = v0[8];
    v11 = *(v0 + 88);
    v12 = v0[10];
    v13 = *(v0 + 321);
    v14 = *v0;
    OUTLINED_FUNCTION_103_0();
    if ((v14 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v7 = v13;
    v5 = v12;
    v6 = v11;
    v3 = v10;
    v4 = v9;
    v2 = v18;
    MEMORY[0x193B18060](v15);
    if (!v1)
    {
      goto LABEL_3;
    }
  }

  OUTLINED_FUNCTION_104_0();
LABEL_9:
  if (v21)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    v16 = OUTLINED_FUNCTION_76_4(v20);
    MEMORY[0x193B18060](v16);
  }

  if (v22)
  {
    OUTLINED_FUNCTION_104_0();
    if (!v4)
    {
      goto LABEL_14;
    }

LABEL_20:
    OUTLINED_FUNCTION_104_0();
    if (!v6)
    {
      goto LABEL_15;
    }

    goto LABEL_21;
  }

  OUTLINED_FUNCTION_103_0();
  if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v17 = v2;
  }

  else
  {
    v17 = 0;
  }

  MEMORY[0x193B18060](v17);
  if (v4)
  {
    goto LABEL_20;
  }

LABEL_14:
  OUTLINED_FUNCTION_103_0();
  MEMORY[0x193B18060](v3);
  if (!v6)
  {
LABEL_15:
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v5);
    goto LABEL_22;
  }

LABEL_21:
  OUTLINED_FUNCTION_104_0();
LABEL_22:
  memcpy(v25, v0 + 12, 0x90uLL);
  if (sub_1934A8518(v25) != 1)
  {
    OUTLINED_FUNCTION_103_0();
    memcpy(__dst, v0 + 12, sizeof(__dst));
    sub_1934A853C(__dst, v24);
    GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.InferenceEnvironmentInfo.hash(into:)();
    memcpy(v24, v0 + 12, sizeof(v24));
    sub_1934D1724(v24);
    if ((v7 & 1) == 0)
    {
      goto LABEL_24;
    }

LABEL_26:
    OUTLINED_FUNCTION_104_0();
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_104_0();
  if (v7)
  {
    goto LABEL_26;
  }

LABEL_24:
  OUTLINED_FUNCTION_103_0();
  GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.PrivateCloudSpeculativeDecodingMetrics.hash(into:)();
LABEL_27:
  OUTLINED_FUNCTION_116();
}

uint64_t GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1934CB6A8()
{
  sub_19393CAB0();
  GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.hash(into:)();
  return sub_19393CB00();
}

uint64_t GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.onBehalfOfBundleIdentifier.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.onBehalfOfBundleIdentifier.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 48);

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.createdByBundleIdentifier.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.createdByBundleIdentifier.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 80);

  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  return result;
}

void GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.sessionEventResult.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 96);
  v3 = *(v1 + 104);
  v4 = *(v1 + 105);
  OUTLINED_FUNCTION_5_2(a1);
}

uint64_t sub_1934CB8A4@<X0>(uint64_t *a1@<X8>)
{
  result = GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.SessionEventType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1934CB8CC@<X0>(uint64_t *a1@<X8>)
{
  result = static GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.SessionEventType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1934CB9BC@<X0>(uint64_t *a1@<X8>)
{
  result = GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.SessionEventResult.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1934CB9E4@<X0>(uint64_t *a1@<X8>)
{
  result = static GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.SessionEventResult.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t static GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  v10 = *(a1 + 80);
  v11 = *(a1 + 88);
  v12 = *(a1 + 96);
  v13 = *(a1 + 104);
  v14 = *(a1 + 105);
  v15 = *(a2 + 9);
  v16 = *(a2 + 16);
  v59 = *(a2 + 24);
  v17 = *(a2 + 32);
  v19 = *(a2 + 40);
  v18 = *(a2 + 48);
  v20 = *(a2 + 56);
  v21 = *(a2 + 64);
  v23 = *(a2 + 72);
  v22 = *(a2 + 80);
  v24 = *(a2 + 88);
  v25 = *(a2 + 96);
  v26 = *(a2 + 104);
  v27 = *(a2 + 105);
  if (*(a1 + 9))
  {
    v50 = *(a2 + 32);
    v51 = *(a1 + 32);
    v49 = *(a1 + 24);
    v52 = *(a2 + 40);
    v53 = *(a2 + 48);
    v44 = *(a2 + 56);
    v45 = *(a1 + 56);
    v54 = *(a1 + 48);
    v55 = *(a1 + 80);
    v46 = *(a1 + 40);
    v47 = *(a2 + 64);
    v48 = *(a1 + 64);
    v43 = *(a2 + 72);
    v56 = *(a1 + 72);
    v57 = *(a2 + 80);
    if ((*(a2 + 9) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 9))
    {
      return 0;
    }

    v50 = *(a2 + 32);
    v51 = *(a1 + 32);
    v49 = *(a1 + 24);
    v52 = *(a2 + 40);
    v53 = *(a2 + 48);
    v44 = *(a2 + 56);
    v45 = *(a1 + 56);
    v54 = *(a1 + 48);
    v55 = *(a1 + 80);
    v46 = *(a1 + 40);
    v47 = *(a2 + 64);
    v48 = *(a1 + 64);
    v43 = *(a2 + 72);
    v56 = *(a1 + 72);
    v57 = *(a2 + 80);
    v28 = OUTLINED_FUNCTION_178_0(a1, a2);
    v29 = GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.SessionEventType.rawValue.getter(v28);
    if (v29 != GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.SessionEventType.rawValue.getter(v29))
    {
      return 0;
    }
  }

  result = sub_19344FC94(v3, v16);
  if ((result & 1) == 0)
  {
    return 0;
  }

  if (v51)
  {
    v32 = v55;
    v31 = v56;
    v33 = v57;
    v34 = v52;
    v35 = v53;
    if (!v50)
    {
      return 0;
    }
  }

  else
  {
    v33 = v57;
    v36 = v50;
    if (v49 != v59)
    {
      v36 = 1;
    }

    v32 = v55;
    v31 = v56;
    v34 = v52;
    v35 = v53;
    if (v36)
    {
      return 0;
    }
  }

  if (v54)
  {
    if (!v35)
    {
      return 0;
    }

    result = v46;
    if (v46 != v34 || v54 != v35)
    {
      v58 = v33;
      v38 = v31;
      v39 = v32;
      result = sub_19393CA30();
      v33 = v58;
      v32 = v39;
      v31 = v38;
      if ((result & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v35)
  {
    return 0;
  }

  if (v48)
  {
    if (!v47)
    {
      return 0;
    }
  }

  else
  {
    v40 = v47;
    if (v45 != v44)
    {
      v40 = 1;
    }

    if (v40)
    {
      return 0;
    }
  }

  if (!v32)
  {
    if (!v33)
    {
      goto LABEL_37;
    }

    return 0;
  }

  if (!v33)
  {
    return 0;
  }

  if (v31 != v43 || v32 != v33)
  {
    result = sub_19393CA30();
    if ((result & 1) == 0)
    {
      return 0;
    }
  }

LABEL_37:
  if (v11 == 2)
  {
    if (v24 != 2)
    {
      return 0;
    }

LABEL_42:
    if (v14)
    {
      if ((v27 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v27)
      {
        return 0;
      }

      v42 = GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.SessionEventResult.rawValue.getter(result);
      if (v42 != GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.SessionEventResult.rawValue.getter(v42))
      {
        return 0;
      }
    }

    return 1;
  }

  result = 0;
  if (v24 != 2 && ((v24 ^ v11) & 1) == 0)
  {
    goto LABEL_42;
  }

  return result;
}

void GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.hash(into:)()
{
  OUTLINED_FUNCTION_148_2();
  v2 = v1[3];
  v25 = v1[2];
  v24 = *(v1 + 32);
  v3 = v1[6];
  v23 = v1[5];
  v4 = v1[7];
  v5 = *(v1 + 64);
  v7 = v1[9];
  v6 = v1[10];
  v8 = *(v1 + 88);
  v9 = v1[12];
  v22 = *(v1 + 104);
  v26 = *(v1 + 105);
  if (v10 == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v20 = *(v1 + 64);
    v11 = v1[12];
    v12 = *(v1 + 8);
    v21 = v1[7];
    v13 = *(v1 + 88);
    v14 = v1[3];
    v15 = *v1;
    v16 = OUTLINED_FUNCTION_103_0();
    v2 = v14;
    v8 = v13;
    v5 = v20;
    v17 = GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.SessionEventType.rawValue.getter(v16);
    MEMORY[0x193B18030](v17);
  }

  sub_1934D11C8(v0, v25);
  if (v24)
  {
    OUTLINED_FUNCTION_104_0();
    if (v3)
    {
      goto LABEL_6;
    }
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v2);
    if (v3)
    {
LABEL_6:
      OUTLINED_FUNCTION_103_0();
      sub_19393C640();
      if (v5)
      {
        goto LABEL_7;
      }

LABEL_11:
      OUTLINED_FUNCTION_103_0();
      MEMORY[0x193B18060](v4);
      if (v6)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }
  }

  OUTLINED_FUNCTION_104_0();
  if (!v5)
  {
    goto LABEL_11;
  }

LABEL_7:
  OUTLINED_FUNCTION_104_0();
  if (v6)
  {
LABEL_8:
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_102_4();
    sub_19393C640();
    goto LABEL_13;
  }

LABEL_12:
  OUTLINED_FUNCTION_104_0();
LABEL_13:
  if (v8 != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  if (v26)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v18 = OUTLINED_FUNCTION_103_0();
    v19 = GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.SessionEventResult.rawValue.getter(v18);
    MEMORY[0x193B18030](v19);
  }

  OUTLINED_FUNCTION_196();
}

uint64_t GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1934CBFA0()
{
  sub_19393CAB0();
  GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.hash(into:)();
  return sub_19393CB00();
}

uint64_t GenerativeFunctionsInstrumentationMetadata.SummarizationEvent.styles.setter(uint64_t a1)
{
  v3 = *(v1 + 112);

  *(v1 + 112) = a1;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationMetadata.SummarizationEvent.recipientsLength.getter()
{
  result = *(v0 + 288);
  v2 = *(v0 + 296);
  return result;
}

uint64_t GenerativeFunctionsInstrumentationMetadata.SummarizationEvent.recipientsLength.setter(uint64_t result, char a2)
{
  *(v2 + 288) = result;
  *(v2 + 296) = a2 & 1;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationMetadata.SummarizationEvent.attachmentsLength.getter()
{
  result = *(v0 + 304);
  v2 = *(v0 + 312);
  return result;
}

uint64_t GenerativeFunctionsInstrumentationMetadata.SummarizationEvent.attachmentsLength.setter(uint64_t result, char a2)
{
  *(v2 + 304) = result;
  *(v2 + 312) = a2 & 1;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationMetadata.SummarizationEvent.languageDetected.getter()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 328);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t GenerativeFunctionsInstrumentationMetadata.SummarizationEvent.languageDetected.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 328);

  *(v1 + 320) = v2;
  *(v1 + 328) = v0;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationMetadata.SummarizationEvent.numChunks.getter()
{
  result = *(v0 + 336);
  v2 = *(v0 + 344);
  return result;
}

uint64_t GenerativeFunctionsInstrumentationMetadata.SummarizationEvent.numChunks.setter(uint64_t result, char a2)
{
  *(v2 + 336) = result;
  *(v2 + 344) = a2 & 1;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationMetadata.SummarizationEvent.numRetries.getter()
{
  result = *(v0 + 352);
  v2 = *(v0 + 360);
  return result;
}

uint64_t GenerativeFunctionsInstrumentationMetadata.SummarizationEvent.numRetries.setter(uint64_t result, char a2)
{
  *(v2 + 352) = result;
  *(v2 + 360) = a2 & 1;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationMetadata.SummarizationEvent.numGMSCalls.getter()
{
  result = *(v0 + 368);
  v2 = *(v0 + 376);
  return result;
}

uint64_t GenerativeFunctionsInstrumentationMetadata.SummarizationEvent.numGMSCalls.setter(uint64_t result, char a2)
{
  *(v2 + 368) = result;
  *(v2 + 376) = a2 & 1;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationMetadata.SummarizationEvent.modelType.getter()
{
  result = *(v0 + 384);
  v2 = *(v0 + 392);
  return result;
}

uint64_t GenerativeFunctionsInstrumentationMetadata.SummarizationEvent.modelType.setter(uint64_t result, char a2)
{
  *(v2 + 384) = result;
  *(v2 + 392) = a2 & 1;
  return result;
}

void GenerativeFunctionsInstrumentationMetadata.SummarizationEvent.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  *(a1 + 80) = 0;
  *(a1 + 88) = 513;
  *(a1 + 96) = 0;
  *(a1 + 104) = 1;
  *(a1 + 112) = MEMORY[0x1E69E7CC0];
  *(a1 + 120) = 33686018;
  *(a1 + 123) = 33686018;
  *(a1 + 128) = 0;
  *(a1 + 136) = 1;
  *(a1 + 144) = 0;
  *(a1 + 152) = 1;
  *(a1 + 160) = 0;
  *(a1 + 168) = 1;
  *(a1 + 176) = 0;
  *(a1 + 184) = 1;
  *(a1 + 192) = 0;
  *(a1 + 200) = 1;
  *(a1 + 201) = 33686018;
  *(a1 + 205) = 2;
  *(a1 + 208) = 0;
  *(a1 + 216) = 1;
  *(a1 + 224) = 0;
  *(a1 + 232) = 1;
  *(a1 + 240) = 0;
  *(a1 + 248) = 1;
  *(a1 + 256) = 0;
  *(a1 + 264) = 1;
  *(a1 + 272) = 0;
  *(a1 + 280) = 1;
  *(a1 + 288) = 0;
  *(a1 + 296) = 1;
  *(a1 + 304) = 0;
  *(a1 + 312) = 1;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 1;
  *(a1 + 352) = 0;
  *(a1 + 360) = 1;
  *(a1 + 368) = 0;
  *(a1 + 376) = 1;
  *(a1 + 377) = 514;
  *(a1 + 384) = 0;
  *(a1 + 392) = 1;
}

uint64_t sub_1934CC808@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = GenerativeFunctionsInstrumentationMetadata.SummarizationEvent.SummarizationStyle.rawValue.getter(a1, a2, a3, a4);
  *a5 = result;
  return result;
}

uint64_t sub_1934CC830@<X0>(uint64_t *a1@<X8>)
{
  result = static GenerativeFunctionsInstrumentationMetadata.SummarizationEvent.SummarizationStyle.allCases.getter();
  *a1 = result;
  return result;
}

void static GenerativeFunctionsInstrumentationMetadata.SummarizationEvent.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117_6();
  v2 = *(v0 + 32);
  v3 = *(v0 + 56);
  v121 = *(v0 + 89);
  v119 = *(v0 + 121);
  v120 = *(v0 + 120);
  v117 = *(v0 + 123);
  v118 = *(v0 + 122);
  v116 = *(v0 + 124);
  v114 = *(v0 + 125);
  v112 = *(v0 + 126);
  v4 = *(v0 + 128);
  v110 = *(v0 + 136);
  v5 = *(v0 + 144);
  v108 = *(v0 + 152);
  v6 = *(v0 + 160);
  v106 = *(v0 + 168);
  v7 = *(v0 + 176);
  v104 = *(v0 + 184);
  v8 = *(v0 + 192);
  v102 = *(v0 + 200);
  v100 = *(v0 + 201);
  v98 = *(v0 + 202);
  v9 = *(v1 + 128);
  v10 = *(v1 + 144);
  v11 = *(v1 + 160);
  v12 = *(v1 + 176);
  v13 = *(v1 + 192);
  v96 = *(v0 + 203);
  v51 = *(v0 + 204);
  v56 = *(v0 + 205);
  v59 = *(v0 + 208);
  v58 = *(v0 + 216);
  v61 = *(v0 + 224);
  v60 = *(v0 + 232);
  v65 = *(v0 + 240);
  v62 = *(v0 + 248);
  v68 = *(v0 + 256);
  v66 = *(v0 + 264);
  v72 = *(v0 + 272);
  v70 = *(v0 + 280);
  v76 = *(v0 + 288);
  v74 = *(v0 + 296);
  v79 = *(v0 + 304);
  v78 = *(v0 + 312);
  v81 = *(v0 + 328);
  v82 = *(v0 + 320);
  v86 = *(v0 + 336);
  v84 = *(v0 + 344);
  v89 = *(v0 + 352);
  v88 = *(v0 + 360);
  v91 = *(v0 + 368);
  v90 = *(v0 + 376);
  v92 = *(v0 + 377);
  v93 = *(v0 + 378);
  v95 = *(v0 + 384);
  v94 = *(v0 + 392);
  v14 = *(v1 + 8);
  v15 = *(v1 + 56);
  v16 = *(v1 + 72);
  v17 = *(v1 + 89);
  v18 = *(v1 + 120);
  v19 = *(v1 + 121);
  v20 = *(v1 + 122);
  v21 = *(v1 + 123);
  v115 = *(v1 + 124);
  v113 = *(v1 + 125);
  v111 = *(v1 + 126);
  v109 = *(v1 + 136);
  v107 = *(v1 + 152);
  v105 = *(v1 + 168);
  v103 = *(v1 + 184);
  v101 = *(v1 + 200);
  v99 = *(v1 + 201);
  v97 = *(v1 + 202);
  v39 = *(v1 + 203);
  v40 = *(v1 + 204);
  v41 = *(v1 + 205);
  v42 = *(v1 + 208);
  v43 = *(v1 + 216);
  v44 = *(v1 + 224);
  v45 = *(v1 + 232);
  v46 = *(v1 + 240);
  v47 = *(v1 + 248);
  v48 = *(v1 + 256);
  v49 = *(v1 + 264);
  v50 = *(v1 + 272);
  v52 = *(v1 + 280);
  v53 = *(v1 + 288);
  v54 = *(v1 + 296);
  v55 = *(v1 + 304);
  v57 = *(v1 + 312);
  v63 = *(v1 + 320);
  v64 = *(v1 + 328);
  v67 = *(v1 + 336);
  v69 = *(v1 + 344);
  v71 = *(v1 + 352);
  v73 = *(v1 + 360);
  v75 = *(v1 + 368);
  v77 = *(v1 + 376);
  v80 = *(v1 + 377);
  v83 = *(v1 + 378);
  v85 = *(v1 + 384);
  v87 = *(v1 + 392);
  if (*(v0 + 8))
  {
    if (!*(v1 + 8))
    {
      goto LABEL_192;
    }
  }

  else
  {
    if (*v0 != *v1)
    {
      v14 = 1;
    }

    if (v14)
    {
      goto LABEL_192;
    }
  }

  if (*(v0 + 24))
  {
    if (!*(v1 + 24))
    {
      goto LABEL_192;
    }
  }

  else
  {
    if (*(v0 + 16) == *(v1 + 16))
    {
      v22 = *(v1 + 24);
    }

    else
    {
      v22 = 1;
    }

    if (v22)
    {
      goto LABEL_192;
    }
  }

  if (*(v0 + 40))
  {
    if (!*(v1 + 40))
    {
      goto LABEL_192;
    }
  }

  else
  {
    if (v2 == *(v1 + 32))
    {
      v23 = *(v1 + 40);
    }

    else
    {
      v23 = 1;
    }

    if (v23)
    {
      goto LABEL_192;
    }
  }

  if (v3)
  {
    if (!*(v1 + 56))
    {
      goto LABEL_192;
    }
  }

  else
  {
    if (*(v0 + 48) != *(v1 + 48))
    {
      v15 = 1;
    }

    if (v15)
    {
      goto LABEL_192;
    }
  }

  if (*(v0 + 72))
  {
    if (!*(v1 + 72))
    {
      goto LABEL_192;
    }
  }

  else
  {
    if (*(v0 + 64) != *(v1 + 64))
    {
      v16 = 1;
    }

    if (v16)
    {
      goto LABEL_192;
    }
  }

  if (*(v0 + 88))
  {
    if (!*(v1 + 88))
    {
      goto LABEL_192;
    }
  }

  else
  {
    if (*(v0 + 80) == *(v1 + 80))
    {
      v24 = *(v1 + 88);
    }

    else
    {
      v24 = 1;
    }

    if (v24)
    {
      goto LABEL_192;
    }
  }

  if (v121 == 2)
  {
    v122 = *(v0 + 192);
    v123 = *(v0 + 176);
    if (v17 != 2)
    {
      goto LABEL_192;
    }
  }

  else
  {
    if (v17 == 2)
    {
      goto LABEL_192;
    }

    v122 = *(v0 + 192);
    v123 = *(v0 + 176);
    if ((v17 ^ v121))
    {
      goto LABEL_192;
    }
  }

  if (*(v0 + 104))
  {
    if (!*(v1 + 104))
    {
      goto LABEL_192;
    }
  }

  else
  {
    if (*(v0 + 96) == *(v1 + 96))
    {
      v25 = *(v1 + 104);
    }

    else
    {
      v25 = 1;
    }

    if (v25)
    {
      goto LABEL_192;
    }
  }

  if ((sub_1934C4DD8(*(v0 + 112), *(v1 + 112), v3, v2) & 1) == 0)
  {
    goto LABEL_192;
  }

  if (v120 == 2)
  {
    if (v18 != 2)
    {
      goto LABEL_192;
    }
  }

  else if (v18 == 2 || ((v18 ^ v120) & 1) != 0)
  {
    goto LABEL_192;
  }

  if (v119 == 2)
  {
    if (v19 != 2)
    {
      goto LABEL_192;
    }
  }

  else if (v19 == 2 || ((v19 ^ v119) & 1) != 0)
  {
    goto LABEL_192;
  }

  if (v118 == 2)
  {
    if (v20 != 2)
    {
      goto LABEL_192;
    }
  }

  else if (v20 == 2 || ((v20 ^ v118) & 1) != 0)
  {
    goto LABEL_192;
  }

  if (v117 == 2)
  {
    if (v21 != 2)
    {
      goto LABEL_192;
    }
  }

  else if (v21 == 2 || ((v21 ^ v117) & 1) != 0)
  {
    goto LABEL_192;
  }

  if (v116 == 2)
  {
    if (v115 != 2)
    {
      goto LABEL_192;
    }
  }

  else if (v115 == 2 || ((v115 ^ v116) & 1) != 0)
  {
    goto LABEL_192;
  }

  if (v114 == 2)
  {
    if (v113 != 2)
    {
      goto LABEL_192;
    }
  }

  else if (v113 == 2 || ((v113 ^ v114) & 1) != 0)
  {
    goto LABEL_192;
  }

  if (v112 == 2)
  {
    if (v111 != 2)
    {
      goto LABEL_192;
    }
  }

  else if (v111 == 2 || ((v111 ^ v112) & 1) != 0)
  {
    goto LABEL_192;
  }

  if (v110)
  {
    if (!v109)
    {
      goto LABEL_192;
    }
  }

  else
  {
    v26 = v109;
    if (v4 != v9)
    {
      v26 = 1;
    }

    if (v26)
    {
      goto LABEL_192;
    }
  }

  if (v108)
  {
    if (!v107)
    {
      goto LABEL_192;
    }
  }

  else
  {
    v27 = v107;
    if (v5 != v10)
    {
      v27 = 1;
    }

    if (v27)
    {
      goto LABEL_192;
    }
  }

  if (v106)
  {
    if (!v105)
    {
      goto LABEL_192;
    }
  }

  else
  {
    v28 = v105;
    if (v6 != v11)
    {
      v28 = 1;
    }

    if (v28)
    {
      goto LABEL_192;
    }
  }

  if (v104)
  {
    if (!v103)
    {
      goto LABEL_192;
    }
  }

  else
  {
    v29 = v103;
    if (v123 != v12)
    {
      v29 = 1;
    }

    if (v29)
    {
      goto LABEL_192;
    }
  }

  if (v102)
  {
    if (!v101)
    {
      goto LABEL_192;
    }
  }

  else
  {
    v30 = v101;
    if (v122 != v13)
    {
      v30 = 1;
    }

    if (v30)
    {
      goto LABEL_192;
    }
  }

  if (v100 == 2)
  {
    if (v99 != 2)
    {
      goto LABEL_192;
    }
  }

  else if (v99 == 2 || ((v99 ^ v100) & 1) != 0)
  {
    goto LABEL_192;
  }

  if (v98 == 2)
  {
    if (v97 != 2)
    {
      goto LABEL_192;
    }
  }

  else if (v97 == 2 || ((v97 ^ v98) & 1) != 0)
  {
    goto LABEL_192;
  }

  if (v96 == 2)
  {
    if (v39 != 2)
    {
      goto LABEL_192;
    }
  }

  else if (v39 == 2 || ((v39 ^ v96) & 1) != 0)
  {
    goto LABEL_192;
  }

  if (v51 == 2)
  {
    if (v40 != 2)
    {
      goto LABEL_192;
    }
  }

  else if (v40 == 2 || ((v40 ^ v51) & 1) != 0)
  {
    goto LABEL_192;
  }

  if (v56 == 2)
  {
    if (v41 != 2)
    {
      goto LABEL_192;
    }
  }

  else if (v41 == 2 || ((v41 ^ v56) & 1) != 0)
  {
    goto LABEL_192;
  }

  if (v58)
  {
    if (!v43)
    {
      goto LABEL_192;
    }
  }

  else
  {
    v31 = v43;
    if (v59 != v42)
    {
      v31 = 1;
    }

    if (v31)
    {
      goto LABEL_192;
    }
  }

  if (v60)
  {
    if (!v45)
    {
      goto LABEL_192;
    }
  }

  else
  {
    v32 = v45;
    if (v61 != v44)
    {
      v32 = 1;
    }

    if (v32)
    {
      goto LABEL_192;
    }
  }

  if (v62)
  {
    if (!v47)
    {
      goto LABEL_192;
    }
  }

  else
  {
    v33 = v47;
    if (v65 != v46)
    {
      v33 = 1;
    }

    if (v33)
    {
      goto LABEL_192;
    }
  }

  if (v66)
  {
    if (!v49)
    {
      goto LABEL_192;
    }
  }

  else
  {
    v34 = v49;
    if (v68 != v48)
    {
      v34 = 1;
    }

    if (v34)
    {
      goto LABEL_192;
    }
  }

  if (v70)
  {
    if (!v52)
    {
      goto LABEL_192;
    }
  }

  else
  {
    v35 = v52;
    if (v72 != v50)
    {
      v35 = 1;
    }

    if (v35)
    {
      goto LABEL_192;
    }
  }

  if (v74)
  {
    if (!v54)
    {
      goto LABEL_192;
    }
  }

  else
  {
    v36 = v54;
    if (v76 != v53)
    {
      v36 = 1;
    }

    if (v36)
    {
      goto LABEL_192;
    }
  }

  if (v78)
  {
    if (!v57)
    {
      goto LABEL_192;
    }

    goto LABEL_185;
  }

  v37 = v57;
  if (v79 != v55)
  {
    v37 = 1;
  }

  if ((v37 & 1) == 0)
  {
LABEL_185:
    if (v81 && v64 && (v82 != v63 || v81 != v64))
    {
      sub_19393CA30();
    }
  }

LABEL_192:
  OUTLINED_FUNCTION_118_2();
}

uint64_t GenerativeFunctionsInstrumentationMetadata.SummarizationEvent.hash(into:)()
{
  OUTLINED_FUNCTION_51_5();
  v50 = *(v1 + 24);
  v29 = v1[2];
  v30 = v1[4];
  v31 = v1[6];
  v51 = *(v1 + 40);
  v52 = *(v1 + 56);
  v53 = *(v1 + 72);
  v2 = v1[10];
  v54 = *(v1 + 88);
  v55 = *(v1 + 89);
  v32 = v1[8];
  v33 = v1[12];
  v56 = *(v1 + 104);
  v3 = v1[14];
  v58 = *(v1 + 120);
  v4 = *(v1 + 121);
  v60 = *(v1 + 122);
  v5 = *(v1 + 123);
  v6 = *(v1 + 125);
  v62 = *(v1 + 124);
  v63 = *(v1 + 126);
  v35 = v1[16];
  v64 = *(v1 + 136);
  v36 = v1[18];
  v65 = *(v1 + 152);
  v37 = v1[20];
  v66 = *(v1 + 168);
  v38 = v1[22];
  v7 = v1[24];
  v67 = *(v1 + 184);
  v68 = *(v1 + 200);
  v8 = *(v1 + 202);
  v69 = *(v1 + 201);
  v70 = *(v1 + 203);
  v9 = *(v1 + 204);
  v71 = *(v1 + 205);
  v41 = v1[26];
  v72 = *(v1 + 216);
  v42 = v1[28];
  v73 = *(v1 + 232);
  v43 = v1[30];
  v74 = *(v1 + 248);
  v44 = v1[32];
  v75 = *(v1 + 264);
  v45 = v1[34];
  v76 = *(v1 + 280);
  v46 = v1[36];
  v77 = *(v1 + 296);
  v34 = v1[38];
  v78 = *(v1 + 312);
  v49 = v1[40];
  v79 = v1[41];
  v48 = v1[42];
  v80 = *(v1 + 344);
  v39 = v1[44];
  v57 = *(v1 + 360);
  v40 = v1[46];
  v59 = *(v1 + 376);
  v10 = *(v1 + 377);
  v81 = *(v1 + 378);
  v47 = v1[48];
  v61 = *(v1 + 392);
  if (v11 == 1)
  {
    sub_19393CAD0();
  }

  else
  {
    v28 = v1[24];
    v12 = v1[14];
    v13 = *(v1 + 202);
    v14 = *(v1 + 121);
    v15 = *(v1 + 204);
    v16 = *(v1 + 377);
    v17 = v1[10];
    v18 = *(v1 + 123);
    v19 = *(v1 + 125);
    v20 = *v1;
    sub_19393CAD0();
    v21 = v20;
    v6 = v19;
    v5 = v18;
    v2 = v17;
    v10 = v16;
    v9 = v15;
    v4 = v14;
    v8 = v13;
    v3 = v12;
    v7 = v28;
    MEMORY[0x193B18060](v21);
  }

  sub_19393CAD0();
  if (!v50)
  {
    MEMORY[0x193B18060](v29);
  }

  sub_19393CAD0();
  if (!v51)
  {
    MEMORY[0x193B18060](v30);
  }

  sub_19393CAD0();
  if (!v52)
  {
    MEMORY[0x193B18060](v31);
  }

  sub_19393CAD0();
  if (!v53)
  {
    MEMORY[0x193B18060](v32);
  }

  sub_19393CAD0();
  if (!v54)
  {
    MEMORY[0x193B18060](v2);
  }

  if (v55 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  sub_19393CAD0();
  if (!v56)
  {
    MEMORY[0x193B18060](v33);
  }

  sub_1934D12E4(v0, v3);
  if (v58 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v4 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v60 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v5 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v62 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v6 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v63 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  sub_19393CAD0();
  if (!v64)
  {
    v22 = OUTLINED_FUNCTION_76_4(v35);
    MEMORY[0x193B18060](v22);
  }

  sub_19393CAD0();
  if (!v65)
  {
    v23 = OUTLINED_FUNCTION_76_4(v36);
    MEMORY[0x193B18060](v23);
  }

  sub_19393CAD0();
  if (!v66)
  {
    v24 = OUTLINED_FUNCTION_76_4(v37);
    MEMORY[0x193B18060](v24);
  }

  sub_19393CAD0();
  if (!v67)
  {
    v25 = OUTLINED_FUNCTION_76_4(v38);
    MEMORY[0x193B18060](v25);
  }

  if (v68)
  {
    sub_19393CAD0();
  }

  else
  {
    sub_19393CAD0();
    if ((v7 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v26 = v7;
    }

    else
    {
      v26 = 0;
    }

    MEMORY[0x193B18060](v26);
  }

  if (v69 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v8 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v70 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v9 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v71 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  sub_19393CAD0();
  if (!v72)
  {
    MEMORY[0x193B18060](v41);
  }

  sub_19393CAD0();
  if (!v73)
  {
    MEMORY[0x193B18060](v42);
  }

  sub_19393CAD0();
  if (!v74)
  {
    MEMORY[0x193B18060](v43);
  }

  sub_19393CAD0();
  if (!v75)
  {
    MEMORY[0x193B18060](v44);
  }

  sub_19393CAD0();
  if (!v76)
  {
    MEMORY[0x193B18060](v45);
  }

  sub_19393CAD0();
  if (!v77)
  {
    MEMORY[0x193B18060](v46);
  }

  sub_19393CAD0();
  if (!v78)
  {
    MEMORY[0x193B18060](v34);
  }

  sub_19393CAD0();
  if (v79)
  {
    sub_19393C640();
  }

  sub_19393CAD0();
  if (!v80)
  {
    MEMORY[0x193B18060](v48);
  }

  sub_19393CAD0();
  if (!v57)
  {
    MEMORY[0x193B18060](v39);
  }

  sub_19393CAD0();
  if (!v59)
  {
    MEMORY[0x193B18060](v40);
  }

  if (v10 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v81 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v61)
  {
    return sub_19393CAD0();
  }

  sub_19393CAD0();
  return MEMORY[0x193B18060](v47);
}

uint64_t GenerativeFunctionsInstrumentationMetadata.SummarizationEvent.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  GenerativeFunctionsInstrumentationMetadata.SummarizationEvent.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1934CDBA0()
{
  sub_19393CAB0();
  GenerativeFunctionsInstrumentationMetadata.SummarizationEvent.hash(into:)();
  return sub_19393CB00();
}

uint64_t GenerativeFunctionsInstrumentationMetadata.ClassificationEvent.inputLength.getter()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  return result;
}

uint64_t GenerativeFunctionsInstrumentationMetadata.ClassificationEvent.inputLength.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationMetadata.ClassificationEvent.languageDetected.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t GenerativeFunctionsInstrumentationMetadata.ClassificationEvent.languageDetected.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 64);

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationMetadata.ClassificationEvent.responseUrgencyFastClassifier.setter(uint64_t result)
{
  *(v1 + 84) = result;
  *(v1 + 88) = BYTE4(result) & 1;
  return result;
}

void GenerativeFunctionsInstrumentationMetadata.ClassificationEvent.confidenceBucket.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 112);
  v3 = *(v1 + 120);
  v4 = *(v1 + 121);
  OUTLINED_FUNCTION_5_2(a1);
}

uint64_t GenerativeFunctionsInstrumentationMetadata.ClassificationEvent.confidenceBucket.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 9);
  *(v1 + 112) = *result;
  *(v1 + 120) = v2;
  *(v1 + 121) = v3;
  return result;
}

void GenerativeFunctionsInstrumentationMetadata.ClassificationEvent.init()(uint64_t a1@<X8>)
{
  *a1 = 514;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 513;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 56) = 0;
  *(a1 + 80) = 1;
  *(a1 + 84) = 0;
  *(a1 + 88) = 1;
  *(a1 + 96) = 0;
  *(a1 + 104) = 1;
  *(a1 + 112) = 0;
  *(a1 + 120) = 256;
  *(a1 + 128) = 0;
  *(a1 + 136) = 1;
  *(a1 + 144) = 0;
  *(a1 + 152) = 1;
  *(a1 + 160) = 0;
  *(a1 + 168) = 1;
  *(a1 + 173) = 2;
  *(a1 + 169) = 33686018;
  *(a1 + 176) = 0;
  *(a1 + 184) = 1;
  *(a1 + 192) = 0;
  *(a1 + 200) = 1;
  *(a1 + 208) = 0;
  *(a1 + 216) = 1;
  *(a1 + 224) = 0;
  *(a1 + 232) = 1;
  *(a1 + 240) = 0;
  *(a1 + 248) = 1;
  *(a1 + 256) = 0;
  *(a1 + 264) = 1;
  *(a1 + 272) = 0;
  *(a1 + 280) = 1;
}

uint64_t sub_1934CE10C@<X0>(uint64_t *a1@<X8>)
{
  result = GenerativeFunctionsInstrumentationMetadata.ClassificationEvent.ConfidenceBucket.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1934CE134@<X0>(uint64_t *a1@<X8>)
{
  result = static GenerativeFunctionsInstrumentationMetadata.ClassificationEvent.ConfidenceBucket.allCases.getter();
  *a1 = result;
  return result;
}

void static GenerativeFunctionsInstrumentationMetadata.ClassificationEvent.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117_6();
  v1 = v0;
  v3 = v2;
  v4 = *v2;
  v5 = v2[1];
  v6 = *(v2 + 1);
  v7 = v2[16];
  v8 = *(v2 + 3);
  v9 = v2[32];
  v10 = *(v2 + 5);
  v11 = v2[48];
  v12 = v2[49];
  v13 = *(v3 + 8);
  v97 = *(v3 + 7);
  v95 = *(v3 + 9);
  v98 = v3[80];
  v14 = *(v3 + 21);
  v96 = v3[88];
  v92 = *(v3 + 12);
  v94 = v3[104];
  v89 = *(v3 + 14);
  v88 = v3[120];
  v93 = v3[121];
  v15 = *(v3 + 16);
  v91 = v3[136];
  v16 = *(v3 + 18);
  v85 = v3[152];
  v17 = *(v3 + 20);
  v83 = v3[168];
  v81 = v3[169];
  v79 = v3[170];
  v76 = v3[171];
  v75 = v3[172];
  v73 = v3[173];
  v67 = *(v3 + 22);
  v71 = v3[184];
  v64 = *(v3 + 24);
  v68 = v3[200];
  v57 = *(v3 + 26);
  v65 = v3[216];
  v59 = *(v3 + 28);
  v58 = v3[232];
  v50 = *(v3 + 30);
  v60 = v3[248];
  v52 = *(v3 + 32);
  v51 = v3[264];
  v54 = *(v3 + 34);
  v53 = v3[280];
  v18 = v1[21];
  v19 = *(v1 + 16);
  v20 = *(v1 + 18);
  v21 = *(v1 + 20);
  v22 = *v1;
  v23 = *(v1 + 1);
  v24 = *(v1 + 3);
  v25 = *(v1 + 32);
  v26 = *(v1 + 5);
  v27 = *(v1 + 48);
  v28 = *(v1 + 49);
  v29 = *(v1 + 7);
  v30 = *(v1 + 8);
  v31 = *(v1 + 9);
  v32 = *(v1 + 80);
  v33 = *(v1 + 88);
  v34 = *(v1 + 12);
  v35 = *(v1 + 104);
  v87 = *(v1 + 14);
  v86 = *(v1 + 120);
  v36 = *(v1 + 121);
  v90 = *(v1 + 136);
  v84 = *(v1 + 152);
  v82 = *(v1 + 168);
  v80 = *(v1 + 169);
  v78 = *(v1 + 170);
  v77 = *(v1 + 171);
  v74 = *(v1 + 172);
  v72 = *(v1 + 173);
  v66 = *(v1 + 22);
  v70 = *(v1 + 184);
  v63 = *(v1 + 24);
  v69 = *(v1 + 200);
  v55 = *(v1 + 26);
  v61 = *(v1 + 216);
  v56 = *(v1 + 28);
  v62 = *(v1 + 232);
  v44 = *(v1 + 30);
  v45 = *(v1 + 248);
  v46 = *(v1 + 32);
  v47 = *(v1 + 264);
  v48 = *(v1 + 34);
  v49 = *(v1 + 280);
  if (v4 == 2)
  {
    if (v22 != 2)
    {
      goto LABEL_70;
    }
  }

  else if (v22 == 2 || ((v22 ^ v4) & 1) != 0)
  {
    goto LABEL_70;
  }

  if (v5 == 2)
  {
    if (v23 != 2)
    {
      goto LABEL_70;
    }
  }

  else if (v23 == 2 || ((v23 ^ v5) & 1) != 0)
  {
    goto LABEL_70;
  }

  if (v7)
  {
    if (!*(v1 + 16))
    {
      goto LABEL_70;
    }
  }

  else
  {
    if (v6 == *(v1 + 1))
    {
      v37 = *(v1 + 16);
    }

    else
    {
      v37 = 1;
    }

    if (v37)
    {
      goto LABEL_70;
    }
  }

  if (v9)
  {
    if (!v25)
    {
      goto LABEL_70;
    }
  }

  else
  {
    if (v8 == v24)
    {
      v38 = v25;
    }

    else
    {
      v38 = 1;
    }

    if (v38)
    {
      goto LABEL_70;
    }
  }

  if (v11)
  {
    if (!v27)
    {
      goto LABEL_70;
    }

LABEL_32:
    if (v12 == 2)
    {
      if (v28 != 2)
      {
        goto LABEL_70;
      }
    }

    else if (v28 == 2 || ((v28 ^ v12) & 1) != 0)
    {
      goto LABEL_70;
    }

    if (v13)
    {
      if (!v30)
      {
        goto LABEL_70;
      }

      v40 = v97 == v29 && v13 == v30;
      if (!v40 && (sub_19393CA30() & 1) == 0)
      {
        goto LABEL_70;
      }
    }

    else if (v30)
    {
      goto LABEL_70;
    }

    if (v98)
    {
      if (!v32)
      {
        goto LABEL_70;
      }
    }

    else
    {
      if (v95 == v31)
      {
        v41 = v32;
      }

      else
      {
        v41 = 1;
      }

      if (v41)
      {
        goto LABEL_70;
      }
    }

    if (v96)
    {
      if (!v33)
      {
        goto LABEL_70;
      }
    }

    else
    {
      if (v14 == v18)
      {
        v42 = v33;
      }

      else
      {
        v42 = 1;
      }

      if (v42)
      {
        goto LABEL_70;
      }
    }

    if (v94)
    {
      if (!v35)
      {
        goto LABEL_70;
      }
    }

    else
    {
      if (v92 == v34)
      {
        v43 = v35;
      }

      else
      {
        v43 = 1;
      }

      if (v43)
      {
        goto LABEL_70;
      }
    }

    if ((v93 & 1) == 0 && (v36 & 1) == 0)
    {
      GenerativeFunctionsInstrumentationMetadata.ClassificationEvent.ConfidenceBucket.rawValue.getter();
      GenerativeFunctionsInstrumentationMetadata.ClassificationEvent.ConfidenceBucket.rawValue.getter();
    }

    goto LABEL_70;
  }

  if (v10 == v26)
  {
    v39 = v27;
  }

  else
  {
    v39 = 1;
  }

  if ((v39 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_70:
  OUTLINED_FUNCTION_118_2();
}

uint64_t GenerativeFunctionsInstrumentationMetadata.ClassificationEvent.hash(into:)()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 16);
  v14 = *(v0 + 8);
  v15 = *(v0 + 24);
  v3 = *(v0 + 32);
  v33 = *(v0 + 48);
  v4 = *(v0 + 49);
  v5 = *(v0 + 64);
  v32 = *(v0 + 56);
  v16 = *(v0 + 40);
  v17 = *(v0 + 72);
  v35 = *(v0 + 80);
  v18 = *(v0 + 84);
  v36 = *(v0 + 88);
  v19 = *(v0 + 96);
  v37 = *(v0 + 104);
  v21 = *(v0 + 112);
  v20 = *(v0 + 120);
  v38 = *(v0 + 121);
  v22 = *(v0 + 128);
  v39 = *(v0 + 136);
  v23 = *(v0 + 144);
  v40 = *(v0 + 152);
  v24 = *(v0 + 160);
  v6 = *(v0 + 169);
  v7 = *(v0 + 170);
  v41 = *(v0 + 168);
  v42 = *(v0 + 171);
  v43 = *(v0 + 172);
  v34 = *(v0 + 173);
  v25 = *(v0 + 176);
  v44 = *(v0 + 184);
  v26 = *(v0 + 192);
  v45 = *(v0 + 200);
  v27 = *(v0 + 208);
  v46 = *(v0 + 216);
  v28 = *(v0 + 224);
  v47 = *(v0 + 232);
  v29 = *(v0 + 240);
  v48 = *(v0 + 248);
  v30 = *(v0 + 256);
  v49 = *(v0 + 264);
  v31 = *(v0 + 272);
  v50 = *(v0 + 280);
  if (*v0 != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  if (v1 != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  if (v2)
  {
    OUTLINED_FUNCTION_104_0();
    if (!v3)
    {
LABEL_7:
      OUTLINED_FUNCTION_103_0();
      MEMORY[0x193B18060](v15);
      goto LABEL_10;
    }
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v14);
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  OUTLINED_FUNCTION_104_0();
LABEL_10:
  if (v33)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v16);
  }

  if (v4 != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  if (v5)
  {
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (v35)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v17);
  }

  if (v36)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    sub_19393CAE0();
  }

  if (v37)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v19);
  }

  if (v38)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v8 = OUTLINED_FUNCTION_103_0();
    v9 = GenerativeFunctionsInstrumentationMetadata.ClassificationEvent.ConfidenceBucket.rawValue.getter(v8);
    MEMORY[0x193B18030](v9);
  }

  if (v39)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    v10 = OUTLINED_FUNCTION_76_4(v22);
    MEMORY[0x193B18060](v10);
  }

  if (v40)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    v11 = OUTLINED_FUNCTION_76_4(v23);
    MEMORY[0x193B18060](v11);
  }

  if (v41)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    v12 = OUTLINED_FUNCTION_76_4(v24);
    MEMORY[0x193B18060](v12);
  }

  if (v6 != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  if (v7 != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  if (v42 != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  if (v43 != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  if (v34 != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  if (v44)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v25);
  }

  if (v45)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v26);
  }

  if (v46)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v27);
  }

  if (v47)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v28);
  }

  if (v48)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v29);
  }

  if (v49)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v30);
  }

  if (v50)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_103_0();
  return MEMORY[0x193B18060](v31);
}

uint64_t GenerativeFunctionsInstrumentationMetadata.ClassificationEvent.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  GenerativeFunctionsInstrumentationMetadata.ClassificationEvent.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1934CEDE8()
{
  sub_19393CAB0();
  GenerativeFunctionsInstrumentationMetadata.ClassificationEvent.hash(into:)();
  return sub_19393CB00();
}

uint64_t static GenerativeFunctionsInstrumentationMetadata.AvailabilityStatus.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t GenerativeFunctionsInstrumentationMetadata.AvailabilityStatus.hash(into:)()
{
  OUTLINED_FUNCTION_51_5();
  if (v1 == 1)
  {
    return sub_19393CAD0();
  }

  v3 = *v0;
  sub_19393CAD0();
  return MEMORY[0x193B18060](v3);
}

uint64_t GenerativeFunctionsInstrumentationMetadata.AvailabilityStatus.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  OUTLINED_FUNCTION_119();
  sub_19393CAD0();
  if (v2 != 1)
  {
    OUTLINED_FUNCTION_169_0();
  }

  return sub_19393CB00();
}

uint64_t sub_1934CEF48()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_19393CAB0();
  sub_19393CAD0();
  if (v2 != 1)
  {
    OUTLINED_FUNCTION_169_0();
  }

  return sub_19393CB00();
}

void GenerativeFunctionsInstrumentationMetadata.AvailabilityStatusTransition.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
}

uint64_t static GenerativeFunctionsInstrumentationMetadata.AvailabilityStatusTransition.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 40);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) == *(a2 + 16))
    {
      v4 = *(a2 + 24);
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  if (*(a1 + 40))
  {
    if ((*(a2 + 40) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t GenerativeFunctionsInstrumentationMetadata.AvailabilityStatusTransition.hash(into:)()
{
  OUTLINED_FUNCTION_51_5();
  v1 = v0[2];
  v2 = *(v0 + 24);
  v3 = v0[4];
  v4 = *(v0 + 40);
  if (v5 == 1)
  {
    sub_19393CAD0();
    if (!v2)
    {
      goto LABEL_3;
    }

LABEL_9:
    sub_19393CAD0();
    if (!v4)
    {
      goto LABEL_4;
    }

    return sub_19393CAD0();
  }

  v8 = *v0;
  sub_19393CAD0();
  MEMORY[0x193B18060](v8);
  if (v2)
  {
    goto LABEL_9;
  }

LABEL_3:
  sub_19393CAD0();
  MEMORY[0x193B18060](v1);
  if (v4)
  {
    return sub_19393CAD0();
  }

LABEL_4:
  sub_19393CAD0();
  if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  return MEMORY[0x193B18060](v6);
}

uint64_t GenerativeFunctionsInstrumentationMetadata.AvailabilityStatusTransition.hashValue.getter()
{
  OUTLINED_FUNCTION_54_4();
  OUTLINED_FUNCTION_88_4(v0);
  sub_19393CAB0();
  GenerativeFunctionsInstrumentationMetadata.AvailabilityStatusTransition.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1934CF1BC()
{
  OUTLINED_FUNCTION_54_4();
  OUTLINED_FUNCTION_88_4(v0);
  sub_19393CAB0();
  GenerativeFunctionsInstrumentationMetadata.AvailabilityStatusTransition.hash(into:)();
  return sub_19393CB00();
}

uint64_t GenerativeFunctionsInstrumentationMetadata.PartnerCloudRequest.modelUsed.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t GenerativeFunctionsInstrumentationMetadata.PartnerCloudRequest.modelUsed.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

void GenerativeFunctionsInstrumentationMetadata.PartnerCloudRequest.accountType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);
  v4 = *(v1 + 65);
  OUTLINED_FUNCTION_5_2(a1);
}

uint64_t GenerativeFunctionsInstrumentationMetadata.PartnerCloudRequest.accountType.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 9);
  *(v1 + 56) = *result;
  *(v1 + 64) = v2;
  *(v1 + 65) = v3;
  return result;
}

void GenerativeFunctionsInstrumentationMetadata.PartnerCloudRequest.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 513;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 256;
}

uint64_t sub_1934CF3A0@<X0>(uint64_t *a1@<X8>)
{
  result = GenerativeFunctionsInstrumentationMetadata.PartnerCloudRequest.PartnerCloudAccountType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1934CF3C8@<X0>(uint64_t *a1@<X8>)
{
  result = static GenerativeFunctionsInstrumentationMetadata.PartnerCloudRequest.PartnerCloudAccountType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t static GenerativeFunctionsInstrumentationMetadata.PartnerCloudRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 25);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  v13 = *(a1 + 65);
  v14 = *(a2 + 25);
  v15 = *(a2 + 32);
  v16 = *(a2 + 40);
  v17 = *(a2 + 48);
  v18 = *(a2 + 56);
  v19 = *(a2 + 64);
  v20 = *(a2 + 65);
  if (v4)
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v21 = *(a2 + 8);
    }

    else
    {
      v21 = 1;
    }

    if (v21)
    {
      return 0;
    }
  }

  if (v6)
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (v5 == *(a2 + 16))
    {
      v22 = *(a2 + 24);
    }

    else
    {
      v22 = 1;
    }

    if (v22)
    {
      return 0;
    }
  }

  if (v7 == 2)
  {
    if (v14 != 2)
    {
      return 0;
    }
  }

  else
  {
    v23 = 0;
    if (v14 == 2 || ((v14 ^ v7) & 1) != 0)
    {
      return v23;
    }
  }

  if (v9)
  {
    if (!v16)
    {
      return 0;
    }

    if (v8 != v15 || v9 != v16)
    {
      v8 = sub_19393CA30();
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v16)
  {
    return 0;
  }

  if (v10 == 2)
  {
    if (v17 != 2)
    {
      return 0;
    }
  }

  else
  {
    v23 = 0;
    if (v17 == 2 || ((v17 ^ v10) & 1) != 0)
    {
      return v23;
    }
  }

  if (v13)
  {
    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v20)
    {
      return 0;
    }

    v25 = GenerativeFunctionsInstrumentationMetadata.PartnerCloudRequest.PartnerCloudAccountType.rawValue.getter(v8, v9, v15, v16);
    if (v25 != GenerativeFunctionsInstrumentationMetadata.PartnerCloudRequest.PartnerCloudAccountType.rawValue.getter(v25, v26, v27, v28))
    {
      return 0;
    }
  }

  return 1;
}

void GenerativeFunctionsInstrumentationMetadata.PartnerCloudRequest.hash(into:)()
{
  OUTLINED_FUNCTION_108_0();
  v1 = v0[2];
  v2 = *(v0 + 24);
  v20 = *(v0 + 25);
  v3 = v0[5];
  v4 = *(v0 + 48);
  v5 = v0[7];
  v6 = *(v0 + 65);
  if (*(v0 + 8) != 1)
  {
    v19 = v0[5];
    v8 = v0[4];
    v9 = *(v0 + 48);
    v10 = *(v0 + 65);
    v11 = *(v0 + 64);
    v12 = v0[7];
    v13 = *v0;
    OUTLINED_FUNCTION_103_0();
    v6 = v10;
    v4 = v9;
    v3 = v19;
    MEMORY[0x193B18060](v13);
    if (!v2)
    {
      goto LABEL_3;
    }

LABEL_8:
    OUTLINED_FUNCTION_104_0();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_104_0();
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_3:
  OUTLINED_FUNCTION_103_0();
  if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v7 = v1;
  }

  else
  {
    v7 = 0;
  }

  MEMORY[0x193B18060](v7);
LABEL_9:
  if (v20 != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  if (v3)
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_188_0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (v4 != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  if (v6)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_177_1();
    v18 = GenerativeFunctionsInstrumentationMetadata.PartnerCloudRequest.PartnerCloudAccountType.rawValue.getter(v14, v15, v16, v17);
    MEMORY[0x193B18030](v18);
  }

  OUTLINED_FUNCTION_107();
}

uint64_t GenerativeFunctionsInstrumentationMetadata.PartnerCloudRequest.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  GenerativeFunctionsInstrumentationMetadata.PartnerCloudRequest.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1934CF7D0()
{
  sub_19393CAB0();
  GenerativeFunctionsInstrumentationMetadata.PartnerCloudRequest.hash(into:)();
  return sub_19393CB00();
}

uint64_t GenerativeFunctionsInstrumentationError.GenericError.domain.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

void GenerativeFunctionsInstrumentationError.GenericError.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
}

uint64_t sub_1934CF8F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  if (*(a1 + 8))
  {
    if (!v4)
    {
      return 0;
    }

    OUTLINED_FUNCTION_155(a1, a2);
    v9 = v9 && v7 == v8;
    if (!v9 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 0;
  }

  if (v3)
  {
    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v2 == v5)
    {
      v11 = v6;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1934CF97C()
{
  OUTLINED_FUNCTION_77_1();
  v1 = v0[2];
  v2 = *(v0 + 24);
  if (v0[1])
  {
    v3 = *v0;
    sub_19393CAD0();
    sub_19393C640();
    if (v2)
    {
      return sub_19393CAD0();
    }
  }

  else
  {
    sub_19393CAD0();
    if (v2)
    {
      return sub_19393CAD0();
    }
  }

  sub_19393CAD0();
  return MEMORY[0x193B18060](v1);
}