uint64_t sub_249E03F08()
{
  OUTLINED_FUNCTION_4_3();
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_3_3(v2);
  *v3 = v4;
  v3[1] = sub_249E04BA4;
  v5 = OUTLINED_FUNCTION_0_5();

  return sub_249E00350(v5, v6, v7, v8, v9, v1);
}

uint64_t sub_249E03FAC()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_4_3();
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[8];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_3_3(v4);
  *v5 = v6;
  v5[1] = sub_249E04BA4;
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_45();

  return sub_249DFFECC(v7, v8, v9, v10, v11, v12, v13, v3);
}

uint64_t objectdestroy_34Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_249E040B4()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_4_3();
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[8];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_3_3(v4);
  *v5 = v6;
  v5[1] = sub_249E04BA4;
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_45();

  return sub_249DFF968(v7, v8, v9, v10, v11, v12, v13, v3);
}

uint64_t sub_249E04164()
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_4_3();
  v1 = v0[6];
  v2 = v0[7];
  v4 = v0[8];
  v3 = v0[9];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_3_3(v5);
  *v6 = v7;
  v6[1] = sub_249E04BA4;
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_34();

  return sub_249DFF5F0(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_249E04218()
{
  OUTLINED_FUNCTION_4_3();
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_3_3(v2);
  *v3 = v4;
  v3[1] = sub_249E042BC;
  v5 = OUTLINED_FUNCTION_0_5();

  return sub_249DFF104(v5, v6, v7, v8, v9, v1);
}

uint64_t sub_249E042BC()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_2_3();
  *v4 = v3;

  OUTLINED_FUNCTION_9_0();

  return v5();
}

