uint64_t TransportID.init()@<X0>(void *a1@<X8>)
{
  if (qword_27F1AF280 != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = atomic_fetch_add_explicit(&qword_27F1AF288, 1uLL, memory_order_relaxed);
  return result;
}

uint64_t TransportID.description.getter()
{
  v3 = *v0;
  v1 = sub_24DD4B624();
  MEMORY[0x253037C70](v1);

  return 0x726F70736E617274;
}

uint64_t TransportID.hashValue.getter()
{
  v1 = *v0;
  sub_24DD4B6E4();
  MEMORY[0x2530381B0](v1);
  return sub_24DD4B724();
}

uint64_t sub_24DD0A794()
{
  v1 = *v0;
  sub_24DD4B6E4();
  MEMORY[0x2530381B0](v1);
  return sub_24DD4B724();
}

uint64_t sub_24DD0A808()
{
  v1 = *v0;
  sub_24DD4B6E4();
  MEMORY[0x2530381B0](v1);
  return sub_24DD4B724();
}

uint64_t sub_24DD0A84C()
{
  v3 = *v0;
  v1 = sub_24DD4B624();
  MEMORY[0x253037C70](v1);

  return 0x726F70736E617274;
}

void *StreamID.init(transportID:)@<X0>(void *result@<X0>, void *a2@<X8>)
{
  *a2 = *result;
  a2[1] = 0;
  return result;
}

uint64_t StreamID.description.getter()
{
  v1 = v0[1];
  v5 = *v0;
  v2 = sub_24DD4B624();
  MEMORY[0x253037C70](v2);

  MEMORY[0x253037C70](0x726F70736E617274, 0xEA00000000005F74);

  MEMORY[0x253037C70](0x5F6D61657274732FLL, 0xE800000000000000);
  v3 = sub_24DD4B624();
  MEMORY[0x253037C70](v3);

  return 0;
}

void StreamID.next()(void *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v1[1] = v3 + 1;
  *a1 = v2;
  a1[1] = v3;
}

uint64_t StreamID.hash(into:)()
{
  v1 = v0[1];
  MEMORY[0x2530381B0](*v0);
  return MEMORY[0x2530381B0](v1);
}

uint64_t StreamID.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24DD4B6E4();
  MEMORY[0x2530381B0](v1);
  MEMORY[0x2530381B0](v2);
  return sub_24DD4B724();
}

uint64_t sub_24DD0AAB0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24DD4B6E4();
  MEMORY[0x2530381B0](v1);
  MEMORY[0x2530381B0](v2);
  return sub_24DD4B724();
}

uint64_t sub_24DD0AB0C()
{
  v1 = v0[1];
  MEMORY[0x2530381B0](*v0);
  return MEMORY[0x2530381B0](v1);
}

uint64_t sub_24DD0AB48()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24DD4B6E4();
  MEMORY[0x2530381B0](v1);
  MEMORY[0x2530381B0](v2);
  return sub_24DD4B724();
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

unint64_t sub_24DD0AC58()
{
  result = qword_27F1AF2A0;
  if (!qword_27F1AF2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1AF2A0);
  }

  return result;
}

unint64_t sub_24DD0ACB0()
{
  result = qword_27F1AF2A8;
  if (!qword_27F1AF2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1AF2A8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TransportID(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for TransportID(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for StreamID(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for StreamID(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24DD0ADE4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24DD0AE04(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 64) = v3;
  return result;
}

void *sub_24DD0AEB0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

void sub_24DD0AEE0(uint64_t a1, unint64_t *a2)
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

unint64_t sub_24DD0AF48()
{
  if (*v0)
  {
    result = 0xD000000000000039;
  }

  else
  {
    result = 0xD000000000000049;
  }

  *v0;
  return result;
}

uint64_t sub_24DD0AF88(uint64_t a1, uint64_t a2)
{
  v4 = sub_24DD0BB80();

  return MEMORY[0x282162D90](a1, a2, v4);
}

uint64_t _s31GRPCURLSessionTransportInternal12DecompressorO10decompressySays5UInt8VGAgA0D5ErrorOYKF(unint64_t a1, void *a2)
{
  if (*v2)
  {
    result = sub_24DD0B388(a1, &v6);
    if (!v3)
    {
      return result;
    }
  }

  else
  {
    result = sub_24DD0B024(a1, &v6);
    if (!v3)
    {
      return result;
    }
  }

  *a2 = v6;
  return result;
}

char *sub_24DD0B024(unint64_t a1, unint64_t *a2)
{
  v4 = sub_24DD4AB54();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(sub_24DD4AB44() - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20]();
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 16);
  v15 = MEMORY[0x277D84F90];
  if (v14)
  {
    if (v14 >= 0x12)
    {
      v32 = a2;
      v16 = v11;
      v17 = swift_allocObject();
      v18 = a1;
      v19 = v17;
      *(v17 + 16) = v15;
      v20 = v18 + v14;
      v21 = v18;
      v22 = v15;
      v15 = (v17 + 16);
      *(v17 + 16) = sub_24DD391A8(0, *(v20 + 27), 0, v22);
      (*(v9 + 104))(v13, *MEMORY[0x277D832C0], v16);
      (*(v5 + 104))(v8, *MEMORY[0x277D832C8], v4);
      v23 = sub_24DD4AB24();
      v24 = *(v23 + 48);
      v25 = *(v23 + 52);
      swift_allocObject();

      v26 = v37;
      sub_24DD4AB34();
      if (v26)
      {
        *v32 = v26;
        v33 = v26;
        sub_24DD0BB80();
        swift_willThrowTypedImpl();
      }

      else
      {
        v33 = sub_24DD0BCB0(v21);
        v34 = v27;
        v35 = v28;
        v36 = v29;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF2D8, &qword_24DD4C618);
        sub_24DD0BF14();
        sub_24DD4AB04();
        sub_24DD4AB14();
        v37 = 0;

        swift_unknownObjectRelease();
        swift_beginAccess();
        v15 = *(v19 + 16);
      }
    }

    else
    {
      *a2 = 0;
      v33 = 0;
      sub_24DD0BB80();
      swift_willThrowTypedImpl();
    }
  }

  return v15;
}

uint64_t sub_24DD0B388(uint64_t a1, uint64_t *a2)
{
  v4 = sub_24DD4AB54();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(sub_24DD4AB44() - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20]();
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 16);
  v15 = MEMORY[0x277D84F90];
  if (!v14)
  {
    return v15;
  }

  if (v14 < 6)
  {
    *a2 = 0;
    v29 = 0;
    sub_24DD0BB80();
    swift_willThrowTypedImpl();
    return v15;
  }

  v28 = a2;
  v16 = v11;
  result = swift_allocObject();
  if ((v14 + 0x4000000000000000) >= 0)
  {
    v18 = 2 * v14;
    *(result + 16) = v15;
    v19 = result;
    *(result + 16) = sub_24DD391A8(0, v18, 0, v15);
    (*(v9 + 104))(v13, *MEMORY[0x277D832C0], v16);
    (*(v5 + 104))(v8, *MEMORY[0x277D832C8], v4);
    v20 = sub_24DD4AB24();
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    swift_allocObject();

    v23 = v33;
    sub_24DD4AB34();
    if (v23)
    {
      *v28 = v23;
      v29 = v23;
      sub_24DD0BB80();
      swift_willThrowTypedImpl();
    }

    else
    {
      v29 = sub_24DD0C014(a1);
      v30 = v24;
      v31 = v25;
      v32 = v26;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF2D8, &qword_24DD4C618);
      sub_24DD0BF14();
      sub_24DD4AB04();
      sub_24DD4AB14();
      v33 = 0;

      swift_unknownObjectRelease();
      swift_beginAccess();
      v15 = *(v19 + 16);
    }

    return v15;
  }

  __break(1u);
  return result;
}

uint64_t Decompressor.hashValue.getter()
{
  v1 = *v0;
  sub_24DD4B6E4();
  MEMORY[0x253038190](v1);
  return sub_24DD4B724();
}

uint64_t sub_24DD0B798()
{
  v1 = *v0;
  sub_24DD4B6E4();
  MEMORY[0x253038190](v1);
  return sub_24DD4B724();
}

uint64_t sub_24DD0B80C()
{
  v1 = *v0;
  sub_24DD4B6E4();
  MEMORY[0x253038190](v1);
  return sub_24DD4B724();
}

unint64_t sub_24DD0B854()
{
  result = qword_27F1AF2C8;
  if (!qword_27F1AF2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1AF2C8);
  }

  return result;
}

