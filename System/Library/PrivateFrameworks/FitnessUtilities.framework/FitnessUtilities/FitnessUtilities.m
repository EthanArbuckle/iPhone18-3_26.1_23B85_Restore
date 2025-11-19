void *sub_24B7BA180(void *result, int a2)
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

uint64_t sub_24B7BA1EC(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = sub_24B7DAE58();
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

uint64_t AsyncLockable.withLock<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[6] = a6;
  v7[7] = v6;
  v7[4] = a3;
  v7[5] = a4;
  v7[2] = a1;
  v7[3] = a2;
  v10 = swift_task_alloc();
  v7[8] = v10;
  *v10 = v7;
  v10[1] = sub_24B7BA554;

  return sub_24B7BA348(a4, a6);
}

uint64_t sub_24B7BA348(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = *(a2 + 8);
  v3[7] = sub_24B7DAC58();
  v3[8] = v4;

  return MEMORY[0x2822009F8](sub_24B7BA3C4);
}

uint64_t sub_24B7BA3C4()
{
  v13 = v0;
  v1 = v0[5];
  (*(v0[4] + 16))(&v12, v0[3]);
  if (v12)
  {
    v2 = v0[5];
    v3 = v0[6];
    v0[2] = v12;
    v4 = swift_task_alloc();
    v0[9] = v4;
    *(v4 + 16) = *(v0 + 3);
    *(v4 + 32) = v0 + 2;
    *(v4 + 40) = v2;
    v5 = *(MEMORY[0x277D859E0] + 4);
    v6 = swift_task_alloc();
    v0[10] = v6;
    *v6 = v0;
    v6[1] = sub_24B7BBBD0;

    return MEMORY[0x2822007B8]();
  }

  else
  {
    v7 = v0[4];
    v8 = v0[5];
    v9 = v0[3];
    v12 = MEMORY[0x277D84F90];
    (*(v7 + 24))(&v12, v9);
    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_24B7BA554()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 24);
  v4 = *v0;

  v10 = (v3 + *v3);
  v5 = v3[1];
  v6 = swift_task_alloc();
  v1[9] = v6;
  *v6 = v4;
  v6[1] = sub_24B7BA71C;
  v7 = v1[4];
  v8 = v1[2];

  return v10(v8);
}

uint64_t sub_24B7BA71C()
{
  v2 = v0;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 40);
  v10 = *v1;
  *(*v1 + 80) = v2;

  v7 = *(v5 + 8);
  sub_24B7DAC58();
  if (v2)
  {
    v8 = sub_24B7BEC48;
  }

  else
  {
    v8 = sub_24B7BAA84;
  }

  return MEMORY[0x2822009F8](v8);
}

void *sub_24B7BA888(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0594F8, &qword_24B7DBA88);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v8 = &v13 - v7;
  result = (*(a2 + 16))(&v14, a1, a2);
  v10 = v14;
  if (v14)
  {
    if (v14[2])
    {
      result = (*(v5 + 16))(v8, v14 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v4);
      v11 = v10[2];
      if (v11)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v14 = v10;
        if (!isUniquelyReferenced_nonNull_native || (v11 - 1) > v10[3] >> 1)
        {
          v10 = sub_24B7BB994(isUniquelyReferenced_nonNull_native, v11, 1, v10);
          v14 = v10;
        }

        sub_24B7BC110(0, 1, 0);
        v13 = v10;
        (*(a2 + 24))(&v13, a1, a2);
        sub_24B7DAC78();
        return (*(v5 + 8))(v8, v4);
      }

      else
      {
        __break(1u);
      }
    }

    else
    {

      v14 = 0;
      return (*(a2 + 24))(&v14, a1, a2);
    }
  }

  return result;
}

uint64_t sub_24B7BAA84()
{
  v1 = v0[7];
  sub_24B7BA888(v0[5], v0[6]);
  v2 = v0[1];

  return v2();
}

uint64_t AsyncStreamPublisher.__allocating_init()()
{
  v0 = swift_allocObject();
  AsyncStreamPublisher.init()();
  return v0;
}

uint64_t *AsyncStreamPublisher.init()()
{
  v1 = *v0;
  swift_defaultActor_initialize();
  v2 = sub_24B7DA9C8();
  v3 = *(v1 + 80);
  v4 = sub_24B7DAD18();
  swift_getTupleTypeMetadata2();
  v5 = sub_24B7DAC08();
  v6 = sub_24B7BAC3C();
  v7 = sub_24B7BAC94(v5, v2, v4, v6);

  v0[14] = v7;
  return v0;
}

unint64_t sub_24B7BAC3C()
{
  result = qword_280DD1778;
  if (!qword_280DD1778)
  {
    sub_24B7DA9C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DD1778);
  }

  return result;
}

uint64_t sub_24B7BAC94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_24B7DAC28())
  {
    sub_24B7DAF28();
    v13 = sub_24B7DAF18();
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  result = sub_24B7DAC28();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_24B7DAC18())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_24B7DAEC8();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_24B7D4EB0(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t AsyncStreamPublisher.publish(_:)()
{
  v1 = *v0;
  swift_beginAccess();
  v4 = v0[14];
  v3 = *(v1 + 80);
  sub_24B7DA9C8();
  sub_24B7DAD18();
  sub_24B7BAC3C();
  sub_24B7DA9F8();

  swift_getWitnessTable();
  sub_24B7DAB48();
}

uint64_t sub_24B7BB098()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_24B7BB190()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_24B7BB29C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0597F8, &qword_24B7DCEA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B7BB304(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24B7BB094;

  return sub_24B7BB3BC(a1, v5);
}

uint64_t sub_24B7BB3BC(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24B7BB098;

  return v7(a1);
}

uint64_t CurrentValueAsyncStreamPublisher.__deallocating_deinit()
{
  CurrentValueAsyncStreamPublisher.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t CurrentValueAsyncStreamPublisher.deinit()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 80);
  v3 = sub_24B7DAE58();
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  v4 = *(v0 + *(*v0 + 104));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t AsyncStreamPublisher.__deallocating_deinit()
{
  AsyncStreamPublisher.deinit();

  return MEMORY[0x282200960](v0);
}

void *AsyncStreamPublisher.deinit()
{
  v1 = v0;
  v2 = *v0;
  swift_beginAccess();
  v6 = v1[14];
  v5 = *(v2 + 80);
  sub_24B7DA9C8();
  sub_24B7DAD18();
  sub_24B7BAC3C();
  sub_24B7DA9F8();

  swift_getWitnessTable();
  sub_24B7DAB48();

  v3 = v1[14];

  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_24B7BB6E0(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0594F8, &qword_24B7DBA88);
  v10 = *(v9 - 8);
  v11 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v13 = &v21 - v12;
  v14 = *(a5 + 8);
  sub_24B7DAC58();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v10 + 16))(v13, a1, v9);
  v15 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = sub_24B7BB994(0, v15[2] + 1, 1, v15);
    *a2 = v15;
  }

  v18 = v15[2];
  v17 = v15[3];
  if (v18 >= v17 >> 1)
  {
    v15 = sub_24B7BB994(v17 > 1, v18 + 1, 1, v15);
    *a2 = v15;
  }

  v15[2] = v18 + 1;
  (*(v10 + 32))(v15 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v18, v13, v9);
  v22 = *a2;
  v19 = *(a5 + 24);

  return v19(&v22, a4, a5);
}

uint64_t sub_24B7BB8E0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

size_t sub_24B7BB994(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F059500, &unk_24B7DBA90);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0594F8, &qword_24B7DBA88) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0594F8, &qword_24B7DBA88) - 8);
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

uint64_t sub_24B7BBB84()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24B7BBBD0()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v7 = *v0;

  v4 = *(v1 + 64);
  v5 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_24B7BC0B0);
}

uint64_t String.init(localizing:tableName:bundle:locale:comment:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v48 = a8;
  v49 = a6;
  v50 = a7;
  v42 = a5;
  v43 = a4;
  v46 = a2;
  v47 = a3;
  v51 = a1;
  v8 = sub_24B7DA928();
  v44 = *(v8 - 8);
  v45 = v8;
  v9 = *(v44 + 64);
  (MEMORY[0x28223BE20])();
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24B7DA9D8();
  v13 = *(v12 - 8);
  v14 = v13;
  v38 = v12;
  v39 = v13;
  v15 = *(v13 + 64);
  (MEMORY[0x28223BE20])();
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_24B7DAA88();
  v40 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  (MEMORY[0x28223BE20])();
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_24B7DA938();
  v23 = *(v41 - 8);
  v24 = *(v23 + 64);
  v25 = (MEMORY[0x28223BE20])();
  v27 = &v37 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v37 - v28;
  (*(v19 + 16))(v22, v51, v18);
  v30 = *(v14 + 16);
  v31 = v42;
  v30(v17, v42, v12);
  v32 = v43;
  v33 = [v43 bundleURL];
  sub_24B7DA968();

  (*(v44 + 104))(v11, *MEMORY[0x277CC9118], v45);
  sub_24B7DA948();
  v34 = v41;
  (*(v23 + 16))(v27, v29, v41);
  v35 = sub_24B7DAAA8();

  (*(v39 + 8))(v31, v38);
  (*(v19 + 8))(v51, v40);
  (*(v23 + 8))(v29, v34);
  return v35;
}

uint64_t sub_24B7BC0B0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_24B7BC110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0594F8, &qword_24B7DBA88);
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

uint64_t _s2os6LoggerV16FitnessUtilitiesE8stripped8filenameS2S_tFZ_0(uint64_t a1, unint64_t a2)
{
  sub_24B7BC574();
  v4 = (sub_24B7DAE68() + 16);
  if (*v4)
  {
    v5 = &v4[2 * *v4];
    a1 = *v5;
    a2 = v5[1];
  }

  else
  {
  }

  sub_24B7BC5C8(46, 0xE100000000000000, a1, a2);
  v6 = sub_24B7DAB28();
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = MEMORY[0x24C24A4C0](v6, v8, v10, v12);

  return v13;
}

