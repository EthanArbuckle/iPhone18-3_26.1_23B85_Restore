uint64_t dispatch thunk of BatchConfigProvider.getBatchConfig(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_2485A6980;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_2485A6980()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2485A6A84(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2485A6AA4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_2485A6AE4(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x24C1D2DB0](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_2485A6B38(uint64_t a1, uint64_t a2)
{
  v3 = sub_2485C8E80();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

uint64_t sub_2485A6BA4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2485A6B90();
  *a1 = result;
  return result;
}

void sub_2485A6BE0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

void *sub_2485A6C2C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2485A6C48()
{
  v2 = *v0;
  sub_2485A6D50(&qword_27EE9C168);
  sub_2485A6D50(&unk_27EE9C170);
  return sub_2485C8FC0();
}

uint64_t sub_2485A6D50(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for BPSDemand(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t BatchConfig.byteCountLimit.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t BatchConfig.eventCountLimit.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

void __swiftcall BatchConfig.init(byteCountLimit:eventCountLimit:)(DataCollector::BatchConfig *__return_ptr retstr, Swift::Int_optional byteCountLimit, Swift::Int_optional eventCountLimit)
{
  retstr->byteCountLimit.value = byteCountLimit.value;
  retstr->byteCountLimit.is_nil = byteCountLimit.is_nil;
  *(&retstr->eventCountLimit.value + 7) = eventCountLimit.value;
  BYTE6(retstr[1].byteCountLimit.value) = eventCountLimit.is_nil;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_2485A6E64(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2485A6E84(uint64_t result, int a2, int a3)
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

DataCollector::Bookmark __swiftcall Bookmark.init(_:index:)(Swift::Double _, Swift::UInt index)
{
  if (_ < 0.0)
  {
    _ = 0.0;
  }

  *v2 = _;
  *(v2 + 8) = index;
  result.timestamp = _;
  result.index = index;
  return result;
}

BOOL static Bookmark.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    return *(a1 + 8) < *(a2 + 8);
  }

  else
  {
    return *a1 < *a2;
  }
}

uint64_t sub_2485A6F94(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070;
  if (v4 || (sub_2485C9040() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7865646E69 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_2485C9040();

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

uint64_t sub_2485A70A0(char a1)
{
  sub_2485C90D0();
  MEMORY[0x24C1D3020](a1 & 1);
  return sub_2485C9110();
}

uint64_t sub_2485A70F4(char a1)
{
  if (a1)
  {
    return 0x7865646E69;
  }

  else
  {
    return 0x6D617473656D6974;
  }
}

uint64_t sub_2485A7148()
{
  v1 = *v0;
  sub_2485C90D0();
  MEMORY[0x24C1D3020](v1);
  return sub_2485C9110();
}

uint64_t sub_2485A7194@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2485A6F94(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2485A71DC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2485A7060();
  *a1 = result;
  return result;
}

uint64_t sub_2485A7204(uint64_t a1)
{
  v2 = sub_2485A7474();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2485A7240(uint64_t a1)
{
  v2 = sub_2485A7474();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Bookmark.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9C2A0, "<)");
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v16[-v10];
  v12 = *v1;
  v13 = v1[1];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2485A7474();
  sub_2485C9130();
  v16[15] = 0;
  sub_2485C9000();
  if (!v2)
  {
    v16[14] = 1;
    sub_2485C9010();
  }

  return (*(v7 + 8))(v11, v4);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_2485A7474()
{
  result = qword_27EE9C2A8;
  if (!qword_27EE9C2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE9C2A8);
  }

  return result;
}

uint64_t Bookmark.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x24C1D3040](*&v1);
  return MEMORY[0x24C1D3020](v2);
}

uint64_t Bookmark.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_2485C90D0();
  v3 = 0.0;
  if (v1 != 0.0)
  {
    v3 = v1;
  }

  MEMORY[0x24C1D3040](*&v3);
  MEMORY[0x24C1D3020](v2);
  return sub_2485C9110();
}

uint64_t Bookmark.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9C2B0, &qword_2485C9D58);
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v12 = &v18[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2485A7474();
  sub_2485C9120();
  if (!v2)
  {
    v18[15] = 0;
    sub_2485C8FE0();
    v15 = v14;
    v18[14] = 1;
    v16 = sub_2485C8FF0();
    (*(v8 + 8))(v12, v5);
    *a2 = v15;
    a2[1] = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2485A7730()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_2485C90D0();
  v3 = 0.0;
  if (v1 != 0.0)
  {
    v3 = v1;
  }

  MEMORY[0x24C1D3040](*&v3);
  MEMORY[0x24C1D3020](v2);
  return sub_2485C9110();
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_2485A77E8()
{
  result = qword_27EE9C2B8;
  if (!qword_27EE9C2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE9C2B8);
  }

  return result;
}

BOOL sub_2485A7868(unint64_t a1, unint64_t a2, double a3, double a4)
{
  if (a3 == a4)
  {
    return a1 >= a2;
  }

  else
  {
    return a3 >= a4;
  }
}

BOOL sub_2485A7894(unint64_t a1, unint64_t a2, double a3, double a4)
{
  if (a4 == a3)
  {
    return a2 < a1;
  }

  else
  {
    return a4 < a3;
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for Bookmark(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Bookmark(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for Bookmark.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for Bookmark.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2485A7AA4);
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

unint64_t sub_2485A7AF4()
{
  result = qword_27EE9C2C0;
  if (!qword_27EE9C2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE9C2C0);
  }

  return result;
}

unint64_t sub_2485A7B4C()
{
  result = qword_27EE9C2C8;
  if (!qword_27EE9C2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE9C2C8);
  }

  return result;
}

unint64_t sub_2485A7BA4()
{
  result = qword_27EE9C2D0;
  if (!qword_27EE9C2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE9C2D0);
  }

  return result;
}

uint64_t sub_2485A7C10(uint64_t *a1)
{
  v3 = type metadata accessor for DataPlatformBatch();
  v4 = (v1 + v3[6]);
  if (v4[1])
  {
LABEL_10:
    v16 = (v1 + v3[7]);
    if (v16[1])
    {
      return 0;
    }

    v17 = *v16;
    v18 = v1 + v3[9];
    v19 = *(sub_2485C8BF0() + 16);

    if (v17 > v19)
    {
      return 0;
    }

    v15 = 0;
  }

  else
  {
    v5 = *v4;
    v6 = *(v1 + v3[10]);
    v7 = *a1;
    v8 = a1[1];
    v9 = 0;
    switch(v8 >> 62)
    {
      case 1uLL:
        LODWORD(v9) = HIDWORD(v7) - v7;
        if (__OFSUB__(HIDWORD(v7), v7))
        {
          goto LABEL_16;
        }

        v9 = v9;
LABEL_7:
        v13 = __OFADD__(v6, v9);
        v14 = v6 + v9;
        if (v13)
        {
          __break(1u);
LABEL_16:
          __break(1u);
LABEL_17:
          __break(1u);
          JUMPOUT(0x2485A7D28);
        }

        if (v5 >= v14)
        {
          goto LABEL_10;
        }

        v15 = 1;
        break;
      case 2uLL:
        v12 = v7 + 16;
        v11 = *(v7 + 16);
        v10 = *(v12 + 8);
        v13 = __OFSUB__(v10, v11);
        v9 = v10 - v11;
        if (!v13)
        {
          goto LABEL_7;
        }

        goto LABEL_17;
      case 3uLL:
        goto LABEL_7;
      default:
        v9 = BYTE6(v8);
        goto LABEL_7;
    }
  }

  sub_2485A81E4();
  result = swift_allocError();
  *v21 = v15;
  return result;
}

uint64_t sub_2485A7D38(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = (*(a3 + 16))(a2, a3);
  if ((v8 & 1) == 0)
  {
    v9 = v7;
    v10 = (*(*(a3 + 8) + 16))(a2);
    v11 = 0;
    switch(v6 >> 62)
    {
      case 1uLL:
        LODWORD(v11) = HIDWORD(v5) - v5;
        if (__OFSUB__(HIDWORD(v5), v5))
        {
          goto LABEL_18;
        }

        v11 = v11;
LABEL_7:
        v14 = __OFADD__(v10, v11);
        v15 = v10 + v11;
        if (v14)
        {
          __break(1u);
          goto LABEL_17;
        }

        if (v9 < v15)
        {
          v16 = 1;
LABEL_14:
          sub_2485A81E4();
          result = swift_allocError();
          *v22 = v16;
          return result;
        }

        break;
      case 2uLL:
        v13 = *(v5 + 16);
        v12 = *(v5 + 24);
        v14 = __OFSUB__(v12, v13);
        v11 = v12 - v13;
        if (!v14)
        {
          goto LABEL_7;
        }

        goto LABEL_19;
      case 3uLL:
        goto LABEL_7;
      default:
        v11 = BYTE6(v6);
        goto LABEL_7;
    }
  }

  v17 = (*(a3 + 24))(a2, a3);
  if (v18)
  {
    return 0;
  }

  v19 = v17;
  v20 = (*(*(a3 + 8) + 24))(a2);
  if (__OFADD__(v20, 1))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    JUMPOUT(0x2485A7EA4);
  }

  if (v19 < v20 + 1)
  {
    v16 = 0;
    goto LABEL_14;
  }

  return 0;
}

BOOL sub_2485A7EB4(uint64_t *a1)
{
  v1 = sub_2485A7C10(a1);
  v2 = v1;
  if (v1)
  {
  }

  return v2 == 0;
}

BOOL BoundedBatch.canAddEvent(_:)(__int128 *a1)
{
  OUTLINED_FUNCTION_0_0(a1);
  v4 = sub_2485A7D38(v1, v2, v3);
  v5 = v4;
  if (v4)
  {
  }

  return v5 == 0;
}

uint64_t BoundedBatch.validateCanAddEvent(_:)(__int128 *a1)
{
  OUTLINED_FUNCTION_0_0(a1);
  result = sub_2485A7D38(v1, v2, v3);
  if (result)
  {
    return swift_willThrow();
  }

  return result;
}

uint64_t BoundedBatchError.hashValue.getter()
{
  v1 = *v0;
  sub_2485C90D0();
  MEMORY[0x24C1D3020](v1);
  return sub_2485C9110();
}

unint64_t sub_2485A8024()
{
  result = qword_27EE9C2D8;
  if (!qword_27EE9C2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE9C2D8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BoundedBatchError(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2485A81ACLL);
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

unint64_t sub_2485A81E4()
{
  result = qword_27EE9C2E0;
  if (!qword_27EE9C2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE9C2E0);
  }

  return result;
}

BOOL sub_2485A8238(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3[0] = *a1;
  v3[1] = v1;
  v4 = *(a1 + 32);
  return sub_2485A7EB4(v3);
}

__n128 OUTLINED_FUNCTION_0_0(__int128 *a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  return *(a1 + 24);
}

void sub_2485A8290()
{
  v0._countAndFlagsBits = 0x656C676165;
  v0._object = 0xE500000000000000;
  DataPlatformAccount.init(stringLiteral:)(&stru_27EE9C2E8, v0);
}

void __swiftcall DataPlatformAccount.init(stringLiteral:)(DataCollector::DataPlatformAccount *__return_ptr retstr, Swift::String stringLiteral)
{
  object = stringLiteral._object;
  countAndFlagsBits = stringLiteral._countAndFlagsBits;
  if (qword_27EE9C070 != -1)
  {
    OUTLINED_FUNCTION_1();
  }

  v5 = byte_27EE9E438;
  OUTLINED_FUNCTION_3();
  v6 = sub_2485C8DD0();
  v7 = 0xE000000000000000;
  if (v6)
  {
    v8 = object;
  }

  else
  {
    v8 = 0;
  }

  if (v6)
  {
    v9 = countAndFlagsBits;
  }

  else
  {
    v9 = 0;
  }

  if (v6)
  {
    v10 = 0;
  }

  else
  {
    v10 = countAndFlagsBits;
  }

  if ((v6 & 1) == 0)
  {
    v7 = object;
  }

  retstr->urlString.value._countAndFlagsBits = v9;
  retstr->urlString.value._object = v8;
  if (v5)
  {
    v11 = DataCollector_DataPlatformVariant_carry;
  }

  else
  {
    v11 = DataCollector_DataPlatformVariant_production;
  }

  retstr->name._countAndFlagsBits = v10;
  retstr->name._object = v7;
  retstr->variant = v11;
}

uint64_t static DataPlatformAccount.eagle.getter()
{
  if (qword_27EE9C040 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_1(&stru_27EE9C2E8);
}

void sub_2485A83B4()
{
  v0._countAndFlagsBits = 7108463;
  v0._object = 0xE300000000000000;
  DataPlatformAccount.init(stringLiteral:)(&stru_27EE9C310, v0);
}

uint64_t static DataPlatformAccount.owl.getter()
{
  if (qword_27EE9C048 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_1(&stru_27EE9C310);
}

void sub_2485A843C()
{
  v0._countAndFlagsBits = 1802985832;
  v0._object = 0xE400000000000000;
  DataPlatformAccount.init(stringLiteral:)(&stru_27EE9C338, v0);
}

uint64_t static DataPlatformAccount.hawk.getter()
{
  if (qword_27EE9C050 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_1(&stru_27EE9C338);
}

void sub_2485A84C4()
{
  v0._countAndFlagsBits = 0x726F646E6F63;
  v0._object = 0xE600000000000000;
  DataPlatformAccount.init(stringLiteral:)(&stru_27EE9C360, v0);
}

uint64_t static DataPlatformAccount.condor.getter()
{
  if (qword_27EE9C058 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_1(&stru_27EE9C360);
}

void sub_2485A8550()
{
  v0._object = 0x80000002485CBD00;
  v0._countAndFlagsBits = 0xD000000000000021;
  DataPlatformAccount.init(stringLiteral:)(&stru_27EE9C388, v0);
}

uint64_t static DataPlatformAccount.staging.getter()
{
  if (qword_27EE9C060 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_1(&stru_27EE9C388);
}

uint64_t static DataPlatformVariant.default.getter@<X0>(char *a1@<X8>)
{
  if (qword_27EE9C070 != -1)
  {
    result = OUTLINED_FUNCTION_1();
  }

  if (byte_27EE9E438)
  {
    v2 = 1;
  }

  else
  {
    v2 = 3;
  }

  *a1 = v2;
  return result;
}

void __swiftcall DataPlatformAccount.init(_:development:)(DataCollector::DataPlatformAccount *__return_ptr retstr, Swift::String _, Swift::Bool development)
{
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  if (development)
  {
    v6 = DataCollector_DataPlatformVariant_development;
  }

  else
  {
    if (qword_27EE9C070 != -1)
    {
      OUTLINED_FUNCTION_1();
    }

    if (byte_27EE9E438)
    {
      v6 = DataCollector_DataPlatformVariant_carry;
    }

    else
    {
      v6 = DataCollector_DataPlatformVariant_production;
    }
  }

  OUTLINED_FUNCTION_3();
  v7 = sub_2485C8DD0();
  v8 = 0xE000000000000000;
  if (v7)
  {
    v9 = object;
  }

  else
  {
    v9 = 0;
  }

  if (v7)
  {
    v10 = countAndFlagsBits;
  }

  else
  {
    v10 = 0;
  }

  if (v7)
  {
    v11 = 0;
  }

  else
  {
    v11 = countAndFlagsBits;
  }

  retstr->urlString.value._countAndFlagsBits = v10;
  retstr->urlString.value._object = v9;
  if ((v7 & 1) == 0)
  {
    v8 = object;
  }

  retstr->name._countAndFlagsBits = v11;
  retstr->name._object = v8;
  retstr->variant = v6;
}

uint64_t DataPlatformAccount.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9C3B0, &qword_2485CA0A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v18 - v5;
  if (v1[1])
  {
    v7 = *v1;

    return sub_2485C8970();
  }

  else
  {
    v10 = v1[2];
    v9 = v1[3];
    v11 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v11 = v10 & 0xFFFFFFFFFFFFLL;
    }

    if (v11)
    {
      switch(*(v1 + 32))
      {
        case 1:
          OUTLINED_FUNCTION_4();
          sub_2485C8F50();

          OUTLINED_FUNCTION_2();
          v17 = 0xEE002D7972726163;
          goto LABEL_16;
        case 2:
          OUTLINED_FUNCTION_4();
          sub_2485C8F50();

          OUTLINED_FUNCTION_2();
          v17 = 0xED00002D64656573;
          goto LABEL_16;
        case 3:
          OUTLINED_FUNCTION_4();
          sub_2485C8F50();

          OUTLINED_FUNCTION_2();
          v17 = 0xE800000000000000;
LABEL_16:
          v18 = v16;
          v19 = v17;
          MEMORY[0x24C1D2CF0](v10, v9);
          v14 = 0x80000002485CBCC0;
          v13 = 0xD000000000000010;
          break;
        default:
          OUTLINED_FUNCTION_4();
          sub_2485C8F50();

          OUTLINED_FUNCTION_2();
          v18 = v12;
          v19 = 0xEC0000002D766564;
          MEMORY[0x24C1D2CF0](v10, v9);
          v13 = 0xD00000000000001CLL;
          v14 = 0x80000002485CBCE0;
          break;
      }

      MEMORY[0x24C1D2CF0](v13, v14);
      sub_2485C8970();

      return sub_2485A8C98(v6, a1);
    }

    else
    {
      v15 = sub_2485C8980();

      return __swift_storeEnumTagSinglePayload(a1, 1, 1, v15);
    }
  }
}

BOOL static DataPlatformAccount.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  if (v3)
  {
    if (!v7)
    {
      return 0;
    }

    v11 = *a1 == *a2 && v3 == v7;
    if (!v11 && (sub_2485C9040() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v12 = v4 == v8 && v5 == v9;
  if (v12 || (sub_2485C9040() & 1) != 0)
  {
    return v6 == v10;
  }

  return 0;
}

uint64_t DataPlatformAccount.hash(into:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = *(v0 + 32);
  if (v0[1])
  {
    v4 = *v0;
    sub_2485C90F0();
    sub_2485C8DA0();
  }

  else
  {
    sub_2485C90F0();
  }

  sub_2485C8DA0();
  return MEMORY[0x24C1D3020](v3);
}

uint64_t DataPlatformAccount.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  sub_2485C90D0();
  sub_2485C90F0();
  if (v2)
  {
    sub_2485C8DA0();
  }

  sub_2485C8DA0();
  MEMORY[0x24C1D3020](v5);
  return sub_2485C9110();
}

uint64_t sub_2485A8B9C()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = *(v0 + 32);
  sub_2485C90D0();
  DataPlatformAccount.hash(into:)();
  return sub_2485C9110();
}

uint64_t DataPlatformVariant.hashValue.getter()
{
  v1 = *v0;
  sub_2485C90D0();
  MEMORY[0x24C1D3020](v1);
  return sub_2485C9110();
}

uint64_t sub_2485A8C98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9C3B0, &qword_2485CA0A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2485A8D34()
{
  result = qword_27EE9C3B8;
  if (!qword_27EE9C3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE9C3B8);
  }

  return result;
}

unint64_t sub_2485A8D8C()
{
  result = qword_27EE9C3C0;
  if (!qword_27EE9C3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE9C3C0);
  }

  return result;
}

unint64_t sub_2485A8DF0()
{
  result = qword_27EE9C3C8;
  if (!qword_27EE9C3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE9C3C8);
  }

  return result;
}

unint64_t sub_2485A8E60()
{
  result = qword_27EE9C3D0;
  if (!qword_27EE9C3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE9C3D0);
  }

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

uint64_t sub_2485A8ED4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2485A8F10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_2485A8F5C(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2485A8FA4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_2485A8FE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DataPlatformVariant(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for DataPlatformVariant(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2485A9188);
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

uint64_t OUTLINED_FUNCTION_0_1@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  *v1 = *a1;
  *(v1 + 8) = *(a1 + 8);
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
}

uint64_t OUTLINED_FUNCTION_1()
{

  return swift_once();
}

uint64_t Event.byteCount.getter()
{
  v1 = *v0;
  v2 = v0[1];
  result = 0;
  switch(v2 >> 62)
  {
    case 1uLL:
      v4 = __OFSUB__(HIDWORD(v1), v1);
      v5 = HIDWORD(v1) - v1;
      if (v4)
      {
        __break(1u);
LABEL_8:
        __break(1u);
        JUMPOUT(0x2485A92C0);
      }

      return v5;
    case 2uLL:
      v8 = v1 + 16;
      v6 = *(v1 + 16);
      v7 = *(v8 + 8);
      result = v7 - v6;
      if (!__OFSUB__(v7, v6))
      {
        return result;
      }

      goto LABEL_8;
    case 3uLL:
      return result;
    default:
      return BYTE6(v2);
  }
}

uint64_t Event.payload.getter()
{
  v1 = *v0;
  sub_2485A9304(*v0, *(v0 + 8));
  return v1;
}

uint64_t sub_2485A9304(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t Event.schema.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t Event.init(payload:timestamp:schema:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a6;
  *(a5 + 24) = a3;
  *(a5 + 32) = a4;
  return result;
}

uint64_t static Event.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a2 + 16);
  v7 = *(a2 + 24);
  v6 = *(a2 + 32);
  v8 = MEMORY[0x24C1D28E0](*a1, *(a1 + 8), *a2, *(a2 + 8));
  result = 0;
  if ((v8 & 1) != 0 && v2 == v5)
  {
    if (v3)
    {
      if (v6)
      {
        v10 = v4 == v7 && v3 == v6;
        if (v10 || (sub_2485C9040() & 1) != 0)
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

  return result;
}

uint64_t Event.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = v0[2];
  v4 = *(v0 + 3);
  v5 = *(v0 + 4);
  sub_2485C89C0();
  v6 = 0.0;
  if (v3 != 0.0)
  {
    v6 = v3;
  }

  MEMORY[0x24C1D3040](*&v6);
  if (!v5)
  {
    return sub_2485C90F0();
  }

  sub_2485C90F0();

  return sub_2485C8DA0();
}

uint64_t Event.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = v0[2];
  v4 = *(v0 + 3);
  v5 = *(v0 + 4);
  sub_2485C90D0();
  sub_2485C89C0();
  v6 = 0.0;
  if (v3 != 0.0)
  {
    v6 = v3;
  }

  MEMORY[0x24C1D3040](*&v6);
  sub_2485C90F0();
  if (v5)
  {
    sub_2485C8DA0();
  }

  return sub_2485C9110();
}

uint64_t sub_2485A95A4()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 24);
  sub_2485C90D0();
  Event.hash(into:)();
  return sub_2485C9110();
}

unint64_t sub_2485A9600()
{
  result = qword_27EE9C3D8;
  if (!qword_27EE9C3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE9C3D8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
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

uint64_t sub_2485A9688(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 40))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 32);
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

uint64_t sub_2485A96DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ProcessingTelemetry(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for ProcessingTelemetry(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x2485A9864);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t Sender.bundleID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t static Sender.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_2485C9040();
  }
}

uint64_t Sender.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_2485C8DA0();
}

uint64_t Sender.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_2485C90D0();
  sub_2485C8DA0();
  return sub_2485C9110();
}

uint64_t sub_2485A9960()
{
  v1 = *v0;
  v2 = v0[1];
  sub_2485C90D0();
  sub_2485C8DA0();
  return sub_2485C9110();
}

unint64_t sub_2485A99AC()
{
  result = qword_27EE9C3E0;
  if (!qword_27EE9C3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE9C3E0);
  }

  return result;
}

