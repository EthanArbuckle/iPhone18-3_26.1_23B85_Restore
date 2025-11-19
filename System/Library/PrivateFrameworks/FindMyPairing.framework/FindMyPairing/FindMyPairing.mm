uint64_t sub_24AF49250()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24AF49288()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s13FindMyPairing0C7ContextOSgMd, &_s13FindMyPairing0C7ContextOSgMR) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);

  v6 = *(v0 + 24);

  v7 = v0 + v3;
  v8 = type metadata accessor for PairingContext();
  if (!(*(*(v8 - 8) + 48))(v0 + v3, 1, v8))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + v3));
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13FindMyPairing13AccessoryType_p_0aB4Base10MACAddressV11mainAddress10Foundation4DataVSg12pairingTokenSb11forceRepairtMd, &_s13FindMyPairing13AccessoryType_p_0aB4Base10MACAddressV11mainAddress10Foundation4DataVSg12pairingTokenSb11forceRepairtMR);
      v13 = *(v12 + 48);
      v14 = type metadata accessor for MACAddress();
      (*(*(v14 - 8) + 8))(v7 + v13, v14);
      v15 = (v7 + *(v12 + 64));
      v16 = v15[1];
      if (v16 >> 60 != 15)
      {
        outlined consume of Data._Representation(*v15, v16);
      }
    }

    else if (EnumCaseMultiPayload == 1)
    {
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + v3));
      v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s13FindMyPairing13AccessoryType_p_0aB4Base10MACAddressV11mainAddresstMd, &_s13FindMyPairing13AccessoryType_p_0aB4Base10MACAddressV11mainAddresstMR) + 48);
      v11 = type metadata accessor for MACAddress();
      (*(*(v11 - 8) + 8))(v7 + v10, v11);
    }

    else if (!EnumCaseMultiPayload && *(v7 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + v3));
    }
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_24AF494AC()
{
  v1 = *(v0 + 16);

  if (*(v0 + 64))
  {
    v2 = *(v0 + 24);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));
  }

  return MEMORY[0x2821FE8E8](v0, 65, 7);
}

uint64_t sub_24AF49500()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24AF495C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy10FindMyBase11TransactionC_0aB7Pairing0E16CoordinatorStateOtGMd, &_sScSy10FindMyBase11TransactionC_0aB7Pairing0E16CoordinatorStateOtGMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy10FindMyBase11TransactionC_0aB7Pairing14AnalyticsEventOtGMd, &_sScSy10FindMyBase11TransactionC_0aB7Pairing14AnalyticsEventOtGMR);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_24AF496CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy10FindMyBase11TransactionC_0aB7Pairing0E16CoordinatorStateOtGMd, &_sScSy10FindMyBase11TransactionC_0aB7Pairing0E16CoordinatorStateOtGMR);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy10FindMyBase11TransactionC_0aB7Pairing14AnalyticsEventOtGMd, &_sScSy10FindMyBase11TransactionC_0aB7Pairing14AnalyticsEventOtGMR);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_24AF497E0()
{
  v1 = (type metadata accessor for AccessoryDependencies() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  v7 = (v0 + v3);
  v8 = *v7;
  swift_unknownObjectRelease();
  v9 = v1[7];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy10FindMyBase11TransactionC_0aB7Pairing0E16CoordinatorStateOtGMd, &_sScSy10FindMyBase11TransactionC_0aB7Pairing0E16CoordinatorStateOtGMR);
  (*(*(v10 - 8) + 8))(&v7[v9], v10);
  v11 = v1[8];
  v12 = type metadata accessor for Date();
  (*(*(v12 - 8) + 8))(&v7[v11], v12);
  v13 = (v0 + v4);
  if (*(v0 + v4 + 40))
  {
    v14 = *v13;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
  }

  return MEMORY[0x2821FE8E8](v0, v4 + 41, v2 | 7);
}

uint64_t sub_24AF49948()
{
  MEMORY[0x24C2370D0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AF49980()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AF499C0()
{
  v1 = *(type metadata accessor for DependenciesIdentifier(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 2);

  v6 = *(v0 + 3);

  if (*(v0 + 4) >= 0x11uLL)
  {
    MEMORY[0x24C236EB0]();
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = *&v0[v3];
  }

  else
  {
    v8 = type metadata accessor for UUID();
    (*(*(v8 - 8) + 8))(&v0[v3], v8);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24AF49ADC()
{
  MEMORY[0x24C2370D0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24AF49B14()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24AF49B54()
{
  v1 = *(v0 + 32);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24AF49B94()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_24AF49BCC()
{
  if (v0[5])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  }

  v1 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24AF49C28()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24AF49CEC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[6];
  swift_unknownObjectRelease();
  v3 = v0[7];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 9);

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_24AF49D3C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AF49D74()
{
  MEMORY[0x24C2370D0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AF49DAC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[6];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24AF49DF4()
{
  v1 = *(type metadata accessor for PairingExecutorState(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(v0 + 32);

  v10 = *(v0 + 40);

  v11 = (v0 + v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 6)
  {
    MEMORY[0x24C236EB0](*v11);
  }

  else if (EnumCaseMultiPayload == 3)
  {
    if (!(*(v6 + 48))(v0 + v3, 1, v5))
    {
      (*(v6 + 8))(v0 + v3, v5);
    }
  }

  else if (EnumCaseMultiPayload == 1 && v11[1] >= 9uLL)
  {

    v13 = v11[3];
  }

  v14 = (v3 + v4 + v7) & ~v7;
  (*(v6 + 8))(v0 + v14, v5);

  return MEMORY[0x2821FE8E8](v0, v14 + v8, v2 | v7 | 7);
}

uint64_t sub_24AF49FC4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];
  swift_unknownObjectRelease();
  if (v0[9])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 6);
  }

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_24AF4A014()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24AF4A054()
{
  v1 = *(v0 + 32);

  MEMORY[0x24C236EB0](*(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24AF4A094()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + v5));

  return MEMORY[0x2821FE8E8](v0, v5 + 40, v3 | 7);
}

uint64_t sub_24AF4A16C()
{
  v1 = v0[4];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 5);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 10);

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t _s13FindMyPairing0C16CoordinatorStateOIegHn_SgWOe_0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_24AF4A1F4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_24AF4A3AC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 112);
}

uint64_t sub_24AF4A3FC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 120);
}

unint64_t sub_24AF4A44C@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 128);
  *a2 = v4;
  return outlined copy of PairingCoordinatorState(v4);
}

uint64_t sub_24AF4A49C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy10FindMyBase11TransactionC_0aB7Pairing0E16CoordinatorStateOtGMd, &_sScSy10FindMyBase11TransactionC_0aB7Pairing0E16CoordinatorStateOtGMR);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for Date();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_24AF4A5CC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy10FindMyBase11TransactionC_0aB7Pairing0E16CoordinatorStateOtGMd, &_sScSy10FindMyBase11TransactionC_0aB7Pairing0E16CoordinatorStateOtGMR);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for Date();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_24AF4A714(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24AF4A780(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_24AF4A808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24AF4A8C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t outlined init with take of Accessory(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

Swift::Int PairingServiceProxyError.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x24C236B70](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PairingServiceProxyError()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x24C236B70](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PairingServiceProxyError()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x24C236B70](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type PairingServiceProxyError and conformance PairingServiceProxyError()
{
  result = lazy protocol witness table cache variable for type PairingServiceProxyError and conformance PairingServiceProxyError;
  if (!lazy protocol witness table cache variable for type PairingServiceProxyError and conformance PairingServiceProxyError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PairingServiceProxyError and conformance PairingServiceProxyError);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PairingServiceProxyError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PairingServiceProxyError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t dispatch thunk of PairingServiceProxy._coordinator(for:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = dispatch thunk of PairingServiceProxy._coordinator(for:context:);

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of PairingServiceProxy._coordinator(for:context:)(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t dispatch thunk of PairingServiceProxy.reevaluateDependencies(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 24);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = dispatch thunk of PairingServiceProxy.reevaluateDependencies(for:);

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of PairingServiceProxy.reevaluateDependencies(for:)()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t PairingValidatorError.description.getter()
{
  v1 = *v0;
  if (*(v0 + 8) == 1)
  {
    v2 = 0xD000000000000018;
    if (v1 != 1)
    {
      v2 = 0xD000000000000019;
    }

    if (v1)
    {
      return v2;
    }

    else
    {
      return 0xD000000000000014;
    }
  }

  else
  {
    _StringGuts.grow(_:)(24);

    v4 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x24C236810](v4);

    return 0xD000000000000016;
  }
}

Swift::Int PairingPolicyVerifierError.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x24C236B70](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PairingPolicyVerifierError()
{
  Hasher.init(_seed:)();
  MEMORY[0x24C236B70](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PairingPolicyVerifierError()
{
  Hasher.init(_seed:)();
  MEMORY[0x24C236B70](0);
  return Hasher._finalize()();
}

uint64_t PairingPolicyVerifier.verifyIfPairingEligibility(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[11] = AssociatedTypeWitness;
  v7 = type metadata accessor for Optional();
  v4[12] = v7;
  v8 = *(v7 - 8);
  v4[13] = v8;
  v9 = *(v8 + 64) + 15;
  v4[14] = swift_task_alloc();
  v10 = *(AssociatedTypeWitness - 8);
  v4[15] = v10;
  v11 = *(v10 + 64) + 15;
  v4[16] = swift_task_alloc();
  v12 = *(a3 + 8);
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[17] = v14;
  v4[18] = v13;

  return MEMORY[0x2822009F8](PairingPolicyVerifier.verifyIfPairingEligibility(_:), v14, v13);
}

uint64_t PairingPolicyVerifier.verifyIfPairingEligibility(_:)()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[11];
  outlined init with copy of PairingEligibilityInfo(v0[7], (v0 + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13FindMyPairing0C15EligibilityInfo_pMd, &_s13FindMyPairing0C15EligibilityInfo_pMR);
  v4 = swift_dynamicCast();
  v5 = *(v2 + 56);
  if (v4)
  {
    v7 = v0[15];
    v6 = v0[16];
    v8 = v0[14];
    v9 = v0[11];
    v25 = v0[9];
    v5(v8, 0, 1, v9);
    (*(v7 + 32))(v6, v8, v9);
    v10 = *(v25 + 32);
    v24 = (v10 + *v10);
    v11 = v10[1];
    v12 = swift_task_alloc();
    v0[19] = v12;
    *v12 = v0;
    v12[1] = PairingPolicyVerifier.verifyIfPairingEligibility(_:);
    v13 = v0[16];
    v14 = v0[9];
    v15 = v0[10];
    v16 = v0[8];

    return v24(v13, v16, v14);
  }

  else
  {
    v19 = v0[13];
    v18 = v0[14];
    v20 = v0[12];
    v5(v18, 1, 1, v0[11]);
    (*(v19 + 8))(v18, v20);
    lazy protocol witness table accessor for type PairingPolicyVerifierError and conformance PairingPolicyVerifierError();
    swift_allocError();
    swift_willThrow();
    v21 = v0[16];
    v22 = v0[14];

    v23 = v0[1];

    return v23();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *v1;
  *(*v1 + 160) = v0;

  v5 = *(v2 + 144);
  v6 = *(v2 + 136);
  if (v0)
  {
    v7 = PairingPolicyVerifier.verifyIfPairingEligibility(_:);
  }

  else
  {
    v7 = PairingPolicyVerifier.verifyIfPairingEligibility(_:);
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

{
  v1 = v0[14];
  (*(v0[15] + 8))(v0[16], v0[11]);

  v2 = v0[1];

  return v2();
}

{
  (*(v0[15] + 8))(v0[16], v0[11]);
  v1 = v0[20];
  v2 = v0[16];
  v3 = v0[14];

  v4 = v0[1];

  return v4();
}

uint64_t outlined init with copy of PairingEligibilityInfo(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
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

unint64_t lazy protocol witness table accessor for type PairingPolicyVerifierError and conformance PairingPolicyVerifierError()
{
  result = lazy protocol witness table cache variable for type PairingPolicyVerifierError and conformance PairingPolicyVerifierError;
  if (!lazy protocol witness table cache variable for type PairingPolicyVerifierError and conformance PairingPolicyVerifierError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PairingPolicyVerifierError and conformance PairingPolicyVerifierError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PairingPolicyVerifierError and conformance PairingPolicyVerifierError;
  if (!lazy protocol witness table cache variable for type PairingPolicyVerifierError and conformance PairingPolicyVerifierError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PairingPolicyVerifierError and conformance PairingPolicyVerifierError);
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

uint64_t getEnumTagSinglePayload for PairingValidatorError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PairingValidatorError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t getEnumTag for PairingValidatorError(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for PairingValidatorError(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t dispatch thunk of PairingValidator.validateRequest(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 80);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = dispatch thunk of PairingValidator.ack(_:);

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of PairingValidator.ack(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 88);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = dispatch thunk of PairingValidator.ack(_:);

  return v13(a1, a2, a3, a4);
}

uint64_t getEnumTagSinglePayload for PairingPolicyVerifierError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for PairingPolicyVerifierError(_WORD *result, int a2, int a3)
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

uint64_t dispatch thunk of PairingPolicyVerifier.verifyIfPairingEligibility(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 32);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = dispatch thunk of PairingServiceProxy.reevaluateDependencies(for:);

  return v11(a1, a2, a3);
}

uint64_t one-time initialization function for pairingService()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.pairingService);
  __swift_project_value_buffer(v0, static Logger.pairingService);
  return Logger.init(subsystem:category:)();
}

uint64_t Logger.pairingService.unsafeMutableAddressor()
{
  if (one-time initialization token for pairingService != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v0, static Logger.pairingService);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t static Logger.pairingService.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for pairingService != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static Logger.pairingService);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t PairingConfiguration.identifier.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PairingConfiguration(v1, v26);
  if (v27)
  {
    v8 = *&v26[0];
    v9 = *(*&v26[0] + 16);
    if (v9)
    {
      v21 = a1;
      v25 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 0);
      v10 = v25;
      v20 = v8;
      v11 = v8 + 32;
      do
      {
        outlined init with copy of PairingEligibilityInfo(v11, v22);
        v13 = v23;
        v12 = v24;
        __swift_project_boxed_opaque_existential_1(v22, v23);
        (*(v12 + 8))(v13, v12);
        __swift_destroy_boxed_opaque_existential_1Tm(v22);
        v25 = v10;
        v15 = *(v10 + 16);
        v14 = *(v10 + 24);
        if (v15 >= v14 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v14 > 1, v15 + 1, 1);
          v10 = v25;
        }

        *(v10 + 16) = v15 + 1;
        (*(v4 + 32))(v10 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v15, v7, v3);
        v11 += 40;
        --v9;
      }

      while (v9);

      a1 = v21;
    }

    else
    {

      v10 = MEMORY[0x277D84F90];
    }

    v19 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation4UUIDV_SayAFGTt0g5Tf4g_n(v10);

    *a1 = v19;
    type metadata accessor for DependenciesIdentifier(0);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    outlined init with take of Accessory(v26, v22);
    v16 = v23;
    v17 = v24;
    __swift_project_boxed_opaque_existential_1(v22, v23);
    (*(v17 + 8))(v16, v17);
    type metadata accessor for DependenciesIdentifier(0);
    swift_storeEnumTagMultiPayload();
    return __swift_destroy_boxed_opaque_existential_1Tm(v22);
  }
}

uint64_t PairingConfiguration.dependenciesIdentifier.getter()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PairingConfiguration(v0, v24);
  if (v25)
  {
    v6 = *&v24[0];
    v7 = *(*&v24[0] + 16);
    if (v7)
    {
      v23 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
      v8 = v23;
      v19[1] = v6;
      v9 = v6 + 32;
      do
      {
        outlined init with copy of PairingEligibilityInfo(v9, v20);
        v10 = v21;
        v11 = v22;
        __swift_project_boxed_opaque_existential_1(v20, v21);
        (*(v11 + 8))(v10, v11);
        __swift_destroy_boxed_opaque_existential_1Tm(v20);
        v23 = v8;
        v13 = *(v8 + 16);
        v12 = *(v8 + 24);
        if (v13 >= v12 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v12 > 1, v13 + 1, 1);
          v8 = v23;
        }

        *(v8 + 16) = v13 + 1;
        (*(v2 + 32))(v8 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v13, v5, v1);
        v9 += 40;
        --v7;
      }

      while (v7);
    }

    else
    {

      return MEMORY[0x277D84F90];
    }
  }

  else
  {
    outlined init with take of Accessory(v24, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR);
    v14 = *(v2 + 72);
    v15 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_24AFB0430;
    v16 = v21;
    v17 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    (*(v17 + 8))(v16, v17);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
  }

  return v8;
}

uint64_t DependenciesIdentifier.singleIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *(*(type metadata accessor for DependenciesIdentifier(0) - 8) + 64);
  MEMORY[0x28223BE20]();
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DependenciesIdentifier(v2, v6, type metadata accessor for DependenciesIdentifier);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined destroy of DependenciesIdentifier(v6, type metadata accessor for DependenciesIdentifier);
    v7 = type metadata accessor for UUID();
    return (*(*(v7 - 8) + 56))(a1, 1, 1, v7);
  }

  else
  {
    v9 = type metadata accessor for UUID();
    v10 = *(v9 - 8);
    (*(v10 + 32))(a1, v6, v9);
    return (*(v10 + 56))(a1, 0, 1, v9);
  }
}

uint64_t DependenciesIdentifier.multiIdentifier.getter()
{
  v1 = type metadata accessor for DependenciesIdentifier(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DependenciesIdentifier(v0, v4, type metadata accessor for DependenciesIdentifier);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = *v4;
    v6 = *(*v4 + 16);
    if (v6)
    {
      v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10Foundation4UUIDV_Tt1g5(v6, 0);
      v8 = *(type metadata accessor for UUID() - 8);
      v9 = specialized Sequence._copySequenceContents(initializing:)(&v12, (v7 + ((*(v8 + 80) + 32) & ~*(v8 + 80))), v6, v5);
      result = outlined consume of Set<UUID>.Iterator._Variant();
      if (v9 == v6)
      {
        return v7;
      }

      else
      {
        __break(1u);
      }
    }

    else
    {

      return MEMORY[0x277D84F90];
    }
  }

  else
  {
    outlined destroy of DependenciesIdentifier(v4, type metadata accessor for DependenciesIdentifier);
    return 0;
  }

  return result;
}

char *DependenciesIdentifier.rawValue.getter()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DependenciesIdentifier(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DependenciesIdentifier(v1, v10, type metadata accessor for DependenciesIdentifier);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    goto LABEL_5;
  }

  v11 = *v10;
  v2 = *(*v10 + 16);
  if (!v2)
  {
    v16 = *v10;

    return MEMORY[0x277D84F90];
  }

  v10 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10Foundation4UUIDV_Tt1g5(*(*v10 + 16), 0);
  v6 = specialized Sequence._copySequenceContents(initializing:)(&v19, &v10[(*(v3 + 80) + 32) & ~*(v3 + 80)], v2, v11);
  outlined consume of Set<UUID>.Iterator._Variant();
  if (v6 != v2)
  {
    __break(1u);
LABEL_5:
    v13 = *(v3 + 32);
    v12 = v3 + 32;
    v13(v6, v10, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR);
    v14 = *(v12 + 40);
    v15 = (*(v12 + 48) + 32) & ~*(v12 + 48);
    v10 = swift_allocObject();
    *(v10 + 1) = xmmword_24AFB0430;
    v13(&v10[v15], v6, v2);
  }

  return v10;
}

uint64_t _sSh2eeoiySbShyxG_ABtFZ10Foundation4UUIDV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v46 = &v35 - v11;
  result = MEMORY[0x28223BE20](v10);
  v14 = &v35 - v13;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v15 = 0;
  v16 = *(a1 + 56);
  v35 = a1 + 56;
  v17 = 1 << *(a1 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & v16;
  v20 = (v17 + 63) >> 6;
  v42 = v5 + 32;
  v44 = a2 + 56;
  v45 = v5 + 16;
  v21 = (v5 + 8);
  v36 = v20;
  v37 = &v35 - v13;
  v38 = v5;
  v39 = a1;
  if (v19)
  {
    while (1)
    {
      v22 = __clz(__rbit64(v19));
      v41 = (v19 - 1) & v19;
LABEL_13:
      v25 = *(a1 + 48);
      v43 = *(v5 + 72);
      v26 = *(v5 + 16);
      v26(v14, v25 + v43 * (v22 | (v15 << 6)), v4);
      (*(v5 + 32))(v46, v14, v4);
      v27 = *(a2 + 40);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0]);
      v28 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v29 = -1 << *(a2 + 32);
      v30 = v28 & ~v29;
      if (((*(v44 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
      {
        break;
      }

      v40 = v21 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v31 = a2;
      v32 = ~v29;
      while (1)
      {
        v26(v9, *(v31 + 48) + v30 * v43, v4);
        lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0]);
        v33 = dispatch thunk of static Equatable.== infix(_:_:)();
        v34 = *v21;
        (*v21)(v9, v4);
        if (v33)
        {
          break;
        }

        v30 = (v30 + 1) & v32;
        if (((*(v44 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
        {
          v34(v46, v4);
          return 0;
        }
      }

      result = (v34)(v46, v4);
      a2 = v31;
      v5 = v38;
      a1 = v39;
      v20 = v36;
      v14 = v37;
      v19 = v41;
      if (!v41)
      {
        goto LABEL_8;
      }
    }

    (*v21)(v46, v4);
    return 0;
  }

LABEL_8:
  v23 = v15;
  while (1)
  {
    v15 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v15 >= v20)
    {
      return 1;
    }

    v24 = *(v35 + 8 * v15);
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v41 = (v24 - 1) & v24;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t DependenciesIdentifier.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DependenciesIdentifier(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of DependenciesIdentifier(v2, v12, type metadata accessor for DependenciesIdentifier);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *v12;
    MEMORY[0x24C236B70](1);
    specialized Set.hash(into:)(a1, v13);
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
    MEMORY[0x24C236B70](0);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0]);
    dispatch thunk of Hashable.hash(into:)();
    return (*(v5 + 8))(v8, v4);
  }
}

Swift::Int DependenciesIdentifier.hashValue.getter()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DependenciesIdentifier(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  Hasher.init(_seed:)();
  outlined init with copy of DependenciesIdentifier(v1, v10, type metadata accessor for DependenciesIdentifier);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *v10;
    MEMORY[0x24C236B70](1);
    specialized Set.hash(into:)(v14, v11);
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    MEMORY[0x24C236B70](0);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0]);
    dispatch thunk of Hashable.hash(into:)();
    (*(v3 + 8))(v6, v2);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DependenciesIdentifier(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v13 = (&v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  Hasher.init(_seed:)();
  outlined init with copy of DependenciesIdentifier(v4, v13, type metadata accessor for DependenciesIdentifier);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = *v13;
    MEMORY[0x24C236B70](1);
    specialized Set.hash(into:)(v17, v14);
  }

  else
  {
    (*(v6 + 32))(v10, v13, v5);
    MEMORY[0x24C236B70](0);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0]);
    dispatch thunk of Hashable.hash(into:)();
    (*(v6 + 8))(v10, v5);
  }

  return Hasher._finalize()();
}

uint64_t ObservationStreams.pairingStream.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy10FindMyBase11TransactionC_0aB7Pairing0E16CoordinatorStateOtGMd, &_sScSy10FindMyBase11TransactionC_0aB7Pairing0E16CoordinatorStateOtGMR);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ObservationStreams.analyticsStream.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ObservationStreams(0) + 20);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy10FindMyBase11TransactionC_0aB7Pairing14AnalyticsEventOtGMd, &_sScSy10FindMyBase11TransactionC_0aB7Pairing14AnalyticsEventOtGMR);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ObservationStreams.init(pairingStream:analyticsStream:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy10FindMyBase11TransactionC_0aB7Pairing0E16CoordinatorStateOtGMd, &_sScSy10FindMyBase11TransactionC_0aB7Pairing0E16CoordinatorStateOtGMR);
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = *(type metadata accessor for ObservationStreams(0) + 20);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy10FindMyBase11TransactionC_0aB7Pairing14AnalyticsEventOtGMd, &_sScSy10FindMyBase11TransactionC_0aB7Pairing14AnalyticsEventOtGMR);
  v9 = *(*(v8 - 8) + 32);

  return v9(a3 + v7, a2, v8);
}

