uint64_t sub_24ED33194@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v16[0] = *v1;
  v16[1] = v3;
  v16[2] = v1[2];
  *a1 = sub_24F924C98();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EA58);
  sub_24ED32834(v16, a1 + *(v4 + 44));
  v5 = sub_24F925828();
  sub_24F923318();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EA60);
  v15 = a1 + *(result + 36);
  *v15 = v5;
  *(v15 + 8) = v7;
  *(v15 + 16) = v9;
  *(v15 + 24) = v11;
  *(v15 + 32) = v13;
  *(v15 + 40) = 0;
  return result;
}

uint64_t sub_24ED33260()
{
  MEMORY[0x28223BE20](v0);
  sub_24ED334A8(v2, &v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24ED33808(&qword_27F215C30, type metadata accessor for ImageLockupView);
  return sub_24F9218E8();
}

uint64_t sub_24ED33418(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_24ED33460(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_24ED334A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageLockupView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24ED33528(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EA20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24ED33598(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_24ED33608()
{
  result = qword_27F22EA30;
  if (!qword_27F22EA30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22E9E8);
    sub_24ED336C0();
    sub_24E602068(&qword_27F21B308, &qword_27F212858);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22EA30);
  }

  return result;
}

unint64_t sub_24ED336C0()
{
  result = qword_27F22EA38;
  if (!qword_27F22EA38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22E9E0);
    sub_24ED3374C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22EA38);
  }

  return result;
}

unint64_t sub_24ED3374C()
{
  result = qword_27F22EA40;
  if (!qword_27F22EA40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22E9D8);
    sub_24ED33808(&qword_27F2281F0, type metadata accessor for LockupContentView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22EA40);
  }

  return result;
}

uint64_t sub_24ED33808(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm_34()
{
  v1 = *(type metadata accessor for ImageLockupView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_24F923E98();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24ED3399C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for ImageLockupView() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_24ED33A20(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_24ED33A7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_24ED33B60()
{
  result = qword_27F22EAB0;
  if (!qword_27F22EAB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22EA60);
    sub_24E602068(&qword_27F22EAB8, &qword_27F22EAC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22EAB0);
  }

  return result;
}

uint64_t sub_24ED33C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a3;
  v25 = a4;
  v23 = a1;
  v5 = sub_24F927D88();
  v28 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F927DC8();
  v26 = *(v8 - 8);
  v27 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24F927D98();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EB50);
  v15 = sub_24F92A9E8();
  sub_24E69A5C4(0, &qword_27F222300);
  (*(v12 + 104))(v14, *MEMORY[0x277D851C8], v11);
  v16 = sub_24F92BF48();
  (*(v12 + 8))(v14, v11);
  v17 = swift_allocObject();
  v18 = v24;
  v17[2] = v23;
  v17[3] = a2;
  v19 = v25;
  v17[4] = v18;
  v17[5] = v19;
  v17[6] = v15;
  aBlock[4] = sub_24ED35C1C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_71;
  v20 = _Block_copy(aBlock);

  sub_24F927DA8();
  v29 = MEMORY[0x277D84F90];
  sub_24E858250();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
  sub_24E602068(&qword_27F222940, &qword_27F222310);
  sub_24F92C6A8();
  MEMORY[0x2530518B0](0, v10, v7, v20);
  _Block_release(v20);

  (*(v28 + 8))(v7, v5);
  (*(v26 + 8))(v10, v27);

  return v15;
}

uint64_t sub_24ED33FE4(uint64_t (*a1)(void), uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v7 = a1();
  a3(v7);
  v8 = swift_allocObject();
  *(v8 + 16) = sub_24ED35C44;
  *(v8 + 24) = a5;
  v10[3] = sub_24F929638();
  v10[4] = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(v10);
  swift_retain_n();
  sub_24F929628();
  sub_24F92A958();

  return __swift_destroy_boxed_opaque_existential_1(v10);
}

uint64_t ASKBootstrapV2.TargetType.hashValue.getter()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  return sub_24F92D0B8();
}

__n128 ASKBootstrapV2.init(bagProfile:bagOfflinePolicy:appStateControllerFactory:targetType:tokenServiceClient:processTreatmentNamespace:prerequisites:jetpackURL:languageSource:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, _BYTE *a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = *a2;
  v15 = a2[1];
  v16 = *(a2 + 16);
  v17 = *a4;
  v18 = type metadata accessor for ASKBootstrapV2(0);
  v19 = &a8[v18[8]];
  *(v19 + 4) = 0;
  *v19 = 0u;
  *(v19 + 1) = 0u;
  v20 = &a8[v18[9]];
  *v20 = 0;
  v20[1] = 0;
  v21 = v18[5];
  v22 = sub_24F92A468();
  v23 = *(v22 - 8);
  (*(v23 + 16))(&a8[v21], a1, v22);
  v24 = &a8[v18[6]];
  *v24 = v14;
  *(v24 + 1) = v15;
  v24[16] = v16;
  *a8 = v17;
  sub_24E615E00(a3, &a8[v18[7]]);
  v25 = [objc_opt_self() currentProcess];
  if (a7)
  {
    v26 = sub_24F92B098();
    [v25 setTreatmentNamespace_];
  }

  __swift_destroy_boxed_opaque_existential_1(a3);
  (*(v23 + 8))(a1, v22);
  *&a8[v18[10]] = v25;
  v27 = &a8[v18[11]];
  *v27 = a9;
  v27[1] = a10;
  v28 = &a8[v18[12]];
  *v28 = a5;
  v28[1] = a6;
  sub_24E6009C8(a11, &a8[v18[13]], &qword_27F228530);
  v29 = &a8[v18[14]];
  result = *a12;
  v31 = *(a12 + 16);
  *v29 = *a12;
  *(v29 + 1) = v31;
  *(v29 + 4) = *(a12 + 32);
  return result;
}

uint64_t ASKBootstrapV2.bagProfile.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ASKBootstrapV2(0) + 20);
  v4 = sub_24F92A468();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 ASKBootstrapV2.bagOfflinePolicy.getter@<Q0>(__n128 *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ASKBootstrapV2(0) + 24));
  v4 = v3[1].n128_u8[0];
  result = *v3;
  *a1 = *v3;
  a1[1].n128_u8[0] = v4;
  return result;
}

uint64_t sub_24ED344A8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for ASKBootstrapV2(0) + 36));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_24ED35BA8;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return sub_24E5FCA4C(v4);
}

uint64_t sub_24ED3453C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24ED35B70;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (a2 + *(type metadata accessor for ASKBootstrapV2(0) + 36));
  v8 = *v7;
  sub_24E5FCA4C(v3);
  result = sub_24E824448(v8);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t ASKBootstrapV2.metricsRecorderProducer.getter()
{
  v1 = *(v0 + *(type metadata accessor for ASKBootstrapV2(0) + 36));
  sub_24E5FCA4C(v1);
  return v1;
}

id ASKBootstrapV2.process.getter()
{
  v1 = *(v0 + *(type metadata accessor for ASKBootstrapV2(0) + 40));

  return v1;
}

uint64_t sub_24ED34660@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for ASKBootstrapV2(0) + 44));
  v5 = *v3;
  v4 = v3[1];
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = &unk_24F99A940;
  a2[1] = v6;
}

uint64_t sub_24ED346E0(uint64_t a1, uint64_t *a2, int *a3)
{
  *(v3 + 16) = a1;
  v4 = *a2;
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_24E67D244;

  return v7(v4);
}

uint64_t sub_24ED347D8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = (a2 + *(type metadata accessor for ASKBootstrapV2(0) + 44));

  *v6 = &unk_24F99A930;
  v6[1] = v5;
  return result;
}

uint64_t sub_24ED34858(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_24ED34958;

  return v5(v2 + 24, v2 + 16);
}

uint64_t sub_24ED34958()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 24);
    v7 = *(v3 + 8);

    return v7(v6);
  }
}

uint64_t ASKBootstrapV2.prerequisites.getter()
{
  v1 = *(v0 + *(type metadata accessor for ASKBootstrapV2(0) + 44));

  return v1;
}

uint64_t ASKBootstrapV2.withMetricsEventRecorder(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24ED34B58(v2, a2);
  v5 = a2 + *(type metadata accessor for ASKBootstrapV2(0) + 32);

  return sub_24ED34BBC(a1, v5);
}

uint64_t sub_24ED34B58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ASKBootstrapV2(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24ED34BBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EAC8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t ASKBootstrapV2.withMetricsEventRecorderProducer(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_24ED34B58(v3, a3);
  v7 = (a3 + *(type metadata accessor for ASKBootstrapV2(0) + 36));
  v8 = *v7;
  sub_24E5FCA4C(a1);
  result = sub_24E824448(v8);
  *v7 = a1;
  v7[1] = a2;
  return result;
}

uint64_t ASKBootstrapV2.start()()
{
  v1 = type metadata accessor for ASKBootstrapV2(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  if (qword_27F210570 != -1)
  {
    swift_once();
  }

  v4 = sub_24F92AAE8();
  __swift_project_value_buffer(v4, qword_27F39C3B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F9283A8();
  sub_24F92A588();

  if (qword_27F210010 != -1)
  {
    swift_once();
  }

  UserEngagementManager.startDefaultTabRequest()();
  sub_24ED34B58(v0, &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = swift_allocObject();
  sub_24ED352E4(&v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  v7 = sub_24ED33C1C(sub_24ED34F20, 0, sub_24ED35348, v6);

  return v7;
}

id sub_24ED34F20()
{
  v0 = sub_24F91F648();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F270AC8();
  sub_24F2709B4(v4);
  if (qword_27F210618 != -1)
  {
    swift_once();
  }

  v5 = qword_27F22D9A8;
  [qword_27F22D9A8 lock];
  if (qword_27F210610 != -1)
  {
    swift_once();
  }

  v6 = off_27F22D9A0;
  if (off_27F22D9A0)
  {
    swift_beginAccess();
    if (*(v6 + 80) == 1)
    {

      sub_24F91F638();
      sub_24F91F5E8();
      v8 = v7;
      (*(v1 + 8))(v3, v0);
      v6[9] = v8;
      *(v6 + 80) = 0;
    }
  }

  return [v5 unlock];
}

uint64_t sub_24ED350D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14 - v3;
  v5 = type metadata accessor for ASKBootstrapV2(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  sub_24ED34B58(a1, &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = swift_allocObject();
  sub_24ED352E4(&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EB50);
  v10 = sub_24F92A9E8();
  v11 = sub_24F92B858();
  (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_24F99A958;
  v12[5] = v9;
  v12[6] = v10;

  sub_24E6959D8(0, 0, v4, &unk_24F99A960, v12);

  return v10;
}

uint64_t sub_24ED352E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ASKBootstrapV2(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24ED35364()
{
  result = qword_27F22EAD8;
  if (!qword_27F22EAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22EAD8);
  }

  return result;
}

uint64_t sub_24ED353DC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_24F92A468();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[7] + 24);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[13];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_24ED35528(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_24F92A468();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7] + 24) = (a2 - 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[13];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

void sub_24ED35660()
{
  sub_24F92A468();
  if (v0 <= 0x3F)
  {
    sub_24ED357FC();
    if (v1 <= 0x3F)
    {
      sub_24ED3584C();
      if (v2 <= 0x3F)
      {
        sub_24E8EF898(319, &unk_27F22EB08, &qword_27F222260);
        if (v3 <= 0x3F)
        {
          sub_24E8EF898(319, &qword_27F22EB18, &unk_27F22EB20);
          if (v4 <= 0x3F)
          {
            sub_24E69A5C4(319, &qword_27F2222A8);
            if (v5 <= 0x3F)
            {
              sub_24E6C5550();
              if (v6 <= 0x3F)
              {
                sub_24E6D4C08();
                if (v7 <= 0x3F)
                {
                  sub_24E8EF898(319, &qword_27F22EB40, &qword_27F22EB48);
                  if (v8 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
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

void sub_24ED357FC()
{
  if (!qword_27F22EAF8)
  {
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F22EAF8);
    }
  }
}

unint64_t sub_24ED3584C()
{
  result = qword_27F22EB00;
  if (!qword_27F22EB00)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F22EB00);
  }

  return result;
}

uint64_t sub_24ED358C0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24ED35974;

  return sub_24ED34858(a1, v4);
}

uint64_t sub_24ED35974(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_24ED35A70()
{

  return swift_deallocObject();
}

uint64_t sub_24ED35AA8(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24E6541E4;

  return sub_24ED346E0(a1, a2, v6);
}

uint64_t sub_24ED35B70(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_24ED35BD4()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_71(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24ED35C6C(uint64_t a1, uint64_t a2)
{
  v2[23] = a1;
  v2[24] = a2;
  v3 = *(type metadata accessor for ASKBootstrapV2(0) - 8);
  v2[25] = v3;
  v2[26] = *(v3 + 64);
  v2[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ED35D30, 0, 0);
}

uint64_t sub_24ED35D30()
{
  v1 = v0[27];
  v2 = v0[24];
  v3 = v0[25];
  sub_24F928FD8();
  sub_24F928F78();
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_24ED34B58(v2, v1);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = swift_allocObject();
  sub_24ED352E4(v1, v5 + v4);
  sub_24F929E28();

  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  sub_24ED34B58(v2, v1);
  v6 = swift_allocObject();
  sub_24ED352E4(v1, v6 + v4);
  sub_24F929E28();

  __swift_project_boxed_opaque_existential_1(v0 + 12, v0[15]);
  sub_24ED34B58(v2, v1);
  v7 = swift_allocObject();
  sub_24ED352E4(v1, v7 + v4);
  sub_24F929E28();

  v9 = v0[20];
  v8 = v0[21];
  __swift_project_boxed_opaque_existential_1(v0 + 17, v9);
  v10 = swift_task_alloc();
  v0[28] = v10;
  *v10 = v0;
  v10[1] = sub_24ED35FA8;

  return MEMORY[0x28217FD10](v9, v8);
}

uint64_t sub_24ED35FA8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 232) = v1;

  if (v1)
  {
    v5 = sub_24ED361F8;
  }

  else
  {
    *(v4 + 240) = a1;
    v5 = sub_24ED360D0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24ED360D0()
{
  v1 = v0[23];
  v0[22] = sub_24ED43EB8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EB60);
  sub_24E602068(&qword_27F22CE28, &unk_27F22EB60);
  v2 = sub_24F928F48();

  __swift_destroy_boxed_opaque_existential_1((v0 + 17));
  __swift_destroy_boxed_opaque_existential_1((v0 + 12));
  __swift_destroy_boxed_opaque_existential_1((v0 + 7));
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  *v1 = v2;

  v3 = v0[1];

  return v3();
}

uint64_t sub_24ED361F8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 136);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t objectdestroyTm_35()
{
  v1 = type metadata accessor for ASKBootstrapV2(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  v3 = v1[5];
  v4 = sub_24F92A468();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[7]);
  v5 = v2 + v1[8];
  if (*(v5 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  if (*(v2 + v1[9]))
  {
  }

  v6 = v1[13];
  v7 = sub_24F91F4A8();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v2 + v6, 1, v7))
  {
    (*(v8 + 8))(v2 + v6, v7);
  }

  v9 = v2 + v1[14];
  if (*(v9 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  return swift_deallocObject();
}

uint64_t sub_24ED36460(uint64_t a1)
{
  v4 = *(type metadata accessor for ASKBootstrapV2(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24E6541E4;

  return sub_24ED35C6C(a1, v1 + v5);
}

uint64_t sub_24ED3653C()
{
  sub_24ED365A8();

  sub_24ED369D0();

  v0 = sub_24F928FA8();

  return v0;
}

uint64_t sub_24ED365A8()
{
  v1 = v0;
  v2 = type metadata accessor for ASKBootstrapV2(0);
  v33 = *(v2 - 8);
  v3 = *(v33 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F928188();
  v6 = *(v5 - 8);
  v35 = v5;
  v36 = v6;
  v7 = v6;
  MEMORY[0x28223BE20](v5);
  v34 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v32 = &v31 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v31 - v12;
  MEMORY[0x28223BE20](v14);
  v37 = &v31 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EB90);
  v16 = _s12GameStoreKit20NWPathNetworkInquiryCACycfC_0();
  v39 = type metadata accessor for NWPathNetworkInquiry();
  v40 = &protocol witness table for NWPathNetworkInquiry;
  v38 = v16;
  sub_24F928168();
  v17 = type metadata accessor for InitialBag(0);
  sub_24ED34B58(v0, v4);
  v18 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v19 = swift_allocObject();
  sub_24ED352E4(v4, v19 + v18);
  MEMORY[0x25304DAD0](v17, &unk_24F99AA18, v19, v17);
  v20 = sub_24F92A498();
  v21 = v32;
  MEMORY[0x25304DAD0](v20, &unk_24F99AA20, 0, v20);
  v22 = type metadata accessor for ASKBagContract();
  sub_24ED34B58(v1, v4);
  v23 = swift_allocObject();
  sub_24ED352E4(v4, v23 + v18);
  v24 = v34;
  MEMORY[0x25304DAD0](v22, &unk_24F99AA30, v23, v22);
  sub_24F928FD8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AF8);
  v25 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_24F93DE60;
  v27 = v35;
  (*(v7 + 16))(v26 + v25, v37, v35);
  sub_24F928F68();
  sub_24F928F88();
  sub_24F928F88();
  v28 = sub_24F928F88();

  v29 = *(v7 + 8);
  v29(v24, v27);
  v29(v21, v27);
  v29(v13, v27);
  v29(v37, v27);
  return v28;
}

uint64_t sub_24ED369D0()
{
  v1 = v0;
  v2 = type metadata accessor for ASKBootstrapV2(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v41 = v5;
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F928188();
  v45 = *(v7 - 8);
  v46 = v7;
  v8 = v45;
  MEMORY[0x28223BE20](v7);
  v44 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v42 = &v38 - v11;
  MEMORY[0x28223BE20](v12);
  v43 = &v38 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v38 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EBF8);
  sub_24ED34B58(v1, v6);
  v18 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v19 = swift_allocObject();
  sub_24ED352E4(v6, v19 + v18);
  v40 = v16;
  MEMORY[0x25304DAD0](v17, &unk_24F99A9D0, v19, v17);
  v20 = type metadata accessor for JSInvalidSignatureReporter();
  MEMORY[0x25304DAD0](v20, &unk_24F99A9D8, 0, v20);
  v21 = *(v3 + 64);
  v22 = type metadata accessor for AppStoreLocalizerFactory();
  v23 = v39;
  sub_24E60169C(v39 + v21, v47, &unk_27F22EC00);
  v24 = swift_allocObject();
  v25 = v47[1];
  *(v24 + 16) = v47[0];
  *(v24 + 32) = v25;
  *(v24 + 48) = v48;
  v26 = v42;
  MEMORY[0x25304DAD0](v22, &unk_24F99A9F0, v24, v22);
  v27 = sub_24F929958();
  sub_24ED34B58(v23, v6);
  v28 = swift_allocObject();
  sub_24ED352E4(v6, v28 + v18);
  v29 = v44;
  MEMORY[0x25304DAD0](v27, &unk_24F99AA00, v28, v27);
  sub_24F928FD8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AF8);
  v30 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_24F93DE60;
  v32 = v16;
  v33 = v46;
  (*(v8 + 16))(v31 + v30, v32, v46);
  sub_24F928F68();
  v34 = v43;
  sub_24F928F88();
  sub_24F928F88();
  v35 = sub_24F928F88();

  v36 = *(v8 + 8);
  v36(v29, v33);
  v36(v26, v33);
  v36(v34, v33);
  v36(v40, v33);
  return v35;
}

uint64_t sub_24ED36E48()
{
  v1 = v0;
  v2 = type metadata accessor for ASKBootstrapV2(0);
  v3 = *(v2 - 8);
  v101 = (v2 - 8);
  v105 = v3;
  v4 = *(v3 + 8);
  MEMORY[0x28223BE20](v2 - 8);
  v95 = sub_24F928188();
  v5 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v109 = v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v130 = v94 - v8;
  MEMORY[0x28223BE20](v9);
  v129 = v94 - v10;
  MEMORY[0x28223BE20](v11);
  v128 = v94 - v12;
  MEMORY[0x28223BE20](v13);
  v127 = v94 - v14;
  MEMORY[0x28223BE20](v15);
  v108 = v94 - v16;
  MEMORY[0x28223BE20](v17);
  v126 = v94 - v18;
  MEMORY[0x28223BE20](v19);
  v107 = v94 - v20;
  MEMORY[0x28223BE20](v21);
  v106 = v94 - v22;
  MEMORY[0x28223BE20](v23);
  v125 = v94 - v24;
  MEMORY[0x28223BE20](v25);
  v124 = v94 - v26;
  MEMORY[0x28223BE20](v27);
  v123 = v94 - v28;
  MEMORY[0x28223BE20](v29);
  v122 = v94 - v30;
  MEMORY[0x28223BE20](v31);
  v121 = v94 - v32;
  MEMORY[0x28223BE20](v33);
  v120 = v94 - v34;
  MEMORY[0x28223BE20](v35);
  v119 = v94 - v36;
  MEMORY[0x28223BE20](v37);
  v118 = v94 - v38;
  MEMORY[0x28223BE20](v39);
  v117 = v94 - v40;
  MEMORY[0x28223BE20](v41);
  v116 = v94 - v42;
  MEMORY[0x28223BE20](v43);
  v115 = v94 - v44;
  MEMORY[0x28223BE20](v45);
  v114 = v94 - v46;
  MEMORY[0x28223BE20](v47);
  v113 = v94 - v48;
  MEMORY[0x28223BE20](v49);
  v112 = v94 - v50;
  MEMORY[0x28223BE20](v51);
  v111 = v94 - v52;
  MEMORY[0x28223BE20](v53);
  v100 = v94 - v54;
  MEMORY[0x28223BE20](v55);
  v57 = v94 - v56;
  MEMORY[0x28223BE20](v58);
  v110 = v94 - v59;
  MEMORY[0x28223BE20](v60);
  v62 = v94 - v61;
  MEMORY[0x28223BE20](v63);
  v65 = v94 - v64;
  MEMORY[0x28223BE20](v66);
  v68 = v94 - v67;
  MEMORY[0x28223BE20](v69);
  v71 = v94 - v70;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EBA8);
  v102 = v71;
  sub_24F928158();
  sub_24E69A5C4(0, &qword_27F222D10);
  sub_24ED34B58(v1, v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v72 = (v105[80] + 16) & ~v105[80];
  v97 = v105[80];
  v96 = v72 + v4;
  v73 = swift_allocObject();
  v98 = v72;
  v99 = v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24ED352E4(v99, v73 + v72);
  v103 = v68;
  sub_24F928158();
  type metadata accessor for ArtworkLoaderURLSession();
  v104 = v65;
  sub_24F928158();
  sub_24F92AB98();
  v131 = sub_24F92AB88();
  v105 = v62;
  sub_24F928168();
  sub_24E69A5C4(0, &qword_27F2222A8);
  v131 = *(v1 + *(v101 + 12));
  v74 = v131;
  sub_24F928168();
  sub_24E69A5C4(0, &qword_27F221568);
  v131 = [objc_opt_self() ams_sharedAccountStore];
  v101 = v57;
  sub_24F928168();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EB90);
  v75 = _s12GameStoreKit20NWPathNetworkInquiryCACycfC_0();
  v132 = type metadata accessor for NWPathNetworkInquiry();
  v133 = &protocol witness table for NWPathNetworkInquiry;
  v131 = v75;
  sub_24F928168();
  type metadata accessor for UserEngagementManager();
  if (qword_27F210010 != -1)
  {
    swift_once();
  }

  v131 = qword_27F2227C0;

  sub_24F928168();
  v131 = [objc_allocWithZone(type metadata accessor for JSTimeoutManager()) init];
  sub_24F928168();
  sub_24E69A5C4(0, &qword_27F222258);
  sub_24F928158();
  sub_24F929E08();
  sub_24F928158();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222260);
  v76 = v99;
  sub_24ED34B58(v1, v99);
  v77 = swift_allocObject();
  v78 = v98;
  sub_24ED352E4(v76, v77 + v98);
  sub_24F928158();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222250);
  sub_24ED34B58(v1, v76);
  v79 = swift_allocObject();
  sub_24ED352E4(v76, v79 + v78);
  sub_24F928158();
  type metadata accessor for Restrictions();
  sub_24F928158();
  type metadata accessor for ThreeDimensionalMediaArtworkImageDownloader();
  sub_24F928158();
  sub_24ED34B58(v1, v76);
  v80 = swift_allocObject();
  sub_24ED352E4(v76, v80 + v78);
  MEMORY[0x25304DAD0](&type metadata for ASKPrerequisites, &unk_24F99A980, v80, &type metadata for ASKPrerequisites);
  v81 = type metadata accessor for JSService();
  sub_24ED34B58(v1, v76);
  v82 = swift_allocObject();
  sub_24ED352E4(v76, v82 + v78);
  MEMORY[0x25304DAD0](v81, &unk_24F99A990, v82, v81);
  v83 = type metadata accessor for JSIntentDispatcher();
  MEMORY[0x25304DAD0](v83, &unk_24F99A998, 0, v83);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EBA0);
  sub_24ED34B58(v1, v76);
  v84 = swift_allocObject();
  sub_24ED352E4(v76, v84 + v78);
  sub_24F928158();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EB80);
  sub_24F928158();
  v85 = type metadata accessor for Commerce();
  MEMORY[0x25304DAD0](v85, &unk_24F99A9A0, 0, v85);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222D18);
  sub_24F928158();
  type metadata accessor for MetricsIdStore();
  sub_24F928158();
  type metadata accessor for AppleSilicon();
  sub_24F928158();
  type metadata accessor for GameCenter();
  sub_24F928158();
  type metadata accessor for GameCenterFriendRequestCoordinator();
  sub_24F928158();
  type metadata accessor for AppStoreOnDeviceRecommendationsManager();
  sub_24F928158();
  type metadata accessor for OnDeviceSearchHistoryManager();
  sub_24F928158();
  type metadata accessor for OnDevicePersonalizationDataManager();
  sub_24F928158();
  type metadata accessor for AdsService();
  v86 = swift_allocObject();
  type metadata accessor for AdProcessingPipelineProxy();
  v87 = swift_allocObject();
  *(v87 + 16) = 0;
  *(v87 + 24) = 0;
  *(v86 + 16) = v87;
  *(v86 + 24) = 0u;
  *(v86 + 40) = 0u;
  *(v86 + 56) = 0;
  v131 = v86;
  sub_24F928168();
  type metadata accessor for NetworkActivity();
  sub_24F928158();
  sub_24F928FD8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AF8);
  v88 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v89 = swift_allocObject();
  *(v89 + 16) = xmmword_24F93DE60;
  v90 = v95;
  (*(v5 + 16))(v89 + v88, v102, v95);
  v98 = sub_24F928F68();
  v97 = sub_24F928F88();
  v96 = sub_24F928F88();
  v94[19] = sub_24F928F88();
  v94[18] = sub_24F928F88();
  v94[17] = sub_24F928F88();
  v94[16] = sub_24F928F88();
  v94[15] = sub_24F928F88();
  v94[14] = sub_24F928F88();
  v94[13] = sub_24F928F88();
  v94[12] = sub_24F928F88();
  v94[11] = sub_24F928F88();
  v94[10] = sub_24F928F88();
  v94[9] = sub_24F928F88();
  v94[8] = sub_24F928F88();
  v94[7] = sub_24F928F88();
  v94[6] = sub_24F928F88();
  v94[5] = sub_24F928F88();
  v94[4] = sub_24F928F88();
  v94[3] = sub_24F928F88();
  v94[2] = sub_24F928F88();
  v94[1] = sub_24F928F88();
  v94[0] = sub_24F928F88();
  sub_24F928F88();
  sub_24F928F88();
  sub_24F928F88();
  sub_24F928F88();
  sub_24F928F88();
  sub_24F928F88();
  sub_24F928F88();
  v91 = v109;
  v99 = sub_24F928F88();

  v92 = *(v5 + 8);
  v92(v91, v90);
  v92(v130, v90);
  v92(v129, v90);
  v92(v128, v90);
  v92(v127, v90);
  v92(v108, v90);
  v92(v126, v90);
  v92(v107, v90);
  v92(v106, v90);
  v92(v125, v90);
  v92(v124, v90);
  v92(v123, v90);
  v92(v122, v90);
  v92(v121, v90);
  v92(v120, v90);
  v92(v119, v90);
  v92(v118, v90);
  v92(v117, v90);
  v92(v116, v90);
  v92(v115, v90);
  v92(v114, v90);
  v92(v113, v90);
  v92(v112, v90);
  v92(v111, v90);
  v92(v100, v90);
  v92(v101, v90);
  v92(v110, v90);
  v92(v105, v90);
  v92(v104, v90);
  v92(v103, v90);
  v92(v102, v90);
  return v99;
}

uint64_t sub_24ED38354()
{
  v0 = sub_24F928188();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v18 - v11;
  sub_24F929F48();
  sub_24F928158();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EBB0);
  sub_24F928158();
  sub_24F9290F8();
  sub_24F928158();
  sub_24F929158();
  sub_24F928158();
  sub_24F928FD8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AF8);
  v13 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_24F93DE60;
  (*(v1 + 16))(v14 + v13, v12, v0);
  sub_24F928F68();
  sub_24F928F88();
  sub_24F928F88();
  v15 = sub_24F928F88();

  v16 = *(v1 + 8);
  v16(v3, v0);
  v16(v6, v0);
  v16(v9, v0);
  v16(v12, v0);
  return v15;
}

uint64_t sub_24ED38658(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_24F922028();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ED38724, 0, 0);
}

uint64_t sub_24ED38724()
{
  if (qword_27F211060 != -1)
  {
    swift_once();
  }

  v1 = sub_24F922058();
  __swift_project_value_buffer(v1, qword_27F23DAC0);
  sub_24F922038();
  sub_24F921FF8();
  v2 = sub_24F922038();
  v3 = sub_24F92C058();
  if (sub_24F92C478())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_24F922008();
    _os_signpost_emit_with_name_impl(&dword_24E5DD000, v2, v3, v5, "CreateInitialBag", "", v4, 2u);
    MEMORY[0x2530542D0](v4, -1, -1);
  }

  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[4];
  v9 = v0[5];
  v10 = v0[3];

  (*(v9 + 16))(v6, v7, v8);
  sub_24F922098();
  swift_allocObject();
  v0[8] = sub_24F922088();
  (*(v9 + 8))(v7, v8);
  v11 = type metadata accessor for ASKBootstrapV2(0);
  v12 = *(v11 + 20);
  v13 = *(v10 + *(v11 + 40));
  v14 = swift_task_alloc();
  v0[9] = v14;
  *v14 = v0;
  v14[1] = sub_24ED38928;
  v15 = v0[2];

  return sub_24ED38B64(v15, v10 + v12, v13);
}

uint64_t sub_24ED38928()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_24ED38AD0;
  }

  else
  {
    v2 = sub_24ED38A3C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24ED38A3C()
{
  sub_24ED3F994(*(v0 + 64), "CreateInitialBag");

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24ED38AD0()
{
  sub_24ED3F994(*(v0 + 64), "CreateInitialBag");

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24ED38B64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[29] = a3;
  v4[30] = v3;
  v4[28] = a1;
  v5 = sub_24F91F648();
  v4[31] = v5;
  v4[32] = *(v5 - 8);
  v4[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  sub_24F928418();
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  v6 = sub_24F92AAE8();
  v4[41] = v6;
  v4[42] = *(v6 - 8);
  v4[43] = swift_task_alloc();
  v4[44] = swift_task_alloc();
  sub_24F921FA8();
  v4[45] = swift_task_alloc();
  sub_24F921F58();
  v4[46] = swift_task_alloc();
  sub_24F921F88();
  v4[47] = swift_task_alloc();
  v7 = sub_24F921FC8();
  v4[48] = v7;
  v4[49] = *(v7 - 8);
  v4[50] = swift_task_alloc();
  v8 = sub_24F92A498();
  v4[51] = v8;
  v4[52] = *(v8 - 8);
  v4[53] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ED38E6C, 0, 0);
}

uint64_t sub_24ED38E6C()
{
  v1 = v0[30];
  v2 = (v1 + *(type metadata accessor for ASKBootstrapV2(0) + 24));
  if (v2[1])
  {
    if (qword_27F210518 != -1)
    {
      swift_once();
    }

    v2 = &xmmword_27F22D048;
  }

  v4 = v0[49];
  v3 = v0[50];
  v10 = v0[48];
  v0[54] = *(v2 + 1);
  v0[55] = *v2;
  sub_24ECA2090();
  sub_24F921F78();
  sub_24F921F48();
  sub_24F921F98();
  sub_24F921FB8();
  v0[56] = sub_24F92A338();
  (*(v4 + 8))(v3, v10);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224F78);
  v6 = sub_24E602068(&qword_27F22EC40, &qword_27F224F78);
  v7 = swift_task_alloc();
  v0[57] = v7;
  *v7 = v0;
  v7[1] = sub_24ED39080;
  v8 = v0[53];

  return MEMORY[0x282180360](v8, v5, v6);
}

uint64_t sub_24ED39080()
{
  *(*v1 + 464) = v0;

  if (v0)
  {
    v2 = sub_24ED391B4;
  }

  else
  {
    v2 = sub_24ED39598;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24ED391B4()
{
  if (qword_27F210618 != -1)
  {
    swift_once();
  }

  v1 = qword_27F22D9A8;
  [qword_27F22D9A8 lock];
  if (qword_27F210610 != -1)
  {
    swift_once();
  }

  v2 = off_27F22D9A0;
  if (off_27F22D9A0)
  {
    v4 = v0[32];
    v3 = v0[33];
    v5 = v0[31];

    sub_24F91F638();
    sub_24F91F5E8();
    v7 = v6;
    (*(v4 + 8))(v3, v5);
    swift_beginAccess();
    v2[11] = v7;
    *(v2 + 96) = 0;
  }

  [v1 unlock];
  if (qword_27F210570 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0[41], qword_27F39C3B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F928408();
  sub_24F9283F8();
  swift_getErrorValue();
  v8 = v0[18];
  v9 = v0[19];
  v0[5] = v9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_1, v8, v9);
  sub_24F9283D8();
  sub_24E601704((v0 + 2), &qword_27F2129B0);
  sub_24F9283F8();
  sub_24F928428();
  sub_24F92A5A8();

  swift_willThrow();

  v11 = v0[1];

  return v11();
}

uint64_t sub_24ED39598()
{
  if (qword_27F210570 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 352);
  v2 = *(v0 + 328);
  v3 = *(v0 + 336);
  v4 = __swift_project_value_buffer(v2, qword_27F39C3B0);
  *(v0 + 472) = v4;
  v5 = *(v3 + 16);
  *(v0 + 480) = v5;
  *(v0 + 488) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  *(v0 + 496) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  v6 = *(sub_24F928468() - 8);
  *(v0 + 504) = *(v6 + 72);
  v7 = *(v6 + 80);
  *(v0 + 560) = v7;
  v36 = (v7 + 32) & ~v7;
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F928408();
  sub_24F9283F8();
  v8 = [sub_24F92A328() expirationDate];
  swift_unknownObjectRelease();
  if (v8)
  {
    sub_24F91F608();

    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  v11 = *(v0 + 288);
  v10 = *(v0 + 296);
  v12 = *(v0 + 248);
  v13 = *(v0 + 256);
  v14 = *(v13 + 56);
  *(v0 + 512) = v14;
  v14(v11, v9, 1, v12);
  sub_24E6009C8(v11, v10, &unk_27F22EC30);
  v15 = *(v13 + 48);
  *(v0 + 520) = v15;
  *(v0 + 528) = (v13 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v16 = v15(v10, 1, v12);
  v17 = *(v0 + 296);
  if (v16 == 1)
  {
    sub_24E601704(*(v0 + 296), &unk_27F22EC30);
    *(v0 + 48) = 0u;
    *(v0 + 64) = 0u;
  }

  else
  {
    v18 = *(v0 + 248);
    v19 = *(v0 + 256);
    *(v0 + 72) = v18;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 48));
    (*(v19 + 32))(boxed_opaque_existential_1, v17, v18);
  }

  v21 = *(v0 + 432);
  v22 = *(v0 + 352);
  v23 = *(v0 + 328);
  v24 = *(v0 + 336);
  sub_24F9283D8();
  sub_24E601704(v0 + 48, &qword_27F2129B0);
  sub_24F9283F8();
  v25 = COERCE_DOUBLE(sub_24ECA2090());
  if (v26)
  {
    v25 = v21;
  }

  *(v0 + 104) = MEMORY[0x277D839F8];
  *(v0 + 80) = v25;
  sub_24F9283D8();
  sub_24E601704(v0 + 80, &qword_27F2129B0);
  sub_24F9283F8();
  sub_24F928428();
  sub_24F92A588();

  v27 = *(v24 + 8);
  *(v0 + 536) = v27;
  *(v0 + 544) = (v24 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v27(v22, v23);
  v28 = swift_task_alloc();
  *(v0 + 552) = v28;
  *v28 = v0;
  v28[1] = sub_24ED399C4;
  v30 = *(v0 + 432);
  v29 = *(v0 + 440);
  v31 = *(v0 + 424);
  v33 = *(v0 + 232);
  v32 = *(v0 + 240);
  v34 = *(v0 + 224);

  return sub_24ED41650(v34, v31, v32, v33, v29, v30);
}

uint64_t sub_24ED399C4()
{

  return MEMORY[0x2822009F8](sub_24ED39AC0, 0, 0);
}

uint64_t sub_24ED39AC0()
{
  if (qword_27F210618 != -1)
  {
    swift_once();
  }

  v30 = qword_27F22D9A8;
  [qword_27F22D9A8 lock];
  if (qword_27F210610 != -1)
  {
    swift_once();
  }

  v1 = off_27F22D9A0;
  if (off_27F22D9A0)
  {
    v3 = *(v0 + 256);
    v2 = *(v0 + 264);
    v4 = *(v0 + 248);

    sub_24F91F638();
    sub_24F91F5E8();
    v6 = v5;
    (*(v3 + 8))(v2, v4);
    swift_beginAccess();
    v1[13] = v6;
    *(v1 + 112) = 0;
  }

  v7 = *(v0 + 480);
  v8 = *(v0 + 472);
  v9 = *(v0 + 344);
  v10 = *(v0 + 328);
  [v30 unlock];
  v7(v9, v8, v10);
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  v11 = 1;
  sub_24F928408();
  sub_24F9283F8();
  v12 = [sub_24F92A328() expirationDate];
  swift_unknownObjectRelease();
  if (v12)
  {
    sub_24F91F608();

    v11 = 0;
  }

  v13 = *(v0 + 520);
  v15 = *(v0 + 272);
  v14 = *(v0 + 280);
  v16 = *(v0 + 248);
  (*(v0 + 512))(v15, v11, 1, v16);
  sub_24E6009C8(v15, v14, &unk_27F22EC30);
  v17 = v13(v14, 1, v16);
  v18 = *(v0 + 280);
  if (v17 == 1)
  {
    sub_24E601704(*(v0 + 280), &unk_27F22EC30);
    *(v0 + 112) = 0u;
    *(v0 + 128) = 0u;
  }

  else
  {
    v19 = *(v0 + 248);
    v20 = *(v0 + 256);
    *(v0 + 136) = v19;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 112));
    (*(v20 + 32))(boxed_opaque_existential_1, v18, v19);
  }

  v22 = *(v0 + 536);
  v24 = *(v0 + 416);
  v23 = *(v0 + 424);
  v29 = *(v0 + 408);
  v25 = *(v0 + 344);
  v26 = *(v0 + 328);
  sub_24F9283D8();
  sub_24E601704(v0 + 112, &qword_27F2129B0);
  sub_24F9283F8();
  sub_24F928428();
  sub_24F92A588();

  v22(v25, v26);
  (*(v24 + 8))(v23, v29);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_24ED39F18(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = type metadata accessor for InitialBag(0);
  v1[4] = swift_task_alloc();
  v2 = sub_24F922028();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ED3A014, 0, 0);
}

uint64_t sub_24ED3A014()
{
  if (qword_27F211060 != -1)
  {
    swift_once();
  }

  v1 = sub_24F922058();
  __swift_project_value_buffer(v1, qword_27F23DAC0);
  sub_24F922038();
  sub_24F921FF8();
  v2 = sub_24F922038();
  v3 = sub_24F92C058();
  if (sub_24F92C478())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_24F922008();
    _os_signpost_emit_with_name_impl(&dword_24E5DD000, v2, v3, v5, "CreateBag", "", v4, 2u);
    MEMORY[0x2530542D0](v4, -1, -1);
  }

  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[5];
  v9 = v0[6];

  (*(v9 + 16))(v6, v7, v8);
  sub_24F922098();
  swift_allocObject();
  v0[9] = sub_24F922088();
  (*(v9 + 8))(v7, v8);
  sub_24F928FD8();
  v0[10] = sub_24F928FB8();
  v10 = swift_task_alloc();
  v0[11] = v10;
  *v10 = v0;
  v10[1] = sub_24ED3A218;
  v12 = v0[3];
  v11 = v0[4];

  return MEMORY[0x28217F228](v11, v12, v12);
}

uint64_t sub_24ED3A218()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_24ED3A418;
  }

  else
  {
    v2 = sub_24ED3A32C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24ED3A32C()
{
  v1 = v0[9];
  v2 = v0[4];
  v3 = v0[2];

  v4 = sub_24F92A498();
  (*(*(v4 - 8) + 32))(v3, v2, v4);
  sub_24ED3F994(v1, "CreateBag");

  v5 = v0[1];

  return v5();
}

uint64_t sub_24ED3A418()
{
  v1 = *(v0 + 72);

  sub_24ED3F994(v1, "CreateBag");

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24ED3A4BC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_24F92A498();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = type metadata accessor for InitialBag(0);
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ED3A5B8, 0, 0);
}

uint64_t sub_24ED3A5B8()
{
  v0[10] = sub_24F928FD8();
  v0[11] = sub_24F928FB8();
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = sub_24ED3A670;
  v3 = v0[8];
  v2 = v0[9];

  return MEMORY[0x28217F228](v2, v3, v3);
}

uint64_t sub_24ED3A670()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_24ED3AAC0;
  }

  else
  {

    v2 = sub_24ED3A78C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24ED3A78C()
{
  v1 = *(v0 + 72);
  *(v0 + 136) = *(v1 + *(*(v0 + 64) + 20));
  sub_24ED45088(v1);
  *(v0 + 112) = sub_24F928FB8();
  v2 = swift_task_alloc();
  *(v0 + 120) = v2;
  *v2 = v0;
  v2[1] = sub_24ED3A850;
  v3 = *(v0 + 56);
  v4 = *(v0 + 32);

  return MEMORY[0x28217F228](v3, v4, v4);
}

uint64_t sub_24ED3A850()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_24ED3AB4C;
  }

  else
  {

    v2 = sub_24ED3A96C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24ED3A96C()
{
  v14 = *(v0 + 136);
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  v3 = *(v0 + 24);
  v13 = *(v0 + 16);
  v4 = *(*(v0 + 40) + 32);
  v4(v1, *(v0 + 56), v2);
  v5 = (v3 + *(type metadata accessor for ASKBootstrapV2(0) + 24));
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v5 + 16);
  type metadata accessor for ASKBagContract();
  v9 = swift_allocObject();
  v4(v9 + OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_bag, v1, v2);
  *(v9 + OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_isOfflineBag) = v14;
  v10 = v9 + OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_bagOfflinePolicy;
  *v10 = v6;
  *(v10 + 8) = v7;
  *(v10 + 16) = v8;
  *v13 = v9;

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_24ED3AAC0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24ED3AB4C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24ED3ABD8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_24F92A498();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_24F922028();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ED3AD00, 0, 0);
}

