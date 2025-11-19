uint64_t partial apply for closure #33 in NightingaleDPFLRunner.run(task:useCase:context:)(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = v1[7];
  v12 = v1[8];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = partial apply for closure #34 in NightingaleDPFLRunner.run(task:useCase:context:);

  return closure #33 in NightingaleDPFLRunner.run(task:useCase:context:)(a1, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t partial apply for closure #22 in NightingaleDPFLRunner.run(task:useCase:context:)(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = protocol witness for PFLTaskRunner.resolveTask(for:taskPreferences:) in conformance NightingaleDPFLRunner;

  return closure #22 in NightingaleDPFLRunner.run(task:useCase:context:)(a1, v6, v7, v8, v9);
}

unint64_t lazy protocol witness table accessor for type HealthDataRawSampleType and conformance HealthDataRawSampleType()
{
  v2 = lazy protocol witness table cache variable for type HealthDataRawSampleType and conformance HealthDataRawSampleType;
  if (!lazy protocol witness table cache variable for type HealthDataRawSampleType and conformance HealthDataRawSampleType)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HealthDataRawSampleType and conformance HealthDataRawSampleType);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type HealthDataRawSampleType and conformance HealthDataRawSampleType;
  if (!lazy protocol witness table cache variable for type HealthDataRawSampleType and conformance HealthDataRawSampleType)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HealthDataRawSampleType and conformance HealthDataRawSampleType);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type HealthDataRawSampleType and conformance HealthDataRawSampleType;
  if (!lazy protocol witness table cache variable for type HealthDataRawSampleType and conformance HealthDataRawSampleType)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HealthDataRawSampleType and conformance HealthDataRawSampleType);
    return WitnessTable;
  }

  return v2;
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

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  v3 = result;
  if ((*(*(result[3] - 8) + 80) & 0x20000) != 0)
  {
    v1 = swift_allocBox();
    result = v2;
    *v3 = v1;
  }

  return result;
}

uint64_t partial apply for closure #18 in NightingaleDPFLRunner.run(task:useCase:context:)(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = partial apply for closure #34 in NightingaleDPFLRunner.run(task:useCase:context:);

  return closure #18 in NightingaleDPFLRunner.run(task:useCase:context:)(a1, v6, v7, v8);
}

unint64_t lazy protocol witness table accessor for type UInt32 and conformance UInt32()
{
  v2 = lazy protocol witness table cache variable for type UInt32 and conformance UInt32;
  if (!lazy protocol witness table cache variable for type UInt32 and conformance UInt32)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type UInt32 and conformance UInt32);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type UInt32 and conformance UInt32;
  if (!lazy protocol witness table cache variable for type UInt32 and conformance UInt32)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type UInt32 and conformance UInt32);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type PregnancySource and conformance PregnancySource()
{
  v2 = lazy protocol witness table cache variable for type PregnancySource and conformance PregnancySource;
  if (!lazy protocol witness table cache variable for type PregnancySource and conformance PregnancySource)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type PregnancySource and conformance PregnancySource);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type PregnancySource and conformance PregnancySource;
  if (!lazy protocol witness table cache variable for type PregnancySource and conformance PregnancySource)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type PregnancySource and conformance PregnancySource);
    return WitnessTable;
  }

  return v2;
}

uint64_t createStorage<A>(capacity:type:)(uint64_t a1)
{
  if (a1)
  {
    return static UnsafeMutablePointer.allocate(capacity:)();
  }

  else
  {
    return 0;
  }
}

uint64_t serialize(_:at:)(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

unint64_t lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [(_:_:_:)] and conformance [A];
  if (!lazy protocol witness table cache variable for type [(_:_:_:)] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [(_:_:_:)] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t destroyStorage<A>(_:count:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  if (result)
  {
    UnsafeMutablePointer.deinitialize(count:)();
    return MEMORY[0x25F8899D0](v3, a3);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [String] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [String] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [String] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t *partial apply for closure #7 in NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:)@<X0>(float *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);
  v9 = *(v1 + 72);
  v10 = *(v1 + 80);
  v11 = *(v1 + 88);
  v12 = *(v1 + 96);
  v27 = *(v1 + 112);
  v28 = *(v1 + 120);
  v29 = *(v1 + 128);
  v30 = *(v1 + 136);
  v31 = *(v1 + 144);
  v32 = *(v1 + 152);
  v33 = *(v1 + 160);
  v13 = *(v1 + 168);
  v14 = *(v1 + 176);
  v15 = *(v1 + 184);
  v16 = *(v1 + 192);
  v17 = *(v1 + 200);
  v18 = *(v1 + 208);
  v19 = *(v1 + 216);
  v20 = *(v1 + 224);
  v21 = *(v1 + 232);
  v22 = *(v1 + 240);
  v23 = *(v1 + 248);
  v24 = *(v1 + 256);
  v25 = *(v1 + 264);
  v34[0] = *(v1 + 104);
  v34[1] = v27;
  v34[2] = v28;
  v34[3] = v29;
  v34[4] = v30;
  v34[5] = v31;
  v34[6] = v32;
  v34[7] = v33;
  v34[8] = v13;
  v34[9] = v14;
  v34[10] = v15;
  v34[11] = v16;
  v34[12] = v17;
  v34[13] = v18;
  v34[14] = v19;
  v34[15] = v20;
  v34[16] = v21;
  v34[17] = v22;
  v34[18] = v23;
  v34[19] = v24;
  v34[20] = v25;
  return closure #7 in NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:)(v2 & 1, v3, v4, v5, v6, v7, v8, v9, a1, v10, v11, v12, v34, *(v1 + 272), *(v1 + 280), *(v1 + 288), *(v1 + 296));
}

uint64_t outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  v3 = (a2 >> 62) & 3;
  if (v3 == 1)
  {
  }

  if (v3 == 2)
  {
  }

  return result;
}

uint64_t outlined copy of Data._Representation(uint64_t a1, unint64_t a2)
{
  v3 = (a2 >> 62) & 3;
  if (v3 == 1)
  {
  }

  if (v3 == 2)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EspressoFunction and conformance EspressoFunction()
{
  v2 = lazy protocol witness table cache variable for type EspressoFunction and conformance EspressoFunction;
  if (!lazy protocol witness table cache variable for type EspressoFunction and conformance EspressoFunction)
  {
    type metadata accessor for EspressoFunction();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type EspressoFunction and conformance EspressoFunction);
    return WitnessTable;
  }

  return v2;
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a3;
  v7[1] = a4;
  v8 = *(a3 - 8);
  v9 = a3 - 8;
  v7[0] = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](a1);
  v10 = v7 - v7[0];
  v4();
  v12 = dispatch thunk of CustomStringConvertible.description.getter();
  v13 = v5;
  (*(v8 + 8))(v10, v11);
  return v12;
}

uint64_t _ss12_ArrayBufferV010withUnsafeB7Pointeryqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF@<X0>(uint64_t (*a1)(unint64_t, uint64_t, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v23 = a9;
  v24 = a1;
  v25 = a2;
  v26 = a3;
  v27 = a4;
  v28 = a5;
  v29 = a6;
  v30 = a7;
  v32 = a8;
  v33 = "Fatal error";
  v34 = "UnsafeBufferPointer with negative count";
  v35 = "Swift/UnsafeBufferPointer.swift";
  v44 = a4;
  v43 = a5;
  v42 = a6;
  v36 = *(a6 - 8);
  v37 = a6 - 8;
  v38 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1);
  v39 = v13 - v38;
  v40 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v13 - v38);
  v41 = v13 - v40;
  if ((_swift_isClassOrObjCExistentialType() & 1) != 0 && ((v26 & 0x4000000000000000) != 0 || v26 < 0))
  {
    v10 = v31;
    result = _ss12_ArrayBufferV010withUnsafeB17Pointer_nonNativeyqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(v24, v26, v27, v28, v29, v41, v23);
    v22 = v10;
    if (v10)
    {
      return (*(v36 + 32))(v32, v41, v29);
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    if (_swift_isClassOrObjCExistentialType())
    {
      v20 = v26 & 0xFFFFFFFFFFFFFF8;
    }

    else
    {
      v20 = v26;
    }

    v19 = v20 + ((*(*(v27 - 8) + 80) + 32) & ~*(*(v27 - 8) + 80));
    if ((_swift_isClassOrObjCExistentialType() & 1) != 0 && ((v26 & 0x4000000000000000) != 0 || v26 < 0))
    {
      v15 = _ArrayBuffer._nonNative.getter();
      v16 = MEMORY[0x25F889D20]();
      swift_unknownObjectRelease();
      v17 = v16;
    }

    else
    {
      if (_swift_isClassOrObjCExistentialType())
      {
        v18 = v26 & 0xFFFFFFFFFFFFFF8;
      }

      else
      {
        v18 = v26;
      }

      v17 = *(v18 + 16);
    }

    v14 = v17;
    if (v17 < 0)
    {
      result = _fatalErrorMessage(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
      v12 = v31;
      v24(v19, v14, v39);
      v13[1] = v12;
      if (v12)
      {
        return (*(v36 + 32))(v32, v39, v29);
      }

      else
      {
        result = 0;
        v21 = 0;
      }
    }
  }

  return result;
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)(void (*a1)(void))
{
  a1();
  v2 = _swift_stdlib_bridgeErrorToNSError();
  MEMORY[0x277D82BE0](v2);
  swift_unknownObjectRelease();
  return v2;
}

uint64_t _ss12_ArrayBufferV010withUnsafeB17Pointer_nonNativeyqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF@<X0>(uint64_t (*a1)(unint64_t, uint64_t, char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v19 = a7;
  v23 = a1;
  v16 = a3;
  v11 = a5;
  v12 = a6;
  v27 = a3;
  v26 = a4;
  v25 = a5;
  v13 = *(a5 - 8);
  v14 = a5 - 8;
  v15 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x28223BE20](a2);
  v22 = &v10 - v15;
  AssociatedObject = _ArrayBuffer.getOrAllocateAssociatedObjectBuffer()(v7);
  v18 = (*(*(v16 - 8) + 80) + 32) & ~*(*(v16 - 8) + 80);
  v20 = *(AssociatedObject + 16);

  v8 = v21;
  result = v23(AssociatedObject + v18, v20, v22);
  v24 = v8;
  if (v8)
  {
    return (*(v13 + 32))(v12, v22, v11);
  }

  return result;
}

uint64_t _ArrayBuffer.getOrAllocateAssociatedObjectBuffer()(unint64_t a1)
{
  AssociatedObjectPtr = getGetAssociatedObjectPtr();
  if ((a1 & 0x8000000000000000) != 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v6 = AssociatedObjectPtr();
  if (v6)
  {

    return v6;
  }

  else
  {
    objc_sync_enter(v7);
    v10 = getGetAssociatedObjectPtr();
    v5 = v10(v7, MEMORY[0x277D84F90]);
    if (v5)
    {

      v4 = v5;
    }

    else
    {

      type metadata accessor for _ArrayBuffer();
      swift_getWitnessTable();
      v3 = _copyCollectionToContiguousArray<A>(_:)();
      outlined destroy of [(start: UInt32, end: UInt32)]();

      SetAssociatedObjectPtr = getSetAssociatedObjectPtr();
      SetAssociatedObjectPtr(v7, MEMORY[0x277D84F90], v3, 1);
      v4 = v3;
    }

    objc_sync_exit(v7);

    return v4;
  }
}

uint64_t partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)()
{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)(*(v0 + 16));
}

uint64_t closure #1 in OSLogArguments.append(_:)(uint64_t *a1, uint64_t **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v9 = a4();
  v8 = *a1;
  MEMORY[0x277D82BE0](v9);
  UnsafeMutableRawBufferPointer.copyMemory(from:)();
  if (v9)
  {
    MEMORY[0x277D82BD8](v9);
  }

  *a1 = v8 + 8;
  v5 = *a2;
  if (!*a2)
  {
    return MEMORY[0x277D82BD8](v9);
  }

  MEMORY[0x277D82BE0](v9);
  *v5 = v9;
  result = MEMORY[0x277D82BD8](v9);
  *a2 = v5 + 1;
  return result;
}

uint64_t outlined init with copy of Any?(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    v2 = *(a1 + 24);
    *(a2 + 24) = v2;
    (**(v2 - 8))();
  }

  else
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
  }

  return a2;
}

unint64_t type metadata accessor for NSNumber()
{
  v2 = lazy cache variable for type metadata for NSNumber;
  if (!lazy cache variable for type metadata for NSNumber)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for NSNumber);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type [NSNumber] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [NSNumber] and conformance [A];
  if (!lazy protocol witness table cache variable for type [NSNumber] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo8NSNumberCGMd);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [NSNumber] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t partial apply for closure #1 in NightingaleDPFLRunner.runDemographics(hyperParams:modelPath:pregnancies:historicalPeriods:swtAvailabilityStats:numberOfSlices:age:earliestPregrancyLMP:latestPregrancyEndDay:existingMetrics:)@<X0>(void *a1@<X8>)
{
  LODWORD(v7) = *(v1 + 16);
  BYTE4(v7) = *(v1 + 20) & 1;
  LODWORD(v8) = *(v1 + 24);
  BYTE4(v8) = *(v1 + 28) & 1;
  LODWORD(v6) = *(v1 + 64);
  BYTE4(v6) = *(v1 + 68) & 1;
  LODWORD(v5) = *(v1 + 76);
  BYTE4(v5) = *(v1 + 80) & 1;
  LODWORD(v4) = *(v1 + 92);
  BYTE4(v4) = *(v1 + 96) & 1;
  LODWORD(v3) = *(v1 + 108);
  BYTE4(v3) = *(v1 + 112) & 1;
  return closure #1 in NightingaleDPFLRunner.runDemographics(hyperParams:modelPath:pregnancies:historicalPeriods:swtAvailabilityStats:numberOfSlices:age:earliestPregrancyLMP:latestPregrancyEndDay:existingMetrics:)(v7, v8, *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), v6, v5, a1, *(v1 + 72), *(v1 + 84), *(v1 + 88), *(v1 + 100), *(v1 + 104), *(v1 + 116), *(v1 + 120), v4, v3);
}

void *partial apply for closure #6 in NightingaleDPFLRunner.runEvals(evalModels:task:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  v8 = *(v0 + 80);
  v9 = *(v0 + 88);
  v10 = *(v0 + 96);
  v11 = *(v0 + 104);
  v12 = *(v0 + 112);
  v13 = *(v0 + 120);
  v14 = *(v0 + 128);
  v15 = *(v0 + 136);
  v16 = *(v0 + 144);
  v17 = *(v0 + 152);
  v18 = *(v0 + 160);
  v19 = *(v0 + 168);
  v20 = *(v0 + 176);
  v21 = *(v0 + 184);
  v22 = *(v0 + 192);
  v23 = *(v0 + 200);
  v25[0] = *(v0 + 40);
  v25[1] = v4;
  v25[2] = v5;
  v25[3] = v6;
  v25[4] = v7;
  v25[5] = v8;
  v25[6] = v9;
  v25[7] = v10;
  v25[8] = v11;
  v25[9] = v12;
  v25[10] = v13;
  v25[11] = v14;
  v25[12] = v15;
  v25[13] = v16;
  v25[14] = v17;
  v25[15] = v18;
  v25[16] = v19;
  v25[17] = v20;
  v25[18] = v21;
  v25[19] = v22;
  v25[20] = v23;
  return closure #6 in NightingaleDPFLRunner.runEvals(evalModels:task:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:)(v1, v2, v3, v25, *(v0 + 208), *(v0 + 216), *(v0 + 224), *(v0 + 232), *(v0 + 240), *(v0 + 248), *(v0 + 256), *(v0 + 264));
}

unint64_t lazy protocol witness table accessor for type [HyperParams] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [HyperParams] and conformance [A];
  if (!lazy protocol witness table cache variable for type [HyperParams] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19NightingaleTraining11HyperParamsCGMd);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [HyperParams] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type Date and conformance Date()
{
  v2 = lazy protocol witness table cache variable for type Date and conformance Date;
  if (!lazy protocol witness table cache variable for type Date and conformance Date)
  {
    type metadata accessor for Date();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Date and conformance Date);
    return WitnessTable;
  }

  return v2;
}

uint64_t outlined init with copy of (lower: Date, upper: Date)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 16);
  v6(a2, a1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV5lower_AC5uppertMd);
  (v6)(a2 + *(v2 + 48), a1 + *(v2 + 48), v5);
  return a2;
}

uint64_t outlined init with take of (lower: Date, upper: Date)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 32);
  v6(a2, a1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV5lower_AC5uppertMd);
  (v6)(a2 + *(v2 + 48), a1 + *(v2 + 48), v5);
  return a2;
}

uint64_t outlined destroy of ClosedRange<Date>(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(*(v3 - 8) + 8);
  v4(a1);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation4DateVGMd);
  (v4)(a1 + *(v1 + 36), v3);
  return a1;
}

uint64_t partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining9Pregnancy_pSgGMd);
  v1 = lazy protocol witness table accessor for type [Pregnancy?] and conformance [A]();

  return implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)(v5, v3, v4, v1);
}

unint64_t lazy protocol witness table accessor for type [Pregnancy?] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [Pregnancy?] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Pregnancy?] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19NightingaleTraining9Pregnancy_pSgGMd);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [Pregnancy?] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [Pregnancy?] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Pregnancy?] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19NightingaleTraining9Pregnancy_pSgGMd);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [Pregnancy?] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [Pregnancy?] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Pregnancy?] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19NightingaleTraining9Pregnancy_pSgGMd);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [Pregnancy?] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t getEnumTagSinglePayload for NightingaleDReachLocation(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xF2)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 13) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 242;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 14;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for NightingaleDReachLocation(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xF2)
  {
    v5 = ((a3 + 13) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xF2)
  {
    v4 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 13;
    }
  }

  return result;
}

uint64_t dispatch thunk of NightingaleDPFLRunner.isDataAvailable(taskPreferences:)(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = (*(*v1 + 200) + **(*v1 + 200));
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = protocol witness for PFLTaskRunner.isDataAvailable(taskPreferences:) in conformance NightingaleDPFLRunner;

  return v6(a1);
}

uint64_t dispatch thunk of NightingaleDPFLRunner.run(task:useCase:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v5;
  *(v5 + 16) = v5;
  v12 = (*(*v4 + 216) + **(*v4 + 216));
  v6 = swift_task_alloc();
  *(v8 + 24) = v6;
  *v6 = *(v8 + 16);
  v6[1] = dispatch thunk of NightingaleDPFLRunner.run(task:useCase:context:);

  return v12(a1, a2, a3, a4);
}

uint64_t dispatch thunk of NightingaleDPFLRunner.run(task:useCase:context:)(uint64_t a1)
{
  v4 = *v1;
  *(v4 + 16) = *v1;

  v2 = *(*(v4 + 16) + 8);

  return v2(a1);
}

void *outlined init with copy of Pregnancy?(void *a1, void *a2)
{
  if (a1[3])
  {
    v2 = a1[3];
    a2[3] = v2;
    a2[4] = a1[4];
    (**(v2 - 8))();
  }

  else
  {
    memcpy(a2, a1, 0x28uLL);
  }

  return a2;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  (**(v2 - 8))(a2);
  return a2;
}

unint64_t lazy protocol witness table accessor for type [[String : [Float]]] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [[String : [Float]]] and conformance [A];
  if (!lazy protocol witness table cache variable for type [[String : [Float]]] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySDySSSaySfGGGMd);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [[String : [Float]]] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type [Float] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [Float] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Float] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySfGMd);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [Float] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [Float] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Float] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySfGMd);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [Float] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [Float] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Float] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySfGMd);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [Float] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [Float] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Float] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySfGMd);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [Float] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [Float] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Float] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySfGMd);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [Float] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

void *outlined init with copy of [Float](uint64_t *a1, void *a2)
{
  v4 = *a1;

  result = a2;
  *a2 = v4;
  return result;
}

uint64_t partial apply for closure #1 in closure #18 in NightingaleDPFLRunner.run(task:useCase:context:)(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = partial apply for closure #34 in NightingaleDPFLRunner.run(task:useCase:context:);

  return closure #1 in closure #18 in NightingaleDPFLRunner.run(task:useCase:context:)(a1, v6, v7);
}

uint64_t partial apply for closure #1 in closure #33 in NightingaleDPFLRunner.run(task:useCase:context:)(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = partial apply for closure #34 in NightingaleDPFLRunner.run(task:useCase:context:);

  return closure #1 in closure #33 in NightingaleDPFLRunner.run(task:useCase:context:)(a1, v6, v7, v8);
}

uint64_t partial apply for closure #1 in closure #34 in NightingaleDPFLRunner.run(task:useCase:context:)(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = partial apply for closure #34 in NightingaleDPFLRunner.run(task:useCase:context:);

  return closure #1 in closure #34 in NightingaleDPFLRunner.run(task:useCase:context:)(a1, v6, v7, v8);
}

uint64_t partial apply for closure #1 in closure #35 in NightingaleDPFLRunner.run(task:useCase:context:)(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 28);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = protocol witness for PFLTaskRunner.resolveTask(for:taskPreferences:) in conformance NightingaleDPFLRunner;

  return closure #1 in closure #35 in NightingaleDPFLRunner.run(task:useCase:context:)(a1, v6, v7, v8);
}

uint64_t partial apply for closure #3 in closure #38 in NightingaleDPFLRunner.run(task:useCase:context:)(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = protocol witness for PFLTaskRunner.resolveTask(for:taskPreferences:) in conformance NightingaleDPFLRunner;

  return closure #3 in closure #38 in NightingaleDPFLRunner.run(task:useCase:context:)(a1, v6, v7, v8);
}

uint64_t partial apply for closure #1 in closure #3 in NightingaleDPFLRunner.run(task:useCase:context:)(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = protocol witness for PFLTaskRunner.resolveTask(for:taskPreferences:) in conformance NightingaleDPFLRunner;

  return closure #1 in closure #3 in NightingaleDPFLRunner.run(task:useCase:context:)(a1, v6, v7, v8, v9);
}

uint64_t HealthDataFlowSamples.sampleType.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 16);
  swift_endAccess();
  return v2;
}

uint64_t HealthDataFlowSamples.sampleType.setter(char a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
  return swift_endAccess();
}

uint64_t HealthDataFlowSamples.results.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 24);

  swift_endAccess();
  return v2;
}

uint64_t HealthDataFlowSamples.results.setter(uint64_t a1)
{

  swift_beginAccess();
  *(v1 + 24) = a1;

  swift_endAccess();
}

uint64_t one-time initialization function for mapping()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_s5UInt8VtMd);
  _allocateUninitializedArray<A>(_:)();
  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 16) = 1;
  *(v0 + 24) = 2;
  *(v0 + 32) = 2;
  *(v0 + 40) = 2;
  *(v0 + 48) = 3;
  *(v0 + 56) = 2;
  *(v0 + 64) = 4;
  *(v0 + 72) = 3;
  *(v0 + 80) = 5;
  *(v0 + 88) = 0;
  _finalizeUninitializedArray<A>(_:)();
  result = Dictionary.init(dictionaryLiteral:)();
  static HealthDataFlowSamples.mapping = result;
  return result;
}

uint64_t *HealthDataFlowSamples.mapping.unsafeMutableAddressor()
{
  if (one-time initialization token for mapping != -1)
  {
    swift_once();
  }

  return &static HealthDataFlowSamples.mapping;
}

uint64_t static HealthDataFlowSamples.mapping.getter()
{
  v1 = *HealthDataFlowSamples.mapping.unsafeMutableAddressor();

  return v1;
}

uint64_t HealthDataFlowSamples.init(sampleType:)(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32V_s5UInt8VtMd);
  _allocateUninitializedArray<A>(_:)();
  v1 = Dictionary.init(dictionaryLiteral:)();
  result = v4;
  *(v4 + 24) = v1;
  *(v4 + 16) = a1;
  return result;
}

uint64_t HealthDataFlowSamples.result.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 24);

  swift_endAccess();
  return v2;
}

uint64_t HealthDataFlowSamples.append(_:)(uint64_t a1)
{
  v12 = a1;
  v35 = 0;
  v34 = 0;
  v31 = 0;
  *&v30[1] = 0;
  v14 = 0;
  v19 = type metadata accessor for Date();
  v17 = *(v19 - 8);
  v18 = v19 - 8;
  v13 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v20 = v5 - v13;
  v35 = MEMORY[0x28223BE20](v12);
  v34 = v1;
  v15 = v33;
  outlined init with copy of Any(v35, v33);
  type metadata accessor for HKCategorySample();
  swift_dynamicCast();
  v16 = v32;
  v31 = v32;
  *&v2 = MEMORY[0x277D82BE0](v32).n128_u64[0];
  v22 = [v16 startDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  MEMORY[0x277D82BD8](v16);
  *&v3 = Date.toJulianDay()();
  *&v30[5] = v3;
  v21 = v3;
  v23 = BYTE4(v3);
  (*(v17 + 8))(v20, v19);
  MEMORY[0x277D82BD8](v22);
  if ((v23 & 1) == 0)
  {
    v11 = v21;
    v7 = v21;
    *&v30[1] = v21;
    v8 = *HealthDataFlowSamples.mapping.unsafeMutableAddressor();

    v29 = [v16 value];
    MEMORY[0x25F8891D0](v30, &v29, v8, MEMORY[0x277D83B88], MEMORY[0x277D84B78], MEMORY[0x277D83B98]);
    v9 = LOBYTE(v30[0]);
    v10 = HIBYTE(v30[0]);

    v27 = v9;
    v28 = v10 & 1;
    if (v10)
    {
      v6 = 0;
    }

    else
    {
      v6 = v27;
    }

    v5[1] = v26;
    v26[0] = v6;
    v26[1] = 0;
    v5[0] = &v25;
    v25 = v7;
    v5[2] = &v24;
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt32Vs5UInt8VGMd);
    Dictionary.subscript.setter();
    swift_endAccess();
  }

  return MEMORY[0x277D82BD8](v16);
}

uint64_t protocol witness for HealthDataQueryResult.result.getter in conformance HealthDataFlowSamples@<X0>(uint64_t *a1@<X8>)
{
  result = HealthDataFlowSamples.result.getter();
  *a1 = result;
  return result;
}

uint64_t HealthDataUInt8Samples.append(_:)(uint64_t a1)
{
  v14 = a1;
  v10 = "Fatal error";
  v11 = "Negative value is not representable";
  v12 = "Swift/Integers.swift";
  v13 = "Not enough bits to represent the passed value";
  v35 = 0;
  v34 = 0;
  v31 = 0;
  v29 = 0;
  v16 = 0;
  v21 = type metadata accessor for Date();
  v19 = *(v21 - 8);
  v20 = v21 - 8;
  v15 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v22 = v6 - v15;
  v35 = MEMORY[0x28223BE20](v14);
  v34 = v1;
  v17 = v33;
  outlined init with copy of Any(v35, v33);
  type metadata accessor for HKCategorySample();
  swift_dynamicCast();
  v18 = v32;
  v31 = v32;
  *&v2 = MEMORY[0x277D82BE0](v32).n128_u64[0];
  v24 = [v18 startDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  MEMORY[0x277D82BD8](v18);
  *&v3 = Date.toJulianDay()();
  v30 = v3;
  v23 = v3;
  v25 = BYTE4(v3);
  (*(v19 + 8))(v22, v21);
  MEMORY[0x277D82BD8](v24);
  if ((v25 & 1) == 0)
  {
    v9 = v23;
    v7 = v23;
    v29 = v23;
    v4 = [v18 value];
    v8 = v4;
    if (v4 < 0)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    if (v8 > 255)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
      v6[2] = &v28;
      v28 = v8;
      v6[1] = &v27;
      v27 = v7;
      v6[3] = &v26;
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt32Vs5UInt8VGMd);
      Dictionary.subscript.setter();
      swift_endAccess();
    }
  }

  return MEMORY[0x277D82BD8](v18);
}

uint64_t HealthDataBoolSamples.init(sampleType:)(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32V_SbtMd);
  _allocateUninitializedArray<A>(_:)();
  v1 = Dictionary.init(dictionaryLiteral:)();
  result = v4;
  *(v4 + 24) = v1;
  *(v4 + 16) = a1;
  return result;
}

uint64_t HealthDataBoolSamples.append(_:)(uint64_t a1)
{
  v7 = a1;
  v28 = 0;
  v27 = 0;
  v24 = 0;
  v22 = 0;
  v9 = 0;
  v14 = type metadata accessor for Date();
  v12 = *(v14 - 8);
  v13 = v14 - 8;
  v8 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = v5 - v8;
  v28 = MEMORY[0x28223BE20](v7);
  v27 = v1;
  v10 = v26;
  outlined init with copy of Any(v28, v26);
  type metadata accessor for HKCategorySample();
  swift_dynamicCast();
  v11 = v25;
  v24 = v25;
  *&v2 = MEMORY[0x277D82BE0](v25).n128_u64[0];
  v17 = [v11 startDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  MEMORY[0x277D82BD8](v11);
  *&v3 = Date.toJulianDay()();
  v23 = v3;
  v16 = v3;
  v18 = BYTE4(v3);
  (*(v12 + 8))(v15, v14);
  MEMORY[0x277D82BD8](v17);
  if ((v18 & 1) == 0)
  {
    v6 = v16;
    v22 = v16;
    v5[2] = &v21;
    v21 = 1;
    v5[1] = &v20;
    v20 = v16;
    v5[3] = &v19;
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt32VSbGMd);
    Dictionary.subscript.setter();
    swift_endAccess();
  }

  return MEMORY[0x277D82BD8](v11);
}

uint64_t HealthDataCycleFactorSamples.init(sampleType:)(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5UInt8V_Says6UInt32V_ADtGtMd);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt32V_ABtGMd);
  v1 = Dictionary.init(dictionaryLiteral:)();
  result = v4;
  *(v4 + 24) = v1;
  *(v4 + 16) = a1;
  return result;
}

uint64_t HealthDataCycleFactorSamples.append(_:)(uint64_t a1)
{
  v62 = a1;
  v97 = 0;
  v96 = 0;
  v93 = 0;
  v91 = 0;
  v89 = 0;
  v86 = 0;
  v76 = 0;
  v64 = 0;
  v69 = type metadata accessor for Date();
  v67 = *(v69 - 8);
  v68 = v69 - 8;
  v63 = (*(v67 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v70 = v16 - v63;
  v97 = MEMORY[0x28223BE20](v62);
  v96 = v1;
  v65 = v95;
  outlined init with copy of Any(v97, v95);
  type metadata accessor for HKSample();
  swift_dynamicCast();
  v66 = v94;
  v93 = v94;
  v74 = [v94 startDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  *&v2 = Date.toJulianDay()();
  v92 = v2;
  v71 = v2;
  v75 = BYTE4(v2);
  v72 = *(v67 + 8);
  v73 = v67 + 8;
  v72(v70, v69);
  MEMORY[0x277D82BD8](v74);
  if ((v75 & 1) == 0)
  {
    v60 = v71;
    v56 = v71;
    v91 = v71;
    v58 = [v66 endDate];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    *&v3 = Date.toJulianDay()();
    v90 = v3;
    v57 = v3;
    v59 = BYTE4(v3);
    v72(v70, v69);
    MEMORY[0x277D82BD8](v58);
    if ((v59 & 1) == 0)
    {
      v55 = v57;
      v47 = v57;
      v89 = v57;
      v87 = 0;
      v88 = 1;
      v48 = 0;
      v51 = type metadata accessor for NSObject();
      v53 = [v66 sampleType];
      v49 = type metadata accessor for HKCategoryType();
      v50 = *MEMORY[0x277CCBA68];
      v4 = MEMORY[0x277D82BE0](v50);
      v52 = MEMORY[0x25F889940](v50, v4);
      v54 = static NSObject.== infix(_:_:)();
      MEMORY[0x277D82BD8](v52);
      MEMORY[0x277D82BD8](v53);
      if (v54)
      {
        v87 = 0;
        v88 = 0;
      }

      else
      {
        v45 = [v66 sampleType];
        v43 = *MEMORY[0x277CCB9F0];
        v5 = MEMORY[0x277D82BE0](v43);
        v44 = MEMORY[0x25F889940](v43, v5);
        v46 = static NSObject.== infix(_:_:)();
        MEMORY[0x277D82BD8](v44);
        MEMORY[0x277D82BD8](v45);
        if (v46)
        {
          v87 = 1;
          v88 = 0;
        }

        else
        {
          v41 = [v66 sampleType];
          v39 = *MEMORY[0x277CCB938];
          v6 = MEMORY[0x277D82BE0](v39);
          v40 = MEMORY[0x25F889940](v39, v6);
          v42 = static NSObject.== infix(_:_:)();
          MEMORY[0x277D82BD8](v40);
          MEMORY[0x277D82BD8](v41);
          if (v42)
          {
            MEMORY[0x277D82BE0](v66);
            objc_opt_self();
            v37 = swift_dynamicCastObjCClassUnconditional();
            v76 = v37;
            v38 = [v37 value];
            _HKPrivatePregnancyStartDateSource.rawValue.getter();
            if (v7 == v38)
            {
              v87 = 2;
              v88 = 0;
            }

            else
            {
              _HKPrivatePregnancyStartDateSource.rawValue.getter();
              if (v8 == v38)
              {
                v87 = 3;
                v88 = 0;
              }

              else
              {
                _HKPrivatePregnancyStartDateSource.rawValue.getter();
                if (v9 == v38)
                {
                  v87 = 4;
                  v88 = 0;
                }

                else
                {
                  _HKPrivatePregnancyStartDateSource.rawValue.getter();
                  if (v10 == v38)
                  {
                    v87 = 5;
                    v88 = 0;
                  }

                  else
                  {
                    _HKPrivatePregnancyStartDateSource.rawValue.getter();
                    if (v11 == v38)
                    {
                      v87 = 6;
                      v88 = 0;
                    }

                    else
                    {
                      _HKPrivatePregnancyStartDateSource.rawValue.getter();
                      if (v12 == v38)
                      {
                        v87 = 7;
                      }

                      else
                      {
                        _HKPrivatePregnancyStartDateSource.rawValue.getter();
                        v87 = 8;
                      }

                      v88 = 0;
                    }
                  }
                }
              }
            }

            MEMORY[0x277D82BD8](v37);
          }
        }
      }

      if (v88)
      {
        v35 = 0;
        v36 = 1;
      }

      else
      {
        v35 = NgtMenstrualAlgorithmsPhase.rawValue.getter(v87);
        v36 = 0;
      }

      v34 = v35;
      if ((v36 & 1) == 0)
      {
        v33 = v34;
        v28 = v34;
        v86 = v34;
        v24 = &v85;
        swift_beginAccess();
        v26 = *(v61 + 24);

        swift_endAccess();
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt32V_ABtGMd);

        v31 = &v84;
        v84 = v27;
        v30 = &v83;
        v83 = v28;
        v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSD4KeysVys5UInt8VSays6UInt32V_AFtG_GMd);
        lazy protocol witness table accessor for type [UInt8 : [(UInt32, UInt32)]].Keys and conformance [A : B].Keys();
        v32 = Sequence<>.contains(_:)();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        if ((v32 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32V_ABtMd);
          v13 = _allocateUninitializedArray<A>(_:)();
          v22 = &v79;
          v79 = v13;
          v21 = &v78;
          v78 = v28;
          v23 = &v77;
          swift_beginAccess();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys5UInt8VSays6UInt32V_ADtGGMd);
          Dictionary.subscript.setter();
          swift_endAccess();
        }

        v17 = HealthDataFlowSamples.results.modify();
        v18 = &v82;
        v82 = v28;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys5UInt8VSays6UInt32V_ADtGGMd);
        v19 = Dictionary.subscript.modify();
        v20 = v14;
        if (*v14)
        {
          v80 = v56;
          v81 = v47;
          Array.append(_:)();
          v16[1] = 0;
        }

        else
        {
          v16[0] = 0;
        }

        v19();
        v17();
      }
    }
  }

  return MEMORY[0x277D82BD8](v66);
}