uint64_t PairingService.pairingDependencies.getter()
{
  *(v1 + 24) = v0;
  return MEMORY[0x2822009F8](PairingService.pairingDependencies.getter, v0, 0);
}

{
  v1 = *(v0[3] + 112);
  v2 = swift_allocObject();
  v0[4] = v2;
  swift_weakInit();
  v3 = *(MEMORY[0x277D08960] + 4);
  v7 = (*MEMORY[0x277D08960] + MEMORY[0x277D08960]);
  v4 = swift_task_alloc();
  v0[5] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy13FindMyPairing22DependenciesIdentifierOAA09AccessoryD0VGSgMd, &_sSDy13FindMyPairing22DependenciesIdentifierOAA09AccessoryD0VGSgMR);
  *v4 = v0;
  v4[1] = PairingService.pairingDependencies.getter;

  return v7(v0 + 2, &async function pointer to partial apply for closure #1 in PairingService.pairingDependencies.getter, v2, v5);
}

{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v9 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = *(v2 + 24);
    v5 = PairingService.pairingDependencies.getter;
  }

  else
  {
    v7 = *(v2 + 24);
    v6 = *(v2 + 32);

    v5 = PairingService.pairingDependencies.getter;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  MyPairing22DependenciesIdentifierO_AC09AccessoryF0VTt0g5Tf4g_n = *(v0 + 16);
  if (!MyPairing22DependenciesIdentifierO_AC09AccessoryF0VTt0g5Tf4g_n)
  {
    MyPairing22DependenciesIdentifierO_AC09AccessoryF0VTt0g5Tf4g_n = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC13FindMyPairing22DependenciesIdentifierO_AC09AccessoryF0VTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  v2 = *(v0 + 8);

  return v2(MyPairing22DependenciesIdentifierO_AC09AccessoryF0VTt0g5Tf4g_n);
}

{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t closure #1 in PairingService.pairingDependencies.getter(uint64_t a1, uint64_t a2)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return MEMORY[0x2822009F8](closure #1 in PairingService.pairingDependencies.getter, 0, 0);
}

uint64_t closure #1 in PairingService.pairingDependencies.getter()
{
  v1 = *(v0 + 72);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](closure #1 in PairingService.pairingDependencies.getter, Strong, 0);
  }

  else
  {
    **(v0 + 64) = 0;
    v3 = *(v0 + 8);

    return v3();
  }
}

{
  v1 = *(v0 + 80);
  swift_beginAccess();
  *(v0 + 88) = *(v1 + 120);

  return MEMORY[0x2822009F8](closure #1 in PairingService.pairingDependencies.getter, 0, 0);
}

{
  **(v0 + 64) = *(v0 + 88);
  return (*(v0 + 8))();
}

void *PairingService.__allocating_init(proxy:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10FindMyBase13WorkItemQueueC14WarningOptionsVSgMd, &_s10FindMyBase13WorkItemQueueC14WarningOptionsVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v15 - v8;
  v10 = swift_allocObject();
  swift_defaultActor_initialize();
  type metadata accessor for WorkItemQueue();
  v11 = type metadata accessor for WorkItemQueue.WarningOptions();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  UUID.init()();
  v12 = WorkItemQueue.__allocating_init(name:identifier:warningOptions:)();
  v13 = MEMORY[0x277D84F98];
  v10[14] = v12;
  v10[15] = v13;
  v10[16] = a1;
  v10[17] = a2;
  return v10;
}

void *PairingService.init(proxy:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10FindMyBase13WorkItemQueueC14WarningOptionsVSgMd, &_s10FindMyBase13WorkItemQueueC14WarningOptionsVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v15 - v9;
  swift_defaultActor_initialize();
  type metadata accessor for WorkItemQueue();
  v11 = type metadata accessor for WorkItemQueue.WarningOptions();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  UUID.init()();
  v12 = WorkItemQueue.__allocating_init(name:identifier:warningOptions:)();
  v13 = MEMORY[0x277D84F98];
  v2[14] = v12;
  v2[15] = v13;
  v2[16] = a1;
  v2[17] = a2;
  return v2;
}

uint64_t PairingService.pairAccessories(_:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[24] = a3;
  v4[25] = v3;
  v4[22] = a1;
  v4[23] = a2;
  v4[26] = *v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy10FindMyBase11TransactionC_0aB7Pairing14AnalyticsEventOtGMd, &_sScSy10FindMyBase11TransactionC_0aB7Pairing14AnalyticsEventOtGMR);
  v4[27] = v5;
  v6 = *(v5 - 8);
  v4[28] = v6;
  v7 = *(v6 + 64) + 15;
  v4[29] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy10FindMyBase11TransactionC_0aB7Pairing0E16CoordinatorStateOtGMd, &_sScSy10FindMyBase11TransactionC_0aB7Pairing0E16CoordinatorStateOtGMR);
  v4[30] = v8;
  v9 = *(v8 - 8);
  v4[31] = v9;
  v10 = *(v9 + 64) + 15;
  v4[32] = swift_task_alloc();
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s13FindMyPairing0C7ContextOSgMd, &_s13FindMyPairing0C7ContextOSgMR) - 8);
  v4[33] = v11;
  v4[34] = *(v11 + 64);
  v4[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](PairingService.pairAccessories(_:context:), v3, 0);
}

uint64_t PairingService.pairAccessories(_:context:)()
{
  v1 = v0[25];
  type metadata accessor for WorkItemQueue();
  v0[36] = *(v1 + 112);
  if (static WorkItemQueue.called(on:)())
  {
    lazy protocol witness table accessor for type PairingService.Error and conformance PairingService.Error();
    swift_allocError();
    *v2 = 2;
    swift_willThrow();
    v3 = v0[35];
    v4 = v0[32];
    v5 = v0[29];

    v6 = v0[1];

    return v6();
  }

  else
  {
    v9 = v0[34];
    v8 = v0[35];
    v10 = v0[33];
    v11 = v0[25];
    v20 = v0[26];
    v12 = v0[23];
    v13 = v0[24];
    v14 = swift_allocObject();
    swift_weakInit();
    outlined init with copy of PairingContext?(v13, v8, &_s13FindMyPairing0C7ContextOSgMd, &_s13FindMyPairing0C7ContextOSgMR);
    v15 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v16 = swift_allocObject();
    v0[37] = v16;
    *(v16 + 16) = v14;
    *(v16 + 24) = v12;
    outlined init with take of PairingContext?(v8, v16 + v15, &_s13FindMyPairing0C7ContextOSgMd, &_s13FindMyPairing0C7ContextOSgMR);
    *(v16 + ((v9 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v20;
    v17 = *(MEMORY[0x277D08960] + 4);
    v21 = (*MEMORY[0x277D08960] + MEMORY[0x277D08960]);

    v18 = swift_task_alloc();
    v0[38] = v18;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13FindMyPairing0C11Coordinator_p_AA0C13ConfigurationOtMd, &_s13FindMyPairing0C11Coordinator_p_AA0C13ConfigurationOtMR);
    *v18 = v0;
    v18[1] = PairingService.pairAccessories(_:context:);

    return v21(v0 + 2, &async function pointer to partial apply for closure #1 in PairingService.pairAccessories(_:context:), v16, v19);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 304);
  v9 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v4 = *(v2 + 200);
    v5 = PairingService.pairAccessories(_:context:);
  }

  else
  {
    v6 = *(v2 + 296);
    v7 = *(v2 + 200);

    v5 = PairingService.pairAccessories(_:context:);
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v1 = *(v0 + 24);
  *(v0 + 320) = *(v0 + 16);
  *(v0 + 328) = v1;
  v2 = *(v0 + 48);
  *(v0 + 80) = *(v0 + 32);
  *(v0 + 96) = v2;
  *(v0 + 105) = *(v0 + 57);
  ObjectType = swift_getObjectType();
  *(v0 + 336) = ObjectType;
  v4 = *(v1 + 136);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 344) = v6;
  *v6 = v0;
  v6[1] = PairingService.pairAccessories(_:context:);
  v7 = *(v0 + 256);

  return v9(v7, ObjectType, v1);
}

{
  v2 = *(*v1 + 344);
  v3 = *v1;
  v3[44] = v0;

  if (v0)
  {
    v4 = v3[25];

    return MEMORY[0x2822009F8](PairingService.pairAccessories(_:context:), v4, 0);
  }

  else
  {
    v12 = (v3[41] + 144);
    v13 = (*v12 + **v12);
    v5 = (*v12)[1];
    v6 = swift_task_alloc();
    v3[45] = v6;
    *v6 = v3;
    v6[1] = PairingService.pairAccessories(_:context:);
    v8 = v3[41];
    v7 = v3[42];
    v9 = v3[40];
    v10 = v3[29];

    return v13(v10, v7, v8);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 360);
  v4 = *v1;
  *(*v1 + 368) = v0;

  v5 = *(v2 + 200);
  if (v0)
  {
    v6 = PairingService.pairAccessories(_:context:);
  }

  else
  {
    v6 = PairingService.pairAccessories(_:context:);
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  v1 = *(v0 + 320);
  v2 = *(v0 + 288);
  v4 = *(v0 + 248);
  v3 = *(v0 + 256);
  v5 = *(v0 + 232);
  v15 = *(v0 + 240);
  v6 = *(v0 + 224);
  v16 = *(v0 + 216);
  v17 = *(v0 + 280);
  v7 = *(v0 + 200);
  v8 = *(v0 + 176);
  v9 = swift_allocObject();
  swift_weakInit();
  outlined init with copy of PairingConfiguration(v0 + 80, v0 + 128);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = *(v0 + 144);
  *(v10 + 24) = *(v0 + 128);
  *(v10 + 40) = v11;
  *(v10 + 49) = *(v0 + 153);

  dispatch thunk of WorkItemQueue.enqueue(_:)();

  swift_unknownObjectRelease();
  outlined destroy of PairingConfiguration(v0 + 80);

  (*(v4 + 32))(v8, v3, v15);
  v12 = type metadata accessor for ObservationStreams(0);
  (*(v6 + 32))(v8 + *(v12 + 20), v5, v16);

  v13 = *(v0 + 8);

  return v13();
}

{
  v1 = v0[37];

  v2 = v0[39];
  v3 = v0[35];
  v4 = v0[32];
  v5 = v0[29];

  v6 = v0[1];

  return v6();
}

{
  v1 = v0[40];
  swift_unknownObjectRelease();
  outlined destroy of PairingConfiguration((v0 + 10));
  v2 = v0[44];
  v3 = v0[35];
  v4 = v0[32];
  v5 = v0[29];

  v6 = v0[1];

  return v6();
}

{
  v1 = v0[40];
  v3 = v0[31];
  v2 = v0[32];
  v4 = v0[30];
  swift_unknownObjectRelease();
  (*(v3 + 8))(v2, v4);
  outlined destroy of PairingConfiguration((v0 + 10));
  v5 = v0[46];
  v6 = v0[35];
  v7 = v0[32];
  v8 = v0[29];

  v9 = v0[1];

  return v9();
}

uint64_t closure #1 in PairingService.pairAccessories(_:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a3;
  v4[14] = a4;
  v4[11] = a1;
  v4[12] = a2;
  return MEMORY[0x2822009F8](closure #1 in PairingService.pairAccessories(_:context:), 0, 0);
}

uint64_t closure #1 in PairingService.pairAccessories(_:context:)()
{
  v1 = v0[12];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[15] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[16] = v3;
    *v3 = v0;
    v3[1] = closure #1 in PairingService.pairAccessories(_:context:);
    v4 = v0[13];

    return PairingService._configuration(for:)((v0 + 2), v4);
  }

  else
  {
    lazy protocol witness table accessor for type PairingService.Error and conformance PairingService.Error();
    swift_allocError();
    *v6 = 3;
    swift_willThrow();
    v7 = v0[1];

    return v7();
  }
}

{
  v2 = *(*v1 + 128);
  v3 = *v1;
  v3[17] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](closure #1 in PairingService.pairAccessories(_:context:), 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[18] = v4;
    *v4 = v3;
    v4[1] = closure #1 in PairingService.pairAccessories(_:context:);
    v5 = v3[14];
    v6 = v3[15];

    return PairingService._coordinator(for:context:)((v3 + 2), v5);
  }
}

{
  v1 = *(v0 + 120);
  v2 = *(v0 + 88);
  v7 = *(v0 + 160);

  *v2 = vextq_s8(v7, v7, 8uLL);
  v3 = *(v0 + 16);
  v4 = *(v0 + 32);
  *(v2 + 41) = *(v0 + 41);
  *(v2 + 16) = v3;
  *(v2 + 32) = v4;
  v5 = *(v0 + 8);

  return v5();
}

{
  v1 = v0[15];

  v2 = v0[17];
  v3 = v0[1];

  return v3();
}

{
  v1 = v0[15];

  outlined destroy of PairingConfiguration((v0 + 2));
  v2 = v0[19];
  v3 = v0[1];

  return v3();
}

uint64_t closure #1 in PairingService.pairAccessories(_:context:)(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 144);
  v8 = *v3;
  *(*v3 + 152) = v2;

  if (v2)
  {
    v9 = closure #1 in PairingService.pairAccessories(_:context:);
  }

  else
  {
    *(v6 + 160) = a2;
    *(v6 + 168) = a1;
    v9 = closure #1 in PairingService.pairAccessories(_:context:);
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t PairingService._configuration(for:)(uint64_t a1, uint64_t a2)
{
  v3[39] = a2;
  v3[40] = v2;
  v3[38] = a1;
  v4 = type metadata accessor for AccessoryDependencies();
  v3[41] = v4;
  v5 = *(v4 - 8);
  v3[42] = v5;
  v6 = *(v5 + 64) + 15;
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v3[45] = v7;
  v8 = *(v7 - 8);
  v3[46] = v8;
  v9 = *(v8 + 64) + 15;
  v3[47] = swift_task_alloc();
  v3[48] = swift_task_alloc();
  v3[49] = swift_task_alloc();
  v10 = type metadata accessor for DependenciesIdentifier(0);
  v3[50] = v10;
  v11 = *(v10 - 8);
  v3[51] = v11;
  v12 = *(v11 + 64) + 15;
  v3[52] = swift_task_alloc();
  v3[53] = swift_task_alloc();
  v3[54] = swift_task_alloc();
  v3[55] = swift_task_alloc();

  return MEMORY[0x2822009F8](PairingService._configuration(for:), v2, 0);
}

uint64_t PairingService._configuration(for:)()
{
  v139 = v0;
  v1 = *(v0 + 320);
  type metadata accessor for WorkItemQueue();
  v2 = *(v1 + 112);
  if ((static WorkItemQueue.called(on:)() & 1) == 0)
  {
    lazy protocol witness table accessor for type PairingService.Error and conformance PairingService.Error();
    swift_allocError();
    v43 = 2;
LABEL_36:
    *v42 = v43;
    swift_willThrow();
    goto LABEL_37;
  }

  v133 = *(v0 + 408);
  v3 = *(v0 + 368);
  v4 = *(v0 + 320);
  swift_beginAccess();
  v127 = v4;
  v128 = v3;
  v5 = *(v4 + 120);
  v6 = v5 + 64;
  v7 = -1;
  v8 = -1 << *(v5 + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & *(v5 + 64);
  v10 = (63 - v8) >> 6;
  v136 = v5;
  swift_bridgeObjectRetain_n();
  v11 = 0;
  v12 = MEMORY[0x277D84F90];
  v135 = v0;
  while (v9)
  {
LABEL_11:
    v15 = *(v0 + 432);
    v14 = *(v0 + 440);
    v16 = *(v0 + 400);
    outlined init with copy of DependenciesIdentifier(*(v136 + 48) + *(v133 + 72) * (__clz(__rbit64(v9)) | (v11 << 6)), v14, type metadata accessor for DependenciesIdentifier);
    outlined init with copy of DependenciesIdentifier(v14, v15, type metadata accessor for DependenciesIdentifier);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v18 = *(v0 + 432);
    if (EnumCaseMultiPayload != 1)
    {
      v26 = *(v0 + 392);
      v27 = *(v0 + 360);
      v28 = *(v128 + 32);
      v28(v26, v18, v27);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR);
      v29 = *(v128 + 72);
      v30 = (*(v128 + 80) + 32) & ~*(v128 + 80);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_24AFB0430;
      v28(v22 + v30, v26, v27);
LABEL_21:
      v0 = v135;
      goto LABEL_22;
    }

    v19 = *v18;
    v20 = *(*v18 + 16);
    if (v20)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR);
      v21 = *(v128 + 72);
      v0 = (*(v128 + 80) + 32) & ~*(v128 + 80);
      v22 = swift_allocObject();
      v23 = _swift_stdlib_malloc_size(v22);
      if (!v21)
      {
        goto LABEL_83;
      }

      if (v23 - v0 == 0x8000000000000000 && v21 == -1)
      {
        goto LABEL_85;
      }

      *(v22 + 16) = v20;
      *(v22 + 24) = 2 * ((v23 - v0) / v21);
      v25 = specialized Sequence._copySequenceContents(initializing:)(&v138, (v22 + v0), v20, v19);
      outlined consume of Set<UUID>.Iterator._Variant();
      if (v25 != v20)
      {
        goto LABEL_84;
      }

      goto LABEL_21;
    }

    v41 = *v18;

    v22 = MEMORY[0x277D84F90];
LABEL_22:
    outlined destroy of DependenciesIdentifier(*(v0 + 440), type metadata accessor for DependenciesIdentifier);
    v31 = *(v22 + 16);
    v0 = v12[2];
    v32 = v0 + v31;
    if (__OFADD__(v0, v31))
    {
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      swift_once();
LABEL_68:
      v111 = type metadata accessor for Logger();
      __swift_project_value_buffer(v111, static Logger.pairingService);
      v112 = Logger.logObject.getter();
      v113 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v112, v113))
      {
        v114 = swift_slowAlloc();
        *v114 = 0;
        _os_log_impl(&dword_24AF48000, v112, v113, "Multiple detections for ongoing pairing, can't proceed, the result is uncertain.", v114, 2u);
        MEMORY[0x24C237030](v114, -1, -1);
      }

      lazy protocol witness table accessor for type PairingService.Error and conformance PairingService.Error();
      swift_allocError();
      v43 = 4;
      goto LABEL_36;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v32 > v12[3] >> 1)
    {
      if (v0 <= v32)
      {
        v34 = v0 + v31;
      }

      else
      {
        v34 = v0;
      }

      v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v34, 1, v12, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR, MEMORY[0x277CC95F0]);
    }

    v0 = v135;
    v9 &= v9 - 1;
    if (*(v22 + 16))
    {
      v35 = v12[2];
      if ((v12[3] >> 1) - v35 < v31)
      {
        goto LABEL_81;
      }

      v36 = v135[45];
      v37 = v12 + ((*(v128 + 80) + 32) & ~*(v128 + 80)) + *(v128 + 72) * v35;
      swift_arrayInitWithCopy();

      if (v31)
      {
        v38 = v12[2];
        v39 = __OFADD__(v38, v31);
        v40 = v38 + v31;
        if (v39)
        {
          goto LABEL_82;
        }

        v12[2] = v40;
      }
    }

    else
    {

      if (v31)
      {
        goto LABEL_80;
      }
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_79;
    }

    if (v13 >= v10)
    {
      break;
    }

    v9 = *(v6 + 8 * v13);
    ++v11;
    if (v9)
    {
      v11 = v13;
      goto LABEL_11;
    }
  }

  v54 = *(v0 + 312);

  v55 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation4UUIDV_SayAFGTt0g5Tf4g_n(v12);

  v130 = *(v54 + 16);
  if (v130)
  {
    v56 = 0;
    v57 = *(v0 + 368);
    v129 = *(v0 + 312) + 32;
    v137 = v55 + 56;
    v134 = (v57 + 16);
    v58 = (v57 + 8);
    v59 = MEMORY[0x277D84F90];
    do
    {
      v61 = *(v0 + 384);
      outlined init with copy of PairingEligibilityInfo(v129 + 40 * v56, v0 + 160);
      v62 = *(v0 + 184);
      v63 = *(v0 + 192);
      __swift_project_boxed_opaque_existential_1((v0 + 160), v62);
      (*(v63 + 8))(v62, v63);
      v131 = v56;
      v132 = v59;
      if (*(v55 + 16) && (v64 = *(v0 + 384), v65 = *(v0 + 360), v66 = *(v55 + 40), lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0]), v67 = dispatch thunk of Hashable._rawHashValue(seed:)(), v68 = -1 << *(v55 + 32), v69 = v67 & ~v68, ((*(v137 + ((v69 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v69) & 1) != 0))
      {
        v70 = ~v68;
        v71 = *(v128 + 72);
        v72 = *v134;
        while (1)
        {
          v73 = *(v0 + 392);
          v74 = *(v0 + 360);
          v72(v73, *(v55 + 48) + v69 * v71, v74);
          lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0]);
          v75 = dispatch thunk of static Equatable.== infix(_:_:)();
          v76 = *v58;
          (*v58)(v73, v74);
          if (v75)
          {
            break;
          }

          v69 = (v69 + 1) & v70;
          v0 = v135;
          if (((*(v137 + ((v69 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v69) & 1) == 0)
          {
            goto LABEL_47;
          }
        }

        v76(v135[48], v135[45]);
        v0 = v135;
        __swift_destroy_boxed_opaque_existential_1Tm(v135 + 20);
        v60 = v131;
        v59 = v132;
      }

      else
      {
LABEL_47:
        (*v58)(*(v0 + 384), *(v0 + 360));
        outlined init with take of Accessory((v0 + 160), v0 + 200);
        v59 = v132;
        v77 = swift_isUniquelyReferenced_nonNull_native();
        v138 = v132;
        if ((v77 & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v132 + 16) + 1, 1);
          v59 = v138;
        }

        v79 = *(v59 + 16);
        v78 = *(v59 + 24);
        v60 = v131;
        if (v79 >= v78 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v78 > 1), v79 + 1, 1);
          v59 = v138;
        }

        *(v59 + 16) = v79 + 1;
        outlined init with take of Accessory((v0 + 200), v59 + 40 * v79 + 32);
      }

      v56 = v60 + 1;
    }

    while (v56 != v130);
  }

  else
  {
    v59 = MEMORY[0x277D84F90];
  }

  v80 = *(v59 + 16);
  if (v80)
  {
    if (v80 == 1)
    {
      v81 = *(v0 + 304);
      outlined init with copy of PairingEligibilityInfo(v59 + 32, v0 + 240);

      outlined init with take of Accessory((v0 + 240), v81);
      *(v81 + 40) = 0;
    }

    else
    {
      v101 = *(v0 + 304);
      *v101 = v59;
      *(v101 + 40) = 1;
    }

    v103 = *(v0 + 432);
    v102 = *(v0 + 440);
    v105 = *(v0 + 416);
    v104 = *(v0 + 424);
    v107 = *(v0 + 384);
    v106 = *(v0 + 392);
    v108 = *(v0 + 376);
    v110 = *(v0 + 344);
    v109 = *(v0 + 352);

    v53 = *(v0 + 8);
    goto LABEL_64;
  }

  if (v130 != 1)
  {

    if (one-time initialization token for pairingService != -1)
    {
      goto LABEL_86;
    }

    goto LABEL_68;
  }

  v82 = *(v0 + 424);
  outlined init with copy of PairingEligibilityInfo(*(v0 + 312) + 32, v0 + 16);
  *(v0 + 56) = 0;
  PairingConfiguration.identifier.getter(v82);
  v83 = *(v127 + 120);
  if (*(v83 + 16))
  {
    v84 = *(v0 + 424);
    v85 = *(v127 + 120);

    v86 = specialized __RawDictionaryStorage.find<A>(_:)(v84);
    if (v87)
    {
      v88 = v86;
      v89 = *(v0 + 424);
      v91 = *(v0 + 344);
      v90 = *(v0 + 352);
      v92 = *(v0 + 328);
      v93 = *(v0 + 336);

      outlined init with copy of DependenciesIdentifier(*(v83 + 56) + *(v93 + 72) * v88, v91, type metadata accessor for AccessoryDependencies);
      outlined destroy of DependenciesIdentifier(v89, type metadata accessor for DependenciesIdentifier);

      outlined init with take of AccessoryDependencies(v91, v90, type metadata accessor for AccessoryDependencies);
      v94 = v90 + *(v92 + 24);
      Date.timeIntervalSinceNow.getter();
      *(v0 + 448) = static Duration.seconds(_:)();
      *(v0 + 456) = v95;
      *(v0 + 464) = *v90;
      v96 = v90[1];
      *(v0 + 472) = v96;
      *(v0 + 480) = swift_getObjectType();
      *(v0 + 57) = 4;
      v97 = *(v96 + 168);
      v96 += 168;
      *(v0 + 488) = v97;
      *(v0 + 496) = v96 & 0xFFFFFFFFFFFFLL | 0x1CA6000000000000;
      v98 = *(v96 - 160);
      v100 = dispatch thunk of Actor.unownedExecutor.getter();
      *(v0 + 504) = v100;
      *(v0 + 512) = v99;

      return MEMORY[0x2822009F8](PairingService._configuration(for:), v100, v99);
    }
  }

  outlined destroy of DependenciesIdentifier(*(v0 + 424), type metadata accessor for DependenciesIdentifier);
  if (one-time initialization token for pairingService != -1)
  {
    swift_once();
  }

  v115 = type metadata accessor for Logger();
  __swift_project_value_buffer(v115, static Logger.pairingService);

  v116 = Logger.logObject.getter();
  v117 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v116, v117))
  {
    v118 = *(v0 + 360);
    v119 = swift_slowAlloc();
    v120 = swift_slowAlloc();
    v138 = v120;
    *v119 = 136446210;

    _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation4UUIDV_SayAFGTt0g5Tf4g_n(MEMORY[0x277D84F90]);

    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0]);
    v121 = Set.description.getter();
    v123 = v122;

    v124 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v121, v123, &v138);

    *(v119 + 4) = v124;
    _os_log_impl(&dword_24AF48000, v116, v117, "Can't find pairing dependencies for %{public}s, the result is uncertain.", v119, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v120);
    MEMORY[0x24C237030](v120, -1, -1);
    MEMORY[0x24C237030](v119, -1, -1);
  }

  else
  {
  }

  lazy protocol witness table accessor for type PairingService.Error and conformance PairingService.Error();
  swift_allocError();
  *v125 = 4;
  swift_willThrow();
  outlined destroy of PairingConfiguration(v0 + 16);
