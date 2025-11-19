char *sub_1AB0141CC(uint64_t a1)
{
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v1 + 2) = v4;
  v5 = *(v3 + 96);
  v6 = type metadata accessor for Promise.State();
  (*(*(v6 - 8) + 32))(&v1[v5], a1, v6);
  return v1;
}

double InitializeProcessLaunchTimeInterval()
{
  v3.tv_sec = 0;
  v3.tv_nsec = 0;
  v0 = clock_gettime(_CLOCK_MONOTONIC_RAW, &v3);
  if (v0)
  {
    v1 = v0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      InitializeProcessLaunchTimeInterval_cold_1(v1);
    }
  }

  else
  {
    result = v3.tv_nsec / 1000000000.0 + v3.tv_sec;
    *&gProcessLaunchTimeInterval = result;
  }

  return result;
}

char *Promise.__allocating_init()()
{
  v0 = type metadata accessor for Promise.State();
  MEMORY[0x1EEE9AC00](v0);
  v2 = (&v4 - v1);
  type metadata accessor for Promise.Observer();
  *v2 = sub_1AB4609A4();
  swift_storeEnumTagMultiPayload();
  swift_allocObject();
  return sub_1AB0141CC(v2);
}

void sub_1AB01443C(uint64_t a1, unint64_t *a2)
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

uint64_t sub_1AB014488()
{
  result = type metadata accessor for Promise.State();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t Promise.then(perform:orCatchError:on:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[0] = a1;
  v7[1] = a2;
  v7[2] = a3;
  v7[3] = a4;
  sub_1AB01494C(a5, v8);
  v8[40] = 0;

  sub_1AB0145F0(v7);
  v5 = type metadata accessor for Promise.Observer();
  return (*(*(v5 - 8) + 8))(v7, v5);
}

void sub_1AB0145F0(uint64_t a1)
{
  v2 = v1;
  v22 = a1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v21 - v5;
  v7 = type metadata accessor for Promise.State();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = (&v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v13 = (&v21 - v12);
  v14 = *(v2 + 2);
  os_unfair_lock_lock(v14 + 4);
  v15 = *(*v2 + 96);
  swift_beginAccess();
  (*(v8 + 16))(v13, &v2[v15], v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    v18 = *v13;
    os_unfair_lock_unlock(v14 + 4);
    v19 = type metadata accessor for Promise.Observer();
    sub_1AB03D640(v18, v19);
  }

  else if (EnumCaseMultiPayload)
  {
    (*(v4 + 32))(v6, v13, v3);
    os_unfair_lock_unlock(v14 + 4);
    v20 = type metadata accessor for Promise.Observer();
    sub_1AB01529C(v6, v20);
    (*(v4 + 8))(v6, v3);
  }

  else
  {
    v24 = *v13;
    v17 = type metadata accessor for Promise.Observer();
    (*(*(v17 - 8) + 16))(v23, v22, v17);
    sub_1AB460A64();
    sub_1AB460A14();
    *v11 = v24;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    (*(v8 + 40))(&v2[v15], v11, v7);
    swift_endAccess();
    os_unfair_lock_unlock(v14 + 4);
  }
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1AB01494C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1AB0149B0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *__swift_project_boxed_opaque_existential_1Tm(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_1AB014A58(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AB014AC0(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1AB014B20()
{
  result = qword_1ED4D1F80;
  if (!qword_1ED4D1F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED4D1F80);
  }

  return result;
}

_OWORD *sub_1AB014B78(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1AB014B88(uint64_t result)
{
  v2 = *(result + 16);
  if (!v2)
  {
    return result;
  }

  v3 = v1;
  for (i = result + 32; ; i += 40)
  {
    sub_1AB016620(i, &v26);
    v5 = v26;
    sub_1AB0165C4(&v27, v23);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *v3;
    v22 = *v3;
    *v3 = 0x8000000000000000;
    v8 = sub_1AB016558(v5);
    v10 = v7[2];
    v11 = (v9 & 1) == 0;
    v12 = __OFADD__(v10, v11);
    v13 = v10 + v11;
    if (v12)
    {
      break;
    }

    v14 = v9;
    if (v7[3] < v13)
    {
      sub_1AB01A340(v13, isUniquelyReferenced_nonNull_native);
      v8 = sub_1AB016558(v5);
      if ((v14 & 1) != (v15 & 1))
      {
        goto LABEL_19;
      }

LABEL_10:
      v16 = v22;
      if ((v14 & 1) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v19 = v8;
    sub_1AB01A034();
    v8 = v19;
    v16 = v22;
    if ((v14 & 1) == 0)
    {
LABEL_14:
      v16[(v8 >> 6) + 8] |= 1 << v8;
      *(v16[6] + 8 * v8) = v5;
      sub_1AB014B78(v23, (v16[7] + 32 * v8));
      v20 = v16[2];
      v12 = __OFADD__(v20, 1);
      v21 = v20 + 1;
      if (v12)
      {
        goto LABEL_18;
      }

      v16[2] = v21;
      v24 = 0u;
      v25 = 0u;
      *v3 = v16;
      goto LABEL_3;
    }

LABEL_11:
    v17 = 32 * v8;
    sub_1AB014B78((v16[7] + 32 * v8), &v24);
    sub_1AB014B78(v23, (v16[7] + v17));
    v18 = *(&v25 + 1);
    *v3 = v16;
    if (v18)
    {
      sub_1AB014AC0(&v24, &unk_1EB437E60);
      sub_1AB405670("JetEngine/DependencyDictionary.swift", 36, 2, 340);
      result = sub_1AB01667C(&v26);
      goto LABEL_4;
    }

LABEL_3:
    sub_1AB01667C(&v26);
    result = sub_1AB014AC0(&v24, &unk_1EB437E60);
LABEL_4:
    if (!--v2)
    {
      return result;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_1AB461FC4();
  __break(1u);
  return result;
}

unint64_t sub_1AB014DB4(uint64_t a1, uint64_t a2)
{
  sub_1AB4620A4();
  sub_1AB460684();
  v4 = sub_1AB462104();

  return sub_1AB014E2C(a1, a2, v4);
}

unint64_t sub_1AB014E2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1AB461DA4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

char *Promise.__allocating_init(value:)(uint64_t a1)
{
  v3 = _s9JetEngine7PromiseC8resolved7toValueACyxGx_tFZ_0(a1);
  (*(*(*(v1 + 80) - 8) + 8))(a1);
  return v3;
}

char *_s9JetEngine7PromiseC8resolved7toValueACyxGx_tFZ_0(uint64_t a1)
{
  v3 = *(v1 + 80);
  v4 = type metadata accessor for Promise.State();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v8 - v5;
  (*(*(v3 - 8) + 16))(&v8 - v5, a1, v3);
  swift_storeEnumTagMultiPayload();
  swift_allocObject();
  return sub_1AB0141CC(v6);
}

char *Promise.flatMap<A>(on:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *v5;
  swift_getAssociatedTypeWitness();
  type metadata accessor for Promise();
  v12 = Promise.__allocating_init()();
  sub_1AB01494C(a1, v17);
  v13 = swift_allocObject();
  v14 = *(v11 + 80);
  v13[2] = v14;
  v13[3] = a4;
  v13[4] = a5;
  v13[5] = a2;
  v13[6] = a3;
  v13[7] = v12;
  sub_1AB0149B0(v17, (v13 + 8));
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = a4;
  v15[4] = a5;
  v15[5] = v12;
  swift_retain_n();

  Promise.then(perform:orCatchError:on:)(sub_1AB01D510, v13, sub_1AB1825A4, v15, a1);

  return v12;
}

uint64_t sub_1AB0151AC()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 64);

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1AB0151F4()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AB01522C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437E60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AB01529C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(*(v6 - 8) + 16))(v20, v7);
  v8 = v20[0];
  if (v22)
  {
    (*(v4 + 16))(&v17[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0);
    return sub_1AB057FA4(&v17[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8, v3);
  }

  else
  {
    v10 = v20[1];

    sub_1AB0149B0(&v21, v17);
    v11 = v18;
    v12 = v19;
    v16 = __swift_project_boxed_opaque_existential_1Tm(v17, v18);
    (*(v4 + 16))(&v17[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
    v13 = (*(v4 + 80) + 40) & ~*(v4 + 80);
    v14 = swift_allocObject();
    *(v14 + 2) = v3;
    *(v14 + 3) = v8;
    *(v14 + 4) = v10;
    (*(v4 + 32))(&v14[v13], &v17[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
    v15 = *(v12 + 8);

    v15(sub_1AB015594, v14, v11, v12);

    return __swift_destroy_boxed_opaque_existential_1Tm(v17);
  }
}

uint64_t sub_1AB0154D8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1AB01561C(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AB015664()
{
  result = qword_1ED4D2060;
  if (!qword_1ED4D2060)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED4D2060);
  }

  return result;
}

uint64_t sub_1AB0156B0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1AB0156F8()
{
  type metadata accessor for Promise.Observer();
  result = sub_1AB460A64();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = sub_1AB015798();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1AB015798()
{
  result = qword_1EB4359D0;
  if (!qword_1EB4359D0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB4359D0);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_29(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_31(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_32(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_33(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_35(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_36(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_37(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_39(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_41(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_43(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_45(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_46(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_47(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_49(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_51(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_52(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_53(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void Promise.resolve(_:)(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = type metadata accessor for Promise.State();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v22[-v9 - 8];
  v11 = *(v1 + 2);
  os_unfair_lock_lock(v11 + 4);
  v12 = *(*v1 + 96);
  swift_beginAccess();
  (*(v5 + 16))(v10, &v1[v12], v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    (*(v5 + 8))(v10, v4);
    os_unfair_lock_unlock(v11 + 4);
    return;
  }

  if (EnumCaseMultiPayload)
  {
    goto LABEL_13;
  }

  v14 = *v10;
  (*(*(v3 - 8) + 16))(v8, a1, v3);
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  (*(v5 + 40))(&v1[v12], v8, v4);
  swift_endAccess();
  os_unfair_lock_unlock(v11 + 4);
  v15 = type metadata accessor for Promise.Observer();
  if (sub_1AB4609F4())
  {
    v16 = 0;
    v17 = v14 + 32;
    while (1)
    {
      v18 = sub_1AB4609D4();
      sub_1AB460974();
      if ((v18 & 1) == 0)
      {
        break;
      }

      v19 = *(v15 - 8);
      (*(v19 + 16))(v22, v17, v15);
      v20 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_12;
      }

      sub_1AB01529C(a1, v15);
      (*(v19 + 8))(v22, v15);
      ++v16;
      v17 += 80;
      if (v20 == sub_1AB4609F4())
      {
        goto LABEL_9;
      }
    }

    sub_1AB461644();
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    sub_1AB461884();
    __break(1u);
    return;
  }

LABEL_9:
}

uint64_t Promise.__deallocating_deinit()
{
  Promise.deinit();

  return swift_deallocClassInstance();
}

uint64_t Promise.deinit()
{

  v1 = *(*v0 + 96);
  v2 = type metadata accessor for Promise.State();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t OS_dispatch_queue.schedule(task:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AB4601B4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1AB4601F4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  aBlock[4] = sub_1AB02114C;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1AB01D528;
  aBlock[3] = &block_descriptor_13;
  v13 = _Block_copy(aBlock);

  _s9JetEngine22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
  v15[1] = MEMORY[0x1E69E7CC0];
  sub_1AB016500();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438540);
  sub_1AB01649C();
  sub_1AB4614E4();
  MEMORY[0x1AC59C480](0, v11, v7, v13);
  _Block_release(v13);
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
}

uint64_t sub_1AB016464()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

unint64_t sub_1AB01649C()
{
  result = qword_1ED4D1FB0;
  if (!qword_1ED4D1FB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB438540);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED4D1FB0);
  }

  return result;
}

unint64_t sub_1AB016500()
{
  result = qword_1ED4D2050;
  if (!qword_1ED4D2050)
  {
    sub_1AB4601B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED4D2050);
  }

  return result;
}

unint64_t sub_1AB016558(uint64_t a1)
{
  sub_1AB4620A4();
  MEMORY[0x1AC59D3F0](a1);
  v2 = sub_1AB462104();

  return sub_1AB0166D0(a1, v2);
}

uint64_t sub_1AB0165C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1AB0166D0(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_1AB016760(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1AB0167A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437E60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1AB016854()
{
  result = qword_1ED4D2070;
  if (!qword_1ED4D2070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED4D2070);
  }

  return result;
}

char *sub_1AB0168A8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1AB0169C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437E60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1AB016A34()
{
  result = qword_1ED4D21D0;
  if (!qword_1ED4D21D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB439A00);
    sub_1AB019170();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED4D21D0);
  }

  return result;
}

Swift::Void __swiftcall OSLogger.log(contentsOf:withLevel:)(Swift::OpaquePointer contentsOf, JetEngine::LogMessageLevel withLevel)
{
  v3 = *v2;
  if (*withLevel - 1 >= 2)
  {
    if (*withLevel)
    {
      v4 = sub_1AB461064();
    }

    else
    {
      v4 = sub_1AB461074();
    }
  }

  else
  {
    v4 = sub_1AB461094();
  }

  if (os_log_type_enabled(v3, v4))
  {
    if (qword_1EB4359F8 != -1)
    {
      swift_once();
    }

    v5 = off_1EB435A00;
    os_unfair_lock_lock(off_1EB435A00 + 5);
    os_unfair_lock_opaque_low = LOBYTE(v5[4]._os_unfair_lock_opaque);
    os_unfair_lock_unlock(v5 + 5);
    if (os_unfair_lock_opaque_low == 2)
    {
      LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
    }

    *(swift_allocObject() + 16) = (os_unfair_lock_opaque_low & 1) == 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
    sub_1AB016A34();
    v7 = sub_1AB460484();
    v9 = v8;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1AB4D4720;
    *(v10 + 56) = MEMORY[0x1E69E6158];
    *(v10 + 64) = sub_1AB016854();
    *(v10 + 32) = v7;
    *(v10 + 40) = v9;
    sub_1AB45FF14();
  }
}

uint64_t sub_1AB016CAC(char a1)
{
  v2 = v1;
  v4 = sub_1AB45F764();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30[-v9];
  sub_1AB01522C(v2, &v34);
  if (!v35)
  {
    sub_1AB0167A8(&v34);
    return 0x296C6C756E28;
  }

  sub_1AB014B78(&v34, &v36);
  BYTE1(v34) = *(v2 + 32);
  sub_1AB0165C4(&v36, &v34 + 8);
  if ((a1 & 1) == 0)
  {
LABEL_13:
    v22 = __swift_project_boxed_opaque_existential_1Tm(&v36, v37);
    v23 = MEMORY[0x1EEE9AC00](v22);
    (*(v25 + 16))(&v30[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)], v23);
    v26 = sub_1AB4605E4();
    __swift_destroy_boxed_opaque_existential_1Tm(&v34 + 8);
    __swift_destroy_boxed_opaque_existential_1Tm(&v36);
    return v26;
  }

  if (!BYTE1(v34))
  {
    if (swift_dynamicCast())
    {
      (*(v5 + 32))(v7, v10, v4);
      v12 = sub_1AB45F654();
      v13 = AMSLogableURL();

      v14 = sub_1AB460544();
      (*(v5 + 8))(v7, v4);
      __swift_destroy_boxed_opaque_existential_1Tm(&v34 + 8);
      __swift_destroy_boxed_opaque_existential_1Tm(&v36);
      return v14;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0);
    if (swift_dynamicCast())
    {
      v21 = v31;
      sub_1AB0165C4(&v36, &v32);
      if (!swift_dynamicCast())
      {
        v27 = sub_1AB45F584();
        v28 = AMSLogableError();

        v29 = sub_1AB460544();
        __swift_destroy_boxed_opaque_existential_1Tm(&v34 + 8);
        __swift_destroy_boxed_opaque_existential_1Tm(&v36);
        return v29;
      }
    }

    goto LABEL_13;
  }

  if (BYTE1(v34) == 1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&v34 + 8);
    __swift_destroy_boxed_opaque_existential_1Tm(&v36);
    return 0x657461766972705BLL;
  }

  else
  {
    sub_1AB014B78((&v34 + 8), &v32);
    v30[0] = 1;
    v15 = __swift_project_boxed_opaque_existential_1Tm(&v32, v33);
    v16 = MEMORY[0x1EEE9AC00](v15);
    (*(v18 + 16))(&v30[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)], v16);
    v19._countAndFlagsBits = sub_1AB4605E4();
    countAndFlagsBits = CryptoAlgorithm.makeDigest(fromContentsOf:)(v19)._countAndFlagsBits;

    __swift_destroy_boxed_opaque_existential_1Tm(&v32);
    __swift_destroy_boxed_opaque_existential_1Tm(&v36);
    return countAndFlagsBits;
  }
}

uint64_t sub_1AB01714C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43CF68);
  result = swift_allocObject();
  *(result + 20) = 0;
  *(result + 16) = 2;
  off_1EB435A00 = result;
  return result;
}

void sub_1AB0171C8(id a1, unsigned __int8 a2)
{
  if (a2 > 1u)
  {
    if (a2 == 2 || a2 == 3)
    {
      goto LABEL_4;
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
LABEL_4:
    }
  }

  else
  {
  }
}

uint64_t sub_1AB017200(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1AB017254(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1AB0172A8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v20 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437830);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21[-v8 - 8];
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v10);
  (*(v11 + 8))(v10, v11);
  sub_1AB01494C(a1, v31);
  sub_1AB019BC0(a3, &v26);
  v12 = swift_allocObject();
  sub_1AB0149B0(v31, v12 + 16);
  v13 = v27;
  *(v12 + 56) = v26;
  *(v12 + 72) = v13;
  *(v12 + 88) = v28;
  *(v12 + 104) = v29;
  *v9 = MEMORY[0x1E69E7CC0];
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BD48);
  v14 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  v14[2] = v15;
  sub_1AB017FB8(v9, v14 + *(*v14 + 96), &unk_1EB437830);
  v16 = swift_allocObject();
  v16[2] = sub_1AB02D44C;
  v16[3] = v12;
  v16[4] = v14;
  *&v26 = sub_1AB02D580;
  *(&v26 + 1) = v16;
  *&v27 = sub_1AB3A2930;
  *(&v27 + 1) = v14;
  sub_1AB01494C(a2, &v28);
  v30 = 0;
  swift_retain_n();

  sub_1AB017894(&v26);

  sub_1AB014AC0(&v26, &unk_1EB437870);
  sub_1AB01494C(a1, &v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436CC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4394F0);
  if (swift_dynamicCast())
  {
    sub_1AB0149B0(v24, v31);
    sub_1AB01494C(v31, &v26);
    v17 = swift_allocObject();
    sub_1AB0149B0(&v26, v17 + 16);
    sub_1AB01494C(v31, v24);
    v18 = swift_allocObject();
    sub_1AB0149B0(v24, v18 + 16);
    v22 = &type metadata for SyncTaskScheduler;
    v23 = &protocol witness table for SyncTaskScheduler;
    *&v26 = sub_1AB03C360;
    *(&v26 + 1) = v17;
    *&v27 = sub_1AB3A2938;
    *(&v27 + 1) = v18;
    sub_1AB01494C(v21, &v28);
    v30 = 0;

    sub_1AB02DAA0(&v26);

    sub_1AB014AC0(&v26, &unk_1EB439890);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    result = __swift_destroy_boxed_opaque_existential_1Tm(v21);
  }

  else
  {
    v25 = 0;
    memset(v24, 0, sizeof(v24));
    result = sub_1AB014AC0(v24, &qword_1EB4394F8);
  }

  *v20 = v14;
  return result;
}

uint64_t sub_1AB0176EC()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));
  sub_1AB021B04(v0[7], v0[8]);
  if (v0[12])
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 9));
  }

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1AB01773C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AB01777C()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AB0177B8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1AB0177C8(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for InMemoryJetPackResourceBundle()
{
  result = qword_1ED4D0B40;
  if (!qword_1ED4D0B40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1AB01784C(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    result[1] = result[1] & 0xCFFFFFFFFFFFFFFFLL | (a2 << 60);
  }

  else
  {
    *result = (a2 - 2);
    result[1] = 0x2000000000000000;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9JetEngine0A17PackSigningPolicyO(uint64_t a1)
{
  if (((*(a1 + 8) >> 60) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return (*(a1 + 8) >> 60) & 3;
  }
}

void sub_1AB017894(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  v4 = *(v1 + 24);
  if (*(v1 + 32) > 1u)
  {
    if (*(v1 + 32) == 2)
    {
      v14 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1AB2AA60C(v4);
      v15 = v4;
      v16 = 2;
    }

    else
    {
      v18 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1AB2AA60C(v4);
      v15 = v4;
      v16 = 3;
    }

    goto LABEL_12;
  }

  if (*(v1 + 32))
  {
    v17 = v4;
    os_unfair_lock_unlock(v3 + 4);
    sub_1AB017194(v17);
    v15 = v4;
    v16 = 1;
LABEL_12:
    sub_1AB0171C8(v15, v16);
    return;
  }

  sub_1AB014A58(a1, v22, &unk_1EB437870);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1AB2B08CC(0, v4[2] + 1, 1, v4);
  }

  v5 = v4[2];
  v6 = v4[3];
  v7 = v5 + 1;
  if (v5 >= v6 >> 1)
  {
    v19 = v4;
    v20 = v4[2];
    v21 = sub_1AB2B08CC((v6 > 1), v5 + 1, 1, v19);
    v5 = v20;
    v4 = v21;
  }

  v4[2] = v7;
  v8 = &v4[10 * v5];
  v8[2] = v22[0];
  v9 = v22[1];
  v10 = v22[2];
  v11 = v23[0];
  *(v8 + 89) = *(v23 + 9);
  v8[4] = v10;
  v8[5] = v11;
  v8[3] = v9;
  v12 = *(v1 + 24);
  *(v1 + 24) = v4;
  v13 = *(v1 + 32);
  *(v1 + 32) = 0;
  sub_1AB0171C8(v12, v13);
  os_unfair_lock_unlock(v3 + 4);
}

uint64_t sub_1AB017A48()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69AB840]);
  v1 = sub_1AB460514();
  v2 = [v0 initWithPath_];

  if (v2)
  {
    v3 = 1;
  }

  else
  {
    sub_1AB23337C();
    v2 = swift_allocError();
    v3 = 2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437AD0);
  v4 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v4 + 16) = v5;
  *(v4 + 24) = v2;
  *(v4 + 32) = v3;
  return v4;
}

uint64_t get_enum_tag_for_layout_string_9JetEngine0A15PackKeyProvider_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1AB017B48(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1AB014A58(v5, v20, a2);
  v8 = v20[0];
  if (v22)
  {
    **(*(v20[0] + 64) + 40) = a1;
    v9 = a1;
    return swift_continuation_throwingResume();
  }

  else
  {
    v11 = v20[1];

    sub_1AB0149B0(&v21, v17);
    v12 = v18;
    v13 = v19;
    __swift_project_boxed_opaque_existential_1Tm(v17, v18);
    v14 = swift_allocObject();
    v14[2] = v8;
    v14[3] = v11;
    v14[4] = a1;
    v15 = *(v13 + 8);

    v16 = a1;
    v15(a5, v14, v12, v13);

    return __swift_destroy_boxed_opaque_existential_1Tm(v17);
  }
}

uint64_t sub_1AB017C84()
{
  v1 = *(v0 + 16);
  v3 = *(v0 + 32);
  return v1(&v3);
}

uint64_t sub_1AB017CC4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t static BaseObjectGraph.current.getter()
{
  if (qword_1EB4359B0 != -1)
  {
    swift_once();
  }

  v1 = sub_1AB4622E4();
  v2 = BaseObjectGraph._downcast<A>(to:)(v1, v0);

  return v2;
}

uint64_t BaseObjectGraph._downcast<A>(to:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = v5;

    return v6;
  }

  else
  {
    swift_beginAccess();
    v9 = v3[3];
    v8 = v3[4];
    v11 = v3[2];
    v10 = *(a2 + 96);

    return v10(v9, v8, &v11);
  }
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

    sub_1AB0169C4(&v10, &v12);
    v14 = 0;
    v3 = *v1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v1 = v3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v3 = sub_1AB0168A8(0, *(v3 + 2) + 1, 1, v3);
      *v1 = v3;
    }

    v6 = *(v3 + 2);
    v5 = *(v3 + 3);
    if (v6 >= v5 >> 1)
    {
      v3 = sub_1AB0168A8((v5 > 1), v6 + 1, 1, v3);
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

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1AB017FB8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void static PageRenderMetricsPresenter.enableExtendedLaunchSupport()()
{
  if (qword_1EB4345C8 != -1)
  {
    swift_once();
  }

  v0 = off_1EB4345D8;
  os_unfair_lock_lock(off_1EB4345D8 + 5);
  *(v0 + 16) = 1;

  os_unfair_lock_unlock(v0 + 5);
}

uint64_t sub_1AB0180C8(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438578);
  result = swift_allocObject();
  *(result + 20) = 0;
  *(result + 16) = 0;
  *a2 = result;
  return result;
}

uint64_t ReplayLogger.init()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A280);
  v1 = swift_allocObject();
  *(v1 + 24) = 0;
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = v1;
  return v0;
}

uint64_t static LocalPreferences.currentApplication.getter()
{
  if (qword_1ED4D1D40 != -1)
  {
    swift_once();
  }
}

uint64_t PreferenceKey.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

JetEngine::Bag::Profile __swiftcall Bag.Profile.init(name:version:)(Swift::String name, Swift::String version)
{
  *v2 = name;
  v2[1] = version;
  result.version = version;
  result.name = name;
  return result;
}

JetEngine::LogMessage __swiftcall LogMessage.init(stringLiteral:)(Swift::String stringLiteral)
{
  object = stringLiteral._object;
  countAndFlagsBits = stringLiteral._countAndFlagsBits;
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AB4D4720;
  v7[3] = MEMORY[0x1E69E6158];
  v7[0] = countAndFlagsBits;
  v7[1] = object;
  *(v5 + 48) = 0u;
  *(v5 + 32) = 0u;
  result.components._rawValue = sub_1AB0169C4(v7, v5 + 32);
  *(v5 + 64) = 0;
  *v4 = v5;
  return result;
}

uint64_t OSLogger.init(subsystem:category:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (qword_1ED4D2218 != -1)
  {
    a1 = swift_once();
  }

  v3 = *(off_1ED4D2220 + 2);
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock((v3 + 24));
  sub_1AB019150((v3 + 16), &v5);
  os_unfair_lock_unlock((v3 + 24));

  *a2 = v5;
  return result;
}

uint64_t Preferences.subscript.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v59 = sub_1AB461354();
  v58 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v13 = &v56 - v12;
  v14 = *a1;
  v15 = a1[1];
  v60 = type metadata accessor for PreferenceKey();
  v61 = v14;
  *(&v68 + 1) = v60;
  v69 = &protocol witness table for PreferenceKey<A>;
  *&v67 = v14;
  *(&v67 + 1) = v15;
  v16 = *(a4 + 8);

  v62 = v6;
  v17 = a2;
  v16(&v65, &v67, a2, a4);
  if (MetatypeMetadata)
  {
    sub_1AB014B78(&v65, v70);
    __swift_destroy_boxed_opaque_existential_1Tm(&v67);
    sub_1AB0165C4(v70, &v67);
    v18 = a3;
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v70);
      v19 = *(a3 - 8);
      v20 = *(v19 + 56);
      v20(v13, 0, 1, a3);
      (*(v19 + 32))(a5, v13, a3);
      return (v20)(a5, 0, 1, a3);
    }

    else
    {
      v57 = *(*(a3 - 8) + 56);
      v57(v13, 1, 1, a3);
      (*(v58 + 8))(v13, v59);
      if (qword_1EB435D40 != -1)
      {
        swift_once();
      }

      v22 = qword_1EB43A248;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1AB4D47F0;
      v64 = sub_1AB0168A8(0, 16, 0, MEMORY[0x1E69E7CC0]);
      v24._countAndFlagsBits = 0x6F662065756C6156;
      v24._object = 0xEA00000000002072;
      LogMessage.StringInterpolation.appendLiteral(_:)(v24);
      MetatypeMetadata = v60;
      *&v65 = v61;
      *(&v65 + 1) = v15;
      sub_1AB01522C(&v65, v63);
      v67 = 0u;
      v68 = 0u;

      sub_1AB0169C4(v63, &v67);
      LOBYTE(v69) = 0;
      v25 = v64;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_1AB0168A8(0, *(v25 + 2) + 1, 1, v25);
        v64 = v25;
      }

      v27 = *(v25 + 2);
      v26 = *(v25 + 3);
      if (v27 >= v26 >> 1)
      {
        v25 = sub_1AB0168A8((v26 > 1), v27 + 1, 1, v25);
      }

      *(v25 + 2) = v27 + 1;
      v28 = &v25[40 * v27];
      v29 = v67;
      v30 = v68;
      v28[64] = v69;
      *(v28 + 2) = v29;
      *(v28 + 3) = v30;
      v64 = v25;
      sub_1AB0167A8(&v65);
      v31._countAndFlagsBits = 544106784;
      v31._object = 0xE400000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v31);
      MetatypeMetadata = v17;
      *&v65 = v62;
      sub_1AB01522C(&v65, v63);
      v67 = 0u;
      v68 = 0u;
      swift_unknownObjectRetain();
      sub_1AB0169C4(v63, &v67);
      LOBYTE(v69) = 0;
      v32 = v64;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_1AB0168A8(0, *(v32 + 2) + 1, 1, v32);
        v64 = v32;
      }

      v34 = *(v32 + 2);
      v33 = *(v32 + 3);
      if (v34 >= v33 >> 1)
      {
        v32 = sub_1AB0168A8((v33 > 1), v34 + 1, 1, v32);
      }

      *(v32 + 2) = v34 + 1;
      v35 = &v32[40 * v34];
      v36 = v67;
      v37 = v68;
      v35[64] = v69;
      *(v35 + 2) = v36;
      *(v35 + 3) = v37;
      v64 = v32;
      sub_1AB0167A8(&v65);
      v38._countAndFlagsBits = 0;
      v38._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v38);
      *(v23 + 32) = v64;
      v64 = sub_1AB0168A8(0, 22, 0, MEMORY[0x1E69E7CC0]);
      v39._object = 0x80000001AB500010;
      v39._countAndFlagsBits = 0xD000000000000015;
      LogMessage.StringInterpolation.appendLiteral(_:)(v39);
      MetatypeMetadata = swift_getMetatypeMetadata();
      *&v65 = v18;
      sub_1AB01522C(&v65, v63);
      v67 = 0u;
      v68 = 0u;
      sub_1AB0169C4(v63, &v67);
      LOBYTE(v69) = 0;
      v40 = v64;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = sub_1AB0168A8(0, *(v40 + 2) + 1, 1, v40);
      }

      v42 = *(v40 + 2);
      v41 = *(v40 + 3);
      if (v42 >= v41 >> 1)
      {
        v40 = sub_1AB0168A8((v41 > 1), v42 + 1, 1, v40);
      }

      *(v40 + 2) = v42 + 1;
      v43 = &v40[40 * v42];
      v44 = v67;
      v45 = v68;
      v43[64] = v69;
      *(v43 + 2) = v44;
      *(v43 + 3) = v45;
      v64 = v40;
      sub_1AB0167A8(&v65);
      v46._countAndFlagsBits = 0;
      v46._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v46);
      *(v23 + 40) = v64;
      v47 = sub_1AB461094();
      if (os_log_type_enabled(v22, v47))
      {
        v48 = v18;
        if (qword_1EB4359F8 != -1)
        {
          swift_once();
        }

        v49 = off_1EB435A00;
        os_unfair_lock_lock(off_1EB435A00 + 5);
        os_unfair_lock_opaque_low = LOBYTE(v49[4]._os_unfair_lock_opaque);
        os_unfair_lock_unlock(v49 + 5);
        if (os_unfair_lock_opaque_low == 2)
        {
          LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
        }

        v18 = v48;
        v51 = swift_allocObject();
        *(v51 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
        *&v67 = v23;
        *(&v67 + 1) = sub_1AB01A8D8;
        *&v68 = v51;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
        sub_1AB016A34();
        v52 = sub_1AB460484();
        v54 = v53;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
        v55 = swift_allocObject();
        *(v55 + 16) = xmmword_1AB4D4720;
        *(v55 + 56) = MEMORY[0x1E69E6158];
        *(v55 + 64) = sub_1AB016854();
        *(v55 + 32) = v52;
        *(v55 + 40) = v54;
        sub_1AB45FF14();
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v70);
      return (v57)(a5, 1, 1, v18);
    }
  }

  else
  {
    sub_1AB0167A8(&v65);
    __swift_destroy_boxed_opaque_existential_1Tm(&v67);
    return (*(*(a3 - 8) + 56))(a5, 1, 1, a3);
  }
}

void sub_1AB018CB4()
{
  sub_1AB018D50();
  if (v0 <= 0x3F)
  {
    sub_1AB018EB8();
    if (v1 <= 0x3F)
    {
      sub_1AB018E60();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1AB018D50()
{
  if (!qword_1EB435640)
  {
    sub_1AB018DB4();
    v0 = sub_1AB4603C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB435640);
    }
  }
}

unint64_t sub_1AB018DB4()
{
  result = qword_1EB4356E8;
  if (!qword_1EB4356E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4356E8);
  }

  return result;
}

unint64_t sub_1AB018E0C()
{
  result = qword_1ED4D0AD0;
  if (!qword_1ED4D0AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED4D0AD0);
  }

  return result;
}

void sub_1AB018E60()
{
  if (!qword_1ED4D1AE0)
  {
    sub_1AB45F764();
    v0 = sub_1AB461354();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED4D1AE0);
    }
  }
}

