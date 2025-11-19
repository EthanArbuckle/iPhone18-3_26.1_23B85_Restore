uint64_t EXFDRDecodeClient.hashValue.getter()
{
  v1 = *v0;
  sub_24A1D1B0C();
  MEMORY[0x24C212F60](v1);
  return sub_24A1D1B2C();
}

uint64_t sub_24A1CCF1C()
{
  v1 = *v0;
  sub_24A1D1B0C();
  MEMORY[0x24C212F60](v1);
  return sub_24A1D1B2C();
}

uint64_t sub_24A1CCF90()
{
  v1 = *v0;
  sub_24A1D1B0C();
  MEMORY[0x24C212F60](v1);
  return sub_24A1D1B2C();
}

uint64_t sub_24A1CCFE8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_24A1CD0BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A1CD584();
  v5 = sub_24A1CDCB8();

  return MEMORY[0x2821FE2D0](a1, a2, v4, v5);
}

BOOL sub_24A1CD160(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_24A1CD190@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_24A1CD1BC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_24A1CD294@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t EXFDRDecodeDataCtx.init(dataClass:uniqueID:uniqueIDLength:subCC:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

uint64_t EXFDRDecodeTransferRawDataCtx.init(data:dataLength:clientExclave:)@<X0>(uint64_t result@<X0>, int a2@<W1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 12) = v4;
  return result;
}

__n128 EXFDRDecodeGetTrustedDataCtx.init(clientExclave:dataCtx:decodeOptions:)@<Q0>(_BYTE *a1@<X0>, __n128 *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a2[1].n128_u32[0];
  v5 = a2[1].n128_u64[1];
  v6 = *a3;
  *a4 = *a1;
  result = *a2;
  *(a4 + 8) = *a2;
  *(a4 + 24) = v4;
  *(a4 + 32) = v5;
  *(a4 + 40) = v6;
  return result;
}

uint64_t EXFDRDecodeTrustedDataCtx.dataCtx.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 4);
  v5 = v1[3];
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
}

unint64_t sub_24A1CD3CC()
{
  result = qword_27EF38A70;
  if (!qword_27EF38A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF38A70);
  }

  return result;
}

unint64_t sub_24A1CD424()
{
  result = qword_27EF38A78;
  if (!qword_27EF38A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF38A78);
  }

  return result;
}

unint64_t sub_24A1CD47C()
{
  result = qword_27EF38A80;
  if (!qword_27EF38A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF38A80);
  }

  return result;
}

unint64_t sub_24A1CD4D4()
{
  result = qword_27EF38A88;
  if (!qword_27EF38A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF38A88);
  }

  return result;
}

unint64_t sub_24A1CD52C()
{
  result = qword_27EF38A90;
  if (!qword_27EF38A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF38A90);
  }

  return result;
}

unint64_t sub_24A1CD584()
{
  result = qword_27EF38A98;
  if (!qword_27EF38A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF38A98);
  }

  return result;
}

unint64_t sub_24A1CD5DC()
{
  result = qword_27EF38AA0;
  if (!qword_27EF38AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF38AA0);
  }

  return result;
}

unint64_t sub_24A1CD634()
{
  result = qword_27EF38AA8;
  if (!qword_27EF38AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF38AA8);
  }

  return result;
}

unint64_t sub_24A1CD68C()
{
  result = qword_27EF38AB0;
  if (!qword_27EF38AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF38AB0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EXFDRDecodeClient(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EXFDRDecodeClient(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s16ExclaveFDRDecode17EXFDRDecodeOptionVwet_0(uint64_t a1, int a2)
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

uint64_t _s16ExclaveFDRDecode17EXFDRDecodeOptionVwst_0(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

void *__swift_memcpy13_8(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 5) = *(a2 + 5);
  *result = v2;
  return result;
}

uint64_t sub_24A1CD900(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 13))
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

uint64_t sub_24A1CD948(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 13) = 1;
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

    *(result + 13) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_24A1CD9B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_24A1CD9F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy20_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_24A1CDA80(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_24A1CDAC8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

__n128 __swift_memcpy44_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 28) = *(a2 + 28);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24A1CDB2C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 44))
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

uint64_t sub_24A1CDB74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 44) = 1;
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

    *(result + 44) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24A1CDBD0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 20))
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