uint64_t sub_24ED3AD00()
{
  if (qword_27F211060 != -1)
  {
    swift_once();
  }

  v1 = sub_24F922058();
  __swift_project_value_buffer(v1, qword_27F23DAC0);
  sub_24F922038();
  sub_24F921FF8();
  v2 = sub_24F922038();
  v3 = sub_24F92C058();
  if (sub_24F92C478())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_24F922008();
    _os_signpost_emit_with_name_impl(&dword_24E5DD000, v2, v3, v5, "CreateJSPackageFetcher", "", v4, 2u);
    MEMORY[0x2530542D0](v4, -1, -1);
  }

  v6 = v0[9];
  v7 = v0[10];
  v8 = v0[7];
  v9 = v0[8];

  (*(v9 + 16))(v6, v7, v8);
  sub_24F922098();
  swift_allocObject();
  v0[11] = sub_24F922088();
  (*(v9 + 8))(v7, v8);
  sub_24F928FD8();
  v0[12] = sub_24F928FB8();
  v10 = swift_task_alloc();
  v0[13] = v10;
  *v10 = v0;
  v10[1] = sub_24ED3AF08;
  v11 = v0[6];
  v12 = v0[4];

  return MEMORY[0x28217F228](v11, v12, v12);
}

uint64_t sub_24ED3AF08()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_24ED3B304;
  }

  else
  {

    v2 = sub_24ED3B024;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24ED3B024()
{
  v1 = *(v0 + 24);
  v2 = type metadata accessor for ASKBootstrapV2(0);
  v3 = *&v1[*(v2 + 40)];
  *(v0 + 136) = *v1;
  v4 = *(v2 + 52);
  v5 = swift_task_alloc();
  *(v0 + 120) = v5;
  *v5 = v0;
  v5[1] = sub_24ED3B0F4;
  v6 = *(v0 + 48);
  v7 = *(v0 + 16);

  return sub_24EC647DC(v7, v6, v3, (v0 + 136), &v1[v4]);
}

uint64_t sub_24ED3B0F4()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  *(*v1 + 128) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_24ED3B3A4;
  }

  else
  {
    v5 = sub_24ED3B264;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24ED3B264()
{
  sub_24ED3F994(*(v0 + 88), "CreateJSPackageFetcher");

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24ED3B304()
{
  v1 = *(v0 + 88);

  sub_24ED3F994(v1, "CreateJSPackageFetcher");

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24ED3B3A4()
{
  sub_24ED3F994(*(v0 + 88), "CreateJSPackageFetcher");

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24ED3B440(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = type metadata accessor for InitialBag(0);
  v1[4] = swift_task_alloc();
  v2 = sub_24F92A498();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ED3B53C, 0, 0);
}

uint64_t sub_24ED3B53C()
{
  sub_24F928FD8();
  v0[9] = sub_24F928FB8();
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_24ED3B5F0;
  v3 = v0[3];
  v2 = v0[4];

  return MEMORY[0x28217F228](v2, v3, v3);
}

uint64_t sub_24ED3B5F0()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_24ED3B984;
  }

  else
  {

    v2 = sub_24ED3B70C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24ED3B70C()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[5];
  v20 = v0[6];
  v21 = v0[2];
  v4 = *(v20 + 32);
  v4(v2);
  v5 = *(v20 + 16);
  v5(v1, v2, v3);
  v6 = v5;
  v19 = v5;
  type metadata accessor for ASKBagContract();
  v7 = swift_allocObject();
  (v4)(v7 + OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_bag, v1, v3);
  *(v7 + OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_isOfflineBag) = 0;
  v8 = v7 + OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_bagOfflinePolicy;
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 1;
  sub_24F929E08();
  v6(v1, v2, v3);
  v9 = MetricsTopicProvider.currentMetricsTopic.getter();
  v11 = v10;
  v12 = ASKBagContract.anonymousMetricsTopics.getter();
  v13 = sub_24F45D828(v12);

  MEMORY[0x25304F780](v1, v9, v11, v13);

  sub_24F929DE8();

  v19(v1, v2, v3);
  type metadata accessor for JSInvalidSignatureReporter();
  v14 = swift_allocObject();

  v16 = sub_24ED43B44(v15, v1, v14);

  (*(v20 + 8))(v2, v3);
  *v21 = v16;

  v17 = v0[1];

  return v17();
}

uint64_t sub_24ED3B984()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24ED3BA10(uint64_t a1, uint64_t a2)
{
  v2[17] = a1;
  v2[18] = a2;
  v3 = sub_24F92A498();
  v2[19] = v3;
  v4 = *(v3 - 8);
  v2[20] = v4;
  v2[21] = *(v4 + 64);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ED3BAE4, 0, 0);
}

uint64_t sub_24ED3BAE4()
{
  sub_24F928FD8();
  *(v0 + 192) = sub_24F928FB8();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EBF8);
  v2 = swift_task_alloc();
  *(v0 + 200) = v2;
  *v2 = v0;
  v2[1] = sub_24ED3BBB4;

  return MEMORY[0x28217F228](v0 + 16, v1, v1);
}

uint64_t sub_24ED3BBB4()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_24ED3C27C;
  }

  else
  {
    v2 = sub_24ED3BCC8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24ED3BCC8()
{
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v1 = off_2861EE948;
  v2 = type metadata accessor for JSJetpackFetcher();
  v0[27] = v1(v2, &off_2861EE928);
  v3 = swift_task_alloc();
  v0[28] = v3;
  *v3 = v0;
  v3[1] = sub_24ED3BDAC;
  v4 = v0[23];
  v5 = v0[19];

  return MEMORY[0x28217F228](v4, v5, v5);
}

uint64_t sub_24ED3BDAC()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_24ED3C2F0;
  }

  else
  {
    v2 = sub_24ED3BEC0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24ED3BEC0()
{
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v4 = *(v0 + 168);
  v3 = *(v0 + 176);
  v5 = *(v0 + 152);
  v6 = *(v0 + 160);
  sub_24E60169C(*(v0 + 144), v0 + 56, &unk_27F22EC00);
  (*(v6 + 16))(v3, v2, v5);
  v7 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v8 = swift_allocObject();
  v9 = *(v0 + 72);
  *(v8 + 16) = *(v0 + 56);
  *(v8 + 32) = v9;
  *(v8 + 48) = *(v0 + 88);
  (*(v6 + 32))(v8 + v7, v3, v5);
  *(v8 + ((v4 + v7 + 7) & 0xFFFFFFFFFFFFFFF8)) = v1;
  v10 = sub_24F929638();
  v11 = MEMORY[0x277D21FB0];
  *(v0 + 120) = v10;
  *(v0 + 128) = v11;
  __swift_allocate_boxed_opaque_existential_1((v0 + 96));

  sub_24F929628();
  type metadata accessor for AppStoreLocalizerFactory();
  *(v0 + 240) = sub_24F92A938();

  __swift_destroy_boxed_opaque_existential_1(v0 + 96);
  v12 = swift_task_alloc();
  *(v0 + 248) = v12;
  *v12 = v0;
  v12[1] = sub_24ED3C094;
  v13 = *(v0 + 136);

  return MEMORY[0x282180668](v13);
}

uint64_t sub_24ED3C094()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_24ED3C378;
  }

  else
  {
    v2 = sub_24ED3C1C4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24ED3C1C4()
{
  v1 = v0[23];
  v2 = v0[19];
  v3 = v0[20];

  (*(v3 + 8))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  v4 = v0[1];

  return v4();
}

uint64_t sub_24ED3C27C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24ED3C2F0()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24ED3C378()
{
  v1 = v0[23];
  v2 = v0[19];
  v3 = v0[20];

  (*(v3 + 8))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  v4 = v0[1];

  return v4();
}

uint64_t sub_24ED3C424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v28 = a3;
  v29 = a4;
  v30 = a2;
  v34 = a5;
  v7 = sub_24F92A498();
  v27 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F928078();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_24F929D48();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v26 - v16;
  sub_24E615E00(a1, v33);
  sub_24F928088();
  result = sub_24F929D38();
  if (!v5)
  {
    v20 = v27;
    v19 = v28;
    v21 = v29;
    v26[1] = 0;
    sub_24E60169C(v30, &v31, &unk_27F22EC00);
    if (v32)
    {
      sub_24E612C80(&v31, v33);
    }

    else
    {
      (*(v20 + 16))(v9, v19, v7);
      v33[3] = sub_24F929518();
      v33[4] = MEMORY[0x277D21F40];
      __swift_allocate_boxed_opaque_existential_1(v33);
      sub_24F929508();
      if (v32)
      {
        sub_24E601704(&v31, &unk_27F22EC00);
      }
    }

    (*(v12 + 16))(v14, v17, v11);
    sub_24E615E00(v33, &v31);
    type metadata accessor for AppStoreLocalizerFactory();
    v22 = swift_allocObject();
    v23 = v22 + OBJC_IVAR____TtC12GameStoreKit24AppStoreLocalizerFactory_cachedDefaultLocalizer;
    *v23 = 0u;
    *(v23 + 16) = 0u;
    *(v23 + 32) = 0;
    v24 = OBJC_IVAR____TtC12GameStoreKit24AppStoreLocalizerFactory_localizerCache;
    v25 = sub_24E60EAE0(MEMORY[0x277D84F90]);
    (*(v12 + 8))(v17, v11);
    *(v22 + v24) = v25;
    (*(v12 + 32))(v22 + OBJC_IVAR____TtC12GameStoreKit24AppStoreLocalizerFactory_jetpackResourceBundle, v14, v11);
    sub_24E612C80(&v31, v22 + OBJC_IVAR____TtC12GameStoreKit24AppStoreLocalizerFactory_defaultLanguageSource);
    *(v22 + OBJC_IVAR____TtC12GameStoreKit24AppStoreLocalizerFactory_objectGraph) = v21;

    result = __swift_destroy_boxed_opaque_existential_1(v33);
    *v34 = v22;
  }

  return result;
}

uint64_t sub_24ED3C7A4(uint64_t a1, uint64_t a2)
{
  v2[23] = a1;
  v2[24] = a2;
  v3 = *(type metadata accessor for ASKBootstrapV2(0) - 8);
  v2[25] = v3;
  v2[26] = *(v3 + 64);
  v2[27] = swift_task_alloc();
  v4 = sub_24F92A498();
  v2[28] = v4;
  v2[29] = *(v4 - 8);
  v2[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ED3C8C4, 0, 0);
}

uint64_t sub_24ED3C8C4()
{
  sub_24F928FD8();
  v0[31] = sub_24F928FB8();
  v1 = swift_task_alloc();
  v0[32] = v1;
  *v1 = v0;
  v1[1] = sub_24ED3C97C;
  v2 = v0[30];
  v3 = v0[28];

  return MEMORY[0x28217F228](v2, v3, v3);
}

uint64_t sub_24ED3C97C()
{
  v2 = *v1;
  *(v2 + 264) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24ED3D1E8, 0, 0);
  }

  else
  {
    v3 = type metadata accessor for ASKBagContract();
    v4 = swift_task_alloc();
    *(v2 + 272) = v4;
    *v4 = v2;
    v4[1] = sub_24ED3CB14;

    return MEMORY[0x28217F228](v2 + 176, v3, v3);
  }
}

uint64_t sub_24ED3CB14()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_24ED3D260;
  }

  else
  {
    v2 = sub_24ED3CC28;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24ED3CC28()
{
  v0[36] = v0[22];
  sub_24F929928();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EBF8);
  v2 = swift_task_alloc();
  v0[37] = v2;
  *v2 = v0;
  v2[1] = sub_24ED3CCF8;

  return MEMORY[0x28217F228](v0 + 7, v1, v1);
}

