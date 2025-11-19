uint64_t sub_2541993F8(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v34 - v24;
  v26 = sub_25424E328();
  if (!v26)
  {
    return sub_25424DFD8();
  }

  v48 = v26;
  v52 = sub_25424E778();
  v39 = sub_25424E788();
  sub_25424E738();
  result = sub_25424E318();
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
      v29 = sub_25424E348();
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
      sub_25424E768();
      result = sub_25424E338();
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

uint64_t sub_254199818(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 120);
  *(v1 + 120) = a1;
}

uint64_t sub_254199860(uint64_t a1)
{
  v2 = *(v1 + 128);
  *(v1 + 128) = a1;
}

uint64_t ExpiringAsyncCache.__allocating_init(expirationDuration:)(double a1)
{
  v2 = swift_allocObject();
  ExpiringAsyncCache.init(expirationDuration:)(a1);
  return v2;
}

uint64_t ExpiringAsyncCache.init(expirationDuration:)(double a1)
{
  v3 = *v1;
  swift_defaultActor_initialize();
  v4 = v3[10];
  v5 = v3[11];
  sub_25424D8B8();
  swift_getTupleTypeMetadata2();
  v6 = v3[12];
  result = sub_25424DB48();
  *(v1 + 120) = result;
  *(v1 + 128) = 0;
  if (a1 <= 0.0)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 112) = a1;
    return v1;
  }

  return result;
}

uint64_t ExpiringAsyncCache.deinit()
{
  if (*(v0 + 128))
  {
    v1 = *(v0 + 128);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAF10, &qword_254253F40);
    sub_25424E1A8();
  }

  v2 = *(v0 + 120);

  v3 = *(v0 + 128);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t ExpiringAsyncCache.__deallocating_deinit()
{
  ExpiringAsyncCache.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_254199A50()
{
  v1 = v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90C0, &qword_254253F20);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v39 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BA1B0, qword_2542544A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v39 - v9;
  v11 = sub_25424D8B8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  result = MEMORY[0x28223BE20](v14);
  if (!v1[16])
  {
    v40 = v17;
    v43 = &v39 - v16;
    v45 = v6;
    swift_beginAccess();
    v18 = v1[15];
    v19 = v2[10];
    v20 = v2[11];
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v44 = &v39;
    v22 = v2[12];
    v46 = v18;
    MEMORY[0x28223BE20](TupleTypeMetadata2);
    *(&v39 - 4) = v19;
    *(&v39 - 3) = v20;
    v41 = v20;
    v42 = v19;
    *(&v39 - 2) = v23;
    v39 = v23;
    v24 = v12;
    v25 = sub_25424DBB8();

    WitnessTable = swift_getWitnessTable();
    v28 = sub_2541993F8(sub_25419C8AC, (&v39 - 6), v25, v11, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v27);

    sub_25419A020(v28, v10);

    if ((*(v24 + 48))(v10, 1, v11) == 1)
    {
      return sub_25419C8D0(v10);
    }

    else
    {
      v29 = v24;
      v44 = *(v24 + 32);
      v30 = v43;
      (v44)(v43, v10, v11);
      v31 = sub_25424E128();
      (*(*(v31 - 8) + 56))(v45, 1, 1, v31);
      v32 = swift_allocObject();
      swift_weakInit();
      v33 = v40;
      (*(v29 + 16))(v40, v30, v11);
      v34 = (*(v29 + 80) + 56) & ~*(v29 + 80);
      v35 = swift_allocObject();
      v35[2] = 0;
      v35[3] = 0;
      v36 = v41;
      v35[4] = v42;
      v35[5] = v36;
      v35[6] = v39;
      (v44)(v35 + v34, v33, v11);
      *(v35 + ((v13 + v34 + 7) & 0xFFFFFFFFFFFFFFF8)) = v32;
      v37 = sub_2541A93F0(0, 0, v45, &unk_254257FB0, v35);
      v38 = v1[16];
      v1[16] = v37;

      return (*(v29 + 8))(v30, v11);
    }
  }

  return result;
}

uint64_t sub_254199EBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_25424D8B8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = *(*(TupleTypeMetadata2 - 8) + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v10 = v13 - v9;
  (*(v11 + 16))(v13 - v9, a1, TupleTypeMetadata2);
  (*(*(v6 - 8) + 32))(a3, &v10[*(TupleTypeMetadata2 + 48)], v6);
  return (*(*(a2 - 8) + 8))(v10, a2);
}

uint64_t sub_25419A020@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25424D8B8();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](*(v4 - 8));
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v23 - v10;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = *(v9 + 16);
    v14 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v26 = v9;
    v24 = a2;
    v25 = v13;
    v13(&v23 - v10, v14, v4);
    result = v26;
    if (v12 == 1)
    {
LABEL_3:
      v16 = v24;
      (*(result + 32))(v24, v11, v4);
      return (*(v26 + 56))(v16, 0, 1, v4);
    }

    else
    {
      v18 = (v26 + 32);
      v19 = 1;
      while (1)
      {
        v20 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        v25(v8, v14 + *(result + 72) * v19, v4);
        sub_25419CB08(&qword_27F5B9210, MEMORY[0x277CC9578]);
        v21 = sub_25424DC68();
        v22 = *(v26 + 8);
        if (v21)
        {
          v22(v11, v4);
          (*v18)(v11, v8, v4);
        }

        else
        {
          v22(v8, v4);
        }

        ++v19;
        result = v26;
        if (v20 == v12)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v17 = *(v9 + 56);

    return v17(a2, 1, 1, v4);
  }

  return result;
}

uint64_t sub_25419A2D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = sub_25424E7A8();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25419A390, 0, 0);
}

uint64_t sub_25419A390()
{
  v1 = v0[5];
  sub_25424D868();
  if (v2 <= 0.0)
  {
    v10 = v0[6];
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    v0[12] = Strong;
    if (Strong)
    {

      return MEMORY[0x2822009F8](sub_25419A7B4, Strong, 0);
    }

    else
    {
      v12 = v0[9];

      v13 = v0[1];

      return v13();
    }
  }

  else
  {
    v3 = v0[9];
    v4 = sub_25424EC88();
    v6 = v5;
    sub_25424EB68();
    v7 = swift_task_alloc();
    v0[10] = v7;
    *v7 = v0;
    v7[1] = sub_25419A51C;
    v8 = v0[9];

    return sub_25419C31C(v4, v6, 0, 0, 1);
  }
}

uint64_t sub_25419A51C()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v8 = *v1;
  *(*v1 + 88) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_25419A750;
  }

  else
  {
    v6 = sub_25419A68C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_25419A68C()
{
  v1 = v0[6];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[12] = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_25419A7B4, Strong, 0);
  }

  else
  {
    v3 = v0[9];

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_25419A750()
{
  v1 = v0[9];

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

uint64_t sub_25419A7B4()
{
  v1 = v0[12];
  sub_25419A828();

  v2 = v0[9];

  v3 = v0[1];

  return v3();
}

uint64_t sub_25419A828()
{
  v1 = *v0;
  v2 = sub_25424D8B8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v0[16];
  v0[16] = 0;

  sub_25424D898();
  swift_beginAccess();
  v8 = v0[15];
  v19 = v0;
  v20 = v6;
  v13 = v1[10];
  v14 = v1[11];
  v15 = v1[12];
  v16 = sub_25419CA7C;
  v17 = &v18;

  swift_getTupleTypeMetadata2();
  v9 = sub_25424DBC8();
  swift_beginAccess();
  v10 = v0[15];
  v0[15] = v9;

  sub_254199A50();
  return (*(v3 + 8))(v6, v2);
}

BOOL sub_25419AA04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a5;
  v23 = a2;
  v24 = a3;
  v5 = *(*a4 + 88);
  v6 = sub_25424D8B8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v27 = sub_25424E598();
  v25 = *(v27 - 8);
  v8 = *(v25 + 64);
  MEMORY[0x28223BE20](v27);
  v10 = &v23 - v9;
  v26 = sub_25424E598();
  v11 = *(v26 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v26);
  v15 = &v23 - v14;
  v16 = *(TupleTypeMetadata2 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  v19 = &v23 - v18;
  v20 = *(v5 - 8);
  (*(v20 + 16))(&v23 - v18, v23, v5);
  (*(*(v6 - 8) + 16))(&v19[*(TupleTypeMetadata2 + 48)], v24, v6);
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v16 + 16))(v10, v19, TupleTypeMetadata2);
  (*(v16 + 56))(v10, 0, 1, TupleTypeMetadata2);
  sub_25419AD68(v10, v28, v15);
  (*(v25 + 8))(v10, v27);
  (*(v16 + 8))(v19, TupleTypeMetadata2);
  v21 = (*(v20 + 48))(v15, 1, v5) != 1;
  (*(v11 + 8))(v15, v26);
  return v21;
}

uint64_t sub_25419AD68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26[1] = a2;
  v6 = *(*v3 + 88);
  v26[0] = sub_25424D8B8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = sub_25424E598();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v26 - v12;
  v14 = *(TupleTypeMetadata2 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v11);
  v18 = v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = v26 - v19;
  (*(v9 + 16))(v13, a1, v8);
  if ((*(v14 + 48))(v13, 1, TupleTypeMetadata2) == 1)
  {
    (*(v9 + 8))(v13, v8);
  }

  else
  {
    v21 = *(v14 + 32);
    v21(v20, v13, TupleTypeMetadata2);
    v22 = *(TupleTypeMetadata2 + 48);
    if (sub_25424D828())
    {
      v21(v18, v20, TupleTypeMetadata2);
      v23 = *(TupleTypeMetadata2 + 48);
      v24 = *(v6 - 8);
      (*(v24 + 32))(a3, v18, v6);
      (*(v24 + 56))(a3, 0, 1, v6);
      return (*(*(v26[0] - 8) + 8))(&v18[v23]);
    }

    (*(v14 + 8))(v20, TupleTypeMetadata2);
  }

  return (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
}

uint64_t ExpiringAsyncCache.subscript.getter(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *v2;
  v3[5] = *v2;
  v5 = sub_25424D8B8();
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v7 = *(v6 + 64) + 15;
  v3[8] = swift_task_alloc();
  v8 = *(v4 + 88);
  v3[9] = swift_getTupleTypeMetadata2();
  v9 = sub_25424E598();
  v3[10] = v9;
  v10 = *(v9 - 8);
  v3[11] = v10;
  v11 = *(v10 + 64) + 15;
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25419B22C, v2, 0);
}

uint64_t sub_25419B22C()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[5];
  v15 = v0[6];
  v16 = v0[10];
  v7 = v0[3];
  v6 = v0[4];
  v13 = v0[9];
  v14 = v0[2];
  swift_beginAccess();
  v8 = *(v6 + 120);
  v9 = *(v5 + 80);
  v10 = *(v5 + 96);

  sub_25424DBF8();

  sub_25424D898();
  sub_25419AD68(v1, v3, v14);
  (*(v4 + 8))(v3, v15);
  (*(v2 + 8))(v1, v16);

  v11 = v0[1];

  return v11();
}

uint64_t ExpiringAsyncCache.get(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_25424D8B8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_25424D898();
  swift_beginAccess();
  v19 = v1[15];
  v9 = v3[10];
  v10 = v3[11];
  v11 = v3[12];

  v18 = sub_25424DB48();
  v15 = a1;
  v16 = v1;
  v17 = v8;
  swift_getTupleTypeMetadata2();
  sub_25424DBE8();
  sub_25424DBE8();
  swift_getWitnessTable();
  sub_25424DED8();

  v12 = v20;
  (*(v5 + 8))(v8, v4);
  return v12;
}

uint64_t sub_25419B578(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v72 = a3;
  v58 = a5;
  v74 = a2;
  v60 = a1;
  v71 = *a4;
  v6 = v71;
  v7 = *(v71 + 88);
  v66 = sub_25424D8B8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = sub_25424E598();
  v56 = *(v9 - 8);
  v57 = v9;
  v10 = *(v56 + 64);
  MEMORY[0x28223BE20](v9);
  v55 = v53 - v11;
  v12 = sub_25424E598();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v54 = v53 - v14;
  v15 = *(v6 + 80);
  v16 = swift_getTupleTypeMetadata2();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = v53 - v20;
  v70 = *(TupleTypeMetadata2 - 8);
  v22 = *(v70 + 64);
  v23 = MEMORY[0x28223BE20](v19);
  v65 = v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v69 = v53 - v26;
  v73 = v15;
  v68 = *(v15 - 8);
  v27 = *(v68 + 64);
  v28 = MEMORY[0x28223BE20](v25);
  v67 = v53 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v31 = v53 - v30;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v59 = a4;
  (*(v17 + 16))(v21, v74, v16);
  v32 = &v21[*(v16 + 48)];
  v33 = *(TupleTypeMetadata2 + 48);
  v34 = *(v7 - 8);
  v63 = *(v34 + 32);
  v64 = v34 + 32;
  v35 = v65;
  v63(v65, v32, v7);
  v36 = v66;
  v37 = *(v66 - 8);
  v38 = v7;
  v61 = *(v37 + 32);
  v62 = v37 + 32;
  v74 = TupleTypeMetadata2;
  v61(&v35[v33], &v32[v33], v66);
  v39 = v68;
  v40 = v31;
  v41 = v73;
  (*(v68 + 32))(v31, v21, v73);
  v42 = *(v74 + 48);
  v43 = v69;
  v53[1] = v38;
  v63(v69, v35, v38);
  v44 = &v35[v33];
  v45 = v41;
  v61(&v43[v42], v44, v36);
  v46 = v74;
  v47 = *(v71 + 96);
  v48 = sub_25424E2E8();
  v49 = v70;
  if (v48)
  {
    (*(v39 + 16))(v67, v40, v45);
    v50 = v55;
    (*(v49 + 16))(v55, v43, v46);
    (*(v49 + 56))(v50, 0, 1, v46);
    sub_25419AD68(v50, v58, v54);
    v51 = v50;
    v45 = v73;
    (*(v56 + 8))(v51, v57);
    sub_25424DBE8();
    sub_25424DC08();
  }

  (*(v49 + 8))(v43, v46);
  return (*(v39 + 8))(v40, v45);
}

uint64_t ExpiringAsyncCache.set(_:key:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v34 = a1;
  v4 = *v2;
  v32 = a2;
  v33 = v4;
  v31 = *(v4 + 88);
  v5 = sub_25424D8B8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = sub_25424E598();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v28 - v10;
  v29 = *(v4 + 80);
  v12 = *(v29 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v9);
  v16 = &v28 - v15;
  v17 = *(v5 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v14);
  v21 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v28 - v22;
  sub_25424D898();
  v24 = v3[14];
  sub_25424D848();
  v30 = *(v17 + 8);
  v30(v21, v5);
  (*(v12 + 16))(v16, v32, v29);
  v25 = *(TupleTypeMetadata2 + 48);
  (*(*(v31 - 8) + 16))(v11, v34);
  (*(v17 + 16))(&v11[v25], v23, v5);
  (*(*(TupleTypeMetadata2 - 8) + 56))(v11, 0, 1, TupleTypeMetadata2);
  swift_beginAccess();
  v26 = *(v33 + 96);
  sub_25424DBE8();
  sub_25424DC08();
  swift_endAccess();
  sub_254199A50();
  return (v30)(v23, v5);
}

uint64_t ExpiringAsyncCache.clear(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = v4[11];
  sub_25424D8B8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = sub_25424E598();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v20 - v10;
  v12 = v4[10];
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  (*(v15 + 16))(&v20 - v14, a1, v12);
  (*(*(TupleTypeMetadata2 - 8) + 56))(v11, 1, 1, TupleTypeMetadata2);
  swift_beginAccess();
  v16 = v4[12];
  sub_25424DBE8();
  sub_25424DC08();
  swift_endAccess();
  swift_beginAccess();
  v17 = v2[15];

  LOBYTE(TupleTypeMetadata2) = MEMORY[0x259C05A90](v18, v12, TupleTypeMetadata2, v16);

  if (TupleTypeMetadata2)
  {
    if (v2[16])
    {
      v2[16] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAF10, &qword_254253F40);
      sub_25424E1A8();
    }
  }

  return result;
}

uint64_t sub_25419C0E8(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25412F724;

  return ExpiringAsyncCache.subscript.getter(a1, a2);
}

uint64_t sub_25419C194(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_25419C1B4, v3, 0);
}

uint64_t sub_25419C1B4()
{
  v1 = v0[3];
  v2 = ExpiringAsyncCache.get(_:)(v0[2]);
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_25419C214(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v4 = *v2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](sub_25419C238, v4, 0);
}

uint64_t sub_25419C238()
{
  v1 = v0[4];
  ExpiringAsyncCache.set(_:key:)(v0[2], v0[3]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_25419C29C(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_25419C2BC, v3, 0);
}

uint64_t sub_25419C2BC()
{
  v1 = v0[3];
  ExpiringAsyncCache.clear(_:)(v0[2]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_25419C31C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_25424E798();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_25419C41C, 0, 0);
}

uint64_t sub_25419C41C()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = sub_25424E7A8();
  v7 = sub_25419CB08(&qword_27F5B9DD8, MEMORY[0x277D85928]);
  sub_25424EB48();
  sub_25419CB08(qword_27F5B9DE0, MEMORY[0x277D858F8]);
  sub_25424E7B8();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = *(MEMORY[0x277D85A58] + 4);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_25419C5AC;
  v11 = v0[11];
  v12 = v0[7];

  return MEMORY[0x2822008C8](v11, v0 + 2, v6, v7);
}

uint64_t sub_25419C5AC()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25419C768, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_25419C768()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t sub_25419C8AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[4];
  return sub_254199EBC(a1, v2[3], a2);
}

uint64_t sub_25419C8D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BA1B0, qword_2542544A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25419C938(uint64_t a1)
{
  v5 = v1[4];
  v4 = v1[5];
  v6 = v1[6];
  v7 = *(sub_25424D8B8() - 8);
  v8 = (*(v7 + 80) + 56) & ~*(v7 + 80);
  v9 = v1[2];
  v10 = v1[3];
  v11 = *(v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_25412F724;

  return sub_25419A2D0(a1, v9, v10, v1 + v8, v11);
}

uint64_t sub_25419CA84(uint64_t a1, uint64_t a2)
{
  v5 = v2[3];
  v7 = v2[5];
  v6 = v2[6];
  sub_25424D8B8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v7(a1, a2, a2 + *(TupleTypeMetadata2 + 48)) & 1;
}

uint64_t sub_25419CB08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25419CB50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v14[3] = MEMORY[0x277D838B0];
  v14[4] = MEMORY[0x277CC9C18];
  v14[0] = a1;
  v14[1] = a2;
  v4 = __swift_project_boxed_opaque_existential_1(v14, MEMORY[0x277D838B0]);
  v5 = *v4;
  if (*v4 && (v6 = v4[1], v7 = v6 - v5, v6 != v5))
  {
    if (v7 <= 14)
    {
      v8 = sub_2541BEA18(v5, v6);
      v9 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else if (v7 >= 0x7FFFFFFF)
    {
      v8 = sub_2541BEAD0(v5, v6);
      v9 = v13 | 0x8000000000000000;
    }

    else
    {
      v8 = sub_2541BEB4C(v5, v6);
      v9 = v11 | 0x4000000000000000;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0xC000000000000000;
  }

  result = __swift_destroy_boxed_opaque_existential_1(v14);
  *a3 = v8;
  a3[1] = v9;
  return result;
}

uint64_t sub_25419CC1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90C0, &qword_254253F20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_2541A1A98(a3, v27 - v11);
  v13 = sub_25424E128();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_2541A1B08(v12);
  }

  else
  {
    sub_25424E118();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_25424E058();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_25424DD28() + 32;
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

      sub_2541A1B08(a3);

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

  sub_2541A1B08(a3);
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

uint64_t Future.init(closure:)@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t **a2@<X8>)
{
  v4 = type metadata accessor for Promise();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  *a2 = sub_25419EFCC();
  type metadata accessor for Future.ValueType();
  swift_storeEnumTagMultiPayload();

  a1(v7);
}

uint64_t *sub_25419CFB4()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_25419EFCC();
}

uint64_t Future<>.init()()
{
  type metadata accessor for Future.ValueType();

  return swift_storeEnumTagMultiPayload();
}