unint64_t sub_2485A9A04()
{
  result = qword_27EE9C3E8;
  if (!qword_27EE9C3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE9C3E8);
  }

  return result;
}

unint64_t sub_2485A9A6C()
{
  result = qword_27EE9C3F0;
  if (!qword_27EE9C3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE9C3F0);
  }

  return result;
}

void *sub_2485A9AC0@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t sub_2485A9ACC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2485A9B0C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

DataCollector::UploaderConfig __swiftcall UploaderConfig.init(requiresDiagnosticsAndUsage:uploadRetryCount:eventLookBackLimitInDays:)(Swift::Bool requiresDiagnosticsAndUsage, Swift::Int uploadRetryCount, Swift::UInt eventLookBackLimitInDays)
{
  *v3 = requiresDiagnosticsAndUsage;
  *(v3 + 8) = uploadRetryCount;
  *(v3 + 16) = eventLookBackLimitInDays;
  result.eventLookBackLimitInDays = eventLookBackLimitInDays;
  result.uploadRetryCount = uploadRetryCount;
  result.requiresDiagnosticsAndUsage = requiresDiagnosticsAndUsage;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for UploaderConfig(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[24])
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

uint64_t storeEnumTagSinglePayload for UploaderConfig(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

BOOL static UploaderError.== infix(_:_:)(void *a1, unint64_t *a2)
{
  v2 = *a2;
  switch(*a1)
  {
    case 0:
      return !v2;
    case 1:
    case 5:
      return 0;
    case 2:
      return v2 == 2;
    case 3:
      return v2 == 3;
    case 4:
      return v2 == 4;
    default:
      return v2 >= 6;
  }
}

uint64_t getEnumTagSinglePayload for UploaderError(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF9 && *(a1 + 8))
  {
    return (*a1 + 2147483642);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 5;
  if (v4 >= 7)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for UploaderError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFA)
  {
    *result = 0;
    *result = a2 - 2147483642;
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 5;
    }
  }

  return result;
}

uint64_t sub_2485A9E2C(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_2485A9E44(void *result, int a2)
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

uint64_t BiomeEventStream.__allocating_init(stream:useCase:schema:)()
{
  OUTLINED_FUNCTION_0_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9C400, &qword_2485CA6E0);
  OUTLINED_FUNCTION_2_0();
  return BiomeEventStream.__allocating_init(_:useCase:schema:)();
}

uint64_t BiomeEventStream.__allocating_init(_:useCase:schema:)()
{
  OUTLINED_FUNCTION_0_2();
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_2_0();
  BiomeEventStream.init(_:useCase:schema:)();
  return v0;
}

uint64_t BiomeEventStream.init(_:useCase:schema:)()
{
  OUTLINED_FUNCTION_0_2();
  *(v1 + 88) = 0;
  *(v1 + 96) = 0;
  sub_2485A9F84(v5, v1 + 16);
  *(v1 + 56) = v4;
  *(v1 + 64) = v3;
  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  return v1;
}

uint64_t sub_2485A9F84(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

Swift::Void __swiftcall BiomeEventStream.advance(to:)(Swift::Double to)
{
  v2 = v1;
  v4 = v1[5];
  v5 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v4);
  v6 = (*(v5 + 8))(*(v2 + 56), *(v2 + 64), v4, v5, to);
  os_unfair_lock_lock((v2 + 88));
  sub_2485AA04C((v2 + 96), v6, v2);
  os_unfair_lock_unlock((v2 + 88));

  swift_unknownObjectRelease();
}

id sub_2485AA04C(id *a1, void *a2, uint64_t a3)
{
  swift_unknownObjectRetain();

  result = sub_2485B31D4(a2, 0, sub_2485AA854, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2485AA0C4(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[5];
  v6 = a2[6];
  __swift_project_boxed_opaque_existential_1(a2 + 2, v5);
  return (*(v6 + 16))(a1, *(v4 + 80), a2[9], a2[10], *(v4 + 80), v5, v6);
}

uint64_t BiomeEventStream.next()(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x2822009F8](sub_2485AA178, 0, 0);
}

uint64_t sub_2485AA178()
{
  v1 = v0[8];
  os_unfair_lock_lock((v1 + 88));
  v2 = *(v1 + 96);
  v0[9] = v2;
  v3 = v2;
  os_unfair_lock_unlock((v1 + 88));
  if (v2)
  {
    v4 = swift_task_alloc();
    v0[10] = v4;
    *v4 = v0;
    v4[1] = sub_2485AA28C;

    return sub_2485B3274((v0 + 2), v3);
  }

  else
  {
    v6 = v0[7];
    *v6 = 0u;
    v6[1] = 0u;
    *(v0[7] + 32) = 1;
    OUTLINED_FUNCTION_3_0();

    return v7();
  }
}

uint64_t sub_2485AA28C()
{
  OUTLINED_FUNCTION_1_0();
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_2485AA428;
  }

  else
  {
    v3 = sub_2485AA39C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2485AA39C()
{
  OUTLINED_FUNCTION_1_0();

  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  if (v1 == 1)
  {
    *v2 = 0u;
    v2[1] = 0u;
  }

  else
  {
    v3 = *(v0 + 32);
    *v2 = *(v0 + 16);
    v2[1] = v3;
  }

  *(*(v0 + 56) + 32) = v1;
  OUTLINED_FUNCTION_3_0();

  return v4();
}

uint64_t sub_2485AA428()
{
  OUTLINED_FUNCTION_1_0();

  OUTLINED_FUNCTION_3_0();
  v2 = *(v0 + 88);

  return v1();
}

Swift::Void __swiftcall BiomeEventStream.close()()
{
  os_unfair_lock_lock((v0 + 88));
  if (*(v0 + 96))
  {
    sub_2485B3864();
    v1 = *(v0 + 96);
  }

  else
  {
    v1 = 0;
  }

  *(v0 + 96) = 0;

  os_unfair_lock_unlock((v0 + 88));
}

uint64_t *BiomeEventStream.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[8];

  v2 = v0[10];

  sub_2485AA71C((v0 + 12));
  return v0;
}

uint64_t BiomeEventStream.__deallocating_deinit()
{
  BiomeEventStream.deinit();

  return MEMORY[0x2821FE8D8](v0, 104, 7);
}

uint64_t sub_2485AA570(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2485AA60C;

  return BiomeEventStream.next()(a1);
}

uint64_t sub_2485AA60C()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *(*v0 + 16);
  v4 = *v0;

  OUTLINED_FUNCTION_3_0();

  return v2();
}

uint64_t sub_2485AA71C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EE9C408, &qword_2485CA6F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2485AA824()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE9C4F0, &unk_2485CA7A0);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t OUTLINED_FUNCTION_3_0()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t BMStreamBase.transform<A>(storeEvent:bodyType:schema:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  sub_2485AA9DC(a1, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9C500, &unk_2485CA7B0);
  result = swift_dynamicCast();
  if (result)
  {
    v8 = [v15 eventBodyData];
    if (v8)
    {
      v9 = v8;
      v10 = sub_2485C89B0();
      v12 = v11;
    }

    else
    {
      v10 = 0;
      v12 = 0xC000000000000000;
    }

    [v15 timestamp];
    v14 = v13;

    *a4 = v10;
    a4[1] = v12;
    a4[2] = v14;
    a4[3] = a2;
    a4[4] = a3;
  }

  else
  {
    *a4 = 0u;
    *(a4 + 1) = 0u;
    a4[4] = 1;
  }

  return result;
}

uint64_t sub_2485AA9DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

id BMStreamBase.publisher(useCase:from:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EE9C508, &unk_2485CB9D0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - v10;
  sub_2485C89D0();
  v12 = sub_2485C8A20();
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v12);
  v13 = objc_allocWithZone(MEMORY[0x277CF1A50]);
  v14 = sub_2485AAC04(v11, v9, 0, 0, 0);
  if (a2)
  {
    v15 = sub_2485C8D60();
    v16 = [v3 publisherWithUseCase:v15 options:v14];
  }

  else
  {
    v16 = [v3 publisherWithOptions_];
  }

  return v16;
}

id sub_2485AAC04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = sub_2485C8A20();
  v13 = 0;
  if (__swift_getEnumTagSinglePayload(a1, 1, v12) != 1)
  {
    v13 = sub_2485C8A00();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  if (__swift_getEnumTagSinglePayload(a2, 1, v12) == 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = sub_2485C8A00();
    (*(*(v12 - 8) + 8))(a2, v12);
  }

  v15 = [v6 initWithStartDate:v13 endDate:v14 maxEvents:a3 lastN:a4 reversed:a5 & 1];

  return v15;
}

uint64_t IteratorEventStream.__allocating_init(block:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  IteratorEventStream.init(block:)(a1, a2);
  return v4;
}

void *IteratorEventStream.init(block:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  OUTLINED_FUNCTION_0_3();
  v8 = *(v7 + 80);
  OUTLINED_FUNCTION_0_3();
  v10 = *(v9 + 88);
  v11 = type metadata accessor for IteratorEventStream.State();
  v17 = sub_2485AB2FC();
  v12 = sub_2485AB394(&v17, v11);
  v3[3] = a2;
  v3[4] = v12;
  v3[2] = a1;

  v13 = OUTLINED_FUNCTION_1_1();
  sub_2485ABC04(v13, v14, v12, v11, v15);

  return v3;
}

uint64_t sub_2485AAEEC(void (*a1)(uint64_t))
{
  v2 = v1;
  v4 = *(*v1 + 80);
  v5 = sub_2485C8EF0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(v1 + 2);
  v11 = *(v1 + 3);
  v12 = *(v1 + 4);
  v13 = *(v1 + 5);
  v14 = *(v1 + 6);
  *(v1 + 1) = 0u;
  *(v1 + 2) = 0u;
  *(v1 + 6) = 1;
  v15 = sub_2485ABAD4(v10, v11, v12, v13, v14);
  a1(v15);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v4);
  v16 = *(*v1 + 104);
  swift_beginAccess();
  (*(v6 + 40))(&v2[v16], v9, v5);
  return swift_endAccess();
}

uint64_t sub_2485AB04C(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v1[2] = *a1;
  v10 = *(a1 + 8);
  *(v1 + 3) = v10;
  v1[5] = v3;
  v1[6] = v4;
  sub_2485A9304(v2, v10);

  return sub_2485ABAD4(v5, v6, v7, v8, v9);
}

uint64_t sub_2485AB0DC@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[6];
  if (v3 == 1)
  {
    v4 = *v1;
    v5 = *(*v1 + 104);
    swift_beginAccess();
    if (__swift_getEnumTagSinglePayload(v1 + v5, 1, *(v4 + 80)))
    {
      result = swift_endAccess();
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 1;
    }

    else
    {
      v11 = *(v4 + 88);
      sub_2485C8F00();
      return swift_endAccess();
    }
  }

  else
  {
    v8 = v1[4];
    v7 = v1[5];
    v10 = v1[2];
    v9 = v1[3];
    *(v1 + 1) = 0u;
    *(v1 + 2) = 0u;
    v1[6] = 1;
    sub_2485A9304(v10, v9);

    result = sub_2485ABAD4(v10, v9, v8, v7, v3);
    *a1 = v10;
    *(a1 + 8) = v9;
    *(a1 + 16) = v8;
    *(a1 + 24) = v7;
    *(a1 + 32) = v3;
  }

  return result;
}

uint64_t *sub_2485AB20C()
{
  v1 = *v0;
  sub_2485ABAD4(v0[2], v0[3], v0[4], v0[5], v0[6]);
  v2 = *(*v0 + 104);
  v3 = *(v1 + 80);
  v4 = sub_2485C8EF0();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);
  return v0;
}

uint64_t sub_2485AB2A8()
{
  v0 = sub_2485AB20C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t *sub_2485AB2FC()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_2485AB330();
}

uint64_t *sub_2485AB330()
{
  v1 = *v0;
  *(v0 + 1) = 0u;
  *(v0 + 2) = 0u;
  v0[6] = 1;
  __swift_storeEnumTagSinglePayload(v0 + *(v1 + 104), 1, 1, *(v1 + 80));
  return v0;
}

uint64_t sub_2485AB394(uint64_t a1, uint64_t a2)
{
  type metadata accessor for os_unfair_lock_s(255);
  sub_2485C8F70();
  v4 = sub_2485C8F60();
  (*(*(a2 - 8) + 8))(a1, a2);
  return v4;
}

uint64_t sub_2485AB444(uint64_t *a1)
{
  v3 = *(v1 + 32);
  v2 = *(v1 + 40);
  v4 = *a1;
  return sub_2485AAEEC(v3);
}

Swift::Void __swiftcall IteratorEventStream.advance(to:)(Swift::Double to)
{
  v2 = *v1;
  v3 = v1[4];
  OUTLINED_FUNCTION_0_3();
  v5 = *(v4 + 80);
  OUTLINED_FUNCTION_0_3();
  v7 = *(v6 + 88);
  type metadata accessor for IteratorEventStream.State();
  v8 = OUTLINED_FUNCTION_1_1();
  sub_2485ABC04(v8, v9, v3, v10, v11);
}

uint64_t sub_2485AB508(uint64_t *a1, uint64_t a2, double a3)
{
  v4 = *a1;
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  sub_2485AAEEC(v5);
  while (1)
  {
    result = sub_2485AB0DC(&v13);
    v8 = v17;
    if (v17 == 1)
    {
      break;
    }

    v10 = v13;
    v9 = v14;
    v12 = v15;
    v11 = v16;
    if (*&v15 >= a3)
    {
      sub_2485AB04C(&v13);
      return sub_2485ABAD4(v10, v9, v12, v11, v8);
    }

    sub_2485ABAD4(v13, v14, v15, v16, v17);
  }

  return result;
}

uint64_t IteratorEventStream.next()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return MEMORY[0x2822009F8](sub_2485AB63C, 0, 0);
}

uint64_t sub_2485AB63C()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = *(v0[3] + 32);
  v4 = swift_task_alloc();
  *(v4 + 16) = *(v1 + 80);
  *(v4 + 24) = *(v1 + 88);
  v5 = type metadata accessor for IteratorEventStream.State();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9C760, &qword_2485CB3D0);
  sub_2485ABC04(sub_2485AB728, v4, v3, v5, v6);

  v7 = v0[1];

  return v7();
}

Swift::Void __swiftcall IteratorEventStream.close()()
{
  v1 = *v0;
  v2 = v0[4];
  OUTLINED_FUNCTION_0_3();
  v9 = *(v3 + 80);
  OUTLINED_FUNCTION_0_3();
  v10 = *(v4 + 88);
  type metadata accessor for IteratorEventStream.State();
  v5 = OUTLINED_FUNCTION_1_1();
  sub_2485ABC04(v5, v6, v2, v7, v8);
}

uint64_t *sub_2485AB7E4(uint64_t **a1)
{
  v2 = *a1;

  type metadata accessor for IteratorEventStream.State();
  result = sub_2485AB2FC();
  *a1 = result;
  return result;
}

uint64_t *sub_2485AB840(uint64_t **a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_2485AB7E4(a1);
}

uint64_t IteratorEventStream.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t IteratorEventStream.__deallocating_deinit()
{
  IteratorEventStream.deinit();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_2485AB8DC(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2485A6980;

  return IteratorEventStream.next()(a1);
}

uint64_t sub_2485ABA34(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = sub_2485C8EF0();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2485ABAD4(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 != 1)
  {
    sub_2485ABB18(result, a2);
  }

  return result;
}

uint64_t sub_2485ABB18(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2485ABB70@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a1 + ((*(v2 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v2 + *MEMORY[0x277D841D0]) - 8) + 16))(a2);
}

void sub_2485ABC90(uint64_t a1, os_unfair_lock_t lock, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  os_unfair_lock_lock(lock);
  a3(a1);
  os_unfair_lock_unlock(lock);
  if (v7)
  {
    *a7 = v7;
  }
}

BOOL RateBasedUploadSampling.canUpload(batch:)()
{
  v1 = *v0;
  result = 0;
  if (*v0 != 0.0)
  {
    if (v1 == 1.0)
    {
      return 1;
    }

    sub_2485ABDC8(0.0, 1.0);
    if (v1 >= v3)
    {
      return 1;
    }
  }

  return result;
}