uint64_t sub_24ED3CCF8()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_24ED3D2FC;
  }

  else
  {
    v2 = sub_24ED3CE0C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24ED3CE0C()
{
  v1 = *(v0 + 288);
  v3 = *(v0 + 208);
  v2 = *(v0 + 216);
  v4 = *(v0 + 192);
  v5 = *(v0 + 200);
  __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
  v6 = off_2861EE938[0];
  v7 = type metadata accessor for JSJetpackFetcher();
  v6(v7, &off_2861EE928);
  sub_24ED34B58(v4, v2);
  sub_24E615E00(v0 + 16, v0 + 96);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = (v3 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  sub_24ED352E4(v2, v10 + v8);
  sub_24E612C80((v0 + 96), v10 + v9);
  *(v10 + ((v9 + 47) & 0xFFFFFFFFFFFFFFF8)) = v1;
  v11 = sub_24F929638();
  v12 = MEMORY[0x277D21FB0];
  *(v0 + 160) = v11;
  *(v0 + 168) = v12;
  __swift_allocate_boxed_opaque_existential_1((v0 + 136));

  sub_24F929628();
  sub_24F929958();
  *(v0 + 312) = sub_24F92A938();

  __swift_destroy_boxed_opaque_existential_1(v0 + 136);
  v13 = swift_task_alloc();
  *(v0 + 320) = v13;
  *v13 = v0;
  v13[1] = sub_24ED3CFF8;
  v14 = *(v0 + 184);

  return MEMORY[0x282180668](v14);
}

uint64_t sub_24ED3CFF8()
{
  *(*v1 + 328) = v0;

  if (v0)
  {
    v2 = sub_24ED3D3AC;
  }

  else
  {
    v2 = sub_24ED3D128;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24ED3D128()
{
  v1 = v0[30];
  v2 = v0[28];
  v3 = v0[29];

  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  (*(v3 + 8))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + 7));

  v4 = v0[1];

  return v4();
}

uint64_t sub_24ED3D1E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24ED3D260()
{
  v1 = v0[30];
  v2 = v0[28];
  v3 = v0[29];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24ED3D2FC()
{
  v1 = v0[30];
  v2 = v0[28];
  v3 = v0[29];

  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24ED3D3AC()
{
  v1 = v0[30];
  v2 = v0[28];
  v3 = v0[29];

  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  (*(v3 + 8))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + 7));

  v4 = v0[1];

  return v4();
}

void sub_24ED3D464(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v30 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2156F0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - v7;
  sub_24ED3D864(*a1, *(a1 + 8), v32);
  v28 = v32[2];
  v26 = v32[0];
  v27 = v32[3];
  v25 = v32[4];
  v29 = v32[5];
  sub_24E615E00(a2, v32);
  if (qword_27F2108E0 != -1)
  {
    swift_once();
  }

  sub_24F92A448();
  sub_24F92A408();
  v9 = *(v6 + 8);
  v9(v8, v5);
  if (qword_27F2108E8 != -1)
  {
    swift_once();
  }

  sub_24F92A448();
  sub_24F92A408();
  v9(v8, v5);

  sub_24F929918();
  sub_24F929908();

  v10 = v29;
  if (v29)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EC10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24F93DE60;
    *(inited + 32) = 0x746E6169726176;
    v12 = inited + 32;
    v13 = v25;
    *(inited + 40) = 0xE700000000000000;
    *(inited + 48) = v13;
    *(inited + 56) = v10;
    sub_24E6086DC(inited);
    swift_setDeallocating();
    sub_24E601704(v12, &qword_27F219F90);
    sub_24F929948();
    v14 = [objc_opt_self() ams_sharedAccountStore];
    v15 = [v14 ams_localiTunesAccount];

    if (v15)
    {
      v16 = [v15 ams_storefront];

      if (v16)
      {
        v17 = sub_24F92B0D8();
        v19 = v18;

        v21 = sub_24F929938();
        if (*v20)
        {
          v22 = v20;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v31 = *v22;
          *v22 = 0x8000000000000000;
          sub_24E81D324(v17, v19, 0x6F726665726F7473, 0xEA0000000000746ELL, isUniquelyReferenced_nonNull_native);
          *v22 = v31;
        }

        else
        {
        }

        v21(v32, 0);
      }
    }
  }
}

uint64_t sub_24ED3D864@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = result;
  if (!a2)
  {
    v20 = 0;
    v21 = 0;
    v4 = 0xE900000000000029;
    v22 = 0x6E776F6E6B6E7528;
    v23 = result;
LABEL_18:
    *a3 = v22;
    a3[1] = v4;
    a3[2] = v3;
    a3[3] = v20;
    a3[4] = v23;
    a3[5] = v21;
    return result;
  }

  v4 = a2;
  v32 = a3;
  sub_24E600AEC();

  v5 = sub_24F92C618();
  v6 = *(v5 + 16);
  if (v6)
  {
    v30 = v3;
    v31 = v4;
    v33 = MEMORY[0x277D84F90];
    result = sub_24F4578E0(0, v6, 0);
    v7 = 0;
    v8 = v33;
    v9 = (v5 + 56);
    while (v7 < *(v5 + 16))
    {
      v10 = *(v9 - 3);
      v11 = *(v9 - 2);
      v12 = *(v9 - 1);
      v13 = *v9;

      v14 = MEMORY[0x253050B50](v10, v11, v12, v13);
      v16 = v15;

      v18 = *(v33 + 16);
      v17 = *(v33 + 24);
      if (v18 >= v17 >> 1)
      {
        result = sub_24F4578E0((v17 > 1), v18 + 1, 1);
      }

      ++v7;
      *(v33 + 16) = v18 + 1;
      v19 = v33 + 16 * v18;
      *(v19 + 32) = v14;
      *(v19 + 40) = v16;
      v9 += 4;
      if (v6 == v7)
      {

        v3 = v30;
        v4 = v31;
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  v8 = MEMORY[0x277D84F90];
LABEL_11:
  v24 = *(v8 + 16);
  if (v24 < 3)
  {

    v20 = 0;
    v23 = 0;
    v21 = 0;
    v22 = v3;
    v3 = 0;
LABEL_17:
    a3 = v32;
    goto LABEL_18;
  }

  if (*(v8 + 16) < v24 - 2)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EC18);
  sub_24E602068(&unk_27F22EC20, &qword_27F22EC18);
  v22 = sub_24F92AF68();
  v4 = v25;

  v26 = *(v8 + 16);
  if (v24 - 2 >= v26)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v24 <= v26)
  {
    v27 = 16 * v24;
    v28 = (v8 + 16 * v24);
    v3 = *v28;
    v20 = v28[1];
    v29 = v8 + 32 + v27;
    v23 = *(v29 - 16);
    v21 = *(v29 - 8);

    goto LABEL_17;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_24ED3DB38@<X0>(uint64_t *a1@<X8>)
{
  sub_24F928FD8();
  sub_24F928FB8();
  v2 = sub_24F92A068();
  v3 = MEMORY[0x277D22258];
  a1[3] = v2;
  a1[4] = v3;
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_24F92A058();
}

uint64_t sub_24ED3DB94@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for InitialBag(0);
  MEMORY[0x28223BE20](v4);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F92A498();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F928FD8();
  sub_24F928FB8();
  sub_24F928F28();

  (*(v8 + 32))(v10, v6, v7);
  v11 = objc_opt_self();
  v12 = *(a1 + *(type metadata accessor for ASKBootstrapV2(0) + 40));
  v13 = [v11 ams:v12 configurationWithProcessInfo:sub_24F92A328() bag:?];
  swift_unknownObjectRelease();
  v14 = [objc_opt_self() minimalSessionUsing_];
  sub_24F928FB8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222250);
  sub_24F928F28();

  v15 = [objc_allocWithZone(type metadata accessor for MediaAuthenticationProtocolHandler()) initWithTokenService_];
  swift_unknownObjectRelease();
  [v14 setProtocolHandler_];

  [v14 setResponseDecoder_];
  result = (*(v8 + 8))(v10, v7);
  *a2 = v14;
  return result;
}

uint64_t sub_24ED3DE20@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for InitialBag(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F92A498();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F928FD8();
  sub_24F928FB8();
  sub_24F928F28();

  (*(v6 + 32))(v8, v4, v5);
  v9 = [objc_opt_self() defaultSessionConfiguration];
  [v9 setHTTPShouldUsePipelining_];
  [v9 setNetworkServiceType_];
  type metadata accessor for ArtworkLoaderURLSession();
  v10 = [swift_getObjCClassFromMetadata() minimalSessionUsing_];
  sub_24F2A6B24();

  result = (*(v6 + 8))(v8, v5);
  *a1 = v10;
  return result;
}

uint64_t sub_24ED3E004@<X0>(void *a1@<X8>)
{
  v2 = sub_24F92A498();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F928FD8();
  sub_24F928FB8();
  sub_24F928F28();

  v6 = sub_24F92A328();
  (*(v3 + 8))(v5, v2);
  v7 = [objc_allocWithZone(MEMORY[0x277CEE498]) initWithBag_];
  result = swift_unknownObjectRelease();
  *a1 = v7;
  return result;
}

uint64_t sub_24ED3E12C@<X0>(uint64_t *a1@<X8>)
{
  v19 = a1;
  v1 = sub_24F92A498();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v18 - v6;
  sub_24F928FD8();
  v18[1] = sub_24F928FB8();
  sub_24F928F28();
  v8 = *(v2 + 16);
  v8(v4, v7, v1);
  type metadata accessor for ASKBagContract();
  v9 = swift_allocObject();
  (*(v2 + 32))(v9 + OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_bag, v4, v1);
  *(v9 + OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_isOfflineBag) = 0;
  v10 = v9 + OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_bagOfflinePolicy;
  *v10 = 0;
  *(v10 + 8) = 0;
  *(v10 + 16) = 1;
  sub_24F929E08();
  v8(v4, v7, v1);
  v20 = v9;
  v11 = MetricsTopicProvider.currentMetricsTopic.getter();
  v13 = v12;
  v14 = ASKBagContract.anonymousMetricsTopics.getter();
  v15 = sub_24F45D828(v14);

  MEMORY[0x25304F780](v4, v11, v13, v15);

  v16 = sub_24F929DE8();

  result = (*(v2 + 8))(v7, v1);
  *v19 = v16;
  return result;
}

uint64_t sub_24ED3E394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  sub_24F928FD8();
  v3 = sub_24F928FB8();
  v4 = sub_24F929E08();
  v24[2] = v3;
  sub_24F928F28();
  v34[8] = v4;
  v34[9] = MEMORY[0x277D221A8];
  v34[5] = v31;
  v5 = type metadata accessor for ASKBootstrapV2(0);
  sub_24E60169C(a1 + *(v5 + 32), v35, &unk_27F22EAC8);
  v6 = *(a1 + *(v5 + 36));
  v24[1] = v31;
  if (v6)
  {

    sub_24F928FB8();
    v6();
  }

  else
  {
    v37 = 0;
    *&v35[40] = 0u;
    v36 = 0u;
  }

  v7 = MEMORY[0x277D84F90];
  for (i = 4; i != 19; i += 5)
  {
    sub_24E60169C(&v34[i + 1], &v31, &unk_27F22EAC8);
    v26[0] = v31;
    v26[1] = v32;
    v27 = v33;
    if (*(&v32 + 1))
    {
      sub_24E612C80(v26, &v28);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34[0] = v7;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v7 = sub_24E6191F0(0, v7[2] + 1, 1, v7);
        v34[0] = v7;
      }

      v11 = v7[2];
      v10 = v7[3];
      if (v11 >= v10 >> 1)
      {
        v7 = sub_24E6191F0((v10 > 1), v11 + 1, 1, v7);
        v34[0] = v7;
      }

      v12 = v29;
      v13 = v30;
      v14 = __swift_mutable_project_boxed_opaque_existential_1(&v28, v29);
      v15 = MEMORY[0x28223BE20](v14);
      v17 = v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v18 + 16))(v17, v15);
      sub_24ED43E20(v11, v17, v34, v12, v13);
      __swift_destroy_boxed_opaque_existential_1(&v28);
    }

    else
    {
      sub_24E601704(v26, &unk_27F22EAC8);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EAC8);
  swift_arrayDestroy();
  if (v7[2] == 1)
  {
    sub_24E615E00((v7 + 4), &v28);

    sub_24E612C80(&v28, &v31);
    return sub_24E612C80(&v31, v25);
  }

  else
  {
    v20 = sub_24F92A248();
    swift_allocObject();
    v21 = sub_24F92A238();
    v22 = MEMORY[0x277D222E8];
    v23 = v25;
    v25[3] = v20;
    v23[4] = v22;

    *v23 = v21;
  }

  return result;
}

uint64_t sub_24ED3E718@<X0>(void *a1@<X8>)
{
  v2 = sub_24F92A498();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F928FD8();
  sub_24F928FB8();
  type metadata accessor for ASKBootstrapV2(0);
  sub_24F928F28();
  v6 = sub_24F92A328();
  (*(v3 + 8))(v5, v2);
  v7 = objc_allocWithZone(MEMORY[0x277CEE578]);
  v8 = sub_24F92B098();
  v9 = [v7 initWithClientIdentifier:v8 bag:v6];

  swift_unknownObjectRelease();
  sub_24F92AB98();
  sub_24F928F28();
  v10 = v14[1];
  v11 = objc_allocWithZone(type metadata accessor for PersonalizedMediaTokenService());
  v12 = sub_24EECF800(v9, v10);

  *a1 = v12;
  return result;
}

uint64_t sub_24ED3E8C8@<X0>(void *a1@<X8>)
{
  sub_24F928FD8();
  sub_24F928FB8();
  sub_24E69A5C4(0, &qword_27F221568);
  sub_24F928F28();

  type metadata accessor for RestrictionsFetcher();
  v2 = swift_allocObject();
  *(v2 + 16) = v5;
  type metadata accessor for Restrictions();
  swift_allocObject();
  v3 = sub_24E857D9C(v2);

  *a1 = v3;
  return result;
}

uint64_t sub_24ED3E988@<X0>(uint64_t *a1@<X8>)
{
  sub_24F928FD8();
  sub_24F928FB8();
  type metadata accessor for ArtworkLoaderURLSession();
  sub_24F928F28();

  v2 = [v4 session];

  type metadata accessor for ThreeDimensionalMediaArtworkImageDownloader();
  result = swift_allocObject();
  *(result + 16) = v2;
  *a1 = result;
  return result;
}

uint64_t sub_24ED3EA28(uint64_t a1, uint64_t a2)
{
  *(v2 + 176) = a1;
  *(v2 + 184) = a2;
  return MEMORY[0x2822009F8](sub_24ED3EA48, 0, 0);
}

uint64_t sub_24ED3EA48()
{
  sub_24F928FD8();
  *(v0 + 192) = sub_24F928FB8();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EBF8);
  v2 = swift_task_alloc();
  *(v0 + 200) = v2;
  *v2 = v0;
  v2[1] = sub_24ED3EB18;

  return MEMORY[0x28217F228](v0 + 16, v1, v1);
}

uint64_t sub_24ED3EB18()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_24ED3F25C;
  }

  else
  {
    v2 = sub_24ED3EC2C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24ED3EC2C()
{
  v1 = *(v0 + 184);
  sub_24E615E00(v0 + 16, v0 + 56);
  v2 = *(v0 + 80);
  v3 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 56, v2);
  v4 = *(v2 - 8);
  v5 = swift_task_alloc();
  (*(v4 + 16))(v5, v3, v2);
  v6 = *v5;
  v7 = type metadata accessor for JSJetpackFetcher();
  *(v0 + 120) = v7;
  *(v0 + 128) = &off_2861EE928;
  *(v0 + 96) = v6;
  type metadata accessor for JSPackageProvisioner();
  v8 = swift_allocObject();
  *(v0 + 216) = v8;
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 96, v7);
  v10 = *(v7 - 8);
  v11 = swift_task_alloc();
  (*(v10 + 16))(v11, v9, v7);
  v12 = *v11;
  *(v0 + 160) = v7;
  *(v0 + 168) = &off_2861EE928;
  *(v0 + 136) = v12;
  sub_24E612C80((v0 + 136), v8 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);

  __swift_destroy_boxed_opaque_existential_1(v0 + 56);

  v13 = (v1 + *(type metadata accessor for ASKBootstrapV2(0) + 44));
  v17 = (*v13 + **v13);
  v14 = swift_task_alloc();
  *(v0 + 224) = v14;
  *v14 = v0;
  v14[1] = sub_24ED3EED0;
  v15 = *(v0 + 192);

  return v17(v15);
}

uint64_t sub_24ED3EED0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 232) = v1;

  if (v1)
  {
    v5 = sub_24ED3F2C0;
  }

  else
  {
    *(v4 + 240) = a1;
    v5 = sub_24ED3EFF8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24ED3EFF8()
{
  v0[31] = sub_24E93C118(v0[24], v0[30]);

  v1 = swift_task_alloc();
  v0[32] = v1;
  *v1 = v0;
  v1[1] = sub_24ED3F0B4;
  v2 = v0[22];

  return MEMORY[0x282180668](v2);
}

uint64_t sub_24ED3F0B4()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_24ED3F338;
  }

  else
  {
    v2 = sub_24ED3F1E4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24ED3F1E4()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24ED3F25C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24ED3F2C0()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24ED3F338()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24ED3F3B0(uint64_t a1, uint64_t a2)
{
  v2[22] = a1;
  v2[23] = a2;
  v3 = sub_24F922028();
  v2[24] = v3;
  v2[25] = *(v3 - 8);
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ED3F47C, 0, 0);
}

uint64_t sub_24ED3F47C()
{
  if (qword_27F211060 != -1)
  {
    swift_once();
  }

  v1 = sub_24F922058();
  __swift_project_value_buffer(v1, qword_27F23DAC0);
  sub_24F922038();
  sub_24F921FF8();
  v2 = sub_24F922038();
  v3 = sub_24F92C058();
  if (sub_24F92C478())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_24F922008();
    _os_signpost_emit_with_name_impl(&dword_24E5DD000, v2, v3, v5, "JSService", "", v4, 2u);
    MEMORY[0x2530542D0](v4, -1, -1);
  }

  v6 = v0[26];
  v7 = v0[27];
  v8 = v0[24];
  v9 = v0[25];

  (*(v9 + 16))(v6, v7, v8);
  sub_24F922098();
  swift_allocObject();
  v0[28] = sub_24F922088();
  (*(v9 + 8))(v7, v8);
  v0[29] = sub_24F928FD8();
  v0[30] = sub_24F928FB8();
  v10 = swift_task_alloc();
  v0[31] = v10;
  *v10 = v0;
  v10[1] = sub_24ED3F68C;

  return MEMORY[0x28217F228](v0 + 2, &type metadata for ASKPrerequisites, &type metadata for ASKPrerequisites);
}

uint64_t sub_24ED3F68C()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_24ED3F8F8;
  }

  else
  {

    v2 = sub_24ED3F7A8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24ED3F7A8()
{
  v11 = v0;
  v1 = *(v0 + 256);
  v2 = *(v0 + 184);
  sub_24ED44718(v0 + 16, v0 + 96);
  v3 = sub_24F928FB8();
  v10[0] = *v2;
  type metadata accessor for JSService();
  swift_allocObject();
  v4 = sub_24F29517C((v0 + 96), v3, v10);
  if (v1)
  {
    sub_24ED44774(v0 + 16);
    sub_24ED3F994(*(v0 + 224), "JSService");
  }

  else
  {
    v6 = v4;
    v7 = *(v0 + 224);
    v8 = *(v0 + 176);
    sub_24ED44774(v0 + 16);
    *v8 = v6;
    sub_24ED3F994(v7, "JSService");
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_24ED3F8F8()
{

  sub_24ED3F994(*(v0 + 224), "JSService");

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24ED3F994(uint64_t a1, const char *a2)
{
  v18 = a2;
  v2 = sub_24F922068();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F922028();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F211060 != -1)
  {
    swift_once();
  }

  v10 = sub_24F922058();
  __swift_project_value_buffer(v10, qword_27F23DAC0);
  v11 = sub_24F922038();
  sub_24F922078();
  v12 = sub_24F92C048();
  if (sub_24F92C478())
  {

    sub_24F9220A8();

    if ((*(v3 + 88))(v5, v2) == *MEMORY[0x277D85B00])
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v3 + 8))(v5, v2);
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = sub_24F922008();
    _os_signpost_emit_with_name_impl(&dword_24E5DD000, v11, v12, v15, v18, v13, v14, 2u);
    MEMORY[0x2530542D0](v14, -1, -1);
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_24ED3FC44()
{
  sub_24F928FD8();
  v0[9] = sub_24F928FB8();
  v1 = type metadata accessor for JSService();
  v0[10] = v1;
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_24ED3FD0C;

  return MEMORY[0x28217F228](v0 + 7, v1, v1);
}

uint64_t sub_24ED3FD0C()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_24ED3FF6C;
  }

  else
  {

    v2 = sub_24ED3FE28;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24ED3FE28()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  v0[5] = v1;
  v0[6] = &off_286215198;
  v0[2] = v2;
  type metadata accessor for JSIntentDispatcher();
  v4 = swift_allocObject();
  v5 = __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v1);
  v6 = *(v1 - 8);
  v7 = swift_task_alloc();
  (*(v6 + 16))(v7, v5, v1);
  v8 = *v7;
  v4[5] = v1;
  v4[6] = &off_286215198;
  v4[2] = v8;
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  *v3 = v4;
  v9 = v0[1];

  return v9();
}

uint64_t sub_24ED3FF6C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24ED3FFD0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for ASKBootstrapV2(0) + 28));
  v4 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_24F928FD8();
  sub_24F928FB8();
  v5 = (*(v4 + 8))();
  v7 = v6;

  *a2 = v5;
  a2[1] = v7;
  return result;
}

void *sub_24ED4006C@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for LegacyAppStoreInstallStateMonitor();
  swift_allocObject();
  result = sub_24ECF8B58();
  a1[3] = v2;
  a1[4] = &off_2861EEB70;
  *a1 = result;
  return result;
}

uint64_t sub_24ED400E4()
{
  sub_24F928FD8();
  *(v0 + 32) = sub_24F928FB8();
  v1 = type metadata accessor for JSIntentDispatcher();
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_24ED401A8;

  return MEMORY[0x28217F228](v0 + 16, v1, v1);
}

uint64_t sub_24ED401A8()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_24EB7F064;
  }

  else
  {
    v2 = sub_24ED402BC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24ED402BC()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  type metadata accessor for Commerce();
  swift_allocObject();
  v4 = sub_24F13BA90(v1, v3);

  *v2 = v4;
  v5 = v0[1];

  return v5();
}

void sub_24ED40360(uint64_t a1@<X8>)
{
  sub_24F928FD8();
  sub_24F928FB8();
  type metadata accessor for AppleSilicon();
  sub_24F928F28();

  v2 = OBJC_IVAR____TtC12GameStoreKit12AppleSilicon_isSupportEnabled;
  swift_beginAccess();
  v3 = v4[v2];
  *(a1 + 24) = &type metadata for PurchaseHistory;
  *(a1 + 32) = &protocol witness table for PurchaseHistory;
  PurchaseHistory.init(isAppleSiliconSupportEnabled:)(v3, a1);
}

uint64_t sub_24ED40408@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  sub_24F928FD8();
  sub_24F928FB8();
  sub_24E69A5C4(0, &qword_27F221568);
  sub_24F928F28();
  v5 = v13;
  sub_24F928FB8();
  type metadata accessor for ASKBagContract();
  sub_24F928F28();

  v6 = v13;
  type metadata accessor for MetricsIdStore();
  swift_allocObject();
  v7 = v5;

  v8 = sub_24EF78FD0(v7, v6);

  sub_24F92B838();
  v9 = sub_24F92B858();
  (*(*(v9 - 8) + 56))(v4, 0, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v8;

  sub_24F1D4328(0, 0, v4, &unk_24F99A9B8, v10);

  *a1 = v8;
  return result;
}

uint64_t sub_24ED405FC@<X0>(void *a1@<X8>)
{
  sub_24F928FD8();
  sub_24F928FB8();
  type metadata accessor for ASKBagContract();
  sub_24F928F28();

  v2 = type metadata accessor for AppleSilicon();
  v3 = objc_allocWithZone(v2);
  v3[OBJC_IVAR____TtC12GameStoreKit12AppleSilicon_isSupportEnabled] = 0;
  v4 = [objc_allocWithZone(MEMORY[0x277CCA930]) initWithCondition_];
  *&v3[OBJC_IVAR____TtC12GameStoreKit12AppleSilicon_rosettaAvailabilityConditionLock] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EBF0);
  swift_allocObject();
  *&v3[OBJC_IVAR____TtC12GameStoreKit12AppleSilicon_isRosettaAvailableBox] = sub_24EA4ED84(0);
  v7.receiver = v3;
  v7.super_class = v2;
  v5 = objc_msgSendSuper2(&v7, sel_init);
  sub_24F07C3A0();

  *a1 = v5;
  return result;
}

uint64_t sub_24ED40720@<X0>(void *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EBE0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - v4;
  sub_24F928FD8();
  sub_24F928FB8();
  type metadata accessor for ASKBagContract();
  sub_24F928F28();

  if (qword_27F210A10 != -1)
  {
    swift_once();
  }

  sub_24F92A398();
  sub_24F92A408();
  (*(v3 + 8))(v5, v2);
  v6 = v14;
  v7 = type metadata accessor for GameCenter();
  v8 = objc_allocWithZone(v7);
  type metadata accessor for GameCenterCache();
  v9 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F235880);
  *(v9 + 16) = sub_24F92A9E8();
  *(v9 + 24) = 0;
  *(v9 + 32) = v6;
  *&v8[OBJC_IVAR____TtC12GameStoreKit10GameCenter_cache] = v9;
  v13.receiver = v8;
  v13.super_class = v7;
  v10 = objc_msgSendSuper2(&v13, sel_init);

  *a1 = v10;
  return result;
}

