uint64_t sub_1DB35704C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v25 = a2;
  v24 = sub_1DB50A440();
  v5 = *(v24 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DB50A400();
  v10 = *(v9 - 8);
  v11 = v10;
  v12 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DB30C4B8(a1, &aBlock, &qword_1ECC435E8, &unk_1DB511EE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC435F8, &qword_1DB511EF8);
  v15 = swift_allocObject();
  v16 = v27;
  *(v15 + 16) = aBlock;
  *(v15 + 32) = v16;
  *(v15 + 48) = v28;
  *(v15 + 64) = v29;
  v23 = *(v3 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC435F0, &unk_1DB514220);
  v17 = *(v10 + 72);
  v18 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1DB50EE90;
  sub_1DB50A3F0();
  *&aBlock = v19;
  sub_1DB357C48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC45390, &qword_1DB511EF0);
  sub_1DB357CA0();
  sub_1DB50B240();
  v20 = swift_allocObject();
  *(v20 + 16) = v3;
  *(v20 + 24) = v15;
  *&v28 = sub_1DB357D64;
  *(&v28 + 1) = v20;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v27 = sub_1DB3330B0;
  *(&v27 + 1) = &block_descriptor_21;
  v21 = _Block_copy(&aBlock);

  _s7JetCore22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
  MEMORY[0x1E12864B0](0, v8, v14, v21);
  _Block_release(v21);
  (*(v5 + 8))(v8, v24);
  (*(v11 + 8))(v14, v9);

  *v25 = v15;
  return result;
}

uint64_t sub_1DB357384(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 24) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_1DB302FF0(0, v4[2] + 1, 1, v4);
    *(a1 + 24) = v4;
  }

  v7 = v4[2];
  v6 = v4[3];
  if (v7 >= v6 >> 1)
  {
    v4 = sub_1DB302FF0((v6 > 1), v7 + 1, 1, v4);
  }

  v4[2] = v7 + 1;
  v4[v7 + 4] = a2;
  *(a1 + 24) = v4;
  swift_endAccess();
}

uint64_t sub_1DB35745C(uint64_t a1)
{
  v2 = v1;
  v21 = sub_1DB50A440();
  v4 = *(v21 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DB50A400();
  v9 = *(v8 - 8);
  v10 = v9;
  v11 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC435F0, &unk_1DB514220);
  v14 = *(v9 + 72);
  v15 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1DB50EE90;
  sub_1DB50A3F0();
  aBlock[0] = v16;
  sub_1DB357C48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC45390, &qword_1DB511EF0);
  sub_1DB357CA0();
  sub_1DB50B240();
  v17 = swift_allocObject();
  *(v17 + 16) = v2;
  *(v17 + 24) = a1;
  aBlock[4] = sub_1DB357D04;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DB3330B0;
  aBlock[3] = &block_descriptor_2;
  v18 = _Block_copy(aBlock);

  _s7JetCore22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
  MEMORY[0x1E12864B0](0, v7, v13, v18);
  _Block_release(v18);
  (*(v4 + 8))(v7, v21);
  (*(v10 + 8))(v13, v8);
}

uint64_t sub_1DB35772C(uint64_t a1, uint64_t a2)
{
  result = swift_beginAccess();
  v5 = *(a1 + 24);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = v5 + 32;
    while (*(v8 + 8 * v7) != a2)
    {
      if (v6 == ++v7)
      {
        return result;
      }
    }

    swift_beginAccess();
    sub_1DB473984(v7, &v9);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_1DB3577D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43600, &qword_1DB511F00);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v11 - v5;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v11[0] = *a1;
  v11[1] = v7;
  v11[2] = v8;
  v11[3] = v9;
  v12 = *(a1 + 32);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC435E0, &qword_1DB511ED8);
  sub_1DB50ABE0();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1DB3578F4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = result;
  v9 = *a5;
  v10 = a5[1];
  if (qword_1ECC42040 != -1)
  {
    result = swift_once();
  }

  v11 = qword_1ECC43598;
  if (!qword_1ECC43598 || qword_1ECC43598 != 1 && (*&v17 = v8, *(&v17 + 1) = a2, MEMORY[0x1EEE9AC00](result), v16[2] = &v17, , v12 = sub_1DB356FA0(sub_1DB357AF0, v16, v11), result = sub_1DB357B48(v11), (v12 & 1) != 0))
  {
    if (qword_1ECC42050 != -1)
    {
      swift_once();
    }

    sub_1DB30C4B8(&xmmword_1ECC435A8, &v17, &qword_1ECC435D8, &qword_1DB511ED0);
    if (v19)
    {
      sub_1DB2FEA0C(&v17, v22);
      v13 = v23;
      v14 = v24;
      __swift_project_boxed_opaque_existential_1(v22, v23);
      *&v17 = v8;
      *(&v17 + 1) = a2;
      v18 = a3;
      v19 = a4;
      v20 = v9;
      v21 = v10;
      v15 = *(v14 + 16);

      v15(&v17, v13, v14);

      return __swift_destroy_boxed_opaque_existential_0(v22);
    }

    else
    {
      return sub_1DB30623C(&v17, &qword_1ECC435D8, &qword_1DB511ED0);
    }
  }

  return result;
}

uint64_t sub_1DB357AF0(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1DB50BA30() & 1;
  }
}

uint64_t sub_1DB357B48(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1DB357B58(uint64_t a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC435E0, &qword_1DB511ED8) - 8) + 80);

  return sub_1DB3577D8(a1);
}

unint64_t sub_1DB357BD4()
{
  result = qword_1EE30E320;
  if (!qword_1EE30E320)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE30E320);
  }

  return result;
}

uint64_t sub_1DB357C20()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  return sub_1DB35745C(v1);
}

unint64_t sub_1DB357C48()
{
  result = qword_1EE30E380[0];
  if (!qword_1EE30E380[0])
  {
    sub_1DB50A400();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE30E380);
  }

  return result;
}

unint64_t sub_1DB357CA0()
{
  result = qword_1EE30E350;
  if (!qword_1EE30E350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECC45390, &qword_1DB511EF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30E350);
  }

  return result;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_11Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t LazyPromise.__allocating_init(on:perform:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  LazyPromise.init(on:perform:)(a1, a2, a3);
  return v6;
}

uint64_t LazyPromise.init(on:perform:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v3 + 16) = v7;
  sub_1DB2FEA0C(a1, v3 + 24);
  *(v3 + 64) = a2;
  *(v3 + 72) = a3;
  *(v3 + 80) = 0;
  return v3;
}

uint64_t LazyPromise.hasStarted.getter()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 4);
  sub_1DB35A5E8(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

uint64_t sub_1DB357EA4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = a1 + 3;
  v4 = *a1;
  swift_beginAccess();
  v5 = *(v4 + 80);
  v6 = type metadata accessor for LazyPromise.State();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v10, v3, v6);
  if (v11)
  {
    result = (*(v7 + 8))(v10, v6);
    v9 = 1;
  }

  else
  {

    result = __swift_destroy_boxed_opaque_existential_0(v10);
    v9 = 0;
  }

  *a2 = v9;
  return result;
}

char *LazyPromise.start()()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[2];
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  v4 = *(v2 + 80);
  v5 = type metadata accessor for LazyPromise.State();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v21, v0 + 3, v5);
  if (v24)
  {
    v7 = *&v21[0];
    os_unfair_lock_unlock(v3 + 4);
  }

  else
  {
    v9 = v22;
    v8 = v23;
    sub_1DB2FEA0C(v21, v18);
    type metadata accessor for Promise();
    v7 = Promise.__allocating_init()();
    v16 = v7;
    v17 = 1;
    swift_beginAccess();
    v10 = *(v6 + 40);

    v10(v1 + 3, &v16, v5);
    swift_endAccess();
    os_unfair_lock_unlock(v3 + 4);
    v11 = v19;
    v12 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    v13 = swift_allocObject();
    v13[2] = v9;
    v13[3] = v8;
    v13[4] = v7;
    v14 = *(v12 + 8);

    v14(sub_1DB35A644, v13, v11, v12);

    __swift_destroy_boxed_opaque_existential_0(v18);
  }

  return v7;
}

uint64_t sub_1DB3581C8(void (*a1)(uint64_t (*)(), uint64_t, uint64_t (*)(), uint64_t), uint64_t a2, uint64_t a3)
{
  swift_retain_n();
  a1(j___s7JetCore7PromiseC7resolveyyxF, a3, j___s7JetCore7PromiseC6rejectyys5Error_pF, a3);
}

uint64_t LazyPromise.then(perform:orCatchError:on:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  LazyPromise.start()();
  Promise.then(perform:orCatchError:on:)(a1, a2, a3, a4, a5);
}

uint64_t LazyPromise.then()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DB3582DC, 0, 0);
}

uint64_t sub_1DB3582DC()
{
  v1 = v0[3];
  v0[4] = LazyPromise.start()();
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_1DB358384;
  v3 = v0[2];

  return Promise.then()(v3);
}

uint64_t sub_1DB358384()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_1DB3584FC;
  }

  else
  {
    v3 = sub_1DB358498;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB358498()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1DB3584FC()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t LazyPromise.map<A>(on:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  type metadata accessor for LazyPromise();
  sub_1DB30BE90(a1, v14);
  sub_1DB30BE90(a1, v13);
  v10 = swift_allocObject();
  v10[2] = a4;
  v10[3] = v5;
  v10[4] = a2;
  v10[5] = a3;
  sub_1DB2FEA0C(v13, (v10 + 6));
  v11 = swift_allocObject();
  LazyPromise.init(on:perform:)(v14, sub_1DB35A668, v10);

  return v11;
}

uint64_t sub_1DB358644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = *a5;
  v16 = swift_allocObject();
  v16[2] = *(v15 + 80);
  v16[3] = a9;
  v16[4] = a1;
  v16[5] = a2;
  v16[6] = a6;
  v16[7] = a7;
  v16[8] = a3;
  v16[9] = a4;
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  swift_retain_n();

  LazyPromise.start()();
  Promise.then(perform:orCatchError:on:)(sub_1DB35AC18, v16, sub_1DB35AC4C, v17, a8);
}

uint64_t sub_1DB358788(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = *(a9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15(v12);
  a2(v14);
  return (*(v10 + 8))(v14, a9);
}

uint64_t LazyPromise.flatMap<A>(on:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  swift_getAssociatedTypeWitness();
  type metadata accessor for LazyPromise();
  sub_1DB30BE90(a1, v16);
  sub_1DB30BE90(a1, v15);
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = v6;
  v12[5] = a2;
  v12[6] = a3;
  sub_1DB2FEA0C(v15, (v12 + 7));
  v13 = swift_allocObject();
  LazyPromise.init(on:perform:)(v16, sub_1DB35A698, v12);

  return v13;
}

uint64_t sub_1DB3589BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v15 = *a5;
  sub_1DB30BE90(a8, v21);
  v16 = swift_allocObject();
  v16[2] = *(v15 + 80);
  v16[3] = a9;
  v16[4] = a10;
  v16[5] = a6;
  v16[6] = a7;
  v16[7] = a1;
  v16[8] = a2;
  v16[9] = a3;
  v16[10] = a4;
  sub_1DB2FEA0C(v21, (v16 + 11));
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  swift_retain_n();

  LazyPromise.start()();
  Promise.then(perform:orCatchError:on:)(sub_1DB35AB80, v16, sub_1DB35AC7C, v17, a8);
}

uint64_t LazyPromise.join<A>(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a2;
  v26 = a3;
  v27 = a1;
  v24 = *v3;
  v4 = sub_1DB50AF80();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = sub_1DB50A440();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = sub_1DB50AFA0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1DB357BD4();
  (*(v9 + 104))(v12, *MEMORY[0x1E69E8098], v8);
  _s7JetCore22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
  *&v28 = MEMORY[0x1E69E7CC0];
  sub_1DB35A9C4(&qword_1EE30C810, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC44F80, &qword_1DB512400);
  sub_1DB35AA0C(&qword_1EE30C838, &unk_1ECC44F80, &qword_1DB512400);
  sub_1DB50B240();
  v14 = sub_1DB50AFD0();
  v15 = v23;
  v16 = *(v24 + 80);
  v18 = v25;
  v17 = v26;
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  type metadata accessor for LazyPromise();
  v29 = v13;
  v30 = &protocol witness table for OS_dispatch_queue;
  *&v28 = v14;
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = v17;
  v19[4] = v15;
  v19[5] = v14;
  v19[6] = v27;
  v20 = swift_allocObject();
  LazyPromise.init(on:perform:)(&v28, sub_1DB35A6CC, v19);
  v21 = v14;

  swift_unknownObjectRetain();
  return v20;
}

uint64_t sub_1DB358E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, NSObject *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v64 = a7;
  v62 = a6;
  v66 = a3;
  v67 = a4;
  v58 = a1;
  v11 = *a5;
  v57 = a5;
  v69 = sub_1DB50A400();
  v72 = *(v69 - 8);
  v12 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v68 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1DB50A440();
  v70 = *(v14 - 8);
  v71 = v14;
  v15 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v65 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v59 = type metadata accessor for Result();
  v17 = sub_1DB50B120();
  v18 = *(v17 - 8);
  v60 = v17;
  v61 = v18;
  isa = v18[8].isa;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v55 - v20;
  v22 = *(v11 + 80);
  v23 = type metadata accessor for Result();
  v24 = sub_1DB50B120();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v55 - v27;
  v29 = swift_allocObject();
  v63 = v29;
  v29[2] = v22;
  v29[3] = a8;
  v30 = v58;
  v29[4] = a9;
  v29[5] = v30;
  v29[6] = a2;

  v31 = dispatch_group_create();
  (*(*(v23 - 8) + 56))(v28, 1, 1, v23);
  v32 = sub_1DB388A48();
  (*(v25 + 8))(v28, v24);
  dispatch_group_enter(v31);
  v33 = swift_allocObject();
  v33[2] = v22;
  v33[3] = a8;
  v33[4] = a9;
  v33[5] = v32;
  v34 = v32;
  v33[6] = v31;
  v35 = swift_allocObject();
  v35[2] = v22;
  v35[3] = a8;
  v35[4] = a9;
  v35[5] = v34;
  v58 = v34;
  v35[6] = v31;
  v56 = sub_1DB357BD4();
  v75 = v56;
  v76 = &protocol witness table for OS_dispatch_queue;
  v36 = v62;
  aBlock[0] = v62;
  swift_retain_n();
  v37 = v31;
  v38 = v36;
  LazyPromise.start()();
  Promise.then(perform:orCatchError:on:)(sub_1DB35A8A4, v33, sub_1DB35A8BC, v35, aBlock);

  __swift_destroy_boxed_opaque_existential_0(aBlock);
  (*(*(v59 - 8) + 56))(v21, 1, 1);
  v39 = v60;
  v40 = sub_1DB388A48();
  (v61[1].isa)(v21, v39);
  dispatch_group_enter(v37);
  v41 = swift_allocObject();
  v55 = v22;
  v41[2] = v22;
  v41[3] = a8;
  v41[4] = a9;
  v41[5] = v40;
  v41[6] = v37;
  v42 = swift_allocObject();
  v42[2] = v22;
  v42[3] = a8;
  v42[4] = a9;
  v42[5] = v40;
  v42[6] = v37;
  v75 = v56;
  v76 = &protocol witness table for OS_dispatch_queue;
  aBlock[0] = v38;
  v43 = *(a9 + 16);
  v44 = v37;
  swift_retain_n();
  v62 = v44;
  v61 = v38;
  v43(sub_1DB35A8D4, v41, sub_1DB35A944, v42, aBlock, a8, a9);

  __swift_destroy_boxed_opaque_existential_0(aBlock);
  v45 = swift_allocObject();
  v45[2] = v55;
  v45[3] = a8;
  v46 = v58;
  v45[4] = a9;
  v45[5] = v46;
  v45[6] = v40;
  v45[7] = sub_1DB35A894;
  v47 = v66;
  v48 = v67;
  v45[8] = v63;
  v45[9] = v47;
  v45[10] = v48;
  v76 = sub_1DB35A974;
  v77 = v45;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DB3330B0;
  v75 = &block_descriptor_3;
  v49 = _Block_copy(aBlock);

  v50 = v65;
  _s7JetCore22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
  v73 = MEMORY[0x1E69E7CC0];
  sub_1DB35A9C4(qword_1EE30E380, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC45390, &qword_1DB511EF0);
  sub_1DB35AA0C(&qword_1EE30E350, &unk_1ECC45390, &qword_1DB511EF0);
  v52 = v68;
  v51 = v69;
  sub_1DB50B240();
  v53 = v62;
  sub_1DB50AF60();
  _Block_release(v49);

  (*(v72 + 8))(v52, v51);
  (*(v70 + 8))(v50, v71);
}

uint64_t sub_1DB3595F4(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = *(TupleTypeMetadata2 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v15 = &v17 - v14;
  (*(*(a5 - 8) + 16))(&v17 - v14, a1, a5, v13);
  (*(*(AssociatedTypeWitness - 8) + 16))(&v15[*(TupleTypeMetadata2 + 48)], a2, AssociatedTypeWitness);
  a3(v15);
  return (*(v11 + 8))(v15, TupleTypeMetadata2);
}

void sub_1DB359780(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8[2] = a4;
  v8[3] = a5;
  v8[4] = a6;
  v8[5] = a1;
  type metadata accessor for Result();
  sub_1DB50B120();
  sub_1DB47D0C4(sub_1DB35AB60, v8, a2);
  dispatch_group_leave(a3);
}

uint64_t sub_1DB359810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Result();
  v7 = sub_1DB50B120();
  (*(*(v7 - 8) + 8))(a1, v7);
  (*(*(a3 - 8) + 16))(a1, a2, a3);
  swift_storeEnumTagMultiPayload();
  return (*(*(v6 - 8) + 56))(a1, 0, 1, v6);
}

void sub_1DB359918(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8[2] = a4;
  v8[3] = a5;
  v8[4] = a6;
  v8[5] = a1;
  type metadata accessor for Result();
  sub_1DB50B120();
  sub_1DB35B4EC(sub_1DB35AB40, v8, a2);
  dispatch_group_leave(a3);
}

id sub_1DB3599A8(void *a1, void *a2)
{
  v4 = type metadata accessor for Result();
  v5 = sub_1DB50B120();
  (*(*(v5 - 8) + 8))(a1, v5);
  *a1 = a2;
  swift_storeEnumTagMultiPayload();
  (*(*(v4 - 8) + 56))(a1, 0, 1, v4);
  return a2;
}

void sub_1DB359A7C(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8[2] = a4;
  v8[3] = a5;
  v8[4] = a6;
  v8[5] = a1;
  swift_getAssociatedTypeWitness();
  type metadata accessor for Result();
  sub_1DB50B120();
  sub_1DB47D0C4(sub_1DB35AB20, v8, a2);
  dispatch_group_leave(a3);
}

uint64_t sub_1DB359B30(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Result();
  v6 = sub_1DB50B120();
  (*(*(v6 - 8) + 8))(a1, v6);
  (*(*(AssociatedTypeWitness - 8) + 16))(a1, a2, AssociatedTypeWitness);
  swift_storeEnumTagMultiPayload();
  return (*(*(v5 - 8) + 56))(a1, 0, 1, v5);
}

void sub_1DB359C5C(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8[2] = a4;
  v8[3] = a5;
  v8[4] = a6;
  v8[5] = a1;
  swift_getAssociatedTypeWitness();
  type metadata accessor for Result();
  sub_1DB50B120();
  sub_1DB35B4EC(sub_1DB35AB00, v8, a2);
  dispatch_group_leave(a3);
}

id sub_1DB359D10(void *a1, void *a2)
{
  swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for Result();
  v5 = sub_1DB50B120();
  (*(*(v5 - 8) + 8))(a1, v5);
  *a1 = a2;
  swift_storeEnumTagMultiPayload();
  (*(*(v4 - 8) + 56))(a1, 0, 1, v4);
  return a2;
}

void sub_1DB359E08(uint64_t a1, uint64_t a2, void (*a3)(char *, char *), uint64_t a4, void (*a5)(void *), uint64_t a6, uint64_t a7, char *a8, char *a9)
{
  v58 = a6;
  v59 = a5;
  v55 = a4;
  v56 = a3;
  v63 = a2;
  v64 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v53 = *(AssociatedTypeWitness - 8);
  v12 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v52 = &v51 - v13;
  v57 = *(a7 - 8);
  v14 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v51 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Result();
  v54 = AssociatedTypeWitness;
  v18 = type metadata accessor for Result();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v19 = *(*(TupleTypeMetadata2 - 8) + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v21 = (&v51 - v20);
  v22 = sub_1DB50B120();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v51 - v24;
  v26 = sub_1DB50B120();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v51 - v28;
  v66 = a7;
  v67 = a8;
  v61 = a9;
  v62 = a8;
  v68 = a9;
  sub_1DB47D0C4(sub_1DB35AA60, v65, v64);
  v30 = *(v17 - 8);
  v31 = (*(v30 + 48))(v29, 1, v17);
  if (v31 == 1)
  {
    __break(1u);
    goto LABEL_14;
  }

  MEMORY[0x1EEE9AC00](v31);
  v64 = a7;
  v32 = v61;
  v33 = v62;
  *(&v51 - 4) = a7;
  *(&v51 - 3) = v33;
  *(&v51 - 2) = v32;
  sub_1DB47D0C4(sub_1DB35AAE0, (&v51 - 6), v63);
  v34 = *(v18 - 8);
  if ((*(v34 + 48))(v25, 1, v18) == 1)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v35 = *(TupleTypeMetadata2 + 48);
  (*(v30 + 32))(v21, v29, v17);
  (*(v34 + 32))(v21 + v35, v25, v18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v36 = *v21;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v37 = *(v21 + v35);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC470F0, &unk_1DB50F4B0);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_1DB50F8D0;
      *(v38 + 32) = v36;
      *(v38 + 40) = v37;
      sub_1DB32E3B0();
      v39 = swift_allocError();
      v41 = v40;
      v42 = v36;
      v43 = v37;
      *v41 = v38;
      v59(v39);

LABEL_10:
      return;
    }

    (*(v34 + 8))(v21 + v35, v18);
LABEL_9:
    v59(v36);
    goto LABEL_10;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v36 = *(v21 + v35);
    (*(v57 + 8))(v21, v64);
    goto LABEL_9;
  }

  v44 = v57;
  v45 = v51;
  v46 = v64;
  (*(v57 + 32))(v51, v21, v64);
  v48 = v52;
  v47 = v53;
  v49 = v21 + v35;
  v50 = v54;
  (*(v53 + 32))(v52, v49, v54);
  v56(v45, v48);
  (*(v47 + 8))(v48, v50);
  (*(v44 + 8))(v45, v46);
}

uint64_t sub_1DB35A3C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for Result();
  v4 = sub_1DB50B120();
  return (*(*(v4 - 8) + 16))(a2, a1, v4);
}

uint64_t *LazyPromise.deinit()
{
  v1 = *v0;
  v2 = v0[2];

  v3 = *(v1 + 80);
  v4 = type metadata accessor for LazyPromise.State();
  (*(*(v4 - 8) + 8))(v0 + 3, v4);
  return v0;
}

uint64_t LazyPromise.__deallocating_deinit()
{
  LazyPromise.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 81, 7);
}

uint64_t sub_1DB35A50C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DB306AF4;

  return LazyPromise.then()(a1);
}

void *sub_1DB35A5A4@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X1>, _BYTE *a2@<X8>)
{
  result = a1(&v5);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

void *sub_1DB35A5E8@<X0>(_BYTE *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(&v7);
  if (!v2)
  {
    *a1 = v7;
  }

  return result;
}

uint64_t sub_1DB35A778()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1DB35A7DC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 57))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 56);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DB35A818(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 41) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t sub_1DB35A868(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 56) = a2;
  return result;
}

uint64_t sub_1DB35A894(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  return sub_1DB3595F4(a1, a2, *(v2 + 40), *(v2 + 48), *(v2 + 16));
}

uint64_t objectdestroy_19Tm()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1DB35A9C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DB35AA0C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DB35AA60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  type metadata accessor for Result();
  v6 = sub_1DB50B120();
  return (*(*(v6 - 8) + 16))(a2, a1, v6);
}

uint64_t sub_1DB35AAE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  return sub_1DB35A3C0(a1, a2);
}

id sub_1DB35AB00(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  return sub_1DB359D10(a1, *(v1 + 40));
}

uint64_t sub_1DB35AB20(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_1DB359B30(a1, v1[5]);
}

id sub_1DB35AB40(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  return sub_1DB3599A8(a1, *(v1 + 40));
}

uint64_t sub_1DB35AB60(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  return sub_1DB359810(a1, v1[5], v1[2]);
}

uint64_t sub_1DB35AB80()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v1[7];
  v7 = v1[8];
  v8 = v1[9];
  v9 = v1[10];
  v4();
  (*(v3 + 16))(v6, v7, v8, v9, v1 + 11, v2, v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_1DB35AC4C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t CompoundTreatmentFilter.addFilter(_:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return sub_1DB35AEA8(v4, v1, v2, v3);
}

JetCore::LintedMetricsEvent __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CompoundTreatmentFilter.treat(_:on:)(JetCore::LintedMetricsEvent _, Swift::String_optional on)
{
  v5 = v4;
  countAndFlagsBits = on.value._countAndFlagsBits;
  rawValue = _.issues._rawValue;
  v17 = v2;
  v7 = *_.fields._rawValue;
  v6 = *(_.fields._rawValue + 1);
  v8 = *v3;
  v9 = *(*v3 + 16);

  if (v9)
  {
    v12 = 0;
    v13 = v8 + 32;
    while (v12 < *(v8 + 16))
    {
      sub_1DB30BE90(v13, v21);
      v15 = v22;
      v14 = v23;
      __swift_project_boxed_opaque_existential_1(v21, v22);
      v19[0] = v7;
      v19[1] = v6;
      (*(v14 + 8))(v20, v19, rawValue, countAndFlagsBits, v15, v14);
      if (v5)
      {
        __swift_destroy_boxed_opaque_existential_0(v21);

        goto LABEL_9;
      }

      ++v12;
      __swift_destroy_boxed_opaque_existential_0(v21);

      v7 = v20[0];
      v6 = v20[1];
      v13 += 40;
      if (v9 == v12)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
    *v17 = v7;
    v17[1] = v6;
  }

LABEL_9:
  result.issues._rawValue = v11;
  result.fields._rawValue = v10;
  return result;
}

uint64_t CompoundTreatmentFilter.addingFilter(_:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = *v2;
  v4 = a1[3];
  v5 = a1[4];
  v6 = __swift_project_boxed_opaque_existential_1(a1, v4);

  return sub_1DB35AEA8(v6, a2, v4, v5);
}

uint64_t sub_1DB35AEA8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v20 - v12;
  v14 = *(v7 + 16);
  v14(&v20 - v12);
  v15 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = sub_1DB302B68(0, v15[2] + 1, 1, v15);
    *a2 = v15;
  }

  v18 = v15[2];
  v17 = v15[3];
  if (v18 >= v17 >> 1)
  {
    v15 = sub_1DB302B68((v17 > 1), v18 + 1, 1, v15);
    *a2 = v15;
  }

  (v14)(v11, v13, a3);
  sub_1DB35B060(v18, v11, a2, a3, a4);
  *a2 = v15;
  return (*(v7 + 8))(v13, a3);
}

