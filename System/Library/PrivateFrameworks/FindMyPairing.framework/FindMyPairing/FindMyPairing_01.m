uint64_t AccessoryMetadataProvider._readAccessoryMetadata(peripheral:accessory:)()
{
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[24];
  outlined init with copy of PairingEligibilityInfo(v0[13], (v0 + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13FindMyPairing14PeripheralType_pMd, &_s13FindMyPairing14PeripheralType_pMR);
  v4 = swift_dynamicCast();
  v5 = *(v2 + 56);
  if (v4)
  {
    v7 = v0[28];
    v6 = v0[29];
    v8 = v0[27];
    v9 = v0[24];
    v10 = v0[21];
    v11 = v0[22];
    v12 = v0[18];
    v13 = v0[14];
    v5(v8, 0, 1, v9);
    (*(v7 + 32))(v6, v8, v9);
    outlined init with copy of PairingEligibilityInfo(v13, (v0 + 7));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s13FindMyPairing9Accessory_pMd, &_s13FindMyPairing9Accessory_pMR);
    v14 = swift_dynamicCast();
    v15 = *(v11 + 56);
    v16 = v0[21];
    if (v14)
    {
      v18 = v0[22];
      v17 = v0[23];
      v19 = v0[18];
      v21 = v0[15];
      v20 = v0[16];
      v22 = v0[12];
      v15(v0[21], 0, 1, v19);
      (*(v18 + 32))(v17, v16, v19);
      v23 = *(v20 + 64);
      v22[3] = swift_getAssociatedTypeWitness();
      v22[4] = swift_getAssociatedConformanceWitness();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
      v48 = (v23 + *v23);
      v25 = v23[1];
      v26 = swift_task_alloc();
      v0[32] = v26;
      *v26 = v0;
      v26[1] = AccessoryMetadataProvider._readAccessoryMetadata(peripheral:accessory:);
      v27 = v0[29];
      v28 = v0[23];
      v29 = v0[16];
      v30 = v0[17];
      v31 = v0[15];

      return v48(boxed_opaque_existential_1, v27, v28, v31, v29);
    }

    v38 = v0[28];
    v37 = v0[29];
    v39 = v0[24];
    v40 = v0[19];
    v41 = v0[20];
    v15(v0[21], 1, 1, v0[18]);
    (*(v41 + 8))(v16, v40);
    lazy protocol witness table accessor for type AccessoryMetadataProviderError and conformance AccessoryMetadataProviderError();
    swift_allocError();
    *v42 = 2;
    swift_willThrow();
    (*(v38 + 8))(v37, v39);
  }

  else
  {
    v34 = v0[26];
    v33 = v0[27];
    v35 = v0[25];
    v5(v33, 1, 1, v0[24]);
    (*(v34 + 8))(v33, v35);
    lazy protocol witness table accessor for type AccessoryMetadataProviderError and conformance AccessoryMetadataProviderError();
    swift_allocError();
    *v36 = 0;
    swift_willThrow();
  }

  v43 = v0[29];
  v44 = v0[27];
  v45 = v0[23];
  v46 = v0[21];

  v47 = v0[1];

  return v47();
}

{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v4 = *v1;
  *(*v1 + 264) = v0;

  v5 = *(v2 + 248);
  v6 = *(v2 + 240);
  if (v0)
  {
    v7 = AccessoryMetadataProvider._readAccessoryMetadata(peripheral:accessory:);
  }

  else
  {
    v7 = AccessoryMetadataProvider._readAccessoryMetadata(peripheral:accessory:);
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[27];
  v4 = v0[24];
  v5 = v0[21];
  (*(v0[22] + 8))(v0[23], v0[18]);
  (*(v2 + 8))(v1, v4);

  v6 = v0[1];

  return v6();
}

{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[24];
  v4 = v0[12];
  (*(v0[22] + 8))(v0[23], v0[18]);
  (*(v2 + 8))(v1, v3);
  __swift_deallocate_boxed_opaque_existential_1(v4);
  v5 = v0[33];
  v6 = v0[29];
  v7 = v0[27];
  v8 = v0[23];
  v9 = v0[21];

  v10 = v0[1];

  return v10();
}

unint64_t lazy protocol witness table accessor for type AccessoryMetadataProviderError and conformance AccessoryMetadataProviderError()
{
  result = lazy protocol witness table cache variable for type AccessoryMetadataProviderError and conformance AccessoryMetadataProviderError;
  if (!lazy protocol witness table cache variable for type AccessoryMetadataProviderError and conformance AccessoryMetadataProviderError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessoryMetadataProviderError and conformance AccessoryMetadataProviderError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessoryMetadataProviderError and conformance AccessoryMetadataProviderError;
  if (!lazy protocol witness table cache variable for type AccessoryMetadataProviderError and conformance AccessoryMetadataProviderError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessoryMetadataProviderError and conformance AccessoryMetadataProviderError);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t *__swift_deallocate_boxed_opaque_existential_1(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x24C237030);
  }

  return result;
}

uint64_t AccessoryMetadataProvider._retrieveProductInfo(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  return MEMORY[0x2822009F8](AccessoryMetadataProvider._retrieveProductInfo(for:), v15, v14);
}

uint64_t AccessoryMetadataProvider._retrieveProductInfo(for:)()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[12];
  outlined init with copy of PairingEligibilityInfo(v0[8], (v0 + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13FindMyPairing12MetadataType_pMd, &_s13FindMyPairing12MetadataType_pMR);
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
    v10 = *(v27 + 72);
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
    lazy protocol witness table accessor for type AccessoryMetadataProviderError and conformance AccessoryMetadataProviderError();
    swift_allocError();
    *v22 = 1;
    swift_willThrow();
    v23 = v0[17];
    v24 = v0[15];

    v25 = v0[1];

    return v25();
  }
}

uint64_t dispatch thunk of AccessoryMetadataProvider.readAccessoryMetadata(peripheral:accessory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 64);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = dispatch thunk of PairingServiceProxy.reevaluateDependencies(for:);

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of AccessoryMetadataProvider.retrieveProductInfo(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 72);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = dispatch thunk of PairingValidator.ack(_:);

  return v13(a1, a2, a3, a4);
}

uint64_t _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  outlined init with copy of PairingContext?(a3, v27 - v11, &_sScPSgMd, &_sScPSgMR);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v12, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t PairingCoordinator.triggerPairingFlow()(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(a2 + 8);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](PairingCoordinator.triggerPairingFlow(), v6, v5);
}

uint64_t PairingCoordinator.triggerPairingFlow()()
{
  v1 = v0[3];
  v2 = v0[2];
  (*(v1 + 72))(v2, v1);
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  v4[2] = v2;
  v4[3] = v1;
  v4[4] = v3;

  dispatch thunk of WorkItemQueue.enqueue(_:)();

  v5 = v0[1];

  return v5();
}

uint64_t PairingCoordinator.forceStopPairing()(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *(a2 + 8);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[6] = v5;
  v3[7] = v4;

  return MEMORY[0x2822009F8](PairingCoordinator.forceStopPairing(), v5, v4);
}

uint64_t PairingCoordinator.forceStopPairing()()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *(v3 + 16) = *(v0 + 16);
  *(v3 + 32) = v1;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *v5 = v0;
  v5[1] = PairingCoordinator.forceStopPairing();

  return MEMORY[0x2822008A0]();
}

{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v9 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = v2[6];
    v5 = v2[7];
    v6 = PairingCoordinator.forceStopPairing();
  }

  else
  {
    v7 = v2[8];

    v4 = v2[6];
    v5 = v2[7];
    v6 = PairingCoordinator.forceStopPairing();
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t specialized Sequence.first(where:)@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for AccessoryDetails(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 16);
  if (v12)
  {
    v19 = a3;
    v13 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v14 = *(v8 + 72);
    while (1)
    {
      outlined init with copy of UserSessionState(v13, v11, type metadata accessor for AccessoryDetails);
      v15 = a1(v11);
      if (v3)
      {
        return outlined destroy of UserSessionState(v11, type metadata accessor for AccessoryDetails);
      }

      if (v15)
      {
        break;
      }

      outlined destroy of UserSessionState(v11, type metadata accessor for AccessoryDetails);
      v13 += v14;
      if (!--v12)
      {
        v16 = 1;
        a3 = v19;
        return (*(v8 + 56))(a3, v16, 1, v7);
      }
    }

    a3 = v19;
    outlined init with take of UserSessionState(v11, v19, type metadata accessor for AccessoryDetails);
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  return (*(v8 + 56))(a3, v16, 1, v7);
}

FindMyPairing::PairingOperation_optional __swiftcall PairingOperation.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PairingOperation.init(rawValue:), v3);

  v7 = 5;
  if (v5 < 5)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

unint64_t PairingOperation.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x506C6C617265766FLL;
  v3 = 0x617461646174656DLL;
  v4 = 0x53676E6972696170;
  if (v1 == 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0xD000000000000013;
    }

    else
    {
      v3 = 0x506C6C617265766FLL;
    }

    if (v2)
    {
      v4 = 0x800000024AFAF540;
    }

    else
    {
      v4 = 0xEE00676E69726961;
    }
  }

  else
  {
    if (a1 == 2)
    {
      v3 = 0x617461646174656DLL;
      v5 = 1684104530;
    }

    else
    {
      if (a1 == 3)
      {
        v3 = 0xD000000000000010;
        v4 = 0x800000024AFAF570;
        goto LABEL_14;
      }

      v3 = 0x53676E6972696170;
      v5 = 1953653108;
    }

    v4 = v5 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
  }

LABEL_14:
  if (a2 <= 1u)
  {
    if (a2)
    {
      v7 = 0xD000000000000013;
    }

    else
    {
      v7 = 0x506C6C617265766FLL;
    }

    if (a2)
    {
      v6 = 0x800000024AFAF540;
    }

    else
    {
      v6 = 0xEE00676E69726961;
    }

    if (v3 != v7)
    {
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  if (a2 == 2)
  {
    v8 = 0x617461646174656DLL;
    v9 = 1684104530;
  }

  else
  {
    if (a2 == 3)
    {
      v6 = 0x800000024AFAF570;
      if (v3 != 0xD000000000000010)
      {
        goto LABEL_32;
      }

      goto LABEL_30;
    }

    v8 = 0x53676E6972696170;
    v9 = 1953653108;
  }

  v6 = v9 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
  if (v3 != v8)
  {
LABEL_32:
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_33;
  }

LABEL_30:
  if (v4 != v6)
  {
    goto LABEL_32;
  }

  v10 = 1;
LABEL_33:

  return v10 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PairingOperation()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PairingOperation()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PairingOperation()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance PairingOperation(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE00676E69726961;
  v4 = 0x506C6C617265766FLL;
  v5 = 0xEC00000064616552;
  v6 = 0x617461646174656DLL;
  v7 = 0x800000024AFAF570;
  v8 = 0x53676E6972696170;
  if (v2 == 3)
  {
    v8 = 0xD000000000000010;
  }

  else
  {
    v7 = 0xEC00000074726174;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0xD000000000000013;
    v3 = 0x800000024AFAF540;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

Swift::Int PairingCoordinatorError.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x24C236B70](v1);
  return Hasher._finalize()();
}

__n128 PairingSuccessResult.init(location:beaconIds:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = *a1;
  v4 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v4;
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 40) = a2;
  return result;
}

uint64_t PairingCoordinator.stream()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of PairingValidator.ack(_:);

  return PairingCoordinator.stream()(a1, a2, a3);
}

{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = *(a3 + 8);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v7;
  v4[8] = v6;

  return MEMORY[0x2822009F8](PairingCoordinator.stream(), v7, v6);
}

uint64_t PairingCoordinator.stream()()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  type metadata accessor for WorkItemQueue();
  v4 = *(v1 + 72);
  v4(v3, v1);
  LOBYTE(v2) = static WorkItemQueue.called(on:)();

  if (v2)
  {
    lazy protocol witness table accessor for type PairingCoordinatorError and conformance PairingCoordinatorError();
    swift_allocError();
    *v5 = 9;
    swift_willThrow();
    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[5];
    v9 = v0[4];
    v0[9] = (v4)(v9, v8);
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v11 = swift_allocObject();
    v0[10] = v11;
    v11[2] = v9;
    v11[3] = v8;
    v11[4] = v10;
    v12 = *(MEMORY[0x277D08960] + 4);
    v15 = (*MEMORY[0x277D08960] + MEMORY[0x277D08960]);
    v13 = swift_task_alloc();
    v0[11] = v13;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay13FindMyPairing0C16CoordinatorStateOSgGMd, &_sSay13FindMyPairing0C16CoordinatorStateOSgGMR);
    *v13 = v0;
    v13[1] = PairingCoordinator.stream();

    return v15(v0 + 2, &async function pointer to partial apply for closure #1 in PairingCoordinator.stream(), v11, v14);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v10 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = v2[7];
    v5 = v2[8];
    v6 = PairingCoordinator.stream();
  }

  else
  {
    v8 = v2[9];
    v7 = v2[10];

    v4 = v2[7];
    v5 = v2[8];
    v6 = PairingCoordinator.stream();
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

{
  v2 = v0[9];
  v1 = v0[10];

  v3 = v0[12];
  v4 = v0[1];

  return v4();
}

void PairingCoordinator.stream()()
{
  v1 = v0[2];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = MEMORY[0x277D84F90];
    while (1)
    {
      v5 = *(v1 + 16);
      if (v3 >= v5)
      {
LABEL_17:
        __break(1u);
        return;
      }

      v6 = *(v1 + 32 + 8 * v3);
      v7 = v3 + 1;
      if (v6 == 17)
      {
        break;
      }

LABEL_9:
      v3 = v7;
      outlined copy of PairingCoordinatorState(v6);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
      }

      v11 = *(v4 + 2);
      v10 = *(v4 + 3);
      if (v11 >= v10 >> 1)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v4);
      }

      *(v4 + 2) = v11 + 1;
      *&v4[8 * v11 + 32] = v6;
      if (v3 == v2)
      {
        goto LABEL_14;
      }
    }

    v8 = (v1 + 40 + 8 * v3);
    while (v2 != v7)
    {
      if (v5 == v7)
      {
        goto LABEL_17;
      }

      v9 = *v8++;
      v6 = v9;
      ++v7;
      if (v9 != 17)
      {
        goto LABEL_9;
      }
    }
  }

LABEL_14:
  v13 = v0[5];
  v12 = v0[6];
  v15 = v0[3];
  v14 = v0[4];

  (*(v13 + 24))(v14, v13);
  AsyncStreamProvider.stream(initialEvents:)();

  v16 = v0[1];

  v16();
}

uint64_t PairingCoordinator.analyticsStream()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of PairingServiceProxy.reevaluateDependencies(for:);

  return PairingCoordinator.analyticsStream()(a1, a2, a3);
}

{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(a3 + 8);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](PairingCoordinator.analyticsStream(), v7, v6);
}

uint64_t PairingCoordinator.analyticsStream()()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  type metadata accessor for WorkItemQueue();
  (*(v1 + 72))(v3, v1);
  LOBYTE(v2) = static WorkItemQueue.called(on:)();

  if (v2)
  {
    lazy protocol witness table accessor for type PairingCoordinatorError and conformance PairingCoordinatorError();
    swift_allocError();
    *v4 = 9;
    swift_willThrow();
  }

  else
  {
    v6 = v0[5];
    v7 = v0[2];
    (*(v0[4] + 32))(v0[3]);
    AsyncStreamProvider.stream(initialEvents:)();
  }

  v5 = v0[1];

  return v5();
}

uint64_t PairingCoordinator.setState(_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of PairingValidator.ack(_:);

  return PairingCoordinator.setState(_:)(a1, a2, a3);
}

{
  v4[8] = a2;
  v4[9] = a3;
  v5 = *a1;
  v4[10] = v3;
  v4[11] = v5;
  v6 = *(a3 + 8);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](PairingCoordinator.setState(_:), v8, v7);
}

uint64_t PairingCoordinator.setState(_:)()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  type metadata accessor for WorkItemQueue();
  (*(v2 + 72))(v3, v2);
  LOBYTE(v1) = static WorkItemQueue.called(on:)();

  if (v1 & 1) != 0 || (v4 = v0[10], (*(v0[9] + 80))(v0[8]), LOBYTE(v4) = static WorkItemQueue.called(on:)(), , (v4))
  {
    v5 = v0[10];
    v6 = v0[11];
    v8 = v0[8];
    v7 = v0[9];
    v0[12] = (*(v7 + 16))(v8, v7);
    v0[7] = v6;
    (*(v7 + 40))(v8, v7);
    v9 = v0[5];
    v10 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v9);
    v0[13] = (*(v10 + 64))(v9, v10);
    v11 = swift_task_alloc();
    v0[14] = v11;
    *v11 = v0;
    v11[1] = PairingCoordinator.setState(_:);

    return specialized PairingCoordinatorStateManager.setNextState(_:input:)(v0 + 7);
  }

  else
  {
    lazy protocol witness table accessor for type PairingCoordinatorError and conformance PairingCoordinatorError();
    swift_allocError();
    *v13 = 8;
    swift_willThrow();
    v14 = v0[1];

    return v14();
  }
}

{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 104);
  v4 = *(*v0 + 96);
  v7 = *v0;

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 16));
  v5 = *(v7 + 8);

  return v5();
}

Swift::Void __swiftcall PairingCoordinator.setup()()
{
  v2 = v1;
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v3;
  v10[5] = v2;
  v10[6] = v9;
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in PairingCoordinator.setup(), v10);

  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v7, &_sScPSgMd, &_sScPSgMR);
}

uint64_t closure #1 in PairingCoordinator.stream()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[8] = a1;
  v4[9] = a2;
  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.stream(), 0, 0);
}

uint64_t closure #1 in PairingCoordinator.stream()()
{
  v1 = v0[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13FindMyPairing0F16CoordinatorStateOSgGMd, &_ss23_ContiguousArrayStorageCy13FindMyPairing0F16CoordinatorStateOSgGMR);
  v2 = swift_allocObject();
  v0[12] = v2;
  *(v2 + 16) = xmmword_24AFB0430;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[13] = Strong;
  if (Strong)
  {
    v4 = v0[10];
    v5 = v0[11];
    v6 = *(v5 + 16);
    v5 += 16;
    v0[14] = v6;
    v0[15] = v5 & 0xFFFFFFFFFFFFLL | 0x20DC000000000000;
    v7 = *(v5 - 8);
    v9 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.stream(), v9, v8);
  }

  else
  {
    v10 = v0[12];
    v11 = v0[8];
    *(v10 + 32) = 17;
    *v11 = v10;
    v12 = v0[1];

    return v12();
  }
}

{
  v1 = *(v0 + 120);
  v2 = *(v0 + 104);
  v3 = (*(v0 + 112))(*(v0 + 80), *(v0 + 88));
  *(v0 + 128) = v3;
  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.stream(), v3, 0);
}

{
  v1 = *(v0 + 128);
  swift_beginAccess();
  v2 = *(v1 + 128);
  *(v0 + 136) = v2;
  outlined copy of PairingCoordinatorState(v2);

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.stream(), 0, 0);
}

{
  v1 = *(v0 + 96);
  v2 = *(v0 + 64);
  *(v1 + 32) = *(v0 + 136);
  *v2 = v1;
  return (*(v0 + 8))();
}

uint64_t closure #1 in PairingCoordinator.setup()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[252] = a6;
  v6[251] = a5;
  v6[250] = a4;
  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.setup(), 0, 0);
}

uint64_t closure #1 in PairingCoordinator.setup()()
{
  v1 = v0[250];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[253] = Strong;
  if (Strong)
  {
    v3 = Strong;
    v4 = v0[252];
    v5 = v0[251];
    v6 = swift_allocObject();
    v0[254] = v6;
    v6[2] = v5;
    v6[3] = v4;
    v6[4] = v3;
    v7 = swift_task_alloc();
    v0[255] = v7;
    *(v7 + 16) = &async function pointer to partial apply for implicit closure #1 in closure #1 in PairingCoordinator.setup();
    *(v7 + 24) = v6;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd, &_sytSgMR);
    swift_asyncLet_begin();
    v8 = swift_allocObject();
    v0[256] = v8;
    v8[2] = v5;
    v8[3] = v4;
    v8[4] = v3;
    v9 = swift_task_alloc();
    v0[257] = v9;
    *(v9 + 16) = &async function pointer to partial apply for implicit closure #2 in closure #1 in PairingCoordinator.setup();
    *(v9 + 24) = v8;
    swift_unknownObjectRetain();
    swift_asyncLet_begin();
    v10 = swift_allocObject();
    v0[258] = v10;
    v10[2] = v5;
    v10[3] = v4;
    v10[4] = v3;
    v11 = swift_task_alloc();
    v0[259] = v11;
    *(v11 + 16) = &async function pointer to partial apply for implicit closure #3 in closure #1 in PairingCoordinator.setup();
    *(v11 + 24) = v10;
    swift_unknownObjectRetain();
    swift_asyncLet_begin();

    return MEMORY[0x282200930](v0 + 82, v0 + 2097, closure #1 in PairingCoordinator.setup(), v0 + 242);
  }

  else
  {
    v12 = v0[1];

    return v12();
  }
}

{
  *(v1 + 2080) = v0;
  if (v0)
  {
    return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.setup(), 0, 0);
  }

  else
  {
    return MEMORY[0x282200930](v1 + 1296, v1 + 2098, closure #1 in PairingCoordinator.setup(), v1 + 1936);
  }
}

{
  *(v1 + 2088) = v0;
  if (v0)
  {
    return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.setup(), 0, 0);
  }

  else
  {
    return MEMORY[0x282200928](v1 + 16, v1 + 2096, closure #1 in PairingCoordinator.setup(), v1 + 1936);
  }
}

{
  return MEMORY[0x282200920](v0 + 1296);
}

{
  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.setup(), 0, 0);
}

{
  v1 = *(v0 + 2072);
  v2 = *(v0 + 2064);

  return MEMORY[0x282200920](v0 + 656);
}

{
  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.setup(), 0, 0);
}

{
  v1 = *(v0 + 2056);
  v2 = *(v0 + 2048);

  return MEMORY[0x282200920](v0 + 16);
}

{
  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.setup(), 0, 0);
}

{
  v1 = v0[255];
  v2 = v0[254];
  v3 = v0[253];
  swift_unknownObjectRelease();

  v4 = v0[1];

  return v4();
}

{
  v1 = *(v0 + 2080);
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.pairingCoordinator);
  MEMORY[0x24C236EC0](v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    MEMORY[0x24C236EC0](v1);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&dword_24AF48000, v3, v4, "Failure in end pairing: %{public}@", v5, 0xCu);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v6, -1, -1);
    MEMORY[0x24C237030](v5, -1, -1);
    MEMORY[0x24C236EB0](v1);
  }

  else
  {

    MEMORY[0x24C236EB0](v1);
  }

  return MEMORY[0x282200920](v0 + 1296);
}

{
  v1 = *(v0 + 2088);
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.pairingCoordinator);
  MEMORY[0x24C236EC0](v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    MEMORY[0x24C236EC0](v1);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&dword_24AF48000, v3, v4, "Failure in end pairing: %{public}@", v5, 0xCu);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v6, -1, -1);
    MEMORY[0x24C237030](v5, -1, -1);
    MEMORY[0x24C236EB0](v1);
  }

  else
  {

    MEMORY[0x24C236EB0](v1);
  }

  return MEMORY[0x282200920](v0 + 1296);
}

uint64_t implicit closure #1 in closure #1 in PairingCoordinator.setup()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = *(a3 + 8);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](implicit closure #1 in closure #1 in PairingCoordinator.setup(), v6, v5);
}

uint64_t implicit closure #1 in closure #1 in PairingCoordinator.setup()()
{
  v1 = v0[2];
  PairingCoordinator.startAccessoryPairing()(v0[3], v0[4]);
  v2 = v0[1];

  return v2(0);
}

uint64_t _sytSgIegHd_AAs5Error_pIegHTrzo_TR(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = _sytSgIegHd_AAs5Error_pIegHTrzo_TRTQ0_;

  return v6();
}

uint64_t _sytSgIegHd_AAs5Error_pIegHTrzo_TRTQ0_(char a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  *v4 = a1 & 1;
  v5 = *(v7 + 8);

  return v5();
}

uint64_t implicit closure #2 in closure #1 in PairingCoordinator.setup()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = implicit closure #2 in closure #1 in PairingCoordinator.setup();

  return PairingCoordinator._setupUIStateListener()(a2, a3);
}

uint64_t implicit closure #2 in closure #1 in PairingCoordinator.setup()()
{
  v2 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);
  if (!v0)
  {
    v3 = 0;
  }

  return v4(v3);
}

uint64_t PairingCoordinator._setupUIStateListener()(uint64_t a1, uint64_t a2)
{
  v3[15] = a2;
  v3[16] = v2;
  v3[14] = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy10FindMyBase11TransactionC_0aB7Pairing0E7UIStateOtGMd, &_sScSy10FindMyBase11TransactionC_0aB7Pairing0E7UIStateOtGMR);
  v3[17] = v5;
  v6 = *(v5 - 8);
  v3[18] = v6;
  v7 = *(v6 + 64) + 15;
  v3[19] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy10FindMyBase11TransactionC_0bC7Pairing0F7UIStateOt_GMd, &_sScS8IteratorVy10FindMyBase11TransactionC_0bC7Pairing0F7UIStateOt_GMR);
  v3[20] = v8;
  v9 = *(v8 - 8);
  v3[21] = v9;
  v10 = *(v9 + 64) + 15;
  v3[22] = swift_task_alloc();
  v3[23] = *(a2 + 8);
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[24] = v12;
  v3[25] = v11;

  return MEMORY[0x2822009F8](PairingCoordinator._setupUIStateListener(), v12, v11);
}

uint64_t PairingCoordinator._setupUIStateListener()()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];
  type metadata accessor for WorkItemQueue();
  (*(v1 + 72))(v3, v1);
  LOBYTE(v2) = static WorkItemQueue.called(on:)();

  if (v2)
  {
    v4 = 9;
    goto LABEL_3;
  }

  v10 = v0[16];
  (*(v0[15] + 40))(v0[14]);
  v11 = v0[5];
  v12 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v11);
  v13 = (*(v12 + 40))(v11, v12);
  v0[26] = v13;
  if (!v13)
  {
    v25 = v0[15];
    v26 = v0[16];
    v27 = v0[14];
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    if ((PairingCoordinator.isUserActionable.getter(v27, v25) & 1) == 0)
    {
      if (one-time initialization token for pairingCoordinator != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for Logger();
      __swift_project_value_buffer(v32, static Logger.pairingCoordinator);
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_24AF48000, v33, v34, "PairingCoordinator: Flow is not user actionable, skip UI state observation", v35, 2u);
        MEMORY[0x24C237030](v35, -1, -1);
      }

      v36 = v0[22];
      v37 = v0[19];

      v8 = v0[1];
      goto LABEL_4;
    }

    if (one-time initialization token for pairingCoordinator != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static Logger.pairingCoordinator);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_24AF48000, v29, v30, "PairingCoordinator: Missing pairingUIManager", v31, 2u);
      MEMORY[0x24C237030](v31, -1, -1);
    }

    v4 = 10;
LABEL_3:
    lazy protocol witness table accessor for type PairingCoordinatorError and conformance PairingCoordinatorError();
    swift_allocError();
    v5 = v0[22];
    v6 = v0[19];
    *v7 = v4;
    swift_willThrow();

    v8 = v0[1];
LABEL_4:

    return v8();
  }

  v15 = v14;
  v0[27] = v14;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  v0[28] = __swift_project_value_buffer(v16, static Logger.pairingCoordinator);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_24AF48000, v17, v18, "PairingCoordinator: Start UI state observation", v19, 2u);
    MEMORY[0x24C237030](v19, -1, -1);
  }

  v0[29] = swift_getObjectType();
  v21 = *(v15 + 32);
  v20 = v15 + 32;
  v0[30] = v21;
  v0[31] = v20 & 0xFFFFFFFFFFFFLL | 0x7109000000000000;
  v22 = *(v20 - 24);
  v24 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](PairingCoordinator._setupUIStateListener(), v24, v23);
}