uint64_t Future.init(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 32))(a3, a1, a2);
  type metadata accessor for Future.ValueType();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_25419D0F0(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 96) = a3;
  *(v3 + 48) = a1;
  *(v3 + 56) = a2;
  return MEMORY[0x2822009F8](sub_25419D114, 0, 0);
}

uint64_t sub_25419D114()
{
  if (*(v0 + 96))
  {
    if (*(v0 + 96) == 1)
    {
      return sub_25424E858();
    }

    else
    {
      v7 = *(v0 + 56);
      sub_2541A1E20(v7, 2);
      v8 = *(MEMORY[0x277D85A40] + 4);
      v9 = swift_task_alloc();
      *(v0 + 80) = v9;
      *v9 = v0;
      v9[1] = sub_25419D448;
      v10 = *(v0 + 48);
      v11 = MEMORY[0x277D84F78] + 8;

      return MEMORY[0x2822008A0](v10, 0, 0, 0x746C75736572, 0xE600000000000000, sub_2541A1E34, v7, v11);
    }
  }

  else
  {
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    v3 = *(MEMORY[0x277D859E0] + 4);
    v4 = swift_task_alloc();
    *(v0 + 72) = v4;
    *v4 = v0;
    v4[1] = sub_25419D31C;
    v5 = *(v0 + 48);
    v6 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822007B8](v5, 0, 0, 0x746C75736572, 0xE600000000000000, sub_2541A1E50, v2, v6);
  }
}

uint64_t sub_25419D31C()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_25419D434, 0, 0);
}

uint64_t sub_25419D448()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_25419D5C0;
  }

  else
  {
    v3 = sub_25419D55C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25419D55C()
{
  sub_2541A1E3C(*(v0 + 56), 2);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25419D5C0()
{
  v1 = v0[11];
  sub_25424E688();
  MEMORY[0x259C05CA0](0xD000000000000024, 0x8000000254250970);
  swift_getErrorValue();
  v2 = v0[2];
  v3 = v0[3];
  sub_25424EA98();
  return sub_25424E858();
}

uint64_t Future<>.result.getter(uint64_t a1, uint64_t a2)
{
  v3[6] = a1;
  v3[7] = v2;
  v4 = *(a2 + 16);
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();
  v7 = type metadata accessor for Future.ValueType();
  v3[11] = v7;
  v8 = *(v7 - 8);
  v3[12] = v8;
  v9 = *(v8 + 64) + 15;
  v3[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25419D7C0, 0, 0);
}

uint64_t sub_25419D7C0()
{
  (*(v0[12] + 16))(v0[13], v0[7], v0[11]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      return sub_25424E858();
    }

    else
    {
      v0[16] = *v0[13];
      v10 = swift_task_alloc();
      v0[17] = v10;
      *v10 = v0;
      v10[1] = sub_25419DB7C;
      v11 = v0[6];

      return Promise.result.getter(v11);
    }
  }

  else
  {
    v3 = v0[10];
    v4 = v0[8];
    (*(v0[9] + 32))(v3, v0[13], v4);
    v5 = swift_task_alloc();
    v0[14] = v5;
    *(v5 + 16) = v4;
    *(v5 + 24) = v3;
    v6 = *(MEMORY[0x277D859E0] + 4);
    v7 = swift_task_alloc();
    v0[15] = v7;
    *v7 = v0;
    v7[1] = sub_25419D9E0;
    v8 = v0[8];
    v9 = v0[6];

    return MEMORY[0x2822007B8](v9, 0, 0, 0x746C75736572, 0xE600000000000000, sub_25419E10C, v5, v8);
  }
}

uint64_t sub_25419D9E0()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_25419DAF8, 0, 0);
}

uint64_t sub_25419DAF8()
{
  (*(v0[9] + 8))(v0[10], v0[8]);
  v1 = v0[13];
  v2 = v0[10];

  v3 = v0[1];

  return v3();
}

uint64_t sub_25419DB7C()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_25419DD04;
  }

  else
  {
    v3 = sub_25419DC90;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25419DC90()
{
  v1 = v0[16];

  v2 = v0[13];
  v3 = v0[10];

  v4 = v0[1];

  return v4();
}

uint64_t sub_25419DD04()
{
  v1 = v0[18];
  sub_25424E688();
  MEMORY[0x259C05CA0](0xD000000000000024, 0x8000000254250970);
  swift_getErrorValue();
  v2 = v0[2];
  v3 = v0[3];
  sub_25424EA98();
  return sub_25424E858();
}

uint64_t sub_25419DDD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_25424E098();
  return sub_25424E088();
}

uint64_t Promise.result.getter(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return MEMORY[0x2822009F8](sub_25419DEF4, 0, 0);
}

uint64_t sub_25419DEF4()
{
  v1 = v0[4];
  v2 = *(MEMORY[0x277D85A40] + 4);
  v3 = swift_task_alloc();
  v0[5] = v3;
  v4 = *(v1 + 80);
  *v3 = v0;
  v3[1] = sub_25419DFC0;
  v5 = v0[2];
  v6 = v0[3];

  return MEMORY[0x2822008A0](v5, 0, 0, 0x746C75736572, 0xE600000000000000, sub_25419F97C, v6, v4);
}

uint64_t sub_25419DFC0()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  *(v3 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25419E0F4, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t Future.init(throwing:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 32))(a3, a1);
  type metadata accessor for Future.ValueType();

  return swift_storeEnumTagMultiPayload();
}

uint64_t Future.result.getter(uint64_t a1, void *a2)
{
  v3[2] = a1;
  v3[3] = v2;
  v3[4] = a2[2];
  v3[5] = a2[3];
  v3[6] = a2[4];
  v4 = type metadata accessor for Future.ValueType();
  v3[7] = v4;
  v5 = *(v4 - 8);
  v3[8] = v5;
  v6 = *(v5 + 64) + 15;
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25419E284, 0, 0);
}

uint64_t sub_25419E284()
{
  (*(*(v0 + 64) + 16))(*(v0 + 72), *(v0 + 24), *(v0 + 56));
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    *(v0 + 80) = **(v0 + 72);
    v1 = swift_task_alloc();
    *(v0 + 88) = v1;
    *v1 = v0;
    v1[1] = sub_25419E430;
    v2 = *(v0 + 16);

    return Promise.result.getter(v2);
  }

  else
  {
    v4 = *(v0 + 48);
    v5 = *(v0 + 24);
    v6 = swift_task_alloc();
    *(v0 + 104) = v6;
    *(v6 + 16) = *(v0 + 32);
    *(v6 + 32) = v4;
    *(v6 + 40) = v5;
    v7 = *(MEMORY[0x277D85A40] + 4);
    v8 = swift_task_alloc();
    *(v0 + 112) = v8;
    *v8 = v0;
    v8[1] = sub_25419E5B0;
    v9 = *(v0 + 32);
    v10 = *(v0 + 16);

    return MEMORY[0x2822008A0](v10, 0, 0, 0x746C75736572, 0xE600000000000000, sub_25419F984, v6, v9);
  }
}

uint64_t sub_25419E430()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_25419E748;
  }

  else
  {
    v3 = sub_25419E544;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25419E544()
{
  v1 = v0[10];

  v2 = v0[9];

  v3 = v0[1];

  return v3();
}

uint64_t sub_25419E5B0()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_25419E7B4;
  }

  else
  {
    v5 = *(v2 + 104);

    v4 = sub_25419E6CC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25419E6CC()
{
  (*(v0[8] + 8))(v0[9], v0[7]);
  v1 = v0[9];

  v2 = v0[1];

  return v2();
}

uint64_t sub_25419E748()
{
  v1 = v0[10];

  v2 = v0[12];
  v3 = v0[9];

  v4 = v0[1];

  return v4();
}

uint64_t sub_25419E7B4()
{
  v1 = v0[13];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[7];

  (*(v3 + 8))(v2, v4);
  v5 = v0[15];
  v6 = v0[9];

  v7 = v0[1];

  return v7();
}

uint64_t sub_25419E848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = *(a4 - 8);
  v37 = a1;
  v7 = *(v36 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v35 - v12;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v11);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v35 - v20;
  v35 = v22;
  v23 = type metadata accessor for Future.ValueType();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v35 - v25;
  (*(v27 + 16))(&v35 - v25, a2, v23);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v30 = v36;
      v31 = *(v36 + 32);
      v31(v13, v26, a4);
      (*(v30 + 16))(v10, v13, a4);
      v32 = sub_25424EA88();
      if (v32)
      {
        v33 = v32;
        (*(v30 + 8))(v10, a4);
      }

      else
      {
        v33 = swift_allocError();
        v31(v34, v10, a4);
      }

      v38 = v33;
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5BAF10, &qword_254253F40);
      sub_25424E098();
      sub_25424E078();
      return (*(v30 + 8))(v13, a4);
    }

    else
    {
      result = sub_25424E858();
      __break(1u);
    }
  }

  else
  {
    (*(v15 + 32))(v21, v26, a3);
    (*(v15 + 16))(v19, v21, a3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5BAF10, &qword_254253F40);
    sub_25424E098();
    sub_25424E088();
    return (*(v15 + 8))(v21, a3);
  }

  return result;
}

uint64_t Future<>.complete.getter()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25419ED10;

  return (sub_25419D0F0)();
}

uint64_t sub_25419ED10()
{
  v1 = *(*v0 + 16);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2541A22E8, 0, 0);
}

uint64_t Future<>.complete.getter(void *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25419EEA0;

  return Future.result.getter(v3, a1);
}

uint64_t sub_25419EEA0()
{
  v2 = *(*v1 + 16);
  v5 = *v1;
  *(*v1 + 24) = v0;

  if (v0)
  {
    v3 = sub_25419EFB4;
  }

  else
  {
    v3 = sub_25412FA2C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t *sub_25419EFCC()
{
  v1 = *v0;
  swift_defaultActor_initialize();
  v2 = *(*v0 + 96);
  v3 = *(v1 + 80);
  v4 = type metadata accessor for Promise.ValueType();
  (*(*(v4 - 8) + 56))(v0 + v2, 1, 1, v4);
  *(v0 + *(*v0 + 104)) = 0;
  return v0;
}

uint64_t Promise.resolve(throwing:)(void *a1)
{
  v3 = *(*v1 + 80);
  v4 = type metadata accessor for Promise.ValueType();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  *(&v11 - v7) = a1;
  swift_storeEnumTagMultiPayload();
  v9 = a1;
  LOBYTE(a1) = sub_25419F180(v8);
  (*(v5 + 8))(v8, v4);
  return a1 & 1;
}

BOOL sub_25419F180(uint64_t a1)
{
  v33 = a1;
  v2 = *v1;
  v32 = *(*v1 + 80);
  v3 = type metadata accessor for Promise.ValueType();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v31 = &v28 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90C0, &qword_254253F20);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v30 = &v28 - v9;
  v10 = sub_25424E598();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v28 - v16;
  v18 = *(v2 + 96);
  swift_beginAccess();
  (*(v11 + 16))(v17, v1 + v18, v10);
  v19 = (*(v4 + 48))(v17, 1, v3);
  (*(v11 + 8))(v17, v10);
  if (v19 == 1)
  {
    v29 = *(v4 + 16);
    v29(v15, v33, v3);
    (*(v4 + 56))(v15, 0, 1, v3);
    swift_beginAccess();
    (*(v11 + 40))(v1 + v18, v15, v10);
    swift_endAccess();
    v20 = *(*v1 + 104);
    v21 = *(v1 + v20);
    if (v21)
    {
      *(v1 + v20) = 0;
      v22 = sub_25424E128();
      v23 = v30;
      (*(*(v22 - 8) + 56))(v30, 1, 1, v22);
      v24 = v31;
      v29(v31, v33, v3);
      v25 = (*(v4 + 80) + 40) & ~*(v4 + 80);
      v26 = swift_allocObject();
      *(v26 + 2) = 0;
      *(v26 + 3) = 0;
      *(v26 + 4) = v32;
      (*(v4 + 32))(&v26[v25], v24, v3);
      *&v26[(v5 + v25 + 7) & 0xFFFFFFFFFFFFFFF8] = v21;
      sub_25419CC1C(0, 0, v23, &unk_2542580F0, v26);
    }
  }

  return v19 != 1;
}

uint64_t sub_25419F570(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8848, &qword_254261820);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90C0, &qword_254253F20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v17 - v11;
  v13 = sub_25424E128();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  (*(v5 + 16))(v8, a1, v4);
  v14 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = 0;
  *(v15 + 3) = 0;
  *(v15 + 4) = a2;
  (*(v5 + 32))(&v15[v14], v8, v4);

  sub_25419CC1C(0, 0, v12, &unk_254258108, v15);
}

uint64_t sub_25419F75C(uint64_t a1, uint64_t a2)
{
  v4 = *(*a2 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5BAF10, &qword_254253F40);
  v5 = sub_25424E098();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90C0, &qword_254253F20);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v18 - v12;
  v14 = sub_25424E128();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  (*(v6 + 16))(v9, a1, v5);
  v15 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = 0;
  *(v16 + 3) = 0;
  *(v16 + 4) = v4;
  *(v16 + 5) = a2;
  (*(v6 + 32))(&v16[v15], v9, v5);

  sub_25419CC1C(0, 0, v13, &unk_254258120, v16);
}

uint64_t sub_25419F9A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a4;
  *(v5 + 32) = a5;
  return MEMORY[0x2822009F8](sub_25419F9C8, a4, 0);
}

uint64_t sub_25419F9C8()
{
  v1 = *(v0 + 24);
  v2 = sub_2541A1F90(*(v0 + 32));
  *(v0 + 40) = v2;
  *(v0 + 48) = v3;
  sub_2541A21AC(v2, v3);

  return MEMORY[0x2822009F8](sub_25419FA3C, 0, 0);
}

uint64_t sub_25419FA3C()
{
  v1 = *(v0 + 48);
  if (v1 != 255)
  {
    v2 = *(v0 + 32);
    if (v1)
    {
      *(v0 + 16) = *(v0 + 40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8848, &qword_254261820);
      sub_25424E078();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8848, &qword_254261820);
      sub_25424E088();
    }
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_25419FAF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v7 = *(*a4 + 80);
  v5[5] = v7;
  v8 = *(v7 - 8);
  v5[6] = v8;
  v9 = *(v8 + 64) + 15;
  v5[7] = swift_task_alloc();
  v5[8] = swift_task_alloc();
  v10 = type metadata accessor for Promise.ValueType();
  v5[9] = v10;
  v11 = sub_25424E598();
  v5[10] = v11;
  v12 = *(v11 - 8);
  v5[11] = v12;
  v13 = *(v12 + 64) + 15;
  v5[12] = swift_task_alloc();
  v14 = *(v10 - 8);
  v5[13] = v14;
  v15 = *(v14 + 64) + 15;
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25419FCA8, a4, 0);
}

uint64_t sub_25419FCA8()
{
  v1 = v0[3];
  sub_25419FF58(v0[4], v0[12]);

  return MEMORY[0x2822009F8](sub_25419FD14, 0, 0);
}

uint64_t sub_25419FD14()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[9];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    (*(v0[11] + 8))(v1, v0[10]);
  }

  else
  {
    v5 = v0[14];
    v4 = v0[15];
    (*(v2 + 32))(v4, v1, v3);
    (*(v2 + 16))(v5, v4, v3);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v7 = v0[14];
    v8 = v0[15];
    v9 = v0[13];
    v10 = v0[9];
    if (EnumCaseMultiPayload == 1)
    {
      v11 = v0[4];
      v12 = v0[5];
      v0[2] = *v7;
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5BAF10, &qword_254253F40);
      sub_25424E098();
      sub_25424E078();
    }

    else
    {
      v14 = v0[7];
      v13 = v0[8];
      v15 = v0[5];
      v16 = v0[6];
      v17 = v0[4];
      (*(v16 + 32))(v13, v7, v15);
      (*(v16 + 16))(v14, v13, v15);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5BAF10, &qword_254253F40);
      sub_25424E098();
      sub_25424E088();
      (*(v16 + 8))(v13, v15);
    }

    (*(v9 + 8))(v8, v10);
  }

  v19 = v0[14];
  v18 = v0[15];
  v20 = v0[12];
  v22 = v0[7];
  v21 = v0[8];

  v23 = v0[1];

  return v23();
}

uint64_t sub_25419FF58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a1;
  v4 = *v2;
  v5 = *(*v2 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5BAF10, &qword_254253F40);
  v6 = sub_25424E098();
  v27 = *(v6 - 8);
  v7 = *(v27 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - v8;
  v10 = type metadata accessor for Promise.ValueType();
  v11 = sub_25424E598();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v27 - v14;
  v16 = *(v4 + 96);
  swift_beginAccess();
  (*(v12 + 16))(v15, v2 + v16, v11);
  v17 = *(v10 - 8);
  if ((*(v17 + 48))(v15, 1, v10) == 1)
  {
    (*(v12 + 8))(v15, v11);
    v18 = *(*v2 + 104);
    if (*(v2 + v18))
    {
      v29 = *(v2 + v18);
      (*(v27 + 16))(v9, v28, v6);
      sub_25424E048();

      sub_25424E018();

      v19 = 1;
    }

    else
    {
      sub_25424EA68();
      v20 = v27;
      v21 = *(v27 + 72);
      v22 = *(v27 + 80);
      swift_allocObject();
      v19 = 1;
      v23 = sub_25424DFB8();
      (*(v20 + 16))(v24, v28, v6);
      sub_25424E048();
      v25 = *(v2 + v18);
      *(v2 + v18) = v23;
    }
  }

  else
  {
    (*(v17 + 32))(a2, v15, v10);
    v19 = 0;
  }

  return (*(v17 + 56))(a2, v19, 1, v10);
}

uint64_t sub_2541A02B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 72) = a5;
  *(v6 + 24) = a4;
  *(v6 + 32) = a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8848, &qword_254261820);
  *(v6 + 40) = v7;
  v8 = *(v7 - 8);
  *(v6 + 48) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 56) = swift_task_alloc();
  *(v6 + 64) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2541A0394, 0, 0);
}

uint64_t sub_2541A0394()
{
  v1 = *(v0 + 32);
  if (*(v0 + 72))
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      v25 = *(v0 + 24);
      v3 = *(v0 + 48);
      v6 = *(v3 + 16);
      v4 = v3 + 16;
      v5 = v6;
      v7 = v1 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
      v8 = *(v4 + 56);
      do
      {
        v9 = *(v0 + 56);
        v10 = *(v0 + 40);
        v11 = *(v0 + 24);
        v5(v9, v7, v10);
        *(v0 + 16) = v25;
        sub_2541A1CE0(v11, 1);
        sub_25424E078();
        (*(v4 - 8))(v9, v10);
        v7 += v8;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v12 = *(v1 + 16);
    if (v12)
    {
      v13 = *(v0 + 48);
      v16 = *(v13 + 16);
      v14 = v13 + 16;
      v15 = v16;
      v17 = v1 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
      v18 = *(v14 + 56);
      do
      {
        v19 = *(v0 + 64);
        v20 = *(v0 + 40);
        v15(v19, v17, v20);
        sub_25424E088();
        (*(v14 - 8))(v19, v20);
        v17 += v18;
        --v12;
      }

      while (v12);
    }
  }

  v22 = *(v0 + 56);
  v21 = *(v0 + 64);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_2541A0538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5BAF10, &qword_254253F40);
  v8 = sub_25424E098();
  v6[8] = v8;
  v9 = *(v8 - 8);
  v6[9] = v9;
  v6[10] = *(v9 + 64);
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  v10 = *(a6 - 8);
  v6[13] = v10;
  v11 = *(v10 + 64) + 15;
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();
  v12 = type metadata accessor for Promise.ValueType();
  v6[16] = v12;
  v13 = *(v12 - 8);
  v6[17] = v13;
  v14 = *(v13 + 64) + 15;
  v6[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2541A06F8, 0, 0);
}