uint64_t HealthDataSWTSamples.init(sampleType:)(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32V_Sf_SSttMd);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSf_SStMd);
  v1 = Dictionary.init(dictionaryLiteral:)();
  result = v4;
  *(v4 + 24) = v1;
  *(v4 + 16) = a1;
  return result;
}

uint64_t HealthDataSWTSamples.append(_:)(uint64_t a1)
{
  v23 = a1;
  v44 = 0;
  v43 = 0;
  v40 = 0;
  v38 = 0;
  v25 = 0;
  v30 = type metadata accessor for Date();
  v28 = *(v30 - 8);
  v29 = v30 - 8;
  v24 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v31 = &v9 - v24;
  v44 = MEMORY[0x28223BE20](v23);
  v43 = v1;
  v26 = v42;
  outlined init with copy of Any(v44, v42);
  type metadata accessor for HKQuantitySample();
  swift_dynamicCast();
  v27 = v41;
  v40 = v41;
  *&v2 = MEMORY[0x277D82BE0](v41).n128_u64[0];
  v33 = [v27 startDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  MEMORY[0x277D82BD8](v27);
  *&v3 = Date.toJulianDay()();
  v39 = v3;
  v32 = v3;
  v34 = BYTE4(v3);
  (*(v28 + 8))(v31, v30);
  MEMORY[0x277D82BD8](v33);
  if ((v34 & 1) == 0)
  {
    v22 = v32;
    v17 = v32;
    v38 = v32;
    v10 = [v27 quantity];
    v9 = [objc_opt_self() degreeCelsiusUnit];
    [v10 doubleValueForUnit_];
    v11 = v4;
    MEMORY[0x277D82BD8](v9);
    v5 = MEMORY[0x277D82BD8](v10);
    v14 = MEMORY[0x25F8897B0](v5, v11);
    *&v6 = MEMORY[0x277D82BE0](v27).n128_u64[0];
    v12 = [v27 sourceRevision];
    MEMORY[0x277D82BD8](v27);
    v13 = [v12 source];
    MEMORY[0x277D82BD8](v12);
    v21 = [v13 bundleIdentifier];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v7;
    MEMORY[0x277D82BD8](v13);
    v19 = v37;
    v37[0] = LODWORD(v14);
    v37[1] = v15;
    v37[2] = v16;
    v18 = &v36;
    v36 = v17;
    v20 = &v35;
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt32VSf_SStGMd);
    Dictionary.subscript.setter();
    swift_endAccess();
    MEMORY[0x277D82BD8](v21);
  }

  return MEMORY[0x277D82BD8](v27);
}

uint64_t HealthDataQuantitySamples.unit.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 32);
  MEMORY[0x277D82BE0](v2);
  swift_endAccess();
  return v2;
}

uint64_t HealthDataQuantitySamples.unit.setter(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  swift_beginAccess();
  v2 = *(v1 + 32);
  *(v1 + 32) = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  return MEMORY[0x277D82BD8](a1);
}

uint64_t HealthDataQuantitySamples.init(sampleType:unit:)(char a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32V_SftMd);
  _allocateUninitializedArray<A>(_:)();
  *(v2 + 24) = Dictionary.init(dictionaryLiteral:)();
  *(v2 + 16) = a1;
  MEMORY[0x277D82BE0](a2);
  *(v2 + 32) = a2;
  MEMORY[0x277D82BD8](a2);
  return v6;
}

uint64_t HealthDataQuantitySamples.append(_:)(uint64_t a1)
{
  v19 = a1;
  v42 = 0;
  v41 = 0;
  v38 = 0;
  v36 = 0;
  v21 = 0;
  v26 = type metadata accessor for Date();
  v24 = *(v26 - 8);
  v25 = v26 - 8;
  v20 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v27 = v8 - v20;
  v42 = MEMORY[0x28223BE20](v19);
  v41 = v1;
  v22 = v40;
  outlined init with copy of Any(v42, v40);
  type metadata accessor for HKQuantitySample();
  swift_dynamicCast();
  v23 = v39;
  v38 = v39;
  *&v2 = MEMORY[0x277D82BE0](v39).n128_u64[0];
  v29 = [v23 startDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  MEMORY[0x277D82BD8](v23);
  *&v3 = Date.toJulianDay()();
  v37 = v3;
  v28 = v3;
  v30 = BYTE4(v3);
  (*(v24 + 8))(v27, v26);
  MEMORY[0x277D82BD8](v29);
  if ((v30 & 1) == 0)
  {
    v17 = v28;
    v12 = v28;
    v36 = v28;
    v10 = [v23 quantity];
    v8[1] = &v35;
    v13 = 0;
    swift_beginAccess();
    v9 = *(v18 + 32);
    MEMORY[0x277D82BE0](v9);
    swift_endAccess();
    [v10 doubleValueForUnit_];
    v11 = v4;
    MEMORY[0x277D82BD8](v9);
    v5 = MEMORY[0x277D82BD8](v10);
    v6 = MEMORY[0x25F8897B0](v5, v11);
    v15 = &v33;
    v33 = v6;
    v34 = 0;
    v14 = &v32;
    v32 = v12;
    v16 = &v31;
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt32VSfGMd);
    Dictionary.subscript.setter();
    swift_endAccess();
  }

  return MEMORY[0x277D82BD8](v23);
}

uint64_t HealthDataQuantitySamples.deinit()
{
  outlined destroy of [(start: UInt32, end: UInt32)]();
  MEMORY[0x277D82BD8](*(v0 + 32));
  return v2;
}

uint64_t HealthDataQuantityAverageSamples.init(sampleType:unit:)(char a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32V_SaySfGtMd);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd);
  *(v2 + 24) = Dictionary.init(dictionaryLiteral:)();
  *(v2 + 16) = a1;
  MEMORY[0x277D82BE0](a2);
  *(v2 + 32) = a2;
  MEMORY[0x277D82BD8](a2);
  return v6;
}

uint64_t HealthDataQuantityAverageSamples.result.getter()
{
  swift_beginAccess();

  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32V_SftMd);
  _allocateUninitializedArray<A>(_:)();
  Dictionary.init(dictionaryLiteral:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt32VSaySfGGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt32VSfGMd);
  lazy protocol witness table accessor for type [UInt32 : [Float]] and conformance [A : B]();
  Sequence.reduce<A>(into:_:)();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  return v1;
}

uint64_t closure #1 in HealthDataQuantityAverageSamples.result.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd);
  lazy protocol witness table accessor for type [Float] and conformance [A]();
  result = Sequence.reduce<A>(_:_:)();
  if (v4)
  {
    __break(1u);
  }

  else
  {

    MEMORY[0x25F8895B0](v3, MEMORY[0x277D83A90]);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt32VSfGMd);
    return Dictionary.subscript.setter();
  }

  return result;
}

float implicit closure #1 in closure #1 in HealthDataQuantityAverageSamples.result.getter@<S0>(float *a1@<X0>, float *a2@<X1>, float *a3@<X8>)
{
  result = *a1 + *a2;
  *a3 = result;
  return result;
}

uint64_t HealthDataQuantityAverageSamples.append(_:)(uint64_t a1)
{
  v33 = a1;
  v60 = 0;
  v59 = 0;
  v56 = 0;
  v54 = 0;
  v35 = 0;
  v40 = type metadata accessor for Date();
  v38 = *(v40 - 8);
  v39 = v40 - 8;
  v34 = (*(v38 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v41 = v9 - v34;
  v60 = MEMORY[0x28223BE20](v33);
  v59 = v1;
  v36 = v58;
  outlined init with copy of Any(v60, v58);
  type metadata accessor for HKQuantitySample();
  swift_dynamicCast();
  v37 = v57;
  v56 = v57;
  *&v2 = MEMORY[0x277D82BE0](v57).n128_u64[0];
  v43 = [v37 startDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  MEMORY[0x277D82BD8](v37);
  *&v3 = Date.toJulianDay()();
  v55 = v3;
  v42 = v3;
  v44 = BYTE4(v3);
  (*(v38 + 8))(v41, v40);
  MEMORY[0x277D82BD8](v43);
  if ((v44 & 1) == 0)
  {
    v31 = v42;
    v26 = v42;
    v54 = v42;
    v22 = &v53;
    swift_beginAccess();
    v24 = *(v32 + 24);

    swift_endAccess();
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd);

    v29 = &v52;
    v52 = v25;
    v28 = &v51;
    v51 = v26;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSD4KeysVys6UInt32VSaySfG_GMd);
    lazy protocol witness table accessor for type [UInt32 : [Float]].Keys and conformance [A : B].Keys();
    v30 = Sequence<>.contains(_:)();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    if ((v30 & 1) == 0)
    {
      v4 = _allocateUninitializedArray<A>(_:)();
      v20 = &v47;
      v47 = v4;
      v19 = &v46;
      v46 = v26;
      v21 = &v45;
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt32VSaySfGGMd);
      Dictionary.subscript.setter();
      swift_endAccess();
    }

    v15 = HealthDataFlowSamples.results.modify();
    v16 = &v50;
    v50 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt32VSaySfGGMd);
    v17 = Dictionary.subscript.modify();
    v18 = v5;
    if (*v5)
    {
      v12 = [v37 quantity];
      v10 = &v49;
      swift_beginAccess();
      v11 = *(v32 + 32);
      MEMORY[0x277D82BE0](v11);
      swift_endAccess();
      [v12 doubleValueForUnit_];
      v13 = v6;
      MEMORY[0x277D82BD8](v11);
      v7 = MEMORY[0x277D82BD8](v12);
      v48 = MEMORY[0x25F8897B0](v7, v13);
      Array.append(_:)();
      v14 = 0;
    }

    else
    {
      v9[1] = 0;
    }

    v17();
    v15();
  }

  return MEMORY[0x277D82BD8](v37);
}

uint64_t protocol witness for HealthDataQueryResult.result.getter in conformance HealthDataQuantityAverageSamples@<X0>(uint64_t *a1@<X8>)
{
  result = HealthDataQuantityAverageSamples.result.getter();
  *a1 = result;
  return result;
}

uint64_t getSampleTypeQueryDecoders()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19NightingaleTraining23HealthDataRawSampleTypeO_AA0cD11QueryResult_ptMd);
  _allocateUninitializedArray<A>(_:)();
  v30 = v0;
  *v0 = 0;
  v17 = type metadata accessor for HealthDataFlowSamples();
  v1 = HealthDataFlowSamples.__allocating_init(sampleType:)(0);
  *(v30 + 4) = v17;
  *(v30 + 5) = &protocol witness table for HealthDataFlowSamples;
  *(v30 + 1) = v1;
  v30[48] = 2;
  v18 = type metadata accessor for HealthDataUInt8Samples();
  v2 = HealthDataFlowSamples.__allocating_init(sampleType:)(2);
  *(v30 + 10) = v18;
  *(v30 + 11) = &protocol witness table for HealthDataUInt8Samples;
  *(v30 + 7) = v2;
  v30[96] = 1;
  v19 = type metadata accessor for HealthDataBoolSamples();
  v3 = HealthDataBoolSamples.__allocating_init(sampleType:)(1);
  *(v30 + 16) = v19;
  *(v30 + 17) = &protocol witness table for HealthDataBoolSamples;
  *(v30 + 13) = v3;
  v30[144] = 3;
  v20 = type metadata accessor for HealthDataCycleFactorSamples();
  v4 = HealthDataCycleFactorSamples.__allocating_init(sampleType:)(3);
  *(v30 + 22) = v20;
  *(v30 + 23) = &protocol witness table for HealthDataCycleFactorSamples;
  *(v30 + 19) = v4;
  v30[192] = 7;
  v21 = type metadata accessor for HealthDataSWTSamples();
  v5 = HealthDataSWTSamples.__allocating_init(sampleType:)(7);
  *(v30 + 28) = v21;
  *(v30 + 29) = &protocol witness table for HealthDataSWTSamples;
  *(v30 + 25) = v5;
  v30[240] = 4;
  v22 = type metadata accessor for HealthDataQuantitySamples();
  v6 = [objc_opt_self() 0x1FBD81184];
  v7 = HealthDataQuantitySamples.__allocating_init(sampleType:unit:)(4, v6);
  *(v30 + 34) = v22;
  *(v30 + 35) = &protocol witness table for HealthDataQuantitySamples;
  *(v30 + 31) = v7;
  v30[288] = 5;
  v8 = [objc_opt_self() gramUnitWithMetricPrefix_];
  v9 = HealthDataQuantitySamples.__allocating_init(sampleType:unit:)(5, v8);
  *(v30 + 40) = v22;
  *(v30 + 41) = &protocol witness table for HealthDataQuantitySamples;
  *(v30 + 37) = v9;
  v30[336] = 6;
  v10 = [objc_opt_self() meterUnit];
  v11 = HealthDataQuantitySamples.__allocating_init(sampleType:unit:)(6, v10);
  *(v30 + 46) = v22;
  *(v30 + 47) = &protocol witness table for HealthDataQuantitySamples;
  *(v30 + 43) = v11;
  v30[384] = 8;
  v29 = type metadata accessor for HealthDataQuantityAverageSamples();
  v12 = [objc_opt_self() secondUnitWithMetricPrefix_];
  v13 = HealthDataQuantityAverageSamples.__allocating_init(sampleType:unit:)(8, v12);
  *(v30 + 52) = v29;
  *(v30 + 53) = &protocol witness table for HealthDataQuantityAverageSamples;
  *(v30 + 49) = v13;
  v30[432] = 9;
  v24 = [objc_opt_self() 0x1FBD81184];
  v23 = [objc_opt_self() minuteUnit];
  v25 = [v24 0x1FBD9EF17];
  MEMORY[0x277D82BD8](v23);
  MEMORY[0x277D82BD8](v24);
  v14 = HealthDataQuantityAverageSamples.__allocating_init(sampleType:unit:)(9, v25);
  *(v30 + 58) = v29;
  *(v30 + 59) = &protocol witness table for HealthDataQuantityAverageSamples;
  *(v30 + 55) = v14;
  v30[480] = 10;
  v27 = [objc_opt_self() 0x1FBD81184];
  v26 = [objc_opt_self() percentUnit];
  v28 = [v27 0x1FBD9EF17];
  MEMORY[0x277D82BD8](v26);
  MEMORY[0x277D82BD8](v27);
  v15 = HealthDataQuantityAverageSamples.__allocating_init(sampleType:unit:)(10, v28);
  *(v30 + 64) = v29;
  *(v30 + 65) = &protocol witness table for HealthDataQuantityAverageSamples;
  *(v30 + 61) = v15;
  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19NightingaleTraining21HealthDataQueryResult_pMd);
  lazy protocol witness table accessor for type HealthDataRawSampleType and conformance HealthDataRawSampleType();
  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t HealthDataStoreQuery.store.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 16);
  MEMORY[0x277D82BE0](v2);
  swift_endAccess();
  return v2;
}

uint64_t HealthDataStoreQuery.store.setter(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  swift_beginAccess();
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  return MEMORY[0x277D82BD8](a1);
}

uint64_t HealthDataStoreQuery.ngtToHK.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 32);

  swift_endAccess();
  return v2;
}

uint64_t HealthDataStoreQuery.ngtToHK.setter(uint64_t a1)
{

  swift_beginAccess();
  *(v1 + 32) = a1;

  swift_endAccess();
}

uint64_t HealthDataStoreQuery.dayStreamProcessorConfig.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 40);
  MEMORY[0x277D82BE0](v2);
  swift_endAccess();
  return v2;
}

uint64_t HealthDataStoreQuery.dayStreamProcessorConfig.setter(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  swift_beginAccess();
  v2 = *(v1 + 40);
  *(v1 + 40) = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  return MEMORY[0x277D82BD8](a1);
}

uint64_t HealthDataStoreQuery.init(store:)(uint64_t a1)
{
  v1[5] = 0;
  MEMORY[0x277D82BE0](a1);
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo12HKSampleTypeC_19NightingaleTraining019HealthDataRawSampleB0OtMd);
  _allocateUninitializedArray<A>(_:)();
  type metadata accessor for HKSampleType();
  lazy protocol witness table accessor for type HKSampleType and conformance NSObject();
  v1[3] = Dictionary.init(dictionaryLiteral:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19NightingaleTraining23HealthDataRawSampleTypeO_SaySo08HKSampleG0CGtMd);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo12HKSampleTypeCGMd);
  lazy protocol witness table accessor for type HealthDataRawSampleType and conformance HealthDataRawSampleType();
  v1[4] = Dictionary.init(dictionaryLiteral:)();
  type metadata accessor for HKCategoryType();
  identifier.value = *MEMORY[0x277CCBA28];
  MEMORY[0x277D82BE0](*MEMORY[0x277CCBA28]);
  v33 = HKCategoryType.init(identifier:)(identifier);
  if (v33)
  {
    MEMORY[0x277D82BE0](v33);
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySo12HKSampleTypeC19NightingaleTraining019HealthDataRawSampleB0OGMd);
    Dictionary.subscript.setter();
    swift_endAccess();
    _allocateUninitializedArray<A>(_:)();
    v29 = v2;
    MEMORY[0x277D82BE0](v33);
    *v29 = v33;
    _finalizeUninitializedArray<A>(_:)();
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy19NightingaleTraining23HealthDataRawSampleTypeOSaySo08HKSampleG0CGGMd);
    Dictionary.subscript.setter();
    swift_endAccess();
    MEMORY[0x277D82BD8](v33);
  }

  v27.value = *MEMORY[0x277CCBA50];
  MEMORY[0x277D82BE0](*MEMORY[0x277CCBA50]);
  v28 = HKCategoryType.init(identifier:)(v27);
  if (v28)
  {
    MEMORY[0x277D82BE0](v28);
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySo12HKSampleTypeC19NightingaleTraining019HealthDataRawSampleB0OGMd);
    Dictionary.subscript.setter();
    swift_endAccess();
    _allocateUninitializedArray<A>(_:)();
    v26 = v3;
    MEMORY[0x277D82BE0](v28);
    *v26 = v28;
    _finalizeUninitializedArray<A>(_:)();
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy19NightingaleTraining23HealthDataRawSampleTypeOSaySo08HKSampleG0CGGMd);
    Dictionary.subscript.setter();
    swift_endAccess();
    MEMORY[0x277D82BD8](v28);
  }

  v24.value = *MEMORY[0x277CCB9D8];
  MEMORY[0x277D82BE0](*MEMORY[0x277CCB9D8]);
  v25 = HKCategoryType.init(identifier:)(v24);
  if (v25)
  {
    MEMORY[0x277D82BE0](v25);
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySo12HKSampleTypeC19NightingaleTraining019HealthDataRawSampleB0OGMd);
    Dictionary.subscript.setter();
    swift_endAccess();
    _allocateUninitializedArray<A>(_:)();
    v23 = v4;
    MEMORY[0x277D82BE0](v25);
    *v23 = v25;
    _finalizeUninitializedArray<A>(_:)();
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy19NightingaleTraining23HealthDataRawSampleTypeOSaySo08HKSampleG0CGGMd);
    Dictionary.subscript.setter();
    swift_endAccess();
    MEMORY[0x277D82BD8](v25);
  }

  type metadata accessor for HKQuantityType();
  v21.value = *MEMORY[0x277CCC938];
  MEMORY[0x277D82BE0](*MEMORY[0x277CCC938]);
  v22 = HKCategoryType.init(identifier:)(v21);
  if (v22)
  {
    MEMORY[0x277D82BE0](v22);
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySo12HKSampleTypeC19NightingaleTraining019HealthDataRawSampleB0OGMd);
    Dictionary.subscript.setter();
    swift_endAccess();
    _allocateUninitializedArray<A>(_:)();
    v20 = v5;
    MEMORY[0x277D82BE0](v22);
    *v20 = v22;
    _finalizeUninitializedArray<A>(_:)();
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy19NightingaleTraining23HealthDataRawSampleTypeOSaySo08HKSampleG0CGGMd);
    Dictionary.subscript.setter();
    swift_endAccess();
    MEMORY[0x277D82BD8](v22);
  }

  v18.value = *MEMORY[0x277CCC998];
  MEMORY[0x277D82BE0](*MEMORY[0x277CCC998]);
  v19 = HKCategoryType.init(identifier:)(v18);
  if (v19)
  {
    MEMORY[0x277D82BE0](v19);
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySo12HKSampleTypeC19NightingaleTraining019HealthDataRawSampleB0OGMd);
    Dictionary.subscript.setter();
    swift_endAccess();
    _allocateUninitializedArray<A>(_:)();
    v17 = v6;
    MEMORY[0x277D82BE0](v19);
    *v17 = v19;
    _finalizeUninitializedArray<A>(_:)();
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy19NightingaleTraining23HealthDataRawSampleTypeOSaySo08HKSampleG0CGGMd);
    Dictionary.subscript.setter();
    swift_endAccess();
    MEMORY[0x277D82BD8](v19);
  }

  v15.value = *MEMORY[0x277CCC990];
  MEMORY[0x277D82BE0](*MEMORY[0x277CCC990]);
  v16 = HKCategoryType.init(identifier:)(v15);
  if (v16)
  {
    MEMORY[0x277D82BE0](v16);
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySo12HKSampleTypeC19NightingaleTraining019HealthDataRawSampleB0OGMd);
    Dictionary.subscript.setter();
    swift_endAccess();
    _allocateUninitializedArray<A>(_:)();
    v14 = v7;
    MEMORY[0x277D82BE0](v16);
    *v14 = v16;
    _finalizeUninitializedArray<A>(_:)();
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy19NightingaleTraining23HealthDataRawSampleTypeOSaySo08HKSampleG0CGGMd);
    Dictionary.subscript.setter();
    swift_endAccess();
    MEMORY[0x277D82BD8](v16);
  }

  v12.value = *MEMORY[0x277CCCBA8];
  MEMORY[0x277D82BE0](*MEMORY[0x277CCCBA8]);
  v13 = HKCategoryType.init(identifier:)(v12);
  if (v13)
  {
    MEMORY[0x277D82BE0](v13);
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySo12HKSampleTypeC19NightingaleTraining019HealthDataRawSampleB0OGMd);
    Dictionary.subscript.setter();
    swift_endAccess();
    _allocateUninitializedArray<A>(_:)();
    v11 = v8;
    MEMORY[0x277D82BE0](v13);
    *v11 = v13;
    _finalizeUninitializedArray<A>(_:)();
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy19NightingaleTraining23HealthDataRawSampleTypeOSaySo08HKSampleG0CGGMd);
    Dictionary.subscript.setter();
    swift_endAccess();
    MEMORY[0x277D82BD8](v13);
  }

  v10 = HKMCCycleFactorsTypes();
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  MEMORY[0x277D82BD8](v10);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo14HKCategoryTypeCGMd);
  lazy protocol witness table accessor for type [HKCategoryType] and conformance [A]();
  Sequence.forEach(_:)();

  _arrayForceCast<A, B>(_:)();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy19NightingaleTraining23HealthDataRawSampleTypeOSaySo08HKSampleG0CGGMd);
  Dictionary.subscript.setter();
  swift_endAccess();

  MEMORY[0x277D82BD8](a1);
  return v30;
}

unint64_t type metadata accessor for HKCategorySample()
{
  v2 = lazy cache variable for type metadata for HKCategorySample;
  if (!lazy cache variable for type metadata for HKCategorySample)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for HKCategorySample);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for HKSample()
{
  v2 = lazy cache variable for type metadata for HKSample;
  if (!lazy cache variable for type metadata for HKSample)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for HKSample);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for NSObject()
{
  v2 = lazy cache variable for type metadata for NSObject;
  if (!lazy cache variable for type metadata for NSObject)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for NSObject);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for HKCategoryType()
{
  v2 = lazy cache variable for type metadata for HKCategoryType;
  if (!lazy cache variable for type metadata for HKCategoryType)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for HKCategoryType);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for HKQuantitySample()
{
  v2 = lazy cache variable for type metadata for HKQuantitySample;
  if (!lazy cache variable for type metadata for HKQuantitySample)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for HKQuantitySample);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for HKSampleType()
{
  v2 = lazy cache variable for type metadata for HKSampleType;
  if (!lazy cache variable for type metadata for HKSampleType)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for HKSampleType);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type HKSampleType and conformance NSObject()
{
  v2 = lazy protocol witness table cache variable for type HKSampleType and conformance NSObject;
  if (!lazy protocol witness table cache variable for type HKSampleType and conformance NSObject)
  {
    type metadata accessor for HKSampleType();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKSampleType and conformance NSObject);
    return WitnessTable;
  }

  return v2;
}

HKCategoryType_optional __swiftcall HKCategoryType.init(identifier:)(HKCategoryTypeIdentifier_optional identifier)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v2 = @nonobjc HKCategoryType.init(identifier:)(identifier.value);
  result.value.super.super.super.isa = v2;
  result.is_nil = v3;
  return result;
}

unint64_t type metadata accessor for HKQuantityType()
{
  v2 = lazy cache variable for type metadata for HKQuantityType;
  if (!lazy cache variable for type metadata for HKQuantityType)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for HKQuantityType);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t closure #1 in HealthDataStoreQuery.init(store:)(void *a1)
{
  MEMORY[0x277D82BE0](*a1);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySo12HKSampleTypeC19NightingaleTraining019HealthDataRawSampleB0OGMd);
  Dictionary.subscript.setter();
  return swift_endAccess();
}

unint64_t lazy protocol witness table accessor for type [HKCategoryType] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [HKCategoryType] and conformance [A];
  if (!lazy protocol witness table cache variable for type [HKCategoryType] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo14HKCategoryTypeCGMd);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [HKCategoryType] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t HealthDataStoreQuery.queryPregrancies(source:range:)(uint64_t a1, uint64_t a2)
{
  v3[17] = v2;
  v3[16] = a2;
  v3[15] = a1;
  v3[2] = v3;
  v3[3] = 0;
  v3[4] = 0;
  v3[5] = 0;
  v3[7] = 0;
  v3[8] = 0;
  v4 = type metadata accessor for Date();
  v3[18] = v4;
  v3[19] = *(v4 - 8);
  v3[20] = swift_task_alloc();
  v3[3] = a1;
  v3[4] = a2;
  v3[5] = v2;

  return MEMORY[0x2822009F8](HealthDataStoreQuery.queryPregrancies(source:range:), 0);
}

