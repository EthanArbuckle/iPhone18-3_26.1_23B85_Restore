uint64_t sub_19799B5DC()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v2 = *(v1 + 80);
  v3 = *(v1 + 24);
  v4 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_1_3();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_19799B6D4()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[9];
  sub_197956214(v0[8]);
  v2 = v0[7];

  OUTLINED_FUNCTION_13();

  return v3();
}

uint64_t sub_19799B734(uint64_t a1)
{
  OUTLINED_FUNCTION_7_2();
  v3 = *(v2 + 80);
  v4 = type metadata accessor for BufferedStreamSequence.BufferValue();
  OUTLINED_FUNCTION_2(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v13 - v10);
  sub_19799B088(a1);
  *v11 = a1;
  swift_storeEnumTagMultiPayload();
  MEMORY[0x19A8EBBD0](a1);
  sub_19799AE74();
  return (*(v6 + 8))(v11, v4);
}

uint64_t sub_19799B820()
{
  OUTLINED_FUNCTION_18();
  *(v1 + 160) = v2;
  *(v1 + 56) = v3;
  *(v1 + 64) = v0;
  OUTLINED_FUNCTION_7_2();
  *(v1 + 72) = *(v4 + 80);
  v5 = type metadata accessor for BufferedStreamSequence.BufferValue();
  *(v1 + 80) = v5;
  OUTLINED_FUNCTION_2(v5);
  *(v1 + 88) = v6;
  v8 = *(v7 + 64) + 15;
  *(v1 + 96) = swift_task_alloc();
  *(v1 + 104) = swift_task_alloc();
  v9 = sub_197A87DB8();
  *(v1 + 112) = v9;
  OUTLINED_FUNCTION_10(v9);
  *(v1 + 120) = v10;
  v12 = *(v11 + 64);
  *(v1 + 128) = OUTLINED_FUNCTION_78_0();
  v13 = OUTLINED_FUNCTION_1_3();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

void sub_19799B94C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);
  *(v0 + 40) = sub_19799A9AC();
  *(v0 + 136) = sub_197A87448();
  *(v0 + 144) = swift_getWitnessTable();
  LOBYTE(v2) = sub_197A87D28();

  if (v2)
  {
    v4 = *(v0 + 64);
    v3 = *(v0 + 72);
    type metadata accessor for BufferedStreamSequence();
    swift_getWitnessTable();
    v5 = *(MEMORY[0x1E69E88D0] + 4);
    v6 = swift_task_alloc();
    *(v0 + 152) = v6;
    *v6 = v0;
    v6[1] = sub_19799BC8C;
    v7 = *(v0 + 64);
    OUTLINED_FUNCTION_12_0();

    MEMORY[0x1EEE6DDE0]();
  }

  else
  {
    v10 = *(v0 + 136);
    v9 = *(v0 + 144);
    v11 = *(v0 + 128);
    v12 = *(v0 + 80);
    v13 = *(v0 + 64);
    v14 = sub_19799A9AC();
    *(v0 + 48) = v14;
    sub_197A87D18();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);
    v16 = *(v0 + 128);
    if (EnumTagSinglePayload != 1)
    {
      v17 = *(v0 + 160);
      (*(*(v0 + 88) + 32))(*(v0 + 56), *(v0 + 128), *(v0 + 80));

      if (v17 == 1)
      {
        v18 = *(v0 + 104);
        OUTLINED_FUNCTION_13_3();
        v19(v18);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v21 = *(v11 + 8);
        v21(v18, v14);
        if (!EnumCaseMultiPayload)
        {
          OUTLINED_FUNCTION_9_2();
          sub_197A873A8();
          v21(EnumCaseMultiPayload, v10);
          swift_endAccess();
        }
      }

      v22 = *(v0 + 128);
      v23 = *(v0 + 96);
      v24 = *(v0 + 104);

      OUTLINED_FUNCTION_13();
      OUTLINED_FUNCTION_12_0();

      __asm { BRAA            X1, X16 }
    }

    (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));

    sub_197A87ED8();
    OUTLINED_FUNCTION_12_0();
  }
}

uint64_t sub_19799BC8C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v2 = *(v1 + 152);
  v3 = *(v1 + 64);
  v4 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_1_3();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_19799BD84()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 128);
  v4 = *(v0 + 80);
  v5 = *(v0 + 64);
  *(v0 + 48) = sub_19799A9AC();
  sub_197A87D18();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v3, 1, v4);
  v7 = *(v0 + 128);
  if (EnumTagSinglePayload != 1)
  {
    v8 = *(v0 + 160);
    (*(*(v0 + 88) + 32))(*(v0 + 56), *(v0 + 128), *(v0 + 80));

    if (v8 == 1)
    {
      v9 = *(v0 + 104);
      OUTLINED_FUNCTION_13_3();
      v10(v9);
      OUTLINED_FUNCTION_60();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v12 = *(v4 + 8);
      v13 = OUTLINED_FUNCTION_60();
      v12(v13);
      if (!EnumCaseMultiPayload)
      {
        OUTLINED_FUNCTION_9_2();
        sub_197A873A8();
        (v12)(EnumCaseMultiPayload, v3);
        swift_endAccess();
      }
    }

    v14 = *(v0 + 128);
    v15 = *(v0 + 96);
    v16 = *(v0 + 104);

    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_12_0();

    __asm { BRAA            X1, X16 }
  }

  (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));

  sub_197A87ED8();
  OUTLINED_FUNCTION_12_0();
}

uint64_t sub_19799BF70(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48E88, &qword_197A8B7F0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v8 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAF48F28, &qword_197A96700);
  (*(*(v6 - 8) + 16))(v5, a1, v6);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
  return sub_19799AA3C(v5);
}

uint64_t sub_19799C054()
{
  OUTLINED_FUNCTION_9();
  v1[2] = v2;
  v1[3] = v0;
  OUTLINED_FUNCTION_7_2();
  v1[4] = *(v3 + 80);
  v4 = type metadata accessor for BufferedStreamSequence.BufferValue();
  v1[5] = v4;
  v5 = *(*(v4 - 8) + 64);
  v1[6] = OUTLINED_FUNCTION_78_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  v1[7] = v6;
  *v6 = v7;
  OUTLINED_FUNCTION_8_1(v6);

  return sub_19799B820();
}

uint64_t sub_19799C120()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v2 = *(v1 + 56);
  v3 = *(v1 + 24);
  v4 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_1_3();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_19799C218()
{
  OUTLINED_FUNCTION_18();
  v1 = v0[5];
  v2 = v0[6];
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v4 = *v2;
      swift_willThrow();

      OUTLINED_FUNCTION_13();
      goto LABEL_7;
    }

    v6 = 1;
  }

  else
  {
    (*(*(v0[4] - 8) + 32))(v0[2], v2);
    v6 = 0;
    v7 = v0[6];
  }

  __swift_storeEnumTagSinglePayload(v0[2], v6, 1, v0[4]);

  OUTLINED_FUNCTION_13();
LABEL_7:

  return v5();
}

uint64_t sub_19799C304()
{
  OUTLINED_FUNCTION_9();
  v1[2] = v0;
  OUTLINED_FUNCTION_7_2();
  v3 = *(v2 + 80);
  v4 = type metadata accessor for BufferedStreamSequence.BufferValue();
  v1[3] = v4;
  OUTLINED_FUNCTION_10(v4);
  v1[4] = v5;
  v7 = *(v6 + 64);
  v1[5] = OUTLINED_FUNCTION_78_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  v1[6] = v8;
  *v8 = v9;
  OUTLINED_FUNCTION_8_1(v8);

  return sub_19799B820();
}

uint64_t sub_19799C3F0()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v2 = *(v1 + 48);
  v3 = *(v1 + 16);
  v4 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_1_3();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_19799C4E8()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[5];
  v2 = v0[3];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = *v1;
  }

  else
  {
    (*(v0[4] + 8))(v1, v2);
    v3 = 0;
    v4 = v0[5];
  }

  v5 = v0[1];

  return v5(v3);
}

uint64_t BufferedStreamSequence.deinit()
{
  v1 = *(v0 + 112);

  sub_19799C90C(v0 + qword_1EAF48E80);
  v2 = *(v0 + qword_1EAF48E90 + 8);
  sub_197956214(*(v0 + qword_1EAF48E90));
  v3 = *(v0 + qword_1EAF48E98 + 8);
  sub_197956214(*(v0 + qword_1EAF48E98));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t BufferedStreamSequence.__deallocating_deinit()
{
  BufferedStreamSequence.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_19799C644@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  sub_19799AE6C();

  *a1 = v3;
  return result;
}

uint64_t sub_19799C678()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_197960E38;

  return sub_19799C054();
}

uint64_t sub_19799C714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = *(MEMORY[0x1E69E85D8] + 4);
  v13 = swift_task_alloc();
  *(v6 + 32) = v13;
  v14 = *(a5 + 80);
  v15 = type metadata accessor for BufferedStreamSequence();
  *v13 = v6;
  v13[1] = sub_19799C7FC;

  return MEMORY[0x1EEE6D8E0](a1, a2, a3, v15, a6, v6 + 16);
}

uint64_t sub_19799C7FC()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  v4 = *(v2 + 32);
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;

  if (v0)
  {
    **(v3 + 24) = *(v3 + 16);
  }

  OUTLINED_FUNCTION_13();

  return v7();
}

uint64_t sub_19799C90C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48E88, &qword_197A8B7F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_19799C99C()
{
  sub_19799CF30();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initClassMetadata2();
  }
}

uint64_t dispatch thunk of BufferedStreamSequence.pushElement(_:)()
{
  OUTLINED_FUNCTION_18();
  v2 = v1;
  OUTLINED_FUNCTION_7_2();
  v7 = (*(v3 + 264) + **(v3 + 264));
  v4 = *(*(v3 + 264) + 4);
  v5 = swift_task_alloc();
  *(v0 + 16) = v5;
  *v5 = v0;
  v5[1] = sub_197960E38;

  return v7(v2);
}

uint64_t dispatch thunk of BufferedStreamSequence.next()()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_7_2();
  v7 = (*(v1 + 288) + **(v1 + 288));
  v2 = *(*(v1 + 288) + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v0 + 16) = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_8_1(v3);

  return v7(v5);
}

uint64_t dispatch thunk of BufferedStreamSequence.immediateError.getter()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_7_2();
  v5 = (*(v1 + 296) + **(v1 + 296));
  v2 = *(*(v1 + 296) + 4);
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_19799CE44;

  return v5();
}

uint64_t sub_19799CE44()
{
  OUTLINED_FUNCTION_9();
  v2 = v1;
  OUTLINED_FUNCTION_21();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2);
}

void sub_19799CF30()
{
  if (!qword_1EAF48F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EAF48F28, &qword_197A96700);
    v0 = sub_197A87DB8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAF48F20);
    }
  }
}

unint64_t sub_19799CF9C(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_19799D2FC();
    if (v4 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_19799D014(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_22;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 253) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_22:
      v11 = *(a1 + v4);
      if (v11 >= 3)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_22;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *a1;
        break;
      case 3:
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *a1;
        break;
      default:
        LODWORD(v5) = *a1;
        break;
    }
  }

  return (v5 | v10) + 254;
}

void sub_19799D138(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFE)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 253) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFD)
  {
    v9 = a2 - 254;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

unint64_t sub_19799D2FC()
{
  result = qword_1EAF48FB0;
  if (!qword_1EAF48FB0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EAF48FB0);
  }

  return result;
}

uint64_t sub_19799D358(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48E88, &qword_197A8B7F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_19799D3C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48E88, &qword_197A8B7F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19799D440()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v1 + 16) = v7;
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_8_1(v7);

  return sub_19799B194(v9, v2, v3, v4, v5, v6);
}

uint64_t BuiltInInferenceProvider.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_197A87EF8();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_19799D578@<X0>(BOOL *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return BuiltInInferenceProvider.init(rawValue:)(a1);
}

unint64_t sub_19799D5A4()
{
  result = qword_1EAF48FB8;
  if (!qword_1EAF48FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF48FB8);
  }

  return result;
}

unint64_t sub_19799D6B8()
{
  result = qword_1EAF48FC0;
  if (!qword_1EAF48FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF48FC8, &qword_197A8BA70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF48FC0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BuiltInInferenceProvider(_BYTE *result, int a2, int a3)
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

unint64_t sub_19799D7C8()
{
  result = qword_1EAF48FD0;
  if (!qword_1EAF48FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF48FD0);
  }

  return result;
}

uint64_t sub_19799D81C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = v4;
  v5[5] = a4;
  v5[3] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = sub_197A87B58();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v5[6] = v6;
  v5[7] = v8;

  return MEMORY[0x1EEE6DFA0](sub_19799D8C0, v6, v8);
}

uint64_t sub_19799D8C0()
{
  OUTLINED_FUNCTION_9();
  v1 = **(v0 + 32);
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v0 + 64) = v2;
  *v2 = v3;
  OUTLINED_FUNCTION_77_2(v2);

  return sub_1979A55D8();
}

uint64_t sub_19799D94C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  v3[9] = v0;

  if (v0)
  {
    v9 = v3[6];
    v10 = v3[7];

    return MEMORY[0x1EEE6DFA0](sub_19799DA60, v9, v10);
  }

  else
  {
    OUTLINED_FUNCTION_13();

    return v11();
  }
}

uint64_t sub_19799DA60()
{
  OUTLINED_FUNCTION_18();
  v1 = v0[5];
  v0[2] = v0[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  type metadata accessor for InferenceError(0);
  OUTLINED_FUNCTION_63();
  swift_dynamicCast();
  OUTLINED_FUNCTION_1_4();
  sub_19796AA70(v2);
  OUTLINED_FUNCTION_119();
  swift_willThrowTypedImpl();
  OUTLINED_FUNCTION_23_1();

  return v3();
}

uint64_t sub_19799DB34()
{
  OUTLINED_FUNCTION_18();
  v1[3] = v2;
  v1[4] = v0;
  if (v3)
  {
    OUTLINED_FUNCTION_126_0();
    v4 = sub_197A87B58();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v1[5] = v4;
  v1[6] = v6;

  return MEMORY[0x1EEE6DFA0](sub_19799DBC4, v4, v6);
}

uint64_t sub_19799DBC4()
{
  OUTLINED_FUNCTION_9();
  v1 = **(v0 + 32);
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v0 + 56) = v2;
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_77_2(v2);

  return sub_197A12964(v4);
}

uint64_t sub_19799DC50()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  v3[8] = v0;

  if (v0)
  {
    v9 = v3[5];
    v10 = v3[6];

    return MEMORY[0x1EEE6DFA0](sub_1979AA294, v9, v10);
  }

  else
  {
    OUTLINED_FUNCTION_13();

    return v11();
  }
}

uint64_t sub_19799DD64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[3] = a2;
  v5 = swift_task_alloc();
  v4[6] = v5;
  *v5 = v4;
  v5[1] = sub_19799DE04;

  return sub_1979A40C8();
}

uint64_t sub_19799DE04()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  v3[7] = v0;

  if (v0)
  {
    if (v3[3])
    {
      v9 = v3[4];
      swift_getObjectType();
      v10 = sub_197A87B58();
      v12 = v11;
    }

    else
    {
      v10 = 0;
      v12 = 0;
    }

    return MEMORY[0x1EEE6DFA0](sub_19799DF58, v10, v12);
  }

  else
  {
    OUTLINED_FUNCTION_13();

    return v13();
  }
}

uint64_t sub_19799DF58()
{
  OUTLINED_FUNCTION_18();
  v1 = v0[5];
  v0[2] = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  type metadata accessor for InferenceError(0);
  OUTLINED_FUNCTION_63();
  swift_dynamicCast();
  OUTLINED_FUNCTION_1_4();
  sub_19796AA70(v2);
  OUTLINED_FUNCTION_119();
  swift_willThrowTypedImpl();
  OUTLINED_FUNCTION_23_1();

  return v3();
}

uint64_t sub_19799E02C()
{
  OUTLINED_FUNCTION_18();
  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  if (v3)
  {
    OUTLINED_FUNCTION_126_0();
    v4 = sub_197A87B58();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  return MEMORY[0x1EEE6DFA0](sub_19799E0B8, v4, v6);
}

uint64_t sub_19799E0B8()
{
  OUTLINED_FUNCTION_9();
  v1 = **(v0 + 24);
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v0 + 32) = v2;
  *v2 = v3;
  v2[1] = sub_19799E150;
  v4 = *(v0 + 16);

  return InputStreamSequence.next()(v4);
}

uint64_t sub_19799E150()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v2 = *(v1 + 32);
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  OUTLINED_FUNCTION_13();

  return v5();
}

uint64_t sub_19799E234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return OUTLINED_FUNCTION_4(sub_19799E250);
}

uint64_t sub_19799E250()
{
  OUTLINED_FUNCTION_9();
  v1 = **(v0 + 48);
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v0 + 56) = v2;
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_77_2(v2);

  return sub_197A12964(v4);
}

uint64_t sub_19799E2DC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  v3[8] = v0;

  if (v0)
  {
    if (v3[4])
    {
      v9 = v3[5];
      swift_getObjectType();
      v10 = sub_197A87B58();
      v12 = v11;
    }

    else
    {
      v10 = 0;
      v12 = 0;
    }

    return MEMORY[0x1EEE6DFA0](sub_1979AA294, v10, v12);
  }

  else
  {
    OUTLINED_FUNCTION_13();

    return v13();
  }
}

uint64_t sub_19799E430()
{
  OUTLINED_FUNCTION_18();
  v1[3] = v2;
  v1[4] = v0;
  if (v3)
  {
    OUTLINED_FUNCTION_126_0();
    v4 = sub_197A87B58();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v1[5] = v4;
  v1[6] = v6;

  return MEMORY[0x1EEE6DFA0](sub_19799E4C0, v4, v6);
}

uint64_t sub_19799E4C0()
{
  OUTLINED_FUNCTION_9();
  v1 = **(v0 + 32);
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v0 + 56) = v2;
  *v2 = v3;
  OUTLINED_FUNCTION_77_2(v2);

  return InferenceMonitor.AsyncIterator.next()();
}

uint64_t sub_19799E550()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  v3[8] = v0;

  if (v0)
  {
    v9 = v3[5];
    v10 = v3[6];

    return MEMORY[0x1EEE6DFA0](sub_19799E664, v9, v10);
  }

  else
  {
    OUTLINED_FUNCTION_13();

    return v11();
  }
}

uint64_t sub_19799E664()
{
  OUTLINED_FUNCTION_9();
  *(v0 + 16) = *(v0 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  swift_willThrowTypedImpl();
  OUTLINED_FUNCTION_13();
  v2 = *(v0 + 64);

  return v1();
}

uint64_t sub_19799E6EC(unsigned __int8 a1, char a2)
{
  v2 = 7170419;
  v3 = 0xE300000000000000;
  v4 = a1;
  v5 = 7170419;
  switch(v4)
  {
    case 1:
      v3 = 0xE200000000000000;
      v5 = 28022;
      break;
    case 2:
      v3 = 0xE800000000000000;
      v5 = 0x6C61636973796870;
      break;
    case 3:
      v3 = 0xE700000000000000;
      v5 = 0x6E776F6E6B6E75;
      break;
    default:
      break;
  }

  v6 = 0xE300000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE200000000000000;
      v2 = 28022;
      break;
    case 2:
      v6 = 0xE800000000000000;
      v2 = 0x6C61636973796870;
      break;
    case 3:
      v6 = 0xE700000000000000;
      v2 = 0x6E776F6E6B6E75;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_86();
  }

  return v8 & 1;
}

uint64_t sub_19799E81C(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x6575716572627573;
  }

  else
  {
    v3 = 0x4974736575716572;
  }

  if (v2)
  {
    v4 = 0xE900000000000044;
  }

  else
  {
    v4 = 0xEC00000044497473;
  }

  if (a2)
  {
    v5 = 0x6575716572627573;
  }

  else
  {
    v5 = 0x4974736575716572;
  }

  if (a2)
  {
    v6 = 0xEC00000044497473;
  }

  else
  {
    v6 = 0xE900000000000044;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_86();
  }

  return v8 & 1;
}

uint64_t sub_19799E8BC(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
      OUTLINED_FUNCTION_131();
      OUTLINED_FUNCTION_140_0();
      break;
    default:
      break;
  }

  sub_197A879B8();
}

uint64_t sub_19799E958()
{
  sub_197A879B8();
}

uint64_t sub_19799E9E8()
{
  sub_197A879B8();
}

uint64_t sub_19799EA84()
{
  sub_197A879B8();
}

uint64_t sub_19799EB40()
{
  sub_197A879B8();
}

uint64_t InferenceProviderRequestConfiguration.sessionUUID.getter()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v1 = *(type metadata accessor for InferenceProviderRequestConfiguration(v0) + 32);
  v2 = sub_197A87298();
  OUTLINED_FUNCTION_6(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_52_2();

  return v6(v5);
}

uint64_t InferenceProviderRequestConfiguration.sessionSetID.getter()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v1 = *(type metadata accessor for InferenceProviderRequestConfiguration(v0) + 44);
  v2 = sub_197A87298();
  OUTLINED_FUNCTION_6(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_52_2();

  return v6(v5);
}

__n128 InferenceProviderRequestConfiguration.auditToken.getter()
{
  v2 = OUTLINED_FUNCTION_58_0();
  v3 = v1 + *(type metadata accessor for InferenceProviderRequestConfiguration(v2) + 48);
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *v0 = *v3;
  *(v0 + 16) = v6;
  *(v0 + 32) = v4;
  return result;
}

uint64_t InferenceProviderRequestConfiguration.useCaseIdentifier.getter()
{
  v0 = type metadata accessor for InferenceProviderRequestConfiguration(0);
  OUTLINED_FUNCTION_99(*(v0 + 56));
  return OUTLINED_FUNCTION_22();
}

uint64_t InferenceProviderRequestConfiguration.assetBundleIdentifier.getter()
{
  v0 = type metadata accessor for InferenceProviderRequestConfiguration(0);
  OUTLINED_FUNCTION_99(*(v0 + 60));
  return OUTLINED_FUNCTION_22();
}

double InferenceProviderRequestConfiguration.requestVersion.getter()
{
  v2 = OUTLINED_FUNCTION_58_0();
  v3 = v1 + *(type metadata accessor for InferenceProviderRequestConfiguration(v2) + 64);
  v4 = *(v3 + 8);
  result = *v3;
  *v0 = *v3;
  *(v0 + 8) = v4;
  return result;
}

uint64_t InferenceProviderRequestConfiguration.requestPriority.getter()
{
  v2 = OUTLINED_FUNCTION_58_0();
  result = type metadata accessor for InferenceProviderRequestConfiguration(v2);
  *v0 = *(v1 + *(result + 68));
  return result;
}

uint64_t InferenceProviderRequestConfiguration.requestPriority.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for InferenceProviderRequestConfiguration(0);
  *(v1 + *(result + 68)) = v2;
  return result;
}

uint64_t (*InferenceProviderRequestConfiguration.requestPriority.modify())(void)
{
  v0 = OUTLINED_FUNCTION_97();
  v1 = *(type metadata accessor for InferenceProviderRequestConfiguration(v0) + 68);
  return nullsub_1;
}

uint64_t InferenceProviderRequestConfiguration.subrequestID.setter(int a1)
{
  result = type metadata accessor for InferenceProviderRequestConfiguration(0);
  *(v1 + *(result + 72)) = a1;
  return result;
}

uint64_t (*InferenceProviderRequestConfiguration.subrequestID.modify())(void)
{
  v0 = OUTLINED_FUNCTION_97();
  v1 = *(type metadata accessor for InferenceProviderRequestConfiguration(v0) + 72);
  return nullsub_1;
}