uint64_t sub_24DD0B8A8(unint64_t a1, void *a2)
{
  if ((*v2 & 1) == 0)
  {
    result = sub_24DD0B024(a1, &v6);
    if (!v3)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = sub_24DD0B388(a1, &v6);
  if (v3)
  {
LABEL_5:
    *a2 = v6;
  }

  return result;
}

uint64_t sub_24DD0B920(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24DD0B970(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_xSiRi_zRi0_zlyxIseghnd_Sg_0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_24DD0B9E0(void *result, int a2)
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

uint64_t getEnumTagSinglePayload for Decompressor(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Decompressor(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24DD0BB80()
{
  result = qword_27F1AF2D0;
  if (!qword_27F1AF2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1AF2D0);
  }

  return result;
}

uint64_t sub_24DD0BBD4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24DD0BC0C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    v2 = result;
    swift_beginAccess();
    sub_24DD0BFC0(v2, a2);
    sub_24DD0D4B4(v2, a2);
    return swift_endAccess();
  }

  return result;
}

unint64_t sub_24DD0BCB0(unint64_t result)
{
  v1 = *(result + 16);
  v2 = v1 - 8;
  if (v1 < 8)
  {
    v2 = 0;
  }

  if (v1 < 4)
  {
    goto LABEL_58;
  }

  v3 = result + 32;
  v4 = *(result + 35);
  v5 = 10;
  if (v2 < 0xA)
  {
    v5 = v2;
  }

  v6 = (2 * v2) | 1;
  if ((*(result + 35) & 4) != 0)
  {
    if (v2 < v5 + 2)
    {
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    result = sub_24DD3F0DC(*(v3 + v5) + 2, result, v3, v5, v6);
    v7 = result;
    v3 = v8;
    v5 = v9;
    v6 = v10;
    if ((v4 & 8) == 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v7 = result;
    if ((*(result + 35) & 8) == 0)
    {
      goto LABEL_20;
    }
  }

  v11 = v6 >> 1;
  v12 = v5;
  v13 = v5 == v6 >> 1;
  if (v5 != v6 >> 1)
  {
    if (v5 <= (v6 >> 1))
    {
      v18 = v6 >> 1;
    }

    else
    {
      v18 = v5;
    }

    v12 = v5;
    while (v18 != v12)
    {
      if (!*(v3 + v12))
      {
        goto LABEL_12;
      }

      if (v11 == ++v12)
      {
        v13 = 1;
        v12 = v6 >> 1;
        if (v11 >= v5)
        {
          goto LABEL_14;
        }

        goto LABEL_52;
      }
    }

    goto LABEL_56;
  }

LABEL_12:
  if (v11 < v12)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (v12 < v5)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    if (v11 < v12)
    {
      goto LABEL_65;
    }

    v15 = 0;
    if (v12 >= v5)
    {
      goto LABEL_30;
    }

    goto LABEL_55;
  }

LABEL_14:
  if (__OFSUB__(v11, v12))
  {
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  if (!v13)
  {
    if (__OFADD__(v12, 1))
    {
LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

    if (v11 < v12 + 1)
    {
      goto LABEL_62;
    }

    v11 = v12 + 1;
  }

  v5 = v11;
  if (v11 < v12)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

LABEL_20:
  if ((v4 & 0x10) == 0)
  {
    goto LABEL_36;
  }

  v11 = v6 >> 1;
  if (v5 != v6 >> 1)
  {
    if (v5 <= (v6 >> 1))
    {
      v14 = v6 >> 1;
    }

    else
    {
      v14 = v5;
    }

    v12 = v5;
    while (v14 != v12)
    {
      if (!*(v3 + v12))
      {
        goto LABEL_53;
      }

      if (v11 == ++v12)
      {
        goto LABEL_29;
      }
    }

    goto LABEL_57;
  }

LABEL_29:
  v15 = 1;
  v12 = v6 >> 1;
  if (v11 < v5)
  {
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

LABEL_30:
  if (__OFSUB__(v11, v12))
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  if (v15)
  {
    goto LABEL_35;
  }

  if (!__OFADD__(v12, 1))
  {
    if (v11 < v12 + 1)
    {
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    v11 = v12 + 1;
LABEL_35:
    v5 = v11;
    if (v11 < v12)
    {
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

LABEL_36:
    if ((v4 & 2) != 0)
    {
      v16 = v6 >> 1;
      if (__OFSUB__(v6 >> 1, v5))
      {
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

      v17 = v6 >> 1;
      if ((v6 >> 1) - v5 >= 2)
      {
        v17 = v5 + 2;
        if (__OFADD__(v5, 2))
        {
LABEL_73:
          __break(1u);
          goto LABEL_74;
        }

        if (v16 < v17)
        {
          goto LABEL_66;
        }
      }

      if (v17 < v5)
      {
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      if (v16 < v5)
      {
LABEL_69:
        __break(1u);
        goto LABEL_70;
      }
    }

    return v7;
  }

LABEL_74:
  __break(1u);
  return result;
}

unint64_t sub_24DD0BF14()
{
  result = qword_27F1AF2E0;
  if (!qword_27F1AF2E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1AF2D8, &qword_24DD4C618);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1AF2E0);
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

uint64_t sub_24DD0BFC0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_24DD0C014(uint64_t result)
{
  if (*(result + 16) < 2uLL)
  {
    __break(1u);
  }

  else
  {
    *(result + 33);
  }

  return result;
}

uint64_t CompressorError.hashValue.getter()
{
  sub_24DD4B6E4();
  MEMORY[0x253038190](0);
  return sub_24DD4B724();
}

uint64_t sub_24DD0C0EC()
{
  sub_24DD4B6E4();
  MEMORY[0x253038190](0);
  return sub_24DD4B724();
}

uint64_t sub_24DD0C158()
{
  sub_24DD4B6E4();
  MEMORY[0x253038190](0);
  return sub_24DD4B724();
}

int64_t _s31GRPCURLSessionTransportInternal10CompressorO8compressySays5UInt8VGAA0aB5BytesVAA0D5ErrorOYKF(uint64_t *a1)
{
  v4 = *a1;
  if ((*v2 & 1) == 0)
  {
    v9 = *a1;
    v8 = sub_24DD0C288(&v9);
    if (!v3)
    {
      return v8;
    }

    return v1;
  }

  v5 = *(v4 + 16);
  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = *a1;

  v1 = sub_24DD4B2B4();
  *(v1 + 16) = v5;
  result = compression_encode_buffer((v1 + 32), v5, (v4 + 32), *(v4 + 16), 0, 0x506u);
  if (v5 >= result)
  {
    *(v1 + 16) = result;

    if (!*(v1 + 16))
    {

      sub_24DD0C4D0();
      swift_willThrowTypedImpl();
    }

    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_24DD0C288(uint64_t *a1)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v2 = *(*a1 + 16);
  if (!v2)
  {
    result = MEMORY[0x277D84F90];
    goto LABEL_10;
  }

  v3 = *a1;

  v4 = sub_24DD4B2B4();
  *(v4 + 16) = v2;
  v5 = compression_encode_buffer((v4 + 32), v2, (v1 + 32), *(v1 + 16), 0, COMPRESSION_ZLIB);
  if (v2 < v5)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  *(v4 + 16) = v5;

  v6 = *(v4 + 16);
  if (!v6)
  {

    sub_24DD0C4D0();
    result = swift_willThrowTypedImpl();
    goto LABEL_10;
  }

  if (__OFADD__(v6, 18))
  {
    goto LABEL_12;
  }

  v13[0] = sub_24DD391A8(0, v6 + 18, 0, MEMORY[0x277D84F90]);
  sub_24DD0D780(&unk_2860F4510);
  sub_24DD0D780(v4);
  v7 = *(v1 + 16);
  if (HIDWORD(v7))
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
  }

  v8 = crc32(0, (v1 + 32), v7);
  if (HIDWORD(v8))
  {
    goto LABEL_14;
  }

  v12 = v8;
  sub_24DD0D86C(&v12, v13);
  v11 = *(v1 + 16);
  sub_24DD0D86C(&v11, &v12);
  result = v13[0];
LABEL_10:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t Compressor.hashValue.getter()
{
  v1 = *v0;
  sub_24DD4B6E4();
  MEMORY[0x253038190](v1);
  return sub_24DD4B724();
}

unint64_t sub_24DD0C4D0()
{
  result = qword_27F1B0AB0;
  if (!qword_27F1B0AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B0AB0);
  }

  return result;
}

unint64_t sub_24DD0C528()
{
  result = qword_27F1AF2E8;
  if (!qword_27F1AF2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1AF2E8);
  }

  return result;
}

unint64_t sub_24DD0C580()
{
  result = qword_27F1AF2F0[0];
  if (!qword_27F1AF2F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F1AF2F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CompressorError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for CompressorError(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t UncheckedAsyncIteratorSequence.__allocating_init(_:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  v6 = *v5;
  *(v5 + *(*v5 + 104)) = 0;
  (*(*(*(v6 + 80) - 8) + 32))(v5 + *(*v5 + 96), a1);
  return v5;
}

uint64_t *UncheckedAsyncIteratorSequence.init(_:)(uint64_t a1)
{
  v2 = *v1;
  *(v1 + *(*v1 + 104)) = 0;
  (*(*(*(v2 + 80) - 8) + 32))(v1 + *(*v1 + 96), a1);
  return v1;
}

uint64_t UncheckedAsyncIteratorSequence.AsyncIterator.next()(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(MEMORY[0x277D856D0] + 4);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24DD0C914;

  return MEMORY[0x282200308](a1, v4, v5);
}

uint64_t sub_24DD0C914()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_24DD0CA08(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24DD0D4B0;

  return UncheckedAsyncIteratorSequence.AsyncIterator.next()(a1, a2);
}

uint64_t sub_24DD0CAB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = *(MEMORY[0x277D856F8] + 4);
  v13 = swift_task_alloc();
  *(v6 + 32) = v13;
  *v13 = v6;
  v13[1] = sub_24DD0CB84;

  return MEMORY[0x282200320](a1, a2, a3, a5, a6, v6 + 16);
}

uint64_t sub_24DD0CB84()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v4 = *v1;

  if (v0)
  {
    **(v2 + 24) = *(v2 + 16);
  }

  v5 = *(v4 + 8);

  return v5();
}

uint64_t UncheckedAsyncIteratorSequence.makeAsyncIterator()@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v11 - v6;
  v9 = v8;
  LOBYTE(v8) = 0;
  atomic_compare_exchange_strong_explicit((v1 + *(v9 + 104)), &v8, 1u, memory_order_relaxed, memory_order_relaxed);
  if (v8)
  {
    result = sub_24DD4B5B4();
    __break(1u);
  }

  else
  {
    (*(v4 + 16))(&v11 - v6, v1 + *(*v1 + 96), v3);
    return (*(v4 + 32))(a1, v7, v3);
  }

  return result;
}

uint64_t UncheckedAsyncIteratorSequence.__deallocating_deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_24DD0CF5C@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  UncheckedAsyncIteratorSequence.makeAsyncIterator()(a1);
}

uint64_t sub_24DD0CF98(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
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

uint64_t sub_24DD0D078()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F1AF378, &qword_24DD4C8D8);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_24DD0D0B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24DD0D120(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_24DD0D260(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_24DD0D4B4(uint64_t a1, unint64_t a2)
{
  v5 = sub_24DD4AAF4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  result = MEMORY[0x28223BE20]();
  v10 = &v32[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v12 = 0;
    if (v11 != 2)
    {
      goto LABEL_10;
    }

    v14 = *(a1 + 16);
    v13 = *(a1 + 24);
    v12 = v13 - v14;
    if (!__OFSUB__(v13, v14))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v11)
  {
    v12 = BYTE6(a2);
    goto LABEL_10;
  }

  if (__OFSUB__(HIDWORD(a1), a1))
  {
    goto LABEL_36;
  }

  v12 = HIDWORD(a1) - a1;
LABEL_10:
  v15 = *v2;
  v16 = *(*v2 + 2);
  v17 = v16 + v12;
  if (__OFADD__(v16, v12))
  {
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    v27 = v2;
    v28 = *(v15 + 2);
    sub_24DD0E590(&qword_27F1AF418, MEMORY[0x277CC92E0]);
    sub_24DD4B4D4();
    if (v33)
    {
      goto LABEL_22;
    }

    while (1)
    {
      v29 = *(v15 + 3);
      v30 = v29 >> 1;
      if ((v29 >> 1) >= v28 + 1)
      {
        break;
      }

      v15 = sub_24DD391A8((v29 > 1), v28 + 1, 1, v15);
      v31 = v33;
      v30 = *(v15 + 3) >> 1;
      if ((v33 & 1) == 0)
      {
        goto LABEL_30;
      }

LABEL_27:
      *(v15 + 2) = v28;
      v2 = v27;
      if (v31)
      {
        goto LABEL_22;
      }
    }

    v31 = 0;
    do
    {
LABEL_30:
      if (v28 >= v30)
      {
        break;
      }

      v15[v28++ + 32] = v32[14];
      sub_24DD4B4D4();
      v31 = v33;
    }

    while ((v33 & 1) == 0);
    goto LABEL_27;
  }

  v18 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v20 = *(v15 + 3) >> 1, v20 < v17))
  {
    if (v16 <= v17)
    {
      v21 = v16 + v12;
    }

    else
    {
      v21 = v16;
    }

    v15 = sub_24DD391A8(isUniquelyReferenced_nonNull_native, v21, 1, v15);
    v20 = *(v15 + 3) >> 1;
  }

  v22 = v20 - *(v15 + 2);
  v23 = sub_24DD4AAD4();
  result = sub_24DD0E53C(a1, a2);
  if (v23 < v12)
  {
    goto LABEL_24;
  }

  if (v23 < 1)
  {
    goto LABEL_21;
  }

  v24 = *(v15 + 2);
  v25 = __OFADD__(v24, v23);
  v26 = v24 + v23;
  if (!v25)
  {
    *(v15 + 2) = v26;
LABEL_21:
    if (v23 != v22)
    {
LABEL_22:
      result = (*(v6 + 8))(v10, v5);
      *v2 = v15;
      return result;
    }

    goto LABEL_25;
  }

  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_24DD0D780(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_24DD391A8(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_24DD0D86C(uint64_t result, char *a2)
{
  v5 = &a2[-result];
  if (result)
  {
    v6 = &a2[-result];
  }

  else
  {
    v6 = 0;
  }

  v7 = *v2;
  v8 = *(*v2 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v4 = a2;
  v3 = result;
  v10 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || (v11 = *(v7 + 24) >> 1, v11 < v9))
  {
    if (v8 <= v9)
    {
      v12 = v8 + v6;
    }

    else
    {
      v12 = v8;
    }

    result = sub_24DD391A8(result, v12, 1, v7);
    v7 = result;
    v11 = *(result + 24) >> 1;
  }

  v13 = *(v7 + 16);
  v14 = v11 - v13;
  v15 = 0;
  if (v3 && v4 && v4 > v3 && v11 != v13)
  {
    if (v5 >= v14)
    {
      v15 = v11 - v13;
    }

    else
    {
      v15 = v5;
    }

    if (v15 < 0)
    {
      __break(1u);
      return result;
    }

    result = memmove((v7 + v13 + 32), v3, v15);
    v3 += v15;
  }

  if (v15 < v6)
  {
    goto LABEL_34;
  }

  if (!v15)
  {
    goto LABEL_24;
  }

  v16 = *(v7 + 16);
  v17 = __OFADD__(v16, v15);
  v18 = v16 + v15;
  if (!v17)
  {
    *(v7 + 16) = v18;
LABEL_24:
    if (v15 != v14 || v3 == 0 || v3 == v4)
    {
      goto LABEL_32;
    }

    goto LABEL_36;
  }

LABEL_35:
  __break(1u);
LABEL_36:
  v21 = *(v7 + 16);
  v24 = *v3;
  v22 = v3 + 1;
  v23 = v24;
  while (1)
  {
    v25 = *(v7 + 24);
    v26 = v25 >> 1;
    if ((v25 >> 1) < v21 + 1)
    {
      break;
    }

    if (v21 < v26)
    {
      goto LABEL_40;
    }

LABEL_37:
    *(v7 + 16) = v21;
  }

  result = sub_24DD391A8((v25 > 1), v21 + 1, 1, v7);
  v7 = result;
  v26 = *(result + 24) >> 1;
  if (v21 >= v26)
  {
    goto LABEL_37;
  }

LABEL_40:
  v27 = v21 + 32;
  while (1)
  {
    *(v7 + v27) = v23;
    if (v22 == v4)
    {
      break;
    }

    v28 = *v22++;
    v23 = v28;
    if (++v27 - v26 == 32)
    {
      v21 = v26;
      goto LABEL_37;
    }
  }

  *(v7 + 16) = v27 - 31;
LABEL_32:
  *v2 = v7;
  return result;
}

uint64_t GRPCMessageDeframer.init(maxPayloadSize:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 41) = 2;
  v3 = MEMORY[0x277D84F90];
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = v3;
  *(a3 + 24) = 2;
  *(a3 + 32) = result;
  *(a3 + 40) = a2 & 1;
  return result;
}

uint64_t GRPCMessageDeframer.append(_:)(uint64_t a1, unint64_t a2)
{
  sub_24DD0BFC0(a1, a2);

  return sub_24DD0D4B4(a1, a2);
}

void _s31GRPCURLSessionTransportInternal19GRPCMessageDeframerV11nextMessageAA0aB5BytesVSgy08GRPCCoreC08RPCErrorVYKF(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_24DD4AFE4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20]();
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  do
  {
    sub_24DD0DBC0();
    if (v2)
    {
      (*(v6 + 32))(a1, v9, v5);
      return;
    }
  }

  while (!v10);
  if (v10 == 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  *a2 = v11;
}

void sub_24DD0DBC0()
{
  v2 = *(*(sub_24DD4AF64() - 8) + 64);
  MEMORY[0x28223BE20]();
  v3 = *(*(sub_24DD4AFC4() - 8) + 64);
  MEMORY[0x28223BE20]();
  v4 = *(v0 + 24);
  if (v4 != 2)
  {
    if ((*(v0 + 40) & 1) == 0 && *(v0 + 32) < *(v0 + 16))
    {
      goto LABEL_11;
    }

    sub_24DD0E38C(*(v0 + 16));
    if (!v11)
    {
      return;
    }

    *(v0 + 16) = 0;
    *(v0 + 24) = 2;
    if ((v4 & 1) == 0)
    {
      return;
    }

    v12 = *(v0 + 41);
    if (v12 == 2)
    {

      sub_24DD4AF94();
      MEMORY[0x2530379D0](MEMORY[0x277D84F90]);
      goto LABEL_12;
    }

    if (v12)
    {
      sub_24DD0B388(v11, v15);
      if (v1)
      {
LABEL_22:

        v13 = v15[0];
        v14 = v15[0];
        sub_24DD0E424();
        sub_24DD4AFF4();
        sub_24DD4AFE4();
        sub_24DD0E590(&qword_27F1AF400, MEMORY[0x277D0B938]);
        swift_willThrowTypedImpl();

        return;
      }
    }

    else
    {
      sub_24DD0B024(v11, v15);
      if (v1)
      {
        goto LABEL_22;
      }
    }

    return;
  }

  v5 = *(v0 + 8);
  v6 = *(*v0 + 16);
  if ((v6 - v5) < 5)
  {
    return;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (v6 <= v5)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v7 = *(*v0 + v5 + 32);
  *(v0 + 8) = v5 + 1;
  v8 = sub_24DD0E2AC();
  if ((v8 & 0x100000000) != 0)
  {
LABEL_27:
    __break(1u);
    return;
  }

  if ((*(v0 + 40) & 1) == 0 && *(v0 + 32) < v8)
  {
LABEL_11:
    sub_24DD4AFB4();
    v15[0] = 0;
    v15[1] = 0xE000000000000000;
    sub_24DD4B534();
    MEMORY[0x253037C70](0xD00000000000003FLL, 0x800000024DD51DE0);
    v9 = sub_24DD4B624();
    MEMORY[0x253037C70](v9);

    MEMORY[0x253037C70](0x6C6175746361202CLL, 0xEA0000000000203ALL);
    v10 = sub_24DD4B624();
    MEMORY[0x253037C70](v10);

    MEMORY[0x253037C70](41, 0xE100000000000000);
    MEMORY[0x2530379D0](MEMORY[0x277D84F90]);
LABEL_12:
    sub_24DD4AFD4();
    sub_24DD4AFE4();
    sub_24DD0E590(&qword_27F1AF400, MEMORY[0x277D0B938]);
    swift_willThrowTypedImpl();
    return;
  }

  *(v0 + 16) = v8;
  *(v0 + 24) = v7 == 1;
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

uint64_t sub_24DD0E070(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 42))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24DD0E0B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 42) = 1;
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

    *(result + 42) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
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

uint64_t getEnumTagSinglePayload for GRPCMessageDeframer.NextPart(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  if (v5 + 1 >= 2)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for GRPCMessageDeframer.NextPart(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_24DD0E1C4(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24DD0E1E0(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
  }

  else if (a2)
  {
    *(result + 8) = a2 + 1;
  }

  return result;
}

uint64_t sub_24DD0E218(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24DD0E260(uint64_t result, int a2, int a3)
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

unint64_t sub_24DD0E2AC()
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = v0[1];
  v2 = *(*v0 + 16);
  v3 = v2 - v1;
  if (v2 - v1 >= 4)
  {
    v5 = v1 + 4;
    if (__OFADD__(v1, 4))
    {
      __break(1u);
    }

    else if (v5 >= v1)
    {
      if (v2 >= v1)
      {
        if ((v1 & 0x8000000000000000) == 0)
        {
          if (v2 >= v5)
          {
            v6 = *v0 + v1;
            __dst = 0;
            memcpy(&__dst, (v6 + 32), sizeof(__dst));
            v4 = bswap32(__dst);
            v0[1] = v5;
            goto LABEL_9;
          }

LABEL_14:
          __break(1u);
        }

LABEL_13:
        __break(1u);
        goto LABEL_14;
      }

LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_12;
  }

  v4 = 0;
LABEL_9:
  v7 = *MEMORY[0x277D85DE8];
  return v4 | ((v3 < 4) << 32);
}

void sub_24DD0E38C(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(*v1 + 16);
  if (v5 - v4 >= a1)
  {
    v6 = __OFADD__(v4, a1);
    v7 = v4 + a1;
    if (v6)
    {
      __break(1u);
    }

    else if (v7 >= v4)
    {
      if (v5 >= v4)
      {
        if ((v4 & 0x8000000000000000) == 0)
        {
          if (v5 >= v7)
          {
            v1[1] = v7;
            if (v5 == v7 - v4)
            {

              return;
            }

            goto LABEL_14;
          }

LABEL_13:
          __break(1u);
LABEL_14:
          sub_24DD0E478(v3, v3 + 32, v4, (2 * v7) | 1);
          return;
        }

LABEL_12:
        __break(1u);
        goto LABEL_13;
      }

LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

    __break(1u);
    goto LABEL_11;
  }
}

unint64_t sub_24DD0E424()
{
  result = qword_27F1AF408;
  if (!qword_27F1AF408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1AF408);
  }

  return result;
}

void sub_24DD0E478(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x277D84F90];
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF410, &qword_24DD4DA60);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v8[2] = v5;
      v8[3] = 2 * v9 - 64;
      if (v4 != a3)
      {
LABEL_5:
        memcpy(v8 + 4, (a2 + a3), v5);
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

uint64_t sub_24DD0E53C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_24DD0E590(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24DD0E5D8()
{
  v1 = sub_24DD4B0A4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = 0;
  v7 = v0[6];
  if ((v0[10] & 0xC0) == 0)
  {
    v8 = v0[3];
    v9 = v0[5];
    v27 = *(v0 + 32);
    v10 = v0[1];
    v29 = v0[2];
    v30 = v8;
    v11 = *v0;
    v31 = sub_24DD0E8CC(v10);
    v13 = v12;
    v25 = v12;
    v26 = type metadata accessor for RequestPartOutputStreamBridge(0);
    v14 = objc_allocWithZone(v26);
    *&v14[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_outputStream] = v13;
    type metadata accessor for RequestPartOutputStreamBridge.State(0);
    swift_storeEnumTagMultiPayload();
    *&v14[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_requestParts] = v11;
    v14[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_compressor] = v29;
    v15 = &v14[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_streamID];
    v28 = v7;
    v29 = v9;
    *v15 = v9;
    v15[1] = v7;
    swift_retain_n();
    v16 = v25;
    sub_24DD4B094();
    (*(v2 + 32))(&v14[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_logger], v5, v1);
    v33.receiver = v14;
    v33.super_class = v26;
    v17 = objc_msgSendSuper2(&v33, sel_init);
    v18 = OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_outputStream;
    [*(v17 + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_outputStream) setDelegate_];
    v19 = qword_27F1AF290;
    v20 = *(v17 + v18);
    if (v19 != -1)
    {
      swift_once();
    }

    MEMORY[0x2530381D0](v20, qword_27F1B0990);

    v21 = *(v17 + v18);
    [v21 open];

    v32 = v27 & 1;

    v22 = v32 & 1 | 0x240;
    v23 = MEMORY[0x277D84F90];
    *v0 = v17 & 0xFFFFFFFFFFFFFF8;
    v0[1] = v23;
    v24 = v28;
    v0[2] = v29;
    v0[3] = v24;
    v0[4] = 0;
    v0[5] = v23;
    v0[6] = 0;
    v0[7] = 0;
    v0[8] = 2;
    result = v31;
    v0[9] = v30;
    *(v0 + 40) = v22;
  }

  return result;
}

uint64_t sub_24DD0E8CC(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = 0;
  v8[0] = 0;
  [objc_opt_self() getBoundStreamsWithBufferSize:a1 inputStream:v8 outputStream:&v7];
  v1 = v8[0];
  if (v8[0])
  {
    if (v7)
    {
      v2 = v7;
      v3 = v1;
      v4 = *MEMORY[0x277D85DE8];
      return v1;
    }
  }

  else
  {
    v6 = v7;
  }

  result = sub_24DD4B5B4();
  __break(1u);
  return result;
}

uint64_t sub_24DD0E9B4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v197 = sub_24DD4ADF4();
  v195 = *(v197 - 8);
  v5 = *(v195 + 64);
  MEMORY[0x28223BE20](v197);
  v189 = &v166 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF608, &qword_24DD4CBA8);
  v7 = *(*(v196 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v196);
  v187 = &v166 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v192 = &v166 - v11;
  MEMORY[0x28223BE20](v10);
  v191 = &v166 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF610, &unk_24DD4CBB0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v184 = &v166 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v186 = &v166 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v185 = &v166 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v193 = &v166 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v188 = &v166 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v194 = &v166 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v190 = &v166 - v28;
  MEMORY[0x28223BE20](v27);
  v198 = &v166 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF578, &qword_24DD4CB30);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v33 = &v166 - v32;
  v34 = sub_24DD4AEE4();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  v37 = MEMORY[0x28223BE20](v34);
  v199 = &v166 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v37);
  v41 = &v166 - v40;
  MEMORY[0x28223BE20](v39);
  v43 = &v166 - v42;
  v44 = sub_24DD4AF24();
  v200 = *(v44 - 8);
  v201 = v44;
  v45 = *(v200 + 8);
  MEMORY[0x28223BE20](v44);
  v47 = &v166 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for StreamingURLSessionDelegate.State.ReceivedResponseHeadAction(0);
  v49 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48);
  v52 = &v166 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v202 = v2;
  v53 = *(v2 + 80);
  if (!(v53 >> 6) || v53 >> 6 != 1)
  {
    goto LABEL_6;
  }

  v170 = &v166 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = v50;
  v183 = a2;
  v54 = v202[1];
  v173 = *v202;
  v174 = v54;
  v55 = v202[3];
  v175 = v202[2];
  v176 = v55;
  v56 = v202[7];
  v179 = v202[6];
  v180 = v56;
  v57 = v202[9];
  v178 = v202[8];
  v181 = v57;
  v58 = v202[4];
  v177 = v202[5];
  v172 = v53 & 0xFFFFFF3F;
  v171 = v58 & 0xFFFFFFFFFFFFFF00;
  v59 = a1;
  v60 = sub_24DD4B164();
  v61 = [v59 valueForHTTPHeaderField_];

  if (v61)
  {
    v169 = v59;
    v62 = sub_24DD4B174();
    v64 = v63;

    sub_24DD1042C(v62, v64, v33);
    if ((*(v35 + 48))(v33, 1, v34) == 1)
    {
      sub_24DD1C414(v33, &qword_27F1AF578, &qword_24DD4CB30);
      sub_24DD4AE84();
      v203 = 0;
      v204 = 0xE000000000000000;
      sub_24DD4B534();

      v203 = 0x2064696C61766E49;
      v204 = 0xEF272065756C6176;
      MEMORY[0x253037C70](v62, v64);

      MEMORY[0x253037C70](0xD000000000000021, 0x800000024DD520B0);
      sub_24DD4AEF4();
      a2 = v183;
      v65 = v169;
    }

    else
    {

      (*(v35 + 32))(v43, v33, v34);
      v87 = sub_24DD4B164();
      v88 = [v169 valueForHTTPHeaderField_];

      a2 = v183;
      if (v88)
      {
        v89 = sub_24DD4B174();
        v91 = v90;
      }

      else
      {
        v89 = 0;
        v91 = 0;
      }

      (*(v35 + 16))(v41, v43, v34);
      if (v91)
      {

        sub_24DD3DE58(v89, v91);
        swift_bridgeObjectRelease_n();
      }

      v65 = v169;
      sub_24DD4AEF4();
      (*(v35 + 8))(v43, v34);
    }

    v100 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1AF550, &qword_24DD4CB18) + 48);
    v102 = v200;
    v101 = v201;
    v103 = v170;
    (*(v200 + 2))(v170, v47, v201);
    v104 = [v65 allHeaderFields];
    v105 = sub_24DD4B114();

    v106 = sub_24DD12F24(v105);

    if (v106)
    {
      v107 = sub_24DD13FD8(v106);

      v203 = v107;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF568, &qword_24DD4CB28);
      sub_24DD1BF78();
      sub_24DD4AF74();
    }

    else
    {
      MEMORY[0x2530379D0](MEMORY[0x277D84F90]);
    }

    (*(v102 + 1))(v47, v101);
    v52 = v103;
    swift_storeEnumTagMultiPayload();
    v108 = v202;
    *(v202 + 3) = 0u;
    *(v108 + 4) = 0u;
    *(v108 + 1) = 0u;
    *(v108 + 2) = 0u;
    *v108 = 0u;
    *(v108 + 40) = 128;
    goto LABEL_30;
  }

  v66 = [v59 statusCode];
  a2 = v183;
  if (v66 != 200)
  {
    v92 = v202;
    *(v202 + 3) = 0u;
    *(v92 + 4) = 0u;
    *(v92 + 1) = 0u;
    *(v92 + 2) = 0u;
    *v92 = 0u;
    *(v92 + 40) = 128;
    v93 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1AF550, &qword_24DD4CB18) + 48);
    v94 = [v59 statusCode];
    v95 = v170;
    sub_24DD1077C(v94);
    v96 = [v59 allHeaderFields];
    v97 = sub_24DD4B114();

    v98 = sub_24DD12F24(v97);

    if (v98)
    {
      v99 = sub_24DD13FD8(v98);

      v203 = v99;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF568, &qword_24DD4CB28);
      sub_24DD1BF78();
      sub_24DD4AF74();
    }

    else
    {
      MEMORY[0x2530379D0](MEMORY[0x277D84F90]);
    }

    v52 = v95;
    swift_storeEnumTagMultiPayload();
LABEL_30:
    v203 = v173;
    v204 = v174;
    v205 = v175;
    v206 = v176;
    v207 = v171 | 1;
    v208 = v177;
    v209 = v179;
    v210 = v180;
    v211 = v178;
    v212 = v181;
    v213 = v172;
    sub_24DD1C37C(&v203);
    return sub_24DD1C318(v52, a2);
  }

  v67 = sub_24DD4B164();
  v68 = [v59 valueForHTTPHeaderField_];

  if (!v68)
  {
    v109 = v202;
    *(v202 + 3) = 0u;
    *(v109 + 4) = 0u;
    *(v109 + 1) = 0u;
    *(v109 + 2) = 0u;
    *v109 = 0u;
    *(v109 + 40) = 128;
    v110 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1AF550, &qword_24DD4CB18) + 48);
    sub_24DD4AE84();
    sub_24DD4AEF4();
    v111 = [v59 allHeaderFields];
LABEL_26:
    v112 = v111;
    v113 = sub_24DD4B114();

    v114 = sub_24DD12F24(v113);

    if (v114)
    {
      goto LABEL_33;
    }

    v121 = MEMORY[0x277D84F90];
LABEL_36:
    MEMORY[0x2530379D0](v121);
    goto LABEL_37;
  }

  v169 = v59;
  v69 = sub_24DD4B174();
  v71 = v70;

  if (sub_24DD4B234())
  {

    v72 = sub_24DD4B164();
    v73 = [v169 valueForHTTPHeaderField_];

    if (!v73)
    {
LABEL_66:
      v146 = v172;
LABEL_67:
      v159 = v169;
      v160 = v178;
      v161 = v202;
      *v202 = v173 & 0xFFFFFFFFFFFFFF8;
      v161[1] = v174;
      v161[2] = v175;
      v161[3] = v176;
      v161[4] = 1;
      v161[5] = v177;
      v161[6] = v179;
      v161[7] = v180;
      v161[8] = v160;
      v161[9] = v181;
      *(v161 + 40) = v146 & 0xFF01 | 0x40;
      v162 = [v159 allHeaderFields];
      v163 = sub_24DD4B114();

      v164 = sub_24DD12F24(v163);

      if (v164)
      {
        v165 = sub_24DD13FD8(v164);

        v203 = v165;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF568, &qword_24DD4CB28);
        sub_24DD1BF78();
        v52 = v170;
        sub_24DD4AF74();
      }

      else
      {
        v52 = v170;
        MEMORY[0x2530379D0](MEMORY[0x277D84F90]);
      }

LABEL_6:
      swift_storeEnumTagMultiPayload();
      return sub_24DD1C318(v52, a2);
    }

    v168 = v53;
    v74 = sub_24DD4B174();
    v76 = v75;

    v167 = v74;
    v77 = sub_24DD4B254();
    v78 = v190;
    sub_24DD3EE60(v77, v79, v80, v81, v190);
    v82 = v195;
    v83 = v197;
    v84 = *(v195 + 48);
    v201 = v195 + 48;
    if (v84(v78, 1, v197))
    {
      sub_24DD1C414(v78, &qword_27F1AF610, &unk_24DD4CBB0);
      v85 = 1;
      v86 = v198;
    }

    else
    {
      v86 = v198;
      (*(v82 + 32))(v198, v78, v83);
      v85 = 0;
    }

    v122 = v194;
    v123 = v82 + 56;
    v124 = *(v82 + 56);
    v124(v86, v85, 1, v83);
    sub_24DD4ADC4();
    v190 = v123;
    v200 = v124;
    v124(v122, 0, 1, v83);
    v125 = *(v196 + 48);
    v126 = v191;
    sub_24DD1C3AC(v122, v191, &qword_27F1AF610, &unk_24DD4CBB0);
    sub_24DD1C3AC(v86, v126 + v125, &qword_27F1AF610, &unk_24DD4CBB0);
    if (v84(v126, 1, v83) == 1)
    {
      sub_24DD1C414(v122, &qword_27F1AF610, &unk_24DD4CBB0);
      v127 = v84(v126 + v125, 1, v83);
      v128 = v192;
      v129 = v193;
      v130 = v84;
      if (v127 == 1)
      {

        sub_24DD1C414(v126, &qword_27F1AF610, &unk_24DD4CBB0);
LABEL_56:
        sub_24DD1C414(v198, &qword_27F1AF610, &unk_24DD4CBB0);
        v146 = v168 & 0x3F;
        goto LABEL_67;
      }
    }

    else
    {
      v131 = v188;
      sub_24DD1C3AC(v126, v188, &qword_27F1AF610, &unk_24DD4CBB0);
      v132 = v84(v126 + v125, 1, v83);
      v128 = v192;
      v130 = v84;
      if (v132 != 1)
      {
        v140 = v195;
        v141 = v189;
        (*(v195 + 32))(v189, v126 + v125, v83);
        sub_24DD1C4DC(&qword_27F1AF618, MEMORY[0x277D0B8B0]);
        v142 = sub_24DD4B154();
        v83 = v197;
        v143 = v142;
        v144 = v131;
        v145 = *(v140 + 8);
        v145(v141, v197);
        sub_24DD1C414(v194, &qword_27F1AF610, &unk_24DD4CBB0);
        v145(v144, v83);
        a2 = v183;
        sub_24DD1C414(v126, &qword_27F1AF610, &unk_24DD4CBB0);
        v129 = v193;
        if (v143)
        {

          goto LABEL_56;
        }

LABEL_45:
        v194 = v76;
        sub_24DD4ADE4();
        v200(v129, 0, 1, v83);
        v133 = *(v196 + 48);
        sub_24DD1C3AC(v129, v128, &qword_27F1AF610, &unk_24DD4CBB0);
        sub_24DD1C3AC(v198, v128 + v133, &qword_27F1AF610, &unk_24DD4CBB0);
        if (v130(v128, 1, v83) == 1)
        {
          sub_24DD1C414(v129, &qword_27F1AF610, &unk_24DD4CBB0);
          v134 = v130(v128 + v133, 1, v83);
          v135 = v194;
          if (v134 == 1)
          {

            sub_24DD1C414(v128, &qword_27F1AF610, &unk_24DD4CBB0);
LABEL_63:
            sub_24DD1C414(v198, &qword_27F1AF610, &unk_24DD4CBB0);
            v146 = v168 & 0x3F | 0x100;
            goto LABEL_67;
          }
        }

        else
        {
          v136 = v185;
          sub_24DD1C3AC(v128, v185, &qword_27F1AF610, &unk_24DD4CBB0);
          if (v130(v128 + v133, 1, v83) != 1)
          {
            v151 = v195;
            v152 = v189;
            (*(v195 + 32))(v189, v128 + v133, v83);
            sub_24DD1C4DC(&qword_27F1AF618, MEMORY[0x277D0B8B0]);
            v153 = sub_24DD4B154();
            v83 = v197;
            LODWORD(v192) = v153;
            v154 = *(v151 + 8);
            v154(v152, v197);
            sub_24DD1C414(v193, &qword_27F1AF610, &unk_24DD4CBB0);
            v154(v136, v83);
            a2 = v183;
            sub_24DD1C414(v128, &qword_27F1AF610, &unk_24DD4CBB0);
            v135 = v194;
            if (v192)
            {

              goto LABEL_63;
            }

LABEL_51:
            v137 = v186;
            sub_24DD4ADD4();
            v200(v137, 0, 1, v83);
            v138 = *(v196 + 48);
            v139 = v187;
            sub_24DD1C3AC(v137, v187, &qword_27F1AF610, &unk_24DD4CBB0);
            sub_24DD1C474(v198, v139 + v138, &qword_27F1AF610, &unk_24DD4CBB0);
            if (v130(v139, 1, v83) == 1)
            {
              sub_24DD1C414(v137, &qword_27F1AF610, &unk_24DD4CBB0);
              if (v130(v139 + v138, 1, v83) == 1)
              {

                sub_24DD1C414(v139, &qword_27F1AF610, &unk_24DD4CBB0);
                goto LABEL_66;
              }
            }

            else
            {
              v147 = v130;
              v148 = v184;
              sub_24DD1C3AC(v139, v184, &qword_27F1AF610, &unk_24DD4CBB0);
              if (v147(v139 + v138, 1, v83) != 1)
              {
                v155 = v195;
                v156 = v189;
                (*(v195 + 32))(v189, v139 + v138, v83);
                sub_24DD1C4DC(&qword_27F1AF618, MEMORY[0x277D0B8B0]);
                v157 = sub_24DD4B154();
                v158 = *(v155 + 8);
                v158(v156, v83);
                sub_24DD1C414(v137, &qword_27F1AF610, &unk_24DD4CBB0);
                v158(v148, v83);
                v135 = v194;
                sub_24DD1C414(v139, &qword_27F1AF610, &unk_24DD4CBB0);
                if (v157)
                {

                  goto LABEL_66;
                }

                goto LABEL_60;
              }

              sub_24DD1C414(v137, &qword_27F1AF610, &unk_24DD4CBB0);
              (*(v195 + 8))(v148, v83);
            }

            sub_24DD1C414(v139, &qword_27F1AF608, &qword_24DD4CBA8);
LABEL_60:
            v149 = v202;
            *(v202 + 3) = 0u;
            *(v149 + 4) = 0u;
            *(v149 + 1) = 0u;
            *(v149 + 2) = 0u;
            *v149 = 0u;
            *(v149 + 40) = 128;
            v150 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1AF550, &qword_24DD4CB18) + 48);
            sub_24DD4AE94();
            v203 = 0;
            v204 = 0xE000000000000000;
            sub_24DD4B534();
            MEMORY[0x253037C70](0xD000000000000030, 0x800000024DD51E20);
            MEMORY[0x253037C70](v167, v135);

            MEMORY[0x253037C70](11815, 0xE200000000000000);
            sub_24DD4AEF4();
            v111 = [v169 allHeaderFields];
            goto LABEL_26;
          }

          sub_24DD1C414(v193, &qword_27F1AF610, &unk_24DD4CBB0);
          (*(v195 + 8))(v136, v83);
          v135 = v194;
        }

        sub_24DD1C414(v128, &qword_27F1AF608, &qword_24DD4CBA8);
        goto LABEL_51;
      }

      sub_24DD1C414(v194, &qword_27F1AF610, &unk_24DD4CBB0);
      (*(v195 + 8))(v131, v83);
      v129 = v193;
    }

    sub_24DD1C414(v126, &qword_27F1AF608, &qword_24DD4CBA8);
    goto LABEL_45;
  }

  v116 = v202;
  *(v202 + 3) = 0u;
  *(v116 + 4) = 0u;
  *(v116 + 1) = 0u;
  *(v116 + 2) = 0u;
  *v116 = 0u;
  *(v116 + 40) = 128;
  v117 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1AF550, &qword_24DD4CB18) + 48);
  sub_24DD4AE84();
  v203 = 0;
  v204 = 0xE000000000000000;
  sub_24DD4B534();
  MEMORY[0x253037C70](0x2064696C61766E49, 0xEF272065756C6176);
  MEMORY[0x253037C70](v69, v71);

  MEMORY[0x253037C70](0xD000000000000022, 0x800000024DD521A0);
  sub_24DD4AEF4();
  v118 = [v169 allHeaderFields];
  v119 = sub_24DD4B114();

  v114 = sub_24DD12F24(v119);

  if (!v114)
  {
    v121 = MEMORY[0x277D84F90];
    goto LABEL_36;
  }