Swift::Void __swiftcall Logger.trace(file:function:)(Swift::String file, Swift::String function)
{
  object = function._object;
  countAndFlagsBits = function._countAndFlagsBits;
  v4 = _s2os6LoggerV16FitnessUtilitiesE8stripped8filenameS2S_tFZ_0(file._countAndFlagsBits, file._object);
  v6 = v5;
  v7 = _s2os6LoggerV16FitnessUtilitiesE8stripped12functionNameS2S_tFZ_0(countAndFlagsBits, object);
  v9 = v8;

  oslog = sub_24B7DA9E8();
  v10 = sub_24B7DAE38();

  if (os_log_type_enabled(oslog, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 67109634;
    v13 = pthread_self();
    *(v11 + 4) = pthread_mach_thread_np(v13);
    *(v11 + 8) = 2082;
    v14 = sub_24B7BC760(v4, v6, &v17);

    *(v11 + 10) = v14;
    *(v11 + 18) = 2082;
    v15 = sub_24B7BC760(v7, v9, &v17);

    *(v11 + 20) = v15;
    _os_log_impl(&dword_24B7B9000, oslog, v10, "[%u] %{public}s::%{public}s", v11, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x24C24AFA0](v12, -1, -1);
    MEMORY[0x24C24AFA0](v11, -1, -1);
  }

  else
  {
  }
}

unint64_t sub_24B7BC574()
{
  result = qword_280DD1370[0];
  if (!qword_280DD1370[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280DD1370);
  }

  return result;
}

unint64_t sub_24B7BC5C8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
  while (sub_24B7DAB18() != a1 || v9 != a2)
  {
    v10 = sub_24B7DB088();

    if (v10)
    {
      return v8;
    }

    v8 = sub_24B7DAAF8();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t _s2os6LoggerV16FitnessUtilitiesE8stripped12functionNameS2S_tFZ_0(uint64_t a1, unint64_t a2)
{
  sub_24B7BC5C8(40, 0xE100000000000000, a1, a2);
  v2 = sub_24B7DAB28();
  v3 = MEMORY[0x24C24A4C0](v2);

  return v3;
}

uint64_t sub_24B7BC760(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_24B7BC878(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_24B7BCC14(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

uint64_t sub_24B7BC82C(uint64_t a1, unint64_t a2)
{
  v4 = sub_24B7BC984(a1, a2);
  sub_24B7BCB28(&unk_285E9DDD8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

unint64_t sub_24B7BC878(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_24B7BC82C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_24B7DAEF8();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_24B7BC984(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_24B7BCAB4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_24B7DAEF8();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_24B7DAB08();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_24B7BCAB4(v10, 0);
        result = sub_24B7DAEB8();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

void *sub_24B7BCAB4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F059C18, &unk_24B7DE9C0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_24B7BCB28(uint64_t result)
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

  result = sub_24B7D40AC(result, v12, 1, v3);
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

uint64_t sub_24B7BCC14(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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

uint64_t sub_24B7BCCBC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = sub_24B7DA9C8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B7D4800(a1, a3);
  (*(v8 + 16))(&v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v7);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = *(v6 + 80);
  *(v11 + 24) = a2;
  (*(v8 + 32))(v11 + v10, &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  sub_24B7DAD18();

  return sub_24B7DACC8();
}

uint64_t sub_24B7BCE88()
{
  v1 = sub_24B7DA9C8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t AsyncStreamPublisher.makeStream(bufferingPolicy:)(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = sub_24B7DACD8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15[-v7];
  v9 = sub_24B7DA9C8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v15[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_24B7DA9B8();
  (*(v5 + 16))(v8, a1, v4);
  v16 = v1;
  v17 = v13;
  nullsub_1(v3);
  sub_24B7DAD68();
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_24B7BD130()
{
  v1 = sub_24B7DA9C8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 32);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24B7BD1F4()
{
  v1 = sub_24B7DA9C8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 48);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24B7BD2C0()
{
  v1 = *(v0 + 4);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 2);
  swift_unknownObjectRelease();
  v7 = *(v0 + 5);

  (*(v2 + 8))(&v0[v4], v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24B7BD384()
{
  v1 = *(v0 + 4);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 2);
  swift_unknownObjectRelease();
  v7 = *(v0 + 6);

  (*(v2 + 8))(&v0[v4], v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24B7BD448()
{
  v1 = *(v0 + 4);
  v2 = sub_24B7DACD8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 48) & ~v4;
  v6 = *(v3 + 64);
  v7 = sub_24B7DAD18();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v5 + v6 + v9) & ~v9;
  v11 = *(v8 + 64);
  v12 = v4 | v9;
  v13 = *(v0 + 2);
  swift_unknownObjectRelease();
  v14 = *(v0 + 5);

  (*(v3 + 8))(&v0[v5], v2);
  (*(v8 + 8))(&v0[v10], v7);

  return MEMORY[0x2821FE8E8](v0, v10 + v11, v12 | 7);
}

uint64_t sub_24B7BD5AC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24B7BD5F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_24B7CB118(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_24B7BD62C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24B7BD67C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_24B7DAF08();

  return swift_getWitnessTable();
}

uint64_t sub_24B7BD6D0()
{
  v1 = sub_24B7DA9C8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24B7BD79C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24B7BD7E4()
{
  sub_24B7C3854(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  sub_24B7C3854(*(v0 + 40), *(v0 + 48), *(v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

uint64_t sub_24B7BD82C()
{
  sub_24B7BDEB8(*(v0 + 24), *(v0 + 32), *(v0 + 40));
  sub_24B7BDEB8(*(v0 + 48), *(v0 + 56), *(v0 + 64));

  return MEMORY[0x2821FE8E8](v0, 65, 7);
}

uint64_t DynamicPredicateComparisonDescriptor.lhs.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 24);
  *(a1 + 16) = v4;
  return sub_24B7BD918(v2, v3, v4);
}

uint64_t sub_24B7BD918(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 4)
  {
  }

  return result;
}

uint64_t DynamicPredicateComparisonDescriptor.rhs.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 48);
  *(a1 + 16) = v4;
  return sub_24B7BD918(v2, v3, v4);
}

__n128 DynamicPredicateComparisonDescriptor.init(comparisonOperator:lhs:rhs:)@<Q0>(char a1@<W0>, uint64_t a2@<X1>, __n128 *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a2 + 16);
  v5 = a3[1].n128_u8[0];
  *a4 = a1;
  *(a4 + 8) = *a2;
  *(a4 + 24) = v4;
  result = *a3;
  *(a4 + 32) = *a3;
  *(a4 + 48) = v5;
  return result;
}

uint64_t sub_24B7BD96C()
{
  v1 = *v0;
  sub_24B7DB0F8();
  MEMORY[0x24C24AAF0](v1);
  return sub_24B7DB128();
}

uint64_t sub_24B7BD9B4()
{
  v1 = *v0;
  sub_24B7DB0F8();
  MEMORY[0x24C24AAF0](v1);
  return sub_24B7DB128();
}

unint64_t sub_24B7BD9F8()
{
  v1 = 7563372;
  if (*v0 != 1)
  {
    v1 = 7563378;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_24B7BDA44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B7BE660(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B7BDA84(uint64_t a1)
{
  v2 = sub_24B7BDDBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7BDAC0(uint64_t a1)
{
  v2 = sub_24B7BDDBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DynamicPredicateComparisonDescriptor.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0594A0, &qword_24B7DB6E0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v10 = *(v1 + 2);
  v25 = v1[24];
  v11 = *(v1 + 5);
  v19 = *(v1 + 4);
  v20 = v9;
  v18 = v11;
  HIDWORD(v17) = v1[48];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B7BDDBC();
  sub_24B7DB158();
  LOBYTE(v22) = v8;
  v26 = 0;
  sub_24B7BDE10();
  v13 = v21;
  sub_24B7DB048();
  if (!v13)
  {
    v14 = v18;
    v15 = v19;
    v22 = v20;
    v23 = v10;
    v24 = v25;
    v26 = 1;
    sub_24B7BD918(v20, v10, v25);
    sub_24B7BDE64();
    sub_24B7DB048();
    sub_24B7BDEB8(v22, v23, v24);
    v22 = v15;
    v23 = v14;
    v24 = BYTE4(v17);
    v26 = 2;
    sub_24B7BD918(v15, v14, SBYTE4(v17));
    sub_24B7DB048();
    sub_24B7BDEB8(v22, v23, v24);
  }

  return (*(v4 + 8))(v7, v3);
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_24B7BDDBC()
{
  result = qword_27F0594A8;
  if (!qword_27F0594A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0594A8);
  }

  return result;
}

unint64_t sub_24B7BDE10()
{
  result = qword_27F0594B0;
  if (!qword_27F0594B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0594B0);
  }

  return result;
}

unint64_t sub_24B7BDE64()
{
  result = qword_27F0594B8;
  if (!qword_27F0594B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0594B8);
  }

  return result;
}

uint64_t sub_24B7BDEB8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 4)
  {
  }

  return result;
}

uint64_t DynamicPredicateComparisonDescriptor.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0594C0, &qword_24B7DB6E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B7BDDBC();
  sub_24B7DB148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = 0;
  sub_24B7BE168();
  sub_24B7DAFB8();
  v11 = v22;
  v26 = 1;
  sub_24B7BE1BC();
  sub_24B7DAFB8();
  v20 = v22;
  v21 = v23;
  v25 = v24;
  v26 = 2;
  sub_24B7DAFB8();
  (*(v6 + 8))(v9, v5);
  v12 = v22;
  v13 = v23;
  v14 = v24;
  *a2 = v11;
  v16 = v20;
  v15 = v21;
  *(a2 + 8) = v20;
  *(a2 + 16) = v15;
  v17 = v25;
  *(a2 + 24) = v25;
  *(a2 + 32) = v12;
  *(a2 + 40) = v13;
  *(a2 + 48) = v14;
  sub_24B7BD918(v16, v15, v17);
  sub_24B7BD918(v12, v13, v14);
  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_24B7BDEB8(v16, v15, v17);
  return sub_24B7BDEB8(v12, v13, v14);
}

unint64_t sub_24B7BE168()
{
  result = qword_27F0594C8;
  if (!qword_27F0594C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0594C8);
  }

  return result;
}

unint64_t sub_24B7BE1BC()
{
  result = qword_27F0594D0;
  if (!qword_27F0594D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0594D0);
  }

  return result;
}

uint64_t DynamicPredicateComparisonDescriptor.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  *v0;
  *v0;
  sub_24B7DAAE8();

  if (v3 <= 1)
  {
    if (!v3)
    {
      MEMORY[0x24C24AAF0](0);
      v7 = v1 + 1;
      goto LABEL_14;
    }

    v8 = 1;
LABEL_13:
    MEMORY[0x24C24AAF0](v8);
    v7 = v1;
LABEL_14:
    MEMORY[0x24C24AAF0](v7);
    if (v6 > 1)
    {
      goto LABEL_15;
    }

LABEL_10:
    if (!v6)
    {
      MEMORY[0x24C24AAF0](0);
      v9 = v4 + 1;
      return MEMORY[0x24C24AAF0](v9);
    }

    v11 = 1;
LABEL_25:
    MEMORY[0x24C24AAF0](v11);
    v9 = v4;
    return MEMORY[0x24C24AAF0](v9);
  }

  if (v3 == 2)
  {
    v8 = 2;
    goto LABEL_13;
  }

  if (v3 != 3)
  {
    MEMORY[0x24C24AAF0](4);
    sub_24B7DAAE8();
    if (v6 > 1)
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  MEMORY[0x24C24AAF0](3);
  sub_24B7DAAE8();

  if (v6 <= 1)
  {
    goto LABEL_10;
  }

LABEL_15:
  if (v6 == 2)
  {
    v11 = 2;
    goto LABEL_25;
  }

  if (v6 == 3)
  {
    MEMORY[0x24C24AAF0](3);
    sub_24B7DAAE8();
  }

  else
  {
    MEMORY[0x24C24AAF0](4);

    return sub_24B7DAAE8();
  }
}

uint64_t DynamicPredicateComparisonDescriptor.hashValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = v0[24];
  v5 = *(v0 + 2);
  v6 = v0[48];
  sub_24B7DB0F8();
  DynamicPredicateComparisonDescriptor.hash(into:)();
  return sub_24B7DB128();
}

uint64_t sub_24B7BE584()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = v0[24];
  v5 = *(v0 + 2);
  v6 = v0[48];
  sub_24B7DB0F8();
  DynamicPredicateComparisonDescriptor.hash(into:)();
  return sub_24B7DB128();
}

uint64_t sub_24B7BE5F4()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = v0[24];
  v5 = *(v0 + 2);
  v6 = v0[48];
  sub_24B7DB0F8();
  DynamicPredicateComparisonDescriptor.hash(into:)();
  return sub_24B7DB128();
}

uint64_t sub_24B7BE660(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x800000024B7DF8F0 == a2 || (sub_24B7DB088() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7563372 && a2 == 0xE300000000000000 || (sub_24B7DB088() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7563378 && a2 == 0xE300000000000000)
  {

    return 2;
  }

  else
  {
    v5 = sub_24B7DB088();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t _s16FitnessUtilities36DynamicPredicateComparisonDescriptorV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v15 = *(a1 + 40);
  v16 = *(a1 + 32);
  v5 = *(a1 + 48);
  v7 = *(a2 + 8);
  v6 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  if ((sub_24B7C60C0(*a1, *a2) & 1) == 0)
  {
    goto LABEL_4;
  }

  v20 = v2;
  v21 = v3;
  v22 = v4;
  v17 = v7;
  v18 = v6;
  v19 = v8;
  sub_24B7BD918(v2, v3, v4);
  sub_24B7BD918(v7, v6, v8);
  v12 = _s16FitnessUtilities31DynamicPredicateComparableValueO2eeoiySbAC_ACtFZ_0(&v20, &v17);
  sub_24B7BDEB8(v17, v18, v19);
  sub_24B7BDEB8(v20, v21, v22);
  if (v12)
  {
    v20 = v16;
    v21 = v15;
    v22 = v5;
    v17 = v9;
    v18 = v10;
    v19 = v11;
    sub_24B7BD918(v16, v15, v5);
    sub_24B7BD918(v9, v10, v11);
    v13 = _s16FitnessUtilities31DynamicPredicateComparableValueO2eeoiySbAC_ACtFZ_0(&v20, &v17);
    sub_24B7BDEB8(v17, v18, v19);
    sub_24B7BDEB8(v20, v21, v22);
  }

  else
  {
LABEL_4:
    v13 = 0;
  }

  return v13 & 1;
}

unint64_t sub_24B7BE8B8()
{
  result = qword_27F0594D8;
  if (!qword_27F0594D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0594D8);
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_24B7BE934(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && a1[49])
  {
    return (*a1 + 253);
  }

  v3 = *a1;
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_24B7BE978(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DynamicPredicateComparisonDescriptor.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DynamicPredicateComparisonDescriptor.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24B7BEB44()
{
  result = qword_27F0594E0;
  if (!qword_27F0594E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0594E0);
  }

  return result;
}

unint64_t sub_24B7BEB9C()
{
  result = qword_27F0594E8;
  if (!qword_27F0594E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0594E8);
  }

  return result;
}

unint64_t sub_24B7BEBF4()
{
  result = qword_27F0594F0;
  if (!qword_27F0594F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0594F0);
  }

  return result;
}

uint64_t sub_24B7BEC48()
{
  v1 = v0[7];
  sub_24B7BA888(v0[5], v0[6]);
  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_24B7BECBC(uint64_t *a1, unsigned int a2)
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

uint64_t sub_24B7BED0C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_24B7BED60(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24B7BEDC4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
  if (v4 || (sub_24B7DB088() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6572756C696166 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_24B7DB088();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_24B7BEEC8(char a1)
{
  sub_24B7DB0F8();
  MEMORY[0x24C24AAF0](a1 & 1);
  return sub_24B7DB128();
}

uint64_t sub_24B7BEF10(char a1)
{
  if (a1)
  {
    return 0x6572756C696166;
  }

  else
  {
    return 0x73736563637573;
  }
}

uint64_t sub_24B7BEF98()
{
  sub_24B7DB0F8();
  sub_24B7BEEA0(v2, *v0);
  return sub_24B7DB128();
}

uint64_t sub_24B7BEFF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B7BEDC4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B7BF028@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v9 = a1[8];
  result = sub_24B7BFFF8();
  *a2 = result;
  return result;
}

uint64_t sub_24B7BF064(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_24B7BF0B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t Result<>.ResultCodableError.hashValue.getter()
{
  sub_24B7DB0F8();
  MEMORY[0x24C24AAF0](0);
  return sub_24B7DB128();
}

uint64_t sub_24B7BF188()
{
  sub_24B7DB0F8();
  MEMORY[0x24C24AAF0](0);
  return sub_24B7DB128();
}

uint64_t sub_24B7BF1CC()
{
  sub_24B7DB0F8();
  MEMORY[0x24C24AAF0](0);
  return sub_24B7DB128();
}

uint64_t Result<>.encode(to:)(void *a1, uint64_t a2)
{
  v45 = *(*(a2 + 24) - 8);
  v4 = *(v45 + 64);
  v5 = MEMORY[0x28223BE20](a1);
  v44 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = *(*(v7 + 16) - 8);
  v8 = *(v41 + 64);
  v9 = MEMORY[0x28223BE20](v5);
  v39 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 + 32);
  v42 = v18;
  v43 = v19;
  v50[0] = v19;
  v50[1] = v20;
  v46 = v20;
  v50[2] = v21;
  v50[3] = v22;
  v40 = v22;
  v50[4] = v23;
  v50[5] = v18;
  v50[6] = v17;
  _s10CodingKeysOMa();
  swift_getWitnessTable();
  v24 = sub_24B7DB058();
  v48 = *(v24 - 8);
  v49 = v24;
  v25 = *(v48 + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v38 - v26;
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B7DB158();
  (*(v12 + 16))(v15, v47, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v30 = v44;
    v29 = v45;
    v31 = v46;
    (*(v45 + 32))(v44, v15, v46);
    v51 = 1;
    v32 = v49;
    sub_24B7DAFF8();
    sub_24B7DAA18();
    __swift_destroy_boxed_opaque_existential_1(v50);
    (*(v29 + 8))(v30, v31);
    return (*(v48 + 8))(v27, v32);
  }

  else
  {
    v34 = v41;
    v35 = v39;
    v36 = v43;
    (*(v41 + 32))(v39, v15, v43);
    v51 = 0;
    v37 = v49;
    sub_24B7DAFF8();
    sub_24B7DAA18();
    __swift_destroy_boxed_opaque_existential_1(v50);
    (*(v34 + 8))(v35, v36);
    return (*(v48 + 8))(v27, v37);
  }
}

uint64_t Result<>.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  v53 = a5;
  v42 = *(a3 - 8);
  v9 = *(v42 + 64);
  v10 = MEMORY[0x28223BE20](a1);
  v45 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = *(v12 - 8);
  v13 = *(v43 + 64);
  MEMORY[0x28223BE20](v10);
  v52 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58[0] = v15;
  v58[1] = v16;
  v50 = v17;
  v58[2] = v17;
  v58[3] = v18;
  v46 = v18;
  v49 = v19;
  v58[4] = v19;
  v58[5] = v20;
  v47 = v20;
  v58[6] = v21;
  _s10CodingKeysOMa();
  swift_getWitnessTable();
  v51 = sub_24B7DAFD8();
  v55 = *(v51 - 8);
  v22 = *(v55 + 64);
  MEMORY[0x28223BE20](v51);
  v24 = &v39 - v23;
  v54 = a3;
  v48 = a4;
  v25 = sub_24B7DB138();
  v44 = *(v25 - 8);
  v26 = *(v44 + 64);
  MEMORY[0x28223BE20](v25);
  v28 = &v39 - v27;
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v30 = v56;
  sub_24B7DB148();
  if (v30)
  {
    v38 = a1;
  }

  else
  {
    v31 = v52;
    v40 = v28;
    v41 = v25;
    v32 = v53;
    v56 = a1;
    v59 = 0;
    v33 = v51;
    sub_24B7DAF68();
    sub_24B7BFC98(&v57, v58);
    sub_24B7BFCB0(v58, &v57);
    v34 = v31;
    sub_24B7DADA8();
    __swift_destroy_boxed_opaque_existential_1(v58);
    (*(v55 + 8))(v24, v33);
    v36 = v40;
    (*(v43 + 32))(v40, v34, a2);
    v37 = v41;
    swift_storeEnumTagMultiPayload();
    (*(v44 + 32))(v32, v36, v37);
    v38 = v56;
  }

  return __swift_destroy_boxed_opaque_existential_1(v38);
}

uint64_t sub_24B7BFC18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F059508, &qword_24B7DBAA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B7BFC98(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_24B7BFCB0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_24B7BFD30@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a3 - 16);
  v4 = *(a3 - 8);
  v7 = *(a3 - 32);
  v6 = *(a3 - 24);
  return Result<>.init(from:)(a1, a2[2], a2[3], a2[4], a4);
}

uint64_t sub_24B7BFD5C(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 - 16);
  v4 = *(a3 - 8);
  v6 = *(a3 - 32);
  v5 = *(a3 - 24);
  return Result<>.encode(to:)(a1, a2);
}

uint64_t getEnumTagSinglePayload for DynamicPredicateBooleanValue.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for DynamicPredicateBooleanValue.CodingKeys(_WORD *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for DynamicPredicateComparableKeyPath(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DynamicPredicateComparableKeyPath(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t DynamicPredicateComparableValue.Stripped.hashValue.getter()
{
  v1 = *v0;
  sub_24B7DB0F8();
  MEMORY[0x24C24AAF0](v1);
  return sub_24B7DB128();
}

void DynamicPredicateComparableValue.strippedCase.getter(_BYTE *a1@<X8>)
{
  v2 = v1[16];
  if (v2 >= 3)
  {
    if (v2 == 3)
    {
      *a1 = *v1 & 1;
    }

    else
    {
      *a1 = 3;
    }
  }

  else
  {
    *a1 = v2;
  }
}

uint64_t sub_24B7C00C0()
{
  v1 = *v0;
  v2 = 0x5463696D616E7964;
  v3 = 0x72656765746E69;
  v4 = 0x6874615079656BLL;
  if (v1 != 3)
  {
    v4 = 0x676E69727473;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x657A695364697267;
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

uint64_t sub_24B7C0170@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B7C2918(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B7C01A4(uint64_t a1)
{
  v2 = sub_24B7C0B34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7C01E0(uint64_t a1)
{
  v2 = sub_24B7C0B34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B7C0228(uint64_t a1)
{
  v2 = sub_24B7C0D2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7C0264(uint64_t a1)
{
  v2 = sub_24B7C0D2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B7C02A0(uint64_t a1)
{
  v2 = sub_24B7C0CD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7C02DC(uint64_t a1)
{
  v2 = sub_24B7C0CD8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B7C0318(uint64_t a1)
{
  v2 = sub_24B7C0C84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7C0354(uint64_t a1)
{
  v2 = sub_24B7C0C84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B7C0390(uint64_t a1)
{
  v2 = sub_24B7C0BDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7C03CC(uint64_t a1)
{
  v2 = sub_24B7C0BDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B7C0408@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24B7DB088();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24B7C0488(uint64_t a1)
{
  v2 = sub_24B7C0B88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7C04C4(uint64_t a1)
{
  v2 = sub_24B7C0B88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DynamicPredicateComparableValue.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F059590, &qword_24B7DBD70);
  v47 = *(v3 - 8);
  v48 = v3;
  v4 = *(v47 + 64);
  MEMORY[0x28223BE20](v3);
  v46 = v38 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F059598, &qword_24B7DBD78);
  v44 = *(v6 - 8);
  v45 = v6;
  v7 = *(v44 + 64);
  MEMORY[0x28223BE20](v6);
  v43 = v38 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0595A0, &qword_24B7DBD80);
  v41 = *(v9 - 8);
  v42 = v9;
  v10 = *(v41 + 64);
  MEMORY[0x28223BE20](v9);
  v40 = v38 - v11;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0595A8, &qword_24B7DBD88);
  v39 = *(v50 - 8);
  v12 = *(v39 + 64);
  MEMORY[0x28223BE20](v50);
  v14 = v38 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0595B0, &qword_24B7DBD90);
  v49 = *(v15 - 8);
  v16 = *(v49 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = v38 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0595B8, &qword_24B7DBD98);
  v52 = *(v19 - 8);
  v53 = v19;
  v20 = *(v52 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = v38 - v21;
  v23 = v1[1];
  v51 = *v1;
  v38[1] = v23;
  v24 = *(v1 + 16);
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B7C0B34();
  v26 = v22;
  sub_24B7DB158();
  if (v24 <= 1)
  {
    v32 = v14;
    v34 = v49;
    v33 = v50;
    if (v24)
    {
      v56 = 1;
      sub_24B7C0CD8();
      v37 = v53;
      sub_24B7DAFE8();
      sub_24B7DB028();
      (*(v39 + 8))(v32, v33);
      return (*(v52 + 8))(v26, v37);
    }

    v35 = v15;
    v55 = 0;
    sub_24B7C0D2C();
    v28 = v53;
    v29 = v26;
    sub_24B7DAFE8();
    v54 = v51;
    sub_24B7C0D80();
    sub_24B7DB048();
    (*(v34 + 8))(v18, v35);
  }

  else
  {
    if (v24 == 2)
    {
      v57 = 2;
      sub_24B7C0C84();
      v27 = v40;
      v28 = v53;
      v29 = v26;
      sub_24B7DAFE8();
      v30 = v42;
      sub_24B7DB028();
      v31 = v41;
    }

    else if (v24 == 3)
    {
      v59 = 3;
      sub_24B7C0BDC();
      v27 = v43;
      v28 = v53;
      v29 = v26;
      sub_24B7DAFE8();
      v58 = v51 & 1;
      sub_24B7C0C30();
      v30 = v45;
      sub_24B7DB048();
      v31 = v44;
    }

    else
    {
      v60 = 4;
      sub_24B7C0B88();
      v27 = v46;
      v28 = v53;
      v29 = v26;
      sub_24B7DAFE8();
      v30 = v48;
      sub_24B7DB008();
      v31 = v47;
    }

    (*(v31 + 8))(v27, v30);
  }

  return (*(v52 + 8))(v29, v28);
}

unint64_t sub_24B7C0B34()
{
  result = qword_27F0595C0;
  if (!qword_27F0595C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0595C0);
  }

  return result;
}

unint64_t sub_24B7C0B88()
{
  result = qword_27F0595C8;
  if (!qword_27F0595C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0595C8);
  }

  return result;
}

unint64_t sub_24B7C0BDC()
{
  result = qword_27F0595D0;
  if (!qword_27F0595D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0595D0);
  }

  return result;
}

unint64_t sub_24B7C0C30()
{
  result = qword_27F0595D8;
  if (!qword_27F0595D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0595D8);
  }

  return result;
}

unint64_t sub_24B7C0C84()
{
  result = qword_27F0595E0;
  if (!qword_27F0595E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0595E0);
  }

  return result;
}

unint64_t sub_24B7C0CD8()
{
  result = qword_27F0595E8;
  if (!qword_27F0595E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0595E8);
  }

  return result;
}

unint64_t sub_24B7C0D2C()
{
  result = qword_27F0595F0;
  if (!qword_27F0595F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0595F0);
  }

  return result;
}

unint64_t sub_24B7C0D80()
{
  result = qword_27F0595F8;
  if (!qword_27F0595F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0595F8);
  }

  return result;
}

uint64_t DynamicPredicateComparableValue.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F059600, &qword_24B7DBDA0);
  v72 = *(v69 - 8);
  v3 = *(v72 + 64);
  MEMORY[0x28223BE20](v69);
  v73 = &v61 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F059608, &qword_24B7DBDA8);
  v70 = *(v5 - 8);
  v71 = v5;
  v6 = *(v70 + 64);
  MEMORY[0x28223BE20](v5);
  v75 = &v61 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F059610, &qword_24B7DBDB0);
  v9 = *(v8 - 8);
  v67 = v8;
  v68 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v74 = &v61 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F059618, &qword_24B7DBDB8);
  v65 = *(v12 - 8);
  v66 = v12;
  v13 = *(v65 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v61 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F059620, &qword_24B7DBDC0);
  v64 = *(v16 - 8);
  v17 = *(v64 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v61 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F059628, &qword_24B7DBDC8);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v61 - v23;
  v26 = a1[3];
  v25 = a1[4];
  v78 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v26);
  sub_24B7C0B34();
  v27 = v77;
  sub_24B7DB148();
  if (!v27)
  {
    v62 = v16;
    v63 = v24;
    v29 = v74;
    v28 = v75;
    v77 = v21;
    v30 = v76;
    v31 = sub_24B7DAFC8();
    v32 = *(v31 + 16);
    if (v32)
    {
      LODWORD(v33) = *(v31 + 32);
      v34 = v32 != 1 || v33 == 5;
      if (!v34)
      {
        if (*(v31 + 32) <= 1u)
        {
          v74 = v31;
          if (v33)
          {
            v81 = 1;
            sub_24B7C0CD8();
            v52 = v15;
            v53 = v63;
            sub_24B7DAF48();
            v57 = v66;
            v58 = sub_24B7DAF98();
            (*(v65 + 8))(v52, v57);
            (*(v77 + 8))(v53, v20);
            swift_unknownObjectRelease();
            v60 = 0;
          }

          else
          {
            v80 = 0;
            sub_24B7C0D2C();
            v45 = v19;
            v46 = v63;
            sub_24B7DAF48();
            sub_24B7C181C();
            v56 = v62;
            sub_24B7DAFB8();
            (*(v64 + 8))(v45, v56);
            (*(v77 + 8))(v46, v20);
            swift_unknownObjectRelease();
            v60 = 0;
            v58 = v79;
          }

          goto LABEL_20;
        }

        if (v33 == 2)
        {
          v82 = 2;
          sub_24B7C0C84();
          v47 = v29;
          v48 = v63;
          sub_24B7DAF48();
          v49 = v77;
          v50 = v67;
          v58 = sub_24B7DAF98();
          (*(v68 + 8))(v47, v50);
          (*(v49 + 8))(v48, v20);
          swift_unknownObjectRelease();
          v60 = 0;
        }

        else
        {
          v74 = v31;
          LODWORD(v68) = v33;
          v34 = v33 == 3;
          v33 = v77;
          v42 = v63;
          if (v34)
          {
            v84 = 3;
            sub_24B7C0BDC();
            sub_24B7DAF48();
            v43 = v30;
            sub_24B7C17C8();
            v44 = v71;
            sub_24B7DAFB8();
            (*(v70 + 8))(v28, v44);
            (*(v33 + 8))(v42, v20);
            swift_unknownObjectRelease();
            v60 = 0;
            v58 = v83;
            LOBYTE(v33) = v68;
            v30 = v43;
LABEL_20:
            *v30 = v58;
            *(v30 + 8) = v60;
            *(v30 + 16) = v33;
            return __swift_destroy_boxed_opaque_existential_1(v78);
          }

          v85 = 4;
          sub_24B7C0B88();
          v51 = v73;
          sub_24B7DAF48();
          v54 = v20;
          v55 = v69;
          v58 = sub_24B7DAF78();
          v60 = v59;
          (*(v72 + 8))(v51, v55);
          (*(v33 + 8))(v42, v54);
          swift_unknownObjectRelease();
          LOBYTE(v33) = v68;
        }

        v30 = v76;
        goto LABEL_20;
      }
    }

    v35 = v20;
    v36 = sub_24B7DAEE8();
    swift_allocError();
    v38 = v37;
    v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F059630, &qword_24B7DBDD0) + 48);
    *v38 = &type metadata for DynamicPredicateComparableValue;
    v40 = v63;
    sub_24B7DAF58();
    sub_24B7DAED8();
    (*(*(v36 - 8) + 104))(v38, *MEMORY[0x277D84160], v36);
    swift_willThrow();
    (*(v77 + 8))(v40, v35);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v78);
}

uint64_t sub_24B7C1760()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24B7C1794()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 8;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_24B7C17C8()
{
  result = qword_27F059638;
  if (!qword_27F059638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059638);
  }

  return result;
}

unint64_t sub_24B7C181C()
{
  result = qword_27F059640;
  if (!qword_27F059640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059640);
  }

  return result;
}

uint64_t DynamicPredicateComparableValue.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  if (v2 <= 1)
  {
    if (!*(v0 + 16))
    {
      MEMORY[0x24C24AAF0](0);
      v4 = v1 + 1;
      return MEMORY[0x24C24AAF0](v4);
    }

    v5 = 1;
LABEL_14:
    MEMORY[0x24C24AAF0](v5);
    v4 = v1;
    return MEMORY[0x24C24AAF0](v4);
  }

  if (v2 == 2)
  {
    v5 = 2;
    goto LABEL_14;
  }

  if (v2 == 3)
  {
    MEMORY[0x24C24AAF0](3);
    sub_24B7DAAE8();
  }

  else
  {
    v6 = *(v0 + 8);
    MEMORY[0x24C24AAF0](4);

    return sub_24B7DAAE8();
  }
}

uint64_t DynamicPredicateComparableValue.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_24B7DB0F8();
  if (v3 <= 1)
  {
    if (!v3)
    {
      MEMORY[0x24C24AAF0](0);
      v4 = v1 + 1;
LABEL_11:
      MEMORY[0x24C24AAF0](v4);
      return sub_24B7DB128();
    }

    v5 = 1;
LABEL_10:
    MEMORY[0x24C24AAF0](v5);
    v4 = v1;
    goto LABEL_11;
  }

  if (v3 == 2)
  {
    v5 = 2;
    goto LABEL_10;
  }

  if (v3 == 3)
  {
    MEMORY[0x24C24AAF0](3);
    sub_24B7DAAE8();
  }

  else
  {
    MEMORY[0x24C24AAF0](4);
    sub_24B7DAAE8();
  }

  return sub_24B7DB128();
}

uint64_t sub_24B7C1B10()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  sub_24B7DB0F8();
  DynamicPredicateComparableValue.hash(into:)();
  return sub_24B7DB128();
}