double InferenceProviderRequestConfiguration.init(sessionLoggingIdentifier:requestLoggingIdentifier:assetIdentifiers:requestUUID:sessionUUID:onBehalfOfPID:auditSessionUID:useCaseIdentifier:assetBundleIdentifier:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, int a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v20 = type metadata accessor for InferenceProviderRequestConfiguration(0);
  v21 = v20[8];
  v22 = sub_197A87298();
  v23 = *(v22 - 8);
  (*(v23 + 16))(&a9[v21], a7, v22);
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  *(a9 + 4) = a5;
  v24 = *(v23 + 32);
  v24(&a9[v20[7]], a6, v22);
  v24(&a9[v20[11]], a7, v22);
  *&a9[v20[9]] = a8;
  *&a9[v20[10]] = 0;
  v25 = &a9[v20[12]];
  result = 0.0;
  *v25 = 0u;
  *(v25 + 1) = 0u;
  v25[32] = 1;
  *&a9[v20[13]] = a10;
  v27 = &a9[v20[14]];
  *v27 = a11;
  *(v27 + 1) = a12;
  v28 = &a9[v20[15]];
  *v28 = a13;
  *(v28 + 1) = a14;
  v29 = &a9[v20[16]];
  *v29 = 0;
  *(v29 + 2) = 0;
  a9[v20[17]] = 0;
  *&a9[v20[18]] = 0;
  return result;
}

void InferenceProviderRequestConfiguration.init(sessionLoggingIdentifier:requestLoggingIdentifier:assetIdentifiers:requestUUID:sessionUUID:sessionSetID:onBehalfOfPID:parentOfOnBehalfOfPID:auditToken:auditSessionUID:useCaseIdentifier:assetBundleIdentifier:requestVersion:requestPriority:subrequestID:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, __n128 *a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t *a17, char *a18, int a19)
{
  v31 = a11[2].n128_u8[0];
  v34 = *(a17 + 2);
  v35 = *a18;
  v21 = OUTLINED_FUNCTION_122_0(a1, a2, a3, a4, a5);
  OUTLINED_FUNCTION_6(v21);
  v23 = *(v22 + 32);
  v24 = *a17;
  v29 = a11[1];
  v30 = *a11;
  OUTLINED_FUNCTION_85();
  v23();
  (v23)(a8 + v19[8], a6, v21);
  (v23)(a8 + v19[11], a7, v21);
  *(a8 + v19[9]) = a9;
  OUTLINED_FUNCTION_116_0(v19[10], v29, v30);
  *(v25 + 32) = v31;
  *(a8 + v19[13]) = a12;
  v26 = (a8 + v19[14]);
  *v26 = a13;
  v26[1] = a14;
  v27 = (a8 + v19[15]);
  *v27 = a15;
  v27[1] = a16;
  v28 = a8 + v19[16];
  *v28 = v24;
  *(v28 + 8) = v34;
  *(a8 + v19[17]) = v35;
  *(a8 + v19[18]) = a19;
}

void InferenceProviderRequestConfiguration.init(sessionLoggingIdentifier:requestLoggingIdentifier:assetIdentifiers:requestUUID:sessionUUID:sessionSetID:onBehalfOfPID:parentOfOnBehalfOfPID:auditToken:auditSessionUID:useCaseIdentifier:assetBundleIdentifier:requestPriority:subrequestID:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, __n128 *a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char *a17, int a18)
{
  v30 = a11[2].n128_u8[0];
  v32 = *a17;
  v21 = OUTLINED_FUNCTION_122_0(a1, a2, a3, a4, a5);
  OUTLINED_FUNCTION_6(v21);
  v23 = *(v22 + 32);
  v28 = a11[1];
  v29 = *a11;
  OUTLINED_FUNCTION_85();
  v23();
  (v23)(a8 + v18[8], a6, v21);
  (v23)(a8 + v18[11], a7, v21);
  *(a8 + v18[9]) = a9;
  OUTLINED_FUNCTION_116_0(v18[10], v28, v29);
  *(v24 + 32) = v30;
  *(a8 + v18[13]) = a12;
  v25 = (a8 + v18[14]);
  *v25 = a13;
  v25[1] = a14;
  v26 = (a8 + v18[15]);
  *v26 = a15;
  v26[1] = a16;
  v27 = a8 + v18[16];
  *v27 = 0;
  *(v27 + 8) = 0;
  *(a8 + v18[17]) = v32;
  *(a8 + v18[18]) = a18;
}