uint64_t sub_249E043B8(void *a1)
{
  v1 = [a1 bundleIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_249E7AAA8();

  return v3;
}

uint64_t sub_249E0441C()
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_4_3();
  v1 = v0[6];
  v2 = v0[7];
  v4 = v0[8];
  v3 = v0[9];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_3_3(v5);
  *v6 = v7;
  v6[1] = sub_249E04BA4;
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_34();

  return sub_249E02D3C(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_249E044D0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_21(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_249E04524(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCClient();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_249E04588()
{
  OUTLINED_FUNCTION_50();
  v1 = *(type metadata accessor for XPCClient() - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  OUTLINED_FUNCTION_25(*(v1 + 64));
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_249E04BA4;
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_34();

  return sub_249E022BC(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t objectdestroy_75Tm()
{
  v1 = (type metadata accessor for XPCClient() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0[2];
  swift_unknownObjectRelease();
  v6 = v0[5];

  v7 = v0[6];

  v8 = v0 + v3;
  v9 = sub_249E7A6B8();
  OUTLINED_FUNCTION_21(v9);
  (*(v10 + 8))(v8);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_249E047A8()
{
  OUTLINED_FUNCTION_50();
  v1 = *(type metadata accessor for XPCClient() - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  OUTLINED_FUNCTION_25(*(v1 + 64));
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_249E04BA4;
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_34();

  return sub_249E01AA8(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t objectdestroy_22Tm(uint64_t a1)
{
  v3 = v1[2];
  swift_unknownObjectRelease();
  v4 = v1[4];

  v5 = v1[6];

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_249E04914()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_4_3();
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_3_3(v3);
  *v4 = v5;
  v4[1] = sub_249E04BA4;
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_31();

  return sub_249E00A44(v6, v7, v8, v9, v10, v11, v12);
}

uint64_t getEnumTagSinglePayload for XPCDispatcher.XPCDispatcherError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for XPCDispatcher.XPCDispatcherError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_249E04B50()
{
  result = qword_27EF235E8;
  if (!qword_27EF235E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF235E8);
  }

  return result;
}

void OUTLINED_FUNCTION_4_3()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
}

uint64_t OUTLINED_FUNCTION_5_2()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_7_1(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 104);
  return *(v2 + 96);
}

uint64_t OUTLINED_FUNCTION_9_0()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

void OUTLINED_FUNCTION_10()
{
  __swift_destroy_boxed_opaque_existential_0(v0);

  JUMPOUT(0x24C205870);
}

void OUTLINED_FUNCTION_12(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_13_0(float a1)
{
  *v1 = a1;

  return swift_getErrorValue();
}

void OUTLINED_FUNCTION_15()
{

  JUMPOUT(0x24C205870);
}

uint64_t OUTLINED_FUNCTION_16()
{

  return swift_getErrorValue();
}

uint64_t OUTLINED_FUNCTION_19()
{
  v2 = *(v0 + 136);
  v3 = *(v0 + 112);

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_24()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_25(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = *(v1 + ((a1 + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
}

uint64_t OUTLINED_FUNCTION_27()
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 80);
  return v0;
}

uint64_t OUTLINED_FUNCTION_29()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_39()
{
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[7];

  return sub_249E7B3A8();
}

uint64_t OUTLINED_FUNCTION_40()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_41()
{
}

uint64_t OUTLINED_FUNCTION_42(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_249E3A958(a1, a2, &a9);
}

BOOL OUTLINED_FUNCTION_43()
{

  return os_log_type_enabled(v0, v1);
}

void OUTLINED_FUNCTION_44()
{
}

uint64_t OUTLINED_FUNCTION_46()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  return 0;
}

void OUTLINED_FUNCTION_52(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_53()
{

  return sub_249E7AC78();
}

uint64_t OUTLINED_FUNCTION_54()
{

  return sub_249E7AC78();
}

void OUTLINED_FUNCTION_55()
{
  v2 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
}

uint64_t sub_249E05000(uint64_t a1, uint64_t a2)
{
  if (sub_249E7A5F8())
  {
    started = type metadata accessor for StartDropInRequest();
    v5 = *(a1 + *(started + 20)) ^ *(a2 + *(started + 20)) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_249E05058()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23710, &unk_249E7DC70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249E7DBA0;
  *(inited + 32) = 0x6469656D6F68;
  *(inited + 40) = 0xE600000000000000;
  v2 = sub_249E7A5D8();
  v3 = MEMORY[0x277D837D0];
  *(inited + 48) = v2;
  *(inited + 56) = v4;
  *(inited + 72) = v3;
  *(inited + 80) = 0x746E6F6973736573;
  *(inited + 88) = 0xEB00000000657079;
  v5 = *(v0 + *(type metadata accessor for StartDropInRequest() + 20));
  *(inited + 120) = MEMORY[0x277D83B88];
  *(inited + 96) = v5;
  return sub_249E7AA08();
}

uint64_t sub_249E05140(uint64_t a1)
{
  if (a1 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_249E05158@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_249E7A628();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_249E051EC(uint64_t a1)
{
  result = sub_249E052C0(&qword_27EF235F0);
  *(a1 + 32) = result;
  return result;
}

uint64_t type metadata accessor for StartDropInRequest()
{
  result = qword_28130E6C8;
  if (!qword_28130E6C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_249E0527C(uint64_t a1)
{
  result = sub_249E052C0(&qword_27EF235F8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_249E052C0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for StartDropInRequest();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_249E05304(uint64_t a1)
{
  result = sub_249E052C0(&qword_27EF235F8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_249E05348(char a1)
{
  if (a1)
  {
    return 0x696E492072657355;
  }

  else
  {
    return 0x6E4120646E756F53;
  }
}

uint64_t sub_249E053C0()
{
  result = sub_249E7A628();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConversationTimer.Mode(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for StartDropInRequest.DropInSessionType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_249E055B4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_249E05140(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_249E055E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_249E05138(*v1);
  *a1 = result;
  return result;
}

unint64_t sub_249E05618()
{
  result = qword_27EF23600[0];
  if (!qword_27EF23600[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EF23600);
  }

  return result;
}

uint64_t sub_249E0566C()
{
  result = sub_249E7A848();
  qword_28130E6F8 = result;
  unk_28130E700 = v1;
  return result;
}

uint64_t sub_249E05690()
{
  result = sub_249E7A878();
  qword_27EF291D0 = result;
  *algn_27EF291D8 = v1;
  return result;
}

uint64_t sub_249E056B4()
{
  result = sub_249E7A898();
  qword_27EF291E0 = result;
  *algn_27EF291E8 = v1;
  return result;
}

id InternalDefault.userDefaults.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t InternalDefault.key.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t InternalDefault.localizedDescription.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

void (*sub_249E0578C(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_249E7A708();
  return sub_249E05800;
}

void sub_249E05800(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_249E0584C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28215B820](a1, WitnessTable);
}

uint64_t sub_249E058A0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
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

uint64_t sub_249E058FC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_249E0593C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

void sub_249E059D0()
{
  v1 = v0;
  oslog = sub_249E7A698();
  v2 = sub_249E7AE28();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v11 = v4;
    *v3 = 136315138;
    v9 = *&v1[OBJC_IVAR____TtC10DropInCore23CallCenterManagerClient_hostPseudonym];
    v10 = *&v1[OBJC_IVAR____TtC10DropInCore23CallCenterManagerClient_hostPseudonym + 8];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23FA0, &unk_249E7DF00);
    v5 = sub_249E7AAC8();
    v7 = sub_249E3A958(v5, v6, &v11);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_249DEE000, oslog, v2, "Did Set Host Pseudonym: %s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
    MEMORY[0x24C205870](v4, -1, -1);
    MEMORY[0x24C205870](v3, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_249E05B64(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_249E05B88, 0, 0);
}

uint64_t sub_249E05B88()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = swift_task_alloc();
  v0[5] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_249E05C8C;

  return MEMORY[0x2822008A0]();
}

uint64_t sub_249E05C8C()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_249E05DC0;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_249E05DA8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_249E05DC0()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t sub_249E05E24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23690, &qword_249E7DF10);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  (*(v3 + 16))(&v10 - v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  sub_249E05FF8();
}

uint64_t sub_249E05F84(void *a1)
{
  if (a1)
  {
    v1 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23690, &qword_249E7DF10);
    return sub_249E7AC38();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23690, &qword_249E7DF10);
    return sub_249E7AC48();
  }
}

void sub_249E05FF8()
{
  OUTLINED_FUNCTION_15_0();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v30 = v8;
  v9 = sub_249E7A928();
  v10 = OUTLINED_FUNCTION_3(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_4();
  v32 = sub_249E7A958();
  v15 = OUTLINED_FUNCTION_3(v32);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1_0();
  v22 = v21 - v20;
  v31 = *(v0 + OBJC_IVAR____TtC10DropInCore17CallCenterManager_serialQueue);
  OUTLINED_FUNCTION_22();
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = swift_allocObject();
  v24[2] = v5;
  v24[3] = v3;
  v24[4] = v23;
  v24[5] = v30;
  v24[6] = v7;
  OUTLINED_FUNCTION_1_3(v24);
  OUTLINED_FUNCTION_3_4(COERCE_DOUBLE(1107296256));
  v33[2] = v25;
  v33[3] = &block_descriptor_45;
  v26 = _Block_copy(v33);

  sub_249E7A938();
  OUTLINED_FUNCTION_5_3();
  sub_249E08754(v27, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23D50, &unk_249E80260);
  sub_249E0879C();
  OUTLINED_FUNCTION_7_2();
  sub_249E7B018();
  v29 = OUTLINED_FUNCTION_11_0();
  MEMORY[0x24C204A90](v29);
  _Block_release(v26);
  (*(v12 + 8))(v1, v9);
  (*(v17 + 8))(v22, v32);

  OUTLINED_FUNCTION_6_1();
}

void sub_249E06264(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    sub_249E06310(a4, a5);

    (a1)(0);
  }

  else
  {
    a1();
  }
}

void sub_249E06310(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_249E7A998();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = (v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v3 + OBJC_IVAR____TtC10DropInCore17CallCenterManager_serialQueue);
  *v10 = v11;
  (*(v7 + 104))(v10, *MEMORY[0x277D85200], v6);
  v12 = v11;
  LOBYTE(v11) = sub_249E7A9B8();
  (*(v7 + 8))(v10, v6);
  if (v11)
  {
    if (sub_249E6E2E4())
    {
      v13 = sub_249E7A698();
      v14 = sub_249E7AE08();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_249DEE000, v13, v14, "Already have an Active Conversation", v15, 2u);
        MEMORY[0x24C205870](v15, -1, -1);
      }

      sub_249E0881C();
      swift_allocError();
      *v16 = 4;
      swift_willThrow();
    }

    else
    {
      v17 = (v3 + OBJC_IVAR____TtC10DropInCore23CallCenterManagerClient_hostPseudonym);
      v18 = *(v3 + OBJC_IVAR____TtC10DropInCore23CallCenterManagerClient_hostPseudonym + 8);
      *v17 = a1;
      v17[1] = a2;

      sub_249E059D0();
      v19 = OBJC_IVAR____TtC10DropInCore23CallCenterManagerClient_logger;

      v20 = sub_249E7A698();
      v21 = sub_249E7AE28();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v38[1] = v19;
        v24 = v23;
        v39 = v23;
        *v22 = 136315138;
        *(v22 + 4) = sub_249E3A958(a1, a2, &v39);
        _os_log_impl(&dword_249DEE000, v20, v21, "Checking conversations for member with pseudonym %s", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v24);
        MEMORY[0x24C205870](v24, -1, -1);
        MEMORY[0x24C205870](v22, -1, -1);
      }

      v25 = [*(v3 + OBJC_IVAR____TtC10DropInCore17CallCenterManager_callCenter) conversationManager];
      sub_249E2D8F4(a1, a2);
      v27 = v26;

      if (v27)
      {
        v28 = v27;
        v29 = sub_249E7A698();
        v30 = sub_249E7AE28();

        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          *v31 = 138412290;
          *(v31 + 4) = v28;
          *v32 = v27;
          v33 = v28;
          _os_log_impl(&dword_249DEE000, v29, v30, "Found and joining conversation %@", v31, 0xCu);
          sub_249DF4A68(v32);
          MEMORY[0x24C205870](v32, -1, -1);
          MEMORY[0x24C205870](v31, -1, -1);
        }

        sub_249E07EB4(v28);
      }

      else
      {

        v34 = sub_249E7A698();
        v35 = sub_249E7AE28();

        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          v39 = v37;
          *v36 = 136315138;
          *(v36 + 4) = sub_249E3A958(a1, a2, &v39);
          _os_log_impl(&dword_249DEE000, v34, v35, "Did not find conversation with initiator pseudonym %s. Starting timer and waiting for conversation to appear.", v36, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v37);
          MEMORY[0x24C205870](v37, -1, -1);
          MEMORY[0x24C205870](v36, -1, -1);
        }

        sub_249E6F564();
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_249E067EC()
{
  OUTLINED_FUNCTION_15_0();
  v2 = v0;
  v4 = v3;
  v5 = sub_249E7A928();
  v6 = OUTLINED_FUNCTION_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_4();
  v11 = sub_249E7A958();
  v12 = OUTLINED_FUNCTION_3(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_0();
  v19 = v18 - v17;
  v27 = *(v2 + OBJC_IVAR____TtC10DropInCore17CallCenterManager_serialQueue);
  OUTLINED_FUNCTION_22();
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  *(v21 + 24) = v4;
  OUTLINED_FUNCTION_1_3(v21);
  OUTLINED_FUNCTION_3_4(COERCE_DOUBLE(1107296256));
  v28[2] = v22;
  v28[3] = &block_descriptor_38;
  v23 = _Block_copy(v28);

  sub_249E7A938();
  OUTLINED_FUNCTION_5_3();
  sub_249E08754(v24, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23D50, &unk_249E80260);
  sub_249E0879C();
  OUTLINED_FUNCTION_7_2();
  sub_249E7B018();
  v26 = OUTLINED_FUNCTION_11_0();
  MEMORY[0x24C204A90](v26);
  _Block_release(v23);
  (*(v8 + 8))(v1, v5);
  (*(v14 + 8))(v19, v11);

  OUTLINED_FUNCTION_6_1();
}

void sub_249E06A38()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_249E06D54();
  }
}

void sub_249E06A94()
{
  OUTLINED_FUNCTION_15_0();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  v4 = sub_249E7A928();
  v5 = OUTLINED_FUNCTION_3(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_4();
  v10 = sub_249E7A958();
  v11 = OUTLINED_FUNCTION_3(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_0();
  v18 = v17 - v16;
  v27 = *&v0[OBJC_IVAR____TtC10DropInCore17CallCenterManager_serialQueue];
  OUTLINED_FUNCTION_22();
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = v0;
  *(v20 + 32) = v3;
  OUTLINED_FUNCTION_1_3(v20);
  OUTLINED_FUNCTION_3_4(COERCE_DOUBLE(1107296256));
  v28[2] = v21;
  v28[3] = &block_descriptor_1;
  v22 = _Block_copy(v28);

  v23 = v0;
  sub_249E7A938();
  OUTLINED_FUNCTION_5_3();
  sub_249E08754(v24, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23D50, &unk_249E80260);
  sub_249E0879C();
  OUTLINED_FUNCTION_7_2();
  sub_249E7B018();
  v26 = OUTLINED_FUNCTION_11_0();
  MEMORY[0x24C204A90](v26);
  _Block_release(v22);
  (*(v7 + 8))(v1, v4);
  (*(v13 + 8))(v18, v10);

  OUTLINED_FUNCTION_6_1();
}

void sub_249E06CE4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_249E06E74();
  }
}

void sub_249E06D54()
{
  v2 = sub_249E7A998();
  v3 = OUTLINED_FUNCTION_3(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_4();
  v8 = *(v0 + OBJC_IVAR____TtC10DropInCore17CallCenterManager_serialQueue);
  *v1 = v8;
  (*(v5 + 104))(v1, *MEMORY[0x277D85200], v2);
  v9 = v8;
  LOBYTE(v8) = sub_249E7A9B8();
  (*(v5 + 8))(v1, v2);
  if (v8)
  {
    v10 = (v0 + OBJC_IVAR____TtC10DropInCore23CallCenterManagerClient_hostPseudonym);
    v11 = *(v0 + OBJC_IVAR____TtC10DropInCore23CallCenterManagerClient_hostPseudonym + 8);
    *v10 = 0;
    v10[1] = 0;

    sub_249E059D0();
    sub_249E6D76C();
  }

  else
  {
    __break(1u);
  }
}

void sub_249E06E74()
{
  OUTLINED_FUNCTION_15_0();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  v4 = sub_249E7A628();
  v5 = OUTLINED_FUNCTION_3(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v12 = v11 - v10;
  v13 = sub_249E7A998();
  v14 = OUTLINED_FUNCTION_3(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_4();
  v19 = *&v0[OBJC_IVAR____TtC10DropInCore17CallCenterManager_serialQueue];
  *v1 = v19;
  (*(v16 + 104))(v1, *MEMORY[0x277D85200], v13);
  v20 = v19;
  LOBYTE(v19) = sub_249E7A9B8();
  (*(v16 + 8))(v1, v13);
  if (v19)
  {
    v35 = v7;
    v21 = v0;
    v22 = sub_249E7A698();
    v23 = sub_249E7AE28();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v24 = 136315650;
      v26 = [v21 UUID];
      sub_249E7A608();

      sub_249E08754(&qword_28130D350, MEMORY[0x277CC95F0]);
      v27 = sub_249E7B2D8();
      v29 = v28;
      (*(v35 + 8))(v12, v4);
      v30 = sub_249E3A958(v27, v29, &v36);

      *(v24 + 4) = v30;
      *(v24 + 12) = 2080;
      v31 = sub_249E6DA94(v3);
      v33 = sub_249E3A958(v31, v32, &v36);

      *(v24 + 14) = v33;
      *(v24 + 22) = 2112;
      *(v24 + 24) = v21;
      *v25 = v21;
      v34 = v21;
      _os_log_impl(&dword_249DEE000, v22, v23, "End conversation: %s with reason: %s \n%@", v24, 0x20u);
      sub_249DF4A68(v25);
      OUTLINED_FUNCTION_1();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_1();
      OUTLINED_FUNCTION_1();
    }

    sub_249E6DB74();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_249E071C8()
{
  v1 = *(v0 + OBJC_IVAR____TtC10DropInCore23CallCenterManagerClient_hostPseudonym + 8);

  v2 = OBJC_IVAR____TtC10DropInCore23CallCenterManagerClient_logger;
  v3 = sub_249E7A6B8();
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 8);

  return v5(v0 + v2);
}

id sub_249E07238()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CallCenterManagerClient();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for CallCenterManagerClient()
{
  result = qword_28130D6A8;
  if (!qword_28130D6A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_249E07338()
{
  result = sub_249E7A6B8();
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

void sub_249E073D4(uint64_t a1, void *a2)
{
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  v20.receiver = v2;
  v20.super_class = type metadata accessor for CallCenterManagerClient();
  objc_msgSendSuper2(&v20, sel_conversationManager_activeRemoteParticipantsChangedForConversation_, v2, a2);
  sub_249E6EE20();
  if (v5)
  {
    v6 = OBJC_IVAR____TtC10DropInCore17CallCenterManager_someoneJoined;
    if (*(v2 + OBJC_IVAR____TtC10DropInCore17CallCenterManager_someoneJoined))
    {
      goto LABEL_7;
    }

    v7 = [a2 activeRemoteParticipants];
    OUTLINED_FUNCTION_9_1();
    sub_249E0861C();
    OUTLINED_FUNCTION_4_4();
    sub_249E08754(v8, v9);
    v10 = sub_249E7AD58();

    v2 = sub_249E075F8(v10);

    if (!v2 && [a2 state] == 3)
    {
      v3[v6] = 1;
      v2 = v3;
      sub_249E71F48();
    }

    if (v3[v6] == 1)
    {
LABEL_7:
      v11 = [a2 activeRemoteParticipants];
      OUTLINED_FUNCTION_9_1();
      sub_249E0861C();
      OUTLINED_FUNCTION_4_4();
      sub_249E08754(v12, v13);
      v14 = sub_249E7AD58();

      sub_249E07638(v14);
      v16 = v15;

      if (v16)
      {
      }

      else
      {
        v17 = sub_249E7A698();
        v18 = sub_249E7AE28();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = OUTLINED_FUNCTION_9();
          *v19 = 0;
          _os_log_impl(&dword_249DEE000, v17, v18, "Conversation Initiator is no longer on the call. Ending the Conversation.", v19, 2u);
          OUTLINED_FUNCTION_1();
        }

        sub_249E06E74();
      }
    }
  }
}

BOOL sub_249E075F8(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v1 = sub_249E7B068();
  }

  else
  {
    v1 = *(a1 + 16);
  }

  return v1 == 0;
}

void sub_249E07638(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_249E7B058();
    sub_249E0861C();
    sub_249E08754(&qword_28130D1C0, sub_249E0861C);
    sub_249E7AD88();
    v1 = v21;
    v2 = v22;
    v3 = v23;
    v4 = v24;
    v5 = v25;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v18 = v3;
  v9 = (v3 + 64) >> 6;
  if (v1 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v10 = v4;
  v11 = v5;
  v12 = v4;
  if (v5)
  {
LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v1 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (v14)
    {
      do
      {
        v16 = [v14 handle];
        v17 = sub_249E2DB48();

        if (v17)
        {
          break;
        }

        v4 = v12;
        v5 = v13;
        if ((v1 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        v15 = sub_249E7B088();
        if (!v15)
        {
          break;
        }

        v19 = v15;
        sub_249E0861C();
        swift_dynamicCast();
        v14 = v20;
        v12 = v4;
        v13 = v5;
      }

      while (v20);
    }

LABEL_19:
    sub_249E08728();
  }

  else
  {
    while (1)
    {
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v12 >= v9)
      {
        goto LABEL_19;
      }

      v11 = *(v2 + 8 * v12);
      ++v10;
      if (v11)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void sub_249E078D4(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_9_1();
  v41.receiver = v2;
  v41.super_class = type metadata accessor for CallCenterManagerClient();
  objc_msgSendSuper2(&v41, sel_conversationManager_stateChangedForConversation_, v2, a2);
  if ((sub_249E2D838() & 1) == 0)
  {
    v14 = sub_249E7A698();
    v15 = sub_249E7AE28();
    if (!os_log_type_enabled(v14, v15))
    {
LABEL_13:

      return;
    }

    v16 = OUTLINED_FUNCTION_9();
    *v16 = 0;
    v17 = "Ignoring Conversation not for Drop In Provider";
LABEL_12:
    _os_log_impl(&dword_249DEE000, v14, v15, v17, v16, 2u);
    OUTLINED_FUNCTION_1();
    goto LABEL_13;
  }

  switch([a2 state])
  {
    case 0uLL:
      v4 = *&v2[OBJC_IVAR____TtC10DropInCore23CallCenterManagerClient_hostPseudonym + 8];
      if (!v4)
      {
        v14 = sub_249E7A698();
        v15 = sub_249E7AE08();
        if (!os_log_type_enabled(v14, v15))
        {
          goto LABEL_13;
        }

        v16 = OUTLINED_FUNCTION_9();
        *v16 = 0;
        v17 = "Remote Member Pseudonym is nil";
        goto LABEL_12;
      }

      v5 = *&v2[OBJC_IVAR____TtC10DropInCore23CallCenterManagerClient_hostPseudonym];
      v6 = *&v2[OBJC_IVAR____TtC10DropInCore23CallCenterManagerClient_hostPseudonym + 8];

      v7 = [a2 initiator];
      v8 = [v7 value];
      v9 = sub_249E7AAA8();
      v11 = v10;

      if (v9 == v5 && v4 == v11)
      {
        goto LABEL_32;
      }

      v13 = OUTLINED_FUNCTION_16_0();

      if (v13)
      {
        goto LABEL_33;
      }

      v27 = sub_249E086C4(v7);
      if (!v28)
      {
        goto LABEL_30;
      }

      if (v27 == v5 && v28 == v4)
      {
LABEL_32:

LABEL_33:

        v36 = sub_249E7A698();
        v37 = sub_249E7AE28();
        if (os_log_type_enabled(v36, v37))
        {
          v38 = OUTLINED_FUNCTION_9();
          *v38 = 0;
          _os_log_impl(&dword_249DEE000, v36, v37, "Received new conversation in 'waiting' state. Cleaning up any active conversation.", v38, 2u);
          OUTLINED_FUNCTION_1();
        }

        sub_249E06D54();
        sub_249E07EB4(a2);

        goto LABEL_36;
      }

      v30 = OUTLINED_FUNCTION_16_0();

      if (v30)
      {
        goto LABEL_33;
      }

LABEL_30:

      v31 = sub_249E7A698();
      v32 = sub_249E7AE08();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v40 = v34;
        *v33 = 136315138;
        v35 = sub_249E3A958(v5, v4, &v40);

        *(v33 + 4) = v35;
        _os_log_impl(&dword_249DEE000, v31, v32, "Conversation does not contain initiator with pseudonym %s", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v34);
        OUTLINED_FUNCTION_1();
        OUTLINED_FUNCTION_1();
      }

      else
      {
      }

      return;
    case 2uLL:
      v25 = OUTLINED_FUNCTION_13_1();
      sub_249E6E7C0(v25);
      goto LABEL_36;
    case 3uLL:
      OUTLINED_FUNCTION_13_1();
      sub_249E6EE20();
      if ((v18 & 1) == 0)
      {
        return;
      }

      v19 = [a2 activeRemoteParticipants];
      OUTLINED_FUNCTION_9_1();
      sub_249E0861C();
      OUTLINED_FUNCTION_4_4();
      sub_249E08754(v20, v21);
      v22 = sub_249E7AD58();

      sub_249E07638(v22);
      v24 = v23;

      if (v24)
      {
        sub_249E6F400(v24);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        OUTLINED_FUNCTION_12_0();
        sub_249E1D444();
        swift_unknownObjectRelease();
      }

LABEL_36:
      OUTLINED_FUNCTION_13_1();
      sub_249E6EE20();
      if (v39)
      {
        if (swift_unknownObjectWeakLoadStrong())
        {
          OUTLINED_FUNCTION_12_0();
          sub_249E1CBAC();
          swift_unknownObjectRelease();
        }
      }

      return;
    case 4uLL:
      OUTLINED_FUNCTION_13_1();
      sub_249E6EE20();
      if (v26)
      {
        sub_249E06E74();
      }

      return;
    default:
      goto LABEL_36;
  }
}

void sub_249E07EB4(void *a1)
{
  v3 = v1;
  v59 = sub_249E7AC78();
  v5 = *(v59 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v59);
  v58 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_249E7A628();
  v56 = *(v8 - 8);
  v57 = v8;
  v9 = *(v56 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_249E7A998();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = (&v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v3 + OBJC_IVAR____TtC10DropInCore17CallCenterManager_serialQueue);
  *v16 = v17;
  (*(v13 + 104))(v16, *MEMORY[0x277D85200], v12);
  v18 = v17;
  LOBYTE(v17) = sub_249E7A9B8();
  (*(v13 + 8))(v16, v12);
  if (v17)
  {
    v55 = v5;
    v19 = OBJC_IVAR____TtC10DropInCore23CallCenterManagerClient_logger;
    v20 = a1;
    v21 = sub_249E7A698();
    v22 = sub_249E7AE28();

    v23 = os_log_type_enabled(v21, v22);
    v60 = v2;
    v61 = v3;
    if (v23)
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v54 = v19;
      v26 = v25;
      v53 = swift_slowAlloc();
      v62 = v53;
      *v24 = 136315394;
      v27 = [v20 UUID];
      sub_249E7A608();

      sub_249E08754(&qword_28130D350, MEMORY[0x277CC95F0]);
      v28 = v57;
      v29 = sub_249E7B2D8();
      v31 = v30;
      (*(v56 + 8))(v11, v28);
      v32 = sub_249E3A958(v29, v31, &v62);

      *(v24 + 4) = v32;
      *(v24 + 12) = 2112;
      *(v24 + 14) = v20;
      *v26 = v20;
      v33 = v20;
      _os_log_impl(&dword_249DEE000, v21, v22, "Attempting to join conversation %s %@", v24, 0x16u);
      sub_249DF4A68(v26);
      MEMORY[0x24C205870](v26, -1, -1);
      v34 = v53;
      __swift_destroy_boxed_opaque_existential_0(v53);
      MEMORY[0x24C205870](v34, -1, -1);
      MEMORY[0x24C205870](v24, -1, -1);
    }

    v35 = sub_249E7A698();
    v36 = sub_249E7AE28();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v62 = v38;
      *v37 = 136315138;
      v39 = v58;
      sub_249E7ACC8();
      sub_249E08754(&qword_28130D2C0, MEMORY[0x277D85720]);
      v40 = v59;
      v41 = sub_249E7B2D8();
      v43 = v42;
      (*(v55 + 8))(v39, v40);
      v44 = sub_249E3A958(v41, v43, &v62);

      *(v37 + 4) = v44;
      _os_log_impl(&dword_249DEE000, v35, v36, "Task Priority = %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x24C205870](v38, -1, -1);
      MEMORY[0x24C205870](v37, -1, -1);
    }

    v45 = v60;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_249E1C36C();
      swift_unknownObjectRelease();
    }

    v46 = [objc_allocWithZone(MEMORY[0x277D6EEF0]) initWithConversation:v20 originatingUIType:52];
    [v46 setShouldSuppressInCallUI_];
    [v46 setShowUIPrompt_];
    v47 = *MEMORY[0x277D6F0E8];
    v48 = sub_249E7AAA8();
    sub_249E08660(v48, v49, v46);
    v50 = sub_249E6E908(v46);
    if (v45)
    {
    }

    else
    {
      v51 = v50;
      [v50 setUplinkMuted_];
      sub_249E6F564();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_249E08530(uint64_t a1, uint64_t a2)
{
  v6.receiver = v2;
  v6.super_class = type metadata accessor for CallCenterManagerClient();
  objc_msgSendSuper2(&v6, sel_conversationManager_removedActiveConversation_, a1, a2);
  sub_249E6EE20();
  if (v5)
  {
    sub_249E06E74();
  }
}

unint64_t sub_249E0861C()
{
  result = qword_28130D1C8;
  if (!qword_28130D1C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28130D1C8);
  }

  return result;
}

void sub_249E08660(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_249E7AA88();

  [a3 setAudioSourceIdentifier_];
}

uint64_t sub_249E086C4(void *a1)
{
  v1 = [a1 normalizedValue];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_249E7AAA8();

  return v3;
}

void sub_249E08730()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_249E06CE4();
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_249E08754(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_249E0879C()
{
  result = qword_28130D2A0;
  if (!qword_28130D2A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27EF23D50, &unk_249E80260);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28130D2A0);
  }

  return result;
}

void sub_249E08800()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_249E06A38();
}

unint64_t sub_249E0881C()
{
  result = qword_27EF23688;
  if (!qword_27EF23688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF23688);
  }

  return result;
}

uint64_t sub_249E08870(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_249E05E24(a1);
}

uint64_t sub_249E0887C(void *a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23690, &qword_249E7DF10) - 8) + 80);

  return sub_249E05F84(a1);
}

uint64_t OUTLINED_FUNCTION_1_3(uint64_t result)
{
  *(v2 - 96) = v1;
  *(v2 - 88) = result;
  *(v2 - 128) = MEMORY[0x277D85DD0];
  return result;
}

uint64_t OUTLINED_FUNCTION_16_0()
{

  return sub_249E7B318();
}

uint64_t sub_249E08A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23858, &qword_249E7E2F8);
  v7 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v9 = (&v36 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234B0, &qword_249E7D910);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v36 - v12;
  v14 = sub_249E7A628();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = 0;
  v40 = 0xE000000000000000;
  sub_249E2A75C(a3, v13, &qword_27EF234B0, &qword_249E7D910);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_249E7A618();
    if (__swift_getEnumTagSinglePayload(v13, 1, v14) != 1)
    {
      sub_249E2A8CC(v13, &qword_27EF234B0, &qword_249E7D910);
    }
  }

  else
  {
    (*(v15 + 32))(v18, v13, v14);
  }

  v19 = sub_249E7A5D8();
  v21 = v20;
  (*(v15 + 8))(v18, v14);
  MEMORY[0x24C204750](v19, v21);

  v23 = v39;
  v22 = v40;
  v24 = *(a4 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23860, &qword_249E7E300);
  swift_allocObject();

  v25 = v38;
  v26 = sub_249E0A374(v38, a2, v24, &qword_27EF23860, &qword_249E7E300);
  if (v26)
  {
    v27 = v26;
    for (i = (a4 + 56); v24; --v24)
    {
      v30 = *(i - 1);
      v29 = *i;
      v32 = *(i - 3);
      v31 = *(i - 2);

      sub_249E09150(v32, v31, v30, v29, v23, v22, v27);

      i += 4;
    }
  }

  else
  {

    sub_249E2A094();
    v34 = swift_allocError();
    *v35 = 0;
    *v9 = v34;
    swift_storeEnumTagMultiPayload();
    v25(v9);
    return sub_249E2A8CC(v9, &qword_27EF23858, &qword_249E7E2F8);
  }
}

uint64_t sub_249E08DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF237A8, &qword_249E7E200);
  v7 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v9 = (&v36 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234B0, &qword_249E7D910);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v36 - v12;
  v14 = sub_249E7A628();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = 0;
  v40 = 0xE000000000000000;
  sub_249E2A75C(a3, v13, &qword_27EF234B0, &qword_249E7D910);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_249E7A618();
    if (__swift_getEnumTagSinglePayload(v13, 1, v14) != 1)
    {
      sub_249E2A8CC(v13, &qword_27EF234B0, &qword_249E7D910);
    }
  }

  else
  {
    (*(v15 + 32))(v18, v13, v14);
  }

  v19 = sub_249E7A5D8();
  v21 = v20;
  (*(v15 + 8))(v18, v14);
  MEMORY[0x24C204750](v19, v21);

  v23 = v39;
  v22 = v40;
  v24 = *(a4 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF237B0, &qword_249E7E208);
  swift_allocObject();

  v25 = v38;
  v26 = sub_249E0A374(v38, a2, v24, &qword_27EF237B0, &qword_249E7E208);
  if (v26)
  {
    v27 = v26;
    for (i = (a4 + 56); v24; --v24)
    {
      v30 = *(i - 1);
      v29 = *i;
      v32 = *(i - 3);
      v31 = *(i - 2);

      sub_249E09150(v32, v31, v30, v29, v23, v22, v27);

      i += 4;
    }
  }

  else
  {

    sub_249E2A094();
    v34 = swift_allocError();
    *v35 = 0;
    *v9 = v34;
    swift_storeEnumTagMultiPayload();
    v25(v9);
    return sub_249E2A8CC(v9, &qword_27EF237A8, &qword_249E7E200);
  }
}

uint64_t sub_249E09150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v44 = a4;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  OUTLINED_FUNCTION_37(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v16);
  v43[0] = 60;
  v43[1] = 0xE100000000000000;
  v17 = OUTLINED_FUNCTION_167();
  MEMORY[0x24C204750](v17);
  MEMORY[0x24C204750](0x202C626F4A20, 0xE600000000000000);
  MEMORY[0x24C204750](a5, a6);
  MEMORY[0x24C204750](62, 0xE100000000000000);
  if (qword_27EF22F90 != -1)
  {
    OUTLINED_FUNCTION_12_1();
    swift_once();
  }

  v18 = sub_249E7A6B8();
  __swift_project_value_buffer(v18, qword_27EF23410);
  OUTLINED_FUNCTION_102();

  v19 = sub_249E7A698();
  sub_249E7AE28();

  v20 = OUTLINED_FUNCTION_110();
  if (os_log_type_enabled(v20, v21))
  {
    OUTLINED_FUNCTION_70();
    v22 = swift_slowAlloc();
    OUTLINED_FUNCTION_74();
    v23 = a7;
    v24 = swift_slowAlloc();
    v43[0] = v24;
    *v22 = 136315138;
    *(v22 + 4) = sub_249E3A958(60, 0xE100000000000000, v43);
    OUTLINED_FUNCTION_229();
    _os_log_impl(v25, v26, v27, v28, v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    a7 = v23;
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  sub_249E7AC78();
  OUTLINED_FUNCTION_28();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
  v34 = swift_allocObject();
  v35 = OUTLINED_FUNCTION_210(v34);
  v35[4] = a1;
  v35[5] = a2;
  v36 = v44;
  v35[6] = a3;
  v35[7] = v36;
  v35[8] = 60;
  v35[9] = 0xE100000000000000;
  v35[10] = a7;

  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_294();
  sub_249E5ED90(v37, v38, v39, v40, v7);
}

uint64_t sub_249E093B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6, uint64_t a7, uint64_t a8)
{
  v8[4] = v20;
  v8[5] = v21;
  v8[3] = a8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23858, &qword_249E7E2F8);
  v8[6] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v8[7] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23818, &unk_249E7E2A0);
  v8[8] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v8[9] = swift_task_alloc();
  v8[10] = swift_task_alloc();
  v14 = swift_task_alloc();
  v8[11] = v14;
  v18 = (a6 + *a6);
  v15 = a6[1];
  v16 = swift_task_alloc();
  v8[12] = v16;
  *v16 = v8;
  v16[1] = sub_249E09558;

  return v18(v14);
}

uint64_t sub_249E09558()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_38_0();
  *v3 = v2;
  v5 = *(v4 + 96);
  v6 = *v1;
  OUTLINED_FUNCTION_2_3();
  *v7 = v6;
  *(v8 + 104) = v0;

  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_249E09650()
{
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_50();
  if (qword_27EF22F90 != -1)
  {
    OUTLINED_FUNCTION_12_1();
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[4];
  v4 = sub_249E7A6B8();
  __swift_project_value_buffer(v4, qword_27EF23410);
  v5 = OUTLINED_FUNCTION_81();
  sub_249E2A75C(v5, v6, v7, v8);

  v9 = sub_249E7A698();
  sub_249E7AE28();
  OUTLINED_FUNCTION_247();

  v10 = OUTLINED_FUNCTION_110();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[10];
  if (v12)
  {
    v15 = v0[8];
    v14 = v0[9];
    v17 = v0[3];
    v16 = v0[4];
    OUTLINED_FUNCTION_188();
    OUTLINED_FUNCTION_149();
    OUTLINED_FUNCTION_243();
    OUTLINED_FUNCTION_289(4.8151e-34);
    v19 = sub_249E3A958(v17, v16, v18);
    OUTLINED_FUNCTION_144(v19);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_294();
    sub_249E2A75C(v20, v21, v22, v23);
    OUTLINED_FUNCTION_113();
    sub_249E7AAC8();
    OUTLINED_FUNCTION_143();
    OUTLINED_FUNCTION_267();
    v24 = OUTLINED_FUNCTION_113();
    v27 = sub_249E3A958(v24, v25, v26);

    *(v3 + 14) = v27;
    OUTLINED_FUNCTION_35();
    _os_log_impl(v28, v29, v30, v31, v32, 0x16u);
    OUTLINED_FUNCTION_207();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  else
  {

    sub_249E2A8CC(v13, &qword_27EF23818, &unk_249E7E2A0);
  }

  v33 = v0[6];
  v34 = v0[5];
  sub_249E2A75C(v0[11], v0[7], &qword_27EF23818, &unk_249E7E2A0);
  OUTLINED_FUNCTION_81();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_34();

  return MEMORY[0x2822009F8](v35, v36, v37);
}

uint64_t sub_249E0984C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_30();
  a17 = v19;
  a18 = v20;
  OUTLINED_FUNCTION_17();
  a16 = v18;
  if (qword_27EF22F90 != -1)
  {
    OUTLINED_FUNCTION_12_1();
    swift_once();
  }

  v21 = v18[13];
  v22 = v18[4];
  v23 = sub_249E7A6B8();
  __swift_project_value_buffer(v23, qword_27EF23410);
  OUTLINED_FUNCTION_305();

  v24 = v21;
  v25 = sub_249E7A698();
  sub_249E7AE28();

  v26 = OUTLINED_FUNCTION_110();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = v18[13];
    v30 = v18[3];
    v29 = v18[4];
    OUTLINED_FUNCTION_188();
    OUTLINED_FUNCTION_149();
    OUTLINED_FUNCTION_243();
    OUTLINED_FUNCTION_289(4.8151e-34);
    v31 = OUTLINED_FUNCTION_167();
    v34 = sub_249E3A958(v31, v32, v33);
    OUTLINED_FUNCTION_144(v34);
    v18[2] = v28;
    v35 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF237C0, &qword_249E7E220);
    v36 = sub_249E7AAC8();
    sub_249E3A958(v36, v37, &a9);
    OUTLINED_FUNCTION_165();

    *(v21 + 14) = v29;
    OUTLINED_FUNCTION_35();
    _os_log_impl(v38, v39, v40, v41, v42, 0x16u);
    OUTLINED_FUNCTION_207();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  OUTLINED_FUNCTION_260();
  v43 = v25;
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v44, v45, v46);
}

uint64_t sub_249E099E4()
{
  OUTLINED_FUNCTION_11();
  v1 = OUTLINED_FUNCTION_141();
  sub_249E0A414(v1);
  sub_249E2A8CC(v0, &qword_27EF23858, &qword_249E7E2F8);
  v2 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_249E09A58()
{
  OUTLINED_FUNCTION_23();
  sub_249E2A8CC(*(v0 + 88), &qword_27EF23818, &unk_249E7E2A0);
  OUTLINED_FUNCTION_259();

  OUTLINED_FUNCTION_9_0();

  return v1();
}

uint64_t sub_249E09AE4()
{
  OUTLINED_FUNCTION_11();
  v1 = OUTLINED_FUNCTION_141();
  sub_249E0A414(v1);
  sub_249E2A8CC(v0, &qword_27EF23858, &qword_249E7E2F8);
  v2 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_249E09B58()
{
  OUTLINED_FUNCTION_23();

  OUTLINED_FUNCTION_259();

  OUTLINED_FUNCTION_9_0();

  return v1();
}

uint64_t sub_249E09BD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6, uint64_t a7, uint64_t a8)
{
  v8[4] = v20;
  v8[5] = v21;
  v8[3] = a8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF237A8, &qword_249E7E200);
  v8[6] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v8[7] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23788, &qword_249E7E1C0);
  v8[8] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v8[9] = swift_task_alloc();
  v8[10] = swift_task_alloc();
  v14 = swift_task_alloc();
  v8[11] = v14;
  v18 = (a6 + *a6);
  v15 = a6[1];
  v16 = swift_task_alloc();
  v8[12] = v16;
  *v16 = v8;
  v16[1] = sub_249E09D74;

  return v18(v14);
}

uint64_t sub_249E09D74()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_38_0();
  *v3 = v2;
  v5 = *(v4 + 96);
  v6 = *v1;
  OUTLINED_FUNCTION_2_3();
  *v7 = v6;
  *(v8 + 104) = v0;

  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_249E09E6C()
{
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_50();
  if (qword_27EF22F90 != -1)
  {
    OUTLINED_FUNCTION_12_1();
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[4];
  v4 = sub_249E7A6B8();
  __swift_project_value_buffer(v4, qword_27EF23410);
  v5 = OUTLINED_FUNCTION_81();
  sub_249E2A75C(v5, v6, v7, v8);

  v9 = sub_249E7A698();
  sub_249E7AE28();
  OUTLINED_FUNCTION_247();

  v10 = OUTLINED_FUNCTION_110();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[10];
  if (v12)
  {
    v15 = v0[8];
    v14 = v0[9];
    v17 = v0[3];
    v16 = v0[4];
    OUTLINED_FUNCTION_188();
    OUTLINED_FUNCTION_149();
    OUTLINED_FUNCTION_243();
    OUTLINED_FUNCTION_289(4.8151e-34);
    v19 = sub_249E3A958(v17, v16, v18);
    OUTLINED_FUNCTION_144(v19);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_294();
    sub_249E2A75C(v20, v21, v22, v23);
    OUTLINED_FUNCTION_113();
    sub_249E7AAC8();
    OUTLINED_FUNCTION_143();
    OUTLINED_FUNCTION_267();
    v24 = OUTLINED_FUNCTION_113();
    v27 = sub_249E3A958(v24, v25, v26);

    *(v3 + 14) = v27;
    OUTLINED_FUNCTION_35();
    _os_log_impl(v28, v29, v30, v31, v32, 0x16u);
    OUTLINED_FUNCTION_207();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  else
  {

    sub_249E2A8CC(v13, &qword_27EF23788, &qword_249E7E1C0);
  }

  v33 = v0[6];
  v34 = v0[5];
  sub_249E2A75C(v0[11], v0[7], &qword_27EF23788, &qword_249E7E1C0);
  OUTLINED_FUNCTION_81();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_34();

  return MEMORY[0x2822009F8](v35, v36, v37);
}

uint64_t sub_249E0A068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_30();
  a17 = v19;
  a18 = v20;
  OUTLINED_FUNCTION_17();
  a16 = v18;
  if (qword_27EF22F90 != -1)
  {
    OUTLINED_FUNCTION_12_1();
    swift_once();
  }

  v21 = v18[13];
  v22 = v18[4];
  v23 = sub_249E7A6B8();
  __swift_project_value_buffer(v23, qword_27EF23410);
  OUTLINED_FUNCTION_305();

  v24 = v21;
  v25 = sub_249E7A698();
  sub_249E7AE28();

  v26 = OUTLINED_FUNCTION_110();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = v18[13];
    v30 = v18[3];
    v29 = v18[4];
    OUTLINED_FUNCTION_188();
    OUTLINED_FUNCTION_149();
    OUTLINED_FUNCTION_243();
    OUTLINED_FUNCTION_289(4.8151e-34);
    v31 = OUTLINED_FUNCTION_167();
    v34 = sub_249E3A958(v31, v32, v33);
    OUTLINED_FUNCTION_144(v34);
    v18[2] = v28;
    v35 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF237C0, &qword_249E7E220);
    v36 = sub_249E7AAC8();
    sub_249E3A958(v36, v37, &a9);
    OUTLINED_FUNCTION_165();

    *(v21 + 14) = v29;
    OUTLINED_FUNCTION_35();
    _os_log_impl(v38, v39, v40, v41, v42, 0x16u);
    OUTLINED_FUNCTION_207();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  OUTLINED_FUNCTION_260();
  v43 = v25;
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v44, v45, v46);
}

uint64_t sub_249E0A200()
{
  OUTLINED_FUNCTION_11();
  v1 = OUTLINED_FUNCTION_141();
  sub_249E0A9E0(v1);
  sub_249E2A8CC(v0, &qword_27EF237A8, &qword_249E7E200);
  v2 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_249E0A274()
{
  OUTLINED_FUNCTION_23();
  sub_249E2A8CC(*(v0 + 88), &qword_27EF23788, &qword_249E7E1C0);
  OUTLINED_FUNCTION_259();

  OUTLINED_FUNCTION_9_0();

  return v1();
}

uint64_t sub_249E0A300()
{
  OUTLINED_FUNCTION_11();
  v1 = OUTLINED_FUNCTION_141();
  sub_249E0A9E0(v1);
  sub_249E2A8CC(v0, &qword_27EF237A8, &qword_249E7E200);
  v2 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

void *sub_249E0A374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  swift_defaultActor_initialize();
  v5[14] = 0;
  v5[15] = 0;
  v5[17] = MEMORY[0x277D84F90];
  if (a3)
  {
    v5[14] = a1;
    v5[15] = a2;
    v5[16] = a3;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    swift_defaultActor_destroy();

    OUTLINED_FUNCTION_153();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v5;
}

void sub_249E0A414(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23818, &unk_249E7E2A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v54 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23858, &qword_249E7E2F8);
  v9 = *(*(v8 - 1) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = (v54 - v13);
  v15 = v2 + 14;
  v16 = v2[14];
  if (v16)
  {
    v17 = v2[15];
    v18 = v2[16];
    if (v18)
    {
      v2[16] = v18 - 1;
    }

    sub_249E2A75C(a1, v54 - v13, &qword_27EF23858, &qword_249E7E2F8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v59 = *v14;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF237C0, &qword_249E7E220);
      v19 = sub_249DF691C(0, &qword_28130D168, 0x277CCA9B8);
      if (swift_dynamicCast())
      {
        v20 = v58[3];
        swift_beginAccess();
        v21 = v20;
        MEMORY[0x24C2047D0]();
        sub_249E3A238(*((v2[17] & 0xFFFFFFFFFFFFFF8) + 0x10));
        sub_249E7AC18();
        swift_endAccess();
        if (v2[16])
        {
          sub_249DF2D58(v16);
        }

        else
        {
          if (qword_27EF22F90 != -1)
          {
LABEL_23:
            swift_once();
          }

          v54[1] = v8;
          v25 = sub_249E7A6B8();
          __swift_project_value_buffer(v25, qword_27EF23410);

          v26 = sub_249E7A698();
          v27 = sub_249E7AE08();
          v28 = os_log_type_enabled(v26, v27);
          v56 = v17;
          v57 = v16;
          v55 = v12;
          if (v28)
          {
            v29 = swift_slowAlloc();
            v17 = swift_slowAlloc();
            v58[0] = v17;
            *v29 = 136315138;
            v16 = v27;
            v30 = v2[17];

            v32 = MEMORY[0x24C204800](v31, v19);
            v34 = v33;

            v35 = sub_249E3A958(v32, v34, v58);

            *(v29 + 4) = v35;
            _os_log_impl(&dword_249DEE000, v26, v16, "All Errors %s", v29, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v17);
            MEMORY[0x24C205870](v17, -1, -1);
            MEMORY[0x24C205870](v29, -1, -1);
          }

          else
          {
          }

          v36 = v2[17];

          v54[0] = sub_249E0AFAC(1, v36);
          v39 = v38;
          v12 = (v40 >> 1);
          v8 = &qword_28130D150;
          v19 = 0x277D82BB8uLL;
          while (v12 != v37)
          {
            if (v37 >= v12)
            {
              __break(1u);
              goto LABEL_23;
            }

            v17 = (v37 + 1);
            v41 = *(v39 + 8 * v37);
            sub_249DF691C(0, &qword_28130D150, 0x277D82BB8);
            v16 = v41;
            v42 = sub_249E7AF78();

            v37 = v17;
            if ((v42 & 1) == 0)
            {
              swift_unknownObjectRelease();
              v43 = v2[17];

              v45 = sub_249E56328(v44);

              sub_249E2A094();
              v46 = swift_allocError();
              *v47 = v45;
              v48 = v55;
              *v55 = v46;
              swift_storeEnumTagMultiPayload();
              goto LABEL_19;
            }
          }

          swift_unknownObjectRelease();
          v48 = v55;
          *v55 = v21;
          swift_storeEnumTagMultiPayload();
          v49 = v21;
LABEL_19:
          v50 = v57;
          v57(v48);
          sub_249E2A8CC(v48, &qword_27EF23858, &qword_249E7E2F8);
          sub_249DF2D58(v50);

          v51 = v2[17];
          v2[17] = MEMORY[0x277D84F90];

          v52 = v2[14];
          v53 = v2[15];
          *v15 = 0;
          v2[15] = 0;
          sub_249DF2D58(v52);
        }
      }

      else
      {
        sub_249E7B308();
        __break(1u);
      }
    }

    else
    {
      sub_249E2A7A4(v14, v7, &qword_27EF23818, &unk_249E7E2A0);
      sub_249E2A75C(v7, v12, &qword_27EF23818, &unk_249E7E2A0);
      swift_storeEnumTagMultiPayload();

      v16(v12);
      sub_249E2A8CC(v12, &qword_27EF23858, &qword_249E7E2F8);
      sub_249DF2D58(v16);
      sub_249E2A8CC(v7, &qword_27EF23818, &unk_249E7E2A0);
      swift_beginAccess();
      v22 = v2[17];
      v2[17] = MEMORY[0x277D84F90];

      v23 = v2[14];
      v24 = v2[15];
      *v15 = 0;
      v2[15] = 0;
      sub_249DF2D58(v23);
    }
  }
}

void sub_249E0A9E0(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23788, &qword_249E7E1C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v54 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF237A8, &qword_249E7E200);
  v9 = *(*(v8 - 1) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = (v54 - v13);
  v15 = v2 + 14;
  v16 = v2[14];
  if (v16)
  {
    v17 = v2[15];
    v18 = v2[16];
    if (v18)
    {
      v2[16] = v18 - 1;
    }

    sub_249E2A75C(a1, v54 - v13, &qword_27EF237A8, &qword_249E7E200);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v59 = *v14;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF237C0, &qword_249E7E220);
      v19 = sub_249DF691C(0, &qword_28130D168, 0x277CCA9B8);
      if (swift_dynamicCast())
      {
        v20 = v58[3];
        swift_beginAccess();
        v21 = v20;
        MEMORY[0x24C2047D0]();
        sub_249E3A238(*((v2[17] & 0xFFFFFFFFFFFFFF8) + 0x10));
        sub_249E7AC18();
        swift_endAccess();
        if (v2[16])
        {
          sub_249DF2D58(v16);
        }

        else
        {
          if (qword_27EF22F90 != -1)
          {
LABEL_23:
            swift_once();
          }

          v54[1] = v8;
          v25 = sub_249E7A6B8();
          __swift_project_value_buffer(v25, qword_27EF23410);

          v26 = sub_249E7A698();
          v27 = sub_249E7AE08();
          v28 = os_log_type_enabled(v26, v27);
          v56 = v17;
          v57 = v16;
          v55 = v12;
          if (v28)
          {
            v29 = swift_slowAlloc();
            v17 = swift_slowAlloc();
            v58[0] = v17;
            *v29 = 136315138;
            v16 = v27;
            v30 = v2[17];

            v32 = MEMORY[0x24C204800](v31, v19);
            v34 = v33;

            v35 = sub_249E3A958(v32, v34, v58);

            *(v29 + 4) = v35;
            _os_log_impl(&dword_249DEE000, v26, v16, "All Errors %s", v29, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v17);
            MEMORY[0x24C205870](v17, -1, -1);
            MEMORY[0x24C205870](v29, -1, -1);
          }

          else
          {
          }

          v36 = v2[17];

          v54[0] = sub_249E0AFAC(1, v36);
          v39 = v38;
          v12 = (v40 >> 1);
          v8 = &qword_28130D150;
          v19 = 0x277D82BB8uLL;
          while (v12 != v37)
          {
            if (v37 >= v12)
            {
              __break(1u);
              goto LABEL_23;
            }

            v17 = (v37 + 1);
            v41 = *(v39 + 8 * v37);
            sub_249DF691C(0, &qword_28130D150, 0x277D82BB8);
            v16 = v41;
            v42 = sub_249E7AF78();

            v37 = v17;
            if ((v42 & 1) == 0)
            {
              swift_unknownObjectRelease();
              v43 = v2[17];

              v45 = sub_249E56328(v44);

              sub_249E2A094();
              v46 = swift_allocError();
              *v47 = v45;
              v48 = v55;
              *v55 = v46;
              swift_storeEnumTagMultiPayload();
              goto LABEL_19;
            }
          }

          swift_unknownObjectRelease();
          v48 = v55;
          *v55 = v21;
          swift_storeEnumTagMultiPayload();
          v49 = v21;
LABEL_19:
          v50 = v57;
          v57(v48);
          sub_249E2A8CC(v48, &qword_27EF237A8, &qword_249E7E200);
          sub_249DF2D58(v50);

          v51 = v2[17];
          v2[17] = MEMORY[0x277D84F90];

          v52 = v2[14];
          v53 = v2[15];
          *v15 = 0;
          v2[15] = 0;
          sub_249DF2D58(v52);
        }
      }

      else
      {
        sub_249E7B308();
        __break(1u);
      }
    }

    else
    {
      sub_249E2A7A4(v14, v7, &qword_27EF23788, &qword_249E7E1C0);
      sub_249E2A75C(v7, v12, &qword_27EF23788, &qword_249E7E1C0);
      swift_storeEnumTagMultiPayload();

      v16(v12);
      sub_249E2A8CC(v12, &qword_27EF237A8, &qword_249E7E200);
      sub_249DF2D58(v16);
      sub_249E2A8CC(v7, &qword_27EF23788, &qword_249E7E1C0);
      swift_beginAccess();
      v22 = v2[17];
      v2[17] = MEMORY[0x277D84F90];

      v23 = v2[14];
      v24 = v2[15];
      *v15 = 0;
      v2[15] = 0;
      sub_249DF2D58(v23);
    }
  }
}

uint64_t sub_249E0AFAC(uint64_t a1, unint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v4 = sub_249E51FB4(a2);
  if (__OFSUB__(v4, a1))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    v12 = sub_249E7B248();

    return v12;
  }

  v5 = (v4 - a1) & ~((v4 - a1) >> 63);
  v6 = sub_249E51FB4(a2);
  v7 = sub_249E27F44(0, v5, v6);
  if (v8)
  {
    v9 = v6;
  }

  else
  {
    v9 = v7;
  }

  if (v9 < 0)
  {
    goto LABEL_18;
  }

  sub_249E27F90(0, a2);
  sub_249E27F90(v9, a2);
  if ((a2 & 0xC000000000000001) != 0 && v9)
  {
    sub_249DF691C(0, &qword_28130D168, 0x277CCA9B8);

    v10 = 0;
    do
    {
      v11 = v10 + 1;
      sub_249E7B138();
      v10 = v11;
    }

    while (v9 != v11);
  }

  else
  {
  }

  if (a2 >> 62)
  {
    goto LABEL_19;
  }

  return a2 & 0xFFFFFFFFFFFFFF8;
}

uint64_t sub_249E0B120()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 16) + OBJC_IVAR____TtC10DropInCore13DropInManager_logger;
  v2 = sub_249E7A698();
  v3 = sub_249E7AE28();
  if (OUTLINED_FUNCTION_120(v3))
  {
    v4 = OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_6_0(v4);
    OUTLINED_FUNCTION_35();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  OUTLINED_FUNCTION_31_0();

  return v10();
}

uint64_t sub_249E0B1D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a3;
  v4[4] = v3;
  v4[2] = a2;
  return OUTLINED_FUNCTION_8_0();
}

uint64_t sub_249E0B1E8()
{
  OUTLINED_FUNCTION_11();
  v2 = v1[3];
  if (v2)
  {
    v0 = v1[3];
  }

  else
  {
    sub_249E28F30();
    OUTLINED_FUNCTION_40();
    v2 = OUTLINED_FUNCTION_103();
    *v3 = 28;
  }

  v1[5] = v0;
  v4 = v2;
  v5 = swift_task_alloc();
  v1[6] = v5;
  *v5 = v1;
  v5[1] = sub_249E0B2B4;
  v6 = v1[4];
  v7 = OUTLINED_FUNCTION_97(v1[2]);

  return sub_249E0E5CC(v7, v0);
}

uint64_t sub_249E0B2B4()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  v2 = *(v1 + 48);
  v3 = *v0;
  OUTLINED_FUNCTION_2_3();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_249E0B398()
{
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_9_0();

  return v1();
}

uint64_t sub_249E0B3F0()
{
  OUTLINED_FUNCTION_11();
  v1[10] = v2;
  v1[11] = v0;
  v1[9] = v3;
  v4 = type metadata accessor for DropInSessionAnalyticEvent();
  v1[12] = v4;
  OUTLINED_FUNCTION_37(v4);
  v6 = *(v5 + 64);
  v1[13] = OUTLINED_FUNCTION_192();
  v7 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_249E0B470()
{
  OUTLINED_FUNCTION_23();
  v1 = v0[11] + OBJC_IVAR____TtC10DropInCore13DropInManager_logger;
  v2 = sub_249E7A698();
  v3 = sub_249E7AE28();
  if (OUTLINED_FUNCTION_120(v3))
  {
    v4 = OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_6_0(v4);
    OUTLINED_FUNCTION_35();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_249E0B560;
  v11 = v0[10];
  v12 = v0[11];
  v13 = OUTLINED_FUNCTION_97(v0[9]);

  return sub_249E0F38C(v13, v14);
}

uint64_t sub_249E0B560()
{
  OUTLINED_FUNCTION_23();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  v5 = v4;
  OUTLINED_FUNCTION_6_2();
  *v6 = v5;
  v8 = *(v7 + 112);
  v9 = *v1;
  OUTLINED_FUNCTION_2_3();
  *v10 = v9;
  *(v5 + 120) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_18();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }

  else
  {
    v14 = *(v5 + 104);

    v15 = *(v9 + 8);

    return v15(v3);
  }
}

uint64_t sub_249E0B69C()
{
  OUTLINED_FUNCTION_17();
  v1 = v0[15];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[11];
  swift_getErrorValue();
  v5 = v0[2];
  v6 = v0[4];
  v7 = sub_249DF3DA4(v0[3]);
  v9 = v8;
  v10 = v4 + OBJC_IVAR____TtC10DropInCore13DropInManager_dropInSessionAnalyticEvent;
  swift_beginAccess();
  v11 = (v10 + *(v3 + 40));
  v12 = v11[1];
  *v11 = v7;
  v11[1] = v9;

  OUTLINED_FUNCTION_46_0();
  sub_249E2AAB0(v10, v2);
  sub_249E28B3C(v2);
  OUTLINED_FUNCTION_21_0();
  sub_249E2AA5C();
  swift_willThrow();

  OUTLINED_FUNCTION_9_0();
  v14 = v0[15];

  return v13();
}

uint64_t sub_249E0B79C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_8_0();
}

uint64_t sub_249E0B7B4()
{
  OUTLINED_FUNCTION_318();
  OUTLINED_FUNCTION_82();
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *(v0 + 16);
  v4 = v2;
  v5 = sub_249E7A698();
  sub_249E7AE28();

  if (OUTLINED_FUNCTION_272())
  {
    v7 = *(v0 + 16);
    v6 = *(v0 + 24);
    v8 = OUTLINED_FUNCTION_188();
    v9 = OUTLINED_FUNCTION_234();
    OUTLINED_FUNCTION_233(v9, 5.778e-34);
    v10 = v6;
    OUTLINED_FUNCTION_202();
    _os_log_impl(v11, v12, v13, v14, v8, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23C30, &qword_249E7DA20);
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  v15 = *(v0 + 32);

  *(v0 + 40) = *(v15 + OBJC_IVAR____TtC10DropInCore13DropInManager_sessionManager);
  OUTLINED_FUNCTION_254();
  OUTLINED_FUNCTION_271();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_249E0B8E0()
{
  OUTLINED_FUNCTION_11();
  v1 = *(*(v0 + 40) + qword_28130E738);
  *(v0 + 48) = v1;
  v2 = v1;
  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_249E0B958()
{
  OUTLINED_FUNCTION_23();
  if (!v0[6])
  {
    sub_249E28F30();
    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_190(v7, 14);
LABEL_7:
    OUTLINED_FUNCTION_9_0();
    goto LABEL_8;
  }

  v1 = v0[3];
  sub_249DF691C(0, &qword_28130D150, 0x277D82BB8);
  OUTLINED_FUNCTION_83();
  result = sub_249E7AF78();
  if ((result & 1) == 0)
  {
    v8 = v0[6];
    sub_249E28F30();
    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_190(v9, 15);

    goto LABEL_7;
  }

  v3 = *(v0[4] + OBJC_IVAR____TtC10DropInCore13DropInManager_callCenterManager);
  if (!v3)
  {
    __break(1u);
    return result;
  }

  v4 = v0[6];
  v5 = v3;
  sub_249E067EC();

  OUTLINED_FUNCTION_31_0();
LABEL_8:

  return v6();
}

uint64_t sub_249E0BA84()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC10DropInCore13DropInManager_sessionManager);
  *(v0 + 24) = v1;
  return OUTLINED_FUNCTION_11_1(sub_249E0BAAC, v1);
}

uint64_t sub_249E0BAAC()
{
  OUTLINED_FUNCTION_23();
  v1 = *(*(v0 + 24) + qword_28130E738);
  OUTLINED_FUNCTION_9_0();
  v5 = v2;
  v3 = v1;

  return v5(v1);
}

uint64_t sub_249E0BB20(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return OUTLINED_FUNCTION_8_0();
}

void sub_249E0BB38()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC10DropInCore13DropInManager_callCenterManager);
  *(v0 + 24) = v1;
  if (v1)
  {
    OUTLINED_FUNCTION_11();
    v3 = v2;
    OUTLINED_FUNCTION_280();
    v4 = swift_task_alloc();
    *(v0 + 32) = v4;
    *v4 = v0;
    v4[1] = sub_249E0BBF0;
    v5 = *(v0 + 48);

    sub_249E6F78C(v5);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_249E0BBF0()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  v3 = v2;
  OUTLINED_FUNCTION_6_2();
  *v4 = v3;
  v6 = *(v5 + 32);
  v7 = *v1;
  OUTLINED_FUNCTION_2_3();
  *v8 = v7;
  *(v3 + 40) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_18();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {

    OUTLINED_FUNCTION_9_0();

    return v12();
  }
}

uint64_t sub_249E0BD0C()
{
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_9_0();
  v2 = *(v0 + 40);

  return v1();
}

void sub_249E0BD7C()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC10DropInCore13DropInManager_callCenterManager);
  v0[3] = v1;
  if (v1)
  {
    OUTLINED_FUNCTION_11();
    v3 = v2;
    OUTLINED_FUNCTION_280();
    v4 = swift_task_alloc();
    v0[4] = v4;
    *v4 = v0;
    OUTLINED_FUNCTION_205(v4);

    sub_249E6FA10();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_249E0BE28()
{
  OUTLINED_FUNCTION_23();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  v5 = v4;
  OUTLINED_FUNCTION_6_2();
  *v6 = v5;
  v8 = *(v7 + 32);
  v9 = *v1;
  OUTLINED_FUNCTION_2_3();
  *v10 = v9;
  *(v5 + 40) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_18();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }

  else
  {

    v14 = *(v9 + 8);

    return v14(v3 & 1);
  }
}

uint64_t sub_249E0BF64()
{
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_168();
  v2 = *(v0 + 40);

  return v1(0);
}

uint64_t sub_249E0BFC4()
{
  OUTLINED_FUNCTION_11();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234B0, &qword_249E7D910);
  OUTLINED_FUNCTION_37(v4);
  v6 = *(v5 + 64);
  v1[5] = OUTLINED_FUNCTION_192();
  v7 = sub_249E7A628();
  v1[6] = v7;
  OUTLINED_FUNCTION_34_0(v7);
  v1[7] = v8;
  v10 = *(v9 + 64);
  v1[8] = OUTLINED_FUNCTION_192();
  v11 = type metadata accessor for XPCClient();
  v1[9] = v11;
  OUTLINED_FUNCTION_37(v11);
  v13 = *(v12 + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_249E0C0D0()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_17();
  v1 = v0[11];
  v2 = v0[4];
  v3 = v0[2];
  v0[12] = OBJC_IVAR____TtC10DropInCore13DropInManager_logger;
  OUTLINED_FUNCTION_2_5();
  sub_249E2AAB0(v4, v5);
  v6 = sub_249E7A698();
  v7 = sub_249E7AE28();
  v8 = OUTLINED_FUNCTION_127(v7);
  v9 = v0[11];
  if (v8)
  {
    OUTLINED_FUNCTION_70();
    v10 = swift_slowAlloc();
    OUTLINED_FUNCTION_74();
    v21 = swift_slowAlloc();
    *v10 = 136315138;
    sub_249E6A23C();
    OUTLINED_FUNCTION_143();
    OUTLINED_FUNCTION_0_6();
    sub_249E2AA5C();
    v11 = OUTLINED_FUNCTION_113();
    sub_249E3A958(v11, v12, v13);
    OUTLINED_FUNCTION_102();

    *(v10 + 4) = v9;
    OUTLINED_FUNCTION_52(&dword_249DEE000, v14, v15, "Loading devices for client %s");
    __swift_destroy_boxed_opaque_existential_0(v21);
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  else
  {

    OUTLINED_FUNCTION_0_6();
    sub_249E2AA5C();
  }

  v0[13] = *(v0[4] + OBJC_IVAR____TtC10DropInCore13DropInManager_deviceManager);
  OUTLINED_FUNCTION_254();
  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_249E0C21C()
{
  OUTLINED_FUNCTION_11();
  v1 = *(v0 + 104);
  sub_249E50C80();
  v2 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_249E0C278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_169();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_221();
  a22 = v24;
  v28 = v24[5];
  v27 = v24[6];
  v29 = v24[3];
  sub_249E7A6C8();
  OUTLINED_FUNCTION_226(v28, 1, v27);
  if (v30)
  {
    v31 = v24[12];
    v32 = v24[4];
    sub_249E2A8CC(v24[5], &qword_27EF234B0, &qword_249E7D910);
    v33 = sub_249E7A698();
    v34 = sub_249E7AE08();
    if (OUTLINED_FUNCTION_120(v34))
    {
      v35 = OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_6_0(v35);
      OUTLINED_FUNCTION_35();
      _os_log_impl(v36, v37, v38, v39, v40, 2u);
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
    }

    v42 = v24[10];
    v41 = v24[11];
    v43 = v24[8];
    v44 = v24[5];

    sub_249E28F30();
    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_190(v45, 7);

    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_122();

    return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  else
  {
    v55 = v24[4];
    (*(v24[7] + 32))(v24[8], v24[5], v24[6]);
    v56 = *(v55 + OBJC_IVAR____TtC10DropInCore13DropInManager_homeManagerProvider);
    swift_getObjectType();
    v57 = sub_249DF5698();
    v60 = v57;
    v61 = 0;
    v62 = *(v57 + 16);
    v63 = (v57 + 40);
    v83 = v24;
    while (v62 != v61)
    {
      if (v61 >= *(v60 + 16))
      {
        __break(1u);
        return MEMORY[0x2822009F8](v57, v58, v59);
      }

      v64 = v24[12];
      v65 = v24[4];
      v67 = *(v63 - 1);
      v66 = *v63;

      v68 = sub_249E7A698();
      v69 = sub_249E7AE28();
      if (OUTLINED_FUNCTION_201(v69))
      {
        OUTLINED_FUNCTION_70();
        v70 = v60;
        v71 = v62;
        v72 = swift_slowAlloc();
        OUTLINED_FUNCTION_74();
        v73 = swift_slowAlloc();
        a12 = v73;
        *v72 = 136315138;
        *(v72 + 4) = sub_249E3A958(v67, v66, &a12);
        OUTLINED_FUNCTION_339(&dword_249DEE000, v68, v69, "%s");
        __swift_destroy_boxed_opaque_existential_0(v73);
        OUTLINED_FUNCTION_65();
        MEMORY[0x24C205870]();
        v62 = v71;
        v60 = v70;
        v24 = v83;
        OUTLINED_FUNCTION_65();
        MEMORY[0x24C205870]();
      }

      v63 += 2;
      ++v61;
    }

    v75 = v24[9];
    v74 = v24[10];
    v76 = v24[2];

    OUTLINED_FUNCTION_2_5();
    v77 = OUTLINED_FUNCTION_242();
    sub_249E2AAB0(v77, v78);
    v79 = *(v75 + 24);
    if ((~*(v74 + v79) & 6) != 0)
    {
      *(v74 + v79) |= 6uLL;
    }

    v80 = v24[4];
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_249E3F2C4(v24[10]);
      swift_unknownObjectRelease();
    }

    v81 = v24[13];
    OUTLINED_FUNCTION_254();
    OUTLINED_FUNCTION_122();

    return MEMORY[0x2822009F8](v57, v58, v59);
  }
}

uint64_t sub_249E0C580()
{
  OUTLINED_FUNCTION_11();
  v1 = v0[13];
  v2 = v0[8];
  sub_249E4F2F4();
  v0[14] = v3;
  v4 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_249E0C5E4()
{
  OUTLINED_FUNCTION_318();
  OUTLINED_FUNCTION_82();
  v1 = v0[10];
  v2 = v0[11];
  v4 = v0[7];
  v3 = v0[8];
  v6 = v0[5];
  v5 = v0[6];
  OUTLINED_FUNCTION_0_6();
  sub_249E2AA5C();
  v7 = *(v4 + 8);
  v8 = OUTLINED_FUNCTION_145();
  v9(v8);

  OUTLINED_FUNCTION_168();
  v10 = v0[14];
  OUTLINED_FUNCTION_271();

  return v13(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_249E0C690()
{
  OUTLINED_FUNCTION_11();
  v1[2] = v2;
  v1[3] = v0;
  v3 = type metadata accessor for XPCClient();
  v1[4] = v3;
  OUTLINED_FUNCTION_37(v3);
  v5 = *(v4 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_249E0C720()
{
  OUTLINED_FUNCTION_50();
  v2 = v0[6];
  v3 = v0[2];
  v4 = v0[3];
  OUTLINED_FUNCTION_2_5();
  sub_249E2AAB0(v5, v6);
  v7 = sub_249E7A698();
  v8 = sub_249E7AE28();
  v9 = OUTLINED_FUNCTION_127(v8);
  v10 = v0[6];
  if (v9)
  {
    OUTLINED_FUNCTION_70();
    v11 = swift_slowAlloc();
    OUTLINED_FUNCTION_74();
    swift_slowAlloc();
    OUTLINED_FUNCTION_246();
    *v11 = 136315138;
    sub_249E6A23C();
    OUTLINED_FUNCTION_143();
    OUTLINED_FUNCTION_0_6();
    sub_249E2AA5C();
    v12 = OUTLINED_FUNCTION_113();
    sub_249E3A958(v12, v13, v14);
    OUTLINED_FUNCTION_102();

    *(v11 + 4) = v10;
    OUTLINED_FUNCTION_52(&dword_249DEE000, v15, v16, "Registering Audio Power for client %s");
    __swift_destroy_boxed_opaque_existential_0(v1);
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  else
  {

    OUTLINED_FUNCTION_0_6();
    sub_249E2AA5C();
  }

  v17 = v0[3];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v19 = v0[4];
    v18 = v0[5];
    v20 = v0[2];
    OUTLINED_FUNCTION_2_5();
    sub_249E2AAB0(v21, v18);
    v22 = *(v19 + 24);
    v23 = *(v18 + v22);
    if ((v23 & 1) == 0)
    {
      *(v18 + v22) = v23 | 1;
    }

    v24 = v0[6];
    sub_249E3F2C4(v0[5]);
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_0_6();
    sub_249E2AA5C();

    OUTLINED_FUNCTION_31_0();
  }

  else
  {
    v26 = v0[5];
    v27 = v0[6];
    sub_249E28F30();
    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_190(v28, 11);

    OUTLINED_FUNCTION_9_0();
  }

  return v25();
}

uint64_t sub_249E0C90C()
{
  OUTLINED_FUNCTION_11();
  v1[8] = v2;
  v1[9] = v0;
  v1[6] = v3;
  v1[7] = v4;
  v5 = type metadata accessor for TransactionType(0);
  OUTLINED_FUNCTION_37(v5);
  v7 = *(v6 + 64);
  v1[10] = OUTLINED_FUNCTION_192();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23820, &unk_249E7E860);
  v1[11] = v8;
  OUTLINED_FUNCTION_34_0(v8);
  v1[12] = v9;
  v11 = *(v10 + 64);
  v1[13] = OUTLINED_FUNCTION_192();
  v12 = sub_249E7A5B8();
  v1[14] = v12;
  OUTLINED_FUNCTION_34_0(v12);
  v1[15] = v13;
  v15 = *(v14 + 64) + 15;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v16 = type metadata accessor for DropInStateManager.Context(0);
  OUTLINED_FUNCTION_37(v16);
  v18 = *(v17 + 64);
  v1[18] = OUTLINED_FUNCTION_192();
  v19 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v19, v20, v21);
}

uint64_t sub_249E0CA60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_17();
  if ((v10[6] - 1) > 1)
  {
    v15 = v10[17];
    v16 = v10[18];
    v17 = v10[16];
    v18 = v10[13];
    v19 = v10[10];
    sub_249E28F30();
    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_190(v20, 19);

    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_31();

    return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
  }

  else
  {
    v10[19] = *(v10[9] + OBJC_IVAR____TtC10DropInCore13DropInManager_stateManager);
    OUTLINED_FUNCTION_254();
    OUTLINED_FUNCTION_31();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }
}

uint64_t sub_249E0CB6C()
{
  OUTLINED_FUNCTION_23();
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = OBJC_IVAR____TtC10DropInCore18DropInStateManager_context;
  OUTLINED_FUNCTION_76();
  sub_249E2AAB0(v1 + v3, v2);
  v4 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_249E0CC00()
{
  OUTLINED_FUNCTION_23();
  v1 = **(v0 + 144);
  OUTLINED_FUNCTION_10_0();
  sub_249E2AA5C();
  if (v1 == 3)
  {
    OUTLINED_FUNCTION_197();

    OUTLINED_FUNCTION_31_0();

    return v2();
  }

  else
  {
    v4 = *(v0 + 152);
    v5 = OUTLINED_FUNCTION_254();

    return MEMORY[0x2822009F8](v5, v6, v7);
  }
}

uint64_t sub_249E0CCCC()
{
  OUTLINED_FUNCTION_11();
  v1 = v0[19];
  sub_249E2F110(v0[6], v0[7], v0[8]);
  v2 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_249E0CD30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_221();
  if (v16[6] == 2)
  {
    v17 = v16[16];
    v18 = v16[15];
    v56 = v16[17];
    v57 = v16[14];
    v20 = v16[12];
    v19 = v16[13];
    v21 = v16[11];
    v58 = v16[9];
    v59 = v16[10];
    sub_249E7A598();
    sub_249E7A758();
    OUTLINED_FUNCTION_49_0();
    OUTLINED_FUNCTION_213();
    sub_249E2AB74(v22, v23, v24);
    OUTLINED_FUNCTION_48_0();
    OUTLINED_FUNCTION_213();
    sub_249E2AB74(v25, v26, v27);
    OUTLINED_FUNCTION_47_0();
    OUTLINED_FUNCTION_213();
    sub_249E2AB74(v28, v29, v30);
    OUTLINED_FUNCTION_136();
    sub_249E7A6E8();
    v31 = *(v20 + 8);
    v32 = OUTLINED_FUNCTION_182();
    v33(v32);
    v34 = v16[5];
    sub_249E7A528();
    v35 = *(v18 + 8);
    v16[20] = v35;
    v16[21] = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v35(v17, v57);
    v16[22] = *(v58 + OBJC_IVAR____TtC10DropInCore13DropInManager_transactionManager);
    v36 = *(v18 + 16);
    v37 = OUTLINED_FUNCTION_148();
    v38(v37);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF236C8, &qword_249E7E008);
    OUTLINED_FUNCTION_166();
    OUTLINED_FUNCTION_94();
    __swift_storeEnumTagSinglePayload(v39, v40, v41, v42);
    OUTLINED_FUNCTION_69();
    OUTLINED_FUNCTION_122();

    return MEMORY[0x2822009F8](v43, v44, v45);
  }

  else
  {
    OUTLINED_FUNCTION_197();

    OUTLINED_FUNCTION_31_0();
    OUTLINED_FUNCTION_122();

    return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14, a15, a16);
  }
}

uint64_t sub_249E0CF20()
{
  OUTLINED_FUNCTION_11();
  v1 = *(v0 + 176);
  sub_249E339F0(*(v0 + 80));
  OUTLINED_FUNCTION_18_0();
  v2 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_249E0CF88()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 168);
  (*(v0 + 160))(*(v0 + 136), *(v0 + 112));
  OUTLINED_FUNCTION_197();

  OUTLINED_FUNCTION_31_0();

  return v2();
}

uint64_t sub_249E0D014()
{
  OUTLINED_FUNCTION_11();
  v1[13] = v2;
  v1[14] = v0;
  v3 = type metadata accessor for TransactionType(0);
  OUTLINED_FUNCTION_37(v3);
  v5 = *(v4 + 64);
  v1[15] = OUTLINED_FUNCTION_192();
  v6 = type metadata accessor for DropInStateManager.Context(0);
  v1[16] = v6;
  OUTLINED_FUNCTION_37(v6);
  v8 = *(v7 + 64);
  v1[17] = OUTLINED_FUNCTION_192();
  v9 = type metadata accessor for DropInStateResponse();
  v1[18] = v9;
  OUTLINED_FUNCTION_37(v9);
  v11 = *(v10 + 64);
  v1[19] = OUTLINED_FUNCTION_192();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23788, &qword_249E7E1C0);
  OUTLINED_FUNCTION_37(v12);
  v14 = *(v13 + 64);
  v1[20] = OUTLINED_FUNCTION_192();
  v15 = type metadata accessor for DropInStateRequest();
  v1[21] = v15;
  OUTLINED_FUNCTION_37(v15);
  v17 = *(v16 + 64);
  v1[22] = OUTLINED_FUNCTION_192();
  v18 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_249E0D124()
{
  OUTLINED_FUNCTION_11();
  v1 = *(v0[14] + OBJC_IVAR____TtC10DropInCore13DropInManager_homeManagerProvider);
  swift_getObjectType();
  v2 = swift_task_alloc();
  v0[23] = v2;
  *v2 = v0;
  v2[1] = sub_249E0D1D0;
  v3 = OUTLINED_FUNCTION_97(v0[13]);

  return sub_249DF5E08(v3);
}

uint64_t sub_249E0D1D0()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_38_0();
  *v2 = v1;
  v4 = *(v3 + 184);
  *v2 = *v0;
  *(v1 + 192) = v5;

  v6 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

void sub_249E0D2B8()
{
  OUTLINED_FUNCTION_17();
  v1 = *(v0 + 192);
  if (v1)
  {
    v2 = [*(v0 + 192) home];
    *(v0 + 200) = v2;
    if (v2)
    {
      v3 = *(v0 + 176);
      v4 = *(v0 + 112);
      v5 = [v2 uniqueIdentifier];
      sub_249E7A608();

      v6 = *(v4 + OBJC_IVAR____TtC10DropInCore13DropInManager_messageCenter);
      *(v0 + 208) = v6;
      if (v6)
      {
        v7 = *(v0 + 176);
        *(v0 + 88) = *(v0 + 168);
        *(v0 + 96) = sub_249E28F84(&qword_27EF23790, type metadata accessor for DropInStateRequest);
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 64));
        sub_249E2AAB0(v7, boxed_opaque_existential_0);
        *(v0 + 40) = sub_249DF691C(0, &qword_28130D270, 0x277CD1650);
        *(v0 + 48) = &off_285D07E60;
        *(v0 + 16) = v1;
        *(v0 + 56) = &off_285D07E80;

        v9 = v1;
        swift_task_alloc();
        OUTLINED_FUNCTION_75();
        *(v0 + 216) = v10;
        *v10 = v11;
        v10[1] = sub_249E0D54C;
        v12 = *(v0 + 160);

        sub_249E12B34(v12, v0 + 64, v0 + 16, 0, 1);
      }

      else
      {
        __break(1u);
      }

      return;
    }

    sub_249E28F30();
    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_190(v14, 7);
  }

  else
  {
    sub_249E28F30();
    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_190(v13, 10);
  }

  v15 = *(v0 + 176);
  v17 = *(v0 + 152);
  v16 = *(v0 + 160);
  v18 = *(v0 + 136);
  v19 = *(v0 + 120);

  OUTLINED_FUNCTION_9_0();

  v20();
}

uint64_t sub_249E0D54C()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  v3 = v2;
  OUTLINED_FUNCTION_6_2();
  *v4 = v3;
  v6 = *(v5 + 216);
  v7 = *v1;
  OUTLINED_FUNCTION_2_3();
  *v8 = v7;
  v3[28] = v0;

  v9 = v3[26];

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_0(v3 + 2);
    __swift_destroy_boxed_opaque_existential_0(v3 + 8);
  }

  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_249E0D664()
{
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_50();
  v1 = *(v0 + 152);
  v3 = *(v0 + 136);
  v2 = *(v0 + 144);
  v4 = *(v0 + 128);
  v5 = *(v0 + 112);
  sub_249E2AAB0(*(v0 + 160), v1);
  v6 = *(v1 + v2[6]);
  *(v0 + 232) = v6;
  v7 = v2[8];
  v8 = (v1 + v2[7]);
  v10 = *v8;
  v9 = v8[1];
  *(v0 + 280) = v7;
  v11 = *(v4 + 24);
  v12 = sub_249E7A5B8();
  *(v0 + 240) = v12;
  OUTLINED_FUNCTION_28_0(v12);
  v14 = *(v13 + 16);
  *(v0 + 248) = v14;
  *(v0 + 256) = (v13 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v14(&v3[v11], v1 + v7);
  *v3 = v6;
  *(v3 + 1) = v10;
  *(v3 + 2) = v9;
  *(v0 + 264) = *(v5 + OBJC_IVAR____TtC10DropInCore13DropInManager_deviceManager);
  *(v0 + 284) = v2[5];

  OUTLINED_FUNCTION_242();
  OUTLINED_FUNCTION_34();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_249E0D780()
{
  OUTLINED_FUNCTION_11();
  v1 = *(v0 + 264);
  sub_249E50708(*(v0 + 152) + *(v0 + 284), *(v0 + 136));
  v2 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_249E0D7EC()
{
  OUTLINED_FUNCTION_255();
  OUTLINED_FUNCTION_82();
  if (*(v1 + 232) == 2)
  {
    v3 = *(v1 + 248);
    v2 = *(v1 + 256);
    v4 = *(v1 + 240);
    v5 = *(v1 + 280);
    v6 = *(v1 + 152);
    v7 = *(v1 + 120);
    *(v1 + 272) = *(*(v1 + 112) + OBJC_IVAR____TtC10DropInCore13DropInManager_transactionManager);
    v3(v7, v6 + v5, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF236C8, &qword_249E7E008);
    OUTLINED_FUNCTION_297();
    OUTLINED_FUNCTION_94();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
    OUTLINED_FUNCTION_57();
    OUTLINED_FUNCTION_253();

    return MEMORY[0x2822009F8](v12, v13, v14);
  }

  else
  {
    v16 = *(v1 + 192);

    v17 = *(v1 + 176);
    OUTLINED_FUNCTION_227();
    OUTLINED_FUNCTION_10_0();
    sub_249E2AA5C();
    OUTLINED_FUNCTION_138();
    sub_249E2A8CC(v0, &qword_27EF23788, &qword_249E7E1C0);
    OUTLINED_FUNCTION_60();

    OUTLINED_FUNCTION_31_0();
    OUTLINED_FUNCTION_253();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25);
  }
}

uint64_t sub_249E0D93C()
{
  OUTLINED_FUNCTION_11();
  v1 = *(v0 + 272);
  sub_249E339F0(*(v0 + 120));
  OUTLINED_FUNCTION_18_0();
  v2 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_249E0D9A4()
{
  OUTLINED_FUNCTION_255();
  OUTLINED_FUNCTION_82();
  v2 = *(v1 + 192);

  v3 = *(v1 + 176);
  OUTLINED_FUNCTION_227();
  OUTLINED_FUNCTION_10_0();
  sub_249E2AA5C();
  OUTLINED_FUNCTION_138();
  sub_249E2A8CC(v0, &qword_27EF23788, &qword_249E7E1C0);
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_31_0();
  OUTLINED_FUNCTION_253();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_249E0DA64()
{
  OUTLINED_FUNCTION_255();
  OUTLINED_FUNCTION_82();
  v1 = *(v0 + 192);
  v2 = *(v0 + 176);

  OUTLINED_FUNCTION_60();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 64));
  v3 = *(v0 + 224);
  v4 = *(v0 + 176);
  OUTLINED_FUNCTION_227();

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_253();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_249E0DB10()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23898, &unk_249E7E3E0);
  sub_249E7AA08();
  OUTLINED_FUNCTION_9_1();
  type metadata accessor for DropInStateEvent();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF238A0, &qword_249E80E10);
  v1 = sub_249E7AAC8();
  v3 = v2;
  OUTLINED_FUNCTION_22();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();

  swift_isUniquelyReferenced_nonNull_native();
  sub_249DFDCD0(&unk_249E7E3F8, v4, v1, v3);

  type metadata accessor for DropInSessionFailureEvent();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF238A8, &qword_249E7E400);
  v5 = sub_249E7AAC8();
  v7 = v6;
  OUTLINED_FUNCTION_22();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();

  swift_isUniquelyReferenced_nonNull_native();
  sub_249DFDCD0(&unk_249E7E410, v8, v5, v7);

  return v0;
}

uint64_t sub_249E0DCCC()
{
  v1 = [objc_opt_self() defaultCenter];
  if (qword_28130D208 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_22();
  swift_allocObject();
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_117();
  v26 = v2;
  v27 = &block_descriptor_193;
  v3 = _Block_copy(v25);

  v4 = OUTLINED_FUNCTION_61();
  v6 = [v4 v5];
  _Block_release(v3);
  swift_unknownObjectRelease();
  if (qword_28130D200 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_22();
  swift_allocObject();
  OUTLINED_FUNCTION_174();
  v28 = sub_249E2A844;
  v29 = v3;
  v25[0] = MEMORY[0x277D85DD0];
  OUTLINED_FUNCTION_123();
  v26 = v7;
  v27 = &block_descriptor_197;
  v8 = _Block_copy(v25);

  v9 = OUTLINED_FUNCTION_61();
  v11 = [v9 v10];
  _Block_release(v8);
  swift_unknownObjectRelease();
  if (qword_28130D1F8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_22();
  swift_allocObject();
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_117();
  v26 = v12;
  v27 = &block_descriptor_201;
  v13 = _Block_copy(v25);

  v14 = OUTLINED_FUNCTION_61();
  v16 = [v14 v15];
  _Block_release(v13);
  swift_unknownObjectRelease();
  v17 = sub_249E15680();
  v18 = *(v0 + OBJC_IVAR____TtC10DropInCore13DropInManager_dropInStateSubscriber);
  *(v0 + OBJC_IVAR____TtC10DropInCore13DropInManager_dropInStateSubscriber) = v17;

  if (qword_28130D218 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_22();
  swift_allocObject();
  OUTLINED_FUNCTION_174();
  v28 = sub_249E2A8C4;
  v29 = v13;
  v25[0] = MEMORY[0x277D85DD0];
  OUTLINED_FUNCTION_123();
  v26 = v19;
  v27 = &block_descriptor_205;
  v20 = _Block_copy(v25);

  v21 = OUTLINED_FUNCTION_61();
  v23 = [v21 v22];
  _Block_release(v20);

  return swift_unknownObjectRelease();
}

uint64_t sub_249E0E040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return OUTLINED_FUNCTION_8_0();
}

uint64_t sub_249E0E054()
{
  OUTLINED_FUNCTION_11();
  v3 = v0[2];
  if (v3 >> 62)
  {
    v4 = OUTLINED_FUNCTION_256();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v0[4] = v4;
  if (v4)
  {
    if (v4 < 1)
    {
      __break(1u);
    }

    else
    {
      v5 = v0[2];
      v0[5] = *(v0[3] + OBJC_IVAR____TtC10DropInCore13DropInManager_deviceManager);
      v0[6] = 0;
      if ((v5 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x24C204D50](0);
        v7 = v0[5];
      }

      else
      {
        v6 = *(v5 + 32);
      }

      v0[7] = v6;
      v4 = OUTLINED_FUNCTION_69();
    }

    return MEMORY[0x2822009F8](v4, v1, v2);
  }

  else
  {
    OUTLINED_FUNCTION_9_0();

    return v8();
  }
}

uint64_t sub_249E0E13C()
{
  OUTLINED_FUNCTION_11();
  v1 = *(v0 + 40);
  sub_249E4F8BC(*(v0 + 56));
  v2 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_249E0E19C()
{
  OUTLINED_FUNCTION_11();
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);

  OUTLINED_FUNCTION_275();
  if (v3)
  {
    OUTLINED_FUNCTION_9_0();

    return v4();
  }

  else
  {
    v6 = *(v0 + 48) + 1;
    *(v0 + 48) = v6;
    v7 = *(v0 + 16);
    if ((v7 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x24C204D50]();
    }

    else
    {
      v8 = OUTLINED_FUNCTION_328(v6, v7);
    }

    *(v0 + 56) = v8;
    v9 = *(v0 + 40);
    v10 = OUTLINED_FUNCTION_254();

    return MEMORY[0x2822009F8](v10, v11, v12);
  }
}

id sub_249E0E25C()
{
  ObjectType = swift_getObjectType();
  if (*&v0[OBJC_IVAR____TtC10DropInCore13DropInManager_dropInStateSubscriber])
  {

    sub_249E7A8B8();
  }

  sub_249E0E2D8();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_249E0E2D8()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = v1;
  if (qword_28130D208 != -1)
  {
    swift_once();
    v1 = v2;
  }

  [v1 removeObserver:v0 name:qword_28130E6E8 object:0];
  if (qword_28130D200 != -1)
  {
    swift_once();
  }

  [v2 removeObserver:v0 name:qword_28130E6E0 object:0];
  if (qword_28130D1F8 != -1)
  {
    swift_once();
  }

  [v2 removeObserver:v0 name:qword_28130E6D8 object:0];
}

uint64_t type metadata accessor for DropInManager()
{
  result = qword_28130E198;
  if (!qword_28130E198)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_249E0E5CC(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = type metadata accessor for DropInSessionFailureEvent();
  v3[11] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v6 = sub_249E7A628();
  v3[13] = v6;
  v7 = *(v6 - 8);
  v3[14] = v7;
  v8 = *(v7 + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234B0, &qword_249E7D910) - 8) + 64) + 15;
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249E0E728, 0, 0);
}

uint64_t sub_249E0E728()
{
  v1 = *(*(v0 + 80) + OBJC_IVAR____TtC10DropInCore13DropInManager_sessionManager);
  *(v0 + 168) = v1;
  return OUTLINED_FUNCTION_11_1(sub_249E0E750, v1);
}

uint64_t sub_249E0E750()
{
  OUTLINED_FUNCTION_11();
  v1 = *(*(v0 + 168) + qword_28130E738);
  *(v0 + 176) = v1;
  v2 = v1;
  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_249E0E7C8()
{
  OUTLINED_FUNCTION_318();
  OUTLINED_FUNCTION_82();
  if (*(v0 + 176))
  {
    v1 = *(v0 + 64);
    sub_249DF691C(0, &qword_28130D150, 0x277D82BB8);
    OUTLINED_FUNCTION_81();
    if (sub_249E7AF78())
    {
      v2 = *(v0 + 168);
      OUTLINED_FUNCTION_254();
      OUTLINED_FUNCTION_271();

      return MEMORY[0x2822009F8](v3, v4, v5);
    }

    v16 = *(v0 + 80);
    v17 = *(v0 + 64);
    v18 = *(v0 + 176);
    v19 = v17;
    v20 = sub_249E7A698();
    v21 = sub_249E7AE08();

    v22 = os_log_type_enabled(v20, v21);
    v8 = *(v0 + 176);
    if (v22)
    {
      v23 = *(v0 + 64);
      v24 = OUTLINED_FUNCTION_188();
      v25 = OUTLINED_FUNCTION_234();
      *v24 = 138412546;
      *(v24 + 4) = v23;
      *(v24 + 12) = 2112;
      *(v24 + 14) = v8;
      *v25 = v23;
      v25[1] = v8;
      v8 = v8;
      v26 = v23;
      OUTLINED_FUNCTION_200(&dword_249DEE000, v27, v28, "Ignoring request to cancel session %@. Active session is %@");
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23C30, &qword_249E7DA20);
      OUTLINED_FUNCTION_338();
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
    }
  }

  else
  {
    v7 = *(v0 + 80) + OBJC_IVAR____TtC10DropInCore13DropInManager_logger;
    v8 = sub_249E7A698();
    v9 = sub_249E7AE28();
    if (OUTLINED_FUNCTION_120(v9))
    {
      v10 = OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_6_0(v10);
      OUTLINED_FUNCTION_35();
      _os_log_impl(v11, v12, v13, v14, v15, 2u);
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
    }
  }

  OUTLINED_FUNCTION_193();

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_271();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36);
}

uint64_t sub_249E0EA00()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  v3 = qword_28130E758;
  OUTLINED_FUNCTION_76();
  sub_249E2A75C(v2 + v3, v1, &qword_27EF234B0, &qword_249E7D910);
  v4 = OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_249E0EA90()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 168);
  v2 = *(v0 + 152);
  v3 = qword_28130E740;
  swift_beginAccess();
  sub_249E2A75C(v1 + v3, v2, &qword_27EF234B0, &qword_249E7D910);
  v4 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_249E0EB30()
{
  OUTLINED_FUNCTION_255();
  OUTLINED_FUNCTION_82();
  v1 = v0[22];
  v2 = v0[10];
  v0[23] = OBJC_IVAR____TtC10DropInCore13DropInManager_logger;
  v3 = v1;
  v4 = sub_249E7A698();
  sub_249E7AE28();

  v5 = OUTLINED_FUNCTION_110();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[22];
    OUTLINED_FUNCTION_70();
    v8 = swift_slowAlloc();
    v9 = OUTLINED_FUNCTION_6();
    *v8 = 138412290;
    *(v8 + 4) = v7;
    *v9 = v7;
    v10 = v7;
    OUTLINED_FUNCTION_35();
    _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
    sub_249E2A8CC(v9, &unk_27EF23C30, &qword_249E7DA20);
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  v16 = v0[21];

  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_253();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_249E0EC50()
{
  OUTLINED_FUNCTION_11();
  v1 = *(v0 + 168);
  sub_249E2530C();
  v2 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

void sub_249E0ECAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_50();
  v13 = *(*(v12 + 80) + OBJC_IVAR____TtC10DropInCore13DropInManager_callCenterManager);
  if (!v13)
  {
    __break(1u);
    goto LABEL_24;
  }

  v14 = *(v12 + 184);
  v15 = v13;
  sub_249E067EC();

  v16 = sub_249E7A698();
  v17 = sub_249E7AE28();
  if (OUTLINED_FUNCTION_120(v17))
  {
    v18 = OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_6_0(v18);
    OUTLINED_FUNCTION_35();
    _os_log_impl(v19, v20, v21, v22, v23, 2u);
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  v24 = *(v12 + 160);
  v25 = *(v12 + 144);
  v26 = *(v12 + 104);

  v27 = OUTLINED_FUNCTION_126();
  sub_249E2A75C(v27, v28, v29, v30);
  OUTLINED_FUNCTION_226(v25, 1, v26);
  if (v31)
  {
    v32 = *(v12 + 152);
    v33 = *(v12 + 160);
    v34 = *(v12 + 144);

    v35 = v32;
LABEL_11:
    sub_249E2A8CC(v35, &qword_27EF234B0, &qword_249E7D910);
    goto LABEL_20;
  }

  v36 = *(v12 + 80);
  v37 = *(*(v12 + 112) + 32);
  v37(*(v12 + 128), *(v12 + 144), *(v12 + 104));
  v38 = *(v36 + OBJC_IVAR____TtC10DropInCore13DropInManager_homeManagerProvider);
  swift_getObjectType();
  v39 = OUTLINED_FUNCTION_126();
  v40 = sub_249DF530C(v39);
  *(v12 + 192) = v40;
  if (!v40)
  {
    v54 = *(v12 + 152);
    v53 = *(v12 + 160);
    v55 = *(v12 + 128);
    v56 = *(v12 + 104);
    v57 = *(v12 + 112);

    v58 = *(v57 + 8);
    v59 = OUTLINED_FUNCTION_148();
    v60(v59);
    goto LABEL_20;
  }

  v41 = v40;
  v42 = *(v12 + 136);
  v43 = *(v12 + 104);
  sub_249E2A75C(*(v12 + 152), v42, &qword_27EF234B0, &qword_249E7D910);
  OUTLINED_FUNCTION_226(v42, 1, v43);
  if (v31)
  {
    v45 = *(v12 + 152);
    v44 = *(v12 + 160);
    v47 = *(v12 + 128);
    v46 = *(v12 + 136);
    v48 = *(v12 + 104);
    v49 = *(v12 + 112);

    v50 = *(v49 + 8);
    v51 = OUTLINED_FUNCTION_109();
    v52(v51);
    v35 = v45;
    goto LABEL_11;
  }

  v61 = *(v12 + 128);
  v37(*(v12 + 120), *(v12 + 136), *(v12 + 104));
  v62 = OUTLINED_FUNCTION_308();
  v63 = sub_249DF530C(v62);
  if (v63)
  {
    v64 = v63;
    v65 = *(v12 + 120);
    v66 = sub_249E7A5E8();
    v67 = [v64 accessoryWithUniqueIdentifier_];
    *(v12 + 200) = v67;

    if (v67)
    {
      v68 = *(v12 + 176);
      v69 = *(v12 + 128);
      v70 = *(v12 + 104);
      v71 = *(v12 + 112);
      v73 = *(v12 + 88);
      v72 = *(v12 + 96);
      v74 = *(v12 + 72);
      v109 = *(v12 + 80);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236F0, &qword_249E7E030);
      v75 = swift_allocObject();
      *(v12 + 208) = v75;
      *(v75 + 16) = xmmword_249E7D7D0;
      *(v75 + 56) = sub_249DF691C(0, &qword_28130D270, 0x277CD1650);
      *(v75 + 64) = &off_285D07E60;
      *(v75 + 72) = &off_285D07E80;
      *(v75 + 32) = v67;
      (*(v71 + 16))(v72, v69, v70);
      v76 = v67;
      v77 = [v68 identifier];
      v78 = v72 + *(v73 + 20);
      sub_249E7A608();

      *(v72 + *(v73 + 24)) = sub_249E7A4C8();
      v79 = *(v109 + OBJC_IVAR____TtC10DropInCore13DropInManager_messageCenter);
      *(v12 + 216) = v79;
      if (v79)
      {

        v80 = swift_task_alloc();
        *(v12 + 224) = v80;
        *v80 = v12;
        v80[1] = sub_249E0F164;
        OUTLINED_FUNCTION_97(*(v12 + 96));
        OUTLINED_FUNCTION_137();
        OUTLINED_FUNCTION_34();

        v84(v81, v82, v83, v84, v85, v86, v87, v88, sub_249E28180, a10, a11, a12);
        return;
      }

LABEL_24:
      __break(1u);
      return;
    }
  }

  v90 = *(v12 + 152);
  v89 = *(v12 + 160);
  v92 = *(v12 + 120);
  v91 = *(v12 + 128);
  v93 = *(v12 + 104);
  v94 = *(v12 + 112);

  v95 = *(v94 + 8);
  v96 = OUTLINED_FUNCTION_109();
  v95(v96);
  (v95)(v91, v93);
LABEL_20:
  v97 = OUTLINED_FUNCTION_241();
  sub_249E2A8CC(v97, v98, &qword_249E7D910);
  v99 = OUTLINED_FUNCTION_81();
  sub_249E2A8CC(v99, v100, &qword_249E7D910);
  OUTLINED_FUNCTION_193();

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_34();

  v102(v101, v102, v103, v104, v105, v106, v107, v108, a9, a10, a11, a12);
}

uint64_t sub_249E0F164()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  v2 = v1[28];
  v3 = v1[27];
  v4 = v1[26];
  v5 = *v0;
  OUTLINED_FUNCTION_2_3();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_249E0F280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_50();
  v13 = *(v12 + 192);
  v14 = *(v12 + 176);
  v15 = *(v12 + 152);
  v16 = *(v12 + 160);
  v18 = *(v12 + 120);
  v17 = *(v12 + 128);
  v19 = *(v12 + 104);
  v20 = *(v12 + 112);
  v21 = *(v12 + 96);

  OUTLINED_FUNCTION_50_0();
  sub_249E2AA5C();
  v22 = *(v20 + 8);
  v23 = OUTLINED_FUNCTION_249();
  v22(v23);
  (v22)(v17, v19);
  OUTLINED_FUNCTION_79();
  sub_249E2A8CC(v24, v25, v26);
  OUTLINED_FUNCTION_79();
  sub_249E2A8CC(v27, v28, v29);
  OUTLINED_FUNCTION_193();

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_34();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12);
}

uint64_t sub_249E0F38C(uint64_t a1, uint64_t a2)
{
  v3[48] = a2;
  v3[49] = v2;
  v3[47] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF236D0, &qword_249E7E010) - 8) + 64) + 15;
  v3[50] = swift_task_alloc();
  started = type metadata accessor for StartDropInResponse();
  v3[51] = started;
  v6 = *(*(started - 8) + 64) + 15;
  v3[52] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23818, &unk_249E7E2A0) - 8) + 64) + 15;
  v3[53] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23820, &unk_249E7E860);
  v3[54] = v8;
  v9 = *(v8 - 8);
  v3[55] = v9;
  v10 = *(v9 + 64) + 15;
  v3[56] = swift_task_alloc();
  v11 = sub_249E7A658();
  v3[57] = v11;
  v12 = *(v11 - 8);
  v3[58] = v12;
  v13 = *(v12 + 64) + 15;
  v3[59] = swift_task_alloc();
  v14 = type metadata accessor for StartDropInRequest();
  v3[60] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v3[61] = swift_task_alloc();
  v3[62] = swift_task_alloc();
  v16 = sub_249E7A628();
  v3[63] = v16;
  v17 = *(v16 - 8);
  v3[64] = v17;
  v18 = *(v17 + 64) + 15;
  v3[65] = swift_task_alloc();
  v3[66] = swift_task_alloc();
  v3[67] = swift_task_alloc();
  v3[68] = swift_task_alloc();
  v3[69] = swift_task_alloc();
  v3[70] = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234B0, &qword_249E7D910) - 8) + 64) + 15;
  v3[71] = swift_task_alloc();
  v3[72] = swift_task_alloc();
  v3[73] = swift_task_alloc();
  v3[74] = swift_task_alloc();
  v3[75] = swift_task_alloc();
  v3[76] = swift_task_alloc();
  v3[77] = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF236C0, &unk_249E7F8F0) - 8) + 64) + 15;
  v3[78] = swift_task_alloc();
  v21 = type metadata accessor for DropInSessionAnalyticEvent();
  v3[79] = v21;
  v22 = *(*(v21 - 8) + 64) + 15;
  v3[80] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249E0F714, 0, 0);
}

