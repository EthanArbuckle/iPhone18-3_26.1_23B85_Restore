unint64_t sub_2542DE4E4()
{
  result = qword_27F5DF688;
  if (!qword_27F5DF688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DF688);
  }

  return result;
}

uint64_t sub_2542DE538(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2542DE580(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HPCall();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2542DE5E4(uint64_t a1)
{
  v2 = type metadata accessor for HPCall();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2542DE644()
{
  result = qword_27F5DF698;
  if (!qword_27F5DF698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DF698);
  }

  return result;
}

uint64_t sub_2542DE6B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2543A1F88();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    if (a2 == 252)
    {
      v9 = *(a1 + *(a3 + 20));
      if (v9 >= 4)
      {
        return v9 - 3;
      }

      else
      {
        return 0;
      }
    }

    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF638, &unk_2543B0DF0);
    v8 = a1 + *(a3 + 24);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_2542DE7A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2543A1F88();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 252)
    {
      *(a1 + *(a4 + 20)) = a2 + 3;
      return result;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF638, &unk_2543B0DF0);
    v10 = a1 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

void sub_2542DE874()
{
  sub_2543A1F88();
  if (v0 <= 0x3F)
  {
    sub_2542DE900();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2542DE900()
{
  if (!qword_27F5DF6B0)
  {
    sub_2543A1F38();
    v0 = sub_2543A30C8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F5DF6B0);
    }
  }
}

uint64_t getEnumTagSinglePayload for HPCall.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for HPCall.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2542DEACCLL);
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

uint64_t getEnumTagSinglePayload for CarrySettings.ProfileVariant(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_2542DEBA4(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2542DEC70);
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

unint64_t sub_2542DECEC()
{
  result = qword_27F5DF6B8;
  if (!qword_27F5DF6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DF6B8);
  }

  return result;
}

unint64_t sub_2542DED44()
{
  result = qword_27F5DF6C0;
  if (!qword_27F5DF6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DF6C0);
  }

  return result;
}

unint64_t sub_2542DED9C()
{
  result = qword_27F5DF6C8;
  if (!qword_27F5DF6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DF6C8);
  }

  return result;
}

unint64_t sub_2542DEDF4()
{
  result = qword_27F5DF6D0;
  if (!qword_27F5DF6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DF6D0);
  }

  return result;
}

unint64_t sub_2542DEE4C()
{
  result = qword_27F5DF6D8;
  if (!qword_27F5DF6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DF6D8);
  }

  return result;
}

unint64_t sub_2542DEEA4()
{
  result = qword_27F5DF6E0;
  if (!qword_27F5DF6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DF6E0);
  }

  return result;
}

unint64_t sub_2542DEEFC()
{
  result = qword_27F5DF6E8;
  if (!qword_27F5DF6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DF6E8);
  }

  return result;
}

unint64_t sub_2542DEF54()
{
  result = qword_27F5DF6F0;
  if (!qword_27F5DF6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DF6F0);
  }

  return result;
}

unint64_t sub_2542DEFAC()
{
  result = qword_27F5DF6F8;
  if (!qword_27F5DF6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DF6F8);
  }

  return result;
}

unint64_t sub_2542DF004()
{
  result = qword_27F5DF700;
  if (!qword_27F5DF700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DF700);
  }

  return result;
}

unint64_t sub_2542DF05C()
{
  result = qword_27F5DF708;
  if (!qword_27F5DF708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DF708);
  }

  return result;
}

unint64_t sub_2542DF0B4()
{
  result = qword_27F5DF710;
  if (!qword_27F5DF710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DF710);
  }

  return result;
}

unint64_t sub_2542DF10C()
{
  result = qword_27F5DF718;
  if (!qword_27F5DF718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DF718);
  }

  return result;
}

unint64_t sub_2542DF164()
{
  result = qword_27F5DF720[0];
  if (!qword_27F5DF720[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F5DF720);
  }

  return result;
}

uint64_t sub_2542DF1BC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
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

uint64_t OUTLINED_FUNCTION_7_0()
{

  return sub_2543A3508();
}

uint64_t OUTLINED_FUNCTION_8_0()
{
  v2 = *(v0 - 208);

  return sub_2543A3458();
}

uint64_t OUTLINED_FUNCTION_13_0()
{

  return sub_2543A34D8();
}

uint64_t TransportSingleRequestHandler.init(handleRequest:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t TransportSingleRequestHandler.handle(_:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 48) = a3;
  *(v5 + 56) = a4;
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;
  *(v5 + 64) = *v4;
  return MEMORY[0x2822009F8](sub_2542DF3A4, 0, 0);
}

uint64_t sub_2542DF3A4()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v15 = *(v0 + 64);
  *(v0 + 16) = v15;
  sub_2543A3298();
  MEMORY[0x259C093D0](0x5F28656C646E6168, 0xEF293A6D6F72663ALL);
  MEMORY[0x259C093D0](0x7473657571657220, 0xE90000000000003DLL);
  v4 = *(v1 + 16);
  sub_2543A35C8();
  MEMORY[0x259C093D0](0x3D7265626D656D20, 0xE800000000000000);
  v5 = *(v1 + 24);
  sub_2543A35C8();
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  Logging.ulog(_:extended:)(v6, 0);

  v7 = v15;
  v16 = (v15 + *v15);
  v8 = *(v7 + 4);
  v9 = swift_task_alloc();
  *(v0 + 80) = v9;
  *v9 = v0;
  v9[1] = sub_2542DF590;
  v10 = *(v0 + 72);
  v11 = *(v0 + 40);
  v12 = *(v0 + 48);
  v13 = *(v0 + 32);

  return v16(v13, v11, v12);
}

uint64_t sub_2542DF590()
{
  v1 = *(*v0 + 80);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2542DF694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2542DF754;

  return TransportSingleRequestHandler.handle(_:from:)(a1, a2, a3, a4);
}

uint64_t sub_2542DF754()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2542DF848(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2542DF88C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2542DF8E0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2542DF920(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t TransportRequestIdentifier.hashValue.getter()
{
  sub_2543A36E8();
  MEMORY[0x259C0A1D0](0);
  return sub_2543A3728();
}

uint64_t sub_2542DFA34()
{
  sub_2543A36E8();
  MEMORY[0x259C0A1D0](0);
  return sub_2543A3728();
}

unint64_t sub_2542DFA78()
{
  result = qword_27F5DF7A8;
  if (!qword_27F5DF7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DF7A8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CarrySettings(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for TransportRequestIdentifier(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x2542DFBDCLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

id sub_2542DFF0C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  if (v3)
  {
    v4 = sub_2543A2858();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_2542DFFAC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  if (a3)
  {
    sub_2543A2878();
  }

  v7 = a1;
  v6 = OUTLINED_FUNCTION_4_1();
  a4(v6);
}

id sub_2542E003C()
{
  OUTLINED_FUNCTION_9_0(OBJC_IVAR___DeviceModelCoderContainer_groupID);
  OUTLINED_FUNCTION_9_0(OBJC_IVAR___DeviceModelCoderContainer_groupName);
  OUTLINED_FUNCTION_9_0(OBJC_IVAR___DeviceModelCoderContainer_model);
  OUTLINED_FUNCTION_9_0(OBJC_IVAR___DeviceModelCoderContainer_name);
  OUTLINED_FUNCTION_9_0(OBJC_IVAR___DeviceModelCoderContainer_pairID);
  OUTLINED_FUNCTION_9_0(OBJC_IVAR___DeviceModelCoderContainer_pairName);
  OUTLINED_FUNCTION_9_0(OBJC_IVAR___DeviceModelCoderContainer_roomID);
  v1 = &v0[OBJC_IVAR___DeviceModelCoderContainer_roomName];
  v2 = type metadata accessor for DeviceModelCoder.Container();
  *v1 = 0;
  *(v1 + 1) = 0;
  v4.receiver = v0;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_2542E0100(void *a1)
{
  v2 = v1;
  v4 = &v2[OBJC_IVAR___DeviceModelCoderContainer_groupID];
  *v4 = 0;
  v4[1] = 0;
  v5 = &v2[OBJC_IVAR___DeviceModelCoderContainer_groupName];
  *v5 = 0;
  v5[1] = 0;
  v6 = &v2[OBJC_IVAR___DeviceModelCoderContainer_model];
  *v6 = 0;
  v6[1] = 0;
  v7 = &v2[OBJC_IVAR___DeviceModelCoderContainer_name];
  *v7 = 0;
  v7[1] = 0;
  v8 = &v2[OBJC_IVAR___DeviceModelCoderContainer_pairID];
  *v8 = 0;
  v8[1] = 0;
  v9 = &v2[OBJC_IVAR___DeviceModelCoderContainer_pairName];
  *v9 = 0;
  v9[1] = 0;
  v10 = &v2[OBJC_IVAR___DeviceModelCoderContainer_roomID];
  *v10 = 0;
  v10[1] = 0;
  v11 = &v2[OBJC_IVAR___DeviceModelCoderContainer_roomName];
  *v11 = 0;
  v11[1] = 0;
  v12 = sub_25430D964();
  v13 = v4[1];
  *v4 = v12;
  v4[1] = v14;

  v15 = sub_25430D964();
  v16 = v5[1];
  *v5 = v15;
  v5[1] = v17;

  v18 = sub_25430D964();
  v19 = v6[1];
  *v6 = v18;
  v6[1] = v20;

  v21 = sub_25430D964();
  v22 = v7[1];
  *v7 = v21;
  v7[1] = v23;

  v24 = sub_25430D964();
  v25 = v8[1];
  *v8 = v24;
  v8[1] = v26;

  v27 = sub_25430D964();
  v28 = v9[1];
  *v9 = v27;
  v9[1] = v29;

  v30 = sub_25430D964();
  v31 = v10[1];
  *v10 = v30;
  v10[1] = v32;

  v33 = sub_25430D964();
  v34 = v11[1];
  *v11 = v33;
  v11[1] = v35;

  v38.receiver = v2;
  v38.super_class = type metadata accessor for DeviceModelCoder.Container();
  v36 = objc_msgSendSuper2(&v38, sel_init);

  return v36;
}

void sub_2542E0304(void *a1)
{
  OUTLINED_FUNCTION_10_1(OBJC_IVAR___DeviceModelCoderContainer_groupID);
  if (v3)
  {
    OUTLINED_FUNCTION_12_2(v5);
    OUTLINED_FUNCTION_4_1();
    sub_2543A2858();
    OUTLINED_FUNCTION_17_0();
  }

  else
  {
    v2 = 0;
  }

  v6 = sub_2543A2858();
  [a1 encodeObject:v2 forKey:v6];
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_10_1(OBJC_IVAR___DeviceModelCoderContainer_groupName);
  if (v6)
  {
    OUTLINED_FUNCTION_12_2(v7);
    OUTLINED_FUNCTION_4_1();
    sub_2543A2858();
    OUTLINED_FUNCTION_17_0();
  }

  v8 = sub_2543A2858();
  OUTLINED_FUNCTION_1_6(v8);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_10_1(OBJC_IVAR___DeviceModelCoderContainer_model);
  if (v6)
  {
    OUTLINED_FUNCTION_12_2(v9);
    OUTLINED_FUNCTION_4_1();
    sub_2543A2858();
    OUTLINED_FUNCTION_17_0();
  }

  v10 = sub_2543A2858();
  OUTLINED_FUNCTION_1_6(v10);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_10_1(OBJC_IVAR___DeviceModelCoderContainer_name);
  if (v6)
  {
    OUTLINED_FUNCTION_12_2(v11);
    OUTLINED_FUNCTION_4_1();
    sub_2543A2858();
    OUTLINED_FUNCTION_17_0();
  }

  v12 = sub_2543A2858();
  OUTLINED_FUNCTION_1_6(v12);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_10_1(OBJC_IVAR___DeviceModelCoderContainer_pairID);
  if (v6)
  {
    OUTLINED_FUNCTION_12_2(v13);
    OUTLINED_FUNCTION_4_1();
    sub_2543A2858();
    OUTLINED_FUNCTION_17_0();
  }

  v14 = sub_2543A2858();
  OUTLINED_FUNCTION_1_6(v14);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_10_1(OBJC_IVAR___DeviceModelCoderContainer_pairName);
  if (v6)
  {
    OUTLINED_FUNCTION_12_2(v15);
    OUTLINED_FUNCTION_4_1();
    sub_2543A2858();
    OUTLINED_FUNCTION_17_0();
  }

  v16 = sub_2543A2858();
  OUTLINED_FUNCTION_1_6(v16);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_10_1(OBJC_IVAR___DeviceModelCoderContainer_roomID);
  if (v6)
  {
    OUTLINED_FUNCTION_12_2(v17);
    OUTLINED_FUNCTION_4_1();
    sub_2543A2858();
    OUTLINED_FUNCTION_17_0();
  }

  v18 = sub_2543A2858();
  OUTLINED_FUNCTION_1_6(v18);
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR___DeviceModelCoderContainer_roomName + 8))
  {
    v19 = *(v1 + OBJC_IVAR___DeviceModelCoderContainer_roomName);
    sub_2543A2768();
    v20 = sub_2543A2858();
  }

  else
  {
    v20 = 0;
  }

  v21 = sub_2543A2858();
  [a1 encodeObject:v20 forKey:v21];
  swift_unknownObjectRelease();
}

void sub_2542E06EC(uint64_t a1, uint64_t a2, void *a3)
{
  sub_2542E100C();
  sub_2543A3048();
  if (v3)
  {
    return;
  }

  if (!v30)
  {
    sub_2542E1050(v29);
    goto LABEL_8;
  }

  type metadata accessor for DeviceModelCoder.Container();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    sub_2542E10B8();
    swift_allocError();
    *v11 = 0;
    swift_willThrow();
    return;
  }

  v5 = swift_dynamicCastObjCProtocolConditional();
  if (v5)
  {
    v6 = v5;
    v7 = *&v28[OBJC_IVAR___DeviceModelCoderContainer_groupID + 8];
    if (v7)
    {
      v8 = *&v28[OBJC_IVAR___DeviceModelCoderContainer_groupID];
      v9 = a3;
      sub_2543A2768();
      v10 = sub_2543A2858();
    }

    else
    {
      v13 = a3;
      v10 = 0;
    }

    [v6 setGroupID_];

    OUTLINED_FUNCTION_7_1(OBJC_IVAR___DeviceModelCoderContainer_groupName);
    if (v10)
    {
      OUTLINED_FUNCTION_13_1(v15);
      OUTLINED_FUNCTION_15_0();
      v14 = OUTLINED_FUNCTION_11_1();
    }

    else
    {
      v7 = 0;
    }

    OUTLINED_FUNCTION_16_0(v14, sel_setGroupName_);

    OUTLINED_FUNCTION_7_1(OBJC_IVAR___DeviceModelCoderContainer_model);
    if (v10)
    {
      OUTLINED_FUNCTION_13_1(v17);
      OUTLINED_FUNCTION_15_0();
      v16 = OUTLINED_FUNCTION_11_1();
    }

    else
    {
      v7 = 0;
    }

    OUTLINED_FUNCTION_16_0(v16, sel_setModel_);

    OUTLINED_FUNCTION_7_1(OBJC_IVAR___DeviceModelCoderContainer_name);
    if (v10)
    {
      OUTLINED_FUNCTION_13_1(v19);
      OUTLINED_FUNCTION_15_0();
      v18 = OUTLINED_FUNCTION_11_1();
    }

    else
    {
      v7 = 0;
    }

    OUTLINED_FUNCTION_16_0(v18, sel_setName_);

    OUTLINED_FUNCTION_7_1(OBJC_IVAR___DeviceModelCoderContainer_pairID);
    if (v10)
    {
      OUTLINED_FUNCTION_13_1(v21);
      OUTLINED_FUNCTION_15_0();
      v20 = OUTLINED_FUNCTION_11_1();
    }

    else
    {
      v7 = 0;
    }

    OUTLINED_FUNCTION_16_0(v20, sel_setPairID_);

    OUTLINED_FUNCTION_7_1(OBJC_IVAR___DeviceModelCoderContainer_pairName);
    if (v10)
    {
      OUTLINED_FUNCTION_13_1(v23);
      OUTLINED_FUNCTION_15_0();
      v22 = OUTLINED_FUNCTION_11_1();
    }

    else
    {
      v7 = 0;
    }

    OUTLINED_FUNCTION_16_0(v22, sel_setPairName_);

    OUTLINED_FUNCTION_7_1(OBJC_IVAR___DeviceModelCoderContainer_roomID);
    if (v10)
    {
      OUTLINED_FUNCTION_13_1(v25);
      OUTLINED_FUNCTION_15_0();
      v24 = OUTLINED_FUNCTION_11_1();
    }

    else
    {
      v7 = 0;
    }

    OUTLINED_FUNCTION_16_0(v24, sel_setRoomID_);

    OUTLINED_FUNCTION_7_1(OBJC_IVAR___DeviceModelCoderContainer_roomName);
    if (v10)
    {
      OUTLINED_FUNCTION_13_1(v27);
      OUTLINED_FUNCTION_15_0();
      v26 = OUTLINED_FUNCTION_11_1();
    }

    else
    {
      v7 = 0;
    }

    OUTLINED_FUNCTION_16_0(v26, sel_setRoomName_);
  }

  else
  {
    sub_2542E10B8();
    swift_allocError();
    *v12 = 1;
    swift_willThrow();
  }
}

void *sub_2542E0AD4(void *a1)
{
  v20[2] = *MEMORY[0x277D85DE8];
  v20[1] = &unk_286659830;
  v3 = swift_dynamicCastObjCProtocolConditional();
  if (v3)
  {
    v4 = v3;
    v5 = objc_allocWithZone(type metadata accessor for DeviceModelCoder.Container());
    v6 = a1;
    v7 = [v5 init];
    if ([v4 groupID])
    {
      sub_2543A2878();
      OUTLINED_FUNCTION_14_1();
    }

    else
    {
      OUTLINED_FUNCTION_8_1();
    }

    OUTLINED_FUNCTION_3_0(OBJC_IVAR___DeviceModelCoderContainer_groupID);
    if ([v4 groupName])
    {
      sub_2543A2878();
      OUTLINED_FUNCTION_14_1();
    }

    else
    {
      OUTLINED_FUNCTION_8_1();
    }

    OUTLINED_FUNCTION_3_0(OBJC_IVAR___DeviceModelCoderContainer_groupName);
    if ([v4 model])
    {
      sub_2543A2878();
      OUTLINED_FUNCTION_14_1();
    }

    else
    {
      OUTLINED_FUNCTION_8_1();
    }

    OUTLINED_FUNCTION_3_0(OBJC_IVAR___DeviceModelCoderContainer_model);
    if ([v4 name])
    {
      sub_2543A2878();
      OUTLINED_FUNCTION_14_1();
    }

    else
    {
      OUTLINED_FUNCTION_8_1();
    }

    OUTLINED_FUNCTION_3_0(OBJC_IVAR___DeviceModelCoderContainer_name);
    if ([v4 pairID])
    {
      sub_2543A2878();
      OUTLINED_FUNCTION_14_1();
    }

    else
    {
      OUTLINED_FUNCTION_8_1();
    }

    OUTLINED_FUNCTION_3_0(OBJC_IVAR___DeviceModelCoderContainer_pairID);
    if ([v4 pairName])
    {
      sub_2543A2878();
      OUTLINED_FUNCTION_14_1();
    }

    else
    {
      OUTLINED_FUNCTION_8_1();
    }

    OUTLINED_FUNCTION_3_0(OBJC_IVAR___DeviceModelCoderContainer_pairName);
    if ([v4 roomID])
    {
      sub_2543A2878();
      OUTLINED_FUNCTION_14_1();
    }

    else
    {
      OUTLINED_FUNCTION_8_1();
    }

    OUTLINED_FUNCTION_3_0(OBJC_IVAR___DeviceModelCoderContainer_roomID);
    v9 = [v4 roomName];
    if (v9)
    {
      v10 = v9;
      v11 = sub_2543A2878();
      v13 = v12;
    }

    else
    {
      v11 = 0;
      v13 = 0;
    }

    v14 = &v7[OBJC_IVAR___DeviceModelCoderContainer_roomName];
    v15 = *&v7[OBJC_IVAR___DeviceModelCoderContainer_roomName + 8];
    *v14 = v11;
    v14[1] = v13;

    v20[0] = 0;
    v16 = [objc_opt_self() archivedDataWithRootObject:v7 requiringSecureCoding:1 error:v20];
    v17 = v20[0];
    if (v16)
    {
      v1 = sub_2543A1EF8();
    }

    else
    {
      v1 = v17;
      sub_2543A1E88();

      swift_willThrow();
    }
  }

  else
  {
    sub_2542E10B8();
    swift_allocError();
    *v8 = 1;
    swift_willThrow();
  }

  v18 = *MEMORY[0x277D85DE8];
  return v1;
}

id sub_2542E0F1C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeviceModelCoder();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_2542E0F8C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_2542E100C()
{
  result = qword_27F5DF800;
  if (!qword_27F5DF800)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F5DF800);
  }

  return result;
}

uint64_t sub_2542E1050(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5DFA00, &unk_2543A76C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2542E10B8()
{
  result = qword_27F5DF810;
  if (!qword_27F5DF810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DF810);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (v3 + a3);
  v5 = *(v3 + a3 + 8);
  *v4 = a1;
  v4[1] = a2;
}

id OUTLINED_FUNCTION_1_6(uint64_t a1)
{

  return [v1 (v3 + 3842)];
}

uint64_t OUTLINED_FUNCTION_2_2@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v4 = *v3;
  v5 = v3[1];

  return sub_2543A2768();
}

uint64_t OUTLINED_FUNCTION_3_0@<X0>(uint64_t a1@<X8>)
{
  v5 = (v1 + a1);
  v6 = v5[1];
  *v5 = v2;
  v5[1] = v3;
}

void OUTLINED_FUNCTION_9_0(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

uint64_t OUTLINED_FUNCTION_11_1()
{
}

uint64_t OUTLINED_FUNCTION_12_2@<X0>(uint64_t *a1@<X8>)
{
  v2 = *a1;

  return sub_2543A2768();
}

uint64_t OUTLINED_FUNCTION_13_1@<X0>(uint64_t *a1@<X8>)
{
  v2 = *a1;

  return sub_2543A2768();
}

void OUTLINED_FUNCTION_14_1()
{
}

uint64_t OUTLINED_FUNCTION_15_0()
{

  return sub_2543A2858();
}

id OUTLINED_FUNCTION_16_0(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_17_0()
{
}

uint64_t TimersObservationUpdate.update.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  return sub_2542E12A8(v2, v3);
}

uint64_t sub_2542E12A8(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_2543A2768();
  }

  return result;
}

uint64_t TimersObservationUpdate.init(timers:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2542E12C0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x657461647075 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2543A3608();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2542E135C()
{
  sub_2543A36E8();
  MEMORY[0x259C0A1D0](0);
  return sub_2543A3728();
}

uint64_t sub_2542E13C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2542E12C0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2542E13F0(uint64_t a1)
{
  v2 = sub_2542E15FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2542E142C(uint64_t a1)
{
  v2 = sub_2542E15FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TimersObservationUpdate.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF880, &qword_2543A76E8);
  v4 = OUTLINED_FUNCTION_3(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = &v15 - v9;
  v11 = *v1;
  v12 = *(v1 + 8);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2542E12A8(v11, v12);
  sub_2542E15FC();
  sub_2543A3778();
  v15 = v11;
  v16 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF890, &qword_2543A76F0);
  sub_2542E17F8(&qword_27F5DF898);
  sub_2543A3578();
  sub_2542E1650(v15, v16);
  return (*(v6 + 8))(v10, v3);
}

unint64_t sub_2542E15FC()
{
  result = qword_27F5DF888;
  if (!qword_27F5DF888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DF888);
  }

  return result;
}

uint64_t sub_2542E1650(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t TimersObservationUpdate.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF8A0, &qword_2543A76F8);
  v6 = OUTLINED_FUNCTION_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v16 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2542E15FC();
  sub_2543A3768();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF890, &qword_2543A76F0);
    sub_2542E17F8(&qword_27F5DF8A8);
    sub_2543A34D8();
    (*(v8 + 8))(v12, v5);
    v14 = v17;
    *a2 = v16;
    *(a2 + 8) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_2542E17F8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5DF890, &qword_2543A76F0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2542E1848(uint64_t a1)
{
  result = sub_2542E1870();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2542E1870()
{
  result = qword_27F5DF8B0;
  if (!qword_27F5DF8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DF8B0);
  }

  return result;
}

uint64_t sub_2542E18E8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5DF8C0, &qword_2543A7720);
    sub_2542E19C0(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2542E19C0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HPTimer(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2542E1AB4(uint64_t a1)
{
  result = sub_2542E1ADC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2542E1ADC()
{
  result = qword_27F5DF8F0;
  if (!qword_27F5DF8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DF8F0);
  }

  return result;
}

unint64_t sub_2542E1B40()
{
  result = qword_27F5DF8F8;
  if (!qword_27F5DF8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DF8F8);
  }

  return result;
}

unint64_t sub_2542E1BB4(uint64_t a1)
{
  result = sub_2542E1BDC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2542E1BDC()
{
  result = qword_27F5DF900;
  if (!qword_27F5DF900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DF900);
  }

  return result;
}

unint64_t sub_2542E1C30(uint64_t a1)
{
  *(a1 + 8) = sub_2542E1C60();
  result = sub_2542E1CB4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2542E1C60()
{
  result = qword_27F5DF908;
  if (!qword_27F5DF908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DF908);
  }

  return result;
}

unint64_t sub_2542E1CB4()
{
  result = qword_27F5DF910;
  if (!qword_27F5DF910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DF910);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_2542E1D58(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2542E1D98(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TimersObservationUpdate.CodingKeys(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x2542E1E88);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2542E1EC4()
{
  result = qword_27F5DF918;
  if (!qword_27F5DF918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DF918);
  }

  return result;
}

unint64_t sub_2542E1F1C()
{
  result = qword_27F5DF920;
  if (!qword_27F5DF920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DF920);
  }

  return result;
}

unint64_t sub_2542E1F74()
{
  result = qword_27F5DF928;
  if (!qword_27F5DF928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DF928);
  }

  return result;
}

uint64_t sub_2542E202C()
{
  v1 = *(v0 + OBJC_IVAR___HPSAssertion_assertionContext);
  v2 = *(v0 + OBJC_IVAR___HPSAssertion_assertionContext + 8);
  sub_2543A2768();
  return v1;
}

char *Assertion.__allocating_init(identifier:assertionType:connectionProvider:)()
{
  OUTLINED_FUNCTION_4_2();
  v1 = objc_allocWithZone(v0);
  return Assertion.init(identifier:assertionType:connectionProvider:)();
}

char *Assertion.init(identifier:assertionType:connectionProvider:)()
{
  OUTLINED_FUNCTION_4_2();
  sub_2543A1FA8();
  v5 = &v1[OBJC_IVAR___HPSAssertion_assertionInvalidationHandler];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &v1[OBJC_IVAR___HPSAssertion_assertionContext];
  *v6 = v4;
  *(v6 + 1) = v3;
  *(v6 + 2) = v2;
  if (v0)
  {
    v7 = v0;
  }

  else
  {
    v7 = [objc_allocWithZone(type metadata accessor for Assertion.ServiceDetails()) init];
  }

  *&v1[OBJC_IVAR___HPSAssertion_connectionProvider] = v7;
  swift_unknownObjectRetain();
  v8 = [v7 serviceConnection];
  *&v1[OBJC_IVAR___HPSAssertion_connection] = v8;
  v31.receiver = v1;
  v31.super_class = type metadata accessor for Assertion();
  v9 = objc_msgSendSuper2(&v31, sel_init);
  v10 = OBJC_IVAR___HPSAssertion_connection;
  v11 = *&v9[OBJC_IVAR___HPSAssertion_connection];
  OUTLINED_FUNCTION_67();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = sub_2542E2794;
  v30 = v12;
  v25 = MEMORY[0x277D85DD0];
  v26 = 1107296256;
  v27 = sub_2542E279C;
  v28 = &block_descriptor_0;
  v13 = _Block_copy(&v25);
  v14 = v9;
  v15 = v11;

  [v15 setInterruptionHandler_];
  _Block_release(v13);

  v16 = *&v9[v10];
  OUTLINED_FUNCTION_67();
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = v16;

  v29 = sub_2542E29B4;
  v30 = v17;
  v25 = MEMORY[0x277D85DD0];
  v26 = 1107296256;
  v27 = sub_2542E279C;
  v28 = &block_descriptor_4;
  v19 = _Block_copy(&v25);

  [v18 setInvalidationHandler_];
  _Block_release(v19);

  v20 = *&v9[v10];
  v21 = objc_opt_self();
  v22 = v20;
  v23 = [v21 interfaceWithProtocol_];
  [v22 setRemoteObjectInterface_];

  [*&v9[v10] resume];
  sub_2542E3578();

  swift_unknownObjectRelease();
  return v14;
}

uint64_t type metadata accessor for Assertion()
{
  result = qword_27F5DF970;
  if (!qword_27F5DF970)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2542E2454()
{
  MEMORY[0x259C0AE60](v0 + 16);
  OUTLINED_FUNCTION_67();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

void sub_2542E2488()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_2543A1F98();
    v3 = sub_2543A2FF8();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      *v4 = 136315138;
      v6 = [*&v1[OBJC_IVAR___HPSAssertion_connection] serviceName];
      if (v6)
      {
        v7 = v6;
        sub_2543A2878();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF998, &qword_2543AEC50);
      sub_2543A2888();
      v8 = sub_2542D5198();

      *(v4 + 4) = v8;
      _os_log_impl(&dword_2542B7000, v2, v3, "Assertion interruptHandler for %s", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v5);
      MEMORY[0x259C0AD90](v5, -1, -1);
      MEMORY[0x259C0AD90](v4, -1, -1);
    }

    v9 = &v1[OBJC_IVAR___HPSAssertion_assertionInvalidationHandler];
    v10 = *&v1[OBJC_IVAR___HPSAssertion_assertionInvalidationHandler];
    if (v10)
    {
      v11 = v9[1];

      v12 = sub_2543A1F98();
      v13 = sub_2543A2FF8();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_2542B7000, v12, v13, "Assertion invalidation had already been attempted. Won't retake assertion.", v14, 2u);
        MEMORY[0x259C0AD90](v14, -1, -1);
      }

      sub_2542E3864();
      v15 = swift_allocError();
      *v16 = 1;
      v10(v15, v16);

      sub_2542D7A3C(v10);
    }

    else
    {
      v17 = sub_2543A1F98();
      v18 = sub_2543A3008();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_2542B7000, v17, v18, "Retaking assertion.", v19, 2u);
        MEMORY[0x259C0AD90](v19, -1, -1);
      }

      sub_2542E3578();
    }

    v20 = *v9;
    v21 = v9[1];
    *v9 = 0;
    v9[1] = 0;
    sub_2542D7A3C(v20);
  }
}