uint64_t HealthDataStoreQuery.queryPregrancies(source:range:)()
{
  v1 = *(v0 + 160);
  v17 = *(v0 + 152);
  v20 = *(v0 + 144);
  v18 = *(v0 + 128);
  v26 = *(v0 + 120);
  *(v0 + 16) = v0;
  v22 = objc_opt_self();
  v19 = *(v17 + 16);
  v19(v1, v18, v20);
  isa = Date._bridgeToObjectiveC()().super.isa;
  v21 = *(v17 + 8);
  v21(v1, v20);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation4DateVGMd);
  v19(v1, v18 + *(v2 + 36), v20);
  v23 = Date._bridgeToObjectiveC()().super.isa;
  v21(v1, v20);
  type metadata accessor for HKQueryOptions();
  _allocateUninitializedArray<A>(_:)();
  lazy protocol witness table accessor for type HKQueryOptions and conformance HKQueryOptions();
  SetAlgebra<>.init(arrayLiteral:)();
  v25 = [v22 predicateForSamplesWithStartDate:isa endDate:v23 inclusiveEndDates:1 options:*(v0 + 48)];
  *(v0 + 168) = v25;
  MEMORY[0x277D82BD8](v23);
  MEMORY[0x277D82BD8](isa);
  *(v0 + 56) = v25;
  type metadata accessor for HKQueryDescriptor();
  *(v0 + 64) = _allocateUninitializedArray<A>(_:)();
  *(v0 + 72) = v26;
  *(v0 + 208) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining15PregnancySourceOGMd);
  lazy protocol witness table accessor for type [PregnancySource] and conformance [A]();
  lazy protocol witness table accessor for type PregnancySource and conformance PregnancySource();
  v27 = Sequence<>.contains(_:)();

  if (v27)
  {
  }

  else
  {
    *(v16 + 80) = *(v16 + 120);
    *(v16 + 209) = 1;
    v15 = Sequence<>.contains(_:)();

    if ((v15 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  type metadata accessor for HKCategoryType();
  v13 = *MEMORY[0x277CCBA68];
  v3 = MEMORY[0x277D82BE0](*MEMORY[0x277CCBA68]);
  sampleType.super.super.isa = MEMORY[0x25F889940](v13, v3);
  MEMORY[0x277D82BE0](v25);
  *(v16 + 112) = HKQueryDescriptor.__allocating_init(sampleType:predicate:)(sampleType, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17HKQueryDescriptorCGMd);
  Array.append(_:)();
LABEL_5:
  *(v16 + 88) = *(v16 + 120);
  *(v16 + 210) = 2;
  if (Sequence<>.contains(_:)())
  {
    type metadata accessor for HKCategoryType();
    v11 = *MEMORY[0x277CCBA70];
    v4 = MEMORY[0x277D82BE0](*MEMORY[0x277CCBA70]);
    v12.super.super.isa = MEMORY[0x25F889940](v11, v4);
    MEMORY[0x277D82BE0](v25);
    *(v16 + 104) = HKQueryDescriptor.__allocating_init(sampleType:predicate:)(v12, v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17HKQueryDescriptorCGMd);
    Array.append(_:)();
  }

  v9 = *(v16 + 136);
  v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("queryPregrancies(source:range:)", 0x1FuLL, 1);
  *(v16 + 176) = v5._object;

  v10 = swift_task_alloc();
  *(v16 + 184) = v10;
  *(v10 + 16) = v16 + 64;
  *(v10 + 24) = v9;
  v6 = swift_task_alloc();
  *(v16 + 192) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining9Pregnancy_pSgGMd);
  *v6 = *(v16 + 16);
  v6[1] = HealthDataStoreQuery.queryPregrancies(source:range:);

  return MEMORY[0x2822008A0](v16 + 96, 0, 0, v5._countAndFlagsBits, v5._object, partial apply for closure #1 in HealthDataStoreQuery.queryPregrancies(source:range:), v10, v7);
}

{
  v4 = *v1;
  *(v4 + 16) = *v1;
  *(v4 + 200) = v0;

  if (v0)
  {
    v2 = HealthDataStoreQuery.queryPregrancies(source:range:);
  }

  else
  {

    v2 = HealthDataStoreQuery.queryPregrancies(source:range:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v3 = v0[21];
  v0[2] = v0;
  v4 = v0[12];
  outlined destroy of [(start: UInt32, end: UInt32)]();
  MEMORY[0x277D82BD8](v3);

  v1 = *(v0[2] + 8);

  return v1(v4);
}

{
  v3 = *(v0 + 168);
  *(v0 + 16) = v0;

  outlined destroy of [(start: UInt32, end: UInt32)]();
  MEMORY[0x277D82BD8](v3);

  v1 = *(*(v4 + 16) + 8);

  return v1();
}

unint64_t type metadata accessor for HKQueryDescriptor()
{
  v2 = lazy cache variable for type metadata for HKQueryDescriptor;
  if (!lazy cache variable for type metadata for HKQueryDescriptor)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for HKQueryDescriptor);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type [PregnancySource] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [PregnancySource] and conformance [A];
  if (!lazy protocol witness table cache variable for type [PregnancySource] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19NightingaleTraining15PregnancySourceOGMd);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [PregnancySource] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [PregnancySource] and conformance [A];
  if (!lazy protocol witness table cache variable for type [PregnancySource] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19NightingaleTraining15PregnancySourceOGMd);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [PregnancySource] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t closure #1 in HealthDataStoreQuery.queryPregrancies(source:range:)()
{

  _s10ObjectiveC15autoreleasepool8invokingq_q_yxYKXE_txYKs5ErrorRzRi__r0_lF(partial apply for closure #1 in closure #1 in HealthDataStoreQuery.queryPregrancies(source:range:), MEMORY[0x277D84A98], MEMORY[0x277D84F78] + 8, v1, v1);
}

uint64_t closure #1 in closure #1 in HealthDataStoreQuery.queryPregrancies(source:range:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v8 = a1;
  v9 = a2;
  v22 = a3;
  v21 = 0;
  v18 = partial apply for closure #1 in closure #1 in closure #1 in HealthDataStoreQuery.queryPregrancies(source:range:);
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v27 = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySay19NightingaleTraining9Pregnancy_pSgGs5Error_pGMd);
  v12 = *(v16 - 8);
  v13 = v16 - 8;
  v10 = v12;
  v11 = *(v12 + 64);
  v7 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = &v6 - v7;
  v30 = MEMORY[0x28223BE20](v8);
  v29 = v3;
  v28 = v4;
  type metadata accessor for HKSampleQuery();
  v20 = *v8;

  v17 = 0;
  (*(v12 + 16))(v15, v9, v16);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v19 = swift_allocObject();
  (*(v12 + 32))(v19 + v14, v15, v16);
  v25 = HKSampleQuery.__allocating_init(queryDescriptors:limit:resultsHandler:)(v20, v17, v18, v19);
  v27 = v25;
  v23 = &v26;
  swift_beginAccess();
  v24 = *(v22 + 16);
  MEMORY[0x277D82BE0](v24);
  swift_endAccess();
  [v24 executeQuery_];
  MEMORY[0x277D82BD8](v24);
  return MEMORY[0x277D82BD8](v25);
}

void *closure #1 in closure #1 in closure #1 in HealthDataStoreQuery.queryPregrancies(source:range:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v14 = a4;
  v15 = a3;
  v18 = a2;
  v17 = 0;
  v16 = 0;
  v22[4] = a1;
  v22[3] = a2;
  v22[2] = a3;
  v22[1] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19NightingaleTraining9Pregnancy_pSgMd);
  v22[0] = _allocateUninitializedArray<A>(_:)();

  if (v18)
  {
    v13 = v18;
    v4 = v16;
    v19 = v18;
    v10[2] = v10;
    MEMORY[0x28223BE20](v10);
    v10[3] = v9;
    v9[2] = v22;
    v10[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8HKSampleCGMd);
    lazy protocol witness table accessor for type [HKSample] and conformance [A]();
    Sequence.forEach(_:)();
    v11 = v4;
    outlined destroy of [(start: UInt32, end: UInt32)]();
    v12 = v11;
  }

  else
  {
    v12 = v16;
  }

  v5 = v15;
  if (v15)
  {
    v10[1] = v15;

    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v6 = swift_allocError();
    *v7 = 56;
    v20 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySay19NightingaleTraining9Pregnancy_pSgGs5Error_pGMd);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {
    v10[0] = v22[0];

    v21 = v10[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySay19NightingaleTraining9Pregnancy_pSgGs5Error_pGMd);
    CheckedContinuation.resume(returning:)();
  }

  result = v22;
  outlined destroy of [(start: UInt32, end: UInt32)]();
  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in HealthDataStoreQuery.queryPregrancies(source:range:)(uint64_t a1, uint64_t a2)
{
  v57 = a1;
  v58 = a2;
  v96 = 0;
  v95 = 0;
  v94 = 0;
  v78 = 0;
  v65 = 0;
  v60 = *(*(type metadata accessor for Date() - 8) + 64);
  v59 = (v60 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](0);
  v61 = &v19 - v59;
  v62 = v59;
  MEMORY[0x28223BE20](v2);
  v63 = &v19 - v62;
  v64 = *v3;
  v96 = v64;
  v95 = v4;
  v68 = type metadata accessor for NSObject();
  v70 = [v64 sampleType];
  v66 = type metadata accessor for HKCategoryType();
  v67 = *MEMORY[0x277CCBA68];
  v5 = MEMORY[0x277D82BE0](v67);
  v69 = MEMORY[0x25F889940](v67, v5);
  v71 = static NSObject.== infix(_:_:)();
  MEMORY[0x277D82BD8](v69);
  MEMORY[0x277D82BD8](v70);
  if (v71)
  {
    *&v6 = MEMORY[0x277D82BE0](v64).n128_u64[0];
    v56 = [v64 metadata];
    if (v56)
    {
      v55 = v56;
      v52 = v56;
      v53 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      MEMORY[0x277D82BD8](v52);
      v54 = v53;
    }

    else
    {
      v54 = 0;
    }

    v51 = v54;
    MEMORY[0x277D82BD8](v64);
    if (v51)
    {
      v50 = v51;
      v48 = v51;
      v49 = *MEMORY[0x277CCE090];
      MEMORY[0x277D82BE0](v49);
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v47 = v72;
      v72[0] = v7;
      v72[1] = v8;
      MEMORY[0x25F8891D0](v83);
      outlined destroy of DefaultStringInterpolation();

      MEMORY[0x277D82BD8](v49);
    }

    else
    {
      memset(v83, 0, sizeof(v83));
      v84 = 0;
    }

    if (v84)
    {
      if (swift_dynamicCast())
      {
        v43 = v72[2];
        v44 = 0;
      }

      else
      {
        v43 = 0;
        v44 = 1;
      }

      v45 = v43;
      v46 = v44;
    }

    else
    {
      outlined destroy of Pregnancy?(v83);
      v45 = 0;
      v46 = 1;
    }

    v81 = v45;
    v82 = v46 & 1;
    if (v46)
    {
      v42 = 0;
    }

    else
    {
      v42 = v81;
    }

    _HKPrivatePregnancyStartDateSource.init(rawValue:)();
    v79 = v9;
    v80 = v10 & 1;
    if (v10)
    {
      v41 = 4;
    }

    else
    {
      v41 = v79;
    }

    v37 = v41;
    v78 = v41;
    v39 = [v64 startDate];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = [v64 endDate];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v97;
    PregnancyFromFactor.init(factorStartDate:factorEndDate:startSource:)(v63, v61, v37, v97);
    MEMORY[0x277D82BD8](v38);
    MEMORY[0x277D82BD8](v39);
    memcpy(__dst, v40, sizeof(__dst));
    if (__dst[40] == 2)
    {
      v73 = 0;
      v74 = 0;
      v75 = 0;
      v76 = 0;
      v77 = 0;
    }

    else
    {
      v35 = v99;
      v36 = 42;
      memcpy(v99, __dst, 0x2AuLL);
      v76 = &type metadata for PregnancyFromFactor;
      v77 = &protocol witness table for PregnancyFromFactor;
      v73 = swift_allocObject();
      memcpy((v73 + 16), v35, v36);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining9Pregnancy_pSgGMd);
    Array.append(_:)();
  }

  v33 = [v64 sampleType];
  v31 = *MEMORY[0x277CCBA70];
  v11 = MEMORY[0x277D82BE0](v31);
  v32 = MEMORY[0x25F889940](v31, v11);
  v34 = static NSObject.== infix(_:_:)();
  MEMORY[0x277D82BD8](v32);
  MEMORY[0x277D82BD8](v33);
  result = v34;
  if (v34)
  {
    MEMORY[0x277D82BE0](v64);
    objc_opt_self();
    v29 = swift_dynamicCastObjCClassUnconditional();
    v94 = v29;
    v30 = [v29 value];
    _HKPrivatePregnancyStartDateSource.rawValue.getter();
    if (v30 == v13)
    {
      v25 = [v64 startDate];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();
      *&v26 = PregnancyFromTest.init(testDate:)(v63);
      *(&v26 + 1) = v14;
      v27 = v15;
      v28 = v16;
      MEMORY[0x277D82BD8](v25);
      if (v28 == 2)
      {
        v89 = 0;
        v90 = 0;
        v91 = 0;
        v92 = 0;
        v93 = 0;
      }

      else
      {
        v21 = v26;
        v22 = v27;
        v23 = v28;
        v24 = BYTE1(v28);
        v20 = &v85;
        v85 = v26;
        v86 = v27;
        v87 = HIDWORD(v27);
        v88 = v28 & 0x101;
        v92 = &type metadata for PregnancyFromTest;
        v93 = &protocol witness table for PregnancyFromTest;
        v17 = swift_allocObject();
        v18 = v20;
        v89 = v17;
        *(v17 + 16) = v85;
        *(v17 + 26) = *(v18 + 10);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining9Pregnancy_pSgGMd);
      Array.append(_:)();
    }

    return MEMORY[0x277D82BD8](v29);
  }

  return result;
}

void _s10ObjectiveC15autoreleasepool8invokingq_q_yxYKXE_txYKs5ErrorRzRi__r0_lF(void (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v13 = a5;
  v15 = a1;
  v8 = a2;
  v9 = a4;
  v20 = a2;
  v19 = a3;
  v10 = *(a2 - 8);
  v11 = a2 - 8;
  v12 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1);
  v16 = &v7 - v12;
  v5 = MEMORY[0x25F88A1D0]();
  v6 = v14;
  v17 = v5;
  v15(v16);
  v18 = v6;
  if (v6)
  {
    (*(v10 + 32))(v9, v16, v8);
  }

  objc_autoreleasePoolPop(v17);
}

uint64_t HealthDataStoreQuery.queryRawSamples(_:_:)(uint64_t a1, uint64_t a2)
{
  v3[8] = v2;
  v3[7] = a1;
  v3[2] = v3;
  v3[3] = 0;
  v3[14] = 0;
  v3[4] = 0;
  v3[5] = 0;
  v3[15] = a2;
  v3[3] = a1;
  v3[14] = a2;
  v3[4] = v2;
  return MEMORY[0x2822009F8](HealthDataStoreQuery.queryRawSamples(_:_:), 0);
}

uint64_t HealthDataStoreQuery.queryRawSamples(_:_:)()
{
  v1 = *(v0 + 124);
  v2 = *(v0 + 120);
  v3 = *(v0 + 56);
  *(v0 + 16) = v0;
  v12 = HealthDataStoreQuery.queryDescriptors(_:_:)(v3, __SPAIR64__(v1, v2));
  *(v0 + 72) = v12;
  v9 = v11[8];
  v8 = v11[7];
  v11[5] = v12;
  v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("queryRawSamples(_:_:)", 0x15uLL, 1);
  v11[10] = v4._object;

  v10 = swift_task_alloc();
  v11[11] = v10;
  v10[2] = v12;
  v10[3] = v8;
  v10[4] = v9;
  v5 = swift_task_alloc();
  v11[12] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy19NightingaleTraining23HealthDataRawSampleTypeOAA0cD11QueryResult_pGMd);
  *v5 = v11[2];
  v5[1] = HealthDataStoreQuery.queryRawSamples(_:_:);

  return MEMORY[0x2822008A0](v11 + 6, 0, 0, v4._countAndFlagsBits, v4._object, partial apply for closure #1 in HealthDataStoreQuery.queryRawSamples(_:_:), v10, v6);
}

{
  v4 = *v1;
  *(v4 + 16) = *v1;
  *(v4 + 104) = v0;

  if (v0)
  {
    v2 = HealthDataStoreQuery.queryRawSamples(_:_:);
  }

  else
  {

    v2 = HealthDataStoreQuery.queryRawSamples(_:_:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  *(v0 + 16) = v0;
  v3 = *(v0 + 48);

  v1 = *(*(v0 + 16) + 8);

  return v1(v3);
}

{
  *(v0 + 16) = v0;

  v1 = *(*(v0 + 16) + 8);

  return v1();
}

uint64_t closure #1 in HealthDataStoreQuery.queryRawSamples(_:_:)()
{

  _s10ObjectiveC15autoreleasepool8invokingq_q_yxYKXE_txYKs5ErrorRzRi__r0_lF(partial apply for closure #1 in closure #1 in HealthDataStoreQuery.queryRawSamples(_:_:), MEMORY[0x277D84A98], MEMORY[0x277D84F78] + 8, v1, v1);
}

uint64_t closure #1 in closure #1 in HealthDataStoreQuery.queryRawSamples(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a1;
  v20 = a2;
  v32 = a3;
  v17 = a4;
  v31 = 0;
  v27 = partial apply for closure #1 in closure #1 in closure #1 in HealthDataStoreQuery.queryRawSamples(_:_:);
  v41 = 0;
  v40 = 0;
  v39 = 0;
  v38 = 0;
  v37 = 0;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySDy19NightingaleTraining23HealthDataRawSampleTypeOAA0cD11QueryResult_pGs5Error_pGMd);
  v21 = *(v25 - 8);
  v22 = v25 - 8;
  v18 = v21;
  v19 = *(v21 + 64);
  v16 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  v24 = &v15 - v16;
  v41 = MEMORY[0x28223BE20](v29);
  v40 = v4;
  v39 = v5;
  v38 = v6;
  type metadata accessor for HKSampleQuery();

  v26 = 0;

  (*(v21 + 16))(v24, v17, v25);
  v7 = *(v18 + 80);
  v30 = 32;
  v23 = (v7 + 32) & ~v7;
  v8 = swift_allocObject();
  v9 = v21;
  v10 = v23;
  v11 = v24;
  v12 = v25;
  v13 = v32;
  v28 = v8;
  *(v8 + 16) = v20;
  *(v8 + 24) = v13;
  (*(v9 + 32))(v8 + v10, v11, v12);
  v35 = HKSampleQuery.__allocating_init(queryDescriptors:limit:resultsHandler:)(v29, v26, v27, v28);
  v37 = v35;
  v33 = &v36;
  swift_beginAccess();
  v34 = *(v32 + 16);
  MEMORY[0x277D82BE0](v34);
  swift_endAccess();
  [v34 executeQuery_];
  MEMORY[0x277D82BD8](v34);
  return MEMORY[0x277D82BD8](v35);
}

uint64_t closure #1 in closure #1 in closure #1 in HealthDataStoreQuery.queryRawSamples(_:_:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18 = a6;
  v19 = a5;
  v22 = a4;
  v20 = a3;
  v21 = a2;
  v24 = 0;
  v45 = a1;
  v44 = a2;
  v43 = a3;
  v42 = a4;
  v41 = a5;
  v40 = a6;
  SampleTypeQuery = getSampleTypeQueryDecoders()();
  v23 = SampleTypeQuery;
  v39 = SampleTypeQuery;
  v37 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19NightingaleTraining23HealthDataRawSampleTypeO_AA0cD11QueryResult_ptMd);
  v26 = _allocateUninitializedArray<A>(_:)();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19NightingaleTraining21HealthDataQueryResult_pMd);
  lazy protocol witness table accessor for type HealthDataRawSampleType and conformance HealthDataRawSampleType();
  v36 = Dictionary.init(dictionaryLiteral:)();

  v31 = SampleTypeQuery;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining23HealthDataRawSampleTypeOGMd);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy19NightingaleTraining23HealthDataRawSampleTypeOAA0cD11QueryResult_pGMd);
  lazy protocol witness table accessor for type [HealthDataRawSampleType] and conformance [A]();
  Sequence.reduce<A>(into:_:)();
  v30 = 0;

  v17 = v38;
  v35 = v38;

  if (v21)
  {
    v16 = v21;
    v6 = v30;
    v32 = v21;

    v13[2] = v13;
    MEMORY[0x28223BE20](v13);
    v13[3] = v12;
    v12[2] = v19;
    v12[3] = v7;
    v13[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8HKSampleCGMd);
    lazy protocol witness table accessor for type [HKSample] and conformance [A]();
    Sequence.forEach(_:)();
    v14 = v6;

    outlined destroy of [(start: UInt32, end: UInt32)]();
    v15 = v14;
  }

  else
  {
    v15 = v30;
  }

  v8 = v20;
  if (v20)
  {
    v13[1] = v20;

    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v9 = swift_allocError();
    *v10 = 16;
    v33 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySDy19NightingaleTraining23HealthDataRawSampleTypeOAA0cD11QueryResult_pGs5Error_pGMd);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {

    v34 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySDy19NightingaleTraining23HealthDataRawSampleTypeOAA0cD11QueryResult_pGs5Error_pGMd);
    CheckedContinuation.resume(returning:)();
  }
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in HealthDataStoreQuery.queryRawSamples(_:_:)(uint64_t a1, char *a2, uint64_t a3)
{
  v9 = 0;
  v8 = 0;
  v10 = a1;
  v9 = *a2;
  v8 = a3;
  v7 = v9;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19NightingaleTraining21HealthDataQueryResult_pMd);
  v3 = lazy protocol witness table accessor for type HealthDataRawSampleType and conformance HealthDataRawSampleType();
  MEMORY[0x25F8891D0](&v7, a3, &type metadata for HealthDataRawSampleType, v6, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy19NightingaleTraining23HealthDataRawSampleTypeOAA0cD11QueryResult_pGMd);
  return Dictionary.subscript.setter();
}

uint64_t closure #2 in closure #1 in closure #1 in closure #1 in HealthDataStoreQuery.queryRawSamples(_:_:)(void **a1, uint64_t a2, uint64_t a3)
{
  v25 = 0;
  v24 = 0;
  v23 = 0;
  v20 = 0;
  v9 = *a1;
  v25 = v9;
  v24 = a2;
  v23 = a3;
  v11 = [v9 sampleType];
  swift_beginAccess();
  v12 = *(a2 + 24);

  swift_endAccess();
  v21 = v11;
  v13 = type metadata accessor for HKSampleType();
  v3 = lazy protocol witness table accessor for type HKSampleType and conformance NSObject();
  MEMORY[0x25F8891D0](&v22, &v21, v12, v13, &type metadata for HealthDataRawSampleType, v3);
  MEMORY[0x277D82BD8](v21);
  v14 = v22;
  if (v22 == 11)
  {
  }

  v20 = v22;

  v16 = v14;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19NightingaleTraining21HealthDataQueryResult_pMd);
  v5 = lazy protocol witness table accessor for type HealthDataRawSampleType and conformance HealthDataRawSampleType();
  MEMORY[0x25F8891D0](v17, &v16, a3, &type metadata for HealthDataRawSampleType, v7, v5);
  if (!v18)
  {
    return outlined destroy of Pregnancy?(v17);
  }

  v6 = v19;
  __swift_project_boxed_opaque_existential_1(v17, v18);
  MEMORY[0x277D82BE0](v9);
  v15[3] = type metadata accessor for HKSample();
  v15[0] = v9;
  (*(v6 + 24))();
  __swift_destroy_boxed_opaque_existential_1(v15);
  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t HealthDataStoreQuery.queryDescriptors(_:_:)(uint64_t a1, uint64_t a2)
{
  v31 = a1;
  v59 = 0;
  v58 = 0;
  v57 = 0;
  v56 = 0;
  v55 = 0;
  v54 = 0;
  v53 = 0;
  v52 = 0;
  v60 = a2;
  v39 = HIDWORD(a2);
  v35 = a2;
  v25 = 0;
  v48 = type metadata accessor for Date();
  v46 = *(v48 - 8);
  v47 = v48 - 8;
  v20 = (v46[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](0);
  v21 = v15 - v20;
  v59 = v15 - v20;
  v22 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v23 = v15 - v22;
  v58 = v15 - v22;
  v42 = type metadata accessor for DateComponents();
  v37 = *(v42 - 8);
  v38 = v42 - 8;
  v24 = (*(v37 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v42);
  v41 = v15 - v24;
  v26 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v25);
  v27 = v15 - v26;
  v28 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v4);
  v49 = v15 - v28;
  v29 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x28223BE20](v6);
  v40 = v15 - v29;
  v57 = v15 - v29;
  v30 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v45 = v15 - v30;
  v56 = v15 - v30;
  v32 = type metadata accessor for Calendar();
  v33 = *(v32 - 8);
  v34 = v32 - 8;
  v10 = MEMORY[0x28223BE20](v31);
  v36 = v15 - v11;
  v55 = v15 - v11;
  v54 = v10;
  v53 = __PAIR64__(v39, v35);
  v52 = v12;
  static Calendar.current.getter();
  UInt32.getDateComponents()(v35, v41);
  Calendar.date(from:)();
  v44 = *(v37 + 8);
  v43 = v37 + 8;
  v44(v41, v42);
  UInt32.getDateComponents()(v39, v41);
  Calendar.date(from:)();
  v44(v41, v42);
  outlined init with copy of Date?(v45, v49);
  v50 = v46[6];
  v51 = v46 + 6;
  if (v50(v49, 1, v48) == 1)
  {
    outlined destroy of Date?(v49);
  }

  else
  {
    v18 = v46[4];
    v19 = v46 + 4;
    v18(v23, v49, v48);
    outlined init with copy of Date?(v40, v27);
    if (v50(v27, 1, v48) != 1)
    {
      v18(v21, v27, v48);
      v17 = HealthDataStoreQuery.queryDescriptors(_:_:_:)(v31, v23, v21);
      v16 = v46[1];
      v15[2] = v46 + 1;
      v16(v21, v48);
      v16(v23, v48);
      outlined destroy of Date?(v40);
      outlined destroy of Date?(v45);
      (*(v33 + 8))(v36, v32);
      return v17;
    }

    outlined destroy of Date?(v27);
    (v46[1])(v23, v48);
  }

  lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
  v15[1] = swift_allocError();
  *v14 = 1;
  swift_willThrow();
  outlined destroy of Date?(v40);
  outlined destroy of Date?(v45);
  (*(v33 + 8))(v36, v32);
  return v15[0];
}

void *outlined init with copy of Date?(const void *a1, void *a2)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t HealthDataStoreQuery.queryDescriptors(_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = a1;
  v26 = a2;
  v29 = a3;
  v48 = partial apply for closure #1 in HealthDataStoreQuery.queryDescriptors(_:_:_:);
  v23 = closure #2 in HealthDataStoreQuery.queryDescriptors(_:_:_:);
  v24 = closure #2 in HealthDataStoreQuery.queryDescriptors(_:_:_:);
  v62 = 0;
  v61 = 0;
  v60 = 0;
  v59 = 0;
  v57 = 0;
  v36 = 0;
  v32 = type metadata accessor for Date();
  v27 = *(v32 - 8);
  v28 = v32 - 8;
  v25 = (v27[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = &v13 - v25;
  v35 = &v13 - v25;
  v62 = MEMORY[0x28223BE20](v41);
  v61 = v4;
  v60 = v5;
  v59 = v6;
  v38 = objc_opt_self();
  v31 = v27[2];
  v30 = v27 + 2;
  v31(v3, v26, v32);
  v7.super.isa = Date._bridgeToObjectiveC()().super.isa;
  v8 = v35;
  isa = v7.super.isa;
  v34 = v27[1];
  v33 = v27 + 1;
  v34(v35, v32);
  v31(v8, v29, v32);
  v39 = Date._bridgeToObjectiveC()().super.isa;
  v34(v35, v32);
  type metadata accessor for HKQueryOptions();
  v37 = _allocateUninitializedArray<A>(_:)();
  lazy protocol witness table accessor for type HKQueryOptions and conformance HKQueryOptions();
  SetAlgebra<>.init(arrayLiteral:)();
  v43 = [v38 predicateForSamplesWithStartDate:isa endDate:v39 inclusiveEndDates:1 options:v58];
  MEMORY[0x277D82BD8](v39);
  MEMORY[0x277D82BD8](isa);
  v57 = v43;
  v56 = v41;

  MEMORY[0x277D82BE0](v43);
  v44 = &v51;
  v52 = v42;
  v53 = v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining23HealthDataRawSampleTypeOGMd);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17HKQueryDescriptorCGSgMd);
  v9 = lazy protocol witness table accessor for type [HealthDataRawSampleType] and conformance [A]();
  v10 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(v48, v44, v45, v46, MEMORY[0x277D84A98], v9, MEMORY[0x277D84AC0], v47);
  v49 = 0;
  v50 = v10;
  v18 = v10;

  MEMORY[0x277D82BD8](v43);
  v55 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySaySo17HKQueryDescriptorCGSgGMd);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17HKQueryDescriptorCGMd);
  lazy protocol witness table accessor for type [[HKQueryDescriptor]?] and conformance [A]();
  v11 = Sequence.compactMap<A>(_:)();
  v21 = 0;
  v22 = v11;
  v14 = v11;
  outlined destroy of [(start: UInt32, end: UInt32)]();
  v54 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySaySo17HKQueryDescriptorCGGMd);
  v16 = lazy protocol witness table accessor for type [[HKQueryDescriptor]] and conformance [A]();
  lazy protocol witness table accessor for type [HKQueryDescriptor] and conformance [A]();
  v17 = Sequence.flatMap<A>(_:)();
  v13 = v17;
  outlined destroy of [(start: UInt32, end: UInt32)]();
  MEMORY[0x277D82BD8](v43);
  return v13;
}

void closure #1 in HealthDataStoreQuery.queryDescriptors(_:_:_:)(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v24 = a3;
  v26 = a2;
  v25 = a4;
  v39 = 0;
  v38 = 0;
  v37 = 0;
  v29 = *a1;
  v39 = v29;
  v38 = a2;
  v37 = a3;
  v28 = &v36;
  swift_beginAccess();
  v31 = *(v26 + 32);
  v27 = v31;

  swift_endAccess();
  v34 = v29;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo12HKSampleTypeCGMd);
  v30 = v32;
  v4 = lazy protocol witness table accessor for type HealthDataRawSampleType and conformance HealthDataRawSampleType();
  MEMORY[0x25F8891D0](&v35, &v34, v31, &type metadata for HealthDataRawSampleType, v32, v4);
  if (v35)
  {
    v19 = v23;
    v15 = v35;

    outlined destroy of [(start: UInt32, end: UInt32)]();
    v33 = v15;
    v6 = v24;
    v16 = &v14;
    MEMORY[0x28223BE20](&v14);
    v17 = v13;
    v13[2] = v7;
    v18 = type metadata accessor for HKQueryDescriptor();
    v8 = lazy protocol witness table accessor for type [HKSampleType] and conformance [A]();
    v9 = v19;
    v11 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in closure #1 in HealthDataStoreQuery.queryDescriptors(_:_:_:), v17, v30, v18, MEMORY[0x277D84A98], v8, MEMORY[0x277D84AC0], v10);
    v20 = v9;
    v21 = v11;
    if (v9)
    {

      __break(1u);
    }

    else
    {
      v14 = v21;

      outlined destroy of [(start: UInt32, end: UInt32)]();

      v12 = v20;
      *v25 = v14;
      v22 = v12;
    }
  }

  else
  {
    outlined destroy of [(start: UInt32, end: UInt32)]();

    v5 = v23;
    *v25 = 0;
    v22 = v5;
  }
}

HKQueryDescriptor closure #1 in closure #1 in HealthDataStoreQuery.queryDescriptors(_:_:_:)@<X0>(Class *a1@<X0>, NSPredicate_optional *a2@<X1>, HKQueryDescriptor *a3@<X8>)
{
  sampleType.super.super.isa = *a1;
  type metadata accessor for HKQueryDescriptor();
  MEMORY[0x277D82BE0](sampleType.super.super.isa);
  MEMORY[0x277D82BE0](a2);
  result.super.isa = HKQueryDescriptor.__allocating_init(sampleType:predicate:)(sampleType, a2).super.isa;
  a3->super.isa = result.super.isa;
  return result;
}

uint64_t closure #2 in HealthDataStoreQuery.queryDescriptors(_:_:_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;

  *a2 = v4;
  return result;
}

unint64_t lazy protocol witness table accessor for type [[HKQueryDescriptor]?] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [[HKQueryDescriptor]?] and conformance [A];
  if (!lazy protocol witness table cache variable for type [[HKQueryDescriptor]?] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySaySo17HKQueryDescriptorCGSgGMd);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [[HKQueryDescriptor]?] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type [[HKQueryDescriptor]] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [[HKQueryDescriptor]] and conformance [A];
  if (!lazy protocol witness table cache variable for type [[HKQueryDescriptor]] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySaySo17HKQueryDescriptorCGGMd);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [[HKQueryDescriptor]] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type [HKQueryDescriptor] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [HKQueryDescriptor] and conformance [A];
  if (!lazy protocol witness table cache variable for type [HKQueryDescriptor] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo17HKQueryDescriptorCGMd);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [HKQueryDescriptor] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t HealthDataStoreQuery.queryDailyAggSedentaryHeartRate(for:)(uint64_t a1)
{
  v2[17] = v1;
  v2[6] = v2;
  v2[45] = 0;
  v2[7] = 0;
  v2[8] = 0;
  v2[9] = 0;
  v2[10] = 0;
  v2[12] = 0;
  v2[13] = 0;
  v2[14] = 0;
  v2[15] = 0;
  v2[16] = 0;
  v2[46] = a1;
  v3 = type metadata accessor for Calendar.Identifier();
  v2[18] = v3;
  v2[19] = *(v3 - 8);
  v2[20] = swift_task_alloc();
  v4 = type metadata accessor for Calendar();
  v2[21] = v4;
  v2[22] = *(v4 - 8);
  v2[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v5 = type metadata accessor for Date();
  v2[26] = v5;
  v2[27] = *(v5 - 8);
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[45] = a1;
  v2[7] = v1;

  return MEMORY[0x2822009F8](HealthDataStoreQuery.queryDailyAggSedentaryHeartRate(for:), 0);
}

uint64_t HealthDataStoreQuery.queryDailyAggSedentaryHeartRate(for:)()
{
  v66 = *(v0 + 200);
  v63 = *(v0 + 184);
  v62 = *(v0 + 176);
  v64 = *(v0 + 168);
  v58 = *(v0 + 160);
  v57 = *(v0 + 152);
  v59 = *(v0 + 144);
  v61 = *(v0 + 368);
  *(v0 + 48) = v0;
  v48 = [objc_opt_self() _predicateForObjectsFromAppleWatches];
  *(v0 + 248) = v48;
  *(v0 + 64) = v48;
  v51 = objc_opt_self();
  v49 = *MEMORY[0x277CCC4B8];
  MEMORY[0x277D82BE0](*MEMORY[0x277CCC4B8]);
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v53 = MEMORY[0x25F8892C0](v1);

  MEMORY[0x277D82BD8](v49);
  _allocateUninitializedArray<A>(_:)();
  v50 = v2;
  _HKPrivatePregnancyStartDateSource.rawValue.getter();
  v50[3] = MEMORY[0x277D83B88];
  *v50 = v3;
  _finalizeUninitializedArray<A>(_:)();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v54 = [v51 predicateForObjectsWithMetadataKey:v53 allowedValues:isa];
  *(v0 + 256) = v54;
  MEMORY[0x277D82BD8](isa);
  MEMORY[0x277D82BD8](v53);
  *(v0 + 72) = v54;
  type metadata accessor for HKCategoryValueSleepAnalysis();
  _allocateUninitializedArray<A>(_:)();
  *v4 = 1;
  v4[1] = 3;
  v4[2] = 4;
  v4[3] = 5;
  _finalizeUninitializedArray<A>(_:)();
  lazy protocol witness table accessor for type HKCategoryValueSleepAnalysis and conformance HKCategoryValueSleepAnalysis();
  Set.init(arrayLiteral:)();
  lazy protocol witness table accessor for type HKCategoryValueSleepAnalysis and conformance HKCategoryValueSleepAnalysis();
  v55 = static HKCategoryValuePredicateProviding<>.predicateForSamples(equalTo:)();
  *(v0 + 264) = v55;

  *(v0 + 80) = v55;
  v56 = *(v57 + 104);
  v56(v58, *MEMORY[0x277CC9830], v59);
  Calendar.init(identifier:)();
  v60 = *(v57 + 8);
  v60(v58, v59);
  sleepDayInterval(morningIndex:calendar:)(v61, v63, v66);
  v65 = *(v62 + 8);
  v65(v63, v64);
  v67 = type metadata accessor for DateInterval();
  v68 = *(v67 - 8);
  v69 = *(v68 + 48);
  if (v69(v66, 1) == 1)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v39 = *(v47 + 200);
  v46 = *(v47 + 192);
  v44 = *(v47 + 184);
  v45 = *(v47 + 168);
  v41 = *(v47 + 160);
  v42 = *(v47 + 144);
  v43 = *(v47 + 372);
  DateInterval.start.getter();
  v40 = *(v68 + 8);
  v40(v39, v67);
  v56(v41, *MEMORY[0x277CC9830], v42);
  Calendar.init(identifier:)();
  v60(v41, v42);
  sleepDayInterval(morningIndex:calendar:)(v43, v44, v46);
  v65(v44, v45);
  if ((v69)(v46, 1, v67) == 1)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v15 = *(v47 + 240);
  v16 = *(v47 + 232);
  v20 = *(v47 + 224);
  v18 = *(v47 + 208);
  v13 = *(v47 + 192);
  v36 = *(v47 + 372);
  v35 = *(v47 + 368);
  v37 = *(v47 + 136);
  v14 = *(v47 + 216);
  DateInterval.start.getter();
  v40(v13, v67);
  v21 = objc_opt_self();
  v17 = *(v14 + 16);
  v17(v20, v15, v18);
  v23 = Date._bridgeToObjectiveC()().super.isa;
  v19 = *(v14 + 8);
  *(v47 + 272) = v19;
  *(v47 + 280) = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v19(v20, v18);
  v17(v20, v16, v18);
  v22 = Date._bridgeToObjectiveC()().super.isa;
  v19(v20, v18);
  type metadata accessor for HKQueryOptions();
  _allocateUninitializedArray<A>(_:)();
  lazy protocol witness table accessor for type HKQueryOptions and conformance HKQueryOptions();
  SetAlgebra<>.init(arrayLiteral:)();
  v28 = [v21 predicateForSamplesWithStartDate:v23 endDate:v22 options:*(v47 + 88)];
  *(v47 + 288) = v28;
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](v23);
  *(v47 + 96) = v28;
  type metadata accessor for NSCompoundPredicate();
  type metadata accessor for NSPredicate();
  _allocateUninitializedArray<A>(_:)();
  v24 = v6;
  MEMORY[0x277D82BE0](v28);
  *v24 = v28;
  MEMORY[0x277D82BE0](v55);
  v24[1] = v55;
  _finalizeUninitializedArray<A>(_:)();
  predicate = @nonobjc NSCompoundPredicate.__allocating_init(andPredicateWithSubpredicates:)();
  *(v47 + 296) = predicate;
  *(v47 + 104) = predicate;
  type metadata accessor for HKQueryDescriptor();
  type metadata accessor for HKCategoryType();
  v25 = *MEMORY[0x277CCBAB8];
  v7 = MEMORY[0x277D82BE0](*MEMORY[0x277CCBAB8]);
  sampleType.super.super.isa = MEMORY[0x25F889940](v25, v7);
  MEMORY[0x277D82BE0](predicate);
  v33 = HKQueryDescriptor.__allocating_init(sampleType:predicate:)(sampleType, predicate).super.isa;
  *(v47 + 304) = v33;
  *(v47 + 112) = v33;
  _allocateUninitializedArray<A>(_:)();
  v29 = v8;
  MEMORY[0x277D82BE0](v48);
  *v29 = v48;
  MEMORY[0x277D82BE0](v28);
  v29[1] = v28;
  MEMORY[0x277D82BE0](v54);
  v29[2] = v54;
  _finalizeUninitializedArray<A>(_:)();
  v31 = @nonobjc NSCompoundPredicate.__allocating_init(andPredicateWithSubpredicates:)();
  *(v47 + 312) = v31;
  *(v47 + 120) = v31;
  type metadata accessor for HKQuantityType();
  v30 = *MEMORY[0x277CCCB90];
  v9 = MEMORY[0x277D82BE0](*MEMORY[0x277CCCB90]);
  v32.super.super.isa = MEMORY[0x25F889950](v30, v9);
  MEMORY[0x277D82BE0](v31);
  v34 = HKQueryDescriptor.__allocating_init(sampleType:predicate:)(v32, v31).super.isa;
  *(v47 + 320) = v34;
  *(v47 + 128) = v34;
  v10 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("queryDailyAggSedentaryHeartRate(for:)", 0x25uLL, 1);
  *(v47 + 328) = v10._object;
  MEMORY[0x277D82BE0](v33);
  MEMORY[0x277D82BE0](v34);

  v38 = swift_task_alloc();
  *(v47 + 336) = v38;
  *(v38 + 16) = v33;
  *(v38 + 24) = v34;
  *(v38 + 32) = v35;
  *(v38 + 36) = v36;
  *(v38 + 40) = v37;
  v11 = swift_task_alloc();
  *(v47 + 344) = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt32VSfG9daySHR10s_AC05nightC0SDyABSiG0B9SHRCountsAF0dE0tMd);
  *v11 = *(v47 + 48);
  v11[1] = HealthDataStoreQuery.queryDailyAggSedentaryHeartRate(for:);

  return MEMORY[0x2822008A0](v47 + 16, 0, 0, v10._countAndFlagsBits, v10._object, partial apply for closure #1 in HealthDataStoreQuery.queryDailyAggSedentaryHeartRate(for:), v38, v12);
}

