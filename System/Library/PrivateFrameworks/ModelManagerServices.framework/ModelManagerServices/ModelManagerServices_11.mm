uint64_t sub_197A342F8(uint64_t result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_197A3435C(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_197A3447C()
{
  OUTLINED_FUNCTION_18();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_197960FB0;
  v5 = OUTLINED_FUNCTION_22();

  return v6(v5);
}

uint64_t sub_197A34520()
{
  OUTLINED_FUNCTION_18();
  v2 = v1;
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_8_0(v5);
  *v6 = v7;
  v6[1] = sub_197960FB0;

  return sub_197A2FDAC(v2, v4);
}

uint64_t sub_197A345CC()
{
  OUTLINED_FUNCTION_18();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_8_0(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_8_1(v5);

  return sub_197A32AA4(v7, v1, v2, v3);
}

unint64_t sub_197A3466C(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t dynamic_cast_existential_0_class_conditional(uint64_t a1)
{
  if (swift_isClassType())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

BOOL sub_197A346E0(unint64_t a1, unsigned int a2, unint64_t a3, unsigned int a4)
{
  v4 = HIDWORD(a1) < HIDWORD(a3);
  if (HIDWORD(a1) == HIDWORD(a3))
  {
    v4 = a2 < a4;
  }

  if (a1 != a3)
  {
    v4 = a1 < a3;
  }

  return !v4;
}

double RemoteInterfaceInformation.version.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  result = *v1;
  *a1 = *v1;
  *(a1 + 8) = v2;
  return result;
}

uint64_t RemoteInterfaceInformation.uuid.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_197A878A8();
  return v1;
}

double RemoteInterfaceInformation.init(source:uuid:)@<D0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  if (qword_1EAF485D8 != -1)
  {
    swift_once();
  }

  v8 = dword_1EAF485E8;
  result = *&qword_1EAF485E0;
  *a4 = qword_1EAF485E0;
  *(a4 + 8) = v8;
  *(a4 + 12) = v7;
  *(a4 + 16) = a2;
  *(a4 + 24) = a3;
  return result;
}

double RemoteInterfaceInformation.init(version:source:uuid:)@<D0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *(a1 + 8);
  v6 = *a2;
  result = *a1;
  *a5 = *a1;
  *(a5 + 8) = v5;
  *(a5 + 12) = v6;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

void sub_197A34840()
{
  qword_1EAF4A358 = 0;
  dword_1EAF4A360 = 0;
  byte_1EAF4A364 = 3;
  qword_1EAF4A368 = 0;
  unk_1EAF4A370 = 0xE000000000000000;
}

uint64_t static RemoteInterfaceInformation.unknownInterface.getter()
{
  if (qword_1EAF48940 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_1_14(&qword_1EAF4A358);

  return sub_197A878A8();
}

double sub_197A348D0()
{
  if (qword_1EAF485D8 != -1)
  {
    swift_once();
  }

  result = *&qword_1EAF485E0;
  qword_1EAF4A378 = qword_1EAF485E0;
  dword_1EAF4A380 = dword_1EAF485E8;
  byte_1EAF4A384 = 3;
  qword_1EAF4A388 = 0;
  unk_1EAF4A390 = 0xE000000000000000;
  return result;
}

uint64_t static RemoteInterfaceInformation.currentInterface.getter()
{
  if (qword_1EAF48948 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_1_14(&qword_1EAF4A378);

  return sub_197A878A8();
}

ModelManagerServices::RemoteInterfaceInformation::RemoteSource_optional __swiftcall RemoteInterfaceInformation.RemoteSource.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_197A87EF8();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t RemoteInterfaceInformation.RemoteSource.rawValue.getter()
{
  result = 7170419;
  switch(*v0)
  {
    case 1:
      result = 28022;
      break;
    case 2:
      result = 0x6C61636973796870;
      break;
    case 3:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_197A34AAC@<X0>(uint64_t *a1@<X8>)
{
  result = RemoteInterfaceInformation.RemoteSource.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t static RemoteInterfaceInformation.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4) || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  if ((sub_19799E6EC(*(a1 + 12), *(a2 + 12)) & 1) == 0)
  {
    return 0;
  }

  if (v4 == v6 && v5 == v7)
  {
    return 1;
  }

  return sub_197A88218();
}

uint64_t sub_197A34C2C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (sub_197A88218() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
    if (v6 || (sub_197A88218() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 1684632949 && a2 == 0xE400000000000000)
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

uint64_t sub_197A34D38(char a1)
{
  if (!a1)
  {
    return 0x6E6F6973726576;
  }

  if (a1 == 1)
  {
    return 0x656372756F73;
  }

  return 1684632949;
}

uint64_t sub_197A34D8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_197A34C2C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_197A34DB4(uint64_t a1)
{
  v2 = sub_197A34FDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A34DF0(uint64_t a1)
{
  v2 = sub_197A34FDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RemoteInterfaceInformation.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A3A8, &qword_197A97A20);
  v6 = OUTLINED_FUNCTION_2(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = v17 - v11;
  v13 = *(v3 + 2);
  v20 = *(v3 + 12);
  v14 = v3[2];
  v17[0] = v3[3];
  v17[1] = v14;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_197A34FDC();
  sub_197A883D8();
  v18 = *v3;
  v19 = v13;
  v21 = 0;
  sub_1979552D0();
  OUTLINED_FUNCTION_3_12();
  if (!v2)
  {
    LOBYTE(v18) = v20;
    v21 = 1;
    sub_197A35030();
    OUTLINED_FUNCTION_3_12();
    LOBYTE(v18) = 2;
    sub_197A880B8();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_197A34FDC()
{
  result = qword_1EAF4A3B0;
  if (!qword_1EAF4A3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4A3B0);
  }

  return result;
}

unint64_t sub_197A35030()
{
  result = qword_1EAF4A3B8;
  if (!qword_1EAF4A3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4A3B8);
  }

  return result;
}

uint64_t RemoteInterfaceInformation.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 2);
  v5 = *(v0 + 3);
  v6 = *(v0 + 12);
  sub_197A88338();
  sub_197A88338();
  sub_197A88338();
  sub_19799EA84();

  return sub_197A879B8();
}

uint64_t RemoteInterfaceInformation.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 2);
  v5 = *(v0 + 3);
  v6 = *(v0 + 12);
  sub_197A882F8();
  sub_197A88338();
  sub_197A88338();
  sub_197A88338();
  sub_19799EA84();
  sub_197A879B8();
  return sub_197A88358();
}

uint64_t RemoteInterfaceInformation.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A3C0, &qword_197A97A28);
  v6 = OUTLINED_FUNCTION_2(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v20 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_197A34FDC();
  sub_197A883A8();
  if (!v2)
  {
    v22 = 0;
    sub_19795F5C4();
    OUTLINED_FUNCTION_2_13();
    v14 = v23;
    v15 = v24;
    v22 = 1;
    sub_197A35468();
    OUTLINED_FUNCTION_2_13();
    v21 = v23;
    LOBYTE(v23) = 2;
    v17 = sub_197A87FA8();
    v19 = v18;
    (*(v8 + 8))(v12, v5);
    *a2 = v14;
    *(a2 + 8) = v15;
    *(a2 + 12) = v21;
    *(a2 + 16) = v17;
    *(a2 + 24) = v19;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_197A353CC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 2);
  v5 = *(v0 + 3);
  v6 = *(v0 + 12);
  sub_197A882F8();
  sub_197A88338();
  sub_197A88338();
  sub_197A88338();
  sub_19799EA84();
  sub_197A879B8();
  return sub_197A88358();
}

unint64_t sub_197A35468()
{
  result = qword_1EAF4A3C8;
  if (!qword_1EAF4A3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4A3C8);
  }

  return result;
}

double sub_197A354F4@<D0>(void *a1@<X0>, int *a2@<X1>, double *a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v7 = *a2;
  result = *a3;
  *a4 = *a3;
  *(a4 + 8) = v7;
  return result;
}

Swift::Bool __swiftcall RemoteInterfaceInformation.supportsTrueStreaming()()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  if (qword_1EAF48950 != -1)
  {
    swift_once();
  }

  v4 = v3 < dword_1EAF4A3A0;
  if (v2 != HIDWORD(qword_1EAF4A398))
  {
    v4 = v2 < HIDWORD(qword_1EAF4A398);
  }

  if (v1 != qword_1EAF4A398)
  {
    v4 = v1 < qword_1EAF4A398;
  }

  return !v4;
}

unint64_t sub_197A355E4()
{
  result = qword_1EAF4A3D0;
  if (!qword_1EAF4A3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4A3D0);
  }

  return result;
}

unint64_t sub_197A3563C()
{
  result = qword_1EAF4A3D8;
  if (!qword_1EAF4A3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4A3D8);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_197A3569C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_197A356DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RemoteInterfaceInformation.RemoteSource(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for RemoteInterfaceInformation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_197A358E8()
{
  result = qword_1EAF4A3E0;
  if (!qword_1EAF4A3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4A3E0);
  }

  return result;
}

unint64_t sub_197A35940()
{
  result = qword_1EAF4A3E8;
  if (!qword_1EAF4A3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4A3E8);
  }

  return result;
}

unint64_t sub_197A35998()
{
  result = qword_1EAF4A3F0;
  if (!qword_1EAF4A3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4A3F0);
  }

  return result;
}

unint64_t sub_197A359EC()
{
  result = qword_1EAF4A3F8;
  if (!qword_1EAF4A3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4A3F8);
  }

  return result;
}

uint64_t WorkQueue.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = *sub_197A87398();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AA0, &qword_197A97D80);
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  *(v3 + 16) = v2;
  *a1 = v3;
}

uint64_t sub_197A35B34()
{
  v1 = *(v0 + 144);
  v2 = *(*(v0 + 152) + 32);
  v2(*(v0 + 168), *(v0 + 176), *(v0 + 128));
  v3 = sub_197A88208();
  v4 = *(v0 + 168);
  v5 = *(v0 + 128);
  if (v3)
  {
    v6 = v3;
    (*(*(v0 + 152) + 8))(*(v0 + 168), *(v0 + 128));
  }

  else
  {
    v7 = *(v0 + 144);
    v8 = *(v0 + 128);
    v6 = swift_allocError();
    v2(v9, v4, v5);
  }

  v10 = *(v0 + 160);
  v11 = *(v0 + 128);
  *(v0 + 64) = v6;
  MEMORY[0x19A8EBBD0](v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  if (swift_dynamicCast())
  {
    v12 = *(v0 + 224);
    v14 = *(v0 + 200);
    v13 = *(v0 + 208);
    v15 = *(v0 + 184);
    v20 = *(v0 + 192);
    v16 = *(v0 + 160);
    v17 = *(v0 + 128);

    v2(v13, v16, v17);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v13, 0, 1, v15);
    swift_beginAccess();
    (*(v14 + 40))(v12, v13, v20);

    OUTLINED_FUNCTION_8_10();

    OUTLINED_FUNCTION_13();

    return v18();
  }

  else
  {

    return sub_197A87ED8();
  }
}

uint64_t sub_197A35DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_9();
  v17 = v16[2];
  os_unfair_lock_lock((v17 + 24));
  v26 = *(v17 + 16);
  v27 = *(v26 + 24);
  if (v27)
  {
    v28 = v27 - 1;
    if (__OFSUB__(v27, 1))
    {
      __break(1u);
    }

    else if ((v28 & 0x8000000000000000) == 0)
    {
      if (v28 < v27)
      {
        OUTLINED_FUNCTION_5_10(v26);
        goto LABEL_7;
      }

LABEL_16:
      __break(1u);
      return MEMORY[0x1EEE6DA40](v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12, a13, a14, a15, a16);
    }

    __break(1u);
    goto LABEL_16;
  }

  v17 = 0;
LABEL_7:
  v16[3] = v17;
  os_unfair_lock_unlock((v16[2] + 24));
  if (v17)
  {
    v29 = *(MEMORY[0x1E69E86C0] + 4);
    v30 = swift_task_alloc();
    v16[4] = v30;
    *v30 = v16;
    OUTLINED_FUNCTION_3_13(v30);
    OUTLINED_FUNCTION_38_9();

    return MEMORY[0x1EEE6DA40](v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  OUTLINED_FUNCTION_13();

  return v31();
}

uint64_t sub_197A35ED4()
{
  OUTLINED_FUNCTION_9();
  v1 = *(*v0 + 32);
  v2 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;

  return MEMORY[0x1EEE6DFA0](sub_197A35FC4, 0, 0);
}

uint64_t sub_197A35FC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_9();
  v17 = v16[3];

  v18 = v16[2];
  os_unfair_lock_lock((v18 + 24));
  v27 = *(v18 + 16);
  v28 = *(v27 + 24);
  if (v28)
  {
    v29 = v28 - 1;
    if (__OFSUB__(v28, 1))
    {
      __break(1u);
    }

    else if ((v29 & 0x8000000000000000) == 0)
    {
      if (v29 < v28)
      {
        OUTLINED_FUNCTION_5_10(v27);
        goto LABEL_7;
      }

LABEL_16:
      __break(1u);
      return MEMORY[0x1EEE6DA40](v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14, a15, a16);
    }

    __break(1u);
    goto LABEL_16;
  }

  v18 = 0;
LABEL_7:
  v16[3] = v18;
  os_unfair_lock_unlock((v16[2] + 24));
  if (v18)
  {
    v30 = *(MEMORY[0x1E69E86C0] + 4);
    v31 = swift_task_alloc();
    v16[4] = v31;
    *v31 = v16;
    OUTLINED_FUNCTION_3_13();
    OUTLINED_FUNCTION_38_9();

    return MEMORY[0x1EEE6DA40](v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  OUTLINED_FUNCTION_13();

  return v32();
}

uint64_t sub_197A360CC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t ModelServiceClient.acquireAssertion(assertion:)()
{
  OUTLINED_FUNCTION_9();
  v1[3] = v2;
  v1[4] = v0;
  v3 = type metadata accessor for ModelManagerError();
  v1[5] = v3;
  OUTLINED_FUNCTION_28(v3);
  v5 = *(v4 + 64);
  v1[6] = OUTLINED_FUNCTION_90_4();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  OUTLINED_FUNCTION_49_1();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_197A361B8()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_6_11(*(v1 + 32));
  v2 = *(v0 + 64);
  OUTLINED_FUNCTION_26();
  v10 = v3 + *v3;
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  *(v1 + 72) = v6;
  *v6 = v1;
  v6[1] = sub_197A362BC;
  v7 = OUTLINED_FUNCTION_5(*(v1 + 24));

  return v8(v7);
}

uint64_t sub_197A362BC()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  v3[10] = v0;

  if (v0)
  {
    v9 = v3[4];

    return MEMORY[0x1EEE6DFA0](sub_197A363F4, v9, 0);
  }

  else
  {
    v11 = v3[7];
    v10 = v3[8];
    v12 = v3[6];

    OUTLINED_FUNCTION_13();

    return v13();
  }
}

uint64_t sub_197A363F4()
{
  OUTLINED_FUNCTION_111_0();
  OUTLINED_FUNCTION_33();
  *(v0 + 16) = *(v0 + 80);
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  MEMORY[0x19A8EBBD0]();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  OUTLINED_FUNCTION_22();
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 56);
    v4 = *(v0 + 64);
    v6 = *(v0 + 40);
    v5 = *(v0 + 48);

    sub_19794B2DC();
    OUTLINED_FUNCTION_100_0();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_2_14();
    sub_19794A664(v7, 255, v8);
    LOBYTE(v4) = sub_197A87918();
    OUTLINED_FUNCTION_57_7();
    sub_197962AC8(v5, v9);
    if (v4)
    {
      if (qword_1ED880218 != -1)
      {
        OUTLINED_FUNCTION_0_21();
      }

      v10 = sub_197A87608();
      OUTLINED_FUNCTION_66_5(v10, qword_1ED880220);
      v11 = sub_197A875E8();
      v12 = sub_197A87D68();
      if (OUTLINED_FUNCTION_65(v12))
      {
        v13 = OUTLINED_FUNCTION_204();
        OUTLINED_FUNCTION_137(v13);
        OUTLINED_FUNCTION_31_8(&dword_197941000, v14, v15, "Assertion denied, process not eligible to hold assertion");
        OUTLINED_FUNCTION_44();
      }
    }

    v16 = *(v0 + 56);
    v17 = *(v0 + 40);
    OUTLINED_FUNCTION_2_14();
    sub_19794A664(v18, 255, v19);
    OUTLINED_FUNCTION_133_0();
    OUTLINED_FUNCTION_88();
    sub_197A41564();
    swift_willThrow();
    OUTLINED_FUNCTION_57_7();
    sub_197962AC8(v16, v20);
  }

  else
  {

    swift_willThrow();
    v21 = *(v0 + 80);
  }

  v23 = *(v0 + 56);
  v22 = *(v0 + 64);
  v24 = *(v0 + 48);

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_112();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32);
}

uint64_t ModelServiceClient.releaseAssertion(id:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_4_10(a1, v1);
}

uint64_t sub_197A36650()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_6_11(*(v1 + 24));
  v2 = *(v0 + 72);
  OUTLINED_FUNCTION_26();
  v10 = v3 + *v3;
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  *(v1 + 32) = v6;
  *v6 = v1;
  v6[1] = sub_19796D708;
  v7 = OUTLINED_FUNCTION_5(*(v1 + 16));

  return v8(v7);
}

uint64_t sub_197A3676C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_6_11(*(v2 + 16));
  v3 = *(v1 + 80);
  OUTLINED_FUNCTION_26();
  v9 = (v4 + *v4);
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  *(v2 + 24) = v7;
  *v7 = v2;
  OUTLINED_FUNCTION_43(v7);

  return v9(v0, v1);
}

uint64_t sub_197A36874()
{
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_21();
  v5 = *(v4 + 24);
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;

  v9 = *(v6 + 8);
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t ModelServiceClient.restoreAssertions(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_4_10(a1, v1);
}

uint64_t sub_197A3697C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_6_11(*(v1 + 24));
  v2 = *(v0 + 88);
  OUTLINED_FUNCTION_26();
  v10 = v3 + *v3;
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  *(v1 + 32) = v6;
  *v6 = v1;
  v6[1] = sub_197976F2C;
  v7 = OUTLINED_FUNCTION_5(*(v1 + 16));

  return v8(v7);
}

uint64_t ModelServiceClient.dumpState()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_4_10(a1, v1);
}

uint64_t sub_197A36A98()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_6_11(*(v1 + 24));
  v2 = *(v0 + 152);
  OUTLINED_FUNCTION_26();
  v10 = (v3 + *v3);
  v5 = *(v4 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v1 + 32) = v6;
  *v6 = v7;
  v6[1] = sub_197976F2C;
  v8 = *(v1 + 16);
  OUTLINED_FUNCTION_53_10();

  return v10();
}

uint64_t ModelServiceClient.cancelRequest(id:session:)()
{
  OUTLINED_FUNCTION_9();
  v12 = *MEMORY[0x1E69E9840];
  v1[14] = v2;
  v1[15] = v0;
  v1[13] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
  OUTLINED_FUNCTION_28(v4);
  v6 = *(v5 + 64);
  v1[16] = OUTLINED_FUNCTION_78_0();
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_49_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_197A36C5C()
{
  OUTLINED_FUNCTION_80();
  v17 = *MEMORY[0x1E69E9840];
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  type metadata accessor for _OSActivity();
  v0[17] = swift_initStackObject();
  v0[18] = sub_1979489D4("Client cancelling request", 25, 2);
  v4 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v2[17]);
  v5 = OBJC_IVAR____TtC20ModelManagerServices7Session_uuid;
  v6 = sub_197A87298();
  OUTLINED_FUNCTION_3_14(v6);
  (*(v7 + 16))(v1, v3 + v5);
  v8 = *(v4 + 24);
  OUTLINED_FUNCTION_23();
  v16 = (v9 + *v9);
  v11 = *(v10 + 4);
  v12 = swift_task_alloc();
  v0[19] = v12;
  *v12 = v0;
  v12[1] = sub_197A36E28;
  v13 = v0[16];
  v14 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_32_1(v0[13]);
  OUTLINED_FUNCTION_118_4();

  return v16();
}

uint64_t sub_197A36E28()
{
  OUTLINED_FUNCTION_262();
  OUTLINED_FUNCTION_33();
  v15 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v2 + 152);
  v6 = *(v2 + 128);
  *v4 = *v1;
  *(v3 + 160) = v0;

  sub_197947A40(v6, &qword_1EAF49130, &qword_197A969C0);
  OUTLINED_FUNCTION_46_0();
  v8 = *(v7 + 120);
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_261();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_197A36F9C()
{
  OUTLINED_FUNCTION_18();
  v6 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 144);
  v2 = *(v0 + 128);
  OUTLINED_FUNCTION_16();
  os_activity_scope_leave((v1 + 24));
  swift_endAccess();

  OUTLINED_FUNCTION_24_11();
  v4 = *MEMORY[0x1E69E9840];

  return v3();
}

uint64_t sub_197A3704C()
{
  OUTLINED_FUNCTION_18();
  v7 = *MEMORY[0x1E69E9840];
  v1 = v0[18];
  v2 = v0[16];
  OUTLINED_FUNCTION_60_5();
  os_activity_scope_leave((v1 + 24));
  swift_endAccess();

  OUTLINED_FUNCTION_13();
  v4 = v0[20];
  v5 = *MEMORY[0x1E69E9840];

  return v3();
}

uint64_t sub_197A37104@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for ModelManagerError();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B68, &qword_197A89660);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499D8, &unk_197A92330);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v25 - v15;
  sub_197A44A54();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499E8, &qword_197A92348);
      v19 = *(v18 + 48);
      v20 = *&v16[v19];
      v21 = *(v18 + 64);
      v22 = v16[v21];
      sub_19794B2DC();
      *(a1 + v19) = v20;
      *(a1 + v21) = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499E0, &qword_197A92340);
    }

    else
    {
      sub_19794BE44();
      sub_197A44A54();
      if (__swift_getEnumTagSinglePayload(v10, 1, v2) == 1)
      {
        sub_197947A40(v12, &qword_1EAF48B68, &qword_197A89660);
        sub_197947A40(v10, &qword_1EAF48B68, &qword_197A89660);
        v23 = 0;
      }

      else
      {
        sub_197A41564();
        sub_19794A664(&qword_1ED8816D8, 255, type metadata accessor for ModelManagerError);
        v23 = sub_197A88208();
        sub_197962AC8(v5, type metadata accessor for ModelManagerError);
        if (v23)
        {
          sub_197947A40(v12, &qword_1EAF48B68, &qword_197A89660);
          sub_197962AC8(v10, type metadata accessor for ModelManagerError);
        }

        else
        {
          v23 = swift_allocError();
          sub_19794B2DC();
          sub_197947A40(v12, &qword_1EAF48B68, &qword_197A89660);
        }
      }

      *a1 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499E0, &qword_197A92340);
    }
  }

  else
  {
    sub_19794B2DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499E0, &qword_197A92340);
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_197A37508()
{
  v0 = sub_197A87608();
  __swift_allocate_value_buffer(v0, qword_1ED880220);
  v1 = __swift_project_value_buffer(v0, qword_1ED880220);
  if (qword_1ED880370 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1ED880520);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t *sub_197A375D0()
{
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  type metadata accessor for ModelServiceClient();
  memset(v2, 0, sizeof(v2));
  v3 = 0;
  v0 = swift_allocObject();
  result = ModelServiceClient.init(sender:runningBoardAssertions:)(v4, v2);
  qword_1ED880258 = v0;
  return result;
}

uint64_t ModelServiceClient.__allocating_init(sender:runningBoardAssertions:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ModelServiceClient.init(sender:runningBoardAssertions:)(a1, a2);
  return v4;
}

uint64_t static ModelServiceClient.client.getter()
{
  if (qword_1ED8803B0 != -1)
  {
    swift_once();
  }
}

uint64_t ModelServiceClient.SessionCache.lockedInferenceProvider.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = *(v1 + 40);
  return sub_19794A620(v2, v3);
}

__n128 ModelServiceClient.SessionCache.lockedInferenceProvider.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  sub_197955620(*(v1 + 8), *(v1 + 16));
  result = *a1;
  *(v1 + 24) = *(a1 + 16);
  *(v1 + 8) = result;
  *(v1 + 40) = v3;
  return result;
}