void sub_2485ABDC8(double a1, double a2)
{
  if (COERCE__INT64(fabs(a2 - a1)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else
  {
    sub_2485ABF6C(0x20000000000001uLL);
  }
}

_BYTE *storeEnumTagSinglePayload for PassthroughUploadSampling(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x2485ABEDCLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RateBasedUploadSampling(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for RateBasedUploadSampling(uint64_t result, int a2, int a3)
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

unint64_t sub_2485ABF6C(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x24C1D3670](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x24C1D3670](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t BlockUploadObserver.init(onUploadProgress:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t BlockUploadObserver.onUploadDidFinish(for:metrics:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = v2[1];
  v10 = (v5 + *v5);
  v7 = v5[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2485ADBF0;

  return v10(a2);
}

uint64_t sub_2485AC0FC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2485ADBF0;

  return BlockUploadObserver.onUploadWillBegin(for:)();
}

uint64_t sub_2485AC188(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2485ADBF0;

  return BlockUploadObserver.onUploadDidFinish(for:metrics:)(v4, a2);
}

uint64_t CompositeObserver.__allocating_init(observers:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t CompositeObserver.onUploadDidFinish(for:metrics:)(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return OUTLINED_FUNCTION_0_4();
}

void sub_2485AC27C()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0[9] + 16);
  v0[10] = v1;
  v2 = *(v1 + 16);
  v0[11] = v2;
  v0[12] = 0;
  if (v2)
  {
    if (*(v1 + 16))
    {
      sub_2485AC61C(v1 + 32, (v0 + 2));
      v3 = *(OUTLINED_FUNCTION_3_1() + 16);
      OUTLINED_FUNCTION_5_0();
      v11 = v4 + *v4;
      v6 = *(v5 + 4);
      v7 = swift_task_alloc();
      v0[13] = v7;
      *v7 = v0;
      v8 = OUTLINED_FUNCTION_2_1(v7);

      v9(v8);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6();

    v10();
  }
}

uint64_t sub_2485AC3B8()
{
  v2 = *(*v1 + 104);
  v6 = *v1;
  OUTLINED_FUNCTION_8();
  *v3 = v6;
  *(v6 + 112) = v0;

  __swift_destroy_boxed_opaque_existential_1((v6 + 16));
  if (v0)
  {
    v4 = sub_2485AC604;
  }

  else
  {
    v4 = sub_2485AC4CC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_2485AC4CC()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[11];
  v2 = v0[12] + 1;
  v0[12] = v2;
  if (v2 == v1)
  {
    OUTLINED_FUNCTION_6();

    v3();
  }

  else if (v2 >= *(v0[10] + 16))
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_10(v2);
    v4 = *(OUTLINED_FUNCTION_3_1() + 16);
    OUTLINED_FUNCTION_5_0();
    v11 = v5 + *v5;
    v7 = *(v6 + 4);
    v8 = swift_task_alloc();
    v0[13] = v8;
    *v8 = v0;
    v9 = OUTLINED_FUNCTION_2_1();

    v10(v9);
  }
}

uint64_t sub_2485AC61C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t CompositeObserver.onUploadWillBegin(for:)(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return OUTLINED_FUNCTION_0_4();
}

void sub_2485AC694()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0[8] + 16);
  v0[9] = v1;
  v2 = *(v1 + 16);
  v0[10] = v2;
  v0[11] = 0;
  if (v2)
  {
    if (*(v1 + 16))
    {
      sub_2485AC61C(v1 + 32, (v0 + 2));
      v3 = *(OUTLINED_FUNCTION_3_1() + 8);
      OUTLINED_FUNCTION_5_0();
      v11 = v4 + *v4;
      v6 = *(v5 + 4);
      v7 = swift_task_alloc();
      v0[12] = v7;
      *v7 = v0;
      v8 = OUTLINED_FUNCTION_1_2(v7);

      v9(v8);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6();

    v10();
  }
}

uint64_t sub_2485AC7D0()
{
  v2 = *(*v1 + 96);
  v6 = *v1;
  OUTLINED_FUNCTION_8();
  *v3 = v6;
  *(v6 + 104) = v0;

  __swift_destroy_boxed_opaque_existential_1((v6 + 16));
  if (v0)
  {
    v4 = sub_2485ACA1C;
  }

  else
  {
    v4 = sub_2485AC8E4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_2485AC8E4()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[10];
  v2 = v0[11] + 1;
  v0[11] = v2;
  if (v2 == v1)
  {
    OUTLINED_FUNCTION_6();

    v3();
  }

  else if (v2 >= *(v0[9] + 16))
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_10(v2);
    v4 = *(OUTLINED_FUNCTION_3_1() + 8);
    OUTLINED_FUNCTION_5_0();
    v11 = v5 + *v5;
    v7 = *(v6 + 4);
    v8 = swift_task_alloc();
    v0[12] = v8;
    *v8 = v0;
    v9 = OUTLINED_FUNCTION_1_2();

    v10(v9);
  }
}

uint64_t CompositeObserver.onUploadEnd(metrics:)(uint64_t result)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = result;
    v5 = v2 + 32;
    do
    {
      sub_2485AC61C(v5, v8);
      v6 = v9;
      v7 = v10;
      __swift_project_boxed_opaque_existential_1(v8, v9);
      (*(v7 + 24))(v4, v6, v7);
      result = __swift_destroy_boxed_opaque_existential_1(v8);
      v5 += 40;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t CompositeObserver.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t CompositeObserver.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_2485ACB28(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2485ADBF0;

  return CompositeObserver.onUploadWillBegin(for:)(a1);
}

uint64_t sub_2485ACBC0(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2485ACC68;

  return CompositeObserver.onUploadDidFinish(for:metrics:)(a1, a2);
}

uint64_t sub_2485ACC68()
{
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_8();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

uint64_t TransactionHoldingObserver.__allocating_init(name:cancelOnEnd:)(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_7();
  v6 = swift_allocObject();
  TransactionHoldingObserver.init(name:cancelOnEnd:)(a1, a2, a3);
  return v6;
}

uint64_t TransactionHoldingObserver.init(name:cancelOnEnd:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 40) = a3;
  type metadata accessor for TransactionHoldingObserver.State();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9C610, &qword_2485CA970);
  v7 = swift_allocObject();
  *(v7 + 24) = 0;
  *(v7 + 16) = v6;
  *(v3 + 16) = v7;
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  return v3;
}

uint64_t sub_2485ACE84()
{
  v1 = *(*(v0 + 16) + 16);
  os_unfair_lock_lock(v1 + 6);
  sub_2485ACF60(&v1[4]);
  os_unfair_lock_unlock(v1 + 6);
  OUTLINED_FUNCTION_6();

  return v2();
}

uint64_t sub_2485ACF1C(uint64_t a1, uint64_t a2)
{
  v3 = sub_2485ACFAC(*(a2 + 24), *(a2 + 32));
  v4 = *(*a1 + 24);
  *(*a1 + 24) = v3;
  return swift_unknownObjectRelease();
}

uint64_t sub_2485ACF7C@<X0>(uint64_t *a1@<X8>)
{
  result = os_transaction_create();
  *a1 = result;
  return result;
}

uint64_t sub_2485ACFAC(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0 && ((a2 & 0x2000000000000000) != 0 || (a1 & 0x1000000000000000) != 0))
  {
    return os_transaction_create();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9C638, &qword_2485CAB68);
  result = sub_2485C8F40();
  if (!v2)
  {
    return v4;
  }

  return result;
}

void TransactionHoldingObserver.onUploadEnd(metrics:)()
{
  if (*(v0 + 40) == 1)
  {
    TransactionHoldingObserver.cancel(endTransaction:)(1);
  }
}

uint64_t sub_2485AD098(uint64_t result, char a2)
{
  v2 = *result;
  *(*result + 16) = 1;
  if (a2)
  {
    v3 = *(v2 + 24);
    *(v2 + 24) = 0;
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2485AD0D8()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_2485AD110()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2485ADBF0;

  return TransactionHoldingObserver.onUploadWillBegin(for:)();
}

uint64_t sub_2485AD1A0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2485ADBF0;

  return RBAssertionHoldingObserver.onUploadDidFinish(for:metrics:)();
}

uint64_t RBAssertionHoldingObserver.__allocating_init(explanation:cancelOnEnd:)(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_7();
  v6 = swift_allocObject();
  RBAssertionHoldingObserver.init(explanation:cancelOnEnd:)(a1, a2, a3);
  return v6;
}

uint64_t RBAssertionHoldingObserver.init(explanation:cancelOnEnd:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 40) = a3;
  type metadata accessor for RBAssertionHoldingObserver.State();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9C618, &qword_2485CA988);
  v7 = swift_allocObject();
  *(v7 + 24) = 0;
  *(v7 + 16) = v6;
  *(v3 + 16) = v7;
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  return v3;
}

uint64_t sub_2485AD374()
{
  v1 = *(*(v0 + 16) + 16);
  os_unfair_lock_lock((v1 + 24));
  sub_2485AD5C0((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
  v2 = *(v0 + 8);

  return v2();
}

void sub_2485AD408(uint64_t *a1, uint64_t a2)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 24);
  v4 = *(a2 + 32);
  v5 = objc_opt_self();

  v6 = [v5 currentProcess];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9C620, &qword_2485CAB60);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2485CA940;
  sub_2485ADBB0(0, &qword_27EE9C628, 0x277D46E38);
  *(v7 + 32) = sub_2485AD5DC();
  v8 = objc_allocWithZone(MEMORY[0x277D46DB8]);
  v9 = sub_2485ADB08(v3, v4, v6);
  v17[0] = 0;
  v10 = [v9 acquireWithError_];
  v11 = v17[0];
  if (v10)
  {
    v12 = *a1;
    v13 = *(*a1 + 24);
    *(v12 + 24) = v9;
    v14 = v11;
  }

  else
  {
    v15 = v17[0];
    sub_2485C8950();

    swift_willThrow();
  }

  v16 = *MEMORY[0x277D85DE8];
}

id sub_2485AD5DC()
{
  v0 = sub_2485C8D60();

  v1 = sub_2485C8D60();

  v2 = [swift_getObjCClassFromMetadata() attributeWithDomain:v0 name:v1];

  return v2;
}

void RBAssertionHoldingObserver.onUploadEnd(metrics:)()
{
  if (*(v0 + 40) == 1)
  {
    RBAssertionHoldingObserver.cancel(withAssertion:)(1);
  }
}

void sub_2485AD6A0(uint64_t a1, void (*a2)(os_unfair_lock_s *, uint64_t))
{
  v5 = *(v2 + 16);
  os_unfair_lock_lock(v5 + 6);
  a2(v5 + 4, a1);

  os_unfair_lock_unlock(v5 + 6);
}

uint64_t sub_2485AD710()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(*(v1 + 16) + 16);
  os_unfair_lock_unlock((v1 + 24));
  return v2;
}

void sub_2485AD74C(uint64_t *a1, char a2)
{
  v2 = *a1;
  *(*a1 + 16) = 1;
  if (a2)
  {
    v3 = *(v2 + 24);
    if (v3)
    {
      [v3 invalidate];
      v4 = *(v2 + 24);
    }

    else
    {
      v4 = 0;
    }

    *(v2 + 24) = 0;
  }
}

uint64_t sub_2485AD7A8()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_2485AD7E4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t RBAssertionHoldingObserver.__deallocating_deinit()
{
  RBAssertionHoldingObserver.deinit();
  v0 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2485AD838()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2485ADBF0;

  return RBAssertionHoldingObserver.onUploadWillBegin(for:)();
}

uint64_t sub_2485AD8C8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2485ADBF0;

  return RBAssertionHoldingObserver.onUploadDidFinish(for:metrics:)();
}

uint64_t sub_2485AD978(uint64_t *a1, int a2)
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

uint64_t sub_2485AD9B8(uint64_t result, int a2, int a3)
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

id sub_2485ADB08(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_2485C8D60();

  sub_2485ADBB0(0, &qword_27EE9C630, 0x277D46DD8);
  v6 = sub_2485C8DF0();

  v7 = [v3 initWithExplanation:v5 target:a3 attributes:v6];

  return v7;
}

uint64_t sub_2485ADBB0(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_1(uint64_t a1)
{
  *(a1 + 8) = sub_2485AC3B8;
  v2 = *(v1 + 64);
  return *(v1 + 56);
}

uint64_t OUTLINED_FUNCTION_3_1()
{
  v1 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  return v1;
}

uint64_t OUTLINED_FUNCTION_6()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_10@<X0>(uint64_t a1@<X8>)
{

  return sub_2485AC61C(v1 + 40 * a1 + 32, v2 + 16);
}

uint64_t UserDefaultBookmarkManager.key.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return v1;
}

uint64_t UserDefaultBookmarkManager.__allocating_init(key:suiteName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  UserDefaultBookmarkManager.init(key:suiteName:)(a1, a2, a3, a4);
  return v8;
}

void *UserDefaultBookmarkManager.init(key:suiteName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  swift_defaultActor_initialize();
  if (!a4 || (v10 = objc_allocWithZone(MEMORY[0x277CBEBD0]), (v11 = sub_2485AE424(a3, a4)) == 0))
  {
    v11 = [objc_opt_self() standardUserDefaults];
  }

  v5[14] = a1;
  v5[15] = a2;
  v5[17] = 0;
  v5[18] = 0;
  v5[16] = v11;
  v12 = v11;

  v13 = sub_2485C8D60();

  v14 = [v12 dataForKey_];

  if (v14)
  {
    v15 = sub_2485C89B0();
    v17 = v16;

    v18 = sub_2485C88F0();
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    swift_allocObject();
    sub_2485C88E0();
    sub_2485ADF70();
    sub_2485C88D0();

    sub_2485ABB18(v15, v17);

    v5[17] = v22;
    v5[18] = v23;
  }

  else
  {
  }

  return v5;
}

unint64_t sub_2485ADF70()
{
  result = qword_27EE9C640;
  if (!qword_27EE9C640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE9C640);
  }

  return result;
}

uint64_t sub_2485ADFC4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_5(a1, v1);
}

uint64_t sub_2485ADFDC()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v1 + 136);
  v4 = *(v1 + 144);
  *v2 = v3;
  v2[1] = v4;
  return (*(v0 + 8))();
}

uint64_t sub_2485AE004(void *a1)
{
  v2[4] = v1;
  v2[5] = *a1;
  v2[6] = a1[1];
  return OUTLINED_FUNCTION_0_5(a1, v1);
}

uint64_t sub_2485AE02C()
{
  v1 = v0[6];
  v2 = v0[4];
  *(v2 + 136) = v0[5];
  *(v2 + 144) = v1;
  v3 = sub_2485C8920();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_2485C8910();
  v6 = *(v2 + 144);
  v0[2] = *(v2 + 136);
  v0[3] = v6;
  sub_2485AE488();
  v7 = sub_2485C8900();
  v9 = v8;
  v10 = v0[4];

  v11 = v10[16];
  v12 = sub_2485C8990();
  v13 = v10[14];
  v14 = v10[15];
  v15 = sub_2485C8D60();
  [v11 setObject:v12 forKey:v15];

  sub_2485ABB18(v7, v9);
  v16 = v0[1];

  return v16();
}

uint64_t UserDefaultBookmarkManager.deinit()
{
  v1 = *(v0 + 120);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t UserDefaultBookmarkManager.__deallocating_deinit()
{
  UserDefaultBookmarkManager.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2485AE1F8(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2485AE294;

  return sub_2485ADFC4(a1);
}

uint64_t sub_2485AE294()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2485AE38C(void *a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2485AE770;

  return sub_2485AE004(a1);
}

id sub_2485AE424(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_2485C8D60();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName_];

  return v4;
}

unint64_t sub_2485AE488()
{
  result = qword_27EE9C648;
  if (!qword_27EE9C648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE9C648);
  }

  return result;
}

uint64_t dispatch thunk of UserDefaultBookmarkManager.getBookmark()(uint64_t a1)
{
  v4 = *(*v1 + 144);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2485A6980;

  return v8(a1);
}

uint64_t dispatch thunk of UserDefaultBookmarkManager.setBookmark(_:)(uint64_t a1)
{
  v4 = *(*v1 + 152);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2485AE774;

  return v8(a1);
}

uint64_t dispatch thunk of BookmarkManager.getBookmark()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (OUTLINED_FUNCTION_0_6(a1, a2, a3) + 8);
  v11 = (*v10 + **v10);
  v7 = (*v10)[1];
  v8 = swift_task_alloc();
  *(v5 + 16) = v8;
  *v8 = v5;
  v8[1] = sub_2485A6980;

  return v11(v6, v4, v3);
}

uint64_t dispatch thunk of BookmarkManager.setBookmark(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (OUTLINED_FUNCTION_0_6(a1, a2, a3) + 16);
  v11 = (*v10 + **v10);
  v7 = (*v10)[1];
  v8 = swift_task_alloc();
  *(v5 + 16) = v8;
  *v8 = v5;
  v8[1] = sub_2485AE774;

  return v11(v6, v4, v3);
}

uint64_t dispatch thunk of EventStream.next()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2485A6980;

  return v11(a1, a2, a3);
}

uint64_t TelemetryManager.write(_:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_project_boxed_opaque_existential_1(a1, v3);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2485AEBFC;

  return (sub_2485AECF8)(v5, v1, v3, v4);
}

uint64_t sub_2485AEBFC(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of TelemetryWriter.write(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2485AEBFC;

  return v11(a1, a2, a3);
}

uint64_t UploadTaskEndState.hashValue.getter()
{
  v1 = *v0;
  sub_2485C90D0();
  MEMORY[0x24C1D3020](v1);
  return sub_2485C9110();
}

unint64_t sub_2485AEEF4()
{
  result = qword_27EE9C650;
  if (!qword_27EE9C650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE9C650);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for UploadTaskEndState(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2485AF0F0);
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

uint64_t dispatch thunk of UploadObserver.onUploadWillBegin(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(OUTLINED_FUNCTION_0_6(a1, a2, a3) + 8);
  OUTLINED_FUNCTION_2_2();
  v13 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_3_2(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_0_7(v8);

  return v11(v10);
}

uint64_t dispatch thunk of UploadObserver.onUploadDidFinish(for:metrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  OUTLINED_FUNCTION_2_2();
  v16 = (v9 + *v9);
  v11 = *(v10 + 4);
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_3_2(v12);
  *v13 = v14;
  v13[1] = sub_2485A6980;

  return v16(a1, a2, a3, a4);
}

uint64_t dispatch thunk of UploadController.isCancelled()(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  OUTLINED_FUNCTION_2_2();
  v12 = (v5 + *v5);
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_3_2(v8);
  *v9 = v10;
  v9[1] = sub_2485AF574;

  return v12(a1, a2);
}

uint64_t dispatch thunk of UploadController.shouldResumeOnUploadFailure(withError:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(OUTLINED_FUNCTION_0_6(a1, a2, a3) + 16);
  OUTLINED_FUNCTION_2_2();
  v13 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_3_2(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_0_7(v8);

  return v11(v10);
}

uint64_t dispatch thunk of UploadService.upload(batch:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2485AF6E8;

  return v11(a1, a2, a3);
}

uint64_t sub_2485AF6E8(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of BatchUploader.upload(batch:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_2485AE774;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of BatchUploader.createBatch()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2485A6980;

  return v11(a1, a2, a3);
}

void *sub_2485AFA80(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9C668, &qword_2485CAF28);
  v6 = swift_allocObject();
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  *(v6 + 56) = 0;
  *(v6 + 64) = 0;
  *(v6 + 48) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9C670, &qword_2485CAF30);
  v7 = swift_allocObject();
  *(v7 + 24) = 0;
  v8 = (v7 + 24);
  *(v7 + 16) = v6;
  v9 = (v7 + 16);
  v3[3] = a2;
  v3[4] = v7;
  v3[2] = a1;

  os_unfair_lock_lock(v8);
  sub_2485B06E4(v9);
  os_unfair_lock_unlock(v8);

  return v3;
}

uint64_t sub_2485AFB80(void (*a1)(void *__return_ptr, uint64_t))
{
  v2 = v1;
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  *(v1 + 1) = 0u;
  *(v1 + 2) = 0u;
  v1[6] = 1;
  v9 = sub_2485ABAD4(v4, v5, v6, v7, v8);
  a1(v14, v9);
  v10 = v14[0];
  v11 = v14[1];
  swift_beginAccess();
  v12 = v2[7];
  v2[7] = v10;
  v2[8] = v11;
}

uint64_t StreamUploader.upload(_:bookmarkManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[21] = a5;
  v6[22] = v5;
  v6[19] = a3;
  v6[20] = a4;
  v6[17] = a1;
  v6[18] = a2;
  return OUTLINED_FUNCTION_0_4();
}

uint64_t sub_2485AFC24()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9C658, &qword_2485CAE98);
  swift_allocObject();

  *(v0 + 16) = sub_2485AFA80(sub_2485B0018, v3);
  *(v0 + 40) = v4;
  *(v0 + 48) = &protocol witness table for IteratorEventStream<A>;
  sub_2485B0020(v1, v0 + 96);
  if (*(v0 + 120))
  {
    sub_2485A9F84((v0 + 96), v0 + 56);
  }

  else
  {
    v5 = type metadata accessor for FixedBookmarkManager();
    v6 = swift_allocObject();
    *(v0 + 80) = v5;
    *(v0 + 88) = &off_285ACD908;
    *(v0 + 56) = v6;
  }

  OUTLINED_FUNCTION_4_1(*(v0 + 168));
  v16 = (v7 + *v7);
  v9 = *(v8 + 4);
  v10 = swift_task_alloc();
  *(v0 + 184) = v10;
  *v10 = v0;
  v10[1] = sub_2485AFE0C;
  v11 = *(v0 + 168);
  v12 = *(v0 + 176);
  v13 = *(v0 + 160);
  v14 = *(v0 + 136);

  return v16(v14, v0 + 16, v0 + 56, v13, v11);
}

uint64_t sub_2485AFE0C()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_1();
  v3 = v2;
  v4 = *(v2 + 184);
  v5 = *v1;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  *(v3 + 192) = v0;

  __swift_destroy_boxed_opaque_existential_1((v3 + 56));
  if (v0)
  {
    v7 = sub_2485AFF78;
  }

  else
  {
    v7 = sub_2485AFF18;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2485AFF18()
{
  OUTLINED_FUNCTION_1_0();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2485AFF78()
{
  OUTLINED_FUNCTION_1_0();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[1];
  v2 = v0[24];

  return v1();
}

uint64_t sub_2485AFFD8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  a2[1] = 0;
}

uint64_t sub_2485AFFE0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2485B0020(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9C660, &qword_2485CAEA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t StreamUploader.upload(from:bookmarkManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[16] = a5;
  v6[17] = v5;
  v6[14] = a3;
  v6[15] = a4;
  v6[12] = a1;
  v6[13] = a2;
  return OUTLINED_FUNCTION_0_4();
}

uint64_t sub_2485B00D0()
{
  sub_2485B0020(*(v0 + 112), v0 + 56);
  if (*(v0 + 80))
  {
    sub_2485A9F84((v0 + 56), v0 + 16);
  }

  else
  {
    v1 = type metadata accessor for FixedBookmarkManager();
    v2 = swift_allocObject();
    *(v0 + 40) = v1;
    *(v0 + 48) = &off_285ACD908;
    *(v0 + 16) = v2;
  }

  OUTLINED_FUNCTION_4_1(*(v0 + 128));
  v13 = (v3 + *v3);
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  *(v0 + 144) = v6;
  *v6 = v0;
  v6[1] = sub_2485B0220;
  v7 = *(v0 + 128);
  v8 = *(v0 + 136);
  v9 = *(v0 + 120);
  v10 = *(v0 + 96);
  v11 = *(v0 + 104);

  return v13(v10, v11, v0 + 16, v9, v7);
}

uint64_t sub_2485B0220()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_1();
  v3 = v2;
  v4 = *(v2 + 144);
  v5 = *v1;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  *(v3 + 152) = v0;

  __swift_destroy_boxed_opaque_existential_1((v3 + 16));
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2485B034C, 0, 0);
  }

  else
  {
    v7 = *(v5 + 8);

    return v7();
  }
}

