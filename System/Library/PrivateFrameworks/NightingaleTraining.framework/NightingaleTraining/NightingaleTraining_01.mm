uint64_t closure #1 in NightingaleDPFLRunner.run(task:useCase:context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v40 = 0;
  v39 = 0;
  v38 = 0;
  v46 = a1;
  v45 = a2;
  v44 = a3;
  outlined init with copy of HealthDataQuery(a1 + 48, v41);
  v29 = v42;
  v30 = v43;
  __swift_project_boxed_opaque_existential_1(v41, v42);
  v31 = HyperParams.birthDateRequired.getter();
  v4 = HyperParams.useCachedDayStreamProcessorConfig.getter();
  v32 = (*(v30 + 40))(v31 & 1, v4 & 1, v29);
  v33 = v5;
  v34 = v6;
  if (v28)
  {
    return __swift_destroy_boxed_opaque_existential_1(v41);
  }

  v40 = v32;
  v39 = v5;
  v38 = v6;
  __swift_destroy_boxed_opaque_existential_1(v41);
  outlined init with copy of HealthDataQuery(a1 + 48, v35);
  v24 = v36;
  v25 = v37;
  __swift_project_boxed_opaque_existential_1(v35, v36);
  v7._countAndFlagsBits = HyperParams.heartRateFwEnd10PctModelName.getter();
  v8 = PFLTask.getValidModelPath(modelFileSuffix:)(v7);
  if (v9)
  {

    __swift_destroy_boxed_opaque_existential_1(v35);
    return MEMORY[0x277D82BD8](v32);
  }

  else
  {

    v10._countAndFlagsBits = HyperParams.heartRatePeriod10PctModelName.getter();
    v11 = PFLTask.getValidModelPath(modelFileSuffix:)(v10);
    if (v12)
    {

      __swift_destroy_boxed_opaque_existential_1(v35);
      return MEMORY[0x277D82BD8](v32);
    }

    else
    {

      v13._countAndFlagsBits = HyperParams.wTmpFwEndLstmModelName.getter();
      v14 = PFLTask.getValidModelPath(modelFileSuffix:)(v13);
      if (v15)
      {

        __swift_destroy_boxed_opaque_existential_1(v35);
        return MEMORY[0x277D82BD8](v32);
      }

      else
      {

        v16._countAndFlagsBits = HyperParams.wTmpFwEndRFModelName.getter();
        v17 = PFLTask.getValidModelPath(modelFileSuffix:)(v16);
        if (v18)
        {

          __swift_destroy_boxed_opaque_existential_1(v35);
          return MEMORY[0x277D82BD8](v32);
        }

        else
        {

          v19._countAndFlagsBits = HyperParams.wTmpPeriodLstmModelName.getter();
          v20 = PFLTask.getValidModelPath(modelFileSuffix:)(v19);

          if (v21)
          {

            __swift_destroy_boxed_opaque_existential_1(v35);
          }

          else
          {
            v23 = (*(v25 + 56))(v8._countAndFlagsBits, v8._object, v11._countAndFlagsBits, v11._object, v14._countAndFlagsBits, v14._object, v17._countAndFlagsBits, v17._object, v20._countAndFlagsBits, v20._object, 0, 0, 0, v24, v25);

            __swift_destroy_boxed_opaque_existential_1(v35);
            MEMORY[0x277D82BE0](v32);
            *a4 = v32;
            a4[1] = v33;
            a4[2] = v34;
            MEMORY[0x277D82BE0](v23);
            a4[3] = v23;
            MEMORY[0x277D82BD8](v23);
          }

          return MEMORY[0x277D82BD8](v32);
        }
      }
    }
  }
}

uint64_t closure #2 in NightingaleDPFLRunner.run(task:useCase:context:)(uint64_t a1, uint64_t a2)
{
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[3] = a1;
  v2[4] = a2;
  v3 = swift_task_alloc();
  *(v5 + 40) = v3;
  *v3 = *(v5 + 16);
  v3[1] = closure #2 in NightingaleDPFLRunner.run(task:useCase:context:);

  return NightingaleDPFLRunner.queryPregnancies(hyperParams:)(a2);
}

uint64_t closure #2 in NightingaleDPFLRunner.run(task:useCase:context:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v10 = *v5;
  *(v10 + 16) = *v5;
  v11 = v10 + 16;

  if (v4)
  {
    v9 = *(*v11 + 8);

    return v9(v6);
  }

  else
  {
    v7 = *(*v11 + 8);

    return v7(a1, a2, a3, a4);
  }
}

uint64_t thunk for @callee_guaranteed @async () -> (@unowned Int, @unowned Int, @owned [Pregnancy], @unowned UInt32, @error @owned Error)(uint64_t a1, int *a2)
{
  v5 = v2;
  *(v2 + 24) = a1;
  *(v2 + 16) = v2;
  v6 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v5 + 32) = v3;
  *v3 = *(v5 + 16);
  v3[1] = thunk for @callee_guaranteed @async () -> (@unowned Int, @unowned Int, @owned [Pregnancy], @unowned UInt32, @error @owned Error);

  return v6();
}

uint64_t thunk for @callee_guaranteed @async () -> (@unowned Int, @unowned Int, @owned [Pregnancy], @unowned UInt32, @error @owned Error)(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = *v5;
  *(v6 + 16) = *v5;
  v10 = v6 + 16;
  v11 = v6 + 16;

  if (v4)
  {
    v8 = *(*v11 + 8);
  }

  else
  {
    v7 = *(v10 + 8);
    *v7 = a1;
    *(v7 + 8) = a2;
    *(v7 + 16) = a3;
    *(v7 + 24) = a4;
    v8 = *(*v11 + 8);
  }

  return v8();
}

uint64_t closure #3 in NightingaleDPFLRunner.run(task:useCase:context:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  *(v5 + 100) = a5;
  *(v5 + 92) = a4;
  *(v5 + 56) = a3;
  *(v5 + 48) = a2;
  *(v5 + 40) = a1;
  *(v5 + 16) = v5;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 88) = 0;
  *(v5 + 96) = 0;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 88) = a4;
  *(v5 + 96) = a5;
  return MEMORY[0x2822009F8](closure #3 in NightingaleDPFLRunner.run(task:useCase:context:), 0);
}

uint64_t closure #3 in NightingaleDPFLRunner.run(task:useCase:context:)()
{
  v10 = *(v0 + 100);
  v8 = *(v0 + 92);
  v7 = *(v0 + 56);
  v9 = *(v0 + 48);
  *(v0 + 16) = v0;
  v12 = HyperParams.rawSampleTimeout.getter();

  v13 = swift_allocObject();
  *(v0 + 64) = v13;
  *(v13 + 16) = v7;
  *(v13 + 24) = v8;
  *(v13 + 32) = v9;
  *(v13 + 40) = v10;
  v1 = swift_task_alloc();
  v11[9] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy19NightingaleTraining23HealthDataRawSampleTypeOAA0cD11QueryResult_pGMd);
  v3.n128_f64[0] = v12;
  v4 = v2;
  *v1 = v11[2];
  v1[1] = closure #3 in NightingaleDPFLRunner.run(task:useCase:context:);
  v5 = v11[5];

  return MEMORY[0x2821A2088](v5, &async function pointer to partial apply for closure #1 in closure #3 in NightingaleDPFLRunner.run(task:useCase:context:), v13, v4, v3);
}

{
  v4 = *v1;
  *(v4 + 16) = *v1;
  *(v4 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](closure #3 in NightingaleDPFLRunner.run(task:useCase:context:), 0);
  }

  else
  {

    v2 = *(*(v4 + 16) + 8);

    return v2();
  }
}

{
  *(v0 + 16) = v0;

  v1 = *(*(v0 + 16) + 8);

  return v1();
}

uint64_t closure #1 in closure #3 in NightingaleDPFLRunner.run(task:useCase:context:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  *(v5 + 148) = a5;
  *(v5 + 96) = a4;
  *(v5 + 140) = a3;
  *(v5 + 88) = a2;
  *(v5 + 80) = a1;
  *(v5 + 56) = v5;
  *(v5 + 64) = 0;
  *(v5 + 136) = 0;
  *(v5 + 72) = 0;
  *(v5 + 144) = 0;
  *(v5 + 64) = a2;
  *(v5 + 136) = a3;
  *(v5 + 72) = a4;
  *(v5 + 144) = a5;
  return MEMORY[0x2822009F8](closure #1 in closure #3 in NightingaleDPFLRunner.run(task:useCase:context:), 0);
}

uint64_t closure #1 in closure #3 in NightingaleDPFLRunner.run(task:useCase:context:)()
{
  v1 = v0[11];
  v0[7] = v0;
  outlined init with copy of HealthDataQuery(v1 + 48, (v0 + 2));
  v11 = v0[5];
  v12 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v11);
  v2 = _allocateUninitializedArray<A>(_:)();
  *v3 = 0;
  v3[1] = 3;
  v3[2] = 1;
  v3[3] = 2;
  _finalizeUninitializedArray<A>(_:)();
  v13 = v2;
  v0[13] = v2;
  result = HyperParams.lmpMaxRange.getter();
  if (result < 0 || result > 0xFFFFFFFFLL)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v5 = *(v10 + 140);
  v9 = v5 - result;
  if (v5 < result)
  {
    __break(1u);
  }

  else
  {
    if (*(v10 + 148) < v9)
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v7 = *(v10 + 148);
    v8 = (*(v12 + 16) + **(v12 + 16));
    v6 = swift_task_alloc();
    *(v10 + 112) = v6;
    *v6 = *(v10 + 56);
    v6[1] = closure #1 in closure #3 in NightingaleDPFLRunner.run(task:useCase:context:);

    return v8(v13, __PAIR64__(v7, v9), v11, v12);
  }

  return result;
}

{
  v1 = v0[15];
  v2 = v0[10];
  v0[7] = v0;
  *v2 = v1;
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  v3 = *(v0[7] + 8);

  return v3();
}

{
  *(v0 + 56) = v0;

  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(*(v3 + 56) + 8);

  return v1();
}

uint64_t closure #1 in closure #3 in NightingaleDPFLRunner.run(task:useCase:context:)(uint64_t a1)
{
  v5 = *v2;
  v5[7] = *v2;
  v5[15] = a1;
  v5[16] = v1;

  if (v1)
  {
    v3 = closure #1 in closure #3 in NightingaleDPFLRunner.run(task:useCase:context:);
  }

  else
  {

    v3 = closure #1 in closure #3 in NightingaleDPFLRunner.run(task:useCase:context:);
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t closure #7 in NightingaleDPFLRunner.run(task:useCase:context:)@<X0>(uint64_t *a1@<X1>, void *a2@<X8>)
{
  v4 = *a1;

  *a2 = v4;
  return result;
}

uint64_t closure #8 in NightingaleDPFLRunner.run(task:useCase:context:)@<X0>(void **a1@<X1>, void **a2@<X2>, void **a3@<X3>, void **a4@<X4>, uint64_t *a5@<X8>)
{
  result = CalendarPeriodPrediction.predictHistoricalPeriods(flow:otr:spotting:cycleFactors:)(a1, a2, a3, a4);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

uint64_t closure #9 in NightingaleDPFLRunner.run(task:useCase:context:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v26 = 0;
  v23 = 0;
  v22 = 0;
  v33 = a1;
  v32 = a2;
  v31 = a3;
  v30 = a4;
  v29 = a5;
  v20 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  v28 = (*(v19 + 48))(v20);
  v27 = 2;
  lazy protocol witness table accessor for type PregnancySource and conformance PregnancySource();
  if (== infix<A>(_:_:)())
  {
    v16 = HyperParams.minLMPTestDelta.getter();
  }

  else
  {
    v16 = HyperParams.minLMPFactorDelta.getter();
  }

  v26 = v16;
  v15 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  v25 = (*(v14 + 48))(v15);
  v24 = 2;
  if (== infix<A>(_:_:)())
  {
    v13 = HyperParams.maxLMPTestDelta.getter();
  }

  else
  {
    v13 = HyperParams.maxLMPFactorDelta.getter();
  }

  v23 = v13;
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = HyperParams.minPregnancyDuration.getter();
  v7 = HyperParams.maxPregnancyDuration.getter();
  v8 = HyperParams.excludePregnanciesContainingFlow.getter();
  v9 = HyperParams.maxLMPTolerableFlowDelta.getter();
  v11 = *a3;

  HyperParams.hkPregnancyStartSourceIncludeList.getter();
  v12 = (*(v6 + 128))(v10, v7, v16, v13, v8 & 1, v9, v11);

  v22 = v12;
  if (static PregnancyInvalidReason.== infix(_:_:)(v12, 0))
  {
    outlined init with copy of HealthDataQuery(a1, v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining9Pregnancy_pGMd);
    return Array.append(_:)();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining22PregnancyInvalidReasonOGMd);
    return Array.append(_:)();
  }
}

BOOL closure #16 in NightingaleDPFLRunner.run(task:useCase:context:)(void *a1, void *a2)
{
  v4 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v8 = (*(v3 + 64))(v4);
  v7 = a2[3];
  v6 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v7);
  return v8 < (*(v6 + 64))(v7);
}

uint64_t closure #18 in NightingaleDPFLRunner.run(task:useCase:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[6] = a2;
  v4[5] = a1;
  v4[2] = v4;
  v4[3] = 0;
  v4[4] = 0;
  v4[11] = 0;
  v4[12] = a4;
  v4[3] = a2;
  v4[4] = a3;
  v4[11] = a4;
  return MEMORY[0x2822009F8](closure #18 in NightingaleDPFLRunner.run(task:useCase:context:), 0);
}

uint64_t closure #18 in NightingaleDPFLRunner.run(task:useCase:context:)()
{
  v9 = *(v0 + 100);
  v8 = *(v0 + 96);
  v7 = *(v0 + 56);
  *(v0 + 16) = v0;
  v11 = HyperParams.sensorTimeout.getter();

  v12 = swift_allocObject();
  *(v0 + 64) = v12;
  *(v12 + 16) = v7;
  *(v12 + 24) = v8;
  *(v12 + 28) = v9;
  v1 = swift_task_alloc();
  v10[9] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy19NightingaleTraining23HealthDataRawSampleTypeOAA0cD11QueryResult_pGMd);
  v3.n128_f64[0] = v11;
  v4 = v2;
  *v1 = v10[2];
  v1[1] = closure #18 in NightingaleDPFLRunner.run(task:useCase:context:);
  v5 = v10[5];

  return MEMORY[0x2821A2088](v5, &async function pointer to partial apply for closure #1 in closure #18 in NightingaleDPFLRunner.run(task:useCase:context:), v12, v4, v3);
}

{
  v4 = *v1;
  *(v4 + 16) = *v1;
  *(v4 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](closure #18 in NightingaleDPFLRunner.run(task:useCase:context:), 0);
  }

  else
  {

    v2 = *(*(v4 + 16) + 8);

    return v2();
  }
}

{
  *(v0 + 16) = v0;

  v1 = *(*(v0 + 16) + 8);

  return v1();
}

uint64_t closure #1 in closure #18 in NightingaleDPFLRunner.run(task:useCase:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[9] = a1;
  v3[7] = v3;
  v3[8] = 0;
  v3[15] = 0;
  v3[16] = a3;
  v3[8] = a2;
  v3[15] = a3;
  return MEMORY[0x2822009F8](closure #1 in closure #18 in NightingaleDPFLRunner.run(task:useCase:context:), 0);
}

uint64_t closure #1 in closure #18 in NightingaleDPFLRunner.run(task:useCase:context:)()
{
  v6 = v0[16];
  v1 = v0[10];
  v0[7] = v0;
  outlined init with copy of HealthDataQuery(v1 + 48, (v0 + 2));
  v8 = v0[5];
  v9 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v8);
  v2 = _allocateUninitializedArray<A>(_:)();
  *v3 = 7;
  _finalizeUninitializedArray<A>(_:)();
  v11 = v2;
  v0[11] = v2;
  v10 = (*(v9 + 16) + **(v9 + 16));
  v4 = swift_task_alloc();
  *(v7 + 96) = v4;
  *v4 = *(v7 + 56);
  v4[1] = closure #1 in closure #18 in NightingaleDPFLRunner.run(task:useCase:context:);

  return v10(v11, v6, v8, v9);
}

{
  v1 = v0[13];
  v2 = v0[9];
  v0[7] = v0;
  *v2 = v1;
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  v3 = *(v0[7] + 8);

  return v3();
}

{
  *(v0 + 56) = v0;

  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(*(v3 + 56) + 8);

  return v1();
}

uint64_t closure #1 in closure #18 in NightingaleDPFLRunner.run(task:useCase:context:)(uint64_t a1)
{
  v5 = *v2;
  v5[7] = *v2;
  v5[13] = a1;
  v5[14] = v1;

  if (v1)
  {
    v3 = closure #1 in closure #18 in NightingaleDPFLRunner.run(task:useCase:context:);
  }

  else
  {

    v3 = closure #1 in closure #18 in NightingaleDPFLRunner.run(task:useCase:context:);
  }

  return MEMORY[0x2822009F8](v3, 0);
}

float closure #19 in NightingaleDPFLRunner.run(task:useCase:context:)@<S0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);

  result = v3;
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  return result;
}

BOOL closure #20 in NightingaleDPFLRunner.run(task:useCase:context:)(void *a1, void *a2)
{
  v4 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v8 = (*(v3 + 16))(v4);
  v7 = a2[3];
  v6 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v7);
  return v8 < (*(v6 + 16))(v7);
}

uint64_t closure #22 in NightingaleDPFLRunner.run(task:useCase:context:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  *(v5 + 148) = a5;
  *(v5 + 96) = a4;
  *(v5 + 140) = a3;
  *(v5 + 88) = a2;
  *(v5 + 80) = a1;
  *(v5 + 56) = v5;
  *(v5 + 64) = 0;
  *(v5 + 136) = 0;
  *(v5 + 72) = 0;
  *(v5 + 144) = 0;
  *(v5 + 64) = a2;
  *(v5 + 136) = a3;
  *(v5 + 72) = a4;
  *(v5 + 144) = a5;
  return MEMORY[0x2822009F8](closure #22 in NightingaleDPFLRunner.run(task:useCase:context:), 0);
}

uint64_t closure #22 in NightingaleDPFLRunner.run(task:useCase:context:)()
{
  v1 = v0[11];
  v0[7] = v0;
  outlined init with copy of HealthDataQuery(v1 + 48, (v0 + 2));
  v11 = v0[5];
  v12 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v11);
  v2 = _allocateUninitializedArray<A>(_:)();
  *v3 = 0;
  v3[1] = 3;
  v3[2] = 1;
  v3[3] = 2;
  v3[4] = 7;
  _finalizeUninitializedArray<A>(_:)();
  v13 = v2;
  v0[13] = v2;
  result = HyperParams.maximumDays.getter();
  v5 = *(v10 + 140);
  v9 = v5 - result;
  if (v5 < result)
  {
    __break(1u);
  }

  else if (*(v10 + 148) >= v9)
  {
    v7 = *(v10 + 148);
    v8 = (*(v12 + 16) + **(v12 + 16));
    v6 = swift_task_alloc();
    *(v10 + 112) = v6;
    *v6 = *(v10 + 56);
    v6[1] = closure #1 in closure #3 in NightingaleDPFLRunner.run(task:useCase:context:);

    return v8(v13, __PAIR64__(v7, v9), v11, v12);
  }

  else
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  return result;
}

BOOL closure #32 in NightingaleDPFLRunner.run(task:useCase:context:)(void *a1, void *a2)
{
  v4 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v8 = (*(v3 + 8))(v4);
  v7 = a2[3];
  v6 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v7);
  return v8 < (*(v6 + 8))(v7);
}

uint64_t closure #33 in NightingaleDPFLRunner.run(task:useCase:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[64] = v19;
  v8[63] = a8;
  v8[62] = a7;
  v8[61] = a6;
  v8[60] = a4;
  v8[59] = a3;
  v8[58] = a2;
  v8[38] = v8;
  v8[39] = 0;
  v8[40] = 0;
  v8[41] = 0;
  v8[71] = 0;
  v8[42] = 0;
  v8[43] = 0;
  v8[44] = 0;
  v8[45] = 0;
  v8[48] = 0;
  v8[49] = 0;
  v8[72] = a5;
  v10 = type metadata accessor for PFLError();
  v8[65] = v10;
  v8[66] = *(v10 - 8);
  v8[67] = swift_task_alloc();
  v8[39] = a2;
  v8[40] = a3;
  v8[41] = a4;
  v8[71] = a5;
  v8[42] = a6;
  v8[43] = a7;
  v8[44] = a8;
  v8[45] = v19;

  return MEMORY[0x2822009F8](closure #33 in NightingaleDPFLRunner.run(task:useCase:context:), 0);
}

uint64_t closure #33 in NightingaleDPFLRunner.run(task:useCase:context:)()
{
  v9 = *(v0 + 580);
  v8 = *(v0 + 576);
  v6 = *(v0 + 480);
  v5 = *(v0 + 472);
  *(v0 + 304) = v0;
  v11 = HyperParams.sensorTimeout.getter();
  v7 = *v5;

  v12 = swift_allocObject();
  *(v0 + 544) = v12;
  *(v12 + 16) = v6;
  *(v12 + 24) = v7;
  *(v12 + 32) = v8;
  *(v12 + 36) = v9;
  v1 = swift_task_alloc();
  *(v10 + 552) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy19NightingaleTraining23HealthDataRawSampleTypeOAA0cD11QueryResult_pGMd);
  v3.n128_f64[0] = v11;
  *v1 = *(v10 + 304);
  v1[1] = closure #33 in NightingaleDPFLRunner.run(task:useCase:context:);

  return MEMORY[0x2821A2088](v10 + 368, &async function pointer to partial apply for closure #1 in closure #33 in NightingaleDPFLRunner.run(task:useCase:context:), v12, v2, v3);
}

{
  v4 = *v1;
  *(v4 + 304) = *v1;
  *(v4 + 560) = v0;

  if (v0)
  {
    v2 = closure #33 in NightingaleDPFLRunner.run(task:useCase:context:);
  }

  else
  {

    v2 = closure #33 in NightingaleDPFLRunner.run(task:useCase:context:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  *(v0 + 304) = v0;
  v25 = *(v0 + 368);
  *(v0 + 392) = v25;
  *(v0 + 584) = 8;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19NightingaleTraining21HealthDataQueryResult_pMd);
  v27 = lazy protocol witness table accessor for type HealthDataRawSampleType and conformance HealthDataRawSampleType();
  MEMORY[0x25F8891D0](v0 + 584, v25, &type metadata for HealthDataRawSampleType, v26);
  if (*(v0 + 40))
  {
    v23 = *(v24 + 40);
    v21 = *(v24 + 48);
    __swift_project_boxed_opaque_existential_1((v24 + 16), v23);
    v22 = *(v21 + 16);
    *(v24 + 200) = swift_getAssociatedTypeWitness();
    __swift_allocate_boxed_opaque_existential_0((v24 + 176));
    v22(v23, v21);
    __swift_destroy_boxed_opaque_existential_1(v24 + 16);
  }

  else
  {
    outlined destroy of Pregnancy?(v24 + 16);
    *(v24 + 176) = 0;
    *(v24 + 184) = 0;
    *(v24 + 192) = 0;
    *(v24 + 200) = 0;
  }

  if (*(v24 + 200))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt32VSfGMd);
    if (swift_dynamicCast())
    {
      v19 = *(v24 + 456);
    }

    else
    {
      v19 = 0;
    }

    v20 = v19;
  }

  else
  {
    outlined destroy of Pregnancy?(v24 + 176);
    v20 = 0;
  }

  *(v24 + 400) = v20;
  if (!*(v24 + 400))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32V_SftMd);
    _allocateUninitializedArray<A>(_:)();
    Dictionary.init(dictionaryLiteral:)();
    if (*(v24 + 400))
    {
      outlined destroy of [(start: UInt32, end: UInt32)]();
    }
  }

  v1 = *(v24 + 560);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt32VSfGMd);
  result = Dictionary.merge(_:uniquingKeysWith:)();
  if (!v1)
  {
    *(v24 + 585) = 10;
    MEMORY[0x25F8891D0](v24 + 585, v25, &type metadata for HealthDataRawSampleType, v26, v27);
    if (*(v24 + 80))
    {
      v18 = *(v24 + 80);
      v16 = *(v24 + 88);
      __swift_project_boxed_opaque_existential_1((v24 + 56), v18);
      v17 = *(v16 + 16);
      *(v24 + 232) = swift_getAssociatedTypeWitness();
      __swift_allocate_boxed_opaque_existential_0((v24 + 208));
      v17(v18, v16);
      __swift_destroy_boxed_opaque_existential_1(v24 + 56);
    }

    else
    {
      outlined destroy of Pregnancy?(v24 + 56);
      *(v24 + 208) = 0;
      *(v24 + 216) = 0;
      *(v24 + 224) = 0;
      *(v24 + 232) = 0;
    }

    if (*(v24 + 232))
    {
      if (swift_dynamicCast())
      {
        v14 = *(v24 + 448);
      }

      else
      {
        v14 = 0;
      }

      v15 = v14;
    }

    else
    {
      outlined destroy of Pregnancy?(v24 + 208);
      v15 = 0;
    }

    *(v24 + 408) = v15;
    if (!*(v24 + 408))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32V_SftMd);
      _allocateUninitializedArray<A>(_:)();
      Dictionary.init(dictionaryLiteral:)();
      if (*(v24 + 408))
      {
        outlined destroy of [(start: UInt32, end: UInt32)]();
      }
    }

    Dictionary.merge(_:uniquingKeysWith:)();
    *(v24 + 586) = 9;
    MEMORY[0x25F8891D0](v24 + 586, v25, &type metadata for HealthDataRawSampleType, v26, v27);
    if (*(v24 + 120))
    {
      v13 = *(v24 + 120);
      v11 = *(v24 + 128);
      __swift_project_boxed_opaque_existential_1((v24 + 96), v13);
      v12 = *(v11 + 16);
      *(v24 + 264) = swift_getAssociatedTypeWitness();
      __swift_allocate_boxed_opaque_existential_0((v24 + 240));
      v12(v13, v11);
      __swift_destroy_boxed_opaque_existential_1(v24 + 96);
    }

    else
    {
      outlined destroy of Pregnancy?(v24 + 96);
      *(v24 + 240) = 0;
      *(v24 + 248) = 0;
      *(v24 + 256) = 0;
      *(v24 + 264) = 0;
    }

    if (*(v24 + 264))
    {
      if (swift_dynamicCast())
      {
        v9 = *(v24 + 440);
      }

      else
      {
        v9 = 0;
      }

      v10 = v9;
    }

    else
    {
      outlined destroy of Pregnancy?(v24 + 240);
      v10 = 0;
    }

    *(v24 + 416) = v10;
    if (!*(v24 + 416))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32V_SftMd);
      _allocateUninitializedArray<A>(_:)();
      Dictionary.init(dictionaryLiteral:)();
      if (*(v24 + 416))
      {
        outlined destroy of [(start: UInt32, end: UInt32)]();
      }
    }

    Dictionary.merge(_:uniquingKeysWith:)();
    *(v24 + 587) = 7;
    MEMORY[0x25F8891D0](v24 + 587, v25, &type metadata for HealthDataRawSampleType, v26, v27);
    if (*(v24 + 160))
    {
      v8 = *(v24 + 160);
      v6 = *(v24 + 168);
      __swift_project_boxed_opaque_existential_1((v24 + 136), v8);
      v7 = *(v6 + 16);
      *(v24 + 296) = swift_getAssociatedTypeWitness();
      __swift_allocate_boxed_opaque_existential_0((v24 + 272));
      v7(v8, v6);
      __swift_destroy_boxed_opaque_existential_1(v24 + 136);
    }

    else
    {
      outlined destroy of Pregnancy?(v24 + 136);
      *(v24 + 272) = 0;
      *(v24 + 280) = 0;
      *(v24 + 288) = 0;
      *(v24 + 296) = 0;
    }

    if (*(v24 + 296))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt32VSf_SStGMd);
      if (swift_dynamicCast())
      {
        v4 = *(v24 + 432);
      }

      else
      {
        v4 = 0;
      }

      v5 = v4;
    }

    else
    {
      outlined destroy of Pregnancy?(v24 + 272);
      v5 = 0;
    }

    *(v24 + 424) = v5;
    if (!*(v24 + 424))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32V_Sf_SSttMd);
      _allocateUninitializedArray<A>(_:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSf_SStMd);
      Dictionary.init(dictionaryLiteral:)();
      if (*(v24 + 424))
      {
        outlined destroy of [(start: UInt32, end: UInt32)]();
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt32VSf_SStGMd);
    Dictionary.merge(_:uniquingKeysWith:)();

    v3 = *(*(v24 + 304) + 8);

    return v3();
  }

  return result;
}

{
  v9 = v0[70];
  v0[38] = v0;

  v1 = v9;
  v0[47] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  if (swift_dynamicCast())
  {
    if ((*(*(v8 + 528) + 88))(*(v8 + 536), *(v8 + 520)) == *MEMORY[0x277D413F0])
    {
      v7 = *(v8 + 560);
      lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
      swift_allocError();
      *v2 = 61;
      swift_willThrow();

      goto LABEL_7;
    }

    (*(*(v8 + 528) + 8))(*(v8 + 536), *(v8 + 520));
  }

  else
  {
  }

  v6 = *(v8 + 560);
  v3 = v6;
  *(v8 + 384) = v6;
  swift_willThrow();

LABEL_7:

  v4 = *(*(v8 + 304) + 8);

  return v4();
}

uint64_t closure #1 in closure #33 in NightingaleDPFLRunner.run(task:useCase:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a3;
  v4[11] = a2;
  v4[10] = a1;
  v4[7] = v4;
  v4[8] = 0;
  v4[9] = 0;
  v4[16] = 0;
  v4[17] = a4;
  v4[8] = a2;
  v4[9] = a3;
  v4[16] = a4;
  return MEMORY[0x2822009F8](closure #1 in closure #33 in NightingaleDPFLRunner.run(task:useCase:context:), 0);
}

uint64_t closure #1 in closure #33 in NightingaleDPFLRunner.run(task:useCase:context:)()
{
  v5 = v0[17];
  v1 = v0[11];
  v0[7] = v0;
  outlined init with copy of HealthDataQuery(v1 + 48, (v0 + 2));
  v7 = v0[5];
  v8 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v7);
  v9 = (*(v8 + 16) + **(v8 + 16));
  v2 = swift_task_alloc();
  v6[13] = v2;
  *v2 = v6[7];
  v2[1] = closure #1 in closure #33 in NightingaleDPFLRunner.run(task:useCase:context:);
  v3 = v6[12];

  return v9(v3, v5, v7, v8);
}

{
  v1 = v0[14];
  v2 = v0[10];
  v0[7] = v0;
  *v2 = v1;
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  v3 = *(v0[7] + 8);

  return v3();
}

{
  *(v0 + 56) = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(*(v3 + 56) + 8);

  return v1();
}

uint64_t closure #1 in closure #33 in NightingaleDPFLRunner.run(task:useCase:context:)(uint64_t a1)
{
  v5 = *v2;
  v5[7] = *v2;
  v5[14] = a1;
  v5[15] = v1;

  if (v1)
  {
    v3 = closure #1 in closure #33 in NightingaleDPFLRunner.run(task:useCase:context:);
  }

  else
  {
    v3 = closure #1 in closure #33 in NightingaleDPFLRunner.run(task:useCase:context:);
  }

  return MEMORY[0x2822009F8](v3, 0);
}

float closure #2 in closure #33 in NightingaleDPFLRunner.run(task:useCase:context:)@<S0>(float *a1@<X1>, _DWORD *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t closure #34 in NightingaleDPFLRunner.run(task:useCase:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 176) = a7;
  *(v7 + 168) = a6;
  *(v7 + 160) = a5;
  *(v7 + 152) = a3;
  *(v7 + 144) = a2;
  *(v7 + 80) = v7;
  *(v7 + 88) = 0;
  *(v7 + 96) = 0;
  *(v7 + 232) = 0;
  *(v7 + 104) = 0;
  *(v7 + 112) = 0;
  *(v7 + 120) = 0;
  *(v7 + 136) = 0;
  *(v7 + 48) = 0u;
  *(v7 + 64) = 0u;
  *(v7 + 240) = a4;
  v8 = type metadata accessor for PFLError();
  *(v7 + 184) = v8;
  *(v7 + 192) = *(v8 - 8);
  *(v7 + 200) = swift_task_alloc();
  *(v7 + 88) = a2;
  *(v7 + 96) = a3;
  *(v7 + 232) = a4;
  *(v7 + 104) = a5;
  *(v7 + 112) = a6;
  *(v7 + 120) = a7;

  return MEMORY[0x2822009F8](closure #34 in NightingaleDPFLRunner.run(task:useCase:context:), 0);
}

uint64_t closure #34 in NightingaleDPFLRunner.run(task:useCase:context:)()
{
  v7 = *(v0 + 244);
  v6 = *(v0 + 240);
  v8 = *(v0 + 152);
  v5 = *(v0 + 144);
  *(v0 + 80) = v0;
  NightingaleDPFLRunner.performanceMeasure.getter();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("QuerySHR", 8uLL, 1);
  dispatch thunk of PerformanceMeasure.start(_:)();

  v10 = HyperParams.shrTimeout.getter();

  v11 = swift_allocObject();
  *(v0 + 208) = v11;
  *(v11 + 16) = v5;
  *(v11 + 24) = v6;
  *(v11 + 28) = v7;
  *(v11 + 32) = v8;
  v1 = swift_task_alloc();
  *(v9 + 216) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt32VSfG9daySHR10s_AC05nightC0SDyABSiG0B9SHRCountsAF0dE0tMd);
  v3.n128_f64[0] = v10;
  *v1 = *(v9 + 80);
  v1[1] = closure #34 in NightingaleDPFLRunner.run(task:useCase:context:);

  return MEMORY[0x2821A2088](v9 + 16, &async function pointer to partial apply for closure #1 in closure #34 in NightingaleDPFLRunner.run(task:useCase:context:), v11, v2, v3);
}