LABEL_37:
  v45 = *(v0 + 432);
  v44 = *(v0 + 440);
  v47 = *(v0 + 416);
  v46 = *(v0 + 424);
  v49 = *(v0 + 384);
  v48 = *(v0 + 392);
  v50 = *(v0 + 376);
  v52 = *(v0 + 344);
  v51 = *(v0 + 352);

  v53 = *(v0 + 8);
LABEL_64:

  return v53();
}

{
  v1 = *(v0 + 496);
  v2 = *(v0 + 464);
  v3 = *(v0 + 320);
  *(v0 + 520) = (*(v0 + 488))(v0 + 57, *(v0 + 480), *(v0 + 472));
  *(v0 + 528) = v4;
  *(v0 + 59) = v5;

  return MEMORY[0x2822009F8](PairingService._configuration(for:), v3, 0);
}

{
  if (*(v0 + 59))
  {
    v1 = static Duration.seconds(_:)();
  }

  else
  {
    v2 = *(v0 + 528);
    v1 = *(v0 + 520);
  }

  *(v0 + 544) = v2;
  *(v0 + 536) = v1;
  *(v0 + 58) = 0;
  v3 = *(v0 + 504);
  v4 = *(v0 + 512);

  return MEMORY[0x2822009F8](PairingService._configuration(for:), v3, v4);
}

{
  v1 = *(v0 + 496);
  v2 = *(v0 + 464);
  v3 = *(v0 + 320);
  *(v0 + 552) = (*(v0 + 488))(v0 + 58, *(v0 + 480), *(v0 + 472));
  *(v0 + 560) = v4;
  *(v0 + 60) = v5;

  return MEMORY[0x2822009F8](PairingService._configuration(for:), v3, 0);
}

{
  v50 = v0;
  if (*(v0 + 60))
  {
    static Duration.seconds(_:)();
  }

  else
  {
    v1 = *(v0 + 560);
    v2 = *(v0 + 552);
  }

  v3 = *(v0 + 544);
  v4 = *(v0 + 536);
  v5 = *(v0 + 448);
  v6 = *(v0 + 456);
  static Duration.+ infix(_:_:)();
  static Duration.+ infix(_:_:)();
  if (static Duration.< infix(_:_:)())
  {
    if (one-time initialization token for pairingService != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.pairingService);
    outlined init with copy of PairingConfiguration(v0 + 16, v0 + 112);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v11 = *(v0 + 448);
      v10 = *(v0 + 456);
      v12 = *(v0 + 360);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v49[0] = v14;
      *v13 = 136446466;
      PairingConfiguration.dependenciesIdentifier.getter();
      v15 = MEMORY[0x24C236860]();
      v17 = v16;

      outlined destroy of PairingConfiguration(v0 + 112);
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, v49);

      *(v13 + 4) = v18;
      *(v13 + 12) = 2082;
      v19 = Duration.description.getter();
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, v49);

      *(v13 + 14) = v21;
      _os_log_impl(&dword_24AF48000, v8, v9, "Cleanup pairing for %{public}s, because it's stuck for %{public}s.", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C237030](v14, -1, -1);
      MEMORY[0x24C237030](v13, -1, -1);
    }

    else
    {

      outlined destroy of PairingConfiguration(v0 + 112);
    }

    v32 = swift_task_alloc();
    *(v0 + 568) = v32;
    *v32 = v0;
    v32[1] = PairingService._configuration(for:);
    v33 = *(v0 + 472);
    v34 = *(v0 + 480);
    v35 = *(v0 + 464);

    return PairingCoordinator.forceStopPairing()(v34, v33);
  }

  else
  {
    if (one-time initialization token for pairingService != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.pairingService);
    outlined init with copy of PairingConfiguration(v0 + 16, v0 + 64);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = *(v0 + 360);
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v49[0] = v27;
      *v26 = 136446210;
      PairingConfiguration.dependenciesIdentifier.getter();
      v28 = MEMORY[0x24C236860]();
      v30 = v29;

      outlined destroy of PairingConfiguration(v0 + 64);
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, v49);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_24AF48000, v23, v24, "Pairing for %{public}s already started!", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x24C237030](v27, -1, -1);
      MEMORY[0x24C237030](v26, -1, -1);
    }

    else
    {

      outlined destroy of PairingConfiguration(v0 + 64);
    }

    v37 = *(v0 + 352);
    lazy protocol witness table accessor for type PairingService.Error and conformance PairingService.Error();
    swift_allocError();
    *v38 = 0;
    swift_willThrow();
    outlined destroy of PairingConfiguration(v0 + 16);
    outlined destroy of DependenciesIdentifier(v37, type metadata accessor for AccessoryDependencies);
    v40 = *(v0 + 432);
    v39 = *(v0 + 440);
    v42 = *(v0 + 416);
    v41 = *(v0 + 424);
    v44 = *(v0 + 384);
    v43 = *(v0 + 392);
    v45 = *(v0 + 376);
    v47 = *(v0 + 344);
    v46 = *(v0 + 352);

    v48 = *(v0 + 8);

    return v48();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 568);
  v4 = *v1;
  *(*v1 + 576) = v0;

  v5 = *(v2 + 320);
  if (v0)
  {
    v6 = PairingService._configuration(for:);
  }

  else
  {
    v6 = PairingService._configuration(for:);
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  PairingConfiguration.identifier.getter(*(v0 + 416));
  v1 = swift_task_alloc();
  *(v0 + 584) = v1;
  *v1 = v0;
  v1[1] = PairingService._configuration(for:);
  v2 = *(v0 + 416);
  v3 = *(v0 + 320);

  return PairingService._removeCoordinator(for:)(v2);
}

{
  v1 = *(*v0 + 584);
  v2 = *(*v0 + 416);
  v3 = *(*v0 + 320);
  v5 = *v0;

  outlined destroy of DependenciesIdentifier(v2, type metadata accessor for DependenciesIdentifier);

  return MEMORY[0x2822009F8](PairingService._configuration(for:), v3, 0);
}

{
  v1 = *(v0 + 304);
  outlined destroy of DependenciesIdentifier(*(v0 + 352), type metadata accessor for AccessoryDependencies);
  v2 = *(v0 + 41);
  v3 = *(v0 + 32);
  *v1 = *(v0 + 16);
  v1[1] = v3;
  *(v1 + 25) = v2;
  v5 = *(v0 + 432);
  v4 = *(v0 + 440);
  v7 = *(v0 + 416);
  v6 = *(v0 + 424);
  v9 = *(v0 + 384);
  v8 = *(v0 + 392);
  v10 = *(v0 + 376);
  v12 = *(v0 + 344);
  v11 = *(v0 + 352);

  v13 = *(v0 + 8);

  return v13();
}

{
  v1 = v0[44];
  outlined destroy of PairingConfiguration((v0 + 2));
  outlined destroy of DependenciesIdentifier(v1, type metadata accessor for AccessoryDependencies);
  v2 = v0[72];
  v4 = v0[54];
  v3 = v0[55];
  v6 = v0[52];
  v5 = v0[53];
  v8 = v0[48];
  v7 = v0[49];
  v9 = v0[47];
  v11 = v0[43];
  v10 = v0[44];

  v12 = v0[1];

  return v12();
}

uint64_t PairingService._coordinator(for:context:)(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s13FindMyPairing21AccessoryDependenciesVSgMd, &_s13FindMyPairing21AccessoryDependenciesVSgMR) - 8) + 64) + 15;
  v3[14] = swift_task_alloc();
  v5 = *(*(type metadata accessor for DependenciesIdentifier(0) - 8) + 64) + 15;
  v3[15] = swift_task_alloc();
  v6 = type metadata accessor for AccessoryDependencies();
  v3[16] = v6;
  v7 = *(v6 - 8);
  v3[17] = v7;
  v8 = *(v7 + 64) + 15;
  v3[18] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy10FindMyBase11TransactionC_0aB7Pairing0E16CoordinatorStateOtGMd, &_sScSy10FindMyBase11TransactionC_0aB7Pairing0E16CoordinatorStateOtGMR);
  v3[19] = v9;
  v10 = *(v9 - 8);
  v3[20] = v10;
  v11 = *(v10 + 64) + 15;
  v3[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](PairingService._coordinator(for:context:), v2, 0);
}

{
  v4 = *(*v3 + 176);
  v5 = *v3;
  v5[23] = a1;
  v5[24] = a2;

  if (v2)
  {
    v6 = v5[21];
    v7 = v5[18];
    v8 = v5[14];
    v9 = v5[15];

    v10 = v5[1];

    return v10();
  }

  else
  {
    v12 = v5[13];

    return MEMORY[0x2822009F8](PairingService._coordinator(for:context:), v12, 0);
  }
}

uint64_t PairingService._coordinator(for:context:)()
{
  v1 = v0[13];
  type metadata accessor for WorkItemQueue();
  v2 = *(v1 + 112);
  if (static WorkItemQueue.called(on:)())
  {
    v3 = v0[13];
    v5 = *(v3 + 128);
    v4 = *(v3 + 136);
    ObjectType = swift_getObjectType();
    v7 = *(v4 + 16);
    v19 = (v7 + *v7);
    v8 = v7[1];
    v9 = swift_task_alloc();
    v0[22] = v9;
    *v9 = v0;
    v9[1] = PairingService._coordinator(for:context:);
    v11 = v0[11];
    v10 = v0[12];

    return v19(v11, v10, ObjectType, v4);
  }

  else
  {
    lazy protocol witness table accessor for type PairingService.Error and conformance PairingService.Error();
    swift_allocError();
    *v13 = 2;
    swift_willThrow();
    v14 = v0[21];
    v15 = v0[18];
    v17 = v0[14];
    v16 = v0[15];

    v18 = v0[1];

    return v18();
  }
}

{
  v1 = v0[23];
  v11 = v0[24];
  ObjectType = swift_getObjectType();
  (*(v11 + 160))();
  v3 = *(v11 + 136);
  v10 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[25] = v5;
  *v5 = v0;
  v5[1] = PairingService._coordinator(for:context:);
  v7 = v0[23];
  v6 = v0[24];
  v8 = v0[21];

  return v10(v8, ObjectType, v6);
}

{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *v1;
  *(*v1 + 208) = v0;

  v5 = *(v2 + 104);
  if (v0)
  {
    v6 = PairingService._coordinator(for:context:);
  }

  else
  {
    v6 = PairingService._coordinator(for:context:);
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  v44 = v0;
  v1 = *(v0 + 144);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);
  v5 = *(v0 + 112);
  v4 = *(v0 + 120);
  v6 = *(v0 + 104);
  v7 = *(v0 + 88);
  v41 = *(v0 + 184);
  (*(*(v0 + 160) + 16))(&v1[*(v2 + 20)], *(v0 + 168), *(v0 + 152));
  *v1 = v41;
  v8 = *(v2 + 24);
  swift_unknownObjectRetain();
  Date.init()();
  PairingConfiguration.identifier.getter(v4);
  outlined init with copy of DependenciesIdentifier(v1, v5, type metadata accessor for AccessoryDependencies);
  (*(v3 + 56))(v5, 0, 1, v2);
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v5, v4);
  swift_endAccess();
  if (one-time initialization token for pairingService != -1)
  {
    swift_once();
  }

  v9 = *(v0 + 104);
  v10 = *(v0 + 88);
  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.pairingService);
  outlined init with copy of PairingConfiguration(v10, v0 + 16);
  swift_retain_n();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  v14 = os_log_type_enabled(v12, v13);
  v16 = *(v0 + 160);
  v15 = *(v0 + 168);
  v18 = *(v0 + 144);
  v17 = *(v0 + 152);
  v19 = *(v0 + 104);
  if (v14)
  {
    v20 = swift_slowAlloc();
    v38 = v6;
    v21 = swift_slowAlloc();
    v43 = v21;
    *v20 = 136446466;
    v42 = v15;
    v22 = PairingConfiguration.dependenciesIdentifier.getter();
    v23 = type metadata accessor for UUID();
    v39 = v18;
    v40 = v17;
    v24 = MEMORY[0x24C236860](v22, v23);
    v26 = v25;

    outlined destroy of PairingConfiguration(v0 + 16);
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v43);

    *(v20 + 4) = v27;
    *(v20 + 12) = 2050;
    v28 = *(*(v38 + 120) + 16);

    *(v20 + 14) = v28;

    _os_log_impl(&dword_24AF48000, v12, v13, "New coordinator added for %{public}s, coordinators count = %{public}ld", v20, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    MEMORY[0x24C237030](v21, -1, -1);
    MEMORY[0x24C237030](v20, -1, -1);

    outlined destroy of DependenciesIdentifier(v39, type metadata accessor for AccessoryDependencies);
    (*(v16 + 8))(v42, v40);
  }

  else
  {
    v29 = *(v0 + 104);

    outlined destroy of PairingConfiguration(v0 + 16);
    outlined destroy of DependenciesIdentifier(v18, type metadata accessor for AccessoryDependencies);
    (*(v16 + 8))(v15, v17);
  }

  v30 = *(v0 + 168);
  v31 = *(v0 + 144);
  v33 = *(v0 + 112);
  v32 = *(v0 + 120);

  v34 = *(v0 + 8);
  v35 = *(v0 + 184);
  v36 = *(v0 + 192);

  return v34(v35, v36);
}

{
  v1 = v0[23];
  swift_unknownObjectRelease();
  v2 = v0[26];
  v3 = v0[21];
  v4 = v0[18];
  v6 = v0[14];
  v5 = v0[15];

  v7 = v0[1];

  return v7();
}

uint64_t closure #2 in PairingService.pairAccessories(_:context:)(uint64_t a1, uint64_t a2)
{
  v2[20] = a1;
  v2[21] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v2[22] = swift_task_alloc();
  v4 = *(*(type metadata accessor for DependenciesIdentifier(0) - 8) + 64) + 15;
  v2[23] = swift_task_alloc();
  v5 = *(type metadata accessor for AccessoryDependencies() - 8);
  v2[24] = v5;
  v2[25] = *(v5 + 64);
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in PairingService.pairAccessories(_:context:), 0, 0);
}

uint64_t closure #2 in PairingService.pairAccessories(_:context:)()
{
  v1 = *(v0 + 160);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 232) = Strong;
  if (Strong)
  {
    v3 = Strong;
    v4 = *(v0 + 168);
    PairingConfiguration.identifier.getter(*(v0 + 184));

    return MEMORY[0x2822009F8](closure #2 in PairingService.pairAccessories(_:context:), v3, 0);
  }

  else
  {
    v6 = *(v0 + 216);
    v5 = *(v0 + 224);
    v7 = *(v0 + 208);
    v9 = *(v0 + 176);
    v8 = *(v0 + 184);

    v10 = *(v0 + 8);

    return v10();
  }
}

{
  v1 = *(v0 + 232);
  swift_beginAccess();
  *(v0 + 240) = *(v1 + 120);

  return MEMORY[0x2822009F8](closure #2 in PairingService.pairAccessories(_:context:), 0, 0);
}

{
  v47 = v0;
  if (*(*(v0 + 240) + 16) && (v1 = *(v0 + 240), v2 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 184)), (v3 & 1) != 0))
  {
    v4 = *(v0 + 224);
    v5 = *(v0 + 232);
    v6 = *(v0 + 208);
    v7 = *(v0 + 216);
    v8 = *(v0 + 192);
    v9 = *(v0 + 176);
    v10 = *(v0 + 184);
    v44 = *(v0 + 168);
    v45 = *(v0 + 200);
    outlined init with copy of DependenciesIdentifier(*(*(v0 + 240) + 56) + *(v8 + 72) * v2, v7, type metadata accessor for AccessoryDependencies);
    outlined destroy of DependenciesIdentifier(v10, type metadata accessor for DependenciesIdentifier);

    outlined init with take of AccessoryDependencies(v7, v4, type metadata accessor for AccessoryDependencies);
    v11 = type metadata accessor for TaskPriority();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
    v12 = swift_allocObject();
    swift_weakInit();
    outlined init with copy of DependenciesIdentifier(v4, v6, type metadata accessor for AccessoryDependencies);
    outlined init with copy of PairingConfiguration(v44, v0 + 64);
    v13 = (*(v8 + 80) + 40) & ~*(v8 + 80);
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = v12;
    outlined init with take of AccessoryDependencies(v6, v14 + v13, type metadata accessor for AccessoryDependencies);
    v15 = (v14 + ((v45 + v13 + 7) & 0xFFFFFFFFFFFFFFF8));
    v16 = *(v0 + 80);
    *v15 = *(v0 + 64);
    v15[1] = v16;
    *(v15 + 25) = *(v0 + 89);
    _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v9, &async function pointer to partial apply for closure #1 in closure #2 in PairingService.pairAccessories(_:context:), v14);

    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v9, &_sScPSgMd, &_sScPSgMR);
    v17 = *v4;
    v18 = v4[1];
    ObjectType = swift_getObjectType();
    v20 = swift_task_alloc();
    *(v0 + 248) = v20;
    *v20 = v0;
    v20[1] = closure #2 in PairingService.pairAccessories(_:context:);

    return PairingCoordinator.triggerPairingFlow()(ObjectType, v18);
  }

  else
  {
    v22 = *(v0 + 184);

    outlined destroy of DependenciesIdentifier(v22, type metadata accessor for DependenciesIdentifier);
    if (one-time initialization token for pairingService != -1)
    {
      swift_once();
    }

    v23 = *(v0 + 168);
    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.pairingService);
    outlined init with copy of PairingConfiguration(v23, v0 + 16);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    v27 = os_log_type_enabled(v25, v26);
    v28 = *(v0 + 232);
    if (v27)
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v46 = v30;
      *v29 = 136446210;
      v31 = PairingConfiguration.dependenciesIdentifier.getter();
      v32 = type metadata accessor for UUID();
      v33 = MEMORY[0x24C236860](v31, v32);
      v35 = v34;

      outlined destroy of PairingConfiguration(v0 + 16);
      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, &v46);

      *(v29 + 4) = v36;
      _os_log_impl(&dword_24AF48000, v25, v26, "No dependencies for %{public}s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      MEMORY[0x24C237030](v30, -1, -1);
      MEMORY[0x24C237030](v29, -1, -1);
    }

    else
    {
      v37 = *(v0 + 232);

      outlined destroy of PairingConfiguration(v0 + 16);
    }

    v39 = *(v0 + 216);
    v38 = *(v0 + 224);
    v40 = *(v0 + 208);
    v42 = *(v0 + 176);
    v41 = *(v0 + 184);

    v43 = *(v0 + 8);

    return v43();
  }
}