LABEL_33:
  v120 = sub_24DD13FD8(v114);

  v203 = v120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF568, &qword_24DD4CB28);
  sub_24DD1BF78();
  sub_24DD4AF74();
LABEL_37:
  swift_storeEnumTagMultiPayload();
  v203 = v173;
  v204 = v174;
  v205 = v175;
  v206 = v176;
  v207 = v171 | 1;
  v208 = v177;
  v209 = v179;
  v210 = v180;
  v211 = v178;
  v212 = v181;
  v213 = v172;
  return sub_24DD1C37C(&v203);
}

uint64_t sub_24DD1042C@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = HIBYTE(a2) & 0xF;
  v5 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v6 = v4;
  }

  else
  {
    v6 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
    goto LABEL_63;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v35 = result;
    v36 = a3;

    sub_24DD18BA4(v35, a2, 10);
    v38 = v37;

    a3 = v36;
    if (v38)
    {
      goto LABEL_63;
    }

    return sub_24DD4AED4();
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      v4 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      v39 = a3;
      result = sub_24DD4B584();
      a3 = v39;
      v4 = result;
    }

    v7 = *v4;
    if (v7 == 43)
    {
      if (v5 >= 1)
      {
        v17 = v5 - 1;
        if (v5 != 1)
        {
          v18 = 0;
          if (!v4)
          {
            goto LABEL_62;
          }

          v19 = (v4 + 1);
          while (1)
          {
            v20 = *v19 - 48;
            if (v20 > 9)
            {
              break;
            }

            v21 = 10 * v18;
            if ((v18 * 10) >> 64 != (10 * v18) >> 63)
            {
              break;
            }

            v18 = v21 + v20;
            if (__OFADD__(v21, v20))
            {
              break;
            }

            ++v19;
            if (!--v17)
            {
LABEL_53:
              LOBYTE(v4) = 0;
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }

      goto LABEL_69;
    }

    if (v7 == 45)
    {
      if (v5 >= 1)
      {
        v8 = v5 - 1;
        if (v5 != 1)
        {
          v9 = 0;
          if (!v4)
          {
            goto LABEL_62;
          }

          v10 = (v4 + 1);
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v9;
            if ((v9 * 10) >> 64 != (10 * v9) >> 63)
            {
              break;
            }

            v9 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v8)
            {
              goto LABEL_53;
            }
          }
        }

        goto LABEL_61;
      }

      __break(1u);
      goto LABEL_68;
    }

    if (v5)
    {
      v26 = 0;
      if (!v4)
      {
        goto LABEL_62;
      }

      while (1)
      {
        v27 = *v4 - 48;
        if (v27 > 9)
        {
          break;
        }

        v28 = 10 * v26;
        if ((v26 * 10) >> 64 != (10 * v26) >> 63)
        {
          break;
        }

        v26 = v28 + v27;
        if (__OFADD__(v28, v27))
        {
          break;
        }

        ++v4;
        if (!--v5)
        {
          goto LABEL_53;
        }
      }
    }

    goto LABEL_61;
  }

  v40[0] = result;
  v40[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result == 45)
    {
      if (!v4)
      {
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
        goto LABEL_70;
      }

      if (--v4)
      {
        v13 = 0;
        v14 = v40 + 1;
        while (1)
        {
          v15 = *v14 - 48;
          if (v15 > 9)
          {
            break;
          }

          v16 = 10 * v13;
          if ((v13 * 10) >> 64 != (10 * v13) >> 63)
          {
            break;
          }

          v13 = v16 - v15;
          if (__OFSUB__(v16, v15))
          {
            break;
          }

          ++v14;
          if (!--v4)
          {
            goto LABEL_62;
          }
        }
      }
    }

    else if (v4)
    {
      v29 = 0;
      v30 = v40;
      while (1)
      {
        v31 = *v30 - 48;
        if (v31 > 9)
        {
          break;
        }

        v32 = 10 * v29;
        if ((v29 * 10) >> 64 != (10 * v29) >> 63)
        {
          break;
        }

        v29 = v32 + v31;
        if (__OFADD__(v32, v31))
        {
          break;
        }

        ++v30;
        if (!--v4)
        {
          goto LABEL_62;
        }
      }
    }

LABEL_61:
    LOBYTE(v4) = 1;
LABEL_62:
    v41 = v4;
    if (v4)
    {
LABEL_63:
      v33 = a3;
      v34 = sub_24DD4AEE4();
      return (*(*(v34 - 8) + 56))(v33, 1, 1, v34);
    }

    return sub_24DD4AED4();
  }

  if (v4)
  {
    if (--v4)
    {
      v22 = 0;
      v23 = v40 + 1;
      while (1)
      {
        v24 = *v23 - 48;
        if (v24 > 9)
        {
          break;
        }

        v25 = 10 * v22;
        if ((v22 * 10) >> 64 != (10 * v22) >> 63)
        {
          break;
        }

        v22 = v25 + v24;
        if (__OFADD__(v25, v24))
        {
          break;
        }

        ++v23;
        if (!--v4)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_70:
  __break(1u);
  return result;
}

uint64_t sub_24DD1077C(uint64_t a1)
{
  v2 = sub_24DD4AEE4();
  v3 = *(*(v2 - 8) + 64);
  result = MEMORY[0x28223BE20](v2 - 8);
  if (a1 > 400)
  {
    if (a1 >= 403)
    {
      if (a1 <= 403)
      {
        sub_24DD4AEB4();
        return sub_24DD4AEF4();
      }

      if (a1 > 428)
      {
        if (a1 > 501)
        {
          if (a1 != 502 && a1 != 503 && a1 != 504)
          {
            goto LABEL_22;
          }
        }

        else if (a1 != 429)
        {
          goto LABEL_22;
        }

        sub_24DD4AE74();
        return sub_24DD4AEF4();
      }

      if (a1 == 404)
      {
        sub_24DD4AE94();
        return sub_24DD4AEF4();
      }
    }

    else if (a1 == 401)
    {
      sub_24DD4AEA4();
      return sub_24DD4AEF4();
    }

LABEL_22:
    sub_24DD4AEC4();
    v5 = sub_24DD4B624();
    MEMORY[0x253037C70](v5);

    return sub_24DD4AEF4();
  }

  if (a1 == 400)
  {
    sub_24DD4AE84();
    return sub_24DD4AEF4();
  }

  if (a1 != 200)
  {
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

uint64_t static Status.unsupportedEncoding(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(*(sub_24DD4AEE4() - 8) + 64);
  MEMORY[0x28223BE20]();
  sub_24DD4AE94();
  sub_24DD4B534();
  MEMORY[0x253037C70](0xD000000000000030, 0x800000024DD51E20);
  MEMORY[0x253037C70](a1, a2);
  MEMORY[0x253037C70](11815, 0xE200000000000000);
  return sub_24DD4AEF4();
}

void *sub_24DD10AAC(uint64_t a1)
{
  v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B0B60, &qword_24DD4CB20);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v57 = (&v51 - v7);
  v8 = sub_24DD4AFE4();
  v9 = *(*(v8 - 8) + 64);
  v10 = (MEMORY[0x28223BE20])();
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v51 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v51 - v17;
  MEMORY[0x28223BE20](v16);
  v21 = &v51 - v20;
  v22 = *(v3 + 40);
  if ((v22 & 0xC0) != 0x40)
  {
    return MEMORY[0x277D84F90];
  }

  v52 = v5;
  v54 = v19;
  v55 = a1;
  v23 = v3[9];
  v58 = *v3;
  v24 = *(v3 + 3);
  v59 = *(v3 + 1);
  v60 = v24;
  v25 = *(v3 + 7);
  v61 = *(v3 + 5);
  v62 = v25;
  v63 = v23;
  v26 = v59;
  v64 = v22 & 0xFF3F;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v53 = v12;
  v56 = v4;
  if (isUniquelyReferenced_nonNull_native)
  {
    v28 = v26[2];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v26 = sub_24DD4A178(0, v28, 1, v26);
      *&v59 = v26;
    }

    sub_24DD1A2F0(0, v28, 0);
  }

  else
  {
    v29 = sub_24DD18A9C(0, v26[3] >> 1);

    v26 = v29;
  }

  *&v59 = v26;
  for (i = v65; ; i = v65)
  {
    do
    {
      sub_24DD0DBC0();
      if (i)
      {
        v34 = v54;
        v35 = *(v54 + 32);
        v35(v18, v15, v8);
        v35(v21, v18, v8);
        v36 = v53;
        v35(v53, v21, v8);
        v37 = v60;
        v38 = v62;
        v39 = BYTE8(v62);
        v40 = v63;
        v41 = BYTE8(v60) & 1;
        v42 = v64 & 0xFF01 | 0x40;
        *v3 = v58 & 0xFFFFFFFFFFFFFF8;
        *(v3 + 1) = v59;
        v3[3] = v37;
        v3[4] = v41;
        *(v3 + 5) = v61;
        v3[7] = v38;
        v3[8] = v39;
        v3[9] = v40;
        *(v3 + 40) = v42;
        (*(v34 + 16))(v55, v36, v8);
        sub_24DD1C4DC(&qword_27F1AF400, MEMORY[0x277D0B938]);
        swift_willThrowTypedImpl();
        v43 = *(v34 + 8);
        v26 = (v34 + 8);
        v43(v36, v8);
        return v26;
      }
    }

    while (!v31);
    if (v31 == 1)
    {
      break;
    }

    v65 = 0;
    *v57 = v31;
    swift_storeEnumTagMultiPayload();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v26 = sub_24DD4A178(0, v26[2] + 1, 1, v26);
    }

    v33 = v26[2];
    v32 = v26[3];
    if (v33 >= v32 >> 1)
    {
      v26 = sub_24DD4A178(v32 > 1, v33 + 1, 1, v26);
    }

    v26[2] = v33 + 1;
    sub_24DD1C474(v57, v26 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v33, &unk_27F1B0B60, &qword_24DD4CB20);
    *&v59 = v26;
  }

  v44 = v60;
  v45 = v62;
  v46 = BYTE8(v62);
  v47 = v63;
  v48 = BYTE8(v60) & 1;
  v49 = v64 & 0xFF01 | 0x40;
  *v3 = v58 & 0xFFFFFFFFFFFFFF8;
  *(v3 + 1) = v59;
  v3[3] = v44;
  v3[4] = v48;
  *(v3 + 5) = v61;
  v3[7] = v45;
  v3[8] = v46;
  v3[9] = v47;
  *(v3 + 40) = v49;

  return v26;
}

void sub_24DD10F9C(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF578, &qword_24DD4CB30);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v28 - v6;
  v8 = sub_24DD4AEE4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v28 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v28 - v15;
  if (!*(a1 + 16) || (v17 = sub_24DD392AC(0x6174732D63707267, 0xEB00000000737574), (v18 & 1) == 0))
  {
    if (a2)
    {
      v22 = a2;
      sub_24DD4AEC4();
      v29 = 0;
      v30 = 0xE000000000000000;
      sub_24DD4B534();
      MEMORY[0x253037C70](0xD000000000000021, 0x800000024DD52080);
      swift_getErrorValue();
      sub_24DD4B644();
      sub_24DD4AEF4();

      return;
    }

    sub_24DD4AE84();
    goto LABEL_8;
  }

  v19 = (*(a1 + 56) + 16 * v17);
  v21 = *v19;
  v20 = v19[1];

  sub_24DD1042C(v21, v20, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_24DD1C414(v7, &qword_27F1AF578, &qword_24DD4CB30);
    sub_24DD4AE84();
    v29 = 0;
    v30 = 0xE000000000000000;
    sub_24DD4B534();

    v29 = 0x2064696C61766E49;
    v30 = 0xEF272065756C6176;
    MEMORY[0x253037C70](v21, v20);

    MEMORY[0x253037C70](0xD000000000000021, 0x800000024DD520B0);
LABEL_8:
    sub_24DD4AEF4();
    return;
  }

  (*(v9 + 32))(v16, v7, v8);
  if (*(a1 + 16) && (v23 = sub_24DD392AC(0x73656D2D63707267, 0xEC00000065676173), (v24 & 1) != 0))
  {
    v25 = (*(a1 + 56) + 16 * v23);
    v27 = *v25;
    v26 = v25[1];
  }

  else
  {
    v27 = 0;
    v26 = 0;
  }

  (*(v9 + 16))(v14, v16, v8);
  if (v26)
  {

    sub_24DD3DE58(v27, v26);
    swift_bridgeObjectRelease_n();
  }

  sub_24DD4AEF4();
  (*(v9 + 8))(v16, v8);
}