uint64_t dispatch thunk of StreamUploader.upload(from:bookmarkManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 8);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_2485B04A8;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t sub_2485B04A8()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_1();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_8();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_2485B05A0()
{
  v1 = *(v0 + 16);
  *v1 = 0;
  v1[1] = 0;
  return OUTLINED_FUNCTION_4_0();
}

uint64_t sub_2485B05C0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2485B04A8;

  return sub_2485B058C(a1);
}

uint64_t sub_2485B0658()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2485B0718;

  return j__OUTLINED_FUNCTION_4_0();
}

uint64_t sub_2485B06E4(uint64_t *a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = *a1;
  return sub_2485AFB80(v3);
}

uint64_t dispatch thunk of UploaderContext.getBatchUploader()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(OUTLINED_FUNCTION_0_6(a1, a2, a3) + 72);
  OUTLINED_FUNCTION_2_3();
  v12 = v5 + *v5;
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v9 = OUTLINED_FUNCTION_1_3(v8);

  return v10(v9);
}

uint64_t dispatch thunk of UploaderContext.getStreamUploader()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(OUTLINED_FUNCTION_0_6(a1, a2, a3) + 80);
  OUTLINED_FUNCTION_2_3();
  v12 = v5 + *v5;
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v9 = OUTLINED_FUNCTION_1_3(v8);

  return v10(v9);
}

uint64_t dispatch thunk of UploaderContext.donate(proccessingTelemetry:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(OUTLINED_FUNCTION_0_6(a1, a2, a3) + 88);
  OUTLINED_FUNCTION_2_3();
  v13 = (v8 + *v8);
  v10 = *(v9 + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2485AE774;

  return v13(v6, v4, v3);
}

uint64_t UploaderContextBuilder.init(from:to:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  *(a3 + 128) = 0u;
  *(a3 + 144) = 0u;
  *(a3 + 160) = 0;
  *(a3 + 208) = 0u;
  *(a3 + 224) = 0u;
  *(a3 + 240) = 0u;
  *(a3 + 256) = 0;
  *a3 = v5;
  *(a3 + 8) = v6;
  sub_2485B0BC4(a2, a3 + 16);
  *(a3 + 88) = &type metadata for PassthroughUploadSampling;
  *(a3 + 96) = &protocol witness table for PassthroughUploadSampling;
  *(a3 + 104) = 1;
  *(a3 + 112) = xmmword_2485CAF70;
  *(a3 + 192) = &type metadata for DefaultBatchConfigProvider;
  *(a3 + 200) = &off_285ACD9D8;

  return sub_2485B0C20(a2);
}

uint64_t UploaderContextBuilder.build()()
{
  v2 = *v0;
  v1 = v0[1];
  sub_2485B0BC4((v0 + 2), &v23);
  v3 = *(v0 + 104);
  v4 = v0[14];
  v5 = v0[15];
  sub_2485AC61C((v0 + 8), v21);
  sub_2485B12E0((v0 + 16), v19, &qword_27EE9C678, &unk_2485CAF80);
  sub_2485B12E0((v0 + 26), v17, &qword_27EE9C680, &qword_2485CBAA0);
  sub_2485AC61C((v0 + 21), v16);
  type metadata accessor for DefaultUploaderContext();
  v6 = swift_allocObject();
  v14 = &type metadata for DeviceUserOptions;
  v15 = &protocol witness table for DeviceUserOptions;
  swift_bridgeObjectRetain_n();
  swift_defaultActor_initialize();
  *(v6 + 432) = 0;
  *(v6 + 400) = 0u;
  *(v6 + 416) = 0u;
  *(v6 + 456) = 0u;
  *(v6 + 472) = 0u;
  *(v6 + 488) = 0u;
  *(v6 + 504) = 0u;
  *(v6 + 520) = 0u;
  *(v6 + 536) = 0u;
  *(v6 + 552) = 0u;
  *(v6 + 568) = 0;
  *(v6 + 112) = v2;
  *(v6 + 120) = v1;
  v7 = v24[0];
  *(v6 + 128) = v23;
  *(v6 + 144) = v7;
  *(v6 + 153) = *(v24 + 9);
  *(v6 + 232) = v22;
  v8 = v21[0];
  *(v6 + 216) = v21[1];
  *(v6 + 200) = v8;
  *(v6 + 176) = v3;
  *(v6 + 184) = v4;
  *(v6 + 192) = v5;
  v9 = v19[1];
  *(v6 + 240) = v19[0];
  *(v6 + 256) = v9;
  *(v6 + 272) = v20;
  v10 = v17[0];
  v11 = v17[1];
  *(v6 + 312) = v18;
  *(v6 + 280) = v10;
  *(v6 + 296) = v11;
  sub_2485A9F84(v16, v6 + 360);
  sub_2485A9F84(&v13, v6 + 320);
  *(v6 + 440) = v2;
  *(v6 + 448) = v1;
  return v6;
}

void *UploaderContextBuilder.withSender(_:)(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = v1[1];

  *v1 = v3;
  v1[1] = v2;
  OUTLINED_FUNCTION_0_8();

  return memcpy(v5, v6, v7);
}

void *UploaderContextBuilder.withDestination(_:)(uint64_t a1)
{
  sub_2485B0C20(v1 + 16);
  sub_2485B0BC4(a1, v1 + 16);
  OUTLINED_FUNCTION_0_8();

  return memcpy(v3, v4, v5);
}

void *UploaderContextBuilder.withUploadSampling(_:)(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 64));
  sub_2485AC61C(a1, v1 + 64);
  OUTLINED_FUNCTION_0_8();

  return memcpy(v3, v4, v5);
}

void *UploaderContextBuilder.withConfig(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *(v2 + 104) = *a1;
  *(v2 + 112) = *(a1 + 8);
  return memcpy(a2, v2, 0x108uLL);
}

void *UploaderContextBuilder.withController(_:)(uint64_t a1)
{
  sub_2485AC61C(a1, v7);
  sub_2485B1014(v1 + 128, &qword_27EE9C678, &unk_2485CAF80);
  v2 = v7[1];
  *(v1 + 128) = v7[0];
  *(v1 + 144) = v2;
  *(v1 + 160) = v8;
  OUTLINED_FUNCTION_0_8();
  return memcpy(v3, v4, v5);
}

void *UploaderContextBuilder.withObserver(_:)(uint64_t a1)
{
  sub_2485AC61C(a1, v7);
  sub_2485B1014(v1 + 208, &qword_27EE9C680, &qword_2485CBAA0);
  v2 = v7[1];
  *(v1 + 208) = v7[0];
  *(v1 + 224) = v2;
  *(v1 + 240) = v8;
  OUTLINED_FUNCTION_0_8();
  return memcpy(v3, v4, v5);
}

uint64_t sub_2485B1014(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *UploaderContextBuilder.withBatchConfigProvider(_:)(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 168));
  sub_2485AC61C(a1, v1 + 168);
  OUTLINED_FUNCTION_0_8();

  return memcpy(v3, v4, v5);
}

uint64_t UploaderContextBuilder.build(deviceUserOptions:telemetryWriter:)(uint64_t a1)
{
  v4 = *v1;
  v3 = *(v1 + 8);
  v28[0] = *v1;
  v28[1] = v3;
  sub_2485B0BC4(v1 + 16, v27);
  v25[0] = *(v1 + 104);
  v26 = *(v1 + 112);
  sub_2485AC61C(v1 + 64, v24);
  sub_2485B12E0(v1 + 128, v23, &qword_27EE9C678, &unk_2485CAF80);
  sub_2485B12E0(v1 + 208, v22, &qword_27EE9C680, &qword_2485CBAA0);
  sub_2485AC61C(v1 + 168, v21);
  sub_2485B12E0(a1, &v16, &qword_27EE9C688, qword_2485CAF90);
  if (v17)
  {
    sub_2485A9F84(&v16, v18);
    v5 = v19;
    v6 = v20;
  }

  else
  {
    v5 = &type metadata for DeviceUserOptions;
    v6 = &protocol witness table for DeviceUserOptions;
    v19 = &type metadata for DeviceUserOptions;
    v20 = &protocol witness table for DeviceUserOptions;
  }

  swift_bridgeObjectRetain_n();
  v7 = type metadata accessor for DefaultUploaderContext();
  *&v16 = v4;
  *(&v16 + 1) = v3;
  v8 = __swift_mutable_project_boxed_opaque_existential_1(v18, v5);
  v9 = *(v5[-1].Description + 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11);
  v13 = sub_2485B2B68(v28, v27, v25, v24, v23, v22, v21, v11, &v16, v7, v5, v6);
  __swift_destroy_boxed_opaque_existential_1(v18);
  return v13;
}

uint64_t sub_2485B12E0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2485B1348(uint64_t a1, uint64_t a2)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return MEMORY[0x2822009F8](sub_2485B1368, 0, 0);
}

uint64_t sub_2485B1368()
{
  sub_2485B0BC4(*(v0 + 72), v0 + 16);
  v1 = *(v0 + 56);
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v2 = 0;
    v3 = 0;
  }

  else
  {
    sub_2485B0C20(v0 + 16);
    v3 = 1000;
    v2 = 2000000;
  }

  v4 = *(v0 + 64);
  *v4 = v2;
  *(v4 + 8) = 0;
  *(v4 + 16) = v3;
  *(v4 + 24) = 0;
  *(v4 + 25) = v1;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2485B1410(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2485A6980;

  return sub_2485B1348(a1, a2);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_2485B1504(uint64_t a1)
{
  v2 = *(a1 + 8);

  if (*(a1 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1((a1 + 16));
  }

  else
  {
    v3 = *(a1 + 24);

    v4 = *(a1 + 40);
  }

  __swift_destroy_boxed_opaque_existential_1((a1 + 64));
  if (*(a1 + 152))
  {
    __swift_destroy_boxed_opaque_existential_1((a1 + 128));
  }

  __swift_destroy_boxed_opaque_existential_1((a1 + 168));
  if (*(a1 + 232))
  {
    __swift_destroy_boxed_opaque_existential_1((a1 + 208));
  }

  v5 = *(a1 + 256);
}

uint64_t sub_2485B159C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a1 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  if (a1 != a2)
  {
    sub_2485B0C20(a1 + 16);
    v6 = *(a2 + 32);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 32) = v6;
    *(a1 + 41) = *(a2 + 41);
  }

  __swift_destroy_boxed_opaque_existential_1((a1 + 64));
  v7 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v7;
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  if (*(a1 + 152))
  {
    __swift_destroy_boxed_opaque_existential_1((a1 + 128));
  }

  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 160) = *(a2 + 160);
  __swift_destroy_boxed_opaque_existential_1((a1 + 168));
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 200) = *(a2 + 200);
  if (*(a1 + 232))
  {
    __swift_destroy_boxed_opaque_existential_1((a1 + 208));
  }

  v9 = *(a2 + 224);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 224) = v9;
  v10 = *(a2 + 248);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 248) = v10;
  v11 = *(a1 + 256);
  *(a1 + 256) = *(a2 + 256);

  return a1;
}

uint64_t sub_2485B168C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 264))
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

uint64_t sub_2485B16CC(uint64_t result, int a2, int a3)
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
    *(result + 248) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 264) = 1;
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

    *(result + 264) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_2485B1798()
{
  v1 = v0[15];

  sub_2485B0C20((v0 + 16));
  sub_2485B306C((v0 + 25), &qword_27EE9C6B0, &qword_2485CB118);
  sub_2485B306C((v0 + 30), &qword_27EE9C678, &unk_2485CAF80);
  sub_2485B306C((v0 + 35), &qword_27EE9C680, &qword_2485CBAA0);
  __swift_destroy_boxed_opaque_existential_1(v0 + 40);
  __swift_destroy_boxed_opaque_existential_1(v0 + 45);
  sub_2485B306C((v0 + 50), &qword_27EE9C6A0, &qword_2485CB100);
  v2 = v0[56];

  sub_2485B306C((v0 + 57), &qword_27EE9C6A8, &qword_2485CB110);
  sub_2485B306C((v0 + 62), &qword_27EE9C698, &qword_2485CB0F8);
  sub_2485B306C((v0 + 67), &qword_27EE9C6B8, &qword_2485CB128);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_2485B1888()
{
  sub_2485B1798();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2485B1900(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return OUTLINED_FUNCTION_0_5(a1, v1);
}

uint64_t sub_2485B1918()
{
  v1 = v0[19];
  if (sub_2485B1B74())
  {
    v2 = v0[19];
    OUTLINED_FUNCTION_5_2();
    sub_2485B2EBC(v2 + 536, (v0 + 2), &qword_27EE9C6B8, &qword_2485CB128);
    if (v0[5])
    {
      v3 = v0[18];
    }

    else
    {
      v8 = v0[19];
      sub_2485B306C((v0 + 2), &qword_27EE9C6B8, &qword_2485CB128);
      sub_2485B2154((v0 + 7));
      sub_2485B21FC(v8, &off_285ACD9E8, v0 + 2);
      v3 = v0[18];
      __swift_destroy_boxed_opaque_existential_1(v0 + 7);
      sub_2485AC61C((v0 + 2), (v0 + 7));
      swift_beginAccess();
      sub_2485B2F60((v0 + 7), v2 + 536, &qword_27EE9C6B8, &qword_2485CB128);
      swift_endAccess();
    }

    sub_2485A9F84(v0 + 1, v3);
    OUTLINED_FUNCTION_6();
  }

  else
  {
    sub_2485B2100();
    v5 = swift_allocError();
    OUTLINED_FUNCTION_1_4(v5, v6);
    v4 = v0[1];
  }

  return v4();
}

uint64_t sub_2485B1A94@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 120);
  *a1 = *(v1 + 112);
  a1[1] = v2;
}

__n128 sub_2485B1AAC@<Q0>(uint64_t a1@<X8>)
{
  *a1 = *(v1 + 176);
  result = *(v1 + 184);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2485B1B74()
{
  if (qword_27EE9C070 != -1)
  {
    swift_once();
  }

  if ((byte_27EE9E438 & 1) != 0 || *(v0 + 176) != 1)
  {
    return 1;
  }

  v1 = *(v0 + 344);
  v2 = *(v0 + 352);
  __swift_project_boxed_opaque_existential_1((v0 + 320), v1);
  return (*(v2 + 8))(v1, v2) & 1;
}

uint64_t sub_2485B1C1C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2485A6980;

  return sub_2485B1CB4(a1);
}

uint64_t sub_2485B1CB4(uint64_t a1)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = v1;
  return OUTLINED_FUNCTION_0_5(a1, v1);
}

uint64_t sub_2485B1CCC()
{
  v1 = *(v0 + 112);
  if (sub_2485B1B74())
  {
    v2 = *(v0 + 112);
    OUTLINED_FUNCTION_5_2();
    sub_2485B2EBC(v2 + 456, v0 + 16, &qword_27EE9C6A8, &qword_2485CB110);
    if (*(v0 + 40))
    {
      sub_2485A9F84((v0 + 16), *(v0 + 104));
    }

    else
    {
      v7 = *(v0 + 104);
      v6 = *(v0 + 112);
      sub_2485B306C(v0 + 16, &qword_27EE9C6A8, &qword_2485CB110);
      sub_2485B2154(v0 + 16);
      type metadata accessor for DefaultBatchUploader();
      v8 = swift_allocObject();

      v10 = sub_2485B2E58(v9, v8);
      OUTLINED_FUNCTION_6_0(v10, &off_285ACE1E0);
      swift_beginAccess();
      sub_2485B2F60(v0 + 16, v2 + 456, &qword_27EE9C6A8, &qword_2485CB110);
      swift_endAccess();
    }

    OUTLINED_FUNCTION_6();
  }

  else
  {
    sub_2485B2100();
    v3 = swift_allocError();
    OUTLINED_FUNCTION_1_4(v3, v4);
    v5 = *(v0 + 8);
  }

  return v5();
}

uint64_t sub_2485B1E48(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2485AE774;

  return sub_2485B1EE0(a1);
}

uint64_t sub_2485B1EE0(uint64_t a1)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = v1;
  return OUTLINED_FUNCTION_0_5(a1, v1);
}

uint64_t sub_2485B1EF8()
{
  v1 = *(v0 + 112);
  if (sub_2485B1B74())
  {
    v2 = *(v0 + 112);
    OUTLINED_FUNCTION_5_2();
    sub_2485B2EBC(v2 + 496, v0 + 16, &qword_27EE9C698, &qword_2485CB0F8);
    if (*(v0 + 40))
    {
      sub_2485A9F84((v0 + 16), *(v0 + 104));
    }

    else
    {
      v7 = *(v0 + 104);
      v6 = *(v0 + 112);
      sub_2485B306C(v0 + 16, &qword_27EE9C698, &qword_2485CB0F8);
      sub_2485B2154(v0 + 16);
      type metadata accessor for DefaultStreamUploader();
      v8 = swift_allocObject();

      v10 = sub_2485B2E58(v9, v8);
      OUTLINED_FUNCTION_6_0(v10, &off_285ACE1F8);
      swift_beginAccess();
      sub_2485B2F60(v0 + 16, v2 + 496, &qword_27EE9C698, &qword_2485CB0F8);
      swift_endAccess();
    }

    OUTLINED_FUNCTION_6();
  }

  else
  {
    sub_2485B2100();
    v3 = swift_allocError();
    OUTLINED_FUNCTION_1_4(v3, v4);
    v5 = *(v0 + 8);
  }

  return v5();
}