id sub_24ED40928@<X0>(void *a1@<X8>)
{
  sub_24F928FD8();
  sub_24F928FB8();
  type metadata accessor for ASKBagContract();
  sub_24F928F28();

  v2 = v8;
  v3 = type metadata accessor for GameCenterFriendRequestCoordinator();
  v4 = objc_allocWithZone(v3);
  v5 = OBJC_IVAR____TtC12GameStoreKit34GameCenterFriendRequestCoordinator_onFriendRequestCountDidUpdate;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D0);
  swift_allocObject();
  *&v4[v5] = sub_24F92ADA8();
  *&v4[OBJC_IVAR____TtC12GameStoreKit34GameCenterFriendRequestCoordinator_currentFriendRequestCount] = 0;
  *&v4[OBJC_IVAR____TtC12GameStoreKit34GameCenterFriendRequestCoordinator_bag] = v2;
  v7.receiver = v4;
  v7.super_class = v3;
  result = objc_msgSendSuper2(&v7, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_24ED40A14@<X0>(void *a1@<X8>)
{
  sub_24F928FD8();
  sub_24F928FB8();
  sub_24E69A5C4(0, &qword_27F221568);
  sub_24F928F28();
  v2 = v11;
  type metadata accessor for ASKBagContract();
  sub_24F928F28();
  v3 = v11;
  v4 = type metadata accessor for AppStoreOnDeviceRecommendationsManager();
  v5 = objc_allocWithZone(v4);
  v6 = OBJC_IVAR____TtC12GameStoreKit38AppStoreOnDeviceRecommendationsManager_amsEngagement;
  *&v5[v6] = [objc_allocWithZone(MEMORY[0x277CEE498]) init];
  *&v5[OBJC_IVAR____TtC12GameStoreKit38AppStoreOnDeviceRecommendationsManager_activeStoreAccount] = 0;
  *&v5[OBJC_IVAR____TtC12GameStoreKit38AppStoreOnDeviceRecommendationsManager_accountStore] = v2;
  *&v5[OBJC_IVAR____TtC12GameStoreKit38AppStoreOnDeviceRecommendationsManager_bag] = v3;
  v10.receiver = v5;
  v10.super_class = v4;
  v7 = v2;

  v8 = objc_msgSendSuper2(&v10, sel_init);

  *a1 = v8;
  return result;
}

id sub_24ED40B48@<X0>(void *a1@<X8>)
{
  sub_24F928FD8();
  sub_24F928FB8();
  type metadata accessor for ASKBagContract();
  sub_24F928F28();

  v2 = v10;
  v3 = type metadata accessor for OnDeviceSearchHistoryManager();
  v4 = objc_allocWithZone(v3);
  v5 = OBJC_IVAR____TtC12GameStoreKit28OnDeviceSearchHistoryManager_defaults;
  *&v4[v5] = [objc_opt_self() standardUserDefaults];
  v6 = &v4[OBJC_IVAR____TtC12GameStoreKit28OnDeviceSearchHistoryManager_searchHistoryDefaultsKey];
  strcpy(&v4[OBJC_IVAR____TtC12GameStoreKit28OnDeviceSearchHistoryManager_searchHistoryDefaultsKey], "searchHistory");
  *(v6 + 7) = -4864;
  *&v4[OBJC_IVAR____TtC12GameStoreKit28OnDeviceSearchHistoryManager_maxAllowed] = 30;
  v7 = OBJC_IVAR____TtC12GameStoreKit28OnDeviceSearchHistoryManager_onChange;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EBD0);
  swift_allocObject();
  *&v4[v7] = sub_24F92ADA8();
  *&v4[OBJC_IVAR____TtC12GameStoreKit28OnDeviceSearchHistoryManager_bag] = v2;
  v9.receiver = v4;
  v9.super_class = v3;
  result = objc_msgSendSuper2(&v9, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_24ED40C90@<X0>(void *a1@<X8>)
{
  sub_24F928FD8();
  sub_24F928FB8();
  sub_24E69A5C4(0, &qword_27F221568);
  sub_24F928F28();
  type metadata accessor for ASKBagContract();
  sub_24F928F28();
  v2 = objc_allocWithZone(type metadata accessor for OnDevicePersonalizationDataManager());
  v3 = OnDevicePersonalizationDataManager.init(accountStore:bag:)(v5, v5);

  *a1 = v3;
  return result;
}

uint64_t sub_24ED40D48@<X0>(void *a1@<X8>)
{
  type metadata accessor for NetworkActivity();
  v2 = swift_allocObject();
  v2[2] = [objc_allocWithZone(MEMORY[0x277D225F0]) init];
  v2[4] = 0;
  swift_unknownObjectWeakInit();
  v3 = sub_24E69A5C4(0, &qword_27F222300);
  result = sub_24F92BEF8();
  v5 = MEMORY[0x277D225C0];
  v2[8] = v3;
  v2[9] = v5;
  v2[5] = result;
  v2[10] = 0;
  *a1 = v2;
  return result;
}

uint64_t sub_24ED40DEC@<X0>(uint64_t a1@<X8>)
{
  v16 = a1;
  v1 = sub_24F929F48();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F92A498();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v15 - v10;
  sub_24F928FD8();
  sub_24F928FB8();
  sub_24F928F28();
  type metadata accessor for ASKBagContract();
  sub_24F928F28();
  v15[1] = v17;
  (*(v6 + 16))(v8, v11, v5);
  v12 = [objc_opt_self() ams_sharedAccountStore];
  v18 = sub_24E69A5C4(0, &qword_27F221568);
  v19 = MEMORY[0x277D225B8];
  v17 = v12;
  v13 = [objc_opt_self() mainBundle];
  sub_24F929F38();
  (*(v2 + 16))(v16, v4, v1);
  sub_24ECCF650();

  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v11, v5);
}

unint64_t sub_24ED41094@<X0>(uint64_t *a1@<X8>)
{
  sub_24F928FD8();
  v2 = sub_24F928FB8();
  type metadata accessor for JSIntentDispatcher();
  sub_24F928F28();
  a1[3] = &type metadata for JSMetricsEventLinter;
  result = sub_24ED44258();
  a1[4] = result;
  *a1 = v2;
  a1[1] = v4;
  return result;
}

uint64_t sub_24ED41108@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v33 = sub_24F929F48();
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_24F9290F8();
  v36 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v29 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v30 = &v27 - v4;
  v5 = sub_24F92A498();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v27 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v27 - v13;
  sub_24F928FD8();
  sub_24F928FB8();
  sub_24F928F28();
  v15 = *(v6 + 16);
  v28 = v14;
  v15(v11, v14, v5);
  type metadata accessor for ASKBagContract();
  v16 = swift_allocObject();
  (*(v6 + 32))(v16 + OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_bag, v11, v5);
  v17 = v16 + OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_bagOfflinePolicy;
  *v17 = 0;
  *(v17 + 8) = 0;
  *(v17 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EBB0);
  sub_24F928F28();
  v15(v8, v14, v5);
  sub_24E615E00(v38, v37);
  v18 = ASKBagContract.anonymousMetricsTopics.getter();
  sub_24F45D828(v18);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222260);
  sub_24F928F28();
  v19 = v29;
  sub_24F9290E8();
  sub_24ED44204();
  v20 = v30;
  sub_24F9290D8();
  v21 = *(v36 + 8);
  v36 += 8;
  v22 = v31;
  v21(v19, v31);
  v24 = v32;
  v23 = v33;
  sub_24F928F28();
  sub_24F9290C8();
  swift_setDeallocating();
  v25 = *(v6 + 8);
  v25(v16 + OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_bag, v5);
  swift_deallocClassInstance();

  (*(v35 + 8))(v24, v23);
  v21(v20, v22);
  __swift_destroy_boxed_opaque_existential_1(v38);
  return (v25)(v28, v5);
}

uint64_t sub_24ED415A0()
{
  v0 = sub_24F9290F8();
  MEMORY[0x28223BE20](v0);
  sub_24F928FD8();
  sub_24F928FB8();
  sub_24F928F28();

  return sub_24F929118();
}

uint64_t sub_24ED41650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  *(v6 + 240) = a3;
  *(v6 + 248) = a4;
  *(v6 + 224) = a5;
  *(v6 + 232) = a6;
  *(v6 + 208) = a1;
  *(v6 + 216) = a2;
  v7 = sub_24F92AAE8();
  *(v6 + 256) = v7;
  *(v6 + 264) = *(v7 - 8);
  *(v6 + 272) = swift_task_alloc();
  *(v6 + 280) = swift_task_alloc();
  sub_24F921FA8();
  *(v6 + 288) = swift_task_alloc();
  sub_24F921F58();
  *(v6 + 296) = swift_task_alloc();
  sub_24F921F88();
  *(v6 + 304) = swift_task_alloc();
  v8 = sub_24F921FC8();
  *(v6 + 312) = v8;
  *(v6 + 320) = *(v8 - 8);
  *(v6 + 328) = swift_task_alloc();
  v9 = sub_24F92A498();
  *(v6 + 336) = v9;
  *(v6 + 344) = *(v9 - 8);
  *(v6 + 352) = swift_task_alloc();
  sub_24F928418();
  *(v6 + 360) = swift_task_alloc();
  *(v6 + 368) = swift_task_alloc();
  *(v6 + 376) = swift_task_alloc();
  *(v6 + 384) = swift_task_alloc();
  v10 = type metadata accessor for ASKBootstrapV2(0);
  *(v6 + 392) = v10;
  v11 = *(v10 - 8);
  *(v6 + 400) = v11;
  *(v6 + 408) = *(v11 + 64);
  *(v6 + 416) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  *(v6 + 424) = swift_task_alloc();
  v12 = sub_24F91F648();
  *(v6 + 432) = v12;
  *(v6 + 440) = *(v12 - 8);
  *(v6 + 448) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  *(v6 + 456) = swift_task_alloc();
  *(v6 + 464) = swift_task_alloc();
  *(v6 + 472) = swift_task_alloc();
  *(v6 + 480) = swift_task_alloc();
  *(v6 + 488) = swift_task_alloc();
  *(v6 + 496) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ED41A1C, 0, 0);
}

uint64_t sub_24ED41A1C()
{
  v1 = v0;
  if (sub_24F92A488())
  {
    v2 = [sub_24F92A328() expirationDate];
    swift_unknownObjectRelease();
    if (v2)
    {
      sub_24F91F608();

      v3 = 0;
    }

    else
    {
      v3 = 1;
    }

    v10 = *(v0 + 61);
    v11 = *(v0 + 62);
    v12 = *(v0 + 54);
    v13 = *(v0 + 55);
    (*(*(v1 + 55) + 56))(*(v1 + 62), v3, 1, *(v1 + 54));
    sub_24E60169C(v11, v10, &unk_27F22EC30);
    v14 = *(v13 + 48);
    *(v1 + 63) = v14;
    *(v1 + 64) = (v13 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    v15 = v14(v10, 1, v12);
    v17 = *(v1 + 61);
    v16 = *(v1 + 62);
    if (v15 == 1)
    {
      sub_24E601704(*(v1 + 62), &unk_27F22EC30);
      sub_24E601704(v17, &unk_27F22EC30);
LABEL_21:
      if (qword_27F210570 != -1)
      {
        swift_once();
      }

      v45 = *(v1 + 40);
      v44 = *(v1 + 41);
      v55 = *(v1 + 39);
      v46 = v1[28];
      *(v1 + 65) = __swift_project_value_buffer(*(v1 + 32), qword_27F39C3B0);
      *(v1 + 66) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
      v47 = *(sub_24F928468() - 8);
      v1[67] = *(v47 + 72);
      *(v1 + 142) = *(v47 + 80);
      *(swift_allocObject() + 16) = xmmword_24F93DE60;
      sub_24F928408();
      sub_24F9283F8();
      v48 = COERCE_DOUBLE(sub_24ECA1F58());
      if (v49)
      {
        v48 = v46;
      }

      *(v1 + 5) = MEMORY[0x277D839F8];
      v1[2] = v48;
      sub_24F9283D8();
      sub_24E601704((v1 + 2), &qword_27F2129B0);
      sub_24F9283F8();
      sub_24F928428();
      sub_24F92A588();

      sub_24F921F68();
      sub_24F921F48();
      sub_24F921F98();
      sub_24F921FB8();
      *(v1 + 68) = sub_24F92A338();
      (*(v45 + 8))(v44, v55);
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224F78);
      v51 = sub_24E602068(&qword_27F22EC40, &qword_27F224F78);
      v52 = swift_task_alloc();
      *(v1 + 69) = v52;
      *v52 = v1;
      v52[1] = sub_24ED42450;
      v53 = *(v1 + 44);

      return MEMORY[0x282180360](v53, v50, v51);
    }

    v19 = *(v1 + 55);
    v18 = *(v1 + 56);
    v20 = *(v1 + 54);
    v21 = v1[28];
    (*(v19 + 32))(v18, *(v1 + 61), v20);
    sub_24F91F5C8();
    v23 = v22;
    *&v24 = COERCE_DOUBLE(sub_24ECA1F58());
    v26 = v25;
    (*(v19 + 8))(v18, v20);
    sub_24E601704(v16, &unk_27F22EC30);
    v27 = *&v24;
    if (v26)
    {
      v27 = v21;
    }

    if (v27 <= -v23)
    {
      goto LABEL_21;
    }

    v28 = *(v1 + 52);
    v29 = *(v1 + 53);
    v31 = *(v1 + 50);
    v30 = *(v1 + 51);
    v32 = *(v1 + 30);
    v33 = *(v1 + 31);
    v34 = sub_24F92B858();
    (*(*(v34 - 8) + 56))(v29, 1, 1, v34);
    sub_24ED34B58(v32, v28);
    v35 = (*(v31 + 80) + 32) & ~*(v31 + 80);
    v36 = swift_allocObject();
    *(v36 + 16) = 0;
    *(v36 + 24) = 0;
    sub_24ED352E4(v28, v36 + v35);
    *(v36 + ((v30 + v35 + 7) & 0xFFFFFFFFFFFFFFF8)) = v33;
    v37 = v33;
    sub_24F1F2908(0, 0, v29, &unk_24F99AA50, v36);

    sub_24E601704(v29, &unk_27F21B570);
    if (qword_27F210570 != -1)
    {
      swift_once();
    }

    v38 = *(v1 + 43);
    v54 = *(v1 + 42);
    v39 = v1[28];
    v41 = *(v1 + 26);
    v40 = *(v1 + 27);
    __swift_project_value_buffer(*(v1 + 32), qword_27F39C3B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F928408();
    sub_24F9283F8();
    v42 = COERCE_DOUBLE(sub_24ECA1F58());
    if (v43)
    {
      v42 = v39;
    }

    *(v1 + 21) = MEMORY[0x277D839F8];
    v1[18] = v42;
    sub_24F9283D8();
    sub_24E601704((v1 + 18), &qword_27F2129B0);
    sub_24F9283F8();
    sub_24F928428();
    sub_24F92A588();

    (*(v38 + 16))(v41, v40, v54);
  }

  else
  {
    if (qword_27F210570 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 42);
    v5 = *(v0 + 43);
    v7 = *(v1 + 26);
    v6 = *(v1 + 27);
    __swift_project_value_buffer(*(v1 + 32), qword_27F39C3B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A588();

    (*(v5 + 16))(v7, v6, v4);
  }

  *(*(v1 + 26) + *(type metadata accessor for InitialBag(0) + 20)) = 0;

  v8 = *(v1 + 1);

  return v8();
}

uint64_t sub_24ED42450()
{
  *(*v1 + 560) = v0;

  if (v0)
  {
    v2 = sub_24ED42920;
  }

  else
  {
    v2 = sub_24ED42580;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24ED42580()
{
  (*(*(v0 + 264) + 16))(*(v0 + 280), *(v0 + 520), *(v0 + 256));
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  v1 = 1;
  sub_24F928408();
  sub_24F9283F8();
  v2 = [sub_24F92A328() expirationDate];
  swift_unknownObjectRelease();
  if (v2)
  {
    sub_24F91F608();

    v1 = 0;
  }

  v3 = *(v0 + 504);
  v5 = *(v0 + 472);
  v4 = *(v0 + 480);
  v6 = *(v0 + 432);
  (*(*(v0 + 440) + 56))(v5, v1, 1, v6);
  sub_24E6009C8(v5, v4, &unk_27F22EC30);
  v7 = v3(v4, 1, v6);
  v8 = *(v0 + 480);
  if (v7 == 1)
  {
    sub_24E601704(*(v0 + 480), &unk_27F22EC30);
    *(v0 + 112) = 0u;
    *(v0 + 128) = 0u;
  }

  else
  {
    v9 = *(v0 + 432);
    v10 = *(v0 + 440);
    *(v0 + 136) = v9;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 112));
    (*(v10 + 32))(boxed_opaque_existential_1, v8, v9);
  }

  v13 = *(v0 + 344);
  v12 = *(v0 + 352);
  v14 = *(v0 + 336);
  v15 = *(v0 + 280);
  v16 = *(v0 + 256);
  v17 = *(v0 + 264);
  v18 = *(v0 + 208);
  sub_24F9283D8();
  sub_24E601704(v0 + 112, &qword_27F2129B0);
  sub_24F9283F8();
  sub_24F928428();
  sub_24F92A588();

  (*(v17 + 8))(v15, v16);
  (*(v13 + 32))(v18, v12, v14);
  *(*(v0 + 208) + *(type metadata accessor for InitialBag(0) + 20)) = 0;

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_24ED42920()
{
  (*(*(v0 + 264) + 16))(*(v0 + 272), *(v0 + 520), *(v0 + 256));
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F928408();
  sub_24F9283F8();
  v1 = [sub_24F92A328() expirationDate];
  swift_unknownObjectRelease();
  if (v1)
  {
    sub_24F91F608();

    v2 = 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = *(v0 + 504);
  v5 = *(v0 + 456);
  v4 = *(v0 + 464);
  v6 = *(v0 + 432);
  (*(*(v0 + 440) + 56))(v5, v2, 1, v6);
  sub_24E6009C8(v5, v4, &unk_27F22EC30);
  v7 = v3(v4, 1, v6);
  v8 = *(v0 + 464);
  if (v7 == 1)
  {
    sub_24E601704(*(v0 + 464), &unk_27F22EC30);
    *(v0 + 48) = 0u;
    *(v0 + 64) = 0u;
  }

  else
  {
    v10 = *(v0 + 432);
    v9 = *(v0 + 440);
    *(v0 + 72) = v10;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 48));
    (*(v9 + 32))(boxed_opaque_existential_1, v8, v10);
  }

  v12 = *(v0 + 560);
  v13 = *(v0 + 344);
  v14 = *(v0 + 264);
  v15 = *(v0 + 272);
  v16 = *(v0 + 256);
  v23 = *(v0 + 216);
  v24 = *(v0 + 336);
  v22 = *(v0 + 208);
  sub_24F9283D8();
  sub_24E601704(v0 + 48, &qword_27F2129B0);
  sub_24F9283F8();
  swift_getErrorValue();
  v17 = *(v0 + 176);
  v18 = *(v0 + 184);
  *(v0 + 104) = v18;
  v19 = __swift_allocate_boxed_opaque_existential_1((v0 + 80));
  (*(*(v18 - 8) + 16))(v19, v17, v18);
  sub_24F9283D8();
  sub_24E601704(v0 + 80, &qword_27F2129B0);
  sub_24F9283F8();
  sub_24F928428();
  sub_24F92A5A8();

  (*(v14 + 8))(v15, v16);
  (*(v13 + 16))(v22, v23, v24);
  *(*(v0 + 208) + *(type metadata accessor for InitialBag(0) + 20)) = 1;

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_24ED42D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  sub_24F928418();
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v6 = sub_24F92AAE8();
  v5[20] = v6;
  v5[21] = *(v6 - 8);
  v5[22] = swift_task_alloc();
  sub_24F921FA8();
  v5[23] = swift_task_alloc();
  sub_24F921F58();
  v5[24] = swift_task_alloc();
  sub_24F921F88();
  v5[25] = swift_task_alloc();
  v7 = sub_24F921FC8();
  v5[26] = v7;
  v5[27] = *(v7 - 8);
  v5[28] = swift_task_alloc();
  v8 = sub_24F92A498();
  v5[29] = v8;
  v5[30] = *(v8 - 8);
  v5[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ED42FD4, 0, 0);
}

uint64_t sub_24ED42FD4()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[26];
  type metadata accessor for ASKBootstrapV2(0);
  sub_24F921F68();
  sub_24F921F48();
  sub_24F921F98();
  sub_24F921FB8();
  v0[32] = sub_24F92A338();
  (*(v2 + 8))(v1, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224F78);
  v5 = sub_24E602068(&qword_27F22EC40, &qword_27F224F78);
  v6 = swift_task_alloc();
  v0[33] = v6;
  *v6 = v0;
  v6[1] = sub_24ED4315C;
  v7 = v0[31];

  return MEMORY[0x282180360](v7, v4, v5);
}

uint64_t sub_24ED4315C()
{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = sub_24ED4366C;
  }

  else
  {
    v2 = sub_24ED4328C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24ED4328C()
{
  if (qword_27F210570 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v3 = *(v0 + 160);
  v4 = __swift_project_value_buffer(v3, qword_27F39C3B0);
  (*(v2 + 16))(v1, v4, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  v5 = 1;
  sub_24F928408();
  sub_24F9283F8();
  v6 = [sub_24F92A328() expirationDate];
  swift_unknownObjectRelease();
  if (v6)
  {
    sub_24F91F608();

    v5 = 0;
  }

  v8 = *(v0 + 128);
  v7 = *(v0 + 136);
  v9 = sub_24F91F648();
  v10 = *(v9 - 8);
  (*(v10 + 56))(v8, v5, 1, v9);
  sub_24E6009C8(v8, v7, &unk_27F22EC30);
  v11 = (*(v10 + 48))(v7, 1, v9);
  v12 = *(v0 + 136);
  if (v11 == 1)
  {
    sub_24E601704(*(v0 + 136), &unk_27F22EC30);
    *(v0 + 48) = 0u;
    *(v0 + 64) = 0u;
  }

  else
  {
    *(v0 + 72) = v9;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 48));
    (*(v10 + 32))(boxed_opaque_existential_1, v12, v9);
  }

  v15 = *(v0 + 240);
  v14 = *(v0 + 248);
  v16 = *(v0 + 232);
  v18 = *(v0 + 168);
  v17 = *(v0 + 176);
  v19 = *(v0 + 160);
  sub_24F9283D8();
  sub_24E601704(v0 + 48, &qword_27F2129B0);
  sub_24F9283F8();
  sub_24F928428();
  sub_24F92A588();

  (*(v18 + 8))(v17, v19);
  (*(v15 + 8))(v14, v16);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_24ED4366C()
{
  if (qword_27F210570 != -1)
  {
    swift_once();
  }

  v1 = v0[34];
  __swift_project_value_buffer(v0[20], qword_27F39C3B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F928408();
  sub_24F9283F8();
  swift_getErrorValue();
  v2 = v0[10];
  v3 = v0[11];
  v0[5] = v3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, v2, v3);
  sub_24F9283D8();
  sub_24E601704((v0 + 2), &qword_27F2129B0);
  sub_24F9283F8();
  sub_24F928428();
  sub_24F92A5A8();

  v5 = v0[1];

  return v5();
}

uint64_t sub_24ED43900()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24ED43948(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24E6541E4;

  return sub_24E6956F4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_24ED43A3C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ASKBootstrapV2(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_24ED43B44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F91F6B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22[3] = sub_24F929E08();
  v22[4] = MEMORY[0x277D221A8];
  v22[0] = a1;
  *(a3 + 32) = 0u;
  *(a3 + 16) = 0u;
  sub_24F91F6A8();
  v10 = sub_24F91F668();
  v12 = v11;
  (*(v7 + 8))(v9, v6);
  *(a3 + 88) = v10;
  *(a3 + 96) = v12;
  sub_24E615E00(v22, a3 + 48);
  v13 = [objc_opt_self() defaultCenter];

  v14 = sub_24F92BFF8();
  [v13 addObserver:a3 selector:sel_signatureVerificationFailed_ name:v14 object:0];

  v15 = [objc_opt_self() sharedCoordinator];
  aBlock[4] = sub_24ED44EC8;
  aBlock[5] = a3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_117_0;
  v16 = _Block_copy(aBlock);

  v17 = [v15 registerCleanupHandler_];
  _Block_release(v16);

  sub_24F92C648();
  swift_unknownObjectRelease();
  v18 = sub_24F92A498();
  (*(*(v18 - 8) + 8))(a2, v18);
  __swift_destroy_boxed_opaque_existential_1(v22);
  swift_beginAccess();
  sub_24E8E7708(aBlock, a3 + 16);
  swift_endAccess();
  return a3;
}

uint64_t sub_24ED43E20(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_24E612C80(&v12, v10 + 40 * a1 + 32);
}

char *sub_24ED43EB8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EB70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F99A850;
  *(inited + 32) = sub_24E69A5C4(0, &qword_27F222D10);
  *(inited + 40) = type metadata accessor for ArtworkLoaderURLSession();
  *(inited + 48) = sub_24E69A5C4(0, &qword_27F2222A8);
  *(inited + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222250);
  *(inited + 64) = sub_24E69A5C4(0, &qword_27F221568);
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EB80);
  *(inited + 80) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222D18);
  *(inited + 88) = type metadata accessor for AppleSilicon();
  *(inited + 96) = sub_24F92A498();
  *(inited + 104) = type metadata accessor for NetworkActivity();
  *(inited + 112) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EB90);
  *(inited + 120) = sub_24F929158();
  *(inited + 128) = sub_24E69A5C4(0, &qword_27F222258);
  *(inited + 136) = sub_24F929E08();
  *(inited + 144) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222260);
  *(inited + 152) = sub_24F929F48();
  *(inited + 160) = sub_24F9290F8();
  *(inited + 168) = type metadata accessor for ASKBagContract();
  *(inited + 176) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EBA0);
  *(inited + 184) = sub_24F929F58();
  *(inited + 192) = type metadata accessor for Commerce();
  *(inited + 200) = type metadata accessor for Restrictions();
  *(inited + 208) = type metadata accessor for GameCenter();
  *(inited + 216) = type metadata accessor for GameCenterFriendRequestCoordinator();
  *(inited + 224) = type metadata accessor for UserEngagementManager();
  *(inited + 232) = type metadata accessor for JSInvalidSignatureReporter();
  *(inited + 240) = type metadata accessor for AdsService();
  *(inited + 248) = type metadata accessor for AppStoreOnDeviceRecommendationsManager();
  *(inited + 256) = type metadata accessor for OnDeviceSearchHistoryManager();
  *(inited + 264) = type metadata accessor for OnDevicePersonalizationDataManager();
  *(inited + 272) = type metadata accessor for JSIntentDispatcher();
  *(inited + 280) = type metadata accessor for MetricsIdStore();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EBA8);
  v2 = sub_24E6190C4(1, 33, 1, inited);
  *(v2 + 2) = 33;
  *(v2 + 36) = v1;
  v3 = *(v2 + 3);
  if (v3 <= 0x43)
  {
    v2 = sub_24E6190C4((v3 > 1), 34, 1, v2);
  }

  v4 = type metadata accessor for ThreeDimensionalMediaArtworkImageDownloader();
  *(v2 + 2) = 34;
  *(v2 + 37) = v4;
  v5 = *(v2 + 3);
  if (v5 <= 0x45)
  {
    v2 = sub_24E6190C4((v5 > 1), 35, 1, v2);
  }

  *(v2 + 2) = 35;
  *(v2 + 38) = &type metadata for ASKPrerequisites;
  return v2;
}

unint64_t sub_24ED44204()
{
  result = qword_27F22EBC0;
  if (!qword_27F22EBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22EBC0);
  }

  return result;
}

unint64_t sub_24ED44258()
{
  result = qword_27F22EBC8;
  if (!qword_27F22EBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22EBC8);
  }

  return result;
}

uint64_t sub_24ED442AC@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for ASKBootstrapV2(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_24ED3DB94(v4, a1);
}

uint64_t sub_24ED4431C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ASKBootstrapV2(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_24ED3E394(v4, a1);
}

uint64_t sub_24ED4438C@<X0>(void *a1@<X8>)
{
  type metadata accessor for ASKBootstrapV2(0);

  return sub_24ED3E718(a1);
}