void sub_1AB018EB8()
{
  if (!qword_1EB435910[0])
  {
    v0 = sub_1AB4603C4();
    if (!v1)
    {
      atomic_store(v0, qword_1EB435910);
    }
  }
}

uint64_t sub_1AB018F28()
{
  type metadata accessor for OSLogRegistry();
  v0 = swift_allocObject();
  v1 = sub_1AB018FC4(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A278);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v1;
  *(v0 + 16) = result;
  off_1ED4D2220 = v0;
  return result;
}

unint64_t sub_1AB018FC4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438168);
    v3 = sub_1AB461924();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_1AB0197DC(v5, v6, v7, v8);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v3[6] + 32 * result);
      *v13 = v5;
      v13[1] = v6;
      v13[2] = v7;
      v13[3] = v8;
      *(v3[7] + 8 * result) = v10;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1AB0190FC()
{
  result = qword_1ED4D2228;
  if (!qword_1ED4D2228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED4D2228);
  }

  return result;
}

unint64_t sub_1AB019170()
{
  result = qword_1ED4D2200;
  if (!qword_1ED4D2200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB43BCB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED4D2200);
  }

  return result;
}

id sub_1AB0191D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v12 = *a1;
  v13 = *(*a1 + 16);

  if (v13 && (v14 = sub_1AB0197DC(a2, a3, a4, a5), (v15 & 1) != 0))
  {
    v16 = v14;

    v17 = *(*(v12 + 56) + 8 * v16);
    *a6 = v17;
    return v17;
  }

  else
  {
    sub_1AB019310();

    v19 = sub_1AB461334();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *a1;
    sub_1AB019634(v19, a2, a3, a4, a5, isUniquelyReferenced_nonNull_native);

    *a1 = v21;
    *a6 = v19;
  }

  return result;
}

unint64_t sub_1AB019310()
{
  result = qword_1ED4D21E0;
  if (!qword_1ED4D21E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED4D21E0);
  }

  return result;
}

uint64_t sub_1AB01935C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438168);
  v38 = a2;
  result = sub_1AB461914();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v2;
    v37 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v39 = (v12 - 1) & v12;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = (*(v5 + 48) + 32 * v20);
      v23 = *v22;
      v24 = v22[1];
      v25 = v22[3];
      v40 = v22[2];
      v26 = *(v21 + 8 * v20);
      if ((v38 & 1) == 0)
      {

        v27 = v26;
      }

      sub_1AB4620A4();
      sub_1AB460684();
      sub_1AB460684();
      result = sub_1AB462104();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 32 * v15);
      *v16 = v23;
      v16[1] = v24;
      v12 = v39;
      v16[2] = v40;
      v16[3] = v25;
      *(*(v7 + 56) + 8 * v15) = v26;
      ++*(v7 + 16);
      v5 = v37;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v39 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1AB019634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_1AB0197DC(a2, a3, a4, a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 < v20 || (a6 & 1) != 0)
    {
      sub_1AB01935C(v20, a6 & 1);
      v15 = sub_1AB0197DC(a2, a3, a4, a5);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        sub_1AB461FC4();
        __break(1u);
        return MEMORY[0x1EEE66BB8]();
      }
    }

    else
    {
      v23 = v15;
      sub_1AB1D9278();
      v15 = v23;
    }
  }

  v25 = *v7;
  if (v21)
  {
    *(v25[7] + 8 * v15) = a1;

    return MEMORY[0x1EEE66BB8]();
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v26 = (v25[6] + 32 * v15);
  *v26 = a2;
  v26[1] = a3;
  v26[2] = a4;
  v26[3] = a5;
  *(v25[7] + 8 * v15) = a1;
  v27 = v25[2];
  v19 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v28;
}

unint64_t sub_1AB0197DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1AB4620A4();
  sub_1AB460684();
  sub_1AB460684();
  v8 = sub_1AB462104();

  return sub_1AB01987C(a1, a2, a3, a4, v8);
}

unint64_t sub_1AB01987C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v13 = ~v7;
    v14 = *(v5 + 48);
    do
    {
      v15 = (v14 + 32 * v8);
      v16 = v15[2];
      v17 = v15[3];
      v18 = *v15 == a1 && v15[1] == a2;
      if (v18 || (sub_1AB461DA4() & 1) != 0)
      {
        v19 = v16 == a3 && v17 == a4;
        if (v19 || (sub_1AB461DA4() & 1) != 0)
        {
          break;
        }
      }

      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

uint64_t sub_1AB0199C4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AB019A34()
{
  result = sub_1AB45F9B4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

double sub_1AB019AA8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43C008);
  v0 = swift_allocObject();
  *&result = 7;
  *(v0 + 16) = xmmword_1AB4DE180;
  *(v0 + 32) = &type metadata for _AMSBagProtocolForBagRule;
  *(v0 + 40) = &off_1EE763888;
  *(v0 + 48) = &type metadata for _BagForAMSBagProtocolRule;
  *(v0 + 56) = &off_1EE763868;
  *(v0 + 64) = &type metadata for _AMSKitBagForBagRule;
  *(v0 + 72) = &off_1EE7638A8;
  *(v0 + 80) = &_s31_AccountProviderForAccountsRuleON;
  *(v0 + 88) = &off_1EE763848;
  *(v0 + 96) = &_s31_AccountsForAccountProviderRuleON;
  *(v0 + 104) = &off_1EE763828;
  *(v0 + 112) = &_s39_UndeprecateAsyncObjectGraphMetricsRuleON;
  *(v0 + 120) = &off_1EE7637E8;
  *(v0 + 128) = &_s37_DeprecateAsyncObjectGraphMetricsRuleON;
  *(v0 + 136) = &off_1EE763808;
  off_1ED4D19F8 = v0;
  return result;
}

uint64_t sub_1AB019C1C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1AB019C5C()
{
  result = qword_1ED4D1F78;
  if (!qword_1ED4D1F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED4D1F78);
  }

  return result;
}

uint64_t sub_1AB019CB0()
{
  v0 = sub_1AB014B20();
  v3 = MEMORY[0x1AC59B670](0, &type metadata for OpaqueMetatype, MEMORY[0x1E69E7CA0] + 8, v0);
  sub_1AB014B88(MEMORY[0x1E69E7CC0]);
  type metadata accessor for BaseObjectGraph();
  v1 = swift_allocObject();
  v1[3] = 0xD00000000000001BLL;
  v1[4] = 0x80000001AB50C1C0;
  v1[2] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB43BAC8);
  swift_allocObject();
  result = sub_1AB4622D4();
  qword_1EB4359A0 = result;
  return result;
}