uint64_t sub_24A1CDC18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 20) = 1;
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

    *(result + 20) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata accessor for TransportError()
{
  if (!qword_27EF38AB8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27EF38AB8);
    }
  }
}

unint64_t sub_24A1CDCB8()
{
  result = qword_27EF38AC0;
  if (!qword_27EF38AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF38AC0);
  }

  return result;
}

uint64_t sub_24A1CDD0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_24A1CDDD8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF38AD8, &qword_24A1D23D8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24A1D2380;
  sub_24A1D1A8C();

  MEMORY[0x24C212EA0](a1, a2);
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 32) = 0xD000000000000028;
  *(v4 + 40) = 0x800000024A1D3780;
  sub_24A1D1AFC();
}

uint64_t ExclaveFDRDecodeRawDataStoreKitClient.__allocating_init(conclaveID:)()
{
  v1 = swift_allocObject();
  type metadata accessor for ExclaveFDRDecodeRawDataStoreKitService.Service();
  sub_24A1CE20C(&qword_27EF38AC8, type metadata accessor for ExclaveFDRDecodeRawDataStoreKitService.Service);
  sub_24A1D1A4C();

  if (v0)
  {
    v2 = sub_24A1D1A6C();
    MEMORY[0x24C212EA0](v2);

    sub_24A1CDDD8(0x203A726F727245, 0xE700000000000000);

    type metadata accessor for TransportError();
    sub_24A1CE20C(&qword_27EF38AD0, type metadata accessor for TransportError);
    swift_allocError();
    *v3 = v6;
    swift_willThrow();
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v1 + 16) = v5;
  }

  return v1;
}

uint64_t ExclaveFDRDecodeRawDataStoreKitClient.init(conclaveID:)()
{
  type metadata accessor for ExclaveFDRDecodeRawDataStoreKitService.Service();
  sub_24A1CE20C(&qword_27EF38AC8, type metadata accessor for ExclaveFDRDecodeRawDataStoreKitService.Service);
  sub_24A1D1A4C();

  if (v1)
  {
    v2 = sub_24A1D1A6C();
    MEMORY[0x24C212EA0](v2);

    sub_24A1CDDD8(0x203A726F727245, 0xE700000000000000);

    type metadata accessor for TransportError();
    sub_24A1CE20C(&qword_27EF38AD0, type metadata accessor for TransportError);
    swift_allocError();
    *v3 = v6;
    swift_willThrow();
    type metadata accessor for ExclaveFDRDecodeRawDataStoreKitClient();
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v0 + 16) = v5;
  }

  return v0;
}

uint64_t sub_24A1CE20C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24A1CE278(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  v4 = *(a1 + 12);
  v5 = *(v1 + 16);
  if (v4 == 1)
  {
    v6 = 0x100000000;
  }

  else
  {
    v6 = (v4 == 2) << 33;
  }

  sub_24A1CE40C(v7, v6 | v3);
}

uint64_t ExclaveFDRDecodeRawDataStoreKitClient.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t ExclaveFDRDecodeRawDataStoreKitClient.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
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

uint64_t sub_24A1CE40C(uint64_t a1, uint64_t a2)
{
  v46 = a2;
  v4 = sub_24A1D197C();
  v42 = *(v4 - 8);
  v5 = *(v42 + 64);
  (MEMORY[0x28223BE20])();
  v43 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A1D19CC();
  v44 = *(v7 - 8);
  v45 = v7;
  v8 = *(v44 + 64);
  (MEMORY[0x28223BE20])();
  v9 = *(*(sub_24A1D19EC() - 8) + 64);
  v10 = (MEMORY[0x28223BE20])();
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v40 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v40 - v15;
  MEMORY[0x28223BE20](v14);
  v20 = &v40 - v19;
  v21 = *(a1 + 16);
  v22 = __OFADD__(v21, 8);
  v23 = v21 + 8;
  if (v22)
  {
    __break(1u);
    goto LABEL_12;
  }

  v22 = __OFADD__(v23, 4);
  v24 = v23 + 4;
  if (v22)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v22 = __OFADD__(v24, 8);
  v25 = v24 + 8;
  if (v22)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (__OFADD__(v25, 8))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v26 = a1;
  v27 = v18;
  v47 = v17;
  v41 = v4;
  v28 = *(v2 + 16);
  v29 = v48;
  sub_24A1D1A0C();
  if (v29)
  {
    v30 = v50;
    type metadata accessor for TransportError();
    sub_24A1D16F8(&qword_27EF38AD0, 255, type metadata accessor for TransportError);
    result = swift_allocError();
    *v32 = v30;
    return result;
  }

  v48 = v13;
  v33 = *(v27 + 32);
  v33(v16, v20, v47);
  sub_24A1D19DC();
  sub_24A1D19AC();
  sub_24A1CEA28(v26, v46 & 0xFFFFFFFFFFLL);
  sub_24A1D19BC();
  v34 = v48;
  sub_24A1D1A1C();
  v33(v16, v34, v47);
  v35 = v43;
  sub_24A1D196C();
  v36 = sub_24A1D192C();
  if (!v36)
  {
    return (*(v42 + 8))(v35, v41);
  }

  if (v36 == 1)
  {
    v37 = sub_24A1D0E00();
    v38 = (v42 + 8);
    v49 = v37;
    sub_24A1D1740();
    swift_willThrowTypedImpl();
    swift_allocError();
    *v39 = v37;
    return (*v38)(v35, v41);
  }

LABEL_15:
  result = sub_24A1D1A9C();
  __break(1u);
  return result;
}