{
  v4 = *v1;
  *(v4 + 80) = *v1;
  *(v4 + 224) = v0;

  if (v0)
  {
    v2 = closure #34 in NightingaleDPFLRunner.run(task:useCase:context:);
  }

  else
  {

    v2 = closure #34 in NightingaleDPFLRunner.run(task:useCase:context:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v8 = v0[22];
  v7 = v0[21];
  v6 = v0[20];
  v0[10] = v0;
  v10 = v0[2];
  v11 = v0[3];
  v1 = v0[4];
  v2 = v0[5];
  v0[6] = v10;
  v0[7] = v11;
  v0[8] = v1;
  v0[9] = v2;

  *v6 = v10;

  *v7 = v11;

  NightingaleDPFLRunner.performanceMeasure.getter();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("QuerySHR", 8uLL, 1);
  dispatch thunk of PerformanceMeasure.finish(_:)();
  v9 = v3;

  *v8 = v9;

  v4 = *(v0[10] + 8);

  return v4();
}

{
  v9 = v0[28];
  v0[10] = v0;

  v1 = v9;
  v0[16] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  if (swift_dynamicCast())
  {
    if ((*(*(v8 + 192) + 88))(*(v8 + 200), *(v8 + 184)) == *MEMORY[0x277D413F0])
    {
      v7 = *(v8 + 224);
      lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
      swift_allocError();
      *v2 = 6;
      swift_willThrow();

      goto LABEL_7;
    }

    (*(*(v8 + 192) + 8))(*(v8 + 200), *(v8 + 184));
  }

  else
  {
  }

  v6 = *(v8 + 224);
  v3 = v6;
  *(v8 + 136) = v6;
  swift_willThrow();

LABEL_7:

  v4 = *(*(v8 + 80) + 8);

  return v4();
}

uint64_t closure #1 in closure #34 in NightingaleDPFLRunner.run(task:useCase:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a4;
  v4[11] = a2;
  v4[10] = a1;
  v4[7] = v4;
  v4[8] = 0;
  v4[19] = 0;
  v4[9] = 0;
  v4[20] = a3;
  v4[8] = a2;
  v4[19] = a3;
  v4[9] = a4;
  return MEMORY[0x2822009F8](closure #1 in closure #34 in NightingaleDPFLRunner.run(task:useCase:context:), 0);
}

{
  v8 = *v5;
  v8[7] = *v5;
  v8[14] = v4;
  v8[15] = a1;
  v8[16] = a2;
  v8[17] = a3;
  v8[18] = a4;

  if (v4)
  {
    v6 = closure #1 in closure #34 in NightingaleDPFLRunner.run(task:useCase:context:);
  }

  else
  {
    v6 = closure #1 in closure #34 in NightingaleDPFLRunner.run(task:useCase:context:);
  }

  return MEMORY[0x2822009F8](v6, 0);
}

uint64_t closure #1 in closure #34 in NightingaleDPFLRunner.run(task:useCase:context:)()
{
  v4 = v0[20];
  v1 = v0[11];
  v0[7] = v0;
  outlined init with copy of HealthDataQuery(v1 + 48, (v0 + 2));
  v7 = v0[5];
  v8 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v7);
  v6 = HyperParams.sHRQueryBatchSize.getter();
  v9 = (*(v8 + 24) + **(v8 + 24));
  v2 = swift_task_alloc();
  *(v5 + 104) = v2;
  *v2 = *(v5 + 56);
  v2[1] = closure #1 in closure #34 in NightingaleDPFLRunner.run(task:useCase:context:);

  return v9(v4, v6, v7, v8);
}

{
  v1 = v0[18];
  v2 = v0[17];
  v3 = v0[16];
  v4 = v0[15];
  v5 = v0[10];
  v0[7] = v0;
  *v5 = v4;
  v5[1] = v3;
  v5[2] = v2;
  v5[3] = v1;
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  v6 = *(v0[7] + 8);

  return v6();
}

{
  *(v0 + 56) = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(*(v3 + 56) + 8);

  return v1();
}

uint64_t closure #35 in NightingaleDPFLRunner.run(task:useCase:context:)(uint64_t a1, int a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 560) = v23;
  *(v8 + 552) = v22;
  *(v8 + 544) = v21;
  *(v8 + 536) = v20;
  *(v8 + 528) = v19;
  *(v8 + 520) = a8;
  *(v8 + 512) = a7;
  *(v8 + 504) = a6;
  *(v8 + 656) = a5;
  *(v8 + 652) = a4;
  *(v8 + 496) = a3;
  *(v8 + 644) = a2;
  *(v8 + 320) = v8;
  *(v8 + 616) = 0;
  *(v8 + 328) = 0;
  *(v8 + 624) = 0;
  *(v8 + 632) = 0;
  *(v8 + 336) = 0;
  *(v8 + 344) = 0;
  *(v8 + 352) = 0;
  *(v8 + 360) = 0;
  *(v8 + 368) = 0;
  *(v8 + 376) = 0;
  *(v8 + 384) = 0;
  *(v8 + 392) = 0;
  *(v8 + 640) = 0;
  *(v8 + 648) = 0;
  *(v8 + 416) = 0;
  *(v8 + 424) = 0;
  *(v8 + 304) = 0;
  *(v8 + 312) = 0;
  v12 = type metadata accessor for PFLError();
  *(v8 + 568) = v12;
  *(v8 + 576) = *(v12 - 8);
  *(v8 + 584) = swift_task_alloc();
  *(v8 + 616) = a2;
  *(v8 + 328) = a3;
  *(v8 + 624) = a4;
  *(v8 + 632) = a5;
  *(v8 + 336) = a6;
  *(v8 + 344) = a7;
  *(v8 + 352) = a8;
  *(v8 + 360) = v19;
  *(v8 + 368) = v20;
  *(v8 + 376) = v21;
  *(v8 + 384) = v22;
  *(v8 + 392) = v23;

  return MEMORY[0x2822009F8](closure #35 in NightingaleDPFLRunner.run(task:useCase:context:), 0);
}

uint64_t closure #35 in NightingaleDPFLRunner.run(task:useCase:context:)()
{
  v23 = v0;
  v24 = *(v0 + 644);
  *(v0 + 320) = v0;
  v1 = HyperParams.minSliceAnchorDelta.getter();
  v25 = v24 + v1;
  if (__OFADD__(v24, v1))
  {
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v1 = HyperParams.sliceSize.getter();
  v22 = v25 - v1;
  if (__OFSUB__(v25, v1))
  {
    goto LABEL_32;
  }

  if (__OFADD__(v22, 1))
  {
    goto LABEL_33;
  }

  v21 = v22 - 549;
  if (__OFSUB__(v22 + 1, 550))
  {
    goto LABEL_34;
  }

  if (v21 < 0 || v21 > 0xFFFFFFFFLL)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v19 = *(v0 + 652);
  *(v0 + 640) = v21;
  v1 = HyperParams.maxSliceAnchorDelta.getter();
  v20 = v19 + v1;
  if (!__OFADD__(v19, v1))
  {
    if ((v20 & 0x8000000000000000) == 0 && v20 <= 0xFFFFFFFFLL)
    {
      v15 = *(v0 + 504);
      v12 = *(v0 + 656);
      *(v0 + 628) = v20;
      *(v0 + 636) = v12;
      min<A>(_:_:)();
      v16 = *(v0 + 620);
      *(v0 + 648) = v16;
      v17 = HyperParams.rawSampleTimeout.getter();

      v18 = swift_allocObject();
      *(v0 + 592) = v18;
      *(v18 + 16) = v15;
      *(v18 + 24) = v21;
      *(v18 + 28) = v16;
      v13 = swift_task_alloc();
      *(v23 + 600) = v13;
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy19NightingaleTraining23HealthDataRawSampleTypeOAA0cD11QueryResult_pGMd);
      v5.n128_f64[0] = v17;
      v2 = &async function pointer to partial apply for closure #1 in closure #35 in NightingaleDPFLRunner.run(task:useCase:context:);
      v3 = v18;
      v4 = v14;
      *v13 = *(v23 + 320);
      v13[1] = closure #35 in NightingaleDPFLRunner.run(task:useCase:context:);
      v1 = v23 + 400;

      return MEMORY[0x2821A2088](v1, v2, v3, v4, v5);
    }

    return _assertionFailure(_:_:file:line:flags:)();
  }

LABEL_35:
  __break(1u);
  return MEMORY[0x2821A2088](v1, v2, v3, v4, v5);
}

{
  v4 = *v1;
  *(v4 + 320) = *v1;
  *(v4 + 608) = v0;

  if (v0)
  {
    v2 = closure #35 in NightingaleDPFLRunner.run(task:useCase:context:);
  }

  else
  {

    v2 = closure #35 in NightingaleDPFLRunner.run(task:useCase:context:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  *(v0 + 320) = v0;
  v32 = *(v0 + 400);
  *(v0 + 424) = v32;
  *(v0 + 660) = 0;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19NightingaleTraining21HealthDataQueryResult_pMd);
  v34 = lazy protocol witness table accessor for type HealthDataRawSampleType and conformance HealthDataRawSampleType();
  MEMORY[0x25F8891D0](v0 + 660, v32, &type metadata for HealthDataRawSampleType, v33);
  if (*(v0 + 40))
  {
    v30 = *(v31 + 40);
    v28 = *(v31 + 48);
    __swift_project_boxed_opaque_existential_1((v31 + 16), v30);
    v29 = *(v28 + 16);
    *(v31 + 200) = swift_getAssociatedTypeWitness();
    __swift_allocate_boxed_opaque_existential_0((v31 + 176));
    v29(v30, v28);
    __swift_destroy_boxed_opaque_existential_1(v31 + 16);
  }

  else
  {
    outlined destroy of Pregnancy?(v31 + 16);
    *(v31 + 176) = 0;
    *(v31 + 184) = 0;
    *(v31 + 192) = 0;
    *(v31 + 200) = 0;
  }

  if (*(v31 + 200))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt32Vs5UInt8VGMd);
    if (swift_dynamicCast())
    {
      v26 = *(v31 + 488);
    }

    else
    {
      v26 = 0;
    }

    v27 = v26;
  }

  else
  {
    outlined destroy of Pregnancy?(v31 + 176);
    v27 = 0;
  }

  *(v31 + 432) = v27;
  if (!*(v31 + 432))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32V_s5UInt8VtMd);
    _allocateUninitializedArray<A>(_:)();
    Dictionary.init(dictionaryLiteral:)();
    if (*(v31 + 432))
    {
      outlined destroy of [(start: UInt32, end: UInt32)]();
    }
  }

  v1 = *(v31 + 608);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt32Vs5UInt8VGMd);
  result = Dictionary.merge(_:uniquingKeysWith:)();
  if (!v1)
  {
    *(v31 + 661) = 2;
    MEMORY[0x25F8891D0](v31 + 661, v32, &type metadata for HealthDataRawSampleType, v33, v34);
    if (*(v31 + 80))
    {
      v25 = *(v31 + 80);
      v23 = *(v31 + 88);
      __swift_project_boxed_opaque_existential_1((v31 + 56), v25);
      v24 = *(v23 + 16);
      *(v31 + 232) = swift_getAssociatedTypeWitness();
      __swift_allocate_boxed_opaque_existential_0((v31 + 208));
      v24(v25, v23);
      __swift_destroy_boxed_opaque_existential_1(v31 + 56);
    }

    else
    {
      outlined destroy of Pregnancy?(v31 + 56);
      *(v31 + 208) = 0;
      *(v31 + 216) = 0;
      *(v31 + 224) = 0;
      *(v31 + 232) = 0;
    }

    if (*(v31 + 232))
    {
      if (swift_dynamicCast())
      {
        v21 = *(v31 + 480);
      }

      else
      {
        v21 = 0;
      }

      v22 = v21;
    }

    else
    {
      outlined destroy of Pregnancy?(v31 + 208);
      v22 = 0;
    }

    *(v31 + 440) = v22;
    if (!*(v31 + 440))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32V_s5UInt8VtMd);
      _allocateUninitializedArray<A>(_:)();
      Dictionary.init(dictionaryLiteral:)();
      if (*(v31 + 440))
      {
        outlined destroy of [(start: UInt32, end: UInt32)]();
      }
    }

    Dictionary.merge(_:uniquingKeysWith:)();
    *(v31 + 662) = 1;
    MEMORY[0x25F8891D0](v31 + 662, v32, &type metadata for HealthDataRawSampleType, v33, v34);
    if (*(v31 + 120))
    {
      v20 = *(v31 + 120);
      v18 = *(v31 + 128);
      __swift_project_boxed_opaque_existential_1((v31 + 96), v20);
      v19 = *(v18 + 16);
      *(v31 + 264) = swift_getAssociatedTypeWitness();
      __swift_allocate_boxed_opaque_existential_0((v31 + 240));
      v19(v20, v18);
      __swift_destroy_boxed_opaque_existential_1(v31 + 96);
    }

    else
    {
      outlined destroy of Pregnancy?(v31 + 96);
      *(v31 + 240) = 0;
      *(v31 + 248) = 0;
      *(v31 + 256) = 0;
      *(v31 + 264) = 0;
    }

    if (*(v31 + 264))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt32VSbGMd);
      if (swift_dynamicCast())
      {
        v16 = *(v31 + 472);
      }

      else
      {
        v16 = 0;
      }

      v17 = v16;
    }

    else
    {
      outlined destroy of Pregnancy?(v31 + 240);
      v17 = 0;
    }

    *(v31 + 448) = v17;
    if (!*(v31 + 448))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32V_SbtMd);
      _allocateUninitializedArray<A>(_:)();
      Dictionary.init(dictionaryLiteral:)();
      if (*(v31 + 448))
      {
        outlined destroy of [(start: UInt32, end: UInt32)]();
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt32VSbGMd);
    Dictionary.merge(_:uniquingKeysWith:)();
    *(v31 + 663) = 3;
    MEMORY[0x25F8891D0](v31 + 663, v32, &type metadata for HealthDataRawSampleType, v33, v34);
    if (*(v31 + 160))
    {
      v15 = *(v31 + 160);
      v13 = *(v31 + 168);
      __swift_project_boxed_opaque_existential_1((v31 + 136), v15);
      v14 = *(v13 + 16);
      *(v31 + 296) = swift_getAssociatedTypeWitness();
      __swift_allocate_boxed_opaque_existential_0((v31 + 272));
      v14(v15, v13);
      __swift_destroy_boxed_opaque_existential_1(v31 + 136);
    }

    else
    {
      outlined destroy of Pregnancy?(v31 + 136);
      *(v31 + 272) = 0;
      *(v31 + 280) = 0;
      *(v31 + 288) = 0;
      *(v31 + 296) = 0;
    }

    if (*(v31 + 296))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys5UInt8VSays6UInt32V_ADtGGMd);
      if (swift_dynamicCast())
      {
        v11 = *(v31 + 464);
      }

      else
      {
        v11 = 0;
      }

      v12 = v11;
    }

    else
    {
      outlined destroy of Pregnancy?(v31 + 272);
      v12 = 0;
    }

    *(v31 + 456) = v12;
    if (!*(v31 + 456))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5UInt8V_Says6UInt32V_ADtGtMd);
      _allocateUninitializedArray<A>(_:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt32V_ABtGMd);
      Dictionary.init(dictionaryLiteral:)();
      if (*(v31 + 456))
      {
        outlined destroy of [(start: UInt32, end: UInt32)]();
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt32V_ABtGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt32V5start_AB3endtGMd);
    _dictionaryUpCast<A, B, C, D>(_:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys5UInt8VSays6UInt32V5start_AD3endtGGMd);
    Dictionary.merge(_:uniquingKeysWith:)();
    cycleFactors = *(v31 + 536);
    spotting = *(v31 + 528);
    otr = *(v31 + 520);
    flow = *(v31 + 512);

    v4 = CalendarPeriodPrediction.analyze(flow:otr:spotting:cycleFactors:)(flow, otr, spotting, cycleFactors);
    if (v3)
    {

      v5 = *(*(v31 + 320) + 8);
    }

    else
    {
      *(v31 + 304) = v4;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt32VSf15periodStartMean_Sf0bC3StdtGMd);
      Dictionary.merge(_:uniquingKeysWith:)();
      v6 = *(v31 + 560);

      *v6 = v4.periods._rawValue;

      v5 = *(*(v31 + 320) + 8);
    }

    return v5();
  }

  return result;
}

{
  v9 = v0[76];
  v0[40] = v0;

  v1 = v9;
  v0[51] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  if (swift_dynamicCast())
  {
    if ((*(*(v8 + 576) + 88))(*(v8 + 584), *(v8 + 568)) == *MEMORY[0x277D413F0])
    {
      v7 = *(v8 + 608);
      lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
      swift_allocError();
      *v2 = 5;
      swift_willThrow();

      goto LABEL_7;
    }

    (*(*(v8 + 576) + 8))(*(v8 + 584), *(v8 + 568));
  }

  else
  {
  }

  v6 = *(v8 + 608);
  v3 = v6;
  *(v8 + 416) = v6;
  swift_willThrow();

LABEL_7:

  v4 = *(*(v8 + 320) + 8);

  return v4();
}

uint64_t closure #1 in closure #35 in NightingaleDPFLRunner.run(task:useCase:context:)(uint64_t a1, uint64_t a2, int a3, int a4)
{
  *(v4 + 132) = a4;
  *(v4 + 124) = a3;
  *(v4 + 80) = a2;
  *(v4 + 72) = a1;
  *(v4 + 56) = v4;
  *(v4 + 64) = 0;
  *(v4 + 120) = 0;
  *(v4 + 128) = 0;
  *(v4 + 64) = a2;
  *(v4 + 120) = a3;
  *(v4 + 128) = a4;
  return MEMORY[0x2822009F8](closure #1 in closure #35 in NightingaleDPFLRunner.run(task:useCase:context:), 0);
}

uint64_t closure #1 in closure #35 in NightingaleDPFLRunner.run(task:useCase:context:)()
{
  v12 = *(v0 + 132);
  v11 = *(v0 + 124);
  v1 = *(v0 + 80);
  *(v0 + 56) = v0;
  outlined init with copy of HealthDataQuery(v1 + 48, v0 + 16);
  v9 = *(v0 + 40);
  v10 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v9);
  v2 = _allocateUninitializedArray<A>(_:)();
  *v3 = 0;
  v3[1] = 3;
  v3[2] = 1;
  v3[3] = 2;
  _finalizeUninitializedArray<A>(_:)();
  v13 = v2;
  *(v0 + 88) = v2;
  if (v12 < v11)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  HIDWORD(v6) = *(v8 + 132);
  LODWORD(v6) = *(v8 + 124);
  v7 = (*(v10 + 16) + **(v10 + 16));
  v5 = swift_task_alloc();
  *(v8 + 96) = v5;
  *v5 = *(v8 + 56);
  v5[1] = closure #1 in closure #35 in NightingaleDPFLRunner.run(task:useCase:context:);

  return v7(v13, v6, v9, v10);
}

{
  v1 = v0[13];
  v2 = v0[9];
  v0[7] = v0;
  *v2 = v1;
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  v3 = *(v0[7] + 8);

  return v3();
}

{
  *(v0 + 56) = v0;

  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(*(v3 + 56) + 8);

  return v1();
}

uint64_t closure #1 in closure #35 in NightingaleDPFLRunner.run(task:useCase:context:)(uint64_t a1)
{
  v5 = *v2;
  v5[7] = *v2;
  v5[13] = a1;
  v5[14] = v1;

  if (v1)
  {
    v3 = closure #1 in closure #35 in NightingaleDPFLRunner.run(task:useCase:context:);
  }

  else
  {

    v3 = closure #1 in closure #35 in NightingaleDPFLRunner.run(task:useCase:context:);
  }

  return MEMORY[0x2822009F8](v3, 0);
}

float closure #6 in closure #35 in NightingaleDPFLRunner.run(task:useCase:context:)@<S0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  result = *(a1 + 4);
  *a2 = *a1;
  *(a2 + 4) = result;
  return result;
}

uint64_t closure #36 in NightingaleDPFLRunner.run(task:useCase:context:)@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X2>, uint64_t *a3@<X4>, uint64_t *a4@<X5>, uint64_t *a5@<X6>, uint64_t *a6@<X7>, void *a7@<X8>, uint64_t *a8, uint64_t *a9, uint64_t *a10, uint64_t *a11, uint64_t a12, unsigned int a13)
{
  v28 = *a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSf_SStMd);
  v30 = Dictionary.mapValues<A>(_:)();
  if (v29)
  {
    __break(1u);
  }

  else
  {

    v17 = *a3;

    v18 = *a4;

    v19 = *a5;

    v20 = *a6;

    v21 = *a8;

    v14 = *a9;

    v15 = *a10;

    v16 = *a11;

    Featurizer.featurizeNightingaleD(task:pregnancies:swts:hrvs:respiratoryRates:spo2s:daySHR10s:nightSHR10s:calendarPeriodPredictions:historicalPeriods:cycleFactors:hyperParam:today:)(a1, v28, v30, v17, v18, v19, v20, v21, v14, v15, v16, a12, a13);

    result = v42;
    *a7 = v31;
    a7[1] = v32;
    a7[2] = v33;
    a7[3] = v34;
    a7[4] = v35;
    a7[5] = v36;
    a7[6] = v37;
    a7[7] = v38;
    a7[8] = v39;
    a7[9] = v40;
    a7[10] = v41;
    a7[11] = v42;
    a7[12] = v43;
    a7[13] = v44;
    a7[14] = v45;
    a7[15] = v46;
    a7[16] = v47;
    a7[17] = v48;
    a7[18] = v49;
    a7[19] = v50;
    a7[20] = v51;
  }

  return result;
}

uint64_t closure #1 in closure #36 in NightingaleDPFLRunner.run(task:useCase:context:)@<X0>(int *a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = *a1;

  *a2 = v4;
}

uint64_t closure #38 in NightingaleDPFLRunner.run(task:useCase:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 648) = v21;
  *(v8 + 640) = v20;
  *(v8 + 632) = v19;
  *(v8 + 624) = a8;
  *(v8 + 616) = a7;
  *(v8 + 608) = a6;
  *(v8 + 708) = a5;
  *(v8 + 600) = a4;
  *(v8 + 592) = a3;
  *(v8 + 584) = a2;
  *(v8 + 576) = a1;
  *(v8 + 384) = v8;
  *(v8 + 392) = 0;
  *(v8 + 400) = 0;
  *(v8 + 408) = 0;
  *(v8 + 704) = 0;
  *(v8 + 416) = 0;
  *(v8 + 424) = 0;
  *(v8 + 432) = 0;
  *(v8 + 440) = 0;
  *(v8 + 448) = 0;
  *(v8 + 456) = 0;
  *(v8 + 712) = 0;
  *(v8 + 720) = 0;
  *(v8 + 496) = 0;
  *(v8 + 504) = 0;
  v10 = type metadata accessor for PFLError();
  *(v8 + 656) = v10;
  *(v8 + 664) = *(v10 - 8);
  *(v8 + 672) = swift_task_alloc();
  *(v8 + 392) = a2;
  *(v8 + 400) = a3;
  *(v8 + 408) = a4;
  *(v8 + 704) = a5;
  *(v8 + 416) = a6;
  *(v8 + 424) = a7;
  *(v8 + 432) = a8;
  *(v8 + 440) = v19;
  *(v8 + 448) = v20;
  *(v8 + 456) = v21;

  return MEMORY[0x2822009F8](closure #38 in NightingaleDPFLRunner.run(task:useCase:context:), 0);
}

uint64_t closure #38 in NightingaleDPFLRunner.run(task:useCase:context:)()
{
  *(v0 + 384) = v0;
  if (HyperParams.isSWTRequired()())
  {
    v24 = **(v25 + 592);

    *(v25 + 464) = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining9Pregnancy_pGMd);
    lazy protocol witness table accessor for type [Pregnancy] and conformance [A]();
    Sequence.min(by:)();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    if (*(v25 + 40))
    {
      v21 = *(v25 + 40);
      v20 = *(v25 + 48);
      __swift_project_boxed_opaque_existential_1((v25 + 16), v21);
      v22 = (*(v20 + 40))(v21);
      __swift_destroy_boxed_opaque_existential_1(v25 + 16);
      v23 = v22;
    }

    else
    {
      outlined destroy of Pregnancy?(v25 + 16);
      LODWORD(v23) = 0;
      BYTE4(v23) = 1;
    }

    *(v25 + 716) = v23;
    if ((v23 & 0x100000000) == 0)
    {
      v1 = *(v25 + 592);
      *(v25 + 712) = v23;
      v19 = *v1;

      *(v25 + 472) = v19;
      Sequence.max(by:)();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      if (*(v25 + 80))
      {
        v15 = *(v25 + 80);
        v14 = *(v25 + 88);
        __swift_project_boxed_opaque_existential_1((v25 + 56), v15);
        v16 = (*(v14 + 16))(v15);
        __swift_destroy_boxed_opaque_existential_1(v25 + 56);
        v17 = v16;
        v18 = 0;
      }

      else
      {
        outlined destroy of Pregnancy?(v25 + 56);
        v17 = 0;
        v18 = 1;
      }

      *(v25 + 724) = v17;
      if ((v18 & 1) == 0)
      {
        v10 = *(v25 + 708);
        v9 = *(v25 + 600);
        v11 = *(v25 + 584);
        *(v25 + 720) = v17;
        v12 = HyperParams.rawSampleTimeout.getter();

        v13 = swift_allocObject();
        *(v25 + 680) = v13;
        *(v13 + 16) = v9;
        *(v13 + 24) = v10;
        *(v13 + 32) = v11;
        v2 = swift_task_alloc();
        *(v25 + 688) = v2;
        v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy19NightingaleTraining23HealthDataRawSampleTypeOAA0cD11QueryResult_pGMd);
        v4.n128_f64[0] = v12;
        *v2 = *(v25 + 384);
        v2[1] = closure #38 in NightingaleDPFLRunner.run(task:useCase:context:);

        return MEMORY[0x2821A2088](v25 + 480, &async function pointer to partial apply for closure #3 in closure #38 in NightingaleDPFLRunner.run(task:useCase:context:), v13, v3, v4);
      }
    }

    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    swift_allocError();
    *v5 = 58;
    swift_willThrow();
  }

  else
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    swift_allocError();
    *v6 = 66;
    swift_willThrow();
  }

  v7 = *(*(v25 + 384) + 8);

  return v7();
}

{
  v4 = *v1;
  *(v4 + 384) = *v1;
  *(v4 + 696) = v0;

  if (v0)
  {
    v2 = closure #38 in NightingaleDPFLRunner.run(task:useCase:context:);
  }

  else
  {

    v2 = closure #38 in NightingaleDPFLRunner.run(task:useCase:context:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  *(v0 + 384) = v0;
  v33 = *(v0 + 480);
  *(v0 + 504) = v33;
  *(v0 + 728) = 0;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19NightingaleTraining21HealthDataQueryResult_pMd);
  v35 = lazy protocol witness table accessor for type HealthDataRawSampleType and conformance HealthDataRawSampleType();
  MEMORY[0x25F8891D0](v0 + 728, v33, &type metadata for HealthDataRawSampleType, v34);
  if (*(v0 + 120))
  {
    v31 = *(v32 + 120);
    v29 = *(v32 + 128);
    __swift_project_boxed_opaque_existential_1((v32 + 96), v31);
    v30 = *(v29 + 16);
    *(v32 + 280) = swift_getAssociatedTypeWitness();
    __swift_allocate_boxed_opaque_existential_0((v32 + 256));
    v30(v31, v29);
    __swift_destroy_boxed_opaque_existential_1(v32 + 96);
  }

  else
  {
    outlined destroy of Pregnancy?(v32 + 96);
    *(v32 + 256) = 0;
    *(v32 + 264) = 0;
    *(v32 + 272) = 0;
    *(v32 + 280) = 0;
  }

  if (*(v32 + 280))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt32Vs5UInt8VGMd);
    if (swift_dynamicCast())
    {
      v27 = *(v32 + 568);
    }

    else
    {
      v27 = 0;
    }

    v28 = v27;
  }

  else
  {
    outlined destroy of Pregnancy?(v32 + 256);
    v28 = 0;
  }

  *(v32 + 512) = v28;
  if (!*(v32 + 512))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32V_s5UInt8VtMd);
    _allocateUninitializedArray<A>(_:)();
    Dictionary.init(dictionaryLiteral:)();
    if (*(v32 + 512))
    {
      outlined destroy of [(start: UInt32, end: UInt32)]();
    }
  }

  v1 = *(v32 + 696);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt32Vs5UInt8VGMd);
  result = Dictionary.merge(_:uniquingKeysWith:)();
  if (!v1)
  {
    *(v32 + 729) = 2;
    MEMORY[0x25F8891D0](v32 + 729, v33, &type metadata for HealthDataRawSampleType, v34, v35);
    if (*(v32 + 160))
    {
      v26 = *(v32 + 160);
      v24 = *(v32 + 168);
      __swift_project_boxed_opaque_existential_1((v32 + 136), v26);
      v25 = *(v24 + 16);
      *(v32 + 312) = swift_getAssociatedTypeWitness();
      __swift_allocate_boxed_opaque_existential_0((v32 + 288));
      v25(v26, v24);
      __swift_destroy_boxed_opaque_existential_1(v32 + 136);
    }

    else
    {
      outlined destroy of Pregnancy?(v32 + 136);
      *(v32 + 288) = 0;
      *(v32 + 296) = 0;
      *(v32 + 304) = 0;
      *(v32 + 312) = 0;
    }

    if (*(v32 + 312))
    {
      if (swift_dynamicCast())
      {
        v22 = *(v32 + 560);
      }

      else
      {
        v22 = 0;
      }

      v23 = v22;
    }

    else
    {
      outlined destroy of Pregnancy?(v32 + 288);
      v23 = 0;
    }

    *(v32 + 520) = v23;
    if (!*(v32 + 520))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32V_s5UInt8VtMd);
      _allocateUninitializedArray<A>(_:)();
      Dictionary.init(dictionaryLiteral:)();
      if (*(v32 + 520))
      {
        outlined destroy of [(start: UInt32, end: UInt32)]();
      }
    }

    Dictionary.merge(_:uniquingKeysWith:)();
    *(v32 + 730) = 1;
    MEMORY[0x25F8891D0](v32 + 730, v33, &type metadata for HealthDataRawSampleType, v34, v35);
    if (*(v32 + 200))
    {
      v21 = *(v32 + 200);
      v19 = *(v32 + 208);
      __swift_project_boxed_opaque_existential_1((v32 + 176), v21);
      v20 = *(v19 + 16);
      *(v32 + 344) = swift_getAssociatedTypeWitness();
      __swift_allocate_boxed_opaque_existential_0((v32 + 320));
      v20(v21, v19);
      __swift_destroy_boxed_opaque_existential_1(v32 + 176);
    }

    else
    {
      outlined destroy of Pregnancy?(v32 + 176);
      *(v32 + 320) = 0;
      *(v32 + 328) = 0;
      *(v32 + 336) = 0;
      *(v32 + 344) = 0;
    }

    if (*(v32 + 344))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt32VSbGMd);
      if (swift_dynamicCast())
      {
        v17 = *(v32 + 552);
      }

      else
      {
        v17 = 0;
      }

      v18 = v17;
    }

    else
    {
      outlined destroy of Pregnancy?(v32 + 320);
      v18 = 0;
    }

    *(v32 + 528) = v18;
    if (!*(v32 + 528))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32V_SbtMd);
      _allocateUninitializedArray<A>(_:)();
      Dictionary.init(dictionaryLiteral:)();
      if (*(v32 + 528))
      {
        outlined destroy of [(start: UInt32, end: UInt32)]();
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt32VSbGMd);
    Dictionary.merge(_:uniquingKeysWith:)();
    *(v32 + 731) = 3;
    MEMORY[0x25F8891D0](v32 + 731, v33, &type metadata for HealthDataRawSampleType, v34, v35);
    if (*(v32 + 240))
    {
      v16 = *(v32 + 240);
      v14 = *(v32 + 248);
      __swift_project_boxed_opaque_existential_1((v32 + 216), v16);
      v15 = *(v14 + 16);
      *(v32 + 376) = swift_getAssociatedTypeWitness();
      __swift_allocate_boxed_opaque_existential_0((v32 + 352));
      v15(v16, v14);
      __swift_destroy_boxed_opaque_existential_1(v32 + 216);
    }

    else
    {
      outlined destroy of Pregnancy?(v32 + 216);
      *(v32 + 352) = 0;
      *(v32 + 360) = 0;
      *(v32 + 368) = 0;
      *(v32 + 376) = 0;
    }

    if (*(v32 + 376))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys5UInt8VSays6UInt32V_ADtGGMd);
      if (swift_dynamicCast())
      {
        v12 = *(v32 + 544);
      }

      else
      {
        v12 = 0;
      }

      v13 = v12;
    }

    else
    {
      outlined destroy of Pregnancy?(v32 + 352);
      v13 = 0;
    }

    *(v32 + 536) = v13;
    if (!*(v32 + 536))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5UInt8V_Says6UInt32V_ADtGtMd);
      _allocateUninitializedArray<A>(_:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt32V_ABtGMd);
      Dictionary.init(dictionaryLiteral:)();
      if (*(v32 + 536))
      {
        outlined destroy of [(start: UInt32, end: UInt32)]();
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt32V_ABtGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt32V5start_AB3endtGMd);
    _dictionaryUpCast<A, B, C, D>(_:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys5UInt8VSays6UInt32V5start_AD3endtGGMd);
    Dictionary.merge(_:uniquingKeysWith:)();
    v11 = *(v32 + 632);
    v10 = *(v32 + 624);
    v9 = *(v32 + 616);
    v8 = *(v32 + 608);

    v3 = CalendarPeriodPrediction.predictHistoricalPeriods(flow:otr:spotting:cycleFactors:)(v8, v9, v10, v11);
    v7 = *(v32 + 724);
    v5 = *(v32 + 716);
    v6 = *(v32 + 576);
    **(v32 + 640) = v3;

    *v6 = v5;
    v6[1] = v7;

    v4 = *(*(v32 + 384) + 8);

    return v4();
  }

  return result;
}