uint64_t sub_24B7C1B68()
{
  sub_24B7DB0F8();
  DynamicPredicateComparableValue.hash(into:)();
  return sub_24B7DB128();
}

uint64_t _s16FitnessUtilities31DynamicPredicateComparableValueO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 <= 1)
  {
    if (!*(a1 + 16))
    {
      if (!*(a2 + 16))
      {
        sub_24B7BDEB8(*a1, v3, 0);
        sub_24B7BDEB8(v5, v6, 0);
        return v5 == v2;
      }

      goto LABEL_35;
    }

    if (v7 != 1)
    {
LABEL_35:
      sub_24B7BD918(v5, v6, v7);
      sub_24B7BDEB8(v2, v3, v4);
      sub_24B7BDEB8(v5, v6, v7);
      return 0;
    }

    sub_24B7BDEB8(*a1, v3, 1);
    v15 = v5;
    v16 = v6;
    v17 = 1;
LABEL_33:
    sub_24B7BDEB8(v15, v16, v17);
    return v2 == v5;
  }

  if (v4 == 2)
  {
    if (v7 != 2)
    {
      goto LABEL_35;
    }

    sub_24B7BDEB8(*a1, v3, 2);
    v15 = v5;
    v16 = v6;
    v17 = 2;
    goto LABEL_33;
  }

  if (v4 == 3)
  {
    if (v7 == 3)
    {
      if (v2)
      {
        v8 = 0x657A695364697267;
      }

      else
      {
        v8 = 0x5463696D616E7964;
      }

      if (v2)
      {
        v9 = 0xED00007373616C43;
      }

      else
      {
        v9 = 0xEF657A6953657079;
      }

      if (v5)
      {
        v10 = 0x657A695364697267;
      }

      else
      {
        v10 = 0x5463696D616E7964;
      }

      if (v5)
      {
        v11 = 0xED00007373616C43;
      }

      else
      {
        v11 = 0xEF657A6953657079;
      }

      if (v8 != v10 || v9 != v11)
      {
        v13 = sub_24B7DB088();

        sub_24B7BDEB8(v2, v3, 3);
        sub_24B7BDEB8(v5, v6, 3);
        return v13 & 1;
      }

      sub_24B7BDEB8(v2, v3, 3);
      v18 = v5;
      v19 = v6;
      v20 = 3;
      goto LABEL_38;
    }

    goto LABEL_35;
  }

  if (v7 != 4)
  {
    v21 = *(a1 + 8);

    goto LABEL_35;
  }

  if (v2 != v5 || v3 != v6)
  {
    v22 = *a1;
    v23 = sub_24B7DB088();
    sub_24B7BD918(v5, v6, 4);
    sub_24B7BD918(v2, v3, 4);
    sub_24B7BDEB8(v2, v3, 4);
    sub_24B7BDEB8(v5, v6, 4);
    return v23 & 1;
  }

  sub_24B7BD918(*a1, v3, 4);
  sub_24B7BD918(v2, v3, 4);
  sub_24B7BDEB8(v2, v3, 4);
  v18 = v2;
  v19 = v3;
  v20 = 4;
LABEL_38:
  sub_24B7BDEB8(v18, v19, v20);
  return 1;
}

unint64_t sub_24B7C1E84()
{
  result = qword_27F059648;
  if (!qword_27F059648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059648);
  }

  return result;
}

unint64_t sub_24B7C1EDC()
{
  result = qword_27F059650;
  if (!qword_27F059650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059650);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_24B7C1F44(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 >= 5)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24B7C1F80(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_24B7C1FC8(uint64_t result, unsigned int a2)
{
  if (a2 > 4)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 5;
    LOBYTE(a2) = 5;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for DynamicPredicateComparisonOperator(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DynamicPredicateComparisonOperator(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for DynamicPredicateComparableValue.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DynamicPredicateComparableValue.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24B7C22EC()
{
  result = qword_27F059658;
  if (!qword_27F059658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059658);
  }

  return result;
}

unint64_t sub_24B7C2344()
{
  result = qword_27F059660;
  if (!qword_27F059660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059660);
  }

  return result;
}

unint64_t sub_24B7C239C()
{
  result = qword_27F059668;
  if (!qword_27F059668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059668);
  }

  return result;
}

unint64_t sub_24B7C23F4()
{
  result = qword_27F059670;
  if (!qword_27F059670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059670);
  }

  return result;
}

unint64_t sub_24B7C244C()
{
  result = qword_27F059678;
  if (!qword_27F059678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059678);
  }

  return result;
}

unint64_t sub_24B7C24A4()
{
  result = qword_27F059680;
  if (!qword_27F059680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059680);
  }

  return result;
}

unint64_t sub_24B7C24FC()
{
  result = qword_27F059688;
  if (!qword_27F059688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059688);
  }

  return result;
}

unint64_t sub_24B7C2554()
{
  result = qword_27F059690;
  if (!qword_27F059690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059690);
  }

  return result;
}

unint64_t sub_24B7C25AC()
{
  result = qword_27F059698;
  if (!qword_27F059698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059698);
  }

  return result;
}

unint64_t sub_24B7C2604()
{
  result = qword_27F0596A0;
  if (!qword_27F0596A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0596A0);
  }

  return result;
}

unint64_t sub_24B7C265C()
{
  result = qword_27F0596A8;
  if (!qword_27F0596A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0596A8);
  }

  return result;
}

unint64_t sub_24B7C26B4()
{
  result = qword_27F0596B0;
  if (!qword_27F0596B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0596B0);
  }

  return result;
}

unint64_t sub_24B7C270C()
{
  result = qword_27F0596B8;
  if (!qword_27F0596B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0596B8);
  }

  return result;
}

unint64_t sub_24B7C2764()
{
  result = qword_27F0596C0;
  if (!qword_27F0596C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0596C0);
  }

  return result;
}

unint64_t sub_24B7C27BC()
{
  result = qword_27F0596C8;
  if (!qword_27F0596C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0596C8);
  }

  return result;
}

unint64_t sub_24B7C2814()
{
  result = qword_27F0596D0;
  if (!qword_27F0596D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0596D0);
  }

  return result;
}

unint64_t sub_24B7C286C()
{
  result = qword_27F0596D8;
  if (!qword_27F0596D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0596D8);
  }

  return result;
}

unint64_t sub_24B7C28C4()
{
  result = qword_27F0596E0;
  if (!qword_27F0596E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0596E0);
  }

  return result;
}

