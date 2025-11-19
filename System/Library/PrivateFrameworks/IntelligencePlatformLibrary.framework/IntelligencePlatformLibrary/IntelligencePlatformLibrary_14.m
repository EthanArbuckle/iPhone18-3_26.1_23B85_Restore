void sub_193546244(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    OUTLINED_FUNCTION_278_0(a1);
    *(v3 + 48) = 0;
    *v3 = v4;
    if (v5 > v6)
    {
      *(v3 + 50) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(a1 + 50) = 0;
    }

    if (a2)
    {
      OUTLINED_FUNCTION_231_0(a1, a2);
    }
  }
}

uint64_t sub_1935462B0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 50))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 125);
    }

    v3 = ((*(a1 + 48) >> 7) & 0x7C | (*(a1 + 48) >> 14)) ^ 0x7F;
    if (v3 >= 0x7D)
    {
      return OUTLINED_FUNCTION_46_4(-1);
    }
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

void sub_1935462F8(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    OUTLINED_FUNCTION_278_0(a1);
    *(v3 + 48) = 0;
    *v3 = v4;
    if (v5 >= 0x7E)
    {
      *(v3 + 50) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(a1 + 50) = 0;
    }

    if (a2)
    {
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      OUTLINED_FUNCTION_198_1(a1, (((-a2 >> 2) & 0x1F) - 32 * a2) << 9);
    }
  }
}

