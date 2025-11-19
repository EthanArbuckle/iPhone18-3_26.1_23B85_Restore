unint64_t sub_22885E6C0()
{
  result = qword_27D8528A8;
  if (!qword_27D8528A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8528A8);
  }

  return result;
}

unint64_t sub_22885E718()
{
  result = qword_27D8528B0;
  if (!qword_27D8528B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8528B0);
  }

  return result;
}

uint64_t sub_22885E76C(uint64_t a1)
{
  result = sub_22885E7E4(&qword_27D8528B8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22885E7E4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MockContext();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22885E830()
{
  result = sub_22887F180();
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

uint64_t sub_22885E8F8(uint64_t a1, int a2)
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

uint64_t sub_22885E940(uint64_t result, int a2, int a3)
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

unint64_t sub_22885E9F0()
{
  result = qword_27D8528D8;
  if (!qword_27D8528D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8528D8);
  }

  return result;
}

unint64_t sub_22885EA48()
{
  result = qword_27D8528E0;
  if (!qword_27D8528E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8528E0);
  }

  return result;
}

unint64_t sub_22885EAA0()
{
  result = qword_27D8528E8;
  if (!qword_27D8528E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8528E8);
  }

  return result;
}

void *sub_22885EAF4()
{
  result = (*(v0 + 16))(&v3);
  if (!v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_22885EB2C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5[0] = a1;
  v5[1] = a2;
  return v3(v5);
}

uint64_t sub_22885EB64@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t WorkQueue.__allocating_init(environment:)(uint64_t a1)
{
  swift_allocObject();
  v2 = sub_228860C6C(a1);

  return v2;
}

void WorkQueue.statusObserver.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 21);
  sub_2287F7E00(&v3[10], a1);

  os_unfair_lock_unlock(v3 + 21);
}

uint64_t WorkQueue.statusObserver.setter(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 21);
  sub_228860D70(&v3[4]);
  os_unfair_lock_unlock(v3 + 21);
  return sub_228800814(a1, sub_2287FDE90);
}

void WorkQueue.priorityThreshold.getter(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock((v3 + 84));
  *a1 = *(v3 + 80);

  os_unfair_lock_unlock((v3 + 84));
}

uint64_t WorkQueue.debugSnapshot.getter()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 21);
  sub_22880F4DC(&v1[4], &v3);
  os_unfair_lock_unlock(v1 + 21);
  return v3;
}

uint64_t WorkQueue.WorkSet.init(items:executorIdentifier:anchor:context:scheduleTime:onFinish:)@<X0>(uint64_t result@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, double a9@<D0>)
{
  v9 = *a2;
  v10 = *(a2 + 2);
  v11 = *(a2 + 3);
  *a8 = result;
  *(a8 + 8) = v9;
  *(a8 + 24) = v10;
  *(a8 + 32) = v11;
  *(a8 + 40) = a2[2];
  *(a8 + 56) = a3;
  *(a8 + 64) = a4;
  *(a8 + 72) = a5;
  *(a8 + 80) = a9;
  *(a8 + 88) = a6;
  *(a8 + 96) = a7;
  return result;
}

uint64_t sub_22885EE18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_22887F7D0();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v25 - v11;
  v13 = *(a2 - 8);
  MEMORY[0x28223BE20](v10);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287E766C(a1, &v30);
  sub_2287EC070(0, &qword_2813CF7F8);
  v16 = swift_dynamicCast();
  v17 = *(v13 + 56);
  if (v16)
  {
    v17(v12, 0, 1, a2);
    (*(v13 + 32))(v15, v12, a2);
    v18 = *(a3 + 40);
    a4[3] = a2;
    a4[4] = a3;
    __swift_allocate_boxed_opaque_existential_1(a4);
    v18(v15, a2, a3);
    return (*(v13 + 8))(v15, a2);
  }

  else
  {
    v17(v12, 1, 1, a2);
    (*(v9 + 8))(v12, v8);
    sub_228861208(0, &qword_2813CF1B8, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84560]);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_2288817D0;
    v30 = 0;
    v31 = 0xE000000000000000;
    sub_22887F8A0();
    v28 = v30;
    v29 = v31;
    MEMORY[0x22AAC0340](0xD000000000000032, 0x80000002288898A0);
    (*(a3 + 24))(&v30, a2, a3);
    v21 = v32;
    v26 = v30;
    v27 = v31;

    MEMORY[0x22AAC0340](40, 0xE100000000000000);
    v25 = v21;
    v22 = sub_22887FBA0();
    MEMORY[0x22AAC0340](v22);

    MEMORY[0x22AAC0340](41, 0xE100000000000000);

    MEMORY[0x22AAC0340](v26, v27);

    MEMORY[0x22AAC0340](2112041, 0xE300000000000000);
    v23 = v28;
    v24 = v29;
    *(v20 + 56) = MEMORY[0x277D837D0];
    *(v20 + 32) = v23;
    *(v20 + 40) = v24;
    sub_22887FC70();

    return sub_2287E766C(a1, a4);
  }
}

uint64_t WorkSource.nextWorkItem(filter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a1;
  v34 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v31 = AssociatedTypeWitness;
  v32 = v8;
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v29 = &v29 - v9;
  v30 = sub_22887F7D0();
  v10 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v29 - v14;
  v16 = *(a3 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for WorkFetch();
  (*(v16 + 16))(v19, v4, a3);
  v20 = sub_228822798(v19);
  v21 = *(a4 + 24);

  v22 = a4;
  v24 = v30;
  v23 = v31;
  v21(v33, v34, sub_228860DA4, v20, a3, v22);
  v25 = v32;

  (*(v10 + 16))(v12, v15, v24);
  if ((*(v25 + 48))(v12, 1, v23) == 1)
  {
    v26 = *(v10 + 8);
    v26(v15, v24);
    v26(v12, v24);
  }

  else
  {
    v27 = v29;
    (*(v25 + 32))(v29, v12, v23);
    sub_228823738();
    (*(v25 + 8))(v27, v23);
    (*(v10 + 8))(v15, v24);
  }

  return v20;
}

uint64_t sub_22885F524(uint64_t a1)
{
  sub_228824980(a1, v2);
  if (*&v2[0])
  {
    v4[6] = v2[6];
    v4[7] = v2[7];
    v5 = v3;
    v4[2] = v2[2];
    v4[3] = v2[3];
    v4[4] = v2[4];
    v4[5] = v2[5];
    v4[0] = v2[0];
    v4[1] = v2[1];
    sub_2288239A4();
    return sub_2287F6C04(v4);
  }

  else
  {
    sub_2287F712C(v2, &qword_2813D0DB0, &type metadata for ScheduledWorkPlan);
    return sub_228823414();
  }
}

uint64_t WorkQueue.WorkSet.items.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t WorkQueue.WorkSet.executorIdentifier.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v6 = v1[5];
  v5 = v1[6];
  *a1 = v1[1];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v6;
  a1[5] = v5;
}

__n128 WorkQueue.WorkSet.executorIdentifier.setter(__int128 *a1)
{
  v5 = a1[1];
  v6 = *a1;
  v2 = *(a1 + 4);
  v3 = *(a1 + 5);

  result = v5;
  *(v1 + 8) = v6;
  *(v1 + 24) = v5;
  *(v1 + 40) = v2;
  *(v1 + 48) = v3;
  return result;
}

uint64_t WorkQueue.WorkSet.anchor.setter(uint64_t a1)
{

  *(v1 + 56) = a1;
  return result;
}

uint64_t WorkQueue.WorkSet.context.setter(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectRelease();
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t sub_22885F80C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  *(a2 + 88) = sub_228861198;
  *(a2 + 96) = v5;
  return result;
}

uint64_t WorkQueue.WorkSet.onFinish.getter()
{
  v1 = *(v0 + 88);

  return v1;
}

uint64_t WorkQueue.WorkSet.onFinish.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return result;
}

uint64_t WorkQueue.init(environment:)(uint64_t a1)
{
  v1 = sub_228860C6C(a1);

  return v1;
}

uint64_t *WorkQueue.count.getter()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 84));
  sub_2287FFF4C((v1 + 16), &v3);
  os_unfair_lock_unlock((v1 + 84));
  return v3;
}

uint64_t WorkQueue.activeCount.getter()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 84));
  sub_22885F9E0((v1 + 16), &v3);
  os_unfair_lock_unlock((v1 + 84));
  return v3;
}

uint64_t *sub_22885F9E0@<X0>(uint64_t *result@<X0>, unint64_t a2@<X8>)
{
  v3 = *result;
  if (*result >> 62)
  {
    goto LABEL_16;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v17 = MEMORY[0x277D84F90];
      result = sub_2287FE0A4(0, v4 & ~(v4 >> 63), 0);
      if (v4 < 0)
      {
        goto LABEL_24;
      }

      v16 = a2;
      v5 = 0;
      v6 = v17;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x22AAC07F0](v5, v3);
          goto LABEL_10;
        }

        if ((v5 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(v3 + 8 * v5 + 32);

LABEL_10:
        v8 = *(v7 + 16);
        os_unfair_lock_lock((v8 + 44));
        v9 = *(*(v8 + 32) + 16);
        os_unfair_lock_unlock((v8 + 44));

        a2 = *(v17 + 16);
        v10 = *(v17 + 24);
        v11 = (a2 + 1);
        if (a2 >= v10 >> 1)
        {
          result = sub_2287FE0A4((v10 > 1), a2 + 1, 1);
        }

        ++v5;
        *(v17 + 16) = v11;
        *(v17 + 8 * a2 + 32) = v9;
        if (v4 == v5)
        {
          a2 = v16;
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      result = sub_22887FA20();
      v4 = result;
    }

    while (result);
  }

  v6 = MEMORY[0x277D84F90];
  v11 = *(MEMORY[0x277D84F90] + 16);
  if (v11)
  {
LABEL_18:
    v12 = 0;
    v13 = 32;
    while (1)
    {
      v14 = *(v6 + v13);
      v15 = __OFADD__(v12, v14);
      v12 += v14;
      if (v15)
      {
        break;
      }

      v13 += 8;
      if (!--v11)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  else
  {
    v12 = 0;
LABEL_21:

    *a2 = v12;
  }

  return result;
}

uint64_t sub_22885FBA0(uint64_t a1, uint64_t a2)
{
  sub_2287F7E00(a1, v5);
  v3 = *(*a2 + 16);
  os_unfair_lock_lock(v3 + 21);
  sub_2288613D0(&v3[4]);
  os_unfair_lock_unlock(v3 + 21);
  return sub_228800814(v5, sub_2287FDE90);
}

void (*WorkQueue.statusObserver.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + 16);
  *(v3 + 80) = v5;
  os_unfair_lock_lock(v5 + 21);
  sub_2287F7E00(&v5[10], v4);
  os_unfair_lock_unlock(v5 + 21);
  return sub_22885FCE8;
}

void sub_22885FCE8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  if (a2)
  {
    v4 = sub_2287F7E00(*a1, v2 + 40);
    MEMORY[0x28223BE20](v4);
    os_unfair_lock_lock(v3 + 21);
    sub_2288613D0(&v3[4]);
    os_unfair_lock_unlock(v3 + 21);
    sub_228800814(v2 + 40, sub_2287FDE90);
  }

  else
  {
    MEMORY[0x28223BE20](a1);
    os_unfair_lock_lock(v3 + 21);
    sub_2288613D0(&v3[4]);
    os_unfair_lock_unlock(v3 + 21);
  }

  sub_228800814(v2, sub_2287FDE90);
  free(v2);
}

uint64_t (*WorkQueue.priorityThreshold.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *(v1 + 16);
  os_unfair_lock_lock((v3 + 84));
  *(a1 + 8) = *(v3 + 80);
  os_unfair_lock_unlock((v3 + 84));
  return sub_22880C470;
}

uint64_t WorkQueue.fetchNextWorkPlan(filter:completion:)(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  v5 = *(v3 + 16);
  os_unfair_lock_lock((v5 + 84));
  sub_228860DAC((v5 + 16), v14);
  os_unfair_lock_unlock((v5 + 84));
  sub_228860DD0(v14, v11);
  if (v13)
  {
    sub_228860E08(v14);
    return *&v11[0];
  }

  else
  {
    v9[5] = v11[10];
    v9[6] = v11[11];
    v9[7] = v11[12];
    v10 = v12;
    v9[1] = v11[6];
    v9[2] = v11[7];
    v9[3] = v11[8];
    v9[4] = v11[9];
    v8[2] = v11[2];
    v8[3] = v11[3];
    v8[4] = v11[4];
    v9[0] = v11[5];
    v8[0] = v11[0];
    v8[1] = v11[1];
    sub_2287F5EE4(v9, v7);
    a3(v7);
    sub_2287F712C(v7, &qword_2813D0DB0, &type metadata for ScheduledWorkPlan);
    sub_2287F836C(v8);
    sub_228860E08(v14);
    return 0;
  }
}

uint64_t sub_22885FFF8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  result = sub_2287F8CE4(a1, v27);
  if (v28)
  {
    v47 = v33;
    v48 = v34;
    v49 = v35;
    v50 = v36;
    v43 = v29;
    v44 = v30;
    v45 = v31;
    v46 = v32;
    v39 = v27[2];
    v40 = v27[3];
    v41 = v27[4];
    v42 = v28;
    v37 = v27[0];
    v38 = v27[1];
    v16 = v34;
    *(a7 + 160) = v33;
    *(a7 + 176) = v16;
    *(a7 + 192) = v49;
    *(a7 + 208) = v50;
    v17 = v44;
    *(a7 + 96) = v43;
    *(a7 + 112) = v17;
    v18 = v46;
    *(a7 + 128) = v45;
    *(a7 + 144) = v18;
    v19 = v40;
    *(a7 + 32) = v39;
    *(a7 + 48) = v19;
    v20 = v42;
    *(a7 + 64) = v41;
    *(a7 + 80) = v20;
    v21 = v38;
    *a7 = v37;
    *(a7 + 16) = v21;
    *(a7 + 216) = 0;
    return result;
  }

  sub_2287F712C(v27, &qword_2813D1040, &type metadata for EnqueuedWorkPlan);
  v22 = a1[2];
  if (__OFADD__(v22, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  a1[2] = v22 + 1;
  a2 = a1[1];

  result = swift_isUniquelyReferenced_nonNull_native();
  v51 = v7;
  v26 = a5;
  if ((result & 1) == 0)
  {
LABEL_9:
    result = sub_2288309D8(0, *(a2 + 16) + 1, 1, a2);
    a2 = result;
  }

  v24 = *(a2 + 16);
  v23 = *(a2 + 24);
  if (v24 >= v23 >> 1)
  {
    result = sub_2288309D8((v23 > 1), v24 + 1, 1, a2);
    a2 = result;
  }

  *(a2 + 16) = v24 + 1;
  v25 = (a2 + 40 * v24);
  v25[4] = v22;
  v25[5] = a3;
  v25[6] = a4;
  v25[7] = v26;
  v25[8] = a6;
  a1[1] = a2;
  *a7 = v22;
  *(a7 + 216) = 1;
  return result;
}

Swift::Void __swiftcall WorkQueue.cancel(fetch:)(Swift::Int fetch)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 21);
  sub_228860268(&v3[4], fetch, &v4);
  os_unfair_lock_unlock(v3 + 21);
  v4();
}

unint64_t sub_228860268@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)()@<X8>)
{
  v4 = 0;
  v7 = *(a1 + 8);
  result = a1 + 8;
  v6 = v7;
  v33 = result;
  v8 = *(v7 + 16);
  v9 = MEMORY[0x277D84F90];
LABEL_2:
  v10 = 40 * v4;
  while (v8 != v4)
  {
    if (v4 >= *(v6 + 2))
    {
      __break(1u);
      goto LABEL_34;
    }

    ++v4;
    v11 = v10 + 40;
    v12 = *&v6[v10 + 32];
    v10 += 40;
    if (v12 == a2)
    {
      v13 = *&v6[v11];
      v14 = *&v6[v11 + 24];
      v34 = *&v6[v11 + 8];

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_22881DAD4(0, *(v9 + 16) + 1, 1);
      }

      v16 = *(v9 + 16);
      v15 = *(v9 + 24);
      if (v16 >= v15 >> 1)
      {
        result = sub_22881DAD4((v15 > 1), v16 + 1, 1);
      }

      *(v9 + 16) = v16 + 1;
      v17 = v9 + 40 * v16;
      *(v17 + 32) = a2;
      *(v17 + 40) = v13;
      *(v17 + 48) = v34;
      *(v17 + 64) = v14;
      goto LABEL_2;
    }
  }

  result = *(v6 + 2);
  v27 = v9;
  if (!result)
  {
LABEL_15:
    v20 = *(v6 + 2);
LABEL_20:
    sub_228872708(result, v20);
    result = swift_allocObject();
    *(result + 16) = v27;
    *a3 = sub_228861200;
    a3[1] = result;
    return result;
  }

  v18 = 0;
  v19 = 0;
  while (*&v6[v18 + 32] != a2)
  {
    ++v19;
    v18 += 40;
    if (result == v19)
    {
      goto LABEL_15;
    }
  }

  v20 = v19 + 1;
  if (!__OFADD__(v19, 1))
  {
    if (v20 == result)
    {
      v20 = *(v6 + 2);
LABEL_19:
      result = v19;
      if (v20 >= v19)
      {
        goto LABEL_20;
      }
    }

    else
    {
      while (v20 < result)
      {
        v22 = *&v6[v18 + 72];
        if (v22 != a2)
        {
          if (v20 != v19)
          {
            if (v19 >= result)
            {
              goto LABEL_35;
            }

            v23 = &v6[40 * v19 + 32];
            v29 = *(v23 + 8);
            v30 = *v23;
            v24 = *(v23 + 32);
            v32 = *&v6[v18 + 80];
            v35 = *&v6[v18 + 88];
            v25 = *&v6[v18 + 104];
            v31 = *(v23 + 16);

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = sub_228872260(v6);
            }

            v26 = &v6[40 * v19];
            *(v26 + 4) = v22;
            *(v26 + 5) = v32;
            *(v26 + 3) = v35;
            *(v26 + 8) = v25;

            if (v20 >= *(v6 + 2))
            {
              goto LABEL_36;
            }

            v21 = &v6[v18];
            *(v21 + 9) = v30;
            *(v21 + 10) = v29;
            *(v21 + 88) = v31;
            *(v21 + 13) = v24;

            *v33 = v6;
          }

          ++v19;
        }

        ++v20;
        result = *(v6 + 2);
        v18 += 40;
        if (v20 == result)
        {
          goto LABEL_19;
        }
      }

LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_228860588(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result + 64;
    do
    {
      v3 = *(v2 - 8);
      v2 += 40;
      v5 = 0;
      memset(v4, 0, sizeof(v4));

      v3(v4);

      result = sub_2287F712C(v4, &qword_2813D0DB0, &type metadata for ScheduledWorkPlan);
      --v1;
    }

    while (v1);
  }

  return result;
}

Swift::Void __swiftcall WorkQueue.didUpdate(environmentalState:)(Swift::OpaquePointer environmentalState)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock((v2 + 84));
  sub_2287E8D40((v2 + 16));
  os_unfair_lock_unlock((v2 + 84));
}

uint64_t WorkQueue.deinit()
{

  return v0;
}