uint64_t sub_24B7C2918(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5463696D616E7964 && a2 == 0xEF657A6953657079;
  if (v4 || (sub_24B7DB088() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657A695364697267 && a2 == 0xED00007373616C43 || (sub_24B7DB088() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x72656765746E69 && a2 == 0xE700000000000000 || (sub_24B7DB088() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6874615079656BLL && a2 == 0xE700000000000000 || (sub_24B7DB088() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x676E69727473 && a2 == 0xE600000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_24B7DB088();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_24B7C2B2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24B7DB088();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24B7C2BB0(uint64_t a1)
{
  v2 = sub_24B7C2D60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7C2BEC(uint64_t a1)
{
  v2 = sub_24B7C2D60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DynamicPredicateBooleanValue.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0596E8, &qword_24B7DC6C0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B7C2D60();
  sub_24B7DB158();
  sub_24B7DB018();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_24B7C2D60()
{
  result = qword_27F0596F0;
  if (!qword_27F0596F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0596F0);
  }

  return result;
}

uint64_t DynamicPredicateBooleanValue.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0596F8, &qword_24B7DC6C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B7C2D60();
  sub_24B7DB148();
  if (!v2)
  {
    v11 = sub_24B7DAF88();
    (*(v6 + 8))(v9, v5);
    *a2 = v11 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24B7C2F24(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0596E8, &qword_24B7DC6C0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B7C2D60();
  sub_24B7DB158();
  sub_24B7DB018();
  return (*(v4 + 8))(v7, v3);
}

uint64_t DynamicPredicateBooleanValue.hashValue.getter()
{
  v1 = *v0;
  sub_24B7DB0F8();
  sub_24B7DB118();
  return sub_24B7DB128();
}

uint64_t sub_24B7C30E8()
{
  v1 = *v0;
  sub_24B7DB0F8();
  sub_24B7DB118();
  return sub_24B7DB128();
}

uint64_t sub_24B7C315C()
{
  v1 = *v0;
  sub_24B7DB0F8();
  sub_24B7DB118();
  return sub_24B7DB128();
}

unint64_t sub_24B7C31A4()
{
  result = qword_27F059700;
  if (!qword_27F059700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059700);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DynamicPredicateBooleanValue(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_24B7C32D4()
{
  result = qword_27F059708;
  if (!qword_27F059708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059708);
  }

  return result;
}

unint64_t sub_24B7C332C()
{
  result = qword_27F059710;
  if (!qword_27F059710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059710);
  }

  return result;
}

unint64_t sub_24B7C3384()
{
  result = qword_27F059718;
  if (!qword_27F059718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059718);
  }

  return result;
}

uint64_t DynamicPredicateEqualityDescriptor.lhs.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_24B7C33EC(v2, v3, v4);
}

uint64_t sub_24B7C33EC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 7u && ((1 << a3) & 0xC4) != 0)
  {
  }

  return result;
}

uint64_t DynamicPredicateEqualityDescriptor.rhs.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 40);
  *(a1 + 16) = v4;
  return sub_24B7C33EC(v2, v3, v4);
}

__n128 DynamicPredicateEqualityDescriptor.init(lhs:rhs:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 16);
  v4 = a2[1].n128_u8[0];
  *a3 = *a1;
  *(a3 + 16) = v3;
  result = *a2;
  *(a3 + 24) = *a2;
  *(a3 + 40) = v4;
  return result;
}

uint64_t sub_24B7C3450()
{
  if (*v0)
  {
    return 7563378;
  }

  else
  {
    return 7563372;
  }
}

uint64_t sub_24B7C3470@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7563372 && a2 == 0xE300000000000000;
  if (v5 || (sub_24B7DB088() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7563378 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24B7DB088();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24B7C354C(uint64_t a1)
{
  v2 = sub_24B7C37AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7C3588(uint64_t a1)
{
  v2 = sub_24B7C37AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DynamicPredicateEqualityDescriptor.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F059720, &qword_24B7DC8E0);
  v18 = *(v3 - 8);
  v4 = *(v18 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - v5;
  v8 = *v1;
  v7 = *(v1 + 8);
  v9 = *(v1 + 24);
  v15 = *(v1 + 32);
  v16 = v9;
  v22 = *(v1 + 40);
  v10 = a1[4];
  v11 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B7C33EC(v8, v7, v11);
  sub_24B7C37AC();
  sub_24B7DB158();
  v19 = v8;
  v20 = v7;
  v21 = v11;
  v23 = 0;
  sub_24B7C3800();
  v12 = v17;
  sub_24B7DB048();
  sub_24B7C3854(v19, v20, v21);
  if (!v12)
  {
    v19 = v16;
    v20 = v15;
    v21 = v22;
    v23 = 1;
    sub_24B7C33EC(v16, v15, v22);
    sub_24B7DB048();
    sub_24B7C3854(v19, v20, v21);
  }

  return (*(v18 + 8))(v6, v3);
}

unint64_t sub_24B7C37AC()
{
  result = qword_27F059728;
  if (!qword_27F059728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059728);
  }

  return result;
}

unint64_t sub_24B7C3800()
{
  result = qword_27F059730;
  if (!qword_27F059730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059730);
  }

  return result;
}

uint64_t sub_24B7C3854(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 7u && ((1 << a3) & 0xC4) != 0)
  {
  }

  return result;
}

uint64_t DynamicPredicateEqualityDescriptor.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F059738, &qword_24B7DC8E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B7C37AC();
  sub_24B7DB148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = 0;
  sub_24B7C3AD8();
  sub_24B7DAFB8();
  v11 = v19;
  v18 = v20;
  v22 = v21;
  v23 = 1;
  sub_24B7DAFB8();
  (*(v6 + 8))(v9, v5);
  v12 = v19;
  v13 = v20;
  v14 = v21;
  v15 = v18;
  *a2 = v11;
  *(a2 + 8) = v15;
  v16 = v22;
  *(a2 + 16) = v22;
  *(a2 + 24) = v12;
  *(a2 + 32) = v13;
  *(a2 + 40) = v14;
  sub_24B7C33EC(v11, v15, v16);
  sub_24B7C33EC(v12, v13, v14);
  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_24B7C3854(v11, v15, v16);
  return sub_24B7C3854(v12, v13, v14);
}

unint64_t sub_24B7C3AD8()
{
  result = qword_27F059740;
  if (!qword_27F059740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059740);
  }

  return result;
}

uint64_t DynamicPredicateEqualityDescriptor.hash(into:)()
{
  v1 = *(v0 + 3);
  v2 = *(v0 + 4);
  v3 = *(v0 + 40);
  v5 = *v0;
  v6 = *(v0 + 16);
  DynamicPredicateEquatableValue.hash(into:)();
  return DynamicPredicateEquatableValue.hash(into:)();
}

uint64_t DynamicPredicateEqualityDescriptor.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  v5 = v0[4];
  v6 = *(v0 + 40);
  sub_24B7DB0F8();
  DynamicPredicateEquatableValue.hash(into:)();
  DynamicPredicateEquatableValue.hash(into:)();
  return sub_24B7DB128();
}

uint64_t sub_24B7C3C54()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  v5 = v0[4];
  v6 = *(v0 + 40);
  sub_24B7DB0F8();
  DynamicPredicateEquatableValue.hash(into:)();
  DynamicPredicateEquatableValue.hash(into:)();
  return sub_24B7DB128();
}

uint64_t sub_24B7C3CDC()
{
  v1 = *(v0 + 3);
  v2 = *(v0 + 4);
  v3 = *(v0 + 40);
  v5 = *v0;
  v6 = *(v0 + 16);
  DynamicPredicateEquatableValue.hash(into:)();
  return DynamicPredicateEquatableValue.hash(into:)();
}

uint64_t sub_24B7C3D48()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  v5 = v0[4];
  v6 = *(v0 + 40);
  sub_24B7DB0F8();
  DynamicPredicateEquatableValue.hash(into:)();
  DynamicPredicateEquatableValue.hash(into:)();
  return sub_24B7DB128();
}

uint64_t _s16FitnessUtilities34DynamicPredicateEqualityDescriptorV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a1 + 16);
  v12 = *(a2 + 16);
  v18 = *a1;
  v19 = v2;
  v20 = v11;
  v15 = v6;
  v16 = v7;
  v17 = v12;
  sub_24B7C33EC(v18, v2, v11);
  sub_24B7C33EC(v6, v7, v12);
  LOBYTE(v6) = _s16FitnessUtilities30DynamicPredicateEquatableValueO2eeoiySbAC_ACtFZ_0(&v18, &v15);
  sub_24B7C3854(v15, v16, v17);
  sub_24B7C3854(v18, v19, v20);
  if (v6)
  {
    v18 = v3;
    v19 = v4;
    v20 = v5;
    v15 = v8;
    v16 = v9;
    v17 = v10;
    sub_24B7C33EC(v3, v4, v5);
    sub_24B7C33EC(v8, v9, v10);
    v13 = _s16FitnessUtilities30DynamicPredicateEquatableValueO2eeoiySbAC_ACtFZ_0(&v18, &v15);
    sub_24B7C3854(v15, v16, v17);
    sub_24B7C3854(v18, v19, v20);
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

unint64_t sub_24B7C3EF4()
{
  result = qword_27F059748;
  if (!qword_27F059748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059748);
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

uint64_t sub_24B7C3F68(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 41))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 16);
  if (v3 <= 7)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_24B7C3FB0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 249;
    if (a3 >= 0xF9)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_24B7C4024()
{
  result = qword_27F059750;
  if (!qword_27F059750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059750);
  }

  return result;
}

unint64_t sub_24B7C407C()
{
  result = qword_27F059758;
  if (!qword_27F059758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059758);
  }

  return result;
}

unint64_t sub_24B7C40D4()
{
  result = qword_27F059760;
  if (!qword_27F059760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059760);
  }

  return result;
}

FitnessUtilities::DynamicPredicateComparableKeyPath_optional __swiftcall DynamicPredicateComparableKeyPath.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24B7DAF38();

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

uint64_t DynamicPredicateComparableKeyPath.rawValue.getter()
{
  if (*v0)
  {
    result = 0x657A695364697267;
  }

  else
  {
    result = 0x5463696D616E7964;
  }

  *v0;
  return result;
}

uint64_t sub_24B7C41E0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x657A695364697267;
  }

  else
  {
    v4 = 0x5463696D616E7964;
  }

  if (v3)
  {
    v5 = 0xEF657A6953657079;
  }

  else
  {
    v5 = 0xED00007373616C43;
  }

  if (*a2)
  {
    v6 = 0x657A695364697267;
  }

  else
  {
    v6 = 0x5463696D616E7964;
  }

  if (*a2)
  {
    v7 = 0xED00007373616C43;
  }

  else
  {
    v7 = 0xEF657A6953657079;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_24B7DB088();
  }

  return v9 & 1;
}

uint64_t sub_24B7C42A0@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_24B7DAF38();

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

void sub_24B7C4300(uint64_t *a1@<X8>)
{
  v2 = 0x5463696D616E7964;
  if (*v1)
  {
    v2 = 0x657A695364697267;
  }

  v3 = 0xEF657A6953657079;
  if (*v1)
  {
    v3 = 0xED00007373616C43;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_24B7C440C()
{
  result = qword_27F059768;
  if (!qword_27F059768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059768);
  }

  return result;
}

uint64_t sub_24B7C4460()
{
  v1 = *v0;
  sub_24B7DB0F8();
  sub_24B7DAAE8();

  return sub_24B7DB128();
}

uint64_t sub_24B7C44FC()
{
  *v0;
  sub_24B7DAAE8();
}

uint64_t sub_24B7C4584()
{
  v1 = *v0;
  sub_24B7DB0F8();
  sub_24B7DAAE8();

  return sub_24B7DB128();
}

unint64_t sub_24B7C462C()
{
  result = qword_27F059770[0];
  if (!qword_27F059770[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F059770);
  }

  return result;
}

uint64_t sub_24B7C469C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_24B7BB190;

  return Streamable.makeStream(bufferingPolicy:)(a1, a2, a3, a4);
}

uint64_t Streamable.makeStream(bufferingPolicy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = swift_getAssociatedTypeWitness();
  v7 = sub_24B7DACD8();
  v5[8] = v7;
  v8 = *(v7 - 8);
  v5[9] = v8;
  v9 = *(v8 + 64) + 15;
  v5[10] = swift_task_alloc();
  v10 = sub_24B7DA9C8();
  v5[11] = v10;
  v11 = *(v10 - 8);
  v5[12] = v11;
  v12 = *(v11 + 64) + 15;
  v5[13] = swift_task_alloc();
  v13 = *(a4 + 8);
  sub_24B7DAC58();

  return MEMORY[0x2822009F8](sub_24B7C48C4);
}

uint64_t sub_24B7C48C4()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 80);
  v14 = *(v0 + 88);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v9 = *(v0 + 16);
  v8 = *(v0 + 24);
  v13 = *(v0 + 32);
  sub_24B7DA9B8();
  (*(v5 + 16))(v3, v8, v4);
  v10 = swift_task_alloc();
  *(v10 + 16) = v13;
  *(v10 + 32) = v6;
  *(v10 + 40) = v1;
  swift_checkMetadataState();
  v9[3] = sub_24B7DAD58();
  v9[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1(v9);
  sub_24B7DAD68();

  (*(v2 + 8))(v1, v14);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_24B7C4A3C(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return sub_24B7C4A78(a1);
}

uint64_t sub_24B7C4A78(uint64_t a1)
{
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = sub_24B7DAD18();
  (*(*(v5 - 8) + 32))(v1 + v3, a1, v5);
  return v1;
}

uint64_t sub_24B7C4B0C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v16 - v7;
  v9 = sub_24B7DACB8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v16 - v12;
  v14 = *(v3 + 88);
  (*(v5 + 16))(v8, a1, v4);
  sub_24B7DAD18();
  sub_24B7DACF8();
  return (*(v10 + 8))(v13, v9);
}

char *sub_24B7C4CB0()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(v2 + 80);
  v4 = sub_24B7DAD18();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  v9 = *(v2 + 88);
  (*(v5 + 16))(&v12 - v7, &v1[v9], v4);
  sub_24B7DAD08();
  v10 = *(v5 + 8);
  v10(v8, v4);
  v10(&v1[v9], v4);
  return v1;
}

uint64_t sub_24B7C4DE0()
{
  v0 = *sub_24B7C4CB0();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return MEMORY[0x2821FE8D8]();
}

uint64_t Streamable.publish(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 24))(a2, a3);
  sub_24B7DA9C8();
  swift_getAssociatedTypeWitness();
  swift_getExtendedExistentialTypeMetadata();
  sub_24B7BAC3C();
  sub_24B7DA9F8();
  swift_getWitnessTable();
  sub_24B7DAB48();
}

uint64_t sub_24B7C4F7C(uint64_t a1, uint64_t a2)
{
  sub_24B7DA9C8();
  swift_getAssociatedTypeWitness();
  swift_getExtendedExistentialTypeMetadata();
  v4 = (a1 + *(swift_getTupleTypeMetadata2() + 48));
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  return (*(v6 + 16))(a2, v5, v6);
}

uint64_t sub_24B7C5068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_24B7DAD18();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v26 - v11;
  v13 = sub_24B7DA9C8();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  (*(v16 + 16))(&v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v13);
  v17 = type metadata accessor for StreamContinuation();
  (*(v9 + 16))(v12, a1, v8);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  v20 = swift_allocObject();
  v21 = *(*v20 + 88);
  v22 = *(*v20 + 80);
  v23 = sub_24B7DAD18();
  (*(*(v23 - 8) + 32))(v20 + v21, v12, v23);
  v31 = v17;
  WitnessTable = swift_getWitnessTable();
  v30 = v20;
  v24 = (*(a4 + 40))(v29, v27, a4);
  v28 = AssociatedTypeWitness;
  swift_getExtendedExistentialTypeMetadata();
  sub_24B7BAC3C();
  sub_24B7DA9F8();
  sub_24B7DAA08();
  return v24(v29, 0);
}

uint64_t sub_24B7C5344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24B7DA9C8();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  (*(v9 + 16))(v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  v10 = (*(a3 + 40))(v13, a2, a3);
  v12[1] = swift_getAssociatedTypeWitness();
  swift_getExtendedExistentialTypeMetadata();
  sub_24B7BAC3C();
  sub_24B7DA9F8();
  sub_24B7DAA08();
  return v10(v13, 0);
}

uint64_t sub_24B7C54D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = a1;
  v9 = sub_24B7DA9C8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = *(a5 + 8);
  sub_24B7DAC58();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B7C5068(v17, a3, a4, a5);
  (*(v10 + 16))(&v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v9);
  v13 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = a4;
  *(v14 + 3) = a5;
  *(v14 + 4) = a2;
  (*(v10 + 32))(&v14[v13], &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  swift_getAssociatedTypeWitness();
  sub_24B7DAD18();
  swift_unknownObjectRetain();
  return sub_24B7DACC8();
}