uint64_t sub_1DB35B060(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_0, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_1DB30C7A8(&v12, v10 + 40 * a1 + 32);
}

unint64_t static ComponentKindTable._table.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 16))();
  v3 = sub_1DB30E86C(v2);

  return v3;
}

uint64_t *static ComponentKindTable._decode(_:from:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = dynamic_cast_existential_2_conditional(a1);
  if (v7)
  {
    v10 = v7;
    v11 = v8;
    v12 = v9;
    sub_1DB30BE90(a2, v34);
    *&v36 = v10;
    *(&v36 + 1) = v11;
    v37 = v12;
    __swift_allocate_boxed_opaque_existential_0(v35);
    sub_1DB50ADB0();
    if (v3)
    {
      return __swift_deallocate_boxed_opaque_existential_0(v35);
    }

LABEL_7:
    v32 = v36;
    v23 = v36;
    v24 = __swift_project_boxed_opaque_existential_1(v35, v36);
    *(a3 + 24) = v32;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3);
    (*(*(v23 - 8) + 16))(boxed_opaque_existential_0, v24, v23);
    return __swift_destroy_boxed_opaque_existential_0(v35);
  }

  v14 = dynamic_cast_existential_2_conditional(a1);
  if (v14)
  {
    v17 = v14;
    v18 = v15;
    v19 = v16;
    sub_1DB30BE90(a2, v33);
    result = JSONObject.init(from:)(v33, v34);
    if (v3)
    {
      return result;
    }

    v20 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    v21 = sub_1DB50BDE0();
    JSONContext.init(userInfo:)(v21);
    v22 = *(v19 + 8);
    *&v36 = v17;
    *(&v36 + 1) = v18;
    v37 = v19;
    __swift_allocate_boxed_opaque_existential_0(v35);
    v22(v34, v33, v17, v19);
    goto LABEL_7;
  }

  v26 = sub_1DB50B3E0();
  swift_allocError();
  v28 = v27;
  v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F80, &unk_1DB5118B0) + 48);
  *v28 = a1;
  v30 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1DB50BDB0();
  sub_1DB50B320();

  v35[0] = 60;
  v35[1] = 0xE100000000000000;
  v31 = sub_1DB50BEE0();
  MEMORY[0x1E1285C70](v31);

  MEMORY[0x1E1285C70](0xD000000000000012, 0x80000001DB52AB80);
  sub_1DB50B3C0();
  (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69E6AF8], v26);
  return swift_willThrow();
}

uint64_t dynamic_cast_existential_2_conditional(uint64_t a1)
{
  result = swift_conformsToProtocol2();
  if (result)
  {
    if (swift_conformsToProtocol2())
    {
      return a1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DB35B504@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for LazyValueWrapper.State();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = (&v13 - v9);
  *v10 = a1;
  v10[1] = a2;
  swift_storeEnumTagMultiPayload();
  v11 = sub_1DB388A48();
  result = (*(v7 + 8))(v10, v6);
  *a3 = v11;
  return result;
}

uint64_t sub_1DB35B5F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for LazyValueWrapper.State();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v15 - v10;
  v12 = *(a2 - 8);
  (*(v12 + 16))(&v15 - v10, a1, a2, v9);
  swift_storeEnumTagMultiPayload();
  v13 = sub_1DB388A48();
  (*(v7 + 8))(v11, v6);
  result = (*(v12 + 8))(a1, a2);
  *a3 = v13;
  return result;
}

uint64_t LazyValueWrapper.description.getter(uint64_t a1)
{
  v2 = *v1;
  v4[2] = *(a1 + 16);
  type metadata accessor for LazyValueWrapper.State();
  sub_1DB47D0C4(sub_1DB35BA74, v4, v2);
  return v4[4];
}

void sub_1DB35B7C4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LazyValueWrapper.State();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = (v23 - v13);
  (*(v15 + 16))(v23 - v13, a1, v10, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v19 = *v14;
    v20 = v14[1];
    v24 = 0x646564616F6C6E75;
    v25 = 0xE900000000000028;
    v23[0] = v19;
    v23[1] = v20;
    swift_getFunctionTypeMetadata0();

    v21 = sub_1DB50A6C0();
    MEMORY[0x1E1285C70](v21);

    MEMORY[0x1E1285C70](41, 0xE100000000000000);

LABEL_6:
    v17 = v24;
    v18 = v25;
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v22 = *v14;
    v24 = 0;
    v25 = 0xE000000000000000;
    MEMORY[0x1E1285C70](0x2864696C61766E69, 0xE800000000000000);
    swift_getErrorValue();
    sub_1DB50BA00();
    MEMORY[0x1E1285C70](41, 0xE100000000000000);

    goto LABEL_6;
  }

  (*(v6 + 32))(v9, v14, a2);
  v24 = 0;
  v25 = 0xE000000000000000;
  MEMORY[0x1E1285C70](0x28646564616F6CLL, 0xE700000000000000);
  sub_1DB50BA00();
  MEMORY[0x1E1285C70](41, 0xE100000000000000);
  v17 = v24;
  v18 = v25;
  (*(v6 + 8))(v9, a2);
LABEL_7:
  *a3 = v17;
  a3[1] = v18;
}

void sub_1DB35BAA8(uint64_t a1)
{
  v2 = *v1;
  v3[2] = *(a1 + 16);
  type metadata accessor for LazyValueWrapper.State();
  sub_1DB47D0C4(sub_1DB35C990, v3, v2);
}

uint64_t sub_1DB35BB24@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LazyValueWrapper.State();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v65 - v14;
  (*(v12 + 16))(&v65 - v14, a1, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v10 = v15;
      return (*(v7 + 32))(a3, v10, a2);
    }

    v43 = *v15;
    if (qword_1ECC42220 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    v44 = v78;
    v45 = v79;
    __swift_project_boxed_opaque_existential_1(v77, v78);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_1DB50EE90;
    v80 = sub_1DB301BC0(0, 46, 0, MEMORY[0x1E69E7CC0]);
    v47._countAndFlagsBits = 91;
    v47._object = 0xE100000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v47);
    MetatypeMetadata = swift_getMetatypeMetadata();
    v75[0] = a2;
    sub_1DB301CDC(v75, v71);
    v72 = 0u;
    v73 = 0u;
    sub_1DB301D4C(v71, &v72);
    v74 = 0;
    v48 = v80;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v48 = sub_1DB301BC0(0, *(v48 + 2) + 1, 1, v48);
    }

    v50 = *(v48 + 2);
    v49 = *(v48 + 3);
    if (v50 >= v49 >> 1)
    {
      v48 = sub_1DB301BC0((v49 > 1), v50 + 1, 1, v48);
    }

    *(v48 + 2) = v50 + 1;
    v51 = &v48[40 * v50];
    v52 = v72;
    v53 = v73;
    v51[64] = v74;
    *(v51 + 2) = v52;
    *(v51 + 3) = v53;
    v80 = v48;
    sub_1DB301DBC(v75);
    v54._countAndFlagsBits = 0xD00000000000002BLL;
    v54._object = 0x80000001DB52ABA0;
    LogMessage.StringInterpolation.appendLiteral(_:)(v54);
    swift_getErrorValue();
    v55 = v69;
    v56 = v70;
    MetatypeMetadata = v70;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v75);
    (*(*(v56 - 8) + 16))(boxed_opaque_existential_0, v55, v56);
    sub_1DB301CDC(v75, v71);
    v72 = 0u;
    v73 = 0u;
    sub_1DB301D4C(v71, &v72);
    v74 = 0;
    v58 = v80;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v58 = sub_1DB301BC0(0, *(v58 + 2) + 1, 1, v58);
      v80 = v58;
    }

    v60 = *(v58 + 2);
    v59 = *(v58 + 3);
    if (v60 >= v59 >> 1)
    {
      v58 = sub_1DB301BC0((v59 > 1), v60 + 1, 1, v58);
    }

    *(v58 + 2) = v60 + 1;
    v61 = &v58[40 * v60];
    v62 = v72;
    v63 = v73;
    v61[64] = v74;
    *(v61 + 2) = v62;
    *(v61 + 3) = v63;
    v80 = v58;
    sub_1DB301DBC(v75);
    v64._countAndFlagsBits = 0;
    v64._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v64);
    *(v46 + 32) = v80;
    Logger.error(_:)(v46, v44, v45);

    __swift_destroy_boxed_opaque_existential_0(v77);
    return swift_willThrow();
  }

  else
  {
    v17 = (*(v12 + 8))(a1, v11);
    v18 = *(v15 + 1);
    (*v15)(v17);
    if (!v3)
    {

      (*(v7 + 16))(a1, v10, a2);
      swift_storeEnumTagMultiPayload();
      return (*(v7 + 32))(a3, v10, a2);
    }

    if (qword_1ECC42220 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    v19 = v78;
    v20 = v79;
    v65 = __swift_project_boxed_opaque_existential_1(v77, v78);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1DB50EE90;
    v80 = sub_1DB301BC0(0, 35, 0, MEMORY[0x1E69E7CC0]);
    v22._countAndFlagsBits = 91;
    v22._object = 0xE100000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v22);
    MetatypeMetadata = swift_getMetatypeMetadata();
    v75[0] = a2;
    sub_1DB301CDC(v75, v71);
    v72 = 0u;
    v73 = 0u;
    sub_1DB301D4C(v71, &v72);
    v74 = 0;
    v23 = v80;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v66 = v20;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v23 = sub_1DB301BC0(0, *(v23 + 2) + 1, 1, v23);
    }

    v26 = *(v23 + 2);
    v25 = *(v23 + 3);
    if (v26 >= v25 >> 1)
    {
      v23 = sub_1DB301BC0((v25 > 1), v26 + 1, 1, v23);
    }

    *(v23 + 2) = v26 + 1;
    v27 = &v23[40 * v26];
    v28 = v72;
    v29 = v73;
    v27[64] = v74;
    *(v27 + 2) = v28;
    *(v27 + 3) = v29;
    v80 = v23;
    sub_1DB301DBC(v75);
    v30._object = 0x80000001DB52ABD0;
    v30._countAndFlagsBits = 0xD000000000000020;
    LogMessage.StringInterpolation.appendLiteral(_:)(v30);
    swift_getErrorValue();
    v31 = v67;
    v32 = v68;
    MetatypeMetadata = v68;
    v33 = __swift_allocate_boxed_opaque_existential_0(v75);
    (*(*(v32 - 8) + 16))(v33, v31, v32);
    sub_1DB301CDC(v75, v71);
    v72 = 0u;
    v73 = 0u;
    sub_1DB301D4C(v71, &v72);
    v74 = 0;
    v34 = v80;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v34 = sub_1DB301BC0(0, *(v34 + 2) + 1, 1, v34);
      v80 = v34;
    }

    v36 = *(v34 + 2);
    v35 = *(v34 + 3);
    if (v36 >= v35 >> 1)
    {
      v34 = sub_1DB301BC0((v35 > 1), v36 + 1, 1, v34);
    }

    *(v34 + 2) = v36 + 1;
    v37 = &v34[40 * v36];
    v38 = v72;
    v39 = v73;
    v37[64] = v74;
    *(v37 + 2) = v38;
    *(v37 + 3) = v39;
    v80 = v34;
    sub_1DB301DBC(v75);
    v40._countAndFlagsBits = 0;
    v40._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v40);
    *(v21 + 32) = v80;
    Logger.error(_:)(v21, v19, v66);

    __swift_destroy_boxed_opaque_existential_0(v77);
    *a1 = v3;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v41 = v3;
  }
}

void sub_1DB35C32C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4[2] = *(a2 + 16);
  v4[3] = a1;
  type metadata accessor for LazyValueWrapper.State();
  sub_1DB47D0C4(sub_1DB35C974, v4, v3);
}

uint64_t sub_1DB35C3A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LazyValueWrapper.State();
  (*(*(v6 - 8) + 8))(a1, v6);
  (*(*(a3 - 8) + 16))(a1, a2, a3);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1DB35C468()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

unint64_t sub_1DB35C564(uint64_t a1)
{
  result = sub_1DB35C8C0();
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 16);
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      result = sub_1DB35C910();
      if (v6 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1DB35C5F0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 16;
  if (*(v3 + 64) > 0x10uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 253) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 3)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 254;
}

void sub_1DB35C708(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x10)
  {
    v5 = 16;
  }

  v6 = v5 + 1;
  if (a3 < 0xFE)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 253) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFD)
  {
    v8 = a2 - 254;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

unint64_t sub_1DB35C8C0()
{
  result = qword_1EE30E2D0;
  if (!qword_1EE30E2D0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EE30E2D0);
  }

  return result;
}

unint64_t sub_1DB35C910()
{
  result = qword_1EE30E2E0;
  if (!qword_1EE30E2E0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE30E2E0);
  }

  return result;
}

uint64_t sub_1DB35C9F4(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_1DB35CA44(a1, a2);
  return v4;
}

void *sub_1DB35CA44(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 80);
  v6 = type metadata accessor for DependencyCell.ObjectState();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = (&v13 - v9);
  *v10 = a1;
  v10[1] = a2;
  swift_storeEnumTagMultiPayload();
  v11 = sub_1DB388A48();
  (*(v7 + 8))(v10, v6);
  v2[2] = v11;
  return v2;
}

uint64_t sub_1DB35CB48()
{
  v1 = *v0;

  sub_1DB330B68(&v11, v2);
  v3 = v11;
  v4 = sub_1DB330884(&v11);
  v5 = v0[2];
  MEMORY[0x1EEE9AC00](v4);
  v9 = v0;
  v10 = v3;
  v6 = *(v1 + 80);
  type metadata accessor for DependencyCell.ObjectState();

  sub_1DB47D0C4(sub_1DB35DA24, &v8, v5);
}

uint64_t sub_1DB35CD5C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v62 = a4;
  v59 = a3;
  v8 = *a2;
  v9 = sub_1DB50A230();
  v57 = *(v9 - 8);
  v58 = v9;
  v10 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v53 - v14;
  v16 = *(v8 + 80);
  v17 = type metadata accessor for DependencyCell.ObjectState();
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = (&v53 - v20);
  v23 = *(v22 + 16);
  v60 = a1;
  v23(v21, a1, v17, v19);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return (*(*(v16 - 8) + 32))(a5, v21, v16);
  }

  v25 = v21[1];
  v54 = *v21;
  if (qword_1EE30EAE8 != -1)
  {
    swift_once();
  }

  v26 = sub_1DB50A270();
  __swift_project_value_buffer(v26, qword_1EE312DE8);
  sub_1DB50A250();

  sub_1DB50A1F0();
  v27 = sub_1DB50A250();
  v28 = sub_1DB50B070();
  v29 = sub_1DB50B0E0();
  v55 = a5;
  v56 = v5;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v53 = v25;
    v31 = v28;
    v32 = v30;
    v33 = swift_slowAlloc();
    v61.tv_sec = v33;
    *v32 = 136315138;
    v34 = sub_1DB50BEE0();
    v36 = sub_1DB3D4EE8(v34, v35, &v61.tv_sec);

    *(v32 + 4) = v36;
    v37 = sub_1DB50A210();
    v38 = v31;
    v25 = v53;
    _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v27, v38, v37, "MakeDependency", "object=%s,type=lazy", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x1E1288220](v33, -1, -1);
    MEMORY[0x1E1288220](v32, -1, -1);
  }

  v40 = v57;
  v39 = v58;
  (*(v57 + 16))(v12, v15, v58);
  v41 = sub_1DB50A2C0();
  v42 = *(v41 + 48);
  v43 = *(v41 + 52);
  swift_allocObject();
  v44 = sub_1DB50A2B0();
  (*(v40 + 8))(v15, v39);
  static MonotonicTime.now.getter(&v61);
  tv_sec = v61.tv_sec;
  tv_nsec = v61.tv_nsec;
  if (qword_1EE30EAC8 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v47 = v61.tv_sec;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC43810, &qword_1DB5147E0);
  v48 = swift_allocObject();
  *(v48 + 24) = 0;
  *(v48 + 16) = 0;
  v61.tv_sec = v48;
  MEMORY[0x1EEE9AC00](v48);
  v49 = v54;
  *(&v53 - 12) = v16;
  *(&v53 - 11) = v49;
  v50 = v59;
  *(&v53 - 10) = v25;
  *(&v53 - 9) = v50;
  v51 = v60;
  *(&v53 - 8) = v62;
  *(&v53 - 7) = v51;
  *(&v53 - 6) = tv_sec;
  *(&v53 - 5) = tv_nsec;
  *(&v53 - 4) = v44;
  *(&v53 - 3) = v52;
  *(&v53 - 2) = v47;
  sub_1DB50BEC0();
}

void sub_1DB35D23C(uint64_t a1@<X0>, uint64_t a2@<X1>, __darwin_time_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v45 = a6;
  v46 = a7;
  v48 = a8;
  v49 = a10;
  v18 = sub_1DB50A280();
  v43 = *(v18 - 8);
  v44 = v18;
  v19 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v47 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1DB50A230();
  v50 = *(v52 - 8);
  v21 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v23 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51.tv_sec = a3;
  v51.tv_nsec = a4;
  sub_1DB330574(a1, a2, &v51.tv_sec);
  v24 = type metadata accessor for DependencyCell.ObjectState();
  (*(*(v24 - 8) + 8))(a5, v24);
  (*(*(a12 - 8) + 16))(a5, a9, a12);
  swift_storeEnumTagMultiPayload();
  static MonotonicTime.now.getter(&v51);
  tv_sec = v51.tv_sec;
  tv_nsec = v51.tv_nsec;
  if (qword_1EE30ED48 != -1)
  {
    swift_once();
  }

  v27 = tv_nsec / *&qword_1EE30ED50 + tv_sec;
  v28 = v46 / *&qword_1EE30ED50 + v45;
  if (qword_1EE30EAE8 != -1)
  {
    swift_once();
  }

  v29 = v27 - v28;
  v30 = sub_1DB50A270();
  __swift_project_value_buffer(v30, qword_1EE312DE8);
  v31 = v49;

  v32 = sub_1DB50A250();
  sub_1DB50A2A0();
  v33 = sub_1DB50B060();

  v34 = sub_1DB50B0E0();
  v35 = v47;
  if (v34)
  {

    sub_1DB50A2D0();

    v37 = v43;
    v36 = v44;
    if ((*(v43 + 88))(v35, v44) == *MEMORY[0x1E69E93E8])
    {
      v38 = 0;
      v39 = "[Error] Interval already ended";
    }

    else
    {
      (*(v37 + 8))(v35, v36);
      v39 = "selfTime=%f";
      v38 = 1;
    }

    v40 = swift_slowAlloc();
    *v40 = 0;
    *(v40 + 1) = v38;
    *(v40 + 2) = 2048;
    os_unfair_lock_lock((v31 + 24));
    v41 = *(v31 + 16);
    os_unfair_lock_unlock((v31 + 24));
    *(v40 + 4) = v29 - v41;
    v42 = sub_1DB50A210();
    _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v32, v33, v42, "MakeDependency", v39, v40, 0xCu);
    MEMORY[0x1E1288220](v40, -1, -1);
  }

  (*(v50 + 8))(v23, v52);
  os_unfair_lock_lock((a11 + 24));
  *(a11 + 16) = v29 + *(a11 + 16);
  os_unfair_lock_unlock((a11 + 24));
}

unint64_t sub_1DB35D6A0(uint64_t a1)
{
  result = sub_1DB35C8C0();
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 16);
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DB35D718(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 16;
  if (*(v3 + 64) > 0x10uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void sub_1DB35D830(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x10)
  {
    v5 = 16;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

id sub_1DB35DA84()
{
  ObjectType = swift_getObjectType();
  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver_];

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_1DB35DBE8()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = *MEMORY[0x1E698C788];
  v3 = *(v0 + OBJC_IVAR____TtC7JetCore16OverriddenAMSBag_backing);
  swift_unknownObjectRetain();
  if (sub_1DB509950())
  {
    v4 = sub_1DB50A490();
  }

  else
  {
    v4 = 0;
  }

  [v1 postNotificationName:v2 object:v3 userInfo:v4];

  swift_unknownObjectRelease();
}

id sub_1DB35DFFC(char *a1, uint64_t a2, SEL *a3)
{
  v4 = *&a1[OBJC_IVAR____TtC7JetCore16OverriddenAMSBag_backing];
  v5 = a1;
  v6 = [v4 *a3];
  if (!v6)
  {
    sub_1DB50A650();
    v6 = sub_1DB50A620();
  }

  return v6;
}

id sub_1DB35E2F4(uint64_t a1, SEL *a2)
{
  v4 = v2;
  v6 = *(v2 + OBJC_IVAR____TtC7JetCore16OverriddenAMSBag_overrides);
  if (*(v6 + 16) && (v7 = sub_1DB314CB4(a1), (v8 & 1) != 0) && (v9 = *(*(v6 + 56) + 8 * v7), objc_opt_self(), (v10 = swift_dynamicCastObjCClass()) != 0))
  {
    v11 = v10;
    swift_unknownObjectRetain();
    return v11;
  }

  else
  {
    v13 = [*(v4 + OBJC_IVAR____TtC7JetCore16OverriddenAMSBag_backing) *a2];

    return v13;
  }
}

void sub_1DB35E428(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v8 = objc_allocWithZone(type metadata accessor for OverriddenAMSBag());
    v9 = a1;

    v10 = sub_1DB35E854(v9, a5, v8);
    (a3)(v10, 0);
  }

  else
  {
    a3();
  }
}

id sub_1DB35E680()
{
  ObjectType = swift_getObjectType();
  v2 = *(v0 + OBJC_IVAR____TtC7JetCore16OverriddenAMSBag_backing);
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v4 = [v2 profile];
    if (!v4)
    {
      sub_1DB50A650();
      v4 = sub_1DB50A620();
    }

    v5 = [v2 profileVersion];
    if (!v5)
    {
      sub_1DB50A650();
      v5 = sub_1DB50A620();
    }

    v6 = [objc_opt_self() bagForProfile:v4 profileVersion:v5];

    v7 = *(v0 + OBJC_IVAR____TtC7JetCore16OverriddenAMSBag_overrides);
    v8 = objc_allocWithZone(ObjectType);

    return sub_1DB35E928(v6, v7, v8);
  }

  return result;
}

id sub_1DB35E854(void *a1, uint64_t a2, char *a3)
{
  ObjectType = swift_getObjectType();
  *&a3[OBJC_IVAR____TtC7JetCore16OverriddenAMSBag_backing] = a1;
  *&a3[OBJC_IVAR____TtC7JetCore16OverriddenAMSBag_overrides] = a2;
  v11.receiver = a3;
  v11.super_class = ObjectType;
  v7 = a1;
  v8 = objc_msgSendSuper2(&v11, sel_init);
  v9 = [objc_opt_self() defaultCenter];
  [v9 addObserver:v8 selector:sel_forwardSnapshotBagExpiredValueAccessed_ name:*MEMORY[0x1E698C788] object:v7];

  return v8;
}

id sub_1DB35E928(void *a1, uint64_t a2, char *a3)
{
  ObjectType = swift_getObjectType();
  *&a3[OBJC_IVAR____TtC7JetCore16OverriddenAMSBag_backing] = a1;
  *&a3[OBJC_IVAR____TtC7JetCore16OverriddenAMSBag_overrides] = a2;
  v11.receiver = a3;
  v11.super_class = ObjectType;
  v7 = a1;
  v8 = objc_msgSendSuper2(&v11, sel_init);
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v9 = [objc_opt_self() defaultCenter];
    [v9 addObserver:v8 selector:sel_forwardSnapshotBagExpiredValueAccessed_ name:*MEMORY[0x1E698C788] object:v7];
  }

  return v8;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1DB35EA44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43838, &unk_1DB513310);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_1DB35EAC8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43840, &qword_1DB512218);
  v0 = swift_allocObject();
  *&result = 3;
  *(v0 + 16) = xmmword_1DB511620;
  *(v0 + 32) = &type metadata for _AMSBagProtocolForBagRule;
  *(v0 + 40) = &off_1EE30CB08;
  *(v0 + 48) = &type metadata for _BagForAMSBagProtocolRule;
  *(v0 + 56) = &off_1EE30CAE8;
  *(v0 + 64) = &type metadata for _AMSKitBagForBagRule;
  *(v0 + 72) = &off_1EE30E238;
  off_1EE30D3B0 = v0;
  return result;
}

uint64_t sub_1DB35EB4C(uint64_t a1, uint64_t a2)
{
  if (qword_1EE30D3A8 != -1)
  {
    swift_once();
  }

  *(swift_allocObject() + 16) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43848, &qword_1DB512220);
  swift_getExtendedExistentialTypeMetadata_unique();
  sub_1DB3370CC(&qword_1EE30C790, &qword_1ECC43848, &qword_1DB512220);
  sub_1DB50B640();

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC43850, &qword_1DB512228);
  sub_1DB50B120();
  sub_1DB3370CC(&unk_1EE30C850, &qword_1ECC43850, &qword_1DB512228);
  sub_1DB50B510();
  swift_getWitnessTable();
  sub_1DB50B5D0();
  swift_getWitnessTable();
  sub_1DB50B510();
  sub_1DB3370CC(&qword_1EE30C848, &qword_1ECC43850, &qword_1DB512228);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1DB50AE60();

  return v4;
}

uint64_t sub_1DB35EE60@<X0>(__int128 *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC43858, &unk_1DB51C760);
  swift_getExtendedExistentialTypeMetadata_unique();
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

uint64_t ReadOnlyLens.subscript.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(*a1 + *MEMORY[0x1E69E6F98] + 8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v9 - v6;
  swift_getAtKeyPath();
  return (*(v4 + 32))(a2, v7, v3);
}

