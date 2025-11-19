uint64_t sub_1E585D8BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  result = type metadata accessor for AsyncStateValue();
  if (v4 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1E585D94C(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_1E588BA34();
    swift_getTupleTypeMetadata2();
    if (v3 <= 0x3F)
    {
      sub_1E585D9F8();
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1E585D9F8()
{
  if (!qword_1EE2CD2B8)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EE2CD2B8);
    }
  }
}

uint64_t sub_1E585DA60()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t AsyncState.init(ttl:)@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v4 = type metadata accessor for AsyncStateValue();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - v6;
  swift_storeEnumTagMultiPayload();
  return AsyncState.init(value:ttl:)(v7, a1, a2);
}

uint64_t AsyncState.init(value:ttl:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = type metadata accessor for AsyncStateValue();
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  result = type metadata accessor for AsyncState();
  *(a2 + *(result + 36)) = a3;
  return result;
}

uint64_t AsyncKeyedState.init(ttl:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>, double a4@<D0>)
{
  v8 = type metadata accessor for AsyncState();
  swift_getTupleTypeMetadata2();
  v9 = sub_1E588BE04();
  v10 = sub_1E585F3C8(v9, a1, v8, a2);

  *(a3 + 8) = v10;
  *a3 = a4;
  return result;
}

uint64_t type metadata accessor for JournalMode()
{
  result = qword_1EE2CE0C0;
  if (!qword_1EE2CE0C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E585DCDC()
{
  sub_1E585DD50();
  if (v0 <= 0x3F)
  {
    sub_1E585E514();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1E585DD50()
{
  if (!qword_1EE2CE360)
  {
    sub_1E588B9A4();
    sub_1E585E4C8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE2CE360);
    }
  }
}

uint64_t sub_1E585DDC4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5876BB0;

  return sub_1E585DE7C(a1, v5);
}

uint64_t sub_1E585DE7C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E585E264;

  return v7(a1);
}

uint64_t sub_1E585DF98(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E58688C4;

  return sub_1E585E060(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1E585E060(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[7] = a4;
  v6[10] = *a4;
  return MEMORY[0x1EEE6DFA0](sub_1E585E0AC, 0, 0);
}

uint64_t sub_1E585E0AC()
{
  v1 = v0[7];
  v2 = v1[12];
  if (v2)
  {
    v3 = v0[9];
    v4 = v0[10];
    v5 = v0[8];
    v6 = v1[16];
    v7 = v1[15];
    v10 = v1 + 13;
    v8 = v1[13];
    v9 = v10[1];
    v0[2] = v2;
    v0[3] = v8;
    v0[4] = v9;
    v0[5] = v7;
    v0[6] = v6;
    v11 = swift_allocObject();
    v0[11] = v11;
    v11[2] = v4[10];
    v11[3] = v4[11];
    v11[4] = v4[12];
    v11[5] = v5;
    v11[6] = v3;

    v12 = swift_task_alloc();
    v0[12] = v12;
    v13 = type metadata accessor for JournalDatabasePlayer();
    *v12 = v0;
    v12[1] = sub_1E5879BD4;

    return sub_1E5878CB0(sub_1E587A3F0, v11, v13);
  }

  else
  {
    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_1E585E22C()
{
  v1 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1E585E264()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1E585E35C(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECFF9178, &qword_1E588D220);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v12 - v7;
  v9 = sub_1E588BEE4();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v2;
  v10[5] = a1;
  v10[6] = a2;

  sub_1E58807E0(0, 0, v8, &unk_1E588E8C0, v10);
}

uint64_t sub_1E585E480()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

unint64_t sub_1E585E4C8()
{
  result = qword_1EE2CD268;
  if (!qword_1EE2CD268)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE2CD268);
  }

  return result;
}

void sub_1E585E514()
{
  if (!qword_1EE2CE368)
  {
    v0 = sub_1E588B9A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2CE368);
    }
  }
}

double AsyncKeyedState.init()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  AsyncKeyedState.init(ttl:)(a1, a2, v6, 1.79769313e308);
  result = *v6;
  v5 = v6[1];
  *a3 = v6[0];
  a3[1] = v5;
  return result;
}

void *Store.__allocating_init(feature:initialLocalState:initialSharedState:journalMode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for JournalMode();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v5 + 80);
  v15 = *(v5 + 88);
  v16 = type metadata accessor for RootStore();
  sub_1E585E8CC(a4, v13);
  v17 = sub_1E585E930(a1, a2, a3, v13);
  WitnessTable = swift_getWitnessTable();
  swift_allocObject();
  v19 = sub_1E5861814(v17, v16, WitnessTable);

  sub_1E5860AF0(a4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a3, AssociatedTypeWitness);
  v21 = swift_getAssociatedTypeWitness();
  (*(*(v21 - 8) + 8))(a2, v21);
  (*(*(v14 - 8) + 8))(a1, v14);
  return v19;
}

uint64_t sub_1E585E7D0(uint64_t a1)
{
  result = sub_1E588BAA4();
  if (v3 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    v4 = *(a1 + 80);
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      v7 = *(result - 8) + 64;
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1E585E8CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JournalMode();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_1E585E930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  swift_allocObject();
  return sub_1E585E994(a1, a2, a3, a4);
}

void *sub_1E585E994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v79 = a4;
  v66 = a3;
  v68 = a2;
  v65 = a1;
  v84 = *MEMORY[0x1E69E9840];
  v63 = *v4;
  v6 = v63[10];
  v77 = v63[11];
  v80 = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v78 = sub_1E588BB44();
  WitnessTable = swift_getWitnessTable();
  v8 = sub_1E588BAE4();
  v9 = *(v8 - 8);
  v75 = v8;
  v76 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v73 = &v62 - v11;
  v12 = swift_getAssociatedTypeWitness();
  v13 = sub_1E588BB44();
  v70 = swift_getWitnessTable();
  v64 = v13;
  v14 = sub_1E588BAE4();
  v15 = *(v14 - 8);
  v71 = v14;
  v72 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v69 = &v62 - v17;
  v18 = type metadata accessor for JournalMode();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v67 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1E588BAA4();
  v21 = *(v62 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v62);
  v25 = &v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = AssociatedTypeWitness;
  v27 = *(AssociatedTypeWitness - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x1EEE9AC00](v23);
  v31 = &v62 - v30;
  v32 = *(v12 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v35 = &v62 - v34;
  (*(*(v80 - 8) + 16))(v4 + v63[14], v65);
  (*(v32 + 16))(v35, v66, v12);
  *(v4 + *(*v4 + 120)) = sub_1E588BB54();
  (*(v27 + 16))(v31, v68, v26);
  *(v4 + *(*v4 + 128)) = sub_1E588BB54();
  v36 = sub_1E588BB84();
  v37 = *(v36 + 48);
  v38 = *(v36 + 52);
  swift_allocObject();
  v4[2] = sub_1E588BB74();
  sub_1E588BA94();
  (*(v21 + 32))(v4 + qword_1EE2CF9F0, v25, v62);
  type metadata accessor for SideEffectRegistry();
  v39 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v39 + 112) = MEMORY[0x1E69E7CC8];
  *(v5 + *(*v5 + 136)) = v39;
  v68 = *(*v5 + 144);
  *(v5 + v68) = MEMORY[0x1E69E7CC0];
  v40 = v77;
  v41 = v80;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v42 = type metadata accessor for JournalDatabase();
  v43 = v67;
  sub_1E585E8CC(v79, v67);
  __tp.tv_sec = 0;
  __tp.tv_nsec = 0;
  clock_gettime(_CLOCK_MONOTONIC_RAW, &__tp);
  v44 = sub_1E585FBA8(v43, 1953460050, 0xE400000000000000, __tp.tv_nsec / 1000000000.0 + __tp.tv_sec);
  v45 = (v5 + *(*v5 + 152));
  v45[3] = v42;
  v45[4] = swift_getWitnessTable();
  *v45 = v44;
  __tp.tv_sec = *(v5 + *(*v5 + 120));
  v46 = v69;
  sub_1E588BB94();
  v47 = swift_allocObject();
  v48 = v5[2];
  swift_weakInit();
  v49 = swift_allocObject();
  v49[2] = v41;
  v49[3] = v40;
  v49[4] = v47;

  v50 = v71;
  swift_getWitnessTable();
  sub_1E588BBA4();

  (*(v72 + 8))(v46, v50);

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECFF9618, &qword_1E588ED40);
  sub_1E5860DA8();
  sub_1E588BAF4();
  swift_endAccess();

  __tp.tv_sec = *(v5 + *(*v5 + 128));
  v51 = v73;
  sub_1E588BB94();
  v52 = swift_allocObject();
  v53 = v5[2];
  swift_weakInit();
  v54 = swift_allocObject();
  v55 = v77;
  v54[2] = v80;
  v54[3] = v55;
  v54[4] = v52;

  v56 = v75;
  swift_getWitnessTable();
  sub_1E588BBA4();

  (*(v76 + 8))(v51, v56);

  swift_beginAccess();
  sub_1E588BAF4();
  swift_endAccess();

  sub_1E586D79C(v45, &__tp);
  v57 = v82;
  v58 = v83;
  __swift_project_boxed_opaque_existential_1(&__tp, v82);
  v59 = *(v58 + 64);

  v59(sub_1E5881C50, v5, v57, v58);

  sub_1E5860AF0(v79);
  __swift_destroy_boxed_opaque_existential_0(&__tp.tv_sec);
  v60 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t sub_1E585F344()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E585F37C()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1E585F3C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_1E588BE24())
  {
    sub_1E588C254();
    v13 = sub_1E588C244();
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC8];
  }

  result = sub_1E588BE24();
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
        if (sub_1E588BE14())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_1E588C144();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_1E5872ACC(v12, a2, v27);
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

uint64_t sub_1E585F6D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECFF9178, &qword_1E588D220);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1E585F814(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5876BB0;

  return sub_1E585F8CC(a1, v5);
}

uint64_t sub_1E585F8CC(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1E586149C;

  return v6(v2 + 32);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
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

unint64_t sub_1E585FA74()
{
  result = qword_1EE2CD270;
  if (!qword_1EE2CD270)
  {
    sub_1E588C074();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2CD270);
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

uint64_t sub_1E585FBA8(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = type metadata accessor for JournalMode();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E585E8CC(a1, v11);
  v12 = sub_1E585FE4C(v11);
  v14 = v13;
  v15 = sub_1E5860B4C(MEMORY[0x1E69E7CC0]);
  swift_allocObject();
  v16 = sub_1E5860C28(v12, v14, a2, a3, v15, a4, a4);
  sub_1E5860AF0(a1);
  return v16;
}

uint64_t sub_1E585FE4C(uint64_t a1)
{
  v98 = *MEMORY[0x1E69E9840];
  v89 = sub_1E588C044();
  v87 = *(v89 - 8);
  v2 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v89);
  v88 = &v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_1E588C074();
  v4 = *(*(v84 - 8) + 64);
  MEMORY[0x1EEE9AC00](v84);
  v86 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E588BBE4();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v85 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E588B934();
  v91 = *(v9 - 8);
  v10 = *(v91 + 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E588B9A4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v78 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v82 = &v78 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v92 = &v78 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v90 = &v78 - v26;
  v27 = type metadata accessor for JournalMode();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v78 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E585E8CC(a1, v30);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v81 = v14;
      v32 = *(v14 + 32);
      v83 = a1;
      v79 = v21;
      v80 = v13;
      v32(v21, v30, v13);
      strcpy(v95, "action.journal");
      HIBYTE(v95[1]) = -18;
      v33 = v91;
      (*(v91 + 13))(v12, *MEMORY[0x1E6968F68], v9);
      sub_1E5860A38();
      sub_1E588B994();
      (*(v33 + 8))(v12, v9);
      v92 = sub_1E588B984();
      v35 = v34;
      v36 = [objc_opt_self() sharedApplication];
      v37 = type metadata accessor for ApplicationBackgroundTaskProvider();
      swift_allocObject();
      v38 = sub_1E5884C90(v36);
      sub_1E585E4C8();
      v91 = v18;
      sub_1E588BBD4();
      v95[0] = MEMORY[0x1E69E7CC0];
      sub_1E585FA74();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF95F8, &qword_1E588E8F0);
      sub_1E5860A8C();
      sub_1E588C0D4();
      (*(v87 + 104))(v88, *MEMORY[0x1E69E8098], v89);
      v39 = sub_1E588C084();
      v96 = v37;
      v97 = &off_1F5F57D40;
      v95[0] = v38;
      type metadata accessor for Database();
      v40 = swift_allocObject();
      v41 = __swift_mutable_project_boxed_opaque_existential_1(v95, v37);
      v42 = *(*(v37 - 8) + 64);
      MEMORY[0x1EEE9AC00](v41);
      v44 = (&v78 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v45 + 16))(v44);
      v46 = sub_1E587B26C(v92, v35, 1, *v44, v39, v40);

      sub_1E5860AF0(v83);
      v47 = v80;
      v48 = *(v81 + 8);
      v48(v91, v80);
      v48(v79, v47);
      __swift_destroy_boxed_opaque_existential_0(v95);
      result = v46 | 0x4000000000000000;
    }

    else
    {
      sub_1E5860AF0(a1);
      result = 0x8000000000000000;
    }
  }

  else
  {
    v83 = a1;
    v79 = *&v30[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF9600, &qword_1E588E8F8) + 48)];
    v80 = v13;
    v81 = v14;
    (*(v14 + 32))(v90, v30, v13);
    v95[0] = 0;
    v95[1] = 0xE000000000000000;
    MEMORY[0x1E692F890](1598310736, 0xE400000000000000);
    v94 = getpid();
    v50 = sub_1E588C354();
    MEMORY[0x1E692F890](v50);

    MEMORY[0x1E692F890](95, 0xE100000000000000);
    sub_1E588BF34();
    v51 = v91;
    v52 = *(v91 + 13);
    v52(v12, *MEMORY[0x1E6968F70], v9);
    sub_1E5860A38();
    sub_1E588B994();
    v53 = *(v51 + 8);
    v53(v12, v9);

    strcpy(v95, "action.journal");
    HIBYTE(v95[1]) = -18;
    v52(v12, *MEMORY[0x1E6968F68], v9);
    v54 = v82;
    sub_1E588B994();
    v53(v12, v9);
    v55 = [objc_opt_self() defaultManager];
    v56 = sub_1E588B954();
    v95[0] = 0;
    v57 = [v55 createDirectoryAtURL:v56 withIntermediateDirectories:1 attributes:0 error:v95];

    if (v57)
    {
      v58 = v95[0];
      v91 = sub_1E588B984();
      v78 = v59;
      v60 = [objc_opt_self() sharedApplication];
      v61 = type metadata accessor for ApplicationBackgroundTaskProvider();
      swift_allocObject();
      v62 = sub_1E5884C90(v60);
      sub_1E585E4C8();
      sub_1E588BBD4();
      v95[0] = MEMORY[0x1E69E7CC0];
      sub_1E585FA74();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF95F8, &qword_1E588E8F0);
      sub_1E5860A8C();
      sub_1E588C0D4();
      (*(v87 + 104))(v88, *MEMORY[0x1E69E8098], v89);
      v63 = sub_1E588C084();
      v96 = v61;
      v97 = &off_1F5F57D40;
      v95[0] = v62;
      type metadata accessor for Database();
      v64 = swift_allocObject();
      v65 = __swift_mutable_project_boxed_opaque_existential_1(v95, v61);
      v66 = *(*(v61 - 8) + 64);
      MEMORY[0x1EEE9AC00](v65);
      v68 = (&v78 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v69 + 16))(v68);
      v70 = sub_1E587B26C(v91, v78, 1, *v68, v63, v64);

      sub_1E5860AF0(v83);
      v71 = v80;
      v72 = *(v81 + 8);
      v72(v54, v80);
      v72(v92, v71);
      v72(v90, v71);
      __swift_destroy_boxed_opaque_existential_0(v95);
      result = v70;
    }

    else
    {
      v73 = v95[0];
      v74 = sub_1E588B924();

      v93 = v74;
      swift_willThrow();

      sub_1E5860AF0(v83);
      v75 = v80;
      v76 = *(v81 + 8);
      v76(v54, v80);
      v76(v92, v75);
      result = (v76)(v90, v75);
    }
  }

  v77 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_1E5860A38()
{
  result = qword_1EE2CD2C0;
  if (!qword_1EE2CD2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2CD2C0);
  }

  return result;
}

unint64_t sub_1E5860A8C()
{
  result = qword_1EE2CD290;
  if (!qword_1EE2CD290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF95F8, &qword_1E588E8F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2CD290);
  }

  return result;
}

uint64_t sub_1E5860AF0(uint64_t a1)
{
  v2 = type metadata accessor for JournalMode();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E5860B4C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF95F0, &unk_1E588E8E0);
    v3 = sub_1E588C244();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1E587A4A8(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

uint64_t sub_1E5860C28(unint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  v10 = *v7;
  *(v7 + 40) = a1;
  *(v7 + 48) = a2;
  *(v7 + 32) = a6;
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;
  *(v7 + 136) = a5;
  if (a1 >> 62)
  {
    if (a1 >> 62 == 1)
    {
      v11 = a7 - a6;
      *(v7 + 88) = 0;
      *(v7 + 72) = 0u;
      *(v7 + 56) = 0u;
      v14 = v10;

      sub_1E587AE04(a1, a2);
      v15 = v14[10];
      v16 = v14[11];
      v17 = v14[12];
      sub_1E5878C3C(a1 & 0x3FFFFFFFFFFFFFFFLL, a3, a4, &v29, v11);
      v18 = v30;
      v19 = v31;
      *(v7 + 96) = v29;
      *(v7 + 112) = v18;
      *(v7 + 128) = v19;
    }

    else
    {
      *(v7 + 120) = 0u;
      *(v7 + 104) = 0u;
      *(v7 + 88) = 0u;
      *(v7 + 72) = 0u;
      *(v7 + 56) = 0u;
    }
  }

  else
  {
    v20 = v10[10];
    v21 = v10[11];
    v22 = v10[12];

    sub_1E5867620(v25, a3, a4, &v29, a6);
    v26 = v30;
    v27 = v31;
    *(v7 + 56) = v29;
    *(v7 + 72) = v26;
    *(v7 + 88) = v27;
    *(v7 + 96) = 0u;
    *(v7 + 112) = 0u;
    *(v7 + 128) = 0;
  }

  return v7;
}

unint64_t sub_1E5860DA8()
{
  result = qword_1EE2CD2B0;
  if (!qword_1EE2CD2B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1ECFF9618, &qword_1E588ED40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2CD2B0);
  }

  return result;
}