uint64_t sub_2541A06F8()
{
  (*(v0[17] + 16))(v0[18], v0[5], v0[16]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[18];
  if (EnumCaseMultiPayload == 1)
  {
    v3 = v0[8];
    v4 = v0[6];
    v5 = *v2;
    if (!sub_25424E008())
    {
      goto LABEL_22;
    }

    v6 = 0;
    v7 = v0[9];
    v43 = v0[10];
    while (1)
    {
      v8 = v0[8];
      v9 = v0[6];
      v10 = sub_25424DFF8();
      sub_25424DFC8();
      if (v10)
      {
        (*(v7 + 16))(v0[11], v0[6] + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v6, v0[8]);
        v11 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_11;
        }
      }

      else
      {
        v16 = v0[8];
        v17 = v0[6];
        result = sub_25424E6B8();
        if (v43 != 8)
        {
          __break(1u);
LABEL_28:
          __break(1u);
          return result;
        }

        v19 = v0[11];
        v20 = v0[8];
        v0[2] = result;
        (*(v7 + 16))(v19, v0 + 2, v20);
        swift_unknownObjectRelease();
        v11 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
LABEL_11:
          __break(1u);
          break;
        }
      }

      v12 = v0[11];
      v13 = v0[8];
      v14 = v0[6];
      v0[3] = v5;
      v15 = v5;
      sub_25424E078();
      (*(v7 + 8))(v12, v13);
      ++v6;
      if (v11 == sub_25424E008())
      {
LABEL_22:

        goto LABEL_24;
      }
    }
  }

  v21 = v0[8];
  v22 = v0[6];
  (*(v0[13] + 32))(v0[15], v2, v0[7]);
  if (sub_25424E008())
  {
    v5 = 0;
    v23 = v0[9];
    v42 = v0[10];
    v24 = (v0[13] + 16);
    do
    {
      v25 = v0[8];
      v26 = v0[6];
      v27 = sub_25424DFF8();
      sub_25424DFC8();
      if (v27)
      {
        (*(v23 + 16))(v0[12], v0[6] + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v5, v0[8]);
        v28 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_21;
        }
      }

      else
      {
        v32 = v0[8];
        v33 = v0[6];
        result = sub_25424E6B8();
        if (v42 != 8)
        {
          goto LABEL_28;
        }

        v34 = v0[12];
        v35 = v0[8];
        v0[4] = result;
        (*(v23 + 16))(v34, v0 + 4, v35);
        swift_unknownObjectRelease();
        v28 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }
      }

      v29 = v0[12];
      v30 = v0[8];
      v31 = v0[6];
      (*v24)(v0[14], v0[15], v0[7]);
      sub_25424E088();
      (*(v23 + 8))(v29, v30);
      ++v5;
    }

    while (v28 != sub_25424E008());
  }

  (*(v0[13] + 8))(v0[15], v0[7]);
LABEL_24:
  v36 = v0[18];
  v37 = v0[14];
  v38 = v0[15];
  v40 = v0[11];
  v39 = v0[12];

  v41 = v0[1];

  return v41();
}

uint64_t Promise.deinit()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 80);
  type metadata accessor for Promise.ValueType();
  v3 = sub_25424E598();
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  v4 = *(v0 + *(*v0 + 104));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t Promise.__deallocating_deinit()
{
  Promise.deinit();

  return MEMORY[0x282200960](v0);
}

BOOL Promise<>.resolve()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90C0, &qword_254253F20);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10[-v3];
  swift_beginAccess();
  v5 = *(v0 + 120);
  if (v5 == 255)
  {
    *(v0 + 112) = 0;
    *(v0 + 120) = 0;
    v6 = *(v0 + 128);
    if (v6)
    {
      *(v0 + 128) = 0;
      v7 = sub_25424E128();
      (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
      v10[0] = 0;
      v8 = swift_allocObject();
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 16) = 0;
      *(v8 + 40) = v10[0];
      *(v8 + 48) = v6;
      sub_25419CC1C(0, 0, v4, &unk_254257FF8, v8);
    }
  }

  return v5 != 255;
}

uint64_t Promise.resolve(with:)(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = type metadata accessor for Promise.ValueType();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  (*(*(v3 - 8) + 16))(&v10 - v7, a1, v3);
  swift_storeEnumTagMultiPayload();
  LOBYTE(a1) = sub_25419F180(v8);
  (*(v5 + 8))(v8, v4);
  return a1 & 1;
}

uint64_t sub_2541A0E54(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2541A0F4C;

  return v7(a1);
}

uint64_t sub_2541A0F4C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2541A1044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *a4;
  v11 = *(a4 + 8);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_25412F724;

  return sub_2541A02B8(a1, a2, a3, v10, v11, a5);
}

void sub_2541A1114(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t sub_2541A1120(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[6];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25412F818;

  return sub_2541A1044(a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_2541A11EC(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = a1[4];
  result = type metadata accessor for Future.ValueType();
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2541A1260(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  v4 = *(*(a3 + 24) - 8);
  if (*(v4 + 64) > v3)
  {
    v3 = *(v4 + 64);
  }

  v5 = 8;
  if (v3 > 8)
  {
    v5 = v3;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_27;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if ((v5 + 1) <= 3)
  {
    v10 = ((a2 + ~(-1 << v7) - 253) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v10 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v10 < 2)
    {
LABEL_27:
      v12 = *(a1 + v5);
      if (v12 >= 3)
      {
        return (v12 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_27;
  }

LABEL_16:
  v11 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return (v6 | v11) + 254;
}

void sub_2541A1394(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (*(*(*(a4 + 24) - 8) + 64) > v5)
  {
    v5 = *(*(*(a4 + 24) - 8) + 64);
  }

  if (v5 <= 8)
  {
    v5 = 8;
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
        goto LABEL_41;
      }

      goto LABEL_38;
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
LABEL_41:
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
            goto LABEL_41;
          }
        }

LABEL_38:
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
      goto LABEL_41;
    }

    goto LABEL_38;
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

LABEL_27:
      a1[v5] = -a2;
      return;
    }

LABEL_26:
    if (!a2)
    {
      return;
    }

    goto LABEL_27;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_26;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_27;
  }
}

uint64_t sub_2541A1580(uint64_t a1)
{
  v1 = *(a1 + 80);
  type metadata accessor for Promise.ValueType();
  result = sub_25424E598();
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

unint64_t sub_2541A1654(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_2541A199C();
    if (v4 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2541A16CC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
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

void sub_2541A17E4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
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

unint64_t sub_2541A199C()
{
  result = qword_27F5B9F68[0];
  if (!qword_27F5B9F68[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_27F5B9F68);
  }

  return result;
}

uint64_t sub_2541A1A00(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      result = type metadata accessor for Promise();
      if (v7 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_2541A1A98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90C0, &qword_254253F20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2541A1B08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90C0, &qword_254253F20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2541A1B70(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25412F818;

  return sub_2541A0E54(a1, v5);
}

uint64_t sub_2541A1C28(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25412F724;

  return sub_2541A0E54(a1, v5);
}

id sub_2541A1CE0(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

uint64_t sub_2541A1CEC(uint64_t a1)
{
  v4 = v1[4];
  v5 = *(type metadata accessor for Promise.ValueType() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_25412F818;

  return sub_2541A0538(a1, v7, v8, v1 + v6, v9, v4);
}

uint64_t sub_2541A1E20(uint64_t a1, char a2)
{
  if (a2 == 2)
  {
  }

  return result;
}

uint64_t sub_2541A1E3C(uint64_t a1, char a2)
{
  if (a2 == 2)
  {
  }

  return result;
}

uint64_t sub_2541A1E8C(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8848, &qword_254261820) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_25412F818;

  return sub_25419F9A8(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_2541A1F90(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8848, &qword_254261820);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v15 - v6;
  swift_beginAccess();
  if (*(v1 + 120) != 255)
  {
    return *(v1 + 112);
  }

  v9 = *(v1 + 128);
  if (v9)
  {
    (*(v4 + 16))(v7, a1, v3);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_2541B0F60(0, v9[2] + 1, 1, v9);
    }

    v11 = v9[2];
    v10 = v9[3];
    if (v11 >= v10 >> 1)
    {
      v9 = sub_2541B0F60(v10 > 1, v11 + 1, 1, v9);
    }

    v9[2] = v11 + 1;
    (*(v4 + 32))(v9 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v11, v7, v3);

    return 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9FF8, &qword_254258110);
    v12 = *(v4 + 72);
    v13 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_254254360;
    (*(v4 + 16))(v14 + v13, a1, v3);
    result = 0;
    *(v1 + 128) = v14;
  }

  return result;
}

id sub_2541A21AC(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_2541A1CE0(result, a2 & 1);
  }

  return result;
}

uint64_t sub_2541A21C4(uint64_t a1)
{
  v3 = v2;
  v5 = v1[4];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5BAF10, &qword_254253F40);
  v6 = *(sub_25424E098() - 8);
  v7 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[5];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_25412F724;

  return sub_25419FAF0(a1, v8, v9, v10, v1 + v7);
}

uint64_t static SharedZoneLookup.zoneID(for:homeIdentifier:target:BOOL:)(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_254142718;

  return sub_2541A23BC(a1, a2, a3, a4);
}

uint64_t sub_2541A23BC(uint64_t a1, uint64_t a2, _BYTE *a3, char a4)
{
  *(v4 + 384) = a4;
  *(v4 + 176) = a1;
  *(v4 + 184) = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BAF00, &qword_254258178);
  *(v4 + 192) = v6;
  v7 = *(v6 - 8);
  *(v4 + 200) = v7;
  v8 = *(v7 + 64) + 15;
  *(v4 + 208) = swift_task_alloc();
  v9 = sub_25424DAA8();
  *(v4 + 216) = v9;
  v10 = *(v9 - 8);
  *(v4 + 224) = v10;
  v11 = *(v10 + 64) + 15;
  *(v4 + 232) = swift_task_alloc();
  *(v4 + 240) = swift_task_alloc();
  *(v4 + 248) = swift_task_alloc();
  *(v4 + 256) = swift_task_alloc();
  *(v4 + 264) = swift_task_alloc();
  *(v4 + 272) = swift_task_alloc();
  *(v4 + 280) = swift_task_alloc();
  *(v4 + 288) = swift_task_alloc();
  *(v4 + 385) = *a3;

  return MEMORY[0x2822009F8](sub_2541A2548, 0, 0);
}

uint64_t sub_2541A2548()
{
  v32 = v0;
  v1 = *(v0 + 385);
  v3 = *(v0 + 176);
  v2 = *(v0 + 184);
  type metadata accessor for Configuration();
  v31 = v1;
  *(v0 + 296) = static Configuration.zoneName(forHomeIdentifier:target:)(v2, &v31);
  *(v0 + 304) = v4;
  if ([v3 databaseScope] == 2)
  {
    sub_254148D7C(0, &qword_27F5BBF00, 0x277CBC5F8);
    v5 = *MEMORY[0x277CBBF28];
    sub_25424DCB8();
    v6 = sub_25424E458();
    v8 = *(v0 + 280);
    v7 = *(v0 + 288);
    v10 = *(v0 + 264);
    v9 = *(v0 + 272);
    v12 = *(v0 + 248);
    v11 = *(v0 + 256);
    v14 = *(v0 + 232);
    v13 = *(v0 + 240);
    v15 = *(v0 + 208);

    v16 = *(v0 + 8);

    return v16(v6);
  }

  else if (*(v0 + 384) == 1)
  {
    if (qword_27F5B8428 != -1)
    {
      swift_once();
    }

    v18 = qword_27F5BC838;
    *(v0 + 312) = qword_27F5BC838;

    return MEMORY[0x2822009F8](sub_2541A2968, v18, 0);
  }

  else
  {
    sub_25421A804(*(v0 + 280));
    v19 = sub_25424DA88();
    v20 = sub_25424E448();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_254124000, v19, v20, "Fetching zones in shared database", v21, 2u);
      MEMORY[0x259C07330](v21, -1, -1);
    }

    v22 = *(v0 + 280);
    v24 = *(v0 + 216);
    v23 = *(v0 + 224);
    v26 = *(v0 + 200);
    v25 = *(v0 + 208);
    v27 = *(v0 + 192);
    v30 = *(v0 + 176);

    v28 = *(v23 + 8);
    *(v0 + 336) = v28;
    v28(v22, v24);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 168;
    *(v0 + 24) = sub_2541A2EB8;
    swift_continuation_init();
    *(v0 + 136) = v27;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 112));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA000, &unk_254258180);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAF10, &qword_254253F40);
    sub_25424E068();
    (*(v26 + 32))(boxed_opaque_existential_1, v25, v27);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_2541D34A4;
    *(v0 + 104) = &block_descriptor_3;
    [v30 fetchAllRecordZonesWithCompletionHandler_];
    (*(v26 + 8))(boxed_opaque_existential_1, v27);

    return MEMORY[0x282200938](v0 + 16);
  }
}

uint64_t sub_2541A2968()
{
  v1 = v0[39];
  swift_beginAccess();
  v2 = *(v1 + 128);
  if (*(v2 + 16))
  {
    v4 = v0[37];
    v3 = v0[38];

    v5 = sub_25422095C(v4, v3);
    if (v6)
    {
      v7 = (*(v2 + 56) + 16 * v5);
      v0[40] = *v7;
      v0[41] = v7[1];

      v8 = sub_2541A2CBC;
    }

    else
    {

      v8 = sub_2541A42E0;
    }
  }

  else
  {
    v8 = sub_2541A2A5C;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_2541A2A5C()
{
  sub_25421A804(v0[35]);
  v1 = sub_25424DA88();
  v2 = sub_25424E448();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_254124000, v1, v2, "Fetching zones in shared database", v3, 2u);
    MEMORY[0x259C07330](v3, -1, -1);
  }

  v4 = v0[35];
  v6 = v0[27];
  v5 = v0[28];
  v8 = v0[25];
  v7 = v0[26];
  v9 = v0[24];
  v13 = v0[22];

  v10 = *(v5 + 8);
  v0[42] = v10;
  v10(v4, v6);
  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_2541A2EB8;
  swift_continuation_init();
  v0[17] = v9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA000, &unk_254258180);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAF10, &qword_254253F40);
  sub_25424E068();
  (*(v8 + 32))(boxed_opaque_existential_1, v7, v9);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2541D34A4;
  v0[13] = &block_descriptor_3;
  [v13 fetchAllRecordZonesWithCompletionHandler_];
  (*(v8 + 8))(boxed_opaque_existential_1, v9);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2541A2CBC()
{
  v1 = v0[40];
  v2 = v0[41];
  v4 = v0[37];
  v3 = v0[38];
  v5 = v0[36];
  sub_254148D7C(0, &qword_27F5BBF00, 0x277CBC5F8);
  v6 = sub_25424E458();
  sub_25421A804(v5);
  v7 = v6;
  v8 = sub_25424DA88();
  v9 = sub_25424E408();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v7;
    *v11 = v7;
    v12 = v7;
    _os_log_impl(&dword_254124000, v8, v9, "Using cached owner name for zone: %@", v10, 0xCu);
    sub_2541A4278(v11);
    MEMORY[0x259C07330](v11, -1, -1);
    MEMORY[0x259C07330](v10, -1, -1);
  }

  v13 = v0[36];
  v14 = v0[27];
  v15 = v0[28];

  (*(v15 + 8))(v13, v14);
  v17 = v0[35];
  v16 = v0[36];
  v19 = v0[33];
  v18 = v0[34];
  v21 = v0[31];
  v20 = v0[32];
  v23 = v0[29];
  v22 = v0[30];
  v24 = v0[26];

  v25 = v0[1];

  return v25(v7);
}

uint64_t sub_2541A2EB8()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 344) = v3;
  if (v3)
  {
    v4 = *(v1 + 304);

    v5 = sub_2541A4068;
  }

  else
  {
    v5 = sub_2541A2FD0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2541A2FD0()
{
  v116 = v0;
  v1 = *(v0 + 272);
  v2 = *(v0 + 168);
  *(v0 + 352) = v2;

  sub_25421A804(v1);

  v3 = sub_25424DA88();
  LOBYTE(v4) = sub_25424E408();
  if (!os_log_type_enabled(v3, v4))
  {
    swift_bridgeObjectRelease_n();
    goto LABEL_6;
  }

  v5 = swift_slowAlloc();
  *v5 = 134217984;
  if (v2 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_25424E868())
  {

    *(v5 + 4) = i;

    _os_log_impl(&dword_254124000, v3, v4, "Fetched %ld zone(s) in shared database", v5, 0xCu);
    MEMORY[0x259C07330](v5, -1, -1);
LABEL_6:

    v7 = *(v0 + 336);
    v9 = *(v0 + 264);
    v8 = *(v0 + 272);
    v10 = *(v0 + 216);
    v11 = *(v0 + 224) + 8;
    *(v0 + 360) = v11 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v8, v10);
    sub_25421A804(v9);

    v12 = sub_25424DA88();
    v13 = sub_25424E418();

    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 336);
    v16 = *(v0 + 264);
    v17 = *(v0 + 216);
    if (v14)
    {
      v111 = *(v0 + 336);
      v18 = swift_slowAlloc();
      v108 = v16;
      v19 = swift_slowAlloc();
      v115[0] = v19;
      *v18 = 136315138;
      v20 = sub_254148D7C(0, &qword_27F5BAF90, 0x277CBC5E8);
      v21 = MEMORY[0x259C05E60](v2, v20);
      v23 = sub_2542203C4(v21, v22, v115);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_254124000, v12, v13, "%s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x259C07330](v19, -1, -1);
      MEMORY[0x259C07330](v18, -1, -1);

      v111(v108, v17);
    }

    else
    {

      v15(v16, v17);
    }

    v3 = v11;
    if ((*(v0 + 384) & 1) == 0)
    {
      goto LABEL_46;
    }

    v115[0] = MEMORY[0x277D84F90];
    v106 = v0;
    if (v2 >> 62)
    {
      break;
    }

    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_27;
    }

LABEL_12:
    v5 = 0;
    v0 = v2 & 0xC000000000000001;
    v24 = v2 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v0)
      {
        v25 = v2;
        v26 = MEMORY[0x259C06580](v5, v2);
      }

      else
      {
        if (v5 >= *(v24 + 16))
        {
          goto LABEL_24;
        }

        v25 = v2;
        v26 = *(v2 + 8 * v5 + 32);
      }

      v27 = v26;
      v2 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v28 = [v26 zoneID];
      v29 = [v28 zoneName];

      sub_25424DCB8();
      v3 = sub_25424DE48();

      if (v3)
      {
        sub_25424E718();
        v30 = *(v115[0] + 16);
        sub_25424E748();
        sub_25424E758();
        v3 = v115;
        sub_25424E728();
      }

      else
      {
      }

      ++v5;
      v50 = v2 == v4;
      v2 = v25;
      if (v50)
      {
        v31 = v115[0];
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }

  v4 = sub_25424E868();
  if (v4)
  {
    goto LABEL_12;
  }

LABEL_27:
  v31 = MEMORY[0x277D84F90];
LABEL_28:
  v0 = v106;
  *(v106 + 368) = v31;
  v32 = v31 < 0 || (v31 & 0x4000000000000000) != 0;
  if (v32)
  {
    if (sub_25424E868())
    {
      goto LABEL_33;
    }
  }

  else if (*(v31 + 16))
  {
LABEL_33:
    sub_25421A804(*(v106 + 256));

    v33 = sub_25424DA88();
    v34 = sub_25424E408();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 134217984;
      if (v32)
      {
        v36 = sub_25424E868();
      }

      else
      {
        v36 = *(v31 + 16);
      }

      *(v35 + 4) = v36;

      _os_log_impl(&dword_254124000, v33, v34, "Caching owner name for %ld zones", v35, 0xCu);
      MEMORY[0x259C07330](v35, -1, -1);
    }

    else
    {
    }

    (*(v106 + 336))(*(v106 + 256), *(v106 + 216));
    if (qword_27F5B8428 != -1)
    {
      swift_once();
    }

    v37 = qword_27F5BC838;
    *(v106 + 376) = qword_27F5BC838;

    return MEMORY[0x2822009F8](sub_2541A3A88, v37, 0);
  }