{
  v1 = *(v0 + 248);
  v2 = *(v0 + 208);
  v3 = *(v0 + 152);
  (*(v0 + 240))(*(v0 + 232), *(v0 + 216));
  v4 = *(v0 + 192);
  v5 = *(v0 + 200);

  return MEMORY[0x2822009F8](PairingCoordinator._setupUIStateListener(), v4, v5);
}

{
  v1 = v0[22];
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[17];
  AsyncStream.makeAsyncIterator()();
  (*(v3 + 8))(v2, v4);
  v5 = v0[23];
  v6 = v0[16];
  v7 = *(MEMORY[0x277D85798] + 4);
  v8 = swift_task_alloc();
  v0[32] = v8;
  *v8 = v0;
  v8[1] = PairingCoordinator._setupUIStateListener();
  v9 = v0[22];
  v10 = v0[20];

  return MEMORY[0x2822003E8](v0 + 11, v6, v5, v10);
}

{
  v1 = *v0;
  v2 = *(*v0 + 256);
  v6 = *v0;

  v3 = *(v1 + 200);
  v4 = *(v1 + 192);

  return MEMORY[0x2822009F8](PairingCoordinator._setupUIStateListener(), v4, v3);
}

{
  v1 = *(v0 + 224);
  if (*(v0 + 88))
  {
    v2 = *(v0 + 96);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *(v0 + 104) = v6;
      *v5 = 136446210;
      switch(v2)
      {
        case 3:
          v7 = 0xE500000000000000;
          v8 = 0x656C64692ELL;
          break;
        case 5:
          v7 = 0xE900000000000064;
          v8 = 0x656873696E69662ELL;
          break;
        case 4:
          v7 = 0x800000024AFAF880;
          v8 = 0xD000000000000011;
          break;
        default:
          *(v0 + 56) = 0x79616C707369642ELL;
          *(v0 + 64) = 0xEA00000000006465;
          v18 = 0x6E657A6F7266;
          if (v2)
          {
            v18 = 0x46646579616C6564;
          }

          v19 = 0xE600000000000000;
          if (v2)
          {
            v19 = 0xED00006873696E69;
          }

          if (v2 == 2)
          {
            v20 = 0;
          }

          else
          {
            v20 = v18;
          }

          if (v2 == 2)
          {
            v21 = 0xE000000000000000;
          }

          else
          {
            v21 = v19;
          }

          if (v2 == 2)
          {
            v22 = 0;
          }

          else
          {
            v22 = 46;
          }

          if (v2 == 2)
          {
            v23 = 0xE000000000000000;
          }

          else
          {
            v23 = 0xE100000000000000;
          }

          *(v0 + 72) = v22;
          *(v0 + 80) = v23;

          MEMORY[0x24C236810](v20, v21);

          MEMORY[0x24C236810](*(v0 + 72), *(v0 + 80));

          v8 = *(v0 + 56);
          v7 = *(v0 + 64);
          break;
      }

      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, (v0 + 104));

      *(v5 + 4) = v24;
      _os_log_impl(&dword_24AF48000, v3, v4, "PairingCoordinator: UI state = %{public}s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
      MEMORY[0x24C237030](v6, -1, -1);
      MEMORY[0x24C237030](v5, -1, -1);
    }

    if (v2 == 5)
    {
      v29 = swift_task_alloc();
      *(v0 + 280) = v29;
      *v29 = v0;
      v29[1] = PairingCoordinator._setupUIStateListener();
      v30 = *(v0 + 120);
      v31 = *(v0 + 128);
      v32 = *(v0 + 112);

      return PairingCoordinator.handleUIFinish()(v32, v30);
    }

    else if (v2 == 2)
    {
      *(v0 + 97) = 4;
      v25 = swift_task_alloc();
      *(v0 + 264) = v25;
      *v25 = v0;
      v25[1] = PairingCoordinator._setupUIStateListener();
      v26 = *(v0 + 120);
      v27 = *(v0 + 128);
      v28 = *(v0 + 112);

      return PairingCoordinator.startTimeout(for:)((v0 + 97), v28, v26);
    }

    else
    {
      v33 = *(v0 + 184);
      v34 = *(v0 + 128);
      v35 = *(MEMORY[0x277D85798] + 4);
      v36 = swift_task_alloc();
      *(v0 + 256) = v36;
      *v36 = v0;
      v36[1] = PairingCoordinator._setupUIStateListener();
      v37 = *(v0 + 176);
      v38 = *(v0 + 160);

      return MEMORY[0x2822003E8](v0 + 88, v34, v33, v38);
    }
  }

  else
  {
    (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_24AF48000, v9, v10, "PairingCoordinator: finish listening to UI state updates", v11, 2u);
      MEMORY[0x24C237030](v11, -1, -1);
    }

    v12 = *(v0 + 120);
    v13 = *(v0 + 128);
    v14 = *(v0 + 112);

    *(v0 + 288) = (*(v12 + 80))(v14, v12);
    v15 = *(MEMORY[0x277D08958] + 4);
    v39 = (*MEMORY[0x277D08958] + MEMORY[0x277D08958]);
    v16 = swift_task_alloc();
    *(v0 + 296) = v16;
    *v16 = v0;
    v16[1] = PairingCoordinator._setupUIStateListener();

    return v39();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v8 = *v1;
  *(*v1 + 272) = v0;

  v4 = *(v2 + 192);
  v5 = *(v2 + 200);
  if (v0)
  {
    v6 = PairingCoordinator._setupUIStateListener();
  }

  else
  {
    v6 = PairingCoordinator._setupUIStateListener();
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

{
  v1 = v0[16];
  PairingCoordinator.startAccessoryPairing()(v0[14], v0[15]);
  v2 = v0[23];
  v3 = v0[16];
  v4 = *(MEMORY[0x277D85798] + 4);
  v5 = swift_task_alloc();
  v0[32] = v5;
  *v5 = v0;
  v5[1] = PairingCoordinator._setupUIStateListener();
  v6 = v0[22];
  v7 = v0[20];

  return MEMORY[0x2822003E8](v0 + 11, v3, v2, v7);
}

{
  v1 = *v0;
  v2 = *(*v0 + 280);
  v3 = *v0;

  v4 = v1[23];
  v5 = v1[16];
  v6 = *(MEMORY[0x277D85798] + 4);
  v7 = swift_task_alloc();
  v1[32] = v7;
  *v7 = v3;
  v7[1] = PairingCoordinator._setupUIStateListener();
  v8 = v1[22];
  v9 = v1[20];

  return MEMORY[0x2822003E8](v1 + 11, v5, v4, v9);
}

{
  v1 = *v0;
  v2 = *(*v0 + 296);
  v3 = *(*v0 + 288);
  v7 = *v0;

  v4 = *(v1 + 200);
  v5 = *(v1 + 192);

  return MEMORY[0x2822009F8](PairingCoordinator._setupUIStateListener(), v5, v4);
}

{
  v1 = v0[26];
  swift_unknownObjectRelease();
  v2 = v0[22];
  v3 = v0[19];

  v4 = v0[1];

  return v4();
}

{
  v1 = v0[34];
  v2 = v0[28];
  MEMORY[0x24C236EC0](v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[34];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    MEMORY[0x24C236EC0](v6);
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&dword_24AF48000, v3, v4, "Failure on starting pairing timeout: %{public}@", v7, 0xCu);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v8, -1, -1);
    MEMORY[0x24C237030](v7, -1, -1);
    MEMORY[0x24C236EB0](v6);
  }

  else
  {

    MEMORY[0x24C236EB0](v6);
  }

  v10 = v0[16];
  PairingCoordinator.startAccessoryPairing()(v0[14], v0[15]);
  v11 = v0[23];
  v12 = v0[16];
  v13 = *(MEMORY[0x277D85798] + 4);
  v14 = swift_task_alloc();
  v0[32] = v14;
  *v14 = v0;
  v14[1] = PairingCoordinator._setupUIStateListener();
  v15 = v0[22];
  v16 = v0[20];

  return MEMORY[0x2822003E8](v0 + 11, v12, v11, v16);
}

uint64_t _sytSgs5Error_pIegHdzo_AAsAB_pIegHTrzo_TR(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = _sytSgs5Error_pIegHdzo_AAsAB_pIegHTrzo_TRTQ0_;

  return v6();
}

uint64_t _sytSgs5Error_pIegHdzo_AAsAB_pIegHTrzo_TRTQ0_(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1 & 1;
  }

  v7 = *(v6 + 8);

  return v7();
}

uint64_t implicit closure #3 in closure #1 in PairingCoordinator.setup()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = implicit closure #3 in closure #1 in PairingCoordinator.setup();

  return PairingCoordinator._setupUserSessionListener()(a2, a3);
}

uint64_t PairingCoordinator._setupUserSessionListener()(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v5 = type metadata accessor for UUID();
  v3[15] = v5;
  v6 = *(v5 - 8);
  v3[16] = v6;
  v7 = *(v6 + 64) + 15;
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v8 = type metadata accessor for UserSessionState();
  v3[19] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10FindMyBase11TransactionC_0aB7Pairing16UserSessionStateOtSgMd, &_s10FindMyBase11TransactionC_0aB7Pairing16UserSessionStateOtSgMR) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy10FindMyBase11TransactionC_0aB7Pairing16UserSessionStateOtGMd, &_sScSy10FindMyBase11TransactionC_0aB7Pairing16UserSessionStateOtGMR);
  v3[25] = v11;
  v12 = *(v11 - 8);
  v3[26] = v12;
  v13 = *(v12 + 64) + 15;
  v3[27] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy10FindMyBase11TransactionC_0bC7Pairing16UserSessionStateOt_GMd, &_sScS8IteratorVy10FindMyBase11TransactionC_0bC7Pairing16UserSessionStateOt_GMR);
  v3[28] = v14;
  v15 = *(v14 - 8);
  v3[29] = v15;
  v16 = *(v15 + 64) + 15;
  v3[30] = swift_task_alloc();
  v3[31] = *(a2 + 8);
  v18 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[32] = v18;
  v3[33] = v17;

  return MEMORY[0x2822009F8](PairingCoordinator._setupUserSessionListener(), v18, v17);
}

uint64_t PairingCoordinator._setupUserSessionListener()()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  type metadata accessor for WorkItemQueue();
  (*(v1 + 72))(v3, v1);
  LOBYTE(v2) = static WorkItemQueue.called(on:)();

  if (v2)
  {
    v4 = v0[30];
    v5 = v0[27];
    v7 = v0[23];
    v6 = v0[24];
    v9 = v0[21];
    v8 = v0[22];
    v10 = v0[20];
    v41 = v0[18];
    v42 = v0[17];
    lazy protocol witness table accessor for type PairingCoordinatorError and conformance PairingCoordinatorError();
    swift_allocError();
    *v11 = 9;
    swift_willThrow();

    v12 = v0[1];
LABEL_16:

    return v12();
  }

  v13 = v0[14];
  (*(v0[13] + 40))(v0[12]);
  v14 = v0[5];
  v15 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v14);
  v16 = (*(v15 + 48))(v14, v15);
  v18 = v17;
  v0[34] = v16;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  if (!v16)
  {
    if (one-time initialization token for pairingCoordinator != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    __swift_project_value_buffer(v29, static Logger.pairingCoordinator);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_24AF48000, v30, v31, "PairingCoordinator: Missing userSessionListener, pairing flow will not wait for user action", v32, 2u);
      MEMORY[0x24C237030](v32, -1, -1);
    }

    v33 = v0[30];
    v34 = v0[27];
    v36 = v0[23];
    v35 = v0[24];
    v38 = v0[21];
    v37 = v0[22];
    v39 = v0[20];
    v40 = v0[18];
    v44 = v0[17];

    v12 = v0[1];
    goto LABEL_16;
  }

  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  v0[35] = __swift_project_value_buffer(v19, static Logger.pairingCoordinator);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_24AF48000, v20, v21, "PairingCoordinator: start user session listener", v22, 2u);
    MEMORY[0x24C237030](v22, -1, -1);
  }

  ObjectType = swift_getObjectType();
  v24 = *(v18 + 32);
  v43 = (v24 + *v24);
  v25 = v24[1];
  v26 = swift_task_alloc();
  v0[36] = v26;
  *v26 = v0;
  v26[1] = PairingCoordinator._setupUserSessionListener();
  v27 = v0[27];

  return v43(v27, ObjectType, v18);
}

{
  v1 = *v0;
  v2 = *(*v0 + 288);
  v6 = *v0;

  v3 = *(v1 + 264);
  v4 = *(v1 + 256);

  return MEMORY[0x2822009F8](PairingCoordinator._setupUserSessionListener(), v4, v3);
}

{
  v1 = v0[30];
  v3 = v0[26];
  v2 = v0[27];
  v4 = v0[25];
  AsyncStream.makeAsyncIterator()();
  (*(v3 + 8))(v2, v4);
  v0[37] = 0;
  v5 = v0[31];
  v6 = v0[14];
  v7 = *(MEMORY[0x277D85798] + 4);
  v8 = swift_task_alloc();
  v0[38] = v8;
  *v8 = v0;
  v8[1] = PairingCoordinator._setupUserSessionListener();
  v9 = v0[30];
  v10 = v0[28];
  v11 = v0[24];

  return MEMORY[0x2822003E8](v11, v6, v5, v10);
}

{
  v1 = *v0;
  v2 = *(*v0 + 304);
  v6 = *v0;

  v3 = *(v1 + 264);
  v4 = *(v1 + 256);

  return MEMORY[0x2822009F8](PairingCoordinator._setupUserSessionListener(), v4, v3);
}

{
  v76 = v0;
  v1 = *(v0 + 192);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10FindMyBase11TransactionC_0aB7Pairing16UserSessionStateOtMd, &_s10FindMyBase11TransactionC_0aB7Pairing16UserSessionStateOtMR);
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  v4 = *(v0 + 280);
  if (v3 == 1)
  {
    (*(*(v0 + 232) + 8))(*(v0 + 240), *(v0 + 224));
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 272);
    if (v7)
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_24AF48000, v5, v6, "PairingCoordinator: finish listening to user session updates", v9, 2u);
      MEMORY[0x24C237030](v9, -1, -1);
    }

    swift_unknownObjectRelease();
    v10 = *(v0 + 240);
    v11 = *(v0 + 216);
    v13 = *(v0 + 184);
    v12 = *(v0 + 192);
    v15 = *(v0 + 168);
    v14 = *(v0 + 176);
    v16 = *(v0 + 160);
    v17 = *(v0 + 144);
    v74 = *(v0 + 136);

    v18 = *(v0 + 8);

    return v18();
  }

  v21 = *(v0 + 176);
  v20 = *(v0 + 184);
  v22 = *v1;

  outlined init with take of UserSessionState(v1 + *(v2 + 48), v20, type metadata accessor for UserSessionState);
  outlined init with copy of UserSessionState(v20, v21, type metadata accessor for UserSessionState);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  v25 = os_log_type_enabled(v23, v24);
  v26 = *(v0 + 176);
  if (v25)
  {
    v27 = *(v0 + 168);
    v28 = *(v0 + 152);
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v75 = v30;
    *v29 = 136446210;
    outlined init with copy of UserSessionState(v26, v27, type metadata accessor for UserSessionState);
    v31 = String.init<A>(describing:)();
    v33 = v32;
    outlined destroy of UserSessionState(v26, type metadata accessor for UserSessionState);
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, &v75);

    *(v29 + 4) = v34;
    _os_log_impl(&dword_24AF48000, v23, v24, "PairingCoordinator: received sessionState = %{public}s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    MEMORY[0x24C237030](v30, -1, -1);
    MEMORY[0x24C237030](v29, -1, -1);
  }

  else
  {

    outlined destroy of UserSessionState(v26, type metadata accessor for UserSessionState);
  }

  v35 = *(v0 + 152);
  outlined init with copy of UserSessionState(*(v0 + 184), *(v0 + 160), type metadata accessor for UserSessionState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v37 = *(v0 + 184);
      v38 = *(v0 + 160);
      v40 = *(v0 + 128);
      v39 = *(v0 + 136);
      v41 = *(v0 + 112);
      v42 = *(v0 + 120);
      v44 = *(v0 + 96);
      v43 = *(v0 + 104);
      v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_13FindMyPairing0E17ConfigurationType_ptMd, &_s10Foundation4UUIDV_13FindMyPairing0E17ConfigurationType_ptMR) + 48);
      (*(v40 + 32))(v39, v38, v42);
      outlined init with take of Accessory((v38 + v45), v0 + 56);
      PairingCoordinator.handleAccessoryConfigured(accessoryIdentifier:configuration:)(v39, v0 + 56, v44, v43);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
      (*(v40 + 8))(v39, v42);
      v46 = v37;
    }

    else
    {
      v46 = *(v0 + 184);
    }

    outlined destroy of UserSessionState(v46, type metadata accessor for UserSessionState);
    v57 = *(v0 + 296);
LABEL_23:
    *(v0 + 296) = v57;
    v67 = *(v0 + 248);
    v68 = *(v0 + 112);
    v69 = *(MEMORY[0x277D85798] + 4);
    v70 = swift_task_alloc();
    *(v0 + 304) = v70;
    *v70 = v0;
    v70[1] = PairingCoordinator._setupUserSessionListener();
    v71 = *(v0 + 240);
    v72 = *(v0 + 224);
    v73 = *(v0 + 192);

    return MEMORY[0x2822003E8](v73, v68, v67, v72);
  }

  v47 = *(v0 + 296);
  v48 = *(v0 + 104);
  v49 = *(v0 + 112);
  v50 = *(v0 + 96);
  (*(*(v0 + 128) + 32))(*(v0 + 144), *(v0 + 160), *(v0 + 120));
  *(v0 + 328) = 4;
  PairingCoordinator.cancelTimeout(for:)((v0 + 328), v50, v48);
  if (v47)
  {
    v51 = *(v0 + 280);
    MEMORY[0x24C236EC0](v47);
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();
    MEMORY[0x24C236EB0](v47);
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *v54 = 138543362;
      MEMORY[0x24C236EC0](v47);
      v56 = _swift_stdlib_bridgeErrorToNSError();
      *(v54 + 4) = v56;
      *v55 = v56;
      _os_log_impl(&dword_24AF48000, v52, v53, "Failure on starting pairing timeout: %{public}@", v54, 0xCu);
      outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v55, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x24C237030](v55, -1, -1);
      MEMORY[0x24C237030](v54, -1, -1);
      MEMORY[0x24C236EB0](v47);
    }

    else
    {

      MEMORY[0x24C236EB0](v47);
    }

    v62 = *(v0 + 184);
    v63 = *(v0 + 144);
    v64 = *(v0 + 120);
    v65 = *(v0 + 128);
    v66 = *(v0 + 112);
    PairingCoordinator.handlePairingStarted(accessoryIdentifier:)(v63, *(v0 + 96), *(v0 + 104));
    (*(v65 + 8))(v63, v64);
    outlined destroy of UserSessionState(v62, type metadata accessor for UserSessionState);
    v57 = 0;
    goto LABEL_23;
  }

  *(v0 + 329) = 0;
  v58 = swift_task_alloc();
  *(v0 + 312) = v58;
  *v58 = v0;
  v58[1] = PairingCoordinator._setupUserSessionListener();
  v59 = *(v0 + 104);
  v60 = *(v0 + 112);
  v61 = *(v0 + 96);

  return PairingCoordinator.startTimeout(for:)((v0 + 329), v61, v59);
}

{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v8 = *v1;
  *(*v1 + 320) = v0;

  v4 = *(v2 + 256);
  v5 = *(v2 + 264);
  if (v0)
  {
    v6 = PairingCoordinator._setupUserSessionListener();
  }

  else
  {
    v6 = PairingCoordinator._setupUserSessionListener();
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

{
  v1 = v0[40];
  v2 = v0[23];
  v3 = v0[18];
  v4 = v0[15];
  v5 = v0[16];
  v6 = v0[14];
  PairingCoordinator.handlePairingStarted(accessoryIdentifier:)(v3, v0[12], v0[13]);
  (*(v5 + 8))(v3, v4);
  outlined destroy of UserSessionState(v2, type metadata accessor for UserSessionState);
  v0[37] = v1;
  v7 = v0[31];
  v8 = v0[14];
  v9 = *(MEMORY[0x277D85798] + 4);
  v10 = swift_task_alloc();
  v0[38] = v10;
  *v10 = v0;
  v10[1] = PairingCoordinator._setupUserSessionListener();
  v11 = v0[30];
  v12 = v0[28];
  v13 = v0[24];

  return MEMORY[0x2822003E8](v13, v8, v7, v12);
}

{
  v1 = v0[40];
  v2 = v0[35];
  MEMORY[0x24C236EC0](v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    MEMORY[0x24C236EC0](v1);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&dword_24AF48000, v3, v4, "Failure on starting pairing timeout: %{public}@", v5, 0xCu);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v6, -1, -1);
    MEMORY[0x24C237030](v5, -1, -1);
    MEMORY[0x24C236EB0](v1);
  }

  else
  {

    MEMORY[0x24C236EB0](v1);
  }

  v8 = v0[23];
  v9 = v0[18];
  v10 = v0[15];
  v11 = v0[16];
  v12 = v0[14];
  PairingCoordinator.handlePairingStarted(accessoryIdentifier:)(v9, v0[12], v0[13]);
  (*(v11 + 8))(v9, v10);
  outlined destroy of UserSessionState(v8, type metadata accessor for UserSessionState);
  v0[37] = 0;
  v13 = v0[31];
  v14 = v0[14];
  v15 = *(MEMORY[0x277D85798] + 4);
  v16 = swift_task_alloc();
  v0[38] = v16;
  *v16 = v0;
  v16[1] = PairingCoordinator._setupUserSessionListener();
  v17 = v0[30];
  v18 = v0[28];
  v19 = v0[24];

  return MEMORY[0x2822003E8](v19, v14, v13, v18);
}

uint64_t Logger.pairingCoordinator.unsafeMutableAddressor()
{
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v0, static Logger.pairingCoordinator);
}

uint64_t PairingCoordinator.isUserActionable.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v4(v12);
  v5 = v13;
  v6 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  if ((*(v6 + 48))(v5, v6))
  {
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    return 1;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    (v4)(v12, a1, a2);
    v8 = v13;
    v9 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    v10 = (*(v9 + 40))(v8, v9);
    v7 = v10 != 0;
    if (v10)
    {
      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v12);
  }

  return v7;
}

uint64_t closure #1 in PairingCoordinator.triggerPairingFlow()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[60] = a2;
  v3[61] = a3;
  v3[59] = a1;
  v4 = type metadata accessor for UUID();
  v3[62] = v4;
  v5 = *(v4 - 8);
  v3[63] = v5;
  v6 = *(v5 + 64) + 15;
  v3[64] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.triggerPairingFlow(), 0, 0);
}

uint64_t closure #1 in PairingCoordinator.triggerPairingFlow()()
{
  v1 = v0[59];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[65] = Strong;
  if (Strong)
  {
    v3 = v0[60];
    v4 = v0[61];
    v5 = *(v4 + 16);
    v4 += 16;
    v0[66] = v5;
    v0[67] = v4 & 0xFFFFFFFFFFFFLL | 0x20DC000000000000;
    v6 = *(v4 - 8);
    v8 = dispatch thunk of Actor.unownedExecutor.getter();
    v0[68] = v8;
    v0[69] = v7;

    return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.triggerPairingFlow(), v8, v7);
  }

  else
  {
    v9 = v0[64];

    v10 = v0[1];

    return v10();
  }
}

{
  v1 = *(v0 + 536);
  v2 = *(v0 + 520);
  v3 = (*(v0 + 528))(*(v0 + 480), *(v0 + 488));
  *(v0 + 560) = v3;

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.triggerPairingFlow(), v3, 0);
}

{
  v1 = *(v0 + 560);
  swift_beginAccess();
  v2 = *(v1 + 120);
  *(v0 + 448) = 1;
  v3 = swift_task_alloc();
  *(v3 + 16) = v0 + 448;

  *(v0 + 760) = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v3, v2) & 1;

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.triggerPairingFlow(), 0, 0);
}

{
  if (*(v0 + 760))
  {
    if (one-time initialization token for pairingCoordinator != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Logger.pairingCoordinator);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v0 + 520);
    if (v4)
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_24AF48000, v2, v3, "Pairing flow already triggered!", v6, 2u);
      MEMORY[0x24C237030](v6, -1, -1);
    }

    swift_unknownObjectRelease();

    v7 = *(v0 + 512);

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    v10 = *(v0 + 488);
    *(v0 + 456) = 1;
    v16 = (*(v10 + 152) + **(v10 + 152));
    v11 = *(*(v10 + 152) + 4);
    v12 = swift_task_alloc();
    *(v0 + 568) = v12;
    *v12 = v0;
    v12[1] = closure #1 in PairingCoordinator.triggerPairingFlow();
    v13 = *(v0 + 520);
    v14 = *(v0 + 480);
    v15 = *(v0 + 488);

    return v16(v0 + 456, v14, v15);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 568);
  v9 = *v1;
  *(*v1 + 576) = v0;

  if (v0)
  {
    v4 = closure #1 in PairingCoordinator.triggerPairingFlow();
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v7 = v2[61];
    v2[73] = *(v7 + 40);
    v2[74] = (v7 + 40) & 0xFFFFFFFFFFFFLL | 0xEA85000000000000;
    v6 = v2[69];
    v5 = v2[68];
    v4 = closure #1 in PairingCoordinator.triggerPairingFlow();
  }

  return MEMORY[0x2822009F8](v4, v5, v6);
}

{
  v1 = *(v0 + 592);
  v2 = *(v0 + 520);
  (*(v0 + 584))(*(v0 + 480), *(v0 + 488));

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.triggerPairingFlow(), 0, 0);
}

{
  v1 = v0[10];
  v2 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = (*(v2 + 64))(v1, v2);
  v5 = v4;
  v0[75] = v3;
  v0[76] = v4;
  v0[77] = swift_getObjectType();
  v6 = *(v5 + 16);
  v5 += 16;
  v0[78] = v6;
  v0[79] = v5 & 0xFFFFFFFFFFFFLL | 0xC23A000000000000;
  v7 = *(v5 - 8);
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.triggerPairingFlow(), v9, v8);
}

{
  v1 = *(v0 + 632);
  v2 = *(v0 + 600);
  (*(v0 + 624))(*(v0 + 616), *(v0 + 608));
  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.triggerPairingFlow(), 0, 0);
}

{
  v37 = v0;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  outlined init with copy of DetectedAccessory(v0 + 16, v0 + 96);
  v1 = *(v0 + 120);
  if (!v1)
  {
    if (one-time initialization token for pairingCoordinator != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    *(v0 + 656) = __swift_project_value_buffer(v13, static Logger.pairingCoordinator);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_24AF48000, v14, v15, "Trigger multi-accessory pairing flow.", v16, 2u);
      MEMORY[0x24C237030](v16, -1, -1);
    }

    v10 = *(v0 + 552);
    v11 = *(v0 + 544);
    v12 = closure #1 in PairingCoordinator.triggerPairingFlow();
    goto LABEL_13;
  }

  if (v1 == 1)
  {
    lazy protocol witness table accessor for type PairingCoordinatorError and conformance PairingCoordinatorError();
    v2 = swift_allocError();
    *v3 = 11;
    swift_willThrow();
    outlined destroy of DetectedAccessory(v0 + 16);
    *(v0 + 720) = v2;
    if (one-time initialization token for pairingCoordinator != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    *(v0 + 728) = __swift_project_value_buffer(v4, static Logger.pairingCoordinator);
    MEMORY[0x24C236EC0](v2);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    MEMORY[0x24C236EB0](v2);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138543362;
      MEMORY[0x24C236EC0](v2);
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v9;
      *v8 = v9;
      _os_log_impl(&dword_24AF48000, v5, v6, "Failure in pairing trigger: %{public}@", v7, 0xCu);
      outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x24C237030](v8, -1, -1);
      MEMORY[0x24C237030](v7, -1, -1);
    }

    v10 = *(v0 + 552);
    v11 = *(v0 + 544);
    v12 = closure #1 in PairingCoordinator.triggerPairingFlow();