uint64_t sub_24B7C56CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_24B7DA9C8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0597F8, &qword_24B7DCEA0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v20 - v14;
  v16 = sub_24B7DACA8();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v10 + 16))(&v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v9);
  v17 = (*(v10 + 80) + 56) & ~*(v10 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = 0;
  *(v18 + 3) = 0;
  *(v18 + 4) = a4;
  *(v18 + 5) = a5;
  *(v18 + 6) = a2;
  (*(v10 + 32))(&v18[v17], &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  swift_unknownObjectRetain();
  sub_24B7C7B14(0, 0, v15, &unk_24B7DCEB0, v18);
}

uint64_t sub_24B7C58C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = *(a7 + 8);
  sub_24B7DAC58();

  return MEMORY[0x2822009F8](sub_24B7C5940);
}

uint64_t sub_24B7C5940()
{
  v1 = v0[2];
  sub_24B7C5344(v0[3], v0[4], v0[5]);
  v2 = v0[1];

  return v2();
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

uint64_t sub_24B7C5A08(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_24B7C4F7C(a1, v1[4]);
}

uint64_t dispatch thunk of Streamable.makeStream(bufferingPolicy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 48);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_24B7BB190;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_24B7C5BAC(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = sub_24B7DAD18();
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

uint64_t sub_24B7C5C58(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = *(sub_24B7DA9C8() - 8);
  v6 = v1[4];
  v7 = v1 + ((*(v5 + 80) + 40) & ~*(v5 + 80));

  return sub_24B7C56CC(a1, v6, v7, v3, v4);
}

uint64_t sub_24B7C5CE0(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = *(sub_24B7DA9C8() - 8);
  v7 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24B7BB094;

  return sub_24B7C58C0(a1, v8, v9, v10, v1 + v7, v4, v5);
}

uint64_t sub_24B7C5DEC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x657A695364697267;
    }

    else
    {
      v3 = 0x5463696D616E7964;
    }

    if (v2)
    {
      v4 = 0xED00007373616C43;
    }

    else
    {
      v4 = 0xEF657A6953657079;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x800000024B7DF850;
    v3 = 0xD000000000000013;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x6D726F6674616C70;
    }

    else
    {
      v3 = 0xD000000000000011;
    }

    if (v2 == 3)
    {
      v4 = 0xE800000000000000;
    }

    else
    {
      v4 = 0x800000024B7DF870;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x657A695364697267;
    }

    else
    {
      v9 = 0x5463696D616E7964;
    }

    if (a2)
    {
      v8 = 0xED00007373616C43;
    }

    else
    {
      v8 = 0xEF657A6953657079;
    }

    if (v3 != v9)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v5 = 0x6D726F6674616C70;
    v6 = 0x800000024B7DF870;
    if (a2 == 3)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xD000000000000011;
    }

    if (a2 == 2)
    {
      v7 = 0xD000000000000013;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0x800000024B7DF850;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_37;
    }
  }

  if (v4 != v8)
  {
LABEL_37:
    v10 = sub_24B7DB088();
    goto LABEL_38;
  }

  v10 = 1;
LABEL_38:

  return v10 & 1;
}

uint64_t sub_24B7C5FA8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x656E6F6870;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 30324;
    }

    else
    {
      v4 = 0x6863746177;
    }

    if (v3 == 2)
    {
      v5 = 0xE200000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x74656C626174;
    }

    else
    {
      v4 = 0x656E6F6870;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  v6 = 0xE500000000000000;
  v7 = 0xE200000000000000;
  v8 = 30324;
  if (a2 != 2)
  {
    v8 = 0x6863746177;
    v7 = 0xE500000000000000;
  }

  if (a2)
  {
    v2 = 0x74656C626174;
    v6 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24B7DB088();
  }

  return v11 & 1;
}

uint64_t sub_24B7C60C0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 == 2)
  {
    v3 = 0xE800000000000000;
  }

  else
  {
    v3 = 0xEF6C61757145724FLL;
  }

  v4 = 0xD000000000000012;
  v5 = 0x800000024B7DF8A0;
  if (!a1)
  {
    v4 = 0x5472657461657267;
    v5 = 0xEB000000006E6168;
  }

  if (a1 <= 1u)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6E6168547373656CLL;
  }

  if (v2 <= 1)
  {
    v7 = v5;
  }

  else
  {
    v7 = v3;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v9 = 0xE800000000000000;
    }

    else
    {
      v9 = 0xEF6C61757145724FLL;
    }

    if (v6 != 0x6E6168547373656CLL)
    {
      goto LABEL_27;
    }
  }

  else
  {
    if (a2)
    {
      v8 = 0xD000000000000012;
    }

    else
    {
      v8 = 0x5472657461657267;
    }

    if (a2)
    {
      v9 = 0x800000024B7DF8A0;
    }

    else
    {
      v9 = 0xEB000000006E6168;
    }

    if (v6 != v8)
    {
      goto LABEL_27;
    }
  }

  if (v7 != v9)
  {
LABEL_27:
    v10 = sub_24B7DB088();
    goto LABEL_28;
  }

  v10 = 1;
LABEL_28:

  return v10 & 1;
}

FitnessUtilities::DynamicPredicateEquatableKeyPath_optional __swiftcall DynamicPredicateEquatableKeyPath.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24B7DAF38();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t DynamicPredicateEquatableKeyPath.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x5463696D616E7964;
  v3 = 0xD000000000000013;
  v4 = 0x6D726F6674616C70;
  if (v1 != 3)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x657A695364697267;
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

void sub_24B7C6358(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF657A6953657079;
  v4 = 0x5463696D616E7964;
  v5 = 0x800000024B7DF850;
  v6 = 0xD000000000000013;
  v7 = 0xE800000000000000;
  v8 = 0x6D726F6674616C70;
  if (v2 != 3)
  {
    v8 = 0xD000000000000011;
    v7 = 0x800000024B7DF870;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x657A695364697267;
    v3 = 0xED00007373616C43;
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

unint64_t sub_24B7C64D0()
{
  result = qword_27F059800;
  if (!qword_27F059800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059800);
  }

  return result;
}

uint64_t sub_24B7C6524()
{
  v1 = *v0;
  sub_24B7DB0F8();
  sub_24B7DAAE8();

  return sub_24B7DB128();
}

uint64_t sub_24B7C662C()
{
  *v0;
  *v0;
  *v0;
  sub_24B7DAAE8();
}

uint64_t sub_24B7C6720()
{
  v1 = *v0;
  sub_24B7DB0F8();
  sub_24B7DAAE8();

  return sub_24B7DB128();
}

unint64_t sub_24B7C6834()
{
  result = qword_27F059808[0];
  if (!qword_27F059808[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F059808);
  }

  return result;
}

id UnsafeCodableBox.base.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void UnsafeCodableBox.init(_:)(void *a1@<X0>, void *a2@<X8>)
{
  swift_getMetatypeMetadata();
  v4 = a1;
  v5 = sub_24B7DB188();
  v7 = v6;

  *a2 = a1;
  a2[1] = v5;
  a2[2] = v7;
  a2[3] = a1;
}

uint64_t sub_24B7C6918()
{
  v0 = sub_24B7DAF38();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24B7C696C(char a1)
{
  if (a1)
  {
    return 1701869940;
  }

  else
  {
    return 0x73736572646461;
  }
}

uint64_t sub_24B7C699C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_24B7C6A10(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_24B7C6A7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_24B7C6AEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_24B7C6B5C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_24B7C6918();
  *a2 = result;
  return result;
}

uint64_t sub_24B7C6B8C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24B7C696C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_24B7C6BC0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24B7C6918();
  *a1 = result;
  return result;
}

uint64_t sub_24B7C6BE8@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_24B7BFFF8();
  *a2 = result;
  return result;
}

uint64_t sub_24B7C6C14(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_24B7C6C68(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t UnsafeCodableBox.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v17 = a2;
  type metadata accessor for UnsafeCodableBox.CodingKeys();
  swift_getWitnessTable();
  v4 = sub_24B7DAFD8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B7DB148();
  if (!v2)
  {
    v10 = v17;
    v19 = 0;
    v11 = sub_24B7DAFA8();
    v18 = 1;
    v13 = sub_24B7DAF78();
    v15 = v14;
    (*(v5 + 8))(v8, v4);
    *v10 = 0;
    v10[1] = v13;
    v10[2] = v15;
    v10[3] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t UnsafeCodableBox.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  type metadata accessor for UnsafeCodableBox.CodingKeys();
  swift_getWitnessTable();
  v5 = sub_24B7DB058();
  v16 = *(v5 - 8);
  v6 = *(v16 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - v7;
  v9 = v2[1];
  v15[0] = v2[2];
  v15[1] = v9;
  v10 = v2[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B7DB158();
  v19 = 0;
  v12 = v17;
  sub_24B7DB038();
  if (v12)
  {
    return (*(v16 + 8))(v8, v5);
  }

  v14 = v16;
  v18 = 1;
  sub_24B7DB008();
  return (*(v14 + 8))(v8, v5);
}

id static UnsafeCodableBox.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  if (v3)
  {
    return [v3 isEqual_];
  }

  v5 = *(a2 + 24);
  v7 = *(a2 + 8);
  v8 = *(a1 + 8);
  v9 = *(a1 + 24);
  type metadata accessor for UnsafeCodableBox();
  v6 = UnsafeCodableBox.hashValue.getter();
  return (v6 == UnsafeCodableBox.hashValue.getter());
}

uint64_t UnsafeCodableBox.hashValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  sub_24B7DB0F8();
  UnsafeCodableBox.hash(into:)();
  return sub_24B7DB128();
}

void UnsafeCodableBox.hash(into:)()
{
  if (*v0)
  {
    v4 = *v0;
    sub_24B7DAE48();
  }

  else
  {
    v1 = *(v0 + 16);
    v2 = *(v0 + 24);
    v3 = *(v0 + 8);
    sub_24B7DAAE8();
    MEMORY[0x24C24AAF0](v2);
  }
}

uint64_t sub_24B7C7238()
{
  sub_24B7DB0F8();
  UnsafeCodableBox.hash(into:)();
  return sub_24B7DB128();
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_24B7C72A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24B7C72EC(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t DynamicPredicateComparisonOperator.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x5472657461657267;
  if (a1)
  {
    v1 = 0xD000000000000012;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0x6E6168547373656CLL;
  }
}

uint64_t sub_24B7C7420(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEB000000006E6168;
  v3 = 0x5472657461657267;
  v4 = *a1;
  if (v4 == 2)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v5 = 0xEF6C61757145724FLL;
  }

  v6 = 0xD000000000000012;
  if (*a1)
  {
    v7 = 0x800000024B7DF8A0;
  }

  else
  {
    v6 = 0x5472657461657267;
    v7 = 0xEB000000006E6168;
  }

  if (*a1 <= 1u)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0x6E6168547373656CLL;
  }

  if (v4 <= 1)
  {
    v9 = v7;
  }

  else
  {
    v9 = v5;
  }

  v10 = 0xE800000000000000;
  if (*a2 != 2)
  {
    v10 = 0xEF6C61757145724FLL;
  }

  if (*a2)
  {
    v3 = 0xD000000000000012;
    v2 = 0x800000024B7DF8A0;
  }

  if (*a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = 0x6E6168547373656CLL;
  }

  if (*a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v10;
  }

  if (v8 == v11 && v9 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_24B7DB088();
  }

  return v13 & 1;
}

uint64_t sub_24B7C7578@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = _s16FitnessUtilities34DynamicPredicateComparisonOperatorO8rawValueACSgSS_tcfC_0();
  *a2 = result;
  return result;
}

void sub_24B7C75A8(uint64_t *a1@<X8>)
{
  v2 = 0xEB000000006E6168;
  v3 = 0x5472657461657267;
  v4 = 0xE800000000000000;
  if (*v1 != 2)
  {
    v4 = 0xEF6C61757145724FLL;
  }

  if (*v1)
  {
    v3 = 0xD000000000000012;
    v2 = 0x800000024B7DF8A0;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6E6168547373656CLL;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v5;
  a1[1] = v2;
}

uint64_t sub_24B7C76F0()
{
  v1 = *v0;
  sub_24B7DB0F8();
  sub_24B7DAAE8();

  return sub_24B7DB128();
}

uint64_t sub_24B7C77CC()
{
  *v0;
  *v0;
  *v0;
  sub_24B7DAAE8();
}

uint64_t sub_24B7C7894()
{
  v1 = *v0;
  sub_24B7DB0F8();
  sub_24B7DAAE8();

  return sub_24B7DB128();
}

uint64_t _s16FitnessUtilities34DynamicPredicateComparisonOperatorO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_24B7DAF38();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_24B7C79BC()
{
  result = qword_27F059890;
  if (!qword_27F059890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059890);
  }

  return result;
}

unint64_t sub_24B7C7A20()
{
  result = qword_27F059898;
  if (!qword_27F059898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059898);
  }

  return result;
}

uint64_t NSBundle.isInternal.getter()
{
  v1 = [v0 bundleIdentifier];
  if (v1)
  {
    v2 = v1;
    sub_24B7DAA98();
  }

  sub_24B7DAAC8();

  has_internal_content = os_variant_has_internal_content();

  return has_internal_content;
}

uint64_t sub_24B7C7B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0597F8, &qword_24B7DCEA0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_24B7C9FB4(a3, v27 - v11);
  v13 = sub_24B7DACA8();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_24B7BB29C(v12);
  }

  else
  {
    sub_24B7DAC98();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_24B7DAC58();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_24B7DAAC8() + 32;
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

      sub_24B7BB29C(a3);

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

  sub_24B7BB29C(a3);
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

uint64_t CurrentValueAsyncStreamPublisher.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  CurrentValueAsyncStreamPublisher.init()();
  return v3;
}

uint64_t CurrentValueAsyncStreamPublisher.init()()
{
  v1 = v0;
  v2 = *(*v0 + 80);
  v3 = sub_24B7DAE58();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  swift_defaultActor_initialize();
  v8 = *(*(v2 - 8) + 56);
  v8(v0 + *(*v0 + 96), 1, 1, v2);
  v9 = *(*v0 + 104);
  type metadata accessor for AsyncStreamPublisher();
  *(v0 + v9) = AsyncStreamPublisher.__allocating_init()();
  v8(v7, 1, 1, v2);
  v10 = *(*v0 + 96);
  swift_beginAccess();
  (*(v4 + 40))(v1 + v10, v7, v3);
  swift_endAccess();
  return v1;
}

uint64_t CurrentValueAsyncStreamPublisher.__allocating_init(initialValue:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  CurrentValueAsyncStreamPublisher.init(initialValue:)(a1);
  return v5;
}

uint64_t CurrentValueAsyncStreamPublisher.init(initialValue:)(uint64_t a1)
{
  v2 = v1;
  v14 = a1;
  v3 = *(*v1 + 80);
  v4 = sub_24B7DAE58();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  swift_defaultActor_initialize();
  v9 = *(v3 - 8);
  v10 = *(v9 + 56);
  v10(v1 + *(*v1 + 96), 1, 1, v3);
  v11 = *(*v1 + 104);
  type metadata accessor for AsyncStreamPublisher();
  *(v1 + v11) = AsyncStreamPublisher.__allocating_init()();
  (*(v9 + 32))(v8, v14, v3);
  v10(v8, 0, 1, v3);
  v12 = *(*v1 + 96);
  swift_beginAccess();
  (*(v5 + 40))(v2 + v12, v8, v4);
  swift_endAccess();
  return v2;
}

uint64_t CurrentValueAsyncStreamPublisher.publish(_:)(uint64_t a1)
{
  v25 = a1;
  v28 = *v1;
  v3 = *(v28 + 80);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v27 = &v24 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0597F8, &qword_24B7DCEA0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v26 = &v24 - v9;
  v10 = sub_24B7DAE58();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v24 - v13;
  v15 = *(v4 + 16);
  v15(&v24 - v13, a1, v3);
  (*(v4 + 56))(v14, 0, 1, v3);
  v16 = *(*v1 + 96);
  swift_beginAccess();
  (*(v11 + 40))(v1 + v16, v14, v10);
  swift_endAccess();
  v17 = sub_24B7DACA8();
  v18 = v26;
  (*(*(v17 - 8) + 56))(v26, 1, 1, v17);
  v19 = v27;
  v15(v27, v25, v3);
  WitnessTable = swift_getWitnessTable();
  v21 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = v1;
  *(v22 + 3) = WitnessTable;
  *(v22 + 4) = v3;
  *(v22 + 5) = v1;
  (*(v4 + 32))(&v22[v21], v19, v3);
  swift_retain_n();
  sub_24B7C7B14(0, 0, v18, &unk_24B7DD3C0, v22);
}

uint64_t sub_24B7C8558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_24B7C8578);
}

uint64_t sub_24B7C85B0()
{
  v1 = v0[3];
  v2 = v0[4];
  AsyncStreamPublisher.publish(_:)();
  v3 = v0[1];

  return v3();
}

uint64_t sub_24B7C8610(uint64_t a1)
{
  v4 = v1[3];
  v5 = (*(*(v1[4] - 8) + 80) + 48) & ~*(*(v1[4] - 8) + 80);
  v6 = v1[2];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24B7BB094;

  return sub_24B7C8558(a1, v6, v4, v7, v1 + v5);
}