LABEL_46:
  v38 = (v0 + 352);
  v39 = *(v0 + 352);
  if (v39 >> 62)
  {
LABEL_76:
    v40 = sub_25424E868();
    v39 = *v38;
    if (v40)
    {
      goto LABEL_48;
    }

    goto LABEL_68;
  }

  v40 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v40)
  {
LABEL_68:
    v81 = *(v0 + 304);
    v82 = *(v0 + 240);

    sub_25421A804(v82);

    v83 = sub_25424DA88();
    v84 = sub_25424E428();

    v85 = os_log_type_enabled(v83, v84);
    v86 = *(v0 + 336);
    v87 = *(v0 + 304);
    if (v85)
    {
      v113 = *(v0 + 360);
      v88 = *(v0 + 296);
      v89 = *(v0 + 240);
      v90 = *(v0 + 216);
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v115[0] = v92;
      *v91 = 136315138;
      v93 = sub_2542203C4(v88, v87, v115);

      *(v91 + 4) = v93;
      _os_log_impl(&dword_254124000, v83, v84, "Unable to find shared zone with name %s", v91, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v92);
      MEMORY[0x259C07330](v92, -1, -1);
      MEMORY[0x259C07330](v91, -1, -1);
    }

    else
    {
      v89 = *(v0 + 240);
      v90 = *(v0 + 216);
      v94 = *(v0 + 304);
    }

    v86(v89, v90);
    sub_254182650();
    swift_allocError();
    *v95 = 0xD000000000000024;
    v95[1] = 0x8000000254250A70;
    v97 = *(v0 + 280);
    v96 = *(v0 + 288);
    v99 = *(v0 + 264);
    v98 = *(v0 + 272);
    v101 = *(v0 + 248);
    v100 = *(v0 + 256);
    v102 = *(v0 + 240);
    v110 = *(v0 + 232);
    v114 = *(v0 + 208);
    swift_willThrow();

    v103 = *(v0 + 8);

    return v103();
  }

LABEL_48:
  v41 = 0;
  v109 = v2 & 0xFFFFFFFFFFFFFF8;
  v112 = v2 & 0xC000000000000001;
  v107 = v39 + 32;
  v105 = v38;
  while (1)
  {
    if (v112)
    {
      v42 = MEMORY[0x259C06580](v41, *v105);
    }

    else
    {
      if (v41 >= *(v109 + 16))
      {
        goto LABEL_75;
      }

      v42 = *(v107 + 8 * v41);
    }

    v2 = v42;
    v38 = (v41 + 1);
    if (__OFADD__(v41, 1))
    {
      __break(1u);
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

    v43 = *(v0 + 296);
    v44 = *(v0 + 304);
    v45 = [v42 zoneID];
    v46 = [v45 zoneName];

    v47 = sub_25424DCB8();
    v49 = v48;

    v50 = v47 == v43 && v49 == v44;
    if (v50)
    {
      v54 = *v105;

      v55 = (v0 + 304);
      goto LABEL_63;
    }

    v51 = *(v0 + 296);
    v52 = *(v0 + 304);
    v53 = sub_25424EAB8();

    if (v53)
    {
      break;
    }

    ++v41;
    if (v38 == v40)
    {
      v80 = *v105;
      goto LABEL_68;
    }
  }

  v55 = v105;
  v56 = *(v0 + 304);
LABEL_63:
  v57 = *v55;
  v58 = *(v0 + 248);

  v59 = [v2 zoneID];
  sub_25421A804(v58);
  v60 = v59;
  v61 = sub_25424DA88();
  v62 = sub_25424E448();

  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    *v63 = 138412290;
    *(v63 + 4) = v60;
    *v64 = v60;
    v65 = v60;
    _os_log_impl(&dword_254124000, v61, v62, "Found shared zone for query: %@", v63, 0xCu);
    sub_2541A4278(v64);
    MEMORY[0x259C07330](v64, -1, -1);
    MEMORY[0x259C07330](v63, -1, -1);
  }

  v66 = *(v0 + 360);
  v67 = *(v0 + 336);
  v68 = *(v0 + 248);
  v69 = *(v0 + 216);

  v67(v68, v69);
  v71 = *(v0 + 280);
  v70 = *(v0 + 288);
  v73 = *(v0 + 264);
  v72 = *(v0 + 272);
  v75 = *(v0 + 248);
  v74 = *(v0 + 256);
  v77 = *(v0 + 232);
  v76 = *(v0 + 240);
  v78 = *(v0 + 208);

  v79 = *(v0 + 8);

  return v79(v60);
}

uint64_t sub_2541A3A88()
{
  v1 = *(v0 + 376);
  sub_2541BED64(*(v0 + 368), 1);

  return MEMORY[0x2822009F8](sub_2541A3B00, 0, 0);
}

uint64_t sub_2541A3B00()
{
  v79 = v0;
  v1 = v0 + 44;
  v2 = v0[44];
  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = v0[44];
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_23:
    v46 = v0[38];
    v47 = v0[30];

    sub_25421A804(v47);

    v48 = sub_25424DA88();
    v49 = sub_25424E428();

    v50 = os_log_type_enabled(v48, v49);
    v51 = v0[42];
    v52 = v0[38];
    if (v50)
    {
      v76 = v0[45];
      v53 = v0[37];
      v54 = v0[30];
      v55 = v0[27];
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v78 = v57;
      *v56 = 136315138;
      v58 = sub_2542203C4(v53, v52, &v78);

      *(v56 + 4) = v58;
      _os_log_impl(&dword_254124000, v48, v49, "Unable to find shared zone with name %s", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v57);
      MEMORY[0x259C07330](v57, -1, -1);
      MEMORY[0x259C07330](v56, -1, -1);

      v51(v54, v55);
    }

    else
    {
      v59 = v0[30];
      v60 = v0[27];
      v61 = v0[38];

      v51(v59, v60);
    }

    sub_254182650();
    swift_allocError();
    *v62 = 0xD000000000000024;
    v62[1] = 0x8000000254250A70;
    v64 = v0[35];
    v63 = v0[36];
    v66 = v0[33];
    v65 = v0[34];
    v68 = v0[31];
    v67 = v0[32];
    v69 = v0[30];
    v74 = v0[29];
    v77 = v0[26];
    swift_willThrow();

    v70 = v0[1];

    return v70();
  }

LABEL_31:
  v3 = sub_25424E868();
  v4 = *v1;
  if (!v3)
  {
    goto LABEL_23;
  }

LABEL_3:
  v5 = 0;
  v73 = v2 & 0xFFFFFFFFFFFFFF8;
  v75 = v2 & 0xC000000000000001;
  v71 = v1;
  v72 = v4 + 32;
  while (1)
  {
    if (v75)
    {
      v6 = MEMORY[0x259C06580](v5, *v71);
    }

    else
    {
      if (v5 >= *(v73 + 16))
      {
        goto LABEL_30;
      }

      v6 = *(v72 + 8 * v5);
    }

    v2 = v6;
    v7 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v1 = v0[37];
    v8 = v0[38];
    v9 = [v6 zoneID];
    v10 = [v9 zoneName];

    v11 = sub_25424DCB8();
    v13 = v12;

    if (v11 == v1 && v13 == v8)
    {
      v18 = *v71;

      v19 = v0 + 38;
      goto LABEL_18;
    }

    v15 = v0[37];
    v16 = v0[38];
    v17 = sub_25424EAB8();

    if (v17)
    {
      break;
    }

    ++v5;
    if (v7 == v3)
    {
      v45 = *v71;
      goto LABEL_23;
    }
  }

  v19 = v71;
  v20 = v0[38];
LABEL_18:
  v21 = *v19;
  v22 = v0[31];

  v23 = [v2 zoneID];
  sub_25421A804(v22);
  v24 = v23;
  v25 = sub_25424DA88();
  v26 = sub_25424E448();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 138412290;
    *(v27 + 4) = v24;
    *v28 = v24;
    v29 = v24;
    _os_log_impl(&dword_254124000, v25, v26, "Found shared zone for query: %@", v27, 0xCu);
    sub_2541A4278(v28);
    MEMORY[0x259C07330](v28, -1, -1);
    MEMORY[0x259C07330](v27, -1, -1);
  }

  v30 = v0[45];
  v31 = v0[42];
  v32 = v0[31];
  v33 = v0[27];

  v31(v32, v33);
  v35 = v0[35];
  v34 = v0[36];
  v37 = v0[33];
  v36 = v0[34];
  v39 = v0[31];
  v38 = v0[32];
  v41 = v0[29];
  v40 = v0[30];
  v42 = v0[26];

  v43 = v0[1];

  return v43(v24);
}

uint64_t sub_2541A4068()
{
  v1 = v0[43];
  v2 = v0[29];
  swift_willThrow();
  sub_25421A804(v2);
  v3 = v1;
  v4 = sub_25424DA88();
  v5 = sub_25424E428();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[43];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_254124000, v4, v5, "Failed to fetch shared database zones: %{public}@", v7, 0xCu);
    sub_2541A4278(v8);
    MEMORY[0x259C07330](v8, -1, -1);
    MEMORY[0x259C07330](v7, -1, -1);
  }

  v11 = v0[42];
  v13 = v0[28];
  v12 = v0[29];
  v14 = v0[27];

  v11(v12, v14);
  v15 = v0[43];
  v17 = v0[35];
  v16 = v0[36];
  v19 = v0[33];
  v18 = v0[34];
  v21 = v0[31];
  v20 = v0[32];
  v22 = v0[30];
  v25 = v0[29];
  v26 = v0[26];
  swift_willThrow();

  v23 = v0[1];

  return v23();
}

uint64_t sub_2541A4278(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BBED0, &qword_254253F80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t EventWriterScope.rawValue.getter()
{
  if (*v0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

HomeKitEvents::EventWriterScope_optional __swiftcall EventWriterScope.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (rawValue == 1)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

void *sub_2541A4320@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void sub_2541A4340(uint64_t *a1@<X8>)
{
  v2 = 1;
  if (*v1)
  {
    v2 = 2;
  }

  *a1 = v2;
}

uint64_t sub_2541A4368()
{
  v1 = *v0;
  sub_25424EBD8();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x259C06AA0](v2);
  return sub_25424EC28();
}

uint64_t sub_2541A43B8()
{
  if (*v0)
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  return MEMORY[0x259C06AA0](v1);
}

uint64_t sub_2541A43F0()
{
  v1 = *v0;
  sub_25424EBD8();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x259C06AA0](v2);
  return sub_25424EC28();
}

uint64_t EventWriterScope.description.getter()
{
  if (*v0)
  {
    result = 0x646572616873;
  }

  else
  {
    result = 0x64656E776FLL;
  }

  *v0;
  return result;
}

uint64_t sub_2541A4470()
{
  if (*v0)
  {
    result = 0x646572616873;
  }

  else
  {
    result = 0x64656E776FLL;
  }

  *v0;
  return result;
}

HMVEventWriter __swiftcall HMVEventWriter.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t HMVEventWriter.writeEvents(_:)(uint64_t a1)
{
  *(v1 + 32) = 0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2541A4604;

  return (sub_254223BC0)(a1, v1 + 32);
}

uint64_t sub_2541A4604()
{
  v2 = *(*v1 + 16);
  v3 = *v1;
  *(v3 + 24) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2541A50D0, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t HMVEventWriter.writeEvents(_:scope:)(uint64_t a1, _BYTE *a2)
{
  *(v2 + 32) = *a2;
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2541A4604;

  return (sub_254223BC0)(a1, v2 + 32);
}

uint64_t HMVEventWriter.writeFakeEvents(date:homeIdentifier:count:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25412F818;

  return sub_254224488(a1, a2, a3);
}

uint64_t sub_2541A48B4(uint64_t a1)
{
  *(v1 + 32) = 0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2541A4604;

  return (sub_254223BC0)(a1, v1 + 32);
}

uint64_t sub_2541A496C(uint64_t a1, _BYTE *a2)
{
  *(v2 + 32) = *a2;
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2541A4A28;

  return (sub_254223BC0)(a1, v2 + 32);
}

uint64_t sub_2541A4A28()
{
  v2 = *(*v1 + 16);
  v3 = *v1;
  *(v3 + 24) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25419EFB4, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_2541A4B5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25412F724;

  return sub_254224488(a1, a2, a3);
}

unint64_t sub_2541A4C20()
{
  result = qword_27F5BA008;
  if (!qword_27F5BA008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5BA010, &qword_254258208);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA008);
  }

  return result;
}

unint64_t sub_2541A4C88()
{
  result = qword_27F5BA018;
  if (!qword_27F5BA018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA018);
  }

  return result;
}

uint64_t dispatch thunk of EventWriterProtocol.writeEvents(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_25412F818;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of EventWriterProtocol.writeEvents(_:scope:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_25412F724;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of EventWriterProtocol.writeFakeEvents(date:homeIdentifier:count:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 24);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_25412F818;

  return v15(a1, a2, a3, a4, a5);
}

unint64_t type metadata accessor for HMVEventWriter()
{
  result = qword_27F5BA020;
  if (!qword_27F5BA020)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F5BA020);
  }

  return result;
}

uint64_t sub_2541A50D4()
{
  v0 = sub_25424E128();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25424E0D8();
  v5 = sub_25424E0E8();
  v6 = *(v1 + 8);
  v6(v4, v0);
  if (v5)
  {
    return 25;
  }

  sub_25424E108();
  v8 = sub_25424E0E8();
  v6(v4, v0);
  if (v8)
  {
    return -1;
  }

  sub_25424E0F8();
  v9 = sub_25424E0E8();
  v6(v4, v0);
  if (v9)
  {
    return 17;
  }

  else
  {
    return 9;
  }
}

uint64_t sub_2541A5230@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v6 = result;
  v8 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v10 = *(a2 + 16);
      v9 = *(a2 + 24);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }
  }

  else
  {
    if (v8)
    {
      v9 = a2 >> 32;
    }

    else
    {
      v9 = BYTE6(a3);
    }

    if (v8)
    {
      v10 = a2;
    }

    else
    {
      v10 = 0;
    }
  }

  v11 = sub_2541A5BB0(v10, v9, a2, a3);
  if (v6 && v11 < v6)
  {
    if (v8 <= 1)
    {
      if (!v8)
      {
        goto LABEL_28;
      }

      v12 = a2 >> 32;
      goto LABEL_26;
    }

    if (v8 != 2)
    {
      goto LABEL_28;
    }

    v12 = *(a2 + 24);
LABEL_24:
    result = *(a2 + 16);
    goto LABEL_27;
  }

  v12 = sub_2541347C8(v10, v6, a2, a3);
  result = 0;
  if (v8 > 1)
  {
    if (v8 != 3)
    {
      goto LABEL_24;
    }
  }

  else if (v8)
  {
LABEL_26:
    result = a2;
  }

LABEL_27:
  if (v12 >= result)
  {
LABEL_28:
    v13 = sub_25424D4B8();
    v15 = v14;
    result = sub_254134D04(a2, a3);
    *a4 = v13;
    a4[1] = v15;
    return result;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_2541A53A8(uint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16);
    v4 = *(a3(0) - 8);
    v5 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    return a2;
  }

  return result;
}

uint64_t sub_2541A5440(uint64_t result, unint64_t a2, unint64_t *a3)
{
  v5 = result;
  v6 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v6)
    {
      v7 = BYTE6(a2);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v6 != 2)
  {
    v7 = 0;
    goto LABEL_11;
  }

  v9 = *(result + 16);
  v8 = *(result + 24);
  v7 = v8 - v9;
  if (__OFSUB__(v8, v9))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v7 = HIDWORD(result) - result;
  }

LABEL_11:
  result = sub_2541A5C64();
  if (v7 < result)
  {
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v27 = a3;
  if (v6 > 1)
  {
    v10 = 0;
    if (v6 == 2)
    {
      v10 = *(v5 + 16);
    }
  }

  else if (v6)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0;
  }

  v11 = sub_2541A5C64();
  v12 = sub_2541347C8(v10, v11, v5, a2);
  v13 = sub_2541AF3E4(2052476232, 0xE400000000000000);
  v15 = v14;
  sub_254140660(v13, v14);
  sub_2541A5230(3, v13, v15, &v28);
  v16 = v28;
  v17 = v29;
  v18 = sub_2541A5718(v28, v29, v5, a2);
  sub_254134D04(v16, v17);
  if ((v18 & 1) == 0)
  {
    v25 = 0x8000000254250AA0;
    v26 = 0xD000000000000023;
    goto LABEL_26;
  }

  sub_2541347C8(v10, 3, v5, a2);
  result = sub_25424D4C8();
  if (result < 0x7Au)
  {
    goto LABEL_31;
  }

  if (result != 122)
  {
    v25 = 0x8000000254250AD0;
    v26 = 0xD00000000000002FLL;
LABEL_26:
    *v27 = v26;
    v27[1] = v25;
    v28 = v26;
    v29 = v25;
    sub_254182650();
    swift_willThrowTypedImpl();
    v23 = v5;
    v24 = a2;
    goto LABEL_27;
  }

  result = sub_2541347C8(v10, 4, v5, a2);
  if (v12 >= result)
  {
    v19 = sub_25424D4B8();
    v21 = v20;
    v22 = sub_2542435B8(v19, v20);
    if (!(v22 >> 28))
    {
      v18 = v22;
      sub_254134D04(v13, v15);
      sub_254134D04(v19, v21);
      sub_254134D04(v5, a2);
      return v18;
    }

    *v27 = 0xD00000000000002ELL;
    v27[1] = 0x8000000254250B00;
    v28 = 0xD00000000000002ELL;
    v29 = 0x8000000254250B00;
    sub_254182650();
    swift_willThrowTypedImpl();
    sub_254134D04(v5, a2);
    v23 = v19;
    v24 = v21;
LABEL_27:
    sub_254134D04(v23, v24);
    sub_254134D04(v13, v15);
    return v18;
  }

LABEL_33:
  __break(1u);
  __break(1u);
  return result;
}

uint64_t sub_2541A5718(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_25424D548();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v23[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v15 = &v23[-v14];
  if (a2 >> 62 == 2)
  {
    v16 = *(a1 + 16);
  }

  sub_254140660(a1, a2);
  sub_25424D558();
  if (a4 >> 62 == 2)
  {
    v17 = *(a3 + 16);
  }

  sub_254140660(a3, a4);
  sub_25424D558();
  sub_2541A5D00();
  while (1)
  {
    sub_25424E5C8();
    if (v23[15])
    {
      v21 = *(v9 + 8);
      v21(v13, v8);
      sub_25424E5C8();
      v21(v15, v8);
      return v23[13];
    }

    v18 = v23[14];
    sub_25424E5C8();
    if (v23[11])
    {
      break;
    }

    if (v18 != v23[10])
    {
      v19 = *(v9 + 8);
      v19(v13, v8);
      v19(v15, v8);
      return 0;
    }
  }

  v22 = *(v9 + 8);
  v22(v13, v8);
  v22(v15, v8);
  return 1;
}

uint64_t sub_2541A5998(unint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = sub_2541AF3E4(2052476232, 0xE400000000000000);
  v28 = v2;
  v29 = v3;
  v4 = v3 >> 62;
  if ((v3 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(v3);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    v5 = 0;
    goto LABEL_11;
  }

  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = __OFSUB__(v6, v7);
  v5 = v6 - v7;
  if (v8)
  {
    __break(1u);
LABEL_8:
    LODWORD(v5) = HIDWORD(v2) - v2;
    if (__OFSUB__(HIDWORD(v2), v2))
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v5 = v5;
  }

LABEL_11:
  if (__OFSUB__(v5, 1))
  {
    __break(1u);
    goto LABEL_37;
  }

  sub_25424D4C8();
  sub_25424D4D8();
  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (HIDWORD(a1))
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  LODWORD(v27[0]) = bswap32(a1);
  v9 = sub_2541AF8F4(v27, v27 + 4);
  v11 = v9;
  v12 = v10;
  v13 = v28;
  v14 = v29;
  v15 = v29 >> 62;
  if ((v29 >> 62) <= 1)
  {
    if (!v15)
    {
      v16 = BYTE6(v29);
      goto LABEL_24;
    }

    goto LABEL_21;
  }

  if (v15 != 2)
  {
    v16 = 0;
    goto LABEL_24;
  }

  v18 = *(v28 + 16);
  v17 = *(v28 + 24);
  v8 = __OFSUB__(v17, v18);
  v16 = v17 - v18;
  if (v8)
  {
    __break(1u);
LABEL_21:
    LODWORD(v16) = HIDWORD(v13) - v13;
    if (__OFSUB__(HIDWORD(v13), v13))
    {
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
    }

    v16 = v16;
  }

LABEL_24:
  v19 = v10 >> 62;
  if ((v10 >> 62) <= 1)
  {
    if (!v19)
    {
      v20 = BYTE6(v10);
      goto LABEL_34;
    }

    goto LABEL_31;
  }

  if (v19 != 2)
  {
    v20 = 0;
    goto LABEL_34;
  }

  v22 = *(v9 + 16);
  v21 = *(v9 + 24);
  v8 = __OFSUB__(v21, v22);
  v20 = v21 - v22;
  if (v8)
  {
    __break(1u);
LABEL_31:
    LODWORD(v20) = HIDWORD(v9) - v9;
    if (__OFSUB__(HIDWORD(v9), v9))
    {
      goto LABEL_42;
    }

    v20 = v20;
  }

LABEL_34:
  if (__OFADD__(v16, v20))
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v27[0] = sub_2541EFFDC(v16 + v20);
  v27[1] = v23;
  sub_25424D528();
  sub_25424D528();
  sub_254134D04(v11, v12);
  v24 = v27[0];
  sub_254134D04(v13, v14);
  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

uint64_t sub_2541A5BB0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v6 = *(a3 + 16);
      v5 = *(a3 + 24);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }
  }

  else
  {
    v5 = a3 >> 32;
    if (v4)
    {
      v6 = a3;
    }

    else
    {
      v5 = BYTE6(a4);
      v6 = 0;
    }
  }

  if (v5 < result || v6 > result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v4)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < a2 || v8 > a2)
  {
    goto LABEL_22;
  }

  v9 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v9)
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