LABEL_13:

    return MEMORY[0x2822009F8](v12, v11, v10);
  }

  outlined init with take of Accessory((v0 + 96), v0 + 296);
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Logger.pairingCoordinator);
  outlined init with copy of PairingEligibilityInfo(v0 + 296, v0 + 336);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v21 = *(v0 + 504);
    v20 = *(v0 + 512);
    v35 = *(v0 + 496);
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v36 = v23;
    *v22 = 141558275;
    *(v22 + 4) = 1752392040;
    *(v22 + 12) = 2081;
    v24 = *(v0 + 360);
    v25 = *(v0 + 368);
    __swift_project_boxed_opaque_existential_1((v0 + 336), v24);
    (*(v25 + 8))(v24, v25);
    lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    (*(v21 + 8))(v20, v35);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 336));
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v36);

    *(v22 + 14) = v29;
    _os_log_impl(&dword_24AF48000, v18, v19, "Trigger pairing flow for %{private,mask.hash}s", v22, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    MEMORY[0x24C237030](v23, -1, -1);
    MEMORY[0x24C237030](v22, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 336));
  }

  v30 = swift_task_alloc();
  *(v0 + 640) = v30;
  *v30 = v0;
  v30[1] = closure #1 in PairingCoordinator.triggerPairingFlow();
  v31 = *(v0 + 520);
  v33 = *(v0 + 480);
  v32 = *(v0 + 488);

  return PairingCoordinator._startAccessoryPairing()(v33, v32);
}

{
  v2 = *(*v1 + 640);
  v5 = *v1;
  *(*v1 + 648) = v0;

  if (v0)
  {
    v3 = closure #1 in PairingCoordinator.triggerPairingFlow();
  }

  else
  {
    v3 = closure #1 in PairingCoordinator.triggerPairingFlow();
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = v0[65];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 37);
  outlined destroy of DetectedAccessory((v0 + 2));
  v2 = v0[64];

  v3 = v0[1];

  return v3();
}

{
  v1 = *(v0 + 592);
  v2 = *(v0 + 520);
  (*(v0 + 584))(*(v0 + 480), *(v0 + 488));

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.triggerPairingFlow(), 0, 0);
}

{
  v1 = v0[20];
  v2 = v0[21];
  __swift_project_boxed_opaque_existential_1(v0 + 17, v1);
  v3 = (*(v2 + 40))(v1, v2);
  v0[83] = v3;
  if (v3)
  {
    v0[84] = v4;
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
    v5 = v0[69];
    v6 = v0[68];
    v7 = closure #1 in PairingCoordinator.triggerPairingFlow();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
    v8 = v0[82];
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_24AF48000, v9, v10, "Multi-accessory pairing flow is User Actionable but is missing UI configuration!", v11, 2u);
      MEMORY[0x24C237030](v11, -1, -1);
    }

    lazy protocol witness table accessor for type PairingCoordinatorError and conformance PairingCoordinatorError();
    v12 = swift_allocError();
    *v13 = 10;
    swift_willThrow();
    outlined destroy of DetectedAccessory((v0 + 2));
    v0[90] = v12;
    if (one-time initialization token for pairingCoordinator != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    v0[91] = __swift_project_value_buffer(v14, static Logger.pairingCoordinator);
    MEMORY[0x24C236EC0](v12);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    MEMORY[0x24C236EB0](v12);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138543362;
      MEMORY[0x24C236EC0](v12);
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v19;
      *v18 = v19;
      _os_log_impl(&dword_24AF48000, v15, v16, "Failure in pairing trigger: %{public}@", v17, 0xCu);
      outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v18, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x24C237030](v18, -1, -1);
      MEMORY[0x24C237030](v17, -1, -1);
    }

    v5 = v0[69];
    v6 = v0[68];
    v7 = closure #1 in PairingCoordinator.triggerPairingFlow();
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

{
  v1 = *(v0 + 592);
  v2 = *(v0 + 520);
  (*(v0 + 584))(*(v0 + 480), *(v0 + 488));

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.triggerPairingFlow(), 0, 0);
}

{
  v1 = v0[30];
  v2 = v0[31];
  __swift_project_boxed_opaque_existential_1(v0 + 27, v1);
  v3 = (*(v2 + 64))(v1, v2);
  v5 = v4;
  v0[85] = v3;
  ObjectType = swift_getObjectType();
  v7 = *(v5 + 88);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[86] = v9;
  *v9 = v0;
  v9[1] = closure #1 in PairingCoordinator.triggerPairingFlow();

  return (v11)(v0 + 32, ObjectType, v5);
}

{
  v2 = *v1;
  v3 = *(*v1 + 688);
  v4 = *v1;
  *(*v1 + 696) = v0;

  v5 = *(v2 + 680);
  swift_unknownObjectRelease();
  if (v0)
  {
    v6 = closure #1 in PairingCoordinator.triggerPairingFlow();
  }

  else
  {
    v6 = closure #1 in PairingCoordinator.triggerPairingFlow();
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

{
  if (*(v0 + 280))
  {
    v1 = *(v0 + 672);
    v2 = *(v0 + 664);
    outlined init with take of Accessory((v0 + 256), v0 + 176);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 216));
    ObjectType = swift_getObjectType();
    v4 = *(v1 + 40);
    v23 = (v4 + *v4);
    v5 = v4[1];
    v6 = swift_task_alloc();
    *(v0 + 704) = v6;
    *v6 = v0;
    v6[1] = closure #1 in PairingCoordinator.triggerPairingFlow();

    return v23(v0 + 176, ObjectType, v1);
  }

  else
  {
    v8 = *(v0 + 664);
    swift_unknownObjectRelease();
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v0 + 256, &_s13FindMyPairing0C10UIInfoType_pSgMd, &_s13FindMyPairing0C10UIInfoType_pSgMR);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 216));
    v9 = *(v0 + 656);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_24AF48000, v10, v11, "Multi-accessory pairing flow is User Actionable but is missing UI configuration!", v12, 2u);
      MEMORY[0x24C237030](v12, -1, -1);
    }

    lazy protocol witness table accessor for type PairingCoordinatorError and conformance PairingCoordinatorError();
    v13 = swift_allocError();
    *v14 = 10;
    swift_willThrow();
    outlined destroy of DetectedAccessory(v0 + 16);
    *(v0 + 720) = v13;
    if (one-time initialization token for pairingCoordinator != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    *(v0 + 728) = __swift_project_value_buffer(v15, static Logger.pairingCoordinator);
    MEMORY[0x24C236EC0](v13);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    MEMORY[0x24C236EB0](v13);
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138543362;
      MEMORY[0x24C236EC0](v13);
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v20;
      *v19 = v20;
      _os_log_impl(&dword_24AF48000, v16, v17, "Failure in pairing trigger: %{public}@", v18, 0xCu);
      outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v19, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x24C237030](v19, -1, -1);
      MEMORY[0x24C237030](v18, -1, -1);
    }

    v21 = *(v0 + 552);
    v22 = *(v0 + 544);

    return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.triggerPairingFlow(), v22, v21);
  }
}

{
  v2 = *(*v1 + 704);
  v5 = *v1;
  *(*v1 + 712) = v0;

  if (v0)
  {
    v3 = closure #1 in PairingCoordinator.triggerPairingFlow();
  }

  else
  {
    v3 = closure #1 in PairingCoordinator.triggerPairingFlow();
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = v0[83];
  v2 = v0[65];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 22);
  outlined destroy of DetectedAccessory((v0 + 2));
  v3 = v0[64];

  v4 = v0[1];

  return v4();
}

{
  v1 = v0[65];
  v2 = v0[64];
  swift_unknownObjectRelease();

  v3 = v0[1];
  v4 = v0[72];

  return v3();
}

{
  v1 = *(v0 + 536);
  v2 = *(v0 + 520);
  v3 = (*(v0 + 528))(*(v0 + 480), *(v0 + 488));
  *(v0 + 736) = v3;

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.triggerPairingFlow(), v3, 0);
}

{
  v1 = *(v0 + 736);
  swift_beginAccess();
  v2 = *(v1 + 120);
  *(v0 + 464) = 3;
  v3 = swift_task_alloc();
  *(v3 + 16) = v0 + 464;

  *(v0 + 761) = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v3, v2) & 1;

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.triggerPairingFlow(), 0, 0);
}

{
  v1 = *(v0 + 720);
  MEMORY[0x24C236EC0](v1);
  v2 = swift_task_alloc();
  *(v0 + 744) = v2;
  *v2 = v0;
  v2[1] = closure #1 in PairingCoordinator.triggerPairingFlow();
  v3 = *(v0 + 761);
  v4 = *(v0 + 520);
  v5 = *(v0 + 480);
  v6 = *(v0 + 488);
  v7 = MEMORY[0x277D84F90];

  return PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:)(v3, v1, v7, v5, v6);
}

{
  v2 = *v1;
  v3 = *(*v1 + 744);
  v6 = *v1;
  *(*v1 + 752) = v0;

  if (v0)
  {
    v4 = closure #1 in PairingCoordinator.triggerPairingFlow();
  }

  else
  {
    MEMORY[0x24C236EB0](*(v2 + 720));
    v4 = closure #1 in PairingCoordinator.triggerPairingFlow();
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  v1 = v0[90];
  v2 = v0[65];
  swift_unknownObjectRelease();
  MEMORY[0x24C236EB0](v1);
  v3 = v0[64];

  v4 = v0[1];

  return v4();
}

{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 37);
  outlined destroy of DetectedAccessory((v0 + 2));
  v1 = v0[81];
  v0[90] = v1;
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v0[91] = __swift_project_value_buffer(v2, static Logger.pairingCoordinator);
  MEMORY[0x24C236EC0](v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    MEMORY[0x24C236EC0](v1);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&dword_24AF48000, v3, v4, "Failure in pairing trigger: %{public}@", v5, 0xCu);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v6, -1, -1);
    MEMORY[0x24C237030](v5, -1, -1);
  }

  v8 = v0[69];
  v9 = v0[68];

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.triggerPairingFlow(), v9, v8);
}

{
  v1 = v0[83];
  swift_unknownObjectRelease();
  outlined destroy of DetectedAccessory((v0 + 2));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 27);
  v2 = v0[87];
  v0[90] = v2;
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  v0[91] = __swift_project_value_buffer(v3, static Logger.pairingCoordinator);
  MEMORY[0x24C236EC0](v2);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v2);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    MEMORY[0x24C236EC0](v2);
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&dword_24AF48000, v4, v5, "Failure in pairing trigger: %{public}@", v6, 0xCu);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v7, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v7, -1, -1);
    MEMORY[0x24C237030](v6, -1, -1);
  }

  v9 = v0[69];
  v10 = v0[68];

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.triggerPairingFlow(), v10, v9);
}

{
  v1 = v0[83];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 22);
  outlined destroy of DetectedAccessory((v0 + 2));
  v2 = v0[89];
  v0[90] = v2;
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  v0[91] = __swift_project_value_buffer(v3, static Logger.pairingCoordinator);
  MEMORY[0x24C236EC0](v2);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v2);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    MEMORY[0x24C236EC0](v2);
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&dword_24AF48000, v4, v5, "Failure in pairing trigger: %{public}@", v6, 0xCu);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v7, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v7, -1, -1);
    MEMORY[0x24C237030](v6, -1, -1);
  }

  v9 = v0[69];
  v10 = v0[68];

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.triggerPairingFlow(), v10, v9);
}

{
  v1 = v0[94];
  v2 = v0[91];
  MEMORY[0x24C236EB0](v0[90]);
  MEMORY[0x24C236EC0](v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[94];
  v7 = v0[90];
  v8 = v0[65];
  if (v5)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543362;
    MEMORY[0x24C236EC0](v6);
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&dword_24AF48000, v3, v4, "Failure in end pairing: %{public}@", v9, 0xCu);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v10, -1, -1);
    MEMORY[0x24C237030](v9, -1, -1);
    swift_unknownObjectRelease();
    MEMORY[0x24C236EB0](v7);
    MEMORY[0x24C236EB0](v6);
  }

  else
  {
    v12 = v0[65];
    swift_unknownObjectRelease();
    MEMORY[0x24C236EB0](v7);

    MEMORY[0x24C236EB0](v6);
  }

  v13 = v0[64];

  v14 = v0[1];

  return v14();
}

uint64_t partial apply for closure #1 in PairingCoordinator.triggerPairingFlow()()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = dispatch thunk of PairingValidator.ack(_:);

  return closure #1 in PairingCoordinator.triggerPairingFlow()(v4, v2, v3);
}

uint64_t PairingCoordinator._startAccessoryPairing()(uint64_t a1, uint64_t a2)
{
  v3[293] = v2;
  v3[287] = a2;
  v3[281] = a1;
  v5 = type metadata accessor for UUID();
  v3[294] = v5;
  v6 = *(v5 - 8);
  v3[295] = v6;
  v7 = *(v6 + 64) + 15;
  v3[296] = swift_task_alloc();
  v8 = *(a2 + 8);
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[297] = v10;
  v3[298] = v9;

  return MEMORY[0x2822009F8](PairingCoordinator._startAccessoryPairing(), v10, v9);
}

{
  *(v3 + 2536) = v2;
  if (v2)
  {
    return MEMORY[0x282200920](v3 + 656);
  }

  else
  {
    return MEMORY[0x282200930](v3 + 656, a2, PairingCoordinator._startAccessoryPairing(), v3 + 2096);
  }
}

uint64_t PairingCoordinator._startAccessoryPairing()()
{
  v1 = v0[293];
  v2 = v0[287];
  v3 = v0[281];
  type metadata accessor for WorkItemQueue();
  (*(v2 + 72))(v3, v2);
  LOBYTE(v1) = static WorkItemQueue.called(on:)();

  if (v1)
  {
    v4 = v0[293];
    v5 = v0[281];
    v6 = v0[287];
    v7 = *(v6 + 40);
    v0[299] = v7;
    v0[300] = (v6 + 40) & 0xFFFFFFFFFFFFLL | 0xEA85000000000000;
    v7(v5);
    v8 = v0[250];
    v9 = v0[251];
    __swift_project_boxed_opaque_existential_1(v0 + 247, v8);
    v10 = (*(v9 + 64))(v8, v9);
    v12 = v11;
    v0[301] = v10;
    v0[302] = v11;
    v0[303] = swift_getObjectType();
    v13 = *(v12 + 16);
    v12 += 16;
    v0[304] = v13;
    v0[305] = v12 & 0xFFFFFFFFFFFFLL | 0xC23A000000000000;
    v14 = *(v12 - 8);
    v16 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x2822009F8](PairingCoordinator._startAccessoryPairing(), v16, v15);
  }

  else
  {
    lazy protocol witness table accessor for type PairingCoordinatorError and conformance PairingCoordinatorError();
    swift_allocError();
    *v17 = 8;
    swift_willThrow();
    v18 = v0[296];

    v19 = v0[1];

    return v19();
  }
}

{
  v1 = *(v0 + 2440);
  v2 = *(v0 + 2408);
  (*(v0 + 2432))(*(v0 + 2424), *(v0 + 2416));
  swift_unknownObjectRelease();
  v3 = *(v0 + 2384);
  v4 = *(v0 + 2376);

  return MEMORY[0x2822009F8](PairingCoordinator._startAccessoryPairing(), v4, v3);
}

{
  v53 = v0;
  v1 = (v0 + 1416);
  if (*(v0 + 1440) >= 2uLL)
  {
    outlined init with take of Accessory(v1, v0 + 1336);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1976));
    if (one-time initialization token for pairingCoordinator != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    *(v0 + 2448) = __swift_project_value_buffer(v6, static Logger.pairingCoordinator);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_24AF48000, v7, v8, "Retrieving peripheral", v9, 2u);
      MEMORY[0x24C237030](v9, -1, -1);
    }

    v10 = *(v0 + 2344);
    v11 = *(v0 + 2296);
    v12 = *(v0 + 2248);

    outlined init with copy of PairingEligibilityInfo(v0 + 1336, v0 + 2056);
    v13 = swift_allocObject();
    v13[2] = v12;
    v13[3] = v11;
    v13[4] = v10;
    outlined init with take of Accessory((v0 + 2056), (v13 + 5));
    v14 = swift_allocObject();
    *(v0 + 2456) = v14;
    *(v14 + 16) = &async function pointer to partial apply for implicit closure #1 in PairingCoordinator._startAccessoryPairing();
    *(v14 + 24) = v13;
    swift_unknownObjectRetain();
    swift_asyncLet_begin();
    if (PairingCoordinator.isUserActionable.getter(v12, v11))
    {
      v16 = *(v0 + 2400);
      v17 = *(v0 + 2344);
      (*(v0 + 2392))(*(v0 + 2248), *(v0 + 2296));
      v18 = *(v0 + 1520);
      v19 = *(v0 + 1528);
      __swift_project_boxed_opaque_existential_1((v0 + 1496), v18);
      v20 = (*(v19 + 40))(v18, v19);
      *(v0 + 2488) = v20;
      if (v20)
      {
        v22 = *(v0 + 2400);
        v23 = *(v0 + 2392);
        v24 = *(v0 + 2344);
        v25 = *(v0 + 2296);
        v26 = *(v0 + 2248);
        *(v0 + 2496) = v21;
        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1496));
        v23(v26, v25);
        v27 = *(v0 + 1760);
        v28 = *(v0 + 1768);
        __swift_project_boxed_opaque_existential_1((v0 + 1736), v27);
        v29 = (*(v28 + 64))(v27, v28);
        v31 = v30;
        *(v0 + 2504) = v29;
        ObjectType = swift_getObjectType();
        v33 = *(v31 + 88);
        v50 = (v33 + *v33);
        v34 = v33[1];
        v35 = swift_task_alloc();
        *(v0 + 2512) = v35;
        *v35 = v0;
        v35[1] = PairingCoordinator._startAccessoryPairing();

        return v50(v0 + 1816, ObjectType, v31);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1496));
        v36 = *(v0 + 2448);
        outlined init with copy of PairingEligibilityInfo(v0 + 1336, v0 + 1576);
        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = *(v0 + 2368);
          v40 = *(v0 + 2360);
          v51 = *(v0 + 2352);
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          v52 = v42;
          *v41 = 141558275;
          *(v41 + 4) = 1752392040;
          *(v41 + 12) = 2081;
          v43 = *(v0 + 1600);
          v44 = *(v0 + 1608);
          __swift_project_boxed_opaque_existential_1((v0 + 1576), v43);
          (*(v44 + 8))(v43, v44);
          lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
          v45 = dispatch thunk of CustomStringConvertible.description.getter();
          v47 = v46;
          (*(v40 + 8))(v39, v51);
          __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1576));
          v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v47, &v52);

          *(v41 + 14) = v48;
          _os_log_impl(&dword_24AF48000, v37, v38, "Pairing flow is User Actionable but is missing UI configuration: %{private,mask.hash}s", v41, 0x16u);
          __swift_destroy_boxed_opaque_existential_1Tm(v42);
          MEMORY[0x24C237030](v42, -1, -1);
          MEMORY[0x24C237030](v41, -1, -1);
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1576));
        }

        lazy protocol witness table accessor for type PairingCoordinatorError and conformance PairingCoordinatorError();
        *(v0 + 2576) = swift_allocError();
        *v49 = 10;
        swift_willThrow();

        return MEMORY[0x282200920](v0 + 16);
      }
    }

    else
    {

      return MEMORY[0x282200930](v0 + 16, v15, PairingCoordinator._startAccessoryPairing(), v0 + 1376);
    }
  }

  else
  {
    outlined destroy of DetectedAccessory(v1);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1976));
    lazy protocol witness table accessor for type PairingCoordinatorError and conformance PairingCoordinatorError();
    swift_allocError();
    *v2 = 12;
    swift_willThrow();
    v3 = *(v0 + 2368);

    v4 = *(v0 + 8);

    return v4();
  }
}

{
  v1[308] = v0;
  if (v0)
  {

    return MEMORY[0x282200920](v1 + 2);
  }

  else
  {
    v2 = swift_task_alloc();
    v1[309] = v2;
    *v2 = v1;
    v2[1] = PairingCoordinator._startAccessoryPairing();
    v3 = v1[293];
    v4 = v1[287];
    v5 = v1[281];

    return PairingCoordinator._preFetchMetadata()(v5, v4);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 2472);
  v5 = *v1;
  *(*v1 + 2480) = v0;

  if (!v0)
  {
    *(v2 + 2584) = 0u;
  }

  return MEMORY[0x282200920](v2 + 16);
}

{
  v2 = *v1;
  v3 = *(*v1 + 2512);
  v4 = *v1;
  *(*v1 + 2520) = v0;

  v5 = v2[313];
  swift_unknownObjectRelease();
  v6 = v2[298];
  v7 = v2[297];
  if (v0)
  {
    v8 = PairingCoordinator._startAccessoryPairing();
  }

  else
  {
    v8 = PairingCoordinator._startAccessoryPairing();
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

{
  v23 = v0;
  if (*(v0 + 1840))
  {
    v20 = *(v0 + 2488);
    outlined init with take of Accessory((v0 + 1816), v0 + 1656);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1736));
    outlined init with copy of PairingEligibilityInfo(v0 + 1656, v0 + 1896);
    v1 = swift_allocObject();
    *(v1 + 16) = v20;
    outlined init with take of Accessory((v0 + 1896), v1 + 32);
    v2 = swift_allocObject();
    *(v0 + 2528) = v2;
    *(v2 + 16) = &async function pointer to partial apply for implicit closure #2 in PairingCoordinator._startAccessoryPairing();
    *(v2 + 24) = v1;
    swift_unknownObjectRetain();
    swift_asyncLet_begin();

    return MEMORY[0x282200930](v0 + 16, v3, PairingCoordinator._startAccessoryPairing(), v0 + 1856);
  }

  else
  {
    v4 = *(v0 + 2488);
    swift_unknownObjectRelease();
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v0 + 1816, &_s13FindMyPairing0C10UIInfoType_pSgMd, &_s13FindMyPairing0C10UIInfoType_pSgMR);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1736));
    v5 = *(v0 + 2448);
    outlined init with copy of PairingEligibilityInfo(v0 + 1336, v0 + 1576);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 2368);
      v9 = *(v0 + 2360);
      v21 = *(v0 + 2352);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v22 = v11;
      *v10 = 141558275;
      *(v10 + 4) = 1752392040;
      *(v10 + 12) = 2081;
      v12 = *(v0 + 1600);
      v13 = *(v0 + 1608);
      __swift_project_boxed_opaque_existential_1((v0 + 1576), v12);
      (*(v13 + 8))(v12, v13);
      lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v16 = v15;
      (*(v9 + 8))(v8, v21);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1576));
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v22);

      *(v10 + 14) = v17;
      _os_log_impl(&dword_24AF48000, v6, v7, "Pairing flow is User Actionable but is missing UI configuration: %{private,mask.hash}s", v10, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x24C237030](v11, -1, -1);
      MEMORY[0x24C237030](v10, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1576));
    }

    lazy protocol witness table accessor for type PairingCoordinatorError and conformance PairingCoordinatorError();
    *(v0 + 2576) = swift_allocError();
    *v18 = 10;
    swift_willThrow();

    return MEMORY[0x282200920](v0 + 16);
  }
}

{
  v1[318] = v0;
  if (v0)
  {
    return MEMORY[0x282200920](v1 + 82);
  }

  else
  {
    return MEMORY[0x2822009F8](PairingCoordinator._startAccessoryPairing(), v1[297], v1[298]);
  }
}

{
  v1 = v0[293];
  v2 = (*(v0[287] + 16))(v0[281]);
  v0[319] = v2;

  return MEMORY[0x2822009F8](PairingCoordinator._startAccessoryPairing(), v2, 0);
}

{
  v1 = v0[319];
  v2 = v0[318];
  swift_beginAccess();
  v3 = *(v1 + 120);
  v0[275] = 4;
  v4 = swift_task_alloc();
  *(v4 + 16) = v0 + 275;

  LOBYTE(v2) = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v4, v3);

  if (v2)
  {
    v5 = swift_task_alloc();
    v0[320] = v5;
    *v5 = v0;
    v5[1] = PairingCoordinator._startAccessoryPairing();
    v6 = v0[293];
    v7 = v0[287];
    v8 = v0[281];

    return PairingCoordinator._preFetchMetadata()(v8, v7);
  }

  else
  {

    return MEMORY[0x282200920](v0 + 82);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 2560);
  v5 = *v1;
  *(*v1 + 2568) = v0;

  return MEMORY[0x282200920](v2 + 656);
}

{
  return MEMORY[0x2822009F8](PairingCoordinator._startAccessoryPairing(), *(v0 + 2376), *(v0 + 2384));
}

{
  v1 = v0[307];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 167);

  v2 = v0[322];
  v3 = v0[296];

  v4 = v0[1];

  return v4();
}

{
  return MEMORY[0x2822009F8](PairingCoordinator._startAccessoryPairing(), *(v0 + 2376), *(v0 + 2384));
}

{
  v1 = v0[311];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 207);
  v0[324] = v0[316];
  v0[323] = &_ss5Error_pIegHzo_ytsAA_pIegHTrzo_TRTA_379Tu;

  return MEMORY[0x282200920](v0 + 2);
}

{
  return MEMORY[0x2822009F8](PairingCoordinator._startAccessoryPairing(), *(v0 + 2376), *(v0 + 2384));
}

{
  v1 = v0[324];
  v2 = v0[323];
  v3 = v0[307];
  v4 = v0[296];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 167);

  _s13FindMyPairing0C16CoordinatorStateOIegHn_SgWOe_0(v2);

  v5 = v0[1];

  return v5();
}

{
  return MEMORY[0x2822009F8](PairingCoordinator._startAccessoryPairing(), *(v0 + 2376), *(v0 + 2384));
}

{
  v1 = v0[307];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 167);

  v2 = v0[308];
  v3 = v0[296];

  v4 = v0[1];

  return v4();
}

{
  return MEMORY[0x2822009F8](PairingCoordinator._startAccessoryPairing(), *(v0 + 2376), *(v0 + 2384));
}

{
  v1 = v0[307];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 167);

  v2 = v0[310];
  v3 = v0[296];

  v4 = v0[1];

  return v4();
}

{
  v1 = *(v0 + 2488);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1736));

  return MEMORY[0x282200920](v0 + 16);
}

{
  return MEMORY[0x2822009F8](PairingCoordinator._startAccessoryPairing(), *(v0 + 2376), *(v0 + 2384));
}

{
  v1 = v0[307];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 167);

  v2 = v0[315];
  v3 = v0[296];

  v4 = v0[1];

  return v4();
}

{
  return MEMORY[0x2822009F8](PairingCoordinator._startAccessoryPairing(), *(v0 + 2376), *(v0 + 2384));
}

{
  v1 = *(v0 + 2488);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1656));

  return MEMORY[0x282200920](v0 + 16);
}

{
  return MEMORY[0x2822009F8](PairingCoordinator._startAccessoryPairing(), *(v0 + 2376), *(v0 + 2384));
}

{
  v1 = v0[316];
  v2 = v0[307];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 167);

  v3 = v0[317];
  v4 = v0[296];

  v5 = v0[1];

  return v5();
}

{
  return MEMORY[0x2822009F8](PairingCoordinator._startAccessoryPairing(), *(v0 + 2376), *(v0 + 2384));
}

{
  v1 = *(v0 + 2488);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1656));

  return MEMORY[0x282200920](v0 + 16);
}

{
  return MEMORY[0x2822009F8](PairingCoordinator._startAccessoryPairing(), *(v0 + 2376), *(v0 + 2384));
}

{
  v1 = v0[316];
  v2 = v0[307];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 167);

  v3 = v0[318];
  v4 = v0[296];

  v5 = v0[1];

  return v5();
}