uint64_t WorkQueue.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_228860700@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(_BYTE *)@<X2>, uint64_t a4@<X8>)
{
  result = WorkQueue.fetchNextWorkPlan(filter:completion:)(a1, a2, a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

uint64_t sub_228860734(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(*v1 + 16);
  os_unfair_lock_lock(v3 + 21);
  sub_228860268(&v3[4], v2, &v5);
  os_unfair_lock_unlock(v3 + 21);
  v5();
}

void sub_2288607B0(unint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  sub_228800908(0, &qword_2813CF200, sub_22880F394, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  v7 = inited;
  *(inited + 32) = 0xD000000000000011;
  *(inited + 16) = xmmword_228881910;
  *(inited + 40) = 0x8000000228889910;
  v26 = a2;
  if (*(a1 + 64) > 1u)
  {
    if (*(a1 + 64) == 2)
    {
      v8 = 0xEB0000000065636ELL;
      v9 = 0x616E65746E69616DLL;
    }

    else
    {
      v8 = 0xE700000000000000;
      v9 = 0x64656B636F6C62;
    }
  }

  else if (*(a1 + 64))
  {
    v8 = 0xE600000000000000;
    v9 = 0x746E65677275;
  }

  else
  {
    v8 = 0xEB00000000646569;
    v9 = 0x6669636570736E75;
  }

  *(inited + 48) = v9;
  *(inited + 56) = v8;
  *(inited + 64) = 0x756F4368636F7065;
  *(inited + 72) = 0xEA0000000000746ELL;
  v10 = *a1;
  v11 = *a1 >> 62;
  if (v11)
  {
    goto LABEL_27;
  }

  for (i = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22887FA20())
  {
    v28 = i;
    *(v7 + 80) = sub_22887FBA0();
    *(v7 + 88) = v13;
    strcpy((v7 + 96), "pendingCount");
    *(v7 + 109) = 0;
    *(v7 + 110) = -5120;
    v28 = sub_2287F7E64(a1);
    *(v7 + 112) = sub_22887FBA0();
    *(v7 + 120) = v14;
    *(v7 + 128) = 0xD000000000000013;
    *(v7 + 136) = 0x8000000228889930;
    v28 = *(*(a1 + 8) + 16);
    *(v7 + 144) = sub_22887FBA0();
    *(v7 + 152) = v15;
    a1 = sub_2287E97C0(v7);
    swift_setDeallocating();
    sub_22880F394();
    swift_arrayDestroy();
    sub_228800908(0, &qword_27D851AE8, sub_22880F3F0, MEMORY[0x277D84560]);
    v16 = swift_initStackObject();
    *(v16 + 16) = xmmword_2288817D0;
    *(v16 + 32) = 0x7368636F7065;
    v17 = v16 + 32;
    *(v16 + 40) = 0xE600000000000000;
    if (v11)
    {
      v18 = sub_22887FA20();
    }

    else
    {
      v18 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v19 = MEMORY[0x277D84F90];
    if (!v18)
    {
LABEL_24:
      *(v16 + 48) = v19;
      v22 = sub_2288093F4(v16);
      swift_setDeallocating();
      sub_228800814(v17, sub_22880F3F0);
      type metadata accessor for DebugSnapshot();
      v23 = swift_allocObject();
      v23[2] = 0x657551206B726F57;
      v23[3] = 0xEA00000000006575;
      v23[4] = a1;
      v23[5] = v22;
      *v26 = v23;
      return;
    }

    v28 = MEMORY[0x277D84F90];
    sub_22887F960();
    if (v18 < 0)
    {
      break;
    }

    v24 = v16;
    v25 = a1;
    v20 = 0;
    while (1)
    {
      v7 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if ((v10 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x22AAC07F0](v20, v10);
      }

      else
      {
        if (v20 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v21 = *(v10 + 8 * v20 + 32);
      }

      v11 = *(v21 + 16);
      os_unfair_lock_lock((v11 + 44));
      sub_22886287C((v11 + 16), &v27);
      if (v3)
      {
        goto LABEL_29;
      }

      v3 = 0;
      os_unfair_lock_unlock((v11 + 44));
      v11 = v27;

      sub_22887F930();
      a1 = v28[2];
      sub_22887F970();
      sub_22887F980();
      sub_22887F940();
      ++v20;
      if (v7 == v18)
      {
        v19 = v28;
        a1 = v25;
        v16 = v24;
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    ;
  }

  __break(1u);
LABEL_29:
  os_unfair_lock_unlock((v11 + 44));
  __break(1u);
}

uint64_t sub_228860C14()
{
  v1 = *(*v0 + 16);
  os_unfair_lock_lock(v1 + 21);
  sub_228861388(&v1[4], &v3);
  os_unfair_lock_unlock(v1 + 21);
  return v3;
}

uint64_t sub_228860C6C(uint64_t a1)
{
  v2 = v1;
  *(v2 + 24) = a1;
  v11[0] = MEMORY[0x277D84F90];
  v11[1] = MEMORY[0x277D84F90];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 3;
  sub_2287F36D8(0, &qword_2813CF3F8);
  v4 = swift_allocObject();
  *(v4 + 84) = 0;
  sub_228861310(v11, v9);

  sub_228861348(v11);
  v5 = v9[3];
  *(v4 + 48) = v9[2];
  *(v4 + 64) = v5;
  *(v4 + 80) = v10;
  v6 = v9[1];
  *(v4 + 16) = v9[0];
  *(v4 + 32) = v6;
  *(v2 + 16) = v4;
  v7 = *(a1 + 16);

  os_unfair_lock_lock(v7 + 10);
  sub_228822194(&v7[4]);
  os_unfair_lock_unlock(v7 + 10);

  return v2;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_228860EC0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_228860F08(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19HealthOrchestration23WorkQueueStatusObserver_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_228860FAC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_228860FF4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy217_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 201) = *(a2 + 201);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_2288610A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 217))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 216);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2288610E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 201) = 0u;
    *(result + 176) = 0u;
    *(result + 192) = 0u;
    *(result + 144) = 0u;
    *(result + 160) = 0u;
    *(result + 112) = 0u;
    *(result + 128) = 0u;
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 217) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 217) = 0;
    }

    if (a2)
    {
      *(result + 216) = -a2;
    }
  }

  return result;
}

uint64_t sub_228861148(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 208) = 0;
    *(result + 176) = 0u;
    *(result + 192) = 0u;
    *(result + 144) = 0u;
    *(result + 160) = 0u;
    *(result + 112) = 0u;
    *(result + 128) = 0u;
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 216) = a2;
  return result;
}

uint64_t sub_2288611D0@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

void sub_228861208(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_228861258()
{
  result = qword_27D8528F0;
  if (!qword_27D8528F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8528F0);
  }

  return result;
}

uint64_t sub_2288612AC(uint64_t a1, uint64_t a2)
{
  sub_2287FDE90();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_228861418(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_22887FA20();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_22887FA20();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_22883785C();
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_228835678(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_228861508(uint64_t a1)
{
  v77 = sub_22887F060();
  v4 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v78 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228863DDC(0, &qword_27D852900, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v59 - v9;
  result = MEMORY[0x28223BE20](v8);
  v14 = &v59 - v13;
  v15 = *(a1 + 16);
  v16 = *v1;
  v17 = *(*v1 + 2);
  v18 = v17 + v15;
  if (__OFADD__(v17, v15))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v76 = v12;
  v2 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v75 = v10;
  if (!isUniquelyReferenced_nonNull_native || (v20 = *(v16 + 3) >> 1, v20 < v18))
  {
    if (v17 <= v18)
    {
      v21 = v17 + v15;
    }

    else
    {
      v21 = v17;
    }

    v16 = sub_22882FFF8(isUniquelyReferenced_nonNull_native, v21, 1, v16);
    v20 = *(v16 + 3) >> 1;
  }

  v22 = *(v16 + 2);
  v18 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v17 = *(v4 + 72);
  v23 = v20 - v22;
  result = sub_22887CAA0(&v79, &v16[v18 + v17 * v22], v20 - v22, a1);
  if (result < v15)
  {
    goto LABEL_16;
  }

  if (result)
  {
    v26 = *(v16 + 2);
    v27 = __OFADD__(v26, result);
    v28 = v26 + result;
    if (v27)
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v16 + 2) = v28;
  }

  if (result != v23)
  {
    result = sub_2287EF604();
LABEL_14:
    *v1 = v16;
    return result;
  }

LABEL_17:
  v74 = *(v16 + 2);
  v25 = v80;
  v65 = v79;
  v28 = v82;
  v24 = &v84;
  v60 = v81;
  v29 = v83;
  v63 = v80;
  if (v83)
  {
    v30 = v82;
LABEL_27:
    v72 = (v29 - 1) & v29;
    v34 = v77;
    (*(v2 + 16))(v14, *(v65 + 48) + (__clz(__rbit64(v29)) | (v30 << 6)) * v17, v77);
    v67 = *(v2 + 56);
    v67(v14, 0, 1, v34);
    v33 = v30;
    while (1)
    {
      v35 = v75;
      sub_228863E40(v14, v75);
      v36 = *(v2 + 48);
      v2 += 48;
      v71 = v36;
      if (v36(v35, 1, v34) == 1)
      {
        break;
      }

      v38 = (v4 + 32);
      v62 = (v60 + 64) >> 6;
      v66 = v4 + 56;
      v64 = (v4 + 16);
      v61 = (v4 + 8);
      v37 = v75;
      v73 = v38;
      while (1)
      {
        sub_228863ED4(v37);
        v39 = *(v16 + 3);
        v40 = v39 >> 1;
        if ((v39 >> 1) < v74 + 1)
        {
          v16 = sub_22882FFF8(v39 > 1, v74 + 1, 1, v16);
          v40 = *(v16 + 3) >> 1;
        }

        v41 = v76;
        sub_228863E40(v14, v76);
        if (v71(v41, 1, v77) != 1)
        {
          break;
        }

        v42 = v33;
        v43 = v76;
        v4 = v74;
LABEL_38:
        v33 = v42;
        sub_228863ED4(v43);
LABEL_33:
        v74 = v4;
        *(v16 + 2) = v4;
        v37 = v75;
        sub_228863E40(v14, v75);
        if (v71(v37, 1, v77) == 1)
        {
          goto LABEL_30;
        }
      }

      v69 = &v16[v18];
      v4 = v74;
      v44 = *v73;
      if (v74 <= v40)
      {
        v45 = v40;
      }

      else
      {
        v45 = v74;
      }

      v70 = v45;
      v43 = v76;
      v46 = v77;
      v47 = v78;
      v68 = v44;
      while (1)
      {
        v51 = v47;
        v52 = v43;
        v53 = v46;
        v54 = v44;
        v44(v51, v52, v46);
        if (v4 == v70)
        {
          (*v61)(v78, v53);
          v4 = v70;
          goto LABEL_33;
        }

        sub_228863ED4(v14);
        v74 = v4;
        v54(&v69[v4 * v17], v78, v53);
        v55 = v72;
        if (!v72)
        {
          break;
        }

        v56 = v33;
LABEL_55:
        v72 = (v55 - 1) & v55;
        v49 = v77;
        (*v64)(v14, *(v65 + 48) + (__clz(__rbit64(v55)) | (v56 << 6)) * v17, v77);
        v48 = 0;
        v58 = v56;
LABEL_44:
        v4 = v74 + 1;
        v67(v14, v48, 1, v49);
        v43 = v76;
        sub_228863E40(v14, v76);
        v50 = v71(v43, 1, v49);
        v46 = v49;
        v33 = v58;
        v42 = v58;
        v47 = v78;
        v44 = v68;
        if (v50 == 1)
        {
          goto LABEL_38;
        }
      }

      if (v62 <= v33 + 1)
      {
        v57 = v33 + 1;
      }

      else
      {
        v57 = v62;
      }

      v58 = v57 - 1;
      while (1)
      {
        v56 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          break;
        }

        if (v56 >= v62)
        {
          v72 = 0;
          v48 = 1;
          v49 = v77;
          goto LABEL_44;
        }

        v55 = *(v63 + 8 * v56);
        ++v33;
        if (v55)
        {
          goto LABEL_55;
        }
      }

      __break(1u);
LABEL_57:
      v34 = v77;
      v67 = *(v2 + 56);
      v67(v14, 1, 1, v77);
      v72 = 0;
    }

    v37 = v75;
LABEL_30:
    sub_228863ED4(v14);
    sub_2287EF604();
    result = sub_228863ED4(v37);
    goto LABEL_14;
  }

LABEL_20:
  v31 = (*(v24 - 32) + 64) >> 6;
  if (v31 <= v28 + 1)
  {
    v32 = v28 + 1;
  }

  else
  {
    v32 = v31;
  }

  v33 = v32 - 1;
  while (1)
  {
    v30 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v30 >= v31)
    {
      goto LABEL_57;
    }

    v29 = *(v25 + 8 * v30);
    ++v28;
    if (v29)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

void *sub_228861BA0(void *result)
{
  v2 = result[2];
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_2288305B0(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_22883BF9C();
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_228861C9C(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_228830738(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t WorkEpoch.__allocating_init()()
{
  v0 = swift_allocObject();
  sub_2288621A0();
  v1 = swift_allocObject();
  *(v1 + 44) = 0;
  v2 = MEMORY[0x277D84F90];
  *(v1 + 16) = 0;
  *(v1 + 24) = v2;
  *(v1 + 32) = v2;
  *(v1 + 40) = 3;
  *(v0 + 16) = v1;
  return v0;
}

void WorkEpoch.priorityThreshold.setter(char *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  os_unfair_lock_lock(v2 + 11);
  sub_2287ECEDC(&v2[4], v3);

  os_unfair_lock_unlock(v2 + 11);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> WorkEpoch.enqueue(_:environment:)(Swift::OpaquePointer _, Swift::OpaquePointer environment)
{
  v3 = *(v2 + 16);
  os_unfair_lock_lock(v3 + 11);
  sub_2287F5E6C(&v3[4]);
  os_unfair_lock_unlock(v3 + 11);
}

void WorkEpoch.enqueue(_:)()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 11);
  sub_2287F9130(&v1[4]);
  os_unfair_lock_unlock(v1 + 11);
}

void WorkEpoch.finish(_:)(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 11);
  sub_2287FF34C(&v3[4], a1);
  os_unfair_lock_unlock(v3 + 11);
}

void WorkEpoch.pop(filter:)(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 11);
  sub_2287F2A94(&v3[4], a1);
  os_unfair_lock_unlock(v3 + 11);
}

void WorkEpoch.finish()(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock((v3 + 44));
  sub_228862200((v3 + 16), a1);
  os_unfair_lock_unlock((v3 + 44));
}

Swift::Void __swiftcall WorkEpoch.didUpdate(environmentalState:)(Swift::OpaquePointer environmentalState)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock((v2 + 44));
  sub_2287EA298((v2 + 16));
  os_unfair_lock_unlock((v2 + 44));
}

uint64_t WorkEpoch.debugSnapshot.getter()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 44));
  sub_22886287C((v1 + 16), &v3);
  os_unfair_lock_unlock((v1 + 44));
  return v3;
}

uint64_t WorkEpoch.Errors.hashValue.getter()
{
  v1 = *v0;
  sub_22887FC90();
  MEMORY[0x22AAC0BD0](v1);
  return sub_22887FCD0();
}

uint64_t WorkEpoch.init()()
{
  sub_2288621A0();
  v1 = swift_allocObject();
  *(v1 + 44) = 0;
  v2 = MEMORY[0x277D84F90];
  *(v1 + 16) = 0;
  *(v1 + 24) = v2;
  *(v1 + 32) = v2;
  *(v1 + 40) = 3;
  *(v0 + 16) = v1;
  return v0;
}

void sub_2288621A0()
{
  if (!qword_2813CF400)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_22887F910();
    if (!v1)
    {
      atomic_store(v0, &qword_2813CF400);
    }
  }
}

uint64_t sub_228862200@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 25))
  {
    v2 = 2;
  }

  else
  {
    v3 = *a1;
    v2 = 1;
    if (*a1)
    {
      *(a1 + 25) = 1;
      v4 = a1[1];
      a1[1] = MEMORY[0x277D84F90];
      v5 = *(v3 + 32);
      *a2 = *(v3 + 24);
      a2[1] = v5;
      a2[2] = v4;
    }
  }

  sub_228861258();
  swift_allocError();
  *v7 = v2;
  return swift_willThrow();
}

void WorkEpoch.priorityThreshold.getter(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock((v3 + 44));
  *a1 = *(v3 + 40);

  os_unfair_lock_unlock((v3 + 44));
}

void sub_2288622D8(char *a1, uint64_t a2)
{
  v2 = *(*a2 + 16);
  v3 = *a1;
  os_unfair_lock_lock(v2 + 11);
  sub_2287ECEDC(&v2[4], v3);

  os_unfair_lock_unlock(v2 + 11);
}

void (*WorkEpoch.priorityThreshold.modify(uint64_t a1))(os_unfair_lock_s **a1)
{
  v3 = *(v1 + 16);
  *a1 = v3;
  os_unfair_lock_lock((v3 + 44));
  *(a1 + 8) = *(v3 + 40);
  os_unfair_lock_unlock((v3 + 44));
  return sub_2288623A4;
}

void sub_2288623A4(os_unfair_lock_s **a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  os_unfair_lock_lock(*a1 + 11);
  sub_2287ECEDC(&v1[4], v2);

  os_unfair_lock_unlock(v1 + 11);
}

uint64_t sub_228862404(void *a1, uint64_t a2, char **a3)
{
  v59 = a1;
  v3 = *(a2 + 16);
  if (!v3)
  {
    return 0;
  }

  v4 = v59[12];
  v5 = v59[13];
  v6 = a2 + 32;
  v7 = v59[14];
  v8 = v59[15];
  v41 = v7;
  v42 = v5;
  v40 = v8;
  while (1)
  {
    sub_2287F5EE4(v6, &v43);
    v9 = v45;
    v10 = v44 == v4 && *(&v44 + 1) == v5;
    if (!v10 && (sub_22887FBF0() & 1) == 0)
    {
      goto LABEL_4;
    }

    v11 = v9 == v7 && *(&v9 + 1) == v8;
    if (!v11 && (sub_22887FBF0() & 1) == 0)
    {
      goto LABEL_4;
    }

    v12 = v4;
    v13 = *(&v48 + 1);
    v14 = v49;
    __swift_project_boxed_opaque_existential_1(&v47, *(&v48 + 1));
    (*(v14 + 24))(v58, v13, v14);
    v15 = v58[0];
    v16 = v58[1];
    v17 = v58[2];
    v18 = v59[21];
    v19 = v59[22];
    __swift_project_boxed_opaque_existential_1(v59 + 18, v18);
    (*(v19 + 24))(v57, v18, v19);
    v20 = v57[2];
    if (v15 == v57[0] && v16 == v57[1])
    {
      break;
    }

    v21 = sub_22887FBF0();

    if (v21)
    {
      goto LABEL_20;
    }

    v4 = v12;
    v7 = v41;
    v5 = v42;
    v8 = v40;
LABEL_4:
    sub_2287F6C04(&v43);
LABEL_5:
    v6 += 136;
    if (!--v3)
    {
      return 0;
    }
  }

LABEL_20:
  v10 = v17 == v20;
  v4 = v12;
  v7 = v41;
  v5 = v42;
  v8 = v40;
  if (!v10)
  {
    goto LABEL_4;
  }

  swift_getObjectType();
  v22 = sub_2287FF530();
  sub_2287F6C04(&v43);
  if ((v22 & 1) == 0)
  {
    goto LABEL_5;
  }

  sub_2287F71FC(v59, &v43);
  v23 = *a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v23;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v23 = sub_2287F72C0(0, *(v23 + 2) + 1, 1, v23);
    *a3 = v23;
  }

  v26 = *(v23 + 2);
  v25 = *(v23 + 3);
  if (v26 >= v25 >> 1)
  {
    v23 = sub_2287F72C0((v25 > 1), v26 + 1, 1, v23);
    *a3 = v23;
  }

  *(v23 + 2) = v26 + 1;
  v27 = &v23[216 * v26];
  v28 = v44;
  *(v27 + 2) = v43;
  *(v27 + 3) = v28;
  v29 = v45;
  v30 = v46;
  v31 = v48;
  *(v27 + 6) = v47;
  *(v27 + 7) = v31;
  *(v27 + 4) = v29;
  *(v27 + 5) = v30;
  v32 = v49;
  v33 = v50;
  v34 = v52;
  *(v27 + 10) = v51;
  *(v27 + 11) = v34;
  *(v27 + 8) = v32;
  *(v27 + 9) = v33;
  v35 = v53;
  v36 = v54;
  v37 = v55;
  *(v27 + 30) = v56;
  *(v27 + 13) = v36;
  *(v27 + 14) = v37;
  *(v27 + 12) = v35;
  return 1;
}

BOOL sub_2288626EC(void *a1, void *a2)
{
  v3 = a1[21];
  v4 = a1[22];
  __swift_project_boxed_opaque_existential_1(a1 + 18, v3);
  (*(v4 + 24))(v14, v3, v4);
  v6 = v14[0];
  v5 = v14[1];
  v7 = v14[2];
  v8 = a2[21];
  v9 = a2[22];
  __swift_project_boxed_opaque_existential_1(a2 + 18, v8);
  (*(v9 + 24))(v13, v8, v9);
  v10 = v13[2];
  if (v6 == v13[0] && v5 == v13[1])
  {
  }

  else
  {
    v11 = sub_22887FBF0();

    result = 0;
    if ((v11 & 1) == 0)
    {
      return result;
    }
  }

  return v7 == v10;
}

void sub_228862828()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 44));
  sub_228863F60((v1 + 16));
  os_unfair_lock_unlock((v1 + 44));
}