uint64_t sub_1AB019D78(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1AB019E54(uint64_t a1)
{
  if (qword_1ED4D2218 != -1)
  {
    a1 = swift_once();
  }

  v1 = *(off_1ED4D2220 + 2);
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock((v1 + 24));
  sub_1AB2241F8((v1 + 16), &v2);
  os_unfair_lock_unlock((v1 + 24));
  qword_1ED4D1FC8 = v2;
}

uint64_t sub_1AB019F3C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1AB044F60;

  return v6(a1);
}

void *sub_1AB01A034()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438120);
  v2 = *v0;
  v3 = sub_1AB461904();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_1AB0165C4(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = sub_1AB014B78(v19, (*(v4 + 56) + 32 * v17));
      }

      while (v12);
    }

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
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t BaseObjectGraph.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_1AB01A1F0(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = *(*a3 + *MEMORY[0x1E69E6B68] + 16);
  v6 = (*(*a3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a3 + v6));
  a1(a3 + v5);
  os_unfair_lock_unlock((a3 + v6));
}

uint64_t type metadata accessor for MonotonicTimeReference()
{
  result = qword_1ED4D1598;
  if (!qword_1ED4D1598)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *BaseObjectGraph.__allocating_init(name:dependencies:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  result = swift_allocObject();
  v7 = *a3;
  result[3] = a1;
  result[4] = a2;
  result[2] = v7;
  return result;
}

uint64_t sub_1AB01A340(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438120);
  result = sub_1AB461914();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = (*(v5 + 56) + 32 * v19);
      if (a2)
      {
        sub_1AB014B78(v21, v30);
      }

      else
      {
        sub_1AB0165C4(v21, v30);
      }

      sub_1AB4620A4();
      MEMORY[0x1AC59D3F0](v20);
      result = sub_1AB462104();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      result = sub_1AB014B78(v30, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1AB01A5D8()
{

  return swift_deallocClassInstance();
}

uint64_t BaseObjectGraph._inject<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1AB461354();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  BaseObjectGraph._injectIfAvailable<A>(_:)();
  v10 = *(a2 - 8);
  if ((*(v10 + 48))(v9, 1, a2) == 1)
  {
    (*(v7 + 8))(v9, v6);
    sub_1AB38ECB0(a1, a2);
  }

  return (*(v10 + 32))(a3, v9, a2);
}

void *sub_1AB01A768(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 80);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[10 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 80 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1AB01A8E0@<X0>(char a1@<W1>, uint64_t *a2@<X8>)
{
  *(swift_allocObject() + 16) = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A338);
  sub_1AB2C70C4();
  v3 = sub_1AB460484();
  v5 = v4;

  *a2 = v3;
  a2[1] = v5;
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

uint64_t sub_1AB01A9C8(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1AB01AA20(uint64_t a1, unsigned int a2)
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

uint64_t sub_1AB01AA80@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AB016CAC(*(v1 + 16));
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t static LogMessage.describe(contentsOf:withRedaction:separator:)(uint64_t a1, char a2)
{
  *(swift_allocObject() + 16) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
  sub_1AB016A34();
  v2 = sub_1AB460484();

  return v2;
}

uint64_t JSRequest.addOption(_:withName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_1AB460784())
  {
    sub_1AB42852C("JetEngine/JSRequest.swift", 25, 2, 82);
  }

  sub_1AB01522C(a1, v7);

  return sub_1AB01AD48(v7, a2, a3);
}

JetEngine::JSRoute __swiftcall JSRoute.init(service:function:)(Swift::String service, Swift::String function)
{
  *v2 = service;
  v2[1] = function;
  result.function = function;
  result.service = service;
  return result;
}

void __swiftcall JSRequest.init(route:timeoutInterval:version:)(JetEngine::JSRequest *__return_ptr retstr, JetEngine::JSRoute route, Swift::Double_optional timeoutInterval, Swift::UInt version)
{
  object = route.function._object;
  countAndFlagsBits = route.function._countAndFlagsBits;
  v6 = route.service._object;
  v8 = *(route.service._countAndFlagsBits + 16);
  v9 = *(route.service._countAndFlagsBits + 24);
  retstr->route.service = *route.service._countAndFlagsBits;
  retstr->route.function._countAndFlagsBits = v8;
  retstr->route.function._object = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436E78);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AB4D4720;
  *(inited + 32) = 0x6E6F697372657624;
  v11 = inited + 32;
  *(inited + 72) = MEMORY[0x1E69E6810];
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = object;
  v12 = sub_1AB01B220(inited);
  swift_setDeallocating();
  sub_1AB014AC0(v11, &qword_1EB439AA0);
  retstr->options._rawValue = v12;
  *&retstr->timeoutInterval.value = v6;
  retstr->timeoutInterval.is_nil = countAndFlagsBits & 1;
}

uint64_t sub_1AB01AD48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1AB014B78(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_1AB01AE18(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_1AB014AC0(a1, &unk_1EB437E60);
    sub_1AB09AE18(a2, a3, v9);

    return sub_1AB014AC0(v9, &unk_1EB437E60);
  }

  return result;
}

_OWORD *sub_1AB01AE18(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1AB014DB4(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1AB0676CC();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1AB01AF68(v16, a4 & 1);
    v11 = sub_1AB014DB4(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1AB461FC4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);

    return sub_1AB014B78(a1, v22);
  }

  else
  {
    sub_1AB01B350(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_1AB01AF68(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB436EF0);
  v33 = a2;
  result = sub_1AB461914();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_1AB014B78(v24, v34);
      }

      else
      {
        sub_1AB0165C4(v24, v34);
      }

      sub_1AB4620A4();
      sub_1AB460684();
      result = sub_1AB462104();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_1AB014B78(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

unint64_t sub_1AB01B220(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB436EF0);
    v3 = sub_1AB461924();
    v4 = a1 + 32;

    while (1)
    {
      sub_1AB014A58(v4, &v13, &qword_1EB439AA0);
      v5 = v13;
      v6 = v14;
      result = sub_1AB014DB4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1AB014B78(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

_OWORD *sub_1AB01B350(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1AB014B78(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_1AB01B3D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v16 = swift_allocObject();
  v16[2] = a6;
  v16[3] = a7;
  v16[4] = a1;
  v16[5] = a2;
  v16[6] = a3;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    a5 = sub_1AB01B544(0, a5[2] + 1, 1, a5);
  }

  v18 = a5[2];
  v17 = a5[3];
  if (v18 >= v17 >> 1)
  {
    a5 = sub_1AB01B544((v17 > 1), v18 + 1, 1, a5);
  }

  a5[2] = v18 + 1;
  v19 = &a5[2 * v18];
  v19[4] = sub_1AB01E7AC;
  v19[5] = v16;
  a8[3] = type metadata accessor for DependentObjectGraphBuilder();
  a8[4] = &off_1F200A3D8;

  *a8 = a4;
  a8[1] = a5;
  return result;
}

uint64_t sub_1AB01B50C()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AB01B558(__darwin_time_t a1, uint64_t a2)
{
  v74 = a1;
  v3 = sub_1AB4601B4();
  v73 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1AB4610E4();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1AB4601F4();
  v72 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1AB461114();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = a2;
  if (*(a2 + 16))
  {
    v63 = *(a2 + 16);
    v69 = v7;
    v70 = v5;
    v68 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439760);
    v14 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
    v15 = swift_allocObject();
    *(v15 + 16) = 0;
    v16 = MEMORY[0x1E69E7CC0];
    *(v14 + 16) = v15;
    *(v14 + 24) = v16;
    v67 = v14;
    *(v14 + 32) = 0;
    v17 = sub_1AB015664();
    v75 = "gth";
    (*(v11 + 104))(v13, *MEMORY[0x1E69E8098], v10);
    _s9JetEngine22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
    aBlock.tv_sec = v16;
    sub_1AB01CA90(&qword_1ED4D1F50, MEMORY[0x1E69E8030]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439770);
    v18 = v16;
    sub_1AB01CB68(&qword_1ED4D1F68, &unk_1EB439770);
    sub_1AB4614E4();
    v66 = v9;
    v62 = v17;
    v19 = sub_1AB461154();
    v20 = dispatch_group_create();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439780);
    v21 = swift_allocObject();
    *(v21 + 24) = 0;
    *(v21 + 16) = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439788);
    v22 = swift_allocObject();
    *(v22 + 24) = 0;
    *(v22 + 16) = v16;
    if (qword_1EB4359B0 != -1)
    {
      swift_once();
    }

    v23 = v74;
    aBlock.tv_sec = v74;
    type metadata accessor for BaseObjectGraph();

    swift_task_localValuePush();
    sub_1AB01CBBC(*(v23 + 16), &aBlock.tv_sec);
    swift_task_localValuePop();
    if (aBlock.tv_sec)
    {
      tv_sec = aBlock.tv_sec;
    }

    else
    {
      tv_sec = v16;
    }

    type metadata accessor for _AsyncObjectGraphMetricsBox();
    v25 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439790);
    v26 = swift_allocObject();
    *(v26 + 24) = 0;
    *(v26 + 16) = tv_sec;
    *(v25 + 16) = v26;
    v27 = swift_allocObject();
    v27[2] = v20;
    v27[3] = v23;
    v27[4] = v25;
    v27[5] = v21;
    v27[6] = v22;
    v27[7] = v19;
    v28 = v71;
    v65 = v19;
    v64 = v20;
    v75 = v25;
    if (v63 == 1)
    {
      v29 = *(v71 + 32);

      v30 = v20;

      v31 = v19;
      dispatch_group_enter(v30);
      static MonotonicTime.now.getter(&aBlock);
      v32 = v22;
      v34 = aBlock.tv_sec;
      tv_nsec = aBlock.tv_nsec;
      aBlock.tv_sec = v23;
      v29(v82, &aBlock);

      v35 = swift_allocObject();
      v35[2] = v34;
      v35[3] = tv_nsec;
      v35[4] = v75;
      v35[5] = v21;
      v35[6] = v30;
      v36 = swift_allocObject();
      *(v36 + 16) = v32;
      *(v36 + 24) = v30;
      v82[3] = v62;
      v82[4] = &protocol witness table for OS_dispatch_queue;
      v37 = v31;
      v82[0] = v31;
      aBlock.tv_sec = sub_1AB0224AC;
      aBlock.tv_nsec = v35;
      v77 = sub_1AB2AB050;
      v78 = v36;
      sub_1AB01494C(v82, &v79);
      v81 = 0;
      v38 = v30;
      v39 = v75;
      v40 = v38;

      v41 = v32;
      v28 = v71;

      v42 = v37;

      sub_1AB020114(&aBlock);

      sub_1AB014AC0(&aBlock, &unk_1EB4376A0);
      __swift_destroy_boxed_opaque_existential_1Tm(v82);

      v43 = v68;
      v44 = v23;
      v45 = v66;
      v46 = &unk_1AB4D4000;
    }

    else
    {

      v49 = v20;

      v63 = v21;

      v62 = v22;

      v50 = v19;

      dispatch_group_enter(v49);
      v45 = v66;
      if (qword_1ED4D1C60 != -1)
      {
        swift_once();
      }

      v61[1] = qword_1ED4D3F00;
      v51 = swift_allocObject();
      v51[2] = v28;
      v51[3] = sub_1AB01F4E4;
      v51[4] = v27;
      v51[5] = v49;
      v79 = sub_1AB01F4D8;
      v80 = v51;
      aBlock.tv_sec = MEMORY[0x1E69E9820];
      aBlock.tv_nsec = 1107296256;
      v77 = sub_1AB01D528;
      v78 = &block_descriptor_15_0;
      v52 = _Block_copy(&aBlock);
      v53 = v49;

      _s9JetEngine22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
      v82[0] = v18;
      sub_1AB01CA90(&qword_1ED4D2050, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438540);
      sub_1AB01CB68(&qword_1ED4D1FB0, &qword_1EB438540);
      v54 = v70;
      v43 = v68;
      sub_1AB4614E4();
      MEMORY[0x1AC59C480](0, v45, v54, v52);
      _Block_release(v52);
      v46 = &unk_1AB4D4000;

      (*(v73 + 8))(v54, v43);
      (*(v72 + 8))(v45, v69);

      v44 = v74;
      v39 = v75;
      v21 = v63;
      v41 = v62;
    }

    v55 = swift_allocObject();
    v55[2] = v41;
    v55[3] = v21;
    v55[4] = v39;
    v55[5] = v44;
    v47 = v67;
    v55[6] = v28;
    v55[7] = v47;
    v79 = sub_1AB023238;
    v80 = v55;
    aBlock.tv_sec = MEMORY[0x1E69E9820];
    aBlock.tv_nsec = v46[227];
    v77 = sub_1AB01D528;
    v78 = &block_descriptor_22;
    v56 = _Block_copy(&aBlock);

    _s9JetEngine22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
    v82[0] = MEMORY[0x1E69E7CC0];
    sub_1AB01CA90(&qword_1ED4D2050, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438540);
    sub_1AB01CB68(&qword_1ED4D1FB0, &qword_1EB438540);
    v57 = v70;
    sub_1AB4614E4();
    v58 = v65;
    v59 = v64;
    sub_1AB4610C4();
    _Block_release(v56);

    (*(v73 + 8))(v57, v43);
    (*(v72 + 8))(v45, v69);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439760);
    v47 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
    v48 = swift_allocObject();
    *(v48 + 16) = 0;
    *(v47 + 16) = v48;
    *(v47 + 24) = v74;
    *(v47 + 32) = 1;
  }

  return v47;
}

uint64_t sub_1AB01C0D4()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1AB01C138()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1AB01C198()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t static BaseObjectGraph.build(withName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_1AB014B20();
  v10 = MEMORY[0x1AC59B670](0, &type metadata for OpaqueMetatype, MEMORY[0x1E69E7CA0] + 8, v6);
  v7 = MEMORY[0x1E69E7CC0];
  sub_1AB014B88(MEMORY[0x1E69E7CC0]);
  type metadata accessor for BaseObjectGraph();
  v8 = swift_allocObject();
  v8[4] = a2;
  v8[2] = v10;
  v8[3] = a1;
  a3[3] = &type metadata for StandaloneObjectGraphBuilder;
  a3[4] = &off_1F2004B90;
  *a3 = v8;
  a3[1] = v7;
}

char *sub_1AB01C2E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  *(v5 + 24) = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439760);
  v7 = sub_1AB01C40C();
  sub_1AB01C3F4(v10);

  v8 = Promise.flatMap<A>(on:_:)(v10, sub_1AB01E658, v5, v6, v7);

  __swift_destroy_boxed_opaque_existential_1Tm(v10);
  return v8;
}

uint64_t sub_1AB01C3BC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

unint64_t sub_1AB01C40C()
{
  result = qword_1ED4D1C28;
  if (!qword_1ED4D1C28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB439760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED4D1C28);
  }

  return result;
}

uint64_t sub_1AB01C470(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  a2();
  v13 = swift_allocObject();
  v13[2] = a6;
  v13[3] = a7;
  v13[4] = a8;
  v13[5] = a4;
  v14 = swift_allocObject();
  v14[2] = a6;
  v14[3] = a7;
  v14[4] = a8;
  v14[5] = a4;
  v15 = *(a8 + 16);
  swift_retain_n();
  v15(sub_1AB021120, v13, sub_1AB1825A4, v14, a5, a7, a8);
  swift_unknownObjectRelease();
}

uint64_t sub_1AB01C598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a6;
  v14[5] = a2;
  v14[6] = a3;
  v15 = *(a6 + 8);

  v15(a1, a8, v14, a5, a4, a6);
}

void *sub_1AB01C668(void *result, int64_t a2, char a3, void *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = a4[3];
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = a4[2];
  if (v8 <= v9)
  {
    v10 = a4[2];
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    v11[2] = v9;
    v11[3] = 2 * (v13 >> 4);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  if (v6)
  {
    if (v11 != a4 || v11 + 4 >= &a4[2 * v9 + 4])
    {
      memmove(v11 + 4, a4 + 4, 16 * v9);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439A60);
    swift_arrayInitWithCopy();
  }

  return v11;
}

uint64_t AsyncObjectGraphBuilder.withDependenciesSatisfied.getter@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v3 = (*(a1 + 16))();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437680);
  a2[3] = result;
  a2[4] = &off_1F200A3D8;
  v5 = MEMORY[0x1E69E7CC0];
  *a2 = v3;
  a2[1] = v5;
  return result;
}

uint64_t AsyncObjectGraphBuilder.satisfying<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return sub_1AB01C598(a1, a2, a3, a4, a5, a6, &unk_1F1FF91F8, sub_1AB01F89C);
}

{
  return sub_1AB01C598(a1, a2, a3, a4, a5, a6, &unk_1F1FF9270, sub_1AB024670);
}

uint64_t sub_1AB01C818()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t AsyncObjectGraphBuilder.satisfying<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11);
  v12 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = a3;
  *(v13 + 3) = a4;
  *(v13 + 4) = a5;
  (*(v9 + 32))(&v13[v12], v11, a4);
  (*(a5 + 8))(a1, sub_1AB01F8B4, v13, a4, a3, a5);
}

uint64_t sub_1AB01C9BC()
{
  v1 = *(*(v0 + 24) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1AB01CA48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1AB01CA90(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1AB01CAD8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1AB01CB20(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1AB01CB68(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AB01CBBC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_1AB016558(&type metadata for AsyncObjectGraphMetrics), (v5 & 1) != 0))
  {
    sub_1AB0165C4(*(a1 + 56) + 32 * v4, v13);
    sub_1AB014B78(v13, &v14);
    sub_1AB0165C4(&v14, v13);
    if (swift_dynamicCast())
    {
      *a2 = v12;
LABEL_25:
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      return __swift_destroy_boxed_opaque_existential_1Tm(&v14);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365A0);
    if (swift_dynamicCast())
    {
      sub_1AB131754(&type metadata for AsyncObjectGraphMetrics, sub_1AB134A78);

      goto LABEL_25;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365A8);
    if (swift_dynamicCast())
    {

      sub_1AB416C74("JetEngine/DependencyDictionary.swift", 36, 2, 231, v12);

      sub_1AB133198(&type metadata for AsyncObjectGraphMetrics, sub_1AB146FFC);

      goto LABEL_25;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365B0);
    if (swift_dynamicCast())
    {
      sub_1AB41754C("JetEngine/DependencyDictionary.swift", 36, 2, 239, v12);
      swift_unknownObjectRelease();
      *a2 = 0;
      goto LABEL_25;
    }
  }

  else
  {
    if (qword_1ED4D19F0 != -1)
    {
      swift_once();
    }

    v6 = off_1ED4D19F8;
    v7 = *(off_1ED4D19F8 + 2);
    v8 = off_1ED4D19F8 + 32;

    if (v7)
    {
      v9 = 0;
      while (1)
      {
        v13[0] = *&v8[16 * v9];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436590);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436598);
        if (swift_dynamicCast())
        {
          if (v14)
          {
            break;
          }
        }

        if (v7 == ++v9)
        {
          goto LABEL_13;
        }
      }

      v7 = v9;
    }

LABEL_13:
    v10 = v6[2];
    if (v7 == v10)
    {

      *a2 = 0;
      return result;
    }

    if (v7 >= v10)
    {
      __break(1u);
    }

    else
    {
      v13[0] = *&v8[16 * v7];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436590);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436598);
      if ((swift_dynamicCast() & 1) != 0 && v14)
      {

        return sub_1AB01D05C(a1, v14, *(&v14 + 1), a2);
      }
    }

    __break(1u);
  }

  sub_1AB4615D4();
  MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
  __swift_project_boxed_opaque_existential_1Tm(&v14, v15);
  sub_1AB461D64();
  MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
  MEMORY[0x1AC59BA20](0xD000000000000017, 0x80000001AB4FEEF0);
  MEMORY[0x1AC59BA20](0xD000000000000016, 0x80000001AB4FEF10);
  result = sub_1AB461884();
  __break(1u);
  return result;
}