{
  v9 = v0[87];
  v0[48] = v0;

  v1 = v9;
  v0[61] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  if (swift_dynamicCast())
  {
    if ((*(*(v8 + 664) + 88))(*(v8 + 672), *(v8 + 656)) == *MEMORY[0x277D413F0])
    {
      v7 = *(v8 + 696);
      lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
      swift_allocError();
      *v2 = 5;
      swift_willThrow();

      goto LABEL_7;
    }

    (*(*(v8 + 664) + 8))(*(v8 + 672), *(v8 + 656));
  }

  else
  {
  }

  v6 = *(v8 + 696);
  v3 = v6;
  *(v8 + 496) = v6;
  swift_willThrow();

LABEL_7:

  v4 = *(*(v8 + 384) + 8);

  return v4();
}

BOOL closure #1 in closure #38 in NightingaleDPFLRunner.run(task:useCase:context:)(void *a1, void *a2)
{
  v4 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v8 = (*(v3 + 40))(v4);
  v7 = a2[3];
  v6 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v7);
  return v8 < (*(v6 + 40))(v7);
}

uint64_t closure #3 in closure #38 in NightingaleDPFLRunner.run(task:useCase:context:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  *(v4 + 96) = a4;
  *(v4 + 140) = a3;
  *(v4 + 88) = a2;
  *(v4 + 80) = a1;
  *(v4 + 56) = v4;
  *(v4 + 64) = 0;
  *(v4 + 136) = 0;
  *(v4 + 72) = 0;
  *(v4 + 64) = a2;
  *(v4 + 136) = a3;
  *(v4 + 72) = a4;
  return MEMORY[0x2822009F8](closure #3 in closure #38 in NightingaleDPFLRunner.run(task:useCase:context:), 0);
}

uint64_t closure #3 in closure #38 in NightingaleDPFLRunner.run(task:useCase:context:)()
{
  v11 = *(v0 + 140);
  v1 = *(v0 + 88);
  *(v0 + 56) = v0;
  outlined init with copy of HealthDataQuery(v1 + 48, v0 + 16);
  v9 = *(v0 + 40);
  v10 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v9);
  result = _allocateUninitializedArray<A>(_:)();
  *v3 = 0;
  v3[1] = 3;
  v3[2] = 1;
  v3[3] = 2;
  _finalizeUninitializedArray<A>(_:)();
  v12 = result;
  *(v0 + 104) = result;
  v13 = v11 - 550;
  if (v11 < 0x226)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  result = HyperParams.lmpMaxRange.getter();
  if (result < 0 || result > 0xFFFFFFFFLL)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v4 = *(v8 + 140);
  v7 = v4 - result;
  if (v4 < result)
  {
    goto LABEL_13;
  }

  if (v7 < v13)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v6 = (*(v10 + 16) + **(v10 + 16));
  v5 = swift_task_alloc();
  *(v8 + 112) = v5;
  *v5 = *(v8 + 56);
  v5[1] = closure #3 in closure #38 in NightingaleDPFLRunner.run(task:useCase:context:);

  return v6(v12, __PAIR64__(v7, v13), v9, v10);
}

{
  v1 = v0[15];
  v2 = v0[10];
  v0[7] = v0;
  *v2 = v1;
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  v3 = *(v0[7] + 8);

  return v3();
}

{
  *(v0 + 56) = v0;

  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(*(v3 + 56) + 8);

  return v1();
}

uint64_t closure #3 in closure #38 in NightingaleDPFLRunner.run(task:useCase:context:)(uint64_t a1)
{
  v5 = *v2;
  v5[7] = *v2;
  v5[15] = a1;
  v5[16] = v1;

  if (v1)
  {
    v3 = closure #3 in closure #38 in NightingaleDPFLRunner.run(task:useCase:context:);
  }

  else
  {

    v3 = closure #3 in closure #38 in NightingaleDPFLRunner.run(task:useCase:context:);
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t closure #39 in NightingaleDPFLRunner.run(task:useCase:context:)(uint64_t a1, void *a2)
{
  v10 = 0u;
  v11 = 0u;
  v9 = 0;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  LODWORD(v10) = *a1;
  DWORD2(v10) = v2;
  *&v11 = v3;
  *(&v11 + 1) = v4;
  v9 = a2;
  v6 = *a2;

  v8 = v10;
  v7 = MEMORY[0x25F8897F0](&v8, v6, MEMORY[0x277D84CC0], MEMORY[0x277D84CD0]);

  return v7 & 1;
}

uint64_t _sSTsE5count5whereSiSb7ElementQzqd__YKXE_tqd__YKs5ErrorRd__lF(uint64_t (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a1;
  v28 = a2;
  v52 = a3;
  v29 = a4;
  v51 = a5;
  v30 = a7;
  v59 = a3;
  v58 = a4;
  v31 = *(a4 - 8);
  v32 = a4 - 8;
  v33 = (*(v31 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1);
  v34 = &v15 - v33;
  v53 = 0;
  v40 = MEMORY[0x277D83880];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v36 = *(AssociatedTypeWitness - 8);
  v37 = AssociatedTypeWitness - 8;
  v38 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v53);
  v39 = &v15 - v38;
  v41 = (*(*(type metadata accessor for Optional() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x28223BE20](v53);
  v42 = &v15 - v41;
  v49 = *(v8 - 8);
  v44 = v8 - 8;
  v43 = (*(v49 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7);
  v9 = &v15 - v43;
  v45 = swift_getAssociatedTypeWitness();
  v46 = *(v45 - 8);
  v47 = v45 - 8;
  v48 = (*(v46 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v45);
  v50 = &v15 - v48;
  (*(v49 + 16))(v9);
  dispatch thunk of Sequence.makeIterator()();
  v55 = v53;
  v56 = v53;
  for (i = v54; ; i = v20)
  {
    v23 = i;
    v24 = v56;
    v25 = v55;
    swift_getAssociatedConformanceWitness();
    dispatch thunk of IteratorProtocol.next()();
    v10 = (*(v36 + 48))(v42, 1, AssociatedTypeWitness);
    v26 = v25;
    if (v10 == 1)
    {
      v22 = v26;
      (*(v46 + 8))(v50, v45);
      return v22;
    }

    (*(v36 + 32))(v39, v42, AssociatedTypeWitness);
    v12 = v23;
    v13 = v27(v39, v34);
    v20 = v12;
    v21 = v13;
    if (v12)
    {
      (*(v36 + 8))(v39, AssociatedTypeWitness);
      (*(v46 + 8))(v50, v45);
      (*(v31 + 32))(v30, v34, v29);
      return v19;
    }

    v18 = v21;
    result = (*(v36 + 8))(v39, AssociatedTypeWitness);
    v17 = (v18 & 1) != 0;
    v16 = v24 + v17;
    if (__OFADD__(v24, v17))
    {
      break;
    }

    v55 = v16;
    v56 = v16;
  }

  __break(1u);
  return result;
}

id NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, void *a19, void *a20, void *a21, void *a22, void *a23, void *a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  v31 = MEMORY[0x28223BE20](a1);
  v847 = &v935;
  v782 = v30;
  v839 = v29;
  v33 = v32;
  v783._rawValue = v32;
  v35 = v34;
  v784 = v34;
  v37 = v36;
  v785 = v36;
  v39 = v38;
  v786 = v38;
  v41 = v40;
  v844 = v40;
  v838 = v42;
  v842 = v43;
  v841 = v31;
  v831 = a28;
  v787 = a28;
  v835 = a27;
  v788 = a27;
  v834 = a26;
  v789 = a26;
  v833 = a25;
  v790._rawValue = a25;
  v830 = a24;
  v791._rawValue = a24;
  v829 = a23;
  v792._rawValue = a23;
  v828 = a22;
  v793._rawValue = a22;
  v827 = a21;
  v794._rawValue = a21;
  v837 = a20;
  v795._rawValue = a20;
  v836 = a19;
  v796._rawValue = a19;
  v826 = a18;
  v797._rawValue = a18;
  v832 = a17;
  v798._rawValue = a17;
  v825 = a16;
  v799._rawValue = a16;
  v824 = a15;
  v800._rawValue = a15;
  v823 = a14;
  v801._rawValue = a14;
  v822 = a13;
  v802._rawValue = a13;
  v821 = a12;
  v803._rawValue = a12;
  v820 = a11;
  v804._rawValue = a11;
  v805._rawValue = a10;
  v806._rawValue = a9;
  v843 = a29;
  v811 = 0;
  v970 = 0;
  v969 = 0;
  v968 = 0;
  v967 = 0;
  v966 = 0;
  v965 = 0;
  v964 = 0;
  v963 = 0;
  v962 = 0;
  v961 = 0;
  v960 = 0;
  v959 = 0;
  v958 = 0;
  v957 = 0;
  v956 = 0;
  v955 = 0;
  v954 = 0;
  v952 = 0;
  v951 = 0;
  v950 = 0;
  v949._rawValue = 0;
  v945[24] = 0;
  v942 = 0;
  v934 = 0;
  v930 = 0;
  v929 = 0;
  v928 = 0;
  v927 = 0;
  v924 = 0;
  v923 = 0;
  v922 = 0;
  v921 = 0;
  v917 = 0;
  v916 = 0;
  v915 = 0;
  v914 = 0;
  v913 = 0;
  v904 = 0;
  v883 = 0;
  v878 = 0;
  v875 = 0;
  v872 = 0;
  v869 = 0;
  v868 = 0;
  v865 = 0;
  v864 = 0;
  v863 = 0;
  v858 = 0;
  v855 = 0;
  v807 = type metadata accessor for EspressoFunction();
  v808 = *(v807 - 8);
  v809 = v808;
  MEMORY[0x28223BE20](0);
  v810 = &v360 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v970 = v810;
  v812 = type metadata accessor for Logger();
  v813 = *(v812 - 8);
  v814 = v813;
  v816 = *(v813 + 64);
  v45 = MEMORY[0x28223BE20](v811);
  v818 = (v816 + 15) & 0xFFFFFFFFFFFFFFF0;
  v815 = &v360 - v818;
  v46 = MEMORY[0x28223BE20](v45);
  v817 = &v360 - v818;
  MEMORY[0x28223BE20](v46);
  v819 = &v360 - v818;
  v47 = type metadata accessor for String.Encoding();
  v48 = v826;
  v840 = &v360 - ((MEMORY[0x28223BE20](*(*(v47 - 8) + 64)) + 15) & 0xFFFFFFFFFFFFFFF0);
  v969 = v841;
  v967 = v842;
  v968 = v838;
  v966 = v41;
  v965 = v39;
  v964 = v37;
  v963 = v35;
  v971 = v33;
  v972 = a9;
  v973 = a10;
  v974 = v49;
  v975 = v50;
  v976 = v51;
  v977 = v52;
  v978 = v53;
  v979 = v54;
  v980 = v55;
  v981 = v48;
  v982 = v836;
  v983 = v837;
  v984 = v56;
  v985 = v57;
  v986 = v58;
  v987 = v59;
  v988 = v833;
  v989 = v834;
  v990 = v835;
  v991 = v60;
  v962 = v843;
  v961 = v839;

  v960 = v843;
  v846 = NightingaleDPFLRunner.performanceMeasure.getter();
  v848 = 1;
  object = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Training", 8uLL, 1)._object;
  dispatch thunk of PerformanceMeasure.start(_:)();

  v61 = HyperParams.trainingEngine.getter();
  v62 = v847;
  v63 = v848;
  *(v847 + 687) = v61 & 1;
  *(v62 + 686) = v63;
  lazy protocol witness table accessor for type NightingaleDProcessEngine and conformance NightingaleDProcessEngine();
  if (== infix<A>(_:_:)())
  {
    v64 = v782;
    static OnDeviceML.extendMorpheus()();
    v780 = v64;
    v781 = v64;
    if (v64)
    {
      v409 = v781;
      outlined destroy of [(start: UInt32, end: UInt32)]();
      result = v409;
      v410 = v409;
      return result;
    }

    static Math.extendMorpheus()();
    v778 = 0;
    v779 = 0;
    HyperParams.morpheusTrainingProgramFileName.getter();
    v774 = v65;
    v66 = dispatch thunk of PFLTask.attachmentPath(name:)();
    v777 = v67;
    v775 = v66;
    v776 = v67;

    if (v777)
    {
      v772 = v775;
      v773 = v776;
      v765 = v776;
      v764 = v775;
      v766 = v778;
      v916 = v775;
      v917 = v776;
      static String.Encoding.utf8.getter();
      v68 = v766;
      v69 = String.init(contentsOfFile:encoding:)();
      v767 = v68;
      v768 = v69;
      v769 = v70;
      v770 = v68;
      if (v68)
      {
        v407 = 0;
        v408 = 0;

        v761 = v407;
        v762 = v407;
        v763 = v408;
      }

      else
      {
        v761 = v768;
        v762 = v769;
        v763 = 0;
      }

      v758 = v763;
      v759 = v762;
      v760 = v761;
      if (v762)
      {
        v756 = v760;
        v757 = v759;
        v748 = v759;
        v749 = v760;
        v914 = v760;
        v915 = v759;
        static PFLLogging.plugin.getter();
        v754 = Logger.logObject.getter();
        v750 = v754;
        v753 = static os_log_type_t.debug.getter();
        v751 = v753;
        v752 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd);
        v755 = _allocateUninitializedArray<A>(_:)();
        if (os_log_type_enabled(v754, v753))
        {
          v746 = v758;
          v738 = static UnsafeMutablePointer.allocate(capacity:)();
          v734 = v738;
          v735 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd);
          v736 = 0;
          v739 = createStorage<A>(capacity:type:)(0);
          v737 = v739;
          v740 = createStorage<A>(capacity:type:)(v736);
          v852[0] = v738;
          v851 = v739;
          v850 = v740;
          v741 = 0;
          v742 = v852;
          serialize(_:at:)(0, v852);
          serialize(_:at:)(v741, v742);
          v849 = v755;
          v743 = &v360;
          MEMORY[0x28223BE20](&v360);
          v744 = &v360 - 6;
          *(&v360 - 4) = v72;
          *(&v360 - 3) = &v851;
          *(&v360 - 2) = &v850;
          v745 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd);
          lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
          v73 = v746;
          Sequence.forEach(_:)();
          v747 = v73;
          if (v73)
          {
            __break(1u);
          }

          else
          {
            _os_log_impl(&dword_25C4D8000, v750, v751, "Using Morpheus to train.", v734, 2u);
            v732 = 0;
            destroyStorage<A>(_:count:)(v737, 0, v735);
            destroyStorage<A>(_:count:)(v740, v732, MEMORY[0x277D84F70] + 8);
            MEMORY[0x25F8899D0](v734, MEMORY[0x277D84B78]);

            v733 = v747;
          }
        }

        else
        {

          v733 = v758;
        }

        v728 = v733;

        v726 = *(v814 + 8);
        v727 = (v814 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v726(v819, v812);
        type metadata accessor for MorpheusProgram();
        v74 = v728;
        v75 = static MorpheusProgram.fromDSL(_:)();
        v729 = v74;
        v730 = v75;
        v731 = v74;
        if (v74)
        {
          v634 = v731;
          v635 = 0;
          goto LABEL_101;
        }

        v696 = v730;
        v720 = 0;
        v904 = v730;
        v712 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd);
        v697 = v712;
        v698 = 20;
        v705 = _allocateUninitializedArray<A>(_:)();
        v704 = v76;
        v700 = 15;
        v718 = 1;
        v77 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featureDaySHR10", 0xFuLL, 1);
        *v704 = v77;
        v702 = &v971;
        outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(&v971, v903);
        v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd);
        v79 = v698;
        v80 = v704;
        rawValue = v783._rawValue;
        v82 = v718;
        v703 = v78;
        v704[2]._object = v78;
        v80[1]._countAndFlagsBits = rawValue;
        v83 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featureDaySHR10Stats", v79, v82);
        v84 = v702;
        v704[3] = v83;
        outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v84, v902);
        v85 = v704;
        v86 = v806._rawValue;
        v87 = v718;
        v704[5]._object = v703;
        v85[4]._countAndFlagsBits = v86;
        v88 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featureNightSHR10", 0x11uLL, v87);
        v89 = v702;
        v704[6] = v88;
        outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v89, v901);
        v90 = v704;
        v91 = v805._rawValue;
        v92 = v718;
        v704[8]._object = v703;
        v90[7]._countAndFlagsBits = v91;
        v701 = 22;
        v93 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featureNightSHR10Stats", 0x16uLL, v92);
        v94 = v702;
        v704[9] = v93;
        outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v94, v900);
        v95 = v704;
        v96 = v804._rawValue;
        v97 = v718;
        v704[11]._object = v703;
        v95[10]._countAndFlagsBits = v96;
        v699 = 10;
        v98 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featurePSM", 0xAuLL, v97);
        v99 = v702;
        v704[12] = v98;
        outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v99, v899);
        v100 = v700;
        v101 = v704;
        v102 = v803._rawValue;
        v103 = v718;
        v704[14]._object = v703;
        v101[13]._countAndFlagsBits = v102;
        v104 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featurePSMStats", v100, v103);
        v105 = v702;
        v704[15] = v104;
        outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v105, v898);
        v106 = v699;
        v107 = v704;
        v108 = v802._rawValue;
        v109 = v718;
        v704[17]._object = v703;
        v107[16]._countAndFlagsBits = v108;
        v110 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featurePSS", v106, v109);
        v111 = v702;
        v704[18] = v110;
        outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v111, v897);
        v112 = v700;
        v113 = v704;
        v114 = v801._rawValue;
        v115 = v718;
        v704[20]._object = v703;
        v113[19]._countAndFlagsBits = v114;
        v116 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featurePSSStats", v112, v115);
        v117 = v702;
        v704[21] = v116;
        outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v117, v896);
        v118 = v704;
        v119 = v800._rawValue;
        v120 = v718;
        v704[23]._object = v703;
        v118[22]._countAndFlagsBits = v119;
        v121 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featureDaysSinceLastPeriodStart", 0x1FuLL, v120);
        v122 = v702;
        v704[24] = v121;
        outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v122, v895);
        v123 = v704;
        v124 = v799._rawValue;
        v125 = v718;
        v704[26]._object = v703;
        v123[25]._countAndFlagsBits = v124;
        v126 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featureDaysSinceLastPeriodStartStats", 0x24uLL, v125);
        v127 = v702;
        v704[27] = v126;
        outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v127, v894);
        v128 = v699;
        v129 = v704;
        v130 = v798._rawValue;
        v131 = v718;
        v704[29]._object = v703;
        v129[28]._countAndFlagsBits = v130;
        v132 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featureSWT", v128, v131);
        v133 = v702;
        v704[30] = v132;
        outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v133, v893);
        v134 = v700;
        v135 = v704;
        v136 = v797._rawValue;
        v137 = v718;
        v704[32]._object = v703;
        v135[31]._countAndFlagsBits = v136;
        v138 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featureSWTStats", v134, v137);
        v139 = v702;
        v704[33] = v138;
        outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v139, v892);
        v140 = v699;
        v141 = v704;
        v142 = v796._rawValue;
        v143 = v718;
        v704[35]._object = v703;
        v141[34]._countAndFlagsBits = v142;
        v144 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featureHRV", v140, v143);
        v145 = v702;
        v704[36] = v144;
        outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v145, v891);
        v146 = v700;
        v147 = v704;
        v148 = v795._rawValue;
        v149 = v718;
        v704[38]._object = v703;
        v147[37]._countAndFlagsBits = v148;
        v150 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featureHRVStats", v146, v149);
        v151 = v702;
        v704[39] = v150;
        outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v151, v890);
        v152 = v701;
        v153 = v704;
        v154 = v794._rawValue;
        v155 = v718;
        v704[41]._object = v703;
        v153[40]._countAndFlagsBits = v154;
        v156 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featureRespiratoryRate", v152, v155);
        v157 = v702;
        v704[42] = v156;
        outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v157, v889);
        v158 = v704;
        v159 = v793._rawValue;
        v160 = v718;
        v704[44]._object = v703;
        v158[43]._countAndFlagsBits = v159;
        v161 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featureRespiratoryRateStats", 0x1BuLL, v160);
        v162 = v702;
        v704[45] = v161;
        outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v162, v888);
        v163 = v704;
        v164 = v792._rawValue;
        v165 = v718;
        v704[47]._object = v703;
        v163[46]._countAndFlagsBits = v164;
        v166 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featureSpO2", 0xBuLL, v165);
        v167 = v702;
        v704[48] = v166;
        outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v167, v887);
        v168 = v704;
        v169 = v791._rawValue;
        v170 = v718;
        v704[50]._object = v703;
        v168[49]._countAndFlagsBits = v169;
        v171 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featureSpO2Stats", 0x10uLL, v170);
        v172 = v702;
        v704[51] = v171;
        outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v172, v886);
        v173 = v704;
        v174 = v790._rawValue;
        v175 = v718;
        v704[53]._object = v703;
        v173[52]._countAndFlagsBits = v174;
        v176 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("sliceEndDays", 0xCuLL, v175);
        v177 = v702;
        v704[54] = v176;
        outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v177, v885);
        v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt32VGMd);
        v179 = v704;
        v180 = v789;
        v181 = v718;
        v704[56]._object = v178;
        v179[55]._countAndFlagsBits = v180;
        v182 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("labels", 6uLL, v181);
        v183 = v702;
        v704[57] = v182;
        outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v183, v884);
        v184 = v704;
        v185 = v788;
        v186 = v705;
        v704[59]._object = v703;
        v184[58]._countAndFlagsBits = v185;
        _finalizeUninitializedArray<A>(_:)();
        v706 = v186;

        v715 = MEMORY[0x277D84F70] + 8;
        v717 = MEMORY[0x277D837D0];
        v716 = MEMORY[0x277D837E0];
        v708 = Dictionary.init(dictionaryLiteral:)();
        v707 = v708;
        v883 = v708;
        v711 = _allocateUninitializedArray<A>(_:)();
        v710 = v187;

        v713 = 0;
        v188 = type metadata accessor for PFLTask();
        v189 = v841;
        v190 = v710;
        v710[3] = v188;
        *v190 = v189;

        v191 = type metadata accessor for HyperParams();
        v192 = v844;
        v193 = v710;
        v710[7] = v191;
        v193[4] = v192;

        v194 = v842;
        v195 = v838;
        v196 = v710;
        v710[11] = v717;
        v196[8] = v194;
        v196[9] = v195;

        v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd);
        v198 = v708;
        v199 = v710;
        v709 = v197;
        v710[15] = v197;
        v199[12] = v198;

        v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt32V5start_AB3endtGMd);
        v201 = v786;
        v202 = v710;
        v710[19] = v200;
        v202[16] = v201;

        v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining9Pregnancy_pGMd);
        v204 = v785;
        v205 = v784;
        v206 = v710;
        v207 = v203;
        v208 = v711;
        v710[23] = v207;
        v206[20] = v204;
        v206[27] = MEMORY[0x277D83B88];
        v206[24] = v205;
        _finalizeUninitializedArray<A>(_:)();
        v721 = v208;
        v714 = v208;
        _allocateUninitializedArray<A>(_:)();
        v722 = Dictionary.init(dictionaryLiteral:)();
        v719 = v722;
        v209 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("train", 5uLL, v718);
        v210 = v720;
        v723 = v209._object;
        dispatch thunk of MorpheusProgram.execute(args:keywords:function:)();
        v724 = v210;
        v725 = v210;
        if (v210)
        {
          v367 = v725;
          v368 = 0;

          v634 = v367;
          v635 = v368;
          goto LABEL_101;
        }

        v880[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd);
        v880[0] = swift_allocObject();
        outlined init with copy of Any?(v882, v880[0] + 16);
        v695 = &v881;
        v694 = v880;
        static MorpheusUtils.unwrapMorpheusResult(result:)();
        __swift_destroy_boxed_opaque_existential_1(v694);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayypGMd);
        if (swift_dynamicCast())
        {
          v693 = v879;
        }

        else
        {
          v693 = 0;
        }

        v692 = v693;
        if (v693)
        {
          v691 = v692;
          v690 = v692;
          v878 = v692;
          if (MEMORY[0x25F8895B0]() >= 5)
          {
            v687 = MEMORY[0x277D84F70] + 8;
            v688 = &v877;
            v686 = 0;
            Array.subscript.getter();
            v689 = type metadata accessor for NSNumber();
            if (swift_dynamicCast())
            {
              v685 = v876;
            }

            else
            {
              v685 = 0;
            }

            v684 = v685;
            if (v685)
            {
              v683 = v684;
              v679 = v684;
              [v684 floatValue];
              v680 = v211;

              v681 = v680;
              v682 = 0;
            }

            else
            {
              v681 = 0;
              v682 = 1;
            }

            v678 = v681;
            if (v682)
            {
              lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
              v578 = 0;
              v579 = swift_allocError();
              *v245 = 87;
              swift_willThrow();
              v580 = v578;

              outlined destroy of Pregnancy?(v882);

              v634 = v579;
              v635 = v580;
              goto LABEL_101;
            }

            v677 = v678;
            v673 = v678;
            v875 = v678;
            v675 = MEMORY[0x277D84F70] + 8;
            v674 = &v874;
            Array.subscript.getter();
            v676 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd);
            if (swift_dynamicCast())
            {
              v672 = v873;
            }

            else
            {
              v672 = 0;
            }

            v671 = v672;
            if (v672)
            {
              v670 = v671;
              v667 = v724;
              v852[1] = v671;
              KeyPath = swift_getKeyPath();
              v665 = KeyPath;

              v212 = lazy protocol witness table accessor for type [NSNumber] and conformance [A]();
              v213 = v667;
              v215 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for implicit closure #1 in NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:), KeyPath, v676, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v212, MEMORY[0x277D84AC0], v214);
              v668 = v213;
              v669 = v215;
              if (v213)
              {

                __break(1u);
                goto LABEL_111;
              }

              v662 = v669;

              outlined destroy of [(start: UInt32, end: UInt32)]();
              v663 = v662;
              v664 = v668;
            }

            else
            {
              v663 = 0;
              v664 = v724;
            }

            v660 = v664;
            v661 = v663;
            if (!v663)
            {
              lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
              v581 = 0;
              v582 = swift_allocError();
              *v244 = 88;
              swift_willThrow();
              v583 = v581;

              outlined destroy of Pregnancy?(v882);

              v634 = v582;
              v635 = v583;
              goto LABEL_101;
            }

            v659 = v661;
            v658 = v661;
            v872 = v661;
            if ((HyperParams.evalBeforeTrain.getter() & 1) == 0)
            {
              v639 = v660;
              goto LABEL_55;
            }

            v657 = MEMORY[0x277D84F70] + 8;
            v656 = v860;
            Array.subscript.getter();
            if (swift_dynamicCast())
            {
              v655 = v859;
            }

            else
            {
              v655 = 0;
            }

            v654 = v655;
            if (!v655)
            {
              lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
              v628 = 0;
              v629 = swift_allocError();
              *v220 = 89;
              swift_willThrow();
              v630 = v628;

              outlined destroy of Pregnancy?(v882);

              v634 = v629;
              v635 = v630;
              goto LABEL_101;
            }

            v653 = v654;
            v216 = v660;
            v651 = v654;
            v858 = v654;

            Dictionary.merge(_:uniquingKeysWith:)();
            v652 = v216;
            if (!v216)
            {
              v650 = MEMORY[0x277D84F70] + 8;
              v649 = &v857;
              Array.subscript.getter();
              if (swift_dynamicCast())
              {
                v648 = v856;
              }

              else
              {
                v648 = 0;
              }

              v647 = v648;
              if (v648)
              {
                v646 = v647;
                v642 = v647;
                [v647 floatValue];
                v643 = v217;

                v644 = v643;
                v645 = 0;
              }

              else
              {
                v644 = 0;
                v645 = 1;
              }

              v641 = v644;
              if (v645)
              {
                lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
                v631 = 0;
                v632 = swift_allocError();
                *v219 = 90;
                swift_willThrow();
                v633 = v631;

                outlined destroy of Pregnancy?(v882);

                v634 = v632;
                v635 = v633;
                goto LABEL_101;
              }

              v640 = v641;
              v636 = v641;
              v855 = v641;
              v218 = NightingaleDPFLRunner.keyMetricsLossBeforeTraining.unsafeMutableAddressor();
              v637 = *v218;
              v638 = *(v218 + 1);

              v854 = MEMORY[0x277D83A90];
              v853 = v636;
              v852[2] = v637;
              v852[3] = v638;
              Dictionary.subscript.setter();

              v639 = v652;
LABEL_55:
              v625 = v639;
              v627 = MEMORY[0x277D84F70] + 8;
              v626 = &v871;
              Array.subscript.getter();
              if (swift_dynamicCast())
              {
                v624 = v870;
              }

              else
              {
                v624 = 0;
              }

              v623 = v624;
              if (v624)
              {
                v622 = v623;
                v618 = v623;
                [v623 floatValue];
                v619 = v221;

                v620 = v619;
                v621 = 0;
              }

              else
              {
                v620 = 0;
                v621 = 1;
              }

              v617 = v620;
              if ((v621 & 1) == 0)
              {
                v616 = v617;
                v611 = v617;
                v869 = v617;
                v614 = NightingaleDPFLRunner.performanceMeasure.getter();
                v612 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Training", 8uLL, 1)._object;
                dispatch thunk of PerformanceMeasure.finish(_:)();
                v615 = v222;
                v613 = v222;

                v868 = v615;
                v223 = default argument 1 of NightingaleDPFLRunner.sendLocation(_:_:)();
                NightingaleDPFLRunner.sendLocation(_:_:)(NightingaleTraining_NightingaleDReachLocation_trainingCompleted, v223);
                if (HyperParams.collectL2Norm.getter())
                {
                  v225 = NightingaleDPFLRunner.keyMetricsL2Norm.unsafeMutableAddressor();
                  v609 = *v225;
                  v610 = *(v225 + 1);

                  static PFLStats.l2Norm(_:)();
                  v862 = MEMORY[0x277D83A90];
                  v861 = v226;
                  v860[4] = v609;
                  v860[5] = v610;
                  Dictionary.subscript.setter();
                }

                v227 = v625;
                _sSa23withUnsafeBufferPointeryqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #2 in NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:), 0, v658, MEMORY[0x277D83A90], MEMORY[0x277CC9318], MEMORY[0x277D84A98], MEMORY[0x277D84AC0], v224);
                v608 = v227;
                if (!v227)
                {
                  v606 = 0;
                  v594 = v866;
                  v595 = v867;
                  v864 = v866;
                  v865 = v867;
                  v597 = NightingaleDPFLRunner.performanceMeasure.getter();
                  v596 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PluginE2E", 9uLL, 1)._object;
                  dispatch thunk of PerformanceMeasure.finish(_:)();
                  v600 = v228;

                  v863 = v600;
                  v605 = _allocateUninitializedArray<A>(_:)();
                  v604 = v229;
                  v230 = NightingaleDPFLRunner.keyMetricsTrainingDurationS.unsafeMutableAddressor();
                  outlined init with copy of String(v230, v604);
                  v231 = v613;
                  v232 = v604;
                  v599 = MEMORY[0x277D839F8];
                  v604[5] = MEMORY[0x277D839F8];
                  v232[2] = v231;
                  v598 = v232 + 6;
                  v233 = NightingaleDPFLRunner.keyMetricsE2EDurationS.unsafeMutableAddressor();
                  outlined init with copy of String(v233, v598);
                  v234 = v600;
                  v235 = v604;
                  v604[11] = v599;
                  v235[8] = v234;
                  v601 = v235 + 12;
                  v236 = NightingaleDPFLRunner.keyMetricsLoss.unsafeMutableAddressor();
                  outlined init with copy of String(v236, v601);
                  v237 = v673;
                  v238 = v604;
                  v603 = MEMORY[0x277D83A90];
                  v604[17] = MEMORY[0x277D83A90];
                  *(v238 + 28) = v237;
                  v602 = v238 + 18;
                  v239 = NightingaleDPFLRunner.keyNumSlices.unsafeMutableAddressor();
                  outlined init with copy of String(v239, v602);
                  v240 = v604;
                  v241 = v611;
                  v604[23] = v603;
                  *(v240 + 40) = v241;
                  _finalizeUninitializedArray<A>(_:)();
                  Dictionary.init(dictionaryLiteral:)();
                  v242 = v606;
                  Dictionary.merge(_:uniquingKeysWith:)();
                  v607 = v242;
                  if (!v242)
                  {
                    v591 = &v360;
                    MEMORY[0x28223BE20](&v360);
                    *(&v360 - 2) = &v960;
                    NightingaleDPFLRunner.sendLocation<A>(location:force:work:)(12, 1, (&v360 - 4), MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
                    v592 = 0;
                    v593 = 0;
                    type metadata accessor for PFLTaskResult();
                    v587 = v960;

                    outlined copy of Data._Representation(v594, v595);
                    v588 = PFLTaskResult.__allocating_init(json:vector:)();
                    outlined consume of Data._Representation(v594, v595);

                    outlined destroy of Pregnancy?(v882);

                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    v589 = v588;
                    v590 = v592;
                    return v589;
                  }

                  goto LABEL_113;
                }

LABEL_112:
                __break(1u);
LABEL_113:
                __break(1u);
                v365 = v593;
                v366 = 0;
                outlined consume of Data._Representation(v594, v595);

                outlined destroy of Pregnancy?(v882);

                v634 = v365;
                v635 = v366;
                goto LABEL_101;
              }

              lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
              v584 = 0;
              v585 = swift_allocError();
              *v243 = 91;
              swift_willThrow();
              v586 = v584;

              outlined destroy of Pregnancy?(v882);

              v634 = v585;
              v635 = v586;
LABEL_101:
              v341 = v815;
              v388 = v635;
              v549 = v634;
              v342 = v634;
              v913 = v549;
              v343 = Logging.default.unsafeMutableAddressor();
              v569 = *(v814 + 16);
              v568 = (v814 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
              v569(v341, v343, v812);
              v344 = v549;
              v396 = 7;
              v394 = swift_allocObject();
              *(v394 + 16) = v549;
              default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

              v406 = Logger.logObject.getter();
              v389 = v406;
              v405 = static os_log_type_t.error.getter();
              v390 = v405;
              v391 = 17;
              v400 = swift_allocObject();
              v392 = v400;
              *(v400 + 16) = 64;
              v401 = swift_allocObject();
              v393 = v401;
              *(v401 + 16) = 8;
              v395 = 32;
              v345 = swift_allocObject();
              v346 = v394;
              v397 = v345;
              *(v345 + 16) = partial apply for implicit closure #2 in NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:);
              *(v345 + 24) = v346;
              v347 = swift_allocObject();
              v348 = v397;
              v398 = v347;
              *(v347 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:);
              *(v347 + 24) = v348;
              v349 = swift_allocObject();
              v350 = v398;
              v404 = v349;
              v399 = v349;
              *(v349 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:);
              *(v349 + 24) = v350;
              v402 = _allocateUninitializedArray<A>(_:)();
              v403 = v351;

              v352 = v400;
              v353 = v403;
              *v403 = partial apply for closure #1 in OSLogArguments.append(_:);
              v353[1] = v352;

              v354 = v401;
              v355 = v403;
              v403[2] = partial apply for closure #1 in OSLogArguments.append(_:);
              v355[3] = v354;

              v356 = v403;
              v357 = v404;
              v403[4] = partial apply for closure #1 in OSLogArguments.append(_:);
              v356[5] = v357;
              _finalizeUninitializedArray<A>(_:)();

              if (os_log_type_enabled(v406, v405))
              {
                v385 = v388;
                v380 = static UnsafeMutablePointer.allocate(capacity:)();
                v377 = v380;
                v378 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd);
                v383 = 1;
                v381 = createStorage<A>(capacity:type:)(1);
                v379 = v381;
                v382 = createStorage<A>(capacity:type:)(0);
                v909[0] = v380;
                v908 = v381;
                v907 = v382;
                v384 = v909;
                serialize(_:at:)(2, v909);
                serialize(_:at:)(v383, v384);
                v358 = v385;
                v905 = partial apply for closure #1 in OSLogArguments.append(_:);
                v906 = v392;
                closure #1 in osLogInternal(_:log:type:)(&v905, v384, &v908, &v907);
                v386 = v358;
                v387 = v358;
                if (v358)
                {
                  v375 = 0;

                  __break(1u);
                }

                else
                {
                  v905 = partial apply for closure #1 in OSLogArguments.append(_:);
                  v906 = v393;
                  closure #1 in osLogInternal(_:log:type:)(&v905, v909, &v908, &v907);
                  v373 = 0;
                  v374 = 0;
                  v905 = partial apply for closure #1 in OSLogArguments.append(_:);
                  v906 = v399;
                  closure #1 in osLogInternal(_:log:type:)(&v905, v909, &v908, &v907);
                  v371 = 0;
                  v372 = 0;
                  _os_log_impl(&dword_25C4D8000, v389, v390, "Error executing Morpheus program for train: %@.", v377, 0xCu);
                  destroyStorage<A>(_:count:)(v379, 1, v378);
                  destroyStorage<A>(_:count:)(v382, 0, MEMORY[0x277D84F70] + 8);
                  MEMORY[0x25F8899D0](v377, MEMORY[0x277D84B78]);

                  v376 = v371;
                }
              }

              else
              {

                v376 = v388;
              }

              v553 = v376;

              v726(v815, v812);
              if ((HyperParams.trainingFallbackToNative.getter() & 1) == 0)
              {
                v359 = v549;
                v369 = _convertErrorToNSError(_:)();
                v370 = [v369 code];

                NightingaleDPFLRunner.sendLocation(_:_:)(NightingaleTraining_NightingaleDReachLocation_trainingCompleted, v370);
                swift_willThrow();

                outlined destroy of [(start: UInt32, end: UInt32)]();
                result = v549;
                v410 = v549;
                return result;
              }

              v247 = v817;
              v248 = Logging.default.unsafeMutableAddressor();
              v569(v247, v248, v812);
              v573 = Logger.logObject.getter();
              v570 = v573;
              v572 = static os_log_type_t.info.getter();
              v571 = v572;
              v574 = _allocateUninitializedArray<A>(_:)();
              if (os_log_type_enabled(v573, v572))
              {
                v566 = v553;
                v558 = static UnsafeMutablePointer.allocate(capacity:)();
                v554 = v558;
                v555 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd);
                v556 = 0;
                v559 = createStorage<A>(capacity:type:)(0);
                v557 = v559;
                v560 = createStorage<A>(capacity:type:)(v556);
                v912 = v558;
                v911 = v559;
                v910 = v560;
                v561 = 0;
                v562 = &v912;
                serialize(_:at:)(0, &v912);
                serialize(_:at:)(v561, v562);
                v909[1] = v574;
                v563 = &v360;
                MEMORY[0x28223BE20](&v360);
                v564 = &v360 - 6;
                *(&v360 - 4) = v249;
                *(&v360 - 3) = &v911;
                *(&v360 - 2) = &v910;
                v565 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd);
                lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
                v250 = v566;
                Sequence.forEach(_:)();
                v567 = v250;
                if (v250)
                {
                  __break(1u);
                }

                else
                {
                  _os_log_impl(&dword_25C4D8000, v570, v571, "Fallback to use native train.", v554, 2u);
                  v551 = 0;
                  destroyStorage<A>(_:count:)(v557, 0, v555);
                  destroyStorage<A>(_:count:)(v560, v551, MEMORY[0x277D84F70] + 8);
                  MEMORY[0x25F8899D0](v554, MEMORY[0x277D84B78]);

                  v552 = v567;
                }
              }

              else
              {

                v552 = v553;
              }

              v550 = v552;

              v726(v817, v812);

              v771 = v550;
              goto LABEL_80;
            }