void *sub_22886287C@<X0>(_BYTE *a1@<X0>, void *a2@<X8>)
{
  sub_228863DDC(0, &qword_2813CF200, sub_22880F394, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  v5 = inited;
  *(inited + 16) = xmmword_228881920;
  *(inited + 32) = 0x6574617473;
  *(inited + 40) = 0xE500000000000000;
  if (a1[25])
  {
    v6 = 0xE800000000000000;
    v7 = 0x64656873696E6966;
  }

  else
  {
    if (*a1)
    {
      v7 = 0x6465736F6C63;
    }

    else
    {
      v7 = 1852141679;
    }

    if (*a1)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xE400000000000000;
    }
  }

  v8 = 0xEB00000000646569;
  *(inited + 48) = v7;
  *(inited + 56) = v6;
  *(inited + 64) = 0xD000000000000011;
  *(inited + 72) = 0x8000000228889910;
  if (a1[24] > 1u)
  {
    if (a1[24] == 2)
    {
      v9 = 0x616E65746E69616DLL;
      v10 = 0xEB0000000065636ELL;
    }

    else
    {
      v10 = 0xE700000000000000;
      v9 = 0x64656B636F6C62;
    }
  }

  else if (a1[24])
  {
    v10 = 0xE600000000000000;
    v9 = 0x746E65677275;
  }

  else
  {
    v9 = 0x6669636570736E75;
    v10 = 0xEB00000000646569;
  }

  *(inited + 80) = v9;
  *(inited + 88) = v10;
  *(inited + 96) = 0xD000000000000019;
  *(inited + 104) = 0x8000000228889980;
  v11 = a1[24];
  if (*a1 && *(*a1 + 40) != 4)
  {
    v11 = *(*a1 + 40);
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = 0x616E65746E69616DLL;
      v8 = 0xEB0000000065636ELL;
    }

    else
    {
      v8 = 0xE700000000000000;
      v12 = 0x64656B636F6C62;
    }
  }

  else if (v11)
  {
    v8 = 0xE600000000000000;
    v12 = 0x746E65677275;
  }

  else
  {
    v12 = 0x6669636570736E75;
  }

  *(inited + 112) = v12;
  *(inited + 120) = v8;
  strcpy((inited + 128), "pendingCount");
  *(inited + 141) = 0;
  *(inited + 142) = -5120;
  *(inited + 144) = sub_22887FBA0();
  v5[19] = v13;
  v5[20] = 0x6F43657669746361;
  v5[21] = 0xEB00000000746E75;
  v5[22] = sub_22887FBA0();
  v5[23] = v14;
  v15 = sub_2287E97C0(v5);
  swift_setDeallocating();
  sub_22880F394();
  swift_arrayDestroy();
  v16 = sub_2288093F4(MEMORY[0x277D84F90]);
  type metadata accessor for DebugSnapshot();
  result = swift_allocObject();
  result[2] = 0x6F7045206B726F57;
  result[3] = 0xEA00000000006863;
  result[4] = v15;
  result[5] = v16;
  *a2 = result;
  return result;
}

unint64_t sub_228862BD8()
{
  result = qword_27D8528F8;
  if (!qword_27D8528F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8528F8);
  }

  return result;
}

uint64_t sub_228862C2C()
{
  v1 = *(*v0 + 16);
  os_unfair_lock_lock((v1 + 44));
  sub_22886287C((v1 + 16), &v3);
  os_unfair_lock_unlock((v1 + 44));
  return v3;
}

uint64_t sub_228862CD0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 26))
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

uint64_t sub_228862D18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 26) = 1;
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

    *(result + 26) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_228862D6C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t (*a4)(__int128 *, _BYTE *), uint64_t a5, uint64_t a6)
{
  v126 = a4;
  v106 = result;
  v8 = a3[1];
  if (v8 < 1)
  {
    v11 = MEMORY[0x277D84F90];
LABEL_92:
    v10 = *v106;
    if (*v106)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_124;
      }

      goto LABEL_94;
    }

    goto LABEL_133;
  }

  v9 = 0;
  v10 = &v111;
  v11 = MEMORY[0x277D84F90];
  while (1)
  {
    v12 = v9;
    v13 = v9 + 1;
    if (v13 >= v8)
    {
      v24 = v13;
      goto LABEL_12;
    }

    v103 = v8;
    v14 = *a3;
    sub_2287F71FC(*a3 + 216 * v13, &v111);
    sub_2287F71FC(v14 + 216 * v12, v110);
    v15 = v126(&v111, v110);
    if (v6)
    {
LABEL_104:
      sub_2287F836C(v110);
      sub_2287F836C(&v111);
    }

    v16 = v12;
    v17 = v15;
    v107 = a5;
    sub_2287F836C(v110);
    result = sub_2287F836C(&v111);
    v18 = 0;
    v99 = v16;
    v19 = v16 - v103 + 2;
    v20 = 216 * v16;
    v21 = v14 + v20 + 432;
    while (v19 + v18)
    {
      sub_2287F71FC(v21, &v111);
      sub_2287F71FC(v21 - 216, v110);
      v22 = v126(&v111, v110);
      sub_2287F836C(v110);
      result = sub_2287F836C(&v111);
      ++v18;
      v21 += 216;
      if ((v17 ^ v22))
      {
        v23 = v99 + v18;
        v24 = v99 + v18 + 1;
        a5 = v107;
        if ((v17 & 1) == 0)
        {
          goto LABEL_10;
        }

LABEL_72:
        v12 = v99;
        if (v24 >= v99)
        {
          if (v99 <= v23)
          {
            v75 = v99;
            v76 = 216 * v24 - 216;
            v104 = v24;
            do
            {
              if (v75 != --v24)
              {
                v78 = *a3;
                if (!*a3)
                {
                  goto LABEL_131;
                }

                v77 = v78 + v76;
                v121 = *(v78 + v20 + 160);
                v122 = *(v78 + v20 + 176);
                v123 = *(v78 + v20 + 192);
                v124 = *(v78 + v20 + 208);
                v117 = *(v78 + v20 + 96);
                v118 = *(v78 + v20 + 112);
                v119 = *(v78 + v20 + 128);
                v120 = *(v78 + v20 + 144);
                v113 = *(v78 + v20 + 32);
                v114 = *(v78 + v20 + 48);
                v115 = *(v78 + v20 + 64);
                v116 = *(v78 + v20 + 80);
                v111 = *(v78 + v20);
                v112 = *(v78 + v20 + 16);
                result = memmove((v78 + v20), (v78 + v76), 0xD8uLL);
                *(v77 + 160) = v121;
                *(v77 + 176) = v122;
                *(v77 + 192) = v123;
                *(v77 + 208) = v124;
                *(v77 + 96) = v117;
                *(v77 + 112) = v118;
                *(v77 + 128) = v119;
                *(v77 + 144) = v120;
                *(v77 + 32) = v113;
                *(v77 + 48) = v114;
                *(v77 + 64) = v115;
                *(v77 + 80) = v116;
                *v77 = v111;
                *(v77 + 16) = v112;
              }

              ++v75;
              v76 -= 216;
              v20 += 216;
            }

            while (v75 < v24);
            v12 = v99;
            v24 = v104;
          }

          goto LABEL_12;
        }

LABEL_127:
        __break(1u);
LABEL_128:
        __break(1u);
LABEL_129:
        __break(1u);
        goto LABEL_130;
      }
    }

    v23 = v103 - 1;
    v24 = v103;
    a5 = v107;
    if (v17)
    {
      goto LABEL_72;
    }

LABEL_10:
    v12 = v99;
LABEL_12:
    v25 = a3[1];
    if (v24 >= v25)
    {
      goto LABEL_21;
    }

    if (__OFSUB__(v24, v12))
    {
      goto LABEL_123;
    }

    if (v24 - v12 >= a6)
    {
      goto LABEL_21;
    }

    if (__OFADD__(v12, a6))
    {
      __break(1u);
LABEL_126:
      __break(1u);
      goto LABEL_127;
    }

    if (v12 + a6 >= v25)
    {
      v26 = a3[1];
    }

    else
    {
      v26 = v12 + a6;
    }

    if (v26 < v12)
    {
      goto LABEL_126;
    }

    if (v24 == v26)
    {
LABEL_21:
      v27 = v24;
      if (v24 < v12)
      {
        goto LABEL_122;
      }
    }

    else
    {
      v108 = *a3;
      v79 = *a3 + 216 * v24;
      v100 = v12;
      v102 = v26;
      v80 = v12 - v24;
      do
      {
        v105 = v24;
        v97 = v80;
        v81 = v79;
        v82 = v79;
        do
        {
          sub_2287F71FC(v82, &v111);
          v83 = (v82 - 216);
          sub_2287F71FC(v82 - 216, v110);
          v84 = v126(&v111, v110);
          if (v6)
          {
            goto LABEL_104;
          }

          v85 = v84;
          sub_2287F836C(v110);
          result = sub_2287F836C(&v111);
          if ((v85 & 1) == 0)
          {
            break;
          }

          if (!v108)
          {
            goto LABEL_129;
          }

          v121 = *(v82 + 160);
          v122 = *(v82 + 176);
          v123 = *(v82 + 192);
          v124 = *(v82 + 208);
          v117 = *(v82 + 96);
          v118 = *(v82 + 112);
          v119 = *(v82 + 128);
          v120 = *(v82 + 144);
          v113 = *(v82 + 32);
          v114 = *(v82 + 48);
          v115 = *(v82 + 64);
          v116 = *(v82 + 80);
          v111 = *v82;
          v112 = *(v82 + 16);
          v86 = *(v82 - 40);
          *(v82 + 160) = *(v82 - 56);
          *(v82 + 176) = v86;
          *(v82 + 192) = *(v82 - 24);
          *(v82 + 208) = *(v82 - 8);
          v87 = *(v82 - 104);
          *(v82 + 96) = *(v82 - 120);
          *(v82 + 112) = v87;
          v88 = *(v82 - 72);
          *(v82 + 128) = *(v82 - 88);
          *(v82 + 144) = v88;
          v89 = *(v82 - 168);
          *(v82 + 32) = *(v82 - 184);
          *(v82 + 48) = v89;
          v90 = *(v82 - 136);
          *(v82 + 64) = *(v82 - 152);
          *(v82 + 80) = v90;
          v91 = *(v82 - 200);
          *v82 = *v83;
          *(v82 + 16) = v91;
          *(v82 - 56) = v121;
          *(v82 - 40) = v122;
          *(v82 - 24) = v123;
          *(v82 - 8) = v124;
          *(v82 - 120) = v117;
          *(v82 - 104) = v118;
          *(v82 - 88) = v119;
          *(v82 - 72) = v120;
          *(v82 - 184) = v113;
          *(v82 - 168) = v114;
          *(v82 - 152) = v115;
          *(v82 - 136) = v116;
          *v83 = v111;
          *(v82 - 200) = v112;
          v82 -= 216;
        }

        while (!__CFADD__(v80++, 1));
        v24 = v105 + 1;
        v79 = v81 + 216;
        v80 = v97 - 1;
        v27 = v102;
      }

      while (v105 + 1 != v102);
      v12 = v100;
      if (v102 < v100)
      {
        goto LABEL_122;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_22882F8B4(0, *(v11 + 2) + 1, 1, v11);
      v11 = result;
    }

    v29 = *(v11 + 2);
    v28 = *(v11 + 3);
    v30 = v29 + 1;
    if (v29 >= v28 >> 1)
    {
      result = sub_22882F8B4((v28 > 1), v29 + 1, 1, v11);
      v11 = result;
    }

    *(v11 + 2) = v30;
    v31 = &v11[16 * v29];
    *(v31 + 4) = v12;
    *(v31 + 5) = v27;
    v32 = *v106;
    if (!*v106)
    {
      goto LABEL_132;
    }

    v101 = v27;
    if (v29)
    {
      break;
    }

LABEL_3:
    v8 = a3[1];
    v9 = v101;
    if (v101 >= v8)
    {
      goto LABEL_92;
    }
  }

  while (1)
  {
    v33 = v30 - 1;
    if (v30 >= 4)
    {
      v38 = &v11[16 * v30 + 32];
      v39 = *(v38 - 64);
      v40 = *(v38 - 56);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_109;
      }

      v43 = *(v38 - 48);
      v42 = *(v38 - 40);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_110;
      }

      v45 = &v11[16 * v30];
      v47 = *v45;
      v46 = *(v45 + 1);
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_112;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_115;
      }

      if (v49 >= v41)
      {
        v67 = &v11[16 * v33 + 32];
        v69 = *v67;
        v68 = *(v67 + 1);
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_121;
        }

        if (v36 < v70)
        {
          v33 = v30 - 2;
        }

        goto LABEL_62;
      }

      goto LABEL_41;
    }

    if (v30 == 3)
    {
      v34 = *(v11 + 4);
      v35 = *(v11 + 5);
      v44 = __OFSUB__(v35, v34);
      v36 = v35 - v34;
      v37 = v44;
LABEL_41:
      if (v37)
      {
        goto LABEL_111;
      }

      v50 = &v11[16 * v30];
      v52 = *v50;
      v51 = *(v50 + 1);
      v53 = __OFSUB__(v51, v52);
      v54 = v51 - v52;
      v55 = v53;
      if (v53)
      {
        goto LABEL_114;
      }

      v56 = &v11[16 * v33 + 32];
      v58 = *v56;
      v57 = *(v56 + 1);
      v44 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v44)
      {
        goto LABEL_117;
      }

      if (__OFADD__(v54, v59))
      {
        goto LABEL_118;
      }

      if (v54 + v59 >= v36)
      {
        if (v36 < v59)
        {
          v33 = v30 - 2;
        }

        goto LABEL_62;
      }

      goto LABEL_55;
    }

    v60 = &v11[16 * v30];
    v62 = *v60;
    v61 = *(v60 + 1);
    v44 = __OFSUB__(v61, v62);
    v54 = v61 - v62;
    v55 = v44;
LABEL_55:
    if (v55)
    {
      goto LABEL_113;
    }

    v63 = &v11[16 * v33];
    v65 = *(v63 + 4);
    v64 = *(v63 + 5);
    v44 = __OFSUB__(v64, v65);
    v66 = v64 - v65;
    if (v44)
    {
      goto LABEL_116;
    }

    if (v66 < v54)
    {
      goto LABEL_3;
    }

LABEL_62:
    v71 = v33 - 1;
    if (v33 - 1 >= v30)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_128;
    }

    v72 = *&v11[16 * v71 + 32];
    v73 = *&v11[16 * v33 + 40];
    sub_228863678((*a3 + 216 * v72), (*a3 + 216 * *&v11[16 * v33 + 32]), (*a3 + 216 * v73), v32, v126, a5);
    if (v6)
    {
    }

    if (v73 < v72)
    {
      goto LABEL_107;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_228863AEC(v11);
    }

    if (v71 >= *(v11 + 2))
    {
      goto LABEL_108;
    }

    v74 = &v11[16 * v71];
    *(v74 + 4) = v72;
    *(v74 + 5) = v73;
    v125 = v11;
    result = sub_228863A60(v33);
    v11 = v125;
    v30 = *(v125 + 2);
    if (v30 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  result = sub_228863AEC(v11);
  v11 = result;
LABEL_94:
  v125 = v11;
  v93 = *(v11 + 2);
  if (v93 < 2)
  {
  }

  v94 = a5;
  while (*a3)
  {
    v95 = *&v11[16 * v93];
    a5 = *&v11[16 * v93 + 24];
    sub_228863678((*a3 + 216 * v95), (*a3 + 216 * *&v11[16 * v93 + 16]), (*a3 + 216 * a5), v10, v126, v94);
    if (v6)
    {
    }

    if (a5 < v95)
    {
      goto LABEL_119;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_228863AEC(v11);
    }

    if (v93 - 2 >= *(v11 + 2))
    {
      goto LABEL_120;
    }

    v96 = &v11[16 * v93];
    *v96 = v95;
    *(v96 + 1) = a5;
    v125 = v11;
    result = sub_228863A60(v93 - 1);
    v11 = v125;
    v93 = *(v125 + 2);
    if (v93 <= 1)
    {
    }
  }

LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
  return result;
}

uint64_t sub_228863678(char *__src, char *a2, char *a3, char *__dst, uint64_t (*a5)(_BYTE *, _BYTE *), uint64_t a6)
{
  v37 = a6;
  v7 = __dst;
  v8 = a3;
  v9 = a2;
  v10 = __src;
  v11 = a2 - __src;
  v12 = (a2 - __src) / 216;
  v13 = a3 - a2;
  v14 = (a3 - a2) / 216;
  if (v12 >= v14)
  {
    if (__dst != a2 || &a2[216 * v14] <= __dst)
    {
      memmove(__dst, a2, 216 * v14);
    }

    v15 = (v7 + 216 * v14);
    if (v13 >= 216 && v9 > v10)
    {
      v20 = -v7;
      while (1)
      {
        v33 = v9;
        v9 -= 216;
        v21 = v15 - 216;
        v22 = &v15[v20];
        v8 -= 216;
        while (1)
        {
          sub_2287F71FC(v21, v36);
          sub_2287F71FC(v9, v35);
          v25 = a5(v36, v35);
          if (v6)
          {
            sub_2287F836C(v35);
            sub_2287F836C(v36);
            v30 = v22 / 216;
            v29 = v33;
            if (v33 >= v7 && v33 < v7 + 216 * v30 && v33 == v7)
            {
              return 1;
            }

            v28 = 216 * v30;
LABEL_48:
            memmove(v29, v7, v28);
            return 1;
          }

          v26 = v25;
          sub_2287F836C(v35);
          sub_2287F836C(v36);
          if (v26)
          {
            break;
          }

          if (v8 + 216 != v21 + 216)
          {
            memmove(v8, v21, 0xD8uLL);
          }

          v23 = v21 - 216;
          v22 -= 216;
          v8 -= 216;
          v24 = v21 > v7;
          v21 -= 216;
          if (!v24)
          {
            v15 = v23 + 216;
            v9 = v33;
            goto LABEL_44;
          }
        }

        if (v8 + 216 != v33)
        {
          memmove(v8, v9, 0xD8uLL);
        }

        v15 = v21 + 216;
        if ((v21 + 216) > v7)
        {
          v20 = -v7;
          if (v9 > v10)
          {
            continue;
          }
        }

        v15 = v21 + 216;
        break;
      }
    }

LABEL_44:
    v31 = &v15[-v7] / 216;
    if (v9 >= v7 && v9 < v7 + 216 * v31 && v9 == v7)
    {
      return 1;
    }

    v28 = 216 * v31;
    v29 = v9;
    goto LABEL_48;
  }

  if (__dst != __src || &__src[216 * v12] <= __dst)
  {
    memmove(__dst, __src, 216 * v12);
  }

  v15 = (v7 + 216 * v12);
  if (v11 < 216 || v9 >= v8)
  {
    v9 = v10;
    goto LABEL_44;
  }

  while (1)
  {
    sub_2287F71FC(v9, v36);
    sub_2287F71FC(v7, v35);
    v16 = a5(v36, v35);
    if (v6)
    {
      break;
    }

    v17 = v16;
    sub_2287F836C(v35);
    sub_2287F836C(v36);
    if ((v17 & 1) == 0)
    {
      v18 = v7;
      v19 = v10 == v7;
      v7 += 216;
      if (v19)
      {
        goto LABEL_14;
      }

LABEL_13:
      memmove(v10, v18, 0xD8uLL);
      goto LABEL_14;
    }

    v18 = v9;
    v19 = v10 == v9;
    v9 += 216;
    if (!v19)
    {
      goto LABEL_13;
    }

LABEL_14:
    v10 += 216;
    if (v7 >= v15 || v9 >= v8)
    {
      v9 = v10;
      goto LABEL_44;
    }
  }

  sub_2287F836C(v35);
  sub_2287F836C(v36);
  v27 = &v15[-v7] / 216;
  if (v10 < v7 || v10 >= v7 + 216 * v27 || v10 != v7)
  {
    v28 = 216 * v27;
    v29 = v10;
    goto LABEL_48;
  }

  return 1;
}

uint64_t sub_228863A60(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_228863AEC(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_228863B00(char *result, int64_t a2, char a3, char *a4)
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
    sub_228863DDC(0, &qword_2813CF1D8, sub_2288360EC, MEMORY[0x277D84560]);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void sub_228863CFC()
{
  if (!qword_2813D1038)
  {
    sub_2287FDB34();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2813D1038);
    }
  }
}