uint64_t *ModelServiceClient.init(sender:runningBoardAssertions:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  swift_defaultActor_initialize();
  *(v2 + 192) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
  OUTLINED_FUNCTION_16_10();
  sub_19796AB98(v7, &qword_1EAF49130, &qword_197A969C0);
  v8 = MEMORY[0x1E69E7CC0];
  v9 = sub_197A87898();
  *(v3 + 50) = 0;
  v3[26] = v9;
  v3[27] = sub_197A411FC(v8);
  v3[28] = v10;
  v3[29] = v11;
  sub_197A44A54();
  if (v25)
  {
    sub_197945EF8(&v24, &v26);
  }

  else
  {
    if (qword_1ED880698 != -1)
    {
      swift_once();
    }

    v12 = qword_1ED881820;
    v27 = type metadata accessor for ModelXPCSender();
    v28 = &protocol witness table for ModelXPCSender;
    *&v26 = v12;
  }

  sub_197945EF8(&v26, (v3 + 14));
  sub_197A44A54();
  if (v25)
  {
    sub_197945EF8(&v24, &v26);
  }

  else
  {
    v13 = type metadata accessor for RunningBoardSelfAssertions();
    v14 = swift_allocObject();
    swift_defaultActor_initialize();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A418, &qword_197A97E60);
    sub_197A41508();
    *(v14 + 112) = sub_197A87898();
    v27 = v13;
    v28 = &off_1F0C17F08;
    *&v26 = v14;
    if (v25)
    {
      sub_197947A40(&v24, &qword_1EAF4A410, &qword_197A97E58);
    }
  }

  sub_197945EF8(&v26, (v3 + 19));
  if (qword_1ED880218 != -1)
  {
    OUTLINED_FUNCTION_0_21();
  }

  v15 = sub_197A87608();
  OUTLINED_FUNCTION_66_5(v15, qword_1ED880220);
  v16 = sub_197A875E8();
  v17 = sub_197A87D78();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = OUTLINED_FUNCTION_56();
    v19 = OUTLINED_FUNCTION_93_0();
    *&v26 = v19;
    *v18 = 136315138;
    v20 = sub_197A37CB8();
    v22 = sub_197948834(v20, v21, &v26);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_197941000, v16, v17, "Creating %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_44();
  }

  sub_197947A40(a2, &qword_1EAF4A410, &qword_197A97E58);
  sub_197947A40(a1, &qword_1EAF4A408, &qword_197A97E50);
  return v3;
}

uint64_t *ModelServiceClient.deinit()
{
  v2 = v0;
  v3 = *v0;
  if (qword_1ED880218 != -1)
  {
    OUTLINED_FUNCTION_0_21();
  }

  v4 = sub_197A87608();
  OUTLINED_FUNCTION_66_5(v4, qword_1ED880220);
  v5 = sub_197A875E8();
  v6 = sub_197A87D78();
  if (os_log_type_enabled(v5, v6))
  {
    OUTLINED_FUNCTION_56();
    v7 = OUTLINED_FUNCTION_41_0();
    v15 = v7;
    *v1 = 136315138;
    v8 = sub_197A37CB8();
    v10 = sub_197948834(v8, v9, &v15);

    *(v1 + 4) = v10;
    _os_log_impl(&dword_197941000, v5, v6, "Destroying %s", v1, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_29();
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v2 + 14);
  __swift_destroy_boxed_opaque_existential_1Tm(v2 + 19);
  sub_197947A40((v2 + 26), &qword_1EAF4A420, &qword_197A97E68);
  v11 = v2[27];
  v12 = v2[28];
  v13 = v2[29];

  swift_defaultActor_destroy();
  return v2;
}

uint64_t ModelServiceClient.__deallocating_deinit()
{
  ModelServiceClient.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_197A37D14(uint64_t a1)
{
  v2 = (v1 + *(a1 + 32));
  v3 = *v2;
  v4 = v2[1];
  v5 = OUTLINED_FUNCTION_22();
  sub_197A346AC(v5);
  return OUTLINED_FUNCTION_22();
}

uint64_t sub_197A37D68()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 16);
  v2 = v1[23];
  __swift_project_boxed_opaque_existential_1(v1 + 19, v1[22]);
  v3 = *(v2 + 8);
  OUTLINED_FUNCTION_26();
  v9 = (v4 + *v4);
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  *(v0 + 24) = v7;
  *v7 = v0;
  OUTLINED_FUNCTION_43(v7);
  OUTLINED_FUNCTION_53_10();

  return v9();
}

uint64_t sub_197A37E7C()
{
  OUTLINED_FUNCTION_18();
  v3 = v2;
  OUTLINED_FUNCTION_21();
  v5 = v4;
  OUTLINED_FUNCTION_24();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v10 = v9;
  *(v5 + 32) = v0;

  if (v0)
  {
    v11 = *(v5 + 16);

    return MEMORY[0x1EEE6DFA0](sub_197A37FB4, v11, 0);
  }

  else
  {
    v12 = *(v9 + 8);

    return v12(v3);
  }
}

uint64_t sub_197A37FB4()
{
  OUTLINED_FUNCTION_111_0();
  OUTLINED_FUNCTION_33();
  if (qword_1ED880218 != -1)
  {
    OUTLINED_FUNCTION_0_21();
  }

  v1 = *(v0 + 32);
  v2 = sub_197A87608();
  OUTLINED_FUNCTION_66_5(v2, qword_1ED880220);
  MEMORY[0x19A8EBBD0](v1);
  v3 = sub_197A875E8();
  sub_197A87D78();
  OUTLINED_FUNCTION_113_4();
  v4 = OUTLINED_FUNCTION_96_1();
  v5 = *(v0 + 32);
  if (v4)
  {
    OUTLINED_FUNCTION_56();
    v6 = OUTLINED_FUNCTION_50_1();
    OUTLINED_FUNCTION_109_1(5.7779e-34);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_78(v7);
    OUTLINED_FUNCTION_37_9(&dword_197941000, v8, v9, "This is an expected error thrown by a RBAssertion. Reason %@");
    sub_197947A40(v6, &qword_1EAF48A90, &qword_197A891A0);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_29();
  }

  else
  {
  }

  v10 = *(v0 + 8);
  OUTLINED_FUNCTION_112();

  return v13(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_197A380E4()
{
  OUTLINED_FUNCTION_18();
  v3 = v2;
  *(v1 + 64) = v4;
  *(v1 + 72) = v0;
  *(v1 + 48) = v5;
  *(v1 + 56) = v6;
  v7 = type metadata accessor for RequestMetadata(0);
  *(v1 + 80) = v7;
  OUTLINED_FUNCTION_10(v7);
  *(v1 + 88) = v8;
  *(v1 + 96) = *(v9 + 64);
  *(v1 + 104) = OUTLINED_FUNCTION_78_0();
  v10 = type metadata accessor for ModelServiceClient.StreamBacking(0);
  *(v1 + 112) = v10;
  OUTLINED_FUNCTION_28(v10);
  v12 = *(v11 + 64) + 15;
  *(v1 + 120) = swift_task_alloc();
  *(v1 + 128) = swift_task_alloc();
  v13 = sub_197A87658();
  OUTLINED_FUNCTION_28(v13);
  v15 = *(v14 + 64);
  *(v1 + 136) = OUTLINED_FUNCTION_78_0();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
  OUTLINED_FUNCTION_28(v16);
  v18 = *(v17 + 64);
  *(v1 + 144) = OUTLINED_FUNCTION_78_0();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49CC8, &qword_197A92D58);
  OUTLINED_FUNCTION_28(v19);
  v21 = *(v20 + 64);
  *(v1 + 152) = OUTLINED_FUNCTION_78_0();
  v22 = sub_197A876D8();
  *(v1 + 160) = v22;
  OUTLINED_FUNCTION_10(v22);
  *(v1 + 168) = v23;
  v25 = *(v24 + 64) + 15;
  *(v1 + 176) = swift_task_alloc();
  v26 = swift_task_alloc();
  v27 = *v3;
  v28 = v3[1];
  *(v1 + 184) = v26;
  *(v1 + 192) = v27;
  *(v1 + 200) = v28;
  *(v1 + 208) = *(v3 + 1);
  *(v1 + 264) = *(v3 + 32);
  OUTLINED_FUNCTION_49_1();

  return MEMORY[0x1EEE6DFA0](v29, v30, v31);
}

uint64_t sub_197A382CC()
{
  OUTLINED_FUNCTION_80();
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  v3 = *(v0 + 56);
  v4 = type metadata accessor for InferenceProviderRequestResult(0);
  *(v0 + 224) = v4;
  v5 = *(v4 + 20);
  sub_197A44A54();
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    sub_197947A40(*(v0 + 152), &qword_1EAF49CC8, &qword_197A92D58);
    if (qword_1ED880218 != -1)
    {
      OUTLINED_FUNCTION_0_21();
    }

    v6 = sub_197A87608();
    OUTLINED_FUNCTION_66_5(v6, qword_1ED880220);
    v7 = sub_197A875E8();
    v8 = sub_197A87D58();
    if (OUTLINED_FUNCTION_65(v8))
    {
      v9 = OUTLINED_FUNCTION_204();
      OUTLINED_FUNCTION_137(v9);
      OUTLINED_FUNCTION_31_8(&dword_197941000, v10, v11, "No endpoint returned for a successful stream request");
      OUTLINED_FUNCTION_44();
    }

    type metadata accessor for ModelManagerError();
    OUTLINED_FUNCTION_2_14();
    sub_19794A664(v12, 255, v13);
    OUTLINED_FUNCTION_46_5();
    OUTLINED_FUNCTION_88();
    OUTLINED_FUNCTION_95_5();
    swift_willThrow();
    v43 = *(v0 + 176);
    v42 = *(v0 + 184);
    v45 = *(v0 + 144);
    v44 = *(v0 + 152);
    v47 = *(v0 + 128);
    v46 = *(v0 + 136);
    v48 = *(v0 + 120);
    v49 = *(v0 + 104);

    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_253();

    __asm { BRAA            X1, X16 }
  }

  v14 = *(v0 + 144);
  v16 = *(v0 + 72);
  v15 = *(v0 + 80);
  v17 = *(v0 + 48);
  (*(*(v0 + 168) + 32))(*(v0 + 184), *(v0 + 152), *(v0 + 160));
  os_unfair_lock_lock((v16 + 200));
  v18 = *(v15 + 28);
  sub_197A44A54();
  v19 = sub_19797E7A8((v0 + 16));
  OUTLINED_FUNCTION_100_3(v19, v20);
  if (!v22)
  {
    v23 = *(v0 + 264);
    v25 = *(v0 + 208);
    v24 = *(v0 + 216);
    v26 = *(v0 + 200);
    v27 = *(v21 + 8);
    v28 = *(v21 + 16);
    v29 = *(v21 + 24);
    v30 = *(v21 + 32);
    *(v21 + 8) = *(v0 + 192);
    *(v21 + 16) = v26;
    *(v21 + 24) = v25;
    *(v21 + 32) = v24;
    v31 = *(v21 + 40);
    *(v21 + 40) = v23;
    sub_197A878A8();
    sub_197A878A8();
    OUTLINED_FUNCTION_100_0();
    OUTLINED_FUNCTION_124_4();
    sub_197955620(v32, v33);
  }

  ((v16 + 208))(v0 + 16, 0);
  v34 = *(v0 + 176);
  v35 = *(v0 + 184);
  v36 = *(v0 + 160);
  v37 = *(v0 + 168);
  v38 = *(v0 + 136);
  sub_197947A40(*(v0 + 144), &qword_1EAF49130, &qword_197A969C0);
  os_unfair_lock_unlock((v16 + 200));
  sub_197A876C8();
  v39 = *(v37 + 16);
  v40 = OUTLINED_FUNCTION_22();
  v41(v40);
  sub_197A87638();
  *(v0 + 232) = sub_197A876B8();
  v52 = *(v0 + 80);
  v53 = *(v0 + 48);
  type metadata accessor for InferenceProviderXPCSender();
  v54 = swift_allocObject();

  *(v0 + 240) = sub_197A44618(v55, v54);
  v56 = *(v52 + 56);
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v0 + 248) = v57;
  *v57 = v58;
  v57[1] = sub_197A386A0;
  OUTLINED_FUNCTION_253();

  return sub_1979CFC28();
}

uint64_t sub_197A386A0()
{
  OUTLINED_FUNCTION_18();
  v2 = *v1;
  v3 = *(*v1 + 248);
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  v6 = *(v2 + 72);
  if (v0)
  {
  }

  OUTLINED_FUNCTION_135_3();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_197A387C8()
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_122();
  v1 = v0[30];
  v2 = v0[28];
  v4 = v0[15];
  v3 = v0[16];
  v6 = v0[13];
  v5 = v0[14];
  v26 = v0[11];
  v27 = v0[12];
  v7 = v0[7];
  v28 = v0[8];
  v8 = v0[6];
  v9 = *(v0[10] + 24);
  v10 = sub_197A87298();
  OUTLINED_FUNCTION_3_14(v10);
  (*(v11 + 16))(v3, v8 + v9);
  v12 = *(v2 + 24);
  v13 = v5[5];
  sub_197A44A54();
  *(v3 + v5[6]) = v1;
  *(v3 + v5[7]) = 0;
  v14 = (v3 + v5[8]);
  *v14 = sub_197A44744;
  v14[1] = v1;
  sub_197A41564();
  OUTLINED_FUNCTION_15_8();
  sub_197A41564();
  v15 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v16 = swift_allocObject();
  sub_19794B2DC();
  OUTLINED_FUNCTION_121_3();
  v17 = swift_allocObject();
  *(v17 + 16) = v28;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A430, &qword_197A97EC8);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();

  v0[32] = sub_197A6F488(v4, &unk_197A98168, v16, &unk_197A98178, v17);
  OUTLINED_FUNCTION_142();

  return MEMORY[0x1EEE6DFA0](v21, v22, v23);
}

uint64_t sub_197A389E4()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 256);
  v2 = *(v0 + 72);
  sub_197A70850(0);
  OUTLINED_FUNCTION_135_3();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

void sub_197A38A4C()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[29];
  v2 = v0[22];
  v3 = v0[23];
  v4 = v0[20];
  v5 = v0[21];
  v7 = v0[18];
  v6 = v0[19];
  v9 = v0[16];
  v8 = v0[17];
  v10 = v0[15];
  v18 = v0[13];

  sub_197962AC8(v9, type metadata accessor for ModelServiceClient.StreamBacking);
  v11 = *(v5 + 8);
  v12 = OUTLINED_FUNCTION_116();
  v13(v12);

  v14 = v0[1];
  v15 = v0[32];
  OUTLINED_FUNCTION_253();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_197A38B50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v13 - v4;
  if (qword_1ED880218 != -1)
  {
    swift_once();
  }

  v6 = sub_197A87608();
  __swift_project_value_buffer(v6, qword_1ED880220);
  v7 = sub_197A875E8();
  v8 = sub_197A87D78();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_197941000, v7, v8, "Invalidating direct InferenceProvider connection.", v9, 2u);
    MEMORY[0x19A8EBE00](v9, -1, -1);
  }

  v10 = sub_197A87C08();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a1;

  sub_19795CB2C();
}

uint64_t sub_197A38CF4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_197960E38;

  return sub_1979CD668();
}

uint64_t sub_197A38D84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499D8, &unk_197A92330) - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49110, &qword_197A92D60) - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v7 = type metadata accessor for ClientData(0);
  v3[10] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_197A38E90, a2, 0);
}

uint64_t sub_197A38E90()
{
  OUTLINED_FUNCTION_18();
  v1 = v0[6] + *(*v0[6] + 120);
  swift_beginAccess();
  v2 = type metadata accessor for ModelServiceClient.StreamBacking(0);
  v3 = v2[7];
  if (*(v1 + v3))
  {
    v4 = v0[7];
    v0[12] = *(v1 + v2[6]);
    v5 = *(type metadata accessor for RequestMetadata(0) + 56);

    swift_task_alloc();
    OUTLINED_FUNCTION_14();
    v0[13] = v6;
    *v6 = v7;
    v6[1] = sub_197A390BC;
    v8 = v0[8];

    return sub_1979CEC6C();
  }

  else
  {
    v11 = v0[9];
    v10 = v0[10];
    *(v1 + v3) = 1;
    v12 = v2[5];
    sub_197A44A54();
    if (__swift_getEnumTagSinglePayload(v11, 1, v10) == 1)
    {
      v13 = v0[5];
      sub_197947A40(v0[9], &qword_1EAF49110, &qword_197A92D60);
      *v13 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499E0, &qword_197A92340);
      OUTLINED_FUNCTION_133_0();
    }

    else
    {
      v14 = v0[11];
      v15 = v0[9];
      v16 = v0[5];
      sub_19794B2DC();
      OUTLINED_FUNCTION_53_10();
      sub_19794B2DC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499E0, &qword_197A92340);
      OUTLINED_FUNCTION_46_5();
    }

    swift_storeEnumTagMultiPayload();
    v17 = v0[11];
    v18 = v0[8];
    v19 = v0[9];

    OUTLINED_FUNCTION_13();

    return v20();
  }
}

uint64_t sub_197A390BC()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v6 = *(v5 + 104);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  v3[14] = v0;

  if (v0)
  {
    v9 = v3[6];
    v10 = sub_197A3925C;
  }

  else
  {
    v11 = v3[12];
    v12 = v3[6];

    v10 = sub_197A391CC;
    v9 = v12;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_197A391CC()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 64);
  sub_197A37104(*(v0 + 40));
  sub_197947A40(v1, &qword_1EAF499D8, &unk_197A92330);
  v2 = *(v0 + 88);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);

  OUTLINED_FUNCTION_13();

  return v5();
}

uint64_t sub_197A3925C()
{
  OUTLINED_FUNCTION_18();
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[5];

  type metadata accessor for ModelManagerError();
  OUTLINED_FUNCTION_2_14();
  sub_19794A664(v4, 255, v5);
  OUTLINED_FUNCTION_105();
  v6 = OUTLINED_FUNCTION_88();
  ModelManagerError.init(wrapping:)(v1, v7);
  *v3 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499E0, &qword_197A92340);
  OUTLINED_FUNCTION_46_5();
  swift_storeEnumTagMultiPayload();
  v8 = v0[11];
  v9 = v0[8];
  v10 = v0[9];

  OUTLINED_FUNCTION_13();

  return v11();
}

uint64_t sub_197A39350(uint64_t a1)
{
  if (a1)
  {
    v2 = swift_task_alloc();
    *(v1 + 16) = v2;
    *v2 = v1;
    v2[1] = sub_197A39414;

    return sub_197A2A79C();
  }

  else
  {
    v4 = *(v1 + 8);

    return v4();
  }
}

uint64_t sub_197A39414()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_12();
  *v3 = v2;
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v8 + 24) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_4_0();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_13();

    return v12();
  }
}

uint64_t sub_197A3952C()
{
  OUTLINED_FUNCTION_111_0();
  OUTLINED_FUNCTION_33();
  if (qword_1ED880218 != -1)
  {
    OUTLINED_FUNCTION_0_21();
  }

  v1 = *(v0 + 24);
  v2 = sub_197A87608();
  OUTLINED_FUNCTION_66_5(v2, qword_1ED880220);
  MEMORY[0x19A8EBBD0](v1);
  v3 = sub_197A875E8();
  sub_197A87D58();
  OUTLINED_FUNCTION_113_4();
  v4 = OUTLINED_FUNCTION_96_1();
  v5 = *(v0 + 24);
  if (v4)
  {
    OUTLINED_FUNCTION_56();
    v6 = OUTLINED_FUNCTION_50_1();
    OUTLINED_FUNCTION_109_1(5.7779e-34);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_78(v7);
    OUTLINED_FUNCTION_37_9(&dword_197941000, v8, v9, "Error occurred when invalidating RunningBoard assertion: %@");
    sub_197947A40(v6, &qword_1EAF48A90, &qword_197A891A0);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_29();
  }

  else
  {
  }

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_112();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_197A39654()
{
  OUTLINED_FUNCTION_18();
  v25 = *MEMORY[0x1E69E9840];
  v1[27] = v2;
  v1[28] = v0;
  v1[26] = v3;
  v4 = sub_197A87C08();
  v1[29] = v4;
  OUTLINED_FUNCTION_10(v4);
  v1[30] = v5;
  v7 = *(v6 + 64);
  v1[31] = OUTLINED_FUNCTION_78_0();
  v8 = type metadata accessor for InferenceProviderRequestResult(0);
  OUTLINED_FUNCTION_28(v8);
  v10 = *(v9 + 64);
  v1[32] = OUTLINED_FUNCTION_90_4();
  v1[33] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
  OUTLINED_FUNCTION_28(v11);
  v13 = *(v12 + 64);
  v1[34] = OUTLINED_FUNCTION_78_0();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);
  OUTLINED_FUNCTION_28(v14);
  v16 = *(v15 + 64);
  v1[35] = OUTLINED_FUNCTION_78_0();
  v17 = type metadata accessor for RequestMetadata(0);
  v1[36] = v17;
  OUTLINED_FUNCTION_28(v17);
  v19 = *(v18 + 64);
  v1[37] = OUTLINED_FUNCTION_90_4();
  v1[38] = swift_task_alloc();
  v20 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_49_1();

  return MEMORY[0x1EEE6DFA0](v21, v22, v23);
}

uint64_t sub_197A397E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_57();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_72();
  a22 = v24;
  a13 = *MEMORY[0x1E69E9840];
  type metadata accessor for _OSActivity();
  v24[39] = swift_initStackObject();
  v24[40] = sub_1979489D4("Client requesting stream", 24, 2);
  if (qword_1ED880218 != -1)
  {
    OUTLINED_FUNCTION_0_21();
  }

  v27 = v24[37];
  v28 = v24[38];
  v29 = v24[27];
  v30 = sub_197A87608();
  __swift_project_value_buffer(v30, qword_1ED880220);
  sub_197A41564();
  sub_197A41564();
  v31 = sub_197A875E8();
  v32 = sub_197A87D78();
  v33 = os_log_type_enabled(v31, v32);
  v34 = v24[37];
  v35 = v24[38];
  if (v33)
  {
    v36 = v24[36];
    v57 = v36;
    v58 = v32;
    v38 = v24[34];
    v37 = v24[35];
    v39 = swift_slowAlloc();
    a12 = swift_slowAlloc();
    *v39 = 136315394;
    v40 = *(v36 + 24);
    v41 = sub_197A87298();
    OUTLINED_FUNCTION_3_14(v41);
    (*(v42 + 16))(v37, v35 + v40);
    v43 = _s20ModelManagerServices14UUIDIdentifierV10uuidStringSSvg_0();
    v45 = v44;
    sub_197947A40(v37, &qword_1EAF49128, &unk_197A8CE70);
    sub_197962AC8(v35, type metadata accessor for RequestMetadata);
    v46 = sub_197948834(v43, v45, &a12);

    *(v39 + 4) = v46;
    *(v39 + 12) = 2080;
    v47 = *(v57 + 28);
    sub_197A44A54();
    v48 = _s20ModelManagerServices14UUIDIdentifierV10uuidStringSSvg_0();
    v50 = v49;
    sub_197947A40(v38, &qword_1EAF49130, &qword_197A969C0);
    sub_197962AC8(v34, type metadata accessor for RequestMetadata);
    v51 = sub_197948834(v48, v50, &a12);

    *(v39 + 14) = v51;
    _os_log_impl(&dword_197941000, v31, v58, "Sending execute streaming request for %s:%s", v39, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_44();
  }

  else
  {

    sub_197962AC8(v34, type metadata accessor for RequestMetadata);
    sub_197962AC8(v35, type metadata accessor for RequestMetadata);
  }

  v52 = swift_task_alloc();
  v24[41] = v52;
  *v52 = v24;
  v52[1] = sub_197A39B58;
  v53 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_32_1(v24[28]);
  OUTLINED_FUNCTION_30_0();

  return sub_197A37D48(v54);
}