LABEL_111:
            __break(1u);
            goto LABEL_112;
          }
        }

        lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
        v575 = 0;
        v576 = swift_allocError();
        *v246 = 86;
        swift_willThrow();
        v577 = v575;
        outlined destroy of Pregnancy?(v882);

        v634 = v576;
        v635 = v577;
        goto LABEL_101;
      }

      v771 = v758;
    }

    else
    {
      v771 = v778;
    }

LABEL_80:
    v548 = v771;
    goto LABEL_82;
  }

  v548 = v782;
LABEL_82:
  v508 = v548;
  v542 = HyperParams.labelName.getter();
  v541 = v251;
  v509 = v542;
  v510 = v251;
  v958 = v542;
  v959 = v251;
  v511 = HyperParams.lossName.getter();
  v512 = v252;
  v956 = v511;
  v957 = v252;
  v513 = HyperParams.outputName.getter();
  v514 = v253;
  v954 = v513;
  v955 = v253;
  v540 = &v971;
  outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(&v971, v953);
  v516 = MEMORY[0x25F8895B0](v788, MEMORY[0x277D83A90]);
  v515 = v516;
  v952 = v516;

  v254 = HyperParams.batchSize.getter();
  v517 = static HIDPFLUtils.computeEffectiveTrainingSize(_:_:)(v516, v254);
  v518 = v255;
  v951 = v517;
  v950 = v255;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SaySfGtMd);
  v519 = _allocateUninitializedArray<A>(_:)();
  v520 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd);
  v949._rawValue = Dictionary.init(dictionaryLiteral:)();
  v521 = HyperParams.isDaySHRRequired()();
  v522 = *HyperParams.nightingaleDInputDaySHR10.unsafeMutableAddressor();

  v537 = &v949;
  transferFeatureToMLInputs(required:feature:stats:name:mlInputs:)(v521, v783, v806, v522, &v949);

  v523 = HyperParams.isNightSHRRequired()();
  v524 = *HyperParams.nightingaleDInputNightSHR10.unsafeMutableAddressor();

  transferFeatureToMLInputs(required:feature:stats:name:mlInputs:)(v523, v805, v804, v524, v537);

  v525 = HyperParams.isPSMRequired()();
  v526 = *HyperParams.nightingaleDInputPeriodStartMean.unsafeMutableAddressor();

  transferFeatureToMLInputs(required:feature:stats:name:mlInputs:)(v525, v803, v802, v526, v537);

  v527 = HyperParams.isPSSRequired()();
  v528 = *HyperParams.nightingaleDInputPeriodStartStd.unsafeMutableAddressor();

  transferFeatureToMLInputs(required:feature:stats:name:mlInputs:)(v527, v801, v800, v528, v537);

  v529 = HyperParams.isSWTRequired()();
  v530 = *HyperParams.nightingaleDInputAppleSleepingWristTemperature.unsafeMutableAddressor();

  transferFeatureToMLInputs(required:feature:stats:name:mlInputs:)(v529, v797, v796, v530, v537);

  PeriodStart = HyperParams.isDaysSinceLastPeriodStartRequired()();
  v532 = *HyperParams.nightingaleDInputDaysSinceLMS.unsafeMutableAddressor();

  transferFeatureToMLInputs(required:feature:stats:name:mlInputs:)(PeriodStart, v799, v798, v532, v537);

  v533 = HyperParams.isHRVRequired()();
  v534 = *HyperParams.nightingaleDInputHRV.unsafeMutableAddressor();

  transferFeatureToMLInputs(required:feature:stats:name:mlInputs:)(v533, v795, v794, v534, v537);

  v535 = HyperParams.isRespiratoryRateRequired()();
  v536 = *HyperParams.nightingaleDInputRespiratoryRate.unsafeMutableAddressor();

  transferFeatureToMLInputs(required:feature:stats:name:mlInputs:)(v535, v793, v792, v536, v537);

  v256 = HyperParams.isSpO2Required()();
  v257 = v537;
  v538 = v256;
  v539 = *HyperParams.nightingaleDInputSpO2.unsafeMutableAddressor();

  transferFeatureToMLInputs(required:feature:stats:name:mlInputs:)(v538, v791, v790, v539, v257);

  outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v540, v948);
  v947[7] = v788;
  v947[5] = v542;
  v947[6] = v541;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSaySfGGMd);
  Dictionary.subscript.setter();

  v543 = HyperParams.modelRepresentation.getter();
  v546 = v258;
  v259 = HyperParams.modelRepresentationEIR.unsafeMutableAddressor();
  v544 = *v259;
  v545 = *(v259 + 1);

  v547 = MEMORY[0x25F889340](v543, v546, v544, v545);

  if (v547)
  {
    v507 = type metadata accessor for EspressoEIRTrainer();
    NightingaleDPFLRunner.performanceMeasure.getter();
    v260 = EspressoEIRTrainer.__allocating_init(_:)();
    v918[3] = v507;
    v918[4] = MEMORY[0x277D413C0];
    v918[0] = v260;
    outlined init with take of HealthDataQuery(v918, v947);
  }

  else
  {
    v506 = type metadata accessor for EspressoMILTrainer();
    NightingaleDPFLRunner.performanceMeasure.getter();
    v261 = EspressoMILTrainer.__allocating_init(_:)();
    v946[3] = v506;
    v946[4] = MEMORY[0x277D413D0];
    v946[0] = v261;
    outlined init with take of HealthDataQuery(v946, v947);
  }

  v262 = HyperParams.evalBeforeTrain.getter();
  v505 = v262;
  *(v847 + 152) = v262 & 1;
  if (v262)
  {
    v503 = _allocateUninitializedArray<A>(_:)();
    v502 = v263;
    static EspressoFunction.evaluation.getter();
    static EspressoFunction.training.getter();
    v264 = v503;
    _finalizeUninitializedArray<A>(_:)();
    v504 = v264;
    lazy protocol witness table accessor for type EspressoFunction and conformance EspressoFunction();
    SetAlgebra<>.init(arrayLiteral:)();
  }

  else
  {
    static EspressoFunction.training.getter();
  }

  v499 = v508;
  v493 = v844 + 24;
  v494 = 32;
  v492 = v945;
  v497 = 0;
  swift_beginAccess();
  v491 = *(v844 + 24);

  swift_endAccess();
  v495 = &v944;
  swift_beginAccess();
  v496 = *(v844 + 24);

  swift_endAccess();
  v943 = v496;
  v498 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
  v265 = lazy protocol witness table accessor for type [String] and conformance [A]();
  v266 = v499;
  v268 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #5 in NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:), v497, v498, MEMORY[0x277D837D0], MEMORY[0x277D84A98], v265, MEMORY[0x277D84AC0], v267);
  v500 = v266;
  v501 = v268;
  if (v266)
  {
    __break(1u);
    goto LABEL_115;
  }

  v471 = v501;
  v485 = 0;
  outlined destroy of [(start: UInt32, end: UInt32)]();
  v480 = MEMORY[0x277D837D0];
  v476 = static Array.+ infix(_:_:)();

  v472 = _allocateUninitializedArray<A>(_:)();
  v473 = v269;

  v270 = v472;
  v271 = v473;
  v272 = v510;
  *v473 = v509;
  v271[1] = v272;
  _finalizeUninitializedArray<A>(_:)();
  v474 = v270;
  v483 = static Array.+ infix(_:_:)();
  v475 = v483;

  v942 = v483;
  v477 = v939;
  outlined init with copy of HealthDataQuery(v947, v939);
  v486 = v940;
  v487 = v941;
  v482 = __swift_project_boxed_opaque_existential_1(v477, v940);
  v478 = _allocateUninitializedArray<A>(_:)();
  v479 = v273;

  v274 = v512;
  v275 = v479;
  *v479 = v511;
  v275[1] = v274;

  v276 = v478;
  v277 = v479;
  v278 = v514;
  v479[2] = v513;
  v277[3] = v278;
  _finalizeUninitializedArray<A>(_:)();
  v484 = v276;
  v481 = v276;
  v279 = HyperParams.weightNames.getter();
  v280 = v485;
  v488 = v279;
  dispatch thunk of EspressoTrainer.load(path:functions:inputs:outputs:weights:)();
  v489 = v280;
  v490 = v280;
  if (v280)
  {
LABEL_115:
    v364 = v490;

    __swift_destroy_boxed_opaque_existential_1(v939);

    (*(v809 + 8))(v810, v807);
    __swift_destroy_boxed_opaque_existential_1(v947);
    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    result = v364;
    v410 = v364;
    return result;
  }

  v466 = 0;

  __swift_destroy_boxed_opaque_existential_1(v939);
  v464 = v936;
  outlined init with copy of HealthDataQuery(v947, v936);
  v467 = v937;
  v468 = v938;
  v465 = __swift_project_boxed_opaque_existential_1(v464, v937);
  v281 = HyperParams.learningRate.getter();
  v282 = v466;
  v935 = v281;
  *(v847 + 4) = 0;
  dispatch thunk of EspressoTrainer.finalize(batchSize:learningRate:)();
  v469 = v282;
  v470 = v282;
  if (v282)
  {
    v363 = v470;
    __swift_destroy_boxed_opaque_existential_1(v936);

    (*(v809 + 8))(v810, v807);
    __swift_destroy_boxed_opaque_existential_1(v947);
    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    result = v363;
    v410 = v363;
    return result;
  }

  v458 = 0;
  __swift_destroy_boxed_opaque_existential_1(v936);
  v283 = v458;
  v460 = v949._rawValue;
  v459 = v949._rawValue;

  v461 = &v360;
  MEMORY[0x28223BE20](&v360);
  *(&v360 - 2) = v284;
  v285 = Dictionary.mapValues<A>(_:)();
  v462 = v283;
  v463 = v285;
  if (v283)
  {
    __break(1u);
    goto LABEL_118;
  }

  v286 = v844;
  v451 = v463;
  v455 = 0;

  v934 = v451;
  v453 = &v932;
  v445 = &v932;
  v446 = &v933;
  v447 = &v933 + 1;

  outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(&v971, v931);

  v287 = v971;
  v288 = v972;
  v289 = v973;
  v290 = v974;
  v291 = v975;
  v292 = v976;
  v293 = v985;
  v449 = v986;
  v450 = v987;
  v448 = &v360;
  v294 = MEMORY[0x28223BE20](v984);
  v295 = v786;
  v296 = v785;
  v297 = v449;
  v298 = v450;
  v299 = v841;
  v452 = &v360;
  v300 = &v360 - 38;
  v454 = &v360 - 38;
  *(v300 + 16) = v301 & 1;
  v300[3] = v947;
  v300[4] = &v949;
  v300[5] = v451;
  v302 = v452;
  *(v452 - 32) = v515;
  *(v302 - 31) = v511;
  *(v302 - 30) = v512;
  *(v302 - 29) = v513;
  *(v302 - 28) = v514;
  v303 = v784;
  *(v302 - 27) = v299;
  *(v302 - 26) = v286;
  *(v302 - 25) = v287;
  *(v302 - 24) = v288;
  *(v302 - 23) = v289;
  *(v302 - 22) = v290;
  *(v302 - 21) = v291;
  *(v302 - 20) = v292;
  *(v302 - 19) = v304;
  *(v302 - 18) = v305;
  *(v302 - 17) = v306;
  *(v302 - 16) = v307;
  *(v302 - 15) = v308;
  *(v302 - 14) = v309;
  *(v302 - 13) = v310;
  *(v302 - 12) = v294;
  *(v302 - 11) = v293;
  *(v302 - 10) = v297;
  *(v302 - 9) = v298;
  *(v302 - 8) = v311;
  *(v302 - 7) = v312;
  *(v302 - 6) = v313;
  *(v302 - 5) = v314;
  *(v302 - 4) = v295;
  *(v302 - 3) = v296;
  *(v302 - 4) = v303;
  *(v302 - 1) = &v960;
  v315 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfG_S2ftMd);
  v316 = v455;
  NightingaleDPFLRunner.sendLocation<A>(location:force:work:)(11, 1, v454, v315, v453);
  v456 = v316;
  v457 = v316;
  if (v316)
  {
LABEL_118:
    v362 = v457;

    outlined destroy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])();

    (*(v809 + 8))(v810, v807);
    __swift_destroy_boxed_opaque_existential_1(v947);
    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    result = v362;
    v410 = v362;
    return result;
  }

  v443 = 0;

  outlined destroy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])();

  v442 = *v445;
  v435 = v442;
  v436 = *v446;
  v437 = *v447;
  v930 = v442;
  v929 = v436;
  v928 = v437;
  v440 = NightingaleDPFLRunner.performanceMeasure.getter();
  v438 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Training", 8uLL, 1)._object;
  dispatch thunk of PerformanceMeasure.finish(_:)();
  v441 = v317;
  v439 = v317;

  v318 = v443;
  v927 = v441;
  _sSa23withUnsafeBufferPointeryqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #2 in NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:), 0, v442, MEMORY[0x277D83A90], MEMORY[0x277CC9318], MEMORY[0x277D84A98], MEMORY[0x277D84AC0], v319);
  v444 = v318;
  if (v318)
  {
    __break(1u);
  }

  else
  {
    v433 = v925;
    v434 = v926;
    v923 = v925;
    v924 = v926;
    if (HyperParams.collectL2Norm.getter())
    {
      v320 = NightingaleDPFLRunner.keyMetricsL2Norm.unsafeMutableAddressor();
      v431 = *v320;
      v432 = *(v320 + 1);

      static PFLStats.l2Norm(_:)();
      v920 = MEMORY[0x277D83A90];
      v919 = v321;
      v918[5] = v431;
      v918[6] = v432;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd);
      Dictionary.subscript.setter();
    }

    v428 = v444;
    v417 = NightingaleDPFLRunner.performanceMeasure.getter();
    v416 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PluginE2E", 9uLL, 1)._object;
    dispatch thunk of PerformanceMeasure.finish(_:)();
    v420 = v322;

    v922 = v420;
    v426 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd);
    v427 = _allocateUninitializedArray<A>(_:)();
    v425 = v323;
    v324 = NightingaleDPFLRunner.keyMetricsTrainingDurationS.unsafeMutableAddressor();
    outlined init with copy of String(v324, v425);
    v325 = v439;
    v326 = v425;
    v419 = MEMORY[0x277D839F8];
    v425[5] = MEMORY[0x277D839F8];
    v326[2] = v325;
    v418 = v326 + 6;
    v327 = NightingaleDPFLRunner.keyMetricsE2EDurationS.unsafeMutableAddressor();
    outlined init with copy of String(v327, v418);
    v328 = v420;
    v329 = v425;
    v425[11] = v419;
    v329[8] = v328;
    v421 = v329 + 12;
    v330 = NightingaleDPFLRunner.keyMetricsLoss.unsafeMutableAddressor();
    outlined init with copy of String(v330, v421);
    v331 = v436;
    v332 = v425;
    v424 = MEMORY[0x277D83A90];
    v425[17] = MEMORY[0x277D83A90];
    *(v332 + 28) = v331;
    v422 = v332 + 18;
    v333 = NightingaleDPFLRunner.keyNumSlices.unsafeMutableAddressor();
    outlined init with copy of String(v333, v422);
    v334 = v517;
    v335 = v425;
    v425[23] = MEMORY[0x277D83B88];
    v335[20] = v334;
    v423 = v335 + 24;
    v336 = NightingaleDPFLRunner.keyMetricsLossBeforeTraining.unsafeMutableAddressor();
    outlined init with copy of String(v336, v423);
    v337 = v425;
    v338 = v437;
    v425[29] = v424;
    *(v337 + 52) = v338;
    _finalizeUninitializedArray<A>(_:)();
    v429 = Dictionary.init(dictionaryLiteral:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd);
    v339 = v428;
    Dictionary.merge(_:uniquingKeysWith:)();
    v430 = v339;
    if (!v339)
    {
      v413 = &v360;
      MEMORY[0x28223BE20](&v360);
      *(&v360 - 2) = &v960;
      NightingaleDPFLRunner.sendLocation<A>(location:force:work:)(12, 1, (&v360 - 4), MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
      v414 = 0;
      v415 = 0;
      type metadata accessor for PFLTaskResult();
      v411 = v960;

      outlined copy of Data._Representation(v433, v434);
      v412 = PFLTaskResult.__allocating_init(json:vector:)();
      v921 = v412;
      outlined consume of Data._Representation(v433, v434);

      (*(v809 + 8))(v810, v807);
      __swift_destroy_boxed_opaque_existential_1(v947);
      outlined destroy of [(start: UInt32, end: UInt32)]();

      outlined destroy of [(start: UInt32, end: UInt32)]();
      v589 = v412;
      v590 = v414;
      return v589;
    }
  }

  __break(1u);
  v361 = v415;
  outlined consume of Data._Representation(v433, v434);

  (*(v809 + 8))(v810, v807);
  __swift_destroy_boxed_opaque_existential_1(v947);
  outlined destroy of [(start: UInt32, end: UInt32)]();

  outlined destroy of [(start: UInt32, end: UInt32)]();
  return v361;
}

uint64_t key path getter for NSNumber.floatValue : NSNumber@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = *a1;
  MEMORY[0x277D82BE0](*a1);
  [v4 floatValue];
  *a2 = v2;
  return MEMORY[0x277D82BD8](v4);
}

uint64_t implicit closure #1 in NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:)(void *a1)
{
  v2 = *a1;
  MEMORY[0x277D82BE0](*a1);

  swift_getAtKeyPath();
  MEMORY[0x277D82BD8](v2);
}

uint64_t closure #2 in NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = MEMORY[0x25F888AA0](a1, a2, MEMORY[0x277D83A90]);
  *a3 = result;
  a3[1] = v4;
  return result;
}

uint64_t _sSa23withUnsafeBufferPointeryqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = a6;
  v19 = a8;
  v27 = a4;
  v26 = a5;
  v25 = a6;
  v20 = *(a6 - 8);
  v21 = a6 - 8;
  v22 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x28223BE20](a1);
  v23 = &v18 - v22;
  result = _ss12_ArrayBufferV010withUnsafeB7Pointeryqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(v9, v10, v11, v12, v13, v14, v15, &v18 - v22, v16);
  v24 = v8;
  if (v8)
  {
    return (*(v20 + 32))(v19, v23, v18);
  }

  return result;
}

uint64_t closure #4 in NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:)()
{

  static HIDPFLUtils.checkMetrics(_:)();
}

Swift::Void __swiftcall transferFeatureToMLInputs(required:feature:stats:name:mlInputs:)(Swift::Bool required, Swift::OpaquePointer feature, Swift::OpaquePointer stats, Swift::String name, Swift::OpaquePointer *mlInputs)
{
  if (required)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSaySfGGMd);
    Dictionary.subscript.setter();
    v8 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v9 = v5;
    countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x25F889DE0](countAndFlagsBits);

    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("_stats", 6uLL, 1)._countAndFlagsBits;
    MEMORY[0x25F889DE0](v7);

    outlined destroy of DefaultStringInterpolation();
    MEMORY[0x25F889320](v8, v9);

    Dictionary.subscript.setter();
  }
}

uint64_t closure #5 in NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:)@<X0>(uint64_t *a1@<X8>)
{
  v7 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v8 = v1;
  countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x25F889DE0](countAndFlagsBits);

  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("_stats", 6uLL, 1)._countAndFlagsBits;
  MEMORY[0x25F889DE0](v3);

  outlined destroy of DefaultStringInterpolation();
  result = MEMORY[0x25F889320](v7, v8);
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t closure #6 in NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:)@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  result = MEMORY[0x25F8895B0]();
  v5 = result;
  if (!a1)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (v5 == 0x8000000000000000 && a1 == -1)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  *a2 = v5 / a1;
  return result;
}

uint64_t *closure #7 in NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:)@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, float *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, unsigned int a16, uint64_t a17)
{
  v188 = a9;
  v226 = a1;
  v212 = a2;
  v202 = a3;
  v203 = a4;
  v204 = a5;
  v205 = a6;
  v206 = a7;
  v207 = a8;
  v208 = a10;
  v209 = a11;
  v210 = a12;
  v189 = a13;
  v221 = a14;
  v222 = a15;
  v223 = a16;
  v211 = a17;
  v191 = closure #37 in NightingaleDPFLRunner.run(task:useCase:context:);
  v192 = "Fatal error";
  v193 = "Negative value is not representable";
  v194 = "Swift/Integers.swift";
  v195 = "Not enough bits to represent the passed value";
  v287 = 0;
  v286 = 0;
  v285 = 0;
  v284 = 0;
  v283 = 0;
  v281 = 0;
  v282 = 0;
  v279 = 0;
  v280 = 0;
  v278 = 0;
  v277 = 0;
  v276 = 0;
  v275 = 0;
  v274 = 0;
  v273 = 0;
  v272 = 0.0;
  v271 = 0;
  v270 = 0;
  v260 = 0;
  v257 = 0;
  v256 = 0;
  v246 = 0;
  v244 = 0;
  v245 = 0;
  v238 = 0;
  v237 = 0;
  v234 = 0.0;
  v231 = 0;
  v17 = a13[1];
  v18 = a13[2];
  v19 = a13[3];
  v20 = a13[4];
  v21 = a13[5];
  v22 = a13[6];
  v23 = a13[7];
  v24 = a13[8];
  v25 = a13[9];
  v26 = a13[10];
  v27 = a13[11];
  v28 = a13[12];
  v29 = a13[13];
  v30 = a13[14];
  v31 = a13[15];
  v32 = a13[16];
  v33 = a13[17];
  v34 = a13[18];
  v35 = a13[19];
  v36 = a13[20];
  v288 = *a13;
  v289 = v17;
  v290 = v18;
  v291 = v19;
  v292 = v20;
  v293 = v21;
  v294 = v22;
  v295 = v23;
  v296 = v24;
  v297 = v25;
  v298 = v26;
  v299 = v27;
  v300 = v28;
  v301 = v29;
  v302 = v30;
  v303 = v31;
  v304 = v32;
  v305 = v33;
  v306 = v34;
  v307 = v35;
  v308 = v36;
  v196 = 0;
  v197 = type metadata accessor for ShuffleMethod();
  v198 = *(v197 - 8);
  v199 = v197 - 8;
  v200 = (*(v198 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v201 = &v69 - v200;
  v213 = type metadata accessor for EspressoFunction();
  v214 = *(v213 - 8);
  v215 = v213 - 8;
  v219 = *(v214 + 64);
  v216 = (v219 + 15) & 0xFFFFFFFFFFFFFFF0;
  v37 = MEMORY[0x28223BE20](v226);
  v217 = &v69 - v216;
  v218 = (v219 + 15) & 0xFFFFFFFFFFFFFFF0;
  v38 = MEMORY[0x28223BE20](v37);
  v220 = &v69 - v218;
  v224 = (v219 + 15) & 0xFFFFFFFFFFFFFFF0;
  v39 = MEMORY[0x28223BE20](v38);
  v225 = &v69 - v224;
  v287 = v39 & 1;
  v286 = v40;
  v285 = v41;
  v284 = v42;
  v283 = v43;
  v281 = v44;
  v282 = v45;
  v279 = v46;
  v280 = v47;
  v278 = v48;
  v277 = v49;
  v276 = v221;
  v275 = v222;
  v274 = v223;
  v273 = v50;
  v272 = 0.0;
  v271 = Array.init()();
  if (v226)
  {
    v181 = v247;
    outlined init with copy of HealthDataQuery(v212, v247);
    v183 = v248;
    v184 = v249;
    __swift_project_boxed_opaque_existential_1(v181, v248);
    v51 = v190;
    v182 = *v202;

    v52 = dispatch thunk of EspressoTrainer.eval(_:featureSizes:numSamples:)();
    v185 = v51;
    v186 = v52;
    v187 = v51;
    if (v51)
    {
      v73 = v187;

      __swift_destroy_boxed_opaque_existential_1(v247);
      result = &v271;
      outlined destroy of [(start: UInt32, end: UInt32)]();
      v150 = v73;
      return result;
    }

    v175 = v186;

    v246 = v175;
    __swift_destroy_boxed_opaque_existential_1(v247);

    v243 = v175;
    v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDySSSaySfGGGMd);
    lazy protocol witness table accessor for type [[String : [Float]]] and conformance [A]();
    Collection<>.makeIterator()();
    v177 = 0.0;
    v178 = 0.0;
    v179 = 0.0;
    for (i = v185; ; i = v168)
    {
      v168 = i;
      v169 = v179;
      v171 = v178;
      v170 = v177;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySDySSSaySfGGGGMd);
      IndexingIterator.next()();
      v172 = v242;
      v173 = v170;
      v174 = v171;
      if (!v242)
      {
        break;
      }

      v167 = v172;
      v160 = v172;
      v237 = v172;

      v162 = v235;
      v235[0] = v205;
      v235[1] = v206;
      v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd);
      MEMORY[0x25F8891D0](&v236, v162, v160, MEMORY[0x277D837D0]);
      outlined destroy of DefaultStringInterpolation();
      v163 = v236;
      if (v236)
      {
        v159 = v163;
        v154 = v163;
        v229 = v163;
        lazy protocol witness table accessor for type [Float] and conformance [A]();
        Collection.first.getter();
        v156 = v227;
        v155 = v228;

        v157 = v156;
        v158 = v155;
      }

      else
      {
        v157 = 0.0;
        v158 = 1;
      }

      v152 = v157;
      v153 = v160;
      if (v158)
      {
        v148 = v153;
        lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
        v149 = swift_allocError();
        *v53 = 10;
        swift_willThrow();

        outlined destroy of [(start: UInt32, end: UInt32)]();

        outlined destroy of [(start: UInt32, end: UInt32)]();
        result = v149;
        v150 = v149;
        return result;
      }

      v151 = v152;
      v234 = v152;
      v144 = v169 + v152;
      v272 = v169 + v152;

      v145 = v232;
      v232[0] = v207;
      v232[1] = v208;
      MEMORY[0x25F8891D0](&v233);
      outlined destroy of DefaultStringInterpolation();
      v146 = v233;
      v147 = v160;
      if (!v233)
      {
        v141 = v147;
        lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
        v142 = swift_allocError();
        *v55 = 26;
        swift_willThrow();

        outlined destroy of [(start: UInt32, end: UInt32)]();

        outlined destroy of [(start: UInt32, end: UInt32)]();
        result = v142;
        v150 = v142;
        return result;
      }

      v143 = v146;
      v140 = v146;
      v231 = v146;

      v139 = &v230;
      v230 = v140;
      lazy protocol witness table accessor for type [Float] and conformance [A]();
      Array.append<A>(contentsOf:)();

      v177 = v144;
      v178 = v144;
      v179 = v144;
    }

    v164 = v174;
    v165 = v173;
    outlined destroy of [(start: UInt32, end: UInt32)]();
    v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSaySfGGMd);
    if (MEMORY[0x25F8895B0](v175) > 0)
    {
      v56 = MEMORY[0x25F8895B0](v175, v166);
      v272 = v164 / v56;
      v138 = v272;
    }

    else
    {
      v138 = v165;
    }

    v127 = v138;
    v130 = v239;
    outlined init with copy of HealthDataQuery(v212, v239);
    v128 = v240;
    v129 = v241;
    __swift_project_boxed_opaque_existential_1(v130, v240);
    static EspressoFunction.evaluation.getter();
    dispatch thunk of EspressoTrainer.unload(functions:)();
    (*(v214 + 8))(v225, v213);
    __swift_destroy_boxed_opaque_existential_1(v130);
    v131 = v271;

    v132 = v307;
    v133 = v306;
    v57 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
    v58 = v168;
    object = v57._object;
    v59 = static NightingaleDMetricsProcessor.generateMetrics(task:hyperParams:outputs:labels:historicalPeriods:sliceEndDays:pregnancies:today:metricPrefix:)(v209, v210, v131, v132, v221, v133, v222, v223, v57._countAndFlagsBits, v57._object);
    v135 = v58;
    v136 = v59;
    v137 = v58;
    if (v58)
    {
      v72 = v137;

      result = &v271;
      outlined destroy of [(start: UInt32, end: UInt32)]();
      v150 = v72;
      return result;
    }

    v125 = v136;

    v238 = v125;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd);
    v60 = v135;
    Dictionary.merge(_:uniquingKeysWith:)();
    v126 = v60;
    if (v60)
    {
      __break(1u);
      goto LABEL_41;
    }

    v123 = v127;
    v124 = v126;
  }

  else
  {
    v123 = 0.0;
    v124 = v190;
  }

  v117 = v124;
  v115 = v123;
  v116 = v267;
  outlined init with copy of HealthDataQuery(v212, v267);
  v118 = v268;
  v119 = v269;
  __swift_project_boxed_opaque_existential_1(v116, v268);
  static EspressoFunction.training.getter();
  v61 = v117;
  v62 = dispatch thunk of EspressoTrainer.extractWeights(function:)();
  v120 = v61;
  v121 = v62;
  v122 = v61;
  if (v61)
  {
LABEL_41:
    v71 = v122;
    (*(v214 + 8))(v220, v213);
    __swift_destroy_boxed_opaque_existential_1(v267);
    result = &v271;
    outlined destroy of [(start: UInt32, end: UInt32)]();
    v150 = v71;
    return result;
  }

  v108 = v121;
  v106 = *(v214 + 8);
  v107 = v214 + 8;
  v106(v220, v213);
  v270 = v108;
  __swift_destroy_boxed_opaque_existential_1(v267);
  v109 = v264;
  outlined init with copy of HealthDataQuery(v212, v264);
  v110 = v265;
  v111 = v266;
  v112 = __swift_project_boxed_opaque_existential_1(v109, v265);
  v113 = *v202;

  v114 = HyperParams.epochs.getter();
  if (v114 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (v114 > 0xFFFFFFFFLL)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v103 = v114;
    HyperParams.inputShuffleMethod.getter(v201);
    HyperParams.fullBatchTraining.getter();
    v63 = v120;
    dispatch thunk of EspressoTrainer.train(_:featureSizes:numSamples:epochs:shuffleMethod:fullBatch:)();
    v104 = v63;
    v105 = v63;
    if (v63)
    {
      v70 = v105;
      (*(v198 + 8))(v201, v197);

      __swift_destroy_boxed_opaque_existential_1(v264);
      outlined destroy of [(start: UInt32, end: UInt32)]();
      result = &v271;
      outlined destroy of [(start: UInt32, end: UInt32)]();
      v150 = v70;
      return result;
    }
  }

  (*(v198 + 8))(v201, v197);

  __swift_destroy_boxed_opaque_existential_1(v264);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd);
  v98 = MEMORY[0x277D837D0];
  v100 = MEMORY[0x277D837E0];
  v93 = default argument 0 of Dictionary.removeAll(keepingCapacity:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSaySfGGMd);
  Dictionary.removeAll(keepingCapacity:)(v93 & 1);
  v96 = v261;
  outlined init with copy of HealthDataQuery(v212, v261);
  v94 = v262;
  v95 = v263;
  __swift_project_boxed_opaque_existential_1(v96, v262);
  static EspressoFunction.training.getter();
  v97 = dispatch thunk of EspressoTrainer.extractOutputs(function:)();
  v106(v225, v213);
  v260 = v97;
  __swift_destroy_boxed_opaque_existential_1(v96);

  v101 = v258;
  v258[0] = v205;
  v258[1] = v206;
  MEMORY[0x25F8891D0](&v259);
  outlined destroy of DefaultStringInterpolation();
  v102 = v259;
  if (v259)
  {
    v92 = v102;
    v87 = v102;
    v252 = v102;
    lazy protocol witness table accessor for type [Float] and conformance [A]();
    Collection.first.getter();
    v89 = v250;
    v88 = v251;

    v90 = v89;
    v91 = v88;
  }

  else
  {
    v90 = 0;
    v91 = 1;
  }

  v86 = v90;
  if (v91)
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v84 = swift_allocError();
    *v64 = 10;
    swift_willThrow();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    result = v84;
    v150 = v84;
  }

  else
  {
    v85 = v86;
    v77 = v86;
    v257 = v86;
    v78 = v253;
    outlined init with copy of HealthDataQuery(v212, v253);
    v79 = v254;
    v80 = v255;
    __swift_project_boxed_opaque_existential_1(v78, v254);
    static EspressoFunction.training.getter();
    v65 = v104;
    v66 = dispatch thunk of EspressoTrainer.extractWeights(function:)();
    v81 = v65;
    v82 = v66;
    v83 = v65;
    if (v65)
    {
      v69 = v83;
      v106(v217, v213);
      __swift_destroy_boxed_opaque_existential_1(v253);
    }

    else
    {
      v74 = v82;
      v106(v217, v213);
      v75 = &v256;
      v256 = v74;
      __swift_destroy_boxed_opaque_existential_1(v253);
      v76 = &v270;
      static HIDPFLUtils.inplaceSub(_:_:)(v75);
      outlined init with copy of [Float](v75, v188);
      v67 = v188;
      v68 = v115;
      *(v188 + 2) = v77;
      v67[3] = v68;
      outlined destroy of [(start: UInt32, end: UInt32)]();
    }

    outlined destroy of [(start: UInt32, end: UInt32)]();
    result = &v271;
    outlined destroy of [(start: UInt32, end: UInt32)]();
  }

  return result;
}