{
  return MEMORY[0x2822009F8](PairingCoordinator._startAccessoryPairing(), *(v0 + 2376), *(v0 + 2384));
}

{
  v1 = *(v0 + 2488);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1656));

  return MEMORY[0x282200920](v0 + 16);
}

{
  return MEMORY[0x2822009F8](PairingCoordinator._startAccessoryPairing(), *(v0 + 2376), *(v0 + 2384));
}

{
  v1 = v0[316];
  v2 = v0[307];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 167);

  v3 = v0[321];
  v4 = v0[296];

  v5 = v0[1];

  return v5();
}

uint64_t PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 968) = v5;
  *(v6 + 960) = a5;
  *(v6 + 952) = a4;
  *(v6 + 944) = a3;
  *(v6 + 936) = a2;
  *(v6 + 106) = a1;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8) + 64) + 15;
  *(v6 + 976) = swift_task_alloc();
  v9 = type metadata accessor for AnalyticsEvent(0);
  *(v6 + 984) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v6 + 992) = swift_task_alloc();
  *(v6 + 1000) = *(a5 + 8);
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v6 + 1008) = v12;
  *(v6 + 1016) = v11;

  return MEMORY[0x2822009F8](PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:), v12, v11);
}

uint64_t PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:)()
{
  v31 = v0;
  v1 = *(v0 + 968);
  v2 = *(v0 + 960);
  v3 = *(v0 + 952);
  type metadata accessor for WorkItemQueue();
  (*(v2 + 72))(v3, v2);
  LOBYTE(v1) = static WorkItemQueue.called(on:)();

  if (v1 & 1) != 0 || (v4 = *(v0 + 968), (*(*(v0 + 960) + 80))(*(v0 + 952)), LOBYTE(v4) = static WorkItemQueue.called(on:)(), , (v4))
  {
    if (one-time initialization token for pairingCoordinator != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 944);
    v6 = *(v0 + 936);
    v7 = type metadata accessor for Logger();
    *(v0 + 1024) = __swift_project_value_buffer(v7, static Logger.pairingCoordinator);
    swift_bridgeObjectRetain_n();
    MEMORY[0x24C236EC0](v6);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    MEMORY[0x24C236EB0](v6);
    if (os_log_type_enabled(v8, v9))
    {
      v10 = *(v0 + 936);
      v11 = *(v0 + 106);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v30 = v14;
      *v12 = 136315906;
      *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002FLL, 0x800000024AFAF760, &v30);
      *(v12 + 12) = 1024;
      *(v12 + 14) = v11;
      *(v12 + 18) = 2114;
      if (v10)
      {
        MEMORY[0x24C236EC0](v6);
        v15 = _swift_stdlib_bridgeErrorToNSError();
        v16 = v15;
      }

      else
      {
        v15 = 0;
        v16 = 0;
      }

      v23 = *(v0 + 944);
      *(v12 + 20) = v15;
      *v13 = v16;
      *(v12 + 28) = 1024;
      v24 = *(v23 + 16);

      *(v12 + 30) = v24 == 0;

      _os_log_impl(&dword_24AF48000, v8, v9, "%s: forwardResultToUI = %{BOOL}d, error = %{public}@, beaconIds.isEmpty = %{BOOL}d", v12, 0x22u);
      outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v13, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x24C237030](v13, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x24C237030](v14, -1, -1);
      MEMORY[0x24C237030](v12, -1, -1);
    }

    else
    {
      v17 = *(v0 + 944);
      swift_bridgeObjectRelease_n();
    }

    v25 = *(v0 + 968);
    v26 = *(v0 + 952);
    v27 = *(v0 + 960);
    v28 = *(v27 + 16);
    *(v0 + 1032) = v28;
    *(v0 + 1040) = (v27 + 16) & 0xFFFFFFFFFFFFLL | 0x20DC000000000000;
    v29 = v28(v26);
    *(v0 + 1048) = v29;

    return MEMORY[0x2822009F8](PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:), v29, 0);
  }

  else
  {
    lazy protocol witness table accessor for type PairingCoordinatorError and conformance PairingCoordinatorError();
    swift_allocError();
    *v18 = 8;
    swift_willThrow();
    v19 = *(v0 + 992);
    v20 = *(v0 + 976);

    v21 = *(v0 + 8);

    return v21();
  }
}

{
  v1 = *(v0 + 1048);
  swift_beginAccess();
  v2 = *(v1 + 120);
  *(v0 + 904) = 14;
  v3 = swift_task_alloc();
  *(v3 + 16) = v0 + 904;

  *(v0 + 107) = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v3, v2) & 1;

  v4 = *(v0 + 1016);
  v5 = *(v0 + 1008);

  return MEMORY[0x2822009F8](PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:), v5, v4);
}

{
  if (*(v0 + 107))
  {
    v1 = *(v0 + 1024);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_24AF48000, v2, v3, "Results were already forwarded to UI, can't end pairing again.", v4, 2u);
      MEMORY[0x24C237030](v4, -1, -1);
    }

    v5 = *(v0 + 992);
    v6 = *(v0 + 976);

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v9 = *(v0 + 968);
    v10 = *(v0 + 952);
    v11 = *(v0 + 960);
    v12 = *(v11 + 40);
    *(v0 + 1056) = v12;
    *(v0 + 1064) = (v11 + 40) & 0xFFFFFFFFFFFFLL | 0xEA85000000000000;
    v12(v10);
    v13 = *(v0 + 656);
    v14 = *(v0 + 664);
    __swift_project_boxed_opaque_existential_1((v0 + 632), v13);
    v15 = (*(v14 + 40))(v13, v14);
    *(v0 + 1072) = v15;
    if (v15)
    {
      *(v0 + 1080) = v16;
      v17 = v16;
      *(v0 + 1088) = swift_getObjectType();
      v18 = *(v17 + 56);
      v17 += 56;
      *(v0 + 1096) = v18;
      *(v0 + 1104) = v17 & 0xFFFFFFFFFFFFLL | 0x6389000000000000;
      v19 = *(v17 - 48);
      v21 = dispatch thunk of Actor.unownedExecutor.getter();

      return MEMORY[0x2822009F8](PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:), v21, v20);
    }

    else
    {
      v22 = *(v0 + 1000);
      v23 = *(v0 + 968);
      v27 = *(v0 + 952);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 632));
      v24 = swift_task_alloc();
      *(v0 + 1112) = v24;
      *(v24 + 16) = v27;
      *(v24 + 32) = v23;
      v25 = *(MEMORY[0x277D859E0] + 4);
      v26 = swift_task_alloc();
      *(v0 + 1120) = v26;
      *v26 = v0;
      v26[1] = PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:);

      return MEMORY[0x2822007B8]();
    }
  }
}

{
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1072);
  (*(v0 + 1096))(0, *(v0 + 1088), *(v0 + 1080));
  swift_unknownObjectRelease();
  v3 = *(v0 + 1016);
  v4 = *(v0 + 1008);

  return MEMORY[0x2822009F8](PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:), v4, v3);
}

{
  v1 = *(v0 + 1000);
  v2 = *(v0 + 968);
  v7 = *(v0 + 952);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 632));
  v3 = swift_task_alloc();
  *(v0 + 1112) = v3;
  *(v3 + 16) = v7;
  *(v3 + 32) = v2;
  v4 = *(MEMORY[0x277D859E0] + 4);
  v5 = swift_task_alloc();
  *(v0 + 1120) = v5;
  *v5 = v0;
  v5[1] = PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:);

  return MEMORY[0x2822007B8]();
}

{
  v1 = *v0;
  v2 = *(*v0 + 1120);
  v3 = *(*v0 + 1112);
  v7 = *v0;

  v4 = *(v1 + 1016);
  v5 = *(v1 + 1008);

  return MEMORY[0x2822009F8](PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:), v5, v4);
}

{
  v1 = *(v0 + 1064);
  v2 = *(v0 + 968);
  (*(v0 + 1056))(*(v0 + 952), *(v0 + 960));
  v3 = *(v0 + 616);
  v4 = *(v0 + 624);
  __swift_project_boxed_opaque_existential_1((v0 + 592), v3);
  v5 = (*(v4 + 80))(v3, v4);
  *(v0 + 1128) = v5;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 592));
  *(v0 + 888) = v5;
  v6 = *(MEMORY[0x277D08A68] + 4);
  v7 = swift_task_alloc();
  *(v0 + 1136) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay13FindMyPairing0C8Executor_pGMd, &_sSay13FindMyPairing0C8Executor_pGMR);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *(v0 + 1144) = v9;
  v10 = lazy protocol witness table accessor for type [PairingOperation] and conformance [A](&lazy protocol witness table cache variable for type [PairingExecutor] and conformance [A], &_sSay13FindMyPairing0C8Executor_pGMd, &_sSay13FindMyPairing0C8Executor_pGMR);
  *v7 = v0;
  v7[1] = PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:);

  return MEMORY[0x28215ED58](&async function pointer to closure #2 in PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:), 0, v8, v9, v10);
}

{
  v1 = v0[144];
  if (*(v1 + 16))
  {
    v2 = *(v1 + 32);
    MEMORY[0x24C236EC0](v2);
    v3 = v0[144];
  }

  else
  {
    v2 = 0;
  }

  v0[146] = v2;
  v4 = v0[130];
  v5 = v0[129];
  v6 = v0[121];
  v7 = v0[120];
  v8 = v0[119];

  v9 = v5(v8, v7);
  v0[147] = v9;

  return MEMORY[0x2822009F8](PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:), v9, 0);
}

{
  v1 = v0[147];
  swift_beginAccess();
  v2 = *(v1 + 128);
  v0[148] = v2;
  outlined copy of PairingCoordinatorState(v2);

  v3 = v0[127];
  v4 = v0[126];

  return MEMORY[0x2822009F8](PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:), v4, v3);
}

{
  v1 = *(v0 + 1184);
  if (v1 == 13)
  {
    v2 = *(v0 + 936);
    outlined consume of PairingCoordinatorState(0xDuLL);
    outlined consume of PairingCoordinatorState(0xDuLL);
    if (!v2)
    {
      v3 = *(v0 + 960);
      *(v0 + 672) = 0u;
      *(v0 + 688) = 0u;
      *(v0 + 704) = 0;
      v4 = *(v3 + 176);
      v14 = (v4 + *v4);
      v5 = v4[1];
      v6 = swift_task_alloc();
      *(v0 + 1192) = v6;
      *v6 = v0;
      v6[1] = PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:);
      v7 = *(v0 + 968);
      v8 = *(v0 + 960);
      v9 = *(v0 + 952);

      return v14(v0 + 712, v9, v8);
    }
  }

  else
  {
    outlined consume of PairingCoordinatorState(v1);
    outlined consume of PairingCoordinatorState(0xDuLL);
  }

  v11 = *(v0 + 1040);
  v12 = *(v0 + 968);
  v13 = (*(v0 + 1032))(*(v0 + 952), *(v0 + 960));
  *(v0 + 1208) = v13;

  return MEMORY[0x2822009F8](PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:), v13, 0);
}

{
  v2 = *v1;
  v3 = *(*v1 + 1192);
  v4 = *v1;
  *(*v1 + 1200) = v0;

  v5 = *(v2 + 1016);
  v6 = *(v2 + 1008);
  if (v0)
  {
    v7 = PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:);
  }

  else
  {
    v7 = PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:);
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

{
  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v0 + 672, &_s13FindMyPairing0C8Location_pSgMd, &_s13FindMyPairing0C8Location_pSgMR);
  v1 = *(v0 + 728);
  *(v0 + 672) = *(v0 + 712);
  *(v0 + 688) = v1;
  *(v0 + 704) = *(v0 + 744);
  v2 = *(v0 + 1200);
  v3 = *(v0 + 944);
  outlined init with copy of PairingContext?(v0 + 672, v0 + 16, &_s13FindMyPairing0C8Location_pSgMd, &_s13FindMyPairing0C8Location_pSgMR);
  *(v0 + 56) = v3;
  *(v0 + 232) = &type metadata for PairingSuccessResult;
  *(v0 + 240) = &protocol witness table for PairingSuccessResult;
  v4 = swift_allocObject();
  *(v0 + 208) = v4;
  v5 = *(v0 + 32);
  v6 = *(v0 + 48);
  v4[1] = *(v0 + 16);
  v4[2] = v5;
  v4[3] = v6;

  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v0 + 672, &_s13FindMyPairing0C8Location_pSgMd, &_s13FindMyPairing0C8Location_pSgMR);
  *(v0 + 248) = 0;
  *(v0 + 1304) = v2;
  if (!*(v0 + 1168))
  {
    outlined init with copy of PairingContext?(v0 + 208, v0 + 64, &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMd, &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMR);
    v7 = *(v0 + 104);
    if (v7 == 255)
    {
      v14 = &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMd;
      v15 = &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMR;
    }

    else
    {
      if (v7)
      {
        v8 = *(v0 + 992);
        v9 = *(v0 + 984);
        v10 = *(v0 + 968);
        v11 = *(v0 + 64);
        (*(*(v0 + 960) + 32))(*(v0 + 952));
        v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_p5error_10Foundation4UUIDVSg10identifiertMd, &_ss5Error_p5error_10Foundation4UUIDVSg10identifiertMR) + 48);
        *v8 = v11;
        v13 = type metadata accessor for UUID();
        (*(*(v13 - 8) + 56))(&v8[v12], 1, 1, v13);
        swift_storeEnumTagMultiPayload();
        MEMORY[0x24C236EC0](v11);
        AsyncStreamProvider.yield(value:transaction:)();

        MEMORY[0x24C236EB0](v11);
        outlined destroy of UserSessionState(v8, type metadata accessor for AnalyticsEvent);
        goto LABEL_8;
      }

      v14 = &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGMd;
      v15 = &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGMR;
    }

    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v0 + 64, v14, v15);
  }

LABEL_8:
  v16 = *(v0 + 1064);
  v17 = *(v0 + 968);
  (*(v0 + 1056))(*(v0 + 952), *(v0 + 960));
  v18 = *(v0 + 416);
  v19 = *(v0 + 424);
  __swift_project_boxed_opaque_existential_1((v0 + 392), v18);
  v20 = (*(v19 + 56))(v18, v19);
  *(v0 + 1312) = v20;
  if (v20)
  {
    v22 = *(v0 + 1064);
    v23 = *(v0 + 1056);
    v24 = *(v0 + 968);
    v25 = *(v0 + 960);
    v26 = *(v0 + 952);
    *(v0 + 1320) = v21;
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 392));
    v23(v26, v25);
    v27 = *(v0 + 376);
    v28 = *(v0 + 384);
    __swift_project_boxed_opaque_existential_1((v0 + 352), v27);
    v29 = (*(v28 + 64))(v27, v28);
    v31 = v30;
    *(v0 + 1328) = v29;
    *(v0 + 1336) = v30;
    *(v0 + 1344) = swift_getObjectType();
    v32 = *(v31 + 16);
    v31 += 16;
    *(v0 + 1352) = v32;
    *(v0 + 1360) = v31 & 0xFFFFFFFFFFFFLL | 0xC23A000000000000;
    v33 = *(v31 - 8);
    v35 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x2822009F8](PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:), v35, v34);
  }

  else
  {
    v36 = *(v0 + 1024);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 392));
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_24AF48000, v37, v38, "Finished pairing but no pairingResultListener to notify", v39, 2u);
      MEMORY[0x24C237030](v39, -1, -1);
    }

    v40 = swift_task_alloc();
    *(v0 + 1496) = v40;
    *v40 = v0;
    v40[1] = PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:);
    v41 = *(v0 + 968);
    v42 = *(v0 + 960);
    v43 = *(v0 + 952);

    return PairingCoordinator._cleanUp()(v43, v42);
  }
}

{
  v1 = v0[151];
  swift_beginAccess();
  v2 = *(v1 + 128);
  v3 = v0[151];
  if (v2 == 15)
  {
    outlined consume of PairingCoordinatorState(0xFuLL);
    outlined consume of PairingCoordinatorState(0xFuLL);

    outlined consume of PairingCoordinatorState(0xFuLL);
    v4 = v0[127];
    v5 = v0[126];
    v6 = PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:);
  }

  else
  {
    outlined copy of PairingCoordinatorState(v2);
    outlined copy of PairingCoordinatorState(v2);
    outlined consume of PairingCoordinatorState(v2);
    outlined consume of PairingCoordinatorState(0xFuLL);

    outlined consume of PairingCoordinatorState(v2);
    v4 = v0[127];
    v5 = v0[126];
    v6 = PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:);
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

{
  *(v0 + 208) = 0u;
  *(v0 + 240) = 0;
  *(v0 + 224) = 0u;
  *(v0 + 248) = -1;
  *(v0 + 1304) = *(v0 + 1160);
  if (!*(v0 + 1168))
  {
    outlined init with copy of PairingContext?(v0 + 208, v0 + 64, &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMd, &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMR);
    v1 = *(v0 + 104);
    if (v1 == 255)
    {
      v8 = &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMd;
      v9 = &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMR;
    }

    else
    {
      if (v1)
      {
        v2 = *(v0 + 992);
        v3 = *(v0 + 984);
        v4 = *(v0 + 968);
        v5 = *(v0 + 64);
        (*(*(v0 + 960) + 32))(*(v0 + 952));
        v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_p5error_10Foundation4UUIDVSg10identifiertMd, &_ss5Error_p5error_10Foundation4UUIDVSg10identifiertMR) + 48);
        *v2 = v5;
        v7 = type metadata accessor for UUID();
        (*(*(v7 - 8) + 56))(&v2[v6], 1, 1, v7);
        swift_storeEnumTagMultiPayload();
        MEMORY[0x24C236EC0](v5);
        AsyncStreamProvider.yield(value:transaction:)();

        MEMORY[0x24C236EB0](v5);
        outlined destroy of UserSessionState(v2, type metadata accessor for AnalyticsEvent);
        goto LABEL_8;
      }

      v8 = &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGMd;
      v9 = &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGMR;
    }

    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v0 + 64, v8, v9);
  }

LABEL_8:
  v10 = *(v0 + 1064);
  v11 = *(v0 + 968);
  (*(v0 + 1056))(*(v0 + 952), *(v0 + 960));
  v12 = *(v0 + 416);
  v13 = *(v0 + 424);
  __swift_project_boxed_opaque_existential_1((v0 + 392), v12);
  v14 = (*(v13 + 56))(v12, v13);
  *(v0 + 1312) = v14;
  if (v14)
  {
    v16 = *(v0 + 1064);
    v17 = *(v0 + 1056);
    v18 = *(v0 + 968);
    v19 = *(v0 + 960);
    v20 = *(v0 + 952);
    *(v0 + 1320) = v15;
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 392));
    v17(v20, v19);
    v21 = *(v0 + 376);
    v22 = *(v0 + 384);
    __swift_project_boxed_opaque_existential_1((v0 + 352), v21);
    v23 = (*(v22 + 64))(v21, v22);
    v25 = v24;
    *(v0 + 1328) = v23;
    *(v0 + 1336) = v24;
    *(v0 + 1344) = swift_getObjectType();
    v26 = *(v25 + 16);
    v25 += 16;
    *(v0 + 1352) = v26;
    *(v0 + 1360) = v25 & 0xFFFFFFFFFFFFLL | 0xC23A000000000000;
    v27 = *(v25 - 8);
    v29 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x2822009F8](PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:), v29, v28);
  }

  else
  {
    v30 = *(v0 + 1024);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 392));
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_24AF48000, v31, v32, "Finished pairing but no pairingResultListener to notify", v33, 2u);
      MEMORY[0x24C237030](v33, -1, -1);
    }

    v34 = swift_task_alloc();
    *(v0 + 1496) = v34;
    *v34 = v0;
    v34[1] = PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:);
    v35 = *(v0 + 968);
    v36 = *(v0 + 960);
    v37 = *(v0 + 952);

    return PairingCoordinator._cleanUp()(v37, v36);
  }
}

{
  v1 = *(v0 + 936);
  if (v1)
  {
    v2 = *(v0 + 936);
    v3 = v2;
LABEL_5:
    MEMORY[0x24C236EC0](v1);
    *(v0 + 1232) = v3;
    v4 = *(v0 + 1144);
    MEMORY[0x24C236EC0](v2);
    *(v0 + 872) = v2;
    v5 = swift_dynamicCast();
    v6 = *(v0 + 960);
    if (v5)
    {
      v7 = *(v0 + 105) == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      *(v0 + 920) = v3;
      v8 = *(v6 + 152);
      MEMORY[0x24C236EC0](v3);
      v25 = (v8 + *v8);
      v9 = v8[1];
      v10 = swift_task_alloc();
      *(v0 + 1264) = v10;
      *v10 = v0;
      v10[1] = PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:);
      v11 = *(v0 + 968);
      v18 = *(v0 + 960);
      v19 = *(v0 + 952);
      v20 = v0 + 920;
    }

    else
    {
      v26 = *(v0 + 960);
      *(v0 + 1240) = lazy protocol witness table accessor for type PairingCoordinatorError and conformance PairingCoordinatorError();
      v12 = swift_allocError();
      *v13 = 4;
      *(v0 + 928) = v12;
      v14 = *(v26 + 152);
      v25 = (v14 + *v14);
      v15 = v14[1];
      v16 = swift_task_alloc();
      *(v0 + 1248) = v16;
      *v16 = v0;
      v16[1] = PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:);
      v17 = *(v0 + 968);
      v18 = *(v0 + 960);
      v19 = *(v0 + 952);
      v20 = v0 + 928;
    }

    return v25(v20, v19, v18);
  }

  v2 = *(v0 + 1168);
  if (v2)
  {
    MEMORY[0x24C236EC0](*(v0 + 1168));
    v3 = *(v0 + 1168);
    v1 = *(v0 + 936);
    goto LABEL_5;
  }

  v22 = *(v0 + 1040);
  v23 = *(v0 + 968);
  v24 = (*(v0 + 1032))(*(v0 + 952), *(v0 + 960));
  *(v0 + 1216) = v24;

  return MEMORY[0x2822009F8](PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:), v24, 0);
}

{
  v1 = v0[152];
  swift_beginAccess();
  v2 = *(v1 + 120);
  v3 = *(v2 + 16);
  v4 = (v2 + 32);
  while (v3)
  {
    v5 = *v4++;
    v0[153] = v5;
    --v3;
    if (v5 >= 0x11)
    {
      v6 = v0[152];
      MEMORY[0x24C236EC0]();

      v7 = v0[127];
      v8 = v0[126];
      v9 = PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:);
      goto LABEL_6;
    }
  }

  v10 = v0[152];

  v7 = v0[127];
  v8 = v0[126];
  v9 = PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:);
LABEL_6:

  return MEMORY[0x2822009F8](v9, v8, v7);
}

{
  v1 = *(v0 + 1224);
  *(v0 + 1232) = v1;
  v2 = *(v0 + 1144);
  MEMORY[0x24C236EC0](v1);
  *(v0 + 872) = v1;
  v3 = swift_dynamicCast();
  v4 = *(v0 + 960);
  if (v3)
  {
    v5 = *(v0 + 105) == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    *(v0 + 920) = v1;
    v6 = *(v4 + 152);
    MEMORY[0x24C236EC0](v1);
    v20 = (v6 + *v6);
    v7 = v6[1];
    v8 = swift_task_alloc();
    *(v0 + 1264) = v8;
    *v8 = v0;
    v8[1] = PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:);
    v9 = *(v0 + 968);
    v16 = *(v0 + 960);
    v17 = *(v0 + 952);
    v18 = v0 + 920;
  }

  else
  {
    v21 = *(v0 + 960);
    *(v0 + 1240) = lazy protocol witness table accessor for type PairingCoordinatorError and conformance PairingCoordinatorError();
    v10 = swift_allocError();
    *v11 = 4;
    *(v0 + 928) = v10;
    v12 = *(v21 + 152);
    v20 = (v12 + *v12);
    v13 = v12[1];
    v14 = swift_task_alloc();
    *(v0 + 1248) = v14;
    *v14 = v0;
    v14[1] = PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:);
    v15 = *(v0 + 968);
    v16 = *(v0 + 960);
    v17 = *(v0 + 952);
    v18 = v0 + 928;
  }

  return v20(v18, v17, v16);
}

{
  v2 = *v1;
  v3 = (*v1)[156];
  v8 = *v1;
  v2[157] = v0;

  outlined consume of PairingCoordinatorState(v2[116]);
  v4 = v2[127];
  v5 = v2[126];
  if (v0)
  {
    v6 = PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:);
  }

  else
  {
    v6 = PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:);
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

{
  v1 = *(v0 + 1240);
  v2 = *(v0 + 1232);
  v3 = swift_allocError();
  *v4 = 4;
  MEMORY[0x24C236EB0](v2);
  *(v0 + 208) = v3;
  v5 = *(v0 + 1256);
  *(v0 + 248) = 1;
  *(v0 + 1304) = v5;
  if (!*(v0 + 1168))
  {
    outlined init with copy of PairingContext?(v0 + 208, v0 + 64, &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMd, &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMR);
    v6 = *(v0 + 104);
    if (v6 == 255)
    {
      v13 = &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMd;
      v14 = &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMR;
    }

    else
    {
      if (v6)
      {
        v7 = *(v0 + 992);
        v8 = *(v0 + 984);
        v9 = *(v0 + 968);
        v10 = *(v0 + 64);
        (*(*(v0 + 960) + 32))(*(v0 + 952));
        v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_p5error_10Foundation4UUIDVSg10identifiertMd, &_ss5Error_p5error_10Foundation4UUIDVSg10identifiertMR) + 48);
        *v7 = v10;
        v12 = type metadata accessor for UUID();
        (*(*(v12 - 8) + 56))(&v7[v11], 1, 1, v12);
        swift_storeEnumTagMultiPayload();
        MEMORY[0x24C236EC0](v10);
        AsyncStreamProvider.yield(value:transaction:)();

        MEMORY[0x24C236EB0](v10);
        outlined destroy of UserSessionState(v7, type metadata accessor for AnalyticsEvent);
        goto LABEL_8;
      }

      v13 = &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGMd;
      v14 = &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGMR;
    }

    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v0 + 64, v13, v14);
  }

LABEL_8:
  v15 = *(v0 + 1064);
  v16 = *(v0 + 968);
  (*(v0 + 1056))(*(v0 + 952), *(v0 + 960));
  v17 = *(v0 + 416);
  v18 = *(v0 + 424);
  __swift_project_boxed_opaque_existential_1((v0 + 392), v17);
  v19 = (*(v18 + 56))(v17, v18);
  *(v0 + 1312) = v19;
  if (v19)
  {
    v21 = *(v0 + 1064);
    v22 = *(v0 + 1056);
    v23 = *(v0 + 968);
    v24 = *(v0 + 960);
    v25 = *(v0 + 952);
    *(v0 + 1320) = v20;
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 392));
    v22(v25, v24);
    v26 = *(v0 + 376);
    v27 = *(v0 + 384);
    __swift_project_boxed_opaque_existential_1((v0 + 352), v26);
    v28 = (*(v27 + 64))(v26, v27);
    v30 = v29;
    *(v0 + 1328) = v28;
    *(v0 + 1336) = v29;
    *(v0 + 1344) = swift_getObjectType();
    v31 = *(v30 + 16);
    v30 += 16;
    *(v0 + 1352) = v31;
    *(v0 + 1360) = v30 & 0xFFFFFFFFFFFFLL | 0xC23A000000000000;
    v32 = *(v30 - 8);
    v34 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x2822009F8](PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:), v34, v33);
  }

  else
  {
    v35 = *(v0 + 1024);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 392));
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_24AF48000, v36, v37, "Finished pairing but no pairingResultListener to notify", v38, 2u);
      MEMORY[0x24C237030](v38, -1, -1);
    }

    v39 = swift_task_alloc();
    *(v0 + 1496) = v39;
    *v39 = v0;
    v39[1] = PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:);
    v40 = *(v0 + 968);
    v41 = *(v0 + 960);
    v42 = *(v0 + 952);

    return PairingCoordinator._cleanUp()(v42, v41);
  }
}

