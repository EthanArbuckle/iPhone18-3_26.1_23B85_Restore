uint64_t sub_24A1E6778(uint64_t a1, unsigned __int16 a2, unsigned int a3)
{
  v4 = v3;
  v6 = *(v3 + 32);
  v7 = *(v4 + 24);
  sub_24A1DFE0C(a1, a2, a3, &v10);
  v8 = v10.i64[0];

  return v8;
}

void *sub_24A1E6A98(uint64_t a1, uint64_t a2)
{
  v5 = sub_24A1E9AC4();
  strcpy(v10, "ExPBS_Handler_");
  HIBYTE(v10[1]) = -18;
  MEMORY[0x24C2131D0](v5);

  v6 = v10[1];
  type metadata accessor for ExclavePolarisBufferServiceLog();
  v7 = swift_allocObject();
  *(v7 + 16) = v10[0];
  *(v7 + 24) = v6;
  *(v7 + 32) = 1;
  v2[2] = v7;
  v2[3] = a1;
  v2[4] = a2;

  sub_24A1E9A34();

  strcpy(v10, "connection ID ");
  HIBYTE(v10[1]) = -18;
  v8 = sub_24A1E9AC4();
  MEMORY[0x24C2131D0](v8);

  sub_24A1E7E74(v10[0], v10[1], 0xD000000000000029, 0x800000024A1ED0C0, 21);

  return v2;
}

uint64_t sub_24A1E6C20(char a1)
{
  if (*(v1 + 56) != 1)
  {
    goto LABEL_7;
  }

  sub_24A1E9A34();

  v3 = *(v1 + 24);
  v4 = sub_24A1E9AC4();
  MEMORY[0x24C2131D0](v4);

  MEMORY[0x24C2131D0](544432416, 0xE400000000000000);
  if (a1)
  {
    v5 = 0x656C626174697277;
  }

  else
  {
    v5 = 0x796C6E6F64616572;
  }

  MEMORY[0x24C2131D0](v5, 0xE800000000000000);

  sub_24A1E7030(0xD000000000000022, 0x800000024A1ED520, 0x746972772870616DLL, 0xEE00293A656C6261, 104);

  *(v1 + 40) = *(*(v1 + 16) + 32);
  *(v1 + 56) = 0;
  sub_24A1E9A34();

  v6 = sub_24A1E9AC4();
  MEMORY[0x24C2131D0](v6);

  result = MEMORY[0x24C2131D0](0xD000000000000017, 0x800000024A1ED550);
  if (*(v1 + 56))
  {
    __break(1u);
  }

  else
  {
    v10 = *(v1 + 40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF39A88, &qword_24A1EB1C0);
    v8 = sub_24A1E99A4();
    MEMORY[0x24C2131D0](v8);

    MEMORY[0x24C2131D0](544432416, 0xE400000000000000);
    MEMORY[0x24C2131D0](v5, 0xE800000000000000);

    sub_24A1E7030(0x6F206E6F69676552, 0xEA00000000002066, 0x746972772870616DLL, 0xEE00293A656C6261, 108);

    if ((*(v1 + 56) & 1) == 0)
    {
LABEL_7:
      result = *(v1 + 40);
      v9 = *(v1 + 48);
      return result;
    }
  }

  __break(1u);
  return result;
}

void sub_24A1E6EE0()
{
  v1 = *(v0 + 40);
  if ((*(v0 + 56) & 1) == 0)
  {
    v2 = *(v0 + 48);
    sub_24A1E9A34();
    MEMORY[0x24C2131D0](0xD000000000000016, 0x800000024A1ED500);
    v3 = sub_24A1E9AC4();
    MEMORY[0x24C2131D0](v3);

    MEMORY[0x24C2131D0](0x6120736574796220, 0xEA00000000002074);
    if (v1)
    {
      sub_24A1E9A64();
      sub_24A1E7030(0, 0xE000000000000000, 0x292870616D6E75, 0xE700000000000000, 189);

      *(v0 + 40) = 0;
      *(v0 + 48) = 0;
      *(v0 + 56) = 1;
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_24A1E7030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(v5 + 72);
  v14 = *(v5 + 32);
  v12 = sub_24A1E9AC4();
  MEMORY[0x24C2131D0](v12);

  MEMORY[0x24C2131D0](32, 0xE100000000000000);

  MEMORY[0x24C2131D0](a1, a2);

  sub_24A1E7E74(0x4449206D656D6853, 0xE900000000000020, a3, a4, a5);
}

uint64_t sub_24A1E7130()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 72);

  return swift_deallocClassInstance();
}