void sub_228863DDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_228863E40(uint64_t a1, uint64_t a2)
{
  sub_228863DDC(0, &qword_27D852900, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_228863ED4(uint64_t a1)
{
  sub_228863DDC(0, &qword_27D852900, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OptionalValueAnchor.init(identifier:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 8);
  *a3 = *a1;
  *(a3 + 8) = v5;
  *(a3 + 16) = *(a1 + 16);
  v6 = *(type metadata accessor for OptionalValueAnchor() + 52);
  v7 = sub_22887F7D0();
  return (*(*(v7 - 8) + 32))(a3 + v6, a2, v7);
}

uint64_t OptionalValueAnchor.identifier.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v4 = v1[2];
  v3 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v3;
}

uint64_t OptionalValueAnchor.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  v5 = sub_22887F7D0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t OptionalValueAnchor.hasDifference(from:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = a1;
  v41 = *(*(a3 + 16) - 8);
  MEMORY[0x28223BE20](a1);
  v36 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v5;
  v6 = sub_22887F7D0();
  v42 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v38 = &v36 - v10;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v37 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v13 = &v36 - v12;
  v14 = sub_22887F7D0();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v36 - v17;
  v19 = *(a3 - 8);
  MEMORY[0x28223BE20](v16);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v18, v39, v14);
  if ((*(v19 + 48))(v18, 1, a3) != 1)
  {
    (*(v19 + 32))(v21, v18, a3);
    v24 = *(a3 + 52);
    v39 = TupleTypeMetadata2;
    v25 = *(TupleTypeMetadata2 + 48);
    v26 = *(v42 + 16);
    v26(v13, v40 + v24, v6);
    v27 = v25;
    v26(&v13[v25], &v21[v24], v6);
    v28 = *(v41 + 48);
    if (v28(v13, 1, v43) == 1)
    {
      (*(v19 + 8))(v21, a3);
      if (v28(&v13[v27], 1, v43) == 1)
      {
        (*(v42 + 8))(v13, v6);
        v23 = 0;
        return v23 & 1;
      }
    }

    else
    {
      v26(v38, v13, v6);
      v29 = v6;
      v30 = v43;
      if (v28(&v13[v27], 1, v43) != 1)
      {
        v31 = v41;
        v32 = v36;
        (*(v41 + 32))(v36, &v13[v27], v30);
        v33 = v38;
        LODWORD(v40) = sub_22887F360();
        v34 = *(v31 + 8);
        v34(v32, v30);
        (*(v19 + 8))(v21, a3);
        v34(v33, v30);
        (*(v42 + 8))(v13, v29);
        v23 = v40 ^ 1;
        return v23 & 1;
      }

      (*(v19 + 8))(v21, a3);
      (*(v41 + 8))(v38, v30);
    }

    (*(v37 + 8))(v13, v39);
    v23 = 1;
    return v23 & 1;
  }

  (*(v15 + 8))(v18, v14);
  v22 = v42;
  (*(v42 + 16))(v9, v40 + *(a3 + 52), v6);
  v23 = (*(v41 + 48))(v9, 1, v43) != 1;
  (*(v22 + 8))(v9, v6);
  return v23 & 1;
}

uint64_t sub_22886478C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2288647E0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t OptionalValueAnchor.encode(to:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 + 16);
  v6 = *(a2 + 32);
  v16[1] = a2;
  v17 = v6;
  v18 = v5;
  v20 = v5;
  v21 = v6;
  type metadata accessor for OptionalValueAnchor.CodingKeys();
  swift_getWitnessTable();
  v7 = sub_22887FB70();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v16 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22887FCF0();
  v11 = v3[1];
  v12 = v3[2];
  v13 = v3[3];
  *&v20 = *v3;
  *(&v20 + 1) = v11;
  *&v21 = v12;
  *(&v21 + 1) = v13;
  v22 = 0;
  sub_228806798();

  v14 = v19;
  sub_22887FB50();

  if (!v14)
  {
    LOBYTE(v20) = 1;
    sub_22887FB10();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t OptionalValueAnchor.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v30 = a6;
  v11 = sub_22887F7D0();
  v28 = *(v11 - 8);
  v29 = v11;
  MEMORY[0x28223BE20](v11);
  v32 = &v26 - v12;
  v38 = a2;
  v39 = a3;
  *&v40 = a4;
  *(&v40 + 1) = a5;
  type metadata accessor for OptionalValueAnchor.CodingKeys();
  swift_getWitnessTable();
  v36 = sub_22887FAF0();
  v31 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v14 = &v26 - v13;
  v33 = a2;
  v34 = a3;
  v38 = a2;
  v39 = a3;
  *&v40 = a4;
  *(&v40 + 1) = a5;
  v15 = type metadata accessor for OptionalValueAnchor();
  v27 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v26 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v35 = v14;
  v18 = v37;
  sub_22887FCE0();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v37 = a1;
  v26 = v15;
  v20 = v31;
  v19 = v32;
  v41 = 0;
  sub_22880640C();
  v21 = v35;
  sub_22887FAE0();
  v22 = v39;
  *v17 = v38;
  *(v17 + 1) = v22;
  *(v17 + 1) = v40;
  LOBYTE(v38) = 1;
  sub_22887FAA0();
  (*(v20 + 8))(v21, v36);
  v23 = v26;
  (*(v28 + 32))(&v17[*(v26 + 52)], v19, v29);
  v24 = v27;
  (*(v27 + 16))(v30, v17, v23);
  __swift_destroy_boxed_opaque_existential_1(v37);
  return (*(v24 + 8))(v17, v23);
}

uint64_t sub_228864E24(void *a1)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

uint64_t sub_228864EE0()
{
  result = sub_22887F7D0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_228864F60(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v9;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_31;
  }

  v11 = v9 + ((v8 + 32) & ~v8);
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v15 = ((v10 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 < 2)
    {
LABEL_31:
      if ((v6 & 0x80000000) != 0)
      {
        v18 = (*(v4 + 48))((a1 + v8 + 32) & ~v8);
        if (v18 >= 2)
        {
          return v18 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v17 = *(a1 + 1);
        if (v17 >= 0xFFFFFFFF)
        {
          LODWORD(v17) = -1;
        }

        return (v17 + 1);
      }
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_31;
  }

LABEL_20:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    else if (v11 == 1)
    {
      LODWORD(v11) = *a1;
    }

    else
    {
      LODWORD(v11) = *a1;
    }
  }

  return v7 + (v11 | v16) + 1;
}

uint64_t MockDispatchTarget.__allocating_init()()
{
  v0 = swift_allocObject();
  sub_22886542C();
  v1 = swift_allocObject();
  *(v1 + 32) = 0;
  *(v1 + 16) = sub_2288653D8;
  *(v1 + 24) = 0;
  *(v0 + 16) = v1;
  return v0;
}

uint64_t MockDispatchTarget.init()()
{
  sub_22886542C();
  v1 = swift_allocObject();
  *(v1 + 32) = 0;
  *(v1 + 16) = sub_2288653D8;
  *(v1 + 24) = 0;
  *(v0 + 16) = v1;
  return v0;
}

uint64_t MockDispatchTarget.run(_:for:context:completion:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18 = a2[1];
  v19 = *a2;
  v12 = *(a2 + 4);
  v13 = *(a2 + 5);
  swift_beginAccess();
  v14 = *(v6 + 16);

  os_unfair_lock_lock((v14 + 32));
  v15 = *(v14 + 16);

  os_unfair_lock_unlock((v14 + 32));

  v22[0] = v19;
  v22[1] = v18;
  v23 = v12;
  v24 = v13;
  v21[0] = a3;
  v21[1] = a4;
  v16 = swift_allocObject();
  *(v16 + 16) = a5;
  *(v16 + 24) = a6;
  v20[0] = sub_22886584C;
  v20[1] = v16;

  v15(a1, v22, v21, v20);
}

uint64_t (*MockDispatchTarget.runHandler.getter())(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  os_unfair_lock_lock((v1 + 32));
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);

  os_unfair_lock_unlock((v1 + 32));

  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  return sub_228865878;
}

uint64_t sub_2288653D8(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(uint64_t *))
{
  v4 = *a4;
  v6 = 0;

  v4(&v6);
}

void sub_22886542C()
{
  if (!qword_27D852908)
  {
    sub_228865494();
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_22887F910();
    if (!v1)
    {
      atomic_store(v0, &qword_27D852908);
    }
  }
}

unint64_t sub_228865494()
{
  result = qword_27D852910;
  if (!qword_27D852910)
  {
    sub_2287E670C(255, &qword_2813CF7F8);
    sub_2287E670C(255, qword_2813D13A8);
    sub_22886554C();
    result = swift_getFunctionTypeMetadata();
    atomic_store(result, &qword_27D852910);
  }

  return result;
}

unint64_t sub_22886554C()
{
  result = qword_27D852918;
  if (!qword_27D852918)
  {
    sub_2288655AC();
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, &qword_27D852918);
  }

  return result;
}

void sub_2288655AC()
{
  if (!qword_27D852920)
  {
    sub_228865604();
    v0 = sub_22887F7D0();
    if (!v1)
    {
      atomic_store(v0, &qword_27D852920);
    }
  }
}

unint64_t sub_228865604()
{
  result = qword_27D852928;
  if (!qword_27D852928)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D852928);
  }

  return result;
}

uint64_t sub_228865650(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t (*)(uint64_t a1), uint64_t))
{
  v8 = *a3;
  v9 = a3[1];
  v11 = *a4;
  v10 = a4[1];
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = v10;

  a5(a1, a2, v8, v9, sub_228865CA0, v12);
}

uint64_t sub_22886570C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;

  sub_228865B84(sub_228865CD8, v3);
}

uint64_t sub_228865790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, void *, void *))
{
  v15[0] = a3;
  v15[1] = a4;
  v12 = swift_allocObject();
  *(v12 + 16) = a5;
  *(v12 + 24) = a6;
  v14[0] = sub_228865CE0;
  v14[1] = v12;

  a7(a1, a2, v15, v14);
}

uint64_t MockDispatchTarget.runHandler.setter(uint64_t a1, uint64_t a2)
{
  sub_228865B84(a1, a2);
}

void (*MockDispatchTarget.runHandler.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  swift_beginAccess();
  v5 = *(v1 + 16);
  v4[7] = v5;
  os_unfair_lock_lock((v5 + 32));
  v7 = *(v5 + 16);
  v6 = *(v5 + 24);

  os_unfair_lock_unlock((v5 + 32));
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  v4[3] = sub_228865CD8;
  v4[4] = v8;
  return sub_228865990;
}

void sub_228865990(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 56);
  if (a2)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v3;
    *(v6 + 24) = v4;
    v2[5] = sub_228865C48;
    v2[6] = v6;
    MEMORY[0x28223BE20](v6);

    os_unfair_lock_lock((v5 + 32));
    sub_228827F0C((v5 + 16));
    os_unfair_lock_unlock((v5 + 32));
  }

  else
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v3;
    *(v7 + 24) = v4;
    v2[5] = sub_228865CDC;
    v2[6] = v7;
    MEMORY[0x28223BE20](v7);
    os_unfair_lock_lock((v5 + 32));
    sub_22882817C((v5 + 16));
    os_unfair_lock_unlock((v5 + 32));
  }

  swift_endAccess();
  free(v2);
}

uint64_t MockDispatchTarget.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_228865B84(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  swift_beginAccess();
  v6 = *(v2 + 16);

  os_unfair_lock_lock((v6 + 32));
  sub_22882817C((v6 + 16));
  os_unfair_lock_unlock((v6 + 32));

  return swift_endAccess();
}

uint64_t sub_228865CA0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

HealthOrchestration::WorkPlanIdentifier __swiftcall WorkPlanIdentifier.init(domain:code:)(Swift::String domain, Swift::Int code)
{
  *v2 = domain;
  v2[1]._countAndFlagsBits = code;
  result.domain = domain;
  result.code = code;
  return result;
}

uint64_t WorkPlanIdentifier.domain.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t WorkPlanIdentifier.domain.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

void static WorkPlanIdentifier.singleWorkPlanIdentifier.getter(uint64_t a1@<X8>)
{
  strcpy(a1, "SingleWorkPlan");
  *(a1 + 15) = -18;
  *(a1 + 16) = 0;
}

BOOL static WorkPlanIdentifier.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return v2 == v3;
  }

  v5 = sub_22887FBF0();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t sub_228865E30()
{
  if (*v0)
  {
    return 1701080931;
  }

  else
  {
    return 0x6E69616D6F64;
  }
}

uint64_t sub_228865E60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
  if (v6 || (sub_22887FBF0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701080931 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22887FBF0();

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

uint64_t sub_228865F38(uint64_t a1)
{
  v2 = sub_228866130();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_228865F74(uint64_t a1)
{
  v2 = sub_228866130();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WorkPlanIdentifier.encode(to:)(void *a1)
{
  sub_228866538(0, &qword_27D852930, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v10 - v6;
  v10[0] = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_228866130();
  sub_22887FCF0();
  v12 = 0;
  v8 = v10[1];
  sub_22887FB20();
  if (!v8)
  {
    v11 = 1;
    sub_22887FB40();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_228866130()
{
  result = qword_27D852938;
  if (!qword_27D852938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D852938);
  }

  return result;
}

uint64_t WorkPlanIdentifier.hash(into:)()
{
  v1 = *(v0 + 16);
  sub_22887F3E0();
  return MEMORY[0x22AAC0BD0](v1);
}

uint64_t WorkPlanIdentifier.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_22887FC90();
  sub_22887F3E0();
  MEMORY[0x22AAC0BD0](v1);
  return sub_22887FCD0();
}

uint64_t WorkPlanIdentifier.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_228866538(0, &qword_27D852940, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_228866130();
  sub_22887FCE0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = 0;
  v10 = sub_22887FAB0();
  v12 = v11;
  v13 = v10;
  v17 = 1;
  v14 = sub_22887FAD0();
  (*(v7 + 8))(v9, v6);
  *a2 = v13;
  a2[1] = v12;
  a2[2] = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_22886643C()
{
  v1 = *(v0 + 16);
  sub_22887FC90();
  sub_22887F3E0();
  MEMORY[0x22AAC0BD0](v1);
  return sub_22887FCD0();
}

uint64_t sub_2288664A0()
{
  v1 = *(v0 + 16);
  sub_22887F3E0();
  return MEMORY[0x22AAC0BD0](v1);
}

uint64_t sub_2288664D8()
{
  v1 = *(v0 + 16);
  sub_22887FC90();
  sub_22887F3E0();
  MEMORY[0x22AAC0BD0](v1);
  return sub_22887FCD0();
}

void sub_228866538(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_228866130();
    v7 = a3(a1, &type metadata for WorkPlanIdentifier.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

BOOL sub_22886659C(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return v2 == v3;
  }

  v5 = sub_22887FBF0();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t WorkPlanIdentifier.description.getter()
{
  v3 = *v0;

  MEMORY[0x22AAC0340](40, 0xE100000000000000);
  v1 = sub_22887FBA0();
  MEMORY[0x22AAC0340](v1);

  MEMORY[0x22AAC0340](41, 0xE100000000000000);
  return v3;
}

unint64_t sub_228866684()
{
  result = qword_2813D0C10;
  if (!qword_2813D0C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813D0C10);
  }

  return result;
}

uint64_t sub_2288666D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_228866720(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2288667AC()
{
  result = qword_27D852948;
  if (!qword_27D852948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D852948);
  }

  return result;
}

unint64_t sub_228866804()
{
  result = qword_27D852950;
  if (!qword_27D852950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D852950);
  }

  return result;
}

unint64_t sub_22886685C()
{
  result = qword_27D852958;
  if (!qword_27D852958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D852958);
  }

  return result;
}

uint64_t MultiDispatcher.__allocating_init(target:width:filter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  MultiDispatcher.init(target:width:filter:)(a1, a2, a3, a4);
  return v8;
}

void *MultiDispatcher.init(target:width:filter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v23 = a3;
  v24 = a4;
  v25 = a2;
  v21 = a1;
  v22 = sub_22887F6F0();
  v7 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22887F6E0();
  MEMORY[0x28223BE20](v10);
  v11 = sub_22887F270();
  MEMORY[0x28223BE20](v11 - 8);
  sub_2287E766C(a1, (v4 + 2));
  v12 = sub_22880AA7C();
  v20[0] = "ispatchTarget";
  v20[1] = v12;
  sub_22887F260();
  v13 = MEMORY[0x277D85230];
  sub_2287F8B44(0, &qword_2813CF1D0, MEMORY[0x277D85230], MEMORY[0x277D84560]);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2288817D0;
  sub_22887F6D0();
  v26 = v14;
  sub_2287E710C(&qword_2813CF510, MEMORY[0x277D85230]);
  sub_2287F8B44(0, &qword_2813CF590, v13, MEMORY[0x277D83940]);
  sub_2287F8A7C(&qword_2813CF580, &qword_2813CF590, v13);
  sub_22887F820();
  (*(v7 + 104))(v9, *MEMORY[0x277D85260], v22);
  v15 = sub_22887F710();
  v17 = v23;
  v16 = v24;
  v4[7] = v15;
  v4[8] = v17;
  v4[9] = v16;
  sub_228866C78();
  v18 = swift_allocObject();
  *(v18 + 36) = 0;
  __swift_destroy_boxed_opaque_existential_1(v21);
  *(v18 + 16) = v25;
  *(v18 + 24) = 0;
  *(v18 + 32) = 0;
  v5[10] = v18;
  return v5;
}

void sub_228866C78()
{
  if (!qword_2813CF488)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_22887F910();
    if (!v1)
    {
      atomic_store(v0, &qword_2813CF488);
    }
  }
}

uint64_t MultiDispatcher.width.getter()
{
  v1 = *(v0 + 80);
  os_unfair_lock_lock((v1 + 36));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 36));
  return v2;
}

void MultiDispatcher.width.setter(uint64_t a1)
{
  v3 = *(v1 + 80);
  os_unfair_lock_lock((v3 + 36));
  *(v3 + 16) = a1;

  os_unfair_lock_unlock((v3 + 36));
}

void (*MultiDispatcher.width.modify(void *a1))(uint64_t *a1)
{
  v3 = *(v1 + 80);
  a1[1] = v3;
  os_unfair_lock_lock((v3 + 36));
  v4 = *(v3 + 16);
  os_unfair_lock_unlock((v3 + 36));
  *a1 = v4;
  return sub_228866DC8;
}

void sub_228866DC8(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  os_unfair_lock_lock((v1 + 36));
  *(v1 + 16) = v2;

  os_unfair_lock_unlock((v1 + 36));
}

void sub_228866E08(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_228824980(a1, v14);
    if (*&v14[0])
    {
      v16[6] = v14[6];
      v16[7] = v14[7];
      v17 = v15;
      v16[2] = v14[2];
      v16[3] = v14[3];
      v16[4] = v14[4];
      v16[5] = v14[5];
      v16[0] = v14[0];
      v16[1] = v14[1];
      v7 = *(v6 + 80);

      os_unfair_lock_lock((v7 + 36));
      *(v7 + 32) = 0;
      v8 = *(v7 + 24);
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        __break(1u);
      }

      else
      {
        *(v7 + 24) = v10;
        os_unfair_lock_unlock((v7 + 36));

        sub_2287F8634(v16, a3);
        v11 = a3[3];
        v12 = a3[4];
        v13 = __swift_project_boxed_opaque_existential_1(a3, v11);
        sub_228866FF4(v13, v6, v11, v12);

        sub_2287F6C04(v16);
      }
    }

    else
    {

      sub_228824698(v14);
    }
  }
}

uint64_t MultiDispatcher.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return v0;
}

uint64_t MultiDispatcher.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_228866FF4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v34 = a3;
  v35 = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v33);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  v9 = a2[10];
  os_unfair_lock_lock((v9 + 36));
  if (*(v9 + 24) >= *(v9 + 16) || (*(v9 + 32) & 1) != 0)
  {
    os_unfair_lock_unlock((v9 + 36));
  }

  else
  {
    *(v9 + 32) = 1;
    os_unfair_lock_unlock((v9 + 36));
    v10 = v34;
    v11 = v35;
    v12 = __swift_project_boxed_opaque_existential_1(v33, v34);
    v13 = a2[8];
    v26 = a2[9];
    v27 = v12;
    v14 = swift_allocObject();
    swift_weakInit();
    sub_2287E766C(v33, v29);
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    sub_2287F8A28(v29, v15 + 24);
    v25 = a4[3];
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v17 = sub_22887F7D0();
    v28 = &v24;
    v18 = *(v17 - 8);
    MEMORY[0x28223BE20](v17);
    v20 = &v24 - v19;

    v27 = v11;
    v25(v13, v26, sub_22886740C, v15, v10, v11);

    v21 = *(AssociatedTypeWitness - 8);
    if ((*(v21 + 48))(v20, 1, AssociatedTypeWitness) == 1)
    {
      (*(v18 + 8))(v20, v17);
      v30 = 0u;
      v31 = 0u;
      AssociatedConformanceWitness = 0;
    }

    else
    {
      *(&v31 + 1) = AssociatedTypeWitness;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v22 = __swift_allocate_boxed_opaque_existential_1(&v30);
      (*(v21 + 32))(v22, v20, AssociatedTypeWitness);
    }

    sub_228867418(&v30);
  }

  return __swift_destroy_boxed_opaque_existential_1(v33);
}