uint64_t sub_24A1CE990(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A1D1858();
  v5 = sub_24A1CDCB8();

  return MEMORY[0x2821FE2D0](a1, a2, v4, v5);
}

uint64_t sub_24A1CE9E8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_24A1CDD0C(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_24A1CEA28(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  sub_24A1D19AC();
  if (v4)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_24A1D198C();
      --v4;
    }

    while (v4);
  }

  sub_24A1D199C();
  v7 = qword_24A1D28D0[a2 << 24 >> 56];
  return sub_24A1D19AC();
}

uint64_t sub_24A1CEA9C@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a2;
  v39 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF38AF8, &qword_24A1D26A8);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v37 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v32 - v9;
  v11 = sub_24A1D19CC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v13(v10, 1, 1, v11);
  sub_24A1D0EE0();
  v14 = sub_24A1D194C();
  v43 = a1;
  v15 = sub_24A1D05A4(sub_24A1D1914, v42, 0, v14);
  v16 = sub_24A1D193C();
  v40 = a1;
  v17 = sub_24A1D0FC8();
  if (v3)
  {
    v18 = v41;

    if ((*(v12 + 48))(v10, 1, v11) != 1)
    {
      sub_24A1D10F8(v10);
    }

    v19 = sub_24A1D197C();
    result = (*(*(v19 - 8) + 8))(v40, v19);
    *v18 = v17;
  }

  else
  {
    v33 = v13;
    v34 = v12 + 56;
    v21 = v12;
    v22 = v37;
    v35 = v11;
    v36 = v10;
    v24 = v38[6];
    v23 = v38[7];
    __swift_project_boxed_opaque_existential_1(v38 + 3, v24);
    (*(v23 + 8))(v15, v16 | (v17 << 32), v24, v23);

    v38 = 0;
    v25 = v39;
    v26 = v35;
    sub_24A1D195C();
    v33(v22, 0, 1, v26);
    v27 = *(v21 + 48);
    v28 = v36;
    if (v27(v36, 1, v26) != 1)
    {
      sub_24A1D10F8(v28);
    }

    sub_24A1D11A4(v22, v28);
    if (!v27(v28, 1, v26))
    {
      sub_24A1D198C();
    }

    v29 = (v27)(v28, 1, v26);
    v30 = v29;
    if (v29 != 1)
    {
      if (v29)
      {
        sub_24A1D10F8(v28);
        v30 = 1;
      }

      else
      {
        sub_24A1D19BC();
      }
    }

    v31 = sub_24A1D19EC();
    return (*(*(v31 - 8) + 56))(v25, v30, 1, v31);
  }

  return result;
}