uint64_t sub_2485B2074()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2485AE774;

  return sub_2485B1778();
}

unint64_t sub_2485B2100()
{
  result = qword_27EE9C690;
  if (!qword_27EE9C690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE9C690);
  }

  return result;
}

uint64_t sub_2485B2154@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_5_2();
  sub_2485B2EBC(v1 + 400, &v4, &qword_27EE9C6A0, &qword_2485CB100);
  if (v5)
  {
    sub_2485A9F84(&v4, v6);
    return sub_2485A9F84(v6, a1);
  }

  else
  {
    sub_2485B306C(&v4, &qword_27EE9C6A0, &qword_2485CB100);
    result = sub_2485B2A04(v1);
    *(a1 + 24) = &type metadata for ComponentFactory;
    *(a1 + 32) = &off_285ACDA90;
  }

  return result;
}

uint64_t sub_2485B21FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  ObjectType = swift_getObjectType();
  v8 = *(a2 + 8);
  (*(v8 + 16))(v40, ObjectType, v8);
  if (v41)
  {
    sub_2485A9F84(v40, v37);
    v9 = v38;
    v10 = v39;
    __swift_project_boxed_opaque_existential_1(v37, v38);
    (*(v10 + 8))(a1, v8, v9, v10);
  }

  else
  {
    sub_2485B0C20(v40);
    result = sub_2485B2520(a2, v37);
    if (v3)
    {
      return result;
    }

    (*(v8 + 8))(v36, ObjectType, v8);
    v12 = v36[1];
    v29 = v36[0];
    sub_2485AC61C(v37, v34);
    v13 = v35;
    v14 = __swift_mutable_project_boxed_opaque_existential_1(v34, v35);
    v42 = &v29;
    v15 = *(*(v13 - 8) + 64);
    MEMORY[0x28223BE20](v14);
    v17 = (&v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v18 + 16))(v17);
    v19 = *v17;
    v20 = type metadata accessor for AttestedRPCService();
    v33[3] = v20;
    v33[4] = &off_285ACDF50;
    v33[0] = v19;
    v21 = type metadata accessor for DataPlatformUploadService();
    v22 = swift_allocObject();
    v23 = __swift_mutable_project_boxed_opaque_existential_1(v33, v20);
    v24 = *(*(v20 - 8) + 64);
    MEMORY[0x28223BE20](v23);
    v26 = (&v29 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v27 + 16))(v26);
    v28 = *v26;
    v32 = &off_285ACDF50;
    v31 = v20;
    *&v30 = v28;
    swift_defaultActor_initialize();
    *(v22 + 112) = v29;
    *(v22 + 120) = v12;
    sub_2485A9F84(&v30, v22 + 128);
    __swift_destroy_boxed_opaque_existential_1(v33);
    __swift_destroy_boxed_opaque_existential_1(v34);
    a3[3] = v21;
    a3[4] = &off_285ACDC00;
    *a3 = v22;
  }

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

uint64_t sub_2485B2520@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  ObjectType = swift_getObjectType();
  (*(*(a1 + 8) + 16))(v7, ObjectType);
  if (v9)
  {
    sub_2485B2100();
    swift_allocError();
    *v5 = 1;
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
    v10[0] = v7[0];
    v10[1] = v7[1];
    v11 = v8;
    sub_2485B25F4(v10, a2);
    return sub_2485B2F0C(v10);
  }
}

uint64_t sub_2485B25F4@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v37 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9C6C0, &unk_2485CB130);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v36 - v5;
  v7 = type metadata accessor for RPCConfig();
  v8 = *(*(v7 - 1) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9C3B0, &qword_2485CA0A0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v36 - v16;
  v18 = sub_2485C8980();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1[1];
  v38 = *a1;
  v39 = v23;
  LOBYTE(v40) = *(a1 + 32);
  DataPlatformAccount.url.getter(v17);
  if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
  {
    sub_2485B306C(v17, &qword_27EE9C3B0, &qword_2485CA0A0);
    sub_2485B2100();
    swift_allocError();
    *v24 = 0;
    return swift_willThrow();
  }

  else
  {
    (*(v19 + 32))(v22, v17, v18);
    (*(v19 + 16))(v15, v22, v18);
    __swift_storeEnumTagSinglePayload(v15, 0, 1, v18);
    v36 = 0x80000002485CC110;
    sub_2485C6E38(0, v6);
    v26 = sub_2485C8D10();
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v18);
    v27 = v7[9];
    v28 = sub_2485C8D00();
    __swift_storeEnumTagSinglePayload(&v10[v27], 1, 1, v28);
    sub_2485B2F60(v15, v10, &qword_27EE9C3B0, &qword_2485CA0A0);
    v29 = &v10[v7[5]];
    *v29 = 0xD000000000000046;
    *(v29 + 1) = v36;
    *&v10[v7[6]] = v26;
    v10[v7[7]] = 0;
    v10[v7[8]] = 1;
    sub_2485B2F60(v6, &v10[v27], &qword_27EE9C6C0, &unk_2485CB130);
    *(&v39 + 1) = &type metadata for OspreyRPCServiceFactory;
    v40 = &off_285ACDE88;
    v30 = type metadata accessor for AttestedRPCService();
    v31 = *(v30 + 48);
    v32 = *(v30 + 52);
    v33 = swift_allocObject();
    __swift_mutable_project_boxed_opaque_existential_1(&v38, &type metadata for OspreyRPCServiceFactory);
    v34 = sub_2485B2A8C(v10, v33);
    __swift_destroy_boxed_opaque_existential_1(&v38);
    v35 = v37;
    v37[3] = v30;
    v35[4] = &off_285ACDF50;
    *v35 = v34;
    return (*(v19 + 8))(v22, v18);
  }
}

uint64_t sub_2485B2A04(uint64_t a1)
{
  v4[3] = &type metadata for ComponentFactory;
  v4[4] = &off_285ACDA90;
  sub_2485AC61C(v4, v3);
  swift_beginAccess();
  sub_2485B2F60(v3, a1 + 400, &qword_27EE9C6A0, &qword_2485CB100);
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t sub_2485B2A8C(uint64_t a1, uint64_t a2)
{
  v8 = &type metadata for OspreyRPCServiceFactory;
  v9 = &off_285ACDE88;
  sub_2485C8980();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9C6C8, &qword_2485CB140);
  sub_2485B2FB0();
  v4 = sub_2485C8D10();
  v5 = a2 + OBJC_IVAR____TtC13DataCollector18AttestedRPCService_protectedURLChannelMap;
  *v5 = 0;
  *(v5 + 8) = v4;
  sub_2485B3008(a1, a2 + OBJC_IVAR____TtC13DataCollector18AttestedRPCService_config);
  sub_2485A9F84(&v7, a2 + OBJC_IVAR____TtC13DataCollector18AttestedRPCService_factory);
  return a2;
}

uint64_t sub_2485B2B68(uint64_t *a1, _OWORD *a2, uint64_t a3, __int128 *a4, uint64_t a5, __int128 *a6, __int128 *a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v28 = a6;
  v29 = a7;
  v26 = a4;
  v27 = a5;
  v15 = *(a11 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](a1);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v26 - v20;
  (*(v15 + 32))(&v26 - v20, v22, a11);
  type metadata accessor for DefaultUploaderContext();
  v23 = swift_allocObject();
  (*(v15 + 16))(v19, v21, a11);
  v24 = sub_2485B2CF4(a1, a2, a3, v26, v27, v28, v29, v19, a9, v23, a11, a12);
  (*(v15 + 8))(v21, a11);
  return v24;
}

uint64_t sub_2485B2CF4(uint64_t *a1, _OWORD *a2, uint64_t a3, __int128 *a4, uint64_t a5, __int128 *a6, __int128 *a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v35 = a11;
  v36 = a12;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v34);
  (*(*(a11 - 8) + 32))(boxed_opaque_existential_1, a8, a11);
  v21 = *a1;
  v20 = a1[1];
  LOBYTE(a8) = *a3;
  v22 = *(a3 + 8);
  v23 = *(a3 + 16);
  v24 = a9[1];
  v31 = v22;
  v32 = *a9;
  swift_defaultActor_initialize();
  *(a10 + 432) = 0;
  *(a10 + 400) = 0u;
  *(a10 + 416) = 0u;
  *(a10 + 456) = 0u;
  *(a10 + 472) = 0u;
  *(a10 + 488) = 0u;
  *(a10 + 504) = 0u;
  *(a10 + 520) = 0u;
  *(a10 + 536) = 0u;
  *(a10 + 552) = 0u;
  *(a10 + 568) = 0;
  *(a10 + 112) = v21;
  *(a10 + 120) = v20;
  v25 = a2[1];
  *(a10 + 128) = *a2;
  *(a10 + 144) = v25;
  *(a10 + 153) = *(a2 + 25);
  *(a10 + 232) = *(a4 + 4);
  v26 = *a4;
  *(a10 + 216) = a4[1];
  *(a10 + 200) = v26;
  *(a10 + 176) = a8;
  *(a10 + 184) = v31;
  *(a10 + 192) = v23;
  v27 = *(a5 + 16);
  *(a10 + 240) = *a5;
  *(a10 + 256) = v27;
  *(a10 + 272) = *(a5 + 32);
  v28 = *a6;
  v29 = a6[1];
  *(a10 + 312) = *(a6 + 4);
  *(a10 + 280) = v28;
  *(a10 + 296) = v29;
  sub_2485A9F84(a7, a10 + 360);
  sub_2485A9F84(&v34, a10 + 320);
  *(a10 + 440) = v32;
  *(a10 + 448) = v24;
  return a10;
}

uint64_t sub_2485B2E58(uint64_t a1, uint64_t a2)
{
  swift_defaultActor_initialize();
  *(a2 + 120) = 0;
  swift_unknownObjectWeakInit();
  *(a2 + 128) = 0;
  *(a2 + 120) = &off_285ACD9E8;
  swift_unknownObjectWeakAssign();

  return a2;
}

uint64_t sub_2485B2EBC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_4_2(a1, a2, a3, a4);
  OUTLINED_FUNCTION_2_4(v6);
  (*(v7 + 16))(v4, v5);
  return v4;
}

uint64_t sub_2485B2F60(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_4_2(a1, a2, a3, a4);
  OUTLINED_FUNCTION_2_4(v6);
  (*(v7 + 40))(v4, v5);
  return v4;
}

unint64_t sub_2485B2FB0()
{
  result = qword_27EE9C6D0;
  if (!qword_27EE9C6D0)
  {
    sub_2485C8980();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE9C6D0);
  }

  return result;
}

uint64_t sub_2485B3008(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RPCConfig();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2485B306C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_2_4(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t OUTLINED_FUNCTION_1_4(uint64_t a1, void *a2)
{
  *a2 = 3;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_4_2(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t OUTLINED_FUNCTION_5_2()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_6_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3[3] = v4;
  v3[4] = a2;
  *v3 = a1;
  __swift_destroy_boxed_opaque_existential_1((v2 + 16));

  return sub_2485AC61C(v3, v2 + 16);
}

id sub_2485B31D4(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_allocWithZone(type metadata accessor for AsyncEventConnector());

  v9 = sub_2485B41AC(a2, a3, a4);
  [a1 subscribe_];

  swift_unknownObjectRelease();

  return v9;
}

uint64_t sub_2485B3274(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return OUTLINED_FUNCTION_0_4();
}

uint64_t sub_2485B3288()
{
  OUTLINED_FUNCTION_9_0();
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v1;
  v4 = *(MEMORY[0x277D85A10] + 4);
  v5 = swift_task_alloc();
  v0[6] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9C760, &qword_2485CB3D0);
  *v5 = v0;
  v5[1] = sub_2485B3390;
  v6 = v0[2];
  OUTLINED_FUNCTION_7_0();

  return MEMORY[0x282200830]();
}

uint64_t sub_2485B3390()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_1();
  v3 = v2;
  OUTLINED_FUNCTION_4_3();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_8();
  *v8 = v7;
  v3[7] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2485B34C0, 0, 0);
  }

  else
  {
    v10 = v3[4];
    v9 = v3[5];

    OUTLINED_FUNCTION_3_0();

    return v11();
  }
}

uint64_t sub_2485B34C0()
{
  OUTLINED_FUNCTION_1_0();
  v2 = v0[4];
  v1 = v0[5];

  OUTLINED_FUNCTION_3_0();
  v4 = v0[7];

  return v3();
}

uint64_t sub_2485B3524(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2485B35C0;

  return sub_2485B36A0(a1);
}

uint64_t sub_2485B35C0()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_1();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_8();
  *v4 = v3;

  OUTLINED_FUNCTION_3_0();

  return v5();
}

uint64_t sub_2485B36A0(uint64_t a1)
{
  *(v2 + 120) = a1;
  *(v2 + 128) = v1;
  return MEMORY[0x2822009F8](sub_2485B36C0, 0, 0);
}

uint64_t sub_2485B36C0()
{
  OUTLINED_FUNCTION_1_0();
  v1 = v0[16];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_2485B375C;
  v2 = swift_continuation_init();
  sub_2485B51F8(v2, v1);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2485B375C()
{
  OUTLINED_FUNCTION_9_0();
  v1 = *v0;
  OUTLINED_FUNCTION_4_3();
  *v4 = v2;
  *v4 = *v0;
  if (*(v3 + 48))
  {
    v5 = *(v3 + 48);
    swift_willThrow();
  }

  else
  {
    v7 = *(v2 + 112);
    v6 = *(v2 + 120);
    v8 = *(v2 + 96);
    *v6 = *(v2 + 80);
    *(v6 + 16) = v8;
    *(v6 + 32) = v7;
  }

  OUTLINED_FUNCTION_6_1();

  return v9();
}

uint64_t sub_2485B3864()
{
  v1 = *(v0 + OBJC_IVAR____TtC13DataCollectorP33_7464FF206B3FBAD9AAA66F8F184B0F6D19AsyncEventConnector_protectedEventStateMachine);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  v3 = sub_2485B4F84();
  os_unfair_lock_unlock((v1 + 24));
  v4 = 0;
  v49 = v3 + 32;
  v50 = *(v3 + 16);
  v48 = v3;
  while (v4 != v50)
  {
    if (v4 >= *(v3 + 16))
    {
      __break(1u);
      JUMPOUT(0x2485B3B14);
    }

    v5 = v49 + 56 * v4;
    v6 = *v5;
    v7 = *(v5 + 8);
    v9 = *(v5 + 16);
    v8 = *(v5 + 24);
    v10 = *(v5 + 32);
    v11 = *(v5 + 40);
    ++v4;
    switch(*(v5 + 48))
    {
      case 1:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9C768, &qword_2485CB3D8);
        swift_allocError();
        *v44 = v7;
        v45 = v7;
        swift_continuation_throwingResumeWithError();
        break;
      case 2:
        v26 = v6[2];
        if (v26)
        {
          v27 = v6 + 4;
          v28 = *v5;

          do
          {
            v29 = *v27++;
            v30 = *(*(v29 + 64) + 40);
            *v30 = 0u;
            *(v30 + 16) = 0u;
            *(v30 + 32) = 1;
            swift_continuation_throwingResume();
            --v26;
          }

          while (v26);
          v31 = OUTLINED_FUNCTION_0_9();
          sub_2485B57E4(v31, v32, v33, v34, v35, v11, 2);
          v3 = v48;
        }

        break;
      case 3:
        v36 = v6;
        v37 = MEMORY[0x24C1D3110]();
        [v36 requestDemand_];
        v38 = v37;
        v3 = v48;
        objc_autoreleasePoolPop(v38);
        v39 = OUTLINED_FUNCTION_0_9();
        sub_2485B57E4(v39, v40, v41, v42, v43, v11, 3);
        break;
      case 4:
        v18 = v6;
        v19 = MEMORY[0x24C1D3110]();
        [v18 cancel];
        v20 = v19;
        v3 = v48;
        objc_autoreleasePoolPop(v20);
        v21 = OUTLINED_FUNCTION_0_9();
        sub_2485B57E4(v21, v22, v23, v24, v25, v11, 4);
        break;
      default:
        if (v11 == 1)
        {
          v12 = *(v6[8] + 40);
          *v12 = v7;
          v12[1] = v9;
          v12[2] = v8;
          v12[3] = v10;
          v12[4] = 1;
          swift_continuation_throwingResume();
          v13 = OUTLINED_FUNCTION_0_9();
          sub_2485B57E4(v13, v14, v15, v16, v17, 1, 0);
        }

        else
        {
          sub_2485B5854(*(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40));
          v46 = *(v6[8] + 40);
          *v46 = v7;
          v46[1] = v9;
          v46[2] = v8;
          v46[3] = v10;
          v46[4] = v11;
          swift_continuation_throwingResume();
        }

        break;
    }
  }
}

void sub_2485B3B2C(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v3;

  *a1 = v3;
}

uint64_t sub_2485B3B60(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2485B6248;

  return sub_2485B3274(a1, v4);
}

uint64_t sub_2485B3C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_2485B3CCC;

  return (sub_2485B3DC8)(a1, a2, a3);
}

uint64_t sub_2485B3CCC()
{
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_5_1();
  v3 = v2;
  OUTLINED_FUNCTION_4_3();
  *v4 = v3;
  v6 = *(v5 + 24);
  v7 = *v1;
  OUTLINED_FUNCTION_8();
  *v8 = v7;

  if (v0)
  {
    **(v3 + 16) = v0;
  }

  OUTLINED_FUNCTION_6_1();

  return v9();
}

uint64_t sub_2485B3DC8(uint64_t a1, uint64_t a2)
{
  v3[3] = a1;
  v3[4] = v2;
  if (a2)
  {
    swift_getObjectType();
    v4 = sub_2485C8E10();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v3[5] = v4;
  v3[6] = v6;

  return MEMORY[0x2822009F8](sub_2485B3E68, v4, v6);
}

uint64_t sub_2485B3E84()
{
  OUTLINED_FUNCTION_9_0();
  v1 = v0[7];
  v2 = swift_task_alloc();
  v0[8] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[9] = v3;
  *(v3 + 16) = v1;
  v4 = *(MEMORY[0x277D85A10] + 4);
  v5 = swift_task_alloc();
  v0[10] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9C760, &qword_2485CB3D0);
  *v5 = v0;
  v5[1] = sub_2485B3F8C;
  v6 = v0[3];
  OUTLINED_FUNCTION_7_0();

  return MEMORY[0x282200830]();
}

uint64_t sub_2485B3F8C()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_1();
  v3 = v2;
  OUTLINED_FUNCTION_4_3();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  OUTLINED_FUNCTION_8();
  *v8 = v7;
  v3[11] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2485B40BC, 0, 0);
  }

  else
  {
    v10 = v3[8];
    v9 = v3[9];

    OUTLINED_FUNCTION_3_0();

    return v11();
  }
}

uint64_t sub_2485B40BC()
{
  OUTLINED_FUNCTION_1_0();
  v2 = v0[8];
  v1 = v0[9];

  v3 = v0[5];
  v4 = v0[6];

  return MEMORY[0x2822009F8](sub_2485B4124, v3, v4);
}

uint64_t sub_2485B4124()
{
  OUTLINED_FUNCTION_1_0();
  *(v0 + 16) = *(v0 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9C768, &qword_2485CB3D8);
  swift_willThrowTypedImpl();
  OUTLINED_FUNCTION_3_0();
  v2 = *(v0 + 88);

  return v1();
}

id sub_2485B41AC(char a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  type metadata accessor for EventStateMachine();
  v8 = swift_allocObject();
  *(v8 + 16) = MEMORY[0x277D84F90];
  *(v8 + 24) = 0;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  *(v8 + 48) = a1;
  *(v8 + 56) = a2;
  *(v8 + 64) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9C7E8, &qword_2485CB410);
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  *(v9 + 16) = v8;
  *&v3[OBJC_IVAR____TtC13DataCollectorP33_7464FF206B3FBAD9AAA66F8F184B0F6D19AsyncEventConnector_protectedEventStateMachine] = v9;
  v11.receiver = v3;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_init);
}