uint64_t sub_2542E279C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_2542E27F8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_2543A1F98();
    v3 = sub_2543A2FF8();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      *v4 = 136315138;
      v6 = [*&v1[OBJC_IVAR___HPSAssertion_connection] serviceName];
      if (v6)
      {
        v7 = v6;
        sub_2543A2878();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF998, &qword_2543AEC50);
      sub_2543A2888();
      v8 = sub_2542D5198();

      *(v4 + 4) = v8;
      _os_log_impl(&dword_2542B7000, v2, v3, "Assertion invalidationHandler for %s", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v5);
      MEMORY[0x259C0AD90](v5, -1, -1);
      MEMORY[0x259C0AD90](v4, -1, -1);
    }

    v9 = &v1[OBJC_IVAR___HPSAssertion_assertionInvalidationHandler];
    v10 = *&v1[OBJC_IVAR___HPSAssertion_assertionInvalidationHandler];
    v11 = *&v1[OBJC_IVAR___HPSAssertion_assertionInvalidationHandler + 8];
    *v9 = 0;
    *(v9 + 1) = 0;
    sub_2542D7A3C(v10);
  }
}

void sub_2542E2A84(char *a1, void (**a2)(void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  _Block_copy(a2);
  v5 = sub_2543A1F98();
  v6 = sub_2543A3008();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    aBlock = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_2542D5198();
    _os_log_impl(&dword_2542B7000, v5, v6, "%s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x259C0AD90](v8, -1, -1);
    MEMORY[0x259C0AD90](v7, -1, -1);
  }

  v9 = &a1[OBJC_IVAR___HPSAssertion_assertionInvalidationHandler];
  v10 = *&a1[OBJC_IVAR___HPSAssertion_assertionInvalidationHandler];
  v11 = *&a1[OBJC_IVAR___HPSAssertion_assertionInvalidationHandler + 8];
  *v9 = sub_2542E409C;
  v9[1] = v4;

  sub_2542D7A3C(v10);
  v12 = *&a1[OBJC_IVAR___HPSAssertion_connection];
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  v31 = sub_2542E41C0;
  v32 = v13;
  aBlock = MEMORY[0x277D85DD0];
  v28 = 1107296256;
  v29 = sub_2542E33DC;
  v30 = &block_descriptor_37;
  v14 = _Block_copy(&aBlock);
  v15 = a1;

  v16 = [v12 remoteObjectProxyWithErrorHandler_];
  _Block_release(v14);
  sub_2543A3158();
  swift_unknownObjectRelease();
  sub_2542D62F0(v33, &aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF958, &qword_2543A79A8);
  if (swift_dynamicCast())
  {
    v17 = *&v15[OBJC_IVAR___HPSAssertion_assertionContext + 16];
    v31 = sub_2542E409C;
    v32 = v4;
    aBlock = MEMORY[0x277D85DD0];
    v28 = 1107296256;
    v29 = sub_2542E3444;
    v30 = &block_descriptor_40;
    v18 = _Block_copy(&aBlock);

    [v26 invalidateAssertionOfType:v17 withCompletion:v18];
    _Block_release(v18);
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = sub_2543A1F98();
    v20 = sub_2543A2FF8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      aBlock = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_2542D5198();
      _os_log_impl(&dword_2542B7000, v19, v20, "Unexpected service type. Was expecting %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x259C0AD90](v22, -1, -1);
      MEMORY[0x259C0AD90](v21, -1, -1);
    }

    sub_2542E3864();
    v23 = swift_allocError();
    *v24 = 0;
    v25 = sub_2543A1E78();
    (a2)[2](a2, v25);
  }

  __swift_destroy_boxed_opaque_existential_0(v33);

  _Block_release(a2);
}

uint64_t sub_2542E2EFC(void (*a1)(void), void (*a2)(void))
{
  v3 = v2;
  v6 = sub_2543A1F98();
  v7 = sub_2543A3008();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    aBlock = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_2542D5198();
    _os_log_impl(&dword_2542B7000, v6, v7, "%s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x259C0AD90](v9, -1, -1);
    OUTLINED_FUNCTION_3_1();
  }

  v10 = &v3[OBJC_IVAR___HPSAssertion_assertionInvalidationHandler];
  v11 = *&v3[OBJC_IVAR___HPSAssertion_assertionInvalidationHandler];
  v12 = *&v3[OBJC_IVAR___HPSAssertion_assertionInvalidationHandler + 8];
  *v10 = a1;
  v10[1] = a2;

  sub_2542D7A3C(v11);
  v13 = *&v3[OBJC_IVAR___HPSAssertion_connection];
  OUTLINED_FUNCTION_67();
  *(swift_allocObject() + 16) = v3;
  OUTLINED_FUNCTION_0_5();
  v29 = 1107296256;
  OUTLINED_FUNCTION_1_7();
  v30 = v14;
  v31 = &block_descriptor_10;
  v15 = _Block_copy(&aBlock);
  v16 = v3;

  v17 = [v13 remoteObjectProxyWithErrorHandler_];
  _Block_release(v15);
  sub_2543A3158();
  swift_unknownObjectRelease();
  sub_2542D62F0(v34, &aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF958, &qword_2543A79A8);
  if (swift_dynamicCast())
  {
    v18 = *&v16[OBJC_IVAR___HPSAssertion_assertionContext + 16];
    v32 = a1;
    v33 = a2;
    aBlock = MEMORY[0x277D85DD0];
    v29 = 1107296256;
    v30 = sub_2542E3444;
    v31 = &block_descriptor_13;
    v19 = _Block_copy(&aBlock);

    [v27 invalidateAssertionOfType:v18 withCompletion:v19];
    _Block_release(v19);
    swift_unknownObjectRelease();
  }

  else
  {
    v20 = sub_2543A1F98();
    v21 = sub_2543A2FF8();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      aBlock = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_2542D5198();
      _os_log_impl(&dword_2542B7000, v20, v21, "Unexpected service type. Was expecting %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      OUTLINED_FUNCTION_3_1();
      MEMORY[0x259C0AD90](v22, -1, -1);
    }

    sub_2542E3864();
    v24 = swift_allocError();
    *v25 = 0;
    a1();
  }

  return __swift_destroy_boxed_opaque_existential_0(v34);
}

void sub_2542E32CC(void *a1)
{
  v2 = a1;
  oslog = sub_2543A1F98();
  v3 = sub_2543A2FF8();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    v6 = a1;
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v7;
    *v5 = v7;
    _os_log_impl(&dword_2542B7000, oslog, v3, "Error in connection: %@", v4, 0xCu);
    sub_2542E40D8(v5);
    MEMORY[0x259C0AD90](v5, -1, -1);
    MEMORY[0x259C0AD90](v4, -1, -1);
  }
}

void sub_2542E33DC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_2542E3444(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void sub_2542E3514(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_2543A1E78();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_2542E3578()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR___HPSAssertion_assertionInvalidationHandler];
  v3 = *&v0[OBJC_IVAR___HPSAssertion_assertionInvalidationHandler];
  v4 = *&v0[OBJC_IVAR___HPSAssertion_assertionInvalidationHandler + 8];
  *v2 = 0;
  *(v2 + 1) = 0;
  sub_2542D7A3C(v3);
  v6 = *&v0[OBJC_IVAR___HPSAssertion_assertionContext];
  v5 = *&v0[OBJC_IVAR___HPSAssertion_assertionContext + 8];
  v7 = *&v0[OBJC_IVAR___HPSAssertion_assertionContext + 16];
  sub_2543A2768();
  v8 = sub_2543A1F98();
  v9 = sub_2543A3008();

  v21 = v7;
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    aBlock[0] = v11;
    *v10 = 136315650;
    *(v10 + 4) = sub_2542D5198();
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_2542D5198();
    *(v10 + 22) = 2080;
    v22 = v7;
    type metadata accessor for AssertionType();
    sub_2543A2888();
    v12 = sub_2542D5198();

    *(v10 + 24) = v12;
    _os_log_impl(&dword_2542B7000, v8, v9, "%s identifier: %s, type: %s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x259C0AD90](v11, -1, -1);
    OUTLINED_FUNCTION_3_1();
  }

  v13 = *&v1[OBJC_IVAR___HPSAssertion_connection];
  v14 = swift_allocObject();
  v14[2] = v1;
  v14[3] = v6;
  v14[4] = v5;
  OUTLINED_FUNCTION_0_5();
  aBlock[1] = 1107296256;
  OUTLINED_FUNCTION_1_7();
  aBlock[2] = v15;
  aBlock[3] = &block_descriptor_46;
  v16 = _Block_copy(aBlock);
  sub_2543A2768();
  v17 = v1;

  v18 = [v13 remoteObjectProxyWithErrorHandler_];
  _Block_release(v16);
  sub_2543A3158();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF958, &qword_2543A79A8);
  result = swift_dynamicCast();
  if (result)
  {
    swift_unknownObjectRetain();
    v20 = sub_2543A2858();
    [v22 takeAssertionWithIdentifier:v20 forAssertion:v21];

    return swift_unknownObjectRelease_n();
  }

  return result;
}

unint64_t sub_2542E3864()
{
  result = qword_27F5DF960;
  if (!qword_27F5DF960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DF960);
  }

  return result;
}

void sub_2542E38B8(void *a1)
{
  sub_2543A2768();
  v2 = a1;
  oslog = sub_2543A1F98();
  v3 = sub_2543A2FF8();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v4 = 136315394;
    *(v4 + 4) = sub_2542D5198();
    *(v4 + 12) = 2080;
    v5 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF1E0, &qword_2543A67A0);
    sub_2543A2888();
    v6 = sub_2542D5198();

    *(v4 + 14) = v6;
    _os_log_impl(&dword_2542B7000, oslog, v3, "Error on connection for %s, Error: %s", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C0AD90](v8, -1, -1);
    MEMORY[0x259C0AD90](v4, -1, -1);
  }

  else
  {
  }
}

id Assertion.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_2542E3BF4()
{
  v1 = OBJC_IVAR____TtCC15HomePodSettings9Assertion14ServiceDetails_connection;
  sub_2542E4024();
  v2 = sub_2543A2878();
  *&v0[v1] = sub_25432C9E4(v2, v3, 4096);
  v5.receiver = v0;
  v5.super_class = type metadata accessor for Assertion.ServiceDetails();
  return objc_msgSendSuper2(&v5, sel_init);
}