uint64_t sub_24A1E7194(uint64_t a1)
{
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 56) = 1;
  *(v1 + 64) = 0;
  *(v1 + 32) = *(a1 + 64);
  *(v1 + 16) = a1;
  v2 = *(a1 + 16);
  *(v1 + 24) = v2;
  *(v1 + 64) = v2 >> 14;
  type metadata accessor for ExclavePolarisBufferServiceLog();
  v3 = swift_allocObject();
  *(v3 + 16) = 0xD000000000000021;
  *(v3 + 24) = 0x800000024A1EB0B0;
  *(v3 + 32) = 1;
  *(v1 + 72) = v3;

  sub_24A1E9A34();

  v7 = *(v1 + 24);
  v4 = sub_24A1E9AC4();
  MEMORY[0x24C2131D0](v4);

  MEMORY[0x24C2131D0](0x656761506D756E20, 0xEA00000000002073);
  v8 = *(v1 + 64);
  v5 = sub_24A1E9AC4();
  MEMORY[0x24C2131D0](v5);

  sub_24A1E7030(0x20657A6973, 0xE500000000000000, 0x6765732874696E69, 0xEE00293A746E656DLL, 87);

  return v1;
}

uint64_t getEnumTagSinglePayload for MappingError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MappingError(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24A1E7480()
{
  result = qword_27EF39A90;
  if (!qword_27EF39A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF39A90);
  }

  return result;
}

uint64_t SegmentAccess.mutableRawPointer.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t SegmentAccess.rawPointer.getter()
{
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  return result;
}

uint64_t SegmentAccess.__allocating_init(size:)(unint64_t a1)
{
  v2 = swift_allocObject();
  SegmentAccess.init(size:)(a1);
  return v2;
}

unint64_t SegmentAccess.init(size:)(unint64_t result)
{
  v2 = result;
  v3 = result;
  if ((result & 0x3FFF) != 0)
  {
    if (result > 0xFFFFFFFFFFFFBFFFLL)
    {
      goto LABEL_7;
    }

    v3 = (result & 0xFFFFFFFFFFFFC000) + 0x4000;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    v4 = swift_slowAlloc();
    v1[4] = v4;
    v1[5] = v4 + v3;
    v1[6] = v4;
    v1[7] = v4 + v3;
    v1[2] = v3;
    v1[3] = v2;
    v1[8] = sub_24A1E79A0(0xFFFFFFFFuLL);
    type metadata accessor for ExclavePolarisBufferServiceLog();
    v5 = swift_allocObject();
    *(v5 + 16) = 0xD000000000000017;
    *(v5 + 24) = 0x800000024A1ED570;
    *(v5 + 32) = 1;
    v1[9] = v5;

    sub_24A1E9A34();
    MEMORY[0x24C2131D0](0xD000000000000020, 0x800000024A1ED590);
    v10 = v1[8];
    v6 = sub_24A1E9AC4();
    MEMORY[0x24C2131D0](v6);

    MEMORY[0x24C2131D0](0x657A697320666F20, 0xEA0000000000203ALL);
    v7 = sub_24A1E9AC4();
    MEMORY[0x24C2131D0](v7);

    MEMORY[0x24C2131D0](0xD000000000000016, 0x800000024A1ED5C0);
    v8 = sub_24A1E9AC4();
    MEMORY[0x24C2131D0](v8);

    MEMORY[0x24C2131D0](544497952, 0xE400000000000000);
    v11 = v1[4];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF39A88, &qword_24A1EB1C0);
    v9 = sub_24A1E99A4();
    MEMORY[0x24C2131D0](v9);

    sub_24A1E7E74(0, 0xE000000000000000, 0x7A69732874696E69, 0xEB00000000293A65, 57);

    return v1;
  }

  __break(1u);