id StreamingURLSessionDelegate.__allocating_init(requestStreamBufferSize:requestParts:responsePartSource:compressor:maxPayloadSize:streamID:)(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 *a4, uint64_t a5, char a6, uint64_t *a7)
{
  v30 = a1;
  v31 = a5;
  v13 = sub_24DD4B0A4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20]();
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = objc_allocWithZone(v7);
  v19 = *a4;
  *&v18[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal27StreamingURLSessionDelegate_responsePartSource] = *a3;
  v21 = *a7;
  v20 = a7[1];
  v22 = &v18[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal27StreamingURLSessionDelegate_hasSuspendedURLSessionTask];
  *v22 = 0;
  v22[4] = 0;
  v23 = &v18[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal27StreamingURLSessionDelegate_streamID];
  *v23 = v21;
  *(v23 + 1) = v20;
  sub_24DD4B094();
  (*(v14 + 32))(&v18[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal27StreamingURLSessionDelegate_logger], v17, v13);
  v33 = a6 & 1;
  v24 = &v18[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal27StreamingURLSessionDelegate_state];
  *v24 = 0;
  v25 = v30;
  *(v24 + 1) = a2 & 0xFFFFFFFFFFFFFF8;
  *(v24 + 2) = v25;
  v26 = v31;
  *(v24 + 3) = v19;
  *(v24 + 4) = v26;
  v24[40] = a6 & 1;
  v24[47] = 0;
  *(v24 + 45) = 0;
  *(v24 + 41) = 0;
  *(v24 + 6) = v21;
  *(v24 + 7) = v20;
  *(v24 + 9) = 0;
  *(v24 + 44) = 0;
  v32.receiver = v18;
  v32.super_class = v7;

  v27 = objc_msgSendSuper2(&v32, sel_init);

  return v27;
}

id StreamingURLSessionDelegate.init(requestStreamBufferSize:requestParts:responsePartSource:compressor:maxPayloadSize:streamID:)(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 *a4, uint64_t a5, char a6, uint64_t *a7)
{
  v29 = a5;
  ObjectType = swift_getObjectType();
  v14 = sub_24DD4B0A4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20]();
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a4;
  *&v7[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal27StreamingURLSessionDelegate_responsePartSource] = *a3;
  v21 = *a7;
  v20 = a7[1];
  v22 = &v7[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal27StreamingURLSessionDelegate_hasSuspendedURLSessionTask];
  *v22 = 0;
  v22[4] = 0;
  v23 = &v7[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal27StreamingURLSessionDelegate_streamID];
  *v23 = v21;
  *(v23 + 1) = v20;
  sub_24DD4B094();
  (*(v15 + 32))(&v7[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal27StreamingURLSessionDelegate_logger], v18, v14);
  v32 = a6 & 1;
  v24 = &v7[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal27StreamingURLSessionDelegate_state];
  *v24 = 0;
  *(v24 + 1) = a2 & 0xFFFFFFFFFFFFFF8;
  *(v24 + 2) = a1;
  v25 = v29;
  *(v24 + 3) = v19;
  *(v24 + 4) = v25;
  v24[40] = a6 & 1;
  v24[47] = 0;
  *(v24 + 45) = 0;
  *(v24 + 41) = 0;
  *(v24 + 6) = v21;
  *(v24 + 7) = v20;
  *(v24 + 9) = 0;
  *(v24 + 44) = 0;
  v31.receiver = v7;
  v31.super_class = ObjectType;

  v26 = objc_msgSendSuper2(&v31, sel_init);

  return v26;
}

uint64_t StreamingURLSessionDelegate.urlSession(_:needNewBodyStreamForTask:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24DD11844;

  return (sub_24DD1A444)(a2);
}

uint64_t sub_24DD11844(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_24DD11AD0(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_24DD11BB8;

  return sub_24DD1A444(v9);
}

uint64_t sub_24DD11BB8(void *a1)
{
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 24);
  v7 = *(*v1 + 16);
  v10 = *v1;

  (v4)[2](v4, a1);
  _Block_release(v4);

  v8 = *(v10 + 8);

  return v8();
}

uint64_t StreamingURLSessionDelegate.urlSession(_:dataTask:didReceive:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_24DD1CA94;

  return (sub_24DD1A888)(a3);
}

void sub_24DD11DE8(void *a1@<X1>, void (*a2)(char *, uint64_t)@<X2>, uint64_t *a3@<X8>)
{
  v114 = a3;
  v105 = a2;
  v4 = sub_24DD4AEE4();
  v99 = *(v4 - 8);
  v100 = v4;
  v5 = *(v99 + 64);
  MEMORY[0x28223BE20](v4);
  v98 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_24DD4AF24();
  v107 = *(v104 - 8);
  v7 = *(v107 + 64);
  v8 = MEMORY[0x28223BE20](v104);
  v101 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v91 - v11;
  MEMORY[0x28223BE20](v10);
  v110 = &v91 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF548, &qword_24DD4CB10);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v102 = (&v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v19 = (&v91 - v18);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B0B60, &qword_24DD4CB20);
  v20 = *(*(v106 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v106);
  v103 = &v91 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v91 - v23;
  v108 = sub_24DD4AF64();
  v112 = *(v108 - 8);
  v25 = *(v112 + 64);
  v26 = MEMORY[0x28223BE20](v108);
  v109 = &v91 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = &v91 - v28;
  v30 = type metadata accessor for StreamingURLSessionDelegate.State.ReceivedResponseHeadAction(0);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v91 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v36 = &v91 - v35;
  sub_24DD0E9B4(a1, &v91 - v35);
  v111 = v36;
  sub_24DD1C250(v36, v34, type metadata accessor for StreamingURLSessionDelegate.State.ReceivedResponseHeadAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1AF550, &qword_24DD4CB18);
      v38 = *(v96 + 48);
      v39 = v107;
      v40 = v110;
      v41 = v104;
      (*(v107 + 32))(v110, v34, v104);
      v42 = &v34[v38];
      v43 = v108;
      (*(v112 + 32))(v109, v42, v108);
      v44 = *(v39 + 16);
      v44(v12, v40, v41);
      v45 = v101;
      v97 = v44;
      v44(v101, v40, v41);
      v46 = v105;
      v47 = sub_24DD4B084();
      v48 = sub_24DD4B414();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        v120 = v93;
        *v49 = 136315650;
        v94 = v46;
        v50 = v98;
        v92 = v48;
        sub_24DD4AF04();
        sub_24DD1C4DC(&qword_27F1AF560, MEMORY[0x277D0B8D8]);
        v95 = v39 + 16;
        v51 = v100;
        v52 = sub_24DD4B624();
        v91 = v47;
        v53 = v52;
        v55 = v54;
        (*(v99 + 8))(v50, v51);
        v56 = *(v39 + 8);
        v56(v12, v41);
        v57 = sub_24DD38DE0(v53, v55, &v120);

        *(v49 + 4) = v57;
        *(v49 + 12) = 2080;
        v58 = sub_24DD4AF14();
        v60 = v59;
        v105 = v56;
        v56(v45, v41);
        v46 = v94;
        v61 = sub_24DD38DE0(v58, v60, &v120);

        *(v49 + 14) = v61;
        *(v49 + 22) = 2080;
        v62 = *&v46[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal27StreamingURLSessionDelegate_streamID];
        v63 = *&v46[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal27StreamingURLSessionDelegate_streamID + 8];
        v118 = 0;
        v119 = 0xE000000000000000;
        v116 = 0x726F70736E617274;
        v117 = 0xEA00000000005F74;
        v115 = v62;
        v64 = sub_24DD4B624();
        MEMORY[0x253037C70](v64);

        MEMORY[0x253037C70](v116, v117);

        MEMORY[0x253037C70](0x5F6D61657274732FLL, 0xE800000000000000);
        v116 = v63;
        v41 = v104;
        v65 = sub_24DD4B624();
        MEMORY[0x253037C70](v65);

        v66 = sub_24DD38DE0(v118, v119, &v120);

        *(v49 + 24) = v66;
        v67 = v91;
        _os_log_impl(&dword_24DD09000, v91, v92, "RPC finished with status '%s' and message '%s' for %s", v49, 0x20u);
        v68 = v93;
        swift_arrayDestroy();
        MEMORY[0x253038870](v68, -1, -1);
        v69 = v49;
        v43 = v108;
        MEMORY[0x253038870](v69, -1, -1);
      }

      else
      {

        v78 = *(v39 + 8);
        v78(v45, v41);
        v105 = v78;
        v78(v12, v41);
      }

      v79 = v113;
      v77 = v114;
      v80 = *&v46[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal27StreamingURLSessionDelegate_responsePartSource];
      v81 = *(v96 + 48);
      v82 = v103;
      v97(v103, v110, v41);
      v83 = v112;
      (*(v112 + 16))(v82 + v81, v109, v43);
      swift_storeEnumTagMultiPayload();
      v84 = v102;
      sub_24DD1C3AC(v82, v102, &unk_27F1B0B60, &qword_24DD4CB20);
      v85 = *(v80 + 16);

      sub_24DD14248(v84, &v118);
      if (v79)
      {

        sub_24DD1C414(v84, &qword_27F1AF548, &qword_24DD4CB10);
        sub_24DD1C414(v82, &unk_27F1B0B60, &qword_24DD4CB20);
      }

      else
      {

        if ((v119 & 1) == 0)
        {
          v86 = v118;
          v87 = *(v80 + 16);

          sub_24DD14D00(v86, nullsub_1, 0);
        }

        sub_24DD1C414(v84, &qword_27F1AF548, &qword_24DD4CB10);
        sub_24DD1C414(v103, &unk_27F1B0B60, &qword_24DD4CB20);
      }

      v88 = *(v80 + 16);

      sub_24DD2CFEC(0);

      (*(v83 + 8))(v109, v43);
      v105(v110, v41);
      sub_24DD1C2B8(v111, type metadata accessor for StreamingURLSessionDelegate.State.ReceivedResponseHeadAction);
      v76 = 0;
    }

    else
    {
      sub_24DD1C2B8(v111, type metadata accessor for StreamingURLSessionDelegate.State.ReceivedResponseHeadAction);
      v76 = 0;
      v77 = v114;
    }
  }

  else
  {
    v70 = v112;
    v71 = v34;
    v72 = v108;
    (*(v112 + 32))(v29, v71, v108);
    v73 = *(v105 + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal27StreamingURLSessionDelegate_responsePartSource);
    (*(v70 + 16))(v24, v29, v72);
    swift_storeEnumTagMultiPayload();
    sub_24DD1C3AC(v24, v19, &unk_27F1B0B60, &qword_24DD4CB20);
    v74 = *(v73 + 16);

    v75 = v113;
    sub_24DD14248(v19, &v118);
    if (v75)
    {

      sub_24DD1C414(v19, &qword_27F1AF548, &qword_24DD4CB10);
      sub_24DD1C414(v24, &unk_27F1B0B60, &qword_24DD4CB20);
      (*(v70 + 8))(v29, v72);
      sub_24DD1C2B8(v111, type metadata accessor for StreamingURLSessionDelegate.State.ReceivedResponseHeadAction);

      v76 = 1;
      v77 = v114;
    }

    else
    {

      v77 = v114;
      if ((v119 & 1) == 0)
      {
        v89 = v118;
        v90 = *(v73 + 16);

        sub_24DD14D00(v89, nullsub_1, 0);
      }

      sub_24DD1C414(v19, &qword_27F1AF548, &qword_24DD4CB10);
      sub_24DD1C414(v24, &unk_27F1B0B60, &qword_24DD4CB20);
      (*(v70 + 8))(v29, v72);
      sub_24DD1C2B8(v111, type metadata accessor for StreamingURLSessionDelegate.State.ReceivedResponseHeadAction);
      v76 = 1;
    }
  }

  *v77 = v76;
}

uint64_t sub_24DD12B50(void *a1, void *a2, void *a3, void *aBlock, void *a5)
{
  v5[4] = a3;
  v5[5] = a5;
  v5[2] = a1;
  v5[3] = a2;
  v5[6] = _Block_copy(aBlock);
  v10 = a1;
  v11 = a2;
  v12 = a3;
  a5;
  v13 = swift_task_alloc();
  v5[7] = v13;
  *v13 = v5;
  v13[1] = sub_24DD12C44;

  return sub_24DD1A888(v12);
}

uint64_t sub_24DD12C44(uint64_t a1)
{
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *(*v1 + 24);
  v8 = *(*v1 + 16);
  v11 = *v1;

  v4[2](v4, a1);
  _Block_release(v4);
  v9 = *(v11 + 8);

  return v9();
}

void sub_24DD12DEC(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  v6 = a3 + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal27StreamingURLSessionDelegate_hasSuspendedURLSessionTask;
  os_unfair_lock_lock((a3 + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal27StreamingURLSessionDelegate_hasSuspendedURLSessionTask));
  if (a2)
  {
    v7 = &selRef_cancel;
  }

  else
  {
    *(v6 + 4) = 0;
    v7 = &selRef_resume;
  }

  [a4 *v7];

  os_unfair_lock_unlock(v6);
}

unint64_t sub_24DD12F24(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF538, &qword_24DD4CB00);
    v2 = sub_24DD4B5F4();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = v1 + 64;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (1)
  {
    if (!v6)
    {
      while (1)
      {
        v16 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v16 >= v7)
        {

          return v2;
        }

        v6 = *(v3 + 8 * v16);
        ++v9;
        if (v6)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

    v16 = v9;
LABEL_13:
    v17 = __clz(__rbit64(v6)) | (v16 << 6);
    sub_24DD1BEA0(*(v1 + 48) + 40 * v17, v30);
    sub_24DD1BEFC(*(v1 + 56) + 32 * v17, v31 + 8);
    v28[0] = v31[0];
    v28[1] = v31[1];
    v29 = v32;
    v27[0] = v30[0];
    v27[1] = v30[1];
    sub_24DD1BEA0(v27, v26);
    if (!swift_dynamicCast())
    {
      sub_24DD1C414(v27, &qword_27F1AF540, &qword_24DD4CB08);

      goto LABEL_22;
    }

    sub_24DD1BEFC(v28 + 8, v26);
    sub_24DD1C414(v27, &qword_27F1AF540, &qword_24DD4CB08);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    v6 &= v6 - 1;
    result = sub_24DD392AC(v24, v25);
    if (v18)
    {
      v10 = v1;
      v11 = 16 * result;
      v12 = (v2[6] + 16 * result);
      v13 = v12[1];
      *v12 = v24;
      v12[1] = v25;

      v14 = (v2[7] + v11);
      v1 = v10;
      v15 = v14[1];
      *v14 = v24;
      v14[1] = v25;

      v9 = v16;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_25;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v19 = (v2[6] + 16 * result);
      *v19 = v24;
      v19[1] = v25;
      v20 = (v2[7] + 16 * result);
      *v20 = v24;
      v20[1] = v25;
      v21 = v2[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_26;
      }

      v2[2] = v23;
      v9 = v16;
    }
  }

LABEL_22:

  return 0;
}

uint64_t sub_24DD13204(uint64_t a1, unint64_t a2, uint64_t a3, char *a4)
{
  v5 = v4;
  v111 = a4;
  *&v113 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF548, &qword_24DD4CB10);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v112 = (&v103 - v10);
  v109 = sub_24DD4AEE4();
  v108 = *(v109 - 8);
  v11 = *(v108 + 64);
  MEMORY[0x28223BE20](v109);
  v107 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_24DD4AF64();
  v13 = *(v117 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v117);
  v121 = &v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_24DD4AF24();
  v16 = *(v122 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v122);
  v20 = &v103 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v110 = &v103 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v120 = &v103 - v24;
  MEMORY[0x28223BE20](v23);
  v26 = &v103 - v25;
  v27 = type metadata accessor for StreamingURLSessionDelegate.State.CompletedAction(0);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v116 = &v103 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v119 = &v103 - v31;
  v115 = v13;
  if (a2)
  {
    v32 = a2;
  }

  else
  {
    v32 = sub_24DD3A9F0(MEMORY[0x277D84F90]);
  }

  v33 = *a1;
  v34 = *(a1 + 80);
  v123 = v16;
  v114 = v20;
  if (!(v34 >> 6))
  {

    sub_24DD10F9C(v32, v113);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1AF550, &qword_24DD4CB18);
    v43 = *(v37 + 48);
    v44 = *(v16 + 16);
    v40 = v119;
    v39 = v122;
    v44(v119, v26, v122);
    v127 = sub_24DD13FD8(v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF568, &qword_24DD4CB28);
    sub_24DD1BF78();
    v41 = v123;
    sub_24DD4AF74();
    v42 = v41;
    goto LABEL_8;
  }

  v118 = v4;
  v35 = *(a1 + 8);
  v36 = *(a1 + 40);
  if (v34 >> 6 == 1)
  {

    sub_24DD10F9C(v32, v113);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1AF550, &qword_24DD4CB18);
    *&v113 = *(v37 + 48);
    v39 = v122;
    v38 = v123;
    v40 = v119;
    (*(v123 + 16))(v119, v26, v122);
    v5 = v118;
    v127 = sub_24DD13FD8(v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF568, &qword_24DD4CB28);
    sub_24DD1BF78();
    v41 = v38;
    sub_24DD4AF74();
    v42 = v38;
LABEL_8:
    (*(v42 + 8))(v26, v39);
    (*(*(v37 - 8) + 56))(v40, 0, 1, v37);

    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    v34 = 128;
    goto LABEL_10;
  }

  v45 = *(a1 + 32);
  v113 = *(a1 + 16);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1AF550, &qword_24DD4CB18);
  v47 = *(*(v46 - 8) + 56);
  v48 = *(a1 + 64);
  v106 = *(a1 + 48);
  v105 = v48;
  v49 = v119;
  v47(v119, 1, 1, v46);

  *a1 = v33;
  *(a1 + 8) = v35;
  *(a1 + 16) = v113;
  *(a1 + 32) = v45;
  *(a1 + 40) = v36;
  v40 = v49;
  v50 = v105;
  *(a1 + 48) = v106;
  *(a1 + 64) = v50;
  v5 = v118;
  v41 = v123;
LABEL_10:
  *(a1 + 80) = v34;
  v51 = v116;
  sub_24DD1C250(v40, v116, type metadata accessor for StreamingURLSessionDelegate.State.CompletedAction);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1AF550, &qword_24DD4CB18);
  if ((*(*(v52 - 8) + 48))(v51, 1, v52) != 1)
  {
    v118 = v5;
    v53 = *(v52 + 48);
    v54 = v120;
    v55 = v122;
    (*(v41 + 32))(v120, v51, v122);
    v56 = v115;
    (*(v115 + 32))(v121, v51 + v53, v117);
    v57 = v55;
    v59 = v41 + 16;
    v58 = *(v41 + 16);
    v60 = v110;
    v58(v110, v54, v55);
    v61 = v114;
    v116 = v59;
    *&v113 = v58;
    v58(v114, v54, v57);
    v62 = v111;
    v63 = sub_24DD4B084();
    v64 = sub_24DD4B414();
    v111 = v62;

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *&v106 = swift_slowAlloc();
      v129 = v106;
      *v65 = 136315650;
      v66 = v107;
      LODWORD(v105) = v64;
      sub_24DD4AF04();
      sub_24DD1C4DC(&qword_27F1AF560, MEMORY[0x277D0B8D8]);
      v67 = v60;
      v68 = v109;
      v69 = sub_24DD4B624();
      v104 = v63;
      v70 = v69;
      v72 = v71;
      (*(v108 + 8))(v66, v68);
      v73 = v67;
      v74 = *(v123 + 8);
      v74(v73, v57);
      v75 = sub_24DD38DE0(v70, v72, &v129);

      *(v65 + 4) = v75;
      *(v65 + 12) = 2080;
      v76 = v114;
      v77 = sub_24DD4AF14();
      v79 = v78;
      v74(v76, v122);
      v80 = sub_24DD38DE0(v77, v79, &v129);

      *(v65 + 14) = v80;
      *(v65 + 22) = 2080;
      v81 = v65;
      v82 = v111;
      v83 = *&v111[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal27StreamingURLSessionDelegate_streamID];
      v84 = *&v111[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal27StreamingURLSessionDelegate_streamID + 8];
      v127 = 0;
      v128 = 0xE000000000000000;
      v125 = 0x726F70736E617274;
      v126 = 0xEA00000000005F74;
      v124 = v83;
      v85 = sub_24DD4B624();
      MEMORY[0x253037C70](v85);

      MEMORY[0x253037C70](v125, v126);
      v86 = v122;

      MEMORY[0x253037C70](0x5F6D61657274732FLL, 0xE800000000000000);
      v125 = v84;
      v56 = v115;
      v87 = sub_24DD4B624();
      MEMORY[0x253037C70](v87);

      v88 = sub_24DD38DE0(v127, v128, &v129);

      *(v81 + 24) = v88;
      v89 = v104;
      _os_log_impl(&dword_24DD09000, v104, v105, "RPC finished with status '%s' and message '%s' for %s", v81, 0x20u);
      v90 = v106;
      swift_arrayDestroy();
      MEMORY[0x253038870](v90, -1, -1);
      v91 = v81;
      v92 = v117;
      MEMORY[0x253038870](v91, -1, -1);

      v93 = v82;
    }

    else
    {

      v74 = *(v123 + 8);
      v74(v61, v57);
      v74(v60, v57);
      v86 = v57;
      v93 = v111;
      v92 = v117;
    }

    v94 = *&v93[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal27StreamingURLSessionDelegate_responsePartSource];
    v95 = *(v52 + 48);
    v96 = v112;
    (v113)(v112, v120, v86);
    (*(v56 + 16))(v96 + v95, v121, v92);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B0B60, &qword_24DD4CB20);
    swift_storeEnumTagMultiPayload();
    v97 = *(v94 + 16);

    v98 = v118;
    sub_24DD14248(v96, &v127);
    if (v98)
    {
      sub_24DD1C414(v96, &qword_27F1AF548, &qword_24DD4CB10);
    }

    else
    {

      if ((v128 & 1) == 0)
      {
        v99 = v127;
        v100 = *(v94 + 16);

        sub_24DD14D00(v99, nullsub_1, 0);
      }

      sub_24DD1C414(v96, &qword_27F1AF548, &qword_24DD4CB10);
    }

    v101 = *(v94 + 16);

    sub_24DD2CFEC(0);

    (*(v56 + 8))(v121, v92);
    v74(v120, v86);
    v40 = v119;
  }

  return sub_24DD1C2B8(v40, type metadata accessor for StreamingURLSessionDelegate.State.CompletedAction);
}