id sub_2542E3CA8(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_2542E3CF8()
{
  result = sub_2543A1FB8();
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2542E3E90(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_2542E3ED0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15HomePodSettings9AssertionC0D5ErrorO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2542E3F44(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2542E3F98(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_2542E3FF4(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

unint64_t sub_2542E4024()
{
  result = qword_27F5DF990;
  if (!qword_27F5DF990)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F5DF990);
  }

  return result;
}

uint64_t sub_2542E4068()
{
  _Block_release(*(v0 + 16));
  OUTLINED_FUNCTION_67();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2542E40A4()
{
  OUTLINED_FUNCTION_67();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2542E40D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5DF308, &unk_2543A6888);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2542E4140()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_2542E4180(void *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  sub_2542E38B8(a1);
}

void OUTLINED_FUNCTION_3_1()
{

  JUMPOUT(0x259C0AD90);
}

uint64_t BetaEnrollment.IdentifyResponse.availability.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR___HPSBetaEnrollmentIdentifyResponse_availability;
  OUTLINED_FUNCTION_4_3();
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t BetaEnrollment.IdentifyResponse.availability.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR___HPSBetaEnrollmentIdentifyResponse_availability;
  OUTLINED_FUNCTION_4_3();
  result = OUTLINED_FUNCTION_3_2();
  *(v1 + v3) = v2;
  return result;
}

id sub_2542E43CC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  if (v3)
  {
    v4 = sub_2543A2858();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_2542E444C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  if (a3)
  {
    v6 = sub_2543A2878();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a1;
  a4(v6, v8);
}

uint64_t sub_2542E4834(uint64_t *a1)
{
  v2 = *a1;
  OUTLINED_FUNCTION_6_2();
  v4 = *v1;
  v3 = v1[1];
  sub_2543A2768();
  return v4;
}

uint64_t sub_2542E4898(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  OUTLINED_FUNCTION_3_2();
  v7 = v6[1];
  *v6 = a1;
  v6[1] = a2;
}

uint64_t BetaEnrollment.IdentifyResponse.state.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR___HPSBetaEnrollmentIdentifyResponse_state;
  OUTLINED_FUNCTION_4_3();
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t BetaEnrollment.IdentifyResponse.state.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR___HPSBetaEnrollmentIdentifyResponse_state;
  OUTLINED_FUNCTION_4_3();
  result = OUTLINED_FUNCTION_3_2();
  *(v1 + v3) = v2;
  return result;
}

uint64_t BetaEnrollment.IdentifyResponse.enrolledProgramID.getter()
{
  OUTLINED_FUNCTION_6_2();
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t BetaEnrollment.IdentifyResponse.enrolledProgramID.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR___HPSBetaEnrollmentIdentifyResponse_enrolledProgramID;
  result = OUTLINED_FUNCTION_3_2();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t BetaEnrollment.IdentifyResponse.availablePrograms.getter()
{
  v1 = OBJC_IVAR___HPSBetaEnrollmentIdentifyResponse_availablePrograms;
  swift_beginAccess();
  v2 = *(v0 + v1);
  return sub_2543A2768();
}

uint64_t BetaEnrollment.IdentifyResponse.availablePrograms.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___HPSBetaEnrollmentIdentifyResponse_availablePrograms;
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_3_2();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id BetaEnrollment.IdentifyResponse.init(availability:groupID:groupName:model:name:pairID:pairName:roomID:roomName:state:enrolledProgramID:availablePrograms:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char *a18, uint64_t a19, char a20, uint64_t a21)
{
  ObjectType = swift_getObjectType();
  v40 = *a1;
  v51 = *a18;
  v23 = OBJC_IVAR___HPSBetaEnrollmentIdentifyResponse_availability;
  v21[OBJC_IVAR___HPSBetaEnrollmentIdentifyResponse_availability] = 2;
  v24 = &v21[OBJC_IVAR___HPSBetaEnrollmentIdentifyResponse_groupID];
  *v24 = 0;
  v24[1] = 0;
  v25 = &v21[OBJC_IVAR___HPSBetaEnrollmentIdentifyResponse_groupName];
  *v25 = 0;
  v25[1] = 0;
  v26 = &v21[OBJC_IVAR___HPSBetaEnrollmentIdentifyResponse_model];
  *v26 = 0;
  v26[1] = 0;
  v27 = &v21[OBJC_IVAR___HPSBetaEnrollmentIdentifyResponse_name];
  *v27 = 0;
  v27[1] = 0;
  v28 = &v21[OBJC_IVAR___HPSBetaEnrollmentIdentifyResponse_pairID];
  *v28 = 0;
  v28[1] = 0;
  v29 = &v21[OBJC_IVAR___HPSBetaEnrollmentIdentifyResponse_pairName];
  *v29 = 0;
  v29[1] = 0;
  v30 = &v21[OBJC_IVAR___HPSBetaEnrollmentIdentifyResponse_roomID];
  *v30 = 0;
  v30[1] = 0;
  v31 = &v21[OBJC_IVAR___HPSBetaEnrollmentIdentifyResponse_roomName];
  *v31 = 0;
  v31[1] = 0;
  v47 = OBJC_IVAR___HPSBetaEnrollmentIdentifyResponse_state;
  v21[OBJC_IVAR___HPSBetaEnrollmentIdentifyResponse_state] = 5;
  v48 = &v21[OBJC_IVAR___HPSBetaEnrollmentIdentifyResponse_enrolledProgramID];
  *v48 = 0;
  v48[8] = 1;
  v50 = OBJC_IVAR___HPSBetaEnrollmentIdentifyResponse_availablePrograms;
  *&v21[OBJC_IVAR___HPSBetaEnrollmentIdentifyResponse_availablePrograms] = 0;
  OUTLINED_FUNCTION_3_2();
  v21[v23] = v40;
  OUTLINED_FUNCTION_3_2();
  *v24 = a2;
  v24[1] = a3;
  OUTLINED_FUNCTION_3_2();
  *v25 = a4;
  v25[1] = a5;
  OUTLINED_FUNCTION_3_2();
  v32 = v26[1];
  *v26 = a6;
  v26[1] = a7;

  OUTLINED_FUNCTION_3_2();
  v33 = v27[1];
  *v27 = a8;
  v27[1] = a9;

  OUTLINED_FUNCTION_3_2();
  v34 = v28[1];
  *v28 = a10;
  v28[1] = a11;

  OUTLINED_FUNCTION_3_2();
  v35 = v29[1];
  *v29 = a12;
  v29[1] = a13;

  OUTLINED_FUNCTION_3_2();
  v36 = v30[1];
  *v30 = a14;
  v30[1] = a15;

  OUTLINED_FUNCTION_3_2();
  v37 = v31[1];
  *v31 = a16;
  v31[1] = a17;

  OUTLINED_FUNCTION_3_2();
  v21[v47] = v51;
  OUTLINED_FUNCTION_3_2();
  *v48 = a19;
  v48[8] = a20 & 1;
  OUTLINED_FUNCTION_3_2();
  v38 = *&v21[v50];
  *&v21[v50] = a21;

  v53.receiver = v21;
  v53.super_class = ObjectType;
  return objc_msgSendSuper2(&v53, sel_init);
}

id sub_2542E4FC8(void *a1)
{
  swift_getObjectType();
  v1[OBJC_IVAR___HPSBetaEnrollmentIdentifyResponse_availability] = 2;
  OUTLINED_FUNCTION_9_0(OBJC_IVAR___HPSBetaEnrollmentIdentifyResponse_groupID);
  OUTLINED_FUNCTION_9_0(OBJC_IVAR___HPSBetaEnrollmentIdentifyResponse_groupName);
  OUTLINED_FUNCTION_9_0(OBJC_IVAR___HPSBetaEnrollmentIdentifyResponse_model);
  OUTLINED_FUNCTION_9_0(OBJC_IVAR___HPSBetaEnrollmentIdentifyResponse_name);
  OUTLINED_FUNCTION_9_0(OBJC_IVAR___HPSBetaEnrollmentIdentifyResponse_pairID);
  OUTLINED_FUNCTION_9_0(OBJC_IVAR___HPSBetaEnrollmentIdentifyResponse_pairName);
  OUTLINED_FUNCTION_9_0(OBJC_IVAR___HPSBetaEnrollmentIdentifyResponse_roomID);
  OUTLINED_FUNCTION_9_0(OBJC_IVAR___HPSBetaEnrollmentIdentifyResponse_roomName);
  v1[OBJC_IVAR___HPSBetaEnrollmentIdentifyResponse_state] = 5;
  v3 = &v1[OBJC_IVAR___HPSBetaEnrollmentIdentifyResponse_enrolledProgramID];
  *v3 = 0;
  v3[8] = 1;
  *&v1[OBJC_IVAR___HPSBetaEnrollmentIdentifyResponse_availablePrograms] = 0;
  v20.receiver = v1;
  v20.super_class = v4;
  v5 = objc_msgSendSuper2(&v20, sel_init);
  sub_25430DA38();
  if (v6 >> 60 == 15)
  {

    return 0;
  }

  v7 = sub_25430DA38();
  if (v8 >> 60 == 15)
  {

    v9 = OUTLINED_FUNCTION_7_2();
    sub_2542E5880(v9, v10);
    return 0;
  }

  v11 = v7;
  v12 = v8;
  v13 = [objc_allocWithZone(type metadata accessor for DeviceModelCoder()) init];
  v14 = OUTLINED_FUNCTION_7_2();
  sub_2542E06EC(v14, v15, v5);

  v16 = [objc_allocWithZone(type metadata accessor for BetaEnrollment.ModelCoder()) init];
  sub_254311378(v11, v12, v5);

  sub_2542E5880(v11, v12);
  v18 = OUTLINED_FUNCTION_7_2();
  sub_2542E5880(v18, v19);
  return v5;
}

Swift::Void __swiftcall BetaEnrollment.IdentifyResponse.encode(with:)(NSCoder with)
{
  v2 = v1;
  v4 = [objc_allocWithZone(type metadata accessor for DeviceModelCoder()) init];
  v5 = sub_2542E0AD4(v1);
  v7 = v6;

  v8 = sub_2543A1EC8();
  v9 = sub_2543A2858();
  [(objc_class *)with.super.isa encodeObject:v8 forKey:v9];

  sub_2542D7D40(v5, v7);
  v15 = [objc_allocWithZone(type metadata accessor for BetaEnrollment.ModelCoder()) init];
  v10 = sub_254311660(v2);
  v12 = v11;

  v13 = sub_2543A1EC8();
  v14 = sub_2543A2858();
  [(objc_class *)with.super.isa encodeObject:v13 forKey:v14];

  sub_2542D7D40(v10, v12);
}

BOOL BetaEnrollment.IdentifyResponse.isEqual(_:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  sub_2542E576C(a1, v7);
  if (!v8)
  {
    sub_2542E1050(v7);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if (v6 == v1)
  {

    return 1;
  }

  if (!sub_254311C3C(v6, ObjectType, ObjectType, &off_286645F08, &off_286645F08))
  {

    return 0;
  }

  v4 = sub_254312538(v6);

  return v4;
}

id BetaEnrollment.IdentifyResponse.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BetaEnrollment.IdentifyResponse.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2542E576C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5DFA00, &unk_2543A76C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2542E5880(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2542D7D40(a1, a2);
  }

  return a1;
}

uint64_t OUTLINED_FUNCTION_0_6()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_3_2()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_5_2@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1 + 8);
}

uint64_t OUTLINED_FUNCTION_6_2()
{

  return swift_beginAccess();
}

uint64_t CarrySettings.NetworkingServer.updatePublisher.getter()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_27_0();
  v5 = *(v0 + *(v3 + 168));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFA70, &unk_2543A7B50);
  sub_2542EE9CC(&qword_27F5DFA78, &qword_27F5DFA70, &unk_2543A7B50);
  return sub_2543A20E8();
}

id CarrySettings.NetworkingServer.__allocating_init(network:delegate:model:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  swift_allocObject();
  return CarrySettings.NetworkingServer.init(network:delegate:model:)(a1, a2, a3, a4);
}

id CarrySettings.NetworkingServer.init(network:delegate:model:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v71 = a3;
  v72 = a4;
  v75 = a2;
  v76 = a1;
  ObjectType = swift_getObjectType();
  v6 = *v4;
  v7 = *MEMORY[0x277D85000];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF328, &qword_2543A68B0);
  v9 = OUTLINED_FUNCTION_110(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v74 = &v69 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFA80, &unk_2543A7B60);
  v14 = OUTLINED_FUNCTION_110(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v69 = &v69 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFA88, &unk_2543ACB80);
  v19 = OUTLINED_FUNCTION_110(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v69 - v22;
  v24 = type metadata accessor for CarrySettings.DataModel(0);
  OUTLINED_FUNCTION_19_0(v24);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v27);
  v29 = &v69 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v30 = qword_27F5F8868;
  v31 = *((v7 & v6) + 0x58);
  v32 = *((v7 & v6) + 0x50);
  swift_getAssociatedTypeWitness();
  _s16NetworkingServerC15DeviceCacheItemVMa();
  v70 = v31;
  v33 = *(swift_getAssociatedConformanceWitness() + 8);
  *&v5[v30] = sub_2543A26D8();
  v34 = qword_27F5DFA90;
  OUTLINED_FUNCTION_58_0();
  type metadata accessor for CarrySettings.BufferItem();
  *&v5[v34] = sub_2543A26E8();
  v35 = &v5[qword_27F5DFA98];
  *&v5[qword_27F5DFA98 + 8] = 0;
  swift_unknownObjectWeakInit();
  sub_2543A1FA8();
  v36 = *v5;
  OUTLINED_FUNCTION_37_0();
  v38 = *(v37 + 152);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5DFAA8, &qword_2543A7B70);
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  swift_allocObject();
  *&v5[v38] = sub_2542D3D10();
  v42 = *v5;
  OUTLINED_FUNCTION_37_0();
  *&v5[*(v43 + 160)] = MEMORY[0x277D84FA0];
  v44 = *v5;
  OUTLINED_FUNCTION_37_0();
  v46 = *(v45 + 168);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFA70, &unk_2543A7B50);
  v48 = *(v47 + 48);
  v49 = *(v47 + 52);
  swift_allocObject();
  *&v5[v46] = sub_2543A2068();
  *(v35 + 1) = v71;
  swift_unknownObjectWeakAssign();
  v50 = *v5;
  OUTLINED_FUNCTION_37_0();
  v52 = *(v32 - 8);
  (*(v52 + 16))(&v5[*(v51 + 144)], v76, v32);
  v53 = v72;
  sub_2542EDD5C(v72, v23, &qword_27F5DFA88, &unk_2543ACB80);
  if (OUTLINED_FUNCTION_81_0(v23) == 1)
  {
    _s13DataModelCRDTVMa(0);
    v54 = v69;
    OUTLINED_FUNCTION_73_0();
    __swift_storeEnumTagSinglePayload(v55, v56, v57, v58);
    sub_254382290(v54);
    if (OUTLINED_FUNCTION_81_0(v23) != 1)
    {
      sub_2542EDDC0(v23, &qword_27F5DFA88, &unk_2543ACB80);
    }
  }

  else
  {
    sub_2542ED378(v23, v29);
  }

  sub_2542ED378(v29, &v5[qword_27F5F8870]);
  v77.receiver = v5;
  v77.super_class = ObjectType;
  v59 = objc_msgSendSuper2(&v77, sel_init);
  sub_2543A2BB8();
  OUTLINED_FUNCTION_73_0();
  __swift_storeEnumTagSinglePayload(v60, v61, v62, v63);
  v64 = swift_allocObject();
  swift_weakInit();
  v65 = swift_allocObject();
  v65[2] = 0;
  v65[3] = 0;
  v66 = v70;
  v65[4] = v32;
  v65[5] = v66;
  v65[6] = v64;
  v67 = v59;
  sub_2542CD000();
  swift_unknownObjectRelease();

  sub_2542EDDC0(v53, &qword_27F5DFA88, &unk_2543ACB80);
  (*(v52 + 8))(v76, v32);
  return v67;
}

uint64_t sub_2542E5FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](sub_2542E5FF4, 0, 0);
}

uint64_t sub_2542E5FF4()
{
  OUTLINED_FUNCTION_28();
  v1 = *(v0 + 48);
  OUTLINED_FUNCTION_30();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v3 = OUTLINED_FUNCTION_39_0();

    return MEMORY[0x2822009F8](v3, v4, v5);
  }

  else
  {
    OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_27();

    return v6();
  }
}

uint64_t sub_2542E6094()
{
  OUTLINED_FUNCTION_28();
  v1 = *(v0 + 56);
  sub_2542E6130(v2);

  v3 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2542E60F8()
{
  OUTLINED_FUNCTION_66_0(*(v0 + 56));
  OUTLINED_FUNCTION_27();
  return v1();
}

uint64_t sub_2542E6130(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = *MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & v3) + 0x50);
  v6 = *(v5 - 8);
  v7 = v6[8];
  MEMORY[0x28223BE20](a1);
  v9 = &v31 - v8;
  v10 = *((v4 & v3) + 0x90);
  v41 = v6[2];
  v38 = v6 + 2;
  v39 = v10;
  v41(&v31 - v8, &v2[v10], v5);
  v11 = *((v4 & v3) + 0x58);
  v12 = v11[3](v5, v11);
  v13 = v6[1];
  v37 = v6 + 1;
  v40 = v13;
  v13(v9, v5);
  v42 = v12;
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = v5;
  v15[3] = v11;
  v15[4] = v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = sub_2543A2008();

  v35 = MEMORY[0x277CBCD90];
  v33 = v16;
  WitnessTable = swift_getWitnessTable();
  sub_2542FE2DC(&unk_2543A7DA0, v15, v16, WitnessTable);

  v36 = *((*MEMORY[0x277D85000] & *v2) + 0xA0);
  swift_beginAccess();
  sub_2543A2018();
  swift_endAccess();

  v41(v9, &v2[v10], v5);
  v17 = v11[4](v5, v11);
  v40(v9, v5);
  v42 = v17;
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  v19[2] = v5;
  v19[3] = v11;
  v19[4] = v18;

  sub_2542FE2DC(&unk_2543A7DB0, v19, v33, WitnessTable);

  swift_beginAccess();
  sub_2543A2018();
  swift_endAccess();

  v41(v9, &v2[v39], v5);
  v20 = v11[5](v5, v11);
  v21 = v40;
  v40(v9, v5);
  v42 = v20;
  v22 = swift_allocObject();
  swift_weakInit();
  v23 = swift_allocObject();
  v23[2] = v5;
  v23[3] = v11;
  v23[4] = v22;
  swift_getAssociatedConformanceWitness();
  type metadata accessor for DataModelUpdate();
  v24 = sub_2543A2008();
  v25 = swift_getWitnessTable();
  sub_2542FE2DC(&unk_2543A7DC0, v23, v24, v25);

  swift_beginAccess();
  sub_2543A2018();
  swift_endAccess();

  v41(v9, &v2[v39], v5);
  v26 = v11[6](v5, v11);
  v21(v9, v5);
  v27 = swift_allocObject();
  swift_weakInit();
  v28 = swift_allocObject();
  v28[2] = v5;
  v28[3] = v11;
  v28[4] = v27;
  v42 = v26;
  v29 = swift_allocObject();
  *(v29 + 16) = &unk_2543A7DD0;
  *(v29 + 24) = v28;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFBF8, &qword_2543ACD70);
  sub_2542EE9CC(&qword_27F5DFC00, &qword_27F5DFBF8, &qword_2543ACD70);
  sub_2543A2148();

  swift_beginAccess();
  sub_2543A2018();
  swift_endAccess();
}

uint64_t sub_2542E6800(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_2542E6820, 0, 0);
}

uint64_t sub_2542E6820()
{
  OUTLINED_FUNCTION_28();
  v1 = v0[6];
  OUTLINED_FUNCTION_30();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_2542EEA14;
    OUTLINED_FUNCTION_29_0(v0[5]);

    return CarrySettings.NetworkingServer.found(target:)();
  }

  else
  {
    OUTLINED_FUNCTION_27();

    return v5();
  }
}

uint64_t CarrySettings.NetworkingServer.found(target:)()
{
  OUTLINED_FUNCTION_28();
  v1[20] = v2;
  v1[21] = v0;
  v3 = *v0;
  v4 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_27_0();
  v1[22] = *(v5 + 88);
  OUTLINED_FUNCTION_27_0();
  v1[23] = *(v6 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[24] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_45_0();
  v8 = type metadata accessor for CarrySettings.BufferItem();
  v1[25] = v8;
  OUTLINED_FUNCTION_8(v8);
  v1[26] = v9;
  v11 = *(v10 + 64);
  v1[27] = OUTLINED_FUNCTION_146();
  v12 = type metadata accessor for CarrySettings.DataModel(0);
  v1[28] = v12;
  OUTLINED_FUNCTION_110(v12);
  v14 = *(v13 + 64);
  v1[29] = OUTLINED_FUNCTION_146();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFA88, &unk_2543ACB80);
  OUTLINED_FUNCTION_110(v15);
  v17 = *(v16 + 64);
  v1[30] = OUTLINED_FUNCTION_146();
  v18 = *(AssociatedTypeWitness - 8);
  v1[31] = v18;
  v19 = *(v18 + 64);
  v1[32] = OUTLINED_FUNCTION_82_0();
  v1[33] = swift_task_alloc();
  v20 = sub_2543A1FB8();
  v1[34] = v20;
  OUTLINED_FUNCTION_8(v20);
  v1[35] = v21;
  v23 = *(v22 + 64);
  v1[36] = OUTLINED_FUNCTION_146();
  v24 = OUTLINED_FUNCTION_15_1();

  return MEMORY[0x2822009F8](v24, v25, v26);
}

uint64_t sub_2542E6D44()
{
  OUTLINED_FUNCTION_194();
  OUTLINED_FUNCTION_40();
  v2 = v1;
  v3 = *v0;
  v4 = *v0;
  OUTLINED_FUNCTION_7();
  *v5 = v4;
  v6 = v3[40];
  v7 = *v0;
  *v5 = *v0;
  v4[41] = v2;

  v8 = swift_task_alloc();
  v4[42] = v8;
  *v8 = v7;
  v8[1] = sub_2542E6E98;
  v9 = v3[21];
  OUTLINED_FUNCTION_29_0(v3[20]);
  OUTLINED_FUNCTION_196();

  return sub_2542E9C3C();
}

uint64_t sub_2542E6E98()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_13_2();
  *v2 = v1;
  v4 = *(v3 + 336);
  v5 = *(v3 + 168);
  v6 = *v0;
  OUTLINED_FUNCTION_7();
  *v7 = v6;
  *(v10 + 344) = v8;
  *(v10 + 352) = v9;

  v11 = OUTLINED_FUNCTION_15_1();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2542E6F94()
{
  OUTLINED_FUNCTION_71();
  v2 = *(v0 + 344);
  v1 = *(v0 + 352);
  v3 = *(v0 + 328);
  v4 = *(v0 + 304);
  v18 = *(v0 + 312);
  v16 = *(v0 + 256);
  v17 = *(v0 + 232);
  v6 = *(v0 + 184);
  v5 = *(v0 + 192);
  v7 = *(v0 + 168);
  v8 = *(v0 + 176);
  v9 = *(v0 + 160);
  (*(v0 + 296))();
  *(v0 + 40) = v3;
  *(v0 + 48) = v2;
  *(v0 + 56) = v1;
  OUTLINED_FUNCTION_64_0();
  _s16NetworkingServerC15DeviceCacheItemVMa();
  v10 = *(swift_getAssociatedConformanceWitness() + 8);
  sub_2543A27B8();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  sub_2543A27E8();
  swift_endAccess();
  sub_2542ED4C0(v7 + v18, v17);
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2542E70E4()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[41];
  v2 = v0[29];
  v3 = v0[21];
  sub_25434EF80(v2);
  sub_2542ED524(v2);
  v4 = OUTLINED_FUNCTION_51_0();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2542E715C()
{
  OUTLINED_FUNCTION_46_0();
  v1 = *(v0 + 200);
  v3 = *(v0 + 160);
  v2 = *(v0 + 168);
  v4 = qword_27F5DFA90;
  v26 = *(v0 + 176);
  OUTLINED_FUNCTION_97();
  *(v0 + 152) = *(v2 + v4);
  v5 = swift_task_alloc();
  OUTLINED_FUNCTION_52_0(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  *(v14 + 32) = v3;
  OUTLINED_FUNCTION_45_0();
  sub_2543A2B38();
  sub_2543A2768();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_75_0();
  sub_2543A2F78();

  if (*(v0 + 144) == 1)
  {
    v15 = *(v0 + 344);
    v16 = *(v0 + 352);
    v17 = *(v0 + 328);

    OUTLINED_FUNCTION_80_0();

    OUTLINED_FUNCTION_27();

    return v18();
  }

  else
  {
    v20 = *(v0 + 328);
    v21 = *(v0 + 216);
    v22 = *(v0 + 136);
    OUTLINED_FUNCTION_64_0();
    sub_2543A2AF8();
    swift_endAccess();
    *(v0 + 360) = *v21;
    *(v0 + 368) = v21[1];
    v23 = OUTLINED_FUNCTION_51_0();

    return MEMORY[0x2822009F8](v23, v24, v25);
  }
}

uint64_t sub_2542E7360()
{
  OUTLINED_FUNCTION_28();
  v1 = v0[45];
  v2 = v0[46];
  v3 = v0[21];
  v4 = *(v0[41] + OBJC_IVAR____TtCO15HomePodSettings13CarrySettings11SyncManager_multicast);
  sub_2543A2528();
  v5 = OUTLINED_FUNCTION_68();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2542E73D0()
{
  OUTLINED_FUNCTION_194();
  OUTLINED_FUNCTION_40();
  v1 = v0[43];
  v2 = v0[44];
  v3 = v0[41];
  v5 = v0[26];
  v4 = v0[27];
  v6 = v0[25];

  v7 = OUTLINED_FUNCTION_17_1();
  v8(v7);
  OUTLINED_FUNCTION_80_0();

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_196();

  return v10(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_2542E7494(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_2542E74B4, 0, 0);
}

uint64_t sub_2542E74B4()
{
  OUTLINED_FUNCTION_28();
  v1 = v0[6];
  OUTLINED_FUNCTION_30();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_2542E7588;
    OUTLINED_FUNCTION_29_0(v0[5]);

    return CarrySettings.NetworkingServer.lost(target:)();
  }

  else
  {
    OUTLINED_FUNCTION_27();

    return v5();
  }
}

uint64_t sub_2542E7588()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v2 = *(v1 + 64);
  v3 = *(v1 + 56);
  v4 = *v0;
  OUTLINED_FUNCTION_7();
  *v5 = v4;

  OUTLINED_FUNCTION_27();

  return v6();
}

uint64_t CarrySettings.NetworkingServer.lost(target:)()
{
  OUTLINED_FUNCTION_28();
  v1[2] = v2;
  v1[3] = v0;
  v3 = *((*MEMORY[0x277D85000] & *v0) + 0x58);
  v4 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[4] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_8(AssociatedTypeWitness);
  v1[5] = v6;
  v8 = *(v7 + 64);
  v1[6] = OUTLINED_FUNCTION_82_0();
  v1[7] = swift_task_alloc();
  v9 = sub_2543A1FB8();
  v1[8] = v9;
  OUTLINED_FUNCTION_8(v9);
  v1[9] = v10;
  v12 = *(v11 + 64);
  v1[10] = OUTLINED_FUNCTION_146();
  v13 = OUTLINED_FUNCTION_15_1();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_2542E79A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[8] = a1;
  v4[9] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[12] = AssociatedTypeWitness;
  v6 = *(AssociatedTypeWitness - 8);
  v4[13] = v6;
  v7 = *(v6 + 64) + 15;
  v4[14] = swift_task_alloc();
  v8 = sub_2543A1FB8();
  v4[15] = v8;
  v9 = *(v8 - 8);
  v4[16] = v9;
  v10 = *(v9 + 64) + 15;
  v4[17] = swift_task_alloc();
  v11 = sub_2543A30C8();
  v4[18] = v11;
  v12 = *(v11 - 8);
  v4[19] = v12;
  v13 = *(v12 + 64) + 15;
  v4[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2542E7B44, 0, 0);
}

uint64_t sub_2542E7B44()
{
  v1 = *(v0 + 72);
  OUTLINED_FUNCTION_30();
  Strong = swift_weakLoadStrong();
  *(v0 + 168) = Strong;
  if (Strong)
  {
    v3 = *(v0 + 160);
    v4 = *(v0 + 96);
    v5 = *(v0 + 104);
    v7 = *(v0 + 80);
    v6 = *(v0 + 88);
    v8 = *(v0 + 64);
    v9 = *v8;
    v10 = *(v8 + 1);
    swift_getAssociatedConformanceWitness();
    v11 = type metadata accessor for DataModelUpdate();
    *(v0 + 176) = v11;
    v12 = *(v11 + 36);
    *(v0 + 264) = v12;
    v13 = *(v5 + 16);
    *(v0 + 184) = v13;
    *(v0 + 192) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v13(v3, &v8[v12], v4);
    __swift_storeEnumTagSinglePayload(v3, 0, 1, v4);
    v14 = swift_task_alloc();
    *(v0 + 200) = v14;
    *v14 = v0;
    v14[1] = sub_2542E7D50;
    v15 = *(v0 + 160);
    OUTLINED_FUNCTION_46();

    return CarrySettings.NetworkingServer.handleDataModelUpdate(withData:from:)();
  }

  else
  {
    v17 = *(v0 + 88);
    v18 = *(v0 + 96);
    v19 = *(v0 + 80);
    v20 = *(v0 + 64);
    swift_getAssociatedConformanceWitness();
    v21 = v20 + *(type metadata accessor for DataModelUpdate() + 40);
    v22 = *(v21 + 8);
    OUTLINED_FUNCTION_0_7(*v21);
    v28 = v23;
    v25 = *(v24 + 4);
    v26 = swift_task_alloc();
    *(v0 + 216) = v26;
    *v26 = v0;
    v27 = OUTLINED_FUNCTION_21_0(v26);

    return v28(v27);
  }
}

uint64_t sub_2542E7D50()
{
  OUTLINED_FUNCTION_194();
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_13_2();
  *v3 = v2;
  v5 = v4[25];
  v6 = v4[21];
  v7 = v4[20];
  v8 = v4[19];
  v9 = v4[18];
  v10 = *v1;
  OUTLINED_FUNCTION_7();
  *v11 = v10;
  *(v12 + 208) = v0;

  v13 = OUTLINED_FUNCTION_17_1();
  v14(v13);

  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_196();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_2542E7EBC()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  v4 = v0[8];
  swift_getAssociatedConformanceWitness();
  v5 = v4 + *(type metadata accessor for DataModelUpdate() + 40);
  v6 = *(v5 + 8);
  OUTLINED_FUNCTION_0_7(*v5);
  v13 = v7;
  v9 = *(v8 + 4);
  v10 = swift_task_alloc();
  v0[27] = v10;
  *v10 = v0;
  v11 = OUTLINED_FUNCTION_21_0(v10);

  return v13(v11);
}

uint64_t sub_2542E7F98()
{
  OUTLINED_FUNCTION_31();
  v1 = *v0;
  v2 = *(*v0 + 216);
  v3 = *v0;
  OUTLINED_FUNCTION_7();
  *v4 = v3;

  v5 = v1[20];
  v6 = v1[17];
  v7 = v1[14];

  v8 = *(v3 + 8);

  return v8();
}

uint64_t sub_2542E80DC()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v2 = *(v1 + 224);
  v3 = *(v1 + 208);
  v4 = *v0;
  OUTLINED_FUNCTION_7();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2542E81DC()
{
  OUTLINED_FUNCTION_28();

  v1 = *(v0 + 160);
  v2 = *(v0 + 136);
  v3 = *(v0 + 112);

  OUTLINED_FUNCTION_27();

  return v4();
}

uint64_t sub_2542E8254()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 192);
  v2 = *(v0 + 96);
  v3 = *(v0 + 72);
  (*(v0 + 184))(*(v0 + 112), *(v0 + 64) + *(v0 + 264), v2);
  OUTLINED_FUNCTION_60_0();
  *(v0 + 232) = sub_2543A2888();
  *(v0 + 240) = v4;
  OUTLINED_FUNCTION_97();
  Strong = swift_weakLoadStrong();
  *(v0 + 248) = Strong;
  if (Strong)
  {
    *(v0 + 256) = qword_27F5DFAA0;
    v6 = OUTLINED_FUNCTION_39_0();

    return MEMORY[0x2822009F8](v6, v7, v8);
  }

  else
  {

    OUTLINED_FUNCTION_48_0();
    OUTLINED_FUNCTION_1_9();
    v16 = v9;
    v10 = *(v2 + 4);
    v11 = swift_task_alloc();
    v12 = OUTLINED_FUNCTION_76_0(v11);
    *v12 = v13;
    v14 = OUTLINED_FUNCTION_20_0(v12);

    return v16(v14);
  }
}