sqlite3 *sub_1E5860E18(void *a1, void *a2, char a3)
{
  v49 = a1;
  ppDb[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1E588B934();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E588B9A4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v47 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v47 - v20;
  ppDb[0] = 0;
  if (!a3)
  {
    v47 = v6;
    v48 = v19;
    v23 = [objc_opt_self() defaultManager];
    v50[0] = 0;
    v24 = [v23 URLForDirectory:9 inDomain:1 appropriateForURL:0 create:0 error:v50];

    v25 = v50[0];
    if (!v24)
    {
      v45 = v50[0];
      sub_1E588B924();

      goto LABEL_20;
    }

    sub_1E588B974();
    v26 = v25;

    v50[0] = v49;
    v50[1] = a2;
    v27 = v47;
    (*(v47 + 104))(v9, *MEMORY[0x1E6968F70], v5);
    sub_1E5860A38();
    sub_1E588B994();
    (*(v27 + 8))(v9, v5);
    sub_1E588B964();
    v28 = *(v11 + 8);
    v29 = v48;
    v28(v15, v48);
    v22 = sub_1E588B984();
    a2 = v30;
    v28(v18, v29);
    v28(v21, v29);
    goto LABEL_6;
  }

  if (a3 == 1)
  {
    v22 = v49;
    sub_1E5861394(v49, a2, 1u);
LABEL_6:

    goto LABEL_8;
  }

  a2 = 0xE800000000000000;
  v22 = 0x3A79726F6D656D3ALL;
LABEL_8:
  if (qword_1EE2CD5E8 != -1)
  {
    swift_once();
  }

  v31 = sub_1E588BAD4();
  __swift_project_value_buffer(v31, qword_1EE2CF9F8);

  v32 = sub_1E588BAB4();
  v33 = sub_1E588C024();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v50[0] = v35;
    *v34 = 136315138;
    v36 = sub_1E586163C(v22, a2, v50);

    *(v34 + 4) = v36;
    _os_log_impl(&dword_1E585C000, v32, v33, "Opening database connection: %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x1E6930700](v35, -1, -1);
    MEMORY[0x1E6930700](v34, -1, -1);
  }

  else
  {
  }

  v37 = sub_1E588BD84();

  v38 = sqlite3_open_v2((v37 + 32), ppDb, 65542, 0);

  if (v38)
  {
    if (sqlite3_errstr(v38))
    {
      v39 = sub_1E588BDB4();
      v41 = v40;
    }

    else
    {
      v41 = 0xE300000000000000;
      v39 = 4271950;
    }

    sub_1E5878530();
    swift_allocError();
    *v43 = v38;
    *(v43 + 8) = v39;
    *(v43 + 16) = v41;
    *(v43 + 24) = 0;
  }

  else
  {
    result = ppDb[0];
    if (ppDb[0])
    {
      goto LABEL_21;
    }

    sub_1E5878530();
    swift_allocError();
    *(v46 + 8) = 0;
    *(v46 + 16) = 0;
    *v46 = 0;
    *(v46 + 24) = 4;
  }

LABEL_20:
  result = swift_willThrow();
LABEL_21:
  v44 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1E5861394(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1E58613AC()
{
  v0 = sub_1E588BAD4();
  __swift_allocate_value_buffer(v0, qword_1EE2CF9F8);
  __swift_project_value_buffer(v0, qword_1EE2CF9F8);
  return sub_1E588BAC4();
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

uint64_t sub_1E586149C()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1E58615BC(void *a1)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

uint64_t sub_1E586163C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1E5861708(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
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
    sub_1E5861A1C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_1E5861708(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1E588901C(a5, a6);
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
    result = sub_1E588C174();
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

void *sub_1E5861814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v3[3] = a1;
  v3[4] = a3;
  v7 = sub_1E588BB84();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  swift_unknownObjectRetain();
  v3[2] = sub_1E588BB74();
  v3[5] = MEMORY[0x1E69E7CC0];
  (*(a3 + 48))(a2, a3);
  v10 = swift_allocObject();
  v11 = v4[2];
  swift_weakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1E5864D2C;
  *(v12 + 24) = v10;
  sub_1E588BBA4();

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECFF9618, &qword_1E588ED40);
  sub_1E5860DA8();
  sub_1E588BAF4();
  swift_endAccess();

  return v4;
}

uint64_t sub_1E58619AC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E58619E4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E5861A1C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1E5861A80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECFF9178, &qword_1E588D220);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5861B0C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1E5861B48(uint64_t a1, uint64_t a2, sqlite3 *a3)
{
  v4 = sub_1E588BD84();
  v5 = sqlite3_exec(a3, (v4 + 32), 0, 0, 0);

  if (v5)
  {
    if (sqlite3_errstr(v5))
    {
      v7 = sub_1E588BDB4();
      v9 = v8;
    }

    else
    {
      v9 = 0xE300000000000000;
      v7 = 4271950;
    }

    sub_1E5878530();
    swift_allocError();
    *v10 = v5;
    *(v10 + 8) = v7;
    *(v10 + 16) = v9;
    *(v10 + 24) = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1E5861C0C(char *a1)
{
  v2 = v1;
  v32 = a1;
  v3 = *v1;
  v4 = v3[13];
  v5 = v3[11];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = v29 - v9;
  v29[2] = v3[12];
  v29[1] = v3[10];
  v11 = swift_getAssociatedTypeWitness();
  v31 = *(v11 - 8);
  v12 = *(v31 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v29 - v16;
  v18 = &v2[v3[19]];
  v20 = *v18;
  v19 = *(v18 + 1);
  v21 = v3[22];
  swift_beginAccess();
  v22 = *(v7 + 16);
  v30 = v21;
  v22(v10, &v2[v21], AssociatedTypeWitness);
  v20(v10);
  v33 = v7;
  v34 = AssociatedTypeWitness;
  v23 = v10;
  v24 = v32;
  (*(v7 + 8))(v23, AssociatedTypeWitness);
  v20(v24);
  swift_getAssociatedConformanceWitness();
  if ((sub_1E588BD04() & 1) == 0)
  {
    v25 = *(v2 + 2);
    sub_1E588BB64();
  }

  v26 = *(v31 + 8);
  v26(v15, v11);
  v26(v17, v11);
  v27 = v30;
  swift_beginAccess();
  (*(v33 + 24))(&v2[v27], v24, v34);
  return swift_endAccess();
}

uint64_t sub_1E5861F38(uint64_t a1)
{
  v2 = v1;
  v85 = *MEMORY[0x1E69E9840];
  v69.isa = v1->isa;
  v4 = *(v69.isa + 11);
  v5 = *(v69.isa + 10);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v68 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v70 = &v62 - v10;
  v75 = swift_getAssociatedTypeWitness();
  v78 = *(v75 - 8);
  v11 = *(v78 + 64);
  v12 = MEMORY[0x1EEE9AC00](v75);
  v65 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v77 = &v62 - v14;
  v74 = v4;
  v71 = v5;
  v15 = swift_getAssociatedTypeWitness();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v62 - v21;
  __tp.tv_sec = 0;
  __tp.tv_nsec = 0;
  clock_gettime(_CLOCK_MONOTONIC_RAW, &__tp);
  tv_sec = __tp.tv_sec;
  tv_nsec = __tp.tv_nsec;
  if (qword_1EE2CD5E8 != -1)
  {
    swift_once();
  }

  v23 = sub_1E588BAD4();
  __swift_project_value_buffer(v23, qword_1EE2CF9F8);
  v24 = *(v16 + 16);
  v24(v22, a1, v15);
  v25 = sub_1E588BAB4();
  v64 = sub_1E588C004();
  v26 = os_log_type_enabled(v25, v64);
  v72 = v15;
  v73 = a1;
  v79 = v6;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    __tp.tv_sec = v63;
    *v27 = 136315394;
    v80[0] = v71;
    swift_getMetatypeMetadata();
    v28 = sub_1E588BD74();
    v30 = sub_1E586163C(v28, v29, &__tp.tv_sec);
    v62 = v25;
    v31 = v20;
    v32 = v30;
    v33 = v72;

    *(v27 + 4) = v32;
    *(v27 + 12) = 2080;
    v24(v31, v22, v33);
    v34 = sub_1E588BD74();
    v36 = v35;
    (*(v16 + 8))(v22, v33);
    v37 = sub_1E586163C(v34, v36, &__tp.tv_sec);

    *(v27 + 14) = v37;
    v38 = v62;
    _os_log_impl(&dword_1E585C000, v62, v64, "%s.%s", v27, 0x16u);
    v39 = v63;
    swift_arrayDestroy();
    MEMORY[0x1E6930700](v39, -1, -1);
    v40 = v27;
    a1 = v73;
    MEMORY[0x1E6930700](v40, -1, -1);
  }

  else
  {

    (*(v16 + 8))(v22, v15);
  }

  type metadata accessor for SideEffect();
  v81 = sub_1E588BC54();
  v41 = *(&v2->isa + *(v2->isa + 15));
  v42 = v77;
  sub_1E588BB34();
  v43 = *(&v2->isa + *(v2->isa + 16));
  v44 = v70;
  sub_1E588BB34();
  v45 = v2 + *(v2->isa + 14);
  (*(v74 + 64))(v44, v42, &v81, a1, v71, v74);
  v46 = v65;
  sub_1E588BB34();
  v47 = v75;
  swift_getAssociatedConformanceWitness();
  LOBYTE(v45) = sub_1E588BD04();
  v48 = *(v78 + 8);
  v78 += 8;
  v65 = v48;
  (v48)(v46, v47);
  if ((v45 & 1) == 0)
  {
    sub_1E5862918();
  }

  v49 = v68;
  sub_1E588BB34();
  v50 = AssociatedTypeWitness;
  swift_getAssociatedConformanceWitness();
  v51 = sub_1E588BD04();
  v52 = *(v79 + 8);
  v79 += 8;
  v52(v49, v50);
  if ((v51 & 1) == 0)
  {
    sub_1E5880AA0();
  }

  v53 = tv_nsec / 1000000000.0 + tv_sec;
  swift_getWitnessTable();
  v54 = sub_1E588C134();

  WitnessTable = swift_getWitnessTable();
  v56 = sub_1E5864DBC(v54, WitnessTable, v80);
  __tp.tv_sec = v81;
  MEMORY[0x1EEE9AC00](v56);
  *(&v62 - 2) = v2;
  *(&v62 - 1) = v80;
  sub_1E588BE54();
  swift_getWitnessTable();
  sub_1E588BDF4();

  sub_1E586D79C(v2 + *(v2->isa + 19), &__tp);
  v57 = v83;
  v58 = v84;
  __swift_project_boxed_opaque_existential_1(&__tp, v83);
  (*(v58 + 56))(v73, v57, v58, v53);
  v52(v44, AssociatedTypeWitness);
  (v65)(v77, v75);
  __swift_destroy_boxed_opaque_existential_0(&__tp.tv_sec);
  v59 = type metadata accessor for StoreProxy();
  result = (*(*(v59 - 8) + 8))(v80, v59);
  v61 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1E5862858(char *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1E5861C0C(a1);
  }

  return result;
}

uint64_t sub_1E5862918()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1E588BA84();

  v3 = *(v0 + *(*v0 + 120));
  sub_1E588BB24();
  swift_getKeyPath();
  sub_1E588BA74();
}

uint64_t sub_1E5862A94(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  v10 = type metadata accessor for JournalDatabaseRecorder();
  *v9 = v6;
  v9[1] = sub_1E587A100;

  return sub_1E5867BAC(a6, v10, a1);
}

uint64_t sub_1E5862B78(uint64_t a1)
{
  v4 = v1[5];
  v5 = v1[6];
  v6 = (*(*(v1[4] - 8) + 80) + 96) & ~*(*(v1[4] - 8) + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = *(v1 + ((*(*(v1[4] - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1E5876BB0;

  return sub_1E5862A94(v9, a1, v7, v8, (v1 + 7), v1 + v6);
}

uint64_t Store.subscript.getter(void *a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  ObjectType = swift_getObjectType();
  return (*(v4 + 72))(a1, *(*a1 + *MEMORY[0x1E69E77B0] + 8), ObjectType, v4);
}

{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  ObjectType = swift_getObjectType();
  return (*(v4 + 64))(a1, *(*a1 + *MEMORY[0x1E69E77B0] + 8), ObjectType, v4);
}

uint64_t sub_1E5862D68(void *a1)
{
  v2 = *v1;
  v3 = (*a1 + *MEMORY[0x1E69E77B0]);
  v4 = *v3;
  v5 = *(*v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v13 - v7;
  v14 = v1;
  v13[0] = *(v9 + 80);
  v13[1] = *(v10 + 8);
  v13[2] = *(v9 + 88);
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1E588BA64();

  v11 = *(v1 + *(*v1 + 120));
  sub_1E588BB34();
  swift_getAtKeyPath();
  return (*(v5 + 8))(v8, v4);
}

uint64_t AsyncState.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = type metadata accessor for AsyncStateValue();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v2, v6);
}

uint64_t sub_1E5862FE0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1E586301C(uint64_t a1)
{
  v3 = (v1 + *(*v1 + 152));
  v4 = v3[3];
  v5 = v3[4];
  v6 = __swift_project_boxed_opaque_existential_1(v3, v4);
  v7 = *(v4 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v12 - v9;
  (*(v7 + 16))(&v12 - v9);
  LOBYTE(v5) = (*(v5 + 32))(v4, v5);
  result = (*(v7 + 8))(v10, v4);
  if ((v5 & 1) == 0)
  {
    return sub_1E5861F38(a1);
  }

  return result;
}

uint64_t sub_1E5863150()
{
  v96 = v0;
  (*(*(v0 + 976) + 16))(*(v0 + 992), *(v0 + 872), *(v0 + 968));
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v2 = *(v0 + 992);
      v3 = *(v0 + 984);
      v91 = *(v0 + 968);
      v4 = *(v0 + 952);
      v5 = *(v0 + 944);
      v6 = *(v0 + 936);
      v87 = *(v0 + 888);
      v89 = *(v0 + 880);
      v7 = *(v2 + 40);
      v90 = *(v2 + 48);
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF9490, &qword_1E588E338);
      v9 = v8[20];
      v85 = *(v2 + v8[28]);
      v86 = *(v2 + v8[24]);
      v10 = (v2 + v8[32]);
      v11 = v10[1];
      v88 = *v10;
      *(v0 + 1040) = v11;
      v12 = *(v2 + 32);
      v13 = *(v2 + 16);
      *(v0 + 120) = *v2;
      *(v0 + 136) = v13;
      *(v0 + 152) = v12;
      (*(v5 + 32))(v4, v2 + v9, v6);
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF9498, &qword_1E588E340);
      v15 = v14[12];
      v16 = v14[16];
      v17 = v14[20];
      v18 = (v3 + v14[24]);
      sub_1E5875F70(v0 + 120, v3);
      (*(v5 + 16))(v3 + v15, v4, v6);
      *(v3 + v16) = v86;
      *(v3 + v17) = v85;
      v19 = type metadata accessor for StoreProxy();
      v20 = *(v19 - 8);
      (*(v20 + 16))(v0 + 744, v89, v19);
      v21 = swift_allocObject();
      *(v21 + 16) = v87;
      *(v21 + 24) = v7;
      *(v21 + 32) = v88;
      *(v21 + 40) = v11;
      (*(v20 + 32))(v21 + 48, v0 + 744, v19);
      *(v21 + 72) = v90;
      *v18 = &unk_1E588E350;
      v18[1] = v21;
      swift_storeEnumTagMultiPayload();

      v22 = swift_task_alloc();
      *(v0 + 1048) = v22;
      *v22 = v0;
      v22[1] = sub_1E58748E8;
      v23 = *(v0 + 984);
      v24 = *(v0 + 896);
      v25 = *(v0 + 888);
      v26 = *(v0 + 880);

      return sub_1E58743D8(v23, v26, v25);
    }

    v47 = *(v0 + 992);
    v48 = *(v0 + 896);
    v49 = *(v47 + 32);
    v50 = *(v47 + 16);
    *(v0 + 80) = *v47;
    *(v0 + 96) = v50;
    *(v0 + 112) = v49;
    sub_1E5875F70(v0 + 80, v0 + 640);
    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    swift_beginAccess();
    sub_1E5873E4C(&v92, v0 + 640);
    swift_endAccess();
    sub_1E5875FCC(v0 + 80);
    goto LABEL_14;
  }

  v28 = *(v0 + 992);
  v29 = *(v0 + 960);
  v30 = *(v0 + 944);
  v31 = *(v0 + 936);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF9498, &qword_1E588E340);
  v33 = v32[12];
  v34 = *(v28 + v32[16]);
  v35 = *(v28 + v32[20]);
  v36 = (v28 + v32[24]);
  v38 = *v36;
  v37 = v36[1];
  *(v0 + 1000) = v37;
  v40 = *v28;
  v39 = v28[1];
  *(v0 + 192) = *(v28 + 4);
  *(v0 + 160) = v40;
  *(v0 + 176) = v39;
  (*(v30 + 32))(v29, v28 + v33, v31);
  sub_1E5876B48(v0 + 160, v0 + 240, &qword_1ECFF94A0, &qword_1E588E358);
  if (!*(v0 + 264))
  {
    v58 = &qword_1ECFF94A0;
    v59 = &qword_1E588E358;
    v60 = v0 + 240;
LABEL_20:
    sub_1E586576C(v60, v58, v59);
    goto LABEL_21;
  }

  v41 = *(v0 + 896);
  v42 = *(v0 + 256);
  *(v0 + 200) = *(v0 + 240);
  *(v0 + 216) = v42;
  *(v0 + 232) = *(v0 + 272);
  swift_beginAccess();
  v43 = *(v41 + 112);
  if (!*(v43 + 16))
  {
LABEL_19:
    sub_1E5875FCC(v0 + 200);
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0u;
    *(v0 + 64) = 0u;
    v58 = &qword_1ECFF94B0;
    v59 = &qword_1E588E380;
    v60 = v0 + 16;
    goto LABEL_20;
  }

  v44 = *(v41 + 112);

  v45 = sub_1E587A464(v0 + 200);
  if ((v46 & 1) == 0)
  {

    goto LABEL_19;
  }

  sub_1E587621C(*(v43 + 56) + (v45 << 6), v0 + 16);

  sub_1E586576C(v0 + 16, &qword_1ECFF94B0, &qword_1E588E380);
  if (!v34)
  {
    v82 = *(v0 + 960);
    v83 = *(v0 + 944);
    v84 = *(v0 + 936);

    sub_1E5875FCC(v0 + 200);
    (*(v83 + 8))(v82, v84);
    sub_1E586576C(v0 + 160, &qword_1ECFF94A0, &qword_1E588E358);
LABEL_14:
    v51 = *(v0 + 992);
    v52 = *(v0 + 984);
    v53 = *(v0 + 960);
    v54 = *(v0 + 952);
    v55 = *(v0 + 928);
    v56 = *(v0 + 920);

    v57 = *(v0 + 8);

    return v57();
  }

  if (v34 != 1)
  {
    sub_1E5875F70(v0 + 200, v0 + 680);
    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    swift_beginAccess();
    sub_1E5873E4C(&v92, v0 + 680);
    swift_endAccess();
  }

  sub_1E5875FCC(v0 + 200);
LABEL_21:
  v61 = *(v0 + 944);
  v62 = *(v0 + 936);
  v63 = *(v0 + 928);
  v64 = *(v0 + 888);
  v65 = *(v0 + 880);
  (*(v61 + 16))(v63, *(v0 + 960), v62);
  (*(v61 + 56))(v63, 0, 1, v62);
  v66 = type metadata accessor for StoreProxy();
  v67 = *(v66 - 8);
  (*(v67 + 16))(v0 + 768, v65, v66);
  v68 = swift_allocObject();
  v68[2] = 0;
  v68[3] = 0;
  v68[4] = v64;
  v68[5] = v38;
  v68[6] = v37;
  (*(v67 + 32))(v68 + 7, v0 + 768, v66);

  v69 = sub_1E5875228(0, 0, v63, &unk_1E588E368, v68);
  *(v0 + 1008) = v69;
  sub_1E5876B48(v0 + 160, v0 + 320, &qword_1ECFF94A0, &qword_1E588E358);
  if (*(v0 + 344))
  {
    v70 = *(v0 + 896);
    v71 = *(v0 + 880);
    v72 = *(v0 + 336);
    *(v0 + 280) = *(v0 + 320);
    *(v0 + 296) = v72;
    *(v0 + 312) = *(v0 + 352);
    LOBYTE(v92) = v35;
    v73 = sub_1E588BB04();
    v74 = *(v73 + 48);
    v75 = *(v73 + 52);
    swift_allocObject();

    v76 = sub_1E588BB14();
    sub_1E5873F10(v0 + 280, v71, &v92, v76);

    sub_1E5875FCC(v0 + 280);
  }

  else
  {
    sub_1E586576C(v0 + 320, &qword_1ECFF94A0, &qword_1E588E358);
  }

  v77 = *(MEMORY[0x1E69E86A8] + 4);
  v78 = swift_task_alloc();
  *(v0 + 1016) = v78;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF93C0, &qword_1E588E370);
  *(v0 + 1024) = v79;
  *v78 = v0;
  v78[1] = sub_1E58745BC;
  v80 = MEMORY[0x1E69E7288];
  v81 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DA10](v79, v69, v81, v79, v80);
}

uint64_t sub_1E58639D0()
{
  v1 = *(v0 + 40);

  MEMORY[0x1E69307C0](v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 73, 7);
}

uint64_t sub_1E5863A10()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);

  MEMORY[0x1E69307C0](v0 + 64);

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

Swift::Void __swiftcall ChangeObserver.publishCurrentValue()()
{
  v1 = *v0;
  swift_beginAccess();
  v4 = v0[4];
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  type metadata accessor for Store();
  sub_1E588C184();

  swift_getExtendedExistentialTypeMetadata_unique();
  sub_1E588BC84();
  swift_getWitnessTable();
  sub_1E588BDF4();
}

uint64_t Store.send(_:)(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  ObjectType = swift_getObjectType();
  return (*(v4 + 56))(a1, ObjectType, v4);
}

uint64_t sub_1E5863C04(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  __swift_project_boxed_opaque_existential_1(a1 + 1, v1);
  return (*(v2 + 24))(v1, v2);
}

uint64_t sub_1E5863C60(uint64_t a1)
{
  v2 = v1 + *(a1 + 56);
  v4 = *v2;
  v3 = *(v2 + 8);
  return v4(v1 + *(a1 + 52), v1 + *(a1 + 52));
}

void sub_1E5863CBC()
{
  sub_1E5863D44(319);
  if (v0 <= 0x3F)
  {
    sub_1E5863EA0(319);
    if (v1 <= 0x3F)
    {
      sub_1E586401C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1E5863D44(uint64_t a1)
{
  if (!qword_1EE2CD238)
  {
    MEMORY[0x1EEE9AC00](a1);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF94A0, &qword_1E588E358);
    sub_1E588BEE4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF9720, qword_1E588F268);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EE2CD238);
    }
  }
}

void sub_1E5863EA0(uint64_t a1)
{
  if (!qword_1EE2CD248)
  {
    MEMORY[0x1EEE9AC00](a1);
    sub_1E588BEE4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF9720, qword_1E588F268);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EE2CD248);
    }
  }
}

