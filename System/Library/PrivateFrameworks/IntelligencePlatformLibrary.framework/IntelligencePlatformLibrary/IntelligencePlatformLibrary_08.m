uint64_t sub_1934CFA04()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  OUTLINED_FUNCTION_119();
  sub_19393CAD0();
  if (v2)
  {
    OUTLINED_FUNCTION_175();
    sub_19393C640();
  }

  sub_19393CAD0();
  if (!v4)
  {
    OUTLINED_FUNCTION_169_0();
  }

  return sub_19393CB00();
}

uint64_t sub_1934CFAB8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  v6 = *(v4 + 2);
  v7 = *(v4 + 24);
  v10 = *v4;
  v11 = v6;
  v12 = v7;
  sub_19393CAB0();
  a4(v9);
  return sub_19393CB00();
}

uint64_t sub_1934CFB48@<X0>(uint64_t *a1@<X8>)
{
  result = GenerativeFunctionsInstrumentationError.ModelManagerSessionError.SimpleError.ErrorCase.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1934CFB70@<X0>(uint64_t *a1@<X8>)
{
  result = static GenerativeFunctionsInstrumentationError.ModelManagerSessionError.SimpleError.ErrorCase.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1934CFD88@<X0>(uint64_t *a1@<X8>)
{
  result = GenerativeFunctionsInstrumentationError.ModelManagerInferenceError.ErrorCase.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1934CFDB0@<X0>(uint64_t *a1@<X8>)
{
  result = static GenerativeFunctionsInstrumentationError.ModelManagerInferenceError.ErrorCase.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1934CFF2C@<X0>(uint64_t *a1@<X8>)
{
  result = GenerativeFunctionsInstrumentationError.GenerativeFunctionError.ModelError.ErrorCase.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1934CFF54@<X0>(uint64_t *a1@<X8>)
{
  result = static GenerativeFunctionsInstrumentationError.GenerativeFunctionError.ModelError.ErrorCase.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1934D00D0@<X0>(uint64_t *a1@<X8>)
{
  result = GenerativeFunctionsInstrumentationError.GenerativeFunctionError.SanitizerError.ErrorCase.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1934D00F8@<X0>(uint64_t *a1@<X8>)
{
  result = static GenerativeFunctionsInstrumentationError.GenerativeFunctionError.SanitizerError.ErrorCase.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1934D0274@<X0>(uint64_t *a1@<X8>)
{
  result = GenerativeFunctionsInstrumentationError.GenerativeFunctionError.UseCaseDisablementError.ErrorCase.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1934D029C@<X0>(uint64_t *a1@<X8>)
{
  result = static GenerativeFunctionsInstrumentationError.GenerativeFunctionError.UseCaseDisablementError.ErrorCase.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1934D0454@<X0>(uint64_t *a1@<X8>)
{
  result = GenerativeFunctionsInstrumentationError.TokenGenerationError.ErrorCase.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1934D047C@<X0>(uint64_t *a1@<X8>)
{
  result = static GenerativeFunctionsInstrumentationError.TokenGenerationError.ErrorCase.allCases.getter();
  *a1 = result;
  return result;
}

void GenerativeFunctionsInstrumentationError.SummarizationError.InputTooShort.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
}

uint64_t sub_1934D0708@<X0>(uint64_t *a1@<X8>)
{
  result = GenerativeFunctionsInstrumentationError.SummarizationError.MissingRequiredData.Property.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_1934D0730@<X0>(char **a1@<X8>)
{
  result = static GenerativeFunctionsInstrumentationError.SummarizationError.MissingRequiredData.Property.allCases.getter();
  *a1 = result;
  return result;
}

BOOL sub_1934D0830(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = *(a2 + 9);
  if ((*(a1 + 9) & 1) == 0)
  {
    if (*(a2 + 9))
    {
      return 0;
    }

    v5 = OUTLINED_FUNCTION_178_0(a1, a2);
    v7 = v6(v5);
    return v7 == a3();
  }

  return (*(a2 + 9) & 1) != 0;
}

uint64_t sub_1934D08E0()
{
  OUTLINED_FUNCTION_148_2();
  if (v2 == 1)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  v4 = v1;
  v5 = *(v0 + 8);
  v6 = *v0;
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_179_0();
  v8 = v4(v7);
  return MEMORY[0x193B18030](v8);
}

uint64_t sub_1934D096C(uint64_t (*a1)(void))
{
  OUTLINED_FUNCTION_190();
  sub_19393CAB0();
  sub_19393CAD0();
  if (v1 != 1)
  {
    OUTLINED_FUNCTION_180();
    v3 = a1();
    MEMORY[0x193B18030](v3);
  }

  return sub_19393CB00();
}

uint64_t sub_1934D0A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_190();
  sub_19393CAB0();
  sub_19393CAD0();
  if (v4 != 1)
  {
    OUTLINED_FUNCTION_180();
    v6 = a4();
    MEMORY[0x193B18030](v6);
  }

  return sub_19393CB00();
}

uint64_t GenerativeFunctionsInstrumentationError.SummarizationError.InvalidModelBundleIdentifier.modelBundleIdentifier.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

IntelligencePlatformLibrary::GenerativeFunctionsInstrumentationError::SummarizationError::InvalidModelBundleIdentifier __swiftcall GenerativeFunctionsInstrumentationError.SummarizationError.InvalidModelBundleIdentifier.init()()
{
  OUTLINED_FUNCTION_8_4();

  *v0 = 0;
  v0[1] = 0;
  result.modelBundleIdentifier.value._object = v2;
  result.modelBundleIdentifier.value._countAndFlagsBits = v1;
  return result;
}

uint64_t _s27IntelligencePlatformLibrary39GenerativeFunctionsInstrumentationErrorO013SummarizationG0O28InvalidModelBundleIdentifierV2eeoiySbAG_AGtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a2[1];
  if (a1[1])
  {
    if (v2)
    {
      OUTLINED_FUNCTION_155(a1, a2);
      v5 = v5 && v3 == v4;
      if (v5 || (sub_19393CA30() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v2)
  {
    return 1;
  }

  return 0;
}

uint64_t _s27IntelligencePlatformLibrary39GenerativeFunctionsInstrumentationErrorO013SummarizationG0O28InvalidModelBundleIdentifierV4hash4intoys6HasherVz_tF_0()
{
  if (!v0[1])
  {
    return sub_19393CAD0();
  }

  v1 = *v0;
  sub_19393CAD0();

  return sub_19393C640();
}

uint64_t _s27IntelligencePlatformLibrary39GenerativeFunctionsInstrumentationErrorO013SummarizationG0O28InvalidModelBundleIdentifierV9hashValueSivg_0()
{
  v1 = *v0;
  v2 = v0[1];
  OUTLINED_FUNCTION_119();
  sub_19393CAD0();
  if (v2)
  {
    OUTLINED_FUNCTION_116_3();
  }

  return sub_19393CB00();
}

uint64_t sub_1934D0D40()
{
  v1 = *v0;
  v2 = v0[1];
  sub_19393CAB0();
  sub_19393CAD0();
  if (v2)
  {
    OUTLINED_FUNCTION_116_3();
  }

  return sub_19393CB00();
}

uint64_t _s27IntelligencePlatformLibrary39GenerativeFunctionsInstrumentationErrorO013SummarizationG0O13InputTooShortV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 24);
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
    if ((*(a2 + 24) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) == *(a2 + 16))
    {
      v5 = *(a2 + 24);
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t _s27IntelligencePlatformLibrary39GenerativeFunctionsInstrumentationErrorO013SummarizationG0O13InputTooShortV4hash4intoys6HasherVz_tF_0()
{
  OUTLINED_FUNCTION_51_5();
  v1 = v0[2];
  v2 = *(v0 + 24);
  if (v3 == 1)
  {
    sub_19393CAD0();
    if (!v2)
    {
LABEL_3:
      sub_19393CAD0();
      return MEMORY[0x193B18060](v1);
    }
  }

  else
  {
    v5 = *v0;
    sub_19393CAD0();
    MEMORY[0x193B18060](v5);
    if (!v2)
    {
      goto LABEL_3;
    }
  }

  return sub_19393CAD0();
}

uint64_t _s27IntelligencePlatformLibrary39GenerativeFunctionsInstrumentationErrorO013SummarizationG0O13InputTooShortV9hashValueSivg_0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v0[2];
  v4 = *(v0 + 24);
  OUTLINED_FUNCTION_119();
  sub_19393CAD0();
  if (v2 != 1)
  {
    MEMORY[0x193B18060](v1);
  }

  sub_19393CAD0();
  if (!v4)
  {
    OUTLINED_FUNCTION_169_0();
  }

  return sub_19393CB00();
}

uint64_t sub_1934D0F48()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v0[2];
  v4 = *(v0 + 24);
  sub_19393CAB0();
  sub_19393CAD0();
  if (v2 != 1)
  {
    MEMORY[0x193B18060](v1);
  }

  sub_19393CAD0();
  if (!v4)
  {
    OUTLINED_FUNCTION_169_0();
  }

  return sub_19393CB00();
}

uint64_t sub_1934D103C(void (*a1)(void *))
{
  v4[9] = *v1;
  sub_19393CAB0();
  a1(v4);
  return sub_19393CB00();
}

uint64_t sub_1934D10B0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  v7[9] = *v4;
  sub_19393CAB0();
  a4(v7);
  return sub_19393CB00();
}

uint64_t sub_1934D1104()
{
  if (*(v0 + 33))
  {
    return sub_19393CAD0();
  }

  v1 = *v0;
  v2 = v0[2];
  v3 = v0[3];
  v4 = *(v0 + 32);
  v5 = *(v0 + 2);
  sub_19393CAD0();
  if (v5)
  {
    sub_19393CAD0();
    if ((v3 & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    sub_19393CAD0();
    if ((v4 & 1) == 0)
    {
      goto LABEL_5;
    }

    return sub_19393CAD0();
  }

  sub_19393CAD0();
  MEMORY[0x193B18060](v1);
  if (v3)
  {
    goto LABEL_7;
  }

LABEL_4:
  sub_19393CAD0();
  MEMORY[0x193B18060](v2);
  if ((v4 & 1) == 0)
  {
LABEL_5:
    sub_19393CAD0();
    return sub_19393CAE0();
  }

  return sub_19393CAD0();
}

uint64_t sub_1934D11C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193B18030](v3);
  if (v3)
  {
    v5 = (a2 + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;

      sub_19393C640();

      v5 += 2;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1934D1240(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193B18030](v3);
  if (v3)
  {
    v5 = (a2 + 56);
    do
    {
      v6 = *(v5 - 3);
      v7 = *(v5 - 2);
      v8 = *(v5 - 1);
      v9 = *v5;

      sub_19393C640();
      sub_19393C640();

      v5 += 4;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1934D12E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193B18030](v3);
  if (v3)
  {
    v8 = (a2 + 40);
    do
    {
      v9 = *(v8 - 1);
      v10 = *v8;
      v8 += 16;
      v11 = GenerativeFunctionsInstrumentationMetadata.SummarizationEvent.SummarizationStyle.rawValue.getter(result, v5, v6, v7);
      result = MEMORY[0x193B18030](v11);
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1934D1358(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193B18030](v3);
  if (v3)
  {
    v5 = (a2 + 96);
    do
    {
      v6 = *(v5 - 8);
      v7 = *(v5 - 7);
      v8 = *(v5 - 6);
      v9 = *(v5 - 5);
      v10 = *(v5 - 4);
      v11 = *(v5 - 24);
      v13 = *(v5 - 2);
      v12 = *(v5 - 8);
      v14 = *(v5 - 1);
      v15 = *v5;
      if (v7)
      {
        sub_19393CAD0();
        sub_19344C630(v6, v7);
        sub_19393C640();
        sub_19393C640();
        if (v11)
        {
          goto LABEL_5;
        }
      }

      else
      {
        sub_19393CAD0();
        if (v11)
        {
LABEL_5:
          sub_19393CAD0();
          if (!v12)
          {
            goto LABEL_9;
          }

          goto LABEL_6;
        }
      }

      sub_19393CAD0();
      MEMORY[0x193B18060](v10);
      if (!v12)
      {
LABEL_9:
        sub_19393CAD0();
        MEMORY[0x193B18060](v13);
        goto LABEL_10;
      }

LABEL_6:
      sub_19393CAD0();
LABEL_10:
      sub_19393CAD0();
      if (!v15)
      {
        sub_19393CAE0();
      }

      result = sub_193442C40(v6, v7);
      v5 += 72;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1934D14B8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193B18030](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      result = MEMORY[0x193B18060](v6);
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1934D1508(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193B18030](v3);
  if (v3)
  {
    v5 = *(sub_19393BE60() - 8);
    v6 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v7 = *(v5 + 72);
    sub_1934C4560(&qword_1EAE3AD68, MEMORY[0x1E69695A8]);
    do
    {
      result = sub_19393C540();
      v6 += v7;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1934D1694(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1934D16DC(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_1934D178C()
{
  result = qword_1EAE3B520;
  if (!qword_1EAE3B520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B520);
  }

  return result;
}

unint64_t sub_1934D187C()
{
  result = qword_1EAE3B530;
  if (!qword_1EAE3B530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B530);
  }

  return result;
}

unint64_t sub_1934D1904()
{
  result = qword_1EAE3B548;
  if (!qword_1EAE3B548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B548);
  }

  return result;
}

unint64_t sub_1934D195C()
{
  result = qword_1EAE3B550;
  if (!qword_1EAE3B550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B550);
  }

  return result;
}

unint64_t sub_1934D19E4()
{
  result = qword_1EAE3B568;
  if (!qword_1EAE3B568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B568);
  }

  return result;
}

unint64_t sub_1934D1A6C()
{
  result = qword_1EAE3B580;
  if (!qword_1EAE3B580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B580);
  }

  return result;
}

unint64_t sub_1934D1AC4()
{
  result = qword_1EAE3B588;
  if (!qword_1EAE3B588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B588);
  }

  return result;
}

unint64_t sub_1934D1B1C()
{
  result = qword_1EAE3B590;
  if (!qword_1EAE3B590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B590);
  }

  return result;
}

unint64_t sub_1934D1B74()
{
  result = qword_1EAE3B598;
  if (!qword_1EAE3B598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B598);
  }

  return result;
}

unint64_t sub_1934D1BFC()
{
  result = qword_1EAE3B5B0;
  if (!qword_1EAE3B5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B5B0);
  }

  return result;
}

unint64_t sub_1934D1C84()
{
  result = qword_1EAE3B5C8;
  if (!qword_1EAE3B5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B5C8);
  }

  return result;
}

unint64_t sub_1934D1CDC()
{
  result = qword_1EAE3B5D0;
  if (!qword_1EAE3B5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B5D0);
  }

  return result;
}

unint64_t sub_1934D1D34()
{
  result = qword_1EAE3B5D8;
  if (!qword_1EAE3B5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B5D8);
  }

  return result;
}

unint64_t sub_1934D1DBC()
{
  result = qword_1EAE3B5F0;
  if (!qword_1EAE3B5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B5F0);
  }

  return result;
}

unint64_t sub_1934D1E44()
{
  result = qword_1EAE3B608;
  if (!qword_1EAE3B608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B608);
  }

  return result;
}

unint64_t sub_1934D1E9C()
{
  result = qword_1EAE3B610;
  if (!qword_1EAE3B610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B610);
  }

  return result;
}

unint64_t sub_1934D1F24()
{
  result = qword_1EAE3B628;
  if (!qword_1EAE3B628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B628);
  }

  return result;
}

unint64_t sub_1934D1FAC()
{
  result = qword_1EAE3B640;
  if (!qword_1EAE3B640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B640);
  }

  return result;
}

unint64_t sub_1934D2034()
{
  result = qword_1EAE3B658;
  if (!qword_1EAE3B658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B658);
  }

  return result;
}

unint64_t sub_1934D208C()
{
  result = qword_1EAE3B660;
  if (!qword_1EAE3B660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B660);
  }

  return result;
}

unint64_t sub_1934D20E4()
{
  result = qword_1EAE3B668;
  if (!qword_1EAE3B668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B668);
  }

  return result;
}

unint64_t sub_1934D216C()
{
  result = qword_1EAE3B680;
  if (!qword_1EAE3B680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B680);
  }

  return result;
}

unint64_t sub_1934D21C4()
{
  result = qword_1EAE3B688;
  if (!qword_1EAE3B688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B688);
  }

  return result;
}

unint64_t sub_1934D224C()
{
  result = qword_1EAE3B6A0;
  if (!qword_1EAE3B6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B6A0);
  }

  return result;
}

unint64_t sub_1934D22A4()
{
  result = qword_1EAE3B6A8;
  if (!qword_1EAE3B6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B6A8);
  }

  return result;
}

unint64_t sub_1934D232C()
{
  result = qword_1EAE3B6C0;
  if (!qword_1EAE3B6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B6C0);
  }

  return result;
}

unint64_t sub_1934D2384()
{
  result = qword_1EAE3B6C8;
  if (!qword_1EAE3B6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B6C8);
  }

  return result;
}

unint64_t sub_1934D23DC()
{
  result = qword_1EAE3B6D0;
  if (!qword_1EAE3B6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B6D0);
  }

  return result;
}

unint64_t sub_1934D2434()
{
  result = qword_1EAE3B6D8;
  if (!qword_1EAE3B6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B6D8);
  }

  return result;
}

unint64_t sub_1934D248C()
{
  result = qword_1EAE3B6E0;
  if (!qword_1EAE3B6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B6E0);
  }

  return result;
}

unint64_t sub_1934D24E4()
{
  result = qword_1EAE3B6E8;
  if (!qword_1EAE3B6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B6E8);
  }

  return result;
}

unint64_t sub_1934D253C()
{
  result = qword_1EAE3B6F0;
  if (!qword_1EAE3B6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B6F0);
  }

  return result;
}

unint64_t sub_1934D25C4()
{
  result = qword_1EAE3B708;
  if (!qword_1EAE3B708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B708);
  }

  return result;
}

unint64_t sub_1934D264C()
{
  result = qword_1EAE3B720;
  if (!qword_1EAE3B720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B720);
  }

  return result;
}

unint64_t sub_1934D26A4()
{
  result = qword_1EAE3B728;
  if (!qword_1EAE3B728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B728);
  }

  return result;
}

unint64_t sub_1934D272C()
{
  result = qword_1EAE3B738;
  if (!qword_1EAE3B738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B738);
  }

  return result;
}

unint64_t sub_1934D2784()
{
  result = qword_1EAE3B740;
  if (!qword_1EAE3B740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B740);
  }

  return result;
}

unint64_t sub_1934D280C()
{
  result = qword_1EAE3B758;
  if (!qword_1EAE3B758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B758);
  }

  return result;
}

unint64_t sub_1934D2864()
{
  result = qword_1EAE3B760;
  if (!qword_1EAE3B760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B760);
  }

  return result;
}

unint64_t sub_1934D28BC()
{
  result = qword_1EAE3B768;
  if (!qword_1EAE3B768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B768);
  }

  return result;
}

unint64_t sub_1934D2914()
{
  result = qword_1EAE3B770;
  if (!qword_1EAE3B770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B770);
  }

  return result;
}

unint64_t sub_1934D299C()
{
  result = qword_1EAE3B788;
  if (!qword_1EAE3B788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B788);
  }

  return result;
}

unint64_t sub_1934D29F4()
{
  result = qword_1EAE3B790;
  if (!qword_1EAE3B790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B790);
  }

  return result;
}

unint64_t sub_1934D2A50()
{
  result = qword_1EAE3B798;
  if (!qword_1EAE3B798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B798);
  }

  return result;
}

unint64_t sub_1934D2AD8()
{
  result = qword_1EAE3B7B0;
  if (!qword_1EAE3B7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B7B0);
  }

  return result;
}

unint64_t sub_1934D2B30()
{
  result = qword_1EAE3B7B8;
  if (!qword_1EAE3B7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B7B8);
  }

  return result;
}

unint64_t sub_1934D2B88()
{
  result = qword_1EAE3B7C0;
  if (!qword_1EAE3B7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B7C0);
  }

  return result;
}

unint64_t sub_1934D2BE0()
{
  result = qword_1EAE3B7C8;
  if (!qword_1EAE3B7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B7C8);
  }

  return result;
}

unint64_t sub_1934D2C38()
{
  result = qword_1EAE3B7D0;
  if (!qword_1EAE3B7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B7D0);
  }

  return result;
}

unint64_t sub_1934D2C90()
{
  result = qword_1EAE3B7D8;
  if (!qword_1EAE3B7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B7D8);
  }

  return result;
}

unint64_t sub_1934D2D18()
{
  result = qword_1EAE3B7F0;
  if (!qword_1EAE3B7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B7F0);
  }

  return result;
}

unint64_t sub_1934D2D70()
{
  result = qword_1EAE3B7F8;
  if (!qword_1EAE3B7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B7F8);
  }

  return result;
}

unint64_t sub_1934D2DF8()
{
  result = qword_1EAE3B810;
  if (!qword_1EAE3B810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B810);
  }

  return result;
}

unint64_t sub_1934D2E50()
{
  result = qword_1EAE3B818;
  if (!qword_1EAE3B818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B818);
  }

  return result;
}

unint64_t sub_1934D2ED8()
{
  result = qword_1EAE3B830;
  if (!qword_1EAE3B830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B830);
  }

  return result;
}

unint64_t sub_1934D2F30()
{
  result = qword_1EAE3B838;
  if (!qword_1EAE3B838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B838);
  }

  return result;
}

unint64_t sub_1934D2FB8()
{
  result = qword_1EAE3B850;
  if (!qword_1EAE3B850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B850);
  }

  return result;
}