uint64_t sub_2542E8390()
{
  OUTLINED_FUNCTION_28();
  v0 = OUTLINED_FUNCTION_62_0();
  v1(v0);
  v2 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_2542E83F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_46_0();
  v16 = v14[30];
  v15 = v14[31];
  v17 = v14[17];

  sub_2543A2768();
  v18 = sub_2543A1F98();
  v19 = sub_2543A2FF8();

  v20 = os_log_type_enabled(v18, v19);
  v21 = v14[30];
  if (v20)
  {
    v22 = v14[29];
    v24 = v14[16];
    v23 = v14[17];
    v25 = v14[15];
    v26 = OUTLINED_FUNCTION_129();
    a11 = OUTLINED_FUNCTION_87();
    *v26 = 136315138;
    OUTLINED_FUNCTION_61_0();
    v27 = sub_2542D5198();

    *(v26 + 4) = v27;
    OUTLINED_FUNCTION_65_0(&dword_2542B7000, v28, v19, "### Failed to handle data model update from %s");
    __swift_destroy_boxed_opaque_existential_0(a11);
    OUTLINED_FUNCTION_82();
    OUTLINED_FUNCTION_82();

    v29 = *(v24 + 8);
    v30 = OUTLINED_FUNCTION_46();
  }

  else
  {
    v32 = v14[16];
    v23 = v14[17];
    v33 = v14[15];
    v34 = v14[30];

    v30 = OUTLINED_FUNCTION_34_0();
  }

  v31(v30);
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_1_9();
  v49 = v35;
  v36 = *(v23 + 4);
  v37 = swift_task_alloc();
  v38 = OUTLINED_FUNCTION_76_0(v37);
  *v38 = v39;
  OUTLINED_FUNCTION_20_0(v38);
  OUTLINED_FUNCTION_128();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, v49, a11, a12, a13, a14);
}

uint64_t CarrySettings.NetworkingServer.handleDataModelUpdate(withData:from:)()
{
  OUTLINED_FUNCTION_31();
  v1[19] = v2;
  v1[20] = v0;
  v1[17] = v3;
  v1[18] = v4;
  v5 = *v0;
  v6 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_27_0();
  v1[21] = *(v7 + 88);
  OUTLINED_FUNCTION_27_0();
  v1[22] = *(v8 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[23] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_45_0();
  v10 = type metadata accessor for CarrySettings.BufferItem();
  v1[24] = v10;
  OUTLINED_FUNCTION_8(v10);
  v1[25] = v11;
  v13 = *(v12 + 64);
  v1[26] = OUTLINED_FUNCTION_146();
  v14 = *(AssociatedTypeWitness - 8);
  v1[27] = v14;
  v15 = *(v14 + 64) + 15;
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  OUTLINED_FUNCTION_45_0();
  v16 = sub_2543A30C8();
  v1[31] = v16;
  OUTLINED_FUNCTION_8(v16);
  v1[32] = v17;
  v19 = *(v18 + 64);
  v1[33] = OUTLINED_FUNCTION_82_0();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v20 = sub_2543A1FB8();
  v1[37] = v20;
  OUTLINED_FUNCTION_8(v20);
  v1[38] = v21;
  v23 = *(v22 + 64);
  v1[39] = OUTLINED_FUNCTION_146();
  v24 = OUTLINED_FUNCTION_15_1();

  return MEMORY[0x2822009F8](v24, v25, v26);
}

uint64_t sub_2542E87BC()
{
  v1 = v0[39];
  v3 = v0[36];
  v2 = v0[37];
  v4 = v0[31];
  v5 = v0[32];
  v7 = v0[19];
  v6 = v0[20];
  v8 = OUTLINED_FUNCTION_50(v0[38]);
  v9(v8);
  v10 = *(v5 + 16);
  v11 = OUTLINED_FUNCTION_55_0();
  v10(v11);
  v12 = sub_2543A1F98();
  sub_2543A3008();
  OUTLINED_FUNCTION_72_0();
  v14 = os_log_type_enabled(v12, v13);
  v15 = v0[38];
  v16 = v0[39];
  v18 = v0[36];
  v17 = v0[37];
  if (v14)
  {
    v103 = v10;
    v19 = v0[35];
    v21 = v0[31];
    v20 = v0[32];
    v101 = v0[39];
    v22 = OUTLINED_FUNCTION_129();
    v106 = OUTLINED_FUNCTION_87();
    *v22 = 136315138;
    v23 = OUTLINED_FUNCTION_53_0();
    v103(v23);
    sub_2543A2888();
    v24 = OUTLINED_FUNCTION_70_0();
    v25 = v21;
    v10 = v103;
    v105 = v26;
    v26(v24, v25);
    v27 = sub_2542D5198();

    *(v22 + 4) = v27;
    _os_log_impl(&dword_2542B7000, v12, v1, "Received data model update from %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v106);
    OUTLINED_FUNCTION_82();
    OUTLINED_FUNCTION_82();

    (*(v15 + 8))(v101, v17);
  }

  else
  {
    v28 = v0[31];
    v29 = v0[32];

    v30 = OUTLINED_FUNCTION_70_0();
    v105 = v31;
    v31(v30, v28);
    (*(v15 + 8))(v16, v17);
  }

  v32 = v0[34];
  v33 = OUTLINED_FUNCTION_67_0();
  v10(v33);
  v34 = OUTLINED_FUNCTION_81_0(v32);
  v35 = v0[34];
  if (v34 == 1)
  {
    v36 = v0[32] + 8;
    v105(v0[34], v0[31]);
LABEL_11:
    v56 = v0[33];
    v57 = OUTLINED_FUNCTION_67_0();
    v10(v57);
    if (OUTLINED_FUNCTION_81_0(v56) == 1)
    {
      v58 = v0[39];
      v60 = v0[35];
      v59 = v0[36];
      v61 = v0[34];
      v62 = v0[31];
      v100 = v0[30];
      v102 = v0[29];
      v63 = v0[28];
      v104 = v0[26];
      v64 = v0[19];
      v105(v0[33], v62);
      (v10)(v60, v64, v62);
      v65 = sub_2543A2888();
      v67 = v66;
      sub_2542D6354();
      swift_allocError();
      *v68 = v65;
      v68[1] = v67;
      swift_willThrow();

      OUTLINED_FUNCTION_27();
    }

    else
    {
      v70 = v0[24];
      v71 = v0[20];
      (*(v0[27] + 32))(v0[29], v0[33], v0[23]);
      v72 = qword_27F5DFA90;
      OUTLINED_FUNCTION_97();
      v73 = *(v71 + v72);
      sub_2543A2768();
      v74 = sub_2543A2AC8();

      if (v74 == 20)
      {
        v76 = v0[25];
        v75 = v0[26];
        v77 = v0[24];
        OUTLINED_FUNCTION_64_0();
        OUTLINED_FUNCTION_58_0();
        sub_2543A2B38();
        swift_getWitnessTable();
        swift_getWitnessTable();
        sub_2543A2FC8();
        swift_endAccess();
        v78 = *(v76 + 8);
        v79 = OUTLINED_FUNCTION_46();
        v80(v79);
      }

      v81 = v0[28];
      v82 = v0[26];
      v83 = v0[23];
      v85 = v0[17];
      v84 = v0[18];
      (*(v0[27] + 16))(v81, v0[29], v83);
      v86 = OUTLINED_FUNCTION_61_0();
      sub_25430FBF0(v86, v87, v81, v83, v88);
      OUTLINED_FUNCTION_64_0();
      v89 = OUTLINED_FUNCTION_61_0();
      sub_2542D61B4(v89, v90);
      OUTLINED_FUNCTION_58_0();
      sub_2543A2B38();
      sub_2543A2AE8();
      swift_endAccess();
      v91 = v0[39];
      v93 = v0[35];
      v92 = v0[36];
      v95 = v0[33];
      v94 = v0[34];
      v97 = v0[29];
      v96 = v0[30];
      OUTLINED_FUNCTION_71_0();
      v98(v97);

      OUTLINED_FUNCTION_25();
    }

    return v69();
  }

  v37 = v0[22];
  v39 = v0[20];
  v38 = v0[21];
  (*(v0[27] + 32))(v0[30], v0[34], v0[23]);
  v40 = qword_27F5F8868;
  swift_beginAccess();
  v41 = *(v39 + v40);
  OUTLINED_FUNCTION_58_0();
  _s16NetworkingServerC15DeviceCacheItemVMa();
  v42 = *(swift_getAssociatedConformanceWitness() + 8);
  OUTLINED_FUNCTION_75_0();
  sub_2543A27D8();
  v43 = v0[14];
  v0[40] = v43;
  if (!v43)
  {
    v50 = v0[30];
    v51 = v0[27];
    v52 = v0[23];
    swift_endAccess();
    v53 = *(v51 + 8);
    v54 = OUTLINED_FUNCTION_60_0();
    v55(v54);
    goto LABEL_11;
  }

  v44 = v0[15];
  v45 = v0[16];

  swift_endAccess();
  v46 = OUTLINED_FUNCTION_60_0();
  sub_2542ED5A4(v46);
  v47 = OUTLINED_FUNCTION_15_1();

  return MEMORY[0x2822009F8](v47, v48, v49);
}

uint64_t sub_2542E8E0C()
{
  OUTLINED_FUNCTION_28();
  v1 = v0[20];
  v2 = v0[17];
  v3 = v0[18];
  v4 = *(v0[40] + OBJC_IVAR____TtCO15HomePodSettings13CarrySettings11SyncManager_multicast);
  sub_2543A2528();
  v5 = OUTLINED_FUNCTION_68();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

void sub_2542E8E7C()
{
  OUTLINED_FUNCTION_69_0();
  v1 = v0[40];

  v3 = v0[29];
  v2 = v0[30];
  v4 = v0[39];
  v6 = v0[35];
  v5 = v0[36];
  v8 = v0[33];
  v7 = v0[34];
  OUTLINED_FUNCTION_71_0();
  v9(v2);

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_77_0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_2542E8F54(__int128 *a1, uint64_t a2)
{
  *(v2 + 112) = a2;
  v4 = sub_2543A1FB8();
  *(v2 + 120) = v4;
  v5 = *(v4 - 8);
  *(v2 + 128) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 136) = swift_task_alloc();
  v7 = *a1;
  *(v2 + 264) = *(a1 + 16);
  v8 = *(a1 + 24);
  *(v2 + 144) = v7;
  *(v2 + 160) = v8;
  *(v2 + 176) = *(a1 + 40);

  return MEMORY[0x2822009F8](sub_2542E9034, 0, 0);
}

uint64_t sub_2542E9034()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 112);
  OUTLINED_FUNCTION_30();
  Strong = swift_weakLoadStrong();
  *(v0 + 192) = Strong;
  if (Strong)
  {
    v4 = *(v0 + 160);
    v3 = *(v0 + 168);
    *(v0 + 40) = *(v0 + 264);
    *(v0 + 48) = v4;
    *(v0 + 56) = v3;
    sub_2543A2768();
    v5 = swift_task_alloc();
    *(v0 + 200) = v5;
    *v5 = v0;
    v5[1] = sub_2542E918C;
    v6 = *(v0 + 152);
    v7 = OUTLINED_FUNCTION_29_0(*(v0 + 144));

    return CarrySettings.NetworkingServer.handleInstallProfile(withData:context:)(v7, v8, v0 + 40);
  }

  else
  {
    OUTLINED_FUNCTION_0_7(*(v0 + 176));
    v15 = v10;
    v12 = *(v11 + 4);
    v13 = swift_task_alloc();
    *(v0 + 216) = v13;
    *v13 = v0;
    OUTLINED_FUNCTION_23_0(v13);
    v14 = *(v0 + 184);

    return v15(0);
  }
}

uint64_t sub_2542E918C()
{
  OUTLINED_FUNCTION_194();
  OUTLINED_FUNCTION_40();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_7();
  *v4 = v3;
  v5 = v2[25];
  v6 = v2[24];
  v7 = *v1;
  *v4 = *v1;
  v3[26] = v0;

  v8 = v2[7];

  if (v0)
  {
    OUTLINED_FUNCTION_139();
    OUTLINED_FUNCTION_196();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_0_7(v3[22]);
    v14 = *(v13 + 4);
    v15 = swift_task_alloc();
    v3[27] = v15;
    *v15 = v7;
    OUTLINED_FUNCTION_23_0(v15);
    v16 = v3[23];
    OUTLINED_FUNCTION_196();

    return v18(v17, v18, v19, v20, v21, v22, v23, v24);
  }
}

uint64_t sub_2542E9348()
{
  OUTLINED_FUNCTION_28();
  v1 = *v0;
  v2 = *(*v0 + 216);
  v3 = *v0;
  OUTLINED_FUNCTION_7();
  *v4 = v3;

  v5 = *(v1 + 136);

  v6 = *(v3 + 8);

  return v6();
}

uint64_t sub_2542E944C()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v2 = *(v1 + 224);
  v3 = *(v1 + 208);
  v4 = *v0;
  OUTLINED_FUNCTION_7();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2542E954C()
{
  OUTLINED_FUNCTION_28();

  v1 = *(v0 + 136);

  OUTLINED_FUNCTION_27();

  return v2();
}

uint64_t sub_2542E95AC()
{
  OUTLINED_FUNCTION_31();
  *(v0 + 64) = *(v0 + 264);
  v1 = *(v0 + 168);
  v2 = *(v0 + 112);
  *(v0 + 72) = *(v0 + 160);
  *(v0 + 80) = v1;
  sub_2543A2768();
  *(v0 + 232) = sub_2543A2888();
  *(v0 + 240) = v3;
  OUTLINED_FUNCTION_97();
  Strong = swift_weakLoadStrong();
  *(v0 + 248) = Strong;
  if (Strong)
  {
    *(v0 + 256) = qword_27F5DFAA0;
    v5 = OUTLINED_FUNCTION_39_0();

    return MEMORY[0x2822009F8](v5, v6, v7);
  }

  else
  {

    v8 = *(v0 + 176);
    v9 = *(v0 + 208);
    OUTLINED_FUNCTION_1_9();
    v17 = v10;
    v11 = *(v8 + 4);
    v12 = swift_task_alloc();
    v13 = OUTLINED_FUNCTION_76_0(v12);
    *v13 = v14;
    v15 = OUTLINED_FUNCTION_18_0(v13);

    return v17(v15);
  }
}

uint64_t sub_2542E96F4()
{
  OUTLINED_FUNCTION_28();
  v0 = OUTLINED_FUNCTION_62_0();
  v1(v0);
  v2 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_2542E9758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_46_0();
  v16 = *(v14 + 240);
  v15 = *(v14 + 248);
  v17 = *(v14 + 136);

  sub_2543A2768();
  v18 = sub_2543A1F98();
  v19 = sub_2543A2FF8();

  v20 = os_log_type_enabled(v18, v19);
  v21 = *(v14 + 240);
  if (v20)
  {
    v22 = *(v14 + 232);
    v24 = *(v14 + 128);
    v23 = *(v14 + 136);
    v25 = *(v14 + 120);
    v26 = OUTLINED_FUNCTION_129();
    a11 = OUTLINED_FUNCTION_87();
    *v26 = 136315138;
    OUTLINED_FUNCTION_61_0();
    v27 = sub_2542D5198();

    *(v26 + 4) = v27;
    OUTLINED_FUNCTION_65_0(&dword_2542B7000, v28, v19, "### Failed to handle data model update: %s");
    __swift_destroy_boxed_opaque_existential_0(a11);
    OUTLINED_FUNCTION_82();
    OUTLINED_FUNCTION_82();

    v29 = *(v24 + 8);
    v30 = OUTLINED_FUNCTION_46();
  }

  else
  {
    v33 = *(v14 + 128);
    v32 = *(v14 + 136);
    v34 = *(v14 + 120);
    v35 = *(v14 + 240);

    v30 = OUTLINED_FUNCTION_34_0();
  }

  v31(v30);
  v36 = *(v14 + 176);
  v37 = *(v14 + 208);
  OUTLINED_FUNCTION_1_9();
  v52 = v38;
  v39 = *(v36 + 4);
  v40 = swift_task_alloc();
  v41 = OUTLINED_FUNCTION_76_0(v40);
  *v41 = v42;
  OUTLINED_FUNCTION_18_0(v41);
  OUTLINED_FUNCTION_128();

  return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, v52, a11, a12, a13, a14);
}

uint64_t CarrySettings.NetworkingServer.handleInstallProfile(withData:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 48) = a2;
  *(v4 + 56) = v3;
  *(v4 + 40) = a1;
  *(v4 + 104) = *a3;
  *(v4 + 64) = *(a3 + 8);
  v5 = OUTLINED_FUNCTION_15_1();
  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2542E9938()
{
  OUTLINED_FUNCTION_69_0();
  v1 = *(v0 + 56) + qword_27F5DFA98;
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    v4 = *(v0 + 64);
    v3 = *(v0 + 72);
    v5 = *(v0 + 104);
    v6 = *(v1 + 8);
    swift_getObjectType();
    *(v0 + 16) = v5;
    *(v0 + 24) = v4;
    *(v0 + 32) = v3;
    v7 = *(v6 + 8);
    OUTLINED_FUNCTION_42();
    v16 = (v8 + *v8);
    v10 = *(v9 + 4);
    v11 = swift_task_alloc();
    *(v0 + 88) = v11;
    *v11 = v0;
    v11[1] = sub_2542E9AD8;
    v12 = *(v0 + 48);
    v13 = OUTLINED_FUNCTION_29_0(*(v0 + 40));

    return v16(v13);
  }

  else
  {
    OUTLINED_FUNCTION_27();

    return v15();
  }
}

uint64_t sub_2542E9AD8()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_41();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v6 = *(v5 + 88);
  v7 = *(v5 + 80);
  v8 = *v1;
  OUTLINED_FUNCTION_7();
  *v9 = v8;
  *(v3 + 96) = v0;

  swift_unknownObjectRelease();
  if (v0)
  {
    v10 = *(v3 + 56);
    v11 = OUTLINED_FUNCTION_39_0();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }

  else
  {
    OUTLINED_FUNCTION_27();

    return v14();
  }
}

uint64_t sub_2542E9C18()
{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 96);
  return v2();
}