{
  v6 = *v1;
  v6[6] = *v1;
  v6[44] = v0;

  if (v0)
  {
    v2 = HealthDataStoreQuery.queryDailyAggSedentaryHeartRate(for:);
  }

  else
  {
    v5 = v6[40];
    v4 = v6[38];

    v2 = HealthDataStoreQuery.queryDailyAggSedentaryHeartRate(for:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v1 = v0[40];
  v4 = v0[39];
  v5 = v0[38];
  v6 = v0[37];
  v7 = v0[36];
  v9 = v0[34];
  v10 = v0[33];
  v11 = v0[32];
  v12 = v0[31];
  v13 = v0[30];
  v14 = v0[29];
  v8 = v0[26];
  v0[6] = v0;
  v15 = v0[2];
  v16 = v0[3];
  v17 = v0[4];
  v18 = v0[5];
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  v9(v14, v8);
  v9(v13, v8);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);

  v2 = *(v0[6] + 8);

  return v2(v15, v16, v17, v18);
}

{
  v3 = v0[40];
  v4 = v0[39];
  v5 = v0[38];
  v6 = v0[37];
  v7 = v0[36];
  v9 = v0[34];
  v10 = v0[33];
  v11 = v0[32];
  v12 = v0[31];
  v13 = v0[30];
  v14 = v0[29];
  v8 = v0[26];
  v0[6] = v0;

  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v3);

  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  v9(v14, v8);
  v9(v13, v8);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);

  v1 = *(v0[6] + 8);

  return v1();
}

unint64_t type metadata accessor for NSCompoundPredicate()
{
  v2 = lazy cache variable for type metadata for NSCompoundPredicate;
  if (!lazy cache variable for type metadata for NSCompoundPredicate)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for NSCompoundPredicate);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for NSPredicate()
{
  v2 = lazy cache variable for type metadata for NSPredicate;
  if (!lazy cache variable for type metadata for NSPredicate)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for NSPredicate);
    return ObjCClassMetadata;
  }

  return v2;
}

id @nonobjc NSCompoundPredicate.__allocating_init(andPredicateWithSubpredicates:)()
{
  type metadata accessor for NSPredicate();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v2 = [swift_getObjCClassFromMetadata() andPredicateWithSubpredicates_];
  MEMORY[0x277D82BD8](isa);

  return v2;
}

uint64_t closure #1 in HealthDataStoreQuery.queryDailyAggSedentaryHeartRate(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x277D82BE0](a2);
  MEMORY[0x277D82BE0](a3);

  _s10ObjectiveC15autoreleasepool8invokingq_q_yxYKXE_txYKs5ErrorRzRi__r0_lF(partial apply for closure #1 in closure #1 in HealthDataStoreQuery.queryDailyAggSedentaryHeartRate(for:), MEMORY[0x277D84A98], MEMORY[0x277D84F78] + 8, v6, v6);
  MEMORY[0x277D82BD8](a2);
  MEMORY[0x277D82BD8](a3);
}

uint64_t closure #1 in closure #1 in HealthDataStoreQuery.queryDailyAggSedentaryHeartRate(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = a1;
  v23 = a2;
  v27 = a3;
  v42 = a5;
  v41 = 0;
  v38 = partial apply for closure #1 in closure #1 in closure #1 in HealthDataStoreQuery.queryDailyAggSedentaryHeartRate(for:);
  v52 = 0;
  v51 = 0;
  v50 = 0;
  v49 = 0;
  v48 = 0;
  v47 = 0;
  v53 = a4;
  v36 = a4;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySDys6UInt32VSfG9daySHR10s_AC05nightC0SDyABSiG0B9SHRCountsAF0dE0ts5Error_pGMd);
  v30 = *(v34 - 8);
  v31 = v34 - 8;
  v28 = v30;
  v29 = *(v30 + 64);
  v20 = (v29 + 15) & 0xFFFFFFFFFFFFFFF0;
  v33 = &v19 - v20;
  v52 = MEMORY[0x28223BE20](v22);
  v51 = v5;
  v50 = v6;
  v49 = __PAIR64__(v7, v36);
  v48 = v8;
  v21 = 0;
  type metadata accessor for HKSampleQuery();
  v25 = type metadata accessor for HKQueryDescriptor();
  v26 = _allocateUninitializedArray<A>(_:)();
  v24 = v9;
  MEMORY[0x277D82BE0](v22);
  v10 = v23;
  *v24 = v22;
  MEMORY[0x277D82BE0](v10);
  v11 = v26;
  v24[1] = v23;
  _finalizeUninitializedArray<A>(_:)();
  v40 = v11;
  v37 = 0;
  (*(v30 + 16))(v33, v27, v34);
  v32 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v35 = (v32 + v29 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v39 = swift_allocObject();
  (*(v30 + 32))(v39 + v32, v33, v34);
  v12 = HIDWORD(v36);
  v13 = v37;
  v14 = v38;
  v15 = v39;
  v16 = v40;
  v17 = (v39 + v35);
  *v17 = v36;
  v17[1] = v12;
  v45 = HKSampleQuery.__allocating_init(queryDescriptors:limit:resultsHandler:)(v16, v13, v14, v15);
  v47 = v45;
  v43 = &v46;
  swift_beginAccess();
  v44 = *(v42 + 16);
  MEMORY[0x277D82BE0](v44);
  swift_endAccess();
  [v44 executeQuery_];
  MEMORY[0x277D82BD8](v44);
  return MEMORY[0x277D82BD8](v45);
}

void closure #1 in closure #1 in closure #1 in HealthDataStoreQuery.queryDailyAggSedentaryHeartRate(for:)(void *a1, void *a2, id a3, void *a4, void *a5)
{
  v22[0]._rawValue = 0;
  v21[0] = 0;
  v20 = 0;
  v19 = 0;
  v18 = 0;
  v17._rawValue = 0;
  v16._rawValue = 0;
  v22[6]._rawValue = a5;
  v22[5]._rawValue = a1;
  v22[4]._rawValue = a2;
  v22[3]._rawValue = a3;
  v22[2]._rawValue = a4;
  v22[1]._rawValue = a5;
  v5 = a3;
  if (a3)
  {
    v6 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySDys6UInt32VSfG9daySHR10s_AC05nightC0SDyABSiG0B9SHRCountsAF0dE0ts5Error_pGMd);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {

    if (a2)
    {
      v22[0]._rawValue = a2;
      v21[0] = Dictionary.init()();
      v20 = Dictionary.init()();
      v19 = Dictionary.init()();
      v18 = Dictionary.init()();
      type metadata accessor for HKCategorySample();
      v17._rawValue = Array.init()();
      v7 = type metadata accessor for HKQuantitySample();
      v16._rawValue = Array.init()();
      splitHRAndSleepingHours(_:_:_:)(v22, &v17, &v16);
      rawValue = v16._rawValue;

      v9 = MEMORY[0x25F8895B0](rawValue, v7);

      if (v9 <= 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32V_SftMd);
        _allocateUninitializedArray<A>(_:)();
        Dictionary.init(dictionaryLiteral:)();
        _allocateUninitializedArray<A>(_:)();
        Dictionary.init(dictionaryLiteral:)();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32V_SitMd);
        _allocateUninitializedArray<A>(_:)();
        Dictionary.init(dictionaryLiteral:)();
        _allocateUninitializedArray<A>(_:)();
        Dictionary.init(dictionaryLiteral:)();
      }

      else
      {
        extractAggSHRBatched(_:_:_:_:_:_:_:)(&v17, &v16._rawValue, a5, v21, &v20, &v19, &v18);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySDys6UInt32VSfG9daySHR10s_AC05nightC0SDyABSiG0B9SHRCountsAF0dE0ts5Error_pGMd);
      CheckedContinuation.resume(returning:)();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32V_SftMd);
      _allocateUninitializedArray<A>(_:)();
      v10 = Dictionary.init(dictionaryLiteral:)();
      _allocateUninitializedArray<A>(_:)();
      v11 = Dictionary.init(dictionaryLiteral:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32V_SitMd);
      _allocateUninitializedArray<A>(_:)();
      v12 = Dictionary.init(dictionaryLiteral:)();
      _allocateUninitializedArray<A>(_:)();
      v21[1] = v10;
      v21[2] = v11;
      v21[3] = v12;
      v21[4] = Dictionary.init(dictionaryLiteral:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySDys6UInt32VSfG9daySHR10s_AC05nightC0SDyABSiG0B9SHRCountsAF0dE0ts5Error_pGMd);
      CheckedContinuation.resume(returning:)();
    }
  }
}

Swift::Void __swiftcall splitHRAndSleepingHours(_:_:_:)(Swift::OpaquePointer *a1, Swift::OpaquePointer *a2, Swift::OpaquePointer *a3)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8HKSampleCGMd);
  lazy protocol witness table accessor for type [HKSample] and conformance [A]();
  Collection<>.makeIterator()();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySo8HKSampleCGGMd);
    IndexingIterator.next()();
    if (!v9)
    {
      break;
    }

    type metadata accessor for NSObject();
    v7 = [v9 sampleType];
    type metadata accessor for HKCategoryType();
    v5 = *MEMORY[0x277CCBAB8];
    v3 = MEMORY[0x277D82BE0](*MEMORY[0x277CCBAB8]);
    v6 = MEMORY[0x25F889940](v5, v3);
    v8 = static NSObject.== infix(_:_:)();
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v7);
    (MEMORY[0x277D82BE0])();
    objc_opt_self();
    swift_dynamicCastObjCClassUnconditional();
    if (v8)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo16HKCategorySampleCGMd);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo16HKQuantitySampleCGMd);
    }

    Array.append(_:)();
    (MEMORY[0x277D82BD8])();
  }

  outlined destroy of [(start: UInt32, end: UInt32)]();
  type metadata accessor for HKSample();
  v4 = default argument 1 of NightingaleDPFLRunner.sendLocationAsync<A>(location:force:work:)();
  Array.removeAll(keepingCapacity:)(v4 & 1);
}

unint64_t lazy protocol witness table accessor for type [HKSample] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [HKSample] and conformance [A];
  if (!lazy protocol witness table cache variable for type [HKSample] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo8HKSampleCGMd);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [HKSample] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [HKSample] and conformance [A];
  if (!lazy protocol witness table cache variable for type [HKSample] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo8HKSampleCGMd);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [HKSample] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

void extractAggSHRBatched(_:_:_:_:_:_:_:)(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v243 = v297;
  v192 = &v271;
  v223 = a7;
  v222 = a6;
  v221 = a5;
  v220 = a4;
  v224 = a2;
  v237 = a1;
  v215 = 0;
  v305 = 0;
  v304 = 0;
  v303 = 0;
  v302 = 0;
  v301 = 0;
  v300 = 0;
  memset(v299, 0, sizeof(v299));
  v298 = 0;
  v297[2] = 0;
  *(v297 + 5) = 0;
  v297[0] = 0;
  v292[8] = 0;
  v292[7] = 0;
  v292[5] = 0;
  v292[4] = 0;
  *(v292 + 5) = 0;
  v292[0] = 0;
  v288 = 0;
  v285[0]._rawValue = 0;
  v284._rawValue = 0;
  v271._rawValue = 0;
  v260 = 0;
  v257 = 0;
  v306 = a3;
  v244 = a3;
  v193 = a3;
  v194 = type metadata accessor for Date();
  v195 = *(v194 - 8);
  v196 = v195;
  v203 = *(v195 + 64);
  v7 = MEMORY[0x28223BE20](0);
  v205 = (v203 + 15) & 0xFFFFFFFFFFFFFFF0;
  v197 = &v69[-v205];
  v8 = MEMORY[0x28223BE20](v7);
  v198 = &v69[-v205];
  v9 = MEMORY[0x28223BE20](v8);
  v199 = &v69[-v205];
  v10 = MEMORY[0x28223BE20](v9);
  v200 = &v69[-v205];
  v11 = MEMORY[0x28223BE20](v10);
  v201 = &v69[-v205];
  v12 = MEMORY[0x28223BE20](v11);
  v202 = &v69[-v205];
  v13 = MEMORY[0x28223BE20](v12);
  v204 = &v69[-v205];
  MEMORY[0x28223BE20](v13);
  v206 = &v69[-v205];
  v207 = type metadata accessor for Calendar.Identifier();
  v208 = *(v207 - 8);
  v209 = v208;
  MEMORY[0x28223BE20](v215);
  v210 = &v69[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v211 = type metadata accessor for Calendar();
  v212 = *(v211 - 8);
  v213 = v212;
  MEMORY[0x28223BE20](v211 - 8);
  v214 = &v69[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v216 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd) - 8) + 64);
  v16 = MEMORY[0x28223BE20](v215);
  v218 = (v216 + 15) & 0xFFFFFFFFFFFFFFF0;
  v217 = &v69[-v218];
  MEMORY[0x28223BE20](v16);
  v219 = &v69[-v218];
  v225 = type metadata accessor for DateInterval();
  v226 = *(v225 - 8);
  v227 = v226;
  v229 = *(v226 + 64);
  v17 = MEMORY[0x28223BE20](v237);
  v228 = &v69[-((v229 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *(v18 + 128) = v228;
  v19 = MEMORY[0x28223BE20](v17);
  v230 = &v69[-v20];
  *(v21 + 120) = &v69[-v20];
  v22 = MEMORY[0x28223BE20](v19);
  v23 = v244;
  v24 = HIDWORD(v244);
  v231 = &v69[-v25];
  v26[14] = &v69[-v25];
  v26[13] = v22;
  v26[12] = v27;
  v300 = __PAIR64__(v24, v23);
  v26[10] = v28;
  v26[9] = v29;
  v26[8] = v30;
  v26[7] = v31;
  v232 = 0x277CCD000uLL;
  v235 = [objc_opt_self() countUnit];
  v233 = [objc_opt_self() minuteUnit];
  v236 = [v235 unitDividedByUnit_];
  v234 = v236;

  v32 = v237;
  v243[6] = v236;
  v238 = consolidateSleepHours(_:)(v32);
  v243[5] = v238;
  v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation12DateIntervalV8interval_Sf2hrtGMd);
  v241 = MEMORY[0x277D84CC0];
  v240 = MEMORY[0x277D84CD0];
  v243[4] = Dictionary.init()();
  v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation12DateIntervalVGMd);
  v243[3] = Dictionary.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19NightingaleTraining21AugmentedIntervalTreeCy10Foundation4DateVs6UInt32VGMd);
  v33 = AugmentedIntervalTree.__allocating_init()();
  v34 = v244;
  v35 = HIDWORD(v244);
  v245 = v33;
  v243[2] = v33;
  v295 = v34;
  v296 = v35;
  v247 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNys6UInt32VGMd);
  v246 = v247;
  v248 = lazy protocol witness table accessor for type ClosedRange<UInt32> and conformance <> ClosedRange<A>();
  Collection<>.makeIterator()();
  for (i = v249; ; i = v181)
  {
    v188 = i;
    v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySNys6UInt32VGGMd);
    IndexingIterator.next()();
    v190 = v293;
    v191 = v189;
    if (v294)
    {
      break;
    }

    v187 = v190;
    v186 = v190;
    v257 = v190;
    v185 = 0;
    v256 = _allocateUninitializedArray<A>(_:)();
    v255 = v186;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt32VSay10Foundation12DateIntervalVGGMd);
    Dictionary.subscript.setter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalV8interval_Sf2hrtMd);
    v254 = _allocateUninitializedArray<A>(_:)();
    v253 = v186;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt32VSay10Foundation12DateIntervalV8interval_Sf2hrtGGMd);
    Dictionary.subscript.setter();
    (*(v209 + 104))(v210, *MEMORY[0x277CC9830], v207);
    Calendar.init(identifier:)();
    (*(v209 + 8))(v210, v207);
    sleepDayInterval(morningIndex:calendar:)(v186, v214, v219);
    (*(v213 + 8))(v214, v211);
    if ((*(v227 + 48))(v219, 1, v225) == 1)
    {
      LODWORD(v67) = 0;
      v66 = 621;
      LOBYTE(v65) = 2;
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    v182 = v188;
    (*(v227 + 32))(v231, v219, v225);
    DateInterval.start.getter();
    DateInterval.end.getter();
    v36 = v182;
    v251 = v186;
    v252 = 0;
    AugmentedIntervalTree.insert(start:end:context:)(v206, v204, &v251);
    v183 = v36;
    v184 = v36;
    if (v36)
    {
      v83 = v184;
      v82 = *(v196 + 8);
      v81 = v196 + 8;
      (v82)(v204, v194, 0);
      v82(v206, v194);
      (*(v227 + 8))(v231, v225);

      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();

      v84 = v83;
      return;
    }

    v181 = 0;
    v180 = *(v196 + 8);
    v179 = v196 + 8;
    v180(v204, v194);
    v180(v206, v194);
    (*(v227 + 8))(v231, v225);
  }

  v176 = v191;

  v192[35]._rawValue = v238;
  v177 = lazy protocol witness table accessor for type [DateInterval] and conformance [A]();
  Collection<>.makeIterator()();
  for (j = v188; ; j = v161)
  {
    v175 = j;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySay10Foundation12DateIntervalVGGMd);
    IndexingIterator.next()();
    if ((*(v227 + 48))(v217, 1, v225) == 1)
    {
      break;
    }

    v171 = v175;
    (*(v227 + 32))(v230, v217, v225);
    DateInterval.start.getter();
    DateInterval.end.getter();
    v37 = v171;
    v38 = AugmentedIntervalTree.search(start:end:)(v202, v201);
    v172 = v37;
    v173 = v38;
    v174 = v37;
    if (v37)
    {
      v80 = v174;
      v79 = *(v196 + 8);
      v78 = v196 + 8;
      (v79)(v201, v194, 0);
      v79(v202, v194);
      (*(v227 + 8))(v230, v225);
      outlined destroy of [(start: UInt32, end: UInt32)]();

      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();

      v84 = v80;
      return;
    }

    v164 = v173;
    v167 = 0;
    v163 = *(v196 + 8);
    v162 = v196 + 8;
    v163(v201, v194);
    v163(v202, v194);
    v258 = v164;
    v168 = v69;
    MEMORY[0x28223BE20](v69);
    v165 = &v65;
    v67 = &v298;
    v68 = v39;
    v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining8IntervalVy10Foundation4DateVs6UInt32VGGMd);
    lazy protocol witness table accessor for type [Interval<Date, UInt32>] and conformance [A]();
    v40 = v167;
    Sequence.forEach(_:)();
    v169 = v40;
    v170 = v168;
    if (v40)
    {
      __break(1u);
LABEL_45:
      v77 = v154;
      v76 = v153;
      v75 = *(v196 + 8);
      v74 = v196 + 8;
      (v75)(v197, v194, 0);
      v75(v198, v194);
      (*(v227 + 8))(v228, v225);

      outlined destroy of [(start: UInt32, end: UInt32)]();

      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();

      v84 = v77;
      return;
    }

    v161 = 0;
    outlined destroy of [(start: UInt32, end: UInt32)]();
    (*(v227 + 8))(v230, v225);
  }

  outlined destroy of [(start: UInt32, end: UInt32)]();
  v158 = *v224;

  v192[32]._rawValue = v158;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo16HKQuantitySampleCGMd);
  lazy protocol witness table accessor for type [HKQuantitySample] and conformance [A]();
  Collection<>.makeIterator()();
  for (k = v175; ; k = v136)
  {
    v156 = k;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySo16HKQuantitySampleCGGMd);
    IndexingIterator.next()();
    rawValue = v192[31]._rawValue;
    if (!rawValue)
    {
      break;
    }

    v155 = rawValue;
    v150 = rawValue;
    v149 = v156;
    v260 = rawValue;
    v41 = rawValue;
    v148 = [v150 startDate];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v42 = v150;
    v147 = [v150 endDate];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    DateInterval.init(start:end:)();
    DateInterval.start.getter();
    DateInterval.end.getter();
    v43 = v149;
    v44 = AugmentedIntervalTree.search(start:end:)(v198, v197);
    v151 = v43;
    v152 = v44;
    v153 = v150;
    v154 = v43;
    if (v43)
    {
      goto LABEL_45;
    }

    v139 = v152;
    v142 = 0;
    v138 = *(v196 + 8);
    v137 = v196 + 8;
    v138(v197, v194);
    v138(v198, v194);
    v259 = v139;
    v45 = v150;
    v46 = v234;
    v143 = v69;
    MEMORY[0x28223BE20](v69);
    v140 = &v69[-48];
    v65 = v299;
    v66 = v228;
    v67 = v150;
    v68 = v47;
    v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining8IntervalVy10Foundation4DateVs6UInt32VGGMd);
    lazy protocol witness table accessor for type [Interval<Date, UInt32>] and conformance [A]();
    v48 = v142;
    Sequence.forEach(_:)();
    v144 = v48;
    v145 = v143;
    v146 = v150;
    if (v48)
    {

      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      v73 = v105;
      v72 = v104;
      v71 = v103;
      v70 = 1;
      v102(v101);
      v72(v71, v70);
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();

      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();

      return;
    }

    v136 = 0;

    outlined destroy of [(start: UInt32, end: UInt32)]();
    (*(v227 + 8))(v228, v225);
  }

  outlined destroy of [(start: UInt32, end: UInt32)]();
  v291 = v193;
  Collection<>.makeIterator()();
  for (m = v156; ; m = v115)
  {
    v133 = m;
    IndexingIterator.next()();
    v134 = v289;
    if (v290)
    {
      break;
    }

    v132 = v134;
    v130 = v134;
    v288 = v134;
    v49 = v243[3];
    v286 = v134;
    MEMORY[0x25F8891D0](&v287, &v286, v49, MEMORY[0x277D84CC0], v242, MEMORY[0x277D84CD0]);
    v131 = v192[25]._rawValue;
    if (v131)
    {
      v129 = v131;
    }

    else
    {
      LODWORD(v67) = 0;
      v66 = 645;
      LOBYTE(v65) = 2;
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    v127 = v129;
    v192[23]._rawValue = v129;
    v128 = Collection.isEmpty.getter();

    if (v128)
    {
      v50 = v243[4];
      v269 = v130;
      MEMORY[0x25F8891D0](&v270, &v269, v50, MEMORY[0x277D84CC0], v239, MEMORY[0x277D84CD0]);
      v126 = v270;
      if (v270)
      {
        v125 = v126;
      }

      else
      {
        LODWORD(v67) = 0;
        v66 = 646;
        LOBYTE(v65) = 2;
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      v122 = v133;
      v268 = v125;
      v51 = lazy protocol witness table accessor for type [(interval: DateInterval, hr: Float)] and conformance [A]();
      v52 = v122;
      v54 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #3 in extractAggSHRBatched(_:_:_:_:_:_:_:), 0, v239, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v51, MEMORY[0x277D84AC0], v53);
      v123 = v52;
      v124 = v54;
      if (v52)
      {
        goto LABEL_47;
      }

      v120 = v124;
      outlined destroy of [(start: UInt32, end: UInt32)]();

      v55 = v120;
      v192->_rawValue = v120;
      v267 = v55;
      v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd);
      lazy protocol witness table accessor for type [Float] and conformance [A]();
      v121 = Collection.isEmpty.getter();

      if ((v121 & 1) == 0)
      {
        v265 = getBottomPercentile(percentile:_:)(10, &v271);
        v118 = 0;
        v266 = 0;
        v264 = v130;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt32VSfGMd);
        Dictionary.subscript.setter();
        v116 = v192->_rawValue;

        v117 = MEMORY[0x25F8895B0](v116, MEMORY[0x277D83A90]);

        v262 = v117;
        v263 = v118;
        v261 = v130;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt32VSiGMd);
        Dictionary.subscript.setter();
      }

      outlined destroy of [(start: UInt32, end: UInt32)]();
      v115 = v123;
    }

    else
    {
      v110 = MEMORY[0x277D83A90];
      v192[22]._rawValue = Array.init()();
      v56 = Array.init()();
      v57 = v130;
      v192[21]._rawValue = v56;
      v283[9] = v57;
      v112 = v283;
      v111 = v283;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt32VSay10Foundation12DateIntervalVGGMd);
      v113 = Dictionary.subscript.modify();
      v114 = v58;
      if (!v58->_rawValue)
      {
        LODWORD(v67) = 0;
        v66 = 654;
        LOBYTE(v65) = 2;
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      v282[9] = v130;
      v107 = v282;
      v106 = v282;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt32VSay10Foundation12DateIntervalV8interval_Sf2hrtGGMd);
      v108 = Dictionary.subscript.modify();
      v109 = v59;
      if (!v59->_rawValue)
      {
        LODWORD(v67) = 0;
        v66 = 654;
        LOBYTE(v65) = 2;
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      splitHR(_:_:_:_:)(v285, &v284, v114, v109);
      v100 = v60;
      v101 = v106;
      v102 = v108;
      v103 = v111;
      v104 = v113;
      v105 = v60;
      if (v60)
      {
        goto LABEL_48;
      }

      v94 = 0;
      v108(v106);
      v113(v111, v94);
      v98 = v192[21]._rawValue;

      v192[10]._rawValue = v98;
      v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd);
      v95 = v96;
      v97 = lazy protocol witness table accessor for type [Float] and conformance [A]();
      v99 = Collection.isEmpty.getter();

      if ((v99 & 1) == 0)
      {
        v275 = getBottomPercentile(percentile:_:)(10, &v284);
        v93 = 0;
        v276 = 0;
        v274 = v130;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt32VSfGMd);
        Dictionary.subscript.setter();
        v91 = v192[21]._rawValue;

        v92 = MEMORY[0x25F8895B0](v91, MEMORY[0x277D83A90]);

        v61 = v93;
        v62 = v130;
        v192[2]._rawValue = v92;
        v273 = v61;
        v272 = v62;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt32VSiGMd);
        Dictionary.subscript.setter();
      }

      v89 = v192[22]._rawValue;

      v192[9]._rawValue = v89;
      v90 = Collection.isEmpty.getter();

      if ((v90 & 1) == 0)
      {
        v280 = getBottomPercentile(percentile:_:)(10, v285);
        v88 = 0;
        v281 = 0;
        v279 = v130;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt32VSfGMd);
        Dictionary.subscript.setter();
        v86 = v192[22]._rawValue;

        v87 = MEMORY[0x25F8895B0](v86, MEMORY[0x277D83A90]);

        v63 = v88;
        v64 = v130;
        v192[6]._rawValue = v87;
        v278 = v63;
        v277 = v64;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt32VSiGMd);
        Dictionary.subscript.setter();
      }

      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      v115 = v100;
    }
  }

  v85 = v133;

  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
}

uint64_t HealthDataStoreQuery.queryDailyAggSedentaryHeartRateBatched(_:_:)(uint64_t a1, int a2)
{
  *(v3 + 64) = v2;
  *(v3 + 108) = a2;
  *(v3 + 48) = v3;
  *(v3 + 100) = 0;
  *(v3 + 96) = 0;
  *(v3 + 56) = 0;
  *(v3 + 112) = a1;
  *(v3 + 100) = a1;
  *(v3 + 96) = a2;
  *(v3 + 56) = v2;
  return MEMORY[0x2822009F8](HealthDataStoreQuery.queryDailyAggSedentaryHeartRateBatched(_:_:), 0);
}

uint64_t HealthDataStoreQuery.queryDailyAggSedentaryHeartRateBatched(_:_:)()
{
  v4 = *(v0 + 116);
  v3 = *(v0 + 112);
  v5 = *(v0 + 64);
  v6 = *(v0 + 108);
  *(v0 + 48) = v0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt32VSfG9daySHR10s_AC05nightC0SDyABSiG0B9SHRCountsAF0dE0tMd);

  v8 = swift_task_alloc();
  *(v0 + 72) = v8;
  *(v8 + 16) = v3;
  *(v8 + 20) = v4;
  *(v8 + 24) = v5;
  *(v8 + 32) = v6;
  default argument 1 of withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v9, v9);
  v1 = swift_task_alloc();
  *(v7 + 80) = v1;
  *v1 = *(v7 + 48);
  v1[1] = HealthDataStoreQuery.queryDailyAggSedentaryHeartRateBatched(_:_:);

  return MEMORY[0x282200740](v7 + 16, v9, v9, 0, 0, &async function pointer to partial apply for closure #1 in HealthDataStoreQuery.queryDailyAggSedentaryHeartRateBatched(_:_:), v8);
}

{
  v4 = *v1;
  *(v4 + 48) = *v1;
  *(v4 + 88) = v0;

  if (v0)
  {
    v2 = HealthDataStoreQuery.queryDailyAggSedentaryHeartRateBatched(_:_:);
  }

  else
  {

    v2 = HealthDataStoreQuery.queryDailyAggSedentaryHeartRateBatched(_:_:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v0[6] = v0;
  return (*(v0[6] + 8))(v0[2], v0[3], v0[4], v0[5]);
}

{
  *(v0 + 48) = v0;

  v1 = *(*(v0 + 48) + 8);

  return v1();
}

uint64_t closure #1 in HealthDataStoreQuery.queryDailyAggSedentaryHeartRateBatched(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *(v5 + 232) = a5;
  *(v5 + 160) = a4;
  *(v5 + 152) = a2;
  *(v5 + 144) = a1;
  *(v5 + 80) = v5;
  *(v5 + 88) = 0;
  *(v5 + 220) = 0;
  *(v5 + 96) = 0;
  *(v5 + 216) = 0;
  *(v5 + 104) = 0;
  *(v5 + 112) = 0;
  *(v5 + 120) = 0;
  *(v5 + 128) = 0;
  *(v5 + 228) = 0;
  *(v5 + 48) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 236) = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScg8IteratorVySDys6UInt32VSfG9daySHR10s_AE05nightD0SDyADSiG0C9SHRCountsAH0eF0ts5Error_p_GMd);
  *(v5 + 168) = v6;
  *(v5 + 176) = *(v6 - 8);
  *(v5 + 184) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  *(v5 + 192) = swift_task_alloc();
  *(v5 + 88) = a2;
  *(v5 + 220) = a3;
  *(v5 + 96) = a4;
  *(v5 + 216) = a5;

  return MEMORY[0x2822009F8](closure #1 in HealthDataStoreQuery.queryDailyAggSedentaryHeartRateBatched(_:_:), 0);
}

uint64_t closure #1 in HealthDataStoreQuery.queryDailyAggSedentaryHeartRateBatched(_:_:)()
{
  v18 = *(v0 + 236);
  *(v0 + 80) = v0;
  *(v0 + 104) = Dictionary.init()();
  *(v0 + 112) = Dictionary.init()();
  *(v0 + 120) = Dictionary.init()();
  *(v0 + 128) = Dictionary.init()();
  *(v0 + 228) = v18;
  for (i = *(v0 + 236); i < *(v17 + 240); i += v16)
  {
    v15 = *(v17 + 192);
    v13 = *(v17 + 240);
    v12 = *(v17 + 236);
    v16 = *(v17 + 232);
    v11 = *(v17 + 160);
    v1 = type metadata accessor for TaskPriority();
    (*(*(v1 - 8) + 56))(v15, 1);

    v14 = swift_allocObject();
    *(v14 + 16) = 0;
    *(v14 + 24) = 0;
    *(v14 + 32) = v11;
    *(v14 + 40) = i;
    *(v14 + 44) = v12;
    *(v14 + 48) = v13;
    *(v14 + 52) = v16;
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScgySDys6UInt32VSfG9daySHR10s_AC05nightC0SDyABSiG0B9SHRCountsAF0dE0ts5Error_pGMd);
    _sScg7addTask8priority9operationyScPSg_xyYaKYAcntF(v15, &async function pointer to partial apply for closure #1 in closure #1 in HealthDataStoreQuery.queryDailyAggSedentaryHeartRateBatched(_:_:), v14, v2);
    v3 = outlined destroy of TaskPriority?(v15);
    if (__CFADD__(i, v16))
    {
      __break(1u);
      return MEMORY[0x2822004E8](v3, v4, v5, v6, v7);
    }

    *(v17 + 228) = i + v16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt32VSfG9daySHR10s_AC05nightC0SDyABSiG0B9SHRCountsAF0dE0tMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  ThrowingTaskGroup.makeAsyncIterator()();
  v9 = swift_task_alloc();
  *(v17 + 200) = v9;
  *v9 = *(v17 + 80);
  v9[1] = closure #1 in HealthDataStoreQuery.queryDailyAggSedentaryHeartRateBatched(_:_:);
  v6 = *(v17 + 168);
  v3 = v17 + 16;
  v5 = 0;
  v4 = 0;
  v7 = v17 + 136;

  return MEMORY[0x2822004E8](v3, v4, v5, v6, v7);
}

{
  v4 = *v1;
  *(v4 + 80) = *v1;
  *(v4 + 208) = v0;

  if (v0)
  {
    v2 = closure #1 in HealthDataStoreQuery.queryDailyAggSedentaryHeartRateBatched(_:_:);
  }

  else
  {
    v2 = closure #1 in HealthDataStoreQuery.queryDailyAggSedentaryHeartRateBatched(_:_:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v0[10] = v0;
  v8 = v0[2];
  v9 = v0[3];
  v10 = v0[4];
  v11 = v0[5];
  if (v8)
  {
    v1 = v7[26];
    v7[6] = v8;
    v7[7] = v9;
    v7[8] = v10;
    v7[9] = v11;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt32VSfGMd);
    result = Dictionary.merge(_:uniquingKeysWith:)();
    if (!v1)
    {

      Dictionary.merge(_:uniquingKeysWith:)();

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt32VSiGMd);
      Dictionary.merge(_:uniquingKeysWith:)();

      Dictionary.merge(_:uniquingKeysWith:)();

      v4 = swift_task_alloc();
      v7[25] = v4;
      *v4 = v7[10];
      v4[1] = closure #1 in HealthDataStoreQuery.queryDailyAggSedentaryHeartRateBatched(_:_:);
      v5 = v7[21];

      return MEMORY[0x2822004E8](v7 + 2, 0, 0, v5, v7 + 17);
    }
  }

  else
  {
    v6 = v7[18];
    (*(v7[22] + 8))();
    outlined init with copy of [Float](v7 + 13, v6);
    outlined init with copy of [Float](v7 + 14, v6 + 1);
    outlined init with copy of [Float](v7 + 15, v6 + 2);
    v6[3] = v7[16];
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    v3 = *(v7[10] + 8);

    return v3();
  }

  return result;
}

{
  v1 = *(v0 + 176);
  *(v0 + 80) = v0;
  (*(v1 + 8))();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();

  v2 = *(*(v0 + 80) + 8);

  return v2();
}