id StreamingURLSessionDelegate.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id StreamingURLSessionDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24DD13FD8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v34 = MEMORY[0x277D84F90];
  sub_24DD286B4(0, v1, 0);
  v2 = v34;
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  result = sub_24DD4B504();
  v7 = result;
  v8 = 0;
  v9 = *(v3 + 36);
  v27 = v3 + 72;
  v28 = v1;
  v29 = v9;
  v30 = v3 + 64;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v3 + 32))
  {
    v11 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_22;
    }

    if (v9 != *(v3 + 36))
    {
      goto LABEL_23;
    }

    v31 = v8;
    v12 = (*(v3 + 48) + 16 * v7);
    v13 = v12[1];
    v14 = (*(v3 + 56) + 16 * v7);
    v32 = *v14;
    v33 = *v12;
    v15 = v3;
    v16 = v14[1];
    v17 = *(v34 + 16);
    v18 = *(v34 + 24);

    if (v17 >= v18 >> 1)
    {
      result = sub_24DD286B4((v18 > 1), v17 + 1, 1);
    }

    *(v34 + 16) = v17 + 1;
    v19 = v34 + 40 * v17;
    *(v19 + 32) = v33;
    *(v19 + 40) = v13;
    *(v19 + 48) = v32;
    *(v19 + 56) = v16;
    *(v19 + 64) = 0;
    v10 = 1 << *(v15 + 32);
    if (v7 >= v10)
    {
      goto LABEL_24;
    }

    v3 = v15;
    v4 = v30;
    v20 = *(v30 + 8 * v11);
    if ((v20 & (1 << v7)) == 0)
    {
      goto LABEL_25;
    }

    v9 = v29;
    if (v29 != *(v3 + 36))
    {
      goto LABEL_26;
    }

    v21 = v20 & (-2 << (v7 & 0x3F));
    if (v21)
    {
      v10 = __clz(__rbit64(v21)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v22 = v11 << 6;
      v23 = v11 + 1;
      v24 = (v27 + 8 * v11);
      while (v23 < (v10 + 63) >> 6)
      {
        v26 = *v24++;
        v25 = v26;
        v22 += 64;
        ++v23;
        if (v26)
        {
          result = sub_24DD1BFDC(v7, v29, 0);
          v10 = __clz(__rbit64(v25)) + v22;
          goto LABEL_4;
        }
      }

      result = sub_24DD1BFDC(v7, v29, 0);
    }

LABEL_4:
    v8 = v31 + 1;
    v7 = v10;
    if (v31 + 1 == v28)
    {
      return v2;
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
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_24DD14248@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v44 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5A0, &qword_24DD4CB48);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v43 = &v39 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B0B60, &qword_24DD4CB20);
  v39 = *(v7 - 8);
  v40 = v7;
  v8 = *(v39 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v39 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5A8, &qword_24DD4CB50);
  v41 = *(v11 - 8);
  v42 = v11;
  v12 = *(v41 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v39 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5B0, &qword_24DD4CB58);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = (&v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v21 = &v39 - v20;
  v22 = *(v2 + 16);
  v23 = *(*v22 + *MEMORY[0x277D841D0] + 16);
  v24 = (*(*v22 + 48) + 7) & 0x1FFFFFFF8;
  result = pthread_mutex_lock((v22 + v24));
  if (result)
  {
    __break(1u);
    goto LABEL_15;
  }

  sub_24DD14EA0(a1, v21);
  result = pthread_mutex_unlock((v22 + v24));
  if (result)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  sub_24DD1C3AC(v21, v19, &qword_27F1AF5B0, &qword_24DD4CB58);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5C0, &qword_24DD4CB68) + 48);
      v35 = v41;
      v36 = v42;
      (*(v41 + 32))(v14, v19, v42);
      sub_24DD1C474(v19 + v34, v10, &unk_27F1B0B60, &qword_24DD4CB20);
      v37 = v43;
      sub_24DD1C3AC(v10, v43, &unk_27F1B0B60, &qword_24DD4CB20);
      v28 = 1;
      (*(v39 + 56))(v37, 0, 1, v40);
      sub_24DD4B314();
      sub_24DD1C414(v10, &unk_27F1B0B60, &qword_24DD4CB20);
      (*(v35 + 8))(v14, v36);
      result = sub_24DD1C414(v21, &qword_27F1AF5B0, &qword_24DD4CB58);
      v27 = 0;
    }

    else
    {
      result = sub_24DD1C414(v21, &qword_27F1AF5B0, &qword_24DD4CB58);
      v28 = 0;
      v27 = *v19;
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5B8, &qword_24DD4CB60);
    v30 = *(v29 + 48);
    v27 = *(v19 + *(v29 + 64));
    v31 = v41;
    v32 = v42;
    (*(v41 + 32))(v14, v19, v42);
    sub_24DD1C474(v19 + v30, v10, &unk_27F1B0B60, &qword_24DD4CB20);
    v33 = v43;
    sub_24DD1C3AC(v10, v43, &unk_27F1B0B60, &qword_24DD4CB20);
    (*(v39 + 56))(v33, 0, 1, v40);
    sub_24DD4B314();
    sub_24DD1C414(v10, &unk_27F1B0B60, &qword_24DD4CB20);
    (*(v31 + 8))(v14, v32);
    result = sub_24DD1C414(v21, &qword_27F1AF5B0, &qword_24DD4CB58);
    v28 = 0;
  }

  else
  {
    if (EnumCaseMultiPayload != 3)
    {
      sub_24DD1C09C();
      swift_allocError();
      swift_willThrow();
      return sub_24DD1C414(v21, &qword_27F1AF5B0, &qword_24DD4CB58);
    }

    result = sub_24DD1C414(v21, &qword_27F1AF5B0, &qword_24DD4CB58);
    v27 = 0;
    v28 = 1;
  }

  v38 = v44;
  *v44 = v27;
  *(v38 + 8) = v28;
  return result;
}

uint64_t sub_24DD147A4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v44 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5A0, &qword_24DD4CB48);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v43 = &v39 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B0B60, &qword_24DD4CB20);
  v39 = *(v7 - 8);
  v40 = v7;
  v8 = *(v39 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v39 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5A8, &qword_24DD4CB50);
  v41 = *(v11 - 8);
  v42 = v11;
  v12 = *(v41 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v39 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5B0, &qword_24DD4CB58);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = (&v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v21 = &v39 - v20;
  v22 = *(v2 + 16);
  v23 = *(*v22 + *MEMORY[0x277D841D0] + 16);
  v24 = (*(*v22 + 48) + 7) & 0x1FFFFFFF8;
  result = pthread_mutex_lock((v22 + v24));
  if (result)
  {
    __break(1u);
    goto LABEL_15;
  }

  sub_24DD16A68(a1, v21);
  result = pthread_mutex_unlock((v22 + v24));
  if (result)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  sub_24DD1C3AC(v21, v19, &qword_27F1AF5B0, &qword_24DD4CB58);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5C0, &qword_24DD4CB68) + 48);
      v35 = v41;
      v36 = v42;
      (*(v41 + 32))(v14, v19, v42);
      sub_24DD1C474(v19 + v34, v10, &unk_27F1B0B60, &qword_24DD4CB20);
      v37 = v43;
      sub_24DD1C3AC(v10, v43, &unk_27F1B0B60, &qword_24DD4CB20);
      v28 = 1;
      (*(v39 + 56))(v37, 0, 1, v40);
      sub_24DD4B314();
      sub_24DD1C414(v10, &unk_27F1B0B60, &qword_24DD4CB20);
      (*(v35 + 8))(v14, v36);
      result = sub_24DD1C414(v21, &qword_27F1AF5B0, &qword_24DD4CB58);
      v27 = 0;
    }

    else
    {
      result = sub_24DD1C414(v21, &qword_27F1AF5B0, &qword_24DD4CB58);
      v28 = 0;
      v27 = *v19;
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5B8, &qword_24DD4CB60);
    v30 = *(v29 + 48);
    v27 = *(v19 + *(v29 + 64));
    v31 = v41;
    v32 = v42;
    (*(v41 + 32))(v14, v19, v42);
    sub_24DD1C474(v19 + v30, v10, &unk_27F1B0B60, &qword_24DD4CB20);
    v33 = v43;
    sub_24DD1C3AC(v10, v43, &unk_27F1B0B60, &qword_24DD4CB20);
    (*(v39 + 56))(v33, 0, 1, v40);
    sub_24DD4B314();
    sub_24DD1C414(v10, &unk_27F1B0B60, &qword_24DD4CB20);
    (*(v31 + 8))(v14, v32);
    result = sub_24DD1C414(v21, &qword_27F1AF5B0, &qword_24DD4CB58);
    v28 = 0;
  }

  else
  {
    if (EnumCaseMultiPayload != 3)
    {
      sub_24DD1C09C();
      swift_allocError();
      swift_willThrow();
      return sub_24DD1C414(v21, &qword_27F1AF5B0, &qword_24DD4CB58);
    }

    result = sub_24DD1C414(v21, &qword_27F1AF5B0, &qword_24DD4CB58);
    v27 = 0;
    v28 = 1;
  }

  v38 = v44;
  *v44 = v27;
  *(v38 + 8) = v28;
  return result;
}

void sub_24DD14D00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 16);
  v8 = *(*v7 + *MEMORY[0x277D841D0] + 16);
  v9 = (*(*v7 + 48) + 7) & 0x1FFFFFFF8;
  if (pthread_mutex_lock((v7 + v9)))
  {
    __break(1u);
    goto LABEL_12;
  }

  v10 = sub_24DD179F0(a1, a2, a3);
  v12 = v11;
  v14 = v13;
  if (pthread_mutex_unlock((v7 + v9)))
  {
LABEL_12:
    __break(1u);
    return;
  }

  if ((~v14 & 0xF000000000000007) != 0)
  {
    if (v14 < 0)
    {
      v15 = (v14 & 0x7FFFFFFFFFFFFFFFLL);
      v16 = (v14 & 0x7FFFFFFFFFFFFFFFLL);

      v10(v14 & 0x7FFFFFFFFFFFFFFFLL, 1);
      sub_24DD1BFE8(v10, v12, v14);
    }

    else
    {
      sub_24DD1C04C(v10, v12, v14);
      v10(0, 0);
      sub_24DD1BFE8(v10, v12, v14);

      sub_24DD1BFE8(v10, v12, v14);
    }
  }
}