uint64_t sub_1AB01D05C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_1AB461354();
  v21 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = (&v21 - v11);
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v10);
  v15 = &v21 - v14;
  v22 = a1;
  if (sub_1AB01D3AC(AssociatedTypeWitness, AssociatedTypeWitness))
  {
    v22 = a1;
    DependencyDictionary.subscript.getter(AssociatedTypeWitness, AssociatedTypeWitness, v12);
    if ((*(v13 + 48))(v12, 1, AssociatedTypeWitness) == 1)
    {
      (*(v21 + 8))(v12, v9);
      v16 = swift_getAssociatedTypeWitness();
      return (*(*(v16 - 8) + 56))(a4, 1, 1, v16);
    }

    else
    {
      (*(v13 + 32))(v15, v12, AssociatedTypeWitness);
      (*(a3 + 24))(v15, a2, a3);
      (*(v13 + 8))(v15, AssociatedTypeWitness);
      v20 = swift_getAssociatedTypeWitness();
      return (*(*(v20 - 8) + 56))(a4, 0, 1, v20);
    }
  }

  else
  {
    v18 = swift_getAssociatedTypeWitness();
    v19 = *(*(v18 - 8) + 56);

    return v19(a4, 1, 1, v18);
  }
}

uint64_t sub_1AB01D3AC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  if (*(v5 + 16) && (v6 = sub_1AB016558(a1), (v7 & 1) != 0))
  {
    sub_1AB0165C4(*(v5 + 56) + 32 * v6, v10);
    sub_1AB014AC0(v10, &unk_1EB437E60);
    LOBYTE(v8) = 1;
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    sub_1AB014AC0(v10, &unk_1EB437E60);
    v8 = sub_1AB01D56C(a1, a2);
    if (v8)
    {
      LOBYTE(v8) = sub_1AB01D470(v8, v5);
    }
  }

  return v8 & 1;
}

uint64_t sub_1AB01D470(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (AssociatedTypeWitness = swift_getAssociatedTypeWitness(), v4 = sub_1AB016558(AssociatedTypeWitness), (v5 & 1) != 0))
  {
    sub_1AB0165C4(*(a2 + 56) + 32 * v4, v8);
    v6 = 1;
  }

  else
  {
    v6 = 0;
    memset(v8, 0, sizeof(v8));
  }

  sub_1AB014AC0(v8, &unk_1EB437E60);
  return v6;
}

uint64_t sub_1AB01D528(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_1AB01D56C(uint64_t a1, uint64_t a2)
{
  if (qword_1ED4D19F0 != -1)
  {
    swift_once();
  }

  *(swift_allocObject() + 16) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43C010);
  swift_getExtendedExistentialTypeMetadata_unique();
  sub_1AB01561C(&qword_1ED4D1028, &qword_1EB43C010);
  sub_1AB461974();

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB43C018);
  sub_1AB461354();
  sub_1AB01561C(qword_1ED4D1070, &qword_1EB43C018);
  sub_1AB461804();
  swift_getWitnessTable();
  sub_1AB4618E4();
  swift_getWitnessTable();
  sub_1AB461804();
  sub_1AB01561C(&qword_1ED4D1068, &qword_1EB43C018);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1AB460F14();

  return v4;
}

uint64_t sub_1AB01D890@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436590);
  swift_getExtendedExistentialTypeMetadata_unique();
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    *a1 = 0;
    a1[1] = 0;
  }

  return result;
}

uint64_t sub_1AB01D92C()
{
  if (qword_1EB4359B0 != -1)
  {
    swift_once();
  }

  return sub_1AB4622F4();
}

uint64_t static MonotonicTime.now.getter@<X0>(timespec *a1@<X8>)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = sub_1AB45EFE4();
  MEMORY[0x1EEE9AC00](v2);
  __tp.tv_sec = 0;
  __tp.tv_nsec = 0;
  result = clock_gettime(_CLOCK_MONOTONIC_RAW, &__tp);
  if (result && (result = clock_gettime(_CLOCK_MONOTONIC_RAW, &__tp), result))
  {
    sub_1AB4600C4();
    sub_1AB01B220(MEMORY[0x1E69E7CC0]);
    sub_1AB252240();
    sub_1AB45F574();
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0xD00000000000002BLL, 0x80000001AB50AA60);
    sub_1AB461824();
    result = sub_1AB461884();
    __break(1u);
  }

  else
  {
    *a1 = __tp;
  }

  return result;
}

uint64_t sub_1AB01DBA0(uint64_t a1)
{
  started = type metadata accessor for StartUpPerformanceEvent();
  v3 = started;
  if (*(a1 + 16) && (v4 = sub_1AB016558(started), (v5 & 1) != 0))
  {
    sub_1AB0165C4(*(a1 + 56) + 32 * v4, v14);
    sub_1AB014B78(v14, &v15);
    sub_1AB0165C4(&v15, v14);
    if (swift_dynamicCast())
    {
      v6 = v13;
LABEL_22:
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      __swift_destroy_boxed_opaque_existential_1Tm(&v15);
      return v6;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365E0);
    if (swift_dynamicCast())
    {
      v6 = sub_1AB1315B4(type metadata accessor for StartUpPerformanceEvent, sub_1AB1343D4);

      goto LABEL_22;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365E8);
    if (swift_dynamicCast())
    {

      sub_1AB415AFC("JetEngine/DependencyDictionary.swift", 36, 2, 231, v13);

      v6 = sub_1AB132FF0(type metadata accessor for StartUpPerformanceEvent, sub_1AB1479D8);

      goto LABEL_22;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365B0);
    if (swift_dynamicCast())
    {
      sub_1AB4163D4("JetEngine/DependencyDictionary.swift", 36, 2, 239, v13);
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      __swift_destroy_boxed_opaque_existential_1Tm(&v15);
      return 0;
    }
  }

  else
  {
    if (qword_1ED4D19F0 != -1)
    {
      swift_once();
    }

    v7 = off_1ED4D19F8;
    v8 = *(off_1ED4D19F8 + 2);
    v9 = off_1ED4D19F8 + 32;

    if (v8)
    {
      v10 = 0;
      while (1)
      {
        v14[0] = *&v9[16 * v10];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436590);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365D8);
        if (swift_dynamicCast())
        {
          if (v15)
          {
            break;
          }
        }

        if (v8 == ++v10)
        {
          goto LABEL_13;
        }
      }

      v8 = v10;
    }

LABEL_13:
    v11 = v7[2];
    if (v8 == v11)
    {

      return 0;
    }

    if (v8 >= v11)
    {
      __break(1u);
    }

    else
    {
      v14[0] = *&v9[16 * v8];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436590);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365D8);
      if ((swift_dynamicCast() & 1) != 0 && v15)
      {

        sub_1AB01D05C(&v15, v15, a1, v3, v15, *(&v15 + 1));
        return v15;
      }
    }

    __break(1u);
  }

  sub_1AB4615D4();
  MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
  __swift_project_boxed_opaque_existential_1Tm(&v15, v16);
  sub_1AB461D64();
  MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
  MEMORY[0x1AC59BA20](0xD000000000000017, 0x80000001AB4FEF80);
  MEMORY[0x1AC59BA20](0xD000000000000016, 0x80000001AB4FEF10);
  result = sub_1AB461884();
  __break(1u);
  return result;
}

uint64_t Dependency.init<A>(satisfying:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[4] = a3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a4 + 1);
  v7 = *(*(a3 - 8) + 32);

  return v7(boxed_opaque_existential_0, a2, a3);
}

char *Promise.map<A>(on:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  type metadata accessor for Promise();
  v8 = Promise.__allocating_init()();
  v9 = swift_allocObject();
  v10 = *(v7 + 80);
  v9[2] = v10;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = v8;
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = v8;
  swift_retain_n();

  Promise.then(perform:orCatchError:on:)(sub_1AB01E4A8, v9, sub_1AB03C658, v11, a1);

  return v8;
}

uint64_t sub_1AB01E20C()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AB01E24C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AB01E284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*a4 + 80);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - v7;
  v9(v6);
  Promise.resolve(_:)(v8);
  return (*(v5 + 8))(v8, v4);
}

uint64_t objectdestroy_5Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroy_5Tm_0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroy_85Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t objectdestroy_5Tm_1()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1AB01E4B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v14 = swift_allocObject();
  v14[2] = a6;
  v14[3] = a1;
  v14[4] = a2;
  v14[5] = a3;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1AB01F890;
  *(v15 + 24) = v14;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    a5 = sub_1AB01E644(0, a5[2] + 1, 1, a5);
  }

  v17 = a5[2];
  v16 = a5[3];
  if (v17 >= v16 >> 1)
  {
    a5 = sub_1AB01E644((v16 > 1), v17 + 1, 1, a5);
  }

  a5[2] = v17 + 1;
  v18 = &a5[2 * v17];
  v18[4] = sub_1AB01F81C;
  v18[5] = v15;
  a7[3] = &type metadata for StandaloneObjectGraphBuilder;
  a7[4] = &off_1F2004B90;

  *a7 = a4;
  a7[1] = a5;
  return result;
}

uint64_t sub_1AB01E608()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AB01E660(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 16);
  if (v3)
  {
    v14 = &type metadata for StandaloneObjectGraphBuilder;
    v15 = &off_1F2004B90;
    v13[0] = v2;
    v13[1] = MEMORY[0x1E69E7CC0];

    v5 = a2 + 40;
    do
    {
      v6 = *(v5 - 8);

      v6(v12, v13);

      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      sub_1AB0149B0(v12, v13);
      v5 += 16;
      --v3;
    }

    while (v3);
    v7 = v14;
    v8 = v15;
    __swift_project_boxed_opaque_existential_1Tm(v13, v14);
    v9 = (v8[2])(v7, v8);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439760);
    v9 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
    v10 = swift_allocObject();
    *(v10 + 16) = 0;
    *(v9 + 16) = v10;
    *(v9 + 24) = v2;
    *(v9 + 32) = 1;
  }

  return v9;
}

uint64_t sub_1AB01E7AC(void *a1)
{
  v2 = v1[3];
  v3 = v1[4];
  v5 = v1[5];
  v4 = v1[6];
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v6);
  return (*(v7 + 8))(v3, v5, v4, v2, v6, v7);
}

char *sub_1AB01E858(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439A38);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t JSRoute.function.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t JSRequest.route.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

uint64_t JSRoute.service.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t JSONObject.init(wrapping:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 24))
  {
    v4 = swift_allocObject();
    result = sub_1AB014B78(a1, (v4 + 16));
    v6 = &off_1F1FFB5A8;
    v7 = &type metadata for FoundationValue;
  }

  else
  {
    result = sub_1AB014AC0(a1, &unk_1EB437E60);
    v4 = 0;
    v7 = 0;
    v6 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  *a2 = v4;
  a2[3] = v7;
  a2[4] = v6;
  return result;
}

double JSONObject.untyped.getter@<D0>(_OWORD *a1@<X8>)
{
  sub_1AB01EC0C(v1, v6);
  v3 = v7;
  if (v7)
  {
    v4 = v8;
    __swift_project_boxed_opaque_existential_1Tm(v6, v7);
    (*(v4 + 120))(v3, v4);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
  }

  else
  {
    sub_1AB014AC0(v6, &qword_1EB436BA0);
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

void sub_1AB01EB64(_OWORD *a1@<X8>)
{
  sub_1AB0165C4(v1, v4);
  sub_1AB016760(0, &qword_1ED4D1D80);
  if (swift_dynamicCast())
  {

    *a1 = 0u;
    a1[1] = 0u;
  }

  else
  {
    sub_1AB0165C4(v1, a1);
  }
}

uint64_t get_enum_tag_for_layout_string_9JetEngine12BridgedValue_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1AB01EC0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436BA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t JSONObject.init(deserializing:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v19 = *MEMORY[0x1E69E9840];
  if (qword_1EB4356D0 != -1)
  {
    swift_once();
  }

  if (sub_1AB0672FC(qword_1EB46C2A0, *algn_1EB46C2A8, a1, a2))
  {
    v6 = [objc_allocWithZone(MEMORY[0x1E695DF20]) init];
    v7 = &unk_1ED4D1BA0;
LABEL_9:
    v17 = sub_1AB016760(0, v7);
    *&v16 = v6;
LABEL_10:
    sub_1AB014B78(&v16, v18);
    sub_1AB0165C4(v18, &v16);
    a3[3] = &type metadata for FoundationValue;
    a3[4] = &off_1F1FFB5A8;
    v8 = swift_allocObject();
    *a3 = v8;
    sub_1AB014B78(&v16, (v8 + 16));
    sub_1AB017254(a1, a2);
    return __swift_destroy_boxed_opaque_existential_1Tm(v18);
  }

  if (qword_1EB4356D8 != -1)
  {
    swift_once();
  }

  if (sub_1AB0672FC(qword_1EB46C248, unk_1EB46C250, a1, a2))
  {
    v6 = [objc_allocWithZone(MEMORY[0x1E695DEC8]) init];
    v7 = &qword_1ED4D0BE0;
    goto LABEL_9;
  }

  v10 = objc_opt_self();
  v11 = sub_1AB45F834();
  v15 = 0;
  v12 = [v10 JSONObjectWithData:v11 options:4 error:&v15];

  v13 = v15;
  if (v12)
  {
    sub_1AB461494();
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  v14 = v13;
  sub_1AB45F594();

  swift_willThrow();
  return sub_1AB017254(a1, a2);
}

uint64_t sub_1AB01EEF4()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AB01EF2C(double a1)
{
  v2 = v1;
  if (qword_1ED4D1FC0 != -1)
  {
    swift_once();
  }

  v4 = qword_1ED4D1FC8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AB4D47F0;
  v47 = sub_1AB0168A8(0, 10, 0, MEMORY[0x1E69E7CC0]);
  v6._countAndFlagsBits = 0x676E69646C697542;
  v6._object = 0xE900000000000020;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  v7 = sub_1AB462314();
  v8 = MEMORY[0x1E69E6158];
  v46 = MEMORY[0x1E69E6158];
  v45[0] = v7;
  v45[1] = v9;
  sub_1AB01522C(v45, v41);
  v42 = 0u;
  v43 = 0u;
  sub_1AB0169C4(v41, &v42);
  v44 = 0;
  v10 = v47;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = sub_1AB0168A8(0, *(v10 + 2) + 1, 1, v10);
    v47 = v10;
  }

  v12 = *(v10 + 2);
  v11 = *(v10 + 3);
  if (v12 >= v11 >> 1)
  {
    v10 = sub_1AB0168A8((v11 > 1), v12 + 1, 1, v10);
  }

  *(v10 + 2) = v12 + 1;
  v13 = &v10[40 * v12];
  v14 = v42;
  v15 = v43;
  v13[64] = v44;
  *(v13 + 2) = v14;
  *(v13 + 3) = v15;
  v47 = v10;
  sub_1AB0167A8(v45);
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v16);
  *(v5 + 32) = v47;
  v47 = sub_1AB0168A8(0, 14, 0, MEMORY[0x1E69E7CC0]);
  v17._countAndFlagsBits = 0x206B6F6F74;
  v17._object = 0xE500000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v17);
  v46 = MEMORY[0x1E69E63B0];
  *v45 = a1;
  sub_1AB01522C(v45, v41);
  v42 = 0u;
  v43 = 0u;
  sub_1AB0169C4(v41, &v42);
  v44 = 0;
  v18 = v47;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v18 = sub_1AB0168A8(0, *(v18 + 2) + 1, 1, v18);
  }

  v20 = *(v18 + 2);
  v19 = *(v18 + 3);
  if (v20 >= v19 >> 1)
  {
    v18 = sub_1AB0168A8((v19 > 1), v20 + 1, 1, v18);
  }

  *(v18 + 2) = v20 + 1;
  v21 = &v18[40 * v20];
  v22 = v42;
  v23 = v43;
  v21[64] = v44;
  *(v21 + 2) = v22;
  *(v21 + 3) = v23;
  v47 = v18;
  sub_1AB0167A8(v45);
  v24._countAndFlagsBits = 0x73646E6F63657320;
  v24._object = 0xE800000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v24);
  *(v5 + 40) = v47;
  v25 = sub_1AB461094();
  if (os_log_type_enabled(v4, v25))
  {
    if (qword_1EB4359F8 != -1)
    {
      swift_once();
    }

    v26 = off_1EB435A00;
    os_unfair_lock_lock(off_1EB435A00 + 5);
    os_unfair_lock_opaque_low = LOBYTE(v26[4]._os_unfair_lock_opaque);
    os_unfair_lock_unlock(v26 + 5);
    if (os_unfair_lock_opaque_low == 2)
    {
      LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
    }

    v28 = swift_allocObject();
    *(v28 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
    *&v42 = v5;
    *(&v42 + 1) = sub_1AB01A8D8;
    *&v43 = v28;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
    sub_1AB016A34();
    v29 = sub_1AB460484();
    v31 = v30;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1AB4D4720;
    *(v32 + 56) = v8;
    *(v32 + 64) = sub_1AB016854();
    *(v32 + 32) = v29;
    *(v32 + 40) = v31;
    sub_1AB45FF14();
  }

  v33 = sub_1AB462314();
  v35 = v34;
  v36 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v36;
  if ((result & 1) == 0)
  {
    result = sub_1AB01E858(0, *(v36 + 16) + 1, 1, v36);
    v36 = result;
    *v2 = result;
  }

  v39 = *(v36 + 16);
  v38 = *(v36 + 24);
  if (v39 >= v38 >> 1)
  {
    result = sub_1AB01E858((v38 > 1), v39 + 1, 1, v36);
    v36 = result;
  }

  *(v36 + 16) = v39 + 1;
  v40 = v36 + 24 * v39;
  *(v40 + 32) = v33;
  *(v40 + 40) = v35;
  *(v40 + 48) = a1;
  *v2 = v36;
  return result;
}

void sub_1AB01F45C(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  sub_1AB015664();
  sub_1AB461104();
  dispatch_group_leave(a4);
}

char *sub_1AB01F4F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_1EB4359B0 != -1)
  {
    swift_once();
  }

  v16[0] = a1;
  type metadata accessor for BaseObjectGraph();

  swift_task_localValuePush();
  v8 = sub_1AB01DBA0(*(a1 + 16));
  v9 = swift_task_localValuePop();
  if (v8)
  {

    v10 = sub_1AB043384(a2);

    if (v10)
    {

      sub_1AB460164();
    }
  }

  else
  {
    v10 = 0;
  }

  MEMORY[0x1EEE9AC00](v9);
  type metadata accessor for Promise();
  sub_1AB01D92C();
  v11 = swift_allocObject();
  v11[2] = a5;
  v11[3] = v10;
  v11[4] = v8;
  v11[5] = a2;
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  v16[3] = &type metadata for SyncTaskScheduler;
  v16[4] = &protocol witness table for SyncTaskScheduler;
  swift_retain_n();

  Promise.then(perform:orCatchError:on:)(sub_1AB01FD24, v11, sub_1AB158098, v12, v16);

  __swift_destroy_boxed_opaque_existential_1Tm(v16);
  v13 = swift_allocObject();
  *(v13 + 16) = a5;
  *(v13 + 24) = a2;
  sub_1AB01C3F4(v16);
  v14 = Promise.map<A>(on:_:)(v16, sub_1AB01FD08, v13);

  __swift_destroy_boxed_opaque_existential_1Tm(v16);
  return v14;
}

uint64_t sub_1AB01F7CC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AB01F81C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1AB01F850(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = a1;
  v2(&v4, &v5);
  return v4;
}

char *sub_1AB01F8B4()
{
  v1 = (*(*(*(v0 + 24) - 8) + 80) + 40) & ~*(*(*(v0 + 24) - 8) + 80);
  type metadata accessor for Promise();
  return _s9JetEngine7PromiseC8resolved7toValueACyxGx_tFZ_0(v0 + v1);
}

uint64_t sub_1AB01F91C(void (*a1)(uint64_t), int a2, dispatch_group_t group, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  dispatch_group_enter(group);
  static MonotonicTime.now.getter(&v22);
  tv_sec = v22.tv_sec;
  tv_nsec = v22.tv_nsec;
  a1(a4);
  v17 = swift_allocObject();
  v17[2] = tv_sec;
  v17[3] = tv_nsec;
  v17[4] = a5;
  v17[5] = a6;
  v17[6] = group;
  v18 = swift_allocObject();
  *(v18 + 16) = a7;
  *(v18 + 24) = group;
  v26[3] = sub_1AB015664();
  v26[4] = &protocol witness table for OS_dispatch_queue;
  v26[0] = a8;
  v22.tv_sec = sub_1AB022474;
  v22.tv_nsec = v17;
  v23 = sub_1AB2AB3D0;
  v24 = v18;
  sub_1AB01494C(v26, v25);
  v25[40] = 0;
  v19 = group;

  v20 = a8;

  sub_1AB020114(&v22);

  sub_1AB014AC0(&v22, &unk_1EB4376A0);
  return __swift_destroy_boxed_opaque_existential_1Tm(v26);
}