uint64_t sub_1E586401C()
{
  result = qword_1EE2CD240;
  if (!qword_1EE2CD240)
  {
    result = MEMORY[0x1E69E69B8];
    atomic_store(MEMORY[0x1E69E69B8], &qword_1EE2CD240);
  }

  return result;
}

uint64_t AsyncStateValue.to<A>(transform:)@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v53 = a1;
  v56 = a5;
  v57 = a6;
  v52 = a2;
  v8 = sub_1E588BA34();
  v51 = *(v8 - 8);
  v9 = *(v51 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = a4;
  v50 = *(a4 - 8);
  v13 = *(v50 + 64);
  v14 = MEMORY[0x1EEE9AC00](v10);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v47 - v18;
  v20 = *(a3 + 16);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v17);
  v25 = &v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v47 - v27;
  v29 = *(*(a3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26);
  v31 = &v47 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v32 + 16))(v31, v54, a3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v54 = v16;
    if (EnumCaseMultiPayload)
    {
      v37 = *(swift_getTupleTypeMetadata2() + 48);
      v48 = v21;
      (*(v21 + 32))(v25, v31, v20);
      v38 = *(v51 + 32);
      v39 = v12;
      v40 = v8;
      v41 = v25;
      v49 = v39;
      v38();
      v42 = v54;
      v53(v41);
      (*(v48 + 8))(v41, v20);
      v43 = v55;
      v44 = *(swift_getTupleTypeMetadata2() + 48);
      v45 = v57;
      (*(v50 + 32))(v57, v42, v43);
      (v38)(v45 + v44, v49, v40);
    }

    else
    {
      (*(v21 + 32))(v28, v31, v20);
      v53(v28);
      (*(v21 + 8))(v28, v20);
      (*(v50 + 32))(v57, v19, v55);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v34 = *(v31 + 1);
    v35 = *(v31 + 4);
    v36 = v57;
    *v57 = *v31;
    v36[1] = v34;
    *(v36 + 1) = *(v31 + 1);
    v36[4] = v35;
    type metadata accessor for AsyncStateValue();
    return swift_storeEnumTagMultiPayload();
  }

  type metadata accessor for AsyncStateValue();
  return swift_storeEnumTagMultiPayload();
}

uint64_t static AsyncStateValue.== infix(_:_:)(char *a1, char *a2, uint64_t a3)
{
  v57 = a1;
  v58 = a2;
  v53 = *(a3 - 8);
  v4 = *(v53 + 64);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v52 - v8;
  v52[1] = v10;
  v11 = type metadata accessor for AsyncStateValue();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v52 - v17;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v55 = *(TupleTypeMetadata2 - 8);
  v20 = *(v55 + 64);
  v21 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v23 = v52 - v22;
  v56 = v21;
  v24 = v52 + *(v21 + 48) - v22;
  v54 = v12;
  v25 = *(v12 + 16);
  v25(v52 - v22, v57, v11);
  v25(v24, v58, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v57 = v7;
    v58 = v9;
    v27 = a3;
    v28 = v53;
    if (EnumCaseMultiPayload)
    {
      v25(v16, v23, v11);
      v33 = sub_1E588BA34();
      v30 = v27;
      v34 = *(swift_getTupleTypeMetadata2() + 48);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        (*(*(v33 - 8) + 8))(&v16[v34], v33);
        v29 = v16;
        goto LABEL_16;
      }

      v35 = v16;
      v52[0] = v16;
      v36 = v28;
      v56 = v34;
      v37 = *(v28 + 32);
      v38 = v58;
      v37(v58, v35, v27);
      v39 = v57;
      v37(v57, v24, v30);
      v40 = v38;
      v41 = v30;
      v32 = sub_1E588BD04();
      v42 = *(v36 + 8);
      v42(v39, v41);
      v42(v40, v41);
      v43 = *(*(v33 - 8) + 8);
      v44 = v56;
      v43(&v24[v56], v33);
      v43((v52[0] + v44), v33);
    }

    else
    {
      v25(v18, v23, v11);
      if (swift_getEnumCaseMultiPayload())
      {
        v29 = v18;
        v30 = a3;
LABEL_16:
        (*(v28 + 8))(v29, v30);
        goto LABEL_17;
      }

      v45 = v28;
      v46 = *(v28 + 32);
      v47 = v58;
      v48 = v27;
      v46(v58, v18, v27);
      v49 = v57;
      v46(v57, v24, v48);
      v32 = sub_1E588BD04();
      v50 = *(v45 + 8);
      v50(v49, v48);
      v50(v47, v48);
    }

    (*(v54 + 8))(v23, v11);
    return v32 & 1;
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_17;
      }

      goto LABEL_12;
    }

    if (swift_getEnumCaseMultiPayload() == 4)
    {
LABEL_12:
      (*(v54 + 8))(v23, v11);
      v32 = 1;
      return v32 & 1;
    }

LABEL_17:
    (*(v55 + 8))(v23, v56);
    v32 = 0;
    return v32 & 1;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    goto LABEL_17;
  }

  v31 = *(v54 + 8);
  v31(v24, v11);
  v31(v23, v11);
  v32 = 1;
  return v32 & 1;
}

uint64_t sub_1E5864CB0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1E5864CD4();
}

uint64_t sub_1E5864CD4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1E588BB64();
  }

  return result;
}

uint64_t sub_1E5864D3C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1E5864D64()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1E588BB64();
  }

  return result;
}

uint64_t sub_1E5864DBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, void *a3@<X8>)
{
  a3[2] = 0;
  swift_unknownObjectWeakInit();
  *a3 = a1;
  a3[2] = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_1E5864E28(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v30 = *(*a2 + 88);
  v29 = *(v6 + 80);
  swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for SideEffect();
  v27 = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v26 - v10;
  v28 = &v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECFF9178, &qword_1E588D220);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v26 - v14;
  v16 = sub_1E588BEE4();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v8 + 16))(v11, a1, v7);
  v17 = type metadata accessor for StoreProxy();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v31, a3, v17);
  sub_1E588BEC4();

  v19 = sub_1E588BEB4();
  v20 = (*(v8 + 80) + 56) & ~*(v8 + 80);
  v21 = (v9 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  v23 = MEMORY[0x1E69E85E0];
  *(v22 + 2) = v19;
  *(v22 + 3) = v23;
  v24 = v30;
  *(v22 + 4) = v29;
  *(v22 + 5) = v24;
  *(v22 + 6) = a2;
  (*(v8 + 32))(&v22[v20], v28, v27);
  (*(v18 + 32))(&v22[v21], v31, v17);
  sub_1E58807E0(0, 0, v15, &unk_1E588EF08, v22);
}

uint64_t sub_1E586511C()
{
  v2 = v0[4];
  v1 = v0[5];
  swift_getAssociatedTypeWitness();
  v3 = *(type metadata accessor for SideEffect() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 56) & ~v4;
  v6 = *(v3 + 64);
  v7 = v0[2];
  swift_unknownObjectRelease();
  v8 = v0[6];

  v9 = v0 + v5;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + v5));
  }

  else
  {
    if (EnumCaseMultiPayload == 1)
    {
      __swift_destroy_boxed_opaque_existential_0((v0 + v5));
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF9490, &qword_1E588E338);
      v16 = *(v15 + 80);
      v17 = sub_1E588BEE4();
      (*(*(v17 - 8) + 8))(&v9[v16], v17);
      v14 = *(v15 + 128);
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        goto LABEL_10;
      }

      if (*(v9 + 3))
      {
        __swift_destroy_boxed_opaque_existential_0((v0 + v5));
      }

      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF9498, &qword_1E588E340);
      v12 = *(v11 + 48);
      v13 = sub_1E588BEE4();
      (*(*(v13 - 8) + 8))(&v9[v12], v13);
      v14 = *(v11 + 96);
    }

    v18 = *&v9[v14 + 8];
  }

LABEL_10:
  v19 = (v6 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  MEMORY[0x1E69307C0](v0 + v19 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v19 + 24, v4 | 7);
}