uint64_t sub_249E0F714()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_17();
  v2 = v0[48];
  v1 = v0[49];
  v3 = v0[47];
  v0[81] = OBJC_IVAR____TtC10DropInCore13DropInManager_logger;
  v4 = v3;
  v5 = v2;
  v6 = sub_249E7A698();
  sub_249E7AE28();

  if (OUTLINED_FUNCTION_272())
  {
    v8 = v0[47];
    v7 = v0[48];
    v9 = OUTLINED_FUNCTION_188();
    v10 = OUTLINED_FUNCTION_234();
    OUTLINED_FUNCTION_233(v10, 5.778e-34);
    v11 = v7;
    OUTLINED_FUNCTION_202();
    _os_log_impl(v12, v13, v14, v15, v9, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23C30, &qword_249E7DA20);
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  v16 = v0[80];
  v17 = v0[79];
  v18 = v0[78];
  v19 = v0[49];

  *v16 = 0;
  v16[1] = 0;
  v20 = v17[5];
  v21 = sub_249E7A5B8();
  OUTLINED_FUNCTION_28();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v21);
  v25 = v17[6];
  OUTLINED_FUNCTION_28();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v21);
  v29 = v17[7];
  OUTLINED_FUNCTION_28();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v21);
  v33 = v17[8];
  OUTLINED_FUNCTION_28();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v21);
  v37 = v16 + v17[9];
  *v37 = 0;
  v37[8] = 1;
  v38 = (v16 + v17[10]);
  *v38 = 0;
  v38[1] = 0;
  v39 = OBJC_IVAR____TtC10DropInCore13DropInManager_dropInSessionAnalyticEvent;
  v0[82] = OBJC_IVAR____TtC10DropInCore13DropInManager_dropInSessionAnalyticEvent;
  v40 = v19 + v39;
  OUTLINED_FUNCTION_252();
  v41 = OUTLINED_FUNCTION_145();
  sub_249E2A1E4(v41, v42);
  swift_endAccess();
  sub_249E7A598();
  OUTLINED_FUNCTION_94();
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v21);
  OUTLINED_FUNCTION_252();
  sub_249E28EE8(v18, v40 + v17[5], &qword_27EF236C0, &unk_249E7F8F0);
  result = swift_endAccess();
  v47 = OBJC_IVAR____TtC10DropInCore13DropInManager_callCenterManager;
  v0[83] = OBJC_IVAR____TtC10DropInCore13DropInManager_callCenterManager;
  v48 = *(v19 + v47);
  v0[84] = v48;
  if (v48)
  {
    v49 = v48;
    OUTLINED_FUNCTION_280();
    v50 = swift_task_alloc();
    v0[85] = v50;
    *v50 = v0;
    OUTLINED_FUNCTION_205(v50);
    OUTLINED_FUNCTION_31();

    return sub_249E6E584();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_249E0F990()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_38_0();
  *v2 = v1;
  v4 = *(v3 + 680);
  v5 = *(v3 + 672);
  v6 = *v0;
  OUTLINED_FUNCTION_2_3();
  *v7 = v6;
  *(v9 + 225) = v8;

  v10 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_249E0FA8C()
{
  v249 = v0;
  v1 = v0;
  if (*(v0 + 225))
  {
    v2 = *(v0 + 392) + *(v0 + 648);
    v3 = sub_249E7A698();
    v4 = sub_249E7AE08();
    if (OUTLINED_FUNCTION_120(v4))
    {
      *OUTLINED_FUNCTION_9() = 0;
      OUTLINED_FUNCTION_229();
      _os_log_impl(v5, v6, v7, v8, v9, 2u);
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
    }

    OUTLINED_FUNCTION_99();
    sub_249E7ADC8();
    swift_willThrow();
    goto LABEL_61;
  }

  v10 = *(v0 + 616);
  v11 = *(v0 + 608);
  v12 = *(v0 + 504);
  v13 = *(v0 + 376);
  sub_249E7A6C8();
  v14 = OUTLINED_FUNCTION_126();
  sub_249E2A75C(v14, v15, &qword_27EF234B0, &qword_249E7D910);
  LODWORD(v10) = __swift_getEnumTagSinglePayload(v11, 1, v12);
  v16 = OUTLINED_FUNCTION_242();
  sub_249E2A8CC(v16, v17, &qword_249E7D910);
  if (v10 == 1)
  {
    v18 = *(*(v0 + 392) + OBJC_IVAR____TtC10DropInCore13DropInManager_homeManagerProvider);
    v19 = [v18 currentAccessory];
    if (v19)
    {

      v20 = [v18 currentAccessory];
      if (v20 && (v21 = v20, v22 = [v20 home], v21, v22))
      {
        v23 = *(v0 + 600);
        v24 = [v22 uniqueIdentifier];

        sub_249E7A608();
        v25 = 0;
      }

      else
      {
        v25 = 1;
      }

      v26 = *(v0 + 616);
      v27 = *(v0 + 600);
      v28 = *(v0 + 504);
      OUTLINED_FUNCTION_212();
      sub_249E2A8CC(v29, v30, v31);
      __swift_storeEnumTagSinglePayload(v27, v25, 1, v28);
      v32 = OUTLINED_FUNCTION_241();
      sub_249E2A7A4(v32, v33, &qword_27EF234B0, &qword_249E7D910);
    }
  }

  v34 = *(v0 + 504);
  sub_249E2A75C(*(v0 + 616), *(v0 + 592), &qword_27EF234B0, &qword_249E7D910);
  v35 = OUTLINED_FUNCTION_214();
  OUTLINED_FUNCTION_226(v35, v36, v34);
  if (!v37)
  {
    v42 = *(v0 + 384);
    v43 = *(*(v0 + 512) + 32);
    v43(*(v0 + 560), *(v0 + 592), *(v0 + 504));
    v44 = [v42 handle];
    *(v0 + 688) = v44;
    v45 = [v44 type];
    v46 = *(v0 + 648);
    v47 = *(v0 + 392);
    v243 = v0;
    if (v45)
    {
      v48 = v44;
      v49 = sub_249E7A698();
      sub_249E7AE08();

      v50 = OUTLINED_FUNCTION_272();
      v51 = *(v0 + 616);
      v52 = v1[70];
      v54 = v1[63];
      v53 = v1[64];
      if (v50)
      {
        OUTLINED_FUNCTION_70();
        v55 = swift_slowAlloc();
        OUTLINED_FUNCTION_74();
        v245 = v51;
        v56 = swift_slowAlloc();
        v248[0] = v56;
        *v55 = 136315138;
        [v48 type];
        v57 = sub_249E7ADA8();
        v59 = sub_249E3A958(v57, v58, v248);

        *(v55 + 4) = v59;
        v1 = v243;
        OUTLINED_FUNCTION_202();
        OUTLINED_FUNCTION_273(v60, v61, v62, v63);
        __swift_destroy_boxed_opaque_existential_0(v56);
        OUTLINED_FUNCTION_65();
        MEMORY[0x24C205870]();
        OUTLINED_FUNCTION_65();
        MEMORY[0x24C205870]();

        sub_249E28F30();
        v64 = OUTLINED_FUNCTION_40();
        OUTLINED_FUNCTION_170(v64, v65, 4);

        v66 = *(v53 + 8);
        v67 = OUTLINED_FUNCTION_109();
        v68(v67);
        v41 = v245;
      }

      else
      {

        sub_249E28F30();
        v116 = OUTLINED_FUNCTION_40();
        OUTLINED_FUNCTION_170(v116, v117, 4);

        v118 = *(v53 + 8);
        v119 = OUTLINED_FUNCTION_109();
        v120(v119);
        v41 = v51;
      }

      goto LABEL_60;
    }

    v225 = v44;
    v69 = [v44 value];
    v224 = sub_249E7AAA8();
    v71 = v70;

    v227 = v71;
    *(v0 + 696) = v71;
    v72 = v47;
    v73 = sub_249E7A698();
    sub_249E7AE28();

    v74 = OUTLINED_FUNCTION_110();
    v234 = v43;
    if (os_log_type_enabled(v74, v75))
    {
      v76 = *(v0 + 392);
      OUTLINED_FUNCTION_70();
      v77 = swift_slowAlloc();
      OUTLINED_FUNCTION_74();
      v248[0] = swift_slowAlloc();
      *v77 = 136315138;
      v78 = [*(v76 + OBJC_IVAR____TtC10DropInCore13DropInManager_homeManagerProvider) allHomes];
      sub_249DF691C(0, &unk_28130D1A0, 0x277CD1A60);
      OUTLINED_FUNCTION_109();
      sub_249E7ABE8();

      v79 = OUTLINED_FUNCTION_167();
      MEMORY[0x24C204800](v79);

      v80 = OUTLINED_FUNCTION_109();
      v83 = sub_249E3A958(v80, v81, v82);

      *(v77 + 4) = v83;
      OUTLINED_FUNCTION_35();
      _os_log_impl(v84, v85, v86, v87, v88, 0xCu);
      OUTLINED_FUNCTION_64();
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
    }

    v89 = *(*(v0 + 392) + OBJC_IVAR____TtC10DropInCore13DropInManager_homeManagerProvider);
    swift_getObjectType();
    v90 = [v89 allHomes];
    sub_249DF691C(0, &unk_28130D1A0, 0x277CD1A60);
    OUTLINED_FUNCTION_286();
    v91 = sub_249E7ABE8();

    v236 = sub_249E51FB4(v91);
    v238 = v91;
    v92 = 0;
    v230 = v91 + 32;
    v232 = v91 & 0xC000000000000001;
LABEL_21:
    if (v92 == v236)
    {
      v121 = v1[70];

      v122 = sub_249DF530C(v121);
      v1[88] = v122;
      if (!v122)
      {
LABEL_45:
        v141 = v1[81];
        v142 = v1[70];
        v143 = v1[65];
        v144 = v1[63];
        v145 = v1[64];
        v146 = v1[49];

        v147 = *(v145 + 16);
        OUTLINED_FUNCTION_137();
        v148();
        v149 = sub_249E7A698();
        v150 = sub_249E7AE08();
        v151 = OUTLINED_FUNCTION_127(v150);
        v152 = v1[65];
        v153 = v1;
        v154 = v1[64];
        v155 = v153[63];
        if (v151)
        {
          OUTLINED_FUNCTION_70();
          v156 = swift_slowAlloc();
          OUTLINED_FUNCTION_74();
          v248[0] = swift_slowAlloc();
          *v156 = 136315138;
          OUTLINED_FUNCTION_22_0();
          sub_249E28F84(v157, v158);
          v159 = sub_249E7B2D8();
          v161 = v160;
          v162 = *(v154 + 8);
          v163 = OUTLINED_FUNCTION_182();
          v162(v163);
          sub_249E3A958(v159, v161, v248);
          OUTLINED_FUNCTION_102();

          *(v156 + 4) = v152;
          OUTLINED_FUNCTION_52(&dword_249DEE000, v164, v165, "Home Not Found for identifier %s");
          OUTLINED_FUNCTION_53_0();
          OUTLINED_FUNCTION_65();
          MEMORY[0x24C205870]();
        }

        else
        {

          v162 = *(v154 + 8);
          v171 = OUTLINED_FUNCTION_182();
          v162(v171);
        }

        v1 = v243;
        v172 = v243[77];
        v173 = v243[70];
        v174 = v243[63];
        sub_249E28F30();
        v175 = OUTLINED_FUNCTION_40();
        OUTLINED_FUNCTION_170(v175, v176, 1);

        (v162)(v173, v174);
LABEL_59:
        v41 = v172;
        goto LABEL_60;
      }

      v123 = v122;
      v124 = v1[73];
      v125 = v1[63];
      sub_249E7A5C8();
      v126 = OUTLINED_FUNCTION_214();
      OUTLINED_FUNCTION_226(v126, v127, v125);
      if (v37)
      {
        v128 = v1[81];
        v129 = v1[49];
        sub_249E2A8CC(v1[73], &qword_27EF234B0, &qword_249E7D910);

        v130 = sub_249E7A698();
        sub_249E7AE08();
        OUTLINED_FUNCTION_247();

        v131 = OUTLINED_FUNCTION_110();
        if (os_log_type_enabled(v131, v132))
        {
          OUTLINED_FUNCTION_70();
          v133 = swift_slowAlloc();
          OUTLINED_FUNCTION_74();
          v134 = swift_slowAlloc();
          v248[0] = v134;
          *v133 = 136315138;
          v135 = sub_249E3A958(v224, v227, v248);

          *(v133 + 4) = v135;
          OUTLINED_FUNCTION_229();
          _os_log_impl(v136, v137, v138, v139, v140, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v134);
          OUTLINED_FUNCTION_65();
          MEMORY[0x24C205870]();
          OUTLINED_FUNCTION_65();
          MEMORY[0x24C205870]();
        }

        else
        {
        }

        v172 = v1[77];
        v177 = v1[70];
        v178 = v1[63];
        v179 = v1[64];
        sub_249E28F30();
        OUTLINED_FUNCTION_40();
        *v180 = 0;
        swift_willThrow();

        (*(v179 + 8))(v177, v178);
        goto LABEL_59;
      }

      v43(v1[69], v1[73], v1[63]);
      v166 = OUTLINED_FUNCTION_81();
      v167 = sub_249DF53DC(v166);
      v1[89] = v167;
      if (!v167)
      {
        v181 = v1[81];
        v182 = v1[69];
        v183 = v1[66];
        v184 = v1[63];
        v185 = v1[64];
        v186 = v1[49];

        v187 = *(v185 + 16);
        OUTLINED_FUNCTION_137();
        v188();
        v189 = sub_249E7A698();
        v190 = sub_249E7AE08();
        v191 = os_log_type_enabled(v189, v190);
        v192 = v1[66];
        v193 = v1[63];
        v194 = v1[64];
        if (v191)
        {
          OUTLINED_FUNCTION_70();
          v195 = swift_slowAlloc();
          OUTLINED_FUNCTION_74();
          v248[0] = swift_slowAlloc();
          *v195 = 136315138;
          OUTLINED_FUNCTION_22_0();
          sub_249E28F84(v196, v197);
          v246 = v190;
          v198 = sub_249E7B2D8();
          v200 = v199;
          v201 = *(v194 + 8);
          v202 = OUTLINED_FUNCTION_153();
          v201(v202);
          v203 = sub_249E3A958(v198, v200, v248);

          *(v195 + 4) = v203;
          _os_log_impl(&dword_249DEE000, v189, v246, "Accessory with identifier: %s not found", v195, 0xCu);
          OUTLINED_FUNCTION_53_0();
          OUTLINED_FUNCTION_65();
          MEMORY[0x24C205870]();
        }

        else
        {

          v201 = *(v194 + 8);
          v204 = OUTLINED_FUNCTION_153();
          v201(v204);
        }

        v172 = v243[77];
        v205 = v243[70];
        v206 = v243[69];
        v207 = v243[63];
        sub_249E28F30();
        v208 = OUTLINED_FUNCTION_40();
        OUTLINED_FUNCTION_170(v208, v209, 5);

        v210 = OUTLINED_FUNCTION_148();
        v201(v210);
        (v201)(v205, v207);
        v1 = v243;
        goto LABEL_59;
      }

      v168 = v1[68];
      v169 = *(v1[49] + OBJC_IVAR____TtC10DropInCore13DropInManager_deviceManager);
      v1[90] = v169;
      v170 = [v167 uniqueIdentifier];
      sub_249E7A608();

      v93 = sub_249E109BC;
      v94 = v169;
      v95 = 0;
    }

    else
    {
      sub_249E51FD8(v92, v232 == 0, v238);
      if (v232)
      {
        v93 = MEMORY[0x24C204D50](v92, v238);
      }

      else
      {
        v93 = *(v230 + 8 * v92);
      }

      v96 = v93;
      v97 = __OFADD__(v92, 1);
      v98 = v92 + 1;
      if (!v97)
      {
        v240 = v98;
        v99 = [v93 accessories];
        v100 = OUTLINED_FUNCTION_9_1();
        sub_249DF691C(v100, &qword_28130D270, 0x277CD1650);
        OUTLINED_FUNCTION_286();
        v101 = sub_249E7ABE8();

        v102 = sub_249E51FB4(v101);
        for (i = 0; ; ++i)
        {
          if (v102 == i)
          {

            v43 = v234;
            v92 = v240;
            goto LABEL_21;
          }

          if ((v101 & 0xC000000000000001) != 0)
          {
            v104 = MEMORY[0x24C204D50](i, v101);
          }

          else
          {
            if (i >= *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_44;
            }

            v104 = *(v101 + 8 * i + 32);
          }

          v105 = v104;
          if (__OFADD__(i, 1))
          {
            break;
          }

          v106 = v1[81];
          v107 = v1[49];
          v108 = v96;
          v109 = v105;
          v110 = sub_249E7A698();
          v111 = sub_249E7AE28();

          if (OUTLINED_FUNCTION_274())
          {
            v112 = OUTLINED_FUNCTION_188();
            v113 = OUTLINED_FUNCTION_234();
            *v112 = 138412546;
            *(v112 + 4) = v108;
            *(v112 + 12) = 2112;
            *(v112 + 14) = v109;
            *v113 = v96;
            v113[1] = v109;
            v114 = v108;
            v115 = v109;
            _os_log_impl(&dword_249DEE000, v110, v111, "Home = %@, Accessory = %@", v112, 0x16u);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23C30, &qword_249E7DA20);
            OUTLINED_FUNCTION_338();
            OUTLINED_FUNCTION_65();
            MEMORY[0x24C205870]();
            v1 = v243;
            OUTLINED_FUNCTION_65();
            MEMORY[0x24C205870]();
          }
        }

        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      __break(1u);
    }

    return MEMORY[0x2822009F8](v93, v94, v95);
  }

  v38 = *(v0 + 616);
  sub_249E2A8CC(*(v0 + 592), &qword_27EF234B0, &qword_249E7D910);
  sub_249E28F30();
  v39 = OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_170(v39, v40, 7);
  v41 = v38;
LABEL_60:
  sub_249E2A8CC(v41, &qword_27EF234B0, &qword_249E7D910);
LABEL_61:
  v211 = v1[80];
  v212 = v1[78];
  v213 = v1[77];
  v214 = v1[76];
  v215 = v1[75];
  v216 = v1[74];
  v217 = v1[73];
  v218 = v1[72];
  v219 = v1;
  v220 = v1[71];
  v221 = v219[70];
  v226 = v219[69];
  v228 = v219[68];
  v229 = v219[67];
  v231 = v219[66];
  v233 = v219[65];
  v235 = v219[62];
  v237 = v219[61];
  v239 = v219[59];
  v241 = v219[56];
  v242 = v219[53];
  v244 = v219[52];
  v247 = v219[50];

  OUTLINED_FUNCTION_9_0();

  return v222();
}

uint64_t sub_249E109BC()
{
  OUTLINED_FUNCTION_23();
  v1 = v0[90];
  v2 = v0[68];
  v3 = v0[63];
  v4 = v0[64];
  v0[91] = sub_249E4F34C();
  v0[92] = *(v4 + 8);
  v0[93] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5 = OUTLINED_FUNCTION_126();
  v6(v5);
  v7 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_249E10A54()
{
  v92 = v0;
  v1 = v0[91];
  if (!v1)
  {
    v43 = v0[93];
    v44 = v0[92];
    v45 = v0[89];
    v46 = v0[88];
    v47 = v0[87];
    v48 = v0[86];
    v89 = v0[77];
    v49 = v0[70];
    v50 = v0[69];
    v51 = v0[63];

    sub_249E28F30();
    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_190(v52, 18);

    v53 = OUTLINED_FUNCTION_249();
    v44(v53);
    (v44)(v49, v51);
    sub_249E2A8CC(v89, &qword_27EF234B0, &qword_249E7D910);
    OUTLINED_FUNCTION_17_0();
    v54 = v0[71];
    v55 = v0[70];
    OUTLINED_FUNCTION_45_0();

    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_237();

    __asm { BRAA            X1, X16 }
  }

  v2 = v0[81];
  v3 = v0[49];
  v4 = v1;
  v5 = sub_249E7A698();
  sub_249E7AE28();

  if (OUTLINED_FUNCTION_272())
  {
    v6 = v0[91];
    OUTLINED_FUNCTION_70();
    v7 = swift_slowAlloc();
    v8 = OUTLINED_FUNCTION_6();
    *v7 = 138412290;
    *(v7 + 4) = v4;
    *v8 = v6;
    v9 = v4;
    OUTLINED_FUNCTION_202();
    _os_log_impl(v10, v11, v12, v13, v7, 0xCu);
    sub_249E2A8CC(v8, &unk_27EF23C30, &qword_249E7DA20);
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  v14 = v0[88];
  v15 = v0[82];
  v17 = v0[61];
  v16 = v0[62];
  v18 = v0[59];
  v19 = v0[60];
  v20 = v0[49];

  v21 = v20 + v15;
  v22 = [v14 uniqueIdentifier];
  sub_249E7A608();

  *(v16 + *(v19 + 20)) = 0;
  v23 = *(v21 + 8);
  *v21 = xmmword_249E7DF20;

  v24 = OUTLINED_FUNCTION_115();
  sub_249E2AAB0(v24, v17);
  sub_249E7A648();
  v25 = sub_249E7A678();
  v26 = sub_249E7AF08();
  v27 = sub_249E7AFB8();
  v28 = v0[61];
  v30 = v0[58];
  v29 = v0[59];
  v31 = v0[57];
  if (v27)
  {
    OUTLINED_FUNCTION_70();
    v90 = v26;
    v32 = swift_slowAlloc();
    OUTLINED_FUNCTION_74();
    v88 = v29;
    v33 = swift_slowAlloc();
    v91 = v33;
    *v32 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23710, &unk_249E7DC70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_249E7DBA0;
    *(inited + 32) = 0x6469656D6F68;
    *(inited + 40) = 0xE600000000000000;
    v35 = sub_249E7A5D8();
    v36 = MEMORY[0x277D837D0];
    *(inited + 48) = v35;
    *(inited + 56) = v37;
    *(inited + 72) = v36;
    *(inited + 80) = 0x746E6F6973736573;
    *(inited + 88) = 0xEB00000000657079;
    v38 = *(v28 + *(v19 + 20));
    *(inited + 120) = MEMORY[0x277D83B88];
    *(inited + 96) = v38;
    v87 = v31;
    OUTLINED_FUNCTION_296();
    sub_249E7AA08();
    v39 = sub_249E7A9E8();
    v41 = v40;

    OUTLINED_FUNCTION_5_4();
    sub_249E2AA5C();
    sub_249E3A958(v39, v41, &v91);
    OUTLINED_FUNCTION_156();

    *(v32 + 4) = v28;
    v42 = sub_249E7A638();
    _os_signpost_emit_with_name_impl(&dword_249DEE000, v25, v90, v42, "SendDropInRequest", "%s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();

    (*(v30 + 8))(v88, v87);
  }

  else
  {

    (*(v30 + 8))(v29, v31);
    OUTLINED_FUNCTION_5_4();
    sub_249E2AA5C();
  }

  v59 = v0[55];
  v58 = v0[56];
  v60 = v0[54];
  v61 = v0[49];
  sub_249E7A798();
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_79();
  sub_249E2AB74(v62, v63, v64);
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_79();
  sub_249E2AB74(v65, v66, v67);
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_79();
  sub_249E2AB74(v68, v69, v70);
  OUTLINED_FUNCTION_212();
  sub_249E7A6E8();
  v71 = *(v59 + 8);
  v72 = OUTLINED_FUNCTION_81();
  result = v73(v72);
  v75 = v0[46];
  v76 = *(v61 + OBJC_IVAR____TtC10DropInCore13DropInManager_messageCenter);
  v0[94] = v76;
  if (v76)
  {
    v77 = v0[89];
    v78 = v0[62];
    v0[38] = v0[60];
    v0[39] = sub_249E28F84(&qword_27EF23830, type metadata accessor for StartDropInRequest);
    __swift_allocate_boxed_opaque_existential_0(v0 + 35);
    v79 = OUTLINED_FUNCTION_115();
    sub_249E2AAB0(v79, v80);
    v0[32] = sub_249DF691C(0, &qword_28130D270, 0x277CD1650);
    v0[33] = &off_285D07E60;
    v0[29] = v77;
    v0[34] = &off_285D07E80;

    v81 = v77;
    swift_task_alloc();
    OUTLINED_FUNCTION_75();
    v0[95] = v82;
    *v82 = v83;
    v82[1] = sub_249E11114;
    v84 = v0[53];
    OUTLINED_FUNCTION_237();

    __asm { BR              X5 }
  }

  __break(1u);
  return result;
}

uint64_t sub_249E11114()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  v3 = v2;
  OUTLINED_FUNCTION_6_2();
  *v4 = v3;
  v6 = *(v5 + 760);
  v7 = *v1;
  OUTLINED_FUNCTION_2_3();
  *v8 = v7;
  v3[96] = v0;

  if (v0)
  {
    v9 = v3[94];
    v10 = v3[87];
  }

  else
  {
    v11 = v3[94];

    __swift_destroy_boxed_opaque_existential_0(v3 + 29);
    __swift_destroy_boxed_opaque_existential_0(v3 + 35);
  }

  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

id sub_249E11238()
{
  v1 = v0[52];
  v2 = v0[51];
  sub_249E2AAB0(v0[53], v1);
  v3 = *(v1 + *(v2 + 32));
  if (v3)
  {
    v4 = v0[92];
    v5 = v0[91];
    v6 = v0[89];
    v7 = v0[88];
    v8 = v0[87];
    v9 = v0[86];
    v51 = v0[93];
    v53 = v0[77];
    v47 = v0[69];
    v49 = v0[70];
    v10 = v0[63];
    v45 = v0[62];
    v11 = v0[53];
    v55 = v0[52];
    v3;

    swift_willThrow();

    sub_249E2A8CC(v11, &qword_27EF23818, &unk_249E7E2A0);
    OUTLINED_FUNCTION_5_4();
    sub_249E2AA5C();
    v4(v47, v10);
    v4(v49, v10);
    sub_249E2A8CC(v53, &qword_27EF234B0, &qword_249E7D910);
    OUTLINED_FUNCTION_23_0();
    sub_249E2AA5C();
    OUTLINED_FUNCTION_17_0();
    OUTLINED_FUNCTION_159();
    v41 = v0[67];
    v42 = v0[66];
    v43 = v0[65];
    v44 = v0[62];
    v46 = v0[61];
    v48 = v0[59];
    v50 = v0[56];
    v52 = v0[53];
    v54 = v0[52];
    v56 = v0[50];

    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_237();

    __asm { BRAA            X1, X16 }
  }

  v14 = v0[48];
  v15 = [objc_allocWithZone(MEMORY[0x277D069D8]) init];
  v0[97] = v15;
  v16 = [v14 existingSessionIdentifier];
  if (v16)
  {
    v17 = v16;
    v18 = v0[93];
    v19 = v0[92];
    v20 = v0[67];
    v21 = v0[63];
    sub_249E7A608();

    v22 = sub_249E7A5E8();
    [v15 setIdentifier_];

    v23 = OUTLINED_FUNCTION_145();
    v19(v23);
  }

  else
  {
    v24 = v0[52];
    v25 = sub_249E7A5E8();
    [v15 setIdentifier_];
  }

  v26 = v0[83];
  v27 = v0[49];
  result = [v15 setState_];
  v29 = *(v27 + v26);
  v0[98] = v29;
  if (v29)
  {
    v30 = v0[87];
    v32 = v0[51];
    v31 = v0[52];
    v33 = v29;
    OUTLINED_FUNCTION_280();

    v34 = (v31 + *(v32 + 24));
    v35 = *v34;
    v36 = v34[1];
    v37 = swift_task_alloc();
    v0[99] = v37;
    *v37 = v0;
    OUTLINED_FUNCTION_205(v37);
    OUTLINED_FUNCTION_153();
    OUTLINED_FUNCTION_237();

    return sub_249E05B64(v38, v39);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_249E115F8()
{
  OUTLINED_FUNCTION_23();
  v2 = *v1;
  OUTLINED_FUNCTION_6_2();
  *v4 = v3;
  v5 = *(v2 + 792);
  *v4 = *v1;
  *(v3 + 800) = v0;

  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_249E1171C()
{
  OUTLINED_FUNCTION_50();
  v1 = *(v0 + 576);
  v2 = *(v0 + 568);
  v3 = *(v0 + 560);
  v4 = *(v0 + 552);
  v5 = *(v0 + 504);
  v6 = *(v0 + 512);
  v7 = *(v0 + 400);
  v8 = *(*(v0 + 392) + OBJC_IVAR____TtC10DropInCore13DropInManager_sessionManager);
  type metadata accessor for Pseudonym();
  OUTLINED_FUNCTION_28();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  v13 = *(v6 + 16);
  OUTLINED_FUNCTION_212();
  v13();
  OUTLINED_FUNCTION_94();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v5);
  v17 = OUTLINED_FUNCTION_145();
  (v13)(v17);
  OUTLINED_FUNCTION_94();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v5);
  *(v0 + 192) = 0u;
  *(v0 + 208) = 0u;
  *(v0 + 160) = 0u;
  *(v0 + 176) = 0u;
  *(v0 + 144) = 0u;
  *(v0 + 224) = -2;
  OUTLINED_FUNCTION_63(&unk_249E7E2B8);
  v28 = v21;
  v22 = swift_task_alloc();
  *(v0 + 808) = v22;
  *v22 = v0;
  v22[1] = sub_249E11884;
  v23 = *(v0 + 576);
  v24 = *(v0 + 568);
  v25 = *(v0 + 400);
  v26 = OUTLINED_FUNCTION_97(*(v0 + 776));

  return v28(v26);
}

uint64_t sub_249E11884()
{
  OUTLINED_FUNCTION_255();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_38_0();
  *v2 = v1;
  v4 = v3[101];
  v5 = v3[72];
  v6 = v3[71];
  v7 = v3[50];
  v8 = *v0;
  OUTLINED_FUNCTION_2_3();
  *v9 = v8;
  *(v11 + 226) = v10;

  v12 = OUTLINED_FUNCTION_148();
  sub_249E2A8CC(v12, v13, &qword_249E7D910);
  v14 = OUTLINED_FUNCTION_105();
  sub_249E2A8CC(v14, v15, &qword_249E7D910);
  sub_249E2A8CC(v7, &qword_27EF236D0, &qword_249E7E010);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_253();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_249E119EC()
{
  if (*(v0 + 226) == 1)
  {
    v1 = *(v0 + 744);
    v2 = *(v0 + 736);
    v3 = *(v0 + 728);
    v4 = *(v0 + 712);
    v5 = *(v0 + 704);
    v28 = *(v0 + 640);
    v29 = *(v0 + 624);
    v27 = *(v0 + 616);
    v30 = *(v0 + 608);
    v31 = *(v0 + 600);
    v32 = *(v0 + 592);
    v33 = *(v0 + 584);
    v35 = *(v0 + 576);
    v37 = *(v0 + 568);
    v25 = *(v0 + 560);
    v6 = *(v0 + 552);
    v39 = *(v0 + 544);
    v41 = *(v0 + 536);
    v44 = *(v0 + 528);
    v47 = *(v0 + 520);
    v7 = *(v0 + 496);
    v8 = *(v0 + 504);
    v50 = *(v0 + 488);
    v53 = *(v0 + 472);
    v56 = *(v0 + 448);
    v9 = *(v0 + 424);
    v26 = *(v0 + 416);
    v59 = *(v0 + 400);

    sub_249E2A8CC(v9, &qword_27EF23818, &unk_249E7E2A0);
    OUTLINED_FUNCTION_5_4();
    sub_249E2AA5C();
    v10 = OUTLINED_FUNCTION_302();
    v2(v10);
    v11 = OUTLINED_FUNCTION_302();
    v2(v11);
    sub_249E2A8CC(v27, &qword_27EF234B0, &qword_249E7D910);
    OUTLINED_FUNCTION_23_0();
    sub_249E2AA5C();

    OUTLINED_FUNCTION_168();
    v13 = *(v0 + 776);

    return v12(v13);
  }

  else
  {
    v15 = *(v0 + 776);
    v16 = *(v0 + 744);
    v17 = *(v0 + 736);
    v18 = *(v0 + 728);
    v19 = *(v0 + 712);
    v20 = *(v0 + 704);
    v42 = *(v0 + 688);
    v51 = *(v0 + 560);
    v54 = *(v0 + 616);
    v21 = *(v0 + 504);
    v45 = *(v0 + 496);
    v48 = *(v0 + 552);
    v22 = *(v0 + 424);
    v57 = *(v0 + 416);
    sub_249E28F30();
    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_190(v23, 31);

    sub_249E2A8CC(v22, &qword_27EF23818, &unk_249E7E2A0);
    OUTLINED_FUNCTION_5_4();
    sub_249E2AA5C();
    v17(v48, v21);
    v17(v51, v21);
    sub_249E2A8CC(v54, &qword_27EF234B0, &qword_249E7D910);
    OUTLINED_FUNCTION_23_0();
    sub_249E2AA5C();
    OUTLINED_FUNCTION_17_0();
    OUTLINED_FUNCTION_159();
    v34 = *(v0 + 536);
    v36 = *(v0 + 528);
    v38 = *(v0 + 520);
    v40 = *(v0 + 496);
    v43 = *(v0 + 488);
    v46 = *(v0 + 472);
    v49 = *(v0 + 448);
    v52 = *(v0 + 424);
    v55 = *(v0 + 416);
    v58 = *(v0 + 400);

    OUTLINED_FUNCTION_9_0();

    return v24();
  }
}

uint64_t sub_249E11E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_236();
  OUTLINED_FUNCTION_285();
  v25 = *(v24 + 744);
  v26 = *(v24 + 736);
  v27 = *(v24 + 728);
  v28 = *(v24 + 712);
  v29 = *(v24 + 704);
  v47 = *(v24 + 616);
  v30 = *(v24 + 560);
  v31 = *(v24 + 552);
  v33 = *(v24 + 496);
  v32 = *(v24 + 504);

  OUTLINED_FUNCTION_5_4();
  sub_249E2AA5C();
  v34 = OUTLINED_FUNCTION_145();
  v26(v34);
  v35 = OUTLINED_FUNCTION_148();
  v26(v35);
  sub_249E2A8CC(v47, &qword_27EF234B0, &qword_249E7D910);
  __swift_destroy_boxed_opaque_existential_0((v24 + 232));
  __swift_destroy_boxed_opaque_existential_0((v24 + 280));
  v48 = *(v24 + 768);
  OUTLINED_FUNCTION_17_0();
  v36 = *(v24 + 568);
  v37 = *(v24 + 560);
  OUTLINED_FUNCTION_45_0();

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_195();

  return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, v48, a22, a23, a24);
}

uint64_t sub_249E11FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_236();
  OUTLINED_FUNCTION_285();
  v25 = *(v24 + 744);
  v26 = *(v24 + 736);
  v27 = *(v24 + 728);
  v28 = *(v24 + 712);
  v29 = *(v24 + 704);
  v30 = *(v24 + 688);
  v46 = *(v24 + 560);
  v47 = *(v24 + 616);
  v45 = *(v24 + 552);
  v32 = *(v24 + 496);
  v31 = *(v24 + 504);
  v33 = *(v24 + 424);
  v48 = *(v24 + 416);

  sub_249E2A8CC(v33, &qword_27EF23818, &unk_249E7E2A0);
  OUTLINED_FUNCTION_5_4();
  sub_249E2AA5C();
  v26(v45, v31);
  v26(v46, v31);
  sub_249E2A8CC(v47, &qword_27EF234B0, &qword_249E7D910);
  OUTLINED_FUNCTION_23_0();
  sub_249E2AA5C();
  v49 = *(v24 + 800);
  OUTLINED_FUNCTION_17_0();
  v34 = *(v24 + 568);
  v35 = *(v24 + 560);
  OUTLINED_FUNCTION_45_0();

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_195();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14, a15, a16, a17, v45, v46, v47, v49, a22, a23, a24);
}

uint64_t sub_249E121A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 296) = a4;
  *(v6 + 304) = v5;
  *(v6 + 456) = a5;
  *(v6 + 280) = a2;
  *(v6 + 288) = a3;
  *(v6 + 272) = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23818, &unk_249E7E2A0);
  *(v6 + 312) = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  *(v6 + 320) = swift_task_alloc();
  *(v6 + 328) = swift_task_alloc();
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234B0, &qword_249E7D910) - 8);
  *(v6 + 336) = v9;
  *(v6 + 344) = *(v9 + 64);
  *(v6 + 352) = swift_task_alloc();
  *(v6 + 360) = swift_task_alloc();
  v10 = sub_249E7A628();
  *(v6 + 368) = v10;
  v11 = *(v10 - 8);
  *(v6 + 376) = v11;
  *(v6 + 384) = *(v11 + 64);
  *(v6 + 392) = swift_task_alloc();
  *(v6 + 400) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249E12348, 0, 0);
}