uint64_t sub_1AB01FAB4@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 24))(*(v1 + 40));
  *a1 = result;
  return result;
}

unint64_t sub_1AB01FB08(unint64_t result, uint64_t a2, void (*a3)(uint64_t (*)(uint64_t a1), uint64_t))
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (*(a2 + 16) <= result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v5 = a2 + 16 * result;
  v6 = swift_allocObject();
  *(v6 + 16) = *(v5 + 32);

  a3(sub_1AB01F850, v6);
}

uint64_t sub_1AB01FBAC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

char *sub_1AB01FBE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a5 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10(v7);
  type metadata accessor for Promise();
  v11 = _s9JetEngine7PromiseC8resolved7toValueACyxGx_tFZ_0(v9);
  (*(v6 + 8))(v9, a5);
  return v11;
}

uint64_t sub_1AB01FD30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1AB460134();
  v8 = *(v7 - 8);
  result = MEMORY[0x1EEE9AC00](v7);
  v11 = &v12 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    (*(v8 + 104))(v11, *MEMORY[0x1E6977AC8], v7);
    sub_1AB460174();
    result = (*(v8 + 8))(v11, v7);
  }

  if (a3)
  {
    v13 = a4;
    return StartUpPerformanceEvent.record(checkpoint:)(&v13);
  }

  return result;
}

uint64_t objectdestroy_20Tm(void (*a1)(void), uint64_t a2)
{

  a1(*(v2 + 32));

  return MEMORY[0x1EEE6BDD0](v2, a2, 7);
}

uint64_t sub_1AB01FEC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8);
  return Dependency.init<A>(satisfying:with:)(a2, v8, a3, a4);
}

uint64_t sub_1AB01FFA4(uint64_t a1)
{
  sub_1AB014A58(v1, v19, &unk_1EB4376A0);
  v3 = v19[0];
  if (v21)
  {
    sub_1AB016620(a1, &v16);
    v4 = *(*(v3 + 64) + 40);
    v5 = v18;
    v6 = v17;
    *v4 = v16;
    *(v4 + 16) = v6;
    *(v4 + 32) = v5;
    return swift_continuation_throwingResume();
  }

  else
  {
    v8 = v19[1];

    sub_1AB0149B0(&v20, &v16);
    v9 = *(&v17 + 1);
    v10 = v18;
    __swift_project_boxed_opaque_existential_1Tm(&v16, *(&v17 + 1));
    sub_1AB016620(a1, v14);
    v11 = swift_allocObject();
    *(v11 + 16) = v3;
    *(v11 + 24) = v8;
    v12 = v14[1];
    *(v11 + 32) = v14[0];
    *(v11 + 48) = v12;
    *(v11 + 64) = v15;
    v13 = *(v10 + 8);

    v13(sub_1AB0224A8, v11, v9, v10);

    return __swift_destroy_boxed_opaque_existential_1Tm(&v16);
  }
}

void sub_1AB020114(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  sub_1AB014A58(v1 + 24, v20, &unk_1EB43D2A0);
  if (v22 > 1u)
  {
    v12 = *&v20[0];
    os_unfair_lock_unlock(v3 + 4);
    sub_1AB2AA06C(v12);
  }

  else if (v22)
  {
    v16 = v20[0];
    v17 = v20[1];
    *&v18 = v21;
    os_unfair_lock_unlock(v3 + 4);
    sub_1AB01FFA4(&v16);
    sub_1AB01667C(&v16);
  }

  else
  {
    v4 = *&v20[0];
    sub_1AB014A58(a1, &v16, &unk_1EB4376A0);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1AB02333C(0, v4[2] + 1, 1, v4);
    }

    v5 = v4[2];
    v6 = v4[3];
    v7 = v5 + 1;
    if (v5 >= v6 >> 1)
    {
      v13 = v4;
      v14 = v4[2];
      v15 = sub_1AB02333C((v6 > 1), v5 + 1, 1, v13);
      v5 = v14;
      v4 = v15;
    }

    v4[2] = v7;
    v8 = &v4[10 * v5];
    v8[2] = v16;
    v9 = v17;
    v10 = v18;
    v11 = v19[0];
    *(v8 + 89) = *(v19 + 9);
    v8[4] = v10;
    v8[5] = v11;
    v8[3] = v9;
    *&v16 = v4;
    BYTE8(v18) = 0;
    swift_beginAccess();
    sub_1AB017CC4(&v16, v1 + 24, &unk_1EB43D2A0);
    swift_endAccess();
    os_unfair_lock_unlock(v3 + 4);
  }
}

uint64_t sub_1AB0202E4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1AB027460;

  return Promise.then()(a1);
}

uint64_t dispatch thunk of Future.then()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1AB027460;

  return v9(a1, a2, a3);
}

uint64_t sub_1AB0204A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1AB0204F0(unint64_t *a1, void (*a2)(uint64_t))
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

JetEngine::MetricsFieldsContext __swiftcall MetricsFieldsContext.init()()
{
  v1 = v0;
  result.storage._rawValue = sub_1AB01B220(MEMORY[0x1E69E7CC0]);
  v1->storage._rawValue = result.storage._rawValue;
  return result;
}

uint64_t Promise.then()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1AB0205B0, 0, 0);
}

uint64_t sub_1AB0205B0()
{
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_1AB05FD00;
  v2 = v0[2];
  v3 = v0[3];

  return sub_1AB02067C(v2, 0, 0, sub_1AB020844, v3);
}

uint64_t sub_1AB02067C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[10] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = sub_1AB460AE4();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  return MEMORY[0x1EEE6DFA0](sub_1AB020710, v6, v8);
}

uint64_t sub_1AB020710()
{
  v1 = v0[11];
  v2 = v0[10];
  v0[2] = v0;
  v0[7] = v2;
  v0[3] = sub_1AB05FBF8;
  v3 = swift_continuation_init();
  v1(v3);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1AB0207B8(uint64_t a1)
{
  v3[0] = a1;
  v4 = 1;
  sub_1AB0145F0(v3);
  v1 = type metadata accessor for Promise.Observer();
  return (*(*(v1 - 8) + 8))(v3, v1);
}

uint64_t sub_1AB02084C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1AB027554;

  return sub_1AB019F3C(a1, v4);
}

char *sub_1AB020904(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BD90);
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
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1AB020A10(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 104) - 8) + 32))(v2 + *(*v2 + 120), a1);
  return v2;
}

JetEngine::JetPackFileStreamSource __swiftcall JetPackFileStreamSource.init(path:)(Swift::String path)
{
  *v1 = path;
  v1[1]._countAndFlagsBits = 0;
  v1[1]._object = 0;
  result.path = path;
  return result;
}

void sub_1AB020AE0(uint64_t a1@<X8>)
{
  v37 = a1;
  v1 = sub_1AB45FBC4();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v39 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1AB45FBE4();
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v38 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1AB45F764();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v48 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v47 = &v37 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v46 = &v37 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v45 = &v37 - v13;
  v14 = sub_1AB45F624();
  v44 = *(v14 + 16);
  if (v44)
  {
    v15 = 0;
    v42 = (v6 + 32);
    v16 = (v6 + 8);
    v17 = (v14 + 40);
    v18 = MEMORY[0x1E69E7CC0];
    v43 = v14;
    while (v15 < *(v14 + 16))
    {
      v20 = *(v17 - 1);
      v19 = *v17;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_1AB020904(0, *(v18 + 16) + 1, 1, v18);
      }

      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      if (v22 >= v21 >> 1)
      {
        v18 = sub_1AB020904((v21 > 1), v22 + 1, 1, v18);
      }

      *(v18 + 16) = v22 + 1;
      v23 = v18 + 16 * v22;
      *(v23 + 32) = v20;
      *(v23 + 40) = v19;
      v24 = objc_opt_self();
      v25 = sub_1AB460934();

      v26 = [v24 fileURLWithPathComponents_];

      if (!v26)
      {

        goto LABEL_13;
      }

      ++v15;
      v27 = v46;
      sub_1AB45F6C4();

      v28 = v45;
      (*v42)(v45, v27, v5);
      v29 = v48;
      sub_1AB45F5F4();
      v30 = v47;
      sub_1AB45F674();
      v31 = *v16;
      (*v16)(v29, v5);
      v18 = sub_1AB45F624();
      v31(v30, v5);
      v31(v28, v5);
      v17 += 2;
      v14 = v43;
      if (v44 == v15)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:

    v32 = objc_opt_self();
    v33 = sub_1AB460934();

    v34 = [v32 fileURLWithPathComponents_];

    if (v34)
    {
      sub_1AB45F6C4();
    }

    else
    {
LABEL_13:
      sub_1AB45FBB4();
      sub_1AB01B220(MEMORY[0x1E69E7CC0]);
      sub_1AB357214();
      v35 = v38;
      v36 = v41;
      sub_1AB45F574();
      sub_1AB45FBD4();
      (*(v40 + 8))(v35, v36);
      swift_willThrow();
    }
  }
}

__n128 InMemoryJetPackLoader.init(signingPolicy:keyProvider:)@<Q0>(__n128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  result = *a1;
  v4 = *a2;
  v5 = a2[1];
  *a3 = *a1;
  *(a3 + 16) = v4;
  *(a3 + 32) = v5;
  *(a3 + 48) = *(a2 + 4);
  return result;
}

uint64_t sub_1AB020FA8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[3] = a4;
  v14[4] = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v14);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_0, a2, a4);
  type metadata accessor for BaseObjectGraph();
  v10 = static BaseObjectGraph.current.getter();
  if (qword_1EB4359B0 != -1)
  {
    swift_once();
  }

  v13 = v10;

  swift_task_localValuePush();
  sub_1AB0172A8(a1, v14, a3, &v13);
  swift_task_localValuePop();

  v11 = v13;
  __swift_destroy_boxed_opaque_existential_1Tm(v14);
  return v11;
}

uint64_t InMemoryJetPackLoader.bundle(from:on:)(void *a1, void *a2)
{
  v4 = a2[3];
  v5 = a2[4];
  v6 = __swift_project_boxed_opaque_existential_1Tm(a2, v4);

  return sub_1AB020FA8(a1, v6, v2, v4, v5);
}

unint64_t sub_1AB021178@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v7 = sub_1AB4607E4();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_1AB0215B0(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_1AB0215B0((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x1E69E7CC0];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_1AB4607C4();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_1AB4606A4();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_1AB4606A4();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_1AB4607E4();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_1AB0215B0(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_1AB4607E4();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_1AB0215B0(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_1AB0215B0((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_1AB4606A4();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AB021558(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1AB461DA4() & 1;
  }
}

char *sub_1AB0215B0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439D10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1AB0216BC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438058);
  v33 = a2;
  result = sub_1AB461914();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v34 = *(*(v5 + 56) + v21);
      if ((v33 & 1) == 0)
      {

        sub_1AB017200(v34, *(&v34 + 1));
      }

      sub_1AB4620A4();
      sub_1AB460684();
      result = sub_1AB462104();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v34;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_1AB021978(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438058);
    v3 = sub_1AB461924();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      sub_1AB017200(v7, v8);
      result = sub_1AB014DB4(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1AB021A90@<X0>(uint64_t a1@<X8>)
{
  sub_1AB45F634();
  v2 = sub_1AB45F764();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

uint64_t sub_1AB021B04(uint64_t result, unint64_t a2)
{
  v2 = (a2 >> 60) & 3;
  if (v2)
  {
    if (v2 != 1)
    {
      return result;
    }

    a2 &= 0xCFFFFFFFFFFFFFFFLL;
  }

  return sub_1AB017254(result, a2);
}

id sub_1AB021B20()
{
  v1 = v0[1];
  if (((v1 >> 60) & 3) > 1)
  {
    if (*v0 | v1 ^ 0x2000000000000000)
    {
      v5 = [objc_opt_self() defaultSignatureVerifier];
    }

    else
    {
      v5 = [objc_opt_self() unsafeIgnoreSignatureVerifier];
    }

    return v5;
  }

  else
  {
    v2 = sub_1AB45F834();
    v3 = [objc_opt_self() signatureVerifierWithCertificate_];

    return v3;
  }
}

uint64_t sub_1AB021C48(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = sub_1AB460544();
  v7 = v6;

  v8 = a3;
  LOBYTE(v5) = v4(v5, v7, v8);

  return v5 & 1;
}

uint64_t sub_1AB021CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1AB014DB4(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1AB0216BC(v18, a5 & 1);
      v13 = sub_1AB014DB4(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_1AB461FC4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_1AB1D8520();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    v25 = *v24;
    v26 = v24[1];
    *v24 = a1;
    v24[1] = a2;

    return sub_1AB017254(v25, v26);
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v23[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v23[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v23[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v31;
}

void *DependencyDictionary.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v23 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(v9 + 16) && (v10 = sub_1AB016558(a1), (v11 & 1) != 0))
  {
    sub_1AB0165C4(*(v9 + 56) + 32 * v10, v25);
    sub_1AB014B78(v25, &v26);
    sub_1AB0165C4(&v26, v25);
    if (swift_dynamicCast())
    {
      (*(v23 + 32))(a3, v8, a2);
LABEL_14:
      (*(v23 + 56))(a3, 0, 1, a2);
LABEL_19:
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      return __swift_destroy_boxed_opaque_existential_1Tm(&v26);
    }

    type metadata accessor for DependencyCell();
    if (swift_dynamicCast())
    {
      sub_1AB031D8C();

      goto LABEL_14;
    }

    type metadata accessor for ThrowingDependencyCell();
    v16 = swift_dynamicCast();
    if (v16)
    {
      v17 = v24;
      MEMORY[0x1EEE9AC00](v16);
      v20 = v17;
      v21 = a1;
      requirementFailure(_:file:line:)(sub_1AB297C1C, (&v22 - 2), "JetEngine/DependencyDictionary.swift", 36, 2, 231);
      sub_1AB442FA0();
      (*(v23 + 56))(a3, 0, 1, a2);

      goto LABEL_19;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365B0);
    v18 = swift_dynamicCast();
    if (v18)
    {
      v22 = v24;
      MEMORY[0x1EEE9AC00](v18);
      *(&v22 - 4) = a2;
      *(&v22 - 24) = v22;
      v21 = a1;
      requirementFailure(_:file:line:)(sub_1AB298320, (&v22 - 3), "JetEngine/DependencyDictionary.swift", 36, 2, 239);
      swift_unknownObjectRelease();
      (*(v23 + 56))(a3, 1, 1, a2);
      goto LABEL_19;
    }

    *&v24 = 0;
    *(&v24 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    __swift_project_boxed_opaque_existential_1Tm(&v26, v27);
    sub_1AB461D64();
    MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
    v19 = sub_1AB462314();
    MEMORY[0x1AC59BA20](v19);

    MEMORY[0x1AC59BA20](0xD000000000000016, 0x80000001AB4FEF10);
    result = sub_1AB461884();
    __break(1u);
  }

  else
  {
    v12 = sub_1AB01D56C(a1, a2);
    if (v12)
    {

      return sub_1AB01D05C(a3, v12, v9, a2, v12, v13);
    }

    else
    {
      v15 = *(v23 + 56);

      return v15(a3, 1, 1, a2);
    }
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t objectdestroy_7Tm(void (*a1)(void))
{

  a1(*(v1 + 32));

  return MEMORY[0x1EEE6BDD0](v1, 40, 7);
}

void sub_1AB0224B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, NSObject *a6)
{
  static MonotonicTime.now.getter(v24);
  tv_sec = v24[0].tv_sec;
  tv_nsec = v24[0].tv_nsec;
  if (qword_1ED4D1F88 != -1)
  {
    swift_once();
  }

  v14 = tv_nsec / *&qword_1ED4D1F90 + tv_sec - (a3 / *&qword_1ED4D1F90 + a2);
  v15 = *(a4 + 16);
  os_unfair_lock_lock(v15 + 6);
  sub_1AB01EF2C(v14);
  os_unfair_lock_unlock(v15 + 6);
  os_unfair_lock_lock((a5 + 24));
  sub_1AB016620(a1, v24);
  v16 = *(a5 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a5 + 16) = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v23 = *(v16 + 2);

    *(a5 + 16) = sub_1AB022664(0, v23 + 1, 1, v16);

    v16 = *(a5 + 16);
  }

  v19 = *(v16 + 2);
  v18 = *(v16 + 3);
  if (v19 >= v18 >> 1)
  {
    v16 = sub_1AB022664((v18 > 1), v19 + 1, 1, v16);
  }

  *(v16 + 2) = v19 + 1;
  v20 = &v16[40 * v19];
  v21 = v24[0];
  v22 = v24[1];
  v20[4].tv_sec = v25;
  v20[2] = v21;
  v20[3] = v22;
  *(a5 + 16) = v16;
  os_unfair_lock_unlock((a5 + 24));
  dispatch_group_leave(a6);
}

char *sub_1AB022664(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439A20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

__n128 sub_1AB022784(char **a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);

  os_unfair_lock_unlock((v3 + 24));
  v5 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_1AB022664(0, *(v5 + 2) + 1, 1, v5);
  }

  v7 = *(v5 + 2);
  v6 = *(v5 + 3);
  if (v7 >= v6 >> 1)
  {
    v5 = sub_1AB022664((v6 > 1), v7 + 1, 1, v5);
  }

  *(v5 + 2) = v7 + 1;
  v8 = &v5[40 * v7];
  v8[2].n128_u64[0] = &type metadata for AsyncObjectGraphMetrics;
  v8[2].n128_u64[1] = v4;
  result = v10;
  v8[3] = v10;
  v8[4].n128_u64[0] = &type metadata for AsyncObjectGraphMetrics;
  *a1 = v5;
  return result;
}

uint64_t sub_1AB02286C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1 + 32;
    v3 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1AB016620(v2, v10);
      v4 = sub_1AB462314();
      MEMORY[0x1AC59BA20](v4);

      MEMORY[0x1AC59BA20](62, 0xE100000000000000);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_1AB020904(0, *(v3 + 2) + 1, 1, v3);
      }

      v6 = *(v3 + 2);
      v5 = *(v3 + 3);
      if (v6 >= v5 >> 1)
      {
        v3 = sub_1AB020904((v5 > 1), v6 + 1, 1, v3);
      }

      sub_1AB01667C(v10);
      *(v3 + 2) = v6 + 1;
      v7 = &v3[16 * v6];
      *(v7 + 4) = 60;
      *(v7 + 5) = 0xE100000000000000;
      v2 += 40;
      --v1;
    }

    while (v1);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v10[0] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4366C8);
  sub_1AB01561C(&qword_1ED4D21F0, &qword_1EB4366C8);
  v8 = sub_1AB460484();

  return v8;
}

void sub_1AB022A14(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  sub_1AB014A58(v1 + 24, v29, &unk_1EB43D2A0);
  if (v30 == 3)
  {
    sub_1AB014AC0(v29, &unk_1EB43D2A0);
    os_unfair_lock_unlock(v3 + 4);
  }

  else if (v30)
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v4 = v29[0];
    sub_1AB016620(a1, v28);
    v28[40] = 1;
    swift_beginAccess();
    sub_1AB017CC4(v28, v1 + 24, &unk_1EB43D2A0);
    swift_endAccess();
    os_unfair_lock_unlock(v3 + 4);
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = v4 + 32;
      v7 = &unk_1EB4376A0;
      do
      {
        sub_1AB014A58(v6, v28, v7);
        sub_1AB014A58(v28, v25, v7);
        v11 = v25[0];
        if (v27)
        {
          sub_1AB016620(a1, &v22);
          v8 = *(*(v11 + 64) + 40);
          v9 = v24;
          v10 = v23;
          *v8 = v22;
          *(v8 + 16) = v10;
          *(v8 + 32) = v9;
          swift_continuation_throwingResume();
          sub_1AB014AC0(v28, v7);
        }

        else
        {
          v12 = v25[1];

          sub_1AB0149B0(&v26, &v22);
          v13 = v24;
          v19 = *(&v23 + 1);
          __swift_project_boxed_opaque_existential_1Tm(&v22, *(&v23 + 1));
          sub_1AB016620(a1, v20);
          v14 = swift_allocObject();
          *(v14 + 16) = v11;
          *(v14 + 24) = v12;
          v15 = v20[1];
          *(v14 + 32) = v20[0];
          *(v14 + 48) = v15;
          *(v14 + 64) = v21;
          v16 = v7;
          v17 = a1;
          v18 = *(v13 + 8);

          v18(sub_1AB0224A8, v14, v19, v13);
          a1 = v17;
          v7 = v16;

          sub_1AB014AC0(v28, v16);
          __swift_destroy_boxed_opaque_existential_1Tm(&v22);
        }

        v6 += 80;
        --v5;
      }

      while (v5);
    }
  }
}

uint64_t objectdestroy_3Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t objectdestroy_6Tm()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

void sub_1AB022DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  os_unfair_lock_lock((a1 + 24));
  v8 = *(a1 + 16);

  os_unfair_lock_unlock((a1 + 24));
  v9 = *(v8 + 16);

  if (v9)
  {
    os_unfair_lock_lock((a1 + 24));
    v10 = *(a1 + 16);

    os_unfair_lock_unlock((a1 + 24));
    sub_1AB2AB058();
    v11 = swift_allocError();
    *v12 = v10;
    sub_1AB2A0680(v11);
  }

  else
  {
    os_unfair_lock_lock((a2 + 24));
    sub_1AB022784((a2 + 16), a3);
    os_unfair_lock_unlock((a2 + 24));
    os_unfair_lock_lock((a2 + 24));
    v13 = *(a2 + 16);

    os_unfair_lock_unlock((a2 + 24));
    v14 = sub_1AB023248(v13);

    swift_beginAccess();
    v16 = *(a4 + 24);
    v15 = *(a4 + 32);
    swift_beginAccess();
    *(v14 + 24) = v16;
    *(v14 + 32) = v15;

    sub_1AB023A18(v14);
  }
}

uint64_t sub_1AB022F44(uint64_t result)
{
  v2 = *(result + 16);
  if (!v2)
  {
    return result;
  }

  v3 = v1;
  for (i = result + 32; ; i += 40)
  {
    sub_1AB016620(i, &v24);
    v6 = v24;
    sub_1AB0165C4(&v25, v22);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    v21 = *v3;
    *v3 = 0x8000000000000000;
    v9 = sub_1AB016558(v6);
    v11 = v8[2];
    v12 = (v10 & 1) == 0;
    v13 = __OFADD__(v11, v12);
    v14 = v11 + v12;
    if (v13)
    {
      break;
    }

    v15 = v10;
    if (v8[3] < v14)
    {
      sub_1AB01A340(v14, isUniquelyReferenced_nonNull_native);
      v9 = sub_1AB016558(v6);
      if ((v15 & 1) != (v16 & 1))
      {
        goto LABEL_18;
      }

LABEL_10:
      v17 = v21;
      if (v15)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v20 = v9;
    sub_1AB01A034();
    v9 = v20;
    v17 = v21;
    if (v15)
    {
LABEL_3:
      v5 = 32 * v9;
      sub_1AB014B78((v17[7] + 32 * v9), v23);
      sub_1AB014B78(v22, (v17[7] + v5));
      goto LABEL_4;
    }

LABEL_11:
    v17[(v9 >> 6) + 8] |= 1 << v9;
    *(v17[6] + 8 * v9) = v6;
    sub_1AB014B78(v22, (v17[7] + 32 * v9));
    v18 = v17[2];
    v13 = __OFADD__(v18, 1);
    v19 = v18 + 1;
    if (v13)
    {
      goto LABEL_17;
    }

    v17[2] = v19;
    memset(v23, 0, sizeof(v23));
LABEL_4:
    *v3 = v17;
    sub_1AB014AC0(v23, &unk_1EB437E60);
    result = sub_1AB01667C(&v24);
    if (!--v2)
    {
      return result;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_1AB461FC4();
  __break(1u);
  return result;
}

uint64_t objectdestroy_2Tm()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  }

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t objectdestroy_2Tm_0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t objectdestroy_2Tm_1()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroy_2Tm_2()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AB023248(uint64_t a1)
{
  v3 = *v1;
  v8 = v1[2];

  sub_1AB022F44(a1);
  swift_beginAccess();
  v6 = v1[3];
  v7 = v1[4];

  MEMORY[0x1AC59BA20](1528834848, 0xE400000000000000);
  v4 = sub_1AB02286C(a1);
  MEMORY[0x1AC59BA20](v4);

  MEMORY[0x1AC59BA20](93, 0xE100000000000000);
  return (*(v3 + 96))(v6, v7, &v8);
}

uint64_t objectdestroyTm()
{
  v1 = type metadata accessor for URLJetPackAssetFetcher();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  if (*(v0 + v3 + 8))
  {
  }

  v6 = *(v1 + 24);
  v7 = sub_1AB45F764();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v5 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  v9 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x1EEE6BDD0](v0, v10 + 8, v2 | 7);
}

uint64_t objectdestroyTm_0()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 48);
  if (*(v0 + 112))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 88);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 128);

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 209, 7);
}