uint64_t closure #1 in closure #1 in HealthDataStoreQuery.queryDailyAggSedentaryHeartRateBatched(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7)
{
  *(v7 + 120) = a7;
  *(v7 + 116) = a5;
  *(v7 + 40) = a4;
  *(v7 + 32) = a1;
  *(v7 + 16) = v7;
  *(v7 + 24) = 0;
  *(v7 + 88) = 0;
  *(v7 + 92) = 0;
  *(v7 + 104) = 0;
  *(v7 + 124) = HIDWORD(a6);
  *(v7 + 24) = a4;
  *(v7 + 88) = a5;
  *(v7 + 92) = a6;
  *(v7 + 104) = a7;
  return MEMORY[0x2822009F8](closure #1 in closure #1 in HealthDataStoreQuery.queryDailyAggSedentaryHeartRateBatched(_:_:), 0);
}

void closure #1 in closure #1 in HealthDataStoreQuery.queryDailyAggSedentaryHeartRateBatched(_:_:)()
{
  v1 = *(v0 + 124);
  v2 = *(v0 + 120);
  v3 = *(v0 + 116);
  *(v0 + 16) = v0;
  *(v0 + 108) = v1;
  v10 = v2 + v3;
  if (__CFADD__(v2, v3))
  {
    __break(1u);
  }

  else
  {
    v7 = *(v9 + 116);
    *(v9 + 112) = v10;
    min<A>(_:_:)();
    v8 = *(v9 + 100);
    if (v8 >= v7)
    {
      v6 = *(v9 + 116);
      v5 = swift_task_alloc();
      *(v9 + 48) = v5;
      *v5 = *(v9 + 16);
      v5[1] = closure #1 in closure #1 in HealthDataStoreQuery.queryDailyAggSedentaryHeartRateBatched(_:_:);

      HealthDataStoreQuery.queryDailyAggSedentaryHeartRate(for:)(__SPAIR64__(v8, v6));
    }

    else
    {
      _assertionFailure(_:_:file:line:flags:)();
    }
  }
}

uint64_t closure #1 in closure #1 in HealthDataStoreQuery.queryDailyAggSedentaryHeartRateBatched(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v5;
  v8[2] = *v5;
  v8[7] = a1;
  v8[8] = a2;
  v8[9] = a3;
  v8[10] = a4;

  if (v4)
  {
    v6 = *(v8[2] + 8);

    return v6();
  }

  else
  {

    return MEMORY[0x2822009F8](closure #1 in closure #1 in HealthDataStoreQuery.queryDailyAggSedentaryHeartRateBatched(_:_:), 0);
  }
}

uint64_t closure #1 in closure #1 in HealthDataStoreQuery.queryDailyAggSedentaryHeartRateBatched(_:_:)()
{
  v1 = v0[10];
  v2 = v0[9];
  v3 = v0[8];
  v4 = v0[7];
  v5 = v0[4];
  v0[2] = v0;
  *v5 = v4;
  v5[1] = v3;
  v5[2] = v2;
  v5[3] = v1;
  return (*(v0[2] + 8))();
}

uint64_t _sScg7addTask8priority9operationyScPSg_xyYaKYAcntF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a1;
  v25 = a2;
  v26 = a3;
  v27 = a4;
  v30 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v29);
  v31 = &v7 - v30;
  outlined init with copy of TaskPriority?(v4, &v7 - v30);
  v32 = type metadata accessor for TaskPriority();
  v33 = *(v32 - 8);
  v34 = v32 - 8;
  if ((*(v33 + 48))(v31, 1) == 1)
  {
    outlined destroy of TaskPriority?(v31);
    v24 = 0;
  }

  else
  {
    v23 = TaskPriority.rawValue.getter();
    (*(v33 + 8))(v31, v32);
    v24 = v23;
  }

  v20 = v24 | 0x3100;
  v22 = *(v26 + 16);
  v21 = *(v26 + 24);
  swift_unknownObjectRetain();
  if (v22)
  {
    v18 = v22;
    v19 = v21;
    v12 = v21;
    v13 = v22;
    swift_getObjectType();
    v14 = dispatch thunk of Actor.unownedExecutor.getter();
    v15 = v5;
    swift_unknownObjectRelease();
    v16 = v14;
    v17 = v15;
  }

  else
  {
    v16 = 0;
    v17 = 0;
  }

  v9 = v17;
  v8 = v16;
  v7 = *v28;

  v10 = *(v27 + 16);
  v38[4] = v10;
  v11 = 0;
  if (v8 != 0 || v9 != 0)
  {
    v38[0] = 0;
    v38[1] = 0;
    v38[2] = v8;
    v38[3] = v9;
    v11 = v38;
  }

  v35 = 1;
  v36 = v11;
  v37 = v7;
  swift_task_create();
}

uint64_t HealthDataStoreQuery.queryMostRecentSample(_:_:_:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v45 = a1;
  v48 = a2;
  v46 = a3;
  v47 = a4;
  v53 = 0;
  v51 = partial apply for closure #1 in HealthDataStoreQuery.queryMostRecentSample(_:_:_:);
  v67 = 0;
  v66 = 0;
  v64 = 0;
  v65 = 0;
  v63 = 0;
  v62 = 0;
  v61 = 0;
  v60 = 0;
  v41 = 0;
  v36 = type metadata accessor for Date();
  v32 = *(v36 - 8);
  v33 = v36 - 8;
  v29 = *(v32 + 64);
  v28 = (v29 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v48);
  v34 = &v28 - v28;
  v30 = v28;
  v6 = MEMORY[0x28223BE20](v5);
  v35 = &v28 - v30;
  v67 = v7;
  v66 = v6;
  v64 = v8;
  v65 = v9;
  v63 = v4;
  dispatch_group_enter(v6);
  v49 = 1;
  v31 = &type metadata for HealthDataRawSampleType;
  v10 = _allocateUninitializedArray<A>(_:)();
  *v11 = v45;
  _finalizeUninitializedArray<A>(_:)();
  v39 = v10;
  static Date.distantPast.getter();
  Date.init()();
  v58 = HealthDataStoreQuery.queryDescriptors(_:_:_:)(v39, v35, v34);
  v38 = *(v32 + 8);
  v37 = v32 + 8;
  v38(v34, v36);
  v38(v35, v36);

  v62 = v58;
  v43 = type metadata accessor for NSSortDescriptor();
  v40 = *MEMORY[0x277CCCD50];
  MEMORY[0x277D82BE0](v40);
  v12.value._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  NSSortDescriptor.__allocating_init(key:ascending:)(0, v12, 0);
  v57 = v13;
  MEMORY[0x277D82BD8](v40);
  v61 = v57;
  type metadata accessor for HKSampleQuery();

  v44 = _allocateUninitializedArray<A>(_:)();
  v42 = v14;
  MEMORY[0x277D82BE0](v57);
  v15 = v44;
  *v42 = v57;
  _finalizeUninitializedArray<A>(_:)();
  v50 = v15;

  MEMORY[0x277D82BE0](v48);
  v16 = swift_allocObject();
  v17 = v46;
  v18 = v47;
  v19 = v48;
  v20 = v49;
  v21 = v50;
  v22 = v51;
  v23 = v16;
  v24 = v58;
  *(v23 + 16) = v45;
  *(v23 + 24) = v17;
  *(v23 + 32) = v18;
  *(v23 + 40) = v19;
  v25 = HKSampleQuery.__allocating_init(queryDescriptors:limit:sortDescriptors:resultsHandler:)(v24, v20, v21, v22, v23);
  v26 = v52;
  v56 = v25;
  v60 = v25;
  v54 = &v59;
  swift_beginAccess();
  v55 = *(v26 + 16);
  MEMORY[0x277D82BE0](v55);
  swift_endAccess();
  [v55 executeQuery_];
  MEMORY[0x277D82BD8](v55);
  MEMORY[0x277D82BD8](v56);
  MEMORY[0x277D82BD8](v57);
}

void __swiftcall NSSortDescriptor.__allocating_init(key:ascending:)(NSSortDescriptor *__return_ptr retstr, Swift::String_optional key, Swift::Bool ascending)
{
  countAndFlagsBits = key.value._countAndFlagsBits;
  object = key.value._object;
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  @nonobjc NSSortDescriptor.init(key:ascending:)(countAndFlagsBits, object);
}

uint64_t closure #1 in HealthDataStoreQuery.queryMostRecentSample(_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), uint64_t a6, NSObject *a7)
{
  v27 = 0;
  v34 = a1;
  v33 = a2;
  v32 = a3;
  v31 = a4;
  v30[7] = a5;
  v30[8] = a6;
  v30[6] = a7;
  SampleTypeQuery = getSampleTypeQueryDecoders()();
  v30[5] = SampleTypeQuery;
  v29 = a4;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19NightingaleTraining21HealthDataQueryResult_pMd);
  v7 = lazy protocol witness table accessor for type HealthDataRawSampleType and conformance HealthDataRawSampleType();
  MEMORY[0x25F8891D0](v30, &v29, SampleTypeQuery, &type metadata for HealthDataRawSampleType, v20, v7);

  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8HKSampleCGMd);
    lazy protocol witness table accessor for type [HKSample] and conformance [A]();
    Collection.first.getter();

    v14 = v22;
  }

  else
  {
    v14 = 0;
  }

  if (v14)
  {
    v27 = v14;
    outlined init with copy of Pregnancy?(v30, v24);
    if (v25)
    {
      v13 = v26;
      __swift_project_boxed_opaque_existential_1(v24, v25);
      MEMORY[0x277D82BE0](v14);
      v23[3] = type metadata accessor for HKSample();
      v23[0] = v14;
      (*(v13 + 24))();
      __swift_destroy_boxed_opaque_existential_1(v23);
      __swift_destroy_boxed_opaque_existential_1(v24);
    }

    else
    {
      outlined destroy of Pregnancy?(v24);
    }

    MEMORY[0x277D82BD8](v14);
  }

  v28 = a3;
  if (a3)
  {
    v12 = 16;
  }

  else
  {
    v12 = 110;
  }

  if (v12 == 110)
  {
    v11 = 0;
  }

  else
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v8 = swift_allocError();
    *v9 = v12;
    v11 = v8;
  }

  a5();

  dispatch_group_leave(a7);
  outlined destroy of Pregnancy?(v30);
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> HealthDataStoreQuery.getDayStreamProcessorConfig(birthDateRequired:shouldUseCachedConfig:)(Swift::tuple_NgtMenstrualAlgorithmsDayStreamProcessorConfig_urCycleLength_Double_urPeriodLength_Double *__return_ptr retstr, Swift::Bool birthDateRequired, Swift::Bool shouldUseCachedConfig)
{
  v80 = birthDateRequired;
  v79 = shouldUseCachedConfig;
  v73 = partial apply for closure #2 in HealthDataStoreQuery.getDayStreamProcessorConfig(birthDateRequired:shouldUseCachedConfig:);
  v106[1] = *MEMORY[0x277D85DE8];
  v95 = 0;
  v94 = 0;
  v93 = 0;
  v92 = 0;
  v91 = 0;
  v74 = type metadata accessor for DateComponents();
  v75 = *(v74 - 8);
  v76 = v74 - 8;
  v77 = (*(v75 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v74);
  v78 = &v22[-v77];
  v81 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v80);
  v82 = &v22[-v81];
  v83 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v4);
  v84 = &v22[-v83];
  v85 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x28223BE20](v6);
  v86 = &v22[-v85];
  v87 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x28223BE20](v8);
  v88 = &v22[-v87];
  v95 = &v22[-v87];
  v94 = v10 & 1;
  v93 = v11 & 1;
  v92 = v3;
  if (v11)
  {
    v68 = &v96;
    swift_beginAccess();
    v69 = *(v71 + 40);
    MEMORY[0x277D82BE0](v69);
    swift_endAccess();
    v70 = v69;
  }

  else
  {
    v70 = 0;
  }

  v106[0] = v70;

  if (v106[0])
  {
    v89 = v106[0];
    v67 = v72;
  }

  else
  {
    v12 = v72;
    v13 = closure #1 in implicit closure #1 in HealthDataStoreQuery.getDayStreamProcessorConfig(birthDateRequired:shouldUseCachedConfig:)(v71);
    v64 = v12;
    v65 = v13;
    v66 = v12;
    if (v12)
    {
      v63 = v66;
      if (v106[0])
      {
        outlined destroy of NgtMenstrualAlgorithmsDayStreamProcessorConfig?(v106);
      }

      v57 = v63;
      return;
    }

    v89 = v65;
    if (v106[0])
    {
      outlined destroy of NgtMenstrualAlgorithmsDayStreamProcessorConfig?(v106);
    }

    v67 = v64;
  }

  v58 = v67;

  v60 = v89;
  v91 = v89;
  MEMORY[0x277D82BE0](v89);
  MEMORY[0x277D82BE0](v60);
  v59 = &v105;
  swift_beginAccess();
  v14 = *(v71 + 40);
  *(v71 + 40) = v60;
  MEMORY[0x277D82BD8](v14);
  swift_endAccess();
  MEMORY[0x277D82BD8](v60);
  v61 = *(v75 + 56);
  v62 = v75 + 56;
  v61(v88, 1, 1, v74);
  if (v80)
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v15 = swift_allocError();
    v16 = v58;
    v54 = v15;
    *v17 = 24;

    static PFLUtils.rethrow<A>(_:for:)();
    v55 = v16;
    v56 = v16;
    if (v16)
    {
      v26 = v56;

      outlined destroy of DateComponents?(v88);
      MEMORY[0x277D82BD8](v60);
      v57 = v26;
      return;
    }

    v61(v86, 0, 1, v74);
    outlined assign with take of DateComponents?(v86, v88);
    v53 = v55;
  }

  else
  {
    v104 = 0;
    v49 = &v103;
    swift_beginAccess();
    v51 = *(v71 + 16);
    MEMORY[0x277D82BE0](v51);
    swift_endAccess();
    v90 = v104;
    v52 = [v51 dateOfBirthComponentsWithError_];
    v50 = v90;
    MEMORY[0x277D82BE0](v90);
    v18 = v104;
    v104 = v50;
    MEMORY[0x277D82BD8](v18);
    MEMORY[0x277D82BD8](v51);
    if (v52)
    {
      v48 = v52;
      v46 = v52;
      static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();
      (*(v75 + 32))(v84, v78, v74);
      v61(v84, 0, 1, v74);
      MEMORY[0x277D82BD8](v46);
      v47 = v58;
    }

    else
    {
      v23 = v104;
      v24 = _convertNSErrorToError(_:)();
      MEMORY[0x277D82BD8](v23);
      swift_willThrow();
      v25 = 0;

      v61(v84, 1, 1, v74);
      v47 = v25;
    }

    v45 = v47;
    outlined assign with take of DateComponents?(v84, v88);
    v53 = v45;
  }

  v44 = v53;
  outlined init with copy of DateComponents?(v88, v82);
  if ((*(v75 + 48))(v82, 1, v74) == 1)
  {
    v43 = 0;
  }

  else
  {
    isa = DateComponents._bridgeToObjectiveC()().super.isa;
    (*(v75 + 8))(v82, v74);
    v43 = isa;
  }

  v41 = v43;
  [(objc_class *)v60 setBirthDateComponents:?];
  MEMORY[0x277D82BD8](v41);
  *&v19 = MEMORY[0x277D82BE0](v60).n128_u64[0];
  v102 = [(objc_class *)v60 userReportedCycleLength];
  if (v102)
  {
    v36 = &v102;
    v37 = v102;
    MEMORY[0x277D82BE0](v102);
    outlined destroy of NgtMenstrualAlgorithmsDayStreamProcessorConfig?(v36);
    [v37 doubleValue];
    v38 = v20;
    MEMORY[0x277D82BD8](v37);
    v39 = v38;
    v40 = 0;
  }

  else
  {
    outlined destroy of NgtMenstrualAlgorithmsDayStreamProcessorConfig?(&v102);
    v39 = 0;
    v40 = 1;
  }

  v100 = v39;
  v101 = v40 & 1;
  if (v40)
  {
    v35 = 0;
  }

  else
  {
    v35 = v100;
  }

  v34 = v35;
  v99 = [(objc_class *)v60 userReportedMenstruationLength];
  if (v99)
  {
    v29 = &v99;
    v30 = v99;
    MEMORY[0x277D82BE0](v99);
    outlined destroy of NgtMenstrualAlgorithmsDayStreamProcessorConfig?(v29);
    [v30 doubleValue];
    v31 = v21;
    MEMORY[0x277D82BD8](v30);
    v32 = v31;
    v33 = 0;
  }

  else
  {
    outlined destroy of NgtMenstrualAlgorithmsDayStreamProcessorConfig?(&v99);
    v32 = 0;
    v33 = 1;
  }

  v97 = v32;
  v98 = v33 & 1;
  if (v33)
  {
    v28 = 0;
  }

  else
  {
    v28 = v97;
  }

  v27 = v28;
  outlined destroy of DateComponents?(v88);
  MEMORY[0x277D82BD8](v60);
}

Class closure #1 in implicit closure #1 in HealthDataStoreQuery.getDayStreamProcessorConfig(birthDateRequired:shouldUseCachedConfig:)(uint64_t a1)
{
  v113 = a1;
  v137[1] = *MEMORY[0x277D85DE8];
  v111 = 0;
  v134 = 0;
  v133 = 0;
  v132 = 0;
  v131 = 0;
  v129 = 0;
  v128 = 0;
  v126 = 0;
  v125 = 0;
  v124 = 0;
  v123 = 0;
  v122 = 0;
  v121 = 0;
  v104 = type metadata accessor for Date();
  v105 = *(v104 - 8);
  v106 = v105;
  v107 = *(v105 + 64);
  v1 = MEMORY[0x28223BE20](0);
  v109 = (v107 + 15) & 0xFFFFFFFFFFFFFFF0;
  v108 = v32 - v109;
  v134 = v32 - v109;
  MEMORY[0x28223BE20](v1);
  v110 = v32 - v109;
  v133 = v32 - v109;
  v132 = v2;
  type metadata accessor for NgtMenstrualAlgorithmsDayStreamProcessorConfig();
  isa = HKHealthStore.__allocating_init()().super.isa;
  v131 = isa;
  v137[0] = v111;
  v114 = &v136;
  swift_beginAccess();
  v117 = *(v113 + 16);
  v3 = v117;
  swift_endAccess();
  v130 = v137[0];
  v118 = [v117 _userEnteredMenstrualCycleLengthCharacteristicQuantityWithError_];
  v115 = v118;
  v116 = v130;
  v4 = v130;
  v5 = v137[0];
  v137[0] = v116;

  if (v118)
  {
    v102 = v115;
    v87 = v115;
    v129 = v115;
    v88 = [objc_opt_self() dayUnit];
    [v87 doubleValueForUnit_];
    v89 = v7;

    v128 = v89;
    v90 = MEMORY[0x25F8896F0]();
    [(objc_class *)isa setUserReportedCycleLength:?];

    v91 = type metadata accessor for HKCharacteristicType();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v94 = *MEMORY[0x277CCDEE8];
    v8 = v94;
    v92 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v93 = v9;

    v96 = MEMORY[0x25F8892C0](v92, v93);
    v10 = v96;

    v98 = [ObjCClassFromMetadata characteristicTypeForIdentifier_];
    v97 = v98;

    if (v98)
    {
      v86 = v97;
      v82 = v97;
      v79 = v103;
      v122 = v97;
      v77 = lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
      v80 = swift_allocError();
      v78 = v80;
      *v11 = 22;

      v12 = v82;
      v13 = v79;
      v81 = v32;
      MEMORY[0x28223BE20](v80);
      v14 = v82;
      v32[-2] = v113;
      v32[-1] = v14;
      static PFLUtils.rethrow<A>(_:for:)();
      v83 = v13;
      v84 = v13;
      if (v13)
      {
        v34 = v84;

        outlined destroy of NgtMenstrualAlgorithmsDayStreamProcessorConfig?(v137);
        v101 = v34;
        return v32[0];
      }

      *&v15 = Date.toJulianDay()();
      v119 = v15;
      v76 = v15;
      if ((v15 & 0x100000000) != 0)
      {
        v73 = 0;
        v74 = swift_allocError();
        *v16 = 14;
        swift_willThrow();
        (*(v106 + 8))(v110, v104, v73);

        outlined destroy of NgtMenstrualAlgorithmsDayStreamProcessorConfig?(v137);
        v101 = v74;
        return v32[0];
      }

      v75 = v76;
      v121 = v76;
      v72 = UInt32._bridgeToObjectiveC()().super.super.isa;
      [(objc_class *)isa setJulianDayOfUserReportedCycleLength:?];

      (*(v106 + 8))(v110, v104);
      v85 = v83;
    }

    else
    {
      v85 = v103;
    }

    v66 = v85;
    v67 = &v135;
    swift_beginAccess();
    v70 = *(v113 + 16);
    v17 = v70;
    swift_endAccess();
    v127 = v137[0];
    v71 = [v70 _userEnteredMenstrualPeriodLengthCharacteristicQuantityWithError_];
    v68 = v71;
    v69 = v127;
    v18 = v127;
    v19 = v137[0];
    v137[0] = v69;

    if (v71)
    {
      v65 = v68;
      v52 = v68;
      v126 = v68;
      v53 = [objc_opt_self() dayUnit];
      [v52 doubleValueForUnit_];
      v54 = v21;

      v125 = v54;
      v55 = MEMORY[0x25F8896F0]();
      [(objc_class *)isa setUserReportedMenstruationLength:?];

      v59 = swift_getObjCClassFromMetadata();
      v58 = *MEMORY[0x277CCDEF0];
      v22 = v58;
      v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v57 = v23;

      v60 = MEMORY[0x25F8892C0](v56, v57);
      v24 = v60;

      v62 = [v59 characteristicTypeForIdentifier_];
      v61 = v62;

      if (!v62)
      {
        v50 = v66;
LABEL_21:
        v35 = v50;

        outlined destroy of NgtMenstrualAlgorithmsDayStreamProcessorConfig?(v137);
        v36 = v35;
        return isa;
      }

      v51 = v61;
      v47 = v61;
      v44 = v66;
      v124 = v61;
      v42 = lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
      v45 = swift_allocError();
      v43 = v45;
      *v25 = 23;

      v26 = v47;
      v27 = v44;
      v46 = v32;
      MEMORY[0x28223BE20](v45);
      v28 = v47;
      v32[-2] = v113;
      v32[-1] = v28;
      static PFLUtils.rethrow<A>(_:for:)();
      v48 = v27;
      v49 = v27;
      if (v27)
      {
        v33 = v49;

        outlined destroy of NgtMenstrualAlgorithmsDayStreamProcessorConfig?(v137);
        v101 = v33;
      }

      else
      {

        *&v29 = Date.toJulianDay()();
        v120 = v29;
        v41 = v29;
        if ((v29 & 0x100000000) == 0)
        {
          v40 = v41;
          v123 = v41;
          v37 = UInt32._bridgeToObjectiveC()().super.super.isa;
          [(objc_class *)isa setJulianDayOfUserReportedMenstruationLength:?];

          (*(v106 + 8))(v108, v104);
          v50 = v48;
          goto LABEL_21;
        }

        v38 = 0;
        v39 = swift_allocError();
        *v30 = 14;
        swift_willThrow();
        (*(v106 + 8))(v108, v104, v38);

        outlined destroy of NgtMenstrualAlgorithmsDayStreamProcessorConfig?(v137);
        v101 = v39;
      }
    }

    else
    {
      lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
      v63 = 0;
      v64 = swift_allocError();
      *v20 = 33;
      swift_willThrow();

      outlined destroy of NgtMenstrualAlgorithmsDayStreamProcessorConfig?(v137);
      v101 = v64;
    }
  }

  else
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v99 = 0;
    v100 = swift_allocError();
    *v6 = 32;
    swift_willThrow();
    outlined destroy of NgtMenstrualAlgorithmsDayStreamProcessorConfig?(v137);

    v101 = v100;
  }

  return v32[0];
}

uint64_t closure #1 in closure #1 in implicit closure #1 in HealthDataStoreQuery.getDayStreamProcessorConfig(birthDateRequired:shouldUseCachedConfig:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v11 = a3;
  v17 = a1;
  v19 = a2;
  v28 = *MEMORY[0x277D85DE8];
  v25 = 0;
  v24 = 0;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = v12 - 8;
  v15 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v6 - v15;
  v25 = MEMORY[0x28223BE20](v17);
  v24 = v3;
  v27 = 0;
  v18 = &v26;
  swift_beginAccess();
  v21 = *(v17 + 16);
  MEMORY[0x277D82BE0](v21);
  swift_endAccess();
  v23 = v27;
  v22 = [v21 _modificationDateForCharacteristicWithType_error_];
  v20 = v23;
  MEMORY[0x277D82BE0](v23);
  v4 = v27;
  v27 = v20;
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v21);
  if (v22)
  {
    v10 = v22;
    v9 = v22;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v13 + 32))(v11, v16, v12);
    return MEMORY[0x277D82BD8](v9);
  }

  else
  {
    v7 = v27;
    v8 = _convertNSErrorToError(_:)();
    MEMORY[0x277D82BD8](v7);
    return swift_willThrow();
  }
}

uint64_t closure #2 in HealthDataStoreQuery.getDayStreamProcessorConfig(birthDateRequired:shouldUseCachedConfig:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v15 = a1;
  v24 = *MEMORY[0x277D85DE8];
  v21 = 0;
  v10 = type metadata accessor for DateComponents();
  v11 = *(v10 - 8);
  v12 = v10 - 8;
  v13 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = &v4 - v13;
  v21 = MEMORY[0x28223BE20](v15);
  v23 = 0;
  v16 = &v22;
  swift_beginAccess();
  v18 = *(v15 + 16);
  MEMORY[0x277D82BE0](v18);
  swift_endAccess();
  v20 = v23;
  v19 = [v18 dateOfBirthComponentsWithError_];
  v17 = v20;
  MEMORY[0x277D82BE0](v20);
  v2 = v23;
  v23 = v17;
  MEMORY[0x277D82BD8](v2);
  MEMORY[0x277D82BD8](v18);
  if (v19)
  {
    v8 = v19;
    v7 = v19;
    static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v11 + 32))(v9, v14, v10);
    return MEMORY[0x277D82BD8](v7);
  }

  else
  {
    v5 = v23;
    v6 = _convertNSErrorToError(_:)();
    MEMORY[0x277D82BD8](v5);
    return swift_willThrow();
  }
}

float HealthDataStoreQuery.getBmi(dispatchGroup:hyperParams:)(uint64_t a1, uint64_t a2)
{
  v64 = a1;
  v62 = a2;
  v57 = partial apply for closure #1 in HealthDataStoreQuery.getBmi(dispatchGroup:hyperParams:);
  v59 = partial apply for closure #1 in HealthDataStoreQuery.getBmi(dispatchGroup:hyperParams:);
  v61 = partial apply for closure #1 in HealthDataStoreQuery.getBmi(dispatchGroup:hyperParams:);
  v94 = 0;
  v93 = 0;
  v92 = 0;
  v91 = 0;
  v90 = 0;
  v89 = 0;
  v84 = 0.0;
  v81 = 0.0;
  v79 = 0.0;
  v50 = 0;
  v68 = type metadata accessor for DispatchTimeInterval();
  v65 = *(v68 - 8);
  v66 = v68 - 8;
  v51 = (*(v65 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v67 = (v19 - v51);
  v72 = type metadata accessor for DispatchTime();
  v69 = *(v72 - 8);
  v70 = v72 - 8;
  v52 = (*(v69 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v64);
  v71 = v19 - v52;
  v53 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v3);
  v75 = v19 - v53;
  v94 = v5;
  v93 = v6;
  v92 = v2;
  v56 = &unk_286E28398;
  v54 = 24;
  v55 = 7;
  v7 = swift_allocObject();
  v58 = v7;
  v91 = v7 + 16;
  *(v7 + 16) = 0;
  v77 = 1;
  *(v7 + 20) = 1;
  v8 = swift_allocObject();
  v9 = v77;
  v60 = v8;
  v90 = v8 + 16;
  *(v8 + 16) = 0;
  *(v8 + 20) = v9 & 1;
  v10 = swift_allocObject();
  v11 = v77;
  v63 = v10;
  v89 = v10 + 16;
  *(v10 + 16) = 0;
  *(v10 + 20) = v11 & 1;

  HealthDataStoreQuery.queryMostRecentSample(_:_:_:)(4, v64, v57, v58);

  HealthDataStoreQuery.queryMostRecentSample(_:_:_:)(5, v64, v59, v60);

  HealthDataStoreQuery.queryMostRecentSample(_:_:_:)(6, v64, v61, v63);

  static DispatchTime.now()();
  v12 = HyperParams.bmiTimeout.getter();
  v13 = v65;
  *v67 = v12;
  (*(v13 + 104))();
  MEMORY[0x25F888FC0](v71, v67);
  (*(v65 + 8))(v67, v68);
  v74 = *(v69 + 8);
  v73 = v69 + 8;
  v74(v71, v72);
  v76 = MEMORY[0x25F889960](v75);
  v74(v75, v72);
  if (static DispatchTimeoutResult.== infix(_:_:)())
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v48 = swift_allocError();
    *v14 = 17;
    swift_willThrow();

    v49 = v48;
  }

  else
  {
    v45 = &v88;
    swift_beginAccess();
    v46 = *(v58 + 16);
    v47 = *(v58 + 20);
    swift_endAccess();
    v86 = v46;
    v87 = v47 & 1;
    v44 = (v47 & 1) != 0;
    if (v47)
    {
      v41 = &v83;
      swift_beginAccess();
      v42 = *(v60 + 16);
      v43 = *(v60 + 20);
      swift_endAccess();
      if ((v43 & 1) != 0 || (v40 = v42, v36 = v42, v81 = v42, v37 = &v80, swift_beginAccess(), v38 = *(v63 + 16), v39 = *(v63 + 20), swift_endAccess(), (v39 & 1) != 0 || (v35 = v38, v34 = v35, v79 = v35, v35 < 0.1)))
      {
        v29 = HyperParams.defaultBMI.getter();
        v28 = &v82;
        swift_beginAccess();
        v16 = v58;
        *(v58 + 16) = v29;
        *(v16 + 20) = 0;
        swift_endAccess();
        v32 = v29;
        v33 = 0;
      }

      else
      {
        v31 = (v36 / v34) / v34;
        v30 = &v78;
        swift_beginAccess();
        v15 = v58;
        *(v58 + 16) = v31;
        *(v15 + 20) = 0;
        swift_endAccess();
        v32 = v31;
        v33 = 0;
      }

      v26 = v32;
      v27 = v33;
    }

    else
    {
      v26 = v46;
      v27 = v47;
    }

    v25 = v27;
    v23 = v26;
    v24 = &v85;
    swift_beginAccess();
    swift_endAccess();
    if ((v25 & 1) == 0)
    {
      v22 = v23;
      v21 = v23;
      v84 = v23;

      return v21;
    }

    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v20 = swift_allocError();
    *v18 = 18;
    swift_willThrow();

    v49 = v20;
  }

  return *&v19[3];
}

uint64_t closure #1 in HealthDataStoreQuery.getBmi(dispatchGroup:hyperParams:)(void *a1, uint64_t a2, uint64_t a3)
{
  v22 = a1;
  v21 = a2;
  v20 = a3 + 16;
  outlined init with copy of Pregnancy?(a1, v15);
  if (v16)
  {
    v10 = v16;
    v8 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    v9 = *(v8 + 16);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    __swift_allocate_boxed_opaque_existential_0(v18);
    v9(v10, v8);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    outlined destroy of Pregnancy?(v15);
    memset(v18, 0, sizeof(v18));
    AssociatedTypeWitness = 0;
  }

  if (AssociatedTypeWitness)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt32VSfGMd);
    if (swift_dynamicCast())
    {
      v6 = v12;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
  }

  else
  {
    outlined destroy of Pregnancy?(v18);
    v7 = 0;
  }

  if (v7)
  {
    Dictionary.values.getter();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSD6ValuesVys6UInt32VSf_GMd);
    lazy protocol witness table accessor for type [UInt32 : Float].Values and conformance [A : B].Values();
    Collection.first.getter();

    v4 = v13;
    v5 = v14;
  }

  else
  {
    v4 = 0;
    v5 = 1;
  }

  swift_beginAccess();
  *(a3 + 16) = v4;
  *(a3 + 20) = v5 & 1;
  return swift_endAccess();
}

void __swiftcall HealthDataStoreQuery.getMlConfig(heartRateFwEnd10PctModelPath:heartRatePeriod10PctModelPath:wTmpFwEndLstmModelPath:wTmpFwEndRFModelPath:wTmpPeriodLstmModelPath:heartRatePeriodTFModelPaths:heartRatePeriodEnsembleModelPath:)(NgtMenstrualAlgorithmsMLModelConfig *__return_ptr retstr, Swift::String heartRateFwEnd10PctModelPath, Swift::String heartRatePeriod10PctModelPath, Swift::String wTmpFwEndLstmModelPath, Swift::String wTmpFwEndRFModelPath, Swift::String wTmpPeriodLstmModelPath, Swift::OpaquePointer_optional heartRatePeriodTFModelPaths, Swift::String_optional heartRatePeriodEnsembleModelPath)
{
  type metadata accessor for NgtMenstrualAlgorithmsMLModelConfig();
  v23.super.isa = HKHealthStore.__allocating_init()().super.isa;

  v16 = MEMORY[0x25F8892C0](heartRateFwEnd10PctModelPath._countAndFlagsBits, heartRateFwEnd10PctModelPath._object);

  [(objc_class *)v23.super.isa setHeartRateFwEnd10PctModelPath:v16];
  MEMORY[0x277D82BD8](v16);

  v18 = MEMORY[0x25F8892C0](heartRatePeriod10PctModelPath._countAndFlagsBits, heartRatePeriod10PctModelPath._object);

  [(objc_class *)v23.super.isa setHeartRatePeriod10PctModelPath:v18];
  MEMORY[0x277D82BD8](v18);

  v20 = MEMORY[0x25F8892C0](wTmpFwEndLstmModelPath._countAndFlagsBits, wTmpFwEndLstmModelPath._object);

  [(objc_class *)v23.super.isa setWTmpFwEndLstmModelPath:v20];
  MEMORY[0x277D82BD8](v20);

  v22 = MEMORY[0x25F8892C0](wTmpFwEndRFModelPath._countAndFlagsBits, wTmpFwEndRFModelPath._object);

  [(objc_class *)v23.super.isa setWTmpFwEndRFModelPath:v22];
  MEMORY[0x277D82BD8](v22);

  v24 = MEMORY[0x25F8892C0](wTmpPeriodLstmModelPath._countAndFlagsBits, wTmpPeriodLstmModelPath._object);

  [(objc_class *)v23.super.isa setWTmpPeriodLstmModelPath:v24];
  MEMORY[0x277D82BD8](v24);
  if (heartRatePeriodTFModelPaths.value._rawValue)
  {

    rawValue = heartRatePeriodTFModelPaths.value._rawValue;
  }

  else
  {
    rawValue = _allocateUninitializedArray<A>(_:)();
  }

  if (rawValue)
  {
    isa = Array._bridgeToObjectiveC()().super.isa;

    v13 = isa;
  }

  else
  {
    v13 = 0;
  }

  [(objc_class *)v23.super.isa setHeartRatePeriodTFModelPaths:?];
  MEMORY[0x277D82BD8](v13);
  if (heartRatePeriodEnsembleModelPath.value._countAndFlagsBits)
  {

    v11._countAndFlagsBits = *&heartRatePeriodTFModelPaths.is_nil;
    v11._object = heartRatePeriodEnsembleModelPath.value._countAndFlagsBits;
  }

  else
  {
    v11 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  }

  if (v11._object)
  {
    v9 = MEMORY[0x25F8892C0](v11._countAndFlagsBits);

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  [(objc_class *)v23.super.isa setHeartRatePeriodEnsembleModelPath:v10];
  MEMORY[0x277D82BD8](v8);
}

uint64_t HealthDataStoreQuery.deinit()
{
  MEMORY[0x277D82BD8](*(v0 + 16));
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of NgtMenstrualAlgorithmsDayStreamProcessorConfig?((v0 + 40));
  return v2;
}

uint64_t protocol witness for HealthDataQuery.queryPregrancies(source:range:) in conformance HealthDataStoreQuery(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = protocol witness for PFLTaskRunner.run(task:useCase:context:) in conformance NightingaleDPFLRunner;

  return HealthDataStoreQuery.queryPregrancies(source:range:)(a1, a2);
}

uint64_t protocol witness for HealthDataQuery.queryRawSamples(_:_:) in conformance HealthDataStoreQuery(uint64_t a1, uint64_t a2)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v6 + 24) = v3;
  *v3 = *(v6 + 16);
  v3[1] = protocol witness for HealthDataQuery.queryRawSamples(_:_:) in conformance HealthDataStoreQuery;

  return HealthDataStoreQuery.queryRawSamples(_:_:)(a1, a2);
}