uint64_t getEnumTagSinglePayload for MultiDispatcher.State(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for MultiDispatcher.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_228867418(uint64_t a1)
{
  sub_2287F8B44(0, &qword_2813D1198, sub_22881C180, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2288674A4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t NotificationInputSignal.__allocating_init(context:observer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  NotificationInputSignal.init(context:observer:)(a1, a2, a3, a4);
  return v8;
}

uint64_t static InputSignalSet.LookupKey.notification.getter@<X0>(void *a1@<X8>)
{
  if (qword_2813D0140 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_2813D0150;
  v3 = qword_2813D0158;
  v2 = qword_2813D0160;
  *a1 = qword_2813D0148;
  a1[1] = v1;
  a1[2] = v3;
  a1[3] = v2;
}

HealthOrchestration::NotificationInputSignal::Anchor __swiftcall NotificationInputSignal.Anchor.init(notificationTimestamps:)(Swift::OpaquePointer notificationTimestamps)
{
  v3 = v1;

  v3->_rawValue = notificationTimestamps._rawValue;
  return result;
}

uint64_t NotificationInputSignal.Anchor.relevantTimestamps(for:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;

  v4 = sub_228869960(v3, v2);

  return v4;
}

BOOL NotificationInputSignal.Anchor.hasDifference(from:for:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *v2;

  v6 = sub_228869960(v5, v4);

  if (v3)
  {

    v8 = sub_228869960(v7, v4);
  }

  else
  {
    v8 = sub_228808EF0(MEMORY[0x277D84F90]);
  }

  v9 = sub_2288177B8(v6, v8);

  return (v9 & 1) == 0;
}

HealthOrchestration::NotificationInputSignal::Anchor __swiftcall NotificationInputSignal.Anchor.merged(with:)(HealthOrchestration::NotificationInputSignal::Anchor with)
{
  v3 = v2;
  v50 = v1;
  v4 = *with.notificationTimestamps._rawValue;
  v5 = *v3;
  v6 = (*v3 + 64);
  v7 = 1 << *(*v3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *v6;
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v12 = MEMORY[0x277D84F90];
  while (v9)
  {
    v13 = v9;
LABEL_10:
    v9 = (v13 - 1) & v13;
    if (*(v4 + 16))
    {
      v15 = __clz(__rbit64(v13)) | (v11 << 6);
      v16 = (*(v5 + 48) + 16 * v15);
      v17 = *(*(v5 + 56) + 8 * v15);
      v19 = *v16;
      v18 = v16[1];

      v20 = sub_2287E5E2C(v19, v18);
      if (v21)
      {
        v22 = *(v4 + 56);
        if (*(v22 + 8 * v20) < v17)
        {
          v17 = *(v22 + 8 * v20);
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_22882FC1C(0, v12[2] + 1, 1, v12);
        }

        v24 = v12[2];
        v23 = v12[3];
        v25 = v24 + 1;
        if (v24 >= v23 >> 1)
        {
          v27 = sub_22882FC1C((v23 > 1), v24 + 1, 1, v12);
          v25 = v24 + 1;
          v12 = v27;
        }

        v12[2] = v25;
        v26 = &v12[3 * v24];
        *(v26 + 4) = v19;
        *(v26 + 5) = v18;
        v26[6] = v17;
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v14 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      result.notificationTimestamps._rawValue = sub_22887FC20();
      __break(1u);
      return result;
    }

    if (v14 >= v10)
    {
      break;
    }

    v13 = v6[v14];
    ++v11;
    if (v13)
    {
      v11 = v14;
      goto LABEL_10;
    }
  }

  v28 = sub_228808EF0(MEMORY[0x277D84F90]);
  v29 = v12[2];
  if (v29)
  {
    v30 = 0;
    v31 = v12 + 6;
    while (1)
    {
      if (v30 >= v12[2])
      {
        goto LABEL_37;
      }

      v34 = *(v31 - 2);
      v33 = *(v31 - 1);
      v35 = *v31;
      swift_bridgeObjectRetain_n();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = sub_2287E5E2C(v34, v33);
      v39 = v28[2];
      v40 = (v38 & 1) == 0;
      v41 = __OFADD__(v39, v40);
      v42 = v39 + v40;
      if (v41)
      {
        goto LABEL_38;
      }

      v43 = v38;
      if (v28[3] < v42)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_30;
      }

      v48 = v37;
      sub_228852B4C();
      v37 = v48;
      if (v43)
      {
LABEL_22:
        v32 = v37;

        *(v28[7] + 8 * v32) = v35;

        goto LABEL_23;
      }

LABEL_31:
      v28[(v37 >> 6) + 8] |= 1 << v37;
      v45 = (v28[6] + 16 * v37);
      *v45 = v34;
      v45[1] = v33;
      *(v28[7] + 8 * v37) = v35;

      v46 = v28[2];
      v41 = __OFADD__(v46, 1);
      v47 = v46 + 1;
      if (v41)
      {
        goto LABEL_39;
      }

      v28[2] = v47;
LABEL_23:
      ++v30;
      v31 += 3;
      if (v29 == v30)
      {
        goto LABEL_35;
      }
    }

    sub_22884FD90(v42, isUniquelyReferenced_nonNull_native);
    v37 = sub_2287E5E2C(v34, v33);
    if ((v43 & 1) != (v44 & 1))
    {
      goto LABEL_40;
    }

LABEL_30:
    if (v43)
    {
      goto LABEL_22;
    }

    goto LABEL_31;
  }

LABEL_35:

  *v50 = v28;
  return result;
}

uint64_t sub_228867AD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000016 && 0x8000000228889A70 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_22887FBF0();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_228867B64(uint64_t a1)
{
  v2 = sub_228869B20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_228867BA0(uint64_t a1)
{
  v2 = sub_228869B20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NotificationInputSignal.Anchor.encode(to:)(void *a1)
{
  sub_228869B74(0, &qword_27D852960, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_228869B20();

  sub_22887FCF0();
  v10[1] = v8;
  sub_22886A200(0, &qword_27D852970, MEMORY[0x277D837D0], MEMORY[0x277D837E0], MEMORY[0x277D834F8]);
  sub_228869BD8(&qword_27D852978);
  sub_22887FB50();

  return (*(v5 + 8))(v7, v4);
}

uint64_t NotificationInputSignal.Anchor.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_228869B74(0, &qword_27D852980, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_228869B20();
  sub_22887FCE0();
  if (!v2)
  {
    sub_22886A200(0, &qword_27D852970, MEMORY[0x277D837D0], MEMORY[0x277D837E0], MEMORY[0x277D834F8]);
    sub_228869BD8(&qword_27D852988);
    sub_22887FAE0();
    (*(v7 + 8))(v9, v6);
    *a2 = v11[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t _s19HealthOrchestration23NotificationInputSignalC10identifierAA0dE10IdentifierVvg_0@<X0>(void *a1@<X8>)
{
  if (qword_2813D0140 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_2813D0150;
  v3 = qword_2813D0158;
  v2 = qword_2813D0160;
  *a1 = qword_2813D0148;
  a1[1] = v1;
  a1[2] = v3;
  a1[3] = v2;
}

uint64_t NotificationInputSignal.Configuration.notifications.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t NotificationInputSignal.Configuration.hashValue.getter()
{
  v1 = *v0;
  sub_22887FC90();
  sub_22881A5E0(v3, v1);
  return sub_22887FCD0();
}

uint64_t sub_228868134()
{
  v1 = *v0;
  sub_22887FC90();
  sub_22881A5E0(v3, v1);
  return sub_22887FCD0();
}

uint64_t sub_228868184()
{
  v1 = *v0;
  sub_22887FC90();
  sub_22881A5E0(v3, v1);
  return sub_22887FCD0();
}

void sub_2288681C8()
{
  qword_2813D0148 = 0xD000000000000017;
  unk_2813D0150 = 0x8000000228887280;
  qword_2813D0158 = 0;
  qword_2813D0160 = 0;
}

uint64_t sub_228868220(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  aBlock[6] = *MEMORY[0x277D85DE8];
  v6 = sub_22887F180();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + 40);
  ObjectType = swift_getObjectType();
  (*(v10 + 40))(ObjectType, v10);

  v12 = sub_22887F160();
  v13 = sub_22887F6B0();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    aBlock[0] = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_2287E64D8(a1, a2, aBlock);
    _os_log_impl(&dword_2287E4000, v12, v13, "Beginning observation for %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x22AAC1440](v15, -1, -1);
    MEMORY[0x22AAC1440](v14, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  HIDWORD(v22) = -1;
  v16 = *(v3 + 56);
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = a1;
  v18[4] = a2;
  aBlock[4] = sub_22886A1D4;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2288674A4;
  aBlock[3] = &block_descriptor_12;
  v19 = _Block_copy(aBlock);

  v20 = sub_22887F3C0();
  notify_register_dispatch((v20 + 32), &v22 + 1, v16, v19);

  _Block_release(v19);
  return HIDWORD(v22);
}

uint64_t sub_22886851C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = sub_22887F180();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    Current = CFAbsoluteTimeGetCurrent();
    v13 = v11[6];
    v15 = MEMORY[0x28223BE20](v14);
    v31[-4] = a3;
    v31[-3] = a4;
    *&v31[-2] = v15;

    os_unfair_lock_lock(v13 + 8);
    sub_22886A1E0(&v13[4], &v32);
    os_unfair_lock_unlock(v13 + 8);

    v16 = v32;
    v17 = v11[5];
    ObjectType = swift_getObjectType();
    (*(v17 + 40))(ObjectType, v17);

    v19 = sub_22887F160();
    v20 = sub_22887F6B0();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23 = a3;
      v24 = v22;
      v32 = v22;
      *v21 = 136315394;
      *(v21 + 4) = sub_2287E64D8(v23, a4, &v32);
      *(v21 + 12) = 2048;
      *(v21 + 14) = Current;
      _os_log_impl(&dword_2287E4000, v19, v20, "Received notification %s at %f", v21, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x22AAC1440](v24, -1, -1);
      MEMORY[0x22AAC1440](v21, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
    v25 = v11[3];
    v26 = swift_getObjectType();
    v32 = v16;
    v31[0] = v11;
    v27 = *(v25 + 8);
    v28 = type metadata accessor for NotificationInputSignal();
    v30 = sub_22886A018(&qword_2813D0130, v29, type metadata accessor for NotificationInputSignal);
    v27(&v32, v31, v28, v30, v26, v25);
  }

  return result;
}

uint64_t sub_228868828@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>, double a5@<D0>)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(a1 + 8);
  *(a1 + 8) = 0x8000000000000000;
  sub_228849898(a2, a3, isUniquelyReferenced_nonNull_native, a5);

  *(a1 + 8) = v12;
  *a4 = v12;
}

Swift::Void __swiftcall NotificationInputSignal.beginObservation(from:configurations:)(HealthOrchestration::NotificationInputSignal::Anchor_optional from, Swift::OpaquePointer configurations)
{
  v3 = v2;
  v4 = *&from.is_nil;
  v5 = *v3;
  v6 = v3[6];
  os_unfair_lock_lock((v6 + 32));
  sub_228868CF0((v6 + 16));
  os_unfair_lock_unlock((v6 + 32));
  v18[0] = MEMORY[0x277D84FA0];
  v8 = *(v4 + 16);
  if (v8)
  {
    v9 = v4 + 32;
    do
    {
      v9 += 8;

      v7 = sub_228859938(v10);
      --v8;
    }

    while (v8);
  }

  MEMORY[0x28223BE20](v7);
  os_unfair_lock_lock((v6 + 32));
  sub_228869C68((v6 + 16), v18);
  os_unfair_lock_unlock((v6 + 32));

  v11 = v18[0];
  v12 = v3[3];
  ObjectType = swift_getObjectType();
  v17 = v3;
  v18[0] = v11;
  v14 = *(v12 + 8);
  v16 = sub_22886A018(&qword_2813D0130, v15, type metadata accessor for NotificationInputSignal);
  v14(v18, &v17, v5, v16, ObjectType, v12);
}

Swift::Void __swiftcall NotificationInputSignal.stopObservation()()
{
  v1 = *(v0 + 48);
  os_unfair_lock_lock((v1 + 32));
  sub_228868CF0((v1 + 16));

  os_unfair_lock_unlock((v1 + 32));
}

uint64_t sub_228868AB8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = a2 + 56;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 56);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  v31 = v4;
  v32 = a1;
  while (v7)
  {
LABEL_11:
    v12 = (*(a2 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v7)))));
    v14 = *v12;
    v13 = v12[1];

    v34 = sub_228868220(v14, v13);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *a1;
    v35 = *a1;
    v18 = sub_2287E5E2C(v14, v13);
    v19 = *(v16 + 16);
    v20 = (v17 & 1) == 0;
    v21 = v19 + v20;
    if (__OFADD__(v19, v20))
    {
      goto LABEL_24;
    }

    v22 = v17;
    if (*(v16 + 24) >= v21)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v17)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_2288540E8();
        if (v22)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_2288524A8(v21, isUniquelyReferenced_nonNull_native);
      v23 = sub_2287E5E2C(v14, v13);
      if ((v22 & 1) != (v24 & 1))
      {
        goto LABEL_26;
      }

      v18 = v23;
      if (v22)
      {
LABEL_4:

        v10 = v35;
        *(v35[7] + 4 * v18) = v34;
        goto LABEL_5;
      }
    }

    v10 = v35;
    v35[(v18 >> 6) + 8] |= 1 << v18;
    v25 = (v35[6] + 16 * v18);
    *v25 = v14;
    v25[1] = v13;
    *(v35[7] + 4 * v18) = v34;
    v26 = v35[2];
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      goto LABEL_25;
    }

    v35[2] = v28;
LABEL_5:
    v7 &= v7 - 1;
    v4 = v31;
    a1 = v32;
    *v32 = v10;
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      *a3 = a1[1];
    }

    v7 = *(v4 + 8 * v11);
    ++v9;
    if (v7)
    {
      v9 = v11;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_22887FC20();
  __break(1u);
  return result;
}

uint64_t sub_228868CF0(unint64_t *a1)
{
  v2 = *a1;
  v3 = *a1 + 64;
  v4 = 1 << *(*a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(*a1 + 64);
  v7 = (v4 + 63) >> 6;

  for (i = 0; v6; result = notify_cancel(*(*(v2 + 56) + ((v10 << 8) | (4 * v11)))))
  {
    v10 = i;
LABEL_9:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      v12 = sub_228809420(MEMORY[0x277D84F90]);

      *a1 = v12;
      return result;
    }

    v6 = *(v3 + 8 * v10);
    ++i;
    if (v6)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void *NotificationInputSignal.init(context:observer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a3;
  v21 = a4;
  v18 = a1;
  v19 = a2;
  v17 = sub_22887F6F0();
  v5 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22887F6E0();
  MEMORY[0x28223BE20](v8);
  v9 = sub_22887F270();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = MEMORY[0x277D84F90];
  v11 = sub_228809420(MEMORY[0x277D84F90]);
  v12 = MEMORY[0x277D84F98];

  sub_228869CA8();
  v13 = swift_allocObject();
  *(v13 + 32) = 0;
  *(v13 + 16) = v11;
  *(v13 + 24) = v12;
  v4[6] = v13;
  sub_22880AA7C();
  sub_22887F260();
  v22 = v10;
  sub_22886A018(&qword_2813CF510, 255, MEMORY[0x277D85230]);
  sub_22885C16C();
  sub_22886A018(&qword_2813CF580, 255, sub_22885C16C);
  sub_22887F820();
  (*(v5 + 104))(v7, *MEMORY[0x277D85260], v17);
  v4[7] = sub_22887F710();
  v14 = v19;
  v4[4] = v18;
  v4[5] = v14;
  v15 = v21;
  v4[2] = v20;
  v4[3] = v15;
  return v4;
}

uint64_t NotificationInputSignal.deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t NotificationInputSignal.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_228869158()
{
  v1 = *(*v0 + 48);
  os_unfair_lock_lock((v1 + 32));
  sub_228868CF0((v1 + 16));

  os_unfair_lock_unlock((v1 + 32));
}

uint64_t sub_2288691B4()
{
  if (qword_2813D0140 != -1)
  {
    swift_once();
  }

  if (qword_2813D0160)
  {
    v0 = qword_2813D0158;
  }

  else
  {
    v0 = qword_2813D0148;
  }

  return v0;
}

void *sub_228869240(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_228869760(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t sub_2288692DC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_22886A200(0, &qword_27D8526B0, MEMORY[0x277D849A8], MEMORY[0x277D849B8], MEMORY[0x277D84460]);
  result = sub_22887FA50();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 4 * v16);
    v18 = *(*(v4 + 56) + 8 * v16);
    result = MEMORY[0x22AAC0BB0](*(v9 + 40), v17, 4);
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v9 + 48) + 4 * v22) = v17;
    *(*(v9 + 56) + 8 * v22) = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_228869504(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_22886A200(0, &qword_27D851A60, MEMORY[0x277D837D0], MEMORY[0x277D837E0], MEMORY[0x277D84460]);
  result = sub_22887FA50();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    sub_22887FC90();

    sub_22887F3E0();
    result = sub_22887FCD0();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    *(*(v9 + 56) + 8 * v25) = v21;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_228869760(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = result;
  v27 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  v29 = a4 + 56;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_13:
    if (*(a4 + 16))
    {
      v26 = v11 | (v5 << 6);
      v14 = (*(a3 + 48) + 16 * v26);
      v16 = *v14;
      v15 = v14[1];
      sub_22887FC90();

      sub_22887F3E0();
      v17 = sub_22887FCD0();
      v18 = -1 << *(a4 + 32);
      v19 = v17 & ~v18;
      if ((*(v29 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
      {
        v20 = ~v18;
        while (1)
        {
          v21 = (*(a4 + 48) + 16 * v19);
          v22 = *v21 == v16 && v21[1] == v15;
          if (v22 || (sub_22887FBF0() & 1) != 0)
          {
            break;
          }

          v19 = (v19 + 1) & v20;
          if (((*(v29 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
        if (__OFADD__(v27++, 1))
        {
          __break(1u);
          return sub_228869504(v25, a2, v27, a3);
        }
      }

      else
      {
LABEL_5:
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      return sub_228869504(v25, a2, v27, a3);
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_228869960(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();

      v10 = sub_228869240(v12, v7, a1, a2);
      MEMORY[0x22AAC1440](v12, -1, -1);
      swift_bridgeObjectRelease_n();
      return v10;
    }
  }

  MEMORY[0x28223BE20](v9);
  bzero(v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  v10 = sub_228869760(v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v7, a1, a2);

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v10;
}

unint64_t sub_228869B20()
{
  result = qword_27D852968;
  if (!qword_27D852968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D852968);
  }

  return result;
}

void sub_228869B74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_228869B20();
    v7 = a3(a1, &type metadata for NotificationInputSignal.Anchor.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_228869BD8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_22886A200(255, &qword_27D852970, MEMORY[0x277D837D0], MEMORY[0x277D837E0], MEMORY[0x277D834F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_228869CA8()
{
  if (!qword_2813CF438)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_22887F910();
    if (!v1)
    {
      atomic_store(v0, &qword_2813CF438);
    }
  }
}

unint64_t sub_228869D0C()
{
  result = qword_27D852990;
  if (!qword_27D852990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D852990);
  }

  return result;
}

unint64_t sub_228869D60(void *a1)
{
  a1[1] = sub_228869D98();
  a1[2] = sub_228869DEC();
  result = sub_228869E40();
  a1[3] = result;
  return result;
}

unint64_t sub_228869D98()
{
  result = qword_27D852998;
  if (!qword_27D852998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D852998);
  }

  return result;
}

unint64_t sub_228869DEC()
{
  result = qword_27D8529A0;
  if (!qword_27D8529A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8529A0);
  }

  return result;
}

unint64_t sub_228869E40()
{
  result = qword_27D8529A8;
  if (!qword_27D8529A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8529A8);
  }

  return result;
}

unint64_t sub_228869E94(uint64_t a1)
{
  result = sub_228869EBC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_228869EBC()
{
  result = qword_27D8529B0;
  if (!qword_27D8529B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8529B0);
  }

  return result;
}

unint64_t sub_228869F14()
{
  result = qword_27D8529B8;
  if (!qword_27D8529B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8529B8);
  }

  return result;
}

unint64_t sub_228869F6C()
{
  result = qword_27D8529C0;
  if (!qword_27D8529C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8529C0);
  }

  return result;
}

uint64_t sub_228869FC0(uint64_t a1, uint64_t a2)
{
  result = sub_22886A018(&qword_2813D0138, a2, type metadata accessor for NotificationInputSignal);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22886A018(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_22886A0D0()
{
  result = qword_27D8529C8;
  if (!qword_27D8529C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8529C8);
  }

  return result;
}

unint64_t sub_22886A128()
{
  result = qword_27D8529D0;
  if (!qword_27D8529D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8529D0);
  }

  return result;
}

unint64_t sub_22886A180()
{
  result = qword_27D8529D8[0];
  if (!qword_27D8529D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D8529D8);
  }

  return result;
}

void sub_22886A200(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, void))
{
  if (!*a2)
  {
    v6 = a5(0, a3, MEMORY[0x277D839F8]);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t MultiChannelDispatcher.__allocating_init(target:width:channel:filter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  MultiChannelDispatcher.init(target:width:channel:filter:)(a1, a2, a3, a4, a5, a6);
  return v12;
}

void *MultiChannelDispatcher.init(target:width:channel:filter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v36 = a6;
  v37 = a4;
  v34 = a5;
  v35 = a3;
  v33 = a2;
  v28 = a1;
  v9 = *v6;
  v10 = sub_22887F6F0();
  v31 = *(v10 - 8);
  v32 = v10;
  MEMORY[0x28223BE20](v10);
  v30 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22887F6E0();
  v27[2] = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v29 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22887F270();
  MEMORY[0x28223BE20](v14 - 8);
  swift_defaultActor_initialize();
  v6[20] = nullsub_1;
  v6[21] = 0;
  v15 = *(v9 + 80);
  v16 = MEMORY[0x277D83B88];
  swift_getTupleTypeMetadata2();
  v17 = sub_22887F4F0();
  v18 = sub_22886CA7C(v17, v15, v16, *(v9 + 88));

  v6[22] = v18;
  sub_2287E766C(a1, (v6 + 14));
  v19 = sub_22880AA7C();
  v27[0] = "ispatchTarget";
  v27[1] = v19;
  sub_22887F260();
  v20 = MEMORY[0x277D85230];
  sub_2287F8BA8(0, &qword_2813CF1D0, MEMORY[0x277D85230], MEMORY[0x277D84560]);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_2288817D0;
  sub_22887F6D0();
  v38 = v21;
  sub_2287E710C(&qword_2813CF510, MEMORY[0x277D85230]);
  sub_2287F8BA8(0, &qword_2813CF590, v20, MEMORY[0x277D83940]);
  sub_2287F8AE0(&qword_2813CF580, &qword_2813CF590, v20);
  sub_22887F820();
  (*(v31 + 104))(v30, *MEMORY[0x277D85260], v32);
  v6[19] = sub_22887F710();
  v38 = v33;
  v22 = type metadata accessor for MultiChannelDispatcher.UnisolatedState();
  v23 = sub_228870A40(&v38, v22);
  __swift_destroy_boxed_opaque_existential_1(v28);
  v24 = v35;
  v25 = v36;
  v7[23] = v34;
  v7[24] = v25;
  v7[25] = v24;
  v7[26] = v37;
  v7[27] = v23;
  return v7;
}

uint64_t MultiChannelDispatcher.width.getter()
{
  v1 = *v0;
  v2 = v0[27];
  v4[2] = *(*v0 + 80);
  v4[3] = *(v1 + 88);
  type metadata accessor for MultiChannelDispatcher.UnisolatedState();
  sub_228822674(sub_22886D4EC, v4, v2);
  return v4[5];
}

void MultiChannelDispatcher.width.setter(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[27];
  v4[2] = *(*v1 + 80);
  v4[3] = *(v2 + 88);
  v4[4] = a1;
  type metadata accessor for MultiChannelDispatcher.UnisolatedState();
  sub_228822674(sub_22886CD80, v4, v3);
}

void (*MultiChannelDispatcher.width.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = MultiChannelDispatcher.width.getter();
  return sub_22886A898;
}

uint64_t MultiChannelDispatcher.start<A>(source:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v4;
  v9 = *(a2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287F8BA8(0, &qword_2813CF558, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v20 - v13;
  v15 = sub_22887F5B0();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v16 = swift_allocObject();
  swift_weakInit();
  (*(v9 + 16))(v11, a1, a2);
  v17 = (*(v9 + 80) + 72) & ~*(v9 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = 0;
  *(v18 + 3) = 0;
  *(v18 + 4) = *(v8 + 80);
  *(v18 + 5) = a2;
  *(v18 + 6) = *(v8 + 88);
  *(v18 + 7) = a3;
  *(v18 + 8) = v16;
  (*(v9 + 32))(&v18[v17], v11, a2);
  sub_22881F930(0, 0, v14, &unk_228887458, v18);
}

uint64_t sub_22886AB14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a7;
  v7[8] = v9;
  v7[5] = a4;
  v7[6] = a5;
  return MEMORY[0x2822009F8](sub_22886AB40, 0, 0);
}

uint64_t sub_22886AB40()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v0[9] = Strong;
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_22886AC34;
    v3 = v0[7];
    v4 = v0[8];
    v5 = v0[6];

    return sub_22886AE18(v5, v3, v4);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_22886AC34()
{

  return MEMORY[0x2822009F8](sub_22886AD30, 0, 0);
}

uint64_t sub_22886AD30()
{

  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v0[9] = Strong;
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_22886AC34;
    v3 = v0[7];
    v4 = v0[8];
    v5 = v0[6];

    return sub_22886AE18(v5, v3, v4);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_22886AE18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[46] = a3;
  v4[47] = v3;
  v4[44] = a1;
  v4[45] = a2;
  v5 = *v3;
  v4[48] = *v3;
  v6 = *(v5 + 80);
  v4[49] = v6;
  v4[50] = *(v6 - 8);
  v4[51] = swift_task_alloc();
  v4[52] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22886AF20, v3, 0);
}

uint64_t sub_22886AF20()
{
  v1 = v0[48];
  v2 = v0[49];
  v4 = v0[46];
  v3 = v0[47];
  v5 = v0[45];
  v6 = v3[20];

  v6(v7);

  swift_beginAccess();
  v8 = swift_task_alloc();
  v8[2] = v5;
  v8[3] = v4;
  v9 = v4;
  v24 = v4;
  v8[4] = v3;
  v10 = *(v1 + 88);
  v0[53] = v10;

  v11 = sub_22887F310();

  v0[42] = v11;
  v12 = swift_task_alloc();
  v12[2] = v2;
  v12[3] = v5;
  v12[4] = v10;
  v12[5] = v9;
  v13 = sub_22887F320();
  WitnessTable = swift_getWitnessTable();
  v16 = sub_22880FAA4(sub_22886CFD8, v12, v13, v2, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v15);

  v17 = v3[25];
  v0[54] = v17;
  v18 = v3[26];
  v0[55] = v18;
  v19 = swift_allocObject();
  v19[2] = v5;
  v19[3] = v24;
  v19[4] = v3;
  v19[5] = v17;
  v19[6] = v18;
  v19[7] = v16;

  v20 = WorkSource.nextWorkItem(filter:)(sub_22886CFFC, v19, v5, v24);
  v0[56] = v20;

  v21 = swift_allocObject();
  v21[2] = v2;
  v21[3] = v10;
  v21[4] = v20;
  v3[20] = sub_22886D00C;
  v3[21] = v21;

  v22 = swift_task_alloc();
  v0[57] = v22;
  *v22 = v0;
  v22[1] = sub_22886B1EC;

  return WorkFetch.workItem.getter((v0 + 19));
}

uint64_t sub_22886B1EC()
{
  v1 = *(*v0 + 376);

  return MEMORY[0x2822009F8](sub_22886B2FC, v1, 0);
}

uint64_t sub_22886B2FC()
{
  if (*(v0 + 152))
  {
    v1 = *(v0 + 432);
    v3 = *(v0 + 416);
    v2 = *(v0 + 424);
    v4 = *(v0 + 392);
    v5 = *(v0 + 376);
    v6 = *(v0 + 264);
    *(v0 + 112) = *(v0 + 248);
    *(v0 + 128) = v6;
    *(v0 + 144) = *(v0 + 280);
    v7 = *(v0 + 200);
    *(v0 + 48) = *(v0 + 184);
    *(v0 + 64) = v7;
    v8 = *(v0 + 232);
    *(v0 + 80) = *(v0 + 216);
    *(v0 + 96) = v8;
    v9 = *(v0 + 168);
    *(v0 + 16) = *(v0 + 152);
    *(v0 + 32) = v9;
    v1(v0 + 16);
    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v5 + 176);
    *(v5 + 176) = 0x8000000000000000;
    result = sub_22886C898(v3, v4, v2);
    if (__OFADD__(*(v10 + 16), (v12 & 1) == 0))
    {
      __break(1u);
    }

    else
    {
      v13 = result;
      v14 = v12;
      sub_22887FA00();
      result = sub_22887F9E0();
      if (result)
      {
        result = sub_22886C898(*(v0 + 416), *(v0 + 392), *(v0 + 424));
        if ((v14 & 1) != (v15 & 1))
        {

          return sub_22887FC20();
        }

        v13 = result;
      }

      *(*(v0 + 376) + 176) = v10;
      if ((v14 & 1) == 0)
      {
        v16 = *(v0 + 416);
        v17 = *(v0 + 400);
        v18 = *(v0 + 408);
        v19 = *(v0 + 392);
        *(v0 + 344) = 0;
        (*(v17 + 16))(v18, v16, v19);
        result = sub_22887F9F0();
      }

      v20 = *(v10 + 56);
      v21 = *(v20 + 8 * v13);
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (!v22)
      {
        v24 = *(v0 + 416);
        v25 = *(v0 + 400);
        v31 = *(v0 + 392);
        v26 = *(v0 + 368);
        v27 = v13;
        v28 = *(v0 + 352);
        v29 = *(v0 + 360);
        *(v20 + 8 * v27) = v23;
        swift_endAccess();
        sub_22886BA98(v0 + 16, v24, v28, v29, v26);

        (*(v25 + 8))(v24, v31);
        sub_2287F6C04(v0 + 16);
        goto LABEL_14;
      }
    }

    __break(1u);
    return result;
  }

  sub_228824698(v0 + 152);
LABEL_14:

  v30 = *(v0 + 8);

  return v30();
}

BOOL sub_22886B5AC(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v23 = a5;
  v22 = a4;
  v8 = *a3;
  v9 = *(*a3 + 80);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = *(TupleTypeMetadata2 - 8);
  v12 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v14 = &v21 - v13;
  v15 = *a2;
  (*(*(v9 - 8) + 16))(&v21 - v13, a1, v9, v12);
  *&v14[*(TupleTypeMetadata2 + 48)] = v15;
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v17 = a3[27];
  MEMORY[0x28223BE20](isCurrentExecutor);
  v19 = v22;
  v18 = v23;
  *(&v21 - 4) = v9;
  *(&v21 - 3) = v19;
  *(&v21 - 2) = *(v8 + 88);
  *(&v21 - 1) = v18;
  type metadata accessor for MultiChannelDispatcher.UnisolatedState();
  sub_228822674(sub_22884598C, (&v21 - 6), v17);
  (*(v11 + 8))(v14, TupleTypeMetadata2);
  return v15 >= v24;
}

uint64_t sub_22886B7E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v9 = v12 - v8;
  (*(v10 + 16))(v12 - v8, a1, v7);
  return (*(*(a2 - 8) + 32))(a3, v9, a2);
}

uint64_t sub_22886B900(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v8 = *(*a2 + 80);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = v17 - v11;
  if ((*(v13 + 184))(v10))
  {
    a3(a1);
    v17[1] = a5;
    sub_22887F550();
    swift_getWitnessTable();
    v14 = sub_22887F480();
    (*(v9 + 8))(v12, v8);
    v15 = v14 ^ 1;
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_22886BA98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v39 = a5;
  v37 = a2;
  v36 = a1;
  v35 = *v5;
  v8 = v35;
  v43 = sub_22887F240();
  v45 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v41 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_22887F270();
  v42 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v38 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a4 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v13);
  v14 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v8 + 80);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v18);
  v20 = &v35 - v19;
  v40 = v5[19];
  sub_2287F5EE4(v36, v48);
  (*(v16 + 16))(v20, v37, v15);
  (*(v11 + 16))(v14, a3, a4);
  v21 = (*(v16 + 80) + 192) & ~*(v16 + 80);
  v22 = (v17 + *(v11 + 80) + v21) & ~*(v11 + 80);
  v23 = swift_allocObject();
  v24 = v35;
  *(v23 + 16) = v15;
  *(v23 + 24) = a4;
  v25 = *(v24 + 88);
  v26 = v48[6];
  *(v23 + 136) = v48[5];
  *(v23 + 152) = v26;
  *(v23 + 168) = v48[7];
  v27 = v48[0];
  *(v23 + 72) = v48[1];
  v28 = v48[3];
  *(v23 + 88) = v48[2];
  *(v23 + 104) = v28;
  *(v23 + 120) = v48[4];
  *(v23 + 32) = v25;
  *(v23 + 40) = v39;
  *(v23 + 48) = v5;
  *(v23 + 184) = v49;
  *(v23 + 56) = v27;
  (*(v16 + 32))(v23 + v21, v20, v15);
  (*(v11 + 32))(v23 + v22, v14, a4);
  aBlock[4] = sub_22886D030;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2287E72C0;
  aBlock[3] = &block_descriptor_13;
  v29 = _Block_copy(aBlock);

  v30 = v38;
  sub_22887F260();
  v46 = MEMORY[0x277D84F90];
  sub_2287E710C(qword_2813CF680, MEMORY[0x277D85198]);
  v31 = MEMORY[0x277D85198];
  sub_2287F8BA8(0, &qword_2813CF5C8, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_2287F8AE0(qword_2813CF5B0, &qword_2813CF5C8, v31);
  v32 = v41;
  v33 = v43;
  sub_22887F820();
  MEMORY[0x22AAC0630](0, v30, v32, v29);
  _Block_release(v29);
  (*(v45 + 8))(v32, v33);
  (*(v42 + 8))(v30, v44);
}

uint64_t sub_22886C004(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v44 = a6;
  v39 = a4;
  v37 = a3;
  v38 = *a1;
  v9 = *(a5 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1);
  v36 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 + 80);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v15);
  v17 = &v35 - v16;
  v48 = v18[17];
  v43 = v18[18];
  v47 = __swift_project_boxed_opaque_existential_1(v18 + 14, v48);
  v19 = a2[2];
  v41 = a2[3];
  v20 = a2[4];
  v42 = a2[5];
  v21 = a2[6];
  v40 = a2[7];
  v51[0] = v19;
  v51[1] = v41;
  v51[2] = v20;
  v51[3] = v42;
  v51[4] = v21;
  v51[5] = v40;
  v22 = a2[1];
  v46 = *a2;
  v45 = v22;
  sub_2287F5EE4(a2, v49);
  (*(v13 + 16))(v17, v37, v12);
  (*(v9 + 16))(&v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v39, a5);
  v23 = (*(v13 + 80) + 192) & ~*(v13 + 80);
  v24 = (v14 + *(v9 + 80) + v23) & ~*(v9 + 80);
  v25 = swift_allocObject();
  v26 = v38;
  *(v25 + 16) = v12;
  *(v25 + 24) = a5;
  *(v25 + 32) = *(v26 + 88);
  *(v25 + 40) = v44;
  v27 = v49[7];
  *(v25 + 144) = v49[6];
  *(v25 + 160) = v27;
  v28 = v50;
  v29 = v49[3];
  *(v25 + 80) = v49[2];
  *(v25 + 96) = v29;
  v30 = v49[5];
  *(v25 + 112) = v49[4];
  *(v25 + 128) = v30;
  v31 = v49[1];
  *(v25 + 48) = v49[0];
  *(v25 + 64) = v31;
  *(v25 + 176) = v28;
  *(v25 + 184) = a1;
  (*(v13 + 32))(v25 + v23, v17, v12);
  (*(v9 + 32))(v25 + v24, v36, a5);
  v32 = v43;
  v33 = *(v43 + 8);

  v33(a2 + 8, v51, v46, v45, sub_22886D0C4, v25, v48, v32);
}

uint64_t sub_22886C3B0(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v39 = a5;
  v37 = a4;
  v40 = *a3;
  v41 = a7;
  v42 = a6;
  v35 = *(a6 - 8);
  MEMORY[0x28223BE20](a1);
  v38 = v9;
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v11;
  v13 = *(v12 + 80);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v16);
  v18 = &v33 - v17;
  sub_2287F8BA8(0, &qword_2813CF558, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v33 - v20;
  v22 = *(a2 + 120);
  if (a1)
  {
    v43[0] = a1;
    v44 = 1;
    v23 = a1;
  }

  else
  {
    sub_2287E766C(a2 + 64, v43);
    v44 = 0;
  }

  v22(a2, v43);
  sub_2287FE448(v43);
  v24 = sub_22887F5B0();
  v25 = *(*(v24 - 8) + 56);
  v34 = v21;
  v25(v21, 1, 1, v24);
  (*(v14 + 16))(v18, v37, v13);
  v26 = v35;
  v27 = v42;
  (*(v35 + 16))(v10, v39, v42);
  v28 = (*(v14 + 80) + 72) & ~*(v14 + 80);
  v29 = (v15 + *(v26 + 80) + v28) & ~*(v26 + 80);
  v30 = swift_allocObject();
  *(v30 + 2) = 0;
  *(v30 + 3) = 0;
  *(v30 + 4) = v13;
  *(v30 + 5) = v27;
  v31 = v41;
  *(v30 + 6) = *(v40 + 88);
  *(v30 + 7) = v31;
  *(v30 + 8) = v36;
  (*(v14 + 32))(&v30[v28], v18, v13);
  (*(v26 + 32))(&v30[v29], v10, v27);

  sub_22881F930(0, 0, v34, &unk_228887590, v30);
}

uint64_t sub_22886C740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[4] = a7;
  v8[5] = a8;
  v8[2] = a4;
  v8[3] = a5;
  return MEMORY[0x2822009F8](sub_22886C764, a4, 0);
}

uint64_t sub_22886C764()
{
  sub_22886D2BC(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t MultiChannelDispatcher.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 112);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t MultiChannelDispatcher.__deallocating_deinit()
{
  MultiChannelDispatcher.deinit();

  return MEMORY[0x282200960](v0);
}

unint64_t sub_22886C898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22887F330();

  return sub_22886C8F4(a1, v6, a2, a3);
}

unint64_t sub_22886C8F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[1] = a1;
  v22[2] = a4;
  v7.n128_f64[0] = MEMORY[0x28223BE20](a1);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v22[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v6 + 16);
    v14 = v6 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v23 + 48) + v17 * v12, a3, v7);
      v20 = sub_22887F360();
      (*v18)(v9, a3);
      if (v20)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v22[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

uint64_t sub_22886CA7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_22887F530())
  {
    sub_22887FA60();
    v13 = sub_22887FA50();
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  result = sub_22887F530();
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
        if (sub_22887F510())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_22887F8B0();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_22886C898(v12, a2, v27);
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

uint64_t sub_22886CD8C(uint64_t a1)
{
  v4 = v1[5];
  v12 = v1[4];
  v5 = (*(*(v4 - 8) + 80) + 72) & ~*(*(v4 - 8) + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[8];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_228820078;

  return sub_22886AB14(a1, v6, v7, v8, v1 + v5, v12, v4);
}

uint64_t sub_22886CF78()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_22886D15C(uint64_t a1)
{
  v3 = v2;
  v5 = v1[5];
  v6 = v1[7];
  v7 = v1[8];
  v8 = (*(*(v1[4] - 8) + 80) + 72) & ~*(*(v1[4] - 8) + 80);
  v9 = (v8 + *(*(v1[4] - 8) + 64) + *(*(v5 - 8) + 80)) & ~*(*(v5 - 8) + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_22881F83C;

  return sub_22886C740(a1, v10, v11, v7, v1 + v8, v1 + v9, v5, v6);
}

uint64_t sub_22886D2BC(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*v1 + 80);
  v26 = *(v5 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v25 - v6;
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v8 = v1[22];
  v27 = v8;
  v2[22] = 0x8000000000000000;
  v9 = *(v4 + 88);
  v10 = sub_22886C898(a1, v5, v9);
  if (__OFADD__(*(v8 + 16), (v11 & 1) == 0))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v12 = v10;
  v13 = v11;
  sub_22887FA00();
  v14 = sub_22887F9E0();
  v15 = v27;
  if ((v14 & 1) == 0)
  {
LABEL_5:
    v2[22] = v15;
    if ((v13 & 1) == 0)
    {
      v27 = 0;
      (*(v26 + 16))(v7, a1, v5);
      sub_22887F9F0();
    }

    v18 = *(v15 + 56);
    v19 = *(v18 + 8 * v12);
    v20 = __OFSUB__(v19, 1);
    v21 = v19 - 1;
    if (!v20)
    {
      *(v18 + 8 * v12) = v21;
      swift_endAccess();
      v22 = v2[20];

      v22(v23);
    }

    goto LABEL_10;
  }

  v16 = sub_22886C898(a1, v5, v9);
  if ((v13 & 1) == (v17 & 1))
  {
    v12 = v16;
    goto LABEL_5;
  }

LABEL_11:
  result = sub_22887FC20();
  __break(1u);
  return result;
}

uint64_t InputSignalAnchorSet.updated(from:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = v2;
  sub_2287F100C(v3, sub_2287EC4C0, 0, isUniquelyReferenced_nonNull_native, &v7);

  v5 = v7;
  result = swift_allocObject();
  *(result + 16) = v5;
  return result;
}

uint64_t InputSignalAnchorSet.__allocating_init(signalAnchors:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

{
  swift_allocObject();
  v2 = sub_22886F6CC(a1);

  return v2;
}

uint64_t InputSignalAnchorSet.updated(anchor:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return sub_2287F34E8(v4, v1, v2, v3);
}

uint64_t InputSignalAnchorSet.merged(with:)(uint64_t a1)
{
  v49 = a1;
  v46 = *v1;
  v2 = v1[2];
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v6 = 1 << *(v1[2] + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v3;
  v9 = (v6 + 63) >> 6;
  v50 = v1[2];

  v11 = 0;
  v47 = MEMORY[0x277D84F90];
  v48 = v4;
  while (1)
  {
    v12 = v11;
    if (!v8)
    {
      break;
    }

LABEL_8:
    v13 = __clz(__rbit64(v8)) | (v11 << 6);
    v14 = (*(v50 + 48) + 32 * v13);
    v16 = *v14;
    v15 = v14[1];
    v17 = v14[2];
    v18 = v14[3];
    sub_2287E766C(*(v50 + 56) + 40 * v13, v66);
    v65[0] = v16;
    v65[1] = v15;
    v65[2] = v17;
    v65[3] = v18;
    v19 = *(v49 + 16);
    v20 = *(v19 + 16);

    if (v20 && (v21 = sub_2287E6768(v16, v15, v17, v18), (v22 & 1) != 0))
    {
      sub_2287E766C(*(v19 + 56) + 40 * v21, &v57);
      sub_2287EC014(&v57, &v52);
      *&v60 = v16;
      *(&v60 + 1) = v15;
      *&v61 = v17;
      *(&v61 + 1) = v18;
      v23 = v67;
      v24 = v68;
      __swift_project_boxed_opaque_existential_1(v66, v67);
      *(&v63 + 1) = v23;
      v64 = v24;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v62);

      sub_228805888(&v52, v23, v24, boxed_opaque_existential_1);
      __swift_destroy_boxed_opaque_existential_1(&v52);
    }

    else
    {
      v60 = 0u;
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      v64 = 0;
    }

    v8 &= v8 - 1;
    sub_2287F12AC(v65, sub_2287EC514);
    v4 = v48;
    if (*(&v60 + 1))
    {
      v54 = v62;
      v55 = v63;
      v56 = v64;
      v52 = v60;
      v53 = v61;
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v26 = v47;
      }

      else
      {
        result = sub_22883086C(0, v47[2] + 1, 1, v47);
        v26 = result;
      }

      v28 = v26[2];
      v27 = v26[3];
      if (v28 >= v27 >> 1)
      {
        result = sub_22883086C((v27 > 1), v28 + 1, 1, v26);
        v26 = result;
      }

      v26[2] = v28 + 1;
      v47 = v26;
      v29 = &v26[9 * v28];
      *(v29 + 2) = v52;
      v30 = v53;
      v31 = v54;
      v32 = v55;
      v29[12] = v56;
      *(v29 + 4) = v31;
      *(v29 + 5) = v32;
      *(v29 + 3) = v30;
    }

    else
    {
      result = sub_22886F670(&v60, &qword_2813D04E8, sub_22880A4D4);
    }
  }

  while (1)
  {
    v11 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      return result;
    }

    if (v11 >= v9)
    {
      break;
    }

    v8 = *(v4 + 8 * v11);
    ++v12;
    if (v8)
    {
      goto LABEL_8;
    }
  }

  v33 = sub_2287F21F4(MEMORY[0x277D84F90]);
  v34 = v47[2];
  if (v34)
  {
    v35 = v47 + 4;
    do
    {
      sub_22880A470(v35, v65);
      sub_22880A470(v65, &v60);
      v36 = *(&v60 + 1);
      v37 = *(&v61 + 1);
      v49 = v61;
      v50 = v60;
      sub_22880A470(v65, &v52);

      sub_2287EC014(&v54, &v57);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v51 = v33;
      v39 = v58;
      v40 = v59;
      v41 = __swift_mutable_project_boxed_opaque_existential_1(&v57, v58);
      v42 = MEMORY[0x28223BE20](v41);
      v44 = &v46 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v45 + 16))(v44, v42);
      sub_2287F37DC(v44, v50, v36, v49, v37, isUniquelyReferenced_nonNull_native, &v51, v39, v40);

      sub_2287F12AC(v65, sub_22880A4D4);
      __swift_destroy_boxed_opaque_existential_1(&v57);
      v33 = v51;
      __swift_destroy_boxed_opaque_existential_1(&v62);
      v35 += 9;
      --v34;
    }

    while (v34);
  }

  result = swift_allocObject();
  *(result + 16) = v33;
  return result;
}

uint64_t InputSignalAnchorSet.subscript.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  if (*(v4 + 16) && (v5 = sub_2287E6768(*a1, a1[1], a1[2], a1[3]), (v6 & 1) != 0))
  {
    sub_2287E766C(*(v4 + 56) + 40 * v5, v10);
  }

  else
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
  }

  sub_2287E8A08(0, &qword_2813D0F80, sub_22886F60C);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = swift_dynamicCast();
  return (*(*(AssociatedTypeWitness - 8) + 56))(a2, v8 ^ 1u, 1, AssociatedTypeWitness);
}

uint64_t InputSignalAnchorSet.hasDifference(from:for:)(uint64_t a1, void *a2)
{
  v3 = v2;
  if (a1)
  {
    v5 = *(a1 + 16);
    v6 = a2[3];
    v7 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v6);
    (*(v7 + 16))(v23, v6, v7);
    if (*(v5 + 16))
    {
      v8 = sub_2287E6768(v23[0], v23[1], v23[2], v24);
      v10 = v9;

      if (v10)
      {
        sub_2287E766C(*(v5 + 56) + 40 * v8, v26);
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v27 = 0;
  memset(v26, 0, sizeof(v26));
LABEL_7:
  v11 = *(v3 + 16);
  v12 = a2[3];
  v13 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v12);
  (*(v13 + 16))(v22, v12, v13);
  if (!*(v11 + 16))
  {

    goto LABEL_11;
  }

  v14 = sub_2287E6768(v22[0], v22[1], v22[2], v22[3]);
  v16 = v15;

  if ((v16 & 1) == 0)
  {
LABEL_11:
    sub_22886F670(v26, &qword_2813D0F80, sub_22886F60C);
    v19 = 0;
    return v19 & 1;
  }

  sub_2287E766C(*(v11 + 56) + 40 * v14, v21);
  sub_2287EC014(v21, v23);
  v17 = v24;
  v18 = v25;
  __swift_project_boxed_opaque_existential_1(v23, v24);
  v19 = sub_2287F045C(v26, a2, v17, v18);
  sub_22886F670(v26, &qword_2813D0F80, sub_22886F60C);
  __swift_destroy_boxed_opaque_existential_1(v23);
  return v19 & 1;
}

uint64_t InputSignalAnchorSet.init(signalAnchors:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  return v1;
}

{
  v1 = sub_22886F6CC(a1);

  return v1;
}

uint64_t sub_22886DF24(void *a1)
{
  sub_22886FB30(0, &qword_2813CF2E0, MEMORY[0x277D84538]);
  v4 = v3;
  v20 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[5];
  v17 = v1[4];
  v18 = v9;
  v16 = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22886FADC();

  sub_22887FCF0();
  v21 = v7;
  v22 = v8;
  v23 = v18;
  v24 = v10;
  v25 = 0;
  sub_228806798();
  v12 = v19;
  sub_22887FB50();
  if (v12)
  {

    return (*(v20 + 8))(v6, v4);
  }

  else
  {
    v14 = v20;

    v21 = v17;
    v22 = v16;
    v25 = 1;
    sub_2288254A4(v17, v16);
    sub_228806744();
    sub_22887FB50();
    sub_2288063B8(v21, v22);
    return (*(v14 + 8))(v6, v4);
  }
}

uint64_t sub_22886E150@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_22886FB30(0, &qword_2813CF300, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22886FADC();
  sub_22887FCE0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = 0;
  sub_22880640C();
  sub_22887FAE0();
  v10 = v19;
  v11 = v21;
  v16 = v20;
  v17 = v18;
  v22 = 1;
  sub_228806364();
  sub_22887FAE0();
  (*(v7 + 8))(v9, v6);
  v12 = v18;
  v13 = v19;
  v14 = v16;
  *a2 = v17;
  a2[1] = v10;
  a2[2] = v14;
  a2[3] = v11;
  a2[4] = v12;
  a2[5] = v13;

  sub_2288254A4(v12, v13);
  __swift_destroy_boxed_opaque_existential_1(a1);

  return sub_2288063B8(v12, v13);
}

uint64_t sub_22886E3C8()
{
  if (*v0)
  {
    return 0x536465646F636E65;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_22886E414@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x8000000228889BA0 == a2 || (sub_22887FBF0() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x536465646F636E65 && a2 == 0xED00006C616E6769)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_22887FBF0();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_22886E504(uint64_t a1)
{
  v2 = sub_22886FADC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22886E540(uint64_t a1)
{
  v2 = sub_22886FADC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InputSignalAnchorSet.archived()()
{
  v2 = v0;
  sub_22887EFB0();
  swift_allocObject();
  sub_22887EFA0();
  sub_22886F2DC(*(v0 + 16), sub_22886F8A0);
  if (!v1)
  {
    sub_22886F8BC();
    sub_22886F960(&qword_2813CF5F8, sub_22886F90C);
    v2 = sub_22887EF90();
  }

  return v2;
}

uint64_t sub_22886E6C0@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  v8 = a1[2];
  v7 = a1[3];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  result = sub_22887EF90();
  if (!v3)
  {
    *a3 = v6;
    a3[1] = v5;
    a3[2] = v8;
    a3[3] = v7;
    a3[4] = result;
    a3[5] = v10;
  }

  return result;
}

uint64_t InputSignalAnchorSet.__allocating_init(from:signals:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v7 = *a3;
  sub_22887EF80();
  swift_allocObject();
  v8 = sub_22887EF70();
  sub_22886F8BC();
  sub_22886F960(&qword_2813CF5F0, sub_22886F9CC);
  result = sub_22887EF60();
  if (v4)
  {

    return sub_2288063B8(a1, a2);
  }

  else
  {
    v33[2] = v8;
    v33[1] = v3;
    v34 = a1;
    v35 = a2;
    v40 = 0;
    v10 = v51[0];
    v43 = *(v51[0] + 16);
    if (v43)
    {
      v11 = 0;
      v12 = (v51[0] + 72);
      v39 = MEMORY[0x277D84F98];
      v37 = v7;
      v36 = v51[0];
      while (v11 < *(v10 + 16))
      {
        if (*(v7 + 16))
        {
          v13 = *(v12 - 5);
          v14 = *(v12 - 4);
          v15 = *(v12 - 3);
          v16 = *(v12 - 2);
          v17 = *(v12 - 1);
          v18 = *v12;

          v44 = v17;
          sub_2288254A4(v17, v18);
          v41 = v15;
          v42 = v13;
          v19 = sub_2287E6768(v13, v14, v15, v16);
          if (v20)
          {
            v38 = v16;
            v21 = v14;
            v22 = v39;
            sub_2287E766C(*(v7 + 56) + 40 * v19, &v48);
            sub_2287EC014(&v48, v51);
            __swift_project_boxed_opaque_existential_1(v51, v51[3]);
            AssociatedTypeWitness = swift_getAssociatedTypeWitness();
            AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
            __swift_allocate_boxed_opaque_existential_1(&v48);
            v23 = v40;
            sub_22886EC1C();
            v40 = v23;
            if (v23)
            {

              sub_2288063B8(v34, v35);

              __swift_deallocate_boxed_opaque_existential_1(&v48);
              __swift_destroy_boxed_opaque_existential_1(v51);

              return sub_2288063B8(v44, v18);
            }

            sub_2287E766C(&v48, v45);
            v24 = v22;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v52 = v24;
            v27 = v46;
            v26 = v47;
            v28 = __swift_mutable_project_boxed_opaque_existential_1(v45, v46);
            v29 = MEMORY[0x28223BE20](v28);
            v31 = v33 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v32 + 16))(v31, v29);
            sub_2287F37DC(v31, v42, v21, v41, v38, isUniquelyReferenced_nonNull_native, &v52, v27, v26);
            __swift_destroy_boxed_opaque_existential_1(v45);
            v39 = v52;
            __swift_destroy_boxed_opaque_existential_1(&v48);
            __swift_destroy_boxed_opaque_existential_1(v51);

            result = sub_2288063B8(v44, v18);
            v7 = v37;
            v10 = v36;
          }

          else
          {

            result = sub_2288063B8(v44, v18);
          }
        }

        ++v11;
        v12 += 6;
        if (v43 == v11)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
    }

    else
    {
      v39 = MEMORY[0x277D84F98];
LABEL_13:

      sub_2288063B8(v34, v35);
      result = swift_allocObject();
      *(result + 16) = v39;
    }
  }

  return result;
}

uint64_t sub_22886EC1C()
{
  sub_22887EF80();
  swift_allocObject();
  sub_22887EF70();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_22887EF60();
}

unint64_t InputSignalAnchorSet.description.getter()
{
  sub_22887F8A0();

  sub_22886F60C();
  sub_2287F74F8();
  v0 = sub_22887F300();
  MEMORY[0x22AAC0340](v0);

  MEMORY[0x22AAC0340](41, 0xE100000000000000);
  return 0xD000000000000015;
}

unint64_t sub_22886EDB8()
{
  sub_22887F8A0();

  sub_22886F60C();
  sub_2287F74F8();
  v0 = sub_22887F300();
  MEMORY[0x22AAC0340](v0);

  MEMORY[0x22AAC0340](41, 0xE100000000000000);
  return 0xD000000000000015;
}

uint64_t sub_22886EE6C@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  sub_22881BA00();
  v44 = *(v2 - 8);
  v45 = v2;
  MEMORY[0x28223BE20](v2);
  v40 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_22887F0C0();
  v4 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v48 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22887F060();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287E8A08(0, &qword_27D851F68, sub_22881BA00);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v46 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v11);
  v43 = &v40 - v14;
  v16 = *v1;
  v15 = v1[1];
  v18 = v1[2];
  v17 = v1[3];
  v19 = v1[4];
  if (v19)
  {
    v42 = v1[2];
    v20 = v17;
LABEL_11:
    v41 = (v19 - 1) & v19;
    v24 = __clz(__rbit64(v19)) | (v20 << 6);
    (*(v7 + 16))(v9, *(v16 + 48) + *(v7 + 72) * v24, v6);
    (*(v4 + 16))(v48, *(v16 + 56) + *(v4 + 72) * v24, v49);
    v25 = v6;
    v26 = v45;
    v27 = *(v45 + 48);
    v28 = *(v7 + 32);
    v29 = v43;
    v28(v43, v9, v25);
    (*(v4 + 32))(&v29[v27], v48, v49);
    v30 = v44;
    (*(v44 + 56))(v29, 0, 1, v26);
    v31 = v41;
    v18 = v42;
    v23 = v20;
LABEL_12:
    *v1 = v16;
    v1[1] = v15;
    v1[2] = v18;
    v1[3] = v23;
    v1[4] = v31;
    v32 = v1[5];
    v33 = v29;
    v34 = v46;
    sub_22881BA74(v33, v46);
    v35 = 1;
    v36 = (*(v30 + 48))(v34, 1, v26);
    v37 = v47;
    if (v36 != 1)
    {
      v38 = v40;
      sub_22886FB94(v34, v40);
      v32(v38);
      sub_2287F12AC(v38, sub_22881BA00);
      v35 = 0;
    }

    sub_22881BAF4();
    return (*(*(v39 - 8) + 56))(v37, v35, 1, v39);
  }

  else
  {
    v21 = (v18 + 64) >> 6;
    if (v21 <= v17 + 1)
    {
      v22 = v17 + 1;
    }

    else
    {
      v22 = (v18 + 64) >> 6;
    }

    v23 = v22 - 1;
    while (1)
    {
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v20 >= v21)
      {
        v29 = v43;
        v30 = v44;
        v26 = v45;
        (*(v44 + 56))(v43, 1, 1, v45);
        v31 = 0;
        goto LABEL_12;
      }

      v19 = *(v15 + 8 * v20);
      ++v17;
      if (v19)
      {
        v42 = v1[2];
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22886F2DC(uint64_t a1, void (*a2)(void *__return_ptr, void *, _BYTE *))
{
  v3 = v2;
  v4 = a1;
  v5 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v5)
  {
    v53 = MEMORY[0x277D84F90];
    sub_22881DAF4(0, v5, 0);
    v40 = v53;
    v7 = v4 + 64;
    result = sub_22887F830();
    v8 = result;
    v9 = 0;
    v42 = *(v4 + 36);
    v35 = v4 + 72;
    v36 = v5;
    v37 = v4 + 64;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(v4 + 32))
    {
      v12 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_25;
      }

      if (v42 != *(v4 + 36))
      {
        goto LABEL_26;
      }

      v39 = v9;
      v13 = *(v4 + 56);
      v14 = (*(v4 + 48) + 32 * v8);
      v15 = v14[1];
      v16 = v14[2];
      v17 = v14[3];
      v46 = *v14;
      v47 = v15;
      *&v48 = v16;
      *(&v48 + 1) = v17;
      sub_2287E766C(v13 + 40 * v8, v49);
      v43[0] = v46;
      v43[1] = v47;
      v44 = v48;
      sub_2287EC014(v49, v45);

      a2(v50, v43, v45);
      if (v3)
      {
        sub_2287F12AC(v43, sub_2287EC514);
      }

      v18 = v4;
      result = sub_2287F12AC(v43, sub_2287EC514);
      v19 = v50[0];
      v20 = v50[1];
      v21 = v51;
      v22 = v52;
      v23 = v40;
      v53 = v40;
      v25 = *(v40 + 16);
      v24 = *(v40 + 24);
      if (v25 >= v24 >> 1)
      {
        v41 = v51;
        v34 = v52;
        result = sub_22881DAF4((v24 > 1), v25 + 1, 1);
        v22 = v34;
        v21 = v41;
        v23 = v53;
      }

      *(v23 + 16) = v25 + 1;
      v26 = v23 + 48 * v25;
      *(v26 + 32) = v19;
      *(v26 + 40) = v20;
      *(v26 + 48) = v21;
      *(v26 + 64) = v22;
      v10 = 1 << *(v18 + 32);
      if (v8 >= v10)
      {
        goto LABEL_27;
      }

      v7 = v37;
      v27 = *(v37 + 8 * v12);
      if ((v27 & (1 << v8)) == 0)
      {
        goto LABEL_28;
      }

      v4 = v18;
      v40 = v23;
      if (v42 != *(v18 + 36))
      {
        goto LABEL_29;
      }

      v28 = v27 & (-2 << (v8 & 0x3F));
      if (v28)
      {
        v10 = __clz(__rbit64(v28)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v11 = v36;
      }

      else
      {
        v29 = v12 << 6;
        v30 = v12 + 1;
        v11 = v36;
        v31 = (v35 + 8 * v12);
        while (v30 < (v10 + 63) >> 6)
        {
          v33 = *v31++;
          v32 = v33;
          v29 += 64;
          ++v30;
          if (v33)
          {
            result = sub_22883F9F0(v8, v42, 0);
            v10 = __clz(__rbit64(v32)) + v29;
            goto LABEL_4;
          }
        }

        result = sub_22883F9F0(v8, v42, 0);
      }

LABEL_4:
      v3 = 0;
      v9 = v39 + 1;
      v8 = v10;
      if (v39 + 1 == v11)
      {
        return v40;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  return result;
}

unint64_t sub_22886F60C()
{
  result = qword_2813D0F88[0];
  if (!qword_2813D0F88[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_2813D0F88);
  }

  return result;
}

uint64_t sub_22886F670(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_2287E8A08(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22886F6CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1 + 32;
    v3 = MEMORY[0x277D84F98];
    do
    {
      sub_2287E766C(v2, v25);
      v4 = v26;
      v5 = v27;
      __swift_project_boxed_opaque_existential_1(v25, v26);
      (*(v5 + 48))(v24, v4, v5);
      v6 = v24[1];
      v19 = v24[0];
      v8 = v24[2];
      v7 = v24[3];
      sub_2287E766C(v25, v21);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = v3;
      v10 = v22;
      v11 = v23;
      v12 = __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
      MEMORY[0x28223BE20](v12);
      v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v15 + 16))(v14);
      sub_2287F37DC(v14, v19, v6, v8, v7, isUniquelyReferenced_nonNull_native, &v20, v10, v11);

      __swift_destroy_boxed_opaque_existential_1(v21);
      v3 = v20;
      __swift_destroy_boxed_opaque_existential_1(v25);
      v2 += 40;
      --v1;
    }

    while (v1);
  }

  else
  {
    v3 = MEMORY[0x277D84F98];
  }

  result = v18;
  *(v18 + 16) = v3;
  return result;
}

void sub_22886F8BC()
{
  if (!qword_2813CF600)
  {
    v0 = sub_22887F550();
    if (!v1)
    {
      atomic_store(v0, &qword_2813CF600);
    }
  }
}

unint64_t sub_22886F90C()
{
  result = qword_2813D0610;
  if (!qword_2813D0610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813D0610);
  }

  return result;
}

uint64_t sub_22886F960(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_22886F8BC();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22886F9CC()
{
  result = qword_2813D0608;
  if (!qword_2813D0608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813D0608);
  }

  return result;
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x22AAC1440);
  }

  return result;
}

uint64_t dispatch thunk of InputSignalAnchorSet.__allocating_init(signalAnchors:)()
{
  return (*(v0 + 88))();
}

{
  return (*(v0 + 96))();
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

unint64_t sub_22886FADC()
{
  result = qword_2813D0628[0];
  if (!qword_2813D0628[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2813D0628);
  }

  return result;
}

void sub_22886FB30(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22886FADC();
    v7 = a3(a1, &type metadata for InputSignalAnchorSet.EncodedAnchor.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_22886FB94(uint64_t a1, uint64_t a2)
{
  sub_22881BA00();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_22886FC0C()
{
  result = qword_27D852AE0[0];
  if (!qword_27D852AE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D852AE0);
  }

  return result;
}

unint64_t sub_22886FC64()
{
  result = qword_2813D0618;
  if (!qword_2813D0618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813D0618);
  }

  return result;
}

unint64_t sub_22886FCBC()
{
  result = qword_2813D0620;
  if (!qword_2813D0620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813D0620);
  }

  return result;
}

void *AutoPriorityThresholdController.__allocating_init(target:environment:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  v6 = sub_228870284(a1, a2, a3);
  swift_unknownObjectRelease();

  return v6;
}

void *AutoPriorityThresholdController.init(target:environment:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_228870284(a1, a2, a3);
  swift_unknownObjectRelease();

  return v3;
}

Swift::Void __swiftcall AutoPriorityThresholdController.autoUpdatePriorityThreshold(using:)(HealthOrchestration::PriorityRuleSet using)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 9);
  sub_228870374(&v2[4]);
  os_unfair_lock_unlock(v2 + 9);
}