uint64_t sub_249E12348()
{
  OUTLINED_FUNCTION_284();
  v10 = *(v9 + 120);
  *(v2 + 408) = v10;
  sub_249E29D24(v1, v2 + 112);
  sub_249E29D24(v1, v2 + 152);
  v11 = v0 + v10;
  v12 = sub_249E7A698();
  sub_249E7AE28();
  OUTLINED_FUNCTION_161();
  if (os_log_type_enabled(v12, v13))
  {
    OUTLINED_FUNCTION_188();
    v4 = OUTLINED_FUNCTION_149();
    *v10 = 136315394;
    v15 = *(v2 + 136);
    v14 = *(v2 + 144);
    __swift_project_boxed_opaque_existential_0((v2 + 112), v15);
    OUTLINED_FUNCTION_14_1();
    v16(v15);
    OUTLINED_FUNCTION_303();
    __swift_destroy_boxed_opaque_existential_0((v2 + 112));
    v17 = OUTLINED_FUNCTION_182();
    sub_249E3A958(v17, v18, v19);
    OUTLINED_FUNCTION_217();

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    v11 = *(v2 + 176);
    v7 = *(v2 + 184);
    v5 = __swift_project_boxed_opaque_existential_0((v2 + 152), v11);
    OUTLINED_FUNCTION_32_0();
    v8 = v20;
    v22 = *(v21 + 64);
    OUTLINED_FUNCTION_192();
    OUTLINED_FUNCTION_315();
    v23();
    v24 = *(*(v7 + 8) + 32);
    OUTLINED_FUNCTION_250();
    sub_249E7AAD8();
    OUTLINED_FUNCTION_303();

    __swift_destroy_boxed_opaque_existential_0((v2 + 152));
    v25 = OUTLINED_FUNCTION_182();
    sub_249E3A958(v25, v26, v27);
    OUTLINED_FUNCTION_217();

    *(v10 + 14) = v11;
    OUTLINED_FUNCTION_200(&dword_249DEE000, v28, v29, "Sending message %s with payload %s");
    OUTLINED_FUNCTION_338();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0((v2 + 112));
    __swift_destroy_boxed_opaque_existential_0((v2 + 152));
  }

  OUTLINED_FUNCTION_114();
  sub_249E29D24(v12, v2 + 192);
  v30 = OUTLINED_FUNCTION_164();
  v31(v30);
  sub_249E29D88(v11, v2 + 16);
  OUTLINED_FUNCTION_131();
  v32 = OUTLINED_FUNCTION_329();
  v33 = OUTLINED_FUNCTION_180(v32);
  v34(v33);
  v35 = sub_249E29DEC((v2 + 16), (v5 + v6));
  OUTLINED_FUNCTION_203(v35, v36, v37, v38, v39, v40, v41, v42, v86, v90, v94, v98, v101, v104, v107, v110, v113, v116, *v119, v119[4]);
  v43 = OUTLINED_FUNCTION_300();
  v8(v43);
  sub_249E29D88(v111, v2 + 64);
  v44 = OUTLINED_FUNCTION_329();
  v52 = OUTLINED_FUNCTION_225(v44, v45, v46, v47, v48, v49, v50, v51, v87, v91, v95);
  v53(v52);
  sub_249E29DEC((v2 + 64), (v4 + v99));
  v54 = v4 + v11;
  *v54 = v6;
  *(v54 + 8) = v3;
  v55 = OUTLINED_FUNCTION_167();
  v8(v55);
  OUTLINED_FUNCTION_94();
  __swift_storeEnumTagSinglePayload(v56, v57, v58, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23848, &qword_249E7E2E8);
  v59 = swift_allocObject();
  v60 = OUTLINED_FUNCTION_184(v59, xmmword_249E7DBA0);
  v60[3].n128_u64[0] = &unk_249E7E2D0;
  v60[3].n128_u64[1] = v102;
  v61 = OUTLINED_FUNCTION_278(v60);
  *(v61 + 80) = &unk_249E7E2E0;
  *(v61 + 88) = v4;
  v68 = OUTLINED_FUNCTION_270(v61, v62, &qword_27EF234B0, v63, v64, v65, v66, v67, v88, v92, v96, v99, v102, v105, v108, v111, v114, v117, v120, v122);
  OUTLINED_FUNCTION_163(v68, v69, v70, v71, v72, v73, v74, v75, v89, v93, v97, v100, v103, v106, v109, v112, v115, v118, v121, v123, v124, v125);
  v76 = swift_allocObject();
  OUTLINED_FUNCTION_268(v76);
  *(&v12->isa + v8) = v59;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23850, &qword_249E7E2F0);
  v78 = *(v77 + 48);
  v79 = *(v77 + 52);
  swift_allocObject();
  swift_retain_n();

  v80 = sub_249E7A8D8();
  OUTLINED_FUNCTION_269(v80);
  v81 = *(MEMORY[0x277CBCE98] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_75();
  *(v2 + 440) = v82;
  *v82 = v83;
  v82[1] = sub_249E1277C;
  v84 = *(v2 + 272);

  return MEMORY[0x28210E9A0](v84);
}