unint64_t sub_1934D3010()
{
  result = qword_1EAE3B858;
  if (!qword_1EAE3B858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B858);
  }

  return result;
}

unint64_t sub_1934D3068()
{
  result = qword_1EAE3B860;
  if (!qword_1EAE3B860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B860);
  }

  return result;
}

unint64_t sub_1934D30F0()
{
  result = qword_1EAE3B878;
  if (!qword_1EAE3B878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B878);
  }

  return result;
}

unint64_t sub_1934D3148()
{
  result = qword_1EAE3B880;
  if (!qword_1EAE3B880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B880);
  }

  return result;
}

unint64_t sub_1934D31A0()
{
  result = qword_1EAE3B888;
  if (!qword_1EAE3B888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B888);
  }

  return result;
}

unint64_t sub_1934D31F8()
{
  result = qword_1EAE3B890;
  if (!qword_1EAE3B890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B890);
  }

  return result;
}

uint64_t sub_1934D327C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1934D32D4()
{
  result = qword_1EAE3B8A8;
  if (!qword_1EAE3B8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B8A8);
  }

  return result;
}

unint64_t sub_1934D332C()
{
  result = qword_1EAE3B8B0;
  if (!qword_1EAE3B8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B8B0);
  }

  return result;
}

unint64_t sub_1934D3384()
{
  result = qword_1EAE3B8B8;
  if (!qword_1EAE3B8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B8B8);
  }

  return result;
}

unint64_t sub_1934D33DC()
{
  result = qword_1EAE3B8C0;
  if (!qword_1EAE3B8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B8C0);
  }

  return result;
}

unint64_t sub_1934D3434()
{
  result = qword_1EAE3B8C8;
  if (!qword_1EAE3B8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B8C8);
  }

  return result;
}

unint64_t sub_1934D348C()
{
  result = qword_1EAE3B8D0;
  if (!qword_1EAE3B8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B8D0);
  }

  return result;
}

unint64_t sub_1934D34E4()
{
  result = qword_1EAE3B8D8;
  if (!qword_1EAE3B8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B8D8);
  }

  return result;
}

unint64_t sub_1934D353C()
{
  result = qword_1EAE3B8E0;
  if (!qword_1EAE3B8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B8E0);
  }

  return result;
}

unint64_t sub_1934D3594()
{
  result = qword_1EAE3B8E8;
  if (!qword_1EAE3B8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B8E8);
  }

  return result;
}

unint64_t sub_1934D35EC()
{
  result = qword_1EAE3B8F0;
  if (!qword_1EAE3B8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B8F0);
  }

  return result;
}

unint64_t sub_1934D3644()
{
  result = qword_1EAE3B8F8;
  if (!qword_1EAE3B8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B8F8);
  }

  return result;
}

unint64_t sub_1934D369C()
{
  result = qword_1EAE3B900;
  if (!qword_1EAE3B900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B900);
  }

  return result;
}

unint64_t sub_1934D36F4()
{
  result = qword_1EAE3B908;
  if (!qword_1EAE3B908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B908);
  }

  return result;
}

void sub_1934D374C()
{
  sub_1934D3A60(319, &qword_1ED5082C0, MEMORY[0x1E6969530]);
  if (v0 <= 0x3F)
  {
    sub_19349D198();
    if (v1 <= 0x3F)
    {
      v2 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(319);
      if (v3 <= 0x3F)
      {
        OUTLINED_FUNCTION_6_15(v2, qword_1ED5080D8, &type metadata for GenerativeFunctionsInstrumentationEvent.Subtype);
        if (v4 <= 0x3F)
        {
          v5 = type metadata accessor for MonotonicTimestamp();
          if (v6 <= 0x3F)
          {
            OUTLINED_FUNCTION_6_15(v5, &qword_1ED508068, &type metadata for GenerativeFunctionsInstrumentationMetadata);
            if (v8 <= 0x3F)
            {
              OUTLINED_FUNCTION_6_15(v7, &qword_1ED508140, &type metadata for GenerativeFunctionsInstrumentationError);
              if (v9 <= 0x3F)
              {
                sub_1934D3AB4(319, qword_1ED508078, &type metadata for GenerativeFunctionsInstrumentationEvent.TrialExperimentInfo, MEMORY[0x1E69E62F8]);
                if (v10 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1934D3924(uint64_t a1)
{
  OUTLINED_FUNCTION_6_15(a1, &qword_1ED508290, MEMORY[0x1E69E6158]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_1934D3A60(319, &qword_1ED508298, MEMORY[0x1E69695A8]);
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      OUTLINED_FUNCTION_6_15(v4, &qword_1ED508070, MEMORY[0x1E69E76D8]);
      if (v7 > 0x3F)
      {
        return v6;
      }

      OUTLINED_FUNCTION_6_15(v6, qword_1ED508148, &type metadata for GenerativeFunctionsInstrumentationEvent.CatalogResourceIdentifierAndVersion);
      if (v8 > 0x3F)
      {
        return v6;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v2;
}

void sub_1934D3A60(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1934D3AB4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1934D3B04(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 56))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    v3 = *(a1 + 8);
    OUTLINED_FUNCTION_71();
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v4);
}

uint64_t sub_1934D3B50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_41_0(result, a2);
    }
  }

  return result;
}

uint64_t sub_1934D3BC0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 < 0 && *(a1 + 104))
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

void *sub_1934D3BFC(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 9) = 0u;
    *(result + 11) = 0u;
    *(result + 7) = 0u;
    *(result + 5) = 0u;
    *(result + 3) = 0u;
    *(result + 1) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_2_11(result, (a2 - 1));
    }
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1934D3C8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 < 0 && *(a1 + 89))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *(a1 + 80);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_46_4(v2);
}

uint64_t sub_1934D3CC8(uint64_t result, int a2, int a3)
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
      *(result + 80) = (a2 - 1);
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

uint64_t get_enum_tag_for_layout_string_27IntelligencePlatformLibrary42GenerativeFunctionsInstrumentationMetadataO19PrivateCloudMetricsV24InferenceEnvironmentInfoV05AssetM0VSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t get_enum_tag_for_layout_string_27IntelligencePlatformLibrary42GenerativeFunctionsInstrumentationMetadataO19PrivateCloudMetricsV24InferenceEnvironmentInfoVSg(uint64_t a1)
{
  v1 = *(a1 + 136);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t get_enum_tag_for_layout_string_27IntelligencePlatformLibrary42GenerativeFunctionsInstrumentationMetadataO19PrivateCloudMetricsVSg(uint64_t a1)
{
  v1 = *(a1 + 232);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  v3 = v2 <= 0;
  if (v2 < 0)
  {
    v2 = -1;
  }

  if (v3)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1934D3DB4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 < 0 && *(a1 + 665))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *(a1 + 616);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_46_4(v2);
}

void sub_1934D3DF0(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 248) = 0u;
    v3 = OUTLINED_FUNCTION_30_6(a1, 0);
    *(v3 + 664) = 0;
    *(v3 + 648) = v4;
    OUTLINED_FUNCTION_125_1(v4);
    *(v5 + 504) = v6;
    *(v5 + 488) = v6;
    *(v5 + 472) = v6;
    *(v5 + 456) = v6;
    *(v5 + 440) = v6;
    *(v5 + 424) = v6;
    *(v5 + 408) = v6;
    *(v5 + 392) = v6;
    OUTLINED_FUNCTION_125_1(v6);
    *v7 = v8;
    if (v9 < 0)
    {
      *(v7 + 665) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return;
      }

LABEL_8:
      *(a1 + 616) = (a2 - 1);
      return;
    }

    *(a1 + 665) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_1934D3ED8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 185))
  {
    return OUTLINED_FUNCTION_6_2(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1934D3EF0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    result = OUTLINED_FUNCTION_53_5(result, 0);
    *(result + 184) = 0;
    *result = v3;
    if (!v4)
    {
      return result;
    }

    v5 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v5 = 0;
  }

  *(result + 185) = v5;
  return result;
}

uint64_t get_enum_tag_for_layout_string_27IntelligencePlatformLibrary39GenerativeFunctionsInstrumentationEventV35CatalogResourceIdentifierAndVersionVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1934D3F70(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 65))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    v3 = *(a1 + 8);
    OUTLINED_FUNCTION_71();
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v4);
}

uint64_t sub_1934D3FBC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_41_0(result, a2);
    }
  }

  return result;
}

uint64_t sub_1934D4034(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 74))
  {
    return OUTLINED_FUNCTION_6_2(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1934D404C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
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

  *(result + 74) = v3;
  return result;
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1934D40E0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 42))
  {
    return OUTLINED_FUNCTION_6_2(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1934D40F8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
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

  *(result + 42) = v3;
  return result;
}

uint64_t sub_1934D4160(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 114))
  {
    return OUTLINED_FUNCTION_6_2(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1934D4178(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
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

  *(result + 114) = v3;
  return result;
}

uint64_t sub_1934D41D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 < 0 && *(a1 + 56))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *(a1 + 48);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_46_4(v2);
}

uint64_t sub_1934D4210(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1934D42B4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 322))
  {
    return OUTLINED_FUNCTION_46_4(*a1 + 2147483645);
  }

  v3 = *(a1 + 232);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  v5 = v4 < 0 ? -1 : v4;
  v6 = v5 - 1;
  if (v4 >= 1)
  {
    return OUTLINED_FUNCTION_46_4(v6);
  }

  else
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }
}

uint64_t sub_1934D4310(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 312) = 0;
    *(result + 248) = 0u;
    result = OUTLINED_FUNCTION_30_6(result, 0);
    *(result + 296) = v3;
    *(result + 280) = v3;
    *(result + 264) = v3;
    *(result + 320) = 0;
    *result = v4;
    if (v5 > v6)
    {
      *(result + 322) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 322) = 0;
    }

    if (a2)
    {
      *(result + 232) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1934D43A8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 144))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    v3 = *(a1 + 136);
    OUTLINED_FUNCTION_71();
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v4);
}

uint64_t sub_1934D43F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 136) = 0;
    result = OUTLINED_FUNCTION_53_5(result, 0);
    *result = v3;
    if (v4 >= 0x7FFFFFFF)
    {
      *(result + 144) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 144) = 0;
    }

    if (a2)
    {
      *(result + 136) = a2;
    }
  }

  return result;
}

uint64_t sub_1934D4470(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    v3 = *(a1 + 8);
    OUTLINED_FUNCTION_71();
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v4);
}

uint64_t sub_1934D44BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_41_0(result, a2);
    }
  }

  return result;
}

uint64_t sub_1934D4520(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 81))
  {
    return OUTLINED_FUNCTION_6_2(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1934D4538(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
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

  *(result + 81) = v3;
  return result;
}

uint64_t sub_1934D458C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 < 0 && *(a1 + 106))
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

  return OUTLINED_FUNCTION_46_4(v2);
}

uint64_t sub_1934D45C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 106) = 1;
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

    *(result + 106) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1934D462C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 < 0 && *(a1 + 393))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *(a1 + 112);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_46_4(v2);
}

void sub_1934D4668(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 248) = 0u;
    *(OUTLINED_FUNCTION_30_6(a1, 0) + 392) = 0;
    OUTLINED_FUNCTION_125_1(v3);
    *v4 = v5;
    if (v6 < 0)
    {
      *(v4 + 393) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return;
      }

LABEL_8:
      *(a1 + 112) = (a2 - 1);
      return;
    }

    *(a1 + 393) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_1934D4704(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 281))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    v3 = *(a1 + 64);
    OUTLINED_FUNCTION_71();
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v4);
}

uint64_t sub_1934D4750(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
    result = OUTLINED_FUNCTION_30_6(result, 0);
    *(result + 280) = 0;
    *(result + 264) = v3;
    *result = v4;
    if (v5 >= 0x7FFFFFFF)
    {
      *(result + 281) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 281) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2;
    }
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for GenerativeFunctionsInstrumentationMetadata.AvailabilityStatus(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1934D4838(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 41))
  {
    return OUTLINED_FUNCTION_6_2(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1934D4850(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
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

  *(result + 41) = v3;
  return result;
}

uint64_t sub_1934D48A0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 66))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    v3 = *(a1 + 40);
    OUTLINED_FUNCTION_71();
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v4);
}

uint64_t sub_1934D48EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 66) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 66) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

unint64_t *sub_1934D4974(unint64_t *result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x79)
  {
    *result = a2 - 122;
    if (a3 >= 0x7A)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7A)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_18_7(result);
    }
  }

  return result;
}

uint64_t sub_1934D49CC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 25))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    v3 = *(a1 + 8);
    OUTLINED_FUNCTION_71();
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v4);
}

uint64_t sub_1934D4A1C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_41_0(result, a2);
    }
  }

  return result;
}

uint64_t sub_1934D4A7C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7C && *(a1 + 8))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 123);
    }

    OUTLINED_FUNCTION_149_3(a1);
    if (v3 >= 0x7B)
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

unint64_t *sub_1934D4AC4(unint64_t *result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7B)
  {
    *result = a2 - 124;
    if (a3 >= 0x7C)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7C)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_18_7(result);
    }
  }

  return result;
}

unint64_t *sub_1934D4B88(unint64_t *result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_18_7(result);
    }
  }

  return result;
}

uint64_t sub_1934D4C5C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x79 && *(a1 + 8))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 120);
    }

    OUTLINED_FUNCTION_149_3(a1);
    if (v3 >= 0x78)
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

unint64_t *sub_1934D4CA4(unint64_t *result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x78)
  {
    *result = a2 - 121;
    if (a3 >= 0x79)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x79)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_18_7(result);
    }
  }

  return result;
}

uint64_t sub_1934D4D2C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return OUTLINED_FUNCTION_6_2(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1934D4D44(uint64_t result, int a2, int a3)
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

  *(result + 25) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for GenerativeFunctionsInstrumentationError.SummarizationError.MissingRequiredData(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 10))
  {
    return OUTLINED_FUNCTION_6_2(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1934D4E14(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7D && *(a1 + 8))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 124);
    }

    v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
    if (v3 >= 0x7C)
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

unint64_t *sub_1934D4E64(unint64_t *result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_18_7(result);
    }
  }

  return result;
}

_BYTE *_s27IntelligencePlatformLibrary39GenerativeFunctionsInstrumentationErrorO18SummarizationErrorO12UnknownErrorVwst_0(_BYTE *result, int a2, int a3)
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

uint64_t sub_1934D4F90(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    v3 = *(a1 + 8);
    OUTLINED_FUNCTION_71();
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v4);
}

uint64_t sub_1934D4FDC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_41_0(result, a2);
    }
  }

  return result;
}

void OUTLINED_FUNCTION_54_4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v0[2];
  v4 = *(v0 + 24);
}