{
  v1 = *(*v0 + 248);
  v3 = *v0;

  return MEMORY[0x2822009F8](closure #2 in PairingService.pairAccessories(_:context:), 0, 0);
}

{
  v2 = v0[28];
  v1 = v0[29];

  outlined destroy of DependenciesIdentifier(v2, type metadata accessor for AccessoryDependencies);
  v4 = v0[27];
  v3 = v0[28];
  v5 = v0[26];
  v7 = v0[22];
  v6 = v0[23];

  v8 = v0[1];

  return v8();
}

uint64_t closure #1 in closure #2 in PairingService.pairAccessories(_:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v7 = *(*(type metadata accessor for DependenciesIdentifier(0) - 8) + 64) + 15;
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in closure #2 in PairingService.pairAccessories(_:context:), 0, 0);
}

uint64_t closure #1 in closure #2 in PairingService.pairAccessories(_:context:)()
{
  v1 = *(v0 + 40);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 72) = Strong;
  if (Strong)
  {
    v3 = *(v0 + 56);
    PairingConfiguration.identifier.getter(*(v0 + 64));
    v4 = swift_task_alloc();
    *(v0 + 80) = v4;
    *v4 = v0;
    v4[1] = closure #1 in closure #2 in PairingService.pairAccessories(_:context:);
    v5 = *(v0 + 64);
    v6 = *(v0 + 48);

    return PairingService.monitor(streamFrom:for:)(v6, v5);
  }

  else
  {
    v8 = *(v0 + 64);

    v9 = *(v0 + 8);

    return v9();
  }
}

{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 64);
  v6 = *v1;
  *(*v1 + 88) = v0;

  outlined destroy of DependenciesIdentifier(v3, type metadata accessor for DependenciesIdentifier);
  if (v0)
  {
    v4 = closure #1 in closure #2 in PairingService.pairAccessories(_:context:);
  }

  else
  {
    v4 = closure #1 in closure #2 in PairingService.pairAccessories(_:context:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  v1 = v0[9];

  v2 = v0[8];

  v3 = v0[1];

  return v3();
}

{
  if (one-time initialization token for pairingService != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.pairingService);
  MEMORY[0x24C236EC0](v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[11];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    MEMORY[0x24C236EC0](v5);
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&dword_24AF48000, v3, v4, "Pairing monitoring failed: %{public}@", v6, 0xCu);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v7, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v7, -1, -1);
    MEMORY[0x24C237030](v6, -1, -1);
  }

  v9 = v0[9];
  v10 = v0[6];

  v0[12] = *v10;
  v0[13] = v10[1];

  return MEMORY[0x2822009F8](closure #1 in closure #2 in PairingService.pairAccessories(_:context:), v9, 0);
}

{
  v1 = v0[9];
  PairingService.removeCoordinator(_:)(v0[12], v0[13]);

  return MEMORY[0x2822009F8](closure #1 in closure #2 in PairingService.pairAccessories(_:context:), 0, 0);
}

{
  v1 = v0[11];
  v2 = v0[9];

  MEMORY[0x24C236EB0](v1);
  v3 = v0[8];

  v4 = v0[1];

  return v4();
}

uint64_t PairingService.monitor(streamFrom:for:)(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = *(type metadata accessor for DependenciesIdentifier(0) - 8);
  v3[7] = v4;
  v3[8] = *(v4 + 64);
  v3[9] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy10FindMyBase11TransactionC_0bC7Pairing0F16CoordinatorStateOt_GMd, &_sScS8IteratorVy10FindMyBase11TransactionC_0bC7Pairing0F16CoordinatorStateOt_GMR);
  v3[10] = v5;
  v6 = *(v5 - 8);
  v3[11] = v6;
  v7 = *(v6 + 64) + 15;
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](PairingService.monitor(streamFrom:for:), v2, 0);
}

uint64_t PairingService.monitor(streamFrom:for:)()
{
  v1 = v0[6];
  type metadata accessor for WorkItemQueue();
  v0[13] = *(v1 + 112);
  if (static WorkItemQueue.called(on:)())
  {
    v2 = v0[12];
    v3 = v0[9];
    lazy protocol witness table accessor for type PairingService.Error and conformance PairingService.Error();
    swift_allocError();
    *v4 = 2;
    swift_willThrow();

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = v0[12];
    v9 = v0[4];
    v8 = v0[5];
    type metadata accessor for TimeTracker();
    v0[14] = TimeTracker.__allocating_init()();
    specialized PairingService.logNoPairingDependenciesError(for:)(v8, MEMORY[0x277D85B58], "PairingService: start monitoring pairing for accessory %{private,mask.hash}s.", "PairingService: start monitoring pairing multi-pairing identifier set of %ld accessories.", "PairingService: start monitoring pairing for %s.");
    v10 = *(type metadata accessor for AccessoryDependencies() + 20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy10FindMyBase11TransactionC_0aB7Pairing0E16CoordinatorStateOtGMd, &_sScSy10FindMyBase11TransactionC_0aB7Pairing0E16CoordinatorStateOtGMR);
    AsyncStream.makeAsyncIterator()();
    v12 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type PairingService and conformance PairingService, v11, type metadata accessor for PairingService);
    v0[15] = v12;
    v13 = v0[6];
    v14 = *(MEMORY[0x277D85798] + 4);
    v15 = swift_task_alloc();
    v0[16] = v15;
    *v15 = v0;
    v15[1] = PairingService.monitor(streamFrom:for:);
    v16 = v0[12];
    v17 = v0[10];

    return MEMORY[0x2822003E8](v0 + 2, v13, v12, v17);
  }
}

{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return MEMORY[0x2822009F8](PairingService.monitor(streamFrom:for:), v2, 0);
}

{
  v1 = v0[14];
  v3 = v0[5];
  v2 = v0[6];
  if (v0[2])
  {
    v4 = v0[3];
    v21 = v0[13];
    v5 = v0[8];
    v6 = v0[9];
    v7 = v0[7];

    v8 = swift_allocObject();
    swift_weakInit();
    outlined init with copy of DependenciesIdentifier(v3, v6, type metadata accessor for DependenciesIdentifier);
    v9 = (*(v7 + 80) + 40) & ~*(v7 + 80);
    v10 = swift_allocObject();
    v10[2] = v8;
    v10[3] = v1;
    v10[4] = v4;
    outlined init with take of AccessoryDependencies(v6, v10 + v9, type metadata accessor for DependenciesIdentifier);

    outlined copy of PairingCoordinatorState(v4);
    dispatch thunk of WorkItemQueue.enqueue(_:)();
    outlined consume of PairingCoordinatorState(v4);

    v11 = v0[15];
    v12 = v0[6];
    v13 = *(MEMORY[0x277D85798] + 4);
    v14 = swift_task_alloc();
    v0[16] = v14;
    *v14 = v0;
    v14[1] = PairingService.monitor(streamFrom:for:);
    v15 = v0[12];
    v16 = v0[10];

    return MEMORY[0x2822003E8](v0 + 2, v12, v11, v16);
  }

  else
  {
    v17 = v0[9];
    v18 = v0[4];
    (*(v0[11] + 8))(v0[12], v0[10]);
    specialized PairingService.logNoPairingDependenciesError(for:)(v3, MEMORY[0x277D85B58], "PairingService: finished monitoring pairing for %{private,mask.hash}s.", "PairingService: finished monitoring pairing for multi-pairing identifier set of %ld accessories.", "PairingService: finished monitoring pairing for %s.");
    PairingService.removeCoordinator(_:)(*v18, v18[1]);

    v19 = v0[1];

    return v19();
  }
}

uint64_t PairingService.removeCoordinator(_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for WorkItemQueue();
  v4 = *(v2 + 112);
  if (static WorkItemQueue.called(on:)())
  {
    lazy protocol witness table accessor for type PairingService.Error and conformance PairingService.Error();
    v5 = swift_allocError();
    *v6 = 2;
    swift_willThrow();
    MEMORY[0x24C236EC0](v5);
    if (one-time initialization token for pairingService != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.pairingService);
    MEMORY[0x24C236EC0](v5);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    MEMORY[0x24C236EB0](v5);
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138543362;
      MEMORY[0x24C236EC0](v5);
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v12;
      *v11 = v12;
      _os_log_impl(&dword_24AF48000, v8, v9, "Failure on removing coordinator: %{public}@", v10, 0xCu);
      outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x24C237030](v11, -1, -1);
      MEMORY[0x24C237030](v10, -1, -1);
      MEMORY[0x24C236EB0](v5);
    }

    else
    {

      MEMORY[0x24C236EB0](v5);
    }

    JUMPOUT(0x24C236EB0);
  }

  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  *(v14 + 24) = a2;
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v15 + 24) = v14;

  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

void *PairingService.deinit()
{
  v1 = v0[14];

  v2 = v0[15];

  v3 = v0[16];
  swift_unknownObjectRelease();
  swift_defaultActor_destroy();
  return v0;
}

uint64_t PairingService.__deallocating_deinit()
{
  v1 = v0[14];

  v2 = v0[15];

  v3 = v0[16];
  swift_unknownObjectRelease();
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t protocol witness for PairingServiceType.pairAccessories(_:context:) in conformance PairingService(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of PairingServiceProxy.reevaluateDependencies(for:);

  return PairingService.pairAccessories(_:context:)(a1, a2, a3);
}

uint64_t PairingService._removeCoordinator(for:)(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s13FindMyPairing21AccessoryDependenciesVSgMd, &_s13FindMyPairing21AccessoryDependenciesVSgMR) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](PairingService._removeCoordinator(for:), v1, 0);
}

uint64_t PairingService._removeCoordinator(for:)()
{
  v1 = v0[9];
  type metadata accessor for WorkItemQueue();
  v2 = *(v1 + 112);
  if (static WorkItemQueue.called(on:)())
  {
    v3 = v0[9];
    swift_beginAccess();
    v4 = *(v3 + 120);
    if (*(v4 + 16))
    {
      v5 = v0[8];
      v6 = *(v3 + 120);

      v7 = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v8)
      {
        v9 = v7;
        v10 = v0[10];
        v11 = v0[11];
        v12 = v0[8];
        v31 = v0[9];
        v13 = *(v4 + 56);
        v14 = type metadata accessor for AccessoryDependencies();
        v15 = *(v14 - 8);
        outlined init with copy of DependenciesIdentifier(v13 + *(v15 + 72) * v9, v11, type metadata accessor for AccessoryDependencies);

        (*(v15 + 56))(v11, 0, 1, v14);
        outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v11, &_s13FindMyPairing21AccessoryDependenciesVSgMd, &_s13FindMyPairing21AccessoryDependenciesVSgMR);
        swift_beginAccess();
        specialized Dictionary.removeValue(forKey:)(v12, v10);
        outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v10, &_s13FindMyPairing21AccessoryDependenciesVSgMd, &_s13FindMyPairing21AccessoryDependenciesVSgMR);
        swift_endAccess();
        PairingService.logSuccessfulDependenciesDeletion(for:)(v12);
        goto LABEL_13;
      }
    }

    v24 = v0[11];
    v25 = v0[8];
    v26 = type metadata accessor for AccessoryDependencies();
    (*(*(v26 - 8) + 56))(v24, 1, 1, v26);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v24, &_s13FindMyPairing21AccessoryDependenciesVSgMd, &_s13FindMyPairing21AccessoryDependenciesVSgMR);
    specialized PairingService.logNoPairingDependenciesError(for:)(v25, MEMORY[0x277D85B48], "No pairing dependencies to delete for %{private,mask.hash}s", "No pairing dependencies to delete for multi-pairing identifier set of %ld accessories.", "No pairing dependencies to delete for %s.");
  }

  else
  {
    lazy protocol witness table accessor for type PairingService.Error and conformance PairingService.Error();
    v16 = swift_allocError();
    *v17 = 2;
    swift_willThrow();
    MEMORY[0x24C236EC0](v16);
    if (one-time initialization token for pairingService != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.pairingService);
    MEMORY[0x24C236EC0](v16);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    MEMORY[0x24C236EB0](v16);
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138543362;
      MEMORY[0x24C236EC0](v16);
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 4) = v23;
      *v22 = v23;
      _os_log_impl(&dword_24AF48000, v19, v20, "Dependencies deletion failed: %{public}@", v21, 0xCu);
      outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v22, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x24C237030](v22, -1, -1);
      MEMORY[0x24C237030](v21, -1, -1);
      MEMORY[0x24C236EB0](v16);
    }

    else
    {

      MEMORY[0x24C236EB0](v16);
    }

    MEMORY[0x24C236EB0](v16);
  }

LABEL_13:
  v28 = v0[10];
  v27 = v0[11];

  v29 = v0[1];

  return v29();
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13FindMyPairing21AccessoryDependenciesVSgMd, &_s13FindMyPairing21AccessoryDependenciesVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v17 - v7;
  v9 = type metadata accessor for AccessoryDependencies();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(a1, &_s13FindMyPairing21AccessoryDependenciesVSgMd, &_s13FindMyPairing21AccessoryDependenciesVSgMR);
    specialized Dictionary.removeValue(forKey:)(a2, v8);
    outlined destroy of DependenciesIdentifier(a2, type metadata accessor for DependenciesIdentifier);
    return outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v8, &_s13FindMyPairing21AccessoryDependenciesVSgMd, &_s13FindMyPairing21AccessoryDependenciesVSgMR);
  }

  else
  {
    outlined init with take of AccessoryDependencies(a1, v12, type metadata accessor for AccessoryDependencies);
    v15 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v12, a2, isUniquelyReferenced_nonNull_native);
    result = outlined destroy of DependenciesIdentifier(a2, type metadata accessor for DependenciesIdentifier);
    *v2 = v18;
  }

  return result;
}

uint64_t closure #1 in PairingService.monitor(streamFrom:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a3;
  v4[15] = a4;
  v4[12] = a1;
  v4[13] = a2;
  v5 = *(type metadata accessor for AccessoryDependencies() - 8);
  v4[16] = v5;
  v6 = *(v5 + 64) + 15;
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in PairingService.monitor(streamFrom:for:), 0, 0);
}

uint64_t closure #1 in PairingService.monitor(streamFrom:for:)()
{
  v1 = v0[12];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[19] = Strong;
  if (Strong)
  {
    v3 = v0[13];
    type metadata accessor for TimeTracker();
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type TimeTracker and conformance TimeTracker, 255, MEMORY[0x277D088F0]);
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v0[20] = v5;
    v0[21] = v4;

    return MEMORY[0x2822009F8](closure #1 in PairingService.monitor(streamFrom:for:), v5, v4);
  }

  else
  {
    v7 = v0[17];
    v6 = v0[18];

    v8 = v0[1];

    return v8();
  }
}