void sub_193546550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t *a6, uint64_t (*a7)(uint64_t))
{
  OUTLINED_FUNCTION_202_0();
  v9 = OUTLINED_FUNCTION_43_8();
  sub_193544D68(v9, v10, v11, v12);
  if (v13 <= 0x3F)
  {
    v14 = OUTLINED_FUNCTION_43_8();
    sub_193544D68(v14, a6, a7, v15);
    if (v16 <= 0x3F)
    {
      OUTLINED_FUNCTION_15_2();
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_19354661C()
{
  OUTLINED_FUNCTION_132_4();
  sub_193544D68(319, v0, v1, MEMORY[0x1E69E6720]);
  if (v2 <= 0x3F)
  {
    sub_19349D1FC(319, qword_1ED506E98);
    if (v3 <= 0x3F)
    {
      sub_19349D1FC(319, &qword_1ED506C60);
      if (v4 <= 0x3F)
      {
        sub_193544D68(319, &qword_1ED5066B8, type metadata accessor for IntelligenceFlowFeedbackLearning.CandidateEvaluation, MEMORY[0x1E69E62F8]);
        if (v5 <= 0x3F)
        {
          sub_19349D1FC(319, qword_1ED5064A8);
          if (v6 <= 0x3F)
          {
            OUTLINED_FUNCTION_15_2();
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_193546834()
{
  sub_193544D68(319, &qword_1ED5082C0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    OUTLINED_FUNCTION_132_4();
    sub_193544D68(319, v1, v2, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      sub_19349D1FC(319, qword_1ED506E98);
      if (v4 <= 0x3F)
      {
        sub_19349D1FC(319, qword_1ED506088);
        if (v5 <= 0x3F)
        {
          sub_19349D1FC(319, &qword_1ED506698);
          if (v6 <= 0x3F)
          {
            sub_19349D1FC(319, &qword_1ED506498);
            if (v7 <= 0x3F)
            {
              sub_193544D68(319, &qword_1ED5066B0, type metadata accessor for IntelligenceFlowFeedbackLearning.CandidateInteraction, MEMORY[0x1E69E62F8]);
              if (v8 <= 0x3F)
              {
                OUTLINED_FUNCTION_15_2();
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_193546A08()
{
  result = type metadata accessor for IntelligenceFlowFeedbackLearning.Event.ActionEvaluation(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for IntelligenceFlowFeedbackLearning.Event.InteractionDonation(319);
    if (v2 <= 0x3F)
    {
      OUTLINED_FUNCTION_107_6();
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_193546AF8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 < 0 && *(a1 + 40))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *(a1 + 32);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_46_4(v2);
}

uint64_t sub_193546B34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

      return OUTLINED_FUNCTION_227_0(result, (a2 - 1));
    }

    *(result + 40) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_227_0(result, (a2 - 1));
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_48Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  OUTLINED_FUNCTION_91_0();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
  OUTLINED_FUNCTION_172(v14);
  if (*(v15 + 84) == v7)
  {
    v16 = OUTLINED_FUNCTION_151();
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
    v16 = v8 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v16, v7, v17);
}

uint64_t __swift_store_extra_inhabitant_index_49Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8)
{
  OUTLINED_FUNCTION_91_0();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(v13, v14);
  OUTLINED_FUNCTION_172(v15);
  if (*(v16 + 84) != a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    v17 = v8 + *(a4 + 20);
  }

  OUTLINED_FUNCTION_112_0();

  return __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
}

void sub_193546D08()
{
  sub_193544D68(319, qword_1ED506468, type metadata accessor for IntelligenceFlowFeedbackLearning.CandidateCategory, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    OUTLINED_FUNCTION_128_5();
    sub_193544D68(319, v1, v2, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      sub_19349D1FC(319, qword_1ED5062E0);
      if (v4 <= 0x3F)
      {
        sub_19349D1FC(319, &qword_1ED5064A0);
        if (v5 <= 0x3F)
        {
          OUTLINED_FUNCTION_15_2();
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_193546E38(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 < 0 && *(a1 + 18))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_46_4(v2);
}

void *sub_193546E74(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

      return OUTLINED_FUNCTION_2_11(result, (a2 - 1));
    }

    *(result + 18) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_2_11(result, (a2 - 1));
    }
  }

  return result;
}

void sub_193546EE8()
{
  OUTLINED_FUNCTION_128_5();
  sub_193544D68(319, v0, v1, MEMORY[0x1E69E6720]);
  if (v2 <= 0x3F)
  {
    sub_19349D1FC(319, qword_1ED506258);
    if (v3 <= 0x3F)
    {
      OUTLINED_FUNCTION_15_2();
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_193546FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  result = a5(319);
  if (v6 <= 0x3F)
  {
    OUTLINED_FUNCTION_107_6();
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *sub_19354701C(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_193547120()
{
  OUTLINED_FUNCTION_202_0();
  v0 = OUTLINED_FUNCTION_43_8();
  sub_193544D68(v0, v1, v2, v3);
  if (v4 <= 0x3F)
  {
    OUTLINED_FUNCTION_15_2();
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

__n128 __swift_memcpy26_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_193547198(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 26))
  {
    return OUTLINED_FUNCTION_46_4(*a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1935471B4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 26) = v3;
  return result;
}

uint64_t sub_1935471F4(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_166_3();
  v5 = v4(v3);
  OUTLINED_FUNCTION_4_1(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_13_0();
  v9(v8);
  return a2;
}

uint64_t OUTLINED_FUNCTION_52_10(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 9);
  *(v1 + 40) = *result;
  *(v1 + 48) = v2;
  *(v1 + 49) = v3;
  return result;
}

__n128 OUTLINED_FUNCTION_62_12()
{
  v2 = *v0;
  v3 = v0[1];
  result = v0[2];
  v4 = *(v0 + 24);
  return result;
}

uint64_t OUTLINED_FUNCTION_66_9()
{

  return sub_19393C550();
}

uint64_t OUTLINED_FUNCTION_110_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v15 - 248) = v11;
  *(v15 - 240) = v10;
  *(v15 - 216) = a1;
  *(v15 - 228) = v7 >> 8;
  v16 = v4;
  v17 = v5;
  sub_19345DC44(v9, v6, v14, a4, v12);
  *(v15 - 192) = v16;
  result = sub_19345DC44(v17, v16, v13, v8, v7);
  v19 = *(v15 - 228);
  return result;
}

double OUTLINED_FUNCTION_139_7@<D0>(uint64_t a1@<X0>, unsigned int a2@<W8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = a2 << 8;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  return result;
}

void OUTLINED_FUNCTION_141_5(uint64_t a1@<X8>)
{
  *(v3 - 184) = a1;
  v5 = *v2;
  v4 = v2[1];
  v7 = v2[2];
  v6 = v2[3];
  v8 = HIBYTE(*(v2 + 16));
  v10 = *v1;
  v9 = v1[1];
  v12 = v1[2];
  v11 = v1[3];
  v13 = *(v1 + 16);
}

uint64_t OUTLINED_FUNCTION_142_3()
{

  return sub_193448804(v1, v0 + v4, v2, v3);
}

uint64_t OUTLINED_FUNCTION_146_4()
{

  return sub_193448804(v1, v0, v2, v3);
}

uint64_t OUTLINED_FUNCTION_155_3()
{
  v8 = v5;
  v9 = *(v6 - 176);

  return sub_19344C7C0(v1, v0, v4, v3, v2, v8);
}

__n128 OUTLINED_FUNCTION_159_6()
{
  result = *v0;
  v3 = *(v0 + 16);
  *(v1 - 64) = *v0;
  *(v1 - 48) = v3;
  return result;
}

void OUTLINED_FUNCTION_181_5(uint64_t a1@<X8>)
{
  *(v4 - 128) = a1;
  *(v4 - 120) = v1 & 1;
  *(v4 - 168) = v2;
  *(v4 - 160) = v3 & 1;
}

uint64_t OUTLINED_FUNCTION_191_1(uint64_t a1, uint64_t a2)
{

  return sub_193448804(a1, a2, v2, v3);
}

void OUTLINED_FUNCTION_193_0()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
}

__n128 OUTLINED_FUNCTION_194_1()
{
  v2 = *(v1 - 128);
  *(v0 + 128) = *(v1 - 144);
  *(v0 + 144) = v2;
  result = *(v1 - 112);
  *(v0 + 160) = result;
  *(v0 + 176) = *(v1 - 96);
  return result;
}

__n128 OUTLINED_FUNCTION_195_1()
{
  v3 = *v0;
  v4 = v0[1];
  result = *(v0 + 56);
  *(v1 + 200) = result;
  return result;
}

void OUTLINED_FUNCTION_205_0(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *(a2 + 32);
}

void OUTLINED_FUNCTION_212_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v8 - 128) = v5;
  *(v8 - 120) = v4;
  *(v8 - 112) = v7;
  *(v8 - 104) = a4;
  *(v8 - 96) = v6;
}

double OUTLINED_FUNCTION_218_0()
{
  result = 0.0;
  *v0 = 0u;
  v0[1] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_226(uint64_t a1, uint64_t a2)
{

  return sub_193448804(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_228_0()
{
  v5 = *(v2 - 216);
  v4 = *(v2 - 208);
  v6 = *(v2 - 224);
  v7 = *(v2 - 192);

  return sub_193457BF4(v4, v5, v6, v1, v0);
}

double OUTLINED_FUNCTION_235_0(uint64_t a1, int a2)
{
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 56) = 0u;
  *a1 = (a2 - 0x7FFFFFFF);
  return result;
}

uint64_t OUTLINED_FUNCTION_238_0@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_193448804(v3 + a3, v4, a1, a2);
}

void OUTLINED_FUNCTION_253()
{
  v2 = v0[2];
  v1 = v0[3];
  v4 = *v0;
  v3 = v0[1];
}

double OUTLINED_FUNCTION_259()
{
  *(v0 + 48) = 0;
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *v0 = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_272_0()
{

  return sub_19393C550();
}

double OUTLINED_FUNCTION_278_0(uint64_t a1)
{
  *(a1 + 40) = 0;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  return result;
}

uint64_t sub_193547E48()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED510358);
  v5 = __swift_project_value_buffer(v4, qword_1ED510358);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v3, 1, v4);
  if (result != 1)
  {
    return (*(*(v4 - 8) + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

unint64_t static Library.Streams.GenerativeModels.GenerativeFunctions.SystemInstrumentation.attribute(_:)(void (*a1)(void))
{
  result = sub_193548074(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1935480AC(void (*a1)(void))
{
  result = sub_193548074(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1935480DC(uint64_t a1)
{
  result = sub_193548104();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_193548104()
{
  result = qword_1ED508050;
  if (!qword_1ED508050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED508050);
  }

  return result;
}

_BYTE *_s21SystemInstrumentationOwst(_BYTE *result, int a2, int a3)
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

uint64_t sub_19354824C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED5103B8);
  v5 = __swift_project_value_buffer(v4, qword_1ED5103B8);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v3, 1, v4);
  if (result != 1)
  {
    return (*(*(v4 - 8) + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

unint64_t static Library.Streams.IntelligenceFlow.JointResolverTelemetry.attribute(_:)(void (*a1)(void))
{
  result = sub_193548478(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1935484BC(void (*a1)(void))
{
  result = sub_193548478(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1935484EC(uint64_t a1)
{
  result = sub_193548514();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_193548514()
{
  result = qword_1ED507B10;
  if (!qword_1ED507B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED507B10);
  }

  return result;
}

_BYTE *_s22JointResolverTelemetryOwst(_BYTE *result, int a2, int a3)
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

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> IntelligenceFlowJointResolverTelemetry.json()()
{
  OUTLINED_FUNCTION_26();
  v30 = v1;
  v31 = v2;
  v3 = sub_19393C090();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v11 = v10 - v9;
  v12 = type metadata accessor for IntelligenceFlowJointResolverTelemetry(0);
  v13 = OUTLINED_FUNCTION_4_1(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5_1();
  v18 = v17 - v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3CEA8, &qword_193960F58);
  OUTLINED_FUNCTION_4_1(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v29 - v23;
  OUTLINED_FUNCTION_6_26();
  sub_19354CCEC(v0, v18, v25);
  sub_1934470C8(v18, v12, v24);
  sub_19393C080();
  sub_1935487F0();
  sub_19393C250();
  (*(v6 + 8))(v11, v3);
  sub_19344E6DC(v24, &qword_1EAE3CEA8, &qword_193960F58);
  OUTLINED_FUNCTION_27();
  result._object = v27;
  result._countAndFlagsBits = v26;
  return result;
}

unint64_t sub_1935487F0()
{
  result = qword_1EAE3A790;
  if (!qword_1EAE3A790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAE3CEA8, &qword_193960F58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3A790);
  }

  return result;
}

uint64_t static IntelligenceFlowJointResolverTelemetry.event(from:)@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_19393C070();
  v4 = OUTLINED_FUNCTION_47(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3CEA8, &qword_193960F58);
  OUTLINED_FUNCTION_4_1(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v15 - v11;

  sub_19393C060();
  sub_1935487F0();
  result = sub_19393C260();
  if (!v1)
  {
    OUTLINED_FUNCTION_24_14();
    return sub_1935497C4(v12, a1, v14);
  }

  return result;
}

void static IntelligenceFlowJointResolverTelemetry.event(from:dataVersion:writeTimestamp:bookmark:)()
{
  OUTLINED_FUNCTION_26();
  v35 = v3;
  v36 = v2;
  v34 = v4;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3CEA8, &qword_193960F58);
  OUTLINED_FUNCTION_4_1(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_9_6();
  v11 = sub_19393C0C0();
  v12 = OUTLINED_FUNCTION_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_6();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v33 - v21;
  if (*sub_19355941C() == v6)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    (*(v14 + 16))(v19, v22, v11);
    v23 = OUTLINED_FUNCTION_19_3();
    sub_193450688(v23, v24);
    sub_1935487F0();
    OUTLINED_FUNCTION_19_3();
    sub_19393C280();
    (*(v14 + 8))(v22, v11);
    if (!v0)
    {
      OUTLINED_FUNCTION_24_14();
      v26 = v35;
      sub_1935497C4(v1, v35, v27);
      v28 = type metadata accessor for IntelligenceFlowJointResolverTelemetry(0);
      v29 = *(v28 + 20);
      sub_19344E6DC(v26 + v29, &qword_1EAE3A9E8, &qword_19394F800);
      v30 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1(v30);
      (*(v31 + 16))(v26 + v29, v34, v30);
      __swift_storeEnumTagSinglePayload(v26 + v29, 0, 1, v30);
      v32 = *(v28 + 24);
      sub_19344E6DC(v26 + v32, &qword_1EAE3AA00, &unk_19394F8F0);
      sub_1934970B0(v36, v26 + v32);
    }
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_13_9();
    *v25 = v6;
    *(v25 + 48) = 0;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_27();
}

uint64_t IntelligenceFlowJointResolverTelemetry.serialize()()
{
  v1 = type metadata accessor for IntelligenceFlowJointResolverTelemetry(0);
  v2 = OUTLINED_FUNCTION_4_1(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3CEA8, &qword_193960F58);
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v18 - v12;
  OUTLINED_FUNCTION_6_26();
  sub_19354CCEC(v0, v7, v14);
  sub_1934470C8(v7, v1, v13);
  sub_1935487F0();
  sub_19393C290();
  v15 = OUTLINED_FUNCTION_93_4();
  sub_19344E6DC(v15, v16, &qword_193960F58);
  return OUTLINED_FUNCTION_13_0();
}

void sub_193548DBC()
{
  OUTLINED_FUNCTION_26();
  v100 = v0;
  v101 = v1;
  OUTLINED_FUNCTION_51_8();
  v99 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B498, &unk_193959120);
  OUTLINED_FUNCTION_47(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  v96 = &v94 - v9;
  v95 = type metadata accessor for MonotonicTimestamp();
  v10 = OUTLINED_FUNCTION_4_1(v95);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5_1();
  v94 = v14 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3CEC0, &qword_193960F68);
  OUTLINED_FUNCTION_47(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v18);
  v98 = &v94 - v19;
  v97 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.JRClientEventMetadata(0);
  v20 = OUTLINED_FUNCTION_4_1(v97);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5_1();
  v25 = v24 - v23;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3CEB8, &qword_193961930);
  OUTLINED_FUNCTION_47(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v94 - v30;
  v32 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.JRExperimentTriggered(0);
  v33 = OUTLINED_FUNCTION_4_1(v32);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_5_1();
  v38 = v37 - v36;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3CEB0, &qword_193960F60);
  OUTLINED_FUNCTION_47(v39);
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v94 - v43;
  v45 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.JointResolverRequestInvocation(0);
  v46 = *(*(v45 - 8) + 64);
  MEMORY[0x1EEE9AC00](0x697461636F766E69);
  OUTLINED_FUNCTION_5_1();
  v49 = v48 - v47;
  v51 = v3 == v50 && v2 == 0xEA00000000006E6FLL;
  if (v51 || (OUTLINED_FUNCTION_0_18() & 1) != 0)
  {
    v52 = type metadata accessor for IntelligenceFlowJointResolverTelemetry(0);
    v53 = OUTLINED_FUNCTION_48_8(*(v52 + 28));
    sub_193448758(v53, v44, v54, v55);
    OUTLINED_FUNCTION_6_3(v44, 1, v45);
    if (!v51)
    {
      sub_1935497C4(v44, v49, type metadata accessor for IntelligenceFlowJointResolverTelemetry.JointResolverRequestInvocation);
      sub_193494798(v45, &off_1F07CA090, v99);
      v59 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.JointResolverRequestInvocation;
      v60 = v49;
LABEL_11:
      sub_19344A630(v60, v59);
      goto LABEL_12;
    }

    v56 = &qword_1EAE3CEB0;
    v57 = &qword_193960F60;
    v58 = v44;
  }

  else
  {
    OUTLINED_FUNCTION_38();
    v62 = v3 == 0xD000000000000012 && v61 == v2;
    if (v62 || (OUTLINED_FUNCTION_0_18() & 1) != 0)
    {
      if ((~*(v100 + *(type metadata accessor for IntelligenceFlowJointResolverTelemetry(0) + 32)) & 0xF000000000000007) != 0)
      {
        sub_193494798(&type metadata for IntelligenceFlowJointResolverTelemetry.JRInferenceContext, &off_1F07CA0A0, v99);
        goto LABEL_12;
      }

      goto LABEL_10;
    }

    OUTLINED_FUNCTION_38();
    v64 = v3 == 0xD000000000000015 && v63 == v2;
    if (!v64 && (OUTLINED_FUNCTION_0_18() & 1) == 0)
    {
      v71 = v3 == 0x74654D746E657665 && v2 == 0xED00006174616461;
      if (v71 || (OUTLINED_FUNCTION_0_18() & 1) != 0)
      {
        v72 = type metadata accessor for IntelligenceFlowJointResolverTelemetry(0);
        v73 = OUTLINED_FUNCTION_48_8(*(v72 + 40));
        v74 = v98;
        sub_193448758(v73, v98, v75, v76);
        v77 = v97;
        OUTLINED_FUNCTION_6_3(v74, 1, v97);
        if (!v51)
        {
          sub_1935497C4(v74, v25, type metadata accessor for IntelligenceFlowJointResolverTelemetry.JRClientEventMetadata);
          sub_193494798(v77, &off_1F07CA080, v99);
          v59 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.JRClientEventMetadata;
          v60 = v25;
          goto LABEL_11;
        }

        v78 = &qword_1EAE3CEC0;
        v79 = &qword_193960F68;
      }

      else
      {
        v80 = v3 == 0x6D617473656D6974 && v2 == 0xE900000000000070;
        if (!v80 && (OUTLINED_FUNCTION_0_18() & 1) == 0)
        {
          sub_19349AB64();
          v88 = OUTLINED_FUNCTION_13_9();
          v90 = OUTLINED_FUNCTION_42_15(v88, v89);
          v91 = type metadata accessor for IntelligenceFlowJointResolverTelemetry(v90);
          OUTLINED_FUNCTION_126(v91);
          OUTLINED_FUNCTION_6_26();
          sub_19354CCEC(v100, v92, v93);
          OUTLINED_FUNCTION_15_24();
          swift_willThrow();

          goto LABEL_12;
        }

        v81 = type metadata accessor for IntelligenceFlowJointResolverTelemetry(0);
        v82 = OUTLINED_FUNCTION_48_8(*(v81 + 44));
        v74 = v96;
        sub_193448758(v82, v96, v83, v84);
        v85 = v95;
        OUTLINED_FUNCTION_6_3(v74, 1, v95);
        if (!v51)
        {
          v86 = v74;
          v87 = v94;
          sub_1935497C4(v86, v94, type metadata accessor for MonotonicTimestamp);
          sub_193494798(v85, &off_1F07BD958, v99);
          v59 = type metadata accessor for MonotonicTimestamp;
          v60 = v87;
          goto LABEL_11;
        }

        v78 = &qword_1EAE3B498;
        v79 = &unk_193959120;
      }

      sub_19344E6DC(v74, v78, v79);
      OUTLINED_FUNCTION_27_13();
      goto LABEL_12;
    }

    v65 = type metadata accessor for IntelligenceFlowJointResolverTelemetry(0);
    v66 = OUTLINED_FUNCTION_48_8(*(v65 + 36));
    sub_193448758(v66, v31, v67, v68);
    OUTLINED_FUNCTION_23_5(v31);
    if (!v51)
    {
      v69 = OUTLINED_FUNCTION_141();
      sub_1935497C4(v69, v38, v70);
      sub_193494798(v32, &off_1F07CA0B0, v99);
      v59 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.JRExperimentTriggered;
      v60 = v38;
      goto LABEL_11;
    }

    v56 = &qword_1EAE3CEB8;
    v57 = &qword_193961930;
    v58 = v31;
  }

  sub_19344E6DC(v58, v56, v57);
LABEL_10:
  OUTLINED_FUNCTION_27_13();
LABEL_12:
  OUTLINED_FUNCTION_27();
}

void sub_193549470()
{
  OUTLINED_FUNCTION_26();
  v48 = v1;
  v49 = v0;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_9_6();
  v14 = sub_19393BE60();
  v15 = OUTLINED_FUNCTION_0(v14);
  v47 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_8_28();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v47 - v23;
  v25 = type metadata accessor for AIML.UUID();
  v26 = OUTLINED_FUNCTION_4_1(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5_1();
  v31 = v30 - v29;
  v32 = v7 == 1682535018 && v5 == 0xE400000000000000;
  if (!v32 && (sub_19393CA30() & 1) == 0)
  {
    v38 = v7 == 0x6449776F72 && v5 == 0xE500000000000000;
    if (!v38 && (sub_19393CA30() & 1) == 0)
    {
      sub_19349AB64();
      OUTLINED_FUNCTION_13_9();
      *v44 = v7;
      v44[1] = v5;
      v45 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.JRClientEventMetadata(0);
      v46 = OUTLINED_FUNCTION_126(v45);
      sub_19354CCEC(v49, v46, type metadata accessor for IntelligenceFlowJointResolverTelemetry.JRClientEventMetadata);
      OUTLINED_FUNCTION_15_24();
      swift_willThrow();

      goto LABEL_10;
    }

    v39 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.JRClientEventMetadata(0);
    sub_193448758(v49 + *(v39 + 20), v2, &qword_1EAE3AA88, &qword_19394F9C0);
    OUTLINED_FUNCTION_23_5(v2);
    if (!v32)
    {
      v40 = v47;
      (*(v47 + 32))(v3, v2, v14);
      OUTLINED_FUNCTION_93_4();
      sub_1934948FC();
      v41 = *(v40 + 8);
      v42 = OUTLINED_FUNCTION_93_4();
      v43(v42);
      goto LABEL_10;
    }

    v33 = &qword_1EAE3AA88;
    v34 = &qword_19394F9C0;
    v35 = v2;
    goto LABEL_9;
  }

  sub_193448758(v49, v24, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_6_3(v24, 1, v25);
  if (v32)
  {
    v33 = &qword_1EAE3BCA0;
    v34 = &unk_19395C320;
    v35 = v24;
LABEL_9:
    sub_19344E6DC(v35, v33, v34);
    *v9 = 0u;
    *(v9 + 16) = 0u;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_1_36();
  sub_1935497C4(v24, v31, v36);
  sub_193494798(v25, &off_1F07C3F90, v9);
  OUTLINED_FUNCTION_0_37();
  sub_19344A630(v31, v37);
LABEL_10:
  OUTLINED_FUNCTION_27();
}

uint64_t sub_1935497C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_4_1(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_13_0();
  v8(v7);
  return a2;
}

void sub_193549838()
{
  OUTLINED_FUNCTION_26();
  v27 = v1;
  v28 = v0;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - v11;
  v13 = sub_19393BE60();
  v14 = OUTLINED_FUNCTION_0(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_8_28();
  v19 = v6 == 0x7254746E65696C63 && v4 == 0xED00006449656361;
  if (v19 || (sub_19393CA30() & 1) != 0)
  {
    sub_193448758(v28, v12, &qword_1EAE3AA88, &qword_19394F9C0);
    OUTLINED_FUNCTION_6_3(v12, 1, v13);
    if (v19)
    {
      sub_19344E6DC(v12, &qword_1EAE3AA88, &qword_19394F9C0);
      OUTLINED_FUNCTION_104();
    }

    else
    {
      v20 = *(v16 + 32);
      v21 = OUTLINED_FUNCTION_19_3();
      v22(v21);
      sub_1934948FC();
      (*(v16 + 8))(v2, v13);
    }
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_13_9();
    *v23 = v6;
    v23[1] = v4;
    v24 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.JointResolverRequestInvocation(0);
    v25 = OUTLINED_FUNCTION_126(v24);
    sub_19354CCEC(v28, v25, type metadata accessor for IntelligenceFlowJointResolverTelemetry.JointResolverRequestInvocation);
    OUTLINED_FUNCTION_15_24();
    swift_willThrow();
  }

  OUTLINED_FUNCTION_27();
}

id sub_193549A80()
{
  OUTLINED_FUNCTION_172_0();
  OUTLINED_FUNCTION_25_16();
  v5 = *v0;
  v6 = v2 == 0x64657472617473 && v4 == 0xE700000000000000;
  if (v6 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    if (!(v5 >> 62))
    {
      __dst[0] = *(v5 + 16);
      v7 = &type metadata for IntelligenceFlowJointResolverTelemetry.JRInferenceStarted;
      v8 = &off_1F07CA0D0;
      return sub_193494798(v7, v8, v3);
    }
  }

  else
  {
    v10 = v2 == 0x64656C696166 && v1 == 0xE600000000000000;
    if (!v10 && (OUTLINED_FUNCTION_5_5() & 1) == 0)
    {
      if (v2 == 0x6465646E65 && v1 == 0xE500000000000000)
      {
        if (v5 >> 62 != 2)
        {
          goto LABEL_24;
        }
      }

      else if ((OUTLINED_FUNCTION_5_5() & 1) == 0 || (v5 & 0xC000000000000000) != 0x8000000000000000)
      {
        goto LABEL_24;
      }

      memcpy(__dst, ((v5 & 0x3FFFFFFFFFFFFFFFLL) + 16), sizeof(__dst));
      memcpy(v14, __dst, sizeof(v14));
      v7 = &type metadata for IntelligenceFlowJointResolverTelemetry.JRInferenceEnded;
      v8 = &off_1F07CA0F0;
      return sub_193494798(v7, v8, v3);
    }

    if (v5 >> 62 == 1)
    {
      __dst[0] = *((v5 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v7 = &type metadata for IntelligenceFlowJointResolverTelemetry.JRInferenceFailed;
      v8 = &off_1F07CA0E0;
      return sub_193494798(v7, v8, v3);
    }
  }

LABEL_24:
  sub_19349AB64();
  v12 = OUTLINED_FUNCTION_13_9();
  *v13 = v2;
  v13[1] = v1;
  v13[5] = &type metadata for IntelligenceFlowJointResolverTelemetry.JRInferenceContext;
  v13[2] = v5;
  OUTLINED_FUNCTION_23_2(v12, v13);
}

void sub_193549C4C()
{
  OUTLINED_FUNCTION_51_8();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v27 - v8;
  v10 = type metadata accessor for AIML.UUID();
  v11 = OUTLINED_FUNCTION_4_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8_28();
  v14 = v2 == 0x697461636F6C6C61 && v1 == 0xEA00000000006E6FLL;
  if (v14 || (OUTLINED_FUNCTION_0_18() & 1) != 0)
  {
    v27[1] = *v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3CEC8, &qword_193960F70);
    sub_1934948FC();
  }

  else
  {
    v15 = v2 == 0x6874617065646F63 && v1 == 0xEA00000000006449;
    if (v15 || (OUTLINED_FUNCTION_0_18() & 1) != 0)
    {
      v16 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.JRExperimentTriggered(0);
      sub_193448758(v0 + *(v16 + 20), v9, &qword_1EAE3BCA0, &unk_19395C320);
      OUTLINED_FUNCTION_6_3(v9, 1, v10);
      if (v14)
      {
        sub_19344E6DC(v9, &qword_1EAE3BCA0, &unk_19395C320);
        OUTLINED_FUNCTION_104();
      }

      else
      {
        OUTLINED_FUNCTION_1_36();
        sub_1935497C4(v9, v3, v17);
        OUTLINED_FUNCTION_19_3();
        sub_193494798(v18, v19, v20);
        OUTLINED_FUNCTION_0_37();
        sub_19344A630(v3, v21);
      }
    }

    else
    {
      sub_19349AB64();
      OUTLINED_FUNCTION_13_9();
      v23 = v22;
      *v22 = v2;
      v22[1] = v1;
      v22[5] = type metadata accessor for IntelligenceFlowJointResolverTelemetry.JRExperimentTriggered(0);
      __swift_allocate_boxed_opaque_existential_1Tm(v23 + 2);
      v24 = OUTLINED_FUNCTION_141();
      sub_19354CCEC(v24, v25, v26);
      *(v23 + 48) = 1;
      swift_willThrow();
    }
  }
}

void sub_193549EBC()
{
  OUTLINED_FUNCTION_41_9();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_9_6();
  v9 = type metadata accessor for AIML.UUID();
  v10 = OUTLINED_FUNCTION_4_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8_28();
  OUTLINED_FUNCTION_38();
  v14 = v2 == 0xD000000000000013 && v13 == v1;
  if (v14 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    if (v0[1])
    {
      v39 = *v0;
LABEL_15:
      sub_1934948FC();
      return;
    }

    goto LABEL_24;
  }

  v15 = v2 == 0x656D697265707865 && v1 == 0xEC0000006449746ELL;
  if (v15 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    if (v0[3])
    {
      v40 = v0[2];
      goto LABEL_15;
    }

    goto LABEL_24;
  }

  v16 = v2 == 0x6E656D7461657274 && v1 == 0xEB00000000644974;
  if (v16 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v17 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.TrialExperiment(0);
    sub_193448758(v0 + *(v17 + 24), v3, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_6_3(v3, 1, v9);
    if (!v14)
    {
      OUTLINED_FUNCTION_1_36();
      sub_1935497C4(v3, v4, v18);
      OUTLINED_FUNCTION_19_3();
      sub_193494798(v19, v20, v21);
      OUTLINED_FUNCTION_0_37();
      sub_19344A630(v4, v22);
      return;
    }

    sub_19344E6DC(v3, &qword_1EAE3BCA0, &unk_19395C320);
    goto LABEL_24;
  }

  v23 = v2 == 0x656D796F6C706564 && v1 == 0xEC0000006449746ELL;
  if (v23 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v24 = v0 + *(type metadata accessor for IntelligenceFlowJointResolverTelemetry.TrialExperiment(0) + 28);
    if ((v24[8] & 1) == 0)
    {
      v41 = *v24;
      goto LABEL_15;
    }

    goto LABEL_24;
  }

  OUTLINED_FUNCTION_38();
  v26 = v2 == 0xD000000000000010 && v25 == v1;
  if (v26 || (OUTLINED_FUNCTION_27_0(), (OUTLINED_FUNCTION_59_0() & 1) != 0))
  {
    v27 = v0 + *(type metadata accessor for IntelligenceFlowJointResolverTelemetry.TrialExperiment(0) + 32);
    if ((*(v27 + 9) & 1) == 0)
    {
      OUTLINED_FUNCTION_43_1(v27);
      goto LABEL_15;
    }

    goto LABEL_24;
  }

  OUTLINED_FUNCTION_38();
  v29 = v2 == 0xD000000000000011 && v28 == v1;
  if (v29 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v30 = v0 + *(type metadata accessor for IntelligenceFlowJointResolverTelemetry.TrialExperiment(0) + 36);
    if ((v30[8] & 1) == 0)
    {
      v42 = *v30;
      goto LABEL_15;
    }

    goto LABEL_24;
  }

  OUTLINED_FUNCTION_38();
  v32 = v2 == 0xD000000000000014 && v31 == v1;
  if (v32 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v33 = v0 + *(type metadata accessor for IntelligenceFlowJointResolverTelemetry.TrialExperiment(0) + 40);
    if ((v33[4] & 1) == 0)
    {
      v43 = *v33;
      goto LABEL_15;
    }

LABEL_24:
    OUTLINED_FUNCTION_104();
    return;
  }

  sub_19349AB64();
  OUTLINED_FUNCTION_13_9();
  v35 = v34;
  *v34 = v2;
  v34[1] = v1;
  v34[5] = type metadata accessor for IntelligenceFlowJointResolverTelemetry.TrialExperiment(0);
  __swift_allocate_boxed_opaque_existential_1Tm(v35 + 2);
  v36 = OUTLINED_FUNCTION_141();
  sub_19354CCEC(v36, v37, v38);
  *(v35 + 48) = 1;
  swift_willThrow();
}

void sub_19354A2FC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  memcpy(__dst, v4, sizeof(__dst));
  OUTLINED_FUNCTION_38();
  v9 = a1 == 0xD000000000000010 && v8 == a2;
  if (v9 || (OUTLINED_FUNCTION_27_0(), (OUTLINED_FUNCTION_5_5() & 1) != 0))
  {
    if (__dst[0])
    {
      v49[0] = __dst[0];
      *&v49[1] = *&__dst[1];
      *&v49[3] = *&__dst[3];
      v49[5] = __dst[5];
      v10 = &type metadata for IntelligenceFlowJointResolverTelemetry.JRModelInputShapes;
      v11 = &off_1F07CA180;
LABEL_8:
      sub_193494798(v10, v11, a3);
      return;
    }

    goto LABEL_22;
  }

  v12 = a1 == 0x74754F6C65646F6DLL && a2 == 0xEC00000073747570;
  if (v12 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    if (__dst[15])
    {
      memcpy(v49, (v4 + 48), 0x48uLL);
      v49[9] = __dst[15];
      v10 = &type metadata for IntelligenceFlowJointResolverTelemetry.JRModelOutputs;
      v11 = &off_1F07CA190;
      goto LABEL_8;
    }

    goto LABEL_22;
  }

  v13 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v13 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    if (__dst[20] != 1)
    {
      LODWORD(v49[0]) = __dst[16];
      BYTE4(v49[0]) = BYTE4(__dst[16]) & 1;
      LODWORD(v49[1]) = __dst[17];
      BYTE4(v49[1]) = BYTE4(__dst[17]) & 1;
      LODWORD(v49[2]) = __dst[18];
      BYTE4(v49[2]) = BYTE4(__dst[18]) & 1;
      *&v49[3] = *&__dst[19];
      v10 = &type metadata for AIML.Version;
      v11 = &off_1F07C3FA0;
      goto LABEL_8;
    }

    goto LABEL_22;
  }

  OUTLINED_FUNCTION_38();
  v15 = a1 == 0xD000000000000017 && v14 == a2;
  if (v15 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    if ((__dst[21] & 0x100000000) == 0)
    {
      v16 = __dst[21];
LABEL_31:
      LODWORD(v49[0]) = v16;
LABEL_32:
      sub_1934948FC();
      return;
    }

    goto LABEL_22;
  }

  OUTLINED_FUNCTION_38();
  v18 = a1 == 0xD000000000000015 && v17 == a2;
  if (v18 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    if ((__dst[22] & 0x100000000) == 0)
    {
      v16 = __dst[22];
      goto LABEL_31;
    }

LABEL_22:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return;
  }

  v19 = a1 == 0x666F72506B736972 && a2 == 0xEB00000000656C69;
  if (v19 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    if (__dst[23])
    {
      v49[0] = __dst[23];
      v10 = &type metadata for IntelligenceFlowJointResolverTelemetry.RiskProfile;
      v11 = &off_1F07CA240;
      goto LABEL_8;
    }

    goto LABEL_22;
  }

  v20 = a1 == 0x6574656D61726170 && a2 == 0xED00006570795472;
  if (v20 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    v21 = __dst[24];
LABEL_53:
    v49[0] = v21;
    v22 = &qword_1EAE3B9E8;
    v23 = &qword_193957EC8;
LABEL_54:
    __swift_instantiateConcreteTypeFromMangledNameV2(v22, v23);
    goto LABEL_32;
  }

  v24 = a1 == 0x5079646165726C61 && a2 == 0xEF646574706D6F72;
  if (v24 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    v21 = __dst[25];
    goto LABEL_53;
  }

  v25 = a1 == 0x6F4372656C6C6163 && a2 == 0xEF746E656E6F706DLL;
  if (v25 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    v21 = __dst[26];
    goto LABEL_53;
  }

  OUTLINED_FUNCTION_38();
  v27 = a1 == 0xD000000000000015 && v26 == a2;
  if (v27 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    v49[0] = __dst[27];
    v22 = &unk_1EAE3CF10;
    v23 = &unk_193960FA8;
    goto LABEL_54;
  }

  OUTLINED_FUNCTION_38();
  v29 = a1 == 0xD000000000000011 && v28 == a2;
  if (v29 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    v49[0] = __dst[28];
    v22 = &unk_1EAE3CF08;
    v23 = &unk_193960FA0;
    goto LABEL_54;
  }

  v31 = a1 == OUTLINED_FUNCTION_8_31() && a2 == v30;
  if (v31 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    v49[0] = __dst[29];
    v22 = &unk_1EAE3CF00;
    v23 = &unk_193960F98;
    goto LABEL_54;
  }

  v33 = a1 == OUTLINED_FUNCTION_53_10() && a2 == v32;
  if (v33 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    v49[0] = __dst[30];
    v22 = &unk_1EAE3CEF8;
    v23 = &unk_193960F90;
    goto LABEL_54;
  }

  OUTLINED_FUNCTION_38();
  v35 = a1 == 0xD000000000000010 && v34 == a2;
  if (v35 || (OUTLINED_FUNCTION_27_0(), (OUTLINED_FUNCTION_5_5() & 1) != 0))
  {
    v49[0] = __dst[31];
    v22 = &unk_1EAE3CEF0;
    v23 = &unk_193961A60;
    goto LABEL_54;
  }

  OUTLINED_FUNCTION_38();
  v37 = a1 == 0xD000000000000016 && v36 == a2;
  if (v37 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    v49[0] = __dst[32];
    v22 = &unk_1EAE3CEE8;
    v23 = &unk_193960F88;
    goto LABEL_54;
  }

  OUTLINED_FUNCTION_38();
  v39 = a1 == 0xD000000000000010 && v38 == a2;
  if (v39 || (OUTLINED_FUNCTION_27_0(), (OUTLINED_FUNCTION_5_5() & 1) != 0))
  {
    v49[0] = __dst[33];
    v22 = &unk_1EAE3CEE0;
    v23 = &unk_193961B40;
    goto LABEL_54;
  }

  OUTLINED_FUNCTION_38();
  v41 = a1 == 0xD000000000000012 && v40 == a2;
  if (v41 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    if ((__dst[34] & 0x100000000) == 0)
    {
      v16 = __dst[34];
      goto LABEL_31;
    }

    goto LABEL_22;
  }

  v42 = a1 == 0x7373656E64756F6CLL && a2 == 0xED00006C6576654CLL;
  if (v42 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    if ((__dst[35] & 0x100000000) == 0)
    {
      v16 = __dst[35];
      goto LABEL_31;
    }

    goto LABEL_22;
  }

  v43 = a1 == 0x7365726F6373 && a2 == 0xE600000000000000;
  if (v43 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    v49[0] = __dst[36];
    v22 = &unk_1EAE3CED8;
    v23 = &unk_193960F80;
    goto LABEL_54;
  }

  OUTLINED_FUNCTION_38();
  v45 = a1 == 0xD000000000000018 && v44 == a2;
  if (v45 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    v49[0] = __dst[37];
    v22 = &unk_1EAE3CED0;
    v23 = &unk_193960F78;
    goto LABEL_54;
  }

  sub_19349AB64();
  OUTLINED_FUNCTION_13_9();
  v47 = v46;
  *v46 = a1;
  v46[1] = a2;
  v46[5] = &type metadata for IntelligenceFlowJointResolverTelemetry.JRInferenceEnded;
  v48 = swift_allocObject();
  v47[2] = v48;
  memcpy((v48 + 16), __dst, 0x130uLL);
  *(v47 + 48) = 1;
  swift_willThrow();

  sub_19354A9B4(__dst, v49);
}

void sub_19354AA28()
{
  OUTLINED_FUNCTION_46_8();
  OUTLINED_FUNCTION_21_14();
  OUTLINED_FUNCTION_28_11();
  v2 = v2 && v0 == v1;
  if (v2 || (OUTLINED_FUNCTION_31_9() & 1) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3CF18, &qword_193960FB0);
    OUTLINED_FUNCTION_16_17();
  }

  else
  {
    sub_19349AB64();
    v3 = OUTLINED_FUNCTION_13_9();
    OUTLINED_FUNCTION_23_21(v3, v4);
    OUTLINED_FUNCTION_4_28(v5, &type metadata for IntelligenceFlowJointResolverTelemetry.JRCandidateRiskLevel);
  }

  OUTLINED_FUNCTION_47_12();
}

void sub_19354AB04()
{
  OUTLINED_FUNCTION_46_8();
  OUTLINED_FUNCTION_38_3();
  OUTLINED_FUNCTION_25_16();
  OUTLINED_FUNCTION_53_10();
  OUTLINED_FUNCTION_28_11();
  v2 = v2 && v0 == v1;
  if (v2 || (OUTLINED_FUNCTION_31_9() & 1) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3CF18, &qword_193960FB0);
    OUTLINED_FUNCTION_16_17();
  }

  else
  {
    sub_19349AB64();
    v3 = OUTLINED_FUNCTION_13_9();
    OUTLINED_FUNCTION_23_21(v3, v4);
    OUTLINED_FUNCTION_4_28(v5, &type metadata for IntelligenceFlowJointResolverTelemetry.JRCandidateSearchToolRank);
  }

  OUTLINED_FUNCTION_47_12();
}

uint64_t sub_19354ABD4()
{
  OUTLINED_FUNCTION_172_0();
  v2 = *v0;
  OUTLINED_FUNCTION_38();
  v5 = v3 == 0xD000000000000014 && v4 == v1;
  if (v5 || (v6 = v3, v7 = v0[1], (OUTLINED_FUNCTION_31_3() & 1) != 0))
  {
    v8 = &unk_1EAE3CF28;
    v9 = &unk_193960FC0;
LABEL_7:
    __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
    return OUTLINED_FUNCTION_16_17();
  }

  OUTLINED_FUNCTION_38();
  v12 = v6 == 0xD00000000000001BLL && v11 == v1;
  if (v12 || (OUTLINED_FUNCTION_31_3() & 1) != 0)
  {
    v8 = &unk_1EAE3CF20;
    v9 = &unk_193960FB8;
    goto LABEL_7;
  }

  sub_19349AB64();
  v13 = OUTLINED_FUNCTION_13_9();
  *v14 = v6;
  v14[1] = v1;
  v14[5] = &type metadata for IntelligenceFlowJointResolverTelemetry.IntervalUntilStartTime;
  v14[2] = v2;
  v14[3] = v7;
  OUTLINED_FUNCTION_23_2(v13, v14);
}

void sub_19354AD14()
{
  OUTLINED_FUNCTION_46_8();
  OUTLINED_FUNCTION_38_3();
  v2 = *v0;
  OUTLINED_FUNCTION_22_4();
  v4 = v4 && v3 == v1;
  if (v4 || (OUTLINED_FUNCTION_31_9() & 1) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3CF30, &qword_193960FC8);
    OUTLINED_FUNCTION_16_17();
  }

  else
  {
    sub_19349AB64();
    v5 = OUTLINED_FUNCTION_13_9();
    OUTLINED_FUNCTION_23_21(v5, v6);
    OUTLINED_FUNCTION_4_28(v7, &type metadata for IntelligenceFlowJointResolverTelemetry.JRCandidateBooleanMask);
  }

  OUTLINED_FUNCTION_47_12();
}

void sub_19354ADF0()
{
  OUTLINED_FUNCTION_46_8();
  OUTLINED_FUNCTION_38_3();
  v2 = *v0;
  OUTLINED_FUNCTION_22_4();
  v4 = v4 && v3 == v1;
  if (v4 || (OUTLINED_FUNCTION_31_9() & 1) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B9E8, &qword_193957EC8);
    OUTLINED_FUNCTION_16_17();
  }

  else
  {
    sub_19349AB64();
    v5 = OUTLINED_FUNCTION_13_9();
    OUTLINED_FUNCTION_23_21(v5, v6);
    OUTLINED_FUNCTION_4_28(v7, &type metadata for IntelligenceFlowJointResolverTelemetry.JRCandidateTimeIntervalMatrix);
  }

  OUTLINED_FUNCTION_47_12();
}

void sub_19354AECC()
{
  OUTLINED_FUNCTION_46_8();
  OUTLINED_FUNCTION_21_14();
  OUTLINED_FUNCTION_28_11();
  v2 = v2 && v0 == v1;
  if (v2 || (OUTLINED_FUNCTION_31_9() & 1) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B9E8, &qword_193957EC8);
    OUTLINED_FUNCTION_16_17();
  }

  else
  {
    sub_19349AB64();
    v3 = OUTLINED_FUNCTION_13_9();
    OUTLINED_FUNCTION_23_21(v3, v4);
    OUTLINED_FUNCTION_4_28(v5, &type metadata for IntelligenceFlowJointResolverTelemetry.JRTokenConfidence);
  }

  OUTLINED_FUNCTION_47_12();
}

void sub_19354AFA8()
{
  OUTLINED_FUNCTION_46_8();
  v2 = *v0;
  v4 = v3 == 7827314 && v1 == 0xE300000000000000;
  if (v4 || (OUTLINED_FUNCTION_31_9() & 1) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3CF38, &qword_193960FD0);
    OUTLINED_FUNCTION_16_17();
  }

  else
  {
    sub_19349AB64();
    v5 = OUTLINED_FUNCTION_13_9();
    OUTLINED_FUNCTION_23_21(v5, v6);
    OUTLINED_FUNCTION_4_28(v7, &type metadata for IntelligenceFlowJointResolverTelemetry.JREntitySimilarityScores);
  }

  OUTLINED_FUNCTION_47_12();
}

void sub_19354B088()
{
  OUTLINED_FUNCTION_26();
  v45 = v1;
  v46 = v0;
  OUTLINED_FUNCTION_51_8();
  v44 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v6 = OUTLINED_FUNCTION_47(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v43 - v13;
  v15 = type metadata accessor for AIML.UUID();
  v16 = OUTLINED_FUNCTION_4_1(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_6();
  v21 = v19 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v43 - v23;
  v25 = v3 == 0x74616469646E6163 && v2 == 0xEA00000000004165;
  if (v25 || (OUTLINED_FUNCTION_0_18() & 1) != 0)
  {
    sub_193448758(v46, v14, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_23_5(v14);
    if (!v25)
    {
      OUTLINED_FUNCTION_1_36();
      sub_1935497C4(v14, v24, v27);
      sub_193494798(v15, &off_1F07C3F90, v44);
      OUTLINED_FUNCTION_0_37();
      v29 = v24;
LABEL_11:
      sub_19344A630(v29, v28);
      goto LABEL_12;
    }

    v26 = v14;
  }

  else
  {
    v30 = v3 == 0x74616469646E6163 && v2 == 0xEA00000000004265;
    if (!v30 && (OUTLINED_FUNCTION_0_18() & 1) == 0)
    {
      v36 = v3 == 0x6972616C696D6973 && v2 == 0xEF65726F63537974;
      if (!v36 && (OUTLINED_FUNCTION_0_18() & 1) == 0)
      {
        sub_19349AB64();
        v38 = OUTLINED_FUNCTION_13_9();
        v40 = OUTLINED_FUNCTION_42_15(v38, v39);
        v41 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.JREntitySimilarityRow(v40);
        v42 = OUTLINED_FUNCTION_126(v41);
        sub_19354CCEC(v46, v42, type metadata accessor for IntelligenceFlowJointResolverTelemetry.JREntitySimilarityRow);
        OUTLINED_FUNCTION_15_24();
        swift_willThrow();

        goto LABEL_12;
      }

      v37 = (v46 + *(type metadata accessor for IntelligenceFlowJointResolverTelemetry.JREntitySimilarityRow(0) + 24));
      if ((v37[1] & 1) == 0)
      {
        v47 = *v37;
        sub_1934948FC();
        goto LABEL_12;
      }

      goto LABEL_10;
    }

    v31 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.JREntitySimilarityRow(0);
    sub_193448758(v46 + *(v31 + 20), v11, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_23_5(v11);
    if (!v25)
    {
      OUTLINED_FUNCTION_1_36();
      sub_1935497C4(v11, v21, v32);
      OUTLINED_FUNCTION_93_4();
      sub_193494798(v33, v34, v35);
      OUTLINED_FUNCTION_0_37();
      v29 = v21;
      goto LABEL_11;
    }

    v26 = v11;
  }

  sub_19344E6DC(v26, &qword_1EAE3BCA0, &unk_19395C320);
LABEL_10:
  OUTLINED_FUNCTION_27_13();
LABEL_12:
  OUTLINED_FUNCTION_27();
}

uint64_t sub_19354B3C4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  OUTLINED_FUNCTION_38();
  if (a1 == 0xD000000000000015 && v6 == a2)
  {
    goto LABEL_6;
  }

  v9 = v2[1];
  v8 = v2[2];
  v26 = v2[4];
  v27 = v2[3];
  v10 = v2[5];
  if (OUTLINED_FUNCTION_26_12())
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_38();
  v13 = a1 == 0xD000000000000013 && v12 == a2;
  if (v13 || (OUTLINED_FUNCTION_26_12() & 1) != 0)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_38();
  v15 = a1 == 0xD00000000000001BLL && v14 == a2;
  if (v15 || (OUTLINED_FUNCTION_26_12() & 1) != 0 || ((OUTLINED_FUNCTION_38(), a1 == 0xD000000000000021) ? (v17 = v16 == a2) : (v17 = 0), v17 || (OUTLINED_FUNCTION_26_12() & 1) != 0 || ((OUTLINED_FUNCTION_38(), a1 == 0xD000000000000020) ? (v19 = v18 == a2) : (v19 = 0), v19 || (OUTLINED_FUNCTION_26_12() & 1) != 0 || ((OUTLINED_FUNCTION_38(), a1 == 0xD000000000000016) ? (v21 = v20 == a2) : (v21 = 0), v21 || (OUTLINED_FUNCTION_26_12() & 1) != 0))))
  {
LABEL_6:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3CF18, &qword_193960FB0);
    return sub_1934948FC();
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_13_9();
    v22 = v10;
    v24 = v23;
    *v23 = a1;
    v23[1] = a2;
    v23[5] = &type metadata for IntelligenceFlowJointResolverTelemetry.JRModelInputShapes;
    v25 = swift_allocObject();
    v24[2] = v25;
    v25[2] = v5;
    v25[3] = v9;
    v25[4] = v8;
    v25[5] = v27;
    v25[6] = v26;
    v25[7] = v22;
    *(v24 + 48) = 1;
    swift_willThrow();
  }
}

void sub_19354B62C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  memcpy(__dst, v4, sizeof(__dst));
  v8 = a1 == 0x6E6F69746361 && a2 == 0xE600000000000000;
  if (v8 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    v9 = __dst[0];
    if (__dst[0])
    {
LABEL_7:
      v29[0] = v9;
      v10 = &type metadata for IntelligenceFlowJointResolverTelemetry.JRAction;
      v11 = &off_1F07CA1B0;
LABEL_8:
      sub_193494798(v10, v11, a3);
      return;
    }

    goto LABEL_22;
  }

  v13 = a1 == OUTLINED_FUNCTION_8_31() && a2 == v12;
  if (v13 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    v14 = __dst[1];
    if (__dst[1])
    {
LABEL_15:
      v29[0] = v14;
      v10 = &type metadata for IntelligenceFlowJointResolverTelemetry.JRActionCandidateTuple;
      v11 = &off_1F07CA1C0;
      goto LABEL_8;
    }

LABEL_22:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return;
  }

  v15 = a1 == 0x676E696B6E6172 && a2 == 0xE700000000000000;
  if (v15 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    if (__dst[2] != 1)
    {
      v29[0] = __dst[2];
      v29[1] = __dst[3];
      v10 = &type metadata for IntelligenceFlowJointResolverTelemetry.Ranking;
      v11 = &off_1F07CA1F0;
      goto LABEL_8;
    }

    goto LABEL_22;
  }

  OUTLINED_FUNCTION_38();
  v17 = a1 == 0xD00000000000001DLL && v16 == a2;
  if (v17 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    if (__dst[4])
    {
      v29[0] = __dst[4];
      v10 = &type metadata for IntelligenceFlowJointResolverTelemetry.JRAnonymizedHistoryAndContext;
      v11 = &off_1F07CA1E0;
      goto LABEL_8;
    }

    goto LABEL_22;
  }

  OUTLINED_FUNCTION_38();
  v19 = a1 == 0xD000000000000010 && v18 == a2;
  if (v19 || (OUTLINED_FUNCTION_27_0(), (OUTLINED_FUNCTION_5_5() & 1) != 0))
  {
    if (LOBYTE(__dst[5]) == 2)
    {
      goto LABEL_22;
    }

    LOBYTE(v29[0]) = __dst[5] & 1;
    goto LABEL_38;
  }

  OUTLINED_FUNCTION_38();
  v21 = a1 == 0xD000000000000016 && v20 == a2;
  if (v21 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    if (__dst[6])
    {
      v29[0] = __dst[6];
      v10 = &type metadata for IntelligenceFlowJointResolverTelemetry.JRModelDiagnosticsSignals;
      v11 = &off_1F07CA1A0;
      goto LABEL_8;
    }

    goto LABEL_22;
  }

  v22 = a1 == 0x6341776F64616873 && a2 == 0xEC0000006E6F6974;
  if (v22 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    v9 = __dst[7];
    if (__dst[7])
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

  OUTLINED_FUNCTION_38();
  v24 = a1 == 0xD000000000000010 && v23 == a2;
  if (v24 || (OUTLINED_FUNCTION_27_0(), (OUTLINED_FUNCTION_5_5() & 1) != 0))
  {
    v14 = __dst[8];
    if (__dst[8])
    {
      goto LABEL_15;
    }

    goto LABEL_22;
  }

  v25 = a1 == 0x7473694872657375 && a2 == 0xEB0000000079726FLL;
  if (v25 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    v29[0] = __dst[9];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3CF40, &qword_193960FD8);
LABEL_38:
    sub_1934948FC();
    return;
  }

  sub_19349AB64();
  OUTLINED_FUNCTION_13_9();
  v27 = v26;
  *v26 = a1;
  v26[1] = a2;
  v26[5] = &type metadata for IntelligenceFlowJointResolverTelemetry.JRModelOutputs;
  v28 = swift_allocObject();
  v27[2] = v28;
  memcpy((v28 + 16), __dst, 0x50uLL);
  *(v27 + 48) = 1;
  swift_willThrow();

  sub_19354B9A8(__dst, v29);
}

void sub_19354BA1C()
{
  OUTLINED_FUNCTION_46_8();
  OUTLINED_FUNCTION_38_3();
  v2 = *v0;
  OUTLINED_FUNCTION_22_4();
  v4 = v4 && v3 == v1;
  if (v4 || (OUTLINED_FUNCTION_31_9() & 1) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B9E8, &qword_193957EC8);
    OUTLINED_FUNCTION_16_17();
  }

  else
  {
    sub_19349AB64();
    v5 = OUTLINED_FUNCTION_13_9();
    OUTLINED_FUNCTION_23_21(v5, v6);
    OUTLINED_FUNCTION_4_28(v7, &type metadata for IntelligenceFlowJointResolverTelemetry.JRModelDiagnosticsSignals);
  }

  OUTLINED_FUNCTION_47_12();
}

void sub_19354BAF8()
{
  OUTLINED_FUNCTION_46_8();
  OUTLINED_FUNCTION_21_14();
  OUTLINED_FUNCTION_28_11();
  v1 = v1 && v0 == 0xE700000000000000;
  if (v1 || (OUTLINED_FUNCTION_31_9() & 1) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3CF18, &qword_193960FB0);
    OUTLINED_FUNCTION_16_17();
  }

  else
  {
    sub_19349AB64();
    v2 = OUTLINED_FUNCTION_13_9();
    OUTLINED_FUNCTION_23_21(v2, v3);
    OUTLINED_FUNCTION_4_28(v4, &type metadata for IntelligenceFlowJointResolverTelemetry.JRAction);
  }

  OUTLINED_FUNCTION_47_12();
}

void sub_19354BBEC()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = OUTLINED_FUNCTION_8_31();
  v9 = *v0;
  if (v4 != v7 || v2 != v8)
  {
    v11 = *(v0 + 2);
    v12 = *(v0 + 12);
    v13 = *(v0 + 4);
    v14 = *(v0 + 20);
    if ((OUTLINED_FUNCTION_59_0() & 1) == 0)
    {
      v15 = v4 == 0xD000000000000016 && 0x8000000193A1C440 == v2;
      if (v15 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
      {
        if ((v12 & 1) == 0)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v16 = v4 == 0x65726F63536C6675 && v2 == 0xE800000000000000;
        if (!v16 && (OUTLINED_FUNCTION_59_0() & 1) == 0)
        {
          sub_19349AB64();
          v17 = OUTLINED_FUNCTION_13_9();
          *v18 = v4;
          *(v18 + 8) = v2;
          *(v18 + 40) = &type metadata for IntelligenceFlowJointResolverTelemetry.JRAnonymizedHistoryAndContextTuple;
          *(v18 + 16) = v9;
          *(v18 + 24) = v11;
          *(v18 + 28) = v12;
          *(v18 + 32) = v13;
          *(v18 + 36) = v14;
          OUTLINED_FUNCTION_23_2(v17, v18);

          goto LABEL_8;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_7;
        }
      }

      *v6 = 0u;
      v6[1] = 0u;
      goto LABEL_8;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3CF48, &qword_193960FE0);
LABEL_7:
  sub_1934948FC();
LABEL_8:
  OUTLINED_FUNCTION_27();
}

void sub_19354BDB4()
{
  OUTLINED_FUNCTION_172_0();
  v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_38();
  v7 = v5 == 0xD000000000000012 && v6 == v1;
  if (v7 || (v8 = v5, v9 = v0[1], (OUTLINED_FUNCTION_31_3() & 1) != 0))
  {
    if (v4)
    {
      v10 = &type metadata for IntelligenceFlowJointResolverTelemetry.RankingScoreMatrix;
      v11 = &off_1F07CA200;
LABEL_8:
      sub_193494798(v10, v11, v3);
      return;
    }

LABEL_16:
    *v3 = 0u;
    *(v3 + 16) = 0u;
    return;
  }

  OUTLINED_FUNCTION_38();
  v13 = v8 == 0xD000000000000016 && v12 == v1;
  if (v13 || (OUTLINED_FUNCTION_31_3() & 1) != 0)
  {
    if (v9)
    {
      v10 = &type metadata for IntelligenceFlowJointResolverTelemetry.RankingCandidateMatrix;
      v11 = &off_1F07CA210;
      goto LABEL_8;
    }

    goto LABEL_16;
  }

  sub_19349AB64();
  v14 = OUTLINED_FUNCTION_13_9();
  *v15 = v8;
  v15[1] = v1;
  v15[5] = &type metadata for IntelligenceFlowJointResolverTelemetry.Ranking;
  v15[2] = v4;
  v15[3] = v9;
  OUTLINED_FUNCTION_23_2(v14, v15);
}

void sub_19354BF0C()
{
  OUTLINED_FUNCTION_46_8();
  OUTLINED_FUNCTION_38_3();
  OUTLINED_FUNCTION_25_16();
  OUTLINED_FUNCTION_28_11();
  v2 = v2 && v0 == v1;
  if (v2 || (OUTLINED_FUNCTION_31_9() & 1) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3CF58, &qword_193960FF0);
    OUTLINED_FUNCTION_16_17();
  }

  else
  {
    sub_19349AB64();
    v3 = OUTLINED_FUNCTION_13_9();
    OUTLINED_FUNCTION_23_21(v3, v4);
    OUTLINED_FUNCTION_4_28(v5, &type metadata for IntelligenceFlowJointResolverTelemetry.RankingScoreMatrix);
  }

  OUTLINED_FUNCTION_47_12();
}

void sub_19354BFE4()
{
  OUTLINED_FUNCTION_46_8();
  OUTLINED_FUNCTION_38_3();
  OUTLINED_FUNCTION_25_16();
  OUTLINED_FUNCTION_8_31();
  OUTLINED_FUNCTION_28_11();
  v2 = v2 && v0 == v1;
  if (v2 || (OUTLINED_FUNCTION_31_9() & 1) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3CF60, &qword_193960FF8);
    OUTLINED_FUNCTION_16_17();
  }

  else
  {
    sub_19349AB64();
    v3 = OUTLINED_FUNCTION_13_9();
    OUTLINED_FUNCTION_23_21(v3, v4);
    OUTLINED_FUNCTION_4_28(v5, &type metadata for IntelligenceFlowJointResolverTelemetry.RankingCandidateMatrix);
  }

  OUTLINED_FUNCTION_47_12();
}

void sub_19354C0B4()
{
  OUTLINED_FUNCTION_46_8();
  OUTLINED_FUNCTION_21_14();
  OUTLINED_FUNCTION_28_11();
  v1 = v1 && v0 == 0xE600000000000000;
  if (v1 || (OUTLINED_FUNCTION_31_9() & 1) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B9E8, &qword_193957EC8);
    OUTLINED_FUNCTION_16_17();
  }

  else
  {
    sub_19349AB64();
    v2 = OUTLINED_FUNCTION_13_9();
    OUTLINED_FUNCTION_23_21(v2, v3);
    OUTLINED_FUNCTION_4_28(v4, &type metadata for IntelligenceFlowJointResolverTelemetry.RankingScoreTuple);
  }

  OUTLINED_FUNCTION_47_12();
}

uint64_t sub_19354C184(uint64_t a1, uint64_t a2)
{
  v5 = OUTLINED_FUNCTION_8_31();
  v8 = *v2;
  v9 = a1 == v5 && a2 == v6;
  if (v9 || (v10 = v7, (sub_19393CA30() & 1) != 0))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3CF48, &qword_193960FE0);
    return sub_1934948FC();
  }

  else
  {
    sub_19349AB64();
    v12 = OUTLINED_FUNCTION_13_9();
    *v13 = a1;
    v13[1] = a2;
    v13[5] = v10;
    OUTLINED_FUNCTION_7_27(v12, v13);
  }
}

void sub_19354C288()
{
  OUTLINED_FUNCTION_26();
  v4 = v3;
  v5 = *v0;
  v6 = v3 == 0x73656C707574 && v1 == 0xE600000000000000;
  if (v6 || (v7 = v2, v8 = v1, (sub_19393CA30() & 1) != 0))
  {
    v9 = OUTLINED_FUNCTION_19_3();
    __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
    sub_1934948FC();
  }

  else
  {
    sub_19349AB64();
    v11 = OUTLINED_FUNCTION_13_9();
    *v12 = v4;
    v12[1] = v8;
    v12[5] = v7;
    OUTLINED_FUNCTION_7_27(v11, v12);
  }

  OUTLINED_FUNCTION_27();
}

void sub_19354C394()
{
  OUTLINED_FUNCTION_46_8();
  OUTLINED_FUNCTION_21_14();
  OUTLINED_FUNCTION_28_11();
  v1 = v1 && v0 == 0xE500000000000000;
  if (v1 || (OUTLINED_FUNCTION_31_9() & 1) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3CF18, &qword_193960FB0);
    OUTLINED_FUNCTION_16_17();
  }

  else
  {
    sub_19349AB64();
    v2 = OUTLINED_FUNCTION_13_9();
    OUTLINED_FUNCTION_23_21(v2, v3);
    OUTLINED_FUNCTION_4_28(v4, &type metadata for IntelligenceFlowJointResolverTelemetry.RiskTuple);
  }

  OUTLINED_FUNCTION_47_12();
}

void sub_19354C464()
{
  OUTLINED_FUNCTION_41_9();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_9_6();
  v9 = type metadata accessor for AIML.UUID();
  v10 = OUTLINED_FUNCTION_4_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8_28();
  v13 = v2 == 0x44496C6F6F74 && v1 == 0xE600000000000000;
  if (v13 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    sub_193448758(v0, v3, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_6_3(v3, 1, v9);
    if (!v13)
    {
      OUTLINED_FUNCTION_1_36();
      sub_1935497C4(v3, v4, v14);
      OUTLINED_FUNCTION_19_3();
      sub_193494798(v15, v16, v17);
      OUTLINED_FUNCTION_0_37();
      sub_19344A630(v4, v18);
      return;
    }

    sub_19344E6DC(v3, &qword_1EAE3BCA0, &unk_19395C320);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_38();
  v20 = v2 == 0xD000000000000011 && v19 == v1;
  if (v20 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v33 = *(v0 + *(type metadata accessor for IntelligenceFlowJointResolverTelemetry.UserHistory(0) + 20));
    v21 = &qword_1EAE3B9E8;
    v22 = &qword_193957EC8;
LABEL_16:
    __swift_instantiateConcreteTypeFromMangledNameV2(v21, v22);
LABEL_17:
    sub_1934948FC();
    return;
  }

  OUTLINED_FUNCTION_38();
  v24 = v2 == 0xD000000000000012 && v23 == v1;
  if (v24 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v25 = v0 + *(type metadata accessor for IntelligenceFlowJointResolverTelemetry.UserHistory(0) + 24);
    if (*(v25 + 4))
    {
LABEL_9:
      OUTLINED_FUNCTION_104();
      return;
    }

    v34 = *v25;
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_38();
  v27 = v2 == 0xD000000000000019 && v26 == v1;
  if (v27 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v35 = *(v0 + *(type metadata accessor for IntelligenceFlowJointResolverTelemetry.UserHistory(0) + 28));
    v21 = &unk_1EAE3CF70;
    v22 = &unk_193961008;
    goto LABEL_16;
  }

  sub_19349AB64();
  OUTLINED_FUNCTION_13_9();
  v29 = v28;
  *v28 = v2;
  v28[1] = v1;
  v28[5] = type metadata accessor for IntelligenceFlowJointResolverTelemetry.UserHistory(0);
  __swift_allocate_boxed_opaque_existential_1Tm(v29 + 2);
  v30 = OUTLINED_FUNCTION_141();
  sub_19354CCEC(v30, v31, v32);
  *(v29 + 48) = 1;
  swift_willThrow();
}

void sub_19354C750(void *a1@<X8>)
{
  v51 = a1;
  OUTLINED_FUNCTION_51_8();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v5 = OUTLINED_FUNCTION_47(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v50 - v12;
  v14 = type metadata accessor for AIML.UUID();
  v15 = OUTLINED_FUNCTION_4_1(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_6();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v50 - v22;
  OUTLINED_FUNCTION_38();
  v25 = v3 == 0xD000000000000019 && v24 == v2;
  if (v25 || (OUTLINED_FUNCTION_0_18() & 1) != 0)
  {
    if ((v1[1] & 1) == 0)
    {
      v52 = *v1;
LABEL_8:
      sub_1934948FC();
      return;
    }

    goto LABEL_18;
  }

  OUTLINED_FUNCTION_38();
  v27 = v3 == 0xD000000000000018 && v26 == v2;
  if (v27 || (OUTLINED_FUNCTION_0_18() & 1) != 0)
  {
    v28 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.HistoricalLocationContext(0);
    sub_193448758(v1 + *(v28 + 20), v13, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_23_5(v13);
    if (!v25)
    {
      OUTLINED_FUNCTION_1_36();
      sub_1935497C4(v13, v23, v30);
      sub_193494798(v14, &off_1F07C3F90, v51);
      OUTLINED_FUNCTION_0_37();
      v32 = v23;
LABEL_19:
      sub_19344A630(v32, v31);
      return;
    }

    v29 = v13;
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_38();
  v34 = v3 == 0xD000000000000018 && v33 == v2;
  if (v34 || (OUTLINED_FUNCTION_0_18() & 1) != 0)
  {
    v35 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.HistoricalLocationContext(0);
    sub_193448758(v1 + *(v35 + 24), v10, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_23_5(v10);
    if (!v25)
    {
      OUTLINED_FUNCTION_1_36();
      sub_1935497C4(v10, v20, v36);
      OUTLINED_FUNCTION_93_4();
      sub_193494798(v37, v38, v39);
      OUTLINED_FUNCTION_0_37();
      v32 = v20;
      goto LABEL_19;
    }

    v29 = v10;
LABEL_17:
    sub_19344E6DC(v29, &qword_1EAE3BCA0, &unk_19395C320);
LABEL_18:
    OUTLINED_FUNCTION_27_13();
    return;
  }

  OUTLINED_FUNCTION_38();
  v41 = v3 == 0xD000000000000010 && v40 == v2;
  if (v41 || (OUTLINED_FUNCTION_0_18() & 1) != 0)
  {
    v42 = v1 + *(type metadata accessor for IntelligenceFlowJointResolverTelemetry.HistoricalLocationContext(0) + 28);
    if ((*(v42 + 9) & 1) == 0)
    {
      OUTLINED_FUNCTION_43_1(v42);
      goto LABEL_8;
    }

    goto LABEL_18;
  }

  sub_19349AB64();
  v43 = OUTLINED_FUNCTION_13_9();
  v45 = OUTLINED_FUNCTION_42_15(v43, v44);
  v46 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.HistoricalLocationContext(v45);
  OUTLINED_FUNCTION_126(v46);
  v47 = OUTLINED_FUNCTION_141();
  sub_19354CCEC(v47, v48, v49);
  OUTLINED_FUNCTION_15_24();
  swift_willThrow();
}

void sub_19354CAC8()
{
  OUTLINED_FUNCTION_41_9();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_9_6();
  v9 = type metadata accessor for AIML.UUID();
  v10 = OUTLINED_FUNCTION_4_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8_28();
  v13 = v2 == 0x74616469646E6163 && v1 == 0xEB00000000444965;
  if (v13 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    sub_193448758(v0, v3, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_6_3(v3, 1, v9);
    if (!v13)
    {
      OUTLINED_FUNCTION_1_36();
      sub_1935497C4(v3, v4, v14);
      OUTLINED_FUNCTION_19_3();
      sub_193494798(v15, v16, v17);
      OUTLINED_FUNCTION_0_37();
      sub_19344A630(v4, v18);
      return;
    }

    sub_19344E6DC(v3, &qword_1EAE3BCA0, &unk_19395C320);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_50_7();
  v19 = v13 && v1 == 0xE500000000000000;
  if (v19 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v20 = v0 + *(type metadata accessor for IntelligenceFlowJointResolverTelemetry.SegmentedCandidateCount(0) + 20);
    if (*(v20 + 4))
    {
LABEL_9:
      OUTLINED_FUNCTION_104();
      return;
    }

    v26 = *v20;
    sub_1934948FC();
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_13_9();
    *v21 = v2;
    v21[1] = v1;
    v22 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.SegmentedCandidateCount(0);
    OUTLINED_FUNCTION_126(v22);
    v23 = OUTLINED_FUNCTION_141();
    sub_19354CCEC(v23, v24, v25);
    OUTLINED_FUNCTION_15_24();
    swift_willThrow();
  }
}

uint64_t sub_19354CCEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_4_1(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_13_0();
  v8(v7);
  return a2;
}

uint64_t sub_19354CD60()
{
  OUTLINED_FUNCTION_172_0();
  v3 = v2;
  v5 = v4;
  v6 = *v0;
  v7 = v2 == 0x6E6143656C707574 && v1 == 0xEF73657461646964;
  if (v7 || (v8 = *(v0 + 2), v9 = *(v0 + 12), (OUTLINED_FUNCTION_31_3() & 1) != 0))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3CF48, &qword_193960FE0);
    return sub_1934948FC();
  }

  result = OUTLINED_FUNCTION_50_7();
  v11 = v7 && v1 == 0xE500000000000000;
  if (v11 || (result = OUTLINED_FUNCTION_31_3(), (result & 1) != 0))
  {
    if ((v9 & 1) == 0)
    {
      return sub_1934948FC();
    }

    *v5 = 0u;
    v5[1] = 0u;
  }

  else
  {
    sub_19349AB64();
    v12 = OUTLINED_FUNCTION_13_9();
    *v13 = v3;
    *(v13 + 8) = v1;
    *(v13 + 40) = &type metadata for IntelligenceFlowJointResolverTelemetry.SegmentedTupleCount;
    *(v13 + 16) = v6;
    *(v13 + 24) = v8;
    *(v13 + 28) = v9;
    OUTLINED_FUNCTION_23_2(v12, v13);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_42_15(uint64_t a1, void *a2)
{
  *a2 = v3;
  a2[1] = v2;
  return 0;
}

uint64_t IntelligenceFlowJointResolverTelemetry.init()@<X0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for IntelligenceFlowJointResolverTelemetry(0);
  v3 = v2[5];
  sub_193509014();
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  v5 = v2[7];
  sub_193559594();
  v6 = v2[8];
  sub_19343E51C((a1 + v6));
  v7 = v2[9];
  sub_19355976C();
  v8 = v2[10];
  sub_193559884();
  v9 = v2[11];
  sub_1935092CC();
  *a1 = *sub_19355941C();
  sub_19344E6DC(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  sub_19393BE00();
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  sub_19344E6DC(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  sub_19344E6DC(a1 + v5, &qword_1EAE3CEB0, &qword_193960F60);
  type metadata accessor for IntelligenceFlowJointResolverTelemetry.JointResolverRequestInvocation(0);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  sub_1934354B4(*(a1 + v6));
  *(a1 + v6) = 0xF000000000000007;
  sub_19344E6DC(a1 + v7, &qword_1EAE3CEB8, &qword_193961930);
  type metadata accessor for IntelligenceFlowJointResolverTelemetry.JRExperimentTriggered(0);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  sub_19344E6DC(a1 + v8, &qword_1EAE3CEC0, &qword_193960F68);
  type metadata accessor for IntelligenceFlowJointResolverTelemetry.JRClientEventMetadata(0);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  sub_19344E6DC(a1 + v9, &qword_1EAE3B498, &unk_193959120);
  type metadata accessor for MonotonicTimestamp();
  OUTLINED_FUNCTION_45();

  return __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
}

BOOL static IntelligenceFlowJointResolverTelemetry.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v110 = type metadata accessor for MonotonicTimestamp();
  v4 = OUTLINED_FUNCTION_4_1(v110);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_289();
  v105 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B498, &unk_193959120);
  OUTLINED_FUNCTION_47(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_53_1();
  v106 = v12;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B958, &qword_193957B50);
  OUTLINED_FUNCTION_4_1(v108);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_53_1();
  v109 = v16;
  v17 = OUTLINED_FUNCTION_22_2();
  v115 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.JRClientEventMetadata(v17);
  v18 = OUTLINED_FUNCTION_4_1(v115);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_289();
  v107 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3CEC0, &qword_193960F68);
  OUTLINED_FUNCTION_47(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_53_1();
  v111 = v26;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3CF78, &qword_193961278);
  OUTLINED_FUNCTION_4_1(v113);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_53_1();
  v114 = v30;
  v31 = OUTLINED_FUNCTION_22_2();
  v119 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.JRExperimentTriggered(v31);
  v32 = OUTLINED_FUNCTION_4_1(v119);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_289();
  v112 = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3CEB8, &qword_193961930);
  OUTLINED_FUNCTION_47(v36);
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_53_1();
  v116 = v40;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3CF80, &qword_193961280);
  OUTLINED_FUNCTION_4_1(v117);
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_53_1();
  v118 = v44;
  v45 = OUTLINED_FUNCTION_22_2();
  v46 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.JointResolverRequestInvocation(v45);
  v47 = OUTLINED_FUNCTION_4_1(v46);
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v51 = &v105 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3CEB0, &qword_193960F60);
  OUTLINED_FUNCTION_47(v52);
  v54 = *(v53 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v55);
  v57 = &v105 - v56;
  v58 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3CF88, &qword_193961288) - 8);
  v59 = *(*v58 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v60);
  v62 = &v105 - v61;
  v120 = type metadata accessor for IntelligenceFlowJointResolverTelemetry(0);
  v121 = a1;
  v63 = *(v120 + 28);
  v64 = v58[14];
  sub_1934486F8(a1 + v63, v62, &qword_1EAE3CEB0, &qword_193960F60);
  sub_1934486F8(a2 + v63, &v62[v64], &qword_1EAE3CEB0, &qword_193960F60);
  OUTLINED_FUNCTION_31(v62);
  if (v65)
  {
    OUTLINED_FUNCTION_31(&v62[v64]);
    if (v65)
    {
      sub_19344E6DC(v62, &qword_1EAE3CEB0, &qword_193960F60);
      goto LABEL_12;
    }

LABEL_9:
    v66 = &qword_1EAE3CF88;
    v67 = &qword_193961288;
    v68 = v62;
LABEL_10:
    sub_19344E6DC(v68, v66, v67);
    return 0;
  }

  sub_1934486F8(v62, v57, &qword_1EAE3CEB0, &qword_193960F60);
  OUTLINED_FUNCTION_31(&v62[v64]);
  if (v65)
  {
    sub_19344A688(v57, type metadata accessor for IntelligenceFlowJointResolverTelemetry.JointResolverRequestInvocation);
    goto LABEL_9;
  }

  sub_19354DAE8(&v62[v64], v51, type metadata accessor for IntelligenceFlowJointResolverTelemetry.JointResolverRequestInvocation);
  OUTLINED_FUNCTION_20_15();
  sub_19344A8DC(v69, v70);
  v71 = sub_19393C550();
  sub_19344A688(v51, type metadata accessor for IntelligenceFlowJointResolverTelemetry.JointResolverRequestInvocation);
  sub_19344A688(v57, type metadata accessor for IntelligenceFlowJointResolverTelemetry.JointResolverRequestInvocation);
  sub_19344E6DC(v62, &qword_1EAE3CEB0, &qword_193960F60);
  if ((v71 & 1) == 0)
  {
    return 0;
  }

LABEL_12:
  v73 = v120;
  v72 = v121;
  v74 = *(v120 + 32);
  v75 = *(v121 + v74);
  v76 = *(a2 + v74);
  if ((~v75 & 0xF000000000000007) == 0)
  {
    sub_193438388(v75);
    sub_193438388(v76);
    if ((~v76 & 0xF000000000000007) == 0)
    {
      sub_1934354B4(v75);
      goto LABEL_21;
    }

LABEL_17:
    sub_1934354B4(v75);
    sub_1934354B4(v76);
    return 0;
  }

  v123 = *(v121 + v74);
  if ((~v76 & 0xF000000000000007) == 0)
  {
    sub_193438388(v75);
    sub_193438388(v76);
    sub_193438388(v75);

    goto LABEL_17;
  }

  v122 = v76;
  sub_193438388(v75);
  sub_193438388(v76);
  sub_193438388(v75);
  sub_19354DA94();
  v78 = sub_19393C550();

  sub_1934354B4(v75);
  if ((v78 & 1) == 0)
  {
    return 0;
  }

LABEL_21:
  v79 = v73[9];
  v80 = v118;
  v81 = *(v117 + 48);
  OUTLINED_FUNCTION_25_6(v72 + v79, v118);
  OUTLINED_FUNCTION_40_8();
  v82 = v119;
  OUTLINED_FUNCTION_6_3(v80, 1, v119);
  if (v65)
  {
    OUTLINED_FUNCTION_31(v79 + v81);
    if (v65)
    {
      sub_19344E6DC(v79, &qword_1EAE3CEB8, &qword_193961930);
      goto LABEL_31;
    }

LABEL_29:
    v66 = &qword_1EAE3CF80;
    v67 = &qword_193961280;
LABEL_50:
    v68 = v79;
    goto LABEL_10;
  }

  v83 = v116;
  sub_1934486F8(v79, v116, &qword_1EAE3CEB8, &qword_193961930);
  OUTLINED_FUNCTION_31(v79 + v81);
  if (v84)
  {
    sub_19344A688(v83, type metadata accessor for IntelligenceFlowJointResolverTelemetry.JRExperimentTriggered);
    goto LABEL_29;
  }

  sub_19354DAE8(v79 + v81, v112, type metadata accessor for IntelligenceFlowJointResolverTelemetry.JRExperimentTriggered);
  OUTLINED_FUNCTION_19_23();
  sub_19344A8DC(v85, v86);
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_43_9();
  sub_19344A688(v83, type metadata accessor for IntelligenceFlowJointResolverTelemetry.JRExperimentTriggered);
  sub_19344E6DC(v79, &qword_1EAE3CEB8, &qword_193961930);
  if ((v82 & 1) == 0)
  {
    return 0;
  }

LABEL_31:
  v79 = v73[10];
  v87 = v114;
  v88 = *(v113 + 48);
  OUTLINED_FUNCTION_25_6(v72 + v79, v114);
  OUTLINED_FUNCTION_40_8();
  v89 = v115;
  OUTLINED_FUNCTION_6_3(v87, 1, v115);
  if (v65)
  {
    OUTLINED_FUNCTION_31(v79 + v88);
    if (v65)
    {
      sub_19344E6DC(v79, &qword_1EAE3CEC0, &qword_193960F68);
      goto LABEL_41;
    }

    goto LABEL_39;
  }

  v90 = v111;
  sub_1934486F8(v79, v111, &qword_1EAE3CEC0, &qword_193960F68);
  OUTLINED_FUNCTION_31(v79 + v88);
  if (v91)
  {
    sub_19344A688(v90, type metadata accessor for IntelligenceFlowJointResolverTelemetry.JRClientEventMetadata);
LABEL_39:
    v66 = &qword_1EAE3CF78;
    v67 = &qword_193961278;
    goto LABEL_50;
  }

  sub_19354DAE8(v79 + v88, v107, type metadata accessor for IntelligenceFlowJointResolverTelemetry.JRClientEventMetadata);
  OUTLINED_FUNCTION_18_20();
  sub_19344A8DC(v92, v93);
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_43_9();
  sub_19344A688(v90, type metadata accessor for IntelligenceFlowJointResolverTelemetry.JRClientEventMetadata);
  sub_19344E6DC(v79, &qword_1EAE3CEC0, &qword_193960F68);
  if ((v89 & 1) == 0)
  {
    return 0;
  }

LABEL_41:
  v94 = v73[11];
  v95 = *(v108 + 48);
  v96 = v72 + v94;
  v97 = v109;
  OUTLINED_FUNCTION_25_6(v96, v109);
  v98 = a2 + v94;
  v79 = v97;
  OUTLINED_FUNCTION_25_6(v98, v97 + v95);
  v99 = v110;
  OUTLINED_FUNCTION_6_3(v97, 1, v110);
  if (v65)
  {
    OUTLINED_FUNCTION_31(v97 + v95);
    if (v65)
    {
      sub_19344E6DC(v97, &qword_1EAE3B498, &unk_193959120);
      return 1;
    }

    goto LABEL_49;
  }

  v100 = v97;
  v101 = v106;
  sub_1934486F8(v100, v106, &qword_1EAE3B498, &unk_193959120);
  OUTLINED_FUNCTION_31(v79 + v95);
  if (v102)
  {
    sub_19344A688(v101, type metadata accessor for MonotonicTimestamp);
LABEL_49:
    v66 = &qword_1EAE3B958;
    v67 = &qword_193957B50;
    goto LABEL_50;
  }

  sub_19354DAE8(v79 + v95, v105, type metadata accessor for MonotonicTimestamp);
  OUTLINED_FUNCTION_17_17();
  sub_19344A8DC(v103, v104);
  sub_19393C550();
  OUTLINED_FUNCTION_43_9();
  sub_19344A688(v101, type metadata accessor for MonotonicTimestamp);
  sub_19344E6DC(v79, &qword_1EAE3B498, &unk_193959120);
  return (v99 & 1) != 0;
}

unint64_t sub_19354DA94()
{
  result = qword_1EAE3CFA0;
  if (!qword_1EAE3CFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3CFA0);
  }

  return result;
}

uint64_t sub_19354DAE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_4_1(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t IntelligenceFlowJointResolverTelemetry.hash(into:)()
{
  v1 = v0;
  v69 = type metadata accessor for MonotonicTimestamp();
  v2 = OUTLINED_FUNCTION_4_1(v69);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_289();
  v65 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B498, &unk_193959120);
  OUTLINED_FUNCTION_47(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_53_1();
  v68 = v10;
  v11 = OUTLINED_FUNCTION_22_2();
  v67 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.JRClientEventMetadata(v11);
  v12 = OUTLINED_FUNCTION_4_1(v67);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_289();
  v64 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3CEC0, &qword_193960F68);
  OUTLINED_FUNCTION_47(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v63 - v20;
  v66 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.JRExperimentTriggered(0);
  v22 = OUTLINED_FUNCTION_4_1(v66);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_289();
  v63 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3CEB8, &qword_193961930);
  OUTLINED_FUNCTION_47(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v63 - v30;
  v32 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.JointResolverRequestInvocation(0);
  v33 = OUTLINED_FUNCTION_4_1(v32);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v37 = &v63 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3CEB0, &qword_193960F60);
  OUTLINED_FUNCTION_47(v38);
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v63 - v42;
  v44 = type metadata accessor for IntelligenceFlowJointResolverTelemetry(0);
  sub_1934486F8(v1 + v44[7], v43, &qword_1EAE3CEB0, &qword_193960F60);
  OUTLINED_FUNCTION_6_3(v43, 1, v32);
  if (v45)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    sub_19354DAE8(v43, v37, type metadata accessor for IntelligenceFlowJointResolverTelemetry.JointResolverRequestInvocation);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_20_15();
    sub_19344A8DC(v46, v47);
    OUTLINED_FUNCTION_21_1();
    sub_19393C540();
    sub_19344A688(v37, type metadata accessor for IntelligenceFlowJointResolverTelemetry.JointResolverRequestInvocation);
  }

  v49 = v66;
  v48 = v67;
  if ((~*(v1 + v44[8]) & 0xF000000000000007) != 0)
  {
    v70 = *(v1 + v44[8]);
    OUTLINED_FUNCTION_103_0();
    sub_19354E0A4();

    sub_19393C540();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v50 = v69;
  sub_1934486F8(v1 + v44[9], v31, &qword_1EAE3CEB8, &qword_193961930);
  OUTLINED_FUNCTION_6_3(v31, 1, v49);
  if (v45)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v51 = v31;
    v52 = v63;
    sub_19354DAE8(v51, v63, type metadata accessor for IntelligenceFlowJointResolverTelemetry.JRExperimentTriggered);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_19_23();
    sub_19344A8DC(v53, v54);
    OUTLINED_FUNCTION_21_1();
    sub_19393C540();
    sub_19344A688(v52, type metadata accessor for IntelligenceFlowJointResolverTelemetry.JRExperimentTriggered);
  }

  sub_1934486F8(v1 + v44[10], v21, &qword_1EAE3CEC0, &qword_193960F68);
  OUTLINED_FUNCTION_6_3(v21, 1, v48);
  if (v45)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v55 = v64;
    sub_19354DAE8(v21, v64, type metadata accessor for IntelligenceFlowJointResolverTelemetry.JRClientEventMetadata);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_18_20();
    sub_19344A8DC(v56, v57);
    OUTLINED_FUNCTION_21_1();
    sub_19393C540();
    sub_19344A688(v55, type metadata accessor for IntelligenceFlowJointResolverTelemetry.JRClientEventMetadata);
  }

  v58 = v68;
  sub_1934486F8(v1 + v44[11], v68, &qword_1EAE3B498, &unk_193959120);
  OUTLINED_FUNCTION_6_3(v58, 1, v50);
  if (v45)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  v59 = v65;
  sub_19354DAE8(v58, v65, type metadata accessor for MonotonicTimestamp);
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_17_17();
  sub_19344A8DC(v60, v61);
  OUTLINED_FUNCTION_21_1();
  sub_19393C540();
  return sub_19344A688(v59, type metadata accessor for MonotonicTimestamp);
}

unint64_t sub_19354E0A4()
{
  result = qword_1EAE3CFB8;
  if (!qword_1EAE3CFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3CFB8);
  }

  return result;
}

void IntelligenceFlowJointResolverTelemetry.TreatmentAllocationStatus.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  v2 = 2;
  if (a2 == 2)
  {
    v3 = 1;
  }

  else
  {
    v3 = a2;
  }

  if (a2 != 3)
  {
    v2 = v3;
  }

  if (a2 == 1)
  {
    v2 = 0;
  }

  *a1 = v2;
  OUTLINED_FUNCTION_21(a1);
}

uint64_t static IntelligenceFlowJointResolverTelemetry.TreatmentAllocationStatus.allCases.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = OUTLINED_FUNCTION_42_2(a1, a2, a3, MEMORY[0x1E69E7CC0], &qword_1EAE3D010, &qword_1939613B0);
  v6 = v3;
  v8 = *(v3 + 16);
  v7 = *(v3 + 24);
  v9 = v7 >> 1;
  v10 = v8 + 1;
  if (v7 >> 1 <= v8)
  {
    v22 = OUTLINED_FUNCTION_39(v7);
    v26 = OUTLINED_FUNCTION_84_2(v22, v23, v24, v25, &qword_1EAE3D010, &qword_1939613B0);
    v3 = OUTLINED_FUNCTION_17_2(v26);
  }

  *(v6 + 16) = v10;
  v11 = v6 + 16 * v8;
  *(v11 + 32) = 0;
  *(v11 + 40) = 0;
  if (v9 < (v8 + 2))
  {
    v27 = OUTLINED_FUNCTION_39(v7);
    v31 = OUTLINED_FUNCTION_85(v27, v28, v29, v30, &qword_1EAE3D010, &qword_1939613B0);
    v3 = OUTLINED_FUNCTION_17_2(v31);
  }

  *(v6 + 16) = v8 + 2;
  v12 = v6 + 16 * v10;
  *(v12 + 32) = 0;
  *(v12 + 40) = 1;
  if (v9 < (v8 + 3))
  {
    v32 = OUTLINED_FUNCTION_39(v7);
    v3 = OUTLINED_FUNCTION_84_2(v32, v33, v34, v35, &qword_1EAE3D010, &qword_1939613B0);
    v6 = v3;
  }

  OUTLINED_FUNCTION_50(v3, v4, v5, v6);
  *(v17 + 32) = 1;
  *(v17 + 40) = 1;
  v18 = *(v16 + 24);
  if ((v8 + 4) > (v18 >> 1))
  {
    v36 = OUTLINED_FUNCTION_39(v18);
    v13 = OUTLINED_FUNCTION_85(v36, v37, v38, v39, &qword_1EAE3D010, &qword_1939613B0);
    v16 = v13;
  }

  OUTLINED_FUNCTION_47_5(v13, v14, v15, v16);
  return OUTLINED_FUNCTION_38_1(v19, v20);
}

uint64_t IntelligenceFlowJointResolverTelemetry.TreatmentAllocationStatus.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  v1 = 0x6574617669746341;
  if (*v0 != 1)
  {
    v1 = 0x6176697463616544;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x657461636F6C6C41;
  }
}

void IntelligenceFlowJointResolverTelemetry.TreatmentAllocationStatus.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_0_9() & 1) != 0 || (v1 == 0x657461636F6C6C41 ? (v4 = v0 == 0xE900000000000064) : (v4 = 0), v4 || (OUTLINED_FUNCTION_0_9() & 1) != 0))
  {

    v5 = 0;
  }

  else
  {
    v6 = v1 == 0x6574617669746341 && v0 == 0xE900000000000064;
    if (v6 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
    {

      v5 = 1;
    }

    else if (v1 == 0x6176697463616544 && v0 == 0xEB00000000646574)
    {

      v5 = 2;
    }

    else
    {
      v8 = OUTLINED_FUNCTION_0_9();

      v5 = 2;
      if ((v8 & 1) == 0)
      {
        v5 = 0;
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

void IntelligenceFlowJointResolverTelemetry.JRBucketedDistance.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  v2 = a2 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    case 4:
      v3 = 4;
      break;
    case 5:
      v3 = 5;
      break;
    case 6:
      v3 = 6;
      break;
    default:
      break;
  }

  *a1 = v3;
  OUTLINED_FUNCTION_21(a1);
}

uint64_t static IntelligenceFlowJointResolverTelemetry.JRBucketedDistance.allCases.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OUTLINED_FUNCTION_42_2(a1, a2, a3, MEMORY[0x1E69E7CC0], &qword_1EAE3D008, &qword_1939613A8);
  v6 = OUTLINED_FUNCTION_16_0(v5);
  if (!(!v12 & v11))
  {
    v59 = OUTLINED_FUNCTION_39(v10);
    v63 = OUTLINED_FUNCTION_84_2(v59, v60, v61, v62, &qword_1EAE3D008, &qword_1939613A8);
    v6 = OUTLINED_FUNCTION_17_2(v63);
  }

  OUTLINED_FUNCTION_13_6(v6, v7, v8, v9);
  if (v18 != v19)
  {
    v64 = OUTLINED_FUNCTION_39(v17);
    v68 = OUTLINED_FUNCTION_85(v64, v65, v66, v67, &qword_1EAE3D008, &qword_1939613A8);
    v13 = OUTLINED_FUNCTION_17_2(v68);
  }

  OUTLINED_FUNCTION_8_5(v13, v14, v15, v16);
  if (v18 != v19)
  {
    v69 = OUTLINED_FUNCTION_39(v24);
    v20 = sub_1934B0FCC(v69, v3, 1, v70, &qword_1EAE3D008, &qword_1939613A8);
    v23 = v20;
  }

  OUTLINED_FUNCTION_9_7(v20, v21, v22, v23);
  if (!(v18 ^ v19 | v12))
  {
    v71 = OUTLINED_FUNCTION_39(v29);
    v25 = OUTLINED_FUNCTION_84_2(v71, v72, v73, v74, &qword_1EAE3D008, &qword_1939613A8);
    v28 = v25;
  }

  OUTLINED_FUNCTION_3_7(v25, v26, v27, v28);
  if (!(v18 ^ v19 | v12))
  {
    v75 = OUTLINED_FUNCTION_39(v34);
    v30 = OUTLINED_FUNCTION_85(v75, v76, v77, v78, &qword_1EAE3D008, &qword_1939613A8);
    v33 = v30;
  }

  OUTLINED_FUNCTION_47_5(v30, v31, v32, v33);
  OUTLINED_FUNCTION_4(v35, v36);
  if (v4 + 6 > (v41 >> 1))
  {
    v79 = OUTLINED_FUNCTION_39(v41);
    v37 = OUTLINED_FUNCTION_84_2(v79, v80, v81, v82, &qword_1EAE3D008, &qword_1939613A8);
    v40 = v37;
  }

  OUTLINED_FUNCTION_50(v37, v38, v39, v40);
  OUTLINED_FUNCTION_4(v42, v43);
  if (v4 + 7 > (v48 >> 1))
  {
    v83 = OUTLINED_FUNCTION_39(v48);
    v44 = OUTLINED_FUNCTION_85(v83, v84, v85, v86, &qword_1EAE3D008, &qword_1939613A8);
    v47 = v44;
  }

  OUTLINED_FUNCTION_47_5(v44, v45, v46, v47);
  OUTLINED_FUNCTION_4(v49, v50);
  if (v4 + 8 > (v55 >> 1))
  {
    v87 = OUTLINED_FUNCTION_39(v55);
    v51 = OUTLINED_FUNCTION_84_2(v87, v88, v89, v90, &qword_1EAE3D008, &qword_1939613A8);
    v54 = v51;
  }

  OUTLINED_FUNCTION_50(v51, v52, v53, v54);
  return OUTLINED_FUNCTION_38_1(v56, v57);
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRBucketedDistance.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 0x316C6576654CLL;
  switch(*v0)
  {
    case 1:
      result = 0x326C6576654CLL;
      break;
    case 2:
      result = 0x336C6576654CLL;
      break;
    case 3:
      result = 0x346C6576654CLL;
      break;
    case 4:
      result = 0x356C6576654CLL;
      break;
    case 5:
      result = 0x366C6576654CLL;
      break;
    case 6:
      result = 0x376C6576654CLL;
      break;
    default:
      return result;
  }

  return result;
}

void IntelligenceFlowJointResolverTelemetry.JRBucketedDistance.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_0_9() & 1) != 0 || (v1 == 0x316C6576654CLL ? (v4 = v0 == 0xE600000000000000) : (v4 = 0), v4 || (OUTLINED_FUNCTION_0_9() & 1) != 0))
  {

    v5 = 0;
  }

  else
  {
    v6 = v1 == 0x326C6576654CLL && v0 == 0xE600000000000000;
    if (v6 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
    {

      v5 = 1;
    }

    else
    {
      v7 = v1 == 0x336C6576654CLL && v0 == 0xE600000000000000;
      if (v7 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
      {

        v5 = 2;
      }

      else
      {
        v8 = v1 == 0x346C6576654CLL && v0 == 0xE600000000000000;
        if (v8 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
        {

          v5 = 3;
        }

        else
        {
          v9 = v1 == 0x356C6576654CLL && v0 == 0xE600000000000000;
          if (v9 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
          {

            v5 = 4;
          }

          else
          {
            v10 = v1 == 0x366C6576654CLL && v0 == 0xE600000000000000;
            if (v10 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
            {

              v5 = 5;
            }

            else if (v1 == 0x376C6576654CLL && v0 == 0xE600000000000000)
            {

              v5 = 6;
            }

            else
            {
              v12 = OUTLINED_FUNCTION_0_9();

              v5 = 6;
              if ((v12 & 1) == 0)
              {
                v5 = 0;
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

void IntelligenceFlowJointResolverTelemetry.JRParameterSubType.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  if (!v3 & v2)
  {
    switch(a2)
    {
      case 7000:
        a2 = 60;
        break;
      case 7001:
        a2 = 61;
        break;
      case 7002:
        a2 = 62;
        break;
      case 7003:
        a2 = 63;
        break;
      case 7004:
        a2 = 64;
        break;
      case 7005:
        a2 = 65;
        break;
      case 7006:
        a2 = 66;
        break;
      case 7007:
        a2 = 67;
        break;
      case 7008:
        a2 = 68;
        break;
      case 7009:
        a2 = 69;
        break;
      default:
        break;
    }
  }

  else
  {
    switch(a2)
    {
      case 8000:
        a2 = 70;
        break;
      case 8001:
        a2 = 71;
        break;
      case 8002:
        a2 = 72;
        break;
      case 8003:
        a2 = 73;
        break;
      case 8004:
        a2 = 74;
        break;
      case 8005:
        a2 = 75;
        break;
      case 8006:
        a2 = 76;
        break;
      case 8007:
        a2 = 77;
        break;
      case 8008:
        a2 = 78;
        break;
      case 8009:
        a2 = 79;
        break;
      case 8010:
        a2 = 80;
        break;
      case 8011:
        a2 = 81;
        break;
      case 8012:
        a2 = 82;
        break;
      case 8013:
        a2 = 83;
        break;
      case 8014:
        a2 = 84;
        break;
      case 8015:
        a2 = 85;
        break;
      case 8016:
        a2 = 86;
        break;
      case 8017:
        a2 = 87;
        break;
      default:
        JUMPOUT(0);
    }
  }

  *a1 = a2;
  OUTLINED_FUNCTION_21(a1);
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRParameterSubType.rawValue.getter()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_1939613B8[result];
  }

  return result;
}

uint64_t static IntelligenceFlowJointResolverTelemetry.JRParameterSubType.allCases.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OUTLINED_FUNCTION_42_2(a1, a2, a3, MEMORY[0x1E69E7CC0], &qword_1EAE3D000, &qword_1939613A0);
  v6 = OUTLINED_FUNCTION_16_0(v5);
  if (!(!v12 & v11))
  {
    v626 = OUTLINED_FUNCTION_39(v10);
    v630 = OUTLINED_FUNCTION_84_2(v626, v627, v628, v629, &qword_1EAE3D000, &qword_1939613A0);
    v6 = OUTLINED_FUNCTION_17_2(v630);
  }

  OUTLINED_FUNCTION_13_6(v6, v7, v8, v9);
  if (v18 != v19)
  {
    v631 = OUTLINED_FUNCTION_39(v17);
    v635 = OUTLINED_FUNCTION_85(v631, v632, v633, v634, &qword_1EAE3D000, &qword_1939613A0);
    v13 = OUTLINED_FUNCTION_17_2(v635);
  }

  OUTLINED_FUNCTION_8_5(v13, v14, v15, v16);
  if (v18 != v19)
  {
    v636 = OUTLINED_FUNCTION_39(v24);
    v20 = sub_1934B0FCC(v636, v3, 1, v637, &qword_1EAE3D000, &qword_1939613A0);
    v23 = v20;
  }

  OUTLINED_FUNCTION_9_7(v20, v21, v22, v23);
  if (!(v18 ^ v19 | v12))
  {
    v638 = OUTLINED_FUNCTION_39(v29);
    v25 = OUTLINED_FUNCTION_84_2(v638, v639, v640, v641, &qword_1EAE3D000, &qword_1939613A0);
    v28 = v25;
  }

  OUTLINED_FUNCTION_3_7(v25, v26, v27, v28);
  if (!(v18 ^ v19 | v12))
  {
    v642 = OUTLINED_FUNCTION_39(v34);
    v30 = OUTLINED_FUNCTION_85(v642, v643, v644, v645, &qword_1EAE3D000, &qword_1939613A0);
    v33 = v30;
  }

  OUTLINED_FUNCTION_47_5(v30, v31, v32, v33);
  OUTLINED_FUNCTION_4(v35, v36);
  if (v4 + 6 > (v41 >> 1))
  {
    v646 = OUTLINED_FUNCTION_39(v41);
    v37 = OUTLINED_FUNCTION_84_2(v646, v647, v648, v649, &qword_1EAE3D000, &qword_1939613A0);
    v40 = v37;
  }

  OUTLINED_FUNCTION_50(v37, v38, v39, v40);
  OUTLINED_FUNCTION_4(v42, v43);
  if (v4 + 7 > (v48 >> 1))
  {
    v650 = OUTLINED_FUNCTION_39(v48);
    v44 = OUTLINED_FUNCTION_85(v650, v651, v652, v653, &qword_1EAE3D000, &qword_1939613A0);
    v47 = v44;
  }

  OUTLINED_FUNCTION_47_5(v44, v45, v46, v47);
  OUTLINED_FUNCTION_4(v49, v50);
  if (v4 + 8 > (v55 >> 1))
  {
    v654 = OUTLINED_FUNCTION_39(v55);
    v51 = OUTLINED_FUNCTION_84_2(v654, v655, v656, v657, &qword_1EAE3D000, &qword_1939613A0);
    v54 = v51;
  }

  OUTLINED_FUNCTION_50(v51, v52, v53, v54);
  OUTLINED_FUNCTION_4(v56, v57);
  if (v4 + 9 > (v62 >> 1))
  {
    v658 = OUTLINED_FUNCTION_39(v62);
    v58 = OUTLINED_FUNCTION_85(v658, v659, v660, v661, &qword_1EAE3D000, &qword_1939613A0);
    v61 = v58;
  }

  OUTLINED_FUNCTION_47_5(v58, v59, v60, v61);
  OUTLINED_FUNCTION_4(v63, v64);
  if (v4 + 10 > (v69 >> 1))
  {
    v662 = OUTLINED_FUNCTION_39(v69);
    v65 = OUTLINED_FUNCTION_84_2(v662, v663, v664, v665, &qword_1EAE3D000, &qword_1939613A0);
    v68 = v65;
  }

  OUTLINED_FUNCTION_50(v65, v66, v67, v68);
  OUTLINED_FUNCTION_4(v70, v71);
  if (v4 + 11 > (v76 >> 1))
  {
    v666 = OUTLINED_FUNCTION_39(v76);
    v72 = OUTLINED_FUNCTION_85(v666, v667, v668, v669, &qword_1EAE3D000, &qword_1939613A0);
    v75 = v72;
  }

  OUTLINED_FUNCTION_47_5(v72, v73, v74, v75);
  OUTLINED_FUNCTION_4(v77, v78);
  if (v4 + 12 > (v83 >> 1))
  {
    v670 = OUTLINED_FUNCTION_39(v83);
    v79 = OUTLINED_FUNCTION_84_2(v670, v671, v672, v673, &qword_1EAE3D000, &qword_1939613A0);
    v82 = v79;
  }

  OUTLINED_FUNCTION_50(v79, v80, v81, v82);
  OUTLINED_FUNCTION_4(v84, v85);
  if (v4 + 13 > (v90 >> 1))
  {
    v674 = OUTLINED_FUNCTION_39(v90);
    v86 = OUTLINED_FUNCTION_85(v674, v675, v676, v677, &qword_1EAE3D000, &qword_1939613A0);
    v89 = v86;
  }

  OUTLINED_FUNCTION_47_5(v86, v87, v88, v89);
  OUTLINED_FUNCTION_4(v91, v92);
  if (v4 + 14 > (v97 >> 1))
  {
    v678 = OUTLINED_FUNCTION_39(v97);
    v93 = OUTLINED_FUNCTION_84_2(v678, v679, v680, v681, &qword_1EAE3D000, &qword_1939613A0);
    v96 = v93;
  }

  OUTLINED_FUNCTION_50(v93, v94, v95, v96);
  OUTLINED_FUNCTION_4(v98, v99);
  if (v4 + 15 > (v104 >> 1))
  {
    v682 = OUTLINED_FUNCTION_39(v104);
    v100 = OUTLINED_FUNCTION_85(v682, v683, v684, v685, &qword_1EAE3D000, &qword_1939613A0);
    v103 = v100;
  }

  OUTLINED_FUNCTION_47_5(v100, v101, v102, v103);
  OUTLINED_FUNCTION_4(v105, v106);
  if (v4 + 16 > (v111 >> 1))
  {
    v686 = OUTLINED_FUNCTION_39(v111);
    v107 = OUTLINED_FUNCTION_84_2(v686, v687, v688, v689, &qword_1EAE3D000, &qword_1939613A0);
    v110 = v107;
  }

  OUTLINED_FUNCTION_50(v107, v108, v109, v110);
  OUTLINED_FUNCTION_4(v112, v113);
  if (v4 + 17 > (v118 >> 1))
  {
    v690 = OUTLINED_FUNCTION_39(v118);
    v114 = OUTLINED_FUNCTION_85(v690, v691, v692, v693, &qword_1EAE3D000, &qword_1939613A0);
    v117 = v114;
  }

  OUTLINED_FUNCTION_47_5(v114, v115, v116, v117);
  OUTLINED_FUNCTION_4(v119, v120);
  if (v4 + 18 > (v125 >> 1))
  {
    v694 = OUTLINED_FUNCTION_39(v125);
    v121 = OUTLINED_FUNCTION_84_2(v694, v695, v696, v697, &qword_1EAE3D000, &qword_1939613A0);
    v124 = v121;
  }

  OUTLINED_FUNCTION_50(v121, v122, v123, v124);
  OUTLINED_FUNCTION_4(v126, v127);
  if (v4 + 19 > (v132 >> 1))
  {
    v698 = OUTLINED_FUNCTION_39(v132);
    v128 = OUTLINED_FUNCTION_85(v698, v699, v700, v701, &qword_1EAE3D000, &qword_1939613A0);
    v131 = v128;
  }

  OUTLINED_FUNCTION_47_5(v128, v129, v130, v131);
  OUTLINED_FUNCTION_4(v133, v134);
  if (v4 + 20 > (v139 >> 1))
  {
    v702 = OUTLINED_FUNCTION_39(v139);
    v135 = OUTLINED_FUNCTION_84_2(v702, v703, v704, v705, &qword_1EAE3D000, &qword_1939613A0);
    v138 = v135;
  }

  OUTLINED_FUNCTION_50(v135, v136, v137, v138);
  OUTLINED_FUNCTION_4(v140, v141);
  if (v4 + 21 > (v146 >> 1))
  {
    v706 = OUTLINED_FUNCTION_39(v146);
    v142 = OUTLINED_FUNCTION_85(v706, v707, v708, v709, &qword_1EAE3D000, &qword_1939613A0);
    v145 = v142;
  }

  OUTLINED_FUNCTION_47_5(v142, v143, v144, v145);
  OUTLINED_FUNCTION_4(v147, v148);
  if (v4 + 22 > (v153 >> 1))
  {
    v710 = OUTLINED_FUNCTION_39(v153);
    v149 = OUTLINED_FUNCTION_84_2(v710, v711, v712, v713, &qword_1EAE3D000, &qword_1939613A0);
    v152 = v149;
  }

  OUTLINED_FUNCTION_50(v149, v150, v151, v152);
  OUTLINED_FUNCTION_4(v154, v155);
  if (v4 + 23 > (v160 >> 1))
  {
    v714 = OUTLINED_FUNCTION_39(v160);
    v156 = OUTLINED_FUNCTION_85(v714, v715, v716, v717, &qword_1EAE3D000, &qword_1939613A0);
    v159 = v156;
  }

  OUTLINED_FUNCTION_47_5(v156, v157, v158, v159);
  OUTLINED_FUNCTION_4(v161, v162);
  if (v4 + 24 > (v167 >> 1))
  {
    v718 = OUTLINED_FUNCTION_39(v167);
    v163 = OUTLINED_FUNCTION_84_2(v718, v719, v720, v721, &qword_1EAE3D000, &qword_1939613A0);
    v166 = v163;
  }

  OUTLINED_FUNCTION_50(v163, v164, v165, v166);
  OUTLINED_FUNCTION_4(v168, v169);
  if (v4 + 25 > (v174 >> 1))
  {
    v722 = OUTLINED_FUNCTION_39(v174);
    v170 = OUTLINED_FUNCTION_85(v722, v723, v724, v725, &qword_1EAE3D000, &qword_1939613A0);
    v173 = v170;
  }

  OUTLINED_FUNCTION_47_5(v170, v171, v172, v173);
  OUTLINED_FUNCTION_4(v175, v176);
  if (v4 + 26 > (v181 >> 1))
  {
    v726 = OUTLINED_FUNCTION_39(v181);
    v177 = OUTLINED_FUNCTION_84_2(v726, v727, v728, v729, &qword_1EAE3D000, &qword_1939613A0);
    v180 = v177;
  }

  OUTLINED_FUNCTION_50(v177, v178, v179, v180);
  OUTLINED_FUNCTION_4(v182, v183);
  if (v4 + 27 > (v188 >> 1))
  {
    v730 = OUTLINED_FUNCTION_39(v188);
    v184 = OUTLINED_FUNCTION_85(v730, v731, v732, v733, &qword_1EAE3D000, &qword_1939613A0);
    v187 = v184;
  }

  OUTLINED_FUNCTION_47_5(v184, v185, v186, v187);
  OUTLINED_FUNCTION_4(v189, v190);
  if (v4 + 28 > (v195 >> 1))
  {
    v734 = OUTLINED_FUNCTION_39(v195);
    v191 = OUTLINED_FUNCTION_84_2(v734, v735, v736, v737, &qword_1EAE3D000, &qword_1939613A0);
    v194 = v191;
  }

  OUTLINED_FUNCTION_50(v191, v192, v193, v194);
  OUTLINED_FUNCTION_4(v196, v197);
  if (v4 + 29 > (v202 >> 1))
  {
    v738 = OUTLINED_FUNCTION_39(v202);
    v198 = OUTLINED_FUNCTION_85(v738, v739, v740, v741, &qword_1EAE3D000, &qword_1939613A0);
    v201 = v198;
  }

  OUTLINED_FUNCTION_47_5(v198, v199, v200, v201);
  OUTLINED_FUNCTION_4(v203, v204);
  if (v4 + 30 > (v209 >> 1))
  {
    v742 = OUTLINED_FUNCTION_39(v209);
    v205 = OUTLINED_FUNCTION_84_2(v742, v743, v744, v745, &qword_1EAE3D000, &qword_1939613A0);
    v208 = v205;
  }

  OUTLINED_FUNCTION_50(v205, v206, v207, v208);
  OUTLINED_FUNCTION_4(v210, v211);
  if (v4 + 31 > (v216 >> 1))
  {
    v746 = OUTLINED_FUNCTION_39(v216);
    v212 = OUTLINED_FUNCTION_85(v746, v747, v748, v749, &qword_1EAE3D000, &qword_1939613A0);
    v215 = v212;
  }

  OUTLINED_FUNCTION_47_5(v212, v213, v214, v215);
  OUTLINED_FUNCTION_4(v217, v218);
  if (v4 + 32 > (v223 >> 1))
  {
    v750 = OUTLINED_FUNCTION_39(v223);
    v219 = OUTLINED_FUNCTION_84_2(v750, v751, v752, v753, &qword_1EAE3D000, &qword_1939613A0);
    v222 = v219;
  }

  OUTLINED_FUNCTION_50(v219, v220, v221, v222);
  OUTLINED_FUNCTION_4(v224, v225);
  if (v4 + 33 > (v230 >> 1))
  {
    v754 = OUTLINED_FUNCTION_39(v230);
    v226 = OUTLINED_FUNCTION_85(v754, v755, v756, v757, &qword_1EAE3D000, &qword_1939613A0);
    v229 = v226;
  }

  OUTLINED_FUNCTION_47_5(v226, v227, v228, v229);
  OUTLINED_FUNCTION_4(v231, v232);
  if (v4 + 34 > (v237 >> 1))
  {
    v758 = OUTLINED_FUNCTION_39(v237);
    v233 = OUTLINED_FUNCTION_84_2(v758, v759, v760, v761, &qword_1EAE3D000, &qword_1939613A0);
    v236 = v233;
  }

  OUTLINED_FUNCTION_50(v233, v234, v235, v236);
  OUTLINED_FUNCTION_4(v238, v239);
  if (v4 + 35 > (v244 >> 1))
  {
    v762 = OUTLINED_FUNCTION_39(v244);
    v240 = OUTLINED_FUNCTION_85(v762, v763, v764, v765, &qword_1EAE3D000, &qword_1939613A0);
    v243 = v240;
  }

  OUTLINED_FUNCTION_47_5(v240, v241, v242, v243);
  OUTLINED_FUNCTION_4(v245, v246);
  if (v4 + 36 > (v251 >> 1))
  {
    v766 = OUTLINED_FUNCTION_39(v251);
    v247 = OUTLINED_FUNCTION_84_2(v766, v767, v768, v769, &qword_1EAE3D000, &qword_1939613A0);
    v250 = v247;
  }

  OUTLINED_FUNCTION_50(v247, v248, v249, v250);
  OUTLINED_FUNCTION_4(v252, v253);
  if (v4 + 37 > (v258 >> 1))
  {
    v770 = OUTLINED_FUNCTION_39(v258);
    v254 = OUTLINED_FUNCTION_85(v770, v771, v772, v773, &qword_1EAE3D000, &qword_1939613A0);
    v257 = v254;
  }

  OUTLINED_FUNCTION_47_5(v254, v255, v256, v257);
  OUTLINED_FUNCTION_4(v259, v260);
  if (v4 + 38 > (v265 >> 1))
  {
    v774 = OUTLINED_FUNCTION_39(v265);
    v261 = OUTLINED_FUNCTION_84_2(v774, v775, v776, v777, &qword_1EAE3D000, &qword_1939613A0);
    v264 = v261;
  }

  OUTLINED_FUNCTION_50(v261, v262, v263, v264);
  OUTLINED_FUNCTION_4(v266, v267);
  if (v4 + 39 > (v272 >> 1))
  {
    v778 = OUTLINED_FUNCTION_39(v272);
    v268 = OUTLINED_FUNCTION_85(v778, v779, v780, v781, &qword_1EAE3D000, &qword_1939613A0);
    v271 = v268;
  }

  OUTLINED_FUNCTION_47_5(v268, v269, v270, v271);
  OUTLINED_FUNCTION_4(v273, v274);
  if (v4 + 40 > (v279 >> 1))
  {
    v782 = OUTLINED_FUNCTION_39(v279);
    v275 = OUTLINED_FUNCTION_84_2(v782, v783, v784, v785, &qword_1EAE3D000, &qword_1939613A0);
    v278 = v275;
  }

  OUTLINED_FUNCTION_50(v275, v276, v277, v278);
  OUTLINED_FUNCTION_4(v280, v281);
  if (v4 + 41 > (v286 >> 1))
  {
    v786 = OUTLINED_FUNCTION_39(v286);
    v282 = OUTLINED_FUNCTION_85(v786, v787, v788, v789, &qword_1EAE3D000, &qword_1939613A0);
    v285 = v282;
  }

  OUTLINED_FUNCTION_47_5(v282, v283, v284, v285);
  OUTLINED_FUNCTION_4(v287, v288);
  if (v4 + 42 > (v293 >> 1))
  {
    v790 = OUTLINED_FUNCTION_39(v293);
    v289 = OUTLINED_FUNCTION_84_2(v790, v791, v792, v793, &qword_1EAE3D000, &qword_1939613A0);
    v292 = v289;
  }

  OUTLINED_FUNCTION_50(v289, v290, v291, v292);
  OUTLINED_FUNCTION_4(v294, v295);
  if (v4 + 43 > (v300 >> 1))
  {
    v794 = OUTLINED_FUNCTION_39(v300);
    v296 = OUTLINED_FUNCTION_85(v794, v795, v796, v797, &qword_1EAE3D000, &qword_1939613A0);
    v299 = v296;
  }

  OUTLINED_FUNCTION_47_5(v296, v297, v298, v299);
  OUTLINED_FUNCTION_4(v301, v302);
  if (v4 + 44 > (v307 >> 1))
  {
    v798 = OUTLINED_FUNCTION_39(v307);
    v303 = OUTLINED_FUNCTION_84_2(v798, v799, v800, v801, &qword_1EAE3D000, &qword_1939613A0);
    v306 = v303;
  }

  OUTLINED_FUNCTION_50(v303, v304, v305, v306);
  OUTLINED_FUNCTION_4(v308, v309);
  if (v4 + 45 > (v314 >> 1))
  {
    v802 = OUTLINED_FUNCTION_39(v314);
    v310 = OUTLINED_FUNCTION_85(v802, v803, v804, v805, &qword_1EAE3D000, &qword_1939613A0);
    v313 = v310;
  }

  OUTLINED_FUNCTION_47_5(v310, v311, v312, v313);
  OUTLINED_FUNCTION_4(v315, v316);
  if (v4 + 46 > (v321 >> 1))
  {
    v806 = OUTLINED_FUNCTION_39(v321);
    v317 = OUTLINED_FUNCTION_84_2(v806, v807, v808, v809, &qword_1EAE3D000, &qword_1939613A0);
    v320 = v317;
  }

  OUTLINED_FUNCTION_50(v317, v318, v319, v320);
  OUTLINED_FUNCTION_4(v322, v323);
  if (v4 + 47 > (v328 >> 1))
  {
    v810 = OUTLINED_FUNCTION_39(v328);
    v324 = OUTLINED_FUNCTION_85(v810, v811, v812, v813, &qword_1EAE3D000, &qword_1939613A0);
    v327 = v324;
  }

  OUTLINED_FUNCTION_47_5(v324, v325, v326, v327);
  OUTLINED_FUNCTION_4(v329, v330);
  if (v4 + 48 > (v335 >> 1))
  {
    v814 = OUTLINED_FUNCTION_39(v335);
    v331 = OUTLINED_FUNCTION_84_2(v814, v815, v816, v817, &qword_1EAE3D000, &qword_1939613A0);
    v334 = v331;
  }

  OUTLINED_FUNCTION_50(v331, v332, v333, v334);
  OUTLINED_FUNCTION_4(v336, v337);
  if (v4 + 49 > (v342 >> 1))
  {
    v818 = OUTLINED_FUNCTION_39(v342);
    v338 = OUTLINED_FUNCTION_85(v818, v819, v820, v821, &qword_1EAE3D000, &qword_1939613A0);
    v341 = v338;
  }

  OUTLINED_FUNCTION_47_5(v338, v339, v340, v341);
  OUTLINED_FUNCTION_4(v343, v344);
  if (v4 + 50 > (v349 >> 1))
  {
    v822 = OUTLINED_FUNCTION_39(v349);
    v345 = OUTLINED_FUNCTION_84_2(v822, v823, v824, v825, &qword_1EAE3D000, &qword_1939613A0);
    v348 = v345;
  }

  OUTLINED_FUNCTION_50(v345, v346, v347, v348);
  OUTLINED_FUNCTION_4(v350, v351);
  if (v4 + 51 > (v356 >> 1))
  {
    v826 = OUTLINED_FUNCTION_39(v356);
    v352 = OUTLINED_FUNCTION_85(v826, v827, v828, v829, &qword_1EAE3D000, &qword_1939613A0);
    v355 = v352;
  }

  OUTLINED_FUNCTION_47_5(v352, v353, v354, v355);
  OUTLINED_FUNCTION_4(v357, v358);
  if (v4 + 52 > (v363 >> 1))
  {
    v830 = OUTLINED_FUNCTION_39(v363);
    v359 = OUTLINED_FUNCTION_84_2(v830, v831, v832, v833, &qword_1EAE3D000, &qword_1939613A0);
    v362 = v359;
  }

  OUTLINED_FUNCTION_50(v359, v360, v361, v362);
  OUTLINED_FUNCTION_4(v364, v365);
  if (v4 + 53 > (v370 >> 1))
  {
    v834 = OUTLINED_FUNCTION_39(v370);
    v366 = OUTLINED_FUNCTION_85(v834, v835, v836, v837, &qword_1EAE3D000, &qword_1939613A0);
    v369 = v366;
  }

  OUTLINED_FUNCTION_47_5(v366, v367, v368, v369);
  OUTLINED_FUNCTION_4(v371, v372);
  if (v4 + 54 > (v377 >> 1))
  {
    v838 = OUTLINED_FUNCTION_39(v377);
    v373 = OUTLINED_FUNCTION_84_2(v838, v839, v840, v841, &qword_1EAE3D000, &qword_1939613A0);
    v376 = v373;
  }

  OUTLINED_FUNCTION_50(v373, v374, v375, v376);
  OUTLINED_FUNCTION_4(v378, v379);
  if (v4 + 55 > (v384 >> 1))
  {
    v842 = OUTLINED_FUNCTION_39(v384);
    v380 = OUTLINED_FUNCTION_85(v842, v843, v844, v845, &qword_1EAE3D000, &qword_1939613A0);
    v383 = v380;
  }

  OUTLINED_FUNCTION_47_5(v380, v381, v382, v383);
  OUTLINED_FUNCTION_4(v385, v386);
  if (v4 + 56 > (v391 >> 1))
  {
    v846 = OUTLINED_FUNCTION_39(v391);
    v387 = OUTLINED_FUNCTION_84_2(v846, v847, v848, v849, &qword_1EAE3D000, &qword_1939613A0);
    v390 = v387;
  }

  OUTLINED_FUNCTION_50(v387, v388, v389, v390);
  OUTLINED_FUNCTION_4(v392, v393);
  if (v4 + 57 > (v398 >> 1))
  {
    v850 = OUTLINED_FUNCTION_39(v398);
    v394 = OUTLINED_FUNCTION_85(v850, v851, v852, v853, &qword_1EAE3D000, &qword_1939613A0);
    v397 = v394;
  }

  OUTLINED_FUNCTION_47_5(v394, v395, v396, v397);
  OUTLINED_FUNCTION_4(v399, v400);
  if (v4 + 58 > (v405 >> 1))
  {
    v854 = OUTLINED_FUNCTION_39(v405);
    v401 = OUTLINED_FUNCTION_84_2(v854, v855, v856, v857, &qword_1EAE3D000, &qword_1939613A0);
    v404 = v401;
  }

  OUTLINED_FUNCTION_50(v401, v402, v403, v404);
  OUTLINED_FUNCTION_4(v406, v407);
  if (v4 + 59 > (v412 >> 1))
  {
    v858 = OUTLINED_FUNCTION_39(v412);
    v408 = OUTLINED_FUNCTION_85(v858, v859, v860, v861, &qword_1EAE3D000, &qword_1939613A0);
    v411 = v408;
  }

  OUTLINED_FUNCTION_47_5(v408, v409, v410, v411);
  OUTLINED_FUNCTION_4(v413, v414);
  if (v4 + 60 > (v419 >> 1))
  {
    v862 = OUTLINED_FUNCTION_39(v419);
    v415 = OUTLINED_FUNCTION_84_2(v862, v863, v864, v865, &qword_1EAE3D000, &qword_1939613A0);
    v418 = v415;
  }

  OUTLINED_FUNCTION_50(v415, v416, v417, v418);
  OUTLINED_FUNCTION_4(v420, v421);
  if (v4 + 61 > (v426 >> 1))
  {
    v866 = OUTLINED_FUNCTION_39(v426);
    v422 = OUTLINED_FUNCTION_85(v866, v867, v868, v869, &qword_1EAE3D000, &qword_1939613A0);
    v425 = v422;
  }

  OUTLINED_FUNCTION_47_5(v422, v423, v424, v425);
  OUTLINED_FUNCTION_4(v427, v428);
  if (v4 + 62 > (v433 >> 1))
  {
    v870 = OUTLINED_FUNCTION_39(v433);
    v429 = OUTLINED_FUNCTION_84_2(v870, v871, v872, v873, &qword_1EAE3D000, &qword_1939613A0);
    v432 = v429;
  }

  OUTLINED_FUNCTION_50(v429, v430, v431, v432);
  OUTLINED_FUNCTION_4(v434, v435);
  if (v4 + 63 > (v440 >> 1))
  {
    v874 = OUTLINED_FUNCTION_39(v440);
    v436 = OUTLINED_FUNCTION_85(v874, v875, v876, v877, &qword_1EAE3D000, &qword_1939613A0);
    v439 = v436;
  }

  OUTLINED_FUNCTION_47_5(v436, v437, v438, v439);
  OUTLINED_FUNCTION_4(v441, v442);
  if (v4 + 64 > (v447 >> 1))
  {
    v878 = OUTLINED_FUNCTION_39(v447);
    v443 = OUTLINED_FUNCTION_84_2(v878, v879, v880, v881, &qword_1EAE3D000, &qword_1939613A0);
    v446 = v443;
  }

  OUTLINED_FUNCTION_50(v443, v444, v445, v446);
  OUTLINED_FUNCTION_4(v448, v449);
  if (v4 + 65 > (v454 >> 1))
  {
    v882 = OUTLINED_FUNCTION_39(v454);
    v450 = OUTLINED_FUNCTION_85(v882, v883, v884, v885, &qword_1EAE3D000, &qword_1939613A0);
    v453 = v450;
  }

  OUTLINED_FUNCTION_47_5(v450, v451, v452, v453);
  OUTLINED_FUNCTION_4(v455, v456);
  if (v4 + 66 > (v461 >> 1))
  {
    v886 = OUTLINED_FUNCTION_39(v461);
    v457 = OUTLINED_FUNCTION_84_2(v886, v887, v888, v889, &qword_1EAE3D000, &qword_1939613A0);
    v460 = v457;
  }

  OUTLINED_FUNCTION_50(v457, v458, v459, v460);
  OUTLINED_FUNCTION_4(v462, v463);
  if (v4 + 67 > (v468 >> 1))
  {
    v890 = OUTLINED_FUNCTION_39(v468);
    v464 = OUTLINED_FUNCTION_85(v890, v891, v892, v893, &qword_1EAE3D000, &qword_1939613A0);
    v467 = v464;
  }

  OUTLINED_FUNCTION_47_5(v464, v465, v466, v467);
  OUTLINED_FUNCTION_4(v469, v470);
  if (v4 + 68 > (v475 >> 1))
  {
    v894 = OUTLINED_FUNCTION_39(v475);
    v471 = OUTLINED_FUNCTION_84_2(v894, v895, v896, v897, &qword_1EAE3D000, &qword_1939613A0);
    v474 = v471;
  }

  OUTLINED_FUNCTION_50(v471, v472, v473, v474);
  OUTLINED_FUNCTION_4(v476, v477);
  if (v4 + 69 > (v482 >> 1))
  {
    v898 = OUTLINED_FUNCTION_39(v482);
    v478 = OUTLINED_FUNCTION_85(v898, v899, v900, v901, &qword_1EAE3D000, &qword_1939613A0);
    v481 = v478;
  }

  OUTLINED_FUNCTION_47_5(v478, v479, v480, v481);
  OUTLINED_FUNCTION_4(v483, v484);
  if (v4 + 70 > (v489 >> 1))
  {
    v902 = OUTLINED_FUNCTION_39(v489);
    v485 = OUTLINED_FUNCTION_84_2(v902, v903, v904, v905, &qword_1EAE3D000, &qword_1939613A0);
    v488 = v485;
  }

  OUTLINED_FUNCTION_50(v485, v486, v487, v488);
  OUTLINED_FUNCTION_4(v490, v491);
  if (v4 + 71 > (v496 >> 1))
  {
    v906 = OUTLINED_FUNCTION_39(v496);
    v492 = OUTLINED_FUNCTION_85(v906, v907, v908, v909, &qword_1EAE3D000, &qword_1939613A0);
    v495 = v492;
  }

  OUTLINED_FUNCTION_47_5(v492, v493, v494, v495);
  OUTLINED_FUNCTION_4(v497, v498);
  if (v4 + 72 > (v503 >> 1))
  {
    v910 = OUTLINED_FUNCTION_39(v503);
    v499 = OUTLINED_FUNCTION_84_2(v910, v911, v912, v913, &qword_1EAE3D000, &qword_1939613A0);
    v502 = v499;
  }

  OUTLINED_FUNCTION_50(v499, v500, v501, v502);
  OUTLINED_FUNCTION_4(v504, v505);
  if (v4 + 73 > (v510 >> 1))
  {
    v914 = OUTLINED_FUNCTION_39(v510);
    v506 = OUTLINED_FUNCTION_85(v914, v915, v916, v917, &qword_1EAE3D000, &qword_1939613A0);
    v509 = v506;
  }

  OUTLINED_FUNCTION_47_5(v506, v507, v508, v509);
  OUTLINED_FUNCTION_4(v511, v512);
  if (v4 + 74 > (v517 >> 1))
  {
    v918 = OUTLINED_FUNCTION_39(v517);
    v513 = OUTLINED_FUNCTION_84_2(v918, v919, v920, v921, &qword_1EAE3D000, &qword_1939613A0);
    v516 = v513;
  }

  OUTLINED_FUNCTION_50(v513, v514, v515, v516);
  OUTLINED_FUNCTION_4(v518, v519);
  if (v4 + 75 > (v524 >> 1))
  {
    v922 = OUTLINED_FUNCTION_39(v524);
    v520 = OUTLINED_FUNCTION_85(v922, v923, v924, v925, &qword_1EAE3D000, &qword_1939613A0);
    v523 = v520;
  }

  OUTLINED_FUNCTION_47_5(v520, v521, v522, v523);
  OUTLINED_FUNCTION_4(v525, v526);
  if (v4 + 76 > (v531 >> 1))
  {
    v926 = OUTLINED_FUNCTION_39(v531);
    v527 = OUTLINED_FUNCTION_84_2(v926, v927, v928, v929, &qword_1EAE3D000, &qword_1939613A0);
    v530 = v527;
  }

  OUTLINED_FUNCTION_50(v527, v528, v529, v530);
  OUTLINED_FUNCTION_4(v532, v533);
  if (v4 + 77 > (v538 >> 1))
  {
    v930 = OUTLINED_FUNCTION_39(v538);
    v534 = OUTLINED_FUNCTION_85(v930, v931, v932, v933, &qword_1EAE3D000, &qword_1939613A0);
    v537 = v534;
  }

  OUTLINED_FUNCTION_47_5(v534, v535, v536, v537);
  OUTLINED_FUNCTION_4(v539, v540);
  if (v4 + 78 > (v545 >> 1))
  {
    v934 = OUTLINED_FUNCTION_39(v545);
    v541 = OUTLINED_FUNCTION_84_2(v934, v935, v936, v937, &qword_1EAE3D000, &qword_1939613A0);
    v544 = v541;
  }

  OUTLINED_FUNCTION_50(v541, v542, v543, v544);
  OUTLINED_FUNCTION_4(v546, v547);
  if (v4 + 79 > (v552 >> 1))
  {
    v938 = OUTLINED_FUNCTION_39(v552);
    v548 = OUTLINED_FUNCTION_85(v938, v939, v940, v941, &qword_1EAE3D000, &qword_1939613A0);
    v551 = v548;
  }

  OUTLINED_FUNCTION_47_5(v548, v549, v550, v551);
  OUTLINED_FUNCTION_4(v553, v554);
  if (v4 + 80 > (v559 >> 1))
  {
    v942 = OUTLINED_FUNCTION_39(v559);
    v555 = OUTLINED_FUNCTION_84_2(v942, v943, v944, v945, &qword_1EAE3D000, &qword_1939613A0);
    v558 = v555;
  }

  OUTLINED_FUNCTION_50(v555, v556, v557, v558);
  OUTLINED_FUNCTION_4(v560, v561);
  if (v4 + 81 > (v566 >> 1))
  {
    v946 = OUTLINED_FUNCTION_39(v566);
    v562 = OUTLINED_FUNCTION_85(v946, v947, v948, v949, &qword_1EAE3D000, &qword_1939613A0);
    v565 = v562;
  }

  OUTLINED_FUNCTION_47_5(v562, v563, v564, v565);
  OUTLINED_FUNCTION_4(v567, v568);
  if (v4 + 82 > (v573 >> 1))
  {
    v950 = OUTLINED_FUNCTION_39(v573);
    v569 = OUTLINED_FUNCTION_84_2(v950, v951, v952, v953, &qword_1EAE3D000, &qword_1939613A0);
    v572 = v569;
  }

  OUTLINED_FUNCTION_50(v569, v570, v571, v572);
  OUTLINED_FUNCTION_4(v574, v575);
  if (v4 + 83 > (v580 >> 1))
  {
    v954 = OUTLINED_FUNCTION_39(v580);
    v576 = OUTLINED_FUNCTION_85(v954, v955, v956, v957, &qword_1EAE3D000, &qword_1939613A0);
    v579 = v576;
  }

  OUTLINED_FUNCTION_47_5(v576, v577, v578, v579);
  OUTLINED_FUNCTION_4(v581, v582);
  if (v4 + 84 > (v587 >> 1))
  {
    v958 = OUTLINED_FUNCTION_39(v587);
    v583 = OUTLINED_FUNCTION_84_2(v958, v959, v960, v961, &qword_1EAE3D000, &qword_1939613A0);
    v586 = v583;
  }

  OUTLINED_FUNCTION_50(v583, v584, v585, v586);
  OUTLINED_FUNCTION_4(v588, v589);
  if (v4 + 85 > (v594 >> 1))
  {
    v962 = OUTLINED_FUNCTION_39(v594);
    v590 = OUTLINED_FUNCTION_85(v962, v963, v964, v965, &qword_1EAE3D000, &qword_1939613A0);
    v593 = v590;
  }

  OUTLINED_FUNCTION_47_5(v590, v591, v592, v593);
  OUTLINED_FUNCTION_4(v595, v596);
  if (v4 + 86 > (v601 >> 1))
  {
    v966 = OUTLINED_FUNCTION_39(v601);
    v597 = OUTLINED_FUNCTION_84_2(v966, v967, v968, v969, &qword_1EAE3D000, &qword_1939613A0);
    v600 = v597;
  }

  OUTLINED_FUNCTION_50(v597, v598, v599, v600);
  OUTLINED_FUNCTION_4(v602, v603);
  if (v4 + 87 > (v608 >> 1))
  {
    v970 = OUTLINED_FUNCTION_39(v608);
    v604 = OUTLINED_FUNCTION_85(v970, v971, v972, v973, &qword_1EAE3D000, &qword_1939613A0);
    v607 = v604;
  }

  OUTLINED_FUNCTION_47_5(v604, v605, v606, v607);
  OUTLINED_FUNCTION_4(v609, v610);
  if (v4 + 88 > (v615 >> 1))
  {
    v974 = OUTLINED_FUNCTION_39(v615);
    v611 = OUTLINED_FUNCTION_84_2(v974, v975, v976, v977, &qword_1EAE3D000, &qword_1939613A0);
    v614 = v611;
  }

  OUTLINED_FUNCTION_50(v611, v612, v613, v614);
  OUTLINED_FUNCTION_4(v616, v617);
  if (v4 + 89 > (v622 >> 1))
  {
    v978 = OUTLINED_FUNCTION_39(v622);
    v618 = OUTLINED_FUNCTION_85(v978, v979, v980, v981, &qword_1EAE3D000, &qword_1939613A0);
    v621 = v618;
  }

  OUTLINED_FUNCTION_47_5(v618, v619, v620, v621);
  *(v623 + 32) = 87;
  *(v623 + 40) = v3;
  return v624;
}

void IntelligenceFlowJointResolverTelemetry.JRParameterSubType.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    switch(*v0)
    {
      case 0xALL:
      case 0x17:
      case 0x18:
      case 0x1CLL:
      case 0x1ELL:
      case 0x21:
      case 0x22:
      case 0x23:
      case 0x25:
      case 0x26:
      case 0x35:
      case 0x36:
      case 0x47:
      case 0x49:
      case 0x4ALL:
      case 0x4BLL:
      case 0x4CLL:
      case 0x4DLL:
      case 0x4FLL:
      case 0x52:
      case 0x57:
        return;
      case 0xCLL:
      case 0xDLL:
      case 0xELL:
      case 0x11:
      case 0x13:
        OUTLINED_FUNCTION_34_14();
        break;
      case 0xFLL:
      case 0x12:
        OUTLINED_FUNCTION_30_10();
        break;
      case 0x14:
        OUTLINED_FUNCTION_44_10();
        break;
      case 0x16:
        OUTLINED_FUNCTION_47_13();
        break;
      case 0x19:
        OUTLINED_FUNCTION_45_11();
        break;
      case 0x1BLL:
        OUTLINED_FUNCTION_46_9();
        break;
      case 0x1DLL:
        OUTLINED_FUNCTION_39_12();
        break;
      default:
        OUTLINED_FUNCTION_38();
        break;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_5();
  }
}

void IntelligenceFlowJointResolverTelemetry.JRParameterSubType.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_0_9() & 1) != 0 || ((OUTLINED_FUNCTION_6_27(), v3) ? (v5 = v4 == v0) : (v5 = 0), v5 || (OUTLINED_FUNCTION_2_33() & 1) != 0))
  {

    v6 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_38();
    v8 = v1 == 0xD000000000000017 && v7 == v0;
    if (v8 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
    {

      v6 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_38();
      v10 = v1 == 0xD000000000000014 && v9 == v0;
      if (v10 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
      {

        v6 = 2;
      }

      else
      {
        OUTLINED_FUNCTION_38();
        v12 = v1 == 0xD000000000000010 && v11 == v0;
        if (v12 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
        {

          v6 = 3;
        }

        else
        {
          OUTLINED_FUNCTION_79_0();
          v14 = v3 && v13 == v0;
          if (v14 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
          {

            v6 = 4;
          }

          else
          {
            OUTLINED_FUNCTION_6_27();
            v16 = v3 && v15 == v0;
            if (v16 || (OUTLINED_FUNCTION_2_33() & 1) != 0)
            {

              v6 = 5;
            }

            else
            {
              OUTLINED_FUNCTION_38();
              v18 = v1 == 0xD000000000000018 && v17 == v0;
              if (v18 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
              {

                v6 = 6;
              }

              else
              {
                OUTLINED_FUNCTION_6_27();
                v20 = v3 && v19 == v0;
                if (v20 || (OUTLINED_FUNCTION_2_33() & 1) != 0)
                {

                  v6 = 7;
                }

                else
                {
                  OUTLINED_FUNCTION_6_27();
                  v22 = v3 && v21 == v0;
                  if (v22 || (OUTLINED_FUNCTION_2_33() & 1) != 0)
                  {

                    v6 = 8;
                  }

                  else
                  {
                    OUTLINED_FUNCTION_60();
                    v24 = v3 && v23 == v0;
                    if (v24 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                    {

                      v6 = 9;
                    }

                    else
                    {
                      v26 = v1 == (OUTLINED_FUNCTION_30_10() & 0xFFFFFFFFFFFFLL | 0x6E55000000000000) && v0 == v25;
                      if (v26 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                      {

                        v6 = 10;
                      }

                      else
                      {
                        OUTLINED_FUNCTION_6_27();
                        v28 = v3 && v27 == v0;
                        if (v28 || (OUTLINED_FUNCTION_2_33() & 1) != 0)
                        {

                          v6 = 11;
                        }

                        else
                        {
                          v30 = v1 == (OUTLINED_FUNCTION_34_14() & 0xFFFFFFFFFFFFLL | 0x694C000000000000) && v0 == v29;
                          if (v30 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                          {

                            v6 = 12;
                          }

                          else
                          {
                            v32 = v1 == (OUTLINED_FUNCTION_34_14() & 0xFFFFFFFFFFFFLL | 0x6D49000000000000) && v0 == v31;
                            if (v32 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                            {

                              v6 = 13;
                            }

                            else
                            {
                              v34 = v1 == (OUTLINED_FUNCTION_34_14() & 0xFFFFFFFFFFFFLL | 0x6956000000000000) && v0 == v33;
                              if (v34 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                              {

                                v6 = 14;
                              }

                              else
                              {
                                v36 = v1 == (OUTLINED_FUNCTION_30_10() & 0xFFFFFFFFFFFFLL | 0x6F43000000000000) && v0 == v35;
                                if (v36 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                {

                                  v6 = 15;
                                }

                                else
                                {
                                  OUTLINED_FUNCTION_38();
                                  v38 = v1 == 0xD000000000000013 && v37 == v0;
                                  if (v38 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                  {

                                    v6 = 16;
                                  }

                                  else
                                  {
                                    v39 = v1 == (OUTLINED_FUNCTION_34_14() & 0xFFFFFFFFFFFFLL | 0x654D000000000000) && v0 == 0xED00006567617373;
                                    if (v39 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                    {

                                      v6 = 17;
                                    }

                                    else
                                    {
                                      v41 = v1 == (OUTLINED_FUNCTION_30_10() & 0xFFFFFFFFFFFFLL | 0x6946000000000000) && v0 == v40;
                                      if (v41 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                      {

                                        v6 = 18;
                                      }

                                      else
                                      {
                                        v43 = v1 == (OUTLINED_FUNCTION_34_14() & 0xFFFFFFFFFFFFLL | 0x6C41000000000000) && v0 == v42;
                                        if (v43 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                        {

                                          v6 = 19;
                                        }

                                        else
                                        {
                                          v45 = v1 == OUTLINED_FUNCTION_44_10() && v0 == v44;
                                          if (v45 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                          {

                                            v6 = 20;
                                          }

                                          else
                                          {
                                            OUTLINED_FUNCTION_38();
                                            v47 = v1 == 0xD000000000000011 && v46 == v0;
                                            if (v47 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                            {

                                              v6 = 21;
                                            }

                                            else
                                            {
                                              v49 = v1 == (OUTLINED_FUNCTION_47_13() & 0xFFFFFFFFFFFFLL | 0x7669000000000000) && v0 == v48;
                                              if (v49 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                              {

                                                v6 = 22;
                                              }

                                              else
                                              {
                                                v50 = v1 == 0x616D497972657551 && v0 == 0xEA00000000006567;
                                                if (v50 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                {

                                                  v6 = 23;
                                                }

                                                else
                                                {
                                                  v51 = v1 == 0x6469567972657551 && v0 == 0xEA00000000006F65;
                                                  if (v51 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                  {

                                                    v6 = 24;
                                                  }

                                                  else
                                                  {
                                                    v53 = v1 == OUTLINED_FUNCTION_45_11() && v0 == v52;
                                                    if (v53 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                    {

                                                      v6 = 25;
                                                    }

                                                    else
                                                    {
                                                      OUTLINED_FUNCTION_6_27();
                                                      v55 = v3 && v54 == v0;
                                                      if (v55 || (OUTLINED_FUNCTION_2_33() & 1) != 0)
                                                      {

                                                        v6 = 26;
                                                      }

                                                      else
                                                      {
                                                        v57 = v1 == OUTLINED_FUNCTION_46_9() && v0 == v56;
                                                        if (v57 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                        {

                                                          v6 = 27;
                                                        }

                                                        else
                                                        {
                                                          v58 = v1 == 0x6C69467972657551 && v0 == 0xEC0000006C725565;
                                                          if (v58 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                          {

                                                            v6 = 28;
                                                          }

                                                          else
                                                          {
                                                            v60 = v1 == OUTLINED_FUNCTION_39_12() && v0 == v59;
                                                            if (v60 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                            {

                                                              v6 = 29;
                                                            }

                                                            else
                                                            {
                                                              v61 = v1 == 0x6465727265666544 && v0 == 0xEF6E776F6E6B6E55;
                                                              if (v61 || (OUTLINED_FUNCTION_4_29() & 1) != 0)
                                                              {

                                                                v6 = 30;
                                                              }

                                                              else
                                                              {
                                                                OUTLINED_FUNCTION_60();
                                                                v63 = v3 && v62 == v0;
                                                                if (v63 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                                {

                                                                  v6 = 31;
                                                                }

                                                                else
                                                                {
                                                                  OUTLINED_FUNCTION_38();
                                                                  v65 = v1 == 0xD000000000000011 && v64 == v0;
                                                                  if (v65 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                                  {

                                                                    v6 = 32;
                                                                  }

                                                                  else
                                                                  {
                                                                    v66 = v1 == 0x6465727265666544 && v0 == 0xED00006567616D49;
                                                                    if (v66 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                                    {

                                                                      v6 = 33;
                                                                    }

                                                                    else
                                                                    {
                                                                      v67 = v1 == 0x6465727265666544 && v0 == 0xED00006F65646956;
                                                                      if (v67 || (OUTLINED_FUNCTION_4_29() & 1) != 0)
                                                                      {

                                                                        v6 = 34;
                                                                      }

                                                                      else
                                                                      {
                                                                        v68 = v1 == 0x6465727265666544 && v0 == 0xEF746361746E6F43;
                                                                        if (v68 || (OUTLINED_FUNCTION_4_29() & 1) != 0)
                                                                        {

                                                                          v6 = 35;
                                                                        }

                                                                        else
                                                                        {
                                                                          OUTLINED_FUNCTION_38();
                                                                          v70 = v1 == 0xD000000000000015 && v69 == v0;
                                                                          if (v70 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                                          {

                                                                            v6 = 36;
                                                                          }

                                                                          else
                                                                          {
                                                                            v71 = v1 == 0x6465727265666544 && v0 == 0xEF6567617373654DLL;
                                                                            if (v71 || (OUTLINED_FUNCTION_4_29() & 1) != 0)
                                                                            {

                                                                              v6 = 37;
                                                                            }

                                                                            else
                                                                            {
                                                                              v72 = v1 == 0x6465727265666544 && v0 == 0xEF6C7255656C6946;
                                                                              if (v72 || (OUTLINED_FUNCTION_4_29() & 1) != 0)
                                                                              {

                                                                                v6 = 38;
                                                                              }

                                                                              else
                                                                              {
                                                                                OUTLINED_FUNCTION_38();
                                                                                v74 = v1 == 0xD000000000000011 && v73 == v0;
                                                                                if (v74 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                                                {

                                                                                  v6 = 39;
                                                                                }

                                                                                else
                                                                                {
                                                                                  OUTLINED_FUNCTION_26_4();
                                                                                  v76 = v3 && v75 == v0;
                                                                                  if (v76 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                                                  {

                                                                                    v6 = 40;
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    OUTLINED_FUNCTION_38();
                                                                                    v78 = v1 == 0xD00000000000001CLL && v77 == v0;
                                                                                    if (v78 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                                                    {

                                                                                      v6 = 41;
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      OUTLINED_FUNCTION_38();
                                                                                      v80 = v1 == 0xD000000000000019 && v79 == v0;
                                                                                      if (v80 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                                                      {

                                                                                        v6 = 42;
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        OUTLINED_FUNCTION_24_15();
                                                                                        v82 = v3 && v81 == v0;
                                                                                        if (v82 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                                                        {

                                                                                          v6 = 43;
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          OUTLINED_FUNCTION_24_15();
                                                                                          v84 = v3 && v83 == v0;
                                                                                          if (v84 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                                                          {

                                                                                            v6 = 44;
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            OUTLINED_FUNCTION_26_4();
                                                                                            v86 = v3 && v85 == v0;
                                                                                            if (v86 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                                                            {

                                                                                              v6 = 45;
                                                                                            }

                                                                                            else
                                                                                            {
                                                                                              OUTLINED_FUNCTION_38();
                                                                                              v88 = v1 == 0xD00000000000001DLL && v87 == v0;
                                                                                              if (v88 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                                                              {

                                                                                                v6 = 46;
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                OUTLINED_FUNCTION_26_4();
                                                                                                v90 = v3 && v89 == v0;
                                                                                                if (v90 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                                                                {

                                                                                                  v6 = 47;
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  OUTLINED_FUNCTION_26_4();
                                                                                                  v92 = v3 && v91 == v0;
                                                                                                  if (v92 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                                                                  {

                                                                                                    v6 = 48;
                                                                                                  }

                                                                                                  else
                                                                                                  {
                                                                                                    OUTLINED_FUNCTION_38();
                                                                                                    v94 = v1 == 0xD000000000000019 && v93 == v0;
                                                                                                    if (v94 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                                                                    {

                                                                                                      v6 = 49;
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      OUTLINED_FUNCTION_79_0();
                                                                                                      v96 = v3 && v95 == v0;
                                                                                                      if (v96 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                                                                      {

                                                                                                        v6 = 50;
                                                                                                      }

                                                                                                      else
                                                                                                      {
                                                                                                        OUTLINED_FUNCTION_24_15();
                                                                                                        v98 = v3 && v97 == v0;
                                                                                                        if (v98 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                                                                        {

                                                                                                          v6 = 51;
                                                                                                        }

                                                                                                        else
                                                                                                        {
                                                                                                          OUTLINED_FUNCTION_6_27();
                                                                                                          v100 = v3 && v99 == v0;
                                                                                                          if (v100 || (OUTLINED_FUNCTION_2_33() & 1) != 0)
                                                                                                          {

                                                                                                            v6 = 52;
                                                                                                          }

                                                                                                          else
                                                                                                          {
                                                                                                            v101 = v1 == 0x636E657265666552 && v0 == 0xEE006567616D4965;
                                                                                                            if (v101 || (OUTLINED_FUNCTION_4_29() & 1) != 0)
                                                                                                            {

                                                                                                              v6 = 53;
                                                                                                            }

                                                                                                            else
                                                                                                            {
                                                                                                              v102 = v1 == 0x636E657265666552 && v0 == 0xEE006F6564695665;
                                                                                                              if (v102 || (OUTLINED_FUNCTION_4_29() & 1) != 0)
                                                                                                              {

                                                                                                                v6 = 54;
                                                                                                              }

                                                                                                              else
                                                                                                              {
                                                                                                                OUTLINED_FUNCTION_79_0();
                                                                                                                v104 = v3 && v103 == v0;
                                                                                                                if (v104 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                                                                                {

                                                                                                                  v6 = 55;
                                                                                                                }

                                                                                                                else
                                                                                                                {
                                                                                                                  OUTLINED_FUNCTION_38();
                                                                                                                  v106 = v1 == 0xD000000000000016 && v105 == v0;
                                                                                                                  if (v106 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                                                                                  {

                                                                                                                    v6 = 56;
                                                                                                                  }

                                                                                                                  else
                                                                                                                  {
                                                                                                                    OUTLINED_FUNCTION_79_0();
                                                                                                                    v108 = v3 && v107 == v0;
                                                                                                                    if (v108 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                                                                                    {

                                                                                                                      v6 = 57;
                                                                                                                    }

                                                                                                                    else
                                                                                                                    {
                                                                                                                      OUTLINED_FUNCTION_79_0();
                                                                                                                      v110 = v3 && v109 == v0;
                                                                                                                      if (v110 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                                                                                      {

                                                                                                                        v6 = 58;
                                                                                                                      }

                                                                                                                      else
                                                                                                                      {
                                                                                                                        OUTLINED_FUNCTION_6_27();
                                                                                                                        v112 = v3 && v111 == v0;
                                                                                                                        if (v112 || (OUTLINED_FUNCTION_2_33() & 1) != 0)
                                                                                                                        {

                                                                                                                          v6 = 59;
                                                                                                                        }

                                                                                                                        else
                                                                                                                        {
                                                                                                                          OUTLINED_FUNCTION_38();
                                                                                                                          v114 = v1 == 0xD00000000000001ELL && v113 == v0;
                                                                                                                          if (v114 || (OUTLINED_FUNCTION_4_29() & 1) != 0)
                                                                                                                          {

                                                                                                                            v6 = 60;
                                                                                                                          }

                                                                                                                          else
                                                                                                                          {
                                                                                                                            OUTLINED_FUNCTION_38();
                                                                                                                            v116 = v1 == 0xD000000000000023 && v115 == v0;
                                                                                                                            if (v116 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                                                                                            {

                                                                                                                              v6 = 61;
                                                                                                                            }

                                                                                                                            else
                                                                                                                            {
                                                                                                                              OUTLINED_FUNCTION_38();
                                                                                                                              v118 = v1 == 0xD000000000000020 && v117 == v0;
                                                                                                                              if (v118 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                                                                                              {

                                                                                                                                v6 = 62;
                                                                                                                              }

                                                                                                                              else
                                                                                                                              {
                                                                                                                                OUTLINED_FUNCTION_38();
                                                                                                                                v120 = v1 == 0xD00000000000001CLL && v119 == v0;
                                                                                                                                if (v120 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                                                                                                {

                                                                                                                                  v6 = 63;
                                                                                                                                }

                                                                                                                                else
                                                                                                                                {
                                                                                                                                  OUTLINED_FUNCTION_38();
                                                                                                                                  v122 = v1 == 0xD00000000000001CLL && v121 == v0;
                                                                                                                                  if (v122 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                                                                                                  {

                                                                                                                                    v6 = 64;
                                                                                                                                  }

                                                                                                                                  else
                                                                                                                                  {
                                                                                                                                    OUTLINED_FUNCTION_38();
                                                                                                                                    v124 = v1 == 0xD00000000000001ELL && v123 == v0;
                                                                                                                                    if (v124 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                                                                                                    {

                                                                                                                                      v6 = 65;
                                                                                                                                    }

                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                      OUTLINED_FUNCTION_38();
                                                                                                                                      v126 = v1 == 0xD000000000000024 && v125 == v0;
                                                                                                                                      if (v126 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                                                                                                      {

                                                                                                                                        v6 = 66;
                                                                                                                                      }

                                                                                                                                      else
                                                                                                                                      {
                                                                                                                                        OUTLINED_FUNCTION_38();
                                                                                                                                        v128 = v1 == 0xD00000000000001ELL && v127 == v0;
                                                                                                                                        if (v128 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                                                                                                        {

                                                                                                                                          v6 = 67;
                                                                                                                                        }

                                                                                                                                        else
                                                                                                                                        {
                                                                                                                                          OUTLINED_FUNCTION_38();
                                                                                                                                          v130 = v1 == 0xD00000000000001ELL && v129 == v0;
                                                                                                                                          if (v130 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                                                                                                          {

                                                                                                                                            v6 = 68;
                                                                                                                                          }

                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                            OUTLINED_FUNCTION_38();
                                                                                                                                            v132 = v1 == 0xD000000000000020 && v131 == v0;
                                                                                                                                            if (v132 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                                                                                                            {

                                                                                                                                              v6 = 69;
                                                                                                                                            }

                                                                                                                                            else
                                                                                                                                            {
                                                                                                                                              OUTLINED_FUNCTION_79_0();
                                                                                                                                              v134 = v3 && v133 == v0;
                                                                                                                                              if (v134 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                                                                                                              {

                                                                                                                                                v6 = 70;
                                                                                                                                              }

                                                                                                                                              else
                                                                                                                                              {
                                                                                                                                                v135 = v1 == 0x766974696D697250 && v0 == 0xED0000656C694665;
                                                                                                                                                if (v135 || (OUTLINED_FUNCTION_4_29() & 1) != 0)
                                                                                                                                                {

                                                                                                                                                  v6 = 71;
                                                                                                                                                }

                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                  OUTLINED_FUNCTION_60();
                                                                                                                                                  v137 = v3 && v136 == v0;
                                                                                                                                                  if (v137 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                                                                                                                  {

                                                                                                                                                    v6 = 72;
                                                                                                                                                  }

                                                                                                                                                  else
                                                                                                                                                  {
                                                                                                                                                    v138 = v1 == 0x766974696D697250 && v0 == 0xEF6E6F7372655065;
                                                                                                                                                    if (v138 || (OUTLINED_FUNCTION_4_29() & 1) != 0)
                                                                                                                                                    {

                                                                                                                                                      v6 = 73;
                                                                                                                                                    }

                                                                                                                                                    else
                                                                                                                                                    {
                                                                                                                                                      v139 = v1 == 0x766974696D697250 && v0 == 0xEC00000070704165;
                                                                                                                                                      if (v139 || (OUTLINED_FUNCTION_4_29() & 1) != 0)
                                                                                                                                                      {

                                                                                                                                                        v6 = 74;
                                                                                                                                                      }

                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                        v140 = v1 == 0x766974696D697250 && v0 == 0xED00006C6F6F4265;
                                                                                                                                                        if (v140 || (OUTLINED_FUNCTION_4_29() & 1) != 0)
                                                                                                                                                        {

                                                                                                                                                          v6 = 75;
                                                                                                                                                        }

                                                                                                                                                        else
                                                                                                                                                        {
                                                                                                                                                          v141 = v1 == 0x766974696D697250 && v0 == 0xEC000000746E4965;
                                                                                                                                                          if (v141 || (OUTLINED_FUNCTION_4_29() & 1) != 0)
                                                                                                                                                          {

                                                                                                                                                            v6 = 76;
                                                                                                                                                          }

                                                                                                                                                          else
                                                                                                                                                          {
                                                                                                                                                            v142 = v1 == 0x766974696D697250 && v0 == 0xEF7265626D754E65;
                                                                                                                                                            if (v142 || (OUTLINED_FUNCTION_4_29() & 1) != 0)
                                                                                                                                                            {

                                                                                                                                                              v6 = 77;
                                                                                                                                                            }

                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                              OUTLINED_FUNCTION_79_0();
                                                                                                                                                              v144 = v3 && v143 == v0;
                                                                                                                                                              if (v144 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                                                                                                                              {

                                                                                                                                                                v6 = 78;
                                                                                                                                                              }

                                                                                                                                                              else
                                                                                                                                                              {
                                                                                                                                                                v145 = v1 == 0x766974696D697250 && v0 == 0xED00006574614465;
                                                                                                                                                                if (v145 || (OUTLINED_FUNCTION_4_29() & 1) != 0)
                                                                                                                                                                {

                                                                                                                                                                  v6 = 79;
                                                                                                                                                                }

                                                                                                                                                                else
                                                                                                                                                                {
                                                                                                                                                                  OUTLINED_FUNCTION_26_4();
                                                                                                                                                                  v147 = v3 && v146 == v0;
                                                                                                                                                                  if (v147 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                                                                                                                                  {

                                                                                                                                                                    v6 = 80;
                                                                                                                                                                  }

                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                    OUTLINED_FUNCTION_60();
                                                                                                                                                                    v149 = v3 && v148 == v0;
                                                                                                                                                                    if (v149 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                                                                                                                                    {

                                                                                                                                                                      v6 = 81;
                                                                                                                                                                    }

                                                                                                                                                                    else
                                                                                                                                                                    {
                                                                                                                                                                      v150 = v1 == 0x766974696D697250 && v0 == 0xEF676E6972745365;
                                                                                                                                                                      if (v150 || (OUTLINED_FUNCTION_4_29() & 1) != 0)
                                                                                                                                                                      {

                                                                                                                                                                        v6 = 82;
                                                                                                                                                                      }

                                                                                                                                                                      else
                                                                                                                                                                      {
                                                                                                                                                                        OUTLINED_FUNCTION_38();
                                                                                                                                                                        v152 = v1 == 0xD000000000000019 && v151 == v0;
                                                                                                                                                                        if (v152 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                                                                                                                                        {

                                                                                                                                                                          v6 = 83;
                                                                                                                                                                        }

                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                          OUTLINED_FUNCTION_26_4();
                                                                                                                                                                          v154 = v3 && v153 == v0;
                                                                                                                                                                          if (v154 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                                                                                                                                          {

                                                                                                                                                                            v6 = 84;
                                                                                                                                                                          }

                                                                                                                                                                          else
                                                                                                                                                                          {
                                                                                                                                                                            OUTLINED_FUNCTION_24_15();
                                                                                                                                                                            v156 = v3 && v155 == v0;
                                                                                                                                                                            if (v156 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                                                                                                                                            {

                                                                                                                                                                              v6 = 85;
                                                                                                                                                                            }

                                                                                                                                                                            else
                                                                                                                                                                            {
                                                                                                                                                                              OUTLINED_FUNCTION_6_27();
                                                                                                                                                                              v158 = v3 && v157 == v0;
                                                                                                                                                                              if (v158 || (OUTLINED_FUNCTION_2_33() & 1) != 0)
                                                                                                                                                                              {

                                                                                                                                                                                v6 = 86;
                                                                                                                                                                              }

                                                                                                                                                                              else if (v1 == 0x766974696D697250 && v0 == 0xEC0000006C725565)
                                                                                                                                                                              {

                                                                                                                                                                                v6 = 87;
                                                                                                                                                                              }

                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                v160 = OUTLINED_FUNCTION_0_9();

                                                                                                                                                                                v6 = 87;
                                                                                                                                                                                if ((v160 & 1) == 0)
                                                                                                                                                                                {
                                                                                                                                                                                  v6 = 0;
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
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v6);
}

uint64_t static IntelligenceFlowJointResolverTelemetry.JRInferenceContext.== infix(_:_:)(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1 >> 62;
  if (v4)
  {
    if (v4 == 1)
    {
      if (v3 >> 62 == 1)
      {
        v5 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        __dst[0] = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v10[0] = v5;

        v6 = static IntelligenceFlowJointResolverTelemetry.JRInferenceFailed.== infix(_:_:)(__dst, v10);
LABEL_9:
        v8 = v6;

        goto LABEL_10;
      }
    }

    else if (v3 >> 62 == 2)
    {
      memcpy(v10, ((v3 & 0x3FFFFFFFFFFFFFFFLL) + 16), sizeof(v10));
      memcpy(__dst, ((v2 & 0x3FFFFFFFFFFFFFFFLL) + 16), sizeof(__dst));

      v6 = static IntelligenceFlowJointResolverTelemetry.JRInferenceEnded.== infix(_:_:)(__dst, v10);
      goto LABEL_9;
    }

LABEL_11:
    v8 = 0;
    return v8 & 1;
  }

  if (v3 >> 62)
  {
    goto LABEL_11;
  }

  v7 = *(v3 + 16);
  __dst[0] = *(v2 + 16);
  v10[0] = v7;

  v8 = static IntelligenceFlowJointResolverTelemetry.JRInferenceStarted.== infix(_:_:)(__dst, v10);

LABEL_10:

  return v8 & 1;
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRInferenceContext.hash(into:)()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (v2)
  {
    v3 = v1 & 0x3FFFFFFFFFFFFFFFLL;
    if (v2 == 1)
    {
      __dst[0] = *(v3 + 16);
      sub_1935520D8();
    }

    else
    {
      memcpy(__dst, (v3 + 16), sizeof(__dst));
      memcpy(v5, __dst, sizeof(v5));
      sub_193552084();
    }
  }

  else
  {
    __dst[0] = *(v1 + 16);
    sub_19355212C();
  }

  return sub_19393C540();
}

unint64_t sub_193552084()
{
  result = qword_1EAE3CFD0;
  if (!qword_1EAE3CFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3CFD0);
  }

  return result;
}

unint64_t sub_1935520D8()
{
  result = qword_1EAE3CFD8;
  if (!qword_1EAE3CFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3CFD8);
  }

  return result;
}

unint64_t sub_19355212C()
{
  result = qword_1EAE3CFE0;
  if (!qword_1EAE3CFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3CFE0);
  }

  return result;
}

unint64_t sub_193552184()
{
  result = qword_1EAE3CFE8;
  if (!qword_1EAE3CFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3CFE8);
  }

  return result;
}

unint64_t sub_1935521DC()
{
  result = qword_1EAE3CFF0;
  if (!qword_1EAE3CFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3CFF0);
  }

  return result;
}

unint64_t sub_193552234()
{
  result = qword_1EAE3CFF8;
  if (!qword_1EAE3CFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3CFF8);
  }

  return result;
}

void sub_1935522B0()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEA9D58);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v6 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_9_8(v6, xmmword_19394FBD0);
  *v0 = 99;
  OUTLINED_FUNCTION_63("invocation");
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v8);
  v10 = *(v9 + 104);
  v11 = OUTLINED_FUNCTION_50_1();
  v10(v11);
  v12 = OUTLINED_FUNCTION_52();
  *v13 = 101;
  v14 = OUTLINED_FUNCTION_0_0(v12, "jrInferenceContext");
  v10(v14);
  v15 = OUTLINED_FUNCTION_46_10();
  *v16 = 102;
  v17 = OUTLINED_FUNCTION_0_0(v15, "jrExperimentTriggered");
  v10(v17);
  OUTLINED_FUNCTION_45_2(3 * v5);
  OUTLINED_FUNCTION_69_6(v18);
  v20 = OUTLINED_FUNCTION_0_0(v19, "eventMetadata");
  v10(v20);
  v21 = OUTLINED_FUNCTION_3_1(v0 + 4 * v5);
  *v22 = v1;
  v23 = OUTLINED_FUNCTION_0_0(v21, "timestamp");
  v10(v23);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193552474()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_124();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        v7 = *(type metadata accessor for IntelligenceFlowJointResolverTelemetry(0) + 40);
        type metadata accessor for IntelligenceFlowJointResolverTelemetry.JRClientEventMetadata(0);
        OUTLINED_FUNCTION_111();
LABEL_14:
        sub_193498018();
        break;
      case 2:
        v4 = *(type metadata accessor for IntelligenceFlowJointResolverTelemetry(0) + 44);
        type metadata accessor for MonotonicTimestamp();
        OUTLINED_FUNCTION_111();
        goto LABEL_14;
      case 102:
        v6 = *(type metadata accessor for IntelligenceFlowJointResolverTelemetry(0) + 36);
        type metadata accessor for IntelligenceFlowJointResolverTelemetry.JRExperimentTriggered(0);
        OUTLINED_FUNCTION_111();
        goto LABEL_14;
      case 101:
        v5 = *(type metadata accessor for IntelligenceFlowJointResolverTelemetry(0) + 32);
        OUTLINED_FUNCTION_140_4();
        goto LABEL_14;
      case 99:
        v3 = *(type metadata accessor for IntelligenceFlowJointResolverTelemetry(0) + 28);
        type metadata accessor for IntelligenceFlowJointResolverTelemetry.JointResolverRequestInvocation(0);
        OUTLINED_FUNCTION_111();
        goto LABEL_14;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_1935525A8()
{
  OUTLINED_FUNCTION_87_7();
  OUTLINED_FUNCTION_11_1();
  sub_193552660();
  if (!v0)
  {
    v2 = type metadata accessor for IntelligenceFlowJointResolverTelemetry(0);
    if ((~*(v1 + *(v2 + 32)) & 0xF000000000000007) != 0)
    {
      v3 = *(v1 + *(v2 + 32));
      OUTLINED_FUNCTION_78_1();
      sub_193447600();
    }

    OUTLINED_FUNCTION_79();
    sub_193552770();
    OUTLINED_FUNCTION_79();
    sub_193552880();
    OUTLINED_FUNCTION_79();
    sub_193552990();
  }
}

void sub_193552660()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_8();
  v9 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.JointResolverRequestInvocation(v8);
  v10 = OUTLINED_FUNCTION_4_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_10_23();
  v13 = type metadata accessor for IntelligenceFlowJointResolverTelemetry(0);
  OUTLINED_FUNCTION_39_1(*(v13 + 28));
  OUTLINED_FUNCTION_25_0();
  if (v14)
  {
    sub_19344E6DC(v0, &qword_1EAE3CEB0, &qword_193960F60);
  }

  else
  {
    sub_1935591F4(v0, v1, type metadata accessor for IntelligenceFlowJointResolverTelemetry.JointResolverRequestInvocation);
    OUTLINED_FUNCTION_12_12();
    OUTLINED_FUNCTION_80_8();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_193552770()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_8();
  v9 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.JRExperimentTriggered(v8);
  v10 = OUTLINED_FUNCTION_4_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_10_23();
  v13 = type metadata accessor for IntelligenceFlowJointResolverTelemetry(0);
  OUTLINED_FUNCTION_39_1(*(v13 + 36));
  OUTLINED_FUNCTION_25_0();
  if (v14)
  {
    sub_19344E6DC(v0, &qword_1EAE3CEB8, &qword_193961930);
  }

  else
  {
    sub_1935591F4(v0, v1, type metadata accessor for IntelligenceFlowJointResolverTelemetry.JRExperimentTriggered);
    OUTLINED_FUNCTION_12_12();
    OUTLINED_FUNCTION_80_8();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_193552880()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_8();
  v9 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.JRClientEventMetadata(v8);
  v10 = OUTLINED_FUNCTION_4_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_10_23();
  v13 = type metadata accessor for IntelligenceFlowJointResolverTelemetry(0);
  OUTLINED_FUNCTION_39_1(*(v13 + 40));
  OUTLINED_FUNCTION_25_0();
  if (v14)
  {
    sub_19344E6DC(v0, &qword_1EAE3CEC0, &qword_193960F68);
  }

  else
  {
    sub_1935591F4(v0, v1, type metadata accessor for IntelligenceFlowJointResolverTelemetry.JRClientEventMetadata);
    OUTLINED_FUNCTION_12_12();
    OUTLINED_FUNCTION_80_8();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_193552990()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v8 = type metadata accessor for MonotonicTimestamp();
  v9 = OUTLINED_FUNCTION_4_1(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_10_23();
  v12 = type metadata accessor for IntelligenceFlowJointResolverTelemetry(0);
  OUTLINED_FUNCTION_39_1(*(v12 + 44));
  OUTLINED_FUNCTION_25_0();
  if (v13)
  {
    sub_19344E6DC(v0, &qword_1EAE3B498, &unk_193959120);
  }

  else
  {
    sub_1935591F4(v0, v1, type metadata accessor for MonotonicTimestamp);
    OUTLINED_FUNCTION_12_12();
    OUTLINED_FUNCTION_80_8();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_193552B04()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEA9D70);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v6 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_27_2(v6, xmmword_19394FBC0);
  *v1 = 0;
  *v0 = "TreatmentAllocationStatusUnknown";
  *(v0 + 8) = 32;
  *(v0 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v8);
  v10 = *(v9 + 104);
  v11 = OUTLINED_FUNCTION_50_1();
  (v10)(v11);
  OUTLINED_FUNCTION_3_1(v1 + v5);
  OUTLINED_FUNCTION_69_6(v12);
  *v13 = "TreatmentAllocationStatusAllocated";
  *(v13 + 8) = 34;
  *(v13 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v10();
  v14 = OUTLINED_FUNCTION_3_1(v1 + 2 * v5);
  *v15 = 2;
  *v14 = "TreatmentAllocationStatusActivated";
  *(v14 + 8) = 34;
  *(v14 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v10();
  v16 = OUTLINED_FUNCTION_9_4((v1 + 3 * v5));
  *v16 = "TreatmentAllocationStatusDeactivated";
  *(v16 + 1) = 36;
  v16[16] = 2;
  OUTLINED_FUNCTION_2_0();
  v10();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193552CE0()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEA9D88);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v6 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_27_2(v6, xmmword_1939526B0);
  *v0 = 0;
  OUTLINED_FUNCTION_83_0("JRBucketedDistanceUnknown");
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v8);
  v10 = *(v9 + 104);
  v11 = OUTLINED_FUNCTION_50_1();
  (v10)(v11);
  OUTLINED_FUNCTION_3_1(v0 + v5);
  OUTLINED_FUNCTION_69_6(v12);
  *v13 = "JRBucketedDistanceLevel1";
  v13[1] = 24;
  v14 = OUTLINED_FUNCTION_41(v13);
  (v10)(v14);
  v15 = OUTLINED_FUNCTION_3_1(v0 + 2 * v5);
  *v16 = v1;
  *v15 = "JRBucketedDistanceLevel2";
  v15[1] = 24;
  v17 = OUTLINED_FUNCTION_41(v15);
  (v10)(v17);
  v18 = OUTLINED_FUNCTION_9_4((v0 + 3 * v5));
  *v18 = "JRBucketedDistanceLevel3";
  *(v18 + 1) = 24;
  v19 = OUTLINED_FUNCTION_41(v18);
  (v10)(v19);
  v20 = OUTLINED_FUNCTION_13((v0 + 4 * v5));
  *v20 = "JRBucketedDistanceLevel4";
  *(v20 + 1) = 24;
  v21 = OUTLINED_FUNCTION_41(v20);
  (v10)(v21);
  v22 = OUTLINED_FUNCTION_44(5 * v5);
  *v23 = 5;
  *v22 = "JRBucketedDistanceLevel5";
  v22[1] = 24;
  v24 = OUTLINED_FUNCTION_41(v22);
  (v10)(v24);
  v25 = (v0 + 6 * v5);
  v26 = (v25 + dword_1EAEA9DC0);
  *v25 = 6;
  *v26 = "JRBucketedDistanceLevel6";
  v26[1] = 24;
  v27 = OUTLINED_FUNCTION_41(v26);
  (v10)(v27);
  v28 = OUTLINED_FUNCTION_44(7 * v5);
  *v29 = 7;
  *v28 = "JRBucketedDistanceLevel7";
  *(v28 + 8) = 24;
  *(v28 + 16) = v1;
  OUTLINED_FUNCTION_2_0();
  v10();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193552F60()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEA9DA0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v277 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_9_8(v277, xmmword_193961680);
  *v1 = 0;
  *v0 = "JRParameterSubTypeUnknown";
  *(v0 + 8) = 25;
  *(v0 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_50_1();
  v9(v10);
  v11 = OUTLINED_FUNCTION_52();
  *v12 = 1000;
  v13 = OUTLINED_FUNCTION_0_0(v11, "JRParameterSubTypeEnumerationUnknown");
  v9(v13);
  v14 = OUTLINED_FUNCTION_46_10();
  *v15 = 1001;
  v16 = OUTLINED_FUNCTION_0_0(v14, "JRParameterSubTypeEnumerationEmailMessage");
  v9(v16);
  v17 = OUTLINED_FUNCTION_45_2(3 * v5);
  *v18 = 1002;
  *v17 = "JRParameterSubTypeEnumerationLivePhoto";
  v17[1] = 38;
  v19 = OUTLINED_FUNCTION_1_3(v17);
  v9(v19);
  v20 = OUTLINED_FUNCTION_3_1(v1 + 4 * v5);
  *v21 = 1003;
  *v20 = "JRParameterSubTypeEnumerationImage";
  v20[1] = 34;
  v22 = OUTLINED_FUNCTION_1_3(v20);
  v9(v22);
  v23 = OUTLINED_FUNCTION_45_2(5 * v5);
  *v24 = 1004;
  v25 = OUTLINED_FUNCTION_18_1(v23, "JRParameterSubTypeEnumerationVideo");
  v9(v25);
  v26 = OUTLINED_FUNCTION_3_29(6);
  *v27 = 1005;
  v28 = OUTLINED_FUNCTION_18_1(v26, "JRParameterSubTypeEnumerationContact");
  v9(v28);
  v29 = OUTLINED_FUNCTION_45_2(7 * v5);
  *v30 = 1006;
  v31 = OUTLINED_FUNCTION_0_0(v29, "JRParameterSubTypeEnumerationCalendarEvent");
  v9(v31);
  v32 = OUTLINED_FUNCTION_3_1(&v1[v5]);
  *v33 = 1007;
  *v32 = "JRParameterSubTypeEnumerationMessage";
  v32[1] = 36;
  v34 = OUTLINED_FUNCTION_1_3(v32);
  v9(v34);
  v35 = OUTLINED_FUNCTION_45_2(9 * v5);
  *v36 = 1008;
  *v35 = "JRParameterSubTypeEnumerationFileUrl";
  v35[1] = 36;
  v37 = OUTLINED_FUNCTION_1_3(v35);
  v9(v37);
  v38 = OUTLINED_FUNCTION_3_29(10);
  *v39 = 1009;
  v40 = OUTLINED_FUNCTION_16_6(v38, "JRParameterSubTypeEnumerationAliasFile");
  v9(v40);
  v41 = OUTLINED_FUNCTION_3_29(11);
  *v42 = 2000;
  *v41 = "JRParameterSubTypeEntityUnknown";
  v41[1] = 31;
  v43 = OUTLINED_FUNCTION_1_3(v41);
  v9(v43);
  v44 = OUTLINED_FUNCTION_3_29(12);
  *v45 = 2001;
  v46 = OUTLINED_FUNCTION_18_1(v44, "JRParameterSubTypeEntityEmailMessage");
  v9(v46);
  v47 = OUTLINED_FUNCTION_3_29(13);
  *v48 = 2002;
  v49 = OUTLINED_FUNCTION_0_0(v47, "JRParameterSubTypeEntityLivePhoto");
  v9(v49);
  v50 = OUTLINED_FUNCTION_3_29(14);
  *v51 = 2003;
  *v50 = "JRParameterSubTypeEntityImage";
  v50[1] = 29;
  v52 = OUTLINED_FUNCTION_1_3(v50);
  v9(v52);
  v53 = OUTLINED_FUNCTION_45_2(15 * v5);
  *v54 = 2004;
  v55 = OUTLINED_FUNCTION_18_1(v53, "JRParameterSubTypeEntityVideo");
  v9(v55);
  v56 = OUTLINED_FUNCTION_3_1(&v1[2 * v5]);
  *v57 = 2005;
  v58 = OUTLINED_FUNCTION_16_6(v56, "JRParameterSubTypeEntityContact");
  v9(v58);
  v59 = OUTLINED_FUNCTION_45_2(17 * v5);
  *v60 = 2006;
  v61 = OUTLINED_FUNCTION_0_0(v59, "JRParameterSubTypeEntityCalendarEvent");
  v9(v61);
  v62 = OUTLINED_FUNCTION_3_29(18);
  *v63 = 2007;
  v64 = OUTLINED_FUNCTION_16_6(v62, "JRParameterSubTypeEntityMessage");
  v9(v64);
  v65 = OUTLINED_FUNCTION_3_29(19);
  *v66 = 2008;
  v67 = OUTLINED_FUNCTION_16_6(v65, "JRParameterSubTypeEntityFileUrl");
  v9(v67);
  v68 = OUTLINED_FUNCTION_3_29(20);
  *v69 = 2009;
  v70 = OUTLINED_FUNCTION_28_4(v68, 33);
  v9(v70);
  v71 = OUTLINED_FUNCTION_3_29(21);
  *v72 = 3000;
  *v71 = "JRParameterSubTypeQueryUnknown";
  v71[1] = 30;
  v73 = OUTLINED_FUNCTION_1_3(v71);
  v9(v73);
  v74 = OUTLINED_FUNCTION_3_29(22);
  *v75 = 3001;
  v76 = OUTLINED_FUNCTION_0_0(v74, "JRParameterSubTypeQueryEmailMessage");
  v9(v76);
  v77 = OUTLINED_FUNCTION_3_29(23);
  *v78 = 3002;
  v79 = OUTLINED_FUNCTION_0_0(v77, "JRParameterSubTypeQueryLivePhoto");
  v9(v79);
  v80 = OUTLINED_FUNCTION_3_29(24);
  *v81 = 3003;
  v82 = OUTLINED_FUNCTION_18_1(v80, "JRParameterSubTypeQueryImage");
  v9(v82);
  v83 = OUTLINED_FUNCTION_3_29(25);
  *v84 = 3004;
  v85 = OUTLINED_FUNCTION_18_1(v83, "JRParameterSubTypeQueryVideo");
  v9(v85);
  v86 = OUTLINED_FUNCTION_3_29(26);
  *v87 = 3005;
  v88 = OUTLINED_FUNCTION_16_6(v86, "JRParameterSubTypeQueryContact");
  v9(v88);
  v89 = OUTLINED_FUNCTION_3_29(27);
  *v90 = 3006;
  v91 = OUTLINED_FUNCTION_28_4(v89, 36);
  v9(v91);
  v92 = OUTLINED_FUNCTION_3_1(v1 + 28 * v5);
  *v93 = 3007;
  v94 = OUTLINED_FUNCTION_16_6(v92, "JRParameterSubTypeQueryMessage");
  v9(v94);
  v95 = OUTLINED_FUNCTION_3_29(29);
  *v96 = 3008;
  v97 = OUTLINED_FUNCTION_16_6(v95, "JRParameterSubTypeQueryFileUrl");
  v9(v97);
  v98 = OUTLINED_FUNCTION_3_1(v1 + 30 * v5);
  *v99 = 3009;
  v100 = OUTLINED_FUNCTION_28_4(v98, 32);
  v9(v100);
  v101 = OUTLINED_FUNCTION_45_2(31 * v5);
  *v102 = 4000;
  v103 = OUTLINED_FUNCTION_28_4(v101, 33);
  v9(v103);
  v104 = OUTLINED_FUNCTION_3_1(&v1[4 * v5]);
  *v105 = 4001;
  v106 = OUTLINED_FUNCTION_28_4(v104, 38);
  v9(v106);
  v107 = OUTLINED_FUNCTION_45_2(33 * v5);
  *v108 = 4002;
  v109 = OUTLINED_FUNCTION_16_6(v107, "JRParameterSubTypeDeferredLivePhoto");
  v9(v109);
  v110 = OUTLINED_FUNCTION_3_29(34);
  *v111 = 4003;
  v112 = OUTLINED_FUNCTION_18_1(v110, "JRParameterSubTypeDeferredImage");
  v9(v112);
  v113 = OUTLINED_FUNCTION_3_1(v1 + 35 * v5);
  *v114 = 4004;
  v115 = OUTLINED_FUNCTION_18_1(v113, "JRParameterSubTypeDeferredVideo");
  v9(v115);
  v116 = OUTLINED_FUNCTION_3_29(36);
  *v117 = 4005;
  v118 = OUTLINED_FUNCTION_18_1(v116, "JRParameterSubTypeDeferredContact");
  v9(v118);
  v119 = OUTLINED_FUNCTION_3_29(37);
  *v120 = 4006;
  *v119 = "JRParameterSubTypeDeferredCalendarEvent";
  v119[1] = 39;
  v121 = OUTLINED_FUNCTION_1_3(v119);
  v9(v121);
  v122 = OUTLINED_FUNCTION_3_29(38);
  *v123 = 4007;
  *v122 = "JRParameterSubTypeDeferredMessage";
  v122[1] = 33;
  v124 = OUTLINED_FUNCTION_1_3(v122);
  v9(v124);
  v125 = OUTLINED_FUNCTION_3_1(v1 + 39 * v5);
  *v126 = 4008;
  v127 = OUTLINED_FUNCTION_18_1(v125, "JRParameterSubTypeDeferredFileUrl");
  v9(v127);
  v128 = OUTLINED_FUNCTION_3_29(40);
  *v129 = 4009;
  v130 = OUTLINED_FUNCTION_28_4(v128, 35);
  v9(v130);
  v131 = OUTLINED_FUNCTION_3_1(v1 + 41 * v5);
  *v132 = 5000;
  *v131 = "JRParameterSubTypeEntityIdentifierUnknown";
  v131[1] = v133;
  v134 = OUTLINED_FUNCTION_1_3(v131);
  v9(v134);
  v135 = OUTLINED_FUNCTION_3_29(42);
  *v136 = 5001;
  *v135 = "JRParameterSubTypeEntityIdentifierEmailMessage";
  v135[1] = 46;
  v137 = OUTLINED_FUNCTION_1_3(v135);
  v9(v137);
  v138 = OUTLINED_FUNCTION_3_1(v1 + 43 * v5);
  *v139 = 5002;
  *v138 = "JRParameterSubTypeEntityIdentifierLivePhoto";
  v138[1] = v140;
  v141 = OUTLINED_FUNCTION_1_3(v138);
  v9(v141);
  v142 = OUTLINED_FUNCTION_3_29(44);
  *v143 = 5003;
  v144 = OUTLINED_FUNCTION_16_6(v142, "JRParameterSubTypeEntityIdentifierImage");
  v9(v144);
  v145 = OUTLINED_FUNCTION_3_29(45);
  *v146 = 5004;
  v147 = OUTLINED_FUNCTION_16_6(v145, "JRParameterSubTypeEntityIdentifierVideo");
  v9(v147);
  v148 = OUTLINED_FUNCTION_3_1(v1 + 46 * v5);
  *v149 = 5005;
  v150 = OUTLINED_FUNCTION_16_6(v148, "JRParameterSubTypeEntityIdentifierContact");
  v9(v150);
  v151 = (v1 + 47 * v5);
  v152 = v151 + dword_1EAEA9DD8;
  *v151 = 5006;
  v153 = OUTLINED_FUNCTION_28_4(v152, 47);
  v9(v153);
  v154 = OUTLINED_FUNCTION_3_29(48);
  *v155 = 5007;
  *v154 = "JRParameterSubTypeEntityIdentifierMessage";
  v154[1] = 41;
  v156 = OUTLINED_FUNCTION_1_3(v154);
  v9(v156);
  v157 = OUTLINED_FUNCTION_3_29(49);
  *v158 = 5008;
  v159 = OUTLINED_FUNCTION_16_6(v157, "JRParameterSubTypeEntityIdentifierFileUrl");
  v9(v159);
  v160 = OUTLINED_FUNCTION_3_29(50);
  *v161 = 5009;
  v162 = OUTLINED_FUNCTION_28_4(v160, 43);
  v9(v162);
  v163 = OUTLINED_FUNCTION_3_29(51);
  *v164 = 6000;
  v165 = OUTLINED_FUNCTION_16_6(v163, "JRParameterSubTypeReferenceUnknown");
  v9(v165);
  v166 = OUTLINED_FUNCTION_3_29(52);
  *v167 = 6001;
  v168 = OUTLINED_FUNCTION_28_4(v166, 39);
  v9(v168);
  v169 = OUTLINED_FUNCTION_3_29(53);
  *v170 = 6002;
  v171 = OUTLINED_FUNCTION_28_4(v169, 36);
  v9(v171);
  v172 = OUTLINED_FUNCTION_3_29(54);
  *v173 = 6003;
  v174 = OUTLINED_FUNCTION_18_1(v172, "JRParameterSubTypeReferenceImage");
  v9(v174);
  v175 = OUTLINED_FUNCTION_3_29(55);
  *v176 = 6004;
  v177 = OUTLINED_FUNCTION_18_1(v175, "JRParameterSubTypeReferenceVideo");
  v9(v177);
  v178 = OUTLINED_FUNCTION_3_29(56);
  *v179 = 6005;
  v180 = OUTLINED_FUNCTION_16_6(v178, "JRParameterSubTypeReferenceContact");
  v9(v180);
  v181 = OUTLINED_FUNCTION_3_29(57);
  *v182 = 6006;
  v183 = OUTLINED_FUNCTION_28_4(v181, 40);
  v9(v183);
  v184 = OUTLINED_FUNCTION_3_29(58);
  *v185 = 6007;
  v186 = OUTLINED_FUNCTION_16_6(v184, "JRParameterSubTypeReferenceMessage");
  v9(v186);
  v187 = OUTLINED_FUNCTION_3_29(59);
  *v188 = 6008;
  v189 = OUTLINED_FUNCTION_16_6(v187, "JRParameterSubTypeReferenceFileUrl");
  v9(v189);
  v190 = OUTLINED_FUNCTION_3_29(60);
  *v191 = 6009;
  v192 = OUTLINED_FUNCTION_28_4(v190, 36);
  v9(v192);
  v193 = OUTLINED_FUNCTION_3_29(61);
  *v194 = 7000;
  v195 = OUTLINED_FUNCTION_28_4(v193, 48);
  v9(v195);
  v196 = OUTLINED_FUNCTION_3_29(62);
  *v197 = 7001;
  v198 = OUTLINED_FUNCTION_28_4(v196, 53);
  v9(v198);
  v199 = OUTLINED_FUNCTION_45_2(63 * v5);
  *v200 = 7002;
  v201 = OUTLINED_FUNCTION_16_6(v199, "JRParameterSubTypePrimitiveSearchableItemLivePhoto");
  v9(v201);
  v202 = OUTLINED_FUNCTION_3_1(&v1[8 * v5]);
  *v203 = 7003;
  v204 = OUTLINED_FUNCTION_18_1(v202, "JRParameterSubTypePrimitiveSearchableItemImage");
  v9(v204);
  v205 = OUTLINED_FUNCTION_45_2(65 * v5);
  *v206 = 7004;
  v207 = OUTLINED_FUNCTION_18_1(v205, "JRParameterSubTypePrimitiveSearchableItemVideo");
  v9(v207);
  v208 = OUTLINED_FUNCTION_3_29(66);
  *v209 = 7005;
  v210 = OUTLINED_FUNCTION_18_1(v208, "JRParameterSubTypePrimitiveSearchableItemContact");
  v9(v210);
  v211 = OUTLINED_FUNCTION_3_29(67);
  *v212 = 7006;
  v213 = OUTLINED_FUNCTION_28_4(v211, 54);
  v9(v213);
  v214 = OUTLINED_FUNCTION_3_29(68);
  *v215 = 7007;
  *v214 = "JRParameterSubTypePrimitiveSearchableItemMessage";
  v214[1] = 48;
  v216 = OUTLINED_FUNCTION_1_3(v214);
  v9(v216);
  v217 = OUTLINED_FUNCTION_3_29(69);
  *v218 = 7008;
  v219 = OUTLINED_FUNCTION_18_1(v217, "JRParameterSubTypePrimitiveSearchableItemFileUrl");
  v9(v219);
  v220 = OUTLINED_FUNCTION_3_29(70);
  *v221 = 7009;
  v222 = OUTLINED_FUNCTION_16_6(v220, "JRParameterSubTypePrimitiveSearchableItemAliasFile");
  v9(v222);
  v223 = OUTLINED_FUNCTION_3_29(71);
  *v224 = 8000;
  v225 = OUTLINED_FUNCTION_28_4(v223, 34);
  v9(v225);
  v226 = OUTLINED_FUNCTION_3_29(72);
  *v227 = 8001;
  v228 = OUTLINED_FUNCTION_28_4(v226, 31);
  v9(v228);
  v229 = OUTLINED_FUNCTION_3_29(73);
  *v230 = 8002;
  v231 = OUTLINED_FUNCTION_28_4(v229, 38);
  v9(v231);
  v232 = OUTLINED_FUNCTION_3_29(74);
  *v233 = 8003;
  v234 = OUTLINED_FUNCTION_18_1(v232, "JRParameterSubTypePrimitivePerson");
  v9(v234);
  v235 = OUTLINED_FUNCTION_3_29(75);
  *v236 = 8004;
  v237 = OUTLINED_FUNCTION_16_6(v235, "JRParameterSubTypePrimitiveApp");
  v9(v237);
  v238 = OUTLINED_FUNCTION_3_29(76);
  *v239 = 8005;
  v240 = OUTLINED_FUNCTION_28_4(v238, 31);
  v9(v240);
  v241 = OUTLINED_FUNCTION_3_29(77);
  *v242 = 8006;
  v243 = OUTLINED_FUNCTION_16_6(v241, "JRParameterSubTypePrimitiveInt");
  v9(v243);
  v244 = OUTLINED_FUNCTION_3_29(78);
  *v245 = 8007;
  *v244 = "JRParameterSubTypePrimitiveNumber";
  v244[1] = 33;
  v246 = OUTLINED_FUNCTION_1_3(v244);
  v9(v246);
  v247 = OUTLINED_FUNCTION_3_29(79);
  *v248 = 8008;
  v249 = OUTLINED_FUNCTION_28_4(v247, 34);
  v9(v249);
  v250 = OUTLINED_FUNCTION_3_29(80);
  *v251 = 8009;
  v252 = OUTLINED_FUNCTION_28_4(v250, 31);
  v9(v252);
  v253 = OUTLINED_FUNCTION_3_29(81);
  *v254 = 8010;
  v255 = OUTLINED_FUNCTION_16_6(v253, "JRParameterSubTypePrimitiveDateComponents");
  v9(v255);
  v256 = OUTLINED_FUNCTION_3_29(82);
  *v257 = 8011;
  v258 = OUTLINED_FUNCTION_28_4(v256, 38);
  v9(v258);
  v259 = OUTLINED_FUNCTION_3_29(83);
  *v260 = 8012;
  v261 = OUTLINED_FUNCTION_18_1(v259, "JRParameterSubTypePrimitiveString");
  v9(v261);
  v262 = OUTLINED_FUNCTION_3_29(84);
  *v263 = 8013;
  v264 = OUTLINED_FUNCTION_28_4(v262, 43);
  v9(v264);
  v265 = OUTLINED_FUNCTION_3_29(85);
  *v266 = 8014;
  v267 = OUTLINED_FUNCTION_16_6(v265, "JRParameterSubTypePrimitiveCurrencyAmount");
  v9(v267);
  v268 = OUTLINED_FUNCTION_3_29(86);
  *v269 = 8015;
  v270 = OUTLINED_FUNCTION_28_4(v268, 40);
  v9(v270);
  v271 = OUTLINED_FUNCTION_3_29(87);
  *v272 = 8016;
  v273 = OUTLINED_FUNCTION_28_4(v271, 36);
  v9(v273);
  v274 = OUTLINED_FUNCTION_3_29(88);
  *v275 = 8017;
  v276 = OUTLINED_FUNCTION_28_4(v274, 30);
  v9(v276);
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_193553FD8()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, &qword_1EAEA9DB8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("jrId");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_52();
  *v11 = 50;
  v12 = OUTLINED_FUNCTION_48(v10, "rowId");
  v8(v12);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193554114()
{
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v2 = OUTLINED_FUNCTION_124();
    if (v0 || (v3 & 1) != 0)
    {
      break;
    }

    if (v2 == 50)
    {
      v4 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.JRClientEventMetadata(0);
      sub_193497890(v1 + *(v4 + 20));
    }

    else if (v2 == 1)
    {
      type metadata accessor for AIML.UUID();
      OUTLINED_FUNCTION_82_7();
      OUTLINED_FUNCTION_23_22();
      sub_193498018();
    }
  }
}

void sub_1935541B0()
{
  OUTLINED_FUNCTION_46_5();
  sub_193556990();
  if (!v0)
  {
    OUTLINED_FUNCTION_46_5();
    sub_1935541F8();
  }
}

void sub_1935541F8()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_77(v3, v4, v5, v6);
  v7 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_118();
  v12 = OUTLINED_FUNCTION_76(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_10_23();
  v15 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.JRClientEventMetadata(0);
  sub_1934486F8(v2 + *(v15 + 20), v1, &qword_1EAE3AA88, &qword_19394F9C0);
  if (__swift_getEnumTagSinglePayload(v1, 1, v0) == 1)
  {
    sub_19344E6DC(v1, &qword_1EAE3AA88, &qword_19394F9C0);
  }

  else
  {
    v16 = OUTLINED_FUNCTION_78_0();
    v17(v16);
    OUTLINED_FUNCTION_116_0();
    v18 = OUTLINED_FUNCTION_86_0();
    v19(v18);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

uint64_t sub_1935543B8()
{
  OUTLINED_FUNCTION_22_0();
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
      sub_193497890(v3);
    }
  }

  return result;
}

void sub_193554430()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_77(v3, v4, v5, v6);
  v7 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_118();
  v12 = OUTLINED_FUNCTION_76(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_10_23();
  sub_1934486F8(v2, v1, &qword_1EAE3AA88, &qword_19394F9C0);
  if (__swift_getEnumTagSinglePayload(v1, 1, v0) == 1)
  {
    sub_19344E6DC(v1, &qword_1EAE3AA88, &qword_19394F9C0);
  }

  else
  {
    v15 = OUTLINED_FUNCTION_78_0();
    v16(v15);
    OUTLINED_FUNCTION_116_0();
    v17 = OUTLINED_FUNCTION_86_0();
    v18(v17);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

IntelligencePlatformLibrary::IntelligenceFlowJointResolverTelemetry::JRInferenceStarted sub_1935545CC@<W0>(uint64_t *a1@<X8>)
{
  v2 = swift_allocObject();
  result.exists.value = IntelligenceFlowJointResolverTelemetry.JRInferenceStarted.init()().exists.value;
  *a1 = v2;
  return result;
}

void sub_193554610()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEA9DE8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_47_4();
  v5 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_34_5(v5, xmmword_19394FBB0);
  *v0 = 101;
  OUTLINED_FUNCTION_69_0("started");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_65();
  v9(v10);
  v11 = OUTLINED_FUNCTION_52();
  *v12 = 102;
  v13 = OUTLINED_FUNCTION_48(v11, "failed");
  v9(v13);
  v14 = OUTLINED_FUNCTION_46_10();
  *v15 = 103;
  v16 = OUTLINED_FUNCTION_48(v14, "ended");
  v9(v16);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193554788()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v2 = OUTLINED_FUNCTION_124();
    if (v0 || (v3 & 1) != 0)
    {
      break;
    }

    switch(v2)
    {
      case 'g':
        sub_1935549D8(__src);
        memcpy(__dst, __src, sizeof(__dst));
        sub_193498018();
        v10 = *v1;

        memcpy(v13, __dst, sizeof(v13));
        memcpy(v14, __dst, sizeof(v14));
        if (sub_1935549E0(v14) == 1)
        {
          IntelligenceFlowJointResolverTelemetry.JRInferenceEnded.init()(v12);
        }

        else
        {
          memcpy(v12, v13, sizeof(v12));
        }

        v11 = swift_allocObject();
        memcpy((v11 + 16), v12, 0x130uLL);
        *v1 = v11 | 0x8000000000000000;
        break;
      case 'f':
        __src[0] = 3;
        sub_193498018();
        v7 = *v1;

        v8 = __src[0];
        if (__src[0] == 3)
        {
          IntelligenceFlowJointResolverTelemetry.JRInferenceFailed.init()();
          v8 = __dst[0];
        }

        v9 = swift_allocObject();
        *(v9 + 16) = v8;
        *v1 = v9 | 0x4000000000000000;
        break;
      case 'e':
        __src[0] = 3;
        sub_193498018();
        v4 = *v1;

        v5 = __src[0];
        if (__src[0] == 3)
        {
          IntelligenceFlowJointResolverTelemetry.JRInferenceStarted.init()();
          v5 = __dst[0];
        }

        v6 = swift_allocObject();
        *(v6 + 16) = v5;
        *v1 = v6;
        break;
    }
  }

  OUTLINED_FUNCTION_27();
}

uint64_t sub_1935549E0(uint64_t a1)
{
  v1 = *(a1 + 192);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_1935549F8()
{
  OUTLINED_FUNCTION_88_7();
  v1 = *v0;
  v2 = *v0 >> 62;
  if (v2)
  {
    v3 = v1 & 0x3FFFFFFFFFFFFFFFLL;
    if (v2 == 1)
    {
      __dst[0] = *(v3 + 16);
    }

    else
    {
      memcpy(__dst, (v3 + 16), sizeof(__dst));
      memcpy(v4, __dst, sizeof(v4));
    }
  }

  else
  {
    __dst[0] = *(v1 + 16);
  }

  sub_193447600();
}

void sub_193554B44()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEA9E00);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v5, xmmword_19394FBE0);
  OUTLINED_FUNCTION_145_3("allocation");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_65();
  (v9)(v10);
  v11 = OUTLINED_FUNCTION_52();
  *v12 = v0;
  *v11 = "codepathId";
  *(v11 + 8) = 10;
  *(v11 + 16) = v0;
  v9();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193554C84()
{
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_124();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      v4 = *(type metadata accessor for IntelligenceFlowJointResolverTelemetry.JRExperimentTriggered(0) + 20);
      type metadata accessor for AIML.UUID();
      OUTLINED_FUNCTION_23_22();
      sub_193498018();
    }

    else if (v1 == 1)
    {
      type metadata accessor for IntelligenceFlowJointResolverTelemetry.TrialExperiment(0);
      v3 = OUTLINED_FUNCTION_82_7();
      sub_193498238(v3);
    }
  }
}

void sub_193554D40()
{
  v2 = v0;
  OUTLINED_FUNCTION_87_7();
  if (*(*v1 + 16))
  {
    type metadata accessor for IntelligenceFlowJointResolverTelemetry.TrialExperiment(0);
    OUTLINED_FUNCTION_78_1();
    sub_193451CFC(v3, v4, v5, v6, v7, v8);
    v2 = v0;
  }

  if (!v2)
  {
    OUTLINED_FUNCTION_79();
    sub_193556AA4();
  }
}

void sub_193554E34()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEA9E18);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_9_8(v5, xmmword_193952700);
  OUTLINED_FUNCTION_64_5();
  OUTLINED_FUNCTION_63("experimentNamespace");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_50_1();
  v9(v10);
  v11 = OUTLINED_FUNCTION_29_1();
  v12 = OUTLINED_FUNCTION_16_6(v11, "experimentId");
  v9(v12);
  v13 = OUTLINED_FUNCTION_9_4((v0 + 2 * v4));
  v14 = OUTLINED_FUNCTION_0_0(v13, "treatmentId");
  v9(v14);
  OUTLINED_FUNCTION_45_2(3 * v4);
  OUTLINED_FUNCTION_34_8(v15);
  v17 = OUTLINED_FUNCTION_16_6(v16, "deploymentId");
  v9(v17);
  v18 = OUTLINED_FUNCTION_19_2((v0 + 4 * v4));
  v19 = OUTLINED_FUNCTION_0_0(v18, "allocationStatus");
  v9(v19);
  v20 = OUTLINED_FUNCTION_45_2(5 * v4);
  *v21 = 6;
  v22 = OUTLINED_FUNCTION_0_0(v20, "lastUpdatedAtInMs");
  v9(v22);
  v23 = OUTLINED_FUNCTION_3_1(v0 + 6 * v4);
  *v24 = 7;
  v25 = OUTLINED_FUNCTION_0_0(v23, "compatibilityVersion");
  v9(v25);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193555038()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_124();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
      case 2:
        OUTLINED_FUNCTION_113();
        sub_19393C200();
        break;
      case 3:
        v4 = *(type metadata accessor for IntelligenceFlowJointResolverTelemetry.TrialExperiment(0) + 24);
        type metadata accessor for AIML.UUID();
        OUTLINED_FUNCTION_23_22();
        sub_193498018();
        break;
      case 4:
        v5 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.TrialExperiment(0);
        OUTLINED_FUNCTION_8_2(*(v5 + 28));
        sub_19393C190();
        break;
      case 5:
        v3 = *(type metadata accessor for IntelligenceFlowJointResolverTelemetry.TrialExperiment(0) + 32);
        OUTLINED_FUNCTION_68_6();
        sub_1934982A8();
        break;
      case 6:
        v6 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.TrialExperiment(0);
        OUTLINED_FUNCTION_8_2(*(v6 + 36));
        sub_19393C230();
        break;
      case 7:
        v7 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.TrialExperiment(0);
        OUTLINED_FUNCTION_8_2(*(v7 + 40));
        sub_19393C220();
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_19355516C()
{
  OUTLINED_FUNCTION_87_7();
  if (v1[1])
  {
    v2 = *v1;
    sub_19393C3C0();
  }

  if (!v0)
  {
    if (v1[3])
    {
      v3 = v1[2];
      sub_19393C3C0();
    }

    OUTLINED_FUNCTION_79();
    sub_193558B00();
    v4 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.TrialExperiment(0);
    v5 = v1 + v4[7];
    if ((v5[8] & 1) == 0)
    {
      v6 = *v5;
      OUTLINED_FUNCTION_15_11();
      sub_19393C360();
    }

    v7 = (v1 + v4[8]);
    if ((*(v7 + 9) & 1) == 0)
    {
      OUTLINED_FUNCTION_147(v7);
      OUTLINED_FUNCTION_78_1();
      sub_193447324(v8, v9, v10, v11, v12, v13);
    }

    v14 = v1 + v4[9];
    if ((v14[8] & 1) == 0)
    {
      v15 = *v14;
      OUTLINED_FUNCTION_15_11();
      sub_19393C3E0();
    }

    OUTLINED_FUNCTION_147_3(v4[10]);
    if ((v17 & 1) == 0)
    {
      v18 = *v16;
      OUTLINED_FUNCTION_15_11();
      sub_19393C3D0();
    }
  }
}

uint64_t sub_19355539C()
{
  OUTLINED_FUNCTION_22_0();
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
      sub_19393C0F0();
    }
  }

  return result;
}

uint64_t sub_1935553EC()
{
  if (*v0 != 2)
  {
    OUTLINED_FUNCTION_77_9();
    return sub_19393C2E0();
  }

  return result;
}

void sub_193555490()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEA9E60);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v64 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_27_2(v64, xmmword_193961690);
  *v0 = 1;
  OUTLINED_FUNCTION_83_0("modelInputShapes");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_50_1();
  (v9)(v10);
  v11 = OUTLINED_FUNCTION_3_1(v0 + v5);
  *v12 = v1;
  v13 = OUTLINED_FUNCTION_5_4(v11, "modelOutputs");
  (v9)(v13);
  v14 = OUTLINED_FUNCTION_9_4((v0 + 2 * v5));
  *v14 = "version";
  *(v14 + 1) = 7;
  v15 = OUTLINED_FUNCTION_41(v14);
  (v9)(v15);
  v16 = OUTLINED_FUNCTION_13((v0 + 3 * v5));
  v17 = OUTLINED_FUNCTION_5_4(v16, "trialDisambiguationRate");
  (v9)(v17);
  v18 = OUTLINED_FUNCTION_19_2((v0 + 4 * v5));
  v19 = OUTLINED_FUNCTION_5_4(v18, "trialConfirmationRate");
  (v9)(v19);
  v20 = OUTLINED_FUNCTION_44(5 * v5);
  *v21 = 6;
  v22 = OUTLINED_FUNCTION_5_4(v20, "riskProfile");
  (v9)(v22);
  v23 = OUTLINED_FUNCTION_3_1(v0 + 6 * v5);
  *v24 = 7;
  v25 = OUTLINED_FUNCTION_5_4(v23, "parameterType");
  (v9)(v25);
  v26 = OUTLINED_FUNCTION_44(7 * v5);
  *v27 = 8;
  *v26 = "alreadyPrompted";
  v26[1] = 15;
  v28 = OUTLINED_FUNCTION_41(v26);
  (v9)(v28);
  v29 = OUTLINED_FUNCTION_3_1(&v0[v5]);
  *v30 = 9;
  *v29 = "callerComponent";
  v29[1] = 15;
  v31 = OUTLINED_FUNCTION_41(v29);
  (v9)(v31);
  v32 = OUTLINED_FUNCTION_44(9 * v5);
  *v33 = 10;
  *v32 = "candidateHistoryCount";
  v32[1] = 21;
  v34 = OUTLINED_FUNCTION_41(v32);
  (v9)(v34);
  v35 = OUTLINED_FUNCTION_3_1(v0 + 10 * v5);
  *v36 = 11;
  v37 = OUTLINED_FUNCTION_5_4(v35, "tupleHistoryCount");
  (v9)(v37);
  v38 = OUTLINED_FUNCTION_3_1(v0 + 11 * v5);
  *v39 = 12;
  *v38 = "candidateRisk";
  v38[1] = 13;
  v40 = OUTLINED_FUNCTION_41(v38);
  (v9)(v40);
  v41 = OUTLINED_FUNCTION_3_1(v0 + 12 * v5);
  *v42 = 13;
  *v41 = "searchToolRanks";
  v41[1] = 15;
  v43 = OUTLINED_FUNCTION_41(v41);
  (v9)(v43);
  v44 = OUTLINED_FUNCTION_3_1(v0 + 13 * v5);
  *v45 = 14;
  *v44 = "bucketedDistance";
  v44[1] = 16;
  v46 = OUTLINED_FUNCTION_41(v44);
  (v9)(v46);
  v47 = OUTLINED_FUNCTION_3_1(v0 + 14 * v5);
  *v48 = 15;
  v49 = OUTLINED_FUNCTION_5_4(v47, "intervalUntilStartTime");
  (v9)(v49);
  v50 = OUTLINED_FUNCTION_44(15 * v5);
  *v51 = 16;
  v52 = OUTLINED_FUNCTION_5_4(v50, "parameterSubType");
  (v9)(v52);
  v53 = OUTLINED_FUNCTION_3_1(&v0[2 * v5]);
  *v54 = 17;
  *v53 = "signalToNoiseRatio";
  v53[1] = 18;
  v55 = OUTLINED_FUNCTION_41(v53);
  (v9)(v55);
  v56 = OUTLINED_FUNCTION_44(17 * v5);
  *v57 = 18;
  *v56 = "loudnessLevel";
  v56[1] = 13;
  v58 = OUTLINED_FUNCTION_41(v56);
  (v9)(v58);
  v59 = OUTLINED_FUNCTION_3_1(v0 + 18 * v5);
  *v60 = 19;
  *v59 = "scores";
  v59[1] = 6;
  v61 = OUTLINED_FUNCTION_41(v59);
  (v9)(v61);
  v62 = OUTLINED_FUNCTION_3_1(v0 + 19 * v5);
  *v63 = 20;
  *v62 = "jrEntitySimilarityScores";
  *(v62 + 8) = 24;
  *(v62 + 16) = v1;
  OUTLINED_FUNCTION_2_0();
  v9();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_193555910()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v4 = OUTLINED_FUNCTION_124();
    if (v0 || (v5 & 1) != 0)
    {
      break;
    }

    switch(v4)
    {
      case 1:
      case 2:
      case 3:
      case 6:
        sub_193498018();
        continue;
      case 4:
      case 5:
      case 17:
      case 18:
        OUTLINED_FUNCTION_113();
        sub_19393C160();
        continue;
      case 7:
      case 8:
      case 9:
        OUTLINED_FUNCTION_113();
        sub_19393C120();
        continue;
      case 10:
        type metadata accessor for IntelligenceFlowJointResolverTelemetry.SegmentedCandidateCount(0);
        v6 = v1 + 216;
        goto LABEL_18;
      case 11:
        v6 = v1 + 224;
        goto LABEL_18;
      case 12:
        v6 = v1 + 232;
        goto LABEL_18;
      case 13:
        v6 = v1 + 240;
        goto LABEL_18;
      case 14:
        v7 = v1 + 248;
        v8 = v3;
        v9 = &type metadata for IntelligenceFlowJointResolverTelemetry.JRBucketedDistance;
        v10 = v2;
        v11 = &off_1F07CA348;
        goto LABEL_13;
      case 15:
        v6 = v1 + 256;
        goto LABEL_18;
      case 16:
        v7 = v1 + 264;
        v8 = v3;
        v9 = &type metadata for IntelligenceFlowJointResolverTelemetry.JRParameterSubType;
        v10 = v2;
        v11 = &off_1F07CA370;
LABEL_13:
        sub_1934984D4(v7, v8, v9, v10, v11);
        continue;
      case 19:
        OUTLINED_FUNCTION_68_6();
        goto LABEL_18;
      case 20:
        OUTLINED_FUNCTION_140_4();
LABEL_18:
        sub_193498238(v6);
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_193555B80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = *v3;
  v7 = v3[15];
  v8 = v3[20];
  v9 = *(v3 + 42);
  v10 = *(v3 + 172);
  v11 = *(v3 + 44);
  v12 = *(v3 + 180);
  v81 = v3[23];
  v82 = v3[24];
  v83 = v3[25];
  v84 = v3[26];
  v80 = v3[27];
  v87 = v3[28];
  v78 = v3[30];
  v79 = v3[29];
  v76 = v3[32];
  v77 = v3[31];
  v75 = v3[33];
  v13 = *(v3 + 68);
  v14 = *(v3 + 70);
  v73 = *(v3 + 284);
  v74 = *(v3 + 276);
  v71 = v3[37];
  v72 = v3[36];
  if (v6)
  {
    *&__dst[8] = *(v3 + 1);
    *&__dst[24] = *(v3 + 3);
    *&__dst[40] = v3[5];
    *__dst = v6;
    v15 = a2;
    v16 = a3;
    sub_193447600();
    if (v4)
    {
      return;
    }
  }

  else
  {
    v15 = a2;
    v16 = a3;
    if (v4)
    {
      return;
    }
  }

  if (v7)
  {
    memcpy(__dst, v3 + 6, sizeof(__dst));
    v86 = v7;
    sub_193447600();
  }

  v17 = v16;
  if (v8 == 1)
  {
    v18 = v15;
    if (v10)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v19 = *(v3 + 9);
    *__dst = *(v3 + 8);
    *&__dst[16] = v19;
    *&__dst[32] = v8;
    v18 = v15;
    v20 = v17;
    sub_193447600();
    v17 = v20;
    if (v10)
    {
LABEL_9:
      if (v12)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  OUTLINED_FUNCTION_149_6();
  v5 = v4;
  v17 = v10;
  if ((v12 & 1) == 0)
  {
LABEL_13:
    OUTLINED_FUNCTION_149_6();
    v5 = v4;
    v17 = v10;
  }

LABEL_14:
  v21 = v87;
  if (v81)
  {
    *__dst = v81;
    OUTLINED_FUNCTION_35_14();
    sub_193447600();
    v5 = v4;
    v17 = v10;
  }

  if (*(v82 + 16))
  {
    OUTLINED_FUNCTION_86_7();
    v5 = v4;
    v17 = v10;
  }

  if (*(v83 + 16))
  {
    OUTLINED_FUNCTION_86_7();
    v5 = v4;
    v17 = v10;
  }

  if (*(v84 + 16))
  {
    OUTLINED_FUNCTION_86_7();
    v5 = v4;
  }

  else
  {
    v10 = v17;
  }

  if (!*(v80 + 16) || (v22 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.SegmentedCandidateCount(0), v4 = v5, sub_193451CFC(v80, 10, v18, v22, v10, &off_1F07CA998), !v5))
  {
    if (!*(v21 + 16) || (OUTLINED_FUNCTION_35_14(), sub_193451CFC(v23, v24, v25, v26, v27, v28), (v5 = v4) == 0))
    {
      if (!*(v79 + 16) || (OUTLINED_FUNCTION_35_14(), sub_193451CFC(v29, v30, v31, v32, v33, v34), (v5 = v4) == 0))
      {
        if (!*(v78 + 16) || (OUTLINED_FUNCTION_35_14(), sub_193451CFC(v35, v36, v37, v38, v39, v40), (v5 = v4) == 0))
        {
          if (!*(v77 + 16) || (OUTLINED_FUNCTION_35_14(), sub_193498B44(v41, v42, v43, v44, v45, v46), (v5 = v4) == 0))
          {
            if (!*(v76 + 16) || (OUTLINED_FUNCTION_35_14(), sub_193451CFC(v47, v48, v49, v50, v51, v52), (v5 = v4) == 0))
            {
              if (!*(v75 + 16) || (OUTLINED_FUNCTION_35_14(), sub_193498B44(v53, v54, v55, v56, v57, v58), (v5 = v4) == 0))
              {
                if ((v74 & 1) != 0 || (v4 = v5, sub_19393C340(), !v5))
                {
                  if ((v73 & 1) != 0 || (v4 = v5, sub_19393C340(), !v5))
                  {
                    if (!*(v72 + 16) || (OUTLINED_FUNCTION_78_1(), sub_193451CFC(v59, v60, v61, v62, v63, v64), !v4))
                    {
                      if (*(v71 + 16))
                      {
                        OUTLINED_FUNCTION_78_1();
                        sub_193451CFC(v65, v66, v67, v68, v69, v70);
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

uint64_t sub_193556100()
{
  result = OUTLINED_FUNCTION_55_1();
  if (v1)
  {
    OUTLINED_FUNCTION_70_6();
    return sub_19393C390();
  }

  return result;
}

void sub_1935561DC()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEA9EA8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("candidateBooleanMask");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "candidateTimeIntervalMatrix");
  v8(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_193556310()
{
  OUTLINED_FUNCTION_22_0();
  while (1)
  {
    result = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result == 2)
    {
      v3 = OUTLINED_FUNCTION_96_9();
LABEL_8:
      sub_193498238(v3);
    }

    else if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_94_8();
      goto LABEL_8;
    }
  }
}

uint64_t sub_19355639C()
{
  result = *v0;
  v3 = v0[1];
  if (*(*v0 + 16))
  {
    OUTLINED_FUNCTION_106();
    result = sub_193451CFC(v4, v5, v6, v7, v8, v9);
  }

  if (!v1)
  {
    if (*(v3 + 16))
    {
      OUTLINED_FUNCTION_106();
      return sub_193451CFC(v10, v11, v12, v13, v14, v15);
    }
  }

  return result;
}

uint64_t sub_1935564AC()
{
  result = OUTLINED_FUNCTION_55_1();
  if (v1)
  {
    OUTLINED_FUNCTION_70_6();
    return sub_19393C2D0();
  }

  return result;
}

uint64_t sub_19355659C()
{
  result = OUTLINED_FUNCTION_55_1();
  if (v1)
  {
    OUTLINED_FUNCTION_70_6();
    return sub_19393C310();
  }

  return result;
}

void sub_1935566C0()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEA9F20);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_47_4();
  v6 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_4_2(v6, xmmword_19394FBB0);
  OUTLINED_FUNCTION_145_3("candidateA");
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 104);
  v11 = OUTLINED_FUNCTION_65();
  (v10)(v11);
  v12 = OUTLINED_FUNCTION_52();
  *v13 = v1;
  *v12 = "candidateB";
  *(v12 + 8) = 10;
  *(v12 + 16) = v1;
  v10();
  v14 = OUTLINED_FUNCTION_9_4((v0 + 2 * v5));
  *v14 = "similarityScore";
  *(v14 + 1) = 15;
  v14[16] = v1;
  v10();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19355683C()
{
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_124();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 3:
        v4 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.JREntitySimilarityRow(0);
        OUTLINED_FUNCTION_8_2(*(v4 + 24));
        sub_19393C160();
        break;
      case 2:
        v3 = *(type metadata accessor for IntelligenceFlowJointResolverTelemetry.JREntitySimilarityRow(0) + 20);
        type metadata accessor for AIML.UUID();
LABEL_9:
        OUTLINED_FUNCTION_23_22();
        sub_193498018();
        break;
      case 1:
        type metadata accessor for AIML.UUID();
        OUTLINED_FUNCTION_82_7();
        goto LABEL_9;
    }
  }
}

void sub_1935568FC()
{
  OUTLINED_FUNCTION_87_7();
  OUTLINED_FUNCTION_11_1();
  sub_193556990();
  if (!v0)
  {
    OUTLINED_FUNCTION_79();
    sub_193556AA4();
    v1 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.JREntitySimilarityRow(0);
    OUTLINED_FUNCTION_147_3(*(v1 + 24));
    if ((v3 & 1) == 0)
    {
      v4 = *v2;
      OUTLINED_FUNCTION_98();
      sub_19393C340();
    }
  }
}

void sub_193556990()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v3, v4);
  v5 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  v9 = type metadata accessor for AIML.UUID();
  v10 = OUTLINED_FUNCTION_4_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_10_23();
  sub_1934486F8(v2, v0, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_25_0();
  if (v13)
  {
    sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
  }

  else
  {
    sub_1935591F4(v0, v1, type metadata accessor for AIML.UUID);
    OUTLINED_FUNCTION_12_12();
    OUTLINED_FUNCTION_80_8();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_193556AA4()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_87_8(v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8();
  v11 = type metadata accessor for AIML.UUID();
  v12 = OUTLINED_FUNCTION_4_1(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_10_23();
  v15 = v2(0);
  OUTLINED_FUNCTION_150_4(*(v15 + 20));
  OUTLINED_FUNCTION_25_0();
  if (v16)
  {
    sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
  }

  else
  {
    sub_1935591F4(v0, v1, type metadata accessor for AIML.UUID);
    OUTLINED_FUNCTION_137_3();
    sub_193559254(v1, type metadata accessor for AIML.UUID);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_193556C34()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEA9F38);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v6 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_27_2(v6, xmmword_1939526E0);
  *v0 = 1;
  OUTLINED_FUNCTION_83_0("candidateTuplesShapes");
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v8);
  v10 = *(v9 + 104);
  v11 = OUTLINED_FUNCTION_50_1();
  (v10)(v11);
  v12 = OUTLINED_FUNCTION_3_1(v0 + v5);
  *v13 = v1;
  v14 = OUTLINED_FUNCTION_5_4(v12, "deviceContextShapes");
  (v10)(v14);
  v15 = OUTLINED_FUNCTION_9_4((v0 + 2 * v5));
  v16 = OUTLINED_FUNCTION_5_4(v15, "candidateInteractionsShapes");
  (v10)(v16);
  v17 = OUTLINED_FUNCTION_13((v0 + 3 * v5));
  v18 = OUTLINED_FUNCTION_5_4(v17, "tupleInteractionsCandidatesShapes");
  (v10)(v18);
  v19 = OUTLINED_FUNCTION_19_2((v0 + 4 * v5));
  v20 = OUTLINED_FUNCTION_5_4(v19, "tupleInteractionsAlignmentShapes");
  (v10)(v20);
  v21 = OUTLINED_FUNCTION_44(5 * v5);
  *v22 = 6;
  *v21 = "similarityScoresShapes";
  *(v21 + 8) = 22;
  *(v21 + 16) = v1;
  OUTLINED_FUNCTION_2_0();
  v10();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_193556E24()
{
  OUTLINED_FUNCTION_22_0();
  while (1)
  {
    result = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
        OUTLINED_FUNCTION_98();
        sub_19393C1C0();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_193556EC0()
{
  result = *v0;
  v3 = v0[1];
  v5 = v0[2];
  v4 = v0[3];
  v7 = v0[4];
  v6 = v0[5];
  if (*(*v0 + 16))
  {
    result = OUTLINED_FUNCTION_136_4();
  }

  if (!v1)
  {
    if (*(v3 + 16))
    {
      result = OUTLINED_FUNCTION_136_4();
    }

    if (*(v5 + 16))
    {
      result = OUTLINED_FUNCTION_136_4();
    }

    if (*(v4 + 16))
    {
      result = OUTLINED_FUNCTION_136_4();
    }

    if (*(v7 + 16))
    {
      result = OUTLINED_FUNCTION_136_4();
    }

    if (*(v6 + 16))
    {
      return OUTLINED_FUNCTION_136_4();
    }
  }

  return result;
}

void sub_193557000()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEA9F50);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_9_8(v5, xmmword_193951270);
  OUTLINED_FUNCTION_64_5();
  OUTLINED_FUNCTION_63("action");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_50_1();
  v9(v10);
  v11 = OUTLINED_FUNCTION_29_1();
  v12 = OUTLINED_FUNCTION_0_0(v11, "candidates");
  v9(v12);
  v13 = OUTLINED_FUNCTION_9_4((v0 + 2 * v4));
  v14 = OUTLINED_FUNCTION_0_0(v13, "ranking");
  v9(v14);
  OUTLINED_FUNCTION_45_2(3 * v4);
  OUTLINED_FUNCTION_34_8(v15);
  v17 = OUTLINED_FUNCTION_0_0(v16, "jrAnonymizedHistoryAndContext");
  v9(v17);
  v18 = OUTLINED_FUNCTION_19_2((v0 + 4 * v4));
  v19 = OUTLINED_FUNCTION_0_0(v18, "didJRForcePrompt");
  v9(v19);
  v20 = OUTLINED_FUNCTION_45_2(5 * v4);
  *v21 = 6;
  v22 = OUTLINED_FUNCTION_0_0(v20, "modelDiagnosticSignals");
  v9(v22);
  v23 = OUTLINED_FUNCTION_3_1(v0 + 6 * v4);
  *v24 = 7;
  v25 = OUTLINED_FUNCTION_0_0(v23, "shadowAction");
  v9(v25);
  v26 = OUTLINED_FUNCTION_45_2(7 * v4);
  *v27 = 8;
  v28 = OUTLINED_FUNCTION_28_4(v26, 16);
  v9(v28);
  v29 = OUTLINED_FUNCTION_3_1(v0 + 8 * v4);
  *v30 = 9;
  v31 = OUTLINED_FUNCTION_0_0(v29, "userHistory");
  v9(v31);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193557264()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v2 = OUTLINED_FUNCTION_124();
    if (v0 || (v3 & 1) != 0)
    {
      break;
    }

    switch(v2)
    {
      case 1:
      case 2:
      case 3:
      case 4:
      case 6:
      case 7:
      case 8:
        sub_193498018();
        break;
      case 5:
        OUTLINED_FUNCTION_113();
        sub_19393C0F0();
        break;
      case 9:
        type metadata accessor for IntelligenceFlowJointResolverTelemetry.UserHistory(0);
        sub_193498238(v1 + 72);
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_1935573E0()
{
  v1 = v0;
  OUTLINED_FUNCTION_22_0();
  v3 = *(v2 + 8);
  v15 = *(v2 + 16);
  v4 = *(v2 + 32);
  v5 = *(v2 + 40);
  v7 = *(v2 + 48);
  v6 = *(v2 + 56);
  v14 = *(v2 + 64);
  v16 = *(v2 + 72);
  if (*v2)
  {
    OUTLINED_FUNCTION_78_1();
    sub_193447600();
    v1 = v0;
  }

  if (!v1)
  {
    if (!v3 || (OUTLINED_FUNCTION_78_1(), sub_193447600(), !v0))
    {
      if (v15 == 1 || (OUTLINED_FUNCTION_78_1(), sub_193447600(), !v0))
      {
        if (!v4 || (OUTLINED_FUNCTION_78_1(), sub_193447600(), !v0))
        {
          if (v5 == 2 || (OUTLINED_FUNCTION_15_11(), sub_19393C2E0(), !v0))
          {
            if (!v7 || (OUTLINED_FUNCTION_78_1(), sub_193447600(), !v0))
            {
              if (!v6 || (OUTLINED_FUNCTION_78_1(), sub_193447600(), !v0))
              {
                if (!v14 || (OUTLINED_FUNCTION_78_1(), sub_193447600(), !v0))
                {
                  if (*(v16 + 16))
                  {
                    type metadata accessor for IntelligenceFlowJointResolverTelemetry.UserHistory(0);
                    OUTLINED_FUNCTION_78_1();
                    sub_193451CFC(v8, v9, v10, v11, v12, v13);
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

void sub_193557754()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEA9FB0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_47_4();
  v5 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_4_2(v5, xmmword_19394FBB0);
  OUTLINED_FUNCTION_69_0("candidateIds");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_65();
  v9(v10);
  v11 = OUTLINED_FUNCTION_29_1();
  v12 = OUTLINED_FUNCTION_48(v11, "contextSimilarityScore");
  v9(v12);
  v13 = OUTLINED_FUNCTION_9_4((v0 + 2 * v4));
  v14 = OUTLINED_FUNCTION_48(v13, "uflScore");
  v9(v14);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1935578B8()
{
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    result = OUTLINED_FUNCTION_124();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2)
    {
      OUTLINED_FUNCTION_113();
      sub_19393C160();
    }

    else if (result == 1)
    {
      type metadata accessor for AIML.UUID();
      OUTLINED_FUNCTION_82_7();
      OUTLINED_FUNCTION_23_22();
      sub_193498238(v3);
    }
  }

  return result;
}

void sub_193557950()
{
  OUTLINED_FUNCTION_88_7();
  v4 = *v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 12);
  v7 = *(v1 + 16);
  v8 = *(v1 + 20);
  if (*(*v1 + 16))
  {
    v9 = type metadata accessor for AIML.UUID();
    sub_193451CFC(v4, 1, v3, v9, v2, &off_1F07C4010);
  }

  if (!v0)
  {
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C340();
    }

    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C340();
    }
  }
}

uint64_t sub_193557AB4()
{
  result = OUTLINED_FUNCTION_55_1();
  if (v1)
  {
    OUTLINED_FUNCTION_139_0();
    OUTLINED_FUNCTION_77_9();
    return sub_193451CFC(v2, v3, v4, v5, v6, v7);
  }

  return result;
}

void sub_193557B68()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEA9FE0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_34_5(v5, xmmword_19394FBE0);
  *v0 = 101;
  OUTLINED_FUNCTION_69_0("rankingScoreMatrix");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_65();
  v9(v10);
  v11 = OUTLINED_FUNCTION_52();
  *v12 = 102;
  v13 = OUTLINED_FUNCTION_48(v11, "rankingCandidateMatrix");
  v9(v13);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193557CAC()
{
  OUTLINED_FUNCTION_22_0();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 102)
    {
      OUTLINED_FUNCTION_96_9();
LABEL_8:
      sub_193498018();
    }

    else if (v1 == 101)
    {
      OUTLINED_FUNCTION_94_8();
      goto LABEL_8;
    }
  }
}

void sub_193557D38()
{
  v2 = v0[1];
  if (*v0)
  {
    v3 = *v0;
    OUTLINED_FUNCTION_106();
    sub_193447600();
  }

  if (!v1)
  {
    if (v2)
    {
      OUTLINED_FUNCTION_106();
      sub_193447600();
    }
  }
}

uint64_t sub_193557E4C()
{
  result = OUTLINED_FUNCTION_55_1();
  if (v1)
  {
    OUTLINED_FUNCTION_139_0();
    OUTLINED_FUNCTION_77_9();
    return sub_193451CFC(v2, v3, v4, v5, v6, v7);
  }

  return result;
}

uint64_t sub_193557F18()
{
  result = OUTLINED_FUNCTION_55_1();
  if (v1)
  {
    OUTLINED_FUNCTION_139_0();
    OUTLINED_FUNCTION_77_9();
    return sub_193451CFC(v2, v3, v4, v5, v6, v7);
  }

  return result;
}

uint64_t sub_193558028(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  while (1)
  {
    result = sub_19393C0E0();
    if (v5 || (v8 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(0);
      sub_193498238(v4);
    }
  }

  return result;
}

uint64_t sub_1935580D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v6 = *v5;
  if (*(*v5 + 16))
  {
    v10 = a4(0);
    return sub_193451CFC(v6, 1, a2, v10, a3, a5);
  }

  return result;
}

uint64_t sub_1935581EC()
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
      sub_193498238(v0);
    }
  }

  return result;
}

uint64_t sub_193558268()
{
  result = OUTLINED_FUNCTION_55_1();
  if (v1)
  {
    OUTLINED_FUNCTION_139_0();
    OUTLINED_FUNCTION_77_9();
    return sub_193451CFC(v2, v3, v4, v5, v6, v7);
  }

  return result;
}

uint64_t sub_193558334(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  while (1)
  {
    result = sub_19393C0E0();
    if (v5 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(v4, a2, a3);
    }
  }

  return result;
}

void sub_1935583DC()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAA088);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_9_8(v5, xmmword_19394FBC0);
  OUTLINED_FUNCTION_64_5();
  OUTLINED_FUNCTION_63("toolID");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_50_1();
  v9(v10);
  v11 = OUTLINED_FUNCTION_29_1();
  v12 = OUTLINED_FUNCTION_0_0(v11, "historicalContext");
  v9(v12);
  v13 = OUTLINED_FUNCTION_9_4((v0 + 2 * v4));
  v14 = OUTLINED_FUNCTION_0_0(v13, "historicalFeedback");
  v9(v14);
  OUTLINED_FUNCTION_45_2(3 * v4);
  OUTLINED_FUNCTION_34_8(v15);
  v17 = OUTLINED_FUNCTION_0_0(v16, "historicalLocationContext");
  v9(v17);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193558564()
{
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_124();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        type metadata accessor for AIML.UUID();
        OUTLINED_FUNCTION_82_7();
        OUTLINED_FUNCTION_23_22();
        sub_193498018();
        break;
      case 2:
        v6 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.UserHistory(0);
        OUTLINED_FUNCTION_8_2(*(v6 + 20));
        sub_19393C120();
        break;
      case 3:
        v3 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.UserHistory(0);
        OUTLINED_FUNCTION_8_2(*(v3 + 24));
        sub_19393C160();
        break;
      case 4:
        v4 = *(type metadata accessor for IntelligenceFlowJointResolverTelemetry.UserHistory(0) + 28);
        type metadata accessor for IntelligenceFlowJointResolverTelemetry.HistoricalLocationContext(0);
        v5 = OUTLINED_FUNCTION_111();
        sub_193498238(v5);
        break;
      default:
        continue;
    }
  }
}

void sub_193558660()
{
  OUTLINED_FUNCTION_87_7();
  OUTLINED_FUNCTION_11_1();
  sub_193556990();
  if (!v0)
  {
    v2 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.UserHistory(0);
    if (*(*(v1 + v2[5]) + 16))
    {
      OUTLINED_FUNCTION_15_11();
      sub_19393C310();
    }

    OUTLINED_FUNCTION_147_3(v2[6]);
    if ((v4 & 1) == 0)
    {
      v5 = *v3;
      OUTLINED_FUNCTION_98();
      sub_19393C340();
    }

    if (*(*(v1 + v2[7]) + 16))
    {
      type metadata accessor for IntelligenceFlowJointResolverTelemetry.HistoricalLocationContext(0);
      OUTLINED_FUNCTION_78_1();
      sub_193451CFC(v6, v7, v8, v9, v10, v11);
    }
  }
}

void sub_19355879C()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAA0A0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_9_8(v5, xmmword_19394FBC0);
  OUTLINED_FUNCTION_64_5();
  OUTLINED_FUNCTION_63("logOfTimeElapsedInSeconds");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_50_1();
  v9(v10);
  v11 = OUTLINED_FUNCTION_29_1();
  v12 = OUTLINED_FUNCTION_16_6(v11, "anonymizedLocationNameId");
  v9(v12);
  v13 = OUTLINED_FUNCTION_9_4((v0 + 2 * v4));
  v14 = OUTLINED_FUNCTION_16_6(v13, "anonymizedLocationTypeId");
  v9(v14);
  OUTLINED_FUNCTION_45_2(3 * v4);
  OUTLINED_FUNCTION_34_8(v15);
  v17 = OUTLINED_FUNCTION_0_0(v16, "bucketedDistance");
  v9(v17);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193558920()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_124();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_113();
        sub_19393C160();
        break;
      case 2:
        v5 = *(type metadata accessor for IntelligenceFlowJointResolverTelemetry.HistoricalLocationContext(0) + 20);
        goto LABEL_9;
      case 3:
        v3 = *(type metadata accessor for IntelligenceFlowJointResolverTelemetry.HistoricalLocationContext(0) + 24);
LABEL_9:
        type metadata accessor for AIML.UUID();
        OUTLINED_FUNCTION_23_22();
        sub_193498018();
        break;
      case 4:
        v4 = *(type metadata accessor for IntelligenceFlowJointResolverTelemetry.HistoricalLocationContext(0) + 28);
        OUTLINED_FUNCTION_68_6();
        sub_1934982A8();
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_193558A14()
{
  OUTLINED_FUNCTION_87_7();
  if ((v1[1] & 1) == 0)
  {
    v2 = *v1;
    OUTLINED_FUNCTION_98();
    sub_19393C340();
  }

  if (!v0)
  {
    OUTLINED_FUNCTION_79();
    sub_193556AA4();
    OUTLINED_FUNCTION_79();
    sub_193558B00();
    v3 = v1 + *(type metadata accessor for IntelligenceFlowJointResolverTelemetry.HistoricalLocationContext(0) + 28);
    if ((*(v3 + 9) & 1) == 0)
    {
      OUTLINED_FUNCTION_147(v3);
      OUTLINED_FUNCTION_78_1();
      sub_193447324(v4, v5, v6, v7, v8, v9);
    }
  }
}

void sub_193558B00()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_87_8(v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8();
  v11 = type metadata accessor for AIML.UUID();
  v12 = OUTLINED_FUNCTION_4_1(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_10_23();
  v15 = v2(0);
  OUTLINED_FUNCTION_150_4(*(v15 + 24));
  OUTLINED_FUNCTION_25_0();
  if (v16)
  {
    sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
  }

  else
  {
    sub_1935591F4(v0, v1, type metadata accessor for AIML.UUID);
    OUTLINED_FUNCTION_137_3();
    sub_193559254(v1, type metadata accessor for AIML.UUID);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_193558C90()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAA0B8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("candidateID");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "count");
  v8(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193558DC4()
{
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_124();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      v3 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.SegmentedCandidateCount(0);
      OUTLINED_FUNCTION_8_2(*(v3 + 20));
      sub_19393C220();
    }

    else if (v1 == 1)
    {
      type metadata accessor for AIML.UUID();
      OUTLINED_FUNCTION_82_7();
      OUTLINED_FUNCTION_23_22();
      sub_193498018();
    }
  }
}

void sub_193558E54()
{
  OUTLINED_FUNCTION_87_7();
  OUTLINED_FUNCTION_11_1();
  sub_193556990();
  if (!v0)
  {
    v1 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.SegmentedCandidateCount(0);
    OUTLINED_FUNCTION_147_3(*(v1 + 20));
    if ((v3 & 1) == 0)
    {
      v4 = *v2;
      OUTLINED_FUNCTION_15_11();
      sub_19393C3D0();
    }
  }
}

void sub_193558F24()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAA0D0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("tupleCandidates");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "count");
  v8(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_193559058()
{
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    result = OUTLINED_FUNCTION_124();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_113();
      sub_19393C220();
    }

    else if (result == 1)
    {
      type metadata accessor for AIML.UUID();
      OUTLINED_FUNCTION_82_7();
      OUTLINED_FUNCTION_23_22();
      sub_193498238(v3);
    }
  }

  return result;
}

void sub_1935590E0()
{
  OUTLINED_FUNCTION_88_7();
  v4 = *v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 12);
  if (*(*v1 + 16))
  {
    v7 = type metadata accessor for AIML.UUID();
    sub_193451CFC(v4, 1, v3, v7, v2, &off_1F07C4010);
  }

  if (!v0 && (v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_15_11();
    sub_19393C3D0();
  }
}

uint64_t sub_1935591F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_4_1(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_193559254(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_72_6(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69AAC28];

  return sub_193558334(a1, a2, a3, v4);
}

uint64_t OUTLINED_FUNCTION_86_7()
{

  return sub_19393C310();
}

void OUTLINED_FUNCTION_137_3()
{
  v2 = *(v0 - 88);
  v3 = *(v0 - 72);

  sub_193447600();
}

void OUTLINED_FUNCTION_145_3(uint64_t a1@<X8>)
{
  *v1 = a1;
  *(v1 + 8) = 10;
  *(v1 + 16) = 2;
}

uint64_t OUTLINED_FUNCTION_150_4@<X0>(uint64_t a1@<X8>)
{

  return sub_1934486F8(v4 + a1, v3, v1, v2);
}

uint64_t IntelligenceFlowJointResolverTelemetry.writeTimestamp.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowJointResolverTelemetry(v0) + 20);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowJointResolverTelemetry.bookmark.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowJointResolverTelemetry(v0);
  return OUTLINED_FUNCTION_46(&qword_1EAE3AA00, &unk_19394F8F0, *(v1 + 24));
}

uint64_t IntelligenceFlowJointResolverTelemetry.bookmark.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowJointResolverTelemetry(v0) + 24);
  v2 = OUTLINED_FUNCTION_100_0();
  return sub_19344542C(v2, v3, v4, v5);
}

uint64_t IntelligenceFlowJointResolverTelemetry.bookmark.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowJointResolverTelemetry(v0) + 24);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_193559594()
{
  v0 = OUTLINED_FUNCTION_8_4();
  type metadata accessor for IntelligenceFlowJointResolverTelemetry.JointResolverRequestInvocation(v0);
  v1 = OUTLINED_FUNCTION_28_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t IntelligenceFlowJointResolverTelemetry.invocation.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowJointResolverTelemetry(v0);
  return OUTLINED_FUNCTION_46(&qword_1EAE3CEB0, &qword_193960F60, *(v1 + 28));
}

uint64_t IntelligenceFlowJointResolverTelemetry.invocation.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowJointResolverTelemetry(v0) + 28);
  v2 = OUTLINED_FUNCTION_100_0();
  return sub_19344542C(v2, v3, v4, v5);
}

uint64_t IntelligenceFlowJointResolverTelemetry.invocation.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowJointResolverTelemetry(v0) + 28);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowJointResolverTelemetry.jrInferenceContext.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = *(v1 + *(type metadata accessor for IntelligenceFlowJointResolverTelemetry(v2) + 32));
  *v0 = v3;

  return sub_193438388(v3);
}

uint64_t IntelligenceFlowJointResolverTelemetry.jrInferenceContext.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(type metadata accessor for IntelligenceFlowJointResolverTelemetry(0) + 32);
  result = sub_1934354B4(*(v1 + v3));
  *(v1 + v3) = v2;
  return result;
}

uint64_t IntelligenceFlowJointResolverTelemetry.jrInferenceContext.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowJointResolverTelemetry(v0) + 32);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_19355976C()
{
  v0 = OUTLINED_FUNCTION_8_4();
  type metadata accessor for IntelligenceFlowJointResolverTelemetry.JRExperimentTriggered(v0);
  v1 = OUTLINED_FUNCTION_28_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t IntelligenceFlowJointResolverTelemetry.jrExperimentTriggered.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowJointResolverTelemetry(v0);
  return OUTLINED_FUNCTION_46(&qword_1EAE3CEB8, &qword_193961930, *(v1 + 36));
}

uint64_t IntelligenceFlowJointResolverTelemetry.jrExperimentTriggered.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowJointResolverTelemetry(v0) + 36);
  v2 = OUTLINED_FUNCTION_100_0();
  return sub_19344542C(v2, v3, v4, v5);
}

uint64_t IntelligenceFlowJointResolverTelemetry.jrExperimentTriggered.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowJointResolverTelemetry(v0) + 36);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_193559884()
{
  v0 = OUTLINED_FUNCTION_8_4();
  type metadata accessor for IntelligenceFlowJointResolverTelemetry.JRClientEventMetadata(v0);
  v1 = OUTLINED_FUNCTION_28_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t IntelligenceFlowJointResolverTelemetry.eventMetadata.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowJointResolverTelemetry(v0);
  return OUTLINED_FUNCTION_46(&qword_1EAE3CEC0, &qword_193960F68, *(v1 + 40));
}

uint64_t IntelligenceFlowJointResolverTelemetry.eventMetadata.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowJointResolverTelemetry(v0) + 40);
  v2 = OUTLINED_FUNCTION_100_0();
  return sub_19344542C(v2, v3, v4, v5);
}

uint64_t IntelligenceFlowJointResolverTelemetry.eventMetadata.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowJointResolverTelemetry(v0) + 40);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowJointResolverTelemetry.timestamp.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowJointResolverTelemetry(v0);
  return OUTLINED_FUNCTION_46(&qword_1EAE3B498, &unk_193959120, *(v1 + 44));
}

uint64_t IntelligenceFlowJointResolverTelemetry.timestamp.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowJointResolverTelemetry(v0) + 44);
  v2 = OUTLINED_FUNCTION_100_0();
  return sub_19344542C(v2, v3, v4, v5);
}

uint64_t IntelligenceFlowJointResolverTelemetry.timestamp.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowJointResolverTelemetry(v0) + 44);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_193559A60@<X0>(uint64_t *a1@<X8>)
{
  result = IntelligenceFlowJointResolverTelemetry.TreatmentAllocationStatus.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193559A88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = static IntelligenceFlowJointResolverTelemetry.TreatmentAllocationStatus.allCases.getter(a1, a2, a3);
  *a4 = result;
  return result;
}

uint64_t sub_193559AE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_18();
  v4 = a3();
  MEMORY[0x193B18030](v4);
  return sub_19393CB00();
}

uint64_t sub_193559BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_18();
  v5 = a4();
  MEMORY[0x193B18030](v5);
  return sub_19393CB00();
}

uint64_t sub_193559CEC@<X0>(uint64_t *a1@<X8>)
{
  result = IntelligenceFlowJointResolverTelemetry.JRBucketedDistance.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193559D14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = static IntelligenceFlowJointResolverTelemetry.JRBucketedDistance.allCases.getter(a1, a2, a3);
  *a4 = result;
  return result;
}

uint64_t sub_193559E08@<X0>(uint64_t *a1@<X8>)
{
  result = IntelligenceFlowJointResolverTelemetry.JRParameterSubType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193559E30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = static IntelligenceFlowJointResolverTelemetry.JRParameterSubType.allCases.getter(a1, a2, a3);
  *a4 = result;
  return result;
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRClientEventMetadata.rowId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowJointResolverTelemetry.JRClientEventMetadata(v0) + 20);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRClientEventMetadata.init()()
{
  OUTLINED_FUNCTION_8_4();
  type metadata accessor for AIML.UUID();
  v1 = OUTLINED_FUNCTION_10_25();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  v5 = *(type metadata accessor for IntelligenceFlowJointResolverTelemetry.JRClientEventMetadata(0) + 20);
  sub_19393BE60();
  OUTLINED_FUNCTION_5_28();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
  v10 = OUTLINED_FUNCTION_10_25();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  sub_19344E6DC(v0 + v5, &qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_5_28();

  return __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
}

void static IntelligenceFlowJointResolverTelemetry.JRClientEventMetadata.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v3 = v2;
  v5 = v4;
  v67 = sub_19393BE60();
  v6 = OUTLINED_FUNCTION_0(v67);
  v64 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_1();
  v62 = v11 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v15);
  v63 = &v61 - v16;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B4E8, &unk_193952CF0);
  OUTLINED_FUNCTION_4_1(v65);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_74();
  v20 = type metadata accessor for AIML.UUID();
  v21 = OUTLINED_FUNCTION_4_1(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5_1();
  v26 = v25 - v24;
  v27 = OUTLINED_FUNCTION_32_4();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(v27, v28);
  OUTLINED_FUNCTION_47(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_42_0();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BD08, &qword_1939595A0);
  OUTLINED_FUNCTION_47(v33);
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_3_0();
  v37 = MEMORY[0x1EEE9AC00](v36);
  v39 = &v61 - v38;
  v40 = *(v37 + 56);
  v66 = v5;
  sub_193448804(v5, &v61 - v38, &qword_1EAE3BCA0, &unk_19395C320);
  v68 = v3;
  sub_193448804(v3, &v39[v40], &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_31(v39);
  if (!v41)
  {
    sub_193448804(v39, v0, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_31(&v39[v40]);
    if (!v41)
    {
      sub_19355A5F8(&v39[v40], v26);
      OUTLINED_FUNCTION_0_38();
      sub_19355A65C(v45, v46);
      sub_19393C550();
      OUTLINED_FUNCTION_4_30();
      sub_193568274();
      sub_193568274();
      sub_19344E6DC(v39, &qword_1EAE3BCA0, &unk_19395C320);
      if ((v20 & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_11;
    }

    OUTLINED_FUNCTION_1_37();
    sub_193568274();
LABEL_9:
    v42 = &qword_1EAE3BD08;
    v43 = &qword_1939595A0;
    v44 = v39;
LABEL_20:
    sub_19344E6DC(v44, v42, v43);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_31(&v39[v40]);
  if (!v41)
  {
    goto LABEL_9;
  }

  sub_19344E6DC(v39, &qword_1EAE3BCA0, &unk_19395C320);
LABEL_11:
  v47 = *(type metadata accessor for IntelligenceFlowJointResolverTelemetry.JRClientEventMetadata(0) + 20);
  v48 = *(v65 + 48);
  OUTLINED_FUNCTION_22();
  sub_193448804(v49, v50, v51, &qword_19394F9C0);
  sub_193448804(v68 + v47, v1 + v48, &qword_1EAE3AA88, &qword_19394F9C0);
  v52 = v67;
  OUTLINED_FUNCTION_6_3(v1, 1, v67);
  if (!v41)
  {
    v53 = v63;
    sub_193448804(v1, v63, &qword_1EAE3AA88, &qword_19394F9C0);
    OUTLINED_FUNCTION_6_3(v1 + v48, 1, v52);
    if (!v54)
    {
      v55 = v64;
      v56 = v1 + v48;
      v57 = v62;
      (*(v64 + 32))(v62, v56, v52);
      OUTLINED_FUNCTION_8_32();
      sub_19355A65C(v58, v59);
      OUTLINED_FUNCTION_117_9();
      sub_19393C550();
      v60 = *(v55 + 8);
      v60(v57, v52);
      v60(v53, v52);
      sub_19344E6DC(v1, &qword_1EAE3AA88, &qword_19394F9C0);
      goto LABEL_21;
    }

    (*(v64 + 8))(v53, v52);
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_6_3(v1 + v48, 1, v52);
  if (!v41)
  {
LABEL_19:
    v42 = &qword_1EAE3B4E8;
    v43 = &unk_193952CF0;
    v44 = v1;
    goto LABEL_20;
  }

  sub_19344E6DC(v1, &qword_1EAE3AA88, &qword_19394F9C0);
LABEL_21:
  OUTLINED_FUNCTION_116();
}

uint64_t sub_19355A5F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AIML.UUID();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_19355A65C(unint64_t *a1, void (*a2)(uint64_t))
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

void IntelligenceFlowJointResolverTelemetry.JRClientEventMetadata.hash(into:)()
{
  OUTLINED_FUNCTION_117();
  v3 = v0;
  OUTLINED_FUNCTION_3_4();
  v4 = sub_19393BE60();
  v5 = OUTLINED_FUNCTION_0(v4);
  v41 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_150();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_76_0();
  v13 = type metadata accessor for AIML.UUID();
  v14 = OUTLINED_FUNCTION_4_1(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5_1();
  v19 = v18 - v17;
  v20 = OUTLINED_FUNCTION_125_3();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(v20, v21);
  OUTLINED_FUNCTION_47(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v40 - v26;
  sub_193448804(v3, &v40 - v26, &qword_1EAE3BCA0, &unk_19395C320);
  v28 = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_3(v28, v29, v13);
  if (v30)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    sub_19355A5F8(v27, v19);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_38();
    sub_19355A65C(v31, v32);
    OUTLINED_FUNCTION_21_1();
    sub_19393C540();
    OUTLINED_FUNCTION_1_37();
    sub_193568274();
  }

  v33 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.JRClientEventMetadata(0);
  sub_193448804(v3 + *(v33 + 20), v2, &qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_6_3(v2, 1, v4);
  if (v30)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v34 = v41;
    (*(v41 + 32))(v1, v2, v4);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_8_32();
    sub_19355A65C(v35, v36);
    OUTLINED_FUNCTION_21_1();
    sub_19393C540();
    v37 = *(v34 + 8);
    v38 = OUTLINED_FUNCTION_175_0();
    v39(v38);
  }

  OUTLINED_FUNCTION_116();
}

uint64_t IntelligenceFlowJointResolverTelemetry.JointResolverRequestInvocation.init()()
{
  OUTLINED_FUNCTION_8_4();
  sub_19393BE60();
  v1 = OUTLINED_FUNCTION_10_25();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  sub_19344E6DC(v0, &qword_1EAE3AA88, &qword_19394F9C0);
  v5 = OUTLINED_FUNCTION_10_25();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

void static IntelligenceFlowJointResolverTelemetry.JointResolverRequestInvocation.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v2 = sub_19393BE60();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_1();
  v10 = v9 - v8;
  v11 = OUTLINED_FUNCTION_165_1();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
  OUTLINED_FUNCTION_47(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_74();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B4E8, &unk_193952CF0);
  OUTLINED_FUNCTION_47(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_42_0();
  v22 = *(v21 + 56);
  OUTLINED_FUNCTION_34_15();
  sub_193448804(v23, v24, v25, v26);
  OUTLINED_FUNCTION_34_15();
  sub_193448804(v27, v28, v29, v30);
  OUTLINED_FUNCTION_31(v0);
  if (!v35)
  {
    v31 = OUTLINED_FUNCTION_115_0();
    sub_193448804(v31, v32, v33, v34);
    OUTLINED_FUNCTION_31(v0 + v22);
    if (!v35)
    {
      (*(v5 + 32))(v10, v0 + v22, v2);
      OUTLINED_FUNCTION_8_32();
      sub_19355A65C(v36, v37);
      OUTLINED_FUNCTION_85_9();
      sub_19393C550();
      v38 = *(v5 + 8);
      v39 = OUTLINED_FUNCTION_13_0();
      v38(v39);
      (v38)(v1, v2);
      sub_19344E6DC(v0, &qword_1EAE3AA88, &qword_19394F9C0);
      goto LABEL_10;
    }

    (*(v5 + 8))(v1, v2);
LABEL_9:
    sub_19344E6DC(v0, &qword_1EAE3B4E8, &unk_193952CF0);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_31(v0 + v22);
  if (!v35)
  {
    goto LABEL_9;
  }

  sub_19344E6DC(v0, &qword_1EAE3AA88, &qword_19394F9C0);
LABEL_10:
  OUTLINED_FUNCTION_116();
}

void IntelligenceFlowJointResolverTelemetry.JointResolverRequestInvocation.hash(into:)()
{
  OUTLINED_FUNCTION_237();
  v2 = sub_19393BE60();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_1();
  v10 = v9 - v8;
  v11 = OUTLINED_FUNCTION_25_2();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
  OUTLINED_FUNCTION_47(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_90_10(v0, v1);
  OUTLINED_FUNCTION_6_3(v1, 1, v2);
  if (v17)
  {
    sub_19393CAD0();
  }

  else
  {
    v18 = *(v5 + 32);
    v19 = OUTLINED_FUNCTION_115_0();
    v20(v19);
    sub_19393CAD0();
    OUTLINED_FUNCTION_8_32();
    sub_19355A65C(v21, v22);
    sub_19393C540();
    (*(v5 + 8))(v10, v2);
  }

  OUTLINED_FUNCTION_236();
}