uint64_t sub_249E1277C()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  v3 = v2;
  OUTLINED_FUNCTION_6_2();
  *v4 = v3;
  v6 = *(v5 + 440);
  v7 = *v1;
  OUTLINED_FUNCTION_2_3();
  *v8 = v7;
  *(v3 + 448) = v0;

  if (v0)
  {
    v9 = *(v3 + 432);
  }

  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_249E1287C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t *a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_221();
  OUTLINED_FUNCTION_257();
  v23 = OUTLINED_FUNCTION_83();
  sub_249E2A75C(v23, v24, v25, v26);
  v27 = v19 + v17;
  v28 = sub_249E7A698();
  v29 = sub_249E7AE28();
  OUTLINED_FUNCTION_224(v29);
  OUTLINED_FUNCTION_276();
  if (v30)
  {
    a11 = v16;
    a12 = v27;
    v31 = v18[39];
    v32 = v18[40];
    OUTLINED_FUNCTION_70();
    a10 = v21;
    v33 = swift_slowAlloc();
    OUTLINED_FUNCTION_74();
    a13 = swift_slowAlloc();
    *v33 = 136315138;
    a9 = v20;
    v34 = OUTLINED_FUNCTION_151();
    sub_249E2A75C(v34, v35, v36, &unk_249E7E2A0);
    OUTLINED_FUNCTION_81();
    v37 = sub_249E7AAC8();
    sub_249E2A8CC(v22, &qword_27EF23818, &unk_249E7E2A0);
    v38 = OUTLINED_FUNCTION_81();
    sub_249E3A958(v38, v39, v40);
    OUTLINED_FUNCTION_157();

    *(v33 + 4) = v37;
    OUTLINED_FUNCTION_273(&dword_249DEE000, v28, v29, "Received response %s");
    __swift_destroy_boxed_opaque_existential_0(a13);
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();

    (*(v19 + 8))(a12, a11);
  }

  else
  {

    sub_249E2A8CC(v22, &qword_27EF23818, &unk_249E7E2A0);
    v41 = *(v19 + 8);
    v42 = OUTLINED_FUNCTION_81();
    v44(v42, v43);
  }

  v46 = v18[49];
  v45 = v18[50];
  v48 = v18[44];
  v47 = v18[45];
  v50 = v18[40];
  v49 = v18[41];

  OUTLINED_FUNCTION_31_0();
  OUTLINED_FUNCTION_122();

  return v52(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_249E12A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_50();
  v14 = v12[52];
  v13 = v12[53];
  v16 = v12[49];
  v15 = v12[50];
  v17 = v12[46];
  v18 = v12[47];
  v20 = v12[44];
  v19 = v12[45];
  v22 = v12[40];
  v21 = v12[41];

  v23 = *(v18 + 8);
  v24 = OUTLINED_FUNCTION_148();
  v25(v24);

  OUTLINED_FUNCTION_9_0();
  v26 = v12[56];
  OUTLINED_FUNCTION_34();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12);
}