uint64_t sub_24ED443FC(uint64_t a1)
{
  v4 = *(type metadata accessor for ASKBootstrapV2(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24E6541E4;

  return sub_24ED3EA28(a1, v1 + v5);
}

uint64_t sub_24ED444D8(uint64_t a1)
{
  v4 = *(type metadata accessor for ASKBootstrapV2(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24E6541E4;

  return sub_24ED3F3B0(a1, v1 + v5);
}

uint64_t sub_24ED445B4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for ASKBootstrapV2(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_24ED3FFD0(v4, a1);
}

uint64_t sub_24ED44624()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24ED44664(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E614970;

  return sub_24EF75A64(a1, v4, v5, v6);
}

uint64_t sub_24ED447F0(uint64_t a1)
{
  v4 = *(type metadata accessor for ASKBootstrapV2(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24E6541E4;

  return sub_24ED3ABD8(a1, v1 + v5);
}

uint64_t sub_24ED448CC()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  }

  return swift_deallocObject();
}

uint64_t sub_24ED4490C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24E6541E4;

  return sub_24ED3BA10(a1, v1 + 16);
}

uint64_t sub_24ED449A8(uint64_t a1)
{
  v4 = *(type metadata accessor for ASKBootstrapV2(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24E6541E4;

  return sub_24ED3C7A4(a1, v1 + v5);
}

uint64_t sub_24ED44A84()
{
  v1 = type metadata accessor for ASKBootstrapV2(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = v0 + v2;
  v5 = v1[5];
  v6 = sub_24F92A468();
  (*(*(v6 - 8) + 8))(v0 + v2 + v5, v6);
  __swift_destroy_boxed_opaque_existential_1(v0 + v2 + v1[7]);
  v7 = v0 + v2 + v1[8];
  if (*(v7 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  if (*(v4 + v1[9]))
  {
  }

  v8 = v1[13];
  v9 = sub_24F91F4A8();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v4 + v8, 1, v9))
  {
    (*(v10 + 8))(v4 + v8, v9);
  }

  v11 = v4 + v1[14];
  if (*(v11 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

uint64_t sub_24ED44D3C()
{
  v1 = sub_24F92A498();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  }

  (*(v2 + 8))(v0 + ((v3 + 56) & ~v3), v1);

  return swift_deallocObject();
}

uint64_t sub_24ED44E1C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_24F92A498() - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  return sub_24ED3C424(a1, v2 + 16, v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)), a2);
}

uint64_t sub_24ED44ED0(uint64_t a1)
{
  v4 = *(type metadata accessor for ASKBootstrapV2(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24E6541E4;

  return sub_24ED38658(a1, v1 + v5);
}

uint64_t sub_24ED44FAC(uint64_t a1)
{
  v4 = *(type metadata accessor for ASKBootstrapV2(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24E6541E4;

  return sub_24ED3A4BC(a1, v1 + v5);
}

uint64_t sub_24ED45088(uint64_t a1)
{
  v2 = type metadata accessor for InitialBag(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24ED450E4()
{
  v1 = type metadata accessor for ASKBootstrapV2(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v4 = v0 + v2;
  v5 = v1[5];
  v6 = sub_24F92A468();
  (*(*(v6 - 8) + 8))(v0 + v2 + v5, v6);
  __swift_destroy_boxed_opaque_existential_1(v0 + v2 + v1[7]);
  v7 = v0 + v2 + v1[8];
  if (*(v7 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  if (*(v4 + v1[9]))
  {
  }

  v8 = v1[13];
  v9 = sub_24F91F4A8();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v4 + v8, 1, v9))
  {
    (*(v10 + 8))(v4 + v8, v9);
  }

  v11 = v4 + v1[14];
  if (*(v11 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  return swift_deallocObject();
}

uint64_t sub_24ED452E0(uint64_t a1)
{
  v4 = *(type metadata accessor for ASKBootstrapV2(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24E614970;

  return sub_24ED42D5C(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_24ED45414(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F92A498();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_24ED454F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24F92A498();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_24ED455AC()
{
  result = sub_24F92A498();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24ED4570C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v118 = a7;
  v120 = a6;
  v119 = a5;
  v134 = a4;
  v117 = a3;
  v133 = a2;
  v136 = a1;
  v125 = sub_24F927D88();
  v124 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v123 = &v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F927DC8();
  v122 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v121 = &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_24F927D98();
  v115 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v114 = &v103 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_24F929158();
  v139 = *(v137 - 8);
  v12 = MEMORY[0x28223BE20](v137);
  v135 = &v103 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = v13;
  MEMORY[0x28223BE20](v12);
  v138 = &v103 - v14;
  v128 = sub_24F927E38();
  v127 = *(v128 - 1);
  MEMORY[0x28223BE20](v128);
  v126 = (&v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_24F9287F8();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v103 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v103 - v21;
  v23 = sub_24F928818();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v103 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v140 = v7;
  sub_24E60169C(v7 + 40, &aBlock, &qword_27F224F98);
  if (!v146)
  {
    return sub_24E601704(&aBlock, &qword_27F224F98);
  }

  v104 = v9;
  __swift_project_boxed_opaque_existential_1(&aBlock, v146);
  sub_24F92AD48();
  v111 = sub_24F928768();
  v27 = *(v24 + 8);
  v130 = v26;
  v105 = v27;
  v27(v26, v23);
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v28 = *(v17 + 16);
  v110 = v17 + 16;
  v109 = v28;
  v28(v22, v136, v16);
  sub_24F9287E8();
  sub_24ED5EA84(&qword_27F21E610, MEMORY[0x277D21BE0]);
  v29 = sub_24F92AFF8();
  v113 = v17;
  v30 = *(v17 + 8);
  v30(v20, v16);
  v129 = v16;
  v112 = v20;
  v107 = v23;
  v106 = v24 + 8;
  if (v29)
  {
    v30(v22, v16);
    v31 = v137;
    if (qword_27F210278 != -1)
    {
      swift_once();
    }

    v32 = off_27F229AB8;
    sub_24E60169C(v140 + 40, &aBlock, &qword_27F224F98);
    v33 = v146;
    v34 = v139;
    v35 = v138;
    v36 = v130;
    if (v146)
    {
      __swift_project_boxed_opaque_existential_1(&aBlock, v146);
      sub_24F92AD48();
      v33 = sub_24F9286C8();
      v105(v36, v107);
      __swift_destroy_boxed_opaque_existential_1(&aBlock);
    }

    else
    {
      sub_24E601704(&aBlock, &qword_27F224F98);
    }

    sub_24E74EC40();
    v45 = sub_24F92BEF8();
    v46 = v126;
    *v126 = v45;
    v47 = v127;
    v39 = v128;
    (*(v127 + 104))(v46, *MEMORY[0x277D85200], v128);
    v48 = sub_24F927E68();
    v50 = *(v47 + 8);
    v49 = (v47 + 8);
    v50(v46, v39);
    if (v48)
    {
      v39 = &qword_27F210000;
      swift_beginAccess();
      v32[12] = v33;

      v49 = [objc_opt_self() defaultCenter];
      if (qword_27F210288 == -1)
      {
LABEL_24:
        [v49 postNotificationName:qword_27F229AE0 object:v32];

        swift_beginAccess();
        v51 = v32[20];
        if (v51 != 2 && (v51 != 1 || v32[26] != 1))
        {
          v53 = sub_24EB6B1B0();
          if (*(v52 + 8) != 2)
          {
            *(v52 + 90) = 1;
          }

          (v53)(v141, 0);
        }

        goto LABEL_34;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_24;
  }

  sub_24F9287C8();
  v38 = sub_24F92AFF8();
  v30(v20, v16);
  v31 = v137;
  if (v38)
  {
    v30(v22, v16);
    v39 = &qword_27F210000;
    v35 = v138;
    if (qword_27F210278 != -1)
    {
      swift_once();
    }

    sub_24EB6CB08();
    v34 = v139;
    v36 = v130;
    goto LABEL_34;
  }

  v35 = v138;
  if (qword_27F210040 != -1)
  {
    swift_once();
  }

  v40 = v129;
  __swift_project_value_buffer(v129, qword_27F2230B8);
  v41 = sub_24F92AFF8();
  v30(v22, v40);
  v34 = v139;
  v36 = v130;
  v39 = &qword_27F210000;
  if ((v41 & 1) == 0)
  {
    goto LABEL_34;
  }

  if (!*(*(*(v140 + qword_27F39B4A8) + 16) + 16))
  {
    goto LABEL_34;
  }

  v42 = sub_24F929BA8();

  if ((v42 & 1) == 0)
  {
    goto LABEL_34;
  }

  if (qword_27F210278 != -1)
  {
    swift_once();
  }

  v43 = off_27F229AB8;
  sub_24E60169C(v140 + 40, &aBlock, &qword_27F224F98);
  v44 = v146;
  if (v146)
  {
    __swift_project_boxed_opaque_existential_1(&aBlock, v146);
    sub_24F92AD48();
    v44 = sub_24F9286C8();
    v105(v36, v107);
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
  }

  else
  {
    sub_24E601704(&aBlock, &qword_27F224F98);
  }

  sub_24E74EC40();
  v54 = sub_24F92BEF8();
  v55 = v126;
  *v126 = v54;
  v56 = v127;
  v57 = v128;
  (*(v127 + 104))(v55, *MEMORY[0x277D85200], v128);
  v58 = sub_24F927E68();
  (*(v56 + 8))(v55, v57);
  if ((v58 & 1) == 0)
  {
    __break(1u);
    goto LABEL_49;
  }

  swift_beginAccess();
  v43[12] = v44;

  v57 = [objc_opt_self() defaultCenter];
  if (qword_27F210288 != -1)
  {
LABEL_49:
    swift_once();
  }

  [v57 postNotificationName:qword_27F229AE0 object:v43];

  v39 = &qword_27F210000;
LABEL_34:
  if (v39[79] != -1)
  {
    swift_once();
  }

  v59 = off_27F229AB8;
  swift_beginAccess();
  v60 = v59[20];
  LODWORD(v126) = *(v59 + 242);
  v108 = v60 != 2;
  v61 = qword_27F39B498;
  v62 = v140;
  swift_beginAccess();
  v63 = *(v34 + 16);
  v63(v35, v62 + v61, v31);
  v64 = (v62 + qword_27F39B4A0);
  v65 = *v64;
  swift_getObjectType();
  v66 = swift_conformsToProtocol2();
  v128 = v63;
  if (v66 && v65)
  {
    v67 = v66;
    ObjectType = swift_getObjectType();
    v69 = v31;
    v70 = v35;
    v71 = *(v67 + 16);
    swift_unknownObjectRetain();
    v72 = ObjectType;
    v36 = v130;
    v73 = v71(v72, v67);
    v35 = v70;
    v74 = v73;
    v127 = v75;
    swift_unknownObjectRelease();
    v65 = v74;
  }

  else
  {
    v69 = v31;
    v127 = v64[1];
    swift_unknownObjectRetain();
  }

  v76 = v135;
  LODWORD(v126) = v108 & v126;
  sub_24E60169C(v140 + 40, &aBlock, &qword_27F224F98);
  v110 = v65;
  if (v146)
  {
    __swift_project_boxed_opaque_existential_1(&aBlock, v146);
    swift_unknownObjectRetain();
    sub_24F92AD48();
    v130 = sub_24F9286C8();
    v105(v36, v107);
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
  }

  else
  {
    swift_unknownObjectRetain();
    sub_24E601704(&aBlock, &qword_27F224F98);
    v130 = 0;
  }

  v77 = v112;
  v78 = v129;
  v109(v112, v136, v129);
  v79 = v76;
  v80 = v69;
  (v128)(v79, v35, v69);
  v81 = v113;
  v82 = (*(v113 + 80) + 24) & ~*(v113 + 80);
  v83 = (v131 + v82 + 7) & 0xFFFFFFFFFFFFFFF8;
  v136 = (v83 + 15) & 0xFFFFFFFFFFFFFFF8;
  v84 = (v83 + 39) & 0xFFFFFFFFFFFFFFF8;
  v85 = v139;
  v86 = (*(v139 + 80) + v84 + 8) & ~*(v139 + 80);
  v87 = swift_allocObject();
  *(v87 + 16) = v111;
  (*(v81 + 32))(v87 + v82, v77, v78);
  v88 = v85;
  *(v87 + v83) = v140;
  v89 = v87 + v136;
  v90 = v127;
  *v89 = v110;
  *(v89 + 8) = v90;
  *(v89 + 16) = v126;
  *(v87 + v84) = v130;
  (*(v85 + 32))(v87 + v86, v135, v80);

  if (ASKBuildTypeIsUnitTesting())
  {
    sub_24E74EC40();
    v91 = v115;
    v92 = v114;
    v93 = v116;
    (*(v115 + 104))(v114, *MEMORY[0x277D851C8], v116);
    v140 = sub_24F92BF48();
    (*(v91 + 8))(v92, v93);
    v94 = swift_allocObject();
    *(v94 + 16) = v134;
    *(v94 + 24) = v87;
    v147 = v119;
    v148 = v94;
    aBlock = MEMORY[0x277D85DD0];
    v144 = 1107296256;
    v145 = sub_24EAF8248;
    v146 = v120;
    v95 = _Block_copy(&aBlock);

    v96 = v121;
    sub_24F927DA8();
    v142 = MEMORY[0x277D84F90];
    sub_24ED5EA84(&qword_27F222930, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
    sub_24E9723D4(&qword_27F222940, &qword_27F222310);
    v97 = v123;
    v98 = v125;
    sub_24F92C6A8();
    v99 = v140;
    MEMORY[0x2530518B0](0, v96, v97, v95);
    _Block_release(v95);

    swift_unknownObjectRelease();

    (*(v124 + 8))(v97, v98);
    (*(v122 + 8))(v96, v104);
    (*(v88 + 8))(v138, v137);
  }

  else
  {
    v100 = [objc_opt_self() processInfo];
    v101 = sub_24F92B098();
    v147 = v134;
    v148 = v87;
    aBlock = MEMORY[0x277D85DD0];
    v144 = 1107296256;
    v145 = sub_24EBFFB64;
    v146 = v118;
    v102 = _Block_copy(&aBlock);

    [v100 performExpiringActivityWithReason:v101 usingBlock:v102];
    swift_unknownObjectRelease();
    _Block_release(v102);

    return (*(v88 + 8))(v138, v137);
  }
}

uint64_t sub_24ED46B90(uint64_t a1, void (*a2)(void), void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v106 = a8;
  v105 = a7;
  v119 = a6;
  v104 = a5;
  v118 = a4;
  v114 = a3;
  v113 = a2;
  v124 = a1;
  v111 = sub_24F927D88();
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v109 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24F927DC8();
  v108 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v107 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_24F927D98();
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v101 = &v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_24F929158();
  v123 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v117 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = v15;
  MEMORY[0x28223BE20](v16);
  v122 = &v92 - v17;
  v18 = sub_24F9287F8();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v92 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v92 - v23;
  v25 = sub_24F928818();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v92 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v126 = v10;
  sub_24E60169C(v10 + 40, &aBlock, &qword_27F224F98);
  if (!v132)
  {
    return sub_24E601704(&aBlock, &qword_27F224F98);
  }

  v93 = v12;
  __swift_project_boxed_opaque_existential_1(&aBlock, v132);
  sub_24F92AD48();
  v98 = sub_24F928768();
  v29 = *(v26 + 8);
  v95 = v28;
  v112 = v25;
  v120 = v26 + 8;
  v94 = v29;
  v29(v28, v25);
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v30 = *(v19 + 16);
  v97 = v19 + 16;
  v96 = v30;
  v30(v24, v124, v18);
  sub_24F9287E8();
  sub_24ED5EA84(&qword_27F21E610, MEMORY[0x277D21BE0]);
  v31 = sub_24F92AFF8();
  v32 = *(v19 + 8);
  v32(v21, v18);
  if (v31)
  {
    v32(v24, v18);
    if (qword_27F210278 != -1)
    {
      swift_once();
    }

    v33 = &qword_27F229000;
    v34 = off_27F229AB8;
    sub_24E60169C(v126 + 40, &aBlock, &qword_27F224F98);
    v35 = v112;
    if (v132)
    {
      __swift_project_boxed_opaque_existential_1(&aBlock, v132);
      v33 = &qword_27F229000;
      v36 = v95;
      sub_24F92AD48();
      v37 = sub_24F9286C8();
      v94(v36, v35);
      __swift_destroy_boxed_opaque_existential_1(&aBlock);
    }

    else
    {
      sub_24E601704(&aBlock, &qword_27F224F98);
      v37 = 0;
    }

    sub_24EB6AC9C(v37);
    swift_beginAccess();
    v45 = v34[20];
    if (v45 != 2 && (v45 != 1 || v34[26] != 1))
    {
      v47 = sub_24EB6B1B0();
      if (*(v46 + 8) != 2)
      {
        *(v46 + 90) = 1;
      }

      (v47)(v127, 0);
    }
  }

  else
  {
    sub_24F9287C8();
    v39 = sub_24F92AFF8();
    v32(v21, v18);
    if (v39)
    {
      v32(v24, v18);
      if (qword_27F210278 != -1)
      {
        swift_once();
      }

      v33 = &qword_27F229000;
      sub_24EB6CB08();
      v35 = v112;
    }

    else
    {
      if (qword_27F210040 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v18, qword_27F2230B8);
      v40 = sub_24F92AFF8();
      v32(v24, v18);
      v35 = v112;
      v33 = &qword_27F229000;
      v41 = &qword_27F210000;
      if ((v40 & 1) == 0)
      {
        goto LABEL_29;
      }

      if (!*(*(*(v126 + *a10) + 16) + 16))
      {
        goto LABEL_29;
      }

      v42 = sub_24F929BA8();

      v41 = &qword_27F210000;
      if ((v42 & 1) == 0)
      {
        goto LABEL_29;
      }

      if (qword_27F210278 != -1)
      {
        swift_once();
      }

      sub_24E60169C(v126 + 40, &aBlock, &qword_27F224F98);
      if (v132)
      {
        __swift_project_boxed_opaque_existential_1(&aBlock, v132);
        v33 = &qword_27F229000;
        v43 = v95;
        sub_24F92AD48();
        v44 = sub_24F9286C8();
        v94(v43, v35);
        __swift_destroy_boxed_opaque_existential_1(&aBlock);
      }

      else
      {
        sub_24E601704(&aBlock, &qword_27F224F98);
        v44 = 0;
      }

      sub_24EB6AC9C(v44);
    }
  }

  v41 = &qword_27F210000;
LABEL_29:
  v99 = v21;
  v100 = v19;
  if (v41[79] != -1)
  {
    swift_once();
  }

  v48 = v33[343];
  swift_beginAccess();
  v49 = *(v48 + 242);
  v50 = *(v48 + 160) != 2;
  v51 = v126;
  swift_beginAccess();
  v52 = v122;
  v113 = *(v123 + 16);
  v113();
  v53 = (v51 + *v114);
  v54 = *v53;
  swift_getObjectType();
  v55 = swift_conformsToProtocol2();
  v121 = v18;
  if (v55 && v54)
  {
    v56 = v55;
    v57 = v50;
    ObjectType = swift_getObjectType();
    v59 = v52;
    v60 = *(v56 + 16);
    swift_unknownObjectRetain();
    v61 = ObjectType;
    v50 = v57;
    v62 = v60(v61, v56);
    v52 = v59;
    v35 = v112;
    v54 = v62;
    v114 = v63;
    swift_unknownObjectRelease();
  }

  else
  {
    v114 = v53[1];
    swift_unknownObjectRetain();
  }

  v64 = v124;
  LODWORD(v124) = v50 & v49;
  sub_24E60169C(v126 + 40, &aBlock, &qword_27F224F98);
  v120 = v54;
  if (v132)
  {
    __swift_project_boxed_opaque_existential_1(&aBlock, v132);
    swift_unknownObjectRetain();
    v65 = v35;
    v66 = v95;
    sub_24F92AD48();
    v112 = sub_24F9286C8();
    v94(v66, v65);
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
  }

  else
  {
    swift_unknownObjectRetain();
    sub_24E601704(&aBlock, &qword_27F224F98);
    v112 = 0;
  }

  v67 = v99;
  v96(v99, v64, v121);
  v68 = v117;
  v69 = v125;
  (v113)(v117, v52, v125);
  v70 = v100;
  v71 = (*(v100 + 80) + 24) & ~*(v100 + 80);
  v72 = (v115 + v71 + 7) & 0xFFFFFFFFFFFFFFF8;
  v115 = (v72 + 15) & 0xFFFFFFFFFFFFFFF8;
  v73 = (v72 + 39) & 0xFFFFFFFFFFFFFFF8;
  v74 = v123;
  v75 = (*(v123 + 80) + v73 + 8) & ~*(v123 + 80);
  v76 = swift_allocObject();
  *(v76 + 16) = v98;
  (*(v70 + 32))(v76 + v71, v67, v121);
  *(v76 + v72) = v126;
  v77 = v76 + v115;
  v78 = v114;
  *v77 = v120;
  *(v77 + 8) = v78;
  *(v77 + 16) = v124;
  *(v76 + v73) = v112;
  v79 = v69;
  (*(v74 + 32))(v76 + v75, v68, v69);

  if (ASKBuildTypeIsUnitTesting())
  {
    sub_24E74EC40();
    v80 = v102;
    v81 = v101;
    v82 = v103;
    (*(v102 + 104))(v101, *MEMORY[0x277D851C8], v103);
    v126 = sub_24F92BF48();
    (*(v80 + 8))(v81, v82);
    v83 = swift_allocObject();
    *(v83 + 16) = v119;
    *(v83 + 24) = v76;
    v133 = v105;
    v134 = v83;
    aBlock = MEMORY[0x277D85DD0];
    v130 = 1107296256;
    v131 = sub_24EAF8248;
    v132 = v106;
    v84 = _Block_copy(&aBlock);

    v85 = v107;
    sub_24F927DA8();
    v128 = MEMORY[0x277D84F90];
    sub_24ED5EA84(&qword_27F222930, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
    sub_24E9723D4(&qword_27F222940, &qword_27F222310);
    v86 = v109;
    v87 = v111;
    sub_24F92C6A8();
    v88 = v126;
    MEMORY[0x2530518B0](0, v85, v86, v84);
    _Block_release(v84);

    swift_unknownObjectRelease();

    (*(v110 + 8))(v86, v87);
    (*(v108 + 8))(v85, v93);
    (*(v74 + 8))(v122, v125);
  }

  else
  {
    v89 = [objc_opt_self() processInfo];
    v90 = sub_24F92B098();
    v133 = v119;
    v134 = v76;
    aBlock = MEMORY[0x277D85DD0];
    v130 = 1107296256;
    v131 = sub_24EBFFB64;
    v132 = a9;
    v91 = _Block_copy(&aBlock);

    [v89 performExpiringActivityWithReason:v90 usingBlock:v91];
    swift_unknownObjectRelease();
    _Block_release(v91);

    return (*(v74 + 8))(v122, v79);
  }
}

void sub_24ED48270(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v96 = a8;
  LODWORD(v100) = a7;
  v85 = a6;
  v95 = a5;
  v84 = a4;
  v103 = a3;
  v83 = sub_24F927D88();
  v14 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v82 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_24F927DC8();
  v99 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v80 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_24F929158();
  v86 = *(v79 - 8);
  v17 = *(v86 + 64);
  MEMORY[0x28223BE20](v79);
  v94 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_24F9287F8();
  v63 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_24F928738();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v93 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v62 - v25;
  if ((a1 & 1) == 0)
  {
    v92 = dispatch_group_create();
    v91 = *(a2 + 16);
    if (v91)
    {
      v27 = 0;
      v29 = *(v22 + 16);
      v28 = v22 + 16;
      v30 = *(v28 + 64);
      v77 = ~v30;
      v90 = a2 + ((v30 + 32) & ~v30);
      v102 = v63 + 16;
      v101 = (v63 + 8);
      v76 = a12;
      v75 = a11;
      v89 = (v28 - 8);
      v74 = v86 + 16;
      v78 = v30;
      v73 = v17 + v30;
      v72 = v23 + 7;
      v31 = v29;
      v71 = a10;
      v70 = a9;
      v69 = v100 & 1;
      v68 = v86 + 32;
      v67 = (v28 + 16);
      v66 = v105;
      v65 = (v14 + 8);
      v64 = (v99 + 8);
      v88 = *(v28 + 56);
      v98 = v28;
      v99 = v26;
      v97 = v29;
      while (1)
      {
        v100 = v27;
        v31(v26, v90 + v88 * v27, v21);
        v32 = *(sub_24F9286D8() + 16);

        if (!v32)
        {
          goto LABEL_14;
        }

        v33 = sub_24F9286D8();
        if (*(v33 + 16))
        {
          sub_24ED5EA84(&qword_27F21E608, MEMORY[0x277D21BE0]);
          v34 = sub_24F92AEE8();
          v35 = -1 << *(v33 + 32);
          v36 = v34 & ~v35;
          if ((*(v33 + 56 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36))
          {
            break;
          }
        }

LABEL_4:

        v26 = v99;
        (*v89)(v99, v21);
LABEL_5:
        v27 = v100 + 1;
        v31 = v97;
        if (v100 + 1 == v91)
        {
          goto LABEL_15;
        }
      }

      v37 = ~v35;
      v38 = *(v63 + 72);
      v39 = *(v63 + 16);
      while (1)
      {
        v39(v20, *(v33 + 48) + v38 * v36, v18);
        sub_24ED5EA84(&qword_27F21E610, MEMORY[0x277D21BE0]);
        v40 = sub_24F92AFF8();
        (*v101)(v20, v18);
        if (v40)
        {
          break;
        }

        v36 = (v36 + 1) & v37;
        if (((*(v33 + 56 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      v31 = v97;
LABEL_14:
      dispatch_group_enter(v92);
      v41 = v84;
      v42 = *(*v84 + 192);
      swift_beginAccess();
      sub_24E60169C(v41 + v42, v108, &qword_27F224FA0);
      sub_24E74EC40();
      v87 = sub_24F92BEF8();
      sub_24E60169C(v108, v106, &qword_27F224FA0);
      v43 = v86;
      v44 = v21;
      v45 = v79;
      (*(v86 + 16))(v94, v70, v79);
      v31(v93, v99, v44);
      v46 = (*(v43 + 80) + 96) & ~*(v43 + 80);
      v47 = (v73 + v46) & v77;
      v48 = (v72 + v47) & 0xFFFFFFFFFFFFFFF8;
      v49 = swift_allocObject();
      v50 = v85;
      *(v49 + 16) = v95;
      *(v49 + 24) = v50;
      *(v49 + 32) = v41;
      *(v49 + 40) = v69;
      *(v49 + 48) = v96;
      v51 = v106[1];
      *(v49 + 56) = v106[0];
      *(v49 + 72) = v51;
      *(v49 + 88) = v107;
      v52 = *(v43 + 32);
      v26 = v99;
      v53 = v45;
      v21 = v44;
      v52(v49 + v46, v94, v53);
      (*v67)(v49 + v47, v93, v44);
      v54 = v92;
      *(v49 + v48) = v92;
      v105[2] = v75;
      v105[3] = v49;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      v105[0] = sub_24EAF8248;
      v105[1] = v76;
      v55 = _Block_copy(aBlock);
      swift_unknownObjectRetain();

      v56 = v54;

      v57 = v80;
      sub_24F927DA8();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_24ED5EA84(&qword_27F222930, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
      sub_24E9723D4(&qword_27F222940, &qword_27F222310);
      v58 = v82;
      v59 = v83;
      sub_24F92C6A8();
      v60 = v87;
      MEMORY[0x2530518B0](0, v57, v58, v55);
      _Block_release(v55);

      (*v65)(v58, v59);
      (*v64)(v57, v81);
      sub_24E601704(v108, &qword_27F224FA0);
      (*v89)(v26, v21);
      goto LABEL_5;
    }

LABEL_15:
    v61 = v92;
    sub_24F92BE58();
  }
}

void sub_24ED48CF8(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v96 = a8;
  LODWORD(v101) = a7;
  v86 = a6;
  v95 = a5;
  v100 = a4;
  v104 = a3;
  v85 = sub_24F927D88();
  v14 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v84 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_24F927DC8();
  v99 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v82 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_24F929158();
  v87 = *(v81 - 8);
  v17 = *(v87 + 64);
  MEMORY[0x28223BE20](v81);
  v80 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_24F9287F8();
  v64 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_24F928738();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v94 = &v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v63 - v25;
  if ((a1 & 1) == 0)
  {
    v93 = dispatch_group_create();
    v92 = *(a2 + 16);
    if (v92)
    {
      v27 = 0;
      v29 = *(v22 + 16);
      v28 = v22 + 16;
      v30 = *(v28 + 64);
      v78 = ~v30;
      v91 = a2 + ((v30 + 32) & ~v30);
      v103 = v64 + 16;
      v102 = (v64 + 8);
      v77 = a12;
      v76 = a11;
      v90 = (v28 - 8);
      v75 = v87 + 16;
      v79 = v30;
      v74 = v17 + v30;
      v73 = v23 + 7;
      v31 = v29;
      v72 = a10;
      v71 = a9;
      v70 = v101 & 1;
      v69 = v87 + 32;
      v68 = (v28 + 16);
      v67 = v106;
      v66 = (v14 + 8);
      v65 = (v99 + 8);
      v89 = *(v28 + 56);
      v98 = v28;
      v99 = v26;
      v97 = v29;
      while (1)
      {
        v101 = v27;
        v31(v26, v91 + v89 * v27, v21);
        v32 = *(sub_24F9286D8() + 16);

        if (!v32)
        {
          goto LABEL_14;
        }

        v33 = sub_24F9286D8();
        if (*(v33 + 16))
        {
          sub_24ED5EA84(&qword_27F21E608, MEMORY[0x277D21BE0]);
          v34 = sub_24F92AEE8();
          v35 = -1 << *(v33 + 32);
          v36 = v34 & ~v35;
          if ((*(v33 + 56 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36))
          {
            break;
          }
        }

LABEL_4:

        v26 = v99;
        (*v90)(v99, v21);
LABEL_5:
        v27 = v101 + 1;
        v31 = v97;
        if (v101 + 1 == v92)
        {
          goto LABEL_15;
        }
      }

      v37 = ~v35;
      v38 = *(v64 + 72);
      v39 = *(v64 + 16);
      while (1)
      {
        v39(v20, *(v33 + 48) + v38 * v36, v18);
        sub_24ED5EA84(&qword_27F21E610, MEMORY[0x277D21BE0]);
        v40 = sub_24F92AFF8();
        (*v102)(v20, v18);
        if (v40)
        {
          break;
        }

        v36 = (v36 + 1) & v37;
        if (((*(v33 + 56 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      v31 = v97;
LABEL_14:
      dispatch_group_enter(v93);
      v41 = OBJC_IVAR____TtC12GameStoreKit13BasePresenter_advertRotationData;
      v42 = v100;
      swift_beginAccess();
      sub_24E60169C(v42 + v41, v109, &qword_27F224FA0);
      sub_24E74EC40();
      v88 = sub_24F92BEF8();
      sub_24E60169C(v109, v107, &qword_27F224FA0);
      v43 = v87;
      v44 = v80;
      v45 = v21;
      v46 = v81;
      (*(v87 + 16))(v80, v71, v81);
      v31(v94, v99, v45);
      v47 = (*(v43 + 80) + 96) & ~*(v43 + 80);
      v48 = (v74 + v47) & v78;
      v49 = (v73 + v48) & 0xFFFFFFFFFFFFFFF8;
      v50 = swift_allocObject();
      v51 = v86;
      *(v50 + 16) = v95;
      *(v50 + 24) = v51;
      *(v50 + 32) = v100;
      *(v50 + 40) = v70;
      *(v50 + 48) = v96;
      v52 = v107[1];
      *(v50 + 56) = v107[0];
      *(v50 + 72) = v52;
      *(v50 + 88) = v108;
      v53 = v44;
      v26 = v99;
      v54 = v46;
      v21 = v45;
      (*(v43 + 32))(v50 + v47, v53, v54);
      (*v68)(v50 + v48, v94, v45);
      v55 = v93;
      *(v50 + v49) = v93;
      v106[2] = v76;
      v106[3] = v50;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      v106[0] = sub_24EAF8248;
      v106[1] = v77;
      v56 = _Block_copy(aBlock);
      swift_unknownObjectRetain();

      v57 = v55;

      v58 = v82;
      sub_24F927DA8();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_24ED5EA84(&qword_27F222930, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
      sub_24E9723D4(&qword_27F222940, &qword_27F222310);
      v59 = v84;
      v60 = v85;
      sub_24F92C6A8();
      v61 = v88;
      MEMORY[0x2530518B0](0, v58, v59, v56);
      _Block_release(v56);

      (*v66)(v59, v60);
      (*v65)(v58, v83);
      sub_24E601704(v109, &qword_27F224FA0);
      (*v90)(v26, v21);
      goto LABEL_5;
    }

LABEL_15:
    v62 = v93;
    sub_24F92BE58();
  }
}

uint64_t sub_24ED49784(void (*a1)(char *, char *, uint64_t), uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11)
{
  v83 = a8;
  v85 = a7;
  v79 = a5;
  LODWORD(v78) = a4;
  v76 = a2;
  v90 = a1;
  v84 = sub_24F928698();
  v82 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v81 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225030);
  v72 = *(v14 - 8);
  v73 = v14;
  MEMORY[0x28223BE20](v14);
  v71 = &v68 - v15;
  v16 = sub_24F929AB8();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v68 - v22;
  MEMORY[0x28223BE20](v21);
  v80 = &v68 - v24;
  v25 = (a3 + qword_27F39B480);
  swift_beginAccess();
  v26 = v25[1];
  v69 = *v25;
  v27 = (a3 + qword_27F39B490);
  swift_beginAccess();
  v28 = v27[1];
  v70 = *v27;
  v29 = qword_27F210278;
  v89 = v26;

  v88 = v28;

  if (v29 != -1)
  {
    swift_once();
  }

  v30 = off_27F229AB8;
  swift_beginAccess();
  LODWORD(v77) = *(v30 + 88);
  sub_24E60169C(a6, &v95, &qword_27F224FA0);
  if (v96)
  {
    sub_24E612C80(&v95, v97);
  }

  else
  {
    v31 = *(*a3 + 192);
    swift_beginAccess();
    sub_24E60169C(a3 + v31, v97, &qword_27F224FA0);
    if (v96)
    {
      sub_24E601704(&v95, &qword_27F224FA0);
    }
  }

  v32 = *(*a3 + 200);
  swift_beginAccess();
  sub_24E60169C(a3 + v32, &v95, qword_27F224FA8);
  swift_beginAccess();
  v33 = v30[18];
  v34 = (a3 + *(*a3 + 216));
  swift_beginAccess();
  v35 = *v34;
  v75 = v34[1];
  v36 = (a3 + *(*a3 + 208));
  swift_beginAccess();
  v37 = *v36;
  v74 = v36[1];
  v87 = v37;
  swift_unknownObjectRetain();

  v86 = v35;
  swift_unknownObjectRetain();
  sub_24F929AA8();
  v38 = qword_27F210660;
  v39 = v90;
  swift_unknownObjectRetain();
  if (v38 != -1)
  {
    swift_once();
  }

  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225038);
  __swift_project_value_buffer(v40, qword_27F22E3D0);
  v93 = v39;
  v94 = v76;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225040);
  sub_24F929A48();
  v41 = *(v17 + 8);
  v41(v23, v16);
  swift_unknownObjectRelease();
  v44 = *(v17 + 32);
  v43 = (v17 + 32);
  v42 = v44;
  v44(v23, v20, v16);
  if (v89)
  {
    v93 = v69;
    v94 = v89;
    if (qword_27F210670 != -1)
    {
      swift_once();
    }

    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C910);
    __swift_project_value_buffer(v45, qword_27F22E400);
    sub_24F929A48();
    v41(v23, v16);
    v42(v23, v20, v16);
  }

  if (v88)
  {
    v93 = v70;
    v94 = v88;
    if (qword_27F210678 != -1)
    {
      swift_once();
    }

    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C910);
    __swift_project_value_buffer(v46, qword_27F22E418);
    sub_24F929A48();
    v41(v23, v16);
    v42(v23, v20, v16);
  }

  v90 = v42;
  LOBYTE(v93) = v78 & 1;
  if (qword_27F210680 != -1)
  {
    swift_once();
  }

  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225048);
  __swift_project_value_buffer(v47, qword_27F22E430);
  sub_24F929A48();
  v41(v23, v16);
  v48 = v90;
  v90(v23, v20, v16);
  if (v79)
  {
    v93 = v79;
    v79 = v47;
    v49 = v33;
    v50 = v71;
    sub_24F929A78();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730);
    sub_24F929A48();
    v51 = v50;
    v33 = v49;
    v47 = v79;
    (*(v72 + 8))(v51, v73);
    v41(v23, v16);
    v48(v23, v20, v16);
  }

  if (v77 != 2)
  {
    LOBYTE(v93) = v77 & 1;
    if (qword_27F210688 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v47, qword_27F22E448);
    sub_24F929A48();
    v41(v23, v16);
    v90(v23, v20, v16);
  }

  sub_24E60169C(v97, &v91, &qword_27F224FA0);
  if (v92)
  {
    sub_24E612C80(&v91, &v93);
    if (qword_27F210690 != -1)
    {
      swift_once();
    }

    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225078);
    __swift_project_value_buffer(v52, qword_27F22E460);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225080);
    sub_24F929A48();
    __swift_destroy_boxed_opaque_existential_1(&v93);
    v41(v23, v16);
    v90(v23, v20, v16);
  }

  else
  {
    sub_24E601704(&v91, &qword_27F224FA0);
  }

  sub_24E60169C(&v95, &v91, qword_27F224FA8);
  if (!v92)
  {
    sub_24E601704(&v91, qword_27F224FA8);
    if (!v33)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  sub_24E612C80(&v91, &v93);
  if (qword_27F210698 != -1)
  {
    swift_once();
  }

  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225068);
  __swift_project_value_buffer(v53, qword_27F22E478);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225070);
  sub_24F929A48();
  __swift_destroy_boxed_opaque_existential_1(&v93);
  v41(v23, v16);
  v90(v23, v20, v16);
  if (v33)
  {
LABEL_36:
    v93 = v33;
    v54 = qword_27F2106B0;

    if (v54 != -1)
    {
      swift_once();
    }

    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224460);
    __swift_project_value_buffer(v55, qword_27F22E4C0);
    type metadata accessor for Action();
    sub_24F929A48();
    v41(v23, v16);

    v90(v23, v20, v16);
  }

LABEL_39:
  v79 = a11;
  v78 = a10;
  v56 = v86;
  if (v87)
  {
    v77 = v33;
    v93 = v87;
    v94 = v74;
    v57 = qword_27F2106A8;
    swift_unknownObjectRetain();
    if (v57 != -1)
    {
      swift_once();
    }

    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225058);
    __swift_project_value_buffer(v58, qword_27F22E4A8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225060);
    sub_24F929A48();
    v41(v23, v16);
    swift_unknownObjectRelease();
    v90(v23, v20, v16);
    v56 = v86;
  }

  if (v56)
  {
    v86 = v43;
    v93 = v56;
    v94 = v75;
    v59 = qword_27F2106A0;
    swift_unknownObjectRetain();
    if (v59 != -1)
    {
      swift_once();
    }

    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225050);
    __swift_project_value_buffer(v60, qword_27F22E490);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224F90);
    sub_24F929A48();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v41(v23, v16);
    sub_24E601704(&v95, qword_27F224FA8);
    sub_24E601704(v97, &qword_27F224FA0);
    swift_unknownObjectRelease();
    v61 = v90;
    v90(v23, v20, v16);
  }

  else
  {

    swift_unknownObjectRelease();
    sub_24E601704(&v95, qword_27F224FA8);
    sub_24E601704(v97, &qword_27F224FA0);
    v61 = v90;
  }

  v62 = v80;
  v61(v80, v23, v16);
  v63 = v81;
  sub_24F928718();
  sub_24F929138();
  (*(v82 + 8))(v63, v84);
  *(swift_allocObject() + 16) = a9;
  v64 = sub_24E74EC40();
  v65 = a9;
  v66 = sub_24F92BEF8();
  v97[3] = v64;
  v97[4] = MEMORY[0x277D225C0];
  v97[0] = v66;
  sub_24F92A998();

  v41(v62, v16);
  return __swift_destroy_boxed_opaque_existential_1(v97);
}

uint64_t sub_24ED4A614(void (*a1)(char *, char *, uint64_t), uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11)
{
  v83 = a8;
  v85 = a7;
  v79 = a5;
  LODWORD(v78) = a4;
  v76 = a2;
  v90 = a1;
  v84 = sub_24F928698();
  v82 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v81 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225030);
  v72 = *(v14 - 8);
  v73 = v14;
  MEMORY[0x28223BE20](v14);
  v71 = &v68 - v15;
  v16 = sub_24F929AB8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v68 - v21;
  MEMORY[0x28223BE20](v23);
  v80 = &v68 - v24;
  v25 = (a3 + OBJC_IVAR____TtC12GameStoreKit13BasePresenter_pageContext);
  swift_beginAccess();
  v26 = v25[1];
  v69 = *v25;
  v27 = (a3 + OBJC_IVAR____TtC12GameStoreKit13BasePresenter_referrer);
  swift_beginAccess();
  v28 = v27[1];
  v70 = *v27;
  v29 = qword_27F210278;
  v89 = v26;

  v88 = v28;

  if (v29 != -1)
  {
    swift_once();
  }

  v30 = off_27F229AB8;
  swift_beginAccess();
  LODWORD(v77) = *(v30 + 88);
  sub_24E60169C(a6, &v95, &qword_27F224FA0);
  if (v96)
  {
    sub_24E612C80(&v95, v97);
    v31 = v90;
  }

  else
  {
    v32 = OBJC_IVAR____TtC12GameStoreKit13BasePresenter_advertRotationData;
    swift_beginAccess();
    sub_24E60169C(a3 + v32, v97, &qword_27F224FA0);
    v31 = v90;
    if (v96)
    {
      sub_24E601704(&v95, &qword_27F224FA0);
    }
  }

  v33 = OBJC_IVAR____TtC12GameStoreKit13BasePresenter_searchGhostHintData;
  swift_beginAccess();
  sub_24E60169C(a3 + v33, &v95, qword_27F224FA8);
  swift_beginAccess();
  v34 = v30[18];
  v35 = (a3 + OBJC_IVAR____TtC12GameStoreKit13BasePresenter_deviceWindowData);
  swift_beginAccess();
  v36 = *v35;
  v75 = v35[1];
  v37 = (a3 + OBJC_IVAR____TtC12GameStoreKit13BasePresenter_impressionsAppendixData);
  swift_beginAccess();
  v38 = *v37;
  v74 = v37[1];
  v87 = v38;
  swift_unknownObjectRetain();

  v86 = v36;
  swift_unknownObjectRetain();
  sub_24F929AA8();
  v39 = qword_27F210660;
  swift_unknownObjectRetain();
  if (v39 != -1)
  {
    swift_once();
  }

  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225038);
  __swift_project_value_buffer(v40, qword_27F22E3D0);
  v93 = v31;
  v94 = v76;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225040);
  sub_24F929A48();
  v41 = *(v17 + 8);
  v41(v22, v16);
  swift_unknownObjectRelease();
  v44 = *(v17 + 32);
  v43 = (v17 + 32);
  v42 = v44;
  v44(v22, v19, v16);
  if (v89)
  {
    v93 = v69;
    v94 = v89;
    if (qword_27F210670 != -1)
    {
      swift_once();
    }

    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C910);
    __swift_project_value_buffer(v45, qword_27F22E400);
    sub_24F929A48();
    v41(v22, v16);
    v42(v22, v19, v16);
  }

  if (v88)
  {
    v93 = v70;
    v94 = v88;
    if (qword_27F210678 != -1)
    {
      swift_once();
    }

    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C910);
    __swift_project_value_buffer(v46, qword_27F22E418);
    sub_24F929A48();
    v41(v22, v16);
    v42(v22, v19, v16);
  }

  v90 = v42;
  LOBYTE(v93) = v78 & 1;
  if (qword_27F210680 != -1)
  {
    swift_once();
  }

  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225048);
  __swift_project_value_buffer(v47, qword_27F22E430);
  sub_24F929A48();
  v41(v22, v16);
  v48 = v90;
  v90(v22, v19, v16);
  if (v79)
  {
    v93 = v79;
    v79 = v47;
    v49 = v34;
    v50 = v71;
    sub_24F929A78();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730);
    sub_24F929A48();
    v51 = v50;
    v34 = v49;
    v47 = v79;
    (*(v72 + 8))(v51, v73);
    v41(v22, v16);
    v48(v22, v19, v16);
  }

  if (v77 != 2)
  {
    LOBYTE(v93) = v77 & 1;
    if (qword_27F210688 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v47, qword_27F22E448);
    sub_24F929A48();
    v41(v22, v16);
    v90(v22, v19, v16);
  }

  sub_24E60169C(v97, &v91, &qword_27F224FA0);
  if (v92)
  {
    sub_24E612C80(&v91, &v93);
    if (qword_27F210690 != -1)
    {
      swift_once();
    }

    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225078);
    __swift_project_value_buffer(v52, qword_27F22E460);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225080);
    sub_24F929A48();
    __swift_destroy_boxed_opaque_existential_1(&v93);
    v41(v22, v16);
    v90(v22, v19, v16);
  }

  else
  {
    sub_24E601704(&v91, &qword_27F224FA0);
  }

  sub_24E60169C(&v95, &v91, qword_27F224FA8);
  if (!v92)
  {
    sub_24E601704(&v91, qword_27F224FA8);
    if (!v34)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  sub_24E612C80(&v91, &v93);
  if (qword_27F210698 != -1)
  {
    swift_once();
  }

  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225068);
  __swift_project_value_buffer(v53, qword_27F22E478);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225070);
  sub_24F929A48();
  __swift_destroy_boxed_opaque_existential_1(&v93);
  v41(v22, v16);
  v90(v22, v19, v16);
  if (v34)
  {
LABEL_36:
    v93 = v34;
    v54 = qword_27F2106B0;

    if (v54 != -1)
    {
      swift_once();
    }

    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224460);
    __swift_project_value_buffer(v55, qword_27F22E4C0);
    type metadata accessor for Action();
    sub_24F929A48();
    v41(v22, v16);

    v90(v22, v19, v16);
  }

LABEL_39:
  v79 = a11;
  v78 = a10;
  v56 = v86;
  if (v87)
  {
    v77 = v34;
    v93 = v87;
    v94 = v74;
    v57 = qword_27F2106A8;
    swift_unknownObjectRetain();
    if (v57 != -1)
    {
      swift_once();
    }

    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225058);
    __swift_project_value_buffer(v58, qword_27F22E4A8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225060);
    sub_24F929A48();
    v41(v22, v16);
    swift_unknownObjectRelease();
    v90(v22, v19, v16);
    v56 = v86;
  }

  if (v56)
  {
    v86 = v43;
    v93 = v56;
    v94 = v75;
    v59 = qword_27F2106A0;
    swift_unknownObjectRetain();
    if (v59 != -1)
    {
      swift_once();
    }

    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225050);
    __swift_project_value_buffer(v60, qword_27F22E490);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224F90);
    sub_24F929A48();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v41(v22, v16);
    sub_24E601704(&v95, qword_27F224FA8);
    sub_24E601704(v97, &qword_27F224FA0);
    swift_unknownObjectRelease();
    v61 = v90;
    v90(v22, v19, v16);
  }

  else
  {

    swift_unknownObjectRelease();
    sub_24E601704(&v95, qword_27F224FA8);
    sub_24E601704(v97, &qword_27F224FA0);
    v61 = v90;
  }

  v62 = v80;
  v61(v80, v22, v16);
  v63 = v81;
  sub_24F928718();
  sub_24F929138();
  (*(v82 + 8))(v63, v84);
  *(swift_allocObject() + 16) = a9;
  v64 = sub_24E74EC40();
  v65 = a9;
  v66 = sub_24F92BEF8();
  v97[3] = v64;
  v97[4] = MEMORY[0x277D225C0];
  v97[0] = v66;
  sub_24F92A998();

  v41(v62, v16);
  return __swift_destroy_boxed_opaque_existential_1(v97);
}

unint64_t ProductNavigationBarMode.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

uint64_t *sub_24ED4B4AC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

unint64_t sub_24ED4B508@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_24ED5C928(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_24ED4B53C()
{
  v0 = sub_24F92AAB8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F92AAE8();
  __swift_allocate_value_buffer(v4, qword_27F39C670);
  __swift_project_value_buffer(v4, qword_27F39C670);
  if (qword_27F210560 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27F39C380);
  (*(v1 + 16))(v3, v5, v0);
  return sub_24F92AAD8();
}

uint64_t sub_24ED4B6E0(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_view;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_24ED4B74C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_view;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_24EB09F58;
}

uint64_t sub_24ED4B850(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_pageRefreshPolicy) = a1;

  v2 = v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 8);
    v6 = *(v5 + 8);

    v6(v7, ObjectType, v5);

    swift_unknownObjectRelease();
  }
}

uint64_t sub_24ED4B930(char a1)
{
  v2 = a1 & 1;
  v3 = sub_24F91F648();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_beginAccess();
  if (*(v1 + 32) != v2)
  {
    if (*(v1 + 32))
    {
      result = swift_beginAccess();
      v8 = *(v1 + 16);
      if (v8)
      {
        v9 = *(v8 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequests);
        result = swift_beginAccess();
        v10 = *(v9 + 48);
        v11 = __OFADD__(v10, 1);
        v12 = v10 + 1;
        if (v11)
        {
          __break(1u);
          return result;
        }

        *(v9 + 48) = v12;
        v13 = v12 == 0;
        swift_beginAccess();
        *(v9 + 40) = v13;
        swift_beginAccess();
        result = swift_weakLoadStrong();
        if (result)
        {

          sub_24EA6BFA0();
        }
      }
    }

    else
    {
      result = swift_beginAccess();
      if (*(v1 + 16))
      {

        sub_24F91F638();
        sub_24F91F5E8();
        v15 = v14;
        (*(v4 + 8))(v6, v3);
        PendingPageRender.initialRequestEndTime.setter(v15, 0);

        if (*(v1 + 16))
        {

          sub_24ED6F318();
        }
      }
    }
  }

  return result;
}

uint64_t sub_24ED4BB30(char a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
  v4 = v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_view;
  if (a1)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v4 + 8);
      ObjectType = swift_getObjectType();
      (*(*(*(v5 + 16) + 24) + 8))(ObjectType);
LABEL_6:
      swift_unknownObjectRelease();
    }
  }

  else
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v7 = *(v4 + 8);
      v8 = swift_getObjectType();
      (*(*(*(v7 + 16) + 24) + 16))(v8);
      goto LABEL_6;
    }
  }

  return sub_24ED4B930(v3);
}

void (*sub_24ED4BC3C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 120) = v1;
  swift_beginAccess();
  *(v4 + 128) = *(v1 + 32);
  return sub_24ED4BCC8;
}

void sub_24ED4BCC8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 120);
  v4 = *(*a1 + 128);
  v5 = *(v3 + 32);
  *(v3 + 32) = v4;
  v6 = v3 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_view;
  if (a2)
  {
    if (v4)
    {
      goto LABEL_5;
    }
  }

  else if (v4)
  {
LABEL_5:
    swift_beginAccess();
    if (!swift_unknownObjectWeakLoadStrong())
    {
      goto LABEL_10;
    }

    v7 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    v9 = (*(*(v7 + 16) + 24) + 8);
    goto LABEL_9;
  }

  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_10;
  }

  v10 = *(v6 + 8);
  ObjectType = swift_getObjectType();
  v9 = (*(*(v10 + 16) + 24) + 16);