id sub_2485B4274()
{
  ObjectType = swift_getObjectType();
  sub_2485B3864();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2485B42F4(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC13DataCollectorP33_7464FF206B3FBAD9AAA66F8F184B0F6D19AsyncEventConnector_protectedEventStateMachine);
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  sub_2485B4398(a1, v10);
  os_unfair_lock_unlock((v3 + 24));
  if (v11 != 255)
  {
    v6 = v10[0];
    v7 = v10[1];
    v8 = v10[2];
    v9 = v11;
    sub_2485B44E4();
    sub_2485B57E4(v6, *(&v6 + 1), v7, *(&v7 + 1), v8, *(&v8 + 1), v9);
  }

  return *MEMORY[0x277CF1780];
}

double sub_2485B4398@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + 32) - 2 >= 2)
  {
    v6 = v2;
    v7 = *(v2 + 16);
    if (*(v2 + 32))
    {
      v8 = *(v2 + 24);
      v22 = v8;
      if (*(v8 + 16))
      {
        v10 = *(v8 + 32);
        v11 = v7;

        sub_2485B5F44(0, 1);
        v12 = v22;
        v13 = *(v6 + 16);
        v14 = *(v6 + 24);
        *(v6 + 16) = v7;
        *(v6 + 24) = v12;
        v15 = *(v6 + 32);
        *(v6 + 32) = 1;
        v16 = v11;
        sub_2485B5B04(v13, v14, v15);
        v17 = *(v6 + 64);
        (*(v6 + 56))(v20, a1);

        v18 = v21;
        *a2 = v10;
        result = *v20;
        v19 = v20[1];
        *(a2 + 8) = v20[0];
        *(a2 + 24) = v19;
        *(a2 + 40) = v18;
        *(a2 + 48) = 0;
        return result;
      }
    }

    else if (v7[2])
    {
      *(v2 + 16) = MEMORY[0x277D84F90];
      *(v2 + 24) = 0;
      *(v2 + 32) = 0;
      *a2 = v7;
      result = 0.0;
      *(a2 + 8) = 0u;
      *(a2 + 24) = 0u;
      *(a2 + 40) = 0;
      v5 = 2;
      goto LABEL_3;
    }
  }

  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  v5 = -1;
LABEL_3:
  *(a2 + 48) = v5;
  return result;
}

void sub_2485B44E4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  switch(*(v0 + 48))
  {
    case 1:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9C768, &qword_2485CB3D8);
      swift_allocError();
      *v13 = v2;
      v14 = v2;

      swift_continuation_throwingResumeWithError();
      break;
    case 2:
      v9 = v1[2];
      if (v9)
      {
        v10 = v1 + 4;
        do
        {
          v11 = *v10++;
          v12 = *(*(v11 + 64) + 40);
          *v12 = 0u;
          *(v12 + 16) = 0u;
          *(v12 + 32) = 1;
          swift_continuation_throwingResume();
          --v9;
        }

        while (v9);
      }

      break;
    case 3:
      v8 = MEMORY[0x24C1D3110]();
      [v1 requestDemand_];
      goto LABEL_10;
    case 4:
      v8 = MEMORY[0x24C1D3110]();
      [v1 cancel];
LABEL_10:

      objc_autoreleasePoolPop(v8);
      break;
    default:
      if (v6 == 1)
      {
        v7 = *(v1[8] + 40);
        *v7 = v2;
        v7[1] = v3;
        v7[2] = v4;
        v7[3] = v5;
        v7[4] = 1;
      }

      else
      {
        sub_2485B5854(*(v0 + 8), *(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));
        v15 = *(v1[8] + 40);
        *v15 = v2;
        v15[1] = v3;
        v15[2] = v4;
        v15[3] = v5;
        v15[4] = v6;
      }

      swift_continuation_throwingResume();
      break;
  }
}

void sub_2485B4774()
{
  v1 = *(v0 + OBJC_IVAR____TtC13DataCollectorP33_7464FF206B3FBAD9AAA66F8F184B0F6D19AsyncEventConnector_protectedEventStateMachine);
  os_unfair_lock_lock((v1 + 24));
  sub_2485B608C((v1 + 16), v6);
  os_unfair_lock_unlock((v1 + 24));
  if (v7 != 255)
  {
    v2 = v6[0];
    v3 = v6[1];
    v4 = v6[2];
    v5 = v7;
    sub_2485B44E4();
    sub_2485B57E4(v2, *(&v2 + 1), v3, *(&v3 + 1), v4, *(&v4 + 1), v5);
  }
}

id sub_2485B4810@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + 32))
  {
    *a2 = a1;
    *(a2 + 8) = 0u;
    *(a2 + 24) = 0u;
    *(a2 + 40) = 0;
    v3 = 4;
LABEL_3:
    *(a2 + 48) = v3;
    goto LABEL_6;
  }

  v4 = *(v2 + 16);
  *(v2 + 16) = a1;
  *(v2 + 24) = v4;
  *(v2 + 32) = 1;
  v5 = *(v4 + 16);
  if (!v5)
  {
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    v3 = -1;
    goto LABEL_3;
  }

  *a2 = a1;
  *(a2 + 8) = v5;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 3;
  v8 = a1;
  v6 = a1;
  a1 = v8;
LABEL_6:

  return a1;
}

uint64_t sub_2485B4918()
{
  v1 = *(v0 + OBJC_IVAR____TtC13DataCollectorP33_7464FF206B3FBAD9AAA66F8F184B0F6D19AsyncEventConnector_protectedEventStateMachine);
  os_unfair_lock_lock((v1 + 24));
  sub_2485B5E8C((v1 + 16), &v30);
  os_unfair_lock_unlock((v1 + 24));
  v2 = 0;
  v3 = v30;
  v28 = v30 + 32;
  v29 = *(v30 + 2);
  v27 = v30;
  while (v2 != v29)
  {
    if (v2 >= *(v3 + 2))
    {
      __break(1u);
      JUMPOUT(0x2485B4BE4);
    }

    v4 = &v28[56 * v2];
    v5 = *v4;
    v6 = *(v4 + 1);
    v8 = *(v4 + 2);
    v7 = *(v4 + 3);
    v9 = *(v4 + 4);
    v10 = *(v4 + 5);
    ++v2;
    switch(v4[48])
    {
      case 1:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9C768, &qword_2485CB3D8);
        swift_allocError();
        *v23 = v6;
        v24 = v6;
        swift_continuation_throwingResumeWithError();
        break;
      case 2:
        v15 = v5[2];
        if (v15)
        {
          v16 = v5 + 4;
          v17 = *v4;

          do
          {
            v18 = *v16++;
            v19 = *(*(v18 + 64) + 40);
            *v19 = 0u;
            *(v19 + 16) = 0u;
            *(v19 + 32) = 1;
            swift_continuation_throwingResume();
            --v15;
          }

          while (v15);
          sub_2485B57E4(v5, v6, v8, v7, v9, v10, 2);
          v3 = v27;
        }

        break;
      case 3:
        v20 = v5;
        v21 = MEMORY[0x24C1D3110]();
        [v20 requestDemand_];
        v22 = v21;
        v3 = v27;
        objc_autoreleasePoolPop(v22);
        sub_2485B57E4(v5, v6, v8, v7, v9, v10, 3);
        break;
      case 4:
        v12 = v5;
        v13 = MEMORY[0x24C1D3110]();
        [v12 cancel];
        v14 = v13;
        v3 = v27;
        objc_autoreleasePoolPop(v14);
        sub_2485B57E4(v5, v6, v8, v7, v9, v10, 4);
        break;
      default:
        if (v10 == 1)
        {
          v11 = *(v5[8] + 40);
          *v11 = v6;
          v11[1] = v8;
          v11[2] = v7;
          v11[3] = v9;
          v11[4] = 1;
        }

        else
        {
          sub_2485B5854(*(v4 + 1), *(v4 + 2), *(v4 + 3), *(v4 + 4), *(v4 + 5));
          v25 = *(v5[8] + 40);
          *v25 = v6;
          v25[1] = v8;
          v25[2] = v7;
          v25[3] = v9;
          v25[4] = v10;
        }

        swift_continuation_throwingResume();
        break;
    }
  }
}

char *sub_2485B4BF8(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(v1 + 32) - 2 >= 2)
  {
    v6 = v1 + 2;
    v5 = v1[2];
    v7 = v1[3];
    if (*(v1 + 32))
    {
      if (v1[6])
      {
        v8 = *(v7 + 16);
        v9 = v5;

        if (v8 || ![a1 state])
        {
          v10 = sub_2485B5898();

          v11 = *(v2 + 5);
          *(v2 + 5) = v10;
          swift_unknownObjectRelease();
        }

        else
        {
        }
      }

      else
      {
        v12 = v1[3];
      }

      v30 = v7;
    }

    else
    {
      v30 = v1[2];
      sub_2485B5ED0(v5, v7, 0);
      v7 = v5;
    }

    v13 = [a1 state];
    if (v13)
    {
      v13 = [a1 error];
      if (v13)
      {
        v14 = 2;
      }

      else
      {
        v14 = 3;
      }
    }

    else
    {
      v14 = 3;
    }

    v16 = *(v2 + 2);
    v15 = *(v2 + 3);
    *(v2 + 2) = v13;
    *(v2 + 3) = 0;
    v17 = v2[32];
    v2[32] = v14;
    sub_2485B5B04(v16, v15, v17);
    v18 = *(v7 + 16);

    if (v18)
    {
      v19 = *(v7 + 16);
      if (v19)
      {
        v20 = *(v7 + 32);
        sub_2485B5F44(0, 1);
        if (v2[32] == 2)
        {
          v21 = *(v2 + 2);
          *v6 = 0;
          *(v2 + 3) = 0;
          v2[32] = 3;
          v2 = sub_2485B5B78(0, 1, 1, MEMORY[0x277D84F90]);
          v23 = *(v2 + 2);
          v22 = *(v2 + 3);
          v18 = v23 + 1;
          if (v23 >= v22 >> 1)
          {
            v2 = sub_2485B5B78((v22 > 1), v23 + 1, 1, v2);
          }

          *(v2 + 2) = v18;
          v24 = &v2[56 * v23];
          *(v24 + 4) = v20;
          *(v24 + 5) = v21;
          *(v24 + 3) = 0u;
          *(v24 + 4) = 0u;
          v24[80] = 1;
        }

        else
        {
          v2 = sub_2485B5B78(0, 1, 1, MEMORY[0x277D84F90]);
          v26 = *(v2 + 2);
          v25 = *(v2 + 3);
          v18 = v26 + 1;
          if (v26 >= v25 >> 1)
          {
            v2 = sub_2485B5B78((v25 > 1), v26 + 1, 1, v2);
          }

          *(v2 + 2) = v18;
          v27 = &v2[56 * v26];
          *(v27 + 4) = v20;
          *(v27 + 40) = 0u;
          *(v27 + 56) = 0u;
          *(v27 + 9) = 1;
          v27[80] = 0;
        }

        v7 = v30;
        if (!*(v30 + 16))
        {

          return v2;
        }

        v19 = *(v2 + 3);
        a1 = (v18 + 1);
        if (v18 < v19 >> 1)
        {
          goto LABEL_27;
        }
      }

      else
      {
        __break(1u);
      }

      v2 = sub_2485B5B78((v19 > 1), a1, 1, v2);
LABEL_27:
      *(v2 + 2) = a1;
      v28 = &v2[56 * v18];
      *(v28 + 4) = v7;
      *(v28 + 40) = 0u;
      *(v28 + 56) = 0u;
      *(v28 + 9) = 0;
      v28[80] = 2;
      return v2;
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2485B4F84()
{
  v1 = *v0;
  if (*(v0 + 32) - 2 < 2)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = v0[2];
  v3 = v0[3];
  if (!*(v0 + 32))
  {
    *(v0 + 1) = xmmword_2485CB1C0;
    *(v0 + 32) = 3;
    if (v4[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9C7E0, &qword_2485CB400);
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_2485CB1D0;
      *(v2 + 32) = v4;
      *(v2 + 40) = 0u;
      *(v2 + 56) = 0u;
      *(v2 + 72) = 0;
      *(v2 + 80) = 2;
      return v2;
    }

    sub_2485B5B04(v4, v3, 0);
    return MEMORY[0x277D84F90];
  }

  *(v0 + 1) = xmmword_2485CB1C0;
  *(v0 + 32) = 3;
  if (v0[6])
  {
    v5 = sub_2485B5898();
    v6 = v0[5];
    v0[5] = v5;
    swift_unknownObjectRelease();
  }

  v7 = v4;
  v2 = sub_2485B5B78(0, 1, 1, MEMORY[0x277D84F90]);
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v10 = v8 + 1;
  if (v8 >= v9 >> 1)
  {
    v16 = v2;
    v17 = *(v2 + 16);
    v18 = sub_2485B5B78((v9 > 1), v8 + 1, 1, v16);
    v8 = v17;
    v2 = v18;
  }

  *(v2 + 16) = v10;
  v11 = v2 + 56 * v8;
  *(v11 + 32) = v4;
  *(v11 + 40) = 0u;
  *(v11 + 56) = 0u;
  *(v11 + 72) = 0;
  *(v11 + 80) = 4;
  if (*(v3 + 16))
  {
    v12 = *(v2 + 24);
    v13 = v8 + 2;
    if ((v8 + 2) > (v12 >> 1))
    {
      v2 = sub_2485B5B78((v12 > 1), v8 + 2, 1, v2);
    }

    *(v2 + 16) = v13;
    v14 = v2 + 56 * v10;
    *(v14 + 32) = v3;
    *(v14 + 40) = 0u;
    *(v14 + 56) = 0u;
    *(v14 + 72) = 0;
    *(v14 + 80) = 2;
  }

  else
  {
  }

  return v2;
}

void sub_2485B51F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + OBJC_IVAR____TtC13DataCollectorP33_7464FF206B3FBAD9AAA66F8F184B0F6D19AsyncEventConnector_protectedEventStateMachine);
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  sub_2485B5290(a1, v9);
  os_unfair_lock_unlock((v3 + 24));
  if (v10 != 255)
  {
    v5 = v9[0];
    v6 = v9[1];
    v7 = v9[2];
    v8 = v10;
    sub_2485B44E4();
    sub_2485B57E4(v5, *(&v5 + 1), v6, *(&v6 + 1), v7, *(&v7 + 1), v8);
  }
}

void sub_2485B5290(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  switch(*(v2 + 32))
  {
    case 1:
      v13 = *(v2 + 24);
      v14 = v4;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_2485B5A0C(0, *(v13 + 2) + 1, 1, v13, &qword_27EE9C770, &qword_2485CB3E8);
      }

      v16 = *(v13 + 2);
      v15 = *(v13 + 3);
      v17 = v16 + 1;
      if (v16 >= v15 >> 1)
      {
        v22 = sub_2485B5A0C((v15 > 1), v16 + 1, 1, v13, &qword_27EE9C770, &qword_2485CB3E8);
        v17 = v16 + 1;
        v13 = v22;
      }

      *(v13 + 2) = v17;
      *&v13[8 * v16 + 32] = a1;
      v18 = *(v2 + 16);
      v19 = *(v2 + 24);
      *(v2 + 16) = v4;
      *(v2 + 24) = v13;
      v20 = *(v2 + 32);
      *(v2 + 32) = 1;
      v21 = v14;
      sub_2485B5B04(v18, v19, v20);
      *a2 = v4;
      *(a2 + 8) = 1;
      *(a2 + 16) = 0u;
      *(a2 + 32) = 0u;
      v12 = 3;
      goto LABEL_14;
    case 2:
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;
      *(v2 + 32) = 3;
      *a2 = a1;
      *(a2 + 8) = v4;
      *(a2 + 16) = 0u;
      *(a2 + 32) = 0u;
      v12 = 1;
      goto LABEL_14;
    case 3:
      *a2 = a1;
      *(a2 + 8) = 0u;
      *(a2 + 24) = 0u;
      *(a2 + 40) = 1;
      *(a2 + 48) = 0;
      return;
    default:
      v6 = *(v2 + 16);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_2485B5A0C(0, *(v4 + 2) + 1, 1, v4, &qword_27EE9C770, &qword_2485CB3E8);
      }

      v8 = *(v4 + 2);
      v7 = *(v4 + 3);
      if (v8 >= v7 >> 1)
      {
        v4 = sub_2485B5A0C((v7 > 1), v8 + 1, 1, v4, &qword_27EE9C770, &qword_2485CB3E8);
      }

      *(v4 + 2) = v8 + 1;
      *&v4[8 * v8 + 32] = a1;
      v9 = *(v2 + 16);
      v10 = *(v2 + 24);
      *(v2 + 16) = v4;
      *(v2 + 24) = 0;
      v11 = *(v2 + 32);
      *(v2 + 32) = 0;
      sub_2485B5B04(v9, v10, v11);
      *(a2 + 16) = 0u;
      *(a2 + 32) = 0u;
      *a2 = 0u;
      v12 = -1;
LABEL_14:
      *(a2 + 48) = v12;
      return;
  }
}

uint64_t sub_2485B5558()
{
  sub_2485B5B04(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 40);
  swift_unknownObjectRelease();
  v2 = *(v0 + 64);

  return v0;
}

uint64_t sub_2485B558C()
{
  v0 = sub_2485B5558();

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

uint64_t get_enum_tag_for_layout_string_13DataCollector17EventStateMachine33_7464FF206B3FBAD9AAA66F8F184B0F6DLLC0D0O(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_2485B5610(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 17))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 3)
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

uint64_t sub_2485B5650(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_2485B5694(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_2485B56DC()
{
  result = qword_27EE9C758;
  if (!qword_27EE9C758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE9C758);
  }

  return result;
}

uint64_t sub_2485B5730()
{
  OUTLINED_FUNCTION_1_0();
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v4 = OUTLINED_FUNCTION_10_0(v3);

  return sub_2485B3524(v4);
}

void sub_2485B57E4(void *a1, id a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  switch(a7)
  {
    case 0:
      sub_2485ABAD4(a2, a3, a4, a5, a6);
      break;
    case 1:

      break;
    case 2:

      break;
    case 3:
    case 4:

      break;
    default:
      return;
  }
}

uint64_t sub_2485B5854(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 != 1)
  {
    sub_2485A9304(result, a2);
  }

  return result;
}

id sub_2485B5898()
{
  v0 = MEMORY[0x24C1D3110]();
  v1 = swift_dynamicCastObjCProtocolConditional();
  if (v1)
  {
    v2 = [v1 newBookmark];
  }

  else
  {
    v2 = 0;
  }

  objc_autoreleasePoolPop(v0);
  return v2;
}

size_t sub_2485B5920(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  v9 = sub_2485B5C8C(v8, v7);
  v10 = *(sub_2485C8B40() - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_2485B5DB4(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

char *sub_2485B5A0C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 8);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || &v15[8 * v10] <= v14)
    {
      memmove(v14, v15, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 8 * v10);
  }

  return v12;
}

void sub_2485B5B04(void *a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  else
  {
    if (a3 == 1)
    {
    }

    else
    {
      if (a3)
      {
        return;
      }
    }
  }
}

char *sub_2485B5B78(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9C7E0, &qword_2485CB400);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[56 * v8] <= v12)
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_2485B5C8C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE9C7F0, &qword_2485CB570);
  v4 = *(sub_2485C8B40() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_2485B5D88(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

uint64_t sub_2485B5DB4(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_2485C8B40(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    v7 = sub_2485C8B40();

    return MEMORY[0x2821FE828](a3, a1, a2, v7);
  }

  else if (a3 != a1)
  {

    return MEMORY[0x2821FE820](a3, a1, a2, result);
  }

  return result;
}

char *sub_2485B5E8C@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *a1;
  result = sub_2485B4BF8(v4);
  *a2 = result;
  return result;
}

id sub_2485B5ED0(id result, uint64_t a2, char a3)
{
  if (a3 == 2)
  {

    return result;
  }

  else
  {
    if (a3 == 1)
    {
      v4 = result;
    }

    else
    {
      if (a3)
      {
        return result;
      }
    }
  }
}

unint64_t sub_2485B5F44(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  result = sub_2485B6014(result, 1);
  v8 = *v2;
  if (!v7)
  {
LABEL_15:
    *v2 = v8;
    return result;
  }

  v9 = *(v8 + 16);
  v10 = v9 - a2;
  if (__OFSUB__(v9, a2))
  {
    goto LABEL_21;
  }

  v11 = (v8 + 32 + 8 * a2);
  result = v8 + 32 + 8 * v5;
  if (v5 != a2 || v11 + 8 * v10 <= result)
  {
    result = memmove(result, v11, 8 * v10);
    v9 = *(v8 + 16);
  }

  v13 = __OFADD__(v9, v7);
  v14 = v9 + v7;
  if (!v13)
  {
    *(v8 + 16) = v14;
    goto LABEL_15;
  }

LABEL_22:
  __break(1u);
  return result;
}

char *sub_2485B6014(int64_t a1, char a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result || a1 > *(v5 + 3) >> 1)
  {
    if (*(v5 + 2) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 2);
    }

    result = sub_2485B5A0C(result, v7, a2 & 1, v5, &qword_27EE9C770, &qword_2485CB3E8);
    *v2 = result;
  }

  return result;
}