uint64_t sub_197A39B58()
{
  OUTLINED_FUNCTION_9();
  v16 = *MEMORY[0x1E69E9840];
  v1 = *v0;
  OUTLINED_FUNCTION_12();
  *v3 = v2;
  v5 = *(v4 + 328);
  v6 = *(v4 + 224);
  v7 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v10 + 336) = v9;

  v11 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_49_1();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_197A39C88()
{
  OUTLINED_FUNCTION_80();
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(v1 + 240);
  v2 = *(v1 + 248);
  v4 = *(v1 + 232);
  OUTLINED_FUNCTION_39_8(*(v1 + 224));
  sub_197A87C78();
  sub_197A87BF8();
  v5 = OUTLINED_FUNCTION_72_7();
  v6(v5);
  v7 = *(v0 + 8);
  OUTLINED_FUNCTION_23();
  v17 = (v8 + *v8);
  v10 = *(v9 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v1 + 344) = v11;
  *v11 = v12;
  v11[1] = sub_197A39DF8;
  v13 = *(v1 + 256);
  v14 = *(v1 + 216);
  v15 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_32_7();

  return v17();
}

uint64_t sub_197A39DF8()
{
  OUTLINED_FUNCTION_18();
  v11 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v2 + 344);
  *v4 = *v1;
  *(v3 + 352) = v0;

  OUTLINED_FUNCTION_46_0();
  v7 = *(v6 + 224);
  if (v0)
  {
    v8 = sub_197A3A30C;
  }

  else
  {
    v8 = sub_197A39F40;
  }

  v9 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_197A39F40()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_49_0();
  v15 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  v6 = *(v0 + 80);
  *(v0 + 360) = v4;
  *(v0 + 368) = v6;
  v7 = *(v0 + 88);
  OUTLINED_FUNCTION_17_9();
  sub_19794B2DC();
  *(v0 + 96) = v3;
  *(v0 + 104) = v4;
  *(v0 + 112) = v5;
  *(v0 + 120) = v6;
  *(v0 + 128) = v7;
  v8 = swift_task_alloc();
  *(v0 + 376) = v8;
  *v8 = v0;
  v8[1] = sub_197A3A03C;
  v9 = *(v0 + 336);
  v10 = *(v0 + 264);
  v11 = *(v0 + 224);
  v12 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_32_1(*(v0 + 216));
  OUTLINED_FUNCTION_117();

  return sub_197A380E4();
}

uint64_t sub_197A3A03C()
{
  OUTLINED_FUNCTION_262();
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v20 = *MEMORY[0x1E69E9840];
  v4 = *v1;
  OUTLINED_FUNCTION_24();
  *v5 = v4;
  v7 = *(v6 + 376);
  v8 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v9 = v8;
  v4[48] = v0;

  if (v0)
  {
    v10 = v4[28];
  }

  else
  {
    v12 = v4[45];
    v13 = v4[46];
    v14 = v4[28];

    v4[49] = v3;
  }

  v11 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_261();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

uint64_t sub_197A3A1AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_72();
  v40 = *MEMORY[0x1E69E9840];
  v17 = v16[49];
  v18 = v16[42];
  v19 = v16[40];
  v20 = v16[37];
  v21 = v16[38];
  v36 = v16[35];
  v37 = v16[34];
  v22 = v16[33];
  v38 = v16[32];
  v39 = v16[31];
  v23 = v16[26];
  v23[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A430, &qword_197A97EC8);
  OUTLINED_FUNCTION_56_5();
  v23[4] = sub_19796AB98(v24, &qword_1EAF4A430, &qword_197A97EC8);

  *v23 = v17;
  OUTLINED_FUNCTION_1_16();
  sub_197962AC8(v22, v25);
  OUTLINED_FUNCTION_46();
  os_activity_scope_leave((v19 + 24));
  swift_endAccess();

  OUTLINED_FUNCTION_13();
  v26 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_30_0();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, v36, v37, v38, v39, v40, a14, a15, a16);
}

uint64_t sub_197A3A30C()
{
  OUTLINED_FUNCTION_80();
  v7 = *MEMORY[0x1E69E9840];
  v1 = v0[42];
  v2 = v0[40];

  OUTLINED_FUNCTION_46();
  os_activity_scope_leave((v2 + 24));
  swift_endAccess();
  v3 = v0[44];
  OUTLINED_FUNCTION_115_4();

  OUTLINED_FUNCTION_24_11();
  v5 = *MEMORY[0x1E69E9840];

  return v4();
}

uint64_t sub_197A3A40C()
{
  OUTLINED_FUNCTION_80();
  v11 = *MEMORY[0x1E69E9840];
  v1 = v0[45];
  v2 = v0[46];
  v3 = v0[42];
  v4 = v0[40];
  v5 = v0[33];

  OUTLINED_FUNCTION_1_16();
  sub_197962AC8(v5, v6);

  OUTLINED_FUNCTION_46();
  os_activity_scope_leave((v4 + 24));
  swift_endAccess();
  v7 = v0[48];
  OUTLINED_FUNCTION_115_4();

  OUTLINED_FUNCTION_24_11();
  v9 = *MEMORY[0x1E69E9840];

  return v8();
}

uint64_t ModelServiceClient.fetchModelInstance(session:)()
{
  OUTLINED_FUNCTION_18();
  v12 = *MEMORY[0x1E69E9840];
  v1[34] = v2;
  v1[35] = v0;
  v1[33] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
  OUTLINED_FUNCTION_28(v4);
  v6 = *(v5 + 64);
  v1[36] = OUTLINED_FUNCTION_90_4();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_49_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_197A3A608()
{
  OUTLINED_FUNCTION_9();
  v1 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_10_2();
  v0[39] = swift_initStackObject();
  v0[40] = sub_1979489D4("Client fetching model instance", 30, 2);
  v2 = swift_task_alloc();
  v0[41] = v2;
  *v2 = v0;
  v2[1] = sub_197A3A6E8;
  v3 = v0[35];
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_32_1(v0[34]);

  return ModelServiceClient.establishment(of:)();
}

uint64_t sub_197A3A6E8()
{
  OUTLINED_FUNCTION_18();
  v11 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v2 + 328);
  *v4 = *v1;
  *(v3 + 336) = v0;

  OUTLINED_FUNCTION_46_0();
  v7 = *(v6 + 280);
  if (v0)
  {
    v8 = sub_197A3AE30;
  }

  else
  {
    v8 = sub_197A3A830;
  }

  v9 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_197A3A830()
{
  OUTLINED_FUNCTION_122();
  v31 = *MEMORY[0x1E69E9840];
  if (qword_1ED880218 != -1)
  {
    OUTLINED_FUNCTION_0_21();
  }

  v1 = *(v0 + 272);
  v2 = sub_197A87608();
  OUTLINED_FUNCTION_66_5(v2, qword_1ED880220);

  v3 = sub_197A875E8();
  v4 = sub_197A87D78();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 304);
    v6 = *(v0 + 272);
    OUTLINED_FUNCTION_56();
    v30 = OUTLINED_FUNCTION_41_0();
    *v1 = 136315138;
    v7 = OBJC_IVAR____TtC20ModelManagerServices7Session_uuid;
    v8 = sub_197A87298();
    OUTLINED_FUNCTION_3_14(v8);
    (*(v9 + 16))(v5, v6 + v7);
    _s20ModelManagerServices14UUIDIdentifierV10uuidStringSSvg_0();
    sub_197947A40(v5, &qword_1EAF49130, &qword_197A969C0);
    v10 = OUTLINED_FUNCTION_90();
    sub_197948834(v10, v11, v12);
    OUTLINED_FUNCTION_77_0();
    *(v1 + 4) = v5;
    OUTLINED_FUNCTION_31(&dword_197941000, v13, v14, "Fetching model instance for %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_29();
  }

  v15 = *(v0 + 296);
  v16 = *(v0 + 272);
  OUTLINED_FUNCTION_6_11(*(v0 + 280));
  v17 = OBJC_IVAR____TtC20ModelManagerServices7Session_uuid;
  *(v0 + 344) = OBJC_IVAR____TtC20ModelManagerServices7Session_uuid;
  v18 = sub_197A87298();
  *(v0 + 352) = v18;
  OUTLINED_FUNCTION_6(v18);
  v20 = *(v19 + 16);
  *(v0 + 360) = v20;
  *(v0 + 368) = (v19 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v20(v15, v16 + v17);
  v21 = *(v4 + 160);
  OUTLINED_FUNCTION_23();
  v29 = (v22 + *v22);
  v24 = *(v23 + 4);
  v25 = swift_task_alloc();
  *(v0 + 376) = v25;
  *v25 = v0;
  v25[1] = sub_197A3AB00;
  v26 = *(v0 + 296);
  v27 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_118_4();

  return v29();
}

uint64_t sub_197A3AB00()
{
  OUTLINED_FUNCTION_18();
  v14 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  OUTLINED_FUNCTION_24();
  *v3 = v2;
  v5 = *(v4 + 376);
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  v2[48] = v0;

  v8 = v2[35];
  sub_197947A40(v2[37], &qword_1EAF49130, &qword_197A969C0);
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_49_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_197A3AC68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_72();
  v53 = *MEMORY[0x1E69E9840];
  v18 = *(v16 + 360);
  v17 = *(v16 + 368);
  v20 = *(v16 + 344);
  v19 = *(v16 + 352);
  v22 = *(v16 + 280);
  v21 = *(v16 + 288);
  v23 = *(v16 + 272);
  v24 = *(v16 + 32);
  *(v16 + 128) = *(v16 + 16);
  *(v16 + 144) = v24;
  v51 = *(v16 + 56);
  v52 = *(v16 + 48);
  v25 = *(v16 + 72);
  v50 = *(v16 + 64);
  *(v16 + 392) = *(v16 + 80);
  os_unfair_lock_lock((v22 + 200));
  v18(v21, v23 + v20, v19);
  v26 = OUTLINED_FUNCTION_100_0();
  v27 = sub_19797E7A8(v26);
  OUTLINED_FUNCTION_100_3(v27, v28);
  if (!v30)
  {
    v31 = *(v16 + 392);
    v32 = v29[1];
    v33 = v29[2];
    v34 = v29[4];
    a9 = v29[3];
    v29[1] = v52;
    v29[2] = v51;
    OUTLINED_FUNCTION_141_2(v29, v31);
    sub_197A878A8();
    sub_197955620(v32, v33);
  }

  ((v22 + 208))(v16 + 160, 0);
  v35 = *(v16 + 320);
  v37 = *(v16 + 296);
  v36 = *(v16 + 304);
  v38 = *(v16 + 264);
  sub_197947A40(*(v16 + 288), &qword_1EAF49130, &qword_197A969C0);
  os_unfair_lock_unlock((v22 + 200));
  v39 = *(v16 + 144);
  *v38 = *(v16 + 128);
  *(v38 + 16) = v39;
  *(v38 + 32) = v52;
  *(v38 + 40) = v51;
  *(v38 + 48) = v50;
  *(v38 + 56) = v25;
  *(v38 + 64) = *(v16 + 392);
  OUTLINED_FUNCTION_46();
  os_activity_scope_leave((v35 + 24));
  swift_endAccess();

  OUTLINED_FUNCTION_13();
  v40 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_30_0();

  return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, v50, v51, v52, v53, a14, a15, a16);
}

uint64_t sub_197A3AE30()
{
  OUTLINED_FUNCTION_262();
  OUTLINED_FUNCTION_33();
  v17 = *MEMORY[0x1E69E9840];
  v1 = v0[40];
  OUTLINED_FUNCTION_46();
  os_activity_scope_leave((v1 + 24));
  swift_endAccess();
  v2 = v0[42];
  v3 = v0[40];
  v5 = v0[37];
  v4 = v0[38];
  v6 = v0[36];

  OUTLINED_FUNCTION_24_11();
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_261();

  return v9(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_197A3AEFC()
{
  OUTLINED_FUNCTION_262();
  OUTLINED_FUNCTION_33();
  v17 = *MEMORY[0x1E69E9840];
  v1 = v0[40];
  OUTLINED_FUNCTION_46();
  os_activity_scope_leave((v1 + 24));
  swift_endAccess();
  v2 = v0[48];
  v3 = v0[40];
  v5 = v0[37];
  v4 = v0[38];
  v6 = v0[36];

  OUTLINED_FUNCTION_24_11();
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_261();

  return v9(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_197A3AFC8()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_49_0();
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[12];
  type metadata accessor for IPCCachedSession.CancellationHandlerHandle();
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = sub_197A4155C;
  *(v5 + 24) = v2;
  OUTLINED_FUNCTION_46();

  v6 = *(v1 + 128);
  swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v1 + 128);
  sub_197A25238(sub_19798E520, v5, v4);
  *(v1 + 128) = v12;

  swift_endAccess();

  OUTLINED_FUNCTION_135_3();
  OUTLINED_FUNCTION_117();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_197A3B0FC()
{
  v1 = v0[9].i64[0];
  v2 = v0[5].i64[1];
  v3 = v0[6].i64[0];
  v4 = OBJC_IVAR____TtC20ModelManagerServices7Session_uuid;
  v5 = sub_197A87298();
  OUTLINED_FUNCTION_3_14(v5);
  (*(v6 + 16))(v1, v2 + v4);
  os_unfair_lock_lock((v3 + 200));
  v7 = *(v3 + 208);
  if (!*(v7 + 16) || (v8 = v0[9].i64[0], v9 = sub_19794B040(), (v10 & 1) == 0))
  {
    os_unfair_lock_unlock((v3 + 200));
    v17 = 0;
    v77 = 0;
    v78 = 0;
    v75 = 0;
    v76 = 0;
    v74 = 0;
    v20 = 0uLL;
    v21 = 0uLL;
    v12 = 1;
    goto LABEL_7;
  }

  v11 = *(v7 + 56) + 48 * v9;
  v12 = *v11;
  v0[10].i64[1] = *v11;
  v13 = *(v11 + 8);
  v0[11].i64[0] = v13;
  v14 = *(v11 + 16);
  v0[11].i64[1] = v14;
  v15 = *(v11 + 24);
  v0[12].i64[0] = v15;
  v16 = *(v11 + 32);
  v0[12].i64[1] = v16;
  v17 = *(v11 + 40);
  v0[3].i8[9] = v17;

  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_129();
  sub_19794A620(v18, v19);
  os_unfair_lock_unlock((v3 + 200));
  v20.i64[0] = v13;
  v20.i64[1] = v14;
  v21.i64[0] = v15;
  v21.i64[1] = v16;
  if (!v12)
  {
    v77 = v14;
    v78 = v13;
    OUTLINED_FUNCTION_116();
    v75 = v16;
    v76 = v15;
    OUTLINED_FUNCTION_129();
    v70 = v44;
    v72 = v45;
    sub_19794A620(v46, v47);
    v21 = v70;
    v20 = v72;
    v74 = v17;
    goto LABEL_7;
  }

  if (v12 == 1)
  {
    v77 = 0;
    v78 = 0;
    v75 = 0;
    v76 = 0;
    v74 = 0;
LABEL_7:
    v73 = v3;
    v0[16].i64[0] = v12;
    v0[14] = vextq_s8(v21, v21, 8uLL);
    v0[15] = vextq_s8(v20, v20, 8uLL);
    v0[3].i8[10] = v17;
    v71 = v0[9].i64[0];
    v22 = v0[7].i64[1];
    v23 = v0[8].i64[0];
    v25 = v0[6].i64[1];
    v24 = v0[7].i64[0];
    v26 = v0[5].i64[1];
    v27 = v0[6].i64[0];
    v28 = sub_197A87C08();
    __swift_storeEnumTagSinglePayload(v25, 1, 1, v28);
    sub_197A44A54();
    OUTLINED_FUNCTION_58_9();
    v32 = sub_19794A664(v29, v30, v31);
    v33 = (v22 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
    v34 = (v33 + 15) & 0xFFFFFFFFFFFFFFF8;
    v35 = swift_allocObject();
    *(v35 + 16) = v27;
    *(v35 + 24) = v32;
    sub_19794BE44();
    *(v35 + v33) = v27;
    *(v35 + v34) = v26;
    v36 = v35 + ((v34 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v36 = v78;
    *(v36 + 8) = v77;
    *(v36 + 16) = v76;
    *(v36 + 24) = v75;
    *(v36 + 32) = v74;
    swift_retain_n();

    OUTLINED_FUNCTION_98_4();
    sub_19794A620(v37, v38);
    OUTLINED_FUNCTION_47_8();
    v39 = sub_1979CC804();
    v0[16].i64[1] = v39;
    os_unfair_lock_lock((v73 + 200));
    v0[1].i64[0] = v39;
    v0[1].i64[1] = v78;
    v0[2].i64[0] = v77;
    v0[2].i64[1] = v76;
    v0[3].i64[0] = v75;
    v0[3].i8[8] = v74;

    v40 = *(v73 + 208);
    swift_isUniquelyReferenced_nonNull_native();
    v79 = *(v73 + 208);
    sub_19794BBD0();
    *(v73 + 208) = v79;
    os_unfair_lock_unlock((v73 + 200));
    v41 = *(MEMORY[0x1E69E86A8] + 4);
    v42 = swift_task_alloc();
    v0[17].i64[0] = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
    OUTLINED_FUNCTION_134_3();
    *v42 = v43;
    OUTLINED_FUNCTION_50_9();
    OUTLINED_FUNCTION_133_3();
    goto LABEL_8;
  }

  v48 = qword_1ED880218;

  if (v48 != -1)
  {
    OUTLINED_FUNCTION_0_21();
  }

  v50 = v0[8].i64[1];
  v49 = v0[9].i64[0];
  v51 = sub_197A87608();
  __swift_project_value_buffer(v51, qword_1ED880220);
  OUTLINED_FUNCTION_116();
  sub_197A44A54();
  v52 = sub_197A875E8();
  v53 = sub_197A87D38();
  v54 = os_log_type_enabled(v52, v53);
  v55 = v0[8].i64[1];
  if (v54)
  {
    v56 = v0[8].i64[0];
    v57 = OUTLINED_FUNCTION_56();
    v80 = OUTLINED_FUNCTION_93_0();
    *v57 = 136315138;
    OUTLINED_FUNCTION_140();
    sub_197A44A54();
    _s20ModelManagerServices14UUIDIdentifierV10uuidStringSSvg_0();
    sub_197947A40(v56, &qword_1EAF49130, &qword_197A969C0);
    v58 = OUTLINED_FUNCTION_140();
    sub_197947A40(v58, v59, &qword_197A969C0);
    v60 = OUTLINED_FUNCTION_108_3();
    v63 = sub_197948834(v60, v61, v62);

    *(v57 + 4) = v63;
    OUTLINED_FUNCTION_142_2(&dword_197941000, v64, v65, "Waiting for creation of %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v80);
    OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_37();
  }

  else
  {

    sub_197947A40(v55, &qword_1EAF49130, &qword_197A969C0);
  }

  v66 = *(MEMORY[0x1E69E86A8] + 4);
  v67 = swift_task_alloc();
  v0[13].i64[0] = v67;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  OUTLINED_FUNCTION_134_3();
  *v67 = v68;
  OUTLINED_FUNCTION_49_10();
  OUTLINED_FUNCTION_133_3();
LABEL_8:

  return MEMORY[0x1EEE6DA10]();
}

uint64_t sub_197A3B65C()
{
  OUTLINED_FUNCTION_111_0();
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 168);

  v2 = *(v0 + 216);
  v3 = *(v0 + 192);
  v4 = *(v0 + 200);
  v6 = *(v0 + 136);
  v5 = *(v0 + 144);
  v7 = *(v0 + 128);
  v8 = *(v0 + 104);
  v9 = *(v0 + 57);
  sub_197963674(*(v0 + 168), *(v0 + 176), *(v0 + 184));
  sub_197947A40(v5, &qword_1EAF49130, &qword_197A969C0);

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_112();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_197A3B718()
{
  OUTLINED_FUNCTION_111_0();
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 264);

  v2 = *(v0 + 280);
  v3 = *(v0 + 232);
  v4 = *(v0 + 224);
  v6 = *(v0 + 136);
  v5 = *(v0 + 144);
  v7 = *(v0 + 128);
  v8 = *(v0 + 104);
  v9 = *(v0 + 58);
  sub_197963674(*(v0 + 256), *(v0 + 248), *(v0 + 240));
  sub_197947A40(v5, &qword_1EAF49130, &qword_197A969C0);

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_112();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t ModelServiceClient.executeRequest(session:metadata:)()
{
  OUTLINED_FUNCTION_18();
  v32 = *MEMORY[0x1E69E9840];
  v1[30] = v2;
  v1[31] = v0;
  v1[28] = v3;
  v1[29] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49110, &qword_197A92D60);
  OUTLINED_FUNCTION_28(v5);
  v7 = *(v6 + 64);
  v1[32] = OUTLINED_FUNCTION_78_0();
  v8 = type metadata accessor for ClientData(0);
  v1[33] = v8;
  OUTLINED_FUNCTION_28(v8);
  v10 = *(v9 + 64);
  v1[34] = OUTLINED_FUNCTION_78_0();
  v11 = sub_197A87C08();
  v1[35] = v11;
  OUTLINED_FUNCTION_10(v11);
  v1[36] = v12;
  v14 = *(v13 + 64);
  v1[37] = OUTLINED_FUNCTION_78_0();
  v15 = type metadata accessor for InferenceProviderRequestResult(0);
  v1[38] = v15;
  OUTLINED_FUNCTION_28(v15);
  v17 = *(v16 + 64);
  v1[39] = OUTLINED_FUNCTION_90_4();
  v1[40] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
  OUTLINED_FUNCTION_28(v18);
  v20 = *(v19 + 64);
  v1[41] = OUTLINED_FUNCTION_90_4();
  v1[42] = swift_task_alloc();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);
  OUTLINED_FUNCTION_28(v21);
  v23 = *(v22 + 64);
  v1[43] = OUTLINED_FUNCTION_78_0();
  v24 = type metadata accessor for RequestMetadata(0);
  v1[44] = v24;
  OUTLINED_FUNCTION_28(v24);
  v26 = *(v25 + 64);
  v1[45] = OUTLINED_FUNCTION_78_0();
  v27 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_49_1();

  return MEMORY[0x1EEE6DFA0](v28, v29, v30);
}

uint64_t sub_197A3B9BC()
{
  OUTLINED_FUNCTION_9();
  v1 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_10_2();
  v0[46] = swift_initStackObject();
  v0[47] = sub_1979489D4("Client executing request", 24, 2);
  v2 = swift_task_alloc();
  v0[48] = v2;
  *v2 = v0;
  v2[1] = sub_197A3BAA0;
  v3 = v0[31];
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_32_1(v0[29]);

  return ModelServiceClient.establishment(of:)();
}

uint64_t sub_197A3BAA0()
{
  OUTLINED_FUNCTION_18();
  v11 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v2 + 384);
  *v4 = *v1;
  *(v3 + 392) = v0;

  OUTLINED_FUNCTION_46_0();
  v7 = *(v6 + 248);
  if (v0)
  {
    v8 = sub_197A3BF90;
  }

  else
  {
    v8 = sub_197A3BBE8;
  }

  v9 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_197A3BBE8()
{
  v45 = v0;
  v44[1] = *MEMORY[0x1E69E9840];
  if (qword_1ED880218 != -1)
  {
    OUTLINED_FUNCTION_0_21();
  }

  v1 = *(v0 + 360);
  v3 = *(v0 + 232);
  v2 = *(v0 + 240);
  v4 = sub_197A87608();
  v5 = __swift_project_value_buffer(v4, qword_1ED880220);
  *(v0 + 400) = v5;
  OUTLINED_FUNCTION_15_8();
  OUTLINED_FUNCTION_22();
  sub_197A41564();

  v6 = sub_197A875E8();
  v7 = sub_197A87D78();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 360);
  if (v8)
  {
    v43 = v7;
    v10 = *(v0 + 344);
    v11 = *(v0 + 352);
    v40 = *(v0 + 232);
    v41 = *(v0 + 336);
    v12 = swift_slowAlloc();
    v44[0] = swift_slowAlloc();
    *v12 = 136315394;
    v13 = *(v11 + 24);
    v14 = sub_197A87298();
    OUTLINED_FUNCTION_6(v14);
    v16 = *(v15 + 16);
    v16(v10, v9 + v13, v14);
    v17 = _s20ModelManagerServices14UUIDIdentifierV10uuidStringSSvg_0();
    v19 = v18;
    sub_197947A40(v10, &qword_1EAF49128, &unk_197A8CE70);
    OUTLINED_FUNCTION_68_7();
    v20 = sub_197948834(v17, v19, v44);

    *(v12 + 4) = v20;
    *(v12 + 12) = 2080;
    v16(v41, v40 + OBJC_IVAR____TtC20ModelManagerServices7Session_uuid, v14);
    v5 = v41;
    v21 = _s20ModelManagerServices14UUIDIdentifierV10uuidStringSSvg_0();
    v23 = v22;
    sub_197947A40(v41, &qword_1EAF49130, &qword_197A969C0);
    v24 = sub_197948834(v21, v23, v44);

    *(v12 + 14) = v24;
    _os_log_impl(&dword_197941000, v6, v43, "Sending execute request for %s:%s", v12, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_29();
  }

  else
  {

    OUTLINED_FUNCTION_68_7();
  }

  v26 = *(v0 + 288);
  v25 = *(v0 + 296);
  v27 = *(v0 + 280);
  OUTLINED_FUNCTION_39_8(*(v0 + 248));
  sub_197A87C78();
  sub_197A87BF8();
  v28 = OUTLINED_FUNCTION_72_7();
  v29(v28);
  v30 = *(v5 + 8);
  OUTLINED_FUNCTION_23();
  v42 = (v31 + *v31);
  v33 = *(v32 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v0 + 408) = v34;
  *v34 = v35;
  v34[1] = sub_19797E228;
  v36 = *(v0 + 312);
  v37 = *(v0 + 240);
  v38 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_32_7();

  return v42();
}

uint64_t sub_197A3BF90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_122();
  v27 = *MEMORY[0x1E69E9840];
  v15 = *(v14 + 376);
  OUTLINED_FUNCTION_46();
  os_activity_scope_leave((v15 + 24));
  swift_endAccess();
  v26 = *(v14 + 392);
  OUTLINED_FUNCTION_30_11();

  OUTLINED_FUNCTION_13();
  v16 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_142();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, v26, v27, a12, a13, a14);
}

uint64_t sub_197A3C08C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_122();
  v27 = *MEMORY[0x1E69E9840];
  v15 = *(v14 + 376);
  OUTLINED_FUNCTION_46();
  os_activity_scope_leave((v15 + 24));
  swift_endAccess();
  v26 = *(v14 + 416);
  OUTLINED_FUNCTION_30_11();

  OUTLINED_FUNCTION_13();
  v16 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_142();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, v26, v27, a12, a13, a14);
}

void ModelServiceClient.executeStreamingRequest(session:metadata:)()
{
  OUTLINED_FUNCTION_67();
  v1 = v0;
  v3 = v2;
  v16 = v2;
  v17 = v4;
  v5 = type metadata accessor for RequestMetadata(0);
  v6 = OUTLINED_FUNCTION_10(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v6);
  MEMORY[0x1EEE9AC00](v11);
  sub_197A41564();
  v12 = *(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v1;
  *(v13 + 24) = v3;
  sub_19794B2DC();
  OUTLINED_FUNCTION_100_0();
  sub_197A41564();
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  sub_19794B2DC();
  *(v14 + ((v10 + ((v12 + 24) & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8)) = v16;
  type metadata accessor for CombinedResponseIterator();
  swift_allocObject();
  swift_retain_n();
  swift_retain_n();

  OUTLINED_FUNCTION_76_7();
  sub_197A12550();
  *v17 = &unk_197A97EA8;
  v17[1] = v13;
  v17[2] = 0;
  v17[3] = sub_197A41684;
  v17[4] = v14;
  v17[5] = v15;
  OUTLINED_FUNCTION_66();
}

uint64_t sub_197A3C3C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = swift_task_alloc();
  v4[6] = v5;
  *v5 = v4;
  v5[1] = sub_197A3C464;

  return ModelServiceClient.establishment(of:)();
}

uint64_t sub_197A3C464()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v3 = *(v2 + 48);
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  if (v0)
  {
    OUTLINED_FUNCTION_13();

    return v6();
  }

  else
  {
    OUTLINED_FUNCTION_4_0();

    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }
}

void sub_197A3C57C()
{
  if (*(*(v0[4] + OBJC_IVAR____TtC20ModelManagerServices7Session_supportedAssetBundleIdentifiers) + 16))
  {
    OUTLINED_FUNCTION_9();
    v0[7] = *(v1 + 40);
    sub_197A878A8();
    swift_task_alloc();
    OUTLINED_FUNCTION_14();
    v0[8] = v2;
    *v2 = v3;
    v2[1] = sub_197A3C63C;
    v4 = v0[5];
    v5 = v0[2];
    v6 = v0[3];

    sub_197A39654();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_197A3C63C()
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
  *(v3 + 72) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_4_0();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 56);

    OUTLINED_FUNCTION_13();

    return v13();
  }
}

uint64_t sub_197A3C758()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 56);

  v2 = *(v0 + 72);
  OUTLINED_FUNCTION_13();

  return v3();
}