uint64_t ReadOnlyLens.subscript.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  return sub_1DB35F08C(a1, MEMORY[0x1E69E77B0], a2);
}

{
  return sub_1DB35F08C(a1, MEMORY[0x1E69E6F98], a2);
}

uint64_t sub_1DB35F08C@<X0>(uint64_t *a1@<X0>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *a1;
  swift_getAtKeyPath();
  v7[0] = v7[1];
  return (*(*(*(v5 + *a2 + 8) - 8) + 32))(a3, v7);
}

uint64_t ReadOnlyLens.description.getter(uint64_t a1)
{
  v1 = *(*(*(a1 + 16) - 8) + 64);
  v2 = MEMORY[0x1EEE9AC00](a1);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  return sub_1DB50A6C0();
}

uint64_t sub_1DB35F224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 - 8);
  v5 = *(a3 + 16);
  return static ReadOnlyLens<A>.== infix(_:_:)();
}

uint64_t ReadOnlyLens<A>.hashValue.getter(uint64_t a1)
{
  sub_1DB50BCF0();
  v2 = *(a1 + 16);
  sub_1DB50A5D0();
  return sub_1DB50BD30();
}

uint64_t sub_1DB35F2A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_1DB50BCF0();
  ReadOnlyLens<A>.hash(into:)(v6, a2);
  return sub_1DB50BD30();
}

uint64_t sub_1DB35F33C(uint64_t a1)
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

uint64_t PreferenceKey.init(_:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *a3;
  v7 = a3[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42748, &qword_1DB50F1C0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1DB50F8D0;
  *(v9 + 32) = v8;
  *(v9 + 40) = v7;
  *(v9 + 48) = a1;
  *(v9 + 56) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43168, &qword_1DB513530);
  sub_1DB33701C();
  v10 = sub_1DB50A5E0();
  v12 = v11;

  *a4 = v10;
  a4[1] = v12;
  return result;
}

uint64_t PreferenceKey.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t PreferenceKey.lookupName.getter()
{
  v0 = sub_1DB35F5B4();

  return v0;
}

uint64_t PreferenceKey.lookupName.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t static PreferenceKey.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1DB50BA30();
  }
}

uint64_t sub_1DB35F578()
{
  v0 = sub_1DB35F5B4();

  return v0;
}

uint64_t sub_1DB35F5B4()
{
  result = *v0;
  v2 = v0[1];
  return result;
}

uint64_t sub_1DB35F5D0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1DB35F694@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = sub_1DB50A300();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = OBJC_IVAR____TtC7JetCore27DaemonSessionImplementation_sessionIfValid;
  swift_beginAccess();
  sub_1DB30C4B8(v1 + v7, &v49, &qword_1ECC43918, &qword_1DB512418);
  if (v50)
  {
    return sub_1DB2FEA0C(&v49, a1);
  }

  v40 = a1;
  sub_1DB30623C(&v49, &qword_1ECC43918, &qword_1DB512418);
  if (qword_1ECC42298 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v9 = v50;
  v41 = v51;
  __swift_project_boxed_opaque_existential_1(&v49, v50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1DB50EE90;
  v52 = sub_1DB301BC0(0, 26, 0, MEMORY[0x1E69E7CC0]);
  v11._object = 0x80000001DB52B1D0;
  v11._countAndFlagsBits = 0xD000000000000019;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  v12 = *(v1 + 128);
  v13 = *(v1 + 136);
  v48 = MEMORY[0x1E69E6158];
  v47[0] = v12;
  v47[1] = v13;
  sub_1DB30C4B8(v47, v43, &qword_1ECC426B0, &qword_1DB50EEB0);
  v44 = 0u;
  v45 = 0u;

  sub_1DB30C2D8(v43, &v44, &qword_1ECC426B0, &qword_1DB50EEB0);
  v46 = 0;
  v14 = v52;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = sub_1DB301BC0(0, *(v14 + 2) + 1, 1, v14);
    v52 = v14;
  }

  v16 = *(v14 + 2);
  v15 = *(v14 + 3);
  if (v16 >= v15 >> 1)
  {
    v14 = sub_1DB301BC0((v15 > 1), v16 + 1, 1, v14);
  }

  *(v14 + 2) = v16 + 1;
  v17 = &v14[40 * v16];
  v18 = v44;
  v19 = v45;
  v17[64] = v46;
  *(v17 + 2) = v18;
  *(v17 + 3) = v19;
  v52 = v14;
  sub_1DB30623C(v47, &qword_1ECC426B0, &qword_1DB50EEB0);
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v20);
  *(v10 + 32) = v52;
  Logger.info(_:)(v10, v9, v41);

  __swift_destroy_boxed_opaque_existential_0(&v49);
  if (qword_1EE30E190 != -1)
  {
    swift_once();
  }

  if (byte_1EE30E198 != 1 || (v21 = *(v3 + OBJC_IVAR____TtC7JetCore27DaemonSessionImplementation_xpcSessionProviderFactory)) == 0)
  {
    v24 = sub_1DB50A330();
    v25 = *(v3 + OBJC_IVAR____TtC7JetCore27DaemonSessionImplementation_workQueue);

    v26 = v25;

    sub_1DB50A2F0();
    v27 = sub_1DB50A2E0();
    if (v2)
    {
      goto LABEL_16;
    }

    v50 = v24;
    v51 = &protocol witness table for XPCSession;
    *&v49 = v27;
LABEL_23:
    sub_1DB2FEA0C(&v49, v40);
    sub_1DB30BE90(v40, &v49);
    swift_beginAccess();
    sub_1DB30C2D8(&v49, v3 + v7, &qword_1ECC43918, &qword_1DB512418);
    return swift_endAccess();
  }

  v22 = *(v3 + OBJC_IVAR____TtC7JetCore27DaemonSessionImplementation_xpcSessionProviderFactory + 8);

  v21(&v49, v23);
  if (!v2)
  {
    sub_1DB365724(v21);
    goto LABEL_23;
  }

  sub_1DB365724(v21);
LABEL_16:
  sub_1DB50BEB0();
  v28 = v50;
  v29 = v51;
  __swift_project_boxed_opaque_existential_1(&v49, v50);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1DB50EE90;
  v52 = sub_1DB301BC0(0, 43, 0, MEMORY[0x1E69E7CC0]);
  v31._countAndFlagsBits = 0xD00000000000002ALL;
  v31._object = 0x80000001DB52B1F0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v31);
  swift_getErrorValue();
  v48 = v42;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v47);
  (*(*(v42 - 8) + 16))(boxed_opaque_existential_0);
  sub_1DB30C4B8(v47, v43, &qword_1ECC426B0, &qword_1DB50EEB0);
  v44 = 0u;
  v45 = 0u;
  sub_1DB30C2D8(v43, &v44, &qword_1ECC426B0, &qword_1DB50EEB0);
  v46 = 0;
  v33 = v52;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v33 = sub_1DB301BC0(0, *(v33 + 2) + 1, 1, v33);
    v52 = v33;
  }

  v35 = *(v33 + 2);
  v34 = *(v33 + 3);
  if (v35 >= v34 >> 1)
  {
    v33 = sub_1DB301BC0((v34 > 1), v35 + 1, 1, v33);
  }

  *(v33 + 2) = v35 + 1;
  v36 = &v33[40 * v35];
  v37 = v44;
  v38 = v45;
  v36[64] = v46;
  *(v36 + 2) = v37;
  *(v36 + 3) = v38;
  v52 = v33;
  sub_1DB30623C(v47, &qword_1ECC426B0, &qword_1DB50EEB0);
  v39._countAndFlagsBits = 0;
  v39._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v39);
  *(v30 + 32) = v52;
  Logger.error(_:)(v30, v28, v29);

  __swift_destroy_boxed_opaque_existential_0(&v49);
  return swift_willThrow();
}

uint64_t sub_1DB35FD4C(uint64_t a1)
{
  v2 = v1;
  if (qword_1ECC42298 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v4 = *(&v26 + 1);
  v5 = v27;
  __swift_project_boxed_opaque_existential_1(&v25, *(&v26 + 1));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DB50EE90;
  v24 = sub_1DB301BC0(0, 41, 0, MEMORY[0x1E69E7CC0]);
  v7._object = 0x80000001DB52B220;
  v7._countAndFlagsBits = 0xD000000000000028;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  v8 = sub_1DB50A350();
  v23[3] = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v23);
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_0, a1, v8);
  sub_1DB30C4B8(v23, v19, &qword_1ECC426B0, &qword_1DB50EEB0);
  v20 = 0u;
  v21 = 0u;
  sub_1DB30C2D8(v19, &v20, &qword_1ECC426B0, &qword_1DB50EEB0);
  v22 = 0;
  v10 = v24;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = sub_1DB301BC0(0, *(v10 + 2) + 1, 1, v10);
  }

  v12 = *(v10 + 2);
  v11 = *(v10 + 3);
  if (v12 >= v11 >> 1)
  {
    v10 = sub_1DB301BC0((v11 > 1), v12 + 1, 1, v10);
  }

  *(v10 + 2) = v12 + 1;
  v13 = &v10[40 * v12];
  v14 = v20;
  v15 = v21;
  v13[64] = v22;
  *(v13 + 2) = v14;
  *(v13 + 3) = v15;
  v24 = v10;
  sub_1DB30623C(v23, &qword_1ECC426B0, &qword_1DB50EEB0);
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v16);
  *(v6 + 32) = v24;
  Logger.error(_:)(v6, v4, v5);

  __swift_destroy_boxed_opaque_existential_0(&v25);
  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  v17 = OBJC_IVAR____TtC7JetCore27DaemonSessionImplementation_sessionIfValid;
  swift_beginAccess();
  sub_1DB30C2D8(&v25, v2 + v17, &qword_1ECC43918, &qword_1DB512418);
  return swift_endAccess();
}

uint64_t DaemonSessionImplementation.__allocating_init(xpcServiceName:signposter:requestSizeLimit:timeout:xpcSessionProviderFactory:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, uint64_t a6, uint64_t a7, double a8)
{
  v9 = v8;
  v41 = a6;
  v42 = a7;
  v37 = a5;
  v38 = a4;
  v36[0] = a3;
  v40 = sub_1DB50AF80();
  v14 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v40);
  v39 = v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1DB50A440();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v36[1] = v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1DB50AFA0();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v9 + 48);
  v25 = *(v9 + 52);
  v26 = swift_allocObject();
  swift_defaultActor_initialize();
  v27 = v26 + OBJC_IVAR____TtC7JetCore27DaemonSessionImplementation_sessionIfValid;
  *v27 = 0u;
  *(v27 + 16) = 0u;
  *(v27 + 32) = 0;
  *(v26 + 128) = a1;
  *(v26 + 136) = a2;
  v28 = OBJC_IVAR____TtC7JetCore27DaemonSessionImplementation_signposter;
  v29 = sub_1DB50A270();
  v30 = *(v29 - 8);
  (*(v30 + 16))(v26 + v28, a3, v29);
  v31 = 0x100000;
  if ((v37 & 1) == 0)
  {
    v31 = v38;
  }

  *(v26 + 112) = v31;
  *(v26 + 120) = a8;
  v38 = sub_1DB357BD4();
  v43 = a1;
  v44 = a2;

  MEMORY[0x1E1285C70](0x6575516B726F772ELL, 0xEA00000000006575);
  (*(v20 + 104))(v23, *MEMORY[0x1E69E8098], v19);
  _s7JetCore22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
  v43 = MEMORY[0x1E69E7CC0];
  sub_1DB365680(&qword_1EE30C810, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC44F80, &qword_1DB512400);
  sub_1DB3606DC();
  sub_1DB50B240();
  v32 = sub_1DB50AFD0();
  (*(v30 + 8))(v36[0], v29);
  *(v26 + OBJC_IVAR____TtC7JetCore27DaemonSessionImplementation_workQueue) = v32;
  v33 = (v26 + OBJC_IVAR____TtC7JetCore27DaemonSessionImplementation_xpcSessionProviderFactory);
  v34 = v42;
  *v33 = v41;
  v33[1] = v34;
  return v26;
}

uint64_t DaemonSessionImplementation.init(xpcServiceName:signposter:requestSizeLimit:timeout:xpcSessionProviderFactory:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, uint64_t a6, uint64_t a7, double a8)
{
  v9 = v8;
  v39 = a6;
  v40 = a7;
  v35 = a5;
  v36 = a4;
  v34 = a3;
  v38 = sub_1DB50AF80();
  v14 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1DB50A440();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v33 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1DB50AFA0();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v33 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v24 = v9 + OBJC_IVAR____TtC7JetCore27DaemonSessionImplementation_sessionIfValid;
  *v24 = 0u;
  *(v24 + 16) = 0u;
  *(v24 + 32) = 0;
  *(v9 + 128) = a1;
  *(v9 + 136) = a2;
  v25 = OBJC_IVAR____TtC7JetCore27DaemonSessionImplementation_signposter;
  v26 = sub_1DB50A270();
  v27 = *(v26 - 8);
  (*(v27 + 16))(v9 + v25, a3, v26);
  v28 = 0x100000;
  if ((v35 & 1) == 0)
  {
    v28 = v36;
  }

  *(v9 + 112) = v28;
  *(v9 + 120) = a8;
  v36 = sub_1DB357BD4();
  v41 = a1;
  v42 = a2;

  MEMORY[0x1E1285C70](0x6575516B726F772ELL, 0xEA00000000006575);
  (*(v20 + 104))(v23, *MEMORY[0x1E69E8098], v19);
  _s7JetCore22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
  v41 = MEMORY[0x1E69E7CC0];
  sub_1DB365680(&qword_1EE30C810, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC44F80, &qword_1DB512400);
  sub_1DB3606DC();
  sub_1DB50B240();
  v29 = sub_1DB50AFD0();
  (*(v27 + 8))(v34, v26);
  *(v9 + OBJC_IVAR____TtC7JetCore27DaemonSessionImplementation_workQueue) = v29;
  v30 = (v9 + OBJC_IVAR____TtC7JetCore27DaemonSessionImplementation_xpcSessionProviderFactory);
  v31 = v40;
  *v30 = v39;
  v30[1] = v31;
  return v9;
}

unint64_t sub_1DB3606DC()
{
  result = qword_1EE30C838;
  if (!qword_1EE30C838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECC44F80, &qword_1DB512400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30C838);
  }

  return result;
}

uint64_t DaemonSessionImplementation.send<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[117] = v4;
  v5[116] = a4;
  v5[115] = a3;
  v5[114] = a2;
  v5[113] = a1;
  v7 = sub_1DB50A350();
  v5[118] = v7;
  v8 = *(v7 - 8);
  v5[119] = v8;
  v9 = *(v8 + 64) + 15;
  v5[120] = swift_task_alloc();
  v5[121] = swift_task_alloc();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for DaemonResponse();
  v5[122] = v10;
  v11 = *(v10 - 8);
  v5[123] = v11;
  v12 = *(v11 + 64) + 15;
  v5[124] = swift_task_alloc();
  v5[125] = swift_task_alloc();
  v13 = sub_1DB50A230();
  v5[126] = v13;
  v14 = *(v13 - 8);
  v5[127] = v14;
  v15 = *(v14 + 64) + 15;
  v5[128] = swift_task_alloc();
  v5[129] = swift_task_alloc();
  v16 = *(a3 - 8);
  v5[130] = v16;
  v17 = *(v16 + 64) + 15;
  v5[131] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB3609C4, v4, 0);
}

uint64_t sub_1DB3609C4()
{
  v69 = v0;
  v1 = *(v0 + 1032);
  v2 = *(v0 + 936);
  v67 = *(*(v0 + 1040) + 16);
  v67(*(v0 + 1048), *(v0 + 912), *(v0 + 920));
  sub_1DB50A220();
  v3 = sub_1DB50A250();
  v4 = sub_1DB50B070();
  v5 = sub_1DB50B0E0();
  v6 = *(v0 + 1048);
  v7 = *(v0 + 1040);
  if (v5)
  {
    v66 = *(v0 + 1032);
    v8 = *(v0 + 928);
    v9 = *(v0 + 920);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v68 = v11;
    *v10 = 136315138;
    v12 = *(v8 + 8);
    v13 = sub_1DB50B8F0();
    v15 = v14;
    (*(v7 + 8))(v6, v9);
    v16 = sub_1DB3D4EE8(v13, v15, &v68);

    *(v10 + 4) = v16;
    v17 = sub_1DB50A210();
    _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v3, v4, v17, "DaemonSession.send", "request=%s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x1E1288220](v11, -1, -1);
    MEMORY[0x1E1288220](v10, -1, -1);
  }

  else
  {
    v18 = *(v0 + 920);

    (*(v7 + 8))(v6, v18);
  }

  v19 = *(v0 + 1032);
  v20 = *(v0 + 1016);
  v21 = *(v0 + 1008);
  v22 = *(v0 + 928);
  v23 = *(v0 + 920);
  v24 = *(v0 + 912);
  (*(v20 + 16))(*(v0 + 1024), v19, v21);
  v25 = sub_1DB50A2C0();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  *(v0 + 1056) = sub_1DB50A2B0();
  (*(v20 + 8))(v19, v21);
  v28 = (*(v22 + 96))(v23, v22);
  if ((v29 & 1) != 0 || (v30 = *(v0 + 936), v31 = *(v30 + 112), v31 >= v28))
  {
    if (qword_1ECC42298 != -1)
    {
      swift_once();
    }

    v34 = *(v0 + 920);
    v35 = *(v0 + 912);
    *(v0 + 1064) = qword_1ECC46748;
    sub_1DB50BEB0();
    v36 = *(v0 + 200);
    v37 = *(v0 + 208);
    __swift_project_boxed_opaque_existential_1((v0 + 176), v36);
    *(v0 + 1072) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_1DB50EE90;
    v68 = sub_1DB301BC0(0, 28, 0, MEMORY[0x1E69E7CC0]);
    v39._countAndFlagsBits = 0xD00000000000001BLL;
    v39._object = 0x80000001DB52AE10;
    LogMessage.StringInterpolation.appendLiteral(_:)(v39);
    *(v0 + 816) = v34;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 792));
    v67(boxed_opaque_existential_0, v35, v34);
    sub_1DB30C4B8(v0 + 792, v0 + 728, &qword_1ECC426B0, &qword_1DB50EEB0);
    *(v0 + 336) = 0u;
    *(v0 + 352) = 0u;
    sub_1DB30C2D8(v0 + 728, v0 + 336, &qword_1ECC426B0, &qword_1DB50EEB0);
    *(v0 + 368) = 0;
    v41 = v68;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_1DB301BC0(0, *(v41 + 2) + 1, 1, v41);
    }

    v43 = *(v41 + 2);
    v42 = *(v41 + 3);
    if (v43 >= v42 >> 1)
    {
      v41 = sub_1DB301BC0((v42 > 1), v43 + 1, 1, v41);
    }

    v44 = *(v0 + 936);
    *(v41 + 2) = v43 + 1;
    v45 = &v41[40 * v43];
    v46 = *(v0 + 336);
    v47 = *(v0 + 352);
    v45[64] = *(v0 + 368);
    *(v45 + 2) = v46;
    *(v45 + 3) = v47;
    v68 = v41;
    sub_1DB30623C(v0 + 792, &qword_1ECC426B0, &qword_1DB50EEB0);
    v48._countAndFlagsBits = 0;
    v48._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v48);
    *(v38 + 32) = v68;
    Logger.debug(_:)(v38, v36, v37);

    __swift_destroy_boxed_opaque_existential_0((v0 + 176));
    sub_1DB35F694(v0 + 56);
    v49 = *(v0 + 936);
    v50 = *(v0 + 912);
    v51 = sub_1DB365680(&qword_1ECC43910, type metadata accessor for DaemonSessionImplementation);
    v52 = swift_task_alloc();
    *(v0 + 1080) = v52;
    *(v52 + 16) = *(v0 + 920);
    *(v52 + 32) = v49;
    *(v52 + 40) = v0 + 56;
    *(v52 + 48) = v50;
    v53 = *(MEMORY[0x1E69E8920] + 4);
    v54 = swift_task_alloc();
    *(v0 + 1088) = v54;
    *v54 = v0;
    v54[1] = sub_1DB361A00;
    v55 = *(v0 + 992);
    v56 = *(v0 + 976);

    return MEMORY[0x1EEE6DE38](v55, v49, v51, 0x293A5F28646E6573, 0xE800000000000000, sub_1DB365714, v52, v56);
  }

  else
  {
    v32 = v28;
    type metadata accessor for DaemonError();
    sub_1DB365680(&qword_1ECC43900, type metadata accessor for DaemonError);
    swift_allocError();
    *v33 = v32;
    v33[1] = v31;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1DB3632DC(v30, "DaemonSession.send", 18, 2);

    v57 = *(v0 + 1048);
    v58 = *(v0 + 1032);
    v59 = *(v0 + 1024);
    v60 = *(v0 + 1000);
    v61 = *(v0 + 992);
    v62 = *(v0 + 968);
    v63 = *(v0 + 960);

    v64 = *(v0 + 8);

    return v64();
  }
}