{
  v1 = v0[13];
  v0[8] = dispatch thunk of TimeTracker.lastCheckpointName.getter();
  v0[9] = v2;
  v0[22] = v2;

  return MEMORY[0x2822009F8](closure #1 in PairingService.monitor(streamFrom:for:), 0, 0);
}

{
  v5 = v0[14];
  outlined copy of PairingCoordinatorState(v5);
  v0[23] = PairingCoordinatorState.description.getter();
  v0[24] = v1;
  outlined consume of PairingCoordinatorState(v5);
  v2 = v0[20];
  v3 = v0[21];

  return MEMORY[0x2822009F8](closure #1 in PairingService.monitor(streamFrom:for:), v2, v3);
}

{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[22];
  v4 = v0[13];
  dispatch thunk of TimeTracker.updateCheckpoint(for:)();

  if (v3)
  {
    v0[25] = v0[8];
    v5 = v0[20];
    v6 = v0[21];
    v7 = closure #1 in PairingService.monitor(streamFrom:for:);
  }

  else
  {
    v5 = v0[19];
    v0[10] = v0[14];
    v7 = closure #1 in PairingService.monitor(streamFrom:for:);
    v6 = 0;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

{
  v1 = v0[25];
  v2 = v0[22];
  v3 = v0[19];
  v4 = v0[13];
  v5 = v0[14];
  v0[26] = dispatch thunk of TimeTracker.duration(since:)();
  v0[27] = v6;
  v0[11] = v5;

  return MEMORY[0x2822009F8](closure #1 in PairingService.monitor(streamFrom:for:), v3, 0);
}

{
  specialized PairingService.logPairingStep(for:previousCheckpoint:pairingState:duration:)(v0[15], v0[25], v0[22], v0 + 11, v0[26], v0[27]);

  v1 = v0[19];
  v0[10] = v0[14];

  return MEMORY[0x2822009F8](closure #1 in PairingService.monitor(streamFrom:for:), v1, 0);
}

{
  specialized PairingService.logCoordinatorState(for:pairingState:)(*(v0 + 120), (v0 + 80));

  return MEMORY[0x2822009F8](closure #1 in PairingService.monitor(streamFrom:for:), 0, 0);
}

{
  v1 = v0[14];
  if (v1 == 13)
  {
    v3 = swift_task_alloc();
    v0[34] = v3;
    *v3 = v0;
    v3[1] = closure #1 in PairingService.monitor(streamFrom:for:);
    v4 = v0[19];
    v5 = v0[15];
    v6 = v0[13];

    return PairingService.logPairingStatistics(for:timeTracker:)(v5, v6);
  }

  else if (v1 == 4)
  {
    v2 = v0[19];

    return MEMORY[0x2822009F8](closure #1 in PairingService.monitor(streamFrom:for:), v2, 0);
  }

  else
  {
    v7 = v0[19];

    v9 = v0[17];
    v8 = v0[18];

    v10 = v0[1];

    return v10();
  }
}

{
  v1 = *(v0 + 152);
  swift_beginAccess();
  *(v0 + 224) = *(v1 + 120);

  return MEMORY[0x2822009F8](closure #1 in PairingService.monitor(streamFrom:for:), 0, 0);
}

{
  if (*(v0[28] + 16))
  {
    v1 = specialized __RawDictionaryStorage.find<A>(_:)(v0[15]);
    v2 = v0[19];
    if (v3)
    {
      v5 = v0[17];
      v4 = v0[18];
      outlined init with copy of DependenciesIdentifier(*(v0[28] + 56) + *(v0[16] + 72) * v1, v5, type metadata accessor for AccessoryDependencies);

      outlined init with take of AccessoryDependencies(v5, v4, type metadata accessor for AccessoryDependencies);
      v7 = *(v2 + 128);
      v6 = *(v2 + 136);
      ObjectType = swift_getObjectType();
      v9 = *v4;
      v0[29] = *v4;
      v10 = v4[1];
      v0[30] = v10;
      v11 = *(v6 + 24);
      v19 = (v11 + *v11);
      v12 = v11[1];
      v13 = swift_task_alloc();
      v0[31] = v13;
      *v13 = v0;
      v13[1] = closure #1 in PairingService.monitor(streamFrom:for:);

      return v19(v9, v10, ObjectType, v6);
    }
  }

  else
  {
    v15 = v0[19];
  }

  v17 = v0[17];
  v16 = v0[18];

  v18 = v0[1];

  return v18();
}

{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v14 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v4 = closure #1 in PairingService.monitor(streamFrom:for:);
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v7 = v2[29];
    v8 = v2[30];
    v2[33] = swift_getObjectType();
    v9 = *(v8 + 8);
    v10 = dispatch thunk of Actor.unownedExecutor.getter();
    v12 = v11;
    v4 = closure #1 in PairingService.monitor(streamFrom:for:);
    v5 = v10;
    v6 = v12;
  }

  return MEMORY[0x2822009F8](v4, v5, v6);
}

{
  v1 = v0[33];
  v3 = v0[29];
  v2 = v0[30];
  PairingCoordinator.startAccessoryPairing()();

  return MEMORY[0x2822009F8](closure #1 in PairingService.monitor(streamFrom:for:), 0, 0);
}

{
  v2 = v0[18];
  v1 = v0[19];

  outlined destroy of DependenciesIdentifier(v2, type metadata accessor for AccessoryDependencies);
  v4 = v0[17];
  v3 = v0[18];

  v5 = v0[1];

  return v5();
}

{
  v1 = *(*v0 + 272);
  v3 = *v0;

  return MEMORY[0x2822009F8](closure #1 in PairingService.monitor(streamFrom:for:), 0, 0);
}

{
  v1 = v0[19];

  v3 = v0[17];
  v2 = v0[18];

  v4 = v0[1];

  return v4();
}

{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];

  outlined destroy of DependenciesIdentifier(v2, type metadata accessor for AccessoryDependencies);

  v4 = v0[1];
  v5 = v0[32];

  return v4();
}

uint64_t PairingService.logPairingStatistics(for:timeTracker:)(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = type metadata accessor for DependenciesIdentifier(0);
  v3[7] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v3[13] = v7;
  v8 = *(v7 - 8);
  v3[14] = v8;
  v9 = *(v8 + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  type metadata accessor for TimeTracker();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type TimeTracker and conformance TimeTracker, 255, MEMORY[0x277D088F0]);
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[17] = v11;
  v3[18] = v10;

  return MEMORY[0x2822009F8](PairingService.logPairingStatistics(for:timeTracker:), v11, v10);
}

uint64_t PairingService.logPairingStatistics(for:timeTracker:)()
{
  v1 = v0[5];
  v0[19] = dispatch thunk of TimeTracker.duration(from:to:)();
  v0[20] = v2;
  v3 = v0[17];
  v4 = v0[18];

  return MEMORY[0x2822009F8](PairingService.logPairingStatistics(for:timeTracker:), v3, v4);
}

{
  v2 = v0[5];
  v1 = v0[6];
  v0[21] = dispatch thunk of TimeTracker.topConsumers(with:)();
  v0[22] = v3;

  return MEMORY[0x2822009F8](PairingService.logPairingStatistics(for:timeTracker:), v1, 0);
}

{
  v97 = v0;
  v1 = v0[7];
  outlined init with copy of DependenciesIdentifier(v0[4], v0[11], type metadata accessor for DependenciesIdentifier);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined destroy of DependenciesIdentifier(v0[11], type metadata accessor for DependenciesIdentifier);
    v2 = 1;
  }

  else
  {
    (*(v0[14] + 32))(v0[12], v0[11], v0[13]);
    v2 = 0;
  }

  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[12];
  (*(v4 + 56))(v5, v2, 1, v3);
  if ((*(v4 + 48))(v5, 1, v3) != 1)
  {
    goto LABEL_9;
  }

  v6 = v0[10];
  v7 = v0[7];
  v8 = v0[4];
  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v0[12], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined init with copy of DependenciesIdentifier(v8, v6, type metadata accessor for DependenciesIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v10 = v0[10];
  if (EnumCaseMultiPayload != 1)
  {
    outlined destroy of DependenciesIdentifier(v10, type metadata accessor for DependenciesIdentifier);
    if (one-time initialization token for pairingTime != -1)
    {
      swift_once();
    }

    v38 = v0[22];
    v39 = v0[20];
    v40 = v0[9];
    v41 = v0[4];
    v42 = type metadata accessor for Logger();
    __swift_project_value_buffer(v42, static Logger.pairingTime);
    outlined init with copy of DependenciesIdentifier(v41, v40, type metadata accessor for DependenciesIdentifier);

    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();

    v45 = os_log_type_enabled(v43, v44);
    v46 = v0[22];
    if (!v45)
    {
      v65 = v0[20];
      v66 = v0[9];
      v67 = v0[22];

      outlined destroy of DependenciesIdentifier(v66, type metadata accessor for DependenciesIdentifier);
      goto LABEL_26;
    }

    v94 = v0[20];
    v90 = v0[21];
    v92 = v0[19];
    v47 = v0[8];
    v48 = v0[9];
    v49 = v0[7];
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v96 = v51;
    *v50 = 136315650;
    outlined init with copy of DependenciesIdentifier(v48, v47, type metadata accessor for DependenciesIdentifier);
    v52 = String.init<A>(describing:)();
    v54 = v53;
    outlined destroy of DependenciesIdentifier(v48, type metadata accessor for DependenciesIdentifier);
    v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v54, &v96);

    *(v50 + 4) = v55;
    *(v50 + 12) = 2082;
    v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v90, v46, &v96);

    *(v50 + 14) = v56;
    *(v50 + 22) = 2082;
    v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v92, v94, &v96);

    *(v50 + 24) = v57;
    _os_log_impl(&dword_24AF48000, v43, v44, "Coordinator pairing statistics:\n    Accessory: %s,\n    Top time-consuming operations: %{public}s),\n    Overall pairing time: %{public}s", v50, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C237030](v51, -1, -1);
    v58 = v50;
    goto LABEL_24;
  }

  v11 = *v10;
  v12 = *(*v10 + 16);
  if (!v12)
  {
    v68 = *v10;

    v14 = MEMORY[0x277D84F90];
    goto LABEL_20;
  }

  v13 = v0[14];
  v14 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10Foundation4UUIDV_Tt1g5(*(*v10 + 16), 0);
  v15 = specialized Sequence._copySequenceContents(initializing:)(&v96, (v14 + ((*(v13 + 80) + 32) & ~*(v13 + 80))), v12, v11);
  outlined consume of Set<UUID>.Iterator._Variant();
  if (v15 == v12)
  {
LABEL_20:
    if (one-time initialization token for pairingTime != -1)
    {
      swift_once();
    }

    v69 = v0[22];
    v70 = v0[20];
    v71 = type metadata accessor for Logger();
    __swift_project_value_buffer(v71, static Logger.pairingTime);

    v43 = Logger.logObject.getter();
    v72 = static os_log_type_t.default.getter();

    v73 = os_log_type_enabled(v43, v72);
    v74 = v0[22];
    if (!v73)
    {
      v82 = v0[20];

      goto LABEL_26;
    }

    v75 = v0[20];
    v76 = v0[21];
    v95 = v0[19];
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v96 = v78;
    *v77 = 134218498;
    v79 = *(v14 + 16);

    *(v77 + 4) = v79;

    *(v77 + 12) = 2082;
    v80 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v74, &v96);

    *(v77 + 14) = v80;
    *(v77 + 22) = 2082;
    v81 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v95, v75, &v96);

    *(v77 + 24) = v81;
    _os_log_impl(&dword_24AF48000, v43, v72, "Coordinator pairing statistics:\n    Accessory: multi-pairing identifier set of %ld accessories,\n    Top time-consuming operations: %{public}s),\n    Overall pairing time: %{public}s", v77, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C237030](v78, -1, -1);
    v58 = v77;
LABEL_24:
    MEMORY[0x24C237030](v58, -1, -1);

    goto LABEL_26;
  }

  __break(1u);
LABEL_9:
  (*(v0[14] + 32))(v0[16], v0[12], v0[13]);
  if (one-time initialization token for pairingTime != -1)
  {
    swift_once();
  }

  v16 = v0[22];
  v17 = v0[20];
  v18 = v0[15];
  v19 = v0[16];
  v20 = v0[13];
  v21 = v0[14];
  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static Logger.pairingTime);
  (*(v21 + 16))(v18, v19, v20);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  v25 = os_log_type_enabled(v23, v24);
  v26 = v0[22];
  if (v25)
  {
    v86 = v0[21];
    v88 = v0[19];
    v89 = v0[20];
    v93 = v0[16];
    v87 = v24;
    v28 = v0[14];
    v27 = v0[15];
    v29 = v0[13];
    v30 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v96 = v91;
    *v30 = 141558787;
    *(v30 + 4) = 1752392040;
    *(v30 + 12) = 2081;
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0]);
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = v32;
    v34 = *(v28 + 8);
    v34(v27, v29);
    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, &v96);

    *(v30 + 14) = v35;
    *(v30 + 22) = 2082;
    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v86, v26, &v96);

    *(v30 + 24) = v36;
    *(v30 + 32) = 2082;
    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v88, v89, &v96);

    *(v30 + 34) = v37;
    _os_log_impl(&dword_24AF48000, v23, v87, "Coordinator pairing statistics:\n    Accessory: %{private,mask.hash}s,\n    Top time-consuming operations: %{public}s),\n    Overall pairing time: %{public}s", v30, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x24C237030](v91, -1, -1);
    MEMORY[0x24C237030](v30, -1, -1);

    v34(v93, v29);
  }

  else
  {
    v59 = v0[20];
    v61 = v0[15];
    v60 = v0[16];
    v62 = v0[13];
    v63 = v0[14];

    v64 = *(v63 + 8);
    v64(v61, v62);
    v64(v60, v62);
  }

LABEL_26:
  v83 = v0[17];
  v84 = v0[18];

  return MEMORY[0x2822009F8](PairingService.logPairingStatistics(for:timeTracker:), v83, v84);
}

{
  v1 = v0[5];
  v0[23] = dispatch thunk of TimeTracker.rawDuration(from:to:)();
  v0[24] = v2;
  v3 = v0[17];
  v4 = v0[18];

  return MEMORY[0x2822009F8](PairingService.logPairingStatistics(for:timeTracker:), v3, v4);
}

{
  v2 = v0[5];
  v1 = v0[6];
  v0[25] = dispatch thunk of TimeTracker.prevCheckpoint(for:)();
  v0[26] = v3;

  return MEMORY[0x2822009F8](PairingService.logPairingStatistics(for:timeTracker:), v1, 0);
}

{
  v26 = v0;
  v1 = v0[26];
  if (v1)
  {
    v2 = v1 == 0x800000024AFAF6C0 && v0[25] == 0xD000000000000018;
    if (v2 || (v3 = v0[26], (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      v4 = v0[17];
      v5 = v0[18];

      return MEMORY[0x2822009F8](PairingService.logPairingStatistics(for:timeTracker:), v4, v5);
    }
  }

  static Duration.zero.getter();
  v6 = v0[23];
  v7 = v0[24];
  static Duration.- infix(_:_:)();
  if (one-time initialization token for pairingTime != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.pairingTime);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v25 = v12;
    *v11 = 136446210;
    v13 = Duration.formattedDescription.getter();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v25);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_24AF48000, v9, v10, "Pairing performance: %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x24C237030](v12, -1, -1);
    MEMORY[0x24C237030](v11, -1, -1);
  }

  v17 = v0[15];
  v16 = v0[16];
  v19 = v0[11];
  v18 = v0[12];
  v21 = v0[9];
  v20 = v0[10];
  v22 = v0[8];

  v23 = v0[1];

  return v23();
}

{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[5];
  v4 = v0[6];
  v0[2] = dispatch thunk of TimeTracker.rawDuration(from:to:)();
  v0[3] = v5;

  return MEMORY[0x2822009F8](PairingService.logPairingStatistics(for:timeTracker:), v4, 0);
}

{
  v23 = v0;
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[23];
  v4 = v0[24];
  static Duration.- infix(_:_:)();
  if (one-time initialization token for pairingTime != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.pairingTime);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22 = v9;
    *v8 = 136446210;
    v10 = Duration.formattedDescription.getter();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v22);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_24AF48000, v6, v7, "Pairing performance: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x24C237030](v9, -1, -1);
    MEMORY[0x24C237030](v8, -1, -1);
  }

  v14 = v0[15];
  v13 = v0[16];
  v16 = v0[11];
  v15 = v0[12];
  v18 = v0[9];
  v17 = v0[10];
  v19 = v0[8];

  v20 = v0[1];

  return v20();
}

uint64_t closure #1 in PairingService.removeCoordinator(_:)(uint64_t a1, uint64_t a2)
{
  v2[11] = a1;
  v2[12] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13FindMyPairing22DependenciesIdentifierO3key_AA09AccessoryD0V5valuetMd, &_s13FindMyPairing22DependenciesIdentifierO3key_AA09AccessoryD0V5valuetMR);
  v2[13] = v3;
  v4 = *(v3 - 8);
  v2[14] = v4;
  v5 = *(v4 + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s13FindMyPairing22DependenciesIdentifierO3key_AA09AccessoryD0V5valuetSgMd, &_s13FindMyPairing22DependenciesIdentifierO3key_AA09AccessoryD0V5valuetSgMR) - 8) + 64) + 15;
  v2[18] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s13FindMyPairing22DependenciesIdentifierOSgMd, &_s13FindMyPairing22DependenciesIdentifierOSgMR) - 8) + 64) + 15;
  v2[19] = swift_task_alloc();
  v8 = type metadata accessor for DependenciesIdentifier(0);
  v2[20] = v8;
  v9 = *(v8 - 8);
  v2[21] = v9;
  v10 = *(v9 + 64) + 15;
  v2[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in PairingService.removeCoordinator(_:), 0, 0);
}

uint64_t closure #1 in PairingService.removeCoordinator(_:)()
{
  v1 = v0[11];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[23] = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](closure #1 in PairingService.removeCoordinator(_:), Strong, 0);
  }

  else
  {
    v3 = v0[22];
    v4 = v0[18];
    v5 = v0[19];
    v7 = v0[16];
    v6 = v0[17];
    v8 = v0[15];

    v9 = v0[1];

    return v9();
  }
}

{
  v1 = *(v0 + 184);
  swift_beginAccess();
  *(v0 + 192) = *(v1 + 120);

  return MEMORY[0x2822009F8](closure #1 in PairingService.removeCoordinator(_:), 0, 0);
}

{
  v1 = v0[24];
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  v59 = v0[24];
  v60 = v0[13];
  v57 = v0[12];
  v58 = v0[21];
  v5 = -1;
  v6 = -1 << *(v59 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v2;
  v8 = (63 - v6) >> 6;

  v10 = 0;
  for (i = v3; ; v3 = i)
  {
    if (!v7)
    {
      while (1)
      {
        v11 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v11 >= v8)
        {
          v27 = v0[24];
          v28 = v0[18];
          v29 = v0[13];
          v30 = v0[14];

          (*(v30 + 56))(v28, 1, 1, v29);
          goto LABEL_15;
        }

        v7 = *(v3 + 8 * v11);
        ++v10;
        if (v7)
        {
          v10 = v11;
          goto LABEL_11;
        }
      }

      __break(1u);
      return result;
    }

LABEL_11:
    v13 = v0[16];
    v12 = v0[17];
    v14 = v0[15];
    v15 = __clz(__rbit64(v7)) | (v10 << 6);
    outlined init with copy of DependenciesIdentifier(*(v59 + 48) + *(v58 + 72) * v15, v12, type metadata accessor for DependenciesIdentifier);
    v16 = *(v59 + 56);
    v17 = v16 + *(*(type metadata accessor for AccessoryDependencies() - 8) + 72) * v15;
    outlined init with copy of DependenciesIdentifier(v17, v12 + *(v60 + 48), type metadata accessor for AccessoryDependencies);
    outlined init with take of PairingContext?(v12, v13, &_s13FindMyPairing22DependenciesIdentifierO3key_AA09AccessoryD0V5valuetMd, &_s13FindMyPairing22DependenciesIdentifierO3key_AA09AccessoryD0V5valuetMR);
    outlined init with copy of PairingContext?(v13, v14, &_s13FindMyPairing22DependenciesIdentifierO3key_AA09AccessoryD0V5valuetMd, &_s13FindMyPairing22DependenciesIdentifierO3key_AA09AccessoryD0V5valuetMR);
    v18 = *(v60 + 48);
    v19 = *(v14 + v18);
    swift_unknownObjectRetain();
    outlined destroy of DependenciesIdentifier(v14 + v18, type metadata accessor for AccessoryDependencies);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v21 = v0[15];
    swift_unknownObjectRelease();
    if (!Strong)
    {
      outlined destroy of DependenciesIdentifier(v21, type metadata accessor for DependenciesIdentifier);
      goto LABEL_5;
    }

    swift_unknownObjectRelease();
    outlined destroy of DependenciesIdentifier(v21, type metadata accessor for DependenciesIdentifier);
    if (v19 == Strong)
    {
      break;
    }

LABEL_5:
    v7 &= v7 - 1;
    result = outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v0[16], &_s13FindMyPairing22DependenciesIdentifierO3key_AA09AccessoryD0V5valuetMd, &_s13FindMyPairing22DependenciesIdentifierO3key_AA09AccessoryD0V5valuetMR);
  }

  v22 = v0[24];
  v23 = v0[18];
  v24 = v0[16];
  v25 = v0[13];
  v26 = v0[14];

  outlined init with take of PairingContext?(v24, v23, &_s13FindMyPairing22DependenciesIdentifierO3key_AA09AccessoryD0V5valuetMd, &_s13FindMyPairing22DependenciesIdentifierO3key_AA09AccessoryD0V5valuetMR);
  (*(v26 + 56))(v23, 0, 1, v25);
LABEL_15:
  v31 = v0[24];
  v32 = v0[18];
  v33 = v0[13];
  v34 = v0[14];

  if ((*(v34 + 48))(v32, 1, v33) == 1)
  {
    v35 = v0[23];
    v36 = v0[20];
    v37 = v0[21];
    v39 = v0[18];
    v38 = v0[19];

    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v39, &_s13FindMyPairing22DependenciesIdentifierO3key_AA09AccessoryD0V5valuetSgMd, &_s13FindMyPairing22DependenciesIdentifierO3key_AA09AccessoryD0V5valuetSgMR);
    (*(v37 + 56))(v38, 1, 1, v36);
LABEL_19:
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v0[19], &_s13FindMyPairing22DependenciesIdentifierOSgMd, &_s13FindMyPairing22DependenciesIdentifierOSgMR);
    v46 = v0[22];
    v47 = v0[18];
    v48 = v0[19];
    v50 = v0[16];
    v49 = v0[17];
    v51 = v0[15];

    v52 = v0[1];

    return v52();
  }

  v40 = v0[20];
  v41 = v0[21];
  v43 = v0[18];
  v42 = v0[19];
  v44 = *(v60 + 48);
  outlined init with take of AccessoryDependencies(v43, v42, type metadata accessor for DependenciesIdentifier);
  (*(v41 + 56))(v42, 0, 1, v40);
  outlined destroy of DependenciesIdentifier(v43 + v44, type metadata accessor for AccessoryDependencies);
  if ((*(v41 + 48))(v42, 1, v40) == 1)
  {
    v45 = v0[23];

    goto LABEL_19;
  }

  outlined init with take of AccessoryDependencies(v0[19], v0[22], type metadata accessor for DependenciesIdentifier);
  v53 = swift_task_alloc();
  v0[25] = v53;
  *v53 = v0;
  v53[1] = closure #1 in PairingService.removeCoordinator(_:);
  v54 = v0[22];
  v55 = v0[23];

  return PairingService._removeCoordinator(for:)(v54);
}

{
  v1 = *(*v0 + 200);
  v3 = *v0;

  return MEMORY[0x2822009F8](closure #1 in PairingService.removeCoordinator(_:), 0, 0);
}

{
  v2 = v0[22];
  v1 = v0[23];

  outlined destroy of DependenciesIdentifier(v2, type metadata accessor for DependenciesIdentifier);
  v3 = v0[22];
  v4 = v0[18];
  v5 = v0[19];
  v7 = v0[16];
  v6 = v0[17];
  v8 = v0[15];

  v9 = v0[1];

  return v9();
}

void PairingService.logSuccessfulDependenciesDeletion(for:)(uint64_t a1)
{
  v2 = type metadata accessor for DependenciesIdentifier(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v63 = &v61[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v61[-v7];
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v61[-v10];
  MEMORY[0x28223BE20](v9);
  v13 = &v61[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v61[-v16];
  v18 = type metadata accessor for UUID();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v61[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v21);
  v25 = &v61[-v24];
  outlined init with copy of DependenciesIdentifier(a1, v13, type metadata accessor for DependenciesIdentifier);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined destroy of DependenciesIdentifier(v13, type metadata accessor for DependenciesIdentifier);
    v26 = 1;
  }

  else
  {
    (*(v19 + 32))(v17, v13, v18);
    v26 = 0;
  }

  (*(v19 + 56))(v17, v26, 1, v18);
  if ((*(v19 + 48))(v17, 1, v18) != 1)
  {
    goto LABEL_9;
  }

  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v17, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined init with copy of DependenciesIdentifier(a1, v11, type metadata accessor for DependenciesIdentifier);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = *v11;
    v28 = *(*v11 + 16);
    if (v28)
    {
      v18 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10Foundation4UUIDV_Tt1g5(*(*v11 + 16), 0);
      v29 = specialized Sequence._copySequenceContents(initializing:)(&v66, (v18 + ((*(v19 + 80) + 32) & ~*(v19 + 80))), v28, v27);
      outlined consume of Set<UUID>.Iterator._Variant();
      v25 = v64;
      if (v29 != v28)
      {
        __break(1u);
LABEL_9:
        (*(v19 + 32))(v25, v17, v18);
        if (one-time initialization token for pairingService != -1)
        {
          swift_once();
        }

        v30 = type metadata accessor for Logger();
        __swift_project_value_buffer(v30, static Logger.pairingService);
        (*(v19 + 16))(v23, v25, v18);
        v31 = v64;
        swift_retain_n();
        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          v65 = v63;
          *v34 = 141558531;
          *(v34 + 4) = 1752392040;
          *(v34 + 12) = 2081;
          lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0]);
          v35 = dispatch thunk of CustomStringConvertible.description.getter();
          v62 = v33;
          v36 = v35;
          v38 = v37;
          v39 = *(v19 + 8);
          v39(v23, v18);
          v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, &v65);

          *(v34 + 14) = v40;
          *(v34 + 22) = 2050;
          swift_beginAccess();
          v41 = *(*(v31 + 15) + 16);

          *(v34 + 24) = v41;

          _os_log_impl(&dword_24AF48000, v32, v62, "Removed dependencies for accessory identifier %{private,mask.hash}s, coordinators count = %{public}ld", v34, 0x20u);
          v42 = v63;
          __swift_destroy_boxed_opaque_existential_1Tm(v63);
          MEMORY[0x24C237030](v42, -1, -1);
          MEMORY[0x24C237030](v34, -1, -1);

          v39(v25, v18);
        }

        else
        {

          v54 = *(v19 + 8);
          v54(v23, v18);
          v54(v25, v18);
        }

        return;
      }
    }

    else
    {
      v55 = *v11;

      v18 = MEMORY[0x277D84F90];
      v25 = v64;
    }

    if (one-time initialization token for pairingService != -1)
    {
      swift_once();
    }

    v56 = type metadata accessor for Logger();
    __swift_project_value_buffer(v56, static Logger.pairingService);

    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 134218240;
      v60 = *(v18 + 16);

      *(v59 + 4) = v60;

      *(v59 + 12) = 2050;
      swift_beginAccess();
      *(v59 + 14) = *(*(v25 + 15) + 16);

      _os_log_impl(&dword_24AF48000, v57, v58, "Removed dependencies for multi-pairing identifier set of %ld accessories, coordinators count = %{public}ld", v59, 0x16u);
      MEMORY[0x24C237030](v59, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    outlined destroy of DependenciesIdentifier(v11, type metadata accessor for DependenciesIdentifier);
    if (one-time initialization token for pairingService != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    __swift_project_value_buffer(v43, static Logger.pairingService);
    outlined init with copy of DependenciesIdentifier(a1, v8, type metadata accessor for DependenciesIdentifier);
    v44 = v64;
    swift_retain_n();
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v65 = v48;
      *v47 = 136315394;
      outlined init with copy of DependenciesIdentifier(v8, v63, type metadata accessor for DependenciesIdentifier);
      v49 = String.init<A>(describing:)();
      v51 = v50;
      outlined destroy of DependenciesIdentifier(v8, type metadata accessor for DependenciesIdentifier);
      v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v51, &v65);

      *(v47 + 4) = v52;
      *(v47 + 12) = 2050;
      swift_beginAccess();
      v53 = *(*(v44 + 15) + 16);

      *(v47 + 14) = v53;

      _os_log_impl(&dword_24AF48000, v45, v46, "Removed dependencies for %s, coordinators count = %{public}ld", v47, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v48);
      MEMORY[0x24C237030](v48, -1, -1);
      MEMORY[0x24C237030](v47, -1, -1);
    }

    else
    {

      outlined destroy of DependenciesIdentifier(v8, type metadata accessor for DependenciesIdentifier);
    }
  }
}