uint64_t sub_2542E9C3C()
{
  OUTLINED_FUNCTION_28();
  v1[5] = v2;
  v1[6] = v0;
  v1[4] = v3;
  v4 = *v0;
  v5 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_27_0();
  v1[7] = *(v6 + 88);
  OUTLINED_FUNCTION_27_0();
  v1[8] = *(v7 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[9] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_8(AssociatedTypeWitness);
  v1[10] = v9;
  v1[11] = *(v10 + 64);
  v1[12] = OUTLINED_FUNCTION_146();
  v11 = OUTLINED_FUNCTION_68();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2542E9D38()
{
  OUTLINED_FUNCTION_28();
  v2 = v0[5];
  v1 = v0[6];
  sub_25434E51C();
  v0[13] = v3;
  v4 = OUTLINED_FUNCTION_68();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2542E9D98()
{
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_46_0();
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v4 = *(v0 + 72);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  *(v0 + 16) = *(v0 + 104);
  v7 = *(v3 + 16);
  v8 = *(v0 + 32);
  *(v0 + 112) = v7;
  *(v0 + 120) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v28 = *(v0 + 56);
  v7(v1, v8, v4);
  *(v0 + 160) = *(v3 + 80);
  v9 = swift_allocObject();
  OUTLINED_FUNCTION_52_0(v9, v10, v11, v12, v13, v14, v15, v16, v17);
  *(v18 + 32) = v6;
  *(v0 + 128) = *(v3 + 32);
  *(v0 + 136) = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  OUTLINED_FUNCTION_47_0();
  v19();
  swift_retain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFBD8, &qword_2543A7D58);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_47_0();
  sub_2542EE9CC(v20, v21, v22);
  *(v0 + 144) = sub_2543A2118();

  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_128();

  return MEMORY[0x2822009F8](v23, v24, v25);
}

uint64_t sub_2542E9F30()
{
  OUTLINED_FUNCTION_28();
  v2 = v0[5];
  v1 = v0[6];
  v0[19] = sub_25434E77C();
  v3 = OUTLINED_FUNCTION_68();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2542E9F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_46_0();
  v49 = *(v14 + 152);
  v16 = *(v14 + 128);
  v15 = *(v14 + 136);
  v18 = *(v14 + 112);
  v17 = *(v14 + 120);
  v20 = *(v14 + 88);
  v19 = *(v14 + 96);
  v21 = *(v14 + 72);
  v22 = *(v14 + 48);
  v23 = *(v14 + 32);
  v24 = (*(v14 + 160) + 40) & ~*(v14 + 160);
  *(v14 + 24) = v49;
  v48 = *(v14 + 56);
  v18(v19, v23, v21);
  v25 = swift_allocObject();
  v34 = OUTLINED_FUNCTION_52_0(v25, v26, v27, v28, v29, v30, v31, v32, v33);
  *(v35 + 32) = v22;
  v16(v35 + v24, v19, v21, v34);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFBE8, &qword_2543A7D60);
  OUTLINED_FUNCTION_25_0();
  sub_2542EE9CC(v36, &qword_27F5DFBE8, &qword_2543A7D60);
  OUTLINED_FUNCTION_47_0();
  sub_2543A2148();

  v37 = *(v14 + 8);
  v38 = *(v14 + 144);
  OUTLINED_FUNCTION_128();

  return v42(v39, v40, v41, v42, v43, v44, v45, v46, v48, *(&v48 + 1), v49, a12, a13, a14);
}

uint64_t sub_2542EA0E8(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *MEMORY[0x277D85000];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF328, &qword_2543A68B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  v8 = sub_2543A2BB8();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = *((v3 & v2) + 0x50);
  v10[5] = *((v3 & v2) + 0x58);
  v10[6] = v9;
  sub_2542CD000();
}

uint64_t sub_2542EA22C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  v5 = sub_2543A1FB8();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v7 = *(v6 + 64) + 15;
  v4[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2542EA2EC, 0, 0);
}

uint64_t sub_2542EA2EC()
{
  OUTLINED_FUNCTION_28();
  v1 = v0[6];
  OUTLINED_FUNCTION_30();
  Strong = swift_weakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v0[11] = qword_27F5DFAA0;
    v3 = OUTLINED_FUNCTION_39_0();

    return MEMORY[0x2822009F8](v3, v4, v5);
  }

  else
  {
    v6 = v0[9];
    OUTLINED_FUNCTION_50_0();

    OUTLINED_FUNCTION_27();

    return v7();
  }
}

uint64_t sub_2542EA3A0()
{
  OUTLINED_FUNCTION_28();
  (*(v0[8] + 16))(v0[9], v0[10] + v0[11], v0[7]);
  v1 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_2542EA414()
{
  OUTLINED_FUNCTION_31();
  v2 = v0[9];
  v1 = v0[10];

  v3 = sub_2543A1F98();
  v4 = sub_2543A3008();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2542B7000, v3, v4, "Updates completed", v5, 2u);
    OUTLINED_FUNCTION_82();
  }

  v7 = v0[8];
  v6 = v0[9];
  v8 = v0[7];

  v9 = OUTLINED_FUNCTION_34_0();
  v10(v9);
  v11 = v0[9];
  OUTLINED_FUNCTION_66_0(v0[10]);

  OUTLINED_FUNCTION_27();

  return v12();
}

uint64_t sub_2542EA4FC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v25 = a1;
  v26 = a3;
  v3 = *a2;
  v4 = *MEMORY[0x277D85000];
  v28 = *((*MEMORY[0x277D85000] & *a2) + 0x58);
  v27 = *((v4 & v3) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = &v25 - v8;
  v10 = type metadata accessor for CarrySettings.DataModel(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF328, &qword_2543A68B0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v25 - v16;
  v18 = sub_2543A2BB8();
  __swift_storeEnumTagSinglePayload(v17, 1, 1, v18);
  v19 = swift_allocObject();
  swift_weakInit();
  sub_2542ED4C0(v25, v13);
  (*(v6 + 16))(v9, v26, AssociatedTypeWitness);
  v20 = (*(v11 + 80) + 56) & ~*(v11 + 80);
  v21 = (v12 + v20 + *(v6 + 80)) & ~*(v6 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = 0;
  *(v22 + 3) = 0;
  v23 = v28;
  *(v22 + 4) = v27;
  *(v22 + 5) = v23;
  *(v22 + 6) = v19;
  sub_2542ED378(v13, &v22[v20]);
  (*(v6 + 32))(&v22[v21], v9, AssociatedTypeWitness);
  sub_25434DDBC();
}

uint64_t sub_2542EA7D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a1;
  v6[6] = a4;
  v6[9] = swift_getAssociatedTypeWitness();
  v7 = sub_2543A30C8();
  v6[10] = v7;
  v8 = *(v7 - 8);
  v6[11] = v8;
  v9 = *(v8 + 64) + 15;
  v6[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2542EA8C0, 0, 0);
}

uint64_t sub_2542EA8C0()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[6];
  OUTLINED_FUNCTION_30();
  Strong = swift_weakLoadStrong();
  v0[13] = Strong;
  v3 = v0[12];
  if (Strong)
  {
    v4 = v0[9];
    OUTLINED_FUNCTION_19_0(v4);
    (*(v5 + 16))(v3);
    __swift_storeEnumTagSinglePayload(v3, 0, 1, v4);
    v6 = swift_task_alloc();
    v0[14] = v6;
    *v6 = v0;
    v6[1] = sub_2542EA9F8;
    v7 = v0[12];
    v8 = OUTLINED_FUNCTION_29_0(v0[7]);

    return sub_2542EAC1C(v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_50_0();

    OUTLINED_FUNCTION_27();

    return v11();
  }
}

uint64_t sub_2542EA9F8()
{
  OUTLINED_FUNCTION_194();
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_13_2();
  *v3 = v2;
  v5 = v4[14];
  v6 = v4[13];
  v7 = v4[12];
  v8 = v4[11];
  v9 = v4[10];
  v10 = *v1;
  OUTLINED_FUNCTION_7();
  *v11 = v10;
  *(v12 + 120) = v0;

  v13 = OUTLINED_FUNCTION_17_1();
  v14(v13);

  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_196();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_2542EAB64()
{
  OUTLINED_FUNCTION_28();
  v1 = *(v0 + 96);
  OUTLINED_FUNCTION_66_0(*(v0 + 104));

  OUTLINED_FUNCTION_25();

  return v2();
}

uint64_t sub_2542EABC0()
{
  OUTLINED_FUNCTION_28();
  v1 = *(v0 + 96);

  OUTLINED_FUNCTION_27();
  v3 = *(v0 + 120);

  return v2();
}

uint64_t sub_2542EAC1C(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  v4 = *v2;
  v5 = *MEMORY[0x277D85000];
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF328, &qword_2543A68B0) - 8) + 64) + 15;
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v7 = type metadata accessor for CarrySettings.DataModel(0);
  v3[18] = v7;
  v8 = *(v7 - 8);
  v3[19] = v8;
  v3[20] = *(v8 + 64);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = *((v5 & v4) + 0x58);
  v3[24] = *((v5 & v4) + 0x50);
  v3[25] = swift_getAssociatedTypeWitness();
  v9 = sub_2543A30C8();
  v3[26] = v9;
  v10 = *(v9 - 8);
  v3[27] = v10;
  v11 = *(v10 + 64) + 15;
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v12 = sub_2543A1FB8();
  v3[30] = v12;
  v13 = *(v12 - 8);
  v3[31] = v13;
  v14 = *(v13 + 64) + 15;
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2542EAE70, v2, 0);
}

uint64_t sub_2542EAE70()
{
  v1 = v0[29];
  v2 = v0[26];
  v3 = v0[27];
  v4 = v0[22];
  v5 = v0[14];
  v6 = v0[13];
  v119 = v0[15];
  v121 = (v0[31] + 16);
  v115 = qword_27F5DFAA0;
  v117 = *v121;
  (*v121)(v0[33], v119 + qword_27F5DFAA0, v0[30]);
  v7 = *(v3 + 16);
  v7(v1, v5, v2);
  sub_2542ED4C0(v6, v4);
  v8 = sub_2543A1F98();
  v9 = sub_2543A3008();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[33];
  v12 = v0[31];
  v113 = v0[30];
  v13 = v0[29];
  if (v10)
  {
    v109 = v9;
    v15 = v0[27];
    v14 = v0[28];
    v111 = v0[33];
    v16 = v0[26];
    v106 = v0[21];
    v107 = v0[22];
    v108 = v0[18];
    v17 = swift_slowAlloc();
    swift_slowAlloc();
    *v17 = 136315394;
    v7(v14, v13, v16);
    sub_2543A2888();
    (*(v15 + 8))(v13, v16);
    v18 = sub_2542D5198();

    *(v17 + 4) = v18;
    *(v17 + 12) = 2080;
    sub_2542ED4C0(v107, v106);
    sub_2543A2888();
    sub_2542ED524(v107);
    OUTLINED_FUNCTION_60_0();
    v19 = sub_2542D5198();

    *(v17 + 14) = v19;
    _os_log_impl(&dword_2542B7000, v8, v109, "Forwarding model update from %s: %s", v17, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_82();
    OUTLINED_FUNCTION_82();

    v20 = *(v12 + 8);
    v21 = v111;
  }

  else
  {
    v22 = v0[26];
    v23 = v0[27];
    v24 = v0[22];

    sub_2542ED524(v24);
    v25 = *(v23 + 8);
    v26 = OUTLINED_FUNCTION_60_0();
    v27(v26);
    v20 = *(v12 + 8);
    v21 = v11;
  }

  v28 = v113;
  v114 = v20;
  v20(v21, v28);
  v110 = v0[32];
  v112 = v0[30];
  v30 = v0[24];
  v29 = v0[25];
  v31 = v0[23];
  v32 = v0[14];
  v33 = v0[15];
  v34 = v0[13];
  v35 = *(v33 + *((*MEMORY[0x277D85000] & *v33) + 0xA8));

  sub_2543A2048();

  v36 = qword_27F5F8870;
  OUTLINED_FUNCTION_64_0();
  sub_2542ED9E4(v34, v33 + v36);
  swift_endAccess();
  v37 = qword_27F5F8868;
  OUTLINED_FUNCTION_97();
  v38 = *(v33 + v37);
  v39 = swift_task_alloc();
  v39[2] = v30;
  v39[3] = v31;
  v39[4] = v32;
  v40 = swift_task_alloc();
  v40[2] = v30;
  v40[3] = v31;
  v40[4] = sub_2542EDA48;
  v40[5] = v39;
  OUTLINED_FUNCTION_47_0();
  _s16NetworkingServerC15DeviceCacheItemVMa();
  v41 = *(swift_getAssociatedConformanceWitness() + 8);
  sub_2543A2768();
  sub_2543A2788();

  v42 = sub_2543A2798();

  v0[12] = v42;
  v43 = swift_task_alloc();
  *v43 = v30;
  v43[1] = v31;
  swift_getKeyPath();

  OUTLINED_FUNCTION_45_0();
  sub_2543A2778();
  v44 = type metadata accessor for CarrySettings.SyncManager();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_75_0();
  v52 = sub_254369100(v45, v46, v47, v44, v48, v49, v50, v51);

  v117(v110, v119 + v115, v112);
  sub_2543A2768();
  v53 = sub_2543A1F98();
  v54 = sub_2543A3008();

  v55 = os_log_type_enabled(v53, v54);
  v57 = v0[31];
  v56 = v0[32];
  v58 = v0[30];
  if (v55)
  {
    v59 = OUTLINED_FUNCTION_129();
    v122 = v56;
    v60 = OUTLINED_FUNCTION_87();
    *v59 = 136315138;
    MEMORY[0x259C09530](v52, v44);
    v61 = sub_2542D5198();

    *(v59 + 4) = v61;
    OUTLINED_FUNCTION_65_0(&dword_2542B7000, v62, v54, "Broadcasting to %s");
    __swift_destroy_boxed_opaque_existential_0(v60);
    OUTLINED_FUNCTION_82();
    OUTLINED_FUNCTION_82();

    v63 = v122;
  }

  else
  {

    v63 = v56;
  }

  v114(v63, v58);
  result = sub_254372808(v52);
  v65 = v52;
  v123 = result;
  if (result)
  {
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v66 = 0;
    v118 = v0[19];
    v120 = v52;
    v116 = v52 & 0xC000000000000001;
    do
    {
      if (v116)
      {
        v67 = MEMORY[0x259C09DA0](v66, v65);
      }

      else
      {
        v67 = *(v65 + 8 * v66 + 32);
      }

      v69 = v0[20];
      v68 = v0[21];
      v71 = v0[16];
      v70 = v0[17];
      v72 = v0[13];
      v73 = sub_2543A2BB8();
      OUTLINED_FUNCTION_73_0();
      __swift_storeEnumTagSinglePayload(v74, v75, v76, v73);
      sub_2542ED4C0(v72, v68);
      v77 = (*(v118 + 80) + 40) & ~*(v118 + 80);
      v78 = swift_allocObject();
      v78[2] = 0;
      v78[3] = 0;
      v78[4] = v67;
      sub_2542ED378(v68, v78 + v77);
      v79 = OUTLINED_FUNCTION_46();
      sub_2542EDD5C(v79, v80, &qword_27F5DF328, &qword_2543A68B0);
      LODWORD(v70) = __swift_getEnumTagSinglePayload(v71, 1, v73);

      v81 = v0[16];
      if (v70 == 1)
      {
        v82 = v0[16];
        OUTLINED_FUNCTION_47_0();
        sub_2542EDDC0(v83, v84, v85);
      }

      else
      {
        sub_2543A2BA8();
        OUTLINED_FUNCTION_19_0(v73);
        (*(v86 + 8))(v81, v73);
      }

      v88 = v78[2];
      v87 = v78[3];
      swift_unknownObjectRetain();

      if (v88)
      {
        swift_getObjectType();
        v89 = sub_2543A2B58();
        v91 = v90;
        swift_unknownObjectRelease();
      }

      else
      {
        v89 = 0;
        v91 = 0;
      }

      v92 = v0[17];
      OUTLINED_FUNCTION_47_0();
      sub_2542EDDC0(v93, v94, v95);
      v96 = swift_allocObject();
      *(v96 + 16) = &unk_2543A7D48;
      *(v96 + 24) = v78;
      if (v91 | v89)
      {
        v0[2] = 0;
        v0[3] = 0;
        v0[4] = v89;
        v0[5] = v91;
      }

      ++v66;
      swift_task_create();

      v65 = v120;
    }

    while (v123 != v66);
  }

  v97 = v0[32];
  v98 = v0[33];
  v100 = v0[28];
  v99 = v0[29];
  v102 = v0[21];
  v101 = v0[22];
  v104 = v0[16];
  v103 = v0[17];

  OUTLINED_FUNCTION_25();

  return v105();
}

uint64_t sub_2542EB708(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = *MEMORY[0x277D85000];
  v25 = *((*MEMORY[0x277D85000] & *a2) + 0x58);
  v24 = *((v6 & v5) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = &v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF328, &qword_2543A68B0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v24 - v14;
  v16 = *a1;
  v17 = a1[1];
  v18 = sub_2543A2BB8();
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v18);
  v19 = swift_allocObject();
  swift_weakInit();
  (*(v8 + 16))(v11, a3, AssociatedTypeWitness);
  v20 = (*(v8 + 80) + 72) & ~*(v8 + 80);
  v21 = swift_allocObject();
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  v22 = v25;
  *(v21 + 4) = v24;
  *(v21 + 5) = v22;
  *(v21 + 6) = v19;
  *(v21 + 7) = v16;
  *(v21 + 8) = v17;
  (*(v8 + 32))(&v21[v20], v11, AssociatedTypeWitness);
  sub_2542D61B4(v16, v17);
  sub_25434DFA4();
}

uint64_t sub_2542EB95C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v13;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v9 = *(a8 - 8);
  v8[11] = v9;
  v10 = *(v9 + 64) + 15;
  v8[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2542EBA20, 0, 0);
}

uint64_t sub_2542EBA20()
{
  OUTLINED_FUNCTION_28();
  v1 = v0[5];
  OUTLINED_FUNCTION_30();
  Strong = swift_weakLoadStrong();
  v0[13] = Strong;
  if (Strong)
  {
    v0[14] = *((*MEMORY[0x277D85000] & *Strong) + 0x90);
    v3 = OUTLINED_FUNCTION_39_0();

    return MEMORY[0x2822009F8](v3, v4, v5);
  }

  else
  {
    v6 = v0[12];

    OUTLINED_FUNCTION_25();

    return v7();
  }
}

uint64_t sub_2542EBAEC()
{
  OUTLINED_FUNCTION_31();
  v14 = v0[10];
  (*(v0[11] + 16))(v0[12], v0[13] + v0[14], v0[9]);
  v1 = *(v14 + 72);
  OUTLINED_FUNCTION_42();
  v13 = (v2 + *v2);
  v4 = *(v3 + 4);
  v5 = swift_task_alloc();
  v0[15] = v5;
  *v5 = v0;
  v5[1] = sub_2542EBC18;
  v6 = v0[12];
  v7 = v0[9];
  v8 = v0[10];
  v9 = v0[7];
  v10 = v0[8];
  v11 = OUTLINED_FUNCTION_29_0(v0[6]);

  return v13(v11);
}

uint64_t sub_2542EBC18()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_13_2();
  *v3 = v2;
  v5 = v4[15];
  v6 = v4[12];
  v7 = v4[11];
  v8 = v4[9];
  v9 = *v1;
  OUTLINED_FUNCTION_7();
  *v10 = v9;
  *(v11 + 128) = v0;

  v12 = OUTLINED_FUNCTION_34_0();
  v13(v12);
  OUTLINED_FUNCTION_139();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_2542EBD68()
{
  OUTLINED_FUNCTION_28();
  v1 = *(v0 + 104);

  v2 = *(v0 + 96);

  OUTLINED_FUNCTION_25();

  return v3();
}

uint64_t sub_2542EBDC8()
{
  OUTLINED_FUNCTION_28();
  v2 = v0[12];
  v1 = v0[13];

  OUTLINED_FUNCTION_27();
  v4 = v0[16];

  return v3();
}

uint64_t CarrySettings.NetworkingServer.prewarm()()
{
  OUTLINED_FUNCTION_28();
  v1[2] = v0;
  v2 = *v0;
  v3 = *MEMORY[0x277D85000];
  v1[3] = *MEMORY[0x277D85000] & *v0;
  v4 = *((v3 & v2) + 0x50);
  v1[4] = v4;
  v5 = *(v4 - 8);
  v1[5] = v5;
  v6 = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_146();
  v7 = OUTLINED_FUNCTION_15_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2542EBF1C()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[3];
  (*(v0[5] + 16))(v0[6], v0[2] + *((*MEMORY[0x277D85000] & *v0[2]) + 0x90), v0[4]);
  v2 = *(v1 + 88);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_42();
  v11 = (v4 + *v4);
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_2542EC070;
  v8 = v0[6];
  v9 = OUTLINED_FUNCTION_29_0(v0[4]);

  return v11(v9, v2);
}

uint64_t sub_2542EC070()
{
  OUTLINED_FUNCTION_194();
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_41();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v6 = v5[7];
  v7 = v5[6];
  v8 = v5[5];
  v9 = v5[4];
  v10 = *v1;
  OUTLINED_FUNCTION_7();
  *v11 = v10;
  v3[8] = v0;

  v12 = OUTLINED_FUNCTION_17_1();
  v13(v12);
  if (v0)
  {
    v14 = v3[2];
    OUTLINED_FUNCTION_39_0();
    OUTLINED_FUNCTION_196();

    return MEMORY[0x2822009F8](v15, v16, v17);
  }

  else
  {
    v19 = v3[6];

    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_196();

    return v21(v20, v21, v22, v23, v24, v25, v26, v27);
  }
}

uint64_t sub_2542EC1E8()
{
  OUTLINED_FUNCTION_28();
  v1 = *(v0 + 48);

  OUTLINED_FUNCTION_27();
  v3 = *(v0 + 64);

  return v2();
}