uint64_t sub_249E12B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 296) = a4;
  *(v6 + 304) = v5;
  *(v6 + 456) = a5;
  *(v6 + 280) = a2;
  *(v6 + 288) = a3;
  *(v6 + 272) = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23788, &qword_249E7E1C0);
  *(v6 + 312) = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  *(v6 + 320) = swift_task_alloc();
  *(v6 + 328) = swift_task_alloc();
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234B0, &qword_249E7D910) - 8);
  *(v6 + 336) = v9;
  *(v6 + 344) = *(v9 + 64);
  *(v6 + 352) = swift_task_alloc();
  *(v6 + 360) = swift_task_alloc();
  v10 = sub_249E7A628();
  *(v6 + 368) = v10;
  v11 = *(v10 - 8);
  *(v6 + 376) = v11;
  *(v6 + 384) = *(v11 + 64);
  *(v6 + 392) = swift_task_alloc();
  *(v6 + 400) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249E12CD4, 0, 0);
}

uint64_t sub_249E12CD4()
{
  OUTLINED_FUNCTION_284();
  v10 = *(v9 + 120);
  *(v2 + 408) = v10;
  sub_249E29D24(v1, v2 + 112);
  sub_249E29D24(v1, v2 + 152);
  v11 = v0 + v10;
  v12 = sub_249E7A698();
  sub_249E7AE28();
  OUTLINED_FUNCTION_161();
  if (os_log_type_enabled(v12, v13))
  {
    OUTLINED_FUNCTION_188();
    v4 = OUTLINED_FUNCTION_149();
    *v10 = 136315394;
    v15 = *(v2 + 136);
    v14 = *(v2 + 144);
    __swift_project_boxed_opaque_existential_0((v2 + 112), v15);
    OUTLINED_FUNCTION_14_1();
    v16(v15);
    OUTLINED_FUNCTION_303();
    __swift_destroy_boxed_opaque_existential_0((v2 + 112));
    v17 = OUTLINED_FUNCTION_182();
    sub_249E3A958(v17, v18, v19);
    OUTLINED_FUNCTION_217();

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    v11 = *(v2 + 176);
    v7 = *(v2 + 184);
    v5 = __swift_project_boxed_opaque_existential_0((v2 + 152), v11);
    OUTLINED_FUNCTION_32_0();
    v8 = v20;
    v22 = *(v21 + 64);
    OUTLINED_FUNCTION_192();
    OUTLINED_FUNCTION_315();
    v23();
    v24 = *(*(v7 + 8) + 32);
    OUTLINED_FUNCTION_250();
    sub_249E7AAD8();
    OUTLINED_FUNCTION_303();

    __swift_destroy_boxed_opaque_existential_0((v2 + 152));
    v25 = OUTLINED_FUNCTION_182();
    sub_249E3A958(v25, v26, v27);
    OUTLINED_FUNCTION_217();

    *(v10 + 14) = v11;
    OUTLINED_FUNCTION_200(&dword_249DEE000, v28, v29, "Sending message %s with payload %s");
    OUTLINED_FUNCTION_338();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0((v2 + 112));
    __swift_destroy_boxed_opaque_existential_0((v2 + 152));
  }

  OUTLINED_FUNCTION_114();
  sub_249E29D24(v12, v2 + 192);
  v30 = OUTLINED_FUNCTION_164();
  v31(v30);
  sub_249E29D88(v11, v2 + 16);
  OUTLINED_FUNCTION_131();
  v32 = OUTLINED_FUNCTION_329();
  v33 = OUTLINED_FUNCTION_180(v32);
  v34(v33);
  v35 = sub_249E29DEC((v2 + 16), (v5 + v6));
  OUTLINED_FUNCTION_203(v35, v36, v37, v38, v39, v40, v41, v42, v86, v90, v94, v98, v101, v104, v107, v110, v113, v116, *v119, v119[4]);
  v43 = OUTLINED_FUNCTION_300();
  v8(v43);
  sub_249E29D88(v111, v2 + 64);
  v44 = OUTLINED_FUNCTION_329();
  v52 = OUTLINED_FUNCTION_225(v44, v45, v46, v47, v48, v49, v50, v51, v87, v91, v95);
  v53(v52);
  sub_249E29DEC((v2 + 64), (v4 + v99));
  v54 = v4 + v11;
  *v54 = v6;
  *(v54 + 8) = v3;
  v55 = OUTLINED_FUNCTION_167();
  v8(v55);
  OUTLINED_FUNCTION_94();
  __swift_storeEnumTagSinglePayload(v56, v57, v58, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23798, &qword_249E7E1F0);
  v59 = swift_allocObject();
  v60 = OUTLINED_FUNCTION_184(v59, xmmword_249E7DBA0);
  v60[3].n128_u64[0] = &unk_249E7E1D8;
  v60[3].n128_u64[1] = v102;
  v61 = OUTLINED_FUNCTION_278(v60);
  *(v61 + 80) = &unk_249E7E1E8;
  *(v61 + 88) = v4;
  v68 = OUTLINED_FUNCTION_270(v61, v62, &qword_27EF234B0, v63, v64, v65, v66, v67, v88, v92, v96, v99, v102, v105, v108, v111, v114, v117, v120, v122);
  OUTLINED_FUNCTION_163(v68, v69, v70, v71, v72, v73, v74, v75, v89, v93, v97, v100, v103, v106, v109, v112, v115, v118, v121, v123, v124, v125);
  v76 = swift_allocObject();
  OUTLINED_FUNCTION_268(v76);
  *(&v12->isa + v8) = v59;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF237A0, &qword_249E7E1F8);
  v78 = *(v77 + 48);
  v79 = *(v77 + 52);
  swift_allocObject();
  swift_retain_n();

  v80 = sub_249E7A8D8();
  OUTLINED_FUNCTION_269(v80);
  v81 = *(MEMORY[0x277CBCE98] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_75();
  *(v2 + 440) = v82;
  *v82 = v83;
  v82[1] = sub_249E13108;
  v84 = *(v2 + 272);

  return MEMORY[0x28210E9A0](v84);
}

uint64_t sub_249E13108()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  v3 = v2;
  OUTLINED_FUNCTION_6_2();
  *v4 = v3;
  v6 = *(v5 + 440);
  v7 = *v1;
  OUTLINED_FUNCTION_2_3();
  *v8 = v7;
  *(v3 + 448) = v0;

  if (v0)
  {
    v9 = *(v3 + 432);
  }

  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_249E13208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t *a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_221();
  OUTLINED_FUNCTION_257();
  v23 = OUTLINED_FUNCTION_83();
  sub_249E2A75C(v23, v24, v25, v26);
  v27 = v19 + v17;
  v28 = sub_249E7A698();
  v29 = sub_249E7AE28();
  OUTLINED_FUNCTION_224(v29);
  OUTLINED_FUNCTION_276();
  if (v30)
  {
    a11 = v16;
    a12 = v27;
    v31 = v18[39];
    v32 = v18[40];
    OUTLINED_FUNCTION_70();
    a10 = v21;
    v33 = swift_slowAlloc();
    OUTLINED_FUNCTION_74();
    a13 = swift_slowAlloc();
    *v33 = 136315138;
    a9 = v20;
    v34 = OUTLINED_FUNCTION_151();
    sub_249E2A75C(v34, v35, v36, &qword_249E7E1C0);
    OUTLINED_FUNCTION_81();
    v37 = sub_249E7AAC8();
    sub_249E2A8CC(v22, &qword_27EF23788, &qword_249E7E1C0);
    v38 = OUTLINED_FUNCTION_81();
    sub_249E3A958(v38, v39, v40);
    OUTLINED_FUNCTION_157();

    *(v33 + 4) = v37;
    OUTLINED_FUNCTION_273(&dword_249DEE000, v28, v29, "Received response %s");
    __swift_destroy_boxed_opaque_existential_0(a13);
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();

    (*(v19 + 8))(a12, a11);
  }

  else
  {

    sub_249E2A8CC(v22, &qword_27EF23788, &qword_249E7E1C0);
    v41 = *(v19 + 8);
    v42 = OUTLINED_FUNCTION_81();
    v44(v42, v43);
  }

  v46 = v18[49];
  v45 = v18[50];
  v48 = v18[44];
  v47 = v18[45];
  v50 = v18[40];
  v49 = v18[41];

  OUTLINED_FUNCTION_31_0();
  OUTLINED_FUNCTION_122();

  return v52(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_249E13440()
{
  result = sub_249E7A6B8();
  if (v1 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = sub_249E7A688();
    if (v2 <= 0x3F)
    {
      v5 = *(result - 8) + 64;
      result = type metadata accessor for DropInSessionAnalyticEvent();
      if (v3 <= 0x3F)
      {
        v6 = *(result - 8) + 64;
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_249E1357C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23748, &qword_249E7E120);
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249E1364C, 0, 0);
}

uint64_t sub_249E1364C()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_26();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[12] = v2;
    *v2 = v0;
    v3 = OUTLINED_FUNCTION_62(v2);

    return sub_249E138E0(v3);
  }

  else
  {
    v5 = v0[10];

    OUTLINED_FUNCTION_9_0();

    return v6();
  }
}

uint64_t sub_249E1371C()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_38_0();
  *v2 = v1;
  v4 = *(v3 + 96);
  *v2 = *v0;
  *(v1 + 104) = v5;

  v6 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_249E13804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_50();
  v15 = *(v13 + 104);
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = *(v13 + 80);
    v18 = *(*(v13 + 64) + 48);
    OUTLINED_FUNCTION_108(v15, *(v13 + 72));
    do
    {
      v19 = *(v13 + 80);
      v20 = *(v13 + 56);
      OUTLINED_FUNCTION_105();
      OUTLINED_FUNCTION_220();
      sub_249E2A75C(v21, v22, v23, v24);
      [*(v17 + v18) didAddDevice_];
      OUTLINED_FUNCTION_187();
      sub_249E2A8CC(v25, v26, v27);
      v12 += v14;
      --v16;
    }

    while (v16);
    v28 = *(v13 + 104);
  }

  v29 = *(v13 + 80);

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_34();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12);
}

uint64_t sub_249E138E0(uint64_t a1)
{
  v2[24] = a1;
  v2[25] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23748, &qword_249E7E120);
  v2[26] = v3;
  v4 = *(v3 - 8);
  v2[27] = v4;
  v5 = *(v4 + 64) + 15;
  v2[28] = swift_task_alloc();
  v6 = sub_249E7A628();
  v2[29] = v6;
  v7 = *(v6 - 8);
  v2[30] = v7;
  v8 = *(v7 + 64) + 15;
  v2[31] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23750, &qword_249E7E130);
  v2[32] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v2[33] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234B0, &qword_249E7D910) - 8) + 64) + 15;
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v12 = type metadata accessor for XPCClient();
  v2[37] = v12;
  v13 = *(v12 - 8);
  v2[38] = v13;
  v14 = *(v13 + 64) + 15;
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249E13B08, 0, 0);
}

uint64_t sub_249E13B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_50();
  v15 = *(v12 + 200);
  Strong = swift_unknownObjectWeakLoadStrong();
  v17 = MEMORY[0x277D84F90];
  if (Strong)
  {
    v18 = sub_249E3F064();
    *(v12 + 336) = v18;
    v19 = swift_unknownObjectRelease();
    v20 = 0;
    v21 = v18[32];
    *(v12 + 392) = v21;
    v22 = 1 << v21;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    else
    {
      v23 = -1;
    }

    v24 = v23 & *(v18 + 7);
    *(v12 + 344) = OBJC_IVAR____TtC10DropInCore13DropInManager_logger;
    *(v12 + 352) = v17;
    if (v24)
    {
      while (1)
      {
        v25 = *(v12 + 336);
LABEL_12:
        *(v12 + 360) = v24;
        *(v12 + 368) = v20;
        OUTLINED_FUNCTION_312();
        v31 = *(v30 + 48);
        v33 = *(v32 + 72);
        OUTLINED_FUNCTION_2_5();
        sub_249E2AAB0(v34, v18);
        OUTLINED_FUNCTION_13_2();
        v35 = OUTLINED_FUNCTION_145();
        sub_249E2A924(v35, v36);
        v18 = [*(v13 + *(v14 + 20)) remoteObjectProxy];
        sub_249E7AFF8();
        swift_unknownObjectRelease();
        v37 = OUTLINED_FUNCTION_81();
        __swift_instantiateConcreteTypeFromMangledNameV2(v37, v38);
        if (OUTLINED_FUNCTION_266())
        {
          break;
        }

        OUTLINED_FUNCTION_306();
        v39 = *(v12 + 320);
        OUTLINED_FUNCTION_0_6();
        sub_249E2AA5C();
      }

      v52 = *(v12 + 176);
      *(v12 + 376) = v52;
      *(v12 + 16) = v12;
      *(v12 + 56) = v12 + 184;
      OUTLINED_FUNCTION_55_0();
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23758, &qword_249E7E138);
      OUTLINED_FUNCTION_43_0(v53);
      *(v12 + 88) = 1107296256;
      OUTLINED_FUNCTION_118(&block_descriptor_2);
      [v52 fetchClientContextWithCompletionHandler_];
      OUTLINED_FUNCTION_34();
    }

    else
    {
      while (!__OFADD__(v20, 1))
      {
        v26 = 1 << *(v12 + 392);
        v19 = OUTLINED_FUNCTION_231();
        if (v28 == v29)
        {

          v40 = *(v12 + 352);
          goto LABEL_14;
        }

        v24 = *(v19 + 8 * v27 + 56);
        ++v20;
        if (v24)
        {
          v20 = v27;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    return MEMORY[0x282200938](v19);
  }

  else
  {
LABEL_14:
    v42 = *(v12 + 320);
    v41 = *(v12 + 328);
    OUTLINED_FUNCTION_155();

    OUTLINED_FUNCTION_168();
    OUTLINED_FUNCTION_34();

    return v45(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12);
  }
}

uint64_t sub_249E13DA8()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_38_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 384) = *(v3 + 48);
  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_249E13EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_221();
  v17 = *(v16 + 184);
  v19 = *(v16 + 280);
  v18 = *(v16 + 288);
  v20 = *(v16 + 256);
  v21 = *(v16 + 264);
  v22 = *(v16 + 232);
  (*(*(v16 + 240) + 16))(v18, *(v16 + 192), v22);
  OUTLINED_FUNCTION_94();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v22);
  v26 = v17;
  sub_249E7A6C8();
  v98 = v26;

  v27 = *(v20 + 48);
  sub_249E2A75C(v18, v21, &qword_27EF234B0, &qword_249E7D910);
  sub_249E2A75C(v19, v21 + v27, &qword_27EF234B0, &qword_249E7D910);
  OUTLINED_FUNCTION_226(v21, 1, v22);
  if (v28)
  {
    v29 = *(v16 + 280);
    v30 = *(v16 + 288);
    v31 = *(v16 + 232);
    OUTLINED_FUNCTION_213();
    sub_249E2A8CC(v32, v33, v34);
    v35 = OUTLINED_FUNCTION_183();
    sub_249E2A8CC(v35, v36, &qword_249E7D910);
    OUTLINED_FUNCTION_226(v21 + v27, 1, v31);
    if (!v28)
    {
      goto LABEL_8;
    }

    sub_249E2A8CC(*(v16 + 264), &qword_27EF234B0, &qword_249E7D910);
    v37 = v98;
  }

  else
  {
    v38 = *(v16 + 232);
    sub_249E2A75C(*(v16 + 264), *(v16 + 272), &qword_27EF234B0, &qword_249E7D910);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v21 + v27, 1, v38);
    v41 = *(v16 + 280);
    v40 = *(v16 + 288);
    v42 = *(v16 + 272);
    if (EnumTagSinglePayload == 1)
    {
      v43 = *(v16 + 232);
      v44 = *(v16 + 240);
      sub_249E2A8CC(*(v16 + 280), &qword_27EF234B0, &qword_249E7D910);
      sub_249E2A8CC(v40, &qword_27EF234B0, &qword_249E7D910);
      (*(v44 + 8))(v42, v43);
LABEL_8:
      sub_249E2A8CC(*(v16 + 264), &qword_27EF23750, &qword_249E7E130);
      v37 = v98;
LABEL_9:
      v45 = *(v16 + 376);

      swift_unknownObjectRelease();
      v46 = *(v16 + 352);
      goto LABEL_15;
    }

    a10 = *(v16 + 288);
    a11 = *(v16 + 264);
    v47 = *(v16 + 240);
    v48 = *(v16 + 232);
    (*(v47 + 32))(*(v16 + 248), v21 + v27, v48);
    OUTLINED_FUNCTION_22_0();
    sub_249E28F84(v49, v50);
    HIDWORD(a9) = sub_249E7AA78();
    v51 = *(v47 + 8);
    v52 = OUTLINED_FUNCTION_151();
    v51(v52);
    sub_249E2A8CC(v41, &qword_27EF234B0, &qword_249E7D910);
    sub_249E2A8CC(a10, &qword_27EF234B0, &qword_249E7D910);
    (v51)(v42, v48);
    sub_249E2A8CC(a11, &qword_27EF234B0, &qword_249E7D910);
    v37 = v98;
    if ((a9 & 0x100000000) == 0)
    {
      goto LABEL_9;
    }
  }

  v53 = *(v16 + 376);
  v54 = *(v16 + 352);
  v55 = *(v16 + 320);
  v56 = *(v16 + 224);
  v57 = *(*(v16 + 208) + 48);
  OUTLINED_FUNCTION_2_5();
  sub_249E2AAB0(v58, v56);
  *(v56 + v57) = v53;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v46 = *(v16 + 352);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_31:
    v46 = sub_249E3A420(0, *(v46 + 16) + 1, 1, v46);
  }

  v61 = *(v46 + 16);
  v60 = *(v46 + 24);
  if (v61 >= v60 >> 1)
  {
    v46 = sub_249E3A420(v60 > 1, v61 + 1, 1, v46);
  }

  v63 = *(v16 + 216);
  v62 = *(v16 + 224);

  *(v46 + 16) = v61 + 1;
  sub_249E2A7A4(v62, v46 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v61, &qword_27EF23748, &qword_249E7E120);