uint64_t objectdestroyTm_1()
{
  if (*(v0 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 32);
  }

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t objectdestroyTm_2()
{
  if (*(v0 + 24) != 1)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t objectdestroyTm_3()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t objectdestroyTm_4()
{
  v1 = sub_1AB45F764();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  (*(v2 + 8))(v0 + v4, v1);
  sub_1AB021B04(*(v0 + v5 + 8), *(v0 + v5 + 16));
  if (*(v0 + v5 + 48))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + v5 + 24);
  }

  return MEMORY[0x1EEE6BDD0](v0, v5 + 64, v3 | 7);
}

uint64_t objectdestroyTm_5(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 24));

  return MEMORY[0x1EEE6BDD0](v2, 32, 7);
}

uint64_t objectdestroyTm_6()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 72);

  return MEMORY[0x1EEE6BDD0](v0, 121, 7);
}

uint64_t objectdestroyTm_7()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t objectdestroyTm_8()
{
  v1 = (type metadata accessor for Bag.FetchConfiguration() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[9];
  v6 = sub_1AB45FD64();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_9(void (*a1)(void))
{

  a1(*(v1 + 32));

  return MEMORY[0x1EEE6BDD0](v1, 40, 7);
}

uint64_t objectdestroyTm_10()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

void sub_1AB023A18(uint64_t a1)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 4);
  swift_beginAccess();
  if (*(v1 + 32) == 3)
  {
    os_unfair_lock_unlock(v2 + 4);
  }

  else if (*(v1 + 32))
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v3 = *(v1 + 24);
    *(v1 + 24) = a1;
    *(v1 + 32) = 1;

    os_unfair_lock_unlock(v2 + 4);
    v4 = v3[2];
    if (v4)
    {
      v16 = v3;
      v5 = (v3 + 4);
      v6 = &unk_1EB43D1D0;
      do
      {
        sub_1AB014A58(v5, v24, v6);
        sub_1AB014A58(v24, v21, v6);
        v7 = v21[0];
        if (v23)
        {
          **(*(v21[0] + 64) + 40) = a1;

          swift_continuation_throwingResume();
          sub_1AB014AC0(v24, v6);
        }

        else
        {
          v8 = v21[1];

          sub_1AB0149B0(&v22, v18);
          v10 = v19;
          v9 = v20;
          __swift_project_boxed_opaque_existential_1Tm(v18, v19);
          v11 = swift_allocObject();
          v11[2] = v7;
          v11[3] = v8;
          v11[4] = a1;
          v12 = v6;
          v13 = *(v9 + 8);

          v13(sub_1AB017C7C, v11, v10, v9);
          v6 = v12;

          sub_1AB014AC0(v24, v12);
          __swift_destroy_boxed_opaque_existential_1Tm(v18);
        }

        v5 += 80;
        --v4;
      }

      while (v4);
      v14 = MEMORY[0x1E69E7D48];
      v15 = v16;
    }

    else
    {
      v14 = MEMORY[0x1E69E7D48];
      v15 = v3;
    }

    sub_1AB023D0C(v15, 0, v14);
  }
}

void sub_1AB023CD0(void *a1, unsigned __int8 a2, void (*a3)(void))
{
  if (a2 > 1u)
  {
    if (a2 == 2 || a2 == 3)
    {
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      a3();
    }
  }

  else
  {
  }
}

void sub_1AB023D0C(void *a1, unsigned __int8 a2, void (*a3)(void))
{
  if (a2 > 1u)
  {
    if (a2 == 2 || a2 == 3)
    {
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      a3();
    }
  }

  else
  {
  }
}

uint64_t sub_1AB023D48(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t get_enum_tag_for_layout_string_9JetEngine24AppleServicesURLProtocolO(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

uint64_t sub_1AB023D80()
{
  v8 = sub_1AB461114();
  v0 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v2 = v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1AB4610E4();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1AB4601F4();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7[1] = sub_1AB015664();
  sub_1AB4601E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437660);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AB4D4720;
  sub_1AB4610D4();
  v9 = v5;
  sub_1AB01CA90(&qword_1ED4D1F50, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439770);
  sub_1AB01CB68(&qword_1ED4D1F68, &unk_1EB439770);
  sub_1AB4614E4();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8098], v8);
  result = sub_1AB461154();
  qword_1ED4D3F00 = result;
  return result;
}

void sub_1AB024070()
{
  v0 = [objc_opt_self() ams_sharedAccountStore];
  type metadata accessor for Unstable.Accounts();
  swift_allocObject();
  v1 = sub_1AB0240DC(v0);

  qword_1EB435650 = v1;
}

uint64_t sub_1AB0240DC(void *a1)
{
  *(v1 + 16) = a1;
  v2 = a1;
  v3 = [v2 ams_activeiTunesAccount];
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB43A410);
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 16) = v3;
  *(v1 + 24) = v4;
  v5 = objc_opt_self();
  v6 = [v5 defaultCenter];
  [v6 addObserver:v1 selector:sel_accountStoreDidChange_ name:*MEMORY[0x1E69597D8] object:v2];

  v7 = [v5 defaultCenter];
  v8 = qword_1ED4D1950;

  if (v8 != -1)
  {
    swift_once();
  }

  [v7 addObserver:v1 selector:sel_accountCookiesDidChange_ name:qword_1ED4D13D8 object:0];

  return v1;
}

uint64_t sub_1AB024234()
{
  result = sub_1AB460514();
  qword_1ED4D13D8 = result;
  return result;
}

uint64_t *AsyncEvent.init()()
{
  v11 = *v0;
  v10 = sub_1AB461114();
  v1 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1AB4601F4();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1AB4610E4();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1AB015664();
  v9[1] = "tcher";
  v9[2] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437660);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1AB4D4720;
  sub_1AB4610D4();
  v12 = v7;
  sub_1AB0204F0(&qword_1ED4D1F50, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439770);
  sub_1AB01CB68(&qword_1ED4D1F68, &unk_1EB439770);
  sub_1AB4614E4();
  _s9JetEngine22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8090], v10);
  v0[2] = sub_1AB461154();
  type metadata accessor for EventSubscription();
  v0[3] = sub_1AB4609A4();
  return v0;
}

char *sub_1AB024570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for Promise();
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a6;
  v12[5] = a2;
  v12[6] = a3;
  v12[7] = a1;

  v13 = sub_1AB0247F4(&unk_1AB4D8DF8, v12);

  return v13;
}

uint64_t sub_1AB024630()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1AB024688(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a6;
  v8 = *(*a6 + 80);
  v6[3] = v8;
  v6[4] = *(v8 - 8);
  v9 = swift_task_alloc();
  v6[5] = v9;
  v12 = (a4 + *a4);
  v10 = swift_task_alloc();
  v6[6] = v10;
  *v10 = v6;
  v10[1] = sub_1AB07D99C;

  return v12(v9);
}

char *sub_1AB0247F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = Promise.__allocating_init()();
  v8 = sub_1AB460BE4();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = a2;
  v9[6] = v7;

  sub_1AB39BBA8(0, 0, v6, &unk_1AB4F0360, v9);

  return v7;
}

uint64_t sub_1AB024924()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AB02496C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1AB027554;

  return sub_1AB024688(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1AB024A48(uint64_t a1)
{
  v4 = v1[5];
  v6 = v1[6];
  v5 = v1[7];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1AB027554;

  return sub_1AB024B1C(a1, v4, v6, v5);
}

uint64_t sub_1AB024B1C(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v9 = (a2 + *a2);
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_1AB027460;

  return v9(a1, a4);
}

uint64_t AsyncEvent.post(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_1AB4601B4();
  v22 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1AB4601F4();
  v20 = *(v7 - 8);
  v21 = v7;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v3 + 80);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v14 = v19 - v13;
  v19[1] = v1[2];
  (*(v12 + 16))(v19 - v13, a1, v11);
  v15 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v11;
  *(v16 + 24) = v1;
  (*(v12 + 32))(v16 + v15, v14, v11);
  aBlock[4] = sub_1AB025068;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1AB01D528;
  aBlock[3] = &block_descriptor_21;
  v17 = _Block_copy(aBlock);

  _s9JetEngine22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
  v23 = MEMORY[0x1E69E7CC0];
  sub_1AB0204F0(&qword_1ED4D2050, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438540);
  sub_1AB01CB68(&qword_1ED4D1FB0, &qword_1EB438540);
  sub_1AB4614E4();
  MEMORY[0x1AC59C480](0, v10, v6, v17);
  _Block_release(v17);
  (*(v22 + 8))(v6, v4);
  (*(v20 + 8))(v10, v21);
}

uint64_t sub_1AB024FB0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1AB0250A0()
{
  type metadata accessor for EventSubscription();
  v5 = sub_1AB4602B4();
  swift_beginAccess();

  if (sub_1AB4609F4())
  {
    v0 = 4;
    do
    {
      v1 = v0 - 4;
      v2 = sub_1AB4609D4();
      sub_1AB460974();
      if (v2)
      {

        v3 = v0 - 3;
        if (__OFADD__(v1, 1))
        {
          goto LABEL_12;
        }
      }

      else
      {
        sub_1AB461644();
        v3 = v0 - 3;
        if (__OFADD__(v1, 1))
        {
LABEL_12:
          __break(1u);
          break;
        }
      }

      if (EventSubscription.isValid.getter() & 1) != 0 && (EventSubscription.notify(_:)(), (EventSubscription.isValid.getter()))
      {
      }

      else
      {
        sub_1AB460A64();
        sub_1AB460A14();
      }

      ++v0;
    }

    while (v3 != sub_1AB4609F4());
  }

  sub_1AB025240(v5);
}

uint64_t sub_1AB025240(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1AB4601F4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1AB4601B4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock[0] = a1;
  type metadata accessor for EventSubscription();
  sub_1AB460A64();
  swift_getWitnessTable();
  result = sub_1AB460F44();
  if ((result & 1) == 0)
  {
    v19 = *(v1 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439700);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1AB4D4720;
    sub_1AB4601A4();
    aBlock[0] = v13;
    sub_1AB0204F0(&qword_1ED4D2050, MEMORY[0x1E69E7F60]);
    v17 = v4;
    v18 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438540);
    sub_1AB01CB68(&qword_1ED4D1FB0, &qword_1EB438540);
    sub_1AB4614E4();
    v14 = swift_allocObject();
    *(v14 + 16) = a1;
    *(v14 + 24) = v2;
    aBlock[4] = sub_1AB2A0378;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1AB01D528;
    aBlock[3] = &block_descriptor_18_0;
    v15 = _Block_copy(aBlock);

    _s9JetEngine22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
    MEMORY[0x1AC59C480](0, v7, v11, v15);
    _Block_release(v15);
    (*(v5 + 8))(v7, v17);
    (*(v18 + 8))(v11, v8);
  }

  return result;
}

uint64_t sub_1AB0255D8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AB025614()
{
  v0[24] = (*(v0[22] + 16))(v0[21]);

  return MEMORY[0x1EEE6DFA0](sub_1AB0256F4, 0, 0);
}

void sub_1AB025694(void *a1, unsigned __int8 a2, void (*a3)(void))
{
  if (a2 > 1u)
  {
    if (a2 == 2 || a2 == 3)
    {
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      a3();
    }
  }

  else
  {
  }
}