uint64_t sub_2542EC244(uint64_t a1)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x58);
  v42 = *((*MEMORY[0x277D85000] & *v1) + 0x50);
  v43 = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = OUTLINED_FUNCTION_3(AssociatedTypeWitness);
  v7 = v6;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v5);
  v40 = &v36[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v13 = &v36[-v12];
  v14 = sub_2543A1FB8();
  v15 = OUTLINED_FUNCTION_3(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  v21 = &v36[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = *(v17 + 16);
  v44 = v1;
  v41 = v23;
  v22(v21, v1 + qword_27F5DFAA0);
  v24 = *(v7 + 16);
  v24(v13, a1, AssociatedTypeWitness);
  v25 = sub_2543A1F98();
  sub_2543A3008();
  OUTLINED_FUNCTION_72_0();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = OUTLINED_FUNCTION_129();
    v39 = a1;
    v28 = v27;
    v38 = OUTLINED_FUNCTION_87();
    v45 = v38;
    *v28 = 136315138;
    v37 = v21;
    v24(v40, v13, AssociatedTypeWitness);
    sub_2543A2888();
    v29 = OUTLINED_FUNCTION_70_0();
    v30(v29, AssociatedTypeWitness);
    v31 = sub_2542D5198();

    *(v28 + 4) = v31;
    _os_log_impl(&dword_2542B7000, v25, v37, "Removing %s from cache", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v38);
    OUTLINED_FUNCTION_82();
    OUTLINED_FUNCTION_82();
  }

  else
  {

    v32 = OUTLINED_FUNCTION_70_0();
    v33(v32, AssociatedTypeWitness);
  }

  (*(v17 + 8))(v21, v41);
  OUTLINED_FUNCTION_64_0();
  _s16NetworkingServerC15DeviceCacheItemVMa();
  v34 = *(swift_getAssociatedConformanceWitness() + 8);
  OUTLINED_FUNCTION_75_0();
  sub_2543A27B8();
  sub_2543A2738();
  result = swift_endAccess();
  if (v45)
  {
    sub_2543A2028();
    sub_2543A2028();
  }

  return result;
}

uint64_t CarrySettings.NetworkingServer.synchronize(_:)()
{
  OUTLINED_FUNCTION_28();
  v1[2] = v2;
  v1[3] = v0;
  v3 = *((*MEMORY[0x277D85000] & *v0) + 0x58);
  v4 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  v1[4] = swift_getAssociatedTypeWitness();
  v5 = sub_2543A30C8();
  v1[5] = v5;
  OUTLINED_FUNCTION_8(v5);
  v1[6] = v6;
  v8 = *(v7 + 64);
  v1[7] = OUTLINED_FUNCTION_146();
  v9 = type metadata accessor for CarrySettings.DataModel(0);
  v1[8] = v9;
  OUTLINED_FUNCTION_110(v9);
  v11 = *(v10 + 64);
  v1[9] = OUTLINED_FUNCTION_82_0();
  v1[10] = swift_task_alloc();
  v12 = sub_2543A1FB8();
  v1[11] = v12;
  OUTLINED_FUNCTION_8(v12);
  v1[12] = v13;
  v15 = *(v14 + 64);
  v1[13] = OUTLINED_FUNCTION_146();
  v16 = OUTLINED_FUNCTION_15_1();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_2542EC774()
{
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_46_0();
  v1 = v0[13];
  v3 = v0[10];
  v2 = v0[11];
  v5 = v0[2];
  v4 = v0[3];
  v6 = OUTLINED_FUNCTION_50(v0[12]);
  v7(v6);
  sub_2542ED4C0(v5, v3);
  v8 = sub_2543A1F98();
  v9 = sub_2543A3008();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[12];
  v12 = v0[13];
  v14 = v0[10];
  v13 = v0[11];
  if (v10)
  {
    v16 = v0[8];
    v15 = v0[9];
    v32 = v0[13];
    v17 = OUTLINED_FUNCTION_129();
    v33 = OUTLINED_FUNCTION_87();
    *v17 = 136315138;
    sub_2542ED4C0(v14, v15);
    sub_2543A2888();
    sub_2542ED524(v14);
    v18 = sub_2542D5198();

    *(v17 + 4) = v18;
    _os_log_impl(&dword_2542B7000, v8, v9, "Syncronizing %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    OUTLINED_FUNCTION_82();
    OUTLINED_FUNCTION_82();

    (*(v11 + 8))(v32, v13);
  }

  else
  {

    sub_2542ED524(v14);
    (*(v11 + 8))(v12, v13);
  }

  v19 = v0[7];
  v20 = v0[4];
  OUTLINED_FUNCTION_73_0();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
  v25 = swift_task_alloc();
  v0[14] = v25;
  *v25 = v0;
  v25[1] = sub_2542EC954;
  v26 = v0[7];
  v27 = v0[3];
  OUTLINED_FUNCTION_29_0(v0[2]);
  OUTLINED_FUNCTION_128();

  return sub_2542EAC1C(v28, v29);
}

uint64_t sub_2542EC954()
{
  OUTLINED_FUNCTION_194();
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_41();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v6 = v5[14];
  v7 = v5[7];
  v8 = v5[6];
  v9 = v5[5];
  v10 = *v1;
  OUTLINED_FUNCTION_7();
  *v11 = v10;
  v3[15] = v0;

  v12 = OUTLINED_FUNCTION_17_1();
  v13(v12);
  if (v0)
  {
    v14 = v3[3];
    OUTLINED_FUNCTION_39_0();
    OUTLINED_FUNCTION_196();

    return MEMORY[0x2822009F8](v15, v16, v17);
  }

  else
  {
    v19 = v3[13];
    v21 = v3[9];
    v20 = v3[10];
    v22 = v3[7];

    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_196();

    return v24(v23, v24, v25, v26, v27, v28, v29, v30);
  }
}

uint64_t sub_2542ECAEC()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[13];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[7];

  OUTLINED_FUNCTION_27();
  v6 = v0[15];

  return v5();
}

uint64_t sub_2542ECB70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7)
{
  v39 = a5;
  v36[1] = a7;
  v36[2] = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v36[0] = v36 - v11;
  v12 = sub_2543A30C8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v37 = *(TupleTypeMetadata2 - 8);
  v14 = *(v37 + 64);
  v15 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v17 = v36 - v16;
  v18 = *(v12 - 8);
  v19 = v18[8];
  v20 = MEMORY[0x28223BE20](v15);
  v22 = v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = v36 - v23;
  v38 = v9;
  (*(v9 + 16))(v36 - v23, a1, AssociatedTypeWitness);
  __swift_storeEnumTagSinglePayload(v24, 0, 1, AssociatedTypeWitness);
  v25 = *(TupleTypeMetadata2 + 48);
  v26 = v18[2];
  v26(v17, v24, v12);
  v26(&v17[v25], v39, v12);
  if (__swift_getEnumTagSinglePayload(v17, 1, AssociatedTypeWitness) != 1)
  {
    v26(v22, v17, v12);
    if (__swift_getEnumTagSinglePayload(&v17[v25], 1, AssociatedTypeWitness) != 1)
    {
      v29 = v38;
      v30 = v36[0];
      (*(v38 + 32))(v36[0], &v17[v25], AssociatedTypeWitness);
      v31 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
      v32 = sub_2543A2848();
      v33 = *(v29 + 8);
      v33(v30, AssociatedTypeWitness);
      v34 = v18[1];
      v34(v24, v12);
      v33(v22, AssociatedTypeWitness);
      v34(v17, v12);
      v28 = v32 ^ 1;
      return v28 & 1;
    }

    (v18[1])(v24, v12);
    (*(v38 + 8))(v22, AssociatedTypeWitness);
    goto LABEL_6;
  }

  v27 = v18[1];
  v27(v24, v12);
  if (__swift_getEnumTagSinglePayload(&v17[v25], 1, AssociatedTypeWitness) != 1)
  {
LABEL_6:
    (*(v37 + 8))(v17, TupleTypeMetadata2);
    v28 = 1;
    return v28 & 1;
  }

  v27(v17, v12);
  v28 = 0;
  return v28 & 1;
}

uint64_t sub_2542ECF90(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];

  swift_getAtKeyPath();
}

uint64_t sub_2542ED024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_2542ED044, a4, 0);
}

uint64_t sub_2542ED044()
{
  OUTLINED_FUNCTION_28();
  v1 = *(v0 + 16);
  sub_25434EF80(*(v0 + 24));
  OUTLINED_FUNCTION_27();

  return v2();
}

void CarrySettings.NetworkingServer.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  CarrySettings.NetworkingServer.init()();
}

void CarrySettings.NetworkingServer.init()()
{
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

char *CarrySettings.NetworkingServer.deinit()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  sub_2542ED524(&v0[qword_27F5F8870]);
  v3 = *&v0[qword_27F5F8868];

  v4 = *&v0[qword_27F5DFA90];

  sub_2542ED5F0(&v0[qword_27F5DFA98]);
  v5 = qword_27F5DFAA0;
  v6 = sub_2543A1FB8();
  OUTLINED_FUNCTION_2_3(v6);
  (*(v7 + 8))(&v0[v5]);
  OUTLINED_FUNCTION_12_3();
  (*(*(*((v2 & v1) + 0x50) - 8) + 8))(&v0[*(v8 + 144)]);
  OUTLINED_FUNCTION_12_3();
  v10 = *&v0[*(v9 + 152)];

  OUTLINED_FUNCTION_12_3();
  v12 = *&v0[*(v11 + 160)];

  OUTLINED_FUNCTION_12_3();
  v14 = *&v0[*(v13 + 168)];

  swift_defaultActor_destroy();
  return v0;
}

uint64_t CarrySettings.NetworkingServer.__deallocating_deinit()
{
  CarrySettings.NetworkingServer.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2542ED2BC()
{
  swift_getAssociatedTypeWitness();
  v0 = *(type metadata accessor for CarrySettings.BufferItem() + 28);
  v1 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  return sub_2543A2848() & 1;
}

uint64_t sub_2542ED378(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarrySettings.DataModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2542ED3DC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2542ED418()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_68_0();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_17(v1);
  *v2 = v3;
  v2[1] = sub_2542DB160;
  OUTLINED_FUNCTION_31_0();

  return sub_2542E5FD4(v4, v5, v6, v0);
}

uint64_t sub_2542ED4C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarrySettings.DataModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2542ED524(uint64_t a1)
{
  v2 = type metadata accessor for CarrySettings.DataModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2542ED580()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_2542ED2BC() & 1;
}

uint64_t sub_2542ED5A4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t dispatch thunk of CarrySettingsNetworkingServerDelegate.installProfile(withData:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 8);
  OUTLINED_FUNCTION_42();
  v14 = (v6 + *v6);
  v8 = *(v7 + 4);
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_39(v9);
  *v10 = v11;
  v10[1] = sub_2542DB160;
  v12 = OUTLINED_FUNCTION_61_0();

  return v14(v12);
}

void sub_2542ED74C(uint64_t a1)
{
  sub_2542ED8D0();
  if (v3 <= 0x3F)
  {
    v9 = *(v2 - 8) + 64;
    v4 = sub_2543A1FB8();
    if (v5 <= 0x3F)
    {
      v10 = *(v4 - 8) + 64;
      v6 = *(a1 + 80);
      v7 = swift_checkMetadataState();
      if (v8 <= 0x3F)
      {
        v11 = *(v7 - 8) + 64;
        swift_initClassMetadata2();
      }
    }
  }
}

void sub_2542ED8D0()
{
  if (!qword_27F5DFB30[0])
  {
    _s20CarryDeviceMergeableVMa(255);
    v0 = sub_2543A30C8();
    if (!v1)
    {
      atomic_store(v0, qword_27F5DFB30);
    }
  }
}

uint64_t sub_2542ED928()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2542ED964(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2542ED9A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2542ED9E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarrySettings.DataModel(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_2542EDA54(uint64_t a1, void *a2)
{
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  return v3(a1, *a2, a2[1], a2[2]) & 1;
}

uint64_t sub_2542EDAB4()
{
  v1 = type metadata accessor for CarrySettings.DataModel(0);
  OUTLINED_FUNCTION_8(v1);
  v3 = *(v2 + 80);
  v6 = *(v5 + 64);
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  v8 = *(v0 + 32);

  v4 = (v3 + 40) & ~v3;
  v9 = v0 + v4;
  v10 = _s20CarryDeviceMergeableVMa(0);
  if (!__swift_getEnumTagSinglePayload(v0 + v4, 1, v10))
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFBB8, &qword_2543A7D28);
    OUTLINED_FUNCTION_2_3(v11);
    (*(v12 + 8))(v0 + v4);
    v13 = v10[5];
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFBC0, &qword_2543A7D30);
    OUTLINED_FUNCTION_2_3(v14);
    (*(v15 + 8))(v9 + v13);
    v16 = v10[6];
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFBC8, &qword_2543A7D38);
    OUTLINED_FUNCTION_2_3(v17);
    (*(v18 + 8))(v9 + v16);
    v19 = v10[7];
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFBD0, &qword_2543A7D40);
    OUTLINED_FUNCTION_2_3(v20);
    (*(v21 + 8))(v9 + v19);
    v22 = *(v9 + v10[8]);
  }

  v23 = OUTLINED_FUNCTION_54_0();

  return MEMORY[0x2821FE8E8](v23, v24, v25);
}

uint64_t sub_2542EDC74()
{
  OUTLINED_FUNCTION_40();
  v2 = v1;
  v3 = type metadata accessor for CarrySettings.DataModel(0);
  OUTLINED_FUNCTION_110(v3);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v0[2];
  v7 = v0[3];
  v8 = v0[4];
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_17(v9);
  *v10 = v11;
  v10[1] = sub_2542D32CC;

  return sub_2542ED024(v2, v6, v7, v8, v0 + v5);
}

uint64_t sub_2542EDD5C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_19_0(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2542EDDC0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_2_3(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_2542EDE14()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2542EDE4C()
{
  OUTLINED_FUNCTION_31();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_17(v3);
  *v4 = v5;
  v4[1] = sub_2542DB160;

  return sub_25433C130();
}

uint64_t sub_2542EDF04()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_110(AssociatedTypeWitness);
  v5 = *(v4 + 80);
  v6 = OUTLINED_FUNCTION_59_0();

  return sub_2542EA4FC(v6, v7, v8);
}

uint64_t objectdestroy_24Tm()
{
  v2 = v0[2];
  v1 = v0[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3(AssociatedTypeWitness);
  v5 = v4;
  v6 = *(v4 + 80);
  v8 = *(v7 + 64);
  v9 = v0[4];

  (*(v5 + 8))(v0 + ((v6 + 40) & ~v6), AssociatedTypeWitness);
  v10 = OUTLINED_FUNCTION_54_0();

  return MEMORY[0x2821FE8E8](v10, v11, v12);
}

uint64_t sub_2542EE03C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_110(AssociatedTypeWitness);
  v5 = *(v4 + 80);
  v6 = OUTLINED_FUNCTION_59_0();

  return sub_2542EB708(v6, v7, v8);
}

uint64_t sub_2542EE0B0()
{
  v2 = v0[4];
  v1 = v0[5];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3(AssociatedTypeWitness);
  v5 = v4;
  v6 = *(v4 + 80);
  v8 = *(v7 + 64);
  v9 = v0[2];
  swift_unknownObjectRelease();
  v10 = v0[6];

  sub_2542D7D40(v0[7], v0[8]);
  (*(v5 + 8))(v0 + ((v6 + 72) & ~v6), AssociatedTypeWitness);
  v11 = OUTLINED_FUNCTION_54_0();

  return MEMORY[0x2821FE8E8](v11, v12, v13);
}

uint64_t sub_2542EE184()
{
  OUTLINED_FUNCTION_69_0();
  v2 = v1;
  v3 = v0[4];
  v4 = v0[5];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_110(AssociatedTypeWitness);
  v7 = (*(v6 + 80) + 72) & ~*(v6 + 80);
  v8 = v0[2];
  v9 = v0[3];
  v10 = v0[6];
  v11 = v0[7];
  v12 = v0[8];
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_2542D32CC;
  OUTLINED_FUNCTION_31_0();
  OUTLINED_FUNCTION_77_0();

  return sub_2542EB95C(v14, v15, v16, v17, v18, v19, v20, v21);
}

uint64_t sub_2542EE2A8()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 5);
  v3 = type metadata accessor for CarrySettings.DataModel(0);
  OUTLINED_FUNCTION_8(v3);
  v5 = *(v4 + 80);
  v6 = (v5 + 56) & ~v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_58_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3(AssociatedTypeWitness);
  v11 = v10;
  v12 = *(v10 + 80);
  v14 = *(v13 + 64);
  v15 = *(v0 + 2);
  swift_unknownObjectRelease();
  v16 = *(v0 + 6);

  v17 = &v0[v6];
  v18 = _s20CarryDeviceMergeableVMa(0);
  if (!__swift_getEnumTagSinglePayload(&v0[v6], 1, v18))
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFBB8, &qword_2543A7D28);
    OUTLINED_FUNCTION_2_3(v19);
    (*(v20 + 8))(&v0[v6]);
    v34 = v8;
    v21 = v18[5];
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFBC0, &qword_2543A7D30);
    OUTLINED_FUNCTION_2_3(v22);
    (*(v23 + 8))(&v17[v21]);
    v24 = v18[6];
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFBC8, &qword_2543A7D38);
    OUTLINED_FUNCTION_2_3(v25);
    (*(v26 + 8))(&v17[v24]);
    v27 = v18[7];
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFBD0, &qword_2543A7D40);
    OUTLINED_FUNCTION_2_3(v28);
    v30 = &v17[v27];
    v8 = v34;
    (*(v29 + 8))(v30);
    v31 = *&v17[v18[8]];
  }

  v32 = (v6 + v8 + v12) & ~v12;
  (*(v11 + 8))(&v0[v32], AssociatedTypeWitness);

  return MEMORY[0x2821FE8E8](v0, v32 + v14, v5 | v12 | 7);
}

uint64_t sub_2542EE510()
{
  OUTLINED_FUNCTION_69_0();
  v3 = v0[4];
  v2 = v0[5];
  v4 = type metadata accessor for CarrySettings.DataModel(0);
  OUTLINED_FUNCTION_8(v4);
  v7 = ((*(v5 + 80) + 56) & ~*(v5 + 80)) + *(v6 + 64);
  OUTLINED_FUNCTION_45_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_110(AssociatedTypeWitness);
  v10 = (v7 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = v0[2];
  v12 = v0[3];
  v13 = v0[6];
  v14 = swift_task_alloc();
  *(v1 + 16) = v14;
  *v14 = v1;
  v14[1] = sub_2542DB160;
  OUTLINED_FUNCTION_31_0();
  OUTLINED_FUNCTION_77_0();

  return sub_2542EA7D4(v15, v16, v17, v18, v19, v20);
}

uint64_t objectdestroy_2Tm_0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2542EE6B4()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_68_0();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_17(v1);
  *v2 = v3;
  v2[1] = sub_2542DB160;
  OUTLINED_FUNCTION_31_0();

  return sub_2542EA22C(v4, v5, v6, v0);
}

uint64_t sub_2542EE75C()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2542EE794()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_33_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_39(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5_3(v1);

  return sub_2542E6800(v3, v4);
}

uint64_t sub_2542EE820()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_33_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_39(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5_3(v1);

  return sub_2542E7494(v3, v4);
}

uint64_t sub_2542EE8AC()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_33_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_39(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5_3(v1);

  return sub_2542E79A4(v3, v4, v5, v6);
}

uint64_t sub_2542EE938()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_33_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_39(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5_3(v1);

  return sub_2542E8F54(v3, v4);
}

uint64_t sub_2542EE9CC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t OUTLINED_FUNCTION_18_0(uint64_t a1)
{
  *(a1 + 8) = sub_2542E944C;
  v3 = *(v2 + 184);
  return v1;
}

void OUTLINED_FUNCTION_33_0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
}

id OUTLINED_FUNCTION_48_0()
{
  v2 = (v0[8] + *(v0[22] + 40));
  v3 = *v2;
  v4 = v2[1];
  v5 = v0[26];

  return v5;
}