Swift::Void __swiftcall AutoPriorityThresholdController.autoUpdatePriorityThreshold(pauseIfAnyMatches:)(Swift::OpaquePointer pauseIfAnyMatches)
{
  sub_22887038C();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2288817D0;
  *(v3 + 32) = pauseIfAnyMatches;
  *(v3 + 40) = 1;
  v4 = *(v1 + 16);

  os_unfair_lock_lock(v4 + 9);
  sub_2288705F0(&v4[4]);
  os_unfair_lock_unlock(v4 + 9);
}

void AutoPriorityThresholdController.manualPriorityThreshold.getter(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock((v3 + 36));
  *a1 = *(v3 + 16);

  os_unfair_lock_unlock((v3 + 36));
}

void sub_22886FF1C(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(*a2 + 16);
  v4 = *a1;
  os_unfair_lock_lock((v3 + 36));
  sub_22886FFE8((v3 + 16), v4, v2);

  os_unfair_lock_unlock((v3 + 36));
}

void AutoPriorityThresholdController.manualPriorityThreshold.setter(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  os_unfair_lock_lock((v2 + 36));
  sub_22886FFE8((v2 + 16), v3, v1);

  os_unfair_lock_unlock((v2 + 36));
}

uint64_t sub_22886FFE8(unsigned __int8 *a1, unsigned __int8 a2, uint64_t a3)
{
  *a1 = a2;
  v5 = a1[1];
  v6 = a1[2];
  if (v5 == 4)
  {
    LOBYTE(v5) = v6;
  }

  if (a2 == 4)
  {
    v7 = v5;
  }

  else
  {
    v7 = a2;
  }

  result = sub_2287ECD4C(v6, v7);
  if ((result & 1) == 0)
  {
    a1[2] = v7;
    v9 = *(a3 + 32);
    ObjectType = swift_getObjectType();
    v11 = v7;
    return (*(v9 + 16))(&v11, ObjectType, v9);
  }

  return result;
}