uint64_t sub_2541A5C64()
{
  v0 = sub_2541AF3E4(2052476232, 0xE400000000000000);
  v2 = v1 >> 62;
  if ((v1 >> 62) <= 1)
  {
    if (!v2)
    {
      v3 = BYTE6(v1);
      sub_254134D04(v0, v1);
      v4 = v3;
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v2 != 2)
  {
    sub_254134D04(v0, v1);
    v4 = 0;
    goto LABEL_11;
  }

  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  v0 = sub_254134D04(v0, v1);
  v4 = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
    __break(1u);
LABEL_8:
    v7 = HIDWORD(v0);
    v8 = v0;
    result = sub_254134D04(v0, v1);
    LODWORD(v4) = v7 - v8;
    if (__OFSUB__(v7, v8))
    {
LABEL_14:
      __break(1u);
      return result;
    }

    v4 = v4;
  }

LABEL_11:
  result = v4 + 4;
  if (__OFADD__(v4, 4))
  {
    __break(1u);
    goto LABEL_14;
  }

  return result;
}

unint64_t sub_2541A5D00()
{
  result = qword_27F5BA028[0];
  if (!qword_27F5BA028[0])
  {
    sub_25424D548();
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F5BA028);
  }

  return result;
}

uint64_t sub_2541A5D60()
{
  sub_25424DD28();
  v0 = os_variant_allows_internal_security_policies();

  if (v0)
  {
    sub_25424DD28();
    has_internal_diagnostics = os_variant_has_internal_diagnostics();
  }

  else
  {
    has_internal_diagnostics = 0;
  }

  byte_281407088 = has_internal_diagnostics;
  return result;
}

uint64_t static OSVariant.isInternalBuild.getter()
{
  if (qword_281407080 != -1)
  {
    swift_once();
  }

  return byte_281407088;
}

uint64_t DiscardingAsyncCache.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  return MEMORY[0x2822009F8](sub_2541A5E78, 0, 0);
}

uint64_t sub_2541A5E78()
{
  (*(*(*(v0[3] + 24) - 8) + 56))(v0[2], 1, 1);
  v1 = v0[1];

  return v1();
}

uint64_t DiscardingAsyncCache.get(_:)(uint64_t a1, void *a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v6 = a2[2];
  v5 = a2[3];
  v7 = a2[4];
  *v4 = v2;
  v4[1] = sub_2541A5FB8;

  return sub_2541A66FC(v6, v5, v7);
}

uint64_t sub_2541A5FB8(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_2541A60DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25412F724;

  return DiscardingAsyncCache.subscript.getter(a1, v6, a3);
}

uint64_t sub_2541A617C(uint64_t a1, void *a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v6 = a2[2];
  v5 = a2[3];
  v7 = a2[4];
  *v4 = v2;
  v4[1] = sub_2541A67F0;

  return sub_2541A66FC(v6, v5, v7);
}

unint64_t sub_2541A622C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 40);
  v9 = sub_25424DC18();

  return sub_2541A6288(a1, v9, a2, a3);
}

unint64_t sub_2541A6288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[1] = a1;
  v24 = a4;
  v6 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](a1);
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
      v21 = sub_25424DC98();
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

uint64_t sub_2541A6410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_25424E008())
  {
    sub_25424E8A8();
    v13 = sub_25424E898();
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  result = sub_25424E008();
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
        if (sub_25424DFF8())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_25424E6B8();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_2541A622C(v12, a2, v27);
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

uint64_t sub_2541A66FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_2541A6720, 0, 0);
}

uint64_t sub_2541A6720()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  swift_getTupleTypeMetadata2();
  v4 = sub_25424DFD8();
  v5 = sub_2541A6410(v4, v3, v1, v2);

  v6 = v0[1];

  return v6(v5);
}

uint64_t collectDiagnostics(includeSensitiveData:)(uint64_t a1, char a2)
{
  *(v2 + 48) = a2;
  *(v2 + 16) = a1;
  return MEMORY[0x2822009F8](sub_2541A6818, 0, 0);
}

uint64_t sub_2541A6818()
{
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_2541A68F4;
  v4 = *(v0 + 16);

  return (sub_2541A6A30)(v4, sub_2541A7328, v2);
}

uint64_t sub_2541A68F4()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  v3[5] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25412FA44, 0, 0);
  }

  else
  {
    v4 = v3[3];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_2541A6A30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_2541A6A54, 0, 0);
}

uint64_t sub_2541A6A54()
{
  type metadata accessor for XPCDiagnosticExtensionClient();
  v1 = swift_allocObject();
  *(v0 + 40) = v1;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0;
  v8 = *(v0 + 24);
  sub_2541FB7CC();
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = v8;
  v3 = *(MEMORY[0x277D85A40] + 4);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  v5 = sub_25424D418();
  *v4 = v0;
  v4[1] = sub_2541A6B88;
  v6 = *(v0 + 16);

  return MEMORY[0x2822008A0](v6, 0, 0, 0xD00000000000002BLL, 0x8000000254250B50, sub_2541A7330, v2, v5);
}

uint64_t sub_2541A6B88()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_2541A6D28;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_2541A6CA4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2541A6CA4()
{
  v1 = *(v0 + 40);
  [*(v1 + 16) invalidate];
  v2 = *(v1 + 16);
  *(v1 + 16) = 0;

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2541A6D28()
{
  v2 = v0[5];
  v1 = v0[6];

  [*(v2 + 16) invalidate];
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;

  v4 = v0[1];
  v5 = v0[8];

  return v4();
}

uint64_t sub_2541A6DB0(uint64_t a1, void *a2, void (*a3)(void))
{
  v25 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8860, &qword_254252D40);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8868, &qword_254252D48);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - v12;
  (*(v10 + 16))(&v25 - v12, a1, v9);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA0B0, &qword_2542583F8);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();
  swift_defaultActor_initialize();
  v18 = *(*v17 + 112);
  v19 = *(v10 + 56);
  v19(v17 + v18, 1, 1, v9);
  (*(v10 + 32))(v8, v13, v9);
  v19(v8, 0, 1, v9);
  swift_beginAccess();
  sub_2541A733C(v8, v17 + v18);
  swift_endAccess();
  v20 = a2[5];
  v21 = a2[6];
  a2[5] = sub_2541A73AC;
  a2[6] = v17;

  sub_25412DC98(v20);
  v22 = a2[3];
  v23 = a2[4];
  a2[3] = sub_2541A73B4;
  a2[4] = v17;

  sub_25412DC98(v22);
  sub_2541FBAB0();
  v25();

  return swift_unknownObjectRelease();
}

void sub_2541A7034(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90C0, &qword_254253F20);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v12 - v4;
  sub_254132998();
  v6 = swift_allocError();
  *v7 = 0;
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  v9 = sub_25424E128();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a1;
  v10[5] = sub_2541A75A8;
  v10[6] = v8;
  v11 = v6;

  sub_25419CC1C(0, 0, v5, &unk_254258408, v10);
}

void sub_2541A71AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90C0, &qword_254253F20);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v12 - v4;
  sub_254132998();
  v6 = swift_allocError();
  *v7 = 1;
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  v9 = sub_25424E128();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a1;
  v10[5] = sub_2541A7410;
  v10[6] = v8;
  v11 = v6;

  sub_25419CC1C(0, 0, v5, &unk_254258400, v10);
}

uint64_t sub_2541A733C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8860, &qword_254252D40);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2541A73BC(uint64_t a1, id *a2)
{
  v2 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8868, &qword_254252D48);
  return sub_25424E078();
}

uint64_t sub_2541A7418(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_25412F818;

  return sub_254131310(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2541A74E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_25412F724;

  return sub_254131310(a1, v4, v5, v6, v7, v8);
}

uint64_t QueryResultAsyncSequence.makeAsyncIterator()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA1F0, &qword_254258410);

  return sub_25424E178();
}

uint64_t sub_2541A75F4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA1F0, &qword_254258410);
  sub_25424E178();

  return sub_2541A7D90(v0);
}

uint64_t QueryResultAsyncSequence.Iterator.next()(uint64_t a1)
{
  v3 = *(MEMORY[0x277D858C0] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA0B8, &qword_254258420);
  *v4 = v1;
  v4[1] = sub_25412F724;

  return MEMORY[0x2822005B0](a1, v5);
}

unint64_t sub_2541A7704()
{
  result = qword_27F5BA0C0;
  if (!qword_27F5BA0C0)
  {
    type metadata accessor for QueryResultAsyncSequence.Iterator(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA0C0);
  }

  return result;
}

uint64_t sub_2541A777C(uint64_t a1)
{
  v3 = *(MEMORY[0x277D858C0] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA0B8, &qword_254258420);
  *v4 = v1;
  v4[1] = sub_25412F818;

  return MEMORY[0x2822005B0](a1, v5);
}

uint64_t sub_2541A7838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a3;
  v6[5] = a4;
  v6[3] = a2;
  v10 = *(MEMORY[0x277D856D0] + 4);
  v11 = swift_task_alloc();
  v6[6] = v11;
  *v11 = v6;
  v11[1] = sub_2541A78F4;

  return MEMORY[0x282200308](a1, a5, a6);
}

uint64_t sub_2541A78F4()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {
    if (v3[3])
    {
      v4 = v3[4];
      swift_getObjectType();
      v5 = sub_25424E058();
      v7 = v6;
    }

    else
    {
      v5 = 0;
      v7 = 0;
    }

    return MEMORY[0x2822009F8](sub_2541A7A64, v5, v7);
  }

  else
  {
    v8 = v3[1];

    return v8();
  }
}

uint64_t sub_2541A7A64()
{
  v1 = v0[7];
  v2 = v0[5];
  v0[2] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAF10, &qword_254253F40);
  swift_willThrowTypedImpl();
  *v2 = v1;
  v3 = v0[1];

  return v3();
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v8 = *(*(v7 - 8) + 48);

  return v8(a1, a2, v7);
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, a2, a2, v8);
}

void sub_2541A7C98(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, void))
{
  sub_2541A7D0C(319, a4, a5);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_2541A7D0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v6 = type metadata accessor for SomeEvent();
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5BAF10, &qword_254253F40);
    v8 = a3(a1, v6, v7, MEMORY[0x277D84950]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2541A7D90(uint64_t a1)
{
  ResultAsyncSequence = type metadata accessor for QueryResultAsyncSequence(0);
  (*(*(ResultAsyncSequence - 8) + 8))(a1, ResultAsyncSequence);
  return a1;
}

HomeKitEvents::SecuritySystemEvent::State_optional __swiftcall SecuritySystemEvent.State.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue > 8)
  {
    *v1 = 8;
  }

  else
  {
    *v1 = byte_25425882E[rawValue];
  }

  return rawValue;
}

uint64_t sub_2541A7E58()
{
  v1 = *v0;
  sub_25424EBD8();
  MEMORY[0x259C06AA0](qword_254258870[v1]);
  return sub_25424EC28();
}

uint64_t sub_2541A7EE0()
{
  v1 = *v0;
  sub_25424EBD8();
  MEMORY[0x259C06AA0](qword_254258870[v1]);
  return sub_25424EC28();
}

uint64_t SecuritySystemEvent.state.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SecuritySystemEvent();
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t type metadata accessor for SecuritySystemEvent()
{
  result = qword_27F5BA170;
  if (!qword_27F5BA170)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SecuritySystemEvent.init(date:homeIdentifier:roomIdentifier:roomName:accessoryIdentifier:accessoryName:state:userIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char *a10, uint64_t a11)
{
  v30 = *a10;
  v17 = sub_25424D8B8();
  (*(*(v17 - 8) + 32))(a9, a1, v17);
  v18 = type metadata accessor for EventBase(0);
  v19 = v18[5];
  v20 = sub_25424D948();
  v21 = *(*(v20 - 8) + 32);
  v21(a9 + v19, a2, v20);
  *(a9 + v18[6]) = 2;
  v22 = (a9 + v18[7]);
  *v22 = 15;
  v23 = type metadata accessor for AccessoryEventBase(0);
  v22[1] = 0;
  v22[2] = 0;
  v21(a9 + v23[5], a3, v20);
  v24 = (a9 + v23[6]);
  *v24 = a4;
  v24[1] = a5;
  v21(a9 + v23[7], a6, v20);
  v25 = (a9 + v23[8]);
  *v25 = a7;
  v25[1] = a8;
  sub_25414A348(a11, a9 + v23[9]);
  result = type metadata accessor for SecuritySystemEvent();
  *(a9 + *(result + 20)) = v30;
  return result;
}

uint64_t SecuritySystemEvent.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for AccessoryEventBaseLegacy(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_254140708(a1, v12);
  sub_254231924(v12, v8);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_254148F44(a1, v12);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v10 = v12[0];
  sub_25414A414(v8, a2);
  result = type metadata accessor for SecuritySystemEvent();
  *(a2 + *(result + 20)) = v10;
  return result;
}

uint64_t SecuritySystemEvent.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8E60, &qword_254254A10);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11[-v7];
  result = sub_254231F94(a1);
  if (!v2)
  {
    v11[15] = *(v1 + *(type metadata accessor for SecuritySystemEvent() + 20));
    v10 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_25412F1C4();
    sub_25424EC78();
    v11[14] = 1;
    sub_2541A83F4();
    sub_25424EA18();
    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

unint64_t sub_2541A83F4()
{
  result = qword_27F5BA0F8;
  if (!qword_27F5BA0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA0F8);
  }

  return result;
}

uint64_t SecuritySystemEvent.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25424D8B8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SecuritySystemEvent.category.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for EventBase(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t SecuritySystemEvent.roomName.getter()
{
  v1 = (v0 + *(type metadata accessor for AccessoryEventBase(0) + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SecuritySystemEvent.accessoryIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AccessoryEventBase(0) + 28);
  v4 = sub_25424D948();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SecuritySystemEvent.accessoryName.getter()
{
  v1 = (v0 + *(type metadata accessor for AccessoryEventBase(0) + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SecuritySystemEvent.userIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AccessoryEventBase(0) + 36);

  return sub_254149770(v3, a1);
}

BOOL static SecuritySystemEvent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (!_s13HomeKitEvents9FakeEventV2eeoiySbAC_ACtFZ_0(a1, a2))
  {
    return 0;
  }

  v4 = type metadata accessor for SecuritySystemEvent();
  return qword_254258870[*(a1 + *(v4 + 20))] == qword_254258870[*(a2 + *(v4 + 20))];
}

uint64_t SecuritySystemEvent.hash(into:)()
{
  v1 = v0;
  v2 = sub_25424D948();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E50, &qword_254254390);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v24 - v9;
  sub_25424D8B8();
  sub_2541A8E70(&qword_27F5B89C0, MEMORY[0x277CC9578]);
  sub_25424DC28();
  v11 = type metadata accessor for EventBase(0);
  v12 = *(v11 + 20);
  sub_2541A8E70(&qword_27F5B89A8, MEMORY[0x277CC95F0]);
  sub_25424DC28();
  MEMORY[0x259C06AA0](qword_254258838[*(v1 + *(v11 + 24))]);
  v13 = type metadata accessor for AccessoryEventBase(0);
  v14 = v1 + v13[5];
  sub_25424DC28();
  v15 = (v1 + v13[6]);
  v16 = *v15;
  v17 = v15[1];
  sub_25424DD88();
  v18 = v1 + v13[7];
  sub_25424DC28();
  v19 = (v1 + v13[8]);
  v20 = *v19;
  v21 = v19[1];
  sub_25424DD88();
  sub_254149770(v1 + v13[9], v10);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    sub_25424EBF8();
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    sub_25424EBF8();
    sub_25424DC28();
    (*(v3 + 8))(v6, v2);
  }

  v22 = type metadata accessor for SecuritySystemEvent();
  return MEMORY[0x259C06AA0](qword_254258870[*(v1 + *(v22 + 20))]);
}

uint64_t SecuritySystemEvent.hashValue.getter()
{
  sub_25424EBD8();
  SecuritySystemEvent.hash(into:)();
  return sub_25424EC28();
}

uint64_t sub_2541A8A20()
{
  sub_25424EBD8();
  SecuritySystemEvent.hash(into:)();
  return sub_25424EC28();
}

uint64_t sub_2541A8A64()
{
  sub_25424EBD8();
  SecuritySystemEvent.hash(into:)();
  return sub_25424EC28();
}

unint64_t sub_2541A8BBC()
{
  result = qword_27F5BA100;
  if (!qword_27F5BA100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA100);
  }

  return result;
}

unint64_t sub_2541A8C14()
{
  result = qword_27F5BA108;
  if (!qword_27F5BA108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5BA110, &qword_2542585B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA108);
  }

  return result;
}

unint64_t sub_2541A8C7C()
{
  result = qword_27F5BA118;
  if (!qword_27F5BA118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA118);
  }

  return result;
}

uint64_t sub_2541A8CD0(void *a1)
{
  a1[1] = sub_2541A8E70(&qword_27F5BA128, type metadata accessor for SecuritySystemEvent);
  a1[2] = sub_2541A8E70(&qword_27F5BA130, type metadata accessor for SecuritySystemEvent);
  result = sub_2541A8E70(&qword_27F5BA138, type metadata accessor for SecuritySystemEvent);
  a1[3] = result;
  return result;
}

uint64_t sub_2541A8DC4(void *a1)
{
  a1[1] = sub_2541A8E70(&qword_27F5BA148, type metadata accessor for SecuritySystemEvent);
  a1[2] = sub_2541A8E70(&qword_27F5BA150, type metadata accessor for SecuritySystemEvent);
  result = sub_2541A8E70(&qword_27F5BA158, type metadata accessor for SecuritySystemEvent);
  a1[3] = result;
  return result;
}

uint64_t sub_2541A8E70(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2541A8F00(void *a1)
{
  a1[1] = sub_25414ADD0();
  a1[2] = sub_2541A83F4();
  result = sub_2541A8F38();
  a1[3] = result;
  return result;
}

unint64_t sub_2541A8F38()
{
  result = qword_27F5BA160;
  if (!qword_27F5BA160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA160);
  }

  return result;
}

unint64_t sub_2541A8F8C(uint64_t a1)
{
  result = sub_2541A8FB4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2541A8FB4()
{
  result = qword_27F5BA168;
  if (!qword_27F5BA168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA168);
  }

  return result;
}