uint64_t NightingaleDPFLRunner.runPregnanciesDistribution(hyperParams:modelPath:numberOfRawPregnancies:invalidReasons:swtAvailability:existingMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, float a7)
{
  v186 = a6;
  v187 = a7;
  v190 = a5;
  v193 = a4;
  v188 = a3;
  v189 = a2;
  v191 = a1;
  v192 = 0;
  v230 = 0;
  v229 = 0.0;
  v227 = 0;
  v225 = 0;
  v223 = 0;
  v221 = 0;
  v219 = 0;
  v217 = 0;
  v215 = 0;
  v213 = 0;
  v211 = 0;
  v210 = 0;
  v209 = 0;
  v208 = 0;
  v207 = 0;
  v203 = 0;
  v202 = 0;
  v199 = 0;
  v198 = 0;
  v197 = 0;
  v196 = 0;
  v237 = a1;
  v235 = a2;
  v236 = a3;
  v234 = a4;
  v233 = a5;
  v232 = a7;
  v231 = a6;
  result = MEMORY[0x25F8895B0]();
  v8 = __OFSUB__(v193, result);
  v194 = v193 - result;
  if (v8)
  {
    __break(1u);
    return result;
  }

  v181 = v185;
  v178 = v194;
  v229 = v194;

  v228 = v190;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining22PregnancyInvalidReasonOGMd);
  v179 = v180;
  v182 = lazy protocol witness table accessor for type [PregnancyInvalidReason] and conformance [A]();
  v183 = v185;
  v184 = _ArrayProtocol.filter(_:)();
  if (v185)
  {
    __break(1u);
    __break(1u);
    __break(1u);
    __break(1u);
    __break(1u);
    __break(1u);
    __break(1u);
    __break(1u);
    __break(1u);
    goto LABEL_31;
  }

  v173 = v184;
  v175 = 0;
  v174 = MEMORY[0x25F8895B0]();
  v227 = v174;

  v226 = v190;
  v176 = 0;
  v177 = _ArrayProtocol.filter(_:)();
  v168 = v177;
  v170 = 0;
  v169 = MEMORY[0x25F8895B0]();
  v225 = v169;

  v224 = v190;
  v171 = 0;
  v172 = _ArrayProtocol.filter(_:)();
  v163 = v172;
  v165 = 0;
  v164 = MEMORY[0x25F8895B0]();
  v223 = v164;

  v222 = v190;
  v166 = 0;
  v167 = _ArrayProtocol.filter(_:)();
  v158 = v167;
  v160 = 0;
  v159 = MEMORY[0x25F8895B0]();
  v221 = v159;

  v220 = v190;
  v161 = 0;
  v162 = _ArrayProtocol.filter(_:)();
  v153 = v162;
  v155 = 0;
  v154 = MEMORY[0x25F8895B0]();
  v219 = v154;

  v218 = v190;
  v156 = 0;
  v157 = _ArrayProtocol.filter(_:)();
  v148 = v157;
  v150 = 0;
  v149 = MEMORY[0x25F8895B0]();
  v217 = v149;

  v216 = v190;
  v151 = 0;
  v152 = _ArrayProtocol.filter(_:)();
  v143 = v152;
  v145 = 0;
  v144 = MEMORY[0x25F8895B0]();
  v215 = v144;

  v214 = v190;
  v146 = 0;
  v147 = _ArrayProtocol.filter(_:)();
  v138 = v147;
  v140 = 0;
  v139 = MEMORY[0x25F8895B0]();
  v213 = v139;

  v212 = v190;
  v141 = 0;
  v142 = _ArrayProtocol.filter(_:)();
  v125 = v142;
  v126 = MEMORY[0x25F8895B0]();
  v211 = v126;

  v128 = NightingaleDPFLRunner.performanceMeasure.getter();
  object = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Training", 8uLL, 1)._object;
  dispatch thunk of PerformanceMeasure.start(_:)();

  v129 = HyperParams.inputName.getter();
  v130 = v9;
  v209 = v129;
  v210 = v9;
  v131 = HyperParams.labelName.getter();
  v132 = v10;
  v207 = v131;
  v208 = v10;
  v133 = HyperParams.modelRepresentation.getter();
  v136 = v11;
  v12 = HyperParams.modelRepresentationEIR.unsafeMutableAddressor();
  v134 = *v12;
  v135 = *(v12 + 1);

  v137 = MEMORY[0x25F889340](v133, v136, v134, v135);

  if (v137)
  {
    v124 = type metadata accessor for EspressoEIRTrainer();
    NightingaleDPFLRunner.performanceMeasure.getter();
    v13 = EspressoEIRTrainer.__allocating_init(_:)();
    v195[3] = v124;
    v195[4] = MEMORY[0x277D413C0];
    v195[0] = v13;
    outlined init with take of HealthDataQuery(v195, v206);
  }

  else
  {
    v123 = type metadata accessor for EspressoMILTrainer();
    NightingaleDPFLRunner.performanceMeasure.getter();
    v14 = EspressoMILTrainer.__allocating_init(_:)();
    v205[3] = v123;
    v205[4] = MEMORY[0x277D413D0];
    v205[0] = v14;
    outlined init with take of HealthDataQuery(v205, v206);
  }

  v120 = v141;

  v117 = &v73;
  MEMORY[0x28223BE20](&v73);
  v118 = &v73;
  v119 = v70;
  v70[2] = v206;
  v70[3] = v189;
  v70[4] = v15;
  v70[5] = v16;
  v70[6] = v17;
  v70[7] = v18;
  v70[8] = v132;
  v70[9] = v191;
  v70[10] = v193;
  v71 = v19;
  v72 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd);
  v22 = v120;
  NightingaleDPFLRunner.sendLocation<A>(location:force:work:)(11, 1, v119, v21, &v204);
  v121 = v22;
  v122 = v22;
  if (v22)
  {
LABEL_31:
    v74 = v122;

    __swift_destroy_boxed_opaque_existential_1(v206);

    result = v74;
    v75 = v74;
    return result;
  }

  v115 = 0;

  v114 = v204;
  v109 = v204;
  v203 = v204;
  v112 = NightingaleDPFLRunner.performanceMeasure.getter();
  v110 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Training", 8uLL, 1)._object;
  dispatch thunk of PerformanceMeasure.finish(_:)();
  v113 = v23;
  v111 = v23;

  v24 = v115;
  v202 = v113;
  _sSa23withUnsafeBufferPointeryqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #2 in NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:), 0, v114, MEMORY[0x277D83A90], MEMORY[0x277CC9318], MEMORY[0x277D84A98], MEMORY[0x277D84AC0], v25);
  v116 = v24;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    v106 = 0;
    v81 = v200;
    v82 = v201;
    v198 = v200;
    v199 = v201;
    v84 = NightingaleDPFLRunner.performanceMeasure.getter();
    v83 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PluginE2E", 9uLL, 1)._object;
    dispatch thunk of PerformanceMeasure.finish(_:)();
    v87 = v26;

    v197 = v87;
    v27 = default argument 1 of NightingaleDPFLRunner.sendLocation(_:_:)();
    NightingaleDPFLRunner.sendLocation(_:_:)(NightingaleTraining_NightingaleDReachLocation_pluginCompleted, v27);

    v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd);
    v102 = _allocateUninitializedArray<A>(_:)();
    v100 = v28;
    v29 = NightingaleDPFLRunner.keyMetricsTrainingDurationS.unsafeMutableAddressor();
    outlined init with copy of String(v29, v100);
    v30 = v111;
    v31 = v100;
    v86 = MEMORY[0x277D839F8];
    v100[5] = MEMORY[0x277D839F8];
    v31[2] = v30;
    v85 = v31 + 6;
    v32 = NightingaleDPFLRunner.keyMetricsE2EDurationS.unsafeMutableAddressor();
    outlined init with copy of String(v32, v85);
    v33 = v87;
    v34 = v100;
    v100[11] = v86;
    v34[8] = v33;
    v88 = v34 + 12;
    v35 = NightingaleDPFLRunner.keyMetricsNumberOfAllPregnancies.unsafeMutableAddressor();
    outlined init with copy of String(v35, v88);
    v36 = v193;
    v37 = v100;
    v99 = MEMORY[0x277D83B88];
    v100[17] = MEMORY[0x277D83B88];
    v37[14] = v36;
    v89 = v37 + 18;
    v38 = NightingaleDPFLRunner.keyMetricsNumberOfValidPregnancies.unsafeMutableAddressor();
    outlined init with copy of String(v38, v89);
    v39 = v178;
    v40 = v100;
    v100[23] = MEMORY[0x277D83A90];
    *(v40 + 40) = v39;
    v90 = v40 + 24;
    v41 = NightingaleDPFLRunner.keyMetricsInvalidDurationPregnanciesCount.unsafeMutableAddressor();
    outlined init with copy of String(v41, v90);
    v42 = v174;
    v43 = v100;
    v100[29] = v99;
    v43[26] = v42;
    v91 = v43 + 30;
    v44 = NightingaleDPFLRunner.keyMetricsInvalidLMPDeltaPregnanciesCount.unsafeMutableAddressor();
    outlined init with copy of String(v44, v91);
    v45 = v169;
    v46 = v100;
    v100[35] = v99;
    v46[32] = v45;
    v92 = v46 + 36;
    v47 = NightingaleDPFLRunner.keyMetricsContainsFlowPregnanciesCount.unsafeMutableAddressor();
    outlined init with copy of String(v47, v92);
    v48 = v164;
    v49 = v100;
    v100[41] = v99;
    v49[38] = v48;
    v93 = v49 + 42;
    v50 = NightingaleDPFLRunner.keyMetricsInvalidLMPPregnanciesCount.unsafeMutableAddressor();
    outlined init with copy of String(v50, v93);
    v51 = v159;
    v52 = v100;
    v100[47] = v99;
    v52[44] = v51;
    v94 = v52 + 48;
    v53 = NightingaleDPFLRunner.keyMetricsInvalidEndPregnanciesCount.unsafeMutableAddressor();
    outlined init with copy of String(v53, v94);
    v54 = v154;
    v55 = v100;
    v100[53] = v99;
    v55[50] = v54;
    v95 = v55 + 54;
    started = NightingaleDPFLRunner.keyMetricsInvalidStartSourcePregnanciesCount.unsafeMutableAddressor();
    outlined init with copy of String(started, v95);
    v57 = v149;
    v58 = v100;
    v100[59] = v99;
    v58[56] = v57;
    v96 = v58 + 60;
    v59 = NightingaleDPFLRunner.keyMetricsFailedToQuerySWTCount.unsafeMutableAddressor();
    outlined init with copy of String(v59, v96);
    v60 = v139;
    v61 = v100;
    v100[65] = v99;
    v61[62] = v60;
    v97 = v61 + 66;
    UpdatingFeatures = NightingaleDPFLRunner.keyMetricsFailedToQueryUpdatingFeaturesCount.unsafeMutableAddressor();
    outlined init with copy of String(UpdatingFeatures, v97);
    v63 = v144;
    v64 = v100;
    v100[71] = v99;
    v64[68] = v63;
    v98 = v64 + 72;
    HistoricalPeriods = NightingaleDPFLRunner.keyMetricsFailedToGetHistoricalPeriodsCount.unsafeMutableAddressor();
    outlined init with copy of String(HistoricalPeriods, v98);
    v66 = v100;
    v67 = v126;
    v100[77] = v99;
    v66[74] = v67;
    _finalizeUninitializedArray<A>(_:)();
    v104 = MEMORY[0x277D84F70] + 8;
    v103 = MEMORY[0x277D837D0];
    v105 = MEMORY[0x277D837E0];
    Dictionary.init(dictionaryLiteral:)();
    v68 = v106;
    v69 = Dictionary.merging(_:uniquingKeysWith:)();
    v107 = v68;
    v108 = v69;
    if (!v68)
    {
      v78 = v108;
      v196 = v108;
      static HIDPFLUtils.checkMetrics(_:)();
      v79 = 0;
      v80 = 0;
      v77 = 0;
      type metadata accessor for PFLTaskResult();
      outlined copy of Data._Representation(v81, v82);
      v76 = PFLTaskResult.__allocating_init(json:vector:)();
      outlined consume of Data._Representation(v81, v82);

      __swift_destroy_boxed_opaque_existential_1(v206);

      return v76;
    }
  }

  __break(1u);
  v73 = v80;

  outlined consume of Data._Representation(v81, v82);

  __swift_destroy_boxed_opaque_existential_1(v206);

  result = v73;
  v75 = v73;
  return result;
}

uint64_t closure #10 in NightingaleDPFLRunner.runPregnanciesDistribution(hyperParams:modelPath:numberOfRawPregnancies:invalidReasons:swtAvailability:existingMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, float a10@<S0>, float a11@<S1>, uint64_t a12)
{
  v108 = a9;
  v118 = a1;
  v144 = a2;
  v137 = a3;
  v128 = a4;
  v129 = a5;
  v131 = a6;
  v132 = a7;
  v109 = a8;
  v115 = a12;
  v116 = a10;
  v117 = a11;
  v180 = 0;
  v178 = 0;
  v179 = 0;
  v176 = 0;
  v177 = 0;
  v174 = 0;
  v175 = 0;
  v173 = 0;
  v172 = 0;
  v171 = 0;
  v170 = 0;
  v166 = 0;
  v159 = 0;
  v158 = 0;
  v151 = 0;
  v135 = 0;
  v110 = type metadata accessor for ShuffleMethod();
  v111 = *(v110 - 8);
  v112 = v110 - 8;
  v113 = (*(v111 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v114 = &v61 - v113;
  v119 = type metadata accessor for EspressoFunction();
  v120 = *(v119 - 8);
  v121 = v119 - 8;
  v122 = (*(v120 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = MEMORY[0x28223BE20](v118);
  v123 = &v61 - v122;
  v124 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = MEMORY[0x28223BE20](v13);
  v125 = &v61 - v124;
  v126 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = MEMORY[0x28223BE20](v15);
  v138 = &v61 - v126;
  v180 = v17;
  v178 = v18;
  v179 = v19;
  v176 = v20;
  v177 = v21;
  v174 = v22;
  v175 = v23;
  v173 = a8;
  v172 = v24;
  v171 = v25;
  v170 = v26;
  v127 = v167;
  outlined init with copy of HealthDataQuery(v17, v167);
  v142 = v168;
  v143 = v169;
  v136 = __swift_project_boxed_opaque_existential_1(v127, v168);
  static EspressoFunction.training.getter();
  v134 = MEMORY[0x277D837D0];
  v130 = _allocateUninitializedArray<A>(_:)();
  v133 = v27;

  v28 = v129;
  v29 = v133;
  *v133 = v128;
  v29[1] = v28;

  v30 = v130;
  v31 = v132;
  v32 = v133;
  v133[2] = v131;
  v32[3] = v31;
  _finalizeUninitializedArray<A>(_:)();
  v139 = v30;
  v140 = _allocateUninitializedArray<A>(_:)();
  v33 = HyperParams.weightNames.getter();
  v34 = v141;
  v145 = v33;
  dispatch thunk of EspressoTrainer.load(path:functions:inputs:outputs:weights:)();
  v146 = v34;
  v147 = v34;
  if (v34)
  {
    v65 = v147;

    (*(v120 + 8))(v138, v119);
    result = __swift_destroy_boxed_opaque_existential_1(v167);
    v66 = v65;
  }

  else
  {

    v99 = *(v120 + 8);
    v100 = v120 + 8;
    v99(v138, v119);
    __swift_destroy_boxed_opaque_existential_1(v167);
    v35 = HyperParams.batchSize.getter();
    static HIDPFLUtils.computeEffectiveTrainingSize(_:_:)(1, v35);
    v103 = v36;
    v166 = v36;
    v101 = v163;
    outlined init with copy of HealthDataQuery(v118, v163);
    v104 = v164;
    v105 = v165;
    v102 = __swift_project_boxed_opaque_existential_1(v101, v164);
    v37 = HyperParams.learningRate.getter();
    v38 = v146;
    v161 = v37;
    v162 = 0;
    dispatch thunk of EspressoTrainer.finalize(batchSize:learningRate:)();
    v106 = v38;
    v107 = v38;
    if (v38)
    {
      v64 = v107;
      result = __swift_destroy_boxed_opaque_existential_1(v163);
      v66 = v64;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v163);
      v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SaySfGtMd);
      v90 = _allocateUninitializedArray<A>(_:)();
      v88 = v39;

      v40 = v129;
      v41 = v88;
      *v88 = v128;
      v41[1] = v40;
      v87 = MEMORY[0x277D83A90];
      v42 = _allocateUninitializedArray<A>(_:)();
      v43 = v116;
      v44 = v117;
      *v45 = v115;
      v45[1] = v43;
      v45[2] = v44;
      _finalizeUninitializedArray<A>(_:)();
      v88[2] = v42;

      v46 = v132;
      v47 = v88;
      v88[3] = v131;
      v47[4] = v46;
      v160 = 1.0;
      v48 = Array.init(repeating:count:)();
      v49 = v90;
      v88[5] = v48;
      _finalizeUninitializedArray<A>(_:)();
      v91 = v49;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd);
      v92 = Dictionary.init(dictionaryLiteral:)();
      v159 = v92;
      v93 = v155;
      outlined init with copy of HealthDataQuery(v118, v155);
      v94 = v156;
      v95 = v157;
      __swift_project_boxed_opaque_existential_1(v93, v156);
      static EspressoFunction.training.getter();
      v50 = v106;
      v51 = dispatch thunk of EspressoTrainer.extractWeights(function:)();
      v96 = v50;
      v97 = v51;
      v98 = v50;
      if (v50)
      {
        v63 = v98;
        v99(v125, v119);
        __swift_destroy_boxed_opaque_existential_1(v155);

        v66 = v63;
      }

      else
      {
        v76 = v97;
        v99(v125, v119);
        v158 = v76;
        __swift_destroy_boxed_opaque_existential_1(v155);
        v77 = v152;
        outlined init with copy of HealthDataQuery(v118, v152);
        v83 = v153;
        v84 = v154;
        __swift_project_boxed_opaque_existential_1(v77, v153);
        v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SitMd);
        v78 = _allocateUninitializedArray<A>(_:)();
        v79 = v52;

        v53 = v129;
        v54 = v79;
        *v79 = v128;
        v54[1] = v53;
        v54[2] = 3;

        v55 = v132;
        v56 = v79;
        v79[3] = v131;
        v56[4] = v55;
        v82 = 1;
        v56[5] = 1;
        _finalizeUninitializedArray<A>(_:)();
        v81 = Dictionary.init(dictionaryLiteral:)();
        (*(v111 + 104))(v114, *MEMORY[0x277D41360], v110);
        v57 = v96;
        dispatch thunk of EspressoTrainer.train(_:featureSizes:numSamples:epochs:shuffleMethod:fullBatch:)();
        v85 = v57;
        v86 = v57;
        if (v57)
        {
          v62 = v86;
          (*(v111 + 8))(v114, v110);

          __swift_destroy_boxed_opaque_existential_1(v152);
          outlined destroy of [(start: UInt32, end: UInt32)]();

          v66 = v62;
        }

        else
        {
          (*(v111 + 8))(v114, v110);

          __swift_destroy_boxed_opaque_existential_1(v152);
          v70 = v148;
          outlined init with copy of HealthDataQuery(v118, v148);
          v71 = v149;
          v72 = v150;
          __swift_project_boxed_opaque_existential_1(v70, v149);
          static EspressoFunction.training.getter();
          v58 = v85;
          v59 = dispatch thunk of EspressoTrainer.extractWeights(function:)();
          v73 = v58;
          v74 = v59;
          v75 = v58;
          if (v58)
          {
            v61 = v75;
            v99(v123, v119);
            __swift_destroy_boxed_opaque_existential_1(v148);
          }

          else
          {
            v67 = v74;
            v99(v123, v119);
            v68 = &v151;
            v151 = v67;
            __swift_destroy_boxed_opaque_existential_1(v148);
            v69 = &v158;
            static HIDPFLUtils.inplaceSub(_:_:)(v68);
            *v108 = v151;
          }

          outlined destroy of [(start: UInt32, end: UInt32)]();
        }
      }
    }
  }

  return result;
}

uint64_t NightingaleDPFLRunner.runDemographics(hyperParams:modelPath:pregnancies:historicalPeriods:swtAvailabilityStats:numberOfSlices:age:earliestPregrancyLMP:latestPregrancyEndDay:existingMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, Swift::UInt32 a10, Swift::UInt32 a11, uint64_t a12)
{
  v136 = a9;
  periods._rawValue = a5;
  pregnancies._rawValue = a4;
  v137 = a3;
  v138 = a2;
  v139 = a1;
  v140 = a12;
  latestPregrancyEndDay = a11;
  earliestPregrancyLMP = a10;
  v141 = 0;
  v142 = 0;
  v192 = 0;
  v190 = 0.0;
  v189 = 0;
  v188 = 0.0;
  v187 = 0.0;
  v186 = 0.0;
  v185 = 0;
  v184 = 0.0;
  v183 = 0.0;
  v182 = 0.0;
  v181 = 0;
  v180 = 0.0;
  v179 = 0.0;
  v176 = 0;
  v175 = 0;
  v174 = 0;
  v173 = 0;
  v170 = 0;
  v169 = 0;
  v168 = 0;
  v210 = a6;
  v143 = a6;
  v144 = BYTE4(a6);
  v209 = a7;
  v145 = a7;
  v146 = BYTE4(a7);
  v208 = a8;
  v147 = a8;
  v148 = BYTE4(a8);
  v207 = a1;
  v205 = a2;
  v206 = a3;
  v204 = a4;
  v203 = a5;
  v199 = a6;
  v200 = BYTE4(a6);
  v201 = a7;
  v202 = BYTE4(a7);
  v198 = a9;
  v196 = a8;
  v197 = BYTE4(a8);
  v195 = a10;
  v194 = a11;
  v193 = a12;
  type metadata accessor for Featurizer();
  v153 = Featurizer.__allocating_init()();
  Featurizer.cycleStats(pregnancies:periods:earliestPregrancyLMP:latestPregrancyEndDay:)(&v191, pregnancies, periods, a10, a11);
  v154 = v12;
  count = v191.prePregCycleStats.count;
  value = v191.prePregCycleStats.mean.value;
  is_nil = v191.prePregCycleStats.mean.is_nil;
  std = v191.prePregCycleStats.std;
  v159 = v191.pregCycleStats.count;
  v160 = v191.pregCycleStats.mean.value;
  v161 = v191.pregCycleStats.mean.is_nil;
  v162 = v191.pregCycleStats.std;
  v163 = v191.postPregCycleStats.count;
  v164 = v191.postPregCycleStats.mean.value;
  v165 = v191.postPregCycleStats.mean.is_nil;
  v166 = v191.postPregCycleStats.std;
  v167 = v12;
  if (v12)
  {

    result = v167;
    v77 = v167;
    return result;
  }

  v13 = v135;
  v124 = v166;
  v113 = v165;
  v127 = v164;
  v123 = v163;
  v122 = v162;
  v112 = v161;
  v121 = v160;
  v120 = v159;
  v119 = std;
  v111 = is_nil;
  v117 = value;
  v116 = count;
  v132 = 0;

  v14 = v138;
  v190 = count;
  v188 = value;
  v118 = is_nil;
  v189 = is_nil;
  v187 = std;
  v186 = v159;
  v184 = v160;
  v126 = v161;
  v185 = v161;
  v183 = v162;
  v182 = v163;
  v180 = v164;
  v128 = v165;
  v181 = v165;
  v179 = v166;
  v130 = &v177;
  v114 = &v177;
  v115 = &v178;

  v125 = &v74;
  v15 = MEMORY[0x28223BE20](v139);
  v129 = &v74;
  v131 = v51;
  v51[4] = v16;
  v52 = v17 & 1;
  v53 = v18;
  v54 = v19 & 1;
  v55 = v13;
  v56 = v15;
  v57 = v14;
  v58 = v137;
  v59 = v147;
  v60 = v20 & 1;
  v61 = v21;
  v62 = v22;
  v63 = v23;
  v64 = v24;
  v65 = v25;
  v66 = v26;
  v67 = v126;
  v68 = v27;
  v69 = v28;
  v70 = v127;
  v71 = v128;
  v72 = v29;
  v73 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfG_SdtMd);
  v32 = v132;
  NightingaleDPFLRunner.sendLocation<A>(location:force:work:)(11, 1, v131, v31, v130);
  v133 = v32;
  v134 = v32;
  if (v32)
  {
    v76 = v134;

    result = v76;
    v77 = v76;
    return result;
  }

  v109 = 0;

  v108 = *v114;
  v97 = v108;
  v98 = *v115;
  v176 = v108;
  v175 = v98;
  v101 = NightingaleDPFLRunner.performanceMeasure.getter();
  v103 = 1;
  object = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Training", 8uLL, 1)._object;
  dispatch thunk of PerformanceMeasure.finish(_:)();
  v102 = v33;
  v100 = v33;

  v174 = v102;
  v106 = NightingaleDPFLRunner.performanceMeasure.getter();
  v104 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PluginE2E", 9uLL, v103)._object;
  dispatch thunk of PerformanceMeasure.finish(_:)();
  v107 = v34;
  v105 = v34;

  v173 = v107;
  v35 = default argument 1 of NightingaleDPFLRunner.sendLocation(_:_:)();
  NightingaleDPFLRunner.sendLocation(_:_:)(NightingaleTraining_NightingaleDReachLocation_pluginCompleted, v35);
  v36 = v109;
  _sSa23withUnsafeBufferPointeryqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #2 in NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:), 0, v108, MEMORY[0x277D83A90], MEMORY[0x277CC9318], MEMORY[0x277D84A98], MEMORY[0x277D84AC0], v37);
  v110 = v36;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    v94 = 0;
    v83 = v171;
    v84 = v172;
    v169 = v171;
    v170 = v172;

    v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd);
    v90 = _allocateUninitializedArray<A>(_:)();
    v88 = v38;
    v39 = NightingaleDPFLRunner.keyMetricsBMIDurationS.unsafeMutableAddressor();
    outlined init with copy of String(v39, v88);
    v40 = v98;
    v41 = v88;
    v87 = MEMORY[0x277D839F8];
    v88[5] = MEMORY[0x277D839F8];
    v41[2] = v40;
    v85 = v41 + 6;
    v42 = NightingaleDPFLRunner.keyMetricsTrainingDurationS.unsafeMutableAddressor();
    outlined init with copy of String(v42, v85);
    v43 = v100;
    v44 = v88;
    v88[11] = v87;
    v44[8] = v43;
    v86 = v44 + 12;
    v45 = NightingaleDPFLRunner.keyMetricsE2EDurationS.unsafeMutableAddressor();
    outlined init with copy of String(v45, v86);
    v46 = v88;
    v47 = v105;
    v88[17] = v87;
    v46[14] = v47;
    _finalizeUninitializedArray<A>(_:)();
    v92 = MEMORY[0x277D84F70] + 8;
    v91 = MEMORY[0x277D837D0];
    v93 = MEMORY[0x277D837E0];
    Dictionary.init(dictionaryLiteral:)();
    v48 = v94;
    v49 = Dictionary.merging(_:uniquingKeysWith:)();
    v95 = v48;
    v96 = v49;
    if (!v48)
    {
      v80 = v96;
      v168 = v96;
      static HIDPFLUtils.checkMetrics(_:)();
      v81 = 0;
      v82 = 0;
      v79 = 0;
      type metadata accessor for PFLTaskResult();
      outlined copy of Data._Representation(v83, v84);
      v78 = PFLTaskResult.__allocating_init(json:vector:)();
      outlined consume of Data._Representation(v83, v84);

      return v78;
    }
  }

  __break(1u);
  v75 = v82;

  outlined consume of Data._Representation(v83, v84);

  return v75;
}