uint64_t CurrentValueAsyncStreamPublisher.publish<>(_:)(uint64_t a1, uint64_t a2)
{
  v68 = a2;
  v65 = *v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0597F8, &qword_24B7DCEA0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v66 = &v54 - v7;
  v8 = *(v65 + 80);
  v9 = *(v8 - 8);
  v63 = v9[8];
  MEMORY[0x28223BE20](v6);
  v69 = &v54 - v10;
  v11 = sub_24B7DAE58();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v54 = *(TupleTypeMetadata2 - 8);
  v13 = *(v54 + 64);
  v14 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v16 = &v54 - v15;
  v17 = *(v11 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v14);
  v59 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v67 = &v54 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v54 - v23;
  v25 = v9[2];
  v64 = a1;
  v60 = v25;
  v61 = v9 + 2;
  v25(&v54 - v23, a1, v8);
  v26 = v9[7];
  v57 = v9 + 7;
  v56 = v26;
  v26(v24, 0, 1, v8);
  v27 = *(*v2 + 96);
  swift_beginAccess();
  v55 = TupleTypeMetadata2;
  v28 = *(TupleTypeMetadata2 + 48);
  v72 = v17;
  v29 = *(v17 + 16);
  v29(v16, v24, v11);
  v70 = v28;
  v62 = v2;
  v58 = v27;
  v29(&v16[v28], v2 + v27, v11);
  v71 = v9;
  v30 = v9[6];
  if (v30(v16, 1, v8) == 1)
  {
    v31 = *(v72 + 8);
    v31(v24, v11);
    if (v30(&v16[v70], 1, v8) == 1)
    {
      return (v31)(v16, v11);
    }

    goto LABEL_6;
  }

  v33 = v67;
  v29(v67, v16, v11);
  v34 = v70;
  if (v30(&v16[v70], 1, v8) == 1)
  {
    (*(v72 + 8))(v24, v11);
    (v71[1])(v33, v8);
LABEL_6:
    (*(v54 + 8))(v16, v55);
    v35 = v68;
LABEL_7:
    v37 = v59;
    v36 = v60;
    v38 = v64;
    v60(v59, v64, v8);
    v56(v37, 0, 1, v8);
    v39 = v62;
    v40 = v58;
    swift_beginAccess();
    (*(v72 + 40))(v39 + v40, v37, v11);
    swift_endAccess();
    v41 = sub_24B7DACA8();
    v42 = v66;
    (*(*(v41 - 8) + 56))(v66, 1, 1, v41);
    v43 = v69;
    v36(v69, v38, v8);
    WitnessTable = swift_getWitnessTable();
    v45 = v71;
    v46 = (*(v71 + 80) + 56) & ~*(v71 + 80);
    v47 = swift_allocObject();
    *(v47 + 2) = v39;
    *(v47 + 3) = WitnessTable;
    *(v47 + 4) = v8;
    *(v47 + 5) = v35;
    *(v47 + 6) = v39;
    (v45[4])(&v47[v46], v43, v8);
    swift_retain_n();
    sub_24B7C7B14(0, 0, v42, &unk_24B7DD3D0, v47);
  }

  v48 = v71;
  v49 = &v16[v34];
  v50 = v69;
  (v71[4])(v69, v49, v8);
  v35 = v68;
  v51 = sub_24B7DAA78();
  v52 = v48[1];
  v52(v50, v8);
  v53 = *(v72 + 8);
  v53(v24, v11);
  v52(v67, v8);
  result = (v53)(v16, v11);
  if ((v51 & 1) == 0)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_24B7C8DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_24B7C8E00);
}

uint64_t sub_24B7C8E38(uint64_t a1)
{
  v4 = v1[5];
  v5 = (*(*(v1[4] - 8) + 80) + 56) & ~*(*(v1[4] - 8) + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24B7BB094;

  return sub_24B7C8DE0(a1, v6, v7, v8, v1 + v5);
}

uint64_t CurrentValueAsyncStreamPublisher.makeStream(bufferingPolicy:)(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = sub_24B7DACD8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  (*(v7 + 16))(&v9[-v6], a1);
  v10 = v1;
  v11 = a1;
  nullsub_1(v3);
  return sub_24B7DAD68();
}

uint64_t sub_24B7C9048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v53 = a3;
  v5 = *(*a2 + 80);
  v62 = sub_24B7DAD18();
  v59 = *(v62 - 8);
  v56 = *(v59 + 64);
  MEMORY[0x28223BE20](v62);
  v58 = &v48 - v6;
  v57 = sub_24B7DACD8();
  v55 = *(v57 - 8);
  v52 = *(v55 + 64);
  MEMORY[0x28223BE20](v57);
  v60 = &v48 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0597F8, &qword_24B7DCEA0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v61 = &v48 - v10;
  v11 = sub_24B7DACB8();
  v49 = *(v11 - 8);
  v50 = v11;
  v12 = *(v49 + 64);
  MEMORY[0x28223BE20](v11);
  v48 = &v48 - v13;
  v14 = sub_24B7DAE58();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v48 - v18;
  v20 = v5;
  v21 = v5;
  v22 = a2;
  v23 = *(v21 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v17);
  v27 = &v48 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v48 - v28;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v30 = *(*v22 + 96);
  swift_beginAccess();
  v31 = *(v15 + 16);
  v54 = v22;
  v31(v19, v22 + v30, v14);
  v32 = v20;
  if ((*(v23 + 48))(v19, 1, v20) == 1)
  {
    (*(v15 + 8))(v19, v14);
    v33 = v62;
  }

  else
  {
    (*(v23 + 32))(v29, v19, v20);
    (*(v23 + 16))(v27, v29, v20);
    v34 = v48;
    v33 = v62;
    sub_24B7DACF8();
    (*(v49 + 8))(v34, v50);
    (*(v23 + 8))(v29, v32);
  }

  v51 = a1;
  v35 = sub_24B7DACA8();
  (*(*(v35 - 8) + 56))(v61, 1, 1, v35);
  v36 = v55;
  v37 = v57;
  (*(v55 + 16))(v60, v53, v57);
  v39 = v58;
  v38 = v59;
  (*(v59 + 16))(v58, a1, v33);
  type metadata accessor for CurrentValueAsyncStreamPublisher();
  WitnessTable = swift_getWitnessTable();
  v41 = (*(v36 + 80) + 48) & ~*(v36 + 80);
  v42 = (v52 + *(v38 + 80) + v41) & ~*(v38 + 80);
  v43 = swift_allocObject();
  v44 = v54;
  *(v43 + 2) = v54;
  *(v43 + 3) = WitnessTable;
  *(v43 + 4) = v32;
  *(v43 + 5) = v44;
  (*(v36 + 32))(&v43[v41], v60, v37);
  (*(v38 + 32))(&v43[v42], v39, v62);
  swift_retain_n();
  v45 = sub_24B7C7B14(0, 0, v61, &unk_24B7DD468, v43);
  v46 = swift_allocObject();
  *(v46 + 16) = v32;
  *(v46 + 24) = v45;
  return sub_24B7DACC8();
}

uint64_t sub_24B7C9690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = *(*a4 + 80);
  v6[5] = v7;
  v8 = sub_24B7DACB8();
  v6[6] = v8;
  v9 = *(v8 - 8);
  v6[7] = v9;
  v10 = *(v9 + 64) + 15;
  v6[8] = swift_task_alloc();
  v11 = *(v7 - 8);
  v6[9] = v11;
  v12 = *(v11 + 64) + 15;
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();
  v13 = *(*(sub_24B7DAE58() - 8) + 64) + 15;
  v6[12] = swift_task_alloc();
  v14 = sub_24B7DAD58();
  v6[13] = v14;
  v15 = *(v14 - 8);
  v6[14] = v15;
  v16 = *(v15 + 64) + 15;
  v6[15] = swift_task_alloc();
  v17 = sub_24B7DAD48();
  v6[16] = v17;
  v18 = *(v17 - 8);
  v6[17] = v18;
  v19 = *(v18 + 64) + 15;
  v6[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B7C98CC);
}

uint64_t sub_24B7C9904()
{
  v1 = v0[19];
  v2 = v0[15];
  v3 = v0[2];
  AsyncStreamPublisher.makeStream(bufferingPolicy:)(v0[3]);

  return MEMORY[0x2822009F8](sub_24B7C9974);
}

uint64_t sub_24B7C9974()
{
  v1 = v0[18];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];
  v5 = v0[5];
  sub_24B7DAD28();
  (*(v3 + 8))(v2, v4);
  type metadata accessor for CurrentValueAsyncStreamPublisher();
  WitnessTable = swift_getWitnessTable();
  v0[20] = WitnessTable;
  v0[21] = 0;
  v7 = v0[2];
  v8 = *(MEMORY[0x277D85798] + 4);
  v9 = swift_task_alloc();
  v0[22] = v9;
  *v9 = v0;
  v9[1] = sub_24B7C9A88;
  v10 = v0[18];
  v11 = v0[16];
  v12 = v0[12];

  return MEMORY[0x2822003E8](v12, v7, WitnessTable, v11);
}

uint64_t sub_24B7C9A88()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24B7C9B98);
}

uint64_t sub_24B7C9B98()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[5];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v4 = v0[15];
    v6 = v0[10];
    v5 = v0[11];
    v7 = v0[8];
    (*(v0[17] + 8))(v0[18], v0[16]);

    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = v0[21];
    (*(v2 + 32))(v0[11], v1, v3);
    sub_24B7DAD88();
    if (v10)
    {
      v12 = v0[4];
      v11 = v0[5];
      sub_24B7DAD18();
      sub_24B7DAD08();
    }

    else
    {
      v13 = v0[8];
      v14 = v0[6];
      v15 = v0[7];
      v16 = v0[4];
      (*(v0[9] + 16))(v0[10], v0[11], v0[5]);
      sub_24B7DAD18();
      sub_24B7DACF8();
      (*(v15 + 8))(v13, v14);
    }

    (*(v0[9] + 8))(v0[11], v0[5]);
    v0[21] = 0;
    v17 = v0[20];
    v18 = v0[2];
    v19 = *(MEMORY[0x277D85798] + 4);
    v20 = swift_task_alloc();
    v0[22] = v20;
    *v20 = v0;
    v20[1] = sub_24B7C9A88;
    v21 = v0[18];
    v22 = v0[16];
    v23 = v0[12];

    return MEMORY[0x2822003E8](v23, v18, v17, v22);
  }
}

uint64_t sub_24B7C9E24(uint64_t a1)
{
  v3 = v2;
  v5 = v1[4];
  v6 = *(sub_24B7DACD8() - 8);
  v7 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(sub_24B7DAD18() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = v1[2];
  v12 = v1[3];
  v13 = v1[5];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_24B7BB190;

  return sub_24B7C9690(a1, v11, v12, v13, v1 + v7, v1 + v10);
}

uint64_t sub_24B7C9FB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0597F8, &qword_24B7DCEA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B7CA024(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24B7BB190;

  return sub_24B7BB3BC(a1, v5);
}

uint64_t sub_24B7CA0F0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s16FitnessUtilities016DynamicPredicateC8TypeSizeO8rawValueACSgSi_tcfC_0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_24B7CA23C()
{
  v1 = *v0;
  sub_24B7DB0F8();
  MEMORY[0x24C24AAF0](v1 + 1);
  return sub_24B7DB128();
}

uint64_t sub_24B7CA2B4()
{
  v1 = *v0;
  sub_24B7DB0F8();
  MEMORY[0x24C24AAF0](v1 + 1);
  return sub_24B7DB128();
}

uint64_t _s16FitnessUtilities016DynamicPredicateC8TypeSizeO8rawValueACSgSi_tcfC_0(uint64_t a1)
{
  if ((a1 - 1) >= 0xD)
  {
    return 13;
  }

  else
  {
    return a1 - 1;
  }
}

unint64_t sub_24B7CA30C()
{
  result = qword_27F0598A0;
  if (!qword_27F0598A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0598A0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DynamicPredicateDynamicTypeSize(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DynamicPredicateDynamicTypeSize(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24B7CA4B0()
{
  result = qword_27F0598A8;
  if (!qword_27F0598A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0598A8);
  }

  return result;
}

uint64_t PortableEnum.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v24 = a3;
  v25 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v22 - v9;
  v23 = sub_24B7DAE58();
  v11 = *(v23 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v23);
  v15 = &v22 - v14;
  v16 = *(a2 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a1, AssociatedTypeWitness);
  sub_24B7DAB68();
  if ((*(v16 + 48))(v15, 1, a2) == 1)
  {
    (*(v11 + 8))(v15, v23);
    (*(v7 + 32))(v25, a1, AssociatedTypeWitness);
  }

  else
  {
    (*(v7 + 8))(a1, AssociatedTypeWitness);
    v20 = *(v16 + 32);
    v20(v19, v15, a2);
    v20(v25, v19, a2);
  }

  type metadata accessor for PortableEnum();
  return swift_storeEnumTagMultiPayload();
}

{
  v27 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_24B7DAE58();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v26 - v12;
  v14 = *(AssociatedTypeWitness - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v11);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v26 - v19;
  (*(v9 + 16))(v13, a1, v8);
  if ((*(v14 + 48))(v13, 1, AssociatedTypeWitness) == 1)
  {
    v21 = *(v9 + 8);
    v21(a1, v8);
    v21(v13, v8);
    v22 = 1;
    v23 = v27;
  }

  else
  {
    (*(v14 + 32))(v20, v13, AssociatedTypeWitness);
    (*(v14 + 16))(v18, v20, AssociatedTypeWitness);
    v23 = v27;
    PortableEnum.init(rawValue:)(v18, a2, a3, v27);
    (*(v9 + 8))(a1, v8);
    (*(v14 + 8))(v20, AssociatedTypeWitness);
    v22 = 0;
  }

  v24 = type metadata accessor for PortableEnum();
  return (*(*(v24 - 8) + 56))(v23, v22, 1, v24);
}

uint64_t PortableEnum.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 32))(a3, a1, a2);
  type metadata accessor for PortableEnum();

  return swift_storeEnumTagMultiPayload();
}

uint64_t PortableEnum.rawValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v5 + 32))(v9, v12, v4);
    v14 = *(a1 + 24);
    sub_24B7DAB58();
    return (*(v5 + 8))(v9, v4);
  }

  else
  {
    v16 = *(a1 + 24);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    return (*(*(AssociatedTypeWitness - 8) + 32))(a2, v12, AssociatedTypeWitness);
  }
}

uint64_t PortableEnum.unwrapped.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = *(a1 + 16);
  v10 = *(v9 - 8);
  v11 = v10;
  if (EnumCaseMultiPayload == 1)
  {
    v12 = *(a1 + 16);
    (*(v10 + 32))(a2, v7, v9);
    return (*(v11 + 56))(a2, 0, 1, v12);
  }

  else
  {
    (*(v10 + 56))(a2, 1, 1);
    return (*(v4 + 8))(v7, a1);
  }
}

uint64_t static PortableEnum.?? infix(_:_:)@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for PortableEnum();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v14 - v11;
  (*(v9 + 16))(v14 - v11, a1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return (*(*(a3 - 8) + 32))(a4, v12, a3);
  }

  a2();
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_24B7CB01C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_24B7DB088() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E776F6E6BLL && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_24B7DB088();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_24B7CB0E4(char a1)
{
  if (a1)
  {
    return 0x6E776F6E6BLL;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_24B7CB118(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_24B7DB088();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

BOOL sub_24B7CB188(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return sub_24B7BEE90(*a1, *a2);
}

uint64_t sub_24B7CB19C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_24B7BEEC8(*v1);
}

uint64_t sub_24B7CB1AC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  return sub_24B7BEEA0(a1, *v2);
}

uint64_t sub_24B7CB1BC(uint64_t a1, uint64_t a2)
{
  sub_24B7DB0F8();
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  sub_24B7BEEA0(v7, *v2);
  return sub_24B7DB128();
}

uint64_t sub_24B7CB204(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_24B7CB0E4(*v1);
}

uint64_t sub_24B7CB214@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_24B7CB01C(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_24B7CB244@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  result = sub_24B7BFFF8();
  *a2 = result;
  return result;
}

uint64_t sub_24B7CB270(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_24B7CB2C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_24B7CB318@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  result = sub_24B7BF180();
  *a2 = result & 1;
  return result;
}

uint64_t sub_24B7CB348(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_24B7CB39C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_24B7CB3F0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_24B7CB444(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t static PortableEnum<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PortableEnum();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v16 - v12;
  (*(v10 + 16))(&v16 - v12, a1, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v5 + 32))(v8, v13, a3);
    v14 = sub_24B7DAA78();
    (*(v5 + 8))(v8, a3);
  }

  else
  {
    (*(v10 + 8))(v13, v9);
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t static PortableEnum<>.~= infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PortableEnum();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v16 - v12;
  (*(v10 + 16))(&v16 - v12, a2, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v5 + 32))(v8, v13, a3);
    v14 = sub_24B7DAA78();
    (*(v5 + 8))(v8, a3);
  }

  else
  {
    (*(v10 + 8))(v13, v9);
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t Set.contains<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = type metadata accessor for PortableEnum();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v17 - v13;
  (*(*(a3 - 8) + 16))(v17 - v13, a1, a3);
  swift_storeEnumTagMultiPayload();
  v17[0] = a4;
  v17[1] = a6;
  swift_getWitnessTable();
  v15 = sub_24B7DADB8();
  (*(v11 + 8))(v14, v10);
  return v15 & 1;
}