uint64_t sub_24A1CF04C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 16) == 4)
  {
    v7 = *(a1 + 32);
    sub_24A1D198C();
    v8 = *(a1 + 33);
    sub_24A1D198C();
    v9 = *(a1 + 34);
    sub_24A1D198C();
    v10 = *(a1 + 35);
    sub_24A1D198C();
    v11 = *(a2 + 16);
    sub_24A1D19AC();
    if (v11)
    {
      v12 = (a2 + 32);
      do
      {
        v13 = *v12++;
        sub_24A1D198C();
        --v11;
      }

      while (v11);
    }

    sub_24A1D199C();
    if (*(a4 + 16) == 4)
    {
      v14 = *(a4 + 32);
      sub_24A1D198C();
      v15 = *(a4 + 33);
      sub_24A1D198C();
      v16 = *(a4 + 34);
      sub_24A1D198C();
      v17 = *(a4 + 35);
      return sub_24A1D198C();
    }

    sub_24A1D1A8C();
    MEMORY[0x24C212EA0](0x5F2865646F636E65, 0xEA0000000000293ALL);
    MEMORY[0x24C212EA0](0xD000000000000036, 0x800000024A1D3C30);
    v21 = sub_24A1D1AAC();
    MEMORY[0x24C212EA0](v21);
  }

  else
  {
    v19 = *(a1 + 16);
    sub_24A1D1A8C();
    MEMORY[0x24C212EA0](0x5F2865646F636E65, 0xEA0000000000293ALL);
    MEMORY[0x24C212EA0](0xD000000000000036, 0x800000024A1D3C30);
    v20 = sub_24A1D1AAC();
    MEMORY[0x24C212EA0](v20);
  }

  result = sub_24A1D1A9C();
  __break(1u);
  return result;
}

uint64_t sub_24A1CF280()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_24A1CF2BC@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v62 = a2;
  v5 = v3;
  v59 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF38AF8, &qword_24A1D26A8);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v56 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v56 - v15;
  v17 = sub_24A1D19CC();
  v63 = *(v17 - 8);
  v64 = v16;
  v18 = *(v63 + 56);
  v65 = v17;
  v60 = v18;
  v61 = v63 + 56;
  (v18)(v16, 1, 1);
  if ((sub_24A1D1270() & 1) == 0)
  {
    sub_24A1D14D4((v3 + 3), v66);
    v24 = v67;
    v58 = v68;
    v57 = __swift_project_boxed_opaque_existential_1(v66, v67);
    MEMORY[0x28223BE20](v57);
    v25 = sub_24A1D0728(sub_24A1D1914, (&v56 - 4), 0, 4);
    v26 = sub_24A1D194C();
    MEMORY[0x28223BE20](v26);
    v28 = sub_24A1D05A4(sub_24A1D1914, (&v56 - 4), 0, v27);
    v29 = sub_24A1D193C();
    MEMORY[0x28223BE20](v29);
    v54 = a1;
    v30 = sub_24A1D0728(sub_24A1D1914, (&v56 - 4), 0, 4);
    v23 = sub_24A1D0FC8();
    if (v4)
    {

      __swift_destroy_boxed_opaque_existential_1(v66);
      goto LABEL_6;
    }

    v37 = (*(v58 + 16))(v25, v28, v29, v30, v23, v24);
    v39 = v38;

    __swift_destroy_boxed_opaque_existential_1(v66);
    v40 = *(v39 + 16);
    v41 = __OFADD__(v40, 8);
    v42 = v40 + 8;
    if (v41)
    {
      __break(1u);
    }

    else
    {
      v41 = __OFADD__(v42, 8);
      v43 = v42 + 8;
      v36 = v64;
      if (!v41)
      {
        v58 = v37;
        if (!__OFADD__(v43, 4))
        {
          sub_24A1D195C();
          v44 = v65;
          v60(v11, 0, 1, v65);
          v45 = *(v63 + 48);
          if (v45(v36, 1, v44) != 1)
          {
            sub_24A1D10F8(v36);
          }

          sub_24A1D11A4(v11, v36);
          if (v45(v36, 1, v44))
          {
          }

          else
          {
            sub_24A1D0C0C(v58);
            v50 = *(v39 + 16);
            sub_24A1D19AC();
            v51 = *(v39 + 16);
            if (v51)
            {
              v52 = (v39 + 32);
              do
              {
                v53 = *v52++;
                sub_24A1D198C();
                --v51;
              }

              while (v51);
            }

            sub_24A1D199C();

            v44 = v65;
          }

          goto LABEL_22;
        }

LABEL_34:
        __break(1u);
        MEMORY[0x24C213030](v66[0]);
        v55 = 0;
        v54 = 231;
        result = sub_24A1D1A9C();
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_34;
  }

  v19 = sub_24A1D194C();
  MEMORY[0x28223BE20](v19);
  v54 = a1;
  v21 = sub_24A1D05A4(sub_24A1D1914, (&v56 - 4), 0, v20);
  v22 = sub_24A1D193C();
  LODWORD(v23) = sub_24A1D0FC8();
  if (v4)
  {

LABEL_6:
    v31 = v64;
    if ((*(v63 + 48))(v64, 1, v65) != 1)
    {
      sub_24A1D10F8(v31);
    }

    v32 = sub_24A1D197C();
    result = (*(*(v32 - 8) + 8))(a1, v32);
    *v62 = v23;
    return result;
  }

  v34 = v5[6];
  v35 = v5[7];
  __swift_project_boxed_opaque_existential_1(v5 + 3, v34);
  (*(v35 + 8))(v21, v22 | (v23 << 32), v34, v35);
  v36 = v64;

  sub_24A1D195C();
  v44 = v65;
  v60(v14, 0, 1, v65);
  v45 = *(v63 + 48);
  if (v45(v36, 1, v44) != 1)
  {
    sub_24A1D10F8(v36);
  }

  sub_24A1D11A4(v14, v36);
  if (!v45(v36, 1, v44))
  {
    sub_24A1D198C();
    v44 = v65;
  }

LABEL_22:
  v46 = (v45)(v36, 1, v44);
  v47 = v46;
  if (v46 == 1)
  {
    v48 = v59;
  }

  else
  {
    v48 = v59;
    if (v46)
    {
      sub_24A1D10F8(v36);
      v47 = 1;
    }

    else
    {
      sub_24A1D19BC();
    }
  }

  v49 = sub_24A1D19EC();
  return (*(*(v49 - 8) + 56))(v48, v47, 1, v49);
}

uint64_t sub_24A1CFBF4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_24A1D19FC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  (*(v5 + 16))(v8, a1, v4);
  v10 = sub_24A1D1A3C();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = sub_24A1D1A2C();
  result = (*(v5 + 8))(a1, v4);
  *(v9 + 16) = v13;
  *a2 = v9;
  return result;
}