id sub_2485B608C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *a1;
  return sub_2485B4810(v3, a2);
}

uint64_t sub_2485B60C0()
{
  OUTLINED_FUNCTION_1_0();
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v4 = OUTLINED_FUNCTION_10_0(v3);

  return sub_2485B3524(v4);
}

uint64_t get_enum_tag_for_layout_string_13DataCollector5EventVSg(uint64_t a1)
{
  v1 = *(a1 + 32);
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

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2485B619C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 49))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 48);
      if (v3 <= 4)
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

uint64_t sub_2485B61DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_1()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_2485B62BC@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 112);
  v4 = *(v2 + 120);
  if (*(a1 + 25))
  {
    v6 = 0;
    v7 = 0;
    v8 = 1;
    LOBYTE(v9) = 1;
  }

  else
  {
    v6 = a1[2];
    v9 = *(a1 + 2);
    v7 = *a1;
    v8 = *(a1 + 24);
  }

  v10 = type metadata accessor for DataPlatformBatch();
  a2[3] = v10;
  a2[4] = &off_285ACDC38;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);

  sub_2485C8A40();
  v12 = boxed_opaque_existential_1 + v10[8];
  *v12 = 0;
  v12[8] = 1;
  *(boxed_opaque_existential_1 + v10[10]) = 0;
  v13 = (boxed_opaque_existential_1 + v10[5]);
  *v13 = v5;
  v13[1] = v4;
  v14 = boxed_opaque_existential_1 + v10[9];
  result = sub_2485C8C10();
  v16 = boxed_opaque_existential_1 + v10[6];
  *v16 = v7;
  v16[8] = v9 & 1;
  v17 = boxed_opaque_existential_1 + v10[7];
  *v17 = v6;
  v17[8] = v8 & 1;
  return result;
}

uint64_t sub_2485B63BC()
{
  OUTLINED_FUNCTION_1_0();
  v1[12] = v2;
  v1[13] = v0;
  v3 = sub_2485C8B50();
  v1[14] = v3;
  OUTLINED_FUNCTION_0_10(v3);
  v1[15] = v4;
  v6 = *(v5 + 64);
  v1[16] = OUTLINED_FUNCTION_13();
  v7 = sub_2485C8B10();
  v1[17] = v7;
  OUTLINED_FUNCTION_0_10(v7);
  v1[18] = v8;
  v10 = *(v9 + 64);
  v1[19] = OUTLINED_FUNCTION_13();
  v11 = sub_2485C8BD0();
  v1[20] = v11;
  OUTLINED_FUNCTION_0_10(v11);
  v1[21] = v12;
  v14 = *(v13 + 64) + 15;
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v15 = sub_2485C8C60();
  v1[24] = v15;
  OUTLINED_FUNCTION_0_10(v15);
  v1[25] = v16;
  v18 = *(v17 + 64) + 15;
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v19 = sub_2485C8D90();
  v1[32] = v19;
  OUTLINED_FUNCTION_0_10(v19);
  v1[33] = v20;
  v22 = *(v21 + 64);
  v1[34] = OUTLINED_FUNCTION_13();
  v23 = sub_2485C8C20();
  v1[35] = v23;
  OUTLINED_FUNCTION_0_10(v23);
  v1[36] = v24;
  v26 = *(v25 + 64);
  v1[37] = OUTLINED_FUNCTION_13();
  v27 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9C6C0, &unk_2485CB130) - 8) + 64) + 15;
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v28 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9C800, &qword_2485CB630) - 8) + 64);
  v1[43] = OUTLINED_FUNCTION_13();
  v29 = type metadata accessor for DataPlatformBatch();
  v1[44] = v29;
  v30 = *(*(v29 - 8) + 64);
  v1[45] = OUTLINED_FUNCTION_13();

  return MEMORY[0x2822009F8](sub_2485B66FC, v0, 0);
}