LABEL_15:
  v64 = *(v16 + 320);
  OUTLINED_FUNCTION_0_6();
  sub_249E2AA5C();
  v65 = *(v16 + 368);
  v66 = (*(v16 + 360) - 1) & *(v16 + 360);
  *(v16 + 352) = v46;
  v37 = 1;
  if (v66)
  {
    while (1)
    {
      v67 = *(v16 + 336);
LABEL_22:
      *(v16 + 360) = v66;
      *(v16 + 368) = v65;
      v73 = *(v16 + 320);
      v72 = *(v16 + 328);
      v74 = *(v16 + 296);
      v75 = *(v67 + 48);
      v76 = *(*(v16 + 304) + 72);
      OUTLINED_FUNCTION_2_5();
      sub_249E2AAB0(v77, v72);
      OUTLINED_FUNCTION_13_2();
      v78 = OUTLINED_FUNCTION_109();
      sub_249E2A924(v78, v79);
      [*(v73 + *(v74 + 20)) remoteObjectProxy];
      sub_249E7AFF8();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234D0, &qword_249E7D6C8);
      if (swift_dynamicCast())
      {
        break;
      }

      OUTLINED_FUNCTION_306();
      v80 = *(v16 + 320);
      OUTLINED_FUNCTION_0_6();
      sub_249E2AA5C();
    }

    v93 = *(v16 + 176);
    *(v16 + 376) = v93;
    *(v16 + 16) = v16;
    *(v16 + 56) = v16 + 184;
    v94 = OUTLINED_FUNCTION_55_0();
    v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23758, &qword_249E7E138);
    OUTLINED_FUNCTION_43_0(v95);
    *(v16 + 88) = 1107296256;
    *(v16 + 96) = sub_249E1937C;
    *(v16 + 104) = &block_descriptor_2;
    *(v16 + 112) = v94;
    [v93 fetchClientContextWithCompletionHandler_];
    OUTLINED_FUNCTION_122();

    return MEMORY[0x282200938](v96);
  }

  else
  {
    while (1)
    {
      if (__OFADD__(v65, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      v68 = 1 << *(v16 + 392);
      v67 = OUTLINED_FUNCTION_231();
      if (v70 == v71)
      {
        break;
      }

      v66 = *(v67 + 8 * v69 + 56);
      ++v65;
      if (v66)
      {
        v65 = v69;
        goto LABEL_22;
      }
    }

    v81 = *(v16 + 352);
    v83 = *(v16 + 320);
    v82 = *(v16 + 328);
    OUTLINED_FUNCTION_155();

    OUTLINED_FUNCTION_168();
    OUTLINED_FUNCTION_122();

    return v86(v84, v85, v86, v87, v88, v89, v90, v91, a9, a10, a11, v98, v16 + 176, a14, a15, a16);
  }
}

uint64_t sub_249E14494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_90();
  v15 = v14 + 184;
  v16 = *(v14 + 384);
  v17 = *(v14 + 344);
  v18 = *(v14 + 312);
  v19 = *(v14 + 320);
  v20 = *(v14 + 200);
  swift_willThrow();
  OUTLINED_FUNCTION_2_5();
  v21 = OUTLINED_FUNCTION_81();
  sub_249E2AAB0(v21, v22);
  v23 = sub_249E7A698();
  sub_249E7AE08();
  OUTLINED_FUNCTION_161();
  v25 = os_log_type_enabled(v23, v24);
  v26 = *(v14 + 376);
  v27 = *(v14 + 384);
  v28 = *(v14 + 312);
  v67 = v14 + 184;
  if (v25)
  {
    v29 = *(v14 + 296);
    OUTLINED_FUNCTION_70();
    swift_slowAlloc();
    v15 = OUTLINED_FUNCTION_173();
    *v20 = 138412290;
    v30 = *(v28 + *(v29 + 20));
    OUTLINED_FUNCTION_0_6();
    sub_249E2AA5C();
    *(v20 + 4) = v30;
    *v15 = v30;
    OUTLINED_FUNCTION_107(&dword_249DEE000, v31, v32, "Failed to get client context for connection %@");
    sub_249E2A8CC(v15, &unk_27EF23C30, &qword_249E7DA20);
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();

    OUTLINED_FUNCTION_0_6();
    sub_249E2AA5C();
  }

  v33 = *(v14 + 320);
  OUTLINED_FUNCTION_0_6();
  v34 = sub_249E2AA5C();
  v35 = *(v14 + 368);
  v36 = (*(v14 + 360) - 1) & *(v14 + 360);
  if (v36)
  {
    while (1)
    {
      v37 = *(v14 + 336);
LABEL_11:
      *(v14 + 360) = v36;
      *(v14 + 368) = v35;
      OUTLINED_FUNCTION_312();
      v43 = *(v42 + 48);
      v45 = *(v44 + 72);
      OUTLINED_FUNCTION_2_5();
      sub_249E2AAB0(v46, v27);
      OUTLINED_FUNCTION_13_2();
      v47 = OUTLINED_FUNCTION_145();
      sub_249E2A924(v47, v48);
      v27 = [*(v17 + *(v15 + 20)) remoteObjectProxy];
      sub_249E7AFF8();
      swift_unknownObjectRelease();
      v49 = OUTLINED_FUNCTION_81();
      __swift_instantiateConcreteTypeFromMangledNameV2(v49, v50);
      if (OUTLINED_FUNCTION_266())
      {
        break;
      }

      OUTLINED_FUNCTION_306();
      v51 = *(v14 + 320);
      OUTLINED_FUNCTION_0_6();
      sub_249E2AA5C();
    }

    v64 = *(v14 + 176);
    *(v14 + 376) = v64;
    *(v14 + 16) = v14;
    *(v14 + 56) = v67;
    OUTLINED_FUNCTION_55_0();
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23758, &qword_249E7E138);
    OUTLINED_FUNCTION_43_0(v65);
    *(v14 + 88) = 1107296256;
    OUTLINED_FUNCTION_118(&block_descriptor_2);
    [v64 fetchClientContextWithCompletionHandler_];
    OUTLINED_FUNCTION_72();

    return MEMORY[0x282200938](v34);
  }

  else
  {
    while (1)
    {
      if (__OFADD__(v35, 1))
      {
        __break(1u);
        return MEMORY[0x282200938](v34);
      }

      v38 = 1 << *(v14 + 392);
      v34 = OUTLINED_FUNCTION_231();
      if (v40 == v41)
      {
        break;
      }

      v36 = *(v34 + 8 * v39 + 56);
      ++v35;
      if (v36)
      {
        v35 = v39;
        goto LABEL_11;
      }
    }

    v52 = *(v14 + 352);
    v54 = *(v14 + 320);
    v53 = *(v14 + 328);
    OUTLINED_FUNCTION_155();

    OUTLINED_FUNCTION_168();
    OUTLINED_FUNCTION_72();

    return v57(v55, v56, v57, v58, v59, v60, v61, v62, a9, v67, a11, a12, a13, a14);
  }
}

uint64_t sub_249E147F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23748, &qword_249E7E120);
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249E148C0, 0, 0);
}

uint64_t sub_249E148C0()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_26();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[12] = v2;
    *v2 = v0;
    v3 = OUTLINED_FUNCTION_62(v2);

    return sub_249E138E0(v3);
  }

  else
  {
    v5 = v0[10];

    OUTLINED_FUNCTION_9_0();

    return v6();
  }
}

uint64_t sub_249E14990()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_38_0();
  *v2 = v1;
  v4 = *(v3 + 96);
  *v2 = *v0;
  *(v1 + 104) = v5;

  v6 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_249E14A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_50();
  v15 = *(v13 + 104);
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = *(v13 + 80);
    v18 = *(*(v13 + 64) + 48);
    OUTLINED_FUNCTION_108(v15, *(v13 + 72));
    do
    {
      v19 = *(v13 + 80);
      v20 = *(v13 + 56);
      OUTLINED_FUNCTION_105();
      OUTLINED_FUNCTION_220();
      sub_249E2A75C(v21, v22, v23, v24);
      [*(v17 + v18) didRemoveDevice_];
      OUTLINED_FUNCTION_187();
      sub_249E2A8CC(v25, v26, v27);
      v12 += v14;
      --v16;
    }

    while (v16);
    v28 = *(v13 + 104);
  }

  v29 = *(v13 + 80);

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_34();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12);
}

void sub_249E14B54()
{
  OUTLINED_FUNCTION_15_0();
  v75 = v1;
  v3 = v2;
  v77 = v4;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  OUTLINED_FUNCTION_37(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_230();
  v11 = sub_249E7A628();
  v12 = OUTLINED_FUNCTION_3(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_142();
  v72 = v19;
  v73 = v17 - v18;
  MEMORY[0x28223BE20](v20);
  v74 = &v69 - v21;
  v22 = sub_249E7A468();
  v23 = OUTLINED_FUNCTION_3(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_1_0();
  v30 = v29 - v28;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v32 = Strong;
    v71 = v3;
    v33 = *(v25 + 16);
    v76 = v6;
    v33(v30, v6, v22);
    v78 = v32;
    v34 = sub_249E7A698();
    v35 = sub_249E7AE28();
    if (os_log_type_enabled(v34, v35))
    {
      OUTLINED_FUNCTION_70();
      v36 = swift_slowAlloc();
      v70 = v0;
      v37 = v36;
      OUTLINED_FUNCTION_74();
      v69 = swift_slowAlloc();
      v80[0] = v69;
      *v37 = 136315138;
      sub_249E28F84(qword_28130D370, MEMORY[0x277CC8900]);
      sub_249E7B2D8();
      v38 = *(v25 + 8);
      v39 = OUTLINED_FUNCTION_148();
      v40(v39);
      v41 = OUTLINED_FUNCTION_302();
      v44 = sub_249E3A958(v41, v42, v43);

      *(v37 + 4) = v44;
      _os_log_impl(&dword_249DEE000, v34, v35, v77, v37, 0xCu);
      OUTLINED_FUNCTION_336();
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
      v0 = v70;
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
    }

    else
    {

      v45 = *(v25 + 8);
      v46 = OUTLINED_FUNCTION_148();
      v47(v46);
    }

    sub_249E7A458();
    v48 = v78;
    if (v80[3])
    {
      sub_249DF691C(0, &qword_28130D160, 0x277D069A8);
      if (OUTLINED_FUNCTION_7_0())
      {
        v49 = v79;
        v50 = [v79 homeKitHomeIdentifier];
        if (v50)
        {
          v51 = v50;
          v52 = v74;
          sub_249E7A608();

          sub_249E7AC78();
          OUTLINED_FUNCTION_28();
          __swift_storeEnumTagSinglePayload(v53, v54, v55, v56);
          OUTLINED_FUNCTION_22();
          v57 = swift_allocObject();
          OUTLINED_FUNCTION_185(v57);
          swift_unknownObjectWeakInit();
          v58 = v73;
          (*(v14 + 16))(v73, v52, v11);
          v59 = (*(v14 + 80) + 40) & ~*(v14 + 80);
          v60 = (v72 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
          v61 = swift_allocObject();
          v62 = OUTLINED_FUNCTION_210(v61);
          *(v62 + 32) = v51;
          (*(v14 + 32))(v62 + v59, v58, v11);
          *(v0 + v60) = v49;
          v63 = v49;
          v64 = OUTLINED_FUNCTION_99();
          sub_249E5ED90(v64, v65, v0, v75, v0);

          v66 = *(v14 + 8);
          v67 = OUTLINED_FUNCTION_136();
          v68(v67);
        }

        else
        {
        }
      }

      else
      {
      }
    }

    else
    {

      sub_249E2A8CC(v80, &unk_27EF23C40, &qword_249E7D8E0);
    }
  }

  OUTLINED_FUNCTION_6_1();
}

uint64_t sub_249E15008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v7 = *(*(type metadata accessor for XPCClient() - 8) + 64) + 15;
  v6[8] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23748, &qword_249E7E120);
  v6[9] = v8;
  v9 = *(v8 - 8);
  v6[10] = v9;
  v10 = *(v9 + 64) + 15;
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249E1511C, 0, 0);
}

uint64_t sub_249E1511C()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_26();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[14] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[15] = v2;
    *v2 = v0;
    v3 = OUTLINED_FUNCTION_62(v2);

    return sub_249E138E0(v3);
  }

  else
  {
    v6 = v0[12];
    v5 = v0[13];
    v7 = v0[11];
    v8 = v0[8];

    OUTLINED_FUNCTION_9_0();

    return v9();
  }
}

uint64_t sub_249E15218()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_38_0();
  *v2 = v1;
  v4 = *(v3 + 120);
  *v2 = *v0;
  *(v1 + 128) = v5;

  v6 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

void sub_249E15300()
{
  v60 = v0;
  v1 = *(v0 + 128);
  v2 = *(v0 + 112);

  v3 = sub_249E7A698();
  sub_249E7AE28();
  OUTLINED_FUNCTION_247();

  v4 = OUTLINED_FUNCTION_110();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 128);
    v7 = *(v0 + 72);
    OUTLINED_FUNCTION_70();
    v8 = swift_slowAlloc();
    OUTLINED_FUNCTION_74();
    v9 = swift_slowAlloc();
    v59 = v9;
    *v8 = 136315138;
    v10 = OUTLINED_FUNCTION_249();
    v11 = MEMORY[0x24C204800](v10);
    v13 = sub_249E3A958(v11, v12, &v59);

    *(v8 + 4) = v13;
    OUTLINED_FUNCTION_35();
    _os_log_impl(v14, v15, v16, v17, v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  v19 = 0;
  v20 = *(v0 + 128);
  v22 = *(v0 + 72);
  v21 = *(v0 + 80);
  v57 = *(v20 + 16);
  v23 = &qword_249E7E120;
  *&v24 = 136315138;
  v53 = v24;
  v55 = v0;
  v54 = v21;
  while (v57 != v19)
  {
    if (v19 >= *(v20 + 16))
    {
      __break(1u);
      return;
    }

    v25 = *(v0 + 96);
    v58 = v19;
    sub_249E2A75C(*(v0 + 128) + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v19, *(v0 + 104), &qword_27EF23748, v23);
    v26 = OUTLINED_FUNCTION_105();
    sub_249E2A75C(v26, v27, &qword_27EF23748, v23);
    v28 = v23;
    v29 = sub_249E7A698();
    v30 = sub_249E7AE28();
    v31 = os_log_type_enabled(v29, v30);
    v32 = *(v0 + 96);
    if (v31)
    {
      v56 = v30;
      v33 = *(v0 + 88);
      v34 = *(v0 + 64);
      OUTLINED_FUNCTION_70();
      v35 = swift_slowAlloc();
      OUTLINED_FUNCTION_74();
      v59 = swift_slowAlloc();
      *v35 = v53;
      sub_249E2A75C(v32, v33, &qword_27EF23748, v28);
      v36 = *(v33 + *(v22 + 48));
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_13_2();
      sub_249E2A924(v33, v34);
      v37 = sub_249E6A23C();
      OUTLINED_FUNCTION_0_6();
      v21 = v54;
      sub_249E2AA5C();
      v38 = OUTLINED_FUNCTION_308();
      sub_249E2A8CC(v38, v39, v28);
      v40 = OUTLINED_FUNCTION_81();
      sub_249E3A958(v40, v41, v42);
      OUTLINED_FUNCTION_157();
      v0 = v55;

      *(v35 + 4) = v37;
      OUTLINED_FUNCTION_339(&dword_249DEE000, v29, v56, "Notifying XPC Client: %s");
      OUTLINED_FUNCTION_53_0();
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
    }

    else
    {

      v43 = OUTLINED_FUNCTION_308();
      sub_249E2A8CC(v43, v44, v28);
    }

    v23 = v28;
    [*(*(v0 + 104) + *(v22 + 48)) didUpdateDevice_];
    v45 = OUTLINED_FUNCTION_153();
    sub_249E2A8CC(v45, v46, v28);
    v19 = v58 + 1;
  }

  v47 = *(v0 + 128);

  v49 = *(v0 + 96);
  v48 = *(v0 + 104);
  v50 = *(v0 + 88);
  v51 = *(v0 + 64);

  OUTLINED_FUNCTION_9_0();

  v52();
}

uint64_t sub_249E15680()
{
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23820, &unk_249E7E860);
  v0 = *(v28 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v28);
  v3 = &v28 - v2;
  v4 = sub_249E7AFA8();
  v32 = *(v4 - 8);
  v33 = v4;
  v5 = *(v32 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_249E7AF28();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23880, &qword_249E7E390);
  v13 = *(v29 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v29);
  v16 = &v28 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23888, &qword_249E7E398);
  v30 = *(v17 - 8);
  v31 = v17;
  v18 = *(v30 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v28 - v19;
  v21 = [objc_opt_self() defaultCenter];
  if (qword_28130D218 != -1)
  {
    swift_once();
  }

  sub_249E7AF38();

  sub_249E28F84(&qword_28130D1F0, MEMORY[0x277CC9DB0]);
  sub_249E7A8E8();
  (*(v9 + 8))(v12, v8);
  sub_249E7A778();
  sub_249E2AB74(&qword_28130D320, &unk_27EF23820, &unk_249E7E860);
  sub_249E2AB74(&unk_28130D310, &unk_27EF23820, &unk_249E7E860);
  sub_249E2AB74(&unk_28130D300, &unk_27EF23820, &unk_249E7E860);
  v22 = v28;
  sub_249E7A6E8();
  (*(v0 + 8))(v3, v22);
  sub_249E7AF98();
  v23 = [objc_opt_self() mainRunLoop];
  v34 = v23;
  sub_249DF691C(0, &unk_28130D128, 0x277CBEB88);
  sub_249E2AB74(&unk_28130D2F0, &qword_27EF23880, &qword_249E7E390);
  sub_249E2AB04();
  v24 = v29;
  sub_249E7A8F8();

  (*(v32 + 8))(v7, v33);
  (*(v13 + 8))(v16, v24);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_249E2AB74(&unk_28130D2E0, &unk_27EF23888, &qword_249E7E398);
  v25 = v31;
  v26 = sub_249E7A908();

  (*(v30 + 8))(v20, v25);
  return v26;
}

uint64_t sub_249E15C78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v53 = &v49 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23868, &qword_249E7E360);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v57 = &v49 - v7;
  v56 = type metadata accessor for DropInStateManager.Context(0);
  v8 = *(v56 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v56);
  v11 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = (&v49 - v12);
  v14 = sub_249E7A468();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v20 = result;
    v52 = v9;
    v21 = *(v15 + 16);
    v54 = a1;
    v21(v18, a1, v14);
    v55 = v20;
    v22 = sub_249E7A698();
    v23 = sub_249E7AE28();
    v24 = os_log_type_enabled(v22, v23);
    v51 = v8;
    if (v24)
    {
      v25 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v58[0] = v50;
      *v25 = 136315138;
      sub_249E28F84(qword_28130D370, MEMORY[0x277CC8900]);
      v26 = sub_249E7B2D8();
      v27 = v11;
      v28 = v13;
      v30 = v29;
      (*(v15 + 8))(v18, v14);
      v31 = sub_249E3A958(v26, v30, v58);
      v13 = v28;
      v11 = v27;

      *(v25 + 4) = v31;
      _os_log_impl(&dword_249DEE000, v22, v23, "Drop In State Updated Notification = %s", v25, 0xCu);
      v32 = v50;
      __swift_destroy_boxed_opaque_existential_0(v50);
      MEMORY[0x24C205870](v32, -1, -1);
      MEMORY[0x24C205870](v25, -1, -1);
    }

    else
    {

      (*(v15 + 8))(v18, v14);
    }

    sub_249E7A458();
    v33 = v55;
    v34 = v57;
    if (!v58[3])
    {

      sub_249E2A8CC(v58, &unk_27EF23C40, &qword_249E7D8E0);
      __swift_storeEnumTagSinglePayload(v34, 1, 1, v56);
      return sub_249E2A8CC(v34, &unk_27EF23868, &qword_249E7E360);
    }

    v35 = v56;
    v36 = swift_dynamicCast();
    __swift_storeEnumTagSinglePayload(v34, v36 ^ 1u, 1, v35);
    if (__swift_getEnumTagSinglePayload(v34, 1, v35) == 1)
    {

      return sub_249E2A8CC(v34, &unk_27EF23868, &qword_249E7E360);
    }

    sub_249E2A924(v34, v13);
    v37 = *v13;
    if (*v13 != 2)
    {
      v38 = OBJC_IVAR____TtC10DropInCore13DropInManager_dropInStateSubscriber;
      if (*&v33[OBJC_IVAR____TtC10DropInCore13DropInManager_dropInStateSubscriber])
      {
        v39 = *&v33[OBJC_IVAR____TtC10DropInCore13DropInManager_dropInStateSubscriber];

        sub_249E7A8B8();
      }

      v40 = sub_249E15680();
      v41 = *&v33[v38];
      *&v33[v38] = v40;
    }

    v42 = v37 != 2;
    v43 = sub_249E7AC78();
    v44 = v53;
    __swift_storeEnumTagSinglePayload(v53, 1, 1, v43);
    v45 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_249E2AAB0(v13, v11);
    v46 = (*(v51 + 80) + 40) & ~*(v51 + 80);
    v47 = v46 + v52;
    v48 = swift_allocObject();
    v48[2] = 0;
    v48[3] = 0;
    v48[4] = v45;
    sub_249E2A924(v11, v48 + v46);
    *(v48 + v47) = v42;
    sub_249E5ED90(0, 0, v44, &unk_249E7E370, v48);

    return sub_249E2AA5C();
  }

  return result;
}

uint64_t sub_249E16274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 152) = a6;
  *(v6 + 72) = a4;
  *(v6 + 80) = a5;
  v7 = sub_249E7A628();
  *(v6 + 88) = v7;
  v8 = *(v7 - 8);
  *(v6 + 96) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 104) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249E16338, 0, 0);
}

uint64_t sub_249E16338()
{
  OUTLINED_FUNCTION_23();
  v1 = v0[9];
  OUTLINED_FUNCTION_5_2();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[14] = Strong;
  if (Strong)
  {
    v3 = Strong;
    v4 = [*(Strong + OBJC_IVAR____TtC10DropInCore13DropInManager_homeManagerProvider) currentAccessory];
    v0[15] = v4;
    if (v4)
    {
      v5 = v0[13];
      v0[16] = *&v3[OBJC_IVAR____TtC10DropInCore13DropInManager_deviceManager];
      v6 = [v4 uniqueIdentifier];
      sub_249E7A608();

      v7 = OUTLINED_FUNCTION_69();

      return MEMORY[0x2822009F8](v7, v8, v9);
    }
  }

  v10 = v0[13];

  OUTLINED_FUNCTION_9_0();

  return v11();
}

uint64_t sub_249E1644C()
{
  OUTLINED_FUNCTION_23();
  v1 = v0[16];
  v2 = v0[12];
  v3 = v0[11];
  sub_249E50708(v0[13], v0[10]);
  v4 = *(v2 + 8);
  v5 = OUTLINED_FUNCTION_126();
  v6(v5);
  v7 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_249E164D0()
{
  OUTLINED_FUNCTION_11();
  if (*(v0 + 152) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 136) = v1;
    *v1 = v0;
    v1[1] = sub_249E165AC;
    v2 = *(v0 + 112);
    v3 = OUTLINED_FUNCTION_97(*(v0 + 80));

    return sub_249E1686C(v3);
  }

  else
  {
    v5 = *(v0 + 112);

    v6 = *(v0 + 104);

    OUTLINED_FUNCTION_9_0();

    return v7();
  }
}

uint64_t sub_249E165AC()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_38_0();
  *v3 = v2;
  v5 = *(v4 + 136);
  v6 = *v1;
  OUTLINED_FUNCTION_2_3();
  *v7 = v6;
  *(v8 + 144) = v0;

  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_249E166A4()
{
  OUTLINED_FUNCTION_11();
  v1 = *(v0 + 112);

  v2 = *(v0 + 104);

  OUTLINED_FUNCTION_9_0();

  return v3();
}

uint64_t sub_249E16708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_100();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_50();
  a18 = v20;
  v23 = *(v20 + 144);
  v24 = *(v20 + 112);
  v25 = v23;
  v26 = sub_249E7A698();
  v27 = sub_249E7AE08();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = *(v20 + 144);
    v29 = *(v20 + 112);
    v30 = *(v20 + 120);
    OUTLINED_FUNCTION_70();
    v31 = swift_slowAlloc();
    OUTLINED_FUNCTION_74();
    v32 = swift_slowAlloc();
    a9 = v32;
    OUTLINED_FUNCTION_323(4.8149e-34);
    v34 = *(v20 + 40);
    v33 = *(v20 + 48);
    v35 = *(v20 + 56);
    v36 = sub_249E7B3A8();
    v38 = sub_249E3A958(v36, v37, &a9);

    *(v31 + 4) = v38;
    OUTLINED_FUNCTION_12(&dword_249DEE000, v39, v40, "Failed to broadcast drop in state to users: %s");
    __swift_destroy_boxed_opaque_existential_0(v32);
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  else
  {
    v41 = *(v20 + 144);
    v42 = *(v20 + 112);
  }

  v43 = *(v20 + 104);

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_34();

  return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12);
}