uint64_t OUTLINED_FUNCTION_58_5(uint64_t result, char a2)
{
  *(v2 + 176) = result;
  *(v2 + 184) = a2 & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_59_8(uint64_t result, char a2)
{
  *(v2 + 160) = result;
  *(v2 + 168) = a2 & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_60_6(uint64_t result, char a2)
{
  *(v2 + 144) = result;
  *(v2 + 152) = a2 & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_62_9(uint64_t result, char a2)
{
  *(v2 + 96) = result;
  *(v2 + 104) = a2 & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_63_4(uint64_t result, char a2)
{
  *(v2 + 80) = result;
  *(v2 + 88) = a2 & 1;
  return result;
}

void OUTLINED_FUNCTION_65_6(uint64_t a1@<X8>)
{
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 10) = v3;
}

uint64_t OUTLINED_FUNCTION_86_4()
{
  result = *(v0 + 144);
  v2 = *(v0 + 152);
  return result;
}

uint64_t OUTLINED_FUNCTION_113_2()
{

  return sub_1934486A4();
}

uint64_t OUTLINED_FUNCTION_121_2(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

void OUTLINED_FUNCTION_125_1(__n128 a1)
{
  *(v1 + 120) = a1;
  *(v1 + 104) = a1;
  *(v1 + 88) = a1;
  *(v1 + 72) = a1;
  *(v1 + 56) = a1;
  *(v1 + 40) = a1;
  *(v1 + 24) = a1;
  *(v1 + 8) = a1;
}

uint64_t OUTLINED_FUNCTION_127_2(uint64_t result, char a2)
{
  *(v2 + 56) = result;
  *(v2 + 64) = a2 & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_128_1(uint64_t result, char a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2 & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_130_1(uint64_t result, char a2)
{
  *(v2 + 272) = result;
  *(v2 + 280) = a2 & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_133_3(uint64_t result, char a2)
{
  *(v2 + 240) = result;
  *(v2 + 248) = a2 & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_138_1(uint64_t result, char a2)
{
  *(v2 + 192) = result;
  *(v2 + 200) = a2 & 1;
  return result;
}

void *OUTLINED_FUNCTION_139_3(void *a1)
{

  return memcpy(a1, (v1 + 96), 0x90uLL);
}

uint64_t OUTLINED_FUNCTION_150_2()
{
  result = *(v0 + 72);
  v2 = *(v0 + 80);
  return result;
}

uint64_t OUTLINED_FUNCTION_151_2()
{
  result = *(v0 + 56);
  v2 = *(v0 + 64);
  return result;
}

uint64_t OUTLINED_FUNCTION_152_2()
{
  result = *(v0 + 40);
  v2 = *(v0 + 48);
  return result;
}

uint64_t OUTLINED_FUNCTION_153_2()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_156_1()
{
  result = *(v0 + 272);
  v2 = *(v0 + 280);
  return result;
}

uint64_t OUTLINED_FUNCTION_157_1()
{
  result = *(v0 + 256);
  v2 = *(v0 + 264);
  return result;
}

uint64_t OUTLINED_FUNCTION_158_1()
{
  result = *(v0 + 240);
  v2 = *(v0 + 248);
  return result;
}

uint64_t OUTLINED_FUNCTION_159_3()
{
  result = *(v0 + 224);
  v2 = *(v0 + 232);
  return result;
}

uint64_t OUTLINED_FUNCTION_161_1()
{
  result = *(v0 + 192);
  v2 = *(v0 + 200);
  return result;
}

void *OUTLINED_FUNCTION_167_0(void *a1)
{

  return memcpy(a1, (v1 + 96), 0x90uLL);
}

void *OUTLINED_FUNCTION_168_1(void *a1)
{

  return memcpy(a1, &STACK[0x890], 0x142uLL);
}

uint64_t *OUTLINED_FUNCTION_178_0(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = *(result + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  return result;
}

uint64_t sub_1934D558C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v37 - v9;
  v11 = sub_19393BE60();
  v37 = *(v11 - 8);
  v12 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1 == 0x496E6F6973736573 && a2 == 0xE900000000000064;
  if (v15 || (OUTLINED_FUNCTION_0_18() & 1) != 0)
  {
    return sub_1934948FC();
  }

  v16 = a1 == 0x64496E617073 && a2 == 0xE600000000000000;
  if (v16 || (OUTLINED_FUNCTION_0_18() & 1) != 0)
  {
    result = type metadata accessor for IntelligenceFlowIdentifiers();
    v18 = v3 + *(result + 20);
    if (*(v18 + 8))
    {
LABEL_13:
      *a3 = 0u;
      a3[1] = 0u;
      return result;
    }

    v38 = *v18;
    return sub_1934948FC();
  }

  v20 = a1 == (OUTLINED_FUNCTION_1_22() & 0xFFFFFFFFFFFFLL | 0x6552000000000000) && a2 == v19;
  if (v20 || (OUTLINED_FUNCTION_0_18() & 1) != 0)
  {
    v21 = *(type metadata accessor for IntelligenceFlowIdentifiers() + 24);
LABEL_22:
    v22 = (v3 + v21);
    v24 = *v22;
    v23 = v22[1];
    v38 = v24;
    v39 = v23;
    return sub_1934948FC();
  }

  v26 = a1 == (OUTLINED_FUNCTION_1_22() & 0xFFFFFFFFFFFFLL | 0x6553000000000000) && a2 == v25;
  if (v26 || (OUTLINED_FUNCTION_0_18() & 1) != 0)
  {
    v21 = *(type metadata accessor for IntelligenceFlowIdentifiers() + 28);
    goto LABEL_22;
  }

  v27 = a1 == 0xD000000000000013 && 0x8000000193A178E0 == a2;
  if (v27 || (OUTLINED_FUNCTION_0_18() & 1) != 0)
  {
    v21 = *(type metadata accessor for IntelligenceFlowIdentifiers() + 32);
    goto LABEL_22;
  }

  v28 = a1 == 0xD000000000000015 && 0x8000000193A17900 == a2;
  if (v28 || (OUTLINED_FUNCTION_0_18() & 1) != 0)
  {
    result = type metadata accessor for IntelligenceFlowIdentifiers();
    v29 = (v3 + *(result + 36));
    v30 = v29[1];
    if (!v30)
    {
      goto LABEL_13;
    }

    v38 = *v29;
    v39 = v30;
    return sub_1934948FC();
  }

  v31 = a1 == 0x4574736575716572 && a2 == 0xEE006449746E6576;
  if (v31 || (OUTLINED_FUNCTION_0_18() & 1) != 0)
  {
    v32 = type metadata accessor for IntelligenceFlowIdentifiers();
    sub_193458F7C(v3 + *(v32 + 40), v10);
    if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
    {
      result = sub_193458FEC(v10);
      *a3 = 0u;
      a3[1] = 0u;
    }

    else
    {
      v33 = v37;
      (*(v37 + 32))(v14, v10, v11);
      sub_1934948FC();
      return (*(v33 + 8))(v14, v11);
    }
  }

  else
  {
    sub_19349AB64();
    swift_allocError();
    v35 = v34;
    *v34 = a1;
    v34[1] = a2;
    v34[5] = type metadata accessor for IntelligenceFlowIdentifiers();
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v35 + 2);
    sub_1934D59B0(v3, boxed_opaque_existential_1Tm);
    *(v35 + 48) = 1;
    swift_willThrow();
  }

  return result;
}

uint64_t sub_1934D59B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntelligenceFlowIdentifiers();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1934D5A2C()
{
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEA8F60);
  __swift_project_value_buffer(v0, qword_1EAEA8F60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_193952700;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "sessionId";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  v9 = *(*(v8 - 8) + 104);
  v9(v6, v7, v8);
  v10 = OUTLINED_FUNCTION_3_1(v5 + v2);
  *v11 = 2;
  *v10 = "spanId";
  v10[1] = 6;
  v12 = OUTLINED_FUNCTION_1_3(v10);
  (v9)(v12);
  v13 = OUTLINED_FUNCTION_3_1(v5 + 2 * v2);
  *v14 = 3;
  *v13 = "clientRequestId";
  v13[1] = 15;
  v15 = OUTLINED_FUNCTION_1_3(v13);
  (v9)(v15);
  v16 = OUTLINED_FUNCTION_3_1(v5 + 3 * v2);
  *v17 = 4;
  *v16 = "clientSessionId";
  v16[1] = 15;
  v18 = OUTLINED_FUNCTION_1_3(v16);
  (v9)(v18);
  v19 = OUTLINED_FUNCTION_3_1(v5 + 4 * v2);
  *v20 = 5;
  *v19 = "clientApplicationId";
  v19[1] = 19;
  v21 = OUTLINED_FUNCTION_1_3(v19);
  (v9)(v21);
  v22 = OUTLINED_FUNCTION_3_1(v5 + 5 * v2);
  *v23 = 6;
  *v22 = "clientGroupIdentifier";
  v22[1] = 21;
  v24 = OUTLINED_FUNCTION_1_3(v22);
  (v9)(v24);
  v25 = OUTLINED_FUNCTION_3_1(v5 + 6 * v2);
  *v26 = 7;
  *v25 = "requestEventId";
  *(v25 + 8) = 14;
  *(v25 + 16) = 2;
  (v9)();
  return sub_19393C410();
}

void sub_1934D5CE8()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v3 = sub_19393BE60();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v37 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v36 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v40 = &v36 - v19;
  v41 = v18;
  v36 = "etion8";
  v38 = (v6 + 40);
  v39 = (v6 + 32);
  v44 = v11;
  while (2)
  {
    v20 = sub_19393C0E0();
    if (v2 || (v21 & 1) != 0)
    {
      OUTLINED_FUNCTION_27();
      return;
    }

    switch(v20)
    {
      case 1:
        v6 = v40;
        __swift_storeEnumTagSinglePayload(v40, 1, 1, v3);
        sub_193497890(v6);
        sub_193458F7C(v6, v18);
        OUTLINED_FUNCTION_9_14(v18);
        if (!v22)
        {
          sub_193458FEC(v6);
          (*v39)(v11, v18, v3);
          goto LABEL_28;
        }

        v6 = v37;
        OUTLINED_FUNCTION_7_11();
        OUTLINED_FUNCTION_9_14(v6);
        if (!v22)
        {
          sub_193458FEC(v40);
          (*v39)(v11, v6, v3);
          OUTLINED_FUNCTION_9_14(v18);
          if (!v22)
          {
            sub_193458FEC(v18);
          }

LABEL_28:
          (*v38)(v0, v11, v3);
          continue;
        }

        __break(1u);
        return;
      case 2:
        v33 = *(type metadata accessor for IntelligenceFlowIdentifiers() + 20);
        OUTLINED_FUNCTION_113();
        sub_19393C230();
        goto LABEL_27;
      case 3:
        v42 = 0;
        v43 = 0;
        OUTLINED_FUNCTION_113();
        sub_19393C200();
        v2 = 0;
        v26 = OUTLINED_FUNCTION_8_19(v43);
        if (v22)
        {
          v27 = 0xE000000000000000;
        }

        else
        {
          v27 = v26;
        }

        v28 = (v0 + *(type metadata accessor for IntelligenceFlowIdentifiers() + 24));
        v29 = v28[1];

        *v28 = v6;
        v28[1] = v27;
        goto LABEL_23;
      case 4:
        v42 = 0;
        v43 = 0;
        OUTLINED_FUNCTION_113();
        sub_19393C200();
        v2 = 0;
        v30 = OUTLINED_FUNCTION_8_19(v43);
        if (v22)
        {
          v24 = 0xE000000000000000;
        }

        else
        {
          v24 = v30;
        }

        v25 = *(type metadata accessor for IntelligenceFlowIdentifiers() + 28);
        goto LABEL_22;
      case 5:
        v42 = 0;
        v43 = 0;
        OUTLINED_FUNCTION_113();
        sub_19393C200();
        v2 = 0;
        v23 = OUTLINED_FUNCTION_8_19(v43);
        if (v22)
        {
          v24 = 0xE000000000000000;
        }

        else
        {
          v24 = v23;
        }

        v25 = *(type metadata accessor for IntelligenceFlowIdentifiers() + 32);
LABEL_22:
        v31 = (v0 + v25);
        v32 = *(v0 + v25 + 8);

        *v31 = v6;
        v31[1] = v24;
LABEL_23:
        v18 = v41;
        v11 = v44;
        continue;
      case 6:
        v34 = *(type metadata accessor for IntelligenceFlowIdentifiers() + 36);
        OUTLINED_FUNCTION_113();
        sub_19393C200();
        goto LABEL_27;
      case 7:
        v35 = type metadata accessor for IntelligenceFlowIdentifiers();
        sub_193497890(v0 + *(v35 + 40));
LABEL_27:
        v2 = 0;
        continue;
      default:
        continue;
    }
  }
}

uint64_t sub_1934D60CC()
{
  OUTLINED_FUNCTION_12();
  v0 = qword_1EAE3B910;

  return v0;
}

uint64_t sub_1934D6110@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EAE4F470 != -1)
  {
    OUTLINED_FUNCTION_0_19();
  }

  v2 = sub_19393C420();
  __swift_project_value_buffer(v2, qword_1EAEA8F60);
  OUTLINED_FUNCTION_5_6();
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t IntelligenceFlowIdentifiers.spanId.modify()
{
  OUTLINED_FUNCTION_3_4();
  v0 = *(type metadata accessor for IntelligenceFlowIdentifiers() + 20);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowIdentifiers.clientRequestId.getter()
{
  v0 = type metadata accessor for IntelligenceFlowIdentifiers();
  OUTLINED_FUNCTION_4_4(*(v0 + 24));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t IntelligenceFlowIdentifiers.clientRequestId.modify()
{
  OUTLINED_FUNCTION_3_4();
  v0 = *(type metadata accessor for IntelligenceFlowIdentifiers() + 24);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowIdentifiers.clientSessionId.getter()
{
  v0 = type metadata accessor for IntelligenceFlowIdentifiers();
  OUTLINED_FUNCTION_4_4(*(v0 + 28));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t IntelligenceFlowIdentifiers.clientSessionId.modify()
{
  OUTLINED_FUNCTION_3_4();
  v0 = *(type metadata accessor for IntelligenceFlowIdentifiers() + 28);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowIdentifiers.clientApplicationId.getter()
{
  v0 = type metadata accessor for IntelligenceFlowIdentifiers();
  OUTLINED_FUNCTION_4_4(*(v0 + 32));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t IntelligenceFlowIdentifiers.clientApplicationId.modify()
{
  OUTLINED_FUNCTION_3_4();
  v0 = *(type metadata accessor for IntelligenceFlowIdentifiers() + 32);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowIdentifiers.clientGroupIdentifier.getter()
{
  v0 = type metadata accessor for IntelligenceFlowIdentifiers();
  OUTLINED_FUNCTION_4_4(*(v0 + 36));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t IntelligenceFlowIdentifiers.clientGroupIdentifier.modify()
{
  OUTLINED_FUNCTION_3_4();
  v0 = *(type metadata accessor for IntelligenceFlowIdentifiers() + 36);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowIdentifiers.requestEventId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for IntelligenceFlowIdentifiers() + 40);

  return sub_193458F7C(v3, a1);
}

uint64_t IntelligenceFlowIdentifiers.requestEventId.modify()
{
  OUTLINED_FUNCTION_3_4();
  v0 = *(type metadata accessor for IntelligenceFlowIdentifiers() + 40);
  return OUTLINED_FUNCTION_1_4();
}

BOOL static IntelligenceFlowIdentifiers.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_19393BE60();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0) - 8) + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v53 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B4E8, &unk_193952CF0);
  OUTLINED_FUNCTION_4_1(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v53 - v20;
  if ((sub_19393BE40() & 1) == 0)
  {
    return 0;
  }

  v22 = type metadata accessor for IntelligenceFlowIdentifiers();
  v23 = v22;
  v24 = *(v22 + 20);
  v25 = (a1 + v24);
  v26 = *(a1 + v24 + 8);
  v27 = (a2 + v24);
  v28 = *(a2 + v24 + 8);
  if (v26)
  {
    if (!v28)
    {
      return 0;
    }
  }

  else
  {
    if (*v25 != *v27)
    {
      LOBYTE(v28) = 1;
    }

    if (v28)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_0_20(*(v22 + 24));
  v31 = v31 && v29 == v30;
  if (!v31 && (sub_19393CA30() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_0_20(v23[7]);
  v34 = v31 && v32 == v33;
  if (!v34 && (sub_19393CA30() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_0_20(v23[8]);
  v37 = v31 && v35 == v36;
  if (!v37 && (sub_19393CA30() & 1) == 0)
  {
    return 0;
  }

  v38 = v23[9];
  v39 = (a1 + v38);
  v40 = *(a1 + v38 + 8);
  v41 = (a2 + v38);
  v42 = v41[1];
  if (v40)
  {
    if (!v42)
    {
      return 0;
    }

    v43 = *v39 == *v41 && v40 == v42;
    if (!v43 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v42)
  {
    return 0;
  }

  v44 = v23[10];
  v45 = *(v16 + 48);
  sub_193458F7C(a1 + v44, v21);
  sub_193458F7C(a2 + v44, &v21[v45]);
  OUTLINED_FUNCTION_31(v21);
  if (v31)
  {
    OUTLINED_FUNCTION_31(&v21[v45]);
    if (v31)
    {
      sub_19344E6DC(v21, &qword_1EAE3AA88, &qword_19394F9C0);
      return 1;
    }

    goto LABEL_40;
  }

  sub_193458F7C(v21, v15);
  OUTLINED_FUNCTION_31(&v21[v45]);
  if (v46)
  {
    (*(v7 + 8))(v15, v4);
LABEL_40:
    sub_19344E6DC(v21, &qword_1EAE3B4E8, &unk_193952CF0);
    return 0;
  }

  (*(v7 + 32))(v11, &v21[v45], v4);
  OUTLINED_FUNCTION_1_23();
  sub_1934D6B28(v48, v49);
  v50 = sub_19393C550();
  v51 = *(v7 + 8);
  v52 = OUTLINED_FUNCTION_13_0();
  v51(v52);
  (v51)(v15, v4);
  sub_19344E6DC(v21, &qword_1EAE3AA88, &qword_19394F9C0);
  return (v50 & 1) != 0;
}

uint64_t IntelligenceFlowIdentifiers.hash(into:)()
{
  OUTLINED_FUNCTION_3_4();
  v1 = sub_19393BE60();
  v2 = OUTLINED_FUNCTION_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0) - 8) + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - v11;
  OUTLINED_FUNCTION_1_23();
  sub_1934D6B28(v13, v14);
  sub_19393C540();
  v15 = type metadata accessor for IntelligenceFlowIdentifiers();
  v16 = (v0 + v15[5]);
  if (*(v16 + 8) == 1)
  {
    sub_19393CAD0();
  }

  else
  {
    v17 = *v16;
    sub_19393CAD0();
    MEMORY[0x193B18060](v17);
  }

  OUTLINED_FUNCTION_9_27(v15[6]);
  OUTLINED_FUNCTION_9_27(v15[7]);
  OUTLINED_FUNCTION_9_27(v15[8]);
  v18 = (v0 + v15[9]);
  if (v18[1])
  {
    v23 = v12;
    v19 = v4;
    v20 = *v18;
    sub_19393CAD0();
    v4 = v19;
    v12 = v23;
    sub_19393C640();
  }

  else
  {
    sub_19393CAD0();
  }

  sub_193458F7C(v0 + v15[10], v12);
  if (__swift_getEnumTagSinglePayload(v12, 1, v1) == 1)
  {
    return sub_19393CAD0();
  }

  (*(v4 + 32))(v8, v12, v1);
  sub_19393CAD0();
  sub_19393C540();
  return (*(v4 + 8))(v8, v1);
}

uint64_t IntelligenceFlowIdentifiers.hashValue.getter()
{
  sub_19393CAB0();
  IntelligenceFlowIdentifiers.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1934D6AA4()
{
  sub_19393CAB0();
  IntelligenceFlowIdentifiers.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1934D6B28(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1934D6B74()
{
  sub_19393BE60();
  if (v0 <= 0x3F)
  {
    sub_19349D1FC(319, &qword_1ED508070);
    if (v1 <= 0x3F)
    {
      sub_19349D1FC(319, &qword_1ED508290);
      if (v2 <= 0x3F)
      {
        sub_1934D6C4C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1934D6C4C()
{
  if (!qword_1ED508298)
  {
    sub_19393BE60();
    v0 = sub_19393C860();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED508298);
    }
  }
}

_BYTE *_s4SageOwst(_BYTE *result, int a2, int a3)
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

uint64_t sub_1934D6D54()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED510058);
  v5 = __swift_project_value_buffer(v4, qword_1ED510058);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v3, 1, v4);
  if (result != 1)
  {
    return (*(*(v4 - 8) + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

id static Library.Streams.Sage.Transcript.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:604800.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_3 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED510058);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B928, &qword_193957A88);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = sub_19393C6C0();
    BYTE2(v12) = 1;
    LOWORD(v12) = 1;
    v11 = [v5 _libraryStreamConfigurationWithUUID_streamIdentifier_eventClass_storeConfig_syncPolicy_legacyNames_internalMetadata_enableSubscriptions_enableSubscriptionSubstream_enableTombstoneSubstream_allowedClients_pruningTriggers_spaceAttributionOwner_];

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t static Library.Streams.Sage.Transcript.attribute(_:)(void (*a1)(void))
{
  result = sub_1934D7164(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1934D71AC(void (*a1)(void))
{
  result = sub_1934D7164(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1934D71DC(uint64_t a1)
{
  result = sub_1934D7204();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1934D7204()
{
  result = qword_1ED506E48;
  if (!qword_1ED506E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED506E48);
  }

  return result;
}

_BYTE *_s10TranscriptOwst(_BYTE *result, int a2, int a3)
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

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SageTranscript.json()()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v28 = sub_19393C090();
  v2 = OUTLINED_FUNCTION_0(v28);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v9 = v8 - v7;
  v10 = type metadata accessor for SageTranscript();
  v11 = OUTLINED_FUNCTION_4_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B930, &qword_193957B00);
  OUTLINED_FUNCTION_4_1(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v27 - v21;
  sub_1934D74E0(v1, v16);
  sub_1934470C8(v16, v10, v22);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v23, &qword_1EAE3B930, &qword_193957B00);
  sub_19393C250();
  (*(v4 + 8))(v9, v28);
  sub_19344E6DC(v22, &qword_1EAE3B930, &qword_193957B00);
  OUTLINED_FUNCTION_27();
  result._object = v25;
  result._countAndFlagsBits = v24;
  return result;
}

uint64_t sub_1934D74E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SageTranscript();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void static SageTranscript.event(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
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
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B930, &qword_193957B00);
  OUTLINED_FUNCTION_4_1(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &a9 - v33;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v35, &qword_1EAE3B930, &qword_193957B00);
  sub_19393C260();
  if (!v20)
  {
    OUTLINED_FUNCTION_9_28();
    sub_1934D8A74(v34, v24, v36);
  }

  OUTLINED_FUNCTION_27();
}

void static SageTranscript.event(from:dataVersion:writeTimestamp:bookmark:)()
{
  OUTLINED_FUNCTION_26();
  v40 = v3;
  v41 = v2;
  v39 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B930, &qword_193957B00);
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
  v26 = &v38 - v25;
  if (*sub_1934DC140() == v6)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v44 = 0;
    v42 = 0u;
    v43 = 0u;
    (*(v18 + 16))(v23, v26, v15);
    sub_193450688(v10, v8);
    OUTLINED_FUNCTION_0_8();
    sub_19344A3FC(v27, v28, v29);
    sub_19393C280();
    (*(v18 + 8))(v26, v15);
    if (!v0)
    {
      OUTLINED_FUNCTION_9_28();
      v31 = v40;
      sub_1934D8A74(v1, v40, v32);
      v33 = type metadata accessor for SageTranscript();
      v34 = *(v33 + 20);
      sub_19344E6DC(v31 + v34, &qword_1EAE3A9E8, &qword_19394F800);
      v35 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1(v35);
      (*(v36 + 16))(v31 + v34, v39, v35);
      __swift_storeEnumTagSinglePayload(v31 + v34, 0, 1, v35);
      v37 = *(v33 + 24);
      sub_19344E6DC(v31 + v37, &qword_1EAE3AA00, &unk_19394F8F0);
      sub_1934970B0(v41, v31 + v37);
    }
  }

  else
  {
    sub_19349AB64();
    swift_allocError();
    *v30 = v6;
    *(v30 + 48) = 0;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_27();
}

uint64_t SageTranscript.serialize()()
{
  v2 = type metadata accessor for SageTranscript();
  v3 = OUTLINED_FUNCTION_4_1(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_25_1();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B930, &qword_193957B00);
  OUTLINED_FUNCTION_4_1(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  sub_1934D74E0(v0, v1);
  sub_1934470C8(v1, v2, v11);
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v12, &qword_1EAE3B930, &qword_193957B00);
  v13 = sub_19393C290();
  sub_19344E6DC(v11, &qword_1EAE3B930, &qword_193957B00);
  return v13;
}

id static SageTranscript.columns.getter()
{
  v185 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  *(swift_initStackObject() + 16) = xmmword_193950B10;
  v1 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v1, v2, v3, v4, v5, v6, v7, v8, v9);
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  *(v0 + 32) = sub_19393C850();
  v10 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_23_15();
  OUTLINED_FUNCTION_12_10();
  result = sub_19343D150(v11, v12, v13, v14, v15, 0, 1);
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_7_2(result);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(inited, v18, v19, v20, v21, v22, v23, v24, v25);
  v26 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v26, v27, v28, v29, v30, v31, v32, v33, v34);
  v35 = sub_19393C850();
  OUTLINED_FUNCTION_22_13(v35);
  OUTLINED_FUNCTION_23_15();
  OUTLINED_FUNCTION_12_10();
  result = sub_19343D150(v36, v37, v38, v39, v40, 0, 0);
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_7_2(result);
  v41 = swift_initStackObject();
  v49 = OUTLINED_FUNCTION_2_4(v41, v42, v43, v44, v45, v46, v47, v48, xmmword_193950B10);
  OUTLINED_FUNCTION_5_10(v49, v50, v51, v52, v53, v54, v55, v56, v57);
  v58 = sub_19393C850();
  OUTLINED_FUNCTION_22_13(v58);
  v59 = OUTLINED_FUNCTION_27_10();
  result = OUTLINED_FUNCTION_10_11(v59, 0xEA00000000004449);
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_7_2(result);
  v60 = swift_initStackObject();
  v68 = OUTLINED_FUNCTION_2_4(v60, v61, v62, v63, v64, v65, v66, v67, v180);
  OUTLINED_FUNCTION_5_10(v68, v69, v70, v71, v72, v73, v74, v75, v76);
  v77 = sub_19393C850();
  OUTLINED_FUNCTION_22_13(v77);
  OUTLINED_FUNCTION_26_7();
  OUTLINED_FUNCTION_24_10();
  result = OUTLINED_FUNCTION_10_11(v78, v79);
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_7_2(result);
  v80 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v80, v81, v82, v83, v84, v85, v86, v87, v88);
  v89 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v89, v90, v91, v92, v93, v94, v95, v96, v97);
  v98 = sub_19393C850();
  OUTLINED_FUNCTION_22_13(v98);
  result = OUTLINED_FUNCTION_10_11(0xD000000000000010, 0x8000000193A179F0);
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_7_2(result);
  v99 = swift_initStackObject();
  v107 = OUTLINED_FUNCTION_2_4(v99, v100, v101, v102, v103, v104, v105, v106, v181);
  OUTLINED_FUNCTION_5_10(v107, v108, v109, v110, v111, v112, v113, v114, v115);
  v116 = sub_19393C850();
  OUTLINED_FUNCTION_22_13(v116);
  OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_12_10();
  result = sub_19343D150(v117, v118, v119, v120, v121, 13, 0);
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_7_2(result);
  v122 = swift_initStackObject();
  v130 = OUTLINED_FUNCTION_2_4(v122, v123, v124, v125, v126, v127, v128, v129, v182);
  OUTLINED_FUNCTION_5_10(v130, v131, v132, v133, v134, v135, v136, v137, v138);
  v139 = sub_19393C850();
  OUTLINED_FUNCTION_22_13(v139);
  OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_12_10();
  result = sub_19343D150(v140, v141, v142, v143, v144, 13, 0);
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_7_2(result);
  v145 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v145, v146, v147, v148, v149, v150, v151, v152, v153);
  v154 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v154, v155, v156, v157, v158, v159, v160, v161, v162);
  v163 = sub_19393C850();
  OUTLINED_FUNCTION_22_13(v163);
  OUTLINED_FUNCTION_12_10();
  result = sub_19343D150(v164, v165, v166, v167, v168, 4, 0);
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_7_2(result);
  v169 = swift_initStackObject();
  v177 = OUTLINED_FUNCTION_2_4(v169, v170, v171, v172, v173, v174, v175, v176, v183);
  *(v177 + 16) = v184;
  *(v177 + 32) = sub_19393C850();
  v178 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  v179 = OUTLINED_FUNCTION_16_5();
  result = sub_19343D150(v179 | 0x7961507400000000, 0xEC00000064616F6CLL, 4, 0, v177, 14, 0);
  if (result)
  {
    OUTLINED_FUNCTION_7_2(result);
    return v185;
  }

LABEL_19:
  __break(1u);
  return result;
}

void sub_1934D7EB8()
{
  OUTLINED_FUNCTION_26();
  v176 = v0;
  v177 = v2;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B948, &qword_193957C10);
  OUTLINED_FUNCTION_47(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  v163 = &v159 - v11;
  v162 = type metadata accessor for IntelligenceFlowIdentifiers();
  v12 = OUTLINED_FUNCTION_4_1(v162);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5_1();
  v160 = v16 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B498, &unk_193959120);
  OUTLINED_FUNCTION_47(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v20);
  v166 = &v159 - v21;
  v164 = type metadata accessor for MonotonicTimestamp();
  v22 = OUTLINED_FUNCTION_4_1(v164);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5_1();
  v161 = v26 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B940, &unk_193957C00);
  OUTLINED_FUNCTION_47(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v30);
  v168 = &v159 - v31;
  v167 = type metadata accessor for SageMetadata();
  v32 = OUTLINED_FUNCTION_4_1(v167);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_5_1();
  v165 = v36 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v38 = OUTLINED_FUNCTION_47(v37);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_6();
  v170 = v41 - v42;
  v44 = MEMORY[0x1EEE9AC00](v43);
  v171 = &v159 - v45;
  MEMORY[0x1EEE9AC00](v44);
  v47 = &v159 - v46;
  v48 = sub_19393BE60();
  v49 = OUTLINED_FUNCTION_0(v48);
  v172 = v50;
  v173 = v49;
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_6();
  v169 = v53 - v54;
  v56 = MEMORY[0x1EEE9AC00](v55);
  v58 = &v159 - v57;
  MEMORY[0x1EEE9AC00](v56);
  v60 = &v159 - v59;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_47(v61);
  v63 = *(v62 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_25_1();
  v65 = sub_19393BE00();
  v66 = OUTLINED_FUNCTION_0(v65);
  v68 = v67;
  v70 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_5_1();
  v73 = v72 - v71;
  OUTLINED_FUNCTION_38();
  v174 = v6;
  v175 = v4;
  v75 = v6 == 0xD000000000000011 && v74 == v4;
  if (v75 || (OUTLINED_FUNCTION_18_13() & 1) != 0)
  {
    v76 = type metadata accessor for SageTranscript();
    v77 = OUTLINED_FUNCTION_15_19(*(v76 + 28));
    sub_1934486F8(v77, v1, v78, v79);
    if (__swift_getEnumTagSinglePayload(v1, 1, v65) != 1)
    {
      (*(v68 + 32))(v73, v1, v65);
      sub_1934948FC();
      (*(v68 + 8))(v73, v65);
      goto LABEL_19;
    }

    v80 = &qword_1EAE3A9E8;
    v81 = &qword_19394F800;
    v82 = v1;
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_38();
  v85 = v174 == 0xD000000000000011 && v84 == v175;
  if (v85 || (OUTLINED_FUNCTION_18_13() & 1) != 0)
  {
    v86 = (v176 + *(type metadata accessor for SageTranscript() + 32));
    if (v86[1])
    {
      goto LABEL_9;
    }

    v178 = *v86;
LABEL_18:
    sub_1934948FC();
    goto LABEL_19;
  }

  v88 = v174 == OUTLINED_FUNCTION_27_10() && v175 == v87;
  if (v88 || (OUTLINED_FUNCTION_18_13() & 1) != 0)
  {
    v89 = type metadata accessor for SageTranscript();
    v90 = OUTLINED_FUNCTION_15_19(*(v89 + 36));
    sub_1934486F8(v90, v47, v91, v92);
    OUTLINED_FUNCTION_20_7(v47);
    if (!v75)
    {
      v93 = v172;
      (*(v172 + 32))(v60, v47, v4);
      sub_1934948FC();
      (*(v93 + 8))(v60, v4);
      goto LABEL_19;
    }

    v80 = &qword_1EAE3AA88;
    v81 = &qword_19394F9C0;
    v82 = v47;
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_24_10();
  OUTLINED_FUNCTION_26_7();
  OUTLINED_FUNCTION_14_16();
  v96 = v75 && v95 == v94;
  if (v96 || (OUTLINED_FUNCTION_18_13() & 1) != 0)
  {
    v97 = type metadata accessor for SageTranscript();
    v98 = OUTLINED_FUNCTION_15_19(*(v97 + 40));
    v99 = v171;
    sub_1934486F8(v98, v171, v100, v101);
    OUTLINED_FUNCTION_20_7(v99);
    if (!v75)
    {
      v102 = v172;
      (*(v172 + 32))(v58, v99, v4);
      sub_1934948FC();
      (*(v102 + 8))(v58, v4);
      goto LABEL_19;
    }
  }

  else
  {
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_14_16();
    v105 = v75 && v103 == v104;
    if (!v105 && (OUTLINED_FUNCTION_18_13() & 1) == 0)
    {
      v113 = v174 == (OUTLINED_FUNCTION_16_5() | 0x62614C7400000000) && v175 == v112;
      if (v113 || (OUTLINED_FUNCTION_18_13() & 1) != 0)
      {
        v114 = *(type metadata accessor for SageTranscript() + 48);
      }

      else
      {
        v118 = v174 == (OUTLINED_FUNCTION_16_5() | 0x7079547400000000) && v175 == v117;
        if (!v118 && (OUTLINED_FUNCTION_18_13() & 1) == 0)
        {
          OUTLINED_FUNCTION_38();
          OUTLINED_FUNCTION_14_16();
          v121 = v75 && v119 == v120;
          if (v121 || (OUTLINED_FUNCTION_18_13() & 1) != 0)
          {
            v122 = (v176 + *(type metadata accessor for SageTranscript() + 56));
            if (*(v122 + 9))
            {
              goto LABEL_9;
            }

            v123 = *(v122 + 8);
            v178 = *v122;
            LOBYTE(v179) = v123 & 1;
            goto LABEL_18;
          }

          OUTLINED_FUNCTION_16_5();
          OUTLINED_FUNCTION_14_16();
          v126 = v75 && v125 == v124;
          if (v126 || (OUTLINED_FUNCTION_18_13() & 1) != 0)
          {
            v127 = (v176 + *(type metadata accessor for SageTranscript() + 60));
            v128 = v127[1];
            if (v128 >> 60 == 15)
            {
              goto LABEL_9;
            }

            v178 = *v127;
            v179 = v128;
            goto LABEL_18;
          }

          OUTLINED_FUNCTION_14_16();
          v131 = v75 && v130 == v129;
          if (v131 || (OUTLINED_FUNCTION_18_13() & 1) != 0)
          {
            v132 = type metadata accessor for SageTranscript();
            v133 = OUTLINED_FUNCTION_15_19(*(v132 + 64));
            v134 = v168;
            sub_1934486F8(v133, v168, v135, v136);
            if (__swift_getEnumTagSinglePayload(v134, 1, v167) == 1)
            {
              v80 = &qword_1EAE3B940;
              v81 = &unk_193957C00;
              v82 = v168;
              goto LABEL_8;
            }

            v137 = v165;
            sub_1934D8A74(v168, v165, type metadata accessor for SageMetadata);
            sub_193494798(v167, &off_1F07BD8F0, v177);
            v138 = type metadata accessor for SageMetadata;
          }

          else
          {
            OUTLINED_FUNCTION_38();
            OUTLINED_FUNCTION_14_16();
            v141 = v75 && v139 == v140;
            if (v141 || (OUTLINED_FUNCTION_18_13() & 1) != 0)
            {
              v142 = type metadata accessor for SageTranscript();
              v143 = OUTLINED_FUNCTION_15_19(*(v142 + 68));
              v144 = v166;
              sub_1934486F8(v143, v166, v145, v146);
              if (__swift_getEnumTagSinglePayload(v144, 1, v164) == 1)
              {
                v80 = &qword_1EAE3B498;
                v81 = &unk_193959120;
                v82 = v166;
                goto LABEL_8;
              }

              v137 = v161;
              sub_1934D8A74(v166, v161, type metadata accessor for MonotonicTimestamp);
              sub_193494798(v164, &off_1F07BD958, v177);
              v138 = type metadata accessor for MonotonicTimestamp;
            }

            else
            {
              OUTLINED_FUNCTION_14_16();
              v149 = v75 && v148 == v147;
              if (!v149 && (OUTLINED_FUNCTION_18_13() & 1) == 0)
              {
                sub_19349AB64();
                swift_allocError();
                v156 = v155;
                v157 = v175;
                *v155 = v174;
                v155[1] = v157;
                v155[5] = type metadata accessor for SageTranscript();
                boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v156 + 2);
                sub_1934D74E0(v176, boxed_opaque_existential_1Tm);
                *(v156 + 48) = 1;
                swift_willThrow();

                goto LABEL_19;
              }

              v150 = type metadata accessor for SageTranscript();
              v151 = OUTLINED_FUNCTION_15_19(*(v150 + 72));
              v152 = v163;
              sub_1934486F8(v151, v163, v153, v154);
              if (__swift_getEnumTagSinglePayload(v152, 1, v162) == 1)
              {
                v80 = &qword_1EAE3B948;
                v81 = &qword_193957C10;
                v82 = v163;
                goto LABEL_8;
              }

              v137 = v160;
              sub_1934D8A74(v163, v160, type metadata accessor for IntelligenceFlowIdentifiers);
              sub_193494798(v162, &off_1F07C27B8, v177);
              v138 = type metadata accessor for IntelligenceFlowIdentifiers;
            }
          }

          sub_1934D8AD4(v137, v138);
          goto LABEL_19;
        }

        v114 = *(type metadata accessor for SageTranscript() + 52);
      }

      v115 = (v176 + v114);
      v116 = *(v176 + v114 + 8);
      if (!v116)
      {
        goto LABEL_9;
      }

      v178 = *v115;
      v179 = v116;
      goto LABEL_18;
    }

    v106 = type metadata accessor for SageTranscript();
    v107 = OUTLINED_FUNCTION_15_19(*(v106 + 44));
    v99 = v170;
    sub_1934486F8(v107, v170, v108, v109);
    OUTLINED_FUNCTION_20_7(v99);
    if (!v75)
    {
      v110 = v172;
      v111 = v169;
      (*(v172 + 32))(v169, v99, v4);
      sub_1934948FC();
      (*(v110 + 8))(v111, v4);
      goto LABEL_19;
    }
  }

  v80 = &qword_1EAE3AA88;
  v81 = &qword_19394F9C0;
  v82 = v99;
LABEL_8:
  sub_19344E6DC(v82, v80, v81);
LABEL_9:
  v83 = v177;
  *v177 = 0u;
  *(v83 + 1) = 0u;
LABEL_19:
  OUTLINED_FUNCTION_27();
}

uint64_t sub_1934D8A74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_4_1(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1934D8AD4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t SageTranscript.init()@<X0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for SageTranscript();
  v3 = v2[5];
  sub_19343DAD8();
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  v5 = v2[7];
  sub_19344B814();
  v31 = a1 + v2[8];
  OUTLINED_FUNCTION_8_11();
  v6 = v2[9];
  sub_19344B7DC();
  v7 = v2[10];
  sub_19344B818();
  v32 = v2[11];
  sub_19344B818();
  v36 = (a1 + v2[12]);
  j__OUTLINED_FUNCTION_10_1();
  v35 = (a1 + v2[13]);
  j__OUTLINED_FUNCTION_10_1();
  v33 = a1 + v2[14];
  OUTLINED_FUNCTION_131(v33);
  v8 = a1 + v2[15];
  *v8 = sub_1934DC89C();
  *(v8 + 1) = v9;
  v34 = v2[16];
  sub_1934DC95C();
  v37 = v2[17];
  sub_19344BA58();
  v38 = v2[18];
  sub_1934DCAF4();
  *a1 = *sub_1934DC140();
  sub_19344E6DC(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v10 = sub_19393BE00();
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v10);
  sub_19344E6DC(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  sub_19344E6DC(a1 + v5, &qword_1EAE3A9E8, &qword_19394F800);
  v11 = OUTLINED_FUNCTION_5_18();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v10);
  *v31 = 0;
  v31[8] = 1;
  sub_19344E6DC(a1 + v6, &qword_1EAE3AA88, &qword_19394F9C0);
  v14 = sub_19393BE60();
  __swift_storeEnumTagSinglePayload(a1 + v6, 1, 1, v14);
  sub_19344E6DC(a1 + v7, &qword_1EAE3AA88, &qword_19394F9C0);
  __swift_storeEnumTagSinglePayload(a1 + v7, 1, 1, v14);
  sub_19344E6DC(a1 + v32, &qword_1EAE3AA88, &qword_19394F9C0);
  v15 = OUTLINED_FUNCTION_5_18();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v14);

  *v36 = 0;
  v36[1] = 0;
  *v35 = 0;
  v35[1] = 0;
  *v33 = 0;
  *(v33 + 8) = 256;
  sub_19345012C(*v8, *(v8 + 1));
  *v8 = xmmword_193950B20;
  sub_19344E6DC(a1 + v34, &qword_1EAE3B940, &unk_193957C00);
  type metadata accessor for SageMetadata();
  v18 = OUTLINED_FUNCTION_5_18();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  sub_19344E6DC(a1 + v37, &qword_1EAE3B498, &unk_193959120);
  type metadata accessor for MonotonicTimestamp();
  v22 = OUTLINED_FUNCTION_5_18();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  sub_19344E6DC(a1 + v38, &qword_1EAE3B948, &qword_193957C10);
  type metadata accessor for IntelligenceFlowIdentifiers();
  v26 = OUTLINED_FUNCTION_5_18();

  return __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
}

BOOL static SageTranscript.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v241 = a1;
  v242 = a2;
  v221 = type metadata accessor for IntelligenceFlowIdentifiers();
  v2 = OUTLINED_FUNCTION_4_1(v221);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_23_16(v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B948, &qword_193957C10);
  OUTLINED_FUNCTION_47(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_53_1();
  OUTLINED_FUNCTION_23_16(v10);
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B950, &unk_193959140);
  OUTLINED_FUNCTION_4_1(v218);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_53_1();
  v224 = v14;
  OUTLINED_FUNCTION_22_2();
  v225 = type metadata accessor for MonotonicTimestamp();
  v15 = OUTLINED_FUNCTION_4_1(v225);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_23_16(v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B498, &unk_193959120);
  OUTLINED_FUNCTION_47(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_53_1();
  OUTLINED_FUNCTION_23_16(v23);
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B958, &qword_193957B50);
  OUTLINED_FUNCTION_4_1(v222);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_53_1();
  v227 = v27;
  OUTLINED_FUNCTION_22_2();
  v230 = type metadata accessor for SageMetadata();
  v28 = OUTLINED_FUNCTION_4_1(v230);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_23_16(v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B940, &unk_193957C00);
  OUTLINED_FUNCTION_47(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_53_1();
  v226 = v36;
  v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B960, &qword_193957B58);
  OUTLINED_FUNCTION_4_1(v228);
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_53_1();
  v229 = v40;
  OUTLINED_FUNCTION_22_2();
  v239 = sub_19393BE60();
  v41 = OUTLINED_FUNCTION_0(v239);
  v237 = v42;
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_289();
  v234 = v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v47 = OUTLINED_FUNCTION_47(v46);
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_15_8();
  v231 = v50;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v51);
  v233 = v217 - v52;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v53);
  v236 = v217 - v54;
  v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B4E8, &unk_193952CF0);
  v55 = OUTLINED_FUNCTION_4_1(v238);
  v57 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_15_8();
  v232 = v58;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v59);
  v235 = v217 - v60;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v61);
  v63 = v217 - v62;
  v64 = sub_19393BE00();
  v65 = OUTLINED_FUNCTION_0(v64);
  v67 = v66;
  v69 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v71 = v217 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_47(v72);
  v74 = *(v73 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v75);
  v77 = v217 - v76;
  v78 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B968, &qword_193972430) - 8);
  v79 = *(*v78 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v80);
  v82 = v217 - v81;
  v240 = type metadata accessor for SageTranscript();
  v83 = v240[7];
  v84 = v78[14];
  sub_1934486F8(v241 + v83, v82, &qword_1EAE3A9E8, &qword_19394F800);
  sub_1934486F8(v242 + v83, &v82[v84], &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_6_3(v82, 1, v64);
  if (v85)
  {
    OUTLINED_FUNCTION_6_3(&v82[v84], 1, v64);
    if (v85)
    {
      sub_19344E6DC(v82, &qword_1EAE3A9E8, &qword_19394F800);
      goto LABEL_13;
    }

LABEL_9:
    v86 = &qword_1EAE3B968;
    v87 = &qword_193972430;
    v88 = v82;
LABEL_10:
    sub_19344E6DC(v88, v86, v87);
    return 0;
  }

  sub_1934486F8(v82, v77, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_6_3(&v82[v84], 1, v64);
  if (v85)
  {
    (*(v67 + 8))(v77, v64);
    goto LABEL_9;
  }

  (*(v67 + 32))(v71, &v82[v84], v64);
  OUTLINED_FUNCTION_12_11();
  sub_1934DAC18(v90, v91);
  v92 = sub_19393C550();
  v93 = *(v67 + 8);
  v93(v71, v64);
  v93(v77, v64);
  sub_19344E6DC(v82, &qword_1EAE3A9E8, &qword_19394F800);
  if ((v92 & 1) == 0)
  {
    return 0;
  }

LABEL_13:
  v95 = v240;
  v94 = v241;
  v96 = v240[8];
  v97 = (v241 + v96);
  v98 = *(v241 + v96 + 8);
  v99 = v242;
  v100 = (v242 + v96);
  v101 = *(v242 + v96 + 8);
  if (v98)
  {
    v102 = v239;
    if (!v101)
    {
      return 0;
    }
  }

  else
  {
    if (*v97 != *v100)
    {
      LOBYTE(v101) = 1;
    }

    v102 = v239;
    if (v101)
    {
      return 0;
    }
  }

  v103 = v240[9];
  v104 = *(v238 + 48);
  sub_1934486F8(v241 + v103, v63, &qword_1EAE3AA88, &qword_19394F9C0);
  sub_1934486F8(v99 + v103, &v63[v104], &qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_3_22(v63);
  if (v85)
  {
    OUTLINED_FUNCTION_3_22(&v63[v104]);
    if (v85)
    {
      sub_19344E6DC(v63, &qword_1EAE3AA88, &qword_19394F9C0);
      goto LABEL_29;
    }

    goto LABEL_27;
  }

  sub_1934486F8(v63, v236, &qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_3_22(&v63[v104]);
  if (v105)
  {
    v106 = *(v237 + 8);
    v107 = OUTLINED_FUNCTION_33_7();
    v108(v107);
LABEL_27:
    v86 = &qword_1EAE3B4E8;
    v87 = &unk_193952CF0;
    v88 = v63;
    goto LABEL_10;
  }

  v109 = v237;
  (*(v237 + 32))(v234, &v63[v104], v102);
  OUTLINED_FUNCTION_0_22();
  sub_1934DAC18(v110, v111);
  v112 = OUTLINED_FUNCTION_31_11();
  v113 = *(v109 + 8);
  v114 = OUTLINED_FUNCTION_28_6();
  v113(v114);
  v115 = OUTLINED_FUNCTION_33_7();
  v113(v115);
  sub_19344E6DC(v63, &qword_1EAE3AA88, &qword_19394F9C0);
  if ((v112 & 1) == 0)
  {
    return 0;
  }

LABEL_29:
  v116 = *(v238 + 48);
  v117 = v235;
  OUTLINED_FUNCTION_21_9(v94 + v95[10]);
  OUTLINED_FUNCTION_17_9();
  OUTLINED_FUNCTION_3_22(v117);
  if (v85)
  {
    OUTLINED_FUNCTION_3_22(v117 + v116);
    if (v85)
    {
      sub_19344E6DC(v117, &qword_1EAE3AA88, &qword_19394F9C0);
      goto LABEL_40;
    }

LABEL_37:
    v86 = &qword_1EAE3B4E8;
    v87 = &unk_193952CF0;
LABEL_38:
    v88 = v117;
    goto LABEL_10;
  }

  sub_1934486F8(v117, v233, &qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_3_22(v117 + v116);
  if (v118)
  {
    v119 = *(v237 + 8);
    v120 = OUTLINED_FUNCTION_33_7();
    v121(v120);
    goto LABEL_37;
  }

  v122 = v237;
  (*(v237 + 32))(v234, v117 + v116, v102);
  OUTLINED_FUNCTION_0_22();
  sub_1934DAC18(v123, v124);
  v125 = OUTLINED_FUNCTION_31_11();
  v126 = *(v122 + 8);
  v127 = OUTLINED_FUNCTION_28_6();
  v126(v127);
  v128 = OUTLINED_FUNCTION_33_7();
  v126(v128);
  sub_19344E6DC(v235, &qword_1EAE3AA88, &qword_19394F9C0);
  if ((v125 & 1) == 0)
  {
    return 0;
  }

LABEL_40:
  v129 = v95[11];
  v130 = *(v238 + 48);
  v131 = v232;
  sub_1934486F8(v94 + v129, v232, &qword_1EAE3AA88, &qword_19394F9C0);
  sub_1934486F8(v99 + v129, v131 + v130, &qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_3_22(v131);
  if (v85)
  {
    OUTLINED_FUNCTION_3_22(v131 + v130);
    if (v85)
    {
      sub_19344E6DC(v131, &qword_1EAE3AA88, &qword_19394F9C0);
      goto LABEL_50;
    }

LABEL_48:
    v86 = &qword_1EAE3B4E8;
    v87 = &unk_193952CF0;
    v88 = v131;
    goto LABEL_10;
  }

  sub_1934486F8(v131, v231, &qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_3_22(v131 + v130);
  if (v132)
  {
    v133 = *(v237 + 8);
    v134 = OUTLINED_FUNCTION_28_6();
    v135(v134);
    goto LABEL_48;
  }

  v136 = v237;
  v137 = v131 + v130;
  v138 = v234;
  (*(v237 + 32))(v234, v137, v102);
  OUTLINED_FUNCTION_0_22();
  sub_1934DAC18(v139, v140);
  OUTLINED_FUNCTION_34_7();
  v141 = sub_19393C550();
  v142 = *(v136 + 8);
  v142(v138, v102);
  v143 = OUTLINED_FUNCTION_28_6();
  (v142)(v143);
  sub_19344E6DC(v131, &qword_1EAE3AA88, &qword_19394F9C0);
  if ((v141 & 1) == 0)
  {
    return 0;
  }

LABEL_50:
  v144 = v95[12];
  OUTLINED_FUNCTION_36_10();
  if (v145)
  {
    if (!v146)
    {
      return 0;
    }

    v149 = *v147 == *v148 && v145 == v146;
    if (!v149 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v146)
  {
    return 0;
  }

  v150 = v95[13];
  OUTLINED_FUNCTION_36_10();
  if (v151)
  {
    if (!v152)
    {
      return 0;
    }

    v155 = *v153 == *v154 && v151 == v152;
    if (!v155 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v152)
  {
    return 0;
  }

  v156 = v95[14];
  v157 = (v94 + v156);
  v158 = *(v94 + v156 + 9);
  v159 = (v99 + v156);
  v160 = *(v99 + v156 + 9);
  if (v158)
  {
    if ((v160 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v161 = *v159;
    v162 = *(v159 + 8);
    v163 = *(v157 + 8);
    v245 = *v157;
    v246 = v163;
    if (v160)
    {
      return 0;
    }

    v243 = v161;
    v244 = v162 & 1;
    sub_1934DAB70();
    if ((sub_19393C550() & 1) == 0)
    {
      return 0;
    }
  }

  v164 = v95[15];
  v166 = *(v94 + v164);
  v165 = *(v94 + v164 + 8);
  v167 = (v99 + v164);
  v169 = *v167;
  v168 = v167[1];
  if (v165 >> 60 == 15)
  {
    if (v168 >> 60 == 15)
    {
      v170 = OUTLINED_FUNCTION_7_14();
      sub_19345012C(v170, v171);
      goto LABEL_79;
    }

LABEL_77:
    v172 = OUTLINED_FUNCTION_7_14();
    sub_19345012C(v172, v173);
    sub_19345012C(v169, v168);
    return 0;
  }

  if (v168 >> 60 == 15)
  {
    goto LABEL_77;
  }

  v174 = OUTLINED_FUNCTION_7_14();
  v175 = MEMORY[0x193B172A0](v174);
  sub_19345012C(v169, v168);
  sub_19345012C(v166, v165);
  if ((v175 & 1) == 0)
  {
    return 0;
  }

LABEL_79:
  v117 = v229;
  v176 = *(v228 + 48);
  OUTLINED_FUNCTION_21_9(v94 + v95[16]);
  OUTLINED_FUNCTION_17_9();
  v177 = v230;
  OUTLINED_FUNCTION_6_3(v117, 1, v230);
  if (v85)
  {
    v178 = OUTLINED_FUNCTION_18_14();
    OUTLINED_FUNCTION_6_3(v178, v179, v177);
    if (v85)
    {
      sub_19344E6DC(v117, &qword_1EAE3B940, &unk_193957C00);
      goto LABEL_89;
    }

    goto LABEL_87;
  }

  v180 = v226;
  sub_1934486F8(v117, v226, &qword_1EAE3B940, &unk_193957C00);
  v181 = OUTLINED_FUNCTION_18_14();
  OUTLINED_FUNCTION_6_3(v181, v182, v177);
  if (v183)
  {
    sub_1934D8AD4(v180, type metadata accessor for SageMetadata);
LABEL_87:
    v86 = &qword_1EAE3B960;
    v87 = &qword_193957B58;
    goto LABEL_38;
  }

  sub_1934D9F80(v117 + v176, v220, type metadata accessor for SageMetadata);
  OUTLINED_FUNCTION_11_13();
  sub_1934DAC18(v184, v185);
  sub_19393C550();
  OUTLINED_FUNCTION_29_10();
  sub_1934D8AD4(v180, type metadata accessor for SageMetadata);
  sub_19344E6DC(v117, &qword_1EAE3B940, &unk_193957C00);
  if ((v177 & 1) == 0)
  {
    return 0;
  }

LABEL_89:
  v186 = *(v222 + 48);
  v117 = v227;
  OUTLINED_FUNCTION_21_9(v94 + v95[17]);
  OUTLINED_FUNCTION_17_9();
  v187 = v225;
  OUTLINED_FUNCTION_6_3(v117, 1, v225);
  if (v85)
  {
    v188 = OUTLINED_FUNCTION_18_14();
    OUTLINED_FUNCTION_6_3(v188, v189, v187);
    if (v85)
    {
      sub_19344E6DC(v117, &qword_1EAE3B498, &unk_193959120);
      goto LABEL_99;
    }

    goto LABEL_97;
  }

  sub_1934486F8(v117, v223, &qword_1EAE3B498, &unk_193959120);
  v190 = OUTLINED_FUNCTION_18_14();
  OUTLINED_FUNCTION_6_3(v190, v191, v187);
  if (v192)
  {
    sub_1934D8AD4(v223, type metadata accessor for MonotonicTimestamp);
    v117 = v227;
LABEL_97:
    v86 = &qword_1EAE3B958;
    v87 = &qword_193957B50;
    goto LABEL_38;
  }

  v193 = v227;
  sub_1934D9F80(v227 + v186, v217[1], type metadata accessor for MonotonicTimestamp);
  OUTLINED_FUNCTION_10_12();
  sub_1934DAC18(v194, v195);
  v196 = v223;
  OUTLINED_FUNCTION_34_7();
  v197 = v225;
  sub_19393C550();
  OUTLINED_FUNCTION_29_10();
  sub_1934D8AD4(v196, type metadata accessor for MonotonicTimestamp);
  sub_19344E6DC(v193, &qword_1EAE3B498, &unk_193959120);
  if ((v197 & 1) == 0)
  {
    return 0;
  }

LABEL_99:
  v198 = v240[18];
  v199 = *(v218 + 48);
  v200 = v224;
  OUTLINED_FUNCTION_21_9(v241 + v198);
  sub_1934486F8(v242 + v198, v200 + v199, &qword_1EAE3B948, &qword_193957C10);
  OUTLINED_FUNCTION_35_9();
  OUTLINED_FUNCTION_6_3(v201, v202, v203);
  if (!v85)
  {
    sub_1934486F8(v224, v219, &qword_1EAE3B948, &qword_193957C10);
    OUTLINED_FUNCTION_35_9();
    OUTLINED_FUNCTION_6_3(v207, v208, v209);
    if (!v210)
    {
      v211 = v224;
      sub_1934D9F80(v224 + v199, v217[0], type metadata accessor for IntelligenceFlowIdentifiers);
      OUTLINED_FUNCTION_9_29();
      sub_1934DAC18(v212, v213);
      v214 = v219;
      OUTLINED_FUNCTION_34_7();
      OUTLINED_FUNCTION_35_9();
      v216 = v215;
      sub_19393C550();
      OUTLINED_FUNCTION_29_10();
      sub_1934D8AD4(v214, type metadata accessor for IntelligenceFlowIdentifiers);
      sub_19344E6DC(v211, &qword_1EAE3B948, &qword_193957C10);
      return (v216 & 1) != 0;
    }

    sub_1934D8AD4(v219, type metadata accessor for IntelligenceFlowIdentifiers);
    goto LABEL_107;
  }

  OUTLINED_FUNCTION_35_9();
  OUTLINED_FUNCTION_6_3(v204, v205, v206);
  if (!v85)
  {
LABEL_107:
    v86 = &qword_1EAE3B950;
    v87 = &unk_193959140;
    v88 = v224;
    goto LABEL_10;
  }

  sub_19344E6DC(v224, &qword_1EAE3B948, &qword_193957C10);
  return 1;
}

uint64_t sub_1934D9F80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_4_1(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t SageTranscript.hash(into:)()
{
  v133 = type metadata accessor for IntelligenceFlowIdentifiers();
  v0 = OUTLINED_FUNCTION_4_1(v133);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_289();
  v123 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B948, &qword_193957C10);
  OUTLINED_FUNCTION_47(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_53_1();
  v132 = v8;
  OUTLINED_FUNCTION_22_2();
  v131 = type metadata accessor for MonotonicTimestamp();
  v9 = OUTLINED_FUNCTION_4_1(v131);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_289();
  v122 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B498, &unk_193959120);
  OUTLINED_FUNCTION_47(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_53_1();
  v130 = v17;
  OUTLINED_FUNCTION_22_2();
  v129 = type metadata accessor for SageMetadata();
  v18 = OUTLINED_FUNCTION_4_1(v129);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_289();
  v121 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B940, &unk_193957C00);
  OUTLINED_FUNCTION_47(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_53_1();
  v128 = v26;
  OUTLINED_FUNCTION_22_2();
  v27 = sub_19393BE60();
  v28 = OUTLINED_FUNCTION_0(v27);
  v127 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_289();
  v126 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v34 = OUTLINED_FUNCTION_47(v33);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_15_8();
  v125 = v37;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v38);
  v124 = &v121 - v39;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v121 - v41;
  v43 = sub_19393BE00();
  v44 = OUTLINED_FUNCTION_0(v43);
  v46 = v45;
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v50 = &v121 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_47(v51);
  v53 = *(v52 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v121 - v55;
  v57 = type metadata accessor for SageTranscript();
  sub_1934486F8(v134 + v57[7], v56, &qword_1EAE3A9E8, &qword_19394F800);
  v58 = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_3(v58, v59, v43);
  if (v60)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    (*(v46 + 32))(v50, v56, v43);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_12_11();
    sub_1934DAC18(v61, v62);
    sub_19393C540();
    (*(v46 + 8))(v50, v43);
  }

  v63 = v134;
  v64 = (v134 + v57[8]);
  v65 = v129;
  v66 = v126;
  if (*(v64 + 8) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v67 = *v64;
    OUTLINED_FUNCTION_103_0();
    if ((v67 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v68 = v67;
    }

    else
    {
      v68 = 0;
    }

    MEMORY[0x193B18060](v68);
  }

  v69 = v127;
  sub_1934486F8(v63 + v57[9], v42, &qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_6_3(v42, 1, v27);
  if (v60)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v70 = OUTLINED_FUNCTION_26_8();
    v71(v70, v42, v27);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_22();
    sub_1934DAC18(v72, v73);
    OUTLINED_FUNCTION_14_17();
    sub_19393C540();
    v74 = OUTLINED_FUNCTION_32_12();
    v75(v74);
  }

  v76 = v124;
  sub_1934486F8(v63 + v57[10], v124, &qword_1EAE3AA88, &qword_19394F9C0);
  v77 = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_3(v77, v78, v27);
  if (v60)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v79 = OUTLINED_FUNCTION_26_8();
    v80(v79, v76, v27);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_22();
    sub_1934DAC18(v81, v82);
    OUTLINED_FUNCTION_14_17();
    sub_19393C540();
    v83 = OUTLINED_FUNCTION_32_12();
    v84(v83);
  }

  v85 = v125;
  sub_1934486F8(v63 + v57[11], v125, &qword_1EAE3AA88, &qword_19394F9C0);
  v86 = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_3(v86, v87, v27);
  if (v60)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v88 = OUTLINED_FUNCTION_26_8();
    v89(v88, v85, v27);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_22();
    sub_1934DAC18(v90, v91);
    OUTLINED_FUNCTION_14_17();
    sub_19393C540();
    (*(v69 + 8))(v66, v27);
  }

  v92 = (v63 + v57[12]);
  if (v92[1])
  {
    v93 = *v92;
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_27_11();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v94 = (v63 + v57[13]);
  if (v94[1])
  {
    v95 = *v94;
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_27_11();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v96 = (v63 + v57[14]);
  if (*(v96 + 9) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v97 = *(v96 + 8);
    v135 = *v96;
    v136 = v97 & 1;
    OUTLINED_FUNCTION_103_0();
    sub_1934DABC4();
    sub_19393C540();
  }

  v98 = (v63 + v57[15]);
  if (v98[1] >> 60 == 15)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v99 = *v98;
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_27_11();
    sub_19393BD50();
  }

  v100 = v131;
  v101 = v128;
  sub_1934486F8(v63 + v57[16], v128, &qword_1EAE3B940, &unk_193957C00);
  v102 = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_3(v102, v103, v65);
  if (v60)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v104 = v121;
    sub_1934D9F80(v101, v121, type metadata accessor for SageMetadata);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_11_13();
    sub_1934DAC18(v105, v106);
    sub_19393C540();
    sub_1934D8AD4(v104, type metadata accessor for SageMetadata);
  }

  v107 = v130;
  sub_1934486F8(v63 + v57[17], v130, &qword_1EAE3B498, &unk_193959120);
  v108 = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_3(v108, v109, v100);
  if (v60)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v110 = v122;
    sub_1934D9F80(v107, v122, type metadata accessor for MonotonicTimestamp);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_10_12();
    sub_1934DAC18(v111, v112);
    sub_19393C540();
    sub_1934D8AD4(v110, type metadata accessor for MonotonicTimestamp);
  }

  v113 = v132;
  sub_1934486F8(v63 + v57[18], v132, &qword_1EAE3B948, &qword_193957C10);
  v114 = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_3(v114, v115, v133);
  if (v60)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  sub_1934D9F80(v113, v123, type metadata accessor for IntelligenceFlowIdentifiers);
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_9_29();
  sub_1934DAC18(v116, v117);
  OUTLINED_FUNCTION_14_17();
  sub_19393C540();
  v118 = OUTLINED_FUNCTION_34_7();
  return sub_1934D8AD4(v118, v119);
}

uint64_t SageTranscript.SerializationFormat.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = result;
  }

  if (result == 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  v3 = result == 1 || result == 2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t SageTranscript.SerializationFormat.rawValue.getter()
{
  v1 = 1;
  if (*v0)
  {
    v1 = 2;
  }

  if (v0[8])
  {
    return v1;
  }

  else
  {
    return *v0;
  }
}

char *static SageTranscript.SerializationFormat.allCases.getter()
{
  v0 = sub_1934DAC60(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    v0 = OUTLINED_FUNCTION_37_6(v0, v1);
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
    v0 = sub_1934DAC60((v1 > 1), v2 + 2, 1, v0);
    v1 = *(v0 + 3);
    v3 = v1 >> 1;
  }

  *(v0 + 2) = v6;
  v7 = &v0[16 * v4];
  *(v7 + 4) = 0;
  v7[40] = 1;
  if (v3 < (v2 + 3))
  {
    v0 = OUTLINED_FUNCTION_37_6(v0, v1);
  }

  *(v0 + 2) = v2 + 3;
  v8 = &v0[16 * v6];
  *(v8 + 4) = 1;
  v8[40] = 1;
  return v0;
}

uint64_t SageTranscript.SerializationFormat.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return 0x6E776F6E6B6E55;
  }

  if (*v0)
  {
    result = 1852797770;
  }

  else
  {
    result = 0x6675626F746F7250;
  }

  *v0;
  return result;
}

uint64_t SageTranscript.SerializationFormat.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1 == 0x6E776F6E6B6E55 && a2 == 0xE700000000000000;
  if (v6 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    v8 = 0;
    v9 = 0;
  }

  else
  {
    v10 = a1 == 0x6675626F746F7250 && a2 == 0xE800000000000000;
    if (v10 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
    {

      v8 = 0;
    }

    else
    {
      if (a1 != 1852797770 || a2 != 0xE400000000000000)
      {
        v9 = OUTLINED_FUNCTION_0_9();

        v8 = v9 & 1;
        goto LABEL_14;
      }

      v8 = 1;
    }

    v9 = 1;
  }

LABEL_14:
  *a3 = v8;
  *(a3 + 8) = v9 & 1;
  *(a3 + 9) = 0;
  return result;
}

unint64_t sub_1934DAB70()
{
  result = qword_1EAE3B970;
  if (!qword_1EAE3B970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B970);
  }

  return result;
}

unint64_t sub_1934DABC4()
{
  result = qword_1EAE3B980;
  if (!qword_1EAE3B980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B980);
  }

  return result;
}

uint64_t sub_1934DAC18(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_1934DAC60(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B9A0, &qword_193957BC0);
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

unint64_t sub_1934DAD60()
{
  result = qword_1EAE3B998;
  if (!qword_1EAE3B998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B998);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_21_9(uint64_t a1)
{

  return sub_1934486F8(a1, v3, v1, v2);
}

uint64_t sub_1934DADE4()
{
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEA8F78);
  v1 = OUTLINED_FUNCTION_13_0();
  __swift_project_value_buffer(v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1939526C0;
  v8 = v41 + v7;
  v9 = v41 + v7 + dword_1EAEA8FB0;
  *(v41 + v7) = 1;
  *v9 = "absoluteTimestamp";
  *(v9 + 8) = 17;
  *(v9 + 16) = 2;
  v10 = *MEMORY[0x1E69AADC8];
  v11 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v11);
  v13 = *(v12 + 104);
  (v13)(v9, v10, v11);
  v14 = OUTLINED_FUNCTION_3_1(v8 + v5);
  *v15 = 9;
  *v14 = "_machAbsoluteTime";
  *(v14 + 8) = 17;
  *(v14 + 16) = 2;
  *(v14 + 24) = "MachAbsoluteTime";
  *(v14 + 32) = 16;
  *(v14 + 40) = 2;
  LODWORD(v9) = *MEMORY[0x1E69AADD8];
  OUTLINED_FUNCTION_9_30();
  v13();
  v16 = dword_1EAEA8FB0;
  v17 = (v8 + 2 * v5);
  *v17 = 7;
  v18 = OUTLINED_FUNCTION_33_8(v17 + v16, "_sessionID");
  *(v18 + 24) = "SessionID";
  *(v18 + 32) = 9;
  *(v18 + 40) = 2;
  OUTLINED_FUNCTION_9_30();
  v13();
  v19 = dword_1EAEA8FB0;
  v20 = (v8 + 3 * v5);
  *v20 = 8;
  v21 = OUTLINED_FUNCTION_33_8(v20 + v19, "_bootSessionID");
  *(v21 + 24) = "BootSessionID";
  *(v21 + 32) = 13;
  *(v21 + 40) = 2;
  v13();
  v22 = dword_1EAEA8FB0;
  v23 = (v8 + 4 * v5);
  *v23 = 2;
  v24 = v23 + v22;
  *v24 = "_clientSessionID";
  *(v24 + 1) = 16;
  v24[16] = 2;
  *(v24 + 3) = "ClientSessionID";
  *(v24 + 4) = 15;
  v24[40] = 2;
  OUTLINED_FUNCTION_9_30();
  v13();
  v25 = OUTLINED_FUNCTION_3_1(v8 + 5 * v5);
  *v26 = 3;
  *v25 = "eventLabel";
  *(v25 + 8) = 10;
  *(v25 + 16) = 2;
  OUTLINED_FUNCTION_9_30();
  v13();
  v27 = OUTLINED_FUNCTION_3_1(v8 + 6 * v5);
  *v28 = 4;
  *v27 = "eventType";
  *(v27 + 8) = 9;
  *(v27 + 16) = 2;
  OUTLINED_FUNCTION_9_30();
  v13();
  v29 = OUTLINED_FUNCTION_3_1(v8 + 7 * v5);
  *v30 = 5;
  OUTLINED_FUNCTION_33_8(v29, "serializationFormat");
  OUTLINED_FUNCTION_9_30();
  v13();
  v31 = OUTLINED_FUNCTION_3_1(v8 + 8 * v5);
  *v32 = 6;
  *v31 = "eventPayload";
  *(v31 + 8) = 12;
  *(v31 + 16) = 2;
  OUTLINED_FUNCTION_9_30();
  v13();
  v33 = dword_1EAEA8FB0;
  v34 = (v8 + 9 * v5);
  *v34 = 10;
  v35 = v34 + v33;
  *v35 = "_sageMetadata";
  *(v35 + 1) = 13;
  v35[16] = 2;
  *(v35 + 3) = "SageMetadata";
  *(v35 + 4) = 12;
  v35[40] = 2;
  v13();
  v36 = OUTLINED_FUNCTION_3_1(v8 + 10 * v5);
  *v37 = 11;
  OUTLINED_FUNCTION_33_8(v36, "monotonicTimestamp");
  OUTLINED_FUNCTION_9_30();
  v13();
  v38 = OUTLINED_FUNCTION_3_1(v8 + 11 * v5);
  *v39 = 12;
  *v38 = "identifiers";
  *(v38 + 8) = 11;
  *(v38 + 16) = 2;
  OUTLINED_FUNCTION_9_30();
  v13();
  return sub_19393C410();
}

void sub_1934DB21C()
{
  OUTLINED_FUNCTION_26();
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
        v5 = *(type metadata accessor for SageTranscript() + 28);
        sub_1934976E4();
        goto LABEL_20;
      case 2:
        v10 = *(type metadata accessor for SageTranscript() + 44);
        goto LABEL_16;
      case 3:
        v9 = *(type metadata accessor for SageTranscript() + 48);
        goto LABEL_11;
      case 4:
        v9 = *(type metadata accessor for SageTranscript() + 52);
LABEL_11:
        OUTLINED_FUNCTION_8_2(v9);
        sub_19393C200();
        goto LABEL_20;
      case 5:
        v7 = *(type metadata accessor for SageTranscript() + 56);
        sub_1934982A8();
        goto LABEL_20;
      case 6:
        v11 = type metadata accessor for SageTranscript();
        OUTLINED_FUNCTION_8_2(*(v11 + 60));
        sub_19393C140();
        goto LABEL_20;
      case 7:
        v10 = *(type metadata accessor for SageTranscript() + 36);
        goto LABEL_16;
      case 8:
        v10 = *(type metadata accessor for SageTranscript() + 40);
LABEL_16:
        sub_193497890(v0 + v10);
        goto LABEL_20;
      case 9:
        v13 = type metadata accessor for SageTranscript();
        OUTLINED_FUNCTION_8_2(*(v13 + 32));
        sub_19393C1E0();
        goto LABEL_20;
      case 10:
        v8 = *(type metadata accessor for SageTranscript() + 64);
        type metadata accessor for SageMetadata();
        OUTLINED_FUNCTION_10_2();
        goto LABEL_18;
      case 11:
        v12 = *(type metadata accessor for SageTranscript() + 68);
        type metadata accessor for MonotonicTimestamp();
        OUTLINED_FUNCTION_10_2();
        goto LABEL_18;
      case 12:
        v6 = *(type metadata accessor for SageTranscript() + 72);
        type metadata accessor for IntelligenceFlowIdentifiers();
        OUTLINED_FUNCTION_10_2();
LABEL_18:
        sub_193498018();
LABEL_20:
        v2 = 0;
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_1934DB428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1934DB624();
  if (!v4)
  {
    v7 = type metadata accessor for SageTranscript();
    v8 = (v3 + v7[8]);
    if ((v8[1] & 1) == 0)
    {
      v9 = *v8;
      sub_19393C3B0();
    }

    OUTLINED_FUNCTION_79();
    sub_1934DB7A8();
    OUTLINED_FUNCTION_79();
    sub_1934DB8D0();
    OUTLINED_FUNCTION_79();
    sub_1934DB9F8();
    v10 = (v3 + v7[12]);
    if (v10[1])
    {
      v11 = *v10;
      OUTLINED_FUNCTION_24_2();
      sub_19393C3C0();
    }

    v12 = (v3 + v7[13]);
    if (v12[1])
    {
      v13 = *v12;
      OUTLINED_FUNCTION_24_2();
      sub_19393C3C0();
    }

    v14 = (v3 + v7[14]);
    if ((*(v14 + 9) & 1) == 0)
    {
      v15 = *(v14 + 8);
      v19 = *v14;
      v20 = v15 & 1;
      sub_193447324(&v19, 5, a2, &type metadata for SageTranscript.SerializationFormat, a3, &off_1F07C29E8);
    }

    v16 = v3 + v7[15];
    v17 = *(v16 + 8);
    if (v17 >> 60 != 15)
    {
      v18 = *v16;
      sub_193450688(*v16, *(v16 + 8));
      OUTLINED_FUNCTION_24_2();
      sub_19393C330();
      sub_19345012C(v18, v17);
    }

    OUTLINED_FUNCTION_79();
    sub_1934DBB20();
    OUTLINED_FUNCTION_79();
    sub_1934DBC28();
    OUTLINED_FUNCTION_79();
    sub_1934DBD30();
  }
}

void sub_1934DB624()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_77(v3, v4, v5, v6);
  v7 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  v13 = sub_19393BE00();
  v14 = OUTLINED_FUNCTION_76(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_14_5();
  v19 = type metadata accessor for SageTranscript();
  sub_193448758(v2 + *(v19 + 28), v12, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_23_5(v12);
  if (v20)
  {
    sub_19344E6DC(v12, &qword_1EAE3A9E8, &qword_19394F800);
  }

  else
  {
    (*(v16 + 32))(v1, v12, v0);
    sub_193451F04(v1, 1, 26211, 0xE200000000000000);
    (*(v16 + 8))(v1, v0);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_1934DB7A8()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_77(v1, v2, v3, v4);
  v5 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14_5();
  v9 = sub_19393BE60();
  v10 = OUTLINED_FUNCTION_76(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = OUTLINED_FUNCTION_1_24();
  OUTLINED_FUNCTION_20_8(*(v13 + 36));
  OUTLINED_FUNCTION_23_5(v0);
  if (v14)
  {
    sub_19344E6DC(v0, &qword_1EAE3AA88, &qword_19394F9C0);
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

void sub_1934DB8D0()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_77(v1, v2, v3, v4);
  v5 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14_5();
  v9 = sub_19393BE60();
  v10 = OUTLINED_FUNCTION_76(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = OUTLINED_FUNCTION_1_24();
  OUTLINED_FUNCTION_20_8(*(v13 + 40));
  OUTLINED_FUNCTION_23_5(v0);
  if (v14)
  {
    sub_19344E6DC(v0, &qword_1EAE3AA88, &qword_19394F9C0);
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

void sub_1934DB9F8()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_77(v1, v2, v3, v4);
  v5 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14_5();
  v9 = sub_19393BE60();
  v10 = OUTLINED_FUNCTION_76(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = OUTLINED_FUNCTION_1_24();
  OUTLINED_FUNCTION_20_8(*(v13 + 44));
  OUTLINED_FUNCTION_23_5(v0);
  if (v14)
  {
    sub_19344E6DC(v0, &qword_1EAE3AA88, &qword_19394F9C0);
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

void sub_1934DBB20()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v8 = type metadata accessor for SageMetadata();
  v9 = OUTLINED_FUNCTION_4_1(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = OUTLINED_FUNCTION_1_24();
  OUTLINED_FUNCTION_19_12(*(v12 + 64));
  OUTLINED_FUNCTION_25_0();
  if (v13)
  {
    sub_19344E6DC(v0, &qword_1EAE3B940, &unk_193957C00);
  }

  else
  {
    sub_1934DC0E4(v0, v1, type metadata accessor for SageMetadata);
    OUTLINED_FUNCTION_12_12();
    OUTLINED_FUNCTION_29_11();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_1934DBC28()
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
  v12 = OUTLINED_FUNCTION_1_24();
  OUTLINED_FUNCTION_19_12(*(v12 + 68));
  OUTLINED_FUNCTION_25_0();
  if (v13)
  {
    sub_19344E6DC(v0, &qword_1EAE3B498, &unk_193959120);
  }

  else
  {
    sub_1934DC0E4(v0, v1, type metadata accessor for MonotonicTimestamp);
    OUTLINED_FUNCTION_12_12();
    OUTLINED_FUNCTION_29_11();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_1934DBD30()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v8 = type metadata accessor for IntelligenceFlowIdentifiers();
  v9 = OUTLINED_FUNCTION_4_1(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = OUTLINED_FUNCTION_1_24();
  OUTLINED_FUNCTION_19_12(*(v12 + 72));
  OUTLINED_FUNCTION_25_0();
  if (v13)
  {
    sub_19344E6DC(v0, &qword_1EAE3B948, &qword_193957C10);
  }

  else
  {
    sub_1934DC0E4(v0, v1, type metadata accessor for IntelligenceFlowIdentifiers);
    OUTLINED_FUNCTION_12_12();
    OUTLINED_FUNCTION_29_11();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

uint64_t sub_1934DBE38()
{
  OUTLINED_FUNCTION_12();
  v0 = *aSagetranscript_0;

  return v0;
}

uint64_t sub_1934DBED4()
{
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEA8F90);
  v1 = OUTLINED_FUNCTION_13_0();
  __swift_project_value_buffer(v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_19394FBB0;
  v9 = (v8 + v7);
  v10 = v8 + v7 + dword_1EAEA8FC8;
  *v9 = 0;
  *v10 = "Unknown";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v12 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v12);
  v14 = *(v13 + 104);
  (v14)(v10, v11, v12);
  v15 = OUTLINED_FUNCTION_3_1(v9 + v5);
  *v16 = 1;
  *v15 = "Protobuf";
  *(v15 + 8) = 8;
  *(v15 + 16) = 2;
  v14();
  v17 = OUTLINED_FUNCTION_3_1(v9 + 2 * v5);
  *v18 = 2;
  *v17 = "Json";
  *(v17 + 8) = 4;
  *(v17 + 16) = 2;
  v14();
  return sub_19393C410();
}

uint64_t sub_1934DC0E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_4_1(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_13_0();
  v8(v7);
  return a2;
}

uint64_t SageTranscript.writeTimestamp.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for SageTranscript();
  return OUTLINED_FUNCTION_9_11(&qword_1EAE3A9E8, &qword_19394F800, *(v0 + 20));
}

uint64_t type metadata accessor for SageTranscript()
{
  result = qword_1ED50E4A0;
  if (!qword_1ED50E4A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SageTranscript.bookmark.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for SageTranscript();
  return OUTLINED_FUNCTION_9_11(&qword_1EAE3AA00, &unk_19394F8F0, *(v0 + 24));
}

uint64_t SageTranscript.absoluteTimestamp.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for SageTranscript();
  return OUTLINED_FUNCTION_9_11(&qword_1EAE3A9E8, &qword_19394F800, *(v0 + 28));
}

uint64_t SageTranscript._machAbsoluteTime.getter()
{
  v1 = (v0 + *(type metadata accessor for SageTranscript() + 32));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t SageTranscript._machAbsoluteTime.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for SageTranscript();
  v6 = v2 + *(result + 32);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t SageTranscript._sessionID.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for SageTranscript();
  return OUTLINED_FUNCTION_9_11(&qword_1EAE3AA88, &qword_19394F9C0, *(v0 + 36));
}

uint64_t SageTranscript._bootSessionID.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for SageTranscript();
  return OUTLINED_FUNCTION_9_11(&qword_1EAE3AA88, &qword_19394F9C0, *(v0 + 40));
}

uint64_t SageTranscript._clientSessionID.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for SageTranscript();
  return OUTLINED_FUNCTION_9_11(&qword_1EAE3AA88, &qword_19394F9C0, *(v0 + 44));
}

uint64_t SageTranscript.eventLabel.getter()
{
  v1 = (v0 + *(type metadata accessor for SageTranscript() + 48));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_13_0();
}

uint64_t SageTranscript.eventLabel.setter()
{
  v3 = (v1 + *(OUTLINED_FUNCTION_12_13() + 48));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t SageTranscript.eventType.getter()
{
  v1 = (v0 + *(type metadata accessor for SageTranscript() + 52));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_13_0();
}

uint64_t SageTranscript.eventType.setter()
{
  v3 = (v1 + *(OUTLINED_FUNCTION_12_13() + 52));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t SageTranscript.serializationFormat.getter()
{
  OUTLINED_FUNCTION_8_4();
  result = type metadata accessor for SageTranscript();
  v3 = (v1 + *(result + 56));
  v4 = *v3;
  v5 = *(v3 + 8);
  LOBYTE(v3) = *(v3 + 9);
  *v0 = v4;
  *(v0 + 8) = v5;
  *(v0 + 9) = v3;
  return result;
}

uint64_t SageTranscript.serializationFormat.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);
  result = type metadata accessor for SageTranscript();
  v6 = v1 + *(result + 56);
  *v6 = v2;
  *(v6 + 8) = v3;
  *(v6 + 9) = v4;
  return result;
}

uint64_t SageTranscript.eventPayload.getter()
{
  v1 = (v0 + *(type metadata accessor for SageTranscript() + 60));
  v2 = *v1;
  v3 = v1[1];
  v4 = OUTLINED_FUNCTION_13_0();
  sub_193450268(v4, v5);
  return OUTLINED_FUNCTION_13_0();
}

uint64_t SageTranscript.eventPayload.setter()
{
  v3 = v1 + *(OUTLINED_FUNCTION_12_13() + 60);
  result = sub_19345012C(*v3, *(v3 + 8));
  *v3 = v2;
  *(v3 + 8) = v0;
  return result;
}

uint64_t sub_1934DC95C()
{
  OUTLINED_FUNCTION_8_4();
  type metadata accessor for SageMetadata();
  v0 = OUTLINED_FUNCTION_189();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t SageTranscript._sageMetadata.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for SageTranscript();
  return OUTLINED_FUNCTION_9_11(&qword_1EAE3B940, &unk_193957C00, *(v0 + 64));
}

uint64_t SageTranscript.monotonicTimestamp.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for SageTranscript();
  return OUTLINED_FUNCTION_9_11(&qword_1EAE3B498, &unk_193959120, *(v0 + 68));
}

uint64_t sub_1934DCAF4()
{
  OUTLINED_FUNCTION_8_4();
  type metadata accessor for IntelligenceFlowIdentifiers();
  v0 = OUTLINED_FUNCTION_189();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t SageTranscript.identifiers.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for SageTranscript();
  return OUTLINED_FUNCTION_9_11(&qword_1EAE3B948, &qword_193957C10, *(v0 + 72));
}

uint64_t sub_1934DCBE4@<X0>(uint64_t *a1@<X8>)
{
  result = SageTranscript.SerializationFormat.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_1934DCC0C@<X0>(char **a1@<X8>)
{
  result = static SageTranscript.SerializationFormat.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1934DCC34()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return sub_1934DCC40();
}

uint64_t sub_1934DCC40()
{
  sub_19393CAB0();
  v0 = SageTranscript.SerializationFormat.rawValue.getter();
  MEMORY[0x193B18030](v0);
  return sub_19393CB00();
}

uint64_t sub_1934DCC9C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return sub_1934DCCA8();
}

uint64_t sub_1934DCCEC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return sub_1934DCCF8();
}

uint64_t sub_1934DCCF8()
{
  sub_19393CAB0();
  v0 = SageTranscript.SerializationFormat.rawValue.getter();
  MEMORY[0x193B18030](v0);
  return sub_19393CB00();
}

BOOL sub_1934DCD50(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  return sub_1934DCD6C();
}

uint64_t SageTranscript.hashValue.getter()
{
  sub_19393CAB0();
  SageTranscript.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1934DCE0C()
{
  sub_19393CAB0();
  SageTranscript.hash(into:)();
  return sub_19393CB00();
}

unint64_t sub_1934DCE4C()
{
  result = qword_1EAE3B9B8;
  if (!qword_1EAE3B9B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAE3B9C0, &qword_193957C50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B9B8);
  }

  return result;
}

unint64_t sub_1934DCEB8()
{
  result = qword_1EAE3B9C8;
  if (!qword_1EAE3B9C8)
  {
    type metadata accessor for SageTranscript();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B9C8);
  }

  return result;
}

uint64_t sub_1934DCF3C(uint64_t a1)
{
  OUTLINED_FUNCTION_15_20(a1, &qword_1ED5082C0);
  OUTLINED_FUNCTION_4_0();
  if (!(!v3 & v2))
  {
    sub_19349D198();
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      sub_19349D1FC(319, &qword_1ED506690);
      OUTLINED_FUNCTION_4_0();
      if (!(!v3 & v2))
      {
        OUTLINED_FUNCTION_15_20(v6, &qword_1ED508298);
        OUTLINED_FUNCTION_4_0();
        if (!(!v3 & v2))
        {
          sub_19349D1FC(319, &qword_1ED508290);
          OUTLINED_FUNCTION_4_0();
          if (!(!v3 & v2))
          {
            sub_19349D1FC(319, qword_1ED504838);
            OUTLINED_FUNCTION_4_0();
            if (!(!v3 & v2))
            {
              sub_19349D1FC(319, &qword_1ED506D30);
              OUTLINED_FUNCTION_4_0();
              if (!(!v3 & v2))
              {
                OUTLINED_FUNCTION_15_20(v7, &qword_1ED506E28);
                OUTLINED_FUNCTION_4_0();
                if (!(!v3 & v2))
                {
                  OUTLINED_FUNCTION_15_20(v8, &qword_1ED507A78);
                  OUTLINED_FUNCTION_4_0();
                  if (!(!v3 & v2))
                  {
                    OUTLINED_FUNCTION_15_20(v9, qword_1ED5077D0);
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
        }
      }
    }
  }

  return v1;
}

void sub_1934DD14C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

_BYTE *_s7ZeoliteOwst(_BYTE *result, int a2, int a3)
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

_BYTE *_s6LedgerOwst(_BYTE *result, int a2, int a3)
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

uint64_t sub_1934DD324()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED5100B8);
  v5 = __swift_project_value_buffer(v4, qword_1ED5100B8);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v3, 1, v4);
  if (result != 1)
  {
    return (*(*(v4 - 8) + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

id static Library.Streams.Zeolite.Ledger.Embedding.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:1209600.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:0x100000 protectionClass:3 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_4 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED5100B8);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B9D0, &qword_193957E48);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = sub_19393C6C0();
    BYTE2(v12) = 1;
    LOWORD(v12) = 1;
    v11 = [v5 _libraryStreamConfigurationWithUUID_streamIdentifier_eventClass_storeConfig_syncPolicy_legacyNames_internalMetadata_enableSubscriptions_enableSubscriptionSubstream_enableTombstoneSubstream_allowedClients_pruningTriggers_spaceAttributionOwner_];

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t static Library.Streams.Zeolite.Ledger.Embedding.attribute(_:)(void (*a1)(void))
{
  result = sub_1934DD728(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1934DD770(void (*a1)(void))
{
  result = sub_1934DD728(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1934DD7A0(uint64_t a1)
{
  result = sub_1934DD7C8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1934DD7C8()
{
  result = qword_1ED507F38[0];
  if (!qword_1ED507F38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED507F38);
  }

  return result;
}

_BYTE *_s9EmbeddingOwst(_BYTE *result, int a2, int a3)
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

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ZeoliteEmbedding.json()()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v28 = sub_19393C090();
  v2 = OUTLINED_FUNCTION_0(v28);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v9 = v8 - v7;
  v10 = type metadata accessor for ZeoliteEmbedding();
  v11 = OUTLINED_FUNCTION_4_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B9D8, &qword_193957EC0);
  OUTLINED_FUNCTION_4_1(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v27 - v21;
  sub_1934DDAC0(v1, v16);
  sub_1934470C8(v16, v10, v22);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v23, &qword_1EAE3B9D8, &qword_193957EC0);
  sub_19393C250();
  (*(v4 + 8))(v9, v28);
  sub_19344E6DC(v22, &qword_1EAE3B9D8, &qword_193957EC0);
  OUTLINED_FUNCTION_27();
  result._object = v25;
  result._countAndFlagsBits = v24;
  return result;
}

uint64_t sub_1934DDAC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ZeoliteEmbedding();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void static ZeoliteEmbedding.event(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = sub_19393C070();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  OUTLINED_FUNCTION_5_1();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B9D8, &qword_193957EC0);
  OUTLINED_FUNCTION_4_1(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &a9 - v31;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v33, &qword_1EAE3B9D8, &qword_193957EC0);
  sub_19393C260();
  if (!v20)
  {
    sub_1934DDC54(v32, v24);
  }

  OUTLINED_FUNCTION_27();
}

uint64_t sub_1934DDC54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ZeoliteEmbedding();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void static ZeoliteEmbedding.event(from:dataVersion:writeTimestamp:bookmark:)()
{
  OUTLINED_FUNCTION_26();
  v40 = v2;
  v41 = v1;
  v39 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B9D8, &qword_193957EC0);
  OUTLINED_FUNCTION_4_1(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v38 - v14;
  v16 = sub_19393C0C0();
  v17 = OUTLINED_FUNCTION_0(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_6();
  v24 = v22 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v38 - v26;
  if (*sub_1934DFD3C() == v5)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v44 = 0;
    v42 = 0u;
    v43 = 0u;
    (*(v19 + 16))(v24, v27, v16);
    sub_193450688(v9, v7);
    OUTLINED_FUNCTION_0_8();
    sub_19344A3FC(v28, v29, v30);
    sub_19393C280();
    (*(v19 + 8))(v27, v16);
    if (!v0)
    {
      v32 = v40;
      sub_1934DDC54(v15, v40);
      v33 = type metadata accessor for ZeoliteEmbedding();
      v34 = *(v33 + 20);
      sub_19344E6DC(v32 + v34, &qword_1EAE3A9E8, &qword_19394F800);
      v35 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1(v35);
      (*(v36 + 16))(v32 + v34, v39, v35);
      __swift_storeEnumTagSinglePayload(v32 + v34, 0, 1, v35);
      v37 = *(v33 + 24);
      sub_19344E6DC(v32 + v37, &qword_1EAE3AA00, &unk_19394F8F0);
      sub_1934970B0(v41, v32 + v37);
    }
  }

  else
  {
    sub_19349AB64();
    swift_allocError();
    *v31 = v5;
    *(v31 + 48) = 0;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_27();
}

uint64_t ZeoliteEmbedding.serialize()()
{
  v1 = type metadata accessor for ZeoliteEmbedding();
  v2 = OUTLINED_FUNCTION_4_1(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B9D8, &qword_193957EC0);
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - v12;
  sub_1934DDAC0(v0, v7);
  sub_1934470C8(v7, v1, v13);
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v14, &qword_1EAE3B9D8, &qword_193957EC0);
  v15 = sub_19393C290();
  sub_19344E6DC(v13, &qword_1EAE3B9D8, &qword_193957EC0);
  return v15;
}

id static ZeoliteEmbedding.columns.getter()
{
  v125 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  *(swift_initStackObject() + 16) = xmmword_193950B10;
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_5_10(v1, v2, v3, v4, v5, v6, v7, v8, v9);
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  *(v0 + 32) = sub_19393C850();
  v10 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_12_10();
  result = sub_19343D150(v11, v12, v13, v14, v15, 13, 0);
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_69_3(result);
  inited = swift_initStackObject();
  v25 = OUTLINED_FUNCTION_2_4(inited, v18, v19, v20, v21, v22, v23, v24, xmmword_193950B10);
  OUTLINED_FUNCTION_5_10(v25, v26, v27, v28, v29, v30, v31, v32, v33);
  v34 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v34);
  OUTLINED_FUNCTION_12_14();
  OUTLINED_FUNCTION_12_10();
  result = sub_19343D150(v35, v36, v37, v38, v39, 3, 0);
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_69_3(result);
  v40 = swift_initStackObject();
  v48 = OUTLINED_FUNCTION_2_4(v40, v41, v42, v43, v44, v45, v46, v47, v120);
  OUTLINED_FUNCTION_5_10(v48, v49, v50, v51, v52, v53, v54, v55, v56);
  v57 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v57);
  OUTLINED_FUNCTION_10_13();
  OUTLINED_FUNCTION_12_10();
  result = sub_19343D150(v58, v59, v60, v61, v62, 13, 0);
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_69_3(result);
  v63 = swift_initStackObject();
  v71 = OUTLINED_FUNCTION_2_4(v63, v64, v65, v66, v67, v68, v69, v70, v121);
  OUTLINED_FUNCTION_5_10(v71, v72, v73, v74, v75, v76, v77, v78, v79);
  v80 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v80);
  OUTLINED_FUNCTION_12_14();
  OUTLINED_FUNCTION_12_10();
  result = sub_19343D150(v81, v82, v83, v84, v85, 0, 2);
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_69_3(result);
  v86 = swift_initStackObject();
  v94 = OUTLINED_FUNCTION_2_4(v86, v87, v88, v89, v90, v91, v92, v93, v122);
  OUTLINED_FUNCTION_5_10(v94, v95, v96, v97, v98, v99, v100, v101, v102);
  v103 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v103);
  OUTLINED_FUNCTION_15_21();
  OUTLINED_FUNCTION_14_18();
  OUTLINED_FUNCTION_12_10();
  result = sub_19343D150(v104, v105, v106, v107, v108, 0, 2);
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_69_3(result);
  v109 = swift_initStackObject();
  v117 = OUTLINED_FUNCTION_2_4(v109, v110, v111, v112, v113, v114, v115, v116, v123);
  *(v117 + 16) = v124;
  *(v117 + 32) = sub_19393C850();
  v118 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  v119 = OUTLINED_FUNCTION_11_14();
  result = sub_19343D150(v119, 0xEA00000000006570, 2, 0, v117, 13, 0);
  if (result)
  {
    OUTLINED_FUNCTION_69_3(result);
    return v125;
  }

LABEL_13:
  __break(1u);
  return result;
}

void sub_1934DE404()
{
  OUTLINED_FUNCTION_26();
  v53 = v2;
  v54 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  OUTLINED_FUNCTION_6();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v51 - v13;
  v15 = sub_19393BE00();
  v16 = OUTLINED_FUNCTION_0(v15);
  v52 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_6();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v51 - v24;
  v26 = v6 == 0x49747865746E6F63 && v4 == 0xE900000000000044;
  if (!v26 && (OUTLINED_FUNCTION_0_18() & 1) == 0)
  {
    v29 = v6 == (OUTLINED_FUNCTION_12_14() & 0xFFFF0000FFFFFFFFLL | 0x444900000000) && v4 == 0xE600000000000000;
    if (v29 || (OUTLINED_FUNCTION_0_18() & 1) != 0)
    {
      v30 = v0 + *(type metadata accessor for ZeoliteEmbedding() + 32);
      if ((*(v30 + 8) & 1) == 0)
      {
        v55 = *v30;
        goto LABEL_8;
      }

      goto LABEL_15;
    }

    v33 = v6 == OUTLINED_FUNCTION_10_13() && v4 == 0xE700000000000000;
    if (v33 || (OUTLINED_FUNCTION_0_18() & 1) != 0)
    {
      v34 = *(type metadata accessor for ZeoliteEmbedding() + 36);
LABEL_25:
      v35 = (v0 + v34);
      v36 = *(v0 + v34 + 8);
      if (v36)
      {
        v55 = *v35;
        v56 = v36;
        sub_1934948FC();
        goto LABEL_17;
      }

      v31 = 0uLL;
      v32 = v53;
      goto LABEL_16;
    }

    v37 = v6 == 0x6E69646465626D65 && v4 == 0xE900000000000067;
    if (v37 || (OUTLINED_FUNCTION_0_18() & 1) != 0)
    {
      v55 = *(v0 + *(type metadata accessor for ZeoliteEmbedding() + 40));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B9E8, &qword_193957EC8);
      goto LABEL_8;
    }

    v38 = v6 == (OUTLINED_FUNCTION_12_14() | 0x6574614400000000) && v4 == 0xE800000000000000;
    if (v38 || (OUTLINED_FUNCTION_0_18() & 1) != 0)
    {
      v39 = type metadata accessor for ZeoliteEmbedding();
      sub_1934DE90C(v0 + *(v39 + 44), v14);
      if (__swift_getEnumTagSinglePayload(v14, 1, v15) != 1)
      {
        v41 = v52;
        (*(v52 + 32))(v25, v14, v15);
        sub_1934948FC();
        (*(v41 + 8))(v25, v15);
        goto LABEL_17;
      }

      v40 = v14;
    }

    else
    {
      OUTLINED_FUNCTION_14_18();
      v43 = v6 == OUTLINED_FUNCTION_15_21() && v4 == v42;
      if (!v43 && (OUTLINED_FUNCTION_0_18() & 1) == 0)
      {
        v47 = v6 == OUTLINED_FUNCTION_11_14() && v4 == v46;
        if (!v47 && (OUTLINED_FUNCTION_0_18() & 1) == 0)
        {
          sub_19349AB64();
          swift_allocError();
          v49 = v48;
          *v48 = v6;
          v48[1] = v4;
          v48[5] = type metadata accessor for ZeoliteEmbedding();
          boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v49 + 2);
          sub_1934DDAC0(v0, boxed_opaque_existential_1Tm);
          *(v49 + 48) = 1;
          swift_willThrow();

          goto LABEL_17;
        }

        v34 = *(type metadata accessor for ZeoliteEmbedding() + 52);
        goto LABEL_25;
      }

      v44 = type metadata accessor for ZeoliteEmbedding();
      sub_1934DE90C(v0 + *(v44 + 48), v11);
      if (__swift_getEnumTagSinglePayload(v11, 1, v15) != 1)
      {
        v45 = v52;
        (*(v52 + 32))(v22, v11, v15);
        sub_1934948FC();
        (*(v45 + 8))(v22, v15);
        goto LABEL_17;
      }

      v40 = v11;
    }

    sub_19344E6DC(v40, &qword_1EAE3A9E8, &qword_19394F800);
    goto LABEL_15;
  }

  v27 = (v0 + *(type metadata accessor for ZeoliteEmbedding() + 28));
  v28 = v27[1];
  if (!v28)
  {
LABEL_15:
    v31 = 0uLL;
    v32 = v53;
LABEL_16:
    *v32 = v31;
    v32[1] = v31;
    goto LABEL_17;
  }

  v55 = *v27;
  v56 = v28;
LABEL_8:
  sub_1934948FC();
LABEL_17:
  OUTLINED_FUNCTION_27();
}

uint64_t sub_1934DE90C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ZeoliteEmbedding.init()@<X0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for ZeoliteEmbedding();
  v3 = v2[5];
  sub_1934E0648();
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  v5 = (a1 + v2[7]);
  j__OUTLINED_FUNCTION_10_1();
  v6 = a1 + v2[8];
  OUTLINED_FUNCTION_8_11();
  v7 = (a1 + v2[9]);
  j__OUTLINED_FUNCTION_10_1();
  v8 = v2[11];
  sub_1934E0648();
  v9 = v2[12];
  sub_19349C79C();
  v11 = (a1 + v2[13]);
  j__OUTLINED_FUNCTION_10_1();
  *a1 = *sub_1934DFD3C();
  sub_193442B60(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  sub_19393BE00();
  OUTLINED_FUNCTION_7_15(a1 + v3);
  sub_193442B60(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;

  *v5 = 0;
  v5[1] = 0;
  *v6 = 0;
  v6[8] = 1;
  *v7 = 0;
  v7[1] = 0;
  *(a1 + v2[10]) = MEMORY[0x1E69E7CC0];
  sub_193442B60(a1 + v8, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_7_15(a1 + v8);
  sub_193442B60(a1 + v9, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_7_15(a1 + v9);

  *v11 = 0;
  v11[1] = 0;
  return result;
}

BOOL static ZeoliteEmbedding.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_19393BE00();
  v5 = OUTLINED_FUNCTION_0(v4);
  v69 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v65[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  OUTLINED_FUNCTION_6();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v65[-v17];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B968, &qword_193972430);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_6();
  v23 = v21 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v65[-v25];
  v27 = type metadata accessor for ZeoliteEmbedding();
  v28 = v27[7];
  OUTLINED_FUNCTION_3();
  if (v31)
  {
    if (!v29)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v30);
    v34 = v34 && v32 == v33;
    if (!v34 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v29)
  {
    return 0;
  }

  v35 = v27[8];
  v36 = (a1 + v35);
  v37 = *(a1 + v35 + 8);
  v38 = (a2 + v35);
  v39 = *(a2 + v35 + 8);
  if (v37)
  {
    if (!v39)
    {
      return 0;
    }
  }

  else
  {
    if (*v36 != *v38)
    {
      LOBYTE(v39) = 1;
    }

    if (v39)
    {
      return 0;
    }
  }

  v40 = v27[9];
  OUTLINED_FUNCTION_3();
  if (v43)
  {
    if (!v41)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v42);
    v46 = v34 && v44 == v45;
    if (!v46 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v41)
  {
    return 0;
  }

  if ((sub_1934DF324(*(a1 + v27[10]), *(a2 + v27[10])) & 1) == 0)
  {
    return 0;
  }

  v47 = *(v19 + 48);
  v67 = v27[11];
  v68 = v47;
  sub_1934DE90C(a1 + v67, v26);
  sub_1934DE90C(a2 + v67, &v68[v26]);
  OUTLINED_FUNCTION_31(v26);
  if (v34)
  {
    OUTLINED_FUNCTION_31(&v68[v26]);
    if (v34)
    {
      sub_193442B60(v26, &qword_1EAE3A9E8, &qword_19394F800);
      goto LABEL_36;
    }

LABEL_34:
    v49 = v26;
LABEL_45:
    sub_193442B60(v49, &qword_1EAE3B968, &qword_193972430);
    return 0;
  }

  sub_1934DE90C(v26, v18);
  OUTLINED_FUNCTION_31(&v68[v26]);
  if (v48)
  {
    (*(v69 + 8))(v18, v4);
    goto LABEL_34;
  }

  (*(v69 + 32))(v10, &v68[v26], v4);
  OUTLINED_FUNCTION_3_23(&qword_1EAE3A848);
  v66 = sub_19393C550();
  v50 = *(v69 + 8);
  v67 = v69 + 8;
  v68 = v50;
  (v50)(v10, v4);
  (v68)(v18, v4);
  sub_193442B60(v26, &qword_1EAE3A9E8, &qword_19394F800);
  if ((v66 & 1) == 0)
  {
    return 0;
  }

LABEL_36:
  v51 = v27[12];
  v52 = *(v19 + 48);
  sub_1934DE90C(a1 + v51, v23);
  sub_1934DE90C(a2 + v51, v23 + v52);
  OUTLINED_FUNCTION_31(v23);
  if (v34)
  {
    OUTLINED_FUNCTION_31(v23 + v52);
    if (v34)
    {
      sub_193442B60(v23, &qword_1EAE3A9E8, &qword_19394F800);
      goto LABEL_48;
    }

    goto LABEL_44;
  }

  sub_1934DE90C(v23, v15);
  OUTLINED_FUNCTION_31(v23 + v52);
  if (v53)
  {
    (*(v69 + 8))(v15, v4);
LABEL_44:
    v49 = v23;
    goto LABEL_45;
  }

  v55 = v69;
  (*(v69 + 32))(v10, v23 + v52, v4);
  OUTLINED_FUNCTION_3_23(&qword_1EAE3A848);
  v56 = sub_19393C550();
  v57 = *(v55 + 8);
  v57(v10, v4);
  v57(v15, v4);
  sub_193442B60(v23, &qword_1EAE3A9E8, &qword_19394F800);
  if ((v56 & 1) == 0)
  {
    return 0;
  }

LABEL_48:
  v58 = v27[13];
  OUTLINED_FUNCTION_3();
  if (!v61)
  {
    return !v59;
  }

  if (!v59)
  {
    return 0;
  }

  OUTLINED_FUNCTION_5(v60);
  v64 = v34 && v62 == v63;
  return v64 || (sub_19393CA30() & 1) != 0;
}

uint64_t ZeoliteEmbedding.hash(into:)(uint64_t a1)
{
  v3 = sub_19393BE00();
  v4 = OUTLINED_FUNCTION_0(v3);
  v31 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  OUTLINED_FUNCTION_6();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v30 - v16;
  v18 = type metadata accessor for ZeoliteEmbedding();
  v19 = (v1 + v18[7]);
  if (v19[1])
  {
    v20 = *v19;
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v21 = (v1 + v18[8]);
  if (*(v21 + 8) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v22 = *v21;
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v22);
  }

  v23 = (v1 + v18[9]);
  if (v23[1])
  {
    v24 = *v23;
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  sub_1934DF380(a1, *(v1 + v18[10]));
  sub_1934DE90C(v1 + v18[11], v17);
  if (__swift_getEnumTagSinglePayload(v17, 1, v3) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v25 = v31;
    (*(v31 + 32))(v9, v17, v3);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_1_25(&qword_1EAE3B978);
    OUTLINED_FUNCTION_73();
    (*(v25 + 8))(v9, v3);
  }

  sub_1934DE90C(v1 + v18[12], v14);
  if (__swift_getEnumTagSinglePayload(v14, 1, v3) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v26 = v31;
    (*(v31 + 32))(v9, v14, v3);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_1_25(&qword_1EAE3B978);
    OUTLINED_FUNCTION_73();
    (*(v26 + 8))(v9, v3);
  }

  v27 = (v1 + v18[13]);
  if (!v27[1])
  {
    return OUTLINED_FUNCTION_104_0();
  }

  v28 = *v27;
  OUTLINED_FUNCTION_103_0();
  return sub_19393C640();
}

uint64_t sub_1934DF324(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1934DF380(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193B18030](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      result = sub_19393CAE0();
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1934DF3E8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_19393BE00();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1934DF42C()
{
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, &qword_1EAEA8FA8);
  __swift_project_value_buffer(v0, &qword_1EAEA8FA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_193952700;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "contextID";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  v9 = *(*(v8 - 8) + 104);
  v9(v6, v7, v8);
  v10 = OUTLINED_FUNCTION_3_1(v5 + v2);
  *v11 = 2;
  *v10 = "itemID";
  v10[1] = 6;
  v12 = OUTLINED_FUNCTION_1_3(v10);
  (v9)(v12);
  v13 = OUTLINED_FUNCTION_3_1(v5 + 2 * v2);
  *v14 = 3;
  *v13 = "modelID";
  v13[1] = 7;
  v15 = OUTLINED_FUNCTION_1_3(v13);
  (v9)(v15);
  v16 = OUTLINED_FUNCTION_3_1(v5 + 3 * v2);
  *v17 = 4;
  *v16 = "embedding";
  v16[1] = 9;
  v18 = OUTLINED_FUNCTION_1_3(v16);
  (v9)(v18);
  v19 = OUTLINED_FUNCTION_3_1(v5 + 4 * v2);
  *v20 = 5;
  *v19 = "itemDate";
  v19[1] = 8;
  v21 = OUTLINED_FUNCTION_1_3(v19);
  (v9)(v21);
  v22 = OUTLINED_FUNCTION_3_1(v5 + 5 * v2);
  *v23 = 6;
  *v22 = "processedDate";
  v22[1] = 13;
  v24 = OUTLINED_FUNCTION_1_3(v22);
  (v9)(v24);
  v25 = OUTLINED_FUNCTION_3_1(v5 + 6 * v2);
  *v26 = 7;
  *v25 = "sourceType";
  *(v25 + 8) = 10;
  *(v25 + 16) = 2;
  (v9)();
  return sub_19393C410();
}

uint64_t sub_1934DF6E8()
{
  v1 = v0;
  while (1)
  {
    result = sub_19393C0E0();
    if (v1 || (v3 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v4 = *(type metadata accessor for ZeoliteEmbedding() + 28);
        goto LABEL_13;
      case 2:
        v7 = type metadata accessor for ZeoliteEmbedding();
        OUTLINED_FUNCTION_8_2(*(v7 + 32));
        sub_19393C190();
        goto LABEL_14;
      case 3:
        v4 = *(type metadata accessor for ZeoliteEmbedding() + 36);
        goto LABEL_13;
      case 4:
        v6 = type metadata accessor for ZeoliteEmbedding();
        OUTLINED_FUNCTION_8_2(*(v6 + 40));
        sub_19393C120();
        goto LABEL_14;
      case 5:
        v5 = *(type metadata accessor for ZeoliteEmbedding() + 44);
        goto LABEL_11;
      case 6:
        v8 = *(type metadata accessor for ZeoliteEmbedding() + 48);
LABEL_11:
        sub_1934976E4();
        goto LABEL_14;
      case 7:
        v4 = *(type metadata accessor for ZeoliteEmbedding() + 52);
LABEL_13:
        OUTLINED_FUNCTION_8_2(v4);
        sub_19393C200();
LABEL_14:
        v1 = 0;
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1934DF820()
{
  v2 = v1;
  result = type metadata accessor for ZeoliteEmbedding();
  v4 = result;
  v5 = (v0 + *(result + 28));
  if (v5[1])
  {
    v6 = *v5;
    result = OUTLINED_FUNCTION_2_7();
    v2 = v1;
  }

  if (!v2)
  {
    v7 = (v0 + v4[8]);
    if ((v7[1] & 1) == 0)
    {
      v8 = *v7;
      v1 = 0;
      sub_19393C360();
    }

    v9 = (v0 + v4[9]);
    if (!v9[1] || (v10 = *v9, result = OUTLINED_FUNCTION_2_7(), (v2 = v1) == 0))
    {
      if (!*(*(v0 + v4[10]) + 16) || (v1 = v2, result = sub_19393C310(), !v2))
      {
        OUTLINED_FUNCTION_79();
        result = sub_1934DF958();
        if (!v1)
        {
          OUTLINED_FUNCTION_79();
          result = sub_1934DFA94();
          v11 = (v0 + v4[13]);
          if (v11[1])
          {
            v12 = *v11;
            return OUTLINED_FUNCTION_2_7();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1934DF958()
{
  OUTLINED_FUNCTION_9_5();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = OUTLINED_FUNCTION_13_7();
  v7 = OUTLINED_FUNCTION_76(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = OUTLINED_FUNCTION_5_19();
  sub_1934DE90C(v3 + *(v10 + 44), v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v0) == 1)
  {
    return sub_1934DFCD4(v2);
  }

  v12 = OUTLINED_FUNCTION_7_16();
  v13(v12);
  OUTLINED_FUNCTION_3_24(v1, 5);
  v14 = OUTLINED_FUNCTION_12_15();
  return v15(v14);
}

uint64_t sub_1934DFA94()
{
  OUTLINED_FUNCTION_9_5();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = OUTLINED_FUNCTION_13_7();
  v7 = OUTLINED_FUNCTION_76(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = OUTLINED_FUNCTION_5_19();
  sub_1934DE90C(v3 + *(v10 + 48), v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v0) == 1)
  {
    return sub_1934DFCD4(v2);
  }

  v12 = OUTLINED_FUNCTION_7_16();
  v13(v12);
  OUTLINED_FUNCTION_3_24(v1, 6);
  v14 = OUTLINED_FUNCTION_12_15();
  return v15(v14);
}

uint64_t sub_1934DFBD0()
{
  OUTLINED_FUNCTION_12();
  v0 = qword_1EAE3B9F0;

  return v0;
}

uint64_t sub_1934DFC14@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EAE4F990 != -1)
  {
    OUTLINED_FUNCTION_0_23();
  }

  v2 = sub_19393C420();
  __swift_project_value_buffer(v2, &qword_1EAEA8FA8);
  OUTLINED_FUNCTION_5_6();
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t sub_1934DFCD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ZeoliteEmbedding.writeTimestamp.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for ZeoliteEmbedding();
  return OUTLINED_FUNCTION_9_11(&qword_1EAE3A9E8, &qword_19394F800, *(v0 + 20));
}

uint64_t type metadata accessor for ZeoliteEmbedding()
{
  result = qword_1ED50EEE0;
  if (!qword_1ED50EEE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ZeoliteEmbedding.bookmark.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for ZeoliteEmbedding();
  return OUTLINED_FUNCTION_9_11(&qword_1EAE3AA00, &unk_19394F8F0, *(v0 + 24));
}

uint64_t ZeoliteEmbedding.contextID.getter()
{
  v0 = type metadata accessor for ZeoliteEmbedding();
  OUTLINED_FUNCTION_4_4(*(v0 + 28));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t ZeoliteEmbedding.contextID.setter()
{
  v3 = (v1 + *(OUTLINED_FUNCTION_7_17() + 28));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t ZeoliteEmbedding.itemID.getter()
{
  v1 = (v0 + *(type metadata accessor for ZeoliteEmbedding() + 32));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t ZeoliteEmbedding.itemID.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for ZeoliteEmbedding();
  v6 = v2 + *(result + 32);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t ZeoliteEmbedding.modelID.getter()
{
  v0 = type metadata accessor for ZeoliteEmbedding();
  OUTLINED_FUNCTION_4_4(*(v0 + 36));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t ZeoliteEmbedding.modelID.setter()
{
  v3 = (v1 + *(OUTLINED_FUNCTION_7_17() + 36));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t ZeoliteEmbedding.embedding.getter()
{
  v1 = *(v0 + *(type metadata accessor for ZeoliteEmbedding() + 40));
}

uint64_t ZeoliteEmbedding.embedding.setter()
{
  v2 = *(OUTLINED_FUNCTION_3_25() + 40);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t ZeoliteEmbedding.itemDate.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for ZeoliteEmbedding();
  return OUTLINED_FUNCTION_9_11(&qword_1EAE3A9E8, &qword_19394F800, *(v0 + 44));
}

uint64_t ZeoliteEmbedding.processedDate.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for ZeoliteEmbedding();
  return OUTLINED_FUNCTION_9_11(&qword_1EAE3A9E8, &qword_19394F800, *(v0 + 48));
}

uint64_t ZeoliteEmbedding.sourceType.getter()
{
  v0 = type metadata accessor for ZeoliteEmbedding();
  OUTLINED_FUNCTION_4_4(*(v0 + 52));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t ZeoliteEmbedding.sourceType.setter()
{
  v3 = (v1 + *(OUTLINED_FUNCTION_7_17() + 52));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t ZeoliteEmbedding.hashValue.getter()
{
  sub_19393CAB0();
  ZeoliteEmbedding.hash(into:)(v1);
  return sub_19393CB00();
}

uint64_t sub_1934E03EC()
{
  sub_19393CAB0();
  ZeoliteEmbedding.hash(into:)(v1);
  return sub_19393CB00();
}

unint64_t sub_1934E042C()
{
  result = qword_1EAE3BA00;
  if (!qword_1EAE3BA00)
  {
    type metadata accessor for ZeoliteEmbedding();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BA00);
  }

  return result;
}

uint64_t sub_1934E04B0()
{
  sub_19349D140();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_19349D198();
    if (v4 > 0x3F)
    {
      return v3;
    }

    OUTLINED_FUNCTION_0_24(v3, &qword_1ED508290, MEMORY[0x1E69E6158]);
    if (v6 > 0x3F)
    {
      return v5;
    }

    OUTLINED_FUNCTION_0_24(v5, &qword_1ED506678, MEMORY[0x1E69E7360]);
    if (v7 > 0x3F)
    {
      return v3;
    }

    sub_1934E05F8(319, &qword_1ED5066A0, MEMORY[0x1E69E6448], MEMORY[0x1E69E62F8]);
    if (v8 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

void sub_1934E05F8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

_BYTE *_s21GenerativeExperiencesOwst(_BYTE *result, int a2, int a3)
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

uint64_t sub_1934E0714()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED510118);
  v5 = __swift_project_value_buffer(v4, qword_1ED510118);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v3, 1, v4);
  if (result != 1)
  {
    return (*(*(v4 - 8) + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

id static Library.Streams.GenerativeExperiences.TransparencyLog.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:604800.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:5242880 protectionClass:3 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_5 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED510118);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BA08, &qword_193958038);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = sub_19393C6C0();
    v11 = sub_19343E840(v7, v8, ObjCClassFromMetadata, v4, 0, v10, 0, 1, 0, 1, 0, 0, 0xD000000000000021, 0x8000000193A17BA0, v5);

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t static Library.Streams.GenerativeExperiences.TransparencyLog.attribute(_:)(void (*a1)(void))
{
  result = sub_1934E0B34(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1934E0B70(void (*a1)(void))
{
  result = sub_1934E0B34(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1934E0BD8(uint64_t a1)
{
  result = sub_1934E0C00();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1934E0C00()
{
  result = qword_1ED5073C0;
  if (!qword_1ED5073C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5073C0);
  }

  return result;
}

_BYTE *_s15TransparencyLogOwst(_BYTE *result, int a2, int a3)
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

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> GenerativeExperiencesTransparencyLog.json()()
{
  v1 = v0;
  v31 = sub_19393C090();
  v2 = OUTLINED_FUNCTION_0(v31);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v9 = v8 - v7;
  v10 = type metadata accessor for GenerativeExperiencesTransparencyLog();
  v11 = OUTLINED_FUNCTION_4_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BA10, &qword_1939580B0);
  OUTLINED_FUNCTION_4_1(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v30 - v21;
  sub_1934E0EDC(v1, v16);
  sub_1934470C8(v16, v10, v22);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v23, &qword_1EAE3BA10, &qword_1939580B0);
  v24 = sub_19393C250();
  v26 = v25;
  (*(v4 + 8))(v9, v31);
  sub_19344E6DC(v22, &qword_1EAE3BA10, &qword_1939580B0);
  v27 = v24;
  v28 = v26;
  result._object = v28;
  result._countAndFlagsBits = v27;
  return result;
}

uint64_t sub_1934E0EDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerativeExperiencesTransparencyLog();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static GenerativeExperiencesTransparencyLog.event(from:)@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_19393C070();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  OUTLINED_FUNCTION_5_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BA10, &qword_1939580B0);
  OUTLINED_FUNCTION_4_1(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v11, &qword_1EAE3BA10, &qword_1939580B0);
  result = sub_19393C260();
  if (!v1)
  {
    return sub_1934E1080(v10, a1);
  }

  return result;
}

uint64_t sub_1934E1080(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerativeExperiencesTransparencyLog();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static GenerativeExperiencesTransparencyLog.event(from:dataVersion:writeTimestamp:bookmark:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v40 = a6;
  v41 = a5;
  v39 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BA10, &qword_1939580B0);
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
  if (*sub_1934E393C() == a3)
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
      sub_1934E1080(v14, v40);
      v33 = type metadata accessor for GenerativeExperiencesTransparencyLog();
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
    OUTLINED_FUNCTION_11();
    swift_allocError();
    *v31 = a3;
    *(v31 + 48) = 0;
    return swift_willThrow();
  }
}

uint64_t GenerativeExperiencesTransparencyLog.serialize()()
{
  v1 = type metadata accessor for GenerativeExperiencesTransparencyLog();
  v2 = OUTLINED_FUNCTION_4_1(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BA10, &qword_1939580B0);
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - v12;
  sub_1934E0EDC(v0, v7);
  sub_1934470C8(v7, v1, v13);
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v14, &qword_1EAE3BA10, &qword_1939580B0);
  v15 = sub_19393C290();
  sub_19344E6DC(v13, &qword_1EAE3BA10, &qword_1939580B0);
  return v15;
}

id static GenerativeExperiencesTransparencyLog.columns.getter()
{
  v170 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  *(swift_initStackObject() + 16) = xmmword_193950B10;
  v1 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v1, v2, v3, v4, v5, v6, v7, v8, v9);
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  *(v0 + 32) = sub_19393C850();
  v10 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  result = sub_19343D150(0x6D617473656D6974, 0xE900000000000070, 3, 0, v0, 0, 2);
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_7_2(result);
  inited = swift_initStackObject();
  v20 = OUTLINED_FUNCTION_2_4(inited, v13, v14, v15, v16, v17, v18, v19, xmmword_193950B10);
  OUTLINED_FUNCTION_5_10(v20, v21, v22, v23, v24, v25, v26, v27, v28);
  v29 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v29);
  v30 = OUTLINED_FUNCTION_105();
  result = OUTLINED_FUNCTION_3_5(v30, 0xEA00000000007265);
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_7_2(result);
  v31 = swift_initStackObject();
  v39 = OUTLINED_FUNCTION_2_4(v31, v32, v33, v34, v35, v36, v37, v38, v163);
  OUTLINED_FUNCTION_5_10(v39, v40, v41, v42, v43, v44, v45, v46, v47);
  v48 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v48);
  result = OUTLINED_FUNCTION_3_5(0x74706D6F7270, 0xE600000000000000);
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_7_2(result);
  v49 = swift_initStackObject();
  v57 = OUTLINED_FUNCTION_2_4(v49, v50, v51, v52, v53, v54, v55, v56, v164);
  OUTLINED_FUNCTION_5_10(v57, v58, v59, v60, v61, v62, v63, v64, v65);
  v66 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v66);
  v67 = OUTLINED_FUNCTION_14_19();
  result = OUTLINED_FUNCTION_3_5(v67, 0xE800000000000000);
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_7_2(result);
  v68 = swift_initStackObject();
  v76 = OUTLINED_FUNCTION_2_4(v68, v69, v70, v71, v72, v73, v74, v75, v165);
  OUTLINED_FUNCTION_5_10(v76, v77, v78, v79, v80, v81, v82, v83, v84);
  v85 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v85);
  v86 = OUTLINED_FUNCTION_12_3();
  result = OUTLINED_FUNCTION_3_5(v86 & 0xFFFF0000FFFFFFFFLL | 0x6C00000000, 0xE500000000000000);
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_7_2(result);
  v87 = swift_initStackObject();
  v95 = OUTLINED_FUNCTION_2_4(v87, v88, v89, v90, v91, v92, v93, v94, v166);
  OUTLINED_FUNCTION_5_10(v95, v96, v97, v98, v99, v100, v101, v102, v103);
  v104 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v104);
  v105 = OUTLINED_FUNCTION_12_3();
  result = OUTLINED_FUNCTION_3_5(v105 | 0x7265566C00000000, 0xEC0000006E6F6973);
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_7_2(result);
  v106 = swift_initStackObject();
  v114 = OUTLINED_FUNCTION_2_4(v106, v107, v108, v109, v110, v111, v112, v113, v167);
  OUTLINED_FUNCTION_5_10(v114, v115, v116, v117, v118, v119, v120, v121, v122);
  v123 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v123);
  v124 = OUTLINED_FUNCTION_17_10();
  result = OUTLINED_FUNCTION_3_5(v124, 0xE700000000000000);
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_7_2(result);
  v125 = swift_initStackObject();
  v133 = OUTLINED_FUNCTION_2_4(v125, v126, v127, v128, v129, v130, v131, v132, v168);
  OUTLINED_FUNCTION_5_10(v133, v134, v135, v136, v137, v138, v139, v140, v141);
  v142 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v142);
  OUTLINED_FUNCTION_16_10();
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v143, v144, v145, v146, v0, 2, 0);
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_7_2(result);
  *(swift_initStackObject() + 16) = v169;
  v147 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v147, v148, v149, v150, v151, v152, v153, v154, v155);
  v156 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v156);
  result = OUTLINED_FUNCTION_3_5(0xD000000000000010, 0x8000000193A17C10);
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_7_2(result);
  *(swift_initStackObject() + 16) = v169;
  v157 = OUTLINED_FUNCTION_6_4();
  *(v157 + 16) = v169;
  *(v157 + 32) = sub_19393C850();
  v158 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v159, v160, v161, v162, v157, 4, 0);
  if (result)
  {
    OUTLINED_FUNCTION_7_2(result);
    return v170;
  }

LABEL_21:
  __break(1u);
  return result;
}

int *sub_1934E1964@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v43 = a3;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800) - 8) + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v43 - v8;
  v10 = sub_19393BE00();
  v11 = OUTLINED_FUNCTION_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  v18 = v17 - v16;
  v19 = a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070;
  if (!v19 && (OUTLINED_FUNCTION_59_0() & 1) == 0)
  {
    v24 = a1 == OUTLINED_FUNCTION_105() && a2 == v23;
    if (v24 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
    {
      result = type metadata accessor for GenerativeExperiencesTransparencyLog();
      v25 = result[8];
    }

    else
    {
      v28 = a1 == 0x74706D6F7270 && a2 == 0xE600000000000000;
      if (v28 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
      {
        result = type metadata accessor for GenerativeExperiencesTransparencyLog();
        v25 = result[9];
      }

      else
      {
        v29 = a1 == OUTLINED_FUNCTION_14_19() && a2 == 0xE800000000000000;
        if (v29 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
        {
          result = type metadata accessor for GenerativeExperiencesTransparencyLog();
          v25 = result[10];
        }

        else
        {
          v30 = a1 == (OUTLINED_FUNCTION_12_3() & 0xFFFF0000FFFFFFFFLL | 0x6C00000000) && a2 == 0xE500000000000000;
          if (v30 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
          {
            result = type metadata accessor for GenerativeExperiencesTransparencyLog();
            v25 = result[11];
          }

          else
          {
            v32 = a1 == (OUTLINED_FUNCTION_12_3() | 0x7265566C00000000) && a2 == v31;
            if (v32 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
            {
              result = type metadata accessor for GenerativeExperiencesTransparencyLog();
              v25 = result[12];
            }

            else
            {
              v33 = a1 == OUTLINED_FUNCTION_17_10() && a2 == 0xE700000000000000;
              if (!v33 && (OUTLINED_FUNCTION_59_0() & 1) == 0)
              {
                v34 = a1 == OUTLINED_FUNCTION_16_10() && a2 == 0xE900000000000065;
                if (v34 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
                {
                  result = type metadata accessor for GenerativeExperiencesTransparencyLog();
                  v35 = v3 + result[14];
                  if (*(v35 + 4))
                  {
                    goto LABEL_8;
                  }

                  LODWORD(v44) = *v35;
                }

                else
                {
                  v36 = a1 == 0xD000000000000010 && 0x8000000193A17C10 == a2;
                  if (v36 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
                  {
                    result = type metadata accessor for GenerativeExperiencesTransparencyLog();
                    v25 = result[15];
                    goto LABEL_16;
                  }

                  v37 = a1 == 0xD000000000000014 && 0x8000000193A17C30 == a2;
                  if (!v37 && (OUTLINED_FUNCTION_59_0() & 1) == 0)
                  {
                    sub_19349AB64();
                    OUTLINED_FUNCTION_11();
                    swift_allocError();
                    v41 = v40;
                    *v40 = a1;
                    v40[1] = a2;
                    v40[5] = type metadata accessor for GenerativeExperiencesTransparencyLog();
                    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v41 + 2);
                    sub_1934E0EDC(v3, boxed_opaque_existential_1Tm);
                    *(v41 + 48) = 1;
                    swift_willThrow();
                  }

                  v38 = v3 + *(type metadata accessor for GenerativeExperiencesTransparencyLog() + 64);
                  v39 = *v38;
                  LOBYTE(v38) = *(v38 + 8);
                  v44 = v39;
                  LOBYTE(v45) = v38;
                }

                return sub_1934948FC();
              }

              result = type metadata accessor for GenerativeExperiencesTransparencyLog();
              v25 = result[13];
            }
          }
        }
      }
    }

LABEL_16:
    v26 = (v3 + v25);
    v27 = *(v3 + v25 + 8);
    if (!v27)
    {
      goto LABEL_8;
    }

    v44 = *v26;
    v45 = v27;
    return sub_1934948FC();
  }

  v20 = type metadata accessor for GenerativeExperiencesTransparencyLog();
  sub_1934DE90C(v3 + *(v20 + 28), v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    result = sub_19344E6DC(v9, &qword_1EAE3A9E8, &qword_19394F800);
LABEL_8:
    v22 = v43;
    *v43 = 0u;
    v22[1] = 0u;
    return result;
  }

  (*(v13 + 32))(v18, v9, v10);
  sub_1934948FC();
  return (*(v13 + 8))(v18, v10);
}

uint64_t GenerativeExperiencesTransparencyLog.init()@<X0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for GenerativeExperiencesTransparencyLog();
  v3 = v2[5];
  sub_19349C79C();
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  v5 = v2[7];
  sub_1934E0648();
  v16 = (a1 + v2[8]);
  j__OUTLINED_FUNCTION_10_1();
  v15 = (a1 + v2[9]);
  j__OUTLINED_FUNCTION_10_1();
  v14 = (a1 + v2[10]);
  j__OUTLINED_FUNCTION_10_1();
  v13 = (a1 + v2[11]);
  j__OUTLINED_FUNCTION_10_1();
  v12 = (a1 + v2[12]);
  j__OUTLINED_FUNCTION_10_1();
  v11 = (a1 + v2[13]);
  j__OUTLINED_FUNCTION_10_1();
  v6 = a1 + v2[14];
  sub_1934E3F94();
  v7 = (a1 + v2[15]);
  j__OUTLINED_FUNCTION_10_1();
  *a1 = *sub_1934E393C();
  sub_193442B60(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v8 = sub_19393BE00();
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v8);
  sub_193442B60(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  sub_193442B60(a1 + v5, &qword_1EAE3A9E8, &qword_19394F800);
  __swift_storeEnumTagSinglePayload(a1 + v5, 1, 1, v8);

  *v16 = 0;
  v16[1] = 0;

  *v15 = 0;
  v15[1] = 0;

  *v14 = 0;
  v14[1] = 0;
  *v13 = 0;
  v13[1] = 0;
  *v12 = 0;
  v12[1] = 0;
  *v11 = 0;
  v11[1] = 0;
  *v6 = 0;
  v6[4] = 1;
  *v7 = 0;
  v7[1] = 0;
  v10 = a1 + v2[16];
  *v10 = 0;
  v10[8] = 0;
  return result;
}

uint64_t static GenerativeExperiencesTransparencyLog.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_19393BE00();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v87 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B968, &qword_193972430);
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v87 - v19;
  v21 = type metadata accessor for GenerativeExperiencesTransparencyLog();
  v22 = v21[7];
  v23 = *(v17 + 56);
  sub_1934DE90C(a1 + v22, v20);
  sub_1934DE90C(a2 + v22, &v20[v23]);
  OUTLINED_FUNCTION_31(v20);
  if (!v24)
  {
    sub_1934DE90C(v20, v15);
    OUTLINED_FUNCTION_31(&v20[v23]);
    if (!v24)
    {
      (*(v7 + 32))(v11, &v20[v23], v4);
      sub_1934DF3E8(&qword_1EAE3A848);
      v27 = sub_19393C550();
      v28 = *(v7 + 8);
      v28(v11, v4);
      v28(v15, v4);
      sub_193442B60(v20, &qword_1EAE3A9E8, &qword_19394F800);
      if ((v27 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_13;
    }

    (*(v7 + 8))(v15, v4);
LABEL_9:
    sub_193442B60(v20, &qword_1EAE3B968, &qword_193972430);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_31(&v20[v23]);
  if (!v24)
  {
    goto LABEL_9;
  }

  sub_193442B60(v20, &qword_1EAE3A9E8, &qword_19394F800);
LABEL_13:
  v29 = v21[8];
  OUTLINED_FUNCTION_3();
  if (v32)
  {
    if (!v30)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_5(v31);
    v35 = v24 && v33 == v34;
    if (!v35 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v30)
  {
    goto LABEL_10;
  }

  v36 = v21[9];
  OUTLINED_FUNCTION_3();
  if (v39)
  {
    if (!v37)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_5(v38);
    v42 = v24 && v40 == v41;
    if (!v42 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v37)
  {
    goto LABEL_10;
  }

  v43 = v21[10];
  OUTLINED_FUNCTION_3();
  if (v46)
  {
    if (!v44)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_5(v45);
    v49 = v24 && v47 == v48;
    if (!v49 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v44)
  {
    goto LABEL_10;
  }

  v50 = v21[11];
  OUTLINED_FUNCTION_3();
  if (v53)
  {
    if (!v51)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_5(v52);
    v56 = v24 && v54 == v55;
    if (!v56 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v51)
  {
    goto LABEL_10;
  }

  v57 = v21[12];
  OUTLINED_FUNCTION_3();
  if (v60)
  {
    if (!v58)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_5(v59);
    v63 = v24 && v61 == v62;
    if (!v63 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v58)
  {
    goto LABEL_10;
  }

  v64 = v21[13];
  OUTLINED_FUNCTION_3();
  if (v67)
  {
    if (!v65)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_5(v66);
    v70 = v24 && v68 == v69;
    if (!v70 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v65)
  {
    goto LABEL_10;
  }

  v71 = v21[14];
  v72 = (a1 + v71);
  v73 = *(a1 + v71 + 4);
  v74 = (a2 + v71);
  v75 = *(a2 + v71 + 4);
  if (v73)
  {
    if (!v75)
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (*v72 != *v74)
    {
      LOBYTE(v75) = 1;
    }

    if (v75)
    {
      goto LABEL_10;
    }
  }

  v76 = v21[15];
  OUTLINED_FUNCTION_3();
  if (v79)
  {
    if (v77)
    {
      OUTLINED_FUNCTION_5(v78);
      v82 = v24 && v80 == v81;
      if (v82 || (sub_19393CA30() & 1) != 0)
      {
        goto LABEL_82;
      }
    }
  }

  else if (!v77)
  {
LABEL_82:
    v83 = v21[16];
    v84 = *(a1 + v83 + 8);
    v89 = *(a1 + v83);
    v90 = v84;
    v85 = (a2 + v83);
    v86 = *v85;
    LOBYTE(v85) = *(v85 + 8);
    v87 = v86;
    v88 = v85;
    sub_1934E2494();
    v25 = sub_19393C550();
    return v25 & 1;
  }

LABEL_10:
  v25 = 0;
  return v25 & 1;
}