{
  v2 = *v1;
  v3 = (*v1)[158];
  v8 = *v1;
  v2[159] = v0;

  outlined consume of PairingCoordinatorState(v2[115]);
  v4 = v2[127];
  v5 = v2[126];
  if (v0)
  {
    v6 = PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:);
  }

  else
  {
    v6 = PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:);
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

{
  *(v0 + 208) = *(v0 + 1232);
  v1 = *(v0 + 1272);
  *(v0 + 248) = 1;
  *(v0 + 1304) = v1;
  if (!*(v0 + 1168))
  {
    outlined init with copy of PairingContext?(v0 + 208, v0 + 64, &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMd, &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMR);
    v2 = *(v0 + 104);
    if (v2 == 255)
    {
      v9 = &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMd;
      v10 = &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMR;
    }

    else
    {
      if (v2)
      {
        v3 = *(v0 + 992);
        v4 = *(v0 + 984);
        v5 = *(v0 + 968);
        v6 = *(v0 + 64);
        (*(*(v0 + 960) + 32))(*(v0 + 952));
        v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_p5error_10Foundation4UUIDVSg10identifiertMd, &_ss5Error_p5error_10Foundation4UUIDVSg10identifiertMR) + 48);
        *v3 = v6;
        v8 = type metadata accessor for UUID();
        (*(*(v8 - 8) + 56))(&v3[v7], 1, 1, v8);
        swift_storeEnumTagMultiPayload();
        MEMORY[0x24C236EC0](v6);
        AsyncStreamProvider.yield(value:transaction:)();

        MEMORY[0x24C236EB0](v6);
        outlined destroy of UserSessionState(v3, type metadata accessor for AnalyticsEvent);
        goto LABEL_8;
      }

      v9 = &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGMd;
      v10 = &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGMR;
    }

    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v0 + 64, v9, v10);
  }

LABEL_8:
  v11 = *(v0 + 1064);
  v12 = *(v0 + 968);
  (*(v0 + 1056))(*(v0 + 952), *(v0 + 960));
  v13 = *(v0 + 416);
  v14 = *(v0 + 424);
  __swift_project_boxed_opaque_existential_1((v0 + 392), v13);
  v15 = (*(v14 + 56))(v13, v14);
  *(v0 + 1312) = v15;
  if (v15)
  {
    v17 = *(v0 + 1064);
    v18 = *(v0 + 1056);
    v19 = *(v0 + 968);
    v20 = *(v0 + 960);
    v21 = *(v0 + 952);
    *(v0 + 1320) = v16;
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 392));
    v18(v21, v20);
    v22 = *(v0 + 376);
    v23 = *(v0 + 384);
    __swift_project_boxed_opaque_existential_1((v0 + 352), v22);
    v24 = (*(v23 + 64))(v22, v23);
    v26 = v25;
    *(v0 + 1328) = v24;
    *(v0 + 1336) = v25;
    *(v0 + 1344) = swift_getObjectType();
    v27 = *(v26 + 16);
    v26 += 16;
    *(v0 + 1352) = v27;
    *(v0 + 1360) = v26 & 0xFFFFFFFFFFFFLL | 0xC23A000000000000;
    v28 = *(v26 - 8);
    v30 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x2822009F8](PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:), v30, v29);
  }

  else
  {
    v31 = *(v0 + 1024);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 392));
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_24AF48000, v32, v33, "Finished pairing but no pairingResultListener to notify", v34, 2u);
      MEMORY[0x24C237030](v34, -1, -1);
    }

    v35 = swift_task_alloc();
    *(v0 + 1496) = v35;
    *v35 = v0;
    v35[1] = PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:);
    v36 = *(v0 + 968);
    v37 = *(v0 + 960);
    v38 = *(v0 + 952);

    return PairingCoordinator._cleanUp()(v38, v37);
  }
}

{
  v11 = v0[120];
  v0[160] = lazy protocol witness table accessor for type PairingCoordinatorError and conformance PairingCoordinatorError();
  v1 = swift_allocError();
  *v2 = 5;
  v0[110] = v1;
  v3 = *(v11 + 152);
  v10 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[161] = v5;
  *v5 = v0;
  v5[1] = PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:);
  v6 = v0[121];
  v7 = v0[120];
  v8 = v0[119];

  return (v10)(v0 + 110, v8, v7);
}

{
  v2 = *v1;
  v3 = (*v1)[161];
  v8 = *v1;
  v2[162] = v0;

  outlined consume of PairingCoordinatorState(v2[110]);
  v4 = v2[127];
  v5 = v2[126];
  if (v0)
  {
    v6 = PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:);
  }

  else
  {
    v6 = PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:);
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

{
  v1 = *(v0 + 1280);
  v2 = swift_allocError();
  *v3 = 5;
  *(v0 + 208) = v2;
  v4 = *(v0 + 1296);
  *(v0 + 248) = 1;
  *(v0 + 1304) = v4;
  if (!*(v0 + 1168))
  {
    outlined init with copy of PairingContext?(v0 + 208, v0 + 64, &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMd, &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMR);
    v5 = *(v0 + 104);
    if (v5 == 255)
    {
      v12 = &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMd;
      v13 = &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMR;
    }

    else
    {
      if (v5)
      {
        v6 = *(v0 + 992);
        v7 = *(v0 + 984);
        v8 = *(v0 + 968);
        v9 = *(v0 + 64);
        (*(*(v0 + 960) + 32))(*(v0 + 952));
        v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_p5error_10Foundation4UUIDVSg10identifiertMd, &_ss5Error_p5error_10Foundation4UUIDVSg10identifiertMR) + 48);
        *v6 = v9;
        v11 = type metadata accessor for UUID();
        (*(*(v11 - 8) + 56))(&v6[v10], 1, 1, v11);
        swift_storeEnumTagMultiPayload();
        MEMORY[0x24C236EC0](v9);
        AsyncStreamProvider.yield(value:transaction:)();

        MEMORY[0x24C236EB0](v9);
        outlined destroy of UserSessionState(v6, type metadata accessor for AnalyticsEvent);
        goto LABEL_8;
      }

      v12 = &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGMd;
      v13 = &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGMR;
    }

    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v0 + 64, v12, v13);
  }

LABEL_8:
  v14 = *(v0 + 1064);
  v15 = *(v0 + 968);
  (*(v0 + 1056))(*(v0 + 952), *(v0 + 960));
  v16 = *(v0 + 416);
  v17 = *(v0 + 424);
  __swift_project_boxed_opaque_existential_1((v0 + 392), v16);
  v18 = (*(v17 + 56))(v16, v17);
  *(v0 + 1312) = v18;
  if (v18)
  {
    v20 = *(v0 + 1064);
    v21 = *(v0 + 1056);
    v22 = *(v0 + 968);
    v23 = *(v0 + 960);
    v24 = *(v0 + 952);
    *(v0 + 1320) = v19;
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 392));
    v21(v24, v23);
    v25 = *(v0 + 376);
    v26 = *(v0 + 384);
    __swift_project_boxed_opaque_existential_1((v0 + 352), v25);
    v27 = (*(v26 + 64))(v25, v26);
    v29 = v28;
    *(v0 + 1328) = v27;
    *(v0 + 1336) = v28;
    *(v0 + 1344) = swift_getObjectType();
    v30 = *(v29 + 16);
    v29 += 16;
    *(v0 + 1352) = v30;
    *(v0 + 1360) = v29 & 0xFFFFFFFFFFFFLL | 0xC23A000000000000;
    v31 = *(v29 - 8);
    v33 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x2822009F8](PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:), v33, v32);
  }

  else
  {
    v34 = *(v0 + 1024);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 392));
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_24AF48000, v35, v36, "Finished pairing but no pairingResultListener to notify", v37, 2u);
      MEMORY[0x24C237030](v37, -1, -1);
    }

    v38 = swift_task_alloc();
    *(v0 + 1496) = v38;
    *v38 = v0;
    v38[1] = PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:);
    v39 = *(v0 + 968);
    v40 = *(v0 + 960);
    v41 = *(v0 + 952);

    return PairingCoordinator._cleanUp()(v41, v40);
  }
}

{
  v1 = *(v0 + 1360);
  v2 = *(v0 + 1328);
  (*(v0 + 1352))(*(v0 + 1344), *(v0 + 1336));
  swift_unknownObjectRelease();
  v3 = *(v0 + 1016);
  v4 = *(v0 + 1008);

  return MEMORY[0x2822009F8](PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:), v4, v3);
}

{
  *(v0 + 544) = *(v0 + 504);
  v1 = *(v0 + 488);
  *(v0 + 512) = *(v0 + 472);
  *(v0 + 528) = v1;
  if (*(v0 + 536) >= 2uLL)
  {
    outlined init with take of Accessory((v0 + 512), v0 + 432);
  }

  else
  {
    *(v0 + 464) = 0;
    *(v0 + 432) = 0u;
    *(v0 + 448) = 0u;
    outlined destroy of DetectedAccessory(v0 + 512);
  }

  v2 = *(v0 + 456);
  v3 = *(v0 + 976);
  if (v2)
  {
    v4 = *(v0 + 464);
    __swift_project_boxed_opaque_existential_1((v0 + 432), *(v0 + 456));
    (*(v4 + 8))(v2, v4);
    v5 = type metadata accessor for UUID();
    (*(*(v5 - 8) + 56))(v3, 0, 1, v5);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 432));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 352));
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 352));
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v0 + 432, &_s13FindMyPairing9Accessory_pSgMd, &_s13FindMyPairing9Accessory_pSgMR);
    v6 = type metadata accessor for UUID();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
  }

  v7 = *(v0 + 1064);
  v8 = *(v0 + 968);
  (*(v0 + 1056))(*(v0 + 952), *(v0 + 960));
  v9 = *(v0 + 576);
  v10 = *(v0 + 584);
  __swift_project_boxed_opaque_existential_1((v0 + 552), v9);
  v11 = (*(v10 + 48))(v9, v10);
  *(v0 + 1368) = v11;
  if (v11)
  {
    v13 = *(v0 + 1040);
    v14 = *(v0 + 1032);
    v15 = *(v0 + 968);
    v16 = *(v0 + 960);
    v17 = *(v0 + 952);
    *(v0 + 1376) = v12;
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 552));
    v18 = v14(v17, v16);
    *(v0 + 1384) = v18;
    v19 = PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:);
    v20 = 0;
LABEL_13:

    return MEMORY[0x2822009F8](v19, v18, v20);
  }

  v21 = *(v0 + 1024);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 552));
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_24AF48000, v22, v23, "Finished pairing, isUserActionable: false", v24, 2u);
    MEMORY[0x24C237030](v24, -1, -1);
  }

  outlined init with copy of PairingContext?(v0 + 208, v0 + 256, &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMd, &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMR);
  if (*(v0 + 296) != 255)
  {
    v25 = *(v0 + 1320);
    v26 = *(v0 + 1312);
    v27 = *(v0 + 272);
    *(v0 + 304) = *(v0 + 256);
    *(v0 + 320) = v27;
    *(v0 + 329) = *(v0 + 281);
    *(v0 + 1456) = swift_getObjectType();
    v28 = *(v25 + 16);
    v25 += 16;
    *(v0 + 1464) = v28;
    *(v0 + 1472) = v25 & 0xFFFFFFFFFFFFLL | 0xF759000000000000;
    v29 = *(v25 - 8);
    v30 = dispatch thunk of Actor.unownedExecutor.getter();
    v32 = v31;
    v19 = PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:);
    v18 = v30;
    v20 = v32;
    goto LABEL_13;
  }

  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v0 + 256, &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMd, &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMR);
  v33 = swift_task_alloc();
  *(v0 + 1480) = v33;
  *v33 = v0;
  v33[1] = PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:);
  v34 = *(v0 + 968);
  v35 = *(v0 + 960);
  v36 = *(v0 + 952);

  return PairingCoordinator._cleanUp()(v36, v35);
}

{
  v1 = *(v0 + 1384);
  v2 = *(v0 + 1304);
  swift_beginAccess();
  v3 = *(v1 + 120);
  *(v0 + 896) = 3;
  v4 = swift_task_alloc();
  *(v4 + 16) = v0 + 896;

  *(v0 + 108) = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v4, v3) & 1;

  v5 = *(v0 + 1016);
  v6 = *(v0 + 1008);

  return MEMORY[0x2822009F8](PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:), v6, v5);
}

{
  if (*(v0 + 108) == 1)
  {
    v1 = *(v0 + 1024);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_24AF48000, v2, v3, "Finish pairing.", v4, 2u);
      MEMORY[0x24C237030](v4, -1, -1);
    }

    v5 = *(v0 + 1376);
    v6 = *(v0 + 1368);

    *(v0 + 1392) = swift_getObjectType();
    v7 = *(v5 + 8);
    v9 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x2822009F8](PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:), v9, v8);
  }

  else
  {
    v10 = *(v0 + 1368);
    v11 = *(v0 + 1312);
    v12 = *(v0 + 1168);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(*(v0 + 976), &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    MEMORY[0x24C236EB0](v12);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v0 + 208, &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMd, &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMR);
    v13 = *(v0 + 992);
    v14 = *(v0 + 976);

    v15 = *(v0 + 8);

    return v15();
  }
}

{
  v1 = v0[174];
  v2 = v0[172];
  v3 = v0[171];
  UserSessionListener._pairingFinish()();
  v4 = swift_task_alloc();
  v0[175] = v4;
  *v4 = v0;
  v4[1] = PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:);
  v5 = v0[121];
  v6 = v0[120];
  v7 = v0[119];

  return PairingCoordinator._cleanUp()(v7, v6);
}

{
  v2 = *v1;
  v3 = *(*v1 + 1400);
  v4 = *v1;
  *(*v1 + 1408) = v0;

  v5 = *(v2 + 1016);
  v6 = *(v2 + 1008);
  if (v0)
  {
    v7 = PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:);
  }

  else
  {
    v7 = PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:);
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

{
  if (*(v0 + 106) == 1)
  {
    outlined init with copy of PairingContext?(v0 + 208, v0 + 112, &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMd, &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMR);
    if (*(v0 + 152) != 255)
    {
      v1 = *(v0 + 960);
      v2 = *(v0 + 128);
      *(v0 + 160) = *(v0 + 112);
      *(v0 + 176) = v2;
      *(v0 + 185) = *(v0 + 137);
      *(v0 + 912) = 14;
      v19 = (*(v1 + 152) + **(v1 + 152));
      v3 = *(*(v1 + 152) + 4);
      v4 = swift_task_alloc();
      *(v0 + 1416) = v4;
      *v4 = v0;
      v4[1] = PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:);
      v5 = *(v0 + 968);
      v6 = *(v0 + 960);
      v7 = *(v0 + 952);

      return v19(v0 + 912, v7, v6);
    }

    v13 = *(v0 + 1368);
    v14 = *(v0 + 1312);
    v15 = *(v0 + 1168);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(*(v0 + 976), &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    MEMORY[0x24C236EB0](v15);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v0 + 208, &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMd, &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMR);
    v12 = v0 + 112;
  }

  else
  {
    v9 = *(v0 + 1368);
    v10 = *(v0 + 1312);
    v11 = *(v0 + 1168);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(*(v0 + 976), &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    MEMORY[0x24C236EB0](v11);
    v12 = v0 + 208;
  }

  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v12, &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMd, &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMR);
  v16 = *(v0 + 992);
  v17 = *(v0 + 976);

  v18 = *(v0 + 8);

  return v18();
}

{
  v2 = *v1;
  v3 = *(*v1 + 1416);
  v15 = *v1;
  *(*v1 + 1424) = v0;

  if (v0)
  {
    v4 = v2[127];
    v5 = v2[126];
    v6 = PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:);
  }

  else
  {
    v7 = v2[165];
    v8 = v2[164];
    v2[179] = swift_getObjectType();
    v9 = *(v7 + 16);
    v7 += 16;
    v2[180] = v9;
    v2[181] = v7 & 0xFFFFFFFFFFFFLL | 0xF759000000000000;
    v10 = *(v7 - 8);
    v11 = dispatch thunk of Actor.unownedExecutor.getter();
    v13 = v12;
    v6 = PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:);
    v5 = v11;
    v4 = v13;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

{
  v1 = *(v0 + 1448);
  v2 = *(v0 + 1312);
  (*(v0 + 1440))(*(v0 + 976), v0 + 160, *(v0 + 1432), *(v0 + 1320));
  v3 = *(v0 + 1016);
  v4 = *(v0 + 1008);

  return MEMORY[0x2822009F8](PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:), v4, v3);
}

{
  v1 = v0[171];
  v2 = v0[164];
  v3 = v0[146];
  v4 = v0[122];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  MEMORY[0x24C236EB0](v3);
  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)((v0 + 20), &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGMd, &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGMR);
  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v4, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)((v0 + 26), &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMd, &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMR);
  v5 = v0[124];
  v6 = v0[122];

  v7 = v0[1];

  return v7();
}

{
  v1 = *(v0 + 1472);
  v2 = *(v0 + 1312);
  (*(v0 + 1464))(*(v0 + 976), v0 + 304, *(v0 + 1456), *(v0 + 1320));
  v3 = *(v0 + 1016);
  v4 = *(v0 + 1008);

  return MEMORY[0x2822009F8](PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:), v4, v3);
}

{
  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)((v0 + 38), &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGMd, &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGMR);
  v1 = swift_task_alloc();
  v0[185] = v1;
  *v1 = v0;
  v1[1] = PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:);
  v2 = v0[121];
  v3 = v0[120];
  v4 = v0[119];

  return PairingCoordinator._cleanUp()(v4, v3);
}

{
  v2 = *v1;
  v3 = *(*v1 + 1480);
  v4 = *v1;
  *(*v1 + 1488) = v0;

  v5 = *(v2 + 1016);
  v6 = *(v2 + 1008);
  if (v0)
  {
    v7 = PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:);
  }

  else
  {
    v7 = PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:);
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

{
  v1 = v0[164];
  v2 = v0[146];
  v3 = v0[122];
  swift_unknownObjectRelease();
  MEMORY[0x24C236EB0](v2);
  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v3, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)((v0 + 26), &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMd, &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMR);
  v4 = v0[124];
  v5 = v0[122];

  v6 = v0[1];

  return v6();
}

{
  v2 = *v1;
  v3 = *(*v1 + 1496);
  v4 = *v1;
  *(*v1 + 1504) = v0;

  v5 = *(v2 + 1016);
  v6 = *(v2 + 1008);
  if (v0)
  {
    v7 = PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:);
  }

  else
  {
    v7 = PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:);
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

{
  MEMORY[0x24C236EB0](v0[146]);
  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)((v0 + 26), &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMd, &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMR);
  v1 = v0[124];
  v2 = v0[122];

  v3 = v0[1];

  return v3();
}

{
  v1 = *(v0 + 1200);
  v2 = *(v0 + 1024);
  MEMORY[0x24C236EC0](v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 1200);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    MEMORY[0x24C236EC0](v6);
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&dword_24AF48000, v3, v4, "Failed to get location: %{public}@", v7, 0xCu);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v8, -1, -1);
    MEMORY[0x24C237030](v7, -1, -1);
    MEMORY[0x24C236EB0](v6);
  }

  else
  {

    MEMORY[0x24C236EB0](v6);
  }

  v10 = *(v0 + 944);
  outlined init with copy of PairingContext?(v0 + 672, v0 + 16, &_s13FindMyPairing0C8Location_pSgMd, &_s13FindMyPairing0C8Location_pSgMR);
  *(v0 + 56) = v10;
  *(v0 + 232) = &type metadata for PairingSuccessResult;
  *(v0 + 240) = &protocol witness table for PairingSuccessResult;
  v11 = swift_allocObject();
  *(v0 + 208) = v11;
  v12 = *(v0 + 32);
  v11[1] = *(v0 + 16);
  v11[2] = v12;
  v11[3] = *(v0 + 48);

  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v0 + 672, &_s13FindMyPairing0C8Location_pSgMd, &_s13FindMyPairing0C8Location_pSgMR);
  *(v0 + 248) = 0;
  *(v0 + 1304) = 0;
  if (!*(v0 + 1168))
  {
    outlined init with copy of PairingContext?(v0 + 208, v0 + 64, &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMd, &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMR);
    v13 = *(v0 + 104);
    if (v13 == 255)
    {
      v20 = &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMd;
      v21 = &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMR;
    }

    else
    {
      if (v13)
      {
        v14 = *(v0 + 992);
        v15 = *(v0 + 984);
        v16 = *(v0 + 968);
        v17 = *(v0 + 64);
        (*(*(v0 + 960) + 32))(*(v0 + 952));
        v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_p5error_10Foundation4UUIDVSg10identifiertMd, &_ss5Error_p5error_10Foundation4UUIDVSg10identifiertMR) + 48);
        *v14 = v17;
        v19 = type metadata accessor for UUID();
        (*(*(v19 - 8) + 56))(&v14[v18], 1, 1, v19);
        swift_storeEnumTagMultiPayload();
        MEMORY[0x24C236EC0](v17);
        AsyncStreamProvider.yield(value:transaction:)();

        MEMORY[0x24C236EB0](v17);
        outlined destroy of UserSessionState(v14, type metadata accessor for AnalyticsEvent);
        goto LABEL_11;
      }

      v20 = &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGMd;
      v21 = &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGMR;
    }

    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v0 + 64, v20, v21);
  }

LABEL_11:
  v22 = *(v0 + 1064);
  v23 = *(v0 + 968);
  (*(v0 + 1056))(*(v0 + 952), *(v0 + 960));
  v24 = *(v0 + 416);
  v25 = *(v0 + 424);
  __swift_project_boxed_opaque_existential_1((v0 + 392), v24);
  v26 = (*(v25 + 56))(v24, v25);
  *(v0 + 1312) = v26;
  if (v26)
  {
    v28 = *(v0 + 1064);
    v29 = *(v0 + 1056);
    v30 = *(v0 + 968);
    v31 = *(v0 + 960);
    v32 = *(v0 + 952);
    *(v0 + 1320) = v27;
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 392));
    v29(v32, v31);
    v33 = *(v0 + 376);
    v34 = *(v0 + 384);
    __swift_project_boxed_opaque_existential_1((v0 + 352), v33);
    v35 = (*(v34 + 64))(v33, v34);
    v37 = v36;
    *(v0 + 1328) = v35;
    *(v0 + 1336) = v36;
    *(v0 + 1344) = swift_getObjectType();
    v38 = *(v37 + 16);
    v37 += 16;
    *(v0 + 1352) = v38;
    *(v0 + 1360) = v37 & 0xFFFFFFFFFFFFLL | 0xC23A000000000000;
    v39 = *(v37 - 8);
    v41 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x2822009F8](PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:), v41, v40);
  }

  else
  {
    v42 = *(v0 + 1024);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 392));
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_24AF48000, v43, v44, "Finished pairing but no pairingResultListener to notify", v45, 2u);
      MEMORY[0x24C237030](v45, -1, -1);
    }

    v46 = swift_task_alloc();
    *(v0 + 1496) = v46;
    *v46 = v0;
    v46[1] = PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:);
    v47 = *(v0 + 968);
    v48 = *(v0 + 960);
    v49 = *(v0 + 952);

    return PairingCoordinator._cleanUp()(v49, v48);
  }
}

{
  v1 = v0[146];
  MEMORY[0x24C236EB0](v0[154]);
  MEMORY[0x24C236EB0](v1);
  v2 = v0[157];
  v3 = v0[124];
  v4 = v0[122];

  v5 = v0[1];

  return v5();
}

{
  v1 = v0[154];
  MEMORY[0x24C236EB0](v0[146]);
  MEMORY[0x24C236EB0](v1);
  v2 = v0[159];
  v3 = v0[124];
  v4 = v0[122];

  v5 = v0[1];

  return v5();
}

{
  MEMORY[0x24C236EB0](0);
  v1 = v0[162];
  v2 = v0[124];
  v3 = v0[122];

  v4 = v0[1];

  return v4();
}

{
  MEMORY[0x24C236EB0](v0[146]);
  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)((v0 + 26), &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMd, &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMR);
  v1 = v0[188];
  v2 = v0[124];
  v3 = v0[122];

  v4 = v0[1];

  return v4();
}

{
  v1 = v0[164];
  v2 = v0[146];
  v3 = v0[122];
  swift_unknownObjectRelease();
  MEMORY[0x24C236EB0](v2);
  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v3, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)((v0 + 26), &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMd, &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMR);
  v4 = v0[186];
  v5 = v0[124];
  v6 = v0[122];

  v7 = v0[1];

  return v7();
}

{
  v1 = v0[171];
  v2 = v0[164];
  v3 = v0[146];
  v4 = v0[122];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  MEMORY[0x24C236EB0](v3);
  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v4, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)((v0 + 26), &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMd, &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMR);
  v5 = v0[176];
  v6 = v0[124];
  v7 = v0[122];

  v8 = v0[1];

  return v8();
}

{
  v1 = v0[171];
  v2 = v0[164];
  v3 = v0[146];
  v4 = v0[122];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  MEMORY[0x24C236EB0](v3);
  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)((v0 + 20), &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGMd, &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGMR);
  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v4, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)((v0 + 26), &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMd, &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMR);
  v5 = v0[178];
  v6 = v0[124];
  v7 = v0[122];

  v8 = v0[1];

  return v8();
}

uint64_t PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 1136);
  v5 = *v2;
  v3[144] = a1;
  v3[145] = v1;

  if (v1)
  {

    JUMPOUT(0x24C236EB0);
  }

  v6 = v3[141];

  v7 = v3[127];
  v8 = v3[126];

  return MEMORY[0x2822009F8](PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:), v8, v7);
}

uint64_t closure #1 in PairingCoordinator.startAccessoryPairing()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.startAccessoryPairing(), 0, 0);
}

uint64_t closure #1 in PairingCoordinator.startAccessoryPairing()()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[9] = v3;
    *v3 = v0;
    v3[1] = closure #1 in PairingCoordinator.startAccessoryPairing();
    v5 = v0[6];
    v4 = v0[7];

    return PairingCoordinator._startAccessoryPairing()(v5, v4);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = closure #1 in PairingCoordinator.startAccessoryPairing();
  }

  else
  {
    v3 = closure #1 in PairingCoordinator.startAccessoryPairing();
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = *(v0 + 64);
  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2();
}

{
  v18 = v0;
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = type metadata accessor for Logger();
  v0[11] = __swift_project_value_buffer(v2, static Logger.pairingCoordinator);
  MEMORY[0x24C236EC0](v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[10];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v6 = 136315394;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000017, 0x800000024AFAF8C0, &v17);
    *(v6 + 12) = 2114;
    MEMORY[0x24C236EC0](v5);
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24AF48000, v3, v4, "Failure in %s: %{public}@", v6, 0x16u);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v7, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x24C237030](v8, -1, -1);
    MEMORY[0x24C237030](v6, -1, -1);
  }

  v10 = v0[10];
  MEMORY[0x24C236EC0](v10);
  v11 = swift_task_alloc();
  v0[12] = v11;
  *v11 = v0;
  v11[1] = closure #1 in PairingCoordinator.startAccessoryPairing();
  v12 = v0[7];
  v13 = v0[8];
  v14 = v0[6];
  v15 = MEMORY[0x277D84F90];

  return PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:)(1, v10, v15, v14, v12);
}

{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v6 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = closure #1 in PairingCoordinator.startAccessoryPairing();
  }

  else
  {
    MEMORY[0x24C236EB0](*(v2 + 80));
    v4 = closure #1 in PairingCoordinator.startAccessoryPairing();
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  v1 = v0[10];
  v2 = v0[8];
  swift_unknownObjectRelease();
  MEMORY[0x24C236EB0](v1);
  v3 = v0[1];

  return v3();
}