uint64_t sub_197A3C7B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for RequestMetadata(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v16 - v10;
  v12 = sub_197A87C08();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v12);
  sub_197A41564();
  v13 = (v7 + ((*(v6 + 80) + 40) & ~*(v6 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a1;
  sub_19794B2DC();
  *(v14 + v13) = a3;

  sub_19795CB2C();
}

uint64_t sub_197A3C988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70) - 8) + 64) + 15;
  v6[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_197A3CA28, 0, 0);
}

uint64_t sub_197A3CA28()
{
  OUTLINED_FUNCTION_18();
  v1 = v0[5];
  v2 = v0[3];
  v3 = *(type metadata accessor for RequestMetadata(0) + 24);
  v4 = sub_197A87298();
  OUTLINED_FUNCTION_3_14(v4);
  (*(v5 + 16))(v1, v2 + v3);
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_197A3CB04;
  v7 = v0[4];
  v8 = v0[2];
  OUTLINED_FUNCTION_32_1(v0[5]);

  return ModelServiceClient.cancelRequest(id:session:)();
}

uint64_t sub_197A3CB04()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *(v5 + 40);
  v8 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v9 = v8;
  *(v3 + 56) = v0;

  sub_197947A40(v7, &qword_1EAF49128, &unk_197A8CE70);
  if (v0)
  {
    OUTLINED_FUNCTION_4_0();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }

  else
  {
    v13 = *(v3 + 40);

    OUTLINED_FUNCTION_13();

    return v14();
  }
}

uint64_t sub_197A3CC58()
{
  OUTLINED_FUNCTION_111_0();
  OUTLINED_FUNCTION_33();
  if (qword_1ED880218 != -1)
  {
    OUTLINED_FUNCTION_0_21();
  }

  v1 = *(v0 + 56);
  v2 = sub_197A87608();
  OUTLINED_FUNCTION_66_5(v2, qword_1ED880220);
  MEMORY[0x19A8EBBD0](v1);
  v3 = sub_197A875E8();
  sub_197A87D78();
  OUTLINED_FUNCTION_113_4();
  v4 = OUTLINED_FUNCTION_96_1();
  v5 = *(v0 + 56);
  if (v4)
  {
    OUTLINED_FUNCTION_56();
    v6 = OUTLINED_FUNCTION_50_1();
    OUTLINED_FUNCTION_109_1(5.7779e-34);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_78(v7);
    OUTLINED_FUNCTION_37_9(&dword_197941000, v8, v9, "Streaming Req Cancel caught error: %@");
    sub_197947A40(v6, &qword_1EAF48A90, &qword_197A891A0);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_29();
  }

  else
  {
  }

  v10 = *(v0 + 40);

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_112();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t ModelServiceClient.executePendingRequests(id:)()
{
  OUTLINED_FUNCTION_9();
  v1[23] = v2;
  v1[24] = v0;
  v1[22] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A428, &qword_197A97EB8);
  OUTLINED_FUNCTION_28(v4);
  v6 = *(v5 + 64);
  v1[25] = OUTLINED_FUNCTION_78_0();
  v7 = sub_197A87298();
  v1[26] = v7;
  OUTLINED_FUNCTION_10(v7);
  v1[27] = v8;
  v10 = *(v9 + 64);
  v1[28] = OUTLINED_FUNCTION_78_0();
  v11 = type metadata accessor for ModelServiceClient.PendingRequest(0);
  v1[29] = v11;
  OUTLINED_FUNCTION_28(v11);
  v13 = *(v12 + 64);
  v1[30] = OUTLINED_FUNCTION_78_0();
  OUTLINED_FUNCTION_49_1();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_197A3CE84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_121();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_122();
  a20 = v22;
  v25 = *(v22 + 184);
  v26 = *(v22 + 192);
  OUTLINED_FUNCTION_152_2();
  v28 = v26[27];
  v27 = v26[28];
  v29 = v26[29];
  v30 = swift_task_alloc();
  v30[2] = v28;
  v30[3] = v27;
  v30[4] = v25;
  sub_197A41950(sub_197A43398, v30, v27);
  LOBYTE(v28) = v31;

  if (v28)
  {
    swift_endAccess();
LABEL_16:
    v84 = *(v22 + 176);
    *(v84 + 32) = 0;
    *v84 = 0u;
    *(v84 + 16) = 0u;
    v85 = *(v22 + 240);
    v86 = *(v22 + 224);
    v87 = *(v22 + 200);

    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_142();

    return v89(v88, v89, v90, v91, v92, v93, v94, v95, a9, a10, a11, a12, a13, a14);
  }

  v32 = *(v22 + 184);
  OUTLINED_FUNCTION_150_0();
  swift_endAccess();

  OUTLINED_FUNCTION_152_2();
  v34 = v26[27];
  v33 = v26[28];
  v35 = v26[29];
  v36 = swift_task_alloc();
  v36[2] = v34;
  v36[3] = v33;
  v36[4] = v32;
  sub_197A41950(sub_197A44AAC, v36, v33);
  LOBYTE(v32) = v37;

  if (v32)
  {
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_150_0();
  swift_endAccess();
  v38 = *(v35 + 16);

  if (!v38)
  {
    goto LABEL_16;
  }

  v39 = *(v22 + 224);
  (*(*(v22 + 216) + 16))(v39, *(v22 + 184), *(v22 + 208));
  OUTLINED_FUNCTION_46();
  v41 = v26[27];
  v40 = v26[28];
  v42 = swift_task_alloc();
  v42[2] = v41;
  v42[3] = v40;
  v42[4] = v39;
  v43 = sub_197A41950(sub_197A44AAC, v42, v40);
  v45 = v44;
  v47 = v46;

  if ((v45 & 1) != 0 || (sub_197A431B8(v43, *(v26[29] + 16) - 1), sub_197A43298(), (a10 = v48) == 0))
  {
LABEL_21:
    __break(1u);
LABEL_22:
    swift_endAccess();
    __break(1u);
    goto LABEL_23;
  }

  v49 = v48;
  if (!*(v48 + 16))
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v50 = *(v22 + 232);
  v51 = *(v22 + 200);
  sub_19798E68C(v48, v51);
  if (__swift_getEnumTagSinglePayload(v51, 1, v50) == 1)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v52 = *(v22 + 240);
  v53 = *(v22 + 200);
  OUTLINED_FUNCTION_74_8();
  if (!*(v49 + 16))
  {
    goto LABEL_20;
  }

  v54 = *(v22 + 216);
  v55 = *(v22 + 224);
  v56 = *(v22 + 208);
  v57 = *(v22 + 184);
  sub_197A435E4();
  sub_197A422AC((v26 + 27), v55, v43, v45 & 1, v47, &a10);

  swift_endAccess();
  v58 = *(v54 + 8);
  v59 = OUTLINED_FUNCTION_90();
  v60(v59);
  OUTLINED_FUNCTION_152_2();
  v62 = v26[27];
  v61 = v26[28];
  v63 = v26[29];
  v64 = swift_task_alloc();
  v64[2] = v62;
  v64[3] = v61;
  v64[4] = v57;
  sub_197A41950(sub_197A44AAC, v64, v61);
  LOBYTE(v57) = v65;

  if (v57)
  {
LABEL_24:
    result = swift_endAccess();
    __break(1u);
    return result;
  }

  v66 = OUTLINED_FUNCTION_22();
  v68 = sub_197A42288(v66, v67);
  swift_endAccess();
  v69 = *(v68 + 16);

  if (!v69)
  {
    v70 = *(v22 + 184);
    OUTLINED_FUNCTION_46();
    sub_197A3D5C4(v70);
    swift_endAccess();
  }

  v71 = *(v22 + 232);
  v72 = *(v22 + 240);
  v73 = v71[5];
  v74 = (v72 + v71[6]);
  v76 = *v74;
  v75 = v74[1];
  v77 = v74[2];
  v78 = v74[3];
  LOBYTE(v74) = *(v74 + 32);
  *(v22 + 16) = v76;
  *(v22 + 24) = v75;
  *(v22 + 32) = v77;
  *(v22 + 40) = v78;
  *(v22 + 48) = v74;
  v79 = *(v72 + v71[7]);
  sub_197A878A8();
  sub_197A878A8();
  v80 = swift_task_alloc();
  *(v22 + 248) = v80;
  *v80 = v22;
  v80[1] = sub_197A3D330;
  v81 = *(v22 + 192);
  OUTLINED_FUNCTION_32_1(*(v22 + 240));
  OUTLINED_FUNCTION_118_4();
  OUTLINED_FUNCTION_142();

  return sub_197A380E4();
}

uint64_t sub_197A3D330()
{
  OUTLINED_FUNCTION_18();
  v3 = v2;
  OUTLINED_FUNCTION_21();
  v5 = v4;
  OUTLINED_FUNCTION_24();
  *v6 = v5;
  v8 = *(v7 + 248);
  v9 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v10 = v9;
  v5[32] = v0;

  if (v0)
  {
    v11 = v5[24];
  }

  else
  {
    v14 = v5[24];
    v5[33] = v3;
  }

  v12 = v5[3];
  v13 = v5[5];

  OUTLINED_FUNCTION_49_1();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

uint64_t sub_197A3D468()
{
  OUTLINED_FUNCTION_111_0();
  OUTLINED_FUNCTION_33();
  v1 = v0[33];
  v2 = v0[30];
  v3 = v0[22];
  v3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A430, &qword_197A97EC8);
  OUTLINED_FUNCTION_56_5();
  OUTLINED_FUNCTION_53_10();
  v3[4] = sub_19796AB98(v4, v5, v6);
  *v3 = v1;
  OUTLINED_FUNCTION_5_11();
  sub_197962AC8(v2, v7);
  v8 = v0[30];
  v9 = v0[28];
  v10 = v0[25];

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_112();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_197A3D538()
{
  OUTLINED_FUNCTION_18();
  v1 = v0[30];
  v2 = v0[28];
  v3 = v0[25];
  OUTLINED_FUNCTION_5_11();
  sub_197962AC8(v1, v4);

  OUTLINED_FUNCTION_13();
  v6 = v0[32];

  return v5();
}

uint64_t sub_197A3D5C4(uint64_t a1)
{
  v3 = sub_197A87298();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = v1[1];
  v14 = *v1;
  v15 = v8;
  v16 = a1;
  v10 = sub_197A41950(sub_197A44AAC, v13, v8);
  result = 0;
  if ((v12 & 1) == 0)
  {
    sub_197A42558(v10, v9, v7);
    (*(v4 + 8))(v7, v3);
    return sub_197A426F8(v10);
  }

  return result;
}

uint64_t sub_197A3D6E0()
{
  OUTLINED_FUNCTION_18();
  v26 = *MEMORY[0x1E69E9840];
  v1[30] = v2;
  v1[31] = v0;
  v3 = type metadata accessor for ModelServiceClient.PendingRequest(0);
  v1[32] = v3;
  OUTLINED_FUNCTION_10(v3);
  v1[33] = v4;
  v6 = *(v5 + 64);
  v1[34] = OUTLINED_FUNCTION_90_4();
  v1[35] = swift_task_alloc();
  v7 = sub_197A87298();
  v1[36] = v7;
  OUTLINED_FUNCTION_10(v7);
  v1[37] = v8;
  v10 = *(v9 + 64);
  v1[38] = OUTLINED_FUNCTION_90_4();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v11 = type metadata accessor for InferenceProviderRequestResult(0);
  v1[41] = v11;
  OUTLINED_FUNCTION_28(v11);
  v13 = *(v12 + 64);
  v1[42] = OUTLINED_FUNCTION_78_0();
  v14 = sub_197A87C08();
  v1[43] = v14;
  OUTLINED_FUNCTION_10(v14);
  v1[44] = v15;
  v17 = *(v16 + 64);
  v1[45] = OUTLINED_FUNCTION_78_0();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49A58, &qword_197A98140);
  OUTLINED_FUNCTION_28(v18);
  v20 = *(v19 + 64);
  v1[46] = OUTLINED_FUNCTION_90_4();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v21 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_49_1();

  return MEMORY[0x1EEE6DFA0](v22, v23, v24);
}

uint64_t sub_197A3D8E0()
{
  OUTLINED_FUNCTION_9();
  v1 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_10_2();
  v0[49] = swift_initStackObject();
  v0[50] = sub_1979489D4("Client requesting stream", 24, 2);
  v2 = swift_task_alloc();
  v0[51] = v2;
  *v2 = v0;
  v2[1] = sub_197A3D9C0;
  v3 = *MEMORY[0x1E69E9840];
  v4 = OUTLINED_FUNCTION_32_1(v0[31]);

  return sub_197A37D48(v4);
}

uint64_t sub_197A3D9C0()
{
  OUTLINED_FUNCTION_9();
  v16 = *MEMORY[0x1E69E9840];
  v1 = *v0;
  OUTLINED_FUNCTION_12();
  *v3 = v2;
  v5 = *(v4 + 408);
  v6 = *(v4 + 248);
  v7 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v10 + 416) = v9;

  v11 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_49_1();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_197A3DAF0()
{
  OUTLINED_FUNCTION_80();
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(v1 + 352);
  v2 = *(v1 + 360);
  v4 = *(v1 + 344);
  OUTLINED_FUNCTION_39_8(*(v1 + 248));
  sub_197A87C78();
  sub_197A87BF8();
  v5 = OUTLINED_FUNCTION_72_7();
  v6(v5);
  v7 = *(v0 + 16);
  OUTLINED_FUNCTION_23();
  v17 = (v8 + *v8);
  v10 = *(v9 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v1 + 424) = v11;
  *v11 = v12;
  v11[1] = sub_197A3DC64;
  v13 = *(v1 + 376);
  v14 = *(v1 + 240);
  v15 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_32_7();

  return v17();
}

uint64_t sub_197A3DC64()
{
  OUTLINED_FUNCTION_18();
  v11 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v2 + 424);
  *v4 = *v1;
  *(v3 + 432) = v0;

  OUTLINED_FUNCTION_46_0();
  v7 = *(v6 + 248);
  if (v0)
  {
    v8 = sub_197A3E3AC;
  }

  else
  {
    v8 = sub_197A3DDAC;
  }

  v9 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

void sub_197A3DDAC()
{
  v97 = v0;
  v96[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 376);
  v2 = *(v0 + 384);
  v3 = *(v0 + 368);
  v4 = *(v0 + 328);
  v6 = *(v0 + 56);
  v5 = *(v0 + 64);
  v8 = *(v0 + 72);
  v7 = *(v0 + 80);
  v93 = *(v0 + 88);
  OUTLINED_FUNCTION_124_4();
  sub_19794BE44();
  OUTLINED_FUNCTION_124_4();
  sub_197A44A54();
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    v9 = *(v0 + 416);
    v10 = *(v0 + 400);
    v11 = *(v0 + 368);
    sub_197947A40(*(v0 + 384), &qword_1EAF49A58, &qword_197A98140);

    sub_197947A40(v11, &qword_1EAF49A58, &qword_197A98140);
    goto LABEL_13;
  }

  v88 = *(v0 + 416);
  v89 = *(v0 + 432);
  v12 = *(v0 + 368);
  v13 = *(v0 + 336);
  v87 = v7;
  v14 = *(v0 + 320);
  v86 = v8;
  v16 = *(v0 + 288);
  v15 = *(v0 + 296);
  v17 = *(v0 + 280);
  v19 = *(v0 + 248);
  v18 = *(v0 + 256);
  v85 = v6;
  v20 = *(v0 + 240);
  OUTLINED_FUNCTION_17_9();
  sub_19794B2DC();
  v21 = type metadata accessor for RequestMetadata(0);
  v90 = *(v15 + 16);
  v90(v14, v20 + *(v21 + 24), v16);
  OUTLINED_FUNCTION_15_8();
  sub_197A41564();
  v22 = v18[5];
  sub_197A41564();
  v23 = v17 + v18[6];
  *v23 = v85;
  *(v23 + 8) = v5;
  *(v23 + 16) = v86;
  *(v23 + 24) = v87;
  *(v23 + 32) = v93;
  *(v17 + v18[7]) = v88;
  OUTLINED_FUNCTION_152_2();
  v24 = v19[27];
  v25 = v19[28];
  v26 = v19[29];
  v27 = swift_task_alloc();
  v27[2] = v24;
  v27[3] = v25;
  v27[4] = v14;
  sub_197A41950(sub_197A44AAC, v27, v25);
  LOBYTE(v25) = v28;

  if (v25)
  {
    v29 = *(v0 + 384);
    v30 = *(v0 + 336);
    v31 = *(v0 + 320);
    v33 = *(v0 + 296);
    v32 = *(v0 + 304);
    v34 = *(v0 + 280);
    v35 = *(v0 + 288);
    v36 = *(v0 + 264);
    swift_endAccess();
    v90(v32, v31, v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A190, &unk_197A98150);
    v37 = *(v36 + 72);
    v38 = (*(v36 + 80) + 32) & ~*(v36 + 80);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_197A88E50;
    OUTLINED_FUNCTION_55_5();
    sub_197A41564();
    OUTLINED_FUNCTION_46();
    sub_197A3E4D0(v39, v32);
    swift_endAccess();
    OUTLINED_FUNCTION_5_11();
    sub_197962AC8(v34, v40);
    OUTLINED_FUNCTION_1_16();
    sub_197962AC8(v30, v41);
    sub_197947A40(v29, &qword_1EAF49A58, &qword_197A98140);
    v42 = *(v33 + 8);
LABEL_12:
    v10 = *(v0 + 400);
    v42(*(v0 + 320), *(v0 + 288));
LABEL_13:
    OUTLINED_FUNCTION_46();
    os_activity_scope_leave((v10 + 24));
    swift_endAccess();
    v71 = *(v0 + 400);
    v72 = *(v0 + 376);
    v73 = *(v0 + 384);
    v75 = *(v0 + 360);
    v74 = *(v0 + 368);
    v76 = *(v0 + 336);
    v78 = *(v0 + 312);
    v77 = *(v0 + 320);
    v79 = *(v0 + 304);
    v80 = *(v0 + 280);
    v95 = *(v0 + 272);

    OUTLINED_FUNCTION_13();
    v81 = *MEMORY[0x1E69E9840];
    OUTLINED_FUNCTION_138_1();

    __asm { BRAA            X1, X16 }
  }

  v43 = *(v0 + 312);
  v44 = *(v0 + 320);
  v46 = *(v0 + 280);
  v45 = *(v0 + 288);
  v47 = *(v0 + 272);
  OUTLINED_FUNCTION_150_0();
  swift_endAccess();

  v90(v43, v44, v45);
  OUTLINED_FUNCTION_55_5();
  sub_197A41564();
  OUTLINED_FUNCTION_46();
  v49 = v19[27];
  v48 = v19[28];
  v50 = swift_task_alloc();
  v50[2] = v49;
  v50[3] = v48;
  v50[4] = v43;
  v51 = sub_197A41950(sub_197A44AAC, v50, v48);
  v53 = v52;
  v55 = v54;

  if ((v53 & 1) == 0)
  {
    sub_197A431B8(v51, *(v19[29] + 16) - 1);
    sub_197A43298();
    if (v56)
    {
      v57 = v56;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v57 = sub_197A1F114(0, *(v57 + 16) + 1, 1, v57);
      }

      v59 = *(v57 + 16);
      v58 = *(v57 + 24);
      v60 = v59 + 1;
      v61 = v19;
      if (v59 >= v58 >> 1)
      {
        v84 = sub_197A1F114(v58 > 1, v59 + 1, 1, v57);
        v60 = v59 + 1;
        v57 = v84;
      }

      v91 = *(v0 + 336);
      v92 = *(v0 + 384);
      v62 = *(v0 + 312);
      v63 = *(v0 + 296);
      v94 = *(v0 + 288);
      v64 = *(v0 + 272);
      v65 = *(v0 + 280);
      v66 = *(v0 + 264);
      *(v57 + 16) = v60;
      v67 = *(v66 + 80);
      v68 = *(v66 + 72);
      OUTLINED_FUNCTION_74_8();
      v96[0] = v57;
      sub_197A422AC((v61 + 27), v62, v51, v53 & 1, v55, v96);

      swift_endAccess();
      OUTLINED_FUNCTION_5_11();
      sub_197962AC8(v65, v69);
      OUTLINED_FUNCTION_1_16();
      sub_197962AC8(v91, v70);
      sub_197947A40(v92, &qword_1EAF49A58, &qword_197A98140);
      v42 = *(v63 + 8);
      v42(v62, v94);
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_197A3E3AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_122();
  v38 = *MEMORY[0x1E69E9840];
  v15 = v14[52];
  v16 = v14[50];
  v18 = v14[47];
  v17 = v14[48];
  v20 = v14[45];
  v19 = v14[46];
  v21 = v14[42];
  v22 = v14[39];
  v23 = v14[40];
  v24 = v14[38];
  v36 = v14[35];
  v37 = v14[34];

  OUTLINED_FUNCTION_46();
  os_activity_scope_leave((v16 + 24));
  swift_endAccess();

  OUTLINED_FUNCTION_13();
  v25 = v14[54];
  v26 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_142();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, v36, v37, v38, a12, a13, a14);
}