uint64_t PortableEnum<>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v25[0] = a3;
  v25[1] = a4;
  v7 = *(a2 + 24);
  v8 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = v25 - v13;
  v15 = *(v8 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v12);
  v19 = v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v22 = v25 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v22, v5, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v15 + 32))(v19, v22, v8);
    sub_24B7DAA38();
    return (*(v15 + 8))(v19, v8);
  }

  else
  {
    (*(v10 + 32))(v14, v22, AssociatedTypeWitness);
    sub_24B7DAA38();
    return (*(v10 + 8))(v14, AssociatedTypeWitness);
  }
}

uint64_t PortableEnum<>.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_24B7DB0F8();
  PortableEnum<>.hash(into:)(v7, a1, a2, a3);
  return sub_24B7DB128();
}

uint64_t sub_24B7CBCC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 16);
  v4 = *(a3 - 8);
  sub_24B7DB0F8();
  PortableEnum<>.hash(into:)(v7, a2, v4, v5);
  return sub_24B7DB128();
}

uint64_t PortableEnum<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v61 = a4;
  v62 = a6;
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v63 = a2;
  v57 = type metadata accessor for PortableEnum.KnownCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v10 = sub_24B7DB058();
  v59 = *(v10 - 8);
  v60 = v10;
  v11 = *(v59 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v56 = &v44 - v13;
  v58 = *(v7 - 8);
  v14 = *(v58 + 64);
  MEMORY[0x28223BE20](v12);
  v54 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PortableEnum.UnknownCodingKeys();
  v17 = swift_getWitnessTable();
  v50 = v16;
  v46 = v17;
  v18 = sub_24B7DB058();
  v51 = *(v18 - 8);
  v52 = v18;
  v19 = *(v51 + 64);
  MEMORY[0x28223BE20](v18);
  v48 = &v44 - v20;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v47 = *(AssociatedTypeWitness - 8);
  v21 = *(v47 + 64);
  v22 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v45 = &v44 - v23;
  v24 = *(a2 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  v27 = &v44 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v7;
  type metadata accessor for PortableEnum.CodingKeys();
  swift_getWitnessTable();
  v28 = sub_24B7DB058();
  v64 = *(v28 - 8);
  v29 = *(v64 + 64);
  MEMORY[0x28223BE20](v28);
  v31 = &v44 - v30;
  v32 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B7DB158();
  (*(v24 + 16))(v27, v65, v63);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v33 = v58;
    v35 = v53;
    v34 = v54;
    (*(v58 + 32))(v54, v27, v53);
    v67 = 1;
    v36 = v56;
    sub_24B7DAFE8();
    v37 = v60;
    sub_24B7DB048();
    (*(v59 + 8))(v36, v37);
    (*(v33 + 8))(v34, v35);
  }

  else
  {
    v38 = v47;
    v39 = v45;
    v40 = AssociatedTypeWitness;
    (*(v47 + 32))(v45, v27, AssociatedTypeWitness);
    v66 = 0;
    v41 = v48;
    sub_24B7DAFE8();
    v42 = v52;
    sub_24B7DB048();
    (*(v51 + 8))(v41, v42);
    (*(v38 + 8))(v39, v40);
  }

  return (*(v64 + 8))(v31, v28);
}

uint64_t PortableEnum<>.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, char *a6@<X8>)
{
  v68 = a5;
  v66 = a3;
  v61 = a6;
  v9 = type metadata accessor for PortableEnum.KnownCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v73 = v9;
  v65 = sub_24B7DAFD8();
  v64 = *(v65 - 8);
  v10 = *(v64 + 64);
  MEMORY[0x28223BE20](v65);
  v74 = &v56 - v11;
  v12 = type metadata accessor for PortableEnum.UnknownCodingKeys();
  v69 = swift_getWitnessTable();
  v70 = v12;
  v63 = sub_24B7DAFD8();
  v62 = *(v63 - 8);
  v13 = *(v62 + 64);
  MEMORY[0x28223BE20](v63);
  v71 = &v56 - v14;
  type metadata accessor for PortableEnum.CodingKeys();
  swift_getWitnessTable();
  v78 = sub_24B7DAFD8();
  v76 = *(v78 - 8);
  v15 = *(v76 + 64);
  MEMORY[0x28223BE20](v78);
  v17 = &v56 - v16;
  v79 = a2;
  v67 = a4;
  v18 = type metadata accessor for PortableEnum();
  v75 = *(v18 - 8);
  v19 = *(v75 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v56 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v56 - v26;
  v28 = a1;
  v29 = a1[3];
  v30 = v28[4];
  v85 = v28;
  __swift_project_boxed_opaque_existential_1(v28, v29);
  v77 = v17;
  v31 = v80;
  sub_24B7DB148();
  if (!v31)
  {
    v58 = v22;
    v59 = v25;
    v57 = v27;
    v80 = v18;
    v32 = v76;
    v60 = 0;
    v34 = v77;
    v33 = v78;
    *&v81 = sub_24B7DAFC8();
    sub_24B7DAC48();
    swift_getWitnessTable();
    *&v83 = sub_24B7DAEA8();
    *(&v83 + 1) = v35;
    *&v84 = v36;
    *(&v84 + 1) = v37;
    sub_24B7DAE98();
    swift_getWitnessTable();
    sub_24B7DADF8();
    v38 = v81;
    if (v81 == 2 || (v56 = v83, v81 = v83, v82 = v84, (sub_24B7DAE08() & 1) == 0))
    {
      v44 = sub_24B7DAEE8();
      swift_allocError();
      v46 = v45;
      v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F059630, &qword_24B7DBDD0) + 48);
      *v46 = v80;
      sub_24B7DAF58();
      sub_24B7DAED8();
      (*(*(v44 - 8) + 104))(v46, *MEMORY[0x277D84160], v44);
      swift_willThrow();
      (*(v32 + 8))(v34, v33);
    }

    else
    {
      if (v38)
      {
        LOBYTE(v81) = 1;
        v39 = v74;
        v40 = v60;
        sub_24B7DAF48();
        v41 = v75;
        if (!v40)
        {
          v42 = v58;
          v43 = v65;
          sub_24B7DAFB8();
          (*(v64 + 8))(v39, v43);
          (*(v32 + 8))(v34, v33);
          swift_unknownObjectRelease();
          v52 = v80;
LABEL_13:
          swift_storeEnumTagMultiPayload();
          v53 = v61;
          v54 = *(v41 + 32);
          v55 = v57;
          v54(v57, v42, v52);
          v54(v53, v55, v52);
          return __swift_destroy_boxed_opaque_existential_1(v85);
        }
      }

      else
      {
        LOBYTE(v81) = 0;
        v48 = v71;
        v49 = v60;
        sub_24B7DAF48();
        v41 = v75;
        if (!v49)
        {
          swift_getAssociatedTypeWitness();
          v42 = v59;
          v50 = v63;
          sub_24B7DAFB8();
          (*(v62 + 8))(v48, v50);
          (*(v32 + 8))(v34, v33);
          swift_unknownObjectRelease();
          v52 = v80;
          goto LABEL_13;
        }
      }

      (*(v32 + 8))(v34, v33);
    }

    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v85);
}

uint64_t static PortableEnum<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v38 = a4;
  v39 = a6;
  v44 = a1;
  v45 = a2;
  v43 = *(a3 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](a1);
  v37 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v41 = *(AssociatedTypeWitness - 8);
  v42 = AssociatedTypeWitness;
  v10 = *(v41 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v36 = &v36 - v11;
  v12 = type metadata accessor for PortableEnum();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v36 - v18;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v40 = *(TupleTypeMetadata2 - 8);
  v21 = *(v40 + 64);
  v22 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v24 = &v36 - v23;
  v25 = *(v22 + 48);
  v26 = *(v13 + 16);
  v26(&v36 - v23, v44, v12);
  v26(&v24[v25], v45, v12);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v26(v19, v24, v12);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v32 = v41;
      v31 = v42;
      v33 = v36;
      (*(v41 + 32))(v36, &v24[v25], v42);
      v29 = sub_24B7DAA78();
      v34 = *(v32 + 8);
      v34(v33, v31);
      v34(v19, v31);
      goto LABEL_9;
    }

    (*(v41 + 8))(v19, v42);
    goto LABEL_7;
  }

  v26(v17, v24, v12);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v43 + 8))(v17, a3);
LABEL_7:
    v29 = 0;
    v13 = v40;
    v12 = TupleTypeMetadata2;
    goto LABEL_9;
  }

  v27 = v43;
  v28 = v37;
  (*(v43 + 32))(v37, &v24[v25], a3);
  v29 = sub_24B7DAA78();
  v30 = *(v27 + 8);
  v30(v28, a3);
  v30(v17, a3);
LABEL_9:
  (*(v13 + 8))(v24, v12);
  return v29 & 1;
}

uint64_t sub_24B7CCFB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 8);
  v5 = *(*(a3 - 16) + 8);
  return swift_getWitnessTable();
}

uint64_t sub_24B7CD018(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  v7 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v8 = *(*(v6 - 8) + 64);
  if (v8 <= v7)
  {
    v8 = v7;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v9 = v8 + 1;
  v10 = 8 * (v8 + 1);
  if ((v8 + 1) <= 3)
  {
    v13 = ((a2 + ~(-1 << v10) - 254) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v13 < 2)
    {
LABEL_25:
      v15 = *(a1 + v8);
      if (v15 >= 2)
      {
        return (v15 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_25;
  }

LABEL_14:
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

  return (v9 | v14) + 255;
}

void sub_24B7CD184(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  v9 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (*(*(v8 - 8) + 64) > v9)
  {
    v9 = *(*(v8 - 8) + 64);
  }

  v10 = v9 + 1;
  if (a3 < 0xFF)
  {
    v11 = 0;
  }

  else if (v10 <= 3)
  {
    v14 = ((a3 + ~(-1 << (8 * v10)) - 254) >> (8 * v10)) + 1;
    if (HIWORD(v14))
    {
      v11 = 4;
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
        v11 = v15;
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 1;
  }

  if (a2 > 0xFE)
  {
    v12 = a2 - 255;
    if (v10 >= 4)
    {
      bzero(a1, v9 + 1);
      *a1 = v12;
      v13 = 1;
      if (v11 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v13 = (v12 >> (8 * v10)) + 1;
    if (v9 != -1)
    {
      v16 = v12 & ~(-1 << (8 * v10));
      bzero(a1, v10);
      if (v10 != 3)
      {
        if (v10 == 2)
        {
          *a1 = v16;
          if (v11 > 1)
          {
LABEL_39:
            if (v11 == 2)
            {
              *&a1[v10] = v13;
            }

            else
            {
              *&a1[v10] = v13;
            }

            return;
          }
        }

        else
        {
          *a1 = v12;
          if (v11 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v11)
        {
          a1[v10] = v13;
        }

        return;
      }

      *a1 = v16;
      a1[2] = BYTE2(v16);
    }

    if (v11 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v11 <= 1)
  {
    if (v11)
    {
      a1[v10] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v9] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v11 == 2)
  {
    *&a1[v10] = 0;
    goto LABEL_24;
  }

  *&a1[v10] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t GatedResource.FetchError.hashValue.getter()
{
  v1 = *v0;
  sub_24B7DB0F8();
  MEMORY[0x24C24AAF0](v1);
  return sub_24B7DB128();
}

uint64_t sub_24B7CD508()
{
  sub_24B7DB0F8();
  GatedResource.FetchError.hash(into:)();
  return sub_24B7DB128();
}

uint64_t sub_24B7CD544@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  swift_beginAccess();
  v5 = *(v3 + 80);
  v6 = type metadata accessor for GatedResource.State();
  return (*(*(v6 - 8) + 16))(a1, v1 + v4, v6);
}

uint64_t sub_24B7CD5F0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  swift_beginAccess();
  v5 = *(v3 + 80);
  v6 = type metadata accessor for GatedResource.State();
  (*(*(v6 - 8) + 40))(v1 + v4, a1, v6);
  return swift_endAccess();
}

uint64_t GatedResource.__allocating_init(ttl:fetchHandler:)(uint64_t a1, uint64_t a2, double a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  GatedResource.init(ttl:fetchHandler:)(a1, a2, a3);
  return v9;
}

uint64_t *GatedResource.init(ttl:fetchHandler:)(uint64_t a1, uint64_t a2, double a3)
{
  v7 = *v3;
  swift_defaultActor_initialize();
  v8 = *(*v3 + 96);
  v9 = *(v7 + 80);
  type metadata accessor for GatedResource.State();
  swift_storeEnumTagMultiPayload();
  *(v3 + *(*v3 + 104)) = a3;
  v10 = (v3 + *(*v3 + 112));
  *v10 = a1;
  v10[1] = a2;
  return v3;
}

uint64_t sub_24B7CD7E0()
{
  v1 = *(*v0 + 80);
  v2 = type metadata accessor for GatedResource.State();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - v4;
  sub_24B7CD544(&v15 - v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27F0598B0, &unk_24B7DDAF0);
      v8 = sub_24B7DB138();
      sub_24B7DAC88();
      sub_24B7DAC48();
      v9 = *&v5[*(swift_getTupleTypeMetadata2() + 48)];
      (*(*(v8 - 8) + 8))(v5, v8);
      goto LABEL_6;
    }

    return 0;
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v7 = *v5;
LABEL_6:
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27F0598B0, &unk_24B7DDAF0);
      sub_24B7DAC88();
      v10 = sub_24B7DAC28();

      return v10;
    }

    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27F0598B0, &unk_24B7DDAF0);
    v12 = sub_24B7DB138();
    v13 = sub_24B7DA9A8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    (*(*(v13 - 8) + 8))(&v5[*(TupleTypeMetadata2 + 48)], v13);
    (*(*(v12 - 8) + 8))(v5, v12);
    return 0;
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

uint64_t sub_24B7CDAB0()
{
  v1 = *(*v0 + 80);
  v2 = type metadata accessor for GatedResource.State();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v16 - v7;
  sub_24B7CD544(v16 - v7);
  result = swift_getEnumCaseMultiPayload();
  if (result > 1)
  {
    if (result != 2)
    {
      return result;
    }

    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27F0598B0, &unk_24B7DDAF0);
    v11 = sub_24B7DB138();
    sub_24B7DAC88();
    sub_24B7DAC48();
    v10 = *&v8[*(swift_getTupleTypeMetadata2() + 48)];
    (*(*(v11 - 8) + 8))(v8, v11);
    goto LABEL_6;
  }

  if (!result)
  {
    v10 = *v8;
LABEL_6:
    swift_storeEnumTagMultiPayload();
    v12 = sub_24B7CD5F0(v6);
    v16[1] = v10;
    MEMORY[0x28223BE20](v12);
    v16[-2] = v1;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27F0598B0, &unk_24B7DDAF0);
    sub_24B7DAC88();
    sub_24B7DAC48();
    swift_getWitnessTable();
    sub_24B7DAB48();
  }

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27F0598B0, &unk_24B7DDAF0);
  v13 = sub_24B7DB138();
  v14 = sub_24B7DA9A8();
  v15 = *(swift_getTupleTypeMetadata2() + 48);
  swift_storeEnumTagMultiPayload();
  sub_24B7CD5F0(v6);
  (*(*(v14 - 8) + 8))(&v8[v15], v14);
  return (*(*(v13 - 8) + 8))(v8, v13);
}

uint64_t sub_24B7CDDF8()
{
  type metadata accessor for GatedResource.FetchError();
  swift_getWitnessTable();
  swift_allocError();
  *v0 = 0;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27F0598B0, &unk_24B7DDAF0);
  sub_24B7DAC88();
  return sub_24B7DAC68();
}

uint64_t sub_24B7CDED0@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v2 = *(*v1 + 80);
  v3 = type metadata accessor for GatedResource.State();
  v23 = *(v3 - 8);
  v4 = *(v23 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - v5;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27F0598B0, &unk_24B7DDAF0);
  v7 = sub_24B7DB138();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v23 - v13;
  sub_24B7CD544(v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      type metadata accessor for GatedResource.FetchError();
      swift_getWitnessTable();
      swift_allocError();
      v17 = 1;
      goto LABEL_10;
    }

    sub_24B7DAC88();
    sub_24B7DAC48();
    v18 = *&v6[*(swift_getTupleTypeMetadata2() + 48)];

    v19 = *(v8 + 32);
    v19(v14, v6, v7);
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      (*(v23 + 8))(v6, v3);
      type metadata accessor for GatedResource.FetchError();
      swift_getWitnessTable();
      swift_allocError();
      v17 = 2;
LABEL_10:
      *v16 = v17;
      return swift_willThrow();
    }

    v20 = sub_24B7DA9A8();
    v23 = *(swift_getTupleTypeMetadata2() + 48);
    v19 = *(v8 + 32);
    v19(v14, v6, v7);
    (*(*(v20 - 8) + 8))(&v6[v23], v20);
  }

  v19(v12, v14, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = *v12;
    return swift_willThrow();
  }

  return (*(*(v2 - 8) + 32))(v24, v12, v2);
}