uint64_t PairingService.pairingAccessories.getter()
{
  v1[5] = v0;
  v2 = type metadata accessor for UUID();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v5 = type metadata accessor for DependenciesIdentifier(0);
  v1[9] = v5;
  v6 = *(v5 - 8);
  v1[10] = v6;
  v7 = *(v6 + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](PairingService.pairingAccessories.getter, v0, 0);
}

{
  v56 = v0;
  v51 = v0[10];
  v1 = v0[7];
  v2 = v0[5];
  swift_beginAccess();
  v3 = *(v2 + 120);
  v4 = *(v3 + 64);
  v49 = v3 + 64;
  v5 = -1;
  v6 = -1 << *(v3 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v4;
  v8 = (63 - v6) >> 6;
  v52 = *(v2 + 120);
  v53 = v1;
  result = swift_bridgeObjectRetain_n();
  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  v54 = v0;
  while (v7)
  {
LABEL_10:
    v14 = v0[11];
    v13 = v0[12];
    v15 = v0[9];
    outlined init with copy of DependenciesIdentifier(*(v52 + 48) + *(v51 + 72) * (__clz(__rbit64(v7)) | (v10 << 6)), v13, type metadata accessor for DependenciesIdentifier);
    v0 = v54;
    outlined init with copy of DependenciesIdentifier(v13, v14, type metadata accessor for DependenciesIdentifier);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v17 = v54[11];
    if (EnumCaseMultiPayload == 1)
    {
      v18 = *v17;
      v19 = *(*v17 + 16);
      if (v19)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR);
        v20 = *(v53 + 72);
        v21 = (*(v53 + 80) + 32) & ~*(v53 + 80);
        v22 = swift_allocObject();
        result = _swift_stdlib_malloc_size(v22);
        if (!v20)
        {
          goto LABEL_45;
        }

        if (result - v21 == 0x8000000000000000 && v20 == -1)
        {
          goto LABEL_47;
        }

        v22[2] = v19;
        v22[3] = 2 * ((result - v21) / v20);
        v24 = specialized Sequence._copySequenceContents(initializing:)(&v55, v22 + v21, v19, v18);
        result = outlined consume of Set<UUID>.Iterator._Variant();
        if (v24 != v19)
        {
          goto LABEL_46;
        }

        v0 = v54;
      }

      else
      {
        v30 = *v17;

        v22 = MEMORY[0x277D84F90];
      }
    }

    else
    {
      v25 = v54[8];
      v26 = v54[6];
      v50 = v11;
      v27 = *(v53 + 32);
      v27(v25, v17, v26);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR);
      v28 = *(v53 + 72);
      v29 = (*(v53 + 80) + 32) & ~*(v53 + 80);
      v22 = swift_allocObject();
      *(v22 + 1) = xmmword_24AFB0430;
      v0 = v54;
      v27(v22 + v29, v25, v26);
      v11 = v50;
    }

    result = outlined destroy of DependenciesIdentifier(v0[12], type metadata accessor for DependenciesIdentifier);
    v31 = v22[2];
    v32 = v11[2];
    v33 = v32 + v31;
    if (__OFADD__(v32, v31))
    {
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      return result;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || v33 > v11[3] >> 1)
    {
      if (v32 <= v33)
      {
        v34 = v32 + v31;
      }

      else
      {
        v34 = v32;
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v34, 1, v11, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR, MEMORY[0x277CC95F0]);
      v11 = result;
    }

    v7 &= v7 - 1;
    if (v22[2])
    {
      if ((v11[3] >> 1) - v11[2] < v31)
      {
        goto LABEL_43;
      }

      v35 = v0[6];
      v36 = (*(v53 + 80) + 32) & ~*(v53 + 80);
      v37 = *(v53 + 72);
      swift_arrayInitWithCopy();

      if (v31)
      {
        v38 = v11[2];
        v39 = __OFADD__(v38, v31);
        v40 = v38 + v31;
        if (v39)
        {
          goto LABEL_44;
        }

        v11[2] = v40;
      }
    }

    else
    {

      if (v31)
      {
        goto LABEL_42;
      }
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_41;
    }

    if (v12 >= v8)
    {
      break;
    }

    v7 = *(v49 + 8 * v12);
    ++v10;
    if (v7)
    {
      v10 = v12;
      goto LABEL_10;
    }
  }

  v41 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation4UUIDV_SayAFGTt0g5Tf4g_n(v11);

  v42 = *(v41 + 16);
  if (!v42)
  {
    goto LABEL_36;
  }

  v43 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10Foundation4UUIDV_Tt1g5(*(v41 + 16), 0);
  v44 = specialized Sequence._copySequenceContents(initializing:)(&v55, (v43 + ((*(v53 + 80) + 32) & ~*(v53 + 80))), v42, v41);
  outlined consume of Set<UUID>.Iterator._Variant();
  if (v44 != v42)
  {
    __break(1u);
LABEL_36:

    v43 = MEMORY[0x277D84F90];
  }

  v46 = v0[11];
  v45 = v0[12];
  v47 = v0[8];

  v48 = v0[1];

  return v48(v43);
}

uint64_t PairingService.dependencies(for:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for UUID();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v3[7] = *(v5 + 64);
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](PairingService.dependencies(for:), v2, 0);
}

uint64_t PairingService.dependencies(for:)()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[3];
  v6 = *(v0[4] + 112);
  v7 = swift_allocObject();
  swift_weakInit();
  (*(v4 + 16))(v1, v5, v3);
  v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v9 = swift_allocObject();
  v0[9] = v9;
  *(v9 + 16) = v7;
  (*(v4 + 32))(v9 + v8, v1, v3);
  v10 = *(MEMORY[0x277D08960] + 4);
  v15 = (*MEMORY[0x277D08960] + MEMORY[0x277D08960]);
  v11 = swift_task_alloc();
  v0[10] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13FindMyPairing21AccessoryDependenciesVSgMd, &_s13FindMyPairing21AccessoryDependenciesVSgMR);
  *v11 = v0;
  v11[1] = PairingService.dependencies(for:);
  v13 = v0[2];

  return v15(v13, &async function pointer to partial apply for closure #1 in PairingService.dependencies(for:), v9, v12);
}

{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {
    v4 = v3[4];

    return MEMORY[0x2822009F8](PairingService.dependencies(for:), v4, 0);
  }

  else
  {
    v6 = v3[8];
    v5 = v3[9];

    v7 = v3[1];

    return v7();
  }
}

{
  v2 = v0[8];
  v1 = v0[9];

  v3 = v0[1];
  v4 = v0[11];

  return v3();
}

uint64_t closure #1 in PairingService.dependencies(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  v4 = type metadata accessor for DependenciesIdentifier(0);
  v3[11] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in PairingService.dependencies(for:), 0, 0);
}

uint64_t closure #1 in PairingService.dependencies(for:)()
{
  v1 = v0[9];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[13] = Strong;
  if (Strong)
  {
    v3 = Strong;
    v5 = v0[11];
    v4 = v0[12];
    v6 = v0[10];
    v7 = type metadata accessor for UUID();
    (*(*(v7 - 8) + 16))(v4, v6, v7);
    swift_storeEnumTagMultiPayload();

    return MEMORY[0x2822009F8](closure #1 in PairingService.dependencies(for:), v3, 0);
  }

  else
  {
    v8 = type metadata accessor for AccessoryDependencies();
    v9 = v0[12];
    (*(*(v8 - 8) + 56))(v0[8], 1, 1, v8);

    v10 = v0[1];

    return v10();
  }
}

{
  v1 = *(v0 + 104);
  swift_beginAccess();
  *(v0 + 112) = *(v1 + 120);

  return MEMORY[0x2822009F8](closure #1 in PairingService.dependencies(for:), 0, 0);
}

{
  v1 = v0[12];
  if (*(v0[14] + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(v0[12]);
    v1 = v0[12];
    if (v3)
    {
      v4 = v2;
      v5 = v0[8];
      v6 = *(v0[14] + 56);
      v7 = type metadata accessor for AccessoryDependencies();
      v8 = *(v7 - 8);
      outlined init with copy of DependenciesIdentifier(v6 + *(v8 + 72) * v4, v5, type metadata accessor for AccessoryDependencies);
      outlined destroy of DependenciesIdentifier(v1, type metadata accessor for DependenciesIdentifier);

      v9 = 0;
      goto LABEL_7;
    }

    v11 = v0[14];
  }

  else
  {
    v10 = v0[14];
  }

  outlined destroy of DependenciesIdentifier(v1, type metadata accessor for DependenciesIdentifier);
  v7 = type metadata accessor for AccessoryDependencies();
  v8 = *(v7 - 8);
  v9 = 1;
LABEL_7:
  v12 = v0[12];
  (*(v8 + 56))(v0[8], v9, 1, v7);

  v13 = v0[1];

  return v13();
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13FindMyPairing0F16CoordinatorStateOGMd, &_ss23_ContiguousArrayStorageCy13FindMyPairing0F16CoordinatorStateOGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13FindMyPairing17StateManagerErrorOGMd, &_ss23_ContiguousArrayStorageCy13FindMyPairing17StateManagerErrorOGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
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

size_t specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t a1, int64_t a2, char a3, void *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy13FindMyPairing16AccessoryDetailsVGMd, &_ss23_ContiguousArrayStorageCy13FindMyPairing16AccessoryDetailsVGMR, type metadata accessor for AccessoryDetails);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy13FindMyPairing0F13ExecutorStateOGMd, &_ss23_ContiguousArrayStorageCy13FindMyPairing0F13ExecutorStateOGMR, type metadata accessor for PairingExecutorState);
}

size_t specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

size_t _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10Foundation4UUIDV_Tt1g5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR);
  v4 = *(type metadata accessor for UUID() - 8);
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

uint64_t specialized Set._Variant.insert(_:)(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0]);
  v36 = a2;
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0]);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v41 = type metadata accessor for UUID();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation4UUIDVGMd, &_ss11_SetStorageCy10Foundation4UUIDVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0]);
  v15 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0]);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *specialized _NativeSet.copy()()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation4UUIDVGMd, &_ss11_SetStorageCy10Foundation4UUIDVGMR);
  v7 = *v0;
  v8 = static _SetStorage.copy(original:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

uint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for UUID();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation4UUIDVGMd, &_ss11_SetStorageCy10Foundation4UUIDVGMR);
  v10 = static _SetStorage.resize(original:capacity:move:)();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

size_t specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(size_t a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
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

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR);
  v10 = *(type metadata accessor for UUID() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for UUID() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13FindMyPairing9Accessory_pGMd, &_ss23_ContiguousArrayStorageCy13FindMyPairing9Accessory_pGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s13FindMyPairing9Accessory_pMd, &_s13FindMyPairing9Accessory_pMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13FindMyPairing0F16CoordinatorStateOGMd, &_ss23_ContiguousArrayStorageCy13FindMyPairing0F16CoordinatorStateOGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DependenciesIdentifier(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v2 + 40);
  Hasher.init(_seed:)();
  outlined init with copy of DependenciesIdentifier(a1, v12, type metadata accessor for DependenciesIdentifier);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = *v12;
    MEMORY[0x24C236B70](1);
    specialized Set.hash(into:)(v18, v14);
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
    MEMORY[0x24C236B70](0);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0]);
    dispatch thunk of Hashable.hash(into:)();
    (*(v5 + 8))(v8, v4);
  }

  v15 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v15);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v39 = type metadata accessor for UUID();
  v5 = *(v39 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v39);
  v35 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13FindMyPairing22DependenciesIdentifierO_ACtMd, &_s13FindMyPairing22DependenciesIdentifierO_ACtMR);
  v8 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43);
  v10 = &v34 - v9;
  v11 = type metadata accessor for DependenciesIdentifier(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v38 = (&v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v34 - v16;
  MEMORY[0x28223BE20](v15);
  v20 = &v34 - v19;
  v21 = -1 << *(v2 + 32);
  v22 = a2 & ~v21;
  v42 = v2 + 64;
  if ((*(v2 + 64 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
  {
    v23 = *(v18 + 72);
    v40 = ~v21;
    v41 = v23;
    v34 = (v5 + 32);
    v24 = (v5 + 8);
    v36 = a1;
    v37 = v2;
    do
    {
      outlined init with copy of DependenciesIdentifier(*(v2 + 48) + v41 * v22, v20, type metadata accessor for DependenciesIdentifier);
      v25 = *(v43 + 48);
      outlined init with copy of DependenciesIdentifier(v20, v10, type metadata accessor for DependenciesIdentifier);
      outlined init with copy of DependenciesIdentifier(a1, &v10[v25], type metadata accessor for DependenciesIdentifier);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v26 = v38;
        outlined init with copy of DependenciesIdentifier(v10, v38, type metadata accessor for DependenciesIdentifier);
        v27 = *v26;
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v28 = _sSh2eeoiySbShyxG_ABtFZ10Foundation4UUIDV_Tt1g5(v27, *&v10[v25]);

          outlined destroy of DependenciesIdentifier(v20, type metadata accessor for DependenciesIdentifier);
          if (v28)
          {
            goto LABEL_15;
          }

LABEL_12:
          outlined destroy of DependenciesIdentifier(v10, type metadata accessor for DependenciesIdentifier);
          a1 = v36;
          v2 = v37;
          goto LABEL_5;
        }

        outlined destroy of DependenciesIdentifier(v20, type metadata accessor for DependenciesIdentifier);
      }

      else
      {
        outlined init with copy of DependenciesIdentifier(v10, v17, type metadata accessor for DependenciesIdentifier);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          v29 = v35;
          v30 = v39;
          (*v34)(v35, &v10[v25], v39);
          v31 = static UUID.== infix(_:_:)();
          v32 = *v24;
          (*v24)(v29, v30);
          outlined destroy of DependenciesIdentifier(v20, type metadata accessor for DependenciesIdentifier);
          v32(v17, v30);
          if (v31)
          {
LABEL_15:
            outlined destroy of DependenciesIdentifier(v10, type metadata accessor for DependenciesIdentifier);
            return v22;
          }

          goto LABEL_12;
        }

        outlined destroy of DependenciesIdentifier(v20, type metadata accessor for DependenciesIdentifier);
        (*v24)(v17, v39);
      }

      outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v10, &_s13FindMyPairing22DependenciesIdentifierO_ACtMd, &_s13FindMyPairing22DependenciesIdentifierO_ACtMR);
LABEL_5:
      v22 = (v22 + 1) & v40;
    }

    while (((*(v42 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) != 0);
  }

  return v22;
}

uint64_t specialized Dictionary.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = type metadata accessor for DependenciesIdentifier(0);
    outlined destroy of DependenciesIdentifier(v12 + *(*(v13 - 8) + 72) * v8, type metadata accessor for DependenciesIdentifier);
    v14 = *(v11 + 56);
    v15 = type metadata accessor for AccessoryDependencies();
    v22 = *(v15 - 8);
    outlined init with take of AccessoryDependencies(v14 + *(v22 + 72) * v8, a2, type metadata accessor for AccessoryDependencies);
    specialized _NativeDictionary._delete(at:)(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for AccessoryDependencies();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, int a2)
{
  v3 = v2;
  v57 = type metadata accessor for UUID();
  v6 = *(v57 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v57);
  v56 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AccessoryDependencies();
  v61 = *(v9 - 8);
  v10 = *(v61 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v65 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DependenciesIdentifier(0);
  v59 = *(v12 - 8);
  v60 = v12;
  v13 = *(v59 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v58 = (&v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v63 = &v52 - v16;
  v17 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v18 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy13FindMyPairing22DependenciesIdentifierOAC09AccessoryF0VGMd, &_ss18_DictionaryStorageCy13FindMyPairing22DependenciesIdentifierOAC09AccessoryF0VGMR);
  v62 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v20 = result;
  if (*(v17 + 16))
  {
    v52 = v3;
    v21 = 0;
    v22 = (v17 + 64);
    v23 = 1 << *(v17 + 32);
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v25 = v24 & *(v17 + 64);
    v26 = (v23 + 63) >> 6;
    v54 = (v6 + 32);
    v53 = (v6 + 8);
    v27 = result + 64;
    v28 = v17;
    v55 = v17;
    v29 = v63;
    while (v25)
    {
      v31 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
LABEL_17:
      v34 = v31 | (v21 << 6);
      v35 = *(v28 + 48);
      v64 = *(v59 + 72);
      v36 = v35 + v64 * v34;
      if (v62)
      {
        outlined init with take of AccessoryDependencies(v36, v29, type metadata accessor for DependenciesIdentifier);
        v37 = *(v61 + 72);
        outlined init with take of AccessoryDependencies(*(v28 + 56) + v37 * v34, v65, type metadata accessor for AccessoryDependencies);
      }

      else
      {
        outlined init with copy of DependenciesIdentifier(v36, v29, type metadata accessor for DependenciesIdentifier);
        v37 = *(v61 + 72);
        outlined init with copy of DependenciesIdentifier(*(v28 + 56) + v37 * v34, v65, type metadata accessor for AccessoryDependencies);
      }

      v38 = *(v20 + 40);
      Hasher.init(_seed:)();
      v39 = v58;
      outlined init with copy of DependenciesIdentifier(v29, v58, type metadata accessor for DependenciesIdentifier);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v40 = *v39;
        MEMORY[0x24C236B70](1);
        specialized Set.hash(into:)(v66, v40);
      }

      else
      {
        v41 = v56;
        v42 = v57;
        (*v54)(v56, v39, v57);
        MEMORY[0x24C236B70](0);
        lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0]);
        dispatch thunk of Hashable.hash(into:)();
        v43 = v41;
        v28 = v55;
        (*v53)(v43, v42);
      }

      result = Hasher._finalize()();
      v44 = -1 << *(v20 + 32);
      v45 = result & ~v44;
      v46 = v45 >> 6;
      v29 = v63;
      if (((-1 << v45) & ~*(v27 + 8 * (v45 >> 6))) == 0)
      {
        v47 = 0;
        v48 = (63 - v44) >> 6;
        while (++v46 != v48 || (v47 & 1) == 0)
        {
          v49 = v46 == v48;
          if (v46 == v48)
          {
            v46 = 0;
          }

          v47 |= v49;
          v50 = *(v27 + 8 * v46);
          if (v50 != -1)
          {
            v30 = __clz(__rbit64(~v50)) + (v46 << 6);
            goto LABEL_9;
          }
        }

LABEL_42:
        __break(1u);
        return result;
      }

      v30 = __clz(__rbit64((-1 << v45) & ~*(v27 + 8 * (v45 >> 6)))) | v45 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v27 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
      outlined init with take of AccessoryDependencies(v29, *(v20 + 48) + v64 * v30, type metadata accessor for DependenciesIdentifier);
      result = outlined init with take of AccessoryDependencies(v65, *(v20 + 56) + v37 * v30, type metadata accessor for AccessoryDependencies);
      ++*(v20 + 16);
    }

    v32 = v21;
    while (1)
    {
      v21 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        __break(1u);
        goto LABEL_42;
      }

      if (v21 >= v26)
      {
        break;
      }

      v33 = v22[v21];
      ++v32;
      if (v33)
      {
        v31 = __clz(__rbit64(v33));
        v25 = (v33 - 1) & v33;
        goto LABEL_17;
      }
    }

    if ((v62 & 1) == 0)
    {

      v3 = v52;
      goto LABEL_40;
    }

    v51 = 1 << *(v28 + 32);
    v3 = v52;
    if (v51 >= 64)
    {
      bzero(v22, ((v51 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v22 = -1 << v51;
    }

    *(v55 + 16) = 0;
  }

LABEL_40:
  *v3 = v20;
  return result;
}

unint64_t specialized _NativeDictionary._delete(at:)(int64_t a1, uint64_t a2)
{
  v47 = type metadata accessor for UUID();
  v4 = *(v47 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v47);
  v46 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DependenciesIdentifier(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = (&v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x28223BE20](v10);
  v15 = &v42 - v14;
  v16 = a2 + 64;
  v17 = -1 << *(a2 + 32);
  v18 = (a1 + 1) & ~v17;
  if ((*(a2 + 64 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
  {
    v19 = ~v17;
    v48 = (_HashTable.previousHole(before:)() + 1) & ~v17;
    v49 = v19;
    v20 = *(v8 + 72);
    v43 = (v4 + 8);
    v44 = (v4 + 32);
    v21 = v20;
    v45 = a2;
    v50 = v20;
    do
    {
      v22 = v21 * v18;
      outlined init with copy of DependenciesIdentifier(*(a2 + 48) + v21 * v18, v15, type metadata accessor for DependenciesIdentifier);
      v23 = *(a2 + 40);
      Hasher.init(_seed:)();
      outlined init with copy of DependenciesIdentifier(v15, v12, type metadata accessor for DependenciesIdentifier);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v24 = *v12;
        MEMORY[0x24C236B70](1);
        specialized Set.hash(into:)(v51, v24);
      }

      else
      {
        v25 = v16;
        v26 = v7;
        v27 = v46;
        v28 = v47;
        (*v44)(v46, v12, v47);
        MEMORY[0x24C236B70](0);
        lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0]);
        dispatch thunk of Hashable.hash(into:)();
        v29 = v27;
        v7 = v26;
        v16 = v25;
        a2 = v45;
        (*v43)(v29, v28);
      }

      v30 = Hasher._finalize()();
      result = outlined destroy of DependenciesIdentifier(v15, type metadata accessor for DependenciesIdentifier);
      v31 = v49;
      v32 = v30 & v49;
      if (a1 >= v48)
      {
        v21 = v50;
        if (v32 < v48)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v21 = v50;
        if (v32 >= v48)
        {
          goto LABEL_13;
        }
      }

      if (a1 >= v32)
      {
LABEL_13:
        if (v21 * a1 < v22 || *(a2 + 48) + v21 * a1 >= (*(a2 + 48) + v22 + v21))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v21 * a1 != v22)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v33 = *(a2 + 56);
        v34 = *(*(type metadata accessor for AccessoryDependencies() - 8) + 72);
        v35 = v34 * a1;
        result = v33 + v34 * a1;
        v36 = v34 * v18;
        v37 = v33 + v34 * v18 + v34;
        if (v35 < v36 || result >= v37)
        {
          result = swift_arrayInitWithTakeFrontToBack();
          a1 = v18;
          v21 = v50;
        }

        else
        {
          a1 = v18;
          v21 = v50;
          if (v35 != v36)
          {
            result = swift_arrayInitWithTakeBackToFront();
            a1 = v18;
          }
        }
      }

LABEL_4:
      v18 = (v18 + 1) & v31;
    }

    while (((*(v16 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) != 0);
  }

  *(v16 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v39 = *(a2 + 16);
  v40 = __OFSUB__(v39, 1);
  v41 = v39 - 1;
  if (v40)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v41;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for DependenciesIdentifier(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v15 = *(v12 + 16);
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = *(v12 + 24);
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, a3 & 1);
    v24 = *v4;
    v25 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v18 & 1) == (v26 & 1))
    {
      v14 = v25;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      outlined init with copy of DependenciesIdentifier(a2, v11, type metadata accessor for DependenciesIdentifier);
      return specialized _NativeDictionary._insert(at:key:value:)(v14, v11, a1, v20);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = v21 + *(*(type metadata accessor for AccessoryDependencies() - 8) + 72) * v14;

  return outlined assign with take of AccessoryDependencies(a1, v22);
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for DependenciesIdentifier(0);
  outlined init with take of AccessoryDependencies(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for DependenciesIdentifier);
  v10 = a4[7];
  v11 = type metadata accessor for AccessoryDependencies();
  result = outlined init with take of AccessoryDependencies(a3, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for AccessoryDependencies);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  v2 = type metadata accessor for AccessoryDependencies();
  v31 = *(v2 - 8);
  v3 = *(v31 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DependenciesIdentifier(0);
  v30 = *(v6 - 8);
  v7 = *(v30 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy13FindMyPairing22DependenciesIdentifierOAC09AccessoryF0VGMd, &_ss18_DictionaryStorageCy13FindMyPairing22DependenciesIdentifierOAC09AccessoryF0VGMR);
  v10 = *v0;
  v11 = static _DictionaryStorage.copy(original:)();
  v12 = v11;
  if (*(v10 + 16))
  {
    v29 = v1;
    result = (v11 + 64);
    v14 = v10 + 64;
    v15 = ((1 << *(v12 + 32)) + 63) >> 6;
    if (v12 != v10 || result >= v14 + 8 * v15)
    {
      result = memmove(result, (v10 + 64), 8 * v15);
    }

    v16 = 0;
    *(v12 + 16) = *(v10 + 16);
    v17 = 1 << *(v10 + 32);
    v18 = *(v10 + 64);
    v19 = -1;
    if (v17 < 64)
    {
      v19 = ~(-1 << v17);
    }

    v20 = v19 & v18;
    v21 = (v17 + 63) >> 6;
    if ((v19 & v18) != 0)
    {
      do
      {
        v22 = __clz(__rbit64(v20));
        v20 &= v20 - 1;
LABEL_14:
        v25 = v22 | (v16 << 6);
        v26 = *(v30 + 72) * v25;
        outlined init with copy of DependenciesIdentifier(*(v10 + 48) + v26, v9, type metadata accessor for DependenciesIdentifier);
        v27 = *(v31 + 72) * v25;
        outlined init with copy of DependenciesIdentifier(*(v10 + 56) + v27, v5, type metadata accessor for AccessoryDependencies);
        outlined init with take of AccessoryDependencies(v9, *(v12 + 48) + v26, type metadata accessor for DependenciesIdentifier);
        result = outlined init with take of AccessoryDependencies(v5, *(v12 + 56) + v27, type metadata accessor for AccessoryDependencies);
      }

      while (v20);
    }

    v23 = v16;
    while (1)
    {
      v16 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v16 >= v21)
      {

        v1 = v29;
        goto LABEL_18;
      }

      v24 = *(v14 + 8 * v16);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v20 = (v24 - 1) & v24;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v12;
  }

  return result;
}

uint64_t specialized Set.hash(into:)(__int128 *a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[3];
  v26 = a1[2];
  v27 = v9;
  v28 = *(a1 + 8);
  v11 = *a1;
  v10 = a1[1];
  v23[0] = a1;
  v24 = v11;
  v25 = v10;
  v12 = Hasher._finalize()();
  v13 = 1 << *(a2 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a2 + 56);
  v16 = (v13 + 63) >> 6;
  v23[2] = v5 + 16;
  v23[3] = v12;
  v23[1] = v5 + 8;

  v18 = 0;
  for (i = 0; v15; v18 ^= v22)
  {
    v20 = i;
LABEL_9:
    v21 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    (*(v5 + 16))(v8, *(a2 + 48) + *(v5 + 72) * (v21 | (v20 << 6)), v4);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0]);
    v22 = dispatch thunk of Hashable._rawHashValue(seed:)();
    result = (*(v5 + 8))(v8, v4);
  }

  while (1)
  {
    v20 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v20 >= v16)
    {

      return MEMORY[0x24C236B70](v18);
    }

    v15 = *(a2 + 56 + 8 * v20);
    ++i;
    if (v15)
    {
      i = v20;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v41 = type metadata accessor for UUID();
  v43 = *(v41 - 8);
  v8 = *(v43 + 64);
  v9 = (MEMORY[0x28223BE20])();
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v40 = &v34 - v12;
  v13 = a4 + 56;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return a3;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    result = 0;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 56;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      a3 = v39;
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      result = a1;
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    a3 = result;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t specialized static DependenciesIdentifier.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v28 = type metadata accessor for UUID();
  v4 = *(v28 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v28);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DependenciesIdentifier(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = (&v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v14 = &v27 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13FindMyPairing22DependenciesIdentifierO_ACtMd, &_s13FindMyPairing22DependenciesIdentifierO_ACtMR);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v27 - v18;
  v20 = *(v17 + 56);
  outlined init with copy of DependenciesIdentifier(a1, &v27 - v18, type metadata accessor for DependenciesIdentifier);
  outlined init with copy of DependenciesIdentifier(a2, &v19[v20], type metadata accessor for DependenciesIdentifier);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with copy of DependenciesIdentifier(v19, v12, type metadata accessor for DependenciesIdentifier);
    v21 = *v12;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v22 = _sSh2eeoiySbShyxG_ABtFZ10Foundation4UUIDV_Tt1g5(v21, *&v19[v20]);

LABEL_9:
      outlined destroy of DependenciesIdentifier(v19, type metadata accessor for DependenciesIdentifier);
      return v22 & 1;
    }
  }

  else
  {
    outlined init with copy of DependenciesIdentifier(v19, v14, type metadata accessor for DependenciesIdentifier);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v23 = &v19[v20];
      v24 = v28;
      (*(v4 + 32))(v7, v23, v28);
      v22 = static UUID.== infix(_:_:)();
      v25 = *(v4 + 8);
      v25(v7, v24);
      v25(v14, v24);
      goto LABEL_9;
    }

    (*(v4 + 8))(v14, v28);
  }

  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v19, &_s13FindMyPairing22DependenciesIdentifierO_ACtMd, &_s13FindMyPairing22DependenciesIdentifierO_ACtMR);
  v22 = 0;
  return v22 & 1;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation4UUIDV_SayAFGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0]);
  result = MEMORY[0x24C236930](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      specialized Set._Variant.insert(_:)(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t type metadata accessor for DependenciesIdentifier(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t partial apply for closure #1 in PairingService.pairingDependencies.getter(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = dispatch thunk of PairingValidator.ack(_:);

  return closure #1 in PairingService.pairingDependencies.getter(a1, v1);
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC13FindMyPairing22DependenciesIdentifierO_AC09AccessoryF0VTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13FindMyPairing22DependenciesIdentifierO_AA09AccessoryD0VtMd, &_s13FindMyPairing22DependenciesIdentifierO_AA09AccessoryD0VtMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy13FindMyPairing22DependenciesIdentifierOAC09AccessoryF0VGMd, &_ss18_DictionaryStorageCy13FindMyPairing22DependenciesIdentifierOAC09AccessoryF0VGMR);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of PairingContext?(v10, v6, &_s13FindMyPairing22DependenciesIdentifierO_AA09AccessoryD0VtMd, &_s13FindMyPairing22DependenciesIdentifierO_AA09AccessoryD0VtMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for DependenciesIdentifier(0);
      outlined init with take of AccessoryDependencies(v6, v15 + *(*(v16 - 8) + 72) * v14, type metadata accessor for DependenciesIdentifier);
      v17 = v8[7];
      v18 = type metadata accessor for AccessoryDependencies();
      result = outlined init with take of AccessoryDependencies(&v6[v9], v17 + *(*(v18 - 8) + 72) * v14, type metadata accessor for AccessoryDependencies);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t partial apply for closure #1 in PairingService.pairAccessories(_:context:)(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s13FindMyPairing0C7ContextOSgMd, &_s13FindMyPairing0C7ContextOSgMR) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = dispatch thunk of PairingValidator.ack(_:);

  return closure #1 in PairingService.pairAccessories(_:context:)(a1, v6, v7, v1 + v5);
}

uint64_t partial apply for closure #2 in PairingService.pairAccessories(_:context:)()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = dispatch thunk of PairingValidator.ack(_:);

  return closure #2 in PairingService.pairAccessories(_:context:)(v2, v0 + 24);
}

unint64_t lazy protocol witness table accessor for type PairingService.Error and conformance PairingService.Error()
{
  result = lazy protocol witness table cache variable for type PairingService.Error and conformance PairingService.Error;
  if (!lazy protocol witness table cache variable for type PairingService.Error and conformance PairingService.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PairingService.Error and conformance PairingService.Error);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PairingService.Error and conformance PairingService.Error;
  if (!lazy protocol witness table cache variable for type PairingService.Error and conformance PairingService.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PairingService.Error and conformance PairingService.Error);
  }

  return result;
}

uint64_t partial apply for closure #1 in PairingService.dependencies(for:)(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = dispatch thunk of PairingValidator.ack(_:);

  return closure #1 in PairingService.dependencies(for:)(a1, v6, v1 + v5);
}