{
  v1 = v0[13];
  v2 = v0[11];
  MEMORY[0x24C236EB0](v0[10]);
  MEMORY[0x24C236EC0](v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[13];
  v7 = v0[10];
  v8 = v0[8];
  if (v5)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543362;
    MEMORY[0x24C236EC0](v6);
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&dword_24AF48000, v3, v4, "Failure in end pairing: %{public}@", v9, 0xCu);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v10, -1, -1);
    MEMORY[0x24C237030](v9, -1, -1);
    swift_unknownObjectRelease();
    MEMORY[0x24C236EB0](v7);
    MEMORY[0x24C236EB0](v6);
  }

  else
  {
    v12 = v0[8];
    swift_unknownObjectRelease();
    MEMORY[0x24C236EB0](v7);

    MEMORY[0x24C236EB0](v6);
  }

  v13 = v0[1];

  return v13();
}

uint64_t partial apply for closure #1 in PairingCoordinator.startAccessoryPairing()()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = dispatch thunk of PairingValidator.ack(_:);

  return closure #1 in PairingCoordinator.startAccessoryPairing()(v4, v2, v3);
}

uint64_t partial apply for closure #1 in PairingCoordinator.stream()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = dispatch thunk of PairingValidator.ack(_:);

  return closure #1 in PairingCoordinator.stream()(a1, v6, v4, v5);
}

uint64_t closure #1 in closure #1 in PairingCoordinator.forceStopPairing()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  return MEMORY[0x2822009F8](closure #1 in closure #1 in PairingCoordinator.forceStopPairing(), 0, 0);
}

uint64_t closure #1 in closure #1 in PairingCoordinator.forceStopPairing()()
{
  v1 = v0[6];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v3 = v0[8];
    v4 = v0[9];
    v5 = *(v4 + 72);
    v4 += 72;
    v0[11] = v5;
    v0[12] = v4 & 0xFFFFFFFFFFFFLL | 0xF94D000000000000;
    v6 = *(v4 - 64);
    v8 = dispatch thunk of Actor.unownedExecutor.getter();
    v0[13] = v8;
    v0[14] = v7;

    return MEMORY[0x2822009F8](closure #1 in closure #1 in PairingCoordinator.forceStopPairing(), v8, v7);
  }

  else
  {
    v9 = v0[1];

    return v9();
  }
}

{
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);
  *(v0 + 120) = (*(v0 + 88))(*(v0 + 64), *(v0 + 72));
  v3 = *(MEMORY[0x277D08958] + 4);
  v6 = (*MEMORY[0x277D08958] + MEMORY[0x277D08958]);
  v4 = swift_task_alloc();
  *(v0 + 128) = v4;
  *v4 = v0;
  v4[1] = closure #1 in closure #1 in PairingCoordinator.forceStopPairing();

  return v6();
}

{
  v1 = *v0;
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 120);
  v7 = *v0;

  *(v1 + 208) = 4;
  v4 = *(v1 + 112);
  v5 = *(v1 + 104);

  return MEMORY[0x2822009F8](closure #1 in closure #1 in PairingCoordinator.forceStopPairing(), v5, v4);
}

{
  v1 = *(v0 + 80);
  PairingCoordinator.cancelTimeout(for:)((v0 + 208), *(v0 + 64), *(v0 + 72));
  *(v0 + 136) = 0;
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v4 = *(v0 + 64);
  *(v0 + 209) = 0;
  PairingCoordinator.cancelTimeout(for:)((v0 + 209), v4, v2);
  *(v0 + 144) = 0;
  v5 = *(v0 + 72);
  *(v0 + 152) = *(v5 + 80);
  *(v0 + 160) = (v5 + 80) & 0xFFFFFFFFFFFFLL | 0x1E41000000000000;
  v6 = *(v0 + 104);
  v7 = *(v0 + 112);

  return MEMORY[0x2822009F8](closure #1 in closure #1 in PairingCoordinator.forceStopPairing(), v6, v7);
}

{
  v1 = *(v0 + 160);
  v2 = *(v0 + 80);
  *(v0 + 168) = (*(v0 + 152))(*(v0 + 64), *(v0 + 72));

  return MEMORY[0x2822009F8](closure #1 in closure #1 in PairingCoordinator.forceStopPairing(), 0, 0);
}

{
  v1 = *(v0 + 80);
  v2 = swift_allocObject();
  *(v0 + 176) = v2;
  v8 = *(v0 + 64);
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  *(v0 + 184) = v3;
  *(v3 + 16) = v8;
  *(v3 + 32) = v2;
  v4 = *(MEMORY[0x277D08968] + 4);
  v9 = (*MEMORY[0x277D08968] + MEMORY[0x277D08968]);

  v5 = swift_task_alloc();
  *(v0 + 192) = v5;
  *v5 = v0;
  v5[1] = closure #1 in closure #1 in PairingCoordinator.forceStopPairing();
  v6 = *(v0 + 168);

  return v9(&async function pointer to partial apply for closure #1 in closure #1 in closure #1 in PairingCoordinator.forceStopPairing(), v3);
}

{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v9 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v4 = closure #1 in closure #1 in PairingCoordinator.forceStopPairing();
  }

  else
  {
    v6 = v2[22];
    v5 = v2[23];
    v7 = v2[21];

    v4 = closure #1 in closure #1 in PairingCoordinator.forceStopPairing();
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  v1 = v0[10];
  v2 = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  CheckedContinuation.resume(returning:)();
  swift_unknownObjectRelease();
  v3 = v0[1];

  return v3();
}

{
  v1 = v0[17];
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.pairingCoordinator);
  MEMORY[0x24C236EC0](v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    MEMORY[0x24C236EC0](v1);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&dword_24AF48000, v3, v4, "Failed to cancel timeout: %{public}@", v5, 0xCu);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v6, -1, -1);
    MEMORY[0x24C237030](v5, -1, -1);
    MEMORY[0x24C236EB0](v1);
  }

  else
  {

    MEMORY[0x24C236EB0](v1);
  }

  v8 = v0[9];
  v0[19] = *(v8 + 80);
  v0[20] = (v8 + 80) & 0xFFFFFFFFFFFFLL | 0x1E41000000000000;
  v9 = v0[13];
  v10 = v0[14];

  return MEMORY[0x2822009F8](closure #1 in closure #1 in PairingCoordinator.forceStopPairing(), v9, v10);
}

{
  v1 = v0[18];
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.pairingCoordinator);
  MEMORY[0x24C236EC0](v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    MEMORY[0x24C236EC0](v1);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&dword_24AF48000, v3, v4, "Failed to cancel timeout: %{public}@", v5, 0xCu);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v6, -1, -1);
    MEMORY[0x24C237030](v5, -1, -1);
    MEMORY[0x24C236EB0](v1);
  }

  else
  {

    MEMORY[0x24C236EB0](v1);
  }

  v8 = v0[9];
  v0[19] = *(v8 + 80);
  v0[20] = (v8 + 80) & 0xFFFFFFFFFFFFLL | 0x1E41000000000000;
  v9 = v0[13];
  v10 = v0[14];

  return MEMORY[0x2822009F8](closure #1 in closure #1 in PairingCoordinator.forceStopPairing(), v9, v10);
}

{
  v1 = v0[25];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[21];
  v5 = v0[10];
  v6 = v0[7];

  v0[5] = v1;
  MEMORY[0x24C236EC0](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  CheckedContinuation.resume(throwing:)();
  swift_unknownObjectRelease();
  MEMORY[0x24C236EB0](v1);
  v7 = v0[1];

  return v7();
}

void PairingCoordinator.cancelTimeout(for:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  type metadata accessor for WorkItemQueue();
  (*(a3 + 72))(a2, a3);
  v6 = static WorkItemQueue.called(on:)();

  if (v6)
  {
    lazy protocol witness table accessor for type PairingCoordinatorError and conformance PairingCoordinatorError();
    swift_allocError();
    *v7 = 9;
    swift_willThrow();
    return;
  }

  if (!v5)
  {
    v15 = *(a3 + 112);
    if (!v15(a2, a3))
    {
      return;
    }

    if (v15(a2, a3))
    {
      MEMORY[0x24C236900]();
    }

    (*(a3 + 120))(0, a2, a3);
    if (one-time initialization token for pairingCoordinator != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.pairingCoordinator);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_20;
    }

    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v17 = v13;
    *v12 = 136446210;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x506C6C617265766FLL, 0xEE00676E69726961, &v17);
    v14 = "Canceled overall pairing timeout for %{public}s";
    goto LABEL_19;
  }

  if (v5 == 4)
  {
    v8 = *(a3 + 88);
    if (v8(a2, a3))
    {

      if (v8(a2, a3))
      {
        MEMORY[0x24C236900]();
      }

      (*(a3 + 96))(0, a2, a3);
      if (one-time initialization token for pairingCoordinator != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      __swift_project_value_buffer(v9, static Logger.pairingCoordinator);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v10, v11))
      {
        goto LABEL_20;
      }

      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v17 = v13;
      *v12 = 136446210;
      *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x53676E6972696170, 0xEC00000074726174, &v17);
      v14 = "Canceled pairing start timeout for %{public}s";
LABEL_19:
      _os_log_impl(&dword_24AF48000, v10, v11, v14, v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x24C237030](v13, -1, -1);
      MEMORY[0x24C237030](v12, -1, -1);
LABEL_20:
    }
  }
}

uint64_t closure #1 in closure #1 in closure #1 in PairingCoordinator.forceStopPairing()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  return MEMORY[0x2822009F8](closure #1 in closure #1 in closure #1 in PairingCoordinator.forceStopPairing(), 0, 0);
}

uint64_t closure #1 in closure #1 in closure #1 in PairingCoordinator.forceStopPairing()()
{
  v1 = v0[10];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[13] = Strong;
  if (Strong)
  {
    v3 = v0[11];
    v4 = v0[12];
    v5 = *(v4 + 40);
    v4 += 40;
    v0[14] = v5;
    v0[15] = v4 & 0xFFFFFFFFFFFFLL | 0xEA85000000000000;
    v6 = *(v4 - 32);
    v8 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x2822009F8](closure #1 in closure #1 in closure #1 in PairingCoordinator.forceStopPairing(), v8, v7);
  }

  else
  {
    v9 = v0[1];

    return v9();
  }
}

{
  v1 = *(v0 + 120);
  v2 = *(v0 + 104);
  (*(v0 + 112))(*(v0 + 88), *(v0 + 96));

  return MEMORY[0x2822009F8](closure #1 in closure #1 in closure #1 in PairingCoordinator.forceStopPairing(), 0, 0);
}

{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = (*(v2 + 40))(v1, v2);
  v0[16] = v3;
  if (v3)
  {
    v5 = v4;
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 48);
    v15 = (v7 + *v7);
    v8 = v7[1];
    v9 = swift_task_alloc();
    v0[17] = v9;
    *v9 = v0;
    v9[1] = closure #1 in closure #1 in closure #1 in PairingCoordinator.forceStopPairing();

    return v15(ObjectType, v5);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    v11 = swift_task_alloc();
    v0[19] = v11;
    *v11 = v0;
    v11[1] = closure #1 in closure #1 in closure #1 in PairingCoordinator.forceStopPairing();
    v12 = v0[12];
    v13 = v0[13];
    v14 = v0[11];

    return PairingCoordinator._interruptPairing()(v14, v12);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v7 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = closure #1 in closure #1 in closure #1 in PairingCoordinator.forceStopPairing();
  }

  else
  {
    v5 = *(v2 + 128);
    swift_unknownObjectRelease();
    v4 = closure #1 in closure #1 in closure #1 in PairingCoordinator.forceStopPairing();
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = swift_task_alloc();
  v0[19] = v1;
  *v1 = v0;
  v1[1] = closure #1 in closure #1 in closure #1 in PairingCoordinator.forceStopPairing();
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[11];

  return PairingCoordinator._interruptPairing()(v4, v2);
}

{
  v1 = *(*v0 + 152);
  v3 = *v0;

  return MEMORY[0x2822009F8](closure #1 in closure #1 in closure #1 in PairingCoordinator.forceStopPairing(), 0, 0);
}

{
  v1 = *(v0 + 104);
  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = v0[16];
  v2 = v0[13];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v3 = v0[1];
  v4 = v0[18];

  return v3();
}

uint64_t PairingCoordinator._interruptPairing()(uint64_t a1, uint64_t a2)
{
  v3[30] = a2;
  v3[31] = v2;
  v3[29] = a1;
  v5 = type metadata accessor for AnalyticsEvent(0);
  v3[32] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v3[33] = swift_task_alloc();
  v7 = *(a2 + 8);
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[34] = v9;
  v3[35] = v8;

  return MEMORY[0x2822009F8](PairingCoordinator._interruptPairing(), v9, v8);
}

uint64_t PairingCoordinator._interruptPairing()()
{
  v1 = v0[31];
  v2 = *(v0[30] + 24);
  v2(v0[29]);
  v3 = AsyncStreamProvider.finished.getter();

  if (v3)
  {
    goto LABEL_2;
  }

  v11 = v0[30];
  v12 = v0[29];
  (v2)(v12, v11);
  AsyncStreamProvider.finish()();

  (*(v11 + 32))(v12, v11);
  AsyncStreamProvider.finish()();

  v13 = *(v11 + 40);
  v0[36] = v13;
  v0[37] = (v11 + 40) & 0xFFFFFFFFFFFFLL | 0xEA85000000000000;
  v13(v12, v11);
  v14 = v0[5];
  v15 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v14);
  v16 = (*(v15 + 40))(v14, v15);
  v0[38] = v16;
  if (v16)
  {
    v0[39] = v17;
    v18 = v17;
    v0[40] = swift_getObjectType();
    v19 = *(v18 + 8);
    v20 = dispatch thunk of Actor.unownedExecutor.getter();
    v22 = v21;
    v23 = PairingCoordinator._interruptPairing();
  }

  else
  {
    v25 = v0[36];
    v24 = v0[37];
    v26 = v0[30];
    v27 = v0[31];
    v28 = v0[29];
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    v25(v28, v26);
    v29 = v0[10];
    v30 = v0[11];
    __swift_project_boxed_opaque_existential_1(v0 + 7, v29);
    v31 = (*(v30 + 48))(v29, v30);
    v0[41] = v31;
    if (v31)
    {
      v0[42] = v32;
      v33 = v32;
      v0[43] = swift_getObjectType();
      v34 = *(v33 + 8);
      v20 = dispatch thunk of Actor.unownedExecutor.getter();
      v22 = v35;
      v23 = PairingCoordinator._interruptPairing();
    }

    else
    {
      v37 = v0[36];
      v36 = v0[37];
      v38 = v0[30];
      v39 = v0[31];
      v40 = v0[29];
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
      v37(v40, v38);
      v41 = v0[15];
      v42 = v0[16];
      __swift_project_boxed_opaque_existential_1(v0 + 12, v41);
      v43 = (*(v42 + 32))(v41, v42);
      v0[44] = v43;
      if (!v43)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
LABEL_2:
        v4 = v0[31];
        v5 = v0[29];
        v6 = v0[30];
        v7 = *(v6 + 16);
        v0[47] = v7;
        v0[48] = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0x20DC000000000000;
        v8 = v7(v5);
        v0[49] = v8;
        v9 = PairingCoordinator._interruptPairing();
        v10 = 0;
        goto LABEL_10;
      }

      v0[45] = v44;
      v45 = v44;
      v0[46] = swift_getObjectType();
      v46 = *(v45 + 8);
      v20 = dispatch thunk of Actor.unownedExecutor.getter();
      v22 = v47;
      v23 = PairingCoordinator._interruptPairing();
    }
  }

  v9 = v23;
  v8 = v20;
  v10 = v22;
LABEL_10:

  return MEMORY[0x2822009F8](v9, v8, v10);
}

{
  v2 = v0[39];
  v1 = v0[40];
  v3 = v0[38];
  PairingUIManager._pairingFinish()();
  swift_unknownObjectRelease();
  v4 = v0[34];
  v5 = v0[35];

  return MEMORY[0x2822009F8](PairingCoordinator._interruptPairing(), v4, v5);
}

{
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[30];
  v4 = v0[31];
  v5 = v0[29];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v2(v5, v3);
  v6 = v0[10];
  v7 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v6);
  v8 = (*(v7 + 48))(v6, v7);
  v0[41] = v8;
  if (v8)
  {
    v0[42] = v9;
    v10 = v9;
    v0[43] = swift_getObjectType();
    v11 = *(v10 + 8);
    v12 = dispatch thunk of Actor.unownedExecutor.getter();
    v14 = v13;
    v15 = PairingCoordinator._interruptPairing();
LABEL_5:
    v28 = v15;
    v29 = v12;
    v30 = v14;
    goto LABEL_6;
  }

  v17 = v0[36];
  v16 = v0[37];
  v18 = v0[30];
  v19 = v0[31];
  v20 = v0[29];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v17(v20, v18);
  v21 = v0[15];
  v22 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v21);
  v23 = (*(v22 + 32))(v21, v22);
  v0[44] = v23;
  if (v23)
  {
    v0[45] = v24;
    v25 = v24;
    v0[46] = swift_getObjectType();
    v26 = *(v25 + 8);
    v12 = dispatch thunk of Actor.unownedExecutor.getter();
    v14 = v27;
    v15 = PairingCoordinator._interruptPairing();
    goto LABEL_5;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  v31 = v0[31];
  v32 = v0[29];
  v33 = v0[30];
  v34 = *(v33 + 16);
  v0[47] = v34;
  v0[48] = (v33 + 16) & 0xFFFFFFFFFFFFLL | 0x20DC000000000000;
  v29 = v34(v32);
  v0[49] = v29;
  v28 = PairingCoordinator._interruptPairing();
  v30 = 0;
LABEL_6:

  return MEMORY[0x2822009F8](v28, v29, v30);
}

{
  v2 = v0[42];
  v1 = v0[43];
  v3 = v0[41];
  UserSessionListener._pairingFinish()();
  swift_unknownObjectRelease();
  v4 = v0[34];
  v5 = v0[35];

  return MEMORY[0x2822009F8](PairingCoordinator._interruptPairing(), v4, v5);
}

{
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[30];
  v4 = v0[31];
  v5 = v0[29];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v2(v5, v3);
  v6 = v0[15];
  v7 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v6);
  v8 = (*(v7 + 32))(v6, v7);
  v0[44] = v8;
  if (v8)
  {
    v0[45] = v9;
    v10 = v9;
    v0[46] = swift_getObjectType();
    v11 = *(v10 + 8);
    v12 = dispatch thunk of Actor.unownedExecutor.getter();
    v14 = v13;
    v15 = PairingCoordinator._interruptPairing();
    v16 = v12;
    v17 = v14;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
    v18 = v0[31];
    v19 = v0[29];
    v20 = v0[30];
    v21 = *(v20 + 16);
    v0[47] = v21;
    v0[48] = (v20 + 16) & 0xFFFFFFFFFFFFLL | 0x20DC000000000000;
    v16 = v21(v19);
    v0[49] = v16;
    v15 = PairingCoordinator._interruptPairing();
    v17 = 0;
  }

  return MEMORY[0x2822009F8](v15, v16, v17);
}

{
  v2 = v0[45];
  v1 = v0[46];
  v3 = v0[44];
  AccessoryScanner._pairingFinish()();
  swift_unknownObjectRelease();
  v4 = v0[34];
  v5 = v0[35];

  return MEMORY[0x2822009F8](PairingCoordinator._interruptPairing(), v4, v5);
}

{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  v1 = v0[31];
  v2 = v0[29];
  v3 = v0[30];
  v4 = *(v3 + 16);
  v0[47] = v4;
  v0[48] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0x20DC000000000000;
  v5 = v4(v2);
  v0[49] = v5;

  return MEMORY[0x2822009F8](PairingCoordinator._interruptPairing(), v5, 0);
}

{
  v1 = *(v0 + 392);
  *(v0 + 504) = PairingCoordinatorStateManager.canInterruptFlow.getter() & 1;

  v2 = *(v0 + 272);
  v3 = *(v0 + 280);

  return MEMORY[0x2822009F8](PairingCoordinator._interruptPairing(), v2, v3);
}

{
  if (*(v0 + 504) == 1)
  {
    v2 = *(v0 + 256);
    v1 = *(v0 + 264);
    v3 = *(v0 + 248);
    v15 = *(v0 + 240);
    (*(v15 + 32))(*(v0 + 232));
    swift_storeEnumTagMultiPayload();
    AsyncStreamProvider.yield(value:transaction:)();

    outlined destroy of UserSessionState(v1, type metadata accessor for AnalyticsEvent);
    *(v0 + 224) = 15;
    v4 = *(v15 + 152);
    v14 = (v4 + *v4);
    v5 = v4[1];
    v6 = swift_task_alloc();
    *(v0 + 400) = v6;
    *v6 = v0;
    v6[1] = PairingCoordinator._interruptPairing();
    v7 = *(v0 + 240);
    v8 = *(v0 + 248);
    v9 = *(v0 + 232);

    return v14(v0 + 224, v9, v7);
  }

  else
  {
    v11 = *(v0 + 384);
    v12 = *(v0 + 248);
    v13 = (*(v0 + 376))(*(v0 + 232), *(v0 + 240));
    *(v0 + 448) = v13;

    return MEMORY[0x2822009F8](PairingCoordinator._interruptPairing(), v13, 0);
  }
}

{
  v2 = *(*v1 + 400);
  v3 = *v1;
  v3[51] = v0;

  if (v0)
  {
    v4 = v3[34];
    v5 = v3[35];

    return MEMORY[0x2822009F8](PairingCoordinator._interruptPairing(), v4, v5);
  }

  else
  {
    v6 = swift_task_alloc();
    v3[52] = v6;
    *v6 = v3;
    v6[1] = PairingCoordinator._interruptPairing();
    v7 = v3[30];
    v8 = v3[31];
    v9 = v3[29];

    return PairingCoordinator._interruptExecutorsPairing()(v9, v7);
  }
}

{
  v2 = *(*v1 + 416);
  v3 = *v1;
  v3[53] = v0;

  if (v0)
  {
    v4 = v3[34];
    v5 = v3[35];

    return MEMORY[0x2822009F8](PairingCoordinator._interruptPairing(), v4, v5);
  }

  else
  {
    v6 = swift_task_alloc();
    v3[54] = v6;
    *v6 = v3;
    v6[1] = PairingCoordinator._interruptPairing();
    v7 = v3[30];
    v8 = v3[31];
    v9 = v3[29];

    return PairingCoordinator._cleanUp()(v9, v7);
  }
}

{
  v2 = *(*v1 + 432);
  v3 = *v1;
  v3[55] = v0;

  if (v0)
  {
    v4 = v3[34];
    v5 = v3[35];

    return MEMORY[0x2822009F8](PairingCoordinator._interruptPairing(), v4, v5);
  }

  else
  {
    v6 = v3[33];

    v7 = v3[1];

    return v7();
  }
}

{
  v1 = *(v0 + 448);
  swift_beginAccess();
  v2 = *(v1 + 120);
  *(v0 + 208) = 13;
  v3 = swift_task_alloc();
  *(v3 + 16) = v0 + 208;

  *(v0 + 505) = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v3, v2) & 1;
  *(v0 + 456) = 0;

  v4 = *(v0 + 272);
  v5 = *(v0 + 280);

  return MEMORY[0x2822009F8](PairingCoordinator._interruptPairing(), v4, v5);
}

{
  v1 = *(v0 + 384);
  v2 = *(v0 + 248);
  v3 = (*(v0 + 376))(*(v0 + 232), *(v0 + 240));
  *(v0 + 464) = v3;

  return MEMORY[0x2822009F8](PairingCoordinator._interruptPairing(), v3, 0);
}

{
  v1 = v0[58];
  swift_beginAccess();
  v2 = 0;
  v3 = *(v1 + 120);
  v4 = *(v3 + 16);
  v0[59] = v4;
  v5 = v3 + 32;
  while (1)
  {
    v0[60] = v2;
    if (v4 == v2)
    {
      break;
    }

    v6 = *(v5 + 8 * v2++);
    v0[61] = v6;
    if (v6 >= 0x11)
    {
      v7 = v0[58];
      MEMORY[0x24C236EC0]();

      v8 = v0[34];
      v9 = v0[35];
      v10 = PairingCoordinator._interruptPairing();
      goto LABEL_6;
    }
  }

  v11 = v0[58];

  v8 = v0[34];
  v9 = v0[35];
  v10 = PairingCoordinator._interruptPairing();
LABEL_6:

  return MEMORY[0x2822009F8](v10, v8, v9);
}

{
  v1 = *(v0 + 384);
  v2 = *(v0 + 248);
  v3 = (*(v0 + 376))(*(v0 + 232), *(v0 + 240));
  *(v0 + 496) = v3;

  return MEMORY[0x2822009F8](PairingCoordinator._interruptPairing(), v3, 0);
}

{
  outlined consume of PairingCoordinatorState(*(v0 + 488));
  v1 = *(v0 + 384);
  v2 = *(v0 + 248);
  v3 = (*(v0 + 376))(*(v0 + 232), *(v0 + 240));
  *(v0 + 496) = v3;

  return MEMORY[0x2822009F8](PairingCoordinator._interruptPairing(), v3, 0);
}

{
  v1 = *(v0 + 496);
  v2 = *(v0 + 456);
  swift_beginAccess();
  v3 = *(v1 + 120);
  *(v0 + 216) = 15;
  v4 = swift_task_alloc();
  *(v4 + 16) = v0 + 216;

  *(v0 + 506) = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v4, v3) & 1;

  v5 = *(v0 + 272);
  v6 = *(v0 + 280);

  return MEMORY[0x2822009F8](PairingCoordinator._interruptPairing(), v5, v6);
}

{
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.pairingCoordinator);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 506);
    v5 = *(v0 + 505);
    v6 = *(v0 + 480) != *(v0 + 472);
    v7 = swift_slowAlloc();
    *v7 = 67109632;
    *(v7 + 4) = (v5 & 1) == 0;
    *(v7 + 8) = 1024;
    *(v7 + 10) = v6;
    *(v7 + 14) = 1024;
    *(v7 + 16) = (v4 & 1) == 0;
    _os_log_impl(&dword_24AF48000, v2, v3, "Can't interrupt the flow! canHandlePairingFinish = %{BOOL}d, isError = %{BOOL}d, alreadyInterrupted = %{BOOL}d.", v7, 0x14u);
    MEMORY[0x24C237030](v7, -1, -1);
  }

  v8 = *(v0 + 264);

  v9 = *(v0 + 8);

  return v9();
}

{
  v1 = v0[51];
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.pairingCoordinator);
  MEMORY[0x24C236EC0](v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    MEMORY[0x24C236EC0](v1);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&dword_24AF48000, v3, v4, "Failure in pairing interruption: %{public}@", v5, 0xCu);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v6, -1, -1);
    MEMORY[0x24C237030](v5, -1, -1);
    MEMORY[0x24C236EB0](v1);
  }

  else
  {

    MEMORY[0x24C236EB0](v1);
  }

  v8 = v0[33];

  v9 = v0[1];

  return v9();
}

{
  v1 = v0[53];
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.pairingCoordinator);
  MEMORY[0x24C236EC0](v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    MEMORY[0x24C236EC0](v1);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&dword_24AF48000, v3, v4, "Failure in pairing interruption: %{public}@", v5, 0xCu);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v6, -1, -1);
    MEMORY[0x24C237030](v5, -1, -1);
    MEMORY[0x24C236EB0](v1);
  }

  else
  {

    MEMORY[0x24C236EB0](v1);
  }

  v8 = v0[33];

  v9 = v0[1];

  return v9();
}

{
  v1 = v0[55];
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.pairingCoordinator);
  MEMORY[0x24C236EC0](v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    MEMORY[0x24C236EC0](v1);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&dword_24AF48000, v3, v4, "Failure in pairing interruption: %{public}@", v5, 0xCu);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v6, -1, -1);
    MEMORY[0x24C237030](v5, -1, -1);
    MEMORY[0x24C236EB0](v1);
  }

  else
  {

    MEMORY[0x24C236EB0](v1);
  }

  v8 = v0[33];

  v9 = v0[1];

  return v9();
}

uint64_t closure #1 in PairingCoordinator.setupStateChangeObserver()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.setupStateChangeObserver(), 0, 0);
}