uint64_t sub_1DB361A00()
{
  v2 = *v1;
  v3 = *(*v1 + 1088);
  v4 = *v1;
  *(*v1 + 1096) = v0;

  v5 = *(v2 + 1080);
  v6 = *(v2 + 936);

  if (v0)
  {
    v7 = sub_1DB362898;
  }

  else
  {
    v7 = sub_1DB361B48;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1DB361B48()
{
  v1 = *(v0 + 1072);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 976);
  (*(*(v0 + 984) + 32))(*(v0 + 1000), *(v0 + 992), v3);
  sub_1DB50BEB0();
  v4 = *(v0 + 280);
  v121 = *(v0 + 288);
  __swift_project_boxed_opaque_existential_1((v0 + 256), v4);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1DB50EE90;
  v126 = sub_1DB301BC0(0, 36, 0, MEMORY[0x1E69E7CC0]);
  v6._countAndFlagsBits = 0xD000000000000023;
  v6._object = 0x80000001DB52AEB0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  v7 = sub_1DB3E3498(v3);
  *(v0 + 784) = MEMORY[0x1E69E6158];
  *(v0 + 760) = v7;
  *(v0 + 768) = v8;
  sub_1DB30C4B8(v0 + 760, v0 + 824, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 416) = 0u;
  *(v0 + 432) = 0u;
  sub_1DB30C2D8(v0 + 824, v0 + 416, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 448) = 0;
  v9 = v126;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_1DB301BC0(0, *(v126 + 2) + 1, 1, v126);
  }

  v11 = *(v9 + 2);
  v10 = *(v9 + 3);
  if (v11 >= v10 >> 1)
  {
    v9 = sub_1DB301BC0((v10 > 1), v11 + 1, 1, v9);
  }

  v12 = *(v0 + 1096);
  v13 = *(v0 + 1000);
  v14 = *(v0 + 976);
  v15 = *(v0 + 904);
  *(v9 + 2) = v11 + 1;
  v16 = &v9[40 * v11];
  v17 = *(v0 + 416);
  v18 = *(v0 + 432);
  v16[64] = *(v0 + 448);
  *(v16 + 2) = v17;
  *(v16 + 3) = v18;
  sub_1DB30623C(v0 + 760, &qword_1ECC426B0, &qword_1DB50EEB0);
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v19);
  *(v5 + 32) = v9;
  Logger.info(_:)(v5, v4, v121);

  __swift_destroy_boxed_opaque_existential_0((v0 + 256));
  _s7JetCore14DaemonResponseO3getxyAA0cD12CodableErrorVYKF(v14, (v0 + 16), v15);
  if (!v12)
  {
    v50 = *(v0 + 1056);
    v51 = *(v0 + 1048);
    v52 = *(v0 + 1032);
    v53 = *(v0 + 1024);
    v54 = *(v0 + 992);
    v55 = *(v0 + 968);
    v56 = *(v0 + 960);
    v57 = *(v0 + 936);
    (*(*(v0 + 984) + 8))(*(v0 + 1000), *(v0 + 976));
    __swift_destroy_boxed_opaque_existential_0((v0 + 56));
    sub_1DB3632DC(v57, "DaemonSession.send", 18, 2);

    v58 = *(v0 + 8);
    goto LABEL_29;
  }

  v20 = *(v0 + 1000);
  v21 = *(v0 + 984);
  v22 = *(v0 + 976);
  v23 = *(v0 + 48);
  sub_1DB36562C();
  v119 = *(v0 + 32);
  v122 = *(v0 + 16);
  v24 = swift_allocError();
  *v25 = v122;
  *(v25 + 16) = v119;
  *(v25 + 32) = v23;
  (*(v21 + 8))(v20, v22);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  v26 = *(v0 + 968);
  v27 = *(v0 + 944);
  *(v0 + 888) = v24;
  v28 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
  if (swift_dynamicCast())
  {
    v29 = *(v0 + 1072);
    v30 = *(v0 + 1064);
    v31 = *(v0 + 968);
    v32 = *(v0 + 960);
    v33 = *(v0 + 952);
    v34 = *(v0 + 944);

    (*(v33 + 32))(v32, v31, v34);
    sub_1DB50BEB0();
    v120 = *(v0 + 328);
    v123 = *(v0 + 320);
    __swift_project_boxed_opaque_existential_1((v0 + 296), v123);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1DB50EE90;
    v127 = sub_1DB301BC0(0, 24, 0, MEMORY[0x1E69E7CC0]);
    v36._object = 0x80000001DB52AE90;
    v36._countAndFlagsBits = 0xD000000000000017;
    LogMessage.StringInterpolation.appendLiteral(_:)(v36);
    *(v0 + 656) = v34;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 632));
    v117 = *(v33 + 16);
    v117(boxed_opaque_existential_0, v32, v34);
    sub_1DB30C4B8(v0 + 632, v0 + 696, &qword_1ECC426B0, &qword_1DB50EEB0);
    *(v0 + 456) = 0u;
    *(v0 + 472) = 0u;
    sub_1DB30C2D8(v0 + 696, v0 + 456, &qword_1ECC426B0, &qword_1DB50EEB0);
    *(v0 + 488) = 0;
    v38 = v127;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v38 = sub_1DB301BC0(0, *(v127 + 2) + 1, 1, v127);
    }

    v40 = *(v38 + 2);
    v39 = *(v38 + 3);
    if (v40 >= v39 >> 1)
    {
      v38 = sub_1DB301BC0((v39 > 1), v40 + 1, 1, v38);
    }

    v41 = *(v0 + 960);
    v42 = *(v0 + 952);
    v43 = *(v0 + 944);
    v113 = *(v0 + 1056);
    v115 = *(v0 + 936);
    *(v38 + 2) = v40 + 1;
    v44 = &v38[40 * v40];
    v45 = *(v0 + 456);
    v46 = *(v0 + 472);
    v44[64] = *(v0 + 488);
    *(v44 + 2) = v45;
    *(v44 + 3) = v46;
    sub_1DB30623C(v0 + 632, &qword_1ECC426B0, &qword_1DB50EEB0);
    v47._countAndFlagsBits = 0;
    v47._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v47);
    *(v35 + 32) = v38;
    Logger.error(_:)(v35, v123, v120);

    __swift_destroy_boxed_opaque_existential_0((v0 + 296));
    type metadata accessor for DaemonError();
    sub_1DB365680(&qword_1ECC43900, type metadata accessor for DaemonError);
    swift_allocError();
    v117(v48, v41, v43);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v42 + 8))(v41, v43);
    v49 = *(v0 + 888);
  }

  else
  {

    *(v0 + 880) = v24;
    v59 = v24;
    v60 = swift_dynamicCast();
    v61 = *(v0 + 1072);
    v62 = *(v0 + 1064);
    if (!v60)
    {

      sub_1DB50BEB0();
      v82 = *(v0 + 160);
      v125 = *(v0 + 168);
      __swift_project_boxed_opaque_existential_1((v0 + 136), v82);
      v83 = swift_allocObject();
      *(v83 + 16) = xmmword_1DB50EE90;
      v129 = sub_1DB301BC0(0, 48, 0, MEMORY[0x1E69E7CC0]);
      v84._countAndFlagsBits = 0xD00000000000002FLL;
      v84._object = 0x80000001DB52AE30;
      LogMessage.StringInterpolation.appendLiteral(_:)(v84);
      swift_getErrorValue();
      v85 = *(v0 + 856);
      v86 = *(v0 + 864);
      *(v0 + 688) = v86;
      v87 = __swift_allocate_boxed_opaque_existential_0((v0 + 664));
      (*(*(v86 - 8) + 16))(v87, v85, v86);
      sub_1DB30C4B8(v0 + 664, v0 + 536, &qword_1ECC426B0, &qword_1DB50EEB0);
      *(v0 + 376) = 0u;
      *(v0 + 392) = 0u;
      sub_1DB30C2D8(v0 + 536, v0 + 376, &qword_1ECC426B0, &qword_1DB50EEB0);
      *(v0 + 408) = 0;
      v88 = v129;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v88 = sub_1DB301BC0(0, *(v129 + 2) + 1, 1, v129);
      }

      v90 = *(v88 + 2);
      v89 = *(v88 + 3);
      if (v90 >= v89 >> 1)
      {
        v88 = sub_1DB301BC0((v89 > 1), v90 + 1, 1, v88);
      }

      v91 = *(v0 + 1056);
      v92 = *(v0 + 936);
      *(v88 + 2) = v90 + 1;
      v93 = &v88[40 * v90];
      v94 = *(v0 + 376);
      v95 = *(v0 + 392);
      v93[64] = *(v0 + 408);
      *(v93 + 2) = v94;
      *(v93 + 3) = v95;
      sub_1DB30623C(v0 + 664, &qword_1ECC426B0, &qword_1DB50EEB0);
      v96._countAndFlagsBits = 0;
      v96._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v96);
      *(v83 + 32) = v88;
      Logger.error(_:)(v83, v82, v125);

      __swift_destroy_boxed_opaque_existential_0((v0 + 136));
      type metadata accessor for DaemonError();
      sub_1DB365680(&qword_1ECC43900, type metadata accessor for DaemonError);
      swift_allocError();
      v98 = v97;
      v99 = v24;
      sub_1DB4F1C64(v24, v98);
      swift_willThrow();

      v100 = v92;
      goto LABEL_28;
    }

    v64 = *(v0 + 96);
    v63 = *(v0 + 104);
    v66 = *(v0 + 112);
    v65 = *(v0 + 120);
    v67 = *(v0 + 128);
    sub_1DB50BEB0();
    v114 = *(v0 + 248);
    v116 = *(v0 + 240);
    __swift_project_boxed_opaque_existential_1((v0 + 216), v116);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_1DB50EE90;
    v128 = sub_1DB301BC0(0, 40, 0, MEMORY[0x1E69E7CC0]);
    v69._countAndFlagsBits = 0xD000000000000027;
    v69._object = 0x80000001DB52AE60;
    LogMessage.StringInterpolation.appendLiteral(_:)(v69);
    *(v0 + 592) = &type metadata for DaemonResponseCodableError;
    v70 = swift_allocObject();
    *(v0 + 568) = v70;
    v124 = v64;
    v70[2] = v64;
    v70[3] = v63;
    v70[4] = v66;
    v70[5] = v65;
    v118 = v65;
    v70[6] = v67;
    sub_1DB30C4B8(v0 + 568, v0 + 600, &qword_1ECC426B0, &qword_1DB50EEB0);
    *(v0 + 496) = 0u;
    *(v0 + 512) = 0u;

    sub_1DB30C2D8(v0 + 600, v0 + 496, &qword_1ECC426B0, &qword_1DB50EEB0);
    *(v0 + 528) = 0;
    v71 = v128;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v71 = sub_1DB301BC0(0, *(v128 + 2) + 1, 1, v128);
    }

    v73 = *(v71 + 2);
    v72 = *(v71 + 3);
    if (v73 >= v72 >> 1)
    {
      v71 = sub_1DB301BC0((v72 > 1), v73 + 1, 1, v71);
    }

    *(v71 + 2) = v73 + 1;
    v74 = &v71[40 * v73];
    v75 = *(v0 + 496);
    v76 = *(v0 + 512);
    v74[64] = *(v0 + 528);
    *(v74 + 2) = v75;
    *(v74 + 3) = v76;
    sub_1DB30623C(v0 + 568, &qword_1ECC426B0, &qword_1DB50EEB0);
    v77._countAndFlagsBits = 0;
    v77._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v77);
    *(v68 + 32) = v71;
    Logger.error(_:)(v68, v116, v114);

    __swift_destroy_boxed_opaque_existential_0((v0 + 216));
    v78 = sub_1DB3E3700();
    v79 = *(v0 + 1056);
    v115 = *(v0 + 936);
    if (v78)
    {
      v80 = v78;

      type metadata accessor for DaemonError();
      sub_1DB365680(&qword_1ECC43900, type metadata accessor for DaemonError);
      swift_allocError();
      *v81 = v80;
    }

    else
    {
      type metadata accessor for DaemonError();
      sub_1DB365680(&qword_1ECC43900, type metadata accessor for DaemonError);
      swift_allocError();
      v102 = v101;
      v103 = swift_allocError();
      *v104 = v124;
      v104[1] = v63;
      v104[2] = v66;
      v104[3] = v118;
      v104[4] = v67;
      *v102 = v103;
    }

    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v49 = *(v0 + 880);
  }

  v100 = v115;
LABEL_28:
  sub_1DB3632DC(v100, "DaemonSession.send", 18, 2);

  v105 = *(v0 + 1048);
  v106 = *(v0 + 1032);
  v107 = *(v0 + 1024);
  v108 = *(v0 + 1000);
  v109 = *(v0 + 992);
  v110 = *(v0 + 968);
  v111 = *(v0 + 960);

  v58 = *(v0 + 8);
LABEL_29:

  return v58();
}

uint64_t sub_1DB362898()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  v1 = *(v0 + 1096);
  v2 = *(v0 + 968);
  v3 = *(v0 + 944);
  *(v0 + 888) = v1;
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 1072);
    v6 = *(v0 + 1064);
    v7 = *(v0 + 968);
    v8 = *(v0 + 960);
    v9 = *(v0 + 952);
    v10 = *(v0 + 944);

    (*(v9 + 32))(v8, v7, v10);
    sub_1DB50BEB0();
    v87 = *(v0 + 328);
    v88 = *(v0 + 320);
    __swift_project_boxed_opaque_existential_1((v0 + 296), v88);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1DB50EE90;
    v91 = sub_1DB301BC0(0, 24, 0, MEMORY[0x1E69E7CC0]);
    v12._object = 0x80000001DB52AE90;
    v12._countAndFlagsBits = 0xD000000000000017;
    LogMessage.StringInterpolation.appendLiteral(_:)(v12);
    *(v0 + 656) = v10;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 632));
    v83 = *(v9 + 16);
    v83(boxed_opaque_existential_0, v8, v10);
    sub_1DB30C4B8(v0 + 632, v0 + 696, &qword_1ECC426B0, &qword_1DB50EEB0);
    *(v0 + 456) = 0u;
    *(v0 + 472) = 0u;
    sub_1DB30C2D8(v0 + 696, v0 + 456, &qword_1ECC426B0, &qword_1DB50EEB0);
    *(v0 + 488) = 0;
    v14 = v91;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_1DB301BC0(0, *(v91 + 2) + 1, 1, v91);
    }

    v16 = *(v14 + 2);
    v15 = *(v14 + 3);
    if (v16 >= v15 >> 1)
    {
      v14 = sub_1DB301BC0((v15 > 1), v16 + 1, 1, v14);
    }

    v17 = *(v0 + 960);
    v18 = *(v0 + 952);
    v19 = *(v0 + 944);
    v81 = *(v0 + 1056);
    v82 = *(v0 + 936);
    *(v14 + 2) = v16 + 1;
    v20 = &v14[40 * v16];
    v21 = *(v0 + 456);
    v22 = *(v0 + 472);
    v20[64] = *(v0 + 488);
    *(v20 + 2) = v21;
    *(v20 + 3) = v22;
    sub_1DB30623C(v0 + 632, &qword_1ECC426B0, &qword_1DB50EEB0);
    v23._countAndFlagsBits = 0;
    v23._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v23);
    *(v11 + 32) = v14;
    Logger.error(_:)(v11, v88, v87);

    __swift_destroy_boxed_opaque_existential_0((v0 + 296));
    type metadata accessor for DaemonError();
    sub_1DB365680(&qword_1ECC43900, type metadata accessor for DaemonError);
    swift_allocError();
    v83(v24, v17, v19);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v18 + 8))(v17, v19);

    v25 = v82;
  }

  else
  {

    *(v0 + 880) = v1;
    v26 = v1;
    v27 = swift_dynamicCast();
    v28 = *(v0 + 1072);
    v29 = *(v0 + 1064);
    if (v27)
    {
      v89 = (v0 + 880);

      v31 = *(v0 + 96);
      v30 = *(v0 + 104);
      v33 = *(v0 + 112);
      v32 = *(v0 + 120);
      v34 = *(v0 + 128);
      sub_1DB50BEB0();
      v84 = *(v0 + 248);
      v85 = *(v0 + 240);
      __swift_project_boxed_opaque_existential_1((v0 + 216), v85);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_1DB50EE90;
      v92 = sub_1DB301BC0(0, 40, 0, MEMORY[0x1E69E7CC0]);
      v36._countAndFlagsBits = 0xD000000000000027;
      v36._object = 0x80000001DB52AE60;
      LogMessage.StringInterpolation.appendLiteral(_:)(v36);
      *(v0 + 592) = &type metadata for DaemonResponseCodableError;
      v37 = swift_allocObject();
      *(v0 + 568) = v37;
      v37[2] = v31;
      v37[3] = v30;
      v37[4] = v33;
      v37[5] = v32;
      v37[6] = v34;
      sub_1DB30C4B8(v0 + 568, v0 + 600, &qword_1ECC426B0, &qword_1DB50EEB0);
      *(v0 + 496) = 0u;
      *(v0 + 512) = 0u;

      sub_1DB30C2D8(v0 + 600, v0 + 496, &qword_1ECC426B0, &qword_1DB50EEB0);
      *(v0 + 528) = 0;
      v38 = v92;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_1DB301BC0(0, *(v92 + 2) + 1, 1, v92);
      }

      v40 = *(v38 + 2);
      v39 = *(v38 + 3);
      if (v40 >= v39 >> 1)
      {
        v38 = sub_1DB301BC0((v39 > 1), v40 + 1, 1, v38);
      }

      *(v38 + 2) = v40 + 1;
      v41 = &v38[40 * v40];
      v42 = *(v0 + 496);
      v43 = *(v0 + 512);
      v41[64] = *(v0 + 528);
      *(v41 + 2) = v42;
      *(v41 + 3) = v43;
      sub_1DB30623C(v0 + 568, &qword_1ECC426B0, &qword_1DB50EEB0);
      v44._countAndFlagsBits = 0;
      v44._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v44);
      *(v35 + 32) = v38;
      Logger.error(_:)(v35, v85, v84);

      __swift_destroy_boxed_opaque_existential_0((v0 + 216));
      v45 = sub_1DB3E3700();
      v46 = *(v0 + 1056);
      v47 = *(v0 + 936);
      if (v45)
      {
        v48 = v45;

        type metadata accessor for DaemonError();
        sub_1DB365680(&qword_1ECC43900, type metadata accessor for DaemonError);
        swift_allocError();
        *v49 = v48;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        v25 = v47;
      }

      else
      {
        type metadata accessor for DaemonError();
        sub_1DB365680(&qword_1ECC43900, type metadata accessor for DaemonError);
        swift_allocError();
        v86 = v47;
        v69 = v68;
        sub_1DB36562C();
        v70 = swift_allocError();
        *v71 = v31;
        v71[1] = v30;
        v71[2] = v33;
        v71[3] = v32;
        v71[4] = v34;
        *v69 = v70;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        v25 = v86;
      }
    }

    else
    {

      sub_1DB50BEB0();
      v50 = *(v0 + 160);
      v90 = *(v0 + 168);
      __swift_project_boxed_opaque_existential_1((v0 + 136), v50);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_1DB50EE90;
      v93 = sub_1DB301BC0(0, 48, 0, MEMORY[0x1E69E7CC0]);
      v52._countAndFlagsBits = 0xD00000000000002FLL;
      v52._object = 0x80000001DB52AE30;
      LogMessage.StringInterpolation.appendLiteral(_:)(v52);
      swift_getErrorValue();
      v53 = *(v0 + 856);
      v54 = *(v0 + 864);
      *(v0 + 688) = v54;
      v55 = __swift_allocate_boxed_opaque_existential_0((v0 + 664));
      (*(*(v54 - 8) + 16))(v55, v53, v54);
      sub_1DB30C4B8(v0 + 664, v0 + 536, &qword_1ECC426B0, &qword_1DB50EEB0);
      *(v0 + 376) = 0u;
      *(v0 + 392) = 0u;
      sub_1DB30C2D8(v0 + 536, v0 + 376, &qword_1ECC426B0, &qword_1DB50EEB0);
      *(v0 + 408) = 0;
      v56 = v93;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v56 = sub_1DB301BC0(0, *(v93 + 2) + 1, 1, v93);
      }

      v58 = *(v56 + 2);
      v57 = *(v56 + 3);
      if (v58 >= v57 >> 1)
      {
        v56 = sub_1DB301BC0((v57 > 1), v58 + 1, 1, v56);
      }

      v59 = *(v0 + 1056);
      v60 = *(v0 + 936);
      *(v56 + 2) = v58 + 1;
      v61 = &v56[40 * v58];
      v62 = *(v0 + 376);
      v63 = *(v0 + 392);
      v61[64] = *(v0 + 408);
      *(v61 + 2) = v62;
      *(v61 + 3) = v63;
      sub_1DB30623C(v0 + 664, &qword_1ECC426B0, &qword_1DB50EEB0);
      v64._countAndFlagsBits = 0;
      v64._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v64);
      *(v51 + 32) = v56;
      Logger.error(_:)(v51, v50, v90);

      __swift_destroy_boxed_opaque_existential_0((v0 + 136));
      type metadata accessor for DaemonError();
      sub_1DB365680(&qword_1ECC43900, type metadata accessor for DaemonError);
      swift_allocError();
      v66 = v65;
      v67 = v1;
      sub_1DB4F1C64(v1, v66);
      swift_willThrow();

      v25 = v60;
    }
  }

  sub_1DB3632DC(v25, "DaemonSession.send", 18, 2);

  v72 = *(v0 + 1048);
  v73 = *(v0 + 1032);
  v74 = *(v0 + 1024);
  v75 = *(v0 + 1000);
  v76 = *(v0 + 992);
  v77 = *(v0 + 968);
  v78 = *(v0 + 960);

  v79 = *(v0 + 8);

  return v79();
}

uint64_t sub_1DB3632DC(uint64_t a1, const char *a2, uint64_t a3, char a4)
{
  v23 = a2;
  v5 = sub_1DB50A280();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1DB50A230();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v21[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_1DB50A250();
  sub_1DB50A2A0();
  v22 = sub_1DB50B060();
  result = sub_1DB50B0E0();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v11 + 8))(v14, v10);
  }

  if ((a4 & 1) == 0)
  {
    v17 = v23;
    if (v23)
    {
LABEL_9:

      sub_1DB50A2D0();

      if ((*(v6 + 88))(v9, v5) == *MEMORY[0x1E69E93E8])
      {
        v18 = "[Error] Interval already ended";
      }

      else
      {
        (*(v6 + 8))(v9, v5);
        v18 = "";
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = sub_1DB50A210();
      _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v15, v22, v20, v17, v18, v19, 2u);
      MEMORY[0x1E1288220](v19, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v23 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v23 & 0xFFFFF800) != 0xD800)
  {
    if (v23 >> 16 <= 0x10)
    {
      v17 = &v24;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1DB363584(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v55 = a4;
  v59 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v56 = *(AssociatedTypeWitness - 8);
  v10 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v58 = &v44 - v11;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v53 = a6;
  swift_getAssociatedConformanceWitness();
  v12 = type metadata accessor for DaemonResponse();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC42A00, &unk_1DB5102D0);
  v54 = v12;
  v61 = sub_1DB50AB10();
  v13 = *(v61 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v16 = &v44 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46EB0, &qword_1DB50F750);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v44 - v19;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v21 = swift_allocObject();
  v60 = v21;
  *(v21 + 16) = 0;
  v44 = v21 + 16;
  *(v21 + 20) = 0;
  v22 = sub_1DB50ABA0();
  (*(*(v22 - 8) + 56))(v20, 1, 1, v22);
  sub_1DB30BE90(a3, &v62);
  v23 = *(v13 + 16);
  v49 = v13 + 16;
  v52 = v23;
  v51 = v20;
  v23(v16, v59, v61);
  v24 = sub_1DB365680(&qword_1ECC43910, type metadata accessor for DaemonSessionImplementation);
  v25 = *(v13 + 80);
  v26 = swift_allocObject();
  v48 = v14;
  v27 = v26;
  v26[2] = a2;
  v26[3] = v24;
  v45 = a5;
  v26[4] = a5;
  v28 = v53;
  v26[5] = v53;
  v26[6] = a2;
  v47 = sub_1DB3659D8;
  v29 = v60;
  v26[7] = sub_1DB3659D8;
  v26[8] = v29;
  sub_1DB2FEA0C(&v62, (v26 + 9));
  v30 = *(v13 + 32);
  v30(v27 + ((v25 + 112) & ~v25), v16, v61);
  swift_retain_n();
  swift_retain_n();
  v31 = sub_1DB388F14(0, 0, v51, &unk_1DB512580, v27);
  v51 = a3[3];
  v46 = a3[4];
  v50 = __swift_project_boxed_opaque_existential_1(a3, v51);
  v32 = v45;
  (*(v28 + 88))(v45, v28);
  v33 = v61;
  v52(v16, v59, v61);
  v34 = (v25 + 56) & ~v25;
  v35 = swift_allocObject();
  v35[2] = v32;
  v35[3] = v28;
  v35[4] = v47;
  v35[5] = v29;
  v35[6] = v31;
  v30(v35 + v34, v16, v33);
  v36 = v46;
  v37 = *(v46 + 8);
  v38 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

  v40 = v54;
  WitnessTable = swift_getWitnessTable();
  v42 = v58;
  v37(v58, sub_1DB365BA8, v35, v38, v40, AssociatedConformanceWitness, WitnessTable, v51, v36);
  (*(v56 + 8))(v42, v38);
}

uint64_t sub_1DB363F04(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 16));
  v2 = *(a1 + 20);
  if ((v2 & 1) == 0)
  {
    *(a1 + 20) = 1;
  }

  os_unfair_lock_unlock((a1 + 16));
  return v2 ^ 1u;
}

uint64_t sub_1DB363F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[62] = v15;
  v8[63] = v16;
  v8[60] = a7;
  v8[61] = a8;
  v8[58] = a5;
  v8[59] = a6;
  v8[57] = a4;
  v10 = sub_1DB50B4F0();
  v8[64] = v10;
  v11 = *(v10 - 8);
  v8[65] = v11;
  v12 = *(v11 + 64) + 15;
  v8[66] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB364020, a4, 0);
}

uint64_t sub_1DB364020()
{
  if (qword_1ECC42298 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 456);
  *(v0 + 536) = qword_1ECC46748;
  sub_1DB50BEB0();
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
  *(v0 + 544) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DB50EE90;
  v21 = sub_1DB301BC0(0, 49, 0, MEMORY[0x1E69E7CC0]);
  v5._object = 0x80000001DB52B090;
  v5._countAndFlagsBits = 0xD000000000000028;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  v6 = *(v1 + 120);
  *(v0 + 552) = v6;
  *(v0 + 280) = MEMORY[0x1E69E63B0];
  *(v0 + 256) = v6;
  sub_1DB30C4B8(v0 + 256, v0 + 288, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 176) = 0u;
  *(v0 + 192) = 0u;
  sub_1DB30C2D8(v0 + 288, v0 + 176, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 208) = 0;
  v7 = v21;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_1DB301BC0(0, *(v21 + 2) + 1, 1, v21);
  }

  v9 = *(v7 + 2);
  v8 = *(v7 + 3);
  if (v9 >= v8 >> 1)
  {
    v7 = sub_1DB301BC0((v8 > 1), v9 + 1, 1, v7);
  }

  v10 = *(v0 + 528);
  *(v7 + 2) = v9 + 1;
  v11 = &v7[40 * v9];
  v12 = *(v0 + 176);
  v13 = *(v0 + 192);
  v11[64] = *(v0 + 208);
  *(v11 + 2) = v12;
  *(v11 + 3) = v13;
  sub_1DB30623C(v0 + 256, &qword_1ECC426B0, &qword_1DB50EEB0);
  v14._countAndFlagsBits = 0x73646E6F63657320;
  v14._object = 0xE800000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v14);
  *(v4 + 32) = v7;
  Logger.debug(_:)(v4, v2, v3);

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v15 = sub_1DB50BE50();
  v17 = v16;
  sub_1DB50BC50();
  v18 = swift_task_alloc();
  *(v0 + 560) = v18;
  *v18 = v0;
  v18[1] = sub_1DB364324;
  v19 = *(v0 + 528);

  return sub_1DB487C44(v15, v17, 0, 0, 1);
}

uint64_t sub_1DB364324()
{
  v2 = *v1;
  v3 = *(*v1 + 560);
  v4 = *(*v1 + 528);
  v5 = *(*v1 + 520);
  v6 = *(*v1 + 512);
  v7 = *v1;
  *(*v1 + 568) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 456);
  if (v0)
  {
    v9 = sub_1DB364990;
  }

  else
  {
    v9 = sub_1DB3644AC;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, 0);
}