uint64_t sub_24DD14EA0@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v277 = a1;
  v261 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5C8, &unk_24DD4CB70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v245 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5D0, &unk_24DD4DA10);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v256 = &v245 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v252 = &v245 - v12;
  v258 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5A8, &qword_24DD4CB50);
  v259 = *(v258 - 8);
  v13 = *(v259 + 64);
  MEMORY[0x28223BE20](v258);
  v248 = &v245 - v14;
  v257 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF580, &qword_24DD4CB38);
  v15 = *(*(v257 - 8) + 64);
  MEMORY[0x28223BE20](v257);
  v17 = &v245 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5A0, &qword_24DD4CB48);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v249 = (&v245 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v245 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v266 = &v245 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v245 - v28;
  MEMORY[0x28223BE20](v27);
  v265 = (&v245 - v30);
  v280 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B0B60, &qword_24DD4CB20);
  v270 = *(v280 - 8);
  v31 = *(v270 + 64);
  v32 = MEMORY[0x28223BE20](v280);
  v247 = &v245 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v274 = &v245 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v263 = &v245 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v262 = &v245 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v255 = &v245 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v264 = (&v245 - v43);
  v44 = MEMORY[0x28223BE20](v42);
  v275 = &v245 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v254 = &v245 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v253 = &v245 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v267 = &v245 - v51;
  MEMORY[0x28223BE20](v50);
  v268 = &v245 - v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF548, &qword_24DD4CB10);
  v54 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53 - 8);
  v56 = &v245 - v55;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5D8, &qword_24DD4CB80);
  v58 = *(*(v57 - 8) + 64);
  v59 = MEMORY[0x28223BE20](v57 - 8);
  v279 = (&v245 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v59);
  v278 = (&v245 - v61);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF588, &qword_24DD4CB40);
  v63 = *(*(v62 - 8) + 64);
  v64 = MEMORY[0x28223BE20](v62);
  v251 = &v245 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v64);
  v67 = &v245 - v66;
  sub_24DD1C3AC(v3, &v245 - v66, &qword_27F1AF588, &qword_24DD4CB40);
  v260 = v62;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v246 = v7;
    v250 = v3;
    if (EnumCaseMultiPayload)
    {
      sub_24DD1C474(v67, v17, &qword_27F1AF580, &qword_24DD4CB38);
      sub_24DD1C414(v3, &qword_27F1AF588, &qword_24DD4CB40);
      swift_storeEnumTagMultiPayload();
      v256 = v17;
      v118 = v17 + 64;
      v119 = *(*(v17 + 8) + 24);
      v120 = (v119 + 1);
      v121 = v270;
      if (__OFADD__(v119, 1))
      {
LABEL_168:
        __break(1u);
LABEL_169:
        __break(1u);
LABEL_170:
        __break(1u);
LABEL_171:
        __break(1u);
LABEL_172:
        __break(1u);
LABEL_173:
        __break(1u);
LABEL_174:
        __break(1u);
LABEL_175:
        __break(1u);
LABEL_176:
        __break(1u);
LABEL_177:
        __break(1u);
LABEL_178:
        __break(1u);
LABEL_179:
        __break(1u);
        goto LABEL_180;
      }

      v254 = v119;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v123 = *v118;
      if (*(*v118 + 16) < v120 || (isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_24DD28C60(isUniquelyReferenced_nonNull_native, v120);
        v123 = *v118;
      }

      v267 = ((*(v121 + 80) + 40) & ~*(v121 + 80));
      sub_24DD195DC(v123 + 2, &v267[v123], v282);
      sub_24DD1C3AC(v277, v56, &qword_27F1AF548, &qword_24DD4CB10);
      v124 = sub_24DD1975C(v279, v56);
      v125 = v123[3];
      v101 = __OFADD__(v125, v124);
      v126 = v125 + v124;
      if (v101)
      {
        goto LABEL_170;
      }

      v277 = (v121 + 48);
      v278 = (v121 + 56);
      v123[3] = v126;
      v127 = &qword_24DD4CB20;
      v265 = v118;
      v128 = v264;
      while (1)
      {
        v129 = v279;
        v130 = v266;
        sub_24DD1C474(v279, v266, &qword_27F1AF5A0, &qword_24DD4CB48);
        v131 = v129;
        v132 = v280;
        v276 = *v278;
        v276(v131, 1, 1, v280);
        v275 = *v277;
        if ((v275)(v130, 1, v132) == 1)
        {
          break;
        }

        sub_24DD1C474(v130, v128, &unk_27F1B0B60, v127);
        v133 = v123[3];
        v134 = v133 + 1;
        if (__OFADD__(v133, 1))
        {
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
          goto LABEL_159;
        }

        v135 = *v118;
        v136 = swift_isUniquelyReferenced_nonNull_native();
        v137 = *v118;
        if (*(*v118 + 16) < v134 || (v136 & 1) == 0)
        {
          sub_24DD28C60(v136, v134);
          v137 = *v118;
        }

        v139 = v137[3];
        v138 = v137[4];
        v101 = __OFADD__(v138, v139);
        v140 = v138 + v139;
        if (v101)
        {
          goto LABEL_152;
        }

        if (v139 < 0)
        {
          if (v140 < 0)
          {
            v144 = v137[2];
            v101 = __OFADD__(v140, v144);
            v140 += v144;
            if (v101)
            {
              goto LABEL_166;
            }
          }
        }

        else
        {
          v141 = v137[2];
          v142 = __OFSUB__(v140, v141);
          v143 = v140 - v141;
          if (v143 < 0 == v142)
          {
            v140 = v143;
            if (v142)
            {
              goto LABEL_164;
            }
          }
        }

        v145 = &v267[v137];
        v146 = v127;
        v147 = *(v121 + 72);
        v148 = v146;
        sub_24DD1C3AC(v128, &v267[v137 + v147 * v140], &unk_27F1B0B60, v146);
        v149 = v137[3];
        v101 = __OFADD__(v149, 1);
        v150 = v149 + 1;
        if (v101)
        {
          goto LABEL_154;
        }

        v137[3] = v150;
        v269 = v137;
        sub_24DD195DC(v137 + 2, v145, &v283);
        v151 = 0;
        v152 = 0;
        v154 = v283;
        v153 = v284;
        v271 = v286;
        v272 = v285;
        LODWORD(v273) = v287 | (v286 < 1);
        v268 = v284;
        while (1)
        {
          if (v152 == v153)
          {
            if (v151)
            {
              v152 = v153;
              goto LABEL_74;
            }

            if (v273)
            {
              goto LABEL_75;
            }

            v152 = 0;
            v151 = 1;
            v153 = v271;
            v154 = v272;
          }

          v155 = v279;
          sub_24DD1C474(v279, v24, &qword_27F1AF5A0, &qword_24DD4CB48);
          v156 = v155;
          v157 = v280;
          v276(v156, 1, 1, v280);
          if ((v275)(v24, 1, v157) == 1)
          {
            break;
          }

          v158 = v274;
          sub_24DD1C474(v24, v274, &unk_27F1B0B60, v148);
          if (!v154)
          {
            goto LABEL_177;
          }

          sub_24DD1C474(v158, v154 + v152 * v147, &unk_27F1B0B60, v148);
          v101 = __OFADD__(v152, 1);
          v152 = (v152 + 1);
          if (v101)
          {
            goto LABEL_126;
          }
        }

        sub_24DD1C414(v24, &qword_27F1AF5A0, &qword_24DD4CB48);
        v153 = v152;
        if ((v151 & 1) == 0)
        {
          goto LABEL_75;
        }

LABEL_74:
        v153 = (v152 + v268);
        if (__OFADD__(v268, v152))
        {
          goto LABEL_158;
        }

LABEL_75:
        v123 = v269;
        v159 = v269[3];
        v101 = __OFADD__(v159, v153);
        v160 = v153 + v159;
        if (v101)
        {
          goto LABEL_156;
        }

        v269[3] = v160;
        v128 = v264;
        v127 = v148;
        sub_24DD1C414(v264, &unk_27F1B0B60, v148);
        v121 = v270;
        v118 = v265;
      }

      sub_24DD1C414(v130, &qword_27F1AF5A0, &qword_24DD4CB48);
      sub_24DD1C414(v279, &qword_27F1AF5D8, &qword_24DD4CB80);
      v175 = v123[3];
      v176 = v254;
      v177 = (v175 - v254);
      if (v175 < v254)
      {
        goto LABEL_172;
      }

      v178 = v255;
      if (v254 < 0)
      {
        goto LABEL_173;
      }

      v164 = *(v256 + 1);
      v277 = *v256;
      v162 = *(v256 + 2);
      v179 = *(v256 + 3);
      v167 = *(v256 + 4);
      v85 = v123;
      v279 = v167;
      if (!v179)
      {
        goto LABEL_98;
      }

      v274 = v164;
      v275 = v162;

      sub_24DD1C124(v179);
      if (v175 == v176)
      {
        v180 = 0;
LABEL_107:
        v167 = v279;
        sub_24DD1C134(v179);

        v181 = v275 + v180;
        if (!__OFADD__(v275, v180))
        {
          v182 = v258;
          v183 = v259;
          v184 = v252;
          v164 = v274;
          goto LABEL_109;
        }

        goto LABEL_178;
      }

      v185 = v123;
      v180 = 0;
      v186 = &v267[v185];
      while (v176 < v85[3])
      {
        v187 = v85[4];
        if (v176 + v187 >= v85[2])
        {
          v188 = v85[2];
        }

        else
        {
          v188 = 0;
        }

        v189 = &v186[(v176 + v187 - v188) * *(v270 + 72)];
        v190 = v176;
        v191 = v263;
        sub_24DD1C3AC(v189, v263, &unk_27F1B0B60, &qword_24DD4CB20);
        v192 = v191;
        v193 = v262;
        sub_24DD1C474(v192, v262, &unk_27F1B0B60, &qword_24DD4CB20);
        sub_24DD1C474(v193, v178, &unk_27F1B0B60, &qword_24DD4CB20);
        v194 = (v179)(v178);
        v101 = __OFADD__(v180, v194);
        v180 += v194;
        if (v101)
        {
          goto LABEL_162;
        }

        sub_24DD1C414(v178, &unk_27F1B0B60, &qword_24DD4CB20);
        v176 = v190 + 1;
        if (v175 == v190 + 1)
        {
          goto LABEL_107;
        }
      }

      goto LABEL_161;
    }

    v69 = *(v67 + 1);
    v249 = *v67;
    v262 = v69;
    v70 = *(v67 + 3);
    v255 = *(v67 + 2);
    v263 = *(v67 + 4);
    LODWORD(v248) = v67[40];
    v71 = *(v67 + 6);
    v72 = *(v67 + 7);
    v252 = v71;
    sub_24DD1C124(v71);
    v73 = sub_24DD4B024();
    v281 = *v73;
    v74 = v281;
    v75 = v281[3];
    v76 = v75 + 1;
    v77 = v270;
    if (__OFADD__(v75, 1))
    {
LABEL_167:
      __break(1u);
      goto LABEL_168;
    }

    v245 = v73;
    v247 = v72;

    v78 = swift_isUniquelyReferenced_nonNull_native();
    if (v74[2] < v76 || (v79 = v74, (v78 & 1) == 0))
    {
      sub_24DD28C60(v78, v76);
      v79 = v281;
    }

    v80 = v79;
    v266 = (*(v77 + 80) + 40) & ~*(v77 + 80);
    sub_24DD195DC(v79 + 2, v79 + v266, v282);
    sub_24DD1C3AC(v277, v56, &qword_27F1AF548, &qword_24DD4CB10);
    v81 = sub_24DD1975C(v278, v56);
    v82 = v80[3];
    v101 = __OFADD__(v82, v81);
    v83 = v82 + v81;
    v84 = v268;
    if (v101)
    {
      goto LABEL_169;
    }

    v264 = v70;
    v279 = (v77 + 56);
    v277 = (v77 + 48);
    v80[3] = v83;
    v85 = v80;
    while (1)
    {
      v86 = v278;
      v87 = v265;
      sub_24DD1C474(v278, v265, &qword_27F1AF5A0, &qword_24DD4CB48);
      v88 = v86;
      v89 = v280;
      v276 = *v279;
      v276(v88, 1, 1, v280);
      v90 = *v277;
      v91 = (*v277)(v87, 1, v89);
      v92 = v267;
      if (v91 == 1)
      {
        break;
      }

      sub_24DD1C474(v87, v84, &unk_27F1B0B60, &qword_24DD4CB20);
      v93 = v85[3];
      v94 = v93 + 1;
      if (__OFADD__(v93, 1))
      {
        __break(1u);
        goto LABEL_150;
      }

      v95 = v281;
      v96 = swift_isUniquelyReferenced_nonNull_native();
      if (v95[2] < v94 || (v96 & 1) == 0)
      {
        sub_24DD28C60(v96, v94);
        v95 = v281;
      }

      v98 = v95[3];
      v97 = v95[4];
      v101 = __OFADD__(v97, v98);
      v99 = v97 + v98;
      if (v101)
      {
        goto LABEL_151;
      }

      if (v98 < 0)
      {
        if (v99 < 0)
        {
          v103 = v95[2];
          v101 = __OFADD__(v99, v103);
          v99 += v103;
          if (v101)
          {
            goto LABEL_165;
          }
        }
      }

      else
      {
        v100 = v95[2];
        v101 = __OFSUB__(v99, v100);
        v102 = v99 - v100;
        if (v102 < 0 == v101)
        {
          v99 = v102;
          if (v101)
          {
            goto LABEL_163;
          }
        }
      }

      v104 = v95 + v266;
      v105 = *(v77 + 72);
      sub_24DD1C3AC(v84, v95 + v266 + v105 * v99, &unk_27F1B0B60, &qword_24DD4CB20);
      v106 = v95[3];
      v101 = __OFADD__(v106, 1);
      v107 = v106 + 1;
      if (v101)
      {
        goto LABEL_153;
      }

      v95[3] = v107;
      v271 = v95;
      sub_24DD195DC(v95 + 2, v104, &v283);
      v108 = 0;
      v109 = 0;
      v110 = v283;
      v111 = v284;
      v272 = v286;
      v273 = v285;
      LODWORD(v274) = v287 | (v286 < 1);
      v269 = v284;
      while (1)
      {
        if (v109 == v111)
        {
          if (v108)
          {
            v109 = v111;
            goto LABEL_36;
          }

          if (v274)
          {
            goto LABEL_37;
          }

          v109 = 0;
          v108 = 1;
          v111 = v272;
          v110 = v273;
        }

        v112 = v278;
        sub_24DD1C474(v278, v29, &qword_27F1AF5A0, &qword_24DD4CB48);
        v113 = v112;
        v114 = v280;
        v276(v113, 1, 1, v280);
        if (v90(v29, 1, v114) == 1)
        {
          break;
        }

        v115 = v275;
        sub_24DD1C474(v29, v275, &unk_27F1B0B60, &qword_24DD4CB20);
        if (!v110)
        {
          goto LABEL_176;
        }

        sub_24DD1C474(v115, v110 + v109 * v105, &unk_27F1B0B60, &qword_24DD4CB20);
        v101 = __OFADD__(v109++, 1);
        if (v101)
        {
          goto LABEL_125;
        }
      }

      sub_24DD1C414(v29, &qword_27F1AF5A0, &qword_24DD4CB48);
      v111 = v109;
      if ((v108 & 1) == 0)
      {
        goto LABEL_37;
      }

LABEL_36:
      v111 = v269 + v109;
      if (__OFADD__(v269, v109))
      {
        goto LABEL_157;
      }

LABEL_37:
      v85 = v271;
      v116 = v271[3];
      v101 = __OFADD__(v116, v111);
      v117 = v116 + v111;
      if (v101)
      {
        goto LABEL_155;
      }

      v271[3] = v117;
      v84 = v268;
      sub_24DD1C414(v268, &unk_27F1B0B60, &qword_24DD4CB20);
      v77 = v270;
    }

    sub_24DD1C414(v87, &qword_27F1AF5A0, &qword_24DD4CB48);
    sub_24DD1C414(v278, &qword_27F1AF5D8, &qword_24DD4CB80);
    v163 = v264;
    v280 = v85[3];
    if (v280 < 0)
    {
      goto LABEL_171;
    }

    v164 = v250;
    v165 = v259;
    v166 = v254;
    v167 = v253;
    v271 = v85;
    if (v264)
    {

      sub_24DD1C124(v163);
      if (!v280)
      {
        goto LABEL_127;
      }

      v168 = v85;
      v169 = 0;
      v170 = 0;
      v171 = v168 + v266;
      while (v170 < v271[3])
      {
        v172 = v271[4];
        if (v170 + v172 >= v271[2])
        {
          v173 = v271[2];
        }

        else
        {
          v173 = 0;
        }

        sub_24DD1C3AC(&v171[(v170 + v172 - v173) * *(v77 + 72)], v166, &unk_27F1B0B60, &qword_24DD4CB20);
        sub_24DD1C474(v166, v167, &unk_27F1B0B60, &qword_24DD4CB20);
        sub_24DD1C474(v167, v92, &unk_27F1B0B60, &qword_24DD4CB20);
        v174 = v264(v92);
        v101 = __OFADD__(v169, v174);
        v169 += v174;
        if (v101)
        {
          goto LABEL_160;
        }

        ++v170;
        sub_24DD1C414(v92, &unk_27F1B0B60, &qword_24DD4CB20);
        if (v280 == v170)
        {
          goto LABEL_128;
        }
      }

LABEL_159:
      __break(1u);
LABEL_160:
      __break(1u);
LABEL_161:
      __break(1u);
LABEL_162:
      __break(1u);
LABEL_163:
      __break(1u);
LABEL_164:
      __break(1u);
LABEL_165:
      __break(1u);
LABEL_166:
      __break(1u);
      goto LABEL_167;
    }

    v177 = v255;
    v179 = &v255[v280];
    if (!__OFADD__(v255, v280))
    {
      goto LABEL_130;
    }

    __break(1u);
LABEL_98:
    v181 = &v177[v162];
    if (__OFADD__(v162, v177))
    {
      goto LABEL_181;
    }

    v182 = v258;
    v183 = v259;
    v184 = v252;
LABEL_109:
    if (v181 < 0)
    {
      goto LABEL_174;
    }

    v195 = v181 < v164;
    v196 = v256;
    *v256 = v277;
    v196[1] = v164;
    v196[2] = v181;
    v196[3] = v179;
    v196[4] = v167;
    v197 = v257;
    v275 = *(v257 + 52);
    *(v196 + v275) = v181 < v164;
    v198 = *(v197 + 40);
    sub_24DD1C3AC(v196 + v198, v184, &qword_27F1AF5D0, &unk_24DD4DA10);
    if ((*(v183 + 48))(v184, 1, v182) == 1)
    {
      sub_24DD1C414(v184, &qword_27F1AF5D0, &unk_24DD4DA10);
      v85 = v250;
      sub_24DD1C414(v250, &qword_27F1AF588, &qword_24DD4CB40);
      sub_24DD1C3AC(v196, v85, &qword_27F1AF580, &qword_24DD4CB38);
      swift_storeEnumTagMultiPayload();
      if (v181 < v164)
      {
LABEL_137:
        v179 = 0;
        v164 = v261;
        v181 = v246;
LABEL_147:
        v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5E8, &qword_24DD4CB90);
        (*(*(v244 - 8) + 56))(v181, 1, 1, v244);
        v240 = v164;
        v241 = v179;
        v242 = v195;
        v243 = v181;
        goto LABEL_148;
      }

      v199 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5E0, &qword_24DD4CB88) + 28);
      v179 = *(v85 + v199);
      v200 = v179 + 1;
      v164 = v261;
      v181 = v246;
      if (v179 != -1)
      {
LABEL_146:
        *(v85 + v199) = v200;
        goto LABEL_147;
      }

      __break(1u);
    }

    v201 = *(v183 + 32);
    v202 = v248;
    v273 = v183 + 32;
    v274 = v201;
    (v201)(v248, v184, v182);
    if (v85[3] >= 1)
    {
      v203 = v265;
      v204 = *v265;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_24DD491AC();
      }

      v205 = *v203;
      sub_24DD1C474(&v267[v205 + *(v270 + 72) * v205[4]], v249, &unk_27F1B0B60, &qword_24DD4CB20);
      v206 = v205[4];
      v101 = __OFADD__(v206, 1);
      v207 = v206 + 1;
      v208 = v247;
      if (v101)
      {
        goto LABEL_182;
      }

      v209 = v205[3];
      if (v207 >= v205[2])
      {
        v207 = 0;
      }

      v205[4] = v207;
      if (__OFSUB__(v209, 1))
      {
        goto LABEL_183;
      }

      v205[3] = v209 - 1;
      v210 = v249;
      v276(v249, 0, 1, v280);
      sub_24DD1C474(v210, v208, &unk_27F1B0B60, &qword_24DD4CB20);
      if (v179)
      {
        sub_24DD1C124(v179);
        v211 = (v179)(v208);
        sub_24DD1C134(v179);
        v101 = __OFSUB__(v181, v211);
        v212 = v181 - v211;
        if (v101)
        {
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          v169 = 0;
LABEL_128:
          sub_24DD1C134(v264);

          v179 = &v255[v169];
          if (__OFADD__(v255, v169))
          {
            goto LABEL_179;
          }

          v165 = v259;
          v164 = v250;
LABEL_130:
          if ((v179 & 0x8000000000000000) == 0)
          {
            if (v179 >= v262)
            {
              v213 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5E0, &qword_24DD4CB88) + 28);
              v214 = *&v164[v213];
              if (v214 == -1)
              {
LABEL_180:
                __break(1u);
LABEL_181:
                __break(1u);
LABEL_182:
                __break(1u);
LABEL_183:
                __break(1u);
                goto LABEL_184;
              }

              *&v164[v213] = v214 + 1;
              v280 = v214;
            }

            else
            {
              v280 = 0;
            }

            LODWORD(v279) = v179 < v262;
            v215 = *(v165 + 56);
            v216 = v258;
            v215(v256, 1, 1, v258);
            v217 = *v245;
            swift_retain_n();
            v218 = v271;

            v219 = v252;
            v220 = v247;
            sub_24DD1C134(v252);
            v221 = v257;
            v222 = *(v257 + 40);
            v223 = v251;
            v215(&v251[v222], 1, 1, v216);
            v224 = v262;
            *v223 = v249;
            *(v223 + 8) = v224;
            v225 = v264;
            *(v223 + 16) = v179;
            *(v223 + 24) = v225;
            *(v223 + 32) = v263;
            *(v223 + 40) = v248;
            *(v223 + 48) = v219;
            *(v223 + 56) = v220;
            *(v223 + 64) = v218;
            sub_24DD1C144(v256, v223 + v222, &qword_27F1AF5D0, &unk_24DD4DA10);

            *(v223 + v221[11]) = v217;
            *(v223 + v221[12]) = v217;
            LOBYTE(v219) = v279;
            *(v223 + v221[13]) = v279;
            swift_storeEnumTagMultiPayload();
            sub_24DD1C144(v223, v250, &qword_27F1AF588, &qword_24DD4CB40);
            v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5E8, &qword_24DD4CB90);
            v227 = v246;
            (*(*(v226 - 8) + 56))(v246, 1, 1, v226);
            return sub_24DD17F50(v280, v219, v227, v261);
          }

          goto LABEL_175;
        }
      }

      else
      {
        v212 = v181 - 1;
      }

      if (v212 < 0)
      {
LABEL_184:
        __break(1u);
        goto LABEL_185;
      }

      v229 = v277;
      v230 = v256;
      *v256 = v277;
      v230[1] = v164;
      v230[2] = v212;
      v230[3] = v179;
      v230[4] = v279;
      v231 = v212 < v229;
      *(v230 + v275) = v212 < v229;
      sub_24DD1C414(v230 + v198, &qword_27F1AF5D0, &unk_24DD4DA10);
      (*(v183 + 56))(v230 + v198, 1, 1, v182);
      v232 = v250;
      sub_24DD1C414(v250, &qword_27F1AF588, &qword_24DD4CB40);
      sub_24DD1C3AC(v230, v232, &qword_27F1AF580, &qword_24DD4CB38);
      swift_storeEnumTagMultiPayload();
      if (v212 >= v229)
      {
        v237 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5E0, &qword_24DD4CB88) + 28);
        v233 = *(v232 + v237);
        v234 = v261;
        v235 = v246;
        v236 = v248;
        if (v233 == -1)
        {
LABEL_185:
          __break(1u);
          goto LABEL_186;
        }

        *(v232 + v237) = v233 + 1;
      }

      else
      {
        v233 = 0;
        v234 = v261;
        v235 = v246;
        v236 = v248;
      }

      v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5E8, &qword_24DD4CB90);
      v239 = *(v238 + 48);
      (v274)(v235, v236, v258);
      sub_24DD1C474(v208, v235 + v239, &unk_27F1B0B60, &qword_24DD4CB20);
      (*(*(v238 - 8) + 56))(v235, 0, 1, v238);
      v240 = v234;
      v241 = v233;
      v242 = v231;
      v243 = v235;
LABEL_148:
      sub_24DD17F50(v241, v242, v243, v240);
      return sub_24DD1C414(v256, &qword_27F1AF580, &qword_24DD4CB38);
    }

    v228 = v249;
    v276(v249, 1, 1, v280);
    (*(v183 + 8))(v202, v182);
    sub_24DD1C414(v228, &qword_27F1AF5A0, &qword_24DD4CB48);
    v85 = v250;
    sub_24DD1C414(v250, &qword_27F1AF588, &qword_24DD4CB40);
    sub_24DD1C3AC(v256, v85, &qword_27F1AF580, &qword_24DD4CB38);
    swift_storeEnumTagMultiPayload();
    if (v181 < v164)
    {
      goto LABEL_137;
    }

    v199 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5E0, &qword_24DD4CB88) + 28);
    v179 = *(v85 + v199);
    v200 = v179 + 1;
    v164 = v261;
    v181 = v246;
    if (v179 == -1)
    {
LABEL_186:
      __break(1u);
      goto LABEL_187;
    }

    goto LABEL_146;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_24DD1C414(v67, &qword_27F1AF588, &qword_24DD4CB40);
LABEL_78:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5B0, &qword_24DD4CB58);
    return swift_storeEnumTagMultiPayload();
  }

  if (EnumCaseMultiPayload == 3)
  {
    goto LABEL_78;
  }

LABEL_187:
  result = sub_24DD4B5B4();
  __break(1u);
  return result;
}