int8x16_t OUTLINED_FUNCTION_52_0(int8x16_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int8x16_t a9)
{
  result = vextq_s8(a9, a9, 8uLL);
  a1[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_62_0()
{
  result = v0[17];
  v2 = v0[15];
  v3 = *(v0[16] + 16);
  v4 = v0[31] + v0[32];
  return result;
}

void OUTLINED_FUNCTION_63_0(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, os_log_t log)
{

  _os_log_impl(a1, log, v11, a4, v10, 0xCu);
}

uint64_t OUTLINED_FUNCTION_64_0()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_65_0(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_67_0()
{
  v2 = v1[31];
  v3 = v1[23];
  v4 = v1[19];
  return v0;
}

void OUTLINED_FUNCTION_68_0()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[6];
}

void OUTLINED_FUNCTION_71_0()
{
  v1 = v0[28];
  v2 = v0[26];
  v3 = v0[23];
  v4 = *(v0[27] + 8);
}

uint64_t OUTLINED_FUNCTION_80_0()
{
  v2 = v0[36];
  v3 = v0[32];
  v4 = v0[33];
  v6 = v0[29];
  v5 = v0[30];
  v7 = v0[27];
}

uint64_t OUTLINED_FUNCTION_81_0(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_82_0()
{

  return swift_task_alloc();
}

uint64_t sub_2542EEECC(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_2543A31D8();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t TableFormatter.Table.title.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_2543A2768();
  return v1;
}

uint64_t TableFormatter.Table.init(title:header:rows:footer:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, void *a6@<X8>)
{
  v6 = *a3;
  v7 = *a5;
  *a6 = result;
  a6[1] = a2;
  a6[2] = v6;
  a6[3] = a4;
  a6[4] = v7;
  return result;
}

Swift::String __swiftcall TableFormatter.Table.string(colSeparator:maxColWidth:)(Swift::String colSeparator, Swift::Int_optional maxColWidth)
{
  is_nil = maxColWidth.is_nil;
  value = maxColWidth.value;
  v104 = *v2;
  v105 = v2[1];
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFC08, &qword_2543A7E10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2543A7DE0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFC10, &qword_2543A7E18);
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_2543A7DE0;
  *(v8 + 32) = v4;
  *(v8 + 40) = v6;
  v107 = v6;
  sub_2543A2768();
  v106 = v4;
  sub_2543A2768();
  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (v9 != 2)
  {
    v11 = v8 + 8 * v9;
    v12 = *(v11 + 32);
    ++v9;
    if (v12)
    {
      v13 = *(v11 + 32);
      sub_2543A2768();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = *(v10 + 16);
        OUTLINED_FUNCTION_4_4();
        sub_2542F0F3C();
        v10 = v17;
      }

      v15 = *(v10 + 16);
      v14 = *(v10 + 24);
      if (v15 >= v14 >> 1)
      {
        OUTLINED_FUNCTION_6_3(v14);
        OUTLINED_FUNCTION_12_4();
        sub_2542F0F3C();
        v10 = v18;
      }

      *(v10 + 16) = v15 + 1;
      *(v10 + 8 * v15 + 32) = v12;
    }
  }

  swift_setDeallocating();
  sub_2542F1458(&qword_27F5DFCA8, &unk_2543A7FA8);
  *(inited + 32) = v10;
  *(inited + 40) = v5;
  isUniquelyReferenced_nonNull_native = sub_2543A2768();
  v21 = MEMORY[0x277D84F90];
  for (i = 32; i != 48; i += 8)
  {
    v23 = *(inited + i);
    v24 = *(v23 + 16);
    v25 = *(v21 + 16);
    if (__OFADD__(v25, v24))
    {
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
      goto LABEL_91;
    }

    v26 = *(inited + i);
    sub_2543A2768();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v25 + v24 > *(v21 + 24) >> 1)
    {
      sub_2542F0F3C();
      v21 = isUniquelyReferenced_nonNull_native;
    }

    if (*(v23 + 16))
    {
      if ((*(v21 + 24) >> 1) - *(v21 + 16) < v24)
      {
        goto LABEL_86;
      }

      swift_arrayInitWithCopy();

      if (v24)
      {
        v27 = *(v21 + 16);
        v28 = __OFADD__(v27, v24);
        v29 = v27 + v24;
        if (v28)
        {
          goto LABEL_88;
        }

        *(v21 + 16) = v29;
      }
    }

    else
    {

      if (v24)
      {
        goto LABEL_83;
      }
    }
  }

  swift_setDeallocating();
  sub_2542F1458(&qword_27F5DFCA0, &qword_2543A7FA0);
  v30 = *(v21 + 16);
  if (v30)
  {
    v31 = v5;
    OUTLINED_FUNCTION_11_2();
    v32 = rawValue;
    v33 = v21 + 32;
    v34 = rawValue[2];
    do
    {
      v35 = *(*v33 + 16);
      rawValue = v32;
      v36 = v32[3];
      if (v34 >= v36 >> 1)
      {
        OUTLINED_FUNCTION_6_3(v36);
        OUTLINED_FUNCTION_12_4();
        sub_2542F1588();
        v32 = rawValue;
      }

      v32[2] = v34 + 1;
      v32[v34 + 4] = v35;
      v33 += 8;
      ++v34;
      --v30;
    }

    while (v30);
    v5 = v31;
  }

  else
  {
    v32 = MEMORY[0x277D84F90];
  }

  v37 = sub_2542EF874(v32);
  v39 = v38;

  if (v39)
  {
    v37 = 0;
  }

  if (v37 < 0)
  {
    goto LABEL_90;
  }

  if (v37)
  {
    v109 = v5;
    OUTLINED_FUNCTION_11_2();
    v40 = 0;
    v41._rawValue = rawValue;
    v42 = is_nil;
    do
    {
      v111 = v40;
      sub_2542EF8B8(&v111, v21, value, v42, &v112);
      v43 = v112;
      rawValue = v41._rawValue;
      v45 = *(v41._rawValue + 2);
      v44 = *(v41._rawValue + 3);
      if (v45 >= v44 >> 1)
      {
        OUTLINED_FUNCTION_6_3(v44);
        OUTLINED_FUNCTION_12_4();
        sub_2542F1588();
        v42 = is_nil;
        v41._rawValue = rawValue;
      }

      ++v40;
      *(v41._rawValue + 2) = v45 + 1;
      *(v41._rawValue + v45 + 4) = v43;
    }

    while (v37 != v40);

    v5 = v109;
  }

  else
  {

    v41._rawValue = MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFC18, &unk_2543B3A20);
  v46 = swift_initStackObject();
  *(v46 + 16) = xmmword_2543A7DF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFC20, &qword_2543A7E20);
  v47 = swift_initStackObject();
  *(v47 + 16) = xmmword_2543A7E00;
  *(v47 + 32) = v104;
  *(v47 + 40) = v105;
  sub_2543A2768();
  v48 = MEMORY[0x277D84F90];
  v49 = *(v47 + 40);
  if (v49)
  {
    v50 = *(v47 + 32);
    v51 = *(v47 + 40);
    sub_2543A2768();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v55 = *(v48 + 16);
      OUTLINED_FUNCTION_4_4();
      sub_2542F0D64();
      v48 = v56;
    }

    v53 = *(v48 + 16);
    v52 = *(v48 + 24);
    if (v53 >= v52 >> 1)
    {
      OUTLINED_FUNCTION_6_3(v52);
      OUTLINED_FUNCTION_12_4();
      sub_2542F0D64();
      v48 = v57;
    }

    *(v48 + 16) = v53 + 1;
    v54 = v48 + 16 * v53;
    *(v54 + 32) = v50;
    *(v54 + 40) = v49;
  }

  swift_setDeallocating();
  sub_2542F1458(&qword_27F5DF998, &qword_2543AEC50);
  *(v46 + 32) = v48;
  v58 = swift_initStackObject();
  *(v58 + 16) = xmmword_2543A7E00;
  if (v106)
  {
    rawValue = v106;
    sub_2543A2768();
    v59 = TableFormatter.Row.string(widths:colSeparator:)(v41, colSeparator);
    countAndFlagsBits = v59._countAndFlagsBits;
    object = v59._object;
  }

  else
  {
    countAndFlagsBits = 0;
    object = 0;
  }

  *(v58 + 32) = countAndFlagsBits;
  *(v58 + 40) = object;
  v62 = MEMORY[0x277D84F90];
  v63 = *(v58 + 40);
  if (v63)
  {
    v64 = *(v58 + 32);
    v65 = *(v58 + 40);
    sub_2543A2768();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v69 = *(v62 + 16);
      OUTLINED_FUNCTION_4_4();
      sub_2542F0D64();
      v62 = v70;
    }

    v67 = *(v62 + 16);
    v66 = *(v62 + 24);
    if (v67 >= v66 >> 1)
    {
      OUTLINED_FUNCTION_6_3(v66);
      sub_2542F0D64();
      v62 = v71;
    }

    *(v62 + 16) = v67 + 1;
    v68 = v62 + 16 * v67;
    *(v68 + 32) = v64;
    *(v68 + 40) = v63;
  }

  swift_setDeallocating();
  sub_2542F1458(&qword_27F5DF998, &qword_2543AEC50);
  *(v46 + 40) = v62;
  v72 = *(v5 + 16);
  v73 = MEMORY[0x277D84F90];
  if (v72)
  {
    rawValue = MEMORY[0x277D84F90];
    sub_2542F1568();
    v73 = rawValue;
    v74 = (v5 + 32);
    do
    {
      v112 = *v74;
      sub_2543A2768();
      v75 = TableFormatter.Row.string(widths:colSeparator:)(v41, colSeparator);

      rawValue = v73;
      v77 = v73[2];
      v76 = v73[3];
      if (v77 >= v76 >> 1)
      {
        OUTLINED_FUNCTION_6_3(v76);
        sub_2542F1568();
        v73 = rawValue;
      }

      v73[2] = v77 + 1;
      *&v73[2 * v77 + 4] = v75;
      ++v74;
      --v72;
    }

    while (v72);
  }

  *(v46 + 48) = v73;
  v78 = swift_initStackObject();
  *(v78 + 16) = xmmword_2543A7E00;
  if (v107)
  {
    rawValue = v107;
    sub_2543A2768();
    v79 = TableFormatter.Row.string(widths:colSeparator:)(v41, colSeparator);
    v80 = v79._countAndFlagsBits;
    v81 = v79._object;
  }

  else
  {

    v80 = 0;
    v81 = 0;
  }

  *(v78 + 32) = v80;
  *(v78 + 40) = v81;
  v82 = MEMORY[0x277D84F90];
  v83 = *(v78 + 40);
  if (v83)
  {
    v84 = *(v78 + 32);
    v85 = *(v78 + 40);
    sub_2543A2768();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v89 = *(v82 + 16);
      OUTLINED_FUNCTION_4_4();
      sub_2542F0D64();
      v82 = v90;
    }

    v87 = *(v82 + 16);
    v86 = *(v82 + 24);
    if (v87 >= v86 >> 1)
    {
      OUTLINED_FUNCTION_6_3(v86);
      sub_2542F0D64();
      v82 = v91;
    }

    *(v82 + 16) = v87 + 1;
    v88 = v82 + 16 * v87;
    *(v88 + 32) = v84;
    *(v88 + 40) = v83;
  }

  swift_setDeallocating();
  isUniquelyReferenced_nonNull_native = sub_2542F1458(&qword_27F5DF998, &qword_2543AEC50);
  *(v46 + 56) = v82;
  v92 = MEMORY[0x277D84F90];
  for (j = 32; j != 64; j += 8)
  {
    v94 = *(v46 + j);
    v95 = *(v94 + 16);
    v96 = *(v92 + 16);
    if (__OFADD__(v96, v95))
    {
      goto LABEL_84;
    }

    v97 = *(v46 + j);
    sub_2543A2768();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v96 + v95 > *(v92 + 24) >> 1)
    {
      sub_2542F0D64();
      v92 = isUniquelyReferenced_nonNull_native;
    }

    if (*(v94 + 16))
    {
      if ((*(v92 + 24) >> 1) - *(v92 + 16) < v95)
      {
        goto LABEL_87;
      }

      swift_arrayInitWithCopy();

      if (v95)
      {
        v98 = *(v92 + 16);
        v28 = __OFADD__(v98, v95);
        v99 = v98 + v95;
        if (v28)
        {
          goto LABEL_89;
        }

        *(v92 + 16) = v99;
      }
    }

    else
    {

      if (v95)
      {
        goto LABEL_85;
      }
    }
  }

  swift_setDeallocating();
  sub_2542F1458(&qword_27F5DFC28, &unk_2543A81D0);
  rawValue = v92;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFC28, &unk_2543A81D0);
  sub_2542F16FC();
  v100 = sub_2543A2818();
  v102 = v101;

  isUniquelyReferenced_nonNull_native = v100;
  v20 = v102;
LABEL_91:
  result._object = v20;
  result._countAndFlagsBits = isUniquelyReferenced_nonNull_native;
  return result;
}

uint64_t sub_2542EF874(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return 0;
  }

  result = a1[4];
  v4 = v1 - 1;
  if (v1 != 1)
  {
    v5 = a1 + 5;
    do
    {
      v7 = *v5++;
      v6 = v7;
      if (result <= v7)
      {
        result = v6;
      }

      --v4;
    }

    while (v4);
  }

  return result;
}

void sub_2542EF8B8(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t *a5@<X8>)
{
  v49 = a5;
  v47 = a4;
  v48 = a3;
  v5 = *(a2 + 16);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v8 = *a1;
    *&v51 = MEMORY[0x277D84F90];
    sub_2542F1568();
    v6 = v51;
    v9 = a2 + 32;
    do
    {
      v10 = 0;
      v11 = 0xE000000000000000;
      if ((v8 & 0x8000000000000000) == 0 && v8 < *(*v9 + 16))
      {
        v12 = *v9 + 16 * v8;
        v10 = *(v12 + 32);
        v11 = *(v12 + 40);
        a1 = sub_2543A2768();
      }

      *&v51 = v6;
      v13 = v6[2];
      v14 = v13 + 1;
      if (v13 >= v6[3] >> 1)
      {
        sub_2542F1568();
        v6 = v51;
      }

      v6[2] = v14;
      v15 = &v6[2 * v13];
      v15[4] = v10;
      v15[5] = v11;
      v9 += 8;
      --v5;
    }

    while (v5);
  }

  else
  {
    v14 = *(MEMORY[0x277D84F90] + 16);
  }

  v16 = 0;
  v17 = v6 + 5;
  v18 = MEMORY[0x277D84F90];
  while (v14 != v16)
  {
    if (v16 >= v6[2])
    {
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      return;
    }

    v20 = *(v17 - 1);
    v19 = *v17;
    *&v51 = 10;
    *(&v51 + 1) = 0xE100000000000000;
    MEMORY[0x28223BE20](a1);
    v46[2] = &v51;
    sub_2543A2768();
    v21 = v19;
    v22 = v50;
    v24 = sub_2542F08F4(0x7FFFFFFFFFFFFFFFLL, 1, sub_2542F1CB8, v46, v20, v21, v23);
    v25 = *(v24 + 16);
    v26 = *(v18 + 2);
    v27 = v26 + v25;
    if (__OFADD__(v26, v25))
    {
      goto LABEL_44;
    }

    v28 = v24;
    v50 = v22;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v27 > *(v18 + 3) >> 1)
    {
      if (v26 <= v27)
      {
        v30 = v26 + v25;
      }

      else
      {
        v30 = v26;
      }

      v18 = sub_2542F101C(isUniquelyReferenced_nonNull_native, v30, 1, v18);
    }

    if (*(v28 + 16))
    {
      if ((*(v18 + 3) >> 1) - *(v18 + 2) < v25)
      {
        goto LABEL_46;
      }

      swift_arrayInitWithCopy();

      if (v25)
      {
        v31 = *(v18 + 2);
        v32 = __OFADD__(v31, v25);
        v33 = v31 + v25;
        if (v32)
        {
          goto LABEL_47;
        }

        *(v18 + 2) = v33;
      }
    }

    else
    {

      if (v25)
      {
        goto LABEL_45;
      }
    }

    v17 += 2;
    ++v16;
  }

  swift_getKeyPath();
  v34 = *(v18 + 2);
  if (v34)
  {
    v55 = MEMORY[0x277D84F90];
    sub_2542F1588();
    v35 = v55;
    v36 = (v18 + 56);
    do
    {
      v37 = *(v36 - 1);
      v38 = *v36;
      v51 = *(v36 - 3);
      v52 = v37;
      v53 = v38;
      sub_2543A2768();
      swift_getAtKeyPath();

      v39 = v54;
      v55 = v35;
      v40 = v35[2];
      if (v40 >= v35[3] >> 1)
      {
        sub_2542F1588();
        v35 = v55;
      }

      v35[2] = v40 + 1;
      v35[v40 + 4] = v39;
      v36 += 4;
      --v34;
    }

    while (v34);
  }

  else
  {

    v35 = MEMORY[0x277D84F90];
  }

  v41 = sub_2542EF874(v35);
  v43 = v42;

  if (v43)
  {
    v44 = 0;
  }

  else
  {
    v44 = v41;
  }

  v45 = 0x7FFFFFFFFFFFFFFFLL;
  if ((v47 & 1) == 0)
  {
    v45 = v48;
  }

  if (v45 < v44)
  {
    v44 = v45;
  }

  *v49 = v44;
}

uint64_t sub_2542EFC7C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  result = sub_2542EFC68();
  *a2 = result;
  return result;
}

Swift::String __swiftcall TableFormatter.Row.string(widths:colSeparator:)(Swift::OpaquePointer widths, Swift::String colSeparator)
{
  v4 = *v2;
  sub_2543A2768();
  sub_2543A2768();
  sub_2542F0188(v4, widths._rawValue);
  v6 = v5;

  swift_getKeyPath();
  v7 = *(v6 + 16);
  if (v7)
  {
    v22 = MEMORY[0x277D84F90];
    sub_2542F1588();
    v8 = v22;
    v9 = (v6 + 32);
    do
    {
      v23 = *v9;
      sub_2543A2768();
      swift_getAtKeyPath();

      v11 = v22[2];
      v10 = v22[3];
      if (v11 >= v10 >> 1)
      {
        OUTLINED_FUNCTION_6_3(v10);
        sub_2542F1588();
      }

      v22[2] = v11 + 1;
      v22[v11 + 4] = v24;
      ++v9;
      --v7;
    }

    while (v7);
  }

  else
  {

    v8 = MEMORY[0x277D84F90];
  }

  v12 = sub_2542EF874(v8);
  v14 = v13;

  if (v14)
  {
    v17 = 0;
  }

  else
  {
    v17 = v12;
  }

  if (v17 < 0)
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x28223BE20](v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFC38, &qword_2543A7E58);
    sub_2542F17AC();
    sub_2543A29D8();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFC28, &unk_2543A81D0);
    sub_2542F16FC();
    v18 = sub_2543A2818();
    v20 = v19;

    v15 = v18;
    v16 = v20;
  }

  result._object = v16;
  result._countAndFlagsBits = v15;
  return result;
}

uint64_t sub_2542EFF24(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v33 = 10;
  v34 = 0xE100000000000000;
  v32 = &v33;
  sub_2543A2768();
  result = sub_2542F08F4(0x7FFFFFFFFFFFFFFFLL, 1, sub_2542F1B8C, v31, a1, a2, v6);
  v8 = result;
  v9 = 0;
  v37 = MEMORY[0x277D84F90];
  v10 = *(result + 16);
  v11 = (result + 56);
  while (v10 != v9)
  {
    if (v9 >= *(v8 + 16))
    {
      __break(1u);
LABEL_15:
      __break(1u);
      return result;
    }

    v13 = *(v11 - 1);
    v12 = *v11;
    v14 = *(v11 - 2);
    v33 = *(v11 - 3);
    v34 = v14;
    v35 = v13;
    v36 = v12;
    sub_2543A2768();
    result = sub_2543A30F8();
    if (!a3)
    {
      goto LABEL_15;
    }

    ++v9;
    MEMORY[0x28223BE20](result);
    v30[2] = &v33;
    v30[3] = a3;
    v16 = sub_2542F038C(sub_2542F1BF8, v30, 0, v15, a3);

    result = sub_2542F1A8C(v16);
    v11 += 4;
  }

  v17 = v37;
  v18 = *(v37 + 16);
  if (v18)
  {
    v33 = MEMORY[0x277D84F90];
    sub_2542F1568();
    v19 = v33;
    v20 = (v17 + 56);
    do
    {
      v21 = *(v20 - 3);
      v22 = *(v20 - 2);
      v23 = *(v20 - 1);
      v24 = *v20;
      sub_2543A2768();
      v25 = MEMORY[0x259C09390](v21, v22, v23, v24);
      v27 = v26;

      v33 = v19;
      v28 = *(v19 + 16);
      if (v28 >= *(v19 + 24) >> 1)
      {
        sub_2542F1568();
        v19 = v33;
      }

      *(v19 + 16) = v28 + 1;
      v29 = v19 + 16 * v28;
      *(v29 + 32) = v25;
      *(v29 + 40) = v27;
      v20 += 4;
      --v18;
    }

    while (v18);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v19;
}

void sub_2542F0188(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v27 = MEMORY[0x277D84F90];
  sub_2542F15A8();
  v25 = v5;
  v26 = v4;
  v23 = a1;
  v24 = v6;
  v22 = a2;
  if (v6)
  {
    v7 = (a2 + 32);
    v8 = (a1 + 40);
    while (v4)
    {
      if (!v5)
      {
        goto LABEL_22;
      }

      v9 = *(v8 - 1);
      v10 = *v8;
      v11 = *v7;
      sub_2543A2768();
      v12 = sub_2542EFF24(v9, v10, v11);

      v13 = *(v27 + 16);
      if (v13 >= *(v27 + 24) >> 1)
      {
        sub_2542F15A8();
      }

      --v5;
      *(v27 + 16) = v13 + 1;
      *(v27 + 8 * v13 + 32) = v12;
      --v4;
      ++v7;
      v8 += 2;
      if (!--v6)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  else
  {
LABEL_11:
    v14 = v24;
    v15 = (v23 + 16 * v24 + 40);
    while (v26 != v14)
    {
      if (v14 >= v26)
      {
        goto LABEL_23;
      }

      if (__OFADD__(v14, 1))
      {
        goto LABEL_24;
      }

      if (v25 == v14)
      {
        return;
      }

      if (v14 >= v25)
      {
        goto LABEL_25;
      }

      v16 = *(v15 - 1);
      v17 = *v15;
      v18 = *(v22 + 32 + 8 * v14);
      sub_2543A2768();
      v19 = sub_2542EFF24(v16, v17, v18);

      v20 = v14;
      v21 = *(v27 + 16);
      if (v21 >= *(v27 + 24) >> 1)
      {
        sub_2542F15A8();
      }

      *(v27 + 16) = v21 + 1;
      *(v27 + 8 * v21 + 32) = v19;
      v14 = v20 + 1;
      v15 += 2;
    }
  }
}

uint64_t sub_2542F038C(void (*a1)(__int128 *__return_ptr, int64_t *), uint64_t a2, int64_t a3, int64_t a4, uint64_t a5)
{
  v6 = v5;
  v7 = a5;
  v8 = a3;
  v9 = sub_2542F1C18(a3, a4, a5);
  v36 = MEMORY[0x277D84F90];
  sub_2542F15E8();
  if (v9 < 0)
  {
LABEL_27:
    __break(1u);
LABEL_28:

    __break(1u);
  }

  else
  {
    v10 = v36;
    v28 = v7;
    if (!v9)
    {
      v12 = v8;
      goto LABEL_15;
    }

    do
    {
      v11 = v8 <= a4;
      if (v7 > 0)
      {
        v11 = v8 >= a4;
      }

      if (v11)
      {
        __break(1u);
        goto LABEL_27;
      }

      if (__OFADD__(v8, v7))
      {
        v12 = ((v8 + v7) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v12 = v8 + v7;
      }

      v31 = v8;
      v32 = 0;
      a1(&v33, &v31);
      if (v6)
      {
        goto LABEL_28;
      }

      v6 = 0;
      v13 = v33;
      v15 = v34;
      v14 = v35;
      v36 = v10;
      v16 = *(v10 + 16);
      if (v16 >= *(v10 + 24) >> 1)
      {
        v26 = v33;
        sub_2542F15E8();
        v13 = v26;
        v10 = v36;
      }

      *(v10 + 16) = v16 + 1;
      v17 = v10 + 32 * v16;
      *(v17 + 32) = v13;
      *(v17 + 48) = v15;
      *(v17 + 56) = v14;
      v8 = v12;
      --v9;
      v7 = v28;
    }

    while (v9);
    while (1)
    {
LABEL_15:
      v18 = v12 <= a4;
      if (v7 > 0)
      {
        v18 = v12 >= a4;
      }

      if (v18)
      {
        return v10;
      }

      if (__OFADD__(v12, v7))
      {
        v19 = ((v12 + v7) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v19 = v12 + v7;
      }

      v31 = v12;
      a1(&v33, &v31);
      if (v6)
      {
        goto LABEL_28;
      }

      v6 = 0;
      v20 = v33;
      v21 = v34;
      v22 = v35;
      v36 = v10;
      v23 = *(v10 + 16);
      if (v23 >= *(v10 + 24) >> 1)
      {
        v27 = v33;
        sub_2542F15E8();
        v20 = v27;
        v10 = v36;
      }

      *(v10 + 16) = v23 + 1;
      v24 = v10 + 32 * v23;
      *(v24 + 32) = v20;
      *(v24 + 48) = v21;
      *(v24 + 56) = v22;
      v12 = v19;
      v7 = v28;
    }
  }

  return result;
}

void sub_2542F05B4(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = a4;
  v6 = *(a2 + 16);
  if (v6)
  {
    v8 = *a1;
    v30 = MEMORY[0x277D84F90];
    v27 = v6;
    sub_2542F1568();
    v9 = v27;
    v10 = 0;
    v29 = a2 + 32;
    v28 = a3 + 32;
    v11 = *(a3 + 16);
    while (v11 != v10)
    {
      v12 = 0;
      v13 = *(v29 + 8 * v10);
      v14 = *(v28 + 8 * v10);
      v15 = 0xE000000000000000;
      if ((v8 & 0x8000000000000000) == 0 && v8 < *(v13 + 16))
      {
        v16 = v13 + 16 * v8;
        v12 = *(v16 + 32);
        v15 = *(v16 + 40);
        sub_2543A2768();
      }

      if (v10 < v27 - 1)
      {
        sub_2543A2768();
        v17 = sub_2543A28D8();
        if (__OFSUB__(v14, v17))
        {
          goto LABEL_18;
        }

        if (v14 - v17 >= 1)
        {
          v18 = sub_2543A2928();
          v20 = v19;
          sub_2543A2768();
          MEMORY[0x259C093D0](v18, v20);
        }

        v9 = v27;
      }

      v21 = *(v30 + 16);
      if (v21 >= *(v30 + 24) >> 1)
      {
        sub_2542F1568();
        v9 = v27;
      }

      ++v10;
      *(v30 + 16) = v21 + 1;
      v22 = v30 + 16 * v21;
      *(v22 + 32) = v12;
      *(v22 + 40) = v15;
      if (v9 == v10)
      {
        v5 = a4;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  else
  {
LABEL_16:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFC28, &unk_2543A81D0);
    sub_2542F16FC();
    v23 = sub_2543A2818();
    v25 = v24;

    *v5 = v23;
    v5[1] = v25;
  }
}

uint64_t sub_2542F07F4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = sub_2543A30E8();
  result = sub_2543A30D8();
  if (v6)
  {
    v7 = a3;
  }

  else
  {
    v7 = result;
  }

  if (v7 >> 14 >= v4 >> 14)
  {
    return sub_2543A3108();
  }

  __break(1u);
  return result;
}

uint64_t sub_2542F08B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_2543A3608() & 1;
  }
}

uint64_t sub_2542F08F4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_2543A2958();
    v11 = v29;
    v12 = v30;
    v13 = v31;

    v14 = sub_2542F101C(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 2);
    a7 = *(v14 + 3);
LABEL_37:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_38:
      *(v14 + 2) = v10;
      v35 = &v14[32 * v9];
      *(v35 + 4) = v7;
      *(v35 + 5) = v11;
      *(v35 + 6) = v12;
      *(v35 + 7) = v13;
      return v14;
    }

LABEL_41:
    v14 = sub_2542F101C((a7 > 1), v10, 1, v14);
    goto LABEL_38;
  }

  v7 = a4;
  v14 = (4 * v16);
  v43 = MEMORY[0x277D84F90];
  v17 = 15;
  while (1)
  {
    v41 = v17;
    while (1)
    {
      v13 = v17 >> 14;
      if ((v17 >> 14) == v14)
      {
        v17 = v41;
        goto LABEL_30;
      }

      v18 = sub_2543A2938();
      v12 = v19;
      v44[0] = v18;
      v44[1] = v19;
      v20 = v45(v44);
      if (v8)
      {

        return v14;
      }

      v21 = v20;

      if (v21)
      {
        break;
      }

      v17 = sub_2543A28E8();
    }

    v23 = (v41 >> 14 == v13) & a2;
    if (v23)
    {
      goto LABEL_20;
    }

    if (v13 < v41 >> 14)
    {
      break;
    }

    v42 = sub_2543A2958();
    v37 = v25;
    v38 = v24;
    v36 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v43 = sub_2542F101C(0, *(v43 + 2) + 1, 1, v43);
    }

    v13 = *(v43 + 2);
    v27 = *(v43 + 3);
    v12 = v13 + 1;
    if (v13 >= v27 >> 1)
    {
      v43 = sub_2542F101C((v27 > 1), v13 + 1, 1, v43);
    }

    *(v43 + 2) = v12;
    v28 = &v43[32 * v13];
    *(v28 + 4) = v42;
    *(v28 + 5) = v38;
    *(v28 + 6) = v37;
    *(v28 + 7) = v36;
LABEL_20:
    v17 = sub_2543A28E8();
    if ((v23 & 1) == 0 && *(v43 + 2) == a1)
    {
LABEL_30:
      if (v17 >> 14) == v14 && (a2)
      {

        return v43;
      }

      if (v14 < v17 >> 14)
      {
        __break(1u);
      }

      else
      {
        v7 = sub_2543A2958();
        v11 = v32;
        v12 = v33;
        v13 = v34;

        v14 = v43;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_36:
          v9 = *(v14 + 2);
          a7 = *(v14 + 3);
          goto LABEL_37;
        }
      }

      v14 = sub_2542F101C(0, *(v14 + 2) + 1, 1, v14);
      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}

void sub_2542F0C90()
{
  OUTLINED_FUNCTION_9_1();
  if (v3)
  {
    OUTLINED_FUNCTION_2_4();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_8_2();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_10();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFC68, &qword_2543A7F48);
    v9 = OUTLINED_FUNCTION_15_2();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_5_4();
    *(v9 + 2) = v7;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v7] <= v11)
    {
      memmove(v11, v12, 16 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, 16 * v7);
  }
}