uint64_t sub_1DB3644AC()
{
  v1 = *(v0 + 552);
  v2 = *(v0 + 544);
  v3 = *(v0 + 536);
  sub_1DB50BEB0();
  v4 = *(v0 + 120);
  v34 = *(v0 + 128);
  __swift_project_boxed_opaque_existential_1((v0 + 96), v4);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1DB50EE90;
  v36 = sub_1DB301BC0(0, 80, 0, MEMORY[0x1E69E7CC0]);
  v6._countAndFlagsBits = 0xD00000000000002BLL;
  v6._object = 0x80000001DB52B110;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  *(v0 + 376) = MEMORY[0x1E69E63B0];
  *(v0 + 352) = v1;
  sub_1DB30C4B8(v0 + 352, v0 + 384, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 216) = 0u;
  *(v0 + 232) = 0u;
  sub_1DB30C2D8(v0 + 384, v0 + 216, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 248) = 0;
  v7 = v36;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_1DB301BC0(0, *(v36 + 2) + 1, 1, v36);
  }

  v9 = *(v7 + 2);
  v8 = *(v7 + 3);
  if (v9 >= v8 >> 1)
  {
    v7 = sub_1DB301BC0((v8 > 1), v9 + 1, 1, v7);
  }

  v10 = *(v0 + 464);
  v11 = *(v0 + 472);
  *(v7 + 2) = v9 + 1;
  v12 = &v7[40 * v9];
  v13 = *(v0 + 216);
  v14 = *(v0 + 232);
  v12[64] = *(v0 + 248);
  *(v12 + 2) = v13;
  *(v12 + 3) = v14;
  sub_1DB30623C(v0 + 352, &qword_1ECC426B0, &qword_1DB50EEB0);
  v15._object = 0x80000001DB52B140;
  v15._countAndFlagsBits = 0xD000000000000024;
  LogMessage.StringInterpolation.appendLiteral(_:)(v15);
  *(v5 + 32) = v7;
  Logger.error(_:)(v5, v4, v34);

  v16 = __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  if (v10(v16))
  {
    v17 = *(v0 + 552);
    v18 = *(v0 + 544);
    v19 = *(v0 + 536);
    v32 = *(v0 + 496);
    v33 = *(v0 + 504);
    v20 = *(v0 + 480);
    v35 = *(v0 + 488);
    sub_1DB50BEB0();
    v21 = *(v0 + 160);
    v22 = *(v0 + 168);
    __swift_project_boxed_opaque_existential_1((v0 + 136), v21);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1DB50EE90;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1DB50EE90;
    *(v0 + 440) = MEMORY[0x1E69E6158];
    *(v0 + 416) = 0xD000000000000023;
    *(v0 + 424) = 0x80000001DB52B170;
    *(v24 + 48) = 0u;
    *(v24 + 32) = 0u;
    sub_1DB30C2D8(v0 + 416, v24 + 32, &qword_1ECC426B0, &qword_1DB50EEB0);
    *(v24 + 64) = 0;
    *(v23 + 32) = v24;
    Logger.info(_:)(v23, v21, v22);

    __swift_destroy_boxed_opaque_existential_0((v0 + 136));
    v25 = v20[3];
    v26 = v20[4];
    __swift_project_boxed_opaque_existential_1(v20, v25);
    (*(v26 + 16))(0xD000000000000024, 0x80000001DB52B1A0, v25, v26);
    type metadata accessor for DaemonError();
    sub_1DB365680(&qword_1ECC43900, type metadata accessor for DaemonError);
    v27 = swift_allocError();
    *v28 = v17;
    swift_storeEnumTagMultiPayload();
    *(v0 + 448) = v27;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    type metadata accessor for DaemonResponse();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC42A00, &unk_1DB5102D0);
    sub_1DB50AB10();
    sub_1DB50AAF0();
  }

  v29 = *(v0 + 528);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1DB364990()
{
  v1 = v0[71];
  v2 = v0[68];
  v3 = v0[67];
  sub_1DB50BEB0();
  v4 = v0[10];
  v5 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v4);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DB50EE90;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1DB50EE90;
  v0[43] = MEMORY[0x1E69E6158];
  v0[40] = 0xD00000000000004BLL;
  v0[41] = 0x80000001DB52B0C0;
  *(v7 + 48) = 0u;
  *(v7 + 32) = 0u;
  sub_1DB30C2D8((v0 + 40), v7 + 32, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v7 + 64) = 0;
  *(v6 + 32) = v7;
  Logger.debug(_:)(v6, v4, v5);

  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v8 = v0[66];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1DB364B04(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v44 = a5;
  v43 = a4;
  v46 = a3;
  v47 = a2;
  v45 = a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v41 = type metadata accessor for DaemonResponse();
  v40 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC42A00, &unk_1DB5102D0);
  v39 = sub_1DB50BDA0();
  v42 = *(v39 - 8);
  v5 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v7 = (&v38 - v6);
  if (qword_1ECC42298 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v8 = v58;
  v9 = v59;
  __swift_project_boxed_opaque_existential_1(v57, v58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v10 = swift_allocObject();
  v48 = xmmword_1DB50EE90;
  *(v10 + 16) = xmmword_1DB50EE90;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
  v11 = swift_allocObject();
  *(v11 + 16) = v48;
  *(&v51 + 1) = MEMORY[0x1E69E6158];
  *&v50 = 0xD00000000000002DLL;
  *(&v50 + 1) = 0x80000001DB52AFE0;
  *(v11 + 48) = 0u;
  *(v11 + 32) = 0u;
  sub_1DB30C2D8(&v50, v11 + 32, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v11 + 64) = 0;
  *(v10 + 32) = v11;
  Logger.debug(_:)(v10, v8, v9);

  v12 = __swift_destroy_boxed_opaque_existential_0(v57);
  if ((v47(v12) & 1) == 0)
  {
    sub_1DB50BEB0();
    v33 = v58;
    v34 = v59;
    __swift_project_boxed_opaque_existential_1(v57, v58);
    v35 = swift_allocObject();
    *(v35 + 16) = v48;
    v36 = swift_allocObject();
    *(v36 + 16) = v48;
    *(&v51 + 1) = MEMORY[0x1E69E6158];
    *&v50 = 0xD000000000000044;
    *(&v50 + 1) = 0x80000001DB52B010;
    *(v36 + 48) = 0u;
    *(v36 + 32) = 0u;
    sub_1DB30C2D8(&v50, v36 + 32, &qword_1ECC426B0, &qword_1DB50EEB0);
    *(v36 + 64) = 0;
    *(v35 + 32) = v36;
    Logger.debug(_:)(v35, v33, v34);
LABEL_11:

    return __swift_destroy_boxed_opaque_existential_0(v57);
  }

  sub_1DB50AC60();
  v13 = sub_1DB50AB10();
  v14 = v45;
  sub_1DB36519C(v45, v13);
  v15 = v42;
  v16 = v14;
  v17 = v39;
  (*(v42 + 16))(v7, v16, v39);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v7;
    sub_1DB50BEB0();
    v19 = v58;
    v20 = v59;
    __swift_project_boxed_opaque_existential_1(v57, v58);
    v21 = swift_allocObject();
    *(v21 + 16) = v48;
    v56 = sub_1DB301BC0(0, 45, 0, MEMORY[0x1E69E7CC0]);
    v22._object = 0x80000001DB52B060;
    v22._countAndFlagsBits = 0xD00000000000002CLL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v22);
    swift_getErrorValue();
    v23 = v53;
    v24 = v54;
    v55[3] = v54;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v55);
    (*(*(v24 - 8) + 16))(boxed_opaque_existential_0, v23, v24);
    sub_1DB30C4B8(v55, v49, &qword_1ECC426B0, &qword_1DB50EEB0);
    v50 = 0u;
    v51 = 0u;
    sub_1DB30C2D8(v49, &v50, &qword_1ECC426B0, &qword_1DB50EEB0);
    v52 = 0;
    v26 = v56;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v26 = sub_1DB301BC0(0, *(v26 + 2) + 1, 1, v26);
      v56 = v26;
    }

    v28 = *(v26 + 2);
    v27 = *(v26 + 3);
    if (v28 >= v27 >> 1)
    {
      v26 = sub_1DB301BC0((v27 > 1), v28 + 1, 1, v26);
    }

    *(v26 + 2) = v28 + 1;
    v29 = &v26[40 * v28];
    v30 = v50;
    v31 = v51;
    v29[64] = v52;
    *(v29 + 2) = v30;
    *(v29 + 3) = v31;
    v56 = v26;
    sub_1DB30623C(v55, &qword_1ECC426B0, &qword_1DB50EEB0);
    v32._countAndFlagsBits = 0;
    v32._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v32);
    *(v21 + 32) = v56;
    Logger.error(_:)(v21, v19, v20);

    goto LABEL_11;
  }

  return (*(v15 + 8))(v7, v17);
}

uint64_t sub_1DB36519C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 24);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 + 32);
  v17 = sub_1DB50BDA0();
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v24 - v20;
  (*(v22 + 16))(&v24 - v20, a1, v17, v19);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v14, v21, v9);
    return sub_1DB50AAF0();
  }

  else
  {
    (*(v4 + 32))(v7, v21, v3);
    return sub_1DB50AB00();
  }
}

uint64_t DaemonSessionImplementation.deinit()
{
  v1 = *(v0 + 136);

  v2 = OBJC_IVAR____TtC7JetCore27DaemonSessionImplementation_signposter;
  v3 = sub_1DB50A270();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  sub_1DB30623C(v0 + OBJC_IVAR____TtC7JetCore27DaemonSessionImplementation_sessionIfValid, &qword_1ECC43918, &qword_1DB512418);

  v4 = *(v0 + OBJC_IVAR____TtC7JetCore27DaemonSessionImplementation_xpcSessionProviderFactory + 8);
  sub_1DB365724(*(v0 + OBJC_IVAR____TtC7JetCore27DaemonSessionImplementation_xpcSessionProviderFactory));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t DaemonSessionImplementation.__deallocating_deinit()
{
  v1 = *(v0 + 136);

  v2 = OBJC_IVAR____TtC7JetCore27DaemonSessionImplementation_signposter;
  v3 = sub_1DB50A270();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  sub_1DB30623C(v0 + OBJC_IVAR____TtC7JetCore27DaemonSessionImplementation_sessionIfValid, &qword_1ECC43918, &qword_1DB512418);

  v4 = *(v0 + OBJC_IVAR____TtC7JetCore27DaemonSessionImplementation_xpcSessionProviderFactory + 8);
  sub_1DB365724(*(v0 + OBJC_IVAR____TtC7JetCore27DaemonSessionImplementation_xpcSessionProviderFactory));
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1DB365568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1DB306AF4;

  return DaemonSessionImplementation.send<A>(_:)(a1, a2, a3, a4);
}

unint64_t sub_1DB36562C()
{
  result = qword_1ECC43908;
  if (!qword_1ECC43908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC43908);
  }

  return result;
}

uint64_t sub_1DB365680(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for DaemonSessionImplementation()
{
  result = qword_1ECC43920;
  if (!qword_1ECC43920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DB365724(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t dispatch thunk of DaemonSession.send<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 8);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_1DB306AF4;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1DB3658D4()
{
  result = sub_1DB50A270();
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

uint64_t sub_1DB3659E0(uint64_t a1)
{
  v3 = v2;
  v4 = v1[4];
  v5 = v1[5];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for DaemonResponse();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC42A00, &unk_1DB5102D0);
  v6 = *(sub_1DB50AB10() - 8);
  v7 = (*(v6 + 80) + 112) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[6];
  v11 = v1[7];
  v12 = v1[8];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1DB306AF4;

  return sub_1DB363F48(a1, v8, v9, v10, v11, v12, (v1 + 9), v1 + v7);
}

uint64_t sub_1DB365BA8(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for DaemonResponse();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC42A00, &unk_1DB5102D0);
  v5 = *(sub_1DB50AB10() - 8);
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1 + ((*(v5 + 80) + 56) & ~*(v5 + 80));

  return sub_1DB364B04(a1, v6, v7, v8, v9);
}

Swift::String __swiftcall CryptoAlgorithm.makeDigest(fromContentsOf:)(Swift::String fromContentsOf)
{
  v11[2] = *MEMORY[0x1E69E9840];
  *v1;
  MEMORY[0x1EEE9AC00](fromContentsOf._countAndFlagsBits);
  sub_1DB365DAC(&v11[-1] - v2, v2, v3, v4, v5, v11);
  v6 = v11[0];
  v7 = v11[1];
  v8 = *MEMORY[0x1E69E9840];
  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

uint64_t sub_1DB365DAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, void *a6@<X8>)
{
  v7 = a1;
  result = sub_1DB366494(a3, a4, a5 & 1, a1);
  if (a2 + 0x4000000000000000 < 0)
  {
    __break(1u);
  }

  else
  {
    result = MEMORY[0x1E1285C10](2 * a2);
    if (v7 && a2)
    {
      v10 = MEMORY[0x1E69E7508];
      v11 = MEMORY[0x1E69E7558];
      do
      {
        v12 = *v7++;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
        v13 = swift_allocObject();
        *(v13 + 16) = xmmword_1DB50EE90;
        *(v13 + 56) = v10;
        *(v13 + 64) = v11;
        *(v13 + 32) = v12;
        v14 = sub_1DB50A680();
        MEMORY[0x1E1285C70](v14);

        --a2;
      }

      while (a2);
    }

    *a6 = 0;
    a6[1] = 0xE000000000000000;
  }

  return result;
}

size_t sub_1DB365ED8(const char *a1, char a2, uint64_t a3)
{
  result = strlen(a1);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (HIDWORD(result))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v7 = MEMORY[0x1E69E9498];
  if (a2)
  {
    v7 = MEMORY[0x1E69E94C0];
  }

  return v7(a1, result, a3);
}

uint64_t CryptoAlgorithm.hashValue.getter()
{
  v1 = *v0;
  sub_1DB50BCF0();
  MEMORY[0x1E12871F0](v1);
  return sub_1DB50BD30();
}

unint64_t sub_1DB365FEC()
{
  result = qword_1ECC43940;
  if (!qword_1ECC43940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC43940);
  }

  return result;
}

JetCore::LogMessage::StringInterpolation __swiftcall LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)(JetCore::LogMessage::StringInterpolation literalCapacity, Swift::Int interpolationCount)
{
  v3 = v2;
  if (__OFADD__(literalCapacity.components._rawValue, interpolationCount))
  {
    __break(1u);
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
    v2->components._rawValue = MEMORY[0x1E69E7CC0];
    literalCapacity.components._rawValue = sub_1DB301BC0(0, (literalCapacity.components._rawValue + interpolationCount) & ~((literalCapacity.components._rawValue + interpolationCount) >> 63), 0, v4);
    v3->components._rawValue = literalCapacity.components._rawValue;
  }

  return literalCapacity;
}

Swift::Void __swiftcall LogMessage.StringInterpolation.appendLiteral(_:)(Swift::String a1)
{
  v2 = HIBYTE(a1._object) & 0xF;
  if ((a1._object & 0x2000000000000000) == 0)
  {
    v2 = a1._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v11 = MEMORY[0x1E69E6158];
    v10 = a1;
    v12 = 0u;
    v13 = 0u;

    sub_1DB301D4C(&v10, &v12);
    v14 = 0;
    v3 = *v1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v1 = v3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v3 = sub_1DB301BC0(0, *(v3 + 2) + 1, 1, v3);
      *v1 = v3;
    }

    v6 = *(v3 + 2);
    v5 = *(v3 + 3);
    if (v6 >= v5 >> 1)
    {
      v3 = sub_1DB301BC0((v5 > 1), v6 + 1, 1, v3);
    }

    *(v3 + 2) = v6 + 1;
    v7 = &v3[40 * v6];
    v8 = v12;
    v9 = v13;
    v7[64] = v14;
    *(v7 + 2) = v8;
    *(v7 + 3) = v9;
    *v1 = v3;
  }
}

JetCore::LogMessage __swiftcall LogMessage.init(stringLiteral:)(Swift::String stringLiteral)
{
  object = stringLiteral._object;
  countAndFlagsBits = stringLiteral._countAndFlagsBits;
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1DB50EE90;
  v7[3] = MEMORY[0x1E69E6158];
  v7[0] = countAndFlagsBits;
  v7[1] = object;
  *(v5 + 48) = 0u;
  *(v5 + 32) = 0u;
  result.components._rawValue = sub_1DB301D4C(v7, v5 + 32);
  *(v5 + 64) = 0;
  *v4 = v5;
  return result;
}

__n128 sub_1DB366250(uint64_t a1, char a2)
{
  sub_1DB301CDC(a1, v11);
  v12 = 0u;
  v13 = 0u;
  sub_1DB301D4C(v11, &v12);
  v14 = a2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_1DB301BC0(0, *(v4 + 2) + 1, 1, v4);
    *v2 = v4;
  }

  v7 = *(v4 + 2);
  v6 = *(v4 + 3);
  if (v7 >= v6 >> 1)
  {
    v4 = sub_1DB301BC0((v6 > 1), v7 + 1, 1, v4);
  }

  *(v4 + 2) = v7 + 1;
  v8 = &v4[40 * v7];
  result = v12;
  v10 = v13;
  v8[64] = v14;
  *(v8 + 2) = result;
  *(v8 + 3) = v10;
  *v2 = v4;
  return result;
}

__n128 LogMessage.StringInterpolation.appendInterpolation(identity:)()
{
  v1 = v0;
  swift_unknownObjectRetain();
  sub_1DB50A600();
  sub_1DB34FEF0();
  v2 = sub_1DB50A840();
  v4 = v3;
  swift_getObjectType();
  v15.n128_u64[0] = sub_1DB50BEE0();
  v15.n128_u64[1] = v5;
  MEMORY[0x1E1285C70](7876666, 0xE300000000000000);
  MEMORY[0x1E1285C70](v2, v4);

  v14 = MEMORY[0x1E69E6158];
  swift_unknownObjectRelease();
  v13 = v15;
  v15 = 0u;
  v16 = 0u;
  sub_1DB301D4C(&v13, &v15);
  v17 = 0;
  v6 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_1DB301BC0(0, *(v6 + 2) + 1, 1, v6);
    *v1 = v6;
  }

  v9 = *(v6 + 2);
  v8 = *(v6 + 3);
  if (v9 >= v8 >> 1)
  {
    v6 = sub_1DB301BC0((v8 > 1), v9 + 1, 1, v6);
  }

  *(v6 + 2) = v9 + 1;
  v10 = &v6[40 * v9];
  result = v15;
  v12 = v16;
  v10[64] = v17;
  *(v10 + 2) = result;
  *(v10 + 3) = v12;
  *v1 = v6;
  return result;
}

size_t sub_1DB366494(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    return sub_1DB50B310();
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v5 = a2 & 0xFFFFFFFFFFFFFFFLL;
      if (a3)
      {
        v6 = MEMORY[0x1E69E94C0];
      }

      else
      {
        v6 = MEMORY[0x1E69E9498];
      }

      result = strlen((v5 + 32));
      if ((result & 0x8000000000000000) == 0)
      {
        if (!HIDWORD(result))
        {
          return v6(v5 + 32, result, a4);
        }

        goto LABEL_20;
      }

      goto LABEL_18;
    }

    return sub_1DB50B310();
  }

  *__s = a1;
  v10 = a2 & 0xFFFFFFFFFFFFFFLL;
  if (a3)
  {
    v8 = MEMORY[0x1E69E94C0];
  }

  else
  {
    v8 = MEMORY[0x1E69E9498];
  }

  result = strlen(__s);
  if ((result & 0x8000000000000000) == 0)
  {
    if (!HIDWORD(result))
    {
      return v8(__s, result, a4);
    }

    goto LABEL_19;
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t LogMessage.ValueTreatment.hashValue.getter()
{
  v1 = *v0;
  sub_1DB50BCF0();
  MEMORY[0x1E12871F0](v1);
  return sub_1DB50BD30();
}

uint64_t sub_1DB366658@<X0>(uint64_t a1@<X8>)
{
  sub_1DB50A600();
  sub_1DB34FEF0();
  v2 = sub_1DB50A840();
  v4 = v3;
  swift_getObjectType();
  v7[0] = sub_1DB50BEE0();
  v7[1] = v5;
  MEMORY[0x1E1285C70](7876666, 0xE300000000000000);
  MEMORY[0x1E1285C70](v2, v4);

  v7[3] = MEMORY[0x1E69E6158];
  swift_unknownObjectRelease();
  *a1 = 0u;
  *(a1 + 16) = 0u;
  result = sub_1DB301D4C(v7, a1);
  *(a1 + 32) = 0;
  return result;
}

uint64_t sub_1DB366738(char a1)
{
  v2 = v1;
  v4 = sub_1DB509CA0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v35[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v35[-v10];
  sub_1DB301CDC(v2, &v39);
  if (!v40)
  {
    sub_1DB301DBC(&v39);
    return 0x296C6C756E28;
  }

  sub_1DB30C200(&v39, &v41);
  BYTE1(v39) = *(v2 + 32);
  sub_1DB300B14(&v41, &v39 + 8);
  if ((a1 & 1) == 0)
  {
LABEL_13:
    v25 = v42;
    v26 = __swift_project_boxed_opaque_existential_1(&v41, v42);
    v27 = *(*(v25 - 8) + 64);
    v28 = MEMORY[0x1EEE9AC00](v26);
    (*(v30 + 16))(&v35[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)], v28);
    v31 = sub_1DB50A6C0();
    __swift_destroy_boxed_opaque_existential_0(&v39 + 1);
    __swift_destroy_boxed_opaque_existential_0(&v41);
    return v31;
  }

  if (!BYTE1(v39))
  {
    if (swift_dynamicCast())
    {
      (*(v5 + 32))(v8, v11, v4);
      v13 = sub_1DB509BC0();
      v14 = AMSLogableURL();

      v15 = sub_1DB50A650();
      (*(v5 + 8))(v8, v4);
      __swift_destroy_boxed_opaque_existential_0(&v39 + 1);
      __swift_destroy_boxed_opaque_existential_0(&v41);
      return v15;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
    if (swift_dynamicCast())
    {
      v24 = v36;
      sub_1DB300B14(&v41, &v37);
      if (!swift_dynamicCast())
      {
        v32 = sub_1DB509B10();
        v33 = AMSLogableError();

        v34 = sub_1DB50A650();
        __swift_destroy_boxed_opaque_existential_0(&v39 + 1);
        __swift_destroy_boxed_opaque_existential_0(&v41);
        return v34;
      }
    }

    goto LABEL_13;
  }

  if (BYTE1(v39) == 1)
  {
    __swift_destroy_boxed_opaque_existential_0(&v39 + 1);
    __swift_destroy_boxed_opaque_existential_0(&v41);
    return 0x657461766972705BLL;
  }

  else
  {
    sub_1DB30C200((&v39 + 8), &v37);
    v35[0] = 1;
    v16 = v38;
    v17 = __swift_project_boxed_opaque_existential_1(&v37, v38);
    v18 = *(*(v16 - 8) + 64);
    v19 = MEMORY[0x1EEE9AC00](v17);
    (*(v21 + 16))(&v35[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)], v19);
    v22._countAndFlagsBits = sub_1DB50A6C0();
    countAndFlagsBits = CryptoAlgorithm.makeDigest(fromContentsOf:)(v22)._countAndFlagsBits;

    __swift_destroy_boxed_opaque_existential_0(&v37);
    __swift_destroy_boxed_opaque_existential_0(&v41);
    return countAndFlagsBits;
  }
}

BOOL static LogMessage.isRedactionEnabled.getter()
{
  if (qword_1EE30EDD8 != -1)
  {
    swift_once();
  }

  v0 = off_1EE30EDE0;
  os_unfair_lock_lock(off_1EE30EDE0 + 5);
  os_unfair_lock_opaque_low = LOBYTE(v0[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v0 + 5);
  if (os_unfair_lock_opaque_low == 2)
  {
    LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
  }

  return (os_unfair_lock_opaque_low & 1) == 0;
}

uint64_t sub_1DB366C78@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DB50EE90;
  sub_1DB301CDC(a1, v8);
  *(v6 + 48) = 0u;
  *(v6 + 32) = 0u;
  result = sub_1DB301D4C(v8, v6 + 32);
  *(v6 + 64) = a2;
  *a3 = v6;
  return result;
}

uint64_t static LogMessage.identity(_:)@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1DB50EE90;
  swift_unknownObjectRetain();
  result = sub_1DB366658(v2 + 32);
  *a1 = v2;
  return result;
}

uint64_t static LogMessage.describe(contentsOf:withRedaction:separator:)(uint64_t a1, char a2)
{
  *(swift_allocObject() + 16) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
  sub_1DB314864();
  v2 = sub_1DB50A5E0();

  return v2;
}

uint64_t sub_1DB366E50@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  *(swift_allocObject() + 16) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43948, &qword_1DB512610);
  sub_1DB367E44();
  v5 = sub_1DB50A5E0();
  v7 = v6;

  *a3 = v5;
  a3[1] = v7;
  return result;
}

char *static LogMessage.values(of:withRedaction:)(uint64_t a1, int a2)
{
  LODWORD(v2) = a2;
  v93 = *MEMORY[0x1E69E9840];
  v4 = sub_1DB509CA0();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v72 = v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v76 = v67 - v9;
  v10 = 0;
  v67[0] = 0;
  v11 = *(a1 + 16);
  v12 = a1 + 32;
  v71 = (v13 + 32);
  v70 = (v13 + 8);
  v14 = MEMORY[0x1E69E7CC0];
  v15 = xmmword_1DB50EE90;
  v77 = v2;
LABEL_2:
  while (2)
  {
    if (v11 != v10)
    {
      if (v10 >= v11)
      {
        __break(1u);
      }

      else
      {
        v16 = v10 + 1;
        if (!__OFADD__(v10, 1))
        {
          v17 = *(v12 + 8 * v10);
          v18 = *(v17 + 16);
          ++v10;
          if (!v18)
          {
            continue;
          }

          v80 = v15;
          v68 = v12;
          v69 = v11;
          v75 = v8;
          v10 = v16;
          v19 = v17 + 32;
          v67[1] = v17;

          v20 = 0;
          v74 = v18;
          v73 = v19;
          while (1)
          {
            sub_1DB367D88(v19 + 40 * v20, v91);
            sub_1DB301CDC(v91, &v89);
            if (v90)
            {
              sub_1DB30C200(&v89, &v87);
              if ((v2 & 1) == 0 || !v92)
              {
                sub_1DB300B14(&v87, &v89);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v14 = sub_1DB303014(0, *(v14 + 2) + 1, 1, v14);
                }

                v26 = *(v14 + 2);
                v25 = *(v14 + 3);
                if (v26 >= v25 >> 1)
                {
                  v14 = sub_1DB303014((v25 > 1), v26 + 1, 1, v14);
                }

                __swift_destroy_boxed_opaque_existential_0(&v87);
                sub_1DB367DC0(v91);
                *(v14 + 2) = v26 + 1;
                v21 = &v14[32 * v26];
                v22 = &v89;
                goto LABEL_8;
              }

              __swift_destroy_boxed_opaque_existential_0(&v87);
            }

            else
            {
              sub_1DB301DBC(&v89);
            }

            sub_1DB301CDC(v91, &v87);
            if (v88)
            {
              sub_1DB30C200(&v87, &v89);
              BYTE1(v87) = v92;
              sub_1DB300B14(&v89, &v87 + 8);
              if (!BYTE1(v87))
              {
                v27 = v75;
                if (swift_dynamicCast())
                {
                  v28 = v72;
                  (*v71)(v72, v76, v27);
                  v29 = sub_1DB509BC0();
                  v2 = AMSLogableURL();

                  v24 = sub_1DB50A650();
                  v23 = v30;

                  LOBYTE(v2) = v77;
                  (*v70)(v28, v27);
                }

                else
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
                  if (swift_dynamicCast())
                  {
                    v44 = v81;
                    sub_1DB300B14(&v89, &v85);
                    if (!swift_dynamicCast())
                    {
                      v60 = sub_1DB509B10();
                      v2 = AMSLogableError();

                      v24 = sub_1DB50A650();
                      v23 = v61;

                      LOBYTE(v2) = v77;
                      goto LABEL_44;
                    }
                  }

                  v45 = v90;
                  v46 = __swift_project_boxed_opaque_existential_1(&v89, v90);
                  v47 = *(*(v45 - 8) + 64);
                  v48 = MEMORY[0x1EEE9AC00](v46);
                  (*(v50 + 16))(v67 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0), v48);
                  v24 = sub_1DB50A6C0();
                  v23 = v51;
                }

LABEL_44:
                __swift_destroy_boxed_opaque_existential_0(&v87 + 1);
                __swift_destroy_boxed_opaque_existential_0(&v89);
                goto LABEL_45;
              }

              if (BYTE1(v87) != 1)
              {
                sub_1DB30C200((&v87 + 8), &v85);
                v31 = v86;
                v32 = __swift_project_boxed_opaque_existential_1(&v85, v86);
                v33 = *(*(v31 - 8) + 64);
                v34 = MEMORY[0x1EEE9AC00](v32);
                (*(v36 + 16))(v67 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0), v34);
                v37 = sub_1DB50A6C0();
                v39 = v38;
                MEMORY[0x1EEE9AC00](v37);
                LOBYTE(v67[-4]) = 1;
                v67[-3] = md;
                v67[-2] = 64;
                v79 = v14;
                v78 = v39;
                if ((v39 & 0x1000000000000000) != 0)
                {
                  goto LABEL_49;
                }

                if ((v39 & 0x2000000000000000) != 0)
                {
                  __s = v40;
                  v83 = v39 & 0xFFFFFFFFFFFFFFLL;
                  v52 = strlen(&__s);
                  if ((v52 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_54;
                  }

                  v42 = v52;
                  if (HIDWORD(v52))
                  {
                    goto LABEL_55;
                  }

                  p_s = &__s;
LABEL_39:
                  CC_SHA512(p_s, v42, md);
                }

                else
                {
                  if ((v40 & 0x1000000000000000) != 0)
                  {
                    v41 = strlen(((v39 & 0xFFFFFFFFFFFFFFFLL) + 32));
                    if ((v41 & 0x8000000000000000) != 0)
                    {
                      goto LABEL_56;
                    }

                    v42 = v41;
                    if (HIDWORD(v41))
                    {
                      goto LABEL_57;
                    }

                    p_s = ((v39 & 0xFFFFFFFFFFFFFFFLL) + 32);
                    goto LABEL_39;
                  }

LABEL_49:
                  v64 = v67[0];
                  sub_1DB50B310();
                  v67[0] = v64;
                }

                __s = 0;
                v83 = 0xE000000000000000;
                MEMORY[0x1E1285C10](128);
                v53 = 0;
                v54 = MEMORY[0x1E69E7508];
                v55 = MEMORY[0x1E69E7558];
                do
                {
                  v56 = v53 + 1;
                  v57 = md[v53];
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
                  v58 = swift_allocObject();
                  *(v58 + 16) = v80;
                  *(v58 + 56) = v54;
                  *(v58 + 64) = v55;
                  *(v58 + 32) = v57;
                  v59 = sub_1DB50A680();
                  MEMORY[0x1E1285C70](v59);

                  v53 = v56;
                }

                while (v56 != 64);
                v24 = __s;
                v23 = v83;

                __swift_destroy_boxed_opaque_existential_0(&v85);
                __swift_destroy_boxed_opaque_existential_0(&v89);
                LOBYTE(v2) = v77;
                v14 = v79;
                v18 = v74;
                v19 = v73;
                goto LABEL_45;
              }

              __swift_destroy_boxed_opaque_existential_0(&v87 + 1);
              __swift_destroy_boxed_opaque_existential_0(&v89);
              v23 = 0xE90000000000005DLL;
              v24 = 0x657461766972705BLL;
            }

            else
            {
              sub_1DB301DBC(&v87);
              v23 = 0xE600000000000000;
              v24 = 0x296C6C756E28;
            }

LABEL_45:
            v88 = MEMORY[0x1E69E6158];
            *&v87 = v24;
            *(&v87 + 1) = v23;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v14 = sub_1DB303014(0, *(v14 + 2) + 1, 1, v14);
            }

            v63 = *(v14 + 2);
            v62 = *(v14 + 3);
            if (v63 >= v62 >> 1)
            {
              v14 = sub_1DB303014((v62 > 1), v63 + 1, 1, v14);
            }

            sub_1DB367DC0(v91);
            *(v14 + 2) = v63 + 1;
            v21 = &v14[32 * v63];
            v22 = &v87;
LABEL_8:
            sub_1DB30C200(v22, v21 + 2);
            if (++v20 == v18)
            {

              v8 = v75;
              v11 = v69;
              v12 = v68;
              v15 = v80;
              goto LABEL_2;
            }
          }
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
    }

    break;
  }

  v65 = *MEMORY[0x1E69E9840];
  return v14;
}