uint64_t sub_1AB0256F4()
{
  v1 = v0 + 2;
  v0[2] = v0;
  v0[7] = v0 + 20;
  v0[3] = sub_1AB0980D8;
  v0[10] = swift_continuation_init();
  v2 = (v0 + 10);
  *(v2 + 72) = 1;
  sub_1AB040C28(v2);
  sub_1AB014AC0(v2, &unk_1EB43D1D0);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t type metadata accessor for URLJetPackAssetFetcher()
{
  result = qword_1EB4356A8;
  if (!qword_1EB4356A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for URLJetPackAssetRequest()
{
  result = qword_1ED4D0CD0;
  if (!qword_1ED4D0CD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id JetPackAssetDiskCache.__allocating_init()()
{
  v24[2] = *MEMORY[0x1E69E9840];
  v23[0] = sub_1AB45F604();
  v0 = *(v23[0] - 8);
  MEMORY[0x1EEE9AC00](v23[0]);
  v2 = v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1AB45F764();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v23 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v23 - v11;
  v13 = [objc_opt_self() defaultManager];
  v24[0] = 0;
  v14 = [v13 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:1 error:v24];

  v15 = v24[0];
  if (v14)
  {
    sub_1AB45F6C4();
    v16 = v15;

    strcpy(v24, "JetPackCache");
    BYTE5(v24[1]) = 0;
    HIWORD(v24[1]) = -5120;
    v17 = v23[0];
    (*(v0 + 104))(v2, *MEMORY[0x1E6968F70], v23[0]);
    sub_1AB0273A8();
    sub_1AB45F744();
    (*(v0 + 8))(v2, v17);
    v18 = *(v4 + 8);
    v18(v9, v3);
    (*(v4 + 16))(v6, v12, v3);
    v19 = v23[1];
    v20 = v23[2];
    v21 = JetPackAssetDiskCache.__allocating_init(url:)(v6);
    if (!v20)
    {
      v19 = v21;
    }

    v18(v12, v3);
  }

  else
  {
    v19 = v24[0];
    sub_1AB45F594();

    swift_willThrow();
  }

  return v19;
}

uint64_t JetPackAssetDiskCache.__allocating_init(url:)(uint64_t a1)
{
  v3 = sub_1AB45F764();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - v11;
  v13 = type metadata accessor for JetPackAssetDiskCache.DefaultLocation(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static JetPackAssetDiskCache.prepareDefaultLocation(url:)(a1, v15);
  if (v1)
  {
    (*(v4 + 8))(a1, v3);
  }

  else
  {
    v26 = a1;
    v23 = v6;
    v16 = *(v4 + 16);
    v17 = v3;
    v16(v12, &v15[*(v13 + 20)], v3);
    v24 = type metadata accessor for JetPackAssetDiskCacheSQLiteMetadataStore();
    v25 = swift_allocObject();
    v22 = v16;
    v16(v9, v12, v3);
    LOBYTE(v27) = 0;
    type metadata accessor for AssetSQLiteDatabase();
    swift_allocObject();
    v18 = AssetSQLiteDatabase.init(url:mode:)(v9, &v27);
    v19 = *(v4 + 8);
    v19(v12, v17);
    v20 = v25;
    *(v25 + 16) = v18;
    v22(v23, v15, v17);
    v28 = v24;
    v29 = &protocol witness table for JetPackAssetDiskCacheSQLiteMetadataStore;
    *&v27 = v20;
    v19(v26, v17);
    sub_1AB025FD4(v15);
    v3 = swift_allocObject();
    (*(v4 + 32))(v3 + OBJC_IVAR____TtC9JetEngine21JetPackAssetDiskCache_assetsURL, v23, v17);
    sub_1AB0149B0(&v27, v3 + OBJC_IVAR____TtC9JetEngine21JetPackAssetDiskCache_metadataStore);
  }

  return v3;
}

uint64_t type metadata accessor for AssetSQLiteDatabase()
{
  result = qword_1EB435840;
  if (!qword_1EB435840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_So25NSURLSessionConfigurationCSo0A0CIeghgo_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1AB025FD4(uint64_t a1)
{
  v2 = type metadata accessor for JetPackAssetDiskCache.DefaultLocation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t JetPackAssetSession.Configuration.init(cache:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = &type metadata for JetPackAssetStandardCachePolicy;
  v6 = &protocol witness table for JetPackAssetStandardCachePolicy;
  sub_1AB0149B0(a1, a2);
  return sub_1AB0149B0(&v4, a2 + 40);
}

uint64_t get_enum_tag_for_layout_string_9JetEngine0A16PackAssetSessionC13ConfigurationV4ModeO(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *JetPackAssetSession.init(configuration:)(uint64_t a1)
{
  sub_1AB0261D0(a1, (v1 + 3));
  v3 = sub_1AB02622C(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4394A0);
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 16) = v3;
  v1[2] = v4;
  v1[16] = &type metadata for JetPackAssetDaemonClient;
  v1[17] = &off_1F20096A0;
  v8 = &type metadata for CoreAnalyticsLogger;
  v9 = &protocol witness table for CoreAnalyticsLogger;
  v5 = swift_allocObject();
  *&v7 = v5;
  *(v5 + 56) = 0u;
  *(v5 + 72) = 0u;
  *(v5 + 88) = 0;
  *(v5 + 40) = &type metadata for DefaultCoreAnalyticsLoggerProvider;
  *(v5 + 48) = &protocol witness table for DefaultCoreAnalyticsLoggerProvider;
  sub_1AB026354(a1);
  sub_1AB0149B0(&v7, (v1 + 18));
  return v1;
}

uint64_t sub_1AB026188()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  if (*(v0 + 80))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 56);
  }

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

unint64_t sub_1AB02622C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438138);
    v3 = sub_1AB461924();
    v4 = a1 + 32;

    while (1)
    {
      sub_1AB014A58(v4, v13, &qword_1EB438140);
      result = sub_1AB02B1D8(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      *(v3[7] + 8 * result) = v15;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1AB0263B8()
{
  v1 = 0x6E4F65746F6D6572;
  if (*v0 != 1)
  {
    v1 = 0x6C6E4F6C61636F6CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x647261646E617473;
  }
}

double sub_1AB026440()
{
  v0 = sub_1AB02648C();
  type metadata accessor for LocalPreferences();
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  *(v1 + 24) = 0;
  result = 0.0;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  qword_1ED4D1A00 = v1;
  return result;
}

id sub_1AB02648C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_1AB460514();
  v2 = [v0 objectForInfoDictionaryKey_];

  if (v2)
  {
    sub_1AB461494();
    swift_unknownObjectRelease();
    sub_1AB014B78(v6, v7);
    sub_1AB0165C4(v7, v6);
    if (swift_dynamicCast())
    {
      v3 = sub_1AB460514();

      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      return v3;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v7);
  }

  v5 = *MEMORY[0x1E695E8A8];

  return v5;
}

uint64_t sub_1AB026638()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_1AB026670(uint64_t a1)
{
  if (*(v1 + 24) == 1)
  {
    v2 = *(v1 + 32);
    if (v2 && (v3 = *(v1 + 40)) != 0 && (v4 = *(v1 + 48)) != 0 && (v5 = *(v1 + 56)) != 0)
    {
      if (a1)
      {
        v7 = v2;
        v8 = v3;
        v9 = v4;

        v10 = sub_1AB460514();
        [v7 setObject:a1 forKey:{v10, a1}];

        MEMORY[0x1EEE9AC00](v11);
        os_unfair_lock_lock((v5 + 24));
        sub_1AB0A68EC(v5 + 16, v25);
        os_unfair_lock_unlock((v5 + 24));
        if (LOBYTE(v25[0]) == 1)
        {
          v12 = sub_1AB460514();
          [v8 addObserver:v9 forKeyPath:v12 options:1 context:0];

          MEMORY[0x1EEE9AC00](v13);
          os_unfair_lock_lock((v5 + 24));
          sub_1AB09F910((v5 + 16));
          os_unfair_lock_unlock((v5 + 24));
        }

        else
        {
        }
      }

      else
      {
        v17 = v2;
        v18 = v3;
        v19 = v4;

        v20 = sub_1AB460514();
        [v17 removeObjectForKey_];

        MEMORY[0x1EEE9AC00](v21);
        os_unfair_lock_lock((v5 + 24));
        sub_1AB159D58(v5 + 16, v25);
        os_unfair_lock_unlock((v5 + 24));
        if (LOBYTE(v25[0]) == 1)
        {
          v22 = sub_1AB460514();
          [v18 removeObserver:v19 forKeyPath:v22 context:0];

          MEMORY[0x1EEE9AC00](v23);
          os_unfair_lock_lock((v5 + 24));
          sub_1AB159DB8((v5 + 16), v25);
          os_unfair_lock_unlock((v5 + 24));
        }

        else
        {
        }
      }
    }

    else
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v14 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_1AB4D4720;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1AB4D4720;
      v25[3] = MEMORY[0x1E69E6158];
      v25[0] = 0xD00000000000007ALL;
      v25[1] = 0x80000001AB4FF5D0;
      *(v16 + 48) = 0u;
      *(v16 + 32) = 0u;
      sub_1AB0169C4(v25, v16 + 32);
      *(v16 + 64) = 0;
      *(v15 + 32) = v16;
      v25[0] = v14;
      v24 = 0;
      OSLogger.log(contentsOf:withLevel:)(v15, &v24);
    }
  }
}

double LocalPreferences.subscript.getter@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v5);
  v7 = *(v6 + 8);
  v7(v5, v6);
  if (*(v2 + 24) == 1 && (v8 = *(v2 + 32)) != 0)
  {
    v9 = v8;
    v10 = sub_1AB460514();

    v11 = [v9 objectForKey_];

    if (v11)
    {
      v12 = v11[2];
      if (v12)
      {
        *(a2 + 24) = swift_getObjectType();
        swift_unknownObjectRetain();

        *a2 = v12;
        return result;
      }

      goto LABEL_10;
    }
  }

  else
  {
  }

  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v14);
  (*(v15 + 8))(v14, v15);
  v16 = sub_1AB460514();

  v17 = CFPreferencesCopyAppValue(v16, *(v3 + 16));

  type metadata accessor for LocalPreferences.CacheValue();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  swift_unknownObjectRetain();
  v7(v5, v6);
  sub_1AB026670(v18);

  if (v17)
  {
    *(a2 + 24) = swift_getObjectType();
    *a2 = v17;
    return result;
  }

LABEL_10:
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t sub_1AB026CC0()
{
  v0 = sub_1AB026CF8();

  return v0;
}

uint64_t sub_1AB026D00(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437010);
  *(&v49 + 1) = v7;
  v50 = &protocol witness table for PreferenceKey<A>;
  *&v48 = a1;
  *(&v48 + 1) = a2;

  LocalPreferences.subscript.getter(&v48, &v46);
  if (v47)
  {
    sub_1AB014B78(&v46, v51);
    __swift_destroy_boxed_opaque_existential_1Tm(&v48);
    sub_1AB0165C4(v51, &v48);
    v8 = MEMORY[0x1E69E6370];
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v51);
      return v46;
    }

    if (qword_1EB435D40 != -1)
    {
      swift_once();
    }

    v11 = qword_1EB43A248;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1AB4D47F0;
    v45 = sub_1AB0168A8(0, 16, 0, MEMORY[0x1E69E7CC0]);
    v13._countAndFlagsBits = 0x6F662065756C6156;
    v13._object = 0xEA00000000002072;
    LogMessage.StringInterpolation.appendLiteral(_:)(v13);
    v47 = v7;
    *&v46 = a1;
    *(&v46 + 1) = a2;
    sub_1AB014A58(&v46, v44, &unk_1EB437E60);
    v48 = 0u;
    v49 = 0u;

    sub_1AB0169C4(v44, &v48);
    LOBYTE(v50) = 0;
    v14 = v45;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_1AB0168A8(0, *(v14 + 2) + 1, 1, v14);
      v45 = v14;
    }

    v16 = *(v14 + 2);
    v15 = *(v14 + 3);
    if (v16 >= v15 >> 1)
    {
      v14 = sub_1AB0168A8((v15 > 1), v16 + 1, 1, v14);
    }

    *(v14 + 2) = v16 + 1;
    v17 = &v14[40 * v16];
    v18 = v48;
    v19 = v49;
    v17[64] = v50;
    *(v17 + 2) = v18;
    *(v17 + 3) = v19;
    v45 = v14;
    sub_1AB014AC0(&v46, &unk_1EB437E60);
    v20._countAndFlagsBits = 544106784;
    v20._object = 0xE400000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v20);
    v47 = v6;
    *&v46 = v3;
    sub_1AB014A58(&v46, v44, &unk_1EB437E60);
    v48 = 0u;
    v49 = 0u;

    sub_1AB0169C4(v44, &v48);
    LOBYTE(v50) = 0;
    v21 = v45;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_1AB0168A8(0, *(v21 + 2) + 1, 1, v21);
      v45 = v21;
    }

    v23 = *(v21 + 2);
    v22 = *(v21 + 3);
    if (v23 >= v22 >> 1)
    {
      v21 = sub_1AB0168A8((v22 > 1), v23 + 1, 1, v21);
    }

    *(v21 + 2) = v23 + 1;
    v24 = &v21[40 * v23];
    v25 = v48;
    v26 = v49;
    v24[64] = v50;
    *(v24 + 2) = v25;
    *(v24 + 3) = v26;
    v45 = v21;
    sub_1AB014AC0(&v46, &unk_1EB437E60);
    v27._countAndFlagsBits = 0;
    v27._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v27);
    *(v12 + 32) = v45;
    v45 = sub_1AB0168A8(0, 22, 0, MEMORY[0x1E69E7CC0]);
    v28._object = 0x80000001AB500010;
    v28._countAndFlagsBits = 0xD000000000000015;
    LogMessage.StringInterpolation.appendLiteral(_:)(v28);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437018);
    *&v46 = v8;
    sub_1AB014A58(&v46, v44, &unk_1EB437E60);
    v48 = 0u;
    v49 = 0u;
    sub_1AB0169C4(v44, &v48);
    LOBYTE(v50) = 0;
    v29 = v45;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_1AB0168A8(0, *(v29 + 2) + 1, 1, v29);
    }

    v31 = *(v29 + 2);
    v30 = *(v29 + 3);
    if (v31 >= v30 >> 1)
    {
      v29 = sub_1AB0168A8((v30 > 1), v31 + 1, 1, v29);
    }

    *(v29 + 2) = v31 + 1;
    v32 = &v29[40 * v31];
    v33 = v48;
    v34 = v49;
    v32[64] = v50;
    *(v32 + 2) = v33;
    *(v32 + 3) = v34;
    v45 = v29;
    sub_1AB014AC0(&v46, &unk_1EB437E60);
    v35._countAndFlagsBits = 0;
    v35._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v35);
    *(v12 + 40) = v45;
    v36 = sub_1AB461094();
    if (os_log_type_enabled(v11, v36))
    {
      if (qword_1EB4359F8 != -1)
      {
        swift_once();
      }

      v37 = off_1EB435A00;
      os_unfair_lock_lock(off_1EB435A00 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v37[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v37 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v39 = swift_allocObject();
      *(v39 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v48 = v12;
      *(&v48 + 1) = sub_1AB0223E4;
      *&v49 = v39;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
      sub_1AB016A34();
      v40 = sub_1AB460484();
      v42 = v41;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_1AB4D4720;
      *(v43 + 56) = MEMORY[0x1E69E6158];
      *(v43 + 64) = sub_1AB016854();
      *(v43 + 32) = v40;
      *(v43 + 40) = v42;
      sub_1AB45FF14();
    }

    v10 = v51;
  }

  else
  {
    sub_1AB014AC0(&v46, &unk_1EB437E60);
    v10 = &v48;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v10);
  return 2;
}

unint64_t sub_1AB0273A8()
{
  result = qword_1ED4D1F70;
  if (!qword_1ED4D1F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED4D1F70);
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1AB027460()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1AB027560()
{
  result = sub_1AB45F764();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1AB0275CC()
{
  result = sub_1AB45F764();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AB027664()
{
  result = sub_1AB45F764();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void *_s9JetEngine23AMSMetricsEventRecorderC3bag12defaultTopic15anonymousTopicsAcA3BagV_SSShySSGtcfC_0(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v8 = [objc_opt_self() ams_sharedAccountStore];
  v19 = sub_1AB016760(0, &qword_1ED4D1F60);
  v20 = &protocol witness table for ACAccountStore;
  *&v18 = v8;
  type metadata accessor for AMSMetricsEventRecorder();
  v9 = swift_allocObject();
  v9[12] = 0;
  v9[13] = 0;
  v10 = [v7 profile];
  sub_1AB460544();

  v11 = [v7 profileVersion];
  sub_1AB460544();

  v12 = objc_allocWithZone(MEMORY[0x1E698CA00]);
  v13 = sub_1AB460514();

  v14 = [v12 initWithContainerID:v13 bag:v7];

  v15 = AMSMetrics.withRemoteInspection.getter();
  v9[2] = v15;
  v16 = [objc_allocWithZone(MEMORY[0x1E698C8D8]) initWithBag_];
  swift_unknownObjectRelease();
  v9[3] = v16;
  v9[4] = a2;
  v9[5] = a3;
  v9[11] = a4;
  sub_1AB0149B0(&v18, (v9 + 6));
  return v9;
}

uint64_t sub_1AB0278C0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438590);
  sub_1AB027E20();
  result = sub_1AB460484();
  qword_1ED4D19E0 = result;
  *algn_1ED4D19E8 = v1;
  return result;
}

id AMSMetrics.withRemoteInspection.getter()
{
  v0 = type metadata accessor for AMSMetricsWithInspection();
  if (swift_dynamicCastClass())
  {

    return v16;
  }

  ObjectType = swift_getObjectType();
  if (ObjectType == sub_1AB016760(0, &qword_1ED4D13C8))
  {
    if (qword_1EB4359F8 == -1)
    {
      goto LABEL_7;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_7:
  v3 = off_1EB435A00;
  os_unfair_lock_lock(off_1EB435A00 + 5);
  os_unfair_lock_opaque_low = LOBYTE(v3[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v3 + 5);
  if (os_unfair_lock_opaque_low == 2)
  {
    has_internal_content = os_variant_has_internal_content();
    v6 = v16;
    if ((has_internal_content & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v6 = v16;
    if ((os_unfair_lock_opaque_low & 1) == 0)
    {
LABEL_22:

      return v6;
    }
  }

  if (qword_1ED4D1D40 != -1)
  {
    swift_once();
  }

  if (qword_1EB4358F0 != -1)
  {
    swift_once();
  }

  v7 = sub_1AB026D00(qword_1EB46C2C0, *algn_1EB46C2C8);
  v6 = v16;
  if (v7 == 2 || (v7 & 1) == 0)
  {
    goto LABEL_22;
  }

  if (qword_1EB435CA8 != -1)
  {
    swift_once();
  }

  v8 = qword_1EB46C2D8;
  v9 = [objc_opt_self() sharedSession];
  v10 = [v16 containerId];
  if (!v10)
  {
    sub_1AB460544();
    v10 = sub_1AB460514();
  }

  v11 = [v16 bag];
  v12 = objc_allocWithZone(v0);
  *&v12[OBJC_IVAR____TtC9JetEngine24AMSMetricsWithInspection_scanner] = v8;
  *&v12[OBJC_IVAR____TtC9JetEngine24AMSMetricsWithInspection_urlSession] = v9;
  v17.receiver = v12;
  v17.super_class = v0;
  v13 = v8;
  v14 = v9;
  v15 = objc_msgSendSuper2(&v17, sel_initWithContainerID_bag_, v10, v11);

  swift_unknownObjectRelease();
  return v15;
}

uint64_t sub_1AB027C78@<X0>(uint64_t *a1@<X8>)
{
  sub_1AB0273A8();
  result = sub_1AB461434();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1AB027CF8()
{
  if (qword_1ED4D19D8 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED4D19E0;
  v0 = *algn_1ED4D19E8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BD90);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AB4D47F0;
  *(v2 + 32) = v1;
  *(v2 + 40) = v0;
  *(v2 + 48) = 0xD00000000000001ELL;
  *(v2 + 56) = 0x80000001AB505220;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438590);
  sub_1AB027E20();
  v3 = sub_1AB460484();
  v5 = v4;

  qword_1EB46C2C0 = v3;
  *algn_1EB46C2C8 = v5;
  return result;
}

unint64_t sub_1AB027E20()
{
  result = qword_1ED4D1938;
  if (!qword_1ED4D1938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB438590);
    sub_1AB01561C(&qword_1ED4D21F0, &qword_1EB4366C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED4D1938);
  }

  return result;
}

uint64_t sub_1AB027ED0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v9 = *v4;
  sub_1AB4620A4();
  sub_1AB460684();
  v10 = sub_1AB462104();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    while (1)
    {
      v14 = (*(v9 + 48) + 16 * v12);
      v15 = *v14 == a2 && v14[1] == a3;
      if (v15 || (sub_1AB461DA4() & 1) != 0)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v9 + 48) + 16 * v12);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v4;

    sub_1AB02A194(a2, a3, v12, isUniquelyReferenced_nonNull_native, a4);
    *v4 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

unint64_t sub_1AB028088(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v7 = sub_1AB461924();
    v8 = a1 + 32;

    while (1)
    {
      sub_1AB014A58(v8, &v16, a4);
      result = sub_1AB038308(v16, v17);
      if (v10)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v7[6] + 16 * result);
      v12 = v17;
      *v11 = v16;
      v11[1] = v12;
      result = sub_1AB0149B0(&v18, v7[7] + 40 * result);
      v13 = v7[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v7[2] = v15;
      v8 += 56;
      if (!--v4)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_1AB0281A8(uint64_t *a1@<X0>, void *a2@<X1>, unint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = MEMORY[0x1E69E7CC0];
  *a3 = sub_1AB028040(MEMORY[0x1E69E7CC0]);
  a3[1] = sub_1AB028064(v6);
  if (qword_1ED4D0BF8 != -1)
  {
    swift_once();
  }

  v7 = qword_1ED4D3EB8;
  swift_bridgeObjectRetain_n();
  swift_unknownObjectRetain();
  sub_1AB037DE0(v7, v5, 0x6769666E6F63, 0xE600000000000000, a3, &type metadata for ConfigBaseFieldsProvider, &off_1F2013A80, &unk_1F1FF9030, sub_1AB0223E4);
  swift_unknownObjectRelease();

  v8 = a2;
  sub_1AB03837C(v8, 7368801, 0xE300000000000000, a3, &type metadata for AppMetricsFieldProvider, &protocol witness table for AppMetricsFieldProvider, &unk_1F1FF8BD0, sub_1AB0223E4);

  v27 = v8;
  sub_1AB03837C(v27, 0x6973726556707061, 0xEA00000000006E6FLL, a3, &type metadata for AppVersionFieldProvider, &protocol witness table for AppVersionFieldProvider, &unk_1F1FF9008, sub_1AB0223E4);

  if (qword_1ED4D0C18 != -1)
  {
    swift_once();
  }

  v9 = qword_1ED4D3EC8;
  swift_bridgeObjectRetain_n();
  sub_1AB038740(v9, 0x7372655665736162, 0xEB000000006E6F69, a3, &type metadata for BaseVersionFieldProvider, &protocol witness table for BaseVersionFieldProvider, &unk_1F1FF8FE0, sub_1AB0223E4);

  sub_1AB038740(v7, 0x7645746E65696C63, 0xED00006449746E65, a3, &type metadata for ClientEventIdFieldProvider, &off_1F200B6B8, &unk_1F1FF8FB8, sub_1AB0223E4);

  sub_1AB0363D8(0x6D6954746E657665, 0xE900000000000065, a3, &type metadata for EventTimeMetricsFieldProvider, &protocol witness table for EventTimeMetricsFieldProvider, &unk_1F1FF8BA8, sub_1AB0223E4);
  sub_1AB0363D8(0x6E496D6574737973, 0xEA00000000006F66, a3, &type metadata for SystemInfoMetricsFieldsProvider, &protocol witness table for SystemInfoMetricsFieldsProvider, &unk_1F1FF8B08, sub_1AB0223E4);
  if (qword_1ED4D0C08 != -1)
  {
    swift_once();
  }

  v10 = qword_1ED4D3EC0;

  v11 = sub_1AB036790(&unk_1F1FF2B90, v10);
  sub_1AB0360C8(&unk_1F1FF2BB0);
  sub_1AB038740(v11, 0x6175676E614C736FLL, 0xEB00000000736567, a3, &type metadata for LanguagesMetricFieldProvider, &protocol witness table for LanguagesMetricFieldProvider, &unk_1F1FF8F90, sub_1AB0223E4);

  if (qword_1ED4D1060 != -1)
  {
    swift_once();
  }

  v12 = qword_1ED4D3EF8;
  swift_bridgeObjectRetain_n();
  v13 = sub_1AB03528C(&unk_1F1FF2BC0, v12);
  swift_arrayDestroy();
  swift_unknownObjectRetain();
  sub_1AB0349D0(v13, v5, 1701273968, 0xE400000000000000);
  swift_unknownObjectRelease();

  sub_1AB0370C4(0, 0, 0x6C65694665676170, 0xEA00000000007364);

  type metadata accessor for PageHistoryFieldProvider();
  v14 = swift_allocObject();
  *(v14 + 16) = 5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437600);
  v15 = swift_allocObject();
  *(v15 + 24) = 0;
  *(v15 + 16) = v6;
  *(v14 + 24) = v15;
  sub_1AB038B1C(v14, 0x7473694865676170, 0xEB0000000079726FLL);

  sub_1AB038EFC(1, 0x6973736572706D69, 0xEB00000000736E6FLL, a3, &type metadata for ImpressionsMetricsFieldsProvider, &protocol witness table for ImpressionsMetricsFieldsProvider, &unk_1F1FF8A90, sub_1AB0223E4);
  sub_1AB038EFC(1, 0xD000000000000013, 0x80000001AB500940, a3, &type metadata for ImpressionsSnapshotMetricsFieldsProvider, &off_1F2014D18, &unk_1F1FF8F40, sub_1AB0223E4);
  sub_1AB0374D4(0x6E6F697461636F6CLL, 0xE800000000000000, 0x6775626564, 0xE500000000000000, 0x636F4C6B63696C63, 0xED00006E6F697461);
  if (qword_1EB435750 != -1)
  {
    swift_once();
  }

  v16 = qword_1EB46C258;

  MainScreenSize = JEGestaltGetMainScreenSize();
  v19 = v18;
  MainScreenScale = JEGestaltGetMainScreenScale();
  sub_1AB036810(v16, 0x6E6565726373, 0xE600000000000000, MainScreenSize, v19, MainScreenScale);

  sub_1AB038740(v7, 0x656E6F7A656D6974, 0xEE0074657366664FLL, a3, &type metadata for TimezoneOffsetFieldProvider, &off_1F2001958, &unk_1F1FF8EC8, sub_1AB0223E4);

  swift_unknownObjectRetain();
  sub_1AB037DE0(v7, v5, 0x724674736F507078, 0xEF79636E65757165, a3, &type metadata for XpPostFrequencyFieldProvider, &off_1F1FFD4A0, &unk_1F1FF8EA0, sub_1AB0223E4);
  swift_unknownObjectRelease();

  v21 = sub_1AB029018(&unk_1F1FF2C00, &qword_1EB437638);
  sub_1AB0360C8(&unk_1F1FF2C20);
  sub_1AB038740(v21, 0x676E696C706D6173, 0xE800000000000000, a3, &type metadata for XPSamplingFieldsProvider, &protocol witness table for XPSamplingFieldsProvider, &unk_1F1FF8AB8, sub_1AB0223E4);

  v22 = sub_1AB029018(&unk_1F1FF2C30, &qword_1EB437638);
  swift_arrayDestroy();
  swift_unknownObjectRetain();
  sub_1AB037DE0(v22, v5, 0xD000000000000014, 0x80000001AB500960, a3, &type metadata for XpViewablePercentageFieldProvider, &off_1F1FFB8A0, &unk_1F1FF8E78, sub_1AB0223E4);
  swift_unknownObjectRelease();

  v23 = sub_1AB029018(&unk_1F1FF2C70, &qword_1EB437638);
  sub_1AB0360C8(&unk_1F1FF2C90);
  sub_1AB037DE0(v23, v5, 0xD000000000000013, 0x80000001AB500980, a3, &type metadata for XpViewableThresholdFieldProvider, &off_1F1FFB298, &unk_1F1FF8E50, sub_1AB0223E4);
  swift_unknownObjectRelease();

  sub_1AB038740(v24, 0x654D646E65537078, 0xEC000000646F6874, a3, &type metadata for XpSendMethodFieldProvider, &off_1F20098E8, &unk_1F1FF8E28, sub_1AB0223E4);

  v25 = sub_1AB039354(&unk_1F1FF2CA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437640);
  swift_arrayDestroy();
  sub_1AB037954(v25, 0x726556746E657665, 0xEC0000006E6F6973);

  sub_1AB038740(v7, 0x697463656E6E6F63, 0xEA00000000006E6FLL, a3, &type metadata for ConnectionFieldProvider, &off_1F2010768, &unk_1F1FF8DD8, sub_1AB0223E4);

  sub_1AB038740(v9, 0x6E65674172657375, 0xE900000000000074, a3, &type metadata for UserAgentFieldProvider, &protocol witness table for UserAgentFieldProvider, &unk_1F1FF89F0, sub_1AB01A8D8);

  sub_1AB038740(v12, 0x7974696361706163, 0xE800000000000000, a3, &type metadata for CapacityMetricsFieldsProvider, &protocol witness table for CapacityMetricsFieldsProvider, &unk_1F1FF8B80, sub_1AB0223E4);

  if (qword_1ED4D0C20 != -1)
  {
    swift_once();
  }

  sub_1AB038740(v26, 0x7542746E65696C63, 0xEF65707954646C69, a3, &type metadata for ClientBuildTypeFieldProvider, &protocol witness table for ClientBuildTypeFieldProvider, &unk_1F1FF8A18, sub_1AB0223E4);
}

uint64_t sub_1AB028DD0()
{
  if (qword_1ED4D0C18 != -1)
  {
    swift_once();
  }

  v0 = qword_1ED4D3EC8;
  v1 = qword_1ED4D0C20;

  if (v1 != -1)
  {
    swift_once();
  }

  result = sub_1AB0291E0(v2, v0);
  qword_1ED4D3EB8 = result;
  return result;
}

uint64_t sub_1AB028EA4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  if (qword_1ED4D1060 != -1)
  {
    swift_once();
  }

  v6 = qword_1ED4D3EF8;
  v7 = *a2;

  if (v7 != -1)
  {
    swift_once();
  }

  result = sub_1AB0291E0(v8, v6);
  *a4 = result;
  return result;
}

uint64_t sub_1AB028F50()
{
  v0 = sub_1AB028F9C(&unk_1F1FF2A50);
  result = swift_arrayDestroy();
  qword_1ED4D3EF8 = v0;
  return result;
}

unint64_t sub_1AB028FC4()
{
  result = qword_1ED4D1278[0];
  if (!qword_1ED4D1278[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED4D1278);
  }

  return result;
}

uint64_t sub_1AB029018(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v4 = sub_1AB4615A4();
    v5 = 0;
    v6 = v4 + 56;
    v7 = a1 + 32;
    while (2)
    {
      v8 = (v7 + 16 * v5);
      v10 = *v8;
      v9 = v8[1];
      sub_1AB4620A4();

      sub_1AB460684();
      result = sub_1AB462104();
      v12 = ~(-1 << *(v4 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v6 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v4 + 48) + 16 * i);
        if (*v15 != v10 || v15[1] != v9)
        {
          result = sub_1AB461DA4();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v6 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v4 + 48) + 16 * i);
      *v17 = v10;
      v17[1] = v9;
      v18 = *(v4 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v4 + 16) = v20;
LABEL_4:
        if (++v5 == v2)
        {
          return v4;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1AB029178()
{
  v0 = sub_1AB028F9C(&unk_1F1FF2B20);
  result = swift_arrayDestroy();
  qword_1ED4D3EC0 = v0;
  return result;
}

uint64_t sub_1AB0291E0(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_1AB0291C4(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t *MetricsPipeline.Configuration.withRecorder(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AB029758(v2, a2);

  return __swift_assign_boxed_opaque_existential_1((a2 + 176), a1);
}

uint64_t AMSMetricsEventRecorder.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 48);

  sub_1AB0177B8(*(v0 + 96));

  return swift_deallocClassInstance();
}

uint64_t *__swift_assign_boxed_opaque_existential_1(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v12 = *a2;
        v13 = result;

        *v13 = v12;
      }

      else
      {
        v11 = *(v10 + 24);

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v14);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v14, v2);
      }
    }
  }

  return result;
}

uint64_t MetricsPipeline.Configuration.init(bag:linter:anonymousTopics:)@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  sub_1AB01494C(a2, v16);
  v15[0] = v7;
  swift_unknownObjectRetain();

  v8 = _s9JetEngine23AMSMetricsEventRecorderC3bag12defaultTopic15anonymousTopicsAcA3BagV_SSShySSGtcfC_0(v15, 0, 0xE000000000000000, a3);
  v15[3] = type metadata accessor for AMSMetricsEventRecorder();
  v15[4] = &protocol witness table for AMSMetricsEventRecorder;
  v15[0] = v8;
  *(a4 + 136) = 0u;
  *(a4 + 152) = 0u;
  *(a4 + 168) = 0;
  *a4 = v7;
  sub_1AB01494C(v16, a4 + 8);
  *(a4 + 48) = a3;
  v9 = [objc_opt_self() ams_sharedAccountStore];
  *(a4 + 80) = sub_1AB016760(0, &qword_1ED4D1F60);
  *(a4 + 88) = &protocol witness table for ACAccountStore;
  *(a4 + 56) = v9;
  *(a4 + 96) = [objc_opt_self() mainBundle];
  *(a4 + 104) = &type metadata for StandardMetricsFieldsBuilder;
  *(a4 + 112) = &protocol witness table for StandardMetricsFieldsBuilder;
  v10 = MEMORY[0x1E69E7CC0];
  v11 = sub_1AB028040(MEMORY[0x1E69E7CC0]);
  v12 = sub_1AB028064(v10);
  *(a4 + 120) = v11;
  *(a4 + 128) = v12;
  sub_1AB01494C(v15, a4 + 176);
  v13 = [objc_opt_self() defaultCenter];
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(v16);
  result = __swift_destroy_boxed_opaque_existential_1Tm(v15);
  *(a4 + 216) = v13;
  return result;
}

uint64_t MetricsPipeline.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AB029758(a1, v8);
  sub_1AB02981C(v8, a2);
  *(a2 + 160) = 1;
  *(a2 + 192) = 0;
  v4 = *a1;
  *(a2 + 168) = a1[6];
  *(a2 + 176) = v4;
  v5 = a1[27];

  swift_unknownObjectRetain();
  v6 = v5;
  result = sub_1AB058B50(a1);
  *(a2 + 184) = v6;
  return result;
}

uint64_t sub_1AB02981C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 72) = 0u;
  v4 = a2 + 72;
  *(a2 + 104) = 0;
  *(a2 + 88) = 0u;
  *a2 = *(a1 + 104);
  v5 = *a1;
  sub_1AB01494C(a1 + 56, v15);
  v6 = *(a1 + 96);
  *&v16 = v5;
  swift_unknownObjectRetain_n();
  sub_1AB0281A8(&v16, v6, &v11);
  v16 = v11;
  if (qword_1ED4D0C18 != -1)
  {
    swift_once();
  }

  v7 = qword_1ED4D3EC8;
  sub_1AB01494C(v15, &v11 + 8);
  *&v11 = v7;
  swift_bridgeObjectRetain_n();
  sub_1AB036C6C(&v11, 1682535268, 0xE400000000000000);
  sub_1AB039450(&v11);
  if (qword_1EB435750 != -1)
  {
    swift_once();
  }

  v8 = qword_1EB46C258;
  sub_1AB01494C(v15, &v11 + 8);
  *&v11 = v8;

  sub_1AB0357BC(&v11, 0x64656E6769537369, 0xEA00000000006E49);
  sub_1AB0394A4(&v11);
  sub_1AB01494C(v15, &v11 + 8);
  *&v11 = v7;
  sub_1AB035BBC(&v11, 0xD000000000000010, 0x80000001AB4FEB00);
  sub_1AB036010(&v11);
  sub_1AB01494C(v15, v14);
  *&v11 = 0x6449746E65696C63;
  *(&v11 + 1) = 0xE800000000000000;
  v12 = 0x646E655265676170;
  v13 = 0xEA00000000007265;
  v14[5] = v5;
  sub_1AB0394F8(&v11, 0xD000000000000012, 0x80000001AB4FF980);
  sub_1AB036064(&v11);
  __swift_destroy_boxed_opaque_existential_1Tm(v15);
  v11 = v16;
  *v15 = *(a1 + 120);
  sub_1AB029B00(v15);
  *(a2 + 16) = v11;
  sub_1AB01494C(a1 + 8, a2 + 32);
  v15[0] = *a1;
  swift_unknownObjectRetain();
  sub_1AB02A330(a1 + 136, v15, &v11);
  swift_unknownObjectRelease();
  sub_1AB017CC4(&v11, v4, &qword_1EB436B50);
  sub_1AB01494C(a1 + 176, a2 + 112);
  v9 = *(a1 + 216);
  result = sub_1AB058B50(a1);
  *(a2 + 152) = v9;
  return result;
}