void sub_2542F0D64()
{
  OUTLINED_FUNCTION_9_1();
  if (v5)
  {
    OUTLINED_FUNCTION_2_4();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_8_2();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_10();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_3_3(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFC90, &unk_2543AE850);
    v9 = OUTLINED_FUNCTION_15_2();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_5_4();
    *(v9 + 2) = v2;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v2] <= v11)
    {
      memmove(v11, v12, 16 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_2542F0E38()
{
  OUTLINED_FUNCTION_9_1();
  if (v5)
  {
    OUTLINED_FUNCTION_2_4();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_8_2();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_10();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_3_3(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFC78, &qword_2543A7F58);
    v9 = swift_allocObject();
    v10 = _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_13_3(v10);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v9 != v0 || &v0[48 * v2 + 32] <= v9 + 32)
    {
      v12 = OUTLINED_FUNCTION_92();
      memmove(v12, v13, v14);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFC80, &unk_2543B4A10);
    OUTLINED_FUNCTION_92();
    swift_arrayInitWithCopy();
  }
}

void sub_2542F0F3C()
{
  OUTLINED_FUNCTION_9_1();
  if (v5)
  {
    OUTLINED_FUNCTION_2_4();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_8_2();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_10();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_3_3(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5DFCB0, &unk_2543B3A10);
    v9 = OUTLINED_FUNCTION_15_2();
    v10 = _swift_stdlib_malloc_size(v9);
    *(v9 + 2) = v2;
    *(v9 + 3) = 2 * ((v10 - 32) / 8);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[8 * v2] <= v11)
    {
      memmove(v11, v12, 8 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

char *sub_2542F101C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFC88, &qword_2543A7F60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_2542F1124()
{
  OUTLINED_FUNCTION_9_1();
  if (v5)
  {
    OUTLINED_FUNCTION_2_4();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_8_2();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_10();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_3_3(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFC58, &qword_2543A7F38);
    v9 = swift_allocObject();
    v10 = _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_13_3(v10);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v9 != v0 || &v0[40 * v2 + 32] <= v9 + 32)
    {
      v12 = OUTLINED_FUNCTION_92();
      memmove(v12, v13, v14);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFC60, &qword_2543A7F40);
    OUTLINED_FUNCTION_92();
    swift_arrayInitWithCopy();
  }
}

void sub_2542F1228()
{
  OUTLINED_FUNCTION_9_1();
  if (v5)
  {
    OUTLINED_FUNCTION_2_4();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_8_2();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_10();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_3_3(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFC50, &qword_2543A7F30);
    v9 = swift_allocObject();
    v10 = _swift_stdlib_malloc_size(v9);
    *(v9 + 2) = v2;
    *(v9 + 3) = 2 * v10 - 64;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[v2] <= v11)
    {
      memmove(v11, v12, v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, v2);
  }
}

void sub_2542F12FC()
{
  OUTLINED_FUNCTION_9_1();
  if (v3)
  {
    OUTLINED_FUNCTION_2_4();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_8_2();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_10();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFC70, &qword_2543A7F50);
    v9 = OUTLINED_FUNCTION_15_2();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_5_4();
    *(v9 + 2) = v7;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v7] <= v11)
    {
      memmove(v11, v12, 16 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, 16 * v7);
  }
}

char *sub_2542F13D0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_8(a3, result);
  }

  return result;
}

char *sub_2542F13F0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_8(a3, result);
  }

  return result;
}

char *sub_2542F1410(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_8(a3, result);
  }

  return result;
}

char *sub_2542F1430(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_8(a3, result);
  }

  return result;
}

uint64_t sub_2542F1458(uint64_t *a1, uint64_t *a2)
{
  v3 = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v2, 32, 7);
}

uint64_t sub_2542F14A8()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_2542F14F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    if (*(v6 + 16) > a1)
    {
      v8 = *(v6 + 16);
    }

    result = a3();
    *v3 = result;
  }

  return result;
}

void sub_2542F1568()
{
  v1 = *v0;
  sub_254391664();
  *v0 = v2;
}

void sub_2542F1588()
{
  v1 = *v0;
  sub_254391720();
  *v0 = v2;
}

void sub_2542F15A8()
{
  v1 = *v0;
  sub_2543917D4();
  *v0 = v2;
}

void sub_2542F15C8()
{
  v1 = *v0;
  sub_254391894();
  *v0 = v2;
}

void sub_2542F15E8()
{
  v1 = *v0;
  sub_254391944();
  *v0 = v2;
}

void sub_2542F1608()
{
  v1 = *v0;
  sub_254391A00();
  *v0 = v2;
}

uint64_t sub_2542F1628(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_2542F14F0(result, 1, sub_2542F0F3C);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_2542F16FC()
{
  result = qword_27F5DFC30;
  if (!qword_27F5DFC30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5DFC28, &unk_2543A81D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DFC30);
  }

  return result;
}

uint64_t sub_2542F1760@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2542EEEC4(*a1);
  *a2 = result;
  return result;
}

void sub_2542F178C(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2[4];
  v4 = v2[5];
  sub_2542F05B4(a1, v2[2], v2[3], a2);
}

unint64_t sub_2542F17AC()
{
  result = qword_27F5DFC40;
  if (!qword_27F5DFC40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5DFC38, &qword_2543A7E58);
    sub_2542F1838();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DFC40);
  }

  return result;
}

unint64_t sub_2542F1838()
{
  result = qword_27F5DFC48;
  if (!qword_27F5DFC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DFC48);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TableFormatter(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x2542F1928);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
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

uint64_t sub_2542F1970(uint64_t a1, int a2)
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

uint64_t sub_2542F19B0(uint64_t result, int a2, int a3)
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

uint64_t sub_2542F1A04(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
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
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2542F1A44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2542F1A8C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_2542F14F0(result, 1, sub_2542F101C);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_2542F1BAC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = a2[2];
  v6 = a2[3];
  result = sub_2542F07F4(*a1, *a2, a2[1]);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v8;
    a3[2] = v9;
    a3[3] = v10;
  }

  return result;
}

uint64_t sub_2542F1C18(int64_t a1, int64_t a2, uint64_t a3)
{
  result = 0;
  while (1)
  {
    v5 = a1 <= a2;
    if (a3 > 0)
    {
      v5 = a1 >= a2;
    }

    if (v5)
    {
      break;
    }

    v6 = __OFADD__(a1, a3);
    a1 += a3;
    if (v6)
    {
      a1 = (a1 >> 63) ^ 0x8000000000000000;
    }

    v6 = __OFADD__(result++, 1);
    if (v6)
    {
      __break(1u);
      return result;
    }
  }

  return result;
}

unint64_t sub_2542F1C60()
{
  result = qword_27F5DFC98;
  if (!qword_27F5DFC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DFC98);
  }

  return result;
}

void OUTLINED_FUNCTION_3_3(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

void OUTLINED_FUNCTION_11_2()
{
  *(v1 - 192) = v0;

  sub_2542F1588();
}

uint64_t OUTLINED_FUNCTION_13_3(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / v3);
  return result;
}

uint64_t OUTLINED_FUNCTION_15_2()
{

  return swift_allocObject();
}

uint64_t BetaEnrollment.StateUpdatedRequest.availability.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR___HPSBetaEnrollmentStateUpdatedRequest_availability;
  OUTLINED_FUNCTION_4_3();
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t BetaEnrollment.StateUpdatedRequest.availability.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR___HPSBetaEnrollmentStateUpdatedRequest_availability;
  OUTLINED_FUNCTION_4_3();
  result = OUTLINED_FUNCTION_3_2();
  *(v1 + v3) = v2;
  return result;
}

id sub_2542F1F64(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  if (v3)
  {
    v4 = sub_2543A2858();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_2542F1FE4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  if (a3)
  {
    v6 = sub_2543A2878();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a1;
  a4(v6, v8);
}

uint64_t BetaEnrollment.StateUpdatedRequest.state.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR___HPSBetaEnrollmentStateUpdatedRequest_state;
  OUTLINED_FUNCTION_4_3();
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t BetaEnrollment.StateUpdatedRequest.state.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR___HPSBetaEnrollmentStateUpdatedRequest_state;
  OUTLINED_FUNCTION_4_3();
  result = OUTLINED_FUNCTION_3_2();
  *(v1 + v3) = v2;
  return result;
}

uint64_t BetaEnrollment.StateUpdatedRequest.enrolledProgramID.getter()
{
  OUTLINED_FUNCTION_6_2();
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t BetaEnrollment.StateUpdatedRequest.enrolledProgramID.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR___HPSBetaEnrollmentStateUpdatedRequest_enrolledProgramID;
  result = OUTLINED_FUNCTION_3_2();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t BetaEnrollment.StateUpdatedRequest.availablePrograms.getter()
{
  v1 = OBJC_IVAR___HPSBetaEnrollmentStateUpdatedRequest_availablePrograms;
  swift_beginAccess();
  v2 = *(v0 + v1);
  return sub_2543A2768();
}

uint64_t BetaEnrollment.StateUpdatedRequest.availablePrograms.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___HPSBetaEnrollmentStateUpdatedRequest_availablePrograms;
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_3_2();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id BetaEnrollment.StateUpdatedRequest.init(availability:groupID:groupName:model:name:pairID:pairName:roomID:roomName:state:enrolledProgramID:availablePrograms:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char *a18, uint64_t a19, char a20, uint64_t a21)
{
  ObjectType = swift_getObjectType();
  v40 = *a1;
  v51 = *a18;
  v23 = OBJC_IVAR___HPSBetaEnrollmentStateUpdatedRequest_availability;
  v21[OBJC_IVAR___HPSBetaEnrollmentStateUpdatedRequest_availability] = 2;
  v24 = &v21[OBJC_IVAR___HPSBetaEnrollmentStateUpdatedRequest_groupID];
  *v24 = 0;
  v24[1] = 0;
  v25 = &v21[OBJC_IVAR___HPSBetaEnrollmentStateUpdatedRequest_groupName];
  *v25 = 0;
  v25[1] = 0;
  v26 = &v21[OBJC_IVAR___HPSBetaEnrollmentStateUpdatedRequest_model];
  *v26 = 0;
  v26[1] = 0;
  v27 = &v21[OBJC_IVAR___HPSBetaEnrollmentStateUpdatedRequest_name];
  *v27 = 0;
  v27[1] = 0;
  v28 = &v21[OBJC_IVAR___HPSBetaEnrollmentStateUpdatedRequest_pairID];
  *v28 = 0;
  v28[1] = 0;
  v29 = &v21[OBJC_IVAR___HPSBetaEnrollmentStateUpdatedRequest_pairName];
  *v29 = 0;
  v29[1] = 0;
  v30 = &v21[OBJC_IVAR___HPSBetaEnrollmentStateUpdatedRequest_roomID];
  *v30 = 0;
  v30[1] = 0;
  v31 = &v21[OBJC_IVAR___HPSBetaEnrollmentStateUpdatedRequest_roomName];
  *v31 = 0;
  v31[1] = 0;
  v47 = OBJC_IVAR___HPSBetaEnrollmentStateUpdatedRequest_state;
  v21[OBJC_IVAR___HPSBetaEnrollmentStateUpdatedRequest_state] = 5;
  v48 = &v21[OBJC_IVAR___HPSBetaEnrollmentStateUpdatedRequest_enrolledProgramID];
  *v48 = 0;
  v48[8] = 1;
  v50 = OBJC_IVAR___HPSBetaEnrollmentStateUpdatedRequest_availablePrograms;
  *&v21[OBJC_IVAR___HPSBetaEnrollmentStateUpdatedRequest_availablePrograms] = 0;
  OUTLINED_FUNCTION_3_2();
  v21[v23] = v40;
  OUTLINED_FUNCTION_3_2();
  *v24 = a2;
  v24[1] = a3;
  OUTLINED_FUNCTION_3_2();
  *v25 = a4;
  v25[1] = a5;
  OUTLINED_FUNCTION_3_2();
  v32 = v26[1];
  *v26 = a6;
  v26[1] = a7;

  OUTLINED_FUNCTION_3_2();
  v33 = v27[1];
  *v27 = a8;
  v27[1] = a9;

  OUTLINED_FUNCTION_3_2();
  v34 = v28[1];
  *v28 = a10;
  v28[1] = a11;

  OUTLINED_FUNCTION_3_2();
  v35 = v29[1];
  *v29 = a12;
  v29[1] = a13;

  OUTLINED_FUNCTION_3_2();
  v36 = v30[1];
  *v30 = a14;
  v30[1] = a15;

  OUTLINED_FUNCTION_3_2();
  v37 = v31[1];
  *v31 = a16;
  v31[1] = a17;

  OUTLINED_FUNCTION_3_2();
  v21[v47] = v51;
  OUTLINED_FUNCTION_3_2();
  *v48 = a19;
  v48[8] = a20 & 1;
  OUTLINED_FUNCTION_3_2();
  v38 = *&v21[v50];
  *&v21[v50] = a21;

  v53.receiver = v21;
  v53.super_class = ObjectType;
  return objc_msgSendSuper2(&v53, sel_init);
}

id sub_2542F2ACC(void *a1)
{
  swift_getObjectType();
  v1[OBJC_IVAR___HPSBetaEnrollmentStateUpdatedRequest_availability] = 2;
  OUTLINED_FUNCTION_9_0(OBJC_IVAR___HPSBetaEnrollmentStateUpdatedRequest_groupID);
  OUTLINED_FUNCTION_9_0(OBJC_IVAR___HPSBetaEnrollmentStateUpdatedRequest_groupName);
  OUTLINED_FUNCTION_9_0(OBJC_IVAR___HPSBetaEnrollmentStateUpdatedRequest_model);
  OUTLINED_FUNCTION_9_0(OBJC_IVAR___HPSBetaEnrollmentStateUpdatedRequest_name);
  OUTLINED_FUNCTION_9_0(OBJC_IVAR___HPSBetaEnrollmentStateUpdatedRequest_pairID);
  OUTLINED_FUNCTION_9_0(OBJC_IVAR___HPSBetaEnrollmentStateUpdatedRequest_pairName);
  OUTLINED_FUNCTION_9_0(OBJC_IVAR___HPSBetaEnrollmentStateUpdatedRequest_roomID);
  OUTLINED_FUNCTION_9_0(OBJC_IVAR___HPSBetaEnrollmentStateUpdatedRequest_roomName);
  v1[OBJC_IVAR___HPSBetaEnrollmentStateUpdatedRequest_state] = 5;
  v3 = &v1[OBJC_IVAR___HPSBetaEnrollmentStateUpdatedRequest_enrolledProgramID];
  *v3 = 0;
  v3[8] = 1;
  *&v1[OBJC_IVAR___HPSBetaEnrollmentStateUpdatedRequest_availablePrograms] = 0;
  v20.receiver = v1;
  v20.super_class = v4;
  v5 = objc_msgSendSuper2(&v20, sel_init);
  sub_25430DA38();
  if (v6 >> 60 == 15)
  {

    return 0;
  }

  v7 = sub_25430DA38();
  if (v8 >> 60 == 15)
  {

    v9 = OUTLINED_FUNCTION_7_2();
    sub_2542E5880(v9, v10);
    return 0;
  }

  v11 = v7;
  v12 = v8;
  v13 = [objc_allocWithZone(type metadata accessor for DeviceModelCoder()) init];
  v14 = OUTLINED_FUNCTION_7_2();
  sub_2542E06EC(v14, v15, v5);

  v16 = [objc_allocWithZone(type metadata accessor for BetaEnrollment.ModelCoder()) init];
  sub_254311378(v11, v12, v5);

  sub_2542E5880(v11, v12);
  v18 = OUTLINED_FUNCTION_7_2();
  sub_2542E5880(v18, v19);
  return v5;
}

Swift::Void __swiftcall BetaEnrollment.StateUpdatedRequest.encode(with:)(NSCoder with)
{
  v2 = v1;
  v4 = [objc_allocWithZone(type metadata accessor for DeviceModelCoder()) init];
  v5 = sub_2542E0AD4(v1);
  v7 = v6;

  v8 = sub_2543A1EC8();
  v9 = sub_2543A2858();
  [(objc_class *)with.super.isa encodeObject:v8 forKey:v9];

  sub_2542D7D40(v5, v7);
  v15 = [objc_allocWithZone(type metadata accessor for BetaEnrollment.ModelCoder()) init];
  v10 = sub_254311660(v2);
  v12 = v11;

  v13 = sub_2543A1EC8();
  v14 = sub_2543A2858();
  [(objc_class *)with.super.isa encodeObject:v13 forKey:v14];

  sub_2542D7D40(v10, v12);
}

BOOL BetaEnrollment.StateUpdatedRequest.isEqual(_:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  sub_2542E576C(a1, v7);
  if (!v8)
  {
    sub_2542E1050(v7);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if (v6 == v1)
  {

    return 1;
  }

  if (!sub_254311C3C(v6, ObjectType, ObjectType, &off_286646448, &off_286646448))
  {

    return 0;
  }

  v4 = sub_254312538(v6);

  return v4;
}

id BetaEnrollment.StateUpdatedRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BetaEnrollment.StateUpdatedRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t BetaEnrollment.StateChangeResponse.state.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR___HPSBetaEnrollmentStateChangeResponse_state;
  result = OUTLINED_FUNCTION_97();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t BetaEnrollment.StateChangeResponse.state.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR___HPSBetaEnrollmentStateChangeResponse_state;
  result = OUTLINED_FUNCTION_2_5();
  *(v1 + v3) = v2;
  return result;
}

uint64_t BetaEnrollment.StateChangeResponse.success.getter()
{
  v1 = OBJC_IVAR___HPSBetaEnrollmentStateChangeResponse_success;
  OUTLINED_FUNCTION_97();
  return *(v0 + v1);
}

uint64_t BetaEnrollment.StateChangeResponse.success.setter(char a1)
{
  v3 = OBJC_IVAR___HPSBetaEnrollmentStateChangeResponse_success;
  result = OUTLINED_FUNCTION_2_5();
  *(v1 + v3) = a1;
  return result;
}

void *BetaEnrollment.StateChangeResponse.error.getter()
{
  v1 = OBJC_IVAR___HPSBetaEnrollmentStateChangeResponse_error;
  OUTLINED_FUNCTION_97();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void BetaEnrollment.StateChangeResponse.error.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___HPSBetaEnrollmentStateChangeResponse_error;
  OUTLINED_FUNCTION_2_5();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t BetaEnrollment.StateChangeResponse.enrollProgramID.getter()
{
  v1 = (v0 + OBJC_IVAR___HPSBetaEnrollmentStateChangeResponse_enrollProgramID);
  OUTLINED_FUNCTION_97();
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t BetaEnrollment.StateChangeResponse.enrollProgramID.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR___HPSBetaEnrollmentStateChangeResponse_enrollProgramID;
  result = OUTLINED_FUNCTION_3_2();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

id BetaEnrollment.StateChangeResponse.__allocating_init(successfulState:enrollProgramID:)(char *a1)
{
  v4 = *a1;
  v2 = objc_allocWithZone(v1);
  return BetaEnrollment.StateChangeResponse.init(state:success:error:enrollProgramID:)();
}

id BetaEnrollment.StateChangeResponse.init(state:success:error:enrollProgramID:)()
{
  OUTLINED_FUNCTION_3_4();
  ObjectType = swift_getObjectType();
  v7 = *v5;
  v8 = OBJC_IVAR___HPSBetaEnrollmentStateChangeResponse_error;
  *&v1[OBJC_IVAR___HPSBetaEnrollmentStateChangeResponse_error] = 0;
  v9 = &v1[OBJC_IVAR___HPSBetaEnrollmentStateChangeResponse_enrollProgramID];
  *v9 = 0;
  v9[8] = 1;
  v1[OBJC_IVAR___HPSBetaEnrollmentStateChangeResponse_state] = v7;
  v1[OBJC_IVAR___HPSBetaEnrollmentStateChangeResponse_success] = v4;
  OUTLINED_FUNCTION_3_2();
  *&v1[v8] = v3;
  OUTLINED_FUNCTION_3_2();
  *v9 = v2;
  v9[8] = v0 & 1;
  v11.receiver = v1;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_init);
}

id sub_2542F37F4(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR___HPSBetaEnrollmentStateChangeResponse_error;
  *&v1[OBJC_IVAR___HPSBetaEnrollmentStateChangeResponse_error] = 0;
  v5 = &v1[OBJC_IVAR___HPSBetaEnrollmentStateChangeResponse_enrollProgramID];
  *v5 = 0;
  v5[8] = 1;
  v6 = sub_2543A2858();
  v7 = [a1 decodeIntegerForKey_];

  if (v7 >= 5)
  {

    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v8 = sub_2543A2858();
    v9 = [a1 decodeBoolForKey_];

    v10 = sub_2543A2858();
    v11 = [a1 decodeObjectForKey_];

    if (v11)
    {
      sub_2543A3158();
      swift_unknownObjectRelease();
    }

    else
    {
      v23 = 0u;
      v24 = 0u;
    }

    v25[0] = v23;
    v25[1] = v24;
    if (*(&v24 + 1))
    {
      sub_2542F464C();
      if (swift_dynamicCast())
      {
        v13 = v21;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      sub_2542E1050(v25);
      v13 = 0;
    }

    v1[OBJC_IVAR___HPSBetaEnrollmentStateChangeResponse_state] = v7;
    v1[OBJC_IVAR___HPSBetaEnrollmentStateChangeResponse_success] = v9;
    OUTLINED_FUNCTION_3_2();
    v14 = *&v1[v4];
    *&v1[v4] = v13;
    v15 = v13;

    v16 = OUTLINED_FUNCTION_6_4();
    v17 = [a1 containsValueForKey_];

    if (v17)
    {
      v18 = OUTLINED_FUNCTION_6_4();
      v19 = [a1 decodeIntegerForKey_];

      OUTLINED_FUNCTION_3_2();
      *v5 = v19;
      v5[8] = 0;
    }

    v22.receiver = v1;
    v22.super_class = ObjectType;
    v12 = objc_msgSendSuper2(&v22, sel_init);
  }

  return v12;
}