unint64_t lazy protocol witness table accessor for type BatteryLevel and conformance BatteryLevel()
{
  result = lazy protocol witness table cache variable for type BatteryLevel and conformance BatteryLevel;
  if (!lazy protocol witness table cache variable for type BatteryLevel and conformance BatteryLevel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BatteryLevel and conformance BatteryLevel);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type UUID and conformance UUID(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t instantiation function for generic protocol witness table for PairingService(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type PairingService and conformance PairingService, a2, type metadata accessor for PairingService);
  *(a1 + 8) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for BatteryLevel(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for BatteryLevel(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for PairingConfiguration(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PairingConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t destructiveInjectEnumTag for PairingConfiguration(uint64_t result, unsigned int a2)
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

void type metadata completion function for DependenciesIdentifier()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Set<UUID>();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void type metadata accessor for Set<UUID>()
{
  if (!lazy cache variable for type metadata for Set<UUID>)
  {
    type metadata accessor for UUID();
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0]);
    v0 = type metadata accessor for Set();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Set<UUID>);
    }
  }
}

void type metadata completion function for ObservationStreams()
{
  type metadata accessor for AsyncStream<(Transaction, PairingCoordinatorState)>(319, &lazy cache variable for type metadata for AsyncStream<(Transaction, PairingCoordinatorState)>, &_s10FindMyBase11TransactionC_0aB7Pairing0E16CoordinatorStateOtMd, &_s10FindMyBase11TransactionC_0aB7Pairing0E16CoordinatorStateOtMR);
  if (v0 <= 0x3F)
  {
    type metadata accessor for AsyncStream<(Transaction, PairingCoordinatorState)>(319, &lazy cache variable for type metadata for AsyncStream<(Transaction, AnalyticsEvent)>, &_s10FindMyBase11TransactionC_0aB7Pairing14AnalyticsEventOtMd, &_s10FindMyBase11TransactionC_0aB7Pairing14AnalyticsEventOtMR);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
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

void type metadata accessor for AsyncStream<(Transaction, PairingCoordinatorState)>(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = type metadata accessor for AsyncStream();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t dispatch thunk of PairingServiceType.pairAccessories(_:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 16);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = dispatch thunk of PairingServiceProxy.reevaluateDependencies(for:);

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of PairingService.pairingDependencies.getter()
{
  v2 = *(*v0 + 112);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = dispatch thunk of PairingService.pairingDependencies.getter;

  return v6();
}

uint64_t dispatch thunk of PairingService.pairingDependencies.getter(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of PairingService.pairAccessories(_:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 152);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = dispatch thunk of PairingValidator.ack(_:);

  return v12(a1, a2, a3);
}

uint64_t getEnumTagSinglePayload for PairingService.Error(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PairingService.Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t outlined init with copy of DependenciesIdentifier(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t partial apply for closure #1 in closure #2 in PairingService.pairAccessories(_:context:)(uint64_t a1)
{
  v4 = *(type metadata accessor for AccessoryDependencies() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = dispatch thunk of PairingServiceProxy.reevaluateDependencies(for:);

  return closure #1 in closure #2 in PairingService.pairAccessories(_:context:)(a1, v7, v8, v9, v1 + v5, v1 + v6);
}

uint64_t outlined destroy of DependenciesIdentifier(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t partial apply for closure #1 in PairingService.removeCoordinator(_:)()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = dispatch thunk of PairingValidator.ack(_:);

  return closure #1 in PairingService.removeCoordinator(_:)(v2, v3);
}

uint64_t outlined init with take of PairingContext?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t outlined init with take of AccessoryDependencies(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void specialized PairingService.logNoPairingDependenciesError(for:)(uint64_t a1, uint64_t *a2, const char *a3, const char *a4, const char *a5)
{
  v62 = a5;
  v63 = a3;
  v60 = a4;
  v64 = a2;
  v6 = type metadata accessor for DependenciesIdentifier(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v61 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v60 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v60 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v60 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v60 - v20;
  v22 = type metadata accessor for UUID();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v60 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v60 - v28;
  outlined init with copy of DependenciesIdentifier(a1, v17, type metadata accessor for DependenciesIdentifier);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined destroy of DependenciesIdentifier(v17, type metadata accessor for DependenciesIdentifier);
    v30 = 1;
  }

  else
  {
    (*(v23 + 32))(v21, v17, v22);
    v30 = 0;
  }

  (*(v23 + 56))(v21, v30, 1, v22);
  if ((*(v23 + 48))(v21, 1, v22) != 1)
  {
    goto LABEL_9;
  }

  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v21, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined init with copy of DependenciesIdentifier(a1, v15, type metadata accessor for DependenciesIdentifier);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v31 = *v15;
    v32 = *(*v15 + 16);
    if (v32)
    {
      v27 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10Foundation4UUIDV_Tt1g5(*(*v15 + 16), 0);
      v33 = specialized Sequence._copySequenceContents(initializing:)(&v65, &v27[(*(v23 + 80) + 32) & ~*(v23 + 80)], v32, v31);
      outlined consume of Set<UUID>.Iterator._Variant();
      if (v33 != v32)
      {
        __break(1u);
LABEL_9:
        (*(v23 + 32))(v29, v21, v22);
        if (one-time initialization token for pairingService != -1)
        {
          swift_once();
        }

        v34 = type metadata accessor for Logger();
        __swift_project_value_buffer(v34, static Logger.pairingService);
        (*(v23 + 16))(v27, v29, v22);
        v35 = Logger.logObject.getter();
        v36 = v64(v35);
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          v64 = swift_slowAlloc();
          v65 = v64;
          *v37 = 141558275;
          *(v37 + 4) = 1752392040;
          *(v37 + 12) = 2081;
          lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0]);
          v38 = dispatch thunk of CustomStringConvertible.description.getter();
          v40 = v39;
          v41 = *(v23 + 8);
          v41(v27, v22);
          v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v40, &v65);

          *(v37 + 14) = v42;
          _os_log_impl(&dword_24AF48000, v35, v36, v63, v37, 0x16u);
          v43 = v64;
          __swift_destroy_boxed_opaque_existential_1Tm(v64);
          MEMORY[0x24C237030](v43, -1, -1);
          MEMORY[0x24C237030](v37, -1, -1);

          v41(v29, v22);
        }

        else
        {

          v53 = *(v23 + 8);
          v53(v27, v22);
          v53(v29, v22);
        }

        return;
      }
    }

    else
    {
      v54 = *v15;

      v27 = MEMORY[0x277D84F90];
    }

    if (one-time initialization token for pairingService != -1)
    {
      swift_once();
    }

    v55 = type metadata accessor for Logger();
    __swift_project_value_buffer(v55, static Logger.pairingService);

    v56 = Logger.logObject.getter();
    v57 = (v64)();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 134217984;
      v59 = *(v27 + 2);

      *(v58 + 4) = v59;

      _os_log_impl(&dword_24AF48000, v56, v57, v60, v58, 0xCu);
      MEMORY[0x24C237030](v58, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    outlined destroy of DependenciesIdentifier(v15, type metadata accessor for DependenciesIdentifier);
    if (one-time initialization token for pairingService != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    __swift_project_value_buffer(v44, static Logger.pairingService);
    outlined init with copy of DependenciesIdentifier(a1, v12, type metadata accessor for DependenciesIdentifier);
    v45 = Logger.logObject.getter();
    v46 = v64(v45);
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v65 = v48;
      *v47 = 136315138;
      outlined init with copy of DependenciesIdentifier(v12, v61, type metadata accessor for DependenciesIdentifier);
      v49 = String.init<A>(describing:)();
      v51 = v50;
      outlined destroy of DependenciesIdentifier(v12, type metadata accessor for DependenciesIdentifier);
      v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v51, &v65);

      *(v47 + 4) = v52;
      _os_log_impl(&dword_24AF48000, v45, v46, v62, v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v48);
      MEMORY[0x24C237030](v48, -1, -1);
      MEMORY[0x24C237030](v47, -1, -1);
    }

    else
    {

      outlined destroy of DependenciesIdentifier(v12, type metadata accessor for DependenciesIdentifier);
    }
  }
}

uint64_t partial apply for closure #1 in PairingService.monitor(streamFrom:for:)()
{
  v2 = *(type metadata accessor for DependenciesIdentifier(0) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = dispatch thunk of PairingValidator.ack(_:);

  return closure #1 in PairingService.monitor(streamFrom:for:)(v4, v5, v6, v0 + v3);
}

unint64_t outlined copy of PairingCoordinatorState(unint64_t result)
{
  if (result >= 0x11)
  {
    JUMPOUT(0x24C236EC0);
  }

  return result;
}

unint64_t outlined consume of PairingCoordinatorState(unint64_t result)
{
  if (result >= 0x11)
  {
    JUMPOUT(0x24C236EB0);
  }

  return result;
}

void specialized PairingService.logPairingStep(for:previousCheckpoint:pairingState:duration:)(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t *a4, uint64_t a5, unint64_t a6)
{
  v92 = a3;
  v93 = a6;
  v90 = a2;
  v91 = a5;
  v8 = type metadata accessor for DependenciesIdentifier(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v88 = &v85[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v10);
  v89 = &v85[-v13];
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v85[-v15];
  MEMORY[0x28223BE20](v14);
  v18 = &v85[-v17];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v85[-v21];
  v23 = type metadata accessor for UUID();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v85[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v26);
  v30 = &v85[-v29];
  v31 = *a4;
  outlined init with copy of DependenciesIdentifier(a1, v18, type metadata accessor for DependenciesIdentifier);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined destroy of DependenciesIdentifier(v18, type metadata accessor for DependenciesIdentifier);
    v32 = 1;
  }

  else
  {
    (*(v24 + 32))(v22, v18, v23);
    v32 = 0;
  }

  (*(v24 + 56))(v22, v32, 1, v23);
  if ((*(v24 + 48))(v22, 1, v23) != 1)
  {
    goto LABEL_9;
  }

  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v22, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined init with copy of DependenciesIdentifier(a1, v16, type metadata accessor for DependenciesIdentifier);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v33 = *v16;
    v34 = *(*v16 + 16);
    if (v34)
    {
      v22 = v31;
      v35 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10Foundation4UUIDV_Tt1g5(v34, 0);
      v36 = specialized Sequence._copySequenceContents(initializing:)(&v95, (v35 + ((*(v24 + 80) + 32) & ~*(v24 + 80))), v34, v33);
      outlined consume of Set<UUID>.Iterator._Variant();
      if (v36 != v34)
      {
        __break(1u);
LABEL_9:
        (*(v24 + 32))(v30, v22, v23);
        if (one-time initialization token for pairingTime != -1)
        {
          swift_once();
        }

        v37 = type metadata accessor for Logger();
        __swift_project_value_buffer(v37, static Logger.pairingTime);
        (*(v24 + 16))(v28, v30, v23);
        v38 = v92;

        outlined copy of PairingCoordinatorState(v31);
        v39 = v93;

        v40 = Logger.logObject.getter();
        v41 = static os_log_type_t.default.getter();

        outlined consume of PairingCoordinatorState(v31);

        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v89 = swift_slowAlloc();
          v95 = v89;
          *v42 = 141559043;
          *(v42 + 4) = 1752392040;
          *(v42 + 12) = 2081;
          lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0]);
          v87 = v40;
          v43 = dispatch thunk of CustomStringConvertible.description.getter();
          v86 = v41;
          v45 = v44;
          v88 = v30;
          v46 = *(v24 + 8);
          v46(v28, v23);
          v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v45, &v95);

          *(v42 + 14) = v47;
          *(v42 + 22) = 2082;
          *(v42 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v90, v38, &v95);
          *(v42 + 32) = 2082;
          v94 = v31;
          outlined copy of PairingCoordinatorState(v31);
          v48 = PairingCoordinatorState.description.getter();
          v50 = v49;
          outlined consume of PairingCoordinatorState(v94);
          v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v50, &v95);

          *(v42 + 34) = v51;
          *(v42 + 42) = 2082;
          *(v42 + 44) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v91, v39, &v95);
          v52 = v87;
          _os_log_impl(&dword_24AF48000, v87, v86, "Coordinator for %{private,mask.hash}s: duration for %{public}s->%{public}s: %{public}s.", v42, 0x34u);
          v53 = v89;
          swift_arrayDestroy();
          MEMORY[0x24C237030](v53, -1, -1);
          MEMORY[0x24C237030](v42, -1, -1);

          v46(v88, v23);
        }

        else
        {

          v71 = *(v24 + 8);
          v71(v28, v23);
          v71(v30, v23);
        }

        return;
      }
    }

    else
    {
      v22 = v31;

      v35 = MEMORY[0x277D84F90];
    }

    v72 = v92;
    v73 = v93;
    if (one-time initialization token for pairingTime != -1)
    {
      swift_once();
    }

    v74 = type metadata accessor for Logger();
    __swift_project_value_buffer(v74, static Logger.pairingTime);

    v75 = v22;
    outlined copy of PairingCoordinatorState(v22);

    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.default.getter();

    outlined consume of PairingCoordinatorState(v75);

    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v95 = v79;
      *v78 = 134218754;
      v80 = *(v35 + 16);

      *(v78 + 4) = v80;

      *(v78 + 12) = 2082;
      *(v78 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v90, v72, &v95);
      *(v78 + 22) = 2082;
      v94 = v75;
      outlined copy of PairingCoordinatorState(v75);
      v81 = PairingCoordinatorState.description.getter();
      v83 = v82;
      outlined consume of PairingCoordinatorState(v94);
      v84 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v83, &v95);

      *(v78 + 24) = v84;
      *(v78 + 32) = 2082;
      *(v78 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v91, v73, &v95);
      _os_log_impl(&dword_24AF48000, v76, v77, "Coordinator for multi-pairing identifier set of %ld accessories: duration for %{public}s->%{public}s: %{public}s.", v78, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x24C237030](v79, -1, -1);
      MEMORY[0x24C237030](v78, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    outlined destroy of DependenciesIdentifier(v16, type metadata accessor for DependenciesIdentifier);
    if (one-time initialization token for pairingTime != -1)
    {
      swift_once();
    }

    v54 = type metadata accessor for Logger();
    __swift_project_value_buffer(v54, static Logger.pairingTime);
    v55 = v89;
    outlined init with copy of DependenciesIdentifier(a1, v89, type metadata accessor for DependenciesIdentifier);
    v56 = v92;

    outlined copy of PairingCoordinatorState(v31);
    v57 = v93;

    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.default.getter();

    outlined consume of PairingCoordinatorState(v31);

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v95 = v87;
      *v60 = 136315906;
      outlined init with copy of DependenciesIdentifier(v55, v88, type metadata accessor for DependenciesIdentifier);
      v61 = String.init<A>(describing:)();
      v62 = v55;
      v64 = v63;
      outlined destroy of DependenciesIdentifier(v62, type metadata accessor for DependenciesIdentifier);
      v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v64, &v95);

      *(v60 + 4) = v65;
      *(v60 + 12) = 2082;
      *(v60 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v90, v56, &v95);
      *(v60 + 22) = 2082;
      v94 = v31;
      outlined copy of PairingCoordinatorState(v31);
      v66 = PairingCoordinatorState.description.getter();
      v68 = v67;
      outlined consume of PairingCoordinatorState(v94);
      v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v68, &v95);

      *(v60 + 24) = v69;
      *(v60 + 32) = 2082;
      *(v60 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v91, v57, &v95);
      _os_log_impl(&dword_24AF48000, v58, v59, "Coordinator for %s: duration for %{public}s->%{public}s: %{public}s.", v60, 0x2Au);
      v70 = v87;
      swift_arrayDestroy();
      MEMORY[0x24C237030](v70, -1, -1);
      MEMORY[0x24C237030](v60, -1, -1);
    }

    else
    {

      outlined destroy of DependenciesIdentifier(v55, type metadata accessor for DependenciesIdentifier);
    }
  }
}