uint64_t closure #1 in PairingCoordinator.setupStateChangeObserver()()
{
  v1 = v0[8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    v3 = v0[9];
    v4 = v0[10];
    v5 = *(v4 + 16);
    v4 += 16;
    v0[12] = v5;
    v0[13] = v4 & 0xFFFFFFFFFFFFLL | 0x20DC000000000000;
    v6 = *(v4 - 8);
    v8 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.setupStateChangeObserver(), v8, v7);
  }

  else
  {
    v9 = v0[1];

    return v9();
  }
}

{
  v1 = *(v0 + 104);
  v2 = *(v0 + 88);
  *(v0 + 112) = (*(v0 + 96))(*(v0 + 72), *(v0 + 80));
  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.setupStateChangeObserver(), 0, 0);
}

{
  v1 = *(v0 + 112);
  v2 = *(v0 + 64);
  v3 = swift_allocObject();
  *(v0 + 120) = v3;
  v6 = *(v0 + 72);
  swift_beginAccess();
  swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  v4 = swift_allocObject();
  *(v0 + 128) = v4;
  *(v4 + 16) = v6;
  *(v4 + 32) = v3;

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.setupStateChangeObserver(), v1, 0);
}

{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  v4 = *(v3 + 136);
  v5 = *(v3 + 144);
  *(v3 + 136) = &async function pointer to partial apply for closure #1 in closure #1 in PairingCoordinator.setupStateChangeObserver();
  *(v3 + 144) = v1;
  _s13FindMyPairing0C16CoordinatorStateOIegHn_SgWOe_0(v4);

  v6 = v0[1];

  return v6();
}

uint64_t closure #1 in closure #1 in PairingCoordinator.setupStateChangeObserver()(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a2;
  v4[7] = a3;
  v5 = *a1;
  v4[8] = a4;
  v4[9] = v5;
  return MEMORY[0x2822009F8](closure #1 in closure #1 in PairingCoordinator.setupStateChangeObserver(), 0, 0);
}

uint64_t closure #1 in closure #1 in PairingCoordinator.setupStateChangeObserver()()
{
  v1 = v0[6];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v0[5] = v0[9];
    v3 = swift_task_alloc();
    v0[11] = v3;
    *v3 = v0;
    v3[1] = closure #1 in closure #1 in PairingCoordinator.setupStateChangeObserver();
    v4 = v0[7];
    v5 = v0[8];

    return PairingCoordinator._handleStateChange(_:)(v0 + 5, v4, v5);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *v1;
  *(v4 + 96) = v0;

  swift_unknownObjectRelease();
  if (v0)
  {

    return MEMORY[0x2822009F8](closure #1 in closure #1 in PairingCoordinator.setupStateChangeObserver(), 0, 0);
  }

  else
  {
    v5 = *(v4 + 8);

    return v5();
  }
}

{
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 96);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.pairingCoordinator);
  MEMORY[0x24C236EC0](v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 96);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    MEMORY[0x24C236EC0](v6);
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&dword_24AF48000, v3, v4, "Failure in state change handle: %{public}@", v7, 0xCu);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v8, -1, -1);
    MEMORY[0x24C237030](v7, -1, -1);
    MEMORY[0x24C236EB0](v6);
  }

  else
  {

    MEMORY[0x24C236EB0](v6);
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t PairingCoordinator._handleStateChange(_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[4] = a2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v8 = swift_task_alloc();
  v9 = *a1;
  v4[7] = v8;
  v4[8] = v9;
  v10 = *(a3 + 8);
  v12 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](PairingCoordinator._handleStateChange(_:), v12, v11);
}

uint64_t PairingCoordinator._handleStateChange(_:)()
{
  v37 = v0;
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  type metadata accessor for WorkItemQueue();
  (*(v2 + 72))(v3, v2);
  LOBYTE(v1) = static WorkItemQueue.called(on:)();

  if (v1 & 1) != 0 || (v4 = v0[6], (*(v0[5] + 80))(v0[4]), LOBYTE(v4) = static WorkItemQueue.called(on:)(), , (v4))
  {
    if (one-time initialization token for pairingCoordinator != -1)
    {
      swift_once();
    }

    v5 = v0[8];
    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.pairingCoordinator);
    outlined copy of PairingCoordinatorState(v5);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    outlined consume of PairingCoordinatorState(v5);
    if (os_log_type_enabled(v7, v8))
    {
      v9 = v0[8];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v35 = v11;
      v36 = v9;
      *v10 = 136446210;
      outlined copy of PairingCoordinatorState(v9);
      v12 = PairingCoordinatorState.description.getter();
      v14 = v13;
      outlined consume of PairingCoordinatorState(v36);
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v35);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_24AF48000, v7, v8, "New state = %{public}s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x24C237030](v11, -1, -1);
      MEMORY[0x24C237030](v10, -1, -1);
    }

    v16 = v0[8];
    if (v16 >= 0xD)
    {
      v17 = v0[6];
      v18 = v0[7];
      v19 = type metadata accessor for TaskPriority();
      v34 = *(v0 + 2);
      (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
      v20 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v21 = swift_allocObject();
      *(v21 + 16) = 0;
      *(v21 + 24) = 0;
      *(v21 + 32) = v34;
      *(v21 + 48) = v20;
      _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v18, &async function pointer to partial apply for closure #1 in PairingCoordinator._handleStateChange(_:), v21);

      outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v18, &_sScPSgMd, &_sScPSgMR);
      v16 = v0[8];
    }

    v22 = v0[6];
    v23 = *(v0[5] + 24);
    v23(v0[4]);
    v0[2] = v16;
    AsyncStreamProvider.yield(value:transaction:)();

    if (v16 != 16)
    {
      v26 = v0[6];
      if (PairingCoordinator.isUserActionable.getter(v0[4], v0[5]))
      {
        goto LABEL_13;
      }

      v27 = v0[8];
      if (v27 < 0xD || v27 == 14)
      {
        goto LABEL_13;
      }

      if (v27 == 13)
      {
        v33 = v0[6];
        (v23)(v0[4], v0[5]);
        v0[3] = 16;
        AsyncStreamProvider.yield(value:transaction:)();
      }
    }

    v24 = v0[5];
    v25 = v0[4];
    (v23)(v25, v24);
    AsyncStreamProvider.finish()();

    (*(v24 + 32))(v25, v24);
    AsyncStreamProvider.finish()();

LABEL_13:
    v28 = v0[7];

    v29 = v0[1];
    goto LABEL_15;
  }

  v30 = v0[7];
  lazy protocol witness table accessor for type PairingCoordinatorError and conformance PairingCoordinatorError();
  swift_allocError();
  *v31 = 8;
  swift_willThrow();

  v29 = v0[1];
LABEL_15:

  return v29();
}

uint64_t closure #1 in PairingCoordinator._handleStateChange(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._handleStateChange(_:), 0, 0);
}

uint64_t closure #1 in PairingCoordinator._handleStateChange(_:)()
{
  v1 = *(v0 + 64);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 88) = Strong;
  if (Strong)
  {
    v3 = *(v0 + 72);
    v4 = *(v0 + 80);
    *(v0 + 40) = 4;
    v5 = *(v4 + 8);
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v7;
    v9 = closure #1 in PairingCoordinator._handleStateChange(_:);
LABEL_5:

    return MEMORY[0x2822009F8](v9, v6, v8);
  }

  *(v0 + 104) = 0;
  v10 = *(v0 + 64);
  swift_beginAccess();
  v11 = swift_unknownObjectWeakLoadStrong();
  *(v0 + 112) = v11;
  if (v11)
  {
    v12 = *(v0 + 72);
    v13 = *(v0 + 80);
    *(v0 + 128) = 0;
    v14 = *(v13 + 8);
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v15;
    v9 = closure #1 in PairingCoordinator._handleStateChange(_:);
    goto LABEL_5;
  }

  v16 = *(v0 + 8);

  return v16();
}

{
  v1 = *(v0 + 88);
  PairingCoordinator.cancelTimeout(for:)((v0 + 40), *(v0 + 72), *(v0 + 80));
  *(v0 + 96) = 0;
  v2 = *(v0 + 88);
  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._handleStateChange(_:), 0, 0);
}

{
  *(v0 + 104) = *(v0 + 96);
  v1 = *(v0 + 64);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 112) = Strong;
  if (Strong)
  {
    v3 = *(v0 + 72);
    v4 = *(v0 + 80);
    *(v0 + 128) = 0;
    v5 = *(v4 + 8);
    v7 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._handleStateChange(_:), v7, v6);
  }

  else
  {
    v8 = *(v0 + 8);

    return v8();
  }
}

{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  PairingCoordinator.cancelTimeout(for:)((v0 + 128), *(v0 + 72), *(v0 + 80));
  *(v0 + 120) = v2;
  v3 = *(v0 + 112);
  swift_unknownObjectRelease();
  if (v2)
  {

    return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._handleStateChange(_:), 0, 0);
  }

  else
  {
    v4 = *(v0 + 8);

    return v4();
  }
}

{
  v1 = *(v0 + 96);
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.pairingCoordinator);
  MEMORY[0x24C236EC0](v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    MEMORY[0x24C236EC0](v1);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&dword_24AF48000, v3, v4, "Failed to cancel timeout: %{public}@", v5, 0xCu);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v6, -1, -1);
    MEMORY[0x24C237030](v5, -1, -1);
    MEMORY[0x24C236EB0](v1);
  }

  else
  {

    MEMORY[0x24C236EB0](v1);
  }

  v8 = *(v0 + 8);

  return v8();
}

{
  v1 = *(v0 + 120);
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.pairingCoordinator);
  MEMORY[0x24C236EC0](v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    MEMORY[0x24C236EC0](v1);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&dword_24AF48000, v3, v4, "Failed to cancel timeout: %{public}@", v5, 0xCu);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v6, -1, -1);
    MEMORY[0x24C237030](v5, -1, -1);
    MEMORY[0x24C236EB0](v1);
  }

  else
  {

    MEMORY[0x24C236EB0](v1);
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t PairingCoordinator.startTimeout(for:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  *(v4 + 40) = swift_task_alloc();
  *(v4 + 72) = *a1;
  v8 = *(a3 + 8);
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v4 + 48) = v10;
  *(v4 + 56) = v9;

  return MEMORY[0x2822009F8](PairingCoordinator.startTimeout(for:), v10, v9);
}

uint64_t PairingCoordinator.startTimeout(for:)()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  type metadata accessor for WorkItemQueue();
  (*(v1 + 72))(v3, v1);
  LOBYTE(v2) = static WorkItemQueue.called(on:)();

  if (v2)
  {
    v4 = v0[5];
    lazy protocol witness table accessor for type PairingCoordinatorError and conformance PairingCoordinatorError();
    swift_allocError();
    *v5 = 9;
    swift_willThrow();

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[4];
    v9 = (*(v0[3] + 16))(v0[2]);
    v0[8] = v9;

    return MEMORY[0x2822009F8](PairingCoordinator.startTimeout(for:), v9, 0);
  }
}

{
  v1 = *(v0 + 64);
  *(v0 + 73) = PairingCoordinatorStateManager.canSetupTimeout.getter();

  v2 = *(v0 + 48);
  v3 = *(v0 + 56);

  return MEMORY[0x2822009F8](PairingCoordinator.startTimeout(for:), v2, v3);
}

{
  v57 = v0;
  if (*(v0 + 73) != 1)
  {
    if (one-time initialization token for pairingCoordinator != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.pairingCoordinator);
    v17 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v17, v24))
    {
      goto LABEL_34;
    }

    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_24AF48000, v17, v24, "Flow is already interrupted, no need for timeout.", v19, 2u);
    goto LABEL_33;
  }

  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.pairingCoordinator);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 72);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v56 = v6;
    *v5 = 136446210;
    v7 = 0xEE00676E69726961;
    v8 = 0x617461646174656DLL;
    v9 = 0xEC00000064616552;
    v10 = 0x800000024AFAF570;
    v11 = 0x53676E6972696170;
    if (v4 == 3)
    {
      v11 = 0xD000000000000010;
    }

    else
    {
      v10 = 0xEC00000074726174;
    }

    if (v4 != 2)
    {
      v8 = v11;
      v9 = v10;
    }

    v12 = 0xD000000000000013;
    if (v4)
    {
      v7 = 0x800000024AFAF540;
    }

    else
    {
      v12 = 0x506C6C617265766FLL;
    }

    if (v4 <= 1)
    {
      v13 = v12;
    }

    else
    {
      v13 = v8;
    }

    if (v4 <= 1)
    {
      v14 = v7;
    }

    else
    {
      v14 = v9;
    }

    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v56);

    *(v5 + 4) = v15;
    _os_log_impl(&dword_24AF48000, v2, v3, "Start timeout for %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x24C237030](v6, -1, -1);
    MEMORY[0x24C237030](v5, -1, -1);
  }

  if (*(v0 + 72) == 4)
  {
    v25 = *(v0 + 32);
    if ((*(*(v0 + 24) + 88))(*(v0 + 16)))
    {

      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v56 = v20;
        *v19 = 136446210;
        v21 = 0x53676E6972696170;
        v22 = 0xEC00000074726174;
        goto LABEL_32;
      }

LABEL_34:

      goto LABEL_54;
    }
  }

  else if (*(v0 + 72))
  {
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = *(v0 + 72);
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v56 = v30;
      *v29 = 136446210;
      v31 = 0xEE00676E69726961;
      v32 = 0x617461646174656DLL;
      v33 = 0xEC00000064616552;
      if (v28 != 2)
      {
        v32 = 0xD000000000000010;
        v33 = 0x800000024AFAF570;
      }

      v34 = 0xD000000000000013;
      if (v28)
      {
        v31 = 0x800000024AFAF540;
      }

      else
      {
        v34 = 0x506C6C617265766FLL;
      }

      if (v28 <= 1)
      {
        v35 = v34;
      }

      else
      {
        v35 = v32;
      }

      if (v28 <= 1)
      {
        v36 = v31;
      }

      else
      {
        v36 = v33;
      }

      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, &v56);

      *(v29 + 4) = v37;
      _os_log_impl(&dword_24AF48000, v26, v27, "Unsupported timeout type reason %{public}s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      MEMORY[0x24C237030](v30, -1, -1);
      MEMORY[0x24C237030](v29, -1, -1);
    }
  }

  else
  {
    v16 = *(v0 + 32);
    if ((*(*(v0 + 24) + 112))(*(v0 + 16)))
    {

      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v56 = v20;
        *v19 = 136446210;
        v21 = 0x506C6C617265766FLL;
        v22 = 0xEE00676E69726961;
LABEL_32:
        *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v56);
        _os_log_impl(&dword_24AF48000, v17, v18, "Timeout for %{public}s already started!", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v20);
        MEMORY[0x24C237030](v20, -1, -1);
LABEL_33:
        MEMORY[0x24C237030](v19, -1, -1);
        goto LABEL_34;
      }

      goto LABEL_34;
    }
  }

  v38 = *(v0 + 72);
  v39 = *(v0 + 32);
  v40 = *(v0 + 40);
  v41 = type metadata accessor for TaskPriority();
  v55 = *(v0 + 16);
  (*(*(v41 - 8) + 56))(v40, 1, 1, v41);
  v42 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v43 = swift_allocObject();
  *(v43 + 16) = 0;
  *(v43 + 24) = 0;
  *(v43 + 32) = v55;
  *(v43 + 48) = v42;
  *(v43 + 56) = v38;
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v40, &async function pointer to partial apply for closure #1 in PairingCoordinator.startTimeout(for:), v43);
  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v40, &_sScPSgMd, &_sScPSgMR);
  if (v38)
  {
    if (v38 == 4)
    {
      v44 = *(v0 + 24);
      v45 = *(v0 + 16);
      v46 = *(v44 + 96);

      v46(v47, v45, v44);
    }
  }

  else
  {
    v48 = *(v0 + 24);
    v49 = *(v0 + 16);
    v50 = *(v48 + 120);

    v50(v51, v49, v48);
  }

LABEL_54:
  v52 = *(v0 + 40);

  v53 = *(v0 + 8);

  return v53();
}

uint64_t PairingCoordinator.handleUIFinish()(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(a2 + 8);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[5] = v6;
  v3[6] = v5;

  return MEMORY[0x2822009F8](PairingCoordinator.handleUIFinish(), v6, v5);
}

uint64_t PairingCoordinator.handleUIFinish()()
{
  v1 = v0[4];
  v0[7] = (*(v0[3] + 72))(v0[2]);
  v2 = *(MEMORY[0x277D08958] + 4);
  v5 = (*MEMORY[0x277D08958] + MEMORY[0x277D08958]);
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = PairingCoordinator.handleUIFinish();

  return v5();
}

{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v7 = *v0;

  v4 = *(v1 + 48);
  v5 = *(v1 + 40);

  return MEMORY[0x2822009F8](PairingCoordinator.handleUIFinish(), v5, v4);
}

{
  v18 = v0;
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v16 = 4;
  PairingCoordinator.cancelTimeout(for:)(&v16, v3, v1);
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[2];
  v17[0] = 0;
  PairingCoordinator.cancelTimeout(for:)(v17, v6, v4);
  v7 = v0[3];
  v8 = v0[2];
  v0[9] = (*(v7 + 80))(v8, v7);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  v0[10] = v10;
  v10[2] = v8;
  v10[3] = v7;
  v10[4] = v9;
  v11 = *(MEMORY[0x277D08960] + 4);
  v15 = (*MEMORY[0x277D08960] + MEMORY[0x277D08960]);
  v12 = swift_task_alloc();
  v0[11] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd, &_sytSgMR);
  *v12 = v0;
  v12[1] = PairingCoordinator.handleUIFinish();

  return v15(v0 + 12, &async function pointer to partial apply for closure #1 in PairingCoordinator.handleUIFinish(), v10, v13);
}

{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 88);
  v5 = *v1;

  v6 = *(v2 + 80);
  v7 = *(v2 + 72);
  if (v0)
  {
    MEMORY[0x24C236EB0](v0);

    v8 = *(v3 + 40);
    v9 = *(v3 + 48);
    v10 = PairingCoordinator.handleUIFinish();
  }

  else
  {

    v8 = *(v3 + 40);
    v9 = *(v3 + 48);
    v10 = PairingCoordinator.handleUIFinish();
  }

  return MEMORY[0x2822009F8](v10, v8, v9);
}

{
  return (*(v0 + 8))();
}

uint64_t closure #1 in PairingCoordinator.handleDisplayedProxCard()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[26] = a2;
  v3[27] = a3;
  v3[25] = a1;
  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleDisplayedProxCard(), 0, 0);
}

uint64_t closure #1 in PairingCoordinator.handleDisplayedProxCard()()
{
  v1 = v0[25];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[28] = Strong;
  if (Strong)
  {
    v3 = v0[26];
    v4 = v0[27];
    v5 = *(v4 + 16);
    v4 += 16;
    v0[29] = v5;
    v0[30] = v4 & 0xFFFFFFFFFFFFLL | 0x20DC000000000000;
    v6 = *(v4 - 8);
    v8 = dispatch thunk of Actor.unownedExecutor.getter();
    v0[31] = v8;
    v0[32] = v7;

    return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleDisplayedProxCard(), v8, v7);
  }

  else
  {
    v9 = v0[1];

    return v9();
  }
}

{
  v1 = *(v0 + 240);
  v2 = *(v0 + 224);
  v3 = (*(v0 + 232))(*(v0 + 208), *(v0 + 216));
  *(v0 + 264) = v3;

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleDisplayedProxCard(), v3, 0);
}

{
  v1 = *(v0 + 264);
  swift_beginAccess();
  v2 = *(v1 + 120);
  *(v0 + 184) = 2;
  v3 = swift_task_alloc();
  *(v3 + 16) = v0 + 184;

  *(v0 + 400) = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v3, v2) & 1;

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleDisplayedProxCard(), 0, 0);
}

{
  if (*(v0 + 400))
  {
    if (one-time initialization token for pairingCoordinator != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Logger.pairingCoordinator);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v0 + 224);
    if (v4)
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_24AF48000, v2, v3, "Displayed prox card already handled!", v6, 2u);
      MEMORY[0x24C237030](v6, -1, -1);
    }

    swift_unknownObjectRelease();

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    *(v0 + 192) = 2;
    v14 = (*(v0 + 216) + 152);
    v15 = (*v14 + **v14);
    v9 = (*v14)[1];
    v10 = swift_task_alloc();
    *(v0 + 272) = v10;
    *v10 = v0;
    v10[1] = closure #1 in PairingCoordinator.handleDisplayedProxCard();
    v11 = *(v0 + 216);
    v12 = *(v0 + 224);
    v13 = *(v0 + 208);

    return v15(v0 + 192, v13, v11);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v9 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v4 = closure #1 in PairingCoordinator.handleDisplayedProxCard();
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v7 = v2[27];
    v2[36] = *(v7 + 40);
    v2[37] = (v7 + 40) & 0xFFFFFFFFFFFFLL | 0xEA85000000000000;
    v5 = v2[31];
    v6 = v2[32];
    v4 = closure #1 in PairingCoordinator.handleDisplayedProxCard();
  }

  return MEMORY[0x2822009F8](v4, v5, v6);
}

{
  v1 = *(v0 + 296);
  v2 = *(v0 + 224);
  (*(v0 + 288))(*(v0 + 208), *(v0 + 216));

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleDisplayedProxCard(), 0, 0);
}

{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = (*(v2 + 64))(v1, v2);
  v5 = v4;
  v0[38] = v3;
  v0[39] = v4;
  v0[40] = swift_getObjectType();
  v6 = *(v5 + 16);
  v5 += 16;
  v0[41] = v6;
  v0[42] = v5 & 0xFFFFFFFFFFFFLL | 0xC23A000000000000;
  v7 = *(v5 - 8);
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleDisplayedProxCard(), v9, v8);
}

{
  v1 = *(v0 + 336);
  v2 = *(v0 + 304);
  (*(v0 + 328))(*(v0 + 320), *(v0 + 312));
  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleDisplayedProxCard(), 0, 0);
}

{
  v1 = v0[10];
  if (v1)
  {
    if (v1 == 1)
    {
      v2 = v0[28];
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
      v3 = v0[1];

      return v3();
    }

    else
    {
      v7 = swift_task_alloc();
      v0[48] = v7;
      *v7 = v0;
      v7[1] = closure #1 in PairingCoordinator.handleDisplayedProxCard();
      v8 = v0[27];
      v9 = v0[28];
      v10 = v0[26];

      return PairingCoordinator._preFetchMetadata()(v10, v8);
    }
  }

  else
  {
    v5 = v0[31];
    v6 = v0[32];

    return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleDisplayedProxCard(), v5, v6);
  }
}

{
  v1 = *(v0 + 296);
  v2 = *(v0 + 224);
  (*(v0 + 288))(*(v0 + 208), *(v0 + 216));

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleDisplayedProxCard(), 0, 0);
}

{
  v1 = v0[15];
  v2 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v1);
  v3 = (*(v2 + 32))(v1, v2);
  v0[43] = v3;
  if (v3)
  {
    v0[44] = v4;
    v5 = v4;
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
    v0[45] = swift_getObjectType();
    v6 = *(v5 + 16);
    v5 += 16;
    v0[46] = v6;
    v0[47] = v5 & 0xFFFFFFFFFFFFLL | 0xF8BE000000000000;
    v7 = *(v5 - 8);
    v9 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleDisplayedProxCard(), v9, v8);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
    lazy protocol witness table accessor for type PairingCoordinatorError and conformance PairingCoordinatorError();
    v10 = swift_allocError();
    *v11 = 13;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    if (one-time initialization token for pairingCoordinator != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.pairingCoordinator);
    MEMORY[0x24C236EC0](v10);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    MEMORY[0x24C236EB0](v10);
    v15 = os_log_type_enabled(v13, v14);
    v16 = v0[28];
    if (v15)
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138543362;
      MEMORY[0x24C236EC0](v10);
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v19;
      *v18 = v19;
      _os_log_impl(&dword_24AF48000, v13, v14, "Failure while handling displayed prox card: %{public}@", v17, 0xCu);
      outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v18, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x24C237030](v18, -1, -1);
      MEMORY[0x24C237030](v17, -1, -1);
      swift_unknownObjectRelease();
      MEMORY[0x24C236EB0](v10);
    }

    else
    {
      v20 = v0[28];
      swift_unknownObjectRelease();

      MEMORY[0x24C236EB0](v10);
    }

    v21 = v0[1];

    return v21();
  }
}

{
  v1 = *(v0 + 376);
  v2 = *(v0 + 344);
  (*(v0 + 368))(*(v0 + 360), *(v0 + 352));

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleDisplayedProxCard(), 0, 0);
}

{
  v1 = v0[43];
  v2 = v0[28];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v3 = v0[1];

  return v3();
}

{
  v2 = *(*v1 + 384);
  v5 = *v1;
  *(*v1 + 392) = v0;

  if (v0)
  {
    v3 = closure #1 in PairingCoordinator.handleDisplayedProxCard();
  }

  else
  {
    v3 = closure #1 in PairingCoordinator.handleDisplayedProxCard();
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = v0[28];
  swift_unknownObjectRelease();
  outlined destroy of DetectedAccessory((v0 + 7));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v2 = v0[1];

  return v2();
}

{
  v1 = v0[35];
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.pairingCoordinator);
  MEMORY[0x24C236EC0](v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[28];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    MEMORY[0x24C236EC0](v1);
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&dword_24AF48000, v3, v4, "Failure while handling displayed prox card: %{public}@", v7, 0xCu);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v8, -1, -1);
    MEMORY[0x24C237030](v7, -1, -1);
    swift_unknownObjectRelease();
    MEMORY[0x24C236EB0](v1);
  }

  else
  {
    v10 = v0[28];
    swift_unknownObjectRelease();

    MEMORY[0x24C236EB0](v1);
  }

  v11 = v0[1];

  return v11();
}

{
  outlined destroy of DetectedAccessory((v0 + 7));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[49];
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.pairingCoordinator);
  MEMORY[0x24C236EC0](v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[28];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    MEMORY[0x24C236EC0](v1);
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&dword_24AF48000, v3, v4, "Failure while handling displayed prox card: %{public}@", v7, 0xCu);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v8, -1, -1);
    MEMORY[0x24C237030](v7, -1, -1);
    swift_unknownObjectRelease();
    MEMORY[0x24C236EB0](v1);
  }

  else
  {
    v10 = v0[28];
    swift_unknownObjectRelease();

    MEMORY[0x24C236EB0](v1);
  }

  v11 = v0[1];

  return v11();
}

uint64_t PairingCoordinator._preFetchMetadata()(uint64_t a1, uint64_t a2)
{
  v3[87] = v2;
  v3[86] = a2;
  v3[85] = a1;
  v4 = *(a2 + 8);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[88] = v6;
  v3[89] = v5;

  return MEMORY[0x2822009F8](PairingCoordinator._preFetchMetadata(), v6, v5);
}

uint64_t PairingCoordinator._preFetchMetadata()()
{
  v1 = v0[87];
  v2 = v0[86];
  v3 = v0[85];
  type metadata accessor for WorkItemQueue();
  (*(v2 + 72))(v3, v2);
  LOBYTE(v1) = static WorkItemQueue.called(on:)();

  if (v1)
  {
    v4 = v0[87];
    v5 = v0[85];
    v6 = v0[86];
    v7 = *(v6 + 16);
    v0[90] = v7;
    v0[91] = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0x20DC000000000000;
    v8 = v7(v5);
    v0[92] = v8;

    return MEMORY[0x2822009F8](PairingCoordinator._preFetchMetadata(), v8, 0);
  }

  else
  {
    lazy protocol witness table accessor for type PairingCoordinatorError and conformance PairingCoordinatorError();
    swift_allocError();
    *v9 = 8;
    swift_willThrow();
    v10 = v0[1];

    return v10();
  }
}

{
  v1 = *(v0 + 736);
  *(v0 + 1120) = PairingCoordinatorStateManager.canPrePair.getter() & 1;

  v2 = *(v0 + 712);
  v3 = *(v0 + 704);

  return MEMORY[0x2822009F8](PairingCoordinator._preFetchMetadata(), v3, v2);
}