LABEL_9:
  (*v9)(ObjectType);
  swift_unknownObjectRelease();
LABEL_10:
  sub_24ED4B930(v5);

  free(v2);
}

uint64_t ProductPresenter.__allocating_init(objectGraph:productUrl:productPage:appStateController:purchaseHistory:restrictions:fullProductFetchedAction:referrerData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, __int128 *a9)
{
  v14 = swift_allocObject();
  v32 = *(a9 + 4);
  v31 = *(a9 + 40);
  *(v14 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v14 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_pageRefreshPolicy) = 0;
  *(v14 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_isFetchingShelves) = 0;
  *(v14 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_numberOfActiveRequests) = 0;
  *(v14 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct) = 0;
  *(v14 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_hasBeenPurchasedForReviewsContainer) = 2;
  *(v14 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_isLocalApplicationForAppEvents) = 2;
  *(v14 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_shouldDisplayBetaBanner) = 0;
  v15 = (v14 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_currentBetaBundleVersion);
  *v15 = 0;
  v15[1] = 0;
  *(v14 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_isPurchased) = 0;
  *(v14 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_isMediaExpanded) = 0;
  *(v14 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_didAskToBuy) = 0;
  v16 = (v14 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_currentlyObservedAdamId);
  *v16 = 0;
  v16[1] = 0;
  v17 = OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_productUrl;
  v35 = sub_24F91F4A8();
  v18 = *(v35 - 8);
  v28 = a9[1];
  v29 = *a9;
  (*(v18 + 16))(v14 + v17, a2, v35);
  *(v14 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct) = a3;
  v19 = (v14 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_appStateController);
  *v19 = a4;
  v19[1] = a5;
  sub_24E615E00(a6, v14 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_purchaseHistory);
  type metadata accessor for CompleteMyBundleController();
  v20 = swift_allocObject();
  v20[4] = 0;
  swift_unknownObjectWeakInit();
  v21 = MEMORY[0x277D84FA0];
  v20[5] = 0;
  v20[6] = v21;
  v20[2] = a1;
  *(v14 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_completeMyBundleController) = v20;
  sub_24E615E00(a7, v14 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_restrictions);
  *(v14 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProductFetchedAction) = a8;
  v22 = v14 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_referrerData;
  *v22 = v29;
  *(v22 + 16) = v28;
  *(v22 + 32) = v32;
  *(v22 + 40) = v31;

  swift_unknownObjectRetain();
  v23 = sub_24EC8415C(a1, 0, 0, 0);
  *(*(v23 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_completeMyBundleController) + 32) = &off_2861F0BE0;
  swift_unknownObjectWeakAssign();
  v24 = objc_opt_self();
  swift_retain_n();
  v25 = [v24 defaultCenter];
  v26 = sub_24F92B098();
  __swift_project_boxed_opaque_existential_1(a7, a7[3]);
  [v25 addObserver:v23 selector:sel_restrictionsDidChange_ name:v26 object:sub_24F92CDE8()];

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a6);
  (*(v18 + 8))(a2, v35);
  __swift_destroy_boxed_opaque_existential_1(a7);
  return v23;
}

uint64_t ProductPresenter.init(objectGraph:productUrl:productPage:appStateController:purchaseHistory:restrictions:fullProductFetchedAction:referrerData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, __int128 *a9)
{
  v33 = *(a9 + 4);
  v32 = *(a9 + 40);
  *(v9 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v9 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_pageRefreshPolicy) = 0;
  *(v9 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_isFetchingShelves) = 0;
  *(v9 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_numberOfActiveRequests) = 0;
  *(v9 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct) = 0;
  *(v9 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_hasBeenPurchasedForReviewsContainer) = 2;
  *(v9 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_isLocalApplicationForAppEvents) = 2;
  *(v9 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_shouldDisplayBetaBanner) = 0;
  v16 = (v9 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_currentBetaBundleVersion);
  *v16 = 0;
  v16[1] = 0;
  *(v9 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_isPurchased) = 0;
  *(v9 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_isMediaExpanded) = 0;
  *(v9 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_didAskToBuy) = 0;
  v17 = (v9 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_currentlyObservedAdamId);
  *v17 = 0;
  v17[1] = 0;
  v18 = OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_productUrl;
  v35 = sub_24F91F4A8();
  v19 = *(v35 - 8);
  v29 = a9[1];
  v30 = *a9;
  (*(v19 + 16))(v9 + v18, a2, v35);
  *(v9 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct) = a3;
  v20 = (v9 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_appStateController);
  *v20 = a4;
  v20[1] = a5;
  sub_24E615E00(a6, v9 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_purchaseHistory);
  type metadata accessor for CompleteMyBundleController();
  v21 = swift_allocObject();
  v21[4] = 0;
  swift_unknownObjectWeakInit();
  v22 = MEMORY[0x277D84FA0];
  v21[5] = 0;
  v21[6] = v22;
  v21[2] = a1;
  *(v9 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_completeMyBundleController) = v21;
  sub_24E615E00(a7, v9 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_restrictions);
  *(v9 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProductFetchedAction) = a8;
  v23 = v9 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_referrerData;
  *v23 = v30;
  *(v23 + 16) = v29;
  *(v23 + 32) = v33;
  *(v23 + 40) = v32;

  swift_unknownObjectRetain();
  v24 = sub_24EC8415C(a1, 0, 0, 0);
  *(*(v24 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_completeMyBundleController) + 32) = &off_2861F0BE0;
  swift_unknownObjectWeakAssign();
  v25 = objc_opt_self();
  swift_retain_n();
  v26 = [v25 defaultCenter];
  v27 = sub_24F92B098();
  __swift_project_boxed_opaque_existential_1(a7, a7[3]);
  [v26 addObserver:v24 selector:sel_restrictionsDidChange_ name:v27 object:sub_24F92CDE8()];

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a6);
  (*(v19 + 8))(a2, v35);
  __swift_destroy_boxed_opaque_existential_1(a7);
  return v24;
}