uint64_t sub_249E1686C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for DropInStateEvent();
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249E16900, 0, 0);
}

uint64_t sub_249E16900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_90();
  v15 = [*(v14[3] + OBJC_IVAR____TtC10DropInCore13DropInManager_homeManagerProvider) currentAccessory];
  v14[6] = v15;
  if (v15)
  {
    v16 = v15;
    v17 = [v15 home];
    v14[7] = v17;
    if (v17)
    {
      v19 = v14[4];
      v18 = v14[5];
      v20 = v14[2];
      v56 = v14[3];
      v21 = [v17 uniqueIdentifier];
      sub_249E7A608();

      v22 = [v16 uniqueIdentifier];
      v23 = v18 + v19[5];
      sub_249E7A608();

      v24 = *v20;
      v25 = *(v20 + 1);
      v26 = *(v20 + 2);
      v27 = *(type metadata accessor for DropInStateManager.Context(0) + 24);
      v28 = v19[8];
      v29 = sub_249E7A5B8();
      OUTLINED_FUNCTION_19_0(v29);
      result = (*(v30 + 16))(v18 + v28, &v20[v27]);
      *(v18 + v19[6]) = v24;
      v32 = (v18 + v19[7]);
      *v32 = v25;
      v32[1] = v26;
      v33 = *(v56 + OBJC_IVAR____TtC10DropInCore13DropInManager_messageCenter);
      v14[8] = v33;
      if (v33)
      {

        v34 = sub_249DF8ABC();
        v14[9] = sub_249E56600(v34);

        OUTLINED_FUNCTION_63(&unk_249E7E380);
        v57 = v35;
        v36 = swift_task_alloc();
        v14[10] = v36;
        *v36 = v14;
        v36[1] = sub_249E16B74;
        OUTLINED_FUNCTION_97(v14[5]);
        OUTLINED_FUNCTION_72();

        return v40(v37, v38, v39, v40, v41, v42, v43, v44, a9, v57, a11, a12, a13, a14);
      }

      else
      {
        __break(1u);
      }

      return result;
    }

    sub_249E28F30();
    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_190(v46, 25);
  }

  else
  {
    sub_249E28F30();
    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_190(v45, 24);
  }

  v47 = v14[5];

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_72();

  return v49(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_249E16B74()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  v2 = v1[10];
  v3 = v1[9];
  v4 = v1[8];
  v5 = *v0;
  OUTLINED_FUNCTION_2_3();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_249E16C90()
{
  OUTLINED_FUNCTION_11();
  v1 = *(v0 + 48);
  v2 = *(v0 + 40);

  OUTLINED_FUNCTION_59();

  OUTLINED_FUNCTION_31_0();

  return v3();
}

BOOL sub_249E16CFC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23868, &qword_249E7E360);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v11[-v2];
  v4 = type metadata accessor for DropInStateManager.Context(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_249E7A458();
  if (v12)
  {
    v8 = swift_dynamicCast();
    __swift_storeEnumTagSinglePayload(v3, v8 ^ 1u, 1, v4);
    if (__swift_getEnumTagSinglePayload(v3, 1, v4) != 1)
    {
      sub_249E2A924(v3, v7);
      v9 = *v7;
      sub_249E2AA5C();
      return v9 == 2;
    }
  }

  else
  {
    sub_249E2A8CC(v11, &unk_27EF23C40, &qword_249E7D8E0);
    __swift_storeEnumTagSinglePayload(v3, 1, 1, v4);
  }

  sub_249E2A8CC(v3, &unk_27EF23868, &qword_249E7E360);
  return 0;
}

uint64_t sub_249E16EB4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v46 = &v42 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23868, &qword_249E7E360);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v42 - v7;
  v50 = type metadata accessor for DropInStateManager.Context(0);
  v45 = *(v50 - 8);
  v9 = *(v45 + 64);
  v10 = MEMORY[0x28223BE20](v50);
  v11 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v42 - v12;
  v14 = sub_249E7A468();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v20 = result;
    v49 = v8;
    v21 = *(v15 + 16);
    v47 = a1;
    v21(v18, a1, v14);
    v48 = v20;
    v22 = sub_249E7A698();
    v23 = sub_249E7AE28();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v44 = v9;
      v25 = v24;
      v43 = swift_slowAlloc();
      v51[0] = v43;
      *v25 = 136315138;
      sub_249E28F84(qword_28130D370, MEMORY[0x277CC8900]);
      v26 = sub_249E7B2D8();
      v27 = v11;
      v28 = v13;
      v30 = v29;
      (*(v15 + 8))(v18, v14);
      v31 = sub_249E3A958(v26, v30, v51);
      v13 = v28;
      v11 = v27;

      *(v25 + 4) = v31;
      _os_log_impl(&dword_249DEE000, v22, v23, "(Throttled) Drop In State Updated to Available Notification = %s", v25, 0xCu);
      v32 = v43;
      __swift_destroy_boxed_opaque_existential_0(v43);
      MEMORY[0x24C205870](v32, -1, -1);
      MEMORY[0x24C205870](v25, -1, -1);
    }

    else
    {

      (*(v15 + 8))(v18, v14);
    }

    sub_249E7A458();
    v33 = v48;
    if (!v51[3])
    {

      sub_249E2A8CC(v51, &unk_27EF23C40, &qword_249E7D8E0);
      v35 = v49;
      __swift_storeEnumTagSinglePayload(v49, 1, 1, v50);
      return sub_249E2A8CC(v35, &unk_27EF23868, &qword_249E7E360);
    }

    v35 = v49;
    v34 = v50;
    v36 = swift_dynamicCast();
    __swift_storeEnumTagSinglePayload(v35, v36 ^ 1u, 1, v34);
    if (__swift_getEnumTagSinglePayload(v35, 1, v34) == 1)
    {

      return sub_249E2A8CC(v35, &unk_27EF23868, &qword_249E7E360);
    }

    sub_249E2A924(v35, v13);
    v37 = sub_249E7AC78();
    v38 = v46;
    __swift_storeEnumTagSinglePayload(v46, 1, 1, v37);
    v39 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_249E2AAB0(v13, v11);
    v40 = (*(v45 + 80) + 40) & ~*(v45 + 80);
    v41 = swift_allocObject();
    v41[2] = 0;
    v41[3] = 0;
    v41[4] = v39;
    sub_249E2A924(v11, v41 + v40);
    sub_249E5ED90(0, 0, v38, &unk_249E7E3A8, v41);

    return sub_249E2AA5C();
  }

  return result;
}

uint64_t sub_249E17440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 72) = a4;
  *(v5 + 80) = a5;
  return MEMORY[0x2822009F8](sub_249E17460, 0, 0);
}

uint64_t sub_249E17460()
{
  OUTLINED_FUNCTION_11();
  v1 = v0[9];
  OUTLINED_FUNCTION_5_2();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[12] = v3;
    *v3 = v0;
    v3[1] = sub_249E17534;
    v4 = OUTLINED_FUNCTION_97(v0[10]);

    return sub_249E1686C(v4);
  }

  else
  {
    OUTLINED_FUNCTION_9_0();

    return v6();
  }
}

uint64_t sub_249E17534()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_38_0();
  *v3 = v2;
  v5 = *(v4 + 96);
  v6 = *v1;
  OUTLINED_FUNCTION_2_3();
  *v7 = v6;
  *(v8 + 104) = v0;

  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_249E1762C()
{
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_9_0();

  return v1();
}

uint64_t sub_249E17684()
{
  OUTLINED_FUNCTION_50();
  v23 = v0;
  v1 = v0[13];
  v2 = v0[11];
  v3 = v1;
  v4 = sub_249E7A698();
  v5 = sub_249E7AE08();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[13];
    v7 = v0[11];
    OUTLINED_FUNCTION_70();
    v8 = swift_slowAlloc();
    OUTLINED_FUNCTION_74();
    v9 = swift_slowAlloc();
    v22 = v9;
    OUTLINED_FUNCTION_323(4.8149e-34);
    v11 = v0[5];
    v10 = v0[6];
    v12 = v0[7];
    v13 = sub_249E7B3A8();
    v15 = sub_249E3A958(v13, v14, &v22);

    *(v8 + 4) = v15;
    OUTLINED_FUNCTION_12(&dword_249DEE000, v16, v17, "Failed to broadcast drop in state to users: %s");
    __swift_destroy_boxed_opaque_existential_0(v9);
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  else
  {
    v18 = v0[13];
    v19 = v0[11];
  }

  OUTLINED_FUNCTION_9_0();

  return v20();
}

uint64_t sub_249E177F0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v6 = *(*(type metadata accessor for TransactionType(0) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v7 = type metadata accessor for DropInStateManager.Context(0);
  v4[7] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v4[8] = swift_task_alloc();
  v9 = type metadata accessor for DropInStateEvent();
  v4[9] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v11 = swift_task_alloc();
  v12 = *a2;
  v4[10] = v11;
  v4[11] = v12;

  return MEMORY[0x2822009F8](sub_249E178E8, 0, 0);
}

uint64_t sub_249E178E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_26();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v12 + 96) = Strong;
  if (Strong)
  {
    v14 = Strong;
    v16 = *(v12 + 80);
    v15 = *(v12 + 88);

    sub_249E183F8(v17, v16);
    v18 = *(v12 + 80);
    v29 = *(v12 + 64);
    v28 = *(v12 + 72);
    v30 = *(v12 + 56);
    v31 = *(v18 + v28[6]);
    *(v12 + 104) = v31;
    v32 = v28[8];
    v33 = (v18 + v28[7]);
    v35 = *v33;
    v34 = v33[1];
    *(v12 + 152) = v32;
    v36 = *(v30 + 24);
    v37 = sub_249E7A5B8();
    *(v12 + 112) = v37;
    OUTLINED_FUNCTION_28_0(v37);
    v39 = *(v38 + 16);
    *(v12 + 120) = v39;
    *(v12 + 128) = (v38 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v39(&v29[v36], v18 + v32);
    *v29 = v31;
    *(v29 + 1) = v35;
    *(v29 + 2) = v34;
    *(v12 + 136) = *(v14 + OBJC_IVAR____TtC10DropInCore13DropInManager_deviceManager);
    *(v12 + 156) = v28[5];

    OUTLINED_FUNCTION_36_0();
    OUTLINED_FUNCTION_34();

    return MEMORY[0x2822009F8](v40, v41, v42);
  }

  else
  {
    OUTLINED_FUNCTION_265();

    OUTLINED_FUNCTION_31_0();
    OUTLINED_FUNCTION_34();

    return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
  }
}

uint64_t sub_249E17A8C()
{
  OUTLINED_FUNCTION_11();
  v1 = *(v0 + 136);
  sub_249E50708(*(v0 + 80) + *(v0 + 156), *(v0 + 64));

  v2 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_249E17B00()
{
  OUTLINED_FUNCTION_11();
  if (*(v0 + 104) == 2)
  {
    v2 = *(v0 + 120);
    v1 = *(v0 + 128);
    v3 = *(v0 + 112);
    v4 = *(v0 + 152);
    v5 = *(v0 + 80);
    v6 = *(v0 + 48);
    *(v0 + 144) = *(*(v0 + 96) + OBJC_IVAR____TtC10DropInCore13DropInManager_transactionManager);
    v2(v6, v5 + v4, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF236C8, &qword_249E7E008);
    OUTLINED_FUNCTION_297();
    OUTLINED_FUNCTION_94();
    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
    v11 = OUTLINED_FUNCTION_57();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }

  else
  {

    v14 = *(v0 + 80);
    v15 = *(v0 + 64);
    OUTLINED_FUNCTION_10_0();
    sub_249E2AA5C();
    OUTLINED_FUNCTION_59();
    OUTLINED_FUNCTION_265();

    OUTLINED_FUNCTION_31_0();

    return v16();
  }
}

uint64_t sub_249E17C10()
{
  OUTLINED_FUNCTION_11();
  v1 = *(v0 + 144);
  sub_249E339F0(*(v0 + 48));
  OUTLINED_FUNCTION_18_0();
  v2 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_249E17C78()
{
  OUTLINED_FUNCTION_11();

  v1 = *(v0 + 80);
  v2 = *(v0 + 64);
  OUTLINED_FUNCTION_10_0();
  sub_249E2AA5C();
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_265();

  OUTLINED_FUNCTION_31_0();

  return v3();
}

uint64_t sub_249E17CF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234B0, &qword_249E7D910);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v50 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v39 - v7;
  v9 = sub_249E7A628();
  v52 = *(v9 - 8);
  v10 = *(v52 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v39 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF236C0, &unk_249E7F8F0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v39 - v18;
  v20 = sub_249E7A5B8();
  v57 = *(v20 - 8);
  v21 = *(v57 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_249E55870(0x6469656D6F68, 0xE600000000000000, a1, &v55);
  if (!v56)
  {
    goto LABEL_17;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_21;
  }

  v47 = v53;
  v48 = v9;
  v24 = v54;
  sub_249E55870(0x726F737365636361, 0xEB00000000646979, a1, &v55);
  if (!v56)
  {

LABEL_17:

    v27 = &unk_27EF23C40;
    v28 = &qword_249E7D8E0;
    v29 = &v55;
LABEL_18:
    sub_249E2A8CC(v29, v27, v28);
LABEL_22:
    sub_249DFE8A4();
    swift_allocError();
    return swift_willThrow();
  }

  v49 = v24;
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_20;
  }

  v25 = v54;
  v46 = v53;
  sub_249E55870(0x6574617473, 0xE500000000000000, a1, &v55);
  if (!v56)
  {
    goto LABEL_16;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:

LABEL_20:

LABEL_21:

    goto LABEL_22;
  }

  v45 = v53;
  sub_249E55870(0x6E6F73616572, 0xE600000000000000, a1, &v55);
  if (!v56)
  {
LABEL_16:

    goto LABEL_17;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_19;
  }

  v43 = v53;
  v44 = v54;
  sub_249E55870(0x6974617269707865, 0xEA00000000006E6FLL, a1, &v55);

  if (!v56)
  {

    sub_249E2A8CC(&v55, &unk_27EF23C40, &qword_249E7D8E0);
    __swift_storeEnumTagSinglePayload(v19, 1, 1, v20);
    goto LABEL_24;
  }

  v26 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v19, v26 ^ 1u, 1, v20);
  if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
  {

LABEL_24:
    v27 = &qword_27EF236C0;
    v28 = &unk_249E7F8F0;
    v29 = v19;
    goto LABEL_18;
  }

  v31 = v57;
  v32 = *(v57 + 32);
  v41 = v57 + 32;
  v42 = v25;
  v40 = v32;
  v32(v23, v19, v20);
  sub_249E7A5C8();

  v33 = v48;
  if (__swift_getEnumTagSinglePayload(v8, 1, v48) == 1)
  {
    (*(v31 + 8))(v23, v20);

LABEL_29:
    v27 = &qword_27EF234B0;
    v28 = &qword_249E7D910;
    v29 = v8;
    goto LABEL_18;
  }

  v49 = *(v52 + 32);
  v49(v15, v8, v33);
  v8 = v50;
  sub_249E7A5C8();

  if (__swift_getEnumTagSinglePayload(v8, 1, v33) == 1)
  {

    (*(v52 + 8))(v15, v33);
    (*(v57 + 8))(v23, v20);
    goto LABEL_29;
  }

  v34 = v49;
  v49(v13, v8, v33);
  v34(v51, v15, v33);
  v35 = type metadata accessor for DropInStateResponse();
  v36 = v51;
  v34(v51 + v35[5], v13, v33);
  result = v40(v36 + v35[8], v23, v20);
  *(v36 + v35[6]) = v45;
  v37 = (v36 + v35[7]);
  v38 = v44;
  *v37 = v43;
  v37[1] = v38;
  return result;
}

uint64_t sub_249E183F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234B0, &qword_249E7D910);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v50 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v39 - v7;
  v9 = sub_249E7A628();
  v52 = *(v9 - 8);
  v10 = *(v52 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v39 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF236C0, &unk_249E7F8F0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v39 - v18;
  v20 = sub_249E7A5B8();
  v57 = *(v20 - 8);
  v21 = *(v57 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_249E55870(0x6469656D6F68, 0xE600000000000000, a1, &v55);
  if (!v56)
  {
    goto LABEL_17;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_21;
  }

  v47 = v53;
  v48 = v9;
  v24 = v54;
  sub_249E55870(0x726F737365636361, 0xEB00000000646979, a1, &v55);
  if (!v56)
  {

LABEL_17:

    v27 = &unk_27EF23C40;
    v28 = &qword_249E7D8E0;
    v29 = &v55;
LABEL_18:
    sub_249E2A8CC(v29, v27, v28);
LABEL_22:
    sub_249DFE8A4();
    swift_allocError();
    return swift_willThrow();
  }

  v49 = v24;
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_20;
  }

  v25 = v54;
  v46 = v53;
  sub_249E55870(0x6574617473, 0xE500000000000000, a1, &v55);
  if (!v56)
  {
    goto LABEL_16;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:

LABEL_20:

LABEL_21:

    goto LABEL_22;
  }

  v45 = v53;
  sub_249E55870(0x6E6F73616572, 0xE600000000000000, a1, &v55);
  if (!v56)
  {
LABEL_16:

    goto LABEL_17;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_19;
  }

  v43 = v53;
  v44 = v54;
  sub_249E55870(0x6974617269707865, 0xEA00000000006E6FLL, a1, &v55);

  if (!v56)
  {

    sub_249E2A8CC(&v55, &unk_27EF23C40, &qword_249E7D8E0);
    __swift_storeEnumTagSinglePayload(v19, 1, 1, v20);
    goto LABEL_24;
  }

  v26 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v19, v26 ^ 1u, 1, v20);
  if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
  {

LABEL_24:
    v27 = &qword_27EF236C0;
    v28 = &unk_249E7F8F0;
    v29 = v19;
    goto LABEL_18;
  }

  v31 = v57;
  v32 = *(v57 + 32);
  v41 = v57 + 32;
  v42 = v25;
  v40 = v32;
  v32(v23, v19, v20);
  sub_249E7A5C8();

  v33 = v48;
  if (__swift_getEnumTagSinglePayload(v8, 1, v48) == 1)
  {
    (*(v31 + 8))(v23, v20);

LABEL_29:
    v27 = &qword_27EF234B0;
    v28 = &qword_249E7D910;
    v29 = v8;
    goto LABEL_18;
  }

  v49 = *(v52 + 32);
  v49(v15, v8, v33);
  v8 = v50;
  sub_249E7A5C8();

  if (__swift_getEnumTagSinglePayload(v8, 1, v33) == 1)
  {

    (*(v52 + 8))(v15, v33);
    (*(v57 + 8))(v23, v20);
    goto LABEL_29;
  }

  v34 = v49;
  v49(v13, v8, v33);
  v34(v51, v15, v33);
  v35 = type metadata accessor for DropInStateEvent();
  v36 = v51;
  v34(v51 + v35[5], v13, v33);
  result = v40(v36 + v35[8], v23, v20);
  *(v36 + v35[6]) = v45;
  v37 = (v36 + v35[7]);
  v38 = v44;
  *v37 = v43;
  v37[1] = v38;
  return result;
}

uint64_t sub_249E18AF8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234B0, &qword_249E7D910) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v7 = sub_249E7A628();
  v4[7] = v7;
  v8 = *(v7 - 8);
  v4[8] = v8;
  v9 = *(v8 + 64) + 15;
  v4[9] = swift_task_alloc();
  v10 = type metadata accessor for DropInSessionFailureEvent();
  v4[10] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v12 = swift_task_alloc();
  v13 = *a2;
  v4[11] = v12;
  v4[12] = v13;

  return MEMORY[0x2822009F8](sub_249E18C28, 0, 0);
}

uint64_t sub_249E18C28()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_26();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[13] = Strong;
  if (Strong)
  {
    v3 = Strong;
    v5 = v0[11];
    v4 = v0[12];

    sub_249E609A8(v6, v5);
    v13 = *(v0[11] + *(v0[10] + 24));
    v14 = OBJC_IVAR____TtC10DropInCore13DropInManager_logger;
    v0[14] = v13;
    v0[15] = v14;
    v15 = v13;
    v16 = sub_249E7A698();
    sub_249E7AE08();

    if (OUTLINED_FUNCTION_274())
    {
      OUTLINED_FUNCTION_70();
      swift_slowAlloc();
      v18 = OUTLINED_FUNCTION_173();
      *v1 = 138412290;
      *(v1 + 4) = v15;
      *v18 = v15;
      v19 = v15;
      OUTLINED_FUNCTION_107(&dword_249DEE000, v20, v21, "Received Session Failed Event. Error = %@");
      sub_249E2A8CC(v18, &unk_27EF23C30, &qword_249E7DA20);
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
    }

    v22 = OBJC_IVAR____TtC10DropInCore13DropInManager_sessionManager;
    v0[16] = OBJC_IVAR____TtC10DropInCore13DropInManager_sessionManager;
    v0[17] = *(v3 + v22);
    v23 = OUTLINED_FUNCTION_254();

    return MEMORY[0x2822009F8](v23, v24, v25);
  }

  else
  {
    sub_249E28F30();
    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_190(v7, 20);
    v8 = v0[11];
    v9 = v0[9];
    v10 = v0[6];

    OUTLINED_FUNCTION_9_0();

    return v11();
  }
}

uint64_t sub_249E18E0C()
{
  OUTLINED_FUNCTION_11();
  v1 = *(*(v0 + 136) + qword_28130E738);
  *(v0 + 144) = v1;
  v2 = v1;
  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_249E18E84()
{
  OUTLINED_FUNCTION_318();
  OUTLINED_FUNCTION_82();
  v1 = *(v0 + 144);
  if (v1)
  {
    v3 = *(v0 + 80);
    v2 = *(v0 + 88);
    v5 = *(v0 + 64);
    v4 = *(v0 + 72);
    v6 = *(v0 + 56);
    v7 = [v1 identifier];
    sub_249E7A608();

    v8 = *(v3 + 20);
    LOBYTE(v7) = sub_249E7A5F8();
    v9 = *(v5 + 8);
    v10 = OUTLINED_FUNCTION_81();
    v11(v10);
    v12 = *(v0 + 144);
    if (v7)
    {
      v13 = *(v0 + 120);
      v14 = *(v0 + 104);
      v15 = v12;
      v16 = sub_249E7A698();
      sub_249E7AE28();

      v17 = OUTLINED_FUNCTION_110();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = *(v0 + 144);
        OUTLINED_FUNCTION_70();
        v20 = swift_slowAlloc();
        v21 = OUTLINED_FUNCTION_6();
        *v20 = 138412290;
        *(v20 + 4) = v19;
        *v21 = v19;
        v22 = v19;
        OUTLINED_FUNCTION_35();
        _os_log_impl(v23, v24, v25, v26, v27, 0xCu);
        sub_249E2A8CC(v21, &unk_27EF23C30, &qword_249E7DA20);
        OUTLINED_FUNCTION_65();
        MEMORY[0x24C205870]();
        OUTLINED_FUNCTION_65();
        MEMORY[0x24C205870]();
      }

      v28 = *(v0 + 128);
      v29 = *(v0 + 104);
      v31 = *(v0 + 48);
      v30 = *(v0 + 56);

      *(v0 + 152) = *(v29 + v28);
      OUTLINED_FUNCTION_28();
      __swift_storeEnumTagSinglePayload(v32, v33, v34, v30);
      OUTLINED_FUNCTION_69();
      OUTLINED_FUNCTION_271();

      return MEMORY[0x2822009F8](v35, v36, v37);
    }
  }

  else
  {
    v12 = *(v0 + 104);
  }

  v39 = *(v0 + 88);
  v40 = *(v0 + 72);
  v41 = *(v0 + 48);
  OUTLINED_FUNCTION_50_0();
  sub_249E2AA5C();

  OUTLINED_FUNCTION_31_0();
  OUTLINED_FUNCTION_271();

  return v43(v42, v43, v44, v45, v46, v47, v48, v49);
}

uint64_t sub_249E19094()
{
  OUTLINED_FUNCTION_11();
  v1 = *(v0 + 152);
  v2 = *(v0 + 48);
  sub_249E27304(v2, *(v0 + 112));
  sub_249E2A8CC(v2, &qword_27EF234B0, &qword_249E7D910);
  v3 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_249E19114()
{
  OUTLINED_FUNCTION_23();
  v4 = v0[13];
  v5 = *(v4 + OBJC_IVAR____TtC10DropInCore13DropInManager_callCenterManager);
  if (v5)
  {
    v6 = v0[16];
    v7 = v5;
    sub_249E067EC();

    v0[20] = *(v4 + v6);
    OUTLINED_FUNCTION_189();
    v1 = OUTLINED_FUNCTION_36_0();
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_249E191AC()
{
  OUTLINED_FUNCTION_11();
  v1 = *(v0 + 160);
  sub_249E2615C(6, 3);

  v2 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_249E19218()
{
  OUTLINED_FUNCTION_11();
  v0[21] = *(v0[13] + v0[16]);
  OUTLINED_FUNCTION_189();
  v1 = OUTLINED_FUNCTION_36_0();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_249E19280()
{
  OUTLINED_FUNCTION_11();
  v1 = *(v0 + 168);
  sub_249E2530C();

  v2 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_249E192E4()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 144);

  v2 = *(v0 + 88);
  v3 = *(v0 + 72);
  v4 = *(v0 + 48);
  OUTLINED_FUNCTION_50_0();
  sub_249E2AA5C();

  OUTLINED_FUNCTION_31_0();

  return v5();
}

uint64_t *sub_249E1937C(uint64_t a1, void *a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    v7 = a3;

    return sub_249E4A6E8(v6, v7);
  }

  else if (a2)
  {
    v8 = a2;

    return sub_249E4A6EC(v6, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_249E1940C(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = type metadata accessor for DropInStateManager.Context(0);
  v2[7] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v5 = sub_249E7A628();
  v2[9] = v5;
  v6 = *(v5 - 8);
  v2[10] = v6;
  v7 = *(v6 + 64) + 15;
  v2[11] = swift_task_alloc();
  v8 = *(*(type metadata accessor for TransactionType(0) - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234B0, &qword_249E7D910);
  v2[13] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249E1957C, 0, 0);
}

uint64_t sub_249E1957C()
{
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_50();
  v1 = v0[6];
  sub_249E2A75C(v0[5], v0[16], &qword_27EF234B0, &qword_249E7D910);
  v2 = sub_249E7A698();
  v3 = sub_249E7AE28();
  v4 = OUTLINED_FUNCTION_120(v3);
  v5 = v0[16];
  if (v4)
  {
    v6 = v0[15];
    v7 = v0[13];
    OUTLINED_FUNCTION_70();
    v8 = swift_slowAlloc();
    OUTLINED_FUNCTION_74();
    swift_slowAlloc();
    OUTLINED_FUNCTION_243();
    *v8 = 136315138;
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_294();
    sub_249E2A75C(v9, v10, v11, v12);
    OUTLINED_FUNCTION_113();
    sub_249E7AAC8();
    OUTLINED_FUNCTION_143();
    OUTLINED_FUNCTION_267();
    v13 = OUTLINED_FUNCTION_113();
    v16 = sub_249E3A958(v13, v14, v15);

    *(v8 + 4) = v16;
    OUTLINED_FUNCTION_35();
    _os_log_impl(v17, v18, v19, v20, v21, 0xCu);
    OUTLINED_FUNCTION_64();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  else
  {

    sub_249E2A8CC(v5, &qword_27EF234B0, &qword_249E7D910);
  }

  v22 = v0[12];
  v0[17] = *(v0[6] + OBJC_IVAR____TtC10DropInCore13DropInManager_transactionManager);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF236C8, &qword_249E7E008);
  OUTLINED_FUNCTION_297();
  OUTLINED_FUNCTION_28();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_34();

  return MEMORY[0x2822009F8](v27, v28, v29);
}

uint64_t sub_249E19714()
{
  OUTLINED_FUNCTION_11();
  v1 = *(v0 + 136);
  sub_249E33FAC(*(v0 + 96));
  OUTLINED_FUNCTION_18_0();
  v2 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v2, v3, v4);
}