void specialized PairingService.logCoordinatorState(for:pairingState:)(uint64_t a1, unint64_t *a2)
{
  v4 = type metadata accessor for DependenciesIdentifier(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v71 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v72 = &v71 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v71 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v71 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v71 - v17;
  v19 = type metadata accessor for UUID();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v71 - v25;
  v27 = *a2;
  outlined init with copy of DependenciesIdentifier(a1, v14, type metadata accessor for DependenciesIdentifier);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined destroy of DependenciesIdentifier(v14, type metadata accessor for DependenciesIdentifier);
    v28 = 1;
  }

  else
  {
    (*(v20 + 32))(v18, v14, v19);
    v28 = 0;
  }

  (*(v20 + 56))(v18, v28, 1, v19);
  if ((*(v20 + 48))(v18, 1, v19) != 1)
  {
    goto LABEL_9;
  }

  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v18, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined init with copy of DependenciesIdentifier(a1, v12, type metadata accessor for DependenciesIdentifier);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = *v12;
    v30 = *(*v12 + 16);
    if (v30)
    {
      v19 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10Foundation4UUIDV_Tt1g5(*(*v12 + 16), 0);
      v24 = specialized Sequence._copySequenceContents(initializing:)(&v74, (v19 + ((*(v20 + 80) + 32) & ~*(v20 + 80))), v30, v29);
      outlined consume of Set<UUID>.Iterator._Variant();
      if (v24 != v30)
      {
        __break(1u);
LABEL_9:
        (*(v20 + 32))(v26, v18, v19);
        if (one-time initialization token for pairingService != -1)
        {
          swift_once();
        }

        v31 = type metadata accessor for Logger();
        __swift_project_value_buffer(v31, static Logger.pairingService);
        (*(v20 + 16))(v24, v26, v19);
        outlined copy of PairingCoordinatorState(v27);
        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.default.getter();
        outlined consume of PairingCoordinatorState(v27);
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v72 = swift_slowAlloc();
          v74 = v72;
          *v34 = 141558531;
          *(v34 + 4) = 1752392040;
          *(v34 + 12) = 2081;
          lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0]);
          v35 = dispatch thunk of CustomStringConvertible.description.getter();
          v37 = v36;
          v71 = v26;
          v38 = *(v20 + 8);
          v38(v24, v19);
          v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, &v74);

          *(v34 + 14) = v39;
          *(v34 + 22) = 2082;
          v73 = v27;
          outlined copy of PairingCoordinatorState(v27);
          v40 = PairingCoordinatorState.description.getter();
          v42 = v41;
          outlined consume of PairingCoordinatorState(v73);
          v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v42, &v74);

          *(v34 + 24) = v43;
          _os_log_impl(&dword_24AF48000, v32, v33, "Coordinator for %{private,mask.hash}s, state = %{public}s.", v34, 0x20u);
          v44 = v72;
          swift_arrayDestroy();
          MEMORY[0x24C237030](v44, -1, -1);
          MEMORY[0x24C237030](v34, -1, -1);

          v38(v71, v19);
        }

        else
        {

          v59 = *(v20 + 8);
          v59(v24, v19);
          v59(v26, v19);
        }

        return;
      }
    }

    else
    {
      v60 = *v12;

      v19 = MEMORY[0x277D84F90];
    }

    if (one-time initialization token for pairingService != -1)
    {
      swift_once();
    }

    v61 = type metadata accessor for Logger();
    __swift_project_value_buffer(v61, static Logger.pairingService);
    outlined copy of PairingCoordinatorState(v27);

    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.default.getter();
    outlined consume of PairingCoordinatorState(v27);
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v74 = v65;
      *v64 = 134218242;
      v66 = *(v19 + 16);

      *(v64 + 4) = v66;

      *(v64 + 12) = 2082;
      v73 = v27;
      outlined copy of PairingCoordinatorState(v27);
      v67 = PairingCoordinatorState.description.getter();
      v69 = v68;
      outlined consume of PairingCoordinatorState(v73);
      v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v69, &v74);

      *(v64 + 14) = v70;
      _os_log_impl(&dword_24AF48000, v62, v63, "Coordinator for multi-pairing identifier set of %ld accessories, state = %{public}s.", v64, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v65);
      MEMORY[0x24C237030](v65, -1, -1);
      MEMORY[0x24C237030](v64, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    outlined destroy of DependenciesIdentifier(v12, type metadata accessor for DependenciesIdentifier);
    if (one-time initialization token for pairingService != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    __swift_project_value_buffer(v45, static Logger.pairingService);
    v46 = v72;
    outlined init with copy of DependenciesIdentifier(a1, v72, type metadata accessor for DependenciesIdentifier);
    outlined copy of PairingCoordinatorState(v27);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();
    outlined consume of PairingCoordinatorState(v27);
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v74 = v50;
      *v49 = 136315394;
      outlined init with copy of DependenciesIdentifier(v46, v71, type metadata accessor for DependenciesIdentifier);
      v51 = String.init<A>(describing:)();
      v53 = v52;
      outlined destroy of DependenciesIdentifier(v46, type metadata accessor for DependenciesIdentifier);
      v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, &v74);

      *(v49 + 4) = v54;
      *(v49 + 12) = 2082;
      v73 = v27;
      outlined copy of PairingCoordinatorState(v27);
      v55 = PairingCoordinatorState.description.getter();
      v57 = v56;
      outlined consume of PairingCoordinatorState(v73);
      v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v57, &v74);

      *(v49 + 14) = v58;
      _os_log_impl(&dword_24AF48000, v47, v48, "Coordinator for %s, state = %{public}s.", v49, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C237030](v50, -1, -1);
      MEMORY[0x24C237030](v49, -1, -1);
    }

    else
    {

      outlined destroy of DependenciesIdentifier(v46, type metadata accessor for DependenciesIdentifier);
    }
  }
}

uint64_t outlined assign with take of AccessoryDependencies(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryDependencies();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of PairingContext?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

Swift::Int PairingPeripheralProviderError.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x24C236B70](a1);
  return Hasher._finalize()();
}

uint64_t PairingPeripheralProvider.getPeripheral(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = dispatch thunk of PairingServiceProxy.reevaluateDependencies(for:);

  return PairingPeripheralProvider.getPeripheral(for:)(a1, a2, a3, a4);
}

{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[12] = AssociatedTypeWitness;
  v8 = type metadata accessor for Optional();
  v5[13] = v8;
  v9 = *(v8 - 8);
  v5[14] = v9;
  v10 = *(v9 + 64) + 15;
  v5[15] = swift_task_alloc();
  v11 = *(AssociatedTypeWitness - 8);
  v5[16] = v11;
  v12 = *(v11 + 64) + 15;
  v5[17] = swift_task_alloc();
  v13 = *(a4 + 8);
  v15 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[18] = v15;
  v5[19] = v14;

  return MEMORY[0x2822009F8](PairingPeripheralProvider.getPeripheral(for:), v15, v14);
}

uint64_t PairingPeripheralProvider.getPeripheral(for:)()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[12];
  outlined init with copy of PairingEligibilityInfo(v0[8], (v0 + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13FindMyPairing19PeripheralTransport_pMd, &_s13FindMyPairing19PeripheralTransport_pMR);
  v4 = swift_dynamicCast();
  v5 = *(v2 + 56);
  if (v4)
  {
    v7 = v0[16];
    v6 = v0[17];
    v8 = v0[15];
    v9 = v0[12];
    v27 = v0[10];
    v5(v8, 0, 1, v9);
    (*(v7 + 32))(v6, v8, v9);
    v10 = *(v27 + 64);
    v26 = (v10 + *v10);
    v11 = v10[1];
    v12 = swift_task_alloc();
    v0[20] = v12;
    *v12 = v0;
    v12[1] = PairingPeripheralProvider.getPeripheral(for:);
    v13 = v0[17];
    v14 = v0[10];
    v15 = v0[11];
    v16 = v0[9];
    v17 = v0[7];

    return v26(v17, v13, v16, v14);
  }

  else
  {
    v20 = v0[14];
    v19 = v0[15];
    v21 = v0[13];
    v5(v19, 1, 1, v0[12]);
    (*(v20 + 8))(v19, v21);
    lazy protocol witness table accessor for type PairingPeripheralProviderError and conformance PairingPeripheralProviderError();
    swift_allocError();
    *v22 = 0;
    swift_willThrow();
    v23 = v0[17];
    v24 = v0[15];

    v25 = v0[1];

    return v25();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *v1;
  *(*v1 + 168) = v0;

  v5 = *(v2 + 152);
  v6 = *(v2 + 144);
  if (v0)
  {
    v7 = PairingPeripheralProvider.getPeripheral(for:);
  }

  else
  {
    v7 = PairingPeripheralProvider.getPeripheral(for:);
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

{
  v1 = v0[15];
  (*(v0[16] + 8))(v0[17], v0[12]);

  v2 = v0[1];

  return v2();
}

{
  (*(v0[16] + 8))(v0[17], v0[12]);
  v1 = v0[21];
  v2 = v0[17];
  v3 = v0[15];

  v4 = v0[1];

  return v4();
}

unint64_t lazy protocol witness table accessor for type PairingPeripheralProviderError and conformance PairingPeripheralProviderError()
{
  result = lazy protocol witness table cache variable for type PairingPeripheralProviderError and conformance PairingPeripheralProviderError;
  if (!lazy protocol witness table cache variable for type PairingPeripheralProviderError and conformance PairingPeripheralProviderError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PairingPeripheralProviderError and conformance PairingPeripheralProviderError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PairingPeripheralProviderError and conformance PairingPeripheralProviderError;
  if (!lazy protocol witness table cache variable for type PairingPeripheralProviderError and conformance PairingPeripheralProviderError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PairingPeripheralProviderError and conformance PairingPeripheralProviderError);
  }

  return result;
}

uint64_t PairingPeripheralProvider.pair<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = dispatch thunk of PairingValidator.ack(_:);

  return PairingPeripheralProvider.pair<A>(_:)(a1, a2, a4, a3, a5);
}

{
  v6[11] = a5;
  v6[12] = v5;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  v8 = type metadata accessor for Optional();
  v6[13] = v8;
  v9 = *(v8 - 8);
  v6[14] = v9;
  v10 = *(v9 + 64) + 15;
  v6[15] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[16] = AssociatedTypeWitness;
  v12 = *(*(AssociatedTypeWitness - 8) + 64) + 15;
  v6[17] = swift_task_alloc();
  v13 = swift_getAssociatedTypeWitness();
  v6[18] = v13;
  v14 = type metadata accessor for Optional();
  v6[19] = v14;
  v15 = *(v14 - 8);
  v6[20] = v15;
  v16 = *(v15 + 64) + 15;
  v6[21] = swift_task_alloc();
  v17 = *(v13 - 8);
  v6[22] = v17;
  v18 = *(v17 + 64) + 15;
  v6[23] = swift_task_alloc();
  v19 = *(a5 + 8);
  v21 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[24] = v21;
  v6[25] = v20;

  return MEMORY[0x2822009F8](PairingPeripheralProvider.pair<A>(_:), v21, v20);
}

uint64_t PairingPeripheralProvider.pair<A>(_:)()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[18];
  outlined init with copy of PairingEligibilityInfo(v0[8], (v0 + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13FindMyPairing14PeripheralType_pMd, &_s13FindMyPairing14PeripheralType_pMR);
  v4 = swift_dynamicCast();
  v5 = *(v2 + 56);
  if (v4)
  {
    v7 = v0[22];
    v6 = v0[23];
    v8 = v0[21];
    v9 = v0[18];
    v29 = v0[11];
    v5(v8, 0, 1, v9);
    (*(v7 + 32))(v6, v8, v9);
    v10 = *(v29 + 80);
    v28 = (v10 + *v10);
    v11 = v10[1];
    v12 = swift_task_alloc();
    v0[26] = v12;
    *v12 = v0;
    v12[1] = PairingPeripheralProvider.pair<A>(_:);
    v13 = v0[23];
    v14 = v0[17];
    v15 = v0[11];
    v16 = v0[12];
    v17 = v0[9];

    return v28(v14, v13, v17, v15);
  }

  else
  {
    v20 = v0[20];
    v19 = v0[21];
    v21 = v0[19];
    v5(v19, 1, 1, v0[18]);
    (*(v20 + 8))(v19, v21);
    lazy protocol witness table accessor for type PairingPeripheralProviderError and conformance PairingPeripheralProviderError();
    swift_allocError();
    *v22 = 0;
    swift_willThrow();
    v23 = v0[23];
    v24 = v0[21];
    v25 = v0[17];
    v26 = v0[15];

    v27 = v0[1];

    return v27();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *v1;
  *(*v1 + 216) = v0;

  v5 = *(v2 + 200);
  v6 = *(v2 + 192);
  if (v0)
  {
    v7 = PairingPeripheralProvider.pair<A>(_:);
  }

  else
  {
    v7 = PairingPeripheralProvider.pair<A>(_:);
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v4 = v0[10];
  v5 = swift_dynamicCast();
  v6 = *(v4 - 8);
  v7 = *(v6 + 56);
  v9 = v0[22];
  v8 = v0[23];
  if (v5)
  {
    v10 = v6;
    v11 = v0[21];
    v13 = v0[17];
    v12 = v0[18];
    v14 = v0[15];
    v15 = v0[10];
    v16 = v0[7];
    v7(v14, 0, 1, v15);
    (*(v9 + 8))(v8, v12);
    (*(v10 + 32))(v16, v14, v15);
  }

  else
  {
    v18 = v0[18];
    v20 = v0[14];
    v19 = v0[15];
    v21 = v0[13];
    v7(v19, 1, 1, v0[10]);
    (*(v20 + 8))(v19, v21);
    lazy protocol witness table accessor for type PairingPeripheralProviderError and conformance PairingPeripheralProviderError();
    swift_allocError();
    *v22 = 2;
    swift_willThrow();
    (*(v9 + 8))(v8, v18);
    v23 = v0[23];
    v24 = v0[21];
    v25 = v0[17];
    v26 = v0[15];
  }

  v17 = v0[1];

  return v17();
}

{
  (*(v0[22] + 8))(v0[23], v0[18]);
  v1 = v0[27];
  v2 = v0[23];
  v3 = v0[21];
  v4 = v0[17];
  v5 = v0[15];

  v6 = v0[1];

  return v6();
}

uint64_t PairingPeripheralProvider.unpair(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of PairingValidator.ack(_:);

  return PairingPeripheralProvider.unpair(_:)(a1, a2, a3);
}

{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[11] = AssociatedTypeWitness;
  v7 = type metadata accessor for Optional();
  v4[12] = v7;
  v8 = *(v7 - 8);
  v4[13] = v8;
  v9 = *(v8 + 64) + 15;
  v4[14] = swift_task_alloc();
  v10 = *(AssociatedTypeWitness - 8);
  v4[15] = v10;
  v11 = *(v10 + 64) + 15;
  v4[16] = swift_task_alloc();
  v12 = *(a3 + 8);
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[17] = v14;
  v4[18] = v13;

  return MEMORY[0x2822009F8](PairingPeripheralProvider.unpair(_:), v14, v13);
}

uint64_t PairingPeripheralProvider.unpair(_:)()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[11];
  outlined init with copy of PairingEligibilityInfo(v0[7], (v0 + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13FindMyPairing14PeripheralType_pMd, &_s13FindMyPairing14PeripheralType_pMR);
  v4 = swift_dynamicCast();
  v5 = *(v2 + 56);
  if (v4)
  {
    v7 = v0[15];
    v6 = v0[16];
    v8 = v0[14];
    v9 = v0[11];
    v26 = v0[9];
    v5(v8, 0, 1, v9);
    (*(v7 + 32))(v6, v8, v9);
    v10 = *(v26 + 96);
    v25 = (v10 + *v10);
    v11 = v10[1];
    v12 = swift_task_alloc();
    v0[19] = v12;
    *v12 = v0;
    v12[1] = PairingPolicyVerifier.verifyIfPairingEligibility(_:);
    v13 = v0[16];
    v14 = v0[9];
    v15 = v0[10];
    v16 = v0[8];

    return v25(v13, v16, v14);
  }

  else
  {
    v19 = v0[13];
    v18 = v0[14];
    v20 = v0[12];
    v5(v18, 1, 1, v0[11]);
    (*(v19 + 8))(v18, v20);
    lazy protocol witness table accessor for type PairingPeripheralProviderError and conformance PairingPeripheralProviderError();
    swift_allocError();
    *v21 = 0;
    swift_willThrow();
    v22 = v0[16];
    v23 = v0[14];

    v24 = v0[1];

    return v24();
  }
}

uint64_t dispatch thunk of PairingPeripheralProvider.getPeripheral(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 56);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = dispatch thunk of PairingValidator.ack(_:);

  return v13(a1, a2, a3, a4);
}

{
  v9 = *(a4 + 64);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = dispatch thunk of PairingServiceProxy.reevaluateDependencies(for:);

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of PairingPeripheralProvider.pair<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 72);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = dispatch thunk of PairingValidator.ack(_:);

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of PairingPeripheralProvider.pairAndReturnService(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 80);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = dispatch thunk of PairingValidator.ack(_:);

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of PairingPeripheralProvider.unpair(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 88);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = dispatch thunk of PairingValidator.ack(_:);

  return v11(a1, a2, a3);
}

{
  v7 = *(a3 + 96);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = dispatch thunk of PairingValidator.ack(_:);

  return v11(a1, a2, a3);
}

Swift::Int AccessoryMetadataProviderError.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x24C236B70](v1);
  return Hasher._finalize()();
}

uint64_t AccessoryMetadataProvider._readAccessoryMetadata(peripheral:accessory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[16] = a5;
  v6[17] = v5;
  v6[14] = a3;
  v6[15] = a4;
  v6[12] = a1;
  v6[13] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[18] = AssociatedTypeWitness;
  v9 = type metadata accessor for Optional();
  v6[19] = v9;
  v10 = *(v9 - 8);
  v6[20] = v10;
  v11 = *(v10 + 64) + 15;
  v6[21] = swift_task_alloc();
  v12 = *(AssociatedTypeWitness - 8);
  v6[22] = v12;
  v13 = *(v12 + 64) + 15;
  v6[23] = swift_task_alloc();
  v14 = swift_getAssociatedTypeWitness();
  v6[24] = v14;
  v15 = type metadata accessor for Optional();
  v6[25] = v15;
  v16 = *(v15 - 8);
  v6[26] = v16;
  v17 = *(v16 + 64) + 15;
  v6[27] = swift_task_alloc();
  v18 = *(v14 - 8);
  v6[28] = v18;
  v19 = *(v18 + 64) + 15;
  v6[29] = swift_task_alloc();
  v20 = *(a5 + 8);
  v22 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[30] = v22;
  v6[31] = v21;

  return MEMORY[0x2822009F8](AccessoryMetadataProvider._readAccessoryMetadata(peripheral:accessory:), v22, v21);
}