void (*AutoPriorityThresholdController.manualPriorityThreshold.modify(uint64_t a1))(uint64_t a1)
{
  v3 = *(v1 + 16);
  *a1 = v1;
  *(a1 + 8) = v3;
  os_unfair_lock_lock((v3 + 36));
  *(a1 + 16) = *(v3 + 16);
  os_unfair_lock_unlock((v3 + 36));
  return sub_2288700F0;
}

void sub_2288700F0(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  os_unfair_lock_lock((v2 + 36));
  sub_22886FFE8((v2 + 16), v3, v1);

  os_unfair_lock_unlock((v2 + 36));
}

void AutoPriorityThresholdController.priorityThreshold.getter(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock((v3 + 36));
  v4 = *(v3 + 16);
  v5 = *(v3 + 17);
  if (v5 == 4)
  {
    LOBYTE(v5) = *(v3 + 18);
  }

  if (v4 == 4)
  {
    LOBYTE(v4) = v5;
  }

  *a1 = v4;

  os_unfair_lock_unlock((v3 + 36));
}

Swift::Void __swiftcall AutoPriorityThresholdController.didUpdate(environmentalState:)(Swift::OpaquePointer environmentalState)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock((v2 + 36));
  sub_2287ECAAC((v2 + 16));

  os_unfair_lock_unlock((v2 + 36));
}