uint64_t sub_24ED4C540()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_purchaseHistory);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_restrictions);

  sub_24EA14B54(*(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_referrerData), *(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_referrerData + 8), *(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_referrerData + 16), *(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_referrerData + 24), *(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_referrerData + 32), *(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_referrerData + 40));
  sub_24E883630(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_view);

  v1 = OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_productUrl;
  v2 = sub_24F91F4A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
}

uint64_t ProductPresenter.deinit()
{
  v1 = (v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_currentlyObservedAdamId);
  v2 = *(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_currentlyObservedAdamId + 8);
  if (v2)
  {
    v3 = *v1;
    v4 = *(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_appStateController + 8);
    ObjectType = swift_getObjectType();
    v16[0] = v3;
    v16[1] = v2;
    v6 = *(v4 + 56);

    swift_unknownObjectRetain();
    v6(v16, ObjectType, v4);
    v8 = v7;

    swift_unknownObjectRelease();
    v9 = swift_getObjectType();
    (*(v8 + 80))(v0, v9, v8);
    swift_unknownObjectRelease();
    *v1 = 0;
    v1[1] = 0;
  }

  v10 = *(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_appStateController + 8);

  v11 = swift_unknownObjectRetain();
  sub_24E8E5164(v11, v10);

  swift_unknownObjectRelease();
  v12 = BasePresenter.deinit();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v12 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_purchaseHistory);
  __swift_destroy_boxed_opaque_existential_1(v12 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_restrictions);

  sub_24EA14B54(*(v12 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_referrerData), *(v12 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_referrerData + 8), *(v12 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_referrerData + 16), *(v12 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_referrerData + 24), *(v12 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_referrerData + 32), *(v12 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_referrerData + 40));
  sub_24E883630(v12 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_view);

  v13 = OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_productUrl;
  v14 = sub_24F91F4A8();
  (*(*(v14 - 8) + 8))(v12 + v13, v14);

  return v12;
}

uint64_t ProductPresenter.__deallocating_deinit()
{
  ProductPresenter.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24ED4C938()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14[-v3];
  swift_beginAccess();
  v5 = *(v0 + 16);
  if (v5)
  {
    v6 = qword_27F210788;

    if (v6 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v7 = qword_27F230F98;
    v8 = v5 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_requestedTime;
    swift_beginAccess();
    *v8 = v7;
    *(v8 + 8) = 0;
    v9 = *(v5 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequestedTime);
    swift_beginAccess();
    *(v9 + 40) = 1;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_24EA6BFA0();
    }
  }

  v10 = sub_24F92B858();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v1;

  sub_24EA998B8(0, 0, v4, &unk_24F99AA70, v11);

  if (*(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct))
  {
    v12 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct);
  }

  else
  {
    v12 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
    if (!v12)
    {
      v17 = 0;
      v15 = 0u;
      v16 = 0u;
      goto LABEL_12;
    }
  }

  *(&v16 + 1) = type metadata accessor for ProductPage();
  v17 = &off_2861DE828;
  *&v15 = v12;

LABEL_12:
  sub_24E8E49A8(&v15, *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_appStateController), *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_appStateController + 8));
  sub_24E601704(&v15, &qword_27F221020);
  return sub_24ED4CC00(0);
}

uint64_t sub_24ED4CC00(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for ProductPageIntent();
  MEMORY[0x28223BE20](v4);
  v6 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F92A088();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_beginAccess();
  if (*(v2 + 32) & 1) == 0 && (!*(v2 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct) || (a1))
  {
    v12 = *(v2 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
    if (v12)
    {
      v36 = v8;
      v13 = swift_retain_n();
      sub_24ED4E9F0(v13);
      sub_24ED5BE3C(v12, *(v2 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_appStateController), *(v2 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_appStateController + 8), *(v2 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_completeMyBundleController));
      v14 = v2 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_view;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v15 = *(v14 + 8);
        v35[1] = swift_getObjectType();
        sub_24EA80068();
        (*(*(v15 + 16) + 32))();

        swift_unknownObjectRelease();
      }

      else
      {
      }

      if (*(v12 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_isComplete) == 1)
      {
        sub_24ED4D25C(v12, v2);
        swift_beginAccess();
        if (!*(v2 + 16))
        {
        }

        v38 = type metadata accessor for ProductPage();
        v39 = &protocol witness table for ProductPage;
        v40 = sub_24ED5EA84(&qword_27F22ECD8, type metadata accessor for ProductPage);
        v37[0] = v12;

        PendingPageRender.use(pageRenderEventFrom:)(v37);

        return sub_24E601704(v37, &qword_27F224F98);
      }

      LOBYTE(v12) = *(v2 + 32);
      v8 = v36;
    }

    *(v2 + 32) = 1;
    v16 = v2 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v17 = *(v16 + 8);
      ObjectType = swift_getObjectType();
      (*(*(*(v17 + 16) + 24) + 8))(ObjectType);
      swift_unknownObjectRelease();
    }

    sub_24ED4B930(v12);
    swift_beginAccess();
    if (*(v2 + 24))
    {
      *v10 = 1;
      (*(v8 + 104))(v10, *MEMORY[0x277D222A0], v7);

      sub_24F92A0D8();

      (*(v8 + 8))(v10, v7);
    }

    v19 = OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_productUrl;
    v20 = v4[5];
    v21 = sub_24F91F4A8();
    (*(*(v21 - 8) + 16))(&v6[v20], v2 + v19, v21);
    v22 = v2 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_referrerData;
    v23 = *(v2 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_referrerData);
    v24 = *(v2 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_referrerData + 8);
    v25 = *(v2 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_referrerData + 16);
    v26 = *(v2 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_referrerData + 24);
    v27 = *(v2 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_referrerData + 32);
    *v6 = 0xD000000000000011;
    *(v6 + 1) = 0x800000024FA5BE80;
    v6[v4[6]] = 0;
    v28 = &v6[v4[7]];
    *v28 = v23;
    *(v28 + 1) = v24;
    *(v28 + 2) = v25;
    *(v28 + 3) = v26;
    *(v28 + 4) = v27;
    v29 = *(v22 + 40);
    v28[40] = v29;
    type metadata accessor for JSIntentDispatcher();
    sub_24EA145F0(v23, v24, v25, v26, v27, v29);
    sub_24F928FD8();
    sub_24F92A758();
    sub_24F929C28();

    sub_24F928FE8();

    sub_24F929BF8();

    v30 = sub_24F929C08();

    sub_24EB46D7C(v6, v30, "GameStoreKit/ProductPresenter.swift", 35, 2);
    v31 = swift_allocObject();
    swift_weakInit();
    v32 = swift_allocObject();
    *(v32 + 16) = v31;
    *(v32 + 24) = v2;
    v33 = sub_24E74EC40();
    swift_retain_n();
    v34 = sub_24F92BEF8();
    v38 = v33;
    v39 = MEMORY[0x277D225C0];
    v37[0] = v34;
    sub_24F92A958();

    sub_24ED5EACC(v6, type metadata accessor for ProductPageIntent);
    return __swift_destroy_boxed_opaque_existential_1(v37);
  }

  return result;
}

uint64_t sub_24ED4D25C(void *a1, uint64_t a2)
{
  v4 = sub_24F91FA78();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v99 = &v89 - v9;
  v10 = sub_24F91F968();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v100 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v89 - v14;
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a1;
  v17 = *(a2 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
  if (!v17)
  {

LABEL_19:

    sub_24ED5E7D0(v28);

    sub_24ED4E9F0(a1);
    sub_24ED4F4C8();
    sub_24ED4EE5C(a1);
    v29 = a2 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v30 = *(v29 + 8);
      swift_getObjectType();
      sub_24EA80068();
      (*(*(v30 + 16) + 32))();

      swift_unknownObjectRelease();
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v31 = *(v29 + 8);
      ObjectType = swift_getObjectType();
      (*(*(*(v31 + 16) + 16) + 8))(ObjectType);
      swift_unknownObjectRelease();
    }

    goto LABEL_62;
  }

  if ((sub_24ED5E544(v18, a1) & 1) == 0)
  {

    goto LABEL_19;
  }

  v93 = v7;
  v91 = v5;
  v92 = v4;
  v96 = v11;
  v98 = v17;
  sub_24ED571A0(v17, a1, v15);
  v19 = MEMORY[0x277D84F90];
  v101[0] = MEMORY[0x277D84F90];
  sub_24ED5EA84(&qword_27F22E100, MEMORY[0x277CC9A28]);
  v20 = &unk_24F99DB70;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218050);
  sub_24E9723D4(&qword_27F22E108, &qword_27F218050);
  v97 = v10;
  sub_24F92C6A8();
  v21 = OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_isPurchased;
  swift_beginAccess();
  if (*(a2 + v21))
  {
    v22 = &OBJC_IVAR____TtC12GameStoreKit11ProductPage_purchasedOrdering;
  }

  else
  {
    v22 = &OBJC_IVAR____TtC12GameStoreKit11ProductPage_notPurchasedOrdering;
  }

  v23 = *v22;
  if (*(a1 + v23))
  {
    v24 = *(a1 + v23);
  }

  else
  {
    v24 = v19;
  }

  if (v24 >> 62)
  {
LABEL_72:
    v25 = sub_24F92C738();
  }

  else
  {
    v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v26 = v100;
  if (v25 < 0)
  {
    __break(1u);
    goto LABEL_74;
  }

  if (v25)
  {
    for (i = 0; i != v25; ++i)
    {
      if ((sub_24F91F918() & 1) == 0)
      {
        sub_24F91F8F8();
      }
    }
  }

  v34 = sub_24ED57414(v33, a1);
  v36 = v35;

  v37 = sub_24F92CE08();
  v95 = v34;
  if ((v37 & 1) == 0)
  {
    v89 = v36;
    v40 = sub_24ED570C8();
    v20 = v40;
    v90 = v16;
    if (!(v40 >> 62))
    {
      v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v41)
      {
        goto LABEL_27;
      }

      goto LABEL_37;
    }

LABEL_74:
    v41 = sub_24F92C738();
    if (v41)
    {
LABEL_27:
      v42 = 0;
      v16 = v20 & 0xC000000000000001;
      v94 = v20 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v16)
        {
          v43 = MEMORY[0x253052270](v42, v20);
        }

        else
        {
          if (v42 >= *(v94 + 16))
          {
            goto LABEL_71;
          }

          v43 = *(v20 + 8 * v42 + 32);
        }

        if (*(v43 + 16) <= 1u && *(v43 + 16))
        {
          break;
        }

        v44 = sub_24F92CE08();

        if (v44)
        {
          goto LABEL_40;
        }

        v45 = v42 + 1;
        if (__OFADD__(v42, 1))
        {
          __break(1u);
LABEL_71:
          __break(1u);
          goto LABEL_72;
        }

        ++v42;
        if (v45 == v41)
        {
          goto LABEL_37;
        }
      }

LABEL_40:

      v39 = v89;
      v46 = *(v89 + 16);
      v47 = (v89 + 32);
      v38 = MEMORY[0x277D84F90];
      v16 = v90;
      v26 = v100;
      while (v46)
      {
        v48 = *v47++;
        --v46;
        if (v48 == v42)
        {
          goto LABEL_47;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E020);
      v49 = swift_allocObject();
      *(v49 + 16) = xmmword_24F93A400;
      *(v49 + 32) = v42;
      *(v49 + 40) = 0;
      MEMORY[0x253045350]();
      v38 = sub_24E618B94(0, 1, 1, MEMORY[0x277D84F90]);
      v51 = *(v38 + 2);
      v50 = *(v38 + 3);
      if (v51 >= v50 >> 1)
      {
        v38 = sub_24E618B94(v50 > 1, v51 + 1, 1, v38);
      }

      *(v38 + 2) = v51 + 1;
      (*(v91 + 32))(&v38[((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * v51], v99, v92);
      goto LABEL_47;
    }

LABEL_37:

    v38 = MEMORY[0x277D84F90];
    v16 = v90;
    v26 = v100;
    v39 = v89;
    goto LABEL_47;
  }

  v38 = MEMORY[0x277D84F90];
  v39 = v36;
LABEL_47:
  type metadata accessor for ProductPageSection();
  inited = swift_initStackObject();
  *(inited + 16) = 3;
  *(inited + 24) = 0xD000000000000011;
  *(inited + 32) = 0x800000024FA3F670;
  v53 = sub_24ED570C8();
  v54 = sub_24EB9B734(inited, v53);
  LOBYTE(inited) = v55;

  if ((inited & 1) == 0)
  {
    v56 = *(v39 + 16);
    v57 = (v39 + 32);
    while (v56)
    {
      v58 = *v57++;
      --v56;
      if (v58 == v54)
      {
        goto LABEL_57;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E020);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_24F93A400;
    *(v59 + 32) = v54;
    *(v59 + 40) = 0;
    MEMORY[0x253045350]();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v38 = sub_24E618B94(0, *(v38 + 2) + 1, 1, v38);
    }

    v61 = *(v38 + 2);
    v60 = *(v38 + 3);
    if (v61 >= v60 >> 1)
    {
      v38 = sub_24E618B94(v60 > 1, v61 + 1, 1, v38);
    }

    *(v38 + 2) = v61 + 1;
    (*(v91 + 32))(&v38[((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * v61], v93, v92);
  }

LABEL_57:
  v62 = a2 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v63 = v16;
    v64 = *(v62 + 8);
    swift_getObjectType();
    v99 = v38;
    sub_24EA80068();
    v65 = *(v64 + 16);
    v16 = v63;
    v26 = v100;
    v38 = v99;
    (*(v65 + 32))();

    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v66 = *(v62 + 8);
    v67 = swift_getObjectType();
    (*(v66 + 32))(v26, v38, v95, v39, sub_24ED5E53C, v16, v67, v66);
    v68 = v26;
    v17 = v98;

    swift_unknownObjectRelease();

    v69 = *(v96 + 8);
    v70 = v68;
    v71 = v97;
    v69(v70, v97);
    v69(v15, v71);
  }

  else
  {
    v72 = v26;
    v17 = v98;

    v73 = *(v96 + 8);
    v74 = v72;
    v75 = v97;
    v73(v74, v97);
    v73(v15, v75);
  }

LABEL_62:
  if (*(a2 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProductFetchedAction))
  {
    v76 = a2 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v77 = *(v76 + 8);
      v78 = swift_getObjectType();
      v102 = type metadata accessor for ProductPresenter();
      v101[0] = a2;
      v79 = *(*(v77 + 16) + 8);
      v80 = *(v79 + 8);

      v80(v81, v101, v78, v79);

      swift_unknownObjectRelease();
      sub_24E601704(v101, &qword_27F2129B0);
    }
  }

  if (v17)
  {
    if (*(v17 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_fullProductFetchedAction))
    {
      v82 = a2 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_view;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v83 = *(v82 + 8);
        v84 = swift_getObjectType();
        v102 = type metadata accessor for ProductPresenter();
        v101[0] = a2;
        v85 = *(*(v83 + 16) + 8);
        v86 = *(v85 + 8);

        v86(v87, v101, v84, v85);

        swift_unknownObjectRelease();
        sub_24E601704(v101, &qword_27F2129B0);
      }
    }
  }
}

void sub_24ED4DEF4(uint64_t a1, void *a2)
{

  sub_24ED5E7D0(a2);

  sub_24ED4E9F0(a2);
  sub_24ED4F4C8();
  sub_24ED4EE5C(a2);
}

uint64_t sub_24ED4DF44(char **a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_24F91F648();
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F92A078();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    swift_beginAccess();
    v15 = *(v14 + 16);

    if (v15)
    {
      v39[3] = type metadata accessor for ProductPage();
      v39[4] = &protocol witness table for ProductPage;
      v39[5] = sub_24ED5EA84(&qword_27F22ECD8, type metadata accessor for ProductPage);
      v39[0] = v12;

      PendingPageRender.use(pageRenderEventFrom:)(v39);

      sub_24E601704(v39, &qword_27F224F98);
    }
  }

  swift_beginAccess();
  v16 = swift_weakLoadStrong();
  if (v16)
  {
    v17 = v16;
    swift_beginAccess();
    v18 = *(v17 + 24);

    if (v18)
    {
      v19 = OBJC_IVAR____TtC12GameStoreKit11ProductPage_pageMetrics;
      v20 = sub_24F928818();
      (*(*(v20 - 8) + 16))(v11, &v12[v19], v20);
      (*(v9 + 104))(v11, *MEMORY[0x277D22290], v8);
      sub_24F92A0C8();

      (*(v9 + 8))(v11, v8);
    }
  }

  sub_24ED4D25C(v12, a3);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
    }

    v21 = sub_24ED5EB2C(v12);

    if (v21)
    {
      swift_beginAccess();
      v22 = swift_weakLoadStrong();
      if (v22)
      {
        sub_24ED5BE3C(v12, *(v22 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_appStateController), *(v22 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_appStateController + 8), *(v22 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_completeMyBundleController));
      }
    }
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_24ED4B850(v23);
  }

  swift_beginAccess();
  v24 = swift_weakLoadStrong();
  if (v24)
  {
    v25 = v24;
    swift_beginAccess();
    v26 = *(v25 + 16);

    if (v26)
    {
      sub_24F91F638();
      sub_24F91F5E8();
      v28 = v27;
      (*(v37 + 8))(v7, v38);
      v29 = v26 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_rootViewModelPresentTime;
      swift_beginAccess();
      *v29 = v28;
      *(v29 + 8) = 0;
      v30 = *(v26 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasViewModelPresentTime);
      swift_beginAccess();
      *(v30 + 40) = 1;
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_24EA6BFA0();
      }
    }
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v32 = result;
    swift_beginAccess();
    v33 = *(v32 + 32);
    *(v32 + 32) = 0;
    v34 = v32 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v35 = *(v34 + 8);
      ObjectType = swift_getObjectType();
      (*(*(*(v35 + 16) + 24) + 16))(ObjectType);
      swift_unknownObjectRelease();
    }

    sub_24ED4B930(v33);
  }

  return result;
}

void sub_24ED4E530(void *a1, uint64_t a2)
{
  v4 = sub_24F92A078();
  v35 = *(v4 - 8);
  v36 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = (v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for PresenterError();
  MEMORY[0x28223BE20](v7);
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24ED5E7D0(0);
  swift_beginAccess();
  v10 = *(a2 + 32);
  *(a2 + 32) = 0;
  v11 = a2 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v12 = *(v11 + 8);
    ObjectType = swift_getObjectType();
    (*(*(*(v12 + 16) + 24) + 16))(ObjectType);
    swift_unknownObjectRelease();
  }

  sub_24ED4B930(v10);
  v14 = *(v7 + 20);
  v15 = OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_productUrl;
  v16 = sub_24F91F4A8();
  v17 = *(v16 - 8);
  (*(v17 + 16))(&v9[v14], a2 + v15, v16);
  (*(v17 + 56))(&v9[v14], 0, 1, v16);
  *v9 = a1;
  swift_beginAccess();
  v18 = *(a2 + 16);
  if (v18)
  {
    sub_24ED5EA84(&qword_27F22B028, type metadata accessor for PresenterError);
    v34[1] = v7;
    v34[0] = swift_allocError();
    sub_24EBDEC38(v9, v19);
    v20 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_errors;
    swift_beginAccess();
    v21 = *(v18 + v20);
    v22 = a1;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v18 + v20) = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = sub_24E617130(0, v21[2] + 1, 1, v21);
      *(v18 + v20) = v21;
    }

    v25 = v21[2];
    v24 = v21[3];
    if (v25 >= v24 >> 1)
    {
      v21 = sub_24E617130((v24 > 1), v25 + 1, 1, v21);
    }

    v21[2] = v25 + 1;
    v21[v25 + 4] = v34[0];
    *(v18 + v20) = v21;
    swift_endAccess();
  }

  else
  {
    v26 = a1;
  }

  swift_beginAccess();
  if (*(a2 + 24))
  {
    *v6 = a1;
    v28 = v35;
    v27 = v36;
    (*(v35 + 104))(v6, *MEMORY[0x277D22280], v36);
    v29 = a1;

    sub_24F92A0C8();

    (*(v28 + 8))(v6, v27);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v30 = *(v11 + 8);
    v31 = swift_getObjectType();
    sub_24ED5EA84(&qword_27F22B028, type metadata accessor for PresenterError);
    v32 = swift_allocError();
    sub_24EBDEC38(v9, v33);
    (*(*(*(v30 + 16) + 24) + 24))(v32, v31);
    swift_unknownObjectRelease();
    sub_24ED5EACC(v9, type metadata accessor for PresenterError);
  }

  else
  {
    sub_24ED5EACC(v9, type metadata accessor for PresenterError);
  }
}

uint64_t sub_24ED4E9F0(void *a1)
{
  v18[3] = type metadata accessor for ProductPage();
  v18[4] = &protocol witness table for ProductPage;
  v18[5] = sub_24ED5EA84(&qword_27F22ECD8, type metadata accessor for ProductPage);
  v18[0] = a1;
  swift_beginAccess();

  sub_24EA095A4(v18, v1 + 40);
  swift_endAccess();
  sub_24EC832DC();
  sub_24E601704(v18, &qword_27F224F98);
  v3 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct);
  if (v3)
  {
    v4 = v3 == a1;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    goto LABEL_5;
  }

  v6 = a1[6];
  v7 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
  if (v7)
  {
    v8 = *(v7 + 48);

    if (v6)
    {
      if (v8)
      {
        v5 = _s12GameStoreKit7ArtworkC2eeoiySbAC_ACtFZ_0(v6, v8);

        goto LABEL_11;
      }

LABEL_5:
      v5 = 0;
      goto LABEL_11;
    }

    if (v8)
    {

      goto LABEL_5;
    }

    v5 = 1;
  }

  else
  {
    v5 = v6 == 0;
  }

LABEL_11:
  v9 = v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_view;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = *(v9 + 8);
    v13 = a1[2];
    v12 = a1[3];
    if (v5)
    {
      v14 = 0;
    }

    else
    {
      v14 = a1[6];
    }

    ObjectType = swift_getObjectType();
    v16 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_isComplete);
    v17 = *(v11 + 48);

    v17(v13, v12, v14, v16, ObjectType, v11);

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24ED4EC10(char a1)
{
  v2 = v1;
  v4 = sub_24F9287F8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  if (a1)
  {
    sub_24F9287C8();
    sub_24ED46B90(v7, &OBJC_IVAR____TtC12GameStoreKit13BasePresenter_metricsPipeline, &OBJC_IVAR____TtC12GameStoreKit13BasePresenter_impressionsTracker, &unk_2861F1A40, &unk_2861F1A90, sub_24ED5E4C8, sub_24ED5F604, &block_descriptor_358, &block_descriptor_351, &OBJC_IVAR____TtC12GameStoreKit13BasePresenter_impressionsCalculator);
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    swift_getObjectType();
    sub_24F9296B8();
  }

  memset(v14, 0, sizeof(v14));
  swift_beginAccess();
  sub_24EA095A4(v14, v2 + 40);
  swift_endAccess();
  sub_24EC832DC();
  sub_24E601704(v14, &qword_27F224F98);
  swift_beginAccess();
  v8 = *(v2 + 32);
  *(v2 + 32) = 0;
  v9 = v2 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(v9 + 8);
    ObjectType = swift_getObjectType();
    (*(*(*(v10 + 16) + 24) + 16))(ObjectType);
    swift_unknownObjectRelease();
  }

  return sub_24ED4B930(v8);
}

void sub_24ED4EE5C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v22 - v4;
  if ((*(a1 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_externalVersionIdentifier + 8) & 1) == 0)
  {
    v6 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_updateBuyParams + 8);
    if (v6)
    {
      v8 = a1[2];
      v7 = a1[3];
      v9 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_externalVersionIdentifier);
      v23 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_updateBuyParams);
      v25 = v1;
      v10 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_appStateController + 8);
      ObjectType = swift_getObjectType();
      v24 = v8;
      v26[0] = v8;
      v26[1] = v7;
      v12 = *(v10 + 56);

      v12(v26, ObjectType, v10);
      v14 = v13;
      v15 = swift_getObjectType();
      (*(v14 + 16))(v27, v15, v14);
      if (v27[6] >> 60 == 7)
      {
        v16 = [v27[1] integerValue];
        sub_24E88D2AC(v27);
        swift_unknownObjectRelease();
        if (v16 >= v9)
        {
        }

        else if (a1[5] && (v17 = sub_24F92B098(), v18 = [objc_opt_self() applicationProxyForSystemPlaceholder_], v17, v18))
        {
        }

        else
        {
          v19 = sub_24F92B858();
          (*(*(v19 - 8) + 56))(v5, 1, 1, v19);
          v20 = swift_allocObject();
          v20[2] = 0;
          v20[3] = 0;
          v21 = v24;
          v20[4] = v25;
          v20[5] = v21;
          v20[6] = v7;
          v20[7] = v9;
          v20[8] = v23;
          v20[9] = v6;

          sub_24EA998B8(0, 0, v5, &unk_24F99AE90, v20);
        }
      }

      else
      {
        sub_24E88D2AC(v27);

        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t sub_24ED4F120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a8;
  v8[9] = v10;
  v8[6] = a6;
  v8[7] = a7;
  v8[4] = a4;
  v8[5] = a5;
  return MEMORY[0x2822009F8](sub_24ED4F150, 0, 0);
}

uint64_t sub_24ED4F150()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = *(v0[4] + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_appStateController + 8);
  ObjectType = swift_getObjectType();
  v0[2] = v2;
  v0[3] = v1;
  v10 = (*(v3 + 80) + **(v3 + 80));
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_24ED4F2AC;
  v6 = v0[8];
  v7 = v0[9];
  v8 = v0[7];

  return v10(v0 + 2, v8, v6, v7, ObjectType, v3);
}

uint64_t sub_24ED4F2AC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24ED4F3A0(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_isFetchingShelves);
  *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_isFetchingShelves) = result;
  if (v2 != (result & 1))
  {
    if ((result & 1) == 0)
    {
      result = swift_beginAccess();
      if (!*(v1 + 16))
      {
        return result;
      }

      sub_24ED6F318();
    }

    result = swift_beginAccess();
    v3 = *(v1 + 16);
    if (v3)
    {
      v4 = *(v3 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequests);
      result = swift_beginAccess();
      v5 = *(v4 + 48);
      v6 = __OFADD__(v5, 1);
      v7 = v5 + 1;
      if (v6)
      {
        __break(1u);
        return result;
      }

      *(v4 + 48) = v7;
      v8 = v7 == 0;
      swift_beginAccess();
      *(v4 + 40) = v8;
      swift_beginAccess();
      result = swift_weakLoadStrong();
      if (result)
      {

        sub_24EA6BFA0();
      }
    }
  }

  return result;
}