uint64_t sub_24A1CFD24@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = v3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF38AF8, &qword_24A1D26A8);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v71 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v71 - v17;
  v19 = sub_24A1D19CC();
  v78 = *(v19 - 8);
  v79 = v19;
  v20 = *(v78 + 56);
  v80 = v18;
  v76 = v20;
  (v20)(v18, 1, 1);
  if (sub_24A1D13C8())
  {
    v74 = v16;
    sub_24A1D14D4(v6 + 24, v81);
    v22 = v82;
    v21 = v83;
    v23 = __swift_project_boxed_opaque_existential_1(v81, v82);
    v24 = sub_24A1D0FC8();
    LODWORD(v25) = v24;
    if (v4)
    {
      __swift_destroy_boxed_opaque_existential_1(v81);
      v34 = v80;
      if ((*(v78 + 48))(v80, 1, v79) != 1)
      {
        sub_24A1D10F8(v34);
      }

      v35 = sub_24A1D197C();
      result = (*(*(v35 - 8) + 8))(a1, v35);
      goto LABEL_12;
    }

    v71 = v22;
    v72 = v23;
    v73 = v21;
    v75 = a3;
    v77 = a2;
    MEMORY[0x28223BE20](v24);
    *(&v71 - 2) = a1;
    v26 = sub_24A1D0728(sub_24A1D1914, (&v71 - 4), 0, 4);
    v27 = sub_24A1D194C();
    MEMORY[0x28223BE20](v27);
    *(&v71 - 2) = a1;
    v29 = sub_24A1D05A4(sub_24A1D1914, (&v71 - 4), 0, v28);
    v30 = sub_24A1D193C();
    v31 = v30;
    MEMORY[0x28223BE20](v30);
    *(&v71 - 2) = a1;
    v32 = sub_24A1D0728(sub_24A1D1914, (&v71 - 4), 0, 4);
    v33 = sub_24A1D1574();
    v84[0] = v25;
    v85 = v26;
    v86 = v29;
    v87 = v31;
    v88 = v32;
    v89 = v33;
    v45 = (*(v73 + 8))(v84, v71);
    v47 = v46;
    v49 = v48;

    result = __swift_destroy_boxed_opaque_existential_1(v81);
    v50 = *(v47 + 16);
    v51 = __OFADD__(v50, 8);
    v52 = v50 + 8;
    if (v51)
    {
      __break(1u);
    }

    else
    {
      v51 = __OFADD__(v52, 8);
      v53 = v52 + 8;
      v54 = v74;
      if (!v51)
      {
        LODWORD(v72) = v49;
        result = v53 + 4;
        if (!__OFADD__(v53, 4))
        {
          sub_24A1D195C();
          v73 = 0;
          v61 = v79;
          v76(v54, 0, 1, v79);
          v56 = v61;
          v57 = *(v78 + 48);
          v58 = v80;
          if (v57(v80, 1, v61) != 1)
          {
            sub_24A1D10F8(v58);
          }

          sub_24A1D11A4(v54, v58);
          if (v57(v58, 1, v61))
          {
            goto LABEL_26;
          }

          v66 = v73;
          v60 = sub_24A1D0C0C(v45);
          if (v66)
          {
            goto LABEL_34;
          }

          v73 = 0;
          v67 = *(v47 + 16);
          sub_24A1D19AC();
          v68 = *(v47 + 16);
          if (v68)
          {
            v69 = (v47 + 32);
            do
            {
              v70 = *v69++;
              sub_24A1D198C();
              --v68;
            }

            while (v68);
          }

          sub_24A1D199C();
          goto LABEL_26;
        }

LABEL_42:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_42;
  }

  v75 = a3;
  v77 = a2;
  sub_24A1D14D4(v6 + 24, v81);
  v37 = v82;
  v38 = v83;
  v74 = __swift_project_boxed_opaque_existential_1(v81, v82);
  MEMORY[0x28223BE20](v74);
  *(&v71 - 2) = a1;
  v39 = sub_24A1D0728(sub_24A1D1538, (&v71 - 4), 0, 4);
  v25 = sub_24A1D0FC8();
  if (v4)
  {

    __swift_destroy_boxed_opaque_existential_1(v81);
    v40 = v80;
    if ((*(v78 + 48))(v80, 1, v79) != 1)
    {
      sub_24A1D10F8(v40);
    }

    v41 = sub_24A1D197C();
    result = (*(*(v41 - 8) + 8))(a1, v41);
    goto LABEL_11;
  }

  v42 = (*(v38 + 16))(v39, v25, v37, v38);
  v44 = v43;

  __swift_destroy_boxed_opaque_existential_1(v81);
  sub_24A1D1654(v44);
  sub_24A1D195C();
  v73 = 0;
  v55 = v79;
  v76(v13, 0, 1, v79);
  v56 = v55;
  v57 = *(v78 + 48);
  v58 = v80;
  if (v57(v80, 1, v56) != 1)
  {
    sub_24A1D10F8(v58);
  }

  sub_24A1D11A4(v13, v58);
  if (v57(v58, 1, v56))
  {
    goto LABEL_26;
  }

  v59 = v73;
  v60 = sub_24A1D089C(v42, v44);
  if (v59)
  {
LABEL_34:
    LODWORD(v25) = v60;

    result = (v57)(v58, 1, v56);
    if (result != 1)
    {
      result = sub_24A1D10F8(v58);
    }

LABEL_11:
    a2 = v77;
LABEL_12:
    *a2 = v25;
    return result;
  }

  v73 = 0;
LABEL_26:

  v62 = (v57)(v58, 1, v56);
  v63 = v62;
  if (v62 == 1)
  {
    v64 = v75;
  }

  else
  {
    v64 = v75;
    if (v62)
    {
      sub_24A1D10F8(v58);
      v63 = 1;
    }

    else
    {
      sub_24A1D19BC();
    }
  }

  v65 = sub_24A1D19EC();
  return (*(*(v65 - 8) + 56))(v64, v63, 1, v65);
}

uint64_t sub_24A1D05A4(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, unint64_t a3, unint64_t a4)
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
    sub_24A1D0CEC(0, v7 & ~(v7 >> 63), 0);
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
          sub_24A1D0CEC((v13 > 1), v14 + 1, 1);
          v12 = v15;
          v8 = v21;
        }

        *(v8 + 16) = v14 + 1;
        *(v8 + v14 + 32) = v12;
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