LABEL_7:
  __break(1u);
  return result;
}

void *SegmentAccess.deinit()
{
  v1 = v0[9];

  sub_24A1E9A34();
  MEMORY[0x24C2131D0](0xD000000000000021, 0x800000024A1ED5E0);
  v7 = v0[8];
  v2 = sub_24A1E9AC4();
  MEMORY[0x24C2131D0](v2);

  MEMORY[0x24C2131D0](0x657A697320666F20, 0xEA0000000000203ALL);
  v8 = v0[2];
  v3 = sub_24A1E9AC4();
  MEMORY[0x24C2131D0](v3);

  MEMORY[0x24C2131D0](544497952, 0xE400000000000000);
  v9 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF39A88, &qword_24A1EB1C0);
  sub_24A1E9A64();
  sub_24A1E7E74(0, 0xE000000000000000, 0x74696E696564, 0xE600000000000000, 63);

  v4 = v0[4];
  if (v4)
  {
    MEMORY[0x24C2136A0](v4, -1, -1);
  }

  v5 = v0[9];

  return v0;
}

uint64_t SegmentAccess.__deallocating_deinit()
{
  SegmentAccess.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_24A1E79A0(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = result;
    v5 = 0;
    MEMORY[0x24C2136B0](&v5, 8);
    v3 = v5 * v2;
    if (v3 < v1)
    {
      for (i = -v1 % v1; i > v3; v3 = v5 * v2)
      {
        v5 = 0;
        MEMORY[0x24C2136B0](&v5, 8);
      }
    }

    return HIDWORD(v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_24A1E7A90()
{
  result = qword_27EF39A98;
  if (!qword_27EF39A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF39A98);
  }

  return result;
}

ExclavePolarisBufferService::ExPBSResourcePermission_optional __swiftcall ExPBSResourcePermission.init(rawValue:)(Swift::UInt32 rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_24A1E7B08()
{
  v1 = *v0;
  sub_24A1E9B84();
  sub_24A1E9BA4();
  return sub_24A1E9BB4();
}

uint64_t sub_24A1E7B7C()
{
  v1 = *v0;
  sub_24A1E9B84();
  sub_24A1E9BA4();
  return sub_24A1E9BB4();
}

_DWORD *sub_24A1E7BC0@<X0>(_DWORD *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t ExPBSResourcePermission.description.getter()
{
  if (*v0)
  {
    result = 0x7469725764616552;
  }

  else
  {
    result = 0x796C6E4F64616552;
  }

  *v0;
  return result;
}

unint64_t sub_24A1E7C30()
{
  result = qword_27EF39AA0;
  if (!qword_27EF39AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF39AA0);
  }

  return result;
}

uint64_t sub_24A1E7C84()
{
  if (*v0)
  {
    result = 0x7469725764616552;
  }

  else
  {
    result = 0x796C6E4F64616552;
  }

  *v0;
  return result;
}

uint64_t ExPBSResult.hashValue.getter()
{
  v1 = *v0;
  sub_24A1E9B84();
  MEMORY[0x24C2133B0](v1);
  return sub_24A1E9BB4();
}

unint64_t sub_24A1E7D64()
{
  result = qword_27EF39AA8;
  if (!qword_27EF39AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF39AA8);
  }

  return result;
}

uint64_t PolarisSharedResourceInfo.init(resourceId:segAccess:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_24A1E7DE0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24A1E7E28(uint64_t result, int a2, int a3)
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

uint64_t sub_24A1E7E94(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(v6 + 32) == 1)
  {
    v10 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF39960, &qword_24A1EA0B0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_24A1EA010;
    sub_24A1E9A34();

    MEMORY[0x24C2131D0](*(v6 + 16), *(v6 + 24));
    MEMORY[0x24C2131D0](32, 0xE100000000000000);
    MEMORY[0x24C2131D0](a3, a4);
    MEMORY[0x24C2131D0](58, 0xE100000000000000);
    v13 = sub_24A1E9AC4();
    MEMORY[0x24C2131D0](v13);

    MEMORY[0x24C2131D0](2112032, 0xE300000000000000);
    MEMORY[0x24C2131D0](a6, 0xE500000000000000);
    MEMORY[0x24C2131D0](8285, 0xE200000000000000);
    MEMORY[0x24C2131D0](v10, a2);
    *(v12 + 56) = MEMORY[0x277D837D0];
    *(v12 + 32) = 91;
    *(v12 + 40) = 0xE100000000000000;
    sub_24A1E9B54();
  }

  return result;
}

uint64_t sub_24A1E8044()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

char *sub_24A1E80D4(char *result, uint64_t a2, unsigned int a3, unsigned int a4)
{
  v4 = 0;
  if (a3 && a4 && result)
  {
    if (a2 - result >= 1)
    {
      v5 = a3 * a4;
      if ((v5 & 0xFFFFFFFF00000000) == 0)
      {
        if (a2 - result < v5)
        {
          v4 = 1;
          goto LABEL_9;
        }

        v8 = a4;
        v9 = result;
        result = sub_24A1DB8BC(0, 1, 1, MEMORY[0x277D84F90]);
        v11 = a3;
        v7 = result;
        v12 = v9;
        v13 = 0;
        while (1)
        {
          v15 = *(v7 + 2);
          v14 = *(v7 + 3);
          if (v15 >= v14 >> 1)
          {
            v17 = v11;
            result = sub_24A1DB8BC((v14 > 1), v15 + 1, 1, v7);
            v11 = v17;
            v7 = result;
            v12 = v9;
          }

          *(v7 + 2) = v15 + 1;
          v16 = &v7[16 * v15];
          *(v16 + 4) = &v12[v13];
          *(v16 + 5) = &v9[v8 + v13];
          if (__OFADD__(v13, v8))
          {
            break;
          }

          v13 += v8;
          if (!--v11)
          {
            return v7;
          }
        }

        __break(1u);
      }

      __break(1u);
      return result;
    }

    v4 = 0;
  }

LABEL_9:
  sub_24A1E8220();
  swift_allocError();
  *v6 = v4;
  swift_willThrow();
  return v7;
}

unint64_t sub_24A1E8220()
{
  result = qword_27EF39AB0;
  if (!qword_27EF39AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF39AB0);
  }

  return result;
}

unint64_t sub_24A1E8288()
{
  result = qword_27EF39AB8;
  if (!qword_27EF39AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF39AB8);
  }

  return result;
}