uint64_t protocol witness for HealthDataQuery.queryRawSamples(_:_:) in conformance HealthDataStoreQuery(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 16) = *v2;
  v8 = v3 + 16;

  if (v1)
  {
    v5 = *(*v8 + 8);
  }

  else
  {
    v4 = a1;
    v5 = *(*v8 + 8);
  }

  return v5(v4);
}

uint64_t protocol witness for HealthDataQuery.queryDailyAggSedentaryHeartRateBatched(_:_:) in conformance HealthDataStoreQuery(uint64_t a1, int a2)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v6 + 24) = v3;
  *v3 = *(v6 + 16);
  v3[1] = protocol witness for HealthDataQuery.queryDailyAggSedentaryHeartRateBatched(_:_:) in conformance HealthDataStoreQuery;

  return HealthDataStoreQuery.queryDailyAggSedentaryHeartRateBatched(_:_:)(a1, a2);
}

uint64_t protocol witness for HealthDataQuery.queryDailyAggSedentaryHeartRateBatched(_:_:) in conformance HealthDataStoreQuery(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v5;
  *(v6 + 16) = *v5;
  v11 = v6 + 16;

  if (v4)
  {
    v10 = *(*v11 + 8);

    return v10(v7);
  }

  else
  {
    v8 = *(*v11 + 8);

    return v8(a1, a2, a3, a4);
  }
}

double protocol witness for HealthDataQuery.getDayStreamProcessorConfig(birthDateRequired:shouldUseCachedConfig:) in conformance HealthDataStoreQuery@<D0>(char a1@<W0>, char a2@<W1>, Swift::tuple_NgtMenstrualAlgorithmsDayStreamProcessorConfig_urCycleLength_Double_urPeriodLength_Double *a3@<X8>)
{
  HealthDataStoreQuery.getDayStreamProcessorConfig(birthDateRequired:shouldUseCachedConfig:)(a3, a1 & 1, a2 & 1);
  if (v4)
  {
    return v5;
  }

  return result;
}

float protocol witness for HealthDataQuery.getBmi(dispatchGroup:hyperParams:) in conformance HealthDataStoreQuery(uint64_t a1, uint64_t a2)
{
  v5 = HealthDataStoreQuery.getBmi(dispatchGroup:hyperParams:)(a1, a2);
  if (v2)
  {
    return v4;
  }

  else
  {
    return v5;
  }
}

uint64_t consolidateSleepHours(_:)(uint64_t *a1)
{
  v61 = a1;
  v43 = closure #1 in consolidateSleepHours(_:);
  v44 = closure #2 in consolidateSleepHours(_:);
  v45 = "Fatal error";
  v46 = "Range requires lowerBound <= upperBound";
  v47 = "Swift/Range.swift";
  v89 = 0;
  v88 = 0;
  v48 = 0;
  v84 = 0;
  v83 = 0;
  v80 = 0;
  v81 = 0;
  v82 = 0;
  v75 = 0;
  v49 = 0;
  v50 = type metadata accessor for Date();
  v51 = *(v50 - 8);
  v52 = v50 - 8;
  v53 = (*(v51 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x28223BE20](0);
  v54 = &v16 - v53;
  v55 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v1);
  v56 = &v16 - v55;
  v57 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v3);
  v58 = &v16 - v57;
  v59 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v60 = &v16 - v59;
  v62 = type metadata accessor for DateInterval();
  v63 = *(v62 - 8);
  v64 = v62 - 8;
  v65 = (*(v63 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x28223BE20](v61);
  v66 = &v16 - v65;
  v67 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x28223BE20](v7);
  v68 = &v16 - v67;
  v69 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x28223BE20](v9);
  v70 = &v16 - v69;
  v89 = &v16 - v69;
  v88 = v11;
  v73 = *v11;

  v87 = v73;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo16HKCategorySampleCGMd);
  v72 = lazy protocol witness table accessor for type [HKCategorySample] and conformance [A]();
  v74 = Collection.isEmpty.getter();

  if (v74)
  {
    return _allocateUninitializedArray<A>(_:)();
  }

  v12 = v48;
  v38 = *v61;

  v86 = v38;
  result = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(v43, 0, v71, v62, MEMORY[0x277D84A98], v72, MEMORY[0x277D84AC0], v39);
  v40 = v12;
  v41 = result;
  if (!v12)
  {
    v34 = v41;
    outlined destroy of [(start: UInt32, end: UInt32)]();
    v85 = v34;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation12DateIntervalVGMd);
    lazy protocol witness table accessor for type [DateInterval] and conformance [A]();
    v14 = Sequence.sorted(by:)();
    v36 = 0;
    v37 = v14;
    v32 = v14;
    outlined destroy of [(start: UInt32, end: UInt32)]();
    v84 = v32;
    v83 = Array.init()();
    Array.subscript.getter();
    v33 = MEMORY[0x25F8895B0](v32, v62);
    if (v33 < 1)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    v78 = 1;
    v79 = v33;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd);
    lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
    Collection<>.makeIterator()();
    for (i = v36; ; i = v28)
    {
      v28 = i;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySnySiGGMd);
      IndexingIterator.next()();
      v29 = v76;
      if (v77)
      {
        break;
      }

      v27 = v29;
      v23 = v29;
      v75 = v29;
      v21 = *(v63 + 16);
      v22 = v63 + 16;
      v21(v68, v70, v62);
      Array.subscript.getter();
      v26 = DateInterval.intersects(_:)();
      v25 = *(v63 + 8);
      v24 = v63 + 8;
      v25(v66, v62);
      v25(v68, v62);
      if (v26)
      {
        DateInterval.start.getter();
        Array.subscript.getter();
        DateInterval.start.getter();
        v25(v66, v62);
        v18 = lazy protocol witness table accessor for type Date and conformance Date();
        min<A>(_:_:)();
        v20 = *(v51 + 8);
        v19 = v51 + 8;
        v20(v56, v50);
        v20(v58, v50);
        DateInterval.end.getter();
        Array.subscript.getter();
        DateInterval.end.getter();
        v25(v66, v62);
        max<A>(_:_:)();
        v20(v54, v50);
        v20(v56, v50);
        DateInterval.init(start:end:)();
      }

      else
      {
        v21(v68, v70, v62);
        Array.append(_:)();
        Array.subscript.getter();
      }

      (*(v63 + 40))(v70, v68, v62);
    }

    (*(v63 + 16))(v68, v70, v62);
    v16 = &v83;
    Array.append(_:)();
    type metadata accessor for HKCategorySample();
    v15 = default argument 1 of NightingaleDPFLRunner.sendLocationAsync<A>(location:force:work:)();
    Array.removeAll(keepingCapacity:)(v15 & 1);
    v17 = v83;

    (*(v63 + 8))(v70, v62);
    outlined destroy of [(start: UInt32, end: UInt32)]();

    return v17;
  }

  __break(1u);
  __break(1u);
  return result;
}

uint64_t closure #1 in consolidateSleepHours(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13 = a2;
  v9 = a1;
  v18 = 0;
  v10 = (*(*(type metadata accessor for Date() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v9);
  v15 = &v8 - v10;
  v11 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v2);
  v14 = &v8 - v11;
  v12 = *v4;
  v18 = v12;
  *&v5 = MEMORY[0x277D82BE0](v12).n128_u64[0];
  v17 = [v12 startDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  MEMORY[0x277D82BD8](v12);
  *&v6 = MEMORY[0x277D82BE0](v12).n128_u64[0];
  v16 = [v12 endDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  MEMORY[0x277D82BD8](v12);
  DateInterval.init(start:end:)();
  MEMORY[0x277D82BD8](v16);
  return MEMORY[0x277D82BD8](v17);
}

uint64_t closure #2 in consolidateSleepHours(_:)(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v18 = 0;
  v17 = 0;
  v13 = type metadata accessor for Date();
  v9 = *(v13 - 8);
  v10 = v13 - 8;
  v6 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v13);
  v11 = &v6 - v6;
  v7 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v6 - v6);
  v12 = &v6 - v7;
  v18 = a1;
  v17 = v4;
  DateInterval.start.getter();
  DateInterval.start.getter();
  v16 = static Date.< infix(_:_:)();
  v15 = *(v9 + 8);
  v14 = v9 + 8;
  v15(v11, v13);
  v15(v12, v13);
  return v16 & 1;
}

unint64_t lazy protocol witness table accessor for type [DateInterval] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [DateInterval] and conformance [A];
  if (!lazy protocol witness table cache variable for type [DateInterval] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10Foundation12DateIntervalVGMd);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [DateInterval] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [DateInterval] and conformance [A];
  if (!lazy protocol witness table cache variable for type [DateInterval] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10Foundation12DateIntervalVGMd);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [DateInterval] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type [HKQuantitySample] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [HKQuantitySample] and conformance [A];
  if (!lazy protocol witness table cache variable for type [HKQuantitySample] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo16HKQuantitySampleCGMd);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [HKQuantitySample] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t closure #1 in extractAggSHRBatched(_:_:_:_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a1;
  v17 = a2;
  v16 = a3;
  v13 = "Fatal error";
  v14 = "Unexpectedly found nil while unwrapping an Optional value";
  v15 = "NightingaleTraining/HealthDataStoreQuery.swift";
  v28 = 0;
  v27 = 0;
  v26 = 0;
  v18 = type metadata accessor for DateInterval();
  v19 = *(v18 - 8);
  v20 = v18 - 8;
  v21 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v22 = v9 - v21;
  v28 = MEMORY[0x28223BE20](v23);
  v27 = v3;
  v26 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19NightingaleTraining8IntervalVy10Foundation4DateVs6UInt32VGMd);
  v6 = (v23 + *(v5 + 48));
  v24 = *v6;
  if (v6[1])
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v12 = v24;
  }

  v9[1] = &v25;
  v25 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt32VSay10Foundation12DateIntervalVGGMd);
  v10 = Dictionary.subscript.modify();
  v11 = v7;
  if (*v7)
  {
    (*(v19 + 16))(v22, v16, v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation12DateIntervalVGMd);
    Array.append(_:)();
  }

  return v10();
}

uint64_t closure #2 in extractAggSHRBatched(_:_:_:_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v39 = a1;
  v33 = a2;
  v30 = a3;
  v31 = a4;
  v32 = a5;
  v24 = "Fatal error";
  v25 = "Unexpectedly found nil while unwrapping an Optional value";
  v26 = "NightingaleTraining/HealthDataStoreQuery.swift";
  v46 = 0;
  v45 = 0;
  v44 = 0;
  v43 = 0;
  v42 = 0;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalV8interval_Sf2hrtMd);
  v28 = (*(*(v27 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v27);
  v29 = &v16 - v28;
  v34 = type metadata accessor for DateInterval();
  v35 = *(v34 - 8);
  v36 = v34 - 8;
  v37 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v39);
  v38 = &v16 - v37;
  v46 = v5;
  v45 = v6;
  v44 = v7;
  v43 = v8;
  v42 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19NightingaleTraining8IntervalVy10Foundation4DateVs6UInt32VGMd);
  v11 = (v39 + *(v10 + 48));
  v40 = *v11;
  if (v11[1])
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v23 = v40;
  }

  v20 = &v41;
  v41 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt32VSay10Foundation12DateIntervalV8interval_Sf2hrtGGMd);
  v21 = Dictionary.subscript.modify();
  v22 = v12;
  if (*v12)
  {
    (*(v35 + 16))(v38, v30, v34);
    v16 = [v31 quantity];
    [v16 doubleValueForUnit_];
    v17 = v14;
    v15 = MEMORY[0x277D82BD8](v16);
    v19 = MEMORY[0x25F8897B0](v15, v17);
    v18 = *(v27 + 48);
    (*(v35 + 32))(v29, v38, v34);
    *&v29[v18] = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation12DateIntervalV8interval_Sf2hrtGMd);
    Array.append(_:)();
  }

  return v21();
}

uint64_t closure #3 in extractAggSHRBatched(_:_:_:_:_:_:_:)@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v7 = a2;
  v5 = a1;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalV8interval_Sf2hrtMd);
  v6 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = &v4 - v6;
  v10 = MEMORY[0x28223BE20](v5);
  outlined init with copy of (interval: DateInterval, hr: Float)(v10, &v4 - v6);
  *v7 = *&v9[*(v8 + 48)];
  v2 = type metadata accessor for DateInterval();
  return (*(*(v2 - 8) + 8))(v9);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> splitHR(_:_:_:_:)(Swift::OpaquePointer *a1, Swift::OpaquePointer *a2, Swift::OpaquePointer *a3, Swift::OpaquePointer *a4)
{
  v87 = a1;
  v85 = a2;
  v90 = a3;
  v86 = a4;
  v111 = 0;
  v110 = 0;
  v109 = 0;
  v108 = 0;
  v107 = 0;
  v106 = 0;
  v105 = 0;
  v93 = v104;
  v104[0] = 0;
  v104[1] = 0;
  v101 = 0;
  v102 = 0;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalV8interval_Sf2hrtMd);
  v56 = *(v55 - 8);
  v57 = v55 - 8;
  v58 = (*(v56 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v55);
  v59 = &v27 - v58;
  v60 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v61 = &v27 - v60;
  v62 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v27 - v60);
  v63 = &v27 - v62;
  v64 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v27 - v62);
  v65 = &v27 - v64;
  v111 = &v27 - v64;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalV8interval_Sf2hrtSgMd);
  v66 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v67 = &v27 - v66;
  v68 = 0;
  v69 = type metadata accessor for Date();
  v70 = *(v69 - 8);
  v71 = v69 - 8;
  v72 = (*(v70 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x28223BE20](v68);
  v73 = &v27 - v72;
  v74 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x28223BE20](v9);
  v75 = &v27 - v74;
  v76 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = MEMORY[0x28223BE20](v11);
  v77 = &v27 - v76;
  v78 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v13);
  v79 = &v27 - v78;
  v80 = type metadata accessor for DateInterval();
  v81 = *(v80 - 8);
  v82 = v80 - 8;
  v83 = (*(v81 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v80);
  v84 = &v27 - v83;
  v110 = &v27 - v83;
  v88 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = MEMORY[0x28223BE20](v87);
  v89 = &v27 - v88;
  v109 = v15;
  v108 = v16;
  v107 = v17;
  v106 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19NightingaleTraining21AugmentedIntervalTreeCy10Foundation4DateVypGMd);
  v91 = AugmentedIntervalTree.__allocating_init()();
  v105 = v91;
  rawValue = v90->_rawValue;

  v103 = rawValue;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation12DateIntervalVGMd);
  lazy protocol witness table accessor for type [DateInterval] and conformance [A]();
  Collection<>.makeIterator()();
  for (i = v95; ; i = v52)
  {
    v54 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySay10Foundation12DateIntervalVGGMd);
    IndexingIterator.next()();
    if ((*(v81 + 48))(v89, 1, v80) == 1)
    {
      break;
    }

    (*(v81 + 32))(v84, v89, v80);
    DateInterval.start.getter();
    DateInterval.end.getter();
    v19 = v54;
    memset(v97, 0, sizeof(v97));
    AugmentedIntervalTree.insert(start:end:context:)(v79, v77, v97);
    v52 = v19;
    v53 = v19;
    if (v19)
    {
      v32 = v53;
      outlined destroy of Pregnancy?(v97);
      v31 = *(v70 + 8);
      v30 = v70 + 8;
      v31(v77, v69);
      v31(v79, v69);
      (*(v81 + 8))(v84, v80);
      outlined destroy of [(start: UInt32, end: UInt32)]();

      v33 = v32;
      return;
    }

    outlined destroy of Pregnancy?(v97);
    v51 = *(v70 + 8);
    v50 = v70 + 8;
    v51(v77, v69);
    v51(v79, v69);
    (*(v81 + 8))(v84, v80);
  }

  outlined destroy of [(start: UInt32, end: UInt32)]();
  v47 = v86->_rawValue;

  v100 = v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation12DateIntervalV8interval_Sf2hrtGMd);
  lazy protocol witness table accessor for type [(interval: DateInterval, hr: Float)] and conformance [A]();
  Collection<>.makeIterator()();
  for (j = v54; ; j = v43)
  {
    v46 = j;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySay10Foundation12DateIntervalV8interval_Sf2hrtGGMd);
    IndexingIterator.next()();
    if ((*(v56 + 48))(v67, 1, v55) == 1)
    {
      outlined destroy of [(start: UInt32, end: UInt32)]();

      return;
    }

    v20 = v63;
    v40 = *&v67[*(v55 + 48)];
    v39 = *(v55 + 48);
    (*(v81 + 32))(v65);
    v21 = v65;
    *(v65 + v39) = v40;
    outlined init with copy of (interval: DateInterval, hr: Float)(v21, v20);
    DateInterval.start.getter();
    v22 = v61;
    v42 = *(v81 + 8);
    v41 = v81 + 8;
    v42(v63, v80);
    outlined init with copy of (interval: DateInterval, hr: Float)(v65, v22);
    DateInterval.end.getter();
    v42(v61, v80);
    v23 = v46;
    v24 = AugmentedIntervalTree.overlap(start:end:)(v75, v73);
    v43 = v23;
    v44 = v24;
    v45 = v23;
    if (v23)
    {
      break;
    }

    v38 = v44;
    v37 = *(v70 + 8);
    v36 = v70 + 8;
    v37(v73, v69);
    v37(v75, v69);
    if (v38)
    {
      outlined init with copy of (interval: DateInterval, hr: Float)(v65, v59);
      v25 = *&v59[*(v55 + 48)];
      v35 = &v98;
      v98 = v25;
    }

    else
    {
      outlined init with copy of (interval: DateInterval, hr: Float)(v65, v59);
      v26 = *&v59[*(v55 + 48)];
      v34 = &v99;
      v99 = v26;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd);
    Array.append(_:)();
    v42(v59, v80);
    outlined destroy of (interval: DateInterval, hr: Float)(v65);
  }

  v29 = v45;
  v28 = *(v70 + 8);
  v27 = v70 + 8;
  v28(v73, v69);
  v28(v75, v69);
  outlined destroy of (interval: DateInterval, hr: Float)(v65);
  outlined destroy of [(start: UInt32, end: UInt32)]();
}

uint64_t partial apply for closure #1 in HealthDataStoreQuery.queryDailyAggSedentaryHeartRateBatched(_:_:)(uint64_t a1, uint64_t a2)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v10 = *(v2 + 32);
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = partial apply for closure #34 in NightingaleDPFLRunner.run(task:useCase:context:);

  return closure #1 in HealthDataStoreQuery.queryDailyAggSedentaryHeartRateBatched(_:_:)(a1, a2, v8, v9, v10);
}

unint64_t type metadata accessor for NSSortDescriptor()
{
  v2 = lazy cache variable for type metadata for NSSortDescriptor;
  if (!lazy cache variable for type metadata for NSSortDescriptor)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for NSSortDescriptor);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for HKSampleQuery()
{
  v2 = lazy cache variable for type metadata for HKSampleQuery;
  if (!lazy cache variable for type metadata for HKSampleQuery)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for HKSampleQuery);
    return ObjCClassMetadata;
  }

  return v2;
}

void *outlined assign with take of DateComponents?(const void *a1, void *a2)
{
  v7 = type metadata accessor for DateComponents();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if ((v9)(a2, 1))
  {
    if (v9(a1, 1, v7))
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd);
      memcpy(a2, a1, *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v8 + 32))(a2, a1, v7);
      (*(v8 + 56))(a2, 0, 1, v7);
    }
  }

  else if (v9(a1, 1, v7))
  {
    (*(v8 + 8))(a2, v7);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 40))(a2, a1, v7);
  }

  return a2;
}

void *outlined init with copy of DateComponents?(const void *a1, void *a2)
{
  v6 = type metadata accessor for DateComponents();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

unint64_t type metadata accessor for NgtMenstrualAlgorithmsMLModelConfig()
{
  v2 = lazy cache variable for type metadata for NgtMenstrualAlgorithmsMLModelConfig;
  if (!lazy cache variable for type metadata for NgtMenstrualAlgorithmsMLModelConfig)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for NgtMenstrualAlgorithmsMLModelConfig);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type [HKCategorySample] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [HKCategorySample] and conformance [A];
  if (!lazy protocol witness table cache variable for type [HKCategorySample] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo16HKCategorySampleCGMd);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [HKCategorySample] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t outlined init with copy of (interval: DateInterval, hr: Float)(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for DateInterval();
  (*(*(v2 - 8) + 16))(a2, a1);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalV8interval_Sf2hrtMd);
  result = a2;
  *(a2 + *(v3 + 48)) = *(a1 + *(v3 + 48));
  return result;
}

uint64_t outlined destroy of (interval: DateInterval, hr: Float)(uint64_t a1)
{
  v1 = type metadata accessor for DateInterval();
  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

id @nonobjc HKCategoryType.init(identifier:)(uint64_t a1)
{
  v4 = [v1 initWithIdentifier_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id @nonobjc HKQueryDescriptor.init(sampleType:predicate:)(uint64_t a1, uint64_t a2)
{
  v6 = [v2 initWithSampleType_predicate_];
  MEMORY[0x277D82BD8](a2);
  MEMORY[0x277D82BD8](a1);
  return v6;
}

id @nonobjc HKSampleQuery.init(queryDescriptors:limit:resultsHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for HKQueryDescriptor();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v17 = a3;
  v18 = a4;
  aBlock = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = 0;
  v15 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed HKSampleQuery, @guaranteed [HKSample]?, @guaranteed Error?) -> ();
  v16 = &block_descriptor_65;
  v9 = _Block_copy(&aBlock);
  v11 = [v8 initWithQueryDescriptors:isa limit:a2 resultsHandler:?];
  _Block_release(v9);

  MEMORY[0x277D82BD8](isa);

  return v11;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed HKSampleQuery, @guaranteed [HKSample]?, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v10 = *(a1 + 32);

  MEMORY[0x277D82BE0](a2);
  MEMORY[0x277D82BE0](a3);
  if (a3)
  {
    type metadata accessor for HKSample();
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x277D82BD8](a3);
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v4 = MEMORY[0x277D82BE0](a4);
  if (a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = 0;
  }

  v10(a2, v8, v4);

  MEMORY[0x277D82BD8](a2);
}

id @nonobjc NSSortDescriptor.init(key:ascending:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = MEMORY[0x25F8892C0](a1);

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v3 = [v6 initWithKey_ascending_];
  MEMORY[0x277D82BD8](v5);
  return v3;
}

id @nonobjc HKSampleQuery.init(queryDescriptors:limit:sortDescriptors:resultsHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for HKQueryDescriptor();
  isa = Array._bridgeToObjectiveC()().super.isa;
  type metadata accessor for NSSortDescriptor();
  v11 = Array._bridgeToObjectiveC()().super.isa;
  v19 = a4;
  v20 = a5;
  aBlock = MEMORY[0x277D85DD0];
  v15 = 1107296256;
  v16 = 0;
  v17 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed HKSampleQuery, @guaranteed [HKSample]?, @guaranteed Error?) -> ();
  v18 = &block_descriptor;
  v10 = _Block_copy(&aBlock);
  v13 = [v9 initWithQueryDescriptors:isa limit:a2 sortDescriptors:v11 resultsHandler:?];
  _Block_release(v10);

  MEMORY[0x277D82BD8](v11);

  MEMORY[0x277D82BD8](isa);

  return v13;
}

unint64_t type metadata accessor for NgtMenstrualAlgorithmsDayStreamProcessorConfig()
{
  v2 = lazy cache variable for type metadata for NgtMenstrualAlgorithmsDayStreamProcessorConfig;
  if (!lazy cache variable for type metadata for NgtMenstrualAlgorithmsDayStreamProcessorConfig)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for NgtMenstrualAlgorithmsDayStreamProcessorConfig);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for HKCharacteristicType()
{
  v2 = lazy cache variable for type metadata for HKCharacteristicType;
  if (!lazy cache variable for type metadata for HKCharacteristicType)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for HKCharacteristicType);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t partial apply for closure #1 in closure #1 in HealthDataStoreQuery.queryDailyAggSedentaryHeartRateBatched(_:_:)(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = *(v1 + 44);
  v11 = *(v1 + 52);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = partial apply for closure #34 in NightingaleDPFLRunner.run(task:useCase:context:);

  return closure #1 in closure #1 in HealthDataStoreQuery.queryDailyAggSedentaryHeartRateBatched(_:_:)(a1, v6, v7, v8, v9, v10, v11);
}

uint64_t outlined destroy of TaskPriority?(uint64_t a1)
{
  v3 = type metadata accessor for TaskPriority();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void *outlined init with copy of TaskPriority?(const void *a1, void *a2)
{
  v6 = type metadata accessor for TaskPriority();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

void partial apply for closure #1 in closure #1 in closure #1 in HealthDataStoreQuery.queryDailyAggSedentaryHeartRate(for:)(void *a1, void *a2, void *a3)
{
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySDys6UInt32VSfG9daySHR10s_AC05nightC0SDyABSiG0B9SHRCountsAF0dE0ts5Error_pGMd) - 8);
  v4 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v5 = *(v3 + ((v4 + *(v9 + 64) + 3) & 0xFFFFFFFFFFFFFFFCLL));

  closure #1 in closure #1 in closure #1 in HealthDataStoreQuery.queryDailyAggSedentaryHeartRate(for:)(a1, a2, a3, (v3 + v4), v5);
}

uint64_t block_copy_helper_63(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t lazy protocol witness table accessor for type [HKSampleType] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [HKSampleType] and conformance [A];
  if (!lazy protocol witness table cache variable for type [HKSampleType] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo12HKSampleTypeCGMd);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [HKSampleType] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in HealthDataStoreQuery.queryRawSamples(_:_:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySDy19NightingaleTraining23HealthDataRawSampleTypeOAA0cD11QueryResult_pGs5Error_pGMd);
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = v3 + ((*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80));

  return closure #1 in closure #1 in closure #1 in HealthDataStoreQuery.queryRawSamples(_:_:)(a1, a2, a3, v5, v6, v7);
}

void *partial apply for closure #1 in closure #1 in closure #1 in HealthDataStoreQuery.queryPregrancies(source:range:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySay19NightingaleTraining9Pregnancy_pSgGs5Error_pGMd);
  v5 = v3 + ((*(*(v4 - 8) + 80) + 16) & ~*(*(v4 - 8) + 80));

  return closure #1 in closure #1 in closure #1 in HealthDataStoreQuery.queryPregrancies(source:range:)(a1, a2, a3, v5);
}

uint64_t Logging.default.unsafeMutableAddressor()
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  return __swift_project_value_buffer(v0, static Logging.default);
}

uint64_t one-time initialization function for default()
{
  v1 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v1, static Logging.default);
  __swift_project_value_buffer(v1, static Logging.default);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.priml.Nightingale", 0x1BuLL, 1);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Training", 8uLL, 1);
  return Logger.init(subsystem:category:)();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    return *a2;
  }

  return v3;
}

uint64_t __swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v5 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v2 = swift_slowAlloc();
    *a2 = v2;
    return v2;
  }

  return v5;
}

uint64_t static Logging.default.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = Logging.default.unsafeMutableAddressor();
  v1 = type metadata accessor for Logger();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

Swift::Float __swiftcall getBottomPercentile(percentile:_:)(Swift::Int percentile, Swift::OpaquePointer *_)
{
  v27 = percentile;
  v26 = _;
  v19 = closure #1 in getBottomPercentile(percentile:_:);
  v20 = "Fatal error";
  v21 = "Float value cannot be converted to Int because it is either infinite or NaN";
  v22 = "Swift/IntegerTypes.swift";
  v23 = "Float value cannot be converted to Int because the result would be less than Int.min";
  v24 = "Float value cannot be converted to Int because the result would be greater than Int.max";
  v43 = 0;
  v42 = 0;
  v25 = 0;
  v40 = 0;
  v38 = 0;
  v28 = type metadata accessor for FloatingPointRoundingRule();
  v29 = *(v28 - 8);
  v30 = v28 - 8;
  v31 = (*(v29 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v27);
  v32 = &v8 - v31;
  v33 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v2);
  v34 = &v8 - v33;
  v43 = v4;
  v42 = v5;
  v35 = *v5;

  v36 = MEMORY[0x25F8895B0](v35, MEMORY[0x277D83A90]);

  if (!v36)
  {
    return 0.0;
  }

  v6 = v25;
  rawValue = v26->_rawValue;

  v41 = rawValue;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd);
  lazy protocol witness table accessor for type [Float] and conformance [A]();
  v17 = Sequence.sorted(by:)();
  if (!v6)
  {
    v11 = v17;
    outlined destroy of [(start: UInt32, end: UInt32)]();
    v40 = v11;
    v12 = v27 / 100.0;
    v13 = v12 * MEMORY[0x25F8895B0]();
    (*(v29 + 104))(v34, *MEMORY[0x277D84688], v28);
    v39 = v13;
    (*(v29 + 16))(v32, v34, v28);
    v14 = (*(v29 + 88))(v32, v28);
    if (v14 != *MEMORY[0x277D84678])
    {
      if (v14 == *MEMORY[0x277D84670])
      {
        v39 = rintf(v13);
        goto LABEL_18;
      }

      if (v14 == *MEMORY[0x277D84680])
      {
        goto LABEL_15;
      }

      if (v14 != *MEMORY[0x277D84688])
      {
        if (v14 == *MEMORY[0x277D84660])
        {
          v39 = truncf(v13);
          goto LABEL_18;
        }

        if (v14 != *MEMORY[0x277D84668])
        {
          Float._roundSlowPath(_:)();
          (*(v29 + 8))(v32, v28);
LABEL_18:
          v10 = v39;
          (*(v29 + 8))(v34, v28);
          if ((LODWORD(v10) >> 23) == 255)
          {
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
          }

          if (v10 <= -9.2234e18)
          {
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
          }

          if (v10 >= 9.2234e18)
          {
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
          }

          v38 = v10;
          Array.subscript.getter();
          v9 = v37;

          return v9;
        }

        if ((Float.sign.getter() & 1) != 1)
        {
LABEL_15:
          v39 = ceilf(v13);
          goto LABEL_18;
        }
      }

      v39 = floorf(v13);
      goto LABEL_18;
    }

    v39 = roundf(v13);
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

NightingaleTraining::HealthDataRawSampleType_optional __swiftcall HealthDataRawSampleType.init(rawValue:)(Swift::Int rawValue)
{
  switch(rawValue)
  {
    case 0:
      return 0;
    case 1:
      return 1;
    case 2:
      return 2;
    case 3:
      return 3;
    case 4:
      return 4;
    case 5:
      return 5;
    case 6:
      return 6;
    case 7:
      return 7;
    case 8:
      return 8;
    case 9:
      return 9;
    case 10:
      return 10;
  }

  return 11;
}

uint64_t HealthDataRawSampleType.rawValue.getter(char a1)
{
  switch(a1)
  {
    case 0:
      return 0;
    case 1:
      return 1;
    case 2:
      return 2;
    case 3:
      return 3;
    case 4:
      return 4;
    case 5:
      return 5;
    case 6:
      return 6;
    case 7:
      return 7;
    case 8:
      return 8;
    case 9:
      return 9;
  }

  return 10;
}

NightingaleTraining::HealthDataRawSampleType_optional protocol witness for RawRepresentable.init(rawValue:) in conformance HealthDataRawSampleType@<W0>(Swift::Int *a1@<X0>, NightingaleTraining::HealthDataRawSampleType_optional *a2@<X8>)
{
  result.value = HealthDataRawSampleType.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance HealthDataRawSampleType@<X0>(uint64_t *a1@<X8>)
{
  result = HealthDataRawSampleType.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for HealthDataRawSampleType(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xF5)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 10) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 245;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 11;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for HealthDataRawSampleType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xF5)
  {
    v5 = ((a3 + 10) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xF5)
  {
    v4 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 10;
    }
  }

  return result;
}

uint64_t CalendarPeriodPrediction.mlConfig.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 24);
  MEMORY[0x277D82BE0](v2);
  swift_endAccess();
  return v2;
}

uint64_t CalendarPeriodPrediction.mlConfig.setter(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  swift_beginAccess();
  v2 = *(v1 + 24);
  *(v1 + 24) = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  return MEMORY[0x277D82BD8](a1);
}

double CalendarPeriodPrediction.urCycleLength.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 32);
  swift_endAccess();
  return v2;
}

uint64_t CalendarPeriodPrediction.urCycleLength.setter(double a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;
  return swift_endAccess();
}

double CalendarPeriodPrediction.urPeriodLength.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 40);
  swift_endAccess();
  return v2;
}

uint64_t CalendarPeriodPrediction.urPeriodLength.setter(double a1)
{
  swift_beginAccess();
  *(v1 + 40) = a1;
  return swift_endAccess();
}