uint64_t sub_24A1D0728(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v20 = MEMORY[0x277D84F90];
  sub_24A1D0CEC(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v6 = v20;
    v9 = a4;
    if (a4 <= a3)
    {
      v9 = a3;
    }

    v15 = v9 - a3 + 1;
    while (v8 < v5)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_17;
      }

      v18 = a3 + v8;
      a1(&v19, &v18);
      if (v4)
      {
        goto LABEL_22;
      }

      v11 = v19;
      v20 = v6;
      v13 = *(v6 + 16);
      v12 = *(v6 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_24A1D0CEC((v12 > 1), v13 + 1, 1);
        v6 = v20;
      }

      *(v6 + 16) = v13 + 1;
      *(v6 + v13 + 32) = v11;
      if (a4 < a3)
      {
        goto LABEL_18;
      }

      if (v15 == ++v8)
      {
        goto LABEL_19;
      }

      if (v10 == v5)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_21:
  __break(1u);
LABEL_22:

  __break(1u);
  return result;
}

uint64_t sub_24A1D089C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A1D0C0C(a1);
  if (v2)
  {
    return v4;
  }

  v5 = *(a2 + 16);
  sub_24A1D19AC();
  v19 = v5;
  if (v5)
  {
    v6 = 0;
    v18 = a2 + 32;
    do
    {
      v7 = v18 + 48 * v6;
      v8 = *v7;
      v9 = *(v7 + 8);
      v10 = *(v7 + 24);
      v11 = *(v7 + 32);
      v12 = *(v7 + 40);
      v13 = *(v7 + 16);

      sub_24A1CF04C(v8, v9, v13, v10);
      v14 = *(v11 + 16);
      sub_24A1D19AC();
      v5 = *(v11 + 16);
      if (v5)
      {
        v15 = (v11 + 32);
        do
        {
          v16 = *v15++;
          sub_24A1D198C();
          --v5;
        }

        while (v5);
      }

      ++v6;
      sub_24A1D199C();
    }

    while (v6 != v19);
  }

  sub_24A1D199C();
  return v5;
}