uint64_t _s27ExclavePolarisBufferService0abcD12ResultPublicO4fromAC9Tightbeam0H7DecoderVz_tSo10tb_error_taYKcfC@<X0>(char *a1@<X8>)
{
  result = sub_24A1E98D4();
  if (result == 1)
  {
    v3 = 0;
LABEL_5:
    *a1 = v3;
    return result;
  }

  if (result == 2)
  {
    v3 = 1;
    goto LABEL_5;
  }

  sub_24A1E9A34();
  MEMORY[0x24C2131D0](0xD000000000000038, 0x800000024A1ED770);
  v4 = sub_24A1E9AC4();
  MEMORY[0x24C2131D0](v4);

  result = sub_24A1E9A74();
  __break(1u);
  return result;
}

uint64_t sub_24A1E8498(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, unint64_t a3, unint64_t a4)
{
  v7 = a4 - a3;
  if (a4 >= a3)
  {
    if ((a4 - a3) < 0)
    {
      goto LABEL_23;
    }

    goto LABEL_5;
  }

  if ((a3 - a4) >= 0)
  {
    v7 = a4 - a3;
LABEL_5:
    v8 = MEMORY[0x277D84F90];
    if (!v7)
    {
      return v8;
    }

    v21 = MEMORY[0x277D84F90];
    sub_24A1E940C(0, v7 & ~(v7 >> 63), 0);
    if ((v7 & 0x8000000000000000) == 0)
    {
      v9 = 0;
      v8 = v21;
      v10 = a4 - a3;
      if (a4 < a3)
      {
        v10 = 0;
      }

      v17 = v10 + 1;
      while (1)
      {
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        v19 = a3 + v9;
        a1(&v20, &v19);
        if (v4)
        {
          goto LABEL_24;
        }

        v12 = v20;
        v21 = v8;
        v14 = *(v8 + 16);
        v13 = *(v8 + 24);
        if (v14 >= v13 >> 1)
        {
          v15 = v20;
          sub_24A1E940C((v13 > 1), v14 + 1, 1);
          v12 = v15;
          v8 = v21;
        }

        *(v8 + 16) = v14 + 1;
        *(v8 + 4 * v14 + 32) = v12;
        if (a4 < a3)
        {
          goto LABEL_19;
        }

        if (v17 == ++v9)
        {
          goto LABEL_20;
        }

        if (v11 == v7)
        {
          return v8;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:

  __break(1u);
  return result;
}

uint64_t sub_24A1E861C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_24A1E9974();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  (*(v5 + 16))(v9, a1, v4);
  v11 = sub_24A1E9994();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = sub_24A1E9984();
  result = (*(v5 + 8))(a1, v4);
  *(v10 + 16) = v14;
  *a2 = v10;
  return result;
}

uint64_t sub_24A1E874C@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v105 = a2;
  v5 = v3;
  v102 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF39AC8, &qword_24A1EB768);
  v8 = *(*(v7 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v7 - 8, v9);
  v99 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v98 = &v95 - v14;
  v16 = MEMORY[0x28223BE20](v13, v15);
  v101 = &v95 - v17;
  v19 = MEMORY[0x28223BE20](v16, v18);
  v100 = &v95 - v20;
  v22 = MEMORY[0x28223BE20](v19, v21);
  v97 = &v95 - v23;
  v25 = MEMORY[0x28223BE20](v22, v24);
  v96 = &v95 - v26;
  v28 = MEMORY[0x28223BE20](v25, v27);
  v30 = &v95 - v29;
  v32 = MEMORY[0x28223BE20](v28, v31);
  v34 = &v95 - v33;
  v36 = MEMORY[0x28223BE20](v32, v35);
  v38 = &v95 - v37;
  v40 = MEMORY[0x28223BE20](v36, v39);
  v42 = &v95 - v41;
  MEMORY[0x28223BE20](v40, v43);
  v45 = &v95 - v44;
  v46 = sub_24A1E9954();
  v106 = *(v46 - 8);
  v47 = *(v106 + 56);
  v109 = v45;
  v110 = v46;
  v103 = v47;
  v104 = v106 + 56;
  (v47)(v45, 1, 1);
  v48 = sub_24A1E96C0();
  v49 = v5[6];
  v108 = v5[7];
  __swift_project_boxed_opaque_existential_1(v5 + 3, v49);
  v50 = sub_24A1E98E4();
  v51 = v48;
  if (v48 > 4u)
  {
    if (v48 <= 6u)
    {
      v61 = v110;
      if (v48 != 5)
      {
        (*(v108 + 80))(v50, v49);
        v80 = v99;
LABEL_38:
        v87 = v107;
        sub_24A1E98F4();
        if (!v87)
        {
          v108 = 0;
          v103(v80, 0, 1, v61);
          v59 = *(v106 + 48);
          v60 = v109;
          if (v59(v109, 1, v61) != 1)
          {
            sub_24A1E97A0(v60);
          }

          sub_24A1E9808(v80, v60);
          if (!v59(v60, 1, v61))
          {
            sub_24A1E9924();
          }

          goto LABEL_51;
        }

        goto LABEL_39;
      }

      v77 = v50;
      v78 = sub_24A1E98B4();
      (*(v108 + 16))(v77, v78, v49);
    }

    else
    {
      v61 = v110;
      if (v48 == 7)
      {
        (*(v108 + 72))(v50, v49);
        v80 = v98;
        goto LABEL_38;
      }

      v62 = v50;
      if (v51 == 8)
      {
        v63 = sub_24A1E98C4();
        v64 = sub_24A1E98E4();
        MEMORY[0x28223BE20](v64, v65);
        *(&v95 - 2) = a1;
        v66 = v107;
        v68 = sub_24A1E8498(sub_24A1E9878, (&v95 - 4), 0, v67);
        (*(v108 + 64))(v62, v63, v68, v49);

        v38 = v101;
        sub_24A1E98F4();
        if (!v66)
        {
          goto LABEL_33;
        }

        goto LABEL_39;
      }

      v83 = sub_24A1E98B4();
      v84 = sub_24A1E98D4();
      (*(v108 + 48))(v62, v83, v84, v49);
      v38 = v97;
    }

    v66 = v107;
    sub_24A1E98F4();
    if (!v66)
    {
LABEL_33:
      v108 = v66;
      v103(v38, 0, 1, v61);
      v59 = *(v106 + 48);
      v60 = v109;
      if (v59(v109, 1, v61) != 1)
      {
        sub_24A1E97A0(v60);
      }

      v85 = v38;
LABEL_50:
      sub_24A1E9808(v85, v60);
LABEL_51:
      v88 = (v59)(v60, 1, v61);
      v89 = v88;
      if (v88 == 1)
      {
        v90 = v102;
      }

      else
      {
        v90 = v102;
        if (v88)
        {
          sub_24A1E97A0(v60);
          v89 = 1;
        }

        else
        {
          sub_24A1E9944();
        }
      }

      v91 = sub_24A1E9964();
      return (*(*(v91 - 8) + 56))(v90, v89, 1, v91);
    }

LABEL_39:
    v76 = v111;
    v60 = v109;
    result = (*(v106 + 48))(v109, 1, v61);
    goto LABEL_40;
  }

  if (v48 > 1u)
  {
    if (v48 == 2)
    {
      (*(v108 + 24))(v50, v49);
      v79 = v107;
      sub_24A1E98F4();
      if (!v79)
      {
        v108 = 0;
        v61 = v110;
        v103(v34, 0, 1, v110);
        v59 = *(v106 + 48);
        v60 = v109;
        if (v59(v109, 1, v61) != 1)
        {
          sub_24A1E97A0(v60);
        }

        sub_24A1E9808(v34, v60);
        if (!v59(v60, 1, v61))
        {
          sub_24A1E9914();
        }

        goto LABEL_51;
      }

      goto LABEL_30;
    }

    v52 = v50;
    if (v51 == 3)
    {
      v53 = sub_24A1E98D4();
      v54 = sub_24A1E98D4();
      v55 = sub_24A1E98D4();
      v56 = sub_24A1E98D4();
      (*(v108 + 8))(v52, v53, v54, v55, v56, v49);
      v57 = v107;
      sub_24A1E98F4();
      if (!v57)
      {
        v108 = 0;
        v58 = v110;
        v103(v42, 0, 1, v110);
        v59 = *(v106 + 48);
        v60 = v109;
        if (v59(v109, 1, v58) != 1)
        {
          sub_24A1E97A0(v60);
        }

        sub_24A1E9808(v42, v60);
        v61 = v110;
        if (!v59(v60, 1, v110))
        {
          sub_24A1E9904();
        }

        goto LABEL_51;
      }

      goto LABEL_30;
    }

    v81 = sub_24A1E98C4();
    (*(v108 + 32))(v52, v81, v49);
    v82 = v107;
    sub_24A1E98F4();
    if (v82)
    {
LABEL_30:
      v76 = v111;
      v60 = v109;
      result = (*(v106 + 48))(v109, 1, v110);
      goto LABEL_40;
    }

    v108 = 0;
    v61 = v110;
    v103(v30, 0, 1, v110);
    v59 = *(v106 + 48);
    v60 = v109;
    if (v59(v109, 1, v61) != 1)
    {
      sub_24A1E97A0(v60);
    }

    v85 = v30;
    goto LABEL_50;
  }

  v69 = v50;
  v61 = v110;
  if (v48)
  {
    v86 = sub_24A1E98B4();
    (*(v108 + 40))(v69, v86, v49);
    v80 = v96;
    goto LABEL_38;
  }

  v70 = sub_24A1E98C4();
  v71 = sub_24A1E98D4();
  result = (*(v108 + 56))(v69, v70, v71, v49);
  v73 = result;
  v74 = *(result + 16);
  if (v74)
  {
    v60 = v109;
    v75 = v100;
    if ((v74 - 0x2000000000000000) < 0xE000000000000001)
    {
      goto LABEL_72;
    }

    if (__OFADD__(4 * v74, 8))
    {
      __break(1u);
      goto LABEL_59;
    }
  }

  else
  {
    v60 = v109;
    v75 = v100;
  }

  v4 = v107;
  sub_24A1E98F4();
  if (!v4)
  {
LABEL_59:
    v108 = v4;
    v103(v75, 0, 1, v61);
    v59 = *(v106 + 48);
    if (v59(v60, 1, v61) != 1)
    {
      sub_24A1E97A0(v60);
    }

    sub_24A1E9808(v75, v60);
    result = (v59)(v60, 1, v61);
    if (result)
    {
      if (!v74)
      {
        goto LABEL_70;
      }
    }

    else
    {
      v92 = *(v73 + 16);
      result = sub_24A1E9934();
      if (!v74)
      {
LABEL_70:

        goto LABEL_51;
      }
    }

    v93 = 0;
    while (v93 < *(v73 + 16))
    {
      result = (v59)(v60, 1, v61);
      if (!result)
      {
        v94 = *(v73 + 4 * v93 + 32);
        result = sub_24A1E9924();
      }

      if (v74 == ++v93)
      {
        goto LABEL_70;
      }
    }

    __break(1u);
LABEL_72:
    __break(1u);
    return result;
  }

  v76 = v111;

  result = (*(v106 + 48))(v60, 1, v61);
LABEL_40:
  if (result != 1)
  {
    result = sub_24A1E97A0(v60);
  }

  *v105 = v76;
  return result;
}

uint64_t sub_24A1E92C4()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_24A1E9304@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *v3;
  result = sub_24A1E874C(a1, &v8, a3);
  if (v4)
  {
    *a2 = v8;
  }

  return result;
}

unint64_t sub_24A1E93B8()
{
  result = qword_27EF39AC0;
  if (!qword_27EF39AC0)
  {
    type metadata accessor for ExclavePolarisBuffer.Server();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF39AC0);
  }

  return result;
}