char *sub_1DB36789C@<X0>(char *result@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  if (__OFADD__(result, a2))
  {
    __break(1u);
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
    *a3 = MEMORY[0x1E69E7CC0];
    result = sub_1DB301BC0(0, &result[a2] & ~(&result[a2] >> 63), 0, v4);
    *a3 = result;
  }

  return result;
}

uint64_t LogMessage.description.getter()
{
  v1 = *v0;
  if (qword_1EE30EDD8 != -1)
  {
    swift_once();
  }

  v2 = off_1EE30EDE0;
  os_unfair_lock_lock(off_1EE30EDE0 + 5);
  os_unfair_lock_opaque_low = LOBYTE(v2[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v2 + 5);
  if (os_unfair_lock_opaque_low == 2)
  {
    LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
  }

  *(swift_allocObject() + 16) = (os_unfair_lock_opaque_low & 1) == 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43948, &qword_1DB512610);
  sub_1DB367E44();
  v4 = sub_1DB50A5E0();

  return v4;
}

uint64_t sub_1DB367A2C()
{
  v1 = *v0;
  if (qword_1EE30EDD8 != -1)
  {
    swift_once();
  }

  v2 = off_1EE30EDE0;
  os_unfair_lock_lock(off_1EE30EDE0 + 5);
  os_unfair_lock_opaque_low = LOBYTE(v2[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v2 + 5);
  if (os_unfair_lock_opaque_low == 2)
  {
    LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
  }

  *(swift_allocObject() + 16) = (os_unfair_lock_opaque_low & 1) == 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43948, &qword_1DB512610);
  sub_1DB367E44();
  v4 = sub_1DB50A5E0();

  return v4;
}

uint64_t sub_1DB367B58@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1DB50EE90;
  v7[3] = MEMORY[0x1E69E6158];
  v7[0] = v3;
  v7[1] = v4;
  *(v5 + 48) = 0u;
  *(v5 + 32) = 0u;
  result = sub_1DB301D4C(v7, v5 + 32);
  *(v5 + 64) = 0;
  *a2 = v5;
  return result;
}

void static LogMessage.nilValueSubstitute.getter(void *a1@<X8>)
{
  a1[3] = MEMORY[0x1E69E6158];
  *a1 = 0x296C6C756E28;
  a1[1] = 0xE600000000000000;
}

_OWORD *LogMessage.rawValue.getter@<X0>(uint64_t a1@<X8>)
{
  if (*(*v1 + 16))
  {
    sub_1DB301CDC(*v1 + 32, &v4);
    if (*(&v5 + 1))
    {
      sub_1DB30C200(&v4, v6);
      return sub_1DB30C200(v6, a1);
    }
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  result = sub_1DB301DBC(&v4);
  *(a1 + 24) = MEMORY[0x1E69E6158];
  *a1 = 0x296C6C756E28;
  *(a1 + 8) = 0xE600000000000000;
  return result;
}

void LogMessage.valueTreatment.getter(_BYTE *a1@<X8>)
{
  if (*(*v1 + 16))
  {
    *a1 = *(*v1 + 64);
  }

  else
  {
    *a1 = 0;
  }
}

Swift::String __swiftcall LogMessage.describe(withRedaction:)(Swift::Bool withRedaction)
{
  v2 = *v1;
  *(swift_allocObject() + 16) = withRedaction;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43948, &qword_1DB512610);
  sub_1DB367E44();
  v3 = sub_1DB50A5E0();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

uint64_t sub_1DB367E10@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DB366738(*(v1 + 16));
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1DB367E44()
{
  result = qword_1EE30E2F8;
  if (!qword_1EE30E2F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC43948, &qword_1DB512610);
    sub_1DB367EE0(&unk_1EE30E360, &qword_1ECC43950, &qword_1DB512618);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30E2F8);
  }

  return result;
}

uint64_t sub_1DB367EE0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DB367F38()
{
  result = qword_1ECC43958;
  if (!qword_1ECC43958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC43958);
  }

  return result;
}

unint64_t sub_1DB367F9C()
{
  result = qword_1ECC43960;
  if (!qword_1ECC43960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC43960);
  }

  return result;
}

unint64_t sub_1DB367FF4()
{
  result = qword_1ECC43968;
  if (!qword_1ECC43968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC43968);
  }

  return result;
}

unint64_t sub_1DB36804C()
{
  result = qword_1ECC43970;
  if (!qword_1ECC43970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC43970);
  }

  return result;
}

unint64_t sub_1DB3680A4()
{
  result = qword_1ECC43978;
  if (!qword_1ECC43978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC43978);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_ypSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1DB368158(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_1DB3681B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t AssetNextSchedule.fromDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1DB509DD0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AssetNextSchedule.toDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AssetNextSchedule() + 20);
  v4 = sub_1DB509DD0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for AssetNextSchedule()
{
  result = qword_1ECC43980;
  if (!qword_1ECC43980)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DB3683C4()
{
  result = sub_1DB509DD0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1DB368440(char a1)
{
  v2 = v1;
  v4 = CGColorGetColorSpace(v1);
  if (v4 && (v5 = v4, Model = CGColorSpaceGetModel(v4), v5, Model == kCGColorSpaceModelRGB))
  {
    CopyByMatchingToColorSpace = v2;
  }

  else
  {
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(DeviceRGB, kCGRenderingIntentDefault, v2, 0);

    if (!CopyByMatchingToColorSpace)
    {
      return;
    }
  }

  v9 = sub_1DB50AEC0();

  if (v9)
  {
    v10 = *(v9 + 16);
    if (v10)
    {
      v11 = *(v9 + 32) * 255.0;
      if (COERCE__INT64(fabs(v11)) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v11 > -1.0)
        {
          if (v11 < 256.0)
          {
            if (v10 != 1)
            {
              v12 = *(v9 + 40) * 255.0;
              if (COERCE__INT64(fabs(v12)) <= 0x7FEFFFFFFFFFFFFFLL)
              {
                if (v12 > -1.0)
                {
                  if (v12 < 256.0)
                  {
                    if (v10 >= 3)
                    {
                      v13 = *(v9 + 48);

                      v14 = v13 * 255.0;
                      if (COERCE__INT64(fabs(v13 * 255.0)) <= 0x7FEFFFFFFFFFFFFFLL)
                      {
                        if (v14 > -1.0)
                        {
                          if (v14 < 256.0)
                          {
                            v15 = v11;
                            v16 = v12;
                            v17 = v14;
                            if ((a1 & 1) == 0)
                            {
                              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
                              v23 = swift_allocObject();
                              v24 = MEMORY[0x1E69E7508];
                              *(v23 + 16) = xmmword_1DB511620;
                              v25 = MEMORY[0x1E69E7558];
                              *(v23 + 56) = v24;
                              *(v23 + 64) = v25;
                              *(v23 + 32) = v15;
                              *(v23 + 96) = v24;
                              *(v23 + 104) = v25;
                              *(v23 + 72) = v16;
                              *(v23 + 136) = v24;
                              *(v23 + 144) = v25;
                              *(v23 + 112) = v17;
                              goto LABEL_25;
                            }

                            v18 = CGColorGetAlpha(v2) * 255.0;
                            if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
                            {
                              if (v18 > -1.0)
                              {
                                if (v18 < 256.0)
                                {
                                  v19 = v18;
                                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
                                  v20 = swift_allocObject();
                                  *(v20 + 16) = xmmword_1DB5128F0;
                                  v21 = MEMORY[0x1E69E7508];
                                  v22 = MEMORY[0x1E69E7558];
                                  *(v20 + 56) = MEMORY[0x1E69E7508];
                                  *(v20 + 64) = v22;
                                  *(v20 + 32) = v15;
                                  *(v20 + 96) = v21;
                                  *(v20 + 104) = v22;
                                  *(v20 + 72) = v16;
                                  *(v20 + 136) = v21;
                                  *(v20 + 144) = v22;
                                  *(v20 + 112) = v17;
                                  *(v20 + 176) = v21;
                                  *(v20 + 184) = v22;
                                  *(v20 + 152) = v19;
LABEL_25:
                                  sub_1DB50A680();
                                  return;
                                }

                                goto LABEL_40;
                              }

LABEL_39:
                              __break(1u);
LABEL_40:
                              __break(1u);
                              return;
                            }

LABEL_38:
                            __break(1u);
                            goto LABEL_39;
                          }

LABEL_37:
                          __break(1u);
                          goto LABEL_38;
                        }

LABEL_36:
                        __break(1u);
                        goto LABEL_37;
                      }

LABEL_35:
                      __break(1u);
                      goto LABEL_36;
                    }

LABEL_34:
                    __break(1u);
                    goto LABEL_35;
                  }

LABEL_33:
                  __break(1u);
                  goto LABEL_34;
                }

LABEL_32:
                __break(1u);
                goto LABEL_33;
              }

LABEL_31:
              __break(1u);
              goto LABEL_32;
            }

LABEL_30:
            __break(1u);
            goto LABEL_31;
          }

LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

LABEL_28:
        __break(1u);
        goto LABEL_29;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_28;
  }
}

uint64_t sub_1DB36876C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for PageRenderEvent();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - v9;
  v11 = type metadata accessor for PageIntentInstrumentation();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DB369398(v2, v14);
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    if (result != 1)
    {
      return result;
    }

    sub_1DB3693FC(v14, v7);
    v16 = *(a1 + 16);
    if (v16)
    {
      v17 = &v7[*(v4 + 24)];
      v18 = *v17;
      v19 = v17[1];
      v20 = (a1 + 32);
      do
      {
        memcpy(v34, v20, 0x158uLL);
        sub_1DB369460(v34, v33);
        if (qword_1ECC42180 != -1)
        {
          swift_once();
        }

        v29 = xmmword_1ECC679F8;
        v30 = byte_1ECC67A08;
        v31 = qword_1ECC67A10;
        v32 = byte_1ECC67A18;
        memcpy(v33, v34, sizeof(v33));
        static MonotonicTime.now.getter(&v28);
        v27 = v28;
        PageRenderField<>.callAsFunction(_:for:at:)(v33, v18, v19, &v27);
        sub_1DB3694BC(v34);
        v20 += 344;
        --v16;
      }

      while (v16);
    }

    v10 = v7;
  }

  else
  {
    sub_1DB3693FC(v14, v10);
    v21 = *(a1 + 16);
    if (v21)
    {
      memcpy(v34, (a1 + 32), 0x158uLL);
      sub_1DB370A18(v10);
      if (v21 != 1)
      {
        v22 = &v10[*(v4 + 24)];
        v23 = *v22;
        v24 = v22[1];

        v25 = v21 - 2;
        for (i = 376; ; i += 344)
        {
          memcpy(v34, (a1 + i), 0x158uLL);
          sub_1DB369460(v34, v33);
          if (qword_1ECC42180 != -1)
          {
            swift_once();
          }

          v29 = xmmword_1ECC679F8;
          v30 = byte_1ECC67A08;
          v31 = qword_1ECC67A10;
          v32 = byte_1ECC67A18;
          memcpy(v33, v34, sizeof(v33));
          static MonotonicTime.now.getter(&v28);
          v27 = v28;
          PageRenderField<>.callAsFunction(_:for:at:)(v33, v23, v24, &v27);
          sub_1DB3694BC(v34);
          if (!v25)
          {
            break;
          }

          --v25;
        }
      }
    }
  }

  return sub_1DB369510(v10);
}

JetCore::PageIntentInstrumentationType_optional __swiftcall PageIntentInstrumentationType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DB50B680();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t PageIntentInstrumentationType.rawValue.getter()
{
  if (*v0)
  {
    result = 0x7261646E6F636573;
  }

  else
  {
    result = 0x447972616D697270;
  }

  *v0;
  return result;
}

uint64_t sub_1DB368B68(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x7261646E6F636573;
  }

  else
  {
    v4 = 0x447972616D697270;
  }

  if (v3)
  {
    v5 = 0xEB00000000617461;
  }

  else
  {
    v5 = 0xED00006174614479;
  }

  if (*a2)
  {
    v6 = 0x7261646E6F636573;
  }

  else
  {
    v6 = 0x447972616D697270;
  }

  if (*a2)
  {
    v7 = 0xED00006174614479;
  }

  else
  {
    v7 = 0xEB00000000617461;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1DB50BA30();
  }

  return v9 & 1;
}

uint64_t sub_1DB368C24()
{
  v1 = *v0;
  sub_1DB50BCF0();
  sub_1DB50A740();

  return sub_1DB50BD30();
}

uint64_t sub_1DB368CBC()
{
  *v0;
  sub_1DB50A740();
}

uint64_t sub_1DB368D40()
{
  v1 = *v0;
  sub_1DB50BCF0();
  sub_1DB50A740();

  return sub_1DB50BD30();
}

uint64_t sub_1DB368DD4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1DB50B680();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_1DB368E34(uint64_t *a1@<X8>)
{
  v2 = 0x447972616D697270;
  if (*v1)
  {
    v2 = 0x7261646E6F636573;
  }

  v3 = 0xEB00000000617461;
  if (*v1)
  {
    v3 = 0xED00006174614479;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1DB368E88@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = 0xEB0000000044496ELL;
  v6 = 0x6F6974617265706FLL;
  v7 = *a2;

  JSONObject.subscript.getter(0x6F6974617265706FLL, 0xEB0000000044496ELL, v19);
  v8 = JSONObject.string.getter();
  v10 = v9;
  sub_1DB3151CC(v19);
  if (!v10)
  {
    goto LABEL_7;
  }

  v6 = 1701869940;
  JSONObject.subscript.getter(1701869940, 0xE400000000000000, v19);
  JSONObject.string.getter();
  v12 = v11;
  sub_1DB3151CC(v19);
  if (!v12)
  {

    v5 = 0xE400000000000000;
LABEL_7:
    v15 = 0x2000000000000000;
LABEL_8:
    v16 = v15 | &type metadata for PageIntentInstrumentationModel;
    sub_1DB315178();
    swift_allocError();
    *v17 = v6;
    v17[1] = v5;
    v17[2] = v16;
    v17[3] = 0;
    swift_willThrow();
    return sub_1DB3151CC(a1);
  }

  v13 = sub_1DB50B680();

  if (!v13)
  {
    v14 = 0;
    goto LABEL_10;
  }

  if (v13 != 1)
  {

    v5 = 0xE400000000000000;
    v15 = 0x8000000000000000;
    goto LABEL_8;
  }

  v14 = 1;
LABEL_10:
  result = sub_1DB3151CC(a1);
  *a3 = v8;
  *(a3 + 8) = v10;
  *(a3 + 16) = v14;
  return result;
}

Swift::Void __swiftcall PageIntentInstrumentation._forBooksOnly_process(contentsOf:)(Swift::OpaquePointer contentsOf)
{
  v2 = CFBundleGetMainBundle();
  v3 = CFBundleGetIdentifier(v2);

  if (v3)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_1DB50A640();
    }
  }

  if (sub_1DB50A810() & 1) != 0 || (sub_1DB50A810())
  {
  }

  else
  {
    v4 = sub_1DB50A810();

    if ((v4 & 1) == 0)
    {
      sub_1DB3CE748("JetCore/PageIntentInstrumentation.swift", 0x27uLL, 2, 0x88uLL);
    }
  }

  sub_1DB36876C(contentsOf._rawValue);
}

unint64_t sub_1DB3691A0()
{
  result = qword_1ECC43990;
  if (!qword_1ECC43990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC43990);
  }

  return result;
}

uint64_t type metadata accessor for PageIntentInstrumentation()
{
  result = qword_1ECC43998;
  if (!qword_1ECC43998)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DB369290()
{
  result = type metadata accessor for PageRenderEvent();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DB369300(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1DB369348(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DB369398(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageIntentInstrumentation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DB3693FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageRenderEvent();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DB369510(uint64_t a1)
{
  v2 = type metadata accessor for PageRenderEvent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t EventEmitter.asyncStream.getter(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  v5 = sub_1DB50ABD0();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v12[-v7];
  v13 = a1;
  v14 = a2;
  v15 = v2;
  swift_checkMetadataState();
  v9 = *MEMORY[0x1E69E8650];
  v10 = sub_1DB50ABD0();
  (*(*(v10 - 8) + 104))(v8, v9, v10);
  return sub_1DB50AC40();
}

uint64_t sub_1DB36969C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = a1;
  v11 = *(a5 + 16);
  swift_unknownObjectRetain();
  v11(v13, a4, a5);
  EventEmitter.addObserver(on:singleUse:_:)(v13, 0, a2, a3, a4, a5);
  swift_unknownObjectRelease();

  result = __swift_destroy_boxed_opaque_existential_0(v13);
  a6[1] = v13[5];
  return result;
}

uint64_t sub_1DB36975C(uint64_t a1)
{
  v2 = *v1;
  v7 = v1[1];
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(v3 + 32);

  v5(&v7, v4, v3);
}

uint64_t sub_1DB3697DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  v7 = sub_1DB50ABF0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v18 - v11;
  (*(v8 + 16))(&v18 - v11, a1, v7, v10);
  v13 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  (*(v8 + 32))(v14 + v13, v12, v7);
  v15 = swift_unknownObjectRetain();
  sub_1DB36969C(v15, sub_1DB369B94, v14, a3, a4, &v19);
  v18 = v19;
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  *(v16 + 32) = v18;
  return sub_1DB50ABC0();
}

uint64_t sub_1DB3699B0(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = &v14 - v5;
  v7 = sub_1DB50ABB0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v14 - v11;
  (*(v3 + 16))(v6, a1, AssociatedTypeWitness, v10);
  sub_1DB50ABF0();
  sub_1DB50ABE0();
  return (*(v8 + 8))(v12, v7);
}

uint64_t sub_1DB369B94(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  swift_getAssociatedTypeWitness();
  v5 = *(*(sub_1DB50ABF0() - 8) + 80);

  return sub_1DB3699B0(a1);
}

uint64_t sub_1DB369C3C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v5 = *(v0 + 32);
  v3 = type metadata accessor for StreamEventSubscription();
  return sub_1DB36975C(v3);
}

uint64_t sub_1DB369C94()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1DB369CD0(uint64_t *a1, int a2)
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

uint64_t sub_1DB369D18(uint64_t result, int a2, int a3)
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

uint64_t sub_1DB369D64@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  if (!*(*a1 + 16))
  {
    goto LABEL_11;
  }

  v5 = *a1;

  v6 = sub_1DB306160(0x707954746E657665, 0xE900000000000065);
  if ((v7 & 1) == 0 || (sub_1DB300B14(*(v4 + 56) + 32 * v6, v18), v8 = MEMORY[0x1E69E6158], (swift_dynamicCast() & 1) == 0))
  {
LABEL_10:

LABEL_11:
    *a2 = v4;
    a2[1] = v3;
  }

  if (v21 != __PAIR128__(0xEA00000000007265, 0x646E655265676170))
  {
    v9 = sub_1DB50BA30();

    if (v9)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

LABEL_7:
  if (*(v4 + 16) && (v10 = sub_1DB306160(0x7571655265676170, 0xEF656D6954747365), (v11 & 1) != 0))
  {
    sub_1DB300B14(*(v4 + 56) + 32 * v10, &v21);
    sub_1DB30C200(&v21, v18);
    sub_1DB300B14(v18, &v21);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = v4;
    sub_1DB31D16C(&v21, 0x6D6954746E657665, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
    __swift_destroy_boxed_opaque_existential_0(v18);
    *a2 = v23;
    a2[1] = v3;
  }

  else
  {

    if (qword_1EE30C900 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    v14 = v19;
    v17 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1DB50EE90;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1DB50EE90;
    v22 = v8;
    *&v21 = 0xD00000000000004ELL;
    *(&v21 + 1) = 0x80000001DB52B320;
    *(v16 + 48) = 0u;
    *(v16 + 32) = 0u;
    sub_1DB301D4C(&v21, v16 + 32);
    *(v16 + 64) = 0;
    *(v15 + 32) = v16;
    Logger.error(_:)(v15, v14, v17);

    __swift_destroy_boxed_opaque_existential_0(v18);
    *a2 = v4;
    a2[1] = v3;
  }
}

uint64_t sub_1DB36A094(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = type metadata accessor for PreferenceKey();
  if (v3 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DB36A124(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_1DB36A2A8(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 16) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 16] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

uint64_t sub_1DB36A510@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = a1[1];
  *a4 = *a1;
  a4[1] = v7;
  v8 = type metadata accessor for SetPreferenceMigrationRule();
  v9 = *(*(a3 - 8) + 32);
  v10 = a4 + *(v8 + 28);

  return v9(v10, a2, a3);
}

uint64_t sub_1DB36A5BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v18 = a2;
  v5 = *(a3 + 16);
  v6 = sub_1DB50B120();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - v9;
  ObjectType = swift_getObjectType();
  v13 = *v3;
  v12 = v3[1];
  v14 = *(a3 + 28);
  v15 = *(v5 - 8);
  (*(v15 + 16))(v10, v3 + v14, v5);
  (*(v15 + 56))(v10, 0, 1, v5);
  v19[0] = v13;
  v19[1] = v12;

  sub_1DB3A5500(v10, v19, ObjectType, v5, v18);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1DB36A758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  (*(a2 + 32))(v4, ObjectType, a2);
  v8 = swift_getObjectType();
  return (*(a4 + 32))(v4, v8, a4);
}

uint64_t AppVersionFieldProvider.addExpensiveMetricsFields(into:using:)(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 120) = a1;
  *(v2 + 128) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1DB36A81C, 0, 0);
}

uint64_t sub_1DB36A81C()
{
  v26 = v0;
  v1 = [*(v0 + 128) infoDictionary];
  if (v1)
  {
    v2 = v1;
    v3 = sub_1DB50A4B0();

    if (*(v3 + 16))
    {
      v4 = sub_1DB306160(0xD00000000000001ALL, 0x80000001DB52B3C0);
      if (v5)
      {
        v6 = *(v0 + 120);
        sub_1DB300B14(*(v3 + 56) + 32 * v4, v0 + 56);

        sub_1DB30C200((v0 + 56), (v0 + 16));
        v7 = *(v6 + 24);
        v8 = *(v6 + 32);
        __swift_mutable_project_boxed_opaque_existential_1(v6, v7);
        (*(v8 + 16))(v0 + 16, 0x6973726556707061, 0xEA00000000006E6FLL, v7, v8);
        __swift_destroy_boxed_opaque_existential_0((v0 + 16));
        goto LABEL_13;
      }
    }
  }

  if (qword_1ECC42228 != -1)
  {
    swift_once();
  }

  v9 = *(v0 + 128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1DB50F8D0;
  v24 = sub_1DB301BC0(0, 46, 0, MEMORY[0x1E69E7CC0]);
  v11._countAndFlagsBits = 0xD00000000000002DLL;
  v11._object = 0x80000001DB52B370;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  *(v0 + 80) = sub_1DB36AC44();
  *(v0 + 56) = v9;
  sub_1DB301CDC(v0 + 56, v0 + 88);
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  v12 = v9;
  sub_1DB301D4C(v0 + 88, v0 + 16);
  *(v0 + 48) = 1;
  v13 = v24;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v13 = sub_1DB301BC0(0, *(v24 + 2) + 1, 1, v24);
  }

  v14 = MEMORY[0x1E69E6158];
  v16 = *(v13 + 2);
  v15 = *(v13 + 3);
  if (v16 >= v15 >> 1)
  {
    v13 = sub_1DB301BC0((v15 > 1), v16 + 1, 1, v13);
  }

  *(v13 + 2) = v16 + 1;
  v17 = &v13[40 * v16];
  v18 = *(v0 + 16);
  v19 = *(v0 + 32);
  v17[64] = *(v0 + 48);
  *(v17 + 2) = v18;
  *(v17 + 3) = v19;
  sub_1DB301DBC(v0 + 56);
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v20);
  *(v10 + 32) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1DB50EE90;
  *(v0 + 40) = v14;
  *(v0 + 16) = 0xD000000000000017;
  *(v0 + 24) = 0x80000001DB52B3A0;
  *(v21 + 48) = 0u;
  *(v21 + 32) = 0u;
  sub_1DB301D4C(v0 + 16, v21 + 32);
  *(v21 + 64) = 0;
  *(v10 + 40) = v21;
  v25 = 0;
  OSLogger.log(contentsOf:withLevel:)(v10, &v25);

LABEL_13:
  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_1DB36ABB0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DB306AF4;

  return AppVersionFieldProvider.addExpensiveMetricsFields(into:using:)(a1);
}

unint64_t sub_1DB36AC44()
{
  result = qword_1ECC43AA8;
  if (!qword_1ECC43AA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECC43AA8);
  }

  return result;
}

id sub_1DB36ACD0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WrappedMetricsPipeline();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1DB36AD38()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void *sub_1DB36AD8C@<X0>(void *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v5 = result[1];
  v6 = *a2;
  v7 = a2[1];
  *a5 = *result;
  a5[1] = v5;
  a5[2] = v6;
  a5[3] = v7;
  a5[4] = a3;
  a5[5] = a4;
  return result;
}

uint64_t sub_1DB36ADA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v48 = a4;
  v49 = a3;
  v62 = a2;
  v8 = *(a5 + 24);
  v9 = sub_1DB50B120();
  v46 = *(v9 - 8);
  v47 = v9;
  v10 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v45 = &v40 - v11;
  v52 = v8;
  v50 = *(v8 - 8);
  v12 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v56 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a5 + 16);
  v16 = sub_1DB50B120();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v40 - v19;
  v21 = *(v15 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v55 = &v40 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *v5;
  v26 = v5[1];
  v27 = v5[3];
  v41 = v5[2];
  v42 = v27;
  v28 = v5[4];
  v53 = v5[5];
  v54 = v28;
  ObjectType = swift_getObjectType();
  v43 = v25;
  v58 = v25;
  v59 = v26;
  v30 = v21;

  v44 = ObjectType;
  v51 = a1;
  Preferences.subscript.getter(&v58, ObjectType, v15, v62, v20);

  if ((*(v21 + 48))(v20, 1, v15) == 1)
  {
    return (*(v17 + 8))(v20, v16);
  }

  v32 = v55;
  (*(v21 + 32))(v55, v20, v15);
  v33 = v57;
  v54(v32);
  if (v33)
  {
    return (*(v21 + 8))(v32, v15);
  }

  v34 = swift_getObjectType();
  v35 = v50;
  v36 = v45;
  v37 = v52;
  (*(v50 + 16))(v45, v56, v52);
  (*(v35 + 56))(v36, 0, 1, v37);
  v58 = v41;
  v59 = v42;

  sub_1DB3A5500(v36, &v58, v34, v37, v48);
  (*(v46 + 8))(v36, v47);
  v60 = type metadata accessor for PreferenceKey();
  v61 = &protocol witness table for PreferenceKey<A>;
  v58 = v43;
  v59 = v26;
  v38 = v62;
  v39 = *(v62 + 32);

  v39(&v58, v44, v38);
  (*(v35 + 8))(v56, v37);
  (*(v30 + 8))(v55, v15);
  return __swift_destroy_boxed_opaque_existential_0(&v58);
}