unint64_t sub_2541A9008(uint64_t a1)
{
  result = sub_2541A8C7C();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2541A9058()
{
  result = type metadata accessor for AccessoryEventBaseLegacy(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_2541A90DC()
{
  result = qword_27F5BA180;
  if (!qword_27F5BA180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA180);
  }

  return result;
}

uint64_t sub_2541A9134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90C0, &qword_254253F20);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_254132DF4(a3, v24 - v10, &unk_27F5B90C0, &qword_254253F20);
  v12 = sub_25424E128();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_254132E5C(v11, &unk_27F5B90C0, &qword_254253F20);
  }

  else
  {
    sub_25424E118();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_25424E058();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_25424DD28() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8DF0, &qword_254253F38);
      v21 = (v19 | v17);
      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_254132E5C(a3, &unk_27F5B90C0, &qword_254253F20);

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

  sub_254132E5C(a3, &unk_27F5B90C0, &qword_254253F20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8DF0, &qword_254253F38);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_2541A93F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90C0, &qword_254253F20);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_254132DF4(a3, v24 - v10, &unk_27F5B90C0, &qword_254253F20);
  v12 = sub_25424E128();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_254132E5C(v11, &unk_27F5B90C0, &qword_254253F20);
  }

  else
  {
    sub_25424E118();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_25424E058();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_25424DD28() + 32;

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

      sub_254132E5C(a3, &unk_27F5B90C0, &qword_254253F20);

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

  sub_254132E5C(a3, &unk_27F5B90C0, &qword_254253F20);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

void *QueryController.__allocating_init()()
{
  v1 = v0;
  if (qword_27F5B8468 != -1)
  {
    swift_once();
  }

  v2 = *(off_27F5BAFB0 + 2);
  MetricsObserver = type metadata accessor for QueryMetricsObserver();
  v4 = sub_2541BE050();
  ObjectType = swift_getObjectType();
  LOBYTE(v14[0]) = v4 & 1;
  v6 = vdupq_n_s64(v4);
  *v6.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v6, xmmword_2542588C0), vshlq_u64(v6, xmmword_2542588B0))), 0x1000100010001);
  *(v14 + 1) = vuzp1_s8(*v6.i8, *v6.i8).u32[0];
  swift_unknownObjectRetain();
  v7 = sub_25414BE2C(v14, v2, MetricsObserver, &type metadata for Configuration.DefaultFeaturesDataSource, ObjectType, &off_2866378F0);
  sub_25414AE28(v2);
  v8 = sub_2541BE050();
  type metadata accessor for Configuration();
  swift_unknownObjectRetain();
  v9 = sub_2541BC434();
  sub_2541A9928(v14, v9);
  v12 = v8 & 1;
  v10 = vdupq_n_s64(v8);
  *v10.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v10, xmmword_2542588C0), vshlq_u64(v10, xmmword_2542588B0))), 0x1000100010001);
  v13 = vuzp1_s8(*v10.i8, *v10.i8).u32[0];
  return sub_2541AEB20(&v12, v7, v2, 0, v14, v1, &type metadata for Configuration.DefaultFeaturesDataSource, ObjectType, &off_2866378F0);
}

uint64_t QueryController.deinit()
{
  v1 = *(*(v0 + 56) + OBJC_IVAR____TtC13HomeKitEvents20QueryMetricsObserver_logEventDispatcher);
  if (v1)
  {
    [v1 removeObserver_];
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v2 = *(v0 + 64);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + 80));
  return v0;
}

uint64_t QueryController.__deallocating_deinit()
{
  v1 = *(*(v0 + 56) + OBJC_IVAR____TtC13HomeKitEvents20QueryMetricsObserver_logEventDispatcher);
  if (v1)
  {
    [v1 removeObserver_];
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v2 = *(v0 + 64);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + 80));

  return MEMORY[0x2821FE8D8](v0, 120, 7);
}

uint64_t sub_2541A9928@<X0>(double **a1@<X8>, double a2@<D0>)
{
  if (a2 <= 0.0)
  {
    if (a2 != 0.0)
    {
      a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8FF8, &qword_254254398);
      result = sub_25414081C(&unk_27F5B9000, &qword_27F5B8FF8, &qword_254254398);
      a1[4] = result;
      return result;
    }

    v4 = &qword_27F5BA208;
    v5 = &qword_254258968;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA208, &qword_254258968);
    v7 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v7 + 14) = MEMORY[0x277D84F98];
    a1[3] = v9;
    v8 = &unk_27F5BA210;
  }

  else
  {
    v4 = &qword_27F5BA218;
    v5 = &qword_254258970;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA218, &qword_254258970);
    v7 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v7 + 15) = MEMORY[0x277D84F98];
    v7[16] = 0.0;
    v7[14] = a2;
    a1[3] = v6;
    v8 = &unk_27F5BA220;
  }

  result = sub_25414081C(v8, v4, v5);
  a1[4] = result;
  *a1 = v7;
  return result;
}

uint64_t (*sub_2541A9A9C(uint64_t a1))@<X0>(void *a1@<X8>)
{
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA190, &qword_2542543A0);
  v2 = *(v25 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v25);
  v23 = &v23 - v4;
  v26 = sub_25424D8B8();
  v24 = *(v26 - 8);
  v5 = *(v24 + 64);
  MEMORY[0x28223BE20](v26);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EventQuery(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA1F0, &qword_254258410);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v16 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v23 - v17;
  sub_2541A9DDC(a1, v11);
  sub_25424D898();
  v27 = v11;
  v28 = v7;
  type metadata accessor for SomeEvent();
  (*(v2 + 104))(v23, *MEMORY[0x277D858A0], v25);
  sub_25424E278();
  (*(v24 + 8))(v7, v26);
  sub_2541AEBEC(v11);
  v19 = *(v13 + 32);
  v19(v16, v18, v12);
  v20 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v21 = swift_allocObject();
  v19((v21 + v20), v16, v12);
  return sub_2541AF020;
}

uint64_t sub_2541A9DDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v103 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E50, &qword_254254390);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v127 = &v102 - v7;
  v105 = sub_25424D218();
  v104 = *(v105 - 8);
  v8 = *(v104 + 64);
  MEMORY[0x28223BE20](v105);
  v119 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for EventQuery.Configuration(0);
  v10 = *(*(v121 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v121);
  v114 = &v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v102 = &v102 - v13;
  v116 = sub_25424E128();
  v115 = *(v116 - 1);
  v14 = v115[8];
  MEMORY[0x28223BE20](v116);
  v113 = &v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_25424D8B8();
  v17 = *(v16 - 8);
  v18 = v17[8];
  v19 = MEMORY[0x28223BE20](v16);
  v106 = &v102 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v102 - v22;
  v108 = &v102 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v102 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v102 - v27;
  v120 = &v102 - v27;
  v118 = sub_25424D948();
  v126 = *(v118 - 8);
  v29 = v126[8];
  v30 = MEMORY[0x28223BE20](v118);
  v125 = &v102 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v123 = &v102 - v33;
  MEMORY[0x28223BE20](v32);
  v130 = &v102 - v34;
  sub_25424D938();
  v109 = *(v3 + 56);
  v35 = v109;
  Base = type metadata accessor for QueryBase();
  v37 = v17[2];
  v112 = Base[5];
  (v37)(v28, a1 + v112, v16);
  v111 = Base[6];
  v128 = v26;
  (v37)(v26, a1 + v111, v16);
  v38 = Base[7];
  v110 = Base[8];
  v124 = *(a1 + v38);
  v117 = a1;
  LODWORD(v122) = *(a1 + v110);
  sub_254140708(v35 + OBJC_IVAR____TtC13HomeKitEvents20QueryMetricsObserver_features, &v138);
  (v37)(v23, v28, v16);
  v39 = v106;
  (v37)(v106, v26, v16);
  LogEvent = type metadata accessor for QueryLogEvent();
  v40 = objc_allocWithZone(LogEvent);
  v41 = &v40[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_queryStartTime];
  *v41 = 0;
  v41[8] = 1;
  *&v40[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numFetchedCKRecords] = 0;
  *&v40[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_totalCKRecordSize] = 0;
  *&v40[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numCKQueries] = 0;
  *&v40[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numCKQueriesSucceeded] = 0;
  v40[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_ckQueryCancelled] = 0;
  v40[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_ckQueryDroppedEvents] = 0;
  v40[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_ckQueryReachedLimit] = 0;
  v40[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_ckQueryTerminatedStream] = 0;
  v40[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_ckQueryResultNotHandled] = 0;
  v40[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_ckQueryResultProcessingEncounteredError] = 0;
  v40[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_ckQueryEncounteredError] = 0;
  v42 = &v40[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_ckQueryExecutionStartTime];
  *v42 = 0;
  v42[8] = 1;
  v43 = &v40[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_ckQueryExecutionEndTime];
  *v43 = 0;
  v43[8] = 1;
  *&v40[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numProcessedEvents] = 0;
  *&v40[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numIgnoredExpiredRecords] = 0;
  *&v40[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numIgnoredNoCreationDateRecords] = 0;
  *&v40[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numIgnoredNonUUIDNameRecords] = 0;
  *&v40[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numEventsSavedToCache] = 0;
  *&v40[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numEmittedEvents] = 0;
  v40[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_processingDroppedEvents] = 0;
  v40[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_processingReachedLimit] = 0;
  v40[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_processingTerminatedStream] = 0;
  v40[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_processingResultNotHandled] = 0;
  v40[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_processingEncounteredError] = 0;
  v40[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_cancelled] = 0;
  v40[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_succeeded] = 0;
  v44 = &v40[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_coreAnalyticsEventName];
  *v44 = 0xD000000000000027;
  v44[1] = 0x8000000254250B80;
  *&v40[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_coreAnalyticsEventOptions] = 0;
  v45 = v139;
  v46 = v140;
  __swift_project_boxed_opaque_existential_1(&v138, v139);
  v40[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_subqueriesEnabled] = (*(v46 + 16))(v45, v46) & 1;
  v47 = v108;
  (v37)(&v40[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_queryStartDate], v108, v16);
  (v37)(&v40[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_queryEndDate], v39, v16);
  *&v40[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_limit] = v124;
  v40[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_queryType] = 1;
  v40[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_scope] = v122;
  v137.receiver = v40;
  v137.super_class = LogEvent;
  v48 = objc_msgSendSuper2(&v137, sel_init);
  v49 = v17[1];
  (v49)(v39, v16);
  (v49)(v47, v16);
  __swift_destroy_boxed_opaque_existential_1(&v138);
  v50 = *(v109 + OBJC_IVAR____TtC13HomeKitEvents20QueryMetricsObserver_pendingQueryLogEvents);
  os_unfair_lock_lock((v50 + 24));
  v51 = v48;
  v52 = *(v50 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v138 = *(v50 + 16);
  *(v50 + 16) = 0x8000000000000000;
  v54 = v130;
  sub_2541AE4A0(v51, v130, isUniquelyReferenced_nonNull_native);
  *(v50 + 16) = v138;
  os_unfair_lock_unlock((v50 + 24));

  (v49)(v128, v16);
  v55 = v120;
  v49();
  v56 = v129;
  v122 = *(v129 + 64);
  v57 = v113;
  sub_25424E1D8();
  v109 = sub_2541A50D4();
  (v115[1])(v57, v116);
  v58 = *(v56 + 72);
  sub_254140708(v56 + 16, &v138);
  v59 = v110;
  v60 = v54;
  v61 = v123;
  v62 = v58;
  if (v58)
  {
    goto LABEL_4;
  }

  v63 = v110;
  v55 = v123;
  if (qword_27F5B8420 != -1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v62 = qword_27F5BA548;
    v64 = qword_27F5BA548;
    v60 = v130;
    v61 = v55;
    v55 = v120;
    v59 = v63;
LABEL_4:
    v113 = v62;
    v65 = v117;
    v110 = *(v59 + v117);
    v66 = v126;
    v67 = v37;
    v69 = v126 + 2;
    v68 = v126[2];
    v70 = v118;
    v68(v61, v60, v118);
    v116 = v68;
    v115 = v69;
    v68(v125, v65, v70);
    v67(v55, v65 + v112, v16);
    v67(v128, v65 + v111, v16);
    v71 = v58;
    v72 = v119;
    sub_25424D1E8();
    v73 = type metadata accessor for HomeQuery();
    v16 = *(v65 + *(v73 + 20));
    (v66[7])(v127, 1, 1, v70);
    LODWORD(v69) = *(v65 + *(v73 + 24));
    sub_254140708(v129 + 80, &v135);
    v58 = v70;
    LODWORD(v128) = v69;
    if (!v16 || !sub_2541538B4(6, v16))
    {
      break;
    }

    *&v132 = MEMORY[0x277D84FA0];
    v74 = 1 << *(v16 + 32);
    v75 = -1;
    if (v74 < 64)
    {
      v75 = ~(-1 << v74);
    }

    v37 = v75 & *(v16 + 56);
    v76 = (v74 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    swift_unknownObjectRetain();
    v77 = 0;
    v63 = v114;
    while (v37)
    {
      v78 = v77;
LABEL_15:
      v79 = __clz(__rbit64(v37));
      v37 &= v37 - 1;
      v80 = *(*(v16 + 48) + (v79 | (v78 << 6)));
      if (v80 >= 6)
      {
        sub_254168D1C(&v131, 0);
        sub_254168D1C(&v131, 1);
        v80 = 2;
      }

      sub_254168D1C(&v131, v80);
      v77 = v78;
    }

    while (1)
    {
      v78 = v77 + 1;
      if (__OFADD__(v77, 1))
      {
        break;
      }

      if (v78 >= v76)
      {

        v82 = v132;
        v81 = v119;
        v58 = v118;
        goto LABEL_19;
      }

      v37 = *(v16 + 56 + 8 * v78);
      ++v77;
      if (v37)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_24:
    swift_once();
  }

  v81 = v72;

  swift_unknownObjectRetain();
  v82 = 0;
  v63 = v114;
LABEL_19:
  v83 = v16;
  v84 = v110 | 0x8000000000000000;
  sub_254140708(&v138, v63);
  v63[5] = v113;
  v63[6] = v84;
  v63[7] = 0;
  v85 = v121;
  v86 = v123;
  v87 = v116;
  v116(v63 + *(v121 + 24), v123, v58);
  v88 = v125;
  v87(v63 + v85[7], v125, v58);
  v89 = v104;
  v90 = v105;
  (*(v104 + 16))(v63 + v85[8], v81, v105);
  *(v63 + v85[9]) = v83;
  *(v63 + v85[10]) = v82;
  v91 = v127;
  sub_254132DF4(v127, v63 + v85[11], &unk_27F5B8E50, &qword_254254390);
  v92 = v63 + v85[12];
  *v92 = v124;
  v92[8] = 0;
  *(v63 + v85[13]) = 0;
  *(v63 + v85[14]) = 0;
  v93 = v63 + v85[15];
  *v93 = v109;
  v93[8] = 0;
  sub_254132E5C(v91, &unk_27F5B8E50, &qword_254254390);
  (*(v89 + 8))(v81, v90);
  v94 = v126[1];
  v95 = v88;
  v96 = v58;
  v94(v95, v58);
  v94(v86, v58);
  __swift_destroy_boxed_opaque_existential_1(&v138);
  *(v63 + v85[16]) = v122;
  *(v63 + v85[17]) = 24;
  if (v136)
  {
    sub_25412DC4C(&v135, &v132);
  }

  else
  {
    v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8FF8, &qword_254254398);
    v134 = sub_25414081C(&unk_27F5B9000, &qword_27F5B8FF8, &qword_254254398);
  }

  v97 = v103;
  v98 = v102;
  v99 = v128;
  v100 = v121;
  sub_25412DC4C(&v132, v63 + *(v121 + 72));
  *(v63 + v100[19]) = 3000;
  *(v63 + v100[20]) = 5;
  *(v63 + v100[21]) = 0;
  *(v63 + v100[22]) = v99;
  sub_2541AEFB8(v63, v98, type metadata accessor for EventQuery.Configuration);
  sub_25414C6E4(v98, v97);
  return (v94)(v130, v96);
}

uint64_t sub_2541AACB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA190, &qword_2542543A0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14[-v5];
  ResultAsyncSequence = type metadata accessor for QueryResultAsyncSequence(0);
  v8 = *(*(ResultAsyncSequence - 8) + 64);
  MEMORY[0x28223BE20](ResultAsyncSequence);
  v9 = type metadata accessor for EventQuery(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v14[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2541A9DDC(a1, v12);
  v15 = v12;
  type metadata accessor for SomeEvent();
  (*(v3 + 104))(v6, *MEMORY[0x277D858A0], v2);
  sub_25424E278();
  sub_2541AEC48(&qword_27F5BA198, type metadata accessor for QueryResultAsyncSequence);
  sub_25424EA48();
  return sub_2541AEBEC(v12);
}

uint64_t sub_2541AAEEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BA1D0, &unk_2542544C0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - v7;
  v9 = type metadata accessor for EventQuery(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90C0, &qword_254253F20);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v22 - v15;
  v17 = sub_25424E128();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  sub_2541AEDF4(a2, v12, type metadata accessor for EventQuery);
  (*(v5 + 16))(v8, a1, v4);
  v18 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v19 = (v11 + *(v5 + 80) + v18) & ~*(v5 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  sub_2541AEFB8(v12, v20 + v18, type metadata accessor for EventQuery);
  (*(v5 + 32))(v20 + v19, v8, v4);
  sub_2541A93F0(0, 0, v16, &unk_254258950, v20);
}

uint64_t sub_2541AB198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v6 = type metadata accessor for SomeEvent();
  v5[6] = v6;
  v7 = *(v6 - 8);
  v5[7] = v7;
  v8 = *(v7 + 64) + 15;
  v5[8] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BA1E0, &qword_254254560);
  v5[9] = v9;
  v10 = *(v9 - 8);
  v5[10] = v10;
  v11 = *(v10 + 64) + 15;
  v5[11] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9110, &qword_254254530) - 8) + 64) + 15;
  v5[12] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA190, &qword_2542543A0);
  v5[13] = v13;
  v14 = *(v13 - 8);
  v5[14] = v14;
  v15 = *(v14 + 64) + 15;
  v5[15] = swift_task_alloc();
  v16 = sub_25424D8B8();
  v5[16] = v16;
  v17 = *(v16 - 8);
  v5[17] = v17;
  v18 = *(v17 + 64) + 15;
  v5[18] = swift_task_alloc();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA1F0, &qword_254258410);
  v5[19] = v19;
  v20 = *(v19 - 8);
  v5[20] = v20;
  v21 = *(v20 + 64) + 15;
  v5[21] = swift_task_alloc();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA0B8, &qword_254258420);
  v5[22] = v22;
  v23 = *(v22 - 8);
  v5[23] = v23;
  v24 = *(v23 + 64) + 15;
  v5[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2541AB48C, 0, 0);
}

uint64_t sub_2541AB48C()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[18];
  v18 = v0[19];
  v19 = v0[24];
  v4 = v0[17];
  v5 = v0[14];
  v6 = v0[15];
  v16 = v0[13];
  v17 = v0[16];
  v7 = v0[6];
  v8 = v0[4];
  sub_25424D898();
  v9 = swift_task_alloc();
  *(v9 + 16) = v8;
  *(v9 + 24) = v3;
  (*(v5 + 104))(v6, *MEMORY[0x277D858A0], v16);
  sub_25424E278();

  (*(v4 + 8))(v3, v17);
  sub_25424E178();
  (*(v2 + 8))(v1, v18);
  v10 = *(MEMORY[0x277D858B8] + 4);
  v11 = swift_task_alloc();
  v0[25] = v11;
  *v11 = v0;
  v11[1] = sub_2541AB62C;
  v12 = v0[24];
  v13 = v0[22];
  v14 = v0[12];

  return MEMORY[0x2822005A8](v14, 0, 0, v13, v0 + 2);
}

uint64_t sub_2541AB62C()
{
  v2 = *(*v1 + 200);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_2541AB96C;
  }

  else
  {
    v3 = sub_2541AB73C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2541AB73C()
{
  v1 = v0[12];
  if ((*(v0[7] + 48))(v1, 1, v0[6]) == 1)
  {
    v2 = v0[21];
    v3 = v0[18];
    v4 = v0[15];
    v5 = v0[11];
    v6 = v0[8];
    v7 = v0[5];
    (*(v0[23] + 8))(v0[24], v0[22]);
    v0[3] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BA1D0, &unk_2542544C0);
    sub_25424E238();

    v8 = v0[1];

    return v8();
  }

  else
  {
    v11 = v0[10];
    v10 = v0[11];
    v12 = v0[9];
    v13 = v0[5];
    sub_2541AEFB8(v1, v0[8], type metadata accessor for SomeEvent);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BA1D0, &unk_2542544C0);
    sub_25424E228();
    (*(v11 + 8))(v10, v12);
    v14 = *(MEMORY[0x277D858B8] + 4);
    v15 = swift_task_alloc();
    v0[25] = v15;
    *v15 = v0;
    v15[1] = sub_2541AB62C;
    v16 = v0[24];
    v17 = v0[22];
    v18 = v0[12];

    return MEMORY[0x2822005A8](v18, 0, 0, v17, v0 + 2);
  }
}

uint64_t sub_2541AB96C()
{
  v1 = v0[21];
  v2 = v0[18];
  v3 = v0[15];
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[8];
  (*(v0[23] + 8))(v0[24], v0[22]);
  v7 = v0[2];

  v8 = v0[1];

  return v8();
}

uint64_t sub_2541ABA44(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_2541ABA64, 0, 0);
}