uint64_t sub_197A3E4D0(uint64_t a1, uint64_t a2)
{
  v5 = sub_197A87298();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v26[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = v2[1];
  v27 = *v2;
  v28 = v10;
  v29 = a2;
  v11 = sub_197A41950(sub_197A44AAC, v26, v10);
  if (v13)
  {
    if (a1)
    {
      sub_197A4172C(a2, v12);
      v16 = v2[2];
      v14 = v2 + 2;
      v15 = v16;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v14 = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_19798CC34(0, *(v15 + 16) + 1, 1);
        v15 = *v14;
      }

      v19 = *(v15 + 16);
      v18 = *(v15 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_19798CC34(v18 > 1, v19 + 1, 1);
        v15 = *v14;
      }

      *(v15 + 16) = v19 + 1;
      *(v15 + 8 * v19 + 32) = a1;
      *v14 = v15;
    }

    return (*(v6 + 8))(a2, v5);
  }

  else
  {
    v21 = v11;
    if (a1)
    {
      v22 = v2[2];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_197A4285C(v22);
      }

      result = (*(v6 + 8))(a2, v5);
      if ((v21 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v21 < *(v22 + 16))
      {
        v23 = v22 + 8 * v21;
        v24 = *(v23 + 32);
        *(v23 + 32) = a1;

        v2[2] = v22;
        return result;
      }

      __break(1u);
    }

    else
    {
      sub_197A42558(v11, v12, v9);
      v25 = *(v6 + 8);
      v25(v9, v5);
      sub_197A426F8(v21);

      return v25(a2, v5);
    }
  }

  return result;
}

uint64_t ModelServiceClient.executeInputStreamRequest(session:metadata:)()
{
  OUTLINED_FUNCTION_9();
  v1[14] = v2;
  v1[15] = v0;
  v1[12] = v3;
  v1[13] = v4;
  v5 = swift_task_alloc();
  v1[16] = v5;
  *v5 = v1;
  OUTLINED_FUNCTION_43(v5);

  return ModelServiceClient.establishment(of:)();
}

uint64_t sub_197A3E79C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v3 = *(v2 + 128);
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  if (v0)
  {
    OUTLINED_FUNCTION_13();

    return v6();
  }

  else
  {
    OUTLINED_FUNCTION_4_0();

    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }
}

void sub_197A3E8B4()
{
  if (*(*(v0[13] + OBJC_IVAR____TtC20ModelManagerServices7Session_supportedAssetBundleIdentifiers) + 16))
  {
    OUTLINED_FUNCTION_9();
    v0[17] = *(v1 + 40);
    sub_197A878A8();
    v2 = swift_task_alloc();
    v0[18] = v2;
    *v2 = v0;
    v2[1] = sub_197A3E970;
    v3 = v0[14];
    v4 = v0[15];

    sub_197A3D6E0();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_197A3E970()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v6 = *(v5 + 144);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  v3[19] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_4_0();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = v3[17];
    v13 = v3[14];

    v14 = *(type metadata accessor for RequestMetadata(0) + 24);
    swift_task_alloc();
    OUTLINED_FUNCTION_14();
    v3[20] = v15;
    *v15 = v16;
    v15[1] = sub_197A3EAEC;
    v17 = v3[15];

    return ModelServiceClient.executePendingRequests(id:)();
  }
}

uint64_t sub_197A3EAEC()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_12();
  *v3 = v2;
  v5 = *(v4 + 160);
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v8 + 168) = v0;

  OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_197A3EBE8()
{
  OUTLINED_FUNCTION_18();
  if (*(v0 + 40))
  {
    sub_197947C44(v0 + 16, v0 + 56);
  }

  else
  {
    v1 = *(v0 + 32);
    *(v0 + 56) = *(v0 + 16);
    *(v0 + 72) = v1;
    *(v0 + 88) = *(v0 + 48);
  }

  if (*(v0 + 80))
  {
    if (*(v0 + 40))
    {
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    }

    sub_197945EF8((v0 + 56), *(v0 + 96));
    OUTLINED_FUNCTION_13();
  }

  else
  {
    if (qword_1ED880218 != -1)
    {
      OUTLINED_FUNCTION_0_21();
    }

    v3 = sub_197A87608();
    OUTLINED_FUNCTION_66_5(v3, qword_1ED880220);
    v4 = sub_197A875E8();
    v5 = sub_197A87D78();
    if (OUTLINED_FUNCTION_65(v5))
    {
      v6 = OUTLINED_FUNCTION_204();
      OUTLINED_FUNCTION_137(v6);
      OUTLINED_FUNCTION_31_8(&dword_197941000, v7, v8, "First request for an input sequence did not return an iterator");
      OUTLINED_FUNCTION_44();
    }

    type metadata accessor for ModelManagerError();
    OUTLINED_FUNCTION_2_14();
    sub_19794A664(v9, 255, v10);
    OUTLINED_FUNCTION_46_5();
    OUTLINED_FUNCTION_88();
    OUTLINED_FUNCTION_95_5();
    swift_willThrow();
    if (*(v0 + 40))
    {
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    }

    OUTLINED_FUNCTION_13();
  }

  return v2();
}

uint64_t sub_197A3ED64()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 136);

  v2 = *(v0 + 152);
  OUTLINED_FUNCTION_13();

  return v3();
}

uint64_t sub_197A3EDC0()
{
  v1 = *(v0 + 168);
  OUTLINED_FUNCTION_13();
  return v2();
}

uint64_t ModelServiceClient.addInputToRequest(session:metadata:)()
{
  OUTLINED_FUNCTION_9();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = swift_task_alloc();
  v1[5] = v4;
  *v4 = v1;
  OUTLINED_FUNCTION_43(v4);

  return ModelServiceClient.establishment(of:)();
}

uint64_t sub_197A3EE78()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v3 = *(v2 + 40);
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  if (v0)
  {
    OUTLINED_FUNCTION_13();

    return v6();
  }

  else
  {
    OUTLINED_FUNCTION_4_0();

    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }
}

void sub_197A3EF90()
{
  if (*(*(v0[2] + OBJC_IVAR____TtC20ModelManagerServices7Session_supportedAssetBundleIdentifiers) + 16))
  {
    OUTLINED_FUNCTION_9();
    v0[6] = *(v1 + 40);
    sub_197A878A8();
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_197A3F04C;
    v3 = v0[3];
    v4 = v0[4];

    sub_197A3D6E0();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_197A3F04C()
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
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_4_0();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 48);

    OUTLINED_FUNCTION_13();

    return v13();
  }
}

uint64_t sub_197A3F168()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 48);

  v2 = *(v0 + 64);
  OUTLINED_FUNCTION_13();

  return v3();
}

uint64_t sub_197A3F1C4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_197A3F21C();
  }

  return result;
}

void sub_197A3F21C()
{
  v1 = v0;
  if (qword_1ED880218 != -1)
  {
    swift_once();
  }

  v2 = sub_197A87608();
  __swift_project_value_buffer(v2, qword_1ED880220);
  v3 = sub_197A875E8();
  v4 = sub_197A87D78();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_197941000, v3, v4, "Resetting session cache", v5, 2u);
    MEMORY[0x19A8EBE00](v5, -1, -1);
  }

  os_unfair_lock_lock((v1 + 200));
  sub_197A3F98C((v1 + 208));

  os_unfair_lock_unlock((v1 + 200));
}

uint64_t sub_197A3F328()
{
  OUTLINED_FUNCTION_111_0();
  OUTLINED_FUNCTION_33();
  v18 = *MEMORY[0x1E69E9840];
  v1 = v0[35];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  OUTLINED_FUNCTION_46();
  os_activity_scope_leave((v1 + 24));
  swift_endAccess();
  v2 = v0[37];
  v3 = v0[35];
  v5 = v0[32];
  v4 = v0[33];
  v7 = v0[30];
  v6 = v0[31];

  OUTLINED_FUNCTION_23_10();
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_112();

  return v10(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_197A3F404()
{
  OUTLINED_FUNCTION_72();
  v24 = v1;
  v23[6] = *MEMORY[0x1E69E9840];
  v3 = *(v1 + 128);
  MEMORY[0x19A8EBBD0](*(v1 + 144));
  v4 = sub_197A875E8();
  sub_197A87D68();
  OUTLINED_FUNCTION_113_4();
  v5 = OUTLINED_FUNCTION_96_1();
  v6 = *(v1 + 144);
  if (v5)
  {
    OUTLINED_FUNCTION_56();
    v7 = OUTLINED_FUNCTION_50_1();
    OUTLINED_FUNCTION_109_1(5.7779e-34);
    v8 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_78(v8);
    OUTLINED_FUNCTION_37_9(&dword_197941000, v9, v10, "Sending deletion session failed with %@");
    sub_197947A40(v7, &qword_1EAF48A90, &qword_197A891A0);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_29();
  }

  else
  {
  }

  OUTLINED_FUNCTION_144_3();
  sub_19796D494(v23);
  OUTLINED_FUNCTION_143_3(v11, v12, v13, v14, v15, v16, v17, v18, v22, v23[0], v23[1], v23[2]);
  os_unfair_lock_unlock(v2 + 50);
  OUTLINED_FUNCTION_60_5();
  os_activity_scope_leave((v0 + 24));
  swift_endAccess();

  OUTLINED_FUNCTION_13();
  v20 = *MEMORY[0x1E69E9840];

  return v19();
}

uint64_t sub_197A3F588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_49_0();
  v29 = *MEMORY[0x1E69E9840];
  v10 = v9[19];
  MEMORY[0x19A8EBBD0](v9[21]);
  v11 = sub_197A875E8();
  sub_197A87D68();
  OUTLINED_FUNCTION_113_4();
  if (OUTLINED_FUNCTION_96_1())
  {
    OUTLINED_FUNCTION_56();
    v12 = OUTLINED_FUNCTION_50_1();
    OUTLINED_FUNCTION_109_1(5.7779e-34);
    v13 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_78(v13);
    OUTLINED_FUNCTION_37_9(&dword_197941000, v14, v15, "Sending cancel session failed with %@");
    sub_197947A40(v12, &qword_1EAF48A90, &qword_197A891A0);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_29();
  }

  v16 = v9[18];
  v18 = v9[15];
  v17 = v9[16];

  swift_willThrow();
  OUTLINED_FUNCTION_60_5();
  os_activity_scope_leave((v16 + 24));
  swift_endAccess();

  OUTLINED_FUNCTION_24_11();
  v19 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_117();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, v29);
}

uint64_t sub_197A3F6D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_49_0();
  v29 = *MEMORY[0x1E69E9840];
  v10 = v9[19];
  MEMORY[0x19A8EBBD0](v9[23]);
  v11 = sub_197A875E8();
  sub_197A87D68();
  OUTLINED_FUNCTION_113_4();
  if (OUTLINED_FUNCTION_96_1())
  {
    OUTLINED_FUNCTION_56();
    v12 = OUTLINED_FUNCTION_50_1();
    OUTLINED_FUNCTION_109_1(5.7779e-34);
    v13 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_78(v13);
    OUTLINED_FUNCTION_37_9(&dword_197941000, v14, v15, "Sending cancel session failed with %@");
    sub_197947A40(v12, &qword_1EAF48A90, &qword_197A891A0);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_29();
  }

  v16 = v9[18];
  v18 = v9[15];
  v17 = v9[16];

  swift_willThrow();
  OUTLINED_FUNCTION_60_5();
  os_activity_scope_leave((v16 + 24));
  swift_endAccess();

  OUTLINED_FUNCTION_24_11();
  v19 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_117();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, v29);
}

uint64_t sub_197A3F818()
{
  OUTLINED_FUNCTION_18();
  v9 = *MEMORY[0x1E69E9840];
  v1 = v0[22];
  OUTLINED_FUNCTION_60_5();
  os_activity_scope_leave((v1 + 24));
  swift_endAccess();
  v2 = v0[24];
  v3 = v0[22];
  v5 = v0[19];
  v4 = v0[20];

  OUTLINED_FUNCTION_23_10();
  v7 = *MEMORY[0x1E69E9840];

  return v6();
}

uint64_t sub_197A3F8D4()
{
  OUTLINED_FUNCTION_18();
  v9 = *MEMORY[0x1E69E9840];
  v1 = v0[22];
  OUTLINED_FUNCTION_16();
  os_activity_scope_leave((v1 + 24));
  swift_endAccess();
  v2 = v0[26];
  v3 = v0[22];
  v5 = v0[19];
  v4 = v0[20];

  OUTLINED_FUNCTION_23_10();
  v7 = *MEMORY[0x1E69E9840];

  return v6();
}

uint64_t sub_197A3F98C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
  v36 = *(v2 - 8);
  v3 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v42 = &v33 - v4;
  v33 = a1;
  v5 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A448, &qword_197A981B0);
  result = sub_197A87EE8();
  v7 = result;
  v8 = 0;
  v37 = v5;
  v9 = 1 << *(v5 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v5 + 64;
  v12 = v10 & *(v5 + 64);
  v13 = (v9 + 63) >> 6;
  v34 = result + 64;
  v35 = result;
  if (v12)
  {
    while (1)
    {
      v14 = __clz(__rbit64(v12));
      v38 = (v12 - 1) & v12;
LABEL_10:
      v17 = v14 | (v8 << 6);
      v18 = v37;
      v19 = *(v37 + 48);
      v41 = *(v36 + 72) * v17;
      sub_197A44A54();
      v20 = *(v18 + 56) + 48 * v17;
      v22 = *v20;
      v39 = *(v20 + 8);
      v21 = v39;
      v40 = 3 * v17;
      v23 = *(v20 + 16);
      v24 = *(v20 + 24);
      v25 = *(v20 + 32);
      v26 = *(v20 + 40);

      sub_19794A620(v21, v23);

      v7 = v35;
      *(v34 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v27 = v7[6];
      result = sub_19794BE44();
      v28 = v39;
      v29 = v7[7] + 16 * v40;
      *v29 = 0;
      *(v29 + 8) = v28;
      *(v29 + 16) = v23;
      *(v29 + 24) = v24;
      *(v29 + 32) = v25;
      *(v29 + 40) = v26;
      v30 = v7[2];
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        break;
      }

      v7[2] = v32;
      v12 = v38;
      if (!v38)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        *v33 = v7;
        return result;
      }

      v16 = *(v11 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v38 = (v16 - 1) & v16;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t ModelServiceClient.setAssetsHaveUpdated(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_4_10(a1, v1);
}

uint64_t sub_197A3FC38()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_6_11(*(v1 + 24));
  v2 = *(v0 + 168);
  OUTLINED_FUNCTION_26();
  v10 = v3 + *v3;
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  *(v1 + 32) = v6;
  *v6 = v1;
  v6[1] = sub_197976F2C;
  v7 = OUTLINED_FUNCTION_5(*(v1 + 16));

  return v8(v7);
}

uint64_t ModelServiceClient.ignoreAssetUpdates(_:)(uint64_t a1)
{
  *(v2 + 16) = v1;
  *(v2 + 32) = a1;
  return OUTLINED_FUNCTION_4_10(a1, v1);
}

uint64_t sub_197A3FD58()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_6_11(*(v1 + 16));
  v2 = *(v0 + 176);
  OUTLINED_FUNCTION_26();
  v9 = (v3 + *v3);
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  *(v1 + 24) = v6;
  *v6 = v1;
  v6[1] = sub_19796E1D4;
  v7 = *(v1 + 32);
  OUTLINED_FUNCTION_53_10();

  return v9();
}

uint64_t ModelServiceClient.startMonitoringInferences(endpoint:)()
{
  OUTLINED_FUNCTION_9();
  v8 = *MEMORY[0x1E69E9840];
  *(v1 + 104) = v2;
  *(v1 + 112) = v0;
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_49_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_197A3FEF0()
{
  OUTLINED_FUNCTION_49_0();
  v13 = *MEMORY[0x1E69E9840];
  v1 = v0[14];
  type metadata accessor for _OSActivity();
  v0[15] = swift_initStackObject();
  v0[16] = sub_1979489D4("Client starting monitoring of inferences", 40, 2);
  v2 = v1[18];
  __swift_project_boxed_opaque_existential_1(v1 + 14, v1[17]);
  v3 = *(v2 + 184);
  OUTLINED_FUNCTION_23();
  v12 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v0[17] = v7;
  *v7 = v0;
  v7[1] = sub_197A40068;
  v8 = *MEMORY[0x1E69E9840];
  v9 = OUTLINED_FUNCTION_5(v0[13]);

  return v10(v9);
}

uint64_t sub_197A40068()
{
  OUTLINED_FUNCTION_18();
  v11 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v2 + 136);
  *v4 = *v1;
  *(v3 + 144) = v0;

  OUTLINED_FUNCTION_46_0();
  v7 = *(v6 + 112);
  if (v0)
  {
    v8 = sub_197A4024C;
  }

  else
  {
    v8 = sub_197A401B0;
  }

  v9 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_197A401B0()
{
  OUTLINED_FUNCTION_9();
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 128);
  OUTLINED_FUNCTION_16();
  os_activity_scope_leave((v1 + 24));
  swift_endAccess();

  OUTLINED_FUNCTION_23_10();
  v3 = *MEMORY[0x1E69E9840];

  return v2();
}

uint64_t sub_197A4024C()
{
  OUTLINED_FUNCTION_9();
  v6 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 128);
  OUTLINED_FUNCTION_60_5();
  os_activity_scope_leave((v1 + 24));
  swift_endAccess();

  OUTLINED_FUNCTION_13();
  v3 = *(v0 + 144);
  v4 = *MEMORY[0x1E69E9840];

  return v2();
}

uint64_t sub_197A402F0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_197960E38;

  return ModelServiceClient.fetchModelInstance(session:)();
}

uint64_t sub_197A4039C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_197960FB0;

  return ModelServiceClient.executeRequest(session:metadata:)();
}

uint64_t sub_197A40450()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_197960FB0;

  return ModelServiceClient.cancelRequest(id:session:)();
}

uint64_t sub_197A4051C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_197960FB0;

  return ModelServiceClient.executeInputStreamRequest(session:metadata:)();
}

uint64_t sub_197A405D0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_197960FB0;

  return ModelServiceClient.addInputToRequest(session:metadata:)();
}

uint64_t sub_197A40678()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_197960FB0;

  return ModelServiceClient.executePendingRequests(id:)();
}

uint64_t sub_197A40724()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_197960FB0;

  return ModelServiceClient.startMonitoringInferences(endpoint:)();
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

unint64_t sub_197A407F0()
{
  v1 = *(v0 + 40);
  sub_197A882F8();
  sub_197A879B8();
  sub_197A88358();
  v2 = OUTLINED_FUNCTION_99_4();

  return sub_197A409F4(v2, v3, v4);
}

unint64_t sub_197A40860(unsigned int a1)
{
  v3 = MEMORY[0x19A8EB590](*(v1 + 40), a1, 4);

  return sub_197A40AA8(a1, v3);
}

unint64_t sub_197A408A8()
{
  OUTLINED_FUNCTION_87_7();
  MEMORY[0x19A8EB5D0](v0);
  sub_197A88358();
  v1 = OUTLINED_FUNCTION_105();

  return sub_197960824(v1, v2);
}

unint64_t sub_197A40900()
{
  OUTLINED_FUNCTION_87_7();
  sub_197A87298();
  OUTLINED_FUNCTION_14_11();
  sub_19794A664(v1, 255, v2);
  OUTLINED_FUNCTION_145_2();
  v3 = *(v0 + *(type metadata accessor for RequestKey(0) + 20));
  sub_197A88338();
  sub_197A88358();
  v4 = OUTLINED_FUNCTION_105();

  return sub_197A40B08(v4, v5);
}

unint64_t sub_197A4099C()
{
  v1 = *(v0 + 40);
  sub_197A882F8();
  MEMORY[0x19A8EB5D0](0);
  v2 = sub_197A88358();

  return sub_197A40CAC(v2);
}

unint64_t sub_197A409F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_197A88218() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_197A40AA8(int a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_197A40B08(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for RequestKey(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *(v7 + 72);
    do
    {
      v14 = *(v2 + 48);
      sub_197A41564();
      if (_s20ModelManagerServices14UUIDIdentifierV2eeoiySbACyxG_AEtFZ_0())
      {
        v15 = *&v9[*(v5 + 20)];
        sub_197962AC8(v9, type metadata accessor for RequestKey);
        if (v15 == *(a1 + *(v5 + 20)))
        {
          return v11;
        }
      }

      else
      {
        sub_197962AC8(v9, type metadata accessor for RequestKey);
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

unint64_t sub_197A40CAC(uint64_t a1)
{
  result = a1 & ~(-1 << *(v1 + 32));
  v3 = *(v1 + ((result >> 3) & 0xFFFFFFFFFFFFFF8) + 64) >> result;
  return result;
}

uint64_t sub_197A40CD8(int64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result || a1 > *(v3 + 24) >> 1)
  {
    if (*(v3 + 16) <= a1)
    {
      v5 = a1;
    }

    else
    {
      v5 = *(v3 + 16);
    }

    return sub_19798CC54(result, v5, 0);
  }

  return result;
}

uint64_t sub_197A40D50()
{
  OUTLINED_FUNCTION_128_2();
  sub_197A408A8();
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_148_2();
  OUTLINED_FUNCTION_35_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A208, &unk_197A969F0);
  OUTLINED_FUNCTION_64_8();
  v3 = *(*(v8 + 48) + 8 * v1);

  v4 = (*(v8 + 56) + 16 * v1);
  v5 = *v4;
  v6 = v4[1];
  type metadata accessor for IPCCachedSession.CancellationHandlerHandle();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A1C0, &qword_197A967F0);
  sub_19794A664(&unk_1ED880388, 255, type metadata accessor for IPCCachedSession.CancellationHandlerHandle);
  OUTLINED_FUNCTION_98_4();
  sub_197A87EC8();
  *v0 = v8;
  return v5;
}

uint64_t sub_197A40E58()
{
  OUTLINED_FUNCTION_128_2();
  sub_197A40900();
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_148_2();
  OUTLINED_FUNCTION_35_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A1E0, &qword_197A96990);
  OUTLINED_FUNCTION_64_8();
  v3 = *(v10 + 48);
  v4 = type metadata accessor for RequestKey(0);
  OUTLINED_FUNCTION_6(v4);
  OUTLINED_FUNCTION_69_7(*(v5 + 72));
  v6 = *(*(v10 + 56) + 8 * v1);
  type metadata accessor for InferenceProviderRequestStream(0);
  OUTLINED_FUNCTION_59_8();
  sub_19794A664(v7, 255, v8);
  OUTLINED_FUNCTION_76_7();
  OUTLINED_FUNCTION_129();
  sub_197A87EC8();
  *v0 = v10;
  return v6;
}

uint64_t sub_197A40F3C()
{
  OUTLINED_FUNCTION_128_2();
  sub_197A40900();
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_148_2();
  OUTLINED_FUNCTION_35_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A1E8, &unk_197A96998);
  OUTLINED_FUNCTION_64_8();
  v3 = *(v10 + 48);
  v4 = type metadata accessor for RequestKey(0);
  OUTLINED_FUNCTION_6(v4);
  OUTLINED_FUNCTION_69_7(*(v5 + 72));
  v6 = *(*(v10 + 56) + 8 * v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF491C8, &unk_197A98130);
  OUTLINED_FUNCTION_59_8();
  sub_19794A664(v7, 255, v8);
  OUTLINED_FUNCTION_76_7();
  OUTLINED_FUNCTION_129();
  sub_197A87EC8();
  *v0 = v10;
  return v6;
}