uint64_t sub_2485B66FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_22();
  v25 = v24[43];
  v26 = v24[44];
  sub_2485AC61C(v24[12], (v24 + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9C808, &qword_2485CB638);
  if (swift_dynamicCast())
  {
    v27 = v24[45];
    v28 = v24[42];
    v29 = v24[41];
    __swift_storeEnumTagSinglePayload(v24[43], 0, 1, v24[44]);
    v30 = OUTLINED_FUNCTION_11();
    sub_2485B9928(v30, v31);
    sub_2485C8A30();
    v24[46] = v32;
    sub_2485C6E38(0, v28);
    v33 = OUTLINED_FUNCTION_5_3();
    sub_2485B9BB4(v33, v34, v35, v36);
    v37 = sub_2485C8D00();
    v24[47] = v37;
    if (__swift_getEnumTagSinglePayload(v29, 1, v37) == 1)
    {
      sub_2485B9C68(v24[41], &qword_27EE9C6C0, &unk_2485CB130);
    }

    else
    {

      v62 = sub_2485C8CE0();
      v63 = sub_2485C8EC0();

      if (os_log_type_enabled(v62, v63))
      {
        v64 = OUTLINED_FUNCTION_12();
        a20 = OUTLINED_FUNCTION_23();
        *v64 = 136446210;
        v65 = OUTLINED_FUNCTION_19();
        *(v64 + 4) = sub_2485B936C(v65, v66, v67);
        _os_log_impl(&dword_2485A5000, v62, v63, "Starting upload for batchId: %{public}s", v64, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(a20);
        OUTLINED_FUNCTION_7_1();
        OUTLINED_FUNCTION_7_1();
      }

      v68 = v24[41];
      OUTLINED_FUNCTION_2_5(v37);
      (*(v69 + 8))();
    }

    v70 = v24[34];
    v72 = v24[32];
    v71 = v24[33];
    (*(v24[36] + 16))(v24[37], v24[45] + *(v24[44] + 36), v24[35]);
    sub_2485C8D80();
    sub_2485C8D70();
    v74 = v73;
    v75 = *(v71 + 8);
    v76 = OUTLINED_FUNCTION_5_3();
    v77(v76);
    if (v74 >> 60 != 15)
    {
      v78 = v24[37];
      sub_2485C8C00();
    }

    v79 = *__swift_project_boxed_opaque_existential_1((v24[13] + 128), *(v24[13] + 152));
    v80 = swift_task_alloc();
    v24[48] = v80;
    *v80 = v24;
    v80[1] = sub_2485B6B4C;
    v81 = v24[37];
    v82 = v24[30];
    OUTLINED_FUNCTION_9_1();

    return v87(v83, v84, v85, v86, v87, v88, v89, v90, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, sub_2485B8184, a20, a21, a22, a23, a24);
  }

  else
  {
    v38 = v24[43];
    v39 = v24[12];
    __swift_storeEnumTagSinglePayload(v38, 1, 1, v24[44]);
    sub_2485B9C68(v38, &qword_27EE9C800, &qword_2485CB630);
    v40 = *(v39 + 24);
    v41 = OUTLINED_FUNCTION_11();
    __swift_project_boxed_opaque_existential_1(v41, v42);
    DynamicType = swift_getDynamicType();
    sub_2485B2100();
    v91 = swift_allocError();
    *v44 = DynamicType;
    swift_willThrow();
    v45 = v24[45];
    v47 = v24[42];
    v46 = v24[43];
    v49 = v24[40];
    v48 = v24[41];
    v51 = v24[38];
    v50 = v24[39];
    v52 = v24[37];
    OUTLINED_FUNCTION_3_3();

    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_9_1();

    return v55(v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, v91, a20, a21, a22, a23, a24);
  }
}

uint64_t sub_2485B6B4C()
{
  OUTLINED_FUNCTION_1_0();
  v2 = *v1;
  OUTLINED_FUNCTION_4_3();
  *v3 = v2;
  v5 = *(v4 + 384);
  v6 = *v1;
  OUTLINED_FUNCTION_4_3();
  *v7 = v6;
  v2[49] = v0;

  if (v0)
  {
    v8 = v2[46];
    v9 = v2[13];

    v10 = sub_2485B78A8;
    v11 = v9;
  }

  else
  {
    v11 = v2[13];
    v10 = sub_2485B6C68;
  }

  return MEMORY[0x2822009F8](v10, v11, 0);
}

uint64_t sub_2485B6C68(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, os_log_t log, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_22();
  a31 = v33;
  a32 = v34;
  a30 = v32;
  v35 = *(v32 + 376);
  v36 = *(v32 + 336);
  v37 = *(v32 + 320);
  (*(*(v32 + 200) + 32))(*(v32 + 248), *(v32 + 240), *(v32 + 192));
  v38 = OUTLINED_FUNCTION_19();
  sub_2485B9BB4(v38, v39, v40, v41);
  if (OUTLINED_FUNCTION_6_2() == 1)
  {
    sub_2485B9C68(*(v32 + 320), &qword_27EE9C6C0, &unk_2485CB130);
  }

  else
  {
    (*(*(v32 + 200) + 16))(*(v32 + 232), *(v32 + 248), *(v32 + 192));
    v42 = sub_2485C8CE0();
    v43 = sub_2485C8EB0();
    v44 = os_log_type_enabled(v42, v43);
    v45 = *(v32 + 232);
    v46 = *(v32 + 192);
    v47 = *(v32 + 200);
    if (v44)
    {
      v48 = *(v32 + 184);
      v49 = *(v32 + 168);
      a18 = *(v32 + 160);
      v50 = OUTLINED_FUNCTION_12();
      *v50 = 134349056;
      sub_2485C8C40();
      v51 = sub_2485C8BC0();
      (*(v49 + 8))(v48, a18);
      v52 = *(v47 + 8);
      v53 = OUTLINED_FUNCTION_5_3();
      v54(v53);
      *(v50 + 4) = v51;
      _os_log_impl(&dword_2485A5000, v42, v43, "upload response status: %{public}ld", v50, 0xCu);
      OUTLINED_FUNCTION_7_1();
    }

    else
    {
      v55 = *(v47 + 8);
      v56 = OUTLINED_FUNCTION_5_3();
      v57(v56);
    }

    v58 = *(v32 + 376);
    v59 = *(v32 + 320);

    OUTLINED_FUNCTION_2_5(v58);
    (*(v60 + 8))(v59, v58);
  }

  v61 = *(v32 + 248);
  v62 = *(sub_2485C8C30() + 16);

  if (!v62)
  {
    v84 = *(v32 + 368);

LABEL_23:
    v108 = *(v32 + 248);
    v110 = *(v32 + 176);
    v109 = *(v32 + 184);
    v111 = *(v32 + 160);
    v112 = *(v32 + 168);
    sub_2485C8C40();
    (*(v112 + 104))(v110, *MEMORY[0x277D03FA8], v111);
    sub_2485B9CC4(&qword_27EE9C820, MEMORY[0x277D03FB0]);
    OUTLINED_FUNCTION_5_3();
    sub_2485C8DE0();
    OUTLINED_FUNCTION_5_3();
    sub_2485C8DE0();
    v113 = *(v112 + 8);
    v113(v110, v111);
    v113(v109, v111);
    if (*(v32 + 80) == *(v32 + 88))
    {
      v114 = *(v32 + 360);
      v115 = *(v32 + 336);
      v117 = *(v32 + 288);
      v116 = *(v32 + 296);
      v118 = *(v32 + 280);
      v119 = *(v32 + 248);
      v120 = *(v32 + 192);
      v121 = *(v32 + 200);
      v122 = sub_2485C8C30();
      (*(v121 + 8))(v119, v120);
      v123 = *(v117 + 8);
      v124 = OUTLINED_FUNCTION_5_3();
      v125(v124);
      sub_2485B9C68(v115, &qword_27EE9C6C0, &unk_2485CB130);
      sub_2485B998C(v114);
      v126 = *(v122 + 16);

      LODWORD(a18) = v126 == 0;
    }

    else
    {
      v127 = *(v32 + 376);
      v128 = *(v32 + 304);
      sub_2485B9BB4(*(v32 + 336), v128, &qword_27EE9C6C0, &unk_2485CB130);
      if (__swift_getEnumTagSinglePayload(v128, 1, v127) == 1)
      {
        v129 = *(v32 + 360);
        v130 = *(v32 + 336);
        v132 = *(v32 + 296);
        v131 = *(v32 + 304);
        v133 = *(v32 + 280);
        v134 = *(v32 + 288);
        (*(*(v32 + 200) + 8))(*(v32 + 248), *(v32 + 192));
        v135 = *(v134 + 8);
        v136 = OUTLINED_FUNCTION_5_3();
        v137(v136);
        sub_2485B9C68(v130, &qword_27EE9C6C0, &unk_2485CB130);
        sub_2485B998C(v129);
        sub_2485B9C68(v131, &qword_27EE9C6C0, &unk_2485CB130);
      }

      else
      {
        v138 = *(v32 + 304);
        v139 = *(v32 + 248);
        v140 = *(v32 + 208);
        v141 = *(v32 + 192);
        v142 = *(*(v32 + 200) + 16);
        v142(*(v32 + 216), v139, v141);
        v142(v140, v139, v141);
        v143 = sub_2485C8CE0();
        v189 = sub_2485C8ED0();
        loga = v143;
        v144 = os_log_type_enabled(v143, v189);
        v145 = *(v32 + 360);
        v146 = *(v32 + 336);
        v200 = *(v32 + 296);
        a18 = *(v32 + 288);
        v197 = *(v32 + 280);
        v192 = *(v32 + 248);
        v147 = *(v32 + 208);
        v148 = *(v32 + 216);
        v150 = *(v32 + 192);
        v149 = *(v32 + 200);
        if (v144)
        {
          v187 = *(v32 + 336);
          v151 = *(v32 + 184);
          v181 = *(v32 + 160);
          v185 = *(v32 + 360);
          v152 = swift_slowAlloc();
          v183 = OUTLINED_FUNCTION_23();
          a20 = v183;
          *v152 = 134218242;
          sub_2485C8C40();
          v153 = sub_2485C8BC0();
          v113(v151, v181);
          v154 = *(v149 + 8);
          v154(v148, v150);
          *(v152 + 4) = v153;
          *(v152 + 12) = 2080;
          v155 = sub_2485C8C50();
          v157 = v156;
          v154(v147, v150);
          v158 = sub_2485B936C(v155, v157, &a20);

          *(v152 + 14) = v158;
          _os_log_impl(&dword_2485A5000, loga, v189, "upload failed with status: %ld, message: %s", v152, 0x16u);
          __swift_destroy_boxed_opaque_existential_1(v183);
          OUTLINED_FUNCTION_7_1();
          OUTLINED_FUNCTION_7_1();

          v154(v192, v150);
          (*(a18 + 8))(v200, v197);
          sub_2485B9C68(v187, &qword_27EE9C6C0, &unk_2485CB130);
          v159 = v185;
        }

        else
        {
          v160 = *(v149 + 8);
          v160(*(v32 + 216), *(v32 + 192));

          v160(v147, v150);
          v160(v192, v150);
          (*(a18 + 8))(v200, v197);
          sub_2485B9C68(v146, &qword_27EE9C6C0, &unk_2485CB130);
          v159 = v145;
        }

        sub_2485B998C(v159);
        v161 = *(v32 + 304);
        OUTLINED_FUNCTION_2_5(*(v32 + 376));
        (*(v162 + 8))();
      }

      LODWORD(a18) = 0;
    }

    v163 = *(v32 + 360);
    v165 = *(v32 + 336);
    v164 = *(v32 + 344);
    v166 = *(v32 + 320);
    v167 = *(v32 + 328);
    v169 = *(v32 + 304);
    v168 = *(v32 + 312);
    v170 = *(v32 + 296);
    v171 = *(v32 + 272);
    v172 = *(v32 + 248);
    v182 = *(v32 + 240);
    v184 = *(v32 + 232);
    v186 = *(v32 + 224);
    v188 = *(v32 + 216);
    v190 = *(v32 + 208);
    v193 = *(v32 + 184);
    logb = *(v32 + 176);
    v198 = *(v32 + 152);
    v201 = *(v32 + 128);

    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_9_1();

    return v175(v173, v174, v175, v176, v177, v178, v179, v180, v182, v184, v186, v188, v190, v193, logb, v198, v201, a18, a19, a20, a21, a22, a23, a24);
  }

  v63 = *(v32 + 248);
  v64 = sub_2485C8C30();
  v65 = *(v64 + 16);
  if (!v65)
  {
    v85 = *(v32 + 368);

    v70 = MEMORY[0x277D84F90];
LABEL_17:
    v86 = *(v32 + 376);
    v87 = *(v32 + 336);
    v88 = *(v32 + 312);
    *(v32 + 72) = v70;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9C810, &qword_2485CB648);
    sub_2485B9A08();
    sub_2485C8D40();

    sub_2485B9BB4(v87, v88, &qword_27EE9C6C0, &unk_2485CB130);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v88, 1, v86);
    v90 = *(v32 + 312);
    if (EnumTagSinglePayload == 1)
    {

      sub_2485B9C68(v90, &qword_27EE9C6C0, &unk_2485CB130);
    }

    else
    {
      (*(*(v32 + 200) + 16))(*(v32 + 224), *(v32 + 248), *(v32 + 192));

      v91 = sub_2485C8CE0();
      v92 = sub_2485C8ED0();

      v93 = os_log_type_enabled(v91, v92);
      v94 = *(v32 + 224);
      v95 = *(v32 + 192);
      v96 = *(v32 + 200);
      if (v93)
      {
        v97 = swift_slowAlloc();
        a20 = swift_slowAlloc();
        *v97 = 136315394;
        v98 = OUTLINED_FUNCTION_20();
        v101 = sub_2485B936C(v98, v99, v100);

        *(v97 + 4) = v101;
        *(v97 + 12) = 2080;
        v102 = sub_2485C8C50();
        v104 = v103;
        (*(v96 + 8))(v94, v95);
        v105 = sub_2485B936C(v102, v104, &a20);

        *(v97 + 14) = v105;
        _os_log_impl(&dword_2485A5000, v91, v92, "upload failed:\n%s\nOverall message: %s", v97, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_7_1();
        OUTLINED_FUNCTION_7_1();
      }

      else
      {

        (*(v96 + 8))(v94, v95);
      }

      v106 = *(v32 + 312);
      OUTLINED_FUNCTION_2_5(*(v32 + 376));
      (*(v107 + 8))();
    }

    goto LABEL_23;
  }

  v66 = *(v32 + 144);
  v67 = *(v32 + 120);
  v202 = MEMORY[0x277D84F90];
  result = sub_2485B99E8(0, v65, 0);
  v69 = 0;
  v70 = v202;
  v196 = v64 + ((*(v66 + 80) + 32) & ~*(v66 + 80));
  v199 = v65;
  v191 = (v67 + 8);
  a18 = v64;
  while (v69 < *(v64 + 16))
  {
    v71 = *(v32 + 152);
    v73 = *(v32 + 128);
    v72 = *(v32 + 136);
    v74 = *(v32 + 112);
    (*(v66 + 16))(v71, v196 + *(v66 + 72) * v69, v72);
    a20 = 0;
    a21 = 0xE000000000000000;
    sub_2485C8F50();
    v75 = a21;
    *(v32 + 56) = a20;
    *(v32 + 64) = v75;
    MEMORY[0x24C1D2CF0](0x2320726F727245, 0xE700000000000000);
    *(v32 + 400) = sub_2485C8AF0();
    v76 = sub_2485C9020();
    MEMORY[0x24C1D2CF0](v76);

    MEMORY[0x24C1D2CF0](0x3A65646F63202D20, 0xE800000000000000);
    sub_2485C8AE0();
    sub_2485C8F90();
    (*v191)(v73, v74);
    MEMORY[0x24C1D2CF0](0x6567617373656D20, 0xE90000000000003ALL);
    v77 = sub_2485C8B00();
    MEMORY[0x24C1D2CF0](v77);

    v78 = *(v32 + 56);
    v79 = *(v32 + 64);
    result = (*(v66 + 8))(v71, v72);
    a19 = v70;
    v81 = *(v70 + 16);
    v80 = *(v70 + 24);
    if (v81 >= v80 >> 1)
    {
      result = sub_2485B99E8(v80 > 1, v81 + 1, 1);
    }

    ++v69;
    *(v70 + 16) = v81 + 1;
    v82 = v70 + 16 * v81;
    *(v82 + 32) = v78;
    *(v82 + 40) = v79;
    v64 = a18;
    if (v199 == v69)
    {
      v83 = *(v32 + 368);

      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2485B78A8()
{
  v1 = v0[45];
  v2 = v0[42];
  (*(v0[36] + 8))(v0[37], v0[35]);
  sub_2485B9C68(v2, &qword_27EE9C6C0, &unk_2485CB130);
  sub_2485B998C(v1);
  v13 = v0[49];
  v3 = v0[45];
  v5 = v0[42];
  v4 = v0[43];
  v7 = v0[40];
  v6 = v0[41];
  v9 = v0[38];
  v8 = v0[39];
  v10 = v0[37];
  OUTLINED_FUNCTION_3_3();

  OUTLINED_FUNCTION_15();

  return v11(0);
}

uint64_t sub_2485B7A14()
{
  v1 = *(v0 + 120);

  __swift_destroy_boxed_opaque_existential_1((v0 + 128));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_2485B7A44()
{
  sub_2485B7A14();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2485B7A94()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2485B7B2C;

  return sub_2485B63BC();
}

uint64_t sub_2485B7B2C()
{
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  v4 = *(*v1 + 16);
  v5 = *v1;
  OUTLINED_FUNCTION_4_3();
  *v6 = v5;

  OUTLINED_FUNCTION_15();
  if (v0)
  {
    v8 = 0;
  }

  else
  {
    v8 = v3 & 1;
  }

  return v7(v8);
}

uint64_t sub_2485B7C4C(__int128 *a1)
{
  v2 = v1;
  v4 = sub_2485C8B40();
  v5 = OUTLINED_FUNCTION_0(v4);
  v60 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v65 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2485C8BB0();
  v11 = OUTLINED_FUNCTION_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2485C8BA0();
  v19 = OUTLINED_FUNCTION_0(v18);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v28 = &v54 - v27;
  v64 = *(a1 + 4);
  v29 = a1[1];
  v62 = *a1;
  v63 = v29;
  if (!v64)
  {
    sub_2485B2100();
    swift_allocError();
    *v30 = 5;
    return swift_willThrow();
  }

  v58 = v26;
  v59 = v25;
  v57 = v4;

  if (sub_2485A7C10(&v62))
  {

    return swift_willThrow();
  }

  v56 = v2;
  sub_2485C8B90();
  v33 = *(&v62 + 1);
  v32 = v62;
  sub_2485A9304(v62, *(&v62 + 1));
  v55 = v32;
  sub_2485C8B80();
  sub_2485C8B60();
  (*(v13 + 104))(v17, *MEMORY[0x277D03FA0], v10);
  sub_2485C8B70();
  v34 = v65;
  sub_2485C8B30();
  (*(v58 + 16))(v24, v28, v59);
  sub_2485C8B20();
  v35 = 0;
  switch(v33 >> 62)
  {
    case 1uLL:
      if (__OFSUB__(HIDWORD(v55), v55))
      {
        goto LABEL_16;
      }

      v35 = HIDWORD(v55) - v55;
LABEL_12:
      v38 = type metadata accessor for DataPlatformBatch();
      v39 = *(v38 + 40);
      v40 = v56;
      v41 = *(v56 + v39);
      v42 = __OFADD__(v41, v35);
      v43 = v41 + v35;
      if (v42)
      {
        __break(1u);
LABEL_16:
        __break(1u);
LABEL_17:
        __break(1u);
        JUMPOUT(0x2485B8084);
      }

      v44 = v38;
      *(v56 + v39) = v43;
      v45 = v40 + *(v38 + 36);
      v46 = sub_2485C8BE0();
      v48 = v47;
      sub_2485BF4A4();
      v49 = *(*v48 + 16);
      sub_2485BF518(v49);
      v50 = *v48;
      *(v50 + 16) = v49 + 1;
      v51 = v60;
      v52 = v57;
      (*(v60 + 16))(v50 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v49, v34, v57);
      v46(v61, 0);
      (*(v51 + 8))(v34, v52);
      result = (*(v58 + 8))(v28, v59);
      v53 = v40 + *(v44 + 32);
      if (*(v53 + 8) == 1)
      {
        *v53 = v63;
        *(v53 + 8) = 0;
      }

      break;
    case 2uLL:
      v37 = *(v55 + 16);
      v36 = *(v55 + 24);
      v35 = v36 - v37;
      if (!__OFSUB__(v36, v37))
      {
        goto LABEL_12;
      }

      goto LABEL_17;
    case 3uLL:
      goto LABEL_12;
    default:
      v35 = BYTE6(v33);
      goto LABEL_12;
  }

  return result;
}

uint64_t sub_2485B8094()
{
  v1 = v0 + *(type metadata accessor for DataPlatformBatch() + 36);
  v2 = *(sub_2485C8BF0() + 16);

  return v2;
}

uint64_t sub_2485B80E0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2485C8A50();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_2485B8158(uint64_t a1)
{
  v2 = (v1 + *(a1 + 32));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_2485B8184(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = sub_2485C8C60();
  v3[7] = v4;
  v5 = *(v4 - 8);
  v3[8] = v5;
  v6 = *(v5 + 64) + 15;
  v3[9] = swift_task_alloc();
  v7 = *(*(sub_2485C8CA0() - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v8 = sub_2485C8C80();
  v3[11] = v8;
  v9 = *(v8 - 8);
  v3[12] = v9;
  v10 = *(v9 + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v11 = sub_2485C8C20();
  v3[15] = v11;
  v12 = *(v11 - 8);
  v3[16] = v12;
  v13 = *(v12 + 64) + 15;
  v3[17] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9C6C0, &unk_2485CB130) - 8) + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9C3B0, &qword_2485CA0A0) - 8) + 64) + 15;
  v3[21] = swift_task_alloc();
  v16 = sub_2485C8980();
  v3[22] = v16;
  v17 = *(v16 - 8);
  v3[23] = v17;
  v18 = *(v17 + 64) + 15;
  v3[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2485B841C, 0, 0);
}

uint64_t sub_2485B841C()
{
  v66 = v0;
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v3 = *(v0 + 48);
  v4 = OBJC_IVAR____TtC13DataCollector18AttestedRPCService_config;
  *(v0 + 200) = OBJC_IVAR____TtC13DataCollector18AttestedRPCService_config;
  v5 = v3 + v4;
  v6 = OUTLINED_FUNCTION_19();
  sub_2485B9BB4(v6, v7, v8, v9);
  if (OUTLINED_FUNCTION_6_2() == 1)
  {
    sub_2485B9C68(*(v0 + 168), &qword_27EE9C3B0, &qword_2485CA0A0);
    sub_2485B9C14();
    swift_allocError();
    *v10 = 0;
    swift_willThrow();
    OUTLINED_FUNCTION_21();
    v56 = *(v0 + 104);
    v55 = *(v0 + 112);
    v57 = *(v0 + 72);
    v58 = *(v0 + 80);

    OUTLINED_FUNCTION_3_0();

    return v59();
  }

  else
  {
    v11 = *(v0 + 160);
    (*(*(v0 + 184) + 32))(*(v0 + 192), *(v0 + 168), *(v0 + 176));
    v12 = type metadata accessor for RPCConfig();
    v13 = v12[9];
    *(v0 + 264) = v13;
    v64 = v5 + v13;
    sub_2485B9BB4(v5 + v13, v11, &qword_27EE9C6C0, &unk_2485CB130);
    v14 = sub_2485C8D00();
    *(v0 + 208) = v14;
    if (__swift_getEnumTagSinglePayload(v11, 1, v14) == 1)
    {
      sub_2485B9C68(*(v0 + 160), &qword_27EE9C6C0, &unk_2485CB130);
    }

    else
    {
      (*(*(v0 + 128) + 16))(*(v0 + 136), *(v0 + 40), *(v0 + 120));
      v15 = sub_2485C8CE0();
      v16 = sub_2485C8EC0();
      v17 = os_log_type_enabled(v15, v16);
      v18 = *(v0 + 136);
      if (v17)
      {
        v62 = v16;
        v20 = *(v0 + 112);
        v19 = *(v0 + 120);
        v21 = *(v0 + 96);
        v22 = OUTLINED_FUNCTION_12();
        v60 = OUTLINED_FUNCTION_23();
        v65 = v60;
        v61 = v22;
        *v22 = 136315138;
        sub_2485C8C70();
        OUTLINED_FUNCTION_1_5();
        sub_2485B9CC4(v23, v24);
        OUTLINED_FUNCTION_20();
        v25 = (v21 + 8);
        v63 = v15;
        v28 = sub_2485C8CB0();
        v30 = v29;
        v32 = *(v0 + 128);
        v31 = *(v0 + 136);
        v33 = *(v0 + 120);
        (*v25)(*(v0 + 112), *(v0 + 88));
        (*(v32 + 8))(v31, v33);
        v34 = sub_2485B936C(v28, v30, &v65);

        *(v61 + 1) = v34;
        OUTLINED_FUNCTION_14(&dword_2485A5000, v35, v62, "gRPC request - %s");
        __swift_destroy_boxed_opaque_existential_1(v60);
        OUTLINED_FUNCTION_7_1();
        OUTLINED_FUNCTION_7_1();
      }

      else
      {
        v26 = *(v0 + 120);
        v27 = *(v0 + 128);

        (*(v27 + 8))(v18, v26);
      }

      v36 = *(v0 + 160);
      OUTLINED_FUNCTION_2_5(v14);
      (*(v37 + 8))();
    }

    v38 = *(v0 + 120);
    v39 = *(v0 + 40);
    v40 = (v5 + v12[5]);
    v41 = *v40;
    v42 = v40[1];
    OUTLINED_FUNCTION_1_5();
    sub_2485B9CC4(v43, v44);
    v45 = sub_2485C8CC0();
    *(v0 + 216) = v45;
    *(v0 + 224) = v46;
    v47 = v45;
    v48 = v46;
    v49 = *(v5 + v12[6]);
    v50 = *(v5 + v12[7]);
    v51 = swift_task_alloc();
    *(v0 + 232) = v51;
    *v51 = v0;
    v51[1] = sub_2485B8A60;
    v52 = *(v0 + 192);
    v53 = *(v0 + 48);
    v68 = v64;

    return sub_2485BAEF8(v52, v41, v42, v47, v48, v49, 1);
  }
}

uint64_t sub_2485B8A60()
{
  OUTLINED_FUNCTION_1_0();
  v2 = *v1;
  OUTLINED_FUNCTION_4_3();
  *v3 = v2;
  v5 = *(v4 + 232);
  *v3 = *v1;
  v2[30] = v6;
  v2[31] = v7;
  v2[32] = v0;

  if (v0)
  {
    v8 = sub_2485B912C;
  }

  else
  {
    sub_2485ABB18(v2[27], v2[28]);
    v8 = sub_2485B8B78;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_2485B8B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t *a13, void *a14, __int128 a15, __int128 a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_22();
  a29 = v31;
  a30 = v32;
  a28 = v30;
  v33 = *(v30 + 240);
  *(v30 + 16) = v33;
  v34 = *(v30 + 248);
  v35 = *(v30 + 256);
  v36 = *(v30 + 80);
  v37 = *(v30 + 56);
  v38 = *(v30 + 32);
  *(v30 + 24) = v34;
  a17 = 0;
  a15 = 0u;
  a16 = 0u;
  sub_2485A9304(v33, v34);
  sub_2485C8C90();
  sub_2485B9CC4(&qword_27EE9C850, MEMORY[0x277D03FD8]);
  sub_2485C8CD0();
  v39 = v35;
  if (v35)
  {
    sub_2485ABB18(*(v30 + 240), *(v30 + 248));
    OUTLINED_FUNCTION_10_1();
    sub_2485B9BB4(v41 + v40, v35, &qword_27EE9C6C0, &unk_2485CB130);
    if (OUTLINED_FUNCTION_6_2() == 1)
    {
      sub_2485B9C68(*(v30 + 144), &qword_27EE9C6C0, &unk_2485CB130);
    }

    else
    {
      v48 = v35;
      v49 = sub_2485C8CE0();
      v50 = sub_2485C8ED0();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = OUTLINED_FUNCTION_12();
        v52 = swift_slowAlloc();
        *v51 = 138412290;
        v53 = v39;
        v54 = _swift_stdlib_bridgeErrorToNSError();
        *(v51 + 4) = v54;
        *v52 = v54;
        OUTLINED_FUNCTION_14(&dword_2485A5000, v55, v50, "gRPC error - %@");
        sub_2485B9C68(v52, &qword_27EE9C848, &qword_2485CB668);
        OUTLINED_FUNCTION_7_1();
        OUTLINED_FUNCTION_7_1();
      }

      v56 = *(v30 + 208);
      v57 = *(v30 + 144);

      OUTLINED_FUNCTION_2_5(v56);
      v59 = *(v58 + 8);
      v60 = OUTLINED_FUNCTION_20();
      v61(v60);
    }

    v62 = *(v30 + 184);
    v63 = *(v30 + 192);
    v64 = *(v30 + 176);
    swift_willThrow();
    (*(v62 + 8))(v63, v64);
    v65 = *(v30 + 192);
    v67 = *(v30 + 160);
    v66 = *(v30 + 168);
    v69 = *(v30 + 144);
    v68 = *(v30 + 152);
    v70 = *(v30 + 136);
    a14 = v39;
    v72 = *(v30 + 104);
    v71 = *(v30 + 112);
    v73 = *(v30 + 72);
    v74 = *(v30 + 80);

    OUTLINED_FUNCTION_3_0();
  }

  else
  {
    v42 = *(v30 + 208);
    sub_2485B9BB4(*(v30 + 48) + *(v30 + 200) + *(v30 + 264), *(v30 + 152), &qword_27EE9C6C0, &unk_2485CB130);
    if (OUTLINED_FUNCTION_6_2() == 1)
    {
      v43 = *(v30 + 240);
      v44 = *(v30 + 248);
      v45 = *(v30 + 152);
      (*(*(v30 + 184) + 8))(*(v30 + 192), *(v30 + 176));
      v46 = OUTLINED_FUNCTION_11();
      sub_2485ABB18(v46, v47);
      sub_2485B9C68(v45, &qword_27EE9C6C0, &unk_2485CB130);
    }

    else
    {
      v75 = *(v30 + 152);
      (*(*(v30 + 64) + 16))(*(v30 + 72), *(v30 + 32), *(v30 + 56));
      v76 = sub_2485C8CE0();
      v77 = sub_2485C8EC0();
      if (os_log_type_enabled(v76, v77))
      {
        LODWORD(a14) = v77;
        v78 = *(v30 + 96);
        v79 = *(v30 + 104);
        v80 = *(v30 + 72);
        v81 = *(v30 + 56);
        v82 = OUTLINED_FUNCTION_12();
        a13 = OUTLINED_FUNCTION_23();
        *&a15 = a13;
        *v82 = 136315138;
        sub_2485C8C70();
        v83 = (v78 + 8);
        v94 = sub_2485C8CB0();
        v96 = v95;
        a9 = *(v30 + 240);
        a10 = *(v30 + 248);
        v97 = *(v30 + 184);
        a11 = *(v30 + 176);
        a12 = *(v30 + 192);
        v99 = *(v30 + 64);
        v98 = *(v30 + 72);
        v100 = *(v30 + 56);
        (*v83)(*(v30 + 104), *(v30 + 88));
        v101 = *(v99 + 8);
        v102 = OUTLINED_FUNCTION_19();
        v103(v102);
        v104 = sub_2485B936C(v94, v96, &a15);

        *(v82 + 4) = v104;
        _os_log_impl(&dword_2485A5000, v76, a14, "gRPC response - %s", v82, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(a13);
        OUTLINED_FUNCTION_7_1();
        OUTLINED_FUNCTION_7_1();

        sub_2485ABB18(a9, a10);
        (*(v97 + 8))(a12, a11);
      }

      else
      {
        v84 = *(v30 + 240);
        v85 = *(v30 + 248);
        v87 = *(v30 + 184);
        v86 = *(v30 + 192);
        v88 = *(v30 + 176);
        v90 = *(v30 + 64);
        v89 = *(v30 + 72);
        v91 = *(v30 + 56);

        v92 = OUTLINED_FUNCTION_11();
        sub_2485ABB18(v92, v93);
        (*(v90 + 8))(v89, v91);
        (*(v87 + 8))(v86, v88);
      }

      v105 = *(v30 + 152);
      OUTLINED_FUNCTION_2_5(*(v30 + 208));
      (*(v106 + 8))();
    }

    OUTLINED_FUNCTION_21();
    v108 = *(v30 + 104);
    v107 = *(v30 + 112);
    v110 = *(v30 + 72);
    v109 = *(v30 + 80);

    OUTLINED_FUNCTION_3_0();
  }

  OUTLINED_FUNCTION_9_1();

  return v112(v111, v112, v113, v114, v115, v116, v117, v118, a9, a10, a11, a12, a13, a14, a15, *(&a15 + 1), a16, *(&a16 + 1), a17, a18, a19, a20, a21, a22);
}

uint64_t sub_2485B912C()
{
  sub_2485ABB18(v1[27], v1[28]);
  v2 = v1[32];
  OUTLINED_FUNCTION_10_1();
  sub_2485B9BB4(v4 + v3, v0, &qword_27EE9C6C0, &unk_2485CB130);
  if (OUTLINED_FUNCTION_6_2() == 1)
  {
    sub_2485B9C68(v1[18], &qword_27EE9C6C0, &unk_2485CB130);
  }

  else
  {
    v5 = v2;
    v6 = sub_2485C8CE0();
    v7 = sub_2485C8ED0();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = OUTLINED_FUNCTION_12();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = v2;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v11;
      *v9 = v11;
      OUTLINED_FUNCTION_14(&dword_2485A5000, v12, v7, "gRPC error - %@");
      sub_2485B9C68(v9, &qword_27EE9C848, &qword_2485CB668);
      OUTLINED_FUNCTION_7_1();
      OUTLINED_FUNCTION_7_1();
    }

    v13 = v1[26];
    v14 = v1[18];

    OUTLINED_FUNCTION_2_5(v13);
    v16 = *(v15 + 8);
    v17 = OUTLINED_FUNCTION_20();
    v18(v17);
  }

  v19 = v1[23];
  v20 = v1[24];
  v21 = v1[22];
  swift_willThrow();
  (*(v19 + 8))(v20, v21);
  v22 = v1[24];
  v24 = v1[20];
  v23 = v1[21];
  v26 = v1[18];
  v25 = v1[19];
  v27 = v1[17];
  v29 = v1[13];
  v28 = v1[14];
  v30 = v1[9];
  v31 = v1[10];

  OUTLINED_FUNCTION_3_0();

  return v32();
}

uint64_t sub_2485B936C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2485B9430(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_2485AA9DC(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_2485B9430(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2485B9530(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_2485C8F80();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_2485B9530(uint64_t a1, unint64_t a2)
{
  v4 = sub_2485B957C(a1, a2);
  sub_2485B9694(&unk_285ACCB68);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2485B957C(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_2485C8DC0())
  {
    result = sub_2485B9778(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_2485C8F30();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_2485C8F80();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2485B9694(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_2485B97E8(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2485B9778(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9C828, &qword_2485CB650);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_2485B97E8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9C828, &qword_2485CB650);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t type metadata accessor for DataPlatformBatch()
{
  result = qword_27EE9C858;
  if (!qword_27EE9C858)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2485B9928(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataPlatformBatch();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2485B998C(uint64_t a1)
{
  v2 = type metadata accessor for DataPlatformBatch();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2485B99E8(uint64_t a1, int64_t a2, char a3)
{
  result = sub_2485B9AB4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_2485B9A08()
{
  result = qword_27EE9C818;
  if (!qword_27EE9C818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE9C810, &qword_2485CB648);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE9C818);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2485B9AB4(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9C830, &unk_2485CB658);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_2485B5D88((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}