uint64_t sub_1DB36B22C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void *sub_1DB36B280@<X0>(void *result@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = result[1];
  v4 = *a2;
  v5 = a2[1];
  *a3 = *result;
  a3[1] = v3;
  a3[2] = v4;
  a3[3] = v5;
  return result;
}

uint64_t sub_1DB36B294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = a4;
  v35 = a3;
  v7 = *(a5 + 16);
  v8 = sub_1DB50B120();
  v37 = *(v8 - 8);
  v38 = v8;
  v9 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v28 - v13;
  v15 = *(v7 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v33 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v5;
  v20 = v5[1];
  v21 = v5[3];
  v29 = v5[2];
  v30 = v21;
  ObjectType = swift_getObjectType();
  v31 = v19;
  v39 = v19;
  v40 = v20;

  v32 = ObjectType;
  v36 = a2;
  Preferences.subscript.getter(&v39, ObjectType, v7, a2, v14);

  if ((*(v15 + 48))(v14, 1, v7) == 1)
  {
    return (*(v37 + 8))(v14, v38);
  }

  v24 = v33;
  (*(v15 + 32))(v33, v14, v7);
  v25 = swift_getObjectType();
  (*(v15 + 16))(v11, v24, v7);
  (*(v15 + 56))(v11, 0, 1, v7);
  v39 = v29;
  v40 = v30;

  sub_1DB3A5500(v11, &v39, v25, v7, v34);
  (*(v37 + 8))(v11, v38);
  v41 = type metadata accessor for PreferenceKey();
  v42 = &protocol witness table for PreferenceKey<A>;
  v39 = v31;
  v40 = v20;
  v26 = v36;
  v27 = *(v36 + 32);

  v27(&v39, v32, v26);
  (*(v15 + 8))(v24, v7);
  return __swift_destroy_boxed_opaque_existential_0(&v39);
}

uint64_t dispatch thunk of IntentCache.retrieve<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 8);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_1DB30C7A0;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of IntentCache.store<A>(_:operation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(a7 + 16);
  v19 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  *(v7 + 16) = v17;
  *v17 = v7;
  v17[1] = sub_1DB306AF4;

  return v19(a1, a2, a3, a4, a5, a6, a7);
}

JetCore::DeResolutionNumericTreatmentFilter::Definition __swiftcall DeResolutionNumericTreatmentFilter.Definition.init(eventType:rules:)(JetCore::MetricsEventType eventType, Swift::OpaquePointer rules)
{
  v3 = *(eventType.rawValue._countAndFlagsBits + 8);
  *v2 = *eventType.rawValue._countAndFlagsBits;
  v2[1] = v3;
  v2[2] = eventType.rawValue._object;
  result.eventType = eventType;
  result.rules = rules;
  return result;
}

JetCore::DeResolutionNumericTreatmentFilter __swiftcall DeResolutionNumericTreatmentFilter.init(_:)(JetCore::DeResolutionNumericTreatmentFilter result)
{
  *v1 = *result.definition.eventType.rawValue._countAndFlagsBits;
  *(v1 + 8) = *(result.definition.eventType.rawValue._countAndFlagsBits + 8);
  return result;
}

JetCore::LintedMetricsEvent __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DeResolutionNumericTreatmentFilter.treat(_:on:)(JetCore::LintedMetricsEvent _, Swift::String_optional on)
{
  v4 = v2;
  v5 = *_.fields._rawValue;
  v6 = *(_.fields._rawValue + 1);
  if (!*(*_.fields._rawValue + 16))
  {
    goto LABEL_31;
  }

  v7 = *v3;
  v8 = *(v3 + 8);
  v9 = *(v3 + 16);
  v10 = *_.fields._rawValue;

  v11 = sub_1DB306160(0x707954746E657665, 0xE900000000000065);
  if ((v12 & 1) == 0 || (sub_1DB300B14(v5[7] + 32 * v11, &v54), v13 = MEMORY[0x1E69E6158], (swift_dynamicCast() & 1) == 0))
  {

LABEL_31:
    *v4 = v5;
    v4[1] = v6;

LABEL_32:

    goto LABEL_39;
  }

  v51 = v9;
  v48 = v4;
  if ((v53[0] != v7 || v53[1] != v8) && (sub_1DB50BA30() & 1) == 0)
  {

    goto LABEL_31;
  }

  v55 = v13;
  v54 = *v53;
  sub_1DB30C200(&v54, v53);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1DB31D16C(v53, 0x707954746E657665, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
  v15 = v5;
  v16 = v9;
  v52 = *(v9 + 16);
  if (!v52)
  {
LABEL_33:
    *v48 = v15;
    v48[1] = v6;
    goto LABEL_32;
  }

  v17 = 0;
  v18 = (v9 + 56);
  v49 = v6;
  while (v17 < *(v16 + 16))
  {
    if (!v5[2])
    {
      goto LABEL_11;
    }

    v20 = *(v18 - 3);
    v19 = *(v18 - 2);
    v22 = *(v18 - 1);
    v21 = *v18;
    swift_bridgeObjectRetain_n();
    v23 = sub_1DB306160(v20, v19);
    v25 = v24;

    if (v25 & 1) != 0 && (sub_1DB300B14(v5[7] + 32 * v23, &v54), sub_1DB36BD70(), (swift_dynamicCast()))
    {
      v50 = v53[0];
      [v53[0] doubleValue];
      v27 = v26;
      v28 = NAN;
      if (v22 > 0.0 && v21 >= 0.0)
      {
        v29 = __exp10(v21);
        v28 = v29 * trunc(v27 / v22 / v29);
      }

      v55 = MEMORY[0x1E69E63B0];
      *&v54 = v28;
      sub_1DB30C200(&v54, v53);
      v30 = v15;
      v31 = swift_isUniquelyReferenced_nonNull_native();
      v33 = sub_1DB306160(v20, v19);
      v34 = v30[2];
      v35 = (v32 & 1) == 0;
      v36 = v34 + v35;
      if (__OFADD__(v34, v35))
      {
        goto LABEL_36;
      }

      v37 = v32;
      if (v30[3] >= v36)
      {
        if (v31)
        {
          if ((v32 & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        else
        {
          sub_1DB3112DC();
          if ((v37 & 1) == 0)
          {
            goto LABEL_28;
          }
        }
      }

      else
      {
        sub_1DB319570(v36, v31);
        v38 = sub_1DB306160(v20, v19);
        if ((v37 & 1) != (v39 & 1))
        {
          goto LABEL_38;
        }

        v33 = v38;
        if ((v37 & 1) == 0)
        {
LABEL_28:
          v30[(v33 >> 6) + 8] |= 1 << v33;
          v41 = (v30[6] + 16 * v33);
          *v41 = v20;
          v41[1] = v19;
          sub_1DB30C200(v53, (v30[7] + 32 * v33));

          v42 = v30[2];
          v43 = __OFADD__(v42, 1);
          v44 = v42 + 1;
          if (v43)
          {
            goto LABEL_37;
          }

          v15 = v30;
          v30[2] = v44;
          v6 = v49;
          goto LABEL_10;
        }
      }

      v15 = v30;
      v40 = (v30[7] + 32 * v33);
      __swift_destroy_boxed_opaque_existential_0(v40);
      sub_1DB30C200(v53, v40);

      v6 = v49;
    }

    else
    {
    }

LABEL_10:
    v16 = v51;
LABEL_11:
    ++v17;
    v18 += 4;
    if (v52 == v17)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  v45 = sub_1DB50BC20();
  __break(1u);
LABEL_39:
  result.issues._rawValue = v46;
  result.fields._rawValue = v45;
  return result;
}

double sub_1DB36BCC4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43BB8, &qword_1DB512E10);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1DB50F8D0;
  *(v0 + 32) = 0xD00000000000001DLL;
  *(v0 + 40) = 0x80000001DB528E10;
  result = 1.0;
  *(v0 + 48) = xmmword_1DB512D60;
  *(v0 + 64) = 0xD00000000000001ELL;
  *(v0 + 72) = 0x80000001DB528E70;
  *(v0 + 80) = xmmword_1DB512D60;
  qword_1ECC67918 = 0x646E655265676170;
  unk_1ECC67920 = 0xEA00000000007265;
  qword_1ECC67928 = v0;
  return result;
}

unint64_t sub_1DB36BD70()
{
  result = qword_1ECC433A0;
  if (!qword_1ECC433A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECC433A0);
  }

  return result;
}

double sub_1DB36BDDC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43BC8, &qword_1DB512E18);
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43BD0, &unk_1DB512E20);
  v1 = swift_allocObject();
  result = 0.0;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v0 + 16) = v1;
  off_1ECC43BC0 = v0;
  return result;
}

uint64_t sub_1DB36BE50(uint64_t *a1)
{
  v1 = *a1;
  if (qword_1ECC42228 != -1)
  {
    swift_once();
  }

  v2 = qword_1ECC466F0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1DB50F8D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DB50EE90;
  v5 = MEMORY[0x1E69E6158];
  *(&v27 + 1) = MEMORY[0x1E69E6158];
  *&v26 = 0xD00000000000002DLL;
  *(&v26 + 1) = 0x80000001DB52A8A0;
  *(v4 + 48) = 0u;
  *(v4 + 32) = 0u;
  sub_1DB301D4C(&v26, v4 + 32);
  *(v4 + 64) = 0;
  *(v3 + 32) = v4;
  v31 = sub_1DB301BC0(0, 20, 0, MEMORY[0x1E69E7CC0]);
  v6._object = 0x80000001DB52A8D0;
  v6._countAndFlagsBits = 0xD000000000000013;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  if (v1)
  {
    swift_getErrorValue();
    *(&v30 + 1) = v24;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v29);
    (*(*(v24 - 8) + 16))(boxed_opaque_existential_0);
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
  }

  sub_1DB30C4B8(&v29, v25, &qword_1ECC426B0, &qword_1DB50EEB0);
  v26 = 0u;
  v27 = 0u;
  sub_1DB301D4C(v25, &v26);
  v28 = 0;
  v8 = v31;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_1DB301BC0(0, *(v8 + 2) + 1, 1, v8);
  }

  v10 = *(v8 + 2);
  v9 = *(v8 + 3);
  if (v10 >= v9 >> 1)
  {
    v8 = sub_1DB301BC0((v9 > 1), v10 + 1, 1, v8);
  }

  *(v8 + 2) = v10 + 1;
  v11 = &v8[40 * v10];
  v12 = v26;
  v13 = v27;
  v11[64] = v28;
  *(v11 + 2) = v12;
  *(v11 + 3) = v13;
  v31 = v8;
  sub_1DB30623C(&v29, &qword_1ECC426B0, &qword_1DB50EEB0);
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v14);
  *(v3 + 40) = v31;
  v15 = sub_1DB50AF40();
  if (os_log_type_enabled(v2, v15))
  {
    if (qword_1EE30EDD8 != -1)
    {
      swift_once();
    }

    v16 = off_1EE30EDE0;
    os_unfair_lock_lock(off_1EE30EDE0 + 5);
    os_unfair_lock_opaque_low = LOBYTE(v16[4]._os_unfair_lock_opaque);
    os_unfair_lock_unlock(v16 + 5);
    if (os_unfair_lock_opaque_low == 2)
    {
      LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
    }

    v18 = swift_allocObject();
    *(v18 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
    *&v26 = v3;
    *(&v26 + 1) = sub_1DB31485C;
    *&v27 = v18;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
    sub_1DB314864();
    v19 = sub_1DB50A5E0();
    v21 = v20;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1DB50EE90;
    *(v22 + 56) = v5;
    *(v22 + 64) = sub_1DB31494C();
    *(v22 + 32) = v19;
    *(v22 + 40) = v21;
    sub_1DB50A1E0();
  }
}

void sub_1DB36C280()
{
  if (qword_1EE30E190 != -1)
  {
    swift_once();
  }

  if ((byte_1EE30E198 & 1) == 0)
  {
    if (qword_1ECC42228 != -1)
    {
      swift_once();
    }

    v0 = qword_1ECC466F0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_1DB50EE90;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1DB50EE90;
    v3 = MEMORY[0x1E69E6158];
    *(&v58 + 1) = MEMORY[0x1E69E6158];
    *&aBlock = 0xD000000000000027;
    *(&aBlock + 1) = 0x80000001DB52B460;
    *(v2 + 48) = 0u;
    *(v2 + 32) = 0u;
    sub_1DB301D4C(&aBlock, v2 + 32);
    *(v2 + 64) = 0;
    *(v1 + 32) = v2;
    *&aBlock = v0;
    LOBYTE(v62[0]) = 3;
    OSLogger.log(contentsOf:withLevel:)(v1, v62);

    if (qword_1ECC42068 != -1)
    {
      swift_once();
    }

    v4 = *(off_1ECC43BC0 + 2);
    os_unfair_recursive_lock_lock_with_options();
    v5 = v4[2];
    if (v5)
    {
      v7 = v4[3];
      v6 = v4[4];
      v8 = v5;
      v9 = v7;
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      v11 = [objc_opt_self() currentProcess];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC434C0, &qword_1DB511550);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1DB511420;
      v13 = sub_1DB50A620();
      v14 = sub_1DB50A620();
      v15 = [objc_opt_self() attributeWithDomain:v13 name:v14];

      *(v12 + 32) = v15;
      v16 = objc_allocWithZone(type metadata accessor for ProcessAssertion.JetRBSAssertion());
      v17 = sub_1DB50A620();
      sub_1DB3483D0();
      v18 = sub_1DB50A980();

      v19 = [v16 initWithExplanation:v17 target:v11 attributes:v18];

      v20 = objc_allocWithZone(_JEAtomicCounter);
      v21 = v19;
      v22 = [v20 initWithInitialValue_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC434C8, qword_1DB511558);
      v6 = swift_allocObject();
      *(v6 + 16) = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
      *(v6 + 24) = v10;
      v59 = sub_1DB34841C;
      v60 = v6;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v58 = sub_1DB34EAE0;
      *(&v58 + 1) = &block_descriptor_5;
      v23 = _Block_copy(&aBlock);

      [v21 setInvalidationHandler_];
      _Block_release(v23);

      v24 = v4[2];
      v25 = v4[3];
      v26 = v3;
      v27 = v4[4];
      v4[2] = v21;
      v4[3] = v22;
      v4[4] = v6;
      v28 = v21;
      v29 = v22;

      v8 = v28;
      v3 = v26;
      v9 = v29;
      sub_1DB3481B0(v24, v25);
    }

    os_unfair_recursive_lock_unlock();
    *&aBlock = v8;
    *(&aBlock + 1) = v9;
    *&v58 = v6;
    ProcessAssertion.acquire()();
    if (v30)
    {
      v31 = qword_1ECC466F0;
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1DB50F8D0;
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_1DB50EE90;
      *(&v58 + 1) = v3;
      *&aBlock = 0xD000000000000030;
      *(&aBlock + 1) = 0x80000001DB52A860;
      *(v33 + 48) = 0u;
      *(v33 + 32) = 0u;
      sub_1DB301D4C(&aBlock, v33 + 32);
      *(v33 + 64) = 0;
      *(v32 + 32) = v33;
      v68 = sub_1DB301BC0(0, 9, 0, MEMORY[0x1E69E7CC0]);
      v34._countAndFlagsBits = 0x203A6E6F73616572;
      v34._object = 0xE800000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v34);
      swift_getErrorValue();
      v35 = v66;
      v36 = v67;
      v63 = v67;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v62);
      (*(v36[-1].Description + 2))(boxed_opaque_existential_0, v35, v36);
      sub_1DB30C4B8(v62, v65, &qword_1ECC426B0, &qword_1DB50EEB0);
      aBlock = 0u;
      v58 = 0u;
      sub_1DB301D4C(v65, &aBlock);
      LOBYTE(v59) = 0;
      v38 = v68;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_1DB301BC0(0, *(v38 + 2) + 1, 1, v38);
        v68 = v38;
      }

      v40 = *(v38 + 2);
      v39 = *(v38 + 3);
      if (v40 >= v39 >> 1)
      {
        v38 = sub_1DB301BC0((v39 > 1), v40 + 1, 1, v38);
      }

      *(v38 + 2) = v40 + 1;
      v41 = &v38[40 * v40];
      v42 = aBlock;
      v43 = v58;
      v41[64] = v59;
      *(v41 + 2) = v42;
      *(v41 + 3) = v43;
      v68 = v38;
      sub_1DB30623C(v62, &qword_1ECC426B0, &qword_1DB50EEB0);
      v44._countAndFlagsBits = 0;
      v44._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v44);
      *(v32 + 40) = v68;
      *&aBlock = v31;
      LOBYTE(v62[0]) = 0;
      OSLogger.log(contentsOf:withLevel:)(v32, v62);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43538, &qword_1DB511AA0);
      v45 = swift_allocObject();
      v63 = &type metadata for SyncTaskScheduler;
      v64 = &protocol witness table for SyncTaskScheduler;
      sub_1DB30BE90(v62, &aBlock);
      v60 = sub_1DB36BE50;
      v61 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43540, &qword_1DB511AA8);
      v46 = swift_allocObject();
      *(v46 + 72) = 0;
      __swift_destroy_boxed_opaque_existential_0(v62);
      sub_1DB30C4B8(&aBlock, v46 + 16, &qword_1ECC43548, &qword_1DB511AB0);
      sub_1DB30623C(&aBlock, &qword_1ECC43548, &qword_1DB511AB0);
      *(v45 + 16) = v46;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43550, &qword_1DB511AB8);
      v47 = swift_allocObject();
      *(v47 + 16) = v45;
      v48 = *(v6 + 16);

      [v48 lock];
      swift_beginAccess();
      v49 = *(v6 + 24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v6 + 24) = v49;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v54 = v49[2];

        v55 = sub_1DB302BF8(0, v54 + 1, 1, v49);
        *(v6 + 24) = v55;

        v49 = v55;
      }

      v52 = v49[2];
      v51 = v49[3];
      v53 = v52 + 1;
      if (v52 >= v51 >> 1)
      {
        v56 = sub_1DB302BF8((v51 > 1), v52 + 1, 1, v49);
        v53 = v52 + 1;
        v49 = v56;
      }

      v49[2] = v53;
      v49[v52 + 4] = v47;
      *(v6 + 24) = v49;
      swift_endAccess();

      [v48 unlock];
    }
  }
}

void sub_1DB36CB68()
{
  if (qword_1EE30E190 != -1)
  {
    swift_once();
  }

  if ((byte_1EE30E198 & 1) == 0)
  {
    if (qword_1ECC42228 != -1)
    {
      swift_once();
    }

    v0 = qword_1ECC466F0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_1DB50EE90;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1DB50EE90;
    v16 = MEMORY[0x1E69E6158];
    v13 = 0xD00000000000002ALL;
    v14 = 0x80000001DB52B430;
    *(v2 + 48) = 0u;
    *(v2 + 32) = 0u;
    sub_1DB301D4C(&v13, v2 + 32);
    *(v2 + 64) = 0;
    *(v1 + 32) = v2;
    v13 = v0;
    v12 = 3;
    OSLogger.log(contentsOf:withLevel:)(v1, &v12);

    if (qword_1ECC42068 != -1)
    {
      swift_once();
    }

    v3 = off_1ECC43BC0;
    v4 = *(off_1ECC43BC0 + 2);
    os_unfair_recursive_lock_lock_with_options();
    v5 = v4[2];
    v6 = v4[3];
    v7 = v4[4];
    sub_1DB36CD98(v5, v6);
    os_unfair_recursive_lock_unlock();
    if (v5)
    {
      v13 = v5;
      v14 = v6;
      v15 = v7;
      if (ProcessAssertion.invalidate()())
      {
        v8 = v3[2];
        os_unfair_recursive_lock_lock_with_options();
        v9 = v8[2];
        v10 = v8[3];
        v11 = v8[4];
        v8[3] = 0;
        v8[4] = 0;
        v8[2] = 0;
        sub_1DB3481B0(v9, v10);
        os_unfair_recursive_lock_unlock();
      }

      sub_1DB3481B0(v5, v6);
    }
  }
}

void *sub_1DB36CD98(void *result, void *a2)
{
  if (result)
  {
    v3 = result;
    v4 = a2;
  }

  return result;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1DB36CDF8()
{
  if (qword_1ECC41FC8 != -1)
  {
    swift_once();
  }

  v0 = qword_1ECC678A8;
  v1 = qword_1ECC42070;

  if (v1 != -1)
  {
    swift_once();
  }

  v2 = qword_1ECC43BD8;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = v0;
  sub_1DB36E0D4(v2, sub_1DB36E378, 0, isUniquelyReferenced_nonNull_native, &v6);

  v4 = sub_1DB30E858(v6);

  return v4;
}

unint64_t static ActionKindTable._table.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 16))();
  if (qword_1ECC42070 != -1)
  {
    swift_once();
  }

  v3 = qword_1ECC43BD8;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = v2;
  sub_1DB36E0D4(v3, sub_1DB36E378, 0, isUniquelyReferenced_nonNull_native, &v7);

  v5 = sub_1DB30E858(v7);

  return v5;
}

uint64_t *sub_1DB36D018@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v9 = dynamic_cast_existential_2_conditional(a1);
  if (v9)
  {
    v12 = v9;
    v13 = v10;
    v14 = v11;
    v50 = a3;
    v15 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    v16 = sub_1DB50BDE0();
    JSONContext.init(userInfo:)(v16);
    v17 = v52[0];
    if (!sub_1DB316CAC(0xD000000000000023, 0x80000001DB5298A0, v52[0]))
    {
      *&v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42E78, &unk_1DB50FF20);
      *&v54 = v3;
      *(&v54 + 1) = &off_1F56F1850;
      sub_1DB30C200(&v54, v53);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v57 = v52[0];
      sub_1DB31D16C(v53, 0xD000000000000023, 0x80000001DB5298A0, isUniquelyReferenced_nonNull_native);
      v19 = v57;

      v52[0] = v19;
      v17 = v19;
    }

    v20 = a2[3];
    v21 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v20);
    v57 = v17;

    v22 = _sSD7JetCores17CodingUserInfoKeyVRszypRs_rlE11jsonContextSDyACypGAA11JSONContextV_tcfC_0(&v57);
    Decoder.withUserInfo(_:)(v22, v20, v21, v53);

    *&v55 = v12;
    *(&v55 + 1) = v13;
    v56 = v14;
    __swift_allocate_boxed_opaque_existential_0(&v54);
    sub_1DB50ADB0();
    if (v4)
    {

      return __swift_deallocate_boxed_opaque_existential_0(&v54);
    }

    v48 = v55;
    v35 = v55;
    v36 = __swift_project_boxed_opaque_existential_1(&v54, v55);
    *(v50 + 24) = v48;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v50);
    (*(*(v35 - 8) + 16))(boxed_opaque_existential_0, v36, v35);