{
  if (*(v0 + 1120) == 1)
  {
    v1 = *(v0 + 696);
    v2 = *(v0 + 680);
    v3 = *(v0 + 688);
    v4 = *(v3 + 40);
    *(v0 + 744) = v4;
    *(v0 + 752) = (v3 + 40) & 0xFFFFFFFFFFFFLL | 0xEA85000000000000;
    v4(v2);
    v5 = *(v0 + 80);
    v6 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v5);
    v7 = (*(v6 + 64))(v5, v6);
    v9 = v8;
    *(v0 + 760) = v7;
    *(v0 + 768) = v8;
    *(v0 + 776) = swift_getObjectType();
    v10 = *(v9 + 56);
    v9 += 56;
    *(v0 + 784) = v10;
    *(v0 + 792) = v9 & 0xFFFFFFFFFFFFLL | 0x8BF000000000000;
    v11 = *(v9 - 48);
    v13 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x2822009F8](PairingCoordinator._preFetchMetadata(), v13, v12);
  }

  else
  {
    if (one-time initialization token for pairingCoordinator != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.pairingCoordinator);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_24AF48000, v15, v16, "Pairing already started.", v17, 2u);
      MEMORY[0x24C237030](v17, -1, -1);
    }

    v18 = *(v0 + 8);

    return v18();
  }
}

{
  v1 = *(v0 + 792);
  v2 = *(v0 + 760);
  (*(v0 + 784))(*(v0 + 776), *(v0 + 768));
  swift_unknownObjectRelease();
  v3 = *(v0 + 712);
  v4 = *(v0 + 704);

  return MEMORY[0x2822009F8](PairingCoordinator._preFetchMetadata(), v4, v3);
}

{
  if (*(v0 + 120))
  {
    v1 = *(v0 + 752);
    v2 = *(v0 + 744);
    v3 = *(v0 + 696);
    v4 = *(v0 + 688);
    v5 = *(v0 + 680);
    outlined init with take of Accessory((v0 + 96), v0 + 16);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
    v2(v5, v4);
    v6 = *(v0 + 200);
    v7 = *(v0 + 208);
    __swift_project_boxed_opaque_existential_1((v0 + 176), v6);
    v8 = (*(v7 + 64))(v6, v7);
    v10 = v9;
    *(v0 + 800) = v8;
    *(v0 + 808) = v9;
    *(v0 + 816) = swift_getObjectType();
    v11 = *(v10 + 16);
    v10 += 16;
    *(v0 + 824) = v11;
    *(v0 + 832) = v10 & 0xFFFFFFFFFFFFLL | 0xC23A000000000000;
    v12 = *(v10 - 8);
    v13 = dispatch thunk of Actor.unownedExecutor.getter();
    v15 = v14;
    v16 = PairingCoordinator._preFetchMetadata();
    v17 = v13;
    v18 = v15;
  }

  else
  {
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v0 + 96, &_s13FindMyPairing14PeripheralType_pSgMd, &_s13FindMyPairing14PeripheralType_pSgMR);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
    lazy protocol witness table accessor for type PairingCoordinatorError and conformance PairingCoordinatorError();
    v19 = swift_allocError();
    *v20 = 1;
    swift_willThrow();
    *(v0 + 1080) = v19;
    if (one-time initialization token for pairingCoordinator != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    *(v0 + 1088) = __swift_project_value_buffer(v21, static Logger.pairingCoordinator);
    MEMORY[0x24C236EC0](v19);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    MEMORY[0x24C236EB0](v19);
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138543362;
      MEMORY[0x24C236EC0](v19);
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 4) = v26;
      *v25 = v26;
      _os_log_impl(&dword_24AF48000, v22, v23, "Failure in data pre-fetching %{public}@", v24, 0xCu);
      outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v25, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x24C237030](v25, -1, -1);
      MEMORY[0x24C237030](v24, -1, -1);
    }

    v27 = *(v0 + 728);
    v28 = *(v0 + 720);
    v29 = *(v0 + 696);
    v30 = *(v0 + 688);
    v31 = *(v0 + 680);

    v17 = v28(v31, v30);
    *(v0 + 1096) = v17;
    v16 = PairingCoordinator._preFetchMetadata();
    v18 = 0;
  }

  return MEMORY[0x2822009F8](v16, v17, v18);
}

{
  v1 = *(v0 + 832);
  v2 = *(v0 + 800);
  (*(v0 + 824))(*(v0 + 816), *(v0 + 808));
  swift_unknownObjectRelease();
  v3 = *(v0 + 712);
  v4 = *(v0 + 704);

  return MEMORY[0x2822009F8](PairingCoordinator._preFetchMetadata(), v4, v3);
}

{
  v29 = v0;
  if (*(v0 + 240) >= 2uLL)
  {
    v27 = *(v0 + 688);
    outlined init with take of Accessory((v0 + 216), v0 + 136);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 176));
    *(v0 + 648) = 5;
    v19 = *(v27 + 152);
    *(v0 + 840) = v19;
    *(v0 + 848) = (v27 + 152) & 0xFFFFFFFFFFFFLL | 0xE3C000000000000;
    v26 = (v19 + *v19);
    v20 = v19[1];
    v21 = swift_task_alloc();
    *(v0 + 856) = v21;
    *v21 = v0;
    v21[1] = PairingCoordinator._preFetchMetadata();
    v22 = *(v0 + 696);
    v23 = *(v0 + 688);
    v24 = *(v0 + 680);

    return v26(v0 + 648, v24, v23);
  }

  else
  {
    outlined destroy of DetectedAccessory(v0 + 216);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 176));
    if (one-time initialization token for pairingCoordinator != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Logger.pairingCoordinator);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v28 = v5;
      *v4 = 136315138;
      *(v4 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000013, 0x800000024AFAF8A0, &v28);
      _os_log_impl(&dword_24AF48000, v2, v3, "%sInvalid accessory state. We should only have a single accessory at this point!", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v5);
      MEMORY[0x24C237030](v5, -1, -1);
      MEMORY[0x24C237030](v4, -1, -1);
    }

    lazy protocol witness table accessor for type PairingCoordinatorError and conformance PairingCoordinatorError();
    v6 = swift_allocError();
    *v7 = 0;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    *(v0 + 1080) = v6;
    if (one-time initialization token for pairingCoordinator != -1)
    {
      swift_once();
    }

    *(v0 + 1088) = __swift_project_value_buffer(v1, static Logger.pairingCoordinator);
    MEMORY[0x24C236EC0](v6);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    MEMORY[0x24C236EB0](v6);
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138543362;
      MEMORY[0x24C236EC0](v6);
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v12;
      *v11 = v12;
      _os_log_impl(&dword_24AF48000, v8, v9, "Failure in data pre-fetching %{public}@", v10, 0xCu);
      outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x24C237030](v11, -1, -1);
      MEMORY[0x24C237030](v10, -1, -1);
    }

    v13 = *(v0 + 728);
    v14 = *(v0 + 720);
    v15 = *(v0 + 696);
    v16 = *(v0 + 688);
    v17 = *(v0 + 680);

    v18 = v14(v17, v16);
    *(v0 + 1096) = v18;

    return MEMORY[0x2822009F8](PairingCoordinator._preFetchMetadata(), v18, 0);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 856);
  v8 = *v1;
  *(*v1 + 864) = v0;

  v4 = *(v2 + 712);
  v5 = *(v2 + 704);
  if (v0)
  {
    v6 = PairingCoordinator._preFetchMetadata();
  }

  else
  {
    v6 = PairingCoordinator._preFetchMetadata();
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

{
  v18 = v0;
  v1 = *(v0 + 696);
  v2 = *(v0 + 688);
  v3 = *(v0 + 680);
  v17 = 2;
  v4 = *(v2 + 168);
  *(v0 + 872) = v4;
  *(v0 + 880) = (v2 + 168) & 0xFFFFFFFFFFFFLL | 0x1CA6000000000000;
  v5 = v4(&v17, v3, v2);
  v7 = v6;
  v9 = v8;
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  outlined init with copy of PairingEligibilityInfo(v0 + 16, v0 + 296);
  outlined init with copy of PairingEligibilityInfo(v0 + 136, v0 + 336);
  v11 = swift_allocObject();
  *(v0 + 888) = v11;
  v11[2] = v3;
  v11[3] = v2;
  v11[4] = v10;
  outlined init with take of Accessory((v0 + 296), (v11 + 5));
  outlined init with take of Accessory((v0 + 336), (v11 + 10));
  v12 = swift_task_alloc();
  *(v0 + 896) = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13FindMyPairing12MetadataType_pSgMd, &_s13FindMyPairing12MetadataType_pSgMR);
  *v12 = v0;
  v12[1] = PairingCoordinator._preFetchMetadata();
  v14 = *(v0 + 696);
  v15 = *(v0 + 680);
  v20 = *(v0 + 688);

  return PairingCoordinator._withOptionalTimeout<A>(timeout:_:)(v0 + 256, v5, v7, v9 & 1, &async function pointer to partial apply for closure #1 in PairingCoordinator._preFetchMetadata(), v11, v15, v13);
}

{
  v2 = *v1;
  v3 = *(*v1 + 896);
  v4 = *v1;
  *(*v1 + 904) = v0;

  v5 = v2[111];

  v6 = v2[89];
  v7 = v2[88];
  if (v0)
  {
    v8 = PairingCoordinator._preFetchMetadata();
  }

  else
  {
    v8 = PairingCoordinator._preFetchMetadata();
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

{
  outlined init with copy of PairingContext?(v0 + 256, v0 + 416, &_s13FindMyPairing12MetadataType_pSgMd, &_s13FindMyPairing12MetadataType_pSgMR);
  if (*(v0 + 440))
  {
    v1 = *(v0 + 848);
    v2 = *(v0 + 840);
    outlined init with take of Accessory((v0 + 416), v0 + 376);
    *(v0 + 656) = 6;
    v24 = (v2 + *v2);
    v3 = v2[1];
    v4 = swift_task_alloc();
    *(v0 + 912) = v4;
    *v4 = v0;
    v4[1] = PairingCoordinator._preFetchMetadata();
    v5 = *(v0 + 848);
    v6 = *(v0 + 696);
    v7 = *(v0 + 688);
    v8 = *(v0 + 680);

    return v24(v0 + 656, v8, v7);
  }

  else
  {
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v0 + 416, &_s13FindMyPairing12MetadataType_pSgMd, &_s13FindMyPairing12MetadataType_pSgMR);
    lazy protocol witness table accessor for type PairingCoordinatorError and conformance PairingCoordinatorError();
    v10 = swift_allocError();
    *v11 = 7;
    swift_willThrow();
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v0 + 256, &_s13FindMyPairing12MetadataType_pSgMd, &_s13FindMyPairing12MetadataType_pSgMR);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    *(v0 + 1080) = v10;
    if (one-time initialization token for pairingCoordinator != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    *(v0 + 1088) = __swift_project_value_buffer(v12, static Logger.pairingCoordinator);
    MEMORY[0x24C236EC0](v10);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    MEMORY[0x24C236EB0](v10);
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138543362;
      MEMORY[0x24C236EC0](v10);
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v17;
      *v16 = v17;
      _os_log_impl(&dword_24AF48000, v13, v14, "Failure in data pre-fetching %{public}@", v15, 0xCu);
      outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v16, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x24C237030](v16, -1, -1);
      MEMORY[0x24C237030](v15, -1, -1);
    }

    v18 = *(v0 + 728);
    v19 = *(v0 + 720);
    v20 = *(v0 + 696);
    v21 = *(v0 + 688);
    v22 = *(v0 + 680);

    v23 = v19(v22, v21);
    *(v0 + 1096) = v23;

    return MEMORY[0x2822009F8](PairingCoordinator._preFetchMetadata(), v23, 0);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 912);
  v8 = *v1;
  *(*v1 + 920) = v0;

  v4 = *(v2 + 712);
  v5 = *(v2 + 704);
  if (v0)
  {
    v6 = PairingCoordinator._preFetchMetadata();
  }

  else
  {
    v6 = PairingCoordinator._preFetchMetadata();
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

{
  v19 = v0;
  v1 = *(v0 + 880);
  v2 = *(v0 + 872);
  v3 = *(v0 + 696);
  v4 = *(v0 + 688);
  v5 = *(v0 + 680);
  v18 = 3;
  v6 = v2(&v18, v5, v4);
  v8 = v7;
  v10 = v9;
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  outlined init with copy of PairingEligibilityInfo(v0 + 376, v0 + 456);
  v12 = swift_allocObject();
  *(v0 + 928) = v12;
  v12[2] = v5;
  v12[3] = v4;
  v12[4] = v11;
  outlined init with take of Accessory((v0 + 456), (v12 + 5));
  v13 = swift_task_alloc();
  *(v0 + 936) = v13;
  *v13 = v0;
  v13[1] = PairingCoordinator._preFetchMetadata();
  v14 = *(v0 + 696);
  v15 = *(v0 + 680);
  v21 = *(v0 + 688);
  v16 = MEMORY[0x277D84F78] + 8;

  return PairingCoordinator._withOptionalTimeout<A>(timeout:_:)(v13, v6, v8, v10 & 1, &async function pointer to partial apply for closure #2 in PairingCoordinator._preFetchMetadata(), v12, v15, v16);
}

{
  v2 = *v1;
  v3 = *(*v1 + 936);
  v4 = *v1;
  *(*v1 + 944) = v0;

  v5 = v2[116];

  v6 = v2[89];
  v7 = v2[88];
  if (v0)
  {
    v8 = PairingCoordinator._preFetchMetadata();
  }

  else
  {
    v8 = PairingCoordinator._preFetchMetadata();
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

{
  v1 = v0[106];
  v2 = v0[105];
  v0[83] = 7;
  v10 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v0[119] = v4;
  *v4 = v0;
  v4[1] = PairingCoordinator._preFetchMetadata();
  v5 = v0[106];
  v6 = v0[87];
  v7 = v0[86];
  v8 = v0[85];

  return (v10)(v0 + 83, v8, v7);
}

{
  v2 = *v1;
  v3 = *(*v1 + 952);
  v8 = *v1;
  *(*v1 + 960) = v0;

  v4 = *(v2 + 712);
  v5 = *(v2 + 704);
  if (v0)
  {
    v6 = PairingCoordinator._preFetchMetadata();
  }

  else
  {
    v6 = PairingCoordinator._preFetchMetadata();
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

{
  v1 = v0[94];
  v2 = v0[93];
  v3 = v0[87];
  v4 = v0[86];
  v5 = v0[85];
  v2(v5, v4);
  v6 = v0[65];
  v7 = v0[66];
  __swift_project_boxed_opaque_existential_1(v0 + 62, v6);
  v0[121] = (*(v7 + 24))(v6, v7);
  v0[122] = v8;
  v0[123] = swift_getObjectType();
  v2(v5, v4);
  v9 = v0[70];
  v10 = v0[71];
  __swift_project_boxed_opaque_existential_1(v0 + 67, v9);
  v11 = (*(v10 + 64))(v9, v10);
  v13 = v12;
  v0[124] = v11;
  v0[125] = v12;
  v0[126] = swift_getObjectType();
  v14 = *(v13 + 80);
  v13 += 80;
  v0[127] = v14;
  v0[128] = v13 & 0xFFFFFFFFFFFFLL | 0xCB4B000000000000;
  v15 = *(v13 - 72);
  v17 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](PairingCoordinator._preFetchMetadata(), v17, v16);
}

{
  v1 = *(v0 + 1024);
  v2 = *(v0 + 992);
  (*(v0 + 1016))(*(v0 + 1008), *(v0 + 1000));
  swift_unknownObjectRelease();
  v3 = swift_task_alloc();
  *(v0 + 1032) = v3;
  *v3 = v0;
  v3[1] = PairingCoordinator._preFetchMetadata();
  v4 = *(v0 + 984);
  v5 = *(v0 + 976);
  v6 = *(v0 + 968);

  return PairingPolicyVerifier.verifyIfPairingEligibility(_:)(v0 + 576, v4, v5);
}

{
  v2 = *v1;
  v3 = (*v1)[129];
  v10 = *v1;
  (*v1)[130] = v0;

  if (v0)
  {
    v4 = v2[121];
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 72);
    swift_unknownObjectRelease();
    v5 = v2[89];
    v6 = v2[88];
    v7 = PairingCoordinator._preFetchMetadata();
  }

  else
  {
    v8 = v2[121];
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 72);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 67);
    v5 = v2[89];
    v6 = v2[88];
    v7 = PairingCoordinator._preFetchMetadata();
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

{
  v1 = v0[106];
  v2 = v0[105];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 62);
  v0[84] = 8;
  v10 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v0[131] = v4;
  *v4 = v0;
  v4[1] = PairingCoordinator._preFetchMetadata();
  v5 = v0[106];
  v6 = v0[87];
  v7 = v0[86];
  v8 = v0[85];

  return v10(v0 + 84, v8, v7);
}

{
  v2 = *(*v1 + 1048);
  v3 = *v1;
  v3[132] = v0;

  if (v0)
  {
    v4 = v3[89];
    v5 = v3[88];

    return MEMORY[0x2822009F8](PairingCoordinator._preFetchMetadata(), v5, v4);
  }

  else
  {
    v6 = swift_task_alloc();
    v3[133] = v6;
    *v6 = v3;
    v6[1] = PairingCoordinator._preFetchMetadata();
    v7 = v3[87];
    v8 = v3[86];
    v9 = v3[85];

    return PairingCoordinator._proceedWithConnection()(v9, v8);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 1064);
  v4 = *v1;
  *(*v1 + 1072) = v0;

  v5 = *(v2 + 712);
  v6 = *(v2 + 704);
  if (v0)
  {
    v7 = PairingCoordinator._preFetchMetadata();
  }

  else
  {
    v7 = PairingCoordinator._preFetchMetadata();
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 47);
  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)((v0 + 32), &_s13FindMyPairing12MetadataType_pSgMd, &_s13FindMyPairing12MetadataType_pSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[1];

  return v1();
}

{
  v1 = *(v0 + 1096);
  swift_beginAccess();
  v2 = *(v1 + 120);
  *(v0 + 640) = 3;
  v3 = swift_task_alloc();
  *(v3 + 16) = v0 + 640;

  *(v0 + 1121) = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v3, v2) & 1;

  v4 = *(v0 + 712);
  v5 = *(v0 + 704);

  return MEMORY[0x2822009F8](PairingCoordinator._preFetchMetadata(), v5, v4);
}

{
  v1 = *(v0 + 1080);
  MEMORY[0x24C236EC0](v1);
  v2 = swift_task_alloc();
  *(v0 + 1104) = v2;
  *v2 = v0;
  v2[1] = PairingCoordinator._preFetchMetadata();
  v3 = *(v0 + 1121);
  v4 = *(v0 + 696);
  v5 = *(v0 + 688);
  v6 = *(v0 + 680);
  v7 = MEMORY[0x277D84F90];

  return PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:)(v3, v1, v7, v6, v5);
}

{
  v2 = *v1;
  v3 = *(*v1 + 1104);
  v8 = *v1;
  *(*v1 + 1112) = v0;

  if (v0)
  {
    v4 = v2[89];
    v5 = v2[88];
    v6 = PairingCoordinator._preFetchMetadata();
  }

  else
  {
    MEMORY[0x24C236EB0](v2[135]);
    v4 = v2[89];
    v5 = v2[88];
    v6 = PairingCoordinator._preFetchMetadata();
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

{
  MEMORY[0x24C236EB0](*(v0 + 1080));
  v1 = *(v0 + 8);

  return v1();
}

{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[108];
  v0[135] = v1;
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v0[136] = __swift_project_value_buffer(v2, static Logger.pairingCoordinator);
  MEMORY[0x24C236EC0](v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    MEMORY[0x24C236EC0](v1);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&dword_24AF48000, v3, v4, "Failure in data pre-fetching %{public}@", v5, 0xCu);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v6, -1, -1);
    MEMORY[0x24C237030](v5, -1, -1);
  }

  v8 = v0[91];
  v9 = v0[90];
  v10 = v0[87];
  v11 = v0[86];
  v12 = v0[85];

  v13 = v9(v12, v11);
  v0[137] = v13;

  return MEMORY[0x2822009F8](PairingCoordinator._preFetchMetadata(), v13, 0);
}

{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[113];
  v0[135] = v1;
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v0[136] = __swift_project_value_buffer(v2, static Logger.pairingCoordinator);
  MEMORY[0x24C236EC0](v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    MEMORY[0x24C236EC0](v1);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&dword_24AF48000, v3, v4, "Failure in data pre-fetching %{public}@", v5, 0xCu);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v6, -1, -1);
    MEMORY[0x24C237030](v5, -1, -1);
  }

  v8 = v0[91];
  v9 = v0[90];
  v10 = v0[87];
  v11 = v0[86];
  v12 = v0[85];

  v13 = v9(v12, v11);
  v0[137] = v13;

  return MEMORY[0x2822009F8](PairingCoordinator._preFetchMetadata(), v13, 0);
}

{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 47);
  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)((v0 + 32), &_s13FindMyPairing12MetadataType_pSgMd, &_s13FindMyPairing12MetadataType_pSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[115];
  v0[135] = v1;
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v0[136] = __swift_project_value_buffer(v2, static Logger.pairingCoordinator);
  MEMORY[0x24C236EC0](v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    MEMORY[0x24C236EC0](v1);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&dword_24AF48000, v3, v4, "Failure in data pre-fetching %{public}@", v5, 0xCu);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v6, -1, -1);
    MEMORY[0x24C237030](v5, -1, -1);
  }

  v8 = v0[91];
  v9 = v0[90];
  v10 = v0[87];
  v11 = v0[86];
  v12 = v0[85];

  v13 = v9(v12, v11);
  v0[137] = v13;

  return MEMORY[0x2822009F8](PairingCoordinator._preFetchMetadata(), v13, 0);
}

{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 47);
  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)((v0 + 32), &_s13FindMyPairing12MetadataType_pSgMd, &_s13FindMyPairing12MetadataType_pSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[118];
  v0[135] = v1;
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v0[136] = __swift_project_value_buffer(v2, static Logger.pairingCoordinator);
  MEMORY[0x24C236EC0](v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    MEMORY[0x24C236EC0](v1);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&dword_24AF48000, v3, v4, "Failure in data pre-fetching %{public}@", v5, 0xCu);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v6, -1, -1);
    MEMORY[0x24C237030](v5, -1, -1);
  }

  v8 = v0[91];
  v9 = v0[90];
  v10 = v0[87];
  v11 = v0[86];
  v12 = v0[85];

  v13 = v9(v12, v11);
  v0[137] = v13;

  return MEMORY[0x2822009F8](PairingCoordinator._preFetchMetadata(), v13, 0);
}

{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 47);
  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)((v0 + 32), &_s13FindMyPairing12MetadataType_pSgMd, &_s13FindMyPairing12MetadataType_pSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[120];
  v0[135] = v1;
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v0[136] = __swift_project_value_buffer(v2, static Logger.pairingCoordinator);
  MEMORY[0x24C236EC0](v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    MEMORY[0x24C236EC0](v1);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&dword_24AF48000, v3, v4, "Failure in data pre-fetching %{public}@", v5, 0xCu);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v6, -1, -1);
    MEMORY[0x24C237030](v5, -1, -1);
  }

  v8 = v0[91];
  v9 = v0[90];
  v10 = v0[87];
  v11 = v0[86];
  v12 = v0[85];

  v13 = v9(v12, v11);
  v0[137] = v13;

  return MEMORY[0x2822009F8](PairingCoordinator._preFetchMetadata(), v13, 0);
}

{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 47);
  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)((v0 + 32), &_s13FindMyPairing12MetadataType_pSgMd, &_s13FindMyPairing12MetadataType_pSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 67);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 62);
  v1 = v0[130];
  v0[135] = v1;
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v0[136] = __swift_project_value_buffer(v2, static Logger.pairingCoordinator);
  MEMORY[0x24C236EC0](v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    MEMORY[0x24C236EC0](v1);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&dword_24AF48000, v3, v4, "Failure in data pre-fetching %{public}@", v5, 0xCu);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v6, -1, -1);
    MEMORY[0x24C237030](v5, -1, -1);
  }

  v8 = v0[91];
  v9 = v0[90];
  v10 = v0[87];
  v11 = v0[86];
  v12 = v0[85];

  v13 = v9(v12, v11);
  v0[137] = v13;

  return MEMORY[0x2822009F8](PairingCoordinator._preFetchMetadata(), v13, 0);
}

{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 47);
  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)((v0 + 32), &_s13FindMyPairing12MetadataType_pSgMd, &_s13FindMyPairing12MetadataType_pSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[132];
  v0[135] = v1;
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v0[136] = __swift_project_value_buffer(v2, static Logger.pairingCoordinator);
  MEMORY[0x24C236EC0](v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    MEMORY[0x24C236EC0](v1);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&dword_24AF48000, v3, v4, "Failure in data pre-fetching %{public}@", v5, 0xCu);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v6, -1, -1);
    MEMORY[0x24C237030](v5, -1, -1);
  }

  v8 = v0[91];
  v9 = v0[90];
  v10 = v0[87];
  v11 = v0[86];
  v12 = v0[85];

  v13 = v9(v12, v11);
  v0[137] = v13;

  return MEMORY[0x2822009F8](PairingCoordinator._preFetchMetadata(), v13, 0);
}

{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 47);
  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)((v0 + 32), &_s13FindMyPairing12MetadataType_pSgMd, &_s13FindMyPairing12MetadataType_pSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[134];
  v0[135] = v1;
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v0[136] = __swift_project_value_buffer(v2, static Logger.pairingCoordinator);
  MEMORY[0x24C236EC0](v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    MEMORY[0x24C236EC0](v1);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&dword_24AF48000, v3, v4, "Failure in data pre-fetching %{public}@", v5, 0xCu);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v6, -1, -1);
    MEMORY[0x24C237030](v5, -1, -1);
  }

  v8 = v0[91];
  v9 = v0[90];
  v10 = v0[87];
  v11 = v0[86];
  v12 = v0[85];

  v13 = v9(v12, v11);
  v0[137] = v13;

  return MEMORY[0x2822009F8](PairingCoordinator._preFetchMetadata(), v13, 0);
}

{
  v1 = v0[139];
  v2 = v0[136];
  MEMORY[0x24C236EB0](v0[135]);
  MEMORY[0x24C236EC0](v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[139];
  v7 = v0[135];
  if (v5)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    MEMORY[0x24C236EC0](v6);
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&dword_24AF48000, v3, v4, "Failure in end pairing %{public}@", v8, 0xCu);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v9, -1, -1);
    MEMORY[0x24C237030](v8, -1, -1);
    MEMORY[0x24C236EB0](v7);
    MEMORY[0x24C236EB0](v6);
  }

  else
  {
    MEMORY[0x24C236EB0](v0[135]);

    MEMORY[0x24C236EB0](v6);
  }

  v11 = v0[1];

  return v11();
}

uint64_t closure #1 in PairingCoordinator.handleUIFinish()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleUIFinish(), 0, 0);
}

uint64_t closure #1 in PairingCoordinator.handleUIFinish()()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 72) = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    *(v0 + 80) = v3;
    *v3 = v0;
    v3[1] = closure #1 in PairingCoordinator.handleUIFinish();
    v5 = *(v0 + 56);
    v4 = *(v0 + 64);

    return PairingCoordinator._interruptPairing()(v5, v4);
  }

  else
  {
    **(v0 + 40) = 0;
    v7 = *(v0 + 8);

    return v7();
  }
}

{
  v1 = *(*v0 + 80);
  v3 = *v0;

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleUIFinish(), 0, 0);
}

{
  v1 = *(v0 + 72);
  swift_unknownObjectRelease();
  **(v0 + 40) = 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t PairingCoordinator._interruptExecutorsPairing()(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = *(a2 + 8);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](PairingCoordinator._interruptExecutorsPairing(), v6, v5);
}