uint64_t sub_24A1D0A14()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t sub_24A1D0A80(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, int *))
{
  v8 = *v5;
  result = a5(a1, &v10);
  if (v6)
  {
    *a2 = v10;
  }

  return result;
}

uint64_t sub_24A1D0C0C(uint64_t a1)
{
  if ((a1 & 0x7FFFFFFFFFFFFFC0) == 0)
  {
    return sub_24A1D19AC();
  }

  sub_24A1D1A8C();
  MEMORY[0x24C212EA0](0xD000000000000046, 0x800000024A1D3AD0);
  v2 = sub_24A1D1AAC();
  MEMORY[0x24C212EA0](v2);

  result = sub_24A1D1A9C();
  __break(1u);
  return result;
}

char *sub_24A1D0CEC(char *a1, int64_t a2, char a3)
{
  result = sub_24A1D0D0C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24A1D0D0C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF38B08, &qword_24A1D26B8);
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
    if (v10 != a4 || v12 >= &v13[v8])
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

uint64_t sub_24A1D0E00()
{
  result = sub_24A1D194C();
  if ((result & 0x7FFFFFFFFFFFFFC0) != 0)
  {
    sub_24A1D1A8C();
    MEMORY[0x24C212EA0](0xD000000000000046, 0x800000024A1D3AD0);
    v1 = sub_24A1D1AAC();
    MEMORY[0x24C212EA0](v1);

    result = sub_24A1D1A9C();
    __break(1u);
  }

  return result;
}

uint64_t sub_24A1D0EE0()
{
  result = sub_24A1D194C();
  if (result != 0xD1E1F592CBAABCE3)
  {
    sub_24A1D1A8C();
    MEMORY[0x24C212EA0](0xD000000000000045, 0x800000024A1D3B40);
    v1 = sub_24A1D1AAC();
    MEMORY[0x24C212EA0](v1);

    result = sub_24A1D1A9C();
    __break(1u);
  }

  return result;
}

uint64_t sub_24A1D0FC8()
{
  v0 = sub_24A1D194C();
  switch(v0)
  {
    case 0xBE6B44F35C5CA9B9:
      return 1;
    case 0xE6C698D5A150ECB8:
      return 0;
    case 0x255D35955CB3DFB0:
      return 2;
  }

  sub_24A1D1A8C();

  v2 = sub_24A1D1AAC();
  MEMORY[0x24C212EA0](v2);

  result = sub_24A1D1A9C();
  __break(1u);
  return result;
}