uint64_t closure #1 in NightingaleDPFLRunner.runDemographics(hyperParams:modelPath:pregnancies:historicalPeriods:swtAvailabilityStats:numberOfSlices:age:earliestPregrancyLMP:latestPregrancyEndDay:existingMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, float a10@<S0>, float a11@<S1>, float a12@<S2>, float a13@<S3>, float a14@<S4>, float a15@<S5>, float a16@<S6>, uint64_t a17, uint64_t a18)
{
  v197 = a9;
  v206 = a3;
  v207 = a4;
  v208 = a5;
  v209 = a6;
  v210 = a10;
  v213 = a11;
  v214 = a12;
  v217 = a13;
  v218 = a14;
  v219 = a15;
  v220 = a16;
  memset(v302, 0, 13);
  v301 = 0;
  v300 = 0;
  v298 = 0;
  v299 = 0;
  v296 = 0.0;
  v297 = 0;
  v295 = 0;
  v293 = 0;
  v294 = 0;
  v292 = 0;
  v291 = 0;
  v289 = 0;
  v290 = 0;
  v288 = 0;
  v287 = 0;
  v285 = 0;
  v286 = 0;
  v284 = 0;
  v283 = 0;
  v282 = 0;
  v281 = 0;
  v280 = 0;
  v276 = 0.0;
  v275 = 0;
  v273 = 0;
  v274 = 0;
  v271 = 0;
  v272 = 0;
  v265 = 0;
  v257 = 0.0;
  v249 = 0;
  v248 = 0;
  v241 = 0;
  v302[6] = a1;
  v302[7] = a2;
  v231 = a1;
  v221 = BYTE4(a1);
  v222 = a2;
  v205 = BYTE4(a2);
  v302[5] = a7;
  v234 = *&a7;
  v235 = BYTE4(a7);
  v302[4] = a8;
  v211 = a8;
  v212 = BYTE4(a8);
  v302[3] = a17;
  v215 = a17;
  v216 = BYTE4(a17);
  v302[2] = a18;
  v232 = a18;
  v233 = BYTE4(a18);
  v199 = 0;
  v200 = type metadata accessor for ShuffleMethod();
  v201 = *(v200 - 8);
  v202 = v200 - 8;
  v203 = (*(v201 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v204 = &v99 - v203;
  v18 = type metadata accessor for EspressoFunction();
  v19 = v205;
  v223 = v18;
  v224 = *(v18 - 8);
  v225 = v18 - 8;
  v229 = *(v224 + 64);
  v226 = (v229 + 15) & 0xFFFFFFFFFFFFFFF0;
  v20 = MEMORY[0x28223BE20](v222);
  v227 = &v99 - v226;
  v228 = (v229 + 15) & 0xFFFFFFFFFFFFFFF0;
  v21 = MEMORY[0x28223BE20](v20);
  v230 = &v99 - v228;
  v22 = MEMORY[0x28223BE20](v21);
  v236 = &v99 - v23;
  LODWORD(v302[0]) = v231;
  BYTE4(v302[0]) = v24 & 1;
  LODWORD(v302[1]) = v22;
  BYTE4(v302[1]) = v19 & 1;
  v301 = v25;
  v300 = v26;
  v298 = v27;
  v299 = v28;
  v296 = v234;
  v297 = v235 & 1;
  v295 = v29;
  v293 = v30;
  v294 = v31 & 1;
  v292 = v32;
  v291 = v33;
  v289 = v34;
  v290 = v35 & 1;
  v288 = v36;
  v287 = v37;
  v285 = v232;
  v286 = v233 & 1;
  v284 = v38;
  v283 = v39;
  if (v24 & 1) != 0 || (v196 = v231, v195 = v196, v282 = v196, (v205))
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v105 = swift_allocError();
    *v98 = 67;
    swift_willThrow();
    result = v105;
    v106 = v105;
  }

  else
  {
    v194 = v222;
    v184 = v222;
    v281 = v222;
    v190 = dispatch_group_create();
    v280 = v190;
    v186 = NightingaleDPFLRunner.performanceMeasure.getter();
    object = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("BMIQuery", 8uLL, 1)._object;
    dispatch thunk of PerformanceMeasure.start(_:)();

    v187 = v277;
    outlined init with copy of HealthDataQuery(v206 + 48, v277);
    v188 = v278;
    v189 = v279;
    __swift_project_boxed_opaque_existential_1(v187, v278);
    v40 = v198;
    v41 = (*(v189 + 48))(v190, v207, v188);
    v191 = v40;
    v192 = v41;
    v193 = v40;
    if (v40)
    {
      v104 = v193;
      __swift_destroy_boxed_opaque_existential_1(v277);
      result = MEMORY[0x277D82BD8](v190);
      v106 = v104;
    }

    else
    {
      v167 = v192;
      v276 = v192;
      __swift_destroy_boxed_opaque_existential_1(v277);
      v169 = NightingaleDPFLRunner.performanceMeasure.getter();
      v171 = 8;
      v172 = 1;
      v168 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("BMIQuery", 8uLL, 1)._object;
      dispatch thunk of PerformanceMeasure.finish(_:)();
      v170 = v42;

      v275 = v170;
      v174 = NightingaleDPFLRunner.performanceMeasure.getter();
      v173 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Training", v171, v172 & 1)._object;
      dispatch thunk of PerformanceMeasure.start(_:)();

      v175 = HyperParams.inputName.getter();
      v176 = v43;
      v273 = v175;
      v274 = v43;
      v177 = HyperParams.labelName.getter();
      v178 = v44;
      v271 = v177;
      v272 = v44;
      v179 = HyperParams.modelRepresentation.getter();
      v182 = v45;
      v46 = HyperParams.modelRepresentationEIR.unsafeMutableAddressor();
      v180 = *v46;
      v181 = *(v46 + 1);

      v183 = MEMORY[0x25F889340](v179, v182, v180, v181);

      if (v183)
      {
        v166 = type metadata accessor for EspressoEIRTrainer();
        NightingaleDPFLRunner.performanceMeasure.getter();
        v47 = EspressoEIRTrainer.__allocating_init(_:)();
        v237[3] = v166;
        v237[4] = MEMORY[0x277D413C0];
        v237[0] = v47;
        outlined init with take of HealthDataQuery(v237, v270);
      }

      else
      {
        v165 = type metadata accessor for EspressoMILTrainer();
        NightingaleDPFLRunner.performanceMeasure.getter();
        v48 = EspressoMILTrainer.__allocating_init(_:)();
        v269[3] = v165;
        v269[4] = MEMORY[0x277D413D0];
        v269[0] = v48;
        outlined init with take of HealthDataQuery(v269, v270);
      }

      v153 = v266;
      outlined init with copy of HealthDataQuery(v270, v266);
      v160 = v267;
      v161 = v268;
      v157 = __swift_project_boxed_opaque_existential_1(v153, v267);
      static EspressoFunction.training.getter();
      v156 = MEMORY[0x277D837D0];
      v154 = _allocateUninitializedArray<A>(_:)();
      v155 = v49;

      v50 = v176;
      v51 = v155;
      *v155 = v175;
      v51[1] = v50;

      v52 = v154;
      v53 = v178;
      v54 = v155;
      v155[2] = v177;
      v54[3] = v53;
      _finalizeUninitializedArray<A>(_:)();
      v158 = v52;
      v159 = _allocateUninitializedArray<A>(_:)();
      v55 = HyperParams.weightNames.getter();
      v56 = v191;
      v162 = v55;
      dispatch thunk of EspressoTrainer.load(path:functions:inputs:outputs:weights:)();
      v163 = v56;
      v164 = v56;
      if (v56)
      {
        v103 = v164;

        (*(v224 + 8))(v236, v223);
        __swift_destroy_boxed_opaque_existential_1(v266);
        __swift_destroy_boxed_opaque_existential_1(v270);

        result = MEMORY[0x277D82BD8](v190);
        v106 = v103;
      }

      else
      {

        v144 = *(v224 + 8);
        v145 = v224 + 8;
        v144(v236, v223);
        __swift_destroy_boxed_opaque_existential_1(v266);
        v57 = HyperParams.batchSize.getter();
        static HIDPFLUtils.computeEffectiveTrainingSize(_:_:)(1, v57);
        v148 = v58;
        v265 = v58;
        v146 = v262;
        outlined init with copy of HealthDataQuery(v270, v262);
        v149 = v263;
        v150 = v264;
        v147 = __swift_project_boxed_opaque_existential_1(v146, v263);
        v59 = HyperParams.learningRate.getter();
        v60 = v163;
        v260 = v59;
        v261 = 0;
        dispatch thunk of EspressoTrainer.finalize(batchSize:learningRate:)();
        v151 = v60;
        v152 = v60;
        if (v60)
        {
          v102 = v152;
          __swift_destroy_boxed_opaque_existential_1(v262);
          __swift_destroy_boxed_opaque_existential_1(v270);

          result = MEMORY[0x277D82BD8](v190);
          v106 = v102;
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(v262);
          v258 = v234;
          v259 = v235 & 1;

          if (v259)
          {
            v142 = HyperParams.defaultAge.getter();
            v143 = v142;
          }

          else
          {
            v143 = v258;
          }

          v139 = v143;

          v257 = v139;
          v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SaySfGtMd);
          v137 = _allocateUninitializedArray<A>(_:)();
          v138 = v61;

          v62 = v176;
          v63 = v138;
          *v138 = v175;
          v63[1] = v62;
          v64 = _allocateUninitializedArray<A>(_:)();
          v65 = v167;
          v66 = v210;
          v67 = v211;
          v68 = v212;
          v140 = v64;
          v141 = v69;
          *v69 = v139;
          v69[1] = v65;
          v69[2] = v66;
          v255 = v67;
          v256 = v68 & 1;
          if (v68)
          {
            v141[3] = -1.0;
          }

          else
          {
            *(v141 + 3) = v255;
          }

          v70 = v216;
          v71 = v215;
          v72 = v214;
          v73 = v141;
          v141[4] = v213;
          v73[5] = v72;
          v253 = v71;
          v254 = v70 & 1;
          if (v70)
          {
            v141[6] = -1.0;
          }

          else
          {
            *(v141 + 6) = v253;
          }

          v74 = v233;
          v75 = v232;
          v76 = v218;
          v77 = v141;
          v141[7] = v217;
          v77[8] = v76;
          v251 = v75;
          v252 = v74 & 1;
          if (v74)
          {
            v141[9] = -1.0;
          }

          else
          {
            *(v141 + 9) = v251;
          }

          v78 = v140;
          v79 = v220;
          v80 = v141;
          v81 = v184;
          v82 = v195;
          v141[10] = v219;
          *(v80 + 11) = v82;
          *(v80 + 12) = v81;
          v80[13] = v79;
          v127 = MEMORY[0x277D83A90];
          _finalizeUninitializedArray<A>(_:)();
          v138[2] = v78;

          v83 = v178;
          v84 = v138;
          v138[3] = v177;
          v84[4] = v83;
          v250 = 1.0;
          v85 = Array.init(repeating:count:)();
          v86 = v137;
          v138[5] = v85;
          _finalizeUninitializedArray<A>(_:)();
          v128 = v86;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd);
          v129 = Dictionary.init(dictionaryLiteral:)();
          v249 = v129;
          v130 = v245;
          outlined init with copy of HealthDataQuery(v270, v245);
          v131 = v246;
          v132 = v247;
          __swift_project_boxed_opaque_existential_1(v130, v246);
          static EspressoFunction.training.getter();
          v87 = v151;
          v88 = dispatch thunk of EspressoTrainer.extractWeights(function:)();
          v133 = v87;
          v134 = v88;
          v135 = v87;
          if (v87)
          {
            v101 = v135;
            v144(v230, v223);
            __swift_destroy_boxed_opaque_existential_1(v245);

            __swift_destroy_boxed_opaque_existential_1(v270);

            result = MEMORY[0x277D82BD8](v190);
            v106 = v101;
          }

          else
          {
            v116 = v134;
            v144(v230, v223);
            v248 = v116;
            __swift_destroy_boxed_opaque_existential_1(v245);
            v117 = v242;
            outlined init with copy of HealthDataQuery(v270, v242);
            v123 = v243;
            v124 = v244;
            __swift_project_boxed_opaque_existential_1(v117, v243);
            v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SitMd);
            v118 = _allocateUninitializedArray<A>(_:)();
            v119 = v89;

            v90 = v176;
            v91 = v119;
            *v119 = v175;
            v91[1] = v90;
            v91[2] = 14;

            v92 = v178;
            v93 = v119;
            v119[3] = v177;
            v93[4] = v92;
            v122 = 1;
            v93[5] = 1;
            _finalizeUninitializedArray<A>(_:)();
            v121 = Dictionary.init(dictionaryLiteral:)();
            (*(v201 + 104))(v204, *MEMORY[0x277D41360], v200);
            v94 = v133;
            dispatch thunk of EspressoTrainer.train(_:featureSizes:numSamples:epochs:shuffleMethod:fullBatch:)();
            v125 = v94;
            v126 = v94;
            if (v94)
            {
              v100 = v126;
              (*(v201 + 8))(v204, v200);

              __swift_destroy_boxed_opaque_existential_1(v242);
              outlined destroy of [(start: UInt32, end: UInt32)]();

              __swift_destroy_boxed_opaque_existential_1(v270);

              result = MEMORY[0x277D82BD8](v190);
              v106 = v100;
            }

            else
            {
              (*(v201 + 8))(v204, v200);

              __swift_destroy_boxed_opaque_existential_1(v242);
              v110 = v238;
              outlined init with copy of HealthDataQuery(v270, v238);
              v111 = v239;
              v112 = v240;
              __swift_project_boxed_opaque_existential_1(v110, v239);
              static EspressoFunction.training.getter();
              v95 = v125;
              v96 = dispatch thunk of EspressoTrainer.extractWeights(function:)();
              v113 = v95;
              v114 = v96;
              v115 = v95;
              if (v95)
              {
                v99 = v115;
                v144(v227, v223);
                __swift_destroy_boxed_opaque_existential_1(v238);
              }

              else
              {
                v107 = v114;
                v144(v227, v223);
                v108 = &v241;
                v241 = v107;
                __swift_destroy_boxed_opaque_existential_1(v238);
                v109 = &v248;
                static HIDPFLUtils.inplaceSub(_:_:)(v108);
                outlined init with copy of [Float](v108, v197);
                v197[1] = v170;
                outlined destroy of [(start: UInt32, end: UInt32)]();
              }

              outlined destroy of [(start: UInt32, end: UInt32)]();

              __swift_destroy_boxed_opaque_existential_1(v270);

              return MEMORY[0x277D82BD8](v190);
            }
          }
        }
      }
    }
  }

  return result;
}

id NightingaleDPFLRunner.runEvals(evalModels:task:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, void *a19, void *a20, void *a21, void *a22, void *a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  v30 = MEMORY[0x28223BE20](a1);
  v668 = &v733;
  v607 = v29;
  v661 = v28;
  v32 = v31;
  v608._rawValue = v31;
  v34 = v33;
  v609._rawValue = v33;
  v36 = v35;
  v610 = v35;
  v38 = v37;
  v611 = v37;
  v40 = v39;
  v612 = v39;
  v42 = v41;
  v665 = v41;
  v660 = v43;
  v663 = v30;
  v653 = a27;
  v613 = a27;
  v657 = a26;
  v614 = a26;
  v656 = a25;
  v615 = a25;
  v655 = a24;
  v616._rawValue = a24;
  v652 = a23;
  v617._rawValue = a23;
  v651 = a22;
  v618._rawValue = a22;
  v650 = a21;
  v619._rawValue = a21;
  v649 = a20;
  v620._rawValue = a20;
  v659 = a19;
  v621._rawValue = a19;
  v658 = a18;
  v622._rawValue = a18;
  v648 = a17;
  v623._rawValue = a17;
  v654 = a16;
  v624._rawValue = a16;
  v647 = a15;
  v625._rawValue = a15;
  v646 = a14;
  v626._rawValue = a14;
  v645 = a13;
  v627._rawValue = a13;
  v644 = a12;
  v628._rawValue = a12;
  v643 = a11;
  v629._rawValue = a11;
  v642 = a10;
  v630._rawValue = a10;
  v631._rawValue = a9;
  v664 = a28;
  v632 = *v28;
  v633 = 0;
  v742 = 0;
  v741 = 0;
  v740 = 0;
  v739 = 0;
  v738 = 0;
  v737 = 0;
  v736 = 0;
  v735 = 0;
  v734 = 0;
  v731 = 0;
  v730 = 0;
  v729._rawValue = 0;
  v727 = 0;
  v726 = 0;
  v725 = 0;
  v724 = 0;
  v723 = 0;
  v722 = 0;
  v720 = 0;
  v718 = 0;
  v709 = 0;
  v708 = 0;
  v687 = 0;
  v682 = 0;
  v679 = 0;
  v676 = 0;
  v675 = 0;
  v674 = 0;
  v634 = type metadata accessor for Logger();
  v635 = *(v634 - 8);
  v636 = v635;
  v638 = *(v635 + 64);
  v44 = MEMORY[0x28223BE20](0);
  v640 = (v638 + 15) & 0xFFFFFFFFFFFFFFF0;
  v637 = &v311 - v640;
  v45 = MEMORY[0x28223BE20](v44);
  v639 = &v311 - v640;
  MEMORY[0x28223BE20](v45);
  v641 = &v311 - v640;
  v46 = type metadata accessor for String.Encoding();
  v47 = v648;
  v662 = &v311 - ((MEMORY[0x28223BE20](*(*(v46 - 8) + 64)) + 15) & 0xFFFFFFFFFFFFFFF0);
  v742 = v663;
  v741 = v660;
  v740 = v42;
  v739 = v40;
  v738 = v38;
  v737 = v36;
  v743 = v34;
  v744 = v32;
  v745 = a9;
  v746 = v48;
  v747 = v49;
  v748 = v50;
  v749 = v51;
  v750 = v52;
  v751 = v53;
  v752 = v54;
  v753 = v47;
  v754 = v658;
  v755 = v659;
  v756 = v55;
  v757 = v56;
  v758 = v57;
  v759 = v58;
  v760 = v655;
  v761 = v656;
  v762 = v657;
  v763 = v59;
  v736 = v664;
  v735 = v661;

  v734 = v664;
  v667 = NightingaleDPFLRunner.performanceMeasure.getter();
  v669 = 1;
  object = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Training", 8uLL, 1)._object;
  dispatch thunk of PerformanceMeasure.start(_:)();

  v60 = HyperParams.evalEngine.getter();
  v61 = v668;
  v62 = v669;
  *(v668 + 1) = v60 & 1;
  *v61 = v62;
  lazy protocol witness table accessor for type NightingaleDProcessEngine and conformance NightingaleDProcessEngine();
  if (== infix<A>(_:_:)())
  {
    v63 = v607;
    static OnDeviceML.extendMorpheus()();
    v605 = v63;
    v606 = v63;
    if (v63)
    {
      v361 = v606;
      outlined destroy of [(start: UInt32, end: UInt32)]();
      result = v361;
      v362 = v361;
      return result;
    }

    static Math.extendMorpheus()();
    v603 = 0;
    v604 = 0;
    HyperParams.morpheusEvalProgramFileName.getter();
    v599 = v64;
    v65 = dispatch thunk of PFLTask.attachmentPath(name:)();
    v602 = v66;
    v600 = v65;
    v601 = v66;

    if (v602)
    {
      v597 = v600;
      v598 = v601;
      v590 = v601;
      v589 = v600;
      v591 = v603;
      v724 = v600;
      v725 = v601;
      static String.Encoding.utf8.getter();
      v67 = v591;
      v68 = String.init(contentsOfFile:encoding:)();
      v592 = v67;
      v593 = v68;
      v594 = v69;
      v595 = v67;
      if (v67)
      {
        v359 = 0;
        v360 = 0;

        v586 = v359;
        v587 = v359;
        v588 = v360;
      }

      else
      {
        v586 = v593;
        v587 = v594;
        v588 = 0;
      }

      v583 = v588;
      v584 = v587;
      v585 = v586;
      if (v587)
      {
        v581 = v585;
        v582 = v584;
        v573 = v584;
        v574 = v585;
        v722 = v585;
        v723 = v584;
        static PFLLogging.plugin.getter();
        v579 = Logger.logObject.getter();
        v575 = v579;
        v578 = static os_log_type_t.debug.getter();
        v576 = v578;
        v577 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd);
        v580 = _allocateUninitializedArray<A>(_:)();
        if (os_log_type_enabled(v579, v578))
        {
          v571 = v583;
          v563 = static UnsafeMutablePointer.allocate(capacity:)();
          v559 = v563;
          v560 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd);
          v561 = 0;
          v564 = createStorage<A>(capacity:type:)(0);
          v562 = v564;
          v565 = createStorage<A>(capacity:type:)(v561);
          v673 = v563;
          v672 = v564;
          v671 = v565;
          v566 = 0;
          v567 = &v673;
          serialize(_:at:)(0, &v673);
          serialize(_:at:)(v566, v567);
          v670 = v580;
          v568 = &v311;
          MEMORY[0x28223BE20](&v311);
          v569 = &v311 - 6;
          *(&v311 - 4) = v71;
          *(&v311 - 3) = &v672;
          *(&v311 - 2) = &v671;
          v570 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd);
          lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
          v72 = v571;
          Sequence.forEach(_:)();
          v572 = v72;
          if (v72)
          {
            __break(1u);
          }

          else
          {
            _os_log_impl(&dword_25C4D8000, v575, v576, "Using Morpheus to eval.", v559, 2u);
            v557 = 0;
            destroyStorage<A>(_:count:)(v562, 0, v560);
            destroyStorage<A>(_:count:)(v565, v557, MEMORY[0x277D84F70] + 8);
            MEMORY[0x25F8899D0](v559, MEMORY[0x277D84B78]);

            v558 = v572;
          }
        }

        else
        {

          v558 = v583;
        }

        v554 = v558;

        v548 = *(v636 + 8);
        v549 = (v636 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v548(v641, v634);
        v721 = v663;

        v552 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
        v550 = v552;
        v553 = type metadata accessor for HyperParams();
        v551 = v553;
        v73 = lazy protocol witness table accessor for type [String] and conformance [A]();
        v74 = v554;
        v76 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in NightingaleDPFLRunner.runEvals(evalModels:task:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:), v665, v552, v553, MEMORY[0x277D84A98], v73, MEMORY[0x277D84AC0], v75);
        v555 = v74;
        v556 = v76;
        if (v74)
        {

          __break(1u);
        }

        else
        {
          v541 = v556;
          v545 = 0;

          v720 = v541;
          v719[1] = v541;

          v543 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining11HyperParamsCGMd);
          v542 = v543;
          v544 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
          v77 = lazy protocol witness table accessor for type [HyperParams] and conformance [A]();
          v78 = v545;
          v79 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #2 in NightingaleDPFLRunner.runEvals(evalModels:task:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:), v660, v543, MEMORY[0x277D837D0], v544, v77, MEMORY[0x277D84950], v719);
          v546 = v78;
          v547 = v79;
          if (!v78)
          {
            v536 = v547;
            v537 = 0;

            v709 = v536;
            type metadata accessor for MorpheusProgram();
            v80 = v537;
            v81 = static MorpheusProgram.fromDSL(_:)();
            v538 = v80;
            v539 = v81;
            v540 = v80;
            if (v80)
            {
              v317 = v540;
              v318 = 0;

              v457 = v317;
              v458 = v318;
              goto LABEL_59;
            }

            v506 = v539;
            v530 = 0;
            v708 = v539;
            v522 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd);
            v507 = v522;
            v508 = 20;
            v515 = _allocateUninitializedArray<A>(_:)();
            v514 = v82;
            v510 = 15;
            v528 = 1;
            v83 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featureDaySHR10", 0xFuLL, 1);
            *v514 = v83;
            v512 = &v743;
            outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(&v743, &v707);
            v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd);
            v85 = v508;
            v86 = v514;
            rawValue = v609._rawValue;
            v88 = v528;
            v513 = v84;
            v514[2]._object = v84;
            v86[1]._countAndFlagsBits = rawValue;
            v89 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featureDaySHR10Stats", v85, v88);
            v90 = v512;
            v514[3] = v89;
            outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v90, &v706);
            v91 = v514;
            v92 = v608._rawValue;
            v93 = v528;
            v514[5]._object = v513;
            v91[4]._countAndFlagsBits = v92;
            v94 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featureNightSHR10", 0x11uLL, v93);
            v95 = v512;
            v514[6] = v94;
            outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v95, &v705);
            v96 = v514;
            v97 = v631._rawValue;
            v98 = v528;
            v514[8]._object = v513;
            v96[7]._countAndFlagsBits = v97;
            v511 = 22;
            v99 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featureNightSHR10Stats", 0x16uLL, v98);
            v100 = v512;
            v514[9] = v99;
            outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v100, &v704);
            v101 = v514;
            v102 = v630._rawValue;
            v103 = v528;
            v514[11]._object = v513;
            v101[10]._countAndFlagsBits = v102;
            v509 = 10;
            v104 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featurePSM", 0xAuLL, v103);
            v105 = v512;
            v514[12] = v104;
            outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v105, &v703);
            v106 = v510;
            v107 = v514;
            v108 = v629._rawValue;
            v109 = v528;
            v514[14]._object = v513;
            v107[13]._countAndFlagsBits = v108;
            v110 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featurePSMStats", v106, v109);
            v111 = v512;
            v514[15] = v110;
            outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v111, &v702);
            v112 = v509;
            v113 = v514;
            v114 = v628._rawValue;
            v115 = v528;
            v514[17]._object = v513;
            v113[16]._countAndFlagsBits = v114;
            v116 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featurePSS", v112, v115);
            v117 = v512;
            v514[18] = v116;
            outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v117, &v701);
            v118 = v510;
            v119 = v514;
            v120 = v627._rawValue;
            v121 = v528;
            v514[20]._object = v513;
            v119[19]._countAndFlagsBits = v120;
            v122 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featurePSSStats", v118, v121);
            v123 = v512;
            v514[21] = v122;
            outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v123, &v700);
            v124 = v514;
            v125 = v626._rawValue;
            v126 = v528;
            v514[23]._object = v513;
            v124[22]._countAndFlagsBits = v125;
            v127 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featureDaysSinceLastPeriodStart", 0x1FuLL, v126);
            v128 = v512;
            v514[24] = v127;
            outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v128, &v699);
            v129 = v514;
            v130 = v625._rawValue;
            v131 = v528;
            v514[26]._object = v513;
            v129[25]._countAndFlagsBits = v130;
            v132 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featureDaysSinceLastPeriodStartStats", 0x24uLL, v131);
            v133 = v512;
            v514[27] = v132;
            outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v133, &v698);
            v134 = v509;
            v135 = v514;
            v136 = v624._rawValue;
            v137 = v528;
            v514[29]._object = v513;
            v135[28]._countAndFlagsBits = v136;
            v138 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featureSWT", v134, v137);
            v139 = v512;
            v514[30] = v138;
            outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v139, &v697);
            v140 = v510;
            v141 = v514;
            v142 = v623._rawValue;
            v143 = v528;
            v514[32]._object = v513;
            v141[31]._countAndFlagsBits = v142;
            v144 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featureSWTStats", v140, v143);
            v145 = v512;
            v514[33] = v144;
            outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v145, &v696);
            v146 = v509;
            v147 = v514;
            v148 = v622._rawValue;
            v149 = v528;
            v514[35]._object = v513;
            v147[34]._countAndFlagsBits = v148;
            v150 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featureHRV", v146, v149);
            v151 = v512;
            v514[36] = v150;
            outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v151, &v695);
            v152 = v510;
            v153 = v514;
            v154 = v621._rawValue;
            v155 = v528;
            v514[38]._object = v513;
            v153[37]._countAndFlagsBits = v154;
            v156 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featureHRVStats", v152, v155);
            v157 = v512;
            v514[39] = v156;
            outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v157, &v694);
            v158 = v511;
            v159 = v514;
            v160 = v620._rawValue;
            v161 = v528;
            v514[41]._object = v513;
            v159[40]._countAndFlagsBits = v160;
            v162 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featureRespiratoryRate", v158, v161);
            v163 = v512;
            v514[42] = v162;
            outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v163, &v693);
            v164 = v514;
            v165 = v619._rawValue;
            v166 = v528;
            v514[44]._object = v513;
            v164[43]._countAndFlagsBits = v165;
            v167 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featureRespiratoryRateStats", 0x1BuLL, v166);
            v168 = v512;
            v514[45] = v167;
            outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v168, &v692);
            v169 = v514;
            v170 = v618._rawValue;
            v171 = v528;
            v514[47]._object = v513;
            v169[46]._countAndFlagsBits = v170;
            v172 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featureSpO2", 0xBuLL, v171);
            v173 = v512;
            v514[48] = v172;
            outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v173, &v691);
            v174 = v514;
            v175 = v617._rawValue;
            v176 = v528;
            v514[50]._object = v513;
            v174[49]._countAndFlagsBits = v175;
            v177 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featureSpO2Stats", 0x10uLL, v176);
            v178 = v512;
            v514[51] = v177;
            outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v178, &v690);
            v179 = v514;
            v180 = v616._rawValue;
            v181 = v528;
            v514[53]._object = v513;
            v179[52]._countAndFlagsBits = v180;
            v182 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("sliceEndDays", 0xCuLL, v181);
            v183 = v512;
            v514[54] = v182;
            outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v183, &v689);
            v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt32VGMd);
            v185 = v514;
            v186 = v615;
            v187 = v528;
            v514[56]._object = v184;
            v185[55]._countAndFlagsBits = v186;
            v188 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("labels", 6uLL, v187);
            v189 = v512;
            v514[57] = v188;
            outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v189, &v688);
            v190 = v514;
            v191 = v614;
            v192 = v515;
            v514[59]._object = v513;
            v190[58]._countAndFlagsBits = v191;
            _finalizeUninitializedArray<A>(_:)();
            v516 = v192;

            v525 = MEMORY[0x277D84F70] + 8;
            v527 = MEMORY[0x277D837D0];
            v526 = MEMORY[0x277D837E0];
            v518 = Dictionary.init(dictionaryLiteral:)();
            v517 = v518;
            v687 = v518;
            v521 = _allocateUninitializedArray<A>(_:)();
            v520 = v193;

            v523 = 0;
            v194 = type metadata accessor for PFLTask();
            v195 = v660;
            v196 = v520;
            v520[3] = v194;
            *v196 = v195;

            v197 = v665;
            v198 = v520;
            v520[7] = v551;
            v198[4] = v197;

            v199 = v541;
            v200 = v520;
            v520[11] = v542;
            v200[8] = v199;

            v201 = v536;
            v202 = v520;
            v520[15] = v550;
            v202[12] = v201;

            v203 = v663;
            v204 = v520;
            v520[19] = v550;
            v204[16] = v203;

            v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd);
            v206 = v518;
            v207 = v520;
            v519 = v205;
            v520[23] = v205;
            v207[20] = v206;

            v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt32V5start_AB3endtGMd);
            v209 = v612;
            v210 = v520;
            v520[27] = v208;
            v210[24] = v209;

            v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining9Pregnancy_pGMd);
            v212 = v611;
            v213 = v610;
            v214 = v520;
            v215 = v211;
            v216 = v521;
            v520[31] = v215;
            v214[28] = v212;
            v214[35] = MEMORY[0x277D83B88];
            v214[32] = v213;
            _finalizeUninitializedArray<A>(_:)();
            v531 = v216;
            v524 = v216;
            _allocateUninitializedArray<A>(_:)();
            v532 = Dictionary.init(dictionaryLiteral:)();
            v529 = v532;
            v217 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("eval", 4uLL, v528);
            v218 = v530;
            v533 = v217._object;
            dispatch thunk of MorpheusProgram.execute(args:keywords:function:)();
            v534 = v218;
            v535 = v218;
            if (v218)
            {
              v315 = v535;
              v316 = 0;

              v457 = v315;
              v458 = v316;
              goto LABEL_59;
            }

            v684[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd);
            v684[0] = swift_allocObject();
            outlined init with copy of Any?(v686, v684[0] + 16);
            v505 = &v685;
            v504 = v684;
            static MorpheusUtils.unwrapMorpheusResult(result:)();
            __swift_destroy_boxed_opaque_existential_1(v504);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayypGMd);
            if (swift_dynamicCast())
            {
              v503 = v683;
            }

            else
            {
              v503 = 0;
            }

            v502 = v503;
            if (v503)
            {
              v501 = v502;
              v500 = v502;
              v682 = v502;
              if (MEMORY[0x25F8895B0]() >= 2)
              {
                v499 = MEMORY[0x277D84F70] + 8;
                v498 = &v681;
                Array.subscript.getter();
                if (swift_dynamicCast())
                {
                  v497 = v680;
                }

                else
                {
                  v497 = 0;
                }

                v496 = v497;
                if (v497)
                {
                  v495 = v496;
                  v219 = v534;
                  v493 = v496;
                  v679 = v496;

                  Dictionary.merge(_:uniquingKeysWith:)();
                  v494 = v219;
                  if (v219)
                  {
                    __break(1u);
LABEL_71:
                    __break(1u);
                    v313 = v466;
                    v314 = 0;

                    outlined destroy of Pregnancy?(v686);

                    v457 = v313;
                    v458 = v314;
                    goto LABEL_59;
                  }

                  v491 = MEMORY[0x277D84F70] + 8;
                  v492 = &v678;
                  Array.subscript.getter();
                  type metadata accessor for NSNumber();
                  if (swift_dynamicCast())
                  {
                    v490 = v677;
                  }

                  else
                  {
                    v490 = 0;
                  }

                  v489 = v490;
                  if (v490)
                  {
                    v488 = v489;
                    v484 = v489;
                    [v489 floatValue];
                    v485 = v220;

                    v486 = v485;
                    v487 = 0;
                  }

                  else
                  {
                    v486 = 0;
                    v487 = 1;
                  }

                  v483 = v486;
                  if ((v487 & 1) == 0)
                  {
                    v482 = v483;
                    v478 = v483;
                    v480 = v494;
                    v676 = v483;
                    v468 = NightingaleDPFLRunner.performanceMeasure.getter();
                    v469 = 1;
                    v467 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Training", 8uLL, 1)._object;
                    dispatch thunk of PerformanceMeasure.finish(_:)();
                    v472 = v221;

                    v675 = v472;
                    v222 = default argument 1 of NightingaleDPFLRunner.sendLocation(_:_:)();
                    NightingaleDPFLRunner.sendLocation(_:_:)(NightingaleTraining_NightingaleDReachLocation_trainingCompleted, v222);
                    v471 = NightingaleDPFLRunner.performanceMeasure.getter();
                    v470 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PluginE2E", 9uLL, v469)._object;
                    dispatch thunk of PerformanceMeasure.finish(_:)();
                    v475 = v223;

                    v674 = v475;
                    v479 = _allocateUninitializedArray<A>(_:)();
                    v477 = v224;
                    v225 = NightingaleDPFLRunner.keyMetricsTrainingDurationS.unsafeMutableAddressor();
                    outlined init with copy of String(v225, v477);
                    v226 = v472;
                    v227 = v477;
                    v474 = MEMORY[0x277D839F8];
                    v477[5] = MEMORY[0x277D839F8];
                    v227[2] = v226;
                    v473 = v227 + 6;
                    v228 = NightingaleDPFLRunner.keyMetricsE2EDurationS.unsafeMutableAddressor();
                    outlined init with copy of String(v228, v473);
                    v229 = v475;
                    v230 = v477;
                    v477[11] = v474;
                    v230[8] = v229;
                    v476 = v230 + 12;
                    v231 = NightingaleDPFLRunner.keyNumSlices.unsafeMutableAddressor();
                    outlined init with copy of String(v231, v476);
                    v232 = v477;
                    v233 = v478;
                    v477[17] = MEMORY[0x277D83A90];
                    *(v232 + 28) = v233;
                    _finalizeUninitializedArray<A>(_:)();
                    Dictionary.init(dictionaryLiteral:)();
                    v234 = v480;
                    Dictionary.merge(_:uniquingKeysWith:)();
                    v481 = v234;
                    if (!v234)
                    {
                      v464 = &v311;
                      MEMORY[0x28223BE20](&v311);
                      *(&v311 - 2) = &v734;
                      NightingaleDPFLRunner.sendLocation<A>(location:force:work:)(12, 1, (&v311 - 4), MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
                      v465 = 0;
                      v466 = 0;
                      v460 = 0;
                      type metadata accessor for PFLTaskResult();
                      v459 = v734;

                      v461 = PFLTaskResult.__allocating_init(json:vector:)();

                      outlined destroy of Pregnancy?(v686);

                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      v462 = v461;
                      v463 = v465;
                      return v462;
                    }

                    goto LABEL_71;
                  }

                  lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
                  v454 = 0;
                  v455 = swift_allocError();
                  *v235 = 91;
                  swift_willThrow();
                  v456 = v454;

                  outlined destroy of Pregnancy?(v686);

                  v457 = v455;
                  v458 = v456;
                }

                else
                {
                  lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
                  v451 = 0;
                  v452 = swift_allocError();
                  *v236 = 89;
                  swift_willThrow();
                  v453 = v451;

                  outlined destroy of Pregnancy?(v686);

                  v457 = v452;
                  v458 = v453;
                }

LABEL_59:
                v292 = v637;
                v340 = v458;
                v422 = v457;
                v293 = v457;
                v718 = v422;
                v294 = Logging.default.unsafeMutableAddressor();
                v442 = *(v636 + 16);
                v441 = (v636 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
                v442(v292, v294, v634);
                v295 = v422;
                v348 = 7;
                v346 = swift_allocObject();
                *(v346 + 16) = v422;
                default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

                v358 = Logger.logObject.getter();
                v341 = v358;
                v357 = static os_log_type_t.error.getter();
                v342 = v357;
                v343 = 17;
                v352 = swift_allocObject();
                v344 = v352;
                *(v352 + 16) = 64;
                v353 = swift_allocObject();
                v345 = v353;
                *(v353 + 16) = 8;
                v347 = 32;
                v296 = swift_allocObject();
                v297 = v346;
                v349 = v296;
                *(v296 + 16) = partial apply for implicit closure #2 in NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:);
                *(v296 + 24) = v297;
                v298 = swift_allocObject();
                v299 = v349;
                v350 = v298;
                *(v298 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:);
                *(v298 + 24) = v299;
                v300 = swift_allocObject();
                v301 = v350;
                v356 = v300;
                v351 = v300;
                *(v300 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:);
                *(v300 + 24) = v301;
                v354 = _allocateUninitializedArray<A>(_:)();
                v355 = v302;

                v303 = v352;
                v304 = v355;
                *v355 = partial apply for closure #1 in OSLogArguments.append(_:);
                v304[1] = v303;

                v305 = v353;
                v306 = v355;
                v355[2] = partial apply for closure #1 in OSLogArguments.append(_:);
                v306[3] = v305;

                v307 = v355;
                v308 = v356;
                v355[4] = partial apply for closure #1 in OSLogArguments.append(_:);
                v307[5] = v308;
                _finalizeUninitializedArray<A>(_:)();

                if (os_log_type_enabled(v358, v357))
                {
                  v337 = v340;
                  v332 = static UnsafeMutablePointer.allocate(capacity:)();
                  v329 = v332;
                  v330 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd);
                  v335 = 1;
                  v333 = createStorage<A>(capacity:type:)(1);
                  v331 = v333;
                  v334 = createStorage<A>(capacity:type:)(0);
                  v714[0] = v332;
                  v713 = v333;
                  v712 = v334;
                  v336 = v714;
                  serialize(_:at:)(2, v714);
                  serialize(_:at:)(v335, v336);
                  v309 = v337;
                  v710 = partial apply for closure #1 in OSLogArguments.append(_:);
                  v711 = v344;
                  closure #1 in osLogInternal(_:log:type:)(&v710, v336, &v713, &v712);
                  v338 = v309;
                  v339 = v309;
                  if (v309)
                  {
                    v327 = 0;

                    __break(1u);
                  }

                  else
                  {
                    v710 = partial apply for closure #1 in OSLogArguments.append(_:);
                    v711 = v345;
                    closure #1 in osLogInternal(_:log:type:)(&v710, v714, &v713, &v712);
                    v325 = 0;
                    v326 = 0;
                    v710 = partial apply for closure #1 in OSLogArguments.append(_:);
                    v711 = v351;
                    closure #1 in osLogInternal(_:log:type:)(&v710, v714, &v713, &v712);
                    v323 = 0;
                    v324 = 0;
                    _os_log_impl(&dword_25C4D8000, v341, v342, "Error executing Morpheus program for eval: %@.", v329, 0xCu);
                    destroyStorage<A>(_:count:)(v331, 1, v330);
                    destroyStorage<A>(_:count:)(v334, 0, MEMORY[0x277D84F70] + 8);
                    MEMORY[0x25F8899D0](v329, MEMORY[0x277D84B78]);

                    v328 = v323;
                  }
                }

                else
                {

                  v328 = v340;
                }

                v426 = v328;

                v548(v637, v634);
                if ((HyperParams.evalFallbackToNative.getter() & 1) == 0)
                {
                  v310 = v422;
                  v321 = _convertErrorToNSError(_:)();
                  v322 = [v321 code];

                  NightingaleDPFLRunner.sendLocation(_:_:)(NightingaleTraining_NightingaleDReachLocation_trainingCompleted, v322);
                  swift_willThrow();

                  outlined destroy of [(start: UInt32, end: UInt32)]();
                  result = v422;
                  v362 = v422;
                  return result;
                }

                v238 = v639;
                v239 = Logging.default.unsafeMutableAddressor();
                v442(v238, v239, v634);
                v446 = Logger.logObject.getter();
                v443 = v446;
                v445 = static os_log_type_t.info.getter();
                v444 = v445;
                v447 = _allocateUninitializedArray<A>(_:)();
                if (os_log_type_enabled(v446, v445))
                {
                  v439 = v426;
                  v431 = static UnsafeMutablePointer.allocate(capacity:)();
                  v427 = v431;
                  v428 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd);
                  v429 = 0;
                  v432 = createStorage<A>(capacity:type:)(0);
                  v430 = v432;
                  v433 = createStorage<A>(capacity:type:)(v429);
                  v717 = v431;
                  v716 = v432;
                  v715 = v433;
                  v434 = 0;
                  v435 = &v717;
                  serialize(_:at:)(0, &v717);
                  serialize(_:at:)(v434, v435);
                  v714[1] = v447;
                  v436 = &v311;
                  MEMORY[0x28223BE20](&v311);
                  v437 = &v311 - 6;
                  *(&v311 - 4) = v240;
                  *(&v311 - 3) = &v716;
                  *(&v311 - 2) = &v715;
                  v438 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd);
                  lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
                  v241 = v439;
                  Sequence.forEach(_:)();
                  v440 = v241;
                  if (v241)
                  {
                    __break(1u);
                  }

                  else
                  {
                    _os_log_impl(&dword_25C4D8000, v443, v444, "Fallback to use native eval.", v427, 2u);
                    v424 = 0;
                    destroyStorage<A>(_:count:)(v430, 0, v428);
                    destroyStorage<A>(_:count:)(v433, v424, MEMORY[0x277D84F70] + 8);
                    MEMORY[0x25F8899D0](v427, MEMORY[0x277D84B78]);

                    v425 = v440;
                  }
                }

                else
                {

                  v425 = v426;
                }

                v423 = v425;

                v548(v639, v634);

                v596 = v423;
                goto LABEL_51;
              }
            }

            lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
            v448 = 0;
            v449 = swift_allocError();
            *v237 = 86;
            swift_willThrow();
            v450 = v448;
            outlined destroy of Pregnancy?(v686);

            v457 = v449;
            v458 = v450;
            goto LABEL_59;
          }
        }

        v320 = 0;
        v319 = v719[0];

        v457 = v319;
        v458 = v320;
        goto LABEL_59;
      }

      v596 = v583;
    }

    else
    {
      v596 = v603;
    }