uint64_t sub_24DD16A68@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v147 = a2;
  v142 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5A0, &qword_24DD4CB48);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v134 = (&v132 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5C8, &unk_24DD4CB70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v140 = &v132 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5D0, &unk_24DD4DA10);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v139 = &v132 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v138 = &v132 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5A8, &qword_24DD4CB50);
  v14 = *(v13 - 8);
  v144 = v13;
  v145 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v136 = (&v132 - v16);
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF580, &qword_24DD4CB38);
  v17 = *(*(v141 - 8) + 64);
  MEMORY[0x28223BE20](v141);
  v143 = (&v132 - v18);
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B0B60, &qword_24DD4CB20);
  v151 = *(v133 - 8);
  v19 = *(v151 + 64);
  v20 = MEMORY[0x28223BE20](v133);
  v135 = &v132 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v132 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v132 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v132 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v132 - v32;
  v34 = MEMORY[0x28223BE20](v31);
  v36 = &v132 - v35;
  MEMORY[0x28223BE20](v34);
  v38 = &v132 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF588, &qword_24DD4CB40);
  v40 = *(*(v39 - 8) + 64);
  v41 = MEMORY[0x28223BE20](v39);
  v137 = (&v132 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v41);
  v44 = (&v132 - v43);
  sub_24DD1C3AC(v148, &v132 - v43, &qword_27F1AF588, &qword_24DD4CB40);
  v146 = v39;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload)
  {
    v60 = v143;
    sub_24DD1C474(v44, v143, &qword_27F1AF580, &qword_24DD4CB38);
    sub_24DD1C414(v148, &qword_27F1AF588, &qword_24DD4CB40);
    swift_storeEnumTagMultiPayload();
    v61 = *(v60[8] + 24);
    sub_24DD18300(v142);
    v62 = v60[8];
    v63 = v62[3];
    v64 = v63 - v61;
    if (v63 < v61)
    {
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    if (v61 < 0)
    {
LABEL_78:
      __break(1u);
      goto LABEL_79;
    }

    v137 = v60 + 8;
    v65 = v60[1];
    v139 = *v60;
    v142 = v65;
    v66 = v60[2];
    v67 = v60[3];
    v149 = v60[4];
    v150 = v67;
    if (v67)
    {
      v132 = v66;

      sub_24DD1C124(v67);
      if (v63 != v61)
      {
        v68 = 0;
        while (v61 < v62[3])
        {
          v93 = v62[4];
          if (v61 + v93 >= v62[2])
          {
            v94 = v62[2];
          }

          else
          {
            v94 = 0;
          }

          sub_24DD1C3AC(v62 + ((*(v151 + 80) + 40) & ~*(v151 + 80)) + (v61 + v93 - v94) * *(v151 + 72), v24, &unk_27F1B0B60, &qword_24DD4CB20);
          sub_24DD1C474(v24, v27, &unk_27F1B0B60, &qword_24DD4CB20);
          sub_24DD1C474(v27, v30, &unk_27F1B0B60, &qword_24DD4CB20);
          v95 = v150(v30);
          v67 = v150;
          v58 = __OFADD__(v68, v95);
          v68 += v95;
          if (v58)
          {
            goto LABEL_75;
          }

          ++v61;
          sub_24DD1C414(v30, &unk_27F1B0B60, &qword_24DD4CB20);
          if (v63 == v61)
          {
            goto LABEL_41;
          }
        }

        goto LABEL_74;
      }

      v68 = 0;
LABEL_41:
      v92 = v149;
      sub_24DD1C134(v67);

      v87 = v132 + v68;
      if (__OFADD__(v132, v68))
      {
        goto LABEL_81;
      }

      v60 = v143;
      v89 = v144;
      v88 = v145;
      v90 = v138;
      v91 = v142;
    }

    else
    {
      v87 = v66 + v64;
      if (__OFADD__(v66, v64))
      {
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }

      v89 = v144;
      v88 = v145;
      v90 = v138;
      v91 = v142;
      v92 = v149;
    }

    if (v87 < 0)
    {
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    v96 = v67;
    LOBYTE(v67) = v87 < v91;
    *v60 = v139;
    v60[1] = v91;
    v60[2] = v87;
    v60[3] = v96;
    v60[4] = v92;
    v97 = v141;
    v98 = *(v141 + 52);
    *(v60 + v98) = v87 < v91;
    v99 = v60;
    v100 = *(v97 + 40);
    sub_24DD1C3AC(v99 + v100, v90, &qword_27F1AF5D0, &unk_24DD4DA10);
    if ((*(v88 + 48))(v90, 1, v89) == 1)
    {
      sub_24DD1C414(v90, &qword_27F1AF5D0, &unk_24DD4DA10);
      v90 = v148;
      sub_24DD1C414(v148, &qword_27F1AF588, &qword_24DD4CB40);
      sub_24DD1C3AC(v99, v90, &qword_27F1AF580, &qword_24DD4CB38);
      swift_storeEnumTagMultiPayload();
      if (v87 < v91)
      {
LABEL_60:
        v88 = 0;
        v89 = v147;
LABEL_70:
        v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5E8, &qword_24DD4CB90);
        v131 = v140;
        (*(*(v130 - 8) + 56))(v140, 1, 1, v130);
        sub_24DD17F50(v88, v67, v131, v89);
        v129 = v99;
        return sub_24DD1C414(v129, &qword_27F1AF580, &qword_24DD4CB38);
      }

      v101 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5E0, &qword_24DD4CB88) + 28);
      v88 = *(v90 + v101);
      v102 = v88 + 1;
      v89 = v147;
      if (v88 != -1)
      {
LABEL_69:
        *(v90 + v101) = v102;
        goto LABEL_70;
      }

      __break(1u);
    }

    v103 = *(v88 + 32);
    v104 = v136;
    v103(v136, v90, v89);
    if (v62[3] >= 1)
    {
      v105 = v137;
      v106 = *v137;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_24DD491AC();
      }

      v107 = *v105;
      v108 = *v105 + ((*(v151 + 80) + 40) & ~*(v151 + 80)) + *(v151 + 72) * *(*v105 + 32);
      v109 = v134;
      sub_24DD1C474(v108, v134, &unk_27F1B0B60, &qword_24DD4CB20);
      v110 = v107[4];
      v58 = __OFADD__(v110, 1);
      v111 = v110 + 1;
      v112 = v135;
      if (v58)
      {
        goto LABEL_85;
      }

      v113 = v107[3];
      if (v111 >= v107[2])
      {
        v111 = 0;
      }

      v107[4] = v111;
      if (__OFSUB__(v113, 1))
      {
        goto LABEL_86;
      }

      v107[3] = v113 - 1;
      (*(v151 + 56))(v109, 0, 1, v133);
      sub_24DD1C474(v109, v112, &unk_27F1B0B60, &qword_24DD4CB20);
      v114 = v150;
      if (!v150)
      {
        v88 = v87 - 1;
        v104 = v149;
LABEL_62:
        if (v88 < 0)
        {
LABEL_87:
          __break(1u);
          goto LABEL_88;
        }

        v118 = v139;
        v119 = v88 < v139;
        v120 = v142;
        v121 = v143;
        *v143 = v139;
        v121[1] = v120;
        v122 = v150;
        v121[2] = v88;
        v121[3] = v122;
        v121[4] = v104;
        *(v121 + v98) = v119;
        sub_24DD1C414(v121 + v100, &qword_27F1AF5D0, &unk_24DD4DA10);
        (*(v145 + 56))(v121 + v100, 1, 1, v89);
        v123 = v148;
        sub_24DD1C414(v148, &qword_27F1AF588, &qword_24DD4CB40);
        sub_24DD1C3AC(v121, v123, &qword_27F1AF580, &qword_24DD4CB38);
        swift_storeEnumTagMultiPayload();
        if (v88 >= v118)
        {
          v125 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5E0, &qword_24DD4CB88) + 28);
          v124 = *(v123 + v125);
          if (v124 == -1)
          {
LABEL_88:
            __break(1u);
            goto LABEL_89;
          }

          *(v123 + v125) = v124 + 1;
        }

        else
        {
          v124 = 0;
        }

        v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5E8, &qword_24DD4CB90);
        v127 = *(v126 + 48);
        v128 = v140;
        v103(v140, v136, v144);
        sub_24DD1C474(v135, v128 + v127, &unk_27F1B0B60, &qword_24DD4CB20);
        (*(*(v126 - 8) + 56))(v128, 0, 1, v126);
        sub_24DD17F50(v124, v119, v128, v147);
        v129 = v121;
        return sub_24DD1C414(v129, &qword_27F1AF580, &qword_24DD4CB38);
      }

      v115 = v149;
      sub_24DD1C124(v150);
      v116 = v112;
      v104 = v115;
      v67 = v114(v116);
      sub_24DD1C134(v114);
      v88 = v87 - v67;
      if (!__OFSUB__(v87, v67))
      {
        goto LABEL_62;
      }

      __break(1u);
    }

    v117 = v134;
    (*(v151 + 56))(v134, 1, 1, v133);
    (*(v88 + 8))(v104, v89);
    sub_24DD1C414(v117, &qword_27F1AF5A0, &qword_24DD4CB48);
    v90 = v148;
    sub_24DD1C414(v148, &qword_27F1AF588, &qword_24DD4CB40);
    v99 = v143;
    sub_24DD1C3AC(v143, v90, &qword_27F1AF580, &qword_24DD4CB38);
    swift_storeEnumTagMultiPayload();
    if (v87 < v142)
    {
      goto LABEL_60;
    }

    v101 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5E0, &qword_24DD4CB88) + 28);
    v88 = *(v90 + v101);
    v102 = v88 + 1;
    v89 = v147;
    if (v88 == -1)
    {
LABEL_89:
      __break(1u);
      goto LABEL_90;
    }

    goto LABEL_69;
  }

  v46 = *v44;
  v47 = *(v44 + 1);
  v49 = *(v44 + 2);
  v48 = *(v44 + 3);
  v150 = *(v44 + 4);
  LODWORD(v138) = *(v44 + 40);
  v50 = *(v44 + 6);
  v135 = *(v44 + 7);
  v136 = v50;
  sub_24DD1C124(v50);
  v134 = sub_24DD4B024();
  v152 = *v134;

  v44 = &v152;
  sub_24DD18300(v142);
  v51 = v152;
  v52 = v152[3];
  if (v52 < 0)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v149 = v48;
  v133 = v46;
  v143 = v47;
  if (!v48)
  {
    v59 = v49 + v52;
    if (__OFADD__(v49, v52))
    {
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }

    goto LABEL_26;
  }

  v142 = v49;

  sub_24DD1C124(v48);
  v53 = 0;
  if (v52)
  {
    v54 = 0;
    while (v54 < v51[3])
    {
      v55 = v51[4];
      if (v54 + v55 >= v51[2])
      {
        v56 = v51[2];
      }

      else
      {
        v56 = 0;
      }

      sub_24DD1C3AC(v51 + ((*(v151 + 80) + 40) & ~*(v151 + 80)) + (v54 + v55 - v56) * *(v151 + 72), v33, &unk_27F1B0B60, &qword_24DD4CB20);
      sub_24DD1C474(v33, v36, &unk_27F1B0B60, &qword_24DD4CB20);
      sub_24DD1C474(v36, v38, &unk_27F1B0B60, &qword_24DD4CB20);
      v44 = v150;
      v57 = v149(v38);
      v58 = __OFADD__(v53, v57);
      v53 += v57;
      if (v58)
      {
        goto LABEL_73;
      }

      ++v54;
      sub_24DD1C414(v38, &unk_27F1B0B60, &qword_24DD4CB20);
      if (v52 == v54)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

LABEL_13:
  sub_24DD1C134(v149);

  v47 = v143;
  v58 = __OFADD__(v142, v53);
  v59 = v142 + v53;
  if (!v58)
  {
LABEL_26:
    v70 = v148;
    if ((v59 & 0x8000000000000000) == 0)
    {
      if (v59 >= v47)
      {
        v71 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5E0, &qword_24DD4CB88) + 28);
        v72 = *(v70 + v71);
        if (v72 == -1)
        {
LABEL_82:
          __break(1u);
          goto LABEL_83;
        }

        *(v70 + v71) = v72 + 1;
        v151 = v72;
      }

      else
      {
        v151 = 0;
      }

      LODWORD(v142) = v59 < v47;
      v73 = v144;
      v74 = *(v145 + 56);
      v74(v139, 1, 1, v144);
      v75 = *v134;
      swift_retain_n();

      v76 = v136;
      v145 = v59;
      v77 = v135;
      sub_24DD1C134(v136);
      v78 = v141;
      v79 = *(v141 + 40);
      v80 = v137;
      v74(v137 + v79, 1, 1, v73);
      v81 = v143;
      *v80 = v133;
      *(v80 + 8) = v81;
      v83 = v149;
      v82 = v150;
      *(v80 + 16) = v145;
      *(v80 + 24) = v83;
      *(v80 + 32) = v82;
      *(v80 + 40) = v138;
      *(v80 + 48) = v76;
      *(v80 + 56) = v77;
      *(v80 + 64) = v51;
      sub_24DD1C144(v139, v80 + v79, &qword_27F1AF5D0, &unk_24DD4DA10);

      *(v80 + v78[11]) = v75;
      *(v80 + v78[12]) = v75;
      v84 = v78[13];
      LOBYTE(v78) = v142;
      *(v80 + v84) = v142;
      swift_storeEnumTagMultiPayload();
      sub_24DD1C144(v80, v148, &qword_27F1AF588, &qword_24DD4CB40);
      v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5E8, &qword_24DD4CB90);
      v86 = v140;
      (*(*(v85 - 8) + 56))(v140, 1, 1, v85);
      return sub_24DD17F50(v151, v78, v86, v147);
    }

    goto LABEL_80;
  }

  __break(1u);
LABEL_16:
  if (EnumCaseMultiPayload == 2)
  {
    sub_24DD1C414(v44, &qword_27F1AF588, &qword_24DD4CB40);
LABEL_24:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5B0, &qword_24DD4CB58);
    return swift_storeEnumTagMultiPayload();
  }

  if (EnumCaseMultiPayload == 3)
  {
    goto LABEL_24;
  }

LABEL_90:
  result = sub_24DD4B5B4();
  __break(1u);
  return result;
}

uint64_t sub_24DD179F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF580, &qword_24DD4CB38);
  v9 = *(*(v8 - 1) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v34[-v10 - 8];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF588, &qword_24DD4CB40);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v34[-v14 - 8];
  sub_24DD1C3AC(v4, &v34[-v14 - 8], &qword_27F1AF588, &qword_24DD4CB40);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload != 1)
    {
      goto LABEL_33;
    }

    sub_24DD1C474(v15, v11, &qword_27F1AF580, &qword_24DD4CB38);
    v17 = v8[12];
    v18 = *&v11[v17];
    v19 = v18[3];
    if (v19)
    {
      v20 = 0;
      while (1)
      {
        if ((v19 & ~(v19 >> 63)) == v20)
        {
          __break(1u);
          goto LABEL_30;
        }

        v21 = v18[4];
        v22 = v20 + v21 >= v18[2] ? v18[2] : 0;
        if (v18[v20 + 5 + v21 - v22] == a1)
        {
          break;
        }

        if (v19 == ++v20)
        {
          goto LABEL_13;
        }
      }

      sub_24DD1C414(v4, &qword_27F1AF588, &qword_24DD4CB40);
      swift_storeEnumTagMultiPayload();
      if (v20 >= v18[3])
      {
        goto LABEL_31;
      }

      v31 = *&v11[v17];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_24DD4910C();
      }

      v32 = *&v11[v17];
      if (v20 < *(v32 + 24))
      {
        sub_24DD2987C(v20, v20 + 1, (v32 + 16), v32 + 40, v34);

        sub_24DD29C34(v20, v20 + 1, (v32 + 16), (v32 + 40));

        sub_24DD1C414(v4, &qword_27F1AF588, &qword_24DD4CB40);
        sub_24DD1C3AC(v11, v4, &qword_27F1AF580, &qword_24DD4CB38);
        swift_storeEnumTagMultiPayload();
        sub_24DD4B334();
        sub_24DD1C4DC(&qword_27F1AF598, MEMORY[0x277D85678]);
        swift_allocError();
        sub_24DD4B104();
        sub_24DD1C414(v11, &qword_27F1AF580, &qword_24DD4CB38);
        goto LABEL_17;
      }

      goto LABEL_32;
    }

LABEL_13:
    if (v11[v8[13]])
    {
      sub_24DD1C414(v11, &qword_27F1AF580, &qword_24DD4CB38);
    }

    else
    {
      sub_24DD1C414(v4, &qword_27F1AF588, &qword_24DD4CB40);
      swift_storeEnumTagMultiPayload();
      v24 = swift_allocObject();
      *(v24 + 16) = a2;
      *(v24 + 24) = a3;
      v25 = v8[11];
      v26 = *(*&v11[v25] + 24);
      v27 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      v28 = v24;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30 = *&v11[v25];
      if (*(v30 + 16) < v27 || (isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_24DD28A7C(isUniquelyReferenced_nonNull_native, v27);
        v30 = *&v11[v25];
      }

      sub_24DD29A5C((v30 + 16), v30 + 40, a1, sub_24DD1C0F0, v28);

      sub_24DD1C414(v4, &qword_27F1AF588, &qword_24DD4CB40);
      sub_24DD1C474(v11, v4, &qword_27F1AF580, &qword_24DD4CB38);
      swift_storeEnumTagMultiPayload();
      return 0;
    }

    return a2;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_24DD1C414(v15, &qword_27F1AF588, &qword_24DD4CB40);
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload == 3)
  {
LABEL_16:
    sub_24DD1C09C();
    swift_allocError();
LABEL_17:

    return a2;
  }

LABEL_33:
  result = sub_24DD4B5B4();
  __break(1u);
  return result;
}

uint64_t sub_24DD17F50@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B0B60, &qword_24DD4CB20);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5A8, &qword_24DD4CB50);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v36 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1AF5F0, &qword_24DD4CB98);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v21 = &v36 - v20;
  v22 = &v36 + *(v19 + 56) - v20;
  *v21 = a1;
  v21[8] = a2 & 1;
  sub_24DD1C474(a3, v22, &qword_27F1AF5C8, &unk_24DD4CB70);
  v23 = *v21;
  v24 = v21[8];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5E8, &qword_24DD4CB90);
  v26 = (*(*(v25 - 8) + 48))(v22, 1, v25);
  if (v24 == 1)
  {
    if (v26 != 1)
    {
      v27 = *(v25 + 48);
      v28 = *(v13 + 32);
      v28(v16, v22, v12);
      sub_24DD1C474(&v22[v27], v11, &unk_27F1B0B60, &qword_24DD4CB20);
      v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5C0, &qword_24DD4CB68) + 48);
      v28(a4, v16, v12);
      sub_24DD1C474(v11, &a4[v29], &unk_27F1B0B60, &qword_24DD4CB20);
    }
  }

  else if (v26 == 1)
  {
    *a4 = v23;
  }

  else
  {
    v30 = *(v25 + 48);
    v31 = *(v13 + 32);
    v31(v16, v22, v12);
    sub_24DD1C474(&v22[v30], v11, &unk_27F1B0B60, &qword_24DD4CB20);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5B8, &qword_24DD4CB60);
    v33 = *(v32 + 48);
    v34 = *(v32 + 64);
    v31(a4, v16, v12);
    sub_24DD1C474(v11, &a4[v33], &unk_27F1B0B60, &qword_24DD4CB20);
    *&a4[v34] = v23;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5B0, &qword_24DD4CB58);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_24DD18300(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B0B60, &qword_24DD4CB20) - 8);
  v4 = *(a1 + 16);
  result = *v1;
  v6 = *(*v1 + 24);
  v7 = v6 + v4;
  if (__OFADD__(v6, v4))
  {
    __break(1u);
  }

  else
  {
    v8 = v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v1;
    if (*(*v1 + 16) < v7 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_24DD28C60(isUniquelyReferenced_nonNull_native, v7);
      v10 = *v1;
    }

    return sub_24DD19528(v10 + 16, v10 + ((*(v8 + 80) + 40) & ~*(v8 + 80)), a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v4);
  }

  return result;
}

uint64_t sub_24DD183E0(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_24DD0D4B0;

  return v7();
}

uint64_t sub_24DD184C8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_24DD0C914;

  return v8();
}

uint64_t sub_24DD185B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF530, &qword_24DD4CA90) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v24 - v10;
  sub_24DD1C3AC(a3, v24 - v10, &qword_27F1AF530, &qword_24DD4CA90);
  v12 = sub_24DD4B384();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_24DD1C414(v11, &qword_27F1AF530, &qword_24DD4CA90);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_24DD4B374();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v14 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = sub_24DD4B2F4();
  v17 = v16;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v18 = sub_24DD4B194() + 32;
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;

    if (v17 | v15)
    {
      v25[0] = 0;
      v25[1] = 0;
      v20 = v25;
      v25[2] = v15;
      v25[3] = v17;
    }

    else
    {
      v20 = 0;
    }

    v24[1] = 7;
    v24[2] = v20;
    v24[3] = v18;
    v22 = swift_task_create();

    sub_24DD1C414(a3, &qword_27F1AF530, &qword_24DD4CA90);

    return v22;
  }

LABEL_8:
  sub_24DD1C414(a3, &qword_27F1AF530, &qword_24DD4CA90);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_24DD188AC(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24DD189A4;

  return v7(a1);
}

uint64_t sub_24DD189A4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

size_t sub_24DD18A9C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF600, &qword_24DD4CBA0);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B0B60, &qword_24DD4CB20) - 8);
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

unsigned __int8 *sub_24DD18BA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_24DD4B244();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_24DD19130();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_24DD4B584();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_24DD19130()
{
  v0 = sub_24DD4B254();
  v4 = sub_24DD191B0(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_24DD191B0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_24DD4B1B4();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_24DD4B4C4();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_24DD39134(v9, 0);
  v12 = sub_24DD19308(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_24DD4B1B4();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_24DD4B584();
LABEL_4:

  return sub_24DD4B1B4();
}

unint64_t sub_24DD19308(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_24DD3DBC8(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_24DD4B214();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_24DD4B584();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_24DD3DBC8(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_24DD4B1F4();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_24DD19528(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 < 1)
  {
    return result;
  }

  v7 = result;
  result = *(result + 8);
  v8 = result + a4;
  if (__OFADD__(result, a4))
  {
    __break(1u);
    goto LABEL_14;
  }

  v7[1] = v8;
  if (v8 < result)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  sub_24DD298F4(result, v8, v7, a2, &v12);
  v9 = v13;
  v10 = v14;
  if (v14)
  {
    v11 = v15;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    v9 = 0;
  }

  if (v15)
  {
    v10 = 0;
  }

  v16 = v12;
  v17 = v9;
  v18 = v10;
  v19 = v11;
  return sub_24DD19E48(a3, a4);
}

void *sub_24DD195DC@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = result[2];
  v5 = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    v8 = *result;
    v9 = __OFSUB__(v5, *result);
    if (v5 < *result)
    {
      goto LABEL_9;
    }

    v5 -= *result;
    if (!v9)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  v8 = *result;
  if (v5 < 0)
  {
    v9 = __OFADD__(v5, v8);
    v5 += v8;
    if (v9)
    {
      goto LABEL_26;
    }
  }

LABEL_9:
  if (v3 >= v8)
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B0B60, &qword_24DD4CB20);
    v13 = 0;
    v14 = 0;
    v4 = 0;
    v17 = *(v16 - 8);
    result = (v16 - 8);
    v11 = v17;
    v15 = 1;
    goto LABEL_21;
  }

  if (v5 < v4)
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B0B60, &qword_24DD4CB20);
    v12 = *(v10 - 8);
    result = (v10 - 8);
    v11 = v12;
    v13 = v4 - v5;
    if (!__OFSUB__(v4, v5))
    {
      v14 = 0;
      v4 = 0;
      v15 = 1;
LABEL_21:
      *a3 = a2 + *(v11 + 72) * v5;
      *(a3 + 8) = v13;
      *(a3 + 16) = v14;
      *(a3 + 24) = v4;
      *(a3 + 32) = v15;
      return result;
    }

    goto LABEL_23;
  }

  v13 = v8 - v5;
  if (!__OFSUB__(v8, v5))
  {
    if ((v4 & 0x8000000000000000) == 0 && v8 >= v5)
    {
      v15 = v4 == 0;
      if (v4)
      {
        v14 = a2;
      }

      else
      {
        v14 = 0;
      }

      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B0B60, &qword_24DD4CB20);
      v19 = *(v18 - 8);
      result = (v18 - 8);
      v11 = v19;
      goto LABEL_21;
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_24DD1975C(uint64_t a1, uint64_t a2)
{
  v40 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B0B60, &qword_24DD4CB20);
  v41 = *(v4 - 8);
  v5 = v41[8];
  MEMORY[0x28223BE20](v4);
  v7 = &v37 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5D8, &qword_24DD4CB80);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5A0, &qword_24DD4CB48);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v37 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF548, &qword_24DD4CB10);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v37 - v21;
  v23 = *(v2 + 16);
  v42 = *(v2 + 24);
  v24 = *(v2 + 32);
  if ((v24 & 1) == 0 && *(v2 + 8) <= 0)
  {
    v35 = v40;
    sub_24DD1C3AC(v40, v22, &qword_27F1AF548, &qword_24DD4CB10);
    sub_24DD1C474(v22, v18, &unk_27F1B0B60, &qword_24DD4CB20);
    v36 = v41[7];
    v36(v18, 0, 1, v4);
    v36(a1, 1, 1, v4);
    sub_24DD1C144(v18, a1, &qword_27F1AF5A0, &qword_24DD4CB48);
    v27 = sub_24DD19BE4(a1);
    sub_24DD1C414(v35, &qword_27F1AF548, &qword_24DD4CB10);
    return v27;
  }

  v39 = a1;
  v25 = v40;
  sub_24DD1C3AC(v40, v22, &qword_27F1AF548, &qword_24DD4CB10);
  v26 = *(v2 + 8);
  v27 = sub_24DD19FB8(v11, *v2, v26);
  v38 = v26;
  if (v27 != v26 || (v24 & 1) != 0)
  {
    sub_24DD1C414(v25, &qword_27F1AF548, &qword_24DD4CB10);
    v34 = v39;
LABEL_17:
    sub_24DD1C474(v11, v34, &qword_27F1AF5D8, &qword_24DD4CB80);
    return v27;
  }

  v28 = v39;
  if (v42 < 1)
  {
    v33 = 0;
LABEL_14:
    result = sub_24DD1C414(v25, &qword_27F1AF548, &qword_24DD4CB10);
    v29 = v33;
    v34 = v28;
  }

  else
  {
    v29 = 0;
    v30 = (v41 + 7);
    v31 = (v41 + 6);
    while (1)
    {
      sub_24DD1C474(v11, v16, &qword_27F1AF5A0, &qword_24DD4CB48);
      (*v30)(v11, 1, 1, v4);
      if ((*v31)(v16, 1, v4) == 1)
      {
        break;
      }

      result = sub_24DD1C474(v16, v7, &unk_27F1B0B60, &qword_24DD4CB20);
      if (!v23)
      {
        goto LABEL_20;
      }

      sub_24DD1C474(v7, v23 + v41[9] * v29++, &unk_27F1B0B60, &qword_24DD4CB20);
      if (v42 == v29)
      {
        v28 = v39;
        v25 = v40;
        v33 = v42;
        goto LABEL_14;
      }
    }

    sub_24DD1C414(v40, &qword_27F1AF548, &qword_24DD4CB10);
    result = sub_24DD1C414(v16, &qword_27F1AF5A0, &qword_24DD4CB48);
    v34 = v39;
  }

  v27 = v38 + v29;
  if (!__OFADD__(v38, v29))
  {
    goto LABEL_17;
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_24DD19BE4(uint64_t a1)
{
  v24 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5A0, &qword_24DD4CB48);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B0B60, &qword_24DD4CB20);
  v7 = *(*(v6 - 8) + 64);
  result = MEMORY[0x28223BE20](v6);
  v10 = &v20 - v9;
  v25 = 0;
  v11 = 0;
  v13 = *v1;
  v12 = v1[1];
  v22 = v1;
  v23 = v14;
  v15 = (v14 + 56);
  v16 = (v14 + 48);
  v21 = v12;
  do
  {
    if (v11 == v12)
    {
      if (v25)
      {
        v11 = v12;
        goto LABEL_15;
      }

      if (v22[4])
      {
        return v12;
      }

      v17 = v22[3];
      if (v17 < 1)
      {
        return v12;
      }

      v11 = 0;
      v13 = v22[2];
      v25 = 1;
      v12 = v17;
    }

    v18 = v24;
    sub_24DD1C474(v24, v5, &qword_27F1AF5A0, &qword_24DD4CB48);
    (*v15)(v18, 1, 1, v6);
    if ((*v16)(v5, 1, v6) == 1)
    {
      goto LABEL_12;
    }

    result = sub_24DD1C474(v5, v10, &unk_27F1B0B60, &qword_24DD4CB20);
    if (!v13)
    {
      goto LABEL_18;
    }

    result = sub_24DD1C474(v10, v13 + *(v23 + 72) * v11, &unk_27F1B0B60, &qword_24DD4CB20);
  }

  while (!__OFADD__(v11++, 1));
  __break(1u);