uint64_t sub_24B7CE2CC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return MEMORY[0x2822009F8](sub_24B7CE314);
}

uint64_t sub_24B7CE314()
{
  v1 = v0[3];
  v2 = *(v0[4] + 80);
  type metadata accessor for GatedResource();
  WitnessTable = swift_getWitnessTable();
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_24B7CE41C;
  v6 = v0[2];
  v7 = v0[3];

  return MEMORY[0x2822008A0](v6, v1, WitnessTable, 0x29286863746566, 0xE700000000000000, sub_24B7CEFFC, v7, v2);
}

uint64_t sub_24B7CE41C()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  v3[6] = v0;

  if (v0)
  {
    v4 = v3[3];

    return MEMORY[0x2822009F8](sub_24B7CE550);
  }

  else
  {
    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_24B7CE580(uint64_t a1, uint64_t a2)
{
  v95 = a1;
  v3 = *(*a2 + 80);
  v88 = *(v3 - 8);
  v4 = *(v88 + 64);
  v5 = MEMORY[0x28223BE20](a1);
  v86 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v87 = &v84 - v7;
  v8 = sub_24B7DA9A8();
  v91 = *(v8 - 8);
  v9 = *(v91 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v84 - v14;
  MEMORY[0x28223BE20](v13);
  v89 = &v84 - v16;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27F0598B0, &unk_24B7DDAF0);
  v94 = sub_24B7DB138();
  v92 = *(v94 - 8);
  v17 = *(v92 + 64);
  v18 = MEMORY[0x28223BE20](v94);
  v20 = (&v84 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = MEMORY[0x28223BE20](v18);
  v90 = &v84 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v84 - v23;
  v96 = type metadata accessor for GatedResource.State();
  v25 = *(*(v96 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v96);
  v93 = (&v84 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v26);
  v29 = (&v84 - v28);
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B7CD544(v29);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v40 = sub_24B7DAC88();
      sub_24B7DAC48();
      v41 = v94;
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v43 = *(v29 + *(TupleTypeMetadata2 + 48));
      v44 = v92;
      (*(v92 + 32))(v24, v29, v41);
      v45 = *(TupleTypeMetadata2 + 48);
      v46 = v93;
      (*(v44 + 16))(v93, v24, v41);
      sub_24B7DB068();
      v47 = *(v40 - 8);
      v48 = *(v47 + 72);
      v49 = *(v47 + 80);
      swift_allocObject();
      sub_24B7DABE8();
      (*(v47 + 16))(v50, v95, v40);
      sub_24B7DAC48();
      v51 = sub_24B7DABF8();

      *(v46 + v45) = v51;
      swift_storeEnumTagMultiPayload();
      sub_24B7CD5F0(v46);
      return (*(v44 + 8))(v24, v41);
    }

    else
    {
      v64 = sub_24B7DAC88();
      sub_24B7DB068();
      v65 = *(v64 - 8);
      v66 = *(v65 + 72);
      v67 = *(v65 + 80);
      swift_allocObject();
      v68 = sub_24B7DABE8();
      (*(v65 + 16))(v69, v95, v64);
      sub_24B7DAC48();
      v70 = v93;
      *v93 = v68;
      swift_storeEnumTagMultiPayload();
      sub_24B7CD5F0(v70);
      return sub_24B7CF690();
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v52 = v94;
    v53 = *(swift_getTupleTypeMetadata2() + 48);
    (*(v92 + 32))(v90, v29, v52);
    v54 = v91;
    v55 = v29 + v53;
    v56 = v89;
    (*(v91 + 32))(v89, v55, v8);
    v57 = *(a2 + *(*a2 + 104));
    sub_24B7DA978();
    sub_24B7DA998();
    LOBYTE(v53) = sub_24B7DA988();
    v59 = *(v54 + 8);
    v58 = v54 + 8;
    v60 = v12;
    v61 = v59;
    v59(v60, v8);
    v59(v15, v8);
    if (v53)
    {
      v62 = v92;
      v63 = v90;
      (*(v92 + 16))(v20, v90, v94);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v97 = *v20;
        sub_24B7DAC88();
        sub_24B7DAC68();
        v61(v89, v8);
      }

      else
      {
        v85 = v61;
        v83 = v87;
        v82 = v88;
        (*(v88 + 32))(v87, v20, v3);
        (*(v82 + 16))(v86, v83, v3);
        sub_24B7DAC88();
        sub_24B7DAC78();
        (*(v82 + 8))(v83, v3);
        v85(v89, v8);
      }

      return (*(v62 + 8))(v63, v94);
    }

    else
    {
      v71 = sub_24B7DAC88();
      sub_24B7DAC48();
      v72 = v94;
      v88 = *(swift_getTupleTypeMetadata2() + 48);
      v73 = v92;
      v74 = *(v92 + 16);
      v91 = v58;
      v85 = v61;
      v75 = v93;
      v76 = v90;
      v74(v93, v90, v72);
      sub_24B7DB068();
      v77 = *(v71 - 8);
      v78 = *(v77 + 72);
      v79 = *(v77 + 80);
      swift_allocObject();
      v80 = sub_24B7DABE8();
      (*(v77 + 16))(v81, v95, v71);
      sub_24B7DAC48();
      *(v75 + v88) = v80;
      swift_storeEnumTagMultiPayload();
      sub_24B7CD5F0(v75);
      sub_24B7CF690();
      v85(v56, v8);
      return (*(v73 + 8))(v76, v72);
    }
  }

  else
  {
    v31 = *v29;
    v32 = sub_24B7DAC88();
    sub_24B7DB068();
    v33 = *(v32 - 8);
    v34 = *(v33 + 72);
    v35 = *(v33 + 80);
    swift_allocObject();
    sub_24B7DABE8();
    (*(v33 + 16))(v36, v95, v32);
    sub_24B7DAC48();
    v37 = sub_24B7DABF8();

    v38 = v93;
    *v93 = v37;
    swift_storeEnumTagMultiPayload();
    return sub_24B7CD5F0(v38);
  }
}

uint64_t sub_24B7CF004(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = type metadata accessor for GatedResource.State();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v20 - v9;
  sub_24B7CD544(v20 - v9);
  result = swift_getEnumCaseMultiPayload();
  if (result > 1)
  {
    if (result != 2)
    {
      return result;
    }

    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27F0598B0, &unk_24B7DDAF0);
    v13 = sub_24B7DB138();
    sub_24B7DAC88();
    sub_24B7DAC48();
    v12 = *&v10[*(swift_getTupleTypeMetadata2() + 48)];
    (*(*(v13 - 8) + 8))(v10, v13);
    goto LABEL_6;
  }

  if (!result)
  {
    v12 = *v10;
LABEL_6:
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27F0598B0, &unk_24B7DDAF0);
    v14 = sub_24B7DB138();
    sub_24B7DA9A8();
    v15 = *(swift_getTupleTypeMetadata2() + 48);
    (*(*(v14 - 8) + 16))(v8, a1, v14);
    sub_24B7DA998();
    swift_storeEnumTagMultiPayload();
    v16 = sub_24B7CD5F0(v8);
    v20[1] = v12;
    MEMORY[0x28223BE20](v16);
    v20[-2] = v3;
    v20[-1] = a1;
    sub_24B7DAC88();
    sub_24B7DAC48();
    swift_getWitnessTable();
    sub_24B7DAB48();
  }

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27F0598B0, &unk_24B7DDAF0);
  v17 = sub_24B7DB138();
  v18 = sub_24B7DA9A8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  (*(*(v18 - 8) + 8))(&v10[*(TupleTypeMetadata2 + 48)], v18);
  return (*(*(v17 - 8) + 8))(v10, v17);
}

uint64_t sub_24B7CF3C4(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27F0598B0, &unk_24B7DDAF0);
  v3 = sub_24B7DAC88();
  return sub_24B7CF454(a2, v3);
}

uint64_t sub_24B7CF454(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 24);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v6);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 + 32);
  v17 = sub_24B7DB138();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v23 - v19;
  (*(v21 + 16))(&v23 - v19, a1, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v14, v20, v10);
    return sub_24B7DAC68();
  }

  else
  {
    (*(v4 + 32))(v8, v20, v3);
    return sub_24B7DAC78();
  }
}

uint64_t sub_24B7CF690()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0597F8, &qword_24B7DCEA0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v8 - v3;
  v5 = sub_24B7DACA8();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v0;

  sub_24B7C7B14(0, 0, v4, &unk_24B7DDC78, v6);
}

uint64_t sub_24B7CF798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = *(*a4 + 80);
  v4[3] = v5;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27F0598B0, &unk_24B7DDAF0);
  v6 = sub_24B7DB138();
  v4[4] = v6;
  v7 = *(v6 - 8);
  v4[5] = v7;
  v8 = *(v7 + 64) + 15;
  v4[6] = swift_task_alloc();
  v9 = *(v5 - 8);
  v4[7] = v9;
  v10 = *(v9 + 64) + 15;
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B7CF8E4);
}

uint64_t sub_24B7CF8E4()
{
  v1 = (v0[2] + *(*v0[2] + 112));
  v2 = v1[1];
  v7 = (*v1 + **v1);
  v3 = (*v1)[1];
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_24B7CF9F0;
  v5 = v0[8];

  return v7(v5);
}

uint64_t sub_24B7CF9F0()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_24B7CFCB8;
  }

  else
  {
    v3 = sub_24B7CFB04;
  }

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_24B7CFB04()
{
  v1 = v0[4];
  v2 = v0[2];
  (*(v0[7] + 16))(v0[6], v0[8], v0[3]);
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x2822009F8](sub_24B7CFBA0);
}

uint64_t sub_24B7CFBA0()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  sub_24B7CF004(v1);
  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_24B7CFC34);
}

uint64_t sub_24B7CFC34()
{
  (*(v0[7] + 8))(v0[8], v0[3]);
  v1 = v0[8];
  v2 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t sub_24B7CFCB8()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);
  **(v0 + 48) = v1;
  swift_storeEnumTagMultiPayload();
  v4 = v1;

  return MEMORY[0x2822009F8](sub_24B7CFD3C);
}

uint64_t sub_24B7CFD3C()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  sub_24B7CF004(v1);
  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_24B7CFDD0);
}

uint64_t sub_24B7CFDD0()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t GatedResource.deinit()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 80);
  v3 = type metadata accessor for GatedResource.State();
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  v4 = *(v0 + *(*v0 + 112) + 8);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t GatedResource.__deallocating_deinit()
{
  GatedResource.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_24B7CFF60(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = type metadata accessor for GatedResource.State();
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

uint64_t dispatch thunk of GatedResource.fetch()(uint64_t a1)
{
  v4 = *(*v1 + 176);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24B7BB190;

  return v8(a1);
}

uint64_t sub_24B7D0230(uint64_t a1)
{
  v1 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27F0598B0, &unk_24B7DDAF0);
  sub_24B7DAC88();
  result = sub_24B7DAC48();
  if (v3 <= 0x3F)
  {
    sub_24B7DB138();
    sub_24B7DA9A8();
    result = swift_getTupleTypeMetadata2();
    if (v4 <= 0x3F)
    {
      result = swift_getTupleTypeMetadata2();
      if (v5 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_24B7D0348(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  if (*(*(*(a3 + 16) - 8) + 64) <= 8uLL)
  {
    v5 = 8;
  }

  else
  {
    v5 = *(*(*(a3 + 16) - 8) + 64);
  }

  v6 = *(sub_24B7DA9A8() - 8);
  v7 = ((v5 + *(v6 + 80) + 1) & ~*(v6 + 80)) + *(v6 + 64);
  if (v7 <= (v5 & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v7 = (v5 & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  if (v7 <= 8)
  {
    v8 = 8;
  }

  else
  {
    v8 = v7;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_31;
  }

  v9 = v8 + 1;
  v10 = 8 * (v8 + 1);
  if ((v8 + 1) <= 3)
  {
    v13 = ((a2 + ~(-1 << v10) - 252) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v13 < 2)
    {
LABEL_31:
      v15 = *(a1 + v8);
      if (v15 >= 4)
      {
        return (v15 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_31;
  }

LABEL_20:
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

  return (v9 | v14) + 253;
}

void sub_24B7D04FC(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  if (*(*(*(a4 + 16) - 8) + 64) <= 8uLL)
  {
    v7 = 8;
  }

  else
  {
    v7 = *(*(*(a4 + 16) - 8) + 64);
  }

  v8 = *(sub_24B7DA9A8() - 8);
  v9 = ((v7 + *(v8 + 80) + 1) & ~*(v8 + 80)) + *(v8 + 64);
  if (v9 <= (v7 & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v9 = (v7 & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  if (v9 <= 8)
  {
    v9 = 8;
  }

  v10 = v9 + 1;
  if (a3 < 0xFD)
  {
    v11 = 0;
  }

  else if (v10 <= 3)
  {
    v14 = ((a3 + ~(-1 << (8 * v10)) - 252) >> (8 * v10)) + 1;
    if (HIWORD(v14))
    {
      v11 = 4;
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
        v11 = v15;
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 1;
  }

  if (a2 > 0xFC)
  {
    v12 = a2 - 253;
    if (v10 >= 4)
    {
      bzero(a1, v9 + 1);
      *a1 = v12;
      v13 = 1;
      if (v11 > 1)
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    }

    v13 = (v12 >> (8 * v10)) + 1;
    if (v9 != -1)
    {
      v16 = v12 & ~(-1 << (8 * v10));
      bzero(a1, v10);
      if (v10 != 3)
      {
        if (v10 == 2)
        {
          *a1 = v16;
          if (v11 > 1)
          {
LABEL_44:
            if (v11 == 2)
            {
              *&a1[v10] = v13;
            }

            else
            {
              *&a1[v10] = v13;
            }

            return;
          }
        }

        else
        {
          *a1 = v12;
          if (v11 > 1)
          {
            goto LABEL_44;
          }
        }

LABEL_41:
        if (v11)
        {
          a1[v10] = v13;
        }

        return;
      }

      *a1 = v16;
      a1[2] = BYTE2(v16);
    }

    if (v11 > 1)
    {
      goto LABEL_44;
    }

    goto LABEL_41;
  }

  if (v11 <= 1)
  {
    if (v11)
    {
      a1[v10] = 0;
      if (!a2)
      {
        return;
      }

LABEL_30:
      a1[v9] = -a2;
      return;
    }

LABEL_29:
    if (!a2)
    {
      return;
    }

    goto LABEL_30;
  }

  if (v11 == 2)
  {
    *&a1[v10] = 0;
    goto LABEL_29;
  }

  *&a1[v10] = 0;
  if (a2)
  {
    goto LABEL_30;
  }
}

uint64_t sub_24B7D0730(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24B7BB190;

  return sub_24B7CF798(a1, v4, v5, v6);
}

uint64_t DynamicPredicateEquatableValue.Stripped.hashValue.getter()
{
  v1 = *v0;
  sub_24B7DB0F8();
  MEMORY[0x24C24AAF0](v1);
  return sub_24B7DB128();
}

void DynamicPredicateEquatableValue.strippedCase.getter(char *a1@<X8>)
{
  v2 = *(v1 + 16);
  if (v2 > 3)
  {
    if (*(v1 + 16) > 5u)
    {
      if (v2 == 6)
      {
        v3 = 5;
      }

      else
      {
        v3 = 6;
      }

      *a1 = v3;
    }

    else if (v2 == 4)
    {
      *a1 = 0x604020100uLL >> (8 * *v1);
    }

    else
    {
      *a1 = 4;
    }
  }

  else
  {
    *a1 = v2;
  }
}

unint64_t sub_24B7D08D4()
{
  v1 = *v0;
  v2 = 0x5463696D616E7964;
  v3 = 0x676E69727473;
  if (v1 != 6)
  {
    v3 = 0xD000000000000011;
  }

  v4 = 0x6874615079656BLL;
  if (v1 != 4)
  {
    v4 = 0x6D726F6674616C70;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000013;
  if (v1 != 2)
  {
    v5 = 0x72656765746E69;
  }

  if (*v0)
  {
    v2 = 0x657A695364697267;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24B7D09E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B7D3DF4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B7D0A1C(uint64_t a1)
{
  v2 = sub_24B7D1778();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7D0A58(uint64_t a1)
{
  v2 = sub_24B7D1778();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B7D0A94(uint64_t a1)
{
  v2 = sub_24B7D1AC0();

  return MEMORY[0x2821FE718](a1, v2);
}