LABEL_51:
    v421 = v596;
    goto LABEL_53;
  }

  v421 = v607;
LABEL_53:
  v407 = v421;
  v406 = &v743;
  outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(&v743, &v732);
  v408 = MEMORY[0x25F8895B0](v614, MEMORY[0x277D83A90]);
  v386 = v408;
  v731 = v408;

  v242 = HyperParams.batchSize.getter();
  static HIDPFLUtils.computeEffectiveTrainingSize(_:_:)(v408, v242);
  v409 = v243;
  v730 = v243;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SaySfGtMd);
  v387 = _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd);
  v729._rawValue = Dictionary.init(dictionaryLiteral:)();
  v388 = HyperParams.isDaySHRRequired()();
  v389 = *HyperParams.nightingaleDInputDaySHR10.unsafeMutableAddressor();

  v417 = &v729;
  transferFeatureToMLInputs(required:feature:stats:name:mlInputs:)(v388, v609, v608, v389, &v729);

  v390 = HyperParams.isNightSHRRequired()();
  v391 = *HyperParams.nightingaleDInputNightSHR10.unsafeMutableAddressor();

  transferFeatureToMLInputs(required:feature:stats:name:mlInputs:)(v390, v631, v630, v391, v417);

  v392 = HyperParams.isPSMRequired()();
  v393 = *HyperParams.nightingaleDInputPeriodStartMean.unsafeMutableAddressor();

  transferFeatureToMLInputs(required:feature:stats:name:mlInputs:)(v392, v629, v628, v393, v417);

  v394 = HyperParams.isPSSRequired()();
  v395 = *HyperParams.nightingaleDInputPeriodStartStd.unsafeMutableAddressor();

  transferFeatureToMLInputs(required:feature:stats:name:mlInputs:)(v394, v627, v626, v395, v417);

  v396 = HyperParams.isSWTRequired()();
  v397 = *HyperParams.nightingaleDInputAppleSleepingWristTemperature.unsafeMutableAddressor();

  transferFeatureToMLInputs(required:feature:stats:name:mlInputs:)(v396, v623, v622, v397, v417);

  PeriodStart = HyperParams.isDaysSinceLastPeriodStartRequired()();
  v399 = *HyperParams.nightingaleDInputDaysSinceLMS.unsafeMutableAddressor();

  transferFeatureToMLInputs(required:feature:stats:name:mlInputs:)(PeriodStart, v625, v624, v399, v417);

  v400 = HyperParams.isHRVRequired()();
  v401 = *HyperParams.nightingaleDInputHRV.unsafeMutableAddressor();

  transferFeatureToMLInputs(required:feature:stats:name:mlInputs:)(v400, v621, v620, v401, v417);

  v402 = HyperParams.isRespiratoryRateRequired()();
  v403 = *HyperParams.nightingaleDInputRespiratoryRate.unsafeMutableAddressor();

  transferFeatureToMLInputs(required:feature:stats:name:mlInputs:)(v402, v619, v618, v403, v417);

  v244 = HyperParams.isSpO2Required()();
  v245 = v661;
  v404 = v244;
  v405 = *HyperParams.nightingaleDInputSpO2.unsafeMutableAddressor();

  transferFeatureToMLInputs(required:feature:stats:name:mlInputs:)(v404, v617, v616, v405, v417);

  outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v406, &v728);
  v246 = v407;

  v411 = v743;
  v412 = v744;
  v413 = v745;
  v416 = v747;
  v247 = v748;
  v248 = v749;
  v249 = v750;
  v250 = v751;
  v251 = v752;
  v252 = v753;
  v253 = v754;
  v414 = v760;
  v415 = v761;
  v410 = &v311;
  v254 = MEMORY[0x28223BE20](v408);
  v255 = v411;
  v256 = v412;
  v257 = v413;
  v258 = v414;
  v259 = v415;
  v260 = v416;
  v418 = &v311;
  v261 = &v311 - 36;
  v261[2] = v262;
  v261[3] = v665;
  *(&v311 - 32) = v417;
  v263 = v660;
  *(v418 - 31) = v255;
  v264 = v612;
  *(v418 - 30) = v256;
  v265 = v611;
  *(v418 - 29) = v257;
  LODWORD(v256) = v610;
  v266 = v418;
  *(v418 - 28) = v267;
  v268 = v632;
  *(v266 - 27) = v260;
  *(v266 - 26) = v247;
  *(v266 - 25) = v248;
  *(v266 - 24) = v249;
  *(v266 - 23) = v250;
  *(v266 - 22) = v251;
  *(v266 - 21) = v252;
  *(v266 - 20) = v253;
  *(v266 - 19) = v269;
  *(v266 - 18) = v270;
  *(v266 - 17) = v271;
  *(v266 - 16) = v272;
  *(v266 - 15) = v273;
  *(v266 - 14) = v258;
  *(v266 - 13) = v259;
  *(v266 - 12) = v274;
  *(v266 - 11) = v275;
  *(v266 - 10) = v254;
  *(v266 - 9) = v263;
  *(v266 - 8) = v245;
  *(v266 - 7) = v276;
  *(v266 - 6) = v264;
  *(v266 - 5) = v265;
  *(v266 - 8) = v256;
  *(v266 - 3) = &v734;
  *(v266 - 2) = v268;
  NightingaleDPFLRunner.sendLocation<A>(location:force:work:)(11, 1, (&v311 - 36), MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
  v419 = v246;
  v420 = v246;
  if (v246)
  {
    v312 = v420;

    outlined destroy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    result = v312;
    v362 = v312;
  }

  else
  {
    v383 = 0;

    outlined destroy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])();

    v371 = NightingaleDPFLRunner.performanceMeasure.getter();
    v372 = 1;
    v370 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Training", 8uLL, 1)._object;
    dispatch thunk of PerformanceMeasure.finish(_:)();
    v375 = v277;

    v727 = v375;
    v374 = NightingaleDPFLRunner.performanceMeasure.getter();
    v373 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PluginE2E", 9uLL, v372)._object;
    dispatch thunk of PerformanceMeasure.finish(_:)();
    v378 = v278;

    v726 = v378;
    v279 = default argument 1 of NightingaleDPFLRunner.sendLocation(_:_:)();
    NightingaleDPFLRunner.sendLocation(_:_:)(NightingaleTraining_NightingaleDReachLocation_pluginCompleted, v279);
    v381 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd);
    v382 = _allocateUninitializedArray<A>(_:)();
    v380 = v280;
    v281 = NightingaleDPFLRunner.keyMetricsTrainingDurationS.unsafeMutableAddressor();
    outlined init with copy of String(v281, v380);
    v282 = v375;
    v283 = v380;
    v377 = MEMORY[0x277D839F8];
    v380[5] = MEMORY[0x277D839F8];
    v283[2] = v282;
    v376 = v283 + 6;
    v284 = NightingaleDPFLRunner.keyMetricsE2EDurationS.unsafeMutableAddressor();
    outlined init with copy of String(v284, v376);
    v285 = v378;
    v286 = v380;
    v380[11] = v377;
    v286[8] = v285;
    v379 = v286 + 12;
    v287 = NightingaleDPFLRunner.keyNumSlices.unsafeMutableAddressor();
    outlined init with copy of String(v287, v379);
    v288 = v380;
    v289 = v386;
    v380[17] = MEMORY[0x277D83B88];
    v288[14] = v289;
    _finalizeUninitializedArray<A>(_:)();
    v384 = Dictionary.init(dictionaryLiteral:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd);
    v290 = v383;
    Dictionary.merge(_:uniquingKeysWith:)();
    v385 = v290;
    if (!v290)
    {
      v367 = v734;
      v366 = v734;

      static HIDPFLUtils.checkMetrics(_:)();
      v368 = 0;
      v369 = 0;

      v364 = 0;
      type metadata accessor for PFLTaskResult();
      v363 = v734;

      v365 = PFLTaskResult.__allocating_init(json:vector:)();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      v462 = v365;
      v463 = v368;
      return v462;
    }

    __break(1u);
    v311 = v369;

    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    return v311;
  }

  return result;
}

uint64_t closure #1 in NightingaleDPFLRunner.runEvals(evalModels:task:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  type metadata accessor for HyperParams();
  HyperParams.recipeForModel(model:)(v5, v4);
  v2 = _dictionaryUpCast<A, B, C, D>(_:)();
  v6 = HyperParams.__allocating_init(recipe:)(v2);

  result = v6;
  *a2 = v6;
  return result;
}

uint64_t closure #2 in NightingaleDPFLRunner.runEvals(evalModels:task:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:)@<X0>(uint64_t *a1@<X2>, Swift::String_optional *a2@<X8>)
{
  v2._countAndFlagsBits = HyperParams.modelPath.getter();
  v3 = PFLTask.evalModelPath(path:)(v2);

  if (v3.value._object)
  {

    *a2 = v3;
  }

  else
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v6 = swift_allocError();
    *v4 = 9;
    swift_willThrow();
    result = v6;
    *a1 = v6;
  }

  return result;
}

void *closure #6 in NightingaleDPFLRunner.runEvals(evalModels:task:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int a11, uint64_t a12)
{
  v13 = MEMORY[0x28223BE20](a1);
  v473 = v12;
  v459 = v14;
  v458 = v15;
  v457 = v16;
  v456 = v17;
  v19 = v18;
  v449 = v18;
  v455 = v20;
  v461 = v21;
  v469 = v13;
  v460 = a12;
  v450 = a12;
  v467 = a11;
  v451 = a11;
  v466 = a10;
  v452 = a10;
  v465 = a9;
  v453 = a9;
  v454 = 0;
  v556 = 0;
  v555 = 0;
  v554 = 0;
  v553 = 0;
  v552 = 0;
  v551 = 0;
  v550 = 0;
  v549 = 0;
  v548 = 0;
  v547 = 0;
  v546 = 0;
  v545[1] = 0;
  v545[0] = 0;
  v541 = 0;
  v540 = 0;
  v539 = 0;
  v538 = 0;
  v537 = 0;
  v536 = 0;
  v535 = 0;
  v534 = 0;
  v533 = 0;
  v532 = 0;
  v531 = 0;
  v530 = 0;
  v529 = 0;
  v524 = 0;
  v523 = 0;
  v517 = 0;
  v508 = 0.0;
  v507 = 0;
  v503 = 0;
  v502 = 0;
  v501 = 0;
  v494 = 0;
  v486 = 0;
  v483 = 0.0;
  v480 = 0;
  v22 = *v18;
  v23 = v18[1];
  v24 = v18[2];
  v25 = v18[3];
  v26 = v18[4];
  v27 = v18[5];
  v28 = v18[6];
  v29 = v18[7];
  v30 = v19[8];
  v31 = v19[9];
  v32 = v19[10];
  v33 = v19[11];
  v34 = v19[12];
  v35 = v19[13];
  v36 = v19[14];
  v37 = v19[15];
  v38 = v19[16];
  v39 = v19[17];
  v40 = v19[18];
  v41 = v19[19];
  v42 = v19[20];
  v557 = v22;
  v558 = v23;
  v559 = v24;
  v560 = v25;
  v561 = v26;
  v562 = v27;
  v563 = v28;
  v564 = v29;
  v565 = v30;
  v566 = v31;
  v567 = v32;
  v568 = v33;
  v569 = v34;
  v570 = v35;
  v571 = v36;
  v572 = v37;
  v573 = v38;
  v574 = v39;
  v575 = v40;
  v576 = v41;
  v577 = v42;
  v462 = type metadata accessor for EspressoFunction();
  v463 = *(v462 - 8);
  v464 = v463;
  v43 = MEMORY[0x28223BE20](v469);
  v468 = v104 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v556 = v43;
  v555 = v45;
  v554 = v46;
  v553 = v47;
  v552 = v48;
  v551 = v49;
  v550 = v50;
  v549 = a9;
  v548 = a10;
  v547 = a11;
  v546 = v51;

  v544 = v469;
  v471 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
  v470 = v471;
  v472 = lazy protocol witness table accessor for type [String] and conformance [A]();
  Collection<>.makeIterator()();
  for (i = v473; ; i = v158)
  {
    v446 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySSGGMd);
    IndexingIterator.next()();
    v447 = v542;
    v448 = v543;
    if (!v543)
    {
      v443 = v446;
      result = v545;
      outlined destroy of [(start: UInt32, end: UInt32)]();
      return result;
    }

    v444 = v447;
    v445 = v448;
    v394 = v448;
    v395 = v447;
    v437 = v446;
    v540 = v447;
    v541 = v448;
    v397 = HyperParams.recipeForModel(model:)(v447, v448);
    v396 = v397;
    v539 = v397;
    type metadata accessor for HyperParams();

    v435 = MEMORY[0x277D837D0];
    v436 = MEMORY[0x277D837E0];
    v53 = _dictionaryUpCast<A, B, C, D>(_:)();
    v54 = HyperParams.__allocating_init(recipe:)(v53);
    v405 = v54;
    v398 = v54;

    v538 = v54;
    v410 = HyperParams.labelName.getter();
    v409 = v55;
    v399 = v410;
    v400 = v55;
    v536 = v410;
    v537 = v55;
    v401 = HyperParams.lossName.getter();
    v402 = v56;
    v534 = v401;
    v535 = v56;
    v403 = HyperParams.outputName.getter();
    v404 = v57;
    v532 = v403;
    v533 = v57;
    v406 = HyperParams.weightNames.getter();
    v531 = v406;
    v407 = HyperParams.modelRepresentation.getter();
    v408 = v58;
    v529 = v407;
    v530 = v58;

    outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(&v557, v528);
    v431 = v557;
    v430 = v558;
    v429 = v559;
    v428 = v560;
    v427 = v561;
    v426 = v562;
    v425 = v563;
    v424 = v564;
    v423 = v565;
    v422 = v566;
    v421 = v567;
    v420 = v568;
    v419 = v569;
    v418 = v570;
    v417 = v571;
    v416 = v572;
    v415 = v573;
    v414 = v574;
    v413 = v575;
    v412 = v577;
    v527 = v576;
    v525 = v410;
    v526 = v409;
    v411 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSaySfGGMd);
    Dictionary.subscript.setter();

    v434 = *v455;
    v432 = v434;

    v439 = v104;
    MEMORY[0x28223BE20](v104);
    v433 = &v104[-4];
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd);
    v60 = v437;
    v438 = v59;
    v61 = Dictionary.mapValues<A>(_:)();
    v440 = v60;
    v441 = v61;
    v442 = v439;
    if (v60)
    {
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      v141 = v350;
      v133 = v349;
      v134 = v348;
      v135 = v347;
      v136 = v346;
      v137 = v345;
      v138 = v344;
      v139 = v343;
      v140 = v342;
      v132 = v341;
      v131 = v340;
      v130 = v338;

      (*(v464 + 8))(v468, v462);
      __swift_destroy_boxed_opaque_existential_1(v514);

      __swift_destroy_boxed_opaque_existential_1(v522);

      outlined destroy of [(start: UInt32, end: UInt32)]();
      result = v141;
      v379 = v141;
      return result;
    }

    v383 = v441;

    v524 = v383;
    v62._countAndFlagsBits = HyperParams.modelPath.getter();
    object = v62._object;
    v63 = PFLTask.evalModelPath(path:)(v62);
    v384 = v63.value._object;
    v382 = v63;

    v385 = v383;
    v386 = v394;
    v387 = v396;
    v388 = v398;
    v389 = v400;
    v390 = v402;
    v391 = v404;
    v392 = v406;
    v393 = v408;
    if (!v384)
    {
      v370 = v393;
      v371 = v392;
      v372 = v391;
      v373 = v390;
      v374 = v389;
      v375 = v388;
      v376 = v387;
      v377 = v386;
      v369 = v385;
      lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
      v368 = 0;
      v378 = swift_allocError();
      *v64 = 9;
      swift_willThrow();

      outlined destroy of [(start: UInt32, end: UInt32)]();
      result = v378;
      v379 = v378;
      return result;
    }

    v380 = v382;
    v363 = v382.value._object;
    countAndFlagsBits = v382.value._countAndFlagsBits;
    v523 = v382;
    v65 = HyperParams.modelRepresentationEIR.unsafeMutableAddressor();
    v365 = *v65;
    v366 = *(v65 + 1);

    v367 = MEMORY[0x25F889340](v407, v408, v365, v366);

    if (v367)
    {
      v362 = type metadata accessor for EspressoEIRTrainer();
      NightingaleDPFLRunner.performanceMeasure.getter();
      v66 = EspressoEIRTrainer.__allocating_init(_:)();
      v475[3] = v362;
      v475[4] = MEMORY[0x277D413C0];
      v475[0] = v66;
      outlined init with take of HealthDataQuery(v475, v522);
    }

    else
    {
      v361 = type metadata accessor for EspressoMILTrainer();
      NightingaleDPFLRunner.performanceMeasure.getter();
      v67 = EspressoMILTrainer.__allocating_init(_:)();
      v521[3] = v361;
      v521[4] = MEMORY[0x277D413D0];
      v521[0] = v67;
      outlined init with take of HealthDataQuery(v521, v522);
    }

    v358 = v440;
    v353 = v461 + 24;
    v354 = 32;
    v352 = &v520;
    v357 = 0;
    swift_beginAccess();
    v351 = *(v461 + 24);

    swift_endAccess();
    v355 = &v519;
    swift_beginAccess();
    v356 = *(v461 + 24);

    swift_endAccess();
    v68 = v358;
    v518 = v356;
    v70 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #5 in NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:), v357, v470, MEMORY[0x277D837D0], MEMORY[0x277D84A98], v472, MEMORY[0x277D84AC0], v69);
    v359 = v68;
    v360 = v70;
    if (v68)
    {
      goto LABEL_35;
    }

    v322 = v360;
    v332 = 0;
    outlined destroy of [(start: UInt32, end: UInt32)]();
    v330 = MEMORY[0x277D837D0];
    v326 = static Array.+ infix(_:_:)();

    v323 = _allocateUninitializedArray<A>(_:)();
    v324 = v71;

    v72 = v323;
    v73 = v324;
    v74 = v400;
    *v324 = v399;
    v73[1] = v74;
    _finalizeUninitializedArray<A>(_:)();
    v325 = v72;
    v331 = static Array.+ infix(_:_:)();
    v335 = v331;

    v517 = v331;
    v327 = v514;
    outlined init with copy of HealthDataQuery(v522, v514);
    v333 = v515;
    v334 = v516;
    __swift_project_boxed_opaque_existential_1(v327, v515);
    static EspressoFunction.evaluation.getter();
    v328 = _allocateUninitializedArray<A>(_:)();
    v329 = v75;

    v76 = v329;
    v77 = v402;
    *v329 = v401;
    v76[1] = v77;

    v78 = v328;
    v79 = v329;
    v80 = v404;
    v329[2] = v403;
    v79[3] = v80;
    _finalizeUninitializedArray<A>(_:)();
    v81 = v332;
    v336 = v78;
    dispatch thunk of EspressoTrainer.load(path:functions:inputs:outputs:weights:)();
    v337 = v81;
    v338 = v335;
    v339 = v336;
    v340 = v363;
    v341 = v383;
    v342 = v394;
    v343 = v396;
    v344 = v398;
    v345 = v400;
    v346 = v402;
    v347 = v404;
    v348 = v406;
    v349 = v408;
    v350 = v81;
    if (v81)
    {
      goto LABEL_36;
    }

    v306 = 0;

    (*(v464 + 8))(v468, v462);
    __swift_destroy_boxed_opaque_existential_1(v514);
    v305 = v511;
    outlined init with copy of HealthDataQuery(v522, v511);
    v307 = v512;
    v308 = v513;
    __swift_project_boxed_opaque_existential_1(v305, v512);
    v82 = v306;
    v509 = 0;
    v510 = 1;
    dispatch thunk of EspressoTrainer.finalize(batchSize:learningRate:)();
    v309 = v82;
    v310 = v335;
    v311 = v363;
    v312 = v383;
    v313 = v394;
    v314 = v396;
    v315 = v398;
    v316 = v400;
    v317 = v402;
    v318 = v404;
    v319 = v406;
    v320 = v408;
    v321 = v82;
    if (v82)
    {
      v129 = v321;
      v121 = v320;
      v122 = v319;
      v123 = v318;
      v124 = v317;
      v125 = v316;
      v126 = v315;
      v127 = v314;
      v128 = v313;
      v120 = v312;
      v119 = v311;
      v118 = v310;
      __swift_destroy_boxed_opaque_existential_1(v511);

      __swift_destroy_boxed_opaque_existential_1(v522);

      outlined destroy of [(start: UInt32, end: UInt32)]();
      result = v129;
      v379 = v129;
      return result;
    }

    v285 = 0;
    __swift_destroy_boxed_opaque_existential_1(v511);
    v508 = 0.0;
    v507 = Array.init()();
    v284 = v504;
    outlined init with copy of HealthDataQuery(v522, v504);
    v287 = v505;
    v288 = v506;
    __swift_project_boxed_opaque_existential_1(v284, v505);
    v83 = v285;
    v286 = *v455;
    v289 = v286;

    v84 = dispatch thunk of EspressoTrainer.eval(_:featureSizes:numSamples:)();
    v290 = v83;
    v291 = v84;
    v292 = v289;
    v293 = v335;
    v294 = v363;
    v295 = v383;
    v296 = v394;
    v297 = v396;
    v298 = v398;
    v299 = v400;
    v300 = v402;
    v301 = v404;
    v302 = v406;
    v303 = v408;
    v304 = v83;
    if (v83)
    {
      v117 = v304;
      v109 = v303;
      v110 = v302;
      v111 = v301;
      v112 = v300;
      v113 = v299;
      v114 = v298;
      v115 = v297;
      v116 = v296;
      v108 = v295;
      v107 = v294;
      v106 = v293;

      __swift_destroy_boxed_opaque_existential_1(v504);
      outlined destroy of [(start: UInt32, end: UInt32)]();

      __swift_destroy_boxed_opaque_existential_1(v522);

      outlined destroy of [(start: UInt32, end: UInt32)]();
      result = v117;
      v379 = v117;
      return result;
    }

    v278 = v291;

    v503 = v278;
    __swift_destroy_boxed_opaque_existential_1(v504);

    v500 = v278;
    v279 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDySSSaySfGGGMd);
    lazy protocol witness table accessor for type [[String : [Float]]] and conformance [A]();
    Collection<>.makeIterator()();
    v280 = 0.0;
    v281 = 0.0;
    v282 = 0.0;
    for (j = v290; ; j = v196)
    {
      v271 = j;
      v272 = v282;
      v274 = v281;
      v273 = v280;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySDySSSaySfGGGGMd);
      IndexingIterator.next()();
      v275 = v499;
      v276 = v273;
      v277 = v274;
      if (!v499)
      {
        break;
      }

      v270 = v275;
      v265 = v275;
      v486 = v275;

      v484[0] = v401;
      v484[1] = v402;
      v266 = v484;
      MEMORY[0x25F8891D0](&v485);
      outlined destroy of DefaultStringInterpolation();
      v267 = v485;
      if (v485)
      {
        v264 = v267;
        v259 = v267;
        v478 = v267;
        lazy protocol witness table accessor for type [Float] and conformance [A]();
        Collection.first.getter();
        v260 = v476;
        v261 = v477;

        v262 = v260;
        v263 = v261;
      }

      else
      {
        v262 = 0.0;
        v263 = 1;
      }

      v245 = v262;
      v246 = v278;
      v247 = v335;
      v248 = v363;
      v249 = v383;
      v250 = v394;
      v251 = v396;
      v252 = v398;
      v253 = v400;
      v254 = v402;
      v255 = v404;
      v256 = v406;
      v257 = v408;
      v258 = v265;
      if (v263)
      {
        v230 = v258;
        v235 = v257;
        v236 = v256;
        v237 = v255;
        v238 = v254;
        v239 = v253;
        v240 = v252;
        v241 = v251;
        v242 = v250;
        v234 = v249;
        v233 = v248;
        v232 = v247;
        v231 = v246;
        lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
        v229 = 0;
        v243 = swift_allocError();
        *v85 = 10;
        swift_willThrow();

        outlined destroy of [(start: UInt32, end: UInt32)]();

        outlined destroy of [(start: UInt32, end: UInt32)]();

        __swift_destroy_boxed_opaque_existential_1(v522);

        outlined destroy of [(start: UInt32, end: UInt32)]();
        result = v243;
        v379 = v243;
        return result;
      }

      v244 = v245;
      v483 = v245;
      v213 = v272 + v245;
      v508 = v272 + v245;

      v481[0] = v403;
      v481[1] = v404;
      v214 = v481;
      MEMORY[0x25F8891D0](&v482);
      outlined destroy of DefaultStringInterpolation();
      v215 = v482;
      v216 = v278;
      v217 = v335;
      v218 = v363;
      v219 = v383;
      v220 = v394;
      v221 = v396;
      v222 = v398;
      v223 = v400;
      v224 = v402;
      v225 = v404;
      v226 = v406;
      v227 = v408;
      v228 = v265;
      if (!v482)
      {
        v198 = v228;
        v203 = v227;
        v204 = v226;
        v205 = v225;
        v206 = v224;
        v207 = v223;
        v208 = v222;
        v209 = v221;
        v210 = v220;
        v202 = v219;
        v201 = v218;
        v200 = v217;
        v199 = v216;
        lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
        v197 = 0;
        v211 = swift_allocError();
        *v86 = 26;
        swift_willThrow();

        outlined destroy of [(start: UInt32, end: UInt32)]();

        outlined destroy of [(start: UInt32, end: UInt32)]();

        __swift_destroy_boxed_opaque_existential_1(v522);

        outlined destroy of [(start: UInt32, end: UInt32)]();
        result = v211;
        v379 = v211;
        return result;
      }

      v212 = v215;
      v195 = v215;
      v196 = v271;
      v480 = v215;

      v479 = v195;
      lazy protocol witness table accessor for type [Float] and conformance [A]();
      Array.append<A>(contentsOf:)();

      v280 = v213;
      v281 = v213;
      v282 = v213;
    }

    v268 = v277;
    v269 = v276;
    outlined destroy of [(start: UInt32, end: UInt32)]();
    if (MEMORY[0x25F8895B0](v278, v411) > 0)
    {
      v87 = MEMORY[0x25F8895B0](v278, v411);
      v508 = v268 / v87;
      v194 = v508;
    }

    else
    {
      v194 = v269;
    }

    v163 = v194;
    v174 = v271;
    v171 = v507;
    v175 = v507;

    v172 = v576;
    v173 = v575;
    v166 = 1;
    v165 = 1;
    v497 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v498 = v88;
    v89 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, v166);
    v164 = v89._object;
    v168 = &v497;
    MEMORY[0x25F889DE0](v89._countAndFlagsBits);

    v495 = v395;
    v496 = v394;
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v90 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("_", v165, v166);
    v167 = v90._object;
    MEMORY[0x25F889DE0](v90._countAndFlagsBits);

    v170 = v497;
    v169 = v498;

    outlined destroy of DefaultStringInterpolation();
    v91 = MEMORY[0x25F889320](v170, v169);
    v92 = v174;
    v176 = v93;
    v94 = static NightingaleDMetricsProcessor.generateMetrics(task:hyperParams:outputs:labels:historicalPeriods:sliceEndDays:pregnancies:today:metricPrefix:)(v457, v461, v171, v172, v453, v173, v452, v451, v91, v93);
    v177 = v92;
    v178 = v94;
    v179 = v175;
    v180 = v176;
    v181 = v278;
    v182 = v335;
    v183 = v363;
    v184 = v383;
    v185 = v394;
    v186 = v396;
    v187 = v398;
    v188 = v400;
    v189 = v402;
    v190 = v404;
    v191 = v406;
    v192 = v408;
    v193 = v92;
    if (v92)
    {
      v105 = v193;
      v104[5] = v192;
      v104[6] = v191;
      v104[7] = v190;
      v104[8] = v189;
      v104[9] = v188;
      v104[10] = v187;
      v104[11] = v186;
      v104[12] = v185;
      v104[4] = v184;
      v104[3] = v183;
      v104[2] = v182;
      v104[1] = v181;
      v104[0] = v179;

      outlined destroy of [(start: UInt32, end: UInt32)]();

      __swift_destroy_boxed_opaque_existential_1(v522);

      outlined destroy of [(start: UInt32, end: UInt32)]();
      result = v105;
      v379 = v105;
      return result;
    }

    v160 = v178;
    v159 = 0;

    v494 = v160;

    v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd);
    v96 = v159;
    v161 = v95;
    Dictionary.merge(_:uniquingKeysWith:)();
    v162 = v96;
    if (v96)
    {
      break;
    }

    v158 = 0;
    v152 = 1;
    v143 = 1;
    v492 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v493 = v97;
    v153 = "";
    v151 = 0;
    v98 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, v152);
    v142 = v98._object;
    v155 = &v492;
    MEMORY[0x25F889DE0](v98._countAndFlagsBits);

    v491[2] = v395;
    v491[3] = v394;
    v147 = MEMORY[0x277D837D0];
    v148 = MEMORY[0x277D83838];
    v149 = MEMORY[0x277D83830];
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v99 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("_", v143, v152);
    v144 = v99._object;
    MEMORY[0x25F889DE0](v99._countAndFlagsBits);

    v100 = NightingaleDPFLRunner.keyMetricsLossBeforeTraining.unsafeMutableAddressor();
    v145 = *v100;
    v146 = *(v100 + 1);

    v491[0] = v145;
    v491[1] = v146;
    v150 = v491;
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    outlined destroy of DefaultStringInterpolation();
    v101 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v153, v151, v152);
    v154 = v101._object;
    MEMORY[0x25F889DE0](v101._countAndFlagsBits);

    v157 = v492;
    v156 = v493;

    outlined destroy of DefaultStringInterpolation();
    v102 = MEMORY[0x25F889320](v157, v156);
    v490 = MEMORY[0x277D83A90];
    v489 = v163;
    v487 = v102;
    v488 = v103;
    Dictionary.subscript.setter();

    outlined destroy of [(start: UInt32, end: UInt32)]();

    __swift_destroy_boxed_opaque_existential_1(v522);
  }

  result = 0;
  __break(1u);
  return result;
}