uint64_t sub_1E586534C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1E5865388(uint64_t a1, double a2)
{
  v5 = *v2;
  v6 = *(*v2 + 80);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECFF9178, &qword_1E588D220);
  v12 = *(*(v11 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v27 - v14;
  v16 = v2[7];
  if (v16)
  {
    v18 = v2[10];
    v17 = v2[11];
    v27 = v10;
    v19 = v2[8];
    v28 = v2[9];
    v29 = v17;
    v20 = v15;
    v30 = v15;
    v21 = sub_1E588BEE4();
    (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
    (*(v7 + 16))(v10, a1, v6);
    v22 = (*(v7 + 80) + 96) & ~*(v7 + 80);
    v23 = swift_allocObject();
    *(v23 + 2) = 0;
    *(v23 + 3) = 0;
    *(v23 + 4) = v6;
    *(v23 + 5) = *(v5 + 88);
    *(v23 + 6) = *(v5 + 96);
    *(v23 + 7) = v16;
    v24 = v27;
    v25 = v28;
    *(v23 + 8) = v19;
    *(v23 + 9) = v25;
    *(v23 + 10) = v18;
    *(v23 + 11) = v29;
    (*(v7 + 32))(&v23[v22], v24, v6);
    *&v23[(v8 + v22 + 7) & 0xFFFFFFFFFFFFFFF8] = a2;
    sub_1E587A418(v16);

    v26 = v30;
    sub_1E58856D8(0, 0, v30, &unk_1E588E8D8, v23);

    return sub_1E586576C(v26, qword_1ECFF9178, &qword_1E588D220);
  }

  return result;
}

uint64_t sub_1E5865668()
{
  v1 = *(v0 + 4);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 96) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 2);
  swift_unknownObjectRelease();
  v7 = *(v0 + 7);

  v8 = *(v0 + 9);

  v9 = *(v0 + 11);

  (*(v2 + 8))(&v0[v4], v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1E586576C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1E58657EC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return MEMORY[0x1EEE6BDD0](v0, ((((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1E58658D8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1E5865920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E588BA54();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF93B8, &qword_1E588D580);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1E5865A38(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1E588BA54();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF93B8, &qword_1E588D580);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1E5865B4C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E5865B84()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[8];

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1E5865BD4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E5865C0C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E5865C44()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  __swift_destroy_boxed_opaque_existential_0((v0 + 64));

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1E5865C84(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1E5865C9C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E5865CD4(void *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 1)
  {
    return *a1 == 0;
  }

  v7 = type metadata accessor for Database.Transaction(0);
  v8 = *(*(v7 - 8) + 48);
  v9 = a1 + *(a3 + 20);

  return v8(v9, a2, v7);
}

void *sub_1E5865D74(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v4 = result;
  if (a3 == 1)
  {
    *result = 0;
  }

  else
  {
    v7 = type metadata accessor for Database.Transaction(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v4 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

BOOL sub_1E5865E48(char *a1, char *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return sub_1E5865E10(*a1, *a2);
}

uint64_t sub_1E5865E5C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_1E586E268(*v1);
}

uint64_t sub_1E5865E7C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  return sub_1E5865E20(a1, *v2);
}

BOOL sub_1E5865EC0(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return sub_1E5865E88(*a1, *a2);
}

uint64_t sub_1E5865ED4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_1E586EB58(*v1);
}

uint64_t sub_1E5865EF8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  return sub_1E5865E98(a1, *v2);
}

__n128 sub_1E5865F1C(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1E5865F38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E588B9A4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 44) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1E5865FF8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E588B9A4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 44) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E58660B4()
{
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = *(v0 + 4);
  v4 = *(type metadata accessor for JournalEntry() - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 56) & ~v5;
  v7 = *(v4 + 64);
  v8 = *(v0 + 6);

  (*(*(v2 - 8) + 8))(&v0[v6], v2);

  return MEMORY[0x1EEE6BDD0](v0, v6 + v7, v5 | 7);
}

uint64_t sub_1E5866194()
{
  v1 = v0[5];

  v2 = v0[7];

  v3 = v0[9];

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1E58661DC()
{
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = *(v0 + 4);
  v4 = *(type metadata accessor for JournalEntry() - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 56) & ~v5;
  v7 = *(v4 + 64);
  v8 = *(v0 + 6);

  (*(*(v2 - 8) + 8))(&v0[v6], v2);

  return MEMORY[0x1EEE6BDD0](v0, v6 + v7, v5 | 7);
}

uint64_t sub_1E58662BC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E58662F4()
{
  v1 = *(v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1E586632C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[6];

  v3 = v0[7];

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1E5866374()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  if (v0[5])
  {
    v2 = v0[6];
  }

  v3 = v0[7];

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1E58663C4()
{
  v1 = *(v0 + 5);
  v2 = *(v0 + 7);
  v3 = *(type metadata accessor for AsyncStateValue() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 96) & ~v4;
  v6 = *(v3 + 64);
  v7 = *(v0 + 2);
  swift_unknownObjectRelease();
  v8 = *(v0 + 8);

  v9 = *(v0 + 9);

  v10 = *(v0 + 11);

  v11 = &v0[v5];
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      v15 = *(v11 + 1);

      v16 = *(v11 + 4);

      break;
    case 1:
      (*(*(v1 - 8) + 8))(&v0[v5], v1);
      v13 = sub_1E588BA34();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      (*(*(v13 - 8) + 8))(&v11[*(TupleTypeMetadata2 + 48)], v13);
      break;
    case 0:
      (*(*(v1 - 8) + 8))(&v0[v5], v1);
      break;
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v6 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v4 | 7);
}

uint64_t sub_1E58665B0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E58665E8()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1E5866620()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E5866658()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E5866698()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1E58666E8()
{
  v1 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1E5866720()
{
  v1 = *(v0 + 4);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 2);
  swift_unknownObjectRelease();
  v7 = *(v0 + 7);

  (*(v2 + 8))(&v0[v4], v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1E58667F0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E586682C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E5866864()
{
  v1 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1E586689C()
{
  v1 = v0[4];
  v2 = v0[6];
  swift_getAssociatedTypeWitness();
  v3 = *(type metadata accessor for SideEffect() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 72) & ~v4;
  v6 = *(v3 + 64);
  v7 = v0[2];
  swift_unknownObjectRelease();
  v8 = v0[8];

  v9 = v0 + v5;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + v5));
  }

  else
  {
    if (EnumCaseMultiPayload == 1)
    {
      __swift_destroy_boxed_opaque_existential_0((v0 + v5));
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF9490, &qword_1E588E338);
      v16 = *(v15 + 80);
      v17 = sub_1E588BEE4();
      (*(*(v17 - 8) + 8))(&v9[v16], v17);
      v14 = *(v15 + 128);
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        goto LABEL_10;
      }

      if (*(v9 + 3))
      {
        __swift_destroy_boxed_opaque_existential_0((v0 + v5));
      }

      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF9498, &qword_1E588E340);
      v12 = *(v11 + 48);
      v13 = sub_1E588BEE4();
      (*(*(v13 - 8) + 8))(&v9[v12], v13);
      v14 = *(v11 + 96);
    }

    v18 = *&v9[v14 + 8];
  }

LABEL_10:
  v19 = (v6 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  MEMORY[0x1E69307C0](v0 + v19 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v19 + 24, v4 | 7);
}

uint64_t sub_1E5866A9C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E5866AD4()
{
  v1 = v0[5];

  v2 = v0[7];

  v3 = v0[8];

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1E5866B1C()
{
  v1 = v0[4];

  v2 = v0[6];

  v3 = v0[8];

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1E5866B64()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  __swift_destroy_boxed_opaque_existential_0(v0 + 5);

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1E5866BAC()
{
  v1 = *(v0 + 2);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 88) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 7);

  v7 = *(v0 + 9);

  v8 = *(v0 + 10);

  (*(v2 + 8))(&v0[v4], v1);
  v9 = *&v0[v5];

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

unint64_t sub_1E5866CA4(uint64_t a1)
{
  v1 = *(*(a1 + 8) - 8);
  result = ((*(v1 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 48;
  v3 = *(v1 + 80) & 0xF8 | 7;
  return result;
}

__n128 sub_1E5866D34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a1 + a3 - 40) - 8) + 16;
  (*v5)(a2, a1);
  v6 = (*(v5 + 48) + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = a1 + v6;
  v8 = a2 + v6;
  v10 = *(v7 + 16);
  result = *(v7 + 32);
  *v8 = *v7;
  *(v8 + 16) = v10;
  *(v8 + 32) = result;
  return result;
}

uint64_t sub_1E5866DBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + a3 - 16) + 8);
  v4 = *(a1 + a3 - 40);
  return sub_1E588BD04() & 1;
}

uint64_t sub_1E5866E00(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 40);
  v3 = *(a1 + a2 - 16);
  return sub_1E588BCF4();
}

__n128 sub_1E5866E34(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a1 + 8) - 8);
  v5 = *(v4 + 64);
  (*(v4 + 32))(a2, a1 + ((*(v4 + 80) + 48) & ~*(v4 + 80)));
  v6 = a2 + ((v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *(a1 + 16);
  result = *(a1 + 32);
  *v6 = *a1;
  *(v6 + 16) = v8;
  *(v6 + 32) = result;
  return result;
}

uint64_t sub_1E5866EC0()
{
  v1 = *(v0 + 24);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1E5866F7C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1E5866F8C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1E5866F9C()
{
  sub_1E588C434();
  MEMORY[0x1E692FF30](0);
  return sub_1E588C464();
}

uint64_t sub_1E5867008()
{
  sub_1E588C434();
  MEMORY[0x1E692FF30](0);
  return sub_1E588C464();
}

uint64_t sub_1E586709C(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x1E692FA50](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1E58670F0(uint64_t a1, uint64_t a2)
{
  v3 = sub_1E588BF74();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

uint64_t sub_1E5867148@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E588BF84();
  *a1 = result;
  return result;
}

uint64_t sub_1E5867180(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E58671A0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for JournalEncoder.Failure(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for JournalEncoder.Failure(_WORD *result, int a2, int a3)
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

void sub_1E58672DC(uint64_t a1, unint64_t *a2)
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

void *sub_1E5867328@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1E5867338()
{
  v2 = *v0;
  sub_1E5867440(&qword_1EE2CD260);
  sub_1E5867440(&qword_1ECFF9158);
  return sub_1E588C264();
}

uint64_t sub_1E5867440(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UIBackgroundTaskIdentifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E5867488()
{
  result = qword_1ECFF9150;
  if (!qword_1ECFF9150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF9150);
  }

  return result;
}

uint64_t sub_1E5867518()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
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

uint64_t sub_1E5867568(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1E58675B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E5867620@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECFF9178, &qword_1E588D220);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v21 - v12;
  v14 = sub_1E588B8C4();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v17 = sub_1E588B8B4();
  v18 = sub_1E588BEE4();
  (*(*(v18 - 8) + 56))(v13, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = a1;
  v19[5] = a2;
  v19[6] = a3;

  sub_1E58807E0(0, 0, v13, &unk_1E588D230, v19);

  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = a5;
  *(a4 + 32) = v17;
  return result;
}

uint64_t sub_1E5867790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1E58677B4, 0, 0);
}

uint64_t sub_1E58677B4()
{
  v2 = v0[3];
  v1 = v0[4];
  sub_1E588C124();
  MEMORY[0x1E692F890](0xD00000000000001CLL, 0x80000001E5893E30);
  MEMORY[0x1E692F890](v2, v1);
  MEMORY[0x1E692F890](0xD000000000000039, 0x80000001E5893E50);
  v0[5] = 0xE000000000000000;
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_1E58678D8;
  v4 = v0[2];

  return sub_1E5869B44(0, 0xE000000000000000);
}

uint64_t sub_1E58678D8()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E5867A14, 0, 0);
  }

  else
  {
    v4 = v3[5];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1E5867A14()
{
  v15 = v0;
  v1 = v0[5];

  if (qword_1EE2CD5E8 != -1)
  {
    swift_once();
  }

  v2 = v0[4];
  v3 = sub_1E588BAD4();
  __swift_project_value_buffer(v3, qword_1EE2CF9F8);

  v4 = sub_1E588BAB4();
  v5 = sub_1E588C014();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[7];
  if (v6)
  {
    v9 = v0[3];
    v8 = v0[4];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v14 = v11;
    *v10 = 136446210;
    *(v10 + 4) = sub_1E586163C(v9, v8, &v14);
    _os_log_impl(&dword_1E585C000, v4, v5, "Unable to create database table for %{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x1E6930700](v11, -1, -1);
    MEMORY[0x1E6930700](v10, -1, -1);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_1E5867BAC(uint64_t a1, uint64_t a2, double a3)
{
  *(v4 + 32) = a2;
  *(v4 + 40) = v3;
  *(v4 + 24) = a3;
  *(v4 + 16) = a1;
  v5 = *(a2 + 16);
  *(v4 + 48) = v5;
  v6 = *(v5 - 8);
  *(v4 + 56) = v6;
  *(v4 + 64) = *(v6 + 64);
  *(v4 + 72) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5867C74, 0, 0);
}

uint64_t sub_1E5867C74()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[3];
  v8 = v5[4];
  v9 = v5[3];
  v19 = v8;
  v20 = v5[1];
  v21 = v5[2];
  v22 = *v5;
  (*(v4 + 16))(v1, v0[2], v3);
  v10 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v11 = (v2 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  v0[10] = v13;
  *(v13 + 2) = v3;
  *(v13 + 3) = *(v6 + 24);
  *(v13 + 4) = *(v6 + 32);
  *(v13 + 5) = v19;
  (*(v4 + 32))(&v13[v10], v1, v3);
  v14 = &v13[v11];
  *v14 = v20;
  *(v14 + 1) = v21;
  *&v13[v12] = v7;
  *&v13[(v12 + 15) & 0xFFFFFFFFFFFFFFF8] = v9;

  v15 = swift_task_alloc();
  v0[11] = v15;
  v15[2] = sub_1E5868638;
  v15[3] = v13;
  v15[4] = v22;
  v16 = *(MEMORY[0x1E69E8920] + 4);
  v17 = swift_task_alloc();
  v0[12] = v17;
  *v17 = v0;
  v17[1] = sub_1E5867E7C;

  return MEMORY[0x1EEE6DE38]();
}

uint64_t sub_1E5867E7C()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_1E5868004;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_1E5867F98;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E5867F98()
{
  v2 = v0[9];
  v1 = v0[10];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E5868004()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];

  v4 = v0[1];
  v5 = v0[13];

  return v4();
}

uint64_t sub_1E586807C(sqlite3 *a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  v10 = v9;
  v61 = a9;
  v65 = *(a8 - 8);
  v18 = *(v65 + 64);
  v19 = MEMORY[0x1EEE9AC00](a1);
  v62 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v63 = &v57 - v21;
  v22 = sub_1E588BD64();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v64 = a5;
  v67 = a8;
  v24 = sub_1E588B8A4();
  if (!v9)
  {
    v42 = v25;
    v60 = a1;
    v43 = v24;
    sub_1E588BD54();
    v44 = sub_1E588BD44();
    if (v45)
    {
      v58 = v45;
      v59 = v43;
      v61 = v42;
      v66[0] = 0;
      v66[1] = 0xE000000000000000;
      v46 = v44;
      sub_1E588C124();

      HIWORD(v66[1]) = -4864;
      MEMORY[0x1E692F890](a6, a7);
      MEMORY[0x1E692F890](0x5345554C41562060, 0xEE00293F202C3F28);
      v47 = v66[0];
      v48 = v66[1];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF9160, &qword_1E588D208);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1E588D150;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF9168, &qword_1E588D210);
      v50 = *(type metadata accessor for DatabaseBinding() - 8);
      v51 = *(v50 + 72);
      v52 = (*(v50 + 80) + 32) & ~*(v50 + 80);
      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_1E588D160;
      v54 = (v53 + v52);
      *v54 = a2 - a3;
      swift_storeEnumTagMultiPayload();
      v55 = (v54 + v51);
      v56 = v58;
      *v55 = v46;
      v55[1] = v56;
      swift_storeEnumTagMultiPayload();
      *(inited + 32) = v53;
      sub_1E5878020(v47, v48, inited, v60);
      sub_1E58686F8(v59, v61);

      swift_setDeallocating();
      return sub_1E5868794(inited + 32);
    }

    type metadata accessor for JournalDatabaseRecorder.JournalDatabaseError();
    swift_getWitnessTable();
    v10 = swift_allocError();
    swift_willThrow();
    sub_1E58686F8(v43, v42);
  }

  v26 = v63;
  if (qword_1EE2CD5E8 != -1)
  {
    swift_once();
  }

  v27 = sub_1E588BAD4();
  __swift_project_value_buffer(v27, qword_1EE2CF9F8);
  v28 = v65;
  v29 = *(v65 + 16);
  v29(v26, v64, v67);
  v30 = sub_1E588BAB4();
  v31 = sub_1E588C014();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = v67;
    v64 = v10;
    v34 = v26;
    v35 = v32;
    v61 = swift_slowAlloc();
    v66[0] = v61;
    *v35 = 141558274;
    *(v35 + 4) = 1752392040;
    *(v35 + 12) = 2080;
    v29(v62, v34, v33);
    v36 = sub_1E588BD74();
    v38 = v37;
    (*(v28 + 8))(v34, v33);
    v39 = sub_1E586163C(v36, v38, v66);

    *(v35 + 14) = v39;
    _os_log_impl(&dword_1E585C000, v30, v31, "Failed to encode: %{mask.hash}s", v35, 0x16u);
    v40 = v61;
    __swift_destroy_boxed_opaque_existential_0(v61);
    MEMORY[0x1E6930700](v40, -1, -1);
    MEMORY[0x1E6930700](v35, -1, -1);
  }

  else
  {

    (*(v28 + 8))(v26, v67);
  }

  return swift_willThrow();
}

uint64_t sub_1E5868638(sqlite3 *a1)
{
  v2 = *(v1 + 32);
  v3 = (*(*(*(v1 + 16) - 8) + 80) + 48) & ~*(*(*(v1 + 16) - 8) + 80);
  v4 = (*(*(*(v1 + 16) - 8) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1E586807C(a1, *(v1 + ((v4 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v4 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + 40), v1 + v3, *(v1 + v4), *(v1 + v4 + 8), *(v1 + 16), *(v1 + 24));
}

uint64_t sub_1E58686F8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
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

uint64_t sub_1E5868794(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF9170, &qword_1E588D218);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E58687FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E58688C4;

  return sub_1E5867790(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1E58688C4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1E58689D8()
{
  result = sub_1E588B9A4();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E5868AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v11 = *(v5 + 48);
  v12 = *(v5 + 52);
  v13 = swift_allocObject();
  *(v13 + qword_1ECFF9218) = a4;
  *(v13 + 16) = a5;
  v14 = qword_1ECFF9200;
  v15 = sub_1E588B9A4();
  (*(*(v15 - 8) + 32))(v13 + v14, a1, v15);
  v16 = (v13 + qword_1ECFF9208);
  *v16 = a2;
  v16[1] = a3;
  *(v13 + qword_1ECFF9210) = 0;
  return v13;
}

uint64_t sub_1E5868B94()
{
  v1 = qword_1ECFF9210;
  v2 = *(v0 + qword_1ECFF9210);
  if (v2)
  {
    [v2 close];
    v3 = *(v0 + v1);
    *(v0 + v1) = 0;
  }

  v4 = qword_1ECFF9200;
  v5 = sub_1E588B9A4();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(v0 + qword_1ECFF9208 + 8);

  return v0;
}

uint64_t sub_1E5868C50()
{
  sub_1E5868B94();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E5868CC0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1E5868CFC(uint64_t *a1, unsigned int a2)
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

uint64_t sub_1E5868D4C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1E5868DA0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1E5868DB8(void *result, int a2)
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

uint64_t sub_1E5868E04(uint64_t a1, double a2)
{
  v21 = *MEMORY[0x1E69E9840];
  *(v3 + 40) = v2;
  *(v3 + 32) = a2;
  *(v3 + 24) = a1;
  v4 = *v2;
  v5 = sub_1E588BD64();
  *(v3 + 48) = v5;
  v6 = *(v5 - 8);
  *(v3 + 56) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 64) = swift_task_alloc();
  v8 = sub_1E588B9A4();
  *(v3 + 72) = v8;
  v9 = *(v8 - 8);
  *(v3 + 80) = v9;
  v10 = *(v9 + 64) + 15;
  *(v3 + 88) = swift_task_alloc();
  *(v3 + 96) = swift_task_alloc();
  v11 = v4[10];
  *(v3 + 104) = v11;
  v12 = *(v11 - 8);
  *(v3 + 112) = v12;
  v13 = *(v12 + 64) + 15;
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 128) = v4[11];
  *(v3 + 136) = v4[12];
  v14 = type metadata accessor for JournalEntry();
  *(v3 + 144) = v14;
  v15 = *(v14 - 8);
  *(v3 + 152) = v15;
  v16 = *(v15 + 64) + 15;
  *(v3 + 160) = swift_task_alloc();
  swift_getWitnessTable();
  v17 = sub_1E588BE64();
  v19 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1E58690C8, v17, v18);
}

uint64_t sub_1E58690C8()
{
  v100 = v0;
  v99[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 160);
  v2 = *(v0 + 136);
  v3 = *(v0 + 144);
  v4 = *(v0 + 120);
  v5 = *(v0 + 104);
  v6 = *(v0 + 40);
  v7 = *(v0 + 32);
  (*(*(v0 + 112) + 16))(v4, *(v0 + 24), v5);
  sub_1E5881C54(v4, v5, v1, v7 - *(v6 + 16));
  v8 = sub_1E588B8C4();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_1E588B8B4();
  swift_getWitnessTable();
  v97 = sub_1E588B8A4();
  v98 = v19;
  v20 = *(v0 + 40);

  v21 = qword_1ECFF9210;
  v22 = *(v20 + qword_1ECFF9210);
  if (v22)
  {
    v23 = *(v0 + 56);
    v24 = *(v0 + 64);
    v25 = *(v0 + 48);
    v26 = v22;
    sub_1E588BD54();
    v27 = sub_1E588BD34();
    v29 = v28;
    (*(v23 + 8))(v24, v25);
    v31 = *(v0 + 152);
    v30 = *(v0 + 160);
    v32 = *(v0 + 144);
    if (v29 >> 60 == 15)
    {
      sub_1E58697FC();
      swift_allocError();
      swift_willThrow();
      sub_1E58686F8(v97, v98);

      (*(v31 + 8))(v30, v32);
LABEL_2:
      v11 = *(v0 + 160);
      v12 = *(v0 + 120);
      v14 = *(v0 + 88);
      v13 = *(v0 + 96);
      v15 = *(v0 + 64);

      v16 = *(v0 + 8);
      v17 = *MEMORY[0x1E69E9840];
      goto LABEL_3;
    }

    sub_1E5869850(v27, v29, v26);
    sub_1E5869850(v97, v98, v26);
    sub_1E58686F8(v97, v98);

    sub_1E5869A50(v27, v29);
    (*(v31 + 8))(v30, v32);
  }

  else
  {
    v33 = *(v0 + 40);
    v34 = [objc_opt_self() defaultManager];
    v35 = qword_1ECFF9200;
    v36 = sub_1E588B954();
    *(v0 + 16) = 0;
    v37 = [v34 createDirectoryAtURL:v36 withIntermediateDirectories:1 attributes:0 error:v0 + 16];

    v38 = *(v0 + 16);
    if (!v37)
    {
      v65 = *(v0 + 152);
      v64 = *(v0 + 160);
      v66 = *(v0 + 144);
      v67 = v38;
      sub_1E588B924();

      swift_willThrow();
      sub_1E58686F8(v97, v98);
      (*(v65 + 8))(v64, v66);
      goto LABEL_2;
    }

    v39 = *(v0 + 128);
    v40 = *(v0 + 136);
    v42 = *(v0 + 96);
    v41 = *(v0 + 104);
    v43 = *(v0 + 40);
    type metadata accessor for JournalFile();
    v44 = v43 + qword_1ECFF9208;
    v45 = *(v43 + qword_1ECFF9208);
    v46 = *(v44 + 8);
    v47 = v38;
    sub_1E5883438(v33 + v35, v45, v46);
    if (qword_1EE2CD5E8 != -1)
    {
      swift_once();
    }

    v49 = *(v0 + 88);
    v48 = *(v0 + 96);
    v51 = *(v0 + 72);
    v50 = *(v0 + 80);
    v52 = sub_1E588BAD4();
    __swift_project_value_buffer(v52, qword_1EE2CF9F8);
    (*(v50 + 16))(v49, v48, v51);
    v53 = sub_1E588BAB4();
    v54 = sub_1E588C004();
    v55 = os_log_type_enabled(v53, v54);
    v57 = *(v0 + 80);
    v56 = *(v0 + 88);
    v58 = *(v0 + 72);
    if (v55)
    {
      v59 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v99[0] = v94;
      *v59 = 136315138;
      sub_1E5869A7C();
      v60 = sub_1E588C354();
      v93 = v54;
      v62 = v61;
      v96 = *(v57 + 8);
      v96(v56, v58);
      v63 = sub_1E586163C(v60, v62, v99);

      *(v59 + 4) = v63;
      _os_log_impl(&dword_1E585C000, v53, v93, "Opening journal stream at %s", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v94);
      MEMORY[0x1E6930700](v94, -1, -1);
      MEMORY[0x1E6930700](v59, -1, -1);
    }

    else
    {

      v96 = *(v57 + 8);
      v96(v56, v58);
    }

    v68 = *(v0 + 96);
    v69 = objc_allocWithZone(MEMORY[0x1E695DFC0]);
    v70 = sub_1E588B954();
    v71 = [v69 initWithURL:v70 append:0];

    v73 = *(v0 + 152);
    v72 = *(v0 + 160);
    v74 = *(v0 + 144);
    if (!v71)
    {
      v87 = *(v0 + 128);
      v88 = *(v0 + 136);
      v90 = *(v0 + 96);
      v89 = *(v0 + 104);
      v92 = *(v0 + 72);
      v91 = *(v0 + 80);
      type metadata accessor for JournalFileRecorder.Failure();
      swift_getWitnessTable();
      swift_allocError();
      swift_willThrow();
      sub_1E58686F8(v97, v98);
      v96(v90, v92);
      (*(v73 + 8))(v72, v74);
      goto LABEL_2;
    }

    v75 = *(v0 + 96);
    v95 = *(v0 + 144);
    v76 = *(v0 + 160);
    v77 = *(v0 + 72);
    v78 = *(v0 + 80);
    [v71 open];
    v79 = *(v20 + v21);
    *(v20 + v21) = v71;
    v80 = v71;

    sub_1E5869850(v97, v98, v80);
    sub_1E58686F8(v97, v98);

    v96(v75, v77);
    (*(v73 + 8))(v76, v95);
  }

  v81 = *(v0 + 160);
  v82 = *(v0 + 120);
  v84 = *(v0 + 88);
  v83 = *(v0 + 96);
  v85 = *(v0 + 64);

  v16 = *(v0 + 8);
  v86 = *MEMORY[0x1E69E9840];
LABEL_3:

  return v16();
}

unint64_t sub_1E58697FC()
{
  result = qword_1ECFF9320;
  if (!qword_1ECFF9320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF9320);
  }

  return result;
}

uint64_t sub_1E5869850(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = sub_1E588B9E4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  result = MEMORY[0x1EEE9AC00](v6);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v12 != 2)
    {
      sub_1E58686F8(a1, a2);
      v18 = 0;
      v14 = MEMORY[0x1E69E7CC0];
      goto LABEL_22;
    }

    v16 = *(a1 + 16);
    v15 = *(a1 + 24);
    v13 = v15 - v16;
    if (!__OFSUB__(v15, v16))
    {
LABEL_11:
      sub_1E5869AD4(a1, a2);
      if (!v13)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_9:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v13 = HIDWORD(a1) - a1;
    goto LABEL_11;
  }

  if (v12)
  {
    goto LABEL_9;
  }

  v13 = BYTE6(a2);
  if (!BYTE6(a2))
  {
LABEL_4:
    result = sub_1E58686F8(a1, a2);
    v14 = MEMORY[0x1E69E7CC0];
    goto LABEL_13;
  }

LABEL_12:
  v14 = sub_1E5889198(v13, 0);
  v17 = sub_1E588B9C4();
  sub_1E58686F8(a1, a2);
  result = (*(v7 + 8))(v11, v6);
  if (v17 != v13)
  {
    __break(1u);
    goto LABEL_24;
  }

LABEL_13:
  if (v12 == 2)
  {
    v20 = *(a1 + 16);
    v19 = *(a1 + 24);
    v18 = v19 - v20;
    if (!__OFSUB__(v19, v20))
    {
      goto LABEL_22;
    }

    __break(1u);
    goto LABEL_21;
  }

  if (v12 != 1)
  {
LABEL_21:
    v18 = BYTE6(a2);
    goto LABEL_22;
  }

  if (!__OFSUB__(HIDWORD(a1), a1))
  {
    v18 = HIDWORD(a1) - a1;
LABEL_22:
    [a3 write:v14 + 4 maxLength:v18];
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1E5869A50(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1E58686F8(a1, a2);
  }

  return a1;
}

unint64_t sub_1E5869A7C()
{
  result = qword_1ECFF9328[0];
  if (!qword_1ECFF9328[0])
  {
    sub_1E588B9A4();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECFF9328);
  }

  return result;
}

uint64_t sub_1E5869AD4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1E5869B44(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E5869B68, 0, 0);
}

uint64_t sub_1E5869B68()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = swift_allocObject();
  v0[5] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;

  v5 = swift_task_alloc();
  v0[6] = v5;
  v5[2] = sub_1E586DC98;
  v5[3] = v4;
  v5[4] = v2;
  v6 = *(MEMORY[0x1E69E8920] + 4);
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_1E5869C9C;

  return MEMORY[0x1EEE6DE38]();
}

uint64_t sub_1E5869C9C()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_1E5869E1C;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_1E5869DB8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E5869DB8()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E5869E1C()
{
  v1 = v0[5];
  v2 = v0[6];

  v3 = v0[1];
  v4 = v0[8];

  return v3();
}