uint64_t AutoPriorityThresholdController.deinit()
{

  swift_unknownObjectRelease();

  return v0;
}

uint64_t AutoPriorityThresholdController.__deallocating_deinit()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void *sub_228870284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  (*(a2 + 8))(&v13, ObjectType, a2);
  v9 = v13;
  sub_228870590();
  v10 = swift_allocObject();
  *(v10 + 36) = 0;
  *(v10 + 16) = 1028;
  *(v10 + 18) = v9;
  *(v10 + 24) = 0;
  *(v10 + 32) = 0;
  v4[2] = v10;
  v4[3] = a1;
  v4[4] = a2;
  v4[5] = a3;
  v11 = *(a3 + 16);
  swift_unknownObjectRetain();

  os_unfair_lock_lock(v11 + 10);
  sub_228822194(&v11[4]);
  os_unfair_lock_unlock(v11 + 10);

  return v4;
}

void sub_22887038C()
{
  if (!qword_2813CF2B8)
  {
    v0 = sub_22887FBB0();
    if (!v1)
    {
      atomic_store(v0, &qword_2813CF2B8);
    }
  }
}

uint64_t sub_2288703DC(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);

  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return sub_2287ECAD4(a1);
}

uint64_t sub_2288704D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 17))
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

uint64_t sub_22887052C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void sub_228870590()
{
  if (!qword_2813CF408)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_22887F910();
    if (!v1)
    {
      atomic_store(v0, &qword_2813CF408);
    }
  }
}

void IndependentAtomicProperty.wrappedValue.getter(uint64_t a1)
{
  v2 = *v1;
  v3[2] = *(a1 + 16);
  sub_228822674(sub_228837958, v3, v2);
}

uint64_t IndependentAtomicProperty.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  sub_228870A44(a1, a2);
  v4 = *(*(*(a2 + 16) - 8) + 8);

  return v4(a1);
}

uint64_t IndependentAtomicProperty.init(wrappedValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_2288709C4();
  result = (*(*(a2 - 8) + 8))(a1, a2);
  *a3 = v6;
  return result;
}

void (*IndependentAtomicProperty.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t a1, char a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x80uLL);
  }

  v7 = v6;
  *a1 = v6;
  v6[11] = v2;
  v8 = *(a2 + 16);
  v6[12] = v8;
  v9 = *(v8 - 8);
  v6[13] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[14] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[14] = malloc(*(v9 + 64));
    v11 = malloc(v10);
  }

  v7[15] = v11;
  v12 = *v2;
  v7[10] = v8;
  sub_228822674(sub_228837958, (v7 + 8), v12);
  return sub_228870874;
}

void sub_228870874(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 112);
  v3 = *(*a1 + 120);
  v5 = *(*a1 + 96);
  v6 = *(*a1 + 104);
  if (a2)
  {
    v7 = v2[11];
    (*(v2[13] + 16))(v2[14], v2[15], v2[12]);
    v8 = *v7;
    v2[2] = v5;
    v2[3] = v4;
    sub_228822674(sub_228837F78, v2, v8);
    v9 = *(v6 + 8);
    v9(v4, v5);
    v9(v3, v5);
  }

  else
  {
    v10 = *v2[11];
    v2[6] = v5;
    v2[7] = v3;
    sub_228822674(sub_228837F78, (v2 + 4), v10);
    (*(v6 + 8))(v3, v5);
  }

  free(v3);
  free(v4);

  free(v2);
}

uint64_t sub_2288709C4()
{
  type metadata accessor for os_unfair_lock_s(255);
  sub_22887F910();
  return sub_22887F900();
}

void sub_228870A44(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4[2] = *(a2 + 16);
  v4[3] = a1;
  sub_228822674(sub_228837F78, v4, v3);
}

uint64_t sub_228870AA0()
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

void *__swift_assignWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithTake_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t sub_228870B9C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *a1;
  *(a1 + ((*(v4 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v4 + *MEMORY[0x277D841D0]) - 8) + 16))(a2, v3);
}

uint64_t sub_228870C34@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v5 = *(v3 + 16);
  v4 = *(v3 + 24);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_228870FFC;
  a2[1] = v6;
}

uint64_t sub_228870CB4(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *a2;
  swift_beginAccess();
  *(v6 + 16) = sub_228865CA0;
  *(v6 + 24) = v5;
}

uint64_t MockContextProviderDelegate.updateHandler.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t MockContextProviderDelegate.updateHandler.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

Swift::Void __swiftcall MockContextProviderDelegate.didUpdate(contexts:)(Swift::OpaquePointer contexts)
{
  swift_beginAccess();
  v3 = *(v1 + 16);

  v3(contexts._rawValue);
}

uint64_t MockContextProviderDelegate.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = nullsub_1;
  *(result + 24) = 0;
  return result;
}

uint64_t MockContextProviderDelegate.init()()
{
  result = v0;
  *(v0 + 16) = nullsub_1;
  *(v0 + 24) = 0;
  return result;
}

uint64_t MockContextProviderDelegate.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_228870F48(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);

  v3(a1);
}

uint64_t sub_22887103C(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v27 = MEMORY[0x277D84F90];
    sub_22887F960();
    v4 = v1 + 64;
    result = sub_22887F830();
    v5 = result;
    v6 = 0;
    v7 = *(v1 + 36);
    v23 = v1 + 72;
    v24 = v7;
    v25 = v1;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v1 + 32))
    {
      v9 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_21;
      }

      if (v7 != *(v1 + 36))
      {
        goto LABEL_22;
      }

      v26 = v6;
      v10 = v2;
      v11 = (*(v1 + 48) + 16 * v5);
      v13 = *v11;
      v12 = v11[1];
      v14 = *(*(v1 + 56) + 8 * v5);
      type metadata accessor for DebugSnapshot();
      v15 = swift_allocObject();
      v15[2] = v13;
      v15[3] = v12;
      v15[4] = v14;
      v15[5] = MEMORY[0x277D84F98];

      sub_22887F930();
      sub_22887F970();
      v1 = v25;
      sub_22887F980();
      result = sub_22887F940();
      v8 = 1 << *(v25 + 32);
      if (v5 >= v8)
      {
        goto LABEL_23;
      }

      v16 = *(v4 + 8 * v9);
      if ((v16 & (1 << v5)) == 0)
      {
        goto LABEL_24;
      }

      v2 = v10;
      v7 = v24;
      if (v24 != *(v25 + 36))
      {
        goto LABEL_25;
      }

      v17 = v16 & (-2 << (v5 & 0x3F));
      if (v17)
      {
        v8 = __clz(__rbit64(v17)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v18 = v9 << 6;
        v19 = v9 + 1;
        v20 = (v23 + 8 * v9);
        while (v19 < (v8 + 63) >> 6)
        {
          v22 = *v20++;
          v21 = v22;
          v18 += 64;
          ++v19;
          if (v22)
          {
            result = sub_22883F9F0(v5, v24, 0);
            v8 = __clz(__rbit64(v21)) + v18;
            goto LABEL_4;
          }
        }

        result = sub_22883F9F0(v5, v24, 0);
      }

LABEL_4:
      v6 = v26 + 1;
      v5 = v8;
      if (v26 + 1 == v2)
      {
        return v27;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t EnvironmentalStateManager.debugSnapshot.getter()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 40));
  sub_228872068((v1 + 16), &v3);
  os_unfair_lock_unlock((v1 + 40));
  return v3;
}

void EnvironmentalStateManager.register(observer:)(uint64_t a1)
{
  swift_getObjectType();

  sub_2288723E8(a1, v1);
}

uint64_t EnvironmentalStateManager.currentState.getter()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 40));
  v2 = *(v1 + 16);

  os_unfair_lock_unlock((v1 + 40));
  return v2;
}

uint64_t sub_228871380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a1 + 16);
  v8 = v7[2];
  if (v8)
  {
    v9 = 0;
    v10 = v7 + 5;
    while (v9 < v7[2])
    {
      v11 = *(v10 - 1);

      v11(&v17, v12);

      v3 = v17;
      if (v17)
      {
        result = swift_unknownObjectRelease();
        if (v3 == a2)
        {
          return result;
        }
      }

      ++v9;
      v10 += 2;
      if (v8 == v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_13;
  }

LABEL_8:
  v3 = swift_allocObject();
  *(v3 + 24) = a3;
  swift_unknownObjectWeakInit();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_13:
    v7 = sub_228830B10(0, v7[2] + 1, 1, v7);
  }

  v15 = v7[2];
  v14 = v7[3];
  if (v15 >= v14 >> 1)
  {
    v7 = sub_228830B10((v14 > 1), v15 + 1, 1, v7);
  }

  v7[2] = v15 + 1;
  v16 = &v7[2 * v15];
  v16[4] = sub_2287E9378;
  v16[5] = v3;

  *(a1 + 16) = v7;
  return result;
}

void EnvironmentalStateManager.remove(observer:)()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 10);
  sub_22887243C(&v1[4]);
  os_unfair_lock_unlock(v1 + 10);
}

uint64_t sub_228871554(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  v4 = sub_2288728DC((a1 + 16), a2);
  result = swift_unknownObjectRelease();
  v6 = *(*(a1 + 16) + 16);
  if (v6 >= v4)
  {
    return sub_228872B48(v4, v6, sub_228830B10, sub_228872A84);
  }

  __break(1u);
  return result;
}

uint64_t EnvironmentalStateManager.__allocating_init(logger:)(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_2287F36D8(0, &qword_2813CF3D8);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v2 + 24) = v3;
  v4 = MEMORY[0x277D84F90];
  v5 = sub_2287E9944(MEMORY[0x277D84F90]);
  v6 = sub_228809EB0(v4);
  sub_2287F36D8(0, &qword_2813CF428);
  v7 = swift_allocObject();
  *(v7 + 40) = 0;
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  *(v7 + 32) = v4;
  *(v2 + 16) = v7;
  v8 = OBJC_IVAR____TtC19HealthOrchestration25EnvironmentalStateManager_logger;
  v9 = sub_22887F180();
  (*(*(v9 - 8) + 32))(v2 + v8, a1, v9);
  return v2;
}

uint64_t EnvironmentalStateManager.init(logger:)(uint64_t a1)
{
  sub_2287F36D8(0, &qword_2813CF3D8);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v1 + 24) = v3;
  v4 = MEMORY[0x277D84F90];
  v5 = sub_2287E9944(MEMORY[0x277D84F90]);
  v6 = sub_228809EB0(v4);
  sub_2287F36D8(0, &qword_2813CF428);
  v7 = swift_allocObject();
  *(v7 + 40) = 0;
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  *(v7 + 32) = v4;
  *(v1 + 16) = v7;
  v8 = OBJC_IVAR____TtC19HealthOrchestration25EnvironmentalStateManager_logger;
  v9 = sub_22887F180();
  (*(*(v9 - 8) + 32))(v1 + v8, a1, v9);
  return v1;
}

Swift::Void __swiftcall EnvironmentalStateManager.start(providers:)(Swift::OpaquePointer providers)
{
  v2 = v1;
  type metadata accessor for EnvironmentalStateManager.ObservationShim();
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + 24) = &protocol witness table for EnvironmentalStateManager;
  v5 = swift_unknownObjectWeakAssign();
  v6 = *(providers._rawValue + 2);
  if (!v6)
  {
LABEL_18:
    v20 = *(v2 + 16);
    MEMORY[0x28223BE20](v5);
    os_unfair_lock_lock((v20 + 40));
    sub_22887247C((v20 + 16));
    os_unfair_lock_unlock((v20 + 40));

    return;
  }

  v7 = providers._rawValue + 32;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    sub_2287E766C(v7, v21);
    v9 = v22;
    v10 = v23;
    __swift_project_boxed_opaque_existential_1(v21, v22);
    v11 = (*(v10 + 8))(v4, &off_283BCD5A8, v9, v10);
    __swift_destroy_boxed_opaque_existential_1(v21);
    v12 = *(v11 + 16);
    v13 = v8[2];
    v14 = v13 + v12;
    if (__OFADD__(v13, v12))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v14 <= v8[3] >> 1)
    {
      if (*(v11 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v13 <= v14)
      {
        v16 = v13 + v12;
      }

      else
      {
        v16 = v13;
      }

      v8 = sub_228830B30(isUniquelyReferenced_nonNull_native, v16, 1, v8);
      if (*(v11 + 16))
      {
LABEL_14:
        if ((v8[3] >> 1) - v8[2] < v12)
        {
          goto LABEL_21;
        }

        sub_228828004();
        swift_arrayInitWithCopy();

        if (v12)
        {
          v17 = v8[2];
          v18 = __OFADD__(v17, v12);
          v19 = v17 + v12;
          if (v18)
          {
            goto LABEL_22;
          }

          v8[2] = v19;
        }

        goto LABEL_4;
      }
    }

    if (v12)
    {
      goto LABEL_20;
    }

LABEL_4:
    v7 += 40;
    if (!--v6)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
}

void sub_228871A28(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*(a1[1] + 16))
  {

    v4 = sub_22887F160();
    v5 = sub_22887F6A0();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v14 = v7;
      *v6 = 136315138;
      type metadata accessor for EnvironmentalStateManager();

      v8 = sub_22887F3B0();
      v10 = sub_2287E64D8(v8, v9, &v14);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_2287E4000, v4, v5, "Attempt to start %s more than once.", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      MEMORY[0x22AAC1440](v7, -1, -1);
      MEMORY[0x22AAC1440](v6, -1, -1);
    }
  }

  else
  {

    v13 = sub_228872734(MEMORY[0x277D84F98], a3, a2, a1);

    a1[1] = v13;
  }
}

void sub_228871BC0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a2;
  v7 = a2[1];
  ObjectType = swift_getObjectType();
  v32 = *(v7 + 8);
  v9 = v32(ObjectType, v7);
  if (!*(*a1 + 16))
  {

    goto LABEL_7;
  }

  sub_2287E5E2C(v9, v10);
  v12 = v11;

  if ((v12 & 1) == 0)
  {
LABEL_7:
    v23 = v32(ObjectType, v7);
    v25 = v24;
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *a1;
    sub_22884A0F0(v6, v7, v23, v25, isUniquelyReferenced_nonNull_native);

    *a1 = v33;
    v27 = v32(ObjectType, v7);
    v29 = v28;
    v30 = (*(v7 + 16))(ObjectType, v7);
    v31 = swift_isUniquelyReferenced_nonNull_native();
    v33 = *a4;
    *a4 = 0x8000000000000000;
    sub_2287E9230(v30, v27, v29, v31);

    *a4 = v33;
    return;
  }

  swift_unknownObjectRetain();
  v13 = sub_22887F160();
  v14 = sub_22887F6A0();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v33 = v16;
    *v15 = 136315394;
    v17 = v32(ObjectType, v7);
    v19 = sub_2287E64D8(v17, v18, &v33);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    swift_unknownObjectRetain();
    v20 = sub_22887F3B0();
    v22 = sub_2287E64D8(v20, v21, &v33);

    *(v15 + 14) = v22;
    _os_log_impl(&dword_2287E4000, v13, v14, "Two environmental state components have the same identifier (%s). Ignoring the second (%s)", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAC1440](v16, -1, -1);
    MEMORY[0x22AAC1440](v15, -1, -1);
  }
}

uint64_t sub_228871EA8()
{
  sub_2288725DC(v0 + 16);

  return swift_deallocClassInstance();
}

void EnvironmentalStateManager.didUpdate(state:for:)()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1 + 4);
  sub_2287E60F4();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t EnvironmentalStateManager.deinit()
{

  v1 = OBJC_IVAR____TtC19HealthOrchestration25EnvironmentalStateManager_logger;
  v2 = sub_22887F180();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t EnvironmentalStateManager.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC19HealthOrchestration25EnvironmentalStateManager_logger;
  v2 = sub_22887F180();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void *sub_228872068@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_2287E97C0(MEMORY[0x277D84F90]);
  sub_228872C20(0, &qword_27D851AE8, sub_22880F3F0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2288817D0;
  *(inited + 32) = 0x6E656E6F706D6F43;
  *(inited + 40) = 0xEA00000000007374;
  sub_22887103C(*a1);

  v10 = sub_228872344(v7, sub_22887E168, sub_228835828);
  sub_22880E06C(&v10);
  if (v2)
  {

    __break(1u);
  }

  else
  {

    *(inited + 48) = v10;
    v8 = sub_2288093F4(inited);
    swift_setDeallocating();
    sub_228872C84(inited + 32);
    type metadata accessor for DebugSnapshot();
    result = swift_allocObject();
    result[2] = 0x6D6E6F7269766E45;
    result[3] = 0xEB00000000746E65;
    result[4] = v5;
    result[5] = v8;
    *a2 = result;
  }

  return result;
}

uint64_t sub_228872208()
{
  v1 = *(*v0 + 16);
  os_unfair_lock_lock((v1 + 40));
  sub_228872068((v1 + 16), &v3);
  os_unfair_lock_unlock((v1 + 40));
  return v3;
}

uint64_t sub_228872288(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_22887FA20();
  }

  return sub_22887F8D0();
}

uint64_t sub_228872344(unint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v7 = sub_22887FA20();
  if (!v7)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v8 = v7;
  v9 = a2(v7, 0);
  a3(v9 + 32, v8, a1);
  v11 = v10;

  result = v9;
  if (v11 != v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

void sub_2288723E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  os_unfair_lock_lock(v2 + 10);
  sub_228822194(&v2[4]);
  os_unfair_lock_unlock(v2 + 10);
}

uint64_t type metadata accessor for EnvironmentalStateManager()
{
  result = qword_2813CFCB8;
  if (!qword_2813CFCB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_228872500()
{
  result = sub_22887F180();
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

unint64_t sub_228872630(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 40 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 40 * a3;
  v13 = (v7 + 32 + 40 * a2);
  if (result != v13 || result >= v13 + 40 * v12)
  {
    result = memmove(result, v13, 40 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_228872734(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v10 = result;
  v5 = *(a2 + 16);
  if (v5)
  {
    for (i = (a2 + 32); ; ++i)
    {
      *v9 = *i;
      swift_unknownObjectRetain();
      sub_228871BC0(&v10, v9, a3, a4);
      if (v4)
      {
        break;
      }

      swift_unknownObjectRelease();
      if (!--v5)
      {
        return v10;
      }
    }

    swift_unknownObjectRelease();
  }

  return result;
}