LABEL_12:
  result = sub_24DD1C414(v5, &qword_27F1AF5A0, &qword_24DD4CB48);
  v12 = v11;
  if ((v25 & 1) == 0)
  {
    return v12;
  }

LABEL_15:
  v12 = v21 + v11;
  if (!__OFADD__(v21, v11))
  {
    return v12;
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_24DD19E48(uint64_t result, uint64_t a2)
{
  v4 = result;
  if ((v2[4] & 1) == 0)
  {
    v6 = v2[1];
    if (v6 < 0)
    {
      __break(1u);
    }

    else
    {
      v7 = v2[2];
      v8 = v2[3];
      if (result && v6)
      {
        v9 = *v2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B0B60, &qword_24DD4CB20);
        result = swift_arrayInitWithCopy();
      }

      if (!__OFADD__(v6, a2 - v6))
      {
        if (a2 >= v6)
        {
          if (!v4 || a2 == v6)
          {
            return result;
          }

          result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B0B60, &qword_24DD4CB20);
          if (v8 >= a2 - v6)
          {
            v10 = v4 + *(*(result - 8) + 72) * v6;
            goto LABEL_17;
          }

LABEL_24:
          __break(1u);
          return result;
        }

        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (!result || !a2)
  {
    return result;
  }

  if (v2[1] < a2)
  {
    goto LABEL_23;
  }

  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B0B60, &qword_24DD4CB20);
LABEL_17:

  return swift_arrayInitWithCopy();
}

uint64_t sub_24DD19FB8(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B0B60, &qword_24DD4CB20);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5A0, &qword_24DD4CB48);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v28 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5D8, &qword_24DD4CB80);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v28 - v21;
  sub_24DD1C474(v3, v18, &unk_27F1B0B60, &qword_24DD4CB20);
  v31 = v8;
  v23 = *(v8 + 56);
  v23(v18, 0, 1, v7);
  v30 = v23;
  v23(v22, 1, 1, v7);
  result = sub_24DD1C144(v18, v22, &qword_27F1AF5A0, &qword_24DD4CB48);
  if (!a2)
  {
LABEL_10:
    a3 = 0;
    goto LABEL_13;
  }

  if (!a3)
  {
LABEL_13:
    sub_24DD1C474(v22, a1, &qword_27F1AF5D8, &qword_24DD4CB80);
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v28 = a1;
    v29 = a3;
    v25 = (v31 + 48);
    v26 = 1;
    a1 = &unk_27F1B0B60;
    while (1)
    {
      sub_24DD1C474(v22, v16, &qword_27F1AF5A0, &qword_24DD4CB48);
      v30(v22, 1, 1, v7);
      if ((*v25)(v16, 1, v7) == 1)
      {
        sub_24DD1C414(v16, &qword_27F1AF5A0, &qword_24DD4CB48);
        a3 = v26 - 1;
        a1 = v28;
        goto LABEL_13;
      }

      sub_24DD1C474(v16, v11, &unk_27F1B0B60, &qword_24DD4CB20);
      sub_24DD1C474(v11, a2, &unk_27F1B0B60, &qword_24DD4CB20);
      if (v29 == v26)
      {
        break;
      }

      a2 += *(v31 + 72);
      if (__OFADD__(v26++, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    a1 = v28;
    a3 = v29;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

unint64_t sub_24DD1A2F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B0B60, &qword_24DD4CB20);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_24DD1A444(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_24DD1A464, 0, 0);
}

uint64_t sub_24DD1A464()
{
  v35 = v0;
  v1 = (*(v0 + 32) + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal27StreamingURLSessionDelegate_state);
  os_unfair_lock_lock(v1);
  v2 = sub_24DD0E5D8();
  os_unfair_lock_unlock(v1);
  v3 = *(v0 + 32);
  if (v2)
  {
    v4 = v2;
    v5 = v3;
    v6 = sub_24DD4B084();
    v7 = sub_24DD4B424();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 32);
      v9 = swift_slowAlloc();
      v29 = v4;
      v30 = swift_slowAlloc();
      v10 = v30;
      *v9 = 136315138;
      v11 = *(v8 + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal27StreamingURLSessionDelegate_streamID);
      v12 = *(v8 + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal27StreamingURLSessionDelegate_streamID + 8);
      v31 = 0;
      v32 = 0xE000000000000000;
      v33 = 0x726F70736E617274;
      v34 = 0xEA00000000005F74;
      *(v0 + 16) = v11;
      v13 = sub_24DD4B624();
      MEMORY[0x253037C70](v13);

      MEMORY[0x253037C70](v33, v34);

      MEMORY[0x253037C70](0x5F6D61657274732FLL, 0xE800000000000000);
      *(v0 + 16) = v12;
      v14 = sub_24DD4B624();
      MEMORY[0x253037C70](v14);

      v15 = sub_24DD38DE0(v31, v32, &v30);

      *(v9 + 4) = v15;
      _os_log_impl(&dword_24DD09000, v6, v7, "Created new body stream for %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x253038870](v10, -1, -1);
      MEMORY[0x253038870](v9, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v16 = v3;
    v17 = sub_24DD4B084();
    v18 = sub_24DD4B424();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = *(v0 + 32);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v30 = v21;
      v31 = 0;
      *v20 = 136315138;
      v22 = *(v19 + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal27StreamingURLSessionDelegate_streamID);
      v23 = *(v19 + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal27StreamingURLSessionDelegate_streamID + 8);
      v32 = 0xE000000000000000;
      v33 = 0x726F70736E617274;
      v34 = 0xEA00000000005F74;
      *(v0 + 16) = v22;
      v24 = sub_24DD4B624();
      MEMORY[0x253037C70](v24);

      MEMORY[0x253037C70](v33, v34);

      MEMORY[0x253037C70](0x5F6D61657274732FLL, 0xE800000000000000);
      *(v0 + 16) = v23;
      v25 = sub_24DD4B624();
      MEMORY[0x253037C70](v25);

      v26 = sub_24DD38DE0(v31, v32, &v30);

      *(v20 + 4) = v26;
      _os_log_impl(&dword_24DD09000, v17, v18, "Cancelling URLSessionTask for %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x253038870](v21, -1, -1);
      MEMORY[0x253038870](v20, -1, -1);
    }

    [*(v0 + 24) cancel];
  }

  v27 = *(v0 + 8);

  return v27(v2);
}

uint64_t sub_24DD1A888(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_24DD1A8A8, 0, 0);
}

uint64_t sub_24DD1A8A8()
{
  v25 = v0;
  v1 = *(v0 + 32);
  v2 = sub_24DD4B084();
  v3 = sub_24DD4B414();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 32);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    v21 = 0;
    *v5 = 136315138;
    v7 = *(v4 + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal27StreamingURLSessionDelegate_streamID);
    v8 = *(v4 + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal27StreamingURLSessionDelegate_streamID + 8);
    v22 = 0xE000000000000000;
    v23 = 0x726F70736E617274;
    v24 = 0xEA00000000005F74;
    *(v0 + 16) = v7;
    v9 = sub_24DD4B624();
    MEMORY[0x253037C70](v9);

    MEMORY[0x253037C70](v23, v24);

    MEMORY[0x253037C70](0x5F6D61657274732FLL, 0xE800000000000000);
    *(v0 + 16) = v8;
    v10 = sub_24DD4B624();
    MEMORY[0x253037C70](v10);

    v11 = sub_24DD38DE0(v21, v22, &v20);

    *(v5 + 4) = v11;
    _os_log_impl(&dword_24DD09000, v2, v3, "URLSessionTask received response head for %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x253038870](v6, -1, -1);
    MEMORY[0x253038870](v5, -1, -1);
  }

  v12 = *(v0 + 24);
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (v13)
  {
    v14 = v13;
    v15 = *(v0 + 32);
    v16 = (v15 + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal27StreamingURLSessionDelegate_state);
    v17 = *(v0 + 24);
    os_unfair_lock_lock(v16);
    sub_24DD11DE8(v14, v15, &v23);
    os_unfair_lock_unlock(v16);

    v13 = v23;
  }

  v18 = *(v0 + 8);

  return v18(v13);
}

void sub_24DD1AB5C(void *a1, uint64_t a2, unint64_t a3)
{
  v7 = sub_24DD4AFE4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v51 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24DD0BFC0(a2, a3);
  v11 = v3;
  v12 = sub_24DD4B084();
  v13 = sub_24DD4B414();

  if (os_log_type_enabled(v12, v13))
  {
    v48 = v8;
    v14 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v55 = v47;
    *v14 = 134218242;
    v15 = a3 >> 62;
    v49 = v7;
    v50 = a1;
    if ((a3 >> 62) > 1)
    {
      if (v15 != 2)
      {
        v16 = 0;
        goto LABEL_13;
      }

      v18 = *(a2 + 16);
      v17 = *(a2 + 24);
      v19 = __OFSUB__(v17, v18);
      v16 = v17 - v18;
      if (!v19)
      {
        goto LABEL_13;
      }

      __break(1u);
    }

    else if (!v15)
    {
      v16 = BYTE6(a3);
LABEL_13:
      *(v14 + 4) = v16;
      sub_24DD0E53C(a2, a3);
      *(v14 + 12) = 2080;
      v20 = *&v11[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal27StreamingURLSessionDelegate_streamID];
      v21 = *&v11[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal27StreamingURLSessionDelegate_streamID + 8];
      *v56 = 0;
      *&v56[8] = 0xE000000000000000;
      v53 = 0x726F70736E617274;
      v54 = 0xEA00000000005F74;
      v52 = v20;
      v22 = sub_24DD4B624();
      MEMORY[0x253037C70](v22);

      MEMORY[0x253037C70](v53, v54);

      MEMORY[0x253037C70](0x5F6D61657274732FLL, 0xE800000000000000);
      v53 = v21;
      v23 = sub_24DD4B624();
      MEMORY[0x253037C70](v23);

      v24 = sub_24DD38DE0(*v56, *&v56[8], &v55);

      *(v14 + 14) = v24;
      _os_log_impl(&dword_24DD09000, v12, v13, "URLSessionTask received %{iec-bytes}ld for %s", v14, 0x16u);
      v25 = v47;
      __swift_destroy_boxed_opaque_existential_0(v47);
      MEMORY[0x253038870](v25, -1, -1);
      MEMORY[0x253038870](v14, -1, -1);

      a1 = v50;
      goto LABEL_14;
    }

    LODWORD(v16) = HIDWORD(a2) - a2;
    if (__OFSUB__(HIDWORD(a2), a2))
    {
      __break(1u);
      return;
    }

    v16 = v16;
    goto LABEL_13;
  }

  sub_24DD0E53C(a2, a3);

LABEL_14:
  v26 = &v11[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal27StreamingURLSessionDelegate_state];
  os_unfair_lock_lock(&v11[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal27StreamingURLSessionDelegate_state]);
  v27 = *(v26 + 44);
  if ((v27 & 0xC0) == 0x40)
  {
    v28 = *(v26 + 24);
    *v56 = *(v26 + 8);
    *&v56[16] = v28;
    v29 = *(v26 + 56);
    *v57 = *(v26 + 40);
    *&v57[16] = v29;
    v58 = *(v26 + 72);
    v59 = v27 & 0xFF3F;
    sub_24DD0BFC0(a2, a3);
    sub_24DD0D4B4(a2, a3);
    v30 = *&v56[24];
    v31 = *&v57[24];
    v32 = v58;
    v33 = *(&v58 + 1);
    v34 = v57[0] & 1;
    v35 = v59 & 0xFF01 | 0x40;
    *(v26 + 1) = *v56 & 0xFFFFFFFFFFFFFF8;
    *(v26 + 1) = *&v56[8];
    *(v26 + 4) = v30;
    *(v26 + 5) = v34;
    *(v26 + 3) = *&v57[8];
    *(v26 + 8) = v31;
    *(v26 + 9) = v32;
    *(v26 + 10) = v33;
    *(v26 + 44) = v35;
  }

  v36 = sub_24DD10AAC(v51);
  if (v36[2])
  {
    v37 = *&v11[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal27StreamingURLSessionDelegate_responsePartSource];
    v38 = *(v37 + 16);
    v39 = v36;

    sub_24DD147A4(v39, v56);

    if ((v56[8] & 1) == 0)
    {
      v40 = *v56;
      v41 = &v11[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal27StreamingURLSessionDelegate_hasSuspendedURLSessionTask];
      os_unfair_lock_lock(&v11[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal27StreamingURLSessionDelegate_hasSuspendedURLSessionTask]);
      if (v41[1]._os_unfair_lock_opaque)
      {
        os_unfair_lock_unlock(v41);
      }

      else
      {
        LOBYTE(v41[1]._os_unfair_lock_opaque) = 1;
        [a1 suspend];
        os_unfair_lock_unlock(v41);
        v42 = swift_allocObject();
        *(v42 + 16) = v11;
        *(v42 + 24) = a1;
        v43 = *(v37 + 16);
        v44 = v11;
        v45 = a1;

        sub_24DD14D00(v40, sub_24DD1C1EC, v42);
      }
    }
  }

  else
  {
  }

  os_unfair_lock_unlock(v26);
}

void sub_24DD1B0E0(void *a1, id a2)
{
  v5 = a2;
  v6 = a2;
  v7 = v2;
  v8 = sub_24DD4B084();
  v9 = sub_24DD4B414();

  if (os_log_type_enabled(v8, v9))
  {
    v23 = a1;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 136315394;
    v12 = *&v7[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal27StreamingURLSessionDelegate_streamID];
    v13 = *&v7[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal27StreamingURLSessionDelegate_streamID + 8];
    v24 = v11;
    v14 = sub_24DD4B624();
    MEMORY[0x253037C70](v14);

    MEMORY[0x253037C70](0x726F70736E617274, 0xEA00000000005F74);

    MEMORY[0x253037C70](0x5F6D61657274732FLL, 0xE800000000000000);
    v15 = sub_24DD4B624();
    MEMORY[0x253037C70](v15);

    v16 = sub_24DD38DE0(0, 0xE000000000000000, &v24);

    *(v10 + 4) = v16;
    *(v10 + 12) = 1024;

    *(v10 + 14) = a2 == 0;
    _os_log_impl(&dword_24DD09000, v8, v9, "URLSessionTask completed cleanly for stream %s: %{BOOL}d", v10, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x253038870](v11, -1, -1);
    v17 = v10;
    a1 = v23;
    MEMORY[0x253038870](v17, -1, -1);
  }

  else
  {
  }

  v18 = [a1 _trailers];
  if (v18)
  {
    v19 = v18;
    v20 = sub_24DD4B114();

    v21 = sub_24DD12F24(v20);
  }

  else
  {
    v21 = 0;
  }

  v22 = &v7[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal27StreamingURLSessionDelegate_state];
  os_unfair_lock_lock(&v7[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal27StreamingURLSessionDelegate_state]);
  sub_24DD13204(&v22[2], v21, a2, v7);

  os_unfair_lock_unlock(v22);
}

uint64_t sub_24DD1B3F0()
{
  result = sub_24DD4B0A4();
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

uint64_t sub_24DD1B4DC()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF520, &qword_24DD4CA78);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_24DD1B50C()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF528, &qword_24DD4CA80);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

void *sub_24DD1B584(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11)
{
  v11 = a11 >> 6;
  if (v11 == 1)
  {
  }

  else if (!v11)
  {
  }

  return result;
}

__n128 __swift_memcpy82_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t assignWithTake for StreamingURLSessionDelegate.State(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 80);
  v4 = *a1;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  v13 = *(a1 + 72);
  v14 = *(a1 + 80);
  v15 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v15;
  v16 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v16;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v3;
  sub_24DD1B584(v4, v6, v5, v7, v8, v9, v10, v11, v12, v13, v14);
  return a1;
}

uint64_t getEnumTagSinglePayload for StreamingURLSessionDelegate.State(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 82))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*a1 >> 57) & 0x78 | *a1 & 7 | (*(a1 + 32) >> 1 << 7);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double storeEnumTagSinglePayload for StreamingURLSessionDelegate.State(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 72) = 0;
    result = 0.0;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 80) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 82) = 1;
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
      v4 = -a2;
      *a1 = (v4 | (v4 << 57)) & 0xF000000000000007;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      *(a1 + 32) = (v4 >> 6) & 0x3FFFFFE;
      result = 0.0;
      *(a1 + 40) = 0u;
      *(a1 + 56) = 0u;
      *(a1 + 66) = 0u;
      return result;
    }

    *(a1 + 82) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24DD1B780(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (((v1 >> 6) & 2) != 0)
  {
    return (*a1 >> 3) + 2;
  }

  else
  {
    return v1 >> 6;
  }
}

uint64_t sub_24DD1B7B4(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *(result + 64);
    v3 = *(result + 80);
    v4 = *(result + 32) & 1;
    *result &= 0xFFFFFFFFFFFFFF8uLL;
    *(result + 32) = v4;
    *(result + 64) = v2;
    *(result + 80) = v3 & 0xFF01 | (a2 << 6);
  }

  else
  {
    *result = 8 * (a2 - 2);
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0;
    *(result + 80) = 128;
  }

  return result;
}

void *sub_24DD1B82C()
{
  if (MEMORY[0x277D85020])
  {
    return &unk_2860F4F78;
  }

  else
  {
    return (MEMORY[0x277D84F78] + 8);
  }
}

void *sub_24DD1B854()
{
  if (MEMORY[0x277D85020])
  {
    return &unk_2860F4EE8;
  }

  else
  {
    return (MEMORY[0x277D84F78] + 8);
  }
}

uint64_t sub_24DD1B87C()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24DD1B8D4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_24DD0D4B0;

  return sub_24DD12B50(v2, v3, v4, v5, v6);
}

uint64_t sub_24DD1B9A0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_24DD0D4B0;

  return sub_24DD183E0(v2, v3, v5);
}

uint64_t sub_24DD1BA60(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24DD0D4B0;

  return sub_24DD184C8(a1, v4, v5, v7);
}

uint64_t sub_24DD1BB2C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24DD1BB64(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24DD0D4B0;

  return sub_24DD188AC(a1, v5);
}

uint64_t sub_24DD1BC1C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24DD0C914;

  return sub_24DD188AC(a1, v5);
}

uint64_t sub_24DD1BCD4()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24DD1BD24()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_24DD0C914;

  return sub_24DD11AD0(v2, v3, v5, v4);
}

uint64_t objectdestroy_15Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_24DD1BEFC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_24DD1BF78()
{
  result = qword_27F1AF570;
  if (!qword_27F1AF570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1AF568, &qword_24DD4CB28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1AF570);
  }

  return result;
}

uint64_t sub_24DD1BFDC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void sub_24DD1BFE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((~a3 & 0xF000000000000007) != 0)
  {
    sub_24DD1BFFC(a1, a2, a3);
  }
}

void sub_24DD1BFFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
  }

  else
  {
  }
}

id sub_24DD1C04C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {

    return (a3 & 0x7FFFFFFFFFFFFFFFLL);
  }

  else
  {
  }
}

unint64_t sub_24DD1C09C()
{
  result = qword_27F1AF590;
  if (!qword_27F1AF590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1AF590);
  }

  return result;
}

uint64_t sub_24DD1C0F0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, *(a1 + 8));
}

uint64_t sub_24DD1C124(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_24DD1C134(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_24DD1C144(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_24DD1C1AC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24DD1C218(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24DD1C250(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24DD1C2B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24DD1C318(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StreamingURLSessionDelegate.State.ReceivedResponseHeadAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24DD1C3AC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}