uint64_t sub_2541ABA64()
{
  v1 = v0[2];
  sub_2541AEDF4(v0[3], v1, type metadata accessor for SomeEvent);
  v2 = type metadata accessor for SomeEvent();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = v0[1];

  return v3();
}

uint64_t QueryController.start(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  boxed_opaque_existential_1 = a2;
  v113 = type metadata accessor for EventDigestQuery.Configuration(0);
  v4 = *(*(v113 - 8) + 64);
  MEMORY[0x28223BE20](v113);
  v104 = &v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_25424D218();
  v110 = *(v111 - 8);
  v6 = *(v110 + 64);
  MEMORY[0x28223BE20](v111);
  v108 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EventDigestQuery(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v112 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_25424E128();
  v103 = *(v114 - 8);
  v11 = *(v103 + 64);
  MEMORY[0x28223BE20](v114);
  v102 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_25424D8B8();
  v98 = *(v13 - 8);
  v14 = v98;
  v15 = *(v98 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = v18;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v92 - v20;
  v93 = &v92 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v92 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v92 - v25;
  v106 = sub_25424D948();
  v121 = *(v106 - 8);
  v27 = *(v121 + 64);
  v28 = MEMORY[0x28223BE20](v106);
  v109 = &v92 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v118 = &v92 - v31;
  MEMORY[0x28223BE20](v30);
  v120 = &v92 - v32;
  sub_25424D938();
  v97 = *(v2 + 56);
  v33 = v97;
  Base = type metadata accessor for QueryBase();
  v115 = Base[5];
  v35 = *(v14 + 16);
  v95 = v26;
  v35(v26, a1 + v115, v13);
  v100 = Base[6];
  v117 = v24;
  v35(v24, a1 + v100, v13);
  v36 = Base[8];
  v119 = *(a1 + Base[7]);
  v105 = a1;
  v101 = v36;
  LODWORD(v96) = *(a1 + v36);
  sub_254140708(v33 + OBJC_IVAR____TtC13HomeKitEvents20QueryMetricsObserver_features, &v128);
  v35(v21, v26, v13);
  v35(v18, v24, v13);
  LogEvent = type metadata accessor for QueryLogEvent();
  v38 = objc_allocWithZone(LogEvent);
  v39 = &v38[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_queryStartTime];
  *v39 = 0;
  v39[8] = 1;
  *&v38[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numFetchedCKRecords] = 0;
  *&v38[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_totalCKRecordSize] = 0;
  *&v38[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numCKQueries] = 0;
  *&v38[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numCKQueriesSucceeded] = 0;
  v38[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_ckQueryCancelled] = 0;
  v38[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_ckQueryDroppedEvents] = 0;
  v38[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_ckQueryReachedLimit] = 0;
  v38[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_ckQueryTerminatedStream] = 0;
  v38[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_ckQueryResultNotHandled] = 0;
  v38[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_ckQueryResultProcessingEncounteredError] = 0;
  v38[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_ckQueryEncounteredError] = 0;
  v40 = &v38[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_ckQueryExecutionStartTime];
  *v40 = 0;
  v40[8] = 1;
  v41 = &v38[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_ckQueryExecutionEndTime];
  *v41 = 0;
  v41[8] = 1;
  *&v38[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numProcessedEvents] = 0;
  *&v38[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numIgnoredExpiredRecords] = 0;
  *&v38[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numIgnoredNoCreationDateRecords] = 0;
  *&v38[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numIgnoredNonUUIDNameRecords] = 0;
  *&v38[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numEventsSavedToCache] = 0;
  *&v38[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numEmittedEvents] = 0;
  v38[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_processingDroppedEvents] = 0;
  v38[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_processingReachedLimit] = 0;
  v38[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_processingTerminatedStream] = 0;
  v38[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_processingResultNotHandled] = 0;
  v38[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_processingEncounteredError] = 0;
  v38[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_cancelled] = 0;
  v38[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_succeeded] = 0;
  v42 = &v38[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_coreAnalyticsEventName];
  *v42 = 0xD000000000000027;
  v42[1] = 0x8000000254250B80;
  *&v38[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_coreAnalyticsEventOptions] = 0;
  v43 = v129;
  v44 = v130;
  __swift_project_boxed_opaque_existential_1(&v128, v129);
  v38[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_subqueriesEnabled] = (*(v44 + 16))(v43, v44) & 1;
  v45 = v93;
  v35(&v38[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_queryStartDate], v93, v13);
  v46 = v94;
  v99 = v35;
  v35(&v38[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_queryEndDate], v94, v13);
  *&v38[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_limit] = v119;
  v38[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_queryType] = 2;
  v38[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_scope] = v96;
  v127.receiver = v38;
  v127.super_class = LogEvent;
  v47 = objc_msgSendSuper2(&v127, sel_init);
  v48 = *(v98 + 8);
  (v48)(v46, v13);
  (v48)(v45, v13);
  __swift_destroy_boxed_opaque_existential_1(&v128);
  v49 = *(v97 + OBJC_IVAR____TtC13HomeKitEvents20QueryMetricsObserver_pendingQueryLogEvents);
  os_unfair_lock_lock((v49 + 24));
  v50 = v47;
  v51 = *(v49 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v128 = *(v49 + 16);
  *(v49 + 16) = 0x8000000000000000;
  sub_2541AE4A0(v50, v120, isUniquelyReferenced_nonNull_native);
  *(v49 + 16) = v128;
  v53 = v121;
  os_unfair_lock_unlock((v49 + 24));

  (v48)(v117, v13);
  v54 = v95;
  v48();
  v55 = v116;
  v97 = *(v116 + 64);
  v56 = v102;
  sub_25424E1D8();
  v57 = sub_2541A50D4();
  v58 = v115;
  v98 = v57;
  (*(v103 + 8))(v56, v114);
  v59 = *(v55 + 72);
  v114 = type metadata accessor for DigestQuery.AsyncEventSequence(0);
  v60 = boxed_opaque_existential_1;
  boxed_opaque_existential_1[3] = v114;
  v60[4] = sub_2541AEC48(&unk_27F5BA1A0, type metadata accessor for DigestQuery.AsyncEventSequence);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v60);
  v61 = v118;
  v62 = v59;
  if (!v59)
  {
    v63 = v118;
    if (qword_27F5B8420 != -1)
    {
      swift_once();
    }

    v62 = qword_27F5BA548;
    v64 = qword_27F5BA548;
    v61 = v63;
    v58 = v115;
  }

  v103 = v62;
  v65 = v105;
  v66 = v101;
  v102 = *(v105 + v101);
  v96 = *(v53 + 16);
  v67 = v106;
  v96(v61, v105, v106);
  v68 = v65 + v58;
  v69 = v13;
  v70 = v13;
  v71 = v99;
  v99(v54, v68, v69);
  v71(v117, v65 + v100, v70);
  v72 = v59;
  v73 = v108;
  sub_25424D1E8();
  LODWORD(v117) = *(v65 + v66);
  v74 = *(v65 + *(type metadata accessor for DigestQuery(0) + 20));
  v75 = v109;
  v76 = v120;
  v96(v109, v120, v67);
  sub_254140708(v116 + 16, &v128);
  sub_254132DF4(&v128, &v122, &qword_27F5BC7B0, &qword_2542588D8);
  v77 = v67;
  if (v123)
  {
    sub_25412DC4C(&v122, &v124);
    v78 = v97;
    swift_unknownObjectRetain();
  }

  else
  {
    v125 = &type metadata for Configuration.DefaultFeaturesDataSource;
    v126 = &off_2866378F0;
    v78 = v97;
    swift_unknownObjectRetain();
    v79 = sub_2541BE050();
    LOBYTE(v124) = v79 & 1;
    v80 = vdupq_n_s64(v79);
    *v80.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v80, xmmword_2542588C0), vshlq_u64(v80, xmmword_2542588B0))), 0x1000100010001);
    *(&v124 + 1) = vuzp1_s8(*v80.i8, *v80.i8).u32[0];
    if (v123)
    {
      sub_254132E5C(&v122, &qword_27F5BC7B0, &qword_2542588D8);
    }
  }

  v81 = v102 | 0x8000000000000000;
  sub_254132E5C(&v128, &qword_27F5BC7B0, &qword_2542588D8);
  v82 = v104;
  sub_25412DC4C(&v124, v104);
  v83 = v103;
  *(v82 + 5) = v78;
  *(v82 + 6) = v83;
  *(v82 + 7) = v81;
  *(v82 + 8) = 0;
  v84 = v113;
  v85 = v121;
  v86 = *(v121 + 32);
  v86(&v82[*(v113 + 28)], v118, v77);
  (*(v110 + 32))(&v82[v84[8]], v73, v111);
  *&v82[v84[9]] = 0;
  v87 = &v82[v84[10]];
  *v87 = 0;
  v87[8] = 1;
  v82[v84[11]] = 0;
  v82[v84[12]] = 0;
  v82[v84[13]] = v117;
  v82[v84[14]] = v74;
  v86(&v82[v84[15]], v75, v77);
  *&v82[v84[16]] = v98;
  v88 = v112;
  sub_2541AEFB8(v82, v112, type metadata accessor for EventDigestQuery.Configuration);
  v89 = v88;
  v90 = boxed_opaque_existential_1;
  sub_2541AEFB8(v89, boxed_opaque_existential_1, type metadata accessor for EventDigestQuery);
  *(v90 + *(v114 + 20)) = v119;
  return (*(v85 + 8))(v76, v77);
}

uint64_t QueryController.energyKitOldestDigestStartDate(homeIdentifier:scope:qualityOfService:)(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  *(v4 + 32) = *a3;
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_2541A4A28;

  return QueryController.energyKitOldestEventDate(homeIdentifier:scope:qualityOfService:)(a1, a2, (v4 + 32), a4);
}

uint64_t QueryController.energyKitOldestEventDate(homeIdentifier:scope:qualityOfService:)(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  *(v5 + 88) = a4;
  *(v5 + 96) = v4;
  *(v5 + 72) = a1;
  *(v5 + 80) = a2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BA1B0, qword_2542544A0) - 8) + 64) + 15;
  *(v5 + 104) = swift_task_alloc();
  *(v5 + 112) = swift_task_alloc();
  v8 = sub_25424D8B8();
  *(v5 + 120) = v8;
  v9 = *(v8 - 8);
  *(v5 + 128) = v9;
  v10 = *(v9 + 64) + 15;
  *(v5 + 136) = swift_task_alloc();
  *(v5 + 144) = swift_task_alloc();
  *(v5 + 152) = swift_task_alloc();
  *(v5 + 160) = swift_task_alloc();
  *(v5 + 168) = swift_task_alloc();
  *(v5 + 176) = swift_task_alloc();
  v11 = sub_25424D948();
  *(v5 + 184) = v11;
  v12 = *(v11 - 8);
  *(v5 + 192) = v12;
  v13 = *(v12 + 64) + 15;
  *(v5 + 200) = swift_task_alloc();
  *(v5 + 336) = *a3;

  return MEMORY[0x2822009F8](sub_2541ACACC, 0, 0);
}

uint64_t sub_2541ACACC()
{
  v52 = v0;
  v44 = *(v0 + 336);
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v3 = *(v0 + 152);
  v4 = *(v0 + 160);
  v42 = v4;
  v5 = *(v0 + 120);
  v6 = *(v0 + 128);
  v7 = *(v0 + 96);
  v47 = *(v0 + 200);
  v49 = v7;
  sub_25424D938();
  v8 = *(v7 + 56);
  v45 = v8;
  v46 = v1;
  sub_25424D6D8();
  sub_25424D7B8();
  sub_254140708(v8 + OBJC_IVAR____TtC13HomeKitEvents20QueryMetricsObserver_features, v0 + 16);
  v9 = *(v6 + 16);
  v9(v4, v1, v5);
  v9(v3, v2, v5);
  LogEvent = type metadata accessor for QueryLogEvent();
  v10 = objc_allocWithZone(LogEvent);
  v11 = &v10[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_queryStartTime];
  *v11 = 0;
  v11[8] = 1;
  *&v10[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numFetchedCKRecords] = 0;
  *&v10[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_totalCKRecordSize] = 0;
  *&v10[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numCKQueries] = 0;
  *&v10[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numCKQueriesSucceeded] = 0;
  v10[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_ckQueryCancelled] = 0;
  v10[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_ckQueryDroppedEvents] = 0;
  v10[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_ckQueryReachedLimit] = 0;
  v10[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_ckQueryTerminatedStream] = 0;
  v10[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_ckQueryResultNotHandled] = 0;
  v10[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_ckQueryResultProcessingEncounteredError] = 0;
  v10[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_ckQueryEncounteredError] = 0;
  v12 = &v10[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_ckQueryExecutionStartTime];
  *v12 = 0;
  v12[8] = 1;
  v13 = &v10[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_ckQueryExecutionEndTime];
  *v13 = 0;
  v13[8] = 1;
  *&v10[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numProcessedEvents] = 0;
  *&v10[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numIgnoredExpiredRecords] = 0;
  *&v10[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numIgnoredNoCreationDateRecords] = 0;
  *&v10[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numIgnoredNonUUIDNameRecords] = 0;
  *&v10[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numEventsSavedToCache] = 0;
  *&v10[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numEmittedEvents] = 0;
  v10[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_processingDroppedEvents] = 0;
  v10[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_processingReachedLimit] = 0;
  v10[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_processingTerminatedStream] = 0;
  v10[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_processingResultNotHandled] = 0;
  v10[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_processingEncounteredError] = 0;
  v10[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_cancelled] = 0;
  v10[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_succeeded] = 0;
  v14 = &v10[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_coreAnalyticsEventName];
  *v14 = 0xD000000000000027;
  v14[1] = 0x8000000254250B80;
  *&v10[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_coreAnalyticsEventOptions] = 0;
  v16 = *(v0 + 40);
  v15 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v16);
  v10[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_subqueriesEnabled] = (*(v15 + 16))(v16, v15) & 1;
  v9(&v10[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_queryStartDate], v42, v5);
  v9(&v10[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_queryEndDate], v3, v5);
  *&v10[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_limit] = 1;
  v10[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_queryType] = 2;
  v10[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_scope] = v44;
  *(v0 + 56) = v10;
  *(v0 + 64) = LogEvent;
  v17 = objc_msgSendSuper2((v0 + 56), sel_init);
  v18 = *(v6 + 8);
  v18(v3, v5);
  v18(v42, v5);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v19 = *(v45 + OBJC_IVAR____TtC13HomeKitEvents20QueryMetricsObserver_pendingQueryLogEvents);
  os_unfair_lock_lock((v19 + 24));
  v20 = v17;
  v21 = *(v19 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v51 = *(v19 + 16);
  *(v19 + 16) = 0x8000000000000000;
  sub_2541AE4A0(v20, v47, isUniquelyReferenced_nonNull_native);
  *(v19 + 16) = v51;
  os_unfair_lock_unlock((v19 + 24));

  v18(v2, v5);
  v18(v46, v5);
  v23 = *(v49 + 72);
  if (v23)
  {
    v24 = *(v49 + 72);
  }

  else
  {
    if (qword_27F5B8420 != -1)
    {
      swift_once();
    }

    v24 = qword_27F5BA548;
    v23 = 0;
  }

  *(v0 + 208) = v24;
  v50 = *(v0 + 336);
  v25 = *(v0 + 200);
  v26 = *(v0 + 80);
  v48 = *(v0 + 88);
  v27 = objc_allocWithZone(MEMORY[0x277CBC4F8]);
  v28 = v23;
  v29 = [v27 init];
  *(v0 + 216) = v29;
  v51 = v29;
  sub_2541ADC0C(&v51, v24);
  *(v0 + 224) = sub_254148D7C(0, &unk_27F5B9010, 0x277CBC578);
  v30 = objc_opt_self();
  *(v0 + 232) = v30;
  v31 = [v30 predicateWithValue_];
  v32 = sub_25424E538();
  *(v0 + 240) = v32;
  *(v0 + 248) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BA1C0, &qword_2542543B0);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_254254370;
  v34 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v35 = sub_25424DCA8();
  v36 = [v34 initWithKey:v35 ascending:1];

  *(v33 + 32) = v36;
  *(v0 + 256) = sub_254148D7C(0, &unk_27F5B9020, 0x277CCAC98);
  v37 = sub_25424DF88();

  [v32 setSortDescriptors_];

  v38 = swift_task_alloc();
  *(v0 + 264) = v38;
  *(v38 + 16) = v26;
  *(v38 + 24) = 1;
  *(v38 + 32) = v32;
  *(v38 + 40) = v25;
  *(v38 + 48) = &unk_2866333A0;
  *(v38 + 56) = v48;
  v39 = swift_task_alloc();
  *(v0 + 272) = v39;
  *v39 = v0;
  v39[1] = sub_2541AD23C;
  v40 = *(v0 + 112);

  return sub_25414D344(v40, &unk_2542588F0, v38, v24, v50 | 0x8000000000000000, v29);
}

uint64_t sub_2541AD23C()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v4 = *v1;
  *(*v1 + 280) = v0;

  v5 = *(v2 + 264);

  if (v0)
  {
    v6 = sub_2541AD70C;
  }

  else
  {
    v6 = sub_2541AD370;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2541AD370()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  v3 = *(v0 + 112);

  v4 = *(v2 + 48);
  *(v0 + 288) = v4;
  *(v0 + 296) = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v3, 1, v1) == 1)
  {
    v6 = *(v0 + 248);
    v5 = *(v0 + 256);
    v7 = *(v0 + 224);
    v8 = *(v0 + 232);
    v41 = *(v0 + 336);
    v9 = *(v0 + 200);
    v42 = *(v0 + 208);
    v43 = *(v0 + 216);
    v10 = *(v0 + 80);
    v11 = *(v0 + 88);
    sub_254132E5C(*(v0 + 112), &unk_27F5BA1B0, qword_2542544A0);
    v12 = [v8 predicateWithValue_];
    v13 = sub_25424E538();
    *(v0 + 304) = v13;
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_254254370;
    v15 = objc_allocWithZone(MEMORY[0x277CCAC98]);
    v16 = sub_25424DCA8();
    v17 = [v15 initWithKey:v16 ascending:1];

    *(v14 + 32) = v17;
    v18 = sub_25424DF88();

    [v13 setSortDescriptors_];

    v19 = swift_task_alloc();
    *(v0 + 312) = v19;
    *(v19 + 16) = v10;
    *(v19 + 24) = 1;
    *(v19 + 32) = v13;
    *(v19 + 40) = v9;
    *(v19 + 48) = &unk_2866333D0;
    *(v19 + 56) = v11;
    *(v19 + 64) = 1702125924;
    *(v19 + 72) = 0xE400000000000000;
    v20 = swift_task_alloc();
    *(v0 + 320) = v20;
    *v20 = v0;
    v20[1] = sub_2541AD81C;
    v21 = *(v0 + 104);

    return sub_25414D344(v21, &unk_2542543C0, v19, v42, v41 | 0x8000000000000000, v43);
  }

  else
  {
    v24 = *(v0 + 208);
    v23 = *(v0 + 216);
    v25 = *(v0 + 144);
    v26 = *(v0 + 120);
    v27 = *(v0 + 128);
    v28 = *(v0 + 112);
    v29 = *(v0 + 72);
    (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));

    v30 = *(v27 + 32);
    v30(v25, v28, v26);
    v30(v29, v25, v26);
    v31 = *(v0 + 200);
    v33 = *(v0 + 168);
    v32 = *(v0 + 176);
    v35 = *(v0 + 152);
    v34 = *(v0 + 160);
    v37 = *(v0 + 136);
    v36 = *(v0 + 144);
    v39 = *(v0 + 104);
    v38 = *(v0 + 112);
    (*(*(v0 + 128) + 56))(*(v0 + 72), 0, 1, *(v0 + 120));

    v40 = *(v0 + 8);

    return v40();
  }
}