uint64_t sub_1E5869E88()
{
  if (qword_1EE2CD5E8 != -1)
  {
    swift_once();
  }

  v0 = sub_1E588BAD4();
  __swift_project_value_buffer(v0, qword_1EE2CF9F8);
  v1 = sub_1E588BAB4();
  v2 = sub_1E588C024();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1E585C000, v1, v2, "Database:: attempting close", v3, 2u);
    MEMORY[0x1E6930700](v3, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = *(result + 80);
    v6 = *(*v5 + *MEMORY[0x1E69E6B68] + 16);
    v7 = (*(*v5 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v5 + v7));
    sub_1E586DD9C((v5 + v6));
    os_unfair_lock_unlock((v5 + v7));
  }

  return result;
}

uint64_t sub_1E5869FFC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 32);
    v2 = *(result + 80);
    v3 = *(result + 16);
    MEMORY[0x1EEE9AC00](result);
    v4 = *(*v2 + *MEMORY[0x1E69E6B68] + 16);
    v5 = (*(*v2 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v2 + v5));
    sub_1E586DCD0((v2 + v4));
    os_unfair_lock_unlock((v2 + v5));
  }

  return result;
}

uint64_t sub_1E586A100(void *a1, uint64_t a2)
{
  v37 = a2;
  v4 = sub_1E588BBC4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E588BBE4();
  v45 = *(v9 - 8);
  v10 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Database.State(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E586D734(a1, v16, type metadata accessor for Database.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    return sub_1E586D388(v16, type metadata accessor for Database.State);
  }

  v34 = v9;
  v36 = v2;
  v35 = v5;
  if (EnumCaseMultiPayload == 1)
  {
    sub_1E586D388(a1, type metadata accessor for Database.State);
    v18 = *(v16 + 6);
    v19 = *(v16 + 1);
    v42 = *v16;
    v43 = v19;
    v44 = *(v16 + 2);
  }

  else
  {
    sub_1E586D388(a1, type metadata accessor for Database.State);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF93E8, &qword_1E588D5C0);
    v22 = *(v21 + 48);
    v18 = *&v16[*(v21 + 64)];
    v23 = *(v16 + 1);
    v42 = *v16;
    v43 = v23;
    v44 = *(v16 + 2);
    v24 = sub_1E588BA54();
    (*(*(v24 - 8) + 8))(&v16[v22], v24);
  }

  if (qword_1EE2CD5E8 != -1)
  {
    swift_once();
  }

  v25 = sub_1E588BAD4();
  __swift_project_value_buffer(v25, qword_1EE2CF9F8);

  v26 = sub_1E588BAB4();
  v27 = sub_1E588C024();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 134217984;
    *(v28 + 4) = *(v18 + 16);

    _os_log_impl(&dword_1E585C000, v26, v27, "Database::close (%ld)", v28, 0xCu);
    MEMORY[0x1E6930700](v28, -1, -1);
  }

  else
  {
  }

  *a1 = v18;
  swift_storeEnumTagMultiPayload();
  v29 = v42;
  v30 = *(v37 + 88);
  sub_1E586D79C(v37 + 40, v41);
  sub_1E5865C84((&v42 + 8), v40);
  v31 = swift_allocObject();
  *(v31 + 16) = v29;
  sub_1E5865C84(v41, v31 + 24);
  sub_1E5865C84(v40, v31 + 64);
  aBlock[4] = sub_1E586D800;
  aBlock[5] = v31;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E58779C8;
  aBlock[3] = &block_descriptor_31;
  v32 = _Block_copy(aBlock);
  sub_1E588BBD4();
  v38 = MEMORY[0x1E69E7CC0];
  sub_1E586D6D0(qword_1EE2CD2C8, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF93C8, &qword_1E588D5A8);
  sub_1E586D1F4();
  sub_1E588C0D4();
  MEMORY[0x1E692FB50](0, v12, v8, v32);
  _Block_release(v32);
  (*(v35 + 8))(v8, v4);
  (*(v45 + 8))(v12, v34);
}

id sub_1E586A680(sqlite3 *a1, void *a2, uint64_t a3)
{
  sqlite3_close_v2(a1);
  v5 = *__swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1E586D79C(a3, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF93D8, &qword_1E588D5B8);
  type metadata accessor for UIBackgroundTaskIdentifier(0);
  result = swift_dynamicCast();
  if (result)
  {
    return [*(v5 + 16) endBackgroundTask_];
  }

  return result;
}

void sub_1E586A71C(sqlite3 **a1, void *a2, void *a3, char a4, uint64_t a5)
{
  v11 = type metadata accessor for Database.State(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E586D734(a1, v14, type metadata accessor for Database.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v16 = *(v14 + 6);
    }

    else
    {
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF93E8, &qword_1E588D5C0);
      v33 = *(v32 + 48);
      v34 = *&v14[*(v32 + 64)];

      v35 = sub_1E588BA54();
      (*(*(v35 - 8) + 8))(&v14[v33], v35);
    }

    sub_1E586D848(v14);
  }

  else
  {
    v17 = *v14;
    v18 = sub_1E5860E18(a2, a3, a4);
    if (v5)
    {

      if (qword_1EE2CD5E8 != -1)
      {
        swift_once();
      }

      v19 = sub_1E588BAD4();
      __swift_project_value_buffer(v19, qword_1EE2CF9F8);
      sub_1E5861394(a2, a3, a4);
      v20 = v5;
      v21 = sub_1E588BAB4();
      v22 = sub_1E588C014();
      sub_1E586DCB8(a2, a3, a4);

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v48 = v24;
        *v23 = 136446466;
        v45 = a2;
        v46 = a3;
        v47 = a4;
        sub_1E5861394(a2, a3, a4);
        v25 = sub_1E588BD74();
        v27 = sub_1E586163C(v25, v26, &v48);

        *(v23 + 4) = v27;
        *(v23 + 12) = 2082;
        v45 = v5;
        v28 = v5;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF93C0, &qword_1E588E370);
        v29 = sub_1E588BD74();
        v31 = sub_1E586163C(v29, v30, &v48);

        *(v23 + 14) = v31;
        _os_log_impl(&dword_1E585C000, v21, v22, "Failed to open database connection to %{public}s: %{public}s", v23, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E6930700](v24, -1, -1);
        MEMORY[0x1E6930700](v23, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      v36 = v18;
      sub_1E586D388(a1, type metadata accessor for Database.State);
      if (qword_1EE2CD5E8 != -1)
      {
        swift_once();
      }

      v37 = sub_1E588BAD4();
      __swift_project_value_buffer(v37, qword_1EE2CF9F8);

      v38 = sub_1E588BAB4();
      v39 = sub_1E588C024();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 134217984;
        *(v40 + 4) = *(v17 + 2);

        _os_log_impl(&dword_1E585C000, v38, v39, "Database::open (%ld)", v40, 0xCu);
        MEMORY[0x1E6930700](v40, -1, -1);
      }

      else
      {
      }

      v41 = [*(*__swift_project_boxed_opaque_existential_1((a5 + 40) *(a5 + 64)) + 16)];
      type metadata accessor for UIBackgroundTaskIdentifier(0);
      a1[4] = v42;
      v43 = sub_1E586D6D0(&qword_1EE2CD260, type metadata accessor for UIBackgroundTaskIdentifier);
      *a1 = v36;
      a1[1] = v41;
      a1[5] = v43;
      a1[6] = v17;
      swift_storeEnumTagMultiPayload();
      sub_1E586AC08();
    }
  }
}

uint64_t sub_1E586AC08()
{
  v1 = sub_1E588BBC4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E588BBE4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[0] = *(v0 + 88);
  v11 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1E586D1E4;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E58779C8;
  aBlock[3] = &block_descriptor;
  v12 = _Block_copy(aBlock);

  sub_1E588BBD4();
  v14[1] = MEMORY[0x1E69E7CC0];
  sub_1E586D6D0(qword_1EE2CD2C8, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF93C8, &qword_1E588D5A8);
  sub_1E586D1F4();
  sub_1E588C0D4();
  MEMORY[0x1E692FB50](0, v10, v5, v12);
  _Block_release(v12);
  (*(v2 + 8))(v5, v1);
  (*(v7 + 8))(v10, v6);
}

uint64_t sub_1E586AEC0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1E586AF18();
  }

  return result;
}

uint64_t sub_1E586AF18()
{
  v1 = v0;
  v2 = type metadata accessor for Database.TransactionContext(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v81 = &v71 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v80 = &v71 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF93D0, &qword_1E588D5B0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = (&v71 - v16);
  v18 = sub_1E588BC14();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = (&v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = v1[11];
  *v22 = v23;
  (*(v19 + 104))(v22, *MEMORY[0x1E69E8020], v18);
  v24 = v23;
  v25 = sub_1E588BC34();
  v27 = *(v19 + 8);
  v26 = v19 + 8;
  v27(v22, v18);
  if ((v25 & 1) == 0)
  {
    __break(1u);
LABEL_23:
    swift_once();
    goto LABEL_5;
  }

  v79 = v7;
  v7 = v1[10];
  v28 = *(*v7 + *MEMORY[0x1E69E6B68] + 16);
  v26 = (*(*v7 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock(&v7[v26]);
  sub_1E586B85C(&v7[v28], v17);
  os_unfair_lock_unlock(&v7[v26]);
  sub_1E586D2B0(v17, v15);
  if ((*(v3 + 48))(v15, 1, v2) == 1)
  {
    sub_1E586D320(v17);
    return sub_1E586D320(v15);
  }

  v3 = v2;
  v73 = 0;
  v75 = v28;
  v77 = v17;
  v25 = v80;
  sub_1E586D878(v15, v80, type metadata accessor for Database.TransactionContext);
  v30 = [*(*__swift_project_boxed_opaque_existential_1(v1 + 5 v1[8]) + 16)];
  type metadata accessor for UIBackgroundTaskIdentifier(0);
  v76 = v31;
  v84[3] = v31;
  v84[4] = sub_1E586D6D0(&qword_1EE2CD260, type metadata accessor for UIBackgroundTaskIdentifier);
  v84[0] = v30;
  v17 = v1;
  if (qword_1EE2CD5E8 != -1)
  {
    goto LABEL_23;
  }

LABEL_5:
  v32 = sub_1E588BAD4();
  v33 = __swift_project_value_buffer(v32, qword_1EE2CF9F8);
  v34 = v25;
  v35 = v81;
  sub_1E586D734(v25, v81, type metadata accessor for Database.TransactionContext);
  v74 = v33;
  v36 = sub_1E588BAB4();
  v37 = sub_1E588C004();
  v38 = os_log_type_enabled(v36, v37);
  v78 = v3;
  if (v38)
  {
    v39 = swift_slowAlloc();
    v72 = v26;
    v40 = v39;
    v41 = swift_slowAlloc();
    v83[0] = v41;
    *v40 = 136315138;
    v42 = *(v78 + 20);
    sub_1E588BA54();
    sub_1E586D6D0(&qword_1ECFF93E0, MEMORY[0x1E69695A8]);
    v43 = sub_1E588C354();
    v45 = v44;
    sub_1E586D388(v35, type metadata accessor for Database.TransactionContext);
    v46 = sub_1E586163C(v43, v45, v83);

    *(v40 + 4) = v46;
    _os_log_impl(&dword_1E585C000, v36, v37, "Database::Executing %s transaction", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v41);
    MEMORY[0x1E6930700](v41, -1, -1);
    v47 = v40;
    v26 = v72;
    v3 = v78;
    MEMORY[0x1E6930700](v47, -1, -1);
  }

  else
  {

    sub_1E586D388(v35, type metadata accessor for Database.TransactionContext);
  }

  v48 = v34;
  v49 = v34 + *(v3 + 20);
  v50 = type metadata accessor for Database.Transaction(0);
  v51 = &v49[*(v50 + 24)];
  v52 = *(v51 + 1);
  v53 = *v34;
  v54 = v73;
  (*v51)(v53);
  v55 = *(v50 + 20);
  if (v54)
  {
    v83[0] = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF93B8, &qword_1E588D580);
    sub_1E588BE74();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF93B8, &qword_1E588D580);
    sub_1E588BE84();
  }

  v56 = [*(*__swift_project_boxed_opaque_existential_1(v17 + 5 v17[8]) + 16)];
  if (v56 == 2)
  {
    v57 = sub_1E588BAB4();
    v58 = sub_1E588C024();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_1E585C000, v57, v58, "Database:: preemptively closing database now that we are no longer active", v59, 2u);
      MEMORY[0x1E6930700](v59, -1, -1);
    }

    os_unfair_lock_lock(&v7[v26]);
    sub_1E586D718(&v7[v75]);
    os_unfair_lock_unlock(&v7[v26]);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v56);
    *(&v71 - 2) = v48;
    *(&v71 - 1) = v17;
    os_unfair_lock_lock(&v7[v26]);
    sub_1E586D3E8(&v7[v75]);
    os_unfair_lock_unlock(&v7[v26]);
  }

  v60 = v79;
  sub_1E586D734(v48, v79, type metadata accessor for Database.TransactionContext);
  v61 = sub_1E588BAB4();
  v62 = sub_1E588C004();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v83[0] = v64;
    *v63 = 136315138;
    v65 = *(v78 + 20);
    sub_1E588BA54();
    sub_1E586D6D0(&qword_1ECFF93E0, MEMORY[0x1E69695A8]);
    v66 = sub_1E588C354();
    v68 = v67;
    sub_1E586D388(v60, type metadata accessor for Database.TransactionContext);
    v69 = sub_1E586163C(v66, v68, v83);

    *(v63 + 4) = v69;
    _os_log_impl(&dword_1E585C000, v61, v62, "Database::Completed executing %s transaction", v63, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v64);
    MEMORY[0x1E6930700](v64, -1, -1);
    MEMORY[0x1E6930700](v63, -1, -1);
  }

  else
  {

    sub_1E586D388(v60, type metadata accessor for Database.TransactionContext);
  }

  v70 = *__swift_project_boxed_opaque_existential_1(v17 + 5, v17[8]);
  sub_1E586D79C(v84, v83);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF93D8, &qword_1E588D5B8);
  if (swift_dynamicCast())
  {
    [*(v70 + 16) endBackgroundTask_];
  }

  sub_1E586D320(v77);
  __swift_destroy_boxed_opaque_existential_0(v84);
  return sub_1E586D388(v48, type metadata accessor for Database.TransactionContext);
}

uint64_t sub_1E586B85C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(type metadata accessor for Database.Transaction(0) - 8);
  v5 = *(v4 + 64);
  v6 = (MEMORY[0x1EEE9AC00])();
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v34 - v9;
  v11 = type metadata accessor for Database.State(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E586D734(a1, v14, type metadata accessor for Database.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v16 = *(v14 + 6);
      v17 = *(v14 + 2);
      v34[1] = *(v14 + 1);
      v34[2] = v17;
      v34[0] = *v14;
      v18 = *(v16 + 16);
      if (v18)
      {
        v35 = (*(v4 + 80) + 32) & ~*(v4 + 80);
        sub_1E586D734(v16 + v35, v8, type metadata accessor for Database.Transaction);
        sub_1E586D388(a1, type metadata accessor for Database.State);
        sub_1E586D878(v8, v10, type metadata accessor for Database.Transaction);
        v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF93E8, &qword_1E588D5C0);
        v20 = *(v19 + 48);
        sub_1E586D810(v34, a1);
        v21 = sub_1E588BA54();
        (*(*(v21 - 8) + 16))(a1 + v20, v10, v21);
        v22 = *(v16 + 16);
        if (v22 < v18)
        {
          __break(1u);
        }

        else if (v22 == v18 - 1)
        {
LABEL_6:
          *(a1 + *(v19 + 64)) = v16;
          swift_storeEnumTagMultiPayload();
          v23 = *&v34[0];
          sub_1E586D848(v34);
          v24 = type metadata accessor for Database.TransactionContext(0);
          sub_1E586D878(v10, a2 + *(v24 + 20), type metadata accessor for Database.Transaction);
          *a2 = v23;
          return (*(*(v24 - 8) + 56))(a2, 0, 1, v24);
        }

        sub_1E586DAF8(v16, v16 + v35, 1, (2 * v18) | 1);
        v33 = v32;

        v16 = v33;
        goto LABEL_6;
      }

      v30 = v34;
    }

    else
    {
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF93E8, &qword_1E588D5C0);
      v27 = *(v26 + 48);
      v28 = *&v14[*(v26 + 64)];

      v29 = sub_1E588BA54();
      (*(*(v29 - 8) + 8))(&v14[v27], v29);
      v30 = v14;
    }

    sub_1E586D848(v30);
  }

  else
  {
    sub_1E586D388(v14, type metadata accessor for Database.State);
  }

  v31 = type metadata accessor for Database.TransactionContext(0);
  return (*(*(v31 - 8) + 56))(a2, 1, 1, v31);
}

void sub_1E586BC58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Database.TransactionContext(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Database.State(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E586D734(a1, v11, type metadata accessor for Database.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v13 = *(v11 + 6);

      sub_1E586AC08(v14);
      sub_1E586D848(v11);
    }

    else
    {
      sub_1E586D388(a1, type metadata accessor for Database.State);
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF93E8, &qword_1E588D5C0);
      v26 = *(v25 + 48);
      v27 = *&v11[*(v25 + 64)];
      v28 = *(v11 + 1);
      v31[0] = *v11;
      v31[1] = v28;
      v31[2] = *(v11 + 2);
      sub_1E586D810(v31, a1);
      *(a1 + 48) = v27;
      v29 = swift_storeEnumTagMultiPayload();
      sub_1E586AC08(v29);
      sub_1E586D848(v31);
      v30 = sub_1E588BA54();
      (*(*(v30 - 8) + 8))(&v11[v26], v30);
    }
  }

  else
  {
    sub_1E586D388(v11, type metadata accessor for Database.State);
    if (qword_1EE2CD5E8 != -1)
    {
      swift_once();
    }

    v15 = sub_1E588BAD4();
    __swift_project_value_buffer(v15, qword_1EE2CF9F8);
    sub_1E586D734(a2, v7, type metadata accessor for Database.TransactionContext);
    v16 = sub_1E588BAB4();
    v17 = sub_1E588C024();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *&v31[0] = v19;
      *v18 = 136315138;
      v20 = *(v4 + 20);
      sub_1E588BA54();
      sub_1E586D6D0(&qword_1ECFF93E0, MEMORY[0x1E69695A8]);
      v21 = sub_1E588C354();
      v23 = v22;
      sub_1E586D388(v7, type metadata accessor for Database.TransactionContext);
      v24 = sub_1E586163C(v21, v23, v31);

      *(v18 + 4) = v24;
      _os_log_impl(&dword_1E585C000, v16, v17, "Database closed while executing %s, closing connection", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x1E6930700](v19, -1, -1);
      MEMORY[0x1E6930700](v18, -1, -1);
    }

    else
    {

      sub_1E586D388(v7, type metadata accessor for Database.TransactionContext);
    }
  }
}

uint64_t sub_1E586C024()
{
  sub_1E586DCB8(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  __swift_destroy_boxed_opaque_existential_0((v0 + 40));
  v1 = *(v0 + 80);

  return MEMORY[0x1EEE6BDC0](v0, 96, 7);
}

void sub_1E586C0E8()
{
  sub_1E586C170();
  if (v0 <= 0x3F)
  {
    sub_1E586C230();
    if (v1 <= 0x3F)
    {
      sub_1E586C2F0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1E586C170()
{
  if (!qword_1EE2CD2A8)
  {
    sub_1E586C1B8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2CD2A8);
    }
  }
}

void sub_1E586C1B8()
{
  if (!qword_1EE2CD2A0)
  {
    type metadata accessor for Database.Transaction(255);
    v0 = sub_1E588BE54();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2CD2A0);
    }
  }
}

void sub_1E586C230()
{
  if (!qword_1EE2CD5D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF93B0, "T7");
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE2CD5D8);
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