uint64_t CalendarPeriodPrediction.init(config:mlConfig:urCycleLength:urPeriodLength:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  (MEMORY[0x277D82BE0])();
  *(v4 + 16) = a1;
  *(v4 + 32) = a3;
  *(v4 + 40) = a4;
  MEMORY[0x277D82BE0](a2);
  *(v4 + 24) = a2;
  MEMORY[0x277D82BD8](a2);
  MEMORY[0x277D82BD8](a1);
  return v10;
}

Swift::tuple_dayInputs_OpaquePointer_chronologicalOrderedCFs_OpaquePointer __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CalendarPeriodPrediction.toAlgorithmInputs(flow:otr:spotting:cycleFactors:swt:)(Swift::OpaquePointer flow, Swift::OpaquePointer otr, Swift::OpaquePointer spotting, Swift::OpaquePointer cycleFactors, Swift::OpaquePointer swt)
{
  rawValue = swt._rawValue;
  v62 = cycleFactors._rawValue;
  v70 = spotting._rawValue;
  v66 = otr._rawValue;
  v63 = flow._rawValue;
  v64 = 0;
  v90[1] = 0;
  v83 = 0;
  *&v79[8] = 0;
  v90[6] = flow._rawValue;
  v90[5] = otr._rawValue;
  v90[4] = spotting._rawValue;
  v90[3] = cycleFactors._rawValue;
  v90[2] = swt._rawValue;
  v76 = MEMORY[0x277D84CC0];
  v65 = MEMORY[0x277D84B78];
  v77 = MEMORY[0x277D84CD0];

  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSD4KeysVys6UInt32Vs5UInt8V_GMd);
  v68 = lazy protocol witness table accessor for type [UInt32 : UInt8].Keys and conformance [A : B].Keys();
  v90[0] = Set.init<A>(_:)();

  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sShys6UInt32VGMd);
  v69 = v74;
  v72 = v90;
  Set.formUnion<A>(_:)();

  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSD4KeysVys6UInt32VSb_GMd);
  lazy protocol witness table accessor for type [UInt32 : Bool].Keys and conformance [A : B].Keys();
  Set.formUnion<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSf_SStMd);

  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSD4KeysVys6UInt32VSf_SSt_GMd);
  lazy protocol witness table accessor for type [UInt32 : (Float, String)].Keys and conformance [A : B].Keys();
  Set.formUnion<A>(_:)();
  v78 = v90[0];

  *v79 = Set.isEmpty.getter();

  if (v79[0])
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v27[0] = 0;
    v27[1] = swift_allocError();
    *v24 = 30;
    swift_willThrow();
    v23 = v90;
    outlined destroy of [(start: UInt32, end: UInt32)]();
    goto LABEL_14;
  }

  v58 = v61;
  v54 = v90[0];

  v85 = v54;

  v55 = v27;
  MEMORY[0x28223BE20](v27);
  v56 = v26;
  v26[2] = v5;
  v26[3] = v66;
  v26[4] = rawValue;
  v26[5] = v6;
  v57 = type metadata accessor for NgtMenstrualAlgorithmsDayInput();
  v7 = lazy protocol witness table accessor for type Set<UInt32> and conformance Set<A>();
  v8 = v58;
  v10 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in CalendarPeriodPrediction.toAlgorithmInputs(flow:otr:spotting:cycleFactors:swt:), v56, v69, v57, MEMORY[0x277D84A98], v7, MEMORY[0x277D84AC0], v9);
  v59 = v8;
  v60 = v10;
  if (v8)
  {

    __break(1u);
    goto LABEL_10;
  }

  v49 = v60;
  v51 = 0;

  outlined destroy of [(start: UInt32, end: UInt32)]();
  v84 = v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo30NgtMenstrualAlgorithmsDayInputCGMd);
  lazy protocol witness table accessor for type [NgtMenstrualAlgorithmsDayInput] and conformance [A]();
  v11 = v51;
  v12 = Sequence.sorted(by:)();
  v52 = v11;
  v53 = v12;
  if (v11)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v40 = v53;
  v46 = 0;
  outlined destroy of [(start: UInt32, end: UInt32)]();
  v83 = v40;
  v82 = v62;
  v41 = v26;
  MEMORY[0x28223BE20](v26);
  v43 = &v26[-4];
  v26[-2] = closure #3 in CalendarPeriodPrediction.toAlgorithmInputs(flow:otr:spotting:cycleFactors:swt:);
  v26[-1] = 0;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys5UInt8VSays6UInt32V5start_AD3endtGGMd);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8V4type_s6UInt32V3daySb3endtGMd);
  v42 = v45;
  v14 = lazy protocol witness table accessor for type [UInt8 : [(start: UInt32, end: UInt32)]] and conformance [A : B]();
  v15 = v46;
  v17 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for thunk for @callee_guaranteed (@unowned UInt8, @guaranteed [(start: UInt32, end: UInt32)]) -> (@owned [(type: UInt8, day: UInt32, end: Bool)]), v43, v44, v45, MEMORY[0x277D84A98], v14, MEMORY[0x277D84AC0], v16);
  v47 = v15;
  v48 = v17;
  if (v15)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v36 = 0;
  v81 = v48;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySays5UInt8V4type_s6UInt32V3daySb3endtGGMd);
  v35 = lazy protocol witness table accessor for type [[(type: UInt8, day: UInt32, end: Bool)]] and conformance [A]();
  v18 = lazy protocol witness table accessor for type [(type: UInt8, day: UInt32, end: Bool)] and conformance [A]();
  v19 = v36;
  v37 = v18;
  v20 = Sequence.flatMap<A>(_:)();
  v38 = v19;
  v39 = v20;
  if (v19)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v30 = v39;
  v31 = 0;
  outlined destroy of [(start: UInt32, end: UInt32)]();
  v21 = v31;
  v80 = v30;
  v22 = Sequence.sorted(by:)();
  v32 = v21;
  v33 = v22;
  if (v21)
  {
LABEL_13:
    v23 = 0;
    __break(1u);
    goto LABEL_14;
  }

  v28 = v33;
  v29 = 0;
  outlined destroy of [(start: UInt32, end: UInt32)]();
  *&v79[4] = v28;
  outlined destroy of [(start: UInt32, end: UInt32)]();
  v13 = v28;
  v23 = v40;
LABEL_14:
  result.chronologicalOrderedCFs._rawValue = v13;
  result.dayInputs._rawValue = v23;
  return result;
}

uint64_t closure #1 in CalendarPeriodPrediction.toAlgorithmInputs(flow:otr:spotting:cycleFactors:swt:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, HKHealthStore *a6@<X8>)
{
  v35 = 0;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v31 = 0;
  v30 = 0;
  v35 = *a1;
  v20 = v35;
  v34 = a2;
  v33 = a3;
  v32 = a4;
  v31 = a5;
  type metadata accessor for NgtMenstrualAlgorithmsDayInput();
  isa = HKHealthStore.__allocating_init()().super.isa;
  v30 = isa;
  [(objc_class *)isa setJulianDay:v35];
  *(&v28 + 2) = v35;
  MEMORY[0x25F8891D0](v29, &v28 + 2, a2, MEMORY[0x277D84CC0], MEMORY[0x277D84B78], MEMORY[0x277D84CD0]);
  if ((v29[1] & 1) == 0)
  {
    v6 = NgtMenstrualAlgorithmsOvulationTestResult.init(rawValue:)(v29[0]);
    if ((v6 & 0x100) == 0)
    {
      [(objc_class *)isa setFlow:v6];
    }
  }

  v27 = v20;
  MEMORY[0x25F8891D0](&v28, &v27, a3, MEMORY[0x277D84CC0], MEMORY[0x277D84B78], MEMORY[0x277D84CD0]);
  if ((v28 & 0x100) == 0)
  {
    v7 = NgtMenstrualAlgorithmsOvulationTestResult.init(rawValue:)(v28);
    if ((v7 & 0x100) == 0)
    {
      [(objc_class *)isa setOvulationTestResult:v7];
    }
  }

  v24 = v20;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSf_SStMd);
  MEMORY[0x25F8891D0](&v25, &v24, a4, MEMORY[0x277D84CC0], v8, MEMORY[0x277D84CD0]);
  v13 = *&v25;
  v14 = v26;
  if (v26._object)
  {
    type metadata accessor for NgtMenstrualAlgorithmsWristTemperature();
    v11 = Double.init(_:)(v13);

    v36 = NgtMenstrualAlgorithmsWristTemperature.__allocating_init(temperature:forWatchIdentifier:)(v11, v14);
    v12 = v36.super.isa;
    [(objc_class *)isa setWristTemperature:v36._temperatureCelsius];
    MEMORY[0x277D82BD8](v12);
  }

  v22 = v20;
  MEMORY[0x25F8891D0](&v23, &v22, a5, MEMORY[0x277D84CC0], MEMORY[0x277D839B0], MEMORY[0x277D84CD0]);
  if (v23 == 2)
  {
    v10 = 0;
  }

  else
  {
    v10 = v23;
  }

  [(objc_class *)isa setSpotting:v10 & 1];
  MEMORY[0x277D82BE0](isa);
  a6->super.isa = isa;
  return MEMORY[0x277D82BD8](isa);
}

unint64_t type metadata accessor for NgtMenstrualAlgorithmsDayInput()
{
  v2 = lazy cache variable for type metadata for NgtMenstrualAlgorithmsDayInput;
  if (!lazy cache variable for type metadata for NgtMenstrualAlgorithmsDayInput)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for NgtMenstrualAlgorithmsDayInput);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type Set<UInt32> and conformance Set<A>()
{
  v2 = lazy protocol witness table cache variable for type Set<UInt32> and conformance Set<A>;
  if (!lazy protocol witness table cache variable for type Set<UInt32> and conformance Set<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sShys6UInt32VGMd);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Set<UInt32> and conformance Set<A>);
    return WitnessTable;
  }

  return v2;
}

BOOL closure #2 in CalendarPeriodPrediction.toAlgorithmInputs(flow:otr:spotting:cycleFactors:swt:)(id *a1, id *a2)
{
  v3 = *a2;
  v4 = [*a1 0x1FBA2D804];
  return v4 < [v3 0x1FBA2D804];
}

unint64_t lazy protocol witness table accessor for type [NgtMenstrualAlgorithmsDayInput] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [NgtMenstrualAlgorithmsDayInput] and conformance [A];
  if (!lazy protocol witness table cache variable for type [NgtMenstrualAlgorithmsDayInput] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo30NgtMenstrualAlgorithmsDayInputCGMd);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [NgtMenstrualAlgorithmsDayInput] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t closure #3 in CalendarPeriodPrediction.toAlgorithmInputs(flow:otr:spotting:cycleFactors:swt:)(char a1, uint64_t a2)
{
  v13 = a1;
  v12 = a2;
  v11 = a1;
  v10 = a2;
  v8[16] = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt32V5start_AB3endtGMd);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8V4type_s6UInt32V3daySb3endtGMd);
  v2 = lazy protocol witness table accessor for type [(start: UInt32, end: UInt32)] and conformance [A]();
  v9 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in closure #3 in CalendarPeriodPrediction.toAlgorithmInputs(flow:otr:spotting:cycleFactors:swt:), v8, v5, v6, MEMORY[0x277D84A98], v2, MEMORY[0x277D84AC0], v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySays5UInt8V4type_s6UInt32V3daySb3endtGGMd);
  lazy protocol witness table accessor for type [[(type: UInt8, day: UInt32, end: Bool)]] and conformance [A]();
  lazy protocol witness table accessor for type [(type: UInt8, day: UInt32, end: Bool)] and conformance [A]();
  v4 = Sequence.flatMap<A>(_:)();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  return v4;
}

uint64_t closure #1 in closure #3 in CalendarPeriodPrediction.toAlgorithmInputs(flow:otr:spotting:cycleFactors:swt:)@<X0>(int *a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v7 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5UInt8V4type_s6UInt32V3daySb3endtMd);
  result = _allocateUninitializedArray<A>(_:)();
  *v4 = a2;
  *(v4 + 4) = v5;
  *(v4 + 8) = 0;
  *(v4 + 12) = a2;
  *(v4 + 16) = v7;
  *(v4 + 20) = 1;
  _finalizeUninitializedArray<A>(_:)();
  *a3 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type [[(type: UInt8, day: UInt32, end: Bool)]] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [[(type: UInt8, day: UInt32, end: Bool)]] and conformance [A];
  if (!lazy protocol witness table cache variable for type [[(type: UInt8, day: UInt32, end: Bool)]] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySays5UInt8V4type_s6UInt32V3daySb3endtGGMd);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [[(type: UInt8, day: UInt32, end: Bool)]] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

Swift::tuple_periods_OpaquePointer_analyses_OpaquePointer __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CalendarPeriodPrediction.analyze(flow:otr:spotting:cycleFactors:)(Swift::OpaquePointer *flow, Swift::OpaquePointer *otr, Swift::OpaquePointer *spotting, Swift::OpaquePointer *cycleFactors)
{
  rawValue = 0;
  v33 = 0;
  v32 = 0;
  v31 = 0;
  memset(__b, 0, sizeof(__b));
  v39 = flow;
  v38 = otr;
  v37 = spotting;
  v36 = cycleFactors;
  v35 = v4;
  flowa = flow->_rawValue;

  otra = otr->_rawValue;

  spottinga = spotting->_rawValue;

  cycleFactorsa = cycleFactors->_rawValue;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32V_Sf_SSttMd);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSf_SStMd);
  v27 = Dictionary.init(dictionaryLiteral:)();
  v5 = CalendarPeriodPrediction.toAlgorithmInputs(flow:otr:spotting:cycleFactors:swt:)(flowa, otra, spottinga, cycleFactorsa, v27);
  if (v6)
  {

LABEL_18:
    v8 = v14;
    v7 = v14;
    goto LABEL_21;
  }

  rawValue = v5.dayInputs._rawValue;
  v33 = v5.chronologicalOrderedCFs._rawValue;
  v18 = CalendarPeriodPrediction.predictHistoricalPeriods(dayInputs:chronologicalOrderedCFs:)(v5.dayInputs._rawValue, v5.chronologicalOrderedCFs._rawValue);
  v32 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSf_SftMd);
  v31 = Dictionary.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32V5start_AB3endtMd);
  v7 = MEMORY[0x25F8895B0](v18);
  if (!__OFSUB__(v7, 1))
  {
    if (((v7 - 1) & 0x8000000000000000) != 0)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    Array.subscript.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss10ArraySliceVys6UInt32V5start_AD3endtGMd);
    lazy protocol witness table accessor for type ArraySlice<(start: UInt32, end: UInt32)> and conformance ArraySlice<A>();
    Collection<>.makeIterator()();
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVys10ArraySliceVys6UInt32V5start_AF3endtGGMd);
      v7 = IndexingIterator.next()();
      if (v29)
      {
        outlined destroy of IndexingIterator<ArraySlice<(start: UInt32, end: UInt32)>>();

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSf15periodStartMean_Sf0aB3StdtMd);
        v15 = _dictionaryUpCast<A, B, C, D>(_:)();

        outlined destroy of [(start: UInt32, end: UInt32)]();

        v7 = v18;
        v8 = v15;
        goto LABEL_21;
      }

      v17 = v28 + 0x100000000;
      if (HIDWORD(v28) == -1)
      {
        goto LABEL_20;
      }

      CalendarPeriodPrediction.processDayStream(dayInputs:chronologicalOrderedCFs:predictionDay:)(v5.dayInputs._rawValue, v5.chronologicalOrderedCFs._rawValue, HIDWORD(v17));
      v16 = v10;
      CalendarPeriodPrediction.extractPeriodStartMeanAndStd(_:_:_:)(v10, HIDWORD(v17), v28);
      if (v12)
      {
        break;
      }

      if ((v11 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt32VSf_SftGMd);
        Dictionary.subscript.setter();
      }

      MEMORY[0x277D82BD8](v16);
    }

    MEMORY[0x277D82BD8](v16);
    outlined destroy of IndexingIterator<ArraySlice<(start: UInt32, end: UInt32)>>();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    goto LABEL_18;
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result.analyses._rawValue = v8;
  result.periods._rawValue = v7;
  return result;
}

uint64_t CalendarPeriodPrediction.predictOvu(flow:otr:spotting:cycleFactors:swt:pregnancy:)(Swift::OpaquePointer a1, Swift::OpaquePointer a2, Swift::OpaquePointer a3, Swift::OpaquePointer a4, Swift::OpaquePointer a5, void *a6)
{
  v58 = a6;
  v59 = 0;
  v73 = 0;
  v72 = 0;
  v71 = 0;
  v70 = 0;
  v67 = 0;
  rawValue = a1._rawValue;
  v78 = a2._rawValue;
  v77 = a3._rawValue;
  v76 = a4._rawValue;
  v75 = a5._rawValue;
  v74 = a6;
  v6 = CalendarPeriodPrediction.toAlgorithmInputs(flow:otr:spotting:cycleFactors:swt:)(a1, a2, a3, a4, a5);
  v60 = v7;
  v61 = v6;
  v62 = v7;
  if (v7)
  {
    result = v62;
    v30 = v62;
    return result;
  }

  v53 = v61.chronologicalOrderedCFs._rawValue;
  v54 = v61.dayInputs._rawValue;
  v72 = v61.dayInputs._rawValue;
  v71 = v61.chronologicalOrderedCFs._rawValue;
  v56 = v58[3];
  v55 = v58[4];
  __swift_project_boxed_opaque_existential_1(v58, v56);
  v8 = (*(v55 + 16))(v56);
  v9 = v8 != 0;
  result = (v8 - 1);
  v11 = !v9;
  v57 = result;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    CalendarPeriodPrediction.processDayStream(dayInputs:chronologicalOrderedCFs:predictionDay:)(v54, v53, v57);
    v50 = v60;
    v51 = v12;
    v52 = v60;
    v41 = v12;
    v48 = 0;
    v70 = v12;
    v43 = [v12 fertilityPredictions];
    v42 = v43;
    v44 = type metadata accessor for NgtMenstrualAlgorithmsPrediction();
    v68 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v26;
    MEMORY[0x28223BE20](v26);
    v46 = v25;
    v25[2] = v13;
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo32NgtMenstrualAlgorithmsPredictionCGMd);
    lazy protocol witness table accessor for type [NgtMenstrualAlgorithmsPrediction] and conformance [A]();
    v14 = v48;
    Sequence.first(where:)();
    v49 = v14;
    if (v14)
    {
      result = v45;
      __break(1u);
      return result;
    }

    outlined destroy of [(start: UInt32, end: UInt32)]();

    v40 = v69;
    if (!v69)
    {
      lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
      v26[2] = 0;
      v27 = swift_allocError();
      *v24 = 59;
      swift_willThrow();

      result = v27;
      v30 = v27;
      return result;
    }

    v39 = v40;
    v38 = v40;
    v67 = v40;
    v15 = [v40 lowRange];
    v66 = v16;
    v65 = v15;
    if (_NSRange.upperBound.getter() < 1)
    {
LABEL_22:
      lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
      v28 = 0;
      v29 = swift_allocError();
      *v23 = 60;
      swift_willThrow();

      result = v29;
      v30 = v29;
      return result;
    }

    v17 = [v38 lowRange];
    v64 = v18;
    v63 = v17;
    v36 = _NSRange.upperBound.getter();
    v35 = v58[3];
    v34 = v58[4];
    __swift_project_boxed_opaque_existential_1(v58, v35);
    v19 = (*(v34 + 40))(v35);
    result = v36;
    v20 = v36 + v19;
    v21 = __OFADD__(v36, v19);
    v37 = v20;
    if (!v21)
    {
      v22 = __OFSUB__(v37, 1);
      v33 = v37 - 1;
      if (!v22)
      {
        if (v33 < 0)
        {
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        if (v33 <= 0xFFFFFFFFLL)
        {
          v32 = v49;
          v31 = v33;

          return v31;
        }

        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        goto LABEL_22;
      }

      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

BOOL closure #1 in CalendarPeriodPrediction.predictOvu(flow:otr:spotting:cycleFactors:swt:pregnancy:)(id *a1, void *a2)
{
  v6 = [*a1 julianDayOfWindowStart];
  v5 = a2[3];
  v4 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v5);
  return v6 == (*(v4 + 40))(v5);
}

uint64_t CalendarPeriodPrediction.predictHistoricalPeriods(flow:otr:spotting:cycleFactors:)(void **a1, void **a2, void **a3, void **a4)
{
  v15._rawValue = *a1;

  otr._rawValue = *a2;

  spotting._rawValue = *a3;

  cycleFactors._rawValue = *a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32V_Sf_SSttMd);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSf_SStMd);
  v16 = Dictionary.init(dictionaryLiteral:)();
  v4 = CalendarPeriodPrediction.toAlgorithmInputs(flow:otr:spotting:cycleFactors:swt:)(v15, otr, spotting, cycleFactors, v16);

  if (v5)
  {
    return v7;
  }

  v8 = CalendarPeriodPrediction.predictHistoricalPeriods(dayInputs:chronologicalOrderedCFs:)(v4.dayInputs._rawValue, v4.chronologicalOrderedCFs._rawValue);

  return v8;
}

uint64_t CalendarPeriodPrediction.predictHistoricalPeriods(dayInputs:chronologicalOrderedCFs:)(uint64_t a1, uint64_t a2)
{
  v57 = a2;
  v62 = a1;
  v58 = 0;
  v77 = 0;
  v75 = 0;
  v69 = 0;
  v79 = a1;
  v78 = a2;
  type metadata accessor for NgtMenstrualAlgorithmsHistoricalAnalyzer();
  v60 = &v76;
  swift_beginAccess();
  v61 = *(v59 + 24);
  v2 = v61;
  swift_endAccess();
  NgtMenstrualAlgorithmsHistoricalAnalyzer.__allocating_init(mlConfig:)(v3, v61);
  v64 = v4;
  v63 = v4;
  v75 = v4;
  v74 = v62;
  v5 = v4;
  v68 = v64;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo30NgtMenstrualAlgorithmsDayInputCGMd);
  lazy protocol witness table accessor for type [NgtMenstrualAlgorithmsDayInput] and conformance [A]();
  Sequence.forEach(_:)();
  v67 = v66;
  if (v66)
  {

    __break(1u);
    goto LABEL_10;
  }

  v55 = 0;

  v73 = v57;
  v6 = v63;
  v51 = &v26;
  MEMORY[0x28223BE20](&v26);
  v25[2] = v63;
  v52 = v25;
  MEMORY[0x28223BE20](v25);
  v53 = v24;
  v24[2] = partial apply for closure #2 in CalendarPeriodPrediction.predictHistoricalPeriods(dayInputs:chronologicalOrderedCFs:);
  v24[3] = v7;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8V4type_s6UInt32V3daySb3endtGMd);
  lazy protocol witness table accessor for type [(type: UInt8, day: UInt32, end: Bool)] and conformance [A]();
  v8 = v55;
  Sequence.forEach(_:)();
  v56 = v8;
  if (v8)
  {
LABEL_10:

    __break(1u);
    goto LABEL_11;
  }

  v46 = 0;

  v42 = lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
  v9 = swift_allocError();
  v10 = v63;
  v47 = v9;
  v43 = v9;
  *v11 = 15;
  v12 = v10;
  v44 = v24;
  MEMORY[0x28223BE20](v24);
  v45 = &v24[-4];
  v24[-2] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo37NgtMenstrualAlgorithmsHistoricalCycleCGMd);
  v15 = v46;
  v48 = v14;
  static PFLUtils.rethrow<A>(_:for:)();
  v49 = v15;
  v50 = v15;
  if (v15)
  {
LABEL_11:
    v27 = v50;

    result = v27;
    v30 = v27;
    return result;
  }

  v39 = 0;

  v71 = v72;
  lazy protocol witness table accessor for type [NgtMenstrualAlgorithmsHistoricalCycle] and conformance [A]();
  v16 = v39;
  v17 = Sequence.sorted(by:)();
  v40 = v16;
  v41 = v17;
  if (v16)
  {
    __break(1u);
    goto LABEL_13;
  }

  v33 = v41;
  v36 = 0;
  outlined destroy of [(start: UInt32, end: UInt32)]();
  v70 = v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32V5start_AB3endtMd);
  v34 = v35;
  v18 = lazy protocol witness table accessor for type [NgtMenstrualAlgorithmsHistoricalCycle] and conformance [A]();
  v19 = v36;
  v21 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #5 in CalendarPeriodPrediction.predictHistoricalPeriods(dayInputs:chronologicalOrderedCFs:), 0, v48, v35, MEMORY[0x277D84A98], v18, MEMORY[0x277D84AC0], v20);
  v37 = v19;
  v38 = v21;
  if (v19)
  {
LABEL_13:
    result = 0;
    __break(1u);
    return result;
  }

  v32 = v38;
  outlined destroy of [(start: UInt32, end: UInt32)]();
  v69 = v32;
  if (MEMORY[0x25F8895B0]() < 1)
  {
    v28 = 0;
    v29 = swift_allocError();
    *v23 = 12;
    swift_willThrow();

    result = v29;
    v30 = v29;
  }

  else
  {
    v31 = v37;

    return v32;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ArraySlice<(start: UInt32, end: UInt32)> and conformance ArraySlice<A>()
{
  v2 = lazy protocol witness table cache variable for type ArraySlice<(start: UInt32, end: UInt32)> and conformance ArraySlice<A>;
  if (!lazy protocol witness table cache variable for type ArraySlice<(start: UInt32, end: UInt32)> and conformance ArraySlice<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss10ArraySliceVys6UInt32V5start_AD3endtGMd);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type ArraySlice<(start: UInt32, end: UInt32)> and conformance ArraySlice<A>);
    return WitnessTable;
  }

  return v2;
}

uint64_t closure #2 in CalendarPeriodPrediction.predictHistoricalPeriods(dayInputs:chronologicalOrderedCFs:)(uint64_t a1, unsigned int a2, char a3, void *a4)
{
  result = NgtMenstrualAlgorithmsOvulationTestResult.init(rawValue:)(a1);
  if ((result & 0x100) == 0)
  {
    if (a3)
    {
      return [a4 endPhase:result onJulianDay:a2];
    }

    else
    {
      return [a4 beginPhase:result onJulianDay:a2];
    }
  }

  return result;
}

uint64_t closure #3 in CalendarPeriodPrediction.predictHistoricalPeriods(dayInputs:chronologicalOrderedCFs:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  v8[1] = a1;
  v9 = 0;
  v8[0] = 0;
  v7 = [a1 analyzeWithError_];
  v6 = v8[0];
  MEMORY[0x277D82BE0](v8[0]);
  v2 = v9;
  v9 = v6;
  MEMORY[0x277D82BD8](v2);
  if (v7)
  {
    type metadata accessor for NgtMenstrualAlgorithmsHistoricalCycle();
    *a2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    return MEMORY[0x277D82BD8](v7);
  }

  else
  {
    v4 = v9;
    _convertNSErrorToError(_:)();
    MEMORY[0x277D82BD8](v4);
    return swift_willThrow();
  }
}

BOOL closure #4 in CalendarPeriodPrediction.predictHistoricalPeriods(dayInputs:chronologicalOrderedCFs:)(id *a1, id *a2)
{
  v3 = *a2;
  v4 = [*a1 0x1FCEC5ECFLL];
  return v4 < [v3 0x1FCEC5ECFLL];
}

id closure #5 in CalendarPeriodPrediction.predictHistoricalPeriods(dayInputs:chronologicalOrderedCFs:)@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  *a2 = [*a1 julianDayOfMenstruationStart];
  result = [v3 julianDayOfMenstruationEnd];
  a2[1] = result;
  return result;
}

void CalendarPeriodPrediction.processDayStream(dayInputs:chronologicalOrderedCFs:predictionDay:)(uint64_t a1, uint64_t a2, Swift::UInt32 a3)
{
  v47 = *MEMORY[0x277D85DE8];
  v37 = 0;
  v36 = 0;
  v35 = 0;
  v34 = 0;
  memset(&v33[6], 0, 24);
  v33[2] = 0;
  v33[3] = 0;
  v41 = a1;
  v40 = a2;
  v39 = a3;
  v38 = v3;
  swift_beginAccess();
  cached = *(v3 + 16);
  MEMORY[0x277D82BE0](cached);
  swift_endAccess();
  CalendarPeriodPrediction.getDayStreamProcessorConfigFromConfig(cached:lastJulianDay:)(v4, cached, a3);
  config = v5;
  MEMORY[0x277D82BD8](cached);
  v37 = config;
  type metadata accessor for NgtMenstrualAlgorithmsDayStreamProcessor();
  MEMORY[0x277D82BE0](config);
  swift_beginAccess();
  mlConfig = *(v24 + 24);
  MEMORY[0x277D82BE0](mlConfig);
  swift_endAccess();
  NgtMenstrualAlgorithmsDayStreamProcessor.__allocating_init(config:mlConfig:)(v6, config, mlConfig);
  v28 = v7;
  v36 = v7;
  if (a3 < 0x226)
  {
    __break(1u);
    __break(1u);
LABEL_28:
    __break(1u);
    return;
  }

  v35 = a3 - 549;
  v34 = a3;
  type metadata accessor for NgtMenstrualAlgorithmsDayInput();
  v8 = MEMORY[0x25F8895B0](a1);
  v20 = v8 - 1;
  if (__OFSUB__(v8, 1))
  {
    goto LABEL_28;
  }

  if (v20 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v33[4] = 0;
  v33[5] = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd);
  lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
  Collection<>.makeIterator()();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySnySiGGMd);
    IndexingIterator.next()();
    if (v46)
    {
      break;
    }

    Array.subscript.getter();
    v19 = [v32 julianDay];
    (MEMORY[0x277D82BD8])();
    if (v19 < a3 - 549 || (Array.subscript.getter(), v18 = [v30 julianDay], (MEMORY[0x277D82BD8])(), a3 < v18))
    {
      Array.subscript.getter();
      v17 = [v31 julianDay];
      (MEMORY[0x277D82BD8])();
      if (a3 < v17)
      {
        break;
      }
    }

    else
    {
      Array.subscript.getter();
      [v28 appendDay_];
      (MEMORY[0x277D82BD8])();
    }
  }

  v33[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8V4type_s6UInt32V3daySb3endtGMd);
  lazy protocol witness table accessor for type [(type: UInt8, day: UInt32, end: Bool)] and conformance [A]();
  Collection<>.makeIterator()();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySays5UInt8V4type_s6UInt32V3daySb3endtGGMd);
    IndexingIterator.next()();
    if (v45 == 2 || a3 < v44)
    {
      break;
    }

    v29 = NgtMenstrualAlgorithmsOvulationTestResult.init(rawValue:)(v43);
    if ((v29 & 0x100) == 0)
    {
      if (v45)
      {
        [v28 endPhase:v29 onJulianDay:v44];
      }

      else
      {
        [v28 beginPhase:v29 onJulianDay:v44];
      }
    }
  }

  outlined destroy of [(start: UInt32, end: UInt32)]();
  v42 = 0;
  v33[0] = 0;
  v16 = [v28 analyzeWithMostRecentMenstrualFlowJulianDayUpdated:a3 error:v33];
  v15 = v33[0];
  MEMORY[0x277D82BE0](v33[0]);
  v10 = v42;
  v42 = v15;
  MEMORY[0x277D82BD8](v10);
  if (v16)
  {
    v14 = v16;
  }

  else
  {
    v12 = v42;
    v13 = _convertNSErrorToError(_:)();
    MEMORY[0x277D82BD8](v12);
    swift_willThrow();

    v14 = 0;
  }

  if (!v14)
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    swift_allocError();
    *v11 = 2;
    swift_willThrow();
  }

  MEMORY[0x277D82BD8](v28);
  MEMORY[0x277D82BD8](config);
}

Swift::tuple_Float_Float_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CalendarPeriodPrediction.extractPeriodStartMeanAndStd(_:_:_:)(NgtMenstrualAlgorithmsAnalysis *a1, Swift::UInt32 a2, Swift::UInt32 a3)
{
  v9 = [(NgtMenstrualAlgorithmsAnalysis *)a1 menstruationPredictions];
  type metadata accessor for NgtMenstrualAlgorithmsPrediction();
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo32NgtMenstrualAlgorithmsPredictionCGMd);
  lazy protocol witness table accessor for type [NgtMenstrualAlgorithmsPrediction] and conformance [A]();
  v3 = _ArrayProtocol.filter(_:)();
  if (v10)
  {
    __break(1u);
    __break(1u);
  }

  else
  {
    MEMORY[0x277D82BD8](v9);
    lazy protocol witness table accessor for type [NgtMenstrualAlgorithmsPrediction] and conformance [A]();
    Sequence.sorted(by:)();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    lazy protocol witness table accessor for type [NgtMenstrualAlgorithmsPrediction] and conformance [A]();
    Collection.first.getter();

    if (v11)
    {
      v6 = MEMORY[0x25F8897B0]([v11 startProbabilityMean]);
      v7 = LODWORD(v6) | (COERCE_UNSIGNED_INT(MEMORY[0x25F8897B0]([v11 startProbabilityStdDev])) << 32);
      (MEMORY[0x277D82BD8])();
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v3 = v8;
  }

  result.value._1 = v5;
  result.value._0 = v4;
  result.is_nil = v3;
  return result;
}

unint64_t type metadata accessor for NgtMenstrualAlgorithmsPrediction()
{
  v2 = lazy cache variable for type metadata for NgtMenstrualAlgorithmsPrediction;
  if (!lazy cache variable for type metadata for NgtMenstrualAlgorithmsPrediction)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for NgtMenstrualAlgorithmsPrediction);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type [NgtMenstrualAlgorithmsPrediction] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [NgtMenstrualAlgorithmsPrediction] and conformance [A];
  if (!lazy protocol witness table cache variable for type [NgtMenstrualAlgorithmsPrediction] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo32NgtMenstrualAlgorithmsPredictionCGMd);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [NgtMenstrualAlgorithmsPrediction] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [NgtMenstrualAlgorithmsPrediction] and conformance [A];
  if (!lazy protocol witness table cache variable for type [NgtMenstrualAlgorithmsPrediction] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo32NgtMenstrualAlgorithmsPredictionCGMd);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [NgtMenstrualAlgorithmsPrediction] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [NgtMenstrualAlgorithmsPrediction] and conformance [A];
  if (!lazy protocol witness table cache variable for type [NgtMenstrualAlgorithmsPrediction] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo32NgtMenstrualAlgorithmsPredictionCGMd);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [NgtMenstrualAlgorithmsPrediction] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for NgtMenstrualAlgorithmsHistoricalAnalyzer()
{
  v2 = lazy cache variable for type metadata for NgtMenstrualAlgorithmsHistoricalAnalyzer;
  if (!lazy cache variable for type metadata for NgtMenstrualAlgorithmsHistoricalAnalyzer)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for NgtMenstrualAlgorithmsHistoricalAnalyzer);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type [NgtMenstrualAlgorithmsHistoricalCycle] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [NgtMenstrualAlgorithmsHistoricalCycle] and conformance [A];
  if (!lazy protocol witness table cache variable for type [NgtMenstrualAlgorithmsHistoricalCycle] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo37NgtMenstrualAlgorithmsHistoricalCycleCGMd);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [NgtMenstrualAlgorithmsHistoricalCycle] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [NgtMenstrualAlgorithmsHistoricalCycle] and conformance [A];
  if (!lazy protocol witness table cache variable for type [NgtMenstrualAlgorithmsHistoricalCycle] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo37NgtMenstrualAlgorithmsHistoricalCycleCGMd);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [NgtMenstrualAlgorithmsHistoricalCycle] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