LABEL_12:

    return __swift_destroy_boxed_opaque_existential_0(&v54);
  }

  v24 = dynamic_cast_existential_2_conditional(a1);
  if (v24)
  {
    v27 = v24;
    v28 = v25;
    v29 = v26;
    v51 = a3;
    v30 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    v31 = sub_1DB50BDE0();
    JSONContext.init(userInfo:)(v31);
    v32 = v57;
    sub_1DB315EC4(0xD00000000000001FLL, 0x80000001DB52B490, v57, &v54);
    v33 = ~*(&v54 + 1) & 0xF000000000000007;
    sub_1DB3171A0(v54, *(&v54 + 1));
    if (!v33)
    {
      *&v55 = &type metadata for AnyActionTypes;
      *&v54 = v5;
      *(&v54 + 1) = 0x80000001F56F1850;
      sub_1DB30C200(&v54, v53);

      v34 = swift_isUniquelyReferenced_nonNull_native();
      v52[0] = v32;
      sub_1DB31D16C(v53, 0xD00000000000001FLL, 0x80000001DB52B490, v34);

      v57 = v32;
    }

    sub_1DB30BE90(a2, v52);
    JSONObject.init(from:)(v52, v53);
    if (v4)
    {
    }

    v52[0] = v32;
    v44 = *(v29 + 8);
    *&v55 = v27;
    *(&v55 + 1) = v28;
    v56 = v29;
    __swift_allocate_boxed_opaque_existential_0(&v54);

    v44(v53, v52, v27, v29);
    v49 = v55;
    v45 = v55;
    v46 = __swift_project_boxed_opaque_existential_1(&v54, v55);
    *(v51 + 24) = v49;
    v47 = __swift_allocate_boxed_opaque_existential_0(v51);
    (*(*(v45 - 8) + 16))(v47, v46, v45);
    goto LABEL_12;
  }

  v38 = sub_1DB50B3E0();
  swift_allocError();
  v40 = v39;
  v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F80, &unk_1DB5118B0) + 48);
  *v40 = a1;
  v42 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1DB50BDB0();
  sub_1DB50B320();

  *&v54 = 60;
  *(&v54 + 1) = 0xE100000000000000;
  v43 = sub_1DB50BEE0();
  MEMORY[0x1E1285C70](v43);

  MEMORY[0x1E1285C70](0xD000000000000012, 0x80000001DB52AB80);
  sub_1DB50B3C0();
  (*(*(v38 - 8) + 104))(v40, *MEMORY[0x1E69E6AF8], v38);
  return swift_willThrow();
}

uint64_t *static ActionKindTable._decode(_:from:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v9 = dynamic_cast_existential_2_conditional(a1);
  if (v9)
  {
    v12 = v9;
    v13 = v10;
    v14 = v11;
    v47 = a4;
    v15 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    v16 = sub_1DB50BDE0();
    JSONContext.init(userInfo:)(v16);
    v17 = v53[0];
    if (!sub_1DB316CAC(0xD000000000000023, 0x80000001DB5298A0, v53[0]))
    {
      *&v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42E78, &unk_1DB50FF20);
      *&v55 = v50;
      *(&v55 + 1) = a3;
      sub_1DB30C200(&v55, v54);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v58 = v53[0];
      sub_1DB31D16C(v54, 0xD000000000000023, 0x80000001DB5298A0, isUniquelyReferenced_nonNull_native);
      v19 = v58;

      v53[0] = v19;
      v17 = v19;
    }

    v20 = a2[3];
    v21 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v20);
    v58 = v17;

    v22 = _sSD7JetCores17CodingUserInfoKeyVRszypRs_rlE11jsonContextSDyACypGAA11JSONContextV_tcfC_0(&v58);
    Decoder.withUserInfo(_:)(v22, v20, v21, v54);

    *&v56 = v12;
    *(&v56 + 1) = v13;
    v57 = v14;
    __swift_allocate_boxed_opaque_existential_0(&v55);
    sub_1DB50ADB0();
    if (v4)
    {

      return __swift_deallocate_boxed_opaque_existential_0(&v55);
    }

    v51 = v56;
    v34 = v56;
    v35 = __swift_project_boxed_opaque_existential_1(&v55, v56);
    *(v47 + 24) = v51;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v47);
    (*(*(v34 - 8) + 16))(boxed_opaque_existential_0, v35, v34);
LABEL_12:

    return __swift_destroy_boxed_opaque_existential_0(&v55);
  }

  v24 = dynamic_cast_existential_2_conditional(a1);
  if (v24)
  {
    v27 = v24;
    v28 = v26;
    v48 = a4;
    v49 = v25;
    v29 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    v30 = sub_1DB50BDE0();
    JSONContext.init(userInfo:)(v30);
    v31 = v58;
    sub_1DB315EC4(0xD00000000000001FLL, 0x80000001DB52B490, v58, &v55);
    v32 = *(&v55 + 1);
    sub_1DB3171A0(v55, *(&v55 + 1));
    if ((~v32 & 0xF000000000000007) == 0)
    {
      *&v56 = &type metadata for AnyActionTypes;
      *&v55 = v50;
      *(&v55 + 1) = a3 | 0x8000000000000000;
      sub_1DB30C200(&v55, v54);

      v33 = swift_isUniquelyReferenced_nonNull_native();
      v53[0] = v31;
      sub_1DB31D16C(v54, 0xD00000000000001FLL, 0x80000001DB52B490, v33);

      v58 = v31;
    }

    sub_1DB30BE90(a2, v53);
    JSONObject.init(from:)(v53, v54);
    if (v4)
    {
    }

    v53[0] = v31;
    v43 = *(v28 + 8);
    *&v56 = v27;
    *(&v56 + 1) = v49;
    v57 = v28;
    __swift_allocate_boxed_opaque_existential_0(&v55);

    v43(v54, v53, v27, v28);
    v52 = v56;
    v44 = v56;
    v45 = __swift_project_boxed_opaque_existential_1(&v55, v56);
    *(v48 + 24) = v52;
    v46 = __swift_allocate_boxed_opaque_existential_0(v48);
    (*(*(v44 - 8) + 16))(v46, v45, v44);
    goto LABEL_12;
  }

  v37 = sub_1DB50B3E0();
  swift_allocError();
  v39 = v38;
  v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F80, &unk_1DB5118B0) + 48);
  *v39 = a1;
  v41 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1DB50BDB0();
  sub_1DB50B320();

  *&v55 = 60;
  *(&v55 + 1) = 0xE100000000000000;
  v42 = sub_1DB50BEE0();
  MEMORY[0x1E1285C70](v42);

  MEMORY[0x1E1285C70](0xD000000000000012, 0x80000001DB52AB80);
  sub_1DB50B3C0();
  (*(*(v37 - 8) + 104))(v39, *MEMORY[0x1E69E6AF8], v37);
  return swift_willThrow();
}

uint64_t sub_1DB36DAF4()
{
  result = sub_1DB36DB14();
  qword_1ECC43BD8 = result;
  return result;
}

uint64_t sub_1DB36DB14()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43BE0, &qword_1DB512E58);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB511620;
  strcpy((inited + 32), "closureAction");
  *(inited + 46) = -4864;
  *(inited + 48) = &type metadata for ClosureAction;
  *(inited + 56) = &protocol witness table for ClosureAction;
  strcpy((inited + 64), "compoundAction");
  *(inited + 79) = -18;
  *(inited + 80) = &type metadata for CompoundAction;
  *(inited + 88) = &protocol witness table for CompoundAction;
  *(inited + 96) = 0x7463417974706D65;
  *(inited + 104) = 0xEB000000006E6F69;
  *(inited + 112) = &type metadata for EmptyAction;
  *(inited + 120) = &protocol witness table for EmptyAction;
  v1 = sub_1DB3134B0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43BE8, &qword_1DB512E60);
  swift_arrayDestroy();
  v2 = swift_initStackObject();
  *(v2 + 16) = xmmword_1DB512E30;
  *(v2 + 32) = 0x7463417472656C61;
  *(v2 + 40) = 0xEB000000006E6F69;
  *(v2 + 48) = &type metadata for Models.AlertAction;
  *(v2 + 56) = &protocol witness table for Models.AlertAction;
  *(v2 + 64) = 0xD000000000000011;
  *(v2 + 72) = 0x80000001DB52B4B0;
  *(v2 + 80) = type metadata accessor for Models.ExternalURLAction();
  *(v2 + 88) = &protocol witness table for Models.ExternalURLAction;
  *(v2 + 96) = 0x6974634170747468;
  *(v2 + 104) = 0xEA00000000006E6FLL;
  *(v2 + 112) = type metadata accessor for Models.HTTPAction();
  *(v2 + 120) = &protocol witness table for Models.HTTPAction;
  *(v2 + 128) = 0xD000000000000012;
  *(v2 + 136) = 0x80000001DB52B4D0;
  *(v2 + 144) = type metadata accessor for Models.HTTPTemplateAction();
  *(v2 + 152) = &protocol witness table for Models.HTTPTemplateAction;
  *(v2 + 160) = 0x7463417473616F74;
  *(v2 + 168) = 0xEB000000006E6F69;
  *(v2 + 176) = &type metadata for Models.ToastAction;
  *(v2 + 184) = &protocol witness table for Models.ToastAction;
  v3 = sub_1DB3134B0(v2);
  swift_setDeallocating();
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = v1;
  sub_1DB36DE54(v3, sub_1DB36E378, 0, isUniquelyReferenced_nonNull_native, &v6);

  return v6;
}

uint64_t _defaultActionKindLookup.getter()
{
  if (qword_1ECC42070 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1DB36DE34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 24);
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = v2;
}

uint64_t sub_1DB36DE54(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, uint64_t *a5)
{
  v46 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v36 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v40 = a4;
    v12 = v11;
LABEL_14:
    v14 = (v12 << 10) | (16 * __clz(__rbit64(v9)));
    v15 = *(a1 + 56);
    v16 = (*(a1 + 48) + v14);
    v17 = v16[1];
    v44[0] = *v16;
    v44[1] = v17;
    v45 = *(v15 + v14);

    a2(&v41, v44);

    v18 = v41;
    v19 = v42;
    v39 = v43;
    v20 = *v46;
    v22 = sub_1DB306160(v41, v42);
    v23 = *(v20 + 16);
    v24 = (v21 & 1) == 0;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_25;
    }

    v25 = v21;
    if (*(v20 + 24) >= v23 + v24)
    {
      if ((v40 & 1) == 0)
      {
        sub_1DB314CAC();
      }
    }

    else
    {
      v26 = v46;
      sub_1DB31EBC8();
      v27 = *v26;
      v28 = sub_1DB306160(v18, v19);
      if ((v25 & 1) != (v29 & 1))
      {
        goto LABEL_27;
      }

      v22 = v28;
    }

    v9 &= v9 - 1;
    v30 = *v46;
    if (v25)
    {

      *(v30[7] + 16 * v22) = v39;
    }

    else
    {
      v30[(v22 >> 6) + 8] |= 1 << v22;
      v31 = (v30[6] + 16 * v22);
      *v31 = v18;
      v31[1] = v19;
      *(v30[7] + 16 * v22) = v39;
      v32 = v30[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_26;
      }

      v30[2] = v34;
    }

    a4 = 1;
    v11 = v12;
  }

  v13 = v11;
  while (1)
  {
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
      sub_1DB2FEA60();
    }

    v9 = *(v6 + 8 * v12);
    ++v13;
    if (v9)
    {
      v40 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_1DB50BC20();
  __break(1u);
  return result;
}

uint64_t sub_1DB36E0D4(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, uint64_t *a5)
{
  v47 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v36 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v41 = a4;
    v12 = v11;
LABEL_14:
    v14 = (v12 << 10) | (16 * __clz(__rbit64(v9)));
    v15 = *(a1 + 56);
    v16 = (*(a1 + 48) + v14);
    v17 = v16[1];
    v45[0] = *v16;
    v45[1] = v17;
    v46 = *(v15 + v14);

    a2(&v42, v45);

    v18 = v42;
    v19 = v43;
    v39 = v44;
    v20 = *v47;
    v22 = sub_1DB306160(v42, v43);
    v23 = *(v20 + 16);
    v24 = (v21 & 1) == 0;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_25;
    }

    v25 = v21;
    if (*(v20 + 24) >= v23 + v24)
    {
      if ((v41 & 1) == 0)
      {
        sub_1DB314CAC();
      }
    }

    else
    {
      v26 = v47;
      sub_1DB31EBC8();
      v27 = *v26;
      v28 = sub_1DB306160(v18, v19);
      if ((v25 & 1) != (v29 & 1))
      {
        goto LABEL_27;
      }

      v22 = v28;
    }

    v9 &= v9 - 1;
    v30 = *v47;
    if (v25)
    {
      v40 = *(v30[7] + 16 * v22);

      *(v30[7] + 16 * v22) = v40;
    }

    else
    {
      v30[(v22 >> 6) + 8] |= 1 << v22;
      v31 = (v30[6] + 16 * v22);
      *v31 = v18;
      v31[1] = v19;
      *(v30[7] + 16 * v22) = v39;
      v32 = v30[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_26;
      }

      v30[2] = v34;
    }

    a4 = 1;
    v11 = v12;
  }

  v13 = v11;
  while (1)
  {
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
      sub_1DB2FEA60();
    }

    v9 = *(v6 + 8 * v12);
    ++v13;
    if (v9)
    {
      v41 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_1DB50BC20();
  __break(1u);
  return result;
}

Swift::tuple_key_String_value_String_optional __swiftcall CookieIterator.next()()
{
  v1 = v0;
  v2 = sub_1DB5098F0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = v0[1];
  if (v11 < *(*v0 + 16))
  {
    if (v11 < 0)
    {
      __break(1u);
    }

    else
    {
      v12 = *v0 + 16 * v11;
      v14 = *(v12 + 32);
      v13 = *(v12 + 40);

      v15 = sub_1DB36E708(61, 0xE100000000000000, v14, v13);
      if (v16)
      {
        v60 = v14;
        v61 = v13;
        sub_1DB301E30();
        v17 = sub_1DB50B1C0();
        if (v18)
        {
          v19 = v17;
          v20 = v18;

          v14 = v19;
          v13 = v20;
        }

        v9 = 0;
        v10 = 0xE000000000000000;
        v7 = v14;
        v8 = v13;
        goto LABEL_18;
      }

      v56 = v15;
      v57 = v0;
      v21 = sub_1DB50A870();
      v22 = v2;
      v23 = MEMORY[0x1E1285BF0](v21);
      v25 = v24;

      v60 = v23;
      v61 = v25;
      sub_1DB5098E0();
      sub_1DB301E30();
      v26 = sub_1DB50B190();
      v28 = v27;
      v29 = *(v3 + 8);
      v54 = v22;
      v55 = v3 + 8;
      v53 = v29;
      v29(v6, v22);

      v58 = v26;
      v59 = v28;
      v60 = v26;
      v61 = v28;
      v30 = sub_1DB50B1C0();
      if (v31)
      {
        v32 = v30;
        v33 = v31;

        v58 = v32;
        v59 = v33;
      }

      v1 = v57;
      if ((v13 & 0x2000000000000000) != 0)
      {
        v34 = HIBYTE(v13) & 0xF;
      }

      else
      {
        v34 = v14 & 0xFFFFFFFFFFFFLL;
      }

      v7 = sub_1DB50A760();
      if (v8)
      {

        v9 = 0;
        v10 = 0xE000000000000000;
        goto LABEL_17;
      }

      if (4 * v34 >= v7 >> 14)
      {
        v35 = sub_1DB50A870();
        v37 = v36;
        v39 = v38;
        v41 = v40;

        v42 = MEMORY[0x1E1285BF0](v35, v37, v39, v41);
        v44 = v43;

        v60 = v42;
        v61 = v44;
        sub_1DB5098E0();
        v45 = sub_1DB50B190();
        v47 = v46;
        v53(v6, v54);

        v60 = v45;
        v61 = v47;
        v48 = sub_1DB50B1C0();
        if (!v49)
        {
          v7 = v58;
          v8 = v59;
          v9 = v45;
          v10 = v47;
          goto LABEL_18;
        }

        v50 = v48;
        v51 = v49;

        v9 = v50;
        v10 = v51;
LABEL_17:
        v7 = v58;
        v8 = v59;
LABEL_18:
        v1[1] = v11 + 1;
        goto LABEL_23;
      }
    }

    __break(1u);
  }

LABEL_23:
  result.value.value._object = v10;
  result.value.value._countAndFlagsBits = v9;
  result.value.key._object = v8;
  result.value.key._countAndFlagsBits = v7;
  return result;
}

unint64_t sub_1DB36E708(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (sub_1DB50A850() != a1 || v9 != a2)
  {
    v10 = sub_1DB50BA30();

    if (v10)
    {
      return v8;
    }

    v8 = sub_1DB50A750();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_1DB36E7F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
    return 0;
  }

  v6 = 0;
  for (i = (a3 + 40); ; i += 2)
  {
    v8 = *(i - 1) == a1 && *i == a2;
    if (v8 || (sub_1DB50BA30() & 1) != 0)
    {
      break;
    }

    if (v3 == ++v6)
    {
      return 0;
    }
  }

  return v6;
}

uint64_t sub_1DB36E888@<X0>(Swift::tuple_key_String_value_String_optional *a1@<X8>)
{
  v3 = CookieIterator.next()();
  *a1 = v3;
  return v3.value.key._countAndFlagsBits;
}

Swift::Double __swiftcall DeResolutionNumberRule.apply(to:)(Swift::Double to)
{
  v3 = *(v1 + 16);
  result = NAN;
  if (v3 > 0.0 && *(v1 + 24) >= 0.0)
  {
    v5 = __exp10(*(v1 + 24));
    return v5 * trunc(to / v3 / v5);
  }

  return result;
}

JetCore::DeResolutionNumberRule __swiftcall DeResolutionNumberRule.init(fieldName:magnitude:significantDigits:)(Swift::String fieldName, Swift::Double magnitude, Swift::Double significantDigits)
{
  *v3 = fieldName;
  *(v3 + 16) = magnitude;
  *(v3 + 24) = significantDigits;
  result.fieldName = fieldName;
  result.significantDigits = significantDigits;
  result.magnitude = magnitude;
  return result;
}

BOOL static DeResolutionNumberRule.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    if (v3 != v5)
    {
      return 0;
    }

    return v2 == v4;
  }

  v7 = sub_1DB50BA30();
  result = 0;
  if ((v7 & 1) != 0 && v3 == v5)
  {
    return v2 == v4;
  }

  return result;
}

BOOL sub_1DB36E9AC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    if (v3 != v5)
    {
      return 0;
    }

    return v2 == v4;
  }

  v7 = sub_1DB50BA30();
  result = 0;
  if ((v7 & 1) != 0 && v3 == v5)
  {
    return v2 == v4;
  }

  return result;
}

double DispatchConfiguration.init(cachePolicy:)@<D0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0;
  *(a2 + 40) = v2;
  return result;
}

uint64_t sub_1DB36EA58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  *v16 = v8;
  v16[1] = sub_1DB306AF4;

  return IntentDispatcher.dispatcher<A, B>(for:asPartOf:)(a1, v12, v13, a7, v14, v15, a8);
}

uint64_t IntentDispatcher.dispatcher<A, B>(for:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[4] = a7;
  v8[5] = v7;
  v8[2] = a1;
  v8[3] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1DB36EB2C, 0, 0);
}

uint64_t sub_1DB36EB2C()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v6 = *(v0 + 24);
  *(v2 + 24) = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v2);
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_0, v1);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1DB36EBD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1DB30C7A0;

  return IntentDispatcher.dispatch<A>(_:objectGraph:)(a1, a2, a3, a6, a4, a7, a5);
}

uint64_t IntentDispatcher.dispatch<A>(_:objectGraph:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[18] = a7;
  v8[19] = v7;
  v8[16] = a5;
  v8[17] = a6;
  v8[14] = a3;
  v8[15] = a4;
  v8[12] = a1;
  v8[13] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DB36ECE0, 0, 0);
}

uint64_t sub_1DB36ECE0()
{
  v15 = v0[17];
  v1 = v0[13];
  (*(v0[18] + 40))(v0[16], v0[18]);
  v3 = v0[5];
  v2 = v0[6];
  v4 = __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
  v5 = *(v15 + 8);
  v14 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[20] = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *v7 = v0;
  v7[1] = sub_1DB36EE80;
  v9 = v0[19];
  v10 = v0[17];
  v11 = v0[14];
  v12 = v0[15];

  return (v14)(v0 + 7, v4, v11, AssociatedTypeWitness, v3, v2, v12, v10);
}

uint64_t sub_1DB36EE80()
{
  v2 = *(*v1 + 160);
  v5 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = sub_1DB36F24C;
  }

  else
  {
    v3 = sub_1DB36EF94;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB36EF94()
{
  v1 = v0[10];
  v2 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(v2 + 16);
  v12 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[22] = v5;
  *v5 = v0;
  v5[1] = sub_1DB36F0CC;
  v6 = v0[18];
  v7 = v0[16];
  v8 = v0[13];
  v9 = v0[14];
  v10 = v0[12];

  return v12(v10, v8, v9, v7, v6, v1, v2);
}

uint64_t sub_1DB36F0CC()
{
  v2 = *(*v1 + 176);
  v5 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = sub_1DB36F2B0;
  }

  else
  {
    v3 = sub_1DB36F1E0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB36F1E0()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1DB36F24C()
{
  v1 = v0[21];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = v0[1];

  return v2();
}

uint64_t sub_1DB36F2B0()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v1 = v0[23];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = v0[1];

  return v2();
}

uint64_t sub_1DB36F31C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_1DB30C7A0;

  return IntentDispatcher.dispatch<A>(_:objectGraph:configuration:)(a1, a2, a3, v16, a7, a5, a8, a6);
}

uint64_t IntentDispatcher.dispatch<A>(_:objectGraph:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[15] = a8;
  v9[16] = v8;
  v9[13] = a6;
  v9[14] = a7;
  v9[11] = a3;
  v9[12] = a5;
  v9[9] = a1;
  v9[10] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DB36F428, 0, 0);
}

{
  v9[15] = a8;
  v9[16] = v8;
  v9[13] = a6;
  v9[14] = a7;
  v9[11] = a3;
  v9[12] = a5;
  v9[9] = a1;
  v9[10] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DB36F9B4, 0, 0);
}

uint64_t sub_1DB36F428()
{
  if (qword_1ECC42218 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECC466E8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1DB50EE90;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1DB50EE90;
  v4 = MEMORY[0x1E69E6158];
  v0[5] = MEMORY[0x1E69E6158];
  v0[2] = 0xD0000000000000ADLL;
  v0[3] = 0x80000001DB52B4F0;
  *(v3 + 48) = 0u;
  *(v3 + 32) = 0u;
  sub_1DB301D4C((v0 + 2), v3 + 32);
  *(v3 + 64) = 0;
  *(v2 + 32) = v3;
  v5 = sub_1DB50AF40();
  if (os_log_type_enabled(v1, v5))
  {
    if (qword_1EE30EDD8 != -1)
    {
      swift_once();
    }

    v6 = off_1EE30EDE0;
    os_unfair_lock_lock(off_1EE30EDE0 + 5);
    os_unfair_lock_opaque_low = LOBYTE(v6[4]._os_unfair_lock_opaque);
    os_unfair_lock_unlock(v6 + 5);
    if (os_unfair_lock_opaque_low == 2)
    {
      LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
    }

    v8 = swift_allocObject();
    *(v8 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
    v0[6] = v2;
    v0[7] = sub_1DB31485C;
    v0[8] = v8;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
    sub_1DB314864();
    v9 = sub_1DB50A5E0();
    v11 = v10;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1DB50EE90;
    *(v12 + 56) = v4;
    *(v12 + 64) = sub_1DB31494C();
    *(v12 + 32) = v9;
    *(v12 + 40) = v11;
    sub_1DB50A1E0();
  }

  v24 = (v0[14] + 16);
  v25 = (*v24 + **v24);
  v13 = (*v24)[1];
  v14 = swift_task_alloc();
  v0[17] = v14;
  *v14 = v0;
  v14[1] = sub_1DB36F7B4;
  v15 = v0[15];
  v16 = v0[16];
  v17 = v0[13];
  v18 = v0[14];
  v19 = v0[11];
  v20 = v0[12];
  v21 = v0[9];
  v22 = v0[10];

  return v25(v21, v22, v19, v17, v15, v20, v18);
}

uint64_t sub_1DB36F7B4()
{
  v1 = *(*v0 + 136);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1DB36F8A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_1DB30C7A0;

  return IntentDispatcher.dispatch<A>(_:objectGraph:configuration:)(a1, a2, a3, v16, a7, a5, a8, a6);
}

uint64_t sub_1DB36F9B4()
{
  if (qword_1ECC42218 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECC466E8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1DB50EE90;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1DB50EE90;
  v4 = MEMORY[0x1E69E6158];
  v0[5] = MEMORY[0x1E69E6158];
  v0[2] = 0xD0000000000000ADLL;
  v0[3] = 0x80000001DB52B4F0;
  *(v3 + 48) = 0u;
  *(v3 + 32) = 0u;
  sub_1DB301D4C((v0 + 2), v3 + 32);
  *(v3 + 64) = 0;
  *(v2 + 32) = v3;
  v5 = sub_1DB50AF40();
  if (os_log_type_enabled(v1, v5))
  {
    if (qword_1EE30EDD8 != -1)
    {
      swift_once();
    }

    v6 = off_1EE30EDE0;
    os_unfair_lock_lock(off_1EE30EDE0 + 5);
    os_unfair_lock_opaque_low = LOBYTE(v6[4]._os_unfair_lock_opaque);
    os_unfair_lock_unlock(v6 + 5);
    if (os_unfair_lock_opaque_low == 2)
    {
      LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
    }

    v8 = swift_allocObject();
    *(v8 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
    v0[6] = v2;
    v0[7] = sub_1DB314CB0;
    v0[8] = v8;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
    sub_1DB314864();
    v9 = sub_1DB50A5E0();
    v11 = v10;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1DB50EE90;
    *(v12 + 56) = v4;
    *(v12 + 64) = sub_1DB31494C();
    *(v12 + 32) = v9;
    *(v12 + 40) = v11;
    sub_1DB50A1E0();
  }

  v24 = (v0[14] + 16);
  v25 = (*v24 + **v24);
  v13 = (*v24)[1];
  v14 = swift_task_alloc();
  v0[17] = v14;
  *v14 = v0;
  v14[1] = sub_1DB3708C0;
  v15 = v0[15];
  v16 = v0[16];
  v17 = v0[13];
  v18 = v0[14];
  v19 = v0[11];
  v20 = v0[12];
  v21 = v0[9];
  v22 = v0[10];

  return v25(v21, v22, v19, v17, v15, v20, v18);
}