uint64_t sub_2541AD70C()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 192);

  v4 = *(v0 + 176);
  v6 = *(v0 + 160);
  v5 = *(v0 + 168);
  v8 = *(v0 + 144);
  v7 = *(v0 + 152);
  v9 = *(v0 + 136);
  v10 = *(v0 + 112);
  v13 = *(v0 + 104);
  v14 = *(v0 + 280);
  (*(v3 + 8))(*(v0 + 200), *(v0 + 184));

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_2541AD81C()
{
  v2 = *v1;
  v3 = *(*v1 + 320);
  v4 = *v1;
  *(*v1 + 328) = v0;

  v5 = *(v2 + 312);

  if (v0)
  {
    v6 = sub_2541ADB00;
  }

  else
  {
    v6 = sub_2541AD950;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2541AD950()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 288);
  v4 = *(v0 + 208);
  v3 = *(v0 + 216);
  v6 = *(v0 + 192);
  v5 = *(v0 + 200);
  v7 = *(v0 + 184);
  v8 = *(v0 + 120);
  v9 = *(v0 + 104);

  (*(v6 + 8))(v5, v7);
  if (v2(v9, 1, v8) == 1)
  {
    sub_254132E5C(*(v0 + 104), &unk_27F5BA1B0, qword_2542544A0);
    v10 = 1;
  }

  else
  {
    v11 = *(v0 + 136);
    v12 = *(v0 + 120);
    v13 = *(v0 + 72);
    v14 = *(*(v0 + 128) + 32);
    v14(v11, *(v0 + 104), v12);
    v14(v13, v11, v12);
    v10 = 0;
  }

  v15 = *(v0 + 200);
  v17 = *(v0 + 168);
  v16 = *(v0 + 176);
  v19 = *(v0 + 152);
  v18 = *(v0 + 160);
  v21 = *(v0 + 136);
  v20 = *(v0 + 144);
  v23 = *(v0 + 104);
  v22 = *(v0 + 112);
  (*(*(v0 + 128) + 56))(*(v0 + 72), v10, 1, *(v0 + 120));

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_2541ADB00()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);

  v13 = *(v0 + 328);
  v3 = *(v0 + 176);
  v5 = *(v0 + 160);
  v4 = *(v0 + 168);
  v7 = *(v0 + 144);
  v6 = *(v0 + 152);
  v8 = *(v0 + 136);
  v9 = *(v0 + 104);
  v10 = *(v0 + 112);
  (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));

  v11 = *(v0 + 8);

  return v11();
}

void sub_2541ADC0C(void **a1, uint64_t a2)
{
  v3 = *a1;
  v16[2] = 0;
  v16[3] = 0xE000000000000000;
  sub_25424E688();
  v16[0] = 47;
  v16[1] = 0xE100000000000000;
  v15[2] = v16;
  v4 = sub_2541D870C(0x7FFFFFFFFFFFFFFFLL, 1, sub_254148F24, v15, 0xD000000000000023, 0x8000000254250C60, "encryptionKeyCache");
  if (v4[2])
  {
    v5 = v4[4];
    v6 = v4[5];
    v7 = v4[6];
    v8 = v4[7];

    v9 = MEMORY[0x259C05BF0](v5, v6, v7, v8);
    v11 = v10;

    MEMORY[0x259C05CA0](v9, v11);

    MEMORY[0x259C05CA0](0xD000000000000015, 0x8000000254250C90);
    v12 = sub_25424DCA8();

    [v3 setName_];

    v13 = [v3 defaultConfiguration];
    if (v13)
    {
      v14 = v13;
      [v13 setContainer_];

      return;
    }
  }

  else
  {

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_2541ADDC0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA1F0, &qword_254258410);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA0B8, &qword_254258420);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - v12;
  (*(v5 + 16))(v8, a1, v4);
  sub_25414081C(&qword_27F5BA1F8, &qword_27F5BA1F0, &qword_254258410);
  sub_25424E208();
  *a2 = 0;
  a2[1] = 0;
  sub_25412DC98(0);
  v14 = swift_allocBox();
  result = (*(v10 + 32))(v15, v13, v9);
  *a2 = &unk_254258960;
  a2[1] = v14;
  return result;
}

uint64_t sub_2541ADFB4(uint64_t a1)
{
  v1[5] = a1;
  v1[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA0B8, &qword_254258420);
  v1[7] = swift_projectBox();

  return MEMORY[0x2822009F8](sub_2541AE040, 0, 0);
}

uint64_t sub_2541AE040()
{
  v1 = v0[7];
  swift_beginAccess();
  v2 = sub_25414081C(&qword_27F5BA200, &qword_27F5BA0B8, &qword_254258420);
  v3 = *(MEMORY[0x277D856D0] + 4);
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_2541AE128;
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[5];

  return MEMORY[0x282200308](v7, v5, v2);
}

uint64_t sub_2541AE128()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  *(v3 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2541AE264, 0, 0);
  }

  else
  {
    swift_endAccess();
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_2541AE264()
{
  swift_endAccess();
  v1 = *(v0 + 8);
  v2 = *(v0 + 72);

  return v1();
}

_OWORD *sub_2541AE2C8(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_25424E848();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_2542208F8(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_2542228C8();
      goto LABEL_7;
    }

    sub_254220E7C(v18, a3 & 1);
    v24 = *v4;
    v25 = sub_2542208F8(a2);
    if ((v19 & 1) == (v26 & 1))
    {
      v15 = v25;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_2541AE938(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_25424EB38();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = (v21[7] + 32 * v15);
  __swift_destroy_boxed_opaque_existential_1(v22);

  return sub_25412DCA8(a1, v22);
}

void sub_2541AE4A0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_25424D948();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_2542209D4(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_254222CC4();
      goto LABEL_7;
    }

    sub_2542214DC(v18, a3 & 1);
    v24 = *v4;
    v25 = sub_2542209D4(a2);
    if ((v19 & 1) == (v26 & 1))
    {
      v15 = v25;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      sub_2541AE9F8(v15, v12, a1, v21);
      return;
    }

LABEL_15:
    sub_25424EB38();
    __break(1u);
    return;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

uint64_t sub_2541AE66C(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_25422095C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_254222F38();
      v11 = v19;
      goto LABEL_8;
    }

    sub_2542218B8(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_25422095C(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_25424EB38();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 40 * v11);
    __swift_destroy_boxed_opaque_existential_1(v23);

    return sub_25412DC4C(a1, v23);
  }

  else
  {
    sub_2541AEAB0(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_2541AE7C0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_25422095C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_254222624(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_25422095C(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_25424EB38();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v19 = v11;
      sub_2542237AC();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

_OWORD *sub_2541AE938(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_25424E848();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = sub_25412DCA8(a3, (a4[7] + 32 * a1));
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_2541AE9F8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_25424D948();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_2541AEAB0(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_25412DC4C(a4, a5[7] + 40 * a1);
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

void *sub_2541AEB20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v19 = a7;
  v20 = a9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18);
  (*(*(a7 - 8) + 32))(boxed_opaque_existential_1, a1, a7);
  type metadata accessor for QueryController();
  v16 = swift_allocObject();
  sub_25412DC4C(&v18, (v16 + 2));
  v16[7] = a2;
  v16[8] = a3;
  v16[9] = a4;
  sub_25412DC4C(a5, (v16 + 10));
  return v16;
}

uint64_t sub_2541AEBEC(uint64_t a1)
{
  v2 = type metadata accessor for EventQuery(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2541AEC48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2541AEC90(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v11 = *(v2 + 48);
  v10 = *(v2 + 56);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_25412F818;

  return sub_25424B12C(a1, a2, v6, v7, v8, v9, v11, v10);
}

uint64_t sub_2541AEDF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2541AEE5C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for EventQuery(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BA1D0, &unk_2542544C0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_25412F818;

  return sub_2541AB198(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_2541AEFB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2541AF020@<X0>(void *a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA1F0, &qword_254258410) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2541ADDC0(v4, a1);
}

uint64_t sub_2541AF09C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25412F818;

  return sub_2541ADFB4(a1);
}

uint64_t Date.formattedElapsedTimeInterval.getter()
{
  sub_25424D868();
  v0 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  [v0 setMaximumFractionDigits_];
  v1 = sub_25424E288();
  v2 = [v0 stringForObjectValue_];

  if (v2)
  {
    v3 = sub_25424DCB8();

    v0 = v2;
  }

  else
  {
    v3 = sub_25424E298();
  }

  return v3;
}

uint64_t static Date.formattedTimeInterval(_:)()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  [v0 setMaximumFractionDigits_];
  v1 = sub_25424E288();
  v2 = [v0 stringForObjectValue_];

  if (v2)
  {
    v3 = sub_25424DCB8();

    v0 = v2;
  }

  else
  {
    v3 = sub_25424E298();
  }

  return v3;
}

uint64_t Date.init(weeksSinceReferenceDate:)(uint64_t result)
{
  if ((result * 7) >> 64 != (7 * result) >> 63)
  {
    __break(1u);
    goto LABEL_7;
  }

  if ((7 * result * 24) >> 64 != (168 * result) >> 63)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if ((168 * result * 60) >> 64 != (10080 * result) >> 63)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((10080 * result * 60) >> 64 == (604800 * result) >> 63)
  {
    return sub_25424D568();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t Date.weeksSinceReferenceDate.getter()
{
  result = sub_25424D578();
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v1 < 9.22337204e18)
  {
    return v1 / 604800;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_2541AF3E4(uint64_t a1, unint64_t a2)
{
  v44 = *MEMORY[0x277D85DE8];
  *&v41 = a1;
  *(&v41 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA2A0, &qword_254258C18);
  if (swift_dynamicCast())
  {
    sub_25412DC4C(__src, &v42);
    __swift_project_boxed_opaque_existential_1(&v42, v43);
    sub_25424D308();
    __src[0] = v41;
    __swift_destroy_boxed_opaque_existential_1(&v42);
    goto LABEL_63;
  }

  v40 = 0;
  memset(__src, 0, sizeof(__src));
  sub_2541B2140(__src);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_25424E708();
  }

  sub_2541B1394(v4, v5, &v42);
  v6 = *(&v42 + 1);
  v7 = v42;
  if (*(&v42 + 1) >> 60 != 15)
  {
    __src[0] = v42;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_2541B1BA0(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x28223BE20](*&__src[0]);
  v10 = sub_2541EF440(sub_2541B21A8);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_25424D488();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v41 + 7) = 0;
  *&v41 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_2541B1288(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_25424DDF8();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_25424DE28();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v42 = v14;
      *(&v42 + 1) = v38;
      v31 = *(&v42 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_25424E708();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_2541B1288(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_25424DE08();
LABEL_52:
    *(&v41 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v42 = v41;
      *(&v42 + 6) = *(&v41 + 6);
      sub_25424D4A8();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v42 = v41;
    *(&v42 + 6) = *(&v41 + 6);
    sub_25424D4A8();
    sub_254134CF0(v36, v35);
    goto LABEL_62;
  }

LABEL_57:

  sub_254134CF0(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_254140660(*&__src[0], *(&__src[0] + 1));

  sub_254134D04(v32, *(&v32 + 1));
  v33 = *MEMORY[0x277D85DE8];
  return v32;
}

uint64_t sub_2541AF8F4(uint64_t a1, uint64_t a2)
{
  v8[3] = MEMORY[0x277D838B0];
  v8[4] = MEMORY[0x277CC9C18];
  v8[0] = a1;
  v8[1] = a2;
  v2 = __swift_project_boxed_opaque_existential_1(v8, MEMORY[0x277D838B0]);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_2541BEA18(v3, v4);
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = sub_2541BEAD0(v3, v4);
    }

    else
    {
      v6 = sub_2541BEB4C(v3, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v8);
  return v6;
}

uint64_t FakeEvent.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25424D8B8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t FakeEvent.category.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for EventBase(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t FakeEvent.roomName.getter()
{
  v1 = (v0 + *(type metadata accessor for AccessoryEventBase(0) + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t FakeEvent.accessoryIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AccessoryEventBase(0) + 28);
  v4 = sub_25424D948();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FakeEvent.accessoryName.getter()
{
  v1 = (v0 + *(type metadata accessor for AccessoryEventBase(0) + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t FakeEvent.userIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AccessoryEventBase(0) + 36);

  return sub_254149770(v3, a1);
}

uint64_t FakeEvent.hash(into:)()
{
  v1 = v0;
  v2 = sub_25424D948();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E50, &qword_254254390);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v23 - v9;
  sub_25424D8B8();
  sub_2541B1F1C(&qword_27F5B89C0, MEMORY[0x277CC9578]);
  sub_25424DC28();
  v11 = type metadata accessor for EventBase(0);
  v12 = *(v11 + 20);
  sub_2541B1F1C(&qword_27F5B89A8, MEMORY[0x277CC95F0]);
  sub_25424DC28();
  MEMORY[0x259C06AA0](qword_254258C50[*(v1 + *(v11 + 24))]);
  v13 = type metadata accessor for AccessoryEventBase(0);
  v14 = v1 + v13[5];
  sub_25424DC28();
  v15 = (v1 + v13[6]);
  v16 = *v15;
  v17 = v15[1];
  sub_25424DD88();
  v18 = v1 + v13[7];
  sub_25424DC28();
  v19 = (v1 + v13[8]);
  v20 = *v19;
  v21 = v19[1];
  sub_25424DD88();
  sub_254149770(v1 + v13[9], v10);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    sub_25424EBF8();
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    sub_25424EBF8();
    sub_25424DC28();
    (*(v3 + 8))(v6, v2);
  }

  return MEMORY[0x259C06AA0](0);
}

uint64_t FakeEvent.hashValue.getter()
{
  sub_25424EBD8();
  FakeEvent.hash(into:)();
  return sub_25424EC28();
}

uint64_t sub_2541AFF30()
{
  sub_25424EBD8();
  FakeEvent.hash(into:)();
  return sub_25424EC28();
}

uint64_t sub_2541AFF74()
{
  sub_25424EBD8();
  FakeEvent.hash(into:)();
  return sub_25424EC28();
}

unint64_t FakeEvent.init(date:homeIdentifier:category:roomIdentifier:roomName:accessoryIdentifier:accessoryName:userIdentifier:state:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, int64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int64_t a8@<X7>, uint64_t a9@<X8>, int64_t a10, uint64_t a11)
{
  v54 = a8;
  v60 = a7;
  v66 = a2;
  v67 = a6;
  v63 = a5;
  v64 = a4;
  v62 = a9;
  v13 = sub_25424D948();
  v14 = *(v13 - 8);
  v15 = v14[8];
  v16 = MEMORY[0x28223BE20](v13);
  v65 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v54 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v54 - v21;
  v23 = sub_25424D8B8();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v54 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for AccessoryEventBaseLegacy(0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v31 = &v54 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *a3;
  v33 = *(v24 + 16);
  v57 = v27;
  v58 = v23;
  v34 = v27;
  v35 = v67;
  v61 = a1;
  v33(v34, a1, v23);
  v36 = v14[2];
  v59 = v22;
  v36(v22, v66, v13);
  if (v32 == 7)
  {
    result = sub_25418E184(3uLL);
    if (result > 2)
    {
      __break(1u);
      return result;
    }

    LOBYTE(v32) = byte_286633480[result + 32];
  }

  v55 = a11;
  v56 = v20;
  v36(v20, v64, v13);
  if (!v35)
  {
    v38 = sub_25418E184(0xBuLL);
    v63 = sub_2541922E4(v38 + 5);
    v67 = v39;
  }

  v40 = v60;
  v36(v65, v60, v13);
  if (a10)
  {
    v41 = a10;
    v42 = v54;
  }

  else
  {
    v43 = sub_25418E184(0x10uLL);
    v42 = sub_2541922E4(v43 + 5);
    v41 = v44;
  }

  v45 = v14[1];
  v45(v40, v13);
  v45(v64, v13);
  v45(v66, v13);
  v46 = v58;
  (*(v24 + 8))(v61, v58);
  (*(v24 + 32))(v31, v57, v46);
  v47 = type metadata accessor for EventBase(0);
  v48 = v14[4];
  v48(&v31[v47[5]], v59, v13);
  v31[v47[6]] = v32;
  v49 = &v31[v47[7]];
  *v49 = 15;
  v50 = type metadata accessor for AccessoryEventBase(0);
  *(v49 + 1) = 0;
  *(v49 + 2) = 0;
  v48(&v31[v50[5]], v56, v13);
  v51 = &v31[v50[6]];
  v52 = v67;
  *v51 = v63;
  v51[1] = v52;
  v48(&v31[v50[7]], v65, v13);
  v53 = &v31[v50[8]];
  *v53 = v42;
  v53[1] = v41;
  sub_25414A348(v55, &v31[v50[9]]);
  return sub_25414A414(v31, v62);
}

BOOL FakeEvent.isIncludedInSecurityGroup.getter()
{
  v1 = *(v0 + *(type metadata accessor for EventBase(0) + 24));

  return sub_2541DA534(v1, &unk_2866334D0);
}

uint64_t FakeEvent.tags.getter()
{
  v1 = v0;
  v2 = sub_25424D8B8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FakeEvent();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9270, &qword_254253EF0);
  v11 = swift_allocObject();
  v20 = xmmword_2542542D0;
  *(v11 + 16) = xmmword_2542542D0;
  *(v11 + 32) = xmmword_254252DC0;
  *(v11 + 48) = sub_2541B1598(v1, type metadata accessor for FakeEvent, type metadata accessor for FakeEvent, type metadata accessor for FakeEvent);
  *(v11 + 56) = v12;
  v13 = type metadata accessor for EventBase(0);
  if (sub_2541DA534(*(v1 + *(v13 + 24)), &unk_286632E98))
  {
    sub_2541B2284(v1, v10, type metadata accessor for FakeEvent);
    (*(v3 + 16))(v6, v10, v2);
    sub_2541B22EC(v10, type metadata accessor for FakeEvent);
    v14 = sub_2541DE894();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9380, &qword_254254800);
    v15 = swift_allocObject();
    *(v15 + 16) = v20;
    *(v15 + 32) = v14;
    *(v15 + 33) = -1;
    v16 = sub_2541B1AC4(v15);
    v18 = v17;

    (*(v3 + 8))(v6, v2);
    v11 = sub_2541B09E0(1, 3, 1, v11);
    *(v11 + 16) = 3;
    *(v11 + 64) = v16;
    *(v11 + 72) = v18;
  }

  return v11;
}

uint64_t FakeEvent.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for AccessoryEventBaseLegacy(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v11[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_254140708(a1, v11);
  sub_254231924(v11, v8);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_254148F78(a1);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_25414A414(v8, a2);
}

uint64_t FakeEvent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8E60, &qword_254254A10);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  result = sub_254231F94(a1);
  if (!v1)
  {
    v9 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_25412F1C4();
    sub_25424EC78();
    v11 = 1;
    sub_2541B1C40();
    sub_25424EA18();
    return (*(v4 + 8))(v7, v3);
  }

  return result;
}

char *sub_2541B09E0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9270, &qword_254253EF0);
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

char *sub_2541B0AEC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA2B0, &qword_254258C28);
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

char *sub_2541B0BE0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA2C8, &qword_254258C38);
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
    v10 = MEMORY[0x277D84F90];
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

size_t sub_2541B0D3C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

size_t sub_2541B0F84(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

char *sub_2541B116C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA2C0, &qword_254258C30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 368);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 368 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

uint64_t sub_2541B1288(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_25424DE38();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x259C05CD0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unint64_t sub_2541B1304(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = result;
    v5 = 0;
    MEMORY[0x259C07350](&v5, 8);
    v3 = v5 * v2;
    if (v3 < v1)
    {
      for (i = -v1 % v1; i > v3; v3 = v5 * v2)
      {
        v5 = 0;
        MEMORY[0x259C07350](&v5, 8);
      }
    }

    return HIDWORD(v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2541B1394@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = sub_2541BEA18(__src, &__src[a2]);
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_25424D2B8();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = sub_25424D258();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_25424D468();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *sub_2541B145C(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2541B14C8@<X0>(uint64_t result@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];
    result = sub_25424E698();
    if ((v7 & 1) == 0)
    {
      *a3 = 0;
      a3[1] = 0xE000000000000000;
      a3[2] = 15;
      a3[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2541B1598(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v8 = sub_25424D8B8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a2(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v20 - v15;
  sub_2541B2284(a1, &v20 - v15, a3);
  LOBYTE(a3) = v16[*(type metadata accessor for EventBase(0) + 24)];
  (*(v9 + 16))(v12, v16, v8);
  sub_2541B22EC(v16, a4);
  LOBYTE(a4) = sub_2541DE894();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9380, &qword_254254800);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_2542542D0;
  *(v17 + 32) = a4;
  *(v17 + 33) = 0xFF070504030201uLL >> (8 * a3);
  v18 = sub_2541B1AC4(v17);

  (*(v9 + 8))(v12, v8);
  return v18;
}

uint64_t type metadata accessor for FakeEvent()
{
  result = qword_27F5BA290;
  if (!qword_27F5BA290)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}