void sub_1E586C2F0()
{
  if (!qword_1EE2CD5E0)
  {
    sub_1E588BA54();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF93B0, "T7");
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EE2CD5E0);
    }
  }
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

uint64_t sub_1E586C38C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E586C3D4(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

void sub_1E586C458()
{
  sub_1E588BA54();
  if (v0 <= 0x3F)
  {
    sub_1E586C4F4();
    if (v1 <= 0x3F)
    {
      sub_1E586C56C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E586C4F4()
{
  if (!qword_1EE2CD288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF93C0, &qword_1E588E370);
    v0 = sub_1E588BE94();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2CD288);
    }
  }
}

unint64_t sub_1E586C56C()
{
  result = qword_1EE2CD220;
  if (!qword_1EE2CD220)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EE2CD220);
  }

  return result;
}

uint64_t sub_1E586C5BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Database.Transaction(0);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v21[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *(v9 + 28);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF93B8, &qword_1E588D580);
  (*(*(v14 - 8) + 16))(&v12[v13], a1, v14);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;

  sub_1E588BA44();
  v16 = &v12[*(v9 + 32)];
  *v16 = sub_1E586D1AC;
  v16[1] = v15;
  v17 = *(a4 + 80);
  v22 = v12;
  v18 = *(*v17 + *MEMORY[0x1E69E6B68] + 16);
  v19 = (*(*v17 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v17 + v19));
  sub_1E586D1C8((v17 + v18));
  os_unfair_lock_unlock((v17 + v19));
  sub_1E586AC08();
  return sub_1E586D388(v12, type metadata accessor for Database.Transaction);
}

uint64_t sub_1E586C774(sqlite3 *a1, void (*a2)(sqlite3 *))
{
  sub_1E5861B48(0x6E69676562, 0xE500000000000000, a1);
  if (v2)
  {
    sub_1E5861B48(0x6B6361626C6C6F72, 0xE800000000000000, a1);
    return swift_willThrow();
  }

  else
  {
    a2(a1);
    return sub_1E5861B48(0x74696D6D6F63, 0xE600000000000000, a1);
  }
}

uint64_t sub_1E586C844(char *a1, uint64_t a2)
{
  v4 = sub_1E588BA54();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Database.State(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E586D878(a1, v12, type metadata accessor for Database.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v14 = *(v12 + 6);
      v15 = *(v12 + 1);
      v36 = *v12;
      v37 = v15;
      v38 = *(v12 + 2);
      sub_1E586D810(&v36, a1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF93F0, &qword_1E588D5C8);
      v16 = *(type metadata accessor for Database.Transaction(0) - 8);
      v17 = *(v16 + 72);
      v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1E588D150;
      sub_1E586D734(a2, v19 + v18, type metadata accessor for Database.Transaction);
      v39 = v14;
      sub_1E586D8E0(v19);
      sub_1E586D848(&v36);
      *(a1 + 6) = v39;
    }

    else
    {
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF93E8, &qword_1E588D5C0);
      v26 = *(v25 + 48);
      v34 = *&v12[*(v25 + 64)];
      v27 = *(v12 + 1);
      v36 = *v12;
      v37 = v27;
      v38 = *(v12 + 2);
      (*(v5 + 32))(v8, &v12[v26], v4);
      v28 = *(v25 + 48);
      v35 = *(v25 + 64);
      sub_1E586D810(&v36, a1);
      (*(v5 + 16))(&a1[v28], v8, v4);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF93F0, &qword_1E588D5C8);
      v29 = *(type metadata accessor for Database.Transaction(0) - 8);
      v30 = *(v29 + 72);
      v31 = (*(v29 + 80) + 32) & ~*(v29 + 80);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1E588D150;
      sub_1E586D734(a2, v32 + v31, type metadata accessor for Database.Transaction);
      v39 = v34;
      sub_1E586D8E0(v32);
      (*(v5 + 8))(v8, v4);
      sub_1E586D848(&v36);
      *&a1[v35] = v39;
    }
  }

  else
  {
    v20 = *v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF93F0, &qword_1E588D5C8);
    v21 = *(type metadata accessor for Database.Transaction(0) - 8);
    v22 = *(v21 + 72);
    v23 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1E588D150;
    sub_1E586D734(a2, v24 + v23, type metadata accessor for Database.Transaction);
    *&v36 = v20;
    sub_1E586D8E0(v24);
    *a1 = v36;
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E586CCFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[10] = a6;
  v7[11] = v6;
  v7[8] = a4;
  v7[9] = a5;
  v7[6] = a2;
  v7[7] = a3;
  v7[5] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E586CD28, 0, 0);
}

uint64_t sub_1E586CD28()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);
  v5 = *(v0 + 40);
  v4 = *(v0 + 48);
  v6 = swift_allocObject();
  *(v0 + 96) = v6;
  *(v6 + 16) = 0;
  v7 = swift_allocObject();
  *(v0 + 104) = v7;
  *(v7 + 16) = v2;
  *(v7 + 24) = v6;
  *(v7 + 32) = v5;
  *(v7 + 40) = v4;
  *(v7 + 48) = *(v0 + 56);
  *(v7 + 64) = v3;

  v8 = swift_task_alloc();
  *(v0 + 112) = v8;
  v8[2] = sub_1E586D184;
  v8[3] = v7;
  v8[4] = v1;
  v9 = *(MEMORY[0x1E69E8920] + 4);
  v10 = swift_task_alloc();
  *(v0 + 120) = v10;
  *v10 = v0;
  v10[1] = sub_1E586CEC0;

  return MEMORY[0x1EEE6DE38]();
}

uint64_t sub_1E586CEC0()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v7 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = sub_1E586D088;
  }

  else
  {
    v5 = *(v2 + 112);

    v4 = sub_1E586CFDC;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E586CFDC()
{
  v2 = v0[12];
  v1 = v0[13];

  swift_beginAccess();
  if (*(v2 + 16))
  {
    v3 = *(v2 + 16);
  }

  else
  {
    v4 = v0[10];
    v3 = sub_1E588BE04();
  }

  v5 = v0[12];

  v6 = v0[1];

  return v6(v3);
}

uint64_t sub_1E586D088()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];

  v4 = v0[1];
  v5 = v0[16];

  return v4();
}

uint64_t sub_1E586D100(sqlite3 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(sqlite3_stmt *), uint64_t a7, uint64_t a8)
{
  result = sub_1E5878584(a3, a4, a5, a6, a7, a1, a8);
  if (!v8)
  {
    v11 = result;
    swift_beginAccess();
    v12 = *(a2 + 16);
    *(a2 + 16) = v11;
  }

  return result;
}

unint64_t sub_1E586D1F4()
{
  result = qword_1EE2CD298;
  if (!qword_1EE2CD298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF93C8, &qword_1E588D5A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2CD298);
  }

  return result;
}