Swift::Void __swiftcall NightingaleDPFLRunner.sendLocation(_:_:)(NightingaleTraining::NightingaleDReachLocation a1, Swift::Int a2)
{
  v15 = a1;
  v14 = a2;
  v13 = v2;
  v6 = NightingaleDPFLRunner.taskId.getter();
  v10 = v3;
  v12[1] = a1;
  lazy protocol witness table accessor for type NightingaleDReachLocation and conformance NightingaleDReachLocation();
  v7 = String.init<A>(describing:)();
  v9 = v4;
  NightingaleDPFLRunner.useCase.getter(v12);
  v11 = v12[0];
  static NightingaleTelemetry.sendNightingaleReachTelemetryLazy(taskId:location:useCase:errorCode:)(v6, v10, v7, v9, &v11, a2);
}

uint64_t NightingaleDPFLRunner.sendLocationAsync<A>(location:force:work:)(uint64_t a1, char a2, char a3, int *a4, uint64_t a5, uint64_t a6)
{
  v8 = v6;
  v14 = v8;
  *(v7 + 72) = v8;
  *(v7 + 64) = a6;
  *(v7 + 114) = a3 & 1;
  *(v7 + 113) = a2;
  *(v7 + 56) = a1;
  *(v7 + 32) = v7;
  *(v7 + 112) = 0;
  *(v7 + 120) = 0;
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 40) = 0;
  *(v7 + 48) = 0;
  *(v7 + 80) = *(a6 - 8);
  v18 = swift_task_alloc();
  *(v7 + 88) = v18;
  *(v7 + 112) = a2;
  *(v7 + 120) = a3 & 1;
  *(v7 + 16) = a4;
  *(v7 + 24) = a5;
  *(v7 + 40) = v14;
  v17 = (a4 + *a4);
  v10 = swift_task_alloc();
  *(v16 + 96) = v10;
  *v10 = *(v16 + 32);
  v10[1] = NightingaleDPFLRunner.sendLocationAsync<A>(location:force:work:);

  return v17(v18);
}

uint64_t NightingaleDPFLRunner.sendLocationAsync<A>(location:force:work:)()
{
  v4 = *v1;
  *(v4 + 32) = *v1;
  *(v4 + 104) = v0;

  if (v0)
  {
    v2 = NightingaleDPFLRunner.sendLocationAsync<A>(location:force:work:);
  }

  else
  {
    v2 = NightingaleDPFLRunner.sendLocationAsync<A>(location:force:work:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v1 = *(v0 + 114);
  *(v0 + 32) = v0;
  if (v1)
  {
    NightingaleDPFLRunner.sendLocation(_:_:)(*(v7 + 113), 0);
  }

  v6 = *(v7 + 88);
  v5 = *(v7 + 64);
  v4 = *(v7 + 80);
  (*(v4 + 16))(*(v7 + 56));
  (*(v4 + 8))(v6, v5);

  v2 = *(*(v7 + 32) + 8);

  return v2();
}

{
  v8 = *(v0 + 104);
  v6 = *(v0 + 113);
  *(v0 + 32) = v0;
  v1 = v8;
  *(v0 + 48) = v8;
  v2 = v8;
  v5 = _convertErrorToNSError(_:)();
  v7 = [v5 code];
  MEMORY[0x277D82BD8](v5);
  NightingaleDPFLRunner.sendLocation(_:_:)(v6, v7);

  swift_willThrow();

  v3 = *(*(v9 + 32) + 8);

  return v3();
}

void NightingaleDPFLRunner.sendLocation<A>(location:force:work:)(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v15 = a5;
  v16 = a1;
  v17 = a2;
  v19 = a3;
  v18 = a4;
  v23 = v5;
  v33 = 0;
  v32 = 0;
  v31 = 0;
  v29 = 0;
  v30 = 0;
  v28 = 0;
  v27 = 0;
  v34 = a4;
  v20 = *(a4 - 8);
  v21 = a4 - 8;
  v22 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v24 = &v11 - v22;
  v33 = &v11 - v22;
  v32 = MEMORY[0x28223BE20](a1);
  v31 = v7 & 1;
  v29 = v8;
  v30 = v19;
  v28 = v5;
  v8();
  v25 = v6;
  v26 = v6;
  if (v6)
  {
    v14 = v26;
    v9 = v26;
    v27 = v14;
    v10 = v14;
    v12 = _convertErrorToNSError(_:)();
    v13 = [v12 code];
    MEMORY[0x277D82BD8](v12);
    NightingaleDPFLRunner.sendLocation(_:_:)(v16, v13);

    swift_willThrow();
  }

  else
  {
    if (v17)
    {
      NightingaleDPFLRunner.sendLocation(_:_:)(v16, 0);
    }

    (*(v20 + 16))(v15, v24, v18);
    (*(v20 + 8))(v24, v18);
  }
}

uint64_t NightingaleDPFLRunner.queryPregnancies(hyperParams:)(uint64_t a1)
{
  *(v2 + 184) = v1;
  *(v2 + 176) = a1;
  *(v2 + 96) = v2;
  *(v2 + 104) = 0;
  *(v2 + 112) = 0;
  *(v2 + 120) = 0;
  *(v2 + 128) = 0;
  *(v2 + 144) = 0;
  *(v2 + 160) = 0;
  *(v2 + 400) = 0;
  v3 = type metadata accessor for Logger();
  *(v2 + 192) = v3;
  *(v2 + 200) = *(v3 - 8);
  *(v2 + 208) = swift_task_alloc();
  *(v2 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV5lower_AC5uppertMd);
  *(v2 + 224) = swift_task_alloc();
  *(v2 + 232) = swift_task_alloc();
  *(v2 + 240) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation4DateVGMd);
  *(v2 + 248) = swift_task_alloc();
  v4 = type metadata accessor for Calendar.Component();
  *(v2 + 256) = v4;
  *(v2 + 264) = *(v4 - 8);
  *(v2 + 272) = swift_task_alloc();
  v5 = type metadata accessor for Calendar();
  *(v2 + 280) = v5;
  *(v2 + 288) = *(v5 - 8);
  *(v2 + 296) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  *(v2 + 304) = swift_task_alloc();
  v6 = type metadata accessor for Date();
  *(v2 + 312) = v6;
  *(v2 + 320) = *(v6 - 8);
  *(v2 + 328) = swift_task_alloc();
  *(v2 + 336) = swift_task_alloc();
  *(v2 + 344) = swift_task_alloc();
  *(v2 + 104) = a1;
  *(v2 + 112) = v1;

  return MEMORY[0x2822009F8](NightingaleDPFLRunner.queryPregnancies(hyperParams:), 0);
}

{
  v5 = *v2;
  v5[12] = *v2;
  v5[48] = a1;
  v5[49] = v1;

  if (v1)
  {
    v3 = NightingaleDPFLRunner.queryPregnancies(hyperParams:);
  }

  else
  {
    outlined destroy of ClosedRange<Date>(v5[31]);

    v3 = NightingaleDPFLRunner.queryPregnancies(hyperParams:);
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t NightingaleDPFLRunner.queryPregnancies(hyperParams:)()
{
  v33 = v0;
  v35 = v0[34];
  v34 = v0[33];
  v36 = v0[32];
  v0[12] = v0;
  static Calendar.current.getter();
  (*(v34 + 104))(v35, *MEMORY[0x277CC9968], v36);
  result = HyperParams.maximumDays.getter();
  if (__OFSUB__(0, result))
  {
    __break(1u);
  }

  else
  {
    v23 = v0[42];
    v32 = v0[39];
    v31 = v0[38];
    v29 = v0[37];
    v30 = v0[35];
    v26 = v0[34];
    v27 = v0[32];
    v22 = v0[40];
    v28 = v0[36];
    v25 = v0[33];
    Date.init()();
    default argument 3 of Calendar.date(byAdding:value:to:wrappingComponents:)();
    Calendar.date(byAdding:value:to:wrappingComponents:)();
    v24 = *(v22 + 8);
    v0[44] = v24;
    v0[45] = (v22 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v24(v23, v32);
    (*(v25 + 8))(v26, v27);
    (*(v28 + 8))(v29, v30);
    if ((*(v22 + 48))(v31, 1, v32) == 1)
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v18 = v0[23];
    v3 = (v0[40] + 32);
    v17 = *v3;
    (*v3)();
    outlined init with copy of HealthDataQuery(v18 + 48, (v0 + 2));
    v19 = v0[5];
    v20 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v19);
    v21 = HyperParams.pregnancySourceList.getter();
    v0[46] = v21;
    Date.init()();
    lazy protocol witness table accessor for type Date and conformance Date();
    if ((dispatch thunk of static Comparable.<= infix(_:_:)() & 1) == 0)
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    else
    {
      v14 = v0[41];
      v15 = v0[39];
      v12 = v0[31];
      v11 = v0[30];
      v9 = v0[29];
      v13 = v0[28];
      v10 = v0[27];
      v4 = (v0[40] + 16);
      v7 = *v4;
      (*v4)();
      (v7)(v9 + *(v10 + 48), v14, v15);
      outlined init with copy of (lower: Date, upper: Date)(v9, v13);
      v8 = v13 + *(v10 + 48);
      (v17)(v12);
      v24(v8, v15);
      outlined init with take of (lower: Date, upper: Date)(v9, v13);
      (v17)(v12 + *(v11 + 36), v13 + *(v10 + 48), v15);
      v24(v13, v15);
      v24(v14, v15);
      v16 = (*(v20 + 8) + **(v20 + 8));
      v5 = swift_task_alloc();
      v33[47] = v5;
      *v5 = v33[12];
      v5[1] = NightingaleDPFLRunner.queryPregnancies(hyperParams:);
      v6 = v33[31];

      return v16(v21, v6, v19, v20);
    }
  }

  return result;
}

{
  v58 = v0;
  v43 = v0[48];
  v1 = v0[26];
  v41 = v0[25];
  v42 = v0[24];
  v0[12] = v0;
  v0[15] = v43;
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  v2 = Logging.default.unsafeMutableAddressor();
  (*(v41 + 16))(v1, v2, v42);

  v44 = swift_allocObject();
  *(v44 + 16) = v43;

  v45 = swift_allocObject();
  *(v45 + 16) = partial apply for implicit closure #1 in NightingaleDPFLRunner.queryPregnancies(hyperParams:);
  *(v45 + 24) = v44;

  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.debug.getter();
  v47 = swift_allocObject();
  *(v47 + 16) = 32;
  v48 = swift_allocObject();
  *(v48 + 16) = 8;
  v46 = swift_allocObject();
  *(v46 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:);
  *(v46 + 24) = v45;
  v49 = swift_allocObject();
  *(v49 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v49 + 24) = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd);
  _allocateUninitializedArray<A>(_:)();
  v50 = v3;

  *v50 = partial apply for closure #1 in OSLogArguments.append(_:);
  v50[1] = v47;

  v50[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v50[3] = v48;

  v50[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v50[5] = v49;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v51, v52))
  {
    v4 = *(v40 + 392);
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd);
    v38 = createStorage<A>(capacity:type:)(0);
    v39 = createStorage<A>(capacity:type:)(1);
    v53 = buf;
    v54 = v38;
    v55 = v39;
    serialize(_:at:)(2, &v53);
    serialize(_:at:)(1, &v53);
    v56 = partial apply for closure #1 in OSLogArguments.append(_:);
    v57 = v47;
    closure #1 in osLogInternal(_:log:type:)(&v56, &v53, &v54, &v55);
    if (v4)
    {
    }

    v56 = partial apply for closure #1 in OSLogArguments.append(_:);
    v57 = v48;
    closure #1 in osLogInternal(_:log:type:)(&v56, &v53, &v54, &v55);
    v56 = partial apply for closure #1 in OSLogArguments.append(_:);
    v57 = v49;
    closure #1 in osLogInternal(_:log:type:)(&v56, &v53, &v54, &v55);
    _os_log_impl(&dword_25C4D8000, v51, v52, "pregnancies: %s", buf, 0xCu);
    destroyStorage<A>(_:count:)(v38, 0, v36);
    destroyStorage<A>(_:count:)(v39, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x25F8899D0](buf, MEMORY[0x277D84B78]);

    v35 = 0;
  }

  else
  {

    v35 = *(v40 + 392);
  }

  v34 = *(v40 + 384);
  v30 = *(v40 + 208);
  v31 = *(v40 + 192);
  v29 = *(v40 + 200);
  MEMORY[0x277D82BD8](v51);
  (*(v29 + 8))(v30, v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19NightingaleTraining9Pregnancy_pSgMd);
  v33 = MEMORY[0x25F8895B0](v34);
  *(v40 + 128) = v33;

  *(v40 + 136) = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining9Pregnancy_pSgGMd);
  lazy protocol witness table accessor for type [Pregnancy?] and conformance [A]();
  result = _ArrayProtocol.filter(_:)();
  if (!v35)
  {
    v27 = *(v40 + 384);
    v26 = MEMORY[0x25F8895B0](result, v32);
    *(v40 + 144) = v26;

    *(v40 + 152) = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s19NightingaleTraining9Pregnancy_pMd);
    lazy protocol witness table accessor for type [Pregnancy?] and conformance [A]();
    v28 = Sequence.compactMap<A>(_:)();
    v24 = *(v40 + 384);
    *(v40 + 160) = v28;
    v25 = MEMORY[0x25F8895B0]();
    if (v25 == MEMORY[0x25F8895B0](v24, v32))
    {
      *(v40 + 168) = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining9Pregnancy_pGMd);
      lazy protocol witness table accessor for type [Pregnancy] and conformance [A]();
      Sequence.min(by:)();
      if (*(v40 + 80))
      {
        v20 = *(v40 + 80);
        v19 = *(v40 + 88);
        __swift_project_boxed_opaque_existential_1((v40 + 56), v20);
        v21 = (*(v19 + 8))(v20);
        __swift_destroy_boxed_opaque_existential_1(v40 + 56);
        v22 = v21;
        v23 = 0;
      }

      else
      {
        outlined destroy of Pregnancy?(v40 + 56);
        v22 = 0;
        v23 = 1;
      }

      if ((v23 & 1) == 0)
      {
        v17 = *(v40 + 352);
        v18 = *(v40 + 344);
        v16 = *(v40 + 312);
        *(v40 + 400) = v22;

        v17(v18, v16);

        v6 = *(*(v40 + 96) + 8);

        return v6(v33, v26, v28, v22);
      }

      v15 = *(v40 + 352);
      v13 = *(v40 + 344);
      v14 = *(v40 + 312);
      lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
      swift_allocError();
      *v7 = 57;
      swift_willThrow();

      v15(v13, v14);
    }

    else
    {
      v12 = *(v40 + 352);
      v10 = *(v40 + 344);
      v11 = *(v40 + 312);
      lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
      swift_allocError();
      *v8 = 68;
      swift_willThrow();

      v12(v10, v11);
    }

    v9 = *(*(v40 + 96) + 8);

    return v9();
  }

  return result;
}

{
  v6 = v0[44];
  v4 = v0[43];
  v5 = v0[39];
  v1 = v0[31];
  v0[12] = v0;
  outlined destroy of ClosedRange<Date>(v1);

  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  v6(v4, v5);

  v2 = *(v0[12] + 8);

  return v2();
}

uint64_t implicit closure #1 in NightingaleDPFLRunner.queryPregnancies(hyperParams:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{

  result = a1;
  *a2 = a1;
  return result;
}

uint64_t NightingaleDPFLRunner.deinit()
{

  outlined destroy of DefaultStringInterpolation();
  __swift_destroy_boxed_opaque_existential_1(v0 + 48);
  return v2;
}

uint64_t protocol witness for PFLTaskRunner.resolveTask(for:taskPreferences:) in conformance NightingaleDPFLRunner(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = v5;
  *(v5 + 16) = v5;
  v6 = swift_task_alloc();
  *(v8 + 24) = v6;
  *v6 = *(v8 + 16);
  v6[1] = protocol witness for PFLTaskRunner.resolveTask(for:taskPreferences:) in conformance NightingaleDPFLRunner;

  return MEMORY[0x2821A1EC0](a1, a2, a3, a4, a5);
}

uint64_t protocol witness for PFLTaskRunner.resolveTask(for:taskPreferences:) in conformance NightingaleDPFLRunner()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t protocol witness for PFLTaskRunner.ensureDataAvailability(taskPreferences:) in conformance NightingaleDPFLRunner(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = protocol witness for PFLTaskRunner.ensureDataAvailability(taskPreferences:) in conformance NightingaleDPFLRunner;

  return MEMORY[0x2821A1EE0](a1, a2, a3);
}

uint64_t protocol witness for PFLTaskRunner.ensureDataAvailability(taskPreferences:) in conformance NightingaleDPFLRunner()
{
  v2 = *v1;
  *(v2 + 16) = *v1;
  v5 = v2 + 16;

  if (v0)
  {
    v3 = *(*v5 + 8);
  }

  else
  {
    v3 = *(*v5 + 8);
  }

  return v3();
}

uint64_t protocol witness for PFLTaskRunner.isDataAvailable(taskPreferences:) in conformance NightingaleDPFLRunner()
{
  v3 = v0;
  *(v0 + 16) = v0;
  v1 = swift_task_alloc();
  *(v3 + 24) = v1;
  *v1 = *(v3 + 16);
  v1[1] = protocol witness for PFLTaskRunner.isDataAvailable(taskPreferences:) in conformance NightingaleDPFLRunner;

  return NightingaleDPFLRunner.isDataAvailable(taskPreferences:)();
}

uint64_t protocol witness for PFLTaskRunner.isDataAvailable(taskPreferences:) in conformance NightingaleDPFLRunner(unsigned int a1)
{
  v4 = *v1;
  *(v4 + 16) = *v1;

  v2 = *(*(v4 + 16) + 8);

  return v2(a1);
}

uint64_t protocol witness for PFLTaskRunner.isDataAvailable() in conformance NightingaleDPFLRunner()
{
  v0 = PFLTaskRunner.isDataAvailable()();
  v1 = *(v4 + 8);
  v2 = v0;

  return v1(v2);
}

uint64_t protocol witness for PFLTaskRunner.run(task:useCase:context:) in conformance NightingaleDPFLRunner(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  *(v4 + 16) = v4;
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = protocol witness for PFLTaskRunner.run(task:useCase:context:) in conformance NightingaleDPFLRunner;

  return NightingaleDPFLRunner.run(task:useCase:context:)(a1, a2, a3, a4);
}

uint64_t protocol witness for PFLTaskRunner.run(task:useCase:context:) in conformance NightingaleDPFLRunner(uint64_t a1)
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

uint64_t protocol witness for PFLTaskRunner.handleNoTasksAvailable(taskPreferences:) in conformance NightingaleDPFLRunner(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = protocol witness for PFLTaskRunner.ensureDataAvailability(taskPreferences:) in conformance NightingaleDPFLRunner;

  return MEMORY[0x2821A1EF0](a1, a2, a3);
}

uint64_t protocol witness for PFLTaskRunner.handleNoAvailableTasks(taskPreferences:) in conformance NightingaleDPFLRunner(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = protocol witness for PFLTaskRunner.resolveTask(for:taskPreferences:) in conformance NightingaleDPFLRunner;

  return MEMORY[0x2821A1EE8](a1, a2, a3);
}

uint64_t partial apply for closure #2 in NightingaleDPFLRunner.run(task:useCase:context:)()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = partial apply for closure #2 in NightingaleDPFLRunner.run(task:useCase:context:);

  return closure #2 in NightingaleDPFLRunner.run(task:useCase:context:)(v6, v5);
}

uint64_t partial apply for closure #2 in NightingaleDPFLRunner.run(task:useCase:context:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v7 = *v4;
  *(v7 + 16) = *v4;

  v5 = *(*(v7 + 16) + 8);

  return v5(a1, a2, a3, a4);
}

uint64_t partial apply for thunk for @callee_guaranteed @async () -> (@unowned Int, @unowned Int, @owned [Pregnancy], @unowned UInt32, @error @owned Error)(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = protocol witness for PFLTaskRunner.resolveTask(for:taskPreferences:) in conformance NightingaleDPFLRunner;

  return thunk for @callee_guaranteed @async () -> (@unowned Int, @unowned Int, @owned [Pregnancy], @unowned UInt32, @error @owned Error)(a1, v6);
}

uint64_t partial apply for closure #3 in NightingaleDPFLRunner.run(task:useCase:context:)(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 36);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = protocol witness for PFLTaskRunner.resolveTask(for:taskPreferences:) in conformance NightingaleDPFLRunner;

  return closure #3 in NightingaleDPFLRunner.run(task:useCase:context:)(a1, v6, v7, v8, v9);
}

unint64_t lazy protocol witness table accessor for type NightingalePFLTaskType and conformance NightingalePFLTaskType()
{
  v2 = lazy protocol witness table cache variable for type NightingalePFLTaskType and conformance NightingalePFLTaskType;
  if (!lazy protocol witness table cache variable for type NightingalePFLTaskType and conformance NightingalePFLTaskType)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NightingalePFLTaskType and conformance NightingalePFLTaskType);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type NightingalePFLTaskType and conformance NightingalePFLTaskType;
  if (!lazy protocol witness table cache variable for type NightingalePFLTaskType and conformance NightingalePFLTaskType)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NightingalePFLTaskType and conformance NightingalePFLTaskType);
    return WitnessTable;
  }

  return v2;
}

uint64_t outlined destroy of PFLError?(uint64_t a1)
{
  v3 = type metadata accessor for PFLError();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>()
{
  v2 = lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>;
  if (!lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSnySiGMd);
    lazy protocol witness table accessor for type Int and conformance Int();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type [Pregnancy] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [Pregnancy] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Pregnancy] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19NightingaleTraining9Pregnancy_pGMd);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [Pregnancy] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [Pregnancy] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Pregnancy] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19NightingaleTraining9Pregnancy_pGMd);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [Pregnancy] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [Pregnancy] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Pregnancy] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19NightingaleTraining9Pregnancy_pGMd);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [Pregnancy] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type [PregnancyInvalidReason] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [PregnancyInvalidReason] and conformance [A];
  if (!lazy protocol witness table cache variable for type [PregnancyInvalidReason] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19NightingaleTraining22PregnancyInvalidReasonOGMd);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [PregnancyInvalidReason] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

void *outlined init with copy of String(void *a1, void *a2)
{
  *a2 = *a1;
  v4 = a1[1];

  result = a2;
  a2[1] = v4;
  return result;
}

unint64_t lazy protocol witness table accessor for type SliceDeltaAnchor and conformance SliceDeltaAnchor()
{
  v2 = lazy protocol witness table cache variable for type SliceDeltaAnchor and conformance SliceDeltaAnchor;
  if (!lazy protocol witness table cache variable for type SliceDeltaAnchor and conformance SliceDeltaAnchor)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SliceDeltaAnchor and conformance SliceDeltaAnchor);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SliceDeltaAnchor and conformance SliceDeltaAnchor;
  if (!lazy protocol witness table cache variable for type SliceDeltaAnchor and conformance SliceDeltaAnchor)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SliceDeltaAnchor and conformance SliceDeltaAnchor);
    return WitnessTable;
  }

  return v2;
}

uint64_t outlined destroy of Pregnancy?(uint64_t a1)
{
  if (*(a1 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return a1;
}

unint64_t lazy protocol witness table accessor for type [HealthDataRawSampleType] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [HealthDataRawSampleType] and conformance [A];
  if (!lazy protocol witness table cache variable for type [HealthDataRawSampleType] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19NightingaleTraining23HealthDataRawSampleTypeOGMd);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [HealthDataRawSampleType] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [HealthDataRawSampleType] and conformance [A];
  if (!lazy protocol witness table cache variable for type [HealthDataRawSampleType] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19NightingaleTraining23HealthDataRawSampleTypeOGMd);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [HealthDataRawSampleType] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type NightingaleDProcessEngine and conformance NightingaleDProcessEngine()
{
  v2 = lazy protocol witness table cache variable for type NightingaleDProcessEngine and conformance NightingaleDProcessEngine;
  if (!lazy protocol witness table cache variable for type NightingaleDProcessEngine and conformance NightingaleDProcessEngine)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NightingaleDProcessEngine and conformance NightingaleDProcessEngine);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type NightingaleDProcessEngine and conformance NightingaleDProcessEngine;
  if (!lazy protocol witness table cache variable for type NightingaleDProcessEngine and conformance NightingaleDProcessEngine)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NightingaleDProcessEngine and conformance NightingaleDProcessEngine);
    return WitnessTable;
  }

  return v2;
}

void *outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(uint64_t *a1, void *a2)
{
  v3 = *a1;

  *a2 = v3;
  v4 = a1[1];

  a2[1] = v4;
  v5 = a1[2];

  a2[2] = v5;
  v6 = a1[3];

  a2[3] = v6;
  v7 = a1[4];

  a2[4] = v7;
  v8 = a1[5];

  a2[5] = v8;
  v9 = a1[6];

  a2[6] = v9;
  v10 = a1[7];

  a2[7] = v10;
  v11 = a1[8];

  a2[8] = v11;
  v12 = a1[9];

  a2[9] = v12;
  v13 = a1[10];

  a2[10] = v13;
  v14 = a1[11];

  a2[11] = v14;
  v15 = a1[12];

  a2[12] = v15;
  v16 = a1[13];

  a2[13] = v16;
  v17 = a1[14];

  a2[14] = v17;
  v18 = a1[15];

  a2[15] = v18;
  v19 = a1[16];

  a2[16] = v19;
  v20 = a1[17];

  a2[17] = v20;
  v21 = a1[18];

  a2[18] = v21;
  v23 = a1[19];

  a2[19] = v23;
  v25 = a1[20];

  result = a2;
  a2[20] = v25;
  return result;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> outlined destroy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])()
{
}

uint64_t partial apply for closure #38 in NightingaleDPFLRunner.run(task:useCase:context:)(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = *(v1 + 48);
  v11 = *(v1 + 56);
  v12 = *(v1 + 64);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = protocol witness for PFLTaskRunner.resolveTask(for:taskPreferences:) in conformance NightingaleDPFLRunner;

  return closure #38 in NightingaleDPFLRunner.run(task:useCase:context:)(a1, v6, v7, v8, v9, v10, v11, v12);
}

unint64_t lazy protocol witness table accessor for type [UInt32] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [UInt32] and conformance [A];
  if (!lazy protocol witness table cache variable for type [UInt32] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSays6UInt32VGMd);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [UInt32] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [UInt32] and conformance [A];
  if (!lazy protocol witness table cache variable for type [UInt32] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSays6UInt32VGMd);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [UInt32] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [UInt32] and conformance [A];
  if (!lazy protocol witness table cache variable for type [UInt32] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSays6UInt32VGMd);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [UInt32] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [UInt32] and conformance [A];
  if (!lazy protocol witness table cache variable for type [UInt32] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSays6UInt32VGMd);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [UInt32] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t outlined destroy of DateComponents?(uint64_t a1)
{
  v3 = type metadata accessor for DateComponents();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t lazy protocol witness table accessor for type ClosedRange<UInt32> and conformance <> ClosedRange<A>()
{
  v2 = lazy protocol witness table cache variable for type ClosedRange<UInt32> and conformance <> ClosedRange<A>;
  if (!lazy protocol witness table cache variable for type ClosedRange<UInt32> and conformance <> ClosedRange<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSNys6UInt32VGMd);
    lazy protocol witness table accessor for type Int and conformance Int();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type ClosedRange<UInt32> and conformance <> ClosedRange<A>);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type ClosedRange<UInt32> and conformance <> ClosedRange<A>;
  if (!lazy protocol witness table cache variable for type ClosedRange<UInt32> and conformance <> ClosedRange<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSNys6UInt32VGMd);
    lazy protocol witness table accessor for type Int and conformance Int();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type ClosedRange<UInt32> and conformance <> ClosedRange<A>);
    return WitnessTable;
  }

  return v2;
}

uint64_t partial apply for closure #35 in NightingaleDPFLRunner.run(task:useCase:context:)(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 36);
  v10 = *(v1 + 40);
  v11 = *(v1 + 48);
  v12 = *(v1 + 56);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = protocol witness for PFLTaskRunner.resolveTask(for:taskPreferences:) in conformance NightingaleDPFLRunner;

  return closure #35 in NightingaleDPFLRunner.run(task:useCase:context:)(a1, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t partial apply for closure #34 in NightingaleDPFLRunner.run(task:useCase:context:)(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = v1[7];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = partial apply for closure #34 in NightingaleDPFLRunner.run(task:useCase:context:);

  return closure #34 in NightingaleDPFLRunner.run(task:useCase:context:)(a1, v6, v7, v8, v9, v10, v11);
}

uint64_t partial apply for closure #34 in NightingaleDPFLRunner.run(task:useCase:context:)()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}