BOOL static InferenceProviderRequestConfiguration.== infix(_:_:)()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_138(v2);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_197A88218() & 1) == 0)
  {
    return 0;
  }

  v6 = v1[2] == v0[2] && v1[3] == v0[3];
  if (!v6 && (sub_197A88218() & 1) == 0)
  {
    return 0;
  }

  if ((sub_19799F5B0(v1[4], v0[4]) & 1) == 0)
  {
    return 0;
  }

  v7 = type metadata accessor for InferenceProviderRequestConfiguration(0);
  v8 = v7[7];
  if ((OUTLINED_FUNCTION_146_0() & 1) == 0)
  {
    return 0;
  }

  v9 = v7[8];
  if ((OUTLINED_FUNCTION_146_0() & 1) == 0)
  {
    return 0;
  }

  if (*(v1 + v7[9]) != *(v0 + v7[9]))
  {
    return 0;
  }

  if (*(v1 + v7[10]) != *(v0 + v7[10]))
  {
    return 0;
  }

  v10 = v7[11];
  if ((OUTLINED_FUNCTION_146_0() & 1) == 0)
  {
    return 0;
  }

  v11 = v7[12];
  v12 = (v1 + v11);
  v13 = *(v1 + v11 + 32);
  v14 = (v0 + v11);
  v15 = *(v0 + v11 + 32);
  if (v13)
  {
    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v16 = *v14;
    v17 = v14[1];
    v18 = v12[1];
    v37[0] = *v12;
    v37[1] = v18;
    v38 = 0;
    if (v15)
    {
      return 0;
    }

    v36[0] = v16;
    v36[1] = v17;
    if ((static AuditToken.== infix(_:_:)(v37, v36) & 1) == 0)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_108(v7[13]);
  if (!v5)
  {
    return 0;
  }

  OUTLINED_FUNCTION_42_2(v7[14]);
  v21 = v5 && v19 == v20;
  if (!v21 && (sub_197A88218() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_42_2(v7[15]);
  v24 = v5 && v22 == v23;
  if (!v24 && (sub_197A88218() & 1) == 0)
  {
    return 0;
  }

  v25 = v7[16];
  v26 = *(v1 + v25);
  v27 = *(v1 + v25 + 4);
  v28 = *(v1 + v25 + 8);
  v29 = (v0 + v25);
  v30 = *v29;
  v31 = v29[1];
  v32 = v29[2];
  v33 = v26 == v30 && v27 == v31;
  v34 = v33 && v28 == v32;
  if (!v34 || (sub_1979577EC(*(v1 + v7[17]), *(v0 + v7[17])) & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_108(v7[18]);
  return v5;
}

uint64_t sub_19799F5B0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v23 = result;
  if (v7)
  {
    while (2)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v13 = (*(result + 48) + 16 * (v9 | (v3 << 6)));
      v15 = *v13;
      v14 = v13[1];
      v16 = *(a2 + 40);
      sub_197A882F8();
      sub_197A878A8();
      sub_197A879B8();
      v17 = sub_197A88358();
      v18 = ~(-1 << *(a2 + 32));
      do
      {
        v19 = v17 & v18;
        if (((*(a2 + 56 + (((v17 & v18) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v17 & v18)) & 1) == 0)
        {

          return 0;
        }

        v20 = (*(a2 + 48) + 16 * v19);
        if (*v20 == v15 && v20[1] == v14)
        {
          break;
        }

        v22 = sub_197A88218();
        v17 = v19 + 1;
      }

      while ((v22 & 1) == 0);

      result = v23;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    ++v10;
    if (*(v4 + 8 * v3))
    {
      OUTLINED_FUNCTION_67_1();
      v7 = v12 & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_19799F778()
{
  OUTLINED_FUNCTION_67();
  v1 = v0;
  v3 = v2;
  v5 = OUTLINED_FUNCTION_114(v2, v0, v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  v8 = OUTLINED_FUNCTION_10(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_103();
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  if (v3 == v1 || *(v3 + 16) != *(v1 + 16))
  {
LABEL_20:
    OUTLINED_FUNCTION_66();
  }

  else
  {
    v15 = 0;
    v16 = *(v3 + 56);
    v42 = v3 + 56;
    v17 = 1 << *(v3 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = (v17 + 63) >> 6;
    v48 = v1 + 56;
    v43 = v19;
    v44 = &v42 - v13;
    v45 = v14;
    v46 = v3;
    if ((v18 & v16) != 0)
    {
      while (2)
      {
        OUTLINED_FUNCTION_61_2();
        v47 = v21;
LABEL_13:
        v25 = *(v3 + 48);
        v26 = *(v20 + 72);
        OUTLINED_FUNCTION_98();
        sub_1979487E0();
        sub_19794B0C4();
        v27 = *(v1 + 40);
        sub_197A882F8();
        sub_197A87298();
        OUTLINED_FUNCTION_0_5();
        sub_19796AA70(&qword_1ED880FE0);
        sub_197A878F8();
        v28 = sub_197A88358();
        v29 = ~(-1 << *(v1 + 32));
        do
        {
          v30 = v28 & v29;
          if (((*(v48 + (((v28 & v29) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v28 & v29)) & 1) == 0)
          {
            OUTLINED_FUNCTION_68_1();
            sub_197947A40(v39, v40, v41);
            goto LABEL_20;
          }

          v31 = *(v1 + 48);
          sub_1979487E0();
          OUTLINED_FUNCTION_90();
          v32 = _s20ModelManagerServices14UUIDIdentifierV2eeoiySbACyxG_AEtFZ_0();
          OUTLINED_FUNCTION_68_1();
          sub_197947A40(v33, v34, v35);
          v28 = v30 + 1;
        }

        while ((v32 & 1) == 0);
        OUTLINED_FUNCTION_68_1();
        sub_197947A40(v36, v37, v38);
        v3 = v46;
        v19 = v43;
        if (v47)
        {
          continue;
        }

        break;
      }
    }

    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v19)
      {
        goto LABEL_20;
      }

      ++v22;
      if (*(v42 + 8 * v15))
      {
        OUTLINED_FUNCTION_67_1();
        v47 = v24 & v23;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

void sub_19799FA20()
{
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_43_1();
  v4 = sub_197A87298();
  v5 = OUTLINED_FUNCTION_2(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_109();
  v11 = MEMORY[0x1EEE9AC00](v10);
  v46 = &v35 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v35 - v13;
  if (v1 == v0 || *(v1 + 16) != *(v0 + 16))
  {
LABEL_17:
    OUTLINED_FUNCTION_66();
  }

  else
  {
    v15 = 0;
    v16 = *(v1 + 56);
    v36 = v1 + 56;
    v17 = *(v1 + 32);
    OUTLINED_FUNCTION_89();
    v42 = v7 + 32;
    v44 = v0 + 56;
    v45 = v7 + 16;
    v19 = (v7 + 8);
    v37 = v18;
    v38 = v14;
    v39 = v7;
    v40 = v1;
    if (v20)
    {
      while (2)
      {
        OUTLINED_FUNCTION_61_2();
        v41 = v22;
LABEL_10:
        v26 = *(v1 + 48);
        v43 = *(v7 + 72);
        v27 = *(v7 + 16);
        v27(v14, v26 + v43 * (v21 | (v15 << 6)), v4);
        (*(v7 + 32))(v46, v14, v4);
        v28 = *(v0 + 40);
        OUTLINED_FUNCTION_0_5();
        sub_19796AA70(&qword_1ED880FE0);
        v29 = sub_197A878E8();
        v30 = v0;
        v31 = ~(v3 << *(v0 + 32));
        do
        {
          v32 = v29 & v31;
          if (((*(v44 + (((v29 & v31) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v29 & v31)) & 1) == 0)
          {
            (*v19)(v46, v4);
            goto LABEL_17;
          }

          v27(v2, *(v30 + 48) + v32 * v43, v4);
          OUTLINED_FUNCTION_0_5();
          sub_19796AA70(&qword_1EAF488E8);
          v33 = sub_197A87918();
          v34 = *v19;
          (*v19)(v2, v4);
          v29 = v32 + 1;
        }

        while ((v33 & 1) == 0);
        v34(v46, v4);
        v0 = v30;
        v7 = v39;
        v1 = v40;
        v18 = v37;
        v14 = v38;
        v3 = -1;
        if (v41)
        {
          continue;
        }

        break;
      }
    }

    v23 = v15;
    while (1)
    {
      v15 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v15 >= v18)
      {
        goto LABEL_17;
      }

      ++v23;
      if (*(v36 + 8 * v15))
      {
        OUTLINED_FUNCTION_67_1();
        v41 = v25 & v24;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_19799FD2C()
{
  OUTLINED_FUNCTION_67();
  v5 = v4;
  v6 = OUTLINED_FUNCTION_97();
  active = type metadata accessor for StateDump.InferenceProviderState.ActiveRequest(v6);
  v7 = OUTLINED_FUNCTION_2(active);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_109();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_103();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v43 - v12;
  if (v0 == v5 || *(v0 + 16) != v5[2])
  {
    goto LABEL_36;
  }

  v14 = 0;
  v15 = *(v0 + 56);
  v43 = v0 + 56;
  v16 = 1 << *(v0 + 32);
  OUTLINED_FUNCTION_89();
  v51 = v5 + 7;
  v44 = v17;
  v45 = v13;
  v49 = v5;
  v46 = v18;
  v47 = v0;
  if (!v19)
  {
    goto LABEL_5;
  }

  do
  {
    OUTLINED_FUNCTION_61_2();
    v48 = v21;
LABEL_10:
    v25 = *(v0 + 48);
    v26 = *(v20 + 72);
    OUTLINED_FUNCTION_16_1();
    sub_19796B948();
    sub_1979AA160();
    v27 = v5[5];
    sub_197A882F8();
    sub_197A87298();
    OUTLINED_FUNCTION_0_5();
    sub_19796AA70(&qword_1ED880FE0);
    sub_197A878F8();
    v28 = *(active + 20);
    sub_19799E8BC(&v52, *(v2 + v28));
    v29 = sub_197A88358();
    v5 = v49;
    v30 = v3 << *(v49 + 32);
    v31 = v29 & ~v30;
    if (((*(v51 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
    {
LABEL_35:
      OUTLINED_FUNCTION_2_3();
      sub_19796B99C();
LABEL_36:
      OUTLINED_FUNCTION_66();
      return;
    }

    v32 = ~v30;
    while (1)
    {
      v33 = v5[6];
      OUTLINED_FUNCTION_16_1();
      sub_19796B948();
      if ((_s20ModelManagerServices14UUIDIdentifierV2eeoiySbACyxG_AEtFZ_0() & 1) == 0)
      {
        OUTLINED_FUNCTION_2_3();
        sub_19796B99C();
        goto LABEL_29;
      }

      v34 = *(v2 + v28);
      v35 = 0xE400000000000000;
      v36 = 1701736302;
      switch(*(v1 + *(active + 20)))
      {
        case 1:
          v37 = 1801675106;
          goto LABEL_18;
        case 2:
          OUTLINED_FUNCTION_132();
          OUTLINED_FUNCTION_66_1();
          break;
        case 3:
          v37 = 1701998438;
LABEL_18:
          v36 = v37 | 0x756F726700000000;
          v35 = 0xEA0000000000646ELL;
          break;
        default:
          break;
      }

      v38 = 0xE400000000000000;
      v39 = 1701736302;
      switch(v34)
      {
        case 1:
          v40 = 1801675106;
          goto LABEL_23;
        case 2:
          OUTLINED_FUNCTION_130();
          v38 = 0xED00006465746169;
          break;
        case 3:
          v40 = 1701998438;
LABEL_23:
          v39 = v40 | 0x756F726700000000;
          v38 = 0xEA0000000000646ELL;
          break;
        default:
          break;
      }

      if (v36 == v39 && v35 == v38)
      {
        break;
      }

      v42 = sub_197A88218();

      OUTLINED_FUNCTION_2_3();
      sub_19796B99C();
      v5 = v49;
      if (v42)
      {
        goto LABEL_32;
      }

LABEL_29:
      v31 = (v31 + 1) & v32;
      if (((*(v51 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    OUTLINED_FUNCTION_2_3();
    sub_19796B99C();
    v5 = v49;
LABEL_32:
    OUTLINED_FUNCTION_2_3();
    sub_19796B99C();
    v0 = v47;
    v17 = v44;
    v3 = -1;
  }

  while (v48);
LABEL_5:
  v22 = v14;
  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v14 >= v17)
    {
      goto LABEL_36;
    }

    ++v22;
    if (*(v43 + 8 * v14))
    {
      OUTLINED_FUNCTION_67_1();
      v48 = v24 & v23;
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t sub_1979A0130(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000018 && 0x8000000197AA2510 == a2;
  if (v3 || (sub_197A88218() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000018 && 0x8000000197AA2530 == a2;
    if (v6 || (sub_197A88218() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x8000000197AA2550 == a2;
      if (v7 || (sub_197A88218() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x5574736575716572 && a2 == 0xEB00000000444955;
        if (v8 || (sub_197A88218() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x556E6F6973736573 && a2 == 0xEB00000000444955;
          if (v9 || (sub_197A88218() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x666C616865426E6FLL && a2 == 0xED0000444950664FLL;
            if (v10 || (sub_197A88218() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000015 && 0x8000000197AA2570 == a2;
              if (v11 || (sub_197A88218() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x536E6F6973736573 && a2 == 0xEC00000044497465;
                if (v12 || (sub_197A88218() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6B6F547469647561 && a2 == 0xEA00000000006E65;
                  if (v13 || (sub_197A88218() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000010 && 0x8000000197AA2590 == a2;
                    if (v14 || (sub_197A88218() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000011 && 0x8000000197AA25B0 == a2;
                      if (v15 || (sub_197A88218() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000015 && 0x8000000197AA25D0 == a2;
                        if (v16 || (sub_197A88218() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x5674736575716572 && a2 == 0xEE006E6F69737265;
                          if (v17 || (sub_197A88218() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x5074736575716572 && a2 == 0xEF797469726F6972;
                            if (v18 || (sub_197A88218() & 1) != 0)
                            {

                              return 13;
                            }

                            else if (a1 == 0x6575716572627573 && a2 == 0xEC00000044497473)
                            {

                              return 14;
                            }

                            else
                            {
                              v20 = sub_197A88218();

                              if (v20)
                              {
                                return 14;
                              }

                              else
                              {
                                return 15;
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

uint64_t sub_1979A05DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1979A0130(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1979A0604@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1979A05D4();
  *a1 = result;
  return result;
}

uint64_t sub_1979A062C(uint64_t a1)
{
  v2 = sub_197978F70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979A0668(uint64_t a1)
{
  v2 = sub_197978F70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void InferenceProviderRequestConfiguration.encode(to:)()
{
  OUTLINED_FUNCTION_92();
  v3 = v0;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48FD8, &qword_197A8BAE0);
  OUTLINED_FUNCTION_2(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_104();
  v12 = *(v5 + 24);
  v13 = *(v5 + 32);
  v14 = OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_113_0(v14, v15);
  sub_197978F70();
  OUTLINED_FUNCTION_125();
  v16 = *v3;
  v17 = v3[1];
  OUTLINED_FUNCTION_39_2();
  sub_197A880B8();
  if (!v1)
  {
    v18 = v3[2];
    v19 = v3[3];
    OUTLINED_FUNCTION_39_2();
    sub_197A880B8();
    v37 = v3[4];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48FE0, &qword_197A8BAE8);
    sub_197978AF8(&unk_1ED87F958);
    OUTLINED_FUNCTION_39_2();
    sub_197A880E8();
    v20 = type metadata accessor for InferenceProviderRequestConfiguration(0);
    v21 = v20[7];
    sub_197A87298();
    OUTLINED_FUNCTION_0_5();
    sub_19796AA70(v22);
    OUTLINED_FUNCTION_141();
    OUTLINED_FUNCTION_39_2();
    sub_197A880E8();
    v23 = v20[8];
    OUTLINED_FUNCTION_141();
    OUTLINED_FUNCTION_39_2();
    sub_197A880E8();
    v24 = *(v3 + v20[9]);
    OUTLINED_FUNCTION_20_3(5);
    sub_197A880D8();
    v25 = *(v3 + v20[10]);
    OUTLINED_FUNCTION_20_3(6);
    sub_197A880D8();
    v26 = v20[11];
    OUTLINED_FUNCTION_141();
    OUTLINED_FUNCTION_39_2();
    sub_197A880E8();
    v27 = v3 + v20[12];
    v38 = *v27;
    v42 = *(v27 + 1);
    v43 = v27[32];
    sub_1979741F8();
    OUTLINED_FUNCTION_27_0();
    sub_197A88098();
    v28 = *(v3 + v20[13]);
    OUTLINED_FUNCTION_20_3(9);
    sub_197A88118();
    v29 = (v3 + v20[14]);
    v30 = *v29;
    v31 = v29[1];
    OUTLINED_FUNCTION_39_2();
    sub_197A880B8();
    v32 = (v3 + v20[15]);
    v33 = *v32;
    v34 = v32[1];
    OUTLINED_FUNCTION_39_2();
    sub_197A880B8();
    v35 = v3 + v20[16];
    v39 = *v35;
    v41 = *(v35 + 2);
    sub_1979552D0();
    OUTLINED_FUNCTION_27_0();
    sub_197A880E8();
    v40 = *(v3 + v20[17]);
    sub_1979A6BD0();
    OUTLINED_FUNCTION_27_0();
    sub_197A880E8();
    v36 = *(v3 + v20[18]);
    OUTLINED_FUNCTION_20_3(14);
    sub_197A88118();
  }

  (*(v8 + 8))(v2, v6);
  OUTLINED_FUNCTION_93();
}

uint64_t InferenceProviderRequestConfiguration.hash(into:)(void *a1)
{
  v2 = v1;
  v26 = *MEMORY[0x1E69E9840];
  v4 = *v1;
  v5 = v1[1];
  sub_197A879B8();
  v6 = v1[2];
  v7 = v1[3];
  sub_197A879B8();
  sub_1979A7584(a1, v1[4]);
  v8 = type metadata accessor for InferenceProviderRequestConfiguration(0);
  v9 = v8[7];
  sub_197A87298();
  OUTLINED_FUNCTION_0_5();
  sub_19796AA70(v10);
  OUTLINED_FUNCTION_69_0();
  sub_197A878F8();
  v11 = v2 + v8[8];
  OUTLINED_FUNCTION_69_0();
  sub_197A878F8();
  MEMORY[0x19A8EB5D0](*(v2 + v8[9]));
  MEMORY[0x19A8EB5D0](*(v2 + v8[10]));
  v12 = v2 + v8[11];
  OUTLINED_FUNCTION_69_0();
  sub_197A878F8();
  v13 = v2 + v8[12];
  if (v13[32])
  {
    sub_197A88328();
  }

  else
  {
    v15 = *v13;
    v14 = *(v13 + 1);
    v17 = *(v13 + 2);
    v16 = *(v13 + 3);
    sub_197A88328();
    sub_197A88308();
  }

  v18 = *(v2 + v8[13]);
  sub_197A88338();
  OUTLINED_FUNCTION_127(v8[14]);
  OUTLINED_FUNCTION_127(v8[15]);
  v19 = (v2 + v8[16]);
  v20 = *v19;
  v21 = v19[1];
  v22 = v19[2];
  sub_197A88338();
  sub_197A88338();
  sub_197A88338();
  sub_19799E8BC(a1, *(v2 + v8[17]));
  v23 = *(v2 + v8[18]);
  result = sub_197A88338();
  v25 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1979A0CFC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_197960FB0;

  return InferenceProvider.loadIn(inferenceAssetIdentifier:)();
}

uint64_t sub_1979A0D8C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_197960FB0;

  return InferenceProvider.loadIn(inferenceAssetIdentifier:)();
}

uint64_t sub_1979A0E18()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_197960FB0;

  return InferenceProvider.transitionAsset(withIdentifier:to:)();
}

void *InferenceProvider.requestStream(clientData:configuration:)()
{
  v1 = OUTLINED_FUNCTION_58_0();
  type metadata accessor for InferenceError(v1);
  OUTLINED_FUNCTION_1_4();
  sub_19796AA70(v2);
  OUTLINED_FUNCTION_133_0();
  OUTLINED_FUNCTION_70_0();
  v3 = swift_allocError();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for CombinedResponseIterator();
  swift_allocObject();
  MEMORY[0x19A8EBBD0](v3);
  v4 = sub_197A125D8(v3, 1);
  v0[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48FF0, &qword_197A8BB10);
  v0[4] = sub_1979A76B8();
  result = swift_allocObject();
  *v0 = result;
  result[2] = 0;
  result[3] = 0;
  result[4] = v3;
  result[5] = nullsub_1;
  result[6] = 0;
  result[7] = v4;
  return result;
}

uint64_t InferenceProvider.requestStream(clientData:configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  ClientData.data.getter(a1, a2, a3, a4, a5, a6, a7, a8, v21, v22[0], v22[1], v22[2], v23, v24, v25, v26, v27, v28);
  v12 = *(a4 + 40);
  v13 = OUTLINED_FUNCTION_90();
  v14(v13);
  v15 = OUTLINED_FUNCTION_90();
  sub_197974AFC(v15, v16);
  v17 = v23;
  v18 = v24;
  v19 = __swift_project_boxed_opaque_existential_1(v22, v23);
  type metadata accessor for ClientData(255);
  a9[3] = sub_197A88178();
  a9[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1(a9);
  sub_1979A1840(v19, a3, v17, a4, v18);
  return __swift_destroy_boxed_opaque_existential_1Tm(v22);
}

uint64_t sub_1979A10E0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1979A116C;

  return InferenceProvider.requestOneShot(clientData:configuration:)();
}

uint64_t sub_1979A116C()
{
  OUTLINED_FUNCTION_18();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_21();
  v7 = *(v6 + 16);
  v8 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v9 = v8;

  v12 = *(v8 + 8);
  if (!v0)
  {
    v10 = v5;
    v11 = v3;
  }

  return v12(v10, v11);
}

uint64_t InferenceProvider.requestOneShot(clientData:configuration:)()
{
  return (*(v0 + 8))(0, 0xC000000000000000);
}

{
  OUTLINED_FUNCTION_9();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v1[2] = v5;
  v1[3] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49000, &qword_197A954A0);
  OUTLINED_FUNCTION_28(v7);
  v9 = *(v8 + 64);
  v1[8] = OUTLINED_FUNCTION_78_0();
  v10 = OUTLINED_FUNCTION_73();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1979A128C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_197960FB0;

  return InferenceProvider.requestOneShot(clientData:configuration:)();
}

uint64_t sub_1979A151C()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_21();
  v7 = v6;
  OUTLINED_FUNCTION_24();
  *v8 = v7;
  v10 = *(v9 + 88);
  v11 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v12 = v11;
  v7[12] = v0;

  if (v0)
  {
    v13 = sub_1979A1734;
  }

  else
  {
    v14 = v7[10];
    if (v14 >> 60 == 15)
    {
      v15 = 0;
    }

    else
    {
      v15 = v7[9];
    }

    if (v14 >> 60 == 15)
    {
      v16 = 0xC000000000000000;
    }

    else
    {
      v16 = v7[10];
    }

    v7[13] = v3;
    v7[14] = v5;
    sub_197974AFC(v15, v16);
    v13 = sub_1979A1654;
  }

  return MEMORY[0x1EEE6DFA0](v13, 0, 0);
}

uint64_t sub_1979A1654()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[8];
  v4 = v0[2];
  v5 = sub_197A877A8();
  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v5);
  v9 = OUTLINED_FUNCTION_63();
  sub_19797992C(v9, v10);
  v11 = OUTLINED_FUNCTION_63();
  sub_197974AFC(v11, v12);
  OUTLINED_FUNCTION_56_0();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v5);
  v16 = *(type metadata accessor for ClientData(0) + 20);
  sub_19794B0C4();

  OUTLINED_FUNCTION_13();

  return v17();
}

uint64_t sub_1979A1734()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[10];
  v2 = v0[8];
  if (v1 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = v0[9];
  }

  if (v1 >> 60 == 15)
  {
    v4 = 0xC000000000000000;
  }

  else
  {
    v4 = v0[10];
  }

  sub_197974AFC(v3, v4);

  OUTLINED_FUNCTION_13();
  v6 = v0[12];

  return v5();
}

uint64_t sub_1979A17B0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_197960E38;

  return InferenceProvider.cancelRequest(uuid:)();
}

uint64_t sub_1979A1840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(*(a3 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v11 + 16))(&v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a4;
  v12[5] = a5;
  type metadata accessor for ClientData(0);
  sub_197A87CA8();
}

uint64_t sub_1979A1970(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49000, &qword_197A954A0) - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2[7] = AssociatedTypeWitness;
  v5 = *(AssociatedTypeWitness - 8);
  v2[8] = v5;
  v6 = *(v5 + 64) + 15;
  v2[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1979A1A88, 0, 0);
}

uint64_t sub_1979A1A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_49_0();
  (*(v10[8] + 16))(v10[9], v10[5], v10[7]);
  v11 = swift_dynamicCast();
  v12 = v10[9];
  v13 = v10[6];
  if (v11)
  {
    v15 = v10[3];
    v14 = v10[4];
    v16 = v10[2];
    v17 = sub_197A877A8();
    OUTLINED_FUNCTION_41();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v17);
    v21 = OUTLINED_FUNCTION_100_0();
    sub_19797992C(v21, v22);
    v23 = OUTLINED_FUNCTION_100_0();
    sub_197974AFC(v23, v24);
    OUTLINED_FUNCTION_56_0();
    __swift_storeEnumTagSinglePayload(v25, v26, v27, v17);
    v28 = *(type metadata accessor for ClientData(0) + 20);
    sub_19794B0C4();
  }

  else
  {
    type metadata accessor for InferenceError(0);
    OUTLINED_FUNCTION_1_4();
    sub_19796AA70(v29);
    OUTLINED_FUNCTION_70_0();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_117();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10);
}

void InferenceProviderAssetDescriptor.init(identifier:version:)()
{
  OUTLINED_FUNCTION_67();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = OUTLINED_FUNCTION_58_0();
  v10 = type metadata accessor for CustomAssetConfiguration(v9);
  v11 = OUTLINED_FUNCTION_6(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1_0();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49008, &qword_197A8BB38);
  v18 = OUTLINED_FUNCTION_28(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_27();
  v23 = v21 - v22;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v10);
  *v0 = v8;
  v0[1] = v6;
  v34[3] = &type metadata for GenerativeModels;
  v34[4] = sub_1979A771C();
  sub_197A878A8();
  v28 = sub_197A872C8();
  __swift_destroy_boxed_opaque_existential_1Tm(v34);
  if (v28)
  {
    sub_1979487E0();
    OUTLINED_FUNCTION_64_0(v23, 1, v10);
    if (v29)
    {
      sub_197947A40(v23, &qword_1EAF49008, &qword_197A8BB38);
    }

    else
    {

      OUTLINED_FUNCTION_6_2();
      sub_1979AA160();
      v30 = (v16 + *(v10 + 32));
      v8 = *v30;
      v6 = v30[1];
      sub_197A878A8();
      OUTLINED_FUNCTION_3_3();
      sub_19796B99C();
    }
  }

  v0[2] = v8;
  v0[3] = v6;
  v31 = type metadata accessor for InferenceProviderAssetDescriptor(0);
  v32 = (v0 + *(v31 + 28));
  *v32 = v4;
  v32[1] = v2;
  v33 = *(v31 + 24);
  sub_19794B0C4();
  OUTLINED_FUNCTION_66();
}

void InferenceProviderAssetDescriptor.init(identifier:version:customAssetConfiguration:)()
{
  OUTLINED_FUNCTION_67();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49008, &qword_197A8BB38);
  OUTLINED_FUNCTION_28(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_65_0();
  v15 = type metadata accessor for CustomAssetConfiguration(0);
  v16 = OUTLINED_FUNCTION_6(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_1_0();
  v21 = v20 - v19;
  *v10 = v8;
  v10[1] = v6;
  v28[3] = &type metadata for GenerativeModels;
  v28[4] = sub_1979A771C();
  sub_197A878A8();
  v22 = sub_197A872C8();
  __swift_destroy_boxed_opaque_existential_1Tm(v28);
  if (v22)
  {
    OUTLINED_FUNCTION_135();
    sub_1979487E0();
    OUTLINED_FUNCTION_64_0(v0, 1, v15);
    if (v23)
    {
      sub_197947A40(v0, &qword_1EAF49008, &qword_197A8BB38);
    }

    else
    {

      OUTLINED_FUNCTION_6_2();
      OUTLINED_FUNCTION_90();
      sub_1979AA160();
      v24 = (v21 + *(v15 + 32));
      v8 = *v24;
      v6 = v24[1];
      sub_197A878A8();
      OUTLINED_FUNCTION_3_3();
      sub_19796B99C();
    }
  }

  v10[2] = v8;
  v10[3] = v6;
  v25 = type metadata accessor for InferenceProviderAssetDescriptor(0);
  v26 = (v10 + *(v25 + 28));
  *v26 = v4;
  v26[1] = v2;
  v27 = *(v25 + 24);
  sub_19794B0C4();
  OUTLINED_FUNCTION_66();
}

void static InferenceProviderAssetDescriptor.== infix(_:_:)()
{
  OUTLINED_FUNCTION_67();
  v3 = OUTLINED_FUNCTION_43_1();
  v4 = type metadata accessor for CustomAssetConfiguration(v3);
  v5 = OUTLINED_FUNCTION_6(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49008, &qword_197A8BB38);
  OUTLINED_FUNCTION_28(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_104();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49010, &qword_197A8BB40);
  OUTLINED_FUNCTION_6(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_66_0();
  v16 = *v1 == *v0 && v1[1] == v0[1];
  if (!v16 && (sub_197A88218() & 1) == 0)
  {
    goto LABEL_20;
  }

  v17 = v1[2] == v0[2] && v1[3] == v0[3];
  if (!v17 && (sub_197A88218() & 1) == 0)
  {
    goto LABEL_20;
  }

  v28 = type metadata accessor for InferenceProviderAssetDescriptor(0);
  v18 = *(v28 + 24);
  v19 = *(v12 + 48);
  sub_1979487E0();
  sub_1979487E0();
  OUTLINED_FUNCTION_64_0(v2, 1, v4);
  if (!v16)
  {
    sub_1979487E0();
    OUTLINED_FUNCTION_64_0(v2 + v19, 1, v4);
    if (!v20)
    {
      OUTLINED_FUNCTION_6_2();
      sub_1979AA160();
      OUTLINED_FUNCTION_59_1();
      v21 = static CustomAssetConfiguration.== infix(_:_:)();
      sub_19796B99C();
      sub_19796B99C();
      sub_197947A40(v2, &qword_1EAF49008, &qword_197A8BB38);
      if ((v21 & 1) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_22;
    }

    OUTLINED_FUNCTION_3_3();
    sub_19796B99C();
LABEL_19:
    sub_197947A40(v2, &qword_1EAF49010, &qword_197A8BB40);
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_64_0(v2 + v19, 1, v4);
  if (!v16)
  {
    goto LABEL_19;
  }

  sub_197947A40(v2, &qword_1EAF49008, &qword_197A8BB38);
LABEL_22:
  v22 = *(v28 + 28);
  v23 = (v1 + v22);
  v24 = *(v1 + v22 + 8);
  v25 = (v0 + v22);
  v26 = v25[1];
  if (v24 && v26 && (*v23 != *v25 || v24 != v26))
  {
    sub_197A88218();
  }

LABEL_20:
  OUTLINED_FUNCTION_66();
}

uint64_t sub_1979A228C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000016 && 0x8000000197AA25F0 == a2;
  if (v3 || (sub_197A88218() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
    if (v6 || (sub_197A88218() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000018 && 0x8000000197AA2610 == a2;
      if (v7 || (sub_197A88218() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_197A88218();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1979A2400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1979A228C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1979A2428@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1979A23F8();
  *a1 = result;
  return result;
}

uint64_t sub_1979A2450(uint64_t a1)
{
  v2 = sub_19796A970();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979A248C(uint64_t a1)
{
  v2 = sub_19796A970();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t InferenceProviderAssetDescriptor.hash(into:)()
{
  v1 = type metadata accessor for CustomAssetConfiguration(0);
  v2 = OUTLINED_FUNCTION_6(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1_0();
  v7 = (v6 - v5);
  v8 = OUTLINED_FUNCTION_90();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_28(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_64_1();
  v14 = *v0;
  v15 = v0[1];
  sub_197A879B8();
  v16 = v0[2];
  v17 = v0[3];
  sub_197A879B8();
  v18 = type metadata accessor for InferenceProviderAssetDescriptor(0);
  v19 = *(v18 + 24);
  sub_1979487E0();
  v20 = OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_64_0(v20, v21, v1);
  if (v22)
  {
    sub_197A88328();
  }

  else
  {
    OUTLINED_FUNCTION_6_2();
    sub_1979AA160();
    sub_197A88328();
    v23 = *v7;
    v24 = v7[1];
    sub_197A879B8();
    v25 = v7[2];
    v26 = v7[3];
    sub_197A879B8();
    v27 = (v7 + *(v1 + 32));
    v28 = *v27;
    v29 = v27[1];
    sub_197A879B8();
    v30 = v7 + *(v1 + 28);
    if ((v30[32] & 1) == 0)
    {
      v31 = OUTLINED_FUNCTION_53_1();
      audit_token_to_pid(v31);
    }

    sub_197A88338();
    if ((v30[32] & 1) == 0)
    {
      v32 = OUTLINED_FUNCTION_53_1();
      audit_token_to_pidversion(v32);
    }

    sub_197A88338();
    OUTLINED_FUNCTION_3_3();
    sub_19796B99C();
  }

  v33 = (v0 + *(v18 + 28));
  if (!v33[1])
  {
    return sub_197A88328();
  }

  v34 = *v33;
  sub_197A88328();
  OUTLINED_FUNCTION_68_1();
  return sub_197A879B8();
}

__n128 InferenceProviderPrewarmInformation.requestorAuditToken.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 16);
  v3 = *(v1 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1979A26F0()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v1 = *(type metadata accessor for InferenceProviderPrewarmInformation(v0) + 24);
  v2 = sub_197A87298();
  OUTLINED_FUNCTION_6(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_52_2();

  return v6(v5);
}

uint64_t sub_1979A2760()
{
  v0 = type metadata accessor for InferenceProviderPrewarmInformation(0);
  OUTLINED_FUNCTION_99(*(v0 + 28));
  return OUTLINED_FUNCTION_22();
}

uint64_t sub_1979A27B8()
{
  v1 = *(v0 + *(type metadata accessor for InferenceProviderPrewarmInformation(0) + 40));

  return sub_197A878A8();
}

void InferenceProviderPrewarmInformation.init(bundleIdentifier:requestorAuditToken:sessionUUID:useCaseIdentifier:onBehalfOfPid:metadata:)()
{
  OUTLINED_FUNCTION_95_0();
  *v4 = v2;
  *(v4 + 8) = v3;
  v6 = v5[1];
  *(v4 + 16) = *v5;
  *(v4 + 32) = v6;
  v7 = *(type metadata accessor for InferenceProviderPrewarmInformation(0) + 24);
  v8 = sub_197A87298();
  OUTLINED_FUNCTION_6(v8);
  (*(v9 + 32))(v1 + v7, v0);
  OUTLINED_FUNCTION_82_1();
  *(v1 + v10) = 0;
}

__n128 InferenceProviderPrewarmInformation.init(bundleIdentifier:requestorAuditToken:sessionUUID:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for InferenceProviderPrewarmInformation(0);
  v11 = v10[6];
  v12 = sub_197A87298();
  OUTLINED_FUNCTION_6(v12);
  (*(v13 + 32))(a5 + v11, a4);
  *a5 = a1;
  *(a5 + 8) = a2;
  result = *a3;
  v15 = *(a3 + 16);
  *(a5 + 16) = *a3;
  *(a5 + 32) = v15;
  v16 = (a5 + v10[7]);
  *v16 = 0;
  v16[1] = 0xE000000000000000;
  *(a5 + v10[8]) = 0;
  *(a5 + v10[9]) = 0;
  *(a5 + v10[10]) = 0;
  return result;
}

uint64_t static InferenceProviderPrewarmInformation.== infix(_:_:)()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_138(v2);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_197A88218() & 1) == 0)
  {
    return 0;
  }

  v6 = *(v1 + 32);
  v25[0] = *(v1 + 16);
  v25[1] = v6;
  v7 = *(v0 + 32);
  v24[0] = *(v0 + 16);
  v24[1] = v7;
  if ((static AuditToken.== infix(_:_:)(v25, v24) & 1) == 0)
  {
    return 0;
  }

  v8 = type metadata accessor for InferenceProviderPrewarmInformation(0);
  v9 = v8[6];
  if ((OUTLINED_FUNCTION_146_0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_42_2(v8[7]);
  v12 = v5 && v10 == v11;
  if (!v12 && (sub_197A88218() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_108(v8[8]);
  if (!v5)
  {
    return 0;
  }

  v13 = v8[9];
  v14 = *(v1 + v13);
  v15 = *(v0 + v13);
  if (v14)
  {
    if (!v15)
    {
      return 0;
    }

    v16 = *(v0 + v13);
    sub_197A878A8();
    v17 = sub_19798F578(v14, v15);

    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  v18 = v8[10];
  v19 = *(v0 + v18);
  if (*(v1 + v18))
  {
    if (v19)
    {
      sub_197A878A8();
      v20 = OUTLINED_FUNCTION_63();
      v22 = sub_1979A71AC(v20, v21);

      if (v22)
      {
        return 1;
      }
    }
  }

  else if (!v19)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1979A2A70(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000018 && 0x8000000197AA2630 == a2;
  if (v3 || (sub_197A88218() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD00000000000001BLL && 0x8000000197AA2650 == a2;
    if (v6 || (sub_197A88218() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000013 && 0x8000000197AA2670 == a2;
      if (v7 || (sub_197A88218() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000019 && 0x8000000197AA2690 == a2;
        if (v8 || (sub_197A88218() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000015 && 0x8000000197AA26B0 == a2;
          if (v9 || (sub_197A88218() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000010 && 0x8000000197AA26D0 == a2;
            if (v10 || (sub_197A88218() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0xD000000000000021 && 0x8000000197AA26F0 == a2)
            {

              return 6;
            }

            else
            {
              v12 = sub_197A88218();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1979A2C9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1979A2A70(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1979A2CC4(uint64_t a1)
{
  v2 = sub_1979701EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979A2D00(uint64_t a1)
{
  v2 = sub_1979701EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t InferenceProviderPrewarmInformation.hash(into:)(const void *a1)
{
  v2 = v1;
  v17 = *MEMORY[0x1E69E9840];
  v4 = *v1;
  v5 = v1[1];
  sub_197A879B8();
  v15 = *(v1 + 1);
  v16 = *(v1 + 2);
  sub_197A88308();
  v6 = type metadata accessor for InferenceProviderPrewarmInformation(0);
  v7 = v6[6];
  sub_197A87298();
  OUTLINED_FUNCTION_0_5();
  sub_19796AA70(v8);
  sub_197A878F8();
  OUTLINED_FUNCTION_127(v6[7]);
  v9 = *(v2 + v6[8]);
  sub_197A88338();
  v10 = *(v2 + v6[9]);
  sub_197A88328();
  if (v10)
  {
    sub_1979A8214(a1, v10);
  }

  if (*(v2 + v6[10]))
  {
    sub_197A88328();
    v11 = OUTLINED_FUNCTION_60();
    result = sub_1979A8034(v11, v12);
  }

  else
  {
    result = sub_197A88328();
  }

  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1979A2EB4(void (*a1)(_BYTE *))
{
  OUTLINED_FUNCTION_145();
  a1(v3);
  return sub_197A88358();
}

uint64_t sub_1979A2F14(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_197A882F8();
  a4(v6);
  return sub_197A88358();
}

uint64_t sub_1979A2F80()
{
  InferenceProviding.convertData(clientData:)();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1979A2FF8()
{
  v24 = type metadata accessor for InferenceError.Context(0);
  v0 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24);
  v2 = v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B20, &qword_197A89620);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v23[0] = v23 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v23 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = v23 - v13;
  v15 = type metadata accessor for InferenceError(0);
  sub_19796AA70(&qword_1ED87F878);
  v23[3] = v15;
  v16 = swift_allocError();
  v23[1] = v17;
  v23[2] = v16;
  v18 = sub_197A87898();
  v19 = sub_197A87258();
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v19);
  sub_197947A40(v14, &qword_1EAF48B20, &qword_197A89620);
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v19);
  sub_1979487E0();
  *v2 = 0xD00000000000003DLL;
  *(v2 + 1) = 0x8000000197AA2370;
  *(v2 + 2) = 0;
  *(v2 + 3) = 0xE000000000000000;
  *(v2 + 4) = 0;
  *(v2 + 5) = v18;
  v2[48] = 0;
  *(v2 + 7) = 0;
  sub_1979487E0();
  LODWORD(v18) = __swift_getEnumTagSinglePayload(v7, 1, v19);
  sub_197947A40(v12, &qword_1EAF48B20, &qword_197A89620);
  sub_197947A40(v14, &qword_1EAF48B20, &qword_197A89620);
  if (v18 == 1)
  {
    __swift_storeEnumTagSinglePayload(v23[0], 1, 1, v19);
    if (__swift_getEnumTagSinglePayload(v7, 1, v19) != 1)
    {
      sub_197947A40(v7, &qword_1EAF48B20, &qword_197A89620);
    }
  }

  else
  {
    v20 = v23[0];
    (*(*(v19 - 8) + 32))(v23[0], v7, v19);
    __swift_storeEnumTagSinglePayload(v20, 0, 1, v19);
  }

  v21 = *(v24 + 40);
  sub_19794B0C4();
  sub_1979AA160();
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

void InferenceProviding.convertData(clientData:)()
{
  OUTLINED_FUNCTION_92();
  v46 = type metadata accessor for InferenceError.Context(0);
  v1 = OUTLINED_FUNCTION_6(v46);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1_0();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B20, &qword_197A89620);
  v8 = OUTLINED_FUNCTION_28(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_109();
  v12 = MEMORY[0x1EEE9AC00](v11);
  v45[0] = v45 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = v45 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v17 = type metadata accessor for InferenceError(0);
  OUTLINED_FUNCTION_1_4();
  sub_19796AA70(v18);
  v45[3] = v17;
  OUTLINED_FUNCTION_70_0();
  v19 = swift_allocError();
  v45[1] = v20;
  v45[2] = v19;
  v21 = sub_197A87898();
  v22 = sub_197A87258();
  v23 = OUTLINED_FUNCTION_25_0();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v22);
  v26 = OUTLINED_FUNCTION_91();
  sub_197947A40(v26, v27, &qword_197A89620);
  v28 = OUTLINED_FUNCTION_25_0();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v22);
  sub_1979487E0();
  *v6 = 0xD00000000000003DLL;
  *(v6 + 8) = 0x8000000197AA2370;
  *(v6 + 16) = 0;
  *(v6 + 24) = 0xE000000000000000;
  *(v6 + 32) = 0;
  *(v6 + 40) = v21;
  *(v6 + 48) = 0;
  *(v6 + 56) = 0;
  sub_1979487E0();
  v31 = OUTLINED_FUNCTION_96();
  LODWORD(v21) = __swift_getEnumTagSinglePayload(v31, v32, v22);
  sub_197947A40(v16, &qword_1EAF48B20, &qword_197A89620);
  v33 = OUTLINED_FUNCTION_91();
  sub_197947A40(v33, v34, &qword_197A89620);
  if (v21 == 1)
  {
    OUTLINED_FUNCTION_41();
    __swift_storeEnumTagSinglePayload(v35, v36, v37, v22);
    v38 = OUTLINED_FUNCTION_96();
    if (__swift_getEnumTagSinglePayload(v38, v39, v22) != 1)
    {
      sub_197947A40(v0, &qword_1EAF48B20, &qword_197A89620);
    }
  }

  else
  {
    OUTLINED_FUNCTION_36_0(v22);
    (*(v40 + 32))(v45[0], v0, v22);
    OUTLINED_FUNCTION_56_0();
    __swift_storeEnumTagSinglePayload(v41, v42, v43, v22);
  }

  v44 = *(v46 + 40);
  sub_19794B0C4();
  OUTLINED_FUNCTION_7_3();
  sub_1979AA160();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  OUTLINED_FUNCTION_93();
}

unint64_t InferenceProviding.requestStream(clientData:configuration:)@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for UnimplementedStream;
  result = sub_1979A8374();
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1979A3714()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_197960FB0;

  return InferenceProviding.requestInputStreamStep(clientDataArray:configuration:)();
}

uint64_t InferenceProviding.requestInputStreamStep(clientDataArray:configuration:)()
{
  OUTLINED_FUNCTION_9();
  v1 = type metadata accessor for InferenceError.Context(0);
  v0[2] = v1;
  OUTLINED_FUNCTION_28(v1);
  v3 = *(v2 + 64);
  v0[3] = OUTLINED_FUNCTION_78_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B20, &qword_197A89620);
  OUTLINED_FUNCTION_28(v4);
  v6 = *(v5 + 64) + 15;
  v0[4] = swift_task_alloc();
  v0[5] = swift_task_alloc();
  v0[6] = swift_task_alloc();
  v0[7] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_73();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1979A3870()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[3];
  v4 = v0[4];
  type metadata accessor for InferenceError(0);
  OUTLINED_FUNCTION_1_4();
  sub_19796AA70(v5);
  OUTLINED_FUNCTION_70_0();
  swift_allocError();
  sub_197A87898();
  v6 = sub_197A87258();
  v7 = OUTLINED_FUNCTION_25_0();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v6);
  v10 = OUTLINED_FUNCTION_91();
  sub_197947A40(v10, v11, &qword_197A89620);
  v12 = OUTLINED_FUNCTION_25_0();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v6);
  OUTLINED_FUNCTION_100_0();
  sub_1979487E0();
  OUTLINED_FUNCTION_75_3(61);
  LODWORD(v4) = __swift_getEnumTagSinglePayload(v4, 1, v6);
  v15 = OUTLINED_FUNCTION_83_0();
  sub_197947A40(v15, v16, &qword_197A89620);
  v17 = OUTLINED_FUNCTION_91();
  sub_197947A40(v17, v18, &qword_197A89620);
  v20 = v0[4];
  v19 = v0[5];
  if (v4 == 1)
  {
    v21 = OUTLINED_FUNCTION_25_0();
    __swift_storeEnumTagSinglePayload(v21, v22, v23, v6);
    v24 = OUTLINED_FUNCTION_96();
    OUTLINED_FUNCTION_64_0(v24, v25, v6);
    if (!v26)
    {
      sub_197947A40(v0[4], &qword_1EAF48B20, &qword_197A89620);
    }
  }

  else
  {
    OUTLINED_FUNCTION_36_0(v6);
    v28 = *(v27 + 32);
    v29 = OUTLINED_FUNCTION_100_0();
    v30(v29);
    OUTLINED_FUNCTION_56_0();
    __swift_storeEnumTagSinglePayload(v31, v32, v33, v6);
  }

  OUTLINED_FUNCTION_136();
  sub_19794B0C4();
  OUTLINED_FUNCTION_7_3();
  sub_1979AA160();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  OUTLINED_FUNCTION_13();

  return v34();
}

uint64_t sub_1979A3AEC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_197960FB0;

  return InferenceProvider.cancelRequest(uuid:)();
}

uint64_t sub_1979A3B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = *(*(type metadata accessor for InferenceError(0) - 8) + 64) + 15;
  v4[3] = swift_task_alloc();
  v6 = swift_task_alloc();
  v4[4] = v6;
  *v6 = v4;
  v6[1] = sub_1979A3C3C;

  return _s20ModelManagerServices18InferenceProvidingPAAE14requestOneShot10clientData13configurationAA06ClientJ0VAH_AA0D28ProviderRequestConfigurationVtYaAA0D5ErrorOYKF();
}

uint64_t sub_1979A3C3C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v6 = *(v5 + 32);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v3 + 16);
    v10 = *(v3 + 24);
    sub_1979AA160();

    OUTLINED_FUNCTION_23_1();
  }

  else
  {
    v12 = *(v3 + 24);

    OUTLINED_FUNCTION_13();
  }

  return v11();
}

uint64_t _s20ModelManagerServices18InferenceProvidingPAAE14requestOneShot10clientData13configurationAA06ClientJ0VAH_AA0D28ProviderRequestConfigurationVtYaAA0D5ErrorOYKF()
{
  OUTLINED_FUNCTION_9();
  v0[2] = v1;
  v2 = type metadata accessor for InferenceError.Context(0);
  v0[3] = v2;
  OUTLINED_FUNCTION_28(v2);
  v4 = *(v3 + 64);
  v0[4] = OUTLINED_FUNCTION_78_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B20, &qword_197A89620);
  OUTLINED_FUNCTION_28(v5);
  v7 = *(v6 + 64) + 15;
  v0[5] = swift_task_alloc();
  v0[6] = swift_task_alloc();
  v0[7] = swift_task_alloc();
  v0[8] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_73();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1979A3E24()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[4];
  v3 = v0[5];
  v5 = sub_197A87898();
  v6 = sub_197A87258();
  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v6);
  v10 = OUTLINED_FUNCTION_135();
  sub_197947A40(v10, v11, &qword_197A89620);
  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v6);
  OUTLINED_FUNCTION_60();
  sub_1979487E0();
  *v4 = 0xD000000000000035;
  *(v4 + 8) = 0x8000000197AA23F0;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0xE000000000000000;
  *(v4 + 32) = 0;
  *(v4 + 40) = v5;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  sub_1979487E0();
  LODWORD(v3) = __swift_getEnumTagSinglePayload(v3, 1, v6);
  sub_197947A40(v2, &qword_1EAF48B20, &qword_197A89620);
  v15 = OUTLINED_FUNCTION_135();
  sub_197947A40(v15, v16, &qword_197A89620);
  v18 = v0[5];
  v17 = v0[6];
  if (v3 == 1)
  {
    v19 = v0[6];
    OUTLINED_FUNCTION_41();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v6);
    OUTLINED_FUNCTION_64_0(v18, 1, v6);
    if (!v23)
    {
      sub_197947A40(v0[5], &qword_1EAF48B20, &qword_197A89620);
    }
  }

  else
  {
    OUTLINED_FUNCTION_36_0(v6);
    v25 = *(v24 + 32);
    v26 = OUTLINED_FUNCTION_60();
    v27(v26);
    OUTLINED_FUNCTION_56_0();
    __swift_storeEnumTagSinglePayload(v28, v29, v30, v6);
  }

  v31 = v0[7];
  v32 = v0[8];
  v33 = v0[5];
  v34 = v0[6];
  v35 = v0[4];
  v36 = v0[2];
  v37 = *(v0[3] + 40);
  sub_19794B0C4();
  OUTLINED_FUNCTION_7_3();
  OUTLINED_FUNCTION_49();
  sub_1979AA160();
  type metadata accessor for InferenceError(0);
  OUTLINED_FUNCTION_90();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_1_4();
  sub_19796AA70(v38);
  OUTLINED_FUNCTION_90();
  swift_willThrowTypedImpl();

  OUTLINED_FUNCTION_23_1();

  return v39();
}

uint64_t sub_1979A40C8()
{
  v1 = type metadata accessor for InferenceError.Context(0);
  v0[2] = v1;
  v2 = *(*(v1 - 8) + 64) + 15;
  v0[3] = swift_task_alloc();
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B20, &qword_197A89620) - 8) + 64) + 15;
  v0[4] = swift_task_alloc();
  v0[5] = swift_task_alloc();
  v0[6] = swift_task_alloc();
  v0[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1979A41B4, 0, 0);
}

uint64_t sub_1979A41B4()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[3];
  v4 = v0[4];
  type metadata accessor for InferenceError(0);
  OUTLINED_FUNCTION_1_4();
  sub_19796AA70(v5);
  OUTLINED_FUNCTION_70_0();
  swift_allocError();
  sub_197A87898();
  v6 = sub_197A87258();
  v7 = OUTLINED_FUNCTION_25_0();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v6);
  v10 = OUTLINED_FUNCTION_91();
  sub_197947A40(v10, v11, &qword_197A89620);
  v12 = OUTLINED_FUNCTION_25_0();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v6);
  OUTLINED_FUNCTION_100_0();
  sub_1979487E0();
  OUTLINED_FUNCTION_75_3(52);
  LODWORD(v4) = __swift_getEnumTagSinglePayload(v4, 1, v6);
  v15 = OUTLINED_FUNCTION_83_0();
  sub_197947A40(v15, v16, &qword_197A89620);
  v17 = OUTLINED_FUNCTION_91();
  sub_197947A40(v17, v18, &qword_197A89620);
  v20 = v0[4];
  v19 = v0[5];
  if (v4 == 1)
  {
    v21 = OUTLINED_FUNCTION_25_0();
    __swift_storeEnumTagSinglePayload(v21, v22, v23, v6);
    v24 = OUTLINED_FUNCTION_96();
    OUTLINED_FUNCTION_64_0(v24, v25, v6);
    if (!v26)
    {
      sub_197947A40(v0[4], &qword_1EAF48B20, &qword_197A89620);
    }
  }

  else
  {
    OUTLINED_FUNCTION_36_0(v6);
    v28 = *(v27 + 32);
    v29 = OUTLINED_FUNCTION_100_0();
    v30(v29);
    OUTLINED_FUNCTION_56_0();
    __swift_storeEnumTagSinglePayload(v31, v32, v33, v6);
  }

  OUTLINED_FUNCTION_136();
  sub_19794B0C4();
  OUTLINED_FUNCTION_7_3();
  sub_1979AA160();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  OUTLINED_FUNCTION_13();

  return v34();
}

uint64_t sub_1979A4430()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_197960FB0;

  return sub_1979A40C8();
}

uint64_t sub_1979A44C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v8 = *(*(type metadata accessor for InferenceError(0) - 8) + 64) + 15;
  v9 = swift_task_alloc();
  v4[3] = v9;
  v10 = swift_task_alloc();
  v4[4] = v10;
  *v10 = v4;
  v10[1] = sub_1979AA2A4;

  return sub_19799DD64(a1, a2, a3, v9);
}

uint64_t _s20ModelManagerServices24InferenceProviderAdapterV15transitionAsset14withIdentifier2to4fromySS_AA9LoadStateOAItYaAA0D5ErrorOYKF(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4, uint64_t a5)
{
  *(v6 + 32) = v5;
  *(v6 + 40) = a5;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 97) = *a3;
  *(v6 + 98) = *a4;
  return OUTLINED_FUNCTION_4(sub_1979A4664);
}

void sub_1979A4664()
{
  OUTLINED_FUNCTION_49_0();
  v2 = *(v1 + 97);
  OUTLINED_FUNCTION_94(*(v1 + 32));
  *(v1 + 96) = v2;
  v3 = *(v0 + 32);
  OUTLINED_FUNCTION_26();
  v10 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  *(v1 + 48) = v7;
  *v7 = v1;
  OUTLINED_FUNCTION_78_2(v7);
  OUTLINED_FUNCTION_147();

  __asm { BRAA            X5, X16 }
}

uint64_t sub_1979A4780()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_12();
  *v3 = v2;
  v5 = *(v4 + 48);
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v8 + 56) = v0;

  if (v0)
  {
    v9 = sub_1979A4D84;
  }

  else
  {
    v9 = sub_1979A4880;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

void sub_1979A4880()
{
  OUTLINED_FUNCTION_49_0();
  if (*(v1 + 97))
  {
    v0 = OUTLINED_FUNCTION_143_0();

    if ((v0 & 1) == 0)
    {
      if (*(v1 + 98))
      {
        v2 = OUTLINED_FUNCTION_143_0();

        if ((v2 & 1) == 0)
        {
          OUTLINED_FUNCTION_13();
          OUTLINED_FUNCTION_147();

          __asm { BRAA            X1, X16 }
        }
      }

      else
      {
      }

      OUTLINED_FUNCTION_94(*(v1 + 32));
      v12 = *(v0 + 16);
      OUTLINED_FUNCTION_26();
      v20 = v13 + *v13;
      v15 = *(v14 + 4);
      v16 = swift_task_alloc();
      *(v1 + 80) = v16;
      *v16 = v1;
      OUTLINED_FUNCTION_78_2(v16);
      OUTLINED_FUNCTION_147();

      __asm { BRAA            X4, X16 }
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_94(*(v1 + 32));
  v5 = *(v0 + 24);
  OUTLINED_FUNCTION_26();
  v19 = v6 + *v6;
  v8 = *(v7 + 4);
  v9 = swift_task_alloc();
  *(v1 + 64) = v9;
  *v9 = v1;
  OUTLINED_FUNCTION_78_2(v9);
  OUTLINED_FUNCTION_147();

  __asm { BRAA            X4, X16 }
}

uint64_t sub_1979A4B4C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_12();
  *v3 = v2;
  v5 = *(v4 + 64);
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v8 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1979A4E3C, 0, 0);
  }

  else
  {
    OUTLINED_FUNCTION_13();

    return v9();
  }
}

uint64_t sub_1979A4C68()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_12();
  *v3 = v2;
  v5 = *(v4 + 80);
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v8 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1979A4EF4, 0, 0);
  }

  else
  {
    OUTLINED_FUNCTION_13();

    return v9();
  }
}

uint64_t sub_1979A4D84()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  MEMORY[0x19A8EBBD0](v1);
  OUTLINED_FUNCTION_118();
  InferenceError.init(wrapping:)();
  type metadata accessor for InferenceError(0);
  OUTLINED_FUNCTION_1_4();
  sub_19796AA70(v3);
  OUTLINED_FUNCTION_52_2();
  swift_willThrowTypedImpl();

  OUTLINED_FUNCTION_23_1();

  return v4();
}

uint64_t sub_1979A4E3C()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 72);
  v2 = *(v0 + 40);
  MEMORY[0x19A8EBBD0](v1);
  OUTLINED_FUNCTION_118();
  InferenceError.init(wrapping:)();
  type metadata accessor for InferenceError(0);
  OUTLINED_FUNCTION_1_4();
  sub_19796AA70(v3);
  OUTLINED_FUNCTION_52_2();
  swift_willThrowTypedImpl();

  OUTLINED_FUNCTION_23_1();

  return v4();
}

uint64_t sub_1979A4EF4()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 88);
  v2 = *(v0 + 40);
  MEMORY[0x19A8EBBD0](v1);
  OUTLINED_FUNCTION_118();
  InferenceError.init(wrapping:)();
  type metadata accessor for InferenceError(0);
  OUTLINED_FUNCTION_1_4();
  sub_19796AA70(v3);
  OUTLINED_FUNCTION_52_2();
  swift_willThrowTypedImpl();

  OUTLINED_FUNCTION_23_1();

  return v4();
}

uint64_t _s20ModelManagerServices24InferenceProviderAdapterV14requestOneShot10clientData13configurationAA06ClientK0VAH_AA0dE20RequestConfigurationVtYaAA0D5ErrorOYKF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = v4;
  v5[6] = a4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return OUTLINED_FUNCTION_4(sub_1979A4FCC);
}

uint64_t sub_1979A4FCC()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_94(*(v2 + 40));
  v3 = *(v1 + 64);
  OUTLINED_FUNCTION_26();
  v13 = (v4 + *v4);
  v6 = *(v5 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v2 + 56) = v7;
  *v7 = v8;
  v7[1] = sub_1979A50E0;
  v9 = *(v2 + 24);
  v10 = *(v2 + 32);
  v11 = *(v2 + 16);

  return v13(v11, v9, v10, v0, v1);
}

uint64_t sub_1979A50E0()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_12();
  *v3 = v2;
  v5 = *(v4 + 56);
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v8 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1979A51FC, 0, 0);
  }

  else
  {
    OUTLINED_FUNCTION_13();

    return v9();
  }
}

uint64_t sub_1979A51FC()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  MEMORY[0x19A8EBBD0](v1);
  OUTLINED_FUNCTION_118();
  InferenceError.init(wrapping:)();
  type metadata accessor for InferenceError(0);
  OUTLINED_FUNCTION_1_4();
  sub_19796AA70(v3);
  OUTLINED_FUNCTION_52_2();
  swift_willThrowTypedImpl();

  OUTLINED_FUNCTION_23_1();

  return v4();
}

uint64_t InferenceProviderAdapter.requestStream(clientData:configuration:)@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = OUTLINED_FUNCTION_119();
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v7 = *(v4 + 48);
  OUTLINED_FUNCTION_129();
  v8();
  sub_197947C44(v14, v13);
  v9 = type metadata accessor for InferenceProviderAdapter.StreamAdapter();
  v10 = swift_allocObject();
  sub_1979A547C(v13);
  a1[3] = v9;
  OUTLINED_FUNCTION_50_2();
  a1[4] = sub_19796AA70(v11);
  *a1 = v10;
  return __swift_destroy_boxed_opaque_existential_1Tm(v14);
}

uint64_t sub_1979A53B4()
{
  OUTLINED_FUNCTION_18();
  type metadata accessor for ModelManagerError();
  sub_19796AA70(&qword_1ED8816D8);
  OUTLINED_FUNCTION_133_0();
  OUTLINED_FUNCTION_70_0();
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  OUTLINED_FUNCTION_13();

  return v0();
}

uint64_t sub_1979A547C(void *a1)
{
  swift_defaultActor_initialize();
  v3 = a1[3];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1_0();
  (*(v8 + 16))(v7 - v6);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(&v10);
  sub_197A87C98();
  sub_197947A40(a1, &qword_1EAF49138, &qword_197A8CE80);
  sub_197945EF8(&v10, v1 + 112);
  return v1;
}

uint64_t sub_1979A55D8()
{
  OUTLINED_FUNCTION_9();
  v1[25] = v2;
  v1[26] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49110, &qword_197A92D60);
  OUTLINED_FUNCTION_28(v3);
  v5 = *(v4 + 64);
  v1[27] = OUTLINED_FUNCTION_78_0();

  return MEMORY[0x1EEE6DFA0](sub_1979A5664, v0, 0);
}

uint64_t sub_1979A5664()
{
  OUTLINED_FUNCTION_49_0();
  v1 = v0[26];
  OUTLINED_FUNCTION_50_2();
  v3 = sub_19796AA70(v2);
  swift_beginAccess();
  v4 = *(v1 + 136);
  v0[28] = v4;
  v5 = *(v1 + 144);
  v0[29] = v5;
  __swift_mutable_project_boxed_opaque_existential_1(v1 + 112, v4);
  OUTLINED_FUNCTION_98();
  v0[30] = swift_getAssociatedTypeWitness();
  v6 = sub_197A87DB8();
  v0[31] = v6;
  OUTLINED_FUNCTION_10(v6);
  v0[32] = v7;
  v9 = *(v8 + 64);
  v10 = OUTLINED_FUNCTION_78_0();
  v0[33] = v10;
  OUTLINED_FUNCTION_98();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v0[34] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_10(AssociatedTypeWitness);
  v0[35] = v12;
  v0[36] = *(v13 + 64);
  v14 = OUTLINED_FUNCTION_78_0();
  v0[37] = v14;
  v15 = *(MEMORY[0x1E69E85B0] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  v0[38] = v16;
  *v16 = v17;
  v16[1] = sub_1979A5864;

  return MEMORY[0x1EEE6D8D0](v10, v1, v3, v14, v4, v5);
}

uint64_t sub_1979A5864()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v6 = *(v5 + 304);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v3 + 208);
    v10 = sub_1979A5CAC;
  }

  else
  {
    v11 = *(v3 + 296);
    v12 = *(v3 + 208);
    swift_endAccess();

    v10 = sub_1979A5984;
    v9 = v12;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_1979A5984()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 264);
  v2 = *(v0 + 240);
  OUTLINED_FUNCTION_64_0(v1, 1, v2);
  if (v3)
  {
    (*(*(v0 + 256) + 8))(v1, *(v0 + 248));

    *(v0 + 48) = 0u;
    *(v0 + 64) = 0u;
  }

  else
  {
    *(v0 + 72) = v2;
    __swift_allocate_boxed_opaque_existential_1((v0 + 48));
    OUTLINED_FUNCTION_36_0(v2);
    (*(v4 + 32))();
  }

  v5 = *(v0 + 64);
  *(v0 + 16) = *(v0 + 48);
  *(v0 + 32) = v5;
  sub_1979487E0();
  if (*(v0 + 136))
  {
    v6 = *(v0 + 216);
    sub_1979AA150((v0 + 112), (v0 + 80));
    sub_197949604(v0 + 80, v0 + 144);
    v7 = type metadata accessor for ClientData(0);
    v8 = swift_dynamicCast();
    v9 = *(v0 + 216);
    if (v8)
    {
      v10 = *(v0 + 200);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));
      sub_197947A40(v0 + 16, &qword_1EAF49120, &qword_197A8CE50);
      OUTLINED_FUNCTION_56_0();
      __swift_storeEnumTagSinglePayload(v11, v12, v13, v7);
      sub_1979AA160();
      v14 = v10;
      v15 = 0;
    }

    else
    {
      v19 = *(v0 + 216);
      OUTLINED_FUNCTION_41();
      __swift_storeEnumTagSinglePayload(v20, v21, v22, v7);
      sub_197947A40(v9, &qword_1EAF49110, &qword_197A92D60);
      if (qword_1ED880370 != -1)
      {
        swift_once();
      }

      v23 = sub_197A87608();
      __swift_project_value_buffer(v23, qword_1ED880520);
      v24 = sub_197A875E8();
      v25 = sub_197A87D58();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_197941000, v24, v25, "InferenceProvider stream produced a non-ClientData element", v26, 2u);
        MEMORY[0x19A8EBE00](v26, -1, -1);
      }

      v27 = *(v0 + 200);

      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));
      sub_197947A40(v0 + 16, &qword_1EAF49120, &qword_197A8CE50);
      v14 = v27;
      v15 = 1;
    }

    v17 = 1;
    v18 = v7;
  }

  else
  {
    v16 = *(v0 + 200);
    sub_197947A40(v0 + 16, &qword_1EAF49120, &qword_197A8CE50);
    sub_197947A40(v0 + 112, &qword_1EAF49120, &qword_197A8CE50);
    type metadata accessor for ClientData(0);
    OUTLINED_FUNCTION_41();
  }

  __swift_storeEnumTagSinglePayload(v14, v15, v17, v18);
  v28 = *(v0 + 216);

  OUTLINED_FUNCTION_13();

  return v29();
}

uint64_t sub_1979A5CAC()
{
  OUTLINED_FUNCTION_49_0();
  v1 = v0[36];
  v2 = v0[37];
  v3 = v0[34];
  v4 = v0[35];
  v6 = v0[28];
  v5 = v0[29];
  v7 = OUTLINED_FUNCTION_78_0();
  v8 = *(v4 + 32);
  v8(v7, v2, v3);
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_98();
  v9 = sub_197A88208();
  if (v9)
  {
    v10 = v9;
    (*(v0[35] + 8))(v7, v0[34]);
  }

  else
  {
    v11 = v0[34];
    OUTLINED_FUNCTION_59_1();
    OUTLINED_FUNCTION_70_0();
    v10 = swift_allocError();
    v8(v12, v7, v11);
  }

  v13 = v0[37];
  v14 = v0[33];
  v15 = v0[27];

  swift_endAccess();

  type metadata accessor for InferenceError(0);
  OUTLINED_FUNCTION_1_4();
  sub_19796AA70(v16);
  OUTLINED_FUNCTION_70_0();
  swift_allocError();
  MEMORY[0x19A8EBBD0](v10);
  InferenceError.init(wrapping:)();
  swift_willThrow();

  OUTLINED_FUNCTION_13();

  return v17();
}

uint64_t sub_1979A5E68()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 112));
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1979A5EA0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_197960FB0;

  return sub_1979A55D8();
}

uint64_t sub_1979A5F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v8 = *(*(type metadata accessor for InferenceError(0) - 8) + 64) + 15;
  v9 = swift_task_alloc();
  v4[3] = v9;
  v10 = swift_task_alloc();
  v4[4] = v10;
  *v10 = v4;
  v10[1] = sub_1979AA2A4;

  return sub_19799D81C(a1, a2, a3, v9);
}

uint64_t sub_1979A6050()
{
  v1 = OUTLINED_FUNCTION_0_0();
  v2 = *(v0 + 8);
  v3 = v1 & 1;

  return v2(v3);
}

uint64_t sub_1979A60B4()
{
  v1 = sub_1979A2FF8();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1979A615C()
{
  nullsub_1();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1979A61B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a3;
  v4 = *(*(type metadata accessor for InferenceError(0) - 8) + 64) + 15;
  v3[3] = swift_task_alloc();
  v5 = swift_task_alloc();
  v3[4] = v5;
  *v5 = v3;
  v5[1] = sub_1979AA2A4;

  return _s20ModelManagerServices24InferenceProviderAdapterV15transitionAsset_2toyAA0deH10DescriptorV_AA9LoadStateOtYaAA0D5ErrorOYKF();
}

uint64_t sub_1979A6278()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_197960FB0;

  return InferenceProviderAdapter.requestInputStreamStep(clientDataArray:configuration:)();
}

uint64_t sub_1979A6304()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_197960FB0;

  return InferenceProviderAdapter.inputStreamEnded(requestID:)();
}

uint64_t sub_1979A6390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v8 = *(*(type metadata accessor for InferenceError(0) - 8) + 64) + 15;
  v9 = swift_task_alloc();
  v4[3] = v9;
  v10 = swift_task_alloc();
  v4[4] = v10;
  *v10 = v4;
  v10[1] = sub_1979AA2A4;

  return _s20ModelManagerServices24InferenceProviderAdapterV14requestOneShot10clientData13configurationAA06ClientK0VAH_AA0dE20RequestConfigurationVtYaAA0D5ErrorOYKF(a1, a2, a3, v9);
}

uint64_t sub_1979A6480(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4, uint64_t a5)
{
  v5[2] = a5;
  v10 = *(*(type metadata accessor for InferenceError(0) - 8) + 64) + 15;
  v11 = swift_task_alloc();
  v5[3] = v11;
  v12 = swift_task_alloc();
  v5[4] = v12;
  *v12 = v5;
  v12[1] = sub_1979AA2A4;

  return _s20ModelManagerServices24InferenceProviderAdapterV15transitionAsset14withIdentifier2to4fromySS_AA9LoadStateOAItYaAA0D5ErrorOYKF(a1, a2, a3, a4, v11);
}

uint64_t sub_1979A657C(char a1)
{
  sub_197A882F8();
  MEMORY[0x19A8EB5D0](a1 & 1);
  return sub_197A88358();
}

uint64_t sub_1979A65CC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1979A6574();
  *a1 = result;
  return result;
}

uint64_t sub_1979A65F4(uint64_t a1)
{
  v2 = sub_19797C400();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979A6630(uint64_t a1)
{
  v2 = sub_19797C400();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979A666C(uint64_t a1)
{
  v2 = sub_19797C454();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979A66A8(uint64_t a1)
{
  v2 = sub_19797C454();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979A66E8(uint64_t a1)
{
  v2 = sub_1979A83EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979A6724(uint64_t a1)
{
  v2 = sub_1979A83EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t InferenceProviderDescriptor.Instance.hash(into:)()
{
  if (!v0[1])
  {
    return MEMORY[0x19A8EB5D0](0);
  }

  v1 = *v0;
  MEMORY[0x19A8EB5D0](1);

  return sub_197A879B8();
}

uint64_t InferenceProviderDescriptor.Instance.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  OUTLINED_FUNCTION_145();
  if (v2)
  {
    MEMORY[0x19A8EB5D0](1);
    sub_197A879B8();
  }

  else
  {
    MEMORY[0x19A8EB5D0](0);
  }

  return sub_197A88358();
}

uint64_t sub_1979A6848()
{
  v1 = *v0;
  v2 = v0[1];
  sub_197A882F8();
  if (v2)
  {
    MEMORY[0x19A8EB5D0](1);
    sub_197A879B8();
  }

  else
  {
    MEMORY[0x19A8EB5D0](0);
  }

  return sub_197A88358();
}

uint64_t sub_1979A68C0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_197A88218() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65636E6174736E69 && a2 == 0xE800000000000000;
    if (v6 || (sub_197A88218() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6E4F646574736F68 && a2 == 0xEE00726576726553)
    {

      return 2;
    }

    else
    {
      v8 = sub_197A88218();

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

uint64_t sub_1979A69D8(unsigned __int8 a1)
{
  OUTLINED_FUNCTION_145();
  MEMORY[0x19A8EB5D0](a1);
  return sub_197A88358();
}

uint64_t sub_1979A6A18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1979A68C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1979A6A40@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1979A69D0();
  *a1 = result;
  return result;
}

uint64_t sub_1979A6A68(uint64_t a1)
{
  v2 = sub_19797C050();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979A6AA4(uint64_t a1)
{
  v2 = sub_19797C050();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t InferenceProviderDescriptor.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_85();
  sub_197A879B8();
  if (v4)
  {
    MEMORY[0x19A8EB5D0](1);
    sub_197A879B8();
  }

  else
  {
    MEMORY[0x19A8EB5D0](0);
  }

  sub_197A88328();
  return sub_197A88358();
}

uint64_t sub_1979A6B74()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 1);
  v5 = *(v0 + 32);
  sub_197A882F8();
  InferenceProviderDescriptor.hash(into:)();
  return sub_197A88358();
}

unint64_t sub_1979A6BD0()
{
  result = qword_1EAF48630;
  if (!qword_1EAF48630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF48630);
  }

  return result;
}

void sub_1979A6C24()
{
  OUTLINED_FUNCTION_67();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);
  v5 = OUTLINED_FUNCTION_10(v4);
  v50 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_27();
  v49 = v9 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v39 - v12;
  v47 = type metadata accessor for StateDump.ExecutionGroupState(0);
  v14 = *(*(v47 - 1) + 64);
  v15 = MEMORY[0x1EEE9AC00](v47);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v20 = *(v3 + 16);
  if (v20 == *(v1 + 16) && v20 && v3 != v1)
  {
    v21 = 0;
    v22 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v40 = *(v3 + 16);
    v41 = v1 + v22;
    v42 = *(v18 + 72);
    v43 = v3 + v22;
    v45 = &v39 - v19;
    v46 = v17;
    while (1)
    {
      OUTLINED_FUNCTION_18_1();
      sub_19796B948();
      if (v21 == v20)
      {
        break;
      }

      v44 = v21;
      OUTLINED_FUNCTION_18_1();
      sub_19796B948();
      if ((_s20ModelManagerServices14UUIDIdentifierV2eeoiySbACyxG_AEtFZ_0() & 1) == 0 || (sub_19799F5B0(*&v45[v47[5]], *&v46[v47[5]]) & 1) == 0 || (v23 = v47[6], v24 = *&v45[v23], v25 = *&v46[v23], v26 = *(v24 + 16), v26 != *(v25 + 16)))
      {
LABEL_26:
        sub_19796B99C();
        sub_19796B99C();
        goto LABEL_27;
      }

      if (v26 && v24 != v25)
      {
        v27 = 0;
        v48 = v24 + ((*(v50 + 80) + 32) & ~*(v50 + 80));
        while (v27 < *(v24 + 16))
        {
          v28 = *(v50 + 72) * v27;
          sub_1979487E0();
          if (v27 >= *(v25 + 16))
          {
            goto LABEL_29;
          }

          v29 = v13;
          v30 = v49;
          sub_1979487E0();
          v31 = _s20ModelManagerServices14UUIDIdentifierV2eeoiySbACyxG_AEtFZ_0();
          v32 = v30;
          v13 = v29;
          sub_197947A40(v32, &qword_1EAF49128, &unk_197A8CE70);
          sub_197947A40(v29, &qword_1EAF49128, &unk_197A8CE70);
          if ((v31 & 1) == 0)
          {
            goto LABEL_26;
          }

          if (v26 == ++v27)
          {
            goto LABEL_16;
          }
        }

        __break(1u);
LABEL_29:
        __break(1u);
        break;
      }

LABEL_16:
      v33 = v47[7];
      v34 = *&v45[v33];
      v35 = *&v45[v33 + 8];
      v36 = &v46[v33];
      if (v34 == *v36 && v35 == *(v36 + 1))
      {
        sub_19796B99C();
        sub_19796B99C();
      }

      else
      {
        v38 = sub_197A88218();
        sub_19796B99C();
        OUTLINED_FUNCTION_91();
        sub_19796B99C();
        if ((v38 & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      v21 = v44 + 1;
      v20 = v40;
      if (v44 + 1 == v40)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_27:
    OUTLINED_FUNCTION_66();
  }
}

void sub_1979A701C()
{
  OUTLINED_FUNCTION_67();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = *(v3 + 16);
  if (v8 == *(v1 + 16) && v8 && v3 != v1)
  {
    v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v10 = v3 + v9;
    v11 = v1 + v9;
    v12 = *(v7 + 72);
    do
    {
      OUTLINED_FUNCTION_129();
      sub_1979487E0();
      OUTLINED_FUNCTION_129();
      sub_1979487E0();
      OUTLINED_FUNCTION_63();
      v13 = _s20ModelManagerServices14UUIDIdentifierV2eeoiySbACyxG_AEtFZ_0();
      v14 = OUTLINED_FUNCTION_69_0();
      sub_197947A40(v14, v15, v16);
      OUTLINED_FUNCTION_85();
      sub_197947A40(v17, v18, v19);
      if ((v13 & 1) == 0)
      {
        break;
      }

      v11 += v12;
      v10 += v12;
      --v8;
    }

    while (v8);
  }

  OUTLINED_FUNCTION_66();
}

uint64_t sub_1979A71AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CustomAssetConfiguration(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = (&v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v11 = (&v54 - v10);
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    return 0;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v54 = *(v9 + 72);
    v55 = v4;
    do
    {
      sub_19796B948();
      sub_19796B948();
      v16 = *v11 == *v8 && v11[1] == v8[1];
      if (!v16 && (sub_197A88218() & 1) == 0 || (v11[2] == v8[2] ? (v17 = v11[3] == v8[3]) : (v17 = 0), !v17 && (sub_197A88218() & 1) == 0))
      {
LABEL_42:
        sub_19796B99C();
        sub_19796B99C();
        return 0;
      }

      v18 = v55;
      v19 = *(v55 + 28);
      v20 = v11 + v19;
      v21 = *(v11 + v19 + 32);
      if (v21 == 1)
      {
        v22 = v8 + v19;
        if (*(v8 + v19 + 32))
        {
          goto LABEL_33;
        }

        v23 = 0;
      }

      else
      {
        v25 = *(v20 + 2);
        v24 = *(v20 + 3);
        v26 = *(v20 + 1);
        v27 = HIDWORD(*v20);
        atoken.val[0] = *v20;
        atoken.val[1] = v27;
        *&atoken.val[2] = v26;
        *&atoken.val[4] = v25;
        *&atoken.val[6] = v24;
        v28 = audit_token_to_pid(&atoken);
        v22 = v8 + *(v18 + 28);
        if (v22[32])
        {
          goto LABEL_42;
        }

        v23 = v28;
      }

      v29 = v22 + 32;
      v31 = *(v22 + 2);
      v30 = *(v22 + 3);
      v32 = *(v22 + 1);
      v33 = HIDWORD(*v22);
      atoken.val[0] = *v22;
      atoken.val[1] = v33;
      *&atoken.val[2] = v32;
      *&atoken.val[4] = v31;
      *&atoken.val[6] = v30;
      if (v23 == audit_token_to_pid(&atoken))
      {
        v34 = v21;
      }

      else
      {
        v34 = 1;
      }

      if (v34)
      {
        goto LABEL_42;
      }

      v35 = v20[32];
      if (v35 == 1)
      {
        if (*v29)
        {
          goto LABEL_33;
        }

        v36 = 0;
      }

      else
      {
        v38 = *(v20 + 2);
        v37 = *(v20 + 3);
        v39 = *(v20 + 1);
        v40 = HIDWORD(*v20);
        atoken.val[0] = *v20;
        atoken.val[1] = v40;
        *&atoken.val[2] = v39;
        *&atoken.val[4] = v38;
        *&atoken.val[6] = v37;
        v41 = audit_token_to_pidversion(&atoken);
        if (*v29)
        {
          goto LABEL_42;
        }

        v36 = v41;
      }

      v43 = *(v22 + 2);
      v42 = *(v22 + 3);
      v44 = *(v22 + 1);
      v45 = HIDWORD(*v22);
      atoken.val[0] = *v22;
      atoken.val[1] = v45;
      *&atoken.val[2] = v44;
      *&atoken.val[4] = v43;
      *&atoken.val[6] = v42;
      if (v36 == audit_token_to_pidversion(&atoken))
      {
        v46 = v35;
      }

      else
      {
        v46 = 1;
      }

      if (v46)
      {
        goto LABEL_42;
      }

LABEL_33:
      v47 = *(v55 + 32);
      v48 = *(v11 + v47);
      v49 = *(v11 + v47 + 8);
      v50 = (v8 + v47);
      if (v48 == *v50 && v49 == v50[1])
      {
        sub_19796B99C();
        sub_19796B99C();
      }

      else
      {
        v52 = sub_197A88218();
        sub_19796B99C();
        sub_19796B99C();
        if ((v52 & 1) == 0)
        {
          return 0;
        }
      }

      v15 += v54;
      v14 += v54;
      --v12;
    }

    while (v12);
  }

  return 1;
}

uint64_t sub_1979A7584(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_197A88358();
  v3 = *(a2 + 56);
  v4 = *(a2 + 32);
  OUTLINED_FUNCTION_19_2();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;
  result = sub_197A878A8();
  v11 = 0;
  v12 = 0;
  if (v7)
  {
    while (1)
    {
LABEL_5:
      OUTLINED_FUNCTION_134_0();
      v16 = (*(a2 + 48) + ((v14 << 10) | (16 * v15)));
      v17 = *v16;
      v18 = v16[1];
      sub_197A882F8();
      sub_197A878A8();
      sub_197A879B8();
      v19 = sub_197A88358();

      v11 ^= v19;
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v9)
    {

      return MEMORY[0x19A8EB5D0](0);
    }

    ++v12;
    if (*(a2 + 56 + 8 * v13))
    {
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1979A76B8()
{
  result = qword_1EAF48FF8;
  if (!qword_1EAF48FF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF48FF0, &qword_197A8BB10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF48FF8);
  }

  return result;
}

unint64_t sub_1979A771C()
{
  result = qword_1EAF48620;
  if (!qword_1EAF48620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF48620);
  }

  return result;
}

void sub_1979A7770()
{
  OUTLINED_FUNCTION_67();
  v2 = v1;
  OUTLINED_FUNCTION_97();
  v3 = sub_197A87298();
  v4 = OUTLINED_FUNCTION_2(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1_0();
  v11 = v10 - v9;
  memcpy(v25, v0, sizeof(v25));
  sub_197A88358();
  v12 = *(v2 + 56);
  v13 = *(v2 + 32);
  OUTLINED_FUNCTION_19_2();
  v16 = v15 & v14;
  v18 = (v17 + 63) >> 6;
  sub_197A878A8();
  v19 = 0;
  v20 = 0;
  if (v16)
  {
    while (1)
    {
LABEL_5:
      OUTLINED_FUNCTION_134_0();
      (*(v6 + 16))(v11, *(v2 + 48) + *(v6 + 72) * (v23 | (v22 << 6)), v3);
      OUTLINED_FUNCTION_0_5();
      sub_19796AA70(&qword_1ED880FE0);
      v24 = sub_197A878E8();
      (*(v6 + 8))(v11, v3);
      v19 ^= v24;
    }
  }

  while (1)
  {
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v21 >= v18)
    {

      MEMORY[0x19A8EB5D0](0);
      OUTLINED_FUNCTION_66();
      return;
    }

    ++v20;
    if (*(v2 + 56 + 8 * v21))
    {
      goto LABEL_5;
    }
  }

  __break(1u);
}

void sub_1979A7954()
{
  OUTLINED_FUNCTION_67();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = OUTLINED_FUNCTION_114(v7, v5, v3);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  v12 = OUTLINED_FUNCTION_10(v11);
  v33 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_103();
  MEMORY[0x1EEE9AC00](v16);
  v32[2] = v32 - v17;
  v32[0] = v8;
  memcpy(v35, v8, sizeof(v35));
  v32[1] = sub_197A88358();
  v19 = v6 + 56;
  v18 = *(v6 + 56);
  v20 = *(v6 + 32);
  OUTLINED_FUNCTION_19_2();
  v23 = v22 & v21;
  v25 = (v24 + 63) >> 6;
  v34 = v6;
  sub_197A878A8();
  v26 = 0;
  v27 = 0;
  if (v23)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v28 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v28 >= v25)
    {

      MEMORY[0x19A8EB5D0](v26);
      OUTLINED_FUNCTION_66();
      return;
    }

    v23 = *(v19 + 8 * v28);
    ++v27;
    if (v23)
    {
      v27 = v28;
      do
      {
LABEL_7:
        v23 &= v23 - 1;
        v29 = *(v34 + 48);
        v30 = *(v33 + 72);
        sub_1979487E0();
        OUTLINED_FUNCTION_135();
        sub_19794B0C4();
        sub_197A882F8();
        sub_197A87298();
        OUTLINED_FUNCTION_0_5();
        sub_19796AA70(&qword_1ED880FE0);
        sub_197A878F8();
        v31 = sub_197A88358();
        sub_197947A40(v0, v4, v2);
        v26 ^= v31;
      }

      while (v23);
      continue;
    }
  }

  __break(1u);
}

void sub_1979A7B7C()
{
  OUTLINED_FUNCTION_67();
  v2 = OUTLINED_FUNCTION_43_1();
  active = type metadata accessor for StateDump.InferenceProviderState.ActiveRequest(v2);
  v4 = OUTLINED_FUNCTION_2(active);
  v24 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1_0();
  v10 = v9 - v8;
  memcpy(v25, v1, sizeof(v25));
  sub_197A88358();
  v11 = *(v0 + 56);
  v12 = *(v0 + 32);
  OUTLINED_FUNCTION_19_2();
  v15 = v14 & v13;
  v17 = (v16 + 63) >> 6;
  sub_197A878A8();
  v18 = 0;
  v19 = 0;
  if (v15)
  {
    goto LABEL_6;
  }

  while (1)
  {
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v20 >= v17)
    {

      MEMORY[0x19A8EB5D0](v18);
      OUTLINED_FUNCTION_66();
      return;
    }

    v15 = *(v0 + 56 + 8 * v20);
    ++v19;
    if (v15)
    {
      v19 = v20;
      do
      {
LABEL_6:
        v15 &= v15 - 1;
        v21 = *(v0 + 48);
        v22 = *(v24 + 72);
        OUTLINED_FUNCTION_16_1();
        sub_19796B948();
        sub_197A882F8();
        sub_197A87298();
        OUTLINED_FUNCTION_0_5();
        sub_19796AA70(&qword_1ED880FE0);
        sub_197A878F8();
        v23 = *(v10 + *(active + 20));
        OUTLINED_FUNCTION_2_3();
        sub_19796B99C();
        switch(v23)
        {
          case 2:
            OUTLINED_FUNCTION_140_0();
            OUTLINED_FUNCTION_66_1();
            break;
          default:
            break;
        }

        sub_197A879B8();

        v18 ^= sub_197A88358();
      }

      while (v15);
    }
  }

  __break(1u);
}

void sub_1979A7DBC()
{
  OUTLINED_FUNCTION_67();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_97();
  v6 = type metadata accessor for StateDump.ExecutionGroupState(v5);
  v7 = OUTLINED_FUNCTION_2(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_123();
  if (v2)
  {
    v12 = v6[5];
    v13 = v6[6];
    v14 = (v1 + v6[7]);
    OUTLINED_FUNCTION_128();
    v15 = *(v9 + 72);
    do
    {
      OUTLINED_FUNCTION_18_1();
      OUTLINED_FUNCTION_59_1();
      sub_19796B948();
      sub_197A87298();
      OUTLINED_FUNCTION_0_5();
      sub_19796AA70(&qword_1ED880FE0);
      OUTLINED_FUNCTION_52_2();
      sub_197A878F8();
      sub_1979A7584(v0, *(v1 + v12));
      v16 = *(v1 + v13);
      sub_1979A7F04();
      v17 = *v14;
      v18 = v14[1];
      sub_197A879B8();
      sub_19796B99C();
      v4 += v15;
      --v2;
    }

    while (v2);
  }

  OUTLINED_FUNCTION_66();
}

void sub_1979A7F04()
{
  OUTLINED_FUNCTION_67();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);
  OUTLINED_FUNCTION_10(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_123();
  if (v1)
  {
    OUTLINED_FUNCTION_128();
    v10 = *(v6 + 72);
    do
    {
      OUTLINED_FUNCTION_59_1();
      sub_1979487E0();
      sub_197A87298();
      OUTLINED_FUNCTION_0_5();
      sub_19796AA70(&qword_1ED880FE0);
      OUTLINED_FUNCTION_52_2();
      sub_197A878F8();
      sub_197947A40(v0, &qword_1EAF49128, &unk_197A8CE70);
      v3 += v10;
      --v1;
    }

    while (v1);
  }

  OUTLINED_FUNCTION_66();
}

uint64_t sub_1979A8034(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for CustomAssetConfiguration(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = (&atoken - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a2 + 16);
  result = MEMORY[0x19A8EB5D0](v8);
  if (v8)
  {
    v10 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v3 + 28);
    v12 = (v7 + *(v3 + 32));
    v13 = v7 + v11;
    v14 = *(v4 + 72);
    do
    {
      sub_19796B948();
      v15 = *v7;
      v16 = v7[1];
      sub_197A879B8();
      v17 = v7[2];
      v18 = v7[3];
      sub_197A879B8();
      v19 = *v12;
      v20 = v12[1];
      sub_197A879B8();
      if ((v13[32] & 1) == 0)
      {
        v22 = *(v13 + 2);
        v21 = *(v13 + 3);
        v23 = *(v13 + 1);
        v24 = HIDWORD(*v13);
        atoken.val[0] = *v13;
        atoken.val[1] = v24;
        *&atoken.val[2] = v23;
        *&atoken.val[4] = v22;
        *&atoken.val[6] = v21;
        audit_token_to_pid(&atoken);
      }

      sub_197A88338();
      if ((v13[32] & 1) == 0)
      {
        v26 = *(v13 + 2);
        v25 = *(v13 + 3);
        v27 = *(v13 + 1);
        v28 = HIDWORD(*v13);
        atoken.val[0] = *v13;
        atoken.val[1] = v28;
        *&atoken.val[2] = v27;
        *&atoken.val[4] = v26;
        *&atoken.val[6] = v25;
        audit_token_to_pidversion(&atoken);
      }

      sub_197A88338();
      result = sub_19796B99C();
      v10 += v14;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t sub_1979A8214(const void *a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;
  result = sub_197A878A8();
  v9 = 0;
  for (i = 0; v6; v9 ^= result)
  {
    v11 = i;
LABEL_9:
    v12 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v13 = (v11 << 10) | (16 * v12);
    v14 = (*(a2 + 48) + v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(a2 + 56) + v13);
    v18 = *v17;
    v19 = v17[1];
    memcpy(__dst, a1, sizeof(__dst));
    sub_197A878A8();
    sub_197A878A8();
    sub_197A879B8();

    sub_197A879B8();

    result = sub_197A88358();
  }

  while (1)
  {
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return MEMORY[0x19A8EB5D0](v9);
    }

    v6 = *(v3 + 8 * v11);
    ++i;
    if (v6)
    {
      i = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1979A8374()
{
  result = qword_1EAF49040;
  if (!qword_1EAF49040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF49040);
  }

  return result;
}

unint64_t sub_1979A83EC()
{
  result = qword_1ED87F048;
  if (!qword_1ED87F048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87F048);
  }

  return result;
}

unint64_t sub_1979A8490()
{
  result = qword_1EAF49098;
  if (!qword_1EAF49098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF49098);
  }

  return result;
}

unint64_t sub_1979A8580()
{
  result = qword_1EAF490A8;
  if (!qword_1EAF490A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF490A8);
  }

  return result;
}

unint64_t sub_1979A85D8()
{
  result = qword_1EAF485C8;
  if (!qword_1EAF485C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF485C8);
  }

  return result;
}

void dispatch thunk of InferenceProvider.loadIn(inferenceAssetIdentifier:)()
{
  OUTLINED_FUNCTION_49_0();
  v4 = *(OUTLINED_FUNCTION_115(v0, v1, v2, v3) + 16);
  OUTLINED_FUNCTION_26();
  v13 = v5 + *v5;
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_20(v8);
  *v9 = v10;
  OUTLINED_FUNCTION_43(v9);
  OUTLINED_FUNCTION_98();
  OUTLINED_FUNCTION_147();

  __asm { BRAA            X4, X16 }
}

void dispatch thunk of InferenceProvider.loadOut(inferenceAssetIdentifier:)()
{
  OUTLINED_FUNCTION_49_0();
  v4 = *(OUTLINED_FUNCTION_115(v0, v1, v2, v3) + 24);
  OUTLINED_FUNCTION_26();
  v13 = v5 + *v5;
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_20(v8);
  *v9 = v10;
  OUTLINED_FUNCTION_43(v9);
  OUTLINED_FUNCTION_98();
  OUTLINED_FUNCTION_147();

  __asm { BRAA            X4, X16 }
}

uint64_t dispatch thunk of InferenceProvider.transitionAsset(withIdentifier:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_49_0();
  v14 = *(OUTLINED_FUNCTION_10_3(v9, v10, v11, v12, v13) + 32);
  OUTLINED_FUNCTION_17_2();
  v30 = v15 + *v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_20(v18);
  *v19 = v20;
  OUTLINED_FUNCTION_43(v19);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_117();

  return v26(v21, v22, v23, v24, v25, v26, v27, v28, a9, v30);
}

uint64_t dispatch thunk of InferenceProvider.requestOneShot(clientData:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_49_0();
  v14 = *(OUTLINED_FUNCTION_10_3(v9, v10, v11, v12, v13) + 56);
  OUTLINED_FUNCTION_17_2();
  v30 = v15 + *v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_20(v18);
  *v19 = v20;
  OUTLINED_FUNCTION_43(v19);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_117();

  return v26(v21, v22, v23, v24, v25, v26, v27, v28, a9, v30);
}

{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_49_0();
  v14 = *(OUTLINED_FUNCTION_10_3(v9, v10, v11, v12, v13) + 64);
  OUTLINED_FUNCTION_17_2();
  v30 = v15 + *v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_20(v18);
  *v19 = v20;
  v19[1] = sub_197960FB0;
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_117();

  return v26(v21, v22, v23, v24, v25, v26, v27, v28, a9, v30);
}

uint64_t sub_1979A8A60()
{
  OUTLINED_FUNCTION_18();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_21();
  v6 = *(v5 + 16);
  v7 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;

  v9 = *(v7 + 8);

  return v9(v4, v2);
}

uint64_t dispatch thunk of InferenceProvider.cancelRequest(uuid:)()
{
  OUTLINED_FUNCTION_33();
  v3 = *(OUTLINED_FUNCTION_37_0(v0, v1, v2) + 72);
  OUTLINED_FUNCTION_17_2();
  v13 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_20(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_10_0(v8);

  return v11(v10);
}

uint64_t dispatch thunk of InferenceProviding.isVersionSupported(requestVersion:)()
{
  OUTLINED_FUNCTION_33();
  v3 = *(OUTLINED_FUNCTION_37_0(v0, v1, v2) + 16);
  OUTLINED_FUNCTION_17_2();
  v13 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_20(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_10_0(v8);

  return v11(v10);
}

uint64_t sub_1979A8E60()
{
  OUTLINED_FUNCTION_9();
  v2 = v1;
  OUTLINED_FUNCTION_21();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2);
}

uint64_t dispatch thunk of InferenceProviding.convertData(clientData:)()
{
  OUTLINED_FUNCTION_33();
  v3 = *(OUTLINED_FUNCTION_37_0(v0, v1, v2) + 24);
  OUTLINED_FUNCTION_17_2();
  v13 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_20(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_10_0(v8);

  return v11(v10);
}

uint64_t dispatch thunk of InferenceProviding.prewarmHint(_:)()
{
  OUTLINED_FUNCTION_33();
  v3 = *(OUTLINED_FUNCTION_37_0(v0, v1, v2) + 32);
  OUTLINED_FUNCTION_17_2();
  v13 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_20(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_10_0(v8);

  return v11(v10);
}

uint64_t _s20ModelManagerServices18InferenceProvidingP15transitionAsset_2toyAA0d8ProviderG10DescriptorV_AA9LoadStateOtYaAA0D5ErrorOYKFTj(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_49_0();
  v14 = *(OUTLINED_FUNCTION_10_3(v9, v10, v11, v12, v13) + 40);
  OUTLINED_FUNCTION_17_2();
  v30 = v15 + *v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_20(v18);
  *v19 = v20;
  OUTLINED_FUNCTION_43(v19);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_117();

  return v26(v21, v22, v23, v24, v25, v26, v27, v28, a9, v30);
}

uint64_t dispatch thunk of InferenceProviding.requestInputStreamStep(clientDataArray:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_49_0();
  v14 = *(OUTLINED_FUNCTION_10_3(v9, v10, v11, v12, v13) + 56);
  OUTLINED_FUNCTION_17_2();
  v30 = v15 + *v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_20(v18);
  *v19 = v20;
  v19[1] = sub_197960FB0;
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_117();

  return v26(v21, v22, v23, v24, v25, v26, v27, v28, a9, v30);
}

uint64_t dispatch thunk of InferenceProviding.inputStreamEnded(requestID:)()
{
  OUTLINED_FUNCTION_33();
  v3 = *(OUTLINED_FUNCTION_37_0(v0, v1, v2) + 64);
  OUTLINED_FUNCTION_17_2();
  v13 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_20(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_10_0(v8);

  return v11(v10);
}

uint64_t _s20ModelManagerServices18InferenceProvidingP14requestOneShot10clientData13configurationAA06ClientJ0VAH_AA0D28ProviderRequestConfigurationVtYaAA0D5ErrorOYKFTj(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a6 + 72);
  OUTLINED_FUNCTION_26();
  v20 = (v13 + *v13);
  v15 = *(v14 + 4);
  v16 = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_20(v16);
  *v17 = v18;
  v17[1] = sub_197960FB0;

  return v20(a1, a2, a3, a4, a5, a6);
}

uint64_t _s20ModelManagerServices36UndeprecatedInferenceProviderAdapterP15transitionAsset14withIdentifier2to4fromySS_AA9LoadStateOAItYaAA0E5ErrorOYKFTj(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *(a7 + 8);
  OUTLINED_FUNCTION_17_2();
  v22 = (v15 + *v15);
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_20(v18);
  *v19 = v20;
  OUTLINED_FUNCTION_43(v19);

  return v22(a1, a2, a3, a4, a5, a6, a7);
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1979A96DC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_1979A971C(uint64_t result, int a2, int a3)
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

LABEL_8:
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for InferenceProviderDescriptor.Instance.SpecificInstanceCodingKeys(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for InferenceProviderAssetDescriptor.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1979A9940()
{
  result = qword_1EAF490B0;
  if (!qword_1EAF490B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF490B0);
  }

  return result;
}

unint64_t sub_1979A9998()
{
  result = qword_1EAF490B8;
  if (!qword_1EAF490B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF490B8);
  }

  return result;
}

unint64_t sub_1979A99F0()
{
  result = qword_1EAF490C0;
  if (!qword_1EAF490C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF490C0);
  }

  return result;
}

unint64_t sub_1979A9A48()
{
  result = qword_1EAF490C8;
  if (!qword_1EAF490C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF490C8);
  }

  return result;
}

unint64_t sub_1979A9AA0()
{
  result = qword_1EAF490D0;
  if (!qword_1EAF490D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF490D0);
  }

  return result;
}

unint64_t sub_1979A9AF8()
{
  result = qword_1EAF490D8;
  if (!qword_1EAF490D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF490D8);
  }

  return result;
}

unint64_t sub_1979A9B50()
{
  result = qword_1EAF490E0;
  if (!qword_1EAF490E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF490E0);
  }

  return result;
}

unint64_t sub_1979A9BEC(uint64_t a1)
{
  result = sub_19796AA70(&unk_1EAF490E8);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1979A9C48()
{
  result = qword_1ED87F8D8;
  if (!qword_1ED87F8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87F8D8);
  }

  return result;
}

unint64_t sub_1979A9CA0()
{
  result = qword_1ED87F8E0;
  if (!qword_1ED87F8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87F8E0);
  }

  return result;
}

unint64_t sub_1979A9CF8()
{
  result = qword_1ED87F8C8;
  if (!qword_1ED87F8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87F8C8);
  }

  return result;
}

unint64_t sub_1979A9D50()
{
  result = qword_1ED87F8D0;
  if (!qword_1ED87F8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87F8D0);
  }

  return result;
}

unint64_t sub_1979A9DA8()
{
  result = qword_1ED87F8B8;
  if (!qword_1ED87F8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87F8B8);
  }

  return result;
}

unint64_t sub_1979A9E00()
{
  result = qword_1ED87F8C0;
  if (!qword_1ED87F8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87F8C0);
  }

  return result;
}

unint64_t sub_1979A9E58()
{
  result = qword_1ED87F8A0;
  if (!qword_1ED87F8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87F8A0);
  }

  return result;
}

unint64_t sub_1979A9EB0()
{
  result = qword_1ED87F8A8;
  if (!qword_1ED87F8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87F8A8);
  }

  return result;
}

unint64_t sub_1979A9F4C(uint64_t a1)
{
  result = sub_19796AA70(&unk_1EAF490F8);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1979A9FA8()
{
  result = qword_1EAF49100;
  if (!qword_1EAF49100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF49100);
  }

  return result;
}

unint64_t sub_1979A9FFC(uint64_t a1)
{
  result = sub_1979AA024();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1979AA024()
{
  result = qword_1EAF49108;
  if (!qword_1EAF49108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF49108);
  }

  return result;
}

unint64_t sub_1979AA078(uint64_t a1)
{
  result = sub_1979A9A48();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1979AA0A4()
{
  result = qword_1ED87DDB8;
  if (!qword_1ED87DDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87DDB8);
  }

  return result;
}

unint64_t sub_1979AA0FC()
{
  result = qword_1ED87DDC0;
  if (!qword_1ED87DDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87DDC0);
  }

  return result;
}

_OWORD *sub_1979AA150(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1979AA160()
{
  v1 = OUTLINED_FUNCTION_43_1();
  v3 = v2(v1);
  OUTLINED_FUNCTION_6(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_22();
  v7(v6);
  return v0;
}

uint64_t sub_1979AA1B4()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_20(v5);
  *v6 = v7;
  v6[1] = sub_197960FB0;
  OUTLINED_FUNCTION_129();

  return sub_1979A1970(v8, v9);
}

__n128 OUTLINED_FUNCTION_116_0@<Q0>(uint64_t a1@<X8>, __n128 a2, __n128 a3)
{
  *(v4 + a1) = v3;
  v6 = (v4 + *(v5 + 48));
  result = a3;
  *v6 = a3;
  v6[1] = a2;
  return result;
}

void OUTLINED_FUNCTION_123()
{
  v2 = *(v0 + 16);

  JUMPOUT(0x19A8EB5D0);
}

uint64_t OUTLINED_FUNCTION_146_0()
{

  return _s20ModelManagerServices14UUIDIdentifierV2eeoiySbACyxG_AEtFZ_0();
}

uint64_t Version.init(major:minor:patch:)@<X0>(uint64_t result@<X0>, int a2@<W1>, int a3@<W2>, _DWORD *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

BOOL static Version.< infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v2 == v3)
  {
    v4 = a1[2] < a2[2];
  }

  else
  {
    v4 = v2 < v3;
  }

  if (*a1 == *a2)
  {
    return v4;
  }

  else
  {
    return *a1 < *a2;
  }
}

uint64_t sub_1979AA3C4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F6A616DLL && a2 == 0xE500000000000000;
  if (v4 || (sub_197A88218() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x726F6E696DLL && a2 == 0xE500000000000000;
    if (v6 || (sub_197A88218() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6863746170 && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_197A88218();

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

uint64_t sub_1979AA4CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1979AA3C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1979AA4F4(uint64_t a1)
{
  v2 = sub_197954698();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979AA530(uint64_t a1)
{
  v2 = sub_197954698();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Version.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_197A88338();
  sub_197A88338();
  return sub_197A88338();
}

uint64_t Version.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_197A882F8();
  sub_197A88338();
  sub_197A88338();
  sub_197A88338();
  return sub_197A88358();
}

uint64_t sub_1979AA628()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_197A882F8();
  sub_197A88338();
  sub_197A88338();
  sub_197A88338();
  return sub_197A88358();
}

uint64_t Version.description.getter()
{
  v1 = v0[1];
  v2 = v0[2];
  v7 = *v0;
  v3 = OUTLINED_FUNCTION_0_6();
  MEMORY[0x19A8EAC80](v3);

  MEMORY[0x19A8EAC80](46, 0xE100000000000000);
  v4 = OUTLINED_FUNCTION_0_6();
  MEMORY[0x19A8EAC80](v4);

  MEMORY[0x19A8EAC80](46, 0xE100000000000000);
  v5 = OUTLINED_FUNCTION_0_6();
  MEMORY[0x19A8EAC80](v5);

  return 118;
}

unint64_t sub_1979AA7BC()
{
  result = qword_1EAF49150;
  if (!qword_1EAF49150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF49150);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Version.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1979AA8F4()
{
  result = qword_1EAF49158;
  if (!qword_1EAF49158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF49158);
  }

  return result;
}

unint64_t sub_1979AA94C()
{
  result = qword_1ED87FEF0;
  if (!qword_1ED87FEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87FEF0);
  }

  return result;
}

unint64_t sub_1979AA9A4()
{
  result = qword_1ED87FEF8;
  if (!qword_1ED87FEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87FEF8);
  }

  return result;
}

uint64_t sub_1979AA9FC()
{
  v0 = sub_197A87608();
  __swift_allocate_value_buffer(v0, qword_1EAF49160);
  __swift_project_value_buffer(v0, qword_1EAF49160);
  return sub_197A875F8();
}

double InferenceProviderExtension.__allocating_init()()
{
  OUTLINED_FUNCTION_15_2();
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  return result;
}

uint64_t InferenceProviderExtension.__deallocating_deinit()
{
  sub_19795B324(v0 + 16, &qword_1EAF49178, &unk_197A8D160);
  v1 = OUTLINED_FUNCTION_15_2();

  return MEMORY[0x1EEE6BDC0](v1, v2, v3);
}

void sub_1979AAB1C(uint64_t a1, int a2)
{
  v4 = sub_197A87768();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EAF48920 != -1)
  {
    swift_once();
  }

  v9 = sub_197A87608();
  __swift_project_value_buffer(v9, qword_1EAF49160);
  v10 = *(v5 + 16);
  v10(v8, a1, v4);
  v11 = sub_197A875E8();
  v12 = sub_197A87D58();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 67109378;
    *(v13 + 4) = a2;
    *(v13 + 8) = 2112;
    sub_1979AB594();
    swift_allocError();
    v10(v15, v8, v4);
    v16 = _swift_stdlib_bridgeErrorToNSError();
    (*(v5 + 8))(v8, v4);
    *(v13 + 10) = v16;
    *v14 = v16;
    _os_log_impl(&dword_197941000, v11, v12, "Session with host process with %d was cancelled: %@", v13, 0x12u);
    sub_19795B324(v14, &qword_1EAF48A90, &qword_197A891A0);
    MEMORY[0x19A8EBE00](v14, -1, -1);
    MEMORY[0x19A8EBE00](v13, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  exit(1);
}

uint64_t sub_1979AAD6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_197960E38;

  return sub_1979AB3E4(a5);
}

uint64_t sub_1979AAE20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  v5 = *(*(type metadata accessor for InferenceProviderXPCRequest.Notification(0) - 8) + 64) + 15;
  v4[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1979AAEB4, 0, 0);
}

uint64_t sub_1979AAEB4()
{
  OUTLINED_FUNCTION_18();
  v1 = v0[11];
  v2 = v0[8];
  sub_197947C44(v0[7], (v0 + 2));
  sub_197969DC4(v2, v1, type metadata accessor for InferenceProviderXPCRequest.Notification);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF491D0, &qword_197A8D360);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v6 = OUTLINED_FUNCTION_16_2();
  v0[12] = v6;
  v7 = OUTLINED_FUNCTION_19(&unk_197A8D368);
  v0[13] = v7;
  *v7 = v0;
  v7[1] = sub_1979AAFB0;
  v9 = v0[9];
  v8 = v0[10];

  return v11(v6, v8);
}

uint64_t sub_1979AAFB0()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v2 = *(v1 + 104);
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  return MEMORY[0x1EEE6DFA0](sub_1979AB09C, 0, 0);
}

uint64_t sub_1979AB09C()
{
  OUTLINED_FUNCTION_9();
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);

  OUTLINED_FUNCTION_13();

  return v3();
}

uint64_t sub_1979AB0FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_197960FB0;

  return sub_1979AB3E4(a5);
}

uint64_t sub_1979AB1B0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1979AB1D4, v2, 0);
}

uint64_t sub_1979AB1D4()
{
  OUTLINED_FUNCTION_18();
  v1 = *(*(v0 + 32) + 112);
  v2 = *(**(v0 + 16) + 120);
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_1979AB28C;

  return sub_197A0CE04();
}

uint64_t sub_1979AB28C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v2 = *(v1 + 40);
  v3 = *(v1 + 32);
  v4 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  return MEMORY[0x1EEE6DFA0](sub_1979AB38C, v3, 0);
}

uint64_t sub_1979AB38C()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_19796F110();
  OUTLINED_FUNCTION_13();

  return v3();
}

uint64_t sub_1979AB3E4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1979AB404, v1, 0);
}

uint64_t sub_1979AB404()
{
  OUTLINED_FUNCTION_33();
  if (qword_1ED87E900 != -1)
  {
    OUTLINED_FUNCTION_8_3();
  }

  v1 = sub_197A87608();
  __swift_project_value_buffer(v1, qword_1ED87DF90);
  v2 = sub_197A875E8();
  v3 = sub_197A87D48();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 16);
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    OUTLINED_FUNCTION_20_1(&dword_197941000, v6, v7, "Received task cancellation for message %llu.");
    OUTLINED_FUNCTION_44();
  }

  v8 = *(v0 + 16);
  v9 = *(v0 + 24);

  v10 = *(v9 + 120);
  os_unfair_lock_lock((v10 + 24));
  sub_1979D8650((v10 + 16), v8);
  os_unfair_lock_unlock((v10 + 24));
  OUTLINED_FUNCTION_13();

  return v11();
}

unint64_t sub_1979AB594()
{
  result = qword_1ED87D770;
  if (!qword_1ED87D770)
  {
    sub_197A87768();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87D770);
  }

  return result;
}

uint64_t sub_1979AB5EC()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_14_3();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_8_0(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_2_5(v2);

  return sub_1979AB0FC(v4, v5, v6, v7, v0);
}

uint64_t sub_1979AB684()
{
  OUTLINED_FUNCTION_18();
  v1 = type metadata accessor for InferenceProviderXPCRequest.Notification(0);
  OUTLINED_FUNCTION_10(v1);
  v4 = *(v3 + 64) + ((*(v2 + 80) + 56) & ~*(v2 + 80));
  OUTLINED_FUNCTION_6_3();
  v7 = *(v0 + v6);
  v8 = *(v0 + (v5 & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_8_0(v9);
  *v10 = v11;
  v12 = OUTLINED_FUNCTION_10_4(v10);

  return sub_1979AAE20(v12, v13, v14, v15);
}

uint64_t objectdestroy_6Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1979AB7AC()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_14_3();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_8_0(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_2_5(v2);

  return sub_1979AAD6C(v4, v5, v6, v7, v0);
}

BOOL sub_1979AB854(unint64_t a1, unsigned int a2, unint64_t a3, unsigned int a4)
{
  v4 = HIDWORD(a3) < HIDWORD(a1);
  if (HIDWORD(a3) == HIDWORD(a1))
  {
    v4 = a4 < a2;
  }

  if (a3 != a1)
  {
    v4 = a3 < a1;
  }

  return !v4;
}

BOOL sub_1979AB898(unint64_t a1, unsigned int a2, unint64_t a3, unsigned int a4)
{
  v4 = HIDWORD(a3) < HIDWORD(a1);
  if (HIDWORD(a3) == HIDWORD(a1))
  {
    v4 = a4 < a2;
  }

  if (a3 == a1)
  {
    return v4;
  }

  else
  {
    return a3 < a1;
  }
}

uint64_t RequestPriority.rawValue.getter()
{
  result = 1701736302;
  switch(*v0)
  {
    case 1:
      v2 = 1801675106;
      goto LABEL_5;
    case 2:
      result = 0x74696E4972657375;
      break;
    case 3:
      v2 = 1701998438;
LABEL_5:
      result = v2 | 0x756F726700000000;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1979AB944()
{
  result = qword_1EAF48628;
  if (!qword_1EAF48628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF48628);
  }

  return result;
}

uint64_t sub_1979AB9B0@<X0>(uint64_t *a1@<X8>)
{
  result = RequestPriority.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1979ABA50()
{
  v0 = sub_197A87608();
  __swift_allocate_value_buffer(v0, qword_1EAF491D8);
  v1 = __swift_project_value_buffer(v0, qword_1EAF491D8);
  if (qword_1ED880370 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1ED880520);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1979ABB18(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x636E657265666E69 && a2 == 0xEE00726F72724565;
  if (v4 || (sub_197A88218() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656E696665646E75 && a2 == 0xEE00726F72724564;
    if (v6 || (sub_197A88218() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000012 && 0x8000000197AA2F00 == a2;
      if (v7 || (sub_197A88218() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD00000000000001FLL && 0x8000000197AA2F20 == a2;
        if (v8 || (sub_197A88218() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6C616E7265746E69 && a2 == 0xED0000726F727245;
          if (v9 || (sub_197A88218() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD00000000000001BLL && 0x8000000197AA2F40 == a2;
            if (v10 || (sub_197A88218() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000012 && 0x8000000197AA2F60 == a2;
              if (v11 || (sub_197A88218() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD00000000000001BLL && 0x8000000197AA20B0 == a2;
                if (v12 || (sub_197A88218() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x726F727245637078 && a2 == 0xE800000000000000;
                  if (v13 || (sub_197A88218() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x505865746F6D6572 && a2 == 0xEE00726F72724543;
                    if (v14 || (sub_197A88218() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x726F727245637069 && a2 == 0xE800000000000000;
                      if (v15 || (sub_197A88218() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD00000000000001DLL && 0x8000000197AA2F80 == a2;
                        if (v16 || (sub_197A88218() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x4465736143657375 && a2 == 0xEF64656C62617369;
                          if (v17 || (sub_197A88218() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD00000000000001BLL && 0x8000000197AA2FA0 == a2;
                            if (v18 || (sub_197A88218() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0xD00000000000002BLL && 0x8000000197AA2FC0 == a2;
                              if (v19 || (sub_197A88218() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0xD000000000000016 && 0x8000000197AA2FF0 == a2;
                                if (v20 || (sub_197A88218() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0xD00000000000001FLL && 0x8000000197AA3010 == a2;
                                  if (v21 || (sub_197A88218() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0xD00000000000001BLL && 0x8000000197AA3030 == a2;
                                    if (v22 || (sub_197A88218() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0x4E74736575716572 && a2 == 0xEF646E756F46746FLL;
                                      if (v23 || (sub_197A88218() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0xD000000000000014 && 0x8000000197AA3050 == a2;
                                        if (v24 || (sub_197A88218() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0xD000000000000012 && 0x8000000197AA2010 == a2;
                                          if (v25 || (sub_197A88218() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0xD000000000000013 && 0x8000000197AA3070 == a2;
                                            if (v26 || (sub_197A88218() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v27 = a1 == 0x746F4E7465737361 && a2 == 0xED0000646E756F46;
                                              if (v27 || (sub_197A88218() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                v28 = a1 == 0xD000000000000020 && 0x8000000197AA3090 == a2;
                                                if (v28 || (sub_197A88218() & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else
                                                {
                                                  v29 = a1 == 0xD000000000000022 && 0x8000000197AA30C0 == a2;
                                                  if (v29 || (sub_197A88218() & 1) != 0)
                                                  {

                                                    return 24;
                                                  }

                                                  else
                                                  {
                                                    v30 = a1 == 0xD00000000000001ELL && 0x8000000197AA30F0 == a2;
                                                    if (v30 || (sub_197A88218() & 1) != 0)
                                                    {

                                                      return 25;
                                                    }

                                                    else
                                                    {
                                                      v31 = a1 == 0x4E6E6F6973736573 && a2 == 0xEF646E756F46746FLL;
                                                      if (v31 || (sub_197A88218() & 1) != 0)
                                                      {

                                                        return 26;
                                                      }

                                                      else
                                                      {
                                                        v32 = a1 == 0xD00000000000001BLL && 0x8000000197AA3110 == a2;
                                                        if (v32 || (sub_197A88218() & 1) != 0)
                                                        {

                                                          return 27;
                                                        }

                                                        else
                                                        {
                                                          v33 = a1 == 0xD00000000000001ELL && 0x8000000197AA3130 == a2;
                                                          if (v33 || (sub_197A88218() & 1) != 0)
                                                          {

                                                            return 28;
                                                          }

                                                          else
                                                          {
                                                            v34 = a1 == 0xD000000000000011 && 0x8000000197AA3150 == a2;
                                                            if (v34 || (sub_197A88218() & 1) != 0)
                                                            {

                                                              return 29;
                                                            }

                                                            else
                                                            {
                                                              v35 = a1 == 0xD000000000000017 && 0x8000000197AA3170 == a2;
                                                              if (v35 || (sub_197A88218() & 1) != 0)
                                                              {

                                                                return 30;
                                                              }

                                                              else
                                                              {
                                                                v36 = a1 == 0xD00000000000001FLL && 0x8000000197AA3190 == a2;
                                                                if (v36 || (sub_197A88218() & 1) != 0)
                                                                {

                                                                  return 31;
                                                                }

                                                                else
                                                                {
                                                                  v37 = a1 == 0xD000000000000012 && 0x8000000197AA31B0 == a2;
                                                                  if (v37 || (sub_197A88218() & 1) != 0)
                                                                  {

                                                                    return 32;
                                                                  }

                                                                  else
                                                                  {
                                                                    v38 = a1 == 0xD000000000000011 && 0x8000000197AA31D0 == a2;
                                                                    if (v38 || (sub_197A88218() & 1) != 0)
                                                                    {

                                                                      return 33;
                                                                    }

                                                                    else
                                                                    {
                                                                      v39 = a1 == 0x6F4E7963696C6F70 && a2 == 0xEE00646E756F4674;
                                                                      if (v39 || (sub_197A88218() & 1) != 0)
                                                                      {

                                                                        return 34;
                                                                      }

                                                                      else
                                                                      {
                                                                        v40 = a1 == 0xD000000000000018 && 0x8000000197AA31F0 == a2;
                                                                        if (v40 || (sub_197A88218() & 1) != 0)
                                                                        {

                                                                          return 35;
                                                                        }

                                                                        else
                                                                        {
                                                                          v41 = a1 == 0xD00000000000001FLL && 0x8000000197AA3210 == a2;
                                                                          if (v41 || (sub_197A88218() & 1) != 0)
                                                                          {

                                                                            return 36;
                                                                          }

                                                                          else
                                                                          {
                                                                            v42 = a1 == 0xD000000000000015 && 0x8000000197AA3230 == a2;
                                                                            if (v42 || (sub_197A88218() & 1) != 0)
                                                                            {

                                                                              return 37;
                                                                            }

                                                                            else
                                                                            {
                                                                              v43 = a1 == 0xD00000000000002ALL && 0x8000000197AA3250 == a2;
                                                                              if (v43 || (sub_197A88218() & 1) != 0)
                                                                              {

                                                                                return 38;
                                                                              }

                                                                              else
                                                                              {
                                                                                v44 = a1 == 0xD000000000000012 && 0x8000000197AA3280 == a2;
                                                                                if (v44 || (sub_197A88218() & 1) != 0)
                                                                                {

                                                                                  return 39;
                                                                                }

                                                                                else
                                                                                {
                                                                                  v45 = a1 == 0xD000000000000019 && 0x8000000197AA32A0 == a2;
                                                                                  if (v45 || (sub_197A88218() & 1) != 0)
                                                                                  {

                                                                                    return 40;
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    v46 = a1 == 0xD00000000000001ALL && 0x8000000197AA32C0 == a2;
                                                                                    if (v46 || (sub_197A88218() & 1) != 0)
                                                                                    {

                                                                                      return 41;
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      v47 = a1 == 0xD000000000000017 && 0x8000000197AA32E0 == a2;
                                                                                      if (v47 || (sub_197A88218() & 1) != 0)
                                                                                      {

                                                                                        return 42;
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        v48 = a1 == 0xD000000000000017 && 0x8000000197AA3300 == a2;
                                                                                        if (v48 || (sub_197A88218() & 1) != 0)
                                                                                        {

                                                                                          return 43;
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          v49 = a1 == 0x696D694C65746172 && a2 == 0xEB00000000646574;
                                                                                          if (v49 || (sub_197A88218() & 1) != 0)
                                                                                          {

                                                                                            return 44;
                                                                                          }

                                                                                          else if (a1 == 0xD000000000000018 && 0x8000000197AA3320 == a2)
                                                                                          {

                                                                                            return 45;
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            v51 = sub_197A88218();

                                                                                            if (v51)
                                                                                            {
                                                                                              return 45;
                                                                                            }

                                                                                            else
                                                                                            {
                                                                                              return 46;
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

unint64_t sub_1979AC914(char a1)
{
  result = 0x636E657265666E69;
  switch(a1)
  {
    case 1:
      return 0x656E696665646E75;
    case 2:
      return 0xD000000000000012;
    case 3:
    case 16:
    case 31:
    case 36:
      v3 = 13;
      goto LABEL_31;
    case 4:
      return 0x6C616E7265746E69;
    case 5:
    case 7:
    case 13:
    case 17:
    case 27:
      v3 = 9;
      goto LABEL_31;
    case 6:
      return 0xD000000000000012;
    case 8:
      return 0x726F727245637078;
    case 9:
      return 0x505865746F6D6572;
    case 10:
      return 0x726F727245637069;
    case 11:
      return 0xD00000000000001DLL;
    case 12:
      return 0x4465736143657375;
    case 14:
      return 0xD00000000000002BLL;
    case 15:
      return 0xD000000000000016;
    case 18:
      return 0x4E74736575716572;
    case 19:
      return 0xD000000000000014;
    case 20:
      return 0xD000000000000012;
    case 21:
      return 0xD000000000000013;
    case 22:
      return 0x746F4E7465737361;
    case 23:
      return 0xD000000000000020;
    case 24:
      return 0xD000000000000022;
    case 25:
    case 28:
      return 0xD00000000000001ELL;
    case 26:
      return 0x4E6E6F6973736573;
    case 29:
    case 33:
      return 0xD000000000000011;
    case 30:
    case 42:
    case 43:
      v3 = 5;
LABEL_31:
      result = v3 | 0xD000000000000012;
      break;
    case 32:
      result = 0xD000000000000012;
      break;
    case 34:
      result = 0x6F4E7963696C6F70;
      break;
    case 35:
    case 45:
      result = 0xD000000000000018;
      break;
    case 37:
      result = 0xD000000000000015;
      break;
    case 38:
      result = 0xD00000000000002ALL;
      break;
    case 39:
      result = 0xD000000000000012;
      break;
    case 40:
      result = 0xD000000000000019;
      break;
    case 41:
      result = 0xD00000000000001ALL;
      break;
    case 44:
      result = 0x696D694C65746172;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1979ACDBC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
  if (v4 || (sub_197A88218() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701080931 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_197A88218();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1979ACE80(char a1)
{
  if (a1)
  {
    return 1701080931;
  }

  else
  {
    return 0x6E69616D6F64;
  }
}

uint64_t sub_1979ACEAC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7470697263736564 && a2 == 0xEA0000000000726FLL)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_197A88218();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1979ACF48(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E75426C65646F6DLL && a2 == 0xED00004449656C64;
  if (v4 || (sub_197A88218() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000197AA3340 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_197A88218();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1979AD020(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x6E75426C65646F6DLL;
  }
}

uint64_t sub_1979AD068(uint64_t a1)
{
  v2 = sub_1979B1664();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979AD0A4(uint64_t a1)
{
  v2 = sub_1979B1664();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979AD0E0(uint64_t a1)
{
  v2 = sub_1979B1514();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979AD11C(uint64_t a1)
{
  v2 = sub_1979B1514();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979AD158(uint64_t a1)
{
  v2 = sub_1979B131C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979AD194(uint64_t a1)
{
  v2 = sub_1979B131C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979AD1D0(uint64_t a1)
{
  v2 = sub_1979B1610();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979AD20C(uint64_t a1)
{
  v2 = sub_1979B1610();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979AD248(uint64_t a1)
{
  v2 = sub_1979B1124();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979AD284(uint64_t a1)
{
  v2 = sub_1979B1124();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979AD2C0(uint64_t a1)
{
  v2 = sub_1979B0FD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979AD2FC(uint64_t a1)
{
  v2 = sub_1979B0FD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979AD340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1979ABB18(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1979AD368@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1979AC90C();
  *a1 = result;
  return result;
}

uint64_t sub_1979AD390(uint64_t a1)
{
  v2 = sub_1979B0E30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979AD3CC(uint64_t a1)
{
  v2 = sub_1979B0E30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979AD408(uint64_t a1)
{
  v2 = sub_1979B1370();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979AD444(uint64_t a1)
{
  v2 = sub_1979B1370();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979AD480(uint64_t a1)
{
  v2 = sub_1979B1808();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979AD4BC(uint64_t a1)
{
  v2 = sub_1979B1808();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979AD4F8(uint64_t a1)
{
  v2 = sub_1979B185C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979AD534(uint64_t a1)
{
  v2 = sub_1979B185C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979AD570(uint64_t a1)
{
  v2 = sub_1979B1274();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979AD5AC(uint64_t a1)
{
  v2 = sub_1979B1274();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979AD5E8(uint64_t a1)
{
  v2 = sub_1979B1D48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979AD624(uint64_t a1)
{
  v2 = sub_1979B1D48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979AD668@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1979ACDBC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1979AD690(uint64_t a1)
{
  v2 = sub_1979B11CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979AD6CC(uint64_t a1)
{
  v2 = sub_1979B11CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979AD70C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1979ACEAC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1979AD738(uint64_t a1)
{
  v2 = sub_1979B1028();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979AD774(uint64_t a1)
{
  v2 = sub_1979B1028();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979AD7B0(uint64_t a1)
{
  v2 = sub_1979B1904();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979AD7EC(uint64_t a1)
{
  v2 = sub_1979B1904();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979AD828(uint64_t a1)
{
  v2 = sub_1979B18B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979AD864(uint64_t a1)
{
  v2 = sub_1979B18B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979AD8A0(uint64_t a1)
{
  v2 = sub_1979B1BF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979AD8DC(uint64_t a1)
{
  v2 = sub_1979B1BF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979AD918(uint64_t a1)
{
  v2 = sub_1979B0F2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979AD954(uint64_t a1)
{
  v2 = sub_1979B0F2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979AD990(uint64_t a1)
{
  v2 = sub_1979B0E84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979AD9CC(uint64_t a1)
{
  v2 = sub_1979B0E84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979ADA08(uint64_t a1)
{
  v2 = sub_1979B107C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979ADA44(uint64_t a1)
{
  v2 = sub_1979B107C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979ADA80(uint64_t a1)
{
  v2 = sub_1979B0F80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979ADABC(uint64_t a1)
{
  v2 = sub_1979B0F80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979ADAF8(uint64_t a1)
{
  v2 = sub_1979B146C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979ADB34(uint64_t a1)
{
  v2 = sub_1979B146C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979ADB78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1979ACF48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1979ADBA0(uint64_t a1)
{
  v2 = sub_1979B1418();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979ADBDC(uint64_t a1)
{
  v2 = sub_1979B1418();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979ADC18(uint64_t a1)
{
  v2 = sub_1979B1A00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979ADC54(uint64_t a1)
{
  v2 = sub_1979B1A00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979ADC90(uint64_t a1)
{
  v2 = sub_1979B1B50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979ADCCC(uint64_t a1)
{
  v2 = sub_1979B1B50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979ADD08(uint64_t a1)
{
  v2 = sub_1979B1CA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979ADD44(uint64_t a1)
{
  v2 = sub_1979B1CA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979ADD80(uint64_t a1)
{
  v2 = sub_1979B13C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979ADDBC(uint64_t a1)
{
  v2 = sub_1979B13C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979ADDF8(uint64_t a1)
{
  v2 = sub_1979B1568();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979ADE34(uint64_t a1)
{
  v2 = sub_1979B1568();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979ADE70(uint64_t a1)
{
  v2 = sub_1979B1BA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979ADEAC(uint64_t a1)
{
  v2 = sub_1979B1BA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979ADEE8(uint64_t a1)
{
  v2 = sub_1979B17B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979ADF24(uint64_t a1)
{
  v2 = sub_1979B17B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979ADF60(uint64_t a1)
{
  v2 = sub_1979B16B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979ADF9C(uint64_t a1)
{
  v2 = sub_1979B16B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979ADFD8(uint64_t a1)
{
  v2 = sub_1979B12C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979AE014(uint64_t a1)
{
  v2 = sub_1979B12C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979AE050(uint64_t a1)
{
  v2 = sub_1979B1220();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979AE08C(uint64_t a1)
{
  v2 = sub_1979B1220();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979AE0C8(uint64_t a1)
{
  v2 = sub_1979B0ED8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979AE104(uint64_t a1)
{
  v2 = sub_1979B0ED8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979AE140(uint64_t a1)
{
  v2 = sub_1979B1A54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979AE17C(uint64_t a1)
{
  v2 = sub_1979B1A54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979AE1B8(uint64_t a1)
{
  v2 = sub_1979B1760();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979AE1F4(uint64_t a1)
{
  v2 = sub_1979B1760();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979AE230(uint64_t a1)
{
  v2 = sub_1979B10D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979AE26C(uint64_t a1)
{
  v2 = sub_1979B10D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979AE2A8(uint64_t a1)
{
  v2 = sub_1979B170C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979AE2E4(uint64_t a1)
{
  v2 = sub_1979B170C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979AE320(uint64_t a1)
{
  v2 = sub_1979B14C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979AE35C(uint64_t a1)
{
  v2 = sub_1979B14C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979AE398(uint64_t a1)
{
  v2 = sub_1979B1178();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979AE3D4(uint64_t a1)
{
  v2 = sub_1979B1178();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979AE410(uint64_t a1)
{
  v2 = sub_1979B1CF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979AE44C(uint64_t a1)
{
  v2 = sub_1979B1CF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979AE488(uint64_t a1)
{
  v2 = sub_1979B19AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979AE4C4(uint64_t a1)
{
  v2 = sub_1979B19AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979AE500(uint64_t a1)
{
  v2 = sub_1979B15BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979AE53C(uint64_t a1)
{
  v2 = sub_1979B15BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979AE578(uint64_t a1)
{
  v2 = sub_1979B1AFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979AE5B4(uint64_t a1)
{
  v2 = sub_1979B1AFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979AE5F0(uint64_t a1)
{
  v2 = sub_1979B1C4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979AE62C(uint64_t a1)
{
  v2 = sub_1979B1C4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979AE668(uint64_t a1)
{
  v2 = sub_1979B1958();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979AE6A4(uint64_t a1)
{
  v2 = sub_1979B1958();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979AE6E0(uint64_t a1)
{
  v2 = sub_1979B1AA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979AE71C(uint64_t a1)
{
  v2 = sub_1979B1AA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ModelManagerError.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF491F0, &qword_197A8D4E0);
  v4 = OUTLINED_FUNCTION_2(v3);
  v502 = v5;
  v503 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_30();
  v501 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF491F8, &qword_197A8D4E8);
  v11 = OUTLINED_FUNCTION_2(v10);
  v499 = v12;
  v500 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_30();
  v498 = v16;
  v496 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49200, &qword_197A8D4F0);
  OUTLINED_FUNCTION_2(v496);
  v494 = v17;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v21);
  v497 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49208, &qword_197A8D4F8);
  OUTLINED_FUNCTION_2(v497);
  v495 = v22;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49210, &qword_197A8D500);
  OUTLINED_FUNCTION_2_1(v27, &v522);
  v489 = v28;
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49218, &qword_197A8D508);
  OUTLINED_FUNCTION_2_1(v33, &v523);
  v490 = v34;
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v38);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49220, &qword_197A8D510);
  OUTLINED_FUNCTION_2_1(v39, v516);
  v483 = v40;
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v44);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49228, &qword_197A8D518);
  OUTLINED_FUNCTION_2_1(v45, &v517);
  v484 = v46;
  v48 = *(v47 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v50);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49230, &qword_197A8D520);
  OUTLINED_FUNCTION_2_1(v51, &v511);
  v479 = v52;
  v54 = *(v53 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v56);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49238, &qword_197A8D528);
  OUTLINED_FUNCTION_2_1(v57, &v506);
  v474 = v58;
  v60 = *(v59 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v62);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49240, &qword_197A8D530);
  OUTLINED_FUNCTION_2_1(v63, &v509);
  v505 = v64;
  v66 = *(v65 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v68);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49248, &qword_197A8D538);
  OUTLINED_FUNCTION_2_1(v69, &v503);
  v472 = v70;
  v72 = *(v71 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v74);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49250, &qword_197A8D540);
  OUTLINED_FUNCTION_2_1(v75, &v500);
  v469 = v76;
  v78 = *(v77 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v80);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49258, &qword_197A8D548);
  OUTLINED_FUNCTION_2_1(v81, &v496);
  v464 = v82;
  v84 = *(v83 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v85);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v86);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49260, &qword_197A8D550);
  OUTLINED_FUNCTION_2_1(v87, &v497);
  v465 = v88;
  v90 = *(v89 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v91);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v92);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49268, &qword_197A8D558);
  OUTLINED_FUNCTION_2_1(v93, &v489);
  v457[4] = v94;
  v96 = *(v95 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v97);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v98);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49270, &qword_197A8D560);
  OUTLINED_FUNCTION_2_1(v99, &v490);
  v458 = v100;
  v102 = *(v101 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v103);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v104);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49278, &qword_197A8D568);
  OUTLINED_FUNCTION_2_1(v105, v491);
  v504 = v106;
  v108 = *(v107 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v109);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v110);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49280, &qword_197A8D570);
  OUTLINED_FUNCTION_2_1(v111, &v484);
  v457[0] = v112;
  v114 = *(v113 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v115);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v116);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49288, &qword_197A8D578);
  OUTLINED_FUNCTION_2_1(v117, v482);
  v454 = v118;
  v120 = *(v119 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v121);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v122);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49290, &qword_197A8D580);
  OUTLINED_FUNCTION_2_1(v123, &v478);
  v451 = v124;
  v126 = *(v125 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v127);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v128);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49298, &qword_197A8D588);
  OUTLINED_FUNCTION_2_1(v129, v476);
  v448 = v130;
  v132 = *(v131 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v133);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v134);
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF492A0, &qword_197A8D590);
  OUTLINED_FUNCTION_2_1(v135, v473);
  v445 = v136;
  v138 = *(v137 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v139);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v140);
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF492A8, &qword_197A8D598);
  OUTLINED_FUNCTION_2_1(v141, v470);
  v442 = v142;
  v144 = *(v143 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v145);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v146);
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF492B0, &qword_197A8D5A0);
  OUTLINED_FUNCTION_2_1(v147, v467);
  v439 = v148;
  v150 = *(v149 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v151);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v152);
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF492B8, &qword_197A8D5A8);
  OUTLINED_FUNCTION_2_1(v153, v462);
  v433 = v154;
  v156 = *(v155 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v157);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v158);
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF492C0, &qword_197A8D5B0);
  OUTLINED_FUNCTION_2_1(v159, &v464);
  v436 = v160;
  v162 = *(v161 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v163);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v164);
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF492C8, &qword_197A8D5B8);
  OUTLINED_FUNCTION_2_1(v165, v460);
  v430 = v166;
  v168 = *(v167 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v169);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v170);
  v171 = sub_197A87298();
  v172 = OUTLINED_FUNCTION_2(v171);
  v506 = v173;
  v507 = v172;
  v175 = *(v174 + 64);
  MEMORY[0x1EEE9AC00](v172);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v176);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v177);
  OUTLINED_FUNCTION_34(v405 - v178);
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF492D0, &qword_197A8D5C0);
  OUTLINED_FUNCTION_2_1(v179, v455);
  v421 = v180;
  v182 = *(v181 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v183);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v184);
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF492D8, &qword_197A8D5C8);
  OUTLINED_FUNCTION_2_1(v185, v457);
  v424 = v186;
  v188 = *(v187 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v189);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v190);
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF492E0, &qword_197A8D5D0);
  OUTLINED_FUNCTION_2_1(v191, &v451);
  v418 = v192;
  v194 = *(v193 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v195);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v196);
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF492E8, &qword_197A8D5D8);
  OUTLINED_FUNCTION_2_1(v197, v449);
  v416 = v198;
  v200 = *(v199 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v201);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v202);
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF492F0, &qword_197A8D5E0);
  OUTLINED_FUNCTION_2_1(v203, v444);
  v410 = v204;
  v206 = *(v205 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v207);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v208);
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF492F8, &qword_197A8D5E8);
  OUTLINED_FUNCTION_2_1(v209, &v445);
  v411 = v210;
  v212 = *(v211 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v213);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v214);
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49300, &qword_197A8D5F0);
  OUTLINED_FUNCTION_2_1(v215, &v439);
  v406 = v216;
  v218 = *(v217 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v219);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v220);
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49308, &qword_197A8D5F8);
  OUTLINED_FUNCTION_2_1(v221, &v436);
  v405[31] = v222;
  v224 = *(v223 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v225);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v226);
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49310, &qword_197A8D600);
  OUTLINED_FUNCTION_2_1(v227, &v433);
  v405[28] = v228;
  v230 = *(v229 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v231);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v232);
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49318, &qword_197A8D608);
  OUTLINED_FUNCTION_2_1(v233, &v430);
  v405[25] = v234;
  v236 = *(v235 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v237);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v238);
  v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49320, &qword_197A8D610);
  OUTLINED_FUNCTION_2_1(v239, v427);
  v405[22] = v240;
  v242 = *(v241 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v243);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v244);
  v245 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49328, &qword_197A8D618);
  OUTLINED_FUNCTION_2_1(v245, &v424);
  v405[19] = v246;
  v248 = *(v247 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v249);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v250);
  v251 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49330, &qword_197A8D620);
  OUTLINED_FUNCTION_2_1(v251, &v421);
  v405[16] = v252;
  v254 = *(v253 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v255);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v256);
  v257 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49338, &qword_197A8D628);
  OUTLINED_FUNCTION_2_1(v257, &v418);
  v405[13] = v258;
  v260 = *(v259 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v261);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v262);
  v263 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49340, &qword_197A8D630);
  OUTLINED_FUNCTION_2_1(v263, v415);
  v405[10] = v264;
  v266 = *(v265 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v267);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v268);
  v269 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49348, &qword_197A8D638);
  OUTLINED_FUNCTION_2_1(v269, v412);
  v405[7] = v270;
  v272 = *(v271 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v273);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v274);
  v275 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49350, &qword_197A8D640);
  OUTLINED_FUNCTION_2_1(v275, v407);
  v405[2] = v276;
  v278 = *(v277 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v279);
  v281 = v405 - v280;
  v282 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49358, &qword_197A8D648);
  OUTLINED_FUNCTION_2_1(v282, v409);
  v405[4] = v283;
  v285 = *(v284 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v286);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v287);
  v288 = type metadata accessor for InferenceError(0);
  v289 = OUTLINED_FUNCTION_6(v288);
  v291 = *(v290 + 64);
  MEMORY[0x1EEE9AC00](v289);
  OUTLINED_FUNCTION_1_0();
  v294 = v293 - v292;
  v295 = type metadata accessor for ModelManagerError();
  v296 = OUTLINED_FUNCTION_6(v295);
  v298 = *(v297 + 64);
  MEMORY[0x1EEE9AC00](v296);
  OUTLINED_FUNCTION_1_0();
  v301 = (v300 - v299);
  v509 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49360, &unk_197A8D650);
  OUTLINED_FUNCTION_2(v509);
  v512 = v302;
  v304 = *(v303 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v305);
  v307 = v405 - v306;
  v308 = a1[4];
  v309 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1979B0E30();
  v508 = v307;
  sub_197A883D8();
  OUTLINED_FUNCTION_4_3();
  sub_1979B6FD8(v511, v301, v310);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v329 = *v301;
      v367 = v301[1];
      LOBYTE(v514) = 6;
      sub_1979B1B50();
      OUTLINED_FUNCTION_16_3(&v422);
      OUTLINED_FUNCTION_46_1();
      OUTLINED_FUNCTION_31_1(&v424);
      OUTLINED_FUNCTION_55_2();
      v330 = &v423;
      goto LABEL_47;
    case 2u:
      v329 = *v301;
      v358 = v301[1];
      LOBYTE(v514) = 7;
      sub_1979B1AFC();
      OUTLINED_FUNCTION_16_3(&v425);
      OUTLINED_FUNCTION_46_1();
      OUTLINED_FUNCTION_31_1(v427);
      OUTLINED_FUNCTION_55_2();
      v330 = &v426;
      goto LABEL_47;
    case 3u:
      v329 = *v301;
      v365 = v301[1];
      LOBYTE(v514) = 8;
      sub_1979B1AA8();
      OUTLINED_FUNCTION_16_3(v428);
      OUTLINED_FUNCTION_46_1();
      OUTLINED_FUNCTION_31_1(&v430);
      OUTLINED_FUNCTION_55_2();
      v330 = &v429;
      goto LABEL_47;
    case 4u:
      v329 = *v301;
      v345 = v301[1];
      LOBYTE(v514) = 9;
      sub_1979B1A54();
      OUTLINED_FUNCTION_16_3(v431);
      OUTLINED_FUNCTION_46_1();
      OUTLINED_FUNCTION_31_1(&v433);
      OUTLINED_FUNCTION_55_2();
      v330 = &v432;
      goto LABEL_47;
    case 5u:
      v329 = *v301;
      v378 = v301[1];
      LOBYTE(v514) = 10;
      sub_1979B1A00();
      OUTLINED_FUNCTION_16_3(&v434);
      OUTLINED_FUNCTION_46_1();
      OUTLINED_FUNCTION_31_1(&v436);
      OUTLINED_FUNCTION_55_2();
      v330 = &v435;
      goto LABEL_47;
    case 6u:
      v329 = *v301;
      v381 = v301[1];
      LOBYTE(v514) = 11;
      sub_1979B19AC();
      OUTLINED_FUNCTION_16_3(&v437);
      OUTLINED_FUNCTION_46_1();
      OUTLINED_FUNCTION_31_1(&v439);
      OUTLINED_FUNCTION_55_2();
      v330 = &v438;
      goto LABEL_47;
    case 7u:
      v329 = *v301;
      v366 = v301[1];
      LOBYTE(v514) = 12;
      sub_1979B1958();
      OUTLINED_FUNCTION_16_3(v441);
      OUTLINED_FUNCTION_46_1();
      OUTLINED_FUNCTION_31_1(&v445);
      OUTLINED_FUNCTION_55_2();
      v330 = &v443;
      goto LABEL_47;
    case 8u:
      v354 = *v301;
      LOBYTE(v514) = 14;
      sub_1979B18B0();
      OUTLINED_FUNCTION_54_1(v446);
      v356 = v508;
      v312 = v509;
      OUTLINED_FUNCTION_41_2();
      sub_197A88058();
      OUTLINED_FUNCTION_66_2(v449);
      sub_197A880F8();
      v357 = &v448;
      goto LABEL_40;
    case 9u:
      v347 = *v301;
      LOBYTE(v514) = 16;
      sub_1979B1808();
      v348 = v422;
      v350 = v508;
      v349 = v509;
      OUTLINED_FUNCTION_41_2();
      sub_197A88058();
      v514 = v347;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48FE0, &qword_197A8BAE8);
      OUTLINED_FUNCTION_34_1(&qword_1ED87F958);
      v351 = v425;
      OUTLINED_FUNCTION_45_2();
      sub_197A880E8();
      v352 = &v456;
      goto LABEL_22;
    case 0xAu:
      v336 = v506;
      v335 = v507;
      v383 = *(v506 + 32);
      v384 = OUTLINED_FUNCTION_58_2();
      v385(v384);
      LOBYTE(v514) = 18;
      sub_1979B1760();
      v340 = v429;
      OUTLINED_FUNCTION_47();
      sub_197A88058();
      OUTLINED_FUNCTION_2_6();
      sub_19796AAB0(v386, v387);
      v343 = v432;
      OUTLINED_FUNCTION_59_2();
      sub_197A880E8();
      v344 = &v458;
      goto LABEL_37;
    case 0xBu:
      v336 = v506;
      v335 = v507;
      v337 = *(v506 + 32);
      v338 = OUTLINED_FUNCTION_58_2();
      v339(v338);
      LOBYTE(v514) = 19;
      sub_1979B170C();
      v340 = v434;
      OUTLINED_FUNCTION_47();
      sub_197A88058();
      OUTLINED_FUNCTION_2_6();
      sub_19796AAB0(v341, v342);
      v343 = v437;
      OUTLINED_FUNCTION_59_2();
      sub_197A880E8();
      v344 = &v463;
LABEL_37:
      OUTLINED_FUNCTION_32(v344);
      v388(v340, v343);
      (*(v336 + 8))(v295, v335);
      goto LABEL_38;
    case 0xCu:
      v329 = *v301;
      v346 = v301[1];
      LOBYTE(v514) = 21;
      sub_1979B1664();
      OUTLINED_FUNCTION_16_3(&v465);
      OUTLINED_FUNCTION_46_1();
      OUTLINED_FUNCTION_31_1(v467);
      OUTLINED_FUNCTION_55_2();
      v330 = &v466;
      goto LABEL_47;
    case 0xDu:
      v329 = *v301;
      v380 = v301[1];
      LOBYTE(v514) = 22;
      sub_1979B1610();
      OUTLINED_FUNCTION_16_3(v468);
      OUTLINED_FUNCTION_46_1();
      OUTLINED_FUNCTION_31_1(v470);
      OUTLINED_FUNCTION_55_2();
      v330 = &v469;
      goto LABEL_47;
    case 0xEu:
      v329 = *v301;
      v334 = v301[1];
      LOBYTE(v514) = 23;
      sub_1979B15BC();
      OUTLINED_FUNCTION_16_3(v471);
      OUTLINED_FUNCTION_46_1();
      OUTLINED_FUNCTION_31_1(v473);
      OUTLINED_FUNCTION_55_2();
      v330 = &v472;
      goto LABEL_47;
    case 0xFu:
      v359 = *v301;
      LOBYTE(v514) = 24;
      sub_1979B1568();
      v348 = v447;
      v350 = v508;
      v349 = v509;
      OUTLINED_FUNCTION_41_2();
      sub_197A88058();
      v514 = v359;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48FE0, &qword_197A8BAE8);
      OUTLINED_FUNCTION_34_1(&qword_1ED87F958);
      v351 = v450;
      OUTLINED_FUNCTION_45_2();
      sub_197A880E8();
      v352 = &v474;
LABEL_22:
      OUTLINED_FUNCTION_32(v352);
      v360(v348, v351);
      OUTLINED_FUNCTION_51_1();
      v362 = v350;
      v363 = v349;
      goto LABEL_23;
    case 0x10u:
      v329 = *v301;
      v328 = v301[1];
      LOBYTE(v514) = 25;
      sub_1979B1514();
      OUTLINED_FUNCTION_16_3(v475);
      OUTLINED_FUNCTION_46_1();
      OUTLINED_FUNCTION_31_1(&v478);
      OUTLINED_FUNCTION_55_2();
      v330 = &v477;
      goto LABEL_47;
    case 0x11u:
      v369 = v506;
      v368 = v507;
      v370 = *(v506 + 32);
      v371 = OUTLINED_FUNCTION_58_2();
      v372(v371);
      LOBYTE(v514) = 26;
      sub_1979B14C0();
      OUTLINED_FUNCTION_54_1(&v479);
      OUTLINED_FUNCTION_47();
      sub_197A88058();
      OUTLINED_FUNCTION_2_6();
      sub_19796AAB0(v373, v374);
      sub_197A880E8();
      OUTLINED_FUNCTION_32(v480);
      v375 = OUTLINED_FUNCTION_61_3();
      v376(v375);
      (*(v369 + 8))(v295, v368);
LABEL_38:
      OUTLINED_FUNCTION_51_1();
      v319 = OUTLINED_FUNCTION_46_1();
      return v318(v319, v327);
    case 0x12u:
      v329 = *v301;
      v382 = v301[1];
      LOBYTE(v514) = 27;
      sub_1979B146C();
      OUTLINED_FUNCTION_16_3(v481);
      OUTLINED_FUNCTION_46_1();
      OUTLINED_FUNCTION_31_1(&v484);
      OUTLINED_FUNCTION_55_2();
      v330 = &v483;
      goto LABEL_47;
    case 0x13u:
      v393 = *v301;
      v392 = v301[1];
      v394 = v301[2];
      LOBYTE(v514) = 28;
      sub_1979B1418();
      v396 = v508;
      v395 = v509;
      sub_197A88058();
      LOBYTE(v514) = 0;
      OUTLINED_FUNCTION_59_2();
      sub_197A880B8();
      if (v1)
      {

        v397 = OUTLINED_FUNCTION_65_1();
        v398(v397);
        OUTLINED_FUNCTION_51_1();
        v319 = v396;
        v327 = v395;
        return v318(v319, v327);
      }

      else
      {

        v514 = v394;
        v513[7] = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48FE0, &qword_197A8BAE8);
        OUTLINED_FUNCTION_34_1(&qword_1ED87F958);
        sub_197A880E8();
        v403 = OUTLINED_FUNCTION_65_1();
        v404(v403);
        OUTLINED_FUNCTION_51_1();
        v362 = v396;
        v363 = v395;
LABEL_23:
        v361(v362, v363);
      }

    case 0x14u:
      v329 = *v301;
      v377 = v301[1];
      LOBYTE(v514) = 29;
      sub_1979B13C4();
      OUTLINED_FUNCTION_16_3(v486);
      OUTLINED_FUNCTION_46_1();
      OUTLINED_FUNCTION_31_1(&v490);
      OUTLINED_FUNCTION_55_2();
      v330 = &v488;
      goto LABEL_47;
    case 0x15u:
      v329 = *v301;
      v379 = v301[1];
      LOBYTE(v514) = 31;
      sub_1979B131C();
      OUTLINED_FUNCTION_16_3(v493);
      OUTLINED_FUNCTION_46_1();
      OUTLINED_FUNCTION_31_1(&v497);
      OUTLINED_FUNCTION_55_2();
      v330 = &v495;
      goto LABEL_47;
    case 0x16u:
      v329 = *v301;
      v390 = v301[1];
      LOBYTE(v514) = 34;
      sub_1979B1220();
      OUTLINED_FUNCTION_16_3(&v501);
      OUTLINED_FUNCTION_46_1();
      OUTLINED_FUNCTION_31_1(&v503);
      OUTLINED_FUNCTION_55_2();
      v330 = &v502;
      goto LABEL_47;
    case 0x17u:
      v399 = *v301;
      v400 = v301[1];
      LOBYTE(v514) = 35;
      sub_1979B11CC();
      OUTLINED_FUNCTION_16_3(&v507);
      LOBYTE(v514) = 0;
      v329 = v478;
      OUTLINED_FUNCTION_45_2();
      sub_197A88118();
      if (!v1)
      {
        OUTLINED_FUNCTION_64_2();
        sub_197A88128();
      }

      v391 = v505;
      goto LABEL_48;
    case 0x18u:
      v354 = *(v301 + 2);
      LOBYTE(v514) = 38;
      sub_1979B10D0();
      v355 = *v301;
      OUTLINED_FUNCTION_54_1(v513);
      v356 = v508;
      v312 = v509;
      OUTLINED_FUNCTION_41_2();
      sub_197A88058();
      v514 = v355;
      v515 = v354;
      sub_1979552D0();
      OUTLINED_FUNCTION_66_2(&v517);
      sub_197A880E8();
      v357 = &v515;
LABEL_40:
      OUTLINED_FUNCTION_32(v357);
      v389(v308, v354);
      OUTLINED_FUNCTION_51_1();
      v319 = v356;
      goto LABEL_41;
    case 0x19u:
      v329 = *v301;
      v353 = v301[1];
      LOBYTE(v514) = 40;
      sub_1979B1028();
      OUTLINED_FUNCTION_16_3(&v519);
      OUTLINED_FUNCTION_46_1();
      OUTLINED_FUNCTION_31_1(&v523);
      OUTLINED_FUNCTION_55_2();
      v330 = &v521;
LABEL_47:
      v391 = *(v330 - 32);
      goto LABEL_48;
    case 0x1Au:
      v402 = *v301;
      v401 = v301[1];
      LOBYTE(v514) = 42;
      sub_1979B0F80();
      OUTLINED_FUNCTION_16_3(&v525);
      OUTLINED_FUNCTION_46_1();
      v329 = v497;
      OUTLINED_FUNCTION_45_2();
      sub_197A880B8();
      OUTLINED_FUNCTION_55_2();
      v391 = v495;
LABEL_48:
      (*(v391 + 8))(v307, v329);
      OUTLINED_FUNCTION_51_1();
      v319 = OUTLINED_FUNCTION_61_3();
      return v318(v319, v327);
    case 0x1Bu:
      OUTLINED_FUNCTION_64_2();
      sub_1979B1CF4();
      v324 = v508;
      v325 = v509;
      sub_197A88058();
      OUTLINED_FUNCTION_32(&v406);
      v326(v281, v405[3]);
      OUTLINED_FUNCTION_51_1();
      v319 = v324;
      v327 = v325;
      return v318(v319, v327);
    case 0x1Cu:
      LOBYTE(v514) = 2;
      sub_1979B1CA0();
      OUTLINED_FUNCTION_24_3(&v410);
      v320 = OUTLINED_FUNCTION_29_0(&v411);
      v323 = v412;
      goto LABEL_59;
    case 0x1Du:
      LOBYTE(v514) = 3;
      sub_1979B1C4C();
      OUTLINED_FUNCTION_24_3(v413);
      v320 = OUTLINED_FUNCTION_29_0(v414);
      v323 = v415;
      goto LABEL_59;
    case 0x1Eu:
      LOBYTE(v514) = 4;
      sub_1979B1BF8();
      OUTLINED_FUNCTION_24_3(&v416);
      v320 = OUTLINED_FUNCTION_29_0(v417);
      v323 = &v418;
      goto LABEL_59;
    case 0x1Fu:
      LOBYTE(v514) = 5;
      sub_1979B1BA4();
      OUTLINED_FUNCTION_24_3(v419);
      v320 = OUTLINED_FUNCTION_29_0(v420);
      v323 = &v421;
      goto LABEL_59;
    case 0x20u:
      LOBYTE(v514) = 13;
      sub_1979B1904();
      OUTLINED_FUNCTION_24_3(v440);
      v320 = OUTLINED_FUNCTION_29_0(&v442);
      v323 = v444;
      goto LABEL_59;
    case 0x21u:
      LOBYTE(v514) = 15;
      sub_1979B185C();
      OUTLINED_FUNCTION_24_3(&v447);
      v320 = OUTLINED_FUNCTION_29_0(&v450);
      v323 = &v451;
      goto LABEL_59;
    case 0x22u:
      LOBYTE(v514) = 17;
      sub_1979B17B4();
      OUTLINED_FUNCTION_24_3(v452);
      v320 = OUTLINED_FUNCTION_29_0(v453);
      v323 = v455;
      goto LABEL_59;
    case 0x23u:
      LOBYTE(v514) = 20;
      sub_1979B16B8();
      OUTLINED_FUNCTION_24_3(v459);
      v320 = OUTLINED_FUNCTION_29_0(v461);
      v323 = v462;
      goto LABEL_59;
    case 0x24u:
      LOBYTE(v514) = 30;
      sub_1979B1370();
      OUTLINED_FUNCTION_24_3(v485);
      v320 = OUTLINED_FUNCTION_29_0(v487);
      v323 = &v489;
      goto LABEL_59;
    case 0x25u:
      LOBYTE(v514) = 32;
      sub_1979B12C8();
      OUTLINED_FUNCTION_24_3(v492);
      v320 = OUTLINED_FUNCTION_29_0(&v494);
      v323 = &v496;
      goto LABEL_59;
    case 0x26u:
      LOBYTE(v514) = 33;
      sub_1979B1274();
      OUTLINED_FUNCTION_24_3(&v498);
      v320 = OUTLINED_FUNCTION_29_0(&v499);
      v323 = &v500;
      goto LABEL_59;
    case 0x27u:
      LOBYTE(v514) = 36;
      sub_1979B1178();
      OUTLINED_FUNCTION_24_3(&v504);
      v320 = OUTLINED_FUNCTION_29_0(&v505);
      v323 = &v506;
      goto LABEL_59;
    case 0x28u:
      LOBYTE(v514) = 37;
      sub_1979B1124();
      OUTLINED_FUNCTION_24_3(&v508);
      v320 = OUTLINED_FUNCTION_29_0(&v510);
      v323 = &v511;
      goto LABEL_59;
    case 0x29u:
      LOBYTE(v514) = 39;
      sub_1979B107C();
      OUTLINED_FUNCTION_24_3(&v512);
      v320 = OUTLINED_FUNCTION_29_0(&v514);
      v323 = v516;
      goto LABEL_59;
    case 0x2Au:
      LOBYTE(v514) = 41;
      sub_1979B0FD4();
      OUTLINED_FUNCTION_24_3(&v518);
      v320 = OUTLINED_FUNCTION_29_0(&v520);
      v323 = &v522;
LABEL_59:
      v322 = *(v323 - 32);
      goto LABEL_60;
    case 0x2Bu:
      LOBYTE(v514) = 43;
      sub_1979B0F2C();
      OUTLINED_FUNCTION_24_3(&v524);
      v320 = OUTLINED_FUNCTION_29_0(&v526);
      v322 = v496;
LABEL_60:
      v321(v320, v322);
      goto LABEL_61;
    case 0x2Cu:
      LOBYTE(v514) = 44;
      sub_1979B0ED8();
      v331 = v498;
      OUTLINED_FUNCTION_30_2();
      v333 = v499;
      v332 = v500;
      goto LABEL_45;
    case 0x2Du:
      LOBYTE(v514) = 45;
      sub_1979B0E84();
      v331 = v501;
      OUTLINED_FUNCTION_30_2();
      v333 = v502;
      v332 = v503;
LABEL_45:
      (*(v333 + 8))(v331, v332);
LABEL_61:
      OUTLINED_FUNCTION_51_1();
      v319 = v309;
      v327 = v281;
      return v318(v319, v327);
    default:
      sub_1979B6F20(v301, v294, type metadata accessor for InferenceError);
      LOBYTE(v514) = 0;
      sub_1979B1D48();
      v311 = v405[1];
      v313 = v508;
      v312 = v509;
      OUTLINED_FUNCTION_41_2();
      sub_197A88058();
      OUTLINED_FUNCTION_19_3();
      sub_19796AAB0(v314, v315);
      v316 = v405[5];
      sub_197A880E8();
      OUTLINED_FUNCTION_32(v408);
      v317(v311, v316);
      sub_1979B6F80(v294, type metadata accessor for InferenceError);
      OUTLINED_FUNCTION_51_1();
      v319 = v313;
LABEL_41:
      v327 = v312;
      return v318(v319, v327);
  }
}