void sub_24ED4F4C8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v72[-v2];
  v4 = sub_24F91F4A8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v72[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v93 = &v72[-v9];
  v10 = *(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct);
  if (v10)
  {
    v11 = OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_isPurchased;
    swift_beginAccess();
    v12 = *(v0 + v11) ? &OBJC_IVAR____TtC12GameStoreKit11ProductPage_purchasedOrdering : &OBJC_IVAR____TtC12GameStoreKit11ProductPage_notPurchasedOrdering;
    v13 = *(v10 + *v12);
    if (v13)
    {
      v86 = v0;
      v98 = MEMORY[0x277D84F98];
      v94 = v13 & 0xFFFFFFFFFFFFFF8;
      if (v13 >> 62)
      {
        goto LABEL_70;
      }

      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_8:
      v15 = OBJC_IVAR____TtC12GameStoreKit11ProductPage_shelfMapping;

      v95 = v15;
      swift_beginAccess();
      v87 = v10;
      if (v14)
      {
        v78 = v11;
        v77 = v7;
        v90 = v3;
        v91 = v4;
        v11 = 0;
        v7 = (v13 & 0xC000000000000001);
        v89 = (v5 + 48);
        v85 = (v5 + 32);
        v83 = (v5 + 8);
        v82 = (v5 + 16);
        v76 = v5;
        v75 = v5 + 40;
        v81 = xmmword_24F93DE60;
        v3 = v94;
        v92 = v13 & 0xC000000000000001;
        v88 = v13;
        while (1)
        {
          if (v7)
          {
            v16 = MEMORY[0x253052270](v11, v13);
            v4 = v11 + 1;
            if (__OFADD__(v11, 1))
            {
              goto LABEL_67;
            }
          }

          else
          {
            if (v11 >= *(v3 + 2))
            {
              goto LABEL_68;
            }

            v16 = *(v13 + 8 * v11 + 32);

            v4 = v11 + 1;
            if (__OFADD__(v11, 1))
            {
LABEL_67:
              __break(1u);
LABEL_68:
              __break(1u);
LABEL_69:
              __break(1u);
LABEL_70:
              v14 = sub_24F92C738();
              goto LABEL_8;
            }
          }

          if (*(v16 + 16) > 2u)
          {

            v5 = *(v16 + 32);
            if (!v5)
            {
              goto LABEL_10;
            }
          }

          else
          {
            v5 = sub_24F92CE08();

            if ((v5 & 1) == 0 || (v5 = *(v16 + 32)) == 0)
            {
LABEL_10:

              goto LABEL_11;
            }
          }

          v17 = *(v10 + v95);
          if (!*(v17 + 16))
          {
            goto LABEL_10;
          }

          v18 = *(v16 + 24);

          v19 = sub_24E76D644(v18, v5);
          v21 = v20;

          if ((v21 & 1) == 0)
          {

            goto LABEL_26;
          }

          v22 = v14;
          v23 = *(*(v17 + 56) + 8 * v19);

          v24 = v90;
          sub_24E60169C(v23 + OBJC_IVAR____TtC12GameStoreKit5Shelf_url, v90, &qword_27F228530);
          v5 = v91;
          if ((*v89)(v24, 1, v91) == 1)
          {

            sub_24E601704(v24, &qword_27F228530);
          }

          else
          {
            v25 = *v85;
            (*v85)(v93, v24, v5);
            v26 = v23;
            if (*(v23 + OBJC_IVAR____TtC12GameStoreKit5Shelf_presentationHints) & 8) == 0 || (*(v86 + v78))
            {
              v97[0] = v11;
              v84 = sub_24F92CD88();
              v5 = v27;
              v28 = (v23 + OBJC_IVAR____TtC12GameStoreKit5Shelf_batchGroup);
              v14 = v22;
              if (v98[2] && (sub_24E76D644(*v28, v28[1]), (v29 & 1) != 0))
              {
                v30 = sub_24F4D64CC(v97, *v28, v28[1]);
                v32 = v30;
                v13 = v88;
                if (*v31)
                {
                  v33 = v31;
                  v79 = v30;
                  (*v82)(v77, v93, v91);
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v35 = v5;
                  v36 = isUniquelyReferenced_nonNull_native;
                  v96 = *v33;
                  v37 = v96;
                  v74 = v33;
                  *v33 = 0x8000000000000000;
                  v80 = v35;
                  v38 = sub_24E76D644(v84, v35);
                  v40 = v37[2];
                  v41 = (v39 & 1) == 0;
                  v42 = __OFADD__(v40, v41);
                  v43 = v40 + v41;
                  v10 = v87;
                  if (v42)
                  {
                    goto LABEL_72;
                  }

                  if (v37[3] >= v43)
                  {
                    if ((v36 & 1) == 0)
                    {
                      v61 = v38;
                      v62 = v39;
                      sub_24E8B2FC4();
                      LOBYTE(v39) = v62;
                      v38 = v61;
                      v10 = v87;
                    }

                    v5 = v80;
                    if (v39)
                    {
                      goto LABEL_37;
                    }
                  }

                  else
                  {
                    v73 = v39;
                    sub_24E8A27BC(v43, v36);
                    v5 = v80;
                    v38 = sub_24E76D644(v84, v80);
                    if ((v73 & 1) != (v44 & 1))
                    {
                      goto LABEL_74;
                    }

                    if (v73)
                    {
LABEL_37:
                      v45 = v38;

                      v46 = v96;
                      v47 = v96[7] + *(v76 + 72) * v45;
                      v48 = v91;
                      (*(v76 + 40))(v47, v77, v91);
                      goto LABEL_46;
                    }
                  }

                  v46 = v96;
                  v96[(v38 >> 6) + 8] |= 1 << v38;
                  v58 = (v46[6] + 16 * v38);
                  *v58 = v84;
                  v58[1] = v5;
                  v25(v46[7] + *(v76 + 72) * v38, v77, v91);
                  v59 = v46[2];
                  v42 = __OFADD__(v59, 1);
                  v60 = v59 + 1;
                  if (v42)
                  {
                    goto LABEL_73;
                  }

                  v46[2] = v60;
                  v48 = v91;
LABEL_46:
                  *v74 = v46;

                  v79(v97, 0);

                  (*v83)(v93, v48);
LABEL_26:
                }

                else
                {

                  (v32)(v97, 0);

                  (*v83)(v93, v91);

                  v10 = v87;
                }
              }

              else
              {
                v49 = v28[1];
                v79 = *v28;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ED38);
                v80 = v26;
                v50 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2131B8) - 8);
                v51 = (*(*v50 + 80) + 32) & ~*(*v50 + 80);
                v52 = swift_allocObject();
                *(v52 + 16) = v81;
                v53 = (v52 + v51);
                v54 = v50[14];
                *v53 = v84;
                v53[1] = v5;
                v55 = v91;
                (*v82)(v53 + v54, v93, v91);

                v5 = sub_24E60E1EC(v52);
                swift_setDeallocating();
                sub_24E601704(v53, &qword_27F2131B8);
                swift_deallocClassInstance();
                v56 = v98;
                v57 = swift_isUniquelyReferenced_nonNull_native();
                v97[0] = v56;
                sub_24E820134(v5, v79, v49, v57);

                v98 = v97[0];
                (*v83)(v93, v55);
                v10 = v87;
                v13 = v88;
              }

              v3 = v94;
              v7 = v92;
              goto LABEL_11;
            }

            (*v83)(v93, v91);
          }

          v3 = v94;
          v7 = v92;
          v14 = v22;
          v13 = v88;
LABEL_11:
          ++v11;
          if (v4 == v14)
          {
            v10 = v98;
            goto LABEL_52;
          }
        }
      }

      v10 = MEMORY[0x277D84F98];
LABEL_52:

      v63 = v10[2];
      if (v63)
      {
        v64 = *(v86 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_numberOfActiveRequests);
        v42 = __OFADD__(v64, v63);
        v65 = v64 + v63;
        if (!v42)
        {
          *(v86 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_numberOfActiveRequests) = v65;
          sub_24ED4F3A0(v65 > 0);
          v4 = (v10 + 8);
          v66 = 1 << *(v10 + 32);
          v67 = -1;
          if (v66 < 64)
          {
            v67 = ~(-1 << v66);
          }

          v68 = v67 & v10[8];
          v7 = ((v66 + 63) >> 6);

          v11 = 0;
          while (v68)
          {
            v69 = v11;
LABEL_62:
            v70 = __clz(__rbit64(v68));
            v68 &= v68 - 1;
            v3 = *(v10[7] + ((v69 << 9) | (8 * v70)));

            v5 = sub_24E9545A4(v71);

            sub_24ED4FFE8(v5);
          }

          while (1)
          {
            v69 = v11 + 1;
            if (__OFADD__(v11, 1))
            {
              goto LABEL_69;
            }

            if (v69 >= v7)
            {

              goto LABEL_65;
            }

            v68 = *(v4 + 8 * v69);
            ++v11;
            if (v68)
            {
              v11 = v69;
              goto LABEL_62;
            }
          }
        }

        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        sub_24F92CF88();
        __break(1u);
      }

      else
      {
LABEL_65:
      }
    }
  }
}

uint64_t sub_24ED4FFE8(uint64_t a1)
{
  v3 = sub_24F92A088();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(v1 + 24))
  {
    *v6 = 0;
    (*(v4 + 104))(v6, *MEMORY[0x277D22298], v3);

    sub_24F92A0D8();

    (*(v4 + 8))(v6, v3);
  }

  type metadata accessor for JSIntentDispatcher();
  sub_24F928FD8();
  sub_24F92A758();
  sub_24F929C28();

  sub_24F928FE8();

  sub_24F929BF8();

  v7 = sub_24F929C18();

  sub_24EB46264(a1, v7, "GameStoreKit/ProductPresenter.swift", 35, 2);
  v8 = sub_24E74EC40();
  swift_retain_n();
  v9 = sub_24F92BEF8();
  v11[3] = v8;
  v11[4] = MEMORY[0x277D225C0];
  v11[0] = v9;
  sub_24F92A958();

  return __swift_destroy_boxed_opaque_existential_1(v11);
}

uint64_t sub_24ED50260(uint64_t *a1, uint64_t a2)
{
  v153 = sub_24F91F648();
  v152 = *(v153 - 8);
  MEMORY[0x28223BE20](v153);
  v157 = v128 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  v136 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v154 = v128 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v156 = v128 - v8;
  MEMORY[0x28223BE20](v9);
  v134 = v128 - v10;
  v143 = sub_24F91F968();
  v142 = *(v143 - 8);
  MEMORY[0x28223BE20](v143);
  v12 = v128 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24F92A078();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v128 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = *a1;
  swift_beginAccess();
  if (*(a2 + 24))
  {
    *v16 = 0;
    (*(v14 + 104))(v16, *MEMORY[0x277D22288], v13);

    sub_24F92A0C8();

    (*(v14 + 8))(v16, v13);
  }

  v145 = v12;
  sub_24F91F958();
  v17 = MEMORY[0x277D84F90];
  v150 = sub_24E60EC14(MEMORY[0x277D84F90]);
  v18 = *(v146 + 16);
  v19 = v18 + 64;
  v20 = 1 << *(v18 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v18 + 64);
  v140 = OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct;
  v135 = OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct;
  v23 = OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_isPurchased;
  v147 = v18;

  v148 = a2;
  v137 = v23;
  swift_beginAccess();
  v24 = 0;
  v141 = 0;
  v25 = (v20 + 63) >> 6;
  v139 = "BETA_APP_NO_BUNDLE_BANNER";
  v133 = "helfId for section";
  v132 = " product page at section";
  v131 = xmmword_24F979FB0;
  v149 = xmmword_24F93A400;
  v144 = v17;
  while (v22)
  {
LABEL_11:
    v27 = __clz(__rbit64(v22)) | (v24 << 6);
    v28 = v147;
    sub_24E65864C(*(v147 + 48) + 40 * v27, &v163);
    v29 = *(*(v28 + 56) + 8 * v27);
    v151 = v163;
    v30 = v165;
    v155 = v164;
    v31 = *(&v164 + 1);

    if (!v31)
    {
LABEL_53:

      v16 = v148;
      swift_beginAccess();
      v66 = v145;
      v67 = v154;
      if (*(v16 + 16))
      {
        swift_beginAccess();

        sub_24EA0A8D8(v68);
        swift_endAccess();

        if (*(v16 + 16))
        {
          swift_beginAccess();

          sub_24EA0A904(v69);
          swift_endAccess();
        }
      }

      v70 = &OBJC_IVAR____TtC12GameStoreKit18HttpTemplateAction_isStoreRequest;
      if ((sub_24F91F908() & 1) == 0)
      {
        v71 = v16 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_view;
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v72 = *(v71 + 8);
          ObjectType = swift_getObjectType();
          (*(*(v72 + 16) + 48))(v66, ObjectType);
          swift_unknownObjectRelease();
        }
      }

      *&v151 = *(v16 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_pageRefreshPolicy);
      if (v151)
      {
        v74 = v144[2];
        if (v74)
        {
          v75 = v144 + ((*(v136 + 80) + 32) & ~*(v136 + 80));
          *&v155 = *(v136 + 72);
          v76 = (v152 + 48);
          v77 = (v152 + 32);

          v78 = MEMORY[0x277D84F90];
          v79 = v153;
          do
          {
            v80 = v156;
            sub_24E60169C(v75, v156, &unk_27F22EC30);
            sub_24E6009C8(v80, v67, &unk_27F22EC30);
            if ((*v76)(v67, 1, v79) == 1)
            {
              sub_24E601704(v67, &unk_27F22EC30);
            }

            else
            {
              v81 = *v77;
              (*v77)(v157, v67, v79);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v78 = sub_24E616878(0, *(v78 + 2) + 1, 1, v78);
              }

              v83 = *(v78 + 2);
              v82 = *(v78 + 3);
              if (v83 >= v82 >> 1)
              {
                v78 = sub_24E616878(v82 > 1, v83 + 1, 1, v78);
              }

              *(v78 + 2) = v83 + 1;
              v79 = v153;
              v81(&v78[((*(v152 + 80) + 32) & ~*(v152 + 80)) + *(v152 + 72) * v83], v157, v153);
              v67 = v154;
            }

            v75 += v155;
            --v74;
          }

          while (v74);

          v70 = &OBJC_IVAR____TtC12GameStoreKit18HttpTemplateAction_isStoreRequest;
        }

        else
        {

          v78 = MEMORY[0x277D84F90];
        }

        v84 = sub_24ED6555C(v78);

        v85 = v148;
        if (v84)
        {

          sub_24ED4B850(v86);
        }

        v16 = v85;
      }

      else
      {
      }

      v87 = v150 + 64;
      v88 = 1 << *(v150 + 32);
      v89 = -1;
      if (v88 < 64)
      {
        v89 = ~(-1 << v88);
      }

      v90 = v89 & *(v150 + 64);
      v91 = (v16 + v70[209]);
      swift_beginAccess();
      v92 = 0;
      v157 = v91;
      while (v90)
      {
LABEL_84:
        v94 = __clz(__rbit64(v90));
        v90 &= v90 - 1;
        v95 = (v92 << 9) | (8 * v94);
        v16 = *(*(v150 + 48) + v95);
        v96 = *(*(v150 + 56) + v95);
        if (swift_unknownObjectWeakLoadStrong())
        {
          v97 = *(v91 + 1);
          v98 = swift_getObjectType();
          v99 = objc_allocWithZone(MEMORY[0x277CCABB0]);
          v100 = v96;
          v16 = [v99 initWithInteger_];
          v101 = v98;
          v91 = v157;
          (*(*(v97 + 16) + 40))(v96, v16, v101);
          swift_unknownObjectRelease();
        }
      }

      while (1)
      {
        v93 = v92 + 1;
        if (__OFADD__(v92, 1))
        {
          __break(1u);
          goto LABEL_104;
        }

        if (v93 >= ((v88 + 63) >> 6))
        {
          break;
        }

        v90 = *(v87 + 8 * v93);
        ++v92;
        if (v90)
        {
          v92 = v93;
          goto LABEL_84;
        }
      }

      v102 = *(v146 + 24);
      v16 = (v102 + 64);
      v103 = 1 << v102[32];
      v104 = -1;
      if (v103 < 64)
      {
        v104 = ~(-1 << v103);
      }

      v105 = v104 & *(v102 + 8);

      swift_beginAccess();
      v106 = 0;
      v107 = (v103 + 63) >> 6;
      v154 = v102;
      while (v105)
      {
LABEL_94:
        v109 = __clz(__rbit64(v105));
        v105 &= v105 - 1;
        v110 = v109 | (v106 << 6);
        v111 = (*(v102 + 6) + 16 * v110);
        v113 = *v111;
        v112 = v111[1];
        v114 = *(*(v102 + 7) + 8 * v110);
        swift_bridgeObjectRetain_n();
        v115 = v114;
        v116 = sub_24E9EEBE0(v113, v112);
        if (v117)
        {
          if (qword_27F2106C0 != -1)
          {
            swift_once();
          }

          v156 = sub_24F92AAE8();
          *&v155 = __swift_project_value_buffer(v156, qword_27F39C670);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
          sub_24F928468();
          *(swift_allocObject() + 16) = v149;
          sub_24F9283A8();
          *(&v164 + 1) = MEMORY[0x277D837D0];
          *&v163 = v113;
          *(&v163 + 1) = v112;
          sub_24F928458();
          sub_24E601704(&v163, &qword_27F2129B0);
          sub_24F92A5A8();

          v102 = v154;
        }

        else
        {
          v118 = v116;

          v119 = v157;
          if (swift_unknownObjectWeakLoadStrong())
          {
            v120 = *(v119 + 1);
            v121 = swift_getObjectType();
            v122 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
            (*(*(v120 + 16) + 40))(v114, v122, v121);

            swift_unknownObjectRelease();
          }

          else
          {
          }
        }
      }

      while (1)
      {
        v108 = v106 + 1;
        if (__OFADD__(v106, 1))
        {
          break;
        }

        if (v108 >= v107)
        {

          v123 = *(v148 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_numberOfActiveRequests);
          v124 = __OFSUB__(v123, 1);
          v125 = v123 - 1;
          if (v124)
          {
            goto LABEL_106;
          }

          *(v148 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_numberOfActiveRequests) = v125;
          sub_24ED4F3A0(v125 > 0);
          return (*(v142 + 8))(v145, v143);
        }

        v105 = *(v16 + 8 * v108);
        ++v106;
        if (v105)
        {
          v106 = v108;
          goto LABEL_94;
        }
      }

LABEL_104:
      __break(1u);
      goto LABEL_105;
    }

    v22 &= v22 - 1;
    v163 = v151;
    v164 = v155;
    v165 = v30;
    sub_24F92C7D8();
    if (swift_dynamicCast() & 1) == 0 || (v32 = sub_24E9EEBE0(v161, v162), (v33))
    {
      if (qword_27F2106C0 != -1)
      {
        swift_once();
      }

      v34 = sub_24F92AAE8();
      __swift_project_value_buffer(v34, qword_27F39C670);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
      v35 = *(sub_24F928468() - 8);
      v36 = (*(v35 + 80) + 32) & ~*(v35 + 80);
      v37 = swift_allocObject();
      *(v37 + 16) = v149;
      v16 = v37 + v36;
      sub_24F9283A8();
      v160 = MEMORY[0x277D84030];
      v158 = swift_allocObject();
      sub_24E65864C(&v163, v158 + 16);
      sub_24F928458();
      sub_24E601704(&v158, &qword_27F2129B0);
      sub_24F92A5A8();

      goto LABEL_39;
    }

    v16 = v32;
    v38 = sub_24ED57704(v32);
    if (!v38)
    {
      goto LABEL_109;
    }

    v39 = v29[OBJC_IVAR____TtC12GameStoreKit5Shelf_mergeWhenFetched];
    *&v155 = v38;
    if (v39)
    {
      v40 = v141;
      v41 = Shelf.mergingWith(_:)(v29);
      v141 = v40;
      if (!v40)
      {
        v42 = v41;
        goto LABEL_22;
      }

      v49 = v40;
      v50 = v150;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v158 = v50;
      sub_24E8209CC(v40, v16, isUniquelyReferenced_nonNull_native);
      v150 = v158;
      if (qword_27F2106C0 != -1)
      {
        swift_once();
      }

      *&v151 = sub_24F92AAE8();
      v130 = __swift_project_value_buffer(v151, qword_27F39C670);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
      v128[1] = 8 * *(*(sub_24F928468() - 8) + 72);
      v129 = swift_allocObject();
      *(v129 + 16) = v131;
      sub_24F9283A8();
      v160 = MEMORY[0x277D83B88];
      v158 = v16;
      sub_24F928438();
      sub_24E601704(&v158, &qword_27F2129B0);
      sub_24F9283A8();
      LOBYTE(v158) = *(v155 + 16);
      v52 = Shelf.ContentType.rawValue.getter();
      v160 = MEMORY[0x277D837D0];
      v158 = v52;
      v159 = v53;
      sub_24F928438();
      sub_24E601704(&v158, &qword_27F2129B0);
      sub_24F9283A8();
      LOBYTE(v158) = v29[16];
      v54 = Shelf.ContentType.rawValue.getter();
      v160 = MEMORY[0x277D837D0];
      v158 = v54;
      v159 = v55;
      sub_24F928438();
      sub_24E601704(&v158, &qword_27F2129B0);
      sub_24F9283A8();
      v16 = v141;
      swift_getErrorValue();
      v56 = sub_24F92CFE8();
      v160 = MEMORY[0x277D837D0];
      v158 = v56;
      v159 = v57;
      sub_24F928458();
      sub_24E601704(&v158, &qword_27F2129B0);
      sub_24F92A5A8();

      sub_24E6585F8(&v163);
      v141 = 0;
    }

    else
    {

      v42 = v29;
LABEL_22:
      if (*(v148 + v140))
      {
        v43 = *(v148 + v140);
LABEL_26:
        v44 = &OBJC_IVAR____TtC12GameStoreKit11ProductPage_purchasedOrdering;
        if (!*(v148 + v137))
        {
          v44 = &OBJC_IVAR____TtC12GameStoreKit11ProductPage_notPurchasedOrdering;
        }

        v45 = *(v43 + *v44);

        if (v45)
        {
        }

        else
        {
          v45 = MEMORY[0x277D84F90];
        }

        goto LABEL_32;
      }

      v43 = *(v148 + v135);
      if (v43)
      {

        goto LABEL_26;
      }

      v45 = MEMORY[0x277D84F90];
LABEL_32:
      v138 = v16;
      *&v151 = v42;
      if ((v45 & 0xC000000000000001) != 0)
      {
        v58 = MEMORY[0x253052270](v16, v45);

        v16 = *(v58 + 24);
        v47 = *(v58 + 32);

        swift_unknownObjectRelease();
        if (v47)
        {
          goto LABEL_45;
        }

LABEL_36:
        if (qword_27F2106C0 != -1)
        {
          swift_once();
        }

        v48 = sub_24F92AAE8();
        __swift_project_value_buffer(v48, qword_27F39C670);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
        sub_24F928468();
        v16 = swift_allocObject();
        *(v16 + 16) = v149;
        sub_24F9283A8();
        v160 = MEMORY[0x277D83B88];
        v158 = v138;
        sub_24F928438();
        sub_24E601704(&v158, &qword_27F2129B0);
        sub_24F92A5A8();

LABEL_39:

        sub_24E6585F8(&v163);
      }

      else
      {
        if ((v16 & 0x8000000000000000) != 0)
        {
          goto LABEL_107;
        }

        if (v16 >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_108;
        }

        v46 = *(v45 + 8 * v16 + 32);

        v16 = *(v46 + 24);
        v47 = *(v46 + 32);

        if (!v47)
        {
          goto LABEL_36;
        }

LABEL_45:
        v59 = *(v148 + v140);
        v60 = v151;
        if (v59)
        {
          v61 = OBJC_IVAR____TtC12GameStoreKit11ProductPage_shelfMapping;
          swift_beginAccess();

          v62 = swift_isUniquelyReferenced_nonNull_native();
          v161 = *(v59 + v61);
          *(v59 + v61) = 0x8000000000000000;
          sub_24E81E6DC(v60, v16, v47, v62);

          *(v59 + v61) = v161;
          swift_endAccess();
        }

        else
        {
        }

        sub_24F91F8F8();
        sub_24E60169C(&v29[OBJC_IVAR____TtC12GameStoreKit5Shelf_nextPreferredContentRefreshDate], v134, &unk_27F22EC30);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v144 = sub_24E61923C(0, v144[2] + 1, 1, v144);
        }

        v64 = v144[2];
        v63 = v144[3];
        if (v64 >= v63 >> 1)
        {
          v144 = sub_24E61923C(v63 > 1, v64 + 1, 1, v144);
        }

        sub_24E6585F8(&v163);
        v65 = v144;
        v144[2] = v64 + 1;
        sub_24E6009C8(v134, v65 + ((*(v136 + 80) + 32) & ~*(v136 + 80)) + *(v136 + 72) * v64, &unk_27F22EC30);
      }
    }
  }

  while (1)
  {
    v26 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v26 >= v25)
    {
      goto LABEL_53;
    }

    v22 = *(v19 + 8 * v26);
    ++v24;
    if (v22)
    {
      v24 = v26;
      goto LABEL_11;
    }
  }

LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  v158 = 0;
  v159 = 0xE000000000000000;
  sub_24F92C888();
  MEMORY[0x253050C20](0xD00000000000001ALL, 0x800000024FA5BED0);
  v161 = v148;
  type metadata accessor for ProductPresenter();
  sub_24F92CA38();
  MEMORY[0x253050C20](0xD000000000000020, 0x800000024FA5BEF0);
  v161 = v16;
  v127 = sub_24F92CD88();
  MEMORY[0x253050C20](v127);

  result = sub_24F92CA88();
  __break(1u);
  return result;
}

uint64_t sub_24ED51B00(void *a1, uint64_t a2)
{
  v4 = sub_24F92A078();
  v5 = *(v4 - 1);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v8 = *(a2 + 24);
  if (v8)
  {
    *v7 = a1;
    v7[8] = 0;
    (*(v5 + 104))(v7, *MEMORY[0x277D22278], v4);

    v9 = a1;
    sub_24F92A0C8();

    v10 = *(v5 + 8);
    v5 += 8;
    v10(v7, v4);
  }

  v11 = *(a2 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_numberOfActiveRequests);
  v12 = __OFSUB__(v11, 1);
  v13 = v11 - 1;
  if (v12)
  {
    __break(1u);
LABEL_13:
    v4 = sub_24E617130(0, v4[2] + 1, 1, v4);
    *(v8 + v5) = v4;
    goto LABEL_6;
  }

  *(a2 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_numberOfActiveRequests) = v13;
  sub_24ED4F3A0(v13 > 0);
  swift_beginAccess();
  v8 = *(a2 + 16);
  if (!v8)
  {
    goto LABEL_9;
  }

  v5 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_errors;
  swift_beginAccess();
  v4 = *(v8 + v5);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v8 + v5) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_6:
  v16 = v4[2];
  v15 = v4[3];
  if (v16 >= v15 >> 1)
  {
    v4 = sub_24E617130((v15 > 1), v16 + 1, 1, v4);
  }

  v4[2] = v16 + 1;
  v4[v16 + 4] = a1;
  *(v8 + v5) = v4;
  swift_endAccess();
  v17 = a1;

LABEL_9:
  v18 = a2 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_view;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v20 = *(v18 + 8);
    ObjectType = swift_getObjectType();
    (*(*(*(v20 + 16) + 24) + 24))(a1, ObjectType);
    return swift_unknownObjectRelease();
  }

  return result;
}

BOOL sub_24ED51DA0()
{
  v0 = sub_24ED570C8();
  if (v0 >> 62)
  {
    v1 = sub_24F92C738();
  }

  else
  {
    v1 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (sub_24F91FA18() >= v1)
  {
    return 0;
  }

  v2 = sub_24F91FA18();
  v3 = sub_24ED57704(v2);
  if (v3)
  {
    v4 = *(v3 + 24);

    v5 = *(v4 + 16);
  }

  else
  {
    v5 = 0;
  }

  return sub_24F91FA08() < v5;
}

BOOL sub_24ED51E70(unint64_t a1)
{
  v1 = sub_24ED57704(a1);
  if (v1)
  {
  }

  return v1 != 0;
}

uint64_t sub_24ED51EA8(unint64_t a1)
{
  result = sub_24ED57704(a1);
  if (!result)
  {
    sub_24F92C888();
    MEMORY[0x253050C20](0xD00000000000001ALL, 0x800000024FA5BED0);
    type metadata accessor for ProductPresenter();
    sub_24F92CA38();
    MEMORY[0x253050C20](0xD000000000000020, 0x800000024FA5BEF0);
    v2 = sub_24F92CD88();
    MEMORY[0x253050C20](v2);

    result = sub_24F92CA88();
    __break(1u);
  }

  return result;
}