uint64_t sub_1E586D278(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E586D2B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF93D0, &qword_1E588D5B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E586D320(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF93D0, &qword_1E588D5B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E586D388(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

size_t sub_1E586D404(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF93F0, &qword_1E588D5C8);
  v10 = *(type metadata accessor for Database.Transaction(0) - 8);
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
  v15 = *(type metadata accessor for Database.Transaction(0) - 8);
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

char *sub_1E586D5DC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF93F8, &qword_1E588D5D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1E586D6D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E586D734(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E586D79C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1E586D878(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E586D8E0(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_1E586D404(isUniquelyReferenced_nonNull_native, v16, 1, v3);
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
  v9 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for Database.Transaction(0);
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1E586DA0C(uint64_t result)
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

  result = sub_1E586D5DC(result, v12, 1, v3);
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

void sub_1E586DAF8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF93F0, &qword_1E588D5C8);
      v7 = *(type metadata accessor for Database.Transaction(0) - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        v13 = *(type metadata accessor for Database.Transaction(0) - 8);
        v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
        v15 = *(v13 + 72);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

uint64_t sub_1E586DCB8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1E586DD1C()
{
  result = type metadata accessor for Database.Transaction(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1E586DDC0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (sub_1E588C374() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E696863746566 && a2 == 0xE800000000000000 || (sub_1E588C374() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6968736572666572 && a2 == 0xEA0000000000676ELL || (sub_1E588C374() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x64656863746566 && a2 == 0xE700000000000000 || (sub_1E588C374() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x64656C696166 && a2 == 0xE600000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1E588C374();

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

uint64_t sub_1E586DF74(unsigned __int8 a1)
{
  v1 = 1701736302;
  v2 = 0x6968736572666572;
  v3 = 0x64656863746566;
  if (a1 != 3)
  {
    v3 = 0x64656C696166;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x676E696863746566;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1E586E020(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_1E586DF74(*v1);
}

uint64_t sub_1E586E02C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_1E586DDC0(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1E586E068@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  result = sub_1E5872CB0();
  *a2 = result;
  return result;
}

uint64_t sub_1E586E094(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E586E0E8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E586E13C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D6F44726F727265 && a2 == 0xEB000000006E6961;
  if (v4 || (sub_1E588C374() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646F43726F727265 && a2 == 0xE900000000000065 || (sub_1E588C374() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001E5893FC0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E588C374();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1E586E268(unsigned __int8 a1)
{
  sub_1E588C434();
  MEMORY[0x1E692FF30](a1);
  return sub_1E588C464();
}

uint64_t sub_1E586E2B0(char a1)
{
  if (!a1)
  {
    return 0x6D6F44726F727265;
  }

  if (a1 == 1)
  {
    return 0x646F43726F727265;
  }

  return 0xD000000000000014;
}

uint64_t sub_1E586E318(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746C75736572 && a2 == 0xE600000000000000;
  if (v4 || (sub_1E588C374() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_1E588C374();

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

uint64_t sub_1E586E3E0(char a1)
{
  if (a1)
  {
    return 1702125924;
  }

  else
  {
    return 0x746C75736572;
  }
}

uint64_t sub_1E586E40C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x73756F6976657270 && a2 == 0xEE00746C75736552)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1E588C374();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1E586E48C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, void, void, void))
{
  sub_1E588C434();
  a4(v8, *v4, *(a2 + 16), *(a2 + 24));
  return sub_1E588C464();
}

uint64_t sub_1E586E4E4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_1E586E2B0(*v1);
}

uint64_t sub_1E586E4F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_1E586E13C(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1E586E520@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  result = sub_1E5872CB8();
  *a2 = result;
  return result;
}

uint64_t sub_1E586E54C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E586E5A0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E586E60C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_1E586E3E0(*v1);
}

uint64_t sub_1E586E61C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_1E586E318(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1E586E64C@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  result = sub_1E5872CC0();
  *a2 = result;
  return result;
}

uint64_t sub_1E586E678(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E586E6CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E586E744@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  result = sub_1E586404C();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1E586E774(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E586E7C8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E586E81C@<X0>(uint64_t a1@<X2>, uint64_t (*a2)(void, void)@<X4>, _BYTE *a3@<X8>)
{
  v4 = a2(*(a1 + 16), *(a1 + 24));

  *a3 = v4 & 1;
  return result;
}

uint64_t sub_1E586E868(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E586E8BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E586E934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_1E586E40C(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_1E586E968(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E586E9BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

BOOL static AsyncState.== infix(_:_:)(char *a1, char *a2, uint64_t a3)
{
  if ((static AsyncStateValue.== infix(_:_:)(a1, a2, a3) & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for AsyncState();
  return *&a1[*(v5 + 36)] == *&a2[*(v5 + 36)];
}

uint64_t sub_1E586EA90(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_1E588C374() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7107700 && a2 == 0xE300000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_1E588C374();

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

uint64_t sub_1E586EB58(char a1)
{
  sub_1E588C434();
  MEMORY[0x1E692FF30](a1 & 1);
  return sub_1E588C464();
}

uint64_t sub_1E586EBA0(char a1)
{
  if (a1)
  {
    return 7107700;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_1E586EBCC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, void, void, void))
{
  sub_1E588C434();
  a4(v8, *v4, *(a2 + 16), *(a2 + 24));
  return sub_1E588C464();
}

uint64_t sub_1E586EC24(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_1E586EBA0(*v1);
}

uint64_t sub_1E586EC34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_1E586EA90(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1E586EC64(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E586ECB8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t AsyncKeyedState.keys.getter(void *a1)
{
  v3 = *(v1 + 8);
  v5 = a1[2];
  v4 = a1[3];
  v6 = a1[5];
  type metadata accessor for AsyncState();
  v7 = a1[4];
  sub_1E588BC64();

  swift_getWitnessTable();
  return sub_1E588BF44();
}

uint64_t AsyncKeyedState.values.getter(void *a1)
{
  v3 = *(v1 + 8);
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[5];
  type metadata accessor for AsyncState();
  v7 = a1[4];
  v14[11] = v3;
  v14[6] = v4;
  v14[7] = v5;
  v14[8] = v7;
  v14[9] = v6;
  v14[2] = v4;
  v14[3] = v7;
  v14[4] = swift_getKeyPath();
  v8 = sub_1E588BC74();
  v9 = type metadata accessor for AsyncStateValue();

  WitnessTable = swift_getWitnessTable();
  v12 = sub_1E586EEF4(sub_1E5872CC8, v14, v8, v9, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v11);

  return v12;
}

uint64_t sub_1E586EEF4(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v34 - v24;
  v26 = sub_1E588BFB4();
  if (!v26)
  {
    return sub_1E588BE04();
  }

  v48 = v26;
  v52 = sub_1E588C1C4();
  v39 = sub_1E588C1D4();
  sub_1E588C1A4();
  result = sub_1E588BFA4();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = sub_1E588BFF4();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      sub_1E588C1B4();
      result = sub_1E588BFC4();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t AsyncKeyedState.subscript.getter@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v5 = a1[3];
  v6 = a1[5];
  v7 = type metadata accessor for AsyncState();
  v8 = sub_1E588C0A4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v20 - v11;
  v13 = *v2;
  v14 = *(v2 + 1);
  v15 = a1[2];
  v16 = a1[4];
  sub_1E588BCB4();
  v17 = *(v7 - 8);
  v18 = *(v17 + 48);
  if (v18(v12, 1, v7) != 1)
  {
    return (*(v17 + 32))(a2, v12, v7);
  }

  AsyncState.init(ttl:)(a2, v13);
  result = (v18)(v12, 1, v7);
  if (result != 1)
  {
    return (*(v9 + 8))(v12, v8);
  }

  return result;
}

uint64_t sub_1E586F4D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *a1;
  v10 = a1[1];
  v7 = *(a2 + a3 - 32);
  v8 = *(a2 + a3 - 16);
  v5 = type metadata accessor for AsyncKeyedState();
  return AsyncKeyedState.subscript.getter(v5, a4);
}

uint64_t sub_1E586F548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 + a4 - 32);
  v9 = *(a3 + a4 - 16);
  v6 = type metadata accessor for AsyncKeyedState();
  return sub_1E5872CF4(a1, a3, v6);
}

uint64_t AsyncKeyedState.subscript.setter(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1E5872CF4(a1, a2, a3);
  (*(*(a3[2] - 8) + 8))(a2);
  v6 = a3[3];
  v7 = a3[5];
  v8 = type metadata accessor for AsyncState();
  v9 = *(*(v8 - 8) + 8);

  return v9(a1, v8);
}

void (*AsyncKeyedState.subscript.modify(void *a1, uint64_t a2, void *a3))(void ***a1, char a2)
{
  v6 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x48uLL);
  }

  v8 = v7;
  *a1 = v7;
  *v7 = a3;
  v7[1] = v3;
  v9 = a3[3];
  v10 = a3[5];
  v11 = type metadata accessor for AsyncState();
  v8[2] = v11;
  v12 = *(v11 - 8);
  v8[3] = v12;
  v13 = *(v12 + 64);
  if (v6)
  {
    v8[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v8[4] = malloc(*(v12 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v8[5] = v14;
  v16 = a3[2];
  v8[6] = v16;
  v17 = *(v16 - 8);
  v18 = v17;
  v8[7] = v17;
  if (v6)
  {
    v19 = swift_coroFrameAlloc();
  }

  else
  {
    v19 = malloc(*(v17 + 64));
  }

  v8[8] = v19;
  (*(v18 + 16))();
  v21 = *v3;
  v22 = v3[1];
  AsyncKeyedState.subscript.getter(a3, v15);
  return sub_1E586F824;
}

void sub_1E586F824(void ***a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[7];
  v3 = (*a1)[8];
  v5 = (*a1)[5];
  v6 = (*a1)[6];
  v8 = (*a1)[3];
  v7 = (*a1)[4];
  v9 = (*a1)[1];
  v10 = (*a1)[2];
  v11 = **a1;
  if (a2)
  {
    (v8[2])((*a1)[4], v5, v10);
    sub_1E5872CF4(v7, v3, v11);
    (v4[1])(v3, v6);
    v12 = v8[1];
    v12(v7, v10);
    v12(v5, v10);
  }

  else
  {
    sub_1E5872CF4((*a1)[5], v3, v11);
    (v4[1])(v3, v6);
    (v8[1])(v5, v10);
  }

  free(v3);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t static AsyncKeyedState.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v8 = *(a2 + 8);
  v9 = *(a1 + 8);
  v10 = type metadata accessor for AsyncState();
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE68930](v9, v8, a3, v10, a5, WitnessTable);
}

uint64_t sub_1E586FA0C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7107700 && a2 == 0xE300000000000000;
  if (v3 || (sub_1E588C374() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656761726F7473 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_1E588C374();

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

uint64_t sub_1E586FAD8(char a1)
{
  if (a1)
  {
    return 0x656761726F7473;
  }

  else
  {
    return 7107700;
  }
}

BOOL sub_1E586FB08(unsigned __int8 *a1, unsigned __int8 *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  v6 = a3[5];
  return sub_1E5865E88(*a1, *a2);
}

uint64_t sub_1E586FB20(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  return sub_1E586EB58(*v1);
}

uint64_t sub_1E586FB34(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  return sub_1E5865E98(a1, *v2);
}

uint64_t sub_1E586FB48(uint64_t a1, void *a2)
{
  sub_1E588C434();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  sub_1E5865E98(v9, *v2);
  return sub_1E588C464();
}

uint64_t sub_1E586FB94(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  return sub_1E586FAD8(*v1);
}

uint64_t sub_1E586FBA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  v8 = a3[5];
  result = sub_1E586FA0C(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1E586FBDC@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  result = sub_1E5872CC0();
  *a2 = result;
  return result;
}

uint64_t sub_1E586FC10(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E586FC64(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t AsyncKeyedState<>.encode(to:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = a4;
  v24 = a5;
  v25 = a6;
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[5];
  v22 = a2[4];
  v23 = v8;
  v33 = v8;
  v34 = v9;
  v21[1] = v10;
  v21[2] = v9;
  v35 = v22;
  v36 = v10;
  type metadata accessor for AsyncKeyedState.CodingKeys();
  swift_getWitnessTable();
  v11 = sub_1E588C344();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v21 - v14;
  v16 = *v6;
  v21[0] = v6[1];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E588C494();
  LOBYTE(v33) = 0;
  v18 = v27;
  sub_1E588C314();
  if (!v18)
  {
    v33 = v21[0];
    v32 = 1;
    type metadata accessor for AsyncState();
    sub_1E588BC84();
    v30 = v24;
    v31 = v25;
    WitnessTable = swift_getWitnessTable();
    v28 = v26;
    v29 = WitnessTable;
    swift_getWitnessTable();
    sub_1E588C334();
  }

  return (*(v12 + 8))(v15, v11);
}

uint64_t AsyncKeyedState<>.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, void *a8@<X8>, uint64_t a9)
{
  v27 = a7;
  v28 = a4;
  v29 = a3;
  v30 = a6;
  v26 = a8;
  v39 = a2;
  v40 = a3;
  v31 = a5;
  v41 = a5;
  v42 = a9;
  type metadata accessor for AsyncKeyedState.CodingKeys();
  swift_getWitnessTable();
  v11 = sub_1E588C2E4();
  v32 = *(v11 - 8);
  v33 = v11;
  v12 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E588C484();
  if (v9)
  {
    v23 = a1;
  }

  else
  {
    v16 = v30;
    v25 = a1;
    LOBYTE(v39) = 0;
    v17 = v33;
    sub_1E588C2A4();
    v19 = v18;
    type metadata accessor for AsyncState();
    sub_1E588BC84();
    v38 = 1;
    v36 = v16;
    v37 = v27;
    WitnessTable = swift_getWitnessTable();
    v34 = v28;
    v35 = WitnessTable;
    swift_getWitnessTable();
    sub_1E588C2C4();
    (*(v32 + 8))(v14, v17);
    v22 = v39;
    v23 = v25;
    v24 = v26;
    *v26 = v19;
    v24[1] = v22;
  }

  return __swift_destroy_boxed_opaque_existential_0(v23);
}

uint64_t AsyncState<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a3;
  v19 = a4;
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v17[0] = a2;
  type metadata accessor for AsyncState.CodingKeys();
  swift_getWitnessTable();
  v7 = sub_1E588C344();
  v20 = *(v7 - 8);
  v8 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v17 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = v17[1];
  sub_1E588C494();
  v24 = 0;
  type metadata accessor for AsyncStateValue();
  v22 = v18;
  v23 = v19;
  swift_getWitnessTable();
  v13 = v21;
  sub_1E588C334();
  if (v13)
  {
    return (*(v20 + 8))(v10, v7);
  }

  v15 = v20;
  v16 = *(v12 + *(v17[0] + 36));
  v24 = 1;
  sub_1E588C314();
  return (*(v15 + 8))(v10, v7);
}

uint64_t AsyncState<>.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v31 = a2;
  v32 = a3;
  v28 = a4;
  v34 = type metadata accessor for AsyncStateValue();
  v30 = *(v34 - 8);
  v5 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v35 = &v26 - v6;
  type metadata accessor for AsyncState.CodingKeys();
  swift_getWitnessTable();
  v33 = sub_1E588C2E4();
  v29 = *(v33 - 8);
  v7 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v9 = &v26 - v8;
  v10 = type metadata accessor for AsyncState();
  v27 = *(v10 - 8);
  v11 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v26 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15 = v36;
  sub_1E588C484();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v16 = v13;
  v18 = v29;
  v17 = v30;
  v39 = 0;
  v36 = v10;
  v37 = v31;
  v38 = v32;
  v19 = v34;
  swift_getWitnessTable();
  v20 = v33;
  sub_1E588C2C4();
  (*(v17 + 32))(v16, v35, v19);
  v39 = 1;
  sub_1E588C2A4();
  v22 = v21;
  (*(v18 + 8))(v9, v20);
  v23 = v36;
  *&v16[*(v36 + 36)] = v22;
  v24 = v27;
  (*(v27 + 16))(v28, v16, v23);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return (*(v24 + 8))(v16, v23);
}

uint64_t sub_1E58707D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  return AsyncState<>.init(from:)(a1, *(a3 - 8), *(a3 - 16), a4);
}

uint64_t AsyncStateValue<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v105 = a2;
  v103 = a4;
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v89 = type metadata accessor for AsyncStateValue.FailedCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v8 = sub_1E588C344();
  v92 = *(v8 - 8);
  v93 = v8;
  v9 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v91 = &v73 - v10;
  v11 = type metadata accessor for AsyncStateValue.FetchedCodingKeys();
  v12 = swift_getWitnessTable();
  v86 = v11;
  v85 = v12;
  v87 = sub_1E588C344();
  v90 = *(v87 - 8);
  v13 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v87);
  v84 = &v73 - v14;
  v101 = sub_1E588BA34();
  v94 = *(v101 - 8);
  v15 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v101);
  v104 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for AsyncStateValue.RefreshingCodingKeys();
  v99 = swift_getWitnessTable();
  v100 = v17;
  v98 = sub_1E588C344();
  v83 = *(v98 - 8);
  v18 = *(v83 + 64);
  v19 = MEMORY[0x1EEE9AC00](v98);
  v97 = &v73 - v20;
  v96 = *(v6 - 8);
  v21 = *(v96 + 64);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v102 = &v73 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v95 = &v73 - v24;
  v25 = type metadata accessor for AsyncStateValue.FetchingCodingKeys();
  v26 = swift_getWitnessTable();
  v82 = v25;
  v80 = v26;
  v81 = sub_1E588C344();
  v79 = *(v81 - 8);
  v27 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v81);
  v78 = &v73 - v28;
  type metadata accessor for AsyncStateValue.NoneCodingKeys();
  v76 = swift_getWitnessTable();
  v77 = sub_1E588C344();
  v75 = *(v77 - 8);
  v29 = *(v75 + 64);
  v30 = MEMORY[0x1EEE9AC00](v77);
  v74 = &v73 - v31;
  v32 = *(a2 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v35 = &v73 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AsyncStateValue.CodingKeys();
  swift_getWitnessTable();
  v110 = sub_1E588C344();
  v107 = *(v110 - 8);
  v36 = *(v107 + 64);
  MEMORY[0x1EEE9AC00](v110);
  v38 = &v73 - v37;
  v39 = a1;
  v41 = a1[3];
  v40 = a1[4];
  __swift_project_boxed_opaque_existential_1(v39, v41);
  v109 = v38;
  sub_1E588C494();
  (*(v32 + 16))(v35, v106, v105);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v47 = v96;
    v49 = v97;
    v48 = v98;
    v50 = v104;
    if (EnumCaseMultiPayload)
    {
      v65 = v101;
      v66 = *(swift_getTupleTypeMetadata2() + 48);
      (*(v47 + 32))(v102, v35, v6);
      v67 = v94;
      (*(v94 + 32))(v50, &v35[v66], v65);
      v116 = 3;
      v68 = v84;
      v69 = v109;
      sub_1E588C2F4();
      v115 = 0;
      v70 = v87;
      v71 = v108;
      sub_1E588C334();
      if (v71)
      {
        (*(v90 + 8))(v68, v70);
        (*(v67 + 8))(v104, v65);
        (*(v47 + 8))(v102, v6);
        return (*(v107 + 8))(v69, v110);
      }

      else
      {
        v114 = 1;
        sub_1E5872F6C(&qword_1EE2CE358);
        v72 = v104;
        sub_1E588C334();
        (*(v90 + 8))(v68, v70);
        (*(v94 + 8))(v72, v65);
        (*(v47 + 8))(v102, v6);
        return (*(v107 + 8))(v109, v110);
      }
    }

    else
    {
      v51 = v95;
      v52 = v6;
      (*(v96 + 32))(v95, v35, v6);
      v113 = 2;
      v53 = v109;
      sub_1E588C2F4();
      sub_1E588C334();
      (*(v83 + 8))(v49, v48);
      (*(v47 + 8))(v51, v52);
      return (*(v107 + 8))(v53, v110);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v55 = *v35;
    v54 = *(v35 + 1);
    v56 = *(v35 + 3);
    v106 = *(v35 + 2);
    v57 = *(v35 + 4);
    v120 = 4;
    v58 = v91;
    v60 = v109;
    v59 = v110;
    sub_1E588C2F4();
    v119 = 0;
    v61 = v93;
    v62 = v108;
    sub_1E588C304();
    if (v62)
    {
    }

    else
    {
      v108 = v56;

      v118 = 1;
      sub_1E588C324();
      v117 = 2;
      sub_1E588C304();
    }

    (*(v92 + 8))(v58, v61);
    return (*(v107 + 8))(v60, v59);
  }

  else
  {
    v43 = v109;
    if (EnumCaseMultiPayload == 3)
    {
      v111 = 0;
      v44 = v74;
      v45 = v110;
      sub_1E588C2F4();
      (*(v75 + 8))(v44, v77);
      return (*(v107 + 8))(v43, v45);
    }

    else
    {
      v112 = 1;
      v63 = v78;
      v64 = v110;
      sub_1E588C2F4();
      (*(v79 + 8))(v63, v81);
      return (*(v107 + 8))(v43, v64);
    }
  }
}

uint64_t AsyncStateValue<>.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v125 = a3;
  v105 = a4;
  v6 = type metadata accessor for AsyncStateValue.FailedCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v118 = v6;
  v103 = sub_1E588C2E4();
  v102 = *(v103 - 8);
  v7 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v103);
  v120 = &v90 - v8;
  v9 = type metadata accessor for AsyncStateValue.FetchedCodingKeys();
  v10 = swift_getWitnessTable();
  v116 = v9;
  v115 = v10;
  v101 = sub_1E588C2E4();
  v100 = *(v101 - 8);
  v11 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v101);
  v119 = &v90 - v12;
  v13 = type metadata accessor for AsyncStateValue.RefreshingCodingKeys();
  v14 = swift_getWitnessTable();
  v113 = v13;
  v112 = v14;
  v99 = sub_1E588C2E4();
  v98 = *(v99 - 8);
  v15 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v99);
  v114 = &v90 - v16;
  v17 = type metadata accessor for AsyncStateValue.FetchingCodingKeys();
  v18 = swift_getWitnessTable();
  v111 = v17;
  v110 = v18;
  v97 = sub_1E588C2E4();
  v96 = *(v97 - 8);
  v19 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v97);
  v109 = &v90 - v20;
  v21 = type metadata accessor for AsyncStateValue.NoneCodingKeys();
  v22 = swift_getWitnessTable();
  v108 = v21;
  v107 = v22;
  v95 = sub_1E588C2E4();
  v94 = *(v95 - 8);
  v23 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v95);
  v106 = &v90 - v24;
  type metadata accessor for AsyncStateValue.CodingKeys();
  v128 = swift_getWitnessTable();
  v25 = sub_1E588C2E4();
  v122 = *(v25 - 8);
  v123 = v25;
  v26 = *(v122 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v90 - v27;
  v124 = a2;
  v121 = type metadata accessor for AsyncStateValue();
  v104 = *(v121 - 8);
  v29 = *(v104 + 64);
  v30 = MEMORY[0x1EEE9AC00](v121);
  v32 = (&v90 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = MEMORY[0x1EEE9AC00](v30);
  v35 = &v90 - v34;
  v36 = MEMORY[0x1EEE9AC00](v33);
  v38 = &v90 - v37;
  MEMORY[0x1EEE9AC00](v36);
  v40 = &v90 - v39;
  v41 = a1;
  v43 = a1[3];
  v42 = a1[4];
  v127 = v41;
  __swift_project_boxed_opaque_existential_1(v41, v43);
  v126 = v28;
  v44 = v133;
  sub_1E588C484();
  if (v44)
  {
    goto LABEL_11;
  }

  v92 = v38;
  v91 = v32;
  v93 = v35;
  v133 = 0;
  v128 = v40;
  v45 = v123;
  v46 = v126;
  *&v129 = sub_1E588C2D4();
  sub_1E588BE54();
  swift_getWitnessTable();
  *&v131 = sub_1E588C0C4();
  *(&v131 + 1) = v47;
  *&v132 = v48;
  *(&v132 + 1) = v49;
  sub_1E588C0B4();
  swift_getWitnessTable();
  sub_1E588BFD4();
  v50 = v129;
  if (v129 == 5 || (v90 = v131, v129 = v131, v130 = v132, (sub_1E588BFE4() & 1) == 0))
  {
    v55 = sub_1E588C164();
    swift_allocError();
    v57 = v56;
    v58 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF9400, &qword_1E588D620) + 48);
    *v57 = v121;
    sub_1E588C284();
    sub_1E588C154();
    (*(*(v55 - 8) + 104))(v57, *MEMORY[0x1E69E6AF8], v55);
    swift_willThrow();
    (*(v122 + 8))(v46, v45);
    goto LABEL_10;
  }

  if (v50 <= 1)
  {
    if (v50)
    {
      LOBYTE(v129) = 1;
      v74 = v109;
      v75 = v133;
      sub_1E588C274();
      if (v75)
      {
        goto LABEL_22;
      }

      (*(v96 + 8))(v74, v97);
      (*(v122 + 8))(v46, v45);
      swift_unknownObjectRelease();
      v63 = v128;
      v64 = v121;
    }

    else
    {
      LOBYTE(v129) = 0;
      v61 = v106;
      v62 = v133;
      sub_1E588C274();
      if (v62)
      {
        goto LABEL_22;
      }

      (*(v94 + 8))(v61, v95);
      (*(v122 + 8))(v46, v45);
      swift_unknownObjectRelease();
      v63 = v128;
      v64 = v121;
    }

    swift_storeEnumTagMultiPayload();
    v88 = v127;
    v89 = v105;
    v87 = v104;
    goto LABEL_27;
  }

  if (v50 == 2)
  {
    LOBYTE(v129) = 2;
    v65 = v114;
    v66 = v133;
    sub_1E588C274();
    if (!v66)
    {
      v67 = v92;
      v68 = v99;
      sub_1E588C2C4();
      v69 = v122;
      (*(v98 + 8))(v65, v68);
      (*(v69 + 8))(v46, v45);
      swift_unknownObjectRelease();
      v64 = v121;
LABEL_26:
      swift_storeEnumTagMultiPayload();
      v87 = v104;
      v63 = v128;
      (*(v104 + 32))(v128, v67, v64);
      v88 = v127;
      v89 = v105;
      goto LABEL_27;
    }

    goto LABEL_22;
  }

  if (v50 != 3)
  {
    LOBYTE(v129) = 4;
    v70 = v120;
    v71 = v133;
    sub_1E588C274();
    v72 = v122;
    if (!v71)
    {
      LOBYTE(v129) = 0;
      v73 = v103;
      v133 = sub_1E588C294();
      v78 = v77;
      LOBYTE(v129) = 1;
      v125 = sub_1E588C2B4();
      LOBYTE(v129) = 2;
      v80 = sub_1E588C294();
      v81 = *(v102 + 8);
      v124 = v80;
      v82 = v70;
      v84 = v83;
      v81(v82, v73);
      (*(v72 + 8))(v46, v45);
      swift_unknownObjectRelease();
      v85 = v91;
      *v91 = v133;
      v85[1] = v78;
      v86 = v124;
      v85[2] = v125;
      v85[3] = v86;
      v85[4] = v84;
      v64 = v121;
      swift_storeEnumTagMultiPayload();
      v87 = v104;
      v63 = v128;
      (*(v104 + 32))(v128, v85, v64);
      v88 = v127;
      v89 = v105;
LABEL_27:
      (*(v87 + 32))(v89, v63, v64);
      v59 = v88;
      return __swift_destroy_boxed_opaque_existential_0(v59);
    }

LABEL_22:
    (*(v122 + 8))(v46, v45);
    goto LABEL_10;
  }

  LOBYTE(v129) = 3;
  v51 = v119;
  v52 = v133;
  sub_1E588C274();
  v53 = v46;
  v54 = v122;
  if (!v52)
  {
    LOBYTE(v129) = 0;
    v67 = v93;
    v76 = v101;
    sub_1E588C2C4();
    sub_1E588BA34();
    v79 = *(swift_getTupleTypeMetadata2() + 48);
    LOBYTE(v129) = 1;
    sub_1E5872F6C(qword_1ECFF9408);
    sub_1E588C2C4();
    (*(v100 + 8))(v51, v76);
    (*(v54 + 8))(v126, v45);
    swift_unknownObjectRelease();
    v64 = v121;
    goto LABEL_26;
  }

  (*(v122 + 8))(v53, v45);
LABEL_10:
  swift_unknownObjectRelease();
LABEL_11:
  v59 = v127;
  return __swift_destroy_boxed_opaque_existential_0(v59);
}

uint64_t AsyncKeyedState<>.hash(into:)(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *v3;
  v7 = *(v3 + 8);
  if (*v3 == 0.0)
  {
    v6 = 0.0;
  }

  MEMORY[0x1E692FF40](*&v6);
  v9 = a2[2];
  v8 = a2[3];
  v10 = *(a3 + 8);
  type metadata accessor for AsyncState();
  v11 = a2[4];
  swift_getWitnessTable();
  return sub_1E588BC94();
}

uint64_t AsyncKeyedState<>.hashValue.getter(void *a1, uint64_t a2)
{
  v5 = v2[1];
  v8 = *v2;
  v9 = v5;
  sub_1E588C434();
  AsyncKeyedState<>.hash(into:)(v7, a1, a2);
  return sub_1E588C464();
}

uint64_t sub_1E5872524(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_1E588C434();
  AsyncKeyedState<>.hash(into:)(v6, a2, v4);
  return sub_1E588C464();
}

uint64_t AsyncState<>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a2 + 16);
  v8 = *(a3 + 8);
  v9 = type metadata accessor for AsyncStateValue();
  AsyncStateValue<>.hash(into:)(a1, v9, a3);
  v10 = *(v3 + *(a2 + 36));
  if (v10 == 0.0)
  {
    v10 = 0.0;
  }

  return MEMORY[0x1E692FF40](*&v10);
}

uint64_t AsyncState<>.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_1E588C434();
  AsyncState<>.hash(into:)(v5, a1, a2);
  return sub_1E588C464();
}

uint64_t AsyncStateValue<>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v30[1] = a3;
  v6 = sub_1E588BA34();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 16);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v9);
  v17 = v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(*(a2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v20 = v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v4, a2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v29 = *(swift_getTupleTypeMetadata2() + 48);
      (*(v13 + 32))(v17, v20, v12);
      (*(v7 + 32))(v11, &v20[v29], v6);
      MEMORY[0x1E692FF30](3);
      sub_1E588BCE4();
      sub_1E5872F6C(&qword_1EE2CE350);
      sub_1E588BCE4();
      (*(v7 + 8))(v11, v6);
    }

    else
    {
      (*(v13 + 32))(v17, v20, v12);
      MEMORY[0x1E692FF30](2);
      sub_1E588BCE4();
    }

    return (*(v13 + 8))(v17, v12);
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v23 = *v20;
    v24 = *(v20 + 1);
    v25 = *(v20 + 2);
    v26 = *(v20 + 3);
    v27 = *(v20 + 4);
    MEMORY[0x1E692FF30](4);
    sub_1E588BD94();

    MEMORY[0x1E692FF30](v25);
    sub_1E588BD94();
  }

  else
  {
    return MEMORY[0x1E692FF30](EnumCaseMultiPayload != 3);
  }
}

uint64_t AsyncStateValue<>.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_1E588C434();
  AsyncStateValue<>.hash(into:)(v5, a1, a2);
  return sub_1E588C464();
}

uint64_t sub_1E5872A70(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t, uint64_t))
{
  v6 = *(a3 - 8);
  sub_1E588C434();
  a4(v8, a2, v6);
  return sub_1E588C464();
}

unint64_t sub_1E5872ACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 40);
  v9 = sub_1E588BCD4();

  return sub_1E5872B28(a1, v9, a2, a3);
}

unint64_t sub_1E5872B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[1] = a1;
  v24 = a4;
  v6 = *(*(a3 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v23[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v7 + 16);
    v14 = v7 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v25 + 48) + v17 * v12, a3);
      v20 = *(v24 + 8);
      v21 = sub_1E588BD04();
      (*v18)(v9, a3);
      if (v21)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v23[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

uint64_t sub_1E5872CF4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3[3];
  v7 = a3[5];
  v8 = type metadata accessor for AsyncState();
  v9 = sub_1E588C0A4();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v21 - v12;
  v14 = a3[2];
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  (*(v17 + 16))(&v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v14);
  v18 = *(v8 - 8);
  (*(v18 + 16))(v13, a1, v8);
  (*(v18 + 56))(v13, 0, 1, v8);
  v19 = a3[4];
  sub_1E588BC84();
  return sub_1E588BCC4();
}

uint64_t sub_1E5872F6C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1E588BA34();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E5873004(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(*(a3 + 16) - 8) + 64);
  v6 = *(sub_1E588BA34() - 8);
  v7 = ((v5 + *(v6 + 80)) & ~*(v6 + 80)) + *(v6 + 64);
  if (v7 <= v5)
  {
    v7 = v5;
  }

  v8 = 40;
  if (v7 > 0x28)
  {
    v8 = v7;
  }

  v9 = 252 - (1u >> (8 * v8));
  if (v8 >= 4)
  {
    v9 = 252;
  }

  if (!a2)
  {
    return 0;
  }

  if (v9 >= a2)
  {
    goto LABEL_29;
  }

  v10 = v8 + 1;
  v11 = 8 * (v8 + 1);
  if ((v8 + 1) <= 3)
  {
    v14 = ((~(-1 << v11) + a2 - v9) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v14 < 2)
    {
LABEL_29:
      v16 = *(a1 + v8);
      if (v9 <= (v16 ^ 0xFFu))
      {
        return 0;
      }

      else
      {
        return (256 - v16);
      }
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_29;
  }

LABEL_18:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    if (v10 > 2)
    {
      if (v10 == 3)
      {
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v10) = *a1;
      }
    }

    else if (v10 == 1)
    {
      LODWORD(v10) = *a1;
    }

    else
    {
      LODWORD(v10) = *a1;
    }
  }

  return v9 + (v10 | v15) + 1;
}

void sub_1E58731CC(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(*(*(a4 + 16) - 8) + 64);
  v8 = *(sub_1E588BA34() - 8);
  v9 = ((v7 + *(v8 + 80)) & ~*(v8 + 80)) + *(v8 + 64);
  if (v9 <= v7)
  {
    v9 = v7;
  }

  if (v9 <= 0x28)
  {
    v9 = 40;
  }

  v10 = 252 - (1u >> (8 * v9));
  if (v9 >= 4)
  {
    v10 = 252;
  }

  v11 = v9 + 1;
  if (v10 >= a3)
  {
    v12 = 0;
    if (v10 < a2)
    {
      goto LABEL_19;
    }

LABEL_23:
    if (v12 > 1)
    {
      if (v12 != 2)
      {
        *&a1[v11] = 0;
        if (!a2)
        {
          return;
        }

LABEL_35:
        a1[v9] = -a2;
        return;
      }

      *&a1[v11] = 0;
    }

    else if (v12)
    {
      a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_35;
  }

  v12 = 1;
  if (v11 <= 3)
  {
    v13 = ((~(-1 << (8 * v11)) + a3 - v10) >> (8 * v11)) + 1;
    v14 = HIWORD(v13);
    if (v13 < 0x100)
    {
      v15 = 1;
    }

    else
    {
      v15 = 2;
    }

    if (v13 >= 2)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    if (v14)
    {
      v12 = 4;
    }

    else
    {
      v12 = v16;
    }
  }

  if (v10 >= a2)
  {
    goto LABEL_23;
  }

LABEL_19:
  v17 = ~v10 + a2;
  if (v11 >= 4)
  {
    bzero(a1, v11);
    *a1 = v17;
    v18 = 1;
    if (v12 > 1)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  v18 = (v17 >> (8 * v11)) + 1;
  if (v9 == -1)
  {
LABEL_39:
    if (v12 > 1)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  v19 = v17 & ~(-1 << (8 * v11));
  bzero(a1, v11);
  if (v11 == 3)
  {
    *a1 = v19;
    a1[2] = BYTE2(v19);
    goto LABEL_39;
  }

  if (v11 == 2)
  {
    *a1 = v19;
    if (v12 > 1)
    {
LABEL_43:
      if (v12 == 2)
      {
        *&a1[v11] = v18;
      }

      else
      {
        *&a1[v11] = v18;
      }

      return;
    }
  }

  else
  {
    *a1 = v17;
    if (v12 > 1)
    {
      goto LABEL_43;
    }
  }

LABEL_40:
  if (v12)
  {
    a1[v11] = v18;
  }
}

uint64_t sub_1E5873408(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(*(a3 + 16) - 8) + 64);
  v6 = *(sub_1E588BA34() - 8);
  v7 = ((v5 + *(v6 + 80)) & ~*(v6 + 80)) + *(v6 + 64);
  if (v7 <= v5)
  {
    v7 = v5;
  }

  v8 = 40;
  if (v7 > 0x28)
  {
    v8 = v7;
  }

  v9 = 252 - (1u >> (8 * v8));
  if (v8 >= 4)
  {
    v9 = 252;
  }

  if (!a2)
  {
    return 0;
  }

  if (v9 >= a2)
  {
    goto LABEL_31;
  }

  v10 = (v8 & 0xFFFFFFFFFFFFFFF8) + 16;
  v11 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = a2 - v9 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v10);
      if (v15)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v15 = *(a1 + v10);
      if (v15)
      {
        goto LABEL_27;
      }
    }

LABEL_31:
    v18 = *(a1 + v8);
    if (v9 <= (v18 ^ 0xFFu))
    {
      return 0;
    }

    else
    {
      return (256 - v18);
    }
  }

  if (!v14)
  {
    goto LABEL_31;
  }

  v15 = *(a1 + v10);
  if (!v15)
  {
    goto LABEL_31;
  }

LABEL_27:
  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v9 + (v11 | v17) + 1;
}

void sub_1E5873588(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(*(*(a4 + 16) - 8) + 64);
  v8 = *(sub_1E588BA34() - 8);
  v9 = ((v7 + *(v8 + 80)) & ~*(v8 + 80)) + *(v8 + 64);
  if (v9 <= v7)
  {
    v9 = v7;
  }

  if (v9 <= 0x28)
  {
    v9 = 40;
  }

  v10 = 252 - (1u >> (8 * v9));
  if (v9 >= 4)
  {
    v10 = 252;
  }

  v11 = (v9 & 0xFFFFFFFFFFFFFFF8) + 16;
  if ((v9 & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v12 = a3 - v10 + 1;
  }

  else
  {
    v12 = 2;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v10 < a3)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (a2 <= v10)
  {
    if (v15 > 1)
    {
      if (v15 != 2)
      {
        *(a1 + v11) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_39;
      }

      *(a1 + v11) = 0;
    }

    else if (v15)
    {
      *(a1 + v11) = 0;
      if (!a2)
      {
        return;
      }

LABEL_39:
      *(a1 + v9) = -a2;
      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_39;
  }

  if ((v9 & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v16 = a2 - v10;
  }

  else
  {
    v16 = 1;
  }

  if ((v9 & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v17 = ~v10 + a2;
    bzero(a1, v11);
    *a1 = v17;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      *(a1 + v11) = v16;
    }

    else
    {
      *(a1 + v11) = v16;
    }
  }

  else if (v15)
  {
    *(a1 + v11) = v16;
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1E587373C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1E5873784(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1E58737E4(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_1E5873874(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for SideEffectCollisionBehavior(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SideEffectCollisionBehavior(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for SideEffectDisposalBehavior(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SideEffectDisposalBehavior(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1E5873E4C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    v4 = *(a1 + 16);
    v10[0] = *a1;
    v10[1] = v4;
    v5 = *(a1 + 48);
    v10[2] = *(a1 + 32);
    v10[3] = v5;
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    sub_1E587AB4C(v10, a2, isUniquelyReferenced_nonNull_native);
    result = sub_1E5875FCC(a2);
    *v2 = v9;
  }

  else
  {
    sub_1E586576C(a1, &qword_1ECFF94B0, &qword_1E588E380);
    sub_1E587629C(a2, v10);
    sub_1E5875FCC(a2);
    return sub_1E586576C(v10, &qword_1ECFF94B0, &qword_1E588E380);
  }

  return result;
}

uint64_t sub_1E5873F10(uint64_t a1, uint64_t *a2, unsigned __int8 *a3, uint64_t a4)
{
  v6 = *a3;
  sub_1E5875F70(a1, v17);
  v7 = *a2;
  v11 = MEMORY[0x1E69E5FE0];
  v12 = MEMORY[0x1E69E5FE8];
  *&v10 = v7;
  if (v6 == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
  }

  else
  {
    Strong = 0;
  }

  sub_1E586DDBC(&v10, v13);
  v14 = Strong;
  v15 = v6;
  v16 = a4;
  swift_beginAccess();

  sub_1E5873E4C(v13, v17);
  return swift_endAccess();
}

uint64_t sub_1E5873FD4(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v2 + 112);
  v25[2] = a1;

  v5 = sub_1E5876518(sub_1E58764F8, v25, v4);

  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 64);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  while (v8)
  {
LABEL_11:
    v13 = __clz(__rbit64(v8)) | (v11 << 6);
    sub_1E5875F70(*(v5 + 48) + 40 * v13, v31);
    sub_1E587621C(*(v5 + 56) + (v13 << 6), &v32);
    swift_beginAccess();
    v14 = *(v2 + 112);
    v15 = sub_1E587A464(v31);
    if (v16)
    {
      v17 = v15;
      v18 = *(v2 + 112);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = *(v2 + 112);
      v26 = v20;
      *(v2 + 112) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1E587AE64();
        v20 = v26;
      }

      sub_1E5875FCC(*(v20 + 48) + 40 * v17);
      v21 = (*(v20 + 56) + (v17 << 6));
      v23 = *v21;
      v22 = v21[1];
      v24 = v21[3];
      v29 = v21[2];
      v30 = v24;
      v27 = v23;
      v28 = v22;
      sub_1E587634C(v17, v20);
      *(v2 + 112) = v20;
    }

    else
    {
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
    }

    v8 &= v8 - 1;
    sub_1E586576C(&v27, &qword_1ECFF94B0, &qword_1E588E380);
    swift_endAccess();
    result = sub_1E586576C(v31, &qword_1ECFF94B8, &qword_1E588E388);
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v9)
    {
    }

    v8 = *(v5 + 64 + 8 * v12);
    ++v11;
    if (v8)
    {
      v11 = v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E58741F8(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1E5875F70(a1, v15);
  sub_1E587621C(a2, v16 + 8);
  sub_1E5876B48(v15, v12, &qword_1ECFF94B8, &qword_1E588E388);
  sub_1E586D79C(v13 + 8, v11);
  sub_1E58768B0(v13 + 8);
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  v5 = sub_1E588BCF4();
  v6 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v7 = sub_1E588BCF4();
  __swift_destroy_boxed_opaque_existential_0(v11);
  sub_1E5875FCC(v12);
  if (v5 == v7)
  {
    v13[2] = v16[2];
    v13[3] = v17;
    v14 = v18;
    v12[0] = v15[0];
    v12[1] = v15[1];
    v13[0] = v16[0];
    v13[1] = v16[1];
    v8 = BYTE8(v17);
    sub_1E58768B0(v13 + 8);
    v9 = v8 ^ 1;
    sub_1E5875FCC(v12);
  }

  else
  {
    sub_1E586576C(v15, &qword_1ECFF94B8, &qword_1E588E388);
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_1E5874358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1E5874378, a4, 0);
}

uint64_t sub_1E5874378()
{
  v1 = v0[2];
  sub_1E5873FD4(v0[3]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_1E58743D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[112] = v3;
  v4[111] = a3;
  v4[110] = a2;
  v4[109] = a1;
  v5 = sub_1E588BEA4();
  v4[113] = v5;
  v6 = *(v5 - 8);
  v4[114] = v6;
  v7 = *(v6 + 64) + 15;
  v4[115] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECFF9178, &qword_1E588D220) - 8) + 64) + 15;
  v4[116] = swift_task_alloc();
  v9 = sub_1E588BEE4();
  v4[117] = v9;
  v10 = *(v9 - 8);
  v4[118] = v10;
  v11 = *(v10 + 64) + 15;
  v4[119] = swift_task_alloc();
  v4[120] = swift_task_alloc();
  v12 = type metadata accessor for SideEffect();
  v4[121] = v12;
  v13 = *(v12 - 8);
  v4[122] = v13;
  v14 = *(v13 + 64) + 15;
  v4[123] = swift_task_alloc();
  v4[124] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5863150, v3, 0);
}

uint64_t sub_1E58745BC()
{
  v2 = *v1;
  v3 = *(*v1 + 1016);
  v4 = *v1;
  *(*v1 + 1032) = v0;

  v5 = *(v2 + 896);
  if (v0)
  {
    v6 = sub_1E5874AFC;
  }

  else
  {
    v6 = sub_1E58746E8;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1E58746E8()
{
  v24 = v0;
  sub_1E5876B48(v0 + 160, v0 + 440, &qword_1ECFF94A0, &qword_1E588E358);
  v1 = *(v0 + 1008);
  if (*(v0 + 464))
  {
    v2 = *(v0 + 456);
    *(v0 + 400) = *(v0 + 440);
    *(v0 + 416) = v2;
    *(v0 + 432) = *(v0 + 472);
    isCancelled = swift_task_isCancelled();
    v4 = *(v0 + 1008);
    v5 = *(v0 + 1000);
    v6 = *(v0 + 960);
    v7 = *(v0 + 944);
    v8 = *(v0 + 936);
    if ((isCancelled & 1) == 0)
    {
      v9 = *(v0 + 896);
      sub_1E5875F70(v0 + 400, v0 + 480);
      memset(v23, 0, sizeof(v23));
      swift_beginAccess();
      sub_1E5873E4C(v23, v0 + 480);
      swift_endAccess();
    }

    sub_1E5875FCC(v0 + 400);
    (*(v7 + 8))(v6, v8);
    v10 = v0 + 160;
  }

  else
  {
    v11 = *(v0 + 1000);
    v12 = *(v0 + 960);
    v13 = *(v0 + 944);
    v14 = *(v0 + 936);

    (*(v13 + 8))(v12, v14);
    sub_1E586576C(v0 + 160, &qword_1ECFF94A0, &qword_1E588E358);
    v10 = v0 + 440;
  }

  sub_1E586576C(v10, &qword_1ECFF94A0, &qword_1E588E358);
  v15 = *(v0 + 992);
  v16 = *(v0 + 984);
  v17 = *(v0 + 960);
  v18 = *(v0 + 952);
  v19 = *(v0 + 928);
  v20 = *(v0 + 920);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1E58748E8()
{
  v1 = *(*v0 + 1048);
  v2 = *(*v0 + 896);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E58749F8, v2, 0);
}

uint64_t sub_1E58749F8()
{
  v1 = v0[130];
  v2 = v0[123];
  v3 = v0[122];
  v4 = v0[121];
  v5 = v0[119];
  v6 = v0[118];
  v7 = v0[117];

  (*(v3 + 8))(v2, v4);
  (*(v6 + 8))(v5, v7);
  sub_1E5875FCC((v0 + 15));
  v8 = v0[124];
  v9 = v0[123];
  v10 = v0[120];
  v11 = v0[119];
  v12 = v0[116];
  v13 = v0[115];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1E5874AFC()
{
  v55 = v0;
  v1 = v0 + 440;
  v2 = *(v0 + 1032);
  v3 = *(v0 + 1024);
  v4 = *(v0 + 920);
  v5 = *(v0 + 904);
  *(v0 + 864) = v2;
  v6 = v2;
  if (swift_dynamicCast())
  {

    if (qword_1EE2CD5E8 != -1)
    {
      swift_once();
    }

    v7 = sub_1E588BAD4();
    __swift_project_value_buffer(v7, qword_1EE2CF9F8);
    sub_1E5876B48(v0 + 160, v0 + 560, &qword_1ECFF94A0, &qword_1E588E358);
    v8 = sub_1E588BAB4();
    v9 = sub_1E588C024();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *&v54[0] = v11;
      *v10 = 136446210;
      sub_1E5876B48(v0 + 560, v0 + 600, &qword_1ECFF94A0, &qword_1E588E358);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF94A0, &qword_1E588E358);
      v12 = sub_1E588BD74();
      v14 = v13;
      sub_1E586576C(v0 + 560, &qword_1ECFF94A0, &qword_1E588E358);
      v15 = sub_1E586163C(v12, v14, v54);

      *(v10 + 4) = v15;
      v1 = v0 + 440;
      _os_log_impl(&dword_1E585C000, v8, v9, "Cancelled effect with key: %{public}s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x1E6930700](v11, -1, -1);
      MEMORY[0x1E6930700](v10, -1, -1);
    }

    else
    {

      sub_1E586576C(v0 + 560, &qword_1ECFF94A0, &qword_1E588E358);
    }

    (*(*(v0 + 912) + 8))(*(v0 + 920), *(v0 + 904));
  }

  else
  {

    if (qword_1EE2CD5E8 != -1)
    {
      swift_once();
    }

    v16 = *(v0 + 1032);
    v17 = sub_1E588BAD4();
    __swift_project_value_buffer(v17, qword_1EE2CF9F8);
    sub_1E5876B48(v0 + 160, v0 + 360, &qword_1ECFF94A0, &qword_1E588E358);
    v18 = v16;
    v19 = sub_1E588BAB4();
    v20 = sub_1E588C014();

    v21 = os_log_type_enabled(v19, v20);
    v22 = *(v0 + 1032);
    if (v21)
    {
      v23 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *&v54[0] = v53;
      *v23 = 136446466;
      sub_1E5876B48(v0 + 360, v0 + 520, &qword_1ECFF94A0, &qword_1E588E358);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF94A0, &qword_1E588E358);
      v24 = sub_1E588BD74();
      v26 = v25;
      sub_1E586576C(v0 + 360, &qword_1ECFF94A0, &qword_1E588E358);
      v27 = sub_1E586163C(v24, v26, v54);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2114;
      v28 = v22;
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 14) = v29;
      *v52 = v29;
      _os_log_impl(&dword_1E585C000, v19, v20, "Effect %{public}s ended with error: %{public}@", v23, 0x16u);
      sub_1E586576C(v52, &qword_1ECFF94A8, &qword_1E588E378);
      MEMORY[0x1E6930700](v52, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v53);
      MEMORY[0x1E6930700](v53, -1, -1);
      MEMORY[0x1E6930700](v23, -1, -1);
    }

    else
    {

      sub_1E586576C(v0 + 360, &qword_1ECFF94A0, &qword_1E588E358);
    }
  }

  sub_1E5876B48(v0 + 160, v1, &qword_1ECFF94A0, &qword_1E588E358);
  v30 = *(v0 + 1008);
  if (*(v0 + 464))
  {
    v31 = *(v1 + 16);
    *(v0 + 400) = *v1;
    *(v0 + 416) = v31;
    *(v0 + 432) = *(v1 + 32);
    isCancelled = swift_task_isCancelled();
    v33 = *(v0 + 1008);
    v34 = *(v0 + 1000);
    v35 = *(v0 + 960);
    v36 = *(v0 + 944);
    v37 = *(v0 + 936);
    if ((isCancelled & 1) == 0)
    {
      v38 = *(v0 + 896);
      sub_1E5875F70(v0 + 400, v0 + 480);
      memset(v54, 0, sizeof(v54));
      swift_beginAccess();
      sub_1E5873E4C(v54, v0 + 480);
      swift_endAccess();
    }

    sub_1E5875FCC(v0 + 400);
    (*(v36 + 8))(v35, v37);
    v39 = v0 + 160;
  }

  else
  {
    v40 = *(v0 + 1000);
    v41 = *(v0 + 960);
    v42 = *(v0 + 944);
    v43 = *(v0 + 936);

    (*(v42 + 8))(v41, v43);
    sub_1E586576C(v0 + 160, &qword_1ECFF94A0, &qword_1E588E358);
    v39 = v1;
  }

  sub_1E586576C(v39, &qword_1ECFF94A0, &qword_1E588E358);
  v44 = *(v0 + 992);
  v45 = *(v0 + 984);
  v46 = *(v0 + 960);
  v47 = *(v0 + 952);
  v48 = *(v0 + 928);
  v49 = *(v0 + 920);

  v50 = *(v0 + 8);

  return v50();
}

uint64_t sub_1E5875130(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v11 = (a4 + *a4);
  v8 = a4[1];
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_1E58688C4;

  return v11(a6);
}

uint64_t sub_1E5875228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECFF9178, &qword_1E588D220);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v24 - v10;
  sub_1E5876B48(a3, v24 - v10, qword_1ECFF9178, &qword_1E588D220);
  v12 = sub_1E588BEE4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1E586576C(v11, qword_1ECFF9178, &qword_1E588D220);
  }

  else
  {
    sub_1E588BED4();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1E588BE64();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1E588BD84() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_1E586576C(a3, qword_1ECFF9178, &qword_1E588D220);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1E586576C(a3, qword_1ECFF9178, &qword_1E588D220);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}