uint64_t sub_197A4102C()
{
  OUTLINED_FUNCTION_128_2();
  sub_197A4099C();
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_148_2();
  OUTLINED_FUNCTION_35_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A1D8, &qword_197A96988);
  OUTLINED_FUNCTION_64_8();
  v3 = (*(v7 + 56) + 16 * v1);
  v4 = *v3;
  v5 = v3[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A418, &qword_197A97E60);
  sub_197A41508();
  sub_197A87EC8();
  *v0 = v7;
  return v4;
}

uint64_t sub_197A410EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
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

uint64_t sub_197A41164(uint64_t result, uint64_t a2)
{
  if (*(a2 + 16) < result)
  {
    __break(1u);
  }

  else if ((result & 0x8000000000000000) == 0)
  {
    v2 = *(sub_197A87298() - 8);
    v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  }

  __break(1u);
  return result;
}

uint64_t sub_197A411FC(uint64_t a1)
{
  v2 = sub_197A87298();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00]();
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A450, &qword_197A981B8);
  v37 = *(v7 - 8);
  v38 = v7;
  v8 = (*(v37 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v10 = &v34 - v9;
  v11 = MEMORY[0x1E69E7CC0];
  v42 = 0;
  v43 = MEMORY[0x1E69E7CC0];
  v12 = *(a1 + 16);
  sub_197A4214C(v12, 0);
  v41 = v11;
  result = sub_19798CC34(0, v12, 0);
  v14 = 0;
  v15 = v41;
  v16 = *(a1 + 16);
  v39 = v3;
  v40 = v16;
  v35 = a1;
  v36 = v3 + 32;
  v34 = (v3 + 8);
  while (1)
  {
    if (v40 == v14)
    {

      return v42;
    }

    if (v14 >= *(a1 + 16))
    {
      break;
    }

    v17 = a1 + ((*(v37 + 80) + 32) & ~*(v37 + 80));
    v18 = *(v37 + 72);
    sub_197A44A54();
    v19 = v39;
    v20 = *(v38 + 48);
    v21 = v2;
    (*(v39 + 32))(v6, v10, v2);
    v22 = *&v10[v20];
    v23 = v42;
    v24 = v43;
    v25 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v26 = *(v43 + 16);
    if (v42)
    {

      sub_197A41EFC(v6, v24 + v25, v26, (v23 + 16));
      v28 = v27;
      v30 = v29;

      if ((v28 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      result = sub_197A41D7C(v6, v43 + v25, *(v43 + 16));
      if ((v31 & 1) == 0)
      {
        goto LABEL_14;
      }

      v30 = 0;
    }

    sub_197A4172C(v6, v30);
    v41 = v15;
    v33 = *(v15 + 16);
    v32 = *(v15 + 24);
    if (v33 >= v32 >> 1)
    {
      sub_19798CC34(v32 > 1, v33 + 1, 1);
      v15 = v41;
    }

    *(v15 + 16) = v33 + 1;
    *(v15 + 8 * v33 + 32) = v22;
    v2 = v21;
    result = (*v34)(v6, v21);
    ++v14;
    a1 = v35;
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

unint64_t sub_197A41508()
{
  result = qword_1ED880240;
  if (!qword_1ED880240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED880240);
  }

  return result;
}

uint64_t sub_197A41564()
{
  OUTLINED_FUNCTION_71();
  v2 = v1(0);
  OUTLINED_FUNCTION_3_14(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_22();
  v6(v5);
  return v0;
}

uint64_t sub_197A415B8()
{
  OUTLINED_FUNCTION_111_0();
  OUTLINED_FUNCTION_33();
  v1 = type metadata accessor for RequestMetadata(0);
  OUTLINED_FUNCTION_28(v1);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_8_0(v6);
  *v7 = v8;
  v7[1] = sub_197960FB0;
  OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_112();

  return sub_197A3C3C0(v9, v10, v11, v12);
}

uint64_t sub_197A41684()
{
  v1 = type metadata accessor for RequestMetadata(0);
  OUTLINED_FUNCTION_10(v1);
  v3 = v2;
  v5 = v4;
  v6 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v7 = *(v0 + 16);
  v8 = *(v0 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_197A3C7B4(v7, v0 + v6, v8);
}

uint64_t sub_197A4172C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_197A87298();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00]();
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a1, v6);
  v11 = v3 + 1;
  v12 = v3[1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3[1] = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_19798CC54(0, *(v12 + 16) + 1, 1);
    v12 = *v11;
  }

  v15 = *(v12 + 16);
  v14 = *(v12 + 24);
  if (v15 >= v14 >> 1)
  {
    sub_19798CC54(v14 > 1, v15 + 1, 1);
    v12 = *v11;
  }

  *(v12 + 16) = v15 + 1;
  result = (*(v7 + 32))(v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15, v10, v6);
  v3[1] = v12;
  v17 = *v3;
  if (!*v3)
  {
    if (v15 <= 0xE)
    {
      return result;
    }

    v18 = 0;
    goto LABEL_14;
  }

  swift_beginAccess();
  if (MEMORY[0x19A8EA600](*(v17 + 16) & 0x3FLL) <= v15)
  {
    v18 = *(v17 + 24) & 0x3FLL;
    if (v15 <= 0xE && !v18)
    {

      *v3 = 0;
      return result;
    }

LABEL_14:
    v19 = MEMORY[0x19A8EA630](v15 + 1);
    return sub_197A41AB4(v19, v18);
  }

  result = sub_197A419F4();
  if (*v3)
  {
    return sub_197A41A4C((*v3 + 16), *v3 + 32, a2, v3);
  }

  __break(1u);
  return result;
}

void *sub_197A41950(void *(*a1)(uint64_t *__return_ptr, unint64_t, void), uint64_t a2, uint64_t a3)
{
  v6 = *(sub_197A87298() - 8);
  result = a1(&v8, a3 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), *(a3 + 16));
  if (!v3)
  {
    return v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_197A419F4()
{
  result = *v0;
  if (*v0)
  {
    result = swift_isUniquelyReferenced_native();
    if ((result & 1) == 0)
    {
      if (*v0)
      {
        v2 = *v0;
        v3 = sub_197A87368();

        *v0 = v3;
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_197A41A4C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(a4 + 8) + 16) + ~(a1[1] >> 6);
  v5 = (-1 << *a1) ^ ~(((v4 >> 63) & ~(-1 << *a1)) + v4);
  return sub_197A872F8();
}

uint64_t sub_197A41AB4(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v4 = v2[1];
  if (a2 <= a1)
  {
    a2 = a1;
  }

  v5 = sub_197A41AFC(v2[1], a2, 0, v3);
  v6 = *v2;

  *v2 = v5;
  return result;
}

uint64_t sub_197A41AFC(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = *(a1 + 16);
  if (a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = a2;
  }

  v8 = MEMORY[0x19A8EA630](v6);
  v9 = 0;
  if (v8 <= v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = v8;
  }

  if (v10 <= a4)
  {
    v11 = a4;
  }

  else
  {
    v11 = v10;
  }

  if (v11 >= 5)
  {
    v9 = MEMORY[0x19A8EA640]();
    sub_197A41B74(a1, (v9 + 16), v9 + 32);
  }

  return v9;
}

uint64_t sub_197A41B74(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_197A87298();
  v7 = *(*(v6 - 8) + 64);
  result = MEMORY[0x1EEE9AC00]();
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(a1 + 16);
  if (v31)
  {
    v12 = 0;
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v15 = *(v9 + 16);
    v14 = v9 + 16;
    v28 = a1 + v13;
    v29 = v15;
    v27 = *(v14 + 56);
    v30 = v14;
    v16 = (v14 - 8);
    while (1)
    {
      v29(v11, v28 + v27 * v12, v6);
      v17 = *a2;
      sub_19794A664(&qword_1ED880FE0, 255, MEMORY[0x1E69695A8]);
      result = sub_197A878E8();
      v18 = 1 << *a2;
      v19 = __OFSUB__(v18, 1);
      v20 = v18 - 1;
      if (v19)
      {
        break;
      }

      v21 = v20 & result;
      v22 = sub_197A872D8();
      v24 = v23;
      v26 = v25;
      (*v16)(v11, v6);
      v32 = a2;
      v33 = a3;
      v34 = v21;
      v35 = v22;
      v36 = v24;
      v37 = v26;
      v38 = 0;
      while (v35)
      {
        sub_197A87338();
      }

      result = sub_197A87328();
      if (++v12 == v31)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_197A41D7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_197A87298();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00]();
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  for (i = 0; ; ++i)
  {
    if (a3 == i)
    {
      return 0;
    }

    (*(v6 + 16))(v9, a2 + *(v6 + 72) * i, v5);
    sub_19794A664(&qword_1EAF488E8, 255, MEMORY[0x1E69695A8]);
    v11 = sub_197A87918();
    (*(v6 + 8))(v9, v5);
    if (v11)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_197A41EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v15 = a2;
  v5 = sub_197A87298();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00]();
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a4;
  sub_19794A664(&qword_1ED880FE0, 255, MEMORY[0x1E69695A8]);
  result = sub_197A878E8();
  if (__OFSUB__(1 << *a4, 1))
  {
    __break(1u);
  }

  else
  {
    sub_197A87308();
    v12 = v20;
    v22 = v16;
    v23 = v17;
    v24 = v18;
    v25 = v19;
    if ((v21 & 1) == 0)
    {
      do
      {
        (*(v6 + 16))(v9, v15 + *(v6 + 72) * v12, v5);
        sub_19794A664(&qword_1EAF488E8, 255, MEMORY[0x1E69695A8]);
        v13 = sub_197A87918();
        (*(v6 + 8))(v9, v5);
        if (v13)
        {
          break;
        }

        sub_197A87338();
        v16 = v22;
        v17 = v23;
        v18 = v24;
        v19 = v25;
        v12 = sub_197A87318();
      }

      while ((v14 & 1) == 0);
    }

    return v12;
  }

  return result;
}

int64_t sub_197A4214C(int64_t result, char a2)
{
  if (result < 0)
  {
    goto LABEL_25;
  }

  v3 = v2;
  v5 = result;
  sub_197A40CD8(result);
  v6 = *v2;
  if (*v2)
  {
    swift_beginAccess();
    v7 = *(v6 + 16) & 0x3FLL;
  }

  else
  {
    v7 = 0;
  }

  v8 = MEMORY[0x19A8EA630](v5);
  v9 = v8;
  if (a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  if (v6 && (a2 & 1) == 0)
  {
    swift_beginAccess();
    v10 = *(v6 + 24) & 0x3FLL;
  }

  if (v7 < v9)
  {
    v11 = v9;
    return sub_197A41AB4(v11, v10);
  }

  if (v10 > v9)
  {
    v9 = v10;
  }

  v11 = MEMORY[0x19A8EA630](*(v3[1] + 16));
  if (v11 <= v9)
  {
    v11 = v9;
  }

  if (v11 < v7)
  {
    return sub_197A41AB4(v11, v10);
  }

  result = sub_197A419F4();
  v12 = *v3;
  if (!v12)
  {
    if (!v10)
    {
      return result;
    }

    __break(1u);
LABEL_25:
    __break(1u);
    return result;
  }

  result = swift_beginAccess();
  if ((*(v12 + 24) & 0x3FLL) != v10)
  {
    *(v12 + 24) = *(v12 + 24) & 0xFFFFFFFFFFFFFFC0 | v10 & 0x3F;
  }

  return result;
}

unint64_t sub_197A42288(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a2 + 16) > result)
  {
    v2 = *(a2 + 8 * result + 32);
    return sub_197A878A8();
  }

  __break(1u);
  return result;
}

unint64_t sub_197A422AC(uint64_t a1, uint64_t a2, int64_t a3, char a4, uint64_t a5, uint64_t *a6)
{
  v12 = sub_197A87298();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  result = MEMORY[0x1EEE9AC00](v12);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a6;
  if (a4)
  {
    if (v18)
    {
      sub_197A878A8();
      sub_197A4172C(a2, a5);
      v21 = *(a1 + 16);
      v19 = (a1 + 16);
      v20 = v21;
      result = swift_isUniquelyReferenced_nonNull_native();
      *v19 = v21;
      if ((result & 1) == 0)
      {
        result = sub_19798CC34(0, *(v20 + 16) + 1, 1);
        v20 = *v19;
      }

      v23 = *(v20 + 16);
      v22 = *(v20 + 24);
      if (v23 >= v22 >> 1)
      {
        result = sub_19798CC34(v22 > 1, v23 + 1, 1);
        v20 = *v19;
      }

      *(v20 + 16) = v23 + 1;
      *(v20 + 8 * v23 + 32) = v18;
    }
  }

  else
  {
    v24 = (a1 + 16);
    v25 = *(a1 + 16);
    if (v18)
    {
      sub_197A878A8();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v24 = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_19798CC34(0, *(v25 + 16) + 1, 1);
        v25 = *v24;
      }

      v28 = *(v25 + 16);
      v27 = *(v25 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_19798CC34(v27 > 1, v28 + 1, 1);
        v25 = *v24;
      }

      *(v25 + 16) = v28 + 1;
      *(v25 + 8 * v28 + 32) = v18;
      return sub_197A431B8(a3, *(*v24 + 16) - 1);
    }

    else
    {
      if (*(v25 + 16) > a3)
      {
        v29 = sub_197A426F8(a3);
        v30 = *v24;
        v31 = swift_isUniquelyReferenced_nonNull_native();
        *v24 = v30;
        if ((v31 & 1) == 0)
        {
          sub_19798CC34(0, *(v30 + 16) + 1, 1);
          v30 = *v24;
        }

        v32 = *(v30 + 16);
        v33 = *(v30 + 24);
        v34 = v32 + 1;
        if (v32 >= v33 >> 1)
        {
          v35 = v32 + 1;
          v37 = v32;
          sub_19798CC34(v33 > 1, v32 + 1, 1);
          v32 = v37;
          v34 = v35;
          v30 = *v24;
        }

        *(v30 + 16) = v34;
        *(v30 + 8 * v32 + 32) = v29;
      }

      sub_197A42558(a3, a5, v17);
      return (*(v13 + 8))(v17, v12);
    }
  }

  return result;
}

uint64_t sub_197A42558@<X0>(int64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = v3 + 1;
  v8 = *(v3[1] + 16);
  v9 = *v4;
  if (!*v4)
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    return sub_197A42770(a1, a3);
  }

  swift_beginAccess();
  if ((*(v9 + 16) & 0x3FLL) == (*(v9 + 24) & 0x3FLL))
  {
    if (!v8)
    {
      goto LABEL_13;
    }

LABEL_8:
    result = sub_197A419F4();
    v12 = *v4;
    if (*v4)
    {
      v13 = *v4;

      result = sub_197A42870(a2, (v12 + 16), v12 + 32, v4);
      if (__OFADD__(a1, 1))
      {
        __break(1u);
      }

      else if (a1 + 1 >= a1)
      {
        v14 = v4[1];

        sub_197A42BCC(a1, a1 + 1, v14, (v12 + 16), v12 + 32);

        return sub_197A42770(a1, a3);
      }

      __break(1u);
    }

    __break(1u);
    return result;
  }

  if (v8 > MEMORY[0x19A8EA610]())
  {
    goto LABEL_8;
  }

LABEL_13:
  sub_197A42770(a1, a3);
  if (v9)
  {
    swift_beginAccess();
    v15 = *(v9 + 24) & 0x3FLL;
  }

  else
  {
    v15 = 0;
  }

  v16 = *(*v7 + 16);
  if (v15 || v16 >= 0x10)
  {
    v17 = MEMORY[0x19A8EA630](v16);
    return sub_197A41AB4(v17, v15);
  }

  else
  {

    *v4 = 0;
  }

  return result;
}

uint64_t sub_197A426F8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_197A4285C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v5 - 1 - a1;
    v8 = v3 + 8 * a1;
    v9 = *(v8 + 32);
    sub_197984484((v8 + 40), v7, (v8 + 32));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v9;
  }

  return result;
}

size_t sub_197A42770@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_197A42848(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = sub_197A87298();
    v9 = *(v8 - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    (*(v9 + 32))(a2, v11, v8);
    result = sub_197A1F548(v11 + v10, v7 - 1 - a1, v11);
    *(v5 + 16) = v7 - 1;
    *v2 = v5;
  }

  return result;
}

unint64_t sub_197A42870(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v30 = a4;
  v7 = sub_197A87298();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_197A872D8();
  *&v31 = a2;
  *(&v31 + 1) = a3;
  *&v32 = a1;
  *(&v32 + 1) = v12;
  *&v33 = v13;
  *(&v33 + 1) = v14;
  v34 = 0;
  sub_197A87338();
  if (*(&v32 + 1))
  {
    v29[0] = a3;
    v15 = sub_197A872E8();
    v29[1] = v8 + 16;
    while (1)
    {
      v39 = v31;
      v40 = v32;
      v41 = v33;
      v42 = v34;
      result = sub_197A87318();
      if (v17)
      {
LABEL_29:
        __break(1u);
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v18 = *(v30 + 8);
      if (result >= *(v18 + 16))
      {
        goto LABEL_27;
      }

      v19 = *a2;
      (*(v8 + 16))(v11, v18 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * result, v7);
      sub_19794A664(&qword_1ED880FE0, 255, MEMORY[0x1E69695A8]);
      v20 = sub_197A878E8();
      result = (*(v8 + 8))(v11, v7);
      v21 = 1 << *a2;
      v22 = v21 - 1;
      if (__OFSUB__(v21, 1))
      {
        goto LABEL_28;
      }

      v23 = v22 & v20;
      if (a1 >= v15)
      {
        if (v23 < v15 || a1 < v23)
        {
          goto LABEL_21;
        }
      }

      else if (v23 < v15 && a1 < v23)
      {
        goto LABEL_21;
      }

      v35 = v31;
      v36 = v32;
      v37 = v33;
      v38 = v34;
      v26 = sub_197A87318();
      if ((v27 & 1) == 0)
      {
        v28 = ((v22 & ((v26 - (a2[1] >> 6)) >> 63)) + v26 - (a2[1] >> 6)) ^ v22;
      }

      a1 = v36;
      sub_197A872F8();
LABEL_21:
      sub_197A87338();
      if (!*(&v32 + 1))
      {
        return sub_197A872F8();
      }
    }
  }

  return sub_197A872F8();
}

uint64_t sub_197A42BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v10 = sub_197A87298();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v13);
  v18 = &v66 - v17;
  v19 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (v19 >= 1)
  {
    v67 = a3;
    v20 = *(a3 + 16);
    if ((v20 - v19) / 2 <= a1)
    {
      v26 = __OFSUB__(v20, a2);
      v34 = v20 - a2;
      if (v26)
      {
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      if (v34 >= MEMORY[0x19A8EA600](*a4 & 0x3F) / 3)
      {
        v47 = sub_197A872D8();
        *&v71 = a4;
        *(&v71 + 1) = a5;
        *&v72 = 0;
        *(&v72 + 1) = v47;
        *&v73 = v48;
        *(&v73 + 1) = v49;
        v74 = 0;
        do
        {
          v75 = v71;
          v76 = v72;
          v77 = v73;
          v78 = v74;
          v50 = sub_197A87318();
          if ((v51 & 1) == 0 && v50 >= a2)
          {
            v26 = __OFSUB__(v50, v19);
            result = v50 - v19;
            if (v26)
            {
              goto LABEL_56;
            }

            sub_197A87328();
          }

          result = sub_197A87338();
        }

        while (v72);
      }

      else
      {
        result = sub_197A41164(a2, v67);
        v70 = v37;
        if (v35 != v36 >> 1)
        {
          v52 = v35;
          v66 = result;
          v67 = v36 >> 1;
          if (v35 >= (v36 >> 1))
          {
LABEL_66:
            __break(1u);
            return result;
          }

          v54 = *(v11 + 16);
          v53 = v11 + 16;
          v68 = *(v53 + 56);
          v69 = v54;
          v55 = (v53 - 8);
          while (1)
          {
            (v69)(v15, &v70[v68 * v52], v10);
            v56 = *a4;
            sub_19794A664(&qword_1ED880FE0, 255, MEMORY[0x1E69695A8]);
            v57 = sub_197A878E8();
            result = (*v55)(v15, v10);
            v58 = 1 << *a4;
            v26 = __OFSUB__(v58, 1);
            v59 = v58 - 1;
            if (v26)
            {
              goto LABEL_57;
            }

            v60 = v59 & v57;
            v61 = sub_197A872D8();
            *&v71 = a4;
            *(&v71 + 1) = a5;
            *&v72 = v60;
            *(&v72 + 1) = v61;
            *&v73 = v62;
            *(&v73 + 1) = v63;
            v74 = 0;
            while (*(&v72 + 1))
            {
              v75 = v71;
              v76 = v72;
              v77 = v73;
              v78 = v74;
              v64 = sub_197A87318();
              if ((v65 & 1) == 0 && v64 == a2)
              {
                break;
              }

              sub_197A87338();
            }

            result = a2 - v19;
            if (__OFSUB__(a2, v19))
            {
              goto LABEL_58;
            }

            result = sub_197A87328();
            v26 = __OFADD__(a2++, 1);
            if (v26)
            {
              goto LABEL_59;
            }

            if (++v52 == v67)
            {
              return swift_unknownObjectRelease();
            }
          }
        }

        return swift_unknownObjectRelease();
      }
    }

    else
    {
      result = MEMORY[0x19A8EA600](*a4 & 0x3F);
      if (result / 3 <= a1)
      {
        v38 = sub_197A872D8();
        *&v71 = a4;
        *(&v71 + 1) = a5;
        *&v72 = 0;
        *(&v72 + 1) = v38;
        *&v73 = v39;
        *(&v73 + 1) = v40;
        v74 = 0;
        do
        {
          v75 = v71;
          v76 = v72;
          v77 = v73;
          v78 = v74;
          v41 = sub_197A87318();
          if ((v42 & 1) == 0 && v41 < a1)
          {
            v26 = __OFADD__(v41, v19);
            result = v41 + v19;
            if (v26)
            {
              goto LABEL_55;
            }

            sub_197A87328();
          }

          result = sub_197A87338();
        }

        while (v72);
      }

      else
      {
        if (a1 < 0)
        {
LABEL_64:
          __break(1u);
          goto LABEL_65;
        }

        if (v20 < a1)
        {
LABEL_65:
          __break(1u);
          goto LABEL_66;
        }

        result = v67;
        if (a1)
        {
          v21 = *(v11 + 16);
          v69 = (v67 + ((*(v11 + 80) + 32) & ~*(v11 + 80)));
          v70 = v21;
          v68 = *(v11 + 72);

          v22 = 0;
          while (1)
          {
            (v70)(v18, &v69[v68 * v22], v10);
            v23 = *a4;
            sub_19794A664(&qword_1ED880FE0, 255, MEMORY[0x1E69695A8]);
            v24 = sub_197A878E8();
            result = (*(v11 + 8))(v18, v10);
            v25 = 1 << *a4;
            v26 = __OFSUB__(v25, 1);
            v27 = v25 - 1;
            if (v26)
            {
              break;
            }

            v28 = v27 & v24;
            v29 = sub_197A872D8();
            *&v71 = a4;
            *(&v71 + 1) = a5;
            *&v72 = v28;
            *(&v72 + 1) = v29;
            *&v73 = v30;
            *(&v73 + 1) = v31;
            v74 = 0;
            while (*(&v72 + 1))
            {
              v75 = v71;
              v76 = v72;
              v77 = v73;
              v78 = v74;
              v32 = sub_197A87318();
              if ((v33 & 1) == 0 && v32 == v22)
              {
                break;
              }

              sub_197A87338();
            }

            result = v22 + v19;
            if (__OFADD__(v22, v19))
            {
              goto LABEL_54;
            }

            ++v22;
            sub_197A87328();
            if (v22 == a1)
            {

              goto LABEL_29;
            }
          }

          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }
      }

LABEL_29:
      v43 = a4[1];
      if (__OFSUB__(v43 >> 6, v19))
      {
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      v44 = 1 << *a4;
      v26 = __OFSUB__(v44, 1);
      v45 = v44 - 1;
      if (v26)
      {
LABEL_63:
        __break(1u);
        goto LABEL_64;
      }

      v46 = (v45 & (((v43 >> 6) - v19) >> 63)) + (v43 >> 6) - v19;
      if (v46 < v45)
      {
        v45 = 0;
      }

      a4[1] = a4[1] & 0x3F | ((v46 - v45) << 6);
    }
  }

  return result;
}

unint64_t sub_197A431B8(unint64_t result, unint64_t a2)
{
  if (result != a2)
  {
    v3 = result;
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v4 = *v2;
      v5 = *(*v2 + 16);
      if (v5 > result)
      {
        if (v5 > a2)
        {
          v7 = *(v4 + 32 + 8 * result);
          v8 = *(v4 + 32 + 8 * a2);
          sub_197A878A8();
          sub_197A878A8();
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_197A4285C(v4);
            v4 = result;
          }

          if (*(v4 + 16) > v3)
          {
            v9 = v4 + 32;
            v10 = *(v4 + 32 + 8 * v3);
            *(v4 + 32 + 8 * v3) = v8;

            if (*(v4 + 16) > a2)
            {
              v11 = *(v9 + 8 * a2);
              *(v9 + 8 * a2) = v7;

              *v2 = v4;
              return result;
            }

LABEL_15:
            __break(1u);
            return result;
          }

LABEL_14:
          __break(1u);
          goto LABEL_15;
        }

LABEL_13:
        __break(1u);
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_13;
  }

  return result;
}

void sub_197A43298()
{
  if (*(*v0 + 16))
  {
    if (!sub_197A445C0())
    {
      v1 = *(*v0 + 16) - 1;

      sub_197A426F8(v1);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_197A432E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  if (a3)
  {

    v10 = sub_197A41EFC(a4, a1, a2, (a3 + 16));
    v12 = v11;
    v14 = v13;
  }

  else
  {
    result = sub_197A41D7C(a4, a1, a2);
    v10 = result;
    v12 = v16;
    v14 = 0;
  }

  *a5 = v10;
  *(a5 + 8) = v12 & 1;
  *(a5 + 16) = v14;
  return result;
}

void sub_197A433FC(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_101_2();
  if (v6 != v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = v4;
  v9 = a2 - v4;
  if (__OFSUB__(a2, v4))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v4 - a2;
  if (__OFSUB__(0, v9))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (__OFADD__(v5, v10))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_197A410EC(v5 - v9, 1, sub_197A1EEBC);
  v11 = *v2;
  v12 = *v2 + 32;
  v13 = (v12 + 40 * v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A1B8, qword_197A967D0);
  OUTLINED_FUNCTION_99_4();
  swift_arrayDestroy();
  if (!v9)
  {
LABEL_10:
    *v2 = v11;
    return;
  }

  v14 = *(v11 + 16);
  if (__OFSUB__(v14, a2))
  {
    goto LABEL_16;
  }

  sub_197A1F648((v12 + 40 * a2), v14 - a2, v13);
  v15 = *(v11 + 16);
  v7 = __OFADD__(v15, v10);
  v16 = v15 - v9;
  if (!v7)
  {
    *(v11 + 16) = v16;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
}

void sub_197A434F4(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_101_2();
  if (v6 != v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = v4;
  v9 = a2 - v4;
  if (__OFSUB__(a2, v4))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v4 - a2;
  if (__OFSUB__(0, v9))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (__OFADD__(v5, v10))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_197A410EC(v5 - v9, 1, sub_197A1EFEC);
  v11 = *v2;
  v12 = *v2 + 32;
  v13 = v12 + 8 * v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A1A8, &qword_197A981C0);
  OUTLINED_FUNCTION_99_4();
  swift_arrayDestroy();
  if (!v9)
  {
LABEL_10:
    *v2 = v11;
    return;
  }

  v14 = *(v11 + 16);
  if (__OFSUB__(v14, a2))
  {
    goto LABEL_16;
  }

  sub_197A21910(v12 + 8 * a2, v14 - a2, v13);
  v15 = *(v11 + 16);
  v7 = __OFADD__(v15, v10);
  v16 = v15 - v9;
  if (!v7)
  {
    *(v11 + 16) = v16;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
}

void sub_197A435E4()
{
  OUTLINED_FUNCTION_67();
  if (v2 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v3 = v1;
  OUTLINED_FUNCTION_101_2();
  if (v9 != v10)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v11 = v4;
  v12 = v3 - v4;
  if (__OFSUB__(v3, v4))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = v4 - v3;
  if (__OFSUB__(0, v12))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (__OFADD__(v8, v13))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = v7;
  v15 = v6;
  sub_197A410EC(v8 - v12, 1, v5);
  v16 = *v0;
  v17 = *(v15(0) - 8);
  v18 = v16 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  v19 = *(v17 + 72);
  v20 = v18 + v19 * v11;
  swift_arrayDestroy();
  if (!v12)
  {
LABEL_10:
    *v0 = v16;
    OUTLINED_FUNCTION_66();
    return;
  }

  v21 = *(v16 + 16);
  if (__OFSUB__(v21, v3))
  {
    goto LABEL_16;
  }

  v14(v18 + v19 * v3, v21 - v3, v20);
  v22 = *(v16 + 16);
  v10 = __OFADD__(v22, v13);
  v23 = v22 - v12;
  if (!v10)
  {
    *(v16 + 16) = v23;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
}

uint64_t dispatch thunk of ModelServiceClientProtocol.establishment(of:)()
{
  OUTLINED_FUNCTION_262();
  OUTLINED_FUNCTION_33();
  v3 = *(OUTLINED_FUNCTION_37_0(v0, v1, v2) + 8);
  OUTLINED_FUNCTION_23();
  v19 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_20(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_10_0(v8);
  OUTLINED_FUNCTION_261();

  return v13(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t dispatch thunk of ModelServiceClientProtocol.deleteSessionRequest(id:)()
{
  OUTLINED_FUNCTION_262();
  OUTLINED_FUNCTION_33();
  v3 = *(OUTLINED_FUNCTION_37_0(v0, v1, v2) + 16);
  OUTLINED_FUNCTION_23();
  v19 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_20(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_10_0(v8);
  OUTLINED_FUNCTION_261();

  return v13(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t dispatch thunk of ModelServiceClientProtocol.cancelSessionRequest(session:)()
{
  OUTLINED_FUNCTION_262();
  OUTLINED_FUNCTION_33();
  v3 = *(OUTLINED_FUNCTION_37_0(v0, v1, v2) + 24);
  OUTLINED_FUNCTION_23();
  v19 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_20(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_10_0(v8);
  OUTLINED_FUNCTION_261();

  return v13(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t dispatch thunk of ModelServiceClientProtocol.prewarmSession(session:metadata:)()
{
  OUTLINED_FUNCTION_49_0();
  v4 = *(OUTLINED_FUNCTION_115(v0, v1, v2, v3) + 32);
  OUTLINED_FUNCTION_26();
  v13 = v5 + *v5;
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_20(v8);
  *v9 = v10;
  OUTLINED_FUNCTION_43(v9);
  OUTLINED_FUNCTION_22_5();

  return v11();
}

uint64_t dispatch thunk of ModelServiceClientProtocol.fetchModelInstance(session:)()
{
  OUTLINED_FUNCTION_49_0();
  v4 = *(OUTLINED_FUNCTION_115(v0, v1, v2, v3) + 40);
  OUTLINED_FUNCTION_26();
  v13 = v5 + *v5;
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_8_0(v8);
  *v9 = v10;
  v9[1] = sub_197960FB0;
  OUTLINED_FUNCTION_22_5();

  return v11();
}

uint64_t dispatch thunk of ModelServiceClientProtocol.executeRequest(session:metadata:)()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_10_3(v0, v1, v2, v3, v4);
  v6 = *(v5 + 48);
  v22 = v5 + 48;
  OUTLINED_FUNCTION_23();
  v23 = v7 + *v7;
  v9 = *(v8 + 4);
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_8_0(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_220(v11);
  OUTLINED_FUNCTION_117();

  return v18(v13, v14, v15, v16, v17, v18, v19, v20, v22, v23);
}

uint64_t dispatch thunk of ModelServiceClientProtocol.cancelRequest(id:session:)()
{
  OUTLINED_FUNCTION_49_0();
  v4 = *(OUTLINED_FUNCTION_115(v0, v1, v2, v3) + 56);
  OUTLINED_FUNCTION_26();
  v13 = v5 + *v5;
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_20(v8);
  *v9 = v10;
  OUTLINED_FUNCTION_43(v9);
  OUTLINED_FUNCTION_22_5();

  return v11();
}

uint64_t dispatch thunk of ModelServiceClientProtocol.executeInputStreamRequest(session:metadata:)()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_10_3(v0, v1, v2, v3, v4);
  v6 = *(v5 + 72);
  v22 = v5 + 72;
  OUTLINED_FUNCTION_23();
  v23 = v7 + *v7;
  v9 = *(v8 + 4);
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_8_0(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_220(v11);
  OUTLINED_FUNCTION_117();

  return v18(v13, v14, v15, v16, v17, v18, v19, v20, v22, v23);
}

uint64_t dispatch thunk of ModelServiceClientProtocol.addInputToRequest(session:metadata:)()
{
  OUTLINED_FUNCTION_49_0();
  v4 = *(OUTLINED_FUNCTION_115(v0, v1, v2, v3) + 80);
  OUTLINED_FUNCTION_26();
  v13 = v5 + *v5;
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_20(v8);
  *v9 = v10;
  OUTLINED_FUNCTION_43(v9);
  OUTLINED_FUNCTION_22_5();

  return v11();
}

uint64_t dispatch thunk of ModelServiceClientProtocol.executePendingRequests(id:)()
{
  OUTLINED_FUNCTION_49_0();
  v4 = *(OUTLINED_FUNCTION_115(v0, v1, v2, v3) + 88);
  OUTLINED_FUNCTION_26();
  v13 = v5 + *v5;
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_8_0(v8);
  *v9 = v10;
  v9[1] = sub_197960FB0;
  OUTLINED_FUNCTION_22_5();

  return v11();
}

uint64_t dispatch thunk of ModelServiceClientProtocol.startMonitoringInferences(endpoint:)()
{
  OUTLINED_FUNCTION_262();
  OUTLINED_FUNCTION_33();
  v3 = *(OUTLINED_FUNCTION_37_0(v0, v1, v2) + 96);
  OUTLINED_FUNCTION_23();
  v19 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_20(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_10_0(v8);
  OUTLINED_FUNCTION_261();

  return v13(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t get_enum_tag_for_layout_string_20ModelManagerServices27InferenceProviderDescriptorVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
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

uint64_t sub_197A44240(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 41))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_197A44294(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void sub_197A4434C()
{
  sub_1979728D4();
  if (v0 <= 0x3F)
  {
    sub_197A44570(319, &qword_1ED880FB0, type metadata accessor for ClientData);
    if (v1 <= 0x3F)
    {
      type metadata accessor for InferenceProviderXPCSender();
      if (v2 <= 0x3F)
      {
        sub_197A44424();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_197A44424()
{
  if (!qword_1ED87D758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF4A440, &qword_197A98100);
    v0 = sub_197A87DB8();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED87D758);
    }
  }
}

void sub_197A444B0()
{
  type metadata accessor for RequestMetadata(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for InferenceProviderRequestResult(319);
    if (v1 <= 0x3F)
    {
      sub_197A44570(319, &qword_1ED87FD90, type metadata accessor for RunningBoardSelfAssertionToken);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_197A44570(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    OUTLINED_FUNCTION_133_0();
    v4 = sub_197A87DB8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_197A445C0()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_197A4285C(v1);
    v1 = result;
  }

  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = v3 - 1;
    result = *(v1 + 8 * v4 + 32);
    *(v1 + 16) = v4;
    *v0 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_197A44618(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v13[3] = sub_197A876C8();
  v13[4] = &protocol witness table for XPCSession;
  v13[0] = a1;
  swift_defaultActor_initialize();
  v8 = sub_197A87C08();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  sub_197947C44(v13, v12);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  sub_197945EF8(v12, v9 + 32);
  v10 = sub_1979CC2F8();
  __swift_destroy_boxed_opaque_existential_1Tm(v13);
  *(a2 + 112) = v10;
  return a2;
}

uint64_t sub_197A4474C()
{
  OUTLINED_FUNCTION_18();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for RequestMetadata(0);
  OUTLINED_FUNCTION_28(v5);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_8_0(v8);
  *v9 = v10;
  v9[1] = sub_197960FB0;

  return sub_197A38D84(v4, v2, v0 + v7);
}

uint64_t sub_197A44820()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_43(v3);

  return sub_197A39350(v1);
}

uint64_t sub_197A448A8()
{
  OUTLINED_FUNCTION_18();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_8_0(v4);
  *v5 = v6;
  v5[1] = sub_197960FB0;
  OUTLINED_FUNCTION_81();

  return sub_197A38CF4();
}

uint64_t sub_197A44944()
{
  OUTLINED_FUNCTION_49_0();
  v1 = type metadata accessor for RequestMetadata(0);
  OUTLINED_FUNCTION_10(v1);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = *(v0 + ((*(v3 + 64) + ((*(v2 + 80) + 40) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_8_0(v8);
  *v9 = v10;
  v9[1] = sub_197960E38;
  v11 = OUTLINED_FUNCTION_81();

  return sub_197A3C988(v11, v12, v13, v6, v14, v7);
}

uint64_t sub_197A44A54()
{
  OUTLINED_FUNCTION_71();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_3_14(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_22();
  v7(v6);
  return v0;
}

uint64_t OUTLINED_FUNCTION_116_4()
{
  v2 = *(v0 + 24);

  return sub_197A87298();
}

uint64_t OUTLINED_FUNCTION_145_2()
{

  return sub_197A878F8();
}

void sub_197A44B2C()
{
  v2 = v0[19];
  v1 = v0[20];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[12];
  v14 = v0[13];
  v15 = v0[15];
  v7 = v0[10];
  v6 = v0[11];
  v9 = v0[8];
  v8 = v0[9];
  v10 = v0[7];

  sub_19795EB50(v3);
  (*(v4 + 8))(v3, v15);

  OUTLINED_FUNCTION_13();
  v11 = v0[22];
  OUTLINED_FUNCTION_142();

  __asm { BRAA            X1, X16 }
}

uint64_t IPCSession.sendWithTaskCancellation<A>(_:)()
{
  OUTLINED_FUNCTION_9();
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  v1[6] = v5;
  v1[7] = v6;
  v1[5] = v7;
  v8 = type metadata accessor for TaskCancellableMessage();
  v1[12] = v8;
  v9 = *(v8 - 8);
  v1[13] = v9;
  v10 = *(v9 + 64) + 15;
  v1[14] = swift_task_alloc();
  OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_197A44CD8()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[6];
  v4 = v0[7];
  v21 = v0[14];
  v5 = v0[9];
  v6 = v0[10];
  static TaskCancellableMessage.wrapMessage(_:)(v0[5], v4, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAF4A2C8, &unk_197A974C0);
  inited = swift_initStackObject();
  v0[15] = inited;
  *(inited + 20) = 0;
  *(inited + 16) = 0;
  v8 = swift_task_alloc();
  v0[16] = v8;
  v8[2] = v3;
  v8[3] = v4;
  v8[4] = v2;
  v8[5] = v5;
  v8[6] = v6;
  v8[7] = inited;
  v8[8] = v21;
  v8[9] = v1;
  v9 = swift_task_alloc();
  v0[17] = v9;
  v9[2] = v3;
  v9[3] = v4;
  v9[4] = v2;
  v9[5] = v5;
  v9[6] = v6;
  v9[7] = inited;
  v9[8] = v1;
  v9[9] = v21;
  v10 = *(MEMORY[0x1E69E88F0] + 4);
  v11 = swift_task_alloc();
  v0[18] = v11;
  *v11 = v0;
  v11[1] = sub_197A44E6C;
  OUTLINED_FUNCTION_142();

  return MEMORY[0x1EEE6DE18](v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_197A44E6C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v6 = *(v5 + 144);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  v3[19] = v0;

  if (!v0)
  {
    v10 = v3[16];
    v9 = v3[17];
  }

  OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_197A44F74()
{
  OUTLINED_FUNCTION_9();
  (*(v0[13] + 8))(v0[14], v0[12]);

  OUTLINED_FUNCTION_13();

  return v1();
}

uint64_t sub_197A44FEC()
{
  v2 = v0[16];
  v1 = v0[17];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[12];

  (*(v4 + 8))(v3, v5);

  OUTLINED_FUNCTION_13();
  v7 = v0[19];

  return v6();
}

uint64_t sub_197A45084()
{
  v0 = sub_197A87608();
  __swift_allocate_value_buffer(v0, qword_1ED880470);
  __swift_project_value_buffer(v0, qword_1ED880470);
  return sub_197A875F8();
}

uint64_t sub_197A450F4()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 104);

  OUTLINED_FUNCTION_13();
  v3 = *(v0 + 120);

  return v2();
}

uint64_t sub_197A45150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a4;
  v27 = a2;
  v29 = *MEMORY[0x1E69E9840];
  v5 = type metadata accessor for TaskCancellableMessage();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v26 - v11;
  type metadata accessor for _OSActivity();
  swift_initStackObject();
  v13 = sub_1979489D4("XPC message with reply cancelled", 32, 2);
  if (qword_1ED880278 != -1)
  {
    swift_once();
  }

  v14 = sub_197A87608();
  __swift_project_value_buffer(v14, qword_1ED880470);
  (*(v6 + 16))(v12, a1, v5);
  v15 = sub_197A875E8();
  v16 = sub_197A87D48();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v26 = a1;
    v18 = v17;
    *v17 = 134217984;
    v19 = sub_1979BA440(v5);
    v20 = *(v6 + 8);
    v20(v12, v5);
    *(v18 + 1) = v19;
    _os_log_impl(&dword_197941000, v15, v16, "Task for message %llu cancelled, sending cancellation message.", v18, 0xCu);
    MEMORY[0x19A8EBE00](v18, -1, -1);
  }

  else
  {
    v20 = *(v6 + 8);
    v20(v12, v5);
  }

  sub_1979BA2E4(v5, v10);
  v21 = v28;
  v22 = *(v28 + 32);
  WitnessTable = swift_getWitnessTable();
  v22(v10, v5, WitnessTable, v27, v21);
  v20(v10, v5);
  swift_beginAccess();
  os_activity_scope_leave((v13 + 3));
  swift_endAccess();

  v25 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_197A4547C(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 20));
  sub_197A45A78((a1 + 16));
  os_unfair_lock_unlock((a1 + 20));
}

void sub_197A454E4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[10];
  v7 = v0[11];
  v8 = v0[7];
  v9 = v0[8];
  sub_197A4547C(v0[9]);
}

uint64_t sub_197A4551C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v10;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_197A45554, 0, 0);
}

uint64_t sub_197A45554()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  v5 = *(v0 + 64);
  v6 = *(v0 + 32);
  *(v4 + 16) = *(v0 + 48);
  *(v4 + 32) = v5;
  *(v4 + 48) = v1;
  *(v4 + 56) = v6;
  os_unfair_lock_lock((v3 + 20));
  sub_197A45A50((v3 + 16));
  os_unfair_lock_unlock((v3 + 20));

  OUTLINED_FUNCTION_13();

  return v7();
}

uint64_t sub_197A4561C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v9 = v0[8];
  v8 = v0[9];
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v1 + 16) = v10;
  *v10 = v11;
  v10[1] = sub_197960FB0;
  v12 = OUTLINED_FUNCTION_0_22();

  return sub_197A4551C(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_197A456E4(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = a4;
  v31 = a6;
  v27 = a5;
  v28 = a1;
  v8 = type metadata accessor for TaskCancellableMessage();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v26 - v11;
  if (qword_1ED880278 != -1)
  {
    swift_once();
  }

  v13 = sub_197A87608();
  __swift_project_value_buffer(v13, qword_1ED880470);
  v14 = *(v9 + 16);
  v32 = a2;
  v14(v12, a2, v8);
  v15 = sub_197A875E8();
  v16 = sub_197A87D48();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v26 = a3;
    v18 = v17;
    *v17 = 134217984;
    v19 = sub_1979BA440(v8);
    (*(v9 + 8))(v12, v8);
    *(v18 + 1) = v19;
    _os_log_impl(&dword_197941000, v15, v16, "Sending message %llu.", v18, 0xCu);
    MEMORY[0x19A8EBE00](v18, -1, -1);
  }

  else
  {
    (*(v9 + 8))(v12, v8);
  }

  v20 = v31;
  v21 = *(v31 + 32);
  WitnessTable = swift_getWitnessTable();
  v23 = v29;
  v24 = v30;
  result = v21(v32, v8, WitnessTable, v30, v20);
  if (!v23)
  {
    *v28 = 1;
    result = sub_197A87C68();
    if (result)
    {
      return sub_197A45150(v32, v24, v27, v20);
    }
  }

  return result;
}

void sub_197A45994(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 20));
  sub_197A45A08((a1 + 16));
  os_unfair_lock_unlock((a1 + 20));
}

void sub_197A459F4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[8];
  v7 = v0[9];
  sub_197A45994(v0[7]);
}

_BYTE *sub_197A45A08(_BYTE *result)
{
  if (*result == 1)
  {
    v2 = v1[8];
    v3 = v1[5];
    v4 = v1[6];
    v5 = v1[3];
    v6 = v1[4];
    v7 = v1[2];
    v8 = v1[7];
    return sub_197A45150(v2, v7, v5, v6);
  }

  return result;
}

uint64_t sub_197A45A50(_BYTE *a1)
{
  v2 = v1[5];
  v3 = v1[6];
  return sub_197A456E4(a1, v1[7], v1[8], v1[2], v1[3], v1[4]);
}

_BYTE *sub_197A45A78(_BYTE *result)
{
  if (*result == 1)
  {
    v2 = v1[10];
    v3 = v1[6];
    v4 = v1[7];
    v5 = v1[5];
    v6 = v1[2];
    v7 = v1[3];
    v8 = v1[9];
    return sub_197A45150(v2, v6, v7, v5);
  }

  return result;
}

uint64_t sub_197A45AC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModelManagerError();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_197A45BA0()
{
  OUTLINED_FUNCTION_33();
  v1 = *(OUTLINED_FUNCTION_3_15(*(v0 + 16)) + 8);
  OUTLINED_FUNCTION_26();
  v9 = v2 + *v2;
  v4 = *(v3 + 4);
  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_197A36874;
  v6 = OUTLINED_FUNCTION_7_10();

  return v7(v6);
}

uint64_t sub_197A45CB0()
{
  OUTLINED_FUNCTION_33();
  v1 = *(OUTLINED_FUNCTION_3_15(*(v0 + 16)) + 16);
  OUTLINED_FUNCTION_26();
  v9 = v2 + *v2;
  v4 = *(v3 + 4);
  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_197A4849C;
  v6 = OUTLINED_FUNCTION_7_10();

  return v7(v6);
}

uint64_t Query.totalLoadedAssetMemoryCost.getter()
{
  OUTLINED_FUNCTION_9();
  v1[2] = v0;
  v2 = *(type metadata accessor for AssetInfo() - 8);
  OUTLINED_FUNCTION_23();
  v1[3] = v3;
  v5 = *(v4 + 64) + 15;
  v1[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_197A45E60, 0, 0);
}

uint64_t sub_197A45E60()
{
  OUTLINED_FUNCTION_33();
  v1 = *(OUTLINED_FUNCTION_3_15(*(v0 + 16)) + 8);
  OUTLINED_FUNCTION_26();
  v9 = v2 + *v2;
  v4 = *(v3 + 4);
  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  *v5 = v0;
  v5[1] = sub_197A45F5C;
  v6 = OUTLINED_FUNCTION_7_10();

  return v7(v6);
}

uint64_t sub_197A45F5C()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_12();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  *v4 = *v1;
  *(v3 + 48) = v8;

  if (v0)
  {
    v9 = *(v3 + 32);

    v10 = *(v7 + 8);

    return v10();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_197A460A4, 0, 0);
  }
}

uint64_t sub_197A460A4()
{
  v1 = v0[6];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v0[3];
    v5 = v0[4];
    v6 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v7 = *(v4 + 72);
    while (1)
    {
      v8 = v0[4];
      sub_197A46194(v6, v8);
      v9 = *(v5 + 32);
      result = sub_197A461F8(v8);
      v11 = __CFADD__(v3, v9);
      v3 += v9;
      if (v11)
      {
        break;
      }

      v6 += v7;
      if (!--v2)
      {
        v12 = v0[6];

        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {

    v3 = 0;
LABEL_7:
    v13 = v0[4];

    v14 = v0[1];

    return v14(v3);
  }

  return result;
}

uint64_t sub_197A46194(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetInfo();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_197A461F8(uint64_t a1)
{
  v2 = type metadata accessor for AssetInfo();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Query.totalDynamicAssetMemoryCost.getter()
{
  OUTLINED_FUNCTION_9();
  v1[2] = v0;
  v2 = *(type metadata accessor for AssetInfo() - 8);
  OUTLINED_FUNCTION_23();
  v1[3] = v3;
  v5 = *(v4 + 64) + 15;
  v1[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_197A46308, 0, 0);
}

uint64_t sub_197A46308()
{
  OUTLINED_FUNCTION_33();
  v1 = *(OUTLINED_FUNCTION_3_15(*(v0 + 16)) + 16);
  OUTLINED_FUNCTION_26();
  v9 = v2 + *v2;
  v4 = *(v3 + 4);
  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  *v5 = v0;
  v5[1] = sub_197A46404;
  v6 = OUTLINED_FUNCTION_7_10();

  return v7(v6);
}

uint64_t sub_197A46404()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_12();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  *v4 = *v1;
  *(v3 + 48) = v8;

  if (v0)
  {
    v9 = *(v3 + 32);

    v10 = *(v7 + 8);

    return v10();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_197A48498, 0, 0);
  }
}

uint64_t Query.effectivePolicy.getter(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2_2();
}

uint64_t sub_197A46560()
{
  OUTLINED_FUNCTION_33();
  v1 = *(OUTLINED_FUNCTION_3_15(*(v0 + 24)) + 24);
  OUTLINED_FUNCTION_26();
  v10 = v2 + *v2;
  v4 = *(v3 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v0 + 32) = v5;
  *v5 = v6;
  v5[1] = sub_19796D708;
  v7 = *(v0 + 16);
  OUTLINED_FUNCTION_8_11();

  return v8();
}

uint64_t Query.policy(named:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_2_2();
}

uint64_t sub_197A46678()
{
  OUTLINED_FUNCTION_33();
  v1 = *(OUTLINED_FUNCTION_3_15(*(v0 + 40)) + 32);
  OUTLINED_FUNCTION_26();
  v11 = (v2 + *v2);
  v4 = *(v3 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v0 + 48) = v5;
  *v5 = v6;
  v5[1] = sub_1979DB0F0;
  v7 = *(v0 + 24);
  v8 = *(v0 + 32);
  v9 = OUTLINED_FUNCTION_185();

  return v11(v9);
}

uint64_t Query.disabledUseCases()()
{
  OUTLINED_FUNCTION_9();
  v4 = *MEMORY[0x1E69E9840];
  *(v1 + 104) = v0;
  v2 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_197A46810, 0, 0);
}

uint64_t sub_197A46810()
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = v0[13];
  type metadata accessor for _OSActivity();
  v0[14] = swift_initStackObject();
  v0[15] = sub_1979489D4("Fetching disabled use cases", 27, 2);
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v3 = *(v2 + 40);
  OUTLINED_FUNCTION_23();
  v12 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v0[16] = v7;
  *v7 = v0;
  v7[1] = sub_197A46988;
  v8 = *MEMORY[0x1E69E9840];
  v9 = OUTLINED_FUNCTION_7_10();

  return v10(v9);
}

uint64_t sub_197A46988(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = *v2;
  OUTLINED_FUNCTION_12();
  *v5 = v4;
  v7 = *(v6 + 128);
  v8 = *v2;
  OUTLINED_FUNCTION_2_0();
  *v9 = v8;
  *(v4 + 136) = v1;

  if (v1)
  {
    v10 = sub_197A46B84;
  }

  else
  {
    *(v4 + 144) = a1;
    v10 = sub_197A46ACC;
  }

  v11 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

uint64_t sub_197A46ACC()
{
  OUTLINED_FUNCTION_9();
  v6 = *MEMORY[0x1E69E9840];
  v1 = v0[15];
  swift_beginAccess();
  os_activity_scope_leave((v1 + 24));
  swift_endAccess();

  v2 = v0[1];
  v3 = v0[18];
  v4 = *MEMORY[0x1E69E9840];

  return v2(v3);
}

uint64_t sub_197A46B84()
{
  OUTLINED_FUNCTION_9();
  v6 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 120);
  swift_beginAccess();
  os_activity_scope_leave((v1 + 24));
  swift_endAccess();

  OUTLINED_FUNCTION_13();
  v3 = *(v0 + 136);
  v4 = *MEMORY[0x1E69E9840];

  return v2();
}

uint64_t sub_197A46C48()
{
  OUTLINED_FUNCTION_33();
  v1 = *(OUTLINED_FUNCTION_3_15(*(v0 + 16)) + 48);
  OUTLINED_FUNCTION_26();
  v10 = v2 + *v2;
  v4 = *(v3 + 4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_13_7(v5);
  *v6 = v7;
  v6[1] = sub_197A46D44;
  OUTLINED_FUNCTION_8_11();

  return v8();
}

uint64_t sub_197A46D44()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_12();
  *v3 = v2;
  v5 = *(v4 + 24);
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v8 + 32) = v0;

  if (v0)
  {
    v9 = sub_197A46E5C;
  }

  else
  {
    v9 = sub_197A46E44;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_197A46E5C()
{
  OUTLINED_FUNCTION_9();

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t Query.remoteAvailability.getter(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2_2();
}

uint64_t sub_197A46ED4()
{
  OUTLINED_FUNCTION_33();
  v1 = *(OUTLINED_FUNCTION_3_15(*(v0 + 24)) + 48);
  OUTLINED_FUNCTION_26();
  v10 = v2 + *v2;
  v4 = *(v3 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v0 + 32) = v5;
  *v5 = v6;
  v5[1] = sub_197A46FD4;
  v7 = *(v0 + 16);
  OUTLINED_FUNCTION_8_11();

  return v8();
}

uint64_t sub_197A46FD4()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_12();
  *v3 = v2;
  v5 = *(v4 + 32);
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v8 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_197A470F0, 0, 0);
  }

  else
  {
    OUTLINED_FUNCTION_13();

    return v9();
  }
}

uint64_t sub_197A470F0()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 16);

  *v1 = 0;
  OUTLINED_FUNCTION_13();

  return v2();
}

uint64_t sub_197A47168()
{
  OUTLINED_FUNCTION_33();
  v1 = *(OUTLINED_FUNCTION_3_15(*(v0 + 16)) + 48);
  OUTLINED_FUNCTION_26();
  v10 = v2 + *v2;
  v4 = *(v3 + 4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_13_7(v5);
  *v6 = v7;
  v6[1] = sub_197A47264;
  OUTLINED_FUNCTION_8_11();

  return v8();
}

uint64_t sub_197A47264()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_12();
  *v3 = v2;
  v5 = *(v4 + 24);
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v8 + 32) = v0;

  if (v0)
  {
    v9 = sub_197A48494;
  }

  else
  {
    v9 = sub_197A47364;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_197A4738C()
{
  OUTLINED_FUNCTION_33();
  v1 = *(OUTLINED_FUNCTION_3_15(*(v0 + 16)) + 48);
  OUTLINED_FUNCTION_26();
  v10 = v2 + *v2;
  v4 = *(v3 + 4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_13_7(v5);
  *v6 = v7;
  v6[1] = sub_197A47488;
  OUTLINED_FUNCTION_8_11();

  return v8();
}

uint64_t sub_197A47488()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_12();
  *v3 = v2;
  v5 = *(v4 + 24);
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v8 + 32) = v0;

  if (v0)
  {
    v9 = sub_197A48494;
  }

  else
  {
    v9 = sub_197A47588;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_197A475B0()
{
  OUTLINED_FUNCTION_9();
  if (qword_1ED880698 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20(v0);
  *v1 = v2;
  v1[1] = sub_1979DE4A4;

  return ModelXPCSender.fetchAllAssetInfo()();
}

uint64_t sub_197A47674()
{
  OUTLINED_FUNCTION_9();
  if (qword_1ED880698 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20(v0);
  *v1 = v2;
  v1[1] = sub_197A05FA4;

  return ModelXPCSender.fetchDynamicAssetInfo()();
}

uint64_t sub_197A47738()
{
  OUTLINED_FUNCTION_9();
  if (qword_1ED880698 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_13_7(v0);
  *v1 = v2;
  v1[1] = sub_19796E2B4;
  OUTLINED_FUNCTION_185();

  return ModelXPCSender.fetchEffectivePolicy()();
}

uint64_t Query.LiveDaemonInterface.fetchPolicy(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return OUTLINED_FUNCTION_2_2();
}

uint64_t sub_197A47800()
{
  OUTLINED_FUNCTION_9();
  if (qword_1ED880698 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  v0[5] = v1;
  *v1 = v2;
  v1[1] = sub_197963740;
  v3 = v0[3];
  v4 = v0[4];
  OUTLINED_FUNCTION_185();

  return ModelXPCSender.fetchPolicy(_:)();
}

uint64_t sub_197A478CC()
{
  OUTLINED_FUNCTION_9();
  if (qword_1ED880698 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20(v0);
  *v1 = v2;
  v1[1] = sub_197A05FA4;

  return ModelXPCSender.fetchDisabledUseCases()();
}

uint64_t sub_197A47990()
{
  OUTLINED_FUNCTION_9();
  if (qword_1ED880698 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_13_7(v0);
  *v1 = v2;
  v1[1] = sub_19796E1D4;
  OUTLINED_FUNCTION_185();

  return ModelXPCSender.fetchAvailability()();
}

uint64_t sub_197A47A44()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_197A05FA4;

  return Query.LiveDaemonInterface.fetchAllAssetInfo()();
}

uint64_t sub_197A47AD0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_197A05FA4;

  return Query.LiveDaemonInterface.fetchDynamicAssetInfo()();
}

uint64_t sub_197A47B5C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_197960FB0;

  return Query.LiveDaemonInterface.fetchEffectivePolicy()(a1);
}

uint64_t sub_197A47BF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_197960E38;

  return Query.LiveDaemonInterface.fetchPolicy(_:)(a1, a2, a3);
}

uint64_t sub_197A47CA4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_197A05FA4;

  return Query.LiveDaemonInterface.fetchDisabledUseCases()();
}

uint64_t sub_197A47D30(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_197960FB0;

  return Query.LiveDaemonInterface.fetchAvailability()(a1);
}

uint64_t dispatch thunk of QueryDaemonInterface.fetchAllAssetInfo()()
{
  OUTLINED_FUNCTION_33();
  v2 = *(OUTLINED_FUNCTION_249(v0, v1) + 8);
  OUTLINED_FUNCTION_26();
  v12 = v3 + *v3;
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_20(v6);
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_14_12(v7);

  return v10(v9);
}

uint64_t dispatch thunk of QueryDaemonInterface.fetchDynamicAssetInfo()()
{
  OUTLINED_FUNCTION_33();
  v2 = *(OUTLINED_FUNCTION_249(v0, v1) + 16);
  OUTLINED_FUNCTION_26();
  v12 = v3 + *v3;
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_20(v6);
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_14_12(v7);

  return v10(v9);
}

uint64_t dispatch thunk of QueryDaemonInterface.fetchEffectivePolicy()()
{
  OUTLINED_FUNCTION_33();
  v4 = *(OUTLINED_FUNCTION_37_0(v1, v2, v3) + 24);
  OUTLINED_FUNCTION_23();
  v13 = v5 + *v5;
  v7 = *(v6 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v0 + 16) = v8;
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_19_13(v8);

  return v11(v10);
}

uint64_t dispatch thunk of QueryDaemonInterface.fetchPolicy(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 32);
  OUTLINED_FUNCTION_23();
  v18 = (v12 + *v12);
  v14 = *(v13 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v5 + 16) = v15;
  *v15 = v16;
  v15[1] = sub_197960E38;

  return v18(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of QueryDaemonInterface.fetchDisabledUseCases()()
{
  OUTLINED_FUNCTION_33();
  v2 = *(OUTLINED_FUNCTION_249(v0, v1) + 40);
  OUTLINED_FUNCTION_26();
  v12 = v3 + *v3;
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_20(v6);
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_14_12(v7);

  return v10(v9);
}

uint64_t dispatch thunk of QueryDaemonInterface.fetchAvailability()()
{
  OUTLINED_FUNCTION_33();
  v4 = *(OUTLINED_FUNCTION_37_0(v1, v2, v3) + 48);
  OUTLINED_FUNCTION_23();
  v13 = v5 + *v5;
  v7 = *(v6 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v0 + 16) = v8;
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_19_13(v8);

  return v11(v10);
}

_BYTE *storeEnumTagSinglePayload for Query.LiveDaemonInterface(_BYTE *result, int a2, int a3)
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

void _s20ModelManagerServices9IPCResultO3getxyq_YKF()
{
  OUTLINED_FUNCTION_169();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = *(v2 + 24);
  OUTLINED_FUNCTION_34_0();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1_0();
  v14 = v13 - v12;
  v16 = OUTLINED_FUNCTION_2(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_1_0();
  v21 = v20 - v19;
  (*(v22 + 16))(v20 - v19);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v14, v21, v6);
    (*(v8 + 16))(v1, v14, v6);
    v23 = *(v3 + 32);
    OUTLINED_FUNCTION_61();
    swift_willThrowTypedImpl();
    v24 = *(v8 + 8);
    v25 = OUTLINED_FUNCTION_170_0();
    v26(v25);
  }

  else
  {
    (*(*(*(v3 + 16) - 8) + 32))(v5, v21);
  }

  OUTLINED_FUNCTION_168();
}

uint64_t sub_197A4869C@<X0>(char a1@<W0>, uint64_t (*a2)(void)@<X2>, _BYTE *a3@<X8>)
{
  *a3 = a1;
  v3 = *(a2(0) + 20);
  OUTLINED_FUNCTION_37_10();
  return sub_197A49444();
}

uint64_t ModelXPCRequest.CancelRequest.init(id:sessionID:)()
{
  sub_19794B118();
  v0 = *(type metadata accessor for ModelXPCRequest.CancelRequest(0) + 20);
  return sub_19794B118();
}

uint64_t ModelXPCRequest.PrewarmSession.init(sessionID:metadata:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_19794B118();
  result = type metadata accessor for ModelXPCRequest.PrewarmSession(0);
  *(a2 + *(result + 20)) = a1;
  return result;
}

ModelManagerServices::ModelXPCRequest::LoadAssetBundle __swiftcall ModelXPCRequest.LoadAssetBundle.init(assetBundleIdentifier:dynamicMode:)(ModelManagerServices::ModelXPCRequest::LoadAssetBundle assetBundleIdentifier, Swift::Bool dynamicMode)
{
  *v2 = assetBundleIdentifier.assetBundleIdentifier;
  *(v2 + 16) = dynamicMode;
  assetBundleIdentifier.dynamicMode = dynamicMode;
  return assetBundleIdentifier;
}

uint64_t sub_197A48804(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_147_3();
    OUTLINED_FUNCTION_157_1();
    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_197A48864(uint64_t a1)
{
  v2 = sub_197A49E20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A488A0(uint64_t a1)
{
  v2 = sub_197A49E20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197A488DC(uint64_t a1)
{
  v2 = sub_197A49E74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A48918(uint64_t a1)
{
  v2 = sub_197A49E74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197A48954(uint64_t a1)
{
  v2 = sub_197966C38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A48990(uint64_t a1)
{
  v2 = sub_197966C38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197A489CC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_197A487FC();
  *a1 = result;
  return result;
}

uint64_t sub_197A489F4(uint64_t a1)
{
  v2 = sub_197951CA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A48A30(uint64_t a1)
{
  v2 = sub_197951CA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197A48A6C(uint64_t a1)
{
  v2 = sub_1979512B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A48AA8(uint64_t a1)
{
  v2 = sub_1979512B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197A48AE4(uint64_t a1)
{
  v2 = sub_197966494();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A48B20(uint64_t a1)
{
  v2 = sub_197966494();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197A48B5C(uint64_t a1)
{
  v2 = sub_197A49694();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A48B98(uint64_t a1)
{
  v2 = sub_197A49694();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197A48BD4(uint64_t a1)
{
  v2 = sub_197A49EC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A48C10(uint64_t a1)
{
  v2 = sub_197A49EC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197A48C4C(uint64_t a1)
{
  v2 = sub_197A49F1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A48C88(uint64_t a1)
{
  v2 = sub_197A49F1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197A48CC4(uint64_t a1)
{
  v2 = sub_197A49D24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A48D00(uint64_t a1)
{
  v2 = sub_197A49D24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197A48D3C(uint64_t a1)
{
  v2 = sub_197A49BD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A48D78(uint64_t a1)
{
  v2 = sub_197A49BD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197A48DB4(uint64_t a1)
{
  v2 = sub_197A49934();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A48DF0(uint64_t a1)
{
  v2 = sub_197A49934();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197A48E2C(uint64_t a1)
{
  v2 = sub_197A499DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A48E68(uint64_t a1)
{
  v2 = sub_197A499DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197A48EA4(uint64_t a1)
{
  v2 = sub_197A49B2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A48EE0(uint64_t a1)
{
  v2 = sub_197A49B2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197A48F1C(uint64_t a1)
{
  v2 = sub_197A49640();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A48F58(uint64_t a1)
{
  v2 = sub_197A49640();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197A48F94(uint64_t a1)
{
  v2 = sub_197A49A84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A48FD0(uint64_t a1)
{
  v2 = sub_197A49A84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197A4900C(uint64_t a1)
{
  v2 = sub_197A4973C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A49048(uint64_t a1)
{
  v2 = sub_197A4973C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197A49084(uint64_t a1)
{
  v2 = sub_197A497E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A490C0(uint64_t a1)
{
  v2 = sub_197A497E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197A490FC(uint64_t a1)
{
  v2 = sub_197A494F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A49138(uint64_t a1)
{
  v2 = sub_197A494F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197A49174(uint64_t a1)
{
  v2 = sub_197A4988C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A491B0(uint64_t a1)
{
  v2 = sub_197A4988C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197A491EC(uint64_t a1)
{
  v2 = sub_197964AD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A49228(uint64_t a1)
{
  v2 = sub_197964AD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197A49264(uint64_t a1)
{
  v2 = sub_197A49DCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A492A0(uint64_t a1)
{
  v2 = sub_197A49DCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197A492DC(uint64_t a1)
{
  v2 = sub_197A49C7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A49318(uint64_t a1)
{
  v2 = sub_197A49C7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197A49354(uint64_t a1)
{
  v2 = sub_197A49598();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A49390(uint64_t a1)
{
  v2 = sub_197A49598();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197A493CC(uint64_t a1)
{
  v2 = sub_197A4949C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A49408(uint64_t a1)
{
  v2 = sub_197A4949C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197A49444()
{
  OUTLINED_FUNCTION_71();
  v2 = v1(0);
  OUTLINED_FUNCTION_6(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_22();
  v6(v5);
  return v0;
}

unint64_t sub_197A4949C()
{
  result = qword_1ED87D1B0;
  if (!qword_1ED87D1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87D1B0);
  }

  return result;
}

unint64_t sub_197A494F0()
{
  result = qword_1EAF4A520;
  if (!qword_1EAF4A520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4A520);
  }

  return result;
}

unint64_t sub_197A49544()
{
  result = qword_1EAF4A528;
  if (!qword_1EAF4A528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4A528);
  }

  return result;
}

unint64_t sub_197A49598()
{
  result = qword_1EAF4A530;
  if (!qword_1EAF4A530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4A530);
  }

  return result;
}

unint64_t sub_197A495EC()
{
  result = qword_1EAF4A538;
  if (!qword_1EAF4A538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4A538);
  }

  return result;
}

unint64_t sub_197A49640()
{
  result = qword_1EAF4A540;
  if (!qword_1EAF4A540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4A540);
  }

  return result;
}

unint64_t sub_197A49694()
{
  result = qword_1EAF48850;
  if (!qword_1EAF48850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF48850);
  }

  return result;
}

unint64_t sub_197A496E8()
{
  result = qword_1EAF48738;
  if (!qword_1EAF48738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF48738);
  }

  return result;
}

unint64_t sub_197A4973C()
{
  result = qword_1ED87D1B8;
  if (!qword_1ED87D1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87D1B8);
  }

  return result;
}

unint64_t sub_197A49790()
{
  result = qword_1ED87D270;
  if (!qword_1ED87D270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87D270);
  }

  return result;
}

unint64_t sub_197A497E4()
{
  result = qword_1EAF4A550;
  if (!qword_1EAF4A550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4A550);
  }

  return result;
}

unint64_t sub_197A49838()
{
  result = qword_1EAF4A558;
  if (!qword_1EAF4A558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4A558);
  }

  return result;
}

unint64_t sub_197A4988C()
{
  result = qword_1EAF4A560;
  if (!qword_1EAF4A560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4A560);
  }

  return result;
}

unint64_t sub_197A498E0()
{
  result = qword_1EAF4A568;
  if (!qword_1EAF4A568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4A568);
  }

  return result;
}

unint64_t sub_197A49934()
{
  result = qword_1ED87D1F8;
  if (!qword_1ED87D1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87D1F8);
  }

  return result;
}

unint64_t sub_197A49988()
{
  result = qword_1ED87D230;
  if (!qword_1ED87D230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87D230);
  }

  return result;
}

unint64_t sub_197A499DC()
{
  result = qword_1ED87D1C0;
  if (!qword_1ED87D1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87D1C0);
  }

  return result;
}

unint64_t sub_197A49A30()
{
  result = qword_1ED87D1C8;
  if (!qword_1ED87D1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87D1C8);
  }

  return result;
}

unint64_t sub_197A49A84()
{
  result = qword_1EAF4A570;
  if (!qword_1EAF4A570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4A570);
  }

  return result;
}

unint64_t sub_197A49AD8()
{
  result = qword_1EAF4A578;
  if (!qword_1EAF4A578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4A578);
  }

  return result;
}

unint64_t sub_197A49B2C()
{
  result = qword_1EAF4A580;
  if (!qword_1EAF4A580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4A580);
  }

  return result;
}

unint64_t sub_197A49B80()
{
  result = qword_1EAF4A588;
  if (!qword_1EAF4A588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4A588);
  }

  return result;
}

unint64_t sub_197A49BD4()
{
  result = qword_1ED87DD30;
  if (!qword_1ED87DD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87DD30);
  }

  return result;
}

unint64_t sub_197A49C28()
{
  result = qword_1ED87DD38;
  if (!qword_1ED87DD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87DD38);
  }

  return result;
}

unint64_t sub_197A49C7C()
{
  result = qword_1ED87DCF8;
  if (!qword_1ED87DCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87DCF8);
  }

  return result;
}