uint64_t sub_24A1D10F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF38AF8, &qword_24A1D26A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_24A1D11A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF38AF8, &qword_24A1D26A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A1D1218(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 16);
  v4 = __OFADD__(v3, 8);
  v5 = v3 + 8;
  if (v4)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = *(result + 16);
  if (v6 >= 4)
  {
    v6 = 4;
  }

  v4 = __OFADD__(v6, v5);
  v7 = v6 + v5;
  if (v4)
  {
    goto LABEL_11;
  }

  v4 = __OFADD__(v7, 4);
  v8 = v7 + 4;
  if (v4)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v9 = *(a3 + 16);
  if (v9 >= 4)
  {
    v9 = 4;
  }

  result = v8 + v9;
  if (__OFADD__(v8, v9))
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_24A1D1270()
{
  v0 = sub_24A1D194C();
  if (v0 == 0xF8BE6A6F727628E8)
  {
    return 0;
  }

  if (v0 == 0x85CCB4C7D58863A4)
  {
    return 1;
  }

  sub_24A1D1A8C();
  MEMORY[0x24C212EA0](0xD000000000000042, 0x800000024A1D3B90);
  v2 = sub_24A1D1AAC();
  MEMORY[0x24C212EA0](v2);

  result = sub_24A1D1A9C();
  __break(1u);
  return result;
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

uint64_t sub_24A1D13C8()
{
  v0 = sub_24A1D194C();
  if (v0 == 0xFEBBB426EB8D0A2ALL)
  {
    return 0;
  }

  if (v0 == 0x3CABAAF6E5F14886)
  {
    return 1;
  }

  sub_24A1D1A8C();
  MEMORY[0x24C212EA0](0xD000000000000045, 0x800000024A1D3C70);
  v2 = sub_24A1D1AAC();
  MEMORY[0x24C212EA0](v2);

  result = sub_24A1D1A9C();
  __break(1u);
  return result;
}

uint64_t sub_24A1D14D4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_24A1D1538@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = sub_24A1D192C();
  *a1 = result;
  return result;
}

uint64_t sub_24A1D1574()
{
  result = sub_24A1D194C();
  if ((result & 0xFFFFFFFFFFFFFFF0) != 0)
  {
    sub_24A1D1A8C();
    MEMORY[0x24C212EA0](0xD000000000000047, 0x800000024A1D3BE0);
    v1 = sub_24A1D1AAC();
    MEMORY[0x24C212EA0](v1);

    result = sub_24A1D1A9C();
    __break(1u);
  }

  return result;
}

uint64_t sub_24A1D1654(uint64_t result)
{
  v1 = 0;
  v2 = (result + 64);
  v3 = *(result + 16) + 1;
  do
  {
    if (!--v3)
    {
      goto LABEL_9;
    }

    v4 = *v2;
    result = sub_24A1D1218(*(v2 - 4), *(v2 - 3), *(v2 - 1));
    v5 = *(v4 + 16);
    v6 = __OFADD__(v5, 8);
    v7 = v5 + 8;
    if (v6)
    {
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v6 = __OFADD__(result, v7);
    v8 = result + v7;
    if (v6)
    {
      goto LABEL_14;
    }

    v6 = __OFADD__(v8, 4);
    v9 = v8 + 4;
    if (v6)
    {
      goto LABEL_15;
    }

    v2 += 6;
    v6 = __OFADD__(v1, v9);
    v1 += v9;
  }

  while (!v6);
  __break(1u);
LABEL_9:
  if (__OFADD__(v1, 8))
  {
    goto LABEL_16;
  }

  if (__OFADD__(v1 + 8, 8))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  result = v1 + 20;
  if (!__OFADD__(v1 + 16, 4))
  {
    return result;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_24A1D16F8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24A1D1740()
{
  result = qword_27EF38B10;
  if (!qword_27EF38B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF38B10);
  }

  return result;
}

unint64_t sub_24A1D17A8()
{
  result = qword_27EF38B18;
  if (!qword_27EF38B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF38B18);
  }

  return result;
}

unint64_t sub_24A1D1800()
{
  result = qword_27EF38B20;
  if (!qword_27EF38B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF38B20);
  }

  return result;
}

unint64_t sub_24A1D1858()
{
  result = qword_27EF38B28;
  if (!qword_27EF38B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF38B28);
  }

  return result;
}

unint64_t sub_24A1D18B0()
{
  result = qword_27EF38B30;
  if (!qword_27EF38B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF38B30);
  }

  return result;
}