uint64_t sub_1AB029B00(void *a1)
{
  v2 = v1;
  v70 = a1[1];
  v71 = *a1;
  v3 = *a1 + 64;
  v4 = 1 << *(*a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(*a1 + 64);
  v7 = (v4 + 63) >> 6;

  for (i = 0; ; i = v14)
  {
    if (v6)
    {
      v12 = i;
LABEL_15:
      v15 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v16 = v15 | (v12 << 6);
      v17 = (*(v71 + 48) + 16 * v16);
      v19 = *v17;
      v18 = v17[1];
      sub_1AB01494C(*(v71 + 56) + 40 * v16, v72);
      *&v73 = v19;
      *(&v73 + 1) = v18;
      sub_1AB0149B0(v72, &v74);

      v14 = v12;
    }

    else
    {
      v13 = v7 <= i + 1 ? i + 1 : v7;
      v14 = v13 - 1;
      while (1)
      {
        v12 = i + 1;
        if (__OFADD__(i, 1))
        {
          __break(1u);
          goto LABEL_57;
        }

        if (v12 >= v7)
        {
          break;
        }

        v6 = *(v3 + 8 * v12);
        ++i;
        if (v6)
        {
          goto LABEL_15;
        }
      }

      v6 = 0;
      v76 = 0;
      v74 = 0u;
      v75 = 0u;
      v73 = 0u;
    }

    v77 = v73;
    v78 = v74;
    v79 = v75;
    v80 = v76;
    v20 = *(&v73 + 1);
    if (!*(&v73 + 1))
    {
      break;
    }

    v21 = v77;
    sub_1AB0149B0(&v78, &v73);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v72[0] = *v2;
    v23 = *&v72[0];
    v24 = sub_1AB0370A8(v21, v20);
    v26 = *(v23 + 16);
    v27 = (v25 & 1) == 0;
    v28 = __OFADD__(v26, v27);
    v29 = v26 + v27;
    if (v28)
    {
      goto LABEL_58;
    }

    v30 = v25;
    if (*(v23 + 24) < v29)
    {
      sub_1AB038B08(v29, isUniquelyReferenced_nonNull_native);
      v24 = sub_1AB0370A8(v21, v20);
      if ((v30 & 1) != (v31 & 1))
      {
        goto LABEL_62;
      }

LABEL_22:
      if (v30)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_22;
    }

    v36 = v24;
    sub_1AB06A9CC();
    v24 = v36;
    if (v30)
    {
LABEL_4:
      v9 = v24;

      v10 = *&v72[0];
      v11 = *(*&v72[0] + 56) + 40 * v9;
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      sub_1AB0149B0(&v73, v11);
      *v2 = v10;
      continue;
    }

LABEL_23:
    v32 = *&v72[0];
    *(*&v72[0] + 8 * (v24 >> 6) + 64) |= 1 << v24;
    v33 = (v32[6] + 16 * v24);
    *v33 = v21;
    v33[1] = v20;
    sub_1AB0149B0(&v73, v32[7] + 40 * v24);
    v34 = v32[2];
    v28 = __OFADD__(v34, 1);
    v35 = v34 + 1;
    if (v28)
    {
      goto LABEL_60;
    }

    v32[2] = v35;
    *v2 = v32;
  }

  v37 = 1 << *(v70 + 32);
  v38 = -1;
  if (v37 < 64)
  {
    v38 = ~(-1 << v37);
  }

  v39 = v38 & *(v70 + 64);
  v40 = (v37 + 63) >> 6;

  v41 = 0;
  if (!v39)
  {
    goto LABEL_34;
  }

  do
  {
    while (1)
    {
      v45 = v41;
LABEL_41:
      v48 = __clz(__rbit64(v39));
      v39 &= v39 - 1;
      v49 = v48 | (v45 << 6);
      v50 = (*(v70 + 48) + 16 * v49);
      v52 = *v50;
      v51 = v50[1];
      sub_1AB01494C(*(v70 + 56) + 40 * v49, v72);
      *&v73 = v52;
      *(&v73 + 1) = v51;
      sub_1AB0149B0(v72, &v74);

      v47 = v45;
LABEL_42:
      v77 = v73;
      v78 = v74;
      v79 = v75;
      v80 = v76;
      v53 = *(&v73 + 1);
      if (!*(&v73 + 1))
      {
      }

      v54 = v77;
      sub_1AB0149B0(&v78, &v73);
      v55 = swift_isUniquelyReferenced_nonNull_native();
      *&v72[0] = v2[1];
      v56 = *&v72[0];
      v57 = sub_1AB0370A8(v54, v53);
      v59 = *(v56 + 16);
      v60 = (v58 & 1) == 0;
      v28 = __OFADD__(v59, v60);
      v61 = v59 + v60;
      if (v28)
      {
        goto LABEL_59;
      }

      v62 = v58;
      if (*(v56 + 24) >= v61)
      {
        break;
      }

      sub_1AB0370B0(v61, v55);
      v57 = sub_1AB0370A8(v54, v53);
      if ((v62 & 1) != (v63 & 1))
      {
        goto LABEL_63;
      }

LABEL_48:
      if ((v62 & 1) == 0)
      {
        goto LABEL_49;
      }

LABEL_32:
      v42 = v57;

      v43 = *&v72[0];
      v44 = *(*&v72[0] + 56) + 40 * v42;
      __swift_destroy_boxed_opaque_existential_1Tm(v44);
      sub_1AB0149B0(&v73, v44);
      v2[1] = v43;
      v41 = v47;
      if (!v39)
      {
        goto LABEL_34;
      }
    }

    if (v55)
    {
      goto LABEL_48;
    }

    v68 = v57;
    sub_1AB06983C();
    v57 = v68;
    if (v62)
    {
      goto LABEL_32;
    }

LABEL_49:
    v64 = *&v72[0];
    *(*&v72[0] + 8 * (v57 >> 6) + 64) |= 1 << v57;
    v65 = (v64[6] + 16 * v57);
    *v65 = v54;
    v65[1] = v53;
    sub_1AB0149B0(&v73, v64[7] + 40 * v57);
    v66 = v64[2];
    v28 = __OFADD__(v66, 1);
    v67 = v66 + 1;
    if (v28)
    {
      goto LABEL_61;
    }

    v64[2] = v67;
    v2[1] = v64;
    v41 = v47;
  }

  while (v39);
LABEL_34:
  if (v40 <= v41 + 1)
  {
    v46 = v41 + 1;
  }

  else
  {
    v46 = v40;
  }

  v47 = v46 - 1;
  while (1)
  {
    v45 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      break;
    }

    if (v45 >= v40)
    {
      v39 = 0;
      v76 = 0;
      v74 = 0u;
      v75 = 0u;
      v73 = 0u;
      goto LABEL_42;
    }

    v39 = *(v70 + 64 + 8 * v45);
    ++v41;
    if (v39)
    {
      goto LABEL_41;
    }
  }

LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  sub_1AB461FC4();
  __break(1u);
LABEL_63:
  result = sub_1AB461FC4();
  __break(1u);
  return result;
}