BOOL closure #1 in CalendarPeriodPrediction.extractPeriodStartMeanAndStd(_:_:_:)(id *a1, int a2)
{
  v6 = *a1;
  v7 = [*a1 isOngoingMenstruation];
  *&v2 = MEMORY[0x277D82BE0](v6).n128_u64[0];
  v4 = (v7 & 1) == 0 && [v6 julianDayOfWindowStart] == a2;
  MEMORY[0x277D82BD8](v6);
  return v4;
}

BOOL closure #2 in CalendarPeriodPrediction.extractPeriodStartMeanAndStd(_:_:_:)(id *a1, id *a2)
{
  v5 = *a2;
  [*a1 0x1FD58BAEBLL];
  v6 = v2;
  [v5 0x1FD58BAEBLL];
  return v6 < v3;
}

void __swiftcall CalendarPeriodPrediction.getDayStreamProcessorConfigFromConfig(cached:lastJulianDay:)(NgtMenstrualAlgorithmsDayStreamProcessorConfig *__return_ptr retstr, NgtMenstrualAlgorithmsDayStreamProcessorConfig *cached, Swift::UInt32 lastJulianDay)
{
  v38 = cached;
  v36 = lastJulianDay;
  v50 = 0;
  v49 = 0;
  v48 = 0;
  v47 = 0;
  v44 = 0;
  v41 = 0;
  v33 = 0;
  v28 = type metadata accessor for DateComponents();
  v29 = *(v28 - 8);
  v30 = v28 - 8;
  v31 = (*(v29 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v28);
  v32 = &v6 - v31;
  v34 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v33);
  v35 = &v6 - v34;
  v50 = v4;
  v49 = v5;
  v48 = v3;
  type metadata accessor for NgtMenstrualAlgorithmsDayStreamProcessorConfig();
  isa = HKHealthStore.__allocating_init()().super.isa;
  v47 = isa;
  [(objc_class *)isa setTodayAsJulianDay:v36];
  v46 = [(NgtMenstrualAlgorithmsDayStreamProcessorConfig *)v38 julianDayOfUserReportedCycleLength];
  if (v46)
  {
    v24 = &v46;
    v25 = v46;
    MEMORY[0x277D82BE0](v46);
    outlined destroy of NgtMenstrualAlgorithmsDayStreamProcessorConfig?(v24);
    v26 = [(NSNumber *)v25 unsignedIntValue];
    MEMORY[0x277D82BD8](v25);
    v27 = v26;
  }

  else
  {
    outlined destroy of NgtMenstrualAlgorithmsDayStreamProcessorConfig?(&v46);
    v27 = 0x100000000;
  }

  v23 = v27;
  if ((v27 & 0x100000000) == 0)
  {
    v22 = v23;
    v41 = v23;
    v40 = v23;
    v39 = v36;
    min<A>(_:_:)();
    v21 = UInt32._bridgeToObjectiveC()().super.super.isa;
    [(objc_class *)isa setJulianDayOfUserReportedCycleLength:?];
    MEMORY[0x277D82BD8](v21);
  }

  v45 = [(NgtMenstrualAlgorithmsDayStreamProcessorConfig *)v38 julianDayOfUserReportedMenstruationLength];
  if (v45)
  {
    v17 = &v45;
    v18 = v45;
    MEMORY[0x277D82BE0](v45);
    outlined destroy of NgtMenstrualAlgorithmsDayStreamProcessorConfig?(v17);
    v19 = [(NSNumber *)v18 unsignedIntValue];
    MEMORY[0x277D82BD8](v18);
    v20 = v19;
  }

  else
  {
    outlined destroy of NgtMenstrualAlgorithmsDayStreamProcessorConfig?(&v45);
    v20 = 0x100000000;
  }

  v16 = v20;
  if ((v20 & 0x100000000) == 0)
  {
    v15 = v16;
    v44 = v16;
    v43 = v16;
    v42 = v36;
    min<A>(_:_:)();
    v14 = UInt32._bridgeToObjectiveC()().super.super.isa;
    [(objc_class *)isa setJulianDayOfUserReportedMenstruationLength:?];
    MEMORY[0x277D82BD8](v14);
  }

  v11 = [(NgtMenstrualAlgorithmsDayStreamProcessorConfig *)v38 userReportedCycleLength];
  [(objc_class *)isa setUserReportedCycleLength:?];
  MEMORY[0x277D82BD8](v11);
  v12 = [(NgtMenstrualAlgorithmsDayStreamProcessorConfig *)v38 userReportedMenstruationLength];
  [(objc_class *)isa setUserReportedMenstruationLength:?];
  MEMORY[0x277D82BD8](v12);
  v13 = [(NgtMenstrualAlgorithmsDayStreamProcessorConfig *)v38 birthDateComponents];
  if (v13)
  {
    v10 = v13;
    v9 = v13;
    static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v29 + 32))(v35, v32, v28);
    (*(v29 + 56))(v35, 0, 1, v28);
    MEMORY[0x277D82BD8](v9);
  }

  else
  {
    (*(v29 + 56))(v35, 1, 1, v28);
  }

  if ((*(v29 + 48))(v35, 1, v28) == 1)
  {
    v8 = 0;
  }

  else
  {
    v7 = DateComponents._bridgeToObjectiveC()().super.isa;
    (*(v29 + 8))(v35, v28);
    v8 = v7;
  }

  [(objc_class *)isa setBirthDateComponents:v8];
  MEMORY[0x277D82BD8](v6);
}

unint64_t type metadata accessor for NgtMenstrualAlgorithmsDayStreamProcessor()
{
  v2 = lazy cache variable for type metadata for NgtMenstrualAlgorithmsDayStreamProcessor;
  if (!lazy cache variable for type metadata for NgtMenstrualAlgorithmsDayStreamProcessor)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for NgtMenstrualAlgorithmsDayStreamProcessor);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t CalendarPeriodPrediction.deinit()
{
  MEMORY[0x277D82BD8](*(v0 + 16));
  MEMORY[0x277D82BD8](*(v0 + 24));
  return v2;
}

id @nonobjc NgtMenstrualAlgorithmsHistoricalAnalyzer.init(mlConfig:)(uint64_t a1)
{
  v4 = [v1 initWithMlConfig_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id @nonobjc NgtMenstrualAlgorithmsDayStreamProcessor.init(config:mlConfig:)(uint64_t a1, uint64_t a2)
{
  v6 = [v2 initWithConfig_mlConfig_];
  MEMORY[0x277D82BD8](a2);
  MEMORY[0x277D82BD8](a1);
  return v6;
}

unint64_t type metadata accessor for NgtMenstrualAlgorithmsHistoricalCycle()
{
  v2 = lazy cache variable for type metadata for NgtMenstrualAlgorithmsHistoricalCycle;
  if (!lazy cache variable for type metadata for NgtMenstrualAlgorithmsHistoricalCycle)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for NgtMenstrualAlgorithmsHistoricalCycle);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for NgtMenstrualAlgorithmsWristTemperature()
{
  v2 = lazy cache variable for type metadata for NgtMenstrualAlgorithmsWristTemperature;
  if (!lazy cache variable for type metadata for NgtMenstrualAlgorithmsWristTemperature)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for NgtMenstrualAlgorithmsWristTemperature);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t static HIDMorpheusExtensions.extendMorpheus()()
{
  v523 = closure #1 in static HIDMorpheusExtensions.extendMorpheus();
  v497 = closure #2 in static HIDMorpheusExtensions.extendMorpheus();
  v498 = closure #3 in static HIDMorpheusExtensions.extendMorpheus();
  v499 = closure #4 in static HIDMorpheusExtensions.extendMorpheus();
  v500 = closure #5 in static HIDMorpheusExtensions.extendMorpheus();
  v501 = closure #6 in static HIDMorpheusExtensions.extendMorpheus();
  v502 = closure #7 in static HIDMorpheusExtensions.extendMorpheus();
  v503 = closure #8 in static HIDMorpheusExtensions.extendMorpheus();
  v504 = closure #9 in static HIDMorpheusExtensions.extendMorpheus();
  v505 = closure #10 in static HIDMorpheusExtensions.extendMorpheus();
  v506 = closure #11 in static HIDMorpheusExtensions.extendMorpheus();
  v507 = closure #12 in static HIDMorpheusExtensions.extendMorpheus();
  v508 = closure #13 in static HIDMorpheusExtensions.extendMorpheus();
  v509 = closure #14 in static HIDMorpheusExtensions.extendMorpheus();
  v510 = closure #15 in static HIDMorpheusExtensions.extendMorpheus();
  v511 = closure #16 in static HIDMorpheusExtensions.extendMorpheus();
  v524 = 0;
  v512 = (*(*(type metadata accessor for Arguments() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v522 = v191 - v512;
  v526 = type metadata accessor for MorpheusProgram();
  v515 = "create_augmented_interval_tree_int_any";
  v514 = 38;
  v513 = 1;
  v0 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("create_augmented_interval_tree_int_any", 0x26uLL, 1);
  countAndFlagsBits = v0._countAndFlagsBits;
  object = v0._object;
  v516 = type metadata accessor for Function();
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v515, v514, v513 & 1);
  v525 = v1._countAndFlagsBits;
  v521 = v1._object;
  v520 = _allocateUninitializedArray<A>(_:)();
  v517 = default argument 1 of Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();
  v518 = default argument 1 of Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();
  v519 = default argument 3 of Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();
  default argument 3 of Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();
  Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();
  default argument 2 of Function.init(name:arguments:attrs:body:)();
  v2 = Function.__allocating_init(name:arguments:attrs:body:)();
  v3 = v528;
  v530 = v2;
  static MorpheusProgram.registerFunction(name:f:)();
  v531 = v3;
  v532 = v3;
  if (v3)
  {
    v206 = v532;

    v207 = v206;
  }

  else
  {

    v483 = "create_augmented_interval_tree_int_pregnancy";
    v484 = 44;
    v482 = 1;
    v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("create_augmented_interval_tree_int_pregnancy", 0x2CuLL, 1);
    v493 = v4._countAndFlagsBits;
    v492 = v4._object;
    v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v483, v484, v482 & 1);
    v491 = v5._countAndFlagsBits;
    v489 = v5._object;
    v490 = 0;
    v488 = _allocateUninitializedArray<A>(_:)();
    v485 = default argument 1 of Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();
    v486 = default argument 1 of Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();
    v487 = default argument 3 of Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();
    default argument 3 of Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();
    Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();
    default argument 2 of Function.init(name:arguments:attrs:body:)();
    v6 = Function.__allocating_init(name:arguments:attrs:body:)();
    v7 = v531;
    v494 = v6;
    static MorpheusProgram.registerFunction(name:f:)();
    v495 = v7;
    v496 = v7;
    if (v7)
    {
      v205 = v496;

      v207 = v205;
    }

    else
    {

      v464 = "Cycle";
      v465 = 5;
      v466 = 1;
      v8 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Cycle", 5uLL, 1);
      v478 = v8._countAndFlagsBits;
      v477 = v8._object;
      v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v464, v465, v466 & 1);
      v476 = v9._countAndFlagsBits;
      v474 = v9._object;
      v469 = MEMORY[0x277D837D0];
      v468 = _allocateUninitializedArray<A>(_:)();
      v467 = v10;
      v11 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("start", v465, v466 & 1);
      v12 = v466;
      *v467 = v11;
      v13 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("end", 3uLL, v12 & 1);
      v14 = v468;
      v467[1] = v13;
      _finalizeUninitializedArray<A>(_:)();
      v473 = v14;
      v470 = default argument 1 of Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();
      v471 = default argument 1 of Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();
      v472 = default argument 3 of Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();
      default argument 3 of Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();
      v475 = 0;
      Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();
      default argument 2 of Function.init(name:arguments:attrs:body:)();
      v15 = Function.__allocating_init(name:arguments:attrs:body:)();
      v16 = v495;
      v479 = v15;
      static MorpheusProgram.registerFunction(name:f:)();
      v480 = v16;
      v481 = v16;
      if (v16)
      {
        v204 = v481;

        v207 = v204;
      }

      else
      {

        v442 = "HIDPFLUtils.findClosest";
        v443 = 23;
        v447 = 1;
        v17 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HIDPFLUtils.findClosest", 0x17uLL, 1);
        v460 = v17._countAndFlagsBits;
        v459 = v17._object;
        v18 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v442, v443, v447 & 1);
        v458 = v18._countAndFlagsBits;
        v456 = v18._object;
        v448 = MEMORY[0x277D837D0];
        v446 = _allocateUninitializedArray<A>(_:)();
        v445 = v19;
        v444 = 6;
        v20 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("values", 6uLL, v447 & 1);
        v21 = v447;
        v22 = v444;
        *v445 = v20;
        v23 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("target", v22, v21 & 1);
        v24 = v447;
        v445[1] = v23;
        v25 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("mode", 4uLL, v24 & 1);
        v26 = v446;
        v445[2] = v25;
        _finalizeUninitializedArray<A>(_:)();
        v455 = v26;
        v451 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd);
        v450 = _allocateUninitializedArray<A>(_:)();
        v449 = v27;
        v28 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ge", 2uLL, v447 & 1);
        v29 = v449;
        v30 = v450;
        v449[1]._object = v448;
        *v29 = v28;
        _finalizeUninitializedArray<A>(_:)();
        v454 = v30;
        v452 = default argument 1 of Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();
        v453 = default argument 1 of Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();
        default argument 3 of Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();
        v457 = 0;
        Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();
        default argument 2 of Function.init(name:arguments:attrs:body:)();
        v31 = Function.__allocating_init(name:arguments:attrs:body:)();
        v32 = v480;
        v461 = v31;
        static MorpheusProgram.registerFunction(name:f:)();
        v462 = v32;
        v463 = v32;
        if (v32)
        {
          v203 = v463;

          v207 = v203;
        }

        else
        {

          v424 = "MetricsUtils.bucketize";
          v425 = 22;
          v426 = 1;
          v33 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MetricsUtils.bucketize", 0x16uLL, 1);
          v438 = v33._countAndFlagsBits;
          v437 = v33._object;
          v34 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v424, v425, v426 & 1);
          v436 = v34._countAndFlagsBits;
          v434 = v34._object;
          v429 = MEMORY[0x277D837D0];
          v428 = _allocateUninitializedArray<A>(_:)();
          v427 = v35;
          v36 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("value", 5uLL, v426 & 1);
          v37 = v426;
          *v427 = v36;
          v38 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("buckets", 7uLL, v37 & 1);
          v39 = v428;
          v427[1] = v38;
          _finalizeUninitializedArray<A>(_:)();
          v433 = v39;
          v430 = default argument 1 of Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();
          v431 = default argument 1 of Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();
          v432 = default argument 3 of Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();
          default argument 3 of Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();
          v435 = 0;
          Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();
          default argument 2 of Function.init(name:arguments:attrs:body:)();
          v40 = Function.__allocating_init(name:arguments:attrs:body:)();
          v41 = v462;
          v439 = v40;
          static MorpheusProgram.registerFunction(name:f:)();
          v440 = v41;
          v441 = v41;
          if (v41)
          {
            v202 = v441;

            v207 = v202;
          }

          else
          {

            v406 = "MetricsUtils.bucketizeArray";
            v407 = 27;
            v408 = 1;
            v42 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MetricsUtils.bucketizeArray", 0x1BuLL, 1);
            v420 = v42._countAndFlagsBits;
            v419 = v42._object;
            v43 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v406, v407, v408 & 1);
            v418 = v43._countAndFlagsBits;
            v416 = v43._object;
            v411 = MEMORY[0x277D837D0];
            v410 = _allocateUninitializedArray<A>(_:)();
            v409 = v44;
            v45 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("values", 6uLL, v408 & 1);
            v46 = v408;
            *v409 = v45;
            v47 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("buckets", 7uLL, v46 & 1);
            v48 = v410;
            v409[1] = v47;
            _finalizeUninitializedArray<A>(_:)();
            v415 = v48;
            v412 = default argument 1 of Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();
            v413 = default argument 1 of Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();
            v414 = default argument 3 of Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();
            default argument 3 of Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();
            v417 = 0;
            Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();
            default argument 2 of Function.init(name:arguments:attrs:body:)();
            v49 = Function.__allocating_init(name:arguments:attrs:body:)();
            v50 = v440;
            v421 = v49;
            static MorpheusProgram.registerFunction(name:f:)();
            v422 = v50;
            v423 = v50;
            if (v50)
            {
              v201 = v423;

              v207 = v201;
            }

            else
            {

              v388 = "AUC.rocCurve";
              v389 = 12;
              v390 = 1;
              v51 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AUC.rocCurve", 0xCuLL, 1);
              v402 = v51._countAndFlagsBits;
              v401 = v51._object;
              v52 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v388, v389, v390 & 1);
              v400 = v52._countAndFlagsBits;
              v398 = v52._object;
              v393 = MEMORY[0x277D837D0];
              v392 = _allocateUninitializedArray<A>(_:)();
              v391 = v53;
              v54 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("outputs", 7uLL, v390 & 1);
              v55 = v390;
              *v391 = v54;
              v56 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("labels", 6uLL, v55 & 1);
              v57 = v392;
              v391[1] = v56;
              _finalizeUninitializedArray<A>(_:)();
              v397 = v57;
              v394 = default argument 1 of Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();
              v395 = default argument 1 of Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();
              v396 = default argument 3 of Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();
              default argument 3 of Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();
              v399 = 0;
              Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();
              default argument 2 of Function.init(name:arguments:attrs:body:)();
              v58 = Function.__allocating_init(name:arguments:attrs:body:)();
              v59 = v422;
              v403 = v58;
              static MorpheusProgram.registerFunction(name:f:)();
              v404 = v59;
              v405 = v59;
              if (v59)
              {
                v200 = v405;

                v207 = v200;
              }

              else
              {

                v372 = 1;
                v60 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AUC.rocAUCScore", 0xFuLL, 1);
                v384 = v60._countAndFlagsBits;
                v383 = v60._object;
                v61 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AUC.rocCurve", 0xCuLL, v372 & 1);
                v382 = v61._countAndFlagsBits;
                v380 = v61._object;
                v371 = 3;
                v375 = MEMORY[0x277D837D0];
                v374 = _allocateUninitializedArray<A>(_:)();
                v373 = v62;
                v63 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("tpr", v371, v372 & 1);
                v64 = v372;
                v65 = v371;
                *v373 = v63;
                v66 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("fpr", v65, v64 & 1);
                v67 = v372;
                v373[1] = v66;
                v68 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("maxFPR", 6uLL, v67 & 1);
                v69 = v374;
                v373[2] = v68;
                _finalizeUninitializedArray<A>(_:)();
                v379 = v69;
                v70 = _allocateUninitializedArray<A>(_:)();
                *(v71 + 24) = MEMORY[0x277D839F8];
                *v71 = 1.0;
                _finalizeUninitializedArray<A>(_:)();
                v378 = v70;
                v376 = default argument 1 of Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();
                v377 = default argument 1 of Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();
                default argument 3 of Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();
                v381 = 0;
                Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();
                default argument 2 of Function.init(name:arguments:attrs:body:)();
                v72 = Function.__allocating_init(name:arguments:attrs:body:)();
                v73 = v404;
                v385 = v72;
                static MorpheusProgram.registerFunction(name:f:)();
                v386 = v73;
                v387 = v73;
                if (v73)
                {
                  v199 = v387;

                  v207 = v199;
                }

                else
                {

                  v353 = "AUC.precisionRecallCurve";
                  v354 = 24;
                  v355 = 1;
                  v74 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AUC.precisionRecallCurve", 0x18uLL, 1);
                  v367 = v74._countAndFlagsBits;
                  v366 = v74._object;
                  v75 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v353, v354, v355 & 1);
                  v365 = v75._countAndFlagsBits;
                  v363 = v75._object;
                  v358 = MEMORY[0x277D837D0];
                  v357 = _allocateUninitializedArray<A>(_:)();
                  v356 = v76;
                  v77 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("outputs", 7uLL, v355 & 1);
                  v78 = v355;
                  *v356 = v77;
                  v79 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("labels", 6uLL, v78 & 1);
                  v80 = v357;
                  v356[1] = v79;
                  _finalizeUninitializedArray<A>(_:)();
                  v362 = v80;
                  v359 = default argument 1 of Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();
                  v360 = default argument 1 of Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();
                  v361 = default argument 3 of Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();
                  default argument 3 of Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();
                  v364 = 0;
                  Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();
                  default argument 2 of Function.init(name:arguments:attrs:body:)();
                  v81 = Function.__allocating_init(name:arguments:attrs:body:)();
                  v82 = v386;
                  v368 = v81;
                  static MorpheusProgram.registerFunction(name:f:)();
                  v369 = v82;
                  v370 = v82;
                  if (v82)
                  {
                    v198 = v370;

                    v207 = v198;
                  }

                  else
                  {

                    v335 = "AUC.prAUCScore";
                    v336 = 14;
                    v337 = 1;
                    v83 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AUC.prAUCScore", 0xEuLL, 1);
                    v349 = v83._countAndFlagsBits;
                    v348 = v83._object;
                    v84 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v335, v336, v337 & 1);
                    v347 = v84._countAndFlagsBits;
                    v345 = v84._object;
                    v340 = MEMORY[0x277D837D0];
                    v339 = _allocateUninitializedArray<A>(_:)();
                    v338 = v85;
                    v86 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("precision", 9uLL, v337 & 1);
                    v87 = v337;
                    *v338 = v86;
                    v88 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("recall", 6uLL, v87 & 1);
                    v89 = v339;
                    v338[1] = v88;
                    _finalizeUninitializedArray<A>(_:)();
                    v344 = v89;
                    v341 = default argument 1 of Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();
                    v342 = default argument 1 of Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();
                    v343 = default argument 3 of Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();
                    default argument 3 of Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();
                    v346 = 0;
                    Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();
                    default argument 2 of Function.init(name:arguments:attrs:body:)();
                    v90 = Function.__allocating_init(name:arguments:attrs:body:)();
                    v91 = v369;
                    v350 = v90;
                    static MorpheusProgram.registerFunction(name:f:)();
                    v351 = v91;
                    v352 = v91;
                    if (v91)
                    {
                      v197 = v352;

                      v207 = v197;
                    }

                    else
                    {

                      v317 = "AUC.bucketConfusionMatrix";
                      v318 = 25;
                      v319 = 1;
                      v92 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AUC.bucketConfusionMatrix", 0x19uLL, 1);
                      v331 = v92._countAndFlagsBits;
                      v330 = v92._object;
                      v93 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v317, v318, v319 & 1);
                      v329 = v93._countAndFlagsBits;
                      v327 = v93._object;
                      v322 = MEMORY[0x277D837D0];
                      v321 = _allocateUninitializedArray<A>(_:)();
                      v320 = v94;
                      v95 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("outputs", 7uLL, v319 & 1);
                      v96 = v319;
                      *v320 = v95;
                      v97 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("labels", 6uLL, v96 & 1);
                      v98 = v319;
                      v320[1] = v97;
                      v99 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("numThresholds", 0xDuLL, v98 & 1);
                      v100 = v321;
                      v320[2] = v99;
                      _finalizeUninitializedArray<A>(_:)();
                      v326 = v100;
                      v323 = default argument 1 of Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();
                      v324 = default argument 1 of Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();
                      v325 = default argument 3 of Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();
                      default argument 3 of Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();
                      v328 = 0;
                      Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();
                      default argument 2 of Function.init(name:arguments:attrs:body:)();
                      v101 = Function.__allocating_init(name:arguments:attrs:body:)();
                      v102 = v351;
                      v332 = v101;
                      static MorpheusProgram.registerFunction(name:f:)();
                      v333 = v102;
                      v334 = v102;
                      if (v102)
                      {
                        v196 = v334;

                        v207 = v196;
                      }

                      else
                      {

                        v298 = "AUC.tprAtFPR";
                        v299 = 12;
                        v300 = 1;
                        v103 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AUC.tprAtFPR", 0xCuLL, 1);
                        v313 = v103._countAndFlagsBits;
                        v312 = v103._object;
                        v104 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v298, v299, v300 & 1);
                        v311 = v104._countAndFlagsBits;
                        v309 = v104._object;
                        v301 = 3;
                        v304 = MEMORY[0x277D837D0];
                        v303 = _allocateUninitializedArray<A>(_:)();
                        v302 = v105;
                        v106 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("targetFPR", 9uLL, v300 & 1);
                        v107 = v300;
                        v108 = v301;
                        *v302 = v106;
                        v109 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("tpr", v108, v107 & 1);
                        v110 = v300;
                        v111 = v301;
                        v302[1] = v109;
                        v112 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("fpr", v111, v110 & 1);
                        v113 = v303;
                        v302[2] = v112;
                        _finalizeUninitializedArray<A>(_:)();
                        v308 = v113;
                        v305 = default argument 1 of Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();
                        v306 = default argument 1 of Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();
                        v307 = default argument 3 of Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();
                        default argument 3 of Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();
                        v310 = 0;
                        Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();
                        default argument 2 of Function.init(name:arguments:attrs:body:)();
                        v114 = Function.__allocating_init(name:arguments:attrs:body:)();
                        v115 = v333;
                        v314 = v114;
                        static MorpheusProgram.registerFunction(name:f:)();
                        v315 = v115;
                        v316 = v115;
                        if (v115)
                        {
                          v195 = v316;

                          v207 = v195;
                        }

                        else
                        {

                          v278 = "AUC.precisionAtFPR";
                          v279 = 18;
                          v281 = 1;
                          v116 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AUC.precisionAtFPR", 0x12uLL, 1);
                          v294 = v116._countAndFlagsBits;
                          v293 = v116._object;
                          v117 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v278, v279, v281 & 1);
                          v292 = v117._countAndFlagsBits;
                          v290 = v117._object;
                          v282 = 3;
                          v285 = MEMORY[0x277D837D0];
                          v284 = _allocateUninitializedArray<A>(_:)();
                          v283 = v118;
                          v280 = 9;
                          v119 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("targetFPR", 9uLL, v281 & 1);
                          v120 = v281;
                          v121 = v280;
                          *v283 = v119;
                          v122 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("precision", v121, v120 & 1);
                          v123 = v281;
                          v124 = v282;
                          v283[1] = v122;
                          v125 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("fpr", v124, v123 & 1);
                          v126 = v284;
                          v283[2] = v125;
                          _finalizeUninitializedArray<A>(_:)();
                          v289 = v126;
                          v286 = default argument 1 of Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();
                          v287 = default argument 1 of Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();
                          v288 = default argument 3 of Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();
                          default argument 3 of Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();
                          v291 = 0;
                          Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();
                          default argument 2 of Function.init(name:arguments:attrs:body:)();
                          v127 = Function.__allocating_init(name:arguments:attrs:body:)();
                          v128 = v315;
                          v295 = v127;
                          static MorpheusProgram.registerFunction(name:f:)();
                          v296 = v128;
                          v297 = v128;
                          if (v128)
                          {
                            v194 = v297;

                            v207 = v194;
                          }

                          else
                          {

                            v260 = "PFLStats.meanAndStd";
                            v261 = 19;
                            v262 = 1;
                            v129 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PFLStats.meanAndStd", 0x13uLL, 1);
                            v274 = v129._countAndFlagsBits;
                            v273 = v129._object;
                            v130 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v260, v261, v262 & 1);
                            v272 = v130._countAndFlagsBits;
                            v270 = v130._object;
                            v265 = MEMORY[0x277D837D0];
                            v264 = _allocateUninitializedArray<A>(_:)();
                            v263 = v131;
                            v132 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("array", 5uLL, v262 & 1);
                            v133 = v262;
                            *v263 = v132;
                            v134 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("method", 6uLL, v133 & 1);
                            v135 = v264;
                            v263[1] = v134;
                            _finalizeUninitializedArray<A>(_:)();
                            v269 = v135;
                            v266 = default argument 1 of Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();
                            v267 = default argument 1 of Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();
                            v268 = default argument 3 of Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();
                            default argument 3 of Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();
                            v271 = 0;
                            Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();
                            default argument 2 of Function.init(name:arguments:attrs:body:)();
                            v136 = Function.__allocating_init(name:arguments:attrs:body:)();
                            v137 = v296;
                            v275 = v136;
                            static MorpheusProgram.registerFunction(name:f:)();
                            v276 = v137;
                            v277 = v137;
                            if (v137)
                            {
                              v193 = v277;

                              v207 = v193;
                            }

                            else
                            {

                              v240 = "NightingaleDMetricsProcessor.generateMetrics";
                              v241 = 44;
                              v243 = 1;
                              v138 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("NightingaleDMetricsProcessor.generateMetrics", 0x2CuLL, 1);
                              v256 = v138._countAndFlagsBits;
                              v255 = v138._object;
                              v139 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v240, v241, v243 & 1);
                              v254 = v139._countAndFlagsBits;
                              v252 = v139._object;
                              v247 = MEMORY[0x277D837D0];
                              v246 = _allocateUninitializedArray<A>(_:)();
                              v245 = v140;
                              v141 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("task", 4uLL, v243 & 1);
                              v142 = v243;
                              *v245 = v141;
                              v242 = 11;
                              v143 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("hyperParams", 0xBuLL, v142 & 1);
                              v144 = v243;
                              v245[1] = v143;
                              v145 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("outputs", 7uLL, v144 & 1);
                              v146 = v243;
                              v245[2] = v145;
                              v147 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("labels", 6uLL, v146 & 1);
                              v148 = v243;
                              v245[3] = v147;
                              v149 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("historicalPeriods", 0x11uLL, v148 & 1);
                              v150 = v243;
                              v245[4] = v149;
                              v244 = 12;
                              v151 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("sliceEndDays", 0xCuLL, v150 & 1);
                              v152 = v243;
                              v153 = v242;
                              v245[5] = v151;
                              v154 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("pregnancies", v153, v152 & 1);
                              v155 = v243;
                              v245[6] = v154;
                              v156 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("today", 5uLL, v155 & 1);
                              v157 = v243;
                              v158 = v244;
                              v245[7] = v156;
                              v159 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("metricPrefix", v158, v157 & 1);
                              v160 = v246;
                              v245[8] = v159;
                              _finalizeUninitializedArray<A>(_:)();
                              v251 = v160;
                              v248 = default argument 1 of Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();
                              v249 = default argument 1 of Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();
                              v250 = default argument 3 of Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();
                              default argument 3 of Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();
                              v253 = 0;
                              Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();
                              default argument 2 of Function.init(name:arguments:attrs:body:)();
                              v161 = Function.__allocating_init(name:arguments:attrs:body:)();
                              v162 = v276;
                              v257 = v161;
                              static MorpheusProgram.registerFunction(name:f:)();
                              v258 = v162;
                              v259 = v162;
                              if (v162)
                              {
                                v192 = v259;

                                v207 = v192;
                              }

                              else
                              {

                                v222 = "HIDPFLUtils.subtract";
                                v223 = 20;
                                v224 = 1;
                                v163 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HIDPFLUtils.subtract", 0x14uLL, 1);
                                v236 = v163._countAndFlagsBits;
                                v235 = v163._object;
                                v164 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v222, v223, v224 & 1);
                                v234 = v164._countAndFlagsBits;
                                v232 = v164._object;
                                v227 = MEMORY[0x277D837D0];
                                v226 = _allocateUninitializedArray<A>(_:)();
                                v225 = v165;
                                v166 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("minuend", 7uLL, v224 & 1);
                                v167 = v224;
                                *v225 = v166;
                                v168 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("subtrahend", 0xAuLL, v167 & 1);
                                v169 = v226;
                                v225[1] = v168;
                                _finalizeUninitializedArray<A>(_:)();
                                v231 = v169;
                                v228 = default argument 1 of Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();
                                v229 = default argument 1 of Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();
                                v230 = default argument 3 of Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();
                                default argument 3 of Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();
                                v233 = 0;
                                Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();
                                default argument 2 of Function.init(name:arguments:attrs:body:)();
                                v170 = Function.__allocating_init(name:arguments:attrs:body:)();
                                v171 = v258;
                                v237 = v170;
                                static MorpheusProgram.registerFunction(name:f:)();
                                v238 = v171;
                                v239 = v171;
                                if (v171)
                                {
                                  v191[1] = v239;
                                }

                                else
                                {

                                  v208 = "HIDPFLError";
                                  v209 = 11;
                                  v210 = 1;
                                  v172 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HIDPFLError", 0xBuLL, 1);
                                  v218 = v172._countAndFlagsBits;
                                  v217 = v172._object;
                                  v215 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v208, v209, v210 & 1);
                                  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd);
                                  v213 = _allocateUninitializedArray<A>(_:)();
                                  v212 = v173;
                                  v174 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("invalidArgsForNightingaleDMetrics", 0x21uLL, v210 & 1);
                                  v175 = v210;
                                  v176 = v212;
                                  *v212 = v174;
                                  v211 = &type metadata for HIDPFLError;
                                  v176[2]._object = &type metadata for HIDPFLError;
                                  LOBYTE(v176[1]._countAndFlagsBits) = 63;
                                  v177 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("failedToCalculateRescaleStats", 0x1DuLL, v175 & 1);
                                  v178 = v210;
                                  v179 = v211;
                                  v180 = v212;
                                  v212[3] = v177;
                                  v180[5]._object = v179;
                                  LOBYTE(v180[4]._countAndFlagsBits) = 62;
                                  v181 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("lossNotFound", 0xCuLL, v178 & 1);
                                  v182 = v210;
                                  v183 = v211;
                                  v184 = v212;
                                  v212[6] = v181;
                                  v184[8]._object = v183;
                                  LOBYTE(v184[7]._countAndFlagsBits) = 10;
                                  v185 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("modelOutputNotFound", 0x13uLL, v182 & 1);
                                  v186 = v211;
                                  v187 = v212;
                                  v212[9] = v185;
                                  v187[11]._object = v186;
                                  LOBYTE(v187[10]._countAndFlagsBits) = 26;
                                  _finalizeUninitializedArray<A>(_:)();
                                  v216 = Dictionary.init(dictionaryLiteral:)();
                                  default argument 1 of Function.init(name:arguments:attrs:body:)();
                                  v188 = Function.__allocating_init(name:arguments:attrs:body:)();
                                  v189 = v238;
                                  v219 = v188;
                                  static MorpheusProgram.registerFunction(name:f:)();
                                  v220 = v189;
                                  v221 = v189;
                                  if (v189)
                                  {
                                    v191[0] = v221;
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

  return result;
}