char *sub_24A1E940C(char *a1, int64_t a2, char a3)
{
  result = sub_24A1E942C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24A1E942C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF39998, &unk_24A1EB770);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

uint64_t sub_24A1E9530(uint64_t a1)
{
  if (a1 > 0x3F4F0C8EBCE950A3)
  {
    if (a1 <= 0x62FB435EF3131BCDLL)
    {
      if (a1 == 0x3F4F0C8EBCE950A4)
      {
        return 8;
      }

      if (a1 == 0x502D32A0904E2C46)
      {
        return 9;
      }
    }

    else
    {
      switch(a1)
      {
        case 0x62FB435EF3131BCELL:
          return 5;
        case 0x6629F11D436BF7E5:
          return 4;
        case 0x66D712D799DB8F14:
          return 0;
      }
    }
  }

  else if (a1 <= 0xD3E70D696AC2B481)
  {
    if (a1 == 0x88A70EED8B2265B6)
    {
      return 3;
    }

    if (a1 == 0xC4A5D4B23BAA9E2ELL)
    {
      return 2;
    }
  }

  else
  {
    switch(a1)
    {
      case 0xD3E70D696AC2B482:
        return 6;
      case 0xD7C1DC0BE5F9A8EELL:
        return 1;
      case 0x3E6CB01191DB5DBALL:
        return 7;
    }
  }

  return 10;
}

uint64_t sub_24A1E96C0()
{
  v0 = sub_24A1E98E4();
  result = sub_24A1E9530(v0);
  if (result == 10)
  {
    sub_24A1E9A34();
    MEMORY[0x24C2131D0](0xD000000000000033, 0x800000024A1ED890);
    v2 = sub_24A1E9AC4();
    MEMORY[0x24C2131D0](v2);

    result = sub_24A1E9A74();
    __break(1u);
  }

  return result;
}

uint64_t sub_24A1E97A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF39AC8, &qword_24A1EB768);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24A1E9808(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF39AC8, &qword_24A1EB768);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A1E9878@<X0>(_DWORD *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = sub_24A1E